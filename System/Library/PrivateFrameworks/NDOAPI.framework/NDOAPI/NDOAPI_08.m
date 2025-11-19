uint64_t sub_22DEB6B1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DEB6B80(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBody.hasMeta.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38088, &unk_22DEC8220);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBody(0);
  sub_22DEB640C(v0 + *(v5 + 24), v4);
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_22DDEF284(v4, &qword_27DA38088, &unk_22DEC8220);
  return v7;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBody.clearMeta()()
{
  v1 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBody(0) + 24);
  sub_22DDEF284(v0 + v1, &qword_27DA38088, &unk_22DEC8220);
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBody.errors.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBody.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBody(0) + 20);
  v4 = sub_22DEC48B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBody.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBody(0) + 20);
  v4 = sub_22DEC48B4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBody.init()@<X0>(char *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBody(0);
  v3 = &a1[*(v2 + 20)];
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v4 = *(v2 + 24);
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

uint64_t sub_22DEB6F7C()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA39028);
  __swift_project_value_buffer(v0, qword_27DA39028);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_22DEC7C40;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "UNKNOWN";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_22DEC4AE4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "INTERNAL";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "EXTERNAL";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "INVALID_REQ";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "INVALID_CONFIG";
  *(v14 + 8) = 14;
  *(v14 + 16) = 2;
  v8();
  return sub_22DEC4AF4();
}

uint64_t sub_22DEB726C()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA39040);
  __swift_project_value_buffer(v0, qword_27DA39040);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC77C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "error_token";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "event_token";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "error_type";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse.decodeMessage<A>(decoder:)()
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
        sub_22DEB756C();
        break;
      case 2:
        v4 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse(0) + 24);
LABEL_10:
        v0 = 0;
        sub_22DEC49C4();
        break;
      case 1:
        v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse(0) + 20);
        goto LABEL_10;
    }
  }
}

uint64_t sub_22DEB756C()
{
  v0 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse(0) + 28);
  sub_22DEB8EF0();
  return sub_22DEC4984();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse.traverse<A>(visitor:)()
{
  result = sub_22DEB7668(v0);
  if (!v1)
  {
    sub_22DEB76E0(v0);
    sub_22DEB7758(v0);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DEB7668(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse(0);
  v3 = (a1 + *(result + 20));
  if (v3[1])
  {
    v4 = *v3;
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DEB76E0(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse(0);
  v3 = (a1 + *(result + 24));
  if (v3[1])
  {
    v4 = *v3;
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DEB7758(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse(0);
  if (*(a1 + *(result + 28)) != 5)
  {
    v3 = *(a1 + *(result + 28));
    sub_22DEB8EF0();
    return sub_22DEC4A74();
  }

  return result;
}

uint64_t sub_22DEB7830@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  *(a2 + a1[7]) = 5;
  return result;
}

uint64_t sub_22DEB78C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DEB887C(&qword_27DA39110, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DEB7964(uint64_t a1)
{
  v2 = sub_22DEB887C(&qword_27DA39078, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DEB79D0()
{
  sub_22DEB887C(&qword_27DA39078, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse);

  return sub_22DEC4A44();
}

uint64_t sub_22DEB7A6C()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA39058);
  __swift_project_value_buffer(v0, qword_27DA39058);
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
  *v10 = "errors";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBody.decodeMessage<A>(decoder:)()
{
  result = sub_22DEC4954();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_22DEB7D58();
      }

      else if (result == 2)
      {
        type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse(0);
        sub_22DEB887C(&qword_27DA39078, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse);
        sub_22DEC49D4();
      }

      result = sub_22DEC4954();
    }
  }

  return result;
}

uint64_t sub_22DEB7D58()
{
  v0 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBody(0) + 24);
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  sub_22DEB887C(&qword_28145C498, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  return sub_22DEC49E4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBody.traverse<A>(visitor:)()
{
  v2 = v0;
  result = sub_22DEB7F08(v0);
  if (!v1)
  {
    v4 = *v0;
    if (*(*v2 + 16))
    {
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse(0);
      sub_22DEB887C(&qword_27DA39078, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse);
      sub_22DEC4AC4();
    }

    v5 = v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBody(0) + 20);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DEB7F08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38088, &unk_22DEC8220);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v13 - v4;
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBody(0);
  sub_22DEB640C(a1 + *(v11 + 24), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_22DDEF284(v5, &qword_27DA38088, &unk_22DEC8220);
  }

  sub_22DEB647C(v5, v10);
  sub_22DEB887C(&qword_28145C498, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  sub_22DEC4AD4();
  return sub_22DEB6B80(v10);
}

uint64_t sub_22DEB8134(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_22DEC5184();
  a1(0);
  sub_22DEB887C(a2, a3);
  sub_22DEC4BE4();
  return sub_22DEC51A4();
}

uint64_t sub_22DEB81BC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v4 = &a2[*(a1 + 20)];
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_22DEB8294(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DEB887C(&qword_27DA39108, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBody);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DEB8334(uint64_t a1)
{
  v2 = sub_22DEB887C(&qword_27DA390C8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBody);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DEB83A0()
{
  sub_22DEB887C(&qword_27DA390C8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBody);

  return sub_22DEC4A44();
}

uint64_t _s6NDOAPI45Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBodyV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38088, &unk_22DEC8220);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38350, &unk_22DED04F0);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - v16;
  v18 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBody(0);
  v19 = *(v18 + 24);
  v20 = *(v14 + 56);
  sub_22DEB640C(a1 + v19, v17);
  sub_22DEB640C(a2 + v19, &v17[v20]);
  v21 = *(v5 + 48);
  if (v21(v17, 1, v4) == 1)
  {
    if (v21(&v17[v20], 1, v4) == 1)
    {
      sub_22DDEF284(v17, &qword_27DA38088, &unk_22DEC8220);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_22DEB640C(v17, v12);
  if (v21(&v17[v20], 1, v4) == 1)
  {
    sub_22DEB6B80(v12);
LABEL_6:
    sub_22DDEF284(v17, &qword_27DA38350, &unk_22DED04F0);
LABEL_10:
    v24 = 0;
    return v24 & 1;
  }

  sub_22DEB647C(&v17[v20], v8);
  v22 = static Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta.== infix(_:_:)(v12, v8);
  sub_22DEB6B80(v8);
  sub_22DEB6B80(v12);
  sub_22DDEF284(v17, &qword_27DA38088, &unk_22DEC8220);
  if ((v22 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((sub_22DE2F694(*a1, *a2) & 1) == 0)
  {
    goto LABEL_10;
  }

  v23 = *(v18 + 20);
  sub_22DEC48B4();
  sub_22DEB887C(&qword_27DA37B30, MEMORY[0x277D216C8]);
  v24 = sub_22DEC4BF4();
  return v24 & 1;
}

uint64_t _s6NDOAPI41Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse(0);
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
  if (!v15)
  {
    if (!v17)
    {
      goto LABEL_19;
    }

    return 0;
  }

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

LABEL_19:
  v21 = v4[7];
  v22 = *(a1 + v21);
  v23 = *(a2 + v21);
  if (v22 == 5)
  {
    if (v23 != 5)
    {
      return 0;
    }
  }

  else if (v22 != v23)
  {
    return 0;
  }

  sub_22DEC48B4();
  sub_22DEB887C(&qword_27DA37B30, MEMORY[0x277D216C8]);
  return sub_22DEC4BF4() & 1;
}

uint64_t sub_22DEB887C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22DEB88C8()
{
  result = qword_27DA39088;
  if (!qword_27DA39088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA39088);
  }

  return result;
}

unint64_t sub_22DEB8920()
{
  result = qword_27DA39090;
  if (!qword_27DA39090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA39090);
  }

  return result;
}

unint64_t sub_22DEB8978()
{
  result = qword_27DA39098;
  if (!qword_27DA39098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA39098);
  }

  return result;
}

unint64_t sub_22DEB89D0()
{
  result = qword_27DA390A0;
  if (!qword_27DA390A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA390A8, &qword_22DED00B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA390A0);
  }

  return result;
}

void sub_22DEB8CAC()
{
  sub_22DEC48B4();
  if (v0 <= 0x3F)
  {
    sub_22DE33AAC(319, &qword_28145AD88);
    if (v1 <= 0x3F)
    {
      sub_22DE33AAC(319, &qword_27DA390E8);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22DEB8D90()
{
  sub_22DEB8E8C(319, &qword_27DA39100, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_22DEC48B4();
    if (v1 <= 0x3F)
    {
      sub_22DEB8E8C(319, qword_28145C448, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22DEB8E8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_22DEB8EF0()
{
  result = qword_27DA39118;
  if (!qword_27DA39118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA39118);
  }

  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.validUntil.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 44));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

NDOAPI::Com_Apple_Sse_Ocean_Ndo_Api_Environment_optional __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_Environment.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x40302010005uLL >> (8 * rawValue);
  if (rawValue >= 6)
  {
    LOBYTE(v2) = 5;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_22DEB905C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DEC0570();

  return MEMORY[0x28217E238](a1, a2, v4);
}

NDOAPI::Com_Apple_Sse_Ocean_Ndo_Api_ApiUrlTypes_optional __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_ApiUrlTypes.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x605040302010007uLL >> (8 * rawValue);
  if (rawValue >= 8)
  {
    LOBYTE(v2) = 7;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_22DEB9110(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DEC051C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

NDOAPI::Com_Apple_Sse_Ocean_Ndo_Api_FeatureFlags_optional __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_FeatureFlags.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue == 1)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_FeatureFlags.rawValue.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_22DEB91BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DEC04C8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults.http500RetryDelay.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults(0) + 20));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults.http500RetryDelay.setter(int a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults.http500RetryDelay.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_22DE5DDF0;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults.clearHTTP500RetryDelay()()
{
  v1 = v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults.init()@<X0>(uint64_t a1@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults(0);
  v3 = a1 + *(result + 20);
  *v3 = 0;
  *(v3 + 4) = 1;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest.meta.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest(0);
  sub_22DDF0028(v1 + *(v7 + 20), v6, &qword_27DA37A38, &unk_22DEC6570);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22DEBA0A8(v6, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v10 = (a1 + v8[5]);
  *v10 = 0;
  v10[1] = 0;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = v8[7];
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22DDEF284(v6, &qword_27DA37A38, &unk_22DEC6570);
  }

  return result;
}

uint64_t sub_22DEB95AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest(0);
  sub_22DDF0028(a1 + *(v8 + 20), v7, &qword_27DA37A38, &unk_22DEC6570);
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_22DEBA0A8(v7, a2, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v11 = (a2 + v9[5]);
  *v11 = 0;
  v11[1] = 0;
  v12 = a2 + v9[6];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v9[7];
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
  (*(*(v14 - 8) + 56))(a2 + v13, 1, 1, v14);
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_22DDEF284(v7, &qword_27DA37A38, &unk_22DEC6570);
  }

  return result;
}

uint64_t sub_22DEB9768(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DEBA6D4(a1, v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  v9 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest(0) + 20);
  sub_22DDEF284(a2 + v9, &qword_27DA37A38, &unk_22DEC6570);
  sub_22DEBA0A8(v8, a2 + v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest.meta.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest(0) + 20);
  sub_22DDEF284(v1 + v3, &qword_27DA37A38, &unk_22DEC6570);
  sub_22DEBA0A8(a1, v1 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest.meta.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570) - 8) + 64);
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
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
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
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest(0) + 20);
  *(v5 + 12) = v15;
  sub_22DDF0028(v1 + v15, v8, &qword_27DA37A38, &unk_22DEC6570);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v17 = (v14 + v9[5]);
    *v17 = 0;
    v17[1] = 0;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v9[7];
    v20 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    if (v16(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA37A38, &unk_22DEC6570);
    }
  }

  else
  {
    sub_22DEBA0A8(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  }

  return sub_22DEB9BB8;
}

BOOL Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest.hasMeta.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest(0);
  sub_22DDF0028(v0 + *(v5 + 20), v4, &qword_27DA37A38, &unk_22DEC6570);
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_22DDEF284(v4, &qword_27DA37A38, &unk_22DEC6570);
  return v7;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest.clearMeta()()
{
  v1 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest(0) + 20);
  sub_22DDEF284(v0 + v1, &qword_27DA37A38, &unk_22DEC6570);
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest.env.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest(0);
  v4 = *(v1 + *(result + 24));
  if (v4 == 5)
  {
    LOBYTE(v4) = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest.env.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest.env.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest(0) + 24);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 5)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_22DE2CCE4;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest.init()@<X0>(uint64_t a1@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest(0);
  v3 = *(v2 + 20);
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  result = (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  *(a1 + *(v2 + 24)) = 5;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.meta.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38088, &unk_22DEC8220);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
  sub_22DDF0028(v1 + *(v7 + 36), v6, &qword_27DA38088, &unk_22DEC8220);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22DEBA0A8(v6, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
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

uint64_t sub_22DEBA0A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22DEBA110@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38088, &unk_22DEC8220);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
  sub_22DDF0028(a1 + *(v8 + 36), v7, &qword_27DA38088, &unk_22DEC8220);
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_22DEBA0A8(v7, a2, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
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

uint64_t sub_22DEBA294(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DEBA6D4(a1, v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  v9 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 36);
  sub_22DDEF284(a2 + v9, &qword_27DA38088, &unk_22DEC8220);
  sub_22DEBA0A8(v8, a2 + v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.meta.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 36);
  sub_22DDEF284(v1 + v3, &qword_27DA38088, &unk_22DEC8220);
  sub_22DEBA0A8(a1, v1 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.meta.modify(void *a1))(uint64_t **a1, char a2)
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
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 36);
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
    sub_22DEBA0A8(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  }

  return sub_22DEBA6AC;
}

uint64_t sub_22DEBA6D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22DEBA73C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.hasMeta.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38088, &unk_22DEC8220);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
  sub_22DDF0028(v0 + *(v5 + 36), v4, &qword_27DA38088, &unk_22DEC8220);
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_22DDEF284(v4, &qword_27DA38088, &unk_22DEC8220);
  return v7;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.clearMeta()()
{
  v1 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 36);
  sub_22DDEF284(v0 + v1, &qword_27DA38088, &unk_22DEC8220);
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.configID.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 40));
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

uint64_t sub_22DEBA970@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 40));
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

uint64_t sub_22DEBA9D4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 40));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.configID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 40));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.configID.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 40);
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

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.clearConfigID()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 40));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.validUntil.setter(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.validUntil.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 44);
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

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.clearValidUntil()()
{
  v1 = v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 44);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.apiUrls.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.webUrls.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.featureFlags.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.universalLinkSheetCodes.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.appDefaults.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA39180, &qword_22DED0500);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
  sub_22DDF0028(v1 + *(v7 + 48), v6, &qword_27DA39180, &qword_22DED0500);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22DEBA0A8(v6, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v10 = a1 + *(v8 + 20);
  *v10 = 0;
  *(v10 + 4) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22DDEF284(v6, &qword_27DA39180, &qword_22DED0500);
  }

  return result;
}

uint64_t sub_22DEBAF40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA39180, &qword_22DED0500);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
  sub_22DDF0028(a1 + *(v8 + 48), v7, &qword_27DA39180, &qword_22DED0500);
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_22DEBA0A8(v7, a2, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v11 = a2 + *(v9 + 20);
  *v11 = 0;
  *(v11 + 4) = 1;
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_22DDEF284(v7, &qword_27DA39180, &qword_22DED0500);
  }

  return result;
}

uint64_t sub_22DEBB0AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DEBA6D4(a1, v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults);
  v9 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 48);
  sub_22DDEF284(a2 + v9, &qword_27DA39180, &qword_22DED0500);
  sub_22DEBA0A8(v8, a2 + v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.appDefaults.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 48);
  sub_22DDEF284(v1 + v3, &qword_27DA39180, &qword_22DED0500);
  sub_22DEBA0A8(a1, v1 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults);
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.appDefaults.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA39180, &qword_22DED0500) - 8) + 64);
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
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults(0);
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
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 48);
  *(v5 + 12) = v15;
  sub_22DDF0028(v1 + v15, v8, &qword_27DA39180, &qword_22DED0500);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v17 = v14 + *(v9 + 20);
    *v17 = 0;
    *(v17 + 4) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA39180, &qword_22DED0500);
    }
  }

  else
  {
    sub_22DEBA0A8(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults);
  }

  return sub_22DEBB4AC;
}

void sub_22DEBB4D4(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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
    sub_22DEBA6D4(v11, v10, a5);
    sub_22DDEF284(v14 + v9, a3, a4);
    sub_22DEBA0A8(v10, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
    sub_22DEBA73C(v11, a5);
  }

  else
  {
    sub_22DDEF284(v14 + v9, a3, a4);
    sub_22DEBA0A8(v11, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
  }

  free(v11);
  free(v10);
  free(v15);

  free(v8);
}

BOOL Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.hasAppDefaults.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA39180, &qword_22DED0500);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
  sub_22DDF0028(v0 + *(v5 + 48), v4, &qword_27DA39180, &qword_22DED0500);
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_22DDEF284(v4, &qword_27DA39180, &qword_22DED0500);
  return v7;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.clearAppDefaults()()
{
  v1 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 48);
  sub_22DDEF284(v0 + v1, &qword_27DA39180, &qword_22DED0500);
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.coverageCentralAmsURL.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 52));
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

uint64_t sub_22DEBB7E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 52));
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

uint64_t sub_22DEBB844(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 52));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.coverageCentralAmsURL.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 52));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.coverageCentralAmsURL.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 52);
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

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.clearCoverageCentralAmsURL()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 52));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.coverageDetailsAmsURL.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 56));
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

uint64_t sub_22DEBBA1C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 56));
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

uint64_t sub_22DEBBA80(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 56));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.coverageDetailsAmsURL.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 56));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.coverageDetailsAmsURL.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 56);
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

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.clearCoverageDetailsAmsURL()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 56));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.universalLinkSheetAmsURL.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 60));
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

uint64_t sub_22DEBBC58@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 60));
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

uint64_t sub_22DEBBCBC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 60));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.universalLinkSheetAmsURL.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 60));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.universalLinkSheetAmsURL.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 60);
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

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.clearUniversalLinkSheetAmsURL()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 60));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 32);
  v4 = sub_22DEC48B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 32);
  v4 = sub_22DEC48B4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.init()@<X0>(unint64_t *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = sub_22DE0501C(MEMORY[0x277D84F90]);
  a1[1] = sub_22DE0501C(v2);
  a1[2] = sub_22DE05DA0(v2);
  a1[3] = v2;
  v3 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
  v4 = a1 + v3[8];
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v5 = v3[9];
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  v7 = (a1 + v3[10]);
  *v7 = 0;
  v7[1] = 0;
  v8 = a1 + v3[11];
  *v8 = 0;
  v8[8] = 1;
  v9 = v3[12];
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults(0);
  result = (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  v12 = (a1 + v3[13]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a1 + v3[14]);
  *v13 = 0;
  v13[1] = 0;
  v14 = (a1 + v3[15]);
  *v14 = 0;
  v14[1] = 0;
  return result;
}

uint64_t sub_22DEBC0B8()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA39120);
  __swift_project_value_buffer(v0, qword_27DA39120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_22DEC7C40;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "PROD";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_22DEC4AE4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "PILOT";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "UAT";
  *(v11 + 1) = 3;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "IT";
  *(v13 + 1) = 2;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "DEV";
  *(v14 + 8) = 3;
  *(v14 + 16) = 2;
  v8();
  return sub_22DEC4AF4();
}

uint64_t sub_22DEBC384()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA39138);
  __swift_project_value_buffer(v0, qword_27DA39138);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC81E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "LOGGING";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "CONFIG";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "CHECK_IN";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "ACKNOWLEDGE";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "DEVICE_WARRANTY";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "COVERAGE_CENTRAL";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "DEVICE_MANAGEMENT";
  *(v20 + 1) = 17;
  v20[16] = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t sub_22DEBC758()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_28145C8C0);
  __swift_project_value_buffer(v0, qword_28145C8C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC5F50;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "http_500_retry_delay";
  *(v5 + 8) = 20;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_22DEC4AE4();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults.decodeMessage<A>(decoder:)()
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
      v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults(0) + 20);
      sub_22DEC4994();
    }
  }

  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults.traverse<A>(visitor:)()
{
  result = sub_22DEBC9CC(v0);
  if (!v1)
  {
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DEBC9CC(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults(0);
  v3 = (a1 + *(result + 20));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_22DEC4A84();
  }

  return result;
}

uint64_t sub_22DEBCA90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v5 = a2 + *(a1 + 20);
  *v5 = 0;
  *(v5 + 4) = 1;
  return result;
}

uint64_t sub_22DEBCB18(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DEBF8C8(&qword_27DA39268, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DEBCBB8(uint64_t a1)
{
  v2 = sub_22DEBF8C8(&qword_28145C8B0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DEBCC24()
{
  sub_22DEBF8C8(&qword_28145C8B0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults);

  return sub_22DEC4A44();
}

uint64_t sub_22DEBCCE0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v8, a2);
  __swift_project_value_buffer(v8, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v9 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v10 = *(*v9 + 72);
  v11 = (*(*v9 + 80) + 32) & ~*(*v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_22DEC81D0;
  v13 = (v12 + v11);
  v14 = v12 + v11 + v9[14];
  *v13 = 1;
  *v14 = a3;
  *(v14 + 8) = a4;
  *(v14 + 16) = 2;
  v15 = *MEMORY[0x277D21870];
  v16 = sub_22DEC4AE4();
  v17 = *(*(v16 - 8) + 104);
  (v17)(v14, v15, v16);
  v18 = v13 + v10 + v9[14];
  *(v13 + v10) = 2;
  *v18 = a5;
  *(v18 + 1) = 3;
  v18[16] = 2;
  v17();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest.decodeMessage<A>(decoder:)()
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
      sub_22DEBCF58();
    }

    else if (result == 2)
    {
      sub_22DEBD00C();
    }
  }

  return result;
}

uint64_t sub_22DEBCF58()
{
  v0 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest(0) + 20);
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  sub_22DEBF8C8(&qword_28145C748, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  return sub_22DEC49E4();
}

uint64_t sub_22DEBD00C()
{
  v0 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest(0) + 24);
  sub_22DEC0570();
  return sub_22DEC4984();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DEBD0F0(v3, a1, a2, a3);
  if (!v4)
  {
    sub_22DEBD300(v3);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DEBD0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest(0);
  sub_22DDF0028(a1 + *(v14 + 20), v8, &qword_27DA37A38, &unk_22DEC6570);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22DDEF284(v8, &qword_27DA37A38, &unk_22DEC6570);
  }

  sub_22DEBA0A8(v8, v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  sub_22DEBF8C8(&qword_28145C748, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  sub_22DEC4AD4();
  return sub_22DEBA73C(v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
}

uint64_t sub_22DEBD300(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest(0);
  if (*(a1 + *(result + 24)) != 5)
  {
    v3 = *(a1 + *(result + 24));
    sub_22DEC0570();
    return sub_22DEC4A74();
  }

  return result;
}

uint64_t sub_22DEBD3D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  *(a2 + *(a1 + 24)) = 5;
  return result;
}

uint64_t sub_22DEBD4A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DEBF8C8(&qword_27DA39260, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DEBD544(uint64_t a1)
{
  v2 = sub_22DEBF8C8(&qword_27DA39228, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DEBD5B0()
{
  sub_22DEBF8C8(&qword_27DA39228, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest);

  return sub_22DEC4A44();
}

uint64_t sub_22DEBD64C()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_28145C038);
  __swift_project_value_buffer(v0, qword_28145C038);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_22DECE290;
  v4 = v29 + v3;
  v5 = v29 + v3 + v1[14];
  *(v29 + v3) = 1;
  *v5 = "meta";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_22DEC4AE4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "config_id";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x277D21888];
  v8();
  v11 = (v4 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "valid_until";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v8();
  v13 = (v4 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "api_urls";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v8();
  v15 = (v4 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "web_urls";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v8();
  v17 = (v4 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "feature_flags";
  *(v18 + 1) = 13;
  v18[16] = 2;
  v8();
  v19 = (v4 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "universal_link_sheet_codes";
  *(v20 + 1) = 26;
  v20[16] = 2;
  v8();
  v21 = (v4 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "app_defaults";
  *(v22 + 1) = 12;
  v22[16] = 2;
  v8();
  v23 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v23 = "coverage_central_ams_url";
  *(v23 + 8) = 24;
  *(v23 + 16) = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "coverage_details_ams_url";
  *(v25 + 1) = 24;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "universal_link_sheet_ams_url";
  *(v27 + 1) = 28;
  v27[16] = 2;
  v8();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.decodeMessage<A>(decoder:)()
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

      if (result <= 5)
      {
        if (result <= 2)
        {
          if (result == 1)
          {
            sub_22DEBDCA4();
          }

          else if (result == 2)
          {
            v3 = v0;
            v6 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 40);
            goto LABEL_5;
          }
        }

        else if (result == 3)
        {
          v7 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 44);
          sub_22DEC49A4();
        }

        else
        {
          sub_22DEC4884();
          sub_22DEC4944();
        }
      }

      else if (result > 8)
      {
        switch(result)
        {
          case 9:
            v3 = v0;
            v8 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 52);
            goto LABEL_5;
          case 10:
            v3 = v0;
            v4 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 56);
LABEL_5:
            v0 = v3;
            sub_22DEC49C4();
            break;
          case 11:
            v3 = v0;
            v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 60);
            goto LABEL_5;
        }
      }

      else if (result == 6)
      {
        sub_22DEBDD58();
      }

      else if (result == 7)
      {
        sub_22DEC49B4();
      }

      else
      {
        sub_22DEBDDDC();
      }

      result = sub_22DEC4954();
    }
  }

  return result;
}

uint64_t sub_22DEBDCA4()
{
  v0 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 36);
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  sub_22DEBF8C8(&qword_28145C498, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  return sub_22DEC49E4();
}

uint64_t sub_22DEBDD58()
{
  sub_22DEC4884();
  sub_22DEC4864();
  return sub_22DEC4944();
}

uint64_t sub_22DEBDDDC()
{
  v0 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 48);
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults(0);
  sub_22DEBF8C8(&qword_28145C8B0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults);
  return sub_22DEC49E4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_22DEBE0D0(v3, a1, a2, a3);
  if (!v4)
  {
    sub_22DEBE2E0(v3);
    sub_22DEBE358(v3);
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

    if (*(v5[2] + 16))
    {
      sub_22DEC4884();
      sub_22DEC4864();
      sub_22DEC4A54();
    }

    if (*(v5[3] + 16))
    {
      sub_22DEC4AA4();
    }

    sub_22DEBE3D0(v5, a1, a2, a3);
    sub_22DEBE5E0(v5);
    sub_22DEBE658(v5);
    sub_22DEBE6D0(v5);
    v11 = v5 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 32);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DEBE0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
  sub_22DDF0028(a1 + *(v14 + 36), v8, &qword_27DA38088, &unk_22DEC8220);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22DDEF284(v8, &qword_27DA38088, &unk_22DEC8220);
  }

  sub_22DEBA0A8(v8, v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  sub_22DEBF8C8(&qword_28145C498, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  sub_22DEC4AD4();
  return sub_22DEBA73C(v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
}

uint64_t sub_22DEBE2E0(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
  v3 = (a1 + *(result + 40));
  if (v3[1])
  {
    v4 = *v3;
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DEBE358(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
  v3 = (a1 + *(result + 44));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_22DEC4A94();
  }

  return result;
}

uint64_t sub_22DEBE3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA39180, &qword_22DED0500);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
  sub_22DDF0028(a1 + *(v14 + 48), v8, &qword_27DA39180, &qword_22DED0500);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22DDEF284(v8, &qword_27DA39180, &qword_22DED0500);
  }

  sub_22DEBA0A8(v8, v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults);
  sub_22DEBF8C8(&qword_28145C8B0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults);
  sub_22DEC4AD4();
  return sub_22DEBA73C(v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults);
}

uint64_t sub_22DEBE5E0(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
  v3 = (a1 + *(result + 52));
  if (v3[1])
  {
    v4 = *v3;
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DEBE658(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
  v3 = (a1 + *(result + 56));
  if (v3[1])
  {
    v4 = *v3;
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DEBE6D0(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
  v3 = (a1 + *(result + 60));
  if (v3[1])
  {
    v4 = *v3;
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DEBE794(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_22DEC5184();
  a1(0);
  sub_22DEBF8C8(a2, a3);
  sub_22DEC4BE4();
  return sub_22DEC51A4();
}

uint64_t sub_22DEBE81C@<X0>(int *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *a2 = sub_22DE0501C(MEMORY[0x277D84F90]);
  a2[1] = sub_22DE0501C(v4);
  a2[2] = sub_22DE05DA0(v4);
  a2[3] = v4;
  v5 = a2 + a1[8];
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v6 = a1[9];
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = a1[11];
  v9 = (a2 + a1[10]);
  *v9 = 0;
  v9[1] = 0;
  v10 = a2 + v8;
  *v10 = 0;
  v10[8] = 1;
  v11 = a1[12];
  v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults(0);
  result = (*(*(v12 - 8) + 56))(a2 + v11, 1, 1, v12);
  v14 = a1[14];
  v15 = (a2 + a1[13]);
  *v15 = 0;
  v15[1] = 0;
  v16 = (a2 + v14);
  *v16 = 0;
  v16[1] = 0;
  v17 = (a2 + a1[15]);
  *v17 = 0;
  v17[1] = 0;
  return result;
}

uint64_t sub_22DEBE960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_22DEC48B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22DEBE9D4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_22DEC48B4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_22DEBEA48(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t sub_22DEBEA9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DEBF8C8(&qword_27DA39258, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DEBEB3C(uint64_t a1)
{
  v2 = sub_22DEBF8C8(&qword_28145C028, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DEBEBA8()
{
  sub_22DEBF8C8(&qword_28145C028, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse);

  return sub_22DEC4A44();
}

uint64_t _s6NDOAPI42Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponseV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v90 = a2;
  v3 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults(0);
  v85 = *(v3 - 8);
  v86 = v3;
  v4 = *(v85 + 64);
  MEMORY[0x28223BE20](v3);
  v82 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA39180, &qword_22DED0500);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v83 = &v81 - v8;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA39288, "@{");
  v9 = *(*(v84 - 8) + 64);
  MEMORY[0x28223BE20](v84);
  v87 = &v81 - v10;
  v11 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38088, &unk_22DEC8220);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v81 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38350, &unk_22DED04F0);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v81 - v23;
  v88 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
  v89 = a1;
  v25 = *(v88 + 36);
  v26 = *(v21 + 56);
  sub_22DDF0028(a1 + v25, v24, &qword_27DA38088, &unk_22DEC8220);
  v27 = v90;
  sub_22DDF0028(v90 + v25, &v24[v26], &qword_27DA38088, &unk_22DEC8220);
  v28 = *(v12 + 48);
  if (v28(v24, 1, v11) == 1)
  {
    if (v28(&v24[v26], 1, v11) == 1)
    {
      sub_22DDEF284(v24, &qword_27DA38088, &unk_22DEC8220);
      goto LABEL_11;
    }

LABEL_6:
    v29 = &qword_27DA38350;
    v30 = &unk_22DED04F0;
    v31 = v24;
LABEL_7:
    sub_22DDEF284(v31, v29, v30);
    goto LABEL_8;
  }

  sub_22DDF0028(v24, v19, &qword_27DA38088, &unk_22DEC8220);
  if (v28(&v24[v26], 1, v11) == 1)
  {
    sub_22DEBA73C(v19, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
    goto LABEL_6;
  }

  sub_22DEBA0A8(&v24[v26], v15, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  v34 = static Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta.== infix(_:_:)(v19, v15);
  sub_22DEBA73C(v15, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  sub_22DEBA73C(v19, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  sub_22DDEF284(v24, &qword_27DA38088, &unk_22DEC8220);
  if ((v34 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v36 = v88;
  v35 = v89;
  v37 = *(v88 + 40);
  v38 = (v89 + v37);
  v39 = *(v89 + v37 + 8);
  v40 = (v27 + v37);
  v41 = v40[1];
  if (v39)
  {
    if (!v41 || (*v38 != *v40 || v39 != v41) && (sub_22DEC50E4() & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (v41)
  {
    goto LABEL_8;
  }

  v42 = v36[11];
  v43 = (v35 + v42);
  v44 = *(v35 + v42 + 8);
  v45 = (v27 + v42);
  v46 = *(v27 + v42 + 8);
  if (v44)
  {
    if (!v46)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (*v43 != *v45)
    {
      LOBYTE(v46) = 1;
    }

    if (v46)
    {
      goto LABEL_8;
    }
  }

  if ((sub_22DEAFB4C(*v35, *v27) & 1) == 0 || (sub_22DEAFB4C(v35[1], v27[1]) & 1) == 0 || (sub_22DEAFCF0(v35[2], v27[2]) & 1) == 0 || (sub_22DE2F604(v35[3], v27[3]) & 1) == 0)
  {
    goto LABEL_8;
  }

  v47 = v36[12];
  v48 = *(v84 + 48);
  v49 = v87;
  sub_22DDF0028(v35 + v47, v87, &qword_27DA39180, &qword_22DED0500);
  v50 = v27 + v47;
  v51 = v27;
  v52 = v49;
  sub_22DDF0028(v50, v49 + v48, &qword_27DA39180, &qword_22DED0500);
  v53 = *(v85 + 48);
  v54 = v49;
  v55 = v86;
  if (v53(v54, 1, v86) != 1)
  {
    v61 = v83;
    sub_22DDF0028(v52, v83, &qword_27DA39180, &qword_22DED0500);
    if (v53(v52 + v48, 1, v55) == 1)
    {
      sub_22DEBA73C(v61, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults);
      goto LABEL_39;
    }

    v62 = v55;
    v63 = v82;
    sub_22DEBA0A8(v52 + v48, v82, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults);
    v64 = *(v62 + 20);
    v65 = (v61 + v64);
    v66 = *(v61 + v64 + 4);
    v67 = (v63 + v64);
    v68 = *(v63 + v64 + 4);
    if (v66)
    {
      if (!v68)
      {
LABEL_43:
        sub_22DEBA73C(v63, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults);
        sub_22DEBA73C(v61, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults);
        v29 = &qword_27DA39180;
        v30 = &qword_22DED0500;
        goto LABEL_40;
      }
    }

    else
    {
      if (*v65 != *v67)
      {
        LOBYTE(v68) = 1;
      }

      if (v68)
      {
        goto LABEL_43;
      }
    }

    sub_22DEC48B4();
    sub_22DEBF8C8(&qword_27DA37B30, MEMORY[0x277D216C8]);
    v69 = sub_22DEC4BF4();
    sub_22DEBA73C(v63, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults);
    sub_22DEBA73C(v61, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults);
    sub_22DDEF284(v52, &qword_27DA39180, &qword_22DED0500);
    if ((v69 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

  if (v53(v52 + v48, 1, v55) != 1)
  {
LABEL_39:
    v29 = &qword_27DA39288;
    v30 = "@{";
LABEL_40:
    v31 = v52;
    goto LABEL_7;
  }

  sub_22DDEF284(v52, &qword_27DA39180, &qword_22DED0500);
LABEL_31:
  v56 = v36[13];
  v57 = (v35 + v56);
  v58 = *(v35 + v56 + 8);
  v59 = (v51 + v56);
  v60 = v59[1];
  if (v58)
  {
    if (!v60 || (*v57 != *v59 || v58 != v60) && (sub_22DEC50E4() & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (v60)
  {
    goto LABEL_8;
  }

  v70 = v36[14];
  v71 = (v35 + v70);
  v72 = *(v35 + v70 + 8);
  v73 = (v51 + v70);
  v74 = v73[1];
  if (v72)
  {
    if (!v74 || (*v71 != *v73 || v72 != v74) && (sub_22DEC50E4() & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (v74)
  {
    goto LABEL_8;
  }

  v75 = v36[15];
  v76 = (v35 + v75);
  v77 = *(v35 + v75 + 8);
  v78 = (v51 + v75);
  v79 = v78[1];
  if (v77)
  {
    if (v79 && (*v76 == *v78 && v77 == v79 || (sub_22DEC50E4() & 1) != 0))
    {
      goto LABEL_64;
    }
  }

  else if (!v79)
  {
LABEL_64:
    v80 = v36[8];
    sub_22DEC48B4();
    sub_22DEBF8C8(&qword_27DA37B30, MEMORY[0x277D216C8]);
    v32 = sub_22DEC4BF4();
    return v32 & 1;
  }

LABEL_8:
  v32 = 0;
  return v32 & 1;
}

uint64_t _s6NDOAPI41Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v28 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38368, &qword_22DECA2B0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - v15;
  v29 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest(0);
  v30 = a1;
  v17 = *(v29 + 20);
  v18 = *(v13 + 56);
  sub_22DDF0028(a1 + v17, v16, &qword_27DA37A38, &unk_22DEC6570);
  sub_22DDF0028(a2 + v17, &v16[v18], &qword_27DA37A38, &unk_22DEC6570);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_22DDF0028(v16, v11, &qword_27DA37A38, &unk_22DEC6570);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v22 = v28;
      sub_22DEBA0A8(&v16[v18], v28, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
      v23 = static Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta.== infix(_:_:)(v11, v22);
      sub_22DEBA73C(v22, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
      sub_22DEBA73C(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
      sub_22DDEF284(v16, &qword_27DA37A38, &unk_22DEC6570);
      if ((v23 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_22DEBA73C(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
LABEL_6:
    sub_22DDEF284(v16, &qword_27DA38368, &qword_22DECA2B0);
    goto LABEL_7;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_22DDEF284(v16, &qword_27DA37A38, &unk_22DEC6570);
LABEL_10:
  v24 = *(v29 + 24);
  v25 = *(v30 + v24);
  v26 = *(a2 + v24);
  if (v25 == 5)
  {
    if (v26 == 5)
    {
      goto LABEL_14;
    }
  }

  else if (v25 == v26)
  {
LABEL_14:
    sub_22DEC48B4();
    sub_22DEBF8C8(&qword_27DA37B30, MEMORY[0x277D216C8]);
    v20 = sub_22DEC4BF4();
    return v20 & 1;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s6NDOAPI39Com_Apple_Sse_Ocean_Ndo_Api_AppDefaultsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults(0) + 20);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 4);
  v7 = (a2 + v4);
  v8 = *(a2 + v4 + 4);
  if (v6)
  {
    if (!v8)
    {
      return 0;
    }
  }

  else
  {
    if (*v5 != *v7)
    {
      LOBYTE(v8) = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  sub_22DEC48B4();
  sub_22DEBF8C8(&qword_27DA37B30, MEMORY[0x277D216C8]);
  return sub_22DEC4BF4() & 1;
}

uint64_t sub_22DEBF8C8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22DEBF914()
{
  result = qword_27DA391A0;
  if (!qword_27DA391A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA391A0);
  }

  return result;
}

unint64_t sub_22DEBF96C()
{
  result = qword_27DA391A8;
  if (!qword_27DA391A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA391A8);
  }

  return result;
}

unint64_t sub_22DEBF9C4()
{
  result = qword_27DA391B0;
  if (!qword_27DA391B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA391B0);
  }

  return result;
}

unint64_t sub_22DEBFA4C()
{
  result = qword_27DA391C8;
  if (!qword_27DA391C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA391C8);
  }

  return result;
}

unint64_t sub_22DEBFAA4()
{
  result = qword_27DA391D0;
  if (!qword_27DA391D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA391D0);
  }

  return result;
}

unint64_t sub_22DEBFAFC()
{
  result = qword_27DA391D8;
  if (!qword_27DA391D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA391D8);
  }

  return result;
}

unint64_t sub_22DEBFB84()
{
  result = qword_27DA391F0;
  if (!qword_27DA391F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA391F0);
  }

  return result;
}

unint64_t sub_22DEBFBDC()
{
  result = qword_27DA391F8;
  if (!qword_27DA391F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA391F8);
  }

  return result;
}

unint64_t sub_22DEBFC34()
{
  result = qword_27DA39200;
  if (!qword_27DA39200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA39200);
  }

  return result;
}

void sub_22DEC0070()
{
  sub_22DEC48B4();
  if (v0 <= 0x3F)
  {
    sub_22DEC0478(319, &qword_28145AD08, MEMORY[0x277D849A8], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22DEC0140()
{
  sub_22DEC48B4();
  if (v0 <= 0x3F)
  {
    sub_22DEC0424(319, qword_28145C6F8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
    if (v1 <= 0x3F)
    {
      sub_22DEC0478(319, &qword_27DA39250, &type metadata for Com_Apple_Sse_Ocean_Ndo_Api_Environment, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22DEC0244()
{
  sub_22DE5A8CC(319, &qword_28145ADA0);
  if (v0 <= 0x3F)
  {
    sub_22DE5A8CC(319, &qword_28145AD90);
    if (v1 <= 0x3F)
    {
      sub_22DEC0478(319, &qword_28145AD38, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_22DEC48B4();
        if (v3 <= 0x3F)
        {
          sub_22DEC0424(319, qword_28145C448, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
          if (v4 <= 0x3F)
          {
            sub_22DEC0478(319, &qword_28145AD88, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_22DEC0478(319, &qword_28145AD00, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_22DEC0424(319, qword_28145C868, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults);
                if (v7 <= 0x3F)
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
}

void sub_22DEC0424(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_22DEC0478(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_22DEC04C8()
{
  result = qword_27DA39270;
  if (!qword_27DA39270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA39270);
  }

  return result;
}

unint64_t sub_22DEC051C()
{
  result = qword_27DA39278;
  if (!qword_27DA39278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA39278);
  }

  return result;
}

unint64_t sub_22DEC0570()
{
  result = qword_27DA39280;
  if (!qword_27DA39280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA39280);
  }

  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AckData.clientErrorCode.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0) + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AckData.clientErrorReason.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0) + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AckRequest.init()@<X0>(char *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckRequest(0);
  v3 = &a1[*(v2 + 20)];
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v4 = *(v2 + 24);
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AckRequest.meta.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckRequest(0) + 24);
  sub_22DDEF284(v1 + v3, &qword_27DA37A38, &unk_22DEC6570);
  sub_22DEC07DC(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t sub_22DEC07DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AckRequest.meta.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckRequest(0);
  sub_22DEC09D4(v1 + *(v7 + 24), v6);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22DEC07DC(v6, a1);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v10 = (a1 + v8[5]);
  *v10 = 0;
  v10[1] = 0;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = v8[7];
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22DDEF284(v6, &qword_27DA37A38, &unk_22DEC6570);
  }

  return result;
}

uint64_t sub_22DEC09D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DEC0A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckRequest(0);
  sub_22DEC09D4(a1 + *(v8 + 24), v7);
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_22DEC07DC(v7, a2);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v11 = (a2 + v9[5]);
  *v11 = 0;
  v11[1] = 0;
  v12 = a2 + v9[6];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v9[7];
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
  (*(*(v14 - 8) + 56))(a2 + v13, 1, 1, v14);
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_22DDEF284(v7, &qword_27DA37A38, &unk_22DEC6570);
  }

  return result;
}

uint64_t sub_22DEC0BDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DEC104C(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckRequest(0) + 24);
  sub_22DDEF284(a2 + v9, &qword_27DA37A38, &unk_22DEC6570);
  sub_22DEC07DC(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_AckRequest.meta.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570) - 8) + 64);
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
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
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
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckRequest(0) + 24);
  *(v5 + 12) = v15;
  sub_22DEC09D4(v1 + v15, v8);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v17 = (v14 + v9[5]);
    *v17 = 0;
    v17[1] = 0;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v9[7];
    v20 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    if (v16(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA37A38, &unk_22DEC6570);
    }
  }

  else
  {
    sub_22DEC07DC(v8, v14);
  }

  return sub_22DEC0F34;
}

void sub_22DEC0F34(uint64_t **a1, char a2)
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
    sub_22DEC104C((*a1)[5], v4);
    sub_22DDEF284(v9 + v3, &qword_27DA37A38, &unk_22DEC6570);
    sub_22DEC07DC(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_22DEC10B0(v5);
  }

  else
  {
    sub_22DDEF284(v9 + v3, &qword_27DA37A38, &unk_22DEC6570);
    sub_22DEC07DC(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t sub_22DEC104C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DEC10B0(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL Com_Apple_Sse_Ocean_Ndo_Api_AckRequest.hasMeta.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckRequest(0);
  sub_22DEC09D4(v0 + *(v5 + 24), v4);
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_22DDEF284(v4, &qword_27DA37A38, &unk_22DEC6570);
  return v7;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_AckRequest.clearMeta()()
{
  v1 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckRequest(0) + 24);
  sub_22DDEF284(v0 + v1, &qword_27DA37A38, &unk_22DEC6570);
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AckRequest.data.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AckRequest.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckRequest(0) + 20);
  v4 = sub_22DEC48B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AckRequest.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckRequest(0) + 20);
  v4 = sub_22DEC48B4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_AckData.actionType.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = *v1 & ~(*v1 >> 31);
  return sub_22DEC1490;
}

void Com_Apple_Sse_Ocean_Ndo_Api_AckData.userActionType.getter(_BYTE *a1@<X8>)
{
  v2 = *v1 & 0x7F;
  if (*v1 > -9)
  {
    v2 = 0;
  }

  *a1 = v2;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_AckData.userActionType.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *v1;
  if (v2 <= -9)
  {
    v3 = v2 & 0x7F;
  }

  else
  {
    v3 = 0;
  }

  *(a1 + 8) = v3;
  return sub_22DEC1504;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AckData.clientErrorCode.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0) + 28));
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

uint64_t sub_22DEC156C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0) + 28));
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

uint64_t sub_22DEC15D0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0) + 28));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_AckData.clientErrorCode.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0) + 28);
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

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_AckData.clearClientErrorCode()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0) + 28));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AckData.clientErrorReason.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0) + 32));
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

uint64_t sub_22DEC1790@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0) + 32));
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

uint64_t sub_22DEC17F4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0) + 32));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_AckData.clientErrorReason.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0) + 32);
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

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_AckData.clearClientErrorReason()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0) + 32));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AckData.acknowledgeData.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AckData.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0) + 24);
  v4 = sub_22DEC48B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AckData.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0) + 24);
  v4 = sub_22DEC48B4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

BOOL static Com_Apple_Sse_Ocean_Ndo_Api_AckData.OneOf_Action.== infix(_:_:)(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if ((*a1 & 0x80000000) == 0)
  {
    return *a1 == v2;
  }

  if ((v2 & 0x80) != 0)
  {
    return qword_22DED1270[*a1 & 0x7F] == qword_22DED1270[v2 & 0x7F];
  }

  return 0;
}

BOOL sub_22DEC1B44(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if ((*a1 & 0x80000000) == 0)
  {
    return *a1 == v2;
  }

  if ((v2 & 0x80) != 0)
  {
    return qword_22DED1270[*a1 & 0x7F] == qword_22DED1270[v2 & 0x7F];
  }

  return 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AckData.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = -8;
  *(a1 + 8) = sub_22DE0501C(MEMORY[0x277D84F90]);
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0);
  v3 = a1 + v2[6];
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v5 = (a1 + v2[7]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a1 + v2[8]);
  *v6 = 0;
  v6[1] = 0;
  return result;
}

uint64_t sub_22DEC1C18()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA39290);
  __swift_project_value_buffer(v0, qword_27DA39290);
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

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AckRequest.decodeMessage<A>(decoder:)()
{
  result = sub_22DEC4954();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_22DEC1F04();
      }

      else if (result == 2)
      {
        type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0);
        sub_22DEC3538(&qword_27DA37B08, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
        sub_22DEC49D4();
      }

      result = sub_22DEC4954();
    }
  }

  return result;
}

uint64_t sub_22DEC1F04()
{
  v0 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckRequest(0) + 24);
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  sub_22DEC3538(&qword_28145C748, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  return sub_22DEC49E4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AckRequest.traverse<A>(visitor:)()
{
  v2 = v0;
  result = sub_22DEC20B4(v0);
  if (!v1)
  {
    v4 = *v0;
    if (*(*v2 + 16))
    {
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0);
      sub_22DEC3538(&qword_27DA37B08, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
      sub_22DEC4AC4();
    }

    v5 = v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckRequest(0) + 20);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DEC20B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v13 - v4;
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckRequest(0);
  sub_22DEC09D4(a1 + *(v11 + 24), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_22DDEF284(v5, &qword_27DA37A38, &unk_22DEC6570);
  }

  sub_22DEC07DC(v5, v10);
  sub_22DEC3538(&qword_28145C748, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  sub_22DEC4AD4();
  return sub_22DEC10B0(v10);
}

uint64_t sub_22DEC22E0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v4 = &a2[*(a1 + 20)];
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_22DEC23B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DEC3538(&unk_27DA39310, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DEC2458(uint64_t a1)
{
  v2 = sub_22DEC3538(&qword_27DA37B48, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DEC24C4()
{
  sub_22DEC3538(&qword_27DA37B48, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckRequest);

  return sub_22DEC4A44();
}

uint64_t sub_22DEC2560()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA392A8);
  __swift_project_value_buffer(v0, qword_27DA392A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC7C40;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "action_type";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "user_action_type";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "client_error_code";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "client_error_reason";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "acknowledge_data";
  *(v15 + 8) = 16;
  *(v15 + 16) = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AckData.decodeMessage<A>(decoder:)()
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

      if (result <= 2)
      {
        if (result == 1)
        {
          sub_22DEC2970();
        }

        else if (result == 2)
        {
          sub_22DEC2A0C();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            v3 = v0;
            v4 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0) + 28);
LABEL_17:
            v0 = v3;
            sub_22DEC49C4();
            break;
          case 4:
            v3 = v0;
            v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0) + 32);
            goto LABEL_17;
          case 5:
            sub_22DEC4884();
            sub_22DEC4944();
            break;
        }
      }

      result = sub_22DEC4954();
    }
  }

  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AckData.traverse<A>(visitor:)()
{
  v2 = *v0;
  if (v2 <= 0xF7)
  {
    if ((v2 & 0x80) != 0)
    {
      result = sub_22DEC2C3C(v0);
      if (v1)
      {
        return result;
      }
    }

    else
    {
      result = sub_22DEC2BC8(v0);
      if (v1)
      {
        return result;
      }
    }
  }

  result = sub_22DEC2CB8(v0);
  if (!v1)
  {
    sub_22DEC2D30(v0);
    if (*(*(v0 + 1) + 16))
    {
      sub_22DEC4884();
      sub_22DEC4A54();
    }

    v4 = &v0[*(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0) + 24)];
    return sub_22DEC4894();
  }

  return result;
}

char *sub_22DEC2BC8(char *result)
{
  if (*result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = *result;
    sub_22DE5BBFC();
    return sub_22DEC4A74();
  }

  return result;
}

char *sub_22DEC2C3C(char *result)
{
  if (*result > -9)
  {
    __break(1u);
  }

  else
  {
    sub_22DE94534();
    return sub_22DEC4A74();
  }

  return result;
}

uint64_t sub_22DEC2CB8(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0);
  v3 = (a1 + *(result + 28));
  if (v3[1])
  {
    v4 = *v3;
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DEC2D30(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0);
  v3 = (a1 + *(result + 32));
  if (v3[1])
  {
    v4 = *v3;
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DEC2DF4(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_22DEC5184();
  a1(0);
  sub_22DEC3538(a2, a3);
  sub_22DEC4BE4();
  return sub_22DEC51A4();
}

uint64_t sub_22DEC2E7C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = -8;
  *(a2 + 8) = sub_22DE0501C(MEMORY[0x277D84F90]);
  v4 = a2 + a1[6];
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v6 = a1[8];
  v7 = (a2 + a1[7]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a2 + v6);
  *v8 = 0;
  v8[1] = 0;
  return result;
}

uint64_t sub_22DEC2F24(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DEC3538(&qword_27DA39308, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DEC2FC4(uint64_t a1)
{
  v2 = sub_22DEC3538(&qword_27DA37B08, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DEC3030()
{
  sub_22DEC3538(&qword_27DA37B08, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);

  return sub_22DEC4A44();
}

uint64_t _s6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AckRequestV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38368, &qword_22DECA2B0);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - v16;
  v18 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckRequest(0);
  v19 = *(v18 + 24);
  v20 = *(v14 + 56);
  sub_22DEC09D4(a1 + v19, v17);
  sub_22DEC09D4(a2 + v19, &v17[v20]);
  v21 = *(v5 + 48);
  if (v21(v17, 1, v4) == 1)
  {
    if (v21(&v17[v20], 1, v4) == 1)
    {
      sub_22DDEF284(v17, &qword_27DA37A38, &unk_22DEC6570);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_22DEC09D4(v17, v12);
  if (v21(&v17[v20], 1, v4) == 1)
  {
    sub_22DEC10B0(v12);
LABEL_6:
    sub_22DDEF284(v17, &qword_27DA38368, &qword_22DECA2B0);
LABEL_10:
    v24 = 0;
    return v24 & 1;
  }

  sub_22DEC07DC(&v17[v20], v8);
  v22 = static Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta.== infix(_:_:)(v12, v8);
  sub_22DEC10B0(v8);
  sub_22DEC10B0(v12);
  sub_22DDEF284(v17, &qword_27DA37A38, &unk_22DEC6570);
  if ((v22 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((sub_22DE310D4(*a1, *a2) & 1) == 0)
  {
    goto LABEL_10;
  }

  v23 = *(v18 + 20);
  sub_22DEC48B4();
  sub_22DEC3538(&qword_27DA37B30, MEMORY[0x277D216C8]);
  v24 = sub_22DEC4BF4();
  return v24 & 1;
}

uint64_t _s6NDOAPI35Com_Apple_Sse_Ocean_Ndo_Api_AckDataV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 <= 0xF7)
  {
    if (v5 > 0xF7)
    {
      return 0;
    }

    if ((v4 & 0x80) != 0)
    {
      if ((v5 & 0x80) == 0 || qword_22DED1270[v4 & 0x7F] != qword_22DED1270[v5 & 0x7F])
      {
        return 0;
      }
    }

    else if (v4 != v5)
    {
      return 0;
    }
  }

  else if (v5 <= 0xF7)
  {
    return 0;
  }

  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0);
  v7 = v6[7];
  v8 = &a1[v7];
  v9 = *&a1[v7 + 8];
  v10 = &a2[v7];
  v11 = *(v10 + 1);
  if (v9)
  {
    if (!v11)
    {
      return 0;
    }

    v12 = *v8 == *v10 && v9 == v11;
    if (!v12 && (sub_22DEC50E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v13 = v6[8];
  v14 = &a1[v13];
  v15 = *&a1[v13 + 8];
  v16 = &a2[v13];
  v17 = *(v16 + 1);
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    v18 = *v14 == *v16 && v15 == v17;
    if (!v18 && (sub_22DEC50E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  if (sub_22DEAFB4C(*(a1 + 1), *(a2 + 1)))
  {
    v19 = v6[6];
    sub_22DEC48B4();
    sub_22DEC3538(&qword_27DA37B30, MEMORY[0x277D216C8]);
    return sub_22DEC4BF4() & 1;
  }

  return 0;
}

uint64_t sub_22DEC3538(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22DEC37E8()
{
  sub_22DEC38E4(319, &qword_27DA39300, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_22DEC48B4();
    if (v1 <= 0x3F)
    {
      sub_22DEC38E4(319, qword_28145C6F8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22DEC38E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22DEC3970()
{
  sub_22DE33AAC(319, qword_28145D4D8);
  if (v0 <= 0x3F)
  {
    sub_22DE624D8();
    if (v1 <= 0x3F)
    {
      sub_22DEC48B4();
      if (v2 <= 0x3F)
      {
        sub_22DE33AAC(319, &qword_28145AD88);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for Com_Apple_Sse_Ocean_Ndo_Api_AckData.OneOf_Action(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x1F)
  {
    goto LABEL_17;
  }

  if (a2 + 225 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 225) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 225;
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

      return (*a1 | (v4 << 8)) - 225;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 225;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 2) & 0x1E | (*a1 >> 7)) ^ 0x1F;
  if (v6 >= 0x1E)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for Com_Apple_Sse_Ocean_Ndo_Api_AckData.OneOf_Action(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 225 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 225) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x1F)
  {
    v4 = 0;
  }

  if (a2 > 0x1E)
  {
    v5 = ((a2 - 31) >> 8) + 1;
    *result = a2 - 31;
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
    *result = 8 * (((-a2 >> 1) & 0xF) - 16 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t NDOConditionalCheckInHandler.__allocating_init(isDisabled:handler:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_22DDEDA18(a3, v6 + 32);
  return v6;
}

uint64_t NDOConditionalCheckInHandler.init(isDisabled:handler:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  sub_22DDEDA18(a3, v3 + 32);
  return v3;
}

uint64_t sub_22DEC3C64(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA37C00, &unk_22DEC7580);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v22[-v14 - 8];
  v16 = a1[1];
  v23 = *a1;
  v24 = v16;
  v25 = *(a1 + 4);
  v17 = sub_22DEC4DB4();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v6;
  *(v18 + 40) = a2;
  *(v18 + 48) = a3;
  *(v18 + 56) = a4;
  *(v18 + 64) = a5;
  v19 = v24;
  *(v18 + 72) = v23;
  *(v18 + 88) = v19;
  *(v18 + 104) = v25;

  sub_22DEC423C(&v23, v22);
  sub_22DE1D5F0(0, 0, v15, &unk_22DED12B0, v18);
}

uint64_t sub_22DEC3DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v10;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  return MEMORY[0x2822009F8](sub_22DEC3E10, 0, 0);
}

uint64_t sub_22DEC3E10()
{
  v1 = v0[2];
  v2 = *(v1 + 24);
  v8 = (*(v1 + 16) + **(v1 + 16));
  v3 = *(*(v1 + 16) + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_22DEC3F04;
  v6 = v0[3];
  v5 = v0[4];

  return v8(v6, v5);
}

uint64_t sub_22DEC3F04(char a1)
{
  v2 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = a1;

  return MEMORY[0x2822009F8](sub_22DEC4004, 0, 0);
}

uint64_t sub_22DEC4004()
{
  v18 = v0;
  if (*(v0 + 72))
  {
    v2 = *(v0 + 40);
    v1 = *(v0 + 48);
    type metadata accessor for NDOErrors();
    sub_22DDFE48C();
    v3 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    *&v16 = 0;
    v15 = v3;
    BYTE8(v16) = 1;
    v2(&v15);
    sub_22DE17504(v15, *(&v15 + 1), v16, SBYTE8(v16));
  }

  else
  {
    v4 = *(v0 + 48);
    v5 = *(v0 + 56);
    v7 = *(v0 + 32);
    v6 = *(v0 + 40);
    v8 = *(v0 + 16);
    v9 = *(v0 + 24);
    v10 = v8[7];
    v11 = v8[8];
    __swift_project_boxed_opaque_existential_1(v8 + 4, v10);
    v12 = v5[1];
    v15 = *v5;
    v16 = v12;
    v17 = *(v5 + 4);
    (*(v11 + 8))(&v15, v9, v7, v6, v4, v10, v11);
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_22DEC414C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22DE0D6CC;

  return sub_22DEC3DE0(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_22DEC423C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BB0, &qword_22DEC7340);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t NDOConditionalCheckInHandler.deinit()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  return v0;
}

uint64_t NDOConditionalCheckInHandler.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t sub_22DEC4314(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA37C00, &unk_22DEC7580);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v22[-v13 - 8];
  v15 = *v5;
  v16 = a1[1];
  v23 = *a1;
  v24 = v16;
  v25 = *(a1 + 4);
  v17 = sub_22DEC4DB4();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v15;
  *(v18 + 40) = a2;
  *(v18 + 48) = a3;
  *(v18 + 56) = a4;
  *(v18 + 64) = a5;
  v19 = v24;
  *(v18 + 72) = v23;
  *(v18 + 88) = v19;
  *(v18 + 104) = v25;

  sub_22DEC423C(&v23, v22);
  sub_22DE1D5F0(0, 0, v14, &unk_22DED1320, v18);
}

uint64_t objectdestroyTm_1()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  if (v0[9] != 1)
  {

    v5 = v0[11];

    v6 = v0[13];
  }

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_22DEC4574(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22DE0858C;

  return sub_22DEC3DE0(a1, v4, v5, v6, v7, v8, v9, v10);
}