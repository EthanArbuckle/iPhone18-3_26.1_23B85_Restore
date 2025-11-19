void sub_216946868()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_216946F7C(0, 0x7475636578457369, 0xEB00000000676E69, &OBJC_IVAR____TtC7MusicUI27DownloadShareImageOperation__isExecuting);
    sub_216946F7C(1, 0x6873696E69467369, 0xEA00000000006465, &OBJC_IVAR____TtC7MusicUI27DownloadShareImageOperation__isFinished);
    sub_216946C94();
  }
}

uint64_t sub_216946910(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_217005FB4();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_21677A510(v6, v10);
}

id sub_2169469E8()
{
  v1 = OBJC_IVAR____TtC7MusicUI27DownloadShareImageOperation____lazy_storage___alertController;
  v2 = *(v0 + OBJC_IVAR____TtC7MusicUI27DownloadShareImageOperation____lazy_storage___alertController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7MusicUI27DownloadShareImageOperation____lazy_storage___alertController);
LABEL_6:
    v26 = v2;
    return v3;
  }

  v4 = v0;
  sub_216685F4C(0, &qword_27CABD750);
  v5 = sub_216983738(268);
  v7 = sub_216947230(v5, v6, 0, 0, 1);
  sub_216685F4C(0, &qword_27CABB9B8);
  v8 = sub_216983738(43);
  v10 = sub_2169442E8(v8, v9, 1, nullsub_1, 0);
  [v7 addAction_];

  v11 = [objc_allocWithZone(MEMORY[0x277D75D28]) init];
  [v7 setContentViewController_];
  result = [v11 view];
  if (result)
  {
    v13 = result;
    [result bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v22 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithFrame_];
    [v22 setActivityIndicatorViewStyle_];
    v23 = v22;
    [v23 setAutoresizingMask_];
    result = [v11 view];
    if (result)
    {
      v24 = result;
      [result addSubview_];

      [v23 setUserInteractionEnabled_];
      [v23 startAnimating];

      v25 = *(v4 + v1);
      *(v4 + v1) = v7;
      v3 = v7;

      v2 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_216946C24()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_cancel);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong cancel];
  }

  return sub_216946C94();
}

uint64_t sub_216946C94()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  v4 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  sub_21700EA34();
  v5 = v0;
  v6 = sub_21700EA24();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;
  sub_21677BBA0();
}

void sub_216946F7C(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_21700E4D4();
  [v4 willChangeValueForKey_];

  *(v4 + *a4) = a1;
  v8 = sub_21700E4D4();
  [v4 didChangeValueForKey_];
}

id sub_216947028()
{
  ObjectType = swift_getObjectType();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong cancel];
  }

  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t sub_216947120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_21700EA34();
  *(v4 + 24) = sub_21700EA24();
  v6 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_2169471B8, v6, v5);
}

uint64_t sub_2169471B8()
{
  OUTLINED_FUNCTION_33();

  v0 = sub_2169469E8();
  [v0 dismissViewControllerAnimated:0 completion:0];

  OUTLINED_FUNCTION_3();

  return v1();
}

id sub_216947230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v7 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v7 = sub_21700E4D4();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = sub_21700E4D4();

LABEL_6:
  v9 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v7 message:v8 preferredStyle:a5];

  return v9;
}

uint64_t sub_216947394@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v68 = a2;
  v5 = sub_21700CDF4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v66 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v64 = &v60 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v60 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v60 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v60 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v60 - v20;
  v69 = a1;
  sub_21700CE04();
  v22 = sub_21700CDB4();
  v24 = v23;
  v25 = v21;
  v26 = v5;
  v67 = *(v6 + 8);
  v67(v25, v5);
  v65 = v24;
  if (v24)
  {
    v27 = v69;
    v63 = v22;
    sub_21700CE04();
    v28 = sub_21700CD44();
    v29 = v67;
    v67(v18, v26);
    v72 = v28 & 1;
    sub_21700CE04();
    v30 = sub_21700CD24();
    v31 = v26;
    v33 = v32;
    v29(v15, v31);
    if (v33)
    {
      v34 = 0;
    }

    else
    {
      v34 = v30;
    }

    v62 = v34;
    sub_21700CE04();
    v35 = sub_21700CD24();
    v37 = v36;
    v29(v12, v31);
    if (v37)
    {
      v38 = 0;
    }

    else
    {
      v38 = v35;
    }

    v61 = v38;
    v71 = 0;
    v39 = v64;
    sub_21700CE04();
    v40 = sub_21700CD24();
    v42 = v41;
    v29(v39, v31);
    if (v42)
    {
      v43 = 0;
    }

    else
    {
      v43 = v40;
    }

    v64 = v43;
    v44 = v66;
    sub_21700CE04();
    v45 = sub_21700CD24();
    v47 = v46;
    v29(v44, v31);
    v70 = v47 & 1;
    sub_21700CE04();
    v48 = sub_21700CDB4();
    v50 = v49;
    v51 = sub_21700CF34();
    (*(*(v51 - 8) + 8))(v68, v51);
    v29(v27, v31);
    result = (v29)(v44, v31);
    v53 = v71;
    v54 = v70;
    v55 = v65;
    *a3 = v63;
    *(a3 + 8) = v55;
    *(a3 + 16) = v72;
    v56 = v61;
    *(a3 + 24) = v62;
    *(a3 + 32) = v56;
    *(a3 + 40) = v53;
    *(a3 + 48) = v64;
    *(a3 + 56) = v45;
    *(a3 + 64) = v54;
    *(a3 + 72) = v48;
    *(a3 + 80) = v50;
  }

  else
  {
    v57 = sub_21700E2E4();
    sub_21668F018(&qword_280E2A0F8, MEMORY[0x277D22548]);
    swift_allocError();
    *v58 = 0x6E694B7465737361;
    v58[1] = 0xE900000000000064;
    v58[2] = &type metadata for ImageURLRequestIntent;
    (*(*(v57 - 8) + 104))(v58, *MEMORY[0x277D22530], v57);
    swift_willThrow();
    v59 = sub_21700CF34();
    (*(*(v59 - 8) + 8))(v68, v59);
    return (v67)(v69, v5);
  }

  return result;
}

id sub_2169478EC(JSContext a1)
{
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v4 = result;
    v7 = *v1;
    v8 = v7;
    sub_21700DF14();
    sub_21700DD04();
    sub_21694876C(&v8);
    sub_21700F0B4();
    LOBYTE(v7) = *(v1 + 16);
    sub_21700DD04();
    sub_21700F0B4();
    Int.makeValue(in:)(a1);
    sub_21700F0B4();
    *&v7 = *(v1 + 4);
    BYTE8(v7) = *(v1 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD7C0);
    sub_2169487C0();
    sub_21700DD04();
    sub_21700F0B4();
    Int.makeValue(in:)(a1);
    sub_21700F0B4();
    *&v7 = *(v1 + 7);
    BYTE8(v7) = *(v1 + 64);
    sub_21700DD04();
    sub_21700F0B4();
    v6 = *(v1 + 72);
    v7 = v6;
    sub_2168282D4(&v7, &v5, &qword_27CABAA40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABAA40);
    sub_216948898();
    sub_21700DD04();
    sub_2166997CC(&v7, &qword_27CABAA40);
    sub_21700F0B4();
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_216947B74(objc_class *a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  v3.super.isa = a1;
  return sub_2169478EC(v3);
}

void *sub_216947BB8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_216947394(a1, a2, __src);
  if (!v3)
  {
    return memcpy(a3, __src, 0x58uLL);
  }

  return result;
}

uint64_t sub_216947C40(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v10 = v9 - v8;
  sub_21700CE04();
  sub_21700CD34();
  sub_21700CF34();
  OUTLINED_FUNCTION_9_0();
  (*(v11 + 8))(a2);
  v12 = *(v6 + 8);
  v12(a1, v4);
  return (v12)(v10, v4);
}

uint64_t sub_216947D84(uint64_t a1)
{
  result = sub_21668F018(&unk_27CABD740, type metadata accessor for ImageURLRequestResponse);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216947DFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  *(v2 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_2166AB4A4;

  return sub_216947120(a1, v4, v5, v6);
}

uint64_t sub_216947F2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareImageRequestAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216947F90(uint64_t a1)
{
  v4 = *(type metadata accessor for ShareImageRequestAction() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  *(v2 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_2166AB4A4;

  return sub_216944578(a1, v6, v1 + v5);
}

unint64_t sub_2169480A0()
{
  result = qword_27CABD780;
  if (!qword_27CABD780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABD780);
  }

  return result;
}

uint64_t sub_2169480F4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216948150(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_2169481E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_217005EF4() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = *(v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_216946498(a1, a2, a3, a4, v4 + v10, v11);
}

uint64_t sub_2169482AC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

unint64_t sub_216948314()
{
  result = qword_27CABD790;
  if (!qword_27CABD790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABD790);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ShareImageRequestError(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ImageURLRequestResponse.PerformError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2169484F8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_216948538(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2169485E4(uint64_t a1)
{
  *(a1 + 8) = sub_216948614();
  result = sub_216948668();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_216948614()
{
  result = qword_27CABD7A0;
  if (!qword_27CABD7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABD7A0);
  }

  return result;
}

unint64_t sub_216948668()
{
  result = qword_27CABD7A8;
  if (!qword_27CABD7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABD7A8);
  }

  return result;
}

unint64_t sub_2169486C0()
{
  result = qword_27CABD7B0;
  if (!qword_27CABD7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABD7B0);
  }

  return result;
}

unint64_t sub_216948718()
{
  result = qword_27CABD7B8;
  if (!qword_27CABD7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABD7B8);
  }

  return result;
}

unint64_t sub_2169487C0()
{
  result = qword_27CABD7C8;
  if (!qword_27CABD7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABD7C0);
    sub_216948844();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABD7C8);
  }

  return result;
}

unint64_t sub_216948844()
{
  result = qword_27CABD7D0;
  if (!qword_27CABD7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABD7D0);
  }

  return result;
}

unint64_t sub_216948898()
{
  result = qword_27CABD7E0;
  if (!qword_27CABD7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABAA40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABD7E0);
  }

  return result;
}

uint64_t sub_216948930(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 113))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_216948970(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 113) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 113) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_216948A00@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_2170093B4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD7E8);
  return sub_216948A50(v1, a1 + *(v3 + 44));
}

uint64_t sub_216948A50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD7F0);
  MEMORY[0x28223BE20](v73);
  v4 = &v64 - v3;
  v69 = sub_2170090F4();
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v67 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD7F8);
  MEMORY[0x28223BE20](v72);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v70 = &v64 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v64 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v64 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v64 - v17;
  sub_21700B124();
  v19 = sub_217009CB4();
  v20 = *(a1 + 40);
  v21 = *(a1 + 64);
  sub_217007F24();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD800);
  v31 = &v18[*(v30 + 36)];
  *v31 = v19;
  *(v31 + 1) = v23;
  *(v31 + 2) = v25;
  *(v31 + 3) = v27;
  *(v31 + 4) = v29;
  v31[40] = 0;
  v32 = sub_217009CD4();
  if ((v21 & 1) != 0 && (*(a1 + 32) & 1) == 0)
  {
    v64 = *a1;
    sub_21694922C(a1, v74);
    sub_21700ED94();
    v65 = v7;
    v33 = sub_217009C34();
    v66 = v20;
    v34 = v33;
    v7 = v65;
    sub_217007BC4();

    v35 = v67;
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216949264(a1);
    v36 = v35;
    v20 = v66;
    (*(v68 + 8))(v36, v69);
  }

  sub_217007F24();
  v37 = &v18[*(v73 + 36)];
  *v37 = v32;
  *(v37 + 1) = v38;
  *(v37 + 2) = v39;
  *(v37 + 3) = v40;
  *(v37 + 4) = v41;
  v37[40] = 0;
  sub_21694901C();
  *&v18[*(v72 + 36)] = v42;
  sub_21700B124();
  v43 = sub_217009CB4();
  sub_217007F24();
  v44 = &v4[*(v30 + 36)];
  *v44 = v43;
  *(v44 + 1) = v45;
  *(v44 + 2) = v46;
  *(v44 + 3) = v47;
  *(v44 + 4) = v48;
  v44[40] = 0;
  v49 = sub_217009CD4();
  if ((v21 & 1) != 0 && (*(a1 + 32) & 1) == 0)
  {
    v66 = v20;
    sub_21694922C(a1, v74);
    sub_21700ED94();
    v50 = v7;
    v51 = sub_217009C34();
    sub_217007BC4();

    v7 = v50;
    v52 = v67;
    sub_2170090E4();
    v20 = v66;
    swift_getAtKeyPath();
    sub_216949264(a1);
    (*(v68 + 8))(v52, v69);
  }

  sub_217007F24();
  v53 = &v4[*(v73 + 36)];
  *v53 = v49;
  *(v53 + 1) = v54;
  *(v53 + 2) = v55;
  *(v53 + 3) = v56;
  *(v53 + 4) = v57;
  v53[40] = 0;
  if (v20 == 1)
  {
    v58 = 1.0;
  }

  else
  {
    v58 = 0.0;
  }

  sub_2169490EC(v4, v12, &qword_27CABD7F0);
  *&v12[*(v72 + 36)] = v58;
  sub_2169490EC(v12, v15, &qword_27CABD7F8);
  v59 = v70;
  sub_216949154(v18, v70);
  sub_216949154(v15, v7);
  v60 = v71;
  sub_216949154(v59, v71);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD808);
  v62 = v60 + *(v61 + 48);
  *v62 = 0;
  *(v62 + 8) = 1;
  sub_216949154(v7, v60 + *(v61 + 64));
  sub_2169491C4(v15);
  sub_2169491C4(v18);
  sub_2169491C4(v7);
  return sub_2169491C4(v59);
}

void sub_21694901C()
{
  if (!*(v0 + 40))
  {
    return;
  }

  if (*(v0 + 40) == 1)
  {
    return;
  }

  v1 = *(v0 + 80);
  if (((*(v0 + 112) >> 5) & 3) != 0)
  {
    return;
  }

  if (!v1)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  if (v1 == -1 && *(v0 + 72) == 0x8000000000000000)
  {
    goto LABEL_13;
  }
}

uint64_t sub_2169490EC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_216949154(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD7F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2169491C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD7F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_216949294()
{
  result = qword_27CABD810;
  if (!qword_27CABD810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABD818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABD810);
  }

  return result;
}

void sub_21694930C(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = sub_216A1204C(a2);
  v5 = v4;
  v6 = qword_21702B3E8[v4];
  if (*(v2 + 96))
  {
    v7 = (*(v2 + 80))(v4);
  }

  else
  {
    v7 = *(v2 + 80);
  }

  v8 = *(v2 + 104);
  v9 = *(v2 + 64);
  v10 = *(v2 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), v9);
  v11 = (*(v10 + 8))(v5, v9, v10);
  v14 = sub_21698EFF8(v5, v11, v12, v13);
  v16 = v15;
  v17 = sub_21698EE54();
  v18 = *(v2 + 64);
  v19 = *(v2 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), v18);
  v20 = (*(v19 + 8))(v5, v18, v19);
  v23 = qword_21702B3A8[v5];
  if (v22 >> 6)
  {
    if (v22 >> 6 == 1)
    {
      if (v21)
      {
        OUTLINED_FUNCTION_5_42();
        if (v30)
        {
          v31 = v25;
        }

        else
        {
          v26 = 0x4028000000000000;
          v24 = 0;
          v31 = 32;
        }

        if (v27 >= 5)
        {
          v32 = v26;
        }

        else
        {
          v32 = v29;
        }

        v33 = v14;
        if (v27 >= 5)
        {
          v14 = v24;
        }

        else
        {
          v14 = 0;
        }

        if (v27 >= 5)
        {
          v16 = v24;
        }

        else
        {
          v16 = 0;
        }

        if (v27 < 5)
        {
          v24 = 0;
          v31 = v28;
        }
      }

      else
      {
        v16 = 0;
        v24 = 0;
        v31 = 32;
        v32 = v20;
        v33 = v14;
        v14 = 0;
      }
    }

    else
    {
      OUTLINED_FUNCTION_2_54();
      if (v30 && (OUTLINED_FUNCTION_5_42(), v30))
      {
        v32 = v5;
        v31 = 0x80;
        v24 = 0x404F000000000000;
      }

      else
      {
        OUTLINED_FUNCTION_4_43();
        OUTLINED_FUNCTION_0_83();
      }

      v33 = 1;
    }
  }

  else if ((v22 & 1) != 0 && (OUTLINED_FUNCTION_2_54(), v30) && (OUTLINED_FUNCTION_5_42(), v30))
  {
    v31 = 0x80;
    v24 = 0x404F000000000000;
    v32 = 0x4024000000000000;
  }

  else
  {
    OUTLINED_FUNCTION_2_54();
    if (v30 && (OUTLINED_FUNCTION_5_42(), v30))
    {
      v31 = 0x80;
      v24 = 0x404F000000000000;
    }

    else
    {
      OUTLINED_FUNCTION_4_43();
      OUTLINED_FUNCTION_0_83();
    }
  }

  *a1 = v33;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16;
  *(a1 + 24) = v24;
  *(a1 + 32) = v31;
  *(a1 + 40) = v23;
  *(a1 + 48) = v32;
  *(a1 + 56) = v7;
  *(a1 + 64) = v6;
  *(a1 + 72) = v8;
  *(a1 + 80) = v6;
  *(a1 + 88) = v17;
}

void sub_2169495E4(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = *(v2 + 48);
  v5 = &qword_21702B3E8[sub_216A1204C(a2)];
  if (!*(v2 + 32))
  {
    v5 = v2 + 3;
  }

  v6 = *v5;
  if (v4)
  {
    v7 = 64;
  }

  else
  {
    v7 = 32;
  }

  v8 = (v4 & 1) == 0;
  v9 = *v2;
  if (*(v2 + 16))
  {
    v10 = *v5;
  }

  else
  {
    v10 = v2[1];
  }

  v11 = v2[5];
  v12 = sub_21698EE54();
  *a1 = v8;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = v7;
  *(a1 + 40) = 0;
  *(a1 + 48) = v9;
  *(a1 + 56) = 0;
  *(a1 + 64) = v6;
  *(a1 + 72) = v11;
  *(a1 + 80) = v10;
  *(a1 + 88) = v12;
}

void sub_2169496E4(uint64_t a1@<X8>, double a2@<D1>, double a3@<D2>)
{
  v6 = sub_21698EE54();
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 32;
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a3;
  *(a1 + 80) = 0;
  *(a1 + 88) = v6;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_216949894(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 49))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 48);
      v4 = v3 >= 2;
      v2 = v3 - 2;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2169498D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

_BYTE *sub_216949948(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_216949A24()
{
  result = qword_27CABD820;
  if (!qword_27CABD820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABD820);
  }

  return result;
}

id sub_216949A80(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_217005F94();
  v6 = [v4 initWithData_];

  sub_21677A524(a1, a2);
  return v6;
}

id sub_216949AF8()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75D28]);

  return [v0 init];
}

void sub_216949B30()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v55 = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDA68);
  v6 = OUTLINED_FUNCTION_36(v5);
  MEMORY[0x28223BE20](v6);
  v8 = &v52 - v7;
  v9 = sub_21700CA14();
  OUTLINED_FUNCTION_1();
  v53 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v52 - v15;
  v17 = sub_217007B94();
  OUTLINED_FUNCTION_1();
  v54 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7();
  v22 = v21 - v20;
  v23 = type metadata accessor for ImagePicker(0);
  OUTLINED_FUNCTION_1_68((v0 + v23[8]));
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDA20);
  MEMORY[0x21CE9BEE0](&v56, v24);
  if (v56 != 1)
  {
    goto LABEL_4;
  }

  v25 = [v4 presentedViewController];
  if (v25)
  {

LABEL_4:
    OUTLINED_FUNCTION_26();
    return;
  }

  v52 = v4;
  OUTLINED_FUNCTION_1_68((v0 + v23[6]));
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDA70);
  MEMORY[0x21CE9BEE0](&v56, v26);
  if (!v56)
  {
    v37 = [objc_allocWithZone(MEMORY[0x277D755C8]) init];
    [v37 setSourceType_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDA88);
    sub_217009C24();
    v38 = v57;
    [v37 setDelegate_];

    [v37 setAllowsEditing_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDAA0);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_217013DA0;
    sub_217007B84();
    v40 = sub_217007B54();
    v42 = v41;
    (*(v54 + 8))(v22, v17);
    *(v39 + 32) = v40;
    *(v39 + 40) = v42;
    v43 = sub_21700E804();

    [v37 setMediaTypes_];

    v44 = *(v1 + v23[9]);
    if (v44)
    {
      sub_21694A1D8(v44);
    }

    OUTLINED_FUNCTION_13_24(v52, sel_presentViewController_animated_completion_, v37);

    goto LABEL_4;
  }

  if (v56 == 1)
  {
    v27 = [v52 view];
    if (v27)
    {
      v28 = v27;
      v29 = [objc_opt_self() clearColor];
      [v28 setBackgroundColor_];

      v30 = [objc_opt_self() sharedPhotoLibrary];
      sub_21700C9F4();
      sub_21700C9A4();
      v31 = sub_21700C9B4();
      __swift_storeEnumTagSinglePayload(v8, 0, 1, v31);
      sub_21700CA04();
      sub_216685F4C(0, &qword_27CABDA90);
      v32 = v53;
      (*(v53 + 16))(v13, v16, v9);
      v33 = sub_21700F014();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDA88);
      sub_217009C24();
      sub_21694CFA0(&qword_27CABDA98, type metadata accessor for ImagePicker.Coordinator);
      sub_21700F024();
      v34 = [v33 presentationController];
      if (v34)
      {
        v35 = v34;
        sub_217009C24();
        v36 = v57;
        [v35 setDelegate_];
      }

      OUTLINED_FUNCTION_13_24(v52, sel_presentViewController_animated_completion_, v33);

      (*(v32 + 8))(v16, v9);
      goto LABEL_4;
    }

    __break(1u);
  }

  else
  {
    v45 = v52;
    v46 = [v52 view];
    if (v46)
    {
      v47 = v46;
      v48 = [objc_opt_self() clearColor];
      [v47 setBackgroundColor_];

      sub_216685F4C(0, &qword_27CABDA78);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDA80);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_217013DA0;
      sub_217007B84();
      v50 = sub_21694A48C(v49, 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDA88);
      sub_217009C24();
      v51 = v57;
      [v50 setDelegate_];

      [v50 _setAutomaticallyDismissesAfterCompletion_];
      OUTLINED_FUNCTION_13_24(v45, sel_presentViewController_animated_completion_, v50);

      goto LABEL_4;
    }
  }

  __break(1u);
}

void sub_21694A1D8(uint64_t a1)
{
  v3 = sub_21694D268(v1);
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  sub_21700DF14();
  v8 = 0;
  while (1)
  {
    v9 = v3;
    if (!v6)
    {
      break;
    }

    v10 = v6;
LABEL_10:
    v3 = 0;
    v6 = (v10 - 1) & v10;
    if (v9)
    {
      v12 = __clz(__rbit64(v10)) | (v8 << 6);
      v13 = *(*(a1 + 56) + v12);
      v14 = *(*(a1 + 48) + 16 * v12 + 8);
      *&v29 = *(*(a1 + 48) + 16 * v12);
      *(&v29 + 1) = v14;
      sub_21700DF14();
      sub_21700F364();
      v30 = MEMORY[0x277D839B0];
      LOBYTE(v29) = v13;
      sub_2166EF9C4(&v29, v28);
      swift_isUniquelyReferenced_nonNull_native();
      v27 = v9;
      v15 = sub_216E68120(v31);
      if (__OFADD__(v9[2], (v16 & 1) == 0))
      {
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        sub_21700F824();
        __break(1u);
        return;
      }

      v17 = v15;
      v18 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD1C0);
      if (sub_21700F554())
      {
        v19 = sub_216E68120(v31);
        if ((v18 & 1) != (v20 & 1))
        {
          goto LABEL_26;
        }

        v17 = v19;
      }

      v3 = v9;
      if (v18)
      {
        v21 = (v9[7] + 32 * v17);
        __swift_destroy_boxed_opaque_existential_1Tm(v27[7] + 32 * v17);
        sub_2166EF9C4(v28, v21);
        sub_216788110(v31);
      }

      else
      {
        v9[(v17 >> 6) + 8] |= 1 << v17;
        sub_216788294(v31, v9[6] + 40 * v17);
        sub_2166EF9C4(v28, (v9[7] + 32 * v17));
        sub_216788110(v31);
        v22 = v9[2];
        v23 = __OFADD__(v22, 1);
        v24 = v22 + 1;
        if (v23)
        {
          goto LABEL_25;
        }

        v9[2] = v24;
      }
    }
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v11 >= v7)
    {
      break;
    }

    v10 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v10)
    {
      v8 = v11;
      goto LABEL_10;
    }
  }

  if (v3)
  {
    v25 = sub_21700E344();
  }

  else
  {
    v25 = 0;
  }

  [v26 _setProperties_];
}

id sub_21694A48C(uint64_t a1, char a2)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_217007B94();
  v4 = sub_21700E804();

  v5 = [v3 initForOpeningContentTypes:v4 asCopy:a2 & 1];

  return v5;
}

id sub_21694A50C(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtCV7MusicUI11ImagePicker11Coordinator_pickHandler];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v1[OBJC_IVAR____TtCV7MusicUI11ImagePicker11Coordinator_selectedPhotoIdentifier];
  *v4 = 0;
  *(v4 + 1) = 0;
  sub_21694CE00(a1, &v1[OBJC_IVAR____TtCV7MusicUI11ImagePicker11Coordinator_imagePicker]);
  v7.receiver = v1;
  v7.super_class = type metadata accessor for ImagePicker.Coordinator(0);
  v5 = objc_msgSendSuper2(&v7, sel_init);
  sub_21694CF44(a1);
  return v5;
}

void sub_21694A590()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = v2;
  type metadata accessor for ImagePicker(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v42 - v8;
  sub_2169352B0();
  if (v49)
  {
    sub_2166EF9C4(&v47, &v50);
  }

  else
  {
    sub_2169352B0();
    if (v49)
    {
      sub_216697664(&v47, &unk_27CABF7A0);
    }
  }

  if (!*(&v51 + 1))
  {
    sub_216697664(&v50, &unk_27CABF7A0);
LABEL_11:
    *&v50 = 0;
    *(&v50 + 1) = 0xE000000000000000;
    sub_21700F3B4();
    MEMORY[0x21CE9F490](0xD00000000000002ALL, 0x8000000217084E70);
    type metadata accessor for InfoKey(0);
    sub_21694CFA0(&qword_27CAB6800, type metadata accessor for InfoKey);
    v19 = sub_21700E364();
    MEMORY[0x21CE9F490](v19);

    MEMORY[0x21CE9F490](0xD000000000000011, 0x8000000217084EA0);
    v20 = *(&v50 + 1);
    v21 = *(v1 + OBJC_IVAR____TtCV7MusicUI11ImagePicker11Coordinator_pickHandler);
    if (v21)
    {
      v22 = v50;
      sub_21694D2D4();
      v23 = swift_allocError();
      *v24 = v22;
      v24[1] = v20;

      v21(v23, 1);
      sub_21667E91C(v21);
    }

    else
    {
    }

    goto LABEL_25;
  }

  sub_216685F4C(0, &qword_280E29B40);
  if ((OUTLINED_FUNCTION_8_36() & 1) == 0)
  {
    goto LABEL_11;
  }

  v10 = v47;
  sub_2169352B0();
  if (!*(&v51 + 1))
  {
    sub_216697664(&v50, &unk_27CABF7A0);
    goto LABEL_15;
  }

  sub_216685F4C(0, &qword_27CABDAE8);
  if ((OUTLINED_FUNCTION_8_36() & 1) == 0)
  {
LABEL_15:
    v17 = 0uLL;
    v16 = 1;
    v18 = 0uLL;
    goto LABEL_16;
  }

  v11 = v47;
  [v47 CGRectValue];
  v43 = v12;
  v44 = v13;
  v42 = v14;
  v45 = v15;

  *&v18 = v42;
  *&v17 = v43;
  v16 = 0;
  *(&v17 + 1) = v44;
  *(&v18 + 1) = v45;
LABEL_16:
  v50 = v17;
  v51 = v18;
  v52 = v16;
  v25 = sub_21694AA9C(&v50);

  v26 = *(v1 + OBJC_IVAR____TtCV7MusicUI11ImagePicker11Coordinator_pickHandler);
  if (v26)
  {

    v26(v25, 0);
    sub_21667E91C(v26);
  }

  v27 = OBJC_IVAR____TtCV7MusicUI11ImagePicker11Coordinator_imagePicker;
  sub_21694CE00(v1 + OBJC_IVAR____TtCV7MusicUI11ImagePicker11Coordinator_imagePicker, v9);
  OUTLINED_FUNCTION_4_44();
  *&v47 = v28;
  *(&v47 + 1) = v29;
  v48 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDA70);
  MEMORY[0x21CE9BEE0](&v46, v31);
  v32 = v46;
  sub_21694CF44(v9);
  if ((v32 - 1) > 1)
  {
    sub_21694CE00(v1 + v27, v6);
    OUTLINED_FUNCTION_4_44();
    *&v47 = v39;
    *(&v47 + 1) = v40;
    v48 = v41;
    v46 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDA20);
    sub_21700B0D4();
    OUTLINED_FUNCTION_7_39(v3, sel_dismissViewControllerAnimated_completion_);
  }

  else
  {
    v33 = [v3 presentingViewController];
    if (!v33 || (v34 = v33, v35 = [v33 presentingViewController], v34, !v35))
    {

      goto LABEL_25;
    }

    sub_21694CE00(v1 + v27, v6);
    OUTLINED_FUNCTION_4_44();
    *&v47 = v36;
    *(&v47 + 1) = v37;
    v48 = v38;
    v46 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDA20);
    sub_21700B0D4();
    OUTLINED_FUNCTION_7_39(v35, sel_dismissViewControllerAnimated_completion_);
  }

  sub_21694CF44(v6);
LABEL_25:
  OUTLINED_FUNCTION_26();
}

id sub_21694AA9C(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [v1 size];
    v3 = v2;
    v5 = v4;
  }

  else
  {
    v3 = *(a1 + 16);
    v5 = *(a1 + 24);
  }

  if ((sub_217006654() & 1) == 0 || vabdd_f64(1.0, v3 / v5) <= 0.05 || (result = sub_21694CFE8()) == 0)
  {

    return v7;
  }

  return result;
}

void sub_21694AC38()
{
  OUTLINED_FUNCTION_49();
  v2 = OUTLINED_FUNCTION_31_0();
  v3 = type metadata accessor for ImagePicker(v2);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v7 = v6 - v5;
  v8 = [v0 presentingViewController];
  if (v8)
  {
    v9 = v8;
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = (v1 + OBJC_IVAR____TtCV7MusicUI11ImagePicker11Coordinator_selectedPhotoIdentifier);
      v12 = *(v1 + OBJC_IVAR____TtCV7MusicUI11ImagePicker11Coordinator_selectedPhotoIdentifier + 8);
      if (v12)
      {
        v13 = v10;
        v14 = *v11;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDAA0);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_217013DA0;
        *(v15 + 32) = v14;
        *(v15 + 40) = v12;
        sub_21700DF14();
        v16 = sub_21700E804();

        [v13 deselectAssetsWithIdentifiers_];

        *v11 = 0;
        v11[1] = 0;

        [v13 setModalInPresentation_];
      }
    }
  }

  sub_21694CE00(v1 + OBJC_IVAR____TtCV7MusicUI11ImagePicker11Coordinator_imagePicker, v7);
  OUTLINED_FUNCTION_1_68((v7 + *(v3 + 32)));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDA20);
  OUTLINED_FUNCTION_10_34();
  OUTLINED_FUNCTION_7_39(v0, sel_dismissViewControllerAnimated_completion_);
  sub_21694CF44(v7);
  OUTLINED_FUNCTION_26();
}

void sub_21694AE50()
{
  OUTLINED_FUNCTION_49();
  v43 = v0;
  v44 = v1;
  v2 = type metadata accessor for ImagePicker(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  v6 = v5 - v4;
  v7 = sub_217007B94();
  OUTLINED_FUNCTION_1();
  v42 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v41 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDAD0);
  v13 = OUTLINED_FUNCTION_36(v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - v14;
  v16 = sub_21700C9E4();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v21);
  v22 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v37 - v24;
  sub_216CE0BFC();
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    sub_216697664(v15, &unk_27CABDAD0);
    v26 = v43;
    v27 = &v43[OBJC_IVAR____TtCV7MusicUI11ImagePicker11Coordinator_selectedPhotoIdentifier];
    *v27 = 0;
    *(v27 + 1) = 0;

    sub_21694CE00(&v26[OBJC_IVAR____TtCV7MusicUI11ImagePicker11Coordinator_imagePicker], v6);
    OUTLINED_FUNCTION_1_68((v6 + *(v2 + 32)));
    v45 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDA20);
    OUTLINED_FUNCTION_10_34();
    OUTLINED_FUNCTION_7_39(v44, sel_dismissViewControllerAnimated_completion_);
    sub_21694CF44(v6);
  }

  else
  {
    v38 = *(v18 + 32);
    v38(v25, v15, v16);
    v40 = sub_21700C9C4();
    v28 = v41;
    sub_217007B84();
    (*(v18 + 16))(v22, v25, v16);
    v29 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v30 = swift_allocObject();
    v39 = v7;
    v32 = v43;
    v31 = v44;
    *(v30 + 16) = v43;
    *(v30 + 24) = v31;
    v38((v30 + v29), v22, v16);
    v33 = v32;
    v34 = v31;
    v35 = v40;
    v36 = sub_21700EDB4();

    (*(v42 + 8))(v28, v39);
    (*(v18 + 8))(v25, v16);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_21694B1D0(uint64_t a1, unint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v33 = a5;
  v31 = a2;
  v11 = sub_21700C9E4();
  v32 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v30 - v15;
  v17 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
  (*(v12 + 16))(&v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a6, v11);
  sub_21700EA34();
  v18 = a1;
  sub_21677A3F0(a1, a2);
  v19 = a3;
  v20 = a3;
  v21 = a4;
  v22 = v33;
  v23 = sub_21700EA24();
  v24 = (*(v12 + 80) + 72) & ~*(v12 + 80);
  v25 = swift_allocObject();
  v26 = MEMORY[0x277D85700];
  *(v25 + 2) = v23;
  *(v25 + 3) = v26;
  v28 = v31;
  v27 = v32;
  *(v25 + 4) = v18;
  *(v25 + 5) = v28;
  *(v25 + 6) = v19;
  *(v25 + 7) = v21;
  *(v25 + 8) = v22;
  (*(v12 + 32))(&v25[v24], &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v27);
  sub_21677BBA0();
}

uint64_t sub_21694B400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a8;
  v8[11] = v13;
  v8[8] = a6;
  v8[9] = a7;
  v8[6] = a4;
  v8[7] = a5;
  v8[12] = type metadata accessor for ImagePicker(0);
  v8[13] = swift_task_alloc();
  sub_21700EA34();
  v8[14] = sub_21700EA24();
  v10 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_21694B4D8, v10, v9);
}

uint64_t sub_21694B4D8()
{
  v1 = *(v0 + 56);

  if (v1 >> 60 == 15)
  {
LABEL_9:
    v27 = *(v0 + 64);
    v28 = *(v0 + 72);
    sub_21700F3B4();

    *(v0 + 40) = v27;
    v29 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDAE0);
    v30 = sub_21700E594();
    MEMORY[0x21CE9F490](v30);

    v31 = (v28 + OBJC_IVAR____TtCV7MusicUI11ImagePicker11Coordinator_selectedPhotoIdentifier);
    *v31 = 0;
    v31[1] = 0;

    v32 = *(v28 + OBJC_IVAR____TtCV7MusicUI11ImagePicker11Coordinator_pickHandler);
    if (v32)
    {
      sub_21694D2D4();
      v33 = swift_allocError();
      *v34 = 0xD00000000000002FLL;
      v34[1] = 0x8000000217084E40;

      v32(v33, 1);
      sub_21667E91C(v32);
    }

    else
    {
    }

    v35 = *(v0 + 104);
    v36 = *(v0 + 80);
    sub_21694CE00(*(v0 + 72) + OBJC_IVAR____TtCV7MusicUI11ImagePicker11Coordinator_imagePicker, v35);
    OUTLINED_FUNCTION_4_44();
    *(v0 + 16) = v37;
    *(v0 + 24) = v38;
    *(v0 + 32) = v39;
    *(v0 + 33) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDA20);
    sub_21700B0D4();
    OUTLINED_FUNCTION_7_39(v36, sel_dismissViewControllerAnimated_completion_);
    sub_21694CF44(v35);
    goto LABEL_16;
  }

  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  sub_216685F4C(0, &qword_280E29B40);
  sub_21677A404(v2, v3);
  sub_21677A404(v2, v3);
  v4 = sub_216949A80(v2, v3);
  if (!v4)
  {
    sub_21677A510(*(v0 + 48), *(v0 + 56));
    goto LABEL_9;
  }

  v5 = v4;
  v6 = *(v0 + 72);
  v7 = sub_21700C9D4();
  v8 = (v6 + OBJC_IVAR____TtCV7MusicUI11ImagePicker11Coordinator_selectedPhotoIdentifier);
  *v8 = v7;
  v8[1] = v9;

  v10 = UIImagePNGRepresentation(v5);
  if (v10)
  {
    v11 = v10;
    v12 = sub_217005FB4();
    v14 = v13;

    type metadata accessor for ImageEditingViewController();
    v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v16 = sub_21694B890();
    v20 = sub_21694D328(v16, v17, v18, v19, v12, v14, v15);
    if (v20)
    {
      v21 = v20;
      v22 = *(v0 + 96);
      v23 = *(v0 + 72);
      [v20 setDelegate_];
      [v21 setModalInPresentation_];
      if (*(v23 + OBJC_IVAR____TtCV7MusicUI11ImagePicker11Coordinator_imagePicker + *(v22 + 36)))
      {
        v24 = sub_21700DF14();
        sub_21694A1D8(v24);
      }

      v26 = *(v0 + 48);
      v25 = *(v0 + 56);
      OUTLINED_FUNCTION_13_24(*(v0 + 80), sel_presentViewController_animated_completion_, v21);
      [v21 becomeFirstResponder];
      sub_21677A510(v26, v25);
    }

    else
    {
      sub_21677A510(*(v0 + 48), *(v0 + 56));
    }

    sub_21677A524(v12, v14);
  }

  else
  {
    sub_21677A510(*(v0 + 48), *(v0 + 56));
  }

LABEL_16:

  v40 = *(v0 + 8);

  return v40();
}

double sub_21694B890()
{
  OUTLINED_FUNCTION_9_38();
  v1 = v0;
  OUTLINED_FUNCTION_9_38();
  v3 = v2;
  OUTLINED_FUNCTION_9_38();
  v5 = v4;
  OUTLINED_FUNCTION_9_38();
  v7 = v6;
  OUTLINED_FUNCTION_9_38();
  v9 = v8;
  v11 = v10;
  OUTLINED_FUNCTION_9_38();
  v13 = (v9 - v12) * 0.5 + 0.0;
  v15 = (v11 - v14) * 0.5 + 0.0;
  if (v5 < v7)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0.0;
  }

  if (v5 < v7)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = v13;
  }

  if (v3 >= v1)
  {
    v18 = v1;
  }

  else
  {
    v18 = v3;
  }

  v19 = v18;
  v25 = CGRectIntegral(*(&v16 - 1));
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;
  CGRectGetWidth(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  CGRectGetHeight(v26);
  return x;
}

void sub_21694B974()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for ImagePicker(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  v12 = OUTLINED_FUNCTION_36(v11);
  MEMORY[0x28223BE20](v12);
  v14 = &v53 - v13;
  v15 = sub_217005EF4();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_7();
  v21 = v20 - v19;
  sub_216CE0C14();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_216697664(v14, &qword_27CABA820);
LABEL_11:
    v56 = 0;
    v57 = 0xE000000000000000;
    sub_21700F3B4();
    MEMORY[0x21CE9F490](0xD000000000000025, 0x8000000217084DF0);
    v43 = MEMORY[0x21CE9F660](v3, v15);
    MEMORY[0x21CE9F490](v43);

    MEMORY[0x21CE9F490](0xD000000000000014, 0x8000000217084E20);
    v44 = v57;
    v45 = *(v1 + OBJC_IVAR____TtCV7MusicUI11ImagePicker11Coordinator_pickHandler);
    if (v45)
    {
      v46 = v56;
      sub_21694D2D4();
      v47 = swift_allocError();
      *v48 = v46;
      v48[1] = v44;

      v45(v47, 1);
      sub_21667E91C(v45);
    }

    else
    {
    }

    sub_21694CE00(v1 + OBJC_IVAR____TtCV7MusicUI11ImagePicker11Coordinator_imagePicker, v10);
    OUTLINED_FUNCTION_1_68((v10 + *(v6 + 32)));
    v55 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDA20);
    OUTLINED_FUNCTION_10_34();
    OUTLINED_FUNCTION_7_39(v5, sel_dismissViewControllerAnimated_completion_);
    sub_21694CF44(v10);
    goto LABEL_18;
  }

  (*(v17 + 32))(v21, v14, v15);
  sub_216685F4C(0, &qword_280E29B40);
  sub_217005EA4();
  v22 = sub_21694BDEC();
  if (!v22)
  {
    v41 = OUTLINED_FUNCTION_5_43();
    v42(v41);
    goto LABEL_11;
  }

  v23 = v22;
  v24 = [v5 view];
  if (v24)
  {
    v25 = v24;
    [v24 endEditing_];

    v26 = UIImagePNGRepresentation(v23);
    if (v26)
    {
      v27 = v26;
      v54 = v5;
      v28 = sub_217005FB4();
      v30 = v29;

      v31 = [objc_allocWithZone(MEMORY[0x277D755C8]) init];
      v32 = sub_21694B890();
      v36 = sub_21694D328(v32, v33, v34, v35, v28, v30, v31);
      if (v36)
      {
        v37 = v36;
        [v36 setDelegate_];
        [v37 setModalInPresentation_];
        if (*(v1 + OBJC_IVAR____TtCV7MusicUI11ImagePicker11Coordinator_imagePicker + *(v6 + 36)))
        {
          v38 = sub_21700DF14();
          sub_21694A1D8(v38);
        }

        OUTLINED_FUNCTION_13_24(v54, sel_presentViewController_animated_completion_, v37);

        sub_21677A524(v28, v30);
        v39 = OUTLINED_FUNCTION_5_43();
        v40(v39);
        goto LABEL_18;
      }

      v51 = OUTLINED_FUNCTION_5_43();
      v52(v51);
      sub_21677A524(v28, v30);
    }

    else
    {
      v49 = OUTLINED_FUNCTION_5_43();
      v50(v49);
    }

LABEL_18:
    OUTLINED_FUNCTION_26();
    return;
  }

  __break(1u);
}

id sub_21694BDEC()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_21700E4D4();

  v2 = [v0 initWithContentsOfFile_];

  return v2;
}

uint64_t sub_21694BEE0()
{
  v2 = OUTLINED_FUNCTION_31_0();
  v3 = type metadata accessor for ImagePicker(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  v6 = v5 - v4;
  sub_21694CE00(v1 + OBJC_IVAR____TtCV7MusicUI11ImagePicker11Coordinator_imagePicker, v5 - v4);
  OUTLINED_FUNCTION_4_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDA20);
  sub_21700B0D4();
  OUTLINED_FUNCTION_7_39(v0, sel_dismissViewControllerAnimated_completion_);
  return sub_21694CF44(v6);
}

uint64_t sub_21694C01C()
{
  type metadata accessor for ImagePicker(0);
  OUTLINED_FUNCTION_4_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDA20);
  return sub_21700B0D4();
}

uint64_t sub_21694C1D8()
{
  result = type metadata accessor for ImagePicker(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *sub_21694C298()
{
  v1 = v0;
  v2 = type metadata accessor for ImagePicker(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_21694CE00(v0, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = objc_allocWithZone(type metadata accessor for ImagePicker.Coordinator(0));
  v6 = sub_21694A50C(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21694CE00(v1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_21694CE64(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  v9 = &v6[OBJC_IVAR____TtCV7MusicUI11ImagePicker11Coordinator_pickHandler];
  v10 = *&v6[OBJC_IVAR____TtCV7MusicUI11ImagePicker11Coordinator_pickHandler];
  *v9 = sub_21694CEC8;
  v9[1] = v8;
  sub_21667E91C(v10);
  return v6;
}

uint64_t sub_21694C3CC(uint64_t result, char a2, uint64_t a3)
{
  if ((a2 & 1) == 0)
  {
    v4 = result;
    v5 = type metadata accessor for ImagePicker(0);
    v6 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDA60);
    result = sub_21700B0D4();
    if (*(a3 + *(v5 + 28) + 8))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDA20);
      sub_21700B0D4();
    }
  }

  return result;
}

char *sub_21694C4E4@<X0>(char **a1@<X8>)
{
  result = sub_21694C298();
  *a1 = result;
  return result;
}

uint64_t sub_21694C50C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21694CFA0(&unk_27CABDAB0, type metadata accessor for ImagePicker);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21694C5A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21694CFA0(&unk_27CABDAB0, type metadata accessor for ImagePicker);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21694C634()
{
  sub_21694CFA0(&unk_27CABDAB0, type metadata accessor for ImagePicker);
  sub_217009AF4();
  __break(1u);
}

id sub_21694C694(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (!a1)
  {
    ObjCClassFromMetadata = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (v3)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v6.receiver = v2;
  v6.super_class = type metadata accessor for ImageEditingViewController();
  return objc_msgSendSuper2(&v6, sel_initWithNavigationBarClass_toolbarClass_, ObjCClassFromMetadata, v3);
}

id sub_21694C770(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ImageEditingViewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithRootViewController_, a1);

  return v3;
}

id sub_21694C7E8(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_21700E4D4();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for ImageEditingViewController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, v5, a3);

  return v6;
}

id sub_21694C8C8(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ImageEditingViewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_21694C970(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_21694C9F4()
{
  sub_21694CB7C();
  if (v0 <= 0x3F)
  {
    sub_21694CC20(319, &unk_27CABDA00, qword_27CABD310, &unk_21702A090, MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      sub_21694CBD4(319, &unk_27CABDA10);
      if (v2 <= 0x3F)
      {
        sub_21694CC20(319, &qword_280E2A4F8, &unk_27CABDA20, &unk_2170187A0, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_21694CBD4(319, &qword_27CAB9110);
          if (v4 <= 0x3F)
          {
            sub_21694CC20(319, &qword_27CABDA30, &unk_27CABDA38, &unk_21702B498, MEMORY[0x277D83D88]);
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

void sub_21694CB7C()
{
  if (!qword_280E2B458)
  {
    sub_217008424();
    v0 = sub_2170080E4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2B458);
    }
  }
}

void sub_21694CBD4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_21700B104();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_21694CC20(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ImagePicker.SourceType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_21694CD64()
{
  result = qword_27CABDA48;
  if (!qword_27CABDA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABDA48);
  }

  return result;
}

uint64_t sub_21694CE00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImagePicker(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21694CE64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImagePicker(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21694CEC8(uint64_t a1, char a2)
{
  v5 = type metadata accessor for ImagePicker(0);
  OUTLINED_FUNCTION_36(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_21694C3CC(a1, a2 & 1, v7);
}

uint64_t sub_21694CF44(uint64_t a1)
{
  v2 = type metadata accessor for ImagePicker(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21694CFA0(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_21694CFE8()
{
  v1 = v0;
  v2 = v0;
  [v2 size];
  v4 = v3;
  v6 = v5;
  if (sub_217006654())
  {
    if (v6 >= v4)
    {
      v8 = round((v6 - v4) * 0.5);
      v7 = 0.0;
      v9 = v4;
      v10 = v4;
    }

    else
    {
      v7 = round((v4 - v6) * 0.5);
      v8 = 0.0;
      v9 = v6;
      v10 = v6;
    }

    v1 = sub_21694D0BC(v7, v8, v9, v10);
  }

  return v1;
}

id sub_21694D0BC(double a1, double a2, double a3, double a4)
{
  v6 = v5;
  if (![v5 CGImage])
  {
    return 0;
  }

  v11 = OUTLINED_FUNCTION_31_0();
  type metadata accessor for CGSize(v11);
  if ((sub_217006654() & 1) == 0)
  {
    goto LABEL_7;
  }

  [v5 scale];
  v13 = v12;
  v14 = sub_217006654();
  v15 = v13 * a1;
  v16 = v13 * a2;
  v17 = v13 * a3;
  v18 = v13 * a4;
  if ((v14 & 1) == 0)
  {
    v18 = a4;
    v17 = a3;
    v16 = a2;
    v15 = a1;
  }

  v19 = CGImageCreateWithImageInRect(v4, *&v15);
  if (!v19)
  {
LABEL_7:

    return 0;
  }

  v20 = v19;
  v21 = [v6 imageOrientation];
  v22 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v20 scale:v21 orientation:v13];

  return v22;
}

uint64_t sub_21694D228()
{
  result = sub_21700E384();
  qword_27CB22938 = result;
  return result;
}

uint64_t sub_21694D268(void *a1)
{
  v1 = [a1 _properties];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21700E354();

  return v3;
}

unint64_t sub_21694D2D4()
{
  result = qword_27CABDAC0;
  if (!qword_27CABDAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABDAC0);
  }

  return result;
}

id sub_21694D328(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, void *a7)
{
  v12 = sub_217005F94();
  v13 = [a7 _initWithSourceImageData_cropRect_];

  return v13;
}

uint64_t sub_21694D3A0(uint64_t a1, unint64_t a2, void *a3)
{
  v7 = sub_21700C9E4();
  OUTLINED_FUNCTION_36(v7);
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v11 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_21694B1D0(a1, a2, a3, v9, v10, v11);
}

uint64_t sub_21694D428()
{
  OUTLINED_FUNCTION_31_0();
  v3 = sub_21700C9E4();
  OUTLINED_FUNCTION_36(v3);
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
  v11[1] = sub_2166DFAC0;

  return sub_21694B400(v0, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_21694D558()
{
  v1 = sub_21694D698();
  if (v1 != sub_21694D698())
  {
    return 0;
  }

  swift_beginAccess();
  v2 = *(v0 + 16);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  result = sub_21700DF14();
  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_11:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    sub_216788294(*(v2 + 48) + 40 * (v10 | (v9 << 6)), v12);
    v11 = sub_21694D78C(v12);
    result = sub_216788110(v12);
    if ((v11 & 1) == 0)
    {

      return 0;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return 1;
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21694D6C0(uint64_t a1)
{
  swift_beginAccess();
  if (*(*(v1 + 16) + 16) && (sub_216E68120(a1), (v3 & 1) != 0))
  {
    swift_endAccess();
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD498);
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    swift_endAccess();
    return 0;
  }
}

uint64_t sub_21694D78C(uint64_t a1)
{
  OUTLINED_FUNCTION_0_84();
  if (*(*(v1 + 16) + 16))
  {
    sub_21700DF14();
    sub_216E68120(a1);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_21694D7EC()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_21694D824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  v11 = a1;
  sub_21700D314();
  swift_beginAccess();
  v8 = swift_unknownObjectRetain();
  sub_21694D8C0(v8, v10, (a2 + 16), a3, a4);
  sub_216788110(v10);
  return swift_endAccess();
}

unint64_t sub_21694D8C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *a3;
  result = sub_21694D93C(a1, a2, isUniquelyReferenced_nonNull_native, &v12, a4, a5);
  *a3 = v12;
  return result;
}

unint64_t sub_21694D93C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = *a4;
  v12 = sub_216E68120(a2);
  if (__OFADD__(v11[2], (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v12;
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDAF0);
  if ((sub_21700F554() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = sub_216E68120(a2);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_11:
    result = sub_21700F824();
    __break(1u);
    return result;
  }

  v14 = v16;
LABEL_5:
  v18 = *a4;
  if (v15)
  {
    v19 = (v18[7] + 16 * v14);
    *v19 = a1;
    v19[1] = a6;

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_216788294(a2, v21);
    return sub_21694DA90(v14, v21, a1, v18, a5, a6);
  }
}

unint64_t sub_21694DA90(unint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v6 = a4[6] + 40 * result;
  v7 = *(a2 + 16);
  *v6 = *a2;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a2 + 32);
  v8 = (a4[7] + 16 * result);
  *v8 = a3;
  v8[1] = a6;
  v9 = a4[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v11;
  }

  return result;
}

char *sub_21694DAEC()
{
  v3 = *(v0 + 32);
  v1 = *&v3[OBJC_IVAR____TtCV7MusicUI19UIKitSearchScopeBar13ContainerView_segmentedControl];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDB18);
  sub_217009A04();
  [v1 addTarget:v4 action:sel_scopeChanged_ forControlEvents:4096];

  return v3;
}

id sub_21694DB8C()
{
  v1 = sub_2170090F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 8);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v13 = *v0;
  v14 = v5;
  LOBYTE(v15) = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDB10);
  MEMORY[0x21CE9BEE0](&v17, v8);
  LOBYTE(v13) = v17;
  sub_21694DCFC(&v13, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDB18);
  sub_217009A14();
  sub_2169274D4();
  sub_217009104();
  v9 = (*(v2 + 8))(v4, v1);
  *&v9.f64[0] = v13;
  v10.f64[0] = v15;
  return sub_21694E114(v9, v14, v10, v16);
}

uint64_t sub_21694DCFC(char *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(v2 + OBJC_IVAR____TtCV7MusicUI19UIKitSearchScopeBar13ContainerView_segmentedControl);
  result = [v5 numberOfSegments];
  if (result < 0)
  {
    __break(1u);
    return result;
  }

  v7 = result;
  v35 = v4;
  if (result)
  {
    v8 = 0;
    v9 = MEMORY[0x277D84F90];
    do
    {
      v10 = [v5 titleForSegmentAtIndex_];
      if (v10)
      {
        v11 = v10;
        v12 = sub_21700E514();
        v14 = v13;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21693776C();
          v9 = v17;
        }

        v15 = *(v9 + 16);
        if (v15 >= *(v9 + 24) >> 1)
        {
          sub_21693776C();
          v9 = v18;
        }

        *(v9 + 16) = v15 + 1;
        v16 = v9 + 16 * v15;
        *(v16 + 32) = v12;
        *(v16 + 40) = v14;
      }

      ++v8;
    }

    while (v7 != v8);
  }

  v19 = *(a2 + 16);
  v36 = a2;
  v37 = v19;
  if (v19)
  {
    v38 = MEMORY[0x277D84F90];
    sub_2166F4258();
    v20 = (a2 + 32);
    v21 = v19;
    do
    {
      if (*v20)
      {
        if (qword_280E29B20 != -1)
        {
          OUTLINED_FUNCTION_0_85();
          swift_once();
        }

        v34 = 0xE000000000000000;
      }

      else
      {
        if (qword_280E29B20 != -1)
        {
          OUTLINED_FUNCTION_0_85();
          swift_once();
        }

        v34 = 0xE000000000000000;
      }

      OUTLINED_FUNCTION_1_69();
      v22 = sub_21700E724();
      v24 = v23;
      v25 = *(v38 + 16);
      if (v25 >= *(v38 + 24) >> 1)
      {
        sub_2166F4258();
      }

      *(v38 + 16) = v25 + 1;
      v26 = v38 + 16 * v25;
      *(v26 + 32) = v22;
      *(v26 + 40) = v24;
      ++v20;
      --v21;
    }

    while (v21);
  }

  sub_216E20CEC();
  v28 = v27;

  if ((v28 & 1) == 0)
  {
    [v5 removeAllSegments];
    if (v37)
    {
      for (i = 0; i != v37; ++i)
      {
        if (*(v36 + 32 + i))
        {
          if (qword_280E29B20 != -1)
          {
            OUTLINED_FUNCTION_0_85();
            swift_once();
          }

          v34 = 0xE000000000000000;
        }

        else
        {
          if (qword_280E29B20 != -1)
          {
            OUTLINED_FUNCTION_0_85();
            swift_once();
          }

          v34 = 0xE000000000000000;
        }

        OUTLINED_FUNCTION_1_69();
        v30 = sub_21700E724();
        sub_21694ED78(v30, v31, i, 0, v5);
      }
    }
  }

  result = sub_21694E81C(v35, v36);
  if (v32)
  {
    if (!v37)
    {
      return result;
    }

    v33 = 0;
  }

  else
  {
    v33 = result;
  }

  return [v5 setSelectedSegmentIndex_];
}

id sub_21694E114(float64x2_t a1, float64_t a2, float64x2_t a3, float64_t a4)
{
  v5 = (v4 + OBJC_IVAR____TtCV7MusicUI19UIKitSearchScopeBar13ContainerView_layoutInsets);
  v6 = *(v4 + OBJC_IVAR____TtCV7MusicUI19UIKitSearchScopeBar13ContainerView_layoutInsets);
  v7 = *(v4 + OBJC_IVAR____TtCV7MusicUI19UIKitSearchScopeBar13ContainerView_layoutInsets + 8);
  v8 = *(v4 + OBJC_IVAR____TtCV7MusicUI19UIKitSearchScopeBar13ContainerView_layoutInsets + 16);
  v9 = *(v4 + OBJC_IVAR____TtCV7MusicUI19UIKitSearchScopeBar13ContainerView_layoutInsets + 24);
  *v5 = a1.f64[0];
  v5[1] = a2;
  v5[2] = a3.f64[0];
  v5[3] = a4;
  *&a1.f64[0] = v6;
  *&a3.f64[0] = v8;
  return sub_21694EA64(a1, v7, a3, v9);
}

id sub_21694E144()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = type metadata accessor for UIKitSearchScopeBar.Coordinator();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtCV7MusicUI19UIKitSearchScopeBar11Coordinator_parent];
  *v9 = v1;
  *(v9 + 1) = v2;
  v9[16] = v3;
  *(v9 + 3) = v4;
  *(v9 + 4) = v5;
  *(v9 + 5) = v6;
  v12.receiver = v8;
  v12.super_class = v7;

  sub_21700DF14();
  v10 = v5;

  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t sub_21694E1F4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    [*(a5 + OBJC_IVAR____TtCV7MusicUI19UIKitSearchScopeBar13ContainerView_segmentedControl) intrinsicContentSize];
    return v5;
  }

  else
  {
    v6 = a1;
    v8 = *(a5 + OBJC_IVAR____TtCV7MusicUI19UIKitSearchScopeBar13ContainerView_segmentedControl);
    [v8 intrinsicContentSize];
    [v8 sizeThatFits_];
  }

  return v6;
}

uint64_t sub_21694E2D4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20[-v6];
  result = [a1 selectedSegmentIndex];
  if ((result & 0x8000000000000000) == 0)
  {
    v9 = &v2[OBJC_IVAR____TtCV7MusicUI19UIKitSearchScopeBar11Coordinator_parent];
    v10 = *&v2[OBJC_IVAR____TtCV7MusicUI19UIKitSearchScopeBar11Coordinator_parent + 24];
    if (result < *(v10 + 16))
    {
      v11 = *(v10 + result + 32);
      v12 = *v9;
      v13 = *(v9 + 1);
      v14 = v9[16];
      v21 = v12;
      v22 = v13;
      v23 = v14;
      v20[7] = v11;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDB10);
      sub_21700B0D4();

      v15 = sub_21700EA74();
      __swift_storeEnumTagSinglePayload(v7, 1, 1, v15);
      sub_21700EA34();
      v16 = v2;
      v17 = sub_21700EA24();
      v18 = swift_allocObject();
      v19 = MEMORY[0x277D85700];
      *(v18 + 16) = v17;
      *(v18 + 24) = v19;
      *(v18 + 32) = v16;
      *(v18 + 40) = v11;
      sub_21677BBA0();
    }
  }

  return result;
}

uint64_t sub_21694E46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 32) = a5;
  *(v5 + 16) = a4;
  sub_21700EA34();
  *(v5 + 24) = sub_21700EA24();
  v7 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_21694E508, v7, v6);
}

uint64_t sub_21694E508()
{

  sub_216C986DC();

  v1 = *(v0 + 8);

  return v1();
}

id sub_21694E61C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UIKitSearchScopeBar.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_21694E6DC(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtCV7MusicUI19UIKitSearchScopeBar13ContainerView_layoutInsets];
  v5 = *(MEMORY[0x277D768C8] + 16);
  *v4 = *MEMORY[0x277D768C8];
  *(v4 + 1) = v5;
  *&v1[OBJC_IVAR____TtCV7MusicUI19UIKitSearchScopeBar13ContainerView_segmentedControl] = a1;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v6 = a1;
  v7 = objc_msgSendSuper2(&v9, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v7 addSubview_];

  return v7;
}

void sub_21694E78C()
{
  v1 = (v0 + OBJC_IVAR____TtCV7MusicUI19UIKitSearchScopeBar13ContainerView_layoutInsets);
  v2 = *(MEMORY[0x277D768C8] + 16);
  *v1 = *MEMORY[0x277D768C8];
  v1[1] = v2;
  sub_21700F584();
  __break(1u);
}

uint64_t sub_21694E81C(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = a2 + 32;
  if (a1)
  {
    v5 = 0x7972617262696CLL;
  }

  else
  {
    v5 = 0x676F6C61746163;
  }

  while (1)
  {
    v6 = *(v4 + v3) ? 0x7972617262696CLL : 0x676F6C61746163;
    if (v6 == v5)
    {
      break;
    }

    v7 = sub_21700F7D4();
    swift_bridgeObjectRelease_n();
    if (v7)
    {
      return v3;
    }

    if (v2 == ++v3)
    {
      return 0;
    }
  }

  swift_bridgeObjectRelease_n();
  return v3;
}

id sub_21694E900()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtCV7MusicUI19UIKitSearchScopeBar13ContainerView_segmentedControl];
  [v0 bounds];
  return [v1 setFrame_];
}

id sub_21694EA64(float64x2_t a1, float64_t a2, float64x2_t a3, float64_t a4)
{
  a1.f64[1] = a2;
  a3.f64[1] = a4;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&v4[OBJC_IVAR____TtCV7MusicUI19UIKitSearchScopeBar13ContainerView_layoutInsets], a1), vceqq_f64(*&v4[OBJC_IVAR____TtCV7MusicUI19UIKitSearchScopeBar13ContainerView_layoutInsets + 16], a3)))) & 1) == 0)
  {
    return [v4 setNeedsLayout];
  }

  return result;
}

uint64_t sub_21694EB20(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21694EB60(uint64_t result, int a2, int a3)
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

id sub_21694EBCC@<X0>(void *a1@<X8>)
{
  result = sub_21694E144();
  *a1 = result;
  return result;
}

uint64_t sub_21694EC30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21694EDF4();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_21694EC94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21694EDF4();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_21694ECF8()
{
  sub_21694EDF4();
  sub_2170094F4();
  __break(1u);
}

unint64_t sub_21694ED24()
{
  result = qword_280E3CD98;
  if (!qword_280E3CD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E3CD98);
  }

  return result;
}

void sub_21694ED78(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v8 = sub_21700E4D4();

  [a5 insertSegmentWithTitle:v8 atIndex:a3 animated:a4 & 1];
}

unint64_t sub_21694EDF4()
{
  result = qword_280E3CDA0[0];
  if (!qword_280E3CDA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E3CDA0);
  }

  return result;
}

uint64_t sub_21694EE64(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2166DFAC0;

  return sub_21694E46C(a1, v4, v5, v6, v7);
}

uint64_t sub_21694EF28(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  return (*(v7 + 144))(v3, a2, a3, v6, v7);
}

uint64_t sub_21694EFA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[30] = a3;
  v4[31] = a4;
  v4[28] = a1;
  v4[29] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDB20);
  v4[32] = swift_task_alloc();
  v5 = sub_21700BA94();
  v4[33] = v5;
  v4[34] = *(v5 - 8);
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7090);
  v4[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21694F0EC, 0, 0);
}

uint64_t sub_21694F0EC()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 232);
  type metadata accessor for PlaybackPresenter();
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  v3 = sub_21700BAB4();
  (*(*(v3 - 8) + 16))(v1, v2, v3);
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v3);
  LOBYTE(v2) = sub_216C6D33C(v1);
  sub_21669987C(v1, &qword_27CAB7090);
  if (v2)
  {

LABEL_5:
    v7 = *(v0 + 224);
    *(v7 + 32) = 0;
    *v7 = 0u;
    *(v7 + 16) = 0u;
    goto LABEL_6;
  }

  v5 = *(v0 + 256);
  v4 = *(v0 + 264);
  sub_21694F584(*(v0 + 232), v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v4) == 1)
  {
    v6 = *(v0 + 256);

    sub_21669987C(v6, &qword_27CABDB20);
    goto LABEL_5;
  }

  v11 = *(v0 + 288);
  v10 = *(v0 + 296);
  v12 = *(v0 + 264);
  v13 = *(v0 + 272);
  (*(v13 + 32))(v10, *(v0 + 256), v12);
  v35 = *(v13 + 16);
  v35(v11, v10, v12);
  v14 = *(v13 + 88);
  v15 = OUTLINED_FUNCTION_115();
  v16 = v14(v15);
  v17 = *MEMORY[0x277D2AED8];
  v18 = OUTLINED_FUNCTION_115();
  v36 = v19;
  (v19)(v18);
  if (v16 == v17)
  {
    v20 = *(v0 + 264);
    v21 = *(v0 + 224);
    v22 = *(v0 + 296);
    v21[3] = type metadata accessor for AgeVerificationOnboardingAction();
    v21[4] = sub_21695114C(&qword_27CABA7D8, type metadata accessor for AgeVerificationOnboardingAction);
    __swift_allocate_boxed_opaque_existential_1(v21);
    sub_21700D234();

    v36(v22, v20);
    goto LABEL_6;
  }

  v35(*(v0 + 280), *(v0 + 296), *(v0 + 264));
  v23 = OUTLINED_FUNCTION_115();
  v24 = v14(v23);
  v25 = *MEMORY[0x277D2AED0];
  v26 = OUTLINED_FUNCTION_115();
  (v36)(v26);
  if (v24 == v25)
  {
    sub_21692E9E8(*(v0 + 248), v0 + 176);
    if (*(v0 + 200))
    {
      v27 = *(v0 + 224);
      v36(*(v0 + 296), *(v0 + 264));

      sub_2166A0F18((v0 + 176), v0 + 136);
      v28 = (v0 + 136);
LABEL_17:
      sub_2166A0F18(v28, v27);
      goto LABEL_6;
    }

    sub_21669987C(v0 + 176, &qword_27CAB6DB0);
  }

  sub_21694F740(*(v0 + 296), (v0 + 16));
  v29 = *(v0 + 32);
  v27 = *(v0 + 224);
  if (v29)
  {
    v30 = type metadata accessor for PresentAlertAction();
    *(v0 + 120) = v30;
    *(v0 + 128) = sub_21695114C(qword_280E3EB18, type metadata accessor for PresentAlertAction);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
    sub_21700D234();

    v32 = boxed_opaque_existential_1 + *(v30 + 20);
    *v32 = *(v0 + 16);
    *(v32 + 2) = v29;
    *(v32 + 24) = *(v0 + 40);
    v33 = OUTLINED_FUNCTION_115();
    (v36)(v33);
    sub_2166A0F18((v0 + 96), v0 + 56);
    v28 = (v0 + 56);
    goto LABEL_17;
  }

  v34 = OUTLINED_FUNCTION_115();
  (v36)(v34);
  *(v27 + 32) = 0;
  *v27 = 0u;
  *(v27 + 16) = 0u;
LABEL_6:

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_21694F584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21700BAB4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == *MEMORY[0x277D2AE90])
  {
    (*(v5 + 96))(v7, v4);
    v9 = sub_21700BA94();
    (*(*(v9 - 8) + 32))(a2, v7, v9);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v9);
  }

  else
  {
    v11 = v8;
    v12 = *MEMORY[0x277D2AEE0];
    v13 = sub_21700BA94();
    result = __swift_storeEnumTagSinglePayload(a2, 1, 1, v13);
    if (v11 != v12)
    {
      return (*(v5 + 8))(v7, v4);
    }
  }

  return result;
}

void sub_21694F740(uint64_t a1@<X0>, void *a2@<X8>)
{
  v163 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70A8);
  MEMORY[0x28223BE20](v3 - 8);
  v161 = &v152 - v4;
  v162 = sub_217006224();
  v160 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v159 = &v152 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v152 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v152 - v10;
  v12 = sub_217005EF4();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v152 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v152 - v17;
  v19 = sub_21700BA94();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v152 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v22, a1, v19);
  v23 = (*(v20 + 88))(v22, v19);
  if (v23 != *MEMORY[0x277D2AEC0])
  {
    v28 = v23;
    if (v23 == *MEMORY[0x277D2AEB0])
    {
      v27 = 196;
    }

    else
    {
      if (v23 == *MEMORY[0x277D2AEB8])
      {
        sub_21695052C(__src);
LABEL_19:
        v50 = __src[0];
        v51 = __src[1];
        v52 = __src[2];
        v53 = __src[3];
        v54 = __src[4];
        goto LABEL_20;
      }

      if (v23 == *MEMORY[0x277D2AEA8])
      {
        v50 = 0;
        v51 = 0;
        v52 = 0;
        v53 = 0;
        v54 = 0;
LABEL_20:
        v90 = v163;
        *v163 = v50;
        v90[1] = v51;
        v90[2] = v52;
        v90[3] = v53;
        v90[4] = v54;
        return;
      }

      if (v23 == *MEMORY[0x277D2AE98])
      {
        sub_217005ED4();
        if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
        {
          sub_21669987C(v11, &qword_27CABA820);
          __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC0130);
          v91 = (_s6ActionVMa() - 8);
          v92 = (*(*v91 + 80) + 32) & ~*(*v91 + 80);
          v93 = swift_allocObject();
          *(v93 + 16) = xmmword_217013DA0;
          v158 = v93;
          v94 = v93 + v92;
          v95 = sub_216983738(181);
          v156 = v96;
          v157 = v95;
          v97 = v159;
          sub_217006214();
          v155 = sub_2170061F4();
          v99 = v98;
          v100 = *(v160 + 8);
          v101 = v162;
          v100(v97, v162);
          v102 = sub_217007F04();
          v103 = v161;
          __swift_storeEnumTagSinglePayload(v161, 1, 1, v102);
          sub_217006214();
          v104 = sub_2170061F4();
          v106 = v105;
          v100(v97, v101);
          v107 = (v94 + v91[8]);
          *v107 = v104;
          v107[1] = v106;
          *v94 = v155;
          *(v94 + 8) = v99;
          v108 = v156;
          *(v94 + 16) = v157;
          *(v94 + 24) = v108;
          *(v94 + 32) = 0u;
          *(v94 + 48) = 0u;
          *(v94 + 64) = 0;
          sub_2168D36D4(v103, v94 + v91[7]);
        }

        else
        {
          v157 = v13;
          v109 = *(v13 + 32);
          v110 = v18;
          v154 = v18;
          v109(v18, v11, v12);
          __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC0130);
          v156 = v12;
          v111 = (_s6ActionVMa() - 8);
          v112 = *v111;
          v155 = *(*v111 + 72);
          v113 = (*(v112 + 80) + 32) & ~*(v112 + 80);
          v114 = swift_allocObject();
          *(v114 + 16) = xmmword_217013D90;
          v158 = v114;
          v115 = (v114 + v113);
          v116 = sub_216983738(295);
          v118 = v117;
          v119 = type metadata accessor for OpenExternalURLAction();
          __src[7] = v119;
          __src[8] = sub_21695114C(qword_280E3A6B0, type metadata accessor for OpenExternalURLAction);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&__src[4]);
          (*(v13 + 16))(boxed_opaque_existential_1, v110, v12);
          sub_21700D234();
          *(boxed_opaque_existential_1 + *(v119 + 20)) = 1;
          v121 = v159;
          sub_217006214();
          v122 = sub_2170061F4();
          v124 = v123;
          v125 = *(v160 + 8);
          v126 = v162;
          v125(v121, v162);
          __src[0] = v122;
          __src[1] = v124;
          __src[2] = v116;
          __src[3] = v118;
          v127 = sub_217007F04();
          v128 = v161;
          __swift_storeEnumTagSinglePayload(v161, 1, 1, v127);
          sub_217006214();
          v129 = sub_2170061F4();
          v131 = v130;
          v125(v121, v126);
          v132 = &v115[v111[8]];
          *v132 = v129;
          v132[1] = v131;
          memcpy(v115, __src, 0x48uLL);
          sub_2168D36D4(v128, &v115[v111[7]]);
          v133 = &v115[v155];
          v160 = sub_216983738(181);
          v155 = v134;
          sub_217006214();
          v135 = sub_2170061F4();
          v153 = v136;
          v125(v121, v126);
          __swift_storeEnumTagSinglePayload(v128, 1, 1, v127);
          sub_217006214();
          v137 = sub_2170061F4();
          v139 = v138;
          v125(v121, v126);
          v140 = &v133[v111[8]];
          *v140 = v137;
          v140[1] = v139;
          v141 = v153;
          *v133 = v135;
          *(v133 + 1) = v141;
          v142 = v155;
          *(v133 + 2) = v160;
          *(v133 + 3) = v142;
          *(v133 + 2) = 0u;
          *(v133 + 3) = 0u;
          *(v133 + 8) = 0;
          sub_2168D36D4(v128, &v133[v111[7]]);
          (*(v157 + 8))(v154, v156);
        }

        v143 = sub_216983738(198);
        v145 = v144;
        v88 = sub_216983738(197);
        v89 = v146;
        v29 = v143;
        v30 = v145;
        v31 = v158;
        goto LABEL_18;
      }

      if (v23 != *MEMORY[0x277D2AED0])
      {
        if (v23 == *MEMORY[0x277D2AEC8])
        {
          v147 = sub_216983738(201);
          v149 = v148;
          v88 = sub_216983738(200);
          v89 = v150;
          v31 = MEMORY[0x277D84F90];
          v29 = v147;
          v30 = v149;
          goto LABEL_18;
        }

        v151 = *MEMORY[0x277D2AEA0];
        v29 = sub_216983738(195);
        if (v28 != v151)
        {
          sub_216933384(v29, v30, MEMORY[0x277D84F90], 0, 0, __src);
          v50 = __src[0];
          v51 = __src[1];
          v52 = __src[2];
          v53 = __src[3];
          v54 = __src[4];
          (*(v20 + 8))(v22, v19);
          goto LABEL_20;
        }

        goto LABEL_8;
      }

      v27 = 199;
    }

LABEL_7:
    v29 = sub_216983738(v27);
LABEL_8:
    v31 = MEMORY[0x277D84F90];
LABEL_17:
    v88 = 0;
    v89 = 0;
LABEL_18:
    sub_216933384(v29, v30, v31, v88, v89, __src);
    goto LABEL_19;
  }

  v24 = MobileGestalt_get_current_device();
  if (v24)
  {
    v25 = v24;
    wapiCapability = MobileGestalt_get_wapiCapability();

    if (!wapiCapability)
    {
      sub_217005ED4();
      if (__swift_getEnumTagSinglePayload(v9, 1, v12) == 1)
      {
        sub_21669987C(v9, &qword_27CABA820);
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC0130);
        v32 = (_s6ActionVMa() - 8);
        v33 = (*(*v32 + 80) + 32) & ~*(*v32 + 80);
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_217013DA0;
        v158 = v34;
        v35 = v34 + v33;
        v36 = sub_216983738(181);
        v156 = v37;
        v157 = v36;
        v38 = v162;
        v39 = v159;
        sub_217006214();
        v155 = sub_2170061F4();
        v41 = v40;
        v42 = *(v160 + 8);
        v42(v39, v38);
        v43 = sub_217007F04();
        v44 = v161;
        __swift_storeEnumTagSinglePayload(v161, 1, 1, v43);
        sub_217006214();
        v45 = sub_2170061F4();
        v47 = v46;
        v42(v39, v38);
        v48 = (v35 + v32[8]);
        *v48 = v45;
        v48[1] = v47;
        *v35 = v155;
        *(v35 + 8) = v41;
        v49 = v156;
        *(v35 + 16) = v157;
        *(v35 + 24) = v49;
        *(v35 + 32) = 0u;
        *(v35 + 48) = 0u;
        *(v35 + 64) = 0;
        sub_2168D36D4(v44, v35 + v32[7]);
      }

      else
      {
        v157 = v13;
        (*(v13 + 32))(v16, v9, v12);
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC0130);
        v156 = v12;
        v55 = (_s6ActionVMa() - 8);
        v56 = *v55;
        v155 = *(*v55 + 72);
        v57 = (*(v56 + 80) + 32) & ~*(v56 + 80);
        v58 = swift_allocObject();
        *(v58 + 16) = xmmword_217013D90;
        v158 = v58;
        v59 = (v58 + v57);
        v154 = sub_216983738(295);
        v61 = v60;
        v62 = type metadata accessor for OpenExternalURLAction();
        __src[7] = v62;
        __src[8] = sub_21695114C(qword_280E3A6B0, type metadata accessor for OpenExternalURLAction);
        v63 = __swift_allocate_boxed_opaque_existential_1(&__src[4]);
        (*(v13 + 16))(v63, v16, v12);
        sub_21700D234();
        *(v63 + *(v62 + 20)) = 1;
        v64 = v159;
        sub_217006214();
        v65 = sub_2170061F4();
        v67 = v66;
        v68 = *(v160 + 8);
        v69 = v162;
        v68(v64, v162);
        __src[0] = v65;
        __src[1] = v67;
        __src[2] = v154;
        __src[3] = v61;
        v160 = sub_217007F04();
        v70 = v161;
        __swift_storeEnumTagSinglePayload(v161, 1, 1, v160);
        sub_217006214();
        v71 = sub_2170061F4();
        v73 = v72;
        v68(v64, v69);
        v74 = &v59[v55[8]];
        *v74 = v71;
        v74[1] = v73;
        memcpy(v59, __src, 0x48uLL);
        sub_2168D36D4(v70, &v59[v55[7]]);
        v75 = &v59[v155];
        v76 = sub_216983738(181);
        v154 = v77;
        v155 = v76;
        sub_217006214();
        v78 = sub_2170061F4();
        v152 = v79;
        v153 = v78;
        v80 = v162;
        v68(v64, v162);
        v81 = v70;
        __swift_storeEnumTagSinglePayload(v70, 1, 1, v160);
        sub_217006214();
        v82 = sub_2170061F4();
        v84 = v83;
        v68(v64, v80);
        v85 = &v75[v55[8]];
        *v85 = v82;
        v85[1] = v84;
        v86 = v152;
        *v75 = v153;
        *(v75 + 1) = v86;
        v87 = v154;
        *(v75 + 2) = v155;
        *(v75 + 3) = v87;
        *(v75 + 2) = 0u;
        *(v75 + 3) = 0u;
        *(v75 + 8) = 0;
        sub_2168D36D4(v81, &v75[v55[7]]);
        (*(v157 + 8))(v16, v156);
      }

      v29 = sub_216983738(204);
      v31 = v158;
      goto LABEL_17;
    }

    v27 = 202;
    goto LABEL_7;
  }

  __break(1u);
}

void sub_21695052C(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70A8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v91 - v3;
  v5 = sub_217006224();
  v100 = *(v5 - 8);
  v101 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() sharedConnection];
  if (v8)
  {
    v9 = v8;
    v10 = sub_21700E514();
    v12 = sub_2169510F0(v10, v11, v9);

    v13 = sub_216983738(277);
    v15 = v14;
    v16 = objc_opt_self();
    v17 = [v16 allowAccountModifications];
    v99 = v13;
    v98 = v15;
    if (v17)
    {
      if ((v12 & 1) == 0)
      {
        v18 = [objc_opt_self() currentDevice];
        v19 = [v18 userInterfaceIdiom];

        if (v19 != 2)
        {
          v97 = sub_216983738(278);
          v96 = v44;
          __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC0130);
          v45 = (_s6ActionVMa() - 8);
          v46 = *v45;
          v94 = *(*v45 + 72);
          v47 = (*(v46 + 80) + 32) & ~*(v46 + 80);
          v48 = swift_allocObject();
          *(v48 + 16) = xmmword_217013D90;
          v95 = v48;
          v49 = (v48 + v47);
          v93 = sub_216983738(19);
          v92 = v50;
          *(&__dst[3] + 1) = type metadata accessor for AllowExplicitContentAction();
          *&__dst[4] = sub_21695114C(&qword_27CABDB28, type metadata accessor for AllowExplicitContentAction);
          __swift_allocate_boxed_opaque_existential_1(&__dst[2]);
          sub_21700D234();
          sub_217006214();
          v51 = v4;
          v52 = sub_2170061F4();
          v54 = v53;
          v55 = v101;
          v56 = *(v100 + 8);
          v56(v7, v101);
          *&__dst[0] = v52;
          *(&__dst[0] + 1) = v54;
          *&__dst[1] = v93;
          *(&__dst[1] + 1) = v92;
          v100 = sub_217007F04();
          v57 = v51;
          __swift_storeEnumTagSinglePayload(v51, 1, 1, v100);
          sub_217006214();
          v58 = sub_2170061F4();
          v60 = v59;
          v56(v7, v55);
          v61 = &v49[v45[8]];
          *v61 = v58;
          v61[1] = v60;
          memcpy(v49, __dst, 0x48uLL);
          sub_2168D36D4(v57, &v49[v45[7]]);
          v62 = &v49[v94];
          v94 = sub_216983738(178);
          v93 = v63;
          sub_217006214();
          v92 = sub_2170061F4();
          v91 = v64;
          v65 = v56;
          v56(v7, v55);
          __swift_storeEnumTagSinglePayload(v57, 1, 1, v100);
          sub_217006214();
          v66 = sub_2170061F4();
          v68 = v67;
          v65(v7, v55);
          v69 = &v62[v45[8]];
          *v69 = v66;
          v69[1] = v68;
          v70 = v91;
          *v62 = v92;
          *(v62 + 1) = v70;
          v71 = v93;
          *(v62 + 2) = v94;
          *(v62 + 3) = v71;
          *(v62 + 2) = 0u;
          *(v62 + 3) = 0u;
          *(v62 + 8) = 0;
          sub_2168D36D4(v57, &v62[v45[7]]);
LABEL_12:
          sub_216933384(v99, v98, v95, v97, v96, __dst);
          v89 = *&__dst[1];
          v90 = *(&__dst[1] + 8);
          *a1 = __dst[0];
          *(a1 + 16) = v89;
          *(a1 + 24) = v90;
          return;
        }
      }
    }

    v94 = a1;
    if ([v16 allowAccountModifications])
    {
      sub_216950E18(__src);
      if (__src[1])
      {
        memcpy(__dst, __src, 0x48uLL);
        v97 = sub_216983738(279);
        v96 = v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC0130);
        v21 = (_s6ActionVMa() - 8);
        v22 = *v21;
        v93 = *(*v21 + 72);
        v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_217013D90;
        v95 = v24;
        v25 = (v24 + v23);
        sub_2167ADC3C(__dst, __src);
        v26 = sub_217007F04();
        __swift_storeEnumTagSinglePayload(v4, 1, 1, v26);
        sub_217006214();
        v27 = sub_2170061F4();
        v29 = v28;
        v30 = v101;
        v31 = *(v100 + 8);
        v31(v7, v101);
        v32 = &v25[v21[8]];
        *v32 = v27;
        v32[1] = v29;
        memcpy(v25, __src, 0x48uLL);
        sub_2168D36D4(v4, &v25[v21[7]]);
        v33 = &v25[v93];
        v100 = sub_216983738(178);
        v93 = v34;
        sub_217006214();
        v35 = sub_2170061F4();
        v92 = v36;
        v31(v7, v30);
        __swift_storeEnumTagSinglePayload(v4, 1, 1, v26);
        sub_217006214();
        v37 = sub_2170061F4();
        v38 = v4;
        v40 = v39;
        v31(v7, v30);
        v41 = &v33[v21[8]];
        *v41 = v37;
        v41[1] = v40;
        v42 = v92;
        *v33 = v35;
        *(v33 + 1) = v42;
        v43 = v93;
        *(v33 + 2) = v100;
        *(v33 + 3) = v43;
        *(v33 + 2) = 0u;
        *(v33 + 3) = 0u;
        *(v33 + 8) = 0;
        sub_2168D36D4(v38, &v33[v21[7]]);
        sub_2167ADC98(__dst);
LABEL_11:
        a1 = v94;
        goto LABEL_12;
      }

      sub_21669987C(__src, &qword_27CAB8100);
    }

    v97 = sub_216983738(276);
    v96 = v72;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC0130);
    v73 = (_s6ActionVMa() - 8);
    v74 = (*(*v73 + 80) + 32) & ~*(*v73 + 80);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_217013DA0;
    v95 = v75;
    v76 = v75 + v74;
    v93 = sub_216983738(181);
    v92 = v77;
    sub_217006214();
    v91 = sub_2170061F4();
    v79 = v78;
    v80 = v101;
    v81 = *(v100 + 8);
    v81(v7, v101);
    v82 = sub_217007F04();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v82);
    sub_217006214();
    v83 = v4;
    v84 = sub_2170061F4();
    v86 = v85;
    v81(v7, v80);
    v87 = (v76 + v73[8]);
    *v87 = v84;
    v87[1] = v86;
    *v76 = v91;
    *(v76 + 8) = v79;
    v88 = v92;
    *(v76 + 16) = v93;
    *(v76 + 24) = v88;
    *(v76 + 32) = 0u;
    *(v76 + 48) = 0u;
    *(v76 + 64) = 0;
    sub_2168D36D4(v83, v76 + v73[7]);
    goto LABEL_11;
  }

  __break(1u);
}

uint64_t sub_216950E18@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_217006224();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = sub_217005EF4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217005ED4();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_21669987C(v10, &qword_27CABA820);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0;
  }

  else
  {
    (*(v13 + 32))(v16, v10, v11);
    v18 = sub_216983738(295);
    v27 = v19;
    v20 = type metadata accessor for OpenExternalURLAction();
    *(a1 + 56) = v20;
    *(a1 + 64) = sub_21695114C(qword_280E3A6B0, type metadata accessor for OpenExternalURLAction);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a1 + 32));
    (*(v13 + 16))(boxed_opaque_existential_1, v16, v11);
    sub_21700D234();
    *(boxed_opaque_existential_1 + *(v20 + 20)) = 1;
    sub_217006214();
    v22 = sub_2170061F4();
    v24 = v23;
    (*(v4 + 8))(v7, v2);
    result = (*(v13 + 8))(v16, v11);
    *a1 = v22;
    *(a1 + 8) = v24;
    v25 = v27;
    *(a1 + 16) = v18;
    *(a1 + 24) = v25;
  }

  return result;
}

id sub_2169510F0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_21700E4D4();

  v5 = [a3 isBoolSettingLockedDownByRestrictions_];

  return v5;
}

uint64_t sub_21695114C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t get_enum_tag_for_layout_string_7MusicUI19PlaybackEligibilityO6StatusO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2169511BC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 16) = a1;
  sub_2167B7D58(a2, v2 + 24);
  v8 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;

  sub_21677BBA0();

  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v2;
}

uint64_t sub_2169512EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2166AB4A0;

  return sub_21695137C();
}

uint64_t sub_21695137C()
{
  *(v1 + 64) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  *(v1 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216951418, 0, 0);
}

uint64_t sub_216951418()
{
  OUTLINED_FUNCTION_33();
  type metadata accessor for UnifiedMessages.Coordinator();
  sub_21700D4D4();
  OUTLINED_FUNCTION_12_32();
  v1 = v0[7];
  v2 = OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_isEnabled;
  v0[10] = v1;
  v0[11] = v2;

  return MEMORY[0x2822009F8](sub_2169514A8, v1, 0);
}

uint64_t sub_2169514D0()
{
  v36 = v0;
  v1 = *(v0 + 96);
  if (v1 == 2 || (v1 & 1) == 0)
  {
    if (qword_280E416F8 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v25 = sub_217007CA4();
    __swift_project_value_buffer(v25, qword_280E73D20);
    v26 = sub_217007C84();
    v27 = sub_21700EDA4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v35 = v29;
      *v28 = 136315138;
      *(v28 + 4) = OUTLINED_FUNCTION_17_31("performAppLaunchRequestIfNeeded()", v32, v33);
      _os_log_impl(&dword_216679000, v26, v27, "💬 ┃ %s UM isn't enabled yet", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    sub_216951920();
  }

  else
  {
    v2 = *(v0 + 64);
    sub_2167B7D58(v2 + 24, v0 + 16);
    v3 = *(v0 + 40);
    v4 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
    v5 = (*(v4 + 40))(v3, v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
    if (qword_280E416F8 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v6 = v5 ^ 1;
    v7 = sub_217007CA4();
    __swift_project_value_buffer(v7, qword_280E73D20);

    v8 = sub_217007C84();
    v9 = sub_21700EDA4();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 64);
      v11 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v11 = 136315650;
      *(v11 + 4) = OUTLINED_FUNCTION_17_31("performAppLaunchRequestIfNeeded()", v32, v33);
      *(v11 + 12) = 2080;
      v34 = v6;
      v12 = *(v10 + 48);
      v13 = __swift_project_boxed_opaque_existential_1((v2 + 24), v12);
      v14 = *(v12 - 8);
      v15 = swift_task_alloc();
      (*(v14 + 16))(v15, v13, v12);
      v16 = sub_21700F784();
      v18 = v17;
      v19 = v12;
      v6 = v34;
      (*(v14 + 8))(v15, v19);

      v20 = sub_2166A85FC(v16, v18, &v35);

      *(v11 + 14) = v20;
      *(v11 + 22) = 1024;
      *(v11 + 24) = v34 & 1;
      _os_log_impl(&dword_216679000, v8, v9, "💬 ┃ %s self.sceneConnectionOptions = %s, hasStartedFromUserAction: %{BOOL}d", v11, 0x1Cu);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    v21 = *(v0 + 72);
    v22 = *(v0 + 64);
    *(v22 + 72) = 1;
    v23 = sub_21700EA74();
    __swift_storeEnumTagSinglePayload(v21, 1, 1, v23);
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    *(v24 + 24) = 0;
    *(v24 + 32) = v6 & 1;
    *(v24 + 40) = v22;

    sub_21677E228();
  }

  OUTLINED_FUNCTION_3();

  return v30();
}

void sub_216951920()
{
  if (!*(v0 + 64))
  {
    v1 = v0;
    if (qword_280E416F8 != -1)
    {
      swift_once();
    }

    v2 = sub_217007CA4();
    __swift_project_value_buffer(v2, qword_280E73D20);
    v3 = sub_217007C84();
    v4 = sub_21700EDA4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v9 = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_2166A85FC(0xD000000000000021, 0x80000002170851D0, &v9);
      _os_log_impl(&dword_216679000, v3, v4, "💬 ┃ Begin %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      MEMORY[0x21CEA1440](v6, -1, -1);
      MEMORY[0x21CEA1440](v5, -1, -1);
    }

    if (qword_280E29C40 != -1)
    {
      swift_once();
    }

    v7 = qword_280E739E0;
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    v8 = v7;

    *(v1 + 64) = sub_2166B9AD0(v8, 0, 1, 1, sub_216953C90, v1);
  }
}

uint64_t sub_216951B2C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 64) = a5;
  *(v5 + 248) = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  *(v5 + 72) = v6;
  *(v5 + 80) = *(v6 - 8);
  *(v5 + 88) = swift_task_alloc();
  v7 = sub_21700D2A4();
  *(v5 + 96) = v7;
  *(v5 + 104) = *(v7 - 8);
  *(v5 + 112) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  *(v5 + 120) = v8;
  *(v5 + 128) = *(v8 - 8);
  *(v5 + 136) = swift_task_alloc();
  v9 = sub_21700D3B4();
  *(v5 + 144) = v9;
  *(v5 + 152) = *(v9 - 8);
  *(v5 + 160) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89C0);
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216951D60, 0, 0);
}

uint64_t sub_216951D60()
{
  OUTLINED_FUNCTION_33();
  type metadata accessor for JSIntentDispatcher();
  v0[24] = OUTLINED_FUNCTION_24_22();
  OUTLINED_FUNCTION_12_32();
  v0[25] = v0[7];
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  v0[26] = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_15_28(v1);

  return sub_216A9C074(v3, v4, v5);
}

uint64_t sub_216951E08()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 216) = v0;

  if (v0)
  {
    v7 = sub_216952118;
  }

  else
  {
    v7 = sub_216951F08;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_216951F08()
{
  v6 = v1[21];
  v7 = v1[18];
  sub_216953AE4(v1[22], v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_21669987C(v1[21], &qword_27CAB89C0);
    v8 = v1[22];
    *(v1[8] + 72) = 0;
    sub_216952524();

    sub_21669987C(v8, &qword_27CAB89C0);

    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_7_3();

    __asm { BRAA            X1, X16 }
  }

  v11 = OUTLINED_FUNCTION_2_55();
  v12(v11);
  OUTLINED_FUNCTION_16_30();
  v13 = MEMORY[0x277D21D10];
  v1[5] = v2;
  v1[6] = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 2);
  (*(v5 + 16))(boxed_opaque_existential_1, v0, v2);
  (*(v3 + 104))(v24, *MEMORY[0x277D21E18], v4);
  type metadata accessor for ObjectGraph();

  v1[28] = sub_21700D4F4();
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  v1[29] = v15;
  *v15 = v16;
  OUTLINED_FUNCTION_10_35(v15);
  OUTLINED_FUNCTION_7_3();

  return MEMORY[0x28217F468](v17, v18, v19, v20, v21);
}

uint64_t sub_216952118()
{
  OUTLINED_FUNCTION_93();

  OUTLINED_FUNCTION_7_40();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_2169521B8()
{
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_69_0();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_28();
  *v8 = v7;
  *(v5 + 240) = v0;

  if (v0)
  {
    v9 = OUTLINED_FUNCTION_18_25();
    v10(v9);

    v11 = sub_216952424;
  }

  else
  {
    OUTLINED_FUNCTION_23_23();
    v12 = OUTLINED_FUNCTION_13_25();
    v13(v12);
    (*(v3 + 8))(0, v1);
    __swift_destroy_boxed_opaque_existential_1Tm(v5 + 16);
    v11 = sub_21695231C;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_21695231C()
{
  OUTLINED_FUNCTION_82_0();
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  (*(v0[16] + 8))(v0[17], v0[15]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[22];
  OUTLINED_FUNCTION_21_25();
  *(v0[8] + 72) = 0;
  sub_216952524();

  sub_21669987C(v4, &qword_27CAB89C0);

  OUTLINED_FUNCTION_3();

  return v5();
}

uint64_t sub_216952424()
{
  OUTLINED_FUNCTION_82_0();
  v1 = v0[22];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];

  v5 = OUTLINED_FUNCTION_13_25();
  v6(v5);
  (*(v3 + 8))(v2, v4);
  sub_21669987C(v1, &qword_27CAB89C0);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
  OUTLINED_FUNCTION_7_40();

  OUTLINED_FUNCTION_3();

  return v7();
}

void sub_216952524()
{
  v1 = v0;
  if (qword_280E416F8 != -1)
  {
    swift_once();
  }

  v2 = sub_217007CA4();
  __swift_project_value_buffer(v2, qword_280E73D20);
  v3 = sub_217007C84();
  v4 = sub_21700EDA4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_2166A85FC(0xD000000000000019, 0x80000002170851B0, &v10);
    _os_log_impl(&dword_216679000, v3, v4, "💬 ┃ Begin %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x21CEA1440](v6, -1, -1);
    MEMORY[0x21CEA1440](v5, -1, -1);
  }

  v7 = [objc_opt_self() defaultCenter];
  v8 = v7;
  if (qword_280E29CA0 != -1)
  {
    swift_once();
    v7 = v8;
  }

  [v7 addObserver:v1 selector:sel_handleSceneWillForegroundNotification_ name:qword_280E29CA8 object:{0, v8}];
}

void sub_2169526FC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14[-1] - v3;
  if (!sub_217005964())
  {
    v15 = 0u;
    v16 = 0u;
    goto LABEL_6;
  }

  *&v15 = 0x656C62616E457369;
  *(&v15 + 1) = 0xE900000000000064;
  sub_21700F364();
  sub_216934FBC();

  sub_216788110(v14);
  if (!*(&v16 + 1))
  {
LABEL_6:
    sub_21669987C(&v15, &unk_27CABF7A0);
    goto LABEL_7;
  }

  if (swift_dynamicCast())
  {
    v5 = LOBYTE(v14[0]);
    goto LABEL_8;
  }

LABEL_7:
  v5 = 0;
LABEL_8:
  if (qword_280E416F8 != -1)
  {
    swift_once();
  }

  v6 = sub_217007CA4();
  __swift_project_value_buffer(v6, qword_280E73D20);
  v7 = sub_217007C84();
  v8 = sub_21700EDA4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14[0] = v10;
    *v9 = 136446466;
    *(v9 + 4) = sub_2166A85FC(0xD00000000000001DLL, 0x8000000217085200, v14);
    *(v9 + 12) = 1024;
    *(v9 + 14) = v5;
    _os_log_impl(&dword_216679000, v7, v8, "💬 %{public}s isEnabled: %{BOOL}d", v9, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x21CEA1440](v10, -1, -1);
    MEMORY[0x21CEA1440](v9, -1, -1);
  }

  if (v5)
  {
    *(v1 + 64) = 0;

    v11 = sub_21700EA74();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v1;

    sub_21677BBA0();
  }
}

uint64_t sub_2169529E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2166AB4A4;

  return sub_21695137C();
}

void sub_216952A74(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v34[-v5];
  v7 = sub_217005974();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v34[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v1 + 72) != 1)
  {
    if (qword_280E416F8 != -1)
    {
      swift_once();
    }

    v15 = sub_217007CA4();
    __swift_project_value_buffer(v15, qword_280E73D20);
    v16 = sub_217007C84();
    v17 = sub_21700EDA4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_216679000, v16, v17, "💬 Reporting app badge action metrics.", v18, 2u);
      MEMORY[0x21CEA1440](v18, -1, -1);
    }

    v19 = [objc_allocWithZone(MEMORY[0x277D7FA50]) init];
    [v19 reportAppIconBadgeActionMetrics];

    (*(v8 + 16))(v10, a1, v7);
    v20 = sub_217007C84();
    v21 = sub_21700EDA4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37[0] = v36;
      *v22 = 136446466;
      *(v22 + 4) = sub_2166A85FC(0xD000000000000029, 0x8000000217085150, v37);
      *(v22 + 12) = 2080;
      v35 = v21;
      *&v38 = sub_217005964();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDB30);
      v23 = sub_21700E594();
      v24 = v6;
      v25 = v2;
      v27 = v26;
      (*(v8 + 8))(v10, v7);
      v28 = sub_2166A85FC(v23, v27, v37);
      v2 = v25;
      v6 = v24;

      *(v22 + 14) = v28;
      _os_log_impl(&dword_216679000, v20, v35, "💬 %{public}s Notification UserInfo: %s", v22, 0x16u);
      v29 = v36;
      swift_arrayDestroy();
      MEMORY[0x21CEA1440](v29, -1, -1);
      MEMORY[0x21CEA1440](v22, -1, -1);
    }

    else
    {

      (*(v8 + 8))(v10, v7);
    }

    if (sub_217005964())
    {
      *&v38 = 0xD000000000000018;
      *(&v38 + 1) = 0x8000000217085130;
      sub_21700F364();
      sub_216934FBC();

      sub_216788110(v37);
      if (*(&v39 + 1))
      {
        if (swift_dynamicCast())
        {
          v31 = v37[0];
LABEL_23:
          v32 = sub_21700EA74();
          __swift_storeEnumTagSinglePayload(v6, 1, 1, v32);
          v33 = swift_allocObject();
          *(v33 + 16) = 0;
          *(v33 + 24) = 0;
          *(v33 + 32) = v31;
          *(v33 + 40) = v2;

          sub_21677E228();

          return;
        }

LABEL_22:
        v31 = 0;
        goto LABEL_23;
      }
    }

    else
    {
      v38 = 0u;
      v39 = 0u;
    }

    sub_21669987C(&v38, &unk_27CABF7A0);
    goto LABEL_22;
  }

  if (qword_280E416F8 != -1)
  {
    swift_once();
  }

  v11 = sub_217007CA4();
  __swift_project_value_buffer(v11, qword_280E73D20);
  v36 = sub_217007C84();
  v12 = sub_21700EDA4();
  if (os_log_type_enabled(v36, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v37[0] = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_2166A85FC(0xD000000000000029, 0x8000000217085150, v37);
    _os_log_impl(&dword_216679000, v36, v12, "💬 %{public}s Skipping app launch request because we are already performing one.", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x21CEA1440](v14, -1, -1);
    MEMORY[0x21CEA1440](v13, -1, -1);
  }

  else
  {
    v30 = v36;
  }
}

uint64_t sub_21695309C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 64) = a5;
  *(v5 + 248) = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  *(v5 + 72) = v6;
  *(v5 + 80) = *(v6 - 8);
  *(v5 + 88) = swift_task_alloc();
  v7 = sub_21700D2A4();
  *(v5 + 96) = v7;
  *(v5 + 104) = *(v7 - 8);
  *(v5 + 112) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  *(v5 + 120) = v8;
  *(v5 + 128) = *(v8 - 8);
  *(v5 + 136) = swift_task_alloc();
  v9 = sub_21700D3B4();
  *(v5 + 144) = v9;
  *(v5 + 152) = *(v9 - 8);
  *(v5 + 160) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89C0);
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2169532D0, 0, 0);
}

uint64_t sub_2169532D0()
{
  OUTLINED_FUNCTION_33();
  type metadata accessor for JSIntentDispatcher();
  v0[24] = OUTLINED_FUNCTION_24_22();
  OUTLINED_FUNCTION_12_32();
  v0[25] = v0[7];
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  v0[26] = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_15_28(v1);

  return sub_216A9C46C(v3, v4, v5);
}

uint64_t sub_216953378()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 216) = v0;

  if (v0)
  {
    v7 = sub_216953D30;
  }

  else
  {
    v7 = sub_216953478;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_216953478()
{
  v6 = v1[21];
  v7 = v1[18];
  sub_216953AE4(v1[22], v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_21669987C(v1[22], &qword_27CAB89C0);

    v8 = v1[21];
    OUTLINED_FUNCTION_21_25();
    sub_21669987C(v8, &qword_27CAB89C0);

    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_7_3();

    __asm { BRAA            X1, X16 }
  }

  v11 = OUTLINED_FUNCTION_2_55();
  v12(v11);
  OUTLINED_FUNCTION_16_30();
  v13 = MEMORY[0x277D21D10];
  v1[5] = v2;
  v1[6] = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 2);
  (*(v5 + 16))(boxed_opaque_existential_1, v0, v2);
  (*(v3 + 104))(v24, *MEMORY[0x277D21E18], v4);
  type metadata accessor for ObjectGraph();

  v1[28] = sub_21700D4F4();
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  v1[29] = v15;
  *v15 = v16;
  OUTLINED_FUNCTION_10_35(v15);
  OUTLINED_FUNCTION_7_3();

  return MEMORY[0x28217F468](v17, v18, v19, v20, v21);
}

uint64_t sub_216953670()
{
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_69_0();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_28();
  *v8 = v7;
  *(v5 + 240) = v0;

  if (v0)
  {
    v9 = OUTLINED_FUNCTION_18_25();
    v10(v9);

    v11 = sub_216953D2C;
  }

  else
  {
    OUTLINED_FUNCTION_23_23();
    v12 = OUTLINED_FUNCTION_13_25();
    v13(v12);
    (*(v3 + 8))(0, v1);
    __swift_destroy_boxed_opaque_existential_1Tm(v5 + 16);
    v11 = sub_2169537D4;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_2169537D4()
{
  OUTLINED_FUNCTION_93();
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[15];
  v6 = v0[16];

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = v0[22];
  OUTLINED_FUNCTION_7_40();
  sub_21669987C(v7, &qword_27CAB89C0);

  OUTLINED_FUNCTION_3();

  return v8();
}

uint64_t sub_2169539B8()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);

  return v0;
}

uint64_t sub_2169539E8()
{
  sub_2169539B8();

  return MEMORY[0x2821FE8D8](v0, 73, 7);
}

uint64_t sub_216953A40()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_22_10();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_3_3(v4);

  return sub_21695309C(v6, v7, v8, v1, v2);
}

uint64_t sub_216953AE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216953B54()
{
  OUTLINED_FUNCTION_22_10();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_3(v1);

  return sub_2169512EC();
}

uint64_t sub_216953BEC()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_22_10();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_3_3(v4);

  return sub_216951B2C(v6, v7, v8, v1, v2);
}

uint64_t sub_216953C94()
{
  OUTLINED_FUNCTION_22_10();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_3(v1);

  return sub_2169529E4();
}

uint64_t sub_216953D34(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_216953E70(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_21695403C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v5[8] = *(a4 + 16);
  v5[9] = *(a4 + 24);
  v6 = type metadata accessor for PresentationItem.Destination();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[13] = AssociatedTypeWitness;
  v8 = sub_21700F164();
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = *(AssociatedTypeWitness - 8);
  v5[18] = OUTLINED_FUNCTION_84();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v9 = type metadata accessor for MusicAppDestination(0);
  v5[21] = v9;
  OUTLINED_FUNCTION_36(v9);
  v5[22] = OUTLINED_FUNCTION_84();
  v5[23] = swift_task_alloc();
  v10 = type metadata accessor for FlowAction(0);
  v5[24] = v10;
  OUTLINED_FUNCTION_36(v10);
  v5[25] = OUTLINED_FUNCTION_84();
  v5[26] = swift_task_alloc();
  v11 = type metadata accessor for ModalActionModelDestinations.Destination();
  v5[27] = v11;
  OUTLINED_FUNCTION_36(v11);
  v5[28] = OUTLINED_FUNCTION_84();
  v5[29] = swift_task_alloc();
  v12 = type metadata accessor for MusicAppDestinationContext(0);
  v5[30] = v12;
  OUTLINED_FUNCTION_36(v12);
  v5[31] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70C0);
  OUTLINED_FUNCTION_36(v13);
  v5[32] = OUTLINED_FUNCTION_84();
  v5[33] = swift_task_alloc();
  sub_21700EA34();
  v5[34] = sub_21700EA24();
  v15 = sub_21700E9B4();
  v5[35] = v15;
  v5[36] = v14;

  return MEMORY[0x2822009F8](sub_21695432C, v15, v14);
}

uint64_t sub_21695432C()
{
  v111 = v0;
  type metadata accessor for PresentSheetAction();
  OUTLINED_FUNCTION_10_36();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = *(v0 + 264);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v5 = *(v0 + 232);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v6 = *(v0 + 168);
      OUTLINED_FUNCTION_3_63();
      sub_2169556BC(v5, v2, v7);
      __swift_storeEnumTagSinglePayload(v2, 0, 1, v6);
      *(v3 + 32) = 0;
      *v3 = 0u;
      *(v3 + 16) = 0u;
      sub_217005EF4();
      OUTLINED_FUNCTION_38_2();
      __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    *(v3 + 32) = 0;
    *v3 = 0u;
    *(v3 + 16) = 0u;
    sub_217005EF4();
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
    v15 = type metadata accessor for ModalActionModelDestinations.Destination;
    v16 = v5;
  }

  else
  {
    v13 = *(v0 + 200);
    v12 = *(v0 + 208);
    v14 = *(v0 + 192);
    sub_2169556BC(v5, v12, type metadata accessor for FlowAction);
    sub_2168EC904(v2);
    sub_2169556BC(v12, v13, type metadata accessor for FlowAction);
    sub_2169557CC(v13 + *(v14 + 40), v3, &qword_27CABF7B0);
    sub_2169557CC(v13 + *(v14 + 32), v3 + *(v4 + 20), &qword_27CABA820);
    OUTLINED_FUNCTION_7_41();
    v16 = v13;
  }

  sub_21695576C(v16, v15);
LABEL_7:
  v25 = *(v0 + 256);
  v26 = *(v0 + 168);
  sub_2169557CC(*(v0 + 264), v25, &qword_27CAB70C0);
  if (__swift_getEnumTagSinglePayload(v25, 1, v26) == 1)
  {
    v27 = *(v0 + 256);

    sub_2167AF7F4(v27);
    goto LABEL_11;
  }

  v29 = *(v0 + 176);
  v28 = *(v0 + 184);
  v30 = *(v0 + 128);
  v31 = *(v0 + 104);
  OUTLINED_FUNCTION_3_63();
  sub_2169556BC(v32, v28, v33);
  OUTLINED_FUNCTION_8_37();
  sub_216955714(v28, v29, v34);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 16))(v29, v31, AssociatedConformanceWitness);
  if (__swift_getEnumTagSinglePayload(v30, 1, v31) == 1)
  {
    OUTLINED_FUNCTION_0_86();
    sub_21695576C(v36, v37);

    v38 = OUTLINED_FUNCTION_116();
    v39(v38);
LABEL_11:
    OUTLINED_FUNCTION_10_36();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v79 = *(v0 + 264);
        v80 = *(v0 + 248);
        v81 = *(v0 + 168);
        v82 = *(v0 + 176);
        OUTLINED_FUNCTION_3_63();
        sub_2169556BC(v83, v82, v84);
        type metadata accessor for PresentSheetActionImplementation.Error();
        OUTLINED_FUNCTION_9_39();
        OUTLINED_FUNCTION_3_0();
        v86 = v85;
        OUTLINED_FUNCTION_8_37();
        sub_216955714(v82, v87, v88);
        __swift_storeEnumTagSinglePayload(v86, 0, 1, v81);
        swift_willThrow();
        OUTLINED_FUNCTION_0_86();
        sub_21695576C(v82, v89);
        goto LABEL_25;
      case 2u:
      case 3u:
      case 5u:
        OUTLINED_FUNCTION_2_56();
        swift_storeEnumTagMultiPayload();

        sub_216AF3510();

        v90 = OUTLINED_FUNCTION_116();
        v91(v90);
        goto LABEL_22;
      case 4u:
        v75 = **(v0 + 224);
        **(v0 + 96) = v75;
        OUTLINED_FUNCTION_116();
        swift_storeEnumTagMultiPayload();
        v76 = v75;
        sub_216AF3DB0();

        v77 = OUTLINED_FUNCTION_116();
        v78(v77);
        goto LABEL_22;
      case 6u:
        v79 = *(v0 + 264);
        v80 = *(v0 + 248);
        v98 = *(v0 + 168);
        type metadata accessor for PresentSheetActionImplementation.Error();
        OUTLINED_FUNCTION_9_39();
        OUTLINED_FUNCTION_3_0();
        OUTLINED_FUNCTION_38_2();
        __swift_storeEnumTagSinglePayload(v99, v100, v101, v98);
        swift_willThrow();
LABEL_25:
        sub_21695576C(v80, type metadata accessor for MusicAppDestinationContext);
        sub_2167AF7F4(v79);
        OUTLINED_FUNCTION_14_28();

        OUTLINED_FUNCTION_3();
        goto LABEL_26;
      default:
        v40 = *(v0 + 208);
        v42 = *(v0 + 88);
        v41 = *(v0 + 96);
        v43 = *(v0 + 80);
        sub_2169556BC(*(v0 + 224), v40, type metadata accessor for FlowAction);
        v44 = OUTLINED_FUNCTION_116();
        sub_216955714(v44, v45, v46);
        swift_storeEnumTagMultiPayload();
        sub_216AF3510();
        (*(v42 + 8))(v41, v43);
        OUTLINED_FUNCTION_7_41();
        sub_21695576C(v40, v47);
LABEL_22:
        v92 = *(v0 + 264);
        OUTLINED_FUNCTION_1_70();
        sub_21695576C(v93, v94);
        sub_2167AF7F4(v92);
        break;
    }

    goto LABEL_23;
  }

  v48 = *(v0 + 104);
  (*(*(v0 + 136) + 32))(*(v0 + 160), *(v0 + 128), v48);
  if (((*(AssociatedConformanceWitness + 24))(v48, AssociatedConformanceWitness) & 1) == 0)
  {
    v66 = *(v0 + 248);
    v107 = *(v0 + 184);
    v109 = *(v0 + 264);
    v67 = *(v0 + 160);
    v68 = *(v0 + 136);
    v70 = *(v0 + 96);
    v69 = *(v0 + 104);
    v72 = *(v0 + 80);
    v71 = *(v0 + 88);

    (*(v68 + 16))(v70, v67, v69);
    swift_storeEnumTagMultiPayload();
    sub_216AF3510();
    (*(v71 + 8))(v70, v72);
    (*(v68 + 8))(v67, v69);
    OUTLINED_FUNCTION_0_86();
    sub_21695576C(v107, v73);
    OUTLINED_FUNCTION_1_70();
    sub_21695576C(v66, v74);
    sub_2167AF7F4(v109);
LABEL_23:
    sub_21700D2A4();
    OUTLINED_FUNCTION_9();
    v95 = OUTLINED_FUNCTION_38();
    v96(v95);
    OUTLINED_FUNCTION_5_44();

    OUTLINED_FUNCTION_3();
LABEL_26:

    return v97();
  }

  if (qword_27CAB5AA0 != -1)
  {
    swift_once();
  }

  v49 = *(v0 + 136);
  v50 = sub_217007CA4();
  __swift_project_value_buffer(v50, qword_27CABDB38);
  v51 = *(v49 + 16);
  v52 = OUTLINED_FUNCTION_8();
  v51(v52);
  v53 = sub_217007C84();
  v54 = sub_21700EDA4();
  v55 = os_log_type_enabled(v53, v54);
  v56 = *(v0 + 152);
  if (v55)
  {
    v57 = *(v0 + 136);
    v58 = *(v0 + 144);
    v59 = *(v0 + 104);
    v60 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v110 = v108;
    *v60 = 136446210;
    (v51)(v58, v56, v59);
    v61 = sub_21700E594();
    v63 = v62;
    v64 = *(v57 + 8);
    v64(v56, v59);
    v65 = sub_2166A85FC(v61, v63, &v110);

    *(v60 + 4) = v65;
    _os_log_impl(&dword_216679000, v53, v54, "Delegating sheet presentation to app: %{public}s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v108);
    MEMORY[0x21CEA1440](v108, -1, -1);
    MEMORY[0x21CEA1440](v60, -1, -1);
  }

  else
  {
    v103 = *(v0 + 136);
    v104 = *(v0 + 104);

    v64 = *(v103 + 8);
    v64(v56, v104);
  }

  *(v0 + 296) = v64;
  v105 = type metadata accessor for PopoverBubbleTipRequestManager(0);
  v106 = swift_task_alloc();
  *(v0 + 304) = v106;
  *v106 = v0;
  v106[1] = sub_216954D88;

  return MEMORY[0x28217F210](v0 + 16, v105, v105);
}

uint64_t sub_216954D88()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  v3 = *(v2 + 288);
  v4 = *(v2 + 280);
  if (v0)
  {
    v5 = sub_216955318;
  }

  else
  {
    v5 = sub_216954EC4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_216954EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_15();
  v23 = v18[2];
  v18[40] = v23;
  if (v23)
  {
    v24 = swift_task_alloc();
    v18[41] = v24;
    *v24 = v18;
    v24[1] = sub_216955094;
    OUTLINED_FUNCTION_13_2();

    return sub_216A57580();
  }

  else
  {

    v27 = OUTLINED_FUNCTION_6_40();
    v28(v27);
    v22(v20, v21);
    OUTLINED_FUNCTION_0_86();
    sub_21695576C(v19, v29);
    OUTLINED_FUNCTION_1_70();
    sub_21695576C(v17, v30);
    sub_2167AF7F4(v16);
    sub_21700D2A4();
    OUTLINED_FUNCTION_9();
    v31 = OUTLINED_FUNCTION_38();
    v32(v31);
    OUTLINED_FUNCTION_5_44();

    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_13_2();

    return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_216955094()
{
  v1 = *v0;

  v2 = *(v1 + 288);
  v3 = *(v1 + 280);

  return MEMORY[0x2822009F8](sub_2169551B4, v3, v2);
}

uint64_t sub_2169551B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_15();

  v22 = OUTLINED_FUNCTION_6_40();
  v23(v22);
  v21(v19, v20);
  OUTLINED_FUNCTION_0_86();
  sub_21695576C(v18, v24);
  OUTLINED_FUNCTION_1_70();
  sub_21695576C(v17, v25);
  sub_2167AF7F4(v16);
  sub_21700D2A4();
  OUTLINED_FUNCTION_9();
  v26 = OUTLINED_FUNCTION_38();
  v27(v26);
  OUTLINED_FUNCTION_5_44();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_13_2();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_216955318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_15();
  v17 = v16[37];
  v18 = v16[33];
  v19 = v16[31];
  v20 = v16[23];
  v21 = v16[20];
  v22 = v16[13];

  v17(v21, v22);
  OUTLINED_FUNCTION_0_86();
  sub_21695576C(v20, v23);
  OUTLINED_FUNCTION_1_70();
  sub_21695576C(v19, v24);
  sub_2167AF7F4(v18);
  OUTLINED_FUNCTION_14_28();
  v35 = v16[19];
  v36 = v16[18];
  v37 = v16[16];
  v38 = v16[12];
  v39 = v25;

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_13_2();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, v35, v36, v37, v38, v39, a14, a15, a16);
}

uint64_t sub_216955460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2167AF644;

  return sub_21695403C(a1, a2, a3, a4);
}

uint64_t sub_216955520(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216955560()
{
  result = qword_280E3EA78[0];
  if (!qword_280E3EA78[0])
  {
    type metadata accessor for PresentSheetAction();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E3EA78);
  }

  return result;
}

uint64_t sub_2169555B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_216ED7B54(a1, a2, a3, WitnessTable);
}

uint64_t sub_216955624()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CABDB38);
  __swift_project_value_buffer(v0, qword_27CABDB38);
  return sub_217007C94();
}

uint64_t sub_2169556BC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216955714(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_21695576C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2169557CC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_9();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t _s13ActionContextOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for BootstrapInterval(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2169559A4()
{
  result = qword_27CABDBD0;
  if (!qword_27CABDBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABDBD0);
  }

  return result;
}

uint64_t sub_216955A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 56) + **(a7 + 56));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_2167AF644;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_216955B7C()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_1_71();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_6_41(v1);
  OUTLINED_FUNCTION_7_42();
  OUTLINED_FUNCTION_2_57();
  *v0 = v2;
  OUTLINED_FUNCTION_0_87();
  OUTLINED_FUNCTION_12_7();

  return sub_216955C1C(v3, v4, v5, v6, v7);
}

uint64_t sub_216955C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6[8] = type metadata accessor for CatalogPagePresenter.State();
  v7 = sub_21700F164();
  v6[9] = v7;
  OUTLINED_FUNCTION_2(v7);
  v6[10] = v8;
  v6[11] = OUTLINED_FUNCTION_80();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[12] = AssociatedTypeWitness;
  v10 = sub_21700F164();
  v6[13] = v10;
  OUTLINED_FUNCTION_2(v10);
  v6[14] = v11;
  v6[15] = OUTLINED_FUNCTION_80();
  v6[16] = *(AssociatedTypeWitness - 8);
  v6[17] = OUTLINED_FUNCTION_80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BE8);
  v6[18] = OUTLINED_FUNCTION_80();
  v12 = sub_217006A94();
  v6[19] = v12;
  OUTLINED_FUNCTION_2(v12);
  v6[20] = v13;
  v6[21] = OUTLINED_FUNCTION_80();
  sub_21700EA34();
  v6[22] = sub_21700EA24();
  v15 = sub_21700E9B4();
  v6[23] = v15;
  v6[24] = v14;

  return MEMORY[0x2822009F8](sub_216955EB4, v15, v14);
}

uint64_t sub_216955EB4()
{
  if (((*(v0[6] + 48))(v0[3], v0[5]) & 1) == 0)
  {
    v6 = v0[2];

    v7 = *MEMORY[0x277D21CA0];
    v8 = sub_21700D2A4();
    (*(*(v8 - 8) + 104))(v6, v7, v8);
    OUTLINED_FUNCTION_10_37();

    OUTLINED_FUNCTION_3();
LABEL_11:

    return v9();
  }

  v2 = v0[18];
  v1 = v0[19];
  v3 = *(v0[6] + 40);
  (v3)(v0[5]);

  sub_217006964();

  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v4 = v0[18];

    sub_216913EB0(v4);
    sub_2169567C4();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();
LABEL_10:
    OUTLINED_FUNCTION_11_32();

    OUTLINED_FUNCTION_3();
    goto LABEL_11;
  }

  v10 = v0[11];
  v11 = v0[8];
  v13 = v0[5];
  v12 = v0[6];
  (*(v0[20] + 32))(v0[21], v0[18], v0[19]);
  v3(v13, v12);
  sub_216A40254();

  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    v14 = v0[15];
    v16 = v0[11];
    v15 = v0[12];
    v17 = v0[9];
    v18 = v0[10];

    (*(v18 + 8))(v16, v17);
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
LABEL_9:
    v24 = v0[20];
    v23 = v0[21];
    v25 = v0[19];
    (*(v0[14] + 8))(v0[15], v0[13]);
    sub_2169567C4();
    swift_allocError();
    *v26 = 1;
    swift_willThrow();
    (*(v24 + 8))(v23, v25);
    goto LABEL_10;
  }

  v19 = v0[15];
  v20 = v0[11];
  v21 = v0[12];
  v22 = v0[8];
  sub_216A404D8(v22);
  (*(*(v22 - 8) + 8))(v20, v22);
  if (__swift_getEnumTagSinglePayload(v19, 1, v21) == 1)
  {

    goto LABEL_9;
  }

  v37 = v0[6];
  (*(v0[16] + 32))(v0[17], v0[15], v0[12]);
  v36 = (*(v37 + 56) + **(v37 + 56));
  v28 = swift_task_alloc();
  v0[25] = v28;
  *v28 = v0;
  v28[1] = sub_216956340;
  v29 = v0[21];
  v30 = v0[17];
  v31 = v0[6];
  v32 = v0[4];
  v33 = v0[5];
  v34 = v0[2];
  v35 = v0[3];

  return v36(v34, v35, v29, v30, v32, v33, v31);
}

uint64_t sub_216956340()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 192);
  v4 = *(v2 + 184);
  if (v0)
  {
    v5 = sub_216956530;
  }

  else
  {
    v5 = sub_21695647C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21695647C()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_9_40();
  (*(v5 + 8))(v2, v3);
  (*(v4 + 8))(v1, v0);
  OUTLINED_FUNCTION_10_37();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_7();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_216956530()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_9_40();
  (*(v5 + 8))(v2, v3);
  (*(v4 + 8))(v1, v0);
  OUTLINED_FUNCTION_11_32();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_7();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_2169565E4()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_1_71();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_6_41(v1);
  OUTLINED_FUNCTION_7_42();
  OUTLINED_FUNCTION_2_57();
  *v0 = v2;
  OUTLINED_FUNCTION_0_87();
  OUTLINED_FUNCTION_12_7();

  return sub_216955C1C(v3, v4, v5, v6, v7);
}

uint64_t sub_216956684()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_1_71();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_6_41(v1);
  OUTLINED_FUNCTION_7_42();
  OUTLINED_FUNCTION_2_57();
  *v0 = v2;
  OUTLINED_FUNCTION_0_87();
  OUTLINED_FUNCTION_12_7();

  return sub_216955C1C(v3, v4, v5, v6, v7);
}

uint64_t sub_216956724()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_1_71();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_6_41(v1);
  OUTLINED_FUNCTION_7_42();
  OUTLINED_FUNCTION_2_57();
  *v0 = v2;
  OUTLINED_FUNCTION_0_87();
  OUTLINED_FUNCTION_12_7();

  return sub_216955C1C(v3, v4, v5, v6, v7);
}

unint64_t sub_2169567C4()
{
  result = qword_27CABDBD8;
  if (!qword_27CABDBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABDBD8);
  }

  return result;
}

uint64_t sub_216956818()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_1_71();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_6_41(v1);
  OUTLINED_FUNCTION_7_42();
  OUTLINED_FUNCTION_2_57();
  *v0 = v2;
  OUTLINED_FUNCTION_0_87();
  OUTLINED_FUNCTION_12_7();

  return sub_216955C1C(v3, v4, v5, v6, v7);
}

_BYTE *storeEnumTagSinglePayload for MappingActionImplementationError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_216956998()
{
  result = qword_27CABDBE0;
  if (!qword_27CABDBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABDBE0);
  }

  return result;
}

uint64_t sub_216956A3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v164 = a2;
  v167 = a3;
  v5 = type metadata accessor for ContentDescriptor();
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_6_0();
  v156 = v6;
  v7 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v155 = v11;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_19_27();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v145 = v17;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6_4();
  v146 = v19;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_6_4();
  v147 = v21;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6_4();
  v149 = v23;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_6_4();
  v148 = v25;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_6_4();
  v154 = v27;
  OUTLINED_FUNCTION_3_1();
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v144 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v144 - v32;
  sub_21700D7A4();
  v153 = 0xD000000000000011;
  sub_21700CE04();
  v160 = v9;
  v35 = *(v9 + 16);
  v34 = v9 + 16;
  v163 = v7;
  v158 = v35;
  v35(v3, v164, v7);
  v150 = v33;
  v151 = v3;
  v36 = a1;
  sub_21700D734();
  sub_21700CE04();
  v37 = sub_21700CDB4();
  v39 = v38;
  v40 = v31;
  v41 = *(v15 + 8);
  v161 = v15 + 8;
  v162 = v13;
  v41(v40, v13);
  v159 = v39;
  if (!v39)
  {
    sub_21700E2E4();
    LODWORD(v42) = v41;
    OUTLINED_FUNCTION_0_88();
    sub_216957C54(v62, v63);
    LODWORD(v45) = OUTLINED_FUNCTION_4();
    v65 = v64;
    v66 = type metadata accessor for SocialProfileEditorHeaderLockup(0);
    *v65 = 25705;
    v65[1] = 0xE200000000000000;
    v65[2] = v66;
    OUTLINED_FUNCTION_50();
    (*(v67 + 104))(v65);
    swift_willThrow();
    v58 = 0;
    OUTLINED_FUNCTION_10_38();
    v61 = v167;
    v55 = v36;
    v57 = v163;
    v59 = v164;
    goto LABEL_16;
  }

  v152 = type metadata accessor for SocialProfileEditorHeaderLockup(0);
  v165 = v37;
  v166 = v39;
  v42 = v167;
  sub_21700F364();
  OUTLINED_FUNCTION_17_5();
  v13 = v154;
  sub_21700CE04();
  v43 = v155;
  v45 = v163;
  v44 = v164;
  v158(v155, v164, v163);
  v47 = v156;
  v46 = v157;
  ContentDescriptor.init(deserializing:using:)(v13, v43, v48, v49, v50, v51, v52, v53, v144, v145, SWORD2(v145), SBYTE6(v145), SHIBYTE(v145));
  v54 = v42;
  v55 = v36;
  v56 = v44;
  v57 = v45;
  if (v46)
  {
    v58 = 0;
    OUTLINED_FUNCTION_10_38();
    v61 = v60;
    goto LABEL_16;
  }

  v154 = 0;
  v155 = v34;
  v68 = v152;
  v69 = v42 + *(v152 + 24);
  v70 = v56;
  v71 = v54;
  sub_2168ED900(v47, v69);
  type metadata accessor for Artwork();
  v45 = v55;
  v72 = v68;
  v157 = v41;
  v73 = v150;
  sub_21700CE04();
  v158(v151, v70, v57);
  sub_216957C54(&qword_280E2BF60, type metadata accessor for Artwork);
  sub_21700D734();
  sub_21700CE04();
  v74 = sub_21700CDB4();
  v76 = v75;
  LODWORD(v13) = v161;
  v77 = v162;
  v78 = v157;
  v157(v73, v162);
  v79 = (v71 + v72[7]);
  *v79 = v74;
  v79[1] = v76;
  sub_21700CE04();
  v80 = sub_21700CDB4();
  v82 = v81;
  v83 = OUTLINED_FUNCTION_12_33();
  v78(v83);
  v84 = (v71 + v72[8]);
  *v84 = v80;
  v84[1] = v82;
  sub_21700CE04();
  LOBYTE(v80) = sub_21700CD44();
  v85 = OUTLINED_FUNCTION_12_33();
  v86 = v78;
  v78(v85);
  *(v71 + v72[9]) = v80;
  v87 = v148;
  sub_21700CE04();
  LOBYTE(v80) = sub_21700CD44();
  v86(v87, v77);
  v88 = v72[10];
  v55 = v45;
  LODWORD(v45) = 1415933044;
  *(v71 + v88) = v80 & 1;
  v42 = v149;
  sub_21700CE04();
  v89 = sub_21700CDB4();
  v91 = v90;
  v86(v42, v77);
  if (!v91)
  {
    sub_21700E2E4();
    OUTLINED_FUNCTION_0_88();
    sub_216957C54(v123, v124);
    OUTLINED_FUNCTION_4();
    *v125 = 0x6954726564616568;
    v125[1] = 0xEF74786554656C74;
    v125[2] = v152;
    OUTLINED_FUNCTION_50();
    (*(v126 + 104))();
    swift_willThrow();
    OUTLINED_FUNCTION_10_38();
    v58 = 1;
LABEL_14:
    v57 = v163;
    v59 = v164;
    v41 = v157;
    goto LABEL_15;
  }

  v92 = v55;
  v93 = v152;
  OUTLINED_FUNCTION_17_32();
  *v94 = v89;
  v94[1] = v91;
  v95 = v147;
  sub_21700CE04();
  v96 = sub_21700CDB4();
  v98 = v97;
  v157(v95, v77);
  if (v98)
  {
    OUTLINED_FUNCTION_17_32();
    *v99 = v96;
    v99[1] = v98;
    v100 = v146;
    sub_21700CE04();
    v101 = sub_21700CDB4();
    v103 = v102;
    v157(v100, v77);
    v55 = v92;
    if (v103)
    {
      OUTLINED_FUNCTION_17_32();
      *v104 = v101;
      v104[1] = v103;
      sub_21700CE04();
      v105 = sub_21700CDB4();
      v107 = v106;
      v108 = OUTLINED_FUNCTION_12_33();
      (v157)(v108);
      if (v107)
      {
        v109 = v152;
        OUTLINED_FUNCTION_17_32();
        *v110 = v105;
        v110[1] = v107;
        v111 = v150;
        sub_21700CE04();
        v112 = v163;
        v113 = v164;
        v158(v151, v164, v163);
        sub_216AC6B88();
        v114 = v167;
        *(v167 + *(v109 + 60)) = v115;
        OUTLINED_FUNCTION_17_5();
        sub_21700CE04();
        v116 = sub_21700CDB4();
        v118 = v117;
        (*(v160 + 8))(v113, v112);
        v119 = OUTLINED_FUNCTION_12_33();
        v120 = v157;
        (v157)(v119);
        result = v120(v111, v77);
        v122 = (v114 + *(v152 + 68));
        *v122 = v116;
        v122[1] = v118;
        return result;
      }

      sub_21700E2E4();
      OUTLINED_FUNCTION_0_88();
      sub_216957C54(v136, v137);
      v138 = OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_11_33(v138, v139);
      OUTLINED_FUNCTION_9_7();
      (*(v140 + 104))();
      swift_willThrow();
      v58 = 1;
      LODWORD(v45) = 1;
      LODWORD(v13) = 1;
      LODWORD(v42) = 1;
    }

    else
    {
      sub_21700E2E4();
      OUTLINED_FUNCTION_0_88();
      sub_216957C54(v131, v132);
      v133 = OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_11_33(v133, v134);
      OUTLINED_FUNCTION_9_7();
      (*(v135 + 104))();
      swift_willThrow();
      LODWORD(v42) = 0;
      v58 = 1;
      LODWORD(v45) = 1;
      LODWORD(v13) = 1;
    }

    goto LABEL_14;
  }

  sub_21700E2E4();
  OUTLINED_FUNCTION_0_88();
  sub_216957C54(v127, v128);
  OUTLINED_FUNCTION_3_0();
  *v129 = 0xD000000000000016;
  v129[1] = 0x8000000217085220;
  v129[2] = v93;
  OUTLINED_FUNCTION_9_7();
  (*(v130 + 104))();
  swift_willThrow();
  LODWORD(v13) = 0;
  LODWORD(v42) = 0;
  v58 = 1;
  LODWORD(v45) = 1;
  v57 = v163;
  v59 = v164;
  v41 = v157;
  v55 = v92;
LABEL_15:
  v61 = v167;
LABEL_16:
  (*(v160 + 8))(v59, v57);
  v41(v55, v162);
  result = sub_216699820(v61, &qword_27CAB6D58);
  if (v159)
  {
    v141 = type metadata accessor for SocialProfileEditorHeaderLockup(0);
    result = sub_216788110(v61 + *(v141 + 20));
  }

  if (v58)
  {
    v142 = type metadata accessor for SocialProfileEditorHeaderLockup(0);
    sub_2168F3F20(v61 + *(v142 + 24));
    OUTLINED_FUNCTION_13_27();
    result = OUTLINED_FUNCTION_13_27();
    if (!v45)
    {
      goto LABEL_20;
    }
  }

  else if (!v45)
  {
LABEL_20:
    if (v13)
    {
      goto LABEL_21;
    }

    goto LABEL_27;
  }

  type metadata accessor for SocialProfileEditorHeaderLockup(0);
  result = OUTLINED_FUNCTION_13_27();
  if (v13)
  {
LABEL_21:
    type metadata accessor for SocialProfileEditorHeaderLockup(0);
    result = OUTLINED_FUNCTION_13_27();
    if (!v42)
    {
      goto LABEL_22;
    }

    goto LABEL_28;
  }

LABEL_27:
  if (!v42)
  {
LABEL_22:
    if (!v58)
    {
      return result;
    }

    goto LABEL_23;
  }

LABEL_28:
  type metadata accessor for SocialProfileEditorHeaderLockup(0);
  result = OUTLINED_FUNCTION_13_27();
  if (!v58)
  {
    return result;
  }

LABEL_23:
  v143 = type metadata accessor for SocialProfileEditorHeaderLockup(0);
  return sub_216699820(v61 + *(v143 + 64), &qword_27CAB6D60);
}

uint64_t sub_216957714@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a2;
  v63 = a3;
  v5 = type metadata accessor for ContentDescriptor();
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_6_0();
  v57 = v6;
  v7 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v56 = v11;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v12);
  v62 = OUTLINED_FUNCTION_19_27();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_0();
  v53 = v16;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_6_4();
  v55 = v18;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v19);
  v21 = &v52 - v20;
  MEMORY[0x28223BE20](v22);
  sub_21700D7A4();
  OUTLINED_FUNCTION_17_5();
  sub_21700CE04();
  v60 = v9;
  v61 = v7;
  v54 = *(v9 + 16);
  v54(v3, v66, v7);
  OUTLINED_FUNCTION_12_33();
  sub_21700D734();
  sub_21700CE04();
  v23 = sub_21700CDB4();
  v25 = v24;
  v26 = *(v14 + 8);
  v59 = v14 + 8;
  v26(v21, v62);
  if (v25)
  {
    v27 = type metadata accessor for SocialProfileEditorPlaylistLockup(0);
    v64 = v23;
    v65 = v25;
    v28 = v63;
    sub_21700F364();
    OUTLINED_FUNCTION_17_5();
    v29 = v55;
    sub_21700CE04();
    v30 = v56;
    v31 = v66;
    v54(v56, v66, v61);
    v33 = v57;
    v32 = v58;
    ContentDescriptor.init(deserializing:using:)(v29, v30, v34, v35, v36, v37, v38, v39, v52, v53, SWORD2(v53), SBYTE6(v53), SHIBYTE(v53));
    if (!v32)
    {
      sub_2168ED900(v33, v28 + *(v27 + 28));
      v40 = v53;
      v41 = v31;
      sub_21700CE04();
      v42 = sub_21700CD44();
      (*(v60 + 8))(v41, v61);
      v43 = v62;
      v26(a1, v62);
      result = (v26)(v40, v43);
      *(v28 + *(v27 + 24)) = v42 & 1;
      return result;
    }
  }

  else
  {
    sub_21700E2E4();
    OUTLINED_FUNCTION_0_88();
    sub_216957C54(v45, v46);
    OUTLINED_FUNCTION_3_0();
    v48 = v47;
    v49 = type metadata accessor for SocialProfileEditorPlaylistLockup(0);
    *v48 = 25705;
    v48[1] = 0xE200000000000000;
    v48[2] = v49;
    OUTLINED_FUNCTION_9_7();
    (*(v50 + 104))(v48);
    swift_willThrow();
    v28 = v63;
    v31 = v66;
  }

  (*(v60 + 8))(v31, v61);
  v26(a1, v62);
  result = sub_216699820(v28, &qword_27CAB6D58);
  if (v25)
  {
    v51 = type metadata accessor for SocialProfileEditorPlaylistLockup(0);
    return sub_216788110(v28 + *(v51 + 20));
  }

  return result;
}

uint64_t sub_216957C54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216957CEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v17 - v9;
  (*(a2 + 40))(a1, a2, v8);
  v11 = type metadata accessor for ContentDescriptor();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_216697664(v10, &qword_27CAB6A00);
    sub_217006924();
    v12 = OUTLINED_FUNCTION_27_22();
    return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  }

  else
  {
    sub_216C6C5E8(a3);
    return sub_21695BD2C(v10, type metadata accessor for ContentDescriptor);
  }
}

uint64_t sub_216957E04@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6F00);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDC18);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  sub_216957FEC();
  v10 = type metadata accessor for PlayAction();
  if (__swift_getEnumTagSinglePayload(v5, 1, v10) == 1)
  {
    v11 = &qword_27CAB6F00;
    v12 = v5;
LABEL_6:
    sub_216697664(v12, v11);
    goto LABEL_7;
  }

  v13 = *&v5[*(v10 + 20)];
  sub_21700DF14();
  OUTLINED_FUNCTION_0_89();
  sub_21695BD2C(v5, v14);
  if (v13)
  {
    sub_216CE0898(v13, v9);

    v15 = type metadata accessor for PlayActionItem();
    if (__swift_getEnumTagSinglePayload(v9, 1, v15) != 1)
    {
      sub_216681B04(&v9[*(v15 + 24)], a1, &qword_27CAB6A00);
      return sub_21695BD2C(v9, type metadata accessor for PlayActionItem);
    }

    v11 = &qword_27CABDC18;
    v12 = v9;
    goto LABEL_6;
  }

LABEL_7:
  type metadata accessor for ContentDescriptor();
  v16 = OUTLINED_FUNCTION_27_22();
  return __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
}

void sub_216957FEC()
{
  OUTLINED_FUNCTION_49();
  v7 = v6;
  v40 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89C0);
  OUTLINED_FUNCTION_36(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - v11;
  sub_21700D3B4();
  OUTLINED_FUNCTION_10_39();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6F00);
  OUTLINED_FUNCTION_36(v18);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_55_1();
  type metadata accessor for PlayAction();
  OUTLINED_FUNCTION_14_29();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_7_44();
  MEMORY[0x28223BE20](v21);
  v22 = OUTLINED_FUNCTION_57();
  v23 = *(v7(v22) + 40);
  sub_216681B04(v0 + v23, v43, &qword_27CAB6DB0);
  if (v44)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68);
    OUTLINED_FUNCTION_53_12();
    v24 = OUTLINED_FUNCTION_45_17();
    OUTLINED_FUNCTION_43_18(v4, v24 ^ 1u);
    OUTLINED_FUNCTION_12_4(v4);
    if (!v25)
    {
      sub_21695BCCC(v4, v5, type metadata accessor for PlayAction);
      OUTLINED_FUNCTION_54_13(v5);
      v26 = v14;
      v27 = 0;
LABEL_15:
      OUTLINED_FUNCTION_43_18(v26, v27);
      OUTLINED_FUNCTION_26();
      return;
    }
  }

  else
  {
    sub_216697664(v43, &qword_27CAB6DB0);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v1);
  }

  sub_216697664(v4, &qword_27CAB6F00);
  sub_216681B04(v0 + v23, v43, &qword_27CAB6DB0);
  if (!v44)
  {
    sub_216697664(v43, &qword_27CAB6DB0);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v2);
LABEL_13:
    sub_216697664(v12, &qword_27CAB89C0);
LABEL_14:
    v26 = v40;
    v27 = 1;
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68);
  v31 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v12, v31 ^ 1u, 1, v2);
  if (__swift_getEnumTagSinglePayload(v12, 1, v2) == 1)
  {
    goto LABEL_13;
  }

  (*(v14 + 32))(v17, v12, v2);
  v32 = sub_21700D384();
  v33 = 0;
  v34 = *(v32 + 16);
  for (i = v32 + 32; ; i += 40)
  {
    if (v34 == v33)
    {
      (*(v14 + 8))(v17, v2);

      goto LABEL_14;
    }

    if (v33 >= *(v32 + 16))
    {
      break;
    }

    sub_2167B7D58(i, v42);
    sub_2167B7D58(v42, &v41);
    if (OUTLINED_FUNCTION_45_17())
    {
      (*(v14 + 8))(v17, v2);

      OUTLINED_FUNCTION_0_89();
      sub_21695BD2C(v3, v39);
      OUTLINED_FUNCTION_47_16();
      v27 = OUTLINED_FUNCTION_45_17() ^ 1;
      v26 = v14 + 8;
      goto LABEL_15;
    }

    ++v33;
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
  }

  __break(1u);
}

void sub_2169583F4()
{
  OUTLINED_FUNCTION_49();
  v46 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89C0);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_30_21();
  OUTLINED_FUNCTION_10_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_9_41(v11, v43);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6F00);
  v13 = OUTLINED_FUNCTION_36(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7_44();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_17_33();
  type metadata accessor for PlayAction();
  OUTLINED_FUNCTION_14_29();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_42(v16, v44);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_15_30();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_19_28();
  v19 = type metadata accessor for VerticalVideoLockup();
  v20 = *(v19 + 56);
  OUTLINED_FUNCTION_46_15(v19, v21, &qword_27CAB6DB0);
  if (v48)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68);
    v22 = OUTLINED_FUNCTION_26_24();
    OUTLINED_FUNCTION_5_45(v22);
    if (!v23)
    {
      OUTLINED_FUNCTION_1_72();
      sub_21695BCCC(v0, v5, v24);
      OUTLINED_FUNCTION_31_25();
      v25 = v0;
LABEL_16:
      v37 = 0;
LABEL_21:
      OUTLINED_FUNCTION_43_18(v25, v37);
      OUTLINED_FUNCTION_26();
      return;
    }
  }

  else
  {
    sub_216697664(v47, &qword_27CAB6DB0);
    v26 = OUTLINED_FUNCTION_27_22();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v2);
  }

  v29 = sub_216697664(v0, &qword_27CAB6F00);
  OUTLINED_FUNCTION_46_15(v29, v30, &qword_27CAB6DB0);
  if (!v48)
  {
    sub_216697664(v47, &qword_27CAB6DB0);
    OUTLINED_FUNCTION_29_21();
LABEL_13:
    sub_216697664(v4, &qword_27CAB89C0);
    OUTLINED_FUNCTION_49_15(&qword_27CAB6DB0, *(v19 + 24));
    if (v48)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68);
      v35 = OUTLINED_FUNCTION_25_22();
      OUTLINED_FUNCTION_4_45(v35);
      v1 = v46;
      if (!v23)
      {
        OUTLINED_FUNCTION_2_58();
        sub_21695BCCC(v3, v45, v36);
        OUTLINED_FUNCTION_35_18();
        v25 = v46;
        goto LABEL_16;
      }
    }

    else
    {
      sub_216697664(v47, &qword_27CAB6DB0);
      OUTLINED_FUNCTION_13_28();
    }

    sub_216697664(v3, &qword_27CAB6F00);
    v25 = v1;
LABEL_20:
    v37 = 1;
    goto LABEL_21;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68);
  v31 = OUTLINED_FUNCTION_21_26();
  OUTLINED_FUNCTION_3_64(v31);
  if (v23)
  {
    goto LABEL_13;
  }

  v32 = OUTLINED_FUNCTION_8_38();
  v33(v32);
  sub_21700D384();
  OUTLINED_FUNCTION_18_26();
  while (1)
  {
    if (v4 == v20)
    {
      v38 = OUTLINED_FUNCTION_22_29();
      v39(v38);

      v25 = v46;
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_37_21();
    if (v34)
    {
      break;
    }

    OUTLINED_FUNCTION_51_5();
    OUTLINED_FUNCTION_50_11();
    if (OUTLINED_FUNCTION_24_23())
    {
      v40 = OUTLINED_FUNCTION_22_29();
      v41(v40);

      OUTLINED_FUNCTION_0_89();
      sub_21695BD2C(v6, v42);
      OUTLINED_FUNCTION_11_34();
      v25 = OUTLINED_FUNCTION_40_13();
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_28_24();
  }

  __break(1u);
}

void sub_2169587B4()
{
  OUTLINED_FUNCTION_49();
  v46 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89C0);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_30_21();
  OUTLINED_FUNCTION_10_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_9_41(v11, v43);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6F00);
  v13 = OUTLINED_FUNCTION_36(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7_44();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_17_33();
  type metadata accessor for PlayAction();
  OUTLINED_FUNCTION_14_29();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_42(v16, v44);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_15_30();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_19_28();
  v19 = type metadata accessor for TopSearchLockup();
  v20 = *(v19 + 68);
  OUTLINED_FUNCTION_46_15(v19, v21, &qword_27CAB6DB0);
  if (v48)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68);
    v22 = OUTLINED_FUNCTION_26_24();
    OUTLINED_FUNCTION_5_45(v22);
    if (!v23)
    {
      OUTLINED_FUNCTION_1_72();
      sub_21695BCCC(v0, v5, v24);
      OUTLINED_FUNCTION_31_25();
      v25 = v0;
LABEL_16:
      v37 = 0;
LABEL_21:
      OUTLINED_FUNCTION_43_18(v25, v37);
      OUTLINED_FUNCTION_26();
      return;
    }
  }

  else
  {
    sub_216697664(v47, &qword_27CAB6DB0);
    v26 = OUTLINED_FUNCTION_27_22();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v2);
  }

  v29 = sub_216697664(v0, &qword_27CAB6F00);
  OUTLINED_FUNCTION_46_15(v29, v30, &qword_27CAB6DB0);
  if (!v48)
  {
    sub_216697664(v47, &qword_27CAB6DB0);
    OUTLINED_FUNCTION_29_21();
LABEL_13:
    sub_216697664(v4, &qword_27CAB89C0);
    OUTLINED_FUNCTION_49_15(&qword_27CAB6DB0, *(v19 + 24));
    if (v48)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68);
      v35 = OUTLINED_FUNCTION_25_22();
      OUTLINED_FUNCTION_4_45(v35);
      v1 = v46;
      if (!v23)
      {
        OUTLINED_FUNCTION_2_58();
        sub_21695BCCC(v3, v45, v36);
        OUTLINED_FUNCTION_35_18();
        v25 = v46;
        goto LABEL_16;
      }
    }

    else
    {
      sub_216697664(v47, &qword_27CAB6DB0);
      OUTLINED_FUNCTION_13_28();
    }

    sub_216697664(v3, &qword_27CAB6F00);
    v25 = v1;
LABEL_20:
    v37 = 1;
    goto LABEL_21;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68);
  v31 = OUTLINED_FUNCTION_21_26();
  OUTLINED_FUNCTION_3_64(v31);
  if (v23)
  {
    goto LABEL_13;
  }

  v32 = OUTLINED_FUNCTION_8_38();
  v33(v32);
  sub_21700D384();
  OUTLINED_FUNCTION_18_26();
  while (1)
  {
    if (v4 == v20)
    {
      v38 = OUTLINED_FUNCTION_22_29();
      v39(v38);

      v25 = v46;
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_37_21();
    if (v34)
    {
      break;
    }

    OUTLINED_FUNCTION_51_5();
    OUTLINED_FUNCTION_50_11();
    if (OUTLINED_FUNCTION_24_23())
    {
      v40 = OUTLINED_FUNCTION_22_29();
      v41(v40);

      OUTLINED_FUNCTION_0_89();
      sub_21695BD2C(v6, v42);
      OUTLINED_FUNCTION_11_34();
      v25 = OUTLINED_FUNCTION_40_13();
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_28_24();
  }

  __break(1u);
}

void sub_216958B74()
{
  OUTLINED_FUNCTION_49();
  v46 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89C0);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_30_21();
  OUTLINED_FUNCTION_10_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_9_41(v11, v43);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6F00);
  v13 = OUTLINED_FUNCTION_36(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7_44();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_17_33();
  type metadata accessor for PlayAction();
  OUTLINED_FUNCTION_14_29();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_42(v16, v44);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_15_30();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_19_28();
  v19 = type metadata accessor for SquareLockup();
  v20 = *(v19 + 76);
  OUTLINED_FUNCTION_46_15(v19, v21, &qword_27CAB6DB0);
  if (v48)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68);
    v22 = OUTLINED_FUNCTION_26_24();
    OUTLINED_FUNCTION_5_45(v22);
    if (!v23)
    {
      OUTLINED_FUNCTION_1_72();
      sub_21695BCCC(v0, v5, v24);
      OUTLINED_FUNCTION_31_25();
      v25 = v0;
LABEL_16:
      v37 = 0;
LABEL_21:
      OUTLINED_FUNCTION_43_18(v25, v37);
      OUTLINED_FUNCTION_26();
      return;
    }
  }

  else
  {
    sub_216697664(v47, &qword_27CAB6DB0);
    v26 = OUTLINED_FUNCTION_27_22();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v2);
  }

  v29 = sub_216697664(v0, &qword_27CAB6F00);
  OUTLINED_FUNCTION_46_15(v29, v30, &qword_27CAB6DB0);
  if (!v48)
  {
    sub_216697664(v47, &qword_27CAB6DB0);
    OUTLINED_FUNCTION_29_21();
LABEL_13:
    sub_216697664(v4, &qword_27CAB89C0);
    OUTLINED_FUNCTION_49_15(&qword_27CAB6DB0, *(v19 + 72));
    if (v48)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68);
      v35 = OUTLINED_FUNCTION_25_22();
      OUTLINED_FUNCTION_4_45(v35);
      v1 = v46;
      if (!v23)
      {
        OUTLINED_FUNCTION_2_58();
        sub_21695BCCC(v3, v45, v36);
        OUTLINED_FUNCTION_35_18();
        v25 = v46;
        goto LABEL_16;
      }
    }

    else
    {
      sub_216697664(v47, &qword_27CAB6DB0);
      OUTLINED_FUNCTION_13_28();
    }

    sub_216697664(v3, &qword_27CAB6F00);
    v25 = v1;
LABEL_20:
    v37 = 1;
    goto LABEL_21;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68);
  v31 = OUTLINED_FUNCTION_21_26();
  OUTLINED_FUNCTION_3_64(v31);
  if (v23)
  {
    goto LABEL_13;
  }

  v32 = OUTLINED_FUNCTION_8_38();
  v33(v32);
  sub_21700D384();
  OUTLINED_FUNCTION_18_26();
  while (1)
  {
    if (v4 == v20)
    {
      v38 = OUTLINED_FUNCTION_22_29();
      v39(v38);

      v25 = v46;
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_37_21();
    if (v34)
    {
      break;
    }

    OUTLINED_FUNCTION_51_5();
    OUTLINED_FUNCTION_50_11();
    if (OUTLINED_FUNCTION_24_23())
    {
      v40 = OUTLINED_FUNCTION_22_29();
      v41(v40);

      OUTLINED_FUNCTION_0_89();
      sub_21695BD2C(v6, v42);
      OUTLINED_FUNCTION_11_34();
      v25 = OUTLINED_FUNCTION_40_13();
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_28_24();
  }

  __break(1u);
}

void sub_216958F34()
{
  OUTLINED_FUNCTION_49();
  v46 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89C0);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_30_21();
  OUTLINED_FUNCTION_10_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_9_41(v11, v43);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6F00);
  v13 = OUTLINED_FUNCTION_36(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7_44();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_17_33();
  type metadata accessor for PlayAction();
  OUTLINED_FUNCTION_14_29();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_42(v16, v44);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_15_30();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_19_28();
  v19 = _s6LockupVMa();
  v20 = *(v19 + 44);
  OUTLINED_FUNCTION_46_15(v19, v21, &qword_27CAB6DB0);
  if (v48)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68);
    v22 = OUTLINED_FUNCTION_26_24();
    OUTLINED_FUNCTION_5_45(v22);
    if (!v23)
    {
      OUTLINED_FUNCTION_1_72();
      sub_21695BCCC(v0, v5, v24);
      OUTLINED_FUNCTION_31_25();
      v25 = v0;
LABEL_16:
      v37 = 0;
LABEL_21:
      OUTLINED_FUNCTION_43_18(v25, v37);
      OUTLINED_FUNCTION_26();
      return;
    }
  }

  else
  {
    sub_216697664(v47, &qword_27CAB6DB0);
    v26 = OUTLINED_FUNCTION_27_22();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v2);
  }

  v29 = sub_216697664(v0, &qword_27CAB6F00);
  OUTLINED_FUNCTION_46_15(v29, v30, &qword_27CAB6DB0);
  if (!v48)
  {
    sub_216697664(v47, &qword_27CAB6DB0);
    OUTLINED_FUNCTION_29_21();
LABEL_13:
    sub_216697664(v4, &qword_27CAB89C0);
    OUTLINED_FUNCTION_49_15(&qword_27CAB6DB0, *(v19 + 32));
    if (v48)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68);
      v35 = OUTLINED_FUNCTION_25_22();
      OUTLINED_FUNCTION_4_45(v35);
      v1 = v46;
      if (!v23)
      {
        OUTLINED_FUNCTION_2_58();
        sub_21695BCCC(v3, v45, v36);
        OUTLINED_FUNCTION_35_18();
        v25 = v46;
        goto LABEL_16;
      }
    }

    else
    {
      sub_216697664(v47, &qword_27CAB6DB0);
      OUTLINED_FUNCTION_13_28();
    }

    sub_216697664(v3, &qword_27CAB6F00);
    v25 = v1;
LABEL_20:
    v37 = 1;
    goto LABEL_21;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68);
  v31 = OUTLINED_FUNCTION_21_26();
  OUTLINED_FUNCTION_3_64(v31);
  if (v23)
  {
    goto LABEL_13;
  }

  v32 = OUTLINED_FUNCTION_8_38();
  v33(v32);
  sub_21700D384();
  OUTLINED_FUNCTION_18_26();
  while (1)
  {
    if (v4 == v20)
    {
      v38 = OUTLINED_FUNCTION_22_29();
      v39(v38);

      v25 = v46;
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_37_21();
    if (v34)
    {
      break;
    }

    OUTLINED_FUNCTION_51_5();
    OUTLINED_FUNCTION_50_11();
    if (OUTLINED_FUNCTION_24_23())
    {
      v40 = OUTLINED_FUNCTION_22_29();
      v41(v40);

      OUTLINED_FUNCTION_0_89();
      sub_21695BD2C(v6, v42);
      OUTLINED_FUNCTION_11_34();
      v25 = OUTLINED_FUNCTION_40_13();
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_28_24();
  }

  __break(1u);
}

void sub_2169592F4()
{
  OUTLINED_FUNCTION_49();
  v47 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89C0);
  OUTLINED_FUNCTION_36(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_30_21();
  OUTLINED_FUNCTION_10_39();
  v46 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6F00);
  v16 = OUTLINED_FUNCTION_36(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7_44();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_57();
  type metadata accessor for PlayAction();
  OUTLINED_FUNCTION_14_29();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_77();
  v45 = v19 - v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_15_30();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_17_33();
  v23 = *(type metadata accessor for RecentSearchLockup() + 48);
  sub_216681B04(v1 + v23, v50, &qword_27CAB6DB0);
  if (v51)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68);
    OUTLINED_FUNCTION_53_12();
    v24 = OUTLINED_FUNCTION_45_17();
    OUTLINED_FUNCTION_43_18(v7, v24 ^ 1u);
    OUTLINED_FUNCTION_12_4(v7);
    if (!v25)
    {
      OUTLINED_FUNCTION_1_72();
      sub_21695BCCC(v7, v0, v26);
      OUTLINED_FUNCTION_54_13(v0);
      v27 = v0;
LABEL_16:
      v40 = 0;
LABEL_21:
      OUTLINED_FUNCTION_43_18(v27, v40);
      OUTLINED_FUNCTION_26();
      return;
    }
  }

  else
  {
    sub_216697664(v50, &qword_27CAB6DB0);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v2);
  }

  sub_216697664(v7, &qword_27CAB6F00);
  sub_216681B04(v1 + v23, v50, &qword_27CAB6DB0);
  if (!v51)
  {
    sub_216697664(v50, &qword_27CAB6DB0);
    OUTLINED_FUNCTION_29_21();
LABEL_13:
    sub_216697664(v5, &qword_27CAB89C0);
    sub_216681B04(v1 + 40, v50, &qword_27CAB6DB0);
    if (v51)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68);
      OUTLINED_FUNCTION_53_12();
      v37 = OUTLINED_FUNCTION_45_17();
      OUTLINED_FUNCTION_4_45(v37);
      v38 = v47;
      if (!v25)
      {
        OUTLINED_FUNCTION_2_58();
        sub_21695BCCC(v4, v45, v39);
        OUTLINED_FUNCTION_35_18();
        v27 = v38;
        goto LABEL_16;
      }
    }

    else
    {
      sub_216697664(v50, &qword_27CAB6DB0);
      OUTLINED_FUNCTION_38_2();
      __swift_storeEnumTagSinglePayload(v41, v42, v43, v2);
      v38 = v47;
    }

    sub_216697664(v4, &qword_27CAB6F00);
    v27 = v38;
LABEL_20:
    v40 = 1;
    goto LABEL_21;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68);
  v31 = OUTLINED_FUNCTION_52_11();
  OUTLINED_FUNCTION_3_64(v31);
  if (v25)
  {
    goto LABEL_13;
  }

  v32 = v46;
  (*(v46 + 32))(v14, v5, v3);
  v33 = sub_21700D384();
  v34 = 0;
  v35 = *(v33 + 16);
  for (i = v33 + 32; ; i += 40)
  {
    if (v35 == v34)
    {
      (*(v32 + 8))(v14, v3);

      v27 = v47;
      goto LABEL_20;
    }

    if (v34 >= *(v33 + 16))
    {
      break;
    }

    sub_2167B7D58(i, v49);
    sub_2167B7D58(v49, &v48);
    if (OUTLINED_FUNCTION_45_17())
    {
      (*(v32 + 8))(v14, v3);

      OUTLINED_FUNCTION_0_89();
      sub_21695BD2C(v6, v44);
      OUTLINED_FUNCTION_47_16();
      v40 = OUTLINED_FUNCTION_45_17() ^ 1;
      v27 = i;
      goto LABEL_21;
    }

    ++v34;
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
  }

  __break(1u);
}

void sub_216959784()
{
  OUTLINED_FUNCTION_49();
  v49 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89C0);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_30_21();
  OUTLINED_FUNCTION_10_39();
  v47 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_0();
  v48 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6F00);
  v14 = OUTLINED_FUNCTION_36(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_77();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_57();
  type metadata accessor for PlayAction();
  OUTLINED_FUNCTION_14_29();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_77();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_15_30();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_17_33();
  v25 = *(type metadata accessor for PosterLockup() + 56);
  sub_216681B04(v1 + v25, v52, &qword_27CAB6DB0);
  if (v53)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68);
    OUTLINED_FUNCTION_53_12();
    v26 = OUTLINED_FUNCTION_45_17();
    OUTLINED_FUNCTION_43_18(v6, v26 ^ 1u);
    OUTLINED_FUNCTION_12_4(v6);
    if (!v27)
    {
      OUTLINED_FUNCTION_1_72();
      sub_21695BCCC(v6, v0, v28);
      OUTLINED_FUNCTION_54_13(v0);
      v29 = v0;
LABEL_16:
      v42 = 0;
LABEL_21:
      OUTLINED_FUNCTION_43_18(v29, v42);
      OUTLINED_FUNCTION_26();
      return;
    }
  }

  else
  {
    sub_216697664(v52, &qword_27CAB6DB0);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v30, v31, v32, v2);
  }

  sub_216697664(v6, &qword_27CAB6F00);
  sub_216681B04(v1 + v25, v52, &qword_27CAB6DB0);
  if (!v53)
  {
    sub_216697664(v52, &qword_27CAB6DB0);
    OUTLINED_FUNCTION_29_21();
LABEL_13:
    sub_216697664(v4, &qword_27CAB89C0);
    sub_21691A23C(v52);
    if (v53)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68);
      OUTLINED_FUNCTION_53_12();
      v39 = OUTLINED_FUNCTION_45_17();
      OUTLINED_FUNCTION_43_18(v17, v39 ^ 1u);
      OUTLINED_FUNCTION_12_4(v17);
      v40 = v49;
      if (!v27)
      {
        OUTLINED_FUNCTION_2_58();
        sub_21695BCCC(v17, v22, v41);
        sub_21695BCCC(v22, v49, v0);
        v29 = v49;
        goto LABEL_16;
      }
    }

    else
    {
      sub_216697664(v52, &qword_27CAB6DB0);
      OUTLINED_FUNCTION_38_2();
      __swift_storeEnumTagSinglePayload(v43, v44, v45, v2);
      v40 = v49;
    }

    sub_216697664(v17, &qword_27CAB6F00);
    v29 = v40;
LABEL_20:
    v42 = 1;
    goto LABEL_21;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68);
  v33 = OUTLINED_FUNCTION_52_11();
  OUTLINED_FUNCTION_3_64(v33);
  if (v27)
  {
    goto LABEL_13;
  }

  (*(v47 + 32))(v48, v4, v3);
  v34 = sub_21700D384();
  v35 = 0;
  v36 = *(v34 + 16);
  for (i = v34 + 32; ; i += 40)
  {
    if (v36 == v35)
    {
      (*(v47 + 8))(v48, v3);

      v29 = v49;
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_37_21();
    if (v38)
    {
      break;
    }

    sub_2167B7D58(i, v51);
    sub_2167B7D58(v51, &v50);
    if (OUTLINED_FUNCTION_45_17())
    {
      (*(v47 + 8))(v48, v3);

      OUTLINED_FUNCTION_0_89();
      sub_21695BD2C(v5, v46);
      OUTLINED_FUNCTION_47_16();
      v42 = OUTLINED_FUNCTION_45_17() ^ 1;
      v29 = i;
      goto LABEL_21;
    }

    ++v35;
    __swift_destroy_boxed_opaque_existential_1Tm(v51);
  }

  __break(1u);
}

void sub_216959C10()
{
  OUTLINED_FUNCTION_49();
  v46 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89C0);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_30_21();
  OUTLINED_FUNCTION_10_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_9_41(v11, v43);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6F00);
  v13 = OUTLINED_FUNCTION_36(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7_44();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_17_33();
  type metadata accessor for PlayAction();
  OUTLINED_FUNCTION_14_29();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_42(v16, v44);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_15_30();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_19_28();
  v19 = type metadata accessor for PlaylistTrackLockup();
  v20 = *(v19 + 88);
  OUTLINED_FUNCTION_46_15(v19, v21, &qword_27CAB6DB0);
  if (v48)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68);
    v22 = OUTLINED_FUNCTION_26_24();
    OUTLINED_FUNCTION_5_45(v22);
    if (!v23)
    {
      OUTLINED_FUNCTION_1_72();
      sub_21695BCCC(v0, v5, v24);
      OUTLINED_FUNCTION_31_25();
      v25 = v0;
LABEL_16:
      v37 = 0;
LABEL_21:
      OUTLINED_FUNCTION_43_18(v25, v37);
      OUTLINED_FUNCTION_26();
      return;
    }
  }

  else
  {
    sub_216697664(v47, &qword_27CAB6DB0);
    v26 = OUTLINED_FUNCTION_27_22();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v2);
  }

  v29 = sub_216697664(v0, &qword_27CAB6F00);
  OUTLINED_FUNCTION_46_15(v29, v30, &qword_27CAB6DB0);
  if (!v48)
  {
    sub_216697664(v47, &qword_27CAB6DB0);
    OUTLINED_FUNCTION_29_21();
LABEL_13:
    sub_216697664(v4, &qword_27CAB89C0);
    OUTLINED_FUNCTION_49_15(&qword_27CAB6DB0, *(v19 + 24));
    if (v48)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68);
      v35 = OUTLINED_FUNCTION_25_22();
      OUTLINED_FUNCTION_4_45(v35);
      v1 = v46;
      if (!v23)
      {
        OUTLINED_FUNCTION_2_58();
        sub_21695BCCC(v3, v45, v36);
        OUTLINED_FUNCTION_35_18();
        v25 = v46;
        goto LABEL_16;
      }
    }

    else
    {
      sub_216697664(v47, &qword_27CAB6DB0);
      OUTLINED_FUNCTION_13_28();
    }

    sub_216697664(v3, &qword_27CAB6F00);
    v25 = v1;
LABEL_20:
    v37 = 1;
    goto LABEL_21;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68);
  v31 = OUTLINED_FUNCTION_21_26();
  OUTLINED_FUNCTION_3_64(v31);
  if (v23)
  {
    goto LABEL_13;
  }

  v32 = OUTLINED_FUNCTION_8_38();
  v33(v32);
  sub_21700D384();
  OUTLINED_FUNCTION_18_26();
  while (1)
  {
    if (v4 == v20)
    {
      v38 = OUTLINED_FUNCTION_22_29();
      v39(v38);

      v25 = v46;
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_37_21();
    if (v34)
    {
      break;
    }

    OUTLINED_FUNCTION_51_5();
    OUTLINED_FUNCTION_50_11();
    if (OUTLINED_FUNCTION_24_23())
    {
      v40 = OUTLINED_FUNCTION_22_29();
      v41(v40);

      OUTLINED_FUNCTION_0_89();
      sub_21695BD2C(v6, v42);
      OUTLINED_FUNCTION_11_34();
      v25 = OUTLINED_FUNCTION_40_13();
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_28_24();
  }

  __break(1u);
}

void sub_216959FD0()
{
  OUTLINED_FUNCTION_49();
  v46 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89C0);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_30_21();
  OUTLINED_FUNCTION_10_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_9_41(v11, v43);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6F00);
  v13 = OUTLINED_FUNCTION_36(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7_44();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_17_33();
  type metadata accessor for PlayAction();
  OUTLINED_FUNCTION_14_29();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_42(v16, v44);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_15_30();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_19_28();
  v19 = type metadata accessor for LiveRadioGridLockup();
  v20 = *(v19 + 40);
  OUTLINED_FUNCTION_46_15(v19, v21, &qword_27CAB6DB0);
  if (v48)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68);
    v22 = OUTLINED_FUNCTION_26_24();
    OUTLINED_FUNCTION_5_45(v22);
    if (!v23)
    {
      OUTLINED_FUNCTION_1_72();
      sub_21695BCCC(v0, v5, v24);
      OUTLINED_FUNCTION_31_25();
      v25 = v0;
LABEL_16:
      v37 = 0;
LABEL_21:
      OUTLINED_FUNCTION_43_18(v25, v37);
      OUTLINED_FUNCTION_26();
      return;
    }
  }

  else
  {
    sub_216697664(v47, &qword_27CAB6DB0);
    v26 = OUTLINED_FUNCTION_27_22();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v2);
  }

  v29 = sub_216697664(v0, &qword_27CAB6F00);
  OUTLINED_FUNCTION_46_15(v29, v30, &qword_27CAB6DB0);
  if (!v48)
  {
    sub_216697664(v47, &qword_27CAB6DB0);
    OUTLINED_FUNCTION_29_21();
LABEL_13:
    sub_216697664(v4, &qword_27CAB89C0);
    OUTLINED_FUNCTION_49_15(&qword_27CAB6DB0, *(v19 + 36));
    if (v48)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68);
      v35 = OUTLINED_FUNCTION_25_22();
      OUTLINED_FUNCTION_4_45(v35);
      v1 = v46;
      if (!v23)
      {
        OUTLINED_FUNCTION_2_58();
        sub_21695BCCC(v3, v45, v36);
        OUTLINED_FUNCTION_35_18();
        v25 = v46;
        goto LABEL_16;
      }
    }

    else
    {
      sub_216697664(v47, &qword_27CAB6DB0);
      OUTLINED_FUNCTION_13_28();
    }

    sub_216697664(v3, &qword_27CAB6F00);
    v25 = v1;
LABEL_20:
    v37 = 1;
    goto LABEL_21;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68);
  v31 = OUTLINED_FUNCTION_21_26();
  OUTLINED_FUNCTION_3_64(v31);
  if (v23)
  {
    goto LABEL_13;
  }

  v32 = OUTLINED_FUNCTION_8_38();
  v33(v32);
  sub_21700D384();
  OUTLINED_FUNCTION_18_26();
  while (1)
  {
    if (v4 == v20)
    {
      v38 = OUTLINED_FUNCTION_22_29();
      v39(v38);

      v25 = v46;
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_37_21();
    if (v34)
    {
      break;
    }

    OUTLINED_FUNCTION_51_5();
    OUTLINED_FUNCTION_50_11();
    if (OUTLINED_FUNCTION_24_23())
    {
      v40 = OUTLINED_FUNCTION_22_29();
      v41(v40);

      OUTLINED_FUNCTION_0_89();
      sub_21695BD2C(v6, v42);
      OUTLINED_FUNCTION_11_34();
      v25 = OUTLINED_FUNCTION_40_13();
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_28_24();
  }

  __break(1u);
}

void sub_21695A3A8()
{
  OUTLINED_FUNCTION_49();
  v46 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89C0);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_30_21();
  OUTLINED_FUNCTION_10_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_9_41(v11, v43);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6F00);
  v13 = OUTLINED_FUNCTION_36(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7_44();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_17_33();
  type metadata accessor for PlayAction();
  OUTLINED_FUNCTION_14_29();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_42(v16, v44);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_15_30();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_19_28();
  v19 = type metadata accessor for HorizontalLockup();
  v20 = *(v19 + 72);
  OUTLINED_FUNCTION_46_15(v19, v21, &qword_27CAB6DB0);
  if (v48)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68);
    v22 = OUTLINED_FUNCTION_26_24();
    OUTLINED_FUNCTION_5_45(v22);
    if (!v23)
    {
      OUTLINED_FUNCTION_1_72();
      sub_21695BCCC(v0, v5, v24);
      OUTLINED_FUNCTION_31_25();
      v25 = v0;
LABEL_16:
      v37 = 0;
LABEL_21:
      OUTLINED_FUNCTION_43_18(v25, v37);
      OUTLINED_FUNCTION_26();
      return;
    }
  }

  else
  {
    sub_216697664(v47, &qword_27CAB6DB0);
    v26 = OUTLINED_FUNCTION_27_22();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v2);
  }

  v29 = sub_216697664(v0, &qword_27CAB6F00);
  OUTLINED_FUNCTION_46_15(v29, v30, &qword_27CAB6DB0);
  if (!v48)
  {
    sub_216697664(v47, &qword_27CAB6DB0);
    OUTLINED_FUNCTION_29_21();
LABEL_13:
    sub_216697664(v4, &qword_27CAB89C0);
    OUTLINED_FUNCTION_49_15(&qword_27CAB6DB0, *(v19 + 40));
    if (v48)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68);
      v35 = OUTLINED_FUNCTION_25_22();
      OUTLINED_FUNCTION_4_45(v35);
      v1 = v46;
      if (!v23)
      {
        OUTLINED_FUNCTION_2_58();
        sub_21695BCCC(v3, v45, v36);
        OUTLINED_FUNCTION_35_18();
        v25 = v46;
        goto LABEL_16;
      }
    }

    else
    {
      sub_216697664(v47, &qword_27CAB6DB0);
      OUTLINED_FUNCTION_13_28();
    }

    sub_216697664(v3, &qword_27CAB6F00);
    v25 = v1;
LABEL_20:
    v37 = 1;
    goto LABEL_21;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68);
  v31 = OUTLINED_FUNCTION_21_26();
  OUTLINED_FUNCTION_3_64(v31);
  if (v23)
  {
    goto LABEL_13;
  }

  v32 = OUTLINED_FUNCTION_8_38();
  v33(v32);
  sub_21700D384();
  OUTLINED_FUNCTION_18_26();
  while (1)
  {
    if (v4 == v20)
    {
      v38 = OUTLINED_FUNCTION_22_29();
      v39(v38);

      v25 = v46;
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_37_21();
    if (v34)
    {
      break;
    }

    OUTLINED_FUNCTION_51_5();
    OUTLINED_FUNCTION_50_11();
    if (OUTLINED_FUNCTION_24_23())
    {
      v40 = OUTLINED_FUNCTION_22_29();
      v41(v40);

      OUTLINED_FUNCTION_0_89();
      sub_21695BD2C(v6, v42);
      OUTLINED_FUNCTION_11_34();
      v25 = OUTLINED_FUNCTION_40_13();
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_28_24();
  }

  __break(1u);
}

void sub_21695A780()
{
  OUTLINED_FUNCTION_49();
  v8 = v7;
  v47 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89C0);
  OUTLINED_FUNCTION_36(v10);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_30_21();
  OUTLINED_FUNCTION_10_39();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_9_41(v13, v44);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6F00);
  v15 = OUTLINED_FUNCTION_36(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7_44();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_17_33();
  type metadata accessor for PlayAction();
  OUTLINED_FUNCTION_14_29();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_6_42(v18, v45);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_15_30();
  MEMORY[0x28223BE20](v20);
  v21 = OUTLINED_FUNCTION_19_28();
  v22 = v8(v21);
  v23 = *(v22 + 60);
  OUTLINED_FUNCTION_46_15(v22, v24, &qword_27CAB6DB0);
  if (v49)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68);
    v25 = OUTLINED_FUNCTION_26_24();
    OUTLINED_FUNCTION_5_45(v25);
    if (!v26)
    {
      sub_21695BCCC(v0, v5, type metadata accessor for PlayAction);
      OUTLINED_FUNCTION_31_25();
      v27 = v0;
LABEL_16:
      v38 = 0;
LABEL_21:
      OUTLINED_FUNCTION_43_18(v27, v38);
      OUTLINED_FUNCTION_26();
      return;
    }
  }

  else
  {
    sub_216697664(v48, &qword_27CAB6DB0);
    v28 = OUTLINED_FUNCTION_27_22();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v2);
  }

  v31 = sub_216697664(v0, &qword_27CAB6F00);
  OUTLINED_FUNCTION_46_15(v31, v32, &qword_27CAB6DB0);
  if (!v49)
  {
    sub_216697664(v48, &qword_27CAB6DB0);
    OUTLINED_FUNCTION_29_21();
LABEL_13:
    sub_216697664(v4, &qword_27CAB89C0);
    OUTLINED_FUNCTION_49_15(&qword_27CAB6DB0, *(v22 + 24));
    if (v49)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68);
      v37 = OUTLINED_FUNCTION_25_22();
      OUTLINED_FUNCTION_4_45(v37);
      v1 = v47;
      if (!v26)
      {
        sub_21695BCCC(v3, v46, type metadata accessor for PlayAction);
        OUTLINED_FUNCTION_35_18();
        v27 = v47;
        goto LABEL_16;
      }
    }

    else
    {
      sub_216697664(v48, &qword_27CAB6DB0);
      OUTLINED_FUNCTION_13_28();
    }

    sub_216697664(v3, &qword_27CAB6F00);
    v27 = v1;
LABEL_20:
    v38 = 1;
    goto LABEL_21;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68);
  v33 = OUTLINED_FUNCTION_21_26();
  OUTLINED_FUNCTION_3_64(v33);
  if (v26)
  {
    goto LABEL_13;
  }

  v34 = OUTLINED_FUNCTION_8_38();
  v35(v34);
  sub_21700D384();
  OUTLINED_FUNCTION_18_26();
  while (1)
  {
    if (v4 == v23)
    {
      v39 = OUTLINED_FUNCTION_22_29();
      v40(v39);

      v27 = v47;
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_37_21();
    if (v36)
    {
      break;
    }

    OUTLINED_FUNCTION_51_5();
    OUTLINED_FUNCTION_50_11();
    if (OUTLINED_FUNCTION_24_23())
    {
      v41 = OUTLINED_FUNCTION_22_29();
      v42(v41);

      OUTLINED_FUNCTION_0_89();
      sub_21695BD2C(v6, v43);
      OUTLINED_FUNCTION_11_34();
      v27 = OUTLINED_FUNCTION_40_13();
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_28_24();
  }

  __break(1u);
}

void sub_21695AB68()
{
  OUTLINED_FUNCTION_49();
  v46 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89C0);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_30_21();
  OUTLINED_FUNCTION_10_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_9_41(v11, v43);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6F00);
  v13 = OUTLINED_FUNCTION_36(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7_44();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_17_33();
  type metadata accessor for PlayAction();
  OUTLINED_FUNCTION_14_29();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_42(v16, v44);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_15_30();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_19_28();
  v19 = type metadata accessor for TrackLockup();
  v20 = *(v19 + 108);
  OUTLINED_FUNCTION_46_15(v19, v21, &qword_27CAB6DB0);
  if (v48)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68);
    v22 = OUTLINED_FUNCTION_26_24();
    OUTLINED_FUNCTION_5_45(v22);
    if (!v23)
    {
      OUTLINED_FUNCTION_1_72();
      sub_21695BCCC(v0, v5, v24);
      OUTLINED_FUNCTION_31_25();
      v25 = v0;
LABEL_16:
      v37 = 0;
LABEL_21:
      OUTLINED_FUNCTION_43_18(v25, v37);
      OUTLINED_FUNCTION_26();
      return;
    }
  }

  else
  {
    sub_216697664(v47, &qword_27CAB6DB0);
    v26 = OUTLINED_FUNCTION_27_22();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v2);
  }

  v29 = sub_216697664(v0, &qword_27CAB6F00);
  OUTLINED_FUNCTION_46_15(v29, v30, &qword_27CAB6DB0);
  if (!v48)
  {
    sub_216697664(v47, &qword_27CAB6DB0);
    OUTLINED_FUNCTION_29_21();
LABEL_13:
    sub_216697664(v4, &qword_27CAB89C0);
    OUTLINED_FUNCTION_49_15(&qword_27CAB6DB0, *(v19 + 24));
    if (v48)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68);
      v35 = OUTLINED_FUNCTION_25_22();
      OUTLINED_FUNCTION_4_45(v35);
      v1 = v46;
      if (!v23)
      {
        OUTLINED_FUNCTION_2_58();
        sub_21695BCCC(v3, v45, v36);
        OUTLINED_FUNCTION_35_18();
        v25 = v46;
        goto LABEL_16;
      }
    }

    else
    {
      sub_216697664(v47, &qword_27CAB6DB0);
      OUTLINED_FUNCTION_13_28();
    }

    sub_216697664(v3, &qword_27CAB6F00);
    v25 = v1;
LABEL_20:
    v37 = 1;
    goto LABEL_21;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68);
  v31 = OUTLINED_FUNCTION_21_26();
  OUTLINED_FUNCTION_3_64(v31);
  if (v23)
  {
    goto LABEL_13;
  }

  v32 = OUTLINED_FUNCTION_8_38();
  v33(v32);
  sub_21700D384();
  OUTLINED_FUNCTION_18_26();
  while (1)
  {
    if (v4 == v20)
    {
      v38 = OUTLINED_FUNCTION_22_29();
      v39(v38);

      v25 = v46;
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_37_21();
    if (v34)
    {
      break;
    }

    OUTLINED_FUNCTION_51_5();
    OUTLINED_FUNCTION_50_11();
    if (OUTLINED_FUNCTION_24_23())
    {
      v40 = OUTLINED_FUNCTION_22_29();
      v41(v40);

      OUTLINED_FUNCTION_0_89();
      sub_21695BD2C(v6, v42);
      OUTLINED_FUNCTION_11_34();
      v25 = OUTLINED_FUNCTION_40_13();
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_28_24();
  }

  __break(1u);
}

void sub_21695AF28()
{
  OUTLINED_FUNCTION_49();
  v46 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89C0);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_30_21();
  OUTLINED_FUNCTION_10_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_9_41(v11, v43);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6F00);
  v13 = OUTLINED_FUNCTION_36(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7_44();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_17_33();
  type metadata accessor for PlayAction();
  OUTLINED_FUNCTION_14_29();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_42(v16, v44);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_15_30();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_19_28();
  v19 = type metadata accessor for AlbumTrackLockup();
  v20 = *(v19 + 92);
  OUTLINED_FUNCTION_46_15(v19, v21, &qword_27CAB6DB0);
  if (v48)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68);
    v22 = OUTLINED_FUNCTION_26_24();
    OUTLINED_FUNCTION_5_45(v22);
    if (!v23)
    {
      OUTLINED_FUNCTION_1_72();
      sub_21695BCCC(v0, v5, v24);
      OUTLINED_FUNCTION_31_25();
      v25 = v0;
LABEL_16:
      v37 = 0;
LABEL_21:
      OUTLINED_FUNCTION_43_18(v25, v37);
      OUTLINED_FUNCTION_26();
      return;
    }
  }

  else
  {
    sub_216697664(v47, &qword_27CAB6DB0);
    v26 = OUTLINED_FUNCTION_27_22();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v2);
  }

  v29 = sub_216697664(v0, &qword_27CAB6F00);
  OUTLINED_FUNCTION_46_15(v29, v30, &qword_27CAB6DB0);
  if (!v48)
  {
    sub_216697664(v47, &qword_27CAB6DB0);
    OUTLINED_FUNCTION_29_21();
LABEL_13:
    sub_216697664(v4, &qword_27CAB89C0);
    OUTLINED_FUNCTION_49_15(&qword_27CAB6DB0, *(v19 + 24));
    if (v48)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68);
      v35 = OUTLINED_FUNCTION_25_22();
      OUTLINED_FUNCTION_4_45(v35);
      v1 = v46;
      if (!v23)
      {
        OUTLINED_FUNCTION_2_58();
        sub_21695BCCC(v3, v45, v36);
        OUTLINED_FUNCTION_35_18();
        v25 = v46;
        goto LABEL_16;
      }
    }

    else
    {
      sub_216697664(v47, &qword_27CAB6DB0);
      OUTLINED_FUNCTION_13_28();
    }

    sub_216697664(v3, &qword_27CAB6F00);
    v25 = v1;
LABEL_20:
    v37 = 1;
    goto LABEL_21;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68);
  v31 = OUTLINED_FUNCTION_21_26();
  OUTLINED_FUNCTION_3_64(v31);
  if (v23)
  {
    goto LABEL_13;
  }

  v32 = OUTLINED_FUNCTION_8_38();
  v33(v32);
  sub_21700D384();
  OUTLINED_FUNCTION_18_26();
  while (1)
  {
    if (v4 == v20)
    {
      v38 = OUTLINED_FUNCTION_22_29();
      v39(v38);

      v25 = v46;
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_37_21();
    if (v34)
    {
      break;
    }

    OUTLINED_FUNCTION_51_5();
    OUTLINED_FUNCTION_50_11();
    if (OUTLINED_FUNCTION_24_23())
    {
      v40 = OUTLINED_FUNCTION_22_29();
      v41(v40);

      OUTLINED_FUNCTION_0_89();
      sub_21695BD2C(v6, v42);
      OUTLINED_FUNCTION_11_34();
      v25 = OUTLINED_FUNCTION_40_13();
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_28_24();
  }

  __break(1u);
}

uint64_t sub_21695B2EC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SplitPosterLockup(0) + 24);
  v4 = type metadata accessor for SplitPosterLockup.Item(0);
  return sub_216681B04(v3 + *(v4 + 20), a1, &qword_27CAB6A00);
}

void sub_21695B3B4()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v55 = &v49 - v6;
  v7 = type metadata accessor for ContextAccessoryButton();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_77();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v49 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  OUTLINED_FUNCTION_36(v15);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_55_1();
  v17 = type metadata accessor for ContentDescriptor();
  v56 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_6_0();
  v57 = v18;
  v19 = *(v0 + *(type metadata accessor for Page.Header(0) + 40));
  if (v19)
  {
    v50 = v3;
    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = v19 + 32;
      v22 = MEMORY[0x277D84F90];
      v53 = v14;
      v54 = v7;
      v52 = v11;
      v51 = v17;
      while (1)
      {
        sub_216826904(v21, &v62);
        v23 = v62;
        v60 = v62;
        sub_216826960(&v63, v61);
        if (v23 == 3)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9330);
          if (swift_dynamicCast())
          {
            break;
          }
        }

        sub_2168269C4(&v62);
        OUTLINED_FUNCTION_38_2();
        __swift_storeEnumTagSinglePayload(v26, v27, v28, v17);
        sub_216697664(&v60, &qword_27CABDC08);
LABEL_13:
        if (__swift_getEnumTagSinglePayload(v1, 1, v17) == 1)
        {
          sub_216697664(v1, &qword_27CAB6A00);
        }

        else
        {
          OUTLINED_FUNCTION_39_14();
          sub_21695BCCC(v1, v57, v33);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21693792C(0, *(v22 + 16) + 1, 1, v22);
            v22 = v39;
          }

          v35 = *(v22 + 16);
          v34 = *(v22 + 24);
          if (v35 >= v34 >> 1)
          {
            sub_21693792C(v34 > 1, v35 + 1, 1, v22);
            v22 = v40;
          }

          *(v22 + 16) = v35 + 1;
          OUTLINED_FUNCTION_39_14();
          sub_21695BCCC(v36, v37, v38);
        }

        v21 += 56;
        if (!--v20)
        {
          goto LABEL_26;
        }
      }

      sub_21695BCCC(v14, v11, type metadata accessor for ContextAccessoryButton);
      v24 = v11 + *(v7 + 24);
      v25 = v55;
      sub_216681B04(v24 + *(v17 + 24), v55, &qword_27CABA820);
      v11 = sub_217005EF4();
      if (__swift_getEnumTagSinglePayload(v25, 1, v11) == 1)
      {
        sub_2168269C4(&v62);
        sub_216697664(v25, &qword_27CABA820);
      }

      else
      {
        v29 = sub_217005DF4();
        (*(*(v11 - 8) + 8))(v25, v11);
        v58 = &unk_28290DA10;
        v59 = v29;
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8);
        sub_21695BC68();
        v30 = sub_21700EC64();

        sub_2168269C4(&v62);
        if (v30)
        {
          OUTLINED_FUNCTION_36_15();
          v31 = v1;
          v32 = 1;
LABEL_12:
          v17 = v51;
          __swift_storeEnumTagSinglePayload(v31, v32, 1, v51);
          __swift_destroy_boxed_opaque_existential_1Tm(v61);
          v14 = v53;
          v7 = v54;
          goto LABEL_13;
        }
      }

      sub_21695BC04(v24, v1);
      OUTLINED_FUNCTION_36_15();
      v31 = v1;
      v32 = 0;
      goto LABEL_12;
    }

    v22 = MEMORY[0x277D84F90];
LABEL_26:
    if (*(v22 + 16))
    {
      v46 = v50;
      sub_21695BC04(v22 + ((*(v56 + 80) + 32) & ~*(v56 + 80)), v50);
      v47 = v46;
      v48 = 0;
    }

    else
    {
      v47 = v50;
      v48 = 1;
    }

    __swift_storeEnumTagSinglePayload(v47, v48, 1, v17);

    OUTLINED_FUNCTION_26();
  }

  else
  {
    OUTLINED_FUNCTION_38_2();
    OUTLINED_FUNCTION_26();

    __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
  }
}

uint64_t sub_21695B900(uint64_t a1)
{
  result = sub_2166D2998(&qword_280E44F88, type metadata accessor for TrackLockup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21695BC04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentDescriptor();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21695BC68()
{
  result = qword_27CABDC10;
  if (!qword_27CABDC10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB74F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABDC10);
  }

  return result;
}

uint64_t sub_21695BCCC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_21695BD2C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t type metadata accessor for ShareAccessoryButton()
{
  result = qword_280E3B8E8;
  if (!qword_280E3B8E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21695BE0C()
{
  sub_216689C0C();
  if (v0 <= 0x3F)
  {
    sub_216689C64();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21695BEA0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v37 = a2;
  v40 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v31 - v16;
  v18 = a1;
  sub_21700CE04();
  v19 = sub_21700CDB4();
  v21 = v20;
  v22 = *(v11 + 8);
  v35 = v11 + 8;
  v36 = v9;
  v34 = v22;
  v22(v17, v9);
  if (v21)
  {
    sub_21700D7A4();
    v32 = v19;
    sub_21700CE04();
    v23 = v37;
    (*(v5 + 16))(v8, v37, v40);
    type metadata accessor for ShareAccessoryButton();
    sub_21700D734();
    v38 = v32;
    v39 = v21;
    sub_21700F364();
    sub_21700CE04();
    sub_21700D2E4();
    (*(v5 + 8))(v23, v40);
    v24 = v36;
    v25 = v34;
    v34(v18, v36);
    return v25(v14, v24);
  }

  else
  {
    v27 = sub_21700E2E4();
    sub_21695C2C0(&qword_280E2A0F8, MEMORY[0x277D22548]);
    swift_allocError();
    v29 = v28;
    v30 = type metadata accessor for ShareAccessoryButton();
    *v29 = 25705;
    v29[1] = 0xE200000000000000;
    v29[2] = v30;
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D22530], v27);
    swift_willThrow();
    (*(v5 + 8))(v37, v40);
    return v34(v18, v36);
  }
}

uint64_t sub_21695C2C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21695C308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABDC28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CABF910);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABDC30);
  v31 = a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  type metadata accessor for PlaylistTrackListSection.DividerOverlay();
  OUTLINED_FUNCTION_17_34();
  swift_getWitnessTable();
  sub_217008BC4();
  v5 = sub_2170089F4();
  OUTLINED_FUNCTION_16_7();
  v7 = sub_2166D9530(v6, &unk_27CABF910);
  v8 = type metadata accessor for PlaylistTrackLockupView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB0C0);
  OUTLINED_FUNCTION_23_24();
  sub_2166D56E4(v9, v10);
  OUTLINED_FUNCTION_21_27();
  sub_21695EDD0(v11, &qword_27CABB0C0, &unk_2170231B0, v12);
  OUTLINED_FUNCTION_20_23();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_15_31();
  v51 = v8;
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_0_9();
  v44 = v29;
  v45 = v5;
  v46 = v3;
  v47 = v7;
  v48 = &off_282938708;
  v49 = swift_getWitnessTable();
  v50 = v4;
  type metadata accessor for PaginatingGridView();
  v13 = sub_21700B1D4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v28 - v18;
  v20 = (v32 + *(v31 + 36));
  v22 = *v20;
  v21 = v20[1];
  v44 = v22;
  v45 = v21;
  v46 = 0;
  v47 = 0;
  LOBYTE(v48) = 0;
  v37 = v3;
  v38 = v4;
  v39 = v32;
  v40 = &v44;
  v34 = v3;
  v35 = v4;
  v36 = v32;
  v23 = sub_21695ED20();
  OUTLINED_FUNCTION_22_30();
  v24 = swift_getWitnessTable();
  sub_216ED5418();
  v41 = v23;
  v42 = v24;
  v43 = MEMORY[0x277CE1410];
  OUTLINED_FUNCTION_19_29();
  v25 = swift_getWitnessTable();
  sub_2166C24DC(v16, v13, v25);
  v26 = *(v14 + 8);
  v26(v16, v13);
  sub_2166C24DC(v19, v13, v25);
  return (v26)(v19, v13);
}

uint64_t sub_21695C6D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v73 = a2;
  v74 = a5;
  v66 = a1;
  v64 = type metadata accessor for PlaylistTrackListSection();
  v72 = *(v64 - 8);
  v70 = *(v72 + 64);
  MEMORY[0x28223BE20](v64);
  v71 = &v55 - v7;
  v58 = sub_2170090F4();
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v56 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MappedSection(0);
  MEMORY[0x28223BE20](v9 - 8);
  v76 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CABF910);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABDC30);
  type metadata accessor for PlaylistTrackListSection.DividerOverlay();
  swift_getWitnessTable();
  sub_217008BC4();
  v11 = sub_2170089F4();
  v12 = sub_2166D9530(&qword_27CABDC38, &unk_27CABF910);
  v13 = type metadata accessor for PlaylistTrackLockupView();
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB0C0);
  v15 = sub_2166D56E4(&qword_27CABDC40, type metadata accessor for PlaylistTrackLockupView);
  v16 = sub_21695EDD0(&qword_27CABB0E0, &qword_27CABB0C0, &unk_2170231B0, sub_2168AE608);
  v62 = v13;
  v77 = v13;
  v78 = v14;
  v79 = v15;
  v80 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  WitnessTable = swift_getWitnessTable();
  v84 = OpaqueTypeConformance2;
  v85 = WitnessTable;
  v19 = swift_getWitnessTable();
  v77 = v75;
  v78 = v11;
  v68 = v12;
  v69 = v11;
  v79 = a3;
  v80 = v12;
  v81 = &off_282938708;
  v82 = v19;
  v20 = v19;
  v83 = a4;
  v61 = type metadata accessor for PaginatingGridView();
  v67 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v63 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v65 = &v55 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7940);
  v25 = v66;
  v26 = *(v66 + *(v24 + 52));
  v27 = v64;
  v28 = a3;
  v29 = a4;
  type metadata accessor for CatalogPagePresenter();
  v60 = v26;
  sub_21700DF14();
  swift_getWitnessTable();
  v59 = sub_217008CB4();
  sub_21695F04C();
  v30 = v27;
  v31 = v25 + *(v27 + 48);
  v32 = *v31;
  if (*(v31 + 8) == 1)
  {
    v77 = *v31;
    v58 = v32;
  }

  else
  {

    sub_21700ED94();
    v33 = sub_217009C34();
    sub_217007BC4();

    v34 = v56;
    sub_2170090E4();
    swift_getAtKeyPath();

    (*(v57 + 8))(v34, v58);
    v58 = v77;
  }

  v35 = swift_checkMetadataState();
  v37 = v71;
  v36 = v72;
  v38 = v25;
  v39 = v30;
  (*(v72 + 16))(v71, v38, v30);
  v40 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = v28;
  *(v41 + 24) = v29;
  (*(v36 + 32))(v41 + v40, v37, v39);
  v42 = sub_2166D56E4(qword_27CABDCE0, type metadata accessor for PlaylistTrackLockupView);
  v43 = v75;
  v44 = v69;
  v45 = v68;
  v46 = OUTLINED_FUNCTION_0_28();
  v47 = v73;
  sub_2168387D4(v73, &v77);
  v54 = v42;
  v48 = v63;
  sub_216C09600(v60, v59, v76, v58, &off_28292BE68, v47, v46, v63, sub_21695F0A4, v41, v43, v44, v35, v45, &off_282938708, v20, v54);
  v49 = v61;
  v50 = swift_getWitnessTable();
  v51 = v65;
  sub_2166C24DC(v48, v49, v50);
  v52 = *(v67 + 8);
  v52(v48, v49);
  sub_2166C24DC(v51, v49, v50);
  return (v52)(v51, v49);
}