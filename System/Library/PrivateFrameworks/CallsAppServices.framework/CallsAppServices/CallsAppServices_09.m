uint64_t sub_1D33D694C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D334D4B4;

  return sub_1D33CD55C(a1, v4, v5, v6);
}

uint64_t sub_1D33D6A00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D334D4B4;

  return sub_1D33CD920(a1, v4, v5, v7, v6);
}

uint64_t sub_1D33D6AC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D334D4B4;

  return sub_1D33CEFCC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1D33D6B88()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1D334E024();
}

uint64_t objectdestroy_2Tm_0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D33D6BE0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D33D6C34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC762008, &qword_1D33E5648);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D33D6CA8(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D33DEDC4();
    sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
    sub_1D331F514();
    sub_1D33DEA94();
    result = v24;
    v2 = v25;
    v3 = v26;
    v4 = v27;
    v5 = v28;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v9 = MEMORY[0x1E69E7CC0];
  v23 = result;
  if (result < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v4;
    v11 = v5;
    v12 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(result + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_24:
      sub_1D331FEEC();
      return v9;
    }

    while (1)
    {
      v15 = [v14 normalizedValue];
      if (!v15)
      {
        v15 = [v14 value];
      }

      v16 = v15;
      v17 = sub_1D33DE7B4();
      v19 = v18;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1D3359DD4(0, *(v9 + 2) + 1, 1, v9);
      }

      v21 = *(v9 + 2);
      v20 = *(v9 + 3);
      if (v21 >= v20 >> 1)
      {
        v9 = sub_1D3359DD4((v20 > 1), v21 + 1, 1, v9);
      }

      *(v9 + 2) = v21 + 1;
      v22 = &v9[16 * v21];
      *(v22 + 4) = v17;
      *(v22 + 5) = v19;
      v4 = v12;
      v5 = v13;
      result = v23;
      if ((v23 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1D33DEE54())
      {
        sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
        swift_dynamicCast();
        v14 = v29;
        v12 = v4;
        v13 = v5;
        if (v29)
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v11 = *(v2 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void *sub_1D33D6F48(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_1D33DF0A4();

    if (v4)
    {
      sub_1D331DA18(0, &qword_1EDEBFD50, 0x1E695CD58);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_1D33B9340(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

Swift::Void __swiftcall CallReportingViewModel.block(unknownContacts:)(Swift::OpaquePointer unknownContacts)
{
  if (qword_1EC760990 != -1)
  {
    swift_once();
  }

  v2 = sub_1D33DE464();
  __swift_project_value_buffer(v2, qword_1EC762130);
  v3 = sub_1D33DE444();
  v4 = sub_1D33DEAF4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D331A000, v3, v4, "blocking", v5, 2u);
    MEMORY[0x1D38B81C0](v5, -1, -1);
  }

  _s16CallsAppServices22CallReportingViewModelC5block8contactsySaySo9CNContactCG_tF_0(unknownContacts._rawValue);
}

id CallReportingViewModel.getFormattedInitiator(for:)(void *a1)
{
  v1 = [a1 initiator];
  if (!v1)
  {
    if (qword_1EC760990 != -1)
    {
      swift_once();
    }

    v15 = sub_1D33DE464();
    __swift_project_value_buffer(v15, qword_1EC762130);
    v16 = sub_1D33DE444();
    v17 = sub_1D33DEAF4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1D331A000, v16, v17, "initiator unknown", v18, 2u);
      MEMORY[0x1D38B81C0](v18, -1, -1);
    }

    return 0;
  }

  v2 = v1;
  sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
  v3 = v2;
  v4 = sub_1D33D7A2C(v3);
  if ([v4 type] != 2)
  {
    goto LABEL_9;
  }

  result = [v4 value];
  if (!result)
  {
    __break(1u);
    goto LABEL_34;
  }

  v6 = result;
  v7 = PNCopyBestGuessCountryCodeForNumber();

  if (!v7)
  {
LABEL_9:

    goto LABEL_18;
  }

  result = [v4 value];
  if (result)
  {
    v8 = result;
    v9 = CFPhoneNumberCreate();

    if (v9)
    {
      String = CFPhoneNumberCreateString();
      if (String)
      {
        v11 = String;
        v12 = sub_1D33DE7B4();
        v14 = v13;

LABEL_19:
        if (qword_1EC760990 != -1)
        {
          swift_once();
        }

        v19 = sub_1D33DE464();
        __swift_project_value_buffer(v19, qword_1EC762130);

        v20 = v3;
        v21 = sub_1D33DE444();
        v22 = sub_1D33DEAF4();

        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v25 = v31;
          *v23 = 136315394;
          if (v14)
          {
            v26 = v12;
          }

          else
          {
            v26 = 0;
          }

          if (v14)
          {
            v27 = v14;
          }

          else
          {
            v27 = 0xE000000000000000;
          }

          v28 = sub_1D3328B48(v26, v27, &v31);

          *(v23 + 4) = v28;
          *(v23 + 12) = 2112;
          v29 = sub_1D33D7A2C(v20);
          *(v23 + 14) = v29;
          *v24 = v29;
          _os_log_impl(&dword_1D331A000, v21, v22, "formattedPhoneNumber: %s,  TUHandle(initiator): %@", v23, 0x16u);
          sub_1D33DBD28(v24);
          MEMORY[0x1D38B81C0](v24, -1, -1);
          __swift_destroy_boxed_opaque_existential_1Tm(v25);
          MEMORY[0x1D38B81C0](v25, -1, -1);
          MEMORY[0x1D38B81C0](v23, -1, -1);
        }

        if (v14)
        {
        }

        else
        {
          v30 = [v20 value];
          v12 = sub_1D33DE7B4();
        }

        return v12;
      }
    }

    else
    {
    }

LABEL_18:
    v12 = 0;
    v14 = 0;
    goto LABEL_19;
  }

LABEL_34:
  __break(1u);
  return result;
}

Swift::String __swiftcall CallReportingViewModel.getReportInitiatorMessage(formattedHandle:)(Swift::String formattedHandle)
{
  object = formattedHandle._object;
  countAndFlagsBits = formattedHandle._countAndFlagsBits;
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  sub_1D33DDB74();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C8, &unk_1D33E3B50);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D33E2410;
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1D3387AE4();
  *(v5 + 32) = countAndFlagsBits;
  *(v5 + 40) = object;

  v6 = sub_1D33DE7C4();
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

void CallReportingViewModel.blockInitiator(spamCall:)(void *a1)
{
  if (qword_1EC760990 != -1)
  {
    swift_once();
  }

  v2 = sub_1D33DE464();
  __swift_project_value_buffer(v2, qword_1EC762130);
  v3 = sub_1D33DE444();
  v4 = sub_1D33DEAF4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D331A000, v3, v4, "blockInitiator", v5, 2u);
    MEMORY[0x1D38B81C0](v5, -1, -1);
  }

  v6 = [a1 initiator];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1D336A260();

    TUHandle.block()();
  }
}

uint64_t CallReportingViewModel.getCarrierNameOfCall(for:)(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_carrierVoiceSpamReportHelper);
  v7[3] = sub_1D331DA18(0, &unk_1EDEBEF10, 0x1E6993590);
  v7[4] = MEMORY[0x1E69D8A20];
  v7[0] = a1;

  v4 = a1;
  v5 = sub_1D33DE094();

  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  return v5;
}

Swift::String __swiftcall CallReportingViewModel.getCarrierSpamReportAlertTitle(carrierName:)(Swift::String carrierName)
{
  object = carrierName._object;
  countAndFlagsBits = carrierName._countAndFlagsBits;
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  sub_1D33DDB74();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C8, &unk_1D33E3B50);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D33E2410;
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1D3387AE4();
  *(v5 + 32) = countAndFlagsBits;
  *(v5 + 40) = object;

  v6 = sub_1D33DE7C4();
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t sub_1D33D799C(void *a1, void (*a2)(uint64_t *))
{
  v5 = *(v2 + OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_carrierVoiceSpamReportHelper);
  v8[3] = sub_1D331DA18(0, &unk_1EDEBEF10, 0x1E6993590);
  v8[4] = MEMORY[0x1E69D8A20];
  v8[0] = a1;

  v6 = a1;
  a2(v8);

  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

id sub_1D33D7A2C(void *a1)
{
  v2 = [a1 type];
  if (v2 > 3)
  {
    v3 = 1;
  }

  else
  {
    v3 = qword_1D33E57D8[v2];
  }

  v4 = [a1 value];
  if (!v4)
  {
    sub_1D33DE7B4();
    v4 = sub_1D33DE784();
  }

  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithType:v3 value:v4];

  return v5;
}

uint64_t CallReportingViewModel.ReportingFlow.hashValue.getter()
{
  v1 = *v0;
  sub_1D33DF284();
  MEMORY[0x1D38B7920](v1);
  return sub_1D33DF2C4();
}

id CallReportingViewModel.init(unknownContactChecker:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_spamReportManager;
  *&v3[v4] = [objc_allocWithZone(type metadata accessor for FaceTimeSpamReportManager()) init];
  v5 = OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_carrierVoiceSpamReportHelper;
  v6 = sub_1D33DE064();
  v7 = sub_1D33DE054();
  v90 = v6;
  v91 = MEMORY[0x1E69D8A08];
  v89 = v7;
  v8 = sub_1D33DE0A4();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *&v3[v5] = sub_1D33DE084();
  v11 = &v3[OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_reportAlertTitle];
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = objc_opt_self();
  v14 = [v13 bundleForClass_];
  v15 = sub_1D33DDB74();
  v17 = v16;

  *v11 = v15;
  v11[1] = v17;
  v18 = &v3[OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_reportAlertCancel];
  v19 = [v13 bundleForClass_];
  v20 = sub_1D33DDB74();
  v22 = v21;

  *v18 = v20;
  v18[1] = v22;
  v23 = &v3[OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_reportAlertReport];
  v24 = [v13 bundleForClass_];
  v25 = sub_1D33DDB74();
  v27 = v26;

  *v23 = v25;
  v23[1] = v27;
  v28 = &v3[OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_reportBlockFTAlertTitle];
  v29 = [v13 bundleForClass_];
  v30 = sub_1D33DDB74();
  v32 = v31;

  *v28 = v30;
  v28[1] = v32;
  v33 = &v3[OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_reportBlockFTAlertCancel];
  v34 = [v13 bundleForClass_];
  v35 = sub_1D33DDB74();
  v37 = v36;

  *v33 = v35;
  v33[1] = v37;
  v38 = &v3[OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_reportBlockFTAlertBlock];
  v39 = [v13 bundleForClass_];
  v40 = sub_1D33DDB74();
  v42 = v41;

  *v38 = v40;
  v38[1] = v42;
  v43 = &v3[OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_reportBlockFTAlertReportBlock];
  v44 = [v13 bundleForClass_];
  v45 = sub_1D33DDB74();
  v47 = v46;

  *v43 = v45;
  v43[1] = v47;
  v48 = &v3[OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_blockAllButtonTitle];
  v49 = [v13 bundleForClass_];
  v50 = sub_1D33DDB74();
  v52 = v51;

  *v48 = v50;
  v48[1] = v52;
  v53 = &v3[OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_blockAllAlertTitle];
  v54 = [v13 bundleForClass_];
  v55 = sub_1D33DDB74();
  v57 = v56;

  *v53 = v55;
  v53[1] = v57;
  v58 = &v3[OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_blockUnknownButtonTitle];
  v59 = [v13 bundleForClass_];
  v60 = sub_1D33DDB74();
  v62 = v61;

  *v58 = v60;
  v58[1] = v62;
  v63 = &v3[OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_reportInitiatorAlertTitle];
  v64 = [v13 bundleForClass_];
  v65 = sub_1D33DDB74();
  v67 = v66;

  *v63 = v65;
  v63[1] = v67;
  v68 = &v3[OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_reportInitiatorAlert];
  v69 = [v13 bundleForClass_];
  v70 = sub_1D33DDB74();
  v72 = v71;

  *v68 = v70;
  v68[1] = v72;
  v73 = &v3[OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_reportGroupInitiatorAlertTitle];
  v74 = [v13 bundleForClass_];
  v75 = sub_1D33DDB74();
  v77 = v76;

  *v73 = v75;
  v73[1] = v77;
  v78 = &v3[OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_reportLocalizedTitle];
  v79 = [v13 bundleForClass_];
  v80 = sub_1D33DDB74();
  v82 = v81;

  *v78 = v80;
  v78[1] = v82;
  v83 = &v3[OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_unknownContactChecker];
  *v83 = a1;
  *(v83 + 1) = a2;
  v88.receiver = v3;
  v88.super_class = ObjectType;
  return objc_msgSendSuper2(&v88, sel_init, 0xE000000000000000);
}

uint64_t CallReportingViewModel.reportAlertTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_reportAlertTitle);
  v2 = *(v0 + OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_reportAlertTitle + 8);

  return v1;
}

uint64_t CallReportingViewModel.reportAlertCancel.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_reportAlertCancel);
  v2 = *(v0 + OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_reportAlertCancel + 8);

  return v1;
}

uint64_t CallReportingViewModel.reportAlertReport.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_reportAlertReport);
  v2 = *(v0 + OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_reportAlertReport + 8);

  return v1;
}

uint64_t CallReportingViewModel.reportBlockFTAlertTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_reportBlockFTAlertTitle);
  v2 = *(v0 + OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_reportBlockFTAlertTitle + 8);

  return v1;
}

uint64_t CallReportingViewModel.reportBlockFTAlertCancel.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_reportBlockFTAlertCancel);
  v2 = *(v0 + OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_reportBlockFTAlertCancel + 8);

  return v1;
}

uint64_t CallReportingViewModel.reportBlockFTAlertBlock.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_reportBlockFTAlertBlock);
  v2 = *(v0 + OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_reportBlockFTAlertBlock + 8);

  return v1;
}

uint64_t CallReportingViewModel.reportBlockFTAlertReportBlock.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_reportBlockFTAlertReportBlock);
  v2 = *(v0 + OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_reportBlockFTAlertReportBlock + 8);

  return v1;
}

uint64_t CallReportingViewModel.blockAllButtonTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_blockAllButtonTitle);
  v2 = *(v0 + OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_blockAllButtonTitle + 8);

  return v1;
}

uint64_t CallReportingViewModel.blockAllAlertTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_blockAllAlertTitle);
  v2 = *(v0 + OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_blockAllAlertTitle + 8);

  return v1;
}

uint64_t CallReportingViewModel.blockUnknownButtonTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_blockUnknownButtonTitle);
  v2 = *(v0 + OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_blockUnknownButtonTitle + 8);

  return v1;
}

uint64_t CallReportingViewModel.reportInitiatorAlertTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_reportInitiatorAlertTitle);
  v2 = *(v0 + OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_reportInitiatorAlertTitle + 8);

  return v1;
}

uint64_t CallReportingViewModel.reportInitiatorAlert.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_reportInitiatorAlert);
  v2 = *(v0 + OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_reportInitiatorAlert + 8);

  return v1;
}

uint64_t CallReportingViewModel.reportGroupInitiatorAlertTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_reportGroupInitiatorAlertTitle);
  v2 = *(v0 + OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_reportGroupInitiatorAlertTitle + 8);

  return v1;
}

id sub_1D33D8694()
{
  if (qword_1EC760990 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v1 = sub_1D33DE464();
    __swift_project_value_buffer(v1, qword_1EC762130);
    v2 = v0;
    v3 = sub_1D33DE444();
    v4 = sub_1D33DEAF4();

    v39 = v2;
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v40 = v6;
      *v5 = 136315394;
      v7 = [v39 phoneNumbers];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7620A0, "8x");
      sub_1D33DE8B4();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7620C0, &unk_1D33E57C8);
      v8 = sub_1D33DE804();
      v10 = sub_1D3328B48(v8, v9, &v40);

      *(v5 + 4) = v10;
      *(v5 + 12) = 2080;
      v11 = [v39 emailAddresses];
      sub_1D33DE8B4();

      v12 = sub_1D33DE804();
      v14 = sub_1D3328B48(v12, v13, &v40);

      *(v5 + 14) = v14;
      _os_log_impl(&dword_1D331A000, v3, v4, "Block: blocking phoneNumbers %s \n\n emailAddreses: %s", v5, 0x16u);
      swift_arrayDestroy();
      v15 = v6;
      v2 = v39;
      MEMORY[0x1D38B81C0](v15, -1, -1);
      MEMORY[0x1D38B81C0](v5, -1, -1);
    }

    v0 = [v2 phoneNumbers];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7620A0, "8x");
    v16 = sub_1D33DE8B4();

    v17 = v16 >> 62 ? sub_1D33DEE14() : *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v17)
    {
      break;
    }

LABEL_24:
    swift_bridgeObjectRelease_n();
    v31 = [v39 emailAddresses];
    v32 = sub_1D33DE8B4();

    if (v32 >> 62)
    {
      v0 = sub_1D33DEE14();
      if (!v0)
      {
      }
    }

    else
    {
      v0 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v0)
      {
      }
    }

    for (i = 0; ; ++i)
    {
      if ((v32 & 0xC000000000000001) != 0)
      {
        v34 = MEMORY[0x1D38B75D0](i, v32);
      }

      else
      {
        if (i >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v34 = *(v32 + 8 * i + 32);
      }

      v35 = v34;
      v36 = (i + 1);
      if (__OFADD__(i, 1))
      {
        break;
      }

      result = [objc_opt_self() sharedPrivacyManager];
      if (!result)
      {
        __break(1u);
        goto LABEL_44;
      }

      v37 = result;
      v38 = [v35 value];
      [v37 setBlockIncomingCommunication:1 forEmailAddress:v38];

      if (v36 == v0)
      {
      }
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    swift_once();
  }

  v18 = 0;
  while (1)
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x1D38B75D0](v18, v16);
    }

    else
    {
      if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_36;
      }

      v20 = *(v16 + 8 * v18 + 32);
    }

    v21 = v20;
    v22 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v0 = [v20 value];
    v23 = [v0 digits];

    sub_1D33DE7B4();
    v24 = TUHomeCountryCode();
    if (v24)
    {
      v0 = v24;
      sub_1D33DE7B4();
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    v27 = sub_1D33DE784();

    if (v26)
    {
      v28 = sub_1D33DE784();
    }

    else
    {
      v28 = 0;
    }

    v29 = [objc_allocWithZone(MEMORY[0x1E69D8C98]) initWithDigits:v27 countryCode:v28];

    if (v29)
    {
      break;
    }

LABEL_9:
    ++v18;
    if (v22 == v17)
    {
      goto LABEL_24;
    }
  }

  result = [objc_opt_self() sharedPrivacyManager];
  if (result)
  {
    v19 = result;
    [result setBlockIncomingCommunication:1 forPhoneNumber:v29];

    goto LABEL_9;
  }

LABEL_44:
  __break(1u);
  return result;
}

Swift::Void __swiftcall CallReportingViewModel.block(handles:)(Swift::OpaquePointer handles)
{
  if (qword_1EC760990 != -1)
  {
LABEL_30:
    swift_once();
  }

  v2 = sub_1D33DE464();
  __swift_project_value_buffer(v2, qword_1EC762130);
  v3 = sub_1D33DE444();
  v4 = sub_1D33DEAF4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D331A000, v3, v4, "blocking based on handles", v5, 2u);
    MEMORY[0x1D38B81C0](v5, -1, -1);
  }

  if (handles._rawValue >> 62)
  {
    v6 = sub_1D33DEE14();
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v6 = *((handles._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return;
    }
  }

  v7 = 0;
  v8 = handles._rawValue & 0xC000000000000001;
  v9 = handles._rawValue & 0xFFFFFFFFFFFFFF8;
  v10 = &off_1E843B000;
  v27 = v6;
  v28 = handles._rawValue & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v8)
    {
      v11 = MEMORY[0x1D38B75D0](v7, handles._rawValue);
    }

    else
    {
      if (v7 >= *(v9 + 16))
      {
        goto LABEL_29;
      }

      v11 = *(handles._rawValue + v7 + 4);
    }

    v12 = v11;
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if ([v11 v10[446]] == 2)
    {
      break;
    }

    if ([v12 v10[446]] != 3)
    {
      goto LABEL_9;
    }

    v21 = [objc_opt_self() sharedPrivacyManager];
    if (!v21)
    {
      goto LABEL_34;
    }

    v22 = v21;
    v23 = [v12 value];
    if (!v23)
    {
      sub_1D33DE7B4();
      v23 = sub_1D33DE784();
      v10 = &off_1E843B000;
    }

    [v22 setBlockIncomingCommunication:1 forEmailAddress:{v23, v27}];
LABEL_8:

LABEL_9:
    ++v7;
    if (v13 == v6)
    {
      return;
    }
  }

  v14 = v8;
  rawValue = handles._rawValue;
  v16 = [v12 value];
  sub_1D33DE7B4();

  v17 = TUHomeCountryCode();
  if (v17)
  {
    v18 = v17;
    sub_1D33DE7B4();
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v24 = sub_1D33DE784();

  if (v20)
  {
    v25 = sub_1D33DE784();
  }

  else
  {
    v25 = 0;
  }

  v9 = v28;
  v10 = &off_1E843B000;
  v22 = [objc_allocWithZone(MEMORY[0x1E69D8C98]) initWithDigits:v24 countryCode:v25];

  v26 = [objc_opt_self() sharedPrivacyManager];
  if (v26)
  {
    v23 = v26;
    [v26 setBlockIncomingCommunication:1 forPhoneNumber:v22];
    handles._rawValue = rawValue;
    v8 = v14;
    v6 = v27;
    goto LABEL_8;
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

Swift::Void __swiftcall CallReportingViewModel.unblock(contacts:)(Swift::OpaquePointer contacts)
{
  if (qword_1EC760990 != -1)
  {
    goto LABEL_54;
  }

  while (1)
  {
    v2 = sub_1D33DE464();
    __swift_project_value_buffer(v2, qword_1EC762130);
    v3 = sub_1D33DE444();
    v4 = sub_1D33DEAF4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1D331A000, v3, v4, "unblocking", v5, 2u);
      MEMORY[0x1D38B81C0](v5, -1, -1);
    }

    if (!(contacts._rawValue >> 62))
    {
      v6 = *((contacts._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v6)
      {
        return;
      }

      goto LABEL_6;
    }

    v6 = sub_1D33DEE14();
    if (!v6)
    {
      break;
    }

LABEL_6:
    v7 = 0;
    v42 = contacts._rawValue & 0xFFFFFFFFFFFFFF8;
    v43 = contacts._rawValue & 0xC000000000000001;
    rawValue = contacts._rawValue;
    v41 = contacts._rawValue + 32;
    v39 = v6;
    while (1)
    {
      if (v43)
      {
        v8 = MEMORY[0x1D38B75D0](v7, contacts._rawValue);
        v9 = __OFADD__(v7, 1);
        v10 = v7 + 1;
        if (v9)
        {
          goto LABEL_52;
        }
      }

      else
      {
        if (v7 >= *(v42 + 16))
        {
          goto LABEL_53;
        }

        v8 = *&v41[8 * v7];
        v9 = __OFADD__(v7, 1);
        v10 = v7 + 1;
        if (v9)
        {
          goto LABEL_52;
        }
      }

      v44 = v10;
      v45 = v8;
      v11 = [v8 phoneNumbers];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7620A0, "8x");
      v12 = sub_1D33DE8B4();

      if (v12 >> 62)
      {
        v13 = sub_1D33DEE14();
      }

      else
      {
        v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v13)
      {
        v14 = 0;
        do
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v16 = MEMORY[0x1D38B75D0](v14, v12);
          }

          else
          {
            if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_49;
            }

            v16 = *(v12 + 8 * v14 + 32);
          }

          v17 = v16;
          v18 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            __break(1u);
LABEL_49:
            __break(1u);
            goto LABEL_50;
          }

          v19 = [v16 value];
          v20 = [v19 digits];

          sub_1D33DE7B4();
          v21 = TUHomeCountryCode();
          if (v21)
          {
            v22 = v21;
            sub_1D33DE7B4();
            v24 = v23;
          }

          else
          {
            v24 = 0;
          }

          v25 = sub_1D33DE784();

          if (v24)
          {
            v26 = sub_1D33DE784();
          }

          else
          {
            v26 = 0;
          }

          contacts._rawValue = [objc_allocWithZone(MEMORY[0x1E69D8C98]) initWithDigits:v25 countryCode:v26];

          if (contacts._rawValue)
          {
            v27 = [objc_opt_self() sharedPrivacyManager];
            if (!v27)
            {
LABEL_58:
              __break(1u);
              return;
            }

            v15 = v27;
            [v27 setBlockIncomingCommunication:0 forPhoneNumber:contacts._rawValue];
          }

          ++v14;
        }

        while (v18 != v13);
      }

      swift_bridgeObjectRelease_n();
      v28 = [v45 emailAddresses];
      v29 = sub_1D33DE8B4();

      if (v29 >> 62)
      {
        break;
      }

      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v31 = 0x1E69D8000uLL;
      if (v30)
      {
        goto LABEL_33;
      }

LABEL_7:

      contacts._rawValue = rawValue;
      v7 = v44;
      if (v44 == v39)
      {
        return;
      }
    }

    v30 = sub_1D33DEE14();
    v31 = 0x1E69D8000;
    if (!v30)
    {
      goto LABEL_7;
    }

LABEL_33:
    v32 = 0;
    while (1)
    {
      if ((v29 & 0xC000000000000001) != 0)
      {
        v33 = MEMORY[0x1D38B75D0](v32, v29);
      }

      else
      {
        if (v32 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_51;
        }

        v33 = *(v29 + 8 * v32 + 32);
      }

      v34 = v33;
      v35 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      v36 = *(v31 + 3232);
      v37 = [objc_opt_self() sharedPrivacyManager];
      if (!v37)
      {
        __break(1u);
        goto LABEL_58;
      }

      v38 = v37;
      contacts._rawValue = [v34 value];
      [v38 setBlockIncomingCommunication:0 forEmailAddress:contacts._rawValue];

      ++v32;
      if (v35 == v30)
      {
        goto LABEL_7;
      }
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    swift_once();
  }
}

Swift::Bool __swiftcall CallReportingViewModel.isBlocked(contacts:)(Swift::OpaquePointer contacts)
{
  if (qword_1EC760990 != -1)
  {
    goto LABEL_58;
  }

  while (1)
  {
    v2 = sub_1D33DE464();
    __swift_project_value_buffer(v2, qword_1EC762130);
    v3 = sub_1D33DE444();
    v4 = sub_1D33DEAF4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1D331A000, v3, v4, "are contacts blocked", v5, 2u);
      MEMORY[0x1D38B81C0](v5, -1, -1);
    }

    v6 = contacts._rawValue & 0xFFFFFFFFFFFFFF8;
    v7 = contacts._rawValue >> 62 ? sub_1D33DEE14() : *((contacts._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = 0;
    v9 = contacts._rawValue & 0xC000000000000001;
    v10 = contacts._rawValue + 32;
    v11 = &selRef_setOriginatingUIType_;
    v47 = contacts._rawValue & 0xFFFFFFFFFFFFFF8;
    rawValue = contacts._rawValue;
    v45 = contacts._rawValue & 0xC000000000000001;
    v46 = v7;
    v44 = contacts._rawValue + 32;
LABEL_7:
    v12 = v8 == v7;
    if (v8 == v7)
    {
      break;
    }

    if (v9)
    {
      v13 = MEMORY[0x1D38B75D0](v8, contacts._rawValue);
      v14 = __OFADD__(v8, 1);
      v15 = v8 + 1;
      if (!v14)
      {
LABEL_11:
        v49 = v12;
        v50 = v15;
        v51 = v13;
        v16 = [v13 v11[188]];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7620A0, "8x");
        v17 = sub_1D33DE8B4();

        if (v17 >> 62)
        {
          v18 = sub_1D33DEE14();
        }

        else
        {
          v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v18)
        {
          contacts._rawValue = 0;
          do
          {
            if ((v17 & 0xC000000000000001) != 0)
            {
              v19 = MEMORY[0x1D38B75D0](contacts._rawValue, v17);
            }

            else
            {
              if (contacts._rawValue >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_55;
              }

              v19 = *(v17 + 8 * contacts._rawValue + 32);
            }

            v20 = v19;
            v21 = contacts._rawValue + 1;
            if (__OFADD__(contacts._rawValue, 1))
            {
LABEL_54:
              __break(1u);
LABEL_55:
              __break(1u);
              goto LABEL_56;
            }

            v22 = [v19 value];
            v23 = [v22 digits];

            sub_1D33DE7B4();
            v24 = TUHomeCountryCode();
            if (v24)
            {
              v25 = v24;
              sub_1D33DE7B4();
              v27 = v26;
            }

            else
            {
              v27 = 0;
            }

            v28 = sub_1D33DE784();

            if (v27)
            {
              v29 = sub_1D33DE784();
            }

            else
            {
              v29 = 0;
            }

            v30 = [objc_allocWithZone(MEMORY[0x1E69D8C98]) initWithDigits:v28 countryCode:v29];

            if (v30)
            {
              v31 = [objc_opt_self() sharedPrivacyManager];
              if (!v31)
              {
LABEL_61:
                __break(1u);
                return v31;
              }

              v32 = v31;
              v33 = [v31 isIncomingCommunicationBlockedForPhoneNumber_];

              if ((v33 & 1) == 0)
              {
                v34 = 0;
                goto LABEL_32;
              }
            }

            ++contacts._rawValue;
          }

          while (v21 != v18);
        }

        v34 = 1;
LABEL_32:
        swift_bridgeObjectRelease_n();
        v35 = [v51 emailAddresses];
        contacts._rawValue = sub_1D33DE8B4();

        if (contacts._rawValue >> 62)
        {
          v36 = sub_1D33DEE14();
        }

        else
        {
          v36 = *((contacts._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v37 = 0;
        while (v36 != v37)
        {
          if ((contacts._rawValue & 0xC000000000000001) != 0)
          {
            v38 = MEMORY[0x1D38B75D0](v37, contacts._rawValue);
          }

          else
          {
            if (v37 >= *((contacts._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_53;
            }

            v38 = *(contacts._rawValue + v37 + 4);
          }

          v39 = v38;
          if (__OFADD__(v37, 1))
          {
            __break(1u);
LABEL_53:
            __break(1u);
            goto LABEL_54;
          }

          v31 = [objc_opt_self() sharedPrivacyManager];
          if (!v31)
          {
            __break(1u);
            goto LABEL_61;
          }

          v40 = v31;
          v41 = [v39 value];
          v42 = [v40 isIncomingCommunicationBlockedForEmailAddress_];

          ++v37;
          if ((v42 & 1) == 0)
          {

            v12 = 0;
            goto LABEL_51;
          }
        }

        v6 = v47;
        contacts._rawValue = rawValue;
        v9 = v45;
        v7 = v46;
        v8 = v50;
        v10 = v44;
        v11 = &selRef_setOriginatingUIType_;
        v12 = v49;
        if (v34)
        {
          goto LABEL_7;
        }

        break;
      }

      goto LABEL_56;
    }

    if (v8 < *(v6 + 16))
    {
      v13 = *&v10[8 * v8];
      v14 = __OFADD__(v8, 1);
      v15 = v8 + 1;
      if (!v14)
      {
        goto LABEL_11;
      }

LABEL_56:
      __break(1u);
    }

    __break(1u);
LABEL_58:
    swift_once();
  }

LABEL_51:
  LOBYTE(v31) = v12;
  return v31;
}

void CallReportingViewModel.reportingFlow(for:in:)(void *a1@<X0>, char *a2@<X8>)
{
  if ([a1 isComingFaceTimeCall] && *(v2 + OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_unknownContactChecker) && (v5 = *(v2 + OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_unknownContactChecker + 8), v6 = *(v2 + OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_unknownContactChecker), swift_getObjectType(), (sub_1D33DDFB4() & 1) != 0))
  {
    if (qword_1EC760990 != -1)
    {
      swift_once();
    }

    v7 = sub_1D33DE464();
    __swift_project_value_buffer(v7, qword_1EC762130);
    v8 = sub_1D33DE444();
    v9 = sub_1D33DEAF4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1D331A000, v8, v9, "checking facetime flow", v10, 2u);
      MEMORY[0x1D38B81C0](v10, -1, -1);
    }

    sub_1D33D9D00(a1, a2);
  }

  else
  {
    v11 = [objc_opt_self() sharedInstance];
    v12 = [v11 isClassificationAvailable];

    if (v12)
    {
      if (qword_1EC760990 != -1)
      {
        swift_once();
      }

      v13 = sub_1D33DE464();
      __swift_project_value_buffer(v13, qword_1EC762130);
      v14 = sub_1D33DE444();
      v15 = sub_1D33DEAF4();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_1D331A000, v14, v15, "third party flow", v16, 2u);
        MEMORY[0x1D38B81C0](v16, -1, -1);
      }

      v17 = 2;
    }

    else if ([a1 carrierAllowsReportVoiceCall])
    {
      if (qword_1EC760990 != -1)
      {
        swift_once();
      }

      v18 = sub_1D33DE464();
      __swift_project_value_buffer(v18, qword_1EC762130);
      v19 = sub_1D33DE444();
      v20 = sub_1D33DEAF4();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_1D331A000, v19, v20, "carrier flow", v21, 2u);
        MEMORY[0x1D38B81C0](v21, -1, -1);
      }

      v17 = 1;
    }

    else
    {
      v17 = 6;
    }

    *a2 = v17;
  }
}

uint64_t sub_1D33D9D00@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = [a1 initiator];
  if (!v4)
  {
    if (qword_1EC760990 != -1)
    {
      swift_once();
    }

    v11 = sub_1D33DE464();
    __swift_project_value_buffer(v11, qword_1EC762130);
    v12 = sub_1D33DE444();
    v13 = sub_1D33DEAF4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1D331A000, v12, v13, "initiator is nil", v14, 2u);
      MEMORY[0x1D38B81C0](v14, -1, -1);
    }

    if (([a1 isOneToOne] & 1) == 0)
    {
      v15 = *(PKRecentsController.contactByHandles(in:)(a1) + 16);

      if (!v15)
      {
        v10 = 3;
        goto LABEL_20;
      }
    }

    result = [a1 isOneToOne];
    if ((result & 1) == 0)
    {
      result = PKRecentsController.atLeastOneUnknownCaller(in:)(a1);
      if (result)
      {
        v10 = 4;
        goto LABEL_20;
      }
    }

LABEL_19:
    v10 = 0;
    goto LABEL_20;
  }

  if (qword_1EC760990 != -1)
  {
    swift_once();
  }

  v5 = sub_1D33DE464();
  __swift_project_value_buffer(v5, qword_1EC762130);
  v6 = sub_1D33DE444();
  v7 = sub_1D33DEAF4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1D331A000, v6, v7, "initiator is not nil", v8, 2u);
    MEMORY[0x1D38B81C0](v8, -1, -1);
  }

  result = [a1 isOneToOne];
  if (result)
  {
    goto LABEL_19;
  }

  result = PKRecentsController.isInitiatorUnknown(in:)(a1);
  if (result)
  {
    v10 = 5;
  }

  else
  {
    v10 = 4;
  }

LABEL_20:
  *a2 = v10;
  return result;
}

uint64_t PKRecentsController.isInitiatorUnknown(in:)(void *a1)
{
  v1 = a1;
  v2 = [a1 initiator];
  if (v2)
  {
    v3 = v2;
    if (qword_1EC760990 != -1)
    {
      goto LABEL_24;
    }

    while (1)
    {
      v4 = sub_1D33DE464();
      __swift_project_value_buffer(v4, qword_1EC762130);
      v5 = v3;
      v6 = sub_1D33DE444();
      v7 = sub_1D33DEAF4();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        *v8 = 138412290;
        *(v8 + 4) = v5;
        *v9 = v3;
        v10 = v5;
        _os_log_impl(&dword_1D331A000, v6, v7, "isInitiatorUnknownForCall call.initiator %@", v8, 0xCu);
        sub_1D33DBD28(v9);
        MEMORY[0x1D38B81C0](v9, -1, -1);
        MEMORY[0x1D38B81C0](v8, -1, -1);
      }

      v1 = PKRecentsController.contactByHandles(in:)(v1);
      v11 = v1[2];
      if (!v11)
      {
        break;
      }

      v12 = 0;
      v3 = 0x1E6993578;
      while (v12 < v1[2])
      {
        v13 = v1[v12 + 4];
        if (v13)
        {
          sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
          v14 = v5;
          v15 = v13;
          v16 = sub_1D33DEC74();

          if (v16)
          {
            v17 = 0;
            goto LABEL_19;
          }
        }

        if (v11 == ++v12)
        {
          v17 = 1;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_24:
      swift_once();
    }

    v17 = 1;
LABEL_19:

    v21 = sub_1D33DE444();
    v22 = sub_1D33DEAF4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 67109120;
      *(v23 + 4) = v17;
      _os_log_impl(&dword_1D331A000, v21, v22, "isInitiatorUnknown: %{BOOL}d", v23, 8u);
      MEMORY[0x1D38B81C0](v23, -1, -1);
    }
  }

  else
  {
    if (qword_1EC760990 != -1)
    {
      swift_once();
    }

    v18 = sub_1D33DE464();
    __swift_project_value_buffer(v18, qword_1EC762130);
    v5 = sub_1D33DE444();
    v19 = sub_1D33DEAF4();
    if (os_log_type_enabled(v5, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1D331A000, v5, v19, "isInitiatorUnknownForCall call.initiator nil", v20, 2u);
      MEMORY[0x1D38B81C0](v20, -1, -1);
    }

    v17 = 0;
  }

  return v17;
}

BOOL PKRecentsController.allUnknownContact(in:)(void *a1)
{
  v1 = *(PKRecentsController.contactByHandles(in:)(a1) + 16);

  return v1 == 0;
}

BOOL PKRecentsController.atLeastOneUnknownCaller(in:)(void *a1)
{
  v2 = [a1 validRemoteParticipantHandles];
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
  sub_1D331F514();
  v4 = sub_1D33DEA54();

  v5 = *(PKRecentsController.contactByHandles(in:)(a1) + 16);

  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = sub_1D33DEE14();
  }

  else
  {
    v6 = *(v4 + 16);
  }

  return v5 != v6;
}

id CallReportingViewModel.reportActionImage.getter()
{
  v0 = sub_1D33DE784();
  v1 = [objc_opt_self() systemImageNamed_];

  return v1;
}

id CallReportingViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CallReportingViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t PKRecentsController.unknownHandles(in:)(void *a1)
{
  v3 = [a1 validRemoteParticipantHandles];
  if (!v3)
  {
    if (qword_1EC760990 != -1)
    {
      swift_once();
    }

    v14 = sub_1D33DE464();
    __swift_project_value_buffer(v14, qword_1EC762130);
    v15 = sub_1D33DE444();
    v16 = sub_1D33DEAF4();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_13;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "unknownHandles is empty b/c no handles";
    goto LABEL_12;
  }

  v4 = v3;
  sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
  sub_1D331F514();
  v5 = sub_1D33DEA54();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D33E1DE0;
  *(v6 + 32) = [objc_opt_self() descriptorForRequiredKeys];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761150, &qword_1D33E2530);
  v7 = sub_1D33DE8A4();

  v8 = [v1 contactByHandleForRecentCall:a1 keyDescriptors:v7];

  if (v8)
  {
    sub_1D331DA18(0, &qword_1EDEBFD50, 0x1E695CD58);
    v9 = sub_1D33DE6F4();

    v10 = sub_1D33DC274(v5, v9);

    v11 = sub_1D33A5AEC(v10);

    v12 = sub_1D335F404(v11);

    return v12;
  }

  if (qword_1EC760990 != -1)
  {
    swift_once();
  }

  v19 = sub_1D33DE464();
  __swift_project_value_buffer(v19, qword_1EC762130);
  v15 = sub_1D33DE444();
  v16 = sub_1D33DEAF4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "unknownHandles is empty b/c contactByHandle is nil";
LABEL_12:
    _os_log_impl(&dword_1D331A000, v15, v16, v18, v17, 2u);
    MEMORY[0x1D38B81C0](v17, -1, -1);
  }

LABEL_13:

  return MEMORY[0x1E69E7CC0];
}

uint64_t PKRecentsController.contactByHandles(in:)(void *a1)
{
  v3 = [a1 validRemoteParticipantHandles];
  if (!v3)
  {
    if (qword_1EC760990 != -1)
    {
      goto LABEL_39;
    }

    goto LABEL_6;
  }

  v4 = v3;
  sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
  sub_1D331F514();
  v5 = sub_1D33DEA54();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D33E1DE0;
  *(v6 + 32) = [objc_opt_self() descriptorForRequiredKeys];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761150, &qword_1D33E2530);
  v7 = sub_1D33DE8A4();

  v8 = [v1 contactByHandleForRecentCall:a1 keyDescriptors:v7];

  if (v8)
  {
    sub_1D331DA18(0, &qword_1EDEBFD50, 0x1E695CD58);
    v9 = sub_1D33DE6F4();

    v36 = MEMORY[0x1E69E7CC0];
    if ((v5 & 0xC000000000000001) != 0)
    {
      sub_1D33DEDC4();
      sub_1D33DEA94();
      v5 = v37;
      v10 = v38;
      v11 = v39;
      v12 = v40;
      v13 = v41;
    }

    else
    {
      v12 = 0;
      v21 = -1 << *(v5 + 32);
      v10 = v5 + 56;
      v11 = ~v21;
      v22 = -v21;
      if (v22 < 64)
      {
        v23 = ~(-1 << v22);
      }

      else
      {
        v23 = -1;
      }

      v13 = v23 & *(v5 + 56);
    }

    v24 = (v11 + 64) >> 6;
    while (1)
    {
      if (v5 < 0)
      {
        if (!sub_1D33DEE54() || (swift_dynamicCast(), (v27 = v35) == 0))
        {
LABEL_37:

          sub_1D331FEEC();
          v34 = sub_1D335F404(v36);

          return v34;
        }
      }

      else
      {
        v25 = v12;
        v26 = v13;
        if (!v13)
        {
          while (1)
          {
            v12 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v12 >= v24)
            {
              goto LABEL_37;
            }

            v26 = *(v10 + 8 * v12);
            ++v25;
            if (v26)
            {
              goto LABEL_25;
            }
          }

          __break(1u);
LABEL_39:
          swift_once();
LABEL_6:
          v14 = sub_1D33DE464();
          __swift_project_value_buffer(v14, qword_1EC762130);
          v15 = sub_1D33DE444();
          v16 = sub_1D33DEAF4();
          if (os_log_type_enabled(v15, v16))
          {
            v17 = swift_slowAlloc();
            *v17 = 0;
            v18 = "unknownHandles is empty b/c no handles";
            goto LABEL_12;
          }

          goto LABEL_13;
        }

LABEL_25:
        v13 = (v26 - 1) & v26;
        v27 = *(*(v5 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v26)))));
        if (!v27)
        {
          goto LABEL_37;
        }
      }

      if ((v9 & 0xC000000000000001) != 0)
      {
        v28 = v27;
        v29 = sub_1D33DF0A4();

        if (!v29)
        {
          goto LABEL_19;
        }

        swift_dynamicCast();
        v30 = v35;
        if (!v35)
        {
          goto LABEL_19;
        }

LABEL_36:

        sub_1D33DEF84();
        v33 = *(v36 + 16);
        sub_1D33DEFB4();
        sub_1D33DEFC4();
        sub_1D33DEF94();
      }

      else
      {
        if (*(v9 + 16))
        {
          v31 = sub_1D33B9340(v27);
          if (v32)
          {
            v30 = *(*(v9 + 56) + 8 * v31);
            if (v30)
            {
              goto LABEL_36;
            }
          }
        }

LABEL_19:
      }
    }
  }

  if (qword_1EC760990 != -1)
  {
    swift_once();
  }

  v19 = sub_1D33DE464();
  __swift_project_value_buffer(v19, qword_1EC762130);
  v15 = sub_1D33DE444();
  v16 = sub_1D33DEAF4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "contacts list is empty";
LABEL_12:
    _os_log_impl(&dword_1D331A000, v15, v16, v18, v17, 2u);
    MEMORY[0x1D38B81C0](v17, -1, -1);
  }

LABEL_13:

  return MEMORY[0x1E69E7CC0];
}

BOOL sub_1D33DAEC8(void *a1)
{
  v1 = *(PKRecentsController.contactByHandles(in:)(a1) + 16);

  return v1 == 0;
}

uint64_t CallReportingViewModel.shouldShowContactBlockReportButton(for:)(void *a1)
{
  if (![a1 isComingFaceTimeCall] || !*(v1 + OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_unknownContactChecker))
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_unknownContactChecker + 8);
  swift_getObjectType();
  return sub_1D33DDFB4() & 1;
}

uint64_t CallReportingViewModel.shouldShowReportAction(for:)(void *a1)
{
  if ([a1 isTelephony])
  {
    if ([a1 isIncoming])
    {
      if (*(v1 + OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_unknownContactChecker))
      {
        v3 = *(v1 + OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_unknownContactChecker + 8);
        v4 = *(v1 + OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_unknownContactChecker);
        swift_getObjectType();
        if (sub_1D33DDFC4())
        {
          v5 = [objc_opt_self() sharedInstance];
          v6 = [v5 isClassificationAvailable];

          if (v6 & 1) != 0 || ([a1 carrierAllowsReportVoiceCall])
          {
            return 1;
          }
        }
      }
    }
  }

  result = [a1 isComingFaceTimeCall];
  if (result)
  {
    if (*(v1 + OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_unknownContactChecker))
    {
      v8 = *(v1 + OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_unknownContactChecker + 8);
      swift_getObjectType();
      return sub_1D33DDFB4() & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D33DB0B0(void *a1)
{
  v1 = a1;
  v2 = sub_1D33DB140(MEMORY[0x1E69935E8]);

  return v2 & 1;
}

uint64_t sub_1D33DB0F8(void *a1)
{
  v1 = a1;
  v2 = sub_1D33DB140(MEMORY[0x1E69935E0]);

  return v2 & 1;
}

uint64_t sub_1D33DB140(uint64_t *a1)
{
  v3 = [v1 serviceProvider];
  if (!v3)
  {
    v13 = *a1;
    sub_1D33DE7B4();
    goto LABEL_9;
  }

  v4 = v3;
  v5 = sub_1D33DE7B4();
  v7 = v6;

  v8 = *a1;
  v9 = sub_1D33DE7B4();
  if (!v7)
  {
LABEL_9:
    v12 = 0;
    goto LABEL_11;
  }

  if (v5 == v9 && v7 == v10)
  {

    v12 = 1;
  }

  else
  {
    v12 = sub_1D33DF1B4();
  }

LABEL_11:

  return v12 & 1;
}

uint64_t sub_1D33DB208(void *a1)
{
  v1 = a1;
  v2 = sub_1D33DB23C();

  return v2 & 1;
}

id sub_1D33DB23C()
{
  result = [v0 remoteParticipantHandles];
  if (result)
  {
    v2 = result;
    sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
    sub_1D331F514();
    v3 = sub_1D33DEA54();

    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = sub_1D33DEE14();
    }

    else
    {
      v4 = *(v3 + 16);
    }

    return (v4 == 1);
  }

  return result;
}

uint64_t sub_1D33DB2E4(void *a1)
{
  v2 = sub_1D33DE064();
  v3 = a1;
  v4 = sub_1D33DE054();
  v12 = v2;
  v13 = MEMORY[0x1E69D8A08];
  v11[0] = v4;
  v5 = sub_1D33DE0A4();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_1D33DE084();
  v12 = sub_1D331DA18(0, &unk_1EDEBEF10, 0x1E6993590);
  v13 = MEMORY[0x1E69D8A20];
  v11[0] = v3;
  v8 = v3;
  v9 = sub_1D33DE074();

  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v9 & 1;
}

uint64_t CHRecentCall.carrierAllowsReportVoiceCall.getter()
{
  v1 = v0;
  v2 = sub_1D33DE064();
  v3 = sub_1D33DE054();
  v10 = v2;
  v11 = MEMORY[0x1E69D8A08];
  v9[0] = v3;
  v4 = sub_1D33DE0A4();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1D33DE084();
  v10 = sub_1D331DA18(0, &unk_1EDEBEF10, 0x1E6993590);
  v11 = MEMORY[0x1E69D8A20];
  v9[0] = v1;
  v7 = v1;
  LOBYTE(v1) = sub_1D33DE074();

  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  return v1 & 1;
}

id sub_1D33DB4A8(void *a1)
{
  v1 = a1;
  if ([v1 isIncoming])
  {
    v2 = [v1 isFaceTime];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

BOOL sub_1D33DB500(void *a1)
{
  v1 = a1;
  v2 = sub_1D33DB534();

  return v2;
}

BOOL sub_1D33DB534()
{
  v1 = [v0 disconnectedCause];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 intValue];

    if ((byte_1F4EE4824 & 1) != 0 || dword_1F4EE4820 != v3)
    {
      return (dword_1F4EE4828 == v3) & ~byte_1F4EE482C;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v5 = [v0 callStatus];
    return (*MEMORY[0x1E69935C8] & v5) != 0;
  }
}

uint64_t sub_1D33DB654@<X0>(SEL *a1@<X0>, void (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = [v4 *a1];
  if (v8)
  {
    v9 = v8;
    a2();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a3(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a4, v10, 1, v11);
}

id CHRecentCall.formattedRemoteParticipantHandles.getter()
{
  v1 = [v0 remoteParticipantHandles];
  if (v1)
  {
    sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
    sub_1D331F514();
    v2 = sub_1D33DEA54();

    v1 = sub_1D33D6CA8(v2);
  }

  return v1;
}

Swift::Void __swiftcall CallReportingViewModel.blockContact(_:)(CNContact a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D33E1DE0;
  *(inited + 32) = a1;
  v3 = a1.super.isa;
  _s16CallsAppServices22CallReportingViewModelC5block8contactsySaySo9CNContactCG_tF_0(inited);
  swift_setDeallocating();
  v4 = *(inited + 16);
  swift_arrayDestroy();
}

void CallReportingViewModel.reportSpam(callItem:)(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_spamReportManager);
  FaceTimeSpamReportManager.reportSpam(call:)(a1);
}

uint64_t CallReportingViewModel.shouldShowBlockReportActions(for:callItem:)(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  v3 = CallReportingViewModel.shouldShowReportAction(for:)(v2);

  return v3 & 1;
}

uint64_t sub_1D33DB8DC(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D33E1DE0;
  *(inited + 32) = a1;
  v3 = a1;
  _s16CallsAppServices22CallReportingViewModelC5block8contactsySaySo9CNContactCG_tF_0(inited);
  swift_setDeallocating();
  v4 = *(inited + 16);
  return swift_arrayDestroy();
}

void sub_1D33DB96C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_spamReportManager);
  FaceTimeSpamReportManager.reportSpam(call:)(a1);
}

uint64_t sub_1D33DB9CC(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  v3 = CallReportingViewModel.shouldShowReportAction(for:)(v2);

  return v3 & 1;
}

void sub_1D33DBA0C(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

unint64_t *sub_1D33DBA80(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1D33DBD90(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

void _s16CallsAppServices22CallReportingViewModelC5block8contactsySaySo9CNContactCG_tF_0(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D33DEE14())
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v5 = v1 & 0xFFFFFFFFFFFFFF8;
    v6 = 0x1EC760000uLL;
    v22 = v1;
    while (1)
    {
      if (v4)
      {
        v7 = MEMORY[0x1D38B75D0](v3, v1);
      }

      else
      {
        if (v3 >= *(v5 + 16))
        {
          goto LABEL_15;
        }

        v7 = *(v1 + 8 * v3 + 32);
      }

      v8 = v7;
      v9 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (*(v6 + 2448) != -1)
      {
        swift_once();
      }

      v10 = sub_1D33DE464();
      __swift_project_value_buffer(v10, qword_1EC762130);
      v11 = v8;
      v12 = sub_1D33DE444();
      v13 = sub_1D33DEAF4();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = i;
        v16 = v5;
        v17 = v4;
        v18 = swift_slowAlloc();
        *v14 = 138412290;
        *(v14 + 4) = v11;
        *v18 = v11;
        v19 = v11;
        _os_log_impl(&dword_1D331A000, v12, v13, "blocking, contact %@", v14, 0xCu);
        sub_1D33DBD28(v18);
        v20 = v18;
        v4 = v17;
        v5 = v16;
        i = v15;
        v1 = v22;
        MEMORY[0x1D38B81C0](v20, -1, -1);
        v21 = v14;
        v6 = 0x1EC760000;
        MEMORY[0x1D38B81C0](v21, -1, -1);
      }

      sub_1D33D8694();
      ++v3;
      if (v9 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }
}

uint64_t sub_1D33DBD28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761D90, &unk_1D33E4E90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D33DBD90(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  v27 = a4 & 0xC000000000000001;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v15 = v12 | (v6 << 6);
    v16 = *(*(a3 + 48) + 8 * v15);
    if (v27)
    {
      v17 = v16;
      if (sub_1D33DF0A4())
      {
        sub_1D331DA18(0, &qword_1EDEBFD50, 0x1E695CD58);
        swift_dynamicCast();
        v18 = v28;
        if (v28)
        {
          goto LABEL_4;
        }
      }

LABEL_19:

      *(a1 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v26++, 1))
      {
        __break(1u);
LABEL_22:

        sub_1D3366F3C(a1, a2, v26, a3);
        return;
      }
    }

    else
    {
      v19 = *(a4 + 16);
      v20 = v16;
      if (!v19)
      {
        goto LABEL_19;
      }

      v21 = sub_1D33B9340(v20);
      if ((v22 & 1) == 0)
      {
        goto LABEL_19;
      }

      v18 = *(*(a4 + 56) + 8 * v21);
      if (!v18)
      {
        goto LABEL_19;
      }

LABEL_4:
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_22;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1D33DBF6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v41 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = (8 * v8);

  if (v7 > 0xD)
  {
    goto LABEL_28;
  }

  while (2)
  {
    v33 = v8;
    v34 = v3;
    v32 = &v32;
    MEMORY[0x1EEE9AC00](v10);
    v35 = &v32 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v35, v9);
    v11 = 0;
    v3 = a1 + 56;
    v12 = 1 << *(a1 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a1 + 56);
    v8 = (v12 + 63) >> 6;
    v38 = a2 & 0xC000000000000001;
    v15 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v15 = a2;
    }

    v36 = 0;
    v37 = v15;
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v19 = v16 | (v11 << 6);
      v9 = *(*(a1 + 48) + 8 * v19);
      if (v38)
      {
        v20 = v9;
        v21 = sub_1D33DF0A4();
        if (v21)
        {
          v39 = v21;
          sub_1D331DA18(0, &qword_1EDEBFD50, 0x1E695CD58);
          swift_dynamicCast();
          v22 = v40;
          if (v40)
          {
            goto LABEL_7;
          }
        }

LABEL_22:

        *&v35[(v19 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v19;
        if (__OFADD__(v36++, 1))
        {
          __break(1u);
LABEL_25:
          v28 = sub_1D3366F3C(v35, v33, v36, a1);

          goto LABEL_26;
        }
      }

      else
      {
        v23 = *(a2 + 16);
        v24 = v9;
        if (!v23)
        {
          goto LABEL_22;
        }

        v25 = sub_1D33B9340(v24);
        if ((v26 & 1) == 0)
        {
          goto LABEL_22;
        }

        v22 = *(*(a2 + 56) + 8 * v25);
        if (!v22)
        {
          goto LABEL_22;
        }

LABEL_7:
      }
    }

    v17 = v11;
    while (1)
    {
      v11 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
        goto LABEL_25;
      }

      v18 = *(v3 + 8 * v11);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v31 = swift_slowAlloc();

  v28 = sub_1D33DBA80(v31, v8, a1, a2);

  MEMORY[0x1D38B81C0](v31, -1, -1);

LABEL_26:
  v29 = *MEMORY[0x1E69E9840];
  return v28;
}

uint64_t sub_1D33DC274(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_1D33DBF6C(a1, a2);
  }

  v3 = MEMORY[0x1E69E7CD0];
  v26 = MEMORY[0x1E69E7CD0];

  sub_1D33DEDC4();
  v4 = sub_1D33DEE54();
  if (v4)
  {
    v5 = v4;
    sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
    v6 = v5;
    do
    {
      v24 = v6;
      swift_dynamicCast();
      if ((a2 & 0xC000000000000001) != 0)
      {
        v14 = v25;
        v15 = sub_1D33DF0A4();

        if (!v15)
        {
          goto LABEL_15;
        }

        sub_1D331DA18(0, &qword_1EDEBFD50, 0x1E695CD58);
        swift_dynamicCast();
        v16 = v24;
      }

      else if (!*(a2 + 16) || (v17 = sub_1D33B9340(v25), (v18 & 1) == 0) || (v16 = *(*(a2 + 56) + 8 * v17)) == 0)
      {
LABEL_15:
        v19 = *(v3 + 16);
        if (*(v3 + 24) <= v19)
        {
          sub_1D3364FA4(v19 + 1);
        }

        v3 = v26;
        v7 = *(v26 + 40);
        result = sub_1D33DEC64();
        v9 = v26 + 56;
        v10 = -1 << *(v26 + 32);
        v11 = result & ~v10;
        v12 = v11 >> 6;
        if (((-1 << v11) & ~*(v26 + 56 + 8 * (v11 >> 6))) != 0)
        {
          v13 = __clz(__rbit64((-1 << v11) & ~*(v26 + 56 + 8 * (v11 >> 6)))) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v20 = 0;
          v21 = (63 - v10) >> 6;
          do
          {
            if (++v12 == v21 && (v20 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v22 = v12 == v21;
            if (v12 == v21)
            {
              v12 = 0;
            }

            v20 |= v22;
            v23 = *(v9 + 8 * v12);
          }

          while (v23 == -1);
          v13 = __clz(__rbit64(~v23)) + (v12 << 6);
        }

        *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        *(*(v26 + 48) + 8 * v13) = v25;
        ++*(v26 + 16);
        goto LABEL_7;
      }

LABEL_7:
      v6 = sub_1D33DEE54();
    }

    while (v6);
  }

  return v3;
}

unint64_t sub_1D33DC520()
{
  result = qword_1EC7620B0;
  if (!qword_1EC7620B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7620B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CallReportingViewModel.ReportingFlow(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CallReportingViewModel.ReportingFlow(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D33DC718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  type metadata accessor for TUActor();
  v6[5] = swift_initStaticObject();
  v6[6] = sub_1D33682A0();
  v8 = sub_1D33DE914();
  v6[7] = v8;
  v6[8] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D33DC7BC, v8, v7);
}

uint64_t sub_1D33DC7BC()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = [*(v0[2] + 16) providerManager];
  v4 = [v3 faceTimeProvider];

  v5 = [objc_allocWithZone(MEMORY[0x1E69D8BD0]) initWithProvider_];
  v0[9] = v5;

  v6 = objc_allocWithZone(MEMORY[0x1E69D8C00]);
  v7 = sub_1D33DE784();
  v8 = [v6 initWithType:2 value:v7];

  [v5 setHandle_];
  v9 = v5;
  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = sub_1D33DC930;
  v11 = v0[5];
  v12 = v0[6];

  return sub_1D33DCABC(v9, v11, v12);
}

uint64_t sub_1D33DC930(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;

  if (v1)
  {

    v7 = *(v4 + 56);
    v8 = *(v4 + 64);
    v9 = sub_1D33DD930;
  }

  else
  {

    v7 = *(v4 + 56);
    v8 = *(v4 + 64);
    v9 = sub_1D33DCA5C;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1D33DCA5C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D33DCABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[4] = a2;
  v4[2] = a1;
  swift_getObjectType();
  v6 = sub_1D33DE914();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D33DCB54, v6, v5);
}

uint64_t sub_1D33DCB54()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v0[9] = v4;
  v4[2] = v2;
  v4[3] = v0 + 2;
  v4[4] = v3;
  v4[5] = v1;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  v0[10] = v6;
  v7 = sub_1D33DD27C();
  *v6 = v0;
  v6[1] = sub_1D33DCC64;

  return MEMORY[0x1EEE6DE38](v0 + 3, v3, v1, 0xD000000000000015, 0x80000001D33E8520, sub_1D33DD270, v4, v7);
}

uint64_t sub_1D33DCC64()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v9 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_1D33DCDE8;
  }

  else
  {
    v7 = v2[9];

    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_1D33DCD80;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1D33DCD80()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D33DCDE8()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);
  v3 = *(v0 + 88);

  return v2();
}

uint64_t sub_1D33DCE78(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - v7;
  v9 = *v2;
  v10 = sub_1D33DE9B4();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  type metadata accessor for TUActor();
  inited = swift_initStaticObject();
  v12 = sub_1D33682A0();
  v13 = swift_allocObject();
  v13[2] = inited;
  v13[3] = v12;
  v13[4] = v9;
  v13[5] = a1;
  v13[6] = a2;

  sub_1D333DD88(0, 0, v8, &unk_1D33E5868, v13);
}

uint64_t sub_1D33DCFC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D334CF9C;

  return sub_1D33DC718(a1, v4, v5, v6, v7, v8);
}

void sub_1D33DD090(uint64_t a1, void *a2, void **a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7620D0, &qword_1D33E5878);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = aBlock - v13;
  v15 = *a3;
  (*(v11 + 16))(aBlock - v13, a1, v10);
  v16 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;
  (*(v11 + 32))(v17 + v16, v14, v10);
  aBlock[4] = sub_1D33DD444;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D33DD6C8;
  aBlock[3] = &block_descriptor_6;
  v18 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  [a2 dialWithRequest:v15 completion:v18];
  _Block_release(v18);
}

unint64_t sub_1D33DD27C()
{
  result = qword_1EC761FD0;
  if (!qword_1EC761FD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC761FD0);
  }

  return result;
}

void sub_1D33DD2C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v7 = objc_allocWithZone(MEMORY[0x1E69D8A40]);
    v8 = a1;
    v9 = [v7 initWithCall_];
    ObjectType = swift_getObjectType();
    v11 = MEMORY[0x1EEE9AC00](ObjectType);
    v14[8] = a4;
    v14[9] = v9;
    v14[2] = MEMORY[0x1EEE9AC00](v11);
    v14[3] = a3;
    v14[4] = sub_1D33DD788;
    v14[5] = v12;
    sub_1D33DD514(sub_1D33DD790, v14, "CallsAppServices/TUCallCenter_Async.swift", 41, 2, 43, v13, MEMORY[0x1E69E7CA8] + 8, a3);
  }

  else
  {
    sub_1D33DD734();
    swift_allocError();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7620D0, &qword_1D33E5878);
    sub_1D33DE924();
  }
}

void sub_1D33DD444(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7620D0, &qword_1D33E5878) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_1D33DD2C8(a1, v4, v5, v6);
}

uint64_t sub_1D33DD4C4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7620D0, &qword_1D33E5878);
  return sub_1D33DE934();
}

uint64_t sub_1D33DD514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1D33DE914();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v15 = swift_allocObject();
  v15[2] = a7;
  v15[3] = a8;
  v15[4] = a9;
  v15[5] = a1;
  v15[6] = a2;
  sub_1D33DD7EC(sub_1D33DD7C4, v15, v9, a7, a8, a9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_1D33DEF24();
    MEMORY[0x1D38B6ED0](0xD00000000000003FLL, 0x80000001D33E8590);
    sub_1D33DF194();
    MEMORY[0x1D38B6ED0](46, 0xE100000000000000);
    result = sub_1D33DF0D4();
    __break(1u);
  }

  return result;
}

void sub_1D33DD6C8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

unint64_t sub_1D33DD734()
{
  result = qword_1EC7620D8;
  if (!qword_1EC7620D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7620D8);
  }

  return result;
}

uint64_t sub_1D33DD790(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  return v3(a1, v2);
}

uint64_t sub_1D33DD7C4()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  return v1();
}

uint64_t sub_1D33DD7EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a1;
  v12[6] = a2;

  v14 = a3;
  sub_1D33DD89C(&v14);
}

uint64_t sub_1D33DD89C(void *a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  return v2(*a1);
}

unint64_t sub_1D33DD8DC()
{
  result = qword_1EC7620E0;
  if (!qword_1EC7620E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7620E0);
  }

  return result;
}

uint64_t sub_1D33DD984()
{
  v0 = sub_1D33DE464();
  __swift_allocate_value_buffer(v0, qword_1EC762148);
  __swift_project_value_buffer(v0, qword_1EC762148);
  return sub_1D33DE454();
}

uint64_t sub_1D33DDA04()
{
  v0 = sub_1D33DE464();
  __swift_allocate_value_buffer(v0, qword_1EC762160);
  __swift_project_value_buffer(v0, qword_1EC762160);
  return sub_1D33DE454();
}