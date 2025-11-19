uint64_t _s20GRPCProtobufInternal12ErrorDetailsV4hash4intoys6HasherVz_tF_0(uint64_t a1)
{
  v40 = a1;
  v2 = sub_24DD01418();
  v38 = *(v2 - 8);
  v39 = v2;
  v3 = *(v38 + 64);
  MEMORY[0x28223BE20]();
  v37 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for ErrorDetails.LocalizedMessage(0);
  v5 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20]();
  v35 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for ErrorDetails.ResourceInfo(0);
  v7 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20]();
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(type metadata accessor for ErrorDetails.RequestInfo(0) - 8) + 64);
  MEMORY[0x28223BE20]();
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*(type metadata accessor for ErrorDetails.DebugInfo(0) - 8) + 64);
  MEMORY[0x28223BE20]();
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(*(type metadata accessor for ErrorDetails.ErrorInfo(0) - 8) + 64);
  MEMORY[0x28223BE20]();
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(*(type metadata accessor for ErrorDetails.Wrapped(0) - 8) + 64);
  MEMORY[0x28223BE20]();
  v21 = (&v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24DCE2C58(v1, v21, type metadata accessor for ErrorDetails.Wrapped);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_24DCE2B8C(v21, v15, type metadata accessor for ErrorDetails.DebugInfo);
        MEMORY[0x253037240](2);
        sub_24DCE2940(&qword_27F1A9C80, type metadata accessor for ErrorDetails.DebugInfo);
        sub_24DD016B8();
        return sub_24DCE29DC(v15, type metadata accessor for ErrorDetails.DebugInfo);
      }

      v24 = *v21;
      if (EnumCaseMultiPayload == 3)
      {
        MEMORY[0x253037240](3);
        v41 = v24;
        sub_24DCE2AE4();
      }

      else
      {
        MEMORY[0x253037240](4);
        v41 = v24;
        sub_24DCE2A90();
      }

      goto LABEL_19;
    }

    if (EnumCaseMultiPayload)
    {
      v28 = *v21;
      v29 = v21[1];
      MEMORY[0x253037240](1);
      v41 = v28;
      v42 = v29;
      sub_24DCE2B38();
      return sub_24DD016B8();
    }

    else
    {
      sub_24DCE2B8C(v21, v18, type metadata accessor for ErrorDetails.ErrorInfo);
      MEMORY[0x253037240](0);
      sub_24DCE2940(&qword_27F1A9C90, type metadata accessor for ErrorDetails.ErrorInfo);
      sub_24DD016B8();
      return sub_24DCE29DC(v18, type metadata accessor for ErrorDetails.ErrorInfo);
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload != 5)
      {
        if (EnumCaseMultiPayload == 6)
        {
          sub_24DCE2B8C(v21, v12, type metadata accessor for ErrorDetails.RequestInfo);
          MEMORY[0x253037240](6);
          sub_24DCE2940(&qword_27F1A9C60, type metadata accessor for ErrorDetails.RequestInfo);
          sub_24DD016B8();
          return sub_24DCE29DC(v12, type metadata accessor for ErrorDetails.RequestInfo);
        }

        else
        {
          sub_24DCE2B8C(v21, v9, type metadata accessor for ErrorDetails.ResourceInfo);
          MEMORY[0x253037240](7);
          sub_24DCE2940(&qword_27F1A9C58, type metadata accessor for ErrorDetails.ResourceInfo);
          sub_24DD016B8();
          return sub_24DCE29DC(v9, type metadata accessor for ErrorDetails.ResourceInfo);
        }
      }

      v26 = *v21;
      MEMORY[0x253037240](5);
      v41 = v26;
      sub_24DCE2A3C();
LABEL_19:
      sub_24DD016B8();
    }

    if (EnumCaseMultiPayload == 8)
    {
      v27 = *v21;
      MEMORY[0x253037240](8);
      v41 = v27;
      sub_24DCE2988();
      goto LABEL_19;
    }

    if (EnumCaseMultiPayload == 9)
    {
      v25 = v35;
      sub_24DCE2B8C(v21, v35, type metadata accessor for ErrorDetails.LocalizedMessage);
      MEMORY[0x253037240](9);
      sub_24DCE2940(&qword_27F1A9C48, type metadata accessor for ErrorDetails.LocalizedMessage);
      sub_24DD016B8();
      return sub_24DCE29DC(v25, type metadata accessor for ErrorDetails.LocalizedMessage);
    }

    else
    {
      v31 = v37;
      v30 = v38;
      v32 = v39;
      (*(v38 + 32))(v37, v21, v39);
      MEMORY[0x253037240](10);
      sub_24DCE2940(&qword_27F1A9C40, MEMORY[0x277D215C8]);
      sub_24DD016B8();
      return (*(v30 + 8))(v31, v32);
    }
  }
}

uint64_t static ErrorDetails.any(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24DD01418();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  type metadata accessor for ErrorDetails.Wrapped(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t static ErrorDetails.errorInfo(reason:domain:metadata:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*(type metadata accessor for ErrorDetails.ErrorInfo(0) - 8) + 64);
  MEMORY[0x28223BE20]();
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);

  ErrorDetails.ErrorInfo.init(reason:domain:metadata:)();
  sub_24DCE2B8C(v4, a1, type metadata accessor for ErrorDetails.ErrorInfo);
  type metadata accessor for ErrorDetails.Wrapped(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t static ErrorDetails.retryInfo(_:)@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  *a2 = *a1;
  type metadata accessor for ErrorDetails.Wrapped(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t static ErrorDetails.retryInfo(delay:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  ErrorDetails.RetryInfo.init(delay:)(a1, a2, &v5);
  *a3 = v5;
  type metadata accessor for ErrorDetails.Wrapped(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t static ErrorDetails.debugInfo(stack:detail:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*(type metadata accessor for ErrorDetails.DebugInfo(0) - 8) + 64);
  MEMORY[0x28223BE20]();
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);

  ErrorDetails.DebugInfo.init(stack:detail:)();
  sub_24DCE2B8C(v4, a1, type metadata accessor for ErrorDetails.DebugInfo);
  type metadata accessor for ErrorDetails.Wrapped(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24DCE0978@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;
  type metadata accessor for ErrorDetails.Wrapped(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_24DCE09F4@<X0>(void (*a1)(uint64_t *__return_ptr, uint64_t)@<X1>, void *a2@<X8>)
{

  a1(&v6, v4);
  *a2 = v6;
  type metadata accessor for ErrorDetails.Wrapped(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t static ErrorDetails.resourceInfo(type:name:errorDescription:owner:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*(type metadata accessor for ErrorDetails.ResourceInfo(0) - 8) + 64);
  MEMORY[0x28223BE20]();
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);

  ErrorDetails.ResourceInfo.init(type:name:errorDescription:owner:)();
  sub_24DCE2B8C(v4, a1, type metadata accessor for ErrorDetails.ResourceInfo);
  type metadata accessor for ErrorDetails.Wrapped(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24DCE0C7C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  sub_24DCE2C58(a1, a3, a2);
  type metadata accessor for ErrorDetails.Wrapped(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24DCE0D14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t)@<X5>, uint64_t (*a7)(void)@<X6>, uint64_t a8@<X8>)
{
  v15 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v17 = &v19 - v16;

  a6(a1, a2, a3, a4);
  sub_24DCE2B8C(v17, a8, a7);
  type metadata accessor for ErrorDetails.Wrapped(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24DCE0E14()
{
  sub_24DD017C8();
  _s20GRPCProtobufInternal12ErrorDetailsV4hash4intoys6HasherVz_tF_0(v1);
  return sub_24DD017E8();
}

uint64_t sub_24DCE0E54()
{
  sub_24DD017C8();
  _s20GRPCProtobufInternal12ErrorDetailsV4hash4intoys6HasherVz_tF_0(v1);
  return sub_24DD017E8();
}

uint64_t ErrorDetails.errorInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(*(type metadata accessor for ErrorDetails.Wrapped(0) - 8) + 64);
  MEMORY[0x28223BE20]();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DCE2C58(v2, v6, type metadata accessor for ErrorDetails.Wrapped);
  if (swift_getEnumCaseMultiPayload())
  {
    v7 = type metadata accessor for ErrorDetails.ErrorInfo(0);
    (*(*(v7 - 8) + 56))(a1, 1, 1, v7);
    return sub_24DCE29DC(v6, type metadata accessor for ErrorDetails.Wrapped);
  }

  else
  {
    sub_24DCE2B8C(v6, a1, type metadata accessor for ErrorDetails.ErrorInfo);
    v9 = type metadata accessor for ErrorDetails.ErrorInfo(0);
    return (*(*(v9 - 8) + 56))(a1, 0, 1, v9);
  }
}

uint64_t ErrorDetails.retryInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(*(type metadata accessor for ErrorDetails.Wrapped(0) - 8) + 64);
  MEMORY[0x28223BE20]();
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24DCE2C58(v2, v6, type metadata accessor for ErrorDetails.Wrapped);
  result = swift_getEnumCaseMultiPayload();
  v8 = result;
  if (result == 1)
  {
    v9 = *v6;
  }

  else
  {
    result = sub_24DCE29DC(v6, type metadata accessor for ErrorDetails.Wrapped);
    v9 = 0uLL;
  }

  *a1 = v9;
  *(a1 + 16) = v8 != 1;
  return result;
}

uint64_t ErrorDetails.debugInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(*(type metadata accessor for ErrorDetails.Wrapped(0) - 8) + 64);
  MEMORY[0x28223BE20]();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DCE2C58(v2, v6, type metadata accessor for ErrorDetails.Wrapped);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_24DCE2B8C(v6, a1, type metadata accessor for ErrorDetails.DebugInfo);
    v7 = type metadata accessor for ErrorDetails.DebugInfo(0);
    return (*(*(v7 - 8) + 56))(a1, 0, 1, v7);
  }

  else
  {
    v9 = type metadata accessor for ErrorDetails.DebugInfo(0);
    (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
    return sub_24DCE29DC(v6, type metadata accessor for ErrorDetails.Wrapped);
  }
}

uint64_t ErrorDetails.quotaFailure.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = *(*(type metadata accessor for ErrorDetails.Wrapped(0) - 8) + 64);
  MEMORY[0x28223BE20]();
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24DCE2C58(v2, v6, type metadata accessor for ErrorDetails.Wrapped);
  result = swift_getEnumCaseMultiPayload();
  if (result == 3)
  {
    v8 = *v6;
  }

  else
  {
    result = sub_24DCE29DC(v6, type metadata accessor for ErrorDetails.Wrapped);
    v8 = 0;
  }

  *a1 = v8;
  return result;
}

uint64_t ErrorDetails.preconditionFailure.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = *(*(type metadata accessor for ErrorDetails.Wrapped(0) - 8) + 64);
  MEMORY[0x28223BE20]();
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24DCE2C58(v2, v6, type metadata accessor for ErrorDetails.Wrapped);
  result = swift_getEnumCaseMultiPayload();
  if (result == 4)
  {
    v8 = *v6;
  }

  else
  {
    result = sub_24DCE29DC(v6, type metadata accessor for ErrorDetails.Wrapped);
    v8 = 0;
  }

  *a1 = v8;
  return result;
}

uint64_t ErrorDetails.badRequest.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = *(*(type metadata accessor for ErrorDetails.Wrapped(0) - 8) + 64);
  MEMORY[0x28223BE20]();
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24DCE2C58(v2, v6, type metadata accessor for ErrorDetails.Wrapped);
  result = swift_getEnumCaseMultiPayload();
  if (result == 5)
  {
    v8 = *v6;
  }

  else
  {
    result = sub_24DCE29DC(v6, type metadata accessor for ErrorDetails.Wrapped);
    v8 = 0;
  }

  *a1 = v8;
  return result;
}

uint64_t ErrorDetails.requestInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(*(type metadata accessor for ErrorDetails.Wrapped(0) - 8) + 64);
  MEMORY[0x28223BE20]();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DCE2C58(v2, v6, type metadata accessor for ErrorDetails.Wrapped);
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_24DCE2B8C(v6, a1, type metadata accessor for ErrorDetails.RequestInfo);
    v7 = type metadata accessor for ErrorDetails.RequestInfo(0);
    return (*(*(v7 - 8) + 56))(a1, 0, 1, v7);
  }

  else
  {
    v9 = type metadata accessor for ErrorDetails.RequestInfo(0);
    (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
    return sub_24DCE29DC(v6, type metadata accessor for ErrorDetails.Wrapped);
  }
}

uint64_t ErrorDetails.resourceInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(*(type metadata accessor for ErrorDetails.Wrapped(0) - 8) + 64);
  MEMORY[0x28223BE20]();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DCE2C58(v2, v6, type metadata accessor for ErrorDetails.Wrapped);
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_24DCE2B8C(v6, a1, type metadata accessor for ErrorDetails.ResourceInfo);
    v7 = type metadata accessor for ErrorDetails.ResourceInfo(0);
    return (*(*(v7 - 8) + 56))(a1, 0, 1, v7);
  }

  else
  {
    v9 = type metadata accessor for ErrorDetails.ResourceInfo(0);
    (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
    return sub_24DCE29DC(v6, type metadata accessor for ErrorDetails.Wrapped);
  }
}

uint64_t ErrorDetails.help.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = *(*(type metadata accessor for ErrorDetails.Wrapped(0) - 8) + 64);
  MEMORY[0x28223BE20]();
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24DCE2C58(v2, v6, type metadata accessor for ErrorDetails.Wrapped);
  result = swift_getEnumCaseMultiPayload();
  if (result == 8)
  {
    v8 = *v6;
  }

  else
  {
    result = sub_24DCE29DC(v6, type metadata accessor for ErrorDetails.Wrapped);
    v8 = 0;
  }

  *a1 = v8;
  return result;
}

uint64_t ErrorDetails.localizedMessage.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(*(type metadata accessor for ErrorDetails.Wrapped(0) - 8) + 64);
  MEMORY[0x28223BE20]();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DCE2C58(v2, v6, type metadata accessor for ErrorDetails.Wrapped);
  if (swift_getEnumCaseMultiPayload() == 9)
  {
    sub_24DCE2B8C(v6, a1, type metadata accessor for ErrorDetails.LocalizedMessage);
    v7 = type metadata accessor for ErrorDetails.LocalizedMessage(0);
    return (*(*(v7 - 8) + 56))(a1, 0, 1, v7);
  }

  else
  {
    v9 = type metadata accessor for ErrorDetails.LocalizedMessage(0);
    (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
    return sub_24DCE29DC(v6, type metadata accessor for ErrorDetails.Wrapped);
  }
}

uint64_t ErrorDetails.any.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(*(type metadata accessor for ErrorDetails.Wrapped(0) - 8) + 64);
  MEMORY[0x28223BE20]();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DCE2C58(v2, v6, type metadata accessor for ErrorDetails.Wrapped);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = sub_24DD01418();
  v9 = *(v8 - 8);
  v10 = v9;
  if (EnumCaseMultiPayload == 10)
  {
    (*(v9 + 32))(a1, v6, v8);
    return (*(v10 + 56))(a1, 0, 1, v8);
  }

  else
  {
    (*(v9 + 56))(a1, 1, 1, v8);
    return sub_24DCE29DC(v6, type metadata accessor for ErrorDetails.Wrapped);
  }
}

unint64_t sub_24DCE1B88(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_24DD017C8();
  sub_24DD016E8();
  v6 = sub_24DD017E8();

  return sub_24DCE1C00(a1, a2, v6);
}

unint64_t sub_24DCE1C00(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_24DD01778())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t _s20GRPCProtobufInternal12ErrorDetailsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v103 = a2;
  v3 = sub_24DD01418();
  v91 = *(v3 - 8);
  v92 = v3;
  v4 = *(v91 + 64);
  (MEMORY[0x28223BE20])();
  v89 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for ErrorDetails.LocalizedMessage(0);
  v6 = *(*(v90 - 8) + 64);
  (MEMORY[0x28223BE20])();
  v88 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for ErrorDetails.ResourceInfo(0);
  v8 = *(*(v87 - 8) + 64);
  (MEMORY[0x28223BE20])();
  v86 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for ErrorDetails.RequestInfo(0);
  v10 = *(*(v85 - 8) + 64);
  (MEMORY[0x28223BE20])();
  v84 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for ErrorDetails.DebugInfo(0);
  v12 = *(*(v102 - 8) + 64);
  (MEMORY[0x28223BE20])();
  v101 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for ErrorDetails.ErrorInfo(0);
  v14 = *(*(v100 - 8) + 64);
  (MEMORY[0x28223BE20])();
  v99 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(*(type metadata accessor for ErrorDetails.Wrapped(0) - 8) + 64);
  v17 = (MEMORY[0x28223BE20])();
  v97 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v98 = &v84 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v94 = (&v84 - v22);
  v23 = MEMORY[0x28223BE20](v21);
  v96 = &v84 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v95 = &v84 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v93 = (&v84 - v28);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = (&v84 - v30);
  v32 = MEMORY[0x28223BE20](v29);
  v34 = (&v84 - v33);
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v84 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v40 = (&v84 - v39);
  MEMORY[0x28223BE20](v38);
  v42 = &v84 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9CB0, &qword_24DD02258);
  v44 = (*(*(v43 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v45 = MEMORY[0x28223BE20](v43 - 8);
  v47 = &v84 - v46;
  v48 = *(v45 + 56);
  sub_24DCE2C58(a1, &v84 - v46, type metadata accessor for ErrorDetails.Wrapped);
  v49 = v48;
  sub_24DCE2C58(v103, &v47[v48], type metadata accessor for ErrorDetails.Wrapped);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload != 5)
      {
        if (EnumCaseMultiPayload == 6)
        {
          v51 = v95;
          sub_24DCE2C58(v47, v95, type metadata accessor for ErrorDetails.Wrapped);
          if (swift_getEnumCaseMultiPayload() == 6)
          {
            v52 = v84;
            sub_24DCE2B8C(&v47[v48], v84, type metadata accessor for ErrorDetails.RequestInfo);
            sub_24DCE2940(&qword_27F1A9CD0, type metadata accessor for ErrorDetails.RequestInfo);
            v53 = sub_24DD016C8();
            v54 = type metadata accessor for ErrorDetails.RequestInfo;
LABEL_33:
            v65 = v54;
            v66 = v52;
            goto LABEL_34;
          }

          v82 = type metadata accessor for ErrorDetails.RequestInfo;
        }

        else
        {
          v51 = v96;
          sub_24DCE2C58(v47, v96, type metadata accessor for ErrorDetails.Wrapped);
          if (swift_getEnumCaseMultiPayload() == 7)
          {
            v52 = v86;
            sub_24DCE2B8C(&v47[v48], v86, type metadata accessor for ErrorDetails.ResourceInfo);
            sub_24DCE2940(&qword_27F1A9CC8, type metadata accessor for ErrorDetails.ResourceInfo);
            v53 = sub_24DD016C8();
            v54 = type metadata accessor for ErrorDetails.ResourceInfo;
            goto LABEL_33;
          }

          v82 = type metadata accessor for ErrorDetails.ResourceInfo;
        }

        goto LABEL_42;
      }

      v67 = v93;
      sub_24DCE2C58(v47, v93, type metadata accessor for ErrorDetails.Wrapped);
      v68 = *v67;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v69 = *&v47[v48];
        *&v105 = v68;
        *&v104 = v69;
        sub_24DCE3274();
        goto LABEL_27;
      }

      goto LABEL_28;
    }

    if (EnumCaseMultiPayload == 8)
    {
      v70 = v94;
      sub_24DCE2C58(v47, v94, type metadata accessor for ErrorDetails.Wrapped);
      v71 = *v70;
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        v72 = *&v47[v48];
        *&v105 = v71;
        *&v104 = v72;
        sub_24DCE3220();
        goto LABEL_27;
      }

LABEL_28:

      goto LABEL_44;
    }

    if (EnumCaseMultiPayload != 9)
    {
      v77 = v97;
      sub_24DCE2C58(v47, v97, type metadata accessor for ErrorDetails.Wrapped);
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        (*(v91 + 8))(v77, v92);
        goto LABEL_44;
      }

      v79 = v91;
      v78 = v92;
      v80 = v89;
      (*(v91 + 32))(v89, &v47[v48], v92);
      v53 = sub_24DD013B8();
      v81 = *(v79 + 8);
      v81(v80, v78);
      v81(v77, v78);
LABEL_48:
      sub_24DCE29DC(v47, type metadata accessor for ErrorDetails.Wrapped);
      return v53 & 1;
    }

    v61 = v98;
    sub_24DCE2C58(v47, v98, type metadata accessor for ErrorDetails.Wrapped);
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      v62 = v88;
      sub_24DCE2B8C(&v47[v48], v88, type metadata accessor for ErrorDetails.LocalizedMessage);
      sub_24DCE2940(&qword_27F1A9CB8, type metadata accessor for ErrorDetails.LocalizedMessage);
      v53 = sub_24DD016C8();
      v63 = type metadata accessor for ErrorDetails.LocalizedMessage;
LABEL_46:
      v65 = v63;
      sub_24DCE29DC(v62, v63);
      v76 = v61;
      goto LABEL_47;
    }

    v64 = type metadata accessor for ErrorDetails.LocalizedMessage;
    goto LABEL_40;
  }

  v55 = v37;
  v56 = v99;
  v57 = v101;
  if (EnumCaseMultiPayload > 1)
  {
    v58 = v49;
    if (EnumCaseMultiPayload == 2)
    {
      v51 = v55;
      sub_24DCE2C58(v47, v55, type metadata accessor for ErrorDetails.Wrapped);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_24DCE2B8C(&v47[v58], v57, type metadata accessor for ErrorDetails.DebugInfo);
        sub_24DCE2940(&qword_27F1A9CF0, type metadata accessor for ErrorDetails.DebugInfo);
        v53 = sub_24DD016C8();
        v54 = type metadata accessor for ErrorDetails.DebugInfo;
        v65 = type metadata accessor for ErrorDetails.DebugInfo;
        v66 = v57;
LABEL_34:
        sub_24DCE29DC(v66, v54);
        v76 = v51;
LABEL_47:
        sub_24DCE29DC(v76, v65);
        goto LABEL_48;
      }

      v82 = type metadata accessor for ErrorDetails.DebugInfo;
LABEL_42:
      sub_24DCE29DC(v51, v82);
      goto LABEL_44;
    }

    if (EnumCaseMultiPayload == 3)
    {
      sub_24DCE2C58(v47, v34, type metadata accessor for ErrorDetails.Wrapped);
      v59 = *v34;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v60 = *&v47[v49];
        *&v105 = v59;
        *&v104 = v60;
        sub_24DCE331C();
LABEL_27:
        v53 = sub_24DD016C8();

        goto LABEL_48;
      }
    }

    else
    {
      sub_24DCE2C58(v47, v31, type metadata accessor for ErrorDetails.Wrapped);
      v73 = *v31;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v74 = *&v47[v49];
        *&v105 = v73;
        *&v104 = v74;
        sub_24DCE32C8();
        goto LABEL_27;
      }
    }

    goto LABEL_28;
  }

  if (!EnumCaseMultiPayload)
  {
    v61 = v42;
    sub_24DCE2C58(v47, v42, type metadata accessor for ErrorDetails.Wrapped);
    if (!swift_getEnumCaseMultiPayload())
    {
      v62 = v56;
      sub_24DCE2B8C(&v47[v49], v56, type metadata accessor for ErrorDetails.ErrorInfo);
      sub_24DCE2940(&qword_27F1A9D00, type metadata accessor for ErrorDetails.ErrorInfo);
      v53 = sub_24DD016C8();
      v63 = type metadata accessor for ErrorDetails.ErrorInfo;
      goto LABEL_46;
    }

    v64 = type metadata accessor for ErrorDetails.ErrorInfo;
LABEL_40:
    sub_24DCE29DC(v61, v64);
    goto LABEL_44;
  }

  sub_24DCE2C58(v47, v40, type metadata accessor for ErrorDetails.Wrapped);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v75 = *v40;
    v104 = *&v47[v49];
    v105 = v75;
    sub_24DCE3370();
    v53 = sub_24DD016C8();
    goto LABEL_48;
  }

LABEL_44:
  sub_24DCE31B8(v47);
  v53 = 0;
  return v53 & 1;
}

uint64_t sub_24DCE2940(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24DCE2988()
{
  result = qword_27F1A9C50;
  if (!qword_27F1A9C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1A9C50);
  }

  return result;
}

uint64_t sub_24DCE29DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24DCE2A3C()
{
  result = qword_27F1A9C68;
  if (!qword_27F1A9C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1A9C68);
  }

  return result;
}

unint64_t sub_24DCE2A90()
{
  result = qword_27F1A9C70;
  if (!qword_27F1A9C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1A9C70);
  }

  return result;
}

unint64_t sub_24DCE2AE4()
{
  result = qword_27F1A9C78;
  if (!qword_27F1A9C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1A9C78);
  }

  return result;
}

unint64_t sub_24DCE2B38()
{
  result = qword_27F1A9C88;
  if (!qword_27F1A9C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1A9C88);
  }

  return result;
}

uint64_t sub_24DCE2B8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24DCE2BF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ErrorDetails.Wrapped(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24DCE2C58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24DCE2CC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9CA8, &qword_24DD02250);
    v3 = sub_24DD01768();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_24DCE1B88(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t sub_24DCE2E84(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24DCE2ED0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ErrorDetails.Wrapped(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24DCE2F50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ErrorDetails.Wrapped(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24DCE2FC0()
{
  result = type metadata accessor for ErrorDetails.Wrapped(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24DCE3080()
{
  result = type metadata accessor for ErrorDetails.ErrorInfo(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ErrorDetails.DebugInfo(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ErrorDetails.RequestInfo(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for ErrorDetails.ResourceInfo(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for ErrorDetails.LocalizedMessage(319);
          if (v5 <= 0x3F)
          {
            result = sub_24DD01418();
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
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

uint64_t sub_24DCE31B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9CB0, &qword_24DD02258);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24DCE3220()
{
  result = qword_27F1A9CC0;
  if (!qword_27F1A9CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1A9CC0);
  }

  return result;
}

unint64_t sub_24DCE3274()
{
  result = qword_27F1A9CD8;
  if (!qword_27F1A9CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1A9CD8);
  }

  return result;
}

unint64_t sub_24DCE32C8()
{
  result = qword_27F1A9CE0;
  if (!qword_27F1A9CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1A9CE0);
  }

  return result;
}

unint64_t sub_24DCE331C()
{
  result = qword_27F1A9CE8;
  if (!qword_27F1A9CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1A9CE8);
  }

  return result;
}

unint64_t sub_24DCE3370()
{
  result = qword_27F1A9CF8;
  if (!qword_27F1A9CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1A9CF8);
  }

  return result;
}

uint64_t sub_24DCE34C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_24DD01298();
  return (*(v5 + 8))(a1, a3);
}

uint64_t sub_24DCE35D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(a3 + 24);
  return sub_24DD01258();
}

uint64_t sub_24DCE35FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(a3 + 24);
  return sub_24DD01268();
}

uint64_t sub_24DCE3620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_24DCE349C();
}

uint64_t sub_24DCE362C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  v6 = *(a4 + 24);
  return sub_24DCE34C0(a1, v5, a2);
}

uint64_t sub_24DCE3690(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24DCE3700(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_24DCE3840(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t GoogleRPCStatus.code.setter(uint64_t a1)
{
  v3 = sub_24DD01368();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t type metadata accessor for GoogleRPCStatus()
{
  result = qword_27F1AA740;
  if (!qword_27F1AA740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GoogleRPCStatus.message.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GoogleRPCStatus() + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t GoogleRPCStatus.details.getter()
{
  v1 = *(v0 + *(type metadata accessor for GoogleRPCStatus() + 24));
}

uint64_t GoogleRPCStatus.details.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GoogleRPCStatus() + 24);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_24DCE3CF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_24DD01368();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for GoogleRPCStatus();
  v12 = (a5 + *(result + 20));
  *v12 = a2;
  v12[1] = a3;
  *(a5 + *(result + 24)) = a4;
  return result;
}

uint64_t static GoogleRPCStatus.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_24DD01338() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for GoogleRPCStatus();
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_24DD01778() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v4 + 24);
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);

  return sub_24DCE3E24(v11, v12);
}

uint64_t sub_24DCE3E24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ErrorDetails(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_24DCE41D8(v14, v11);
        sub_24DCE41D8(v15, v8);
        sub_24DCE6404(&qword_27F1A9CA0, type metadata accessor for ErrorDetails);
        v17 = sub_24DD016C8();
        sub_24DCE5D84(v8, type metadata accessor for ErrorDetails);
        sub_24DCE5D84(v11, type metadata accessor for ErrorDetails);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t GoogleRPCStatus.hash(into:)()
{
  v1 = type metadata accessor for ErrorDetails(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DD01368();
  sub_24DCE6404(&qword_27F1A9D08, MEMORY[0x277D0B928]);
  sub_24DD016B8();
  v6 = type metadata accessor for GoogleRPCStatus();
  v7 = (v0 + *(v6 + 20));
  v8 = *v7;
  v9 = v7[1];
  sub_24DD016E8();
  v10 = *(v0 + *(v6 + 24));
  result = MEMORY[0x253037240](*(v10 + 16));
  v12 = *(v10 + 16);
  if (v12)
  {
    v13 = v10 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v14 = *(v2 + 72);
    do
    {
      sub_24DCE41D8(v13, v5);
      sub_24DCE6404(&qword_27F1A9D10, type metadata accessor for ErrorDetails);
      sub_24DD016B8();
      result = sub_24DCE5D84(v5, type metadata accessor for ErrorDetails);
      v13 += v14;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t sub_24DCE41D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ErrorDetails(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t GoogleRPCStatus.hashValue.getter()
{
  v1 = type metadata accessor for ErrorDetails(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DD017C8();
  sub_24DD01368();
  sub_24DCE6404(&qword_27F1A9D08, MEMORY[0x277D0B928]);
  sub_24DD016B8();
  v6 = type metadata accessor for GoogleRPCStatus();
  v7 = (v0 + *(v6 + 20));
  v8 = *v7;
  v9 = v7[1];
  sub_24DD016E8();
  v10 = *(v0 + *(v6 + 24));
  MEMORY[0x253037240](*(v10 + 16));
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = v10 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v13 = *(v2 + 72);
    do
    {
      sub_24DCE41D8(v12, v5);
      sub_24DCE6404(&qword_27F1A9D10, type metadata accessor for ErrorDetails);
      sub_24DD016B8();
      sub_24DCE5D84(v5, type metadata accessor for ErrorDetails);
      v12 += v13;
      --v11;
    }

    while (v11);
  }

  return sub_24DD017E8();
}

uint64_t sub_24DCE4438(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ErrorDetails(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DD01368();
  sub_24DCE6404(&qword_27F1A9D08, MEMORY[0x277D0B928]);
  sub_24DD016B8();
  v9 = (v2 + *(a2 + 20));
  v10 = *v9;
  v11 = v9[1];
  sub_24DD016E8();
  v12 = *(v2 + *(a2 + 24));
  result = MEMORY[0x253037240](*(v12 + 16));
  v14 = *(v12 + 16);
  if (v14)
  {
    v15 = v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v16 = *(v5 + 72);
    do
    {
      sub_24DCE41D8(v15, v8);
      sub_24DCE6404(&qword_27F1A9D10, type metadata accessor for ErrorDetails);
      sub_24DD016B8();
      result = sub_24DCE5D84(v8, type metadata accessor for ErrorDetails);
      v15 += v16;
      --v14;
    }

    while (v14);
  }

  return result;
}

uint64_t sub_24DCE4604(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ErrorDetails(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DD017C8();
  sub_24DD01368();
  sub_24DCE6404(&qword_27F1A9D08, MEMORY[0x277D0B928]);
  sub_24DD016B8();
  v9 = (v2 + *(a2 + 20));
  v10 = *v9;
  v11 = v9[1];
  sub_24DD016E8();
  v12 = *(v2 + *(a2 + 24));
  MEMORY[0x253037240](*(v12 + 16));
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v15 = *(v5 + 72);
    do
    {
      sub_24DCE41D8(v14, v8);
      sub_24DCE6404(&qword_27F1A9D10, type metadata accessor for ErrorDetails);
      sub_24DD016B8();
      sub_24DCE5D84(v8, type metadata accessor for ErrorDetails);
      v14 += v15;
      --v13;
    }

    while (v13);
  }

  return sub_24DD017E8();
}

uint64_t sub_24DCE47E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_24DD01338() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_24DD01778() & 1) == 0)
  {
    return 0;
  }

  v11 = *(a3 + 24);
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);

  return sub_24DCE3E24(v12, v13);
}

uint64_t GoogleRPCStatus.init<A>(serializedBytes:extensions:partial:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v104 = a6;
  v99 = a4;
  v100 = a2;
  LODWORD(v103) = a3;
  v96 = a7;
  v9 = sub_24DD01418();
  v109 = *(v9 - 8);
  v110 = v9;
  v10 = *(v109 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v107 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v108 = &v85 - v13;
  v14 = type metadata accessor for ErrorDetails(0);
  v105 = *(v14 - 8);
  v15 = *(v105 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v106 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_24DD012C8();
  v93 = *(v101 - 8);
  v17 = *(v93 + 64);
  v18 = MEMORY[0x28223BE20](v101);
  v90 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v89 = &v85 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9D18, &qword_24DD02360);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v92 = &v85 - v23;
  v95 = sub_24DD01368();
  v94 = *(v95 - 8);
  v24 = *(v94 + 64);
  MEMORY[0x28223BE20](v95);
  v102 = &v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9D20, &qword_24DD02368);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v91 = &v85 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v97 = &v85 - v30;
  v31 = sub_24DD014D8();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v85 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(a5 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  v40 = &v85 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for Google_Rpc_Status();
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v44 = (&v85 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = *(v37 + 16);
  v98 = a1;
  v45(v40, a1, a5);
  sub_24DCE53F8(v100, v111, &qword_27F1A9D28, &qword_24DD02370);
  v46 = v99;
  (*(v32 + 16))(v36);
  sub_24DCE6404(&qword_27F1A9D30, type metadata accessor for Google_Rpc_Status);
  v47 = v112;
  sub_24DD015B8();
  if (v47)
  {
    (*(v32 + 8))(v46, v31);
    sub_24DCE5D24(v100, &qword_27F1A9D28, &qword_24DD02370);
    return (*(v37 + 8))(v98, a5);
  }

  else
  {
    v112 = 0;
    v49 = v92;
    v86 = a5;
    v103 = v32;
    v104 = v31;
    v88 = v37;
    v50 = *v44;
    v51 = v97;
    sub_24DD012B8();
    v52 = v91;
    sub_24DCE53F8(v51, v91, &qword_27F1A9D20, &qword_24DD02368);
    v53 = v93;
    v54 = v101;
    v55 = (*(v93 + 48))(v52, 1, v101);
    v87 = v44;
    if (v55 == 1)
    {
      v56 = v94;
      v57 = v95;
      (*(v94 + 56))(v49, 1, 1, v95);
      v58 = v110;
    }

    else
    {
      v59 = v89;
      (*(v53 + 32))(v89, v52, v54);
      (*(v53 + 16))(v90, v59, v54);
      sub_24DD01378();
      (*(v53 + 8))(v59, v54);
      v58 = v110;
      v57 = v95;
      v56 = v94;
    }

    v60 = v88;
    v61 = *(v56 + 48);
    if (v61(v49, 1, v57) == 1)
    {
      v62 = v102;
      sub_24DD01348();
      v63 = v61(v49, 1, v57);
      v64 = v98;
      if (v63 != 1)
      {
        sub_24DCE5D24(v49, &qword_27F1A9D18, &qword_24DD02360);
      }
    }

    else
    {
      v62 = v102;
      (*(v56 + 32))(v102, v49, v57);
      v64 = v98;
    }

    v65 = *(v56 + 32);
    v66 = v96;
    v65(v96, v62, v57);
    v67 = v87;
    v68 = *(v87 + 1);
    v69 = *(v87 + 2);
    v93 = type metadata accessor for GoogleRPCStatus();
    v70 = (v66 + *(v93 + 20));
    *v70 = v68;
    v70[1] = v69;
    v71 = *(v67 + 24);
    v72 = *(v71 + 16);
    if (v72)
    {
      v111[0] = MEMORY[0x277D84F90];
      v92 = v69;

      result = sub_24DCE5CE0(0, v72, 0);
      v73 = 0;
      v74 = v111[0];
      v76 = v108;
      v75 = v109;
      v101 = v71 + ((*(v109 + 80) + 32) & ~*(v109 + 80));
      v102 = (v109 + 8);
      while (v73 < *(v71 + 16))
      {
        v77 = *(v75 + 16);
        v77(v76, v101 + *(v75 + 72) * v73, v58);
        v78 = v107;
        v77(v107, v76, v58);
        v79 = v78;
        v80 = v106;
        v81 = v112;
        sub_24DCFFDF4(v79, v106);
        if (v81)
        {
          (*(v103 + 8))(v99, v104);
          sub_24DCE5D24(v100, &qword_27F1A9D28, &qword_24DD02370);
          (*(v88 + 8))(v98, v86);
          (*v102)(v76, v58);
          sub_24DCE5D24(v97, &qword_27F1A9D20, &qword_24DD02368);
          sub_24DCE5D84(v87, type metadata accessor for Google_Rpc_Status);

          (*(v94 + 8))(v96, v95);
        }

        v112 = 0;
        (*v102)(v76, v58);
        v111[0] = v74;
        v83 = *(v74 + 16);
        v82 = *(v74 + 24);
        if (v83 >= v82 >> 1)
        {
          sub_24DCE5CE0(v82 > 1, v83 + 1, 1);
          v74 = v111[0];
        }

        ++v73;
        *(v74 + 16) = v83 + 1;
        result = sub_24DCE5DE4(v80, v74 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v83);
        v75 = v109;
        v58 = v110;
        if (v72 == v73)
        {
          (*(v103 + 8))(v99, v104);
          sub_24DCE5D24(v100, &qword_27F1A9D28, &qword_24DD02370);
          (*(v88 + 8))(v98, v86);
          sub_24DCE5D24(v97, &qword_27F1A9D20, &qword_24DD02368);
          result = sub_24DCE5D84(v87, type metadata accessor for Google_Rpc_Status);
          v66 = v96;
          goto LABEL_20;
        }
      }

      __break(1u);
    }

    else
    {
      v84 = *(v103 + 8);

      v84(v99, v104);
      sub_24DCE5D24(v100, &qword_27F1A9D28, &qword_24DD02370);
      (*(v60 + 8))(v64, v86);
      sub_24DCE5D24(v97, &qword_27F1A9D20, &qword_24DD02368);
      result = sub_24DCE5D84(v67, type metadata accessor for Google_Rpc_Status);
      v74 = MEMORY[0x277D84F90];
LABEL_20:
      *(v66 + *(v93 + 24)) = v74;
    }
  }

  return result;
}

uint64_t sub_24DCE53F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t GoogleRPCStatus.serializedBytes<A>(partial:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v6 = type metadata accessor for Google_Rpc_Status();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = v4;
  sub_24DCE6404(&qword_27F1A9D30, type metadata accessor for Google_Rpc_Status);
  result = sub_24DD015F8();
  if (!v5)
  {
    sub_24DD015C8();
    return sub_24DCE5D84(v9, type metadata accessor for Google_Rpc_Status);
  }

  return result;
}

uint64_t sub_24DCE55C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for ErrorDetails(0);
  v33 = *(v6 - 8);
  v7 = *(v33 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v28 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_24DD01418();
  v9 = *(v32 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v32);
  v34 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_24DD01358();
  if (result < 0xFFFFFFFF80000000)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (result <= 0x7FFFFFFF)
  {
    *a1 = result;
    v13 = type metadata accessor for GoogleRPCStatus();
    v14 = (a2 + *(v13 + 20));
    v16 = *v14;
    v15 = v14[1];
    v17 = *(a1 + 16);

    *(a1 + 8) = v16;
    *(a1 + 16) = v15;
    v29 = a1;
    v18 = *(a2 + *(v13 + 24));
    v19 = *(v18 + 16);
    v20 = MEMORY[0x277D84F90];
    if (!v19)
    {
LABEL_10:
      v25 = v29;
      v26 = *(v29 + 24);

      *(v25 + 24) = v20;
      return result;
    }

    v35 = MEMORY[0x277D84F90];
    result = sub_24DCE61E0(0, v19, 0);
    v21 = 0;
    v20 = v35;
    v31 = v18 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
    v30 = v9 + 32;
    v22 = v28;
    while (v21 < *(v18 + 16))
    {
      sub_24DCE41D8(v31 + *(v33 + 72) * v21, v22);
      sub_24DCFF5D0(v34);
      if (v3)
      {
        sub_24DCE5D84(v22, type metadata accessor for ErrorDetails);
      }

      sub_24DCE5D84(v22, type metadata accessor for ErrorDetails);
      v35 = v20;
      v24 = *(v20 + 16);
      v23 = *(v20 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_24DCE61E0(v23 > 1, v24 + 1, 1);
        v22 = v28;
        v20 = v35;
      }

      ++v21;
      *(v20 + 16) = v24 + 1;
      result = (*(v9 + 32))(v20 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v24, v34, v32);
      if (v19 == v21)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_24DCE58D4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24DD01368();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_24DCE5940()
{
  v1 = (v0 + *(type metadata accessor for GoogleRPCStatus() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t GoogleRPCStatus.rpcErrorMetadata.getter()
{
  v1 = type metadata accessor for Google_Rpc_Status();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_24DD014F8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24DD014E8();
  v17 = v0;
  sub_24DCE6404(&qword_27F1A9D30, type metadata accessor for Google_Rpc_Status);
  sub_24DD015F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9D38, &qword_24DD02378);
  sub_24DCE5E64();
  sub_24DD015C8();
  sub_24DCE5D84(v4, type metadata accessor for Google_Rpc_Status);
  (*(v6 + 8))(v9, v5);
  v10 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9D48, &qword_24DD02380);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_24DD02350;
  v12 = sub_24DCFC7E4();
  v14 = *v12;
  v13 = v12[1];
  *(v11 + 32) = v14;
  *(v11 + 40) = v13;
  *(v11 + 48) = v10;
  *(v11 + 56) = 0;
  *(v11 + 64) = 1;

  return MEMORY[0x253036D70](v11);
}

uint64_t sub_24DCE5C28(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_24DCE5C64(uint64_t a1, uint64_t a2)
{
  v4 = sub_24DCE6404(&qword_27F1A9D60, type metadata accessor for GoogleRPCStatus);

  return MEMORY[0x282162D90](a1, a2, v4);
}

size_t sub_24DCE5CE0(size_t a1, int64_t a2, char a3)
{
  result = sub_24DCE6224(a1, a2, a3, *v3, &qword_27F1A9D70, &unk_24DD024C0, type metadata accessor for ErrorDetails);
  *v3 = result;
  return result;
}

uint64_t sub_24DCE5D24(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24DCE5D84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24DCE5DE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ErrorDetails(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24DCE5E64()
{
  result = qword_27F1A9D40;
  if (!qword_27F1A9D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1A9D38, &qword_24DD02378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1A9D40);
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

uint64_t sub_24DCE5F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24DD01368();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24DCE6040(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24DD01368();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_24DCE60FC()
{
  sub_24DD01368();
  if (v0 <= 0x3F)
  {
    sub_24DCE6188();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24DCE6188()
{
  if (!qword_27F1A9D58)
  {
    type metadata accessor for ErrorDetails(255);
    v0 = sub_24DD01728();
    if (!v1)
    {
      atomic_store(v0, &qword_27F1A9D58);
    }
  }
}

size_t sub_24DCE61E0(size_t a1, int64_t a2, char a3)
{
  result = sub_24DCE6224(a1, a2, a3, *v3, &qword_27F1A9D68, &qword_24DD024B8, MEMORY[0x277D215C8]);
  *v3 = result;
  return result;
}

size_t sub_24DCE6224(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_24DCE6404(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24DCE6480()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t sub_24DCE64B0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_24DCE651C(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_24DCE656C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Google_Rpc_Status() + 28);
  v4 = sub_24DD014B8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Google_Rpc_Status()
{
  result = qword_27F1AAA60;
  if (!qword_27F1AAA60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24DCE6634(uint64_t a1)
{
  v3 = *(type metadata accessor for Google_Rpc_Status() + 28);
  v4 = sub_24DD014B8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_24DCE66F8@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = MEMORY[0x277D84F90];
  v1 = a1 + *(type metadata accessor for Google_Rpc_Status() + 28);
  return sub_24DD014A8();
}

uint64_t sub_24DCE676C()
{
  v0 = sub_24DD01688();
  __swift_allocate_value_buffer(v0, qword_27F1AF0C0);
  __swift_project_value_buffer(v0, qword_27F1AF0C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9DB8, &unk_24DD04970);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9DC0, &qword_24DD02690) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24DD024D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "code";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_24DD01668();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "message";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "details";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_24DD01678();
}

uint64_t sub_24DCE697C()
{
  if (qword_27F1AA750 != -1)
  {
    swift_once();
  }

  v0 = sub_24DD01688();

  return __swift_project_value_buffer(v0, qword_27F1AF0C0);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_24DCE6A18@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F1AA750 != -1)
  {
    swift_once();
  }

  v2 = sub_24DD01688();
  v3 = __swift_project_value_buffer(v2, qword_27F1AF0C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24DCE6AC0()
{
  result = sub_24DD01548();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_24DD01418();
          sub_24DCE77AC(&qword_27F1A9D78, MEMORY[0x277D215C8]);
          sub_24DD01588();
          break;
        case 2:
          sub_24DD01578();
          break;
        case 1:
          sub_24DD01558();
          break;
      }

      result = sub_24DD01548();
    }
  }

  return result;
}

uint64_t sub_24DCE6BDC()
{
  if (!*v0 || (result = sub_24DD01618(), !v1))
  {
    v3 = *(v0 + 16);
    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = *(v0 + 8) & 0xFFFFFFFFFFFFLL;
    }

    if (!v4 || (result = sub_24DD01638(), !v1))
    {
      if (!*(*(v0 + 24) + 16) || (sub_24DD01418(), sub_24DCE77AC(&qword_27F1A9D78, MEMORY[0x277D215C8]), result = sub_24DD01648(), !v1))
      {
        v5 = v0 + *(type metadata accessor for Google_Rpc_Status() + 28);
        return sub_24DD01498();
      }
    }
  }

  return result;
}

uint64_t sub_24DCE6D14()
{
  sub_24DD017C8();
  type metadata accessor for Google_Rpc_Status();
  sub_24DCE77AC(&qword_27F1A9D80, type metadata accessor for Google_Rpc_Status);
  sub_24DD016B8();
  return sub_24DD017E8();
}

uint64_t sub_24DCE6D9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0xE000000000000000;
  *(a2 + 24) = MEMORY[0x277D84F90];
  v2 = a2 + *(a1 + 28);
  return sub_24DD014A8();
}

uint64_t sub_24DCE6DD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_24DD014B8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_24DCE6E4C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_24DD014B8();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_24DCE6EC0(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_24DCE6F18(uint64_t a1, uint64_t a2)
{
  v4 = sub_24DCE77AC(&qword_27F1A9DA0, type metadata accessor for Google_Rpc_Status);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_24DCE6F98(uint64_t a1)
{
  v2 = sub_24DCE77AC(&qword_27F1A9D30, type metadata accessor for Google_Rpc_Status);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_24DCE7004()
{
  sub_24DD017C8();
  sub_24DD016B8();
  return sub_24DD017E8();
}

uint64_t sub_24DCE705C()
{
  sub_24DCE77AC(&qword_27F1A9D30, type metadata accessor for Google_Rpc_Status);

  return sub_24DD015E8();
}

uint64_t sub_24DCE70D8()
{
  sub_24DD017C8();
  sub_24DD016B8();
  return sub_24DD017E8();
}

uint64_t sub_24DCE712C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24DD01418();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v9, v15, v4);
    sub_24DCE77AC(&qword_27F1A9DB0, MEMORY[0x277D215C8]);
    v22 = sub_24DD016C8();
    v23 = *v18;
    (*v18)(v9, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_24DCE7340(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v4 && (sub_24DD01778() & 1) == 0 || (sub_24DCE712C(*(a1 + 24), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for Google_Rpc_Status() + 28);
  sub_24DD014B8();
  sub_24DCE77AC(&qword_27F1A9DA8, MEMORY[0x277D216C8]);
  return sub_24DD016C8() & 1;
}

uint64_t sub_24DCE7554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24DD014B8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24DCE7614(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_24DD014B8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24DCE76B8()
{
  sub_24DCE7754();
  if (v0 <= 0x3F)
  {
    sub_24DD014B8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24DCE7754()
{
  if (!qword_27F1A9D98)
  {
    sub_24DD01418();
    v0 = sub_24DD01728();
    if (!v1)
    {
      atomic_store(v0, &qword_27F1A9D98);
    }
  }
}

uint64_t sub_24DCE77AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ErrorDetails.description.getter()
{
  v1 = v0;
  v2 = sub_24DD01418();
  v41 = *(v2 - 8);
  v42 = v2;
  v3 = *(v41 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v41 - v7;
  v9 = type metadata accessor for ErrorDetails.LocalizedMessage(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ErrorDetails.ResourceInfo(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ErrorDetails.RequestInfo(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ErrorDetails.DebugInfo(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for ErrorDetails.ErrorInfo(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v41 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for ErrorDetails.Wrapped(0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v32 = (&v41 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24DCE7D58(v1, v32);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v43 = *v32;
        return sub_24DD016D8();
      }

      v34 = type metadata accessor for ErrorDetails.ErrorInfo;
      sub_24DCE2B8C(v32, v28, type metadata accessor for ErrorDetails.ErrorInfo);
      v35 = ErrorDetails.ErrorInfo.description.getter();
      v36 = v28;
    }

    else
    {
      if (EnumCaseMultiPayload != 2)
      {
        *&v43 = *v32;
        return sub_24DD016D8();
      }

      v34 = type metadata accessor for ErrorDetails.DebugInfo;
      sub_24DCE2B8C(v32, v24, type metadata accessor for ErrorDetails.DebugInfo);
      v35 = ErrorDetails.DebugInfo.description.getter();
      v36 = v24;
    }

LABEL_20:
    sub_24DCE86D4(v36, v34);
    return v35;
  }

  if (EnumCaseMultiPayload <= 7)
  {
    if (EnumCaseMultiPayload != 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v34 = type metadata accessor for ErrorDetails.RequestInfo;
        sub_24DCE2B8C(v32, v20, type metadata accessor for ErrorDetails.RequestInfo);
        v35 = ErrorDetails.RequestInfo.description.getter();
        v36 = v20;
      }

      else
      {
        v34 = type metadata accessor for ErrorDetails.ResourceInfo;
        sub_24DCE2B8C(v32, v16, type metadata accessor for ErrorDetails.ResourceInfo);
        v35 = ErrorDetails.ResourceInfo.description.getter();
        v36 = v16;
      }

      goto LABEL_20;
    }

    *&v43 = *v32;
    return sub_24DD016D8();
  }

  if (EnumCaseMultiPayload == 8)
  {
    *&v43 = *v32;
    return sub_24DD016D8();
  }

  if (EnumCaseMultiPayload == 9)
  {
    v34 = type metadata accessor for ErrorDetails.LocalizedMessage;
    sub_24DCE2B8C(v32, v12, type metadata accessor for ErrorDetails.LocalizedMessage);
    v35 = ErrorDetails.LocalizedMessage.description.getter();
    v36 = v12;
    goto LABEL_20;
  }

  v39 = v41;
  v38 = v42;
  (*(v41 + 32))(v8, v32, v42);
  (*(v39 + 16))(v6, v8, v38);
  v40 = sub_24DD016D8();
  (*(v39 + 8))(v8, v38);
  return v40;
}

uint64_t sub_24DCE7D58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ErrorDetails.Wrapped(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t ErrorDetails.ErrorInfo.description.getter()
{
  sub_24DD01758();

  v0 = ErrorDetails.ErrorInfo.reason.getter();
  MEMORY[0x253037160](v0);

  MEMORY[0x253037160](0x69616D6F64202C22, 0xEC00000022203A6ELL);
  v1 = ErrorDetails.ErrorInfo.domain.getter();
  MEMORY[0x253037160](v1);

  MEMORY[0x253037160](0x646174656D202C22, 0xED0000203A617461);
  ErrorDetails.ErrorInfo.metadata.getter();
  v2 = sub_24DD01698();
  v4 = v3;

  MEMORY[0x253037160](v2, v4);

  MEMORY[0x253037160](41, 0xE100000000000000);
  return 0xD000000000000013;
}

unint64_t ErrorDetails.DebugInfo.description.getter()
{
  sub_24DD01758();

  ErrorDetails.DebugInfo.stack.getter();
  v0 = MEMORY[0x253037180]();
  v2 = v1;

  MEMORY[0x253037160](v0, v2);

  MEMORY[0x253037160](0x6C6961746564202CLL, 0xEB0000000022203ALL);
  v3 = ErrorDetails.DebugInfo.detail.getter();
  MEMORY[0x253037160](v3);

  MEMORY[0x253037160](10530, 0xE200000000000000);
  return 0xD000000000000011;
}

unint64_t ErrorDetails.QuotaFailure.Violation.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_24DD01758();

  MEMORY[0x253037160](v1, v2);
  MEMORY[0x253037160](0xD00000000000001ALL, 0x800000024DD05E10);
  MEMORY[0x253037160](v3, v4);
  MEMORY[0x253037160](10530, 0xE200000000000000);
  return 0xD000000000000014;
}

uint64_t ErrorDetails.PreconditionFailure.Violation.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_24DD01758();
  MEMORY[0x253037160](0x6F6974616C6F6956, 0xE90000000000006ELL);
  MEMORY[0x253037160](0x7463656A62757328, 0xEB0000000022203ALL);
  MEMORY[0x253037160](v3, v4);
  MEMORY[0x253037160](0x3A65707974202C22, 0xEA00000000002220);
  MEMORY[0x253037160](v1, v2);
  MEMORY[0x253037160](0xD00000000000001ALL, 0x800000024DD05E10);
  MEMORY[0x253037160](v5, v6);
  MEMORY[0x253037160](10530, 0xE200000000000000);
  return 0;
}

unint64_t ErrorDetails.BadRequest.FieldViolation.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_24DD01758();

  MEMORY[0x253037160](v1, v2);
  MEMORY[0x253037160](0xD00000000000001ALL, 0x800000024DD05E10);
  MEMORY[0x253037160](v3, v4);
  MEMORY[0x253037160](10530, 0xE200000000000000);
  return 0xD000000000000017;
}

unint64_t ErrorDetails.RequestInfo.description.getter()
{
  sub_24DD01758();

  v1 = ErrorDetails.RequestInfo.requestID.getter(v0);
  MEMORY[0x253037160](v1);

  v2 = MEMORY[0x253037160](0xD000000000000011, 0x800000024DD05E70);
  v3 = ErrorDetails.RequestInfo.servingData.getter(v2);
  MEMORY[0x253037160](v3);

  MEMORY[0x253037160](10530, 0xE200000000000000);
  return 0xD000000000000018;
}

uint64_t ErrorDetails.ResourceInfo.description.getter()
{
  sub_24DD01758();
  MEMORY[0x253037160](0x656372756F736552, 0xEC0000006F666E49);
  v0 = MEMORY[0x253037160](0x22203A656D616E28, 0xE800000000000000);
  v1 = ErrorDetails.ResourceInfo.name.getter(v0);
  MEMORY[0x253037160](v1);

  MEMORY[0x253037160](0x72656E776F202C22, 0xEB0000000022203ALL);
  v2 = ErrorDetails.ResourceInfo.owner.getter();
  MEMORY[0x253037160](v2);

  v3 = MEMORY[0x253037160](0x3A65707974202C22, 0xEA00000000002220);
  v4 = ErrorDetails.ResourceInfo.type.getter(v3);
  MEMORY[0x253037160](v4);

  MEMORY[0x253037160](0xD000000000000016, 0x800000024DD05E90);
  v5 = ErrorDetails.ResourceInfo.errorDescription.getter();
  MEMORY[0x253037160](v5);

  MEMORY[0x253037160](10530, 0xE200000000000000);
  return 0;
}

uint64_t ErrorDetails.Help.Link.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_24DD01758();

  MEMORY[0x253037160](v1, v2);
  MEMORY[0x253037160](0xD000000000000015, 0x800000024DD05EB0);
  MEMORY[0x253037160](v3, v4);
  MEMORY[0x253037160](10530, 0xE200000000000000);
  return 0x6C7275286B6E694CLL;
}

unint64_t ErrorDetails.LocalizedMessage.description.getter()
{
  sub_24DD01758();

  v1 = ErrorDetails.LocalizedMessage.locale.getter(v0);
  MEMORY[0x253037160](v1);

  v2 = MEMORY[0x253037160](0x617373656D202C22, 0xED000022203A6567);
  v3 = ErrorDetails.LocalizedMessage.message.getter(v2);
  MEMORY[0x253037160](v3);

  MEMORY[0x253037160](10530, 0xE200000000000000);
  return 0xD00000000000001ALL;
}

uint64_t sub_24DCE86D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24DCE8764(uint64_t result, char a2)
{
  if (a2)
  {
    return qword_24DD029C0[result];
  }

  return result;
}

uint64_t sub_24DCE87A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_24DCE9020(a1);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
  return result;
}

uint64_t sub_24DCE87F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_24DCE9020(*a1);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
  return result;
}

uint64_t sub_24DCE8828@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24DCE8764(*v1, *(v1 + 8));
  *a1 = result;
  return result;
}

uint64_t sub_24DCE8858()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_24DD017C8();
  sub_24DD016B8();
  return sub_24DD017E8();
}

uint64_t sub_24DCE88C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24DCE935C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_24DCE8910()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_24DD017C8();
  sub_24DD016B8();
  return sub_24DD017E8();
}

BOOL sub_24DCE8994(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    a1 = qword_24DD029C0[a1];
  }

  if (a4)
  {
    a3 = qword_24DD029C0[a3];
  }

  return a1 == a3;
}

uint64_t sub_24DCE89B8()
{
  v0 = sub_24DD01688();
  __swift_allocate_value_buffer(v0, qword_27F1AF0D8);
  __swift_project_value_buffer(v0, qword_27F1AF0D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9DB8, &unk_24DD04970);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9DC0, &qword_24DD02690) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_24DD02830;
  v4 = v39 + v3;
  v5 = v39 + v3 + v1[14];
  *(v39 + v3) = 0;
  *v5 = "OK";
  *(v5 + 8) = 2;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_24DD01668();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "CANCELLED";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "UNKNOWN";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "INVALID_ARGUMENT";
  *(v13 + 1) = 16;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "DEADLINE_EXCEEDED";
  *(v15 + 1) = 17;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "NOT_FOUND";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "ALREADY_EXISTS";
  *(v19 + 1) = 14;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "PERMISSION_DENIED";
  *(v21 + 1) = 17;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "RESOURCE_EXHAUSTED";
  *(v22 + 8) = 18;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "FAILED_PRECONDITION";
  *(v24 + 1) = 19;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "ABORTED";
  *(v26 + 1) = 7;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "OUT_OF_RANGE";
  *(v28 + 1) = 12;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "UNIMPLEMENTED";
  *(v30 + 1) = 13;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "INTERNAL";
  *(v32 + 1) = 8;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "UNAVAILABLE";
  *(v34 + 1) = 11;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "DATA_LOSS";
  *(v36 + 1) = 9;
  v36[16] = 2;
  v8();
  v37 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 16;
  *v37 = "UNAUTHENTICATED";
  *(v37 + 8) = 15;
  *(v37 + 16) = 2;
  v8();
  return sub_24DD01678();
}

uint64_t sub_24DCE8F14()
{
  if (qword_27F1AAF70 != -1)
  {
    swift_once();
  }

  v0 = sub_24DD01688();

  return __swift_project_value_buffer(v0, qword_27F1AF0D8);
}

uint64_t sub_24DCE8F78@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F1AAF70 != -1)
  {
    swift_once();
  }

  v2 = sub_24DD01688();
  v3 = __swift_project_value_buffer(v2, qword_27F1AF0D8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24DCE9020(uint64_t result)
{
  if (result > 8)
  {
    if (result > 12)
    {
      if (result > 14)
      {
        if (result == 15)
        {
          return 16;
        }

        else if (result == 16)
        {
          return 8;
        }
      }

      else if (result == 13)
      {
        return 14;
      }

      else
      {
        return 15;
      }
    }

    else if (result > 10)
    {
      if (result == 11)
      {
        return 12;
      }

      else
      {
        return 13;
      }
    }

    else if (result == 9)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }

  else if (result == 8)
  {
    return 9;
  }

  return result;
}

unint64_t sub_24DCE913C()
{
  result = qword_27F1A9DC8;
  if (!qword_27F1A9DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1A9DC8);
  }

  return result;
}

unint64_t sub_24DCE9194()
{
  result = qword_27F1A9DD0;
  if (!qword_27F1A9DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1A9DD0);
  }

  return result;
}

unint64_t sub_24DCE91EC()
{
  result = qword_27F1A9DD8;
  if (!qword_27F1A9DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1A9DE0, qword_24DD02888);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1A9DD8);
  }

  return result;
}

unint64_t sub_24DCE9254()
{
  result = qword_27F1A9DE8;
  if (!qword_27F1A9DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1A9DE8);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Google_Rpc_Code(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Google_Rpc_Code(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_24DCE9310(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24DCE932C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_24DCE935C()
{
  result = qword_27F1A9DF0;
  if (!qword_27F1A9DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1A9DF0);
  }

  return result;
}

uint64_t ErrorDetails.ErrorInfo.reason.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_24DCE9490@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t ErrorDetails.ErrorInfo.reason.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t (*ErrorDetails.ErrorInfo.reason.modify(void *a1))()
{
  v4 = *v1;
  v3 = v1[1];
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return sub_24DCE9528;
}

uint64_t ErrorDetails.ErrorInfo.domain.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_24DCE955C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t ErrorDetails.ErrorInfo.domain.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t (*ErrorDetails.ErrorInfo.domain.modify(void *a1))()
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return sub_24DCE95F4;
}

uint64_t sub_24DCE960C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 32);

  *(a2 + 32) = v3;
  return result;
}

uint64_t ErrorDetails.ErrorInfo.metadata.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t (*ErrorDetails.ErrorInfo.metadata.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 32);
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return sub_24DCE96CC;
}

uint64_t sub_24DCE96CC(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *a1;
  if (a2)
  {
    v5 = *a1;

    *(v3 + 32) = v4;
  }

  else
  {
    v7 = a1[2];

    *(v3 + 32) = v4;
  }

  return result;
}

uint64_t ErrorDetails.ErrorInfo.init(reason:domain:metadata:)()
{
  type metadata accessor for Google_Rpc_ErrorInfo(0);
  sub_24DCF0A44(&qword_27F1A9DF8, type metadata accessor for Google_Rpc_ErrorInfo);
  sub_24DD015F8();
}

uint64_t sub_24DCE9AC4()
{
  v1 = type metadata accessor for Google_Rpc_RetryInfo(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v6[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *v0;
  sub_24DCF0A44(&qword_27F1A9E08, type metadata accessor for Google_Rpc_RetryInfo);
  sub_24DD015F8();
  sub_24DD01418();
  v7 = v4;
  sub_24DCF0A44(&qword_27F1A9D78, MEMORY[0x277D215C8]);
  sub_24DD015F8();
  return sub_24DCF0CCC(v4, type metadata accessor for Google_Rpc_RetryInfo);
}

uint64_t sub_24DCE9C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24DD01478();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = a2;
  v12 = a3;
  sub_24DCF0A44(&qword_27F1A9F40, MEMORY[0x277D21628]);
  sub_24DD015F8();
  return sub_24DCF2958(v8);
}

uint64_t sub_24DCE9D5C()
{
  v1 = sub_24DD014F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DD01408();
  sub_24DD014E8();
  type metadata accessor for Google_Rpc_RetryInfo(0);
  sub_24DCF0A44(&qword_27F1A9E08, type metadata accessor for Google_Rpc_RetryInfo);
  sub_24DD015C8();
  if (v0)
  {
    return (*(v2 + 8))(v5, v1);
  }

  (*(v2 + 8))(v5, v1);
  return sub_24DD013E8();
}

uint64_t ErrorDetails.RetryInfo.delay.getter()
{
  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t ErrorDetails.RetryInfo.delay.setter(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

uint64_t ErrorDetails.RetryInfo.init(delay:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_24DCE9F38@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v34 = a2;
  v4 = sub_24DD01478();
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9E10, &qword_24DD02A50);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v31 - v13;
  v15 = type metadata accessor for Google_Rpc_RetryInfo(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DCF0A44(&qword_27F1A9E08, type metadata accessor for Google_Rpc_RetryInfo);
  sub_24DCFF474(v15, v14);
  if (v2)
  {
    v20 = sub_24DD01418();
    return (*(*(v20 - 8) + 8))(a1, v20);
  }

  else
  {
    v32 = a1;
    v22 = (*(v16 + 48))(v14, 1, v15);
    if (v22 == 1)
    {
      v23 = sub_24DD01418();
      (*(*(v23 - 8) + 8))(v32, v23);
      result = sub_24DCE5D24(v14, &qword_27F1A9E10, &qword_24DD02A50);
      v24 = 0;
      v25 = 0;
    }

    else
    {
      sub_24DCF1B14(v14, v19, type metadata accessor for Google_Rpc_RetryInfo);
      sub_24DCF2804(v10);
      v31[1] = sub_24DD01448();
      v26 = v22;
      v27 = *(v33 + 8);
      v27(v10, v4);
      sub_24DCF2804(v8);
      sub_24DD01428();
      v27(v8, v4);
      v22 = v26;
      v24 = sub_24DD01808();
      v25 = v28;
      v29 = sub_24DD01418();
      (*(*(v29 - 8) + 8))(v32, v29);
      result = sub_24DCF0CCC(v19, type metadata accessor for Google_Rpc_RetryInfo);
    }

    v30 = v34;
    *v34 = v24;
    v30[1] = v25;
    *(v30 + 16) = v22 == 1;
  }

  return result;
}

uint64_t ErrorDetails.RetryInfo.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_24DD01828();
}

uint64_t ErrorDetails.RetryInfo.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24DD017C8();
  sub_24DD01828();
  return sub_24DD017E8();
}

uint64_t sub_24DCEA374()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24DD017C8();
  sub_24DD01828();
  return sub_24DD017E8();
}

uint64_t sub_24DCEA3C0()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_24DD01828();
}

uint64_t sub_24DCEA3C8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24DD017C8();
  sub_24DD01828();
  return sub_24DD017E8();
}

uint64_t sub_24DCEA410()
{
  v1 = type metadata accessor for Google_Rpc_RetryInfo(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v6[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *v0;
  sub_24DCF0A44(&qword_27F1A9E08, type metadata accessor for Google_Rpc_RetryInfo);
  sub_24DD015F8();
  sub_24DD01418();
  v7 = v4;
  sub_24DCF0A44(&qword_27F1A9D78, MEMORY[0x277D215C8]);
  sub_24DD015F8();
  return sub_24DCF0CCC(v4, type metadata accessor for Google_Rpc_RetryInfo);
}

uint64_t sub_24DCEA68C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  *a2 = v3;
  return result;
}

uint64_t ErrorDetails.DebugInfo.stack.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t (*ErrorDetails.DebugInfo.stack.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *v1;
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return sub_24DCEA74C;
}

uint64_t sub_24DCEA74C(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *a1;
  if (a2)
  {
    v5 = *a1;

    *v3 = v4;
  }

  else
  {
    v7 = a1[2];

    *v3 = v4;
  }

  return result;
}

uint64_t ErrorDetails.DebugInfo.detail.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t sub_24DCEA7F0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_24DCEA7FC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a2 + 16);

  *(a2 + 8) = v4;
  *(a2 + 16) = v3;
  return result;
}

uint64_t ErrorDetails.DebugInfo.detail.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t (*ErrorDetails.DebugInfo.detail.modify(void *a1))(uint64_t *a1, char a2)
{
  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return sub_24DCEA8C8;
}

uint64_t sub_24DCEA8C8(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  if (a2)
  {
    v6 = a1[1];

    *(v5 + 8) = v3;
    *(v5 + 16) = v2;
  }

  else
  {
    v8 = a1[3];

    *(v5 + 8) = v3;
    *(v5 + 16) = v2;
  }

  return result;
}

uint64_t ErrorDetails.DebugInfo.init(stack:detail:)()
{
  type metadata accessor for Google_Rpc_DebugInfo(0);
  sub_24DCF0A44(&qword_27F1A9E18, type metadata accessor for Google_Rpc_DebugInfo);
  sub_24DD015F8();
}

uint64_t sub_24DCEACFC()
{
  v1 = type metadata accessor for Google_Rpc_QuotaFailure(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v6[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *v0;
  sub_24DCF0A44(&qword_27F1A9E28, type metadata accessor for Google_Rpc_QuotaFailure);
  sub_24DD015F8();
  sub_24DD01418();
  v7 = v4;
  sub_24DCF0A44(&qword_27F1A9D78, MEMORY[0x277D215C8]);
  sub_24DD015F8();
  return sub_24DCF0CCC(v4, type metadata accessor for Google_Rpc_QuotaFailure);
}

uint64_t sub_24DCEAE88(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for Google_Rpc_QuotaFailure.Violation(0);
  v23 = *(v4 - 8);
  v24 = v4;
  v5 = *(v23 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v22[0] = a1;
    v25 = MEMORY[0x277D84F90];
    sub_24DCF025C(0, v8, 0);
    v9 = v25;
    v10 = sub_24DCF0A44(&qword_27F1A9F30, type metadata accessor for Google_Rpc_QuotaFailure.Violation);
    v22[1] = v10;
    v11 = (a2 + 56);
    do
    {
      v12 = *(v11 - 3);
      v13 = *(v11 - 2);
      v14 = *(v11 - 1);
      v15 = *v11;
      MEMORY[0x28223BE20](v10);
      v22[-4] = v16;
      v22[-3] = v13;
      v22[-2] = v17;
      v22[-1] = v15;

      sub_24DD015F8();

      v25 = v9;
      v19 = *(v9 + 16);
      v18 = *(v9 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_24DCF025C(v18 > 1, v19 + 1, 1);
        v9 = v25;
      }

      *(v9 + 16) = v19 + 1;
      v10 = sub_24DCF1B14(v7, v9 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v19, type metadata accessor for Google_Rpc_QuotaFailure.Violation);
      v11 += 4;
      --v8;
    }

    while (v8);
    a1 = v22[0];
  }

  v20 = *a1;

  *a1 = v9;
  return result;
}

uint64_t sub_24DCEB0D8()
{
  v1 = sub_24DD014F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DD01408();
  sub_24DD014E8();
  type metadata accessor for Google_Rpc_QuotaFailure(0);
  sub_24DCF0A44(&qword_27F1A9E28, type metadata accessor for Google_Rpc_QuotaFailure);
  sub_24DD015C8();
  if (v0)
  {
    return (*(v2 + 8))(v5, v1);
  }

  (*(v2 + 8))(v5, v1);
  return sub_24DD013E8();
}

uint64_t sub_24DCEB29C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for Google_Rpc_QuotaFailure.Violation(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v9 = (v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9E30, &qword_24DD02A58);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v34 - v12;
  v14 = type metadata accessor for Google_Rpc_QuotaFailure(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DCF0A44(&qword_27F1A9E28, type metadata accessor for Google_Rpc_QuotaFailure);
  sub_24DCFF474(v14, v13);
  if (v2)
  {
    v19 = sub_24DD01418();
    return (*(*(v19 - 8) + 8))(a1, v19);
  }

  else if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v21 = sub_24DD01418();
    (*(*(v21 - 8) + 8))(a1, v21);
    result = sub_24DCE5D24(v13, &qword_27F1A9E30, &qword_24DD02A58);
    *a2 = 0;
  }

  else
  {
    sub_24DCF1B14(v13, v18, type metadata accessor for Google_Rpc_QuotaFailure);
    v22 = *v18;
    v23 = *(*v18 + 16);
    if (v23)
    {
      v34[0] = v18;
      v34[1] = 0;
      v35 = a1;
      v36 = a2;
      v39 = MEMORY[0x277D84F90];
      sub_24DCF02A0(0, v23, 0);
      v24 = v39;
      v25 = v22 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
      v37 = *(v6 + 72);
      do
      {
        sub_24DCF0D2C(v25, v9, type metadata accessor for Google_Rpc_QuotaFailure.Violation);
        v26 = *v9;
        v27 = v9[1];
        v28 = v9[3];
        v38 = v9[2];

        sub_24DCF0CCC(v9, type metadata accessor for Google_Rpc_QuotaFailure.Violation);
        v39 = v24;
        v30 = *(v24 + 16);
        v29 = *(v24 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_24DCF02A0((v29 > 1), v30 + 1, 1);
          v24 = v39;
        }

        *(v24 + 16) = v30 + 1;
        v31 = (v24 + 32 * v30);
        v31[4] = v26;
        v31[5] = v27;
        v31[6] = v38;
        v31[7] = v28;
        v25 += v37;
        --v23;
      }

      while (v23);
      v32 = sub_24DD01418();
      (*(*(v32 - 8) + 8))(v35, v32);
      result = sub_24DCF0CCC(v34[0], type metadata accessor for Google_Rpc_QuotaFailure);
      *v36 = v24;
    }

    else
    {
      v33 = sub_24DD01418();
      (*(*(v33 - 8) + 8))(a1, v33);
      result = sub_24DCF0CCC(v18, type metadata accessor for Google_Rpc_QuotaFailure);
      *a2 = MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t sub_24DCEB73C(uint64_t a1, uint64_t a2)
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
      v4 = *(a1 + i + 48);
      v5 = *(a1 + i + 56);
      v6 = *(a1 + i + 64);
      v7 = *(a1 + i + 72);
      v8 = *(a2 + i + 48);
      v9 = *(a2 + i + 56);
      v10 = *(a2 + i + 64);
      v11 = *(a2 + i + 72);
      v12 = *(a1 + i + 32) == *(a2 + i + 32) && *(a1 + i + 40) == *(a2 + i + 40);
      if (!v12 && (sub_24DD01778() & 1) == 0)
      {
        break;
      }

      v13 = v4 == v8 && v5 == v9;
      if (!v13 && (sub_24DD01778() & 1) == 0)
      {
        break;
      }

      v14 = v6 == v10 && v7 == v11;
      if (!v14 && (sub_24DD01778() & 1) == 0)
      {
        break;
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

uint64_t sub_24DCEB85C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 4)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (sub_24DD01778() & 1) == 0)
      {
        break;
      }

      v10 = v5 == v7 && v6 == v8;
      if (!v10 && (sub_24DD01778() & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_24DCEB92C()
{
  v1 = type metadata accessor for Google_Rpc_QuotaFailure(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v6[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *v0;
  sub_24DCF0A44(&qword_27F1A9E28, type metadata accessor for Google_Rpc_QuotaFailure);
  sub_24DD015F8();
  sub_24DD01418();
  v7 = v4;
  sub_24DCF0A44(&qword_27F1A9D78, MEMORY[0x277D215C8]);
  sub_24DD015F8();
  return sub_24DCF0CCC(v4, type metadata accessor for Google_Rpc_QuotaFailure);
}

uint64_t ErrorDetails.PreconditionFailure.Violation.type.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ErrorDetails.PreconditionFailure.Violation.type.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ErrorDetails.PreconditionFailure.Violation.subject.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ErrorDetails.PreconditionFailure.Violation.subject.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ErrorDetails.PreconditionFailure.Violation.violationDescription.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ErrorDetails.PreconditionFailure.Violation.violationDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ErrorDetails.PreconditionFailure.Violation.init(type:subject:description:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t sub_24DCEBC9C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  *a2 = v5;
  a2[1] = v4;
  v6 = a1[3];
  a2[2] = a1[2];
  a2[3] = v6;
  v8 = a1[4];
  v7 = a1[5];

  result = sub_24DCF0CCC(a1, type metadata accessor for Google_Rpc_PreconditionFailure.Violation);
  a2[4] = v8;
  a2[5] = v7;
  return result;
}

uint64_t static ErrorDetails.PreconditionFailure.Violation.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_24DD01778() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_24DD01778() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_24DD01778();
}

uint64_t ErrorDetails.PreconditionFailure.Violation.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_24DD016E8();
  sub_24DD016E8();

  return sub_24DD016E8();
}

uint64_t ErrorDetails.PreconditionFailure.Violation.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_24DD017C8();
  sub_24DD016E8();
  sub_24DD016E8();
  sub_24DD016E8();
  return sub_24DD017E8();
}

uint64_t sub_24DCEBF00()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_24DD017C8();
  sub_24DD016E8();
  sub_24DD016E8();
  sub_24DD016E8();
  return sub_24DD017E8();
}

uint64_t sub_24DCEBF84()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_24DD016E8();
  sub_24DD016E8();

  return sub_24DD016E8();
}

uint64_t sub_24DCEBFF0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_24DD017C8();
  sub_24DD016E8();
  sub_24DD016E8();
  sub_24DD016E8();
  return sub_24DD017E8();
}

uint64_t sub_24DCEC070(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_24DD01778() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_24DD01778() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_24DD01778();
}

uint64_t sub_24DCEC184()
{
  v1 = type metadata accessor for Google_Rpc_PreconditionFailure(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v6[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *v0;
  sub_24DCF0A44(&qword_27F1A9E38, type metadata accessor for Google_Rpc_PreconditionFailure);
  sub_24DD015F8();
  sub_24DD01418();
  v7 = v4;
  sub_24DCF0A44(&qword_27F1A9D78, MEMORY[0x277D215C8]);
  sub_24DD015F8();
  return sub_24DCF0CCC(v4, type metadata accessor for Google_Rpc_PreconditionFailure);
}

uint64_t sub_24DCEC310(void *a1, uint64_t a2)
{
  v18 = type metadata accessor for Google_Rpc_PreconditionFailure.Violation(0);
  v4 = *(v18 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v18);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v17 = a1;
    v21 = MEMORY[0x277D84F90];
    v10 = sub_24DCF02D8(0, v8, 0);
    v9 = v21;
    v11 = (a2 + 32);
    do
    {
      v12 = v11[1];
      v20[0] = *v11;
      v20[1] = v12;
      v20[2] = v11[2];
      MEMORY[0x28223BE20](v10);
      *(&v17 - 2) = v20;
      sub_24DCF1A3C(v20, v19);
      sub_24DCF0A44(&qword_27F1A9F18, type metadata accessor for Google_Rpc_PreconditionFailure.Violation);
      sub_24DD015F8();
      sub_24DCF1A74(v20);
      v21 = v9;
      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_24DCF02D8(v13 > 1, v14 + 1, 1);
        v9 = v21;
      }

      *(v9 + 16) = v14 + 1;
      v10 = sub_24DCF1B14(v7, v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v14, type metadata accessor for Google_Rpc_PreconditionFailure.Violation);
      v11 += 3;
      --v8;
    }

    while (v8);
    a1 = v17;
  }

  v15 = *a1;

  *a1 = v9;
  return result;
}

uint64_t sub_24DCEC558()
{
  v1 = sub_24DD014F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DD01408();
  sub_24DD014E8();
  type metadata accessor for Google_Rpc_PreconditionFailure(0);
  sub_24DCF0A44(&qword_27F1A9E38, type metadata accessor for Google_Rpc_PreconditionFailure);
  sub_24DD015C8();
  if (v0)
  {
    return (*(v2 + 8))(v5, v1);
  }

  (*(v2 + 8))(v5, v1);
  return sub_24DD013E8();
}

uint64_t sub_24DCEC71C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for Google_Rpc_PreconditionFailure.Violation(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v9 = (v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9E40, &qword_24DD02A60);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v36 - v12;
  v14 = type metadata accessor for Google_Rpc_PreconditionFailure(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DCF0A44(&qword_27F1A9E38, type metadata accessor for Google_Rpc_PreconditionFailure);
  sub_24DCFF474(v14, v13);
  if (v2)
  {
    v19 = sub_24DD01418();
    return (*(*(v19 - 8) + 8))(a1, v19);
  }

  else if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v21 = sub_24DD01418();
    (*(*(v21 - 8) + 8))(a1, v21);
    result = sub_24DCE5D24(v13, &qword_27F1A9E40, &qword_24DD02A60);
    *a2 = 0;
  }

  else
  {
    sub_24DCF1B14(v13, v18, type metadata accessor for Google_Rpc_PreconditionFailure);
    v22 = *v18;
    v23 = *(*v18 + 16);
    if (v23)
    {
      v36[0] = v18;
      v36[1] = 0;
      v37 = a1;
      v38 = a2;
      v43 = MEMORY[0x277D84F90];
      sub_24DCF031C(0, v23, 0);
      v24 = v43;
      v25 = v22 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
      v39 = *(v6 + 72);
      do
      {
        sub_24DCF0D2C(v25, v9, type metadata accessor for Google_Rpc_PreconditionFailure.Violation);
        v26 = *v9;
        v27 = v9[1];
        v28 = v9[3];
        v41 = v9[2];
        v42 = v26;
        v29 = v9[5];
        v40 = v9[4];

        sub_24DCF0CCC(v9, type metadata accessor for Google_Rpc_PreconditionFailure.Violation);
        v43 = v24;
        v31 = *(v24 + 16);
        v30 = *(v24 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_24DCF031C((v30 > 1), v31 + 1, 1);
          v24 = v43;
        }

        *(v24 + 16) = v31 + 1;
        v32 = (v24 + 48 * v31);
        v33 = v41;
        v32[4] = v42;
        v32[5] = v27;
        v32[6] = v33;
        v32[7] = v28;
        v32[8] = v40;
        v32[9] = v29;
        v25 += v39;
        --v23;
      }

      while (v23);
      v34 = sub_24DD01418();
      (*(*(v34 - 8) + 8))(v37, v34);
      result = sub_24DCF0CCC(v36[0], type metadata accessor for Google_Rpc_PreconditionFailure);
      *v38 = v24;
    }

    else
    {
      v35 = sub_24DD01418();
      (*(*(v35 - 8) + 8))(a1, v35);
      result = sub_24DCF0CCC(v18, type metadata accessor for Google_Rpc_PreconditionFailure);
      *a2 = MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t ErrorDetails.PreconditionFailure.hash(into:)()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x253037240](v2);
  if (v2)
  {
    v4 = (v1 + 72);
    do
    {
      v5 = *(v4 - 5);
      v6 = *(v4 - 4);
      v7 = *(v4 - 3);
      v8 = *(v4 - 2);
      v9 = *(v4 - 1);
      v10 = *v4;

      sub_24DD016E8();
      sub_24DD016E8();
      sub_24DD016E8();

      v4 += 6;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t ErrorDetails.PreconditionFailure.hashValue.getter()
{
  v1 = *v0;
  sub_24DD017C8();
  sub_24DCF083C(v3, v1);
  return sub_24DD017E8();
}

uint64_t sub_24DCECCDC()
{
  v1 = *v0;
  sub_24DD017C8();
  sub_24DCF083C(v3, v1);
  return sub_24DD017E8();
}

uint64_t sub_24DCECD2C()
{
  v1 = *v0;
  sub_24DD017C8();
  sub_24DCF083C(v3, v1);
  return sub_24DD017E8();
}

uint64_t sub_24DCECD70()
{
  v1 = type metadata accessor for Google_Rpc_PreconditionFailure(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v6[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *v0;
  sub_24DCF0A44(&qword_27F1A9E38, type metadata accessor for Google_Rpc_PreconditionFailure);
  sub_24DD015F8();
  sub_24DD01418();
  v7 = v4;
  sub_24DCF0A44(&qword_27F1A9D78, MEMORY[0x277D215C8]);
  sub_24DD015F8();
  return sub_24DCF0CCC(v4, type metadata accessor for Google_Rpc_PreconditionFailure);
}

uint64_t ErrorDetails.BadRequest.FieldViolation.field.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ErrorDetails.BadRequest.FieldViolation.field.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ErrorDetails.BadRequest.FieldViolation.violationDescription.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ErrorDetails.BadRequest.FieldViolation.violationDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ErrorDetails.BadRequest.FieldViolation.init(field:description:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_24DCED054@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, void *a3@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  *a3 = v7;
  a3[1] = v6;
  v9 = a1[2];
  v8 = a1[3];

  result = sub_24DCF0CCC(a1, a2);
  a3[2] = v9;
  a3[3] = v8;
  return result;
}

uint64_t sub_24DCED0EC()
{
  v1 = type metadata accessor for Google_Rpc_BadRequest(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v6[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *v0;
  sub_24DCF0A44(&qword_27F1A9E48, type metadata accessor for Google_Rpc_BadRequest);
  sub_24DD015F8();
  sub_24DD01418();
  v7 = v4;
  sub_24DCF0A44(&qword_27F1A9D78, MEMORY[0x277D215C8]);
  sub_24DD015F8();
  return sub_24DCF0CCC(v4, type metadata accessor for Google_Rpc_BadRequest);
}

uint64_t sub_24DCED278(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for Google_Rpc_BadRequest.FieldViolation(0);
  v23 = *(v4 - 8);
  v24 = v4;
  v5 = *(v23 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v22[0] = a1;
    v25 = MEMORY[0x277D84F90];
    sub_24DCF033C(0, v8, 0);
    v9 = v25;
    v10 = sub_24DCF0A44(&qword_27F1A9F00, type metadata accessor for Google_Rpc_BadRequest.FieldViolation);
    v22[1] = v10;
    v11 = (a2 + 56);
    do
    {
      v12 = *(v11 - 3);
      v13 = *(v11 - 2);
      v14 = *(v11 - 1);
      v15 = *v11;
      MEMORY[0x28223BE20](v10);
      v22[-4] = v16;
      v22[-3] = v13;
      v22[-2] = v17;
      v22[-1] = v15;

      sub_24DD015F8();

      v25 = v9;
      v19 = *(v9 + 16);
      v18 = *(v9 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_24DCF033C(v18 > 1, v19 + 1, 1);
        v9 = v25;
      }

      *(v9 + 16) = v19 + 1;
      v10 = sub_24DCF1B14(v7, v9 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v19, type metadata accessor for Google_Rpc_BadRequest.FieldViolation);
      v11 += 4;
      --v8;
    }

    while (v8);
    a1 = v22[0];
  }

  v20 = *a1;

  *a1 = v9;
  return result;
}

uint64_t sub_24DCED4C8()
{
  v1 = sub_24DD014F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DD01408();
  sub_24DD014E8();
  type metadata accessor for Google_Rpc_BadRequest(0);
  sub_24DCF0A44(&qword_27F1A9E48, type metadata accessor for Google_Rpc_BadRequest);
  sub_24DD015C8();
  if (v0)
  {
    return (*(v2 + 8))(v5, v1);
  }

  (*(v2 + 8))(v5, v1);
  return sub_24DD013E8();
}

uint64_t sub_24DCED66C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for Google_Rpc_BadRequest.FieldViolation(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v9 = (v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9E50, &qword_24DD02A68);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v34 - v12;
  v14 = type metadata accessor for Google_Rpc_BadRequest(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DCF0A44(&qword_27F1A9E48, type metadata accessor for Google_Rpc_BadRequest);
  sub_24DCFF474(v14, v13);
  if (v2)
  {
    v19 = sub_24DD01418();
    return (*(*(v19 - 8) + 8))(a1, v19);
  }

  else if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v21 = sub_24DD01418();
    (*(*(v21 - 8) + 8))(a1, v21);
    result = sub_24DCE5D24(v13, &qword_27F1A9E50, &qword_24DD02A68);
    *a2 = 0;
  }

  else
  {
    sub_24DCF1B14(v13, v18, type metadata accessor for Google_Rpc_BadRequest);
    v22 = *v18;
    v23 = *(*v18 + 16);
    if (v23)
    {
      v34[0] = v18;
      v34[1] = 0;
      v35 = a1;
      v36 = a2;
      v39 = MEMORY[0x277D84F90];
      sub_24DCF0380(0, v23, 0);
      v24 = v39;
      v25 = v22 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
      v37 = *(v6 + 72);
      do
      {
        sub_24DCF0D2C(v25, v9, type metadata accessor for Google_Rpc_BadRequest.FieldViolation);
        v26 = *v9;
        v27 = v9[1];
        v28 = v9[3];
        v38 = v9[2];

        sub_24DCF0CCC(v9, type metadata accessor for Google_Rpc_BadRequest.FieldViolation);
        v39 = v24;
        v30 = *(v24 + 16);
        v29 = *(v24 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_24DCF0380((v29 > 1), v30 + 1, 1);
          v24 = v39;
        }

        *(v24 + 16) = v30 + 1;
        v31 = (v24 + 32 * v30);
        v31[4] = v26;
        v31[5] = v27;
        v31[6] = v38;
        v31[7] = v28;
        v25 += v37;
        --v23;
      }

      while (v23);
      v32 = sub_24DD01418();
      (*(*(v32 - 8) + 8))(v35, v32);
      result = sub_24DCF0CCC(v34[0], type metadata accessor for Google_Rpc_BadRequest);
      *v36 = v24;
    }

    else
    {
      v33 = sub_24DD01418();
      (*(*(v33 - 8) + 8))(a1, v33);
      result = sub_24DCF0CCC(v18, type metadata accessor for Google_Rpc_BadRequest);
      *a2 = MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t ErrorDetails.BadRequest.violations.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_24DCEDB5C()
{
  v1 = *v0;
  sub_24DD017C8();
  sub_24DCF090C(v3, v1);
  return sub_24DD017E8();
}

uint64_t sub_24DCEDBC4()
{
  v1 = *v0;
  sub_24DD017C8();
  sub_24DCF090C(v3, v1);
  return sub_24DD017E8();
}

uint64_t sub_24DCEDC08()
{
  v1 = type metadata accessor for Google_Rpc_BadRequest(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v6[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *v0;
  sub_24DCF0A44(&qword_27F1A9E48, type metadata accessor for Google_Rpc_BadRequest);
  sub_24DD015F8();
  sub_24DD01418();
  v7 = v4;
  sub_24DCF0A44(&qword_27F1A9D78, MEMORY[0x277D215C8]);
  sub_24DD015F8();
  return sub_24DCF0CCC(v4, type metadata accessor for Google_Rpc_BadRequest);
}

uint64_t (*ErrorDetails.RequestInfo.requestID.modify(void *a1))()
{
  v4 = *v1;
  v3 = v1[1];
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return sub_24DCF1DD8;
}

uint64_t (*ErrorDetails.RequestInfo.servingData.modify(void *a1))()
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return sub_24DCF1DDC;
}

uint64_t ErrorDetails.RequestInfo.init(requestID:servingData:)()
{
  type metadata accessor for Google_Rpc_RequestInfo(0);
  sub_24DCF0A44(&qword_27F1A9E58, type metadata accessor for Google_Rpc_RequestInfo);
  sub_24DD015F8();
}

uint64_t (*ErrorDetails.ResourceInfo.type.modify(void *a1))()
{
  v4 = *v1;
  v3 = v1[1];
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return sub_24DCF1DD8;
}

uint64_t (*ErrorDetails.ResourceInfo.name.modify(void *a1))()
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return sub_24DCF1DDC;
}

uint64_t ErrorDetails.ResourceInfo.owner.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_24DCEE3D8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_24DCEE3E4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a2 + 40);

  *(a2 + 32) = v4;
  *(a2 + 40) = v3;
  return result;
}

uint64_t ErrorDetails.ResourceInfo.owner.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t (*ErrorDetails.ResourceInfo.owner.modify(void *a1))(uint64_t *a1, char a2)
{
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return sub_24DCEE4B0;
}

uint64_t sub_24DCEE4B0(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  if (a2)
  {
    v6 = a1[1];

    *(v5 + 32) = v3;
    *(v5 + 40) = v2;
  }

  else
  {
    v8 = a1[3];

    *(v5 + 32) = v3;
    *(v5 + 40) = v2;
  }

  return result;
}

uint64_t ErrorDetails.ResourceInfo.errorDescription.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_24DCEE554@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_24DCEE560(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a2 + 56);

  *(a2 + 48) = v4;
  *(a2 + 56) = v3;
  return result;
}

uint64_t ErrorDetails.ResourceInfo.errorDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t (*ErrorDetails.ResourceInfo.errorDescription.modify(void *a1))(uint64_t *a1, char a2)
{
  v4 = *(v1 + 48);
  v3 = *(v1 + 56);
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return sub_24DCEE62C;
}

uint64_t sub_24DCEE62C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  if (a2)
  {
    v6 = a1[1];

    *(v5 + 48) = v3;
    *(v5 + 56) = v2;
  }

  else
  {
    v8 = a1[3];

    *(v5 + 48) = v3;
    *(v5 + 56) = v2;
  }

  return result;
}

uint64_t ErrorDetails.ResourceInfo.init(type:name:errorDescription:owner:)()
{
  type metadata accessor for Google_Rpc_ResourceInfo(0);
  sub_24DCF0A44(&qword_27F1A9E68, type metadata accessor for Google_Rpc_ResourceInfo);
  sub_24DD015F8();
}

uint64_t sub_24DCEEA68@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = a1[2];
  v4 = a1[3];
  *a2 = v5;
  a2[1] = v4;
  v7 = *a1;
  v6 = a1[1];

  result = sub_24DCF0CCC(a1, type metadata accessor for Google_Rpc_Help.Link);
  a2[2] = v7;
  a2[3] = v6;
  return result;
}

uint64_t _s20GRPCProtobufInternal12ErrorDetailsV10BadRequestV14FieldViolationV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_24DD01778(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_24DD01778();
    }
  }

  return result;
}

uint64_t _s20GRPCProtobufInternal12ErrorDetailsV10BadRequestV14FieldViolationV4hash4intoys6HasherVz_tF_0()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_24DD016E8();

  return sub_24DD016E8();
}

uint64_t _s20GRPCProtobufInternal12ErrorDetailsV10BadRequestV14FieldViolationV9hashValueSivg_0()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_24DD017C8();
  sub_24DD016E8();
  sub_24DD016E8();
  return sub_24DD017E8();
}

uint64_t sub_24DCEEC28()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_24DD017C8();
  sub_24DD016E8();
  sub_24DD016E8();
  return sub_24DD017E8();
}

uint64_t sub_24DCEECA8()
{
  v1 = type metadata accessor for Google_Rpc_Help(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v6[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *v0;
  sub_24DCF0A44(&qword_27F1A9E78, type metadata accessor for Google_Rpc_Help);
  sub_24DD015F8();
  sub_24DD01418();
  v7 = v4;
  sub_24DCF0A44(&qword_27F1A9D78, MEMORY[0x277D215C8]);
  sub_24DD015F8();
  return sub_24DCF0CCC(v4, type metadata accessor for Google_Rpc_Help);
}

uint64_t sub_24DCEEE34(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for Google_Rpc_Help.Link(0);
  v23 = *(v4 - 8);
  v24 = v4;
  v5 = *(v23 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v22[0] = a1;
    v25 = MEMORY[0x277D84F90];
    sub_24DCF03B8(0, v8, 0);
    v9 = v25;
    v10 = sub_24DCF0A44(&qword_27F1A9EE8, type metadata accessor for Google_Rpc_Help.Link);
    v22[1] = v10;
    v11 = (a2 + 56);
    do
    {
      v12 = *(v11 - 3);
      v13 = *(v11 - 2);
      v14 = *(v11 - 1);
      v15 = *v11;
      MEMORY[0x28223BE20](v10);
      v22[-4] = v16;
      v22[-3] = v13;
      v22[-2] = v17;
      v22[-1] = v15;

      sub_24DD015F8();

      v25 = v9;
      v19 = *(v9 + 16);
      v18 = *(v9 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_24DCF03B8(v18 > 1, v19 + 1, 1);
        v9 = v25;
      }

      *(v9 + 16) = v19 + 1;
      v10 = sub_24DCF1B14(v7, v9 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v19, type metadata accessor for Google_Rpc_Help.Link);
      v11 += 4;
      --v8;
    }

    while (v8);
    a1 = v22[0];
  }

  v20 = *a1;

  *a1 = v9;
  return result;
}

uint64_t sub_24DCEF084()
{
  v1 = sub_24DD014F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DD01408();
  sub_24DD014E8();
  type metadata accessor for Google_Rpc_Help(0);
  sub_24DCF0A44(&qword_27F1A9E78, type metadata accessor for Google_Rpc_Help);
  sub_24DD015C8();
  if (v0)
  {
    return (*(v2 + 8))(v5, v1);
  }

  (*(v2 + 8))(v5, v1);
  return sub_24DD013E8();
}

uint64_t sub_24DCEF228@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for Google_Rpc_Help.Link(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v9 = (v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9E80, &qword_24DD02A70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v34 - v12;
  v14 = type metadata accessor for Google_Rpc_Help(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DCF0A44(&qword_27F1A9E78, type metadata accessor for Google_Rpc_Help);
  sub_24DCFF474(v14, v13);
  if (v2)
  {
    v19 = sub_24DD01418();
    return (*(*(v19 - 8) + 8))(a1, v19);
  }

  else if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v21 = sub_24DD01418();
    (*(*(v21 - 8) + 8))(a1, v21);
    result = sub_24DCE5D24(v13, &qword_27F1A9E80, &qword_24DD02A70);
    *a2 = 0;
  }

  else
  {
    sub_24DCF1B14(v13, v18, type metadata accessor for Google_Rpc_Help);
    v22 = *v18;
    v23 = *(*v18 + 16);
    if (v23)
    {
      v34[0] = v18;
      v34[1] = 0;
      v35 = a1;
      v36 = a2;
      v39 = MEMORY[0x277D84F90];
      sub_24DCF03FC(0, v23, 0);
      v24 = v39;
      v25 = v22 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
      v37 = *(v6 + 72);
      do
      {
        sub_24DCF0D2C(v25, v9, type metadata accessor for Google_Rpc_Help.Link);
        v26 = v9[2];
        v27 = v9[3];
        v28 = v9[1];
        v38 = *v9;

        sub_24DCF0CCC(v9, type metadata accessor for Google_Rpc_Help.Link);
        v39 = v24;
        v30 = *(v24 + 16);
        v29 = *(v24 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_24DCF03FC((v29 > 1), v30 + 1, 1);
          v24 = v39;
        }

        *(v24 + 16) = v30 + 1;
        v31 = (v24 + 32 * v30);
        v31[4] = v26;
        v31[5] = v27;
        v31[6] = v38;
        v31[7] = v28;
        v25 += v37;
        --v23;
      }

      while (v23);
      v32 = sub_24DD01418();
      (*(*(v32 - 8) + 8))(v35, v32);
      result = sub_24DCF0CCC(v34[0], type metadata accessor for Google_Rpc_Help);
      *v36 = v24;
    }

    else
    {
      v33 = sub_24DD01418();
      (*(*(v33 - 8) + 8))(a1, v33);
      result = sub_24DCF0CCC(v18, type metadata accessor for Google_Rpc_Help);
      *a2 = MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t _s20GRPCProtobufInternal12ErrorDetailsV10BadRequestV4hash4intoys6HasherVz_tF_0()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x253037240](v2);
  if (v2)
  {
    v4 = (v1 + 56);
    do
    {
      v5 = *(v4 - 3);
      v6 = *(v4 - 2);
      v7 = *(v4 - 1);
      v8 = *v4;

      sub_24DD016E8();
      sub_24DD016E8();

      v4 += 4;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t _s20GRPCProtobufInternal12ErrorDetailsV10BadRequestV9hashValueSivg_0()
{
  v1 = *v0;
  sub_24DD017C8();
  v2 = *(v1 + 16);
  MEMORY[0x253037240](v2);
  if (v2)
  {
    v3 = (v1 + 56);
    do
    {
      v4 = *(v3 - 3);
      v5 = *(v3 - 2);
      v6 = *(v3 - 1);
      v7 = *v3;

      sub_24DD016E8();
      sub_24DD016E8();

      v3 += 4;
      --v2;
    }

    while (v2);
  }

  return sub_24DD017E8();
}

uint64_t sub_24DCEF824()
{
  v1 = type metadata accessor for Google_Rpc_Help(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v6[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *v0;
  sub_24DCF0A44(&qword_27F1A9E78, type metadata accessor for Google_Rpc_Help);
  sub_24DD015F8();
  sub_24DD01418();
  v7 = v4;
  sub_24DCF0A44(&qword_27F1A9D78, MEMORY[0x277D215C8]);
  sub_24DD015F8();
  return sub_24DCF0CCC(v4, type metadata accessor for Google_Rpc_Help);
}

uint64_t sub_24DCEFA78(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a2[1];

  *a2 = v4;
  a2[1] = v3;
  return result;
}

uint64_t (*ErrorDetails.LocalizedMessage.locale.modify(void *a1))()
{
  v4 = *v1;
  v3 = v1[1];
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return sub_24DCF1DD8;
}

uint64_t sub_24DCEFB0C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  if (a2)
  {
    v6 = a1[1];

    *v5 = v3;
    v5[1] = v2;
  }

  else
  {
    v8 = a1[3];

    *v5 = v3;
    v5[1] = v2;
  }

  return result;
}

uint64_t sub_24DCEFB80(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a2 + 24);

  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  return result;
}

uint64_t (*ErrorDetails.LocalizedMessage.message.modify(void *a1))()
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return sub_24DCF1DDC;
}

uint64_t sub_24DCEFC14(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  if (a2)
  {
    v6 = a1[1];

    *(v5 + 16) = v3;
    *(v5 + 24) = v2;
  }

  else
  {
    v8 = a1[3];

    *(v5 + 16) = v3;
    *(v5 + 24) = v2;
  }

  return result;
}

uint64_t ErrorDetails.LocalizedMessage.init(locale:message:)()
{
  type metadata accessor for Google_Rpc_LocalizedMessage(0);
  sub_24DCF0A44(&qword_27F1A9E88, type metadata accessor for Google_Rpc_LocalizedMessage);
  sub_24DD015F8();
}

uint64_t sub_24DCEFDA4(uint64_t a1, void (*a2)(void), unint64_t *a3, void (*a4)(uint64_t))
{
  a2(0);
  sub_24DCF0A44(a3, a4);

  return sub_24DD016B8();
}

uint64_t sub_24DCEFE64(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_24DD017C8();
  a1(0);
  sub_24DCF0A44(a2, a3);
  sub_24DD016B8();
  return sub_24DD017E8();
}

uint64_t sub_24DCEFF34(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  sub_24DD017C8();
  a3(0);
  sub_24DCF0A44(a4, a5);
  sub_24DD016B8();
  return sub_24DD017E8();
}

uint64_t sub_24DCF0004(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  a4(0);
  sub_24DCF0A44(a5, a6);

  return sub_24DD016B8();
}

uint64_t sub_24DCF00C4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  sub_24DD017C8();
  a4(0);
  sub_24DCF0A44(a5, a6);
  sub_24DD016B8();
  return sub_24DD017E8();
}

size_t sub_24DCF025C(size_t a1, int64_t a2, char a3)
{
  result = sub_24DCF0554(a1, a2, a3, *v3, &qword_27F1A9F38, &unk_24DD03320, type metadata accessor for Google_Rpc_QuotaFailure.Violation);
  *v3 = result;
  return result;
}

char *sub_24DCF02A0(char *a1, int64_t a2, char a3)
{
  result = sub_24DCF0730(a1, a2, a3, *v3, &qword_27F1A9F28, &qword_24DD03318);
  *v3 = result;
  return result;
}

size_t sub_24DCF02D8(size_t a1, int64_t a2, char a3)
{
  result = sub_24DCF0554(a1, a2, a3, *v3, &qword_27F1A9F20, &qword_24DD03310, type metadata accessor for Google_Rpc_PreconditionFailure.Violation);
  *v3 = result;
  return result;
}

char *sub_24DCF031C(char *a1, int64_t a2, char a3)
{
  result = sub_24DCF0434(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_24DCF033C(size_t a1, int64_t a2, char a3)
{
  result = sub_24DCF0554(a1, a2, a3, *v3, &qword_27F1A9F08, &qword_24DD03300, type metadata accessor for Google_Rpc_BadRequest.FieldViolation);
  *v3 = result;
  return result;
}

char *sub_24DCF0380(char *a1, int64_t a2, char a3)
{
  result = sub_24DCF0730(a1, a2, a3, *v3, &qword_27F1A9EF8, &qword_24DD032F8);
  *v3 = result;
  return result;
}

size_t sub_24DCF03B8(size_t a1, int64_t a2, char a3)
{
  result = sub_24DCF0554(a1, a2, a3, *v3, &qword_27F1A9EF0, &qword_24DD032F0, type metadata accessor for Google_Rpc_Help.Link);
  *v3 = result;
  return result;
}

char *sub_24DCF03FC(char *a1, int64_t a2, char a3)
{
  result = sub_24DCF0730(a1, a2, a3, *v3, &qword_27F1A9EE0, &qword_24DD032E8);
  *v3 = result;
  return result;
}

char *sub_24DCF0434(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9F10, &qword_24DD03308);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_24DCF0554(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_24DCF0730(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 1;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 5);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[32 * v10])
    {
      memmove(v15, v16, 32 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

uint64_t sub_24DCF083C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x253037240](v3);
  if (v3)
  {
    v5 = (a2 + 72);
    do
    {
      v6 = *(v5 - 5);
      v7 = *(v5 - 4);
      v8 = *(v5 - 3);
      v9 = *(v5 - 2);
      v10 = *(v5 - 1);
      v11 = *v5;

      sub_24DD016E8();
      sub_24DD016E8();
      sub_24DD016E8();

      v5 += 6;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_24DCF090C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x253037240](v3);
  if (v3)
  {
    v5 = (a2 + 56);
    do
    {
      v6 = *(v5 - 3);
      v7 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;

      sub_24DD016E8();
      sub_24DD016E8();

      v5 += 4;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_24DCF09B0(void *a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = v1[6];
  v8 = a1[1];

  *a1 = v4;
  a1[1] = v3;
  v9 = a1[3];

  a1[2] = v6;
  a1[3] = v5;
  v10 = a1[4];

  a1[4] = v7;
  return result;
}

uint64_t sub_24DCF0A44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24DCF0AC4(uint64_t *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = *a1;

  *a1 = v3;
  v7 = a1[2];

  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t sub_24DCF0BDC(void *a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v8 = v1[6];
  v7 = v1[7];
  v9 = v1[8];
  v10 = v1[9];
  v11 = a1[1];

  *a1 = v4;
  a1[1] = v3;
  v12 = a1[3];

  a1[2] = v6;
  a1[3] = v5;
  v13 = a1[5];

  a1[4] = v8;
  a1[5] = v7;
  v14 = a1[7];

  a1[6] = v9;
  a1[7] = v10;
  return result;
}

uint64_t sub_24DCF0CCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24DCF0D2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24DCF0D94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_24DCF0F64()
{
  result = qword_27F1A9E98;
  if (!qword_27F1A9E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1A9E98);
  }

  return result;
}

unint64_t sub_24DCF0FC0()
{
  result = qword_27F1A9EA0;
  if (!qword_27F1A9EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1A9EA0);
  }

  return result;
}

unint64_t sub_24DCF101C()
{
  result = qword_27F1A9EA8;
  if (!qword_27F1A9EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1A9EA8);
  }

  return result;
}

unint64_t sub_24DCF11D8()
{
  result = qword_27F1A9EB0;
  if (!qword_27F1A9EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1A9EB0);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t _s9RetryInfoVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s9RetryInfoVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_24DCF1480(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_24DCF14C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24DCF1634(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_24DCF167C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24DCF16C8(uint64_t a1, int a2)
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

uint64_t sub_24DCF1710(uint64_t result, int a2, int a3)
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

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_24DCF18B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24DCF1924(void *a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = a1[3];

  a1[2] = v4;
  a1[3] = v3;
  v8 = a1[1];

  *a1 = v6;
  a1[1] = v5;
  return result;
}

uint64_t sub_24DCF19AC(void *a1)
{
  v3 = *(v1 + 16);
  v5 = *v3;
  v4 = v3[1];
  v6 = a1[1];

  *a1 = v5;
  a1[1] = v4;
  v8 = v3[2];
  v7 = v3[3];
  v9 = a1[3];

  a1[2] = v8;
  a1[3] = v7;
  v11 = v3[4];
  v10 = v3[5];
  v12 = a1[5];

  a1[4] = v11;
  a1[5] = v10;
  return result;
}

uint64_t sub_24DCF1AA4(void *a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = a1[1];

  *a1 = v4;
  a1[1] = v3;
  v8 = a1[3];

  a1[2] = v6;
  a1[3] = v5;
  return result;
}

uint64_t sub_24DCF1B14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24DCF1B7C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_24DD017F8();
  sub_24DD01458();
  result = sub_24DD017F8();
  if (v4 < 0xE2329AFFC4653601)
  {
    __break(1u);
  }

  else if (v4 <= 0x1DCD64FFFFFFFFFFLL)
  {
    return sub_24DD01438();
  }

  __break(1u);
  return result;
}

uint64_t ProtobufSerializer.serialize<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26[3] = a1;
  v26[0] = a4;
  v6 = sub_24DD01318();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v26[2] = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24DD01368();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v26[1] = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24DD014F8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ContiguousBytesAdapter();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = v26 - v19;
  v22 = *(a2 + 16);
  v21 = *(a2 + 24);
  swift_getWitnessTable();
  sub_24DD014E8();
  v23 = v29;
  sub_24DD015C8();
  (*(v13 + 8))(v16, v12);
  if (!v23)
  {
    return (*(*(a3 - 8) + 32))(v26[0], v20, a3);
  }

  sub_24DD01328();
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_24DD01758();

  v27 = 0xD000000000000020;
  v28 = 0x800000024DD06200;
  swift_getDynamicType();
  v24 = sub_24DD01838();
  MEMORY[0x253037160](v24);

  MEMORY[0x253037160](46, 0xE100000000000000);
  MEMORY[0x2530373F0](v23);
  MEMORY[0x253036D70](MEMORY[0x277D84F90]);
  sub_24DD013A8();
  sub_24DCF2190();
  swift_allocError();
  sub_24DD01388();
  swift_willThrow();
  return MEMORY[0x2530373E0](v23);
}

unint64_t sub_24DCF2190()
{
  result = qword_27F1A9F48;
  if (!qword_27F1A9F48)
  {
    sub_24DD013A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1A9F48);
  }

  return result;
}

uint64_t ProtobufDeserializer.deserialize<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a1;
  v30 = a4;
  v6 = sub_24DD01318();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v28[1] = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24DD01368();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v28[0] = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24DD014D8();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v15 = *(a3 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ContiguousBytesAdapter();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = v28 - v21;
  v23 = *(a2 + 16);
  (*(v15 + 16))(v18, v29, a3);
  sub_24DCE3464(v18, a3, v22);
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v24 = *(a2 + 24);
  swift_getWitnessTable();
  sub_24DD014C8();
  v25 = v34;
  result = sub_24DD015B8();
  if (v25)
  {
    sub_24DD01328();
    *&v31 = 0;
    *(&v31 + 1) = 0xE000000000000000;
    sub_24DD01758();

    *&v31 = 0xD000000000000025;
    *(&v31 + 1) = 0x800000024DD06230;
    v27 = sub_24DD01838();
    MEMORY[0x253037160](v27);

    MEMORY[0x253037160](46, 0xE100000000000000);
    MEMORY[0x2530373F0](v25);
    MEMORY[0x253036D70](MEMORY[0x277D84F90]);
    sub_24DD013A8();
    sub_24DCF2190();
    swift_allocError();
    sub_24DD01388();
    swift_willThrow();
    return MEMORY[0x2530373E0](v25);
  }

  return result;
}

uint64_t sub_24DCF25D8(unsigned int *a1, int a2)
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

_WORD *sub_24DCF2628(_WORD *result, int a2, int a3)
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

uint64_t sub_24DCF26F0(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_24DCF27B4@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = sub_24DCE2CC0(MEMORY[0x277D84F90]);
  v2 = a1 + *(type metadata accessor for Google_Rpc_ErrorInfo(0) + 28);
  return sub_24DD014A8();
}

uint64_t sub_24DCF2804@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9F50, &qword_24DD03440);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Google_Rpc_RetryInfo(0);
  sub_24DCF9D94(v1 + *(v7 + 20), v6);
  v8 = sub_24DD01478();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_24DD01468();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_24DCE5D24(v6, &qword_27F1A9F50, &qword_24DD03440);
  }

  return result;
}

uint64_t sub_24DCF2958(uint64_t a1)
{
  v3 = *(type metadata accessor for Google_Rpc_RetryInfo(0) + 20);
  sub_24DCE5D24(v1 + v3, &qword_27F1A9F50, &qword_24DD03440);
  v4 = sub_24DD01478();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_24DCF2A30(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9F50, &qword_24DD03440) - 8) + 64);
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
  v9 = sub_24DD01478();
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
  v15 = *(type metadata accessor for Google_Rpc_RetryInfo(0) + 20);
  *(v5 + 12) = v15;
  sub_24DCF9D94(v1 + v15, v8);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_24DD01468();
    if (v16(v8, 1, v9) != 1)
    {
      sub_24DCE5D24(v8, &qword_27F1A9F50, &qword_24DD03440);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
  }

  return sub_24DCF2C2C;
}

void sub_24DCF2C2C(uint64_t **a1, char a2)
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
    (*(v7 + 16))((*a1)[4], v5, v6);
    sub_24DCE5D24(v9 + v3, &qword_27F1A9F50, &qword_24DD03440);
    (*(v7 + 32))(v9 + v3, v4, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_24DCE5D24(v9 + v3, &qword_27F1A9F50, &qword_24DD03440);
    (*(v7 + 32))(v9 + v3, v5, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL sub_24DCF2D94()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9F50, &qword_24DD03440);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Google_Rpc_RetryInfo(0);
  sub_24DCF9D94(v0 + *(v5 + 20), v4);
  v6 = sub_24DD01478();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_24DCE5D24(v4, &qword_27F1A9F50, &qword_24DD03440);
  return v7;
}

uint64_t sub_24DCF2E80()
{
  v1 = *(type metadata accessor for Google_Rpc_RetryInfo(0) + 20);
  sub_24DCE5D24(v0 + v1, &qword_27F1A9F50, &qword_24DD03440);
  v2 = sub_24DD01478();
  v3 = *(*(v2 - 8) + 56);

  return v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_24DCF2F0C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24DD014B8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_24DCF2F74(uint64_t a1)
{
  v3 = sub_24DD014B8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_24DCF2FDC@<X0>(uint64_t a1@<X8>)
{
  sub_24DD014A8();
  v2 = *(type metadata accessor for Google_Rpc_RetryInfo(0) + 20);
  v3 = sub_24DD01478();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1 + v2, 1, 1, v3);
}

uint64_t sub_24DCF3058@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24DD01478();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_24DCF313C@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  a1[1] = 0;
  a1[2] = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for Google_Rpc_DebugInfo(0) + 24);
  return sub_24DD014A8();
}

uint64_t sub_24DCF3214@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_24DD014B8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_24DCF32B0(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_24DD014B8();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_24DCF33C0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_24DD014B8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_24DCF345C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_24DD014B8();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_24DCF353C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 28);
  v5 = sub_24DD014B8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_24DCF35D8(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  v5 = sub_24DD014B8();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_24DCF36A0@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for Google_Rpc_PreconditionFailure.Violation(0) + 28);
  return sub_24DD014A8();
}

uint64_t sub_24DCF36FC@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v2 = a2 + *(a1(0) + 20);
  return sub_24DD014A8();
}

uint64_t sub_24DCF384C@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  v2 = a2 + *(a1(0) + 24);
  return sub_24DD014A8();
}

uint64_t sub_24DCF393C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_24DCF396C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_24DCF39A4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_24DCF39D4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_24DCF3A2C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Google_Rpc_ResourceInfo(0) + 32);
  v4 = sub_24DD014B8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24DCF3AA8(uint64_t a1)
{
  v3 = *(type metadata accessor for Google_Rpc_ResourceInfo(0) + 32);
  v4 = sub_24DD014B8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_24DCF3B6C@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  a1[6] = 0;
  a1[7] = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for Google_Rpc_ResourceInfo(0) + 32);
  return sub_24DD014A8();
}

uint64_t sub_24DCF3BBC(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_24DCF3C60()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_24DCF3C90(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_24DCF3CC8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_24DCF3CF8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_24DCF3E90()
{
  v0 = sub_24DD01688();
  __swift_allocate_value_buffer(v0, qword_27F1AF0F0);
  __swift_project_value_buffer(v0, qword_27F1AF0F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9DB8, &unk_24DD04970);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9DC0, &qword_24DD02690) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24DD024D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "reason";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_24DD01668();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "domain";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "metadata";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return sub_24DD01678();
}

uint64_t sub_24DCF40EC()
{
  result = sub_24DD01548();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 3)
      {
        sub_24DD01488();
        sub_24DD01538();
      }

      else if (result == 2 || result == 1)
      {
        sub_24DD01578();
      }

      result = sub_24DD01548();
    }
  }

  return result;
}

uint64_t sub_24DCF41D4()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_24DD01638(), !v1))
  {
    v6 = v0[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_24DD01638(), !v1))
    {
      if (!*(v0[4] + 16) || (sub_24DD01488(), result = sub_24DD01608(), !v1))
      {
        v8 = v0 + *(type metadata accessor for Google_Rpc_ErrorInfo(0) + 28);
        return sub_24DD01498();
      }
    }
  }

  return result;
}

uint64_t sub_24DCF4334@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = sub_24DCE2CC0(MEMORY[0x277D84F90]);
  v4 = a2 + *(a1 + 28);
  return sub_24DD014A8();
}

uint64_t sub_24DCF43B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_24DCFA5F8(&qword_27F1AA120, type metadata accessor for Google_Rpc_ErrorInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_24DCF4458(uint64_t a1)
{
  v2 = sub_24DCFA5F8(&qword_27F1A9DF8, type metadata accessor for Google_Rpc_ErrorInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_24DCF44C4()
{
  sub_24DCFA5F8(&qword_27F1A9DF8, type metadata accessor for Google_Rpc_ErrorInfo);

  return sub_24DD015E8();
}

uint64_t sub_24DCF45D0()
{
  result = sub_24DD01548();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for Google_Rpc_RetryInfo(0) + 20);
        sub_24DD01478();
        sub_24DCFA5F8(&qword_27F1A9F40, MEMORY[0x277D21628]);
        sub_24DD01598();
      }

      result = sub_24DD01548();
    }
  }

  return result;
}

uint64_t sub_24DCF46BC()
{
  result = sub_24DCF4714(v0);
  if (!v1)
  {
    return sub_24DD01498();
  }

  return result;
}

uint64_t sub_24DCF4714(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9F50, &qword_24DD03440);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v13 - v4;
  v6 = sub_24DD01478();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Google_Rpc_RetryInfo(0);
  sub_24DCF9D94(a1 + *(v11 + 20), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_24DCE5D24(v5, &qword_27F1A9F50, &qword_24DD03440);
  }

  (*(v7 + 32))(v10, v5, v6);
  sub_24DCFA5F8(&qword_27F1A9F40, MEMORY[0x277D21628]);
  sub_24DD01658();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_24DCF4968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24DD014A8();
  v4 = *(a1 + 20);
  v5 = sub_24DD01478();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_24DCF4A10(uint64_t a1, uint64_t a2)
{
  v4 = sub_24DCFA5F8(&qword_27F1AA118, type metadata accessor for Google_Rpc_RetryInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_24DCF4AB0(uint64_t a1)
{
  v2 = sub_24DCFA5F8(&qword_27F1A9E08, type metadata accessor for Google_Rpc_RetryInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_24DCF4B1C()
{
  sub_24DCFA5F8(&qword_27F1A9E08, type metadata accessor for Google_Rpc_RetryInfo);

  return sub_24DD015E8();
}

uint64_t sub_24DCF4BC0()
{
  v0 = sub_24DD01688();
  __swift_allocate_value_buffer(v0, qword_27F1AF120);
  __swift_project_value_buffer(v0, qword_27F1AF120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9DB8, &unk_24DD04970);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9DC0, &qword_24DD02690) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24DD03410;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "stack_entries";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_24DD01668();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "detail";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v11 = *MEMORY[0x277D21870];
  v9();
  return sub_24DD01678();
}

uint64_t sub_24DCF4DD8()
{
  while (1)
  {
    result = sub_24DD01548();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_24DD01568();
    }

    else if (result == 2)
    {
      sub_24DD01578();
    }
  }

  return result;
}

uint64_t sub_24DCF4E64()
{
  if (!*(*v0 + 16) || (result = sub_24DD01628(), !v1))
  {
    v3 = v0[2];
    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = v0[1] & 0xFFFFFFFFFFFFLL;
    }

    if (!v4 || (result = sub_24DD01638(), !v1))
    {
      v5 = v0 + *(type metadata accessor for Google_Rpc_DebugInfo(0) + 24);
      return sub_24DD01498();
    }
  }

  return result;
}

uint64_t _s20GRPCProtobufInternal12ErrorDetailsV9DebugInfoV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  if ((sub_24DCF9A84(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v4 && (sub_24DD01778() & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for Google_Rpc_DebugInfo(0) + 24);
  sub_24DD014B8();
  sub_24DCFA5F8(&qword_27F1A9DA8, MEMORY[0x277D216C8]);
  return sub_24DD016C8() & 1;
}

uint64_t sub_24DCF5030@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  a2[1] = 0;
  a2[2] = 0xE000000000000000;
  v2 = a2 + *(a1 + 24);
  return sub_24DD014A8();
}

uint64_t (*sub_24DCF5064(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_24DCF50B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_24DCFA5F8(&qword_27F1AA110, type metadata accessor for Google_Rpc_DebugInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_24DCF5158(uint64_t a1)
{
  v2 = sub_24DCFA5F8(&qword_27F1A9E18, type metadata accessor for Google_Rpc_DebugInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_24DCF51C4()
{
  sub_24DCFA5F8(&qword_27F1A9E18, type metadata accessor for Google_Rpc_DebugInfo);

  return sub_24DD015E8();
}

uint64_t sub_24DCF5240(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_24DCF9A84(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (sub_24DD01778() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 24);
  sub_24DD014B8();
  sub_24DCFA5F8(&qword_27F1A9DA8, MEMORY[0x277D216C8]);
  return sub_24DD016C8() & 1;
}

uint64_t sub_24DCF53F4()
{
  if (!*(*v0 + 16) || (type metadata accessor for Google_Rpc_QuotaFailure.Violation(0), sub_24DCFA5F8(&qword_27F1A9F30, type metadata accessor for Google_Rpc_QuotaFailure.Violation), result = sub_24DD01648(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Google_Rpc_QuotaFailure(0) + 20);
    return sub_24DD01498();
  }

  return result;
}

uint64_t (*sub_24DCF5560(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_24DCF559C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24DCFA5F8(&qword_27F1AA108, type metadata accessor for Google_Rpc_QuotaFailure);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_24DCF563C(uint64_t a1)
{
  v2 = sub_24DCFA5F8(&qword_27F1A9E28, type metadata accessor for Google_Rpc_QuotaFailure);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_24DCF56A8()
{
  sub_24DCFA5F8(&qword_27F1A9E28, type metadata accessor for Google_Rpc_QuotaFailure);

  return sub_24DD015E8();
}

uint64_t sub_24DCF5750()
{
  result = MEMORY[0x253037160](0x6974616C6F69562ELL, 0xEA00000000006E6FLL);
  qword_27F1AF150 = 0xD000000000000017;
  *algn_27F1AF158 = 0x800000024DD062C0;
  return result;
}

uint64_t *sub_24DCF57C0()
{
  if (qword_27F1AC570 != -1)
  {
    swift_once();
  }

  return &qword_27F1AF150;
}

uint64_t sub_24DCF594C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24DCFA5F8(&qword_27F1AA100, type metadata accessor for Google_Rpc_QuotaFailure.Violation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_24DCF59EC(uint64_t a1)
{
  v2 = sub_24DCFA5F8(&qword_27F1A9F30, type metadata accessor for Google_Rpc_QuotaFailure.Violation);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_24DCF5A58()
{
  sub_24DCFA5F8(&qword_27F1A9F30, type metadata accessor for Google_Rpc_QuotaFailure.Violation);

  return sub_24DD015E8();
}

uint64_t sub_24DCF5BC0()
{
  if (!*(*v0 + 16) || (type metadata accessor for Google_Rpc_PreconditionFailure.Violation(0), sub_24DCFA5F8(&qword_27F1A9F18, type metadata accessor for Google_Rpc_PreconditionFailure.Violation), result = sub_24DD01648(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Google_Rpc_PreconditionFailure(0) + 20);
    return sub_24DD01498();
  }

  return result;
}

uint64_t sub_24DCF5CA4(uint64_t *a1, uint64_t *a2)
{
  if ((sub_24DCF97DC(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for Google_Rpc_PreconditionFailure(0) + 20);
  sub_24DD014B8();
  sub_24DCFA5F8(&qword_27F1A9DA8, MEMORY[0x277D216C8]);
  return sub_24DD016C8() & 1;
}

uint64_t sub_24DCF5DB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24DCFA5F8(&qword_27F1AA0F8, type metadata accessor for Google_Rpc_PreconditionFailure);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_24DCF5E50(uint64_t a1)
{
  v2 = sub_24DCFA5F8(&qword_27F1A9E38, type metadata accessor for Google_Rpc_PreconditionFailure);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_24DCF5EBC()
{
  sub_24DCFA5F8(&qword_27F1A9E38, type metadata accessor for Google_Rpc_PreconditionFailure);

  return sub_24DD015E8();
}

uint64_t sub_24DCF5F38(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_24DCF97DC(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_24DD014B8();
  sub_24DCFA5F8(&qword_27F1A9DA8, MEMORY[0x277D216C8]);
  return sub_24DD016C8() & 1;
}

uint64_t sub_24DCF5FE0()
{
  result = MEMORY[0x253037160](0x6974616C6F69562ELL, 0xEA00000000006E6FLL);
  qword_27F1AF190 = 0xD00000000000001ELL;
  *algn_27F1AF198 = 0x800000024DD062E0;
  return result;
}

uint64_t *sub_24DCF6050()
{
  if (qword_27F1AC588 != -1)
  {
    swift_once();
  }

  return &qword_27F1AF190;
}

uint64_t sub_24DCF60C8()
{
  v0 = sub_24DD01688();
  __swift_allocate_value_buffer(v0, qword_27F1AF1A0);
  __swift_project_value_buffer(v0, qword_27F1AF1A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9DB8, &unk_24DD04970);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9DC0, &qword_24DD02690) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24DD024D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_24DD01668();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "subject";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "description";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return sub_24DD01678();
}

uint64_t sub_24DCF6324()
{
  while (1)
  {
    result = sub_24DD01548();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      sub_24DD01578();
    }
  }

  return result;
}

uint64_t sub_24DCF63B4()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_24DD01638(), !v1))
  {
    v6 = v0[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_24DD01638(), !v1))
    {
      v8 = v0[5];
      v9 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v9 = v0[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v9 || (result = sub_24DD01638(), !v1))
      {
        v10 = v0 + *(type metadata accessor for Google_Rpc_PreconditionFailure.Violation(0) + 28);
        return sub_24DD01498();
      }
    }
  }

  return result;
}

uint64_t sub_24DCF64F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = 0;
  a2[5] = 0xE000000000000000;
  v2 = a2 + *(a1 + 28);
  return sub_24DD014A8();
}

uint64_t sub_24DCF657C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24DCFA5F8(&qword_27F1AA0F0, type metadata accessor for Google_Rpc_PreconditionFailure.Violation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_24DCF661C(uint64_t a1)
{
  v2 = sub_24DCFA5F8(&qword_27F1A9F18, type metadata accessor for Google_Rpc_PreconditionFailure.Violation);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_24DCF6688()
{
  sub_24DCFA5F8(&qword_27F1A9F18, type metadata accessor for Google_Rpc_PreconditionFailure.Violation);

  return sub_24DD015E8();
}

uint64_t sub_24DCF67F0()
{
  if (!*(*v0 + 16) || (type metadata accessor for Google_Rpc_BadRequest.FieldViolation(0), sub_24DCFA5F8(&qword_27F1A9F00, type metadata accessor for Google_Rpc_BadRequest.FieldViolation), result = sub_24DD01648(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Google_Rpc_BadRequest(0) + 20);
    return sub_24DD01498();
  }

  return result;
}

uint64_t sub_24DCF6914(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  if ((sub_24DCF9B14(*a1, *a2, a3, a4) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a5(0) + 20);
  sub_24DD014B8();
  sub_24DCFA5F8(&qword_27F1A9DA8, MEMORY[0x277D216C8]);
  return sub_24DD016C8() & 1;
}

uint64_t sub_24DCF6A28(uint64_t a1, uint64_t a2)
{
  v4 = sub_24DCFA5F8(&qword_27F1AA0E8, type metadata accessor for Google_Rpc_BadRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_24DCF6AC8(uint64_t a1)
{
  v2 = sub_24DCFA5F8(&qword_27F1A9E48, type metadata accessor for Google_Rpc_BadRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_24DCF6B34()
{
  sub_24DCFA5F8(&qword_27F1A9E48, type metadata accessor for Google_Rpc_BadRequest);

  return sub_24DD015E8();
}

uint64_t sub_24DCF6BDC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  if ((sub_24DCF9B14(*a1, *a2, a5, a6) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 20);
  sub_24DD014B8();
  sub_24DCFA5F8(&qword_27F1A9DA8, MEMORY[0x277D216C8]);
  return sub_24DD016C8() & 1;
}

uint64_t sub_24DCF6C8C()
{
  result = MEMORY[0x253037160](0x6956646C6569462ELL, 0xEF6E6F6974616C6FLL);
  qword_27F1AF1D0 = 0xD000000000000015;
  *algn_27F1AF1D8 = 0x800000024DD06300;
  return result;
}

uint64_t *sub_24DCF6D04()
{
  if (qword_27F1AC5A0 != -1)
  {
    swift_once();
  }

  return &qword_27F1AF1D0;
}

uint64_t sub_24DCF6D94(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_24DD01688();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9DB8, &unk_24DD04970);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9DC0, &qword_24DD02690) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_24DD03410;
  v12 = (v11 + v10);
  v13 = v11 + v10 + v8[14];
  *v12 = 1;
  *v13 = a3;
  *(v13 + 8) = a4;
  *(v13 + 16) = 2;
  v14 = *MEMORY[0x277D21870];
  v15 = sub_24DD01668();
  v16 = *(*(v15 - 8) + 104);
  (v16)(v13, v14, v15);
  v17 = v12 + v9 + v8[14];
  *(v12 + v9) = 2;
  *v17 = "description";
  *(v17 + 1) = 11;
  v17[16] = 2;
  v16();
  return sub_24DD01678();
}

uint64_t sub_24DCF6FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = *v4;
  v8 = v4[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_24DD01638(), !v5))
  {
    v11 = v4[3];
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v4[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 || (result = sub_24DD01638(), !v5))
    {
      v13 = v4 + *(a4(0) + 24);
      return sub_24DD01498();
    }
  }

  return result;
}

uint64_t sub_24DCF7124(uint64_t a1, uint64_t a2)
{
  v4 = sub_24DCFA5F8(&qword_27F1AA0E0, type metadata accessor for Google_Rpc_BadRequest.FieldViolation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_24DCF71C4(uint64_t a1)
{
  v2 = sub_24DCFA5F8(&qword_27F1A9F00, type metadata accessor for Google_Rpc_BadRequest.FieldViolation);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_24DCF7230()
{
  sub_24DCFA5F8(&qword_27F1A9F00, type metadata accessor for Google_Rpc_BadRequest.FieldViolation);

  return sub_24DD015E8();
}

uint64_t sub_24DCF72D4()
{
  v0 = sub_24DD01688();
  __swift_allocate_value_buffer(v0, qword_27F1AF1F8);
  __swift_project_value_buffer(v0, qword_27F1AF1F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9DB8, &unk_24DD04970);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9DC0, &qword_24DD02690) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24DD03410;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "request_id";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_24DD01668();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "serving_data";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_24DD01678();
}

uint64_t sub_24DCF7570(uint64_t a1, uint64_t a2)
{
  v4 = sub_24DCFA5F8(&qword_27F1AA0D8, type metadata accessor for Google_Rpc_RequestInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_24DCF7610(uint64_t a1)
{
  v2 = sub_24DCFA5F8(&qword_27F1A9E58, type metadata accessor for Google_Rpc_RequestInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_24DCF767C()
{
  sub_24DCFA5F8(&qword_27F1A9E58, type metadata accessor for Google_Rpc_RequestInfo);

  return sub_24DD015E8();
}

uint64_t sub_24DCF7720()
{
  v0 = sub_24DD01688();
  __swift_allocate_value_buffer(v0, qword_27F1AF210);
  __swift_project_value_buffer(v0, qword_27F1AF210);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9DB8, &unk_24DD04970);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9DC0, &qword_24DD02690) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24DD03420;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "resource_type";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_24DD01668();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "resource_name";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "owner";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v13 = *MEMORY[0x277D21870];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "description";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v9();
  return sub_24DD01678();
}

uint64_t sub_24DCF79BC()
{
  result = sub_24DD01548();
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
        if (result == 3 || result == 4)
        {
LABEL_9:
          sub_24DD01578();
        }
      }

      else if (result == 1 || result == 2)
      {
        goto LABEL_9;
      }

      result = sub_24DD01548();
    }
  }

  return result;
}

uint64_t sub_24DCF7A68()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_24DD01638(), !v1))
  {
    v6 = v0[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_24DD01638(), !v1))
    {
      v8 = v0[5];
      v9 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v9 = v0[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v9 || (result = sub_24DD01638(), !v1))
      {
        v10 = v0[7];
        v11 = HIBYTE(v10) & 0xF;
        if ((v10 & 0x2000000000000000) == 0)
        {
          v11 = v0[6] & 0xFFFFFFFFFFFFLL;
        }

        if (!v11 || (result = sub_24DD01638(), !v1))
        {
          v12 = v0 + *(type metadata accessor for Google_Rpc_ResourceInfo(0) + 32);
          return sub_24DD01498();
        }
      }
    }
  }

  return result;
}

uint64_t sub_24DCF7BD8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = 0;
  a2[5] = 0xE000000000000000;
  a2[6] = 0;
  a2[7] = 0xE000000000000000;
  v2 = a2 + *(a1 + 32);
  return sub_24DD014A8();
}

uint64_t sub_24DCF7C0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_24DD014B8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_24DCF7C80(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_24DD014B8();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_24DCF7CF4(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t sub_24DCF7D48(uint64_t a1, uint64_t a2)
{
  v4 = sub_24DCFA5F8(&qword_27F1AA0D0, type metadata accessor for Google_Rpc_ResourceInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_24DCF7DE8(uint64_t a1)
{
  v2 = sub_24DCFA5F8(&qword_27F1A9E68, type metadata accessor for Google_Rpc_ResourceInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_24DCF7E54()
{
  sub_24DCFA5F8(&qword_27F1A9E68, type metadata accessor for Google_Rpc_ResourceInfo);

  return sub_24DD015E8();
}

uint64_t sub_24DCF7F20(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v9 = sub_24DD01688();
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v9, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9DB8, &unk_24DD04970);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9DC0, &qword_24DD02690) - 8);
  v11 = *(*v10 + 72);
  v12 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_24DD02350;
  v14 = v13 + v12 + v10[14];
  *(v13 + v12) = 1;
  *v14 = a3;
  *(v14 + 8) = a4;
  *(v14 + 16) = 2;
  v15 = *a5;
  v16 = sub_24DD01668();
  (*(*(v16 - 8) + 104))(v14, v15, v16);
  return sub_24DD01678();
}

uint64_t sub_24DCF8134(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  while (1)
  {
    result = sub_24DD01548();
    if (v6 || (v11 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(0);
      sub_24DCFA5F8(a5, a6);
      sub_24DD01588();
    }
  }

  return result;
}

uint64_t sub_24DCF8210()
{
  if (!*(*v0 + 16) || (type metadata accessor for Google_Rpc_Help.Link(0), sub_24DCFA5F8(&qword_27F1A9EE8, type metadata accessor for Google_Rpc_Help.Link), result = sub_24DD01648(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Google_Rpc_Help(0) + 20);
    return sub_24DD01498();
  }

  return result;
}

uint64_t sub_24DCF837C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v2 = a2 + *(a1 + 20);
  return sub_24DD014A8();
}

uint64_t sub_24DCF83AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_24DD014B8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_24DCF8424(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_24DD014B8();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_24DCF84B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24DCFA5F8(&qword_27F1AA0C8, type metadata accessor for Google_Rpc_Help);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_24DCF8550(uint64_t a1)
{
  v2 = sub_24DCFA5F8(&qword_27F1A9E78, type metadata accessor for Google_Rpc_Help);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_24DCF85BC()
{
  sub_24DCFA5F8(&qword_27F1A9E78, type metadata accessor for Google_Rpc_Help);

  return sub_24DD015E8();
}

uint64_t sub_24DCF8664()
{
  result = MEMORY[0x253037160](0x6B6E694C2ELL, 0xE500000000000000);
  qword_27F1AF240 = 0x722E656C676F6F67;
  *algn_27F1AF248 = 0xEF706C65482E6370;
  return result;
}

uint64_t *sub_24DCF86D4()
{
  if (qword_27F1AC5C8 != -1)
  {
    swift_once();
  }

  return &qword_27F1AF240;
}

uint64_t sub_24DCF874C(void *a1, void *a2, void *a3)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a2 = v6;
    a3 = v7;
  }

  v3 = *a2;
  v4 = *a3;

  return v3;
}

uint64_t sub_24DCF87A8()
{
  v0 = sub_24DD01688();
  __swift_allocate_value_buffer(v0, qword_27F1AF250);
  __swift_project_value_buffer(v0, qword_27F1AF250);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9DB8, &unk_24DD04970);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9DC0, &qword_24DD02690) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24DD03410;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "description";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_24DD01668();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "url";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  return sub_24DD01678();
}

uint64_t sub_24DCF8A88(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  if (*a3 != -1)
  {
    v8 = a5;
    v9 = a4;
    swift_once();
    a4 = v9;
    a5 = v8;
  }

  v5 = *a4;
  v6 = *a5;

  return v5;
}

uint64_t sub_24DCF8AF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24DCFA5F8(&qword_27F1AA0C0, type metadata accessor for Google_Rpc_Help.Link);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_24DCF8B90(uint64_t a1)
{
  v2 = sub_24DCFA5F8(&qword_27F1A9EE8, type metadata accessor for Google_Rpc_Help.Link);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_24DCF8C00()
{
  sub_24DCFA5F8(&qword_27F1A9EE8, type metadata accessor for Google_Rpc_Help.Link);

  return sub_24DD015E8();
}

uint64_t sub_24DCF8CAC()
{
  v0 = sub_24DD01688();
  __swift_allocate_value_buffer(v0, qword_27F1AF268);
  __swift_project_value_buffer(v0, qword_27F1AF268);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9DB8, &unk_24DD04970);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9DC0, &qword_24DD02690) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24DD03410;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "locale";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_24DD01668();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "message";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_24DD01678();
}

uint64_t sub_24DCF8E98(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_24DD01688();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_24DCF8F10@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_24DD01688();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_24DCF8FA8()
{
  while (1)
  {
    result = sub_24DD01548();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_24DD01578();
    }
  }

  return result;
}

uint64_t sub_24DCF906C(void *a1, void *a2, uint64_t (*a3)(void))
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_24DD01778() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v7 && (sub_24DD01778() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3(0) + 24);
  sub_24DD014B8();
  sub_24DCFA5F8(&qword_27F1A9DA8, MEMORY[0x277D216C8]);
  return sub_24DD016C8() & 1;
}

uint64_t sub_24DCF919C(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_24DD017C8();
  a1(0);
  sub_24DCFA5F8(a2, a3);
  sub_24DD016B8();
  return sub_24DD017E8();
}

uint64_t sub_24DCF9224@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  v2 = a2 + *(a1 + 24);
  return sub_24DD014A8();
}

uint64_t sub_24DCF9250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_24DD014B8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_24DCF92C4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_24DD014B8();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_24DCF9338(uint64_t a1, uint64_t a2)
{
  v4 = sub_24DCFA5F8(&qword_27F1AA0B8, type metadata accessor for Google_Rpc_LocalizedMessage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_24DCF93D8@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_24DD01688();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_24DCF9474(uint64_t a1)
{
  v2 = sub_24DCFA5F8(&qword_27F1A9E88, type metadata accessor for Google_Rpc_LocalizedMessage);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_24DCF94E0()
{
  sub_24DCFA5F8(&qword_27F1A9E88, type metadata accessor for Google_Rpc_LocalizedMessage);

  return sub_24DD015E8();
}

uint64_t sub_24DCF955C(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_24DD01778() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v7 && (sub_24DD01778() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 24);
  sub_24DD014B8();
  sub_24DCFA5F8(&qword_27F1A9DA8, MEMORY[0x277D216C8]);
  return sub_24DD016C8() & 1;
}

uint64_t sub_24DCF9638(uint64_t result, uint64_t a2)
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

    v20 = sub_24DCE1B88(v15, v16);
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
      v25 = sub_24DD01778();

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

uint64_t sub_24DCF97DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Google_Rpc_PreconditionFailure.Violation(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v11 = (&v22 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_23:
    v20 = 0;
    return v20 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_24DCFC664(v14, v11, type metadata accessor for Google_Rpc_PreconditionFailure.Violation);
      sub_24DCFC664(v15, v8, type metadata accessor for Google_Rpc_PreconditionFailure.Violation);
      v17 = *v11 == *v8 && v11[1] == v8[1];
      if (!v17 && (sub_24DD01778() & 1) == 0)
      {
        break;
      }

      v18 = v11[2] == v8[2] && v11[3] == v8[3];
      if (!v18 && (sub_24DD01778() & 1) == 0 || (v11[4] != v8[4] || v11[5] != v8[5]) && (sub_24DD01778() & 1) == 0)
      {
        break;
      }

      v19 = *(v4 + 28);
      sub_24DD014B8();
      sub_24DCFA5F8(&qword_27F1A9DA8, MEMORY[0x277D216C8]);
      v20 = sub_24DD016C8();
      sub_24DCFC6CC(v8, type metadata accessor for Google_Rpc_PreconditionFailure.Violation);
      sub_24DCFC6CC(v11, type metadata accessor for Google_Rpc_PreconditionFailure.Violation);
      if (v20)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v20 & 1;
    }

    sub_24DCFC6CC(v8, type metadata accessor for Google_Rpc_PreconditionFailure.Violation);
    sub_24DCFC6CC(v11, type metadata accessor for Google_Rpc_PreconditionFailure.Violation);
    goto LABEL_23;
  }

  v20 = 1;
  return v20 & 1;
}

uint64_t sub_24DCF9A84(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_24DD01778() & 1) == 0)
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

uint64_t sub_24DCF9B14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v7 = a3(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v14 = (&v25 - v13);
  v15 = *(a1 + 16);
  if (v15 != *(a2 + 16))
  {
LABEL_20:
    v23 = 0;
    return v23 & 1;
  }

  if (v15 && a1 != a2)
  {
    v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v17 = a1 + v16;
    v18 = a2 + v16;
    v19 = *(v12 + 72);
    while (1)
    {
      sub_24DCFC664(v17, v14, a4);
      sub_24DCFC664(v18, v11, a4);
      v20 = *v14 == *v11 && v14[1] == v11[1];
      if (!v20 && (sub_24DD01778() & 1) == 0)
      {
        break;
      }

      v21 = v14[2] == v11[2] && v14[3] == v11[3];
      if (!v21 && (sub_24DD01778() & 1) == 0)
      {
        break;
      }

      v22 = *(v7 + 24);
      sub_24DD014B8();
      sub_24DCFA5F8(&qword_27F1A9DA8, MEMORY[0x277D216C8]);
      v23 = sub_24DD016C8();
      sub_24DCFC6CC(v11, a4);
      sub_24DCFC6CC(v14, a4);
      if (v23)
      {
        v18 += v19;
        v17 += v19;
        if (--v15)
        {
          continue;
        }
      }

      return v23 & 1;
    }

    sub_24DCFC6CC(v11, a4);
    sub_24DCFC6CC(v14, a4);
    goto LABEL_20;
  }

  v23 = 1;
  return v23 & 1;
}

uint64_t sub_24DCF9D94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9F50, &qword_24DD03440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24DCF9F84(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_24DD01778() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_24DD01778() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_24DD01778() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for Google_Rpc_PreconditionFailure.Violation(0) + 28);
  sub_24DD014B8();
  sub_24DCFA5F8(&qword_27F1A9DA8, MEMORY[0x277D216C8]);
  return sub_24DD016C8() & 1;
}

uint64_t _s20GRPCProtobufInternal12ErrorDetailsV12ResourceInfoV2eeoiySbAE_AEtFZ_0_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_24DD01778() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_24DD01778() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_24DD01778() & 1) == 0)
  {
    return 0;
  }

  if ((a1[6] != a2[6] || a1[7] != a2[7]) && (sub_24DD01778() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for Google_Rpc_ResourceInfo(0) + 32);
  sub_24DD014B8();
  sub_24DCFA5F8(&qword_27F1A9DA8, MEMORY[0x277D216C8]);
  return sub_24DD016C8() & 1;
}

uint64_t sub_24DCFA1B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24DD01478();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9F50, &qword_24DD03440);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AA128, &unk_24DD04980);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - v16;
  v18 = *(type metadata accessor for Google_Rpc_RetryInfo(0) + 20);
  v19 = *(v14 + 56);
  sub_24DCF9D94(a1 + v18, v17);
  sub_24DCF9D94(a2 + v18, &v17[v19]);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) == 1)
  {
    if (v20(&v17[v19], 1, v4) == 1)
    {
      sub_24DCE5D24(v17, &qword_27F1A9F50, &qword_24DD03440);
LABEL_9:
      sub_24DD014B8();
      sub_24DCFA5F8(&qword_27F1A9DA8, MEMORY[0x277D216C8]);
      v21 = sub_24DD016C8();
      return v21 & 1;
    }

    goto LABEL_6;
  }

  sub_24DCF9D94(v17, v12);
  if (v20(&v17[v19], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_6:
    sub_24DCE5D24(v17, &qword_27F1AA128, &unk_24DD04980);
    goto LABEL_7;
  }

  (*(v5 + 32))(v8, &v17[v19], v4);
  sub_24DCFA5F8(&qword_27F1AA130, MEMORY[0x277D21628]);
  v22 = sub_24DD016C8();
  v23 = *(v5 + 8);
  v23(v8, v4);
  v23(v12, v4);
  sub_24DCE5D24(v17, &qword_27F1A9F50, &qword_24DD03440);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v21 = 0;
  return v21 & 1;
}

uint64_t _s20GRPCProtobufInternal12ErrorDetailsV0C4InfoV2eeoiySbAE_AEtFZ_0_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_24DD01778() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_24DD01778() & 1) == 0 || (sub_24DCF9638(a1[4], a2[4]) & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for Google_Rpc_ErrorInfo(0) + 28);
  sub_24DD014B8();
  sub_24DCFA5F8(&qword_27F1A9DA8, MEMORY[0x277D216C8]);
  return sub_24DD016C8() & 1;
}

uint64_t sub_24DCFA5F8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_24DCFB630()
{
  sub_24DCFB6C4();
  if (v0 <= 0x3F)
  {
    sub_24DD014B8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24DCFB6C4()
{
  if (!qword_27F1AA080)
  {
    v0 = sub_24DD016A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F1AA080);
    }
  }
}

uint64_t sub_24DCFB734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24DD014B8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9F50, &qword_24DD03440);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24DCFB844(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_24DD014B8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9F50, &qword_24DD03440);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_24DCFB94C()
{
  sub_24DD014B8();
  if (v0 <= 0x3F)
  {
    sub_24DCFBC9C(319, &qword_27F1AA088, MEMORY[0x277D21628], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24DCFBA14(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24DD014B8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_24DCFBAD4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24DD014B8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24DCFBB78()
{
  sub_24DCFBC04();
  if (v0 <= 0x3F)
  {
    sub_24DD014B8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24DCFBC04()
{
  if (!qword_27F1AA090)
  {
    v0 = sub_24DD01728();
    if (!v1)
    {
      atomic_store(v0, &qword_27F1AA090);
    }
  }
}

void sub_24DCFBC9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24DD014B8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24DD014B8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24DCFBEE8()
{
  result = sub_24DD014B8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24DCFC018(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24DD014B8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24DCFC0D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24DD014B8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24DCFC17C()
{
  result = sub_24DD014B8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_37Tm(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24DD014B8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_38Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24DD014B8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24DCFC39C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_24DCFBC9C(319, a4, a5, MEMORY[0x277D83940]);
  if (v5 <= 0x3F)
  {
    sub_24DD014B8();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_46Tm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24DD014B8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_47Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24DD014B8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24DCFC5E8()
{
  result = sub_24DD014B8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24DCFC664(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24DCFC6CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t RPCError.unpackGoogleRPCStatus()@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v1 = sub_24DD014D8();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v37 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24DD012D8();
  v5 = *(v4 - 8);
  v38 = v4;
  v39 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24DD01318();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24DD012E8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v36 - v20;
  sub_24DD01398();
  MEMORY[0x253036D60](0xD000000000000017, 0x800000024DD06460);
  v22 = v13;
  v23 = v8;
  v24 = v38;
  (*(v10 + 8))(v22, v9);
  (*(v15 + 16))(v19, v21, v14);
  sub_24DCFCC7C(&qword_27F1AA138, MEMORY[0x277D0B8F8]);
  sub_24DD01708();
  sub_24DCFCC7C(&qword_27F1AA140, MEMORY[0x277D0B8E8]);
  sub_24DD01748();
  v25 = *&v42[0];
  if (*&v42[0])
  {
    (*(v39 + 8))(v23, v24);
    v44 = v25;
    v43 = 0;
    memset(v42, 0, sizeof(v42));
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9D38, &qword_24DD02378);
    v27 = sub_24DCE5E64();
    v28 = sub_24DCE487C();
    v29 = v37;
    sub_24DCE4884();
    v30 = v28 & 1;
    v31 = v40;
    v32 = v41;
    GoogleRPCStatus.init<A>(serializedBytes:extensions:partial:options:)(&v44, v42, v30, v29, v26, v27, v41);
    if (v31)
    {
      return (*(v15 + 8))(v21, v14);
    }

    (*(v15 + 8))(v21, v14);
    v34 = 0;
  }

  else
  {
    (*(v39 + 8))(v23, v24);
    (*(v15 + 8))(v21, v14);
    v34 = 1;
    v32 = v41;
  }

  v35 = type metadata accessor for GoogleRPCStatus();
  return (*(*(v35 - 8) + 56))(v32, v34, 1, v35);
}

uint64_t sub_24DCFCC7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24DCFCCC4()
{
  sub_24DD01418();
  sub_24DD01210(&qword_27F1A9D78, MEMORY[0x277D215C8]);
  return sub_24DD015F8();
}

uint64_t sub_24DCFCD8C(uint64_t a1)
{
  v2 = sub_24DD014F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Google_Rpc_LocalizedMessage(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ErrorDetails.LocalizedMessage(0);
  off_2860F3150();
  v15[1] = a1;
  sub_24DD01408();
  v12 = sub_24DD01210(&qword_27F1A9EB8, type metadata accessor for ErrorDetails.LocalizedMessage);
  (*(v12 + 24))(v11, v12);
  sub_24DD014E8();
  sub_24DD01210(&qword_27F1A9E88, type metadata accessor for Google_Rpc_LocalizedMessage);
  v13 = v15[5];
  sub_24DD015C8();
  (*(v3 + 8))(v6, v2);
  if (v13)
  {
    return sub_24DD011B0(v10, type metadata accessor for Google_Rpc_LocalizedMessage);
  }

  sub_24DD011B0(v10, type metadata accessor for Google_Rpc_LocalizedMessage);
  return sub_24DD013E8();
}

uint64_t sub_24DCFD020(uint64_t a1)
{
  v2 = sub_24DD014F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Google_Rpc_ResourceInfo(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ErrorDetails.ResourceInfo(0);
  off_2860F3110();
  v15[1] = a1;
  sub_24DD01408();
  v12 = sub_24DD01210(&qword_27F1A9EC0, type metadata accessor for ErrorDetails.ResourceInfo);
  (*(v12 + 24))(v11, v12);
  sub_24DD014E8();
  sub_24DD01210(&qword_27F1A9E68, type metadata accessor for Google_Rpc_ResourceInfo);
  v13 = v15[5];
  sub_24DD015C8();
  (*(v3 + 8))(v6, v2);
  if (v13)
  {
    return sub_24DD011B0(v10, type metadata accessor for Google_Rpc_ResourceInfo);
  }

  sub_24DD011B0(v10, type metadata accessor for Google_Rpc_ResourceInfo);
  return sub_24DD013E8();
}

uint64_t sub_24DCFD2B4(uint64_t a1)
{
  v2 = sub_24DD014F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Google_Rpc_RequestInfo(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ErrorDetails.RequestInfo(0);
  off_2860F30F0();
  v15[1] = a1;
  sub_24DD01408();
  v12 = sub_24DD01210(&qword_27F1A9EC8, type metadata accessor for ErrorDetails.RequestInfo);
  (*(v12 + 24))(v11, v12);
  sub_24DD014E8();
  sub_24DD01210(&qword_27F1A9E58, type metadata accessor for Google_Rpc_RequestInfo);
  v13 = v15[5];
  sub_24DD015C8();
  (*(v3 + 8))(v6, v2);
  if (v13)
  {
    return sub_24DD011B0(v10, type metadata accessor for Google_Rpc_RequestInfo);
  }

  sub_24DD011B0(v10, type metadata accessor for Google_Rpc_RequestInfo);
  return sub_24DD013E8();
}

uint64_t sub_24DCFD548(uint64_t a1)
{
  v2 = sub_24DD014F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Google_Rpc_DebugInfo(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ErrorDetails.DebugInfo(0);
  off_2860F3070();
  v15[1] = a1;
  sub_24DD01408();
  v12 = sub_24DD01210(&qword_27F1A9ED0, type metadata accessor for ErrorDetails.DebugInfo);
  (*(v12 + 24))(v11, v12);
  sub_24DD014E8();
  sub_24DD01210(&qword_27F1A9E18, type metadata accessor for Google_Rpc_DebugInfo);
  v13 = v15[5];
  sub_24DD015C8();
  (*(v3 + 8))(v6, v2);
  if (v13)
  {
    return sub_24DD011B0(v10, type metadata accessor for Google_Rpc_DebugInfo);
  }

  sub_24DD011B0(v10, type metadata accessor for Google_Rpc_DebugInfo);
  return sub_24DD013E8();
}

uint64_t sub_24DCFD7DC(uint64_t a1)
{
  v2 = sub_24DD014F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Google_Rpc_ErrorInfo(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ErrorDetails.ErrorInfo(0);
  off_2860F3030();
  v15[1] = a1;
  sub_24DD01408();
  v12 = sub_24DD01210(&qword_27F1A9ED8, type metadata accessor for ErrorDetails.ErrorInfo);
  (*(v12 + 24))(v11, v12);
  sub_24DD014E8();
  sub_24DD01210(&qword_27F1A9DF8, type metadata accessor for Google_Rpc_ErrorInfo);
  v13 = v15[5];
  sub_24DD015C8();
  (*(v3 + 8))(v6, v2);
  if (v13)
  {
    return sub_24DD011B0(v10, type metadata accessor for Google_Rpc_ErrorInfo);
  }

  sub_24DD011B0(v10, type metadata accessor for Google_Rpc_ErrorInfo);
  return sub_24DD013E8();
}

uint64_t sub_24DCFDA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19[1] = a2;
  v21 = sub_24DD014F8();
  v20 = *(v21 - 8);
  v9 = *(v20 + 64);
  MEMORY[0x28223BE20](v21);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v16 = v19 - v15;
  (*(a4 + 8))(a3, a4);
  v19[0] = a1;
  sub_24DD01408();
  (*(a5 + 24))(a3, a5);
  swift_getAssociatedConformanceWitness();
  sub_24DD014E8();
  v17 = v19[2];
  sub_24DD015C8();
  (*(v20 + 8))(v11, v21);
  if (v17)
  {
    return (*(v13 + 8))(v16, AssociatedTypeWitness);
  }

  (*(v13 + 8))(v16, AssociatedTypeWitness);
  return sub_24DD013E8();
}

uint64_t sub_24DCFDD1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AA178, &qword_24DD04A20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v24 - v7;
  v9 = type metadata accessor for Google_Rpc_ErrorInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v24 - v15;
  sub_24DCFF2E4(type metadata accessor for Google_Rpc_ErrorInfo, &qword_27F1A9DF8, type metadata accessor for Google_Rpc_ErrorInfo, v8);
  if (v2)
  {
    v17 = sub_24DD01418();
    return (*(*(v17 - 8) + 8))(a1, v17);
  }

  else if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v19 = sub_24DD01418();
    (*(*(v19 - 8) + 8))(a1, v19);
    sub_24DCE5D24(v8, &qword_27F1AA178, &qword_24DD04A20);
    v20 = type metadata accessor for ErrorDetails.ErrorInfo(0);
    return (*(*(v20 - 8) + 56))(a2, 1, 1, v20);
  }

  else
  {
    v21 = type metadata accessor for ErrorDetails.ErrorInfo(0);
    sub_24DD010E0(v8, v16, type metadata accessor for Google_Rpc_ErrorInfo);
    sub_24DD01148(v16, v14, type metadata accessor for Google_Rpc_ErrorInfo);
    v22 = sub_24DD01210(&qword_27F1A9ED8, type metadata accessor for ErrorDetails.ErrorInfo);
    (*(v22 + 48))(v14, v21, v22);
    v23 = sub_24DD01418();
    (*(*(v23 - 8) + 8))(a1, v23);
    sub_24DD011B0(v16, type metadata accessor for Google_Rpc_ErrorInfo);
    return (*(*(v21 - 8) + 56))(a2, 0, 1, v21);
  }
}

uint64_t sub_24DCFE0C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AA180, &qword_24DD04A28);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v24 - v7;
  v9 = type metadata accessor for Google_Rpc_DebugInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v24 - v15;
  sub_24DCFF2E4(type metadata accessor for Google_Rpc_DebugInfo, &qword_27F1A9E18, type metadata accessor for Google_Rpc_DebugInfo, v8);
  if (v2)
  {
    v17 = sub_24DD01418();
    return (*(*(v17 - 8) + 8))(a1, v17);
  }

  else if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v19 = sub_24DD01418();
    (*(*(v19 - 8) + 8))(a1, v19);
    sub_24DCE5D24(v8, &qword_27F1AA180, &qword_24DD04A28);
    v20 = type metadata accessor for ErrorDetails.DebugInfo(0);
    return (*(*(v20 - 8) + 56))(a2, 1, 1, v20);
  }

  else
  {
    v21 = type metadata accessor for ErrorDetails.DebugInfo(0);
    sub_24DD010E0(v8, v16, type metadata accessor for Google_Rpc_DebugInfo);
    sub_24DD01148(v16, v14, type metadata accessor for Google_Rpc_DebugInfo);
    v22 = sub_24DD01210(&qword_27F1A9ED0, type metadata accessor for ErrorDetails.DebugInfo);
    (*(v22 + 48))(v14, v21, v22);
    v23 = sub_24DD01418();
    (*(*(v23 - 8) + 8))(a1, v23);
    sub_24DD011B0(v16, type metadata accessor for Google_Rpc_DebugInfo);
    return (*(*(v21 - 8) + 56))(a2, 0, 1, v21);
  }
}

uint64_t sub_24DCFE46C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AA188, &qword_24DD04A30);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v24 - v7;
  v9 = type metadata accessor for Google_Rpc_RequestInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v24 - v15;
  sub_24DCFF2E4(type metadata accessor for Google_Rpc_RequestInfo, &qword_27F1A9E58, type metadata accessor for Google_Rpc_RequestInfo, v8);
  if (v2)
  {
    v17 = sub_24DD01418();
    return (*(*(v17 - 8) + 8))(a1, v17);
  }

  else if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v19 = sub_24DD01418();
    (*(*(v19 - 8) + 8))(a1, v19);
    sub_24DCE5D24(v8, &qword_27F1AA188, &qword_24DD04A30);
    v20 = type metadata accessor for ErrorDetails.RequestInfo(0);
    return (*(*(v20 - 8) + 56))(a2, 1, 1, v20);
  }

  else
  {
    v21 = type metadata accessor for ErrorDetails.RequestInfo(0);
    sub_24DD010E0(v8, v16, type metadata accessor for Google_Rpc_RequestInfo);
    sub_24DD01148(v16, v14, type metadata accessor for Google_Rpc_RequestInfo);
    v22 = sub_24DD01210(&qword_27F1A9EC8, type metadata accessor for ErrorDetails.RequestInfo);
    (*(v22 + 48))(v14, v21, v22);
    v23 = sub_24DD01418();
    (*(*(v23 - 8) + 8))(a1, v23);
    sub_24DD011B0(v16, type metadata accessor for Google_Rpc_RequestInfo);
    return (*(*(v21 - 8) + 56))(a2, 0, 1, v21);
  }
}

uint64_t sub_24DCFE814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AA190, &qword_24DD04A38);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v24 - v7;
  v9 = type metadata accessor for Google_Rpc_ResourceInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v24 - v15;
  sub_24DCFF2E4(type metadata accessor for Google_Rpc_ResourceInfo, &qword_27F1A9E68, type metadata accessor for Google_Rpc_ResourceInfo, v8);
  if (v2)
  {
    v17 = sub_24DD01418();
    return (*(*(v17 - 8) + 8))(a1, v17);
  }

  else if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v19 = sub_24DD01418();
    (*(*(v19 - 8) + 8))(a1, v19);
    sub_24DCE5D24(v8, &qword_27F1AA190, &qword_24DD04A38);
    v20 = type metadata accessor for ErrorDetails.ResourceInfo(0);
    return (*(*(v20 - 8) + 56))(a2, 1, 1, v20);
  }

  else
  {
    v21 = type metadata accessor for ErrorDetails.ResourceInfo(0);
    sub_24DD010E0(v8, v16, type metadata accessor for Google_Rpc_ResourceInfo);
    sub_24DD01148(v16, v14, type metadata accessor for Google_Rpc_ResourceInfo);
    v22 = sub_24DD01210(&qword_27F1A9EC0, type metadata accessor for ErrorDetails.ResourceInfo);
    (*(v22 + 48))(v14, v21, v22);
    v23 = sub_24DD01418();
    (*(*(v23 - 8) + 8))(a1, v23);
    sub_24DD011B0(v16, type metadata accessor for Google_Rpc_ResourceInfo);
    return (*(*(v21 - 8) + 56))(a2, 0, 1, v21);
  }
}

uint64_t sub_24DCFEBBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AA198, &qword_24DD04A40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v24 - v7;
  v9 = type metadata accessor for Google_Rpc_LocalizedMessage(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v24 - v15;
  sub_24DCFF2E4(type metadata accessor for Google_Rpc_LocalizedMessage, &qword_27F1A9E88, type metadata accessor for Google_Rpc_LocalizedMessage, v8);
  if (v2)
  {
    v17 = sub_24DD01418();
    return (*(*(v17 - 8) + 8))(a1, v17);
  }

  else if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v19 = sub_24DD01418();
    (*(*(v19 - 8) + 8))(a1, v19);
    sub_24DCE5D24(v8, &qword_27F1AA198, &qword_24DD04A40);
    v20 = type metadata accessor for ErrorDetails.LocalizedMessage(0);
    return (*(*(v20 - 8) + 56))(a2, 1, 1, v20);
  }

  else
  {
    v21 = type metadata accessor for ErrorDetails.LocalizedMessage(0);
    sub_24DD010E0(v8, v16, type metadata accessor for Google_Rpc_LocalizedMessage);
    sub_24DD01148(v16, v14, type metadata accessor for Google_Rpc_LocalizedMessage);
    v22 = sub_24DD01210(&qword_27F1A9EB8, type metadata accessor for ErrorDetails.LocalizedMessage);
    (*(v22 + 48))(v14, v21, v22);
    v23 = sub_24DD01418();
    (*(*(v23 - 8) + 8))(a1, v23);
    sub_24DD011B0(v16, type metadata accessor for Google_Rpc_LocalizedMessage);
    return (*(*(v21 - 8) + 56))(a2, 0, 1, v21);
  }
}

uint64_t sub_24DCFEF64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v30 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_24DD01738();
  v29 = *(v8 - 8);
  v9 = *(v29 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v28 - v11;
  v31 = *(AssociatedTypeWitness - 8);
  v13 = *(v31 + 64);
  v14 = MEMORY[0x28223BE20](v10);
  v16 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v28 - v17;
  swift_getAssociatedConformanceWitness();
  v19 = v32;
  sub_24DCFF474(AssociatedTypeWitness, v12);
  if (v19)
  {
    v20 = sub_24DD01418();
    return (*(*(v20 - 8) + 8))(a1, v20);
  }

  else
  {
    v28[1] = 0;
    v32 = a1;
    v23 = v29;
    v22 = v30;
    if ((*(v31 + 48))(v12, 1, AssociatedTypeWitness) == 1)
    {
      v24 = sub_24DD01418();
      (*(*(v24 - 8) + 8))(v32, v24);
      (*(v23 + 8))(v12, v8);
      v25 = 1;
    }

    else
    {
      v26 = v31;
      (*(v31 + 32))(v18, v12, AssociatedTypeWitness);
      (*(v26 + 16))(v16, v18, AssociatedTypeWitness);
      (*(a3 + 48))(v16, a2, a3);
      v27 = sub_24DD01418();
      (*(*(v27 - 8) + 8))(v32, v27);
      (*(v26 + 8))(v18, AssociatedTypeWitness);
      v25 = 0;
    }

    return (*(*(a2 - 8) + 56))(v22, v25, 1, a2);
  }
}

uint64_t sub_24DCFF2E4@<X0>(uint64_t (*a1)(void)@<X0>, unint64_t *a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_24DD014D8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = a1(0);
  sub_24DD01210(a2, a3);
  if ((sub_24DD013C8() & 1) == 0)
  {
    return (*(*(v11 - 8) + 56))(a4, 1, 1, v11);
  }

  sub_24DD013D8();
  sub_24DD014C8();
  result = sub_24DD015B8();
  if (!v4)
  {
    return (*(*(v11 - 8) + 56))(a4, 0, 1, v11);
  }

  return result;
}

uint64_t sub_24DCFF474@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = sub_24DD014D8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  if ((sub_24DD013C8() & 1) == 0)
  {
    return (*(*(a1 - 8) + 56))(a2, 1, 1, a1);
  }

  sub_24DD013D8();
  sub_24DD014C8();
  result = sub_24DD015B8();
  if (!v2)
  {
    return (*(*(a1 - 8) + 56))(a2, 0, 1, a1);
  }

  return result;
}

uint64_t sub_24DCFF5D0@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v2 = type metadata accessor for ErrorDetails.LocalizedMessage(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ErrorDetails.ResourceInfo(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ErrorDetails.RequestInfo(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ErrorDetails.DebugInfo(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ErrorDetails.ErrorInfo(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for ErrorDetails.Wrapped(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = (&v34 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24DD01148(v1, v25, type metadata accessor for ErrorDetails.Wrapped);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_24DD010E0(v25, v17, type metadata accessor for ErrorDetails.DebugInfo);
        v31 = sub_24DD01418();
        MEMORY[0x28223BE20](v31);
        *(&v34 - 2) = v17;
        sub_24DD01210(&qword_27F1A9D78, MEMORY[0x277D215C8]);
        sub_24DD015F8();
        return sub_24DD011B0(v17, type metadata accessor for ErrorDetails.DebugInfo);
      }

      *&v34 = *v25;
      if (EnumCaseMultiPayload == 3)
      {
        sub_24DCEACFC();
      }

      else
      {
        sub_24DCEC184();
      }
    }

    if (EnumCaseMultiPayload)
    {
      v34 = *v25;
      return sub_24DCE9AC4();
    }

    else
    {
      sub_24DD010E0(v25, v21, type metadata accessor for ErrorDetails.ErrorInfo);
      v30 = sub_24DD01418();
      MEMORY[0x28223BE20](v30);
      *(&v34 - 2) = v21;
      sub_24DD01210(&qword_27F1A9D78, MEMORY[0x277D215C8]);
      sub_24DD015F8();
      return sub_24DD011B0(v21, type metadata accessor for ErrorDetails.ErrorInfo);
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload != 5)
      {
        if (EnumCaseMultiPayload == 6)
        {
          sub_24DD010E0(v25, v13, type metadata accessor for ErrorDetails.RequestInfo);
          v27 = sub_24DD01418();
          MEMORY[0x28223BE20](v27);
          *(&v34 - 2) = v13;
          sub_24DD01210(&qword_27F1A9D78, MEMORY[0x277D215C8]);
          sub_24DD015F8();
          return sub_24DD011B0(v13, type metadata accessor for ErrorDetails.RequestInfo);
        }

        else
        {
          sub_24DD010E0(v25, v9, type metadata accessor for ErrorDetails.ResourceInfo);
          v32 = sub_24DD01418();
          MEMORY[0x28223BE20](v32);
          *(&v34 - 2) = v9;
          sub_24DD01210(&qword_27F1A9D78, MEMORY[0x277D215C8]);
          sub_24DD015F8();
          return sub_24DD011B0(v9, type metadata accessor for ErrorDetails.ResourceInfo);
        }
      }

      *&v34 = *v25;
      sub_24DCED0EC();
    }

    if (EnumCaseMultiPayload == 8)
    {
      *&v34 = *v25;
      sub_24DCEECA8();
    }

    if (EnumCaseMultiPayload == 9)
    {
      sub_24DD010E0(v25, v5, type metadata accessor for ErrorDetails.LocalizedMessage);
      v29 = sub_24DD01418();
      MEMORY[0x28223BE20](v29);
      *(&v34 - 2) = v5;
      sub_24DD01210(&qword_27F1A9D78, MEMORY[0x277D215C8]);
      sub_24DD015F8();
      return sub_24DD011B0(v5, type metadata accessor for ErrorDetails.LocalizedMessage);
    }

    else
    {
      v33 = sub_24DD01418();
      return (*(*(v33 - 8) + 32))(v35, v25, v33);
    }
  }
}

uint64_t sub_24DCFFDF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AA148, qword_24DD04990);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v13 - v7;
  sub_24DCFFF8C(a1, (&v13 - v7));
  if (!v2)
  {
    v9 = type metadata accessor for ErrorDetails(0);
    if ((*(*(v9 - 8) + 48))(v8, 1, v9) != 1)
    {
      v12 = sub_24DD01418();
      (*(*(v12 - 8) + 8))(a1, v12);
      return sub_24DD010E0(v8, a2, type metadata accessor for ErrorDetails);
    }

    sub_24DCE5D24(v8, &qword_27F1AA148, qword_24DD04990);
    static ErrorDetails.any(_:)(a1, a2);
  }

  v10 = sub_24DD01418();
  return (*(*(v10 - 8) + 8))(a1, v10);
}

uint64_t sub_24DCFFF8C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AA150, &qword_24DD049F8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v131 = &v126 - v6;
  v129 = type metadata accessor for ErrorDetails.LocalizedMessage(0);
  v128 = *(v129 - 8);
  v7 = *(v128 + 64);
  MEMORY[0x28223BE20](v129);
  v127 = &v126 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AA158, &qword_24DD04A00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v141 = &v126 - v11;
  v135 = type metadata accessor for ErrorDetails.ResourceInfo(0);
  v134 = *(v135 - 8);
  v12 = *(v134 + 64);
  MEMORY[0x28223BE20](v135);
  v132 = &v126 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AA160, &qword_24DD04A08);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v143 = &v126 - v16;
  v17 = type metadata accessor for ErrorDetails.RequestInfo(0);
  v139 = *(v17 - 8);
  v140 = v17;
  v18 = *(v139 + 64);
  MEMORY[0x28223BE20](v17);
  v137 = &v126 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AA168, &qword_24DD04A10);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v151 = &v126 - v22;
  v23 = type metadata accessor for ErrorDetails.DebugInfo(0);
  v148 = *(v23 - 8);
  v149 = v23;
  v24 = *(v148 + 64);
  MEMORY[0x28223BE20](v23);
  v146 = &v126 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_24DD01418();
  v27 = *(v26 - 8);
  v153 = v26;
  v154 = v27;
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v130 = &v126 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v133 = &v126 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v138 = &v126 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v142 = &v126 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v144 = &v126 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v145 = &v126 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v147 = &v126 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v150 = &v126 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v152 = &v126 - v46;
  MEMORY[0x28223BE20](v45);
  v48 = &v126 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AA170, &qword_24DD04A18);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49 - 8);
  v52 = &v126 - v51;
  v53 = type metadata accessor for ErrorDetails.ErrorInfo(0);
  v54 = *(v53 - 8);
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v53);
  v57 = &v126 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = a1;
  v58 = sub_24DD013F8();
  v60 = v59;
  if (sub_24DCE9414() == v58 && v61 == v60)
  {

    goto LABEL_6;
  }

  v136 = a2;
  v62 = sub_24DD01778();

  if ((v62 & 1) == 0)
  {
    if (sub_24DCE9AA8() == v58 && v69 == v60)
    {

      a2 = v136;
      goto LABEL_20;
    }

    v75 = sub_24DD01778();

    a2 = v136;
    if (v75)
    {
LABEL_20:

      v76 = v152;
      (*(v154 + 16))(v152, v155, v153);
      v77 = v158;
      result = sub_24DCE9F38(v76, &v156);
      if (!v77)
      {
        if (v157)
        {
          goto LABEL_10;
        }

        static ErrorDetails.retryInfo(_:)(&v156, a2);
        goto LABEL_16;
      }

      return result;
    }

    if (sub_24DCEA62C() == v58 && v78 == v60)
    {

LABEL_28:

      v81 = v150;
      (*(v154 + 16))(v150, v155, v153);
      v82 = v151;
      v83 = v158;
      result = sub_24DCFE0C4(v81, v151);
      if (v83)
      {
        return result;
      }

      if ((*(v148 + 48))(v82, 1, v149) == 1)
      {
        v65 = &qword_27F1AA168;
        v66 = &qword_24DD04A10;
        v67 = v82;
        goto LABEL_9;
      }

      v85 = v82;
      v86 = v146;
      sub_24DD010E0(v85, v146, type metadata accessor for ErrorDetails.DebugInfo);
      static ErrorDetails.debugInfo(_:)(v86, a2);
      v87 = type metadata accessor for ErrorDetails.DebugInfo;
      goto LABEL_35;
    }

    v79 = v60;
    v80 = sub_24DD01778();

    if (v80)
    {
      goto LABEL_28;
    }

    if (sub_24DCEACE0() == v58 && v84 == v79)
    {

LABEL_37:

      v89 = v147;
      (*(v154 + 16))(v147, v155, v153);
      v90 = v158;
      result = sub_24DCEB29C(v89, &v156);
      if (v90)
      {
        return result;
      }

      if (!v156)
      {
        goto LABEL_10;
      }

      static ErrorDetails.quotaFailure(_:)(&v156, a2);
      goto LABEL_40;
    }

    v88 = sub_24DD01778();

    if (v88)
    {
      goto LABEL_37;
    }

    if (sub_24DCEC168() == v58 && v91 == v79)
    {

LABEL_45:

      v93 = v145;
      (*(v154 + 16))(v145, v155, v153);
      v94 = v158;
      result = sub_24DCEC71C(v93, &v156);
      if (v94)
      {
        return result;
      }

      if (!v156)
      {
        goto LABEL_10;
      }

      static ErrorDetails.preconditionFailure(_:)(&v156, a2);
      goto LABEL_40;
    }

    v92 = sub_24DD01778();

    if (v92)
    {
      goto LABEL_45;
    }

    if (sub_24DCED0D0() == v58 && v95 == v79)
    {

LABEL_52:

      v97 = v144;
      (*(v154 + 16))(v144, v155, v153);
      v98 = v158;
      result = sub_24DCED66C(v97, &v156);
      if (v98)
      {
        return result;
      }

      if (!v156)
      {
        goto LABEL_10;
      }

      static ErrorDetails.badRequest(_:)(&v156, a2);
LABEL_40:

      goto LABEL_16;
    }

    v96 = sub_24DD01778();

    if (v96)
    {
      goto LABEL_52;
    }

    if (sub_24DCEDE1C() == v58 && v99 == v79)
    {

LABEL_59:

      v101 = v142;
      (*(v154 + 16))(v142, v155, v153);
      v102 = v143;
      v103 = v158;
      result = sub_24DCFE46C(v101, v143);
      if (v103)
      {
        return result;
      }

      if ((*(v139 + 48))(v102, 1, v140) == 1)
      {
        v65 = &qword_27F1AA160;
        v66 = &qword_24DD04A08;
        v67 = v102;
        goto LABEL_9;
      }

      v105 = v102;
      v86 = v137;
      sub_24DD010E0(v105, v137, type metadata accessor for ErrorDetails.RequestInfo);
      static ErrorDetails.requestInfo(_:)(v86, a2);
      v87 = type metadata accessor for ErrorDetails.RequestInfo;
LABEL_35:
      v70 = v87;
      v71 = v86;
LABEL_15:
      sub_24DD011B0(v71, v70);
LABEL_16:
      v72 = type metadata accessor for ErrorDetails(0);
      v73 = *(*(v72 - 8) + 56);
      v74 = a2;
      return v73(v74, 0, 1, v72);
    }

    v100 = sub_24DD01778();

    if (v100)
    {
      goto LABEL_59;
    }

    if (sub_24DCEE2BC() == v58 && v104 == v79)
    {
    }

    else
    {
      v106 = sub_24DD01778();

      if ((v106 & 1) == 0)
      {
        if (sub_24DCEEC8C() == v58 && v112 == v79)
        {
        }

        else
        {
          v116 = sub_24DD01778();

          if ((v116 & 1) == 0)
          {
            if (sub_24DCEFA2C() == v58 && v120 == v79)
            {
            }

            else
            {
              v121 = sub_24DD01778();

              if ((v121 & 1) == 0)
              {
                v124 = v136;
                static ErrorDetails.any(_:)(v155, v136);
                v125 = type metadata accessor for ErrorDetails(0);
                return (*(*(v125 - 8) + 56))(v124, 0, 1, v125);
              }
            }

            v122 = v130;
            (*(v154 + 16))(v130, v155, v153);
            v123 = v158;
            result = sub_24DCFEBBC(v122, v131);
            if (v123)
            {
              return result;
            }

            if ((*(v128 + 48))(v131, 1, v129) == 1)
            {
              v109 = &qword_27F1AA150;
              v110 = &qword_24DD049F8;
              v111 = v131;
              goto LABEL_70;
            }

            v113 = v127;
            sub_24DD010E0(v131, v127, type metadata accessor for ErrorDetails.LocalizedMessage);
            v114 = v136;
            static ErrorDetails.localizedMessage(_:)(v113, v136);
            v115 = type metadata accessor for ErrorDetails.LocalizedMessage;
LABEL_76:
            sub_24DD011B0(v113, v115);
            v72 = type metadata accessor for ErrorDetails(0);
            v73 = *(*(v72 - 8) + 56);
            v74 = v114;
            return v73(v74, 0, 1, v72);
          }
        }

        v117 = v133;
        (*(v154 + 16))(v133, v155, v153);
        v118 = v158;
        result = sub_24DCEF228(v117, &v156);
        if (v118)
        {
          return result;
        }

        if (v156)
        {
          v119 = v136;
          static ErrorDetails.help(_:)(&v156, v136);

          v72 = type metadata accessor for ErrorDetails(0);
          v73 = *(*(v72 - 8) + 56);
          v74 = v119;
          return v73(v74, 0, 1, v72);
        }

LABEL_71:
        a2 = v136;
        goto LABEL_10;
      }
    }

    v107 = v138;
    (*(v154 + 16))(v138, v155, v153);
    v108 = v158;
    result = sub_24DCFE814(v107, v141);
    if (v108)
    {
      return result;
    }

    if ((*(v134 + 48))(v141, 1, v135) == 1)
    {
      v109 = &qword_27F1AA158;
      v110 = &qword_24DD04A00;
      v111 = v141;
LABEL_70:
      sub_24DCE5D24(v111, v109, v110);
      goto LABEL_71;
    }

    v113 = v132;
    sub_24DD010E0(v141, v132, type metadata accessor for ErrorDetails.ResourceInfo);
    v114 = v136;
    static ErrorDetails.resourceInfo(_:)(v113, v136);
    v115 = type metadata accessor for ErrorDetails.ResourceInfo;
    goto LABEL_76;
  }

  a2 = v136;
LABEL_6:

  (*(v154 + 16))(v48, v155, v153);
  v63 = v158;
  result = sub_24DCFDD1C(v48, v52);
  if (!v63)
  {
    if ((*(v54 + 48))(v52, 1, v53) == 1)
    {
      v65 = &qword_27F1AA170;
      v66 = &qword_24DD04A18;
      v67 = v52;
LABEL_9:
      sub_24DCE5D24(v67, v65, v66);
LABEL_10:
      v68 = type metadata accessor for ErrorDetails(0);
      return (*(*(v68 - 8) + 56))(a2, 1, 1, v68);
    }

    sub_24DD010E0(v52, v57, type metadata accessor for ErrorDetails.ErrorInfo);
    static ErrorDetails.errorInfo(_:)(v57, a2);
    v70 = type metadata accessor for ErrorDetails.ErrorInfo;
    v71 = v57;
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_24DD010E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24DD01148(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24DD011B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24DD01210(unint64_t *a1, void (*a2)(uint64_t))
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