Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer.clearExpiration()()
{
  v1 = v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer(0) + 32);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t sub_22DE9BE18(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_22DE9BE74@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 24));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *a3 = v6;
  a3[1] = v7;
}

uint64_t sub_22DE9BEDC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *(a5(0) + 24));
  v8 = v7[1];

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t sub_22DE9BF4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 24));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_DWSection.header.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSection(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

uint64_t sub_22DE9C090(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  v3 = v2[1];

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t sub_22DE9C108(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_22DE9C164@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 28));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *a3 = v6;
  a3[1] = v7;
}

uint64_t sub_22DE9C1CC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *(a5(0) + 28));
  v8 = v7[1];

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t sub_22DE9C23C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 28));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_DWSection.footer.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSection(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

uint64_t sub_22DE9C380(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));
  v3 = v2[1];

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t sub_22DE9C3D8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_22DEC48B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22DE9C474(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_22DEC48B4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWItem.type.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem(0);
  v4 = *(v1 + *(result + 24));
  if (v4 == 5)
  {
    LOBYTE(v4) = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWItem.type.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_DWItem.type.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem(0) + 24);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 5)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_22DE2CCE4;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWItem.dwPromoData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F18, &unk_22DEC8140);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  sub_22DDF0028(v2, &v16 - v6, &qword_27DA37F18, &unk_22DEC8140);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_22DDEF284(v7, &qword_27DA37F18, &unk_22DEC8140);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_22DDF1788(v7, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData);
    }

    sub_22DEA29F4(v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData(0);
  v10 = (a1 + v9[5]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a1 + v9[6]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a1 + v9[7]);
  *v12 = 0;
  v12[1] = 0;
  v13 = v9[8];
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  return (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData.init()@<X0>(uint64_t a1@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData(0);
  v3 = (a1 + v2[5]);
  *v3 = 0;
  v3[1] = 0;
  v4 = (a1 + v2[6]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (a1 + v2[7]);
  *v5 = 0;
  v5[1] = 0;
  v6 = v2[8];
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, 1, 1, v7);
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_DWItem.dwPromoData.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
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
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F18, &unk_22DEC8140) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData(0);
  v11 = *(*(v10 - 1) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 1) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  sub_22DDF0028(v2, v9, &qword_27DA37F18, &unk_22DEC8140);
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_22DDEF284(v9, &qword_27DA37F18, &unk_22DEC8140);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_22DDF1788(v9, v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData);
      return sub_22DE9CBF8;
    }

    sub_22DEA29F4(v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v16 = (v13 + v10[5]);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v13 + v10[6]);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v13 + v10[7]);
  *v18 = 0;
  v18[1] = 0;
  v19 = v10[8];
  v20 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  (*(*(v20 - 8) + 56))(v13 + v19, 1, 1, v20);
  return sub_22DE9CBF8;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWItem.dwCoverageData.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F18, &unk_22DEC8140);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - v6;
  sub_22DDF0028(v2, &v21 - v6, &qword_27DA37F18, &unk_22DEC8140);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_22DDEF284(v7, &qword_27DA37F18, &unk_22DEC8140);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_22DDF1788(v7, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData);
    }

    sub_22DEA29F4(v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
  }

  v10 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v10;
  v11 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0);
  v12 = a1 + v11[6];
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  *(a1 + v11[7]) = 2;
  v13 = (a1 + v11[8]);
  *v13 = 0;
  v13[1] = 0;
  v14 = (a1 + v11[9]);
  *v14 = 0;
  v14[1] = 0;
  v15 = (a1 + v11[10]);
  *v15 = 0;
  v15[1] = 0;
  v16 = (a1 + v11[11]);
  *v16 = 0;
  v16[1] = 0;
  v17 = (a1 + v11[12]);
  *v17 = 0;
  v17[1] = 0;
  v18 = (a1 + v11[13]);
  *v18 = 0;
  v18[1] = 0;
  v19 = (a1 + v11[14]);
  *v19 = 0;
  v19[1] = 0;
  v20 = (a1 + v11[15]);
  *v20 = 0;
  v20[1] = 0;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v2;
  v3 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0);
  v4 = a1 + v3[6];
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  *(a1 + v3[7]) = 2;
  v6 = (a1 + v3[8]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a1 + v3[9]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a1 + v3[10]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a1 + v3[11]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a1 + v3[12]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a1 + v3[13]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a1 + v3[14]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a1 + v3[15]);
  *v13 = 0;
  v13[1] = 0;
  return result;
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_DWItem.dwCoverageData.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
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
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F18, &unk_22DEC8140) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0);
  v11 = *(*(v10 - 1) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 1) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  sub_22DDF0028(v2, v9, &qword_27DA37F18, &unk_22DEC8140);
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_22DDEF284(v9, &qword_27DA37F18, &unk_22DEC8140);
LABEL_15:
    v16 = MEMORY[0x277D84F90];
    *v13 = MEMORY[0x277D84F90];
    v13[1] = v16;
    v17 = v13 + v10[6];
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    *(v13 + v10[7]) = 2;
    v18 = (v13 + v10[8]);
    *v18 = 0;
    v18[1] = 0;
    v19 = (v13 + v10[9]);
    *v19 = 0;
    v19[1] = 0;
    v20 = (v13 + v10[10]);
    *v20 = 0;
    v20[1] = 0;
    v21 = (v13 + v10[11]);
    *v21 = 0;
    v21[1] = 0;
    v22 = (v13 + v10[12]);
    *v22 = 0;
    v22[1] = 0;
    v23 = (v13 + v10[13]);
    *v23 = 0;
    v23[1] = 0;
    v24 = (v13 + v10[14]);
    *v24 = 0;
    v24[1] = 0;
    v25 = (v13 + v10[15]);
    *v25 = 0;
    v25[1] = 0;
    return sub_22DE9D188;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_22DEA29F4(v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
    goto LABEL_15;
  }

  sub_22DDF1788(v9, v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData);
  return sub_22DE9D188;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWItem.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F18, &unk_22DEC8140);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  sub_22DDF0028(v2, &v15 - v6, &qword_27DA37F18, &unk_22DEC8140);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_22DDEF284(v7, &qword_27DA37F18, &unk_22DEC8140);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_22DDF1788(v7, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    }

    sub_22DEA29F4(v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v11 = (a1 + v10[5]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a1 + v10[6]);
  *v12 = 0;
  v12[1] = 0;
  v13 = v10[7];
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  return (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_DWItem.linkData.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
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
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F18, &unk_22DEC8140) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v11 = *(*(v10 - 1) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 1) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  sub_22DDF0028(v2, v9, &qword_27DA37F18, &unk_22DEC8140);
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_22DDEF284(v9, &qword_27DA37F18, &unk_22DEC8140);
LABEL_15:
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v16 = (v13 + v10[5]);
    *v16 = 0;
    v16[1] = 0;
    v17 = (v13 + v10[6]);
    *v17 = 0;
    v17[1] = 0;
    v18 = v10[7];
    v19 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
    (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
    return sub_22DE9D624;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_22DEA29F4(v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
    goto LABEL_15;
  }

  sub_22DDF1788(v9, v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  return sub_22DE9D624;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWItem.dwSupportAppData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F18, &unk_22DEC8140);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  sub_22DDF0028(v2, &v10 - v6, &qword_27DA37F18, &unk_22DEC8140);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_22DDEF284(v7, &qword_27DA37F18, &unk_22DEC8140);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return sub_22DDF1788(v7, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppData);
    }

    sub_22DEA29F4(v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
  }

  return _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
}

uint64_t sub_22DE9D7C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F18, &unk_22DEC8140);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  sub_22DDF0028(a1, &v10 - v6, &qword_27DA37F18, &unk_22DEC8140);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_22DDEF284(v7, &qword_27DA37F18, &unk_22DEC8140);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return sub_22DDF1788(v7, a2, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppData);
    }

    sub_22DEA29F4(v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
  }

  return _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_DWItem.dwSupportAppData.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F18, &unk_22DEC8140) - 8) + 64);
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
  v9 = *(*(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppData(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  sub_22DDF0028(v1, v8, &qword_27DA37F18, &unk_22DEC8140);
  v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_22DDEF284(v8, &qword_27DA37F18, &unk_22DEC8140);
LABEL_15:
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    return sub_22DE9DB50;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_22DEA29F4(v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
    goto LABEL_15;
  }

  sub_22DDF1788(v8, v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppData);
  return sub_22DE9DB50;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWItem.dwFooterData.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F18, &unk_22DEC8140);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  sub_22DDF0028(v2, &v13 - v6, &qword_27DA37F18, &unk_22DEC8140);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_22DDEF284(v7, &qword_27DA37F18, &unk_22DEC8140);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return sub_22DDF1788(v7, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter);
    }

    sub_22DEA29F4(v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
  }

  *a1 = MEMORY[0x277D84F90];
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter(0);
  v11 = a1 + *(v10 + 20);
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v12 = (a1 + *(v10 + 24));
  *v12 = 0;
  v12[1] = 0;
  return result;
}

uint64_t sub_22DE9DD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v11 = a5(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v17 - v13;
  sub_22DEA298C(a1, &v17 - v13, a6);
  sub_22DDEF284(a2, &qword_27DA37F18, &unk_22DEC8140);
  sub_22DDF1788(v14, a2, a7);
  v15 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
}

uint64_t sub_22DE9DE4C(uint64_t a1, uint64_t (*a2)(void))
{
  sub_22DDEF284(v2, &qword_27DA37F18, &unk_22DEC8140);
  sub_22DDF1788(a1, v2, a2);
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(*(v5 - 8) + 56);

  return v6(v2, 0, 1, v5);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWFooter.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter(0);
  v3 = a1 + *(v2 + 20);
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v5 = (a1 + *(v2 + 24));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_DWItem.dwFooterData.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F18, &unk_22DEC8140) - 8) + 64);
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
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_22DDF0028(v1, v8, &qword_27DA37F18, &unk_22DEC8140);
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_22DDEF284(v8, &qword_27DA37F18, &unk_22DEC8140);
LABEL_15:
    *v12 = MEMORY[0x277D84F90];
    v15 = v12 + *(v9 + 20);
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v16 = (v12 + *(v9 + 24));
    *v16 = 0;
    v16[1] = 0;
    return sub_22DE9E188;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_22DEA29F4(v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
    goto LABEL_15;
  }

  sub_22DDF1788(v8, v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter);
  return sub_22DE9E188;
}

void sub_22DE9E1CC(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = *a1;
  v8 = (*a1)[4];
  v9 = (*a1)[5];
  v10 = (*a1)[2];
  v11 = (*a1)[3];
  v13 = **a1;
  v12 = (*a1)[1];
  if (a2)
  {
    sub_22DEA298C((*a1)[3], v10, a5);
    sub_22DDEF284(v13, &qword_27DA37F18, &unk_22DEC8140);
    sub_22DDF1788(v10, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
    sub_22DEA29F4(v11, a6);
  }

  else
  {
    sub_22DDEF284(**a1, &qword_27DA37F18, &unk_22DEC8140);
    sub_22DDF1788(v11, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
  }

  free(v11);
  free(v10);
  free(v12);

  free(v7);
}

uint64_t static Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppData.== infix(_:_:)()
{
  sub_22DEC48B4();
  sub_22DDF25F4(&qword_27DA37B30, MEMORY[0x277D216C8]);
  return sub_22DEC4BF4() & 1;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWItem.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem(0);
  v4 = a1 + *(v3 + 20);
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  *(a1 + *(v3 + 24)) = 5;
  return result;
}

uint64_t sub_22DE9E4D4(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_22DE9E530(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *(a5(0) + 20));
  v8 = v7[1];

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t sub_22DE9E5A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 20));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData.title.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

uint64_t sub_22DE9E6E4(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  v3 = v2[1];

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData.subTitle.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData.buttonTitle.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData.action.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData(0);
  sub_22DDF0028(v1 + *(v7 + 32), v6, &qword_27DA37D80, &unk_22DEC7960);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22DDF1788(v6, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  *(a1 + *(v8 + 20)) = 7;
  v10 = *(v8 + 24);
  v11 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22DDEF284(v6, &qword_27DA37D80, &unk_22DEC7960);
  }

  return result;
}

uint64_t sub_22DE9EB18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData(0);
  sub_22DDF0028(a1 + *(v8 + 32), v7, &qword_27DA37D80, &unk_22DEC7960);
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_22DDF1788(v7, a2, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  *(a2 + *(v9 + 20)) = 7;
  v11 = *(v9 + 24);
  v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData(0);
  (*(*(v12 - 8) + 56))(a2 + v11, 1, 1, v12);
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_22DDEF284(v7, &qword_27DA37D80, &unk_22DEC7960);
  }

  return result;
}

uint64_t sub_22DE9ECC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DEA298C(a1, v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  v9 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData(0) + 32);
  sub_22DDEF284(a2 + v9, &qword_27DA37D80, &unk_22DEC7960);
  sub_22DDF1788(v8, a2 + v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData.action.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData(0) + 32);
  sub_22DDEF284(v1 + v3, &qword_27DA37D80, &unk_22DEC7960);
  sub_22DDF1788(a1, v1 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData.action.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960) - 8) + 64);
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
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
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
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData(0) + 32);
  *(v5 + 12) = v15;
  sub_22DDF0028(v1 + v15, v8, &qword_27DA37D80, &unk_22DEC7960);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    *(v14 + *(v9 + 20)) = 7;
    v17 = *(v9 + 24);
    v18 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    if (v16(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA37D80, &unk_22DEC7960);
    }
  }

  else
  {
    sub_22DDF1788(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  }

  return sub_22DE9F108;
}

void sub_22DE9F108(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_22DEA298C((*a1)[5], v4, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
    sub_22DDEF284(v9 + v3, &qword_27DA37D80, &unk_22DEC7960);
    sub_22DDF1788(v4, v9 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_22DEA29F4(v5, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  }

  else
  {
    sub_22DDEF284(v9 + v3, &qword_27DA37D80, &unk_22DEC7960);
    sub_22DDF1788(v5, v9 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData.hasAction.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData(0);
  sub_22DDF0028(v0 + *(v5 + 32), v4, &qword_27DA37D80, &unk_22DEC7960);
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_22DDEF284(v4, &qword_27DA37D80, &unk_22DEC7960);
  return v7;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData.clearAction()()
{
  v1 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData(0) + 32);
  sub_22DDEF284(v0 + v1, &qword_27DA37D80, &unk_22DEC7960);
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData.hasAcPlus_p.setter(char a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData.hasAcPlus_p.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_22DE2CCE4;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData.appleLogoURL.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0) + 32);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData.coverageLabel.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0) + 36));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_22DE9F694@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0) + 36));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_22DE9F6F8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0) + 36));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData.coverageLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0) + 36));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData.coverageLabel.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0) + 36);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData.clearCoverageLabel()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0) + 36));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData.coverageExpirationLabel.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0) + 40));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_22DE9F900@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0) + 40));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_22DE9F964(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0) + 40));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData.coverageExpirationLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0) + 40));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData.coverageExpirationLabel.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0) + 40);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData.clearCoverageExpirationLabel()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0) + 40));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData.coverageExpirationLabelFormat2.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0) + 44));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_22DE9FB6C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0) + 44));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_22DE9FBD0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0) + 44));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData.coverageExpirationLabelFormat2.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0) + 44));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData.coverageExpirationLabelFormat2.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0) + 44);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData.clearCoverageExpirationLabelFormat2()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0) + 44));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData.productName.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0) + 48));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_22DE9FDD8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0) + 48));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_22DE9FE3C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0) + 48));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData.productName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0) + 48));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData.productName.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0) + 48);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData.clearProductName()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0) + 48));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData.serialNumberLabel.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0) + 52));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_22DEA0044@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0) + 52));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_22DEA00A8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0) + 52));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData.serialNumberLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0) + 52));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData.serialNumberLabel.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0) + 52);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData.clearSerialNumberLabel()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0) + 52));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData.agreementNumber.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0) + 56));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_22DEA02B0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0) + 56));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_22DEA0314(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0) + 56));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData.agreementNumber.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0) + 56));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData.agreementNumber.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0) + 56);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData.clearAgreementNumber()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0) + 56));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData.warrantyTitle.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0) + 60));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_22DEA051C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0) + 60));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_22DEA0580(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0) + 60));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData.warrantyTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0) + 60));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData.warrantyTitle.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0) + 60);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData.clearWarrantyTitle()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0) + 60));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData.links.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_22DEA07C0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_22DEC48B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22DEA085C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_22DEC48B4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink.label.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink.sheetData.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F38, &qword_22DEC8160);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink(0);
  sub_22DDF0028(v1 + *(v7 + 24), v6, &qword_27DA37F38, &qword_22DEC8160);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22DDF1788(v6, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData);
  }

  *a1 = MEMORY[0x277D84F90];
  v10 = a1 + v8[5];
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v11 = (a1 + v8[6]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a1 + v8[7]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a1 + v8[8]);
  *v13 = 0;
  v13[1] = 0;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22DDEF284(v6, &qword_27DA37F38, &qword_22DEC8160);
  }

  return result;
}

uint64_t sub_22DEA0BD4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F38, &qword_22DEC8160);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink(0);
  sub_22DDF0028(a1 + *(v8 + 24), v7, &qword_27DA37F38, &qword_22DEC8160);
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_22DDF1788(v7, a2, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData);
  }

  *a2 = MEMORY[0x277D84F90];
  v11 = a2 + v9[5];
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v12 = (a2 + v9[6]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a2 + v9[7]);
  *v13 = 0;
  v13[1] = 0;
  v14 = (a2 + v9[8]);
  *v14 = 0;
  v14[1] = 0;
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_22DDEF284(v7, &qword_27DA37F38, &qword_22DEC8160);
  }

  return result;
}

uint64_t sub_22DEA0D60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DEA298C(a1, v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData);
  v9 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink(0) + 24);
  sub_22DDEF284(a2 + v9, &qword_27DA37F38, &qword_22DEC8160);
  sub_22DDF1788(v8, a2 + v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink.sheetData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink(0) + 24);
  sub_22DDEF284(v1 + v3, &qword_27DA37F38, &qword_22DEC8160);
  sub_22DDF1788(a1, v1 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData);
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData(0);
  v3 = a1 + v2[5];
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v5 = (a1 + v2[6]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a1 + v2[7]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a1 + v2[8]);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink.sheetData.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F38, &qword_22DEC8160) - 8) + 64);
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
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
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
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink(0) + 24);
  *(v5 + 12) = v15;
  sub_22DDF0028(v1 + v15, v8, &qword_27DA37F38, &qword_22DEC8160);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    v17 = v14 + v9[5];
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v18 = (v14 + v9[6]);
    *v18 = 0;
    v18[1] = 0;
    v19 = (v14 + v9[7]);
    *v19 = 0;
    v19[1] = 0;
    v20 = (v14 + v9[8]);
    *v20 = 0;
    v20[1] = 0;
    if (v16(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA37F38, &qword_22DEC8160);
    }
  }

  else
  {
    sub_22DDF1788(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData);
  }

  return sub_22DEA11F4;
}

void sub_22DEA11F4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_22DEA298C((*a1)[5], v4, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData);
    sub_22DDEF284(v9 + v3, &qword_27DA37F38, &qword_22DEC8160);
    sub_22DDF1788(v4, v9 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_22DEA29F4(v5, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData);
  }

  else
  {
    sub_22DDEF284(v9 + v3, &qword_27DA37F38, &qword_22DEC8160);
    sub_22DDF1788(v5, v9 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t sub_22DEA1420@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v6 = a1(0);
  v7 = (a3 + *(v6 + 20));
  *v7 = 0;
  v7[1] = 0;
  v8 = *(v6 + 24);
  v9 = a2(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a3 + v8, 1, 1, v9);
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData.title.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData.subTitle.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

uint64_t sub_22DEA1748(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 32));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_22DEA17A4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 32));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *a3 = v6;
  a3[1] = v7;
}

uint64_t sub_22DEA180C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *(a5(0) + 32));
  v8 = v7[1];

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t sub_22DEA187C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 32));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData.footer.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData(0) + 32);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

uint64_t sub_22DEA19C0(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 32));
  v3 = v2[1];

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_DWBenefit.title.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWBenefit(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_DWBenefit.imageURL.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWBenefit(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

uint64_t sub_22DEA1D78@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v3 = a1(0);
  v4 = a2 + v3[5];
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v6 = (a2 + v3[6]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v3[7]);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_DWFooter.content.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE2D1BC;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWFooter.links.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_22DEA1FF0()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_28145CAC0);
  __swift_project_value_buffer(v0, qword_28145CAC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC7C40;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "DW_PROMO";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "DW_COVERAGE";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "DW_LINK";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "DW_SUPPORT";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "DW_FOOTER";
  *(v15 + 8) = 9;
  *(v15 + 16) = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t sub_22DEA22E8()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_28145CD50);
  __swift_project_value_buffer(v0, qword_28145CD50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC77C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "meta";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "common";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "data";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t sub_22DEA2520()
{
  v0 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWRequest._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__meta;
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__common;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__data;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest(0);
  result = (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  qword_28145CE98 = v3;
  return result;
}

uint64_t sub_22DEA2634(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38E00, &unk_22DECE2A8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v25[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A40, &unk_22DEC7330);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v25[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v25[-v13];
  v15 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__meta;
  v16 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  (*(*(v16 - 8) + 56))(v1 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__common;
  v18 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  (*(*(v18 - 8) + 56))(v1 + v17, 1, 1, v18);
  v19 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__data;
  v20 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest(0);
  (*(*(v20 - 8) + 56))(v1 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__meta;
  swift_beginAccess();
  sub_22DDF0028(a1 + v21, v14, &qword_27DA37A38, &unk_22DEC6570);
  swift_beginAccess();
  sub_22DDF0208(v14, v1 + v15, &qword_27DA37A38, &unk_22DEC6570);
  swift_endAccess();
  v22 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__common;
  swift_beginAccess();
  sub_22DDF0028(a1 + v22, v10, &qword_27DA37A40, &unk_22DEC7330);
  swift_beginAccess();
  sub_22DDF0208(v10, v1 + v17, &qword_27DA37A40, &unk_22DEC7330);
  swift_endAccess();
  v23 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__data;
  swift_beginAccess();
  sub_22DDF0028(a1 + v23, v6, &qword_27DA38E00, &unk_22DECE2A8);

  swift_beginAccess();
  sub_22DDF0208(v6, v1 + v19, &qword_27DA38E00, &unk_22DECE2A8);
  swift_endAccess();
  return v1;
}

uint64_t sub_22DEA298C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22DEA29F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22DEA2A74()
{
  sub_22DDEF284(v0 + OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__meta, &qword_27DA37A38, &unk_22DEC6570);
  sub_22DDEF284(v0 + OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__common, &qword_27DA37A40, &unk_22DEC7330);
  sub_22DDEF284(v0 + OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__data, &qword_27DA38E00, &unk_22DECE2A8);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_22DEA2B90()
{
  while (1)
  {
    result = sub_22DEC4954();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_22DEA2E00();
        break;
      case 2:
        sub_22DEA2D24();
        break;
      case 1:
        sub_22DEA2C48();
        break;
    }
  }

  return result;
}

uint64_t sub_22DEA2C48()
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  sub_22DDF25F4(&qword_28145C748, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  sub_22DEC49E4();
  return swift_endAccess();
}

uint64_t sub_22DEA2D24()
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  sub_22DDF25F4(&qword_28145B690, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
  sub_22DEC49E4();
  return swift_endAccess();
}

uint64_t sub_22DEA2E00()
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest(0);
  sub_22DDF25F4(&qword_28145B238, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest);
  sub_22DEC49E4();
  return swift_endAccess();
}

uint64_t sub_22DEA2F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_22DEA2F84(a1, a2, a3, a4);
  if (!v4)
  {
    sub_22DEA31AC(a1, a2, a3, a4);
    return sub_22DEA33D4(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_22DEA2F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__meta;
  swift_beginAccess();
  sub_22DDF0028(a1 + v14, v8, &qword_27DA37A38, &unk_22DEC6570);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22DDEF284(v8, &qword_27DA37A38, &unk_22DEC6570);
  }

  sub_22DDF1788(v8, v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  sub_22DDF25F4(&qword_28145C748, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  sub_22DEC4AD4();
  return sub_22DEA29F4(v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
}

uint64_t sub_22DEA31AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A40, &unk_22DEC7330);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__common;
  swift_beginAccess();
  sub_22DDF0028(a1 + v14, v8, &qword_27DA37A40, &unk_22DEC7330);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22DDEF284(v8, &qword_27DA37A40, &unk_22DEC7330);
  }

  sub_22DDF1788(v8, v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
  sub_22DDF25F4(&qword_28145B690, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
  sub_22DEC4AD4();
  return sub_22DEA29F4(v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
}

uint64_t sub_22DEA33D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38E00, &unk_22DECE2A8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__data;
  swift_beginAccess();
  sub_22DDF0028(a1 + v14, v8, &qword_27DA38E00, &unk_22DECE2A8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22DDEF284(v8, &qword_27DA38E00, &unk_22DECE2A8);
  }

  sub_22DDF1788(v8, v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest);
  sub_22DDF25F4(&qword_28145B238, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest);
  sub_22DEC4AD4();
  return sub_22DEA29F4(v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest);
}

BOOL sub_22DEA3640(uint64_t a1, uint64_t a2)
{
  v92 = a2;
  v82 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest(0);
  v80 = *(v82 - 8);
  v3 = *(v80 + 64);
  MEMORY[0x28223BE20](v82);
  v76 = (&v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA39018, &unk_22DECFFF0);
  v5 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79);
  v81 = &v76 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38E00, &unk_22DECE2A8);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v77 = (&v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v90 = &v76 - v11;
  v88 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  v87 = *(v88 - 8);
  v12 = *(v87 + 64);
  MEMORY[0x28223BE20](v88);
  v78 = (&v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38360, &unk_22DECCF70);
  v14 = *(*(v85 - 8) + 64);
  MEMORY[0x28223BE20](v85);
  v89 = &v76 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A40, &unk_22DEC7330);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v83 = (&v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v86 = &v76 - v20;
  v21 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v84 = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38368, &qword_22DECA2B0);
  v26 = v25 - 8;
  v27 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v76 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30 - 8);
  v91 = &v76 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v35 = &v76 - v34;
  v36 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__meta;
  swift_beginAccess();
  sub_22DDF0028(a1 + v36, v35, &qword_27DA37A38, &unk_22DEC6570);
  v37 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__meta;
  v38 = v92;
  swift_beginAccess();
  v39 = *(v26 + 56);
  sub_22DDF0028(v35, v29, &qword_27DA37A38, &unk_22DEC6570);
  sub_22DDF0028(v38 + v37, &v29[v39], &qword_27DA37A38, &unk_22DEC6570);
  v40 = *(v22 + 48);
  if (v40(v29, 1, v21) == 1)
  {

    sub_22DDEF284(v35, &qword_27DA37A38, &unk_22DEC6570);
    v41 = a1;
    if (v40(&v29[v39], 1, v21) == 1)
    {
      sub_22DDEF284(v29, &qword_27DA37A38, &unk_22DEC6570);
      goto LABEL_8;
    }

LABEL_6:
    v43 = &qword_27DA38368;
    v44 = &qword_22DECA2B0;
    v45 = v29;
LABEL_14:
    sub_22DDEF284(v45, v43, v44);
    goto LABEL_15;
  }

  v41 = a1;
  v42 = v91;
  sub_22DDF0028(v29, v91, &qword_27DA37A38, &unk_22DEC6570);
  if (v40(&v29[v39], 1, v21) == 1)
  {

    sub_22DDEF284(v35, &qword_27DA37A38, &unk_22DEC6570);
    sub_22DEA29F4(v42, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
    goto LABEL_6;
  }

  v46 = v84;
  sub_22DDF1788(&v29[v39], v84, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);

  v47 = static Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta.== infix(_:_:)(v42, v46);
  sub_22DEA29F4(v46, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  sub_22DDEF284(v35, &qword_27DA37A38, &unk_22DEC6570);
  sub_22DEA29F4(v42, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  sub_22DDEF284(v29, &qword_27DA37A38, &unk_22DEC6570);
  if ((v47 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v48 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__common;
  swift_beginAccess();
  v49 = v86;
  sub_22DDF0028(v41 + v48, v86, &qword_27DA37A40, &unk_22DEC7330);
  v50 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__common;
  swift_beginAccess();
  v51 = *(v85 + 48);
  v52 = v89;
  sub_22DDF0028(v49, v89, &qword_27DA37A40, &unk_22DEC7330);
  sub_22DDF0028(v38 + v50, v52 + v51, &qword_27DA37A40, &unk_22DEC7330);
  v53 = *(v87 + 48);
  v54 = v88;
  if (v53(v52, 1, v88) != 1)
  {
    v57 = v83;
    sub_22DDF0028(v52, v83, &qword_27DA37A40, &unk_22DEC7330);
    v58 = v53(v52 + v51, 1, v54);
    v56 = v90;
    if (v58 == 1)
    {
      sub_22DDEF284(v49, &qword_27DA37A40, &unk_22DEC7330);
      sub_22DEA29F4(v57, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
      goto LABEL_13;
    }

    v60 = v52 + v51;
    v61 = v78;
    sub_22DDF1788(v60, v78, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
    v62 = static Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody.== infix(_:_:)(v57, v61);
    sub_22DEA29F4(v61, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
    sub_22DDEF284(v49, &qword_27DA37A40, &unk_22DEC7330);
    sub_22DEA29F4(v57, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
    sub_22DDEF284(v52, &qword_27DA37A40, &unk_22DEC7330);
    if (v62)
    {
      goto LABEL_19;
    }

LABEL_15:

    return 0;
  }

  sub_22DDEF284(v49, &qword_27DA37A40, &unk_22DEC7330);
  v55 = v53(v52 + v51, 1, v54);
  v56 = v90;
  if (v55 != 1)
  {
LABEL_13:
    v43 = &qword_27DA38360;
    v44 = &unk_22DECCF70;
    v45 = v52;
    goto LABEL_14;
  }

  sub_22DDEF284(v52, &qword_27DA37A40, &unk_22DEC7330);
LABEL_19:
  v63 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__data;
  swift_beginAccess();
  sub_22DDF0028(v41 + v63, v56, &qword_27DA38E00, &unk_22DECE2A8);
  v64 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__data;
  swift_beginAccess();
  v65 = *(v79 + 48);
  v66 = v81;
  sub_22DDF0028(v56, v81, &qword_27DA38E00, &unk_22DECE2A8);
  sub_22DDF0028(v38 + v64, v66 + v65, &qword_27DA38E00, &unk_22DECE2A8);
  v67 = *(v80 + 48);
  v68 = v82;
  if (v67(v66, 1, v82) == 1)
  {

    sub_22DDEF284(v56, &qword_27DA38E00, &unk_22DECE2A8);
    if (v67(v66 + v65, 1, v68) == 1)
    {
      sub_22DDEF284(v66, &qword_27DA38E00, &unk_22DECE2A8);
      return 1;
    }

    goto LABEL_25;
  }

  v69 = v68;
  v70 = v77;
  sub_22DDF0028(v66, v77, &qword_27DA38E00, &unk_22DECE2A8);
  if (v67(v66 + v65, 1, v69) == 1)
  {

    sub_22DDEF284(v56, &qword_27DA38E00, &unk_22DECE2A8);
    sub_22DEA29F4(v70, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest);
LABEL_25:
    v71 = &qword_27DA39018;
    v72 = &unk_22DECFFF0;
    v73 = v66;
LABEL_31:
    sub_22DDEF284(v73, v71, v72);
    return 0;
  }

  v74 = v76;
  sub_22DDF1788(v66 + v65, v76, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest);
  if ((sub_22DE2F604(*v70, *v74) & 1) == 0 || (sub_22DEAFB4C(v70[1], v74[1]) & 1) == 0)
  {

    sub_22DDEF284(v56, &qword_27DA38E00, &unk_22DECE2A8);
    sub_22DEA29F4(v74, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest);
    sub_22DEA29F4(v70, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest);
    v73 = v66;
    v71 = &qword_27DA38E00;
    v72 = &unk_22DECE2A8;
    goto LABEL_31;
  }

  v75 = *(v82 + 24);
  sub_22DEC48B4();
  sub_22DDF25F4(&qword_27DA37B30, MEMORY[0x277D216C8]);
  LOBYTE(v75) = sub_22DEC4BF4();

  sub_22DDEF284(v56, &qword_27DA38E00, &unk_22DECE2A8);
  sub_22DEA29F4(v74, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest);
  sub_22DEA29F4(v70, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest);
  sub_22DDEF284(v66, &qword_27DA38E00, &unk_22DECE2A8);
  return (v75 & 1) != 0;
}

uint64_t sub_22DEA439C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF25F4(&qword_27DA38FD8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DEA443C(uint64_t a1)
{
  v2 = sub_22DDF25F4(&qword_27DA38EB0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DEA44A8()
{
  sub_22DDF25F4(&qword_27DA38EB0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWRequest);

  return sub_22DEC4A44();
}

uint64_t sub_22DEA4584()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_28145B248);
  __swift_project_value_buffer(v0, qword_28145B248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC81D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "interested_serials";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "additional_payload";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest.decodeMessage<A>(decoder:)()
{
  result = sub_22DEC4954();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_22DEC49B4();
      }

      else if (result == 2)
      {
        sub_22DEC4884();
        sub_22DEC4944();
      }

      result = sub_22DEC4954();
    }
  }

  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (result = sub_22DEC4AA4(), !v1))
  {
    if (!*(v0[1] + 16) || (sub_22DEC4884(), result = sub_22DEC4A54(), !v1))
    {
      v3 = v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest(0) + 24);
      return sub_22DEC4894();
    }
  }

  return result;
}

uint64_t static Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_22DE2F604(*a1, *a2) & 1) == 0 || (sub_22DEAFB4C(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest(0) + 24);
  sub_22DEC48B4();
  sub_22DDF25F4(&qword_27DA37B30, MEMORY[0x277D216C8]);
  return sub_22DEC4BF4() & 1;
}

uint64_t sub_22DEA4A24@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = sub_22DE0501C(v4);
  v5 = a2 + *(a1 + 24);
  return _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
}

uint64_t sub_22DEA4AB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF25F4(&qword_27DA38FD0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DEA4B54(uint64_t a1)
{
  v2 = sub_22DDF25F4(&qword_28145B238, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DEA4BC0()
{
  sub_22DDF25F4(&qword_28145B238, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest);

  return sub_22DEC4A44();
}

uint64_t sub_22DEA4C3C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_22DE2F604(*a1, *a2) & 1) == 0 || (sub_22DEAFB4C(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  sub_22DEC48B4();
  sub_22DDF25F4(&qword_27DA37B30, MEMORY[0x277D216C8]);
  return sub_22DEC4BF4() & 1;
}

uint64_t sub_22DEA4D10()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_28145CA78);
  __swift_project_value_buffer(v0, qword_28145CA78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC81D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "meta";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "data";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWResponse.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_22DEC4954();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_22DEA4F90();
    }

    else if (result == 2)
    {
      sub_22DEA5044();
    }
  }

  return result;
}

uint64_t sub_22DEA4F90()
{
  v0 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWResponse(0) + 20);
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  sub_22DDF25F4(&qword_28145C498, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  return sub_22DEC49E4();
}

uint64_t sub_22DEA5044()
{
  v0 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWResponse(0) + 24);
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse(0);
  sub_22DDF25F4(&qword_28145B0C0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse);
  return sub_22DEC49E4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DEA5168(v3, a1, a2, a3);
  if (!v4)
  {
    sub_22DEA5384(v3, a1, a2, a3);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DEA5168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38088, &unk_22DEC8220);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWResponse(0);
  sub_22DDF0028(a1 + *(v14 + 20), v8, &qword_27DA38088, &unk_22DEC8220);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22DDEF284(v8, &qword_27DA38088, &unk_22DEC8220);
  }

  sub_22DDF1788(v8, v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  sub_22DDF25F4(&qword_28145C498, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  sub_22DEC4AD4();
  return sub_22DEA29F4(v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
}

uint64_t sub_22DEA5384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37DC0, &qword_22DECE2A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWResponse(0);
  sub_22DDF0028(a1 + *(v14 + 24), v8, &qword_27DA37DC0, &qword_22DECE2A0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22DDEF284(v8, &qword_27DA37DC0, &qword_22DECE2A0);
  }

  sub_22DDF1788(v8, v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse);
  sub_22DDF25F4(&qword_28145B0C0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse);
  sub_22DEC4AD4();
  return sub_22DEA29F4(v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse);
}

uint64_t sub_22DEA55EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_22DEA56FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF25F4(&qword_27DA38FC8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DEA579C(uint64_t a1)
{
  v2 = sub_22DDF25F4(&qword_28145CA68, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DEA5808()
{
  sub_22DDF25F4(&qword_28145CA68, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWResponse);

  return sub_22DEC4A44();
}

uint64_t sub_22DEA58A4()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_28145B0D0);
  __swift_project_value_buffer(v0, qword_28145B0D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC5F50;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 2;
  *v5 = "warranties";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_22DEC4AE4();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse.decodeMessage<A>(decoder:)()
{
  result = sub_22DEC4954();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 2)
      {
        type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0);
        sub_22DDF25F4(&qword_28145C208, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData);
        sub_22DEC49D4();
      }

      result = sub_22DEC4954();
    }
  }

  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0), sub_22DDF25F4(&qword_28145C208, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData), result = sub_22DEC4AC4(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse(0) + 20);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t static Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_22DE308A4(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse(0) + 20);
  sub_22DEC48B4();
  sub_22DDF25F4(&qword_27DA37B30, MEMORY[0x277D216C8]);
  return sub_22DEC4BF4() & 1;
}

uint64_t sub_22DEA5D34(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF25F4(&qword_27DA38FC0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DEA5DD4(uint64_t a1)
{
  v2 = sub_22DDF25F4(&qword_28145B0C0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DEA5E40()
{
  sub_22DDF25F4(&qword_28145B0C0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse);

  return sub_22DEC4A44();
}

uint64_t sub_22DEA5EBC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_22DE308A4(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_22DEC48B4();
  sub_22DDF25F4(&qword_27DA37B30, MEMORY[0x277D216C8]);
  return sub_22DEC4BF4() & 1;
}

uint64_t sub_22DEA5F80()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_28145C218);
  __swift_project_value_buffer(v0, qword_28145C218);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC81E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "serial_number";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "coverage_label";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "has_theft_and_loss_benefit";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "settings_coverage_section";
  *(v14 + 1) = 25;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "foreground_cache_ttl";
  *(v16 + 1) = 20;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "coverage_hash";
  *(v18 + 1) = 13;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "sections";
  *(v20 + 1) = 8;
  v20[16] = 2;
  v21 = *MEMORY[0x277D21870];
  v9();
  return sub_22DEC4AF4();
}

uint64_t sub_22DEA62B4()
{
  v0 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 2;
  v4 = OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__settingsCoverageSection;
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection(0);
  result = (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v7 = v3 + OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__foregroundCacheTtl;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = (v3 + OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__coverageHash);
  *v8 = 0;
  v8[1] = 0;
  *(v3 + OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__sections) = MEMORY[0x277D84F90];
  qword_28145C3E0 = v3;
  return result;
}

uint64_t sub_22DEA638C()
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSection(0);
  sub_22DDF25F4(&qword_28145CC88, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSection);
  sub_22DEC49D4();
  return swift_endAccess();
}

uint64_t sub_22DEA64A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v11 = a4(0);
  result = a5(*(v5 + *(v11 + 20)), a1, a2, a3);
  if (!v6)
  {
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DEA6528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_22DE51FF4(a1);
  if (!v4)
  {
    sub_22DE52090(a1);
    sub_22DEA6698(a1);
    sub_22DEA6720(a1, a2, a3, a4);
    sub_22DEA6948(a1);
    sub_22DEA69D4(a1);
    v10 = OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__sections;
    result = swift_beginAccess();
    if (*(*(a1 + v10) + 16))
    {
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSection(0);
      sub_22DDF25F4(&qword_28145CC88, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSection);

      sub_22DEC4AC4();
    }
  }

  return result;
}

uint64_t sub_22DEA6698(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 48) != 2)
  {
    return sub_22DEC4A64();
  }

  return result;
}

uint64_t sub_22DEA6720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38E08, &qword_22DECE2B8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__settingsCoverageSection;
  swift_beginAccess();
  sub_22DDF0028(a1 + v14, v8, &qword_27DA38E08, &qword_22DECE2B8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22DDEF284(v8, &qword_27DA38E08, &qword_22DECE2B8);
  }

  sub_22DDF1788(v8, v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection);
  sub_22DDF25F4(&qword_28145AFF8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection);
  sub_22DEC4AD4();
  return sub_22DEA29F4(v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection);
}

uint64_t sub_22DEA6948(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__foregroundCacheTtl);
  result = swift_beginAccess();
  if ((v1[1] & 1) == 0)
  {
    v3 = *v1;
    return sub_22DEC4A94();
  }

  return result;
}

uint64_t sub_22DEA69D4(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__coverageHash);
  result = swift_beginAccess();
  if (v1[1])
  {
    v3 = *v1;
    v4 = v1[1];

    sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DEA6ABC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection(0);
  v54 = *(v4 - 8);
  v5 = *(v54 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA39008, &qword_22DECFFD8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v55 = &v53 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38E08, &qword_22DECE2B8);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v53 - v16;
  swift_beginAccess();
  v19 = *(a1 + 16);
  v18 = *(a1 + 24);
  swift_beginAccess();
  v20 = *(a2 + 24);
  if (v18)
  {
    if (!v20 || (v19 != *(a2 + 16) || v18 != v20) && (sub_22DEC50E4() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v20)
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  v21 = *(a1 + 32);
  v22 = *(a1 + 40);
  swift_beginAccess();
  v23 = *(a2 + 40);
  if (v22)
  {
    if (!v23 || (v21 != *(a2 + 32) || v22 != v23) && (sub_22DEC50E4() & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_15:
    swift_beginAccess();
    v24 = *(a1 + 48);
    swift_beginAccess();
    v25 = *(a2 + 48);
    if (v24 == 2)
    {
      if (v25 != 2)
      {
        goto LABEL_28;
      }
    }

    else if (v25 == 2 || ((v24 ^ v25) & 1) != 0)
    {
      goto LABEL_28;
    }

    v26 = OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__settingsCoverageSection;
    swift_beginAccess();
    sub_22DDF0028(a1 + v26, v17, &qword_27DA38E08, &qword_22DECE2B8);
    v27 = OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__settingsCoverageSection;
    swift_beginAccess();
    v28 = *(v8 + 48);
    v29 = v55;
    sub_22DDF0028(v17, v55, &qword_27DA38E08, &qword_22DECE2B8);
    v53 = v28;
    sub_22DDF0028(a2 + v27, v29 + v28, &qword_27DA38E08, &qword_22DECE2B8);
    v30 = *(v54 + 48);
    if (v30(v29, 1, v4) == 1)
    {

      sub_22DDEF284(v17, &qword_27DA38E08, &qword_22DECE2B8);
      v31 = v55;
      v32 = v30(v55 + v53, 1, v4) == 1;
      v33 = v31;
      if (!v32)
      {
        goto LABEL_26;
      }

      sub_22DDEF284(v31, &qword_27DA38E08, &qword_22DECE2B8);
    }

    else
    {
      v34 = v55;
      sub_22DDF0028(v55, v15, &qword_27DA38E08, &qword_22DECE2B8);
      if (v30(v34 + v53, 1, v4) == 1)
      {

        sub_22DDEF284(v17, &qword_27DA38E08, &qword_22DECE2B8);
        sub_22DEA29F4(v15, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection);
        v33 = v55;
LABEL_26:
        sub_22DDEF284(v33, &qword_27DA39008, &qword_22DECFFD8);
LABEL_27:

        goto LABEL_28;
      }

      v37 = v55;
      sub_22DDF1788(v55 + v53, v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection);

      v38 = _s6NDOAPI51Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionV2eeoiySbAC_ACtFZ_0(v15, v7);
      sub_22DEA29F4(v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection);
      sub_22DDEF284(v17, &qword_27DA38E08, &qword_22DECE2B8);
      sub_22DEA29F4(v15, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection);
      sub_22DDEF284(v37, &qword_27DA38E08, &qword_22DECE2B8);
      if ((v38 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    v39 = (a1 + OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__foregroundCacheTtl);
    swift_beginAccess();
    v40 = *v39;
    v41 = *(v39 + 8);
    v42 = a2 + OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__foregroundCacheTtl;
    swift_beginAccess();
    v43 = *(v42 + 8);
    if (v41)
    {
      if ((*(v42 + 8) & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else if ((*(v42 + 8) & 1) != 0 || v40 != *v42)
    {
      goto LABEL_27;
    }

    v44 = (a1 + OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__coverageHash);
    swift_beginAccess();
    v45 = *v44;
    v46 = v44[1];
    v47 = (a2 + OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__coverageHash);
    swift_beginAccess();
    v48 = v47[1];
    if (v46)
    {
      if (!v48 || (v45 != *v47 || v46 != v48) && (sub_22DEC50E4() & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else if (v48)
    {
      goto LABEL_27;
    }

    v49 = OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__sections;
    swift_beginAccess();
    v50 = *(a1 + v49);
    v51 = OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__sections;
    swift_beginAccess();
    v52 = *(a2 + v51);

    v35 = sub_22DE329F4(v50, v52);

    return v35 & 1;
  }

  if (!v23)
  {
    goto LABEL_15;
  }

LABEL_28:
  v35 = 0;
  return v35 & 1;
}

uint64_t sub_22DEA71D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF25F4(&qword_27DA38FB8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DEA7250(uint64_t a1)
{
  v2 = sub_22DDF25F4(&qword_28145C208, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DEA72BC()
{
  sub_22DDF25F4(&qword_28145C208, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData);

  return sub_22DEC4A44();
}

uint64_t sub_22DEA7398()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_28145B008);
  __swift_project_value_buffer(v0, qword_28145B008);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC81D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 4;
  *v6 = "coverage_expiration_label";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 5;
  *v10 = "offer";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v11 = *MEMORY[0x277D21870];
  v9();
  return sub_22DEC4AF4();
}

uint64_t sub_22DEA758C()
{
  v0 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection(0) + 24);
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer(0);
  sub_22DDF25F4(&qword_28145AF28, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer);
  return sub_22DEC49E4();
}

uint64_t sub_22DEA7684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38E10, &qword_22DECE2C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection(0);
  sub_22DDF0028(a1 + *(v14 + 24), v8, &qword_27DA38E10, &qword_22DECE2C0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22DDEF284(v8, &qword_27DA38E10, &qword_22DECE2C0);
  }

  sub_22DDF1788(v8, v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer);
  sub_22DDF25F4(&qword_28145AF28, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer);
  sub_22DEC4AD4();
  return sub_22DEA29F4(v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer);
}

uint64_t sub_22DEA7920(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF25F4(&qword_27DA38FB0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DEA799C(uint64_t a1)
{
  v2 = sub_22DDF25F4(&qword_28145AFF8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DEA7A08()
{
  sub_22DDF25F4(&qword_28145AFF8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection);

  return sub_22DEC4A44();
}

uint64_t sub_22DEA7AA4()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_28145AF38);
  __swift_project_value_buffer(v0, qword_28145AF38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC7570;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "link";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "singular_footer";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x277D21888];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "plural_footer";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "expiration";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_22DEC4954();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer(0) + 28);
LABEL_13:
        v0 = 0;
        sub_22DEC49C4();
      }

      else if (result == 4)
      {
        v4 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer(0) + 32);
        sub_22DEC49A4();
      }
    }

    else if (result == 1)
    {
      sub_22DEA7E2C();
    }

    else if (result == 2)
    {
      v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer(0) + 24);
      goto LABEL_13;
    }
  }
}

uint64_t sub_22DEA7E2C()
{
  v0 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer(0) + 20);
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  sub_22DDF25F4(&qword_28145D7E0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  return sub_22DEC49E4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DEA7FB0(v3, a1, a2, a3);
  if (!v4)
  {
    sub_22DEA89CC(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer);
    sub_22DEA8A50(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer);
    sub_22DEA81CC(v3);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DEA7FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer(0);
  sub_22DDF0028(a1 + *(v14 + 20), v8, &qword_27DA37D88, &unk_22DEC8210);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22DDEF284(v8, &qword_27DA37D88, &unk_22DEC8210);
  }

  sub_22DDF1788(v8, v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  sub_22DDF25F4(&qword_28145D7E0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  sub_22DEC4AD4();
  return sub_22DEA29F4(v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
}

uint64_t sub_22DEA81CC(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer(0);
  v3 = (a1 + *(result + 32));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_22DEC4A94();
  }

  return result;
}

uint64_t sub_22DEA8290@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v4 = a1[5];
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[7];
  v8 = (a2 + a1[6]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a2 + v7);
  *v9 = 0;
  v9[1] = 0;
  v10 = a2 + a1[8];
  *v10 = 0;
  *(v10 + 8) = 1;
  return result;
}

uint64_t sub_22DEA8378(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF25F4(&qword_27DA38FA8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DEA8418(uint64_t a1)
{
  v2 = sub_22DDF25F4(&qword_28145AF28, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DEA8484()
{
  sub_22DDF25F4(&qword_28145AF28, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer);

  return sub_22DEC4A44();
}

uint64_t sub_22DEA8520()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_28145CC98);
  __swift_project_value_buffer(v0, qword_28145CC98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC77C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "header";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "items";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "footer";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWSection.decodeMessage<A>(decoder:)()
{
  result = sub_22DEC4954();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result == 3)
      {
        break;
      }

      if (result == 2)
      {
        type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem(0);
        sub_22DDF25F4(&qword_28145D660, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem);
        sub_22DEC49D4();
        goto LABEL_5;
      }

      if (result == 1)
      {
        v3 = v0;
        v4 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSection(0) + 24);
LABEL_12:
        v0 = v3;
        sub_22DEC49C4();
      }

LABEL_5:
      result = sub_22DEC4954();
    }

    v3 = v0;
    v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSection(0) + 28);
    goto LABEL_12;
  }

  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWSection.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_22DEA89CC(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSection);
  if (!v4)
  {
    v10 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem(0);
      sub_22DDF25F4(&qword_28145D660, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem);
      sub_22DEC4AC4();
    }

    sub_22DEA8A50(v5, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSection);
    v11 = v5 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSection(0) + 20);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DEA89CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 24));
  if (v7[1])
  {
    v8 = *v7;
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DEA8A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 28));
  if (v7[1])
  {
    v8 = *v7;
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DEA8BAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF25F4(&qword_27DA38FA0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSection);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DEA8C4C(uint64_t a1)
{
  v2 = sub_22DDF25F4(&qword_28145CC88, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSection);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DEA8CB8()
{
  sub_22DDF25F4(&qword_28145CC88, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSection);

  return sub_22DEC4A44();
}

uint64_t sub_22DEA8D94()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_28145D670);
  __swift_project_value_buffer(v0, qword_28145D670);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DECB020;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "dw_promo_data";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x277D21888];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "dw_coverage_data";
  *(v13 + 1) = 16;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "link_data";
  *(v15 + 1) = 9;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "dw_support_app_data";
  *(v17 + 1) = 19;
  v17[16] = 2;
  v9();
  v18 = (v5 + 5 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "dw_footer_data";
  *(v19 + 1) = 14;
  v19[16] = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWItem.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_22DEC4954();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          sub_22DEA9D9C(v5, a1, a2, a3);
          break;
        case 5:
          sub_22DEAA358(v5, a1, a2, a3);
          break;
        case 6:
          sub_22DEAA914(v5, a1, a2, a3);
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          sub_22DEA91BC();
          break;
        case 2:
          sub_22DEA9230(v5, a1, a2, a3);
          break;
        case 3:
          sub_22DEA97E0(v5, a1, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_22DEA91BC()
{
  v0 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem(0) + 24);
  sub_22DEB59C0();
  return sub_22DEC4984();
}

uint64_t sub_22DEA9230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F18, &unk_22DEC8140);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38FE0, &qword_22DECFFA8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_22DDF0028(a1, v14, &qword_27DA37F18, &unk_22DEC8140);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_22DDEF284(v14, &qword_27DA37F18, &unk_22DEC8140);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_22DDF1788(v14, v22, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
    sub_22DDF1788(v22, v20, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_22DEA29F4(v20, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
      v33 = v48;
    }

    else
    {
      sub_22DDEF284(v28, &qword_27DA38FE0, &qword_22DECFFA8);
      v35 = v43;
      sub_22DDF1788(v20, v43, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData);
      sub_22DDF1788(v35, v28, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_22DDF25F4(&qword_27DA38F08, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData);
  v37 = v47;
  sub_22DEC49E4();
  if (v37)
  {
    return sub_22DDEF284(v28, &qword_27DA38FE0, &qword_22DECFFA8);
  }

  sub_22DDF0028(v28, v36, &qword_27DA38FE0, &qword_22DECFFA8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_22DDEF284(v28, &qword_27DA38FE0, &qword_22DECFFA8);
    return sub_22DDEF284(v36, &qword_27DA38FE0, &qword_22DECFFA8);
  }

  else
  {
    v39 = v44;
    sub_22DDF1788(v36, v44, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData);
    if (v32 != 1)
    {
      sub_22DEC4964();
    }

    sub_22DDEF284(v28, &qword_27DA38FE0, &qword_22DECFFA8);
    v40 = v42;
    sub_22DDEF284(v42, &qword_27DA37F18, &unk_22DEC8140);
    sub_22DDF1788(v39, v40, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_22DEA97E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F18, &unk_22DEC8140);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38FE8, &qword_22DECFFB0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_22DDF0028(a1, v14, &qword_27DA37F18, &unk_22DEC8140);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_22DDEF284(v14, &qword_27DA37F18, &unk_22DEC8140);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_22DDF1788(v14, v22, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
    sub_22DDF1788(v22, v20, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22DDEF284(v28, &qword_27DA38FE8, &qword_22DECFFB0);
      v35 = v44;
      sub_22DDF1788(v20, v44, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData);
      sub_22DDF1788(v35, v28, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_22DEA29F4(v20, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_22DDF25F4(&qword_28145BF38, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData);
  v37 = v47;
  sub_22DEC49E4();
  if (v37)
  {
    return sub_22DDEF284(v28, &qword_27DA38FE8, &qword_22DECFFB0);
  }

  sub_22DDF0028(v28, v36, &qword_27DA38FE8, &qword_22DECFFB0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_22DDEF284(v28, &qword_27DA38FE8, &qword_22DECFFB0);
    return sub_22DDEF284(v36, &qword_27DA38FE8, &qword_22DECFFB0);
  }

  else
  {
    v39 = v43;
    sub_22DDF1788(v36, v43, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData);
    if (v32 != 1)
    {
      sub_22DEC4964();
    }

    sub_22DDEF284(v28, &qword_27DA38FE8, &qword_22DECFFB0);
    v40 = v42;
    sub_22DDEF284(v42, &qword_27DA37F18, &unk_22DEC8140);
    sub_22DDF1788(v39, v40, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_22DEA9D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F18, &unk_22DEC8140);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_22DDF0028(a1, v14, &qword_27DA37F18, &unk_22DEC8140);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_22DDEF284(v14, &qword_27DA37F18, &unk_22DEC8140);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_22DDF1788(v14, v22, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
    sub_22DDF1788(v22, v20, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22DDEF284(v28, &qword_27DA37D88, &unk_22DEC8210);
      v35 = v44;
      sub_22DDF1788(v20, v44, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
      sub_22DDF1788(v35, v28, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_22DEA29F4(v20, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_22DDF25F4(&qword_28145D7E0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  v37 = v47;
  sub_22DEC49E4();
  if (v37)
  {
    return sub_22DDEF284(v28, &qword_27DA37D88, &unk_22DEC8210);
  }

  sub_22DDF0028(v28, v36, &qword_27DA37D88, &unk_22DEC8210);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_22DDEF284(v28, &qword_27DA37D88, &unk_22DEC8210);
    return sub_22DDEF284(v36, &qword_27DA37D88, &unk_22DEC8210);
  }

  else
  {
    v39 = v43;
    sub_22DDF1788(v36, v43, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    if (v32 != 1)
    {
      sub_22DEC4964();
    }

    sub_22DDEF284(v28, &qword_27DA37D88, &unk_22DEC8210);
    v40 = v42;
    sub_22DDEF284(v42, &qword_27DA37F18, &unk_22DEC8140);
    sub_22DDF1788(v39, v40, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_22DEAA358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppData(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F18, &unk_22DEC8140);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38FF0, &qword_22DECFFB8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_22DDF0028(a1, v14, &qword_27DA37F18, &unk_22DEC8140);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_22DDEF284(v14, &qword_27DA37F18, &unk_22DEC8140);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_22DDF1788(v14, v22, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
    sub_22DDF1788(v22, v20, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_22DDEF284(v28, &qword_27DA38FF0, &qword_22DECFFB8);
      v35 = v44;
      sub_22DDF1788(v20, v44, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppData);
      sub_22DDF1788(v35, v28, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppData);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_22DEA29F4(v20, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_22DDF25F4(&qword_27DA38F48, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppData);
  v37 = v47;
  sub_22DEC49E4();
  if (v37)
  {
    return sub_22DDEF284(v28, &qword_27DA38FF0, &qword_22DECFFB8);
  }

  sub_22DDF0028(v28, v36, &qword_27DA38FF0, &qword_22DECFFB8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_22DDEF284(v28, &qword_27DA38FF0, &qword_22DECFFB8);
    return sub_22DDEF284(v36, &qword_27DA38FF0, &qword_22DECFFB8);
  }

  else
  {
    v39 = v43;
    sub_22DDF1788(v36, v43, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppData);
    if (v32 != 1)
    {
      sub_22DEC4964();
    }

    sub_22DDEF284(v28, &qword_27DA38FF0, &qword_22DECFFB8);
    v40 = v42;
    sub_22DDEF284(v42, &qword_27DA37F18, &unk_22DEC8140);
    sub_22DDF1788(v39, v40, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppData);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_22DEAA914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F18, &unk_22DEC8140);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38FF8, &unk_22DECFFC0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_22DDF0028(a1, v14, &qword_27DA37F18, &unk_22DEC8140);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_22DDEF284(v14, &qword_27DA37F18, &unk_22DEC8140);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_22DDF1788(v14, v22, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
    sub_22DDF1788(v22, v20, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_22DDEF284(v28, &qword_27DA38FF8, &unk_22DECFFC0);
      v35 = v44;
      sub_22DDF1788(v20, v44, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter);
      sub_22DDF1788(v35, v28, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_22DEA29F4(v20, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_22DDF25F4(&qword_28145D340, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter);
  v37 = v47;
  sub_22DEC49E4();
  if (v37)
  {
    return sub_22DDEF284(v28, &qword_27DA38FF8, &unk_22DECFFC0);
  }

  sub_22DDF0028(v28, v36, &qword_27DA38FF8, &unk_22DECFFC0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_22DDEF284(v28, &qword_27DA38FF8, &unk_22DECFFC0);
    return sub_22DDEF284(v36, &qword_27DA38FF8, &unk_22DECFFC0);
  }

  else
  {
    v39 = v43;
    sub_22DDF1788(v36, v43, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter);
    if (v32 != 1)
    {
      sub_22DEC4964();
    }

    sub_22DDEF284(v28, &qword_27DA38FF8, &unk_22DECFFC0);
    v40 = v42;
    sub_22DDEF284(v42, &qword_27DA37F18, &unk_22DEC8140);
    sub_22DDF1788(v39, v40, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWItem.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F18, &unk_22DEC8140);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  result = sub_22DEAB0E8(v3);
  if (!v4)
  {
    sub_22DDF0028(v3, v11, &qword_27DA37F18, &unk_22DEC8140);
    v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data(0);
    if ((*(*(v13 - 8) + 48))(v11, 1, v13) != 1)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          sub_22DEAB3A8(v3, a1, a2, a3);
        }

        else
        {
          sub_22DEAB174(v3, a1, a2, a3);
        }
      }

      else if (EnumCaseMultiPayload == 2)
      {
        sub_22DEAB5E0(v3, a1, a2, a3);
      }

      else if (EnumCaseMultiPayload == 3)
      {
        sub_22DEAB818(v3, a1, a2, a3);
      }

      else
      {
        sub_22DEABA50(v3, a1, a2, a3);
      }

      sub_22DEA29F4(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
    }

    v15 = v3 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem(0) + 20);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DEAB0E8(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem(0);
  if (*(a1 + *(result + 24)) != 5)
  {
    v3 = *(a1 + *(result + 24));
    sub_22DEB59C0();
    return sub_22DEC4A74();
  }

  return result;
}

uint64_t sub_22DEAB174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F18, &unk_22DEC8140);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DDF0028(a1, v8, &qword_27DA37F18, &unk_22DEC8140);
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_22DDEF284(v8, &qword_27DA37F18, &unk_22DEC8140);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_22DDF1788(v8, v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData);
    sub_22DDF25F4(&qword_27DA38F08, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData);
    sub_22DEC4AD4();
    return sub_22DEA29F4(v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData);
  }

  result = sub_22DEA29F4(v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
  __break(1u);
  return result;
}

uint64_t sub_22DEAB3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F18, &unk_22DEC8140);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DDF0028(a1, v8, &qword_27DA37F18, &unk_22DEC8140);
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_22DDEF284(v8, &qword_27DA37F18, &unk_22DEC8140);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22DDF1788(v8, v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData);
    sub_22DDF25F4(&qword_28145BF38, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData);
    sub_22DEC4AD4();
    return sub_22DEA29F4(v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData);
  }

  result = sub_22DEA29F4(v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
  __break(1u);
  return result;
}

uint64_t sub_22DEAB5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F18, &unk_22DEC8140);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DDF0028(a1, v8, &qword_27DA37F18, &unk_22DEC8140);
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_22DDEF284(v8, &qword_27DA37F18, &unk_22DEC8140);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_22DDF1788(v8, v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    sub_22DDF25F4(&qword_28145D7E0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    sub_22DEC4AD4();
    return sub_22DEA29F4(v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  }

  result = sub_22DEA29F4(v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
  __break(1u);
  return result;
}

uint64_t sub_22DEAB818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F18, &unk_22DEC8140);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppData(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DDF0028(a1, v8, &qword_27DA37F18, &unk_22DEC8140);
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_22DDEF284(v8, &qword_27DA37F18, &unk_22DEC8140);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_22DDF1788(v8, v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppData);
    sub_22DDF25F4(&qword_27DA38F48, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppData);
    sub_22DEC4AD4();
    return sub_22DEA29F4(v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppData);
  }

  result = sub_22DEA29F4(v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
  __break(1u);
  return result;
}

uint64_t sub_22DEABA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F18, &unk_22DEC8140);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DDF0028(a1, v8, &qword_27DA37F18, &unk_22DEC8140);
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_22DDEF284(v8, &qword_27DA37F18, &unk_22DEC8140);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_22DDF1788(v8, v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter);
    sub_22DDF25F4(&qword_28145D340, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter);
    sub_22DEC4AD4();
    return sub_22DEA29F4(v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter);
  }

  result = sub_22DEA29F4(v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
  __break(1u);
  return result;
}

uint64_t sub_22DEABCD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a2 + *(a1 + 20);
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  *(a2 + *(a1 + 24)) = 5;
  return result;
}

uint64_t sub_22DEABD9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF25F4(&qword_27DA38F98, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DEABE3C(uint64_t a1)
{
  v2 = sub_22DDF25F4(&qword_28145D660, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DEABEA8()
{
  sub_22DDF25F4(&qword_28145D660, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem);

  return sub_22DEC4A44();
}

uint64_t sub_22DEABF44()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA38DB8);
  __swift_project_value_buffer(v0, qword_27DA38DB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC7570;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sub_title";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x277D21888];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "button_title";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "action";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_22DEC4954();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        v1 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData(0) + 28);
        goto LABEL_3;
      }

      if (result == 4)
      {
        sub_22DEAC2B8();
      }
    }

    else if (result == 1)
    {
      v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData(0) + 20);
LABEL_3:
      v0 = 0;
      sub_22DEC49C4();
    }

    else if (result == 2)
    {
      v4 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData(0) + 24);
      goto LABEL_3;
    }
  }
}

uint64_t sub_22DEAC2B8()
{
  v0 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData(0) + 32);
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  sub_22DDF25F4(&qword_28145D410, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  return sub_22DEC49E4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DEAC454(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData);
  if (!v4)
  {
    sub_22DEA89CC(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData);
    sub_22DEA8A50(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData);
    sub_22DEAC4D8(v3, a1, a2, a3);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DEAC454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 20));
  if (v7[1])
  {
    v8 = *v7;
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DEAC4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData(0);
  sub_22DDF0028(a1 + *(v14 + 32), v8, &qword_27DA37D80, &unk_22DEC7960);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22DDEF284(v8, &qword_27DA37D80, &unk_22DEC7960);
  }

  sub_22DDF1788(v8, v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  sub_22DDF25F4(&qword_28145D410, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  sub_22DEC4AD4();
  return sub_22DEA29F4(v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
}

uint64_t sub_22DEAC73C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v4 = a1[6];
  v5 = (a2 + a1[5]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a2 + v4);
  *v6 = 0;
  v6[1] = 0;
  v7 = a1[7];
  v8 = a1[8];
  v9 = (a2 + v7);
  *v9 = 0;
  v9[1] = 0;
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a2 + v8, 1, 1, v10);
}

uint64_t sub_22DEAC81C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF25F4(&qword_27DA38F90, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DEAC8BC(uint64_t a1)
{
  v2 = sub_22DDF25F4(&qword_27DA38F08, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DEAC928()
{
  sub_22DDF25F4(&qword_27DA38F08, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData);

  return sub_22DEC4A44();
}

uint64_t sub_22DEAC9C4()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_28145BF48);
  __swift_project_value_buffer(v0, qword_28145BF48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_22DECE290;
  v4 = v29 + v3;
  v5 = v29 + v3 + v1[14];
  *(v29 + v3) = 1;
  *v5 = "has_ac_plus";
  *(v5 + 8) = 11;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_22DEC4AE4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 3;
  *v9 = "apple_logo_url";
  *(v9 + 8) = 14;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 4;
  *v11 = "coverage_label";
  *(v11 + 1) = 14;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 5;
  *v13 = "coverage_expiration_label";
  *(v13 + 1) = 25;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 6;
  *v15 = "coverage_expiration_label_format2";
  *(v15 + 1) = 33;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 7;
  *v17 = "product_name";
  *(v17 + 1) = 12;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 8;
  *v19 = "serial_number_label";
  *(v19 + 1) = 19;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 9;
  *v21 = "agreement_number";
  *(v21 + 1) = 16;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 10;
  *v22 = "warranty_title";
  *(v22 + 8) = 14;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 11;
  *v24 = "warranty_overview";
  *(v24 + 1) = 17;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 12;
  *v26 = "links";
  *(v26 + 1) = 5;
  v26[16] = 2;
  v27 = *MEMORY[0x277D21870];
  v8();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData.decodeMessage<A>(decoder:)()
{
  result = sub_22DEC4954();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 6)
      {
        if (result > 3)
        {
          if (result == 4)
          {
            v4 = v0;
            v10 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0) + 36);
          }

          else
          {
            v4 = v0;
            if (result == 5)
            {
              v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0) + 40);
            }

            else
            {
              v6 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0) + 44);
            }
          }

          goto LABEL_5;
        }

        if (result == 1)
        {
          v8 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0) + 28);
          sub_22DEC4974();
        }

        else if (result == 3)
        {
          v4 = v0;
          v7 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0) + 32);
LABEL_5:
          v0 = v4;
          sub_22DEC49C4();
        }
      }

      else
      {
        if (result <= 9)
        {
          if (result == 7)
          {
            v4 = v0;
            v11 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0) + 48);
          }

          else
          {
            v4 = v0;
            if (result == 8)
            {
              v9 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0) + 52);
            }

            else
            {
              v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0) + 56);
            }
          }

          goto LABEL_5;
        }

        v4 = v0;
        switch(result)
        {
          case 10:
            v12 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0) + 60);
            goto LABEL_5;
          case 11:
            sub_22DEC49B4();
            break;
          case 12:
            type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink(0);
            sub_22DDF25F4(&qword_28145BCD8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink);
            sub_22DEC49D4();
            break;
        }
      }

      result = sub_22DEC4954();
    }
  }

  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DEAD240(v3);
  if (!v4)
  {
    sub_22DEAE69C(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData);
    sub_22DEAD2B8(v3);
    sub_22DEAD330(v3);
    sub_22DEAD3A8(v3);
    sub_22DEAD420(v3);
    sub_22DEAD498(v3);
    sub_22DEAD510(v3);
    sub_22DEAD588(v3);
    if (*(*v3 + 16))
    {
      sub_22DEC4AA4();
    }

    if (*(v3[1] + 16))
    {
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink(0);
      sub_22DDF25F4(&qword_28145BCD8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink);
      sub_22DEC4AC4();
    }

    v9 = v3 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0) + 24);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DEAD240(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0);
  if (*(a1 + *(result + 28)) != 2)
  {
    return sub_22DEC4A64();
  }

  return result;
}

uint64_t sub_22DEAD2B8(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0);
  v3 = (a1 + *(result + 36));
  if (v3[1])
  {
    v4 = *v3;
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DEAD330(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0);
  v3 = (a1 + *(result + 40));
  if (v3[1])
  {
    v4 = *v3;
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DEAD3A8(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0);
  v3 = (a1 + *(result + 44));
  if (v3[1])
  {
    v4 = *v3;
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DEAD420(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0);
  v3 = (a1 + *(result + 48));
  if (v3[1])
  {
    v4 = *v3;
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DEAD498(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0);
  v3 = (a1 + *(result + 52));
  if (v3[1])
  {
    v4 = *v3;
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DEAD510(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0);
  v3 = (a1 + *(result + 56));
  if (v3[1])
  {
    v4 = *v3;
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DEAD588(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0);
  v3 = (a1 + *(result + 60));
  if (v3[1])
  {
    v4 = *v3;
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DEAD648@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = v4;
  v5 = a2 + a1[6];
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v7 = a1[8];
  *(a2 + a1[7]) = 2;
  v8 = (a2 + v7);
  *v8 = 0;
  v8[1] = 0;
  v9 = a1[10];
  v10 = (a2 + a1[9]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a2 + v9);
  *v11 = 0;
  v11[1] = 0;
  v12 = a1[12];
  v13 = (a2 + a1[11]);
  *v13 = 0;
  v13[1] = 0;
  v14 = (a2 + v12);
  *v14 = 0;
  v14[1] = 0;
  v15 = a1[14];
  v16 = (a2 + a1[13]);
  *v16 = 0;
  v16[1] = 0;
  v17 = (a2 + v15);
  *v17 = 0;
  v17[1] = 0;
  v18 = (a2 + a1[15]);
  *v18 = 0;
  v18[1] = 0;
  return result;
}

uint64_t sub_22DEAD72C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF25F4(&qword_27DA38F88, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DEAD7CC(uint64_t a1)
{
  v2 = sub_22DDF25F4(&qword_28145BF38, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DEAD838()
{
  sub_22DDF25F4(&qword_28145BF38, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData);

  return sub_22DEC4A44();
}

uint64_t sub_22DEAD8D4()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_28145BCE8);
  __swift_project_value_buffer(v0, qword_28145BCE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC81D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "label";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sheet_data";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v11 = *MEMORY[0x277D21888];
  v9();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_22DEC4954();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v1 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink(0) + 20);
      sub_22DEC49C4();
    }

    else if (result == 2)
    {
      sub_22DEADB74();
    }
  }

  return result;
}

uint64_t sub_22DEADB74()
{
  v0 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink(0) + 24);
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData(0);
  sub_22DDF25F4(&qword_28145B310, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData);
  return sub_22DEC49E4();
}

uint64_t sub_22DEADC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = sub_22DEAC454(v6, a1, a2, a3, a4);
  if (!v7)
  {
    a6(v6, a1, a2, a3);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DEADCEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F38, &qword_22DEC8160);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink(0);
  sub_22DDF0028(a1 + *(v14 + 24), v8, &qword_27DA37F38, &qword_22DEC8160);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22DDEF284(v8, &qword_27DA37F38, &qword_22DEC8160);
  }

  sub_22DDF1788(v8, v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData);
  sub_22DDF25F4(&qword_28145B310, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData);
  sub_22DEC4AD4();
  return sub_22DEA29F4(v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData);
}

uint64_t sub_22DEADFB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF25F4(&qword_27DA38F80, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DEAE058(uint64_t a1)
{
  v2 = sub_22DDF25F4(&qword_28145BCD8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DEAE0C4()
{
  sub_22DDF25F4(&qword_28145BCD8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink);

  return sub_22DEC4A44();
}

uint64_t sub_22DEAE160()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_28145B320);
  __swift_project_value_buffer(v0, qword_28145B320);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC7570;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sub_title";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x277D21888];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "benefits";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "footer";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData.decodeMessage<A>(decoder:)()
{
  result = sub_22DEC4954();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWBenefit(0);
          sub_22DDF25F4(&qword_27DA38E78, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWBenefit);
          sub_22DEC49D4();
        }

        else if (result == 4)
        {
          v3 = v0;
          v6 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData(0) + 32);
          goto LABEL_5;
        }
      }

      else
      {
        if (result == 1)
        {
          v3 = v0;
          v4 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData(0) + 24);
LABEL_5:
          v0 = v3;
          sub_22DEC49C4();
          goto LABEL_6;
        }

        if (result == 2)
        {
          v3 = v0;
          v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData(0) + 28);
          goto LABEL_5;
        }
      }

LABEL_6:
      result = sub_22DEC4954();
    }
  }

  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_22DEA89CC(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData);
  if (!v4)
  {
    sub_22DEA8A50(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData);
    v10 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWBenefit(0);
      sub_22DDF25F4(&qword_27DA38E78, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWBenefit);
      sub_22DEC4AC4();
    }

    sub_22DEAE69C(v5, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData);
    v11 = v5 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData(0) + 20);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DEAE69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 32));
  if (v7[1])
  {
    v8 = *v7;
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DEAE76C@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v4 = a2 + a1[5];
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v6 = a1[7];
  v7 = (a2 + a1[6]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a2 + v6);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a2 + a1[8]);
  *v9 = 0;
  v9[1] = 0;
  return result;
}

uint64_t sub_22DEAE814(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF25F4(&qword_27DA38F78, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DEAE8B4(uint64_t a1)
{
  v2 = sub_22DDF25F4(&qword_28145B310, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DEAE920()
{
  sub_22DDF25F4(&qword_28145B310, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData);

  return sub_22DEC4A44();
}

uint64_t sub_22DEAE9BC()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA38DD0);
  __swift_project_value_buffer(v0, qword_27DA38DD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC77C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "content";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "image_url";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x277D21888];
  v9();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWBenefit.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_22DEC4954();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        v4 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWBenefit(0) + 28);
LABEL_10:
        v0 = 0;
        sub_22DEC49C4();
        break;
      case 2:
        sub_22DEC49B4();
        break;
      case 1:
        v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWBenefit(0) + 24);
        goto LABEL_10;
    }
  }
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWBenefit.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DEA89CC(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWBenefit);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      sub_22DEC4AA4();
    }

    sub_22DEA8A50(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWBenefit);
    v9 = v3 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWBenefit(0) + 20);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DEAEE38@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v4 = a2 + a1[5];
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v6 = a1[7];
  v7 = (a2 + a1[6]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a2 + v6);
  *v8 = 0;
  v8[1] = 0;
  return result;
}

uint64_t sub_22DEAEED4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF25F4(&qword_27DA38F70, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWBenefit);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DEAEF74(uint64_t a1)
{
  v2 = sub_22DDF25F4(&qword_27DA38E78, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWBenefit);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DEAEFE0()
{
  sub_22DDF25F4(&qword_27DA38E78, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWBenefit);

  return sub_22DEC4A44();
}

uint64_t sub_22DEAF0BC()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA38DE8);
  __swift_project_value_buffer(v0, qword_27DA38DE8);
  return sub_22DEC4B04();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppData.decodeMessage<A>(decoder:)()
{
  do
  {
    result = sub_22DEC4954();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t sub_22DEAF220(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF25F4(&qword_27DA38F68, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DEAF2C0(uint64_t a1)
{
  v2 = sub_22DDF25F4(&qword_27DA38F48, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DEAF32C()
{
  sub_22DDF25F4(&qword_27DA38F48, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppData);

  return sub_22DEC4A44();
}

uint64_t sub_22DEAF3A8()
{
  sub_22DEC48B4();
  sub_22DDF25F4(&qword_27DA37B30, MEMORY[0x277D216C8]);
  return sub_22DEC4BF4() & 1;
}

uint64_t sub_22DEAF44C()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_28145D350);
  __swift_project_value_buffer(v0, qword_28145D350);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC81D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "content";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "links";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWFooter.decodeMessage<A>(decoder:)()
{
  result = sub_22DEC4954();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter(0) + 24);
        sub_22DEC49C4();
      }

      else if (result == 2)
      {
        type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
        sub_22DDF25F4(&qword_28145D7E0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
        sub_22DEC49D4();
      }

      result = sub_22DEC4954();
    }
  }

  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWFooter.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_22DEA89CC(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter);
  if (!v4)
  {
    v7 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
      sub_22DDF25F4(&qword_28145D7E0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
      sub_22DEC4AC4();
    }

    v8 = v5 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter(0) + 20);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DEAF8A4(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_22DEC5184();
  a1(0);
  sub_22DDF25F4(a2, a3);
  sub_22DEC4BE4();
  return sub_22DEC51A4();
}

uint64_t sub_22DEAF92C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v4 = a2 + *(a1 + 20);
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v6 = (a2 + *(a1 + 24));
  *v6 = 0;
  v6[1] = 0;
  return result;
}

uint64_t sub_22DEAF9C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF25F4(&qword_27DA38F60, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DEAFA60(uint64_t a1)
{
  v2 = sub_22DDF25F4(&qword_28145D340, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DEAFACC()
{
  sub_22DDF25F4(&qword_28145D340, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter);

  return sub_22DEC4A44();
}

uint64_t sub_22DEAFB4C(uint64_t result, uint64_t a2)
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

    v20 = sub_22DE100E4(v15, v16);
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
      v25 = sub_22DEC50E4();

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

uint64_t sub_22DEAFCF0(uint64_t result, uint64_t a2)
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
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + v12);

    v17 = sub_22DE100E4(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || v16 != *(*(a2 + 56) + v17))
    {
      return 0;
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

uint64_t sub_22DEAFE24(uint64_t a1, uint64_t a2)
{
  __s1[2] = *MEMORY[0x277D85DE8];
  if (a1 == a2)
  {
LABEL_151:
    result = 1;
    goto LABEL_154;
  }

  v2 = a2;
  v3 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_153;
  }

  v4 = 0;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (v8)
        {
          v10 = __clz(__rbit64(v8));
          v11 = (v8 - 1) & v8;
          goto LABEL_13;
        }

        v12 = v4;
        do
        {
          v4 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            __break(1u);
            goto LABEL_156;
          }

          if (v4 >= v9)
          {
            goto LABEL_151;
          }

          v13 = *(v5 + 8 * v4);
          ++v12;
        }

        while (!v13);
        v10 = __clz(__rbit64(v13));
        v11 = (v13 - 1) & v13;
LABEL_13:
        v14 = 16 * (v10 | (v4 << 6));
        v15 = (*(v3 + 48) + v14);
        v16 = *v15;
        v17 = v15[1];
        v18 = (*(v3 + 56) + v14);
        v20 = *v18;
        v19 = v18[1];

        sub_22DDEEEE8(v20, v19);
        result = v17 == 0;
        if (!v17)
        {
          goto LABEL_154;
        }

        v91 = v11;
        v22 = sub_22DE100E4(v16, v17);
        v24 = v23;

        if ((v24 & 1) == 0)
        {
          goto LABEL_152;
        }

        v25 = (*(v2 + 56) + 16 * v22);
        v26 = *v25;
        v27 = v25[1];
        v28 = v27 >> 62;
        v29 = v19 >> 62;
        if (v27 >> 62 == 3)
        {
          if (v26)
          {
            v30 = 0;
          }

          else
          {
            v30 = v27 == 0xC000000000000000;
          }

          v31 = 0;
          v32 = v30 && v19 >> 62 == 3;
          if (v32 && !v20 && v19 == 0xC000000000000000)
          {
            v33 = 0;
            v34 = 0xC000000000000000;
            goto LABEL_55;
          }

LABEL_36:
          if (v29 <= 1)
          {
LABEL_37:
            if (!v29)
            {
              v38 = BYTE6(v19);
              goto LABEL_43;
            }

            LODWORD(v38) = HIDWORD(v20) - v20;
            if (!__OFSUB__(HIDWORD(v20), v20))
            {
              v38 = v38;
              goto LABEL_43;
            }

LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
LABEL_177:
            __break(1u);
LABEL_178:
            __break(1u);
          }
        }

        else if (v28 > 1)
        {
          if (v28 == 2)
          {
            v40 = *(v26 + 16);
            v39 = *(v26 + 24);
            v37 = __OFSUB__(v39, v40);
            v31 = v39 - v40;
            if (!v37)
            {
              goto LABEL_36;
            }

            goto LABEL_158;
          }

          v31 = 0;
          if (v29 <= 1)
          {
            goto LABEL_37;
          }
        }

        else if (v28)
        {
          LODWORD(v31) = HIDWORD(v26) - v26;
          if (__OFSUB__(HIDWORD(v26), v26))
          {
            goto LABEL_159;
          }

          v31 = v31;
          if (v29 <= 1)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v31 = BYTE6(v27);
          if (v29 <= 1)
          {
            goto LABEL_37;
          }
        }

        if (v29 != 2)
        {
          if (v31)
          {
            goto LABEL_152;
          }

          goto LABEL_54;
        }

        v36 = *(v20 + 16);
        v35 = *(v20 + 24);
        v37 = __OFSUB__(v35, v36);
        v38 = v35 - v36;
        if (v37)
        {
          goto LABEL_157;
        }

LABEL_43:
        if (v31 != v38)
        {
LABEL_152:
          sub_22DDEEF50(v20, v19);
LABEL_153:
          result = 0;
LABEL_154:
          v80 = *MEMORY[0x277D85DE8];
          return result;
        }

        if (v31 >= 1)
        {
          break;
        }

LABEL_54:
        v33 = v20;
        v34 = v19;
LABEL_55:
        sub_22DDEEF50(v33, v34);
        v8 = v91;
      }

      if (v28 > 1)
      {
        break;
      }

      if (!v28)
      {
        __s1[0] = v26;
        LOWORD(__s1[1]) = v27;
        BYTE2(__s1[1]) = BYTE2(v27);
        BYTE3(__s1[1]) = BYTE3(v27);
        BYTE4(__s1[1]) = BYTE4(v27);
        BYTE5(__s1[1]) = BYTE5(v27);
        if (v29)
        {
          v89 = v26;
          if (v29 == 1)
          {
            v81 = ((v20 >> 32) - v20);
            if (v20 >> 32 < v20)
            {
              goto LABEL_164;
            }

            sub_22DDEEEE8(v26, v27);
            v41 = sub_22DEC46A4();
            if (!v41)
            {
              goto LABEL_183;
            }

            v42 = v41;
            v43 = sub_22DEC46C4();
            if (__OFSUB__(v20, v43))
            {
              goto LABEL_168;
            }

            v44 = (v20 - v43 + v42);
            result = sub_22DEC46B4();
            v8 = v91;
            if (!v44)
            {
              goto LABEL_190;
            }

            goto LABEL_75;
          }

          v67 = *(v20 + 16);
          v85 = *(v20 + 24);
          sub_22DDEEEE8(v26, v27);
          v64 = sub_22DEC46A4();
          v88 = v2;
          if (v64)
          {
            v68 = sub_22DEC46C4();
            if (__OFSUB__(v67, v68))
            {
              goto LABEL_174;
            }

            v64 += v67 - v68;
          }

          v66 = &v85[-v67];
          if (__OFSUB__(v85, v67))
          {
            goto LABEL_166;
          }

          result = sub_22DEC46B4();
          v8 = v91;
          if (!v64)
          {
            goto LABEL_184;
          }

          goto LABEL_117;
        }

        goto LABEL_79;
      }

      v87 = v2;
      v49 = v26;
      if (v26 > v26 >> 32)
      {
        goto LABEL_160;
      }

      v89 = v26;
      sub_22DDEEEE8(v26, v27);
      v50 = sub_22DEC46A4();
      if (v50)
      {
        v51 = v50;
        v52 = sub_22DEC46C4();
        if (__OFSUB__(v49, v52))
        {
          goto LABEL_162;
        }

        v83 = (v49 - v52 + v51);
      }

      else
      {
        v83 = 0;
      }

      sub_22DEC46B4();
      v3 = a1;
      if (v29 == 2)
      {
        v76 = *(v20 + 16);
        v75 = *(v20 + 24);
        v44 = sub_22DEC46A4();
        if (v44)
        {
          v77 = sub_22DEC46C4();
          if (__OFSUB__(v76, v77))
          {
            goto LABEL_176;
          }

          v44 += v76 - v77;
        }

        v37 = __OFSUB__(v75, v76);
        v78 = v75 - v76;
        if (v37)
        {
          goto LABEL_172;
        }

        v79 = sub_22DEC46B4();
        if (v79 >= v78)
        {
          v60 = v78;
        }

        else
        {
          v60 = v79;
        }

        v8 = v91;
        result = v83;
        if (!v83)
        {
          goto LABEL_194;
        }

        v2 = v87;
        if (!v44)
        {
          goto LABEL_193;
        }
      }

      else
      {
        if (v29 != 1)
        {
          result = v83;
          v2 = v87;
          __s1[0] = v20;
          LOWORD(__s1[1]) = v19;
          BYTE2(__s1[1]) = BYTE2(v19);
          BYTE3(__s1[1]) = BYTE3(v19);
          BYTE4(__s1[1]) = BYTE4(v19);
          BYTE5(__s1[1]) = BYTE5(v19);
          v8 = v91;
          if (!v83)
          {
            goto LABEL_191;
          }

          goto LABEL_148;
        }

        if (v20 >> 32 < v20)
        {
          goto LABEL_171;
        }

        v44 = sub_22DEC46A4();
        if (v44)
        {
          v61 = sub_22DEC46C4();
          if (__OFSUB__(v20, v61))
          {
            goto LABEL_178;
          }

          v44 += v20 - v61;
        }

        v2 = v87;
        v62 = sub_22DEC46B4();
        if (v62 >= (v20 >> 32) - v20)
        {
          v60 = (v20 >> 32) - v20;
        }

        else
        {
          v60 = v62;
        }

        result = v83;
        if (!v83)
        {
          goto LABEL_182;
        }

        v8 = v91;
        if (!v44)
        {
          goto LABEL_181;
        }
      }

LABEL_142:
      if (result != v44)
      {
        v56 = v60;
        goto LABEL_145;
      }

      sub_22DDEEF50(v89, v27);
      sub_22DDEEF50(v20, v19);
      v3 = a1;
    }

    if (v28 == 2)
    {
      v86 = v2;
      v89 = v26;
      v45 = *(v26 + 16);
      sub_22DDEEEE8(v26, v27);
      v46 = sub_22DEC46A4();
      if (v46)
      {
        v47 = v46;
        v48 = sub_22DEC46C4();
        if (__OFSUB__(v45, v48))
        {
          goto LABEL_161;
        }

        v82 = (v45 - v48 + v47);
      }

      else
      {
        v82 = 0;
      }

      sub_22DEC46B4();
      v3 = a1;
      if (v29 == 2)
      {
        v71 = *(v20 + 16);
        v70 = *(v20 + 24);
        v44 = sub_22DEC46A4();
        if (v44)
        {
          v72 = sub_22DEC46C4();
          if (__OFSUB__(v71, v72))
          {
            goto LABEL_175;
          }

          v44 += v71 - v72;
        }

        v37 = __OFSUB__(v70, v71);
        v73 = v70 - v71;
        if (v37)
        {
          goto LABEL_170;
        }

        v74 = sub_22DEC46B4();
        if (v74 >= v73)
        {
          v60 = v73;
        }

        else
        {
          v60 = v74;
        }

        v8 = v91;
        result = v82;
        if (!v82)
        {
          goto LABEL_187;
        }

        v2 = v86;
        if (!v44)
        {
          goto LABEL_186;
        }
      }

      else
      {
        if (v29 != 1)
        {
          result = v82;
          v2 = v86;
          __s1[0] = v20;
          LOWORD(__s1[1]) = v19;
          BYTE2(__s1[1]) = BYTE2(v19);
          BYTE3(__s1[1]) = BYTE3(v19);
          BYTE4(__s1[1]) = BYTE4(v19);
          BYTE5(__s1[1]) = BYTE5(v19);
          v8 = v91;
          if (!v82)
          {
            goto LABEL_185;
          }

LABEL_148:
          v57 = memcmp(result, __s1, BYTE6(v19));
          sub_22DDEEF50(v89, v27);
          sub_22DDEEF50(v20, v19);
          goto LABEL_149;
        }

        if (v20 >> 32 < v20)
        {
          goto LABEL_167;
        }

        v44 = sub_22DEC46A4();
        if (v44)
        {
          v58 = sub_22DEC46C4();
          if (__OFSUB__(v20, v58))
          {
            goto LABEL_177;
          }

          v44 += v20 - v58;
        }

        v2 = v86;
        v59 = sub_22DEC46B4();
        if (v59 >= (v20 >> 32) - v20)
        {
          v60 = (v20 >> 32) - v20;
        }

        else
        {
          v60 = v59;
        }

        result = v82;
        if (!v82)
        {
          goto LABEL_189;
        }

        v8 = v91;
        if (!v44)
        {
          goto LABEL_188;
        }
      }

      goto LABEL_142;
    }

    memset(__s1, 0, 14);
    if (v29 == 2)
    {
      v63 = *(v20 + 16);
      v84 = *(v20 + 24);
      v89 = v26;
      sub_22DDEEEE8(v26, v27);
      v64 = sub_22DEC46A4();
      v88 = v2;
      if (v64)
      {
        v65 = sub_22DEC46C4();
        if (__OFSUB__(v63, v65))
        {
          goto LABEL_173;
        }

        v64 += v63 - v65;
      }

      v66 = &v84[-v63];
      if (__OFSUB__(v84, v63))
      {
        goto LABEL_165;
      }

      result = sub_22DEC46B4();
      v8 = v91;
      if (!v64)
      {
        goto LABEL_192;
      }

LABEL_117:
      if (result >= v66)
      {
        v69 = v66;
      }

      else
      {
        v69 = result;
      }

      v57 = memcmp(__s1, v64, v69);
      sub_22DDEEF50(v89, v27);
      sub_22DDEEF50(v20, v19);
      v2 = v88;
      goto LABEL_146;
    }

    if (v29 == 1)
    {
      break;
    }

LABEL_79:
    __s2 = v20;
    v93 = v19;
    v94 = BYTE2(v19);
    v95 = BYTE3(v19);
    v96 = BYTE4(v19);
    v97 = BYTE5(v19);
    v57 = memcmp(__s1, &__s2, BYTE6(v19));
    sub_22DDEEF50(v20, v19);
    v8 = v91;
LABEL_149:
    result = 0;
    if (v57)
    {
      goto LABEL_154;
    }
  }

  v81 = ((v20 >> 32) - v20);
  if (v20 >> 32 < v20)
  {
    goto LABEL_163;
  }

  v89 = v26;
  sub_22DDEEEE8(v26, v27);
  v53 = sub_22DEC46A4();
  if (v53)
  {
    v54 = v53;
    v55 = sub_22DEC46C4();
    if (__OFSUB__(v20, v55))
    {
      goto LABEL_169;
    }

    v44 = (v20 - v55 + v54);
    result = sub_22DEC46B4();
    v8 = v91;
    if (!v44)
    {
      goto LABEL_180;
    }

LABEL_75:
    if (result >= v81)
    {
      v56 = v81;
    }

    else
    {
      v56 = result;
    }

    result = __s1;
LABEL_145:
    v57 = memcmp(result, v44, v56);
    sub_22DDEEF50(v89, v27);
    sub_22DDEEF50(v20, v19);
LABEL_146:
    v3 = a1;
    goto LABEL_149;
  }

  sub_22DEC46B4();
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  result = sub_22DEC46B4();
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
  return result;
}

uint64_t _s6NDOAPI48Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetDataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData(0);
  v5 = v4[6];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = *v6 == *v8 && v7 == v9;
    if (!v10 && (sub_22DEC50E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v11 = v4[7];
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = v14[1];
  if (v13)
  {
    if (!v15)
    {
      return 0;
    }

    v16 = *v12 == *v14 && v13 == v15;
    if (!v16 && (sub_22DEC50E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (sub_22DE2FE04(*a1, *a2))
  {
    v17 = v4[8];
    v18 = (a1 + v17);
    v19 = *(a1 + v17 + 8);
    v20 = (a2 + v17);
    v21 = v20[1];
    if (v19)
    {
      if (v21)
      {
        v22 = *v18 == *v20 && v19 == v21;
        if (v22 || (sub_22DEC50E4() & 1) != 0)
        {
          goto LABEL_27;
        }
      }
    }

    else if (!v21)
    {
LABEL_27:
      v23 = v4[5];
      sub_22DEC48B4();
      sub_22DDF25F4(&qword_27DA37B30, MEMORY[0x277D216C8]);
      return sub_22DEC4BF4() & 1;
    }
  }

  return 0;
}

uint64_t _s6NDOAPI43Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLinkV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F38, &qword_22DEC8160);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (v34 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F40, &qword_22DEC8168);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v34 - v15;
  v17 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink(0);
  v18 = *(v17 + 20);
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_16;
    }

    if (*v19 != *v21 || v20 != v22)
    {
      v24 = v17;
      v25 = sub_22DEC50E4();
      v17 = v24;
      if ((v25 & 1) == 0)
      {
        goto LABEL_16;
      }
    }
  }

  else if (v22)
  {
    goto LABEL_16;
  }

  v26 = a1;
  v27 = a2;
  v28 = *(v17 + 24);
  v29 = *(v13 + 48);
  v34[1] = v26;
  sub_22DDF0028(v26 + v28, v16, &qword_27DA37F38, &qword_22DEC8160);
  sub_22DDF0028(v27 + v28, &v16[v29], &qword_27DA37F38, &qword_22DEC8160);
  v30 = *(v5 + 48);
  if (v30(v16, 1, v4) == 1)
  {
    if (v30(&v16[v29], 1, v4) == 1)
    {
      sub_22DDEF284(v16, &qword_27DA37F38, &qword_22DEC8160);
LABEL_19:
      sub_22DEC48B4();
      sub_22DDF25F4(&qword_27DA37B30, MEMORY[0x277D216C8]);
      v31 = sub_22DEC4BF4();
      return v31 & 1;
    }

    goto LABEL_15;
  }

  sub_22DDF0028(v16, v12, &qword_27DA37F38, &qword_22DEC8160);
  if (v30(&v16[v29], 1, v4) == 1)
  {
    sub_22DEA29F4(v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData);
LABEL_15:
    sub_22DDEF284(v16, &qword_27DA37F40, &qword_22DEC8168);
    goto LABEL_16;
  }

  sub_22DDF1788(&v16[v29], v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData);
  v33 = _s6NDOAPI48Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetDataV2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_22DEA29F4(v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData);
  sub_22DEA29F4(v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData);
  sub_22DDEF284(v16, &qword_27DA37F38, &qword_22DEC8160);
  if (v33)
  {
    goto LABEL_19;
  }

LABEL_16:
  v31 = 0;
  return v31 & 1;
}

uint64_t _s6NDOAPI42Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageDataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0);
  v5 = v4[7];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else if (v7 == 2 || ((v6 ^ v7) & 1) != 0)
  {
    return 0;
  }

  v8 = v4[8];
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  v12 = v11[1];
  if (v10)
  {
    if (!v12)
    {
      return 0;
    }

    if (*v9 != *v11 || v10 != v12)
    {
      v14 = v4;
      v15 = sub_22DEC50E4();
      v4 = v14;
      if ((v15 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v12)
  {
    return 0;
  }

  v16 = v4[9];
  v17 = (a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = v19[1];
  if (v18)
  {
    if (!v20)
    {
      return 0;
    }

    if (*v17 != *v19 || v18 != v20)
    {
      v22 = v4;
      v23 = sub_22DEC50E4();
      v4 = v22;
      if ((v23 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v20)
  {
    return 0;
  }

  v24 = v4[10];
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  v28 = v27[1];
  if (v26)
  {
    if (!v28)
    {
      return 0;
    }

    if (*v25 != *v27 || v26 != v28)
    {
      v30 = v4;
      v31 = sub_22DEC50E4();
      v4 = v30;
      if ((v31 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v28)
  {
    return 0;
  }

  v32 = v4[11];
  v33 = (a1 + v32);
  v34 = *(a1 + v32 + 8);
  v35 = (a2 + v32);
  v36 = v35[1];
  if (v34)
  {
    if (!v36)
    {
      return 0;
    }

    if (*v33 != *v35 || v34 != v36)
    {
      v37 = v4;
      v38 = sub_22DEC50E4();
      v4 = v37;
      if ((v38 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v36)
  {
    return 0;
  }

  v39 = v4[12];
  v40 = (a1 + v39);
  v41 = *(a1 + v39 + 8);
  v42 = (a2 + v39);
  v43 = v42[1];
  if (v41)
  {
    if (!v43)
    {
      return 0;
    }

    if (*v40 != *v42 || v41 != v43)
    {
      v44 = v4;
      v45 = sub_22DEC50E4();
      v4 = v44;
      if ((v45 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v43)
  {
    return 0;
  }

  v46 = v4[13];
  v47 = (a1 + v46);
  v48 = *(a1 + v46 + 8);
  v49 = (a2 + v46);
  v50 = v49[1];
  if (v48)
  {
    if (!v50)
    {
      return 0;
    }

    if (*v47 != *v49 || v48 != v50)
    {
      v51 = v4;
      v52 = sub_22DEC50E4();
      v4 = v51;
      if ((v52 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v50)
  {
    return 0;
  }

  v53 = v4[14];
  v54 = (a1 + v53);
  v55 = *(a1 + v53 + 8);
  v56 = (a2 + v53);
  v57 = v56[1];
  if (v55)
  {
    if (!v57)
    {
      return 0;
    }

    if (*v54 != *v56 || v55 != v57)
    {
      v58 = v4;
      v59 = sub_22DEC50E4();
      v4 = v58;
      if ((v59 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v57)
  {
    return 0;
  }

  v60 = v4[15];
  v61 = (a1 + v60);
  v62 = *(a1 + v60 + 8);
  v63 = (a2 + v60);
  v64 = v63[1];
  if (v62)
  {
    if (!v64)
    {
      return 0;
    }

    if (*v61 != *v63 || v62 != v64)
    {
      v65 = v4;
      v66 = sub_22DEC50E4();
      v4 = v65;
      if ((v66 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v64)
  {
    return 0;
  }

  v67 = v4;
  if (sub_22DE2F604(*a1, *a2) & 1) != 0 && (sub_22DE30144(a1[1], a2[1]))
  {
    v68 = v67[6];
    sub_22DEC48B4();
    sub_22DDF25F4(&qword_27DA37B30, MEMORY[0x277D216C8]);
    return sub_22DEC4BF4() & 1;
  }

  return 0;
}

uint64_t _s6NDOAPI56Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOfferV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v44 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v43 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38310, &unk_22DECA250);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v43 - v15;
  v45 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer(0);
  v46 = a1;
  v17 = *(v45 + 20);
  v18 = *(v13 + 56);
  sub_22DDF0028(a1 + v17, v16, &qword_27DA37D88, &unk_22DEC8210);
  v19 = a2 + v17;
  v20 = a2;
  sub_22DDF0028(v19, &v16[v18], &qword_27DA37D88, &unk_22DEC8210);
  v21 = *(v5 + 48);
  if (v21(v16, 1, v4) != 1)
  {
    sub_22DDF0028(v16, v11, &qword_27DA37D88, &unk_22DEC8210);
    if (v21(&v16[v18], 1, v4) != 1)
    {
      v24 = v44;
      sub_22DDF1788(&v16[v18], v44, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
      v25 = static Com_Apple_Sse_Ocean_Ndo_Api_CTLink.== infix(_:_:)(v11, v24);
      sub_22DEA29F4(v24, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
      sub_22DEA29F4(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
      sub_22DDEF284(v16, &qword_27DA37D88, &unk_22DEC8210);
      if ((v25 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_22DEA29F4(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
LABEL_6:
    sub_22DDEF284(v16, &qword_27DA38310, &unk_22DECA250);
    goto LABEL_7;
  }

  if (v21(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_22DDEF284(v16, &qword_27DA37D88, &unk_22DEC8210);
LABEL_10:
  v27 = v45;
  v26 = v46;
  v28 = *(v45 + 24);
  v29 = (v46 + v28);
  v30 = *(v46 + v28 + 8);
  v31 = (v20 + v28);
  v32 = v31[1];
  if (v30)
  {
    if (!v32 || (*v29 != *v31 || v30 != v32) && (sub_22DEC50E4() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v32)
  {
    goto LABEL_7;
  }

  v33 = *(v27 + 28);
  v34 = (v26 + v33);
  v35 = *(v26 + v33 + 8);
  v36 = (v20 + v33);
  v37 = v36[1];
  if (v35)
  {
    if (!v37 || (*v34 != *v36 || v35 != v37) && (sub_22DEC50E4() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v37)
  {
    goto LABEL_7;
  }

  v38 = *(v27 + 32);
  v39 = (v26 + v38);
  v40 = *(v26 + v38 + 8);
  v41 = (v20 + v38);
  v42 = *(v20 + v38 + 8);
  if (v40)
  {
    if (v42)
    {
LABEL_30:
      sub_22DEC48B4();
      sub_22DDF25F4(&qword_27DA37B30, MEMORY[0x277D216C8]);
      v22 = sub_22DEC4BF4();
      return v22 & 1;
    }
  }

  else
  {
    if (*v39 != *v41)
    {
      LOBYTE(v42) = 1;
    }

    if ((v42 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

LABEL_7:
  v22 = 0;
  return v22 & 1;
}

uint64_t _s6NDOAPI51Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38E10, &qword_22DECE2C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA39000, &qword_22DECFFD0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v34 - v15;
  v17 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection(0);
  v18 = *(v17 + 20);
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_16;
    }

    if (*v19 != *v21 || v20 != v22)
    {
      v24 = v17;
      v25 = sub_22DEC50E4();
      v17 = v24;
      if ((v25 & 1) == 0)
      {
        goto LABEL_16;
      }
    }
  }

  else if (v22)
  {
    goto LABEL_16;
  }

  v26 = a1;
  v27 = a2;
  v28 = *(v17 + 24);
  v29 = *(v13 + 48);
  v34[1] = v26;
  sub_22DDF0028(v26 + v28, v16, &qword_27DA38E10, &qword_22DECE2C0);
  sub_22DDF0028(v27 + v28, &v16[v29], &qword_27DA38E10, &qword_22DECE2C0);
  v30 = *(v5 + 48);
  if (v30(v16, 1, v4) == 1)
  {
    if (v30(&v16[v29], 1, v4) == 1)
    {
      sub_22DDEF284(v16, &qword_27DA38E10, &qword_22DECE2C0);
LABEL_19:
      sub_22DEC48B4();
      sub_22DDF25F4(&qword_27DA37B30, MEMORY[0x277D216C8]);
      v31 = sub_22DEC4BF4();
      return v31 & 1;
    }

    goto LABEL_15;
  }

  sub_22DDF0028(v16, v12, &qword_27DA38E10, &qword_22DECE2C0);
  if (v30(&v16[v29], 1, v4) == 1)
  {
    sub_22DEA29F4(v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer);
LABEL_15:
    sub_22DDEF284(v16, &qword_27DA39000, &qword_22DECFFD0);
    goto LABEL_16;
  }

  sub_22DDF1788(&v16[v29], v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer);
  v33 = _s6NDOAPI56Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOfferV2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_22DEA29F4(v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer);
  sub_22DEA29F4(v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer);
  sub_22DDEF284(v16, &qword_27DA38E10, &qword_22DECE2C0);
  if (v33)
  {
    goto LABEL_19;
  }

LABEL_16:
  v31 = 0;
  return v31 & 1;
}

uint64_t _s6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_DWResponseV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v3 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse(0);
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = *(v48 + 64);
  MEMORY[0x28223BE20](v3);
  v44 = (&v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37DC0, &qword_22DECE2A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = (&v43 - v8);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA39010, &unk_22DECFFE0);
  v9 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v50 = &v43 - v10;
  v11 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38088, &unk_22DEC8220);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v43 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38350, &unk_22DED04F0);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v43 - v23;
  v46 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWResponse(0);
  v25 = *(v46 + 20);
  v26 = *(v21 + 56);
  v51 = a1;
  sub_22DDF0028(a1 + v25, v24, &qword_27DA38088, &unk_22DEC8220);
  sub_22DDF0028(v52 + v25, &v24[v26], &qword_27DA38088, &unk_22DEC8220);
  v27 = *(v12 + 48);
  if (v27(v24, 1, v11) == 1)
  {
    if (v27(&v24[v26], 1, v11) == 1)
    {
      sub_22DDEF284(v24, &qword_27DA38088, &unk_22DEC8220);
      goto LABEL_8;
    }

LABEL_6:
    v28 = &qword_27DA38350;
    v29 = &unk_22DED04F0;
    v30 = v24;
LABEL_16:
    sub_22DDEF284(v30, v28, v29);
    goto LABEL_17;
  }

  sub_22DDF0028(v24, v19, &qword_27DA38088, &unk_22DEC8220);
  if (v27(&v24[v26], 1, v11) == 1)
  {
    sub_22DEA29F4(v19, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
    goto LABEL_6;
  }

  sub_22DDF1788(&v24[v26], v15, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  v31 = static Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta.== infix(_:_:)(v19, v15);
  sub_22DEA29F4(v15, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  sub_22DEA29F4(v19, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  sub_22DDEF284(v24, &qword_27DA38088, &unk_22DEC8220);
  if ((v31 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_8:
  v32 = *(v46 + 24);
  v33 = *(v47 + 48);
  v34 = v50;
  sub_22DDF0028(v51 + v32, v50, &qword_27DA37DC0, &qword_22DECE2A0);
  sub_22DDF0028(v52 + v32, v34 + v33, &qword_27DA37DC0, &qword_22DECE2A0);
  v35 = v49;
  v36 = *(v48 + 48);
  if (v36(v34, 1, v49) != 1)
  {
    v38 = v45;
    sub_22DDF0028(v34, v45, &qword_27DA37DC0, &qword_22DECE2A0);
    if (v36(v34 + v33, 1, v35) == 1)
    {
      sub_22DEA29F4(v38, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse);
      goto LABEL_14;
    }

    v40 = v34 + v33;
    v41 = v44;
    sub_22DDF1788(v40, v44, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse);
    if ((sub_22DE308A4(*v38, *v41) & 1) == 0)
    {
      sub_22DEA29F4(v41, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse);
      sub_22DEA29F4(v38, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse);
      v28 = &qword_27DA37DC0;
      v29 = &qword_22DECE2A0;
      goto LABEL_15;
    }

    v42 = *(v35 + 20);
    sub_22DEC48B4();
    sub_22DDF25F4(&qword_27DA37B30, MEMORY[0x277D216C8]);
    LOBYTE(v42) = sub_22DEC4BF4();
    sub_22DEA29F4(v41, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse);
    sub_22DEA29F4(v38, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse);
    sub_22DDEF284(v34, &qword_27DA37DC0, &qword_22DECE2A0);
    if (v42)
    {
      goto LABEL_11;
    }

LABEL_17:
    v37 = 0;
    return v37 & 1;
  }

  if (v36(v34 + v33, 1, v35) != 1)
  {
LABEL_14:
    v28 = &qword_27DA39010;
    v29 = &unk_22DECFFE0;
LABEL_15:
    v30 = v34;
    goto LABEL_16;
  }

  sub_22DDEF284(v34, &qword_27DA37DC0, &qword_22DECE2A0);
LABEL_11:
  sub_22DEC48B4();
  sub_22DDF25F4(&qword_27DA37B30, MEMORY[0x277D216C8]);
  v37 = sub_22DEC4BF4();
  return v37 & 1;
}

uint64_t sub_22DEB1F50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
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

  sub_22DEC48B4();
  sub_22DDF25F4(&qword_27DA37B30, MEMORY[0x277D216C8]);
  return sub_22DEC4BF4() & 1;
}

uint64_t sub_22DEB2044(void *a1, void *a2, uint64_t (*a3)(void), uint64_t (*a4)(void, void))
{
  v7 = a3(0);
  v8 = v7[6];
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  v12 = v11[1];
  if (v10)
  {
    if (!v12)
    {
      return 0;
    }

    v13 = *v9 == *v11 && v10 == v12;
    if (!v13 && (sub_22DEC50E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  if (a4(*a1, *a2))
  {
    v14 = v7[7];
    v15 = (a1 + v14);
    v16 = *(a1 + v14 + 8);
    v17 = (a2 + v14);
    v18 = v17[1];
    if (v16)
    {
      if (v18)
      {
        v19 = *v15 == *v17 && v16 == v18;
        if (v19 || (sub_22DEC50E4() & 1) != 0)
        {
          goto LABEL_18;
        }
      }
    }

    else if (!v18)
    {
LABEL_18:
      v20 = v7[5];
      sub_22DEC48B4();
      sub_22DDF25F4(&qword_27DA37B30, MEMORY[0x277D216C8]);
      return sub_22DEC4BF4() & 1;
    }
  }

  return 0;
}

uint64_t _s6NDOAPI36Com_Apple_Sse_Ocean_Ndo_Api_DWFooterV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter(0);
  v5 = *(v4 + 24);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = *v6 == *v8 && v7 == v9;
    if (!v10 && (sub_22DEC50E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (sub_22DE31ED0(*a1, *a2))
  {
    v11 = *(v4 + 20);
    sub_22DEC48B4();
    sub_22DDF25F4(&qword_27DA37B30, MEMORY[0x277D216C8]);
    return sub_22DEC4BF4() & 1;
  }

  return 0;
}

uint64_t _s6NDOAPI34Com_Apple_Sse_Ocean_Ndo_Api_DWItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F18, &unk_22DEC8140);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F20, &qword_22DECFFA0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - v15;
  v17 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem(0);
  v18 = *(v17 + 24);
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);
  if (v19 == 5)
  {
    if (v20 != 5)
    {
      goto LABEL_11;
    }
  }

  else if (v19 != v20)
  {
    goto LABEL_11;
  }

  v28 = v17;
  v21 = *(v13 + 48);
  sub_22DDF0028(a1, v16, &qword_27DA37F18, &unk_22DEC8140);
  sub_22DDF0028(a2, &v16[v21], &qword_27DA37F18, &unk_22DEC8140);
  v22 = *(v5 + 48);
  if (v22(v16, 1, v4) == 1)
  {
    if (v22(&v16[v21], 1, v4) == 1)
    {
      sub_22DDEF284(v16, &qword_27DA37F18, &unk_22DEC8140);
LABEL_14:
      v26 = *(v28 + 20);
      sub_22DEC48B4();
      sub_22DDF25F4(&qword_27DA37B30, MEMORY[0x277D216C8]);
      v23 = sub_22DEC4BF4();
      return v23 & 1;
    }

    goto LABEL_10;
  }

  sub_22DDF0028(v16, v12, &qword_27DA37F18, &unk_22DEC8140);
  if (v22(&v16[v21], 1, v4) == 1)
  {
    sub_22DEA29F4(v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
LABEL_10:
    sub_22DDEF284(v16, &qword_27DA37F20, &qword_22DECFFA0);
    goto LABEL_11;
  }

  sub_22DDF1788(&v16[v21], v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
  v25 = _s6NDOAPI34Com_Apple_Sse_Ocean_Ndo_Api_DWItemV10OneOf_DataO2eeoiySbAE_AEtFZ_0(v12, v8);
  sub_22DEA29F4(v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
  sub_22DEA29F4(v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
  sub_22DDEF284(v16, &qword_27DA37F18, &unk_22DEC8140);
  if (v25)
  {
    goto LABEL_14;
  }

LABEL_11:
  v23 = 0;
  return v23 & 1;
}

uint64_t _s6NDOAPI39Com_Apple_Sse_Ocean_Ndo_Api_DWPromoDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v49 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F30, &unk_22DECCF30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v49 - v15;
  v17 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData(0);
  v18 = v17[5];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_32;
    }

    if (*v19 != *v21 || v20 != v22)
    {
      v24 = v17;
      v25 = sub_22DEC50E4();
      v17 = v24;
      if ((v25 & 1) == 0)
      {
        goto LABEL_32;
      }
    }
  }

  else if (v22)
  {
    goto LABEL_32;
  }

  v26 = v17[6];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  v30 = v29[1];
  if (v28)
  {
    if (!v30)
    {
      goto LABEL_32;
    }

    if (*v27 != *v29 || v28 != v30)
    {
      v32 = v17;
      v33 = sub_22DEC50E4();
      v17 = v32;
      if ((v33 & 1) == 0)
      {
        goto LABEL_32;
      }
    }
  }

  else if (v30)
  {
    goto LABEL_32;
  }

  v34 = v17[7];
  v35 = (a1 + v34);
  v36 = *(a1 + v34 + 8);
  v37 = (a2 + v34);
  v38 = v37[1];
  if (v36)
  {
    if (!v38)
    {
      goto LABEL_32;
    }

    if (*v35 != *v37 || v36 != v38)
    {
      v39 = v17;
      v40 = sub_22DEC50E4();
      v17 = v39;
      if ((v40 & 1) == 0)
      {
        goto LABEL_32;
      }
    }
  }

  else if (v38)
  {
    goto LABEL_32;
  }

  v41 = v17[8];
  v42 = *(v13 + 48);
  sub_22DDF0028(a1 + v41, v16, &qword_27DA37D80, &unk_22DEC7960);
  v43 = a2 + v41;
  v44 = v42;
  sub_22DDF0028(v43, &v16[v42], &qword_27DA37D80, &unk_22DEC7960);
  v45 = *(v5 + 48);
  if (v45(v16, 1, v4) == 1)
  {
    if (v45(&v16[v44], 1, v4) == 1)
    {
      sub_22DDEF284(v16, &qword_27DA37D80, &unk_22DEC7960);
LABEL_35:
      sub_22DEC48B4();
      sub_22DDF25F4(&qword_27DA37B30, MEMORY[0x277D216C8]);
      v46 = sub_22DEC4BF4();
      return v46 & 1;
    }

    goto LABEL_31;
  }

  sub_22DDF0028(v16, v12, &qword_27DA37D80, &unk_22DEC7960);
  if (v45(&v16[v44], 1, v4) == 1)
  {
    sub_22DEA29F4(v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
LABEL_31:
    sub_22DDEF284(v16, &qword_27DA37F30, &unk_22DECCF30);
    goto LABEL_32;
  }

  sub_22DDF1788(&v16[v44], v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  v48 = static Com_Apple_Sse_Ocean_Ndo_Api_CTAction.== infix(_:_:)(v12, v8);
  sub_22DEA29F4(v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  sub_22DEA29F4(v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  sub_22DDEF284(v16, &qword_27DA37D80, &unk_22DEC7960);
  if (v48)
  {
    goto LABEL_35;
  }

LABEL_32:
  v46 = 0;
  return v46 & 1;
}

uint64_t _s6NDOAPI34Com_Apple_Sse_Ocean_Ndo_Api_DWItemV10OneOf_DataO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v58 = a1;
  v59 = a2;
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v55 = (&v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppData(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v56 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v54 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = (&v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data(0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = (&v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = MEMORY[0x28223BE20](v21);
  v57 = &v54 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v54 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = (&v54 - v30);
  MEMORY[0x28223BE20](v29);
  v33 = &v54 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA39020, &qword_22DED0000);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34 - 8);
  v38 = &v54 - v37;
  v39 = *(v36 + 56);
  sub_22DEA298C(v58, &v54 - v37, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
  sub_22DEA298C(v59, &v38[v39], type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_22DEA298C(v38, v33, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
      if (!swift_getEnumCaseMultiPayload())
      {
        sub_22DDF1788(&v38[v39], v18, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData);
        v42 = _s6NDOAPI39Com_Apple_Sse_Ocean_Ndo_Api_DWPromoDataV2eeoiySbAC_ACtFZ_0(v33, v18);
        v43 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData;
        v44 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData;
        v45 = v18;
        goto LABEL_22;
      }

      v46 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData;
      goto LABEL_17;
    }

    sub_22DEA298C(v38, v31, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v51 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData;
      v52 = v31;
      goto LABEL_20;
    }

    sub_22DDF1788(&v38[v39], v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData);
    v42 = _s6NDOAPI42Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageDataV2eeoiySbAC_ACtFZ_0(v31, v14);
    v44 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData;
    sub_22DEA29F4(v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData);
    v48 = v31;
LABEL_23:
    v49 = v44;
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v33 = v57;
      sub_22DEA298C(v38, v57, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v41 = v56;
        sub_22DDF1788(&v38[v39], v56, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppData);
        sub_22DEC48B4();
        sub_22DDF25F4(&qword_27DA37B30, MEMORY[0x277D216C8]);
        v42 = sub_22DEC4BF4();
        v43 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppData;
        v44 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppData;
        v45 = v41;
LABEL_22:
        sub_22DEA29F4(v45, v43);
        v48 = v33;
        goto LABEL_23;
      }

      v46 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppData;
LABEL_17:
      v51 = v46;
      v52 = v33;
      goto LABEL_20;
    }

    sub_22DEA298C(v38, v23, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      v51 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter;
      v52 = v23;
      goto LABEL_20;
    }

    v50 = v55;
    sub_22DDF1788(&v38[v39], v55, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter);
    v42 = _s6NDOAPI36Com_Apple_Sse_Ocean_Ndo_Api_DWFooterV2eeoiySbAC_ACtFZ_0(v23, v50);
    v44 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter;
    sub_22DEA29F4(v50, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter);
    v48 = v23;
    goto LABEL_23;
  }

  sub_22DEA298C(v38, v28, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v47 = v54;
    sub_22DDF1788(&v38[v39], v54, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    v42 = static Com_Apple_Sse_Ocean_Ndo_Api_CTLink.== infix(_:_:)(v28, v47);
    sub_22DEA29F4(v47, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    v48 = v28;
    v49 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink;
LABEL_24:
    sub_22DEA29F4(v48, v49);
    sub_22DEA29F4(v38, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
    return v42 & 1;
  }

  v51 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink;
  v52 = v28;
LABEL_20:
  sub_22DEA29F4(v52, v51);
  sub_22DDEF284(v38, &qword_27DA39020, &qword_22DED0000);
  v42 = 0;
  return v42 & 1;
}

unint64_t sub_22DEB3290()
{
  result = qword_28145CAA0;
  if (!qword_28145CAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28145CAA0);
  }

  return result;
}

unint64_t sub_22DEB32E8()
{
  result = qword_28145CAA8;
  if (!qword_28145CAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28145CAA8);
  }

  return result;
}

unint64_t sub_22DEB3340()
{
  result = qword_28145CA98;
  if (!qword_28145CA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28145CA98);
  }

  return result;
}

unint64_t sub_22DEB3398()
{
  result = qword_27DA38EA0;
  if (!qword_27DA38EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA38EA8, &qword_22DECE378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38EA0);
  }

  return result;
}

void sub_22DEB4674()
{
  sub_22DE94424(319, &qword_28145AD38, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_22DE624D8();
    if (v1 <= 0x3F)
    {
      sub_22DEC48B4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22DEB475C()
{
  sub_22DEC48B4();
  if (v0 <= 0x3F)
  {
    sub_22DEB4858(319, qword_28145C448, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22DEB4858(319, qword_28145B078, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22DEB4858(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22DEB48E4()
{
  sub_22DEB4858(319, &qword_28145AD58, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_22DEC48B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_22DEB49D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_22DEC48B4();
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

void sub_22DEB4A84()
{
  sub_22DEC48B4();
  if (v0 <= 0x3F)
  {
    sub_22DEB4858(319, qword_28145D790, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22DE94424(319, &qword_28145AD88, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_22DE94424(319, &qword_28145AD00, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22DEB4C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  a7(319, a4, a5, a6);
  if (v7 <= 0x3F)
  {
    sub_22DEC48B4();
    if (v8 <= 0x3F)
    {
      sub_22DE94424(319, &qword_28145AD88, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v9 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22DEB4D18()
{
  sub_22DEB4858(319, qword_28145D6F8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_22DEC48B4();
    if (v1 <= 0x3F)
    {
      sub_22DE94424(319, &qword_28145CA90, &type metadata for Com_Apple_Sse_Ocean_Ndo_Api_DWItemType, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22DEB4E08()
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppData(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

void sub_22DEB4EE0()
{
  sub_22DEC48B4();
  if (v0 <= 0x3F)
  {
    sub_22DE94424(319, &qword_28145AD88, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22DEB4858(319, qword_28145D3C0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_120Tm(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22DEC48B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_121Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_22DEC48B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_22DEB5150()
{
  sub_22DE94424(319, &qword_28145AD38, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_22DEB4858(319, &qword_28145AD50, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_22DEC48B4();
      if (v2 <= 0x3F)
      {
        sub_22DE94424(319, &qword_28145AD28, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_22DE94424(319, &qword_28145AD88, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_22DEB5310(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_22DEC48B4();
  if (v7 <= 0x3F)
  {
    sub_22DE94424(319, &qword_28145AD88, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v8 <= 0x3F)
    {
      sub_22DEB4858(319, a4, a5, MEMORY[0x277D83D88]);
      if (v9 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22DEB5424()
{
  sub_22DEB4858(319, &qword_28145AD68, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWBenefit, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_22DEC48B4();
    if (v1 <= 0x3F)
    {
      sub_22DE94424(319, &qword_28145AD88, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22DEB55A8()
{
  result = sub_22DEC48B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22DEB563C()
{
  sub_22DEB4858(319, &qword_28145AD78, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_22DEC48B4();
    if (v1 <= 0x3F)
    {
      sub_22DE94424(319, &qword_28145AD88, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22DEB5734()
{
  sub_22DEB4858(319, qword_28145C6F8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_22DEB4858(319, qword_28145B628, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_22DEB4858(319, qword_28145B1E8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest, MEMORY[0x277D83D88]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_22DEB58D0()
{
  sub_22DEB4858(319, qword_28145AFA8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_22DEB59C0()
{
  result = qword_28145CAB0;
  if (!qword_28145CAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28145CAB0);
  }

  return result;
}

NDOAPI::Com_Apple_Sse_Ocean_Ndo_Api_ErrorType_optional __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_ErrorType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x40302010005uLL >> (8 * rawValue);
  if (rawValue >= 6)
  {
    LOBYTE(v2) = 5;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_22DEB5AD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DEB8EF0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse.errorToken.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse(0) + 20));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_22DEB5BAC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse(0) + 20));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_22DEB5C10(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse(0) + 20));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse.errorToken.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse(0) + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse.errorToken.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE2D1BC;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse.clearErrorToken()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse(0) + 20));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse.eventToken.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse(0) + 24));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_22DEB5E18@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse(0) + 24));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_22DEB5E7C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse(0) + 24));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse.eventToken.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse(0) + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse.eventToken.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse.clearEventToken()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse(0) + 24));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse.errorType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse(0);
  v4 = *(v1 + *(result + 28));
  if (v4 == 5)
  {
    LOBYTE(v4) = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse.errorType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse.errorType.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse(0) + 28);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 5)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_22DE2CCE4;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22DEC48B4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse.unknownFields.setter(uint64_t a1)
{
  v3 = sub_22DEC48B4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

int *Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse.init()@<X0>(uint64_t a1@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse(0);
  v3 = (a1 + result[5]);
  *v3 = 0;
  v3[1] = 0;
  v4 = (a1 + result[6]);
  *v4 = 0;
  v4[1] = 0;
  *(a1 + result[7]) = 5;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBody.meta.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38088, &unk_22DEC8220);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBody(0);
  sub_22DEB640C(v1 + *(v7 + 24), v6);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22DEB647C(v6, a1);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v10 = (a1 + v8[5]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a1 + v8[6]);
  *v11 = 0;
  v11[1] = 0;
  v12 = a1 + v8[7];
  *v12 = 0;
  *(v12 + 8) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22DDEF284(v6, &qword_27DA38088, &unk_22DEC8220);
  }

  return result;
}

uint64_t sub_22DEB640C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38088, &unk_22DEC8220);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DEB647C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DEB64E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38088, &unk_22DEC8220);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBody(0);
  sub_22DEB640C(a1 + *(v8 + 24), v7);
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_22DEB647C(v7, a2);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v11 = (a2 + v9[5]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a2 + v9[6]);
  *v12 = 0;
  v12[1] = 0;
  v13 = a2 + v9[7];
  *v13 = 0;
  *(v13 + 8) = 1;
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_22DDEF284(v7, &qword_27DA38088, &unk_22DEC8220);
  }

  return result;
}

uint64_t sub_22DEB6640(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DEB6B1C(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBody(0) + 24);
  sub_22DDEF284(a2 + v9, &qword_27DA38088, &unk_22DEC8220);
  sub_22DEB647C(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBody.meta.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBody(0) + 24);
  sub_22DDEF284(v1 + v3, &qword_27DA38088, &unk_22DEC8220);
  sub_22DEB647C(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBody.meta.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38088, &unk_22DEC8220) - 8) + 64);
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
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
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
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBody(0) + 24);
  *(v5 + 12) = v15;
  sub_22DEB640C(v1 + v15, v8);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v17 = (v14 + v9[5]);
    *v17 = 0;
    v17[1] = 0;
    v18 = (v14 + v9[6]);
    *v18 = 0;
    v18[1] = 0;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 8) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA38088, &unk_22DEC8220);
    }
  }

  else
  {
    sub_22DEB647C(v8, v14);
  }

  return sub_22DEB6A04;
}

void sub_22DEB6A04(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_22DEB6B1C((*a1)[5], v4);
    sub_22DDEF284(v9 + v3, &qword_27DA38088, &unk_22DEC8220);
    sub_22DEB647C(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_22DEB6B80(v5);
  }

  else
  {
    sub_22DDEF284(v9 + v3, &qword_27DA38088, &unk_22DEC8220);
    sub_22DEB647C(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}