uint64_t sub_22DE82FA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A40, &unk_22DEC7330);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DE875F8(a1, v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
  v13 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = sub_22DE84CE8(v16);
    *(a2 + v13) = v16;
  }

  sub_22DE85040(v12, v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__common;
  swift_beginAccess();
  sub_22DDF0208(v7, v16 + v20, &qword_27DA37A40, &unk_22DEC7330);
  return swift_endAccess();
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest.common.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A40, &unk_22DEC7330) - 8) + 64);
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
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
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
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__common;
  swift_beginAccess();
  sub_22DDF0028(v16 + v17, v8, &qword_27DA37A40, &unk_22DEC7330);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    v19 = MEMORY[0x277D84F90];
    *v14 = MEMORY[0x277D84F90];
    *(v14 + 1) = v19;
    *(v14 + 2) = v19;
    *(v14 + 3) = v19;
    *(v14 + 4) = v19;
    v20 = &v14[v9[9]];
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v21 = v9[10];
    v22 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_UserData(0);
    (*(*(v22 - 8) + 56))(&v14[v21], 1, 1, v22);
    v23 = &v14[v9[11]];
    *v23 = 0;
    v23[8] = 1;
    v24 = &v14[v9[12]];
    *v24 = 0;
    *(v24 + 1) = 0;
    v25 = &v14[v9[13]];
    *v25 = 0;
    *(v25 + 1) = 0;
    if (v18(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA37A40, &unk_22DEC7330);
    }
  }

  else
  {
    sub_22DE85040(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
  }

  return sub_22DE83468;
}

void sub_22DE83468(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_22DE875F8(*(v2 + 120), *(v2 + 112), type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = sub_22DE84CE8(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_22DE85040(v14, v18, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__common;
    swift_beginAccess();
    sub_22DDF0208(v18, v7 + v19, &qword_27DA37A40, &unk_22DEC7330);
    swift_endAccess();
    sub_22DE87660(v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
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
      v26 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = sub_22DE84CE8(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_22DE85040(v13, v18, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__common;
    swift_beginAccess();
    sub_22DDF0208(v18, v23 + v31, &qword_27DA37A40, &unk_22DEC7330);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

BOOL sub_22DE836E8(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  v13 = *(v4 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest(0) + 20));
  v14 = *a3;
  swift_beginAccess();
  sub_22DDF0028(v13 + v14, v12, a1, a2);
  v15 = a4(0);
  v16 = (*(*(v15 - 8) + 48))(v12, 1, v15) != 1;
  sub_22DDEF284(v12, a1, a2);
  return v16;
}

uint64_t sub_22DE83830(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v24 - v12;
  v14 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest(0) + 20);
  v15 = *(v4 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v4 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest._StorageClass(0);
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    v17 = sub_22DE84CE8(v17);
    *(v9 + v14) = v17;
  }

  v21 = a3(0);
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  v22 = *a4;
  swift_beginAccess();
  sub_22DDF0208(v13, v17 + v22, a1, a2);
  return swift_endAccess();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest.data.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A30, &qword_22DECCFC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16 - v5;
  v7 = *(v1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest(0) + 20));
  v8 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__data;
  swift_beginAccess();
  sub_22DDF0028(v7 + v8, v6, &qword_27DA37A30, &qword_22DECCFC0);
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_22DE85040(v6, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData);
  }

  v11 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = sub_22DE0501C(v11);
  v12 = a1 + v9[6];
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v13 = (a1 + v9[7]);
  *v13 = 0;
  v13[1] = 0;
  v14 = (a1 + v9[8]);
  *v14 = 0;
  v14[1] = 0;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_22DDEF284(v6, &qword_27DA37A30, &qword_22DECCFC0);
  }

  return result;
}

uint64_t sub_22DE83B24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A30, &qword_22DECCFC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DE875F8(a1, v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData);
  v13 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = sub_22DE84CE8(v16);
    *(a2 + v13) = v16;
  }

  sub_22DE85040(v12, v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__data;
  swift_beginAccess();
  sub_22DDF0208(v7, v16 + v20, &qword_27DA37A30, &qword_22DECCFC0);
  return swift_endAccess();
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest.data.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A30, &qword_22DECCFC0) - 8) + 64);
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
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
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
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__data;
  swift_beginAccess();
  sub_22DDF0028(v16 + v17, v8, &qword_27DA37A30, &qword_22DECCFC0);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    v19 = MEMORY[0x277D84F90];
    *v14 = MEMORY[0x277D84F90];
    v14[1] = sub_22DE0501C(v19);
    v20 = v14 + v9[6];
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v21 = (v14 + v9[7]);
    *v21 = 0;
    v21[1] = 0;
    v22 = (v14 + v9[8]);
    *v22 = 0;
    v22[1] = 0;
    if (v18(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA37A30, &qword_22DECCFC0);
    }
  }

  else
  {
    sub_22DE85040(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData);
  }

  return sub_22DE83F90;
}

void sub_22DE83F90(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_22DE875F8(*(v2 + 120), *(v2 + 112), type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = sub_22DE84CE8(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_22DE85040(v14, v18, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__data;
    swift_beginAccess();
    sub_22DDF0208(v18, v7 + v19, &qword_27DA37A30, &qword_22DECCFC0);
    swift_endAccess();
    sub_22DE87660(v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData);
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
      v26 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = sub_22DE84CE8(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_22DE85040(v13, v18, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__data;
    swift_beginAccess();
    sub_22DDF0208(v18, v23 + v31, &qword_27DA37A30, &qword_22DECCFC0);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22DEC48B4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest.unknownFields.setter(uint64_t a1)
{
  v3 = sub_22DEC48B4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData.interestedSerials.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData.ulLinkCode.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0) + 28));
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

uint64_t sub_22DE843D8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0) + 28));
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

uint64_t sub_22DE8443C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0) + 28));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData.ulLinkCode.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0) + 28);
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

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData.clearUlLinkCode()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0) + 28));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData.ulLinkParams.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0) + 32));
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

uint64_t sub_22DE845FC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0) + 32));
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

uint64_t sub_22DE84660(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0) + 32));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData.ulLinkParams.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0) + 32);
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

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData.clearUlLinkParams()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0) + 32));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData.additionalPayload.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0) + 24);
  v4 = sub_22DEC48B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0) + 24);
  v4 = sub_22DEC48B4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_22DE8497C()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA38BD0);
  __swift_project_value_buffer(v0, qword_27DA38BD0);
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

uint64_t sub_22DE84BB4()
{
  v0 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__meta;
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__common;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__data;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0);
  result = (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  qword_27DA38BE8 = v3;
  return result;
}

uint64_t sub_22DE84CE8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A30, &qword_22DECCFC0);
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
  v15 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__meta;
  v16 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  (*(*(v16 - 8) + 56))(v1 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__common;
  v18 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  (*(*(v18 - 8) + 56))(v1 + v17, 1, 1, v18);
  v19 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__data;
  v20 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0);
  (*(*(v20 - 8) + 56))(v1 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__meta;
  swift_beginAccess();
  sub_22DDF0028(a1 + v21, v14, &qword_27DA37A38, &unk_22DEC6570);
  swift_beginAccess();
  sub_22DDF0208(v14, v1 + v15, &qword_27DA37A38, &unk_22DEC6570);
  swift_endAccess();
  v22 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__common;
  swift_beginAccess();
  sub_22DDF0028(a1 + v22, v10, &qword_27DA37A40, &unk_22DEC7330);
  swift_beginAccess();
  sub_22DDF0208(v10, v1 + v17, &qword_27DA37A40, &unk_22DEC7330);
  swift_endAccess();
  v23 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__data;
  swift_beginAccess();
  sub_22DDF0028(a1 + v23, v6, &qword_27DA37A30, &qword_22DECCFC0);

  swift_beginAccess();
  sub_22DDF0208(v6, v1 + v19, &qword_27DA37A30, &qword_22DECCFC0);
  swift_endAccess();
  return v1;
}

uint64_t sub_22DE85040(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22DE850A8()
{
  sub_22DDEF284(v0 + OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__meta, &qword_27DA37A38, &unk_22DEC6570);
  sub_22DDEF284(v0 + OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__common, &qword_27DA37A40, &unk_22DEC7330);
  sub_22DDEF284(v0 + OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__data, &qword_27DA37A30, &qword_22DECCFC0);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest.decodeMessage<A>(decoder:)()
{
  v1 = v0;
  v2 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = *(v0 + v2);
    v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    *(v1 + v2) = sub_22DE84CE8(v6);
  }

  return sub_22DE85204();
}

uint64_t sub_22DE85204()
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
        sub_22DE85474();
        break;
      case 2:
        sub_22DE85398();
        break;
      case 1:
        sub_22DE852BC();
        break;
    }
  }

  return result;
}

uint64_t sub_22DE852BC()
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  sub_22DE876C0(&qword_28145C748, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  sub_22DEC49E4();
  return swift_endAccess();
}

uint64_t sub_22DE85398()
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  sub_22DE876C0(&qword_28145B690, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
  sub_22DEC49E4();
  return swift_endAccess();
}

uint64_t sub_22DE85474()
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0);
  sub_22DE876C0(&qword_27DA38C48, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData);
  sub_22DEC49E4();
  return swift_endAccess();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest(0);
  result = sub_22DE855BC(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE855BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_22DE85624(a1, a2, a3, a4);
  if (!v4)
  {
    sub_22DE8584C(a1, a2, a3, a4);
    return sub_22DE85A74(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_22DE85624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__meta;
  swift_beginAccess();
  sub_22DDF0028(a1 + v14, v8, &qword_27DA37A38, &unk_22DEC6570);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22DDEF284(v8, &qword_27DA37A38, &unk_22DEC6570);
  }

  sub_22DE85040(v8, v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  sub_22DE876C0(&qword_28145C748, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  sub_22DEC4AD4();
  return sub_22DE87660(v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
}

uint64_t sub_22DE8584C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__common;
  swift_beginAccess();
  sub_22DDF0028(a1 + v14, v8, &qword_27DA37A40, &unk_22DEC7330);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22DDEF284(v8, &qword_27DA37A40, &unk_22DEC7330);
  }

  sub_22DE85040(v8, v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
  sub_22DE876C0(&qword_28145B690, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
  sub_22DEC4AD4();
  return sub_22DE87660(v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
}

uint64_t sub_22DE85A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A30, &qword_22DECCFC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__data;
  swift_beginAccess();
  sub_22DDF0028(a1 + v14, v8, &qword_27DA37A30, &qword_22DECCFC0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22DDEF284(v8, &qword_27DA37A30, &qword_22DECCFC0);
  }

  sub_22DE85040(v8, v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData);
  sub_22DE876C0(&qword_27DA38C48, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData);
  sub_22DEC4AD4();
  return sub_22DE87660(v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData);
}

BOOL sub_22DE85CA0(uint64_t a1, uint64_t a2)
{
  v88 = a2;
  v76 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0);
  v75 = *(v76 - 8);
  v3 = *(v75 + 64);
  MEMORY[0x28223BE20](v76);
  v72 = (&v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38CA0, &unk_22DECD330);
  v5 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  v77 = &v72 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A30, &qword_22DECCFC0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v85 = (&v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v84 = &v72 - v11;
  v82 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  v81 = *(v82 - 8);
  v12 = *(v81 + 64);
  MEMORY[0x28223BE20](v82);
  v73 = (&v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38360, &unk_22DECCF70);
  v14 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v83 = &v72 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A40, &unk_22DEC7330);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v78 = (&v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v87 = &v72 - v20;
  v21 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v79 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38368, &qword_22DECA2B0);
  v26 = v25 - 8;
  v27 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v72 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30 - 8);
  v86 = &v72 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v35 = &v72 - v34;
  v36 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__meta;
  swift_beginAccess();
  sub_22DDF0028(a1 + v36, v35, &qword_27DA37A38, &unk_22DEC6570);
  v37 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__meta;
  v38 = v88;
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
  v42 = v86;
  sub_22DDF0028(v29, v86, &qword_27DA37A38, &unk_22DEC6570);
  if (v40(&v29[v39], 1, v21) == 1)
  {

    sub_22DDEF284(v35, &qword_27DA37A38, &unk_22DEC6570);
    sub_22DE87660(v42, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
    goto LABEL_6;
  }

  v46 = v79;
  sub_22DE85040(&v29[v39], v79, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);

  v47 = static Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta.== infix(_:_:)(v42, v46);
  sub_22DE87660(v46, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  sub_22DDEF284(v35, &qword_27DA37A38, &unk_22DEC6570);
  sub_22DE87660(v42, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  sub_22DDEF284(v29, &qword_27DA37A38, &unk_22DEC6570);
  if ((v47 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v48 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__common;
  swift_beginAccess();
  v49 = v87;
  sub_22DDF0028(v41 + v48, v87, &qword_27DA37A40, &unk_22DEC7330);
  v50 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__common;
  swift_beginAccess();
  v51 = *(v80 + 48);
  v52 = v83;
  sub_22DDF0028(v49, v83, &qword_27DA37A40, &unk_22DEC7330);
  sub_22DDF0028(v38 + v50, v52 + v51, &qword_27DA37A40, &unk_22DEC7330);
  v53 = *(v81 + 48);
  v54 = v82;
  if (v53(v52, 1, v82) != 1)
  {
    v58 = v78;
    sub_22DDF0028(v52, v78, &qword_27DA37A40, &unk_22DEC7330);
    v59 = v53(v52 + v51, 1, v54);
    v56 = v85;
    v57 = v84;
    if (v59 == 1)
    {
      sub_22DDEF284(v87, &qword_27DA37A40, &unk_22DEC7330);
      sub_22DE87660(v58, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
      goto LABEL_13;
    }

    v61 = v52 + v51;
    v62 = v73;
    sub_22DE85040(v61, v73, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
    v63 = static Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody.== infix(_:_:)(v58, v62);
    sub_22DE87660(v62, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
    sub_22DDEF284(v87, &qword_27DA37A40, &unk_22DEC7330);
    sub_22DE87660(v58, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
    sub_22DDEF284(v52, &qword_27DA37A40, &unk_22DEC7330);
    if (v63)
    {
      goto LABEL_19;
    }

LABEL_15:

    return 0;
  }

  sub_22DDEF284(v49, &qword_27DA37A40, &unk_22DEC7330);
  v55 = v53(v52 + v51, 1, v54);
  v56 = v85;
  v57 = v84;
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
  v64 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__data;
  swift_beginAccess();
  sub_22DDF0028(v41 + v64, v57, &qword_27DA37A30, &qword_22DECCFC0);
  v65 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__data;
  swift_beginAccess();
  v66 = *(v74 + 48);
  v67 = v77;
  sub_22DDF0028(v57, v77, &qword_27DA37A30, &qword_22DECCFC0);
  sub_22DDF0028(v38 + v65, v67 + v66, &qword_27DA37A30, &qword_22DECCFC0);
  v68 = *(v75 + 48);
  v69 = v76;
  if (v68(v67, 1, v76) == 1)
  {

    sub_22DDEF284(v57, &qword_27DA37A30, &qword_22DECCFC0);
    if (v68(v67 + v66, 1, v69) == 1)
    {
      sub_22DDEF284(v67, &qword_27DA37A30, &qword_22DECCFC0);
      return 1;
    }

    goto LABEL_24;
  }

  sub_22DDF0028(v67, v56, &qword_27DA37A30, &qword_22DECCFC0);
  if (v68(v67 + v66, 1, v69) == 1)
  {

    sub_22DDEF284(v57, &qword_27DA37A30, &qword_22DECCFC0);
    sub_22DE87660(v56, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData);
LABEL_24:
    sub_22DDEF284(v67, &qword_27DA38CA0, &unk_22DECD330);
    return 0;
  }

  v70 = v72;
  sub_22DE85040(v67 + v66, v72, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData);
  v71 = _s6NDOAPI42Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestDataV2eeoiySbAC_ACtFZ_0(v56, v70);

  sub_22DE87660(v70, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData);
  sub_22DDEF284(v57, &qword_27DA37A30, &qword_22DECCFC0);
  sub_22DE87660(v56, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData);
  sub_22DDEF284(v67, &qword_27DA37A30, &qword_22DECCFC0);
  return (v71 & 1) != 0;
}

uint64_t sub_22DE868A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v4 = *(a1 + 20);
  if (qword_27DA37880 != -1)
  {
    swift_once();
  }

  *(a2 + v4) = qword_27DA38BE8;
}

uint64_t sub_22DE86968(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE876C0(&qword_27DA38C98, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE86A08(uint64_t a1)
{
  v2 = sub_22DE876C0(&qword_27DA37A48, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE86A74()
{
  sub_22DE876C0(&qword_27DA37A48, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest);

  return sub_22DEC4A44();
}

uint64_t sub_22DE86B10()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA38BF0);
  __swift_project_value_buffer(v0, qword_27DA38BF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC7570;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "interested_serials";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ul_link_code";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "ul_link_params";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "additional_payload";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData.decodeMessage<A>(decoder:)()
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
          v3 = v0;
          v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0) + 32);
          goto LABEL_15;
        }

        if (result == 4)
        {
          sub_22DEC4884();
          sub_22DEC4944();
        }
      }

      else
      {
        if (result == 1)
        {
          sub_22DEC49B4();
          goto LABEL_5;
        }

        if (result == 2)
        {
          v3 = v0;
          v4 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0) + 28);
LABEL_15:
          v0 = v3;
          sub_22DEC49C4();
        }
      }

LABEL_5:
      result = sub_22DEC4954();
    }
  }

  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (result = sub_22DEC4AA4(), !v1))
  {
    result = sub_22DE86FB4(v0);
    if (!v1)
    {
      sub_22DE8702C(v0);
      if (*(v0[1] + 16))
      {
        sub_22DEC4884();
        sub_22DEC4A54();
      }

      v3 = v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0) + 24);
      return sub_22DEC4894();
    }
  }

  return result;
}

uint64_t sub_22DE86FB4(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0);
  v3 = (a1 + *(result + 28));
  if (v3[1])
  {
    v4 = *v3;
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE8702C(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0);
  v3 = (a1 + *(result + 32));
  if (v3[1])
  {
    v4 = *v3;
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE870F0(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_22DEC5184();
  a1(0);
  sub_22DE876C0(a2, a3);
  sub_22DEC4BE4();
  return sub_22DEC51A4();
}

uint64_t sub_22DE87178@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = sub_22DE0501C(v4);
  v5 = a2 + a1[6];
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v7 = a1[8];
  v8 = (a2 + a1[7]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a2 + v7);
  *v9 = 0;
  v9[1] = 0;
  return result;
}

uint64_t sub_22DE8721C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE876C0(&qword_27DA38C90, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE872BC(uint64_t a1)
{
  v2 = sub_22DE876C0(&qword_27DA38C48, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE87328()
{
  sub_22DE876C0(&qword_27DA38C48, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData);

  return sub_22DEC4A44();
}

uint64_t _s6NDOAPI42Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestDataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  if ((sub_22DE2F604(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0);
  v5 = v4[7];
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

  v11 = v4[8];
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

  if (sub_22DEAFB4C(a1[1], a2[1]))
  {
    v17 = v4[6];
    sub_22DEC48B4();
    sub_22DE876C0(&qword_27DA37B30, MEMORY[0x277D216C8]);
    return sub_22DEC4BF4() & 1;
  }

  return 0;
}

uint64_t _s6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {
    v7 = *(a1 + v4);

    v8 = sub_22DE85CA0(v5, v6);

    if (!v8)
    {
      return 0;
    }
  }

  sub_22DEC48B4();
  sub_22DE876C0(&qword_27DA37B30, MEMORY[0x277D216C8]);
  return sub_22DEC4BF4() & 1;
}

uint64_t sub_22DE875F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22DE87660(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22DE876C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22DE87970()
{
  result = sub_22DEC48B4();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_22DE87A1C()
{
  sub_22DE87B08(319, &qword_28145AD38, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_22DE624D8();
    if (v1 <= 0x3F)
    {
      sub_22DEC48B4();
      if (v2 <= 0x3F)
      {
        sub_22DE87B08(319, &qword_28145AD88, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22DE87B08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22DE87B64()
{
  sub_22DE87CBC(319, qword_28145C6F8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_22DE87CBC(319, qword_28145B628, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_22DE87CBC(319, &qword_27DA38C88, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_22DE87CBC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22DEC4EB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

int *Com_Apple_Sse_Ocean_Ndo_Api_DeviceData.init()@<X0>(uint64_t a1@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0);
  v3 = (a1 + result[5]);
  *v3 = 0;
  v3[1] = 0;
  *(a1 + result[6]) = 2;
  v4 = (a1 + result[7]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (a1 + result[8]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a1 + result[9]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a1 + result[10]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a1 + result[11]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a1 + result[12]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a1 + result[13]);
  *v10 = 0;
  v10[1] = 0;
  *(a1 + result[14]) = 2;
  *(a1 + result[15]) = 2;
  *(a1 + result[16]) = 2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DeviceData.primary.setter(char a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DeviceData.deviceColor.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0) + 36));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DeviceData.deviceEnclosureColor.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0) + 40));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DeviceData.deviceCoverGlassColor.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0) + 44));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DeviceData.isTinkerPaired.setter(char a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0);
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DeviceData.isActiveWatch.setter(char a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0);
  *(v1 + *(result + 64)) = a1;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CachedWarrantyKey.init()@<X0>(uint64_t a1@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CachedWarrantyKey(0);
  v3 = (a1 + *(result + 20));
  *v3 = 0;
  v3[1] = 0;
  v4 = (a1 + *(result + 24));
  *v4 = 0;
  v4[1] = 0;
  return result;
}

uint64_t sub_22DE88024(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 20));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

int *Com_Apple_Sse_Ocean_Ndo_Api_UserData.init()@<X0>(uint64_t a1@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_UserData(0);
  v3 = (a1 + result[5]);
  *v3 = 0;
  v3[1] = 0;
  v4 = (a1 + result[6]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (a1 + result[7]);
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t sub_22DE88128(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 28));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_22DE8818C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 24));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody.init()@<X0>(char *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 1) = v2;
  *(a1 + 2) = v2;
  *(a1 + 3) = v2;
  *(a1 + 4) = v2;
  v3 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  v4 = &a1[v3[9]];
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v5 = v3[10];
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_UserData(0);
  result = (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  v8 = &a1[v3[11]];
  *v8 = 0;
  v8[8] = 1;
  v9 = &a1[v3[12]];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &a1[v3[13]];
  *v10 = 0;
  *(v10 + 1) = 0;
  return result;
}

uint64_t sub_22DE882D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 48));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody.nextCheckInEpoch.setter(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody.userData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0) + 40);
  sub_22DDEF284(v1 + v3, &qword_27DA37A28, &unk_22DEC6560);
  sub_22DE88A44(a1, v1 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_UserData);
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_UserData(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CTLink.action.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  sub_22DDF0028(v1 + *(v7 + 28), v6, &qword_27DA37D80, &unk_22DEC7960);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22DE88A44(v6, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
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

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CTAction.data.getter@<X0>(unint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D78, &unk_22DEC8150);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  sub_22DDF0028(v1 + *(v7 + 24), v6, &qword_27DA37D78, &unk_22DEC8150);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22DE88A44(v6, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData);
  }

  v10 = MEMORY[0x277D84F90];
  *a1 = sub_22DE0501C(MEMORY[0x277D84F90]);
  a1[1] = sub_22DE0501C(v10);
  v11 = a1 + v8[6];
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v12 = (a1 + v8[7]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a1 + v8[8]);
  *v13 = 0;
  v13[1] = 0;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22DDEF284(v6, &qword_27DA37D78, &unk_22DEC8150);
  }

  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CTLink.action.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0) + 28);
  sub_22DDEF284(v1 + v3, &qword_27DA37D80, &unk_22DEC7960);
  sub_22DE88A44(a1, v1 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CTAction.type.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v4 = *(v1 + *(result + 20));
  if (v4 == 7)
  {
    LOBYTE(v4) = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CTLink.init()@<X0>(uint64_t a1@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v3 = (a1 + v2[5]);
  *v3 = 0;
  v3[1] = 0;
  v4 = (a1 + v2[6]);
  *v4 = 0;
  v4[1] = 0;
  v5 = v2[7];
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1 + v5, 1, 1, v6);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CTAction.init()@<X0>(uint64_t a1@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  *(a1 + *(v2 + 20)) = 7;
  v3 = *(v2 + 24);
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1 + v3, 1, 1, v4);
}

uint64_t sub_22DE88A44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

NDOAPI::Com_Apple_Sse_Ocean_Ndo_Api_CTActionType_optional __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_CTActionType.init(rawValue:)(Swift::Int rawValue)
{
  if ((rawValue - 1) > 8)
  {
    *v1 = 7;
  }

  else
  {
    *v1 = byte_22DECE24A[rawValue - 1];
  }

  return rawValue;
}

uint64_t sub_22DE88B24(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE94534();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_SerialData.interestedSerials.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_SerialData.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SerialData(0) + 20);
  v4 = sub_22DEC48B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_SerialData.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SerialData(0) + 20);
  v4 = sub_22DEC48B4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_SerialData.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v1 = a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SerialData(0) + 20);
  return _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
}

uint64_t sub_22DE88DA4(uint64_t (*a1)(void))
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

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CachedWarrantyKey.serialNumber.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CachedWarrantyKey(0) + 20);
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

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CachedWarrantyKey.warrantyHashKey.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CachedWarrantyKey(0) + 24);
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

uint64_t sub_22DE89040@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 20));
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

uint64_t sub_22DE890A8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *(a5(0) + 20));
  v8 = v7[1];

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_DeviceData.serialNumber.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0) + 20);
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

uint64_t sub_22DE891F8(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  v3 = v2[1];

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_DeviceData.primary.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_22DE5BDA0;
}

uint64_t sub_22DE89328(uint64_t (*a1)(void))
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

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_DeviceData.deviceType.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0) + 28);
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

uint64_t sub_22DE89494(uint64_t (*a1)(void))
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

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_DeviceData.deviceModel.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0) + 32);
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

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DeviceData.deviceColor.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0) + 36));
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

uint64_t sub_22DE8963C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0) + 36));
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

uint64_t sub_22DE896A0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0) + 36));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_DeviceData.deviceColor.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0) + 36);
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

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_DeviceData.clearDeviceColor()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0) + 36));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DeviceData.deviceEnclosureColor.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0) + 40));
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

uint64_t sub_22DE89860@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0) + 40));
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

uint64_t sub_22DE898C4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0) + 40));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_DeviceData.deviceEnclosureColor.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0) + 40);
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

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_DeviceData.clearDeviceEnclosureColor()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0) + 40));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DeviceData.deviceCoverGlassColor.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0) + 44));
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

uint64_t sub_22DE89A84@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0) + 44));
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

uint64_t sub_22DE89AE8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0) + 44));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_DeviceData.deviceCoverGlassColor.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0) + 44);
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

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_DeviceData.clearDeviceCoverGlassColor()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0) + 44));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_DeviceData.deviceName.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0) + 48);
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

uint64_t sub_22DE89D94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 52));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_DeviceData.osVersion.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0) + 52);
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

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DeviceData.findMyEnabled.setter(char a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_DeviceData.findMyEnabled.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0) + 56);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_22DE2CCE4;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_DeviceData.isTinkerPaired.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0) + 60);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_22DE5BDA0;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_DeviceData.isActiveWatch.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0) + 64);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_22DE5BDA0;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_UserData.itunesDsid.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_UserData(0) + 20);
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

uint64_t sub_22DE8A2D8(uint64_t (*a1)(void))
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

uint64_t sub_22DE8A334@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
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

uint64_t sub_22DE8A39C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *(a5(0) + 24));
  v8 = v7[1];

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_UserData.itunesAppleID.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_UserData(0) + 24);
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

uint64_t sub_22DE8A4EC(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  v3 = v2[1];

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t sub_22DE8A544@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
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

uint64_t sub_22DE8A5AC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *(a5(0) + 28));
  v8 = v7[1];

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_UserData.itunesAltDsid.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_UserData(0) + 28);
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

uint64_t sub_22DE8A6FC(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));
  v3 = v2[1];

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody.userData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A28, &unk_22DEC6560);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  sub_22DDF0028(v1 + *(v7 + 40), v6, &qword_27DA37A28, &unk_22DEC6560);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_UserData(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22DE88A44(v6, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_UserData);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v10 = (a1 + v8[5]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a1 + v8[6]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a1 + v8[7]);
  *v12 = 0;
  v12[1] = 0;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22DDEF284(v6, &qword_27DA37A28, &unk_22DEC6560);
  }

  return result;
}

uint64_t sub_22DE8A914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A28, &unk_22DEC6560);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  sub_22DDF0028(a1 + *(v8 + 40), v7, &qword_27DA37A28, &unk_22DEC6560);
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_UserData(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_22DE88A44(v7, a2, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_UserData);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v11 = (a2 + v9[5]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a2 + v9[6]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a2 + v9[7]);
  *v13 = 0;
  v13[1] = 0;
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_22DDEF284(v7, &qword_27DA37A28, &unk_22DEC6560);
  }

  return result;
}

uint64_t sub_22DE8AA90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_UserData(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DE930C8(a1, v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_UserData);
  v9 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0) + 40);
  sub_22DDEF284(a2 + v9, &qword_27DA37A28, &unk_22DEC6560);
  sub_22DE88A44(v8, a2 + v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_UserData);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody.userData.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A28, &unk_22DEC6560) - 8) + 64);
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
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_UserData(0);
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
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0) + 40);
  *(v5 + 12) = v15;
  sub_22DDF0028(v1 + v15, v8, &qword_27DA37A28, &unk_22DEC6560);
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
    v19 = (v14 + v9[7]);
    *v19 = 0;
    v19[1] = 0;
    if (v16(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA37A28, &unk_22DEC6560);
    }
  }

  else
  {
    sub_22DE88A44(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_UserData);
  }

  return sub_22DE8ADE8;
}

BOOL Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody.hasUserData.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A28, &unk_22DEC6560);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  sub_22DDF0028(v0 + *(v5 + 40), v4, &qword_27DA37A28, &unk_22DEC6560);
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_UserData(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_22DDEF284(v4, &qword_27DA37A28, &unk_22DEC6560);
  return v7;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody.clearUserData()()
{
  v1 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0) + 40);
  sub_22DDEF284(v0 + v1, &qword_27DA37A28, &unk_22DEC6560);
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_UserData(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody.activeAcFollowups.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody.activeMcFollowups.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody.displayedAlertsAndNotifications.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody.nextCheckInEpoch.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0) + 44));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody.nextCheckInEpoch.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0) + 44);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_22DE39A60;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody.clearNextCheckInEpoch()()
{
  v1 = v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0) + 44);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t sub_22DE8B1A0(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 48));
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

uint64_t sub_22DE8B1FC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 48));
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

uint64_t sub_22DE8B264(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *(a5(0) + 48));
  v8 = v7[1];

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody.sourceBundle.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0) + 48);
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

uint64_t sub_22DE8B3B4(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 48));
  v3 = v2[1];

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t sub_22DE8B40C(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 52));
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

uint64_t sub_22DE8B468@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 52));
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

uint64_t sub_22DE8B4D0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *(a5(0) + 52));
  v8 = v7[1];

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody.configID.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0) + 52);
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

uint64_t sub_22DE8B620(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 52));
  v3 = v2[1];

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0) + 36);
  v4 = sub_22DEC48B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0) + 36);
  v4 = sub_22DEC48B4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CTLink.linkLabel.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0) + 20);
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

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CTLink.linkColor.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0) + 24);
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

void (*Com_Apple_Sse_Ocean_Ndo_Api_CTLink.action.modify(void *a1))(uint64_t **a1, char a2)
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
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0) + 28);
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
    sub_22DE88A44(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  }

  return sub_22DE8BC04;
}

BOOL Com_Apple_Sse_Ocean_Ndo_Api_CTLink.hasAction.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  sub_22DDF0028(v0 + *(v5 + 28), v4, &qword_27DA37D80, &unk_22DEC7960);
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_22DDEF284(v4, &qword_27DA37D80, &unk_22DEC7960);
  return v7;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_CTLink.clearAction()()
{
  v1 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0) + 28);
  sub_22DDEF284(v0 + v1, &qword_27DA37D80, &unk_22DEC7960);
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CTAction.type.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CTAction.type.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 7)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_22DE2CCE4;
}

uint64_t sub_22DE8BE8C@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D78, &unk_22DEC8150);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  sub_22DDF0028(a1 + *(v8 + 24), v7, &qword_27DA37D78, &unk_22DEC8150);
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_22DE88A44(v7, a2, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData);
  }

  v11 = MEMORY[0x277D84F90];
  *a2 = sub_22DE0501C(MEMORY[0x277D84F90]);
  a2[1] = sub_22DE0501C(v11);
  v12 = a2 + v9[6];
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v13 = (a2 + v9[7]);
  *v13 = 0;
  v13[1] = 0;
  v14 = (a2 + v9[8]);
  *v14 = 0;
  v14[1] = 0;
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_22DDEF284(v7, &qword_27DA37D78, &unk_22DEC8150);
  }

  return result;
}

uint64_t sub_22DE8C020(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DE930C8(a1, v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData);
  v9 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0) + 24);
  sub_22DDEF284(a2 + v9, &qword_27DA37D78, &unk_22DEC8150);
  sub_22DE88A44(v8, a2 + v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CTAction.data.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0) + 24);
  sub_22DDEF284(v1 + v3, &qword_27DA37D78, &unk_22DEC8150);
  sub_22DE88A44(a1, v1 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData);
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CTActionData.init()@<X0>(unint64_t *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = sub_22DE0501C(MEMORY[0x277D84F90]);
  a1[1] = sub_22DE0501C(v2);
  v3 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData(0);
  v4 = a1 + v3[6];
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v6 = (a1 + v3[7]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a1 + v3[8]);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_CTAction.data.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D78, &unk_22DEC8150) - 8) + 64);
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
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData(0);
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
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0) + 24);
  *(v5 + 12) = v15;
  sub_22DDF0028(v1 + v15, v8, &qword_27DA37D78, &unk_22DEC8150);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = MEMORY[0x277D84F90];
    *v14 = sub_22DE0501C(MEMORY[0x277D84F90]);
    v14[1] = sub_22DE0501C(v17);
    v18 = v14 + v9[6];
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v19 = (v14 + v9[7]);
    *v19 = 0;
    v19[1] = 0;
    v20 = (v14 + v9[8]);
    *v20 = 0;
    v20[1] = 0;
    if (v16(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA37D78, &unk_22DEC8150);
    }
  }

  else
  {
    sub_22DE88A44(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData);
  }

  return sub_22DE8C4B8;
}

void sub_22DE8C4E0(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v8 = *a1;
  v9 = *(*a1 + 12);
  v10 = (*a1)[4];
  v11 = (*a1)[5];
  v12 = (*a1)[2];
  v13 = (*a1)[3];
  v14 = **a1;
  v15 = (*a1)[1];
  if (a2)
  {
    sub_22DE930C8(v11, v10, a5);
    sub_22DDEF284(v14 + v9, a3, a4);
    sub_22DE88A44(v10, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
    sub_22DE93130(v11, a5);
  }

  else
  {
    sub_22DDEF284(v14 + v9, a3, a4);
    sub_22DE88A44(v11, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
  }

  free(v11);
  free(v10);
  free(v15);

  free(v8);
}

BOOL Com_Apple_Sse_Ocean_Ndo_Api_CTAction.hasData.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D78, &unk_22DEC8150);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  sub_22DDF0028(v0 + *(v5 + 24), v4, &qword_27DA37D78, &unk_22DEC8150);
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_22DDEF284(v4, &qword_27DA37D78, &unk_22DEC8150);
  return v7;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_CTAction.clearData()()
{
  v1 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0) + 24);
  sub_22DDEF284(v0 + v1, &qword_27DA37D78, &unk_22DEC8150);
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CTActionData.url.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData(0) + 28);
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

uint64_t sub_22DE8C898@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
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

uint64_t sub_22DE8C900(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *(a5(0) + 32));
  v8 = v7[1];

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t sub_22DE8C970(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 32));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CTActionData.urlKey.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData(0) + 32);
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

uint64_t sub_22DE8CA84(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 32));
  v3 = v2[1];

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CTActionData.bodyPayLoad.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CTActionData.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData(0) + 24);
  v4 = sub_22DEC48B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CTActionData.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData(0) + 24);
  v4 = sub_22DEC48B4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_22DE8CC78()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_28145C5B0);
  __swift_project_value_buffer(v0, qword_28145C5B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_22DEC81E0;
  v4 = v21 + v3;
  v5 = v21 + v3 + v1[14];
  *(v21 + v3) = 1;
  *v5 = "OPEN_PATH";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_22DEC4AE4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "START_WEB";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "START_AMS";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 6;
  *v13 = "OPEN_DEVICE_WARRANTY";
  *(v13 + 1) = 20;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 7;
  *v15 = "USER_DISMISS";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 8;
  *v17 = "USER_REJECT";
  *(v17 + 1) = 11;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 9;
  *v19 = "DISMISS_CC_PROMO";
  *(v19 + 1) = 16;
  v19[16] = 2;
  v8();
  return sub_22DEC4AF4();
}

uint64_t sub_22DE8CFE0()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA38CA8);
  __swift_project_value_buffer(v0, qword_27DA38CA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC5F50;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "interested_serials";
  *(v5 + 8) = 18;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_22DEC4AE4();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_SerialData.decodeMessage<A>(decoder:)()
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
      sub_22DEC49B4();
    }
  }

  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_SerialData.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (result = sub_22DEC4AA4(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SerialData(0) + 20);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t static Com_Apple_Sse_Ocean_Ndo_Api_SerialData.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_22DE2F604(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SerialData(0) + 20);
  sub_22DEC48B4();
  sub_22DDF25AC(&qword_27DA37B30, MEMORY[0x277D216C8]);
  return sub_22DEC4BF4() & 1;
}

uint64_t sub_22DE8D3A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF25AC(&qword_27DA38DA8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SerialData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE8D448(uint64_t a1)
{
  v2 = sub_22DDF25AC(&qword_27DA38D18, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SerialData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE8D4B4()
{
  sub_22DDF25AC(&qword_27DA38D18, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SerialData);

  return sub_22DEC4A44();
}

uint64_t sub_22DE8D530(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_22DE2F604(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_22DEC48B4();
  sub_22DDF25AC(&qword_27DA37B30, MEMORY[0x277D216C8]);
  return sub_22DEC4BF4() & 1;
}

uint64_t sub_22DE8D5F4()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_28145B768);
  __swift_project_value_buffer(v0, qword_28145B768);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC81D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "serial_number";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "warranty_hash_key";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CachedWarrantyKey.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_22DEC4954();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result == 1)
    {
      v1 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CachedWarrantyKey(0) + 20);
      goto LABEL_3;
    }

    if (result == 2)
    {
      v4 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CachedWarrantyKey(0) + 24);
LABEL_3:
      v0 = 0;
      sub_22DEC49C4();
    }
  }
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CachedWarrantyKey.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DE8E374(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CachedWarrantyKey);
  if (!v4)
  {
    sub_22DE8EDCC(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CachedWarrantyKey);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE8D9B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF25AC(&qword_27DA38DA0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CachedWarrantyKey);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE8DA58(uint64_t a1)
{
  v2 = sub_22DDF25AC(&qword_28145B758, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CachedWarrantyKey);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE8DAC4()
{
  sub_22DDF25AC(&qword_28145B758, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CachedWarrantyKey);

  return sub_22DEC4A44();
}

uint64_t sub_22DE8DB60()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_28145C9B0);
  __swift_project_value_buffer(v0, qword_28145C9B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_22DECD340;
  v4 = v31 + v3;
  v5 = v31 + v3 + v1[14];
  *(v31 + v3) = 1;
  *v5 = "serial_number";
  *(v5 + 8) = 13;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_22DEC4AE4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "primary";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x277D21870];
  v8();
  v11 = (v4 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "device_type";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v8();
  v13 = (v4 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "device_model";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v8();
  v15 = (v4 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "device_color";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v8();
  v17 = (v4 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "device_enclosure_color";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v8();
  v19 = (v4 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "device_cover_glass_color";
  *(v20 + 1) = 24;
  v20[16] = 2;
  v8();
  v21 = (v4 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "device_name";
  *(v22 + 1) = 11;
  v22[16] = 2;
  v8();
  v23 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v23 = "os_version";
  *(v23 + 8) = 10;
  *(v23 + 16) = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "find_my_enabled";
  *(v25 + 1) = 15;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "is_tinker_paired";
  *(v27 + 1) = 16;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "is_active_watch";
  *(v29 + 1) = 15;
  v29[16] = 2;
  v8();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DeviceData.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_22DEC4954();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result > 6)
    {
      if (result > 9)
      {
        switch(result)
        {
          case 10:
            v10 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0) + 56);
            goto LABEL_30;
          case 11:
            v14 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0) + 60);
LABEL_30:
            v0 = 0;
            sub_22DEC4974();
            break;
          case 12:
            v7 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0) + 64);
            goto LABEL_30;
        }
      }

      else
      {
        if (result == 7)
        {
          v1 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0) + 44);
        }

        else if (result == 8)
        {
          v12 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0) + 48);
        }

        else
        {
          v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0) + 52);
        }

LABEL_3:
        v0 = 0;
        sub_22DEC49C4();
      }
    }

    else
    {
      if (result > 3)
      {
        if (result == 4)
        {
          v9 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0) + 32);
        }

        else if (result == 5)
        {
          v13 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0) + 36);
        }

        else
        {
          v6 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0) + 40);
        }

        goto LABEL_3;
      }

      switch(result)
      {
        case 1:
          v8 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0) + 20);
          goto LABEL_3;
        case 2:
          v11 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0) + 24);
          goto LABEL_30;
        case 3:
          v4 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0) + 28);
          goto LABEL_3;
      }
    }
  }
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DeviceData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DE8E374(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData);
  if (!v4)
  {
    sub_22DE8E3F0(v3);
    sub_22DE8EE48(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData);
    sub_22DE91918(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData);
    sub_22DE8E468(v3);
    sub_22DE8E4E0(v3);
    sub_22DE8E558(v3);
    sub_22DE8FCC0(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData);
    sub_22DE8FD3C(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData);
    sub_22DE8E5D0(v3);
    sub_22DE8E648(v3);
    sub_22DE8E6C0(v3);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE8E374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
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

uint64_t sub_22DE8E3F0(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0);
  if (*(a1 + *(result + 24)) != 2)
  {
    return sub_22DEC4A64();
  }

  return result;
}

uint64_t sub_22DE8E468(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0);
  v3 = (a1 + *(result + 36));
  if (v3[1])
  {
    v4 = *v3;
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE8E4E0(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0);
  v3 = (a1 + *(result + 40));
  if (v3[1])
  {
    v4 = *v3;
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE8E558(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0);
  v3 = (a1 + *(result + 44));
  if (v3[1])
  {
    v4 = *v3;
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE8E5D0(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0);
  if (*(a1 + *(result + 56)) != 2)
  {
    return sub_22DEC4A64();
  }

  return result;
}

uint64_t sub_22DE8E648(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0);
  if (*(a1 + *(result + 60)) != 2)
  {
    return sub_22DEC4A64();
  }

  return result;
}

uint64_t sub_22DE8E6C0(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0);
  if (*(a1 + *(result + 64)) != 2)
  {
    return sub_22DEC4A64();
  }

  return result;
}

uint64_t sub_22DE8E784@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  *(a2 + v5) = 2;
  v7 = a1[8];
  v8 = (a2 + a1[7]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a2 + v7);
  *v9 = 0;
  v9[1] = 0;
  v10 = a1[10];
  v11 = (a2 + a1[9]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a2 + v10);
  *v12 = 0;
  v12[1] = 0;
  v13 = a1[12];
  v14 = (a2 + a1[11]);
  *v14 = 0;
  v14[1] = 0;
  v15 = (a2 + v13);
  *v15 = 0;
  v15[1] = 0;
  v16 = a1[14];
  v17 = (a2 + a1[13]);
  *v17 = 0;
  v17[1] = 0;
  *(a2 + v16) = 2;
  v18 = a1[16];
  *(a2 + a1[15]) = 2;
  *(a2 + v18) = 2;
  return result;
}

uint64_t sub_22DE8E864(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF25AC(&qword_27DA38D98, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE8E904(uint64_t a1)
{
  v2 = sub_22DDF25AC(&qword_28145C9A0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE8E970()
{
  sub_22DDF25AC(&qword_28145C9A0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData);

  return sub_22DEC4A44();
}

uint64_t sub_22DE8EA0C()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_28145D288);
  __swift_project_value_buffer(v0, qword_28145D288);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC77C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "itunes_dsid";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "itunes_apple_id";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "itunes_alt_dsid";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_UserData.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_22DEC4954();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_UserData(0) + 28);
LABEL_3:
        v0 = 0;
        sub_22DEC49C4();
        break;
      case 2:
        v1 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_UserData(0) + 24);
        goto LABEL_3;
      case 1:
        v4 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_UserData(0) + 20);
        goto LABEL_3;
    }
  }
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_UserData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DE8E374(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_UserData);
  if (!v4)
  {
    sub_22DE8EDCC(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_UserData);
    sub_22DE8EE48(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_UserData);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE8EDCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
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

uint64_t sub_22DE8EE48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
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

uint64_t sub_22DE8EF18@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a2 + a1[7]);
  *v8 = 0;
  v8[1] = 0;
  return result;
}

uint64_t sub_22DE8EFAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF25AC(&qword_27DA38D90, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_UserData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE8F04C(uint64_t a1)
{
  v2 = sub_22DDF25AC(&qword_28145D278, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_UserData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE8F0B8()
{
  sub_22DDF25AC(&qword_28145D278, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_UserData);

  return sub_22DEC4A44();
}

uint64_t sub_22DE8F154()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_28145B6A0);
  __swift_project_value_buffer(v0, qword_28145B6A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_22DEC81F0;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "cached_warranty_hashes";
  *(v5 + 8) = 22;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_22DEC4AE4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "local_devices";
  *(v9 + 8) = 13;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "user_data";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "active_ac_followups";
  *(v13 + 1) = 19;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "active_mc_followups";
  *(v15 + 1) = 19;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "displayed_alerts_and_notifications";
  *(v17 + 1) = 34;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "next_check_in_epoch";
  *(v19 + 1) = 19;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "source_bundle";
  *(v21 + 1) = 13;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "config_id";
  *(v22 + 8) = 9;
  *(v22 + 16) = 2;
  v8();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody.decodeMessage<A>(decoder:)()
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

      if (result <= 4)
      {
        if (result > 2)
        {
          if (result != 3)
          {
LABEL_4:
            sub_22DEC49B4();
            goto LABEL_5;
          }

          sub_22DE8F730();
        }

        else
        {
          if (result == 1)
          {
            v5 = v0;
            type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CachedWarrantyKey(0);
            sub_22DDF25AC(&qword_28145B758, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CachedWarrantyKey);
          }

          else
          {
            if (result != 2)
            {
              goto LABEL_5;
            }

            v5 = v0;
            type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0);
            sub_22DDF25AC(&qword_28145C9A0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData);
          }

          v0 = v5;
          sub_22DEC49D4();
        }
      }

      else
      {
        if (result <= 6)
        {
          goto LABEL_4;
        }

        if (result == 7)
        {
          v6 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0) + 44);
          sub_22DEC49A4();
        }

        else
        {
          if (result == 8)
          {
            v3 = v0;
            v7 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0) + 48);
          }

          else
          {
            if (result != 9)
            {
              goto LABEL_5;
            }

            v3 = v0;
            v4 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0) + 52);
          }

          v0 = v3;
          sub_22DEC49C4();
        }
      }

LABEL_5:
      result = sub_22DEC4954();
    }
  }

  return result;
}

uint64_t sub_22DE8F730()
{
  v0 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0) + 40);
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_UserData(0);
  sub_22DDF25AC(&qword_28145D278, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_UserData);
  return sub_22DEC49E4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CachedWarrantyKey(0), sub_22DDF25AC(&qword_28145B758, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CachedWarrantyKey), result = sub_22DEC4AC4(), !v4))
  {
    if (!*(v3[1] + 16) || (type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0), sub_22DDF25AC(&qword_28145C9A0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData), result = sub_22DEC4AC4(), !v4))
    {
      result = sub_22DE8FA38(v3, a1, a2, a3);
      if (!v4)
      {
        if (*(v3[2] + 16))
        {
          sub_22DEC4AA4();
        }

        if (*(v3[3] + 16))
        {
          sub_22DEC4AA4();
        }

        if (*(v3[4] + 16))
        {
          sub_22DEC4AA4();
        }

        sub_22DE8FC48(v3);
        sub_22DE8FCC0(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
        sub_22DE8FD3C(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
        v9 = v3 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0) + 36);
        return sub_22DEC4894();
      }
    }
  }

  return result;
}

uint64_t sub_22DE8FA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A28, &unk_22DEC6560);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_UserData(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  sub_22DDF0028(a1 + *(v14 + 40), v8, &qword_27DA37A28, &unk_22DEC6560);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22DDEF284(v8, &qword_27DA37A28, &unk_22DEC6560);
  }

  sub_22DE88A44(v8, v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_UserData);
  sub_22DDF25AC(&qword_28145D278, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_UserData);
  sub_22DEC4AD4();
  return sub_22DE93130(v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_UserData);
}

uint64_t sub_22DE8FC48(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  v3 = (a1 + *(result + 44));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_22DEC4A94();
  }

  return result;
}

uint64_t sub_22DE8FCC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 48));
  if (v7[1])
  {
    v8 = *v7;
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE8FD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 52));
  if (v7[1])
  {
    v8 = *v7;
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE8FE04@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 1) = v4;
  *(a2 + 2) = v4;
  *(a2 + 3) = v4;
  *(a2 + 4) = v4;
  v5 = &a2[a1[9]];
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v6 = a1[10];
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_UserData(0);
  result = (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  v9 = a1[12];
  v10 = &a2[a1[11]];
  *v10 = 0;
  v10[8] = 1;
  v11 = &a2[v9];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &a2[a1[13]];
  *v12 = 0;
  *(v12 + 1) = 0;
  return result;
}

uint64_t sub_22DE8FED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_22DEC48B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22DE8FF4C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = sub_22DEC48B4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_22DE8FFC0(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t sub_22DE90014(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF25AC(&qword_27DA38D88, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE900B4(uint64_t a1)
{
  v2 = sub_22DDF25AC(&qword_28145B690, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE90120()
{
  sub_22DDF25AC(&qword_28145B690, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);

  return sub_22DEC4A44();
}

uint64_t sub_22DE901BC()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_28145D7F0);
  __swift_project_value_buffer(v0, qword_28145D7F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC77C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "link_label";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "link_color";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "action";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x277D21870];
  v9();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CTLink.decodeMessage<A>(decoder:)()
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
        sub_22DE904C4();
        break;
      case 2:
        v4 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0) + 24);
LABEL_10:
        v0 = 0;
        sub_22DEC49C4();
        break;
      case 1:
        v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0) + 20);
        goto LABEL_10;
    }
  }
}

uint64_t sub_22DE904C4()
{
  v0 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0) + 28);
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  sub_22DDF25AC(&qword_28145D410, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  return sub_22DEC49E4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CTLink.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DE8E374(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  if (!v4)
  {
    sub_22DE8EDCC(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    sub_22DE90628(v3, a1, a2, a3);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE90628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  sub_22DDF0028(a1 + *(v14 + 28), v8, &qword_27DA37D80, &unk_22DEC7960);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22DDEF284(v8, &qword_27DA37D80, &unk_22DEC7960);
  }

  sub_22DE88A44(v8, v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  sub_22DDF25AC(&qword_28145D410, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  sub_22DEC4AD4();
  return sub_22DE93130(v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
}

uint64_t sub_22DE90880@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a2 + v7, 1, 1, v8);
}

uint64_t sub_22DE90958(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF25AC(&qword_27DA38D80, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE909F8()
{
  sub_22DDF25AC(&qword_28145D7E0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);

  return sub_22DEC4A44();
}

uint64_t sub_22DE90A94()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_28145D420);
  __swift_project_value_buffer(v0, qword_28145D420);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC81D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
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

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CTAction.decodeMessage<A>(decoder:)()
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
      sub_22DE90D14();
    }

    else if (result == 2)
    {
      sub_22DE90D88();
    }
  }

  return result;
}

uint64_t sub_22DE90D14()
{
  v0 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0) + 20);
  sub_22DE94534();
  return sub_22DEC4984();
}

uint64_t sub_22DE90D88()
{
  v0 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0) + 24);
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData(0);
  sub_22DDF25AC(&qword_28145C678, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData);
  return sub_22DEC49E4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CTAction.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DE90EAC(v3);
  if (!v4)
  {
    sub_22DE90F38(v3, a1, a2, a3);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE90EAC(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  if (*(a1 + *(result + 20)) != 7)
  {
    v3 = *(a1 + *(result + 20));
    sub_22DE94534();
    return sub_22DEC4A74();
  }

  return result;
}

uint64_t sub_22DE90F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D78, &unk_22DEC8150);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  sub_22DDF0028(a1 + *(v14 + 24), v8, &qword_27DA37D78, &unk_22DEC8150);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22DDEF284(v8, &qword_27DA37D78, &unk_22DEC8150);
  }

  sub_22DE88A44(v8, v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData);
  sub_22DDF25AC(&qword_28145C678, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData);
  sub_22DEC4AD4();
  return sub_22DE93130(v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData);
}

uint64_t sub_22DE91194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v4 = *(a1 + 20);
  v5 = *(a1 + 24);
  *(a2 + v4) = 7;
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_22DE91260(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF25AC(&qword_27DA38D78, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE91300(uint64_t a1)
{
  v2 = sub_22DDF25AC(&qword_28145D410, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE9136C()
{
  sub_22DDF25AC(&qword_28145D410, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);

  return sub_22DEC4A44();
}

uint64_t sub_22DE91408()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_28145C688);
  __swift_project_value_buffer(v0, qword_28145C688);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC7570;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "url";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "url_key";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x277D21888];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 6;
  *v13 = "additional_headers";
  *(v13 + 1) = 18;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 7;
  *v15 = "body_pay_load";
  *(v15 + 1) = 13;
  v15[16] = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CTActionData.decodeMessage<A>(decoder:)()
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

      if (result > 5)
      {
        if (result == 6 || result == 7)
        {
          sub_22DEC4884();
          sub_22DEC4944();
        }
      }

      else
      {
        if (result == 1)
        {
          v3 = v0;
          v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData(0) + 28);
        }

        else
        {
          if (result != 2)
          {
            goto LABEL_5;
          }

          v3 = v0;
          v4 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData(0) + 32);
        }

        v0 = v3;
        sub_22DEC49C4();
      }

LABEL_5:
      result = sub_22DEC4954();
    }
  }

  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CTActionData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_22DE8EE48(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData);
  if (!v4)
  {
    sub_22DE91918(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData);
    v10 = *v3;
    if (*(*v5 + 16))
    {
      sub_22DEC4884();
      sub_22DEC4A54();
    }

    if (*(v5[1] + 16))
    {
      sub_22DEC4884();
      sub_22DEC4A54();
    }

    v11 = v5 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData(0) + 24);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE91918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
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

uint64_t sub_22DE919E8(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_22DEC5184();
  a1(0);
  sub_22DDF25AC(a2, a3);
  sub_22DEC4BE4();
  return sub_22DEC51A4();
}

uint64_t sub_22DE91A70@<X0>(int *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *a2 = sub_22DE0501C(MEMORY[0x277D84F90]);
  a2[1] = sub_22DE0501C(v4);
  v5 = a2 + a1[6];
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v7 = a1[8];
  v8 = (a2 + a1[7]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a2 + v7);
  *v9 = 0;
  v9[1] = 0;
  return result;
}

uint64_t sub_22DE91B28(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF25AC(&qword_27DA38D70, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE91BC8(uint64_t a1)
{
  v2 = sub_22DDF25AC(&qword_28145C678, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE91C34()
{
  sub_22DDF25AC(&qword_28145C678, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData);

  return sub_22DEC4A44();
}

uint64_t _s6NDOAPI45Com_Apple_Sse_Ocean_Ndo_Api_CachedWarrantyKeyV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CachedWarrantyKey(0);
  v5 = *(v4 + 20);
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

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_22DEC50E4();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = *(v4 + 24);
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (v17)
    {
      v18 = *v14 == *v16 && v15 == v17;
      if (v18 || (sub_22DEC50E4() & 1) != 0)
      {
        goto LABEL_17;
      }
    }
  }

  else if (!v17)
  {
LABEL_17:
    sub_22DEC48B4();
    sub_22DDF25AC(&qword_27DA37B30, MEMORY[0x277D216C8]);
    return sub_22DEC4BF4() & 1;
  }

  return 0;
}

uint64_t _s6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_DeviceDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0);
  v5 = v4[5];
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

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_22DEC50E4();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = *(a1 + v13);
  v15 = *(a2 + v13);
  if (v14 == 2)
  {
    if (v15 != 2)
    {
      return 0;
    }
  }

  else if (v15 == 2 || ((v14 ^ v15) & 1) != 0)
  {
    return 0;
  }

  v16 = v4[7];
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

  v24 = v4[8];
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

  v32 = v4[9];
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

  v39 = v4[10];
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

  v46 = v4[11];
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

  v53 = v4[12];
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

  v60 = v4[13];
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

  v67 = v4[14];
  v68 = *(a1 + v67);
  v69 = *(a2 + v67);
  if (v68 == 2)
  {
    if (v69 != 2)
    {
      return 0;
    }
  }

  else if (v69 == 2 || ((v68 ^ v69) & 1) != 0)
  {
    return 0;
  }

  v70 = v4[15];
  v71 = *(a1 + v70);
  v72 = *(a2 + v70);
  if (v71 == 2)
  {
    if (v72 != 2)
    {
      return 0;
    }
  }

  else if (v72 == 2 || ((v71 ^ v72) & 1) != 0)
  {
    return 0;
  }

  v73 = v4[16];
  v74 = *(a1 + v73);
  v75 = *(a2 + v73);
  if (v74 == 2)
  {
    if (v75 == 2)
    {
      goto LABEL_84;
    }

    return 0;
  }

  if (v75 == 2 || ((v74 ^ v75) & 1) != 0)
  {
    return 0;
  }

LABEL_84:
  sub_22DEC48B4();
  sub_22DDF25AC(&qword_27DA37B30, MEMORY[0x277D216C8]);
  return sub_22DEC4BF4() & 1;
}

uint64_t _s6NDOAPI45Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBodyV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_UserData(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A28, &unk_22DEC6560);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v42 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38DB0, &unk_22DECE238);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v42 - v15;
  if ((sub_22DE2F984(*a1, *a2) & 1) == 0 || (sub_22DE2FC4C(a1[1], a2[1]) & 1) == 0)
  {
    goto LABEL_33;
  }

  v17 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  v18 = *(v17 + 40);
  v19 = *(v13 + 48);
  v42 = v17;
  v43 = a1;
  sub_22DDF0028(a1 + v18, v16, &qword_27DA37A28, &unk_22DEC6560);
  sub_22DDF0028(a2 + v18, &v16[v19], &qword_27DA37A28, &unk_22DEC6560);
  v20 = *(v5 + 48);
  if (v20(v16, 1, v4) == 1)
  {
    if (v20(&v16[v19], 1, v4) == 1)
    {
      sub_22DDEF284(v16, &qword_27DA37A28, &unk_22DEC6560);
      goto LABEL_10;
    }

LABEL_8:
    sub_22DDEF284(v16, &qword_27DA38DB0, &unk_22DECE238);
    goto LABEL_33;
  }

  sub_22DDF0028(v16, v12, &qword_27DA37A28, &unk_22DEC6560);
  if (v20(&v16[v19], 1, v4) == 1)
  {
    sub_22DE93130(v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_UserData);
    goto LABEL_8;
  }

  sub_22DE88A44(&v16[v19], v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_UserData);
  v21 = _s6NDOAPI36Com_Apple_Sse_Ocean_Ndo_Api_UserDataV2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_22DE93130(v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_UserData);
  sub_22DE93130(v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_UserData);
  sub_22DDEF284(v16, &qword_27DA37A28, &unk_22DEC6560);
  if ((v21 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_10:
  v22 = v43;
  if ((sub_22DE2F604(v43[2], a2[2]) & 1) == 0 || (sub_22DE2F604(v22[3], a2[3]) & 1) == 0 || (sub_22DE2F604(v22[4], a2[4]) & 1) == 0)
  {
    goto LABEL_33;
  }

  v23 = v42;
  v24 = *(v42 + 44);
  v25 = (v22 + v24);
  v26 = *(v22 + v24 + 8);
  v27 = (a2 + v24);
  v28 = *(a2 + v24 + 8);
  if (v26)
  {
    if (!v28)
    {
      goto LABEL_33;
    }
  }

  else
  {
    if (*v25 != *v27)
    {
      LOBYTE(v28) = 1;
    }

    if (v28)
    {
      goto LABEL_33;
    }
  }

  v29 = *(v42 + 48);
  v30 = (v22 + v29);
  v31 = *(v22 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (!v33 || (*v30 != *v32 || v31 != v33) && (sub_22DEC50E4() & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  else if (v33)
  {
    goto LABEL_33;
  }

  v34 = *(v23 + 52);
  v35 = (v22 + v34);
  v36 = *(v22 + v34 + 8);
  v37 = (a2 + v34);
  v38 = v37[1];
  if (!v36)
  {
    if (!v38)
    {
      goto LABEL_31;
    }

LABEL_33:
    v40 = 0;
    return v40 & 1;
  }

  if (!v38 || (*v35 != *v37 || v36 != v38) && (sub_22DEC50E4() & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_31:
  v39 = *(v23 + 36);
  sub_22DEC48B4();
  sub_22DDF25AC(&qword_27DA37B30, MEMORY[0x277D216C8]);
  v40 = sub_22DEC4BF4();
  return v40 & 1;
}

uint64_t _s6NDOAPI36Com_Apple_Sse_Ocean_Ndo_Api_UserDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_UserData(0);
  v5 = v4[5];
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

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_22DEC50E4();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = v4;
      v20 = sub_22DEC50E4();
      v4 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v21 = v4[7];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (v25)
    {
      v26 = *v22 == *v24 && v23 == v25;
      if (v26 || (sub_22DEC50E4() & 1) != 0)
      {
        goto LABEL_26;
      }
    }
  }

  else if (!v25)
  {
LABEL_26:
    sub_22DEC48B4();
    sub_22DDF25AC(&qword_27DA37B30, MEMORY[0x277D216C8]);
    return sub_22DEC4BF4() & 1;
  }

  return 0;
}

uint64_t _s6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_CTActionDataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData(0);
  v5 = v4[7];
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

  v11 = v4[8];
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

  if (sub_22DEAFB4C(*a1, *a2) & 1) != 0 && (sub_22DEAFB4C(a1[1], a2[1]))
  {
    v17 = v4[6];
    sub_22DEC48B4();
    sub_22DDF25AC(&qword_27DA37B30, MEMORY[0x277D216C8]);
    return sub_22DEC4BF4() & 1;
  }

  return 0;
}

uint64_t _s6NDOAPI36Com_Apple_Sse_Ocean_Ndo_Api_CTActionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D78, &unk_22DEC8150);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (v29 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F28, &qword_22DECE230);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v29 - v15;
  v17 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v18 = *(v17 + 20);
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);
  if (v19 == 7)
  {
    if (v20 != 7)
    {
      goto LABEL_12;
    }
  }

  else if (v20 == 7 || qword_22DECE258[v19] != qword_22DECE258[v20])
  {
    goto LABEL_12;
  }

  v21 = a1;
  v22 = a2;
  v23 = *(v17 + 24);
  v24 = *(v13 + 48);
  v29[1] = v21;
  sub_22DDF0028(v21 + v23, v16, &qword_27DA37D78, &unk_22DEC8150);
  sub_22DDF0028(v22 + v23, &v16[v24], &qword_27DA37D78, &unk_22DEC8150);
  v25 = *(v5 + 48);
  if (v25(v16, 1, v4) == 1)
  {
    if (v25(&v16[v24], 1, v4) == 1)
    {
      sub_22DDEF284(v16, &qword_27DA37D78, &unk_22DEC8150);
LABEL_15:
      sub_22DEC48B4();
      sub_22DDF25AC(&qword_27DA37B30, MEMORY[0x277D216C8]);
      v26 = sub_22DEC4BF4();
      return v26 & 1;
    }

    goto LABEL_11;
  }

  sub_22DDF0028(v16, v12, &qword_27DA37D78, &unk_22DEC8150);
  if (v25(&v16[v24], 1, v4) == 1)
  {
    sub_22DE93130(v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData);
LABEL_11:
    sub_22DDEF284(v16, &qword_27DA37F28, &qword_22DECE230);
    goto LABEL_12;
  }

  sub_22DE88A44(&v16[v24], v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData);
  v28 = _s6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_CTActionDataV2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_22DE93130(v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData);
  sub_22DE93130(v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData);
  sub_22DDEF284(v16, &qword_27DA37D78, &unk_22DEC8150);
  if (v28)
  {
    goto LABEL_15;
  }

LABEL_12:
  v26 = 0;
  return v26 & 1;
}

uint64_t _s6NDOAPI34Com_Apple_Sse_Ocean_Ndo_Api_CTLinkV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v42 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F30, &unk_22DECCF30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v42 - v15;
  v17 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v18 = v17[5];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_25;
    }

    if (*v19 != *v21 || v20 != v22)
    {
      v24 = v17;
      v25 = sub_22DEC50E4();
      v17 = v24;
      if ((v25 & 1) == 0)
      {
        goto LABEL_25;
      }
    }
  }

  else if (v22)
  {
    goto LABEL_25;
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
      goto LABEL_25;
    }

    if (*v27 != *v29 || v28 != v30)
    {
      v32 = v17;
      v33 = sub_22DEC50E4();
      v17 = v32;
      if ((v33 & 1) == 0)
      {
        goto LABEL_25;
      }
    }
  }

  else if (v30)
  {
    goto LABEL_25;
  }

  v34 = v17[7];
  v35 = *(v13 + 48);
  sub_22DDF0028(a1 + v34, v16, &qword_27DA37D80, &unk_22DEC7960);
  v36 = a2 + v34;
  v37 = v35;
  sub_22DDF0028(v36, &v16[v35], &qword_27DA37D80, &unk_22DEC7960);
  v38 = *(v5 + 48);
  if (v38(v16, 1, v4) == 1)
  {
    if (v38(&v16[v37], 1, v4) == 1)
    {
      sub_22DDEF284(v16, &qword_27DA37D80, &unk_22DEC7960);
LABEL_28:
      sub_22DEC48B4();
      sub_22DDF25AC(&qword_27DA37B30, MEMORY[0x277D216C8]);
      v39 = sub_22DEC4BF4();
      return v39 & 1;
    }

    goto LABEL_24;
  }

  sub_22DDF0028(v16, v12, &qword_27DA37D80, &unk_22DEC7960);
  if (v38(&v16[v37], 1, v4) == 1)
  {
    sub_22DE93130(v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
LABEL_24:
    sub_22DDEF284(v16, &qword_27DA37F30, &unk_22DECCF30);
    goto LABEL_25;
  }

  sub_22DE88A44(&v16[v37], v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  v41 = _s6NDOAPI36Com_Apple_Sse_Ocean_Ndo_Api_CTActionV2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_22DE93130(v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  sub_22DE93130(v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  sub_22DDEF284(v16, &qword_27DA37D80, &unk_22DEC7960);
  if (v41)
  {
    goto LABEL_28;
  }

LABEL_25:
  v39 = 0;
  return v39 & 1;
}

uint64_t sub_22DE930C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22DE93130(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_22DE93194()
{
  result = qword_28145C590;
  if (!qword_28145C590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28145C590);
  }

  return result;
}

unint64_t sub_22DE931EC()
{
  result = qword_28145C598;
  if (!qword_28145C598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28145C598);
  }

  return result;
}

unint64_t sub_22DE93244()
{
  result = qword_28145C588;
  if (!qword_28145C588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28145C588);
  }

  return result;
}

unint64_t sub_22DE9329C()
{
  result = qword_27DA38D00;
  if (!qword_27DA38D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA38D08, &qword_22DECD408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38D00);
  }

  return result;
}

void sub_22DE93C38()
{
  sub_22DE94424(319, &qword_28145AD38, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_22DEC48B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22DE93D08()
{
  sub_22DEC48B4();
  if (v0 <= 0x3F)
  {
    sub_22DE94424(319, &qword_28145AD88, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22DE93DD8()
{
  sub_22DEC48B4();
  if (v0 <= 0x3F)
  {
    sub_22DE94424(319, &qword_28145AD88, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22DE94424(319, &qword_28145AD28, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22DE93F08()
{
  sub_22DEC48B4();
  if (v0 <= 0x3F)
  {
    sub_22DE94424(319, &qword_28145AD88, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22DE93FE0()
{
  sub_22DE941E0(319, &qword_28145AD48, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CachedWarrantyKey, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_22DE941E0(319, &qword_28145AD60, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_22DE94424(319, &qword_28145AD38, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_22DEC48B4();
        if (v3 <= 0x3F)
        {
          sub_22DE941E0(319, qword_28145D228, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_UserData, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_22DE94424(319, &qword_28145AD00, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_22DE94424(319, &qword_28145AD88, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_22DE941E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22DE94244()
{
  sub_22DEC48B4();
  if (v0 <= 0x3F)
  {
    sub_22DE94424(319, &qword_28145AD88, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22DE941E0(319, qword_28145D3C0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22DE94334()
{
  sub_22DEC48B4();
  if (v0 <= 0x3F)
  {
    sub_22DE94424(319, &qword_28145C580, &type metadata for Com_Apple_Sse_Ocean_Ndo_Api_CTActionType, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22DE941E0(319, qword_28145C620, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22DE94424(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_22DE94474()
{
  sub_22DE624D8();
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

unint64_t sub_22DE94534()
{
  result = qword_28145C5A0;
  if (!qword_28145C5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28145C5A0);
  }

  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWResponse.data.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37DC0, &qword_22DECE2A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWResponse(0);
  sub_22DDF0028(v1 + *(v7 + 24), v6, &qword_27DA37DC0, &qword_22DECE2A0);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22DDF1788(v6, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse);
  }

  *a1 = MEMORY[0x277D84F90];
  v10 = a1 + *(v8 + 20);
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22DDEF284(v6, &qword_27DA37DC0, &qword_22DECE2A0);
  }

  return result;
}

NDOAPI::Com_Apple_Sse_Ocean_Ndo_Api_DWItemType_optional __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_DWItemType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x40302010005uLL >> (8 * rawValue);
  if (rawValue >= 6)
  {
    LOBYTE(v2) = 5;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_22DE947E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DEB59C0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWRequest.meta.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16 - v5;
  v7 = *(v1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWRequest(0) + 20));
  v8 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__meta;
  swift_beginAccess();
  sub_22DDF0028(v7 + v8, v6, &qword_27DA37A38, &unk_22DEC6570);
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_22DDF1788(v6, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v11 = (a1 + v9[5]);
  *v11 = 0;
  v11[1] = 0;
  v12 = a1 + v9[6];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v9[7];
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
  (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_22DDEF284(v6, &qword_27DA37A38, &unk_22DEC6570);
  }

  return result;
}

uint64_t sub_22DE94A2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DEA298C(a1, v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  v13 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWRequest(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWRequest._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = sub_22DEA2634(v16);
    *(a2 + v13) = v16;
  }

  sub_22DDF1788(v12, v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__meta;
  swift_beginAccess();
  sub_22DDF0208(v7, v16 + v20, &qword_27DA37A38, &unk_22DEC6570);
  return swift_endAccess();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWRequest.meta.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWRequest(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWRequest._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = sub_22DEA2634(v11);
    *(v2 + v8) = v11;
  }

  sub_22DDF1788(a1, v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  v15 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__meta;
  swift_beginAccess();
  sub_22DDF0208(v7, v11 + v16, &qword_27DA37A38, &unk_22DEC6570);
  return swift_endAccess();
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_DWRequest.meta.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570) - 8) + 64);
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
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
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
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWRequest(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__meta;
  swift_beginAccess();
  sub_22DDF0028(v16 + v17, v8, &qword_27DA37A38, &unk_22DEC6570);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v19 = (v14 + v9[5]);
    *v19 = 0;
    v19[1] = 0;
    v20 = v14 + v9[6];
    *v20 = 0;
    *(v20 + 8) = 1;
    v21 = v9[7];
    v22 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
    (*(*(v22 - 8) + 56))(v14 + v21, 1, 1, v22);
    if (v18(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA37A38, &unk_22DEC6570);
    }
  }

  else
  {
    sub_22DDF1788(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  }

  return sub_22DE9503C;
}

void sub_22DE9503C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_22DEA298C(*(v2 + 120), *(v2 + 112), type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWRequest._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = sub_22DEA2634(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_22DDF1788(v14, v18, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__meta;
    swift_beginAccess();
    sub_22DDF0208(v18, v7 + v19, &qword_27DA37A38, &unk_22DEC6570);
    swift_endAccess();
    sub_22DEA29F4(v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
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
      v26 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWRequest._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = sub_22DEA2634(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_22DDF1788(v13, v18, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__meta;
    swift_beginAccess();
    sub_22DDF0208(v18, v23 + v31, &qword_27DA37A38, &unk_22DEC6570);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWRequest.common.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A40, &unk_22DEC7330);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v19 - v5;
  v7 = *(v1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWRequest(0) + 20));
  v8 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__common;
  swift_beginAccess();
  sub_22DDF0028(v7 + v8, v6, &qword_27DA37A40, &unk_22DEC7330);
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_22DDF1788(v6, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
  }

  v11 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 1) = v11;
  *(a1 + 2) = v11;
  *(a1 + 3) = v11;
  *(a1 + 4) = v11;
  v12 = &a1[v9[9]];
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v13 = v9[10];
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_UserData(0);
  (*(*(v14 - 8) + 56))(&a1[v13], 1, 1, v14);
  v15 = &a1[v9[11]];
  *v15 = 0;
  v15[8] = 1;
  v16 = &a1[v9[12]];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = &a1[v9[13]];
  *v17 = 0;
  *(v17 + 1) = 0;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_22DDEF284(v6, &qword_27DA37A40, &unk_22DEC7330);
  }

  return result;
}

uint64_t sub_22DE954F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A40, &unk_22DEC7330);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DEA298C(a1, v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
  v13 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWRequest(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWRequest._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = sub_22DEA2634(v16);
    *(a2 + v13) = v16;
  }

  sub_22DDF1788(v12, v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__common;
  swift_beginAccess();
  sub_22DDF0208(v7, v16 + v20, &qword_27DA37A40, &unk_22DEC7330);
  return swift_endAccess();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWRequest.common.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A40, &unk_22DEC7330);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWRequest(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWRequest._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = sub_22DEA2634(v11);
    *(v2 + v8) = v11;
  }

  sub_22DDF1788(a1, v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
  v15 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__common;
  swift_beginAccess();
  sub_22DDF0208(v7, v11 + v16, &qword_27DA37A40, &unk_22DEC7330);
  return swift_endAccess();
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_DWRequest.common.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A40, &unk_22DEC7330) - 8) + 64);
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
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
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
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWRequest(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__common;
  swift_beginAccess();
  sub_22DDF0028(v16 + v17, v8, &qword_27DA37A40, &unk_22DEC7330);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    v19 = MEMORY[0x277D84F90];
    *v14 = MEMORY[0x277D84F90];
    *(v14 + 1) = v19;
    *(v14 + 2) = v19;
    *(v14 + 3) = v19;
    *(v14 + 4) = v19;
    v20 = &v14[v9[9]];
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v21 = v9[10];
    v22 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_UserData(0);
    (*(*(v22 - 8) + 56))(&v14[v21], 1, 1, v22);
    v23 = &v14[v9[11]];
    *v23 = 0;
    v23[8] = 1;
    v24 = &v14[v9[12]];
    *v24 = 0;
    *(v24 + 1) = 0;
    v25 = &v14[v9[13]];
    *v25 = 0;
    *(v25 + 1) = 0;
    if (v18(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA37A40, &unk_22DEC7330);
    }
  }

  else
  {
    sub_22DDF1788(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
  }

  return sub_22DE95B28;
}

void sub_22DE95B28(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_22DEA298C(*(v2 + 120), *(v2 + 112), type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWRequest._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = sub_22DEA2634(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_22DDF1788(v14, v18, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__common;
    swift_beginAccess();
    sub_22DDF0208(v18, v7 + v19, &qword_27DA37A40, &unk_22DEC7330);
    swift_endAccess();
    sub_22DEA29F4(v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
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
      v26 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWRequest._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = sub_22DEA2634(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_22DDF1788(v13, v18, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__common;
    swift_beginAccess();
    sub_22DDF0208(v18, v23 + v31, &qword_27DA37A40, &unk_22DEC7330);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

BOOL sub_22DE95DA8(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  v13 = *(v4 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWRequest(0) + 20));
  v14 = *a3;
  swift_beginAccess();
  sub_22DDF0028(v13 + v14, v12, a1, a2);
  v15 = a4(0);
  v16 = (*(*(v15 - 8) + 48))(v12, 1, v15) != 1;
  sub_22DDEF284(v12, a1, a2);
  return v16;
}

uint64_t sub_22DE95EF0(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v24 - v12;
  v14 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWRequest(0) + 20);
  v15 = *(v4 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v4 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWRequest._StorageClass(0);
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    v17 = sub_22DEA2634(v17);
    *(v9 + v14) = v17;
  }

  v21 = a3(0);
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  v22 = *a4;
  swift_beginAccess();
  sub_22DDF0208(v13, v17 + v22, a1, a2);
  return swift_endAccess();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWRequest.data.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38E00, &unk_22DECE2A8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWRequest(0) + 20));
  v8 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__data;
  swift_beginAccess();
  sub_22DDF0028(v7 + v8, v6, &qword_27DA38E00, &unk_22DECE2A8);
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_22DDF1788(v6, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest);
  }

  v11 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = sub_22DE0501C(v11);
  v12 = a1 + *(v9 + 24);
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_22DDEF284(v6, &qword_27DA38E00, &unk_22DECE2A8);
  }

  return result;
}

uint64_t sub_22DE961CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38E00, &unk_22DECE2A8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = *(a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWRequest(0) + 20));
  v9 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__data;
  swift_beginAccess();
  sub_22DDF0028(v8 + v9, v7, &qword_27DA38E00, &unk_22DECE2A8);
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return sub_22DDF1788(v7, a2, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest);
  }

  v12 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = sub_22DE0501C(v12);
  v13 = a2 + *(v10 + 24);
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return sub_22DDEF284(v7, &qword_27DA38E00, &unk_22DECE2A8);
  }

  return result;
}

uint64_t sub_22DE96360(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38E00, &unk_22DECE2A8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DEA298C(a1, v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest);
  v13 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWRequest(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWRequest._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = sub_22DEA2634(v16);
    *(a2 + v13) = v16;
  }

  sub_22DDF1788(v12, v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__data;
  swift_beginAccess();
  sub_22DDF0208(v7, v16 + v20, &qword_27DA38E00, &unk_22DECE2A8);
  return swift_endAccess();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWRequest.data.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38E00, &unk_22DECE2A8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWRequest(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWRequest._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = sub_22DEA2634(v11);
    *(v2 + v8) = v11;
  }

  sub_22DDF1788(a1, v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest);
  v15 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest(0);
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__data;
  swift_beginAccess();
  sub_22DDF0208(v7, v11 + v16, &qword_27DA38E00, &unk_22DECE2A8);
  return swift_endAccess();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = sub_22DE0501C(v2);
  v3 = a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest(0) + 24);
  return _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_DWRequest.data.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38E00, &unk_22DECE2A8) - 8) + 64);
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
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest(0);
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
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWRequest(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__data;
  swift_beginAccess();
  sub_22DDF0028(v16 + v17, v8, &qword_27DA38E00, &unk_22DECE2A8);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    v19 = MEMORY[0x277D84F90];
    *v14 = MEMORY[0x277D84F90];
    v14[1] = sub_22DE0501C(v19);
    v20 = v14 + *(v9 + 24);
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    if (v18(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA38E00, &unk_22DECE2A8);
    }
  }

  else
  {
    sub_22DDF1788(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest);
  }

  return sub_22DE9696C;
}

void sub_22DE9696C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_22DEA298C(*(v2 + 120), *(v2 + 112), type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWRequest._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = sub_22DEA2634(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_22DDF1788(v14, v18, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__data;
    swift_beginAccess();
    sub_22DDF0208(v18, v7 + v19, &qword_27DA38E00, &unk_22DECE2A8);
    swift_endAccess();
    sub_22DEA29F4(v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest);
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
      v26 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWRequest._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = sub_22DEA2634(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_22DDF1788(v13, v18, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__data;
    swift_beginAccess();
    sub_22DDF0208(v18, v23 + v31, &qword_27DA38E00, &unk_22DECE2A8);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWResponse.meta.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38088, &unk_22DEC8220);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWResponse(0);
  sub_22DDF0028(v1 + *(v7 + 20), v6, &qword_27DA38088, &unk_22DEC8220);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22DDF1788(v6, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
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

uint64_t sub_22DE96EB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38088, &unk_22DEC8220);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWResponse(0);
  sub_22DDF0028(a1 + *(v8 + 20), v7, &qword_27DA38088, &unk_22DEC8220);
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_22DDF1788(v7, a2, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
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

uint64_t sub_22DE97038(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DEA298C(a1, v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  v9 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWResponse(0) + 20);
  sub_22DDEF284(a2 + v9, &qword_27DA38088, &unk_22DEC8220);
  sub_22DDF1788(v8, a2 + v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWResponse.meta.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWResponse(0) + 20);
  sub_22DDEF284(v1 + v3, &qword_27DA38088, &unk_22DEC8220);
  sub_22DDF1788(a1, v1 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_DWResponse.meta.modify(void *a1))(uint64_t **a1, char a2)
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
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWResponse(0) + 20);
  *(v5 + 12) = v15;
  sub_22DDF0028(v1 + v15, v8, &qword_27DA38088, &unk_22DEC8220);
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
    sub_22DDF1788(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  }

  return sub_22DE9745C;
}

void sub_22DE9745C(uint64_t **a1, char a2)
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
    sub_22DEA298C((*a1)[5], v4, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
    sub_22DDEF284(v9 + v3, &qword_27DA38088, &unk_22DEC8220);
    sub_22DDF1788(v4, v9 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_22DEA29F4(v5, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  }

  else
  {
    sub_22DDEF284(v9 + v3, &qword_27DA38088, &unk_22DEC8220);
    sub_22DDF1788(v5, v9 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t sub_22DE9763C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37DC0, &qword_22DECE2A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWResponse(0);
  sub_22DDF0028(a1 + *(v8 + 24), v7, &qword_27DA37DC0, &qword_22DECE2A0);
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_22DDF1788(v7, a2, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse);
  }

  *a2 = MEMORY[0x277D84F90];
  v11 = a2 + *(v9 + 20);
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_22DDEF284(v7, &qword_27DA37DC0, &qword_22DECE2A0);
  }

  return result;
}

uint64_t sub_22DE977A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DEA298C(a1, v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse);
  v9 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWResponse(0) + 24);
  sub_22DDEF284(a2 + v9, &qword_27DA37DC0, &qword_22DECE2A0);
  sub_22DDF1788(v8, a2 + v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWResponse.data.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWResponse(0) + 24);
  sub_22DDEF284(v1 + v3, &qword_27DA37DC0, &qword_22DECE2A0);
  sub_22DDF1788(a1, v1 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse);
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v1 = a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse(0) + 20);
  return _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_DWResponse.data.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37DC0, &qword_22DECE2A0) - 8) + 64);
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
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse(0);
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
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWResponse(0) + 24);
  *(v5 + 12) = v15;
  sub_22DDF0028(v1 + v15, v8, &qword_27DA37DC0, &qword_22DECE2A0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    v17 = v14 + *(v9 + 20);
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA37DC0, &qword_22DECE2A0);
    }
  }

  else
  {
    sub_22DDF1788(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse);
  }

  return sub_22DE97C2C;
}

void sub_22DE97C2C(uint64_t **a1, char a2)
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
    sub_22DEA298C((*a1)[5], v4, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse);
    sub_22DDEF284(v9 + v3, &qword_27DA37DC0, &qword_22DECE2A0);
    sub_22DDF1788(v4, v9 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_22DEA29F4(v5, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse);
  }

  else
  {
    sub_22DDEF284(v9 + v3, &qword_27DA37DC0, &qword_22DECE2A0);
    sub_22DDF1788(v5, v9 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWResponse.init()@<X0>(uint64_t a1@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWResponse(0);
  v3 = *(v2 + 20);
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = *(v2 + 24);
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1 + v5, 1, 1, v6);
}

uint64_t sub_22DE97F54@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0) + 20));
  swift_beginAccess();
  if (*(v3 + 24))
  {
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_22DE97FC8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0) + 20);

  v6 = *(a2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v8 = sub_22DDEFB34(v8);
    *(a2 + v5) = v8;
  }

  swift_beginAccess();
  v12 = *(v8 + 24);
  *(v8 + 16) = v4;
  *(v8 + 24) = v3;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData.serialNumber.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v9 = sub_22DDEFB34(v9);
    *(v3 + v6) = v9;
  }

  swift_beginAccess();
  v13 = *(v9 + 24);
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData.serialNumber.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  if (*(v6 + 24))
  {
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return sub_22DE981DC;
}

void sub_22DE981DC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {
    v7 = *(*a1 + 80);

    v8 = *(v6 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 96);
      v12 = *(v2 + 88);
      v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v10 = sub_22DDEFB34(v10);
      *(v12 + v11) = v10;
    }

    swift_beginAccess();
    v16 = *(v10 + 24);
    *(v10 + 16) = v3;
    *(v10 + 24) = v5;

    v17 = *(v2 + 80);
  }

  else
  {
    v18 = *(v6 + v4);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v6 + v4);
    if ((v19 & 1) == 0)
    {
      v21 = *(v2 + 96);
      v22 = *(v2 + 88);
      v23 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData._StorageClass(0);
      v24 = *(v23 + 48);
      v25 = *(v23 + 52);
      swift_allocObject();
      v20 = sub_22DDEFB34(v20);
      *(v22 + v21) = v20;
    }

    swift_beginAccess();
    v26 = *(v20 + 24);
    *(v20 + 16) = v3;
    *(v20 + 24) = v5;
  }

  free(v2);
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData.clearSerialNumber()()
{
  v1 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0) + 20);
  v2 = *(v0 + v1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData._StorageClass(0);
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    v4 = sub_22DDEFB34(v4);
    *(v0 + v1) = v4;
  }

  swift_beginAccess();
  v8 = *(v4 + 24);
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
}

uint64_t sub_22DE983A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0) + 20));
  swift_beginAccess();
  if (*(v3 + 40))
  {
    v4 = *(v3 + 32);
    v5 = *(v3 + 40);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_22DE98414(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0) + 20);

  v6 = *(a2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v8 = sub_22DDEFB34(v8);
    *(a2 + v5) = v8;
  }

  swift_beginAccess();
  v12 = *(v8 + 40);
  *(v8 + 32) = v4;
  *(v8 + 40) = v3;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData.coverageLabel.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v9 = sub_22DDEFB34(v9);
    *(v3 + v6) = v9;
  }

  swift_beginAccess();
  v13 = *(v9 + 40);
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData.coverageLabel.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  if (*(v6 + 40))
  {
    v7 = *(v6 + 32);
    v8 = *(v6 + 40);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return sub_22DE98628;
}

void sub_22DE98628(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {
    v7 = *(*a1 + 80);

    v8 = *(v6 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 96);
      v12 = *(v2 + 88);
      v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v10 = sub_22DDEFB34(v10);
      *(v12 + v11) = v10;
    }

    swift_beginAccess();
    v16 = *(v10 + 40);
    *(v10 + 32) = v3;
    *(v10 + 40) = v5;

    v17 = *(v2 + 80);
  }

  else
  {
    v18 = *(v6 + v4);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v6 + v4);
    if ((v19 & 1) == 0)
    {
      v21 = *(v2 + 96);
      v22 = *(v2 + 88);
      v23 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData._StorageClass(0);
      v24 = *(v23 + 48);
      v25 = *(v23 + 52);
      swift_allocObject();
      v20 = sub_22DDEFB34(v20);
      *(v22 + v21) = v20;
    }

    swift_beginAccess();
    v26 = *(v20 + 40);
    *(v20 + 32) = v3;
    *(v20 + 40) = v5;
  }

  free(v2);
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData.clearCoverageLabel()()
{
  v1 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0) + 20);
  v2 = *(v0 + v1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData._StorageClass(0);
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    v4 = sub_22DDEFB34(v4);
    *(v0 + v1) = v4;
  }

  swift_beginAccess();
  v8 = *(v4 + 40);
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
}

uint64_t sub_22DE987EC(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0) + 20);
  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = sub_22DDEFB34(v7);
    *(a2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v7 + 48) = v3;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData.hasTheftAndLossBenefit_p.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = sub_22DDEFB34(v7);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v7 + 48) = a1 & 1;
  return result;
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData.hasTheftAndLossBenefit_p.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 48) & 1;
  return sub_22DE989BC;
}

void sub_22DE989BC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(v3 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v7 = sub_22DDEFB34(v7);
    *(v9 + v8) = v7;
  }

  swift_beginAccess();
  *(v7 + 48) = v4;

  free(v1);
}

BOOL Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData.hasHasTheftAndLossBenefit_p.getter()
{
  v1 = *(v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0) + 20));
  swift_beginAccess();
  return *(v1 + 48) != 2;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData.clearHasTheftAndLossBenefit_p()()
{
  v1 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0) + 20);
  v2 = *(v0 + v1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData._StorageClass(0);
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    v4 = sub_22DDEFB34(v4);
    *(v0 + v1) = v4;
  }

  swift_beginAccess();
  *(v4 + 48) = 2;
}

uint64_t sub_22DE98B60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38E08, &qword_22DECE2B8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DEA298C(a1, v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection);
  v13 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = sub_22DDEFB34(v16);
    *(a2 + v13) = v16;
  }

  sub_22DDF1788(v12, v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__settingsCoverageSection;
  swift_beginAccess();
  sub_22DDF0208(v7, v16 + v20, &qword_27DA38E08, &qword_22DECE2B8);
  return swift_endAccess();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData.settingsCoverageSection.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38E08, &qword_22DECE2B8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = sub_22DDEFB34(v11);
    *(v2 + v8) = v11;
  }

  sub_22DDF1788(a1, v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection);
  v15 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection(0);
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__settingsCoverageSection;
  swift_beginAccess();
  sub_22DDF0208(v7, v11 + v16, &qword_27DA38E08, &qword_22DECE2B8);
  return swift_endAccess();
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData.settingsCoverageSection.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38E08, &qword_22DECE2B8) - 8) + 64);
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
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection(0);
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
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__settingsCoverageSection;
  swift_beginAccess();
  sub_22DDF0028(v16 + v17, v8, &qword_27DA38E08, &qword_22DECE2B8);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v19 = (v14 + *(v9 + 20));
    *v19 = 0;
    v19[1] = 0;
    v20 = *(v9 + 24);
    v21 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer(0);
    (*(*(v21 - 8) + 56))(v14 + v20, 1, 1, v21);
    if (v18(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA38E08, &qword_22DECE2B8);
    }
  }

  else
  {
    sub_22DDF1788(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection);
  }

  return sub_22DE99188;
}

void sub_22DE99188(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_22DEA298C(*(v2 + 120), *(v2 + 112), type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = sub_22DDEFB34(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_22DDF1788(v14, v18, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__settingsCoverageSection;
    swift_beginAccess();
    sub_22DDF0208(v18, v7 + v19, &qword_27DA38E08, &qword_22DECE2B8);
    swift_endAccess();
    sub_22DEA29F4(v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection);
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
      v26 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = sub_22DDEFB34(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_22DDF1788(v13, v18, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__settingsCoverageSection;
    swift_beginAccess();
    sub_22DDF0208(v18, v23 + v31, &qword_27DA38E08, &qword_22DECE2B8);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

BOOL Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData.hasSettingsCoverageSection.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38E08, &qword_22DECE2B8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0) + 20));
  v6 = OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__settingsCoverageSection;
  swift_beginAccess();
  sub_22DDF0028(v5 + v6, v4, &qword_27DA38E08, &qword_22DECE2B8);
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_22DDEF284(v4, &qword_27DA38E08, &qword_22DECE2B8);
  return v8;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData.clearSettingsCoverageSection()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38E08, &qword_22DECE2B8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - v4;
  v6 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v9 = sub_22DDEFB34(v9);
    *(v1 + v6) = v9;
  }

  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection(0);
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__settingsCoverageSection;
  swift_beginAccess();
  sub_22DDF0208(v5, v9 + v14, &qword_27DA38E08, &qword_22DECE2B8);
  swift_endAccess();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData.foregroundCacheTtl.getter()
{
  v1 = (*(v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0) + 20)) + OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__foregroundCacheTtl);
  swift_beginAccess();
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t sub_22DE996A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0) + 20)) + OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__foregroundCacheTtl;
  result = swift_beginAccess();
  v5 = *v3;
  if (*(v3 + 8))
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_22DE99710(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0) + 20);
  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = sub_22DDEFB34(v7);
    *(a2 + v4) = v7;
  }

  v11 = v7 + OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__foregroundCacheTtl;
  result = swift_beginAccess();
  *v11 = v3;
  *(v11 + 8) = 0;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData.foregroundCacheTtl.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = sub_22DDEFB34(v7);
    *(v2 + v4) = v7;
  }

  v11 = v7 + OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__foregroundCacheTtl;
  result = swift_beginAccess();
  *v11 = a1;
  *(v11 + 8) = 0;
  return result;
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData.foregroundCacheTtl.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__foregroundCacheTtl;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_22DE99910;
}

void sub_22DE99910(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v7 = sub_22DDEFB34(v7);
    *(v9 + v8) = v7;
  }

  v13 = v7 + OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__foregroundCacheTtl;
  swift_beginAccess();
  *v13 = v2;
  *(v13 + 8) = 0;

  free(v1);
}

BOOL Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData.hasForegroundCacheTtl.getter()
{
  v1 = *(v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0) + 20)) + OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__foregroundCacheTtl;
  swift_beginAccess();
  return (*(v1 + 8) & 1) == 0;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData.clearForegroundCacheTtl()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v5 = sub_22DDEFB34(v5);
    *(v1 + v2) = v5;
  }

  v9 = v5 + OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__foregroundCacheTtl;
  swift_beginAccess();
  *v9 = 0;
  *(v9 + 8) = 1;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData.coverageHash.getter()
{
  v1 = (*(v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0) + 20)) + OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__coverageHash);
  swift_beginAccess();
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_22DE99B64@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (*(a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0) + 20)) + OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__coverageHash);
  swift_beginAccess();
  if (v3[1])
  {
    v4 = *v3;
    v5 = v3[1];
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_22DE99BE4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0) + 20);

  v6 = *(a2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v8 = sub_22DDEFB34(v8);
    *(a2 + v5) = v8;
  }

  v12 = (v8 + OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__coverageHash);
  swift_beginAccess();
  v13 = v12[1];
  *v12 = v4;
  v12[1] = v3;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData.coverageHash.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v9 = sub_22DDEFB34(v9);
    *(v3 + v6) = v9;
  }

  v13 = (v9 + OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__coverageHash);
  swift_beginAccess();
  v14 = v13[1];
  *v13 = a1;
  v13[1] = a2;
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData.coverageHash.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__coverageHash);
  swift_beginAccess();
  if (v6[1])
  {
    v7 = *v6;
    v8 = v6[1];
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return sub_22DE99E1C;
}

void sub_22DE99E1C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {
    v7 = *(*a1 + 80);

    v8 = *(v6 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 96);
      v12 = *(v2 + 88);
      v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v10 = sub_22DDEFB34(v10);
      *(v12 + v11) = v10;
    }

    v16 = (v10 + OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__coverageHash);
    swift_beginAccess();
    v17 = v16[1];
    *v16 = v3;
    v16[1] = v5;

    v18 = *(v2 + 80);
  }

  else
  {
    v19 = *(v6 + v4);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v6 + v4);
    if ((v20 & 1) == 0)
    {
      v22 = *(v2 + 96);
      v23 = *(v2 + 88);
      v24 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData._StorageClass(0);
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      v21 = sub_22DDEFB34(v21);
      *(v23 + v22) = v21;
    }

    v27 = (v21 + OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__coverageHash);
    swift_beginAccess();
    v28 = v27[1];
    *v27 = v3;
    v27[1] = v5;
  }

  free(v2);
}

BOOL Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData.hasCoverageHash.getter()
{
  v1 = *(v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0) + 20)) + OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__coverageHash;
  swift_beginAccess();
  return *(v1 + 8) != 0;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData.clearCoverageHash()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v5 = sub_22DDEFB34(v5);
    *(v1 + v2) = v5;
  }

  v9 = (v5 + OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__coverageHash);
  swift_beginAccess();
  v10 = v9[1];
  *v9 = 0;
  v9[1] = 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData.sections.getter()
{
  v1 = *(v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0) + 20));
  v2 = OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__sections;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_22DE9A0C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0) + 20));
  v4 = OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__sections;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_22DE9A12C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0) + 20);

  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = sub_22DDEFB34(v7);
    *(a2 + v4) = v7;
  }

  v11 = OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__sections;
  swift_beginAccess();
  v12 = *(v7 + v11);
  *(v7 + v11) = v3;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData.sections.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = sub_22DDEFB34(v7);
    *(v2 + v4) = v7;
  }

  v11 = OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__sections;
  swift_beginAccess();
  v12 = *(v7 + v11);
  *(v7 + v11) = a1;
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData.sections.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__sections;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return sub_22DE9A32C;
}

void sub_22DE9A32C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 72);
  v3 = *v4;
  v5 = *(*a1 + 88);
  v6 = *(*a1 + 80);
  if (a2)
  {
    v7 = *(*a1 + 72);

    v8 = *(v6 + v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v6 + v5);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 88);
      v12 = *(v2 + 80);
      v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v10 = sub_22DDEFB34(v10);
      *(v12 + v11) = v10;
    }

    v16 = OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__sections;
    swift_beginAccess();
    v17 = *(v10 + v16);
    *(v10 + v16) = v3;

    v18 = *v4;
  }

  else
  {
    v19 = *(v6 + v5);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v6 + v5);
    if ((v20 & 1) == 0)
    {
      v22 = *(v2 + 88);
      v23 = *(v2 + 80);
      v24 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData._StorageClass(0);
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      v21 = sub_22DDEFB34(v21);
      *(v23 + v22) = v21;
    }

    v27 = OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__sections;
    swift_beginAccess();
    v28 = *(v21 + v27);
    *(v21 + v27) = v3;
  }

  free(v2);
}

uint64_t sub_22DE9A4C4@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v8 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a4 + v8) = *a3;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection.coverageExpirationLabel.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection(0) + 20);
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

uint64_t sub_22DE9A644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38E10, &qword_22DECE2C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection(0);
  sub_22DDF0028(a1 + *(v8 + 24), v7, &qword_27DA38E10, &qword_22DECE2C0);
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_22DDF1788(v7, a2, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v11 = v9[5];
  v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  (*(*(v12 - 8) + 56))(a2 + v11, 1, 1, v12);
  v13 = (a2 + v9[6]);
  *v13 = 0;
  v13[1] = 0;
  v14 = (a2 + v9[7]);
  *v14 = 0;
  v14[1] = 0;
  v15 = a2 + v9[8];
  *v15 = 0;
  *(v15 + 8) = 1;
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_22DDEF284(v7, &qword_27DA38E10, &qword_22DECE2C0);
  }

  return result;
}

uint64_t sub_22DE9A814(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DEA298C(a1, v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer);
  v9 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection(0) + 24);
  sub_22DDEF284(a2 + v9, &qword_27DA38E10, &qword_22DECE2C0);
  sub_22DDF1788(v8, a2 + v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection.offer.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection(0) + 24);
  sub_22DDEF284(v1 + v3, &qword_27DA38E10, &qword_22DECE2C0);
  sub_22DDF1788(a1, v1 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer);
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer.init()@<X0>(uint64_t a1@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer(0);
  v3 = v2[5];
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  result = (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v6 = (a1 + v2[6]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a1 + v2[7]);
  *v7 = 0;
  v7[1] = 0;
  v8 = a1 + v2[8];
  *v8 = 0;
  *(v8 + 8) = 1;
  return result;
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection.offer.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38E10, &qword_22DECE2C0) - 8) + 64);
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
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer(0);
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
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection(0) + 24);
  *(v5 + 12) = v15;
  sub_22DDF0028(v1 + v15, v8, &qword_27DA38E10, &qword_22DECE2C0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v17 = v9[5];
    v18 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    v19 = (v14 + v9[6]);
    *v19 = 0;
    v19[1] = 0;
    v20 = (v14 + v9[7]);
    *v20 = 0;
    v20[1] = 0;
    v21 = v14 + v9[8];
    *v21 = 0;
    *(v21 + 8) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA38E10, &qword_22DECE2C0);
    }
  }

  else
  {
    sub_22DDF1788(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer);
  }

  return sub_22DE9AD24;
}

void sub_22DE9AD24(uint64_t **a1, char a2)
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
    sub_22DEA298C((*a1)[5], v4, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer);
    sub_22DDEF284(v9 + v3, &qword_27DA38E10, &qword_22DECE2C0);
    sub_22DDF1788(v4, v9 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_22DEA29F4(v5, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer);
  }

  else
  {
    sub_22DDEF284(v9 + v3, &qword_27DA38E10, &qword_22DECE2C0);
    sub_22DDF1788(v5, v9 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL sub_22DE9AEC8(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0);
  sub_22DDF0028(v4 + *(v13 + 24), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  sub_22DDEF284(v12, a1, a2);
  return v15;
}

uint64_t sub_22DE9B000(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 24);
  sub_22DDEF284(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t sub_22DE9B0CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer(0);
  sub_22DDF0028(a1 + *(v8 + 20), v7, &qword_27DA37D88, &unk_22DEC8210);
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_22DDF1788(v7, a2, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v11 = (a2 + v9[5]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a2 + v9[6]);
  *v12 = 0;
  v12[1] = 0;
  v13 = v9[7];
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  (*(*(v14 - 8) + 56))(a2 + v13, 1, 1, v14);
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_22DDEF284(v7, &qword_27DA37D88, &unk_22DEC8210);
  }

  return result;
}

uint64_t sub_22DE9B280(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DEA298C(a1, v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  v9 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer(0) + 20);
  sub_22DDEF284(a2 + v9, &qword_27DA37D88, &unk_22DEC8210);
  sub_22DDF1788(v8, a2 + v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer.link.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer(0) + 20);
  sub_22DDEF284(v1 + v3, &qword_27DA37D88, &unk_22DEC8210);
  sub_22DDF1788(a1, v1 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer.link.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210) - 8) + 64);
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
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
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
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer(0) + 20);
  *(v5 + 12) = v15;
  sub_22DDF0028(v1 + v15, v8, &qword_27DA37D88, &unk_22DEC8210);
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
    v19 = v9[7];
    v20 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    if (v16(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA37D88, &unk_22DEC8210);
    }
  }

  else
  {
    sub_22DDF1788(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  }

  return sub_22DE9B6D4;
}

void sub_22DE9B6D4(uint64_t **a1, char a2)
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
    sub_22DEA298C((*a1)[5], v4, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    sub_22DDEF284(v9 + v3, &qword_27DA37D88, &unk_22DEC8210);
    sub_22DDF1788(v4, v9 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_22DEA29F4(v5, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  }

  else
  {
    sub_22DDEF284(v9 + v3, &qword_27DA37D88, &unk_22DEC8210);
    sub_22DDF1788(v5, v9 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL sub_22DE9B878(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0);
  sub_22DDF0028(v4 + *(v13 + 20), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  sub_22DDEF284(v12, a1, a2);
  return v15;
}

uint64_t sub_22DE9B9B0(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 20);
  sub_22DDEF284(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer.singularFooter.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer(0) + 24);
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

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer.pluralFooter.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer(0) + 28);
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

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer.expiration.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer(0) + 32));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer.expiration.setter(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer.expiration.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer(0) + 32);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_22DE39A60;
}