uint64_t sub_1D78924B4()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t sub_1D7892594()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t sub_1D789265C()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

void *sub_1D7892740(void *a1, uint64_t a2, unint64_t *a3)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v4 = a1;
    v5 = sub_1D78B6514();

    if (v5)
    {
      sub_1D773F004(0, a3);
      swift_dynamicCast();
      return v12;
    }
  }

  else if (*(a2 + 16))
  {
    v8 = sub_1D777BC98(a1);
    if (v9)
    {
      v10 = *(*(a2 + 56) + 8 * v8);
      v11 = v10;
      return v10;
    }
  }

  return 0;
}

uint64_t ArticlePurchaseOffer.purchaseID.getter()
{
  v1 = *v0;

  return v1;
}

void sub_1D789286C(void *a1)
{
  v3 = type metadata accessor for OfferAction();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*(v1 + 16) configuration];
  if (!v7)
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    return;
  }

  v8 = v7;
  if (([v7 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
    return;
  }

  v9 = [v8 paidBundleConfig];
  swift_unknownObjectRelease();
  v10 = [a1 headline];
  if (!v10)
  {
    goto LABEL_60;
  }

  v11 = v10;
  if (([v10 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();

    return;
  }

  v12 = [v11 role];
  swift_unknownObjectRelease();
  v69 = v9;
  if (v12 == 2)
  {
    v13 = 3;
  }

  else
  {
    if (v12 != 3)
    {

      return;
    }

    v13 = 2;
  }

  v67 = v13;
  v68 = v1;
  v14 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  LOBYTE(v73[0]) = 6;
  v16 = *(v14 + 24);
  swift_unknownObjectRetain();
  v17 = v16(v73, ObjectType, v14);
  swift_unknownObjectRelease();
  if (v17)
  {
    v18 = v69;
    v19 = [v69 servicesBundleSubscriptionButtonConfigurationsByType];
    if (v19)
    {
      goto LABEL_13;
    }

LABEL_19:

    return;
  }

  v18 = v69;
  v19 = [v69 subscriptionButtonConfigurationsByType];
  if (!v19)
  {
    goto LABEL_19;
  }

LABEL_13:
  v20 = v19;
  sub_1D773F004(0, &qword_1EE08FBD0);
  sub_1D773F004(0, &qword_1EE08E558);
  sub_1D778FD3C();
  v21 = sub_1D78B5BC4();

  v22 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  v23 = [v22 initWithUnsignedInteger_];
  v24 = sub_1D7892740(v23, v21, &qword_1EE08E558);

  v25 = v68;
  if (!v24)
  {

    return;
  }

  v67 = v24;
  v26 = [v24 targetType];
  v27 = v69;
  if (v26 > 1)
  {
    if (v26 != 2)
    {
      if (v26 == 3)
      {
        goto LABEL_24;
      }

LABEL_50:

      return;
    }

    v46 = [v69 offeredBundlePurchaseIDs];
    if (!v46)
    {
      goto LABEL_50;
    }

    v47 = v46;
    v48 = sub_1D78B5EB4();

    v49 = sub_1D78930B0(v25);
    v50 = *(v48 + 16);
    if (!v50)
    {
LABEL_53:

      return;
    }

    v51 = v49;
    v52 = 0;
    v53 = (v48 + 40);
    v54 = MEMORY[0x1E69E7CC0];
    while (v52 < *(v48 + 16))
    {
      v55 = v54;
      v57 = *(v53 - 1);
      v56 = *v53;

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v54 = v55;
      }

      else
      {
        v54 = sub_1D777BA7C(0, *(v55 + 2) + 1, 1, v55);
      }

      v59 = *(v54 + 2);
      v58 = *(v54 + 3);
      if (v59 >= v58 >> 1)
      {
        v54 = sub_1D777BA7C((v58 > 1), v59 + 1, 1, v54);
      }

      ++v52;
      *(v54 + 2) = v59 + 1;
      v60 = &v54[24 * v59];
      *(v60 + 4) = v57;
      *(v60 + 5) = v56;
      *(v60 + 6) = v51;
      v53 += 2;
      if (v50 == v52)
      {
        goto LABEL_53;
      }
    }

LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (!v26)
  {
    sub_1D78B6084();
    sub_1D773F004(0, &qword_1EE08FB80);
    v45 = sub_1D78B6284();
    sub_1D78B42C4();

    return;
  }

  if (v26 != 1)
  {
    goto LABEL_50;
  }

LABEL_24:
  v28 = *(v25 + 32);
  v29 = swift_getObjectType();
  v70 = 6;
  v30 = *(v28 + 32);
  swift_unknownObjectRetain();
  v30(v71, &v70, v29, v28);
  swift_unknownObjectRelease();
  v80 = v71[8];
  v81 = v71[9];
  v82 = v72;
  v76 = v71[4];
  v77 = v71[5];
  v78 = v71[6];
  v79 = v71[7];
  v73[0] = v71[0];
  v73[1] = v71[1];
  v74 = v71[2];
  v75 = v71[3];
  if (sub_1D775F3CC(v73) != 1)
  {
    v38 = v74;
    v39 = *(v74 + 16);
    v40 = v69;
    if (!v39)
    {
LABEL_56:

      sub_1D7782600(v71);
      return;
    }

    v41 = 0;
    v68 = v74 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    while (1)
    {
      if (v41 >= *(v38 + 16))
      {
        __break(1u);
        goto LABEL_58;
      }

      sub_1D778CF14(v68 + *(v4 + 72) * v41, v6);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_1D77826E8();

          v43 = sub_1D78B3294();
          (*(*(v43 - 8) + 8))(v6, v43);
        }
      }

      else
      {
        v44 = *(v6 + 2);
        v65[1] = *(v6 + 10);
        v66 = v6[90];

        if ((v66 - 1) < 2)
        {
          v61 = AMSBuyParams.purchaseID.getter();
          v63 = v62;

          v40 = v69;
          if (!v63)
          {
            goto LABEL_56;
          }

          sub_1D7893240(0, &qword_1EE08E4D0, &type metadata for ArticlePurchaseOffer, MEMORY[0x1E69E6F90]);
          v64 = swift_allocObject();
          *(v64 + 16) = xmmword_1D78BCAB0;
          *(v64 + 32) = v61;
          *(v64 + 40) = v63;
          *(v64 + 48) = 2;
          sub_1D7782600(v71);

LABEL_28:
          return;
        }

        v40 = v69;
      }

      if (v39 == ++v41)
      {
        goto LABEL_56;
      }
    }
  }

  v31 = v69;
  v32 = [v69 offeredBundlePurchaseIDs];
  if (v32)
  {
    v33 = v32;
    v34 = sub_1D78B5EB4();

    if (v34[2])
    {
      v36 = v34[4];
      v35 = v34[5];

      sub_1D7893240(0, &qword_1EE08E4D0, &type metadata for ArticlePurchaseOffer, MEMORY[0x1E69E6F90]);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_1D78BCAB0;
      *(v37 + 32) = v36;
      *(v37 + 40) = v35;
      *(v37 + 48) = 1;

      goto LABEL_28;
    }
  }

  else
  {
  }
}

uint64_t sub_1D78930B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  ObjectType = swift_getObjectType();
  LOBYTE(v9[0]) = 4;
  v3 = *(v1 + 40);
  swift_unknownObjectRetain();
  v3(v7, v9, ObjectType, v1);
  swift_unknownObjectRelease();
  v16 = v7[8];
  v17 = v7[9];
  v18 = v8;
  v12 = v7[4];
  v13 = v7[5];
  v14 = v7[6];
  v15 = v7[7];
  v9[0] = v7[0];
  v9[1] = v7[1];
  v10 = v7[2];
  v11 = v7[3];
  if (sub_1D775F3CC(v9) == 1)
  {
    return 1;
  }

  if (BYTE8(v10))
  {
    sub_1D7782600(v7);
    return 1;
  }

  if (*(&v13 + 1))
  {
    if (__PAIR128__(0x80000001D78CF100, 0xD000000000000025) == v16)
    {
      sub_1D7782600(v7);
      return 4;
    }

    v5 = sub_1D78B6724();
  }

  else
  {
    v5 = AMSMarketingItem.isBundleHardwareOffer()();
  }

  v6 = v5;
  sub_1D7782600(v7);
  if ((v6 & 1) == 0)
  {
    return 1;
  }

  return 4;
}

void sub_1D7893240(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t ConfigurableOfferConfig.isBundleHardwareOffer.getter()
{
  if (*(v0 + 48) == 0xD000000000000025 && 0x80000001D78CF100 == *(v0 + 56))
  {
    return 1;
  }

  else
  {
    return sub_1D78B6724();
  }
}

uint64_t ConfigurableOfferConfig.isCIPOffer.getter()
{
  if (*(v0 + 48) == 0xD000000000000019 && 0x80000001D78CF0C0 == *(v0 + 56))
  {
    return 1;
  }

  else
  {
    return sub_1D78B6724();
  }
}

uint64_t ConfigurableOfferConfig.isServicesBundle.getter()
{
  if (*(v0 + 48) == 0x7365636976726573 && *(v0 + 56) == 0xEF656C646E75622DLL)
  {
    return 1;
  }

  else
  {
    return sub_1D78B6724();
  }
}

uint64_t ConfigurableOfferConfig.isNewsPlus.getter()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  if (v2 == 0x756C702D7377656ELL && v1 == 0xE900000000000073)
  {
    return 1;
  }

  v4 = sub_1D78B6724();
  v5 = v2 == 0x756C702D7377656ELL && v1 == 0xEF6F72746E692D73;
  v6 = v5;
  if ((v4 & 1) != 0 || v6)
  {
    return 1;
  }

  return sub_1D78B6724();
}

uint64_t ConfigurableOfferConfig.isLegacyOffer.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = v1 == 0xD000000000000025 && 0x80000001D78CF100 == v2;
  if (v3 || (sub_1D78B6724() & 1) != 0 || v1 == 0xD000000000000019 && 0x80000001D78CF0C0 == v2)
  {
    return 1;
  }

  if ((sub_1D78B6724() & 1) != 0 || v1 == 0x7365636976726573 && v2 == 0xEF656C646E75622DLL)
  {
    return 1;
  }

  if ((sub_1D78B6724() & 1) != 0 || v1 == 0x756C702D7377656ELL && v2 == 0xE900000000000073)
  {
    return 1;
  }

  v5 = sub_1D78B6724();
  v6 = v1 == 0x756C702D7377656ELL && v2 == 0xEF6F72746E692D73;
  v7 = v6;
  if ((v5 & 1) != 0 || v7)
  {
    return 1;
  }

  return sub_1D78B6724();
}

uint64_t ConfigurableOfferConfig.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v20 = v0[7];
  v21 = v0[6];

  sub_1D78B6454();
  MEMORY[0x1DA702FF0](0x203A656C746974, 0xE700000000000000);
  MEMORY[0x1DA702FF0](v1, v2);
  MEMORY[0x1DA702FF0](0xD000000000000019, 0x80000001D78E0CD0);
  v6 = sub_1D78B5BD4();
  MEMORY[0x1DA702FF0](v6);

  MEMORY[0x1DA702FF0](0xD000000000000023, 0x80000001D78E0CF0);
  if (v3)
  {
    v7 = v3;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  sub_1D775D41C();
  v9 = MEMORY[0x1DA703160](v7, v8);
  v11 = v10;

  MEMORY[0x1DA702FF0](v9, v11);

  MEMORY[0x1DA702FF0](0xD000000000000015, 0x80000001D78E0D20);
  MEMORY[0x1DA702FF0](v4, v5);
  MEMORY[0x1DA702FF0](0xD000000000000013, 0x80000001D78E0D40);
  MEMORY[0x1DA702FF0](v21, v20);
  MEMORY[0x1DA702FF0](0xD000000000000018, 0x80000001D78E0D60);

  v12 = sub_1D78B5F74();
  v14 = v13;

  MEMORY[0x1DA702FF0](v12, v14);

  MEMORY[0x1DA702FF0](0xD000000000000018, 0x80000001D78E0D80);

  v15 = sub_1D78B5F74();
  v17 = v16;

  MEMORY[0x1DA702FF0](v15, v17);

  MEMORY[0x1DA702FF0](0x61646174656D0A2CLL, 0xEC000000203A6174);
  sub_1D7894E58(0, &qword_1EE08E960, &type metadata for ConfigurableOfferConfigMetadata, MEMORY[0x1E69E6720]);

  v18 = sub_1D78B5CC4();
  MEMORY[0x1DA702FF0](v18);

  return 0;
}

void sub_1D78938D0()
{
  if (!qword_1EE08F258)
  {
    sub_1D775CB38();
    sub_1D7893938();
    v0 = sub_1D78B3A14();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE08F258);
    }
  }
}

unint64_t sub_1D7893938()
{
  result = qword_1EE08EC98;
  if (!qword_1EE08EC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08EC98);
  }

  return result;
}

unint64_t sub_1D789398C()
{
  result = qword_1EE08F260;
  if (!qword_1EE08F260)
  {
    sub_1D78938D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08F260);
  }

  return result;
}

uint64_t sub_1D78939E4(uint64_t a1)
{
  sub_1D7893E98(0, &qword_1EE08F250, sub_1D78938D0, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7893A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73726566666FLL && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D78B6724();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D7893AF4(uint64_t a1)
{
  v2 = sub_1D775CA34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7893B30(uint64_t a1)
{
  v2 = sub_1D775CA34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ConfigurableOfferConfigs.encode(to:)(void *a1)
{
  sub_1D775C9CC(0, &qword_1EC9CB878, sub_1D775CA34, &type metadata for ConfigurableOfferConfigs.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D775CA34();

  sub_1D78B6884();
  v10[3] = v8;
  sub_1D7894E58(0, &qword_1EE08E5E8, &type metadata for ConfigurableOfferConfig, MEMORY[0x1E69E62F8]);
  sub_1D7893D28();
  sub_1D78B6664();

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1D7893D28()
{
  result = qword_1EC9CB880;
  if (!qword_1EC9CB880)
  {
    sub_1D7894E58(255, &qword_1EE08E5E8, &type metadata for ConfigurableOfferConfig, MEMORY[0x1E69E62F8]);
    sub_1D7893938();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB880);
  }

  return result;
}

uint64_t ConfigurableOfferConfig.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ConfigurableOfferConfig.paywallIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ConfigurableOfferConfig.offerIdentifier.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void sub_1D7893E98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D7893EFC()
{
  result = qword_1EE08E5D8;
  if (!qword_1EE08E5D8)
  {
    sub_1D7893E98(255, &qword_1EE08E5E0, sub_1D775D41C, MEMORY[0x1E69E62F8]);
    sub_1D775D47C(&qword_1EE08E630, sub_1D775D4F4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08E5D8);
  }

  return result;
}

uint64_t sub_1D7893FDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D78957D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D7894010(uint64_t a1)
{
  v2 = sub_1D775D200();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D789404C(uint64_t a1)
{
  v2 = sub_1D775D200();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ConfigurableOfferConfig.encode(to:)(void *a1)
{
  sub_1D775C9CC(0, &qword_1EC9CB888, sub_1D775D200, &type metadata for ConfigurableOfferConfig.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - v6;
  v8 = v1[2];
  v23 = v1[3];
  v24 = v8;
  v9 = v1[4];
  v21 = v1[5];
  v22 = v9;
  v10 = v1[6];
  v19 = v1[7];
  v20 = v10;
  v11 = v1[8];
  v17 = v1[9];
  v18 = v11;
  v16 = v1[10];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D775D200();
  sub_1D78B6884();
  LOBYTE(v27) = 0;
  v12 = v25;
  sub_1D78B6684();
  if (v12)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v13 = v23;
  v27 = v24;
  v26 = 1;
  sub_1D775D41C();
  sub_1D775D47C(&qword_1EC9CB890, sub_1D7894478);
  sub_1D78B66B4();
  v27 = v13;
  v26 = 2;
  sub_1D7893E98(0, &qword_1EE08E5E0, sub_1D775D41C, MEMORY[0x1E69E62F8]);
  sub_1D78944CC();
  sub_1D78B6664();
  LOBYTE(v27) = 3;
  sub_1D78B6684();
  LOBYTE(v27) = 4;
  sub_1D78B6684();
  v27 = v18;
  v26 = 5;
  sub_1D775D7EC();
  sub_1D775D844(&qword_1EC9CB8A8);
  sub_1D78B6664();
  v27 = v17;
  v26 = 6;
  sub_1D78B6664();
  v27 = v16;
  v26 = 7;
  sub_1D78945AC();

  sub_1D78B6664();

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1D7894478()
{
  result = qword_1EC9CB898;
  if (!qword_1EC9CB898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB898);
  }

  return result;
}

unint64_t sub_1D78944CC()
{
  result = qword_1EC9CB8A0;
  if (!qword_1EC9CB8A0)
  {
    sub_1D7893E98(255, &qword_1EE08E5E0, sub_1D775D41C, MEMORY[0x1E69E62F8]);
    sub_1D775D47C(&qword_1EC9CB890, sub_1D7894478);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB8A0);
  }

  return result;
}

unint64_t sub_1D78945AC()
{
  result = qword_1EC9CB8B0;
  if (!qword_1EC9CB8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB8B0);
  }

  return result;
}

void sub_1D7894618()
{
  if (!qword_1EC9CB8B8)
  {
    sub_1D7894688();
    sub_1D78B6484();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9CB8B8);
    }
  }
}

unint64_t sub_1D7894688()
{
  result = qword_1EC9CB8C0;
  if (!qword_1EC9CB8C0)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EC9CB8C0);
  }

  return result;
}

uint64_t sub_1D78946D4()
{
  if (*v0)
  {
    return 0x676E69727473;
  }

  else
  {
    return 0x72656765746E69;
  }
}

uint64_t sub_1D789470C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x72656765746E69 && a2 == 0xE700000000000000;
  if (v6 || (sub_1D78B6724() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x676E69727473 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D78B6724();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D78947E4(uint64_t a1)
{
  v2 = sub_1D7894DE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7894820(uint64_t a1)
{
  v2 = sub_1D7894DE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D7894868(uint64_t a1)
{
  v2 = sub_1D7894D90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D78948A4(uint64_t a1)
{
  v2 = sub_1D7894D90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D78948E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D78B6724();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D7894960(uint64_t a1)
{
  v2 = sub_1D7894D3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D789499C(uint64_t a1)
{
  v2 = sub_1D7894D3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MerchandisingItemValue.encode(to:)(void *a1)
{
  v3 = MEMORY[0x1E69E6F58];
  sub_1D775C9CC(0, &qword_1EC9CB8C8, sub_1D7894D3C, &type metadata for MerchandisingItemValue.StringCodingKeys, MEMORY[0x1E69E6F58]);
  v23 = *(v4 - 8);
  v24 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v22 = v19 - v5;
  sub_1D775C9CC(0, &qword_1EC9CB8D8, sub_1D7894D90, &type metadata for MerchandisingItemValue.IntegerCodingKeys, v3);
  v20 = *(v6 - 8);
  v21 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v19 - v7;
  sub_1D775C9CC(0, &qword_1EC9CB8E8, sub_1D7894DE4, &type metadata for MerchandisingItemValue.CodingKeys, v3);
  v10 = v9;
  v26 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v19 - v11;
  v13 = v1[1];
  v25 = *v1;
  v19[1] = v13;
  v14 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7894DE4();
  sub_1D78B6884();
  if (v14 == 1)
  {
    v28 = 1;
    sub_1D7894D3C();
    v15 = v22;
    sub_1D78B6644();
    v16 = v24;
    sub_1D78B6684();
    (*(v23 + 8))(v15, v16);
  }

  else
  {
    v27 = 0;
    sub_1D7894D90();
    sub_1D78B6644();
    v17 = v21;
    sub_1D78B66A4();
    (*(v20 + 8))(v8, v17);
  }

  return (*(v26 + 8))(v12, v10);
}

unint64_t sub_1D7894D3C()
{
  result = qword_1EC9CB8D0;
  if (!qword_1EC9CB8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB8D0);
  }

  return result;
}

unint64_t sub_1D7894D90()
{
  result = qword_1EC9CB8E0;
  if (!qword_1EC9CB8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB8E0);
  }

  return result;
}

unint64_t sub_1D7894DE4()
{
  result = qword_1EC9CB8F0;
  if (!qword_1EC9CB8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB8F0);
  }

  return result;
}

void sub_1D7894E58(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D7894EA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726F7463656C6573 && a2 == 0xE900000000000073)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D78B6724();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D7894F38(uint64_t a1)
{
  v2 = sub_1D775DB30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7894F74(uint64_t a1)
{
  v2 = sub_1D775DB30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ConfigurableOfferConfigMetadata.encode(to:)(void *a1)
{
  sub_1D775C9CC(0, &qword_1EC9CB8F8, sub_1D775DB30, &type metadata for ConfigurableOfferConfigMetadata.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D775DB30();

  sub_1D78B6884();
  v10[3] = v8;
  sub_1D7894E58(0, &qword_1EE090010, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1D775DCB0(&qword_1EC9C9888);
  sub_1D78B66B4();

  return (*(v5 + 8))(v7, v4);
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ConfigurableOfferConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConfigurableOfferConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D78953BC()
{
  result = qword_1EC9CB900;
  if (!qword_1EC9CB900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB900);
  }

  return result;
}

unint64_t sub_1D7895414()
{
  result = qword_1EC9CB908;
  if (!qword_1EC9CB908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB908);
  }

  return result;
}

unint64_t sub_1D789546C()
{
  result = qword_1EC9CB910;
  if (!qword_1EC9CB910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB910);
  }

  return result;
}

unint64_t sub_1D78954C4()
{
  result = qword_1EC9CB918;
  if (!qword_1EC9CB918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB918);
  }

  return result;
}

unint64_t sub_1D789551C()
{
  result = qword_1EC9CB920;
  if (!qword_1EC9CB920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB920);
  }

  return result;
}

unint64_t sub_1D7895574()
{
  result = qword_1EC9CB928;
  if (!qword_1EC9CB928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB928);
  }

  return result;
}

unint64_t sub_1D78955CC()
{
  result = qword_1EC9CB930;
  if (!qword_1EC9CB930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB930);
  }

  return result;
}

unint64_t sub_1D7895624()
{
  result = qword_1EC9CB938;
  if (!qword_1EC9CB938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB938);
  }

  return result;
}

unint64_t sub_1D789567C()
{
  result = qword_1EC9CB940;
  if (!qword_1EC9CB940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB940);
  }

  return result;
}

unint64_t sub_1D78956D4()
{
  result = qword_1EC9CB948;
  if (!qword_1EC9CB948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB948);
  }

  return result;
}

unint64_t sub_1D789572C()
{
  result = qword_1EC9CB950;
  if (!qword_1EC9CB950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB950);
  }

  return result;
}

unint64_t sub_1D7895784()
{
  result = qword_1EC9CB958;
  if (!qword_1EC9CB958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB958);
  }

  return result;
}

uint64_t sub_1D78957D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D78B6724() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D78E0970 == a2 || (sub_1D78B6724() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001D78E0DE0 == a2 || (sub_1D78B6724() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D78E0E00 == a2 || (sub_1D78B6724() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656449726566666FLL && a2 == 0xEF7265696669746ELL || (sub_1D78B6724() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D78E0E20 == a2 || (sub_1D78B6724() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D78E0E40 == a2 || (sub_1D78B6724() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_1D78B6724();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

id sub_1D7895A80()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v1 setAlignment_];
  [v1 setLineBreakMode_];
  [v1 setMaximumLineHeight_];
  [v1 setMinimumLineHeight_];
  sub_1D778AF9C();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D78BF690;
  v3 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v4 = objc_opt_self();
  v5 = *MEMORY[0x1E69DB978];
  v6 = v3;
  v7 = [v4 systemFontOfSize:15.0 weight:v5];
  v8 = sub_1D773F004(0, &qword_1EE08FC10);
  *(inited + 40) = v7;
  v9 = *MEMORY[0x1E69DB688];
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  v10 = sub_1D773F004(0, &unk_1EE08FCD8);
  v11 = MEMORY[0x1E69DB650];
  *(inited + 80) = v1;
  v12 = *v11;
  *(inited + 104) = v10;
  *(inited + 112) = v12;
  v14 = v0[5];
  v13 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v14);
  v15 = *(v13 + 24);
  v16 = v9;
  v17 = v1;
  v18 = v12;
  v15(v29, v14, v13);
  v19 = v29[0];
  v20 = v29[1];
  v21 = v29[2];
  v22 = v29[3];
  v23 = v29[4];

  *(inited + 144) = sub_1D773F004(0, &qword_1EE08FC00);
  *(inited + 120) = v20;
  sub_1D77FED68(inited);
  swift_setDeallocating();
  sub_1D778AFF4();
  swift_arrayDestroy();
  v24 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v25 = sub_1D78B5C44();
  type metadata accessor for Key(0);
  sub_1D778B060();
  v26 = sub_1D78B5BB4();

  v27 = [v24 initWithString:v25 attributes:v26];

  return v27;
}

void sub_1D7895D38(void *a1)
{
  v3 = [a1 titleLabel];
  if (v3)
  {
    v4 = v3;
    [v3 setTextAlignment_];
  }

  v5 = [a1 titleLabel];
  if (v5)
  {
    v6 = v5;
    [v5 setNumberOfLines_];
  }

  v7 = [a1 titleLabel];
  if (v7)
  {
    v8 = v7;
    [v7 setAdjustsFontSizeToFitWidth_];
  }

  v9 = [a1 titleLabel];
  if (v9)
  {
    v10 = v9;
    [objc_opt_self() labelFontSize];
    [v10 setMinimumScaleFactor_];
  }

  v12 = v1[5];
  v13 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v12);
  (*(v13 + 24))(v19, v12, v13);
  v14 = v19[0];
  v15 = v19[1];
  v16 = v19[2];
  v18 = v19[3];
  v17 = v19[4];

  [a1 setBackgroundColor_];
}

id sub_1D7895ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_1D778AF9C();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D78BCB50;
    v6 = *MEMORY[0x1E69DB650];
    *(inited + 32) = *MEMORY[0x1E69DB650];
    v7 = v4[5];
    v8 = v4[6];
    __swift_project_boxed_opaque_existential_1(v4 + 2, v7);
    v9 = *(v8 + 16);
    v52 = v4;
    v53 = v6;
    v9(v54, v7, v8);
    v10 = v54[6];
    sub_1D7784CF4(v54);
    v51 = sub_1D773F004(0, &qword_1EE08FC00);
    *(inited + 40) = v10;
    v11 = *MEMORY[0x1E69DB648];
    *(inited + 64) = v51;
    *(inited + 72) = v11;
    v12 = objc_opt_self();
    v13 = *MEMORY[0x1E69DB958];
    v14 = v11;
    v15 = [v12 systemFontOfSize:13.0 weight:v13];
    v16 = sub_1D773F004(0, &qword_1EE08FC10);
    *(inited + 104) = v16;
    *(inited + 80) = v15;
    sub_1D77FED68(inited);
    swift_setDeallocating();
    sub_1D778AFF4();
    swift_arrayDestroy();
    v17 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v18 = sub_1D78B5C44();
    type metadata accessor for Key(0);
    sub_1D778B060();
    v19 = sub_1D78B5BB4();

    v20 = [v17 initWithString:v18 attributes:v19];

    v21 = swift_initStackObject();
    *(v21 + 16) = xmmword_1D78BCB50;
    *(v21 + 32) = v14;
    *(v21 + 40) = [v12 systemFontOfSize_];
    *(v21 + 64) = v16;
    *(v21 + 72) = v53;
    v22 = v52[5];
    v23 = v52[6];
    __swift_project_boxed_opaque_existential_1(v52 + 2, v22);
    (*(v23 + 16))(v55, v22, v23);
    v24 = v56;
    sub_1D7784CF4(v55);
    *(v21 + 104) = v51;
    *(v21 + 80) = v24;
    sub_1D77FED68(v21);
    swift_setDeallocating();
    swift_arrayDestroy();
    v25 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v26 = sub_1D78B5C44();
    v27 = sub_1D78B5BB4();

    v28 = [v25 initWithString:v26 attributes:v27];

    v29 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
    v30 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v31 = sub_1D78B5C44();
    v32 = [v30 initWithString_];

    [v29 appendAttributedString_];
    [v29 appendAttributedString_];
  }

  else
  {
    sub_1D778AF9C();
    v33 = swift_initStackObject();
    *(v33 + 16) = xmmword_1D78BCB50;
    v34 = *MEMORY[0x1E69DB648];
    *(v33 + 32) = *MEMORY[0x1E69DB648];
    v35 = objc_opt_self();
    v36 = *MEMORY[0x1E69DB958];
    v37 = v34;
    v38 = [v35 systemFontOfSize:13.0 weight:v36];
    v39 = sub_1D773F004(0, &qword_1EE08FC10);
    v40 = MEMORY[0x1E69DB650];
    *(v33 + 40) = v38;
    v41 = *v40;
    *(v33 + 64) = v39;
    *(v33 + 72) = v41;
    v42 = v4[5];
    v43 = v4[6];
    __swift_project_boxed_opaque_existential_1(v4 + 2, v42);
    v44 = *(v43 + 16);
    v45 = v41;
    v44(v55, v42, v43);
    v46 = v56;
    sub_1D7784CF4(v55);
    *(v33 + 104) = sub_1D773F004(0, &qword_1EE08FC00);
    *(v33 + 80) = v46;
    sub_1D77FED68(v33);
    swift_setDeallocating();
    sub_1D778AFF4();
    swift_arrayDestroy();
    v47 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v48 = sub_1D78B5C44();
    type metadata accessor for Key(0);
    sub_1D778B060();
    v49 = sub_1D78B5BB4();

    v29 = [v47 initWithString:v48 attributes:v49];
  }

  return v29;
}

id sub_1D7896480()
{
  sub_1D778AF9C();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D78BCB50;
  v2 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 systemFontOfSize_];
  v6 = sub_1D773F004(0, &qword_1EE08FC10);
  v7 = MEMORY[0x1E69DB650];
  *(inited + 40) = v5;
  v8 = *v7;
  *(inited + 64) = v6;
  *(inited + 72) = v8;
  v9 = v0[5];
  v10 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v9);
  v11 = *(v10 + 24);
  v12 = v8;
  v11(v23, v9, v10);
  v13 = v23[0];
  v14 = v23[1];
  v15 = v23[2];
  v16 = v23[3];
  v17 = v23[5];

  *(inited + 104) = sub_1D773F004(0, &qword_1EE08FC00);
  *(inited + 80) = v17;
  sub_1D77FED68(inited);
  swift_setDeallocating();
  sub_1D778AFF4();
  swift_arrayDestroy();
  v18 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v19 = sub_1D78B5C44();
  type metadata accessor for Key(0);
  sub_1D778B060();
  v20 = sub_1D78B5BB4();

  v21 = [v18 initWithString:v19 attributes:v20];

  return v21;
}

id sub_1D7896684()
{
  sub_1D778AF9C();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D78BCB50;
  v2 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 systemFontOfSize_];
  v6 = sub_1D773F004(0, &qword_1EE08FC10);
  v7 = MEMORY[0x1E69DB650];
  *(inited + 40) = v5;
  v8 = *v7;
  *(inited + 64) = v6;
  *(inited + 72) = v8;
  v9 = v0[5];
  v10 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v9);
  v11 = *(v10 + 24);
  v12 = v8;
  v11(v23, v9, v10);
  v13 = v23[0];
  v14 = v23[1];
  v15 = v23[2];
  v16 = v23[3];
  v17 = v23[4];

  *(inited + 104) = sub_1D773F004(0, &qword_1EE08FC00);
  *(inited + 80) = v17;
  sub_1D77FED68(inited);
  swift_setDeallocating();
  sub_1D778AFF4();
  swift_arrayDestroy();
  v18 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v19 = sub_1D78B5C44();
  type metadata accessor for Key(0);
  sub_1D778B060();
  v20 = sub_1D78B5BB4();

  v21 = [v18 initWithString:v19 attributes:v20];

  return v21;
}

uint64_t sub_1D7896888()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

id Assembly.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Assembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D7896980(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1D77CF6F0();
  sub_1D78B49E4();
  sub_1D77CF8C8(v10, v14);
  sub_1D7855678();
  sub_1D78B46F4();
  sub_1D77CF7F0(&v9, v15);
  sub_1D77CF8C8(v14, v16);
  sub_1D77CF7F0(v15, v17);
  v11[2] = v17[2];
  v12[0] = v18[0];
  *(v12 + 9) = *(v18 + 9);
  v11[0] = v17[0];
  v11[1] = v17[1];
  sub_1D7897148();
  v5 = sub_1D78B6014();
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC16NewsSubscription50HideMyEmailSignupBlueprintViewHeaderFooterProvider_headerRenderer), *(v3 + OBJC_IVAR____TtC16NewsSubscription50HideMyEmailSignupBlueprintViewHeaderFooterProvider_headerRenderer + 24));
  v6 = sub_1D78B4484();
  v13[4] = v16[4];
  v13[5] = v16[5];
  v13[6] = v16[6];
  v13[7] = v16[7];
  v13[0] = v16[0];
  v13[1] = v16[1];
  v13[2] = v16[2];
  v13[3] = v16[3];
  v7 = [a3 traitCollection];
  sub_1D78B0680(v11, v6, v13);
  sub_1D77CF924(v15);

  return v5;
}

uint64_t sub_1D7896AE0()
{
  v1 = v0;
  v2 = sub_1D78B4614();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D77CF6F0();
  sub_1D78B49E4();
  sub_1D77CF8C8(&v17, v21);
  sub_1D7855678();
  sub_1D78B46F4();
  sub_1D77CF7F0(v16, v22);
  sub_1D77CF8C8(v21, v23);
  sub_1D77CF7F0(v22, v24);
  v18[2] = v24[2];
  v19[0] = v25[0];
  *(v19 + 9) = *(v25 + 9);
  v18[0] = v24[0];
  v18[1] = v24[1];
  sub_1D78970AC();
  v6 = sub_1D78B6014();
  __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC16NewsSubscription50HideMyEmailSignupBlueprintViewHeaderFooterProvider_footerRenderer], *&v1[OBJC_IVAR____TtC16NewsSubscription50HideMyEmailSignupBlueprintViewHeaderFooterProvider_footerRenderer + 24]);
  v7 = sub_1D78B4484();
  v20[2] = v23[10];
  v20[3] = v23[11];
  v20[4] = v23[12];
  v20[5] = v23[13];
  v20[0] = v23[8];
  v20[1] = v23[9];
  sub_1D7800258(v18, v7, v20);

  v8 = sub_1D78B4484();
  v9 = *&v8[OBJC_IVAR____TtC16NewsSubscription36HideMyEmailSignupBlueprintFooterView_button];

  v10 = sub_1D78B4514();
  *(swift_allocObject() + 16) = v1;
  v11 = v1;

  v12 = sub_1D78B4484();
  v13 = *&v12[OBJC_IVAR____TtC16NewsSubscription36HideMyEmailSignupBlueprintFooterView_privacyLabel];

  [v13 setDelegate_];
  v14 = sub_1D78B4494();
  (*(v3 + 104))(v5, *MEMORY[0x1E69D7758], v2);
  sub_1D78B4624();

  sub_1D77CF924(v22);
  return v6;
}

uint64_t sub_1D7896DA4()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(*(result + OBJC_IVAR____TtC16NewsSubscription31HideMyEmailSignupViewController_eventHandler) + 40);
    ObjectType = swift_getObjectType();
    (*(v1 + 72))(ObjectType, v1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D7896EE4()
{
  sub_1D7897148();
  sub_1D78B6034();
  sub_1D78970AC();
  return sub_1D78B6034();
}

void sub_1D78970AC()
{
  if (!qword_1EC9CB9A0)
  {
    type metadata accessor for HideMyEmailSignupBlueprintFooterView();
    sub_1D78971DC(&qword_1EC9CB9A8, type metadata accessor for HideMyEmailSignupBlueprintFooterView);
    v0 = sub_1D78B44A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9CB9A0);
    }
  }
}

void sub_1D7897148()
{
  if (!qword_1EC9CB9B0)
  {
    type metadata accessor for HideMyEmailSignupBlueprintHeaderView();
    sub_1D78971DC(&qword_1EC9C9CF8, type metadata accessor for HideMyEmailSignupBlueprintHeaderView);
    v0 = sub_1D78B44A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9CB9B0);
    }
  }
}

uint64_t sub_1D78971DC(unint64_t *a1, void (*a2)(uint64_t))
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

NewsSubscription::PaywallContentType_optional __swiftcall PaywallContentType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D78B6594();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PaywallContentType.rawValue.getter()
{
  v1 = 0x6F69647561;
  if (*v0 != 1)
  {
    v1 = 0x657061707377656ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_1D78972DC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x6F69647561;
  if (v2 != 1)
  {
    v4 = 0x657061707377656ELL;
    v3 = 0xE900000000000072;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x746C7561666564;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6F69647561;
  if (*a2 != 1)
  {
    v8 = 0x657061707377656ELL;
    v7 = 0xE900000000000072;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x746C7561666564;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D78B6724();
  }

  return v11 & 1;
}

uint64_t sub_1D78973E0()
{
  sub_1D78B6814();
  sub_1D78B5D14();

  return sub_1D78B6844();
}

uint64_t sub_1D7897484()
{
  sub_1D78B5D14();
}

uint64_t sub_1D7897514()
{
  sub_1D78B6814();
  sub_1D78B5D14();

  return sub_1D78B6844();
}

void sub_1D78975C0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6F69647561;
  if (v2 != 1)
  {
    v5 = 0x657061707377656ELL;
    v4 = 0xE900000000000072;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746C7561666564;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t PaywallContentType.description.getter()
{
  v1 = 0x6F69647541;
  if (*v0 != 1)
  {
    v1 = 0x657061707377654ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746C7561666544;
  }
}

unint64_t sub_1D7897730()
{
  result = qword_1EC9CB9B8;
  if (!qword_1EC9CB9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB9B8);
  }

  return result;
}

uint64_t sub_1D7897784()
{
  v1 = 0x6F69647541;
  if (*v0 != 1)
  {
    v1 = 0x657061707377654ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746C7561666544;
  }
}

unint64_t sub_1D78977F0()
{
  result = qword_1EE08F090;
  if (!qword_1EE08F090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08F090);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ArticleAccess(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ArticleAccess(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1D78979A8(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1D78979C4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

id PaidBundleViaOfferSettings.__allocating_init(allowPaywalls:allowSubscriptionsDeeplink:allowMastheadBanner:allowIconBadgeMercury:allowLocalNotification:allowUpsell:allowAppLaunchUpsell:)(char a1, char a2, char a3, char a4, char a5, char a6, char a7)
{
  v15 = objc_allocWithZone(v7);
  v15[OBJC_IVAR____TtC16NewsSubscription26PaidBundleViaOfferSettings_allowPaywalls] = a1;
  v15[OBJC_IVAR____TtC16NewsSubscription26PaidBundleViaOfferSettings_allowSubscriptionsDeeplink] = a2;
  v15[OBJC_IVAR____TtC16NewsSubscription26PaidBundleViaOfferSettings_allowMastheadBanner] = a3;
  v15[OBJC_IVAR____TtC16NewsSubscription26PaidBundleViaOfferSettings_allowIconBadgeMercury] = a4;
  v15[OBJC_IVAR____TtC16NewsSubscription26PaidBundleViaOfferSettings_allowLocalNotification] = a5;
  v15[OBJC_IVAR____TtC16NewsSubscription26PaidBundleViaOfferSettings_allowUpsell] = a6;
  v15[OBJC_IVAR____TtC16NewsSubscription26PaidBundleViaOfferSettings_allowAppLaunchUpsell] = a7;
  v17.receiver = v15;
  v17.super_class = v7;
  return objc_msgSendSuper2(&v17, sel_init);
}

id PaidBundleViaOfferSettings.init(allowPaywalls:allowSubscriptionsDeeplink:allowMastheadBanner:allowIconBadgeMercury:allowLocalNotification:allowUpsell:allowAppLaunchUpsell:)(char a1, char a2, char a3, char a4, char a5, char a6, char a7)
{
  ObjectType = swift_getObjectType();
  v7[OBJC_IVAR____TtC16NewsSubscription26PaidBundleViaOfferSettings_allowPaywalls] = a1;
  v7[OBJC_IVAR____TtC16NewsSubscription26PaidBundleViaOfferSettings_allowSubscriptionsDeeplink] = a2;
  v7[OBJC_IVAR____TtC16NewsSubscription26PaidBundleViaOfferSettings_allowMastheadBanner] = a3;
  v7[OBJC_IVAR____TtC16NewsSubscription26PaidBundleViaOfferSettings_allowIconBadgeMercury] = a4;
  v7[OBJC_IVAR____TtC16NewsSubscription26PaidBundleViaOfferSettings_allowLocalNotification] = a5;
  v7[OBJC_IVAR____TtC16NewsSubscription26PaidBundleViaOfferSettings_allowUpsell] = a6;
  v7[OBJC_IVAR____TtC16NewsSubscription26PaidBundleViaOfferSettings_allowAppLaunchUpsell] = a7;
  v17.receiver = v7;
  v17.super_class = ObjectType;
  return objc_msgSendSuper2(&v17, sel_init);
}

id PaidBundleViaOfferSettings.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PaidBundleViaOfferSettings.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D7897CF8()
{
  sub_1D776ABA8(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  __swift_destroy_boxed_opaque_existential_1(v0 + 88);

  return swift_deallocClassInstance();
}

uint64_t AppLaunchMethod.isWidget.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AppLaunchMethod.IndirectMethod(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AppLaunchMethod(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7752650(v1, v8, type metadata accessor for AppLaunchMethod);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return 0;
  }

  sub_1D789A100(v8, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v10 = 1;
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    return 0;
  }

  v10 = 0;
LABEL_7:
  sub_1D789A164(v5, type metadata accessor for AppLaunchMethod.IndirectMethod);
  return v10;
}

uint64_t AppLaunchMethod.isNotification.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AppLaunchMethod.IndirectMethod(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AppLaunchMethod(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7752650(v1, v8, type metadata accessor for AppLaunchMethod);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return 0;
  }

  sub_1D789A100(v8, v5);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    sub_1D789A164(v5, type metadata accessor for AppLaunchMethod.IndirectMethod);
    return 0;
  }

  return 1;
}

uint64_t AppLaunchMethod.description.getter()
{
  v1 = v0;
  sub_1D7740644(0, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v29 = v2;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v29 - v6;
  v8 = sub_1D78B3294();
  v30 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AppLaunchMethod.IndirectMethod(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v29 - v16;
  v18 = type metadata accessor for AppLaunchMethod(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7752650(v1, v20, type metadata accessor for AppLaunchMethod);
  if ((*(v12 + 48))(v20, 1, v11) == 1)
  {
    return 0x746365726964;
  }

  sub_1D789A100(v20, v17);
  sub_1D7752650(v17, v15, type metadata accessor for AppLaunchMethod.IndirectMethod);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D77AE4DC(v15, v7);
      strcpy(v31, "other, url:(");
      BYTE5(v31[1]) = 0;
      HIWORD(v31[1]) = -5120;
      v23 = MEMORY[0x1E6968FB0];
      v24 = MEMORY[0x1E69E6720];
      sub_1D789A4E0(v7, v5, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D7740644);
      v25 = sub_1D78B5CC4();
      MEMORY[0x1DA702FF0](v25);

      MEMORY[0x1DA702FF0](41, 0xE100000000000000);
      v21 = v31[0];
      sub_1D789A554(v7, &unk_1EE096460, v23, v24, sub_1D7740644);
    }

    else
    {
      v21 = 0x6163696669746F6ELL;
    }
  }

  else
  {
    v26 = v30;
    (*(v30 + 32))(v10, v15, v8);
    v31[0] = 0;
    v31[1] = 0xE000000000000000;
    sub_1D78B6454();

    strcpy(v31, "widget, url:(");
    HIWORD(v31[1]) = -4864;
    sub_1D789A390(&qword_1EC9CB9F8, MEMORY[0x1E6968FB0]);
    v27 = sub_1D78B66E4();
    MEMORY[0x1DA702FF0](v27);

    MEMORY[0x1DA702FF0](41, 0xE100000000000000);
    v21 = v31[0];
    (*(v26 + 8))(v10, v8);
  }

  sub_1D789A164(v17, type metadata accessor for AppLaunchMethod.IndirectMethod);
  return v21;
}

uint64_t AppLaunchMethodChecker.launchMethod.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16NewsSubscription22AppLaunchMethodChecker_launchMethod;
  swift_beginAccess();
  return sub_1D7752650(v1 + v3, a1, type metadata accessor for AppLaunchMethod);
}

uint64_t AppLaunchMethodChecker.__allocating_init(appActivationURLHandler:notificationLaunchStatusProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  AppLaunchMethodChecker.init(appActivationURLHandler:notificationLaunchStatusProvider:)(a1, a2, a3);
  return v6;
}

uint64_t sub_1D7898624(uint64_t a1)
{
  v2 = type metadata accessor for AppLaunchMethod(0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = OBJC_IVAR____TtC16NewsSubscription22AppLaunchMethodChecker_launchMethod;
    swift_beginAccess();
    sub_1D7752650(v9 + v10, v7, type metadata accessor for AppLaunchMethod);
    v11 = type metadata accessor for AppLaunchMethod.IndirectMethod(0);
    v12 = *(*(v11 - 8) + 56);
    v12(v5, 1, 1, v11);
    v13 = _s16NewsSubscription15AppLaunchMethodO2eeoiySbAC_ACtFZ_0(v7, v5);
    sub_1D789A164(v5, type metadata accessor for AppLaunchMethod);
    sub_1D789A164(v7, type metadata accessor for AppLaunchMethod);
    if (v13)
    {
      sub_1D789A4E0(a1, v7, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D7740644);
      swift_storeEnumTagMultiPayload();
      v12(v7, 0, 1, v11);
      swift_beginAccess();
      sub_1D789A32C(v7, v9 + v10);
      swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_1D7898864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for AppLaunchMethod(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    sub_1D789A4E0(a1, &v19, &unk_1EC9CBA10, &unk_1EC9CBA18, &protocol descriptor for NotificationActionIdentifierProviding, sub_1D774EE48);
    if (v20)
    {
      sub_1D7741E34(&v19, v21);
      ObjectType = swift_getObjectType();
      v12 = (*(a4 + 16))(ObjectType, a4);
      v13 = v22;
      v14 = v23;
      __swift_project_boxed_opaque_existential_1(v21, v22);
      *&v19 = (*(v14 + 8))(v13, v14);
      *(&v19 + 1) = v15;
      MEMORY[0x1EEE9AC00](v19);
      *(&v18 - 2) = &v19;
      LOBYTE(v13) = sub_1D781DA18(sub_1D7782F40, (&v18 - 4), v12);

      if (v13)
      {
        v16 = type metadata accessor for AppLaunchMethod.IndirectMethod(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v16 - 8) + 56))(v8, 0, 1, v16);
        v17 = OBJC_IVAR____TtC16NewsSubscription22AppLaunchMethodChecker_launchMethod;
        swift_beginAccess();
        sub_1D789A32C(v8, v10 + v17);
        swift_endAccess();
      }

      return __swift_destroy_boxed_opaque_existential_1(v21);
    }

    else
    {

      return sub_1D789A554(&v19, &unk_1EC9CBA10, &unk_1EC9CBA18, &protocol descriptor for NotificationActionIdentifierProviding, sub_1D774EE48);
    }
  }

  return result;
}

uint64_t AppLaunchMethodChecker.deinit()
{

  sub_1D789A164(v0 + OBJC_IVAR____TtC16NewsSubscription22AppLaunchMethodChecker_launchMethod, type metadata accessor for AppLaunchMethod);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t AppLaunchMethodChecker.__deallocating_deinit()
{

  sub_1D789A164(v0 + OBJC_IVAR____TtC16NewsSubscription22AppLaunchMethodChecker_launchMethod, type metadata accessor for AppLaunchMethod);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t AppLaunchMethodChecker.patterns.getter()
{
  v0 = MEMORY[0x1E69E6F90];
  sub_1D7740644(0, &qword_1EE08FAA8, MEMORY[0x1E69D6718], MEMORY[0x1E69E6F90]);
  sub_1D78B3DA4();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D78BCAB0;
  sub_1D7740644(0, &qword_1EE08E4E0, MEMORY[0x1E69D66F8], v0);
  v2 = sub_1D78B3D74();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D78BCAB0;
  v6 = (v5 + v4);
  *v6 = sub_1D78B5C74();
  v6[1] = v7;
  (*(v3 + 104))(v6, *MEMORY[0x1E69D66F0], v2);
  sub_1D789A1D8(MEMORY[0x1E69E7CC0]);
  sub_1D78B3D84();
  return v1;
}

uint64_t AppLaunchMethodChecker.processURL(for:)(uint64_t a1)
{
  v38 = a1;
  v2 = sub_1D78B3BD4();
  v39 = *(v2 - 8);
  v40 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v37 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AppLaunchMethod.IndirectMethod(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D789A648(0, qword_1EE0947D8, type metadata accessor for AppLaunchMethod);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - v9;
  v11 = type metadata accessor for AppLaunchMethod(0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v36 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v32 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v32 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v32 - v20;
  v22 = OBJC_IVAR____TtC16NewsSubscription22AppLaunchMethodChecker_launchMethod;
  swift_beginAccess();
  v41 = v1;
  v35 = v22;
  sub_1D7752650(v1 + v22, v21, type metadata accessor for AppLaunchMethod);
  v34 = *(v5 + 56);
  v34(v19, 1, 1, v4);
  v23 = *(v8 + 56);
  sub_1D7752650(v21, v10, type metadata accessor for AppLaunchMethod);
  sub_1D7752650(v19, &v10[v23], type metadata accessor for AppLaunchMethod);
  v24 = *(v5 + 48);
  if (v24(v10, 1, v4) != 1)
  {
    sub_1D7752650(v10, v16, type metadata accessor for AppLaunchMethod);
    if (v24(&v10[v23], 1, v4) != 1)
    {
      v26 = v33;
      sub_1D789A100(&v10[v23], v33);
      v27 = _s16NewsSubscription15AppLaunchMethodO08IndirectE0O2eeoiySbAE_AEtFZ_0(v16, v26);
      sub_1D789A164(v26, type metadata accessor for AppLaunchMethod.IndirectMethod);
      sub_1D789A164(v19, type metadata accessor for AppLaunchMethod);
      sub_1D789A164(v21, type metadata accessor for AppLaunchMethod);
      sub_1D789A164(v16, type metadata accessor for AppLaunchMethod.IndirectMethod);
      result = sub_1D789A164(v10, type metadata accessor for AppLaunchMethod);
      if ((v27 & 1) == 0)
      {
        return result;
      }

      goto LABEL_8;
    }

    sub_1D789A164(v19, type metadata accessor for AppLaunchMethod);
    sub_1D789A164(v21, type metadata accessor for AppLaunchMethod);
    sub_1D789A164(v16, type metadata accessor for AppLaunchMethod.IndirectMethod);
    return sub_1D789A2D0(v10, qword_1EE0947D8, type metadata accessor for AppLaunchMethod);
  }

  sub_1D789A164(v19, type metadata accessor for AppLaunchMethod);
  sub_1D789A164(v21, type metadata accessor for AppLaunchMethod);
  if (v24(&v10[v23], 1, v4) != 1)
  {
    return sub_1D789A2D0(v10, qword_1EE0947D8, type metadata accessor for AppLaunchMethod);
  }

  sub_1D789A164(v10, type metadata accessor for AppLaunchMethod);
LABEL_8:
  sub_1D7740644(0, &qword_1EE08F248, MEMORY[0x1E69D7690], MEMORY[0x1E69D66D8]);
  v28 = v37;
  sub_1D78B3D24();
  v29 = v36;
  sub_1D78B3B94();
  (*(v39 + 8))(v28, v40);
  swift_storeEnumTagMultiPayload();
  v34(v29, 0, 1, v4);
  v30 = v41;
  v31 = v35;
  swift_beginAccess();
  sub_1D789A32C(v29, v30 + v31);
  return swift_endAccess();
}

uint64_t sub_1D7899358()
{
  v0 = MEMORY[0x1E69E6F90];
  sub_1D7740644(0, &qword_1EE08FAA8, MEMORY[0x1E69D6718], MEMORY[0x1E69E6F90]);
  sub_1D78B3DA4();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D78BCAB0;
  sub_1D7740644(0, &qword_1EE08E4E0, MEMORY[0x1E69D66F8], v0);
  v2 = sub_1D78B3D74();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D78BCAB0;
  v6 = (v5 + v4);
  *v6 = sub_1D78B5C74();
  v6[1] = v7;
  (*(v3 + 104))(v6, *MEMORY[0x1E69D66F0], v2);
  sub_1D789A1D8(MEMORY[0x1E69E7CC0]);
  sub_1D78B3D84();
  return v1;
}

Swift::Void __swiftcall AppLaunchMethodChecker.sceneDidEnterBackground()()
{
  v1 = type metadata accessor for AppLaunchMethod(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AppLaunchMethod.IndirectMethod(0);
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC16NewsSubscription22AppLaunchMethodChecker_launchMethod;
  swift_beginAccess();
  sub_1D789A32C(v3, v0 + v5);
  swift_endAccess();
}

uint64_t sub_1D7899668()
{
  v1 = type metadata accessor for AppLaunchMethod(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AppLaunchMethod.IndirectMethod(0);
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC16NewsSubscription22AppLaunchMethodChecker_launchMethod;
  swift_beginAccess();
  sub_1D789A32C(v3, v0 + v5);
  return swift_endAccess();
}

uint64_t _s16NewsSubscription15AppLaunchMethodO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppLaunchMethod.IndirectMethod(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AppLaunchMethod(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D789A648(0, qword_1EE0947D8, type metadata accessor for AppLaunchMethod);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - v13;
  v15 = *(v12 + 56);
  sub_1D7752650(a1, &v19 - v13, type metadata accessor for AppLaunchMethod);
  sub_1D7752650(a2, &v14[v15], type metadata accessor for AppLaunchMethod);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1D7752650(v14, v10, type metadata accessor for AppLaunchMethod);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      sub_1D789A100(&v14[v15], v7);
      v17 = _s16NewsSubscription15AppLaunchMethodO08IndirectE0O2eeoiySbAE_AEtFZ_0(v10, v7);
      sub_1D789A164(v7, type metadata accessor for AppLaunchMethod.IndirectMethod);
      sub_1D789A164(v10, type metadata accessor for AppLaunchMethod.IndirectMethod);
      sub_1D789A164(v14, type metadata accessor for AppLaunchMethod);
      return v17 & 1;
    }

    sub_1D789A164(v10, type metadata accessor for AppLaunchMethod.IndirectMethod);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1D789A2D0(v14, qword_1EE0947D8, type metadata accessor for AppLaunchMethod);
    v17 = 0;
    return v17 & 1;
  }

  sub_1D789A164(v14, type metadata accessor for AppLaunchMethod);
  v17 = 1;
  return v17 & 1;
}

uint64_t _s16NewsSubscription15AppLaunchMethodO08IndirectE0O2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1D7740644(0, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v42 = &v40 - v5;
  sub_1D789A5B4();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D78B3294();
  v44 = *(v9 - 8);
  v45 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v41 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v40 - v12;
  v14 = type metadata accessor for AppLaunchMethod.IndirectMethod(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v40 - v18;
  sub_1D789A648(0, &qword_1EC9CBA28, type metadata accessor for AppLaunchMethod.IndirectMethod);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v40 - v22;
  v24 = *(v21 + 56);
  sub_1D7752650(a1, &v40 - v22, type metadata accessor for AppLaunchMethod.IndirectMethod);
  sub_1D7752650(a2, &v23[v24], type metadata accessor for AppLaunchMethod.IndirectMethod);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1D7752650(v23, v19, type metadata accessor for AppLaunchMethod.IndirectMethod);
    if (!swift_getEnumCaseMultiPayload())
    {
      v34 = v44;
      v33 = v45;
      (*(v44 + 32))(v13, &v23[v24], v45);
      v31 = sub_1D78B3244();
      v35 = *(v34 + 8);
      v35(v13, v33);
      v35(v19, v33);
      sub_1D789A164(v23, type metadata accessor for AppLaunchMethod.IndirectMethod);
      return v31 & 1;
    }

    (*(v44 + 8))(v19, v45);
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  sub_1D7752650(v23, v17, type metadata accessor for AppLaunchMethod.IndirectMethod);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D789A554(v17, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D7740644);
LABEL_12:
    sub_1D789A2D0(v23, &qword_1EC9CBA28, type metadata accessor for AppLaunchMethod.IndirectMethod);
LABEL_13:
    v31 = 0;
    return v31 & 1;
  }

  v26 = *(v7 + 48);
  v27 = v43;
  sub_1D77AE4DC(v17, v43);
  sub_1D77AE4DC(&v23[v24], v27 + v26);
  v29 = v44;
  v28 = v45;
  v30 = *(v44 + 48);
  if (v30(v27, 1, v45) != 1)
  {
    v36 = v42;
    sub_1D789A4E0(v27, v42, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D7740644);
    if (v30(v27 + v26, 1, v28) != 1)
    {
      v37 = v41;
      (*(v29 + 32))(v41, v27 + v26, v28);
      sub_1D789A390(&qword_1EC9CBA30, MEMORY[0x1E6968FB0]);
      v38 = sub_1D78B5C34();
      v39 = *(v29 + 8);
      v39(v37, v28);
      v39(v36, v28);
      sub_1D789A554(v27, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D7740644);
      if (v38)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }

    (*(v29 + 8))(v36, v28);
LABEL_18:
    sub_1D789A164(v27, sub_1D789A5B4);
LABEL_19:
    sub_1D789A164(v23, type metadata accessor for AppLaunchMethod.IndirectMethod);
    goto LABEL_13;
  }

  if (v30(v27 + v26, 1, v28) != 1)
  {
    goto LABEL_18;
  }

  sub_1D789A554(v27, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D7740644);
LABEL_10:
  sub_1D789A164(v23, type metadata accessor for AppLaunchMethod.IndirectMethod);
  v31 = 1;
  return v31 & 1;
}

uint64_t sub_1D789A100(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppLaunchMethod.IndirectMethod(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D789A164(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D789A1D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D789A448();
    v3 = sub_1D78B6564();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D777BBB4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1D789A2D0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D789A648(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D789A32C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppLaunchMethod(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D789A390(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D789A448()
{
  if (!qword_1EC9CBA00)
  {
    sub_1D7740644(255, &qword_1EC9CBA08, MEMORY[0x1E69D6710], MEMORY[0x1E69E62F8]);
    v0 = sub_1D78B6574();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9CBA00);
    }
  }
}

uint64_t sub_1D789A4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1D789A554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1D789A5B4()
{
  if (!qword_1EC9CBA20)
  {
    sub_1D7740644(255, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9CBA20);
    }
  }
}

void sub_1D789A648(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t LandingPageDecision.CloseButtonVisibility.hashValue.getter()
{
  v1 = *v0;
  sub_1D78B6814();
  MEMORY[0x1DA703AC0](v1);
  return sub_1D78B6844();
}

uint64_t LandingPageDecider.landingPage(for:)()
{
  sub_1D789AA1C();
  swift_allocObject();
  return sub_1D78B4174();
}

uint64_t sub_1D789A7A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1D789B7C8();
    sub_1D78B41F4();
    v10 = sub_1D78B3924();
    v11 = swift_allocObject();
    v11[2] = a3;
    v11[3] = a4;
    v11[4] = a1;
    v11[5] = a2;

    sub_1D78B40B4();
  }

  else
  {
    sub_1D78B41F4();
    v13 = sub_1D78B4014();
    sub_1D78B4144();

    v14 = sub_1D78B3924();
    v15 = swift_allocObject();
    v15[2] = a1;
    v15[3] = a2;
    v15[4] = a3;
    v15[5] = a4;

    sub_1D78B40B4();
  }
}

void sub_1D789AA1C()
{
  if (!qword_1EE08F230)
  {
    type metadata accessor for LandingPageDecision(255);
    v0 = sub_1D78B4184();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE08F230);
    }
  }
}

uint64_t sub_1D789AA94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
  sub_1D7893240(0, &qword_1EE08FA50, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D78BCAB0;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;

  v6 = sub_1D78B5904();

  return v6;
}

void sub_1D789AB64(unint64_t *a1, uint64_t a2, void (*a3)(void), uint64_t a4, void (*a5)(char *), uint64_t a6)
{
  v11 = type metadata accessor for LandingPageDecision(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  if (v14 >> 62)
  {
    if (sub_1D78B6534())
    {
LABEL_3:
      v33 = a5;
      v32[1] = a6;
      if ((v14 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1DA703700](0, v14);
      }

      else
      {
        if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_25:
          __break(1u);
          return;
        }

        v15 = *(v14 + 32);
        swift_unknownObjectRetain();
      }

      if (([v15 respondsToSelector_] & 1) != 0 && objc_msgSend(v15, sel_role) == 3)
      {
        v16 = ([v15 respondsToSelector_] & 1) != 0 && (objc_msgSend(v15, sel_hideModalCloseButton) & 1) != 0;
        v26 = [v15 identifier];
        v27 = sub_1D78B5C74();
        v29 = v28;

        *v13 = v27;
        *(v13 + 1) = v29;
        v13[16] = v16;
        goto LABEL_19;
      }

      v17 = [*(a2 + 56) configuration];
      if (v17)
      {
        v18 = v17;
        if ([v17 respondsToSelector_])
        {
          v19 = [v18 paidBundleConfig];
          swift_unknownObjectRelease();
          v20 = [v19 defaultLandingPageArticleID];

          if (v20)
          {
            v21 = sub_1D78B5C74();
            v23 = v22;

            *v13 = v21;
            *(v13 + 1) = v23;
            v13[16] = 0;
LABEL_19:
            swift_storeEnumTagMultiPayload();
            v33(v13);
            swift_unknownObjectRelease();
            sub_1D789B8A4(v13);
            return;
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }

        sub_1D789B850();
        v24 = swift_allocError();
        *v25 = 1;
        a3();

        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_25;
    }
  }

  else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  sub_1D789B850();
  v30 = swift_allocError();
  *v31 = 0;
  a3();
}

uint64_t sub_1D789AE74@<X0>(uint64_t a1@<X8>)
{
  sub_1D778C858(MEMORY[0x1E69E7CC8]);
  v2 = objc_allocWithZone(MEMORY[0x1E698C988]);
  sub_1D773D21C(0, &qword_1EE08FBA0);
  v3 = sub_1D78B5BB4();

  v4 = [v2 initWithDictionary_];

  if (qword_1EE093E80 != -1)
  {
    swift_once();
  }

  v5 = byte_1EE09C310;
  v7 = qword_1EE09C318;
  v6 = unk_1EE09C320;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = MEMORY[0x1E69E7CC0];
  *(a1 + 40) = 0;
  *(a1 + 48) = v5;
  *(a1 + 56) = v7;
  *(a1 + 64) = v6;
  *(a1 + 72) = v4;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
}

void sub_1D789AFA0(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v26 = a6;
  v27 = a5;
  v28 = a2;
  v8 = type metadata accessor for LandingPageDecision(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 144);
  v37 = *(a1 + 128);
  v38 = v11;
  v39 = *(a1 + 160);
  v12 = *(a1 + 80);
  v33 = *(a1 + 64);
  v34 = v12;
  v13 = *(a1 + 112);
  v35 = *(a1 + 96);
  v36 = v13;
  v14 = *(a1 + 16);
  v30[0] = *a1;
  v30[1] = v14;
  v15 = *(a1 + 48);
  v31 = *(a1 + 32);
  v32 = v15;
  if (*(&v34 + 1))
  {
    v16 = v37;
    if (__PAIR128__(0x80000001D78CF0C0, 0xD000000000000019) != v37 && (sub_1D78B6724() & 1) == 0 && (BYTE8(v31) || __PAIR128__(0x80000001D78CF100, 0xD000000000000025) != v16 && (sub_1D78B6724() & 1) == 0))
    {
      goto LABEL_13;
    }

LABEL_9:
    v17 = *(a1 + 144);
    *(v10 + 8) = *(a1 + 128);
    *(v10 + 9) = v17;
    *(v10 + 20) = *(a1 + 160);
    v18 = *(a1 + 80);
    *(v10 + 4) = *(a1 + 64);
    *(v10 + 5) = v18;
    v19 = *(a1 + 112);
    *(v10 + 6) = *(a1 + 96);
    *(v10 + 7) = v19;
    v20 = *(a1 + 16);
    *v10 = *a1;
    *(v10 + 1) = v20;
    v21 = *(a1 + 48);
    *(v10 + 2) = *(a1 + 32);
    *(v10 + 3) = v21;
    type metadata accessor for LandingPageDecision.AMSSheet(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_1D778CEAC(v30, &v29);
LABEL_10:
    a3(v10);
    sub_1D789B8A4(v10);
    return;
  }

  if (AMSMarketingItem.isCIPOffer()() || !BYTE8(v31) && AMSMarketingItem.isBundleHardwareOffer()())
  {
    goto LABEL_9;
  }

LABEL_13:
  v22 = sub_1D789B218(v28);
  if (v23)
  {
    *v10 = v22;
    *(v10 + 1) = v23;
    v10[16] = 0;
    swift_storeEnumTagMultiPayload();
    goto LABEL_10;
  }

  sub_1D789B850();
  v24 = swift_allocError();
  *v25 = 1;
  v27(v24);
}

id sub_1D789B218(uint64_t a1)
{
  v2 = *(a1 + 72);
  ObjectType = swift_getObjectType();
  LOBYTE(v13[0]) = 6;
  (*(v2 + 32))(v11, v13, ObjectType, v2);
  v13[8] = v11[8];
  v13[9] = v11[9];
  v14 = v12;
  v13[4] = v11[4];
  v13[5] = v11[5];
  v13[6] = v11[6];
  v13[7] = v11[7];
  v13[0] = v11[0];
  v13[1] = v11[1];
  v13[2] = v11[2];
  v13[3] = v11[3];
  if (sub_1D775F3CC(v13) == 1)
  {
    result = [*(a1 + 56) configuration];
    if (result)
    {
      v5 = result;
      if ([result respondsToSelector_])
      {
        v6 = [v5 paidBundleConfig];
        swift_unknownObjectRelease();
        v7 = [v6 defaultLandingPageArticleID];
        goto LABEL_8;
      }

      goto LABEL_10;
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  sub_1D7782600(v11);
  result = [*(a1 + 56) configuration];
  if (!result)
  {
    goto LABEL_14;
  }

  v8 = result;
  if ([result respondsToSelector_])
  {
    v6 = [v8 paidBundleConfig];
    swift_unknownObjectRelease();
    v7 = [v6 defaultServicesBundleLandingPageArticleID];
LABEL_8:
    v9 = v7;

    if (v9)
    {
      v10 = sub_1D78B5C74();

      return v10;
    }

    return 0;
  }

LABEL_10:
  swift_unknownObjectRelease();
  return 0;
}

uint64_t LandingPageDecider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t LandingPageDecider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_1D789B488()
{
  result = qword_1EC9CBA38;
  if (!qword_1EC9CBA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CBA38);
  }

  return result;
}

uint64_t sub_1D789B4DC()
{
  sub_1D789AA1C();
  swift_allocObject();
  return sub_1D78B4174();
}

void sub_1D789B580()
{
  if (!qword_1EE08E620)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE08E620);
    }
  }
}

uint64_t sub_1D789B640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1D789B6C0()
{
  if (!qword_1EE08F480)
  {
    v0 = sub_1D78B3294();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE08F480);
    }
  }
}

uint64_t sub_1D789B734()
{
  v1 = *(v0 + 72);
  ObjectType = swift_getObjectType();
  return (*(v1 + 8))(ObjectType, v1);
}

void sub_1D789B7C8()
{
  if (!qword_1EE08E5C8)
  {
    sub_1D773D21C(255, &unk_1EE08E580);
    v0 = sub_1D78B5F34();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE08E5C8);
    }
  }
}

unint64_t sub_1D789B850()
{
  result = qword_1EC9CBA48;
  if (!qword_1EC9CBA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CBA48);
  }

  return result;
}

uint64_t sub_1D789B8A4(uint64_t a1)
{
  v2 = type metadata accessor for LandingPageDecision(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D789B914()
{
  result = qword_1EC9CBA50;
  if (!qword_1EC9CBA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CBA50);
  }

  return result;
}

uint64_t sub_1D789B96C()
{
  result = sub_1D78B5C44();
  qword_1EE08EE38 = result;
  return result;
}

uint64_t sub_1D789B9A4()
{
  result = sub_1D78B5C44();
  qword_1EE08EE50 = result;
  return result;
}

uint64_t CampaignClickRecorder.__allocating_init(patterns:)(uint64_t a1)
{
  v2 = swift_allocObject();
  CampaignClickRecorder.init(patterns:)(a1);
  return v2;
}

uint64_t CampaignClickRecorder.init(patterns:)(uint64_t a1)
{
  v3 = [objc_allocWithZone(BridgedCampaignClickRecorder) init];
  *(v1 + 16) = a1;
  *(v1 + 24) = v3;
  v4 = [objc_allocWithZone(MEMORY[0x1E698CA40]) init];
  if (qword_1EE08EE30 != -1)
  {
    swift_once();
  }

  [v4 addBagKey:qword_1EE08EE38 valueType:6];
  if (qword_1EE08EE48 != -1)
  {
    swift_once();
  }

  [v4 addBagKey:qword_1EE08EE50 valueType:5];
  v5 = objc_opt_self();
  v6 = sub_1D78B5C44();
  v7 = sub_1D78B5C44();
  [v5 registerBagKeySet:v4 forProfile:v6 profileVersion:v7];

  return v1;
}

uint64_t CampaignClickRecorder.deinit()
{

  return v0;
}

uint64_t CampaignClickRecorder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1D789BBF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  v9 = sub_1D78B5C44();
  v10 = sub_1D78B5C44();
  v11 = [objc_opt_self() bagForProfile:v9 profileVersion:v10];

  if (qword_1EE08EE30 != -1)
  {
    swift_once();
  }

  v12 = [v11 dictionaryForKey_];
  v13 = [v12 valuePromise];
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = sub_1D77F2F1C;
  v14[5] = v8;
  v16[4] = sub_1D789E520;
  v16[5] = v14;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1D789E5B0;
  v16[3] = &block_descriptor_45_1;
  v15 = _Block_copy(v16);

  [v13 addFinishBlock_];
  _Block_release(v15);
}

void sub_1D789BDFC(void *a1, id a2, void (*a3)(void), uint64_t a4, void (*a5)())
{
  if (a2)
  {
    v6 = a2;
    v7 = a2;
    v8 = v6;
    goto LABEL_3;
  }

  if (!a1)
  {
    sub_1D789DCE8();
    v8 = swift_allocError();
    v6 = v8;
    *v15 = 0;
LABEL_3:
    (a3)(v8);
    v9 = v6;

LABEL_5:

    return;
  }

  v21 = a1;
  v11 = sub_1D78B5C44();
  v12 = [v21 objectForKey_];

  if (!v12)
  {
    sub_1D789DCE8();
    v16 = swift_allocError();
    *v17 = 0;
    a3();

    v9 = v21;

    goto LABEL_5;
  }

  sub_1D78B6304();
  swift_unknownObjectRelease();
  sub_1D778D0A0(v23, v24);
  v13 = sub_1D78B5C44();
  v14 = [v21 objectForKey_];

  if (v14)
  {
    sub_1D78B6304();
    swift_unknownObjectRelease();
    sub_1D778D0A0(v22, v23);
    sub_1D777BE08(v24, v22);
    if (swift_dynamicCast())
    {
      sub_1D777BE08(v23, v22);
      sub_1D7756D94(0, &qword_1EE090010, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      if (swift_dynamicCast())
      {
        a5();

        __swift_destroy_boxed_opaque_existential_1(v23);
        __swift_destroy_boxed_opaque_existential_1(v24);
        return;
      }
    }

    sub_1D789DCE8();
    v18 = swift_allocError();
    *v20 = 0;
    a3();

    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  else
  {
    sub_1D789DCE8();
    v18 = swift_allocError();
    *v19 = 0;
    a3();
  }

  __swift_destroy_boxed_opaque_existential_1(v24);
}

void sub_1D789C160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  v9 = sub_1D78B5C44();
  v10 = sub_1D78B5C44();
  v11 = [objc_opt_self() bagForProfile:v9 profileVersion:v10];

  if (qword_1EE08EE48 != -1)
  {
    swift_once();
  }

  v12 = [v11 URLForKey_];
  v13 = [v12 valuePromise];
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = sub_1D7841584;
  v14[5] = v8;
  v16[4] = sub_1D789E4B4;
  v16[5] = v14;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1D789E5B0;
  v16[3] = &block_descriptor_36;
  v15 = _Block_copy(v16);

  [v13 addFinishBlock_];
  _Block_release(v15);
}

void sub_1D789C364(void *a1, id a2, void (*a3)(void), uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  if (a1 && (v8 = [a1 absoluteString]) != 0)
  {
    v9 = v8;
    v10 = sub_1D78B5C74();
    v12 = v11;

    a5(v10, v12);
  }

  else
  {
    if (a2)
    {
      v13 = a2;
      (a3)(a2);
      v14 = a2;
    }

    else
    {
      sub_1D789DCE8();
      v15 = swift_allocError();
      *v16 = 1;
      a3();
      v14 = v15;
    }
  }
}

uint64_t sub_1D789C474(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;

  v13 = 0;
  v25 = v4;
  while (v9)
  {
    v14 = v9;
LABEL_19:
    v9 = (v14 - 1) & v14;
    if (*(v6 + 16))
    {
      v16 = (*(v4 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v14)))));
      v18 = *v16;
      v17 = v16[1];
      sub_1D78B6814();

      sub_1D78B5D14();
      v19 = sub_1D78B6844();
      v20 = -1 << *(v6 + 32);
      v21 = v19 & ~v20;
      if ((*(v11 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
      {
        v22 = ~v20;
        while (1)
        {
          v23 = (*(v6 + 48) + 16 * v21);
          v24 = *v23 == v18 && v23[1] == v17;
          if (v24 || (sub_1D78B6724() & 1) != 0)
          {
            break;
          }

          v21 = (v21 + 1) & v22;
          if (((*(v11 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        return 0;
      }

LABEL_28:

      v4 = v25;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v10)
    {

      return 1;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      v13 = v15;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

void sub_1D789C65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = *(a5 + 24);

  v12 = sub_1D78B5C44();
  v13 = sub_1D78B5C44();
  v14 = [v11 recordCampaignClickWithReportUrl:v12 campaignUrl:v13];

  v15 = swift_allocObject();
  v15[2] = sub_1D7752FB0;
  v15[3] = v10;
  v15[4] = a3;
  v15[5] = a4;
  v25 = sub_1D789DCD4;
  v26 = v15;
  v21 = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1D77CB678;
  v24 = &block_descriptor_35;
  v16 = _Block_copy(&v21);

  v17 = [v14 then_];
  _Block_release(v16);

  if (v17)
  {

    v18 = swift_allocObject();
    *(v18 + 16) = a3;
    *(v18 + 24) = a4;
    v25 = sub_1D789DCE0;
    v26 = v18;
    v21 = MEMORY[0x1E69E9820];
    v22 = 1107296256;
    v23 = sub_1D7797914;
    v24 = &block_descriptor_20_0;
    v19 = _Block_copy(&v21);

    v20 = [v17 error_];
    _Block_release(v19);
  }

  else
  {
    __break(1u);
  }
}

double sub_1D789C8D8@<D0>(uint64_t a1@<X0>, void (*a2)()@<X1>, void (*a3)(void)@<X3>, _OWORD *a4@<X8>)
{
  sub_1D779C6B0(a1, v11);
  if (!v12)
  {
    sub_1D789E4C0(v11, &qword_1EE08F9C0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D7756D94);
    goto LABEL_5;
  }

  sub_1D773F004(0, &qword_1EE08E5A8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    sub_1D789DCE8();
    v7 = swift_allocError();
    *v8 = 6;
    a3();

    goto LABEL_6;
  }

  a2();

LABEL_6:
  result = 0.0;
  *a4 = 0u;
  a4[1] = 0u;
  return result;
}

void sub_1D789CA0C(void *a1, void (*a2)(uint64_t))
{
  if (a1)
  {
    v3 = a1;
    v4 = a1;
    v5 = v3;
  }

  else
  {
    sub_1D789DCE8();
    v5 = swift_allocError();
    v3 = v5;
    *v6 = 6;
  }

  a2(v5);
}

void sub_1D789CA90(void (*a1)(void *), uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(char *, unint64_t, uint64_t), uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (sub_1D789DD6C(a6, a7, a10))
  {
    sub_1D789CB90(a6, a7);
    v17[0] = a8;
    v17[1] = a9;
    a1(v17);
  }

  else
  {
    sub_1D789DCE8();
    v15 = swift_allocError();
    *v16 = 2;
    a3();
  }
}

void sub_1D789CB90(uint64_t a1, uint64_t a2)
{
  if ((sub_1D789CD58() & 1) == 0)
  {
    sub_1D78B41F4();
    v5 = swift_allocObject();
    v5[2] = v2;
    v5[3] = a1;
    v5[4] = a2;

    v6 = sub_1D78B4014();
    sub_1D773F004(0, &qword_1EE08E5A8);
    sub_1D78B4084();

    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;

    v8 = sub_1D78B4014();
    sub_1D78B4094();

    v9 = sub_1D78B4014();
    sub_1D78B40D4();
  }
}

uint64_t sub_1D789CD58()
{
  v0 = [objc_opt_self() ams_sharedAccountStore];
  v1 = [v0 ams_localiTunesAccount];

  if (!v1)
  {
    return 0;
  }

  v2 = [v1 ams_cookies];
  if (!v2)
  {

    return 0;
  }

  v3 = v2;
  sub_1D773F004(0, &qword_1EC9CBA70);
  v4 = sub_1D78B5EB4();

  if (v4 >> 62)
  {
LABEL_24:
    v5 = sub_1D78B6534();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

      return 0;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1DA703700](i, v4);
    }

    else
    {
      if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v7 = *(v4 + 8 * i + 32);
    }

    v8 = v7;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v9 = [v7 name];
    v10 = sub_1D78B5C74();
    v12 = v11;

    if (v10 == 0x69635F7078 && v12 == 0xE500000000000000)
    {
      break;
    }

    v14 = sub_1D78B6724();

    if (v14)
    {

      return 1;
    }
  }

  return 1;
}

uint64_t sub_1D789CF78()
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D78B6094();
  sub_1D774FE1C();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D78BCAB0;
  sub_1D773C9B8(0, &qword_1EE08F9F0);
  sub_1D78B6504();
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 64) = sub_1D775ABD4();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_1D78B42C4();
}

void CampaignClickRecorder.processURL(for:)()
{
  v1 = sub_1D78B3294();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D78B3BD4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D789DC04(0, &qword_1EE08F248, MEMORY[0x1E69D7690], MEMORY[0x1E69D66D8]);
  sub_1D78B3D24();
  sub_1D78B3B94();
  (*(v6 + 8))(v8, v5);
  v9 = sub_1D78B31E4();
  v11 = v10;
  (*(v2 + 8))(v4, v1);
  sub_1D78B41F4();
  v12 = swift_allocObject();
  v12[2] = v0;
  v12[3] = v9;
  v12[4] = v11;

  v13 = sub_1D78B4014();
  sub_1D78B4084();

  v14 = swift_allocObject();
  v14[2] = v0;
  v14[3] = v9;
  v14[4] = v11;

  v15 = sub_1D78B4014();
  sub_1D773F004(0, &qword_1EE08E5A8);
  sub_1D78B4084();

  v16 = swift_allocObject();
  *(v16 + 16) = v9;
  *(v16 + 24) = v11;
  v17 = sub_1D78B4014();
  sub_1D78B4094();

  v18 = sub_1D78B4014();
  sub_1D78B40D4();
}

uint64_t sub_1D789D428(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1D7756D94(0, a2, a3, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D78B4174();
}

uint64_t sub_1D789D4D0()
{
  sub_1D7756D94(0, &qword_1EE08F220, MEMORY[0x1E69E6158], MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D78B4174();
}

uint64_t sub_1D789D588()
{
  sub_1D789DC6C();
  swift_allocObject();
  return sub_1D78B4174();
}

uint64_t sub_1D789D628(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a4;
  v29 = a5;
  sub_1D789DC04(0, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v28 - v12;
  v14 = *a1;
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D774FE1C();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D78BCB50;
  v16 = MEMORY[0x1E69E6158];
  *(v15 + 56) = MEMORY[0x1E69E6158];
  v17 = sub_1D775ABD4();
  *(v15 + 64) = v17;
  *(v15 + 32) = a2;
  *(v15 + 40) = a3;

  v18 = [v14 response];
  if (!v18)
  {
    goto LABEL_9;
  }

  v19 = v18;
  v20 = [v18 URL];

  if (v20)
  {
    sub_1D78B3254();

    v21 = sub_1D78B3294();
    (*(*(v21 - 8) + 56))(v11, 0, 1, v21);
  }

  else
  {
    v21 = sub_1D78B3294();
    (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
  }

  sub_1D77AE4DC(v11, v13);
  sub_1D78B3294();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v13, 1, v21) == 1)
  {
    sub_1D789E4C0(v13, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D789DC04);
LABEL_9:
    v23 = (v15 + 72);
    *(v15 + 96) = v16;
    *(v15 + 104) = v17;
    goto LABEL_10;
  }

  v26 = sub_1D78B31E4();
  v24 = v27;
  (*(v22 + 8))(v13, v21);
  v23 = (v15 + 72);
  *(v15 + 96) = v16;
  *(v15 + 104) = v17;
  if (v24)
  {
    *v23 = v26;
    goto LABEL_11;
  }

LABEL_10:
  *v23 = 0;
  v24 = 0xE000000000000000;
LABEL_11:
  *(v15 + 80) = v24;
  sub_1D78B60A4();
  sub_1D78B42C4();
}

void sub_1D789D9B8(void *a1)
{
  v1 = a1;
  sub_1D773C9B8(0, &qword_1EE08F9F0);
  v2 = swift_dynamicCast();

  if (v2)
  {
    v3 = v5 == 2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3)
  {
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    sub_1D78B6094();
    sub_1D774FE1C();
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1D78BCAB0;
    sub_1D78B6504();
    *(v4 + 56) = MEMORY[0x1E69E6158];
    *(v4 + 64) = sub_1D775ABD4();
    *(v4 + 32) = 0;
    *(v4 + 40) = 0xE000000000000000;
    sub_1D78B42C4();
  }
}

unint64_t sub_1D789DB2C()
{
  result = qword_1EC9CBA60;
  if (!qword_1EC9CBA60)
  {
    type metadata accessor for CampaignClickRecorder();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CBA60);
  }

  return result;
}

void sub_1D789DC04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D789DC6C()
{
  if (!qword_1EC9CBA68)
  {
    sub_1D773F004(255, &qword_1EE08E5A8);
    v0 = sub_1D78B4184();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9CBA68);
    }
  }
}

unint64_t sub_1D789DCE8()
{
  result = qword_1EE08EE58[0];
  if (!qword_1EE08EE58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE08EE58);
  }

  return result;
}

uint64_t sub_1D789DD6C(uint64_t a1, void (*a2)(char *, unint64_t, uint64_t), uint64_t a3)
{
  v64 = a3;
  v65 = a2;
  v3 = sub_1D78B3064();
  v63 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69E6720];
  sub_1D789DC04(0, &unk_1EE095698, MEMORY[0x1E69681B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v55 - v8;
  v10 = sub_1D78B3124();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D789DC04(0, &unk_1EE096460, MEMORY[0x1E6968FB0], v6);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v55 - v15;
  v17 = sub_1D78B3294();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v20;
  sub_1D78B3274();
  if ((*(v21 + 48))(v16, 1, v17) == 1)
  {
    v22 = &unk_1EE096460;
    v23 = MEMORY[0x1E6968FB0];
    v24 = MEMORY[0x1E69E6720];
    v25 = v16;
LABEL_5:
    sub_1D789E4C0(v25, v22, v23, v24, sub_1D789DC04);
LABEL_6:
    v26 = 0;
    return v26 & 1;
  }

  (*(v21 + 32))(v19, v16, v17);
  sub_1D78B3094();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    (*(v21 + 8))(v19, v17);
    v22 = &unk_1EE095698;
    v23 = MEMORY[0x1E69681B8];
    v24 = MEMORY[0x1E69E6720];
    v25 = v9;
    goto LABEL_5;
  }

  (*(v11 + 32))(v13, v9, v10);
  v28 = sub_1D78B3074();
  if (!v28)
  {
    (*(v11 + 8))(v13, v10);
    (*(v21 + 8))(v19, v17);
    goto LABEL_6;
  }

  v56 = v19;
  v57 = v21;
  v58 = v17;
  v59 = v13;
  v60 = v11;
  v61 = v10;
  v67 = MEMORY[0x1E69E7CD0];
  v62 = v28;
  v29 = *(v28 + 16);
  if (v29)
  {
    v30 = v63 + 16;
    v65 = *(v63 + 16);
    v31 = v62 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
    v32 = *(v63 + 72);
    v33 = (v63 + 8);
    do
    {
      v34 = v3;
      v35 = v3;
      v36 = v30;
      v65(v5, v31, v34);
      v37 = sub_1D78B3044();
      v39 = v38;
      (*v33)(v5, v35);
      sub_1D78A6C8C(&v66, v37, v39);

      v30 = v36;
      v3 = v35;
      v31 += v32;
      --v29;
    }

    while (v29);
  }

  v40 = v64;
  v41 = *(v64 + 16);
  v42 = MEMORY[0x1E69E7CC0];
  if (v41)
  {
    v66 = MEMORY[0x1E69E7CC0];
    sub_1D77D9874(0, v41, 0);
    v42 = v66;
    v43 = (v40 + 40);
    v44 = v57;
    do
    {
      v45 = *(v43 - 1);
      v46 = *v43;
      v66 = v42;
      v47 = *(v42 + 16);
      v48 = *(v42 + 24);

      if (v47 >= v48 >> 1)
      {
        sub_1D77D9874((v48 > 1), v47 + 1, 1);
        v42 = v66;
      }

      *(v42 + 16) = v47 + 1;
      v49 = v42 + 16 * v47;
      *(v49 + 32) = v45;
      *(v49 + 40) = v46;
      v43 += 2;
      --v41;
    }

    while (v41);
    v51 = v59;
    v50 = v60;
  }

  else
  {
    v51 = v59;
    v50 = v60;
    v44 = v57;
  }

  v52 = v56;
  v53 = sub_1D77E58E8(v42);

  if (*(v67 + 16) && *(v53 + 16))
  {
    v54 = sub_1D789C474(v67, v53);

    v26 = v54 ^ 1;
  }

  else
  {

    v26 = 0;
  }

  (*(v50 + 8))(v51, v61);
  (*(v44 + 8))(v52, v58);

  return v26 & 1;
}

uint64_t objectdestroyTm_1()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D789E4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

unint64_t sub_1D789E540()
{
  result = qword_1EC9CBA78;
  if (!qword_1EC9CBA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CBA78);
  }

  return result;
}

unint64_t FCPostPurchaseOnboardingConfigurationType.debugDescription.getter(uint64_t a1)
{
  v1 = 0x6E776F6E6B6E75;
  if (a1 <= 4)
  {
    if (a1 == 4)
    {
      v1 = 0xD000000000000017;
    }

    if (a1 == 2)
    {
      v1 = 0xD00000000000001BLL;
    }

    if (a1 == 1)
    {
      return 0xD000000000000014;
    }

    else
    {
      return v1;
    }
  }

  else
  {
    v2 = 0xD000000000000022;
    if (a1 != 8)
    {
      v2 = 0x6E776F6E6B6E75;
    }

    if (a1 == 7)
    {
      v2 = 0xD000000000000021;
    }

    if (a1 == 6)
    {
      v1 = 0xD000000000000016;
    }

    if (a1 == 5)
    {
      v1 = 0xD000000000000017;
    }

    if (a1 <= 6)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D789E6E4(void *a1)
{
  v2 = v1;
  sub_1D78A02FC(0, &qword_1EC9CBA90, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D78A02A8();
  sub_1D78B6884();
  v9 = v2[2];
  v10 = *v2;
  v30 = v2[1];
  v31 = v9;
  v11 = v2[2];
  v12 = v2[4];
  v32 = v2[3];
  v33 = v12;
  v13 = *v2;
  v26 = v11;
  v27 = v32;
  v28 = v2[4];
  v29 = v13;
  v24 = v10;
  v25 = v30;
  v23 = 0;
  sub_1D787195C(&v29, &v18);
  sub_1D7872544();
  v14 = v34;
  sub_1D78B66B4();
  if (v14)
  {
    v20 = v26;
    v21 = v27;
    v22 = v28;
    v18 = v24;
    v19 = v25;
    sub_1D7871994(&v18);
    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    v20 = v26;
    v21 = v27;
    v22 = v28;
    v18 = v24;
    v19 = v25;
    sub_1D7871994(&v18);
    v17 = 1;
    sub_1D78B6684();
    v17 = 2;
    sub_1D78B6684();
    v17 = 3;
    sub_1D78B6684();
    v17 = 4;
    sub_1D78B6654();
    v17 = 5;
    sub_1D78B66A4();
    type metadata accessor for SiwaCredentialUploadData();
    v17 = 6;
    sub_1D78B3394();
    sub_1D783B1B8(&unk_1EE08F470);
    sub_1D78B66B4();
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1D789EA34@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v28 = sub_1D78B3394();
  v26 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D78A02FC(0, &qword_1EC9CBA80, MEMORY[0x1E69E6F48]);
  v25 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - v8;
  v10 = type metadata accessor for SiwaCredentialUploadData();
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v11 + 48);
  sub_1D78B32E4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D78A02A8();
  sub_1D78B6874();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return (*(v26 + 8))(&v13[v27], v28);
  }

  else
  {
    v35 = 0;
    sub_1D7872904();
    sub_1D78B6614();
    v14 = v32;
    *(v13 + 2) = v31;
    *(v13 + 3) = v14;
    *(v13 + 4) = v33;
    v15 = v30;
    *v13 = v29;
    *(v13 + 1) = v15;
    v34 = 1;
    *(v13 + 10) = sub_1D78B65E4();
    *(v13 + 11) = v16;
    v34 = 2;
    *(v13 + 12) = sub_1D78B65E4();
    *(v13 + 13) = v17;
    v34 = 3;
    *(v13 + 14) = sub_1D78B65E4();
    *(v13 + 15) = v18;
    v34 = 4;
    *(v13 + 16) = sub_1D78B65A4();
    *(v13 + 17) = v19;
    v34 = 5;
    v20 = sub_1D78B6604();
    v23 = 0;
    *(v13 + 18) = v20;
    v34 = 6;
    sub_1D783B1B8(&qword_1EE095660);
    v21 = v28;
    sub_1D78B6614();
    (*(v7 + 8))(v9, v25);
    (*(v26 + 40))(&v13[v27], v5, v21);
    sub_1D77D8ADC(v13, v24);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1D789FFE4(v13);
  }
}

unint64_t sub_1D789EFA4()
{
  v1 = *v0;
  v2 = 0x69746E6564657263;
  v3 = 0x744164616F6C7075;
  if (v1 != 5)
  {
    v3 = 0xD000000000000013;
  }

  v4 = 0x74706965636572;
  if (v1 != 3)
  {
    v4 = 0x6C69616D65;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x496C656E6E616863;
  if (v1 != 1)
  {
    v5 = 0x7275507070416E69;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D789F0A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D78A0478(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D789F0C8(uint64_t a1)
{
  v2 = sub_1D78A02A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D789F104(uint64_t a1)
{
  v2 = sub_1D78A02A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D789F170(_BYTE *a1, uint64_t a2, void *a3)
{
  v7 = sub_1D78B3394();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SiwaCredentialUploadData();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*a1)
  {
    if (qword_1EE08E648 != -1)
    {
      swift_once();
    }

    v24 = sub_1D78B4304();
    __swift_project_value_buffer(v24, qword_1EE09C1F0);
    v25 = sub_1D78B42E4();
    v26 = sub_1D78B60A4();
    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_19;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = "SIWACredentialUploader successfully uploaded the credential";
    goto LABEL_18;
  }

  if (*a1 != 1)
  {
    if (qword_1EE08E648 != -1)
    {
      swift_once();
    }

    v29 = sub_1D78B4304();
    __swift_project_value_buffer(v29, qword_1EE09C1F0);
    v25 = sub_1D78B42E4();
    v26 = sub_1D78B6094();
    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_19;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = "SIWACredentialUploader failed to uploaded the credential with error. Will not retry.";
LABEL_18:
    _os_log_impl(&dword_1D7739000, v25, v26, v28, v27, 2u);
    MEMORY[0x1DA7043F0](v27, -1, -1);
LABEL_19:

    __swift_project_boxed_opaque_existential_1((a2 + 56), *(a2 + 80));
    v30 = a3[11];
    v37 = a3[10];
    v38 = v30;

    MEMORY[0x1DA702FF0](45, 0xE100000000000000);
    MEMORY[0x1DA702FF0](a3[4], a3[5]);
    sub_1D77D8810(v37, v38);
  }

  v35 = v12;
  v36 = a2;
  v39 = v3;
  if (qword_1EE08E648 != -1)
  {
    swift_once();
  }

  v15 = sub_1D78B4304();
  __swift_project_value_buffer(v15, qword_1EE09C1F0);
  v16 = sub_1D78B42E4();
  v17 = sub_1D78B6094();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1D7739000, v16, v17, "SIWACredentialUploader failed to uploaded the credential with error. Error is retry eligible.", v18, 2u);
    MEMORY[0x1DA7043F0](v18, -1, -1);
  }

  if (a3[18] > 4)
  {
    v31 = sub_1D78B42E4();
    v32 = sub_1D78B6094();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1D7739000, v31, v32, "Credential upload attempts has reached a limit. Will not retry.", v33, 2u);
      MEMORY[0x1DA7043F0](v33, -1, -1);
    }

    __swift_project_boxed_opaque_existential_1((v36 + 56), *(v36 + 80));
    v34 = a3[11];
    v37 = a3[10];
    v38 = v34;

    MEMORY[0x1DA702FF0](45, 0xE100000000000000);
    MEMORY[0x1DA702FF0](a3[4], a3[5]);
    sub_1D77D8810(v37, v38);
  }

  else
  {
    result = sub_1D77D8ADC(a3, v14);
    v20 = *(v14 + 18);
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      __break(1u);
    }

    else
    {
      *(v14 + 18) = v22;
      sub_1D78B3384();
      (*(v8 + 40))(&v14[*(v35 + 40)], v10, v7);
      __swift_project_boxed_opaque_existential_1((v36 + 56), *(v36 + 80));
      v23 = a3[11];
      v37 = a3[10];
      v38 = v23;

      MEMORY[0x1DA702FF0](45, 0xE100000000000000);
      MEMORY[0x1DA702FF0](a3[4], a3[5]);
      sub_1D77D844C(v37, v38, v14);

      return sub_1D789FFE4(v14);
    }
  }

  return result;
}

void sub_1D789F668(void *a1)
{
  if (qword_1EE08E648 != -1)
  {
    swift_once();
  }

  v2 = sub_1D78B4304();
  __swift_project_value_buffer(v2, qword_1EE09C1F0);
  v3 = a1;
  oslog = sub_1D78B42E4();
  v4 = sub_1D78B6094();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_1D78B67B4();
    v9 = sub_1D77AD82C(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1D7739000, oslog, v4, "SIWACredentialUploader failed to uploaded the credential with error. Will not retry: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1DA7043F0](v6, -1, -1);
    MEMORY[0x1DA7043F0](v5, -1, -1);
  }

  else
  {
  }
}

void sub_1D789F828(uint64_t a1)
{
  v3 = type metadata accessor for SiwaCredentialUploadData();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v11 = *v1;
  v12 = a1;
  sub_1D78B41F4();
  sub_1D77D8ADC(a1, &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_1D77D8B40(&v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v7 + v6);
  v8 = sub_1D78B4014();
  sub_1D78B40B4();

  v9 = sub_1D78B4014();
  sub_1D78B40D4();
}

void sub_1D789F9D0()
{
  v0 = sub_1D78B5264();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D77D9108(0);
    sub_1D78B41F4();
    sub_1D7788448();
    (*(v1 + 104))(v3, *MEMORY[0x1E69E7F80], v0);
    v4 = sub_1D78B6134();
    (*(v1 + 8))(v3, v0);
    type metadata accessor for SIWACredentialUploader();
    sub_1D78B40B4();
  }
}

uint64_t sub_1D789FB8C(uint64_t *a1, void *a2)
{
  v31 = *a2;
  v32 = a2;
  v36 = sub_1D78B3394();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v33 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SiwaCredentialUploadData();
  v34 = *(v5 - 8);
  v35 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v29 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v7;
  result = MEMORY[0x1EEE9AC00](v6);
  v10 = &v26 - v9;
  v11 = *a1;
  v28 = *(*a1 + 16);
  if (v28)
  {
    v12 = 0;
    v27 = (v3 + 8);
    while (1)
    {
      if (v12 >= *(v11 + 16))
      {
        __break(1u);
        goto LABEL_13;
      }

      v13 = *(v34 + 80);
      sub_1D77D8ADC(v11 + ((v13 + 32) & ~v13) + *(v34 + 72) * v12, v10);
      v14 = v33;
      sub_1D78B3384();
      sub_1D78B3304();
      v16 = v15;
      v17 = (*v27)(v14, v36);
      if (v16 <= 60.0)
      {
        break;
      }

      ++v12;
      MEMORY[0x1EEE9AC00](v17);
      *(&v26 - 2) = v32;
      *(&v26 - 1) = v10;
      sub_1D78B41F4();
      v18 = v29;
      sub_1D77D8ADC(v10, v29);
      v19 = swift_allocObject();
      sub_1D77D8B40(v18, v19 + ((v13 + 16) & ~v13));
      v20 = sub_1D78B4014();
      sub_1D78B40B4();

      v21 = sub_1D78B4014();
      sub_1D78B40D4();

      result = sub_1D789FFE4(v10);
      if (v28 == v12)
      {
        return result;
      }
    }

    if (qword_1EE08E648 == -1)
    {
      goto LABEL_8;
    }

LABEL_13:
    swift_once();
LABEL_8:
    v22 = sub_1D78B4304();
    __swift_project_value_buffer(v22, qword_1EE09C1F0);
    v23 = sub_1D78B42E4();
    v24 = sub_1D78B60A4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1D7739000, v23, v24, "SIWACredentialUploader is skipping an upload retry attempt because it was tried recently.", v25, 2u);
      MEMORY[0x1DA7043F0](v25, -1, -1);
    }

    return sub_1D789FFE4(v10);
  }

  return result;
}

uint64_t sub_1D789FFE4(uint64_t a1)
{
  v2 = type metadata accessor for SiwaCredentialUploadData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D78A0080()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  v3 = off_1F52703E0;
  type metadata accessor for HideMyEmailService();
  return v3(v2);
}

uint64_t objectdestroyTm_2()
{
  v1 = (type metadata accessor for SiwaCredentialUploadData() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[12];
  v6 = sub_1D78B3394();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

unint64_t sub_1D78A02A8()
{
  result = qword_1EC9CBA88;
  if (!qword_1EC9CBA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CBA88);
  }

  return result;
}

void sub_1D78A02FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D78A02A8();
    v7 = a3(a1, &type metadata for SiwaCredentialUploadData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D78A0374()
{
  result = qword_1EC9CBA98;
  if (!qword_1EC9CBA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CBA98);
  }

  return result;
}

unint64_t sub_1D78A03CC()
{
  result = qword_1EC9CBAA0;
  if (!qword_1EC9CBAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CBAA0);
  }

  return result;
}

unint64_t sub_1D78A0424()
{
  result = qword_1EC9CBAA8;
  if (!qword_1EC9CBAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CBAA8);
  }

  return result;
}

uint64_t sub_1D78A0478(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69746E6564657263 && a2 == 0xEA00000000006C61;
  if (v4 || (sub_1D78B6724() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496C656E6E616863 && a2 == 0xE900000000000064 || (sub_1D78B6724() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7275507070416E69 && a2 == 0xEF64496573616863 || (sub_1D78B6724() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74706965636572 && a2 == 0xE700000000000000 || (sub_1D78B6724() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C69616D65 && a2 == 0xE500000000000000 || (sub_1D78B6724() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x744164616F6C7075 && a2 == 0xEE007374706D6574 || (sub_1D78B6724() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D78E1420 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1D78B6724();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1D78A0780@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE095920);
  result = sub_1D78B39F4();
  if (v5)
  {
    return sub_1D7741E34(&v4, a2);
  }

  __break(1u);
  return result;
}

id sub_1D78A083C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE0957E0);
  result = sub_1D78B39F4();
  if (v7)
  {
    v2 = v8;
    v3 = type metadata accessor for BridgedFamilyStatusManager();
    v4 = objc_allocWithZone(v3);
    v5 = &v4[OBJC_IVAR____TtC16NewsSubscription26BridgedFamilyStatusManager_familyStatusManager];
    *v5 = v7;
    *(v5 + 1) = v2;
    v6.receiver = v4;
    v6.super_class = v3;
    return objc_msgSendSuper2(&v6, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D78A08EC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, qword_1EE095E80);
  result = sub_1D78B39F4();
  v2 = v11;
  if (v11)
  {
    v3 = v12;
    v4 = type metadata accessor for SubscriptionActivationEligibilityProvider();
    v5 = objc_allocWithZone(v4);
    *&v5[OBJC_IVAR____TtC16NewsSubscription41SubscriptionActivationEligibilityProvider_observers] = MEMORY[0x1E69E7CC0];
    v5[OBJC_IVAR____TtC16NewsSubscription41SubscriptionActivationEligibilityProvider_didProcessInitialOffer] = 0;
    v6 = &v5[OBJC_IVAR____TtC16NewsSubscription41SubscriptionActivationEligibilityProvider_offerManager];
    *v6 = v2;
    v6[1] = v3;
    v10.receiver = v5;
    v10.super_class = v4;
    swift_unknownObjectRetain();
    v7 = objc_msgSendSuper2(&v10, sel_init);
    swift_getObjectType();
    v8 = *(v3 + 80);
    v9 = v7;
    v8(v9, &off_1F526D768);

    swift_unknownObjectRelease();
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D78A0A1C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, qword_1EE095E80);
  result = sub_1D78B39F4();
  v2 = v11;
  if (v11)
  {
    v3 = v12;
    v4 = type metadata accessor for OfferIdentifierProvider();
    v5 = objc_allocWithZone(v4);
    *&v5[OBJC_IVAR____TtC16NewsSubscription23OfferIdentifierProvider_observers] = MEMORY[0x1E69E7CC0];
    v5[OBJC_IVAR____TtC16NewsSubscription23OfferIdentifierProvider_didProcessInitialOffer] = 0;
    v6 = &v5[OBJC_IVAR____TtC16NewsSubscription23OfferIdentifierProvider_offerManager];
    *v6 = v2;
    v6[1] = v3;
    v10.receiver = v5;
    v10.super_class = v4;
    swift_unknownObjectRetain();
    v7 = objc_msgSendSuper2(&v10, sel_init);
    swift_getObjectType();
    v8 = *(v3 + 80);
    v9 = v7;
    v8(v9, &off_1F526D188);

    swift_unknownObjectRelease();
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1D78A0B54(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC16NewsSubscription36HideMyEmailSignupBlueprintFooterView_button;
  *&v4[v10] = [objc_allocWithZone(sub_1D78B4524()) initWithFrame_];
  v11 = OBJC_IVAR____TtC16NewsSubscription36HideMyEmailSignupBlueprintFooterView_privacyLabel;
  type metadata accessor for UnselectableLinkEnabledTextView();
  *&v4[v11] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame_];
  v16.receiver = v4;
  v16.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = *&v12[OBJC_IVAR____TtC16NewsSubscription36HideMyEmailSignupBlueprintFooterView_button];
  v14 = v12;
  [v14 addSubview_];
  [v14 addSubview_];

  return v14;
}

id sub_1D78A0DDC()
{
  v1 = *v0;
  v2 = sub_1D78B4514();

  v3 = *(v1 + OBJC_IVAR____TtC16NewsSubscription36HideMyEmailSignupBlueprintFooterView_privacyLabel);

  return [v3 setDelegate_];
}

void sub_1D78A0E44()
{
  sub_1D78A0ED0(&qword_1EC9CB9A8);

  JUMPOUT(0x1DA702390);
}

uint64_t sub_1D78A0ED0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HideMyEmailSignupBlueprintFooterView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16NewsSubscription15PaywallHostTypeO(uint64_t a1)
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

uint64_t sub_1D78A0F2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1D78A0F74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D78A0FB8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t AMSBuyParams.purchaseID.getter()
{
  v1 = [v0 dictionary];
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = v1;
  v3 = sub_1D78B5BC4();

  strcpy(&v8, "salableAdamId");
  HIWORD(v8) = -4864;
  sub_1D78B63F4();
  if (!*(v3 + 16) || (v4 = sub_1D777BD70(&v7), (v5 & 1) == 0))
  {

    sub_1D777BDB4(&v7);
LABEL_10:
    v8 = 0u;
    v9 = 0u;
    goto LABEL_11;
  }

  sub_1D777BE08(*(v3 + 56) + 32 * v4, &v8);
  sub_1D777BDB4(&v7);

  if (!*(&v9 + 1))
  {
LABEL_11:
    sub_1D7756B84(&v8);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D78A11D8(uint64_t *a1)
{
  swift_beginAccess();
  v2 = *a1;

  return v2;
}

uint64_t sub_1D78A123C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  swift_beginAccess();
  *a3 = a1;
  *a4 = a2;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1D78A1318(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D78A1338(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 128) = v3;
  return result;
}

unint64_t PurchaseConversionLocation.pageContext.getter()
{
  result = 0x6E776F6E6B6E55;
  switch(*v0)
  {
    case 1:
    case 3:
      result = 0x656C6369747241;
      break;
    case 2:
      result = 0x6C656E6E616843;
      break;
    case 5:
      result = 0x6C63697472416E49;
      break;
    case 6:
      result = 0x6441646565466E49;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0x50676E69646E614CLL;
      break;
    case 0xA:
      result = 0x2B7377654ELL;
      break;
    case 0xC:
      result = 0x6F69647541;
      break;
    case 0xD:
      result = 0x6575737349666450;
      break;
    case 0xE:
      result = 0x656C7A7A7550;
      break;
    case 0xF:
      result = 0x73614D7961646F54;
      break;
    case 0x10:
      result = 1685024582;
      break;
    case 0x11:
      result = 0x657069636552;
      break;
    default:
      return result;
  }

  return result;
}

NewsSubscription::PurchaseConversionLocation_optional __swiftcall PurchaseConversionLocation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D78B6754();

  v5 = 18;
  if (v3 < 0x12)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t PurchaseConversionLocation.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0x747241664F706F74;
      break;
    case 2:
      result = 0x616843664F706F74;
      break;
    case 3:
      result = 0x7779615064726168;
      break;
    case 4:
      result = 0x6974737265746E69;
      break;
    case 5:
      result = 0x6C63697472416E69;
      break;
    case 6:
      result = 0x6441646565466E69;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0x50676E69646E616CLL;
      break;
    case 0xA:
      result = 0x656E697A6167616DLL;
      break;
    case 0xB:
      result = 0xD000000000000012;
      break;
    case 0xC:
      result = 0x6565466F69647561;
      break;
    case 0xD:
      result = 0x6664506575737369;
      break;
    case 0xE:
      result = 0x656C7A7A7570;
      break;
    case 0xF:
      result = 0x73614D7961646F74;
      break;
    case 0x10:
      result = 0x64656546646F6F66;
      break;
    case 0x11:
      result = 0x657069636572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D78A1794()
{
  v0 = PurchaseConversionLocation.rawValue.getter();
  v2 = v1;
  if (v0 == PurchaseConversionLocation.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D78B6724();
  }

  return v5 & 1;
}

uint64_t sub_1D78A1830()
{
  sub_1D78B6814();
  PurchaseConversionLocation.rawValue.getter();
  sub_1D78B5D14();

  return sub_1D78B6844();
}

uint64_t sub_1D78A1898()
{
  PurchaseConversionLocation.rawValue.getter();
  sub_1D78B5D14();
}

uint64_t sub_1D78A18FC()
{
  sub_1D78B6814();
  PurchaseConversionLocation.rawValue.getter();
  sub_1D78B5D14();

  return sub_1D78B6844();
}

unint64_t sub_1D78A196C@<X0>(unint64_t *a1@<X8>)
{
  result = PurchaseConversionLocation.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

NewsSubscription::PurchaseUserAction_optional __swiftcall PurchaseUserAction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D78B6594();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t PurchaseUserAction.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0xD000000000000015;
  if (v1 != 3)
  {
    v3 = 0xD000000000000018;
  }

  if (v1 == 2)
  {
    v4 = 0xD000000000000016;
  }

  else
  {
    v4 = v3;
  }

  if (*v0)
  {
    v2 = 0x6B6E694C70656564;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1D78A1B48()
{
  result = qword_1EC9CBAE8;
  if (!qword_1EC9CBAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CBAE8);
  }

  return result;
}

unint64_t sub_1D78A1BAC()
{
  result = qword_1EC9CBAF0;
  if (!qword_1EC9CBAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CBAF0);
  }

  return result;
}

uint64_t sub_1D78A1C00()
{
  sub_1D78B6814();
  sub_1D78B5D14();

  return sub_1D78B6844();
}

uint64_t sub_1D78A1CEC()
{
  sub_1D78B5D14();
}

uint64_t sub_1D78A1DC4()
{
  sub_1D78B6814();
  sub_1D78B5D14();

  return sub_1D78B6844();
}

void sub_1D78A1EB8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0x80000001D78CE370;
  v6 = 0xD000000000000015;
  v7 = 0x80000001D78CE390;
  if (v2 != 3)
  {
    v6 = 0xD000000000000018;
    v7 = 0x80000001D78CE3B0;
  }

  if (v2 == 2)
  {
    v8 = 0xD000000000000016;
  }

  else
  {
    v8 = v6;
  }

  if (v2 != 2)
  {
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6B6E694C70656564;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v8;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t getEnumTagSinglePayload for PurchaseConversionLocation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PurchaseConversionLocation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D78A2170()
{
  result = qword_1EE08F088;
  if (!qword_1EE08F088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08F088);
  }

  return result;
}

unint64_t sub_1D78A21C4()
{
  result = qword_1EE08EB30;
  if (!qword_1EE08EB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08EB30);
  }

  return result;
}

unint64_t sub_1D78A2218()
{
  v1 = *v0;
  v2 = 0x6573616863727570;
  v3 = 0xD000000000000015;
  if (v1 != 5)
  {
    v3 = 0x4664657669727261;
  }

  v4 = 0x6E676961706D6163;
  if (v1 != 3)
  {
    v4 = 0x6563697270;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6843656372756F73;
  if (v1 != 1)
  {
    v5 = 0x6E656B6F5471;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D78A2308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D78A2D68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D78A2330(uint64_t a1)
{
  v2 = sub_1D78A2608();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D78A236C(uint64_t a1)
{
  v2 = sub_1D78A2608();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PurchaseAdContext.encode(to:)(void *a1)
{
  sub_1D78A2B94(0, &qword_1EC9CBAF8, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D78A2608();
  sub_1D78B6884();
  v9[15] = 0;
  sub_1D78B6684();
  if (!v1)
  {
    v9[14] = 1;
    sub_1D78B6684();
    v9[13] = 2;
    sub_1D78B6684();
    v9[12] = 3;
    sub_1D78B6654();
    v9[11] = 4;
    sub_1D78B6684();
    type metadata accessor for PurchaseAdContext();
    v9[10] = 5;
    sub_1D78B3394();
    sub_1D783B1B8(&unk_1EE08F470);
    sub_1D78B66B4();
    v9[9] = 6;
    sub_1D78B6694();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1D78A2608()
{
  result = qword_1EC9CBB00;
  if (!qword_1EC9CBB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CBB00);
  }

  return result;
}

uint64_t PurchaseAdContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = sub_1D78B3394();
  v33 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D78A2B94(0, &qword_1EC9CBB08, MEMORY[0x1E69E6F48]);
  v34 = v6;
  v32 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - v7;
  v9 = type metadata accessor for PurchaseAdContext();
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1D78A2608();
  v13 = v35;
  sub_1D78B6874();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(v36);
  }

  v35 = v5;
  v15 = v32;
  v14 = v33;
  v43 = 0;
  *v11 = sub_1D78B65E4();
  v11[1] = v17;
  v42 = 1;
  v11[2] = sub_1D78B65E4();
  v11[3] = v18;
  v41 = 2;
  v11[4] = sub_1D78B65E4();
  v11[5] = v19;
  v40 = 3;
  v11[6] = sub_1D78B65A4();
  v11[7] = v20;
  v39 = 4;
  v29 = 0;
  v21 = sub_1D78B65E4();
  v30 = 0;
  v11[8] = v21;
  v11[9] = v22;
  v38 = 5;
  sub_1D783B1B8(&qword_1EE095660);
  v23 = v30;
  sub_1D78B6614();
  v30 = v23;
  if (v23)
  {
    (*(v15 + 8))(v8, v34);
    v24 = 0;
  }

  else
  {
    (*(v14 + 32))(v11 + *(v9 + 36), v35, v3);
    v37 = 6;
    v25 = v30;
    v26 = sub_1D78B65F4();
    v30 = v25;
    if (!v25)
    {
      v28 = v26;
      (*(v15 + 8))(v8, v34);
      *(v11 + *(v9 + 40)) = v28 & 1;
      sub_1D7821E9C(v11, v31);
      __swift_destroy_boxed_opaque_existential_1(v36);
      return sub_1D7821F94(v11);
    }

    (*(v15 + 8))(v8, v34);
    v24 = 1;
  }

  v27 = v29;
  __swift_destroy_boxed_opaque_existential_1(v36);

  if (!v27)
  {
  }

  if (v24)
  {
    return (*(v14 + 8))(v11 + *(v9 + 36), v3);
  }

  return result;
}

void sub_1D78A2B94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D78A2608();
    v7 = a3(a1, &type metadata for PurchaseAdContext.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D78A2C64()
{
  result = qword_1EC9CBB10;
  if (!qword_1EC9CBB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CBB10);
  }

  return result;
}

unint64_t sub_1D78A2CBC()
{
  result = qword_1EC9CBB18;
  if (!qword_1EC9CBB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CBB18);
  }

  return result;
}

unint64_t sub_1D78A2D14()
{
  result = qword_1EC9CBB20;
  if (!qword_1EC9CBB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CBB20);
  }

  return result;
}

uint64_t sub_1D78A2D68(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6573616863727570 && a2 == 0xEA00000000004449;
  if (v4 || (sub_1D78B6724() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6843656372756F73 && a2 == 0xEF44496C656E6E61 || (sub_1D78B6724() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E656B6F5471 && a2 == 0xE600000000000000 || (sub_1D78B6724() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E676961706D6163 && a2 == 0xEA00000000004449 || (sub_1D78B6724() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6563697270 && a2 == 0xE500000000000000 || (sub_1D78B6724() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D78E1590 == a2 || (sub_1D78B6724() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4664657669727261 && a2 == 0xED000064416D6F72)
  {

    return 6;
  }

  else
  {
    v6 = sub_1D78B6724();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t get_enum_tag_for_layout_string_16NewsSubscription31PaywallResourceByLocationConfigVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D78A2FFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 664))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 640);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D78A3058(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 664) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 664) = 0;
    }

    if (a2)
    {
      *(result + 640) = a2;
    }
  }

  return result;
}

uint64_t sub_1D78A3168(uint64_t result, void (*a2)(uint64_t *, __int128 *), uint64_t a3, uint64_t a4)
{
  v40 = result;
  v5 = *(a4 + 16);
  if (v5)
  {
    for (i = (a4 + 32); ; i += 8)
    {
      v8 = i[5];
      v9 = i[3];
      v36 = i[4];
      v37 = v8;
      v10 = i[5];
      v11 = i[7];
      v38 = i[6];
      v39 = v11;
      v12 = i[1];
      v33[0] = *i;
      v33[1] = v12;
      v13 = i[3];
      v15 = *i;
      v14 = i[1];
      v34 = i[2];
      v35 = v13;
      v29 = v36;
      v30 = v10;
      v16 = i[7];
      v31 = v38;
      v32 = v16;
      v25 = v15;
      v26 = v14;
      v27 = v34;
      v28 = v9;
      sub_1D77F03C4(v33, &v17);
      a2(&v40, &v25);
      if (v4)
      {
        break;
      }

      v21 = v29;
      v22 = v30;
      v23 = v31;
      v24 = v32;
      v17 = v25;
      v18 = v26;
      v19 = v27;
      v20 = v28;
      sub_1D77F0420(&v17);
      if (!--v5)
      {
        return v40;
      }
    }

    v21 = v29;
    v22 = v30;
    v23 = v31;
    v24 = v32;
    v17 = v25;
    v18 = v26;
    v19 = v27;
    v20 = v28;
    sub_1D77F0420(&v17);
  }

  return result;
}

void *sub_1D78A3294(void *(*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  result = MEMORY[0x1E69E7CC0];
  v15 = MEMORY[0x1E69E7CC0];
  v6 = *(a3 + 16);
  if (v6)
  {
    v8 = 0;
    do
    {
      v13 = result;
      for (i = v8; ; ++i)
      {
        if (i >= v6)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

        v10 = sub_1D78B5954();
        v12 = *(v10 - 8);
        result = (v10 - 8);
        v11 = v12;
        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        result = a1(&v14, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
        if (v3)
        {

          return v13;
        }

        if (v14)
        {
          break;
        }

        if (v8 == v6)
        {
          return v13;
        }
      }

      MEMORY[0x1DA703120](result);
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D78B5F04();
      }

      sub_1D78B5F24();
      result = v15;
    }

    while (v8 != v6);
  }

  return result;
}

char *sub_1D78A3414(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = (a3 + 32);
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = *v5++;
    v17 = v8;

    a1(&v15, &v17);
    if (v3)
    {
      break;
    }

    v9 = v16;
    if (v16)
    {
      v10 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1D777AD14(0, *(v6 + 2) + 1, 1, v6);
      }

      v12 = *(v6 + 2);
      v11 = *(v6 + 3);
      if (v12 >= v11 >> 1)
      {
        v6 = sub_1D777AD14((v11 > 1), v12 + 1, 1, v6);
      }

      *(v6 + 2) = v12 + 1;
      v7 = &v6[16 * v12];
      *(v7 + 4) = v10;
      *(v7 + 5) = v9;
    }

    if (!--v4)
    {
      return v6;
    }
  }

  return v6;
}

uint64_t sub_1D78A3554(__int128 *a1)
{
  memcpy(v107, v1, sizeof(v107));
  sub_1D78AAF94(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = (&v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v38 - v7);
  v9 = a1[13];
  v10 = a1[11];
  v103 = a1[12];
  v104 = v9;
  v11 = a1[13];
  v12 = a1[15];
  v105 = a1[14];
  v106 = v12;
  v13 = a1[9];
  v14 = a1[7];
  v99 = a1[8];
  v100 = v13;
  v15 = a1[9];
  v16 = a1[11];
  v101 = a1[10];
  v102 = v16;
  v17 = a1[5];
  v18 = a1[3];
  v95 = a1[4];
  v96 = v17;
  v19 = a1[5];
  v20 = a1[7];
  v97 = a1[6];
  v98 = v20;
  v21 = a1[1];
  v91 = *a1;
  v92 = v21;
  v22 = a1[3];
  v24 = *a1;
  v23 = a1[1];
  v93 = a1[2];
  v94 = v22;
  v90[12] = v103;
  v90[13] = v11;
  v25 = a1[15];
  v90[14] = v105;
  v90[15] = v25;
  v90[8] = v99;
  v90[9] = v15;
  v90[10] = v101;
  v90[11] = v10;
  v90[4] = v95;
  v90[5] = v19;
  v90[6] = v97;
  v90[7] = v14;
  v90[0] = v24;
  v90[1] = v23;
  v90[2] = v93;
  v90[3] = v18;
  sub_1D78A5CF0(&v91, v1, v55);
  sub_1D78A8548(v90, v55, v56);
  sub_1D78050C8(v55, &qword_1EE094AE8);
  v78 = v56[4];
  v79 = v56[5];
  v80 = v56[6];
  v81 = v56[7];
  v74 = v56[0];
  v75 = v56[1];
  v76 = v56[2];
  v77 = v56[3];
  if (sub_1D78A5794(&v74) != 1)
  {
    v86 = v78;
    v87 = v79;
    v88 = v80;
    v89 = v81;
    v82 = v74;
    v83 = v75;
    v84 = v76;
    v85 = v77;
    v26 = sub_1D78A5F10(&v91);
    sub_1D78050C8(v56, &qword_1EE0910A8);
    if (v26)
    {
      v27 = type metadata accessor for PaywallResource();
      sub_1D78AB844(&qword_1EE094700, type metadata accessor for PaywallResource);
      sub_1D78B5EE4();

      if ((*(*(v27 - 8) + 48))(v8, 1, v27) != 1)
      {
        v34 = *v8;
        v35 = v8[1];

        sub_1D78AB1D4(v8, type metadata accessor for PaywallResource);
        if (qword_1EE08FB90 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_17;
      }

      sub_1D78AB1D4(v8, sub_1D78AAF94);
    }
  }

  v50 = v103;
  v51 = v104;
  v52 = v105;
  v53 = v106;
  v46 = v99;
  v47 = v100;
  v48 = v101;
  v49 = v102;
  v42 = v95;
  v43 = v96;
  v44 = v97;
  v45 = v98;
  v38 = v91;
  v39 = v92;
  v40 = v93;
  v41 = v94;
  memcpy(v54, v107, sizeof(v54));
  nullsub_1(v54);
  memcpy(v90, v54, 0x298uLL);
  sub_1D78A8548(&v38, v90, v57);
  v62 = v57[4];
  v63 = v57[5];
  v64 = v57[6];
  v65 = v57[7];
  v58 = v57[0];
  v59 = v57[1];
  v60 = v57[2];
  v61 = v57[3];
  if (sub_1D78A5794(&v58) == 1)
  {
    goto LABEL_9;
  }

  v70 = v62;
  v71 = v63;
  v72 = v64;
  v73 = v65;
  v66 = v58;
  v67 = v59;
  v68 = v60;
  v69 = v61;
  v28 = sub_1D78A5F10(&v91);
  sub_1D78050C8(v57, &qword_1EE0910A8);
  if (!v28)
  {
    goto LABEL_9;
  }

  v29 = type metadata accessor for PaywallResource();
  sub_1D78AB844(&qword_1EE094700, type metadata accessor for PaywallResource);
  sub_1D78B5EE4();

  if ((*(*(v29 - 8) + 48))(v6, 1, v29) != 1)
  {
    v34 = *v6;
    v35 = v6[1];

    sub_1D78AB1D4(v6, type metadata accessor for PaywallResource);
    if (qword_1EE08FB90 == -1)
    {
LABEL_15:
      sub_1D78AAFC8(0, &qword_1EE08FA10, sub_1D778CD10, MEMORY[0x1E69E6F90]);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1D78BCAB0;
      *(v36 + 56) = MEMORY[0x1E69E6158];
      *(v36 + 64) = sub_1D775ABD4();
      *(v36 + 32) = v34;
      *(v36 + 40) = v35;

      sub_1D78B60A4();
      sub_1D78B42C4();

      return v34;
    }

LABEL_17:
    swift_once();
    goto LABEL_15;
  }

  sub_1D78AB1D4(v6, sub_1D78AAF94);
LABEL_9:
  if (qword_1EE08FB90 != -1)
  {
    swift_once();
  }

  sub_1D78AAFC8(0, &qword_1EE08FA10, sub_1D778CD10, MEMORY[0x1E69E6F90]);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1D78BCAB0;
  v50 = v103;
  v51 = v104;
  v52 = v105;
  v53 = v106;
  v46 = v99;
  v47 = v100;
  v48 = v101;
  v49 = v102;
  v42 = v95;
  v43 = v96;
  v44 = v97;
  v45 = v98;
  v38 = v91;
  v39 = v92;
  v40 = v93;
  v41 = v94;
  v31 = PaywallModel.description.getter();
  v33 = v32;
  *(v30 + 56) = MEMORY[0x1E69E6158];
  *(v30 + 64) = sub_1D775ABD4();
  *(v30 + 32) = v31;
  *(v30 + 40) = v33;
  sub_1D78B60A4();
  sub_1D78B42C4();

  return 0;
}

uint64_t sub_1D78A3DE4(uint64_t a1)
{
  v2 = v1;
  v214 = a1;
  sub_1D78AB0F8(0, &qword_1EE08FA78, &qword_1EE0910A8, sub_1D7756CA8, MEMORY[0x1E69E6F90]);
  v218 = v3;
  v4 = swift_allocObject();
  v6 = *(v2 + 80);
  v298 = *(v2 + 64);
  v5 = v298;
  v299 = v6;
  v7 = *(v2 + 112);
  v300 = *(v2 + 96);
  v301 = v7;
  v9 = *(v2 + 16);
  v295[0] = *v2;
  v8 = v295[0];
  v295[1] = v9;
  v11 = *(v2 + 48);
  v296 = *(v2 + 32);
  v10 = v296;
  v297 = v11;
  v4[8] = v300;
  v4[9] = v7;
  v4[6] = v5;
  v4[7] = v6;
  v4[4] = v10;
  v4[5] = v11;
  v4[2] = v8;
  v4[3] = v9;
  v12 = *(v2 + 144);
  v14 = v12;
  v288[0] = *(v2 + 128);
  v13 = v288[0];
  v288[1] = v12;
  v15 = *(v2 + 224);
  v16 = *(v2 + 208);
  v294 = *(v2 + 240);
  v293 = v15;
  v17 = *(v2 + 192);
  v18 = *(v2 + 176);
  v292 = *(v2 + 208);
  v291 = v17;
  v19 = *(v2 + 176);
  v289 = *(v2 + 160);
  v20 = v289;
  v290 = v19;
  v21 = *(v2 + 240);
  v22 = *(v2 + 256);
  v4[16] = v15;
  v4[17] = v21;
  v4[14] = v17;
  v4[15] = v16;
  v4[12] = v20;
  v4[13] = v18;
  v4[10] = v13;
  v4[11] = v14;
  v24 = *(v2 + 272);
  v23 = *(v2 + 288);
  v25 = v23;
  v287[3] = *(v2 + 304);
  v287[2] = v23;
  v26 = *(v2 + 256);
  v287[1] = *(v2 + 272);
  v287[0] = v22;
  v28 = *(v2 + 336);
  v27 = *(v2 + 352);
  v29 = v27;
  v287[7] = *(v2 + 368);
  v287[6] = v27;
  v31 = *(v2 + 304);
  v30 = *(v2 + 320);
  v32 = v30;
  v287[5] = *(v2 + 336);
  v287[4] = v30;
  v4[20] = v25;
  v4[21] = v31;
  v4[18] = v26;
  v4[19] = v24;
  v33 = *(v2 + 368);
  v34 = *(v2 + 384);
  v4[24] = v29;
  v4[25] = v33;
  v4[22] = v32;
  v4[23] = v28;
  v36 = *(v2 + 400);
  v35 = *(v2 + 416);
  v37 = v35;
  v286[3] = *(v2 + 432);
  v286[2] = v35;
  v38 = *(v2 + 384);
  v286[1] = *(v2 + 400);
  v286[0] = v34;
  v40 = *(v2 + 464);
  v39 = *(v2 + 480);
  v41 = v39;
  v286[7] = *(v2 + 496);
  v286[6] = v39;
  v43 = *(v2 + 432);
  v42 = *(v2 + 448);
  v44 = v42;
  v286[5] = *(v2 + 464);
  v286[4] = v42;
  v4[28] = v37;
  v4[29] = v43;
  v4[26] = v38;
  v4[27] = v36;
  v45 = *(v2 + 496);
  v46 = *(v2 + 512);
  v4[32] = v41;
  v4[33] = v45;
  v4[30] = v44;
  v4[31] = v40;
  v48 = *(v2 + 528);
  v47 = *(v2 + 544);
  v49 = v47;
  v285[3] = *(v2 + 560);
  v285[2] = v47;
  v50 = *(v2 + 512);
  v285[1] = *(v2 + 528);
  v285[0] = v46;
  v52 = *(v2 + 592);
  v51 = *(v2 + 608);
  v53 = v51;
  v285[7] = *(v2 + 624);
  v285[6] = v51;
  v55 = *(v2 + 560);
  v54 = *(v2 + 576);
  v56 = v54;
  v285[5] = *(v2 + 592);
  v285[4] = v54;
  v4[36] = v49;
  v4[37] = v55;
  v4[34] = v50;
  v4[35] = v48;
  v57 = *(v2 + 624);
  v4[40] = v53;
  v4[41] = v57;
  v4[38] = v56;
  v4[39] = v52;
  sub_1D78A5720(v295, &v276);
  sub_1D78A5720(v288, &v276);
  sub_1D78A5720(v287, &v276);
  sub_1D78A5720(v286, &v276);
  result = sub_1D78A5720(v285, &v276);
  v59 = 0;
  v60 = MEMORY[0x1E69E7CC0];
  do
  {
    if (v59 <= 5)
    {
      v61 = 5;
    }

    else
    {
      v61 = v59;
    }

    v62 = -v61;
    v63 = (v59++ << 7) | 0x20;
    while (1)
    {
      if (v62 + v59 == 1)
      {
        goto LABEL_64;
      }

      v64 = *(v4 + v63 + 64);
      v273 = *(v4 + v63 + 80);
      v65 = *(v4 + v63 + 112);
      v274 = *(v4 + v63 + 96);
      v275 = v65;
      v66 = *(v4 + v63 + 16);
      v268 = *(v4 + v63);
      v269 = v66;
      v67 = *(v4 + v63 + 48);
      v270 = *(v4 + v63 + 32);
      v271 = v67;
      v272 = v64;
      v276 = v268;
      v277 = v66;
      v278 = v270;
      v279 = v67;
      v280 = v64;
      v281 = v273;
      v282 = v274;
      v283 = v65;
      result = sub_1D78A5794(&v276);
      if (result != 1)
      {
        break;
      }

      ++v59;
      v63 += 128;
      if (v59 == 6)
      {
        goto LABEL_15;
      }
    }

    v264 = v272;
    v265 = v273;
    v266 = v274;
    v267 = v275;
    v260 = v268;
    v261 = v269;
    v262 = v270;
    v263 = v271;
    sub_1D77F03C4(&v260, &v252);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D777B114(0, *(v60 + 16) + 1, 1, v60);
      v60 = result;
    }

    v69 = *(v60 + 16);
    v68 = *(v60 + 24);
    if (v69 >= v68 >> 1)
    {
      result = sub_1D777B114((v68 > 1), v69 + 1, 1, v60);
      v60 = result;
    }

    v256 = v272;
    v257 = v273;
    v258 = v274;
    v259 = v275;
    v254 = v270;
    v255 = v271;
    v70 = v268;
    v252 = v268;
    v253 = v269;
    *(v60 + 16) = v69 + 1;
    v71 = (v60 + (v69 << 7));
    v72 = v253;
    v73 = v255;
    v71[4] = v254;
    v71[5] = v73;
    v71[3] = v72;
    v74 = v256;
    v75 = v257;
    v76 = v259;
    v71[8] = v258;
    v71[9] = v76;
    v71[6] = v74;
    v71[7] = v75;
    v71[2] = v70;
  }

  while (v59 != 5);
LABEL_15:
  swift_setDeallocating();
  sub_1D7756CA8(0, &qword_1EE0910A8);
  v217 = v77;
  swift_arrayDestroy();
  v78 = swift_deallocClassInstance();
  v284 = v60;
  v79 = *(v2 + 648);
  if (!v79)
  {
LABEL_40:
    v164 = *(v2 + 656);
    if (!v164)
    {
LABEL_62:
      v211 = v284;
      MEMORY[0x1EEE9AC00](v78);
      v213[2] = v214;
      v212 = sub_1D78A3168(MEMORY[0x1E69E7CD0], sub_1D78A6C3C, v213, v211);

      return v212;
    }

    v165 = v164 + 64;
    v166 = 1 << *(v164 + 32);
    v167 = -1;
    if (v166 < 64)
    {
      v167 = ~(-1 << v166);
    }

    v168 = v167 & *(v164 + 64);
    v169 = (v166 + 63) >> 6;
    result = swift_bridgeObjectRetain_n();
    v170 = 0;
    v216 = v164;
    while (v168)
    {
LABEL_50:
      v172 = __clz(__rbit64(v168));
      v168 &= v168 - 1;
      v173 = (*(v164 + 56) + 664 * (v172 | (v170 << 6)));
      v175 = v173[2];
      v174 = v173[3];
      v176 = v173[1];
      v268 = *v173;
      v269 = v176;
      v270 = v175;
      v271 = v174;
      v177 = v173[4];
      v178 = v173[5];
      v179 = v173[6];
      v275 = v173[7];
      v274 = v179;
      v273 = v178;
      v272 = v177;
      v180 = v173[22];
      v182 = v173[20];
      v181 = v173[21];
      v283 = v173[23];
      v282 = v180;
      v280 = v182;
      v281 = v181;
      v183 = v173[16];
      v184 = v173[17];
      v185 = v173[18];
      v279 = v173[19];
      v278 = v185;
      v277 = v184;
      v276 = v183;
      v186 = swift_allocObject();
      v187 = v273;
      v186[6] = v272;
      v186[7] = v187;
      v188 = v275;
      v186[8] = v274;
      v186[9] = v188;
      v189 = v269;
      v186[2] = v268;
      v186[3] = v189;
      v190 = v271;
      v186[4] = v270;
      v186[5] = v190;
      v191 = v279;
      v186[12] = v278;
      v186[13] = v191;
      v192 = v277;
      v186[10] = v276;
      v186[11] = v192;
      v193 = v283;
      v186[16] = v282;
      v186[17] = v193;
      v194 = v281;
      v186[14] = v280;
      v186[15] = v194;
      sub_1D78A5720(&v268, &v260);
      sub_1D78A5720(&v276, &v260);
      v195 = 0;
      v196 = MEMORY[0x1E69E7CC0];
      do
      {
        v197 = (v195++ << 7) | 0x20;
        while (1)
        {
          v198 = *(v186 + v197 + 80);
          v256 = *(v186 + v197 + 64);
          v257 = v198;
          v199 = *(v186 + v197 + 112);
          v258 = *(v186 + v197 + 96);
          v259 = v199;
          v200 = *(v186 + v197 + 16);
          v252 = *(v186 + v197);
          v253 = v200;
          v201 = *(v186 + v197 + 48);
          v254 = *(v186 + v197 + 32);
          v255 = v201;
          v266 = v258;
          v267 = v199;
          v264 = v256;
          v265 = v198;
          v262 = v254;
          v263 = v201;
          v260 = v252;
          v261 = v200;
          if (sub_1D78A5794(&v260) != 1)
          {
            break;
          }

          v197 += 128;
          if (++v195 == 3)
          {
            goto LABEL_44;
          }
        }

        v248 = v256;
        v249 = v257;
        v250 = v258;
        v251 = v259;
        v244 = v252;
        v245 = v253;
        v246 = v254;
        v247 = v255;
        sub_1D77F03C4(&v244, &v236);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v196 = sub_1D777B114(0, *(v196 + 2) + 1, 1, v196);
        }

        v203 = *(v196 + 2);
        v202 = *(v196 + 3);
        if (v203 >= v202 >> 1)
        {
          v196 = sub_1D777B114((v202 > 1), v203 + 1, 1, v196);
        }

        v240 = v256;
        v241 = v257;
        v242 = v258;
        v243 = v259;
        v238 = v254;
        v239 = v255;
        v204 = v252;
        v236 = v252;
        v237 = v253;
        *(v196 + 2) = v203 + 1;
        v205 = &v196[128 * v203];
        v206 = v237;
        v207 = v239;
        *(v205 + 4) = v238;
        *(v205 + 5) = v207;
        *(v205 + 3) = v206;
        v208 = v240;
        v209 = v241;
        v210 = v243;
        *(v205 + 8) = v242;
        *(v205 + 9) = v210;
        *(v205 + 6) = v208;
        *(v205 + 7) = v209;
        *(v205 + 2) = v204;
        v164 = v216;
      }

      while (v195 != 2);
LABEL_44:
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      result = sub_1D78A6130(v196);
    }

    while (1)
    {
      v171 = v170 + 1;
      if (__OFADD__(v170, 1))
      {
        goto LABEL_65;
      }

      if (v171 >= v169)
      {

        goto LABEL_62;
      }

      v168 = *(v165 + 8 * v171);
      ++v170;
      if (v168)
      {
        v170 = v171;
        goto LABEL_50;
      }
    }
  }

  v80 = v79 + 64;
  v81 = 1 << *(v79 + 32);
  v82 = -1;
  if (v81 < 64)
  {
    v82 = ~(-1 << v81);
  }

  v83 = v82 & *(v79 + 64);
  v84 = (v81 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v85 = 0;
  v215 = v84;
  v216 = v79;
LABEL_20:
  if (v83)
  {
LABEL_25:
    v87 = __clz(__rbit64(v83));
    v83 &= v83 - 1;
    v88 = (*(v79 + 56) + 664 * (v87 | (v85 << 6)));
    v90 = v88[2];
    v89 = v88[3];
    v91 = v88[1];
    v244 = *v88;
    v245 = v91;
    v246 = v90;
    v247 = v89;
    v92 = v88[4];
    v93 = v88[5];
    v94 = v88[7];
    v250 = v88[6];
    v251 = v94;
    v248 = v92;
    v249 = v93;
    v95 = v88[15];
    v97 = v88[12];
    v96 = v88[13];
    v258 = v88[14];
    v259 = v95;
    v256 = v97;
    v257 = v96;
    v98 = v88[8];
    v99 = v88[9];
    v100 = v88[11];
    v254 = v88[10];
    v255 = v100;
    v252 = v98;
    v253 = v99;
    v101 = v88[16];
    v102 = v88[17];
    v103 = v88[19];
    v262 = v88[18];
    v263 = v103;
    v260 = v101;
    v261 = v102;
    v104 = v88[20];
    v105 = v88[21];
    v106 = v88[23];
    v266 = v88[22];
    v267 = v106;
    v264 = v104;
    v265 = v105;
    v107 = v88[24];
    v108 = v88[25];
    v109 = v88[27];
    v270 = v88[26];
    v271 = v109;
    v268 = v107;
    v269 = v108;
    v110 = v88[28];
    v111 = v88[29];
    v112 = v88[30];
    v275 = v88[31];
    v274 = v112;
    v273 = v111;
    v272 = v110;
    v113 = v88[32];
    v114 = v88[33];
    v115 = v88[34];
    v279 = v88[35];
    v278 = v115;
    v277 = v114;
    v276 = v113;
    v116 = v88[36];
    v117 = v88[37];
    v118 = v88[38];
    v283 = v88[39];
    v282 = v118;
    v281 = v117;
    v280 = v116;
    v119 = swift_allocObject();
    v120 = v249;
    v119[6] = v248;
    v119[7] = v120;
    v121 = v251;
    v119[8] = v250;
    v119[9] = v121;
    v122 = v245;
    v119[2] = v244;
    v119[3] = v122;
    v123 = v247;
    v119[4] = v246;
    v119[5] = v123;
    v124 = v255;
    v119[12] = v254;
    v119[13] = v124;
    v125 = v253;
    v119[10] = v252;
    v119[11] = v125;
    v126 = v259;
    v119[16] = v258;
    v119[17] = v126;
    v127 = v257;
    v119[14] = v256;
    v119[15] = v127;
    v128 = v260;
    v129 = v261;
    v130 = v263;
    v119[20] = v262;
    v119[21] = v130;
    v119[18] = v128;
    v119[19] = v129;
    v131 = v264;
    v132 = v265;
    v133 = v267;
    v119[24] = v266;
    v119[25] = v133;
    v119[22] = v131;
    v119[23] = v132;
    v134 = v268;
    v135 = v269;
    v136 = v271;
    v119[28] = v270;
    v119[29] = v136;
    v119[26] = v134;
    v119[27] = v135;
    v137 = v272;
    v138 = v273;
    v139 = v275;
    v119[32] = v274;
    v119[33] = v139;
    v119[30] = v137;
    v119[31] = v138;
    v140 = v276;
    v141 = v277;
    v142 = v279;
    v119[36] = v278;
    v119[37] = v142;
    v119[34] = v140;
    v119[35] = v141;
    v143 = v280;
    v144 = v281;
    v145 = v283;
    v119[40] = v282;
    v119[41] = v145;
    v119[38] = v143;
    v119[39] = v144;
    sub_1D78A5720(&v244, &v236);
    sub_1D78A5720(&v252, &v236);
    sub_1D78A5720(&v260, &v236);
    sub_1D78A5720(&v268, &v236);
    result = sub_1D78A5720(&v276, &v236);
    v146 = 0;
    v147 = MEMORY[0x1E69E7CC0];
LABEL_26:
    v148 = 5;
    if (v146 > 5)
    {
      v148 = v146;
    }

    v149 = -v148;
    v150 = (v146++ << 7) | 0x20;
    while (v149 + v146 != 1)
    {
      v151 = *(v119 + v150 + 80);
      v232 = *(v119 + v150 + 64);
      v233 = v151;
      v152 = *(v119 + v150 + 112);
      v234 = *(v119 + v150 + 96);
      v235 = v152;
      v153 = *(v119 + v150 + 16);
      v228 = *(v119 + v150);
      v229 = v153;
      v154 = *(v119 + v150 + 48);
      v230 = *(v119 + v150 + 32);
      v231 = v154;
      v236 = v228;
      v237 = v153;
      v238 = v230;
      v239 = v154;
      v240 = v232;
      v241 = v151;
      v242 = v234;
      v243 = v152;
      result = sub_1D78A5794(&v236);
      if (result != 1)
      {
        v227[4] = v232;
        v227[5] = v233;
        v227[6] = v234;
        v227[7] = v235;
        v227[0] = v228;
        v227[1] = v229;
        v227[2] = v230;
        v227[3] = v231;
        sub_1D77F03C4(v227, &v219);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1D777B114(0, *(v147 + 16) + 1, 1, v147);
          v147 = result;
        }

        v156 = *(v147 + 16);
        v155 = *(v147 + 24);
        if (v156 >= v155 >> 1)
        {
          result = sub_1D777B114((v155 > 1), v156 + 1, 1, v147);
          v147 = result;
        }

        v223 = v232;
        v224 = v233;
        v225 = v234;
        v226 = v235;
        v221 = v230;
        v222 = v231;
        v157 = v228;
        v219 = v228;
        v220 = v229;
        *(v147 + 16) = v156 + 1;
        v158 = (v147 + (v156 << 7));
        v159 = v220;
        v160 = v222;
        v158[4] = v221;
        v158[5] = v160;
        v158[3] = v159;
        v161 = v223;
        v162 = v224;
        v163 = v226;
        v158[8] = v225;
        v158[9] = v163;
        v158[6] = v161;
        v158[7] = v162;
        v158[2] = v157;
        if (v146 == 5)
        {
LABEL_19:
          swift_setDeallocating();
          swift_arrayDestroy();
          swift_deallocClassInstance();
          result = sub_1D78A6130(v147);
          v84 = v215;
          v79 = v216;
          goto LABEL_20;
        }

        goto LABEL_26;
      }

      ++v146;
      v150 += 128;
      if (v146 == 6)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  while (1)
  {
    v86 = v85 + 1;
    if (__OFADD__(v85, 1))
    {
      break;
    }

    if (v86 >= v84)
    {

      goto LABEL_40;
    }

    v83 = *(v80 + 8 * v86);
    ++v85;
    if (v83)
    {
      v85 = v86;
      goto LABEL_25;
    }
  }

LABEL_66:
  __break(1u);
  return result;
}

uint64_t sub_1D78A49A0(char a1)
{
  result = 0x53656C6369747261;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x48656C6369747261;
      break;
    case 6:
      result = 0x64726148666470;
      break;
    case 7:
      result = 0x536C656E6E616863;
      break;
    case 8:
      result = 0x656E697A6167616DLL;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0x6565466F69647561;
      break;
    case 12:
      v3 = 0x656C7A7A7570;
      goto LABEL_7;
    case 13:
      result = 0x64656546646F6F66;
      break;
    case 14:
      v3 = 0x657069636572;
LABEL_7:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6148000000000000;
      break;
    case 15:
      result = 0x6F53657069636572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D78A4B68@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  sub_1D77EECB8(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v25 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v27 = v23 - v6;
  sub_1D78AB790(0, &qword_1EE08FAE0, sub_1D78AB7F0);
  v28 = v7;
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v23 - v8;
  v10 = type metadata accessor for PaywallResource();
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D78AB7F0();
  v13 = v29;
  sub_1D78B6874();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v26;
  v14 = v27;
  v29 = v10;
  v33 = 0;
  v16 = v12;
  *v12 = sub_1D78B65E4();
  v12[1] = v17;
  v23[1] = v17;
  v18 = sub_1D78B41C4();
  v32 = 1;
  sub_1D78AB844(&qword_1EE0951B8, MEMORY[0x1E69D6B38]);
  v23[0] = v18;
  sub_1D78B65C4();
  v19 = v29;
  sub_1D78AB88C(v14, v16 + *(v29 + 20), sub_1D77EECB8);
  v31 = 2;
  v20 = v25;
  sub_1D78B65C4();
  sub_1D78AB88C(v20, v16 + *(v19 + 24), sub_1D77EECB8);
  v30 = 3;
  v22 = sub_1D78B65B4();
  (*(v15 + 8))(v9, v28);
  *(v16 + *(v19 + 28)) = v22;
  sub_1D78AB16C(v16, v24, type metadata accessor for PaywallResource);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D78AB1D4(v16, type metadata accessor for PaywallResource);
}

uint64_t sub_1D78A5004()
{
  v1 = *v0;
  if (v1 > 3)
  {
    if (v1 == 6)
    {
      v5 = 0xD000000000000014;
    }

    else
    {
      v5 = 0xD000000000000013;
    }

    v6 = 0xD000000000000020;
    if (v1 == 4)
    {
      v6 = 0x6574726143616C61;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x73756C507377656ELL;
    v3 = 0xD000000000000016;
    if (v1 != 2)
    {
      v3 = 0xD000000000000013;
    }

    if (*v0)
    {
      v2 = 0x6F69647561;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_1D78A5110@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D78A911C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D78A5138(uint64_t a1)
{
  v2 = sub_1D78AB234();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D78A5174(uint64_t a1)
{
  v2 = sub_1D78AB234();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1D78A51B0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1D78A93B0(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x298uLL);
  }

  return result;
}

uint64_t sub_1D78A5204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D78A9CC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D78A5238(uint64_t a1)
{
  v2 = sub_1D78AB694();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D78A5274(uint64_t a1)
{
  v2 = sub_1D78AB694();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D78A52B0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D78AA1D4(a1, v9);
  if (!v2)
  {
    v5 = v13;
    a2[4] = v12;
    a2[5] = v5;
    v6 = v15;
    a2[6] = v14;
    a2[7] = v6;
    v7 = v9[1];
    *a2 = v9[0];
    a2[1] = v7;
    result = *&v10;
    v8 = v11;
    a2[2] = v10;
    a2[3] = v8;
  }

  return result;
}

uint64_t sub_1D78A5304()
{
  v1 = 0x656372756F736572;
  v2 = 0x567377654E78616DLL;
  if (*v0 != 2)
  {
    v2 = 0x7250646C756F6873;
  }

  if (*v0)
  {
    v1 = 0x567377654E6E696DLL;
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

uint64_t sub_1D78A53A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D78AACD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D78A53D0(uint64_t a1)
{
  v2 = sub_1D78AB7F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D78A540C(uint64_t a1)
{
  v2 = sub_1D78AB7F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D78A5460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D77EECB8(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D78AB16C(v2 + *(a1 + 20), v7, sub_1D77EECB8);
  v8 = sub_1D78B41C4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v7, 1, v8) != 1)
  {
    return (*(v9 + 32))(a2, v7, v8);
  }

  sub_1D78B41B4();
  result = (v10)(v7, 1, v8);
  if (result != 1)
  {
    return sub_1D78AB1D4(v7, sub_1D77EECB8);
  }

  return result;
}

uint64_t sub_1D78A55C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D77EECB8(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D78AB16C(v2 + *(a1 + 24), v7, sub_1D77EECB8);
  v8 = sub_1D78B41C4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v7, 1, v8) != 1)
  {
    return (*(v9 + 32))(a2, v7, v8);
  }

  sub_1D78B41A4();
  result = (v10)(v7, 1, v8);
  if (result != 1)
  {
    return sub_1D78AB1D4(v7, sub_1D77EECB8);
  }

  return result;
}

uint64_t sub_1D78A5720(uint64_t a1, uint64_t a2)
{
  sub_1D7756CA8(0, &qword_1EE0910A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D78A5794(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D78A57B8()
{
  sub_1D78AB0F8(0, &qword_1EE08FA78, &qword_1EE0910A8, sub_1D7756CA8, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  v3 = *(v0 + 80);
  v135 = *(v0 + 64);
  v2 = v135;
  v136 = v3;
  v4 = *(v0 + 112);
  v137 = *(v0 + 96);
  v5 = v137;
  v138 = v4;
  v7 = *(v0 + 16);
  v132[0] = *v0;
  v6 = v132[0];
  v132[1] = v7;
  v9 = *(v0 + 48);
  v133 = *(v0 + 32);
  v8 = v133;
  v134 = v9;
  *(v1 + 112) = v3;
  *(v1 + 128) = v5;
  *(v1 + 80) = v9;
  *(v1 + 96) = v2;
  *(v1 + 48) = v7;
  *(v1 + 64) = v8;
  *(v1 + 16) = xmmword_1D78C22A0;
  *(v1 + 32) = v6;
  v10 = *(v0 + 336);
  v12 = *(v0 + 304);
  v128 = *(v0 + 320);
  v11 = v128;
  v129 = v10;
  v13 = *(v0 + 304);
  v15 = *(v0 + 272);
  v126 = *(v0 + 288);
  v14 = v126;
  v127 = v13;
  v16 = *(v0 + 272);
  v18 = *(v0 + 240);
  v125[0] = *(v0 + 256);
  v17 = v125[0];
  v125[1] = v16;
  v19 = *(v0 + 368);
  v21 = *(v0 + 336);
  v130 = *(v0 + 352);
  v20 = v130;
  v131 = v19;
  *(v1 + 240) = v21;
  *(v1 + 256) = v20;
  *(v1 + 208) = v12;
  *(v1 + 224) = v11;
  *(v1 + 176) = v15;
  *(v1 + 192) = v14;
  *(v1 + 144) = v4;
  *(v1 + 160) = v17;
  v22 = *(v0 + 128);
  v23 = *(v0 + 144);
  v24 = *(v0 + 176);
  v120[2] = *(v0 + 160);
  v120[3] = v24;
  v25 = *(v0 + 144);
  v26 = *(v0 + 160);
  v27 = *(v0 + 128);
  v120[0] = v22;
  v120[1] = v25;
  v28 = *(v0 + 208);
  v29 = *(v0 + 240);
  v123 = *(v0 + 224);
  v30 = v123;
  v124 = v29;
  v31 = *(v0 + 176);
  v32 = *(v0 + 208);
  v121 = *(v0 + 192);
  v33 = v121;
  v122 = v32;
  *(v1 + 304) = v23;
  *(v1 + 320) = v26;
  v34 = *(v0 + 384);
  *(v1 + 272) = *(v0 + 368);
  *(v1 + 288) = v27;
  *(v1 + 368) = v28;
  *(v1 + 384) = v30;
  *(v1 + 336) = v31;
  *(v1 + 352) = v33;
  v35 = *(v0 + 400);
  v36 = *(v0 + 432);
  v114 = *(v0 + 416);
  v37 = v114;
  v115 = v36;
  v39 = *(v0 + 384);
  v38 = *(v0 + 400);
  v113[0] = v34;
  v113[1] = v38;
  v40 = *(v0 + 464);
  v41 = *(v0 + 496);
  v118 = *(v0 + 480);
  v42 = v118;
  v119 = v41;
  v43 = *(v0 + 432);
  v44 = *(v0 + 464);
  v116 = *(v0 + 448);
  v45 = v116;
  v117 = v44;
  *(v1 + 432) = v35;
  *(v1 + 448) = v37;
  *(v1 + 400) = v18;
  *(v1 + 416) = v39;
  v46 = *(v0 + 496);
  *(v1 + 512) = v42;
  *(v1 + 528) = v46;
  *(v1 + 480) = v45;
  *(v1 + 496) = v40;
  *(v1 + 464) = v43;
  v47 = *(v0 + 640);
  v112 = v47;
  if (v47)
  {
    v48 = 1 << *(v47 + 32);
    v49 = -1;
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    v50 = v49 & *(v47 + 64);
    sub_1D78A5720(v132, &__dst);
    sub_1D78A5720(v125, &__dst);
    sub_1D78A5720(v120, &__dst);
    sub_1D78A5720(v113, &__dst);
    result = sub_1D78AB05C(&v112, &__dst);
    v52 = 0;
    v53 = (v48 + 63) >> 6;
    v54 = MEMORY[0x1E69E7CC0];
    if (v50)
    {
      goto LABEL_9;
    }

    while (1)
    {
      v55 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        break;
      }

      if (v55 >= v53)
      {

        goto LABEL_17;
      }

      v50 = *(v47 + 64 + 8 * v55);
      ++v52;
      if (v50)
      {
        v52 = v55;
        do
        {
LABEL_9:
          v56 = (*(v47 + 56) + ((v52 << 13) | (__clz(__rbit64(v50)) << 7)));
          v58 = v56[2];
          v57 = v56[3];
          v59 = v56[1];
          __dst = *v56;
          v105 = v59;
          v106 = v58;
          v107 = v57;
          v60 = v56[4];
          v61 = v56[5];
          v62 = v56[7];
          v110 = v56[6];
          v111 = v62;
          v108 = v60;
          v109 = v61;
          sub_1D77F03C4(&__dst, &v96);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v54 = sub_1D777B238(0, v54[2] + 1, 1, v54);
          }

          v64 = v54[2];
          v63 = v54[3];
          if (v64 >= v63 >> 1)
          {
            v54 = sub_1D777B238((v63 > 1), v64 + 1, 1, v54);
          }

          v50 &= v50 - 1;
          v100 = v108;
          v101 = v109;
          v102 = v110;
          v103 = v111;
          v96 = __dst;
          v97 = v105;
          v98 = v106;
          v99 = v107;
          result = nullsub_1(&v96);
          v54[2] = v64 + 1;
          v65 = &v54[16 * v64];
          v66 = v96;
          v67 = v97;
          v68 = v99;
          v65[4] = v98;
          v65[5] = v68;
          v65[2] = v66;
          v65[3] = v67;
          v69 = v100;
          v70 = v101;
          v71 = v103;
          v65[8] = v102;
          v65[9] = v71;
          v65[6] = v69;
          v65[7] = v70;
        }

        while (v50);
      }
    }

    __break(1u);
    goto LABEL_33;
  }

  sub_1D78A5720(v132, &__dst);
  sub_1D78A5720(v125, &__dst);
  sub_1D78A5720(v120, &__dst);
  sub_1D78A5720(v113, &__dst);
  v54 = MEMORY[0x1E69E7CC0];
LABEL_17:
  *&__dst = v54;
  result = sub_1D78A6224(v1);
  v72 = __dst;
  v73 = *(__dst + 16);
  if (v73)
  {
    v74 = 0;
    v75 = MEMORY[0x1E69E7CC0];
LABEL_19:
    v76 = (v72 + 32 + (v74 << 7));
    v77 = v74;
    while (v77 < *(v72 + 16))
    {
      v100 = v76[4];
      v101 = v76[5];
      v102 = v76[6];
      v103 = v76[7];
      v96 = *v76;
      v97 = v76[1];
      v98 = v76[2];
      v99 = v76[3];
      v74 = v77 + 1;
      memmove(&__dst, v76, 0x80uLL);
      result = sub_1D78A5794(&__dst);
      if (result != 1)
      {
        v95[4] = v100;
        v95[5] = v101;
        v95[6] = v102;
        v95[7] = v103;
        v95[0] = v96;
        v95[1] = v97;
        v95[2] = v98;
        v95[3] = v99;
        sub_1D77F03C4(v95, &v87);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1D777B114(0, *(v75 + 16) + 1, 1, v75);
          v75 = result;
        }

        v79 = *(v75 + 16);
        v78 = *(v75 + 24);
        if (v79 >= v78 >> 1)
        {
          result = sub_1D777B114((v78 > 1), v79 + 1, 1, v75);
          v75 = result;
        }

        v91 = v100;
        v92 = v101;
        v93 = v102;
        v94 = v103;
        v89 = v98;
        v90 = v99;
        v80 = v96;
        v87 = v96;
        v88 = v97;
        *(v75 + 16) = v79 + 1;
        v81 = (v75 + (v79 << 7));
        v82 = v88;
        v83 = v90;
        v81[4] = v89;
        v81[5] = v83;
        v81[3] = v82;
        v84 = v91;
        v85 = v92;
        v86 = v94;
        v81[8] = v93;
        v81[9] = v86;
        v81[6] = v84;
        v81[7] = v85;
        v81[2] = v80;
        if (v73 - 1 != v77)
        {
          goto LABEL_19;
        }

        goto LABEL_31;
      }

      v76 += 8;
      ++v77;
      if (v73 == v74)
      {
        goto LABEL_31;
      }
    }

LABEL_33:
    __break(1u);
    return result;
  }

  v75 = MEMORY[0x1E69E7CC0];
LABEL_31:

  return v75;
}

void *sub_1D78A5CF0@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a1;
  v6 = a1[13];
  __src[12] = a1[12];
  __src[13] = v6;
  v7 = a1[15];
  __src[14] = a1[14];
  __src[15] = v7;
  v8 = a1[9];
  __src[8] = a1[8];
  __src[9] = v8;
  v9 = a1[11];
  __src[10] = a1[10];
  __src[11] = v9;
  v10 = a1[5];
  __src[4] = a1[4];
  __src[5] = v10;
  v11 = a1[7];
  __src[6] = a1[6];
  __src[7] = v11;
  v12 = a1[1];
  __src[0] = *a1;
  __src[1] = v12;
  v13 = a1[3];
  __src[2] = a1[2];
  __src[3] = v13;
  v14 = [PaywallModel.tag.getter() identifier];
  swift_unknownObjectRelease();
  v15 = sub_1D78B5C74();
  v17 = v16;

  v18 = v4[13];
  __src[12] = v4[12];
  __src[13] = v18;
  v19 = v4[15];
  __src[14] = v4[14];
  __src[15] = v19;
  v20 = v4[9];
  __src[8] = v4[8];
  __src[9] = v20;
  v21 = v4[11];
  __src[10] = v4[10];
  __src[11] = v21;
  v22 = v4[5];
  __src[4] = v4[4];
  __src[5] = v22;
  v23 = v4[7];
  __src[6] = v4[6];
  __src[7] = v23;
  v24 = v4[1];
  __src[0] = *v4;
  __src[1] = v24;
  v25 = v4[3];
  __src[2] = v4[2];
  __src[3] = v25;
  LODWORD(v4) = [PaywallModel.tag.getter() isPuzzleType];
  swift_unknownObjectRelease();
  if (v4)
  {
    v26 = *(a2 + 656);
    if (!v26)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v26 = *(a2 + 648);
    if (!v26)
    {
LABEL_8:

      goto LABEL_9;
    }
  }

  if (!*(v26 + 16))
  {
    goto LABEL_8;
  }

  v27 = sub_1D777BBB4(v15, v17);
  v29 = v28;

  if ((v29 & 1) == 0)
  {
LABEL_9:
    sub_1D77EEC7C(__src);
    return memcpy(a3, __src, 0x298uLL);
  }

  v30 = (*(v26 + 56) + 664 * v27);
  memcpy(v32, v30, sizeof(v32));
  memmove(__dst, v30, 0x298uLL);
  nullsub_1(__dst);
  sub_1D77EED10(v32, __src);
  memcpy(__src, __dst, 0x298uLL);
  return memcpy(a3, __src, 0x298uLL);
}

uint64_t sub_1D78A5F10(uint64_t a1)
{
  if (*(a1 + 16) == 6)
  {
    return 0;
  }

  else
  {
  }
}

uint64_t sub_1D78A603C(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1D777AD14(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1D78A6130(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1D777B114(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1D78A6224(void *result)
{
  v2 = result[2];
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1D777B238(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1D7756CA8(0, &qword_1EE0910A8);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1D78A632C(uint64_t a1)
{
  sub_1D78AAFC8(0, &qword_1EE08FA38, sub_1D78AAEC4, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D78CCC50;
  v30 = *v1;
  *(inited + 32) = v30;
  v4 = v1[2];
  v6 = v1[5];
  v28 = v1[4];
  v5 = v28;
  v29 = v4;
  *(inited + 40) = v4;
  *(inited + 48) = v5;
  v8 = v1[7];
  v26 = v1[6];
  v7 = v26;
  v27 = v6;
  *(inited + 56) = v6;
  *(inited + 64) = v7;
  v10 = v1[9];
  v24 = v1[8];
  v9 = v24;
  v25 = v8;
  *(inited + 72) = v8;
  *(inited + 80) = v9;
  v12 = v1[11];
  v22 = v1[10];
  v11 = v22;
  v23 = v10;
  *(inited + 88) = v10;
  *(inited + 96) = v11;
  v14 = v1[15];
  v20 = v1[14];
  v13 = v20;
  v21 = v12;
  *(inited + 104) = v12;
  *(inited + 112) = v13;
  v19 = v14;
  *(inited + 120) = v14;
  v17[2] = a1;
  sub_1D78AB16C(&v30, v18, sub_1D78AAEC4);
  sub_1D78AB16C(&v29, v18, sub_1D78AAEC4);
  sub_1D78AB16C(&v28, v18, sub_1D78AAEC4);
  sub_1D78AB16C(&v27, v18, sub_1D78AAEC4);
  sub_1D78AB16C(&v26, v18, sub_1D78AAEC4);
  sub_1D78AB16C(&v25, v18, sub_1D78AAEC4);
  sub_1D78AB16C(&v24, v18, sub_1D78AAEC4);
  sub_1D78AB16C(&v23, v18, sub_1D78AAEC4);
  sub_1D78AB16C(&v22, v18, sub_1D78AAEC4);
  sub_1D78AB16C(&v21, v18, sub_1D78AAEC4);
  sub_1D78AB16C(&v20, v18, sub_1D78AAEC4);
  sub_1D78AB16C(&v19, v18, sub_1D78AAEC4);
  v15 = sub_1D78A3414(sub_1D78AAF78, v17, inited);
  swift_setDeallocating();
  sub_1D78AAEC4(0);
  swift_arrayDestroy();
  return v15;
}

uint64_t sub_1D78A6530@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v20 = a4;
  v17 = *a1;
  v4 = *a2;
  v5 = a2[5];
  v6 = a2[7];
  v15 = a2[8];
  v7 = a2[11];
  v9 = a2[13];
  v8 = a2[14];
  v10 = a2[15];
  sub_1D78AAFC8(0, &qword_1EE08FA38, sub_1D78AAEC4, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D78CA880;
  *(inited + 32) = v5;
  *(inited + 40) = v4;
  *(inited + 48) = v7;
  *(inited + 56) = v6;
  *(inited + 64) = v15;
  *(inited + 72) = v9;
  *(inited + 80) = v8;
  *(inited + 88) = v10;
  v19 = a3;

  v12 = sub_1D78A3414(sub_1D78AB3B4, v18, inited);
  swift_setDeallocating();
  sub_1D78AAEC4(0);
  swift_arrayDestroy();

  v13 = sub_1D7853650(v12, v17);

  *v20 = v13;
  return result;
}

uint64_t sub_1D78A66D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for PaywallResource();
  v24 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D77EECB8(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D78B41C4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  sub_1D78AB16C(a2, v11, sub_1D77EECB8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    result = sub_1D78AB1D4(v11, sub_1D77EECB8);
    if (v16 && *(v16 + 16))
    {
      v18 = (v16 + ((*(v24 + 80) + 32) & ~*(v24 + 80)));
      v19 = v18[1];
      *a3 = *v18;
      a3[1] = v19;
    }
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    if (v16)
    {
      sub_1D78AB844(&qword_1EE094700, type metadata accessor for PaywallResource);
      v20 = sub_1D78B5ED4();
      if (*(v20 + 16))
      {
        sub_1D78AB16C(v20 + ((*(v24 + 80) + 32) & ~*(v24 + 80)), v8, type metadata accessor for PaywallResource);

        (*(v13 + 8))(v15, v12);
        v22 = *v8;
        v21 = v8[1];

        result = sub_1D78AB1D4(v8, type metadata accessor for PaywallResource);
        *a3 = v22;
        a3[1] = v21;
        return result;
      }
    }

    result = (*(v13 + 8))(v15, v12);
  }

  *a3 = 0;
  a3[1] = 0;
  return result;
}

uint64_t sub_1D78A6A0C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D78AAF94(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PaywallResource();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!*a1)
  {
    (*(v8 + 56))(v6, 1, 1, v7);
    goto LABEL_7;
  }

  sub_1D78AB844(&qword_1EE094700, type metadata accessor for PaywallResource);
  sub_1D78B5EE4();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
LABEL_7:
    result = sub_1D78AB1D4(v6, sub_1D78AAF94);
    *a2 = 0;
    a2[1] = 0;
    return result;
  }

  sub_1D78AB88C(v6, v10, type metadata accessor for PaywallResource);
  v11 = *(v10 + *(v7 + 28));
  if (v11 == 2 || (v11 & 1) == 0)
  {
    v13 = 0;
    v12 = 0;
  }

  else
  {
    v13 = *v10;
    v12 = v10[1];
  }

  result = sub_1D78AB1D4(v10, type metadata accessor for PaywallResource);
  *a2 = v13;
  a2[1] = v12;
  return result;
}

uint64_t sub_1D78A6C3C()
{
  v1 = sub_1D78A632C(*(v0 + 16));
  sub_1D78AAE54(v1);
}

uint64_t sub_1D78A6C8C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1D78B6814();
  sub_1D78B5D14();
  v8 = sub_1D78B6844();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1D78B6724() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1D78A79D0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1D78A6DDC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1D78B56F4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1D78AB844(&unk_1EE0902A0, MEMORY[0x1E69B6000]);
  v33 = a2;
  v11 = sub_1D78B5C04();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1D78AB844(&qword_1EE090298, MEMORY[0x1E69B6000]);
      v21 = sub_1D78B5C34();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1D78A7B50(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1D78A70BC()
{
  v1 = v0;
  v2 = *v0;
  sub_1D77EFD88(0, &unk_1EC9CA560);
  result = sub_1D78B6414();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v24 = v1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 4 * (v13 | (v5 << 6)));
      result = MEMORY[0x1DA703AA0](*(v4 + 40), v16, 4);
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 4 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    v1 = v24;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1D78A72F0()
{
  v1 = v0;
  v2 = *v0;
  sub_1D77EFD88(0, &unk_1EE08FB58);
  result = sub_1D78B6414();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1D78B6814();
      sub_1D78B5D14();
      result = sub_1D78B6844();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1D78A755C()
{
  v1 = v0;
  v35 = sub_1D78B56F4();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_1D77EFDD8();
  result = sub_1D78B6414();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_1D78AB844(&unk_1EE0902A0, MEMORY[0x1E69B6000]);
      result = sub_1D78B5C04();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_1D78A78AC(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D78A70BC();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1D77EE094();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1D78A7DF4();
  }

  v8 = *v3;
  result = MEMORY[0x1DA703AA0](*(*v3 + 40), v4, 4);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 4 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 4 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D78B6774();
  __break(1u);
  return result;
}

uint64_t sub_1D78A79D0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1D78A72F0();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1D77EE1E0();
      goto LABEL_16;
    }

    sub_1D78A7FF4();
  }

  v10 = *v4;
  sub_1D78B6814();
  sub_1D78B5D14();
  result = sub_1D78B6844();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1D78B6724();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1D78B6774();
  __break(1u);
  return result;
}

uint64_t sub_1D78A7B50(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_1D78B56F4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D78A755C();
  }

  else
  {
    if (v11 > v10)
    {
      sub_1D77EE348();
      goto LABEL_12;
    }

    sub_1D78A8238();
  }

  v12 = *v3;
  sub_1D78AB844(&unk_1EE0902A0, MEMORY[0x1E69B6000]);
  v13 = sub_1D78B5C04();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1D78AB844(&qword_1EE090298, MEMORY[0x1E69B6000]);
      v21 = sub_1D78B5C34();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D78B6774();
  __break(1u);
  return result;
}

uint64_t sub_1D78A7DF4()
{
  v1 = v0;
  v2 = *v0;
  sub_1D77EFD88(0, &unk_1EC9CA560);
  result = sub_1D78B6414();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 4 * (v12 | (v5 << 6)));
      result = MEMORY[0x1DA703AA0](*(v4 + 40), v15, 4);
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 4 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D78A7FF4()
{
  v1 = v0;
  v2 = *v0;
  sub_1D77EFD88(0, &unk_1EE08FB58);
  result = sub_1D78B6414();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_1D78B6814();

      sub_1D78B5D14();
      result = sub_1D78B6844();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D78A8238()
{
  v1 = v0;
  v32 = sub_1D78B56F4();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1D77EFDD8();
  v6 = sub_1D78B6414();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_1D78AB844(&unk_1EE0902A0, MEMORY[0x1E69B6000]);
      result = sub_1D78B5C04();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

void sub_1D78A8548(__int128 *a1@<X0>, const void *a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = a1[13];
  *&v108[176] = a1[12];
  *&v108[192] = v4;
  v5 = a1[15];
  v109 = a1[14];
  v110 = v5;
  v6 = a1[9];
  *&v108[112] = a1[8];
  *&v108[128] = v6;
  v7 = a1[11];
  *&v108[144] = a1[10];
  *&v108[160] = v7;
  v8 = a1[5];
  *&v108[48] = a1[4];
  *&v108[64] = v8;
  v9 = a1[7];
  *&v108[80] = a1[6];
  *&v108[96] = v9;
  v10 = a1[1];
  v107 = *a1;
  *v108 = v10;
  v11 = a1[3];
  *&v108[16] = a1[2];
  *&v108[32] = v11;
  memcpy(__dst, a2, sizeof(__dst));
  if (sub_1D77EECEC(__dst) != 1)
  {
    memcpy(v98, __dst, sizeof(v98));
    v12 = __dst[80];
    v95[10] = *&v108[168];
    v95[11] = *&v108[184];
    v96 = v108[200];
    v95[6] = *&v108[104];
    v95[7] = *&v108[120];
    v95[8] = *&v108[136];
    v95[9] = *&v108[152];
    v95[2] = *&v108[40];
    v95[3] = *&v108[56];
    v95[4] = *&v108[72];
    v95[5] = *&v108[88];
    v95[0] = *&v108[8];
    v95[1] = *&v108[24];
    v13 = sub_1D77C19C8(v95);
    if (v13 <= 1)
    {
      if (!v13)
      {
        if ((*(nullsub_1(v95) + 8) & 1) == 0 && v108[0] == 2)
        {
          v59 = v98[12];
          v60 = v98[13];
          v61 = v98[14];
          v62 = v98[15];
          v55 = v98[8];
          v56 = v98[9];
          v57 = v98[10];
          v58 = v98[11];
          if (sub_1D78A5794(&v55) != 1)
          {
            v103 = v98[12];
            v104 = v98[13];
            v105 = v98[14];
            v106 = v98[15];
            v99 = v98[8];
            v100 = v98[9];
            v101 = v98[10];
            v102 = v98[11];
            sub_1D77F03C4(&v99, &v87);
            v91 = v98[12];
            v92 = v98[13];
            v93 = v98[14];
            v94 = v98[15];
            v87 = v98[8];
            v88 = v98[9];
            v14 = v98[10];
            v15 = v98[11];
LABEL_50:
            v89 = v14;
            v90 = v15;
            goto LABEL_51;
          }

          goto LABEL_19;
        }

        if (v108[0])
        {
          goto LABEL_48;
        }

        v25 = v107;
        if (([swift_unknownObjectRetain() respondsToSelector_] & 1) == 0)
        {
          swift_unknownObjectRelease();
LABEL_48:
          v59 = v98[4];
          v60 = v98[5];
          v61 = v98[6];
          v62 = v98[7];
          v55 = v98[0];
          v56 = v98[1];
          v18 = v98[2];
          v19 = v98[3];
          goto LABEL_49;
        }

        v26 = [v25 hasAudioTrack];
        swift_unknownObjectRelease();
        if ((v26 & 1) == 0)
        {
          goto LABEL_48;
        }

        v75 = v98[12];
        v76 = v98[13];
        v77 = v98[14];
        v78 = v98[15];
        v71 = v98[8];
        v72 = v98[9];
        v73 = v98[10];
        v74 = v98[11];
        v81 = v98[10];
        v82 = v98[11];
        v79 = v98[8];
        v80 = v98[9];
        v85 = v98[14];
        v86 = v98[15];
        v83 = v98[12];
        v84 = v98[13];
        if (sub_1D78A5794(&v79) == 1)
        {
          goto LABEL_48;
        }

        v103 = v83;
        v104 = v84;
        v105 = v85;
        v106 = v86;
        v99 = v79;
        v100 = v80;
        v101 = v81;
        v102 = v82;
        v67 = *&v108[176];
        v68 = *&v108[192];
        v69 = v109;
        v70 = v110;
        v63 = *&v108[112];
        v64 = *&v108[128];
        v65 = *&v108[144];
        v66 = *&v108[160];
        v59 = *&v108[48];
        v60 = *&v108[64];
        v61 = *&v108[80];
        v62 = *&v108[96];
        v55 = v107;
        v56 = *v108;
        v57 = *&v108[16];
        v58 = *&v108[32];
        if (!sub_1D78A5F10(&v55))
        {
          goto LABEL_48;
        }

LABEL_39:
        sub_1D78A5720(&v71, &v55);

        v91 = v75;
        v92 = v76;
        v93 = v77;
        v94 = v78;
        v87 = v71;
        v88 = v72;
        v14 = v73;
        v15 = v74;
        goto LABEL_50;
      }

      nullsub_1(v95);
      v59 = v98[36];
      v60 = v98[37];
      v61 = v98[38];
      v62 = v98[39];
      v55 = v98[32];
      v56 = v98[33];
      v18 = v98[34];
      v19 = v98[35];
      goto LABEL_49;
    }

    if (v13 == 2)
    {
      v16 = nullsub_1(v95);
      if (v16[14])
      {
        if (v16[19] == 0xD000000000000019 && 0x80000001D78CF0C0 == v16[20])
        {
          v17 = v108[0];
LABEL_34:
          if (!v17)
          {
            v29 = v107;
            if ([swift_unknownObjectRetain() respondsToSelector_])
            {
              v30 = [v29 hasAudioTrack];
              swift_unknownObjectRelease();
              if (v30)
              {
                v75 = v98[28];
                v76 = v98[29];
                v77 = v98[30];
                v78 = v98[31];
                v71 = v98[24];
                v72 = v98[25];
                v73 = v98[26];
                v74 = v98[27];
                v81 = v98[26];
                v82 = v98[27];
                v79 = v98[24];
                v80 = v98[25];
                v85 = v98[30];
                v86 = v98[31];
                v83 = v98[28];
                v84 = v98[29];
                if (sub_1D78A5794(&v79) != 1)
                {
                  v103 = v83;
                  v104 = v84;
                  v105 = v85;
                  v106 = v86;
                  v99 = v79;
                  v100 = v80;
                  v101 = v81;
                  v102 = v82;
                  v67 = *&v108[176];
                  v68 = *&v108[192];
                  v69 = v109;
                  v70 = v110;
                  v63 = *&v108[112];
                  v64 = *&v108[128];
                  v65 = *&v108[144];
                  v66 = *&v108[160];
                  v59 = *&v108[48];
                  v60 = *&v108[64];
                  v61 = *&v108[80];
                  v62 = *&v108[96];
                  v55 = v107;
                  v56 = *v108;
                  v57 = *&v108[16];
                  v58 = *&v108[32];
                  if (sub_1D78A5F10(&v55))
                  {
                    goto LABEL_39;
                  }
                }
              }
            }

            else
            {
              swift_unknownObjectRelease();
            }
          }

          v59 = v98[20];
          v60 = v98[21];
          v61 = v98[22];
          v62 = v98[23];
          v55 = v98[16];
          v56 = v98[17];
          v18 = v98[18];
          v19 = v98[19];
LABEL_49:
          v57 = v18;
          v58 = v19;
          sub_1D78A5720(&v55, &v87);
          v91 = v59;
          v92 = v60;
          v93 = v61;
          v94 = v62;
          v87 = v55;
          v88 = v56;
          v14 = v57;
          v15 = v58;
          goto LABEL_50;
        }

        v28 = sub_1D78B6724();
        v17 = v108[0];
        if (v28)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v27 = AMSMarketingItem.isCIPOffer()();
        v17 = v108[0];
        if (v27)
        {
          goto LABEL_34;
        }
      }

      if (v17 != 2)
      {
        goto LABEL_34;
      }

      v59 = v98[28];
      v60 = v98[29];
      v61 = v98[30];
      v62 = v98[31];
      v55 = v98[24];
      v56 = v98[25];
      v57 = v98[26];
      v58 = v98[27];
      if (sub_1D78A5794(&v55) != 1)
      {
        v103 = v98[28];
        v104 = v98[29];
        v105 = v98[30];
        v106 = v98[31];
        v99 = v98[24];
        v100 = v98[25];
        v101 = v98[26];
        v102 = v98[27];
        sub_1D77F03C4(&v99, &v87);
        v91 = v98[28];
        v92 = v98[29];
        v93 = v98[30];
        v94 = v98[31];
        v87 = v98[24];
        v88 = v98[25];
        v14 = v98[26];
        v15 = v98[27];
        goto LABEL_50;
      }

      goto LABEL_33;
    }

    nullsub_1(v95);
    v65 = *&v108[168];
    v66 = *&v108[184];
    LOBYTE(v67) = v108[200];
    v61 = *&v108[104];
    v62 = *&v108[120];
    v63 = *&v108[136];
    v64 = *&v108[152];
    v57 = *&v108[40];
    v58 = *&v108[56];
    v59 = *&v108[72];
    v60 = *&v108[88];
    v55 = *&v108[8];
    v56 = *&v108[24];
    v20 = nullsub_1(&v55);
    if (!v20[11] || (v21 = v20[14], v22 = v20[15], v21 == 0x73756C507377656ELL) && v22 == 0xE800000000000000 || (sub_1D78B6724() & 1) != 0)
    {
LABEL_19:
      v103 = v98[4];
      v104 = v98[5];
      v105 = v98[6];
      v106 = v98[7];
      v99 = v98[0];
      v100 = v98[1];
      v23 = v98[2];
      v24 = v98[3];
      goto LABEL_20;
    }

    if (v21 == 0x6F69647561 && v22 == 0xE500000000000000 || (sub_1D78B6724() & 1) != 0)
    {
      v103 = v98[12];
      v104 = v98[13];
      v105 = v98[14];
      v106 = v98[15];
      v99 = v98[8];
      v100 = v98[9];
      v23 = v98[10];
      v24 = v98[11];
    }

    else
    {
      if (v21 == 0xD000000000000016 && 0x80000001D78E16A0 == v22 || (sub_1D78B6724() & 1) != 0)
      {
LABEL_33:
        v103 = v98[20];
        v104 = v98[21];
        v105 = v98[22];
        v106 = v98[23];
        v99 = v98[16];
        v100 = v98[17];
        v23 = v98[18];
        v24 = v98[19];
        goto LABEL_20;
      }

      if (v21 == 0xD000000000000013 && 0x80000001D78E16C0 == v22 || (sub_1D78B6724() & 1) != 0)
      {
        v103 = v98[28];
        v104 = v98[29];
        v105 = v98[30];
        v106 = v98[31];
        v99 = v98[24];
        v100 = v98[25];
        v23 = v98[26];
        v24 = v98[27];
      }

      else
      {
        if ((v21 != 0x6574726143616C61 || v22 != 0xE800000000000000) && (sub_1D78B6724() & 1) == 0)
        {
          *&v71 = v12;
          if (v12)
          {
            v35 = 0;
            v36 = 1 << *(v12 + 32);
            v37 = -1;
            if (v36 < 64)
            {
              v37 = ~(-1 << v36);
            }

            v38 = v37 & *(v12 + 64);
            v52 = (v36 + 63) >> 6;
            while (1)
            {
              if (!v38)
              {
                while (1)
                {
                  v39 = v35 + 1;
                  if (__OFADD__(v35, 1))
                  {
                    break;
                  }

                  if (v39 >= v52)
                  {
                    sub_1D78AB05C(&v71, &v87);

                    goto LABEL_19;
                  }

                  v38 = *(v12 + 64 + 8 * v39);
                  ++v35;
                  if (v38)
                  {
                    v35 = v39;
                    goto LABEL_72;
                  }
                }

                __break(1u);
                return;
              }

LABEL_72:
              v40 = (*(v12 + 48) + ((v35 << 10) | (16 * __clz(__rbit64(v38)))));
              v41 = *v40 == v21 && v40[1] == v22;
              v53 = v40[1];
              if (v41)
              {
                break;
              }

              v38 &= v38 - 1;
              v54 = *v40;
              if (sub_1D78B6724())
              {
                goto LABEL_80;
              }
            }

            v54 = v21;
LABEL_80:
            if (*(v12 + 16))
            {
              sub_1D78AB05C(&v71, &v87);
              sub_1D77C20B0(&v108[8], &v87);

              v42 = sub_1D777BBB4(v54, v53);
              v44 = v43;

              if (v44)
              {
                v45 = (*(v12 + 56) + (v42 << 7));
                v47 = v45[2];
                v46 = v45[3];
                v48 = v45[1];
                v79 = *v45;
                v80 = v48;
                v81 = v47;
                v82 = v46;
                v49 = v45[4];
                v50 = v45[5];
                v51 = v45[7];
                v85 = v45[6];
                v86 = v51;
                v83 = v49;
                v84 = v50;
                sub_1D77F03C4(&v79, &v87);
                sub_1D77C33B0(&v108[8]);

                v103 = v83;
                v104 = v84;
                v105 = v85;
                v106 = v86;
                v99 = v79;
                v100 = v80;
                v101 = v81;
                v102 = v82;
                nullsub_1(&v99);
                goto LABEL_21;
              }

              sub_1D77C33B0(&v108[8]);
            }

            else
            {
              sub_1D78AB05C(&v71, &v87);
            }

            goto LABEL_2;
          }

          goto LABEL_19;
        }

        v103 = v98[36];
        v104 = v98[37];
        v105 = v98[38];
        v106 = v98[39];
        v99 = v98[32];
        v100 = v98[33];
        v23 = v98[34];
        v24 = v98[35];
      }
    }

LABEL_20:
    v101 = v23;
    v102 = v24;
    sub_1D78A5720(&v99, &v87);
LABEL_21:
    v91 = v103;
    v92 = v104;
    v93 = v105;
    v94 = v106;
    v87 = v99;
    v88 = v100;
    v14 = v101;
    v15 = v102;
    goto LABEL_50;
  }

LABEL_2:
  sub_1D78AB02C(&v87);
LABEL_51:
  v31 = v92;
  a3[4] = v91;
  a3[5] = v31;
  v32 = v94;
  a3[6] = v93;
  a3[7] = v32;
  v33 = v88;
  *a3 = v87;
  a3[1] = v33;
  v34 = v90;
  a3[2] = v89;
  a3[3] = v34;
}

uint64_t sub_1D78A911C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73756C507377656ELL && a2 == 0xE800000000000000;
  if (v4 || (sub_1D78B6724() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F69647561 && a2 == 0xE500000000000000 || (sub_1D78B6724() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D78E16A0 == a2 || (sub_1D78B6724() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D78E16C0 == a2 || (sub_1D78B6724() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6574726143616C61 && a2 == 0xE800000000000000 || (sub_1D78B6724() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001D78E16E0 == a2 || (sub_1D78B6724() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D78E1710 == a2 || (sub_1D78B6724() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D78E1730 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_1D78B6724();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

void *sub_1D78A93B0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v18 = a2;
  sub_1D78AB790(0, &qword_1EE08FAE8, sub_1D78AB234);
  v19 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  v8 = a1[3];
  v70 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_1D78AB234();
  sub_1D78B6874();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v70);
  }

  v9 = v5;
  v60 = 0;
  sub_1D78AB288();
  v10 = v19;
  sub_1D78B65C4();
  v69[4] = v65;
  v69[5] = v66;
  v69[6] = v67;
  v69[7] = v68;
  v69[0] = v61;
  v69[1] = v62;
  v69[2] = v63;
  v69[3] = v64;
  v51 = 1;
  sub_1D78B65C4();
  v69[12] = v56;
  v69[13] = v57;
  v69[14] = v58;
  v69[15] = v59;
  v69[8] = v52;
  v69[9] = v53;
  v69[10] = v54;
  v69[11] = v55;
  v42 = 2;
  sub_1D78B65C4();
  v69[20] = v47;
  v69[21] = v48;
  v69[22] = v49;
  v69[23] = v50;
  v69[16] = v43;
  v69[17] = v44;
  v69[18] = v45;
  v69[19] = v46;
  v33 = 3;
  sub_1D78B65C4();
  v69[28] = v38;
  v69[29] = v39;
  v69[30] = v40;
  v69[31] = v41;
  v69[24] = v34;
  v69[25] = v35;
  v69[26] = v36;
  v69[27] = v37;
  v24 = 4;
  sub_1D78B65C4();
  v69[36] = v29;
  v69[37] = v30;
  v69[38] = v31;
  v69[39] = v32;
  v69[32] = v25;
  v69[33] = v26;
  v69[34] = v27;
  v69[35] = v28;
  sub_1D78AB2DC(0, &qword_1EE0901A0);
  LOBYTE(v20[0]) = 5;
  sub_1D78AB334(&qword_1EE090198, &qword_1EE0901A0, &type metadata for PaywallResourceByLocationConfig, sub_1D78AB288);
  sub_1D78B65C4();
  v17 = v21[0];
  sub_1D78AB2DC(0, &qword_1EE0901C8);
  LOBYTE(v20[0]) = 6;
  sub_1D78AB334(&qword_1EE0901C0, &qword_1EE0901C8, &type metadata for PaywallConfig, sub_1D77EFD20);
  sub_1D78B65C4();
  v16 = v21[0];
  v22 = 7;
  sub_1D78B65C4();
  (*(v9 + 8))(v7, v10);
  v11 = v23;
  memcpy(v20, v69, 0x280uLL);
  v13 = v16;
  v12 = v17;
  v20[80] = v17;
  v20[81] = v16;
  v20[82] = v23;
  sub_1D77EED10(v20, v21);
  __swift_destroy_boxed_opaque_existential_1(v70);
  memcpy(v21, v69, 0x280uLL);
  v21[80] = v12;
  v21[81] = v13;
  v21[82] = v11;
  sub_1D77F016C(v21);
  return memcpy(v18, v20, 0x298uLL);
}

uint64_t sub_1D78A9CC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x53656C6369747261 && a2 == 0xEB0000000074666FLL;
  if (v4 || (sub_1D78B6724() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D78E1750 == a2 || (sub_1D78B6724() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D78E1770 == a2 || (sub_1D78B6724() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D78E1790 == a2 || (sub_1D78B6724() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D78E17B0 == a2 || (sub_1D78B6724() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x48656C6369747261 && a2 == 0xEB00000000647261 || (sub_1D78B6724() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x64726148666470 && a2 == 0xE700000000000000 || (sub_1D78B6724() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x536C656E6E616863 && a2 == 0xEB0000000074666FLL || (sub_1D78B6724() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x656E697A6167616DLL && a2 == 0xEC00000064656546 || (sub_1D78B6724() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D78E17D0 == a2 || (sub_1D78B6724() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D78E17F0 == a2 || (sub_1D78B6724() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6565466F69647561 && a2 == 0xE900000000000064 || (sub_1D78B6724() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6148656C7A7A7570 && a2 == 0xEA00000000006472 || (sub_1D78B6724() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x64656546646F6F66 && a2 == 0xE800000000000000 || (sub_1D78B6724() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6148657069636572 && a2 == 0xEA00000000006472 || (sub_1D78B6724() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6F53657069636572 && a2 == 0xEA00000000007466)
  {

    return 15;
  }

  else
  {
    v6 = sub_1D78B6724();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

uint64_t sub_1D78AA1D4@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D78AB790(0, &qword_1EE08FAC8, sub_1D78AB694);
  v37 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  v9 = a1[3];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1D78AB694();
  sub_1D78B6874();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v38);
  }

  v36 = v6;
  sub_1D78AAEF8(0);
  LOBYTE(v39) = 0;
  sub_1D78AB6E8();
  sub_1D78B65C4();
  v35 = v47[0];
  LOBYTE(v39) = 1;
  sub_1D78B65C4();
  v32 = 0;
  v33 = v47[0];
  LOBYTE(v39) = 2;
  sub_1D78B65C4();
  v31 = v47[0];
  LOBYTE(v39) = 3;
  sub_1D78B65C4();
  v30 = v47[0];
  LOBYTE(v39) = 4;
  sub_1D78B65C4();
  v29 = v47[0];
  LOBYTE(v39) = 5;
  sub_1D78B65C4();
  v28 = v47[0];
  LOBYTE(v39) = 6;
  sub_1D78B65C4();
  v27 = v47[0];
  LOBYTE(v39) = 7;
  sub_1D78B65C4();
  v26 = v47[0];
  LOBYTE(v39) = 8;
  sub_1D78B65C4();
  v25 = v47[0];
  LOBYTE(v39) = 9;
  sub_1D78B65C4();
  v24 = v47[0];
  LOBYTE(v39) = 10;
  sub_1D78B65C4();
  v23 = v47[0];
  LOBYTE(v39) = 11;
  sub_1D78B65C4();
  v34 = v47[0];
  LOBYTE(v39) = 12;
  sub_1D78B65C4();
  v32 = v47[0];
  LOBYTE(v39) = 13;
  sub_1D78B65C4();
  v22 = v47[0];
  LOBYTE(v39) = 14;
  sub_1D78B65C4();
  v21 = v47[0];
  v48 = 15;
  sub_1D78B65C4();
  (*(v36 + 8))(v8, v37);
  v37 = v49;
  v10 = v35;
  v11 = v33;
  *&v39 = v35;
  *(&v39 + 1) = v33;
  v12 = v30;
  *&v40 = v31;
  *(&v40 + 1) = v30;
  v13 = v28;
  v14 = v29;
  *&v41 = v29;
  *(&v41 + 1) = v28;
  *&v42 = v27;
  *(&v42 + 1) = v26;
  *&v43 = v25;
  *(&v43 + 1) = v24;
  *&v44 = v23;
  *(&v44 + 1) = v34;
  v15 = v32;
  *&v45 = v32;
  *(&v45 + 1) = v22;
  *&v46 = v21;
  *(&v46 + 1) = v49;
  sub_1D77F03C4(&v39, v47);
  __swift_destroy_boxed_opaque_existential_1(v38);
  v47[0] = v10;
  v47[1] = v11;
  v47[2] = v31;
  v47[3] = v12;
  v47[4] = v14;
  v47[5] = v13;
  v47[6] = v27;
  v47[7] = v26;
  v47[8] = v25;
  v47[9] = v24;
  v47[10] = v23;
  v47[11] = v34;
  v47[12] = v15;
  v47[13] = v22;
  v47[14] = v21;
  v47[15] = v37;
  result = sub_1D77F0420(v47);
  v17 = v44;
  a2[4] = v43;
  a2[5] = v17;
  v18 = v46;
  a2[6] = v45;
  a2[7] = v18;
  v19 = v40;
  *a2 = v39;
  a2[1] = v19;
  v20 = v42;
  a2[2] = v41;
  a2[3] = v20;
  return result;
}

uint64_t sub_1D78AACD0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656372756F736572 && a2 == 0xEA00000000006449;
  if (v4 || (sub_1D78B6724() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x567377654E6E696DLL && a2 == 0xEE006E6F69737265 || (sub_1D78B6724() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x567377654E78616DLL && a2 == 0xEE006E6F69737265 || (sub_1D78B6724() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7250646C756F6873 && a2 == 0xED00006D72617765)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D78B6724();

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

uint64_t sub_1D78AAE54(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_1D78A6C8C(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t type metadata accessor for PaywallResource()
{
  result = qword_1EE0946E8;
  if (!qword_1EE0946E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D78AAFC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

double sub_1D78AB02C(uint64_t a1)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  return result;
}

uint64_t sub_1D78AB05C(uint64_t a1, uint64_t a2)
{
  sub_1D78AB0F8(0, &qword_1EE08E628, &unk_1EE0901A0, sub_1D78AB2DC, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D78AB0F8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, ValueMetadata *), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = a4(255, a3, &type metadata for PaywallResourceByLocationConfig);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D78AB16C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D78AB1D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D78AB234()
{
  result = qword_1EE094B08;
  if (!qword_1EE094B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE094B08);
  }

  return result;
}

unint64_t sub_1D78AB288()
{
  result = qword_1EE0910B0;
  if (!qword_1EE0910B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0910B0);
  }

  return result;
}

void sub_1D78AB2DC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D78B5BF4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1D78AB334(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D78AB2DC(255, a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D78AB408()
{
  sub_1D77EECB8(319);
  if (v0 <= 0x3F)
  {
    sub_1D7756CA8(319, &unk_1EE08FF88);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D78AB4AC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 128))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D78AB508(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1D78AB590()
{
  result = qword_1EC9CBB28;
  if (!qword_1EC9CBB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CBB28);
  }

  return result;
}

unint64_t sub_1D78AB5E8()
{
  result = qword_1EE094AF8;
  if (!qword_1EE094AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE094AF8);
  }

  return result;
}

unint64_t sub_1D78AB640()
{
  result = qword_1EE094B00;
  if (!qword_1EE094B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE094B00);
  }

  return result;
}

unint64_t sub_1D78AB694()
{
  result = qword_1EE0910C8;
  if (!qword_1EE0910C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0910C8);
  }

  return result;
}

unint64_t sub_1D78AB6E8()
{
  result = qword_1EE090080;
  if (!qword_1EE090080)
  {
    sub_1D78AAEF8(255);
    sub_1D78AB844(&qword_1EE0946F8, type metadata accessor for PaywallResource);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE090080);
  }

  return result;
}

void sub_1D78AB790(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1D78B6634();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D78AB7F0()
{
  result = qword_1EE094718[0];
  if (!qword_1EE094718[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE094718);
  }

  return result;
}

uint64_t sub_1D78AB844(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D78AB88C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for PaywallResourceByLocationConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PaywallResourceByLocationConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D78ABA58()
{
  result = qword_1EC9CBB30;
  if (!qword_1EC9CBB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CBB30);
  }

  return result;
}

unint64_t sub_1D78ABAB0()
{
  result = qword_1EC9CBB38;
  if (!qword_1EC9CBB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CBB38);
  }

  return result;
}

unint64_t sub_1D78ABB08()
{
  result = qword_1EE094708;
  if (!qword_1EE094708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE094708);
  }

  return result;
}

unint64_t sub_1D78ABB60()
{
  result = qword_1EE094710;
  if (!qword_1EE094710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE094710);
  }

  return result;
}

unint64_t sub_1D78ABBB8()
{
  result = qword_1EE0910B8;
  if (!qword_1EE0910B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0910B8);
  }

  return result;
}

unint64_t sub_1D78ABC10()
{
  result = qword_1EE0910C0;
  if (!qword_1EE0910C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0910C0);
  }

  return result;
}

uint64_t ArticleAccessMap.map.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

NewsSubscription::ArticleAccessMap __swiftcall ArticleAccessMap.init(map:)(Swift::OpaquePointer map)
{
  v3 = v1;

  v3->_rawValue = map._rawValue;
  return result;
}

unint64_t ArticleAccessMap.articleAccess(for:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = *v3;
  if (*(v5 + 16) && (result = sub_1D777BBB4(result, a2), (v6 & 1) != 0))
  {
    v7 = *(*(v5 + 56) + result);
  }

  else
  {
    v7 = 2;
  }

  *a3 = v7;
  return result;
}

void sub_1D78ABD6C(void *a1, void *a2, void *a3)
{
  v31 = a1;
  sub_1D773F0BC();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PurchaseContext();
  v30 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v29 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D774FE1C();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D78BCB50;
  v33 = a2;
  sub_1D78AD478(0, &qword_1EC9CBBD0, &unk_1EC9CBBD8, 0x1E698C868, sub_1D773F004);
  v11 = a2;
  v12 = sub_1D78B5CC4();
  v14 = v13;
  v15 = MEMORY[0x1E69E6158];
  *(v10 + 56) = MEMORY[0x1E69E6158];
  v16 = sub_1D775ABD4();
  *(v10 + 64) = v16;
  *(v10 + 32) = v12;
  *(v10 + 40) = v14;
  v33 = a3;
  v17 = a3;
  sub_1D78AD478(0, &unk_1EE08F9E0, &qword_1EE08F9F0, MEMORY[0x1E69E7280], sub_1D773C9B8);
  v18 = sub_1D78B5CC4();
  *(v10 + 96) = v15;
  *(v10 + 104) = v16;
  *(v10 + 72) = v18;
  *(v10 + 80) = v19;
  sub_1D78B60A4();
  sub_1D78B42C4();

  if (a2)
  {
    sub_1D78AC158(v31);
  }

  else
  {
    v20 = v32;
    if (a3)
    {
      v21 = OBJC_IVAR____TtC16NewsSubscription29DynamicViewControllerDelegate_purchaseContext;
      swift_beginAccess();
      sub_1D787875C(v20 + v21, v7);
      if ((*(v30 + 48))(v7, 1, v8) == 1)
      {
        sub_1D78AD418(v7, sub_1D773F0BC);
      }

      else
      {
        v22 = v29;
        sub_1D78AD4D4(v7, v29, type metadata accessor for PurchaseContext);
        v23 = (v20 + OBJC_IVAR____TtC16NewsSubscription29DynamicViewControllerDelegate_resultDelegate);
        swift_beginAccess();
        if (*v23)
        {
          v24 = v23[1];
          swift_endAccess();
          ObjectType = swift_getObjectType();
          v26 = *(v24 + 16);
          v27 = a3;
          swift_unknownObjectRetain();
          v26(v31, v22, a3, ObjectType, v24);

          swift_unknownObjectRelease();
          sub_1D78AD418(v22, type metadata accessor for PurchaseContext);
        }

        else
        {
          v28 = a3;
          sub_1D78AD418(v22, type metadata accessor for PurchaseContext);
          swift_endAccess();
        }
      }
    }
  }
}

uint64_t sub_1D78AC158(void *a1)
{
  v2 = v1;
  sub_1D773F0BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &aBlock[-1] - v9;
  v11 = OBJC_IVAR____TtC16NewsSubscription29DynamicViewControllerDelegate_purchaseContext;
  swift_beginAccess();
  sub_1D787875C(v2 + v11, v10);
  v12 = type metadata accessor for PurchaseContext();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  swift_beginAccess();
  sub_1D7781D38(v8, v2 + v11);
  swift_endAccess();
  v13 = *(v2 + OBJC_IVAR____TtC16NewsSubscription29DynamicViewControllerDelegate_bundleSubscriptionManager);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D787875C(v10, v8);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = (v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  sub_1D78AD4D4(v8, v17 + v15, sub_1D773F0BC);
  *(v17 + v16) = v14;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = a1;
  aBlock[4] = sub_1D78AD53C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D7781488;
  aBlock[3] = &block_descriptor_37;
  v18 = _Block_copy(aBlock);
  v19 = a1;

  [v13 refreshBundleSubscriptionWithCachePolicy:3 hideBundleDetectionUI:1 completion:v18];
  _Block_release(v18);
  return sub_1D78AD418(v10, sub_1D773F0BC);
}

void sub_1D78AC42C(void *a1, void *a2, void *a3)
{
  v31 = a1;
  sub_1D773F0BC();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PurchaseContext();
  v30 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v29 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D774FE1C();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D78BCB50;
  v33 = a2;
  sub_1D78AD478(0, &qword_1EC9CBBB0, &unk_1EC9CBBB8, 0x1E698CAF0, sub_1D773F004);
  v11 = a2;
  v12 = sub_1D78B5CC4();
  v14 = v13;
  v15 = MEMORY[0x1E69E6158];
  *(v10 + 56) = MEMORY[0x1E69E6158];
  v16 = sub_1D775ABD4();
  *(v10 + 64) = v16;
  *(v10 + 32) = v12;
  *(v10 + 40) = v14;
  v33 = a3;
  v17 = a3;
  sub_1D78AD478(0, &unk_1EE08F9E0, &qword_1EE08F9F0, MEMORY[0x1E69E7280], sub_1D773C9B8);
  v18 = sub_1D78B5CC4();
  *(v10 + 96) = v15;
  *(v10 + 104) = v16;
  *(v10 + 72) = v18;
  *(v10 + 80) = v19;
  sub_1D78B60A4();
  sub_1D78B42C4();

  if (a2)
  {
    sub_1D78AC158(v31);
  }

  else
  {
    v20 = v32;
    if (a3)
    {
      v21 = OBJC_IVAR____TtC16NewsSubscription29DynamicViewControllerDelegate_purchaseContext;
      swift_beginAccess();
      sub_1D787875C(v20 + v21, v7);
      if ((*(v30 + 48))(v7, 1, v8) == 1)
      {
        sub_1D78AD418(v7, sub_1D773F0BC);
      }

      else
      {
        v22 = v29;
        sub_1D78AD4D4(v7, v29, type metadata accessor for PurchaseContext);
        v23 = (v20 + OBJC_IVAR____TtC16NewsSubscription29DynamicViewControllerDelegate_resultDelegate);
        swift_beginAccess();
        if (*v23)
        {
          v24 = v23[1];
          swift_endAccess();
          ObjectType = swift_getObjectType();
          v26 = *(v24 + 16);
          v27 = a3;
          swift_unknownObjectRetain();
          v26(v31, v22, a3, ObjectType, v24);

          swift_unknownObjectRelease();
          sub_1D78AD418(v22, type metadata accessor for PurchaseContext);
        }

        else
        {
          v28 = a3;
          sub_1D78AD418(v22, type metadata accessor for PurchaseContext);
          swift_endAccess();
        }
      }
    }
  }
}

void sub_1D78AC830(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void (*a6)(id, void *, void *))
{
  v10 = a3;
  v11 = a4;
  v12 = a1;
  v13 = a5;
  a6(v10, a4, a5);
}

uint64_t sub_1D78AC8CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D773F0BC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PurchaseContext();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D774FE1C();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D78BCAB0;
  *(v14 + 56) = sub_1D773F004(0, &qword_1EE08FDC8);
  *(v14 + 64) = sub_1D78AD5E4();
  *(v14 + 32) = a1;
  v15 = a1;
  sub_1D78B60A4();
  sub_1D78B42C4();

  sub_1D787875C(a2, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v16 = sub_1D773F0BC;
    v17 = v9;
    goto LABEL_12;
  }

  sub_1D78AD4D4(v9, v13, type metadata accessor for PurchaseContext);
  if (![v15 isSubscribed])
  {
    v16 = type metadata accessor for PurchaseContext;
    v17 = v13;
LABEL_12:
    sub_1D78AD418(v17, v16);
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v25 = result;
      sub_1D774584C(result + OBJC_IVAR____TtC16NewsSubscription29DynamicViewControllerDelegate_router, v30);

      v26 = v30[4];
      __swift_project_boxed_opaque_existential_1(v30, v30[3]);
      v29[4] = &type metadata for PurchaseReceiptVerificationFailureAlert;
      v29[5] = sub_1D77823D8();
      sub_1D78B5054();
      swift_allocObject();
      sub_1D78B5004();
      (*(v26 + 88))();

      return __swift_destroy_boxed_opaque_existential_1(v30);
    }

    return result;
  }

  v18 = [objc_opt_self() defaultCenter];
  if (qword_1EE08FDE0 != -1)
  {
    swift_once();
  }

  [v18 postNotificationName:qword_1EE08FDE8 object:0 userInfo:0];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v21 = (Strong + OBJC_IVAR____TtC16NewsSubscription29DynamicViewControllerDelegate_resultDelegate);
    swift_beginAccess();
    if (*v21)
    {
      v22 = v21[1];
      swift_unknownObjectRetain();

      ObjectType = swift_getObjectType();
      (*(v22 + 8))(a4, v13, ObjectType, v22);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  swift_beginAccess();
  v27 = swift_unknownObjectWeakLoadStrong();
  if (v27)
  {
    v28 = v27;
    sub_1D78ACD54(v13);
  }

  return sub_1D78AD418(v13, type metadata accessor for PurchaseContext);
}

void sub_1D78ACD54(uint64_t a1)
{
  if (*(a1 + 16) == 4)
  {
    *(swift_allocObject() + 16) = v1;
    v2 = v1;
    sub_1D78B38B4();
  }

  else
  {
    if (qword_1EE08E648 != -1)
    {
      swift_once();
    }

    v3 = sub_1D78B4304();
    __swift_project_value_buffer(v3, qword_1EE09C1F0);
    oslog = sub_1D78B42E4();
    v4 = sub_1D78B60A4();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1D7739000, oslog, v4, "Purchase type is not a bundle via offer. Skipping welcome onboarding.", v5, 2u);
      MEMORY[0x1DA7043F0](v5, -1, -1);
    }
  }
}

uint64_t sub_1D78ACEAC(uint64_t a1)
{
  sub_1D773F0BC();
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - v7;
  v9 = type metadata accessor for PurchaseContext();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() defaultCenter];
  if (qword_1EE08FDF8 != -1)
  {
    swift_once();
  }

  [v13 postNotificationName:qword_1EE08FE00 object:0 userInfo:0];

  v14 = OBJC_IVAR____TtC16NewsSubscription29DynamicViewControllerDelegate_purchaseContext;
  swift_beginAccess();
  sub_1D787875C(v1 + v14, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1D78AD418(v8, sub_1D773F0BC);
  }

  sub_1D78AD4D4(v8, v12, type metadata accessor for PurchaseContext);
  v16 = (v1 + OBJC_IVAR____TtC16NewsSubscription29DynamicViewControllerDelegate_resultDelegate);
  swift_beginAccess();
  if (*v16)
  {
    v17 = v16[1];
    swift_endAccess();
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    v18 = AMSError();
    (*(v17 + 16))(a1, v12, v18, ObjectType, v17);
    swift_unknownObjectRelease();

    sub_1D78AD418(v12, type metadata accessor for PurchaseContext);
  }

  else
  {
    sub_1D78AD418(v12, type metadata accessor for PurchaseContext);
    swift_endAccess();
  }

  (*(v10 + 56))(v6, 1, 1, v9);
  swift_beginAccess();
  sub_1D7781D38(v6, v1 + v14);
  return swift_endAccess();
}

void sub_1D78AD3A0(void *a1)
{
  v1 = [a1 topViewController];
  if (v1)
  {
    v3 = v1;
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      sub_1D78ACEAC(v2);
    }
  }
}

uint64_t sub_1D78AD418(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D78AD478(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1D78B62A4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D78AD4D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D78AD53C(void *a1)
{
  sub_1D773F0BC();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v6);
  v8 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D78AC8CC(a1, v1 + v5, v7, v8);
}

unint64_t sub_1D78AD5E4()
{
  result = qword_1EC9CBBC0;
  if (!qword_1EC9CBBC0)
  {
    sub_1D773F004(255, &qword_1EE08FDC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CBBC0);
  }

  return result;
}

uint64_t sub_1D78AD64C()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC16NewsSubscription29DynamicViewControllerDelegate_postPurchaseOnboardingManager);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 8))(8, v2, v3);
}

uint64_t sub_1D78AD708(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t))
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    ObjectType = swift_getObjectType();
    v10 = *(a3 + OBJC_IVAR____TtC16NewsSubscription37FlexiblePaywallCollectionViewDelegate_viewportMonitor);
    sub_1D78B4E34();
    v11 = sub_1D78B4E24();
    a4(v10, v11, ObjectType, a2);
  }

  else
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v13 = swift_getObjectType();
      return a5(*(a3 + OBJC_IVAR____TtC16NewsSubscription37FlexiblePaywallCollectionViewDelegate_viewportMonitor), v13, a2);
    }
  }

  return result;
}

void sub_1D78AE04C()
{
  if (!qword_1EE090068)
  {
    sub_1D78B4B14();
    v0 = sub_1D78B5F34();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE090068);
    }
  }
}

uint64_t sub_1D78AE0A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_memcpy6_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DefaultSubscriptionFeatureAvailability(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[6])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DefaultSubscriptionFeatureAvailability(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t static Databases.Subscription.location.getter()
{
  if (qword_1EE0905C0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE0905C8;

  return v0;
}

uint64_t sub_1D78AE2DC()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (v1 + 32);
    while (v3 < v2)
    {
      v11[0] = *v4;
      v5 = v4[3];
      v6 = v4[4];
      v7 = v4[2];
      v11[1] = v4[1];
      v11[2] = v7;
      v11[3] = v5;
      v11[4] = v6;
      v8 = *&v11[0];
      if (v6 >> 60 < 2)
      {
        sub_1D78B0600(v11, &v10);

        return v8;
      }

      ++v3;
      v4 += 5;
      if (v2 == v3)
      {
        return 0;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t PurchaseContext.init(purchaseID:purchaseType:purchaseSessionID:sourceChannelID:webAccessOptIn:conversionLocation:userAction:traits:hideMyEmailShareSelection:postPurchaseDestination:hidePostPurchaseOnboarding:isDirectBuy:financeURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, unsigned __int8 *a10, unsigned __int8 *a11, uint64_t a12, __int128 *a13, uint64_t a14, unsigned __int8 a15, unsigned __int8 a16, uint64_t a17)
{
  v48 = a8;
  v46 = a6;
  v47 = a7;
  v36 = a4;
  v37 = a3;
  v52 = a17;
  v50 = a15;
  v51 = a16;
  v49 = a14;
  v45 = a12;
  v21 = sub_1D78B33C4();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *a10;
  v43 = *a11;
  v25 = *a13;
  v44 = a13[1];
  v39 = v25;
  v26 = *(a13 + 4);
  v41 = *(a13 + 5);
  v42 = v26;
  v40 = *(a13 + 48);
  v27 = type metadata accessor for PurchaseContext();
  v28 = v27[16];
  v29 = sub_1D78B3294();
  (*(*(v29 - 8) + 56))(a9 + v28, 1, 1, v29);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v37;
  if (a5)
  {
    v30 = v36;
  }

  else
  {
    sub_1D78B33B4();
    v30 = sub_1D78B33A4();
    a5 = v31;
    (*(v22 + 8))(v24, v21);
  }

  *(a9 + 24) = v30;
  *(a9 + 32) = a5;
  v32 = v47;
  *(a9 + 40) = v46;
  *(a9 + 48) = v32;
  *(a9 + 56) = v48 & 1;
  *(a9 + 57) = v38;
  *(a9 + 64) = v45;
  *(a9 + 58) = v43;
  *(a9 + 72) = v39;
  *(a9 + 88) = v44;
  v33 = v41;
  *(a9 + 104) = v42;
  *(a9 + 112) = v33;
  *(a9 + 120) = v40;
  sub_1D774BED0(v49, a9 + v27[13]);
  *(a9 + v27[14]) = v50 & 1;
  *(a9 + v27[15]) = v51 & 1;
  return sub_1D77B44C4(v52, a9 + v28);
}

uint64_t PurchaseContext.purchaseID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PurchaseContext.purchaseID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PurchaseContext.purchaseSessionID.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t PurchaseContext.purchaseSessionID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t PurchaseContext.sourceChannelID.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t PurchaseContext.sourceChannelID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t PurchaseContext.traits.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

uint64_t PurchaseContext.hideMyEmailShareSelection.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  v5 = *(v1 + 96);
  v6 = *(v1 + 104);
  v7 = *(v1 + 112);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  v8 = *(v1 + 120);
  *(a1 + 48) = v8;
  return sub_1D78AE8E8(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1D78AE8E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
    if (a7 != 1)
    {
      return result;
    }
  }
}

__n128 PurchaseContext.hideMyEmailShareSelection.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  sub_1D77703DC(*(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 104), *(v1 + 112), *(v1 + 120));
  result = *a1;
  *(v1 + 88) = *(a1 + 16);
  *(v1 + 72) = result;
  *(v1 + 104) = v3;
  *(v1 + 112) = v4;
  *(v1 + 120) = v5;
  return result;
}

uint64_t PurchaseContext.isDirectBuy.setter(char a1)
{
  result = type metadata accessor for PurchaseContext();
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t sub_1D78AEB40(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D773F1CC(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t PurchaseContext.financeURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PurchaseContext() + 64);

  return sub_1D77B44C4(a1, v3);
}

unint64_t sub_1D78AEC38(char a1)
{
  result = 0x6573616863727570;
  switch(a1)
  {
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x6843656372756F73;
      break;
    case 4:
      result = 0x7365636341626577;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0x6974634172657375;
      break;
    case 7:
      result = 0x737469617274;
      break;
    case 8:
      result = 0xD000000000000019;
      break;
    case 9:
      result = 0xD000000000000017;
      break;
    case 10:
      result = 0xD00000000000001ALL;
      break;
    case 11:
      result = 0x7463657269447369;
      break;
    case 12:
      result = 0x5565636E616E6966;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D78AEDDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D78B01D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D78AEE10(uint64_t a1)
{
  v2 = sub_1D78AF358();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D78AEE4C(uint64_t a1)
{
  v2 = sub_1D78AF358();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PurchaseContext.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D78AFD64(0, &qword_1EC9CBC50, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D78AF358();
  sub_1D78B6884();
  LOBYTE(v18) = 0;
  sub_1D78B6684();
  if (!v2)
  {
    v18 = *(v3 + 16);
    v25 = 1;
    sub_1D78AF3AC();
    sub_1D78B66B4();
    LOBYTE(v18) = 2;
    sub_1D78B6684();
    LOBYTE(v18) = 3;
    sub_1D78B6684();
    LOBYTE(v18) = 4;
    sub_1D78B6694();
    LOBYTE(v18) = *(v3 + 57);
    v25 = 5;
    sub_1D78AF400();
    sub_1D78B66B4();
    LOBYTE(v18) = *(v3 + 58);
    v25 = 6;
    sub_1D78AF454();
    sub_1D78B66B4();
    v18 = *(v3 + 64);
    v25 = 7;
    sub_1D773D4A0();
    sub_1D78AFF20(&qword_1EC9CBC70, sub_1D78AF4A8);
    sub_1D78B66B4();
    v10 = *(v3 + 80);
    v11 = *(v3 + 88);
    v12 = *(v3 + 96);
    v13 = *(v3 + 104);
    v14 = *(v3 + 112);
    v15 = *(v3 + 120);
    v18 = *(v3 + 72);
    v19 = v10;
    v20 = v11;
    v21 = v12;
    v22 = v13;
    v23 = v14;
    v24 = v15;
    v25 = 8;
    sub_1D78AE8E8(v18, v10, v11, v12, v13, v14, v15);
    sub_1D78AF4FC();
    sub_1D78B66B4();
    sub_1D77703DC(v18, v19, v20, v21, v22, v23, v24);
    type metadata accessor for PurchaseContext();
    LOBYTE(v18) = 9;
    type metadata accessor for PostPurchaseDestination();
    sub_1D78B0034(&qword_1EC9CBC88, type metadata accessor for PostPurchaseDestination);
    sub_1D78B6664();
    LOBYTE(v18) = 10;
    sub_1D78B6694();
    LOBYTE(v18) = 11;
    sub_1D78B6694();
    LOBYTE(v18) = 12;
    sub_1D78B3294();
    sub_1D78B0034(&qword_1EC9CB458, MEMORY[0x1E6968FB0]);
    sub_1D78B6664();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1D78AF358()
{
  result = qword_1EE08F178;
  if (!qword_1EE08F178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08F178);
  }

  return result;
}

unint64_t sub_1D78AF3AC()
{
  result = qword_1EC9CBC58;
  if (!qword_1EC9CBC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CBC58);
  }

  return result;
}

unint64_t sub_1D78AF400()
{
  result = qword_1EC9CBC60;
  if (!qword_1EC9CBC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CBC60);
  }

  return result;
}

unint64_t sub_1D78AF454()
{
  result = qword_1EC9CBC68;
  if (!qword_1EC9CBC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CBC68);
  }

  return result;
}

unint64_t sub_1D78AF4A8()
{
  result = qword_1EC9CBC78;
  if (!qword_1EC9CBC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CBC78);
  }

  return result;
}

unint64_t sub_1D78AF4FC()
{
  result = qword_1EC9CBC80;
  if (!qword_1EC9CBC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CBC80);
  }

  return result;
}

uint64_t PurchaseContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  sub_1D773F1CC(0, &unk_1EE096460, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v51 - v4;
  sub_1D773F1CC(0, qword_1EE095BD0, type metadata accessor for PostPurchaseDestination);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v51 - v7;
  sub_1D78AFD64(0, &qword_1EE08E518, MEMORY[0x1E69E6F48]);
  v56 = v9;
  v53 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v51 - v10;
  v12 = type metadata accessor for PurchaseContext();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = (&v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v13 + 64);
  v17 = sub_1D78B3294();
  v18 = *(*(v17 - 8) + 56);
  v58 = v16;
  v59 = v15;
  v18(v15 + v16, 1, 1, v17);
  v19 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1D78AF358();
  v55 = v11;
  v20 = v60;
  sub_1D78B6874();
  if (v20)
  {
    v60 = v20;
    v28 = v59;
    __swift_destroy_boxed_opaque_existential_1(v57);
    return sub_1D78AFDC8(v28 + v58, &unk_1EE096460, MEMORY[0x1E6968FB0]);
  }

  v21 = v8;
  v52 = v12;
  v23 = v53;
  v22 = v54;
  LOBYTE(v61) = 0;
  v24 = v55;
  v25 = v56;
  v26 = sub_1D78B65E4();
  v60 = 0;
  v28 = v59;
  *v59 = v26;
  v28[1] = v27;
  v65 = 1;
  sub_1D78AFE24();
  v30 = v60;
  sub_1D78B6614();
  if (v30)
  {
    v60 = v30;
    (*(v23 + 8))(v24, v25);
    v31 = 0;
    v32 = 0;
    v33 = 0;
    goto LABEL_8;
  }

  v28[2] = v61;
  LOBYTE(v61) = 2;
  v28[3] = sub_1D78B65E4();
  v28[4] = v34;
  LOBYTE(v61) = 3;
  v28[5] = sub_1D78B65E4();
  v28[6] = v35;
  LOBYTE(v61) = 4;
  v36 = sub_1D78B65F4();
  v60 = 0;
  *(v28 + 56) = v36 & 1;
  v65 = 5;
  sub_1D78AFE78();
  v37 = v60;
  sub_1D78B6614();
  v60 = v37;
  if (v37 || (*(v28 + 57) = v61, v65 = 6, sub_1D78AFECC(), v38 = v60, sub_1D78B6614(), (v60 = v38) != 0) || (*(v28 + 58) = v61, sub_1D773D4A0(), v51 = v39, v65 = 7, sub_1D78AFF20(&unk_1EE08E5F0, sub_1D78AFF8C), v40 = v60, sub_1D78B6614(), (v60 = v40) != 0))
  {
    (*(v23 + 8))(v24, v25);
    v33 = 0;
    v31 = 1;
    v32 = 1;
    goto LABEL_8;
  }

  v28[8] = v61;
  v65 = 8;
  sub_1D78AFFE0();
  v41 = v60;
  sub_1D78B6614();
  v60 = v41;
  if (v41)
  {
    (*(v23 + 8))(v24, v25);
    v31 = 1;
    v32 = 1;
    v33 = 1;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v57);

    if (v31)
    {

      if ((v32 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else if (!v32)
    {
LABEL_10:
      if (!v33)
      {
        return sub_1D78AFDC8(v28 + v58, &unk_1EE096460, MEMORY[0x1E6968FB0]);
      }

LABEL_14:

      return sub_1D78AFDC8(v28 + v58, &unk_1EE096460, MEMORY[0x1E6968FB0]);
    }

    if (!v33)
    {
      return sub_1D78AFDC8(v28 + v58, &unk_1EE096460, MEMORY[0x1E6968FB0]);
    }

    goto LABEL_14;
  }

  v42 = v64;
  v43 = v62;
  *(v28 + 9) = v61;
  *(v28 + 11) = v43;
  *(v28 + 13) = v63;
  *(v28 + 120) = v42;
  type metadata accessor for PostPurchaseDestination();
  LOBYTE(v61) = 9;
  sub_1D78B0034(&qword_1EC9CBC90, type metadata accessor for PostPurchaseDestination);
  v44 = v60;
  sub_1D78B65C4();
  v45 = v44;
  if (v44)
  {
    (*(v23 + 8))(v55, v56);
    v60 = v44;
    goto LABEL_25;
  }

  sub_1D774BED0(v21, v59 + v52[13]);
  LOBYTE(v61) = 10;
  v46 = sub_1D78B65F4();
  v60 = 0;
  *(v59 + v52[14]) = v46 & 1;
  LOBYTE(v61) = 11;
  v47 = sub_1D78B65F4();
  v60 = 0;
  *(v59 + v52[15]) = v47 & 1;
  LOBYTE(v61) = 12;
  sub_1D78B0034(&qword_1EC9CB478, MEMORY[0x1E6968FB0]);
  v48 = v60;
  sub_1D78B65C4();
  v60 = v48;
  if (v48)
  {
    (*(v23 + 8))(v55, v56);
LABEL_25:
    __swift_destroy_boxed_opaque_existential_1(v57);
    v49 = v59;

    sub_1D77703DC(v49[9], v49[10], v49[11], v49[12], v49[13], v49[14], *(v49 + 120));
    v28 = v59;
    if (!v45)
    {
      sub_1D78AFDC8(v59 + v52[13], qword_1EE095BD0, type metadata accessor for PostPurchaseDestination);
    }

    return sub_1D78AFDC8(v28 + v58, &unk_1EE096460, MEMORY[0x1E6968FB0]);
  }

  (*(v23 + 8))(v55, v56);
  v50 = v59;
  sub_1D77B44C4(v5, v59 + v58);
  sub_1D7770378(v50, v22);
  __swift_destroy_boxed_opaque_existential_1(v57);
  return sub_1D7791954(v50);
}

void sub_1D78AFD64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D78AF358();
    v7 = a3(a1, &type metadata for PurchaseContext.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D78AFDC8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D773F1CC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1D78AFE24()
{
  result = qword_1EE08F210;
  if (!qword_1EE08F210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08F210);
  }

  return result;
}

unint64_t sub_1D78AFE78()
{
  result = qword_1EE08EB28;
  if (!qword_1EE08EB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08EB28);
  }

  return result;
}

unint64_t sub_1D78AFECC()
{
  result = qword_1EE08F080;
  if (!qword_1EE08F080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08F080);
  }

  return result;
}

uint64_t sub_1D78AFF20(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D773D4A0();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D78AFF8C()
{
  result = qword_1EE08F180;
  if (!qword_1EE08F180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08F180);
  }

  return result;
}

unint64_t sub_1D78AFFE0()
{
  result = qword_1EE08EBF8;
  if (!qword_1EE08EBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08EBF8);
  }

  return result;
}

uint64_t sub_1D78B0034(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D78B00D4()
{
  result = qword_1EC9CBC98;
  if (!qword_1EC9CBC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CBC98);
  }

  return result;
}

unint64_t sub_1D78B012C()
{
  result = qword_1EE08F168;
  if (!qword_1EE08F168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08F168);
  }

  return result;
}

unint64_t sub_1D78B0184()
{
  result = qword_1EE08F170;
  if (!qword_1EE08F170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08F170);
  }

  return result;
}

uint64_t sub_1D78B01D8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6573616863727570 && a2 == 0xEA00000000004449;
  if (v3 || (sub_1D78B6724() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xEC00000065707954 || (sub_1D78B6724() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D78DA530 == a2 || (sub_1D78B6724() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6843656372756F73 && a2 == 0xEF44496C656E6E61 || (sub_1D78B6724() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7365636341626577 && a2 == 0xEE006E4974704F73 || (sub_1D78B6724() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D78E1B20 == a2 || (sub_1D78B6724() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6974634172657375 && a2 == 0xEA00000000006E6FLL || (sub_1D78B6724() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x737469617274 && a2 == 0xE600000000000000 || (sub_1D78B6724() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001D78E1B40 == a2 || (sub_1D78B6724() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D78E1B60 == a2 || (sub_1D78B6724() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D78E1B80 == a2 || (sub_1D78B6724() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7463657269447369 && a2 == 0xEB00000000797542 || (sub_1D78B6724() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x5565636E616E6966 && a2 == 0xEA00000000004C52)
  {

    return 12;
  }

  else
  {
    v6 = sub_1D78B6724();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

id sub_1D78B0680(uint64_t a1, char *a2, double *a3)
{
  v4 = v3;
  [a2 setFrame_];
  [*&a2[OBJC_IVAR____TtC16NewsSubscription36HideMyEmailSignupBlueprintHeaderView_publisherLogo] setFrame_];
  v8 = *&a2[OBJC_IVAR____TtC16NewsSubscription36HideMyEmailSignupBlueprintHeaderView_headline];
  [v8 setFrame_];
  v9 = *&a2[OBJC_IVAR____TtC16NewsSubscription36HideMyEmailSignupBlueprintHeaderView_subheadline];
  [v9 setFrame_];
  __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
  v10 = sub_1D77BA068();
  v39 = v8;
  [v8 setAttributedText_];

  v11 = __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
  v38 = *(a1 + 16);
  v37 = *(a1 + 24);
  v12 = *v11;
  sub_1D778AF9C();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D78BF690;
  v14 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v15 = sub_1D773F004(0, &qword_1EE08FC10);
  v16 = v14;
  v17 = sub_1D78B61B4();
  v18 = MEMORY[0x1E69DB688];
  *(inited + 40) = v17;
  v19 = *v18;
  *(inited + 64) = v15;
  *(inited + 72) = v19;
  v20 = objc_allocWithZone(MEMORY[0x1E69DB7C8]);
  v21 = v19;
  v22 = [v20 init];
  [v22 setAlignment_];
  v23 = sub_1D773F004(0, &qword_1EC9CA0F8);
  *(inited + 80) = v22;
  v24 = *MEMORY[0x1E69DB650];
  *(inited + 104) = v23;
  *(inited + 112) = v24;
  v25 = *(v12 + 64);
  v26 = v24;
  v27 = [v25 tertiaryColor];
  v28 = sub_1D77BAD38(v27);

  *(inited + 144) = sub_1D773F004(0, &qword_1EE08FC00);
  if (!v28)
  {
    v28 = [objc_opt_self() labelColor];
  }

  *(inited + 120) = v28;
  sub_1D77FED68(inited);
  swift_setDeallocating();
  sub_1D778AFF4();
  swift_arrayDestroy();
  v29 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v30 = sub_1D78B5C44();
  type metadata accessor for Key(0);
  sub_1D778B060();
  v31 = sub_1D78B5BB4();

  v32 = [v29 initWithString:v30 attributes:v31];

  [v9 setAttributedText_];
  MEMORY[0x1EEE9AC00](v33);
  sub_1D773F004(0, &qword_1EE08FBE8);
  sub_1D78B41F4();
  sub_1D773F004(0, &qword_1EE08FE10);
  v34 = sub_1D78B6104();
  *(swift_allocObject() + 16) = a2;
  v35 = a2;
  sub_1D78B4094();

  [v39 setNumberOfLines_];
  [v39 setLineBreakMode_];
  [v9 setNumberOfLines_];
  [v9 setLineBreakMode_];
  [v9 frame];
  [v9 _setFirstLineCapFrameOriginY_];
  return [v9 sizeToFit];
}

uint64_t sub_1D78B0B8C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a1[10];
  v8 = a1[11];
  __swift_project_boxed_opaque_existential_1(a1 + 7, v7);
  v9 = *(a2 + 64);
  [a3 frame];
  return (*(v8 + 8))(v9, [a4 userInterfaceStyle], v7, v8, v10, v11);
}

id sub_1D78B0C90(void *a1)
{
  v2 = *(*(v1 + 16) + OBJC_IVAR____TtC16NewsSubscription36HideMyEmailSignupBlueprintHeaderView_publisherLogo);
  [v2 setImage_];
  return [v2 setContentMode_];
}

id sub_1D78B0DDC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UnselectableLinkEnabledTextView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D78B1074()
{
  v19.receiver = v0;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, sel_viewDidLoad);
  v1 = *&v0[OBJC_IVAR____TtC16NewsSubscription31HideMyEmailSignupViewController_blueprintViewController];
  [v0 addChildViewController_];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  v4 = [v1 view];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = v4;
  [v3 addSubview_];

  [v1 didMoveToParentViewController_];
  v6 = [v1 view];
  if (!v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = v6;
  v8 = [v0 view];
  if (v8)
  {
    v9 = v8;
    [v8 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    [v7 setFrame_];
    v18 = [v0 traitCollection];
    sub_1D78B266C();

    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_1D78B13E0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PurchaseContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v1[OBJC_IVAR____TtC16NewsSubscription31HideMyEmailSignupViewController_purchasePresenter];
  v8 = *&v1[OBJC_IVAR____TtC16NewsSubscription31HideMyEmailSignupViewController_purchasePresenter + 24];
  v9 = *(v7 + 4);
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v17 = 0;
  v18 = 2;
  PurchasePresenterType.presentPurchase(on:with:type:)(v2, a1, &v17, v8, v9);
  sub_1D7788448();
  v10 = sub_1D78B6104();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D7770378(a1, &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  sub_1D777044C(&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  sub_1D78B4094();

  v14 = sub_1D78B6104();
  *(swift_allocObject() + 16) = v2;
  v15 = v2;
  sub_1D78B40D4();
}

void sub_1D78B1610(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for PurchaseContext();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_1D7770378(a3, &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v13 = (v7 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    v14 = swift_allocObject();
    sub_1D777044C(v8, v14 + v12);
    *(v14 + v13) = v11;
    *(v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)) = v9;
    aBlock[4] = sub_1D78B2504;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D775FB6C;
    aBlock[3] = &block_descriptor_39;
    v15 = _Block_copy(aBlock);
    v16 = v11;
    v17 = v9;

    [v16 dismissViewControllerAnimated:1 completion:v15];
    _Block_release(v15);
  }
}

uint64_t sub_1D78B17F0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!*(result + 16))
  {
    if (*(result + 120) != 2 || (v3 = *(result + 96), v4 = *(result + 72), v5 = *(result + 104) | *(result + 112), v6 = *(result + 88) | *(result + 80), v5 | v4 | v3 | v6) && ((v7 = v5 | v3 | v6, v4 == 1) ? (v8 = v7 == 0) : (v8 = 0), !v8))
    {
      v9 = *(*(a2 + OBJC_IVAR____TtC16NewsSubscription31HideMyEmailSignupViewController_eventHandler) + 40);
      v10 = result;
      ObjectType = swift_getObjectType();
      return (*(v9 + 56))(a3, v10, ObjectType, v9);
    }
  }

  return result;
}

uint64_t sub_1D78B18A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D78B4E54();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a3, v5);
  result = (*(v6 + 88))(v8, v5);
  if (result == *MEMORY[0x1E69D8630])
  {
    (*(v6 + 8))(v8, v5);
LABEL_3:
    v10 = *(*(v3 + OBJC_IVAR____TtC16NewsSubscription31HideMyEmailSignupViewController_eventHandler) + 40);
    ObjectType = swift_getObjectType();
    return (*(v10 + 40))(ObjectType, v10);
  }

  if (result == *MEMORY[0x1E69D8608])
  {
    v12 = *(*(v3 + OBJC_IVAR____TtC16NewsSubscription31HideMyEmailSignupViewController_eventHandler) + 40);
    v13 = swift_getObjectType();
    return (*(v12 + 32))(v13, v12);
  }

  else
  {
    if (result == *MEMORY[0x1E69D8628] || result == *MEMORY[0x1E69D8610])
    {
      goto LABEL_3;
    }

    if (result != *MEMORY[0x1E69D8638])
    {
      if (result == *MEMORY[0x1E69D8650])
      {
        goto LABEL_3;
      }

      return (*(v6 + 8))(v8, v5);
    }
  }

  return result;
}

void sub_1D78B1A9C()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 navigationBar];

    sub_1D78B61C4();
  }
}

uint64_t sub_1D78B1B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47E20](a1, a2, a3, ObjectType, a5);
}

uint64_t sub_1D78B1BA8(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC16NewsSubscription31HideMyEmailSignupViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v4 + 48))(a2, ObjectType, v4);
}

uint64_t sub_1D78B1C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47DA0](a1, a2, a3, ObjectType, a5);
}

uint64_t sub_1D78B1C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47D90](a1, a2, ObjectType, a4);
}

uint64_t sub_1D78B1CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47D98](a1, a2, ObjectType, a4);
}

uint64_t sub_1D78B1D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47DD0](a1, a2, a3, ObjectType, a5);
}

uint64_t sub_1D78B1D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47DB0](a1, a2, ObjectType, a4);
}

uint64_t sub_1D78B1DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47DE0](a1, a2, ObjectType, a4);
}

uint64_t sub_1D78B1E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47DE8](a1, a2, ObjectType, a4);
}

uint64_t sub_1D78B1E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47DA8](a1, a2, ObjectType, a4);
}

uint64_t sub_1D78B1EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47DC0](a1, a2, ObjectType, a4);
}

uint64_t sub_1D78B1F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47DF0](a1, a2, ObjectType, a4);
}

uint64_t sub_1D78B1F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47DC8](a1, a2, ObjectType, a4);
}

uint64_t sub_1D78B1FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47E00](a1, a2, ObjectType, a4);
}

uint64_t sub_1D78B204C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47E10](a1, a2, a3, ObjectType, a5);
}

uint64_t sub_1D78B20B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47DB8](a1, a2, a3, ObjectType, a5);
}

uint64_t sub_1D78B211C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47D78](a1, ObjectType, a3);
}

uint64_t sub_1D78B216C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47D68](a1, ObjectType, a3);
}

uint64_t sub_1D78B21BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47D88](a1, ObjectType, a3);
}

uint64_t sub_1D78B220C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47D60](a1, ObjectType, a3);
}

uint64_t sub_1D78B225C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47D58](a1, ObjectType, a3);
}

uint64_t sub_1D78B22AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47DF8](a1, a2, ObjectType, a4);
}

uint64_t sub_1D78B2304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47D80](a1, a2, ObjectType, a4);
}

uint64_t sub_1D78B235C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47D70](a1, a2, ObjectType, a4);
}

uint64_t sub_1D78B23B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47DD8](a1, a2, ObjectType, a4);
}

uint64_t sub_1D78B2438()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC16NewsSubscription31HideMyEmailSignupViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v1 + 64))(ObjectType, v1);
}

uint64_t sub_1D78B2504()
{
  v1 = *(type metadata accessor for PurchaseContext() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D78B17F0(v0 + v2, v4, v5);
}

uint64_t sub_1D78B259C(uint64_t a1)
{
  v3 = __swift_project_boxed_opaque_existential_1((*(v1 + OBJC_IVAR____TtC16NewsSubscription31HideMyEmailSignupViewController_eventHandler) + 48), *(*(v1 + OBJC_IVAR____TtC16NewsSubscription31HideMyEmailSignupViewController_eventHandler) + 72));
  __swift_project_boxed_opaque_existential_1((*v3 + 24), *(*v3 + 48));
  sub_1D78B2814();
  result = sub_1D78B39F4();
  if (v8)
  {
    sub_1D7741E34(&v7, v9);
    v5 = v10;
    v6 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    (*(v6 + 24))(a1, v5, v6);
    return __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D78B266C()
{
  v1 = &v0[OBJC_IVAR____TtC16NewsSubscription31HideMyEmailSignupViewController_styler];
  sub_1D774584C(&v0[OBJC_IVAR____TtC16NewsSubscription31HideMyEmailSignupViewController_styler], v11);
  v2 = __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  v3 = [v0 view];
  if (v3)
  {
    v4 = v3;
    v5 = [*(*v2 + 64) backgroundColor];
    v6 = sub_1D77BAD38(v5);

    if (!v6)
    {
      v6 = [objc_opt_self() systemBackgroundColor];
    }

    [v4 setBackgroundColor_];

    __swift_destroy_boxed_opaque_existential_1(v11);
    v7 = __swift_project_boxed_opaque_existential_1(v1, *(v1 + 3));
    sub_1D78B4A44();
    v8 = sub_1D78B4954();

    v9 = [*(*v7 + 64) backgroundColor];
    v10 = sub_1D77BAD38(v9);

    if (!v10)
    {
      v10 = [objc_opt_self() systemBackgroundColor];
    }

    [v8 setBackgroundColor_];

    [v8 setSeparatorStyle_];
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1D78B2814()
{
  result = qword_1EE094490;
  if (!qword_1EE094490)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE094490);
  }

  return result;
}

uint64_t PurchaseErrorAlert.hashValue.getter()
{
  v1 = *v0;
  sub_1D78B6814();
  MEMORY[0x1DA703AC0](v1);
  return sub_1D78B6844();
}

unint64_t sub_1D78B2904()
{
  result = qword_1EC9CBD30;
  if (!qword_1EC9CBD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CBD30);
  }

  return result;
}

unint64_t sub_1D78B297C()
{
  result = qword_1EC9CBD38;
  if (!qword_1EC9CBD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CBD38);
  }

  return result;
}

void sub_1D78B29D0(char *a1, double *a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v9 = *&a1[OBJC_IVAR____TtC16NewsSubscription30HideMyEmailSignupAlternateView_email];
  v10 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v10 setLineBreakMode_];
  sub_1D778AF9C();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D78BF690;
  v12 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v13 = sub_1D773F004(0, &qword_1EE08FC10);
  v14 = v12;
  v15 = v9;
  v16 = a5;
  *(inited + 40) = sub_1D78B61B4();
  v17 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v13;
  *(inited + 72) = v17;
  v18 = objc_opt_self();
  v19 = v17;
  v38 = v18;
  v20 = [v18 labelColor];
  v21 = sub_1D773F004(0, &qword_1EE08FC00);
  *(inited + 80) = v20;
  v22 = *MEMORY[0x1E69DB688];
  *(inited + 104) = v21;
  *(inited + 112) = v22;
  *(inited + 144) = sub_1D773F004(0, &unk_1EE08FCD8);
  *(inited + 120) = v10;
  v23 = v22;
  v24 = v10;
  sub_1D77FED68(inited);
  swift_setDeallocating();
  sub_1D778AFF4();
  swift_arrayDestroy();
  v25 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v26 = sub_1D78B5C44();
  type metadata accessor for Key(0);
  sub_1D778B060();
  v27 = sub_1D78B5BB4();

  v28 = [v25 initWithString:v26 attributes:v27];

  [v15 setAttributedText_];
  __swift_project_boxed_opaque_existential_1((v6 + 16), *(v6 + 40));
  v29 = sub_1D77B9F78(v16);
  if (v29)
  {
    v30 = v29;
    v31 = a1;
  }

  else
  {
    v31 = a1;
    v30 = [a1 tintColor];
    if (!v30)
    {
LABEL_9:
      __break(1u);
      return;
    }
  }

  v32 = *&v31[OBJC_IVAR____TtC16NewsSubscription30HideMyEmailSignupAlternateView_checkmark];
  v33 = sub_1D78B5C44();
  v34 = [objc_opt_self() systemImageNamed_];

  if (!v34)
  {
    __break(1u);
    goto LABEL_9;
  }

  v35 = [v34 imageWithTintColor:v30 renderingMode:1];

  [v32 setImage_];
  [v32 setHidden_];
  [v15 setFrame_];
  [v32 setFrame_];
  [v15 setNumberOfLines_];
  v36 = [*(*__swift_project_boxed_opaque_existential_1((v6 + 16) *(v6 + 40)) + 64)];
  v37 = sub_1D77BAD38(v36);

  if (!v37)
  {
    v37 = [v38 systemBackgroundColor];
  }

  [v31 setBackgroundColor_];
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x1EEDBAE38](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}