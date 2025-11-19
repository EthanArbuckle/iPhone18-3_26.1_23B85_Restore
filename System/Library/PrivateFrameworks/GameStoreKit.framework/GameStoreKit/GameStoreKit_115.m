uint64_t sub_24F1C8428@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v87 = a2;
  v82 = a3;
  v86 = type metadata accessor for LinkableTextView();
  MEMORY[0x28223BE20](v86);
  v5 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C450);
  MEMORY[0x28223BE20](v84);
  v81 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v85 = &v77 - v8;
  MEMORY[0x28223BE20](v9);
  v89 = &v77 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214698);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v77 - v12;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BCB0);
  MEMORY[0x28223BE20](v80);
  v15 = &v77 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BCB8);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v77 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BCC0);
  MEMORY[0x28223BE20](v23 - 8);
  v83 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v28 = &v77 - v26;
  v88 = a1;
  v29 = *(a1 + 48);
  if (v29)
  {
    v30 = type metadata accessor for SwiftUIArtworkView(0);
    v78 = v16;
    v31 = v17;
    v32 = v22;
    v33 = v30;
    v34 = *(v30 + 24);
    v79 = v28;
    v35 = *MEMORY[0x277CE1010];
    v36 = sub_24F926E68();
    (*(*(v36 - 8) + 104))(&v15[v34], v35, v36);
    *(v15 + 1) = 0;
    *(v15 + 2) = 0;
    *v15 = v29;
    v15[24] = 1;
    v37 = &v15[v33[7]];
    *v37 = 0;
    *(v37 + 1) = 0;
    v37[16] = 1;
    v15[v33[8]] = 2;
    v15[v33[9]] = 0;
    v38 = sub_24F925908();
    (*(*(v38 - 8) + 56))(v13, 1, 1, v38);

    v39 = sub_24F925968();
    sub_24E601704(v13, &qword_27F214698);
    KeyPath = swift_getKeyPath();
    v41 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BCD0) + 36)];
    *v41 = KeyPath;
    v41[1] = v39;
    v42 = &v15[*(v80 + 36)];
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2365A0) + 28);
    sub_24F924CF8();
    v44 = sub_24F924D08();
    (*(*(v44 - 8) + 56))(v42 + v43, 0, 1, v44);
    *v42 = swift_getKeyPath();
    sub_24F9275F8();
    sub_24F9242E8();
    sub_24E6009C8(v15, v19, &qword_27F23BCB0);
    v45 = v78;
    v46 = &v19[*(v78 + 36)];
    v47 = v95;
    *(v46 + 4) = v94;
    *(v46 + 5) = v47;
    *(v46 + 6) = v96;
    v48 = v91;
    *v46 = v90;
    *(v46 + 1) = v48;
    v49 = v93;
    *(v46 + 2) = v92;
    *(v46 + 3) = v49;
    sub_24E6009C8(v19, v32, &qword_27F23BCB8);
    v50 = v32;
    v51 = v79;
    sub_24E6009C8(v50, v79, &qword_27F23BCB8);
    v52 = v51;
    (*(v31 + 56))(v51, 0, 1, v45);
  }

  else
  {
    v52 = &v77 - v26;
    (*(v17 + 56))(&v77 - v26, 1, 1, v16, v27);
  }

  v53 = v29 == 0;
  v54 = v88;
  v55 = Banner.linkableMessage.getter();
  v56 = sub_24F926D18();
  v57 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v58 = sub_24F925898();
  type metadata accessor for LinkableTextViewModel();
  swift_allocObject();
  v59 = sub_24E6567EC(v55, v56, v57, v58);
  *(v5 + 2) = swift_getKeyPath();
  v5[56] = 0;
  v60 = v86;
  v61 = *(v86 + 32);
  *&v5[v61] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938);
  swift_storeEnumTagMultiPayload();
  v62 = &v5[v60[9]];
  *v62 = swift_getKeyPath();
  v62[8] = 0;
  v63 = &v5[v60[10]];
  *v63 = swift_getKeyPath();
  v63[8] = 0;
  v64 = &v5[v60[11]];
  *v64 = swift_getKeyPath();
  v64[8] = 0;
  *v5 = v59;
  v5[8] = v53;
  v5[9] = 1;
  v65 = *(v84 + 36);
  v66 = *MEMORY[0x277CE13B8];
  v67 = sub_24F927748();
  v68 = v85;
  (*(*(v67 - 8) + 104))(&v85[v65], v66, v67);
  sub_24EB9ACEC(v5, v68);
  sub_24E6009C8(v68, v89, &qword_27F21C450);
  v69 = 0;
  if ((v87 & 1) == 0)
  {
    v69 = *(v54 + 40);
  }

  v70 = v83;
  sub_24E60169C(v52, v83, &qword_27F23BCC0);
  v71 = v89;
  v72 = v81;
  sub_24E60169C(v89, v81, &qword_27F21C450);
  v73 = v82;
  sub_24E60169C(v70, v82, &qword_27F23BCC0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BCC8);
  sub_24E60169C(v72, v73 + *(v74 + 48), &qword_27F21C450);
  v75 = v73 + *(v74 + 64);
  *v75 = 0;
  *(v75 + 8) = 0;
  *(v75 + 16) = v69;
  *(v75 + 24) = 0;

  sub_24E601704(v71, &qword_27F21C450);
  sub_24E601704(v52, &qword_27F23BCC0);

  sub_24E601704(v72, &qword_27F21C450);
  return sub_24E601704(v70, &qword_27F23BCC0);
}

uint64_t sub_24F1C8CFC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BCF8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v13 - v6;
  v8 = *v1;
  if (*(*v1 + 16))
  {
    v9 = v1[8];
    v13[0] = v4;
    *v7 = sub_24F9249A8();
    *(v7 + 1) = 0x4024000000000000;
    v7[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BD00);
    v13[1] = v8;
    swift_getKeyPath();
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    *(v10 + 24) = v9;
    swift_bridgeObjectRetain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BD08);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BD10);
    sub_24E602068(&qword_27F23BD18, &qword_27F23BD08);
    sub_24EFCC404();
    sub_24F1C97AC();
    sub_24F927228();
    sub_24F1C9924(v7, a1);
    return (*(v13[0] + 56))(a1, 0, 1, v3);
  }

  else
  {
    v12 = *(v4 + 56);

    return v12(a1, 1, 1, v3, v5);
  }
}

uint64_t sub_24F1C8F6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v32 = a4;
  v7 = sub_24F9241F8();
  v8 = *(v7 - 8);
  v30 = v7;
  v31 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v28[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BD28);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v28[-v16];
  v18 = *a1;
  v19 = *(a1 + 8);
  v29 = v19;
  v20 = sub_24F9232F8();
  (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
  v34 = type metadata accessor for Action();
  v35 = sub_24F1C99E8(&qword_27F216DE8, type metadata accessor for Action);
  v33 = v18;
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  *(v21 + 24) = v19;
  *(v21 + 32) = a2;
  *(v21 + 40) = a3 & 1;
  type metadata accessor for LargeButtonContentView();
  sub_24F1C99E8(&qword_27F215FE0, type metadata accessor for LargeButtonContentView);
  swift_retain_n();

  sub_24F921788();
  sub_24F9241E8();
  sub_24E602068(&qword_27F23BD30, &qword_27F23BD28);
  sub_24F1C99E8(&qword_27F212838, MEMORY[0x277CDDB18]);
  v22 = v32;
  v23 = v30;
  sub_24F926178();
  (*(v31 + 8))(v10, v23);
  (*(v15 + 8))(v17, v14);
  LOBYTE(v15) = v29 ^ 1;
  KeyPath = swift_getKeyPath();
  v25 = swift_allocObject();
  *(v25 + 16) = v15;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BD10);
  v27 = (v22 + *(result + 36));
  *v27 = KeyPath;
  v27[1] = sub_24E600A48;
  v27[2] = v25;
  return result;
}

uint64_t sub_24F1C937C@<X0>(uint64_t a1@<X0>, char a2@<W3>, uint64_t *a3@<X8>)
{
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);

  sub_24F925898();
  v7 = sub_24F9258E8();

  v8 = (a2 & 1) == 0;
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0x7FF0000000000000;
  }

  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215EB8);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for LargeButtonContentView();
  v11 = (a3 + v10[5]);
  *v11 = v6;
  v11[1] = v5;
  v12 = (a3 + v10[6]);
  *v12 = 0;
  v12[1] = 0;
  *(a3 + v10[7]) = v7;
  v13 = (a3 + v10[8]);
  *v13 = 0;
  v13[1] = 0;
  *(a3 + v10[9]) = 0;
  *(a3 + v10[10]) = 0;
  v14 = a3 + v10[11];
  *v14 = 0x4041000000000000;
  v14[8] = 0;
  v15 = a3 + v10[12];
  *v15 = 0;
  v15[8] = 1;
  v16 = a3 + v10[13];
  *v16 = v9;
  v16[8] = v8;
  *(a3 + v10[14]) = 1;
  *(a3 + v10[15]) = 1;
  sub_24E66ED98();
  return sub_24F9237C8();
}

unint64_t sub_24F1C9520()
{
  result = qword_27F23BCD8;
  if (!qword_27F23BCD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23BC88);
    sub_24F1C95DC();
    sub_24F1C99E8(&qword_27F255440, type metadata accessor for ComponentBackgroundModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BCD8);
  }

  return result;
}

unint64_t sub_24F1C95DC()
{
  result = qword_27F23BCE0;
  if (!qword_27F23BCE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23BC78);
    sub_24F1C9668();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BCE0);
  }

  return result;
}

unint64_t sub_24F1C9668()
{
  result = qword_27F23BCE8;
  if (!qword_27F23BCE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23BC70);
    sub_24E602068(&qword_27F23BCF0, &qword_27F23BC68);
    sub_24E602068(&qword_27F2146E0, &qword_27F2146E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BCE8);
  }

  return result;
}

uint64_t sub_24F1C9768()
{

  return swift_deallocObject();
}

unint64_t sub_24F1C97AC()
{
  result = qword_27F23BD20;
  if (!qword_27F23BD20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23BD10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23BD28);
    sub_24F9241F8();
    sub_24E602068(&qword_27F23BD30, &qword_27F23BD28);
    sub_24F1C99E8(&qword_27F212838, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2129F0, &qword_27F255320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BD20);
  }

  return result;
}

uint64_t sub_24F1C9924(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BCF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F1C9994()
{

  return swift_deallocObject();
}

uint64_t sub_24F1C99E8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24F1C9A54()
{
  result = qword_27F23BD38;
  if (!qword_27F23BD38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23BD40);
    sub_24E602068(&qword_27F23BD48, &qword_27F23BCF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BD38);
  }

  return result;
}

JUMeasurements __swiftcall JUMeasurements.adding(outsets:)(UIEdgeInsets outsets)
{
  v5 = outsets.left + outsets.right + v1;
  v6 = outsets.top + outsets.bottom + v2;
  v7 = outsets.top + v3;
  v8 = outsets.bottom + v4;
  v9 = v5;
  v10 = v7;
  result.var3 = v8;
  result.var2 = v10;
  result.var1 = v6;
  result.var0 = v9;
  return result;
}

Swift::Void __swiftcall JUMeasurements.add(outsets:)(UIEdgeInsets outsets)
{
  *v1 = outsets.left + outsets.right + *v1;
  v2.f64[0] = outsets.top + outsets.bottom;
  v2.f64[1] = outsets.top;
  *(v1 + 8) = vaddq_f64(v2, *(v1 + 8));
  *(v1 + 24) = *(v1 + 24) + outsets.bottom;
}

double JUMeasurements.add(outsets:in:)(void *a1, float64_t a2, double a3, double a4, double a5)
{
  v9 = [a1 traitCollection];
  [v9 layoutDirection];

  *v5 = a3 + a5 + *v5;
  v10.f64[0] = a2 + a4;
  v10.f64[1] = a2;
  *(v5 + 8) = vaddq_f64(v10, *(v5 + 8));
  result = *(v5 + 24) + a4;
  *(v5 + 24) = result;
  return result;
}

double JUMeasurements.adding(outsets:in:)(void *a1, double a2, double a3, double a4, double a5, double a6)
{
  v9 = [a1 traitCollection];
  [v9 layoutDirection];

  return a3 + a5 + a6;
}

GameStoreKit::PersonalizedOfferType_optional __swiftcall PersonalizedOfferType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PersonalizedOfferType.rawValue.getter()
{
  v1 = 0x6574656C706D6F63;
  if (*v0 != 1)
  {
    v1 = 0x6573616863727570;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_24F1C9D54(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x6574656C706D6F63;
  if (v2 != 1)
  {
    v4 = 0x6573616863727570;
    v3 = 0xE900000000000064;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701736302;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6574656C706D6F63;
  if (*a2 != 1)
  {
    v8 = 0x6573616863727570;
    v7 = 0xE900000000000064;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701736302;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

unint64_t sub_24F1C9E5C()
{
  result = qword_27F23BD50;
  if (!qword_27F23BD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BD50);
  }

  return result;
}

uint64_t sub_24F1C9EB0()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F1C9F50()
{
  sub_24F92B218();
}

uint64_t sub_24F1C9FDC()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F1CA084(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x6574656C706D6F63;
  if (v2 != 1)
  {
    v5 = 0x6573616863727570;
    v4 = 0xE900000000000064;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701736302;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t CallProviderConversationHandles.conversationHandles.getter()
{
  type metadata accessor for CallProviderConversationHandles();
}

uint64_t type metadata accessor for CallProviderConversationHandles()
{
  result = qword_27F23BD90;
  if (!qword_27F23BD90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CallProviderConversationHandles.conversationHandles.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CallProviderConversationHandles() + 20);

  *(v1 + v3) = a1;
  return result;
}

unint64_t CallProviderConversationHandles.jsRepresentation(in:)@<X0>(void *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x72656469766F7270;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 72) = type metadata accessor for CallProvider();
  *(inited + 80) = sub_24EA45F98(&qword_27F225B48);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24F1CAEA8(v2, boxed_opaque_existential_1, type metadata accessor for CallProvider);
  *(inited + 88) = 0xD000000000000013;
  *(inited + 96) = 0x800000024FA6EB30;
  v6 = *(v2 + *(type metadata accessor for CallProviderConversationHandles() + 20));
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BD58);
  *(inited + 136) = sub_24F1CAE30(&qword_27F23BD60, sub_24EDD5814);
  *(inited + 104) = v6;

  v7 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
  swift_arrayDestroy();
  v8 = sub_24E80FFAC(v7);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v8;
  return result;
}

uint64_t static CallProviderConversationHandles.== infix(_:_:)(void *a1, void *a2)
{
  if ((_s12GameStoreKit12CallProviderV2eeoiySbAC_ACtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for CallProviderConversationHandles() + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);

  return sub_24EA15730(v5, v6);
}

uint64_t sub_24F1CA494()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x72656469766F7270;
  }
}

uint64_t sub_24F1CA4D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x72656469766F7270 && a2 == 0xE800000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FA6EB30 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24F1CA5B8(uint64_t a1)
{
  v2 = sub_24F1CADDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F1CA5F4(uint64_t a1)
{
  v2 = sub_24F1CADDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CallProviderConversationHandles.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BD68);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F1CADDC();
  sub_24F92D128();
  v12 = 0;
  type metadata accessor for CallProvider();
  sub_24EA45F98(&qword_27F225B60);
  sub_24F92CD48();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for CallProviderConversationHandles() + 20));
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BD58);
    sub_24F1CAE30(&qword_27F23BD78, sub_24EDD6418);
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t CallProviderConversationHandles.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for CallProvider();
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BD80);
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for CallProviderConversationHandles();
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F1CADDC();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v11;
  v13 = v18;
  v23 = 0;
  sub_24EA45F98(&qword_27F225B70);
  v14 = v19;
  sub_24F92CC68();
  sub_24EA45FDC(v20, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BD58);
  v22 = 1;
  sub_24F1CAE30(&qword_27F23BD88, sub_24EDD646C);
  sub_24F92CC68();
  (*(v13 + 8))(v8, v14);
  *(v12 + *(v9 + 20)) = v21;
  sub_24F1CAEA8(v12, v17, type metadata accessor for CallProviderConversationHandles);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F1CAF10(v12, type metadata accessor for CallProviderConversationHandles);
}

uint64_t sub_24F1CAB98(void *a1, void *a2, uint64_t a3)
{
  if ((static CallProvider.== infix(_:_:)(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_24EA15730(v7, v8);
}

unint64_t sub_24F1CAC00@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x72656469766F7270;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 72) = type metadata accessor for CallProvider();
  *(inited + 80) = sub_24EA45F98(&qword_27F225B48);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24F1CAEA8(v4, boxed_opaque_existential_1, type metadata accessor for CallProvider);
  *(inited + 88) = 0xD000000000000013;
  *(inited + 96) = 0x800000024FA6EB30;
  v8 = *(v4 + *(a1 + 20));
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BD58);
  *(inited + 136) = sub_24F1CAE30(&qword_27F23BD60, sub_24EDD5814);
  *(inited + 104) = v8;

  v9 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
  swift_arrayDestroy();
  v10 = sub_24E80FFAC(v9);

  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a2[4] = result;
  *a2 = v10;
  return result;
}

unint64_t sub_24F1CADDC()
{
  result = qword_27F23BD70;
  if (!qword_27F23BD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BD70);
  }

  return result;
}

uint64_t sub_24F1CAE30(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23BD58);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F1CAEA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F1CAF10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F1CAF84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CallProvider();
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

uint64_t sub_24F1CB054(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CallProvider();
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

void sub_24F1CB10C()
{
  type metadata accessor for CallProvider();
  if (v0 <= 0x3F)
  {
    sub_24F1CB190();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24F1CB190()
{
  if (!qword_27F23BDA0)
  {
    v0 = sub_24F92B6E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F23BDA0);
    }
  }
}

unint64_t sub_24F1CB1F4()
{
  result = qword_27F23BDA8;
  if (!qword_27F23BDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BDA8);
  }

  return result;
}

unint64_t sub_24F1CB24C()
{
  result = qword_27F23BDB0;
  if (!qword_27F23BDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BDB0);
  }

  return result;
}

unint64_t sub_24F1CB2A4()
{
  result = qword_27F23BDB8;
  if (!qword_27F23BDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BDB8);
  }

  return result;
}

GameStoreKit::AppShowcaseType_optional __swiftcall AppShowcaseType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AppShowcaseType.rawValue.getter()
{
  v1 = 0x6C6C616D73;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656772616CLL;
  }
}

uint64_t sub_24F1CB3AC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x6C6C616D73;
  v5 = 0x800000024FA41CF0;
  if (v2 != 1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x800000024FA41CF0;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x656772616CLL;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = 0x6C6C616D73;
  if (*a2 == 1)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xD000000000000010;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x656772616CLL;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F1CB498()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F1CB538()
{
  sub_24F92B218();
}

uint64_t sub_24F1CB5C4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F1CB66C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6C6C616D73;
  if (v2 != 1)
  {
    v5 = 0xD000000000000010;
    v4 = 0x800000024FA41CF0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656772616CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t AppShowcase.descriptionText.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t AppShowcase.__allocating_init(id:lockup:descriptionText:screenshots:video:type:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  v27 = a5;
  v28 = a6;
  v29 = a2;
  v30 = a3;
  v12 = sub_24F91F6B8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v17 = *a7;
  sub_24E60169C(a1, &v33, &qword_27F235830);
  if (*(&v34 + 1))
  {
    v18 = v34;
    *(v16 + 64) = v33;
    *(v16 + 80) = v18;
    *(v16 + 96) = v35;
  }

  else
  {
    sub_24F91F6A8();
    v19 = sub_24F91F668();
    v26 = a8;
    v21 = v20;
    (*(v13 + 8))(v15, v12);
    v31 = v19;
    v32 = v21;
    a8 = v26;
    sub_24F92C7F8();
    sub_24E601704(&v33, &qword_27F235830);
  }

  sub_24E601704(a1, &qword_27F235830);
  sub_24E65E0D4(a8, v16 + OBJC_IVAR____TtC12GameStoreKit11AppShowcase_impressionMetrics);
  v22 = v30;
  *(v16 + 16) = v29;
  *(v16 + 24) = v22;
  v24 = v27;
  v23 = v28;
  *(v16 + 32) = a4;
  *(v16 + 40) = v24;
  *(v16 + 48) = v23;
  *(v16 + 56) = v17;
  return v16;
}

uint64_t AppShowcase.init(id:lockup:descriptionText:screenshots:video:type:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  v9 = v8;
  v28 = a5;
  v29 = a6;
  v30 = a2;
  v31 = a3;
  v14 = sub_24F91F6B8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a7;
  sub_24E60169C(a1, &v34, &qword_27F235830);
  if (*(&v35 + 1))
  {
    v37 = v34;
    v38 = v35;
    v39 = v36;
  }

  else
  {
    sub_24F91F6A8();
    v19 = sub_24F91F668();
    v27 = a8;
    v21 = v20;
    (*(v15 + 8))(v17, v14);
    v32 = v19;
    v33 = v21;
    a8 = v27;
    sub_24F92C7F8();
    sub_24E601704(&v34, &qword_27F235830);
  }

  sub_24E601704(a1, &qword_27F235830);
  v22 = v38;
  *(v9 + 64) = v37;
  *(v9 + 80) = v22;
  *(v9 + 96) = v39;
  sub_24E65E0D4(a8, v9 + OBJC_IVAR____TtC12GameStoreKit11AppShowcase_impressionMetrics);
  v23 = v31;
  *(v9 + 16) = v30;
  *(v9 + 24) = v23;
  v25 = v28;
  v24 = v29;
  *(v9 + 32) = a4;
  *(v9 + 40) = v25;
  *(v9 + 48) = v24;
  *(v9 + 56) = v18;
  return v9;
}

uint64_t sub_24F1CBB34@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for AppShowcase();
  *a1 = v1;
}

uint64_t AppShowcase.deinit()
{

  sub_24E6585F8(v0 + 64);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit11AppShowcase_impressionMetrics, &qword_27F213E68);
  return v0;
}

uint64_t AppShowcase.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 64);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit11AppShowcase_impressionMetrics, &qword_27F213E68);

  return swift_deallocClassInstance();
}

char *sub_24F1CBC84@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  result = sub_24F1CBD34(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_24F1CBCB0@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for AppShowcase();
  *a1 = v3;
}

char *sub_24F1CBD34(char *a1, uint64_t a2)
{
  v76 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v3 - 8);
  v64 = &v59 - v4;
  v63 = sub_24F91F6B8();
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v61 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F9285B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v68 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v59 - v10;
  v12 = sub_24F928388();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v67 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v66 = &v59 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v59 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v59 - v21;
  sub_24F928398();
  v60 = sub_24F928348();
  v72 = v12;
  v73 = v23;
  v77 = *(v13 + 8);
  v74 = (v13 + 8);
  v77(v22, v12);
  sub_24F928398();
  v69 = v7;
  v24 = *(v7 + 16);
  v25 = v76;
  v24(v11, v76, v6);
  type metadata accessor for Screenshots();
  sub_24F1CC824(&qword_27F2273E0, type metadata accessor for Screenshots);
  v65 = v11;
  v26 = sub_24F92B698();
  v71 = a1;
  sub_24F928398();
  v27 = v68;
  v75 = v6;
  v28 = v6;
  v29 = v24;
  v24(v68, v25, v28);
  type metadata accessor for Lockup();
  swift_allocObject();
  v30 = v70;
  v31 = Lockup.init(deserializing:using:)(v19, v27);
  if (v30)
  {

    (*(v69 + 8))(v25, v75);
    v77(v71, v72);
  }

  else
  {
    v32 = v31;
    v70 = 0;
    v68 = v26;
    type metadata accessor for Video();
    v33 = v71;
    sub_24F928398();
    v29(v65, v25, v75);
    sub_24F1CC824(&qword_27F221590, type metadata accessor for Video);
    sub_24F929548();
    v65 = v83[0];
    v34 = v66;
    sub_24F928398();
    v35 = sub_24F928348();
    v37 = v32;
    if (v36)
    {
      *&v80 = v35;
      *(&v80 + 1) = v36;
    }

    else
    {
      v38 = v61;
      sub_24F91F6A8();
      v39 = sub_24F91F668();
      v41 = v40;
      (*(v62 + 8))(v38, v63);
      *&v80 = v39;
      *(&v80 + 1) = v41;
    }

    sub_24F92C7F8();
    v42 = v72;
    v22 = v74;
    v77(v34, v72);
    v43 = v69;
    v44 = v67;
    sub_24F928398();
    sub_24F1CC86C();
    v45 = v70;
    sub_24F928218();
    v46 = v76;
    v47 = v73;
    if (v45)
    {

      (*(v43 + 8))(v46, v75);
      v48 = v77;
      v77(v33, v42);
      v48(v44, v42);
      sub_24E601704(v83, &qword_27F235830);
    }

    else
    {
      v70 = 0;
      v77(v44, v42);
      v50 = v84;
      v51 = v64;
      sub_24E60169C(v37 + OBJC_IVAR____TtC12GameStoreKit6Lockup_impressionMetrics, v64, &qword_27F213E68);
      type metadata accessor for AppShowcase();
      v22 = swift_allocObject();
      sub_24E60169C(v83, &v80, &qword_27F235830);
      if (*(&v81 + 1))
      {
        v52 = v81;
        *(v22 + 4) = v80;
        *(v22 + 5) = v52;
        *(v22 + 12) = v82;
      }

      else
      {
        v53 = v61;
        sub_24F91F6A8();
        v54 = sub_24F91F668();
        v56 = v55;
        (*(v62 + 8))(v53, v63);
        v78 = v54;
        v79 = v56;
        v42 = v72;
        v47 = v73;
        v51 = v64;
        sub_24F92C7F8();
        sub_24E601704(&v80, &qword_27F235830);
      }

      (*(v43 + 8))(v46, v75);
      v77(v33, v42);
      sub_24E601704(v83, &qword_27F235830);
      sub_24E65E0D4(v51, &v22[OBJC_IVAR____TtC12GameStoreKit11AppShowcase_impressionMetrics]);
      v57 = v60;
      *(v22 + 2) = v37;
      *(v22 + 3) = v57;
      v58 = v68;
      *(v22 + 4) = v47;
      *(v22 + 5) = v58;
      *(v22 + 6) = v65;
      v22[56] = v50;
    }
  }

  return v22;
}

uint64_t type metadata accessor for AppShowcase()
{
  result = qword_27F23BDD0;
  if (!qword_27F23BDD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24F1CC60C()
{
  result = qword_27F23BDC0;
  if (!qword_27F23BDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BDC0);
  }

  return result;
}

void sub_24F1CC6C0()
{
  sub_24E61C938();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24F1CC824(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24F1CC86C()
{
  result = qword_27F23BDE0;
  if (!qword_27F23BDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BDE0);
  }

  return result;
}

id sub_24F1CC8D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = objc_opt_self();
  result = [v5 valueWithNewObjectInContext_];
  if (result)
  {
    v7 = result;
    v10 = v3;

    v8 = v7;
    v9 = [v5 valueWithObject:sub_24F92CF68() inContext:{a1, v4, v10}];
    result = swift_unknownObjectRelease();
    if (v9)
    {
      sub_24F92C328();

      return v8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_24F1CC9D4()
{
  result = qword_27F23BDE8;
  if (!qword_27F23BDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BDE8);
  }

  return result;
}

unint64_t sub_24F1CCA30()
{
  result = qword_27F23BDF0;
  if (!qword_27F23BDF0)
  {
    type metadata accessor for MSOProviderData();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BDF0);
  }

  return result;
}

uint64_t SearchFocusDiffablePageContentPresenter.__allocating_init(objectGraph:pageUrl:sidePackedPage:pendingPageRender:pageRenderMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v56 = a3;
  v57 = a4;
  v59 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - v12;
  v14 = swift_allocObject();
  v50 = a2;
  sub_24E60169C(a2, v13, &qword_27F228530);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = (v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  sub_24E911D90(v13, v17 + v15);
  v18 = v59;
  *(v17 + v16) = v59;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = a5;
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = a5;
  sub_24E60169C(a2, v10, &qword_27F228530);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_24F041928;
  *(v20 + 24) = v18;
  v55 = v20;
  *(v14 + qword_27F22F198) = 0;
  v21 = MEMORY[0x277D84F90];
  *(v14 + qword_27F22F1A0) = MEMORY[0x277D84F90];
  v22 = qword_27F39C780;
  v58 = a5;
  swift_retain_n();
  swift_retain_n();

  *(v14 + v22) = sub_24E60986C(v21);
  v23 = (v14 + qword_27F22F1A8);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v14 + qword_27F22F1B0);
  *v24 = 0;
  v24[1] = 0;
  v53 = v24;
  v25 = (v14 + qword_27F22F1B8);
  *v25 = 0;
  v25[1] = 0;
  v26 = (v14 + qword_27F22F1C0);
  *v26 = 0;
  v26[1] = 0;
  v52 = v26;
  v27 = (v14 + qword_27F22F1C8);
  *v27 = 0;
  v27[1] = 0;
  v51 = v27;
  v28 = (v14 + qword_27F39C788);
  *v28 = 0u;
  v28[1] = 0u;
  *(v28 + 25) = 0u;
  *(v14 + qword_27F39C790) = 0;
  *(v14 + qword_27F22F1D0) = 0;
  *(v14 + qword_27F22F1D8) = MEMORY[0x277D84FA0];
  *(v14 + qword_27F39C798) = 0;
  v29 = qword_27F39C7A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ADC8);
  swift_allocObject();
  *(v14 + v29) = sub_24F92ADA8();
  v30 = qword_27F39C7A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8);
  swift_allocObject();
  *(v14 + v30) = sub_24F92ADA8();
  v31 = qword_27F39C7B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ADE0);
  swift_allocObject();
  *(v14 + v31) = sub_24F92ADA8();
  v32 = qword_27F39C7B8;
  swift_allocObject();
  *(v14 + v32) = sub_24F92ADA8();
  v33 = qword_27F39C7C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8);
  swift_allocObject();
  *(v14 + v33) = sub_24F92ADA8();
  v34 = qword_27F39C7C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0);
  swift_allocObject();
  v35 = sub_24F92ADA8();

  v36 = v19;

  v37 = v59;

  sub_24E601704(v50, &qword_27F228530);
  *(v14 + v34) = v35;
  v38 = qword_27F22F1E0;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D8);
  v40 = *(*(v39 - 8) + 56);
  v40(v14 + v38, 1, 1, v39);
  v40(v14 + qword_27F22F1E8, 1, 1, v39);
  v41 = v56;
  *(v14 + 16) = v37;
  sub_24E911D90(v54, v14 + qword_27F39C7D0);
  *v23 = sub_24F1CD960;
  v23[1] = v17;
  *v25 = 0;
  v25[1] = 0;
  if (v41)
  {
    v42 = swift_allocObject();
    *(v42 + 16) = v41;
    v43 = sub_24E965688;
  }

  else
  {
    v43 = 0;
    v42 = 0;
  }

  v44 = v52;
  v45 = v53;
  *v53 = v43;
  v45[1] = v42;
  *v44 = sub_24F041920;
  v44[1] = v36;
  v46 = v51;
  v47 = v55;
  *v51 = sub_24ECF3DB0;
  v46[1] = v47;
  v48 = v58;
  *(v14 + qword_27F22F1F0) = v57;
  *(v14 + qword_27F39C7D8) = v48;
  return v14;
}

uint64_t SearchFocusDiffablePageContentPresenter.init(objectGraph:pageUrl:sidePackedPage:pendingPageRender:pageRenderMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v65 = a3;
  v66 = a4;
  v57 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v56 - v14;
  v59 = a2;
  sub_24E60169C(a2, &v56 - v14, &qword_27F228530);
  v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v17 = (v11 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  sub_24E911D90(v15, v18 + v16);
  v19 = v57;
  *(v18 + v17) = v57;
  *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = a5;
  v58 = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = a5;
  sub_24E60169C(a2, v12, &qword_27F228530);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_24F1CDDF4;
  *(v21 + 24) = v19;
  v63 = v21;
  *(v6 + qword_27F22F198) = 0;
  v22 = MEMORY[0x277D84F90];
  *(v6 + qword_27F22F1A0) = MEMORY[0x277D84F90];
  v23 = qword_27F39C780;
  v67 = a5;
  swift_retain_n();
  swift_retain_n();

  *(v6 + v23) = sub_24E60986C(v22);
  v24 = (v6 + qword_27F22F1A8);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v6 + qword_27F22F1B0);
  *v25 = 0;
  v25[1] = 0;
  v26 = (v6 + qword_27F22F1B8);
  *v26 = 0;
  v26[1] = 0;
  v27 = (v6 + qword_27F22F1C0);
  *v27 = 0;
  v27[1] = 0;
  v60 = v27;
  v28 = (v6 + qword_27F22F1C8);
  *v28 = 0;
  v28[1] = 0;
  v61 = v28;
  v29 = (v6 + qword_27F39C788);
  *v29 = 0u;
  v29[1] = 0u;
  *(v29 + 25) = 0u;
  *(v6 + qword_27F39C790) = 0;
  *(v6 + qword_27F22F1D0) = 0;
  *(v6 + qword_27F22F1D8) = MEMORY[0x277D84FA0];
  *(v6 + qword_27F39C798) = 0;
  v30 = qword_27F39C7A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ADC8);
  swift_allocObject();
  *(v6 + v30) = sub_24F92ADA8();
  v31 = qword_27F39C7A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8);
  swift_allocObject();
  *(v6 + v31) = sub_24F92ADA8();
  v32 = qword_27F39C7B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ADE0);
  swift_allocObject();
  *(v6 + v32) = sub_24F92ADA8();
  v33 = qword_27F39C7B8;
  swift_allocObject();
  *(v6 + v33) = sub_24F92ADA8();
  v34 = qword_27F39C7C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8);
  swift_allocObject();
  *(v6 + v34) = sub_24F92ADA8();
  v35 = qword_27F39C7C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0);
  swift_allocObject();
  v36 = sub_24F92ADA8();
  v37 = v58;

  v64 = v20;

  sub_24E601704(v59, &qword_27F228530);
  *(v6 + v35) = v36;
  v38 = qword_27F22F1E0;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D8);
  v40 = *(*(v39 - 8) + 56);
  v40(v6 + v38, 1, 1, v39);
  v41 = v39;
  v42 = v65;
  v40(v6 + qword_27F22F1E8, 1, 1, v41);
  *(v6 + 16) = v19;
  sub_24E911D90(v62, v6 + qword_27F39C7D0);
  v43 = *v24;
  *v24 = sub_24F1CDDF0;
  v24[1] = v37;
  sub_24E824448(v43);
  v44 = *v26;
  *v26 = 0;
  v26[1] = 0;
  sub_24E824448(v44);
  if (v42)
  {
    v45 = swift_allocObject();
    *(v45 + 16) = v42;
    v46 = sub_24EC02BCC;
  }

  else
  {
    v46 = 0;
    v45 = 0;
  }

  v47 = *v25;
  *v25 = v46;
  v25[1] = v45;
  sub_24E824448(v47);
  v48 = v60;
  v49 = *v60;
  v50 = v64;
  *v60 = sub_24F1CDE1C;
  v48[1] = v50;
  sub_24E824448(v49);
  v51 = v61;
  v52 = *v61;
  v53 = v63;
  *v61 = sub_24ECF4148;
  v51[1] = v53;
  sub_24E824448(v52);
  v54 = v67;
  *(v6 + qword_27F22F1F0) = v66;
  *(v6 + qword_27F39C7D8) = v54;
  return v6;
}

uint64_t sub_24F1CD62C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229650);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_24F91F4A8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(a2, v8, &qword_27F228530);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_24E601704(v8, &qword_27F228530);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229638);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BE08);
    sub_24F1CDD7C();
    swift_allocError();
    *v13 = 0;
    return sub_24F92A978();
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    type metadata accessor for JSIntentDispatcher();
    sub_24F928FD8();
    sub_24F92A758();
    (*(v10 + 16))(v5, v12, v9);
    sub_24F929C28();

    sub_24F928FE8();
    sub_24F929BF8();

    v15 = sub_24F929C08();

    v16 = sub_24EB498B4(v5, v15, "GameStoreKit/SearchFocusDiffablePageContentPresenter.swift", 58, 2);

    sub_24E601704(v5, &qword_27F229650);
    (*(v10 + 8))(v12, v9);
    return v16;
  }
}

uint64_t sub_24F1CD964(uint64_t a1)
{
  type metadata accessor for JSIntentDispatcher();
  sub_24F928FD8();
  sub_24F92A758();
  sub_24F929C28();

  sub_24F928FE8();
  sub_24F929BF8();

  v2 = sub_24F929C18();

  v3 = sub_24EB46264(a1, v2, "GameStoreKit/SearchFocusDiffablePageContentPresenter.swift", 58, 2);

  return v3;
}

uint64_t sub_24F1CDA54(uint64_t a1, uint64_t a2)
{
  sub_24E60169C(a1, &v6, &qword_27F2129B0);
  if (v7)
  {
    sub_24E612B0C(&v6, v8);
    type metadata accessor for JSIntentDispatcher();
    sub_24F928FD8();
    sub_24F92A758();
    sub_24E643A9C(v8, &v6);
    v3 = sub_24EB49B50(&v6, a2, "GameStoreKit/SearchFocusDiffablePageContentPresenter.swift", 58, 2);

    sub_24E601704(&v6, &qword_27F229640);
    __swift_destroy_boxed_opaque_existential_1(v8);
    return v3;
  }

  else
  {
    sub_24E601704(&v6, &qword_27F2129B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229638);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BE08);
    sub_24F1CDD7C();
    swift_allocError();
    *v5 = 2;
    return sub_24F92A978();
  }
}

uint64_t SearchFocusDiffablePageContentPresenter.__deallocating_deinit()
{
  _s12GameStoreKit39TopChartDiffableSegmentContentPresenterCfd_0();

  return swift_deallocClassInstance();
}

void sub_24F1CDC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_24E824448(a10);
  sub_24E824448(a6);
  sub_24E824448(a4);
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_24F1CDC94()
{

  return swift_deallocObject();
}

uint64_t sub_24F1CDCCC()
{

  return swift_deallocObject();
}

uint64_t type metadata accessor for SearchFocusDiffablePageContentPresenter()
{
  result = qword_27F23BDF8;
  if (!qword_27F23BDF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24F1CDD7C()
{
  result = qword_27F23BE10;
  if (!qword_27F23BE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23BE08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BE10);
  }

  return result;
}

uint64_t sub_24F1CDE34(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = _s9ViewModelVMa();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_24F1CDEF4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = _s9ViewModelVMa();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ArticlePageEditorialStoryCardViewModel()
{
  result = qword_27F23BE18;
  if (!qword_27F23BE18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F1CDFE4()
{
  result = type metadata accessor for EditorialStoryCard(319);
  if (v1 <= 0x3F)
  {
    result = sub_24F928FD8();
    if (v2 <= 0x3F)
    {
      result = _s9ViewModelVMa();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_24F1CE104()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - v5;
  if (sub_24F1CE294())
  {
    return 1;
  }

  v8 = *v0;
  sub_24E747EE8(*v0 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_title, v6);
  v9 = sub_24F91F008();
  v10 = *(*(v9 - 8) + 48);
  v7 = 1;
  v11 = v10(v6, 1, v9);
  sub_24E601704(v6, &qword_27F215340);
  if (v11 == 1)
  {
    sub_24E747EE8(v8 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_description, v3);
    v7 = v10(v3, 1, v9) != 1;
    sub_24E601704(v3, &qword_27F215340);
  }

  return v7;
}

uint64_t sub_24F1CE294()
{
  v1 = sub_24F91F008();
  v31 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236B38);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - v6;
  v8 = type metadata accessor for EditorialStoryCard.Badge(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v30 - v15;
  sub_24EFF5FA0(*v0 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_badge, &v30 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232138);
  v18 = *(v17 - 8);
  (*(v18 + 56))(v13, 2, 2, v17);
  v19 = *(v5 + 56);
  sub_24EFF5FA0(v16, v7);
  sub_24EFF5FA0(v13, &v7[v19]);
  v20 = *(v18 + 48);
  v21 = v20(v7, 2, v17);
  if (!v21)
  {
    v30 = v1;
    v22 = v31;
    sub_24EFF5FA0(v7, v10);
    if (!v20(&v7[v19], 2, v17))
    {
      v25 = v22;
      v26 = *(v22 + 32);
      v27 = v30;
      v26(v3, &v7[v19], v30);
      v28 = sub_24F91EED8();
      v29 = *(v25 + 8);
      v29(v3, v27);
      sub_24EFF6004(v13);
      sub_24EFF6004(v16);
      v29(v10, v27);
      sub_24EFF6004(v7);
      v23 = v28 ^ 1;
      return v23 & 1;
    }

    sub_24EFF6004(v13);
    sub_24EFF6004(v16);
    (*(v22 + 8))(v10, v30);
    goto LABEL_9;
  }

  if (v21 == 1)
  {
    sub_24EFF6004(v13);
    sub_24EFF6004(v16);
    if (v20(&v7[v19], 2, v17) != 1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_24EFF6004(v13);
    sub_24EFF6004(v16);
    if (v20(&v7[v19], 2, v17) != 2)
    {
LABEL_9:
      sub_24E601704(v7, &qword_27F236B38);
      v23 = 1;
      return v23 & 1;
    }
  }

  sub_24EFF6004(v7);
  v23 = 0;
  return v23 & 1;
}

uint64_t SearchLockupListLayout.__allocating_init(metrics:iconHeadingView:titleHeadingView:lockupCollectionView:)(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  v8 = swift_allocObject();
  v9 = *(a1 + 112);
  *(v8 + 232) = *(a1 + 96);
  *(v8 + 248) = v9;
  *(v8 + 264) = *(a1 + 128);
  v10 = *(a1 + 48);
  *(v8 + 168) = *(a1 + 32);
  *(v8 + 184) = v10;
  v11 = *(a1 + 80);
  *(v8 + 200) = *(a1 + 64);
  *(v8 + 216) = v11;
  v12 = *(a1 + 16);
  *(v8 + 136) = *a1;
  *(v8 + 280) = *(a1 + 144);
  *(v8 + 152) = v12;
  sub_24E612C80(a2, v8 + 16);
  sub_24E612C80(a3, v8 + 56);
  sub_24E612C80(a4, v8 + 96);
  return v8;
}

uint64_t SearchLockupListLayout.init(metrics:iconHeadingView:titleHeadingView:lockupCollectionView:)(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  v7 = *(a1 + 112);
  *(v4 + 232) = *(a1 + 96);
  *(v4 + 248) = v7;
  *(v4 + 264) = *(a1 + 128);
  v8 = *(a1 + 48);
  *(v4 + 168) = *(a1 + 32);
  *(v4 + 184) = v8;
  v9 = *(a1 + 80);
  *(v4 + 200) = *(a1 + 64);
  *(v4 + 216) = v9;
  v10 = *(a1 + 16);
  *(v4 + 136) = *a1;
  *(v4 + 280) = *(a1 + 144);
  *(v4 + 152) = v10;
  sub_24E612C80(a2, v4 + 16);
  sub_24E612C80(a3, v4 + 56);
  sub_24E612C80(a4, v4 + 96);
  return v4;
}

uint64_t SearchLockupListLayout.Metrics.init(headingLeadingSpace:titleLeadingSpace:lockupCollectionViewTopSpace:layoutMargins:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, double *a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  sub_24E612C80(a1, a4);
  sub_24E612C80(a2, (a4 + 5));
  result = sub_24E612C80(a3, (a4 + 10));
  a4[15] = a5;
  a4[16] = a6;
  a4[17] = a7;
  a4[18] = a8;
  return result;
}

double sub_24F1CE93C()
{
  v0 = sub_24F922758();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F1CEB64(v3);
  sub_24F9226D8();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  return v5;
}

uint64_t sub_24F1CEA54()
{
  v0 = sub_24F922758();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F1CEB64(v3);
  sub_24F9226E8();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_24F1CEB64@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v59 = sub_24F922708();
  v66 = *(v59 - 8);
  v3 = v66;
  MEMORY[0x28223BE20](v59);
  v54 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_24F922718();
  v65 = *(v41 - 8);
  v5 = v65;
  MEMORY[0x28223BE20](v41);
  v40 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_24F9226C8();
  v64 = *(v48 - 8);
  v7 = v64;
  MEMORY[0x28223BE20](v48);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213A88);
  v10 = *(sub_24F922748() - 8);
  v44 = *(v10 + 72);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v45 = 2 * v44;
  v12 = swift_allocObject();
  v46 = v12;
  *(v12 + 16) = xmmword_24F9479A0;
  v49 = v12 + v11;
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  sub_24F922258();
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v43 = *MEMORY[0x277D227C8];
  v13 = *(v7 + 104);
  v62 = v7 + 104;
  v63 = v13;
  v13(v9);
  v42 = *MEMORY[0x277D227F0];
  v14 = *(v5 + 104);
  v60 = v5 + 104;
  v61 = v14;
  v15 = v40;
  v16 = v41;
  v14(v40);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2330E8);
  v57 = *(v3 + 72);
  v17 = v66;
  v56 = *(v66 + 80);
  v39 = (v56 + 32) & ~v56;
  v18 = swift_allocObject();
  v55 = xmmword_24F93DE60;
  *(v18 + 16) = xmmword_24F93DE60;
  sub_24F9226F8();
  v67 = v18;
  v52 = sub_24EED36B4();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2330F0);
  v53 = sub_24EED370C();
  v19 = v54;
  v20 = v59;
  sub_24F92C6A8();
  v21 = v36;
  sub_24F922738();
  v38 = *(v17 + 8);
  v66 = v17 + 8;
  v38(v19, v20);
  v37 = *(v65 + 8);
  v65 += 8;
  v22 = v16;
  v37(v15, v16);
  v23 = *(v64 + 8);
  v64 += 8;
  v50 = v23;
  v24 = v48;
  v23(v21, v48);
  sub_24E930E6C(&v68);
  __swift_destroy_boxed_opaque_existential_1(v71);
  __swift_project_boxed_opaque_existential_1(v2 + 7, v2[10]);
  sub_24F922258();
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v25 = v24;
  v63(v21, v43, v24);
  v61(v15, v42, v22);
  v26 = swift_allocObject();
  *(v26 + 16) = v55;
  sub_24F9226F8();
  v67 = v26;
  v27 = v54;
  v28 = v59;
  sub_24F92C6A8();
  sub_24F922738();
  v29 = v38;
  v38(v27, v28);
  v30 = v22;
  v31 = v22;
  v32 = v37;
  v37(v15, v31);
  v50(v21, v25);
  sub_24E930E6C(&v68);
  __swift_destroy_boxed_opaque_existential_1(v71);
  v72 = 0;
  memset(v71, 0, sizeof(v71));
  v63(v21, *MEMORY[0x277D227D0], v25);
  v33 = v30;
  v61(v15, *MEMORY[0x277D227E8], v30);
  v34 = swift_allocObject();
  *(v34 + 16) = v55;
  sub_24F9226F8();
  *&v68 = v34;
  sub_24F92C6A8();
  sub_24F922738();
  v29(v27, v28);
  v32(v15, v33);
  v50(v21, v48);
  sub_24E930E6C(v71);
  return sub_24F922728();
}

uint64_t SearchLockupListLayout.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  sub_24F1CF3F4(v0 + 136);
  return v0;
}

uint64_t SearchLockupListLayout.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  sub_24F1CF3F4(v0 + 136);

  return swift_deallocClassInstance();
}

uint64_t sub_24F1CF474()
{
  v0 = sub_24F922758();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F1CEB64(v3);
  sub_24F9226E8();
  return (*(v1 + 8))(v3, v0);
}

double sub_24F1CF588()
{
  v0 = sub_24F922758();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F1CEB64(v3);
  sub_24F9226D8();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  return v5;
}

uint64_t ArcadeFooterLayout.ButtonLocation.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

uint64_t ArcadeFooterLayout.__allocating_init(metrics:riverView:wordmarkView:buttonView:footnoteView:)(const void *a1, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v10 = swift_allocObject();
  memcpy((v10 + 16), a1, 0x250uLL);
  sub_24E612C80(a2, v10 + 608);
  sub_24E612C80(a3, v10 + 648);
  sub_24E612C80(a4, v10 + 688);
  v11 = *(a5 + 16);
  *(v10 + 728) = *a5;
  *(v10 + 744) = v11;
  *(v10 + 760) = *(a5 + 32);
  return v10;
}

uint64_t ArcadeFooterLayout.init(metrics:riverView:wordmarkView:buttonView:footnoteView:)(void *__src, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  memcpy((v5 + 16), __src, 0x250uLL);
  sub_24E612C80(a2, v5 + 608);
  sub_24E612C80(a3, v5 + 648);
  sub_24E612C80(a4, v5 + 688);
  v10 = *(a5 + 16);
  *(v5 + 728) = *a5;
  *(v5 + 744) = v10;
  *(v5 + 760) = *(a5 + 32);
  return v5;
}

uint64_t sub_24F1CF910(uint64_t a1, uint64_t *a2)
{
  sub_24F1CF9B4(a1, v5);
  v3 = *a2;
  swift_beginAccess();
  sub_24F1CFA3C(v5, v3 + 16);
  return swift_endAccess();
}

uint64_t sub_24F1CF9EC(uint64_t a1)
{
  swift_beginAccess();
  sub_24F1CFA3C(a1, v1 + 16);
  return swift_endAccess();
}

uint64_t ArcadeFooterLayout.Metrics.init(iconSize:iconSpacing:iconRowCount:firstIconHorizontalOffset:wordmarkTopMargin:wordmarkHeight:buttonLocation:buttonTopMargin:buttonBottomMargin:buttonViewTopSpace:buttonViewBottomSpace:buttonMinWidth:buttonPreferredEdgeInsets:footnoteTopSpace:footnoteBottomSpace:footnoteSpaceMultiplier:layoutMargins:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, char *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, __int128 *a16, __int128 *a17, __int128 *a18, uint64_t a19, uint64_t a20, __int128 *a21, __int128 *a22, __int128 *a23)
{
  v32 = *a7;
  *(a9 + 392) = 0;
  *(a9 + 360) = 0u;
  *(a9 + 376) = 0u;
  *a9 = a10;
  *(a9 + 8) = a11;
  sub_24E612C80(a1, a9 + 16);
  *(a9 + 56) = a2;
  *(a9 + 64) = a3 & 1;
  sub_24E612C80(a4, a9 + 72);
  sub_24E612C80(a5, a9 + 112);
  sub_24E612C80(a6, a9 + 152);
  *(a9 + 192) = v32;
  sub_24E612C80(a8, a9 + 200);
  sub_24E612C80(a16, a9 + 240);
  sub_24E612C80(a17, a9 + 280);
  sub_24E612C80(a18, a9 + 320);
  sub_24EA63A70(a19, a9 + 360);
  v33 = *(a20 + 16);
  *(a9 + 400) = *a20;
  *(a9 + 416) = v33;
  *(a9 + 432) = *(a20 + 32);
  sub_24E612C80(a21, a9 + 440);
  sub_24E612C80(a22, a9 + 480);
  result = sub_24E612C80(a23, a9 + 520);
  *(a9 + 560) = a12;
  *(a9 + 568) = a13;
  *(a9 + 576) = a14;
  *(a9 + 584) = a15;
  return result;
}

uint64_t ArcadeFooterLayout.Metrics.iconSpacing.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 16);

  return sub_24E612C80(a1, v1 + 16);
}

uint64_t ArcadeFooterLayout.Metrics.iconRowCount.setter(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

uint64_t ArcadeFooterLayout.Metrics.firstIconHorizontalOffset.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 72);

  return sub_24E612C80(a1, v1 + 72);
}

uint64_t ArcadeFooterLayout.Metrics.wordmarkTopMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 112);

  return sub_24E612C80(a1, v1 + 112);
}

uint64_t ArcadeFooterLayout.Metrics.wordmarkHeight.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 152);

  return sub_24E612C80(a1, v1 + 152);
}

uint64_t ArcadeFooterLayout.Metrics.buttonTopMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 200);

  return sub_24E612C80(a1, v1 + 200);
}

uint64_t ArcadeFooterLayout.Metrics.buttonBottomMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 240);

  return sub_24E612C80(a1, v1 + 240);
}

uint64_t ArcadeFooterLayout.Metrics.buttonViewTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 280);

  return sub_24E612C80(a1, v1 + 280);
}

uint64_t ArcadeFooterLayout.Metrics.buttonViewBottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 320);

  return sub_24E612C80(a1, v1 + 320);
}

__n128 ArcadeFooterLayout.Metrics.buttonPreferredEdgeInsets.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 432);
  result = *(v1 + 400);
  v4 = *(v1 + 416);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 ArcadeFooterLayout.Metrics.buttonPreferredEdgeInsets.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 400) = *a1;
  *(v1 + 416) = v3;
  *(v1 + 432) = *(a1 + 32);
  return result;
}

uint64_t ArcadeFooterLayout.Metrics.footnoteTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 440);

  return sub_24E612C80(a1, v1 + 440);
}

uint64_t ArcadeFooterLayout.Metrics.footnoteBottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 480);

  return sub_24E612C80(a1, v1 + 480);
}

uint64_t ArcadeFooterLayout.Metrics.footnoteSpaceMultiplier.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 520);

  return sub_24E612C80(a1, v1 + 520);
}

void ArcadeFooterLayout.Metrics.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[70] = a1;
  v4[71] = a2;
  v4[72] = a3;
  v4[73] = a4;
}

uint64_t sub_24F1D0248@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v6 = v5;
  v64 = a1;
  v11 = sub_24F922C28();
  MEMORY[0x28223BE20](v11 - 8);
  v63 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F92CDB8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_24F92C1C8();
  x = v76.origin.x;
  y = v76.origin.y;
  width = v76.size.width;
  height = v76.size.height;
  MaxY = CGRectGetMaxY(v76);
  v77.origin.x = a2;
  v77.origin.y = a3;
  v77.size.width = a4;
  v77.size.height = a5;
  MinX = CGRectGetMinX(v77);
  v78.origin.x = x;
  v78.origin.y = y;
  v78.size.width = width;
  v78.size.height = height;
  MinY = CGRectGetMinY(v78);
  v65 = a2;
  v66 = a3;
  v79.origin.x = a2;
  v79.origin.y = a3;
  v67 = a4;
  v68 = a5;
  v79.size.width = a4;
  v79.size.height = a5;
  v61 = CGRectGetWidth(v79);
  v80.origin.x = x;
  v80.origin.y = y;
  v80.size.width = width;
  v80.size.height = height;
  v21 = CGRectGetHeight(v80);
  sub_24E60169C(v5 + 728, &v74, &qword_27F229780);
  if (v75)
  {
    sub_24E612C80(&v74, v71);
    __swift_project_boxed_opaque_existential_1(v71, v72);
    sub_24F922298();
    v23 = v22;
    __swift_project_boxed_opaque_existential_1(v71, v72);
    v81.origin.x = x;
    v81.origin.y = y;
    v81.size.width = width;
    v81.size.height = height;
    CGRectGetMinX(v81);
    v82.origin.x = x;
    v82.origin.y = y;
    v82.size.width = width;
    v82.size.height = height;
    CGRectGetMaxY(v82);
    v83.origin.x = x;
    v83.origin.y = y;
    v83.size.width = width;
    v83.size.height = height;
    CGRectGetWidth(v83);
    sub_24F922228();
    __swift_project_boxed_opaque_existential_1(v71, v72);
    sub_24F922218();
    v24 = CGRectGetMinY(v84);
    v21 = v21 - v23;
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    sub_24E942EA8(&v74);
    v24 = MaxY;
  }

  MaxY = v24;
  sub_24E615E00(v5 + 296, v71);
  __swift_project_boxed_opaque_existential_1(v71, v72);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v26 = v25;
  v27 = *(v14 + 8);
  v27(v16, v13);
  sub_24E615E00(v5 + 336, &v74);
  __swift_project_boxed_opaque_existential_1(&v74, v75);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v29 = v28;
  v27(v16, v13);
  __swift_destroy_boxed_opaque_existential_1(&v74);
  __swift_destroy_boxed_opaque_existential_1(v71);
  sub_24F1CF9B4(v5 + 16, v71);
  if (v73[3])
  {
    sub_24E615E00(v73, &v74);
    sub_24F1D1384(v71);
    __swift_project_boxed_opaque_existential_1(&v74, v75);
    sub_24E8ED7D8();
    sub_24F9223A8();
    v31 = v30;
    v27(v16, v13);
    __swift_destroy_boxed_opaque_existential_1(&v74);
  }

  else
  {
    sub_24F1D1384(v71);
    v31 = 0.0;
  }

  __swift_project_boxed_opaque_existential_1((v5 + 688), *(v5 + 712));
  sub_24F922298();
  if (v31 <= v32)
  {
    v31 = v32;
  }

  if ((*(v5 + 448) & 1) == 0)
  {
    v33 = *(v5 + 424);
    v34 = (v31 - v32) * 0.5;
    if (v34 < v33)
    {
      v31 = v31 + v33 - v34 + v33 - v34;
    }
  }

  v59 = v26 + v29;
  v60 = v21;
  v85.origin.x = x;
  v85.origin.y = y;
  v85.size.width = width;
  v85.size.height = height;
  v35 = CGRectGetWidth(v85);
  if (v31 >= v35)
  {
    v36 = v35;
  }

  else
  {
    v36 = v31;
  }

  __swift_project_boxed_opaque_existential_1((v5 + 648), *(v5 + 672));
  sub_24F922298();
  v38 = v37;
  v70 = v39;
  v40 = *(v5 + 208);
  v86.origin.x = x;
  v86.origin.y = y;
  v86.size.width = width;
  v86.size.height = height;
  MidX = CGRectGetMidX(v86);
  if (v40 == 1)
  {
    v56 = MidX - v36 * 0.5;
    v57 = v36;
    v42 = y;
    v43 = v59;
    v44 = MaxY - v59;
    sub_24E615E00((v6 + 32), v71);
    __swift_project_boxed_opaque_existential_1(v71, v72);
    sub_24E8ED7D8();
    sub_24F9223A8();
    v46 = v45;
    v27(v16, v13);
    __swift_destroy_boxed_opaque_existential_1(v71);
    v87.origin.x = x;
    v87.origin.y = v42;
    v87.size.width = width;
    v87.size.height = height;
    CGRectGetMidX(v87);
    v88.size.width = v57;
    v88.origin.x = v56;
    v88.origin.y = v44 - v46;
    v88.size.height = v43;
    CGRectGetMinY(v88);
    sub_24E615E00((v6 + 27), v71);
  }

  else
  {
    v47 = MidX - v38 * 0.5;
    MaxY = v47;
    v89.origin.x = x;
    v89.origin.y = y;
    v89.size.width = width;
    v89.size.height = height;
    MinY = CGRectGetMinY(v89);
    sub_24E615E00((v6 + 16), v71);
    __swift_project_boxed_opaque_existential_1(v71, v72);
    sub_24E8ED7D8();
    sub_24F9223A8();
    v49 = v48;
    v27(v16, v13);
    v50 = MinY + v49;
    __swift_destroy_boxed_opaque_existential_1(v71);
    v90.origin.x = x;
    v90.origin.y = y;
    v90.size.width = width;
    v90.size.height = height;
    v51 = CGRectGetMidX(v90) - v36 * 0.5;
    v91.origin.x = v47;
    v91.origin.y = v50;
    v91.size.width = v38;
    v91.size.height = v70;
    v52 = CGRectGetMaxY(v91);
    sub_24E615E00((v6 + 27), v71);
    __swift_project_boxed_opaque_existential_1(v71, v72);
    sub_24E8ED7D8();
    sub_24F9223A8();
    v54 = v53;
    v27(v16, v13);
    __swift_destroy_boxed_opaque_existential_1(v71);
    v92.origin.x = v51;
    v92.origin.y = v52 + v54;
    v92.size.width = v36;
    v92.size.height = v59;
    CGRectGetMaxY(v92);
    sub_24E615E00((v6 + 32), v71);
  }

  __swift_project_boxed_opaque_existential_1(v71, v72);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v27(v16, v13);
  __swift_destroy_boxed_opaque_existential_1(v71);
  __swift_project_boxed_opaque_existential_1(v6 + 86, v6[89]);
  sub_24F922228();
  __swift_project_boxed_opaque_existential_1(v6 + 81, v6[84]);
  sub_24F922228();
  sub_24E615E00((v6 + 16), v71);
  __swift_project_boxed_opaque_existential_1(v71, v72);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v27(v16, v13);
  __swift_destroy_boxed_opaque_existential_1(v71);
  sub_24E615E00((v6 + 32), v71);
  __swift_project_boxed_opaque_existential_1(v71, v72);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v27(v16, v13);
  __swift_destroy_boxed_opaque_existential_1(v71);
  sub_24E615E00((v6 + 27), v71);
  __swift_project_boxed_opaque_existential_1(v71, v72);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v27(v16, v13);
  __swift_destroy_boxed_opaque_existential_1(v71);
  __swift_project_boxed_opaque_existential_1(v6 + 76, v6[79]);
  sub_24F922228();
  sub_24F922C18();
  return sub_24F922188();
}

uint64_t ArcadeFooterLayout.deinit()
{
  sub_24F1D1384(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 608);
  __swift_destroy_boxed_opaque_existential_1(v0 + 648);
  __swift_destroy_boxed_opaque_existential_1(v0 + 688);
  sub_24E942EA8(v0 + 728);
  return v0;
}

uint64_t ArcadeFooterLayout.__deallocating_deinit()
{
  sub_24F1D1384(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 608);
  __swift_destroy_boxed_opaque_existential_1(v0 + 648);
  __swift_destroy_boxed_opaque_existential_1(v0 + 688);
  sub_24E942EA8(v0 + 728);

  return swift_deallocClassInstance();
}

uint64_t sub_24F1D0D88(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  WitnessTable = swift_getWitnessTable();
  v11.n128_f64[0] = a4;
  v12.n128_f64[0] = a5;

  return MEMORY[0x282180FC8](a1, a2, WitnessTable, a3, v11, v12);
}

uint64_t sub_24F1D0E0C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_24F1CF9B4(v3 + 16, a1);
}

void _s12GameStoreKit18ArcadeFooterLayoutC21estimatedMeasurements7fitting5using2inSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo18UITraitEnvironment_ptFZ_0(uint64_t a1)
{
  v2 = sub_24F92CDB8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F9225E8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F922618();
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a1 + 64) & 1) == 0)
  {
    v27 = v3;
    v28 = v2;
    v30 = v12;
    v31 = v11;
    v16 = *(a1 + 56);
    v17 = *MEMORY[0x277D22788];
    v18 = *(v7 + 104);
    v29 = v9;
    v18(v9, v17, v6, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B3F0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_24F9C5960;
    v20 = MEMORY[0x277D85048];
    v21 = *(a1 + 560);
    v22 = MEMORY[0x277D225F8];
    v33 = MEMORY[0x277D85048];
    v34 = MEMORY[0x277D225F8];
    v32[0] = v21;
    v23 = sub_24F9229A8();
    v24 = MEMORY[0x277D228E0];
    *(v19 + 56) = v23;
    *(v19 + 64) = v24;
    __swift_allocate_boxed_opaque_existential_1((v19 + 32));
    sub_24F9229B8();
    v25 = *(a1 + 8);
    v33 = v20;
    v34 = v22;
    v32[0] = v25;
    *(v19 + 96) = v23;
    *(v19 + 104) = v24;
    __swift_allocate_boxed_opaque_existential_1((v19 + 72));
    sub_24F9229B8();
    sub_24E615E00(a1 + 16, v32);
    if (__OFSUB__(v16, 1))
    {
      __break(1u);
    }

    else
    {
      *(v19 + 136) = v23;
      *(v19 + 144) = v24;
      __swift_allocate_boxed_opaque_existential_1((v19 + 112));
      sub_24F9229B8();
      sub_24E615E00(a1 + 112, v32);
      *(v19 + 176) = v23;
      *(v19 + 184) = v24;
      __swift_allocate_boxed_opaque_existential_1((v19 + 152));
      sub_24F9229B8();
      sub_24E615E00(a1 + 152, v32);
      *(v19 + 216) = v23;
      *(v19 + 224) = v24;
      __swift_allocate_boxed_opaque_existential_1((v19 + 192));
      sub_24F9229B8();
      sub_24E615E00(a1 + 200, v32);
      *(v19 + 256) = v23;
      *(v19 + 264) = v24;
      __swift_allocate_boxed_opaque_existential_1((v19 + 232));
      sub_24F9229B8();
      sub_24E615E00(a1 + 280, v32);
      *(v19 + 296) = v23;
      *(v19 + 304) = v24;
      __swift_allocate_boxed_opaque_existential_1((v19 + 272));
      sub_24F9229B8();
      sub_24E615E00(a1 + 320, v32);
      *(v19 + 336) = v23;
      *(v19 + 344) = v24;
      __swift_allocate_boxed_opaque_existential_1((v19 + 312));
      sub_24F9229B8();
      sub_24E615E00(a1 + 240, v32);
      *(v19 + 376) = v23;
      *(v19 + 384) = v24;
      __swift_allocate_boxed_opaque_existential_1((v19 + 352));
      sub_24F9229B8();
      sub_24E615E00(a1 + 440, v32);
      __swift_project_boxed_opaque_existential_1((a1 + 520), *(a1 + 544));
      sub_24E8ED7D8();
      sub_24F9223A8();
      (*(v27 + 8))(v5, v28);
      *(v19 + 416) = v23;
      *(v19 + 424) = v24;
      __swift_allocate_boxed_opaque_existential_1((v19 + 392));
      sub_24F9229B8();
      sub_24E615E00(a1 + 480, v32);
      *(v19 + 456) = v23;
      *(v19 + 464) = v24;
      __swift_allocate_boxed_opaque_existential_1((v19 + 432));
      sub_24F9229B8();
      v26 = *(a1 + 576);
      v33 = MEMORY[0x277D85048];
      v34 = MEMORY[0x277D225F8];
      v32[0] = v26;
      *(v19 + 496) = v23;
      *(v19 + 504) = v24;
      __swift_allocate_boxed_opaque_existential_1((v19 + 472));
      sub_24F9229B8();
      sub_24F9225F8();
      sub_24F9225D8();
      (*(v30 + 8))(v15, v31);
    }
  }
}

unint64_t sub_24F1D13B8()
{
  result = qword_27F23BE28;
  if (!qword_27F23BE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BE28);
  }

  return result;
}

unint64_t sub_24F1D1410()
{
  result = qword_27F23BE30;
  if (!qword_27F23BE30)
  {
    type metadata accessor for ArcadeFooterLayout();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BE30);
  }

  return result;
}

uint64_t sub_24F1D1488@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_24F1CF9B4(v3 + 16, a2);
}

uint64_t sub_24F1D15AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 592))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24F1D15F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 584) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 592) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 592) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t UpsellGridPresenter.__allocating_init(objectGraph:contentDictionary:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + OBJC_IVAR____TtC12GameStoreKit19UpsellGridPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + OBJC_IVAR____TtC12GameStoreKit19UpsellGridPresenter_contentDictionary) = a2;
  v5 = sub_24EC8415C(a1, 0, 0, 0);

  return v5;
}

uint64_t UpsellGridPresenter.init(objectGraph:contentDictionary:)(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC12GameStoreKit19UpsellGridPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + OBJC_IVAR____TtC12GameStoreKit19UpsellGridPresenter_contentDictionary) = a2;
  v5 = sub_24EC8415C(a1, 0, 0, 0);

  return v5;
}

uint64_t UpsellGridPresenter.view.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC12GameStoreKit19UpsellGridPresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*UpsellGridPresenter.view.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12GameStoreKit19UpsellGridPresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_24EB09F58;
}

uint64_t sub_24F1D199C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a2 + OBJC_IVAR____TtC12GameStoreKit19UpsellGridPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 24))(*(v3 + 16), *(v3 + 24), ObjectType, v5);
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  *(a2 + 32) = 0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v4 + 8);
    v9 = swift_getObjectType();
    (*(*(v8 + 16) + 16))(v9);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24F1D1A88(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  swift_beginAccess();
  *(a2 + 32) = 0;
  v7 = a2 + OBJC_IVAR____TtC12GameStoreKit19UpsellGridPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v8 + 16) + 16))(ObjectType);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v7 + 8);
    v11 = swift_getObjectType();
    v12 = sub_24F91F4A8();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
    v13 = type metadata accessor for PresenterError();
    sub_24F1D2278();
    v14 = swift_allocError();
    *v15 = a1;
    sub_24E911D90(v6, v15 + *(v13 + 20));
    v16 = *(v10 + 16);
    v17 = *(v16 + 24);
    v18 = a1;
    v17(v14, v11, v16);
    swift_unknownObjectRelease();
  }

  if (qword_27F210568 != -1)
  {
    swift_once();
  }

  v19 = sub_24F92AAE8();
  __swift_project_value_buffer(v19, qword_27F39C398);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  swift_getErrorValue();
  v20 = v24;
  v21 = v25;
  v26[3] = v25;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
  (*(*(v21 - 8) + 16))(boxed_opaque_existential_1, v20, v21);
  sub_24F928438();
  sub_24E857CC8(v26);
  sub_24F92A5A8();
}

uint64_t sub_24F1D1E0C()
{
  sub_24E883630(v0 + OBJC_IVAR____TtC12GameStoreKit19UpsellGridPresenter_view);
}

uint64_t UpsellGridPresenter.deinit()
{
  v0 = BasePresenter.deinit();
  sub_24E883630(v0 + OBJC_IVAR____TtC12GameStoreKit19UpsellGridPresenter_view);

  return v0;
}

uint64_t UpsellGridPresenter.__deallocating_deinit()
{
  BasePresenter.deinit();
  v0 = OBJC_IVAR____TtC12GameStoreKit19UpsellGridPresenter_view;

  sub_24E883630(v1 + v0);

  return swift_deallocClassInstance();
}

uint64_t _s12GameStoreKit19UpsellGridPresenterC6update13ignoringCacheySb_tF_0()
{
  swift_beginAccess();
  *(v0 + 32) = 1;
  v1 = v0 + OBJC_IVAR____TtC12GameStoreKit19UpsellGridPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v2 + 16) + 8))(ObjectType);
    swift_unknownObjectRelease();
  }

  type metadata accessor for JSIntentDispatcher();
  v4 = *(v0 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_objectGraph);
  sub_24F928FD8();
  sub_24F92A758();
  sub_24EB4729C(*(v0 + OBJC_IVAR____TtC12GameStoreKit19UpsellGridPresenter_contentDictionary), v4, "GameStoreKit/UpsellGridPresenter.swift", 38, 2);
  v5 = sub_24E74EC40();
  swift_retain_n();
  v6 = sub_24F92BEF8();
  v8[3] = v5;
  v8[4] = MEMORY[0x277D225C0];
  v8[0] = v6;
  sub_24F92A958();

  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_24F1D20C4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC12GameStoreKit19UpsellGridPresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24F1D2120(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC12GameStoreKit19UpsellGridPresenter_view;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t type metadata accessor for UpsellGridPresenter()
{
  result = qword_27F23BE40;
  if (!qword_27F23BE40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24F1D2278()
{
  result = qword_27F22B028;
  if (!qword_27F22B028)
  {
    type metadata accessor for PresenterError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B028);
  }

  return result;
}

uint64_t sub_24F1D22E0(uint64_t result, void *a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return result;
  }

  for (i = (result + 40); ; i += 2)
  {
    v11 = *(i - 1);
    v10 = *i;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *a2;
    v13 = v28;
    *a2 = 0x8000000000000000;
    v14 = sub_24E7728F0(v11, v10);
    v16 = v13[2];
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      break;
    }

    v20 = v15;
    if (v13[3] < v19)
    {
      sub_24E8A3030(v19, isUniquelyReferenced_nonNull_native);
      v14 = sub_24E7728F0(v11, v10);
      if ((v20 & 1) != (v21 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      if (v20)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v26 = v14;
    sub_24E8B347C();
    v14 = v26;
    if (v20)
    {
LABEL_3:
      v5 = v28;
      v6 = v28[7] + (v14 << 6);
      v7 = *(v6 + 48);
      v9 = *v6;
      v8 = *(v6 + 16);
      v27[2] = *(v6 + 32);
      v27[3] = v7;
      v27[0] = v9;
      v27[1] = v8;
      *v6 = 4;
      *(v6 + 8) = 0u;
      *(v6 + 24) = 0u;
      *(v6 + 40) = 0;
      *(v6 + 48) = xmmword_24F966510;
      sub_24E88D2AC(v27);
      goto LABEL_4;
    }

LABEL_11:
    v5 = v28;
    v28[(v14 >> 6) + 8] |= 1 << v14;
    v22 = (v5[6] + 16 * v14);
    *v22 = v11;
    v22[1] = v10;
    v23 = v5[7] + (v14 << 6);
    *v23 = 4;
    *(v23 + 40) = 0;
    *(v23 + 24) = 0u;
    *(v23 + 8) = 0u;
    *(v23 + 48) = xmmword_24F966510;
    v24 = v5[2];
    v18 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (v18)
    {
      goto LABEL_17;
    }

    v5[2] = v25;

LABEL_4:
    *a2 = v5;

    if (!--v2)
    {
      return result;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_24F92CF88();
  __break(1u);
  return result;
}

uint64_t sub_24F1D2514(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_24F1D2574(uint64_t *a1))(uint64_t, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_24F1D2608;
}

uint64_t DefaultAppStateDataSource.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t DefaultAppStateDataSource.init()()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

double sub_24F1D2678@<D0>(uint64_t a1@<X8>)
{
  *a1 = 4;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  result = -0.0;
  *(a1 + 48) = xmmword_24F966510;
  return result;
}

uint64_t sub_24F1D26A0(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  sub_24F1D22E0(a1, &v2);
  return v2;
}

uint64_t DefaultAppStateDataSource.__deallocating_deinit()
{
  sub_24E883630(v0 + 16);

  return swift_deallocClassInstance();
}

void (*sub_24F1D2738(uint64_t *a1))(uint64_t, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_24F1D2A50;
}

uint64_t sub_24F1D27CC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24F1D281C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

char *ClearSearchHistoryAction.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  v12 = *(v9 + 16);
  v16 = a1;
  v12(v11, a1, v8);
  (*(v5 + 16))(v7, a2, v4);
  v13 = Action.init(deserializing:using:)(v11, v7);
  (*(v5 + 8))(a2, v4);
  (*(v9 + 8))(v16, v8);
  return v13;
}

char *ClearSearchHistoryAction.__allocating_init(id:title:artwork:presentationStyle:actionMetrics:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = a4;
  v33 = a5;
  v30 = a2;
  v31 = a3;
  v10 = sub_24F91F6B8();
  v27 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  v29 = a1;
  sub_24E60169C(a1, v39, &qword_27F235830);
  v14 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v15 = sub_24F928AD8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 16);
  v28 = a6;
  v17(&v13[v14], a6, v15);
  sub_24E60169C(a7, &v13[OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics], &qword_27F213E68);
  v18 = &v13[OBJC_IVAR____TtC12GameStoreKit6Action_clickSender];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v19 = &v13[OBJC_IVAR____TtC12GameStoreKit6Action_id];
  sub_24E60169C(v39, &v36, &qword_27F235830);
  if (*(&v37 + 1))
  {
    v20 = v37;
    *v19 = v36;
    *(v19 + 1) = v20;
    *(v19 + 4) = v38;
  }

  else
  {
    sub_24F91F6A8();
    v21 = sub_24F91F668();
    v23 = v22;
    (*(v27 + 8))(v12, v10);
    v34 = v21;
    v35 = v23;
    sub_24F92C7F8();
    sub_24E601704(&v36, &qword_27F235830);
  }

  sub_24E601704(a7, &qword_27F213E68);
  (*(v16 + 8))(v28, v15);
  sub_24E601704(v29, &qword_27F235830);
  sub_24E601704(v39, &qword_27F235830);
  v24 = v31;
  *(v13 + 2) = v30;
  *(v13 + 3) = v24;
  v25 = v33;
  *(v13 + 4) = v32;
  *(v13 + 5) = v25;
  return v13;
}

void *ClearSearchHistoryAction.init(id:title:artwork:presentationStyle:actionMetrics:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v38 = a7;
  v42 = a4;
  v43 = a5;
  v41 = a3;
  v40 = a2;
  v37 = sub_24F91F6B8();
  v36 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v35 - v14;
  v16 = sub_24F928AD8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1;
  v20 = a1;
  v21 = a6;
  v22 = v38;
  sub_24E60169C(v20, v52, &qword_27F235830);
  (*(v17 + 16))(v19, v21, v16);
  sub_24E60169C(v22, v15, &qword_27F213E68);
  v23 = (v8 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v23 = 0u;
  v23[1] = 0u;
  sub_24E60169C(v52, &v46, &qword_27F235830);
  if (*(&v47 + 1))
  {
    v49 = v46;
    v50 = v47;
    v51 = v48;
  }

  else
  {
    sub_24F91F6A8();
    v24 = v22;
    v25 = sub_24F91F668();
    v26 = v15;
    v28 = v27;
    (*(v36 + 8))(v12, v37);
    v44 = v25;
    v45 = v28;
    v22 = v24;
    v15 = v26;
    sub_24F92C7F8();
    sub_24E601704(&v46, &qword_27F235830);
  }

  sub_24E601704(v22, &qword_27F213E68);
  (*(v17 + 8))(v21, v16);
  sub_24E601704(v39, &qword_27F235830);
  sub_24E601704(v52, &qword_27F235830);
  v29 = v8 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v29 + 4) = v51;
  v30 = v50;
  *v29 = v49;
  *(v29 + 1) = v30;
  sub_24E65E0D4(v15, v8 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v31 = v41;
  v32 = v42;
  v8[2] = v40;
  v8[3] = v31;
  v33 = v43;
  v8[4] = v32;
  v8[5] = v33;
  (*(v17 + 32))(v8 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v19, v16);
  return v8;
}

char *ClearSearchHistoryAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v9 + 16);
  v17 = a1;
  v13(v12, a1, v8, v10);
  (*(v5 + 16))(v7, a2, v4);
  v14 = Action.init(deserializing:using:)(v12, v7);
  (*(v5 + 8))(a2, v4);
  (*(v9 + 8))(v17, v8);
  return v14;
}

uint64_t ClearSearchHistoryAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);
  return v0;
}

uint64_t ClearSearchHistoryAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ClearSearchHistoryAction()
{
  result = qword_27F23BE50;
  if (!qword_27F23BE50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

GameStoreKit::AppPlatform_optional __swiftcall AppPlatform.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AppPlatform.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x656E6F6870;
  v3 = 6513005;
  if (v1 != 5)
  {
    v3 = 0x6E6F69736976;
  }

  v4 = 0x6863746177;
  if (v1 != 3)
  {
    v4 = 30324;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 6578544;
  if (v1 != 1)
  {
    v5 = 0x736567617373656DLL;
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

uint64_t sub_24F1D3824()
{
  sub_24F92B218();
}

void sub_24F1D3920(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x656E6F6870;
  v5 = 0xE300000000000000;
  v6 = 6513005;
  if (v2 != 5)
  {
    v6 = 0x6E6F69736976;
    v5 = 0xE600000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6863746177;
  if (v2 != 3)
  {
    v8 = 30324;
    v7 = 0xE200000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE300000000000000;
  v10 = 6578544;
  if (v2 != 1)
  {
    v10 = 0x736567617373656DLL;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t SupplementaryAppPlatform.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_24F92CB88();

  *a1 = v2 != 0;
  return result;
}

unint64_t sub_24F1D3AFC()
{
  result = qword_27F23BE60;
  if (!qword_27F23BE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BE60);
  }

  return result;
}

unint64_t sub_24F1D3B54()
{
  result = qword_27F23BE68;
  if (!qword_27F23BE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BE68);
  }

  return result;
}

uint64_t sub_24F1D3BA8()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24F1D3C14()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24F1D3C64@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_24F92CB88();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_24F1D3DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_24E60169C(a3, v22 - v9, &unk_27F21B570);
  v11 = sub_24F92B858();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_24E601704(v10, &unk_27F21B570);
  }

  else
  {
    sub_24F92B848();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_24F92B778();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_24F92B1B8() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_24E601704(a3, &unk_27F21B570);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24E601704(a3, &unk_27F21B570);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_24F1D4078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v24[0] = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v24 - v11;
  sub_24E60169C(a3, v24 - v11, &unk_27F21B570);
  v13 = sub_24F92B858();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_24E601704(v12, &unk_27F21B570);
  }

  else
  {
    sub_24F92B848();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_24F92B778();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_24F92B1B8() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(a6);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_24E601704(a3, &unk_27F21B570);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24E601704(a3, &unk_27F21B570);
  __swift_instantiateConcreteTypeFromMangledNameV2(a6);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_24F1D4328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_24E60169C(a3, v22 - v9, &unk_27F21B570);
  v11 = sub_24F92B858();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_24E601704(v10, &unk_27F21B570);
  }

  else
  {
    sub_24F92B848();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_24F92B778();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = sub_24F92B1B8() + 32;
      sub_24E69A5C4(0, &qword_27F23BEA8);

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_24E601704(a3, &unk_27F21B570);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24E601704(a3, &unk_27F21B570);
  sub_24E69A5C4(0, &qword_27F23BEA8);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_24F1D4600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_24E60169C(a3, v22 - v9, &unk_27F21B570);
  v11 = sub_24F92B858();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_24E601704(v10, &unk_27F21B570);
  }

  else
  {
    sub_24F92B848();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_24F92B778();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = sub_24F92B1B8() + 32;
      sub_24F928AE8();

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_24E601704(a3, &unk_27F21B570);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24E601704(a3, &unk_27F21B570);
  sub_24F928AE8();
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

BOOL sub_24F1D495C(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v8 = 0;
  v9 = *(a2 + 16);
  do
  {
    v10 = v8;
    if (v9 == v8)
    {
      break;
    }

    a3(0);
    ++v8;
    sub_24F1D9EF4(a4, a5);
  }

  while ((sub_24F92AFF8() & 1) == 0);
  return v9 != v10;
}

BOOL sub_24F1D4A64(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for VirtualCall();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0;
  v8 = *(a2 + 16);
  do
  {
    v9 = v7;
    if (v8 == v7)
    {
      break;
    }

    sub_24F002CA0(a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v7++, v6);
    v10 = _s12GameStoreKit11VirtualCallV2eeoiySbAC_ACtFZ_0();
    sub_24F002D04(v6);
  }

  while ((v10 & 1) == 0);
  return v8 != v9;
}

uint64_t OverlayCallCenter.callInvitesCount.getter()
{
  swift_getKeyPath();
  sub_24F1D9EF4(&qword_27F2261C0, type metadata accessor for OverlayCallCenter);
  sub_24F91FD88();

  return *(v0 + 40);
}

uint64_t OverlayCallCenter.participantCount.getter()
{
  swift_getKeyPath();
  sub_24F1D9EF4(&qword_27F2261C0, type metadata accessor for OverlayCallCenter);
  sub_24F91FD88();

  return *(v0 + 48);
}

uint64_t sub_24F1D4D14()
{
  swift_getKeyPath();
  sub_24F1D9EF4(&qword_27F2261C0, type metadata accessor for OverlayCallCenter);
  sub_24F91FD88();

  swift_beginAccess();
}

uint64_t sub_24F1D4DE4()
{
  type metadata accessor for OverlayCallCenter();
  v0 = swift_allocObject();
  result = sub_24F1D50B4();
  off_27F23BE70 = v0;
  return result;
}

uint64_t static OverlayCallCenter.shared.getter()
{
  if (qword_27F210FD0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_24F1D4E80@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F1D9EF4(&qword_27F2261C0, type metadata accessor for OverlayCallCenter);
  sub_24F91FD88();

  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_24F1D4F6C(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_24EA1878C(v3, a1);

  if (v4)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F1D9EF4(&qword_27F2261C0, type metadata accessor for OverlayCallCenter);
    sub_24F91FD78();
  }
}

uint64_t sub_24F1D50B4()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = MEMORY[0x277D84F90];
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  sub_24F91FDB8();
  v3 = objc_opt_self();
  v4 = [v3 defaultCenter];
  [v4 addObserver:v0 selector:sel_callCenterCallStatusChangedWithNotification_ name:*MEMORY[0x277D6EFF0] object:0];

  v5 = [v3 defaultCenter];
  [v5 addObserver:v0 selector:sel_callCenterCallStatusChangedWithNotification_ name:*MEMORY[0x277D6F038] object:0];

  return v0;
}

uint64_t sub_24F1D51BC(uint64_t result)
{
  if (*(v1 + 32) == (result & 1))
  {
    *(v1 + 32) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F1D9EF4(&qword_27F2261C0, type metadata accessor for OverlayCallCenter);
    sub_24F91FD78();
  }

  return result;
}

uint64_t sub_24F1D52CC(uint64_t result)
{
  if (*(v1 + 40) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F1D9EF4(&qword_27F2261C0, type metadata accessor for OverlayCallCenter);
    sub_24F91FD78();
  }

  return result;
}

uint64_t sub_24F1D53D0(uint64_t result)
{
  if (*(v1 + 48) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F1D9EF4(&qword_27F2261C0, type metadata accessor for OverlayCallCenter);
    sub_24F91FD78();
  }

  return result;
}

uint64_t OverlayCallCenter.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v2 = OBJC_IVAR____TtC12GameStoreKit17OverlayCallCenter___observationRegistrar;
  v3 = sub_24F91FDC8();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t OverlayCallCenter.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v2 = OBJC_IVAR____TtC12GameStoreKit17OverlayCallCenter___observationRegistrar;
  v3 = sub_24F91FDC8();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocClassInstance();
}

uint64_t sub_24F1D5654()
{
  if ([*(v0 + 16) hasCurrentCalls])
  {
    v1 = 1;
  }

  else
  {
    swift_getKeyPath();
    sub_24F1D9EF4(&qword_27F2261C0, type metadata accessor for OverlayCallCenter);
    sub_24F91FD88();

    swift_beginAccess();
    v1 = *(*(v0 + 24) + 16) != 0;
  }

  if (qword_27F2113B0 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E760);

  v3 = sub_24F9220B8();
  v4 = sub_24F92BDA8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109376;
    swift_getKeyPath();
    sub_24F1D9EF4(&qword_27F2261C0, type metadata accessor for OverlayCallCenter);
    sub_24F91FD88();

    *(v5 + 4) = *(v0 + 32);

    *(v5 + 8) = 1024;
    *(v5 + 10) = v1;
    _os_log_impl(&dword_24E5DD000, v3, v4, "Updating hasActiveCalls from %{BOOL}d to %{BOOL}d", v5, 0xEu);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  else
  {
  }

  if (v1 == *(v0 + 32))
  {
    *(v0 + 32) = v1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F1D9EF4(&qword_27F2261C0, type metadata accessor for OverlayCallCenter);
    sub_24F91FD78();
  }

  swift_getKeyPath();
  sub_24F1D9EF4(&qword_27F2261C0, type metadata accessor for OverlayCallCenter);
  sub_24F91FD88();

  if ((*(v0 + 32) & 1) == 0)
  {
    if (*(v0 + 40))
    {
      v8 = swift_getKeyPath();
      MEMORY[0x28223BE20](v8);
      sub_24F91FD78();
    }

    if (*(v0 + 48))
    {
      v9 = swift_getKeyPath();
      MEMORY[0x28223BE20](v9);
      sub_24F91FD78();
    }
  }

  return result;
}

uint64_t OverlayCallCenter.hasActiveCalls.getter()
{
  swift_getKeyPath();
  sub_24F1D9EF4(&qword_27F2261C0, type metadata accessor for OverlayCallCenter);
  sub_24F91FD88();

  return *(v0 + 32);
}

uint64_t sub_24F1D5B7C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  if (qword_27F2113B0 != -1)
  {
    swift_once();
  }

  v7 = sub_24F9220D8();
  __swift_project_value_buffer(v7, qword_27F39E760);
  v8 = sub_24F9220B8();
  v9 = sub_24F92BDA8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_24E5DD000, v8, v9, "TUCallCenter call status changed notification", v10, 2u);
    MEMORY[0x2530542D0](v10, -1, -1);
  }

  v11 = sub_24F92B858();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  sub_24F92B7F8();
  v12 = a1;

  v13 = sub_24F92B7E8();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v12;
  v14[5] = v2;
  sub_24EA998B8(0, 0, v6, &unk_24F9D3CD8, v14);
}

uint64_t sub_24F1D5D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v5[21] = *(type metadata accessor for VirtualCall() - 8);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  sub_24F92B7F8();
  v5[25] = sub_24F92B7E8();
  v7 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F1D5E70, v7, v6);
}

uint64_t sub_24F1D5E70()
{
  v48 = v0;
  if ([*(v0 + 152) object])
  {
    sub_24F92C648();
    swift_unknownObjectRelease();
  }

  else
  {
    v46 = 0u;
    v47 = 0u;
  }

  v1 = v47;
  *(v0 + 16) = v46;
  *(v0 + 32) = v1;
  sub_24E60169C(v0 + 16, v0 + 48, &qword_27F2129B0);
  if (!*(v0 + 72))
  {

    sub_24E601704(v0 + 48, &qword_27F2129B0);
    goto LABEL_28;
  }

  sub_24E69A5C4(0, &qword_27F2376C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  v2 = *(v0 + 128);
  if (qword_27F2113B0 != -1)
  {
LABEL_32:
    swift_once();
  }

  v3 = sub_24F9220D8();
  __swift_project_value_buffer(v3, qword_27F39E760);
  v4 = v2;
  v5 = sub_24F9220B8();
  v6 = sub_24F92BDA8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&v46 = v8;
    *v7 = 136315394;
    v9 = [v4 callUUID];
    v10 = sub_24F92B0D8();
    v12 = v11;

    v13 = sub_24E7620D4(v10, v12, &v46);

    *(v7 + 4) = v13;
    *(v7 + 12) = 1024;
    LODWORD(v13) = [v4 status];

    *(v7 + 14) = v13;
    _os_log_impl(&dword_24E5DD000, v5, v6, "notification call %s has %d status", v7, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  else
  {
  }

  v14 = sub_24F9220B8();
  v15 = sub_24F92BDA8();
  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 160);
  if (v16)
  {
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    swift_getKeyPath();
    *(v0 + 144) = v17;
    sub_24F1D9EF4(&qword_27F2261C0, type metadata accessor for OverlayCallCenter);
    sub_24F91FD88();

    swift_beginAccess();
    *(v18 + 4) = *(*(v17 + 24) + 16);

    _os_log_impl(&dword_24E5DD000, v14, v15, "%ld virtualCall(s)", v18, 0xCu);
    MEMORY[0x2530542D0](v18, -1, -1);
  }

  else
  {
  }

  if ([v4 status] != 3 && objc_msgSend(v4, sel_status) != 4)
  {

LABEL_10:

    goto LABEL_28;
  }

  v19 = *(v0 + 160);
  swift_getKeyPath();
  *(v0 + 136) = v19;
  sub_24F1D9EF4(&qword_27F2261C0, type metadata accessor for OverlayCallCenter);
  sub_24F91FD88();

  swift_beginAccess();
  v2 = *(v19 + 24);
  v20 = v2[2];

  if (v20)
  {
    v21 = 0;
    v22 = *(v0 + 168);
    while (1)
    {
      if (v21 >= v2[2])
      {
        __break(1u);
        goto LABEL_32;
      }

      v23 = *(v0 + 184);
      sub_24F002CA0(v2 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v21, v23);
      if (sub_24F1D6634(v23, v4))
      {
        break;
      }

      ++v21;
      sub_24F002D04(*(v0 + 184));
      if (v20 == v21)
      {
        goto LABEL_22;
      }
    }

    v24 = *(v0 + 192);
    v26 = *(v0 + 176);
    v25 = *(v0 + 184);

    sub_24F1D9788(v25, v24);
    sub_24F002CA0(v24, v26);
    v27 = v4;
    v28 = sub_24F9220B8();
    v29 = sub_24F92BDA8();

    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 176);
    if (v30)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *&v46 = v33;
      *v32 = 136315394;
      sub_24F91F6B8();
      sub_24F1D9EF4(&qword_27F21E4F8, MEMORY[0x277CC95F0]);
      v34 = sub_24F92CD88();
      v36 = v35;
      sub_24F002D04(v31);
      v37 = sub_24E7620D4(v34, v36, &v46);

      *(v32 + 4) = v37;
      *(v32 + 12) = 2080;
      v38 = [v27 callUUID];
      v39 = sub_24F92B0D8();
      v41 = v40;

      v42 = sub_24E7620D4(v39, v41, &v46);

      *(v32 + 14) = v42;
      _os_log_impl(&dword_24E5DD000, v28, v29, "virtual call %s matches call %s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530542D0](v33, -1, -1);
      MEMORY[0x2530542D0](v32, -1, -1);
    }

    else
    {

      sub_24F002D04(v31);
    }

    v43 = *(v0 + 192);
    sub_24F1D6950(v43, v27);

    sub_24F002D04(v43);
  }

  else
  {
LABEL_22:
  }

LABEL_28:
  sub_24F1D5654();
  sub_24E601704(v0 + 16, &qword_27F2129B0);

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_24F1D6634(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for VirtualCall();
  *&v5 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (a1 + *(v8 + 32));
  v10 = *v9;
  v11 = v9[1];
  v12 = [a2 provider];
  v13 = [v12 identifier];

  v14 = sub_24F92B0D8();
  v16 = v15;

  if (v10 == v14 && v11 == v16)
  {

    return 1;
  }

  else
  {
    v18 = sub_24F92CE08();

    if (v18)
    {
      return 1;
    }

    else
    {
      if (qword_27F2113B0 != -1)
      {
        swift_once();
      }

      v20 = sub_24F9220D8();
      __swift_project_value_buffer(v20, qword_27F39E760);
      sub_24F002CA0(a1, v7);
      v21 = a2;
      v22 = sub_24F9220B8();
      v23 = sub_24F92BDA8();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v37 = v25;
        *v24 = 136315394;
        v26 = &v7[*(v4 + 32)];
        v27 = *v26;
        v28 = v26[1];

        sub_24F002D04(v7);
        v29 = sub_24E7620D4(v27, v28, &v37);

        *(v24 + 4) = v29;
        *(v24 + 12) = 2080;
        v30 = [v21 provider];
        v31 = [v30 identifier];

        v32 = sub_24F92B0D8();
        v34 = v33;

        v35 = sub_24E7620D4(v32, v34, &v37);

        *(v24 + 14) = v35;
        _os_log_impl(&dword_24E5DD000, v22, v23, "virtual call provider didn't match %s != %s", v24, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2530542D0](v25, -1, -1);
        MEMORY[0x2530542D0](v24, -1, -1);
      }

      else
      {

        sub_24F002D04(v7);
      }

      return 0;
    }
  }
}

void sub_24F1D6950(uint64_t a1, void *a2)
{
  v3 = v2;
  v51 = a2;
  v5 = type metadata accessor for VirtualCall();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v50 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = v50 - v13;
  swift_getKeyPath();
  v15 = OBJC_IVAR____TtC12GameStoreKit17OverlayCallCenter___observationRegistrar;
  v52[3] = v3;
  v50[1] = sub_24F1D9EF4(&qword_27F2261C0, type metadata accessor for OverlayCallCenter);
  v50[2] = v15;
  sub_24F91FD88();

  swift_beginAccess();
  v16 = *(v3 + 24);
  v17 = *(v16 + 16);

  if (v17)
  {
    v18 = 0;
    while (1)
    {
      if (v18 >= *(v16 + 16))
      {
        __break(1u);
        goto LABEL_17;
      }

      sub_24F002CA0(v16 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v18, v14);
      v19 = _s12GameStoreKit11VirtualCallV2eeoiySbAC_ACtFZ_0();
      sub_24F002D04(v14);
      if (v19)
      {
        break;
      }

      if (v17 == ++v18)
      {
        goto LABEL_6;
      }
    }

    if (qword_27F2113B0 != -1)
    {
      swift_once();
    }

    v35 = sub_24F9220D8();
    __swift_project_value_buffer(v35, qword_27F39E760);
    sub_24F002CA0(a1, v11);
    v36 = v51;
    v37 = sub_24F9220B8();
    v38 = sub_24F92BDA8();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v52[0] = v51;
      *v39 = 136315394;
      sub_24F91F6B8();
      sub_24F1D9EF4(&qword_27F21E4F8, MEMORY[0x277CC95F0]);
      v40 = sub_24F92CD88();
      v42 = v41;
      sub_24F002D04(v11);
      v43 = sub_24E7620D4(v40, v42, v52);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2080;
      v44 = [v36 callUUID];
      v45 = sub_24F92B0D8();
      v47 = v46;

      v48 = sub_24E7620D4(v45, v47, v52);

      *(v39 + 14) = v48;
      _os_log_impl(&dword_24E5DD000, v37, v38, "Upgrading virtual call %s with TUCall %s", v39, 0x16u);
      v49 = v51;
      swift_arrayDestroy();
      MEMORY[0x2530542D0](v49, -1, -1);
      MEMORY[0x2530542D0](v39, -1, -1);
    }

    else
    {

      sub_24F002D04(v11);
    }

    swift_getKeyPath();
    v52[0] = v3;
    sub_24F91FD88();

    v52[0] = v3;
    swift_getKeyPath();
    sub_24F91FDA8();

    swift_beginAccess();
    sub_24EA0E98C(v18, v14);
    sub_24F002D04(v14);
    swift_endAccess();
    v52[0] = v3;
    swift_getKeyPath();
    sub_24F91FD98();

    sub_24F1D5654();
  }

  else
  {
LABEL_6:

    if (qword_27F2113B0 != -1)
    {
LABEL_17:
      swift_once();
    }

    v20 = sub_24F9220D8();
    __swift_project_value_buffer(v20, qword_27F39E760);
    sub_24F002CA0(a1, v8);
    v21 = v51;
    v22 = sub_24F9220B8();
    v23 = sub_24F92BDA8();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v52[0] = v25;
      *v24 = 136315394;
      sub_24F91F6B8();
      sub_24F1D9EF4(&qword_27F21E4F8, MEMORY[0x277CC95F0]);
      v26 = sub_24F92CD88();
      v28 = v27;
      sub_24F002D04(v8);
      v29 = sub_24E7620D4(v26, v28, v52);

      *(v24 + 4) = v29;
      *(v24 + 12) = 2080;
      v30 = [v21 callUUID];
      v31 = sub_24F92B0D8();
      v33 = v32;

      v34 = sub_24E7620D4(v31, v33, v52);

      *(v24 + 14) = v34;
      _os_log_impl(&dword_24E5DD000, v22, v23, "Unable to upgrade virtual call %s with TUCall %s, as it isn't registered", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530542D0](v25, -1, -1);
      MEMORY[0x2530542D0](v24, -1, -1);
    }

    else
    {

      sub_24F002D04(v8);
    }
  }
}

uint64_t sub_24F1D7064@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F1D9EF4(&qword_27F2261C0, type metadata accessor for OverlayCallCenter);
  sub_24F91FD88();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_24F1D7134@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F1D9EF4(&qword_27F2261C0, type metadata accessor for OverlayCallCenter);
  sub_24F91FD88();

  *a2 = *(v3 + 40);
  return result;
}

uint64_t type metadata accessor for OverlayCallCenter()
{
  result = qword_27F23BE80;
  if (!qword_27F23BE80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F1D727C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F1D9EF4(&qword_27F2261C0, type metadata accessor for OverlayCallCenter);
  sub_24F91FD88();

  *a2 = *(v3 + 48);
  return result;
}

void OverlayCallCenter.addVirtualCall(_:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v59 - v9;
  v11 = type metadata accessor for VirtualCall();
  v65 = *(v11 - 8);
  v12 = *(v65 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v66 = &v59 - v15;
  MEMORY[0x28223BE20](v16);
  v68 = &v59 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v59 - v19;
  swift_getKeyPath();
  v21 = OBJC_IVAR____TtC12GameStoreKit17OverlayCallCenter___observationRegistrar;
  v69[3] = v4;
  v22 = sub_24F1D9EF4(&qword_27F2261C0, type metadata accessor for OverlayCallCenter);
  v64 = v21;
  v67 = v22;
  sub_24F91FD88();

  swift_beginAccess();
  v23 = *(v4 + 24);

  v24 = sub_24F1D4A64(a1, v23);

  if (v24)
  {
    if (qword_27F2113B0 != -1)
    {
      swift_once();
    }

    v25 = sub_24F9220D8();
    __swift_project_value_buffer(v25, qword_27F39E760);
    sub_24F002CA0(a1, v13);
    v26 = sub_24F9220B8();
    v27 = sub_24F92BDA8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v69[0] = v29;
      *v28 = 136315138;
      sub_24F91F6B8();
      sub_24F1D9EF4(&qword_27F21E4F8, MEMORY[0x277CC95F0]);
      v30 = sub_24F92CD88();
      v32 = v31;
      sub_24F002D04(v13);
      v33 = sub_24E7620D4(v30, v32, v69);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_24E5DD000, v26, v27, "Unable to add virtual call %s, as it's already added", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x2530542D0](v29, -1, -1);
      MEMORY[0x2530542D0](v28, -1, -1);
    }

    else
    {

      sub_24F002D04(v13);
    }
  }

  else
  {
    v62 = v10;
    if (qword_27F2113B0 != -1)
    {
      swift_once();
    }

    v34 = sub_24F9220D8();
    __swift_project_value_buffer(v34, qword_27F39E760);
    sub_24F002CA0(a1, v20);
    v35 = sub_24F9220B8();
    v36 = sub_24F92BDA8();
    v37 = os_log_type_enabled(v35, v36);
    v63 = a3;
    if (v37)
    {
      v38 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v69[0] = v60;
      *v38 = 136315394;
      sub_24F91F6B8();
      v61 = a1;
      sub_24F1D9EF4(&qword_27F21E4F8, MEMORY[0x277CC95F0]);
      v39 = sub_24F92CD88();
      v41 = v40;
      sub_24F002D04(v20);
      v42 = sub_24E7620D4(v39, v41, v69);

      *(v38 + 4) = v42;
      *(v38 + 12) = 2080;
      a1 = v61;
      v43 = sub_24F92D188();
      v45 = sub_24E7620D4(v43, v44, v69);

      *(v38 + 14) = v45;
      _os_log_impl(&dword_24E5DD000, v35, v36, "Adding virtual call %s with timeout %s", v38, 0x16u);
      v46 = v60;
      swift_arrayDestroy();
      MEMORY[0x2530542D0](v46, -1, -1);
      MEMORY[0x2530542D0](v38, -1, -1);
    }

    else
    {

      sub_24F002D04(v20);
    }

    sub_24F002CA0(a1, v68);
    swift_getKeyPath();
    v69[0] = v4;
    sub_24F91FD88();

    v69[0] = v4;
    swift_getKeyPath();
    sub_24F91FDA8();

    swift_beginAccess();
    v47 = *(v4 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + 24) = v47;
    v49 = v62;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v47 = sub_24E61A00C(0, v47[2] + 1, 1, v47);
      *(v4 + 24) = v47;
    }

    v51 = v47[2];
    v50 = v47[3];
    if (v51 >= v50 >> 1)
    {
      v47 = sub_24E61A00C(v50 > 1, v51 + 1, 1, v47);
    }

    v47[2] = v51 + 1;
    v52 = *(v65 + 80);
    sub_24F1D9788(v68, v47 + ((v52 + 32) & ~v52) + *(v65 + 72) * v51);
    *(v4 + 24) = v47;
    swift_endAccess();
    v69[0] = v4;
    swift_getKeyPath();
    sub_24F91FD98();

    v53 = sub_24F92B858();
    (*(*(v53 - 8) + 56))(v49, 1, 1, v53);
    v54 = v66;
    sub_24F002CA0(a1, v66);
    sub_24F92B7F8();

    v55 = sub_24F92B7E8();
    v56 = swift_allocObject();
    v57 = MEMORY[0x277D85700];
    v56[2] = v55;
    v56[3] = v57;
    v58 = v63;
    v56[4] = a2;
    v56[5] = v58;
    v56[6] = v4;
    sub_24F1D9788(v54, v56 + ((v52 + 56) & ~v52));
    sub_24F1D3DA4(0, 0, v49, &unk_24F9D3C20, v56);

    sub_24F1D5654();
  }
}

uint64_t sub_24F1D7BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  type metadata accessor for VirtualCall();
  v7[10] = swift_task_alloc();
  v8 = sub_24F92CA08();
  v7[11] = v8;
  v7[12] = *(v8 - 8);
  v7[13] = swift_task_alloc();
  sub_24F92B7F8();
  v7[14] = sub_24F92B7E8();
  v10 = sub_24F92B778();
  v7[15] = v10;
  v7[16] = v9;

  return MEMORY[0x2822009F8](sub_24F1D7CFC, v10, v9);
}

uint64_t sub_24F1D7CFC()
{
  sub_24F92CFB8();
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_24F1D7DBC;
  v3 = v0[6];
  v2 = v0[7];

  return sub_24E70C87C(v3, v2, 0, 0, 1);
}

uint64_t sub_24F1D7DBC()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  *(*v1 + 144) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 128);
  v7 = *(v2 + 120);
  if (v0)
  {
    v8 = sub_24F1D8260;
  }

  else
  {
    v8 = sub_24F1D7F54;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_24F1D7F54()
{
  v23 = v0;
  v2 = v0[8];
  v1 = v0[9];

  swift_getKeyPath();
  v0[5] = v2;
  sub_24F1D9EF4(&qword_27F2261C0, type metadata accessor for OverlayCallCenter);
  sub_24F91FD88();

  swift_beginAccess();
  v3 = *(v2 + 24);

  LOBYTE(v1) = sub_24F1D4A64(v1, v3);

  if (v1)
  {
    if (qword_27F2113B0 != -1)
    {
      swift_once();
    }

    v4 = v0[9];
    v5 = v0[10];
    v6 = sub_24F9220D8();
    __swift_project_value_buffer(v6, qword_27F39E760);
    sub_24F002CA0(v4, v5);
    v7 = sub_24F9220B8();
    v8 = sub_24F92BDA8();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[10];
    if (v9)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      *v11 = 136315138;
      sub_24F91F6B8();
      sub_24F1D9EF4(&qword_27F21E4F8, MEMORY[0x277CC95F0]);
      v13 = sub_24F92CD88();
      v15 = v14;
      sub_24F002D04(v10);
      v16 = sub_24E7620D4(v13, v15, &v22);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_24E5DD000, v7, v8, "Virtual call %s timed out", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x2530542D0](v12, -1, -1);
      MEMORY[0x2530542D0](v11, -1, -1);
    }

    else
    {

      sub_24F002D04(v10);
    }

    v17 = v0[9];
    sub_24F1D9EA0();
    v18 = swift_allocError();
    *v19 = 0;
    v19[1] = 0;
    OverlayCallCenter.virtualCallFailed(_:withError:)(v17, v18);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_24F1D8260()
{

  v1 = *(v0 + 8);

  return v1();
}

void OverlayCallCenter.virtualCallFailed(_:withError:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v94 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v5 - 8);
  v87 = &v82 - v6;
  v90 = type metadata accessor for VirtualCall();
  v7 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v92 = (&v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v86 = &v82 - v10;
  MEMORY[0x28223BE20](v11);
  v88 = &v82 - v12;
  v85 = v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v82 - v15;
  swift_getKeyPath();
  v17 = OBJC_IVAR____TtC12GameStoreKit17OverlayCallCenter___observationRegistrar;
  v95[3] = v3;
  v18 = sub_24F1D9EF4(&qword_27F2261C0, type metadata accessor for OverlayCallCenter);
  v91 = v17;
  v93 = v18;
  sub_24F91FD88();

  swift_beginAccess();
  v89 = v3;
  v19 = *(v3 + 24);
  v20 = *(v19 + 16);

  if (v20)
  {
    v21 = 0;
    while (1)
    {
      if (v21 >= *(v19 + 16))
      {
        __break(1u);
        goto LABEL_28;
      }

      v22 = *(v7 + 80);
      v23 = (v22 + 32) & ~v22;
      v24 = *(v7 + 72) * v21;
      sub_24F002CA0(v19 + v23 + v24, v16);
      v25 = _s12GameStoreKit11VirtualCallV2eeoiySbAC_ACtFZ_0();
      sub_24F002D04(v16);
      if (v25)
      {
        break;
      }

      if (v20 == ++v21)
      {
        goto LABEL_6;
      }
    }

    if (qword_27F2113B0 != -1)
    {
      swift_once();
    }

    v43 = sub_24F9220D8();
    __swift_project_value_buffer(v43, qword_27F39E760);
    v44 = v88;
    sub_24F002CA0(a1, v88);
    v45 = v94;
    v46 = v94;
    v47 = sub_24F9220B8();
    v48 = sub_24F92BDA8();

    if (os_log_type_enabled(v47, v48))
    {
      v84 = v48;
      v92 = v47;
      v49 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v95[0] = v83;
      *v49 = 136315394;
      sub_24F91F6B8();
      sub_24F1D9EF4(&qword_27F21E4F8, MEMORY[0x277CC95F0]);
      v50 = sub_24F92CD88();
      v52 = v51;
      sub_24F002D04(v44);
      v53 = sub_24E7620D4(v50, v52, v95);

      *(v49 + 4) = v53;
      *(v49 + 12) = 2112;
      if (v45)
      {
        v54 = v45;
        v55 = _swift_stdlib_bridgeErrorToNSError();
        v56 = v55;
      }

      else
      {
        v55 = 0;
        v56 = 0;
      }

      v57 = v92;
      v58 = v84;
      *(v49 + 14) = v55;
      v59 = v82;
      *v82 = v56;
      _os_log_impl(&dword_24E5DD000, v57, v58, "Virtual call %s failed with error %@", v49, 0x16u);
      sub_24E601704(v59, &qword_27F227B20);
      MEMORY[0x2530542D0](v59, -1, -1);
      v60 = v83;
      __swift_destroy_boxed_opaque_existential_1(v83);
      MEMORY[0x2530542D0](v60, -1, -1);
      MEMORY[0x2530542D0](v49, -1, -1);
    }

    else
    {

      sub_24F002D04(v44);
    }

    v61 = v89;
    swift_getKeyPath();
    v95[0] = v61;
    v62 = v94;
    sub_24F91FD88();

    v95[0] = v61;
    swift_getKeyPath();
    sub_24F91FDA8();

    swift_beginAccess();
    v63 = *(v61 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v61 + 24) = v63;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v63 = sub_24ECDE344(v63);
      *(v61 + 24) = v63;
    }

    if (v21 >= v63[2])
    {
      __break(1u);
    }

    else
    {
      v65 = v63 + v23 + v24;
      v66 = *(v90 + 28);
      v67 = *&v65[v66];
      *&v65[v66] = v94;
      *(v61 + 24) = v63;
      swift_endAccess();

      v95[0] = v61;
      swift_getKeyPath();
      sub_24F91FD98();

      swift_getKeyPath();
      v95[0] = v61;
      sub_24F91FD88();

      v68 = *(v61 + 24);
      if (v21 < *(v68 + 16))
      {
        v69 = v61;
        v93 = ~v22;
        sub_24F002CA0(v68 + v23 + v24, v16);
        v70 = [objc_opt_self() defaultCenter];
        v71 = sub_24F92B098();
        v72 = v86;
        sub_24F002CA0(v16, v86);
        [v70 postNotificationName:v71 object:sub_24F92CF68()];

        swift_unknownObjectRelease();
        v73 = sub_24F92B858();
        v74 = v87;
        (*(*(v73 - 8) + 56))(v87, 1, 1, v73);
        sub_24F002CA0(v16, v72);
        sub_24F92B7F8();
        v75 = v94;
        v76 = v94;

        v77 = sub_24F92B7E8();
        v78 = (v22 + 40) & v93;
        v79 = (v85 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
        v80 = swift_allocObject();
        v81 = MEMORY[0x277D85700];
        v80[2] = v77;
        v80[3] = v81;
        v80[4] = v69;
        sub_24F1D9788(v72, v80 + v78);
        *(v80 + v79) = v75;
        sub_24F1D3DA4(0, 0, v74, &unk_24F9D3C30, v80);

        v42 = v16;
        goto LABEL_26;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    if (qword_27F2113B0 != -1)
    {
LABEL_28:
      swift_once();
    }

    v26 = sub_24F9220D8();
    __swift_project_value_buffer(v26, qword_27F39E760);
    v27 = v92;
    sub_24F002CA0(a1, v92);
    v28 = v94;
    v29 = v94;
    v30 = sub_24F9220B8();
    v31 = sub_24F92BDA8();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v95[0] = v34;
      *v32 = 136315394;
      sub_24F91F6B8();
      sub_24F1D9EF4(&qword_27F21E4F8, MEMORY[0x277CC95F0]);
      v35 = sub_24F92CD88();
      v37 = v36;
      sub_24F002D04(v27);
      v38 = sub_24E7620D4(v35, v37, v95);

      *(v32 + 4) = v38;
      *(v32 + 12) = 2112;
      if (v28)
      {
        v39 = v28;
        v40 = _swift_stdlib_bridgeErrorToNSError();
        v41 = v40;
      }

      else
      {
        v40 = 0;
        v41 = 0;
      }

      *(v32 + 14) = v40;
      *v33 = v41;
      _os_log_impl(&dword_24E5DD000, v30, v31, "Virtual call %s failed with error %@, but isn't registered", v32, 0x16u);
      sub_24E601704(v33, &qword_27F227B20);
      MEMORY[0x2530542D0](v33, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x2530542D0](v34, -1, -1);
      MEMORY[0x2530542D0](v32, -1, -1);
    }

    else
    {

      v42 = v27;
LABEL_26:
      sub_24F002D04(v42);
    }
  }
}

uint64_t sub_24F1D8CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  v6[15] = *(type metadata accessor for VirtualCall() - 8);
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v7 = sub_24F92CA08();
  v6[18] = v7;
  v6[19] = *(v7 - 8);
  v6[20] = swift_task_alloc();
  sub_24F92B7F8();
  v6[21] = sub_24F92B7E8();
  v9 = sub_24F92B778();
  v6[22] = v9;
  v6[23] = v8;

  return MEMORY[0x2822009F8](sub_24F1D8E00, v9, v8);
}

uint64_t sub_24F1D8E00()
{
  sub_24F92CFB8();
  v1 = swift_task_alloc();
  *(v0 + 192) = v1;
  *v1 = v0;
  v1[1] = sub_24F1D8ECC;

  return sub_24E70C87C(3000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_24F1D8ECC()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 152);
  v5 = *(*v1 + 144);
  *(*v1 + 200) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 184);
  v7 = *(v2 + 176);
  if (v0)
  {
    v8 = sub_24F1D9520;
  }

  else
  {
    v8 = sub_24F1D9064;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_24F1D9064()
{
  v33 = v0;
  v1 = v0[12];

  swift_getKeyPath();
  v0[8] = v1;
  sub_24F1D9EF4(&qword_27F2261C0, type metadata accessor for OverlayCallCenter);
  sub_24F91FD88();

  swift_beginAccess();
  v2 = *(v1 + 24);
  v3 = *(v2 + 16);

  if (v3)
  {
    v4 = 0;
    v5 = v0[15];
    while (v4 < *(v2 + 16))
    {
      v6 = v0[17];
      sub_24F002CA0(v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v4, v6);
      v7 = _s12GameStoreKit11VirtualCallV2eeoiySbAC_ACtFZ_0();
      sub_24F002D04(v6);
      if (v7)
      {
        v27 = v0[17];
        v28 = v0[12];

        swift_getKeyPath();
        v0[9] = v28;
        sub_24F91FD88();

        v0[10] = v28;
        swift_getKeyPath();
        sub_24F91FDA8();

        swift_beginAccess();
        sub_24EA0E98C(v4, v27);
        sub_24F002D04(v27);
        swift_endAccess();
        v0[11] = v28;
        swift_getKeyPath();
        sub_24F91FD98();

        sub_24F1D5654();
        goto LABEL_14;
      }

      if (v3 == ++v4)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    if (qword_27F2113B0 == -1)
    {
      goto LABEL_7;
    }
  }

  swift_once();
LABEL_7:
  v8 = v0[16];
  v9 = v0[13];
  v10 = v0[14];
  v11 = sub_24F9220D8();
  __swift_project_value_buffer(v11, qword_27F39E760);
  sub_24F002CA0(v9, v8);
  v12 = v10;
  v13 = sub_24F9220B8();
  v14 = sub_24F92BDA8();

  v15 = os_log_type_enabled(v13, v14);
  v16 = v0[16];
  if (v15)
  {
    v31 = v0[14];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v32 = v19;
    *v17 = 136315394;
    sub_24F91F6B8();
    sub_24F1D9EF4(&qword_27F21E4F8, MEMORY[0x277CC95F0]);
    v20 = sub_24F92CD88();
    v22 = v21;
    sub_24F002D04(v16);
    v23 = sub_24E7620D4(v20, v22, &v32);

    *(v17 + 4) = v23;
    *(v17 + 12) = 2112;
    v24 = v31;
    if (v31)
    {
      v25 = v10;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      v24 = v26;
    }

    else
    {
      v26 = 0;
    }

    *(v17 + 14) = v26;
    *v18 = v24;
    _os_log_impl(&dword_24E5DD000, v13, v14, "Unable to remove virtual call %s that failed with error %@, as it isn't registered", v17, 0x16u);
    sub_24E601704(v18, &qword_27F227B20);
    MEMORY[0x2530542D0](v18, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x2530542D0](v19, -1, -1);
    MEMORY[0x2530542D0](v17, -1, -1);
  }

  else
  {

    sub_24F002D04(v16);
  }

LABEL_14:

  v29 = v0[1];

  return v29();
}

uint64_t sub_24F1D9520()
{

  v1 = *(v0 + 8);

  return v1();
}

Swift::Void __swiftcall OverlayCallCenter.callInviteSent()()
{
  swift_getKeyPath();
  sub_24F1D9EF4(&qword_27F2261C0, type metadata accessor for OverlayCallCenter);
  sub_24F91FD88();

  if (*(v0 + 32))
  {
    swift_getKeyPath();
    sub_24F91FD88();

    swift_getKeyPath();
    sub_24F91FDA8();

    v1 = *(v0 + 40);
    v2 = __OFADD__(v1, 1);
    v3 = v1 + 1;
    if (v2)
    {
      __break(1u);
    }

    else
    {
      *(v0 + 40) = v3;
      swift_getKeyPath();
      sub_24F91FD98();
    }
  }

  else if (*(v0 + 40))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F91FD78();
  }
}

uint64_t sub_24F1D9788(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VirtualCall();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F1D97EC()
{
  v1 = (type metadata accessor for VirtualCall() - 8);
  v2 = (*(*v1 + 80) + 56) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = sub_24F91F6B8();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_24F1D9920(uint64_t a1)
{
  v4 = *(type metadata accessor for VirtualCall() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24E614970;

  return sub_24F1D7BD8(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_24F1D9A2C()
{
  v1 = (type metadata accessor for VirtualCall() - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v4 = v0 + v2;
  v5 = sub_24F91F6B8();
  (*(*(v5 - 8) + 8))(v4, v5);

  return swift_deallocObject();
}

uint64_t sub_24F1D9B74(uint64_t a1)
{
  v4 = *(type metadata accessor for VirtualCall() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24E6541E4;

  return sub_24F1D8CA4(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_24F1D9CB8()
{
  result = sub_24F91FDC8();
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

uint64_t sub_24F1D9D98()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F1D9DE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E614970;

  return sub_24F1D5D68(a1, v4, v5, v7, v6);
}

unint64_t sub_24F1D9EA0()
{
  result = qword_27F23BEA0;
  if (!qword_27F23BEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BEA0);
  }

  return result;
}

uint64_t sub_24F1D9EF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F1D9F84()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v4, v0);
  qword_27F39DCE0 = sub_24F92AAE8();
  unk_27F39DCE8 = MEMORY[0x277D22508];
  __swift_allocate_boxed_opaque_existential_1(qword_27F39DCC8);
  return sub_24F92AAD8();
}

uint64_t sub_24F1DA0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 112) + **(*v5 + 112));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_24E614970;

  return v14(a1, a2, a3, "", 0, 2, a4, a5);
}

uint64_t sub_24F1DA22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 192) = a8;
  *(v9 + 200) = v8;
  *(v9 + 280) = a6;
  *(v9 + 176) = a5;
  *(v9 + 184) = a7;
  *(v9 + 160) = a3;
  *(v9 + 168) = a4;
  *(v9 + 144) = a1;
  *(v9 + 152) = a2;
  sub_24F928418();
  *(v9 + 208) = swift_task_alloc();
  v10 = sub_24F9285B8();
  *(v9 + 216) = v10;
  v11 = *(v10 - 8);
  *(v9 + 224) = v11;
  *(v9 + 232) = *(v11 + 64);
  *(v9 + 240) = swift_task_alloc();
  *(v9 + 248) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F1DA33C, 0, 0);
}

uint64_t sub_24F1DA33C()
{
  static JSONContext.makeDefaultContext(with:)(*(v0 + 160), *(v0 + 248));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = swift_conformsToProtocol2();
  if (v2)
  {
    v3 = AssociatedTypeWitness == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v12 = v2;
    v35 = sub_24F1DBF1C;
LABEL_16:
    v13 = *(v0 + 240);
    v14 = *(v0 + 224);
    v15 = *(v0 + 216);
    v33 = *(v0 + 184);
    (*(v14 + 16))(v13, *(v0 + 248), v15);
    v16 = (*(v14 + 80) + 48) & ~*(v14 + 80);
    v17 = swift_allocObject();
    *(v0 + 256) = v17;
    *(v17 + 16) = v33;
    *(v17 + 32) = AssociatedTypeWitness;
    *(v17 + 40) = v12;
    (*(v14 + 32))(v17 + v16, v13, v15);

    sub_24F92C8A8();
    v18 = sub_24F92B228();

    if (v18)
    {
      if (qword_27F210FD8 != -1)
      {
        swift_once();
      }

      v34 = *(v0 + 280);
      v31 = *(v0 + 168);
      v32 = *(v0 + 176);
      __swift_project_boxed_opaque_existential_1(qword_27F39DCC8, qword_27F39DCE0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93DE60;
      sub_24F928408();
      sub_24F9283F8();
      v19 = sub_24F9284D8();
      *(v0 + 72) = MEMORY[0x277D837D0];
      *(v0 + 48) = v19;
      *(v0 + 56) = v20;
      sub_24F9283D8();
      sub_24E857CC8(v0 + 48);
      sub_24F9283F8();
      *(v0 + 104) = MEMORY[0x277D840E8];
      *(v0 + 80) = v31;
      *(v0 + 88) = v32;
      *(v0 + 96) = v34;
      sub_24F9283E8();
      v21 = v0 + 80;
    }

    else
    {
      if (qword_27F210FD8 != -1)
      {
        swift_once();
      }

      __swift_project_boxed_opaque_existential_1(qword_27F39DCC8, qword_27F39DCE0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93DE60;
      sub_24F928408();
      sub_24F9283F8();
      v22 = sub_24F9284D8();
      *(v0 + 136) = MEMORY[0x277D837D0];
      *(v0 + 112) = v22;
      *(v0 + 120) = v23;
      sub_24F9283D8();
      v21 = v0 + 112;
    }

    sub_24E857CC8(v21);
    sub_24F9283F8();
    sub_24F928428();
    sub_24F92A588();
    v24 = *(v0 + 200);

    __swift_project_boxed_opaque_existential_1((v24 + 16), *(v24 + 40));
    v25 = swift_task_alloc();
    *(v0 + 264) = v25;
    *v25 = v0;
    v25[1] = sub_24F1DAB10;
    v26 = *(v0 + 184);
    v27 = *(v0 + 192);
    v28 = *(v0 + 152);
    v29 = *(v0 + 160);
    v30 = *(v0 + 144);

    return sub_24F295CE8(v30, v28, v35, v17, v29, v26, v27);
  }

  v4 = swift_conformsToProtocol2();
  if (v4)
  {
    v5 = AssociatedTypeWitness == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v12 = v4;
    v35 = sub_24F1DB114;
    goto LABEL_16;
  }

  if (qword_27F210FD8 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1(qword_27F39DCC8, qword_27F39DCE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F928408();
  sub_24F9283F8();
  v6 = sub_24F9284D8();
  *(v0 + 40) = MEMORY[0x277D837D0];
  *(v0 + 16) = v6;
  *(v0 + 24) = v7;
  sub_24F9283D8();
  sub_24E857CC8(v0 + 16);
  sub_24F9283F8();
  sub_24F928428();
  sub_24F92A5A8();

  v8 = sub_24F929C48();
  sub_24F1DAD98();
  swift_allocError();
  (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D220F8], v8);
  swift_willThrow();
  (*(*(v0 + 224) + 8))(*(v0 + 248), *(v0 + 216));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_24F1DAB10()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_24F1DACF4;
  }

  else
  {
    v2 = sub_24F1DAC44;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F1DAC44()
{
  v1 = v0[31];
  v2 = v0[27];
  v3 = v0[28];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24F1DACF4()
{

  (*(v0[28] + 8))(v0[31], v0[27]);

  v1 = v0[1];

  return v1();
}

unint64_t sub_24F1DAD98()
{
  result = qword_27F23BEB0;
  if (!qword_27F23BEB0)
  {
    sub_24F929C48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BEB0);
  }

  return result;
}

uint64_t sub_24F1DADF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v21[0] = a6;
  v21[1] = a5;
  v23[6] = a7;
  v12 = sub_24F9285B8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24F928388();
  v17 = MEMORY[0x28223BE20](v16);
  (*(v19 + 16))(v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v17);
  (*(v13 + 16))(v15, a4, v12);
  v23[3] = a2;
  v23[4] = a3;
  __swift_allocate_boxed_opaque_existential_1(v23);
  sub_24F929538();
  if (v7)
  {
    return __swift_deallocate_boxed_opaque_existential_2(v23);
  }

  sub_24E615E00(v23, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BEB8);
  swift_getAssociatedTypeWitness();
  swift_dynamicCast();
  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t sub_24F1DB010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[3] = a2;
  v6[4] = a3;
  __swift_allocate_boxed_opaque_existential_1(v6);
  sub_24F9282F8();
  if (v3)
  {
    return __swift_deallocate_boxed_opaque_existential_2(v6);
  }

  sub_24E615E00(v6, &v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BEC0);
  swift_getAssociatedTypeWitness();
  swift_dynamicCast();
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_24F1DB140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v34 = a5;
  v32 = a3;
  v33 = a4;
  v30 = *v7;
  v31 = a2;
  v11 = *(a6 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v27 - v14;
  v28 = &v27 - v14;
  swift_getAssociatedTypeWitness();
  sub_24F92A9F8();
  v27 = sub_24F92A9E8();
  v16 = sub_24F92B858();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v17, a1, a6);
  v18 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v19 = (v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 39) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 4) = a6;
  *(v21 + 5) = a7;
  *(v21 + 6) = v29;
  (*(v11 + 32))(&v21[v18], v17, a6);
  v22 = v32;
  *&v21[v19] = v31;
  v23 = &v21[(v19 + 15) & 0xFFFFFFFFFFFFFFF8];
  v24 = v33;
  *v23 = v22;
  *(v23 + 1) = v24;
  v23[16] = v34;
  v25 = v27;
  *&v21[v20] = v27;
  *&v21[(v20 + 15) & 0xFFFFFFFFFFFFFFF8] = v30;

  sub_24EA998B8(0, 0, v28, &unk_24F9D3D00, v21);

  return v25;
}

uint64_t sub_24F1DB404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = v23;
  v8[17] = v24;
  v8[14] = a5;
  v8[15] = v22;
  v14 = *v22;
  sub_24F928418();
  v8[18] = swift_task_alloc();
  v15 = *(v14 + *MEMORY[0x277D224B0]);
  v8[19] = v15;
  v8[20] = *(v15 - 8);
  v16 = swift_task_alloc();
  v8[21] = v16;
  v19 = (*(*a4 + 112) + **(*a4 + 112));
  v17 = swift_task_alloc();
  v8[22] = v17;
  *v17 = v8;
  v17[1] = sub_24F1DB63C;

  return v19(v16, a5, a6, a7, a8, v21);
}

uint64_t sub_24F1DB63C()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_24F1DB7F0;
  }

  else
  {
    v2 = sub_24F1DB750;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F1DB750()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  sub_24F92A9C8();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24F1DB7F0()
{
  if (qword_27F210FD8 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  __swift_project_boxed_opaque_existential_1(qword_27F39DCC8, qword_27F39DCE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F928408();
  sub_24F9283F8();
  v2 = sub_24F9284D8();
  v0[5] = MEMORY[0x277D837D0];
  v0[2] = v2;
  v0[3] = v3;
  sub_24F9283D8();
  sub_24E857CC8((v0 + 2));
  sub_24F9283F8();
  sub_24F928428();
  swift_getErrorValue();
  v4 = v0[10];
  v5 = v0[11];
  v0[9] = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 6);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v4, v5);
  sub_24F928458();
  sub_24E857CC8((v0 + 6));
  sub_24F92A5A8();

  sub_24F92A9A8();

  v7 = v0[1];

  return v7();
}

uint64_t JSIntentDispatcher.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_24F1DBAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_24E6541E4;

  return MEMORY[0x28217F4B8](a1, a2, a3, a7, a4, a5, a8, a6);
}

uint64_t sub_24F1DBBC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_24E6541E4;

  return sub_24F1DA0C8(a1, a2, a3, a4, a5);
}

uint64_t sub_24F1DBC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_24E6541E4;

  return MEMORY[0x28217F4C8](a1, a2, a3, a4, a7, a5, a8, a6);
}

uint64_t sub_24F1DBD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_24E6541E4;

  return MEMORY[0x28217F4D0](a1, a2, a3, a4, a7, a5, a8, a6);
}

uint64_t objectdestroyTm_56()
{
  v1 = sub_24F9285B8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24F1DBF48(uint64_t a1, uint64_t (*a2)(uint64_t, void, void, char *, uint64_t, uint64_t))
{
  v5 = *(v2 + 2);
  v6 = *(v2 + 3);
  v7 = *(sub_24F9285B8() - 8);
  return a2(a1, *(v2 + 4), *(v2 + 5), &v2[(*(v7 + 80) + 48) & ~*(v7 + 80)], v5, v6);
}

uint64_t sub_24F1DBFE4()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24F1DC0DC(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v5 = (*(*(v4 - 8) + 80) + 56) & ~*(*(v4 - 8) + 80);
  v6 = (*(*(v4 - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = v1[3];
  v15 = v1[2];
  v13 = v1[6];
  v8 = *(v1 + v6);
  v9 = *(v1 + v7);
  v10 = *(v1 + v7 + 8);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_24E614970;

  return sub_24F1DB404(a1, v15, v14, v13, v1 + v5, v8, v9, v10);
}

uint64_t dispatch thunk of JSIntentDispatcher.dispatch<A>(_:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 104) + **(*v5 + 104));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_24E614970;

  return v14(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of JSIntentDispatcher.dispatch<A>(_:objectGraph:fileID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = (*(*v8 + 112) + **(*v8 + 112));
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = sub_24E6541E4;

  return v20(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_24F1DC5BC()
{
  v0 = sub_24F9220D8();
  __swift_allocate_value_buffer(v0, qword_27F23BEC8);
  __swift_project_value_buffer(v0, qword_27F23BEC8);
  if (qword_27F2103D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_27F22B5B8;
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_24F92B0D8();
  }

  return sub_24F9220C8();
}

uint64_t sub_24F1DC6EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v45 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211A98);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - v7;
  v49 = v2[2];
  v50 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  sub_24F926F38();
  v9 = sub_24F926D08();
  v10 = sub_24F927718();
  v49 = v50;
  sub_24F926F38();
  v11 = v47;
  v12 = sub_24F927618();
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BEE0);
  (*(*(v15 - 8) + 16))(v8, a1, v15);
  v16 = *(v6 + 44);
  v44 = v8;
  v17 = &v8[v16];
  *v17 = v9;
  v17[8] = 0;
  *(v17 + 2) = v10;
  v17[24] = v11;
  *(v17 + 4) = v12;
  *(v17 + 5) = v14;
  v49 = v3[1];
  sub_24F92B7F8();

  sub_24E614DB0(&v49, &v47);
  sub_24F1DD1C8(&v50, &v47);
  v18 = sub_24F92B7E8();
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  *(v19 + 16) = v18;
  *(v19 + 24) = v20;
  v21 = v3[1];
  *(v19 + 32) = *v3;
  *(v19 + 48) = v21;
  *(v19 + 64) = v3[2];
  v22 = sub_24F92B858();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  v26 = &v39 - v25;
  sub_24F92B818();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v42 = sub_24F923DD8();
    v43 = &v39;
    v41 = *(v42 - 8);
    MEMORY[0x28223BE20](v42);
    v40 = &v39 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    v47 = 0;
    v48 = 0xE000000000000000;
    sub_24F92C888();

    v47 = 0xD00000000000004BLL;
    v48 = 0x800000024FA6EF50;
    v46 = 39;
    v28 = sub_24F92CD88();
    MEMORY[0x253050C20](v28);

    v30 = MEMORY[0x28223BE20](v29);
    (*(v23 + 16))(&v39 - v25, &v39 - v25, v22, v30);
    v31 = v40;
    sub_24F923DC8();
    (*(v23 + 8))(v26, v22);
    v32 = v45;
    sub_24F1DD32C(v44, v45);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211AA0);
    return (*(v41 + 32))(v32 + *(v33 + 36), v31, v42);
  }

  else
  {
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211AA8);
    v36 = v45;
    v37 = (v45 + *(v35 + 36));
    v38 = sub_24F923AD8();
    (*(v23 + 32))(&v37[*(v38 + 20)], v26, v22);
    *v37 = &unk_24F9D3E90;
    *(v37 + 1) = v19;
    return sub_24F1DD32C(v44, v36);
  }
}

uint64_t sub_24F1DCBC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a3;
  v4 = sub_24F927D88();
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();
  v5 = sub_24F927DC8();
  v3[24] = v5;
  v3[25] = *(v5 - 8);
  v3[26] = swift_task_alloc();
  v6 = sub_24F927DE8();
  v3[27] = v6;
  v3[28] = *(v6 - 8);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  sub_24F92B7F8();
  v3[31] = sub_24F92B7E8();
  v8 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F1DCD7C, v8, v7);
}

uint64_t sub_24F1DCD7C()
{
  v30 = v0;
  v1 = *(v0 + 160);

  *(v0 + 64) = *(v1 + 32);
  *(v0 + 80) = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  sub_24F926F38();
  if (*(v0 + 256) == 1)
  {
    if (qword_27F210FE0 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 160);
    v3 = sub_24F9220D8();
    __swift_project_value_buffer(v3, qword_27F23BEC8);
    *(v0 + 128) = *v2;
    v5 = v2[2];
    v4 = v2[3];
    sub_24F1DD39C(v0 + 128, v0 + 136);

    sub_24F1DD1C8(v0 + 64, v0 + 96);
    v6 = sub_24F9220B8();
    v7 = sub_24F92BD98();
    sub_24F1DD3F8(v0 + 128);

    sub_24E6459BC(v0 + 64);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v29 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_24E7620D4(v5, v4, &v29);
      _os_log_impl(&dword_24E5DD000, v6, v7, "View %{public}s changed identity", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x2530542D0](v9, -1, -1);
      MEMORY[0x2530542D0](v8, -1, -1);
    }

    v10 = *(v0 + 232);
    v24 = *(v0 + 240);
    v12 = *(v0 + 216);
    v11 = *(v0 + 224);
    v13 = *(v0 + 208);
    v14 = *(v0 + 184);
    v27 = *(v0 + 200);
    v28 = *(v0 + 192);
    v15 = *(v0 + 168);
    v26 = *(v0 + 176);
    v16 = *(v0 + 160);
    sub_24E74EC40();
    v25 = sub_24F92BEF8();
    sub_24F927DD8();
    sub_24F927E58();
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = swift_allocObject();
    v20 = v16[1];
    v19 = v16[2];
    v18[1] = *v16;
    v18[2] = v20;
    v18[3] = v19;
    *(v0 + 48) = sub_24F1DD494;
    *(v0 + 56) = v18;
    *(v0 + 16) = MEMORY[0x277D85DD0];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_24EAF8248;
    *(v0 + 40) = &block_descriptor_126;
    v21 = _Block_copy((v0 + 16));
    sub_24F1DD39C(v0 + 128, v0 + 144);

    sub_24F1DD1C8(v0 + 64, v0 + 112);

    sub_24F927DA8();
    *(v0 + 152) = MEMORY[0x277D84F90];
    sub_24E858250();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
    sub_24E602068(&qword_27F222940, &qword_27F222310);
    sub_24F92C6A8();
    MEMORY[0x253051820](v24, v13, v14, v21);
    _Block_release(v21);

    (*(v26 + 8))(v14, v15);
    (*(v27 + 8))(v13, v28);
    v17(v24, v12);
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_24F1DD1C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F1DD238()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F1DD288()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24E614970;

  return sub_24F1DCBC4(v2, v3, v0 + 32);
}

uint64_t sub_24F1DD32C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211A98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F1DD44C()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_126(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F1DD500()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F211A98);
  sub_24F1DD564();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24F1DD564()
{
  result = qword_27F23BEE8;
  if (!qword_27F23BEE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F211A98);
    sub_24E602068(&qword_27F23BEF0, &qword_27F23BEE0);
    sub_24E602068(&qword_27F23BEF8, &qword_27F23BF00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BEE8);
  }

  return result;
}

uint64_t ArcadeAccountEventGenerator.__allocating_init(metricsPipeline:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC12GameStoreKit27ArcadeAccountEventGenerator_metricsPipeline;
  v4 = sub_24F929158();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  return v2;
}

uint64_t ArcadeAccountEventGenerator.init(metricsPipeline:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit27ArcadeAccountEventGenerator_metricsPipeline;
  v4 = sub_24F929158();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t sub_24F1DD73C()
{
  v0 = sub_24F928698();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (byte_27F22D288)
  {
    if (qword_27F210580 != -1)
    {
      swift_once();
    }

    v4 = sub_24F92AAE8();
    __swift_project_value_buffer(v4, qword_27F39C3E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A588();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140);
    inited = swift_initStackObject();
    *(inited + 32) = 0x707954746E657665;
    *(inited + 16) = xmmword_24F9479A0;
    v7 = MEMORY[0x277D837D0];
    *(inited + 40) = 0xE900000000000065;
    *(inited + 48) = 0x746E756F636361;
    *(inited + 56) = 0xE700000000000000;
    *(inited + 72) = v7;
    strcpy((inited + 80), "eventVersion");
    v8 = MEMORY[0x277D83B88];
    *(inited + 93) = 0;
    *(inited + 94) = -5120;
    *(inited + 96) = 1;
    *(inited + 120) = v8;
    *(inited + 128) = 1701869940;
    *(inited + 168) = v7;
    *(inited + 136) = 0xE400000000000000;
    *(inited + 144) = 0xD000000000000012;
    *(inited + 152) = 0x800000024FA6EFA0;
    v9 = sub_24E608448(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135C0);
    swift_arrayDestroy();
    if (*(v9 + 16))
    {
      v10 = sub_24E76D644(0x6369706F74, 0xE500000000000000);
      if (v11)
      {
        sub_24E643A9C(*(v9 + 56) + 32 * v10, v16);
        if (swift_dynamicCast())
        {
          v12 = HIBYTE(v15) & 0xF;
          if ((v15 & 0x2000000000000000) == 0)
          {
            v12 = v14[1] & 0xFFFFFFFFFFFFLL;
          }

          if (!v12)
          {
          }
        }
      }
    }

    sub_24F928658();
    if (qword_27F210658 != -1)
    {
      swift_once();
    }

    v13 = sub_24F929AB8();
    __swift_project_value_buffer(v13, qword_27F22E3B8);
    sub_24F929138();

    return (*(v1 + 8))(v3, v0);
  }
}

uint64_t ArcadeAccountEventGenerator.deinit()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit27ArcadeAccountEventGenerator_metricsPipeline;
  v2 = sub_24F929158();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ArcadeAccountEventGenerator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit27ArcadeAccountEventGenerator_metricsPipeline;
  v2 = sub_24F929158();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ArcadeAccountEventGenerator()
{
  result = qword_27F23BF08;
  if (!qword_27F23BF08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F1DDCCC()
{
  result = sub_24F929158();
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

__n128 __swift_memcpy75_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 59) = *(a2 + 59);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24F1DDDD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 75))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24F1DDE18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 74) = 0;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 75) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 75) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24F1DDE9C()
{
  v1 = sub_24F929888();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BF18);
  MEMORY[0x28223BE20](v5);
  v7 = (v11 - v6);
  *v7 = sub_24F927618();
  v7[1] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BF20);
  sub_24F1DE0F8(v0, v7 + *(v9 + 44));
  memset(v12, 0, sizeof(v12));
  memset(v11, 0, sizeof(v11));
  sub_24F9297A8();

  sub_24E601704(v11, &qword_27F2129B0);
  sub_24E601704(v12, &qword_27F2129B0);
  sub_24E602068(&qword_27F23BF28, &qword_27F23BF18);
  sub_24F925EE8();
  (*(v2 + 8))(v4, v1);
  return sub_24E601704(v7, &qword_27F23BF18);
}

uint64_t sub_24F1DE0F8@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BF30);
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v63 = &v62 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BF38);
  MEMORY[0x28223BE20](v4 - 8);
  v68 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v67 = &v62 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v62 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BF40);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v62 - v13;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BF48);
  MEMORY[0x28223BE20](v64);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v62 - v18;
  v20 = sub_24F9232F8();
  (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
  sub_24E60169C(a1, v76, qword_27F21B590);
  sub_24F1DF34C(a1, &v72);
  v21 = swift_allocObject();
  v22 = v75[0];
  v21[3] = v74;
  v21[4] = v22;
  *(v21 + 75) = *(v75 + 11);
  v23 = v73;
  v21[1] = v72;
  v21[2] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BF50);
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23BF58);
  v25 = sub_24F1DF3DC();
  v70 = v24;
  v71 = v25;
  swift_getOpaqueTypeConformance2();
  sub_24F921788();
  *(&v73 + 1) = sub_24F9271D8();
  *&v74 = sub_24F1E0920(&qword_27F214E38, MEMORY[0x277CE1260]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v72);
  v27 = *MEMORY[0x277CE0118];
  v28 = sub_24F924B38();
  (*(*(v28 - 8) + 104))(boxed_opaque_existential_1, v27, v28);
  sub_24E60169C(&v72, v19, &qword_27F23BFA8);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BFB0);
  (*(v12 + 16))(&v19[v29[9]], v14, v11);
  v30 = &v19[v29[10]];
  *v30 = sub_24F923398() & 1;
  *(v30 + 1) = v31;
  v30[16] = v32 & 1;
  v33 = &v19[v29[11]];
  *v33 = swift_getKeyPath();
  v33[8] = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v34 = qword_27F24E488;
  v35 = sub_24F923398();
  v37 = v36;
  v39 = v38;
  v40 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BFB8) + 36)];
  *v40 = v34;
  v40[8] = v35 & 1;
  *(v40 + 2) = v37;
  v40[24] = v39 & 1;
  LOBYTE(v34) = sub_24F923398();
  v42 = v41;
  LOBYTE(v37) = v43;
  sub_24E601704(&v72, &qword_27F23BFA8);
  (*(v12 + 8))(v14, v11);
  v44 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BFC0) + 36)];
  *v44 = v34 & 1;
  *(v44 + 1) = v42;
  v44[16] = v37 & 1;
  sub_24F927618();
  v45 = 1;
  sub_24F9238C8();
  v46 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BFC8) + 36)];
  v47 = v73;
  *v46 = v72;
  *(v46 + 1) = v47;
  *(v46 + 2) = v74;
  v48 = a1[73];
  KeyPath = swift_getKeyPath();
  v50 = swift_allocObject();
  *(v50 + 16) = v48;
  v51 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BFD0) + 36)];
  *v51 = KeyPath;
  v51[1] = sub_24E600A48;
  v51[2] = v50;
  LOBYTE(KeyPath) = a1[56];
  LOBYTE(v50) = a1[72];
  v52 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BFD8) + 36)];
  *v52 = KeyPath;
  v52[1] = v50;
  v52[2] = v48;
  *&v19[*(v64 + 36)] = 256;
  v53 = v66;
  v54 = v67;
  if (a1[74] == 1)
  {
    v55 = v63;
    sub_24F923798();
    v56 = swift_getKeyPath();
    v57 = (v55 + *(v53 + 36));
    *v57 = v56;
    v57[1] = 0;
    sub_24E6009C8(v55, v54, &qword_27F23BF30);
    v45 = 0;
  }

  (*(v65 + 56))(v54, v45, 1, v53);
  sub_24E60169C(v19, v16, &qword_27F23BF48);
  v58 = v68;
  sub_24E60169C(v54, v68, &qword_27F23BF38);
  v59 = v69;
  sub_24E60169C(v16, v69, &qword_27F23BF48);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BFE0);
  sub_24E60169C(v58, v59 + *(v60 + 48), &qword_27F23BF38);
  sub_24E601704(v54, &qword_27F23BF38);
  sub_24E601704(v19, &qword_27F23BF48);
  sub_24E601704(v58, &qword_27F23BF38);
  return sub_24E601704(v16, &qword_27F23BF48);
}

uint64_t sub_24F1DE91C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v90 = sub_24F9248C8();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v87 = &v67[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BFE8);
  MEMORY[0x28223BE20](v74);
  v73 = &v67[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v70 = &v67[-v6];
  v7 = sub_24F923E98();
  v93 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v92 = &v67[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v91 = &v67[-v10];
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BF98);
  MEMORY[0x28223BE20](v72);
  v71 = &v67[-v11];
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BFF0);
  v77 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v76 = &v67[-v12];
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BF90);
  MEMORY[0x28223BE20](v78);
  v81 = &v67[-v13];
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BF80);
  MEMORY[0x28223BE20](v80);
  v83 = &v67[-v14];
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BF70);
  MEMORY[0x28223BE20](v75);
  v82 = &v67[-v15];
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BF58);
  MEMORY[0x28223BE20](v84);
  v85 = &v67[-v16];
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v86 = a1;
  *&v94 = v17;
  *(&v94 + 1) = v18;
  sub_24E600AEC();

  v19 = sub_24F925E18();
  v21 = v20;
  v23 = v22;
  sub_24F9258D8();
  v24 = sub_24F925C98();
  v26 = v25;
  LOBYTE(a1) = v27;

  v28 = v19;
  v29 = v91;
  sub_24E600B40(v28, v21, v23 & 1);

  sub_24F925958();
  v30 = sub_24F925B78();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = v26;
  v38 = v92;
  sub_24E600B40(v24, v37, a1 & 1);

  *&v94 = v30;
  *(&v94 + 1) = v32;
  v69 = v32;
  v39 = v34 & 1;
  LOBYTE(v95) = v39;
  *(&v95 + 1) = v36;
  v40 = v93;
  v41 = *(v93 + 104);
  v41(v29, *MEMORY[0x277CDF9F8], v7);
  v41(v38, *MEMORY[0x277CDFA00], v7);
  sub_24F1E0920(&qword_27F233178, MEMORY[0x277CDFA28]);
  result = sub_24F92AF98();
  if (result)
  {
    v68 = v39;
    v43 = *(v40 + 32);
    v44 = v70;
    v43(v70, v29, v7);
    v45 = v74;
    v43((v44 + *(v74 + 48)), v38, v7);
    v92 = v30;
    v46 = v73;
    sub_24E60169C(v44, v73, &qword_27F23BFE8);
    v47 = *(v45 + 48);
    v48 = v71;
    v43(v71, v46, v7);
    v91 = v36;
    v49 = *(v40 + 8);
    v49(&v46[v47], v7);
    sub_24E6009C8(v44, v46, &qword_27F23BFE8);
    v43((v48 + *(v72 + 36)), &v46[*(v45 + 48)], v7);
    v49(v46, v7);
    sub_24E602068(&qword_27F23BFA0, &qword_27F23BF98);
    v50 = v76;
    sub_24F9263F8();
    sub_24E601704(v48, &qword_27F23BF98);
    sub_24E600B40(v92, v69, v68);

    sub_24F927618();
    sub_24F9242E8();
    v51 = v81;
    (*(v77 + 32))(v81, v50, v79);
    v52 = v86;
    v53 = *(v86 + 74) == 0;
    v54 = (v51 + *(v78 + 36));
    v55 = v99;
    v54[4] = v98;
    v54[5] = v55;
    v54[6] = v100;
    v56 = v95;
    *v54 = v94;
    v54[1] = v56;
    if (v53)
    {
      v57 = 1.0;
    }

    else
    {
      v57 = 0.0;
    }

    v58 = v97;
    v54[2] = v96;
    v54[3] = v58;
    v59 = v83;
    sub_24E6009C8(v51, v83, &qword_27F23BF90);
    *&v59[*(v80 + 36)] = v57;
    v60 = v82;
    v61 = &v82[*(v75 + 36)];
    v62 = *MEMORY[0x277CE0118];
    v63 = sub_24F924B38();
    (*(*(v63 - 8) + 104))(v61, v62, v63);
    v61[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B698) + 36)] = 0;
    sub_24E6009C8(v59, v60, &qword_27F23BF80);
    if (*(v52 + 64))
    {
      v64 = *(v52 + 64);
    }

    else
    {
      v64 = sub_24F926D18();
    }

    v65 = v85;
    sub_24E6009C8(v60, v85, &qword_27F23BF70);
    *&v65[*(v84 + 36)] = v64;

    v66 = v87;
    sub_24F9248B8();
    sub_24F1DF3DC();
    _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
    (*(v89 + 8))(v66, v90);
    return sub_24E601704(v65, &qword_27F23BF58);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24F1DF384()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  return swift_deallocObject();
}

unint64_t sub_24F1DF3DC()
{
  result = qword_27F23BF60;
  if (!qword_27F23BF60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23BF58);
    sub_24F1DF494();
    sub_24E602068(&unk_27F2552A0, &qword_27F2171B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BF60);
  }

  return result;
}

unint64_t sub_24F1DF494()
{
  result = qword_27F23BF68;
  if (!qword_27F23BF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23BF70);
    sub_24F1DF54C();
    sub_24E602068(&qword_27F21B720, &qword_27F21B698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BF68);
  }

  return result;
}

unint64_t sub_24F1DF54C()
{
  result = qword_27F23BF78;
  if (!qword_27F23BF78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23BF80);
    sub_24F1DF5D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BF78);
  }

  return result;
}

unint64_t sub_24F1DF5D8()
{
  result = qword_27F23BF88;
  if (!qword_27F23BF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23BF90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23BF98);
    sub_24E602068(&qword_27F23BFA0, &qword_27F23BF98);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BF88);
  }

  return result;
}

uint64_t sub_24F1DF6E8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v88 = a1;
  v93 = a3;
  v86 = sub_24F9240F8();
  v74 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v73 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BFF8);
  v76 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v75 = &v63 - v5;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C000);
  MEMORY[0x28223BE20](v81);
  v85 = &v63 - v6;
  v82 = sub_24F925278();
  v70 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v68 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_24F926D98();
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v66 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C008);
  v72 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v71 = &v63 - v9;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C010);
  MEMORY[0x28223BE20](v92);
  v84 = &v63 - v10;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C018);
  MEMORY[0x28223BE20](v90);
  v91 = &v63 - v11;
  v79 = sub_24F9254A8();
  v64 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C020);
  v65 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v15 = &v63 - v14;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C028);
  MEMORY[0x28223BE20](v77);
  v17 = &v63 - v16;
  v18 = sub_24F924C38();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C030);
  v22 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v24 = &v63 - v23;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C038);
  MEMORY[0x28223BE20](v89);
  v26 = &v63 - v25;
  if (a2 & 0x100) == 0 || (a2)
  {
    if ((a2 & 0x10000) != 0)
    {
      v45 = v66;
      sub_24F926D88();
      v46 = v68;
      sub_24F925268();
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C040);
      v48 = sub_24E602068(&qword_27F23C048, &qword_27F23C040);
      v49 = sub_24F1E0920(&qword_27F23C050, MEMORY[0x277CE0638]);
      v50 = v71;
      v51 = v82;
      sub_24F9261C8();
      (*(v70 + 8))(v46, v51);
      (*(v67 + 8))(v45, v69);
      v52 = v72;
      v53 = v83;
      (*(v72 + 16))(v85, v50, v83);
      swift_storeEnumTagMultiPayload();
      v94 = v47;
      v95 = v51;
      v96 = v48;
      v97 = v49;
      swift_getOpaqueTypeConformance2();
      v54 = sub_24F1E0920(&qword_27F22B3C8, MEMORY[0x277CDDA98]);
      v94 = v47;
      v95 = v86;
      v96 = v48;
      v97 = v54;
      swift_getOpaqueTypeConformance2();
      v44 = v84;
      sub_24F924E28();
      (*(v52 + 8))(v50, v53);
    }

    else
    {
      v35 = v73;
      sub_24F9240E8();
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C040);
      v37 = sub_24E602068(&qword_27F23C048, &qword_27F23C040);
      v38 = sub_24F1E0920(&qword_27F22B3C8, MEMORY[0x277CDDA98]);
      v39 = v75;
      v40 = v86;
      sub_24F926178();
      (*(v74 + 8))(v35, v40);
      v41 = v76;
      v42 = v87;
      (*(v76 + 16))(v85, v39, v87);
      swift_storeEnumTagMultiPayload();
      v43 = sub_24F1E0920(&qword_27F23C050, MEMORY[0x277CE0638]);
      v94 = v36;
      v95 = v82;
      v96 = v37;
      v97 = v43;
      swift_getOpaqueTypeConformance2();
      v94 = v36;
      v95 = v40;
      v96 = v37;
      v97 = v38;
      swift_getOpaqueTypeConformance2();
      v44 = v84;
      sub_24F924E28();
      (*(v41 + 8))(v39, v42);
    }

    v55 = &qword_27F23C010;
    sub_24E60169C(v44, v91, &qword_27F23C010);
    swift_storeEnumTagMultiPayload();
    sub_24F1E077C();
    sub_24F1E0968();
    sub_24F924E28();
    v56 = v44;
  }

  else
  {
    if ((a2 & 0x10000) != 0)
    {
      sub_24F924C28();
      v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C040);
      v57 = sub_24E602068(&qword_27F23C048, &qword_27F23C040);
      v58 = sub_24F1E0920(&qword_27F21A8C0, MEMORY[0x277CDDEE0]);
      v59 = v86;
      v87 = v26;
      sub_24F926178();
      (*(v19 + 8))(v21, v18);
      v60 = v78;
      (*(v22 + 16))(v17, v24, v78);
      swift_storeEnumTagMultiPayload();
      v94 = v59;
      v95 = v18;
      v96 = v57;
      v97 = v58;
      swift_getOpaqueTypeConformance2();
      v61 = sub_24F1E0920(&qword_27F23C060, MEMORY[0x277CDE340]);
      v94 = v59;
      v95 = v79;
      v96 = v57;
      v97 = v61;
      swift_getOpaqueTypeConformance2();
      v26 = v87;
      sub_24F924E28();
      (*(v22 + 8))(v24, v60);
    }

    else
    {
      sub_24F925498();
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C040);
      v28 = sub_24E602068(&qword_27F23C048, &qword_27F23C040);
      v87 = sub_24F1E0920(&qword_27F23C060, MEMORY[0x277CDE340]);
      v29 = v79;
      sub_24F926178();
      (*(v64 + 8))(v13, v29);
      v30 = v65;
      v31 = *(v65 + 16);
      v32 = v17;
      v63 = v17;
      v33 = v80;
      v31(v32, v15, v80);
      swift_storeEnumTagMultiPayload();
      v34 = sub_24F1E0920(&qword_27F21A8C0, MEMORY[0x277CDDEE0]);
      v94 = v27;
      v95 = v18;
      v96 = v28;
      v97 = v34;
      swift_getOpaqueTypeConformance2();
      v94 = v27;
      v95 = v29;
      v96 = v28;
      v97 = v87;
      swift_getOpaqueTypeConformance2();
      sub_24F924E28();
      (*(v30 + 8))(v15, v33);
    }

    v55 = &qword_27F23C038;
    sub_24E60169C(v26, v91, &qword_27F23C038);
    swift_storeEnumTagMultiPayload();
    sub_24F1E077C();
    sub_24F1E0968();
    sub_24F924E28();
    v56 = v26;
  }

  return sub_24E601704(v56, v55);
}

uint64_t sub_24F1E05F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (v2[2])
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  if (v2[1])
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return sub_24F1DF6E8(a1, v4 | *v2 | v3, a2);
}

uint64_t getEnumTagSinglePayload for OnboardingButtonStyleViewModifier(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = v4 - 2;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t sub_24F1E06C8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23BF18);
  sub_24E602068(&qword_27F23BF28, &qword_27F23BF18);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24F1E077C()
{
  result = qword_27F23C058;
  if (!qword_27F23C058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23C038);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23C040);
    sub_24F924C38();
    sub_24E602068(&qword_27F23C048, &qword_27F23C040);
    sub_24F1E0920(&qword_27F21A8C0, MEMORY[0x277CDDEE0]);
    swift_getOpaqueTypeConformance2();
    sub_24F9254A8();
    sub_24F1E0920(&qword_27F23C060, MEMORY[0x277CDE340]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C058);
  }

  return result;
}

uint64_t sub_24F1E0920(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24F1E0968()
{
  result = qword_27F23C068;
  if (!qword_27F23C068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23C010);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23C040);
    sub_24F925278();
    sub_24E602068(&qword_27F23C048, &qword_27F23C040);
    sub_24F1E0920(&qword_27F23C050, MEMORY[0x277CE0638]);
    swift_getOpaqueTypeConformance2();
    sub_24F9240F8();
    sub_24F1E0920(&qword_27F22B3C8, MEMORY[0x277CDDA98]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C068);
  }

  return result;
}

unint64_t sub_24F1E0B1C()
{
  result = qword_27F23C070;
  if (!qword_27F23C070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23C078);
    sub_24F1E077C();
    sub_24F1E0968();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C070);
  }

  return result;
}

uint64_t ChartOrCategoryBrickContext.BrickType.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

uint64_t ChartOrCategoryBrickContext.LabelMetrics.init(numberOfLines:fontUseCase:contentSizeCategoryMapping:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  v9 = type metadata accessor for ChartOrCategoryBrickContext.LabelMetrics(0);
  v10 = *(v9 + 20);
  v11 = sub_24F922378();
  result = (*(*(v11 - 8) + 32))(&a5[v10], a2, v11);
  v13 = &a5[*(v9 + 24)];
  *v13 = a3;
  *(v13 + 1) = a4;
  return result;
}

uint64_t ChartOrCategoryBrickContext.LabelMetrics.fontUseCase.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ChartOrCategoryBrickContext.LabelMetrics(0) + 20);
  v4 = sub_24F922378();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ChartOrCategoryBrickContext.LabelMetrics.contentSizeCategoryMapping.getter()
{
  v1 = *(v0 + *(type metadata accessor for ChartOrCategoryBrickContext.LabelMetrics(0) + 24));
  sub_24ED20BA0(v1);
  return v1;
}

uint64_t sub_24F1E0EAC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a3;
  v64 = sub_24F922378();
  v5 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v60 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v59 = &v51 - v8;
  v56 = type metadata accessor for PlaceholderChartOrCategoryBrickFontStyles();
  MEMORY[0x28223BE20](v56);
  v65 = (&v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for ChartOrCategoryBrickContext(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E615E00(a1, v12);
  sub_24E615E00(a1, v66);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C098);
  type metadata accessor for SearchChartOrCategory();
  v13 = swift_dynamicCast();
  v14 = v13;
  if (v13)
  {
  }

  __swift_destroy_boxed_opaque_existential_1(v66);
  v12[v10[7]] = v14;
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  (*(v16 + 16))(v66, v15, v16);
  v17 = LOBYTE(v66[0]);
  v12[40] = v66[0];
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v20 = (*(v19 + 24))(v18, v19);
  v63 = a1;
  LODWORD(v54) = v17;
  if (v20)
  {
    LOBYTE(v66[0]) = v17;
    v21 = sub_24F1E1D38(v20, v66);
  }

  else
  {
    v21 = 0;
  }

  v22 = v10[8];
  v55 = v21;
  *&v12[v22] = v21;
  v57 = v10;
  v58 = v12;
  *&v12[v10[9]] = a2;
  v23 = *MEMORY[0x277D76918];
  v25 = v64;
  v24 = v65;
  *v65 = *MEMORY[0x277D76918];
  *(v24 + 2) = 0;
  v26 = *MEMORY[0x277D22680];
  v61 = v5;
  v27 = *(v5 + 104);
  (v27)(v24, v26, v25);
  v28 = v56;
  v29 = v24 + *(v56 + 20);
  *v29 = v23;
  *(v29 + 2) = 0;
  v51 = v29;
  v27();
  v30 = (v24 + v28[6]);
  *v30 = v23;
  *(v30 + 2) = 0;
  (v27)(v30, v26, v25);
  v31 = v24 + v28[7];
  *v31 = v23;
  *(v31 + 2) = 0;
  (v27)(v31, v26, v25);
  v32 = v24 + v28[8];
  *v32 = v23;
  *(v32 + 2) = 0;
  (v27)(v32, v26, v25);
  v33 = v24 + v28[9];
  *v33 = v23;
  *(v33 + 2) = 0;
  (v27)(v33, v26, v25);
  v34 = v61;
  v35 = v23;
  v36 = *(v34 + 16);
  v52 = v35;
  if (v54)
  {
    if (v54 == 1)
    {
      v53 = sub_24F1E2FC8;
      v54 = sub_24F1E2FC8;
      v56 = 2;
    }

    else
    {
      v53 = sub_24F1E2FCC;
      v54 = sub_24F1E2FD0;
      v56 = 3;
      v30 = v32;
      v31 = v33;
    }
  }

  else
  {
    v56 = 3;
    v30 = v65;
    v31 = v51;
    v53 = sub_24F1E2FD4;
    v54 = sub_24F1E2FD8;
  }

  v37 = v59;
  v38 = v64;
  v36(v59, v30, v64);
  v39 = v60;
  v36(v60, v31, v38);
  v40 = v58;
  v41 = &v58[v57[6]];
  v42 = v52;

  v43 = type metadata accessor for ChartOrCategoryBrickContext.BrickLabelMetrics(0);
  v44 = v41 + *(v43 + 20);
  *v44 = 2;
  v45 = type metadata accessor for ChartOrCategoryBrickContext.LabelMetrics(0);
  v46 = *(v34 + 32);
  v46(&v44[*(v45 + 20)], v37, v38);
  v47 = &v44[*(v45 + 24)];
  *v47 = v53;
  v47[1] = 0;
  v48 = v41 + *(v43 + 24);
  *v48 = 1;
  v46(&v48[*(v45 + 20)], v39, v38);
  v49 = &v48[*(v45 + 24)];
  *v49 = v54;
  v49[1] = 0;
  *v41 = v56;
  sub_24F1E26C0(v65);
  sub_24F1E1C58(v40, v62, type metadata accessor for ChartOrCategoryBrickContext);
  return __swift_destroy_boxed_opaque_existential_1(v63);
}

uint64_t ChartOrCategoryBrickContext.init(model:fontStyles:in:)@<X0>(void *a1@<X0>, id (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v50 = a5;
  v51 = a3;
  v49 = a2;
  v7 = sub_24F922378();
  v47 = *(v7 - 8);
  v48 = v7;
  MEMORY[0x28223BE20](v7);
  v52 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v45 - v10;
  v12 = type metadata accessor for ChartOrCategoryBrickContext(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E615E00(a1, v14);
  sub_24E615E00(a1, v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C098);
  type metadata accessor for SearchChartOrCategory();
  v15 = swift_dynamicCast();
  v16 = v15;
  if (v15)
  {
  }

  __swift_destroy_boxed_opaque_existential_1(v54);
  v14[v12[7]] = v16;
  v18 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  (*(v17 + 16))(v54, v18, v17);
  v19 = LOBYTE(v54[0]);
  v14[40] = v54[0];
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v22 = (*(v21 + 24))(v20, v21);
  if (v22)
  {
    LOBYTE(v54[0]) = v19;
    v23 = sub_24F1E1D38(v22, v54);
  }

  else
  {
    v23 = 0;
  }

  *&v14[v12[8]] = v23;
  *&v14[v12[9]] = a4;
  LOBYTE(v53) = v16;
  (v49)(v54, &v53);
  v25 = v55;
  v24 = v56;
  __swift_project_boxed_opaque_existential_1(v54, v55);
  v46 = v11;
  if (!v19)
  {
    v24[1](v25, v24);
    v30 = v55;
    v31 = v56;
    __swift_project_boxed_opaque_existential_1(v54, v55);
    v31[2](v30, v31);
    v28 = sub_24F1E1CE8;
    v32 = sub_24F1E1D10;
LABEL_11:
    v49 = v32;
    v29 = 3;
    goto LABEL_12;
  }

  if (v19 != 1)
  {
    v24[5](v25, v24);
    v33 = v55;
    v34 = v56;
    __swift_project_boxed_opaque_existential_1(v54, v55);
    v34[6](v33, v34);
    v28 = sub_24F1E1C08;
    v32 = sub_24F1E1C30;
    goto LABEL_11;
  }

  v24[3](v25, v24);
  v26 = v55;
  v27 = v56;
  __swift_project_boxed_opaque_existential_1(v54, v55);
  v27[4](v26, v27);
  v28 = sub_24F1E1CC0;
  v49 = sub_24F1E2FC8;
  v29 = 2;
LABEL_12:
  v45 = v29;

  v35 = &v14[v12[6]];
  v36 = type metadata accessor for ChartOrCategoryBrickContext.BrickLabelMetrics(0);
  v37 = &v35[*(v36 + 20)];
  *v37 = 2;
  v38 = type metadata accessor for ChartOrCategoryBrickContext.LabelMetrics(0);
  v39 = *(v47 + 32);
  v40 = v48;
  v39(&v37[*(v38 + 20)], v46, v48);
  v41 = &v37[*(v38 + 24)];
  *v41 = v28;
  v41[1] = 0;
  v42 = &v35[*(v36 + 24)];
  *v42 = 1;
  v39(&v42[*(v38 + 20)], v52, v40);
  v43 = &v42[*(v38 + 24)];
  *v43 = v49;
  v43[1] = 0;
  *v35 = v45;
  __swift_destroy_boxed_opaque_existential_1(v54);
  sub_24F1E1C58(v14, v50, type metadata accessor for ChartOrCategoryBrickContext);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ChartOrCategoryBrickContext.brickType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ChartOrCategoryBrickContext(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t ChartOrCategoryBrickContext.currentArtwork.getter()
{
  type metadata accessor for ChartOrCategoryBrickContext(0);
}

id ChartOrCategoryBrickContext.traitCollection.getter()
{
  v1 = *(v0 + *(type metadata accessor for ChartOrCategoryBrickContext(0) + 36));

  return v1;
}

uint64_t sub_24F1E1AD0()
{
  v0 = type metadata accessor for ChartOrCategoryBrickContext(0);
  __swift_allocate_value_buffer(v0, qword_27F23C080);
  v1 = __swift_project_value_buffer(v0, qword_27F23C080);
  v4[3] = &type metadata for PlaceholderBrick;
  v4[4] = &protocol witness table for PlaceholderBrick;
  v2 = swift_allocObject();
  v4[0] = v2;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0xE000000000000000;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 40) = 0;
  return sub_24F1E0EAC(v4, [objc_allocWithZone(MEMORY[0x277D75C80]) init], v1);
}

uint64_t static ChartOrCategoryBrickContext.measurableContext.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F210FE8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ChartOrCategoryBrickContext(0);
  v3 = __swift_project_value_buffer(v2, qword_27F23C080);
  return sub_24F1E1E74(v3, a1, type metadata accessor for ChartOrCategoryBrickContext);
}

id sub_24F1E1C08(uint64_t a1)
{
  v1 = sub_24F1E2CD4(a1);

  return v1;
}

id sub_24F1E1C30(uint64_t a1)
{
  v1 = sub_24F1E2E84(a1);

  return v1;
}

uint64_t sub_24F1E1C58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_24F1E1CC0(uint64_t a1)
{
  v1 = sub_24F1E2B90(a1);

  return v1;
}

id sub_24F1E1CE8(uint64_t a1)
{
  v1 = sub_24F1E271C(a1);

  return v1;
}

id sub_24F1E1D10(uint64_t a1)
{
  v1 = sub_24F1E29DC(a1);

  return v1;
}

unint64_t sub_24F1E1D38(unint64_t a1, unsigned __int8 *a2)
{
  if (*a2 > 1u)
  {
    if (a1 >> 62)
    {
      result = sub_24F92C738();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      goto LABEL_23;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
    }

    __break(1u);
LABEL_15:
    if (v4)
    {
      result = sub_24F92C738();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    if ((a1 & 0xC000000000000001) == 0)
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }
    }

LABEL_23:
    result = 0;
    return MEMORY[0x253052270](result, a1);
  }

  v3 = sub_24F92BF88();
  v4 = a1 >> 62;
  if ((v3 & 1) == 0)
  {
    goto LABEL_15;
  }

  if (!v4)
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = sub_24F92C738();
  if (result)
  {
LABEL_5:
    if (!__OFSUB__(result--, 1))
    {
      if ((a1 & 0xC000000000000001) == 0)
      {
        if ((result & 0x8000000000000000) == 0)
        {
          if (result < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
          }

LABEL_32:
          __break(1u);
          return result;
        }

LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      return MEMORY[0x253052270](result, a1);
    }

    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  return result;
}

uint64_t sub_24F1E1E74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F1E1EE0()
{
  result = qword_27F23C0A0;
  if (!qword_27F23C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C0A0);
  }

  return result;
}

uint64_t sub_24F1E1F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ChartOrCategoryBrickContext.BrickLabelMetrics(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F1E2008(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ChartOrCategoryBrickContext.BrickLabelMetrics(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F1E20AC()
{
  sub_24F1E2170();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ChartOrCategoryBrickContext.BrickLabelMetrics(319);
    if (v1 <= 0x3F)
    {
      sub_24EFF9870();
      if (v2 <= 0x3F)
      {
        sub_24F1E21D4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_24F1E2170()
{
  result = qword_27F23C0B8;
  if (!qword_27F23C0B8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F23C0B8);
  }

  return result;
}

unint64_t sub_24F1E21D4()
{
  result = qword_27F227080;
  if (!qword_27F227080)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F227080);
  }

  return result;
}

uint64_t sub_24F1E2244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F922378();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_24F1E2324(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24F922378();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

void sub_24F1E23E0()
{
  sub_24F922378();
  if (v0 <= 0x3F)
  {
    sub_24F1E2474();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24F1E2474()
{
  if (!qword_27F22EB18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F22EB20);
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F22EB18);
    }
  }
}

uint64_t sub_24F1E24EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ChartOrCategoryBrickContext.LabelMetrics(0);
  v7 = *(*(v6 - 8) + 48);
  v8 = a1 + *(a3 + 20);

  return v7(v8, a2, v6);
}

uint64_t sub_24F1E257C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for ChartOrCategoryBrickContext.LabelMetrics(0);
  v8 = *(*(v7 - 8) + 56);
  v9 = a1 + *(a4 + 20);

  return v8(v9, a2, a2, v7);
}

uint64_t sub_24F1E25FC()
{
  result = type metadata accessor for ChartOrCategoryBrickContext.LabelMetrics(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24F1E2678()
{

  return swift_deallocObject();
}

uint64_t sub_24F1E26C0(uint64_t a1)
{
  v2 = type metadata accessor for PlaceholderChartOrCategoryBrickFontStyles();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F1E271C(uint64_t a1)
{
  v2 = sub_24F92B0D8();
  v4 = v3;
  if (v2 == sub_24F92B0D8() && v4 == v5)
  {
  }

  else
  {
    v6 = sub_24F92CE08();

    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  if ((sub_24F92C138() & 1) == 0)
  {
    return a1;
  }

LABEL_6:
  v7 = *MEMORY[0x277D76800];
  v8 = *MEMORY[0x277D76808];
  v9 = v7;
  result = sub_24F92C178();
  if (result)
  {
    if (sub_24F92C168())
    {
      v11 = sub_24F92C178();

      if (v11)
      {
        return v8;
      }
    }

    else
    {
    }

    v12 = *MEMORY[0x277D767F8];
    v13 = sub_24F92B0D8();
    v15 = v14;
    if (v13 == sub_24F92B0D8() && v15 == v16)
    {

      return v9;
    }

    v17 = sub_24F92CE08();

    v8 = v9;
    if (v17)
    {
      return v8;
    }

    v8 = v12;
    v18 = *MEMORY[0x277D767F0];
    v19 = sub_24F92B0D8();
    v21 = v20;
    if (v19 == sub_24F92B0D8() && v21 == v22)
    {

      return v8;
    }

    v23 = sub_24F92CE08();

    if (v23)
    {
      return v8;
    }

    v24 = sub_24F92B0D8();
    v26 = v25;
    if (v24 == sub_24F92B0D8() && v26 == v27)
    {

      goto LABEL_24;
    }

    v28 = sub_24F92CE08();

    if (v28)
    {
LABEL_24:
      if (sub_24F92C178())
      {
        return v18;
      }

      else
      {
        return a1;
      }
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24F1E29DC(uint64_t a1)
{
  v2 = sub_24F92B0D8();
  v4 = v3;
  if (v2 == sub_24F92B0D8() && v4 == v5)
  {

    goto LABEL_15;
  }

  v7 = sub_24F92CE08();

  if (v7)
  {
LABEL_15:
    v18 = MEMORY[0x277D767F0];
    return *v18;
  }

  v8 = sub_24F92B0D8();
  v10 = v9;
  if (v8 == sub_24F92B0D8() && v10 == v11)
  {

    goto LABEL_19;
  }

  v13 = sub_24F92CE08();

  if (v13)
  {
LABEL_19:
    v18 = MEMORY[0x277D767F8];
    return *v18;
  }

  v14 = sub_24F92B0D8();
  v16 = v15;
  if (v14 == sub_24F92B0D8() && v16 == v17)
  {
  }

  else
  {
    v20 = sub_24F92CE08();

    if ((v20 & 1) == 0)
    {
      return a1;
    }
  }

  if (sub_24F92C138())
  {
    return *MEMORY[0x277D76800];
  }

  return a1;
}

uint64_t sub_24F1E2B90(uint64_t a1)
{
  v2 = sub_24F92B0D8();
  v4 = v3;
  if (v2 == sub_24F92B0D8() && v4 == v5)
  {
  }

  else
  {
    v6 = sub_24F92CE08();

    if ((v6 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  if (sub_24F92C138())
  {
    return *MEMORY[0x277D76808];
  }

LABEL_7:
  v8 = *MEMORY[0x277D76838];
  v9 = sub_24F92B0D8();
  v11 = v10;
  if (v9 != sub_24F92B0D8() || v11 != v12)
  {
    v14 = sub_24F92CE08();

    if (v14)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

LABEL_14:
  if (sub_24F92C178())
  {
    return v8;
  }

  else
  {
    return a1;
  }
}

uint64_t sub_24F1E2CD4(uint64_t a1)
{
  v2 = *MEMORY[0x277D76820];
  v3 = *MEMORY[0x277D76838];
  v4 = v2;
  result = sub_24F92C178();
  if (result)
  {
    if (sub_24F92C168())
    {
      v6 = sub_24F92C178();

      if (v6)
      {
        return v3;
      }
    }

    else
    {
    }

    v7 = sub_24F92B0D8();
    v9 = v8;
    if (v7 == sub_24F92B0D8() && v9 == v10)
    {
    }

    else
    {
      v12 = sub_24F92CE08();

      if ((v12 & 1) == 0)
      {
        v13 = sub_24F92B0D8();
        v15 = v14;
        if (v13 == sub_24F92B0D8() && v15 == v16)
        {

          goto LABEL_18;
        }

        v17 = sub_24F92CE08();

        if (v17)
        {
LABEL_18:
          if (sub_24F92C138())
          {
            return v4;
          }

          else
          {
            return a1;
          }
        }

        return a1;
      }
    }

    return *MEMORY[0x277D76828];
  }

  __break(1u);
  return result;
}

uint64_t sub_24F1E2E84(uint64_t a1)
{
  v2 = *MEMORY[0x277D76820];
  v3 = *MEMORY[0x277D76838];
  v4 = v2;
  result = sub_24F92C178();
  if (result)
  {
    if (sub_24F92C168())
    {
      v6 = sub_24F92C178();

      if (v6)
      {
        return v3;
      }
    }

    else
    {
    }

    v7 = sub_24F92B0D8();
    v9 = v8;
    if (v7 != sub_24F92B0D8() || v9 != v10)
    {
      v12 = sub_24F92CE08();

      if (v12)
      {
        goto LABEL_13;
      }

      __break(1u);
    }

LABEL_13:
    if (sub_24F92C178())
    {
      return *MEMORY[0x277D76828];
    }

    else
    {
      return a1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24F1E2FDC()
{
  v1 = 0x6E656D6563616C70;
  v2 = 0x777472416E6F6369;
  if (*v0 != 2)
  {
    v2 = 7107189;
  }

  if (*v0)
  {
    v1 = 0x756F72676B636162;
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

uint64_t sub_24F1E3070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F1E3988(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F1E3098(uint64_t a1)
{
  v2 = sub_24F1E3398();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F1E30D4(uint64_t a1)
{
  v2 = sub_24F1E3398();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ThreeDimensionalMediaArtworkContent.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C0E0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v15 = *(v1 + 2);
  v16 = v9;
  v10 = *(v1 + 3);
  v13[1] = *(v1 + 4);
  v14 = v10;
  v13[0] = *(v1 + 5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F1E3398();
  sub_24F92D128();
  v22 = v8;
  v21 = 0;
  sub_24F1E33EC();
  sub_24F92CD48();
  if (!v2)
  {
    v12 = v14;
    v20 = 1;
    sub_24F92CCA8();
    v17 = v12;
    v19 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219538);
    sub_24F1E37A8(&qword_27F2277B0, &qword_27F214060);
    sub_24F92CD48();
    v18 = 3;
    sub_24F92CCA8();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_24F1E3398()
{
  result = qword_27F23C0E8;
  if (!qword_27F23C0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C0E8);
  }

  return result;
}

unint64_t sub_24F1E33EC()
{
  result = qword_27F23C0F0;
  if (!qword_27F23C0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C0F0);
  }

  return result;
}

uint64_t ThreeDimensionalMediaArtworkContent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C0F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F1E3398();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = 0;
  sub_24F1E3754();
  sub_24F92CC68();
  v9 = v28;
  v26 = 1;
  v10 = sub_24F92CBC8();
  v12 = v11;
  v22 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219538);
  v25 = 2;
  sub_24F1E37A8(&qword_27F227788, &qword_27F214018);
  sub_24F92CC68();
  v21 = v23;
  v24 = 3;
  v13 = sub_24F92CBC8();
  v15 = v14;
  v16 = *(v6 + 8);
  v20 = v13;
  v16(v8, v5);
  *a2 = v9;
  v17 = v21;
  *(a2 + 8) = v22;
  *(a2 + 16) = v12;
  v18 = v20;
  *(a2 + 24) = v17;
  *(a2 + 32) = v18;
  *(a2 + 40) = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24F1E3754()
{
  result = qword_27F23C100;
  if (!qword_27F23C100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C100);
  }

  return result;
}

uint64_t sub_24F1E37A8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219538);
    sub_24E94B634(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F1E3884()
{
  result = qword_27F23C108;
  if (!qword_27F23C108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C108);
  }

  return result;
}

unint64_t sub_24F1E38DC()
{
  result = qword_27F23C110;
  if (!qword_27F23C110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C110);
  }

  return result;
}

unint64_t sub_24F1E3934()
{
  result = qword_27F23C118;
  if (!qword_27F23C118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C118);
  }

  return result;
}

uint64_t sub_24F1E3988(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656D6563616C70 && a2 == 0xEE00656C79745374;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x777472416E6F6369 && a2 == 0xEC000000736B726FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24F1E3B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FriendsPlayingPageIntent();
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

uint64_t sub_24F1E3BE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FriendsPlayingPageIntent();
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

uint64_t sub_24F1E3CBC()
{
  result = type metadata accessor for FriendsPlayingPageIntent();
  if (v1 <= 0x3F)
  {
    result = sub_24F928FD8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24F1E3D5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F1EA254(&qword_27F227430, type metadata accessor for FriendsPlayingOptionProvider);
  sub_24F91FD88();

  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_24F1E3E2C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FriendsPlayingPageIntent();
  MEMORY[0x28223BE20](v4);
  v52 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F48);
  MEMORY[0x28223BE20](v51);
  v50 = &v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0);
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x28223BE20](v7);
  v46 = &v41 - v8;
  v41 = sub_24F92A498();
  v45 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F91F648();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v42 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v41 - v14;
  v16 = type metadata accessor for FriendsPlayingPageView(0);
  v17 = v16 - 8;
  v18 = *(v16 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  v53 = v4;
  v57[3] = v4;
  v47 = sub_24F1EA254(&qword_27F21D330, type metadata accessor for FriendsPlayingPageIntent);
  v57[4] = v47;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v57);
  sub_24F1E5C90(v2, boxed_opaque_existential_1, type metadata accessor for FriendsPlayingPageIntent);
  v20 = *(v2 + *(v17 + 28));
  sub_24F1E5C90(v2, &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FriendsPlayingPageView);
  v21 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v22 = swift_allocObject();
  sub_24F1E9218(&v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for FriendsPlayingPageView);
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  swift_storeEnumTagMultiPayload();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C130);
  v24 = v23[13];
  *(a1 + v24) = swift_getKeyPath();
  v25 = v41;
  swift_storeEnumTagMultiPayload();
  v26 = a1 + v23[14];
  *v26 = swift_getKeyPath();
  v26[8] = 0;
  v27 = a1 + v23[15];
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  v28 = v23[16];
  *(a1 + v28) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  swift_storeEnumTagMultiPayload();
  sub_24F91F618();
  (*(v11 + 16))(v42, v15, v10);
  sub_24F926F28();
  (*(v11 + 8))(v15, v10);
  v29 = a1 + v23[18];
  LOBYTE(v54) = 1;
  sub_24F926F28();
  v30 = v56;
  *v29 = v55;
  *(v29 + 1) = v30;
  v31 = (a1 + v23[30]);
  sub_24F929EB8();
  v54 = sub_24F929EA8();
  sub_24F926F28();
  v32 = v56;
  *v31 = v55;
  v31[1] = v32;
  v33 = v43;
  sub_24E615E00(v57, a1 + v23[19]);
  sub_24F928F28();
  if (qword_27F2108A8 != -1)
  {
    swift_once();
  }

  v34 = v46;
  sub_24F92A448();
  v35 = v49;
  sub_24F92A408();
  (*(v48 + 8))(v34, v35);
  (*(v45 + 8))(v33, v25);
  v36 = v56;
  v37 = (a1 + v23[23]);
  *v37 = v55;
  v37[1] = v36;
  sub_24F929158();
  sub_24F928F28();
  type metadata accessor for LocalPlayerProvider();
  sub_24F928EF8();
  *(a1 + v23[25]) = v55;
  v38 = (a1 + v23[27]);
  *v38 = sub_24F1E45F4;
  v38[1] = 0;
  v39 = (a1 + v23[28]);
  *v39 = sub_24F1E695C;
  v39[1] = v22;
  *(a1 + v23[20]) = v20;
  *(a1 + v23[22]) = 1;
  *(a1 + v23[21]) = 2;
  type metadata accessor for FeedRefreshNotifier();

  sub_24F928F28();
  *(a1 + v23[26]) = v55;
  type metadata accessor for NetworkConnectionMonitor();
  sub_24F928F28();
  *(a1 + v23[31]) = v55;
  sub_24F1E5C90(boxed_opaque_existential_1, v52, type metadata accessor for FriendsPlayingPageIntent);
  type metadata accessor for Page(0);
  sub_24F9217D8();
  sub_24F926F28();

  return __swift_destroy_boxed_opaque_existential_1(v57);
}

uint64_t sub_24F1E45F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F220E38);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14 - v8;
  v10 = type metadata accessor for Page(0);
  sub_24E60169C(a1 + v10[20], v9, qword_27F220E38);
  v11 = *(a1 + v10[21]);
  sub_24E60169C(a1 + v10[24], v6, &qword_27F21D8F8);
  v12 = type metadata accessor for Page.Background(0);
  LOBYTE(a1) = (*(*(v12 - 8) + 48))(v6, 1, v12) == 1;
  sub_24E601704(v6, &qword_27F21D8F8);
  sub_24EA56368(v9, a2);
  result = type metadata accessor for DefaultPageHeaderView();
  *(a2 + *(result + 20)) = v11;
  *(a2 + *(result + 24)) = a1;
  return result;
}

uint64_t sub_24F1E47A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v20 - v6;
  v8 = sub_24F92A498();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F1E5C90(a1, a2, type metadata accessor for Page);
  type metadata accessor for FriendsPlayingPageView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215720);
  v12 = type metadata accessor for FriendsPlayingPageView.PageContent(0);
  sub_24F928F28();
  sub_24F928F28();
  if (qword_27F211860 != -1)
  {
    swift_once();
  }

  sub_24F92A448();
  sub_24F92A408();
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  v13 = v21;
  v14 = v22;
  type metadata accessor for FriendsPlayingOptionProvider();
  v15 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C138);
  swift_allocObject();
  *(v15 + 16) = sub_24F9280D8();
  *(v15 + 24) = 0;
  sub_24F91FDB8();
  v16 = (a2 + *(v12 + 24));
  *v16 = v13;
  v16[1] = v14;
  v17 = (a2 + *(v12 + 28));
  v20[1] = v15;
  result = sub_24F926F28();
  v19 = v22;
  *v17 = v21;
  v17[1] = v19;
  return result;
}

uint64_t sub_24F1E4A8C@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = type metadata accessor for FriendsPlayingPageView.PageContent(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ED68);
  MEMORY[0x28223BE20](v21);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C188);
  v6 = *(v5 - 8);
  v22 = v5;
  v23 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = v20 - v7;
  v26 = *(v1 + *(type metadata accessor for Page(0) + 48));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ED70);
  sub_24E602068(&qword_27F21ED78, &qword_27F21ED70);
  sub_24F921BA8();
  v20[1] = swift_getKeyPath();
  sub_24F1E5C90(v1, v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FriendsPlayingPageView.PageContent);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_24F1E9218(v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for FriendsPlayingPageView.PageContent);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_24F1EA040;
  *(v11 + 24) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C190);
  sub_24E602068(&qword_27F21ED88, &qword_27F21ED68);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229248);
  v13 = type metadata accessor for FriendsPlayingShelfIntent();
  v14 = sub_24E602068(&qword_27F229270, &qword_27F229248);
  v15 = sub_24F1EA254(&qword_27F21D488, type metadata accessor for FriendsPlayingShelfIntent);
  v26 = v12;
  v27 = v13;
  v28 = v14;
  v29 = v15;
  swift_getOpaqueTypeConformance2();
  sub_24F927228();
  v25 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C198);
  sub_24F1EA108();
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23C1A8);
  v17 = sub_24E602068(&qword_27F23C1B0, &qword_27F23C1A8);
  v26 = v16;
  v27 = v17;
  swift_getOpaqueTypeConformance2();
  v18 = v22;
  sub_24F926A58();
  return (*(v23 + 8))(v8, v18);
}

uint64_t sub_24F1E4F4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a4;
  v7 = type metadata accessor for FriendsPlayingPageView.PageContent(0);
  v8 = v7 - 8;
  v34 = *(v7 - 8);
  v33 = *(v34 + 64);
  MEMORY[0x28223BE20](v7);
  v32 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EDC0);
  MEMORY[0x28223BE20](v31);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229248);
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  sub_24E615E00(a2, v40);
  v13 = *(type metadata accessor for Page(0) + 84);
  v30 = a3;
  LOBYTE(a2) = *(a3 + v13);
  sub_24E615E00(a3 + *(v8 + 28), v39);
  sub_24E615E00(v40, v37);
  sub_24E615E00(v39, v36);
  v14 = v10[17];
  *&v12[v14] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EDD8);
  swift_storeEnumTagMultiPayload();
  v12[v10[13]] = a2;
  v15 = __swift_project_boxed_opaque_existential_1(v37, v38);
  v16 = MEMORY[0x28223BE20](v15);
  (*(v18 + 16))(&v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768);
  sub_24F928D38();
  v19 = &v12[v10[14]];
  *v19 = a1;
  v19[8] = 0;
  sub_24E615E00(v36, &v12[v10[15]]);
  v20 = &v12[v10[16]];
  *v20 = sub_24F78343C;
  v20[1] = 0;
  v21 = __swift_project_boxed_opaque_existential_1(v37, v38);
  v22 = MEMORY[0x28223BE20](v21);
  (*(v24 + 16))(&v29 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
  type metadata accessor for GSKShelf();
  sub_24E602068(&qword_27F21EDE0, &qword_27F213768);
  sub_24F9217C8();
  sub_24F926F28();
  __swift_destroy_boxed_opaque_existential_1(v36);
  __swift_destroy_boxed_opaque_existential_1(v39);
  __swift_destroy_boxed_opaque_existential_1(v40);
  __swift_destroy_boxed_opaque_existential_1(v37);
  type metadata accessor for FriendsPlayingShelfIntent();
  v25 = v32;
  sub_24F1E5C90(v30, v32, type metadata accessor for FriendsPlayingPageView.PageContent);
  v26 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v27 = swift_allocObject();
  sub_24F1E9218(v25, v27 + v26, type metadata accessor for FriendsPlayingPageView.PageContent);
  sub_24E602068(&qword_27F229270, &qword_27F229248);
  sub_24F1EA254(&qword_27F21D488, type metadata accessor for FriendsPlayingShelfIntent);
  sub_24F925EF8();

  return sub_24E601704(v12, &qword_27F229248);
}

uint64_t sub_24F1E54D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D110);
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213760);
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F1E561C, 0, 0);
}

uint64_t sub_24F1E561C()
{
  sub_24F92B7F8();
  *(v0 + 128) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F1E56B0, v2, v1);
}

uint64_t sub_24F1E56B0()
{
  v1 = v0[8];

  v2 = (v1 + *(type metadata accessor for FriendsPlayingPageView.PageContent(0) + 28));
  v4 = *v2;
  v3 = v2[1];
  v0[2] = v4;
  v0[3] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C1C0);
  sub_24F926F38();
  v0[17] = v0[4];

  return MEMORY[0x2822009F8](sub_24F1E5760, 0, 0);
}

uint64_t sub_24F1E5760()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = *(v0 + 80);
  v7 = *(v0 + 88);
  v8 = *(v0 + 72);
  v14 = *(v0 + 40);
  v9 = swift_task_alloc();
  v10 = *(v0 + 48);
  *(v9 + 16) = v1;
  *(v9 + 24) = v10;
  type metadata accessor for GSKShelf();
  (*(v6 + 104))(v7, *MEMORY[0x277D85778], v8);
  sub_24F92B928();

  (*(v4 + 16))(v2, v3, v5);
  sub_24E602068(&qword_27F22D120, &qword_27F213760);
  sub_24F9280F8();

  (*(v4 + 8))(v3, v5);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768);
  (*(*(v11 - 8) + 56))(v14, 0, 1, v11);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_24F1E5968(uint64_t a1)
{
  v2 = sub_24F925018();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C1A8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_24F924FF8();
  v10 = a1;
  type metadata accessor for FriendsPlayingAccessoryView();
  sub_24F1EA254(&qword_27F23C1B8, type metadata accessor for FriendsPlayingAccessoryView);
  sub_24F9242A8();
  v7 = sub_24E602068(&qword_27F23C1B0, &qword_27F23C1A8);
  MEMORY[0x25304AA30](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}