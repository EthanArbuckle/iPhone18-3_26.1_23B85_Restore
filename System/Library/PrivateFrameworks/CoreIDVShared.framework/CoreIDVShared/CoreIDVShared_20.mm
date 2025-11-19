unint64_t sub_225B71294()
{
  result = qword_27D73E4F8;
  if (!qword_27D73E4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E4F8);
  }

  return result;
}

unint64_t sub_225B712E8()
{
  result = qword_27D73E510;
  if (!qword_27D73E510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E510);
  }

  return result;
}

uint64_t IdentityProofingUnorderedUI.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E518);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225B71294();
  sub_225CCFCA4();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E500);
    sub_225B714F4(&qword_27D73E520, sub_225B71578);
    sub_225CCF674();
    (*(v6 + 8))(v9, v5);
    *a2 = v11[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_225B714F4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73E500);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_225B71578()
{
  result = qword_27D73E528;
  if (!qword_27D73E528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E528);
  }

  return result;
}

uint64_t IdentityProofingUnorderedUIElementOption.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_title);

  return v1;
}

uint64_t IdentityProofingUnorderedUIElementOption.subTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_subTitle);

  return v1;
}

uint64_t sub_225B716D8()
{
  sub_225CCE5B4();
}

uint64_t sub_225B717DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_225B73DC0();
  *a1 = result;
  return result;
}

void sub_225B7180C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x656C746974;
  v5 = 0xEB0000000073746ELL;
  v6 = 0x656D737365737361;
  v7 = 0xED00007974696C69;
  v8 = 0x6269737365636361;
  if (v2 != 4)
  {
    v8 = 0x6E6F6974706163;
    v7 = 0xE700000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x656C746954627573;
  if (v2 != 1)
  {
    v10 = 0x7374656C6C7562;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_225B718D8()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 0x656D737365737361;
  v4 = 0x6269737365636361;
  if (v1 != 4)
  {
    v4 = 0x6E6F6974706163;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C746954627573;
  if (v1 != 1)
  {
    v5 = 0x7374656C6C7562;
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

uint64_t sub_225B719A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_225B73DC0();
  *a1 = result;
  return result;
}

uint64_t sub_225B719C8(uint64_t a1)
{
  v2 = sub_225B74220();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B71A04(uint64_t a1)
{
  v2 = sub_225B74220();

  return MEMORY[0x2821FE720](a1, v2);
}

id IdentityProofingUnorderedUIElementOption.__allocating_init(title:subtitle:bullets:assessments:accessibility:caption:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = objc_allocWithZone(v8);
  v18 = &v17[OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_title];
  *v18 = a1;
  *(v18 + 1) = a2;
  v19 = &v17[OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_subTitle];
  *v19 = a3;
  *(v19 + 1) = a4;
  *&v17[OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_bullets] = a5;
  *&v17[OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_assessments] = a6;
  *&v17[OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_accessibility] = a7;
  *&v17[OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_caption] = a8;
  v21.receiver = v17;
  v21.super_class = v8;
  return objc_msgSendSuper2(&v21, sel_init);
}

id IdentityProofingUnorderedUIElementOption.init(title:subtitle:bullets:assessments:accessibility:caption:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ObjectType = swift_getObjectType();
  v18 = &v8[OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_title];
  *v18 = a1;
  *(v18 + 1) = a2;
  v19 = &v8[OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_subTitle];
  *v19 = a3;
  *(v19 + 1) = a4;
  *&v8[OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_bullets] = a5;
  *&v8[OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_assessments] = a6;
  *&v8[OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_accessibility] = a7;
  *&v8[OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_caption] = a8;
  v21.receiver = v8;
  v21.super_class = ObjectType;
  return objc_msgSendSuper2(&v21, sel_init);
}

Swift::Void __swiftcall IdentityProofingUnorderedUIElementOption.encode(with:)(NSCoder with)
{
  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_title + 8))
  {
    v3 = sub_225CCE444();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_subTitle + 8))
  {
    v5 = sub_225CCE444();
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_bullets))
  {
    v7 = sub_225CCE7F4();
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_assessments))
  {
    v9 = sub_225CCE2B4();
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_accessibility))
  {
    v11 = sub_225CCE2B4();
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_caption))
  {
    v13 = sub_225CCE2B4();
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v13 forKey:v14];
  swift_unknownObjectRelease();
}

id IdentityProofingUnorderedUIElementOption.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_225B73E0C();

  return v4;
}

id IdentityProofingUnorderedUIElementOption.init(coder:)(void *a1)
{
  v2 = sub_225B73E0C();

  return v2;
}

id IdentityProofingUnorderedUIElementOption.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IdentityProofingUnorderedUIElementOption.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t IdentityProofingUnorderedUIElementOption.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E560);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225B74220();
  sub_225CCFCE4();
  LOBYTE(v12) = 0;
  sub_225CCF734();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_225CCF734();
    v12 = *(v3 + OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_bullets);
    HIBYTE(v11) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
    sub_225A325B0(&qword_281059B28);
    sub_225CCF774();
    v12 = *(v3 + OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_assessments);
    HIBYTE(v11) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E570);
    sub_225AE120C(&qword_27D73D280);
    sub_225CCF774();
    v12 = *(v3 + OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_accessibility);
    HIBYTE(v11) = 4;
    sub_225CCF774();
    v12 = *(v3 + OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_caption);
    HIBYTE(v11) = 5;
    sub_225CCF774();
  }

  return (*(v6 + 8))(v9, v5);
}

id IdentityProofingUnorderedUIElementOption.init(from:)(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E580);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225B74220();
  sub_225CCFCA4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v21) = 0;
    v10 = sub_225CCF624();
    v12 = &v1[OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_title];
    *v12 = v10;
    v12[1] = v13;
    LOBYTE(v21) = 1;
    v14 = sub_225CCF624();
    v15 = &v1[OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_subTitle];
    *v15 = v14;
    v15[1] = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
    v20 = 2;
    sub_225A325B0(&qword_281059B18);
    sub_225CCF674();
    *&v1[OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_bullets] = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E570);
    v20 = 3;
    v17[1] = sub_225AE120C(&qword_281059B60);
    sub_225CCF674();
    *&v1[OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_assessments] = v21;
    v20 = 4;
    sub_225CCF674();
    *&v1[OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_accessibility] = v21;
    v20 = 5;
    sub_225CCF674();
    *&v1[OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_caption] = v21;
    v19.receiver = v1;
    v19.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v19, sel_init);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v3;
}

id sub_225B72978@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = IdentityProofingUnorderedUIElementOption.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t IdentityProofingUnorderedUIElement.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t IdentityProofingUnorderedUIElement.learnMoreURL.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t IdentityProofingUnorderedUIElement.privacyLinkIdentifier.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t IdentityProofingUnorderedUIElement.privacyLinkTitle.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

__n128 IdentityProofingUnorderedUIElement.init(title:messages:actions:imageAssets:options:learnMoreURL:privacyLinkIdentifier:privacyLinkTitle:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11, unint64_t a12)
{
  result = a10;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a7;
  a9[3].n128_u64[0] = a8;
  a9[3].n128_u64[1] = a6;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  a9[5].n128_u64[1] = a12;
  return result;
}

unint64_t sub_225B72AF0()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000015;
    if (v1 != 6)
    {
      v5 = 0xD000000000000010;
    }

    v6 = 0x726F4D6E7261656CLL;
    if (v1 != 4)
    {
      v6 = 0x736E6F6974706FLL;
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
    v2 = 0x656C746974;
    v3 = 0x736E6F69746361;
    if (v1 != 2)
    {
      v3 = 0x7373416567616D69;
    }

    if (*v0)
    {
      v2 = 0x736567617373656DLL;
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

uint64_t sub_225B72C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_225B74AB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_225B72C38(uint64_t a1)
{
  v2 = sub_225B74274();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B72C74(uint64_t a1)
{
  v2 = sub_225B74274();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IdentityProofingUnorderedUIElement.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E588);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v18 - v6;
  v8 = v1[2];
  v23 = v1[3];
  v24 = v8;
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[7];
  v21 = v1[6];
  v22 = v9;
  v19 = v11;
  v20 = v10;
  v12 = v1[9];
  v18[2] = v1[8];
  v18[3] = v12;
  v13 = v1[11];
  v18[0] = v1[10];
  v18[1] = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225B74274();
  sub_225CCFCE4();
  LOBYTE(v27) = 0;
  v14 = v25;
  sub_225CCF734();
  if (!v14)
  {
    v15 = v22;
    v16 = v23;
    v27 = v24;
    v26 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
    sub_225A325B0(&qword_281059B28);
    sub_225CCF774();
    v27 = v16;
    v26 = 2;
    sub_225CCF774();
    v27 = v15;
    v26 = 3;
    sub_225CCF774();
    LOBYTE(v27) = 4;
    sub_225CCF734();
    v27 = v19;
    v26 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E4E0);
    sub_225B742EC(&qword_27D73E590, &qword_27D73E598);
    sub_225CCF774();
    LOBYTE(v27) = 6;
    sub_225CCF734();
    LOBYTE(v27) = 7;
    sub_225CCF734();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t IdentityProofingUnorderedUIElement.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E5A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v30 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225B74274();
  sub_225CCFCA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v46[0]) = 0;
  *&v39 = sub_225CCF624();
  v38 = a2;
  *(&v39 + 1) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
  LOBYTE(v40) = 1;
  sub_225A325B0(&qword_281059B18);
  sub_225CCF674();
  v37 = v46[0];
  LOBYTE(v40) = 2;
  sub_225CCF674();
  v36 = v46[0];
  LOBYTE(v40) = 3;
  sub_225CCF674();
  v11 = v46[0];
  LOBYTE(v46[0]) = 4;
  v12 = sub_225CCF624();
  v14 = v13;
  v34 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E4E0);
  LOBYTE(v40) = 5;
  sub_225B742EC(&qword_281059B38, &qword_281059BB0);
  sub_225CCF674();
  v33 = v46[0];
  LOBYTE(v46[0]) = 6;
  v15 = sub_225CCF624();
  v35 = v16;
  v32 = 0;
  v31 = v15;
  v47 = 7;
  v17 = sub_225CCF624();
  v19 = v18;
  (*(v6 + 8))(v9, v5);
  v40 = v39;
  v20 = v14;
  v30 = v14;
  v21 = *(&v39 + 1);
  v22 = v37;
  *&v41 = v37;
  v23 = v36;
  *(&v41 + 1) = v36;
  *&v42 = v11;
  *(&v42 + 1) = v34;
  *&v43 = v20;
  v24 = v31;
  *(&v43 + 1) = v33;
  *&v44 = v31;
  *(&v44 + 1) = v35;
  *&v45 = v17;
  *(&v45 + 1) = v19;
  v25 = v43;
  v26 = v38;
  v38[2] = v42;
  v26[3] = v25;
  v27 = v45;
  v26[4] = v44;
  v26[5] = v27;
  v28 = v41;
  *v26 = v40;
  v26[1] = v28;
  sub_225B743B4(&v40, v46);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v46[0] = v39;
  v46[1] = v21;
  v46[2] = v22;
  v46[3] = v23;
  v46[4] = v11;
  v46[5] = v34;
  v46[6] = v30;
  v46[7] = v33;
  v46[8] = v24;
  v46[9] = v35;
  v46[10] = v17;
  v46[11] = v19;
  return sub_225B743EC(v46);
}

CoreIDVShared::IdentityProofingAttributeConfiguration __swiftcall IdentityProofingAttributeConfiguration.init(attributeMessages:messageReplacements:unorderedUI:)(Swift::OpaquePointer attributeMessages, Swift::OpaquePointer messageReplacements, Swift::OpaquePointer unorderedUI)
{
  v3->_rawValue = attributeMessages._rawValue;
  v3[1]._rawValue = messageReplacements._rawValue;
  v3[2]._rawValue = unorderedUI._rawValue;
  result.unorderedUI = unorderedUI;
  result.messageReplacements = messageReplacements;
  result.attributeMessages = attributeMessages;
  return result;
}

unint64_t sub_225B73700()
{
  v1 = 0x65726564726F6E75;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_225B73768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_225B74D5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_225B73790(uint64_t a1)
{
  v2 = sub_225B7441C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B737CC(uint64_t a1)
{
  v2 = sub_225B7441C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IdentityProofingAttributeConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E5A8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v13 - v7;
  v10 = *v1;
  v9 = v1[1];
  v14 = v1[2];
  v15 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225B7441C();

  sub_225CCFCE4();
  v17 = v10;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E570);
  sub_225AE120C(&qword_27D73D280);
  sub_225CCF7E4();

  if (!v2)
  {
    v11 = v14;
    v17 = v15;
    v16 = 1;
    sub_225CCF7E4();
    v17 = v11;
    v16 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E500);
    sub_225B714F4(&qword_27D73E508, sub_225B712E8);
    sub_225CCF7E4();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t IdentityProofingAttributeConfiguration.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E5B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225B7441C();
  sub_225CCFCA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E570);
  v14 = 0;
  sub_225AE120C(&qword_281059B60);
  sub_225CCF6E4();
  v13 = v15;
  v14 = 1;
  sub_225CCF6E4();
  v10 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E500);
  v14 = 2;
  sub_225B714F4(&qword_27D73E520, sub_225B71578);
  sub_225CCF6E4();
  (*(v6 + 8))(v9, v5);
  v11 = v15;
  *a2 = v13;
  a2[1] = v10;
  a2[2] = v11;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_225B73DC0()
{
  v0 = sub_225CCF5D4();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

id sub_225B73E0C()
{
  ObjectType = swift_getObjectType();
  v2 = sub_2259D8718(0, &qword_281059A60);
  v3 = sub_225CCEF14();
  if (v3)
  {
    v4 = v3;
    v5 = sub_225CCE474();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = &v0[OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_title];
  *v8 = v5;
  v8[1] = v7;
  v9 = sub_225CCEF14();
  if (v9)
  {
    v10 = v9;
    v11 = sub_225CCE474();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = &v0[OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_subTitle];
  *v14 = v11;
  v14[1] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73DC80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_225CD4890;
  *(v15 + 32) = sub_2259D8718(0, &qword_281059AA0);
  *(v15 + 40) = v2;
  sub_225CCEF24();

  if (v32)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
    v16 = swift_dynamicCast();
    v17 = v29;
    if (!v16)
    {
      v17 = 0;
    }
  }

  else
  {
    sub_225B5445C(v31);
    v17 = 0;
  }

  *&v0[OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_bullets] = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_225CD4890;
  v19 = sub_2259D8718(0, &unk_27D73E350);
  *(v18 + 32) = v19;
  *(v18 + 40) = v2;
  sub_225CCEF24();

  if (v32)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E570);
    v20 = swift_dynamicCast();
    v21 = v29;
    if (!v20)
    {
      v21 = 0;
    }
  }

  else
  {
    sub_225B5445C(v31);
    v21 = 0;
  }

  *&v0[OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_assessments] = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_225CD4890;
  *(v22 + 32) = v19;
  *(v22 + 40) = v2;
  sub_225CCEF24();

  if (v32)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E570);
    v23 = swift_dynamicCast();
    v24 = v29;
    if (!v23)
    {
      v24 = 0;
    }
  }

  else
  {
    sub_225B5445C(v31);
    v24 = 0;
  }

  *&v0[OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_accessibility] = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_225CD4890;
  *(v25 + 32) = v19;
  *(v25 + 40) = v2;
  sub_225CCEF24();

  if (v32)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E570);
    v26 = swift_dynamicCast();
    v27 = v29;
    if (!v26)
    {
      v27 = 0;
    }
  }

  else
  {
    sub_225B5445C(v31);
    v27 = 0;
  }

  *&v0[OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_caption] = v27;
  v30.receiver = v0;
  v30.super_class = ObjectType;
  return objc_msgSendSuper2(&v30, sel_init, 2, 4);
}

unint64_t sub_225B74220()
{
  result = qword_281059BC8[0];
  if (!qword_281059BC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281059BC8);
  }

  return result;
}

unint64_t sub_225B74274()
{
  result = qword_281059E80;
  if (!qword_281059E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281059E80);
  }

  return result;
}

uint64_t sub_225B742EC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73E4E0);
    sub_225B74374(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_225B74374(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IdentityProofingUnorderedUIElementOption();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_225B7441C()
{
  result = qword_27D73E5B0;
  if (!qword_27D73E5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E5B0);
  }

  return result;
}

uint64_t sub_225B744E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_225B74544(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_225B745C0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_225B74608(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_225B7469C()
{
  result = qword_27D73E5C8;
  if (!qword_27D73E5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E5C8);
  }

  return result;
}

unint64_t sub_225B746F4()
{
  result = qword_27D73E5D0;
  if (!qword_27D73E5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E5D0);
  }

  return result;
}

unint64_t sub_225B7474C()
{
  result = qword_27D73E5D8;
  if (!qword_27D73E5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E5D8);
  }

  return result;
}

unint64_t sub_225B747A4()
{
  result = qword_27D73E5E0;
  if (!qword_27D73E5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E5E0);
  }

  return result;
}

unint64_t sub_225B747FC()
{
  result = qword_27D73E5E8;
  if (!qword_27D73E5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E5E8);
  }

  return result;
}

unint64_t sub_225B74854()
{
  result = qword_27D73E5F0;
  if (!qword_27D73E5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E5F0);
  }

  return result;
}

unint64_t sub_225B748AC()
{
  result = qword_281059E68;
  if (!qword_281059E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281059E68);
  }

  return result;
}

unint64_t sub_225B74904()
{
  result = qword_281059E70;
  if (!qword_281059E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281059E70);
  }

  return result;
}

unint64_t sub_225B7495C()
{
  result = qword_281059BB8;
  if (!qword_281059BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281059BB8);
  }

  return result;
}

unint64_t sub_225B749B4()
{
  result = qword_281059BC0;
  if (!qword_281059BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281059BC0);
  }

  return result;
}

unint64_t sub_225B74A0C()
{
  result = qword_27D73E5F8;
  if (!qword_27D73E5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E5F8);
  }

  return result;
}

unint64_t sub_225B74A64()
{
  result = qword_27D73E600;
  if (!qword_27D73E600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E600);
  }

  return result;
}

uint64_t sub_225B74AB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_225CCF934() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736567617373656DLL && a2 == 0xE800000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736E6F69746361 && a2 == 0xE700000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7373416567616D69 && a2 == 0xEB00000000737465 || (sub_225CCF934() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F4D6E7261656CLL && a2 == 0xEC0000004C525565 || (sub_225CCF934() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000225D207E0 == a2 || (sub_225CCF934() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000225D209D0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_225CCF934();

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

uint64_t sub_225B74D5C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x8000000225D1EC10 == a2 || (sub_225CCF934() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000225D1EC30 == a2 || (sub_225CCF934() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65726564726F6E75 && a2 == 0xEB00000000495564)
  {

    return 2;
  }

  else
  {
    v5 = sub_225CCF934();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

id RegionMinimumAge.__allocating_init(countryCode:age:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtC13CoreIDVShared16RegionMinimumAge_countryCode];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v7[OBJC_IVAR____TtC13CoreIDVShared16RegionMinimumAge_age] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id RegionMinimumAge.init(countryCode:age:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = &v3[OBJC_IVAR____TtC13CoreIDVShared16RegionMinimumAge_countryCode];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v3[OBJC_IVAR____TtC13CoreIDVShared16RegionMinimumAge_age] = a3;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

Swift::Void __swiftcall RegionMinimumAge.encode(with:)(NSCoder with)
{
  v3 = sub_225CCE444();
  v4 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared16RegionMinimumAge_age);
  v6 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeInteger:v5 forKey:v6];
}

id RegionMinimumAge.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_225B752D0(a1);

  return v4;
}

id RegionMinimumAge.init(coder:)(void *a1)
{
  v2 = sub_225B752D0(a1);

  return v2;
}

id RegionMinimumAge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RegionMinimumAge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_225B752D0(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_225B75438();
  v5 = sub_225CCEF14();
  if (v5)
  {
    v6 = v5;
    sub_225CCE464();
  }

  v7 = &v2[OBJC_IVAR____TtC13CoreIDVShared16RegionMinimumAge_countryCode];
  *v7 = 0;
  *(v7 + 1) = 0xE000000000000000;
  v8 = sub_225CCE444();
  v9 = [a1 decodeIntegerForKey_];

  *&v2[OBJC_IVAR____TtC13CoreIDVShared16RegionMinimumAge_age] = v9;
  v11.receiver = v2;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

unint64_t sub_225B75438()
{
  result = qword_281059A60;
  if (!qword_281059A60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281059A60);
  }

  return result;
}

unint64_t DigitalPresentmentRemoteAlertDefs.BSActionID.description.getter()
{
  sub_225CCF204();

  v0 = sub_225CCF824();
  MEMORY[0x22AA6CE70](v0);

  return 0xD000000000000010;
}

CoreIDVShared::DigitalPresentmentRemoteAlertDefs::BSSettingIndex_optional __swiftcall DigitalPresentmentRemoteAlertDefs.BSSettingIndex.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t DigitalPresentmentRemoteAlertDefs.DigitalPresentmentSheetEvent.description.getter()
{
  v1 = v0[1];
  if (v1 >> 60 == 15)
  {
    return 0x656C6C65636E6163;
  }

  v3 = *v0;
  sub_225CCF204();

  v4 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    if (v4 != 2 || !__OFSUB__(*(v3 + 24), *(v3 + 16)))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v4)
  {
    goto LABEL_11;
  }

  if (!__OFSUB__(HIDWORD(v3), v3))
  {
LABEL_11:
    v5 = sub_225CCF824();
    MEMORY[0x22AA6CE70](v5);

    MEMORY[0x22AA6CE70](41, 0xE100000000000000);
    return 0xD00000000000001BLL;
  }

  __break(1u);
  return result;
}

uint64_t DigitalPresentmentRemoteAlertDefs.DigitalPresentmentSheetEvent.encode()()
{
  v0 = sub_225CCD954();
  MEMORY[0x28223BE20](v0, v1);
  sub_225CCC9E4();
  swift_allocObject();
  sub_225CCC9D4();
  sub_225B7599C();
  v2 = sub_225CCC9C4();

  return v2;
}

unint64_t sub_225B7599C()
{
  result = qword_27D73E620;
  if (!qword_27D73E620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E620);
  }

  return result;
}

uint64_t static DigitalPresentmentRemoteAlertDefs.DigitalPresentmentSheetEvent.decode(data:)@<X0>(_OWORD *a1@<X8>)
{
  v2 = sub_225CCD954();
  MEMORY[0x28223BE20](v2, v3);
  sub_225CCC994();
  swift_allocObject();
  sub_225CCC984();
  sub_225B76904();
  sub_225CCC974();

  *a1 = v5;
  return result;
}

uint64_t sub_225B75CF4(uint64_t a1)
{
  v2 = sub_225B76A00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B75D30(uint64_t a1)
{
  v2 = sub_225B76A00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B75D6C(uint64_t a1)
{
  v2 = sub_225B769AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B75DA8(uint64_t a1)
{
  v2 = sub_225B769AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B75DE4()
{
  if (*v0)
  {
    return 0x656C6C65636E6163;
  }

  else
  {
    return 0x69746E6568747561;
  }
}

uint64_t sub_225B75E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x69746E6568747561 && a2 == 0xED00006465746163;
  if (v6 || (sub_225CCF934() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C6C65636E6163 && a2 == 0xE900000000000064)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_225CCF934();

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

uint64_t sub_225B75F1C(uint64_t a1)
{
  v2 = sub_225B76958();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B75F58(uint64_t a1)
{
  v2 = sub_225B76958();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DigitalPresentmentRemoteAlertDefs.DigitalPresentmentSheetEvent.encode(to:)(void *a1)
{
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E630);
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v3);
  v18 = &v17 - v4;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E638);
  v19 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v5);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E640);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v17 - v11;
  v13 = v1[1];
  v17 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225B76958();
  sub_225CCFCE4();
  if (v13 >> 60 == 15)
  {
    LOBYTE(v23) = 1;
    sub_225B769AC();
    v14 = v18;
    sub_225CCF724();
    (*(v20 + 8))(v14, v22);
  }

  else
  {
    LOBYTE(v23) = 0;
    sub_225B76A00();
    sub_225CCF724();
    v23 = v17;
    v24 = v13;
    sub_2259D9454();
    v16 = v21;
    sub_225CCF7E4();
    (*(v19 + 8))(v7, v16);
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t DigitalPresentmentRemoteAlertDefs.DigitalPresentmentSheetEvent.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v30 = a2;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E660);
  v29 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v3);
  v5 = &v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E668);
  v28 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E670);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v26 - v13;
  v15 = a1[3];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_225B76958();
  v16 = v31;
  sub_225CCFCA4();
  if (!v16)
  {
    v31 = v6;
    v17 = v30;
    v18 = sub_225CCF6F4();
    if (*(v18 + 16) == 1)
    {
      if (*(v18 + 32))
      {
        LOBYTE(v32) = 1;
        sub_225B769AC();
        sub_225CCF604();
        (*(v29 + 8))(v5, v27);
        (*(v11 + 8))(v14, v10);
        swift_unknownObjectRelease();
        *v17 = xmmword_225CD3100;
      }

      else
      {
        LOBYTE(v32) = 0;
        sub_225B76A00();
        v23 = v9;
        v24 = v14;
        sub_225CCF604();
        sub_2259D94A8();
        v25 = v31;
        sub_225CCF6E4();
        (*(v28 + 8))(v23, v25);
        (*(v11 + 8))(v24, v10);
        swift_unknownObjectRelease();
        *v17 = v32;
      }
    }

    else
    {
      v19 = sub_225CCF2D4();
      swift_allocError();
      v21 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D741FA0);
      *v21 = &type metadata for DigitalPresentmentRemoteAlertDefs.DigitalPresentmentSheetEvent;
      sub_225CCF614();
      sub_225CCF294();
      (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D84160], v19);
      swift_willThrow();
      (*(v11 + 8))(v14, v10);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v33);
}

uint64_t sub_225B76738()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 60;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_225B7676C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 36;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_225B767A0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 13;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_225B767D4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_225B76808()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_225B7683C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_225B76870()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_225B768A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

unint64_t sub_225B76904()
{
  result = qword_27D73E628;
  if (!qword_27D73E628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E628);
  }

  return result;
}

unint64_t sub_225B76958()
{
  result = qword_27D73E648;
  if (!qword_27D73E648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E648);
  }

  return result;
}

unint64_t sub_225B769AC()
{
  result = qword_27D73E650;
  if (!qword_27D73E650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E650);
  }

  return result;
}

unint64_t sub_225B76A00()
{
  result = qword_27D73E658;
  if (!qword_27D73E658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E658);
  }

  return result;
}

unint64_t sub_225B76A58()
{
  result = qword_27D73E678;
  if (!qword_27D73E678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E678);
  }

  return result;
}

unint64_t sub_225B76AB0()
{
  result = qword_27D73E680;
  if (!qword_27D73E680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E680);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13CoreIDVShared33DigitalPresentmentRemoteAlertDefsV0cD10SheetEventO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_225B76B6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 16))
  {
    return (*a1 + 12);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_225B76BC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

void *sub_225B76C10(void *result, unsigned int a2)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    result[1] = 0;
  }

  else if (a2)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

unint64_t sub_225B76C84()
{
  result = qword_27D73E688;
  if (!qword_27D73E688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E688);
  }

  return result;
}

unint64_t sub_225B76CDC()
{
  result = qword_27D73E690;
  if (!qword_27D73E690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E690);
  }

  return result;
}

unint64_t sub_225B76D34()
{
  result = qword_27D73E698;
  if (!qword_27D73E698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E698);
  }

  return result;
}

unint64_t sub_225B76D8C()
{
  result = qword_27D73E6A0;
  if (!qword_27D73E6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E6A0);
  }

  return result;
}

unint64_t sub_225B76DE4()
{
  result = qword_27D73E6A8;
  if (!qword_27D73E6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E6A8);
  }

  return result;
}

unint64_t sub_225B76E3C()
{
  result = qword_27D73E6B0;
  if (!qword_27D73E6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E6B0);
  }

  return result;
}

unint64_t sub_225B76E94()
{
  result = qword_27D73E6B8;
  if (!qword_27D73E6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E6B8);
  }

  return result;
}

unint64_t sub_225B76EEC()
{
  result = qword_27D73E6C0;
  if (!qword_27D73E6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E6C0);
  }

  return result;
}

void sub_225B76F6C(unint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v12 = sub_225CCD954();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v170 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v170 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v24 = &v170 - v23;
  if (a1 >> 62)
  {
    if (sub_225CCF144())
    {
      v25 = sub_225CCF144();
      goto LABEL_3;
    }

LABEL_62:
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v163 = off_28105B918;
    v164 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v165 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v165));
    (*(v13 + 16))(v17, &v163[v164], v12);
    os_unfair_lock_unlock(&v163[v165]);
    if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
    {
      v166 = sub_225CCD934();
      v167 = sub_225CCED04();
      if (os_log_type_enabled(v166, v167))
      {
        v168 = swift_slowAlloc();
        v169 = swift_slowAlloc();
        v177 = v169;
        *v168 = 136315138;
        *(v168 + 4) = sub_2259BE198(0xD000000000000035, 0x8000000225D20BD0, &v177);
        _os_log_impl(&dword_2259A7000, v166, v167, "%s", v168, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v169);
        MEMORY[0x22AA6F950](v169, -1, -1);
        MEMORY[0x22AA6F950](v168, -1, -1);
      }
    }

    (*(v13 + 8))(v17, v12);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
    return;
  }

  v25 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v25)
  {
    goto LABEL_62;
  }

LABEL_3:
  *&v173 = v13;
  v175 = a2;
  *&v174 = v12;
  *&v172 = v20;
  if (v25 == 4)
  {
    v171 = v24;
    v26 = MEMORY[0x277D84F90];
    v179[0] = MEMORY[0x277D84F90];
    sub_2259D5550(0, 4, 0);
    v27 = v179[0];
    if ((a1 & 0xC000000000000001) != 0)
    {
      v28 = (MEMORY[0x22AA6DA80](0, a1) + OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x);
      swift_beginAccess();
      v29 = *v28;
      swift_unknownObjectRelease();
      v31 = *(v27 + 16);
      v30 = *(v27 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_2259D5550((v30 > 1), v31 + 1, 1);
        v27 = v179[0];
      }

      *(v27 + 16) = v31 + 1;
      *(v27 + 4 * v31 + 32) = v29;
      v32 = (MEMORY[0x22AA6DA80](1, a1) + OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x);
      swift_beginAccess();
      v33 = *v32;
      swift_unknownObjectRelease();
      v179[0] = v27;
      v35 = *(v27 + 16);
      v34 = *(v27 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_2259D5550((v34 > 1), v35 + 1, 1);
        v27 = v179[0];
      }

      *(v27 + 16) = v35 + 1;
      *(v27 + 4 * v35 + 32) = v33;
      v36 = (MEMORY[0x22AA6DA80](2, a1) + OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x);
      swift_beginAccess();
      v37 = *v36;
      swift_unknownObjectRelease();
      v179[0] = v27;
      v39 = *(v27 + 16);
      v38 = *(v27 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_2259D5550((v38 > 1), v39 + 1, 1);
        v27 = v179[0];
      }

      *(v27 + 16) = v39 + 1;
      *(v27 + 4 * v39 + 32) = v37;
      v40 = (MEMORY[0x22AA6DA80](3, a1) + OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x);
      swift_beginAccess();
      v41 = *v40;
      swift_unknownObjectRelease();
      v179[0] = v27;
      v43 = *(v27 + 16);
      v42 = *(v27 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_2259D5550((v42 > 1), v43 + 1, 1);
        v27 = v179[0];
      }

      *(v27 + 16) = v43 + 1;
      *(v27 + 4 * v43 + 32) = v41;
      v179[0] = v26;
      sub_2259D5550(0, 4, 0);
      v44 = v179[0];
      v45 = (MEMORY[0x22AA6DA80](0, a1) + OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y);
      swift_beginAccess();
      v46 = *v45;
      swift_unknownObjectRelease();
      v48 = *(v44 + 16);
      v47 = *(v44 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_2259D5550((v47 > 1), v48 + 1, 1);
        v44 = v179[0];
      }

      *(v44 + 16) = v48 + 1;
      *(v44 + 4 * v48 + 32) = v46;
      v49 = (MEMORY[0x22AA6DA80](1, a1) + OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y);
      swift_beginAccess();
      v50 = *v49;
      swift_unknownObjectRelease();
      v179[0] = v44;
      v52 = *(v44 + 16);
      v51 = *(v44 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_2259D5550((v51 > 1), v52 + 1, 1);
        v44 = v179[0];
      }

      *(v44 + 16) = v52 + 1;
      *(v44 + 4 * v52 + 32) = v50;
      v53 = (MEMORY[0x22AA6DA80](2, a1) + OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y);
      swift_beginAccess();
      v54 = *v53;
      swift_unknownObjectRelease();
      v179[0] = v44;
      v56 = *(v44 + 16);
      v55 = *(v44 + 24);
      if (v56 >= v55 >> 1)
      {
        sub_2259D5550((v55 > 1), v56 + 1, 1);
        v44 = v179[0];
      }

      *(v44 + 16) = v56 + 1;
      *(v44 + 4 * v56 + 32) = v54;
      v57 = (MEMORY[0x22AA6DA80](3, a1) + OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y);
      swift_beginAccess();
      v58 = *v57;
      swift_unknownObjectRelease();
    }

    else
    {
      v86 = (*(a1 + 32) + OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x);
      swift_beginAccess();
      v87 = *v86;
      v89 = *(v27 + 16);
      v88 = *(v27 + 24);
      if (v89 >= v88 >> 1)
      {
        sub_2259D5550((v88 > 1), v89 + 1, 1);
        v27 = v179[0];
      }

      *(v27 + 16) = v89 + 1;
      *(v27 + 4 * v89 + 32) = v87;
      v90 = (*(a1 + 40) + OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x);
      swift_beginAccess();
      v91 = *v90;
      v179[0] = v27;
      v93 = *(v27 + 16);
      v92 = *(v27 + 24);
      if (v93 >= v92 >> 1)
      {
        sub_2259D5550((v92 > 1), v93 + 1, 1);
        v27 = v179[0];
      }

      *(v27 + 16) = v93 + 1;
      *(v27 + 4 * v93 + 32) = v91;
      v94 = (*(a1 + 48) + OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x);
      swift_beginAccess();
      v95 = *v94;
      v179[0] = v27;
      v97 = *(v27 + 16);
      v96 = *(v27 + 24);
      if (v97 >= v96 >> 1)
      {
        sub_2259D5550((v96 > 1), v97 + 1, 1);
        v27 = v179[0];
      }

      *(v27 + 16) = v97 + 1;
      *(v27 + 4 * v97 + 32) = v95;
      v98 = (*(a1 + 56) + OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x);
      swift_beginAccess();
      v99 = *v98;
      v179[0] = v27;
      v101 = *(v27 + 16);
      v100 = *(v27 + 24);
      if (v101 >= v100 >> 1)
      {
        sub_2259D5550((v100 > 1), v101 + 1, 1);
        v27 = v179[0];
      }

      *(v27 + 16) = v101 + 1;
      *(v27 + 4 * v101 + 32) = v99;
      v179[0] = v26;
      sub_2259D5550(0, 4, 0);
      v44 = v179[0];
      v102 = (*(a1 + 32) + OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y);
      swift_beginAccess();
      v103 = *v102;
      v105 = *(v44 + 16);
      v104 = *(v44 + 24);
      if (v105 >= v104 >> 1)
      {
        sub_2259D5550((v104 > 1), v105 + 1, 1);
        v44 = v179[0];
      }

      *(v44 + 16) = v105 + 1;
      *(v44 + 4 * v105 + 32) = v103;
      v106 = (*(a1 + 40) + OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y);
      swift_beginAccess();
      v107 = *v106;
      v179[0] = v44;
      v109 = *(v44 + 16);
      v108 = *(v44 + 24);
      if (v109 >= v108 >> 1)
      {
        sub_2259D5550((v108 > 1), v109 + 1, 1);
        v44 = v179[0];
      }

      *(v44 + 16) = v109 + 1;
      *(v44 + 4 * v109 + 32) = v107;
      v110 = (*(a1 + 48) + OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y);
      swift_beginAccess();
      v111 = *v110;
      v179[0] = v44;
      v113 = *(v44 + 16);
      v112 = *(v44 + 24);
      if (v113 >= v112 >> 1)
      {
        sub_2259D5550((v112 > 1), v113 + 1, 1);
        v44 = v179[0];
      }

      *(v44 + 16) = v113 + 1;
      *(v44 + 4 * v113 + 32) = v111;
      v114 = (*(a1 + 56) + OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y);
      swift_beginAccess();
      v58 = *v114;
    }

    v179[0] = v44;
    v116 = *(v44 + 16);
    v115 = *(v44 + 24);
    if (v116 >= v115 >> 1)
    {
      sub_2259D5550((v115 > 1), v116 + 1, 1);
      v44 = v179[0];
    }

    *(v44 + 16) = v116 + 1;
    *(v44 + 4 * v116 + 32) = v58;
    v117 = sub_225B781C4(v27);
    if ((v117 & 0x100000000) != 0)
    {
    }

    else
    {
      v118 = v117;
      v119 = sub_225B782D0(v27);

      if ((v119 & 0x100000000) == 0)
      {
        v120 = sub_225B781C4(v44);
        if ((v120 & 0x100000000) == 0)
        {
          v121 = v120;
          v122 = sub_225B782D0(v44);

          if ((v122 & 0x100000000) == 0)
          {
            v180.origin.x = a3;
            v180.origin.y = a4;
            v180.size.width = a5;
            v180.size.height = a6;
            *&v123 = CGRectGetMinX(v180);
            v173 = v123;
            *&v123 = a3;
            v124 = a4;
            v125 = a5;
            v126 = a6;
            *&v127 = CGRectGetMaxX(*&v123);
            v174 = v127;
            *&v127 = a3;
            v128 = a4;
            v129 = a5;
            v130 = a6;
            *&v131 = CGRectGetMinY(*&v127);
            v172 = v131;
            *&v131 = a3;
            v132 = a4;
            v133 = a5;
            v134 = a6;
            MaxY = CGRectGetMaxY(*&v131);
            *&v136.f64[0] = v173;
            *&v136.f64[1] = v172;
            *&v136.f64[0] = vsub_f32(vcvt_f32_f64(v136), __PAIR64__(v121, v118));
            *&v137.f64[0] = v174;
            v137.f64[1] = MaxY;
            v138.i64[0] = LODWORD(v136.f64[0]);
            v138.i64[1] = HIDWORD(v136.f64[0]);
            *a2 = vorrq_s8(vshll_n_s32(vsub_f32(__PAIR64__(v122, v119), vcvt_f32_f64(v137)), 0x20uLL), v138);
            *(a2 + 16) = 0;
            return;
          }

          goto LABEL_52;
        }
      }
    }

LABEL_52:
    v139 = MEMORY[0x277D84F90];
    v140 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v141 = swift_allocError();
    v143 = v142;
    v144 = sub_225CCE954();
    v145 = *(v144 - 8);
    v146 = v171;
    (*(v145 + 56))(v171, 1, 1, v144);
    LODWORD(v144) = (*(v145 + 48))(v146, 1, v144);
    sub_2259DB318(v146);
    if (v144)
    {
      v147 = 361;
    }

    else
    {
      v147 = 23;
    }

    v148 = sub_225B2C374(v139);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v179[0] = v148;
    sub_225B2C4A0(v140, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v179);

    v150 = v179[0];
    v151 = sub_225B29AA0(0, 1, 1, v139);
    v153 = *(v151 + 2);
    v152 = *(v151 + 3);
    if (v153 >= v152 >> 1)
    {
      v151 = sub_225B29AA0((v152 > 1), v153 + 1, 1, v151);
    }

    *(v151 + 2) = v153 + 1;
    v154 = &v151[56 * v153];
    *(v154 + 4) = 0xD000000000000036;
    *(v154 + 5) = 0x8000000225D20B90;
    *(v154 + 6) = 0xD00000000000002ELL;
    *(v154 + 7) = 0x8000000225D20B20;
    *(v154 + 8) = 0xD000000000000032;
    *(v154 + 9) = 0x8000000225D20B50;
    *(v154 + 10) = 77;
    *v143 = v147;
    *(v143 + 8) = v151;
    *(v143 + 16) = 0xD000000000000036;
    *(v143 + 24) = 0x8000000225D20B90;
    *(v143 + 32) = v150;
    *(v143 + 40) = 0;
    v155 = v175;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v156 = off_28105B918;
    v157 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v158 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v158));
    v159 = v173;
    v160 = &v156[v157];
    v161 = v172;
    v162 = v174;
    (*(v173 + 16))(v172, v160, v174);
    os_unfair_lock_unlock(&v156[v158]);
    DIPLogError(_:message:log:)(v141, 0, 0xE000000000000000);
    _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v141);
    (*(v159 + 8))(v161, v162);

    *v155 = 0;
    v155[1] = 0;
    *(v155 + 16) = 1;
    return;
  }

  v177 = 0;
  v178 = 0xE000000000000000;
  sub_225CCF204();

  v177 = 0xD00000000000002BLL;
  v178 = 0x8000000225D20AF0;
  v176 = v25;
  v59 = sub_225CCF824();
  MEMORY[0x22AA6CE70](v59);

  v60 = v177;
  v61 = v178;
  v171 = 0x8000000225D20B20;
  v62 = MEMORY[0x277D84F90];
  v63 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v64 = swift_allocError();
  v66 = v65;
  v67 = sub_225CCE954();
  v68 = *(v67 - 8);
  (*(v68 + 56))(v24, 1, 1, v67);
  LODWORD(v67) = (*(v68 + 48))(v24, 1, v67);
  sub_2259DB318(v24);
  if (v67)
  {
    v69 = 361;
  }

  else
  {
    v69 = 23;
  }

  v70 = sub_225B2C374(v62);
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v177 = v70;
  sub_225B2C4A0(v63, sub_225B2AC40, 0, v71, &v177);

  v72 = v177;
  v73 = sub_225B29AA0(0, 1, 1, v62);
  v75 = *(v73 + 2);
  v74 = *(v73 + 3);
  if (v75 >= v74 >> 1)
  {
    v73 = sub_225B29AA0((v74 > 1), v75 + 1, 1, v73);
  }

  *(v73 + 2) = v75 + 1;
  v76 = &v73[56 * v75];
  *(v76 + 4) = v60;
  *(v76 + 5) = v61;
  v77 = v171;
  *(v76 + 6) = 0xD00000000000002ELL;
  *(v76 + 7) = v77;
  *(v76 + 8) = 0xD000000000000032;
  *(v76 + 9) = 0x8000000225D20B50;
  *(v76 + 10) = 68;
  *v66 = v69;
  *(v66 + 8) = v73;
  *(v66 + 16) = v60;
  *(v66 + 24) = v61;
  *(v66 + 32) = v72;
  *(v66 + 40) = 0;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v78 = off_28105B918;
  v79 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v80 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v80));
  v81 = v173;
  v82 = &v78[v79];
  v83 = v172;
  v84 = v174;
  (*(v173 + 16))(v172, v82, v174);
  os_unfair_lock_unlock(&v78[v80]);
  DIPLogError(_:message:log:)(v64, 0, 0xE000000000000000);
  _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v64);
  (*(v81 + 8))(v83, v84);

  v85 = v175;
  *v175 = 0;
  v85[1] = 0;
  *(v85 + 16) = 1;
}

float sub_225B78114@<S0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x);
  swift_beginAccess();
  result = *v3;
  *a2 = *v3;
  return result;
}

float sub_225B7816C@<S0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y);
  swift_beginAccess();
  result = *v3;
  *a2 = *v3;
  return result;
}

unint64_t sub_225B781C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = v1 - 1;
    if (v1 != 1)
    {
      v4 = (a1 + 36);
      do
      {
        v5 = *v4++;
        v6 = v5;
        if (v5 < v2)
        {
          v2 = v6;
        }

        --v3;
      }

      while (v3);
    }

    v7 = LODWORD(v2);
  }

  else
  {
    v7 = 0;
  }

  return v7 | ((v1 == 0) << 32);
}

int64_t sub_225B7821C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    if (v1 >= 5)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v5 = vdupq_n_s64(v2);
      v6 = (a1 + 56);
      v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = v5;
      do
      {
        v5 = vbslq_s8(vcgtq_s64(v5, v6[-1]), v6[-1], v5);
        v8 = vbslq_s8(vcgtq_s64(v8, *v6), *v6, v8);
        v6 += 2;
        v7 -= 4;
      }

      while (v7);
      v9 = vbslq_s8(vcgtq_s64(v8, v5), v5, v8);
      v10 = vextq_s8(v9, v9, 8uLL).u64[0];
      v2 = vbsl_s8(vcgtd_s64(v10, v9.i64[0]), *v9.i8, v10);
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v2;
      }
    }

    else
    {
      v4 = 1;
    }

    v11 = v1 - v4;
    v12 = (a1 + 8 * v4 + 32);
    do
    {
      v14 = *v12++;
      v13 = v14;
      if (v14 < v2)
      {
        v2 = v13;
      }

      --v11;
    }

    while (v11);
  }

  return v2;
}

unint64_t sub_225B782D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = v1 - 1;
    if (v1 != 1)
    {
      v4 = (a1 + 36);
      do
      {
        v5 = *v4++;
        v6 = v5;
        if (v2 < v5)
        {
          v2 = v6;
        }

        --v3;
      }

      while (v3);
    }

    v7 = LODWORD(v2);
  }

  else
  {
    v7 = 0;
  }

  return v7 | ((v1 == 0) << 32);
}

int64_t sub_225B78328(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    if (v1 >= 5)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v5 = vdupq_n_s64(v2);
      v6 = (a1 + 56);
      v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = v5;
      do
      {
        v5 = vbslq_s8(vcgtq_s64(v5, v6[-1]), v5, v6[-1]);
        v8 = vbslq_s8(vcgtq_s64(v8, *v6), v8, *v6);
        v6 += 2;
        v7 -= 4;
      }

      while (v7);
      v9 = vbslq_s8(vcgtq_s64(v5, v8), v5, v8);
      v10 = vextq_s8(v9, v9, 8uLL).u64[0];
      v2 = vbsl_s8(vcgtd_s64(v9.i64[0], v10), *v9.i8, v10);
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v2;
      }
    }

    else
    {
      v4 = 1;
    }

    v11 = v1 - v4;
    v12 = (a1 + 8 * v4 + 32);
    do
    {
      v14 = *v12++;
      v13 = v14;
      if (v2 <= v14)
      {
        v2 = v13;
      }

      --v11;
    }

    while (v11);
  }

  return v2;
}

void sub_225B78454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (a2 + OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y);
  swift_beginAccess();
  v7 = *v6;
  v8 = (a1 + OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y);
  swift_beginAccess();
  v9 = *v8;
  v10 = (v7 - *v8);
  v11 = (a2 + OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x);
  swift_beginAccess();
  v12 = *v11;
  v13 = (a1 + OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x);
  swift_beginAccess();
  v14 = *v13;
  atan2(v10, (v12 - *v13));
  v15 = (a3 + OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y);
  swift_beginAccess();
  v16 = (*v15 - v9);
  v17 = (a3 + OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x);
  swift_beginAccess();
  atan2(v16, (*v17 - v14));
}

unint64_t sub_225B785F8(unint64_t a1)
{
  v2 = sub_225CCD954();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v68 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  result = MEMORY[0x28223BE20](v11 - 8, v12);
  v15 = &v68 - v14;
  if (!(a1 >> 62))
  {
    v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      if (v16 == 4)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }

LABEL_27:
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v61 = off_28105B918;
    v62 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v63 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v63));
    (*(v3 + 16))(v7, &v61[v62], v2);
    os_unfair_lock_unlock(&v61[v63]);
    if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
    {
      v64 = sub_225CCD934();
      v65 = sub_225CCED04();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v73 = v67;
        *v66 = 136315138;
        *(v66 + 4) = sub_2259BE198(0xD000000000000034, 0x8000000225D20CE0, &v73);
        _os_log_impl(&dword_2259A7000, v64, v65, "%s", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v67);
        MEMORY[0x22AA6F950](v67, -1, -1);
        MEMORY[0x22AA6F950](v66, -1, -1);
      }
    }

    (*(v3 + 8))(v7, v2);
    goto LABEL_34;
  }

  if (!sub_225CCF144())
  {
    goto LABEL_27;
  }

  result = sub_225CCF144();
  v16 = result;
  if (result != 4)
  {
LABEL_19:
    v73 = 0;
    v74 = 0xE000000000000000;
    sub_225CCF204();

    v73 = 0xD00000000000002BLL;
    v74 = 0x8000000225D20AF0;
    v72 = v16;
    v40 = sub_225CCF824();
    MEMORY[0x22AA6CE70](v40);

    v41 = v74;
    v70 = 0x8000000225D20B20;
    v71 = v73;
    v69 = 0x8000000225D20CB0;
    v42 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v43 = swift_allocError();
    v45 = v44;
    v46 = sub_225CCE954();
    v47 = *(v46 - 8);
    (*(v47 + 56))(v15, 1, 1, v46);
    LODWORD(v46) = (*(v47 + 48))(v15, 1, v46);
    sub_2259DB318(v15);
    if (v46)
    {
      v48 = 361;
    }

    else
    {
      v48 = 23;
    }

    v49 = MEMORY[0x277D84F90];
    v50 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v73 = v50;
    sub_225B2C4A0(v42, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v73);

    v52 = v73;
    v53 = sub_225B29AA0(0, 1, 1, v49);
    v55 = *(v53 + 2);
    v54 = *(v53 + 3);
    if (v55 >= v54 >> 1)
    {
      v53 = sub_225B29AA0((v54 > 1), v55 + 1, 1, v53);
    }

    *(v53 + 2) = v55 + 1;
    v56 = &v53[56 * v55];
    v57 = v71;
    *(v56 + 4) = v71;
    *(v56 + 5) = v41;
    *(v56 + 6) = 0xD00000000000002ELL;
    *(v56 + 7) = v70;
    *(v56 + 8) = 0xD000000000000020;
    *(v56 + 9) = v69;
    *(v56 + 10) = 101;
    *v45 = v48;
    *(v45 + 8) = v53;
    *(v45 + 16) = v57;
    *(v45 + 24) = v41;
    *(v45 + 32) = v52;
    *(v45 + 40) = 0;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v58 = off_28105B918;
    v59 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v60 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v60));
    (*(v3 + 16))(v10, &v58[v59], v2);
    os_unfair_lock_unlock(&v58[v60]);
    DIPLogError(_:message:log:)(v43, 0, 0xE000000000000000);
    _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v43);
    (*(v3 + 8))(v10, v2);

LABEL_34:
    v39 = 0;
    v34 = 1;
LABEL_35:
    LOBYTE(v73) = v34;
    return v39 | (v34 << 32);
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v21 = MEMORY[0x22AA6DA80](0, a1);
    v22 = MEMORY[0x22AA6DA80](1, a1);
    v23 = MEMORY[0x22AA6DA80](2, a1);
    v24 = MEMORY[0x22AA6DA80](3, a1);
    goto LABEL_10;
  }

  v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v17)
  {
    __break(1u);
    goto LABEL_38;
  }

  if (v17 == 1)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v17 < 3)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v17 != 3)
  {
    v18 = *(a1 + 40);
    v19 = *(a1 + 48);
    v20 = *(a1 + 56);
    v21 = *(a1 + 32);
    v22 = v18;
    v23 = v19;
    v24 = v20;
LABEL_10:
    v25 = v24;
    sub_225B78454(v21, v24, v22);
    v27 = v26;
    sub_225B78454(v22, v21, v23);
    v29 = v28;
    sub_225B78454(v23, v22, v25);
    v31 = v30;
    sub_225B78454(v25, v23, v21);
    v33 = v32;

    v34 = 0;
    v35 = fmaxf(fabsf(v27 + -90.0), -1.0);
    v36 = fabsf(v29 + -90.0);
    if (v35 <= v36)
    {
      v35 = v36;
    }

    v37 = fabsf(v31 + -90.0);
    if (v35 <= v37)
    {
      v35 = v37;
    }

    v38 = fabsf(v33 + -90.0);
    if (v35 > v38)
    {
      v38 = v35;
    }

    v39 = LODWORD(v38);
    goto LABEL_35;
  }

LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_225B78DC8(unint64_t a1)
{
  v2 = sub_225CCD954();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v84 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  result = MEMORY[0x28223BE20](v11 - 8, v12);
  v15 = &v84 - v14;
  if (!(a1 >> 62))
  {
    v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      if (v16 == 4)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }

LABEL_31:
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v77 = off_28105B918;
    v78 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v79 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v79));
    (*(v3 + 16))(v7, &v77[v78], v2);
    os_unfair_lock_unlock(&v77[v79]);
    if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
    {
      v80 = sub_225CCD934();
      v81 = sub_225CCED04();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v90 = v83;
        *v82 = 136315138;
        *(v82 + 4) = sub_2259BE198(0xD000000000000038, 0x8000000225D20C70, &v90);
        _os_log_impl(&dword_2259A7000, v80, v81, "%s", v82, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v83);
        MEMORY[0x22AA6F950](v83, -1, -1);
        MEMORY[0x22AA6F950](v82, -1, -1);
      }
    }

    (*(v3 + 8))(v7, v2);
    goto LABEL_38;
  }

  if (!sub_225CCF144())
  {
    goto LABEL_31;
  }

  result = sub_225CCF144();
  v16 = result;
  if (result != 4)
  {
LABEL_23:
    v90 = 0;
    v91 = 0xE000000000000000;
    sub_225CCF204();

    v90 = 0xD00000000000002BLL;
    v91 = 0x8000000225D20AF0;
    v89 = v16;
    v56 = sub_225CCF824();
    MEMORY[0x22AA6CE70](v56);

    v57 = v91;
    v86 = 0x8000000225D20B20;
    v87 = v90;
    v85 = 0x8000000225D20C40;
    v58 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v88 = swift_allocError();
    v60 = v59;
    v61 = sub_225CCE954();
    v62 = *(v61 - 8);
    (*(v62 + 56))(v15, 1, 1, v61);
    LODWORD(v61) = (*(v62 + 48))(v15, 1, v61);
    sub_2259DB318(v15);
    if (v61)
    {
      v63 = 361;
    }

    else
    {
      v63 = 23;
    }

    v64 = MEMORY[0x277D84F90];
    v65 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v90 = v65;
    sub_225B2C4A0(v58, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v90);

    v67 = v90;
    v68 = sub_225B29AA0(0, 1, 1, v64);
    v70 = *(v68 + 2);
    v69 = *(v68 + 3);
    if (v70 >= v69 >> 1)
    {
      v68 = sub_225B29AA0((v69 > 1), v70 + 1, 1, v68);
    }

    *(v68 + 2) = v70 + 1;
    v71 = &v68[56 * v70];
    v72 = v87;
    *(v71 + 4) = v87;
    *(v71 + 5) = v57;
    *(v71 + 6) = 0xD00000000000002ELL;
    *(v71 + 7) = v86;
    *(v71 + 8) = 0xD000000000000024;
    *(v71 + 9) = v85;
    *(v71 + 10) = 137;
    *v60 = v63;
    *(v60 + 8) = v68;
    *(v60 + 16) = v72;
    *(v60 + 24) = v57;
    *(v60 + 32) = v67;
    *(v60 + 40) = 0;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v73 = off_28105B918;
    v74 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v75 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v75));
    (*(v3 + 16))(v10, &v73[v74], v2);
    os_unfair_lock_unlock(&v73[v75]);
    v76 = v88;
    DIPLogError(_:message:log:)(v88, 0, 0xE000000000000000);
    _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v76);
    (*(v3 + 8))(v10, v2);

LABEL_38:
    v55 = 0;
    v53 = 1;
LABEL_39:
    v92 = v53;
    return v55 | (v53 << 32);
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v21 = MEMORY[0x22AA6DA80](0, a1);
    v22 = MEMORY[0x22AA6DA80](1, a1);
    v23 = MEMORY[0x22AA6DA80](2, a1);
    v24 = MEMORY[0x22AA6DA80](3, a1);
    goto LABEL_10;
  }

  v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v17)
  {
    __break(1u);
    goto LABEL_42;
  }

  if (v17 == 1)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v17 < 3)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v17 != 3)
  {
    v18 = *(a1 + 40);
    v19 = *(a1 + 48);
    v20 = *(a1 + 56);
    v21 = *(a1 + 32);
    v22 = v18;
    v23 = v19;
    v24 = v20;
LABEL_10:
    v25 = v24;
    v26 = &v22[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y];
    swift_beginAccess();
    v27 = *v26;
    v28 = &v21[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y];
    swift_beginAccess();
    LODWORD(v87) = *v28;
    v29 = (v27 - *&v87);
    v30 = &v22[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x];
    swift_beginAccess();
    v31 = *v30;
    v32 = &v21[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x];
    swift_beginAccess();
    v33 = *v32;
    v34 = atan2(v29, (v31 - *v32)) * 180.0 / 3.14159265;
    *&v88 = v34;
    v35 = &v23[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y];
    swift_beginAccess();
    v36 = *v35;
    v37 = (*v35 - v27);
    v38 = &v23[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x];
    swift_beginAccess();
    v39 = *v38;
    v40 = atan2(v37, (*v38 - v31)) * 180.0 / 3.14159265;
    v41 = &v25[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y];
    swift_beginAccess();
    v42 = *v41;
    v43 = (*v41 - v36);
    v44 = &v25[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x];
    swift_beginAccess();
    v45 = *v44;
    v46 = atan2(v43, (*v44 - v39)) * 180.0 / 3.14159265;
    if (v46 >= 0.0)
    {
      v47 = v46;
    }

    else
    {
      v47 = v46 + 360.0;
    }

    v48 = atan2((*&v87 - v42), (v33 - v45)) * 180.0 / 3.14159265;
    v49 = v47 + -180.0;
    v50 = v48 + 90.0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ACE8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_225CD73A0;
    v52 = *&v88;
    *(inited + 32) = v88;
    *(inited + 36) = v40 + -90.0;
    *(inited + 40) = v49;
    *(inited + 44) = v50;

    v53 = 0;
    if (fabsf(v52) >= fabsf(v40 + -90.0))
    {
      v54 = v40 + -90.0;
    }

    else
    {
      v54 = v52;
    }

    if (fabsf(v54) >= fabsf(v49))
    {
      v54 = v49;
    }

    if (fabsf(v54) >= fabsf(v50))
    {
      v54 = v50;
    }

    v55 = LODWORD(v54);
    goto LABEL_39;
  }

LABEL_44:
  __break(1u);
  return result;
}

__n128 __swift_memcpy16_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_225B798A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

CoreIDVShared::IQImageType_optional __swiftcall IQImageType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t IQImageType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x665F64695F776172;
  v3 = 0x5F65766973736170;
  if (v1 != 6)
  {
    v3 = 0x746E656D75636F64;
  }

  v4 = 0x6569666C6573;
  if (v1 != 4)
  {
    v4 = 0x7373656E6576696CLL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  if (v1 == 2)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = 0x625F64695F776172;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void sub_225B79ABC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000746E6F72;
  v4 = 0x665F64695F776172;
  v5 = 0xED00006F65646976;
  v6 = 0x5F65766973736170;
  if (v2 != 6)
  {
    v6 = 0x746E656D75636F64;
    v5 = 0xEC0000007A726D5FLL;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6569666C6573;
  if (v2 != 4)
  {
    v8 = 0x7373656E6576696CLL;
    v7 = 0xEE006F656469765FLL;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x8000000225D0C610;
  if (v2 == 2)
  {
    v10 = 0xD000000000000012;
  }

  else
  {
    v10 = 0xD000000000000011;
  }

  if (v2 != 2)
  {
    v9 = 0x8000000225D0C630;
  }

  if (*v1)
  {
    v4 = 0x625F64695F776172;
    v3 = 0xEB000000006B6361;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 3u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t PDF417Data.parsedData.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0x360uLL);
  memcpy(a1, v1, 0x360uLL);
  return sub_225A0DE54(__dst, v4, &qword_27D73DD98);
}

uint64_t PDF417Data.rawData.getter()
{
  v1 = *(v0 + 864);

  return v1;
}

uint64_t sub_225B79C88()
{
  if (*v0)
  {
    return 0x61746144776172;
  }

  else
  {
    return 0x6144646573726170;
  }
}

uint64_t sub_225B79CC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6144646573726170 && a2 == 0xEA00000000006174;
  if (v6 || (sub_225CCF934() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x61746144776172 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_225CCF934();

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

uint64_t sub_225B79DAC(uint64_t a1)
{
  v2 = sub_225B7A030();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B79DE8(uint64_t a1)
{
  v2 = sub_225B7A030();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PDF417Data.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E6C8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v11 - v7;
  memcpy(v14, v1, 0x360uLL);
  v9 = v1[108];
  v11[1] = v1[109];
  v11[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225A0DE54(v14, v13, &qword_27D73DD98);
  sub_225B7A030();
  sub_225CCFCE4();
  memcpy(v13, v14, sizeof(v13));
  v14[887] = 0;
  sub_225B7A084();
  sub_225CCF774();
  memcpy(v12, v13, sizeof(v12));
  sub_2259CB640(v12, &qword_27D73DD98);
  if (!v2)
  {
    v14[886] = 1;
    sub_225CCF784();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_225B7A030()
{
  result = qword_27D73E6D0;
  if (!qword_27D73E6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E6D0);
  }

  return result;
}

unint64_t sub_225B7A084()
{
  result = qword_27D73E6D8;
  if (!qword_27D73E6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E6D8);
  }

  return result;
}

uint64_t PDF417Data.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v15 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E6E0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v16[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225B7A030();
  sub_225CCFCA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v9 = v5;
  v10 = v15;
  v21[887] = 0;
  sub_225B7A354();
  sub_225CCF674();
  memcpy(v21, v20, 0x360uLL);
  v21[886] = 1;
  v11 = sub_225CCF684();
  v13 = v12;
  (*(v9 + 8))(v8, v4);
  memcpy(v16, v21, 0x360uLL);
  v16[108] = v11;
  v16[109] = v13;
  memcpy(v10, v16, 0x370uLL);
  sub_225B7A3A8(v16, v17);
  __swift_destroy_boxed_opaque_existential_0(a1);
  memcpy(v17, v21, sizeof(v17));
  v18 = v11;
  v19 = v13;
  return sub_225B7A3E0(v17);
}

unint64_t sub_225B7A354()
{
  result = qword_27D73E6E8;
  if (!qword_27D73E6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E6E8);
  }

  return result;
}

uint64_t DocScanData.vertices.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t DocScanData.targetVertices.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t DocScanData.captureTime.setter(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 20) = BYTE4(result) & 1;
  return result;
}

uint64_t DocScanData.capturePath.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t DocScanData.capturePath.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t DocScanData.rescanCount.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t DocScanData.init(vertices:targetVertices:captureTime:capturePath:rescanCount:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 20) = BYTE4(a3) & 1;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7 & 1;
  return result;
}

__n128 SelfieScanData.regionOfInterest.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  result = *v1;
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 SelfieScanData.regionOfInterest.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v3;
  *(v1 + 32) = *(a1 + 32);
  return result;
}

uint64_t SelfieScanData.faceBounds.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t SelfieScanData.captureTime.setter(uint64_t result)
{
  *(v1 + 48) = result;
  *(v1 + 52) = BYTE4(result) & 1;
  return result;
}

uint64_t SelfieScanData.rescanCount.setter(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

uint64_t SelfieScanData.chute.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t SelfieScanData.chute.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

__n128 SelfieScanData.init(regionOfInterest:faceBounds:captureTime:rescanCount:chute:isFlashEnabled:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  result = *a1;
  v10 = *(a1 + 16);
  *a9 = *a1;
  *(a9 + 16) = v10;
  *(a9 + 32) = *(a1 + 32);
  *(a9 + 40) = a2;
  *(a9 + 48) = a3;
  *(a9 + 52) = BYTE4(a3) & 1;
  *(a9 + 56) = a4;
  *(a9 + 64) = a5 & 1;
  *(a9 + 72) = a6;
  *(a9 + 80) = a7;
  *(a9 + 88) = a8;
  return result;
}

uint64_t IQParameters.minFaceConfidence.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t IQParameters.maxFaceConfidence.setter(uint64_t result)
{
  *(v1 + 8) = result;
  *(v1 + 12) = BYTE4(result) & 1;
  return result;
}

uint64_t IQParameters.keywordData.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t IQParameters.keywordCriteria.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t IQParameters.glareEpsilon.setter(uint64_t result)
{
  *(v1 + 36) = result;
  *(v1 + 40) = BYTE4(result) & 1;
  return result;
}

uint64_t IQParameters.glareMinPoints.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t IQParameters.glareMinIntensity.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t IQParameters.glareClusterSize.setter(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

uint64_t IQParameters.glareDownscaleFactor.setter(uint64_t result, char a2)
{
  *(v2 + 96) = result;
  *(v2 + 104) = a2 & 1;
  return result;
}

__n128 IQParameters.ocrRegionOfInterest.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 144);
  result = *(v1 + 112);
  v4 = *(v1 + 128);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 IQParameters.ocrRegionOfInterest.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 112) = *a1;
  *(v1 + 128) = v3;
  *(v1 + 144) = *(a1 + 32);
  return result;
}

__n128 IQParameters.init(minFaceConfidence:maxFaceConfidence:keywordData:keywordCriteria:accurateOCRMode:glareEpsilon:glareMinPoints:glareMinIntensity:glareClusterSize:glareDownscaleFactor:ocrRegionOfInterest:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16)
{
  *a9 = a1;
  *(a9 + 4) = BYTE4(a1) & 1;
  *(a9 + 8) = a2;
  *(a9 + 12) = BYTE4(a2) & 1;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 36) = a6;
  *(a9 + 40) = BYTE4(a6) & 1;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11 & 1;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13 & 1;
  *(a9 + 96) = a14;
  *(a9 + 104) = a15 & 1;
  result = *a16;
  v17 = *(a16 + 16);
  *(a9 + 144) = *(a16 + 32);
  *(a9 + 112) = result;
  *(a9 + 128) = v17;
  return result;
}

void __swiftcall IQTextObservation.Bounds.init(topLeft:topRight:bottomLeft:bottomRight:)(CoreIDVShared::IQTextObservation::Bounds *__return_ptr retstr, CGPoint topLeft, CGPoint topRight, CGPoint bottomLeft, CGPoint bottomRight)
{
  retstr->topLeft.x = topLeft.x;
  retstr->topLeft.y = topLeft.y;
  retstr->topRight.x = topRight.x;
  retstr->topRight.y = topRight.y;
  retstr->bottomLeft.x = bottomLeft.x;
  retstr->bottomLeft.y = bottomLeft.y;
  retstr->bottomRight.x = bottomRight.x;
  retstr->bottomRight.y = bottomRight.y;
}

uint64_t IQTextObservation.text.getter()
{
  v1 = *v0;

  return v1;
}

__n128 IQTextObservation.bounds.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v2;
  result = *(v1 + 48);
  v4 = *(v1 + 64);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

BOOL static IQTextObservation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  v2 = *(a1 + 56);
  v5 = *(a1 + 64);
  v4 = *(a1 + 72);
  v6 = *(a1 + 16);
  v7 = *(a1 + 32);
  v9 = *(a2 + 16);
  v8 = *(a2 + 32);
  v11 = *(a2 + 48);
  v10 = *(a2 + 56);
  v13 = *(a2 + 64);
  v12 = *(a2 + 72);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) || (v20 = *(a1 + 16), v21 = *(a1 + 32), v18 = *(a2 + 16), v19 = *(a2 + 32), v14 = sub_225CCF934(), v9 = v18, v8 = v19, v6 = v20, v7 = v21, v15 = v14, result = 0, (v15 & 1) != 0))
  {
    result = 0;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v6, v9), vceqq_f64(v7, v8)))) & 1) != 0 && v3 == v11 && v2 == v10)
    {
      return v4 == v12 && v5 == v13;
    }
  }

  return result;
}

BOOL sub_225B7AD24(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (v5 = sub_225CCF934(), v6 = 0, (v5 & 1) != 0))
  {
    v7 = *(a1 + 32);
    v13[0] = *(a1 + 16);
    v13[1] = v7;
    v8 = *(a1 + 64);
    v13[2] = *(a1 + 48);
    v13[3] = v8;
    v9 = *(a2 + 32);
    v12[0] = *(a2 + 16);
    v12[1] = v9;
    v10 = *(a2 + 64);
    v12[2] = *(a2 + 48);
    v12[3] = v10;
    return _s13CoreIDVShared17IQTextObservationV6BoundsV2eeoiySbAE_AEtFZ_0(v13, v12);
  }

  return v6;
}

uint64_t ImageQualityProperties.pdf417Data.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 8), 0x370uLL);
  memcpy(a1, (v1 + 8), 0x370uLL);
  return sub_225A0DE54(__dst, v4, &qword_27D73DDA0);
}

void *ImageQualityProperties.pdf417Data.setter(const void *a1)
{
  memcpy(__dst, (v1 + 8), 0x370uLL);
  sub_2259CB640(__dst, &qword_27D73DDA0);
  return memcpy((v1 + 8), a1, 0x370uLL);
}

uint64_t ImageQualityProperties.mrzCandidates.setter(uint64_t a1)
{

  *(v1 + 888) = a1;
  return result;
}

uint64_t ImageQualityProperties.debugDescription.getter()
{
  v1 = 7104878;
  v2 = *v0;
  memcpy(__dst, (v0 + 8), sizeof(__dst));
  v3 = *(v0 + 888);
  __src[0] = 0;
  __src[1] = 0xE000000000000000;
  sub_225CCF204();

  v15 = 0x7363697274654D2DLL;
  v16 = 0xEA00000000000A2DLL;
  v4 = [v2 debugDescription];
  v5 = sub_225CCE474();
  v7 = v6;

  MEMORY[0x22AA6CE70](v5, v7);

  MEMORY[0x22AA6CE70](0x3731344644502D0ALL, 0xEE000A2D61746144);
  memcpy(__src, __dst, sizeof(__src));
  if (sub_225B57BE4(__src) == 1)
  {
    v8 = 0xE300000000000000;
    v9 = 7104878;
  }

  else
  {
    memcpy(v14, __src, sizeof(v14));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DD98);
    v9 = sub_225CCEFB4();
    v8 = v10;
  }

  MEMORY[0x22AA6CE70](v9, v8);

  MEMORY[0x22AA6CE70](0xD000000000000012, 0x8000000225D20D20);
  if (v3)
  {
    v1 = MEMORY[0x22AA6D090](v3, &type metadata for IQTextObservation);
    v12 = v11;
  }

  else
  {
    v12 = 0xE300000000000000;
  }

  MEMORY[0x22AA6CE70](v1, v12);

  return v15;
}

BOOL sub_225B7B458(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_225B7B488@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_225B7B4B4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

CoreIDVShared::ImageQualityCollector::ISOLanguageCode_optional __swiftcall ImageQualityCollector.ISOLanguageCode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_225B7B604(char a1)
{
  result = 0x656E697272756C62;
  switch(a1)
  {
    case 1:
      result = 0x426563616C70616CLL;
      break;
    case 2:
      result = 0x657275736F707865;
      break;
    case 3:
      result = 0x7473694464726163;
      break;
    case 4:
    case 18:
    case 20:
      result = 0xD000000000000010;
      break;
    case 5:
    case 11:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x6374695064616568;
      break;
    case 7:
      result = 0x6C6C6F5264616568;
      break;
    case 8:
      result = 0x77615964616568;
      break;
    case 9:
      result = 0x666E6F4365636166;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 12:
    case 15:
      result = 0xD000000000000014;
      break;
    case 13:
      result = 0xD000000000000012;
      break;
    case 14:
      result = 0xD000000000000012;
      break;
    case 16:
      result = 0x5465727574706163;
      break;
    case 17:
      result = 0xD000000000000012;
      break;
    case 19:
      result = 0x6556746567726174;
      break;
    case 21:
      result = 0x746E656D75636F64;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_225B7B868()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225B7B8C4()
{
  sub_225CCE5B4();
}

uint64_t sub_225B7B904()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225B7B984(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_225B7B604(*a1);
  v5 = v4;
  if (v3 == sub_225B7B604(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_225CCF934();
  }

  return v8 & 1;
}

uint64_t sub_225B7BA0C()
{
  v1 = *v0;
  sub_225CCFBD4();
  sub_225B7B604(v1);
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225B7BA70()
{
  sub_225B7B604(*v0);
  sub_225CCE5B4();
}

uint64_t sub_225B7BAC4()
{
  v1 = *v0;
  sub_225CCFBD4();
  sub_225B7B604(v1);
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225B7BB24@<X0>(_BYTE *a1@<X8>)
{
  result = sub_225B93B48();
  *a1 = result;
  return result;
}

unint64_t sub_225B7BB54@<X0>(unint64_t *a1@<X8>)
{
  result = sub_225B7B604(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t ImageQualityCollector.init(language:monitor:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  *a3 = xmmword_225CF1CA0;
  *(a3 + 16) = 0xD000000000000028;
  *(a3 + 24) = 0x8000000225D20D40;
  *(a3 + 32) = xmmword_225CD9290;
  *(a3 + 48) = xmmword_225CF1CB0;
  *(a3 + 64) = xmmword_225CF1CC0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 1;
  *(a3 + 96) = xmmword_225CF1CD0;
  *(a3 + 112) = xmmword_225CF1CE0;
  result = sub_225B2E4D0(&unk_2838FF618);
  *(a3 + 128) = v5;
  *(a3 + 136) = a2;
  *(a3 + 144) = result;
  return result;
}

void *ImageQualityCollector.collectProperties(image:flags:docInfo:selfieInfo:docScanConfig:params:)(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x28223BE20](a1, a2);
  v5 = v4;
  v448 = v6;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = v3;
  v462 = v14;
  v538 = *MEMORY[0x277D85DE8];
  v460 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v460, v15);
  v459 = &v440 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v461 = &v440 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_225CCF8F4();
  v454 = *(v20 - 8);
  v455 = v20;
  MEMORY[0x28223BE20](v20, v21);
  v453 = &v440 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_225CCD954();
  v24 = *(v23 - 8);
  v488 = v23;
  v489 = v24;
  v26 = MEMORY[0x28223BE20](v23, v25);
  v449 = &v440 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v28);
  v481 = &v440 - v29;
  v30 = *v12;
  v31 = v10[1];
  v490 = *v10;
  v491 = v30;
  v463 = v31;
  v32 = v10[2];
  v33 = v10[3];
  v451 = v10[4];
  v452 = v32;
  v34 = *v8;
  v35 = *(v8 + 8);
  v36 = *(v8 + 16);
  v37 = *(v8 + 24);
  v457 = *(v8 + 32);
  v38 = *(v8 + 40);
  v39 = *(v8 + 48);
  v444 = *(v8 + 52);
  v40 = *(v8 + 80);
  v446 = *(v8 + 72);
  v447 = v33;
  v445 = v40;
  v450 = *(v8 + 88);
  v464 = *v5;
  v472 = *(v5 + 2);
  v473 = *(v5 + 12);
  v41 = *(v5 + 29);
  v535 = *(v5 + 13);
  *v536 = v41;
  *&v536[15] = *(v5 + 11);
  v476 = v5[6];
  LODWORD(v32) = *(v5 + 56);
  v508[0] = *(v5 + 57);
  *(v508 + 3) = *(v5 + 15);
  v42 = v5[8];
  v468 = *(v5 + 72);
  v469 = v32;
  *(v507 + 3) = *(v5 + 19);
  v507[0] = *(v5 + 73);
  v470 = v5[10];
  v471 = v42;
  v467 = *(v5 + 88);
  *(v506 + 3) = *(v5 + 23);
  v506[0] = *(v5 + 89);
  v466 = v5[12];
  v465 = *(v5 + 104);
  v534 = *(v5 + 137);
  v43 = *(v5 + 105);
  v533 = *(v5 + 121);
  v532 = v43;
  v44 = v2[1];
  v496 = *v2;
  v497 = v44;
  v45 = v2[2];
  v46 = v2[3];
  v47 = v2[5];
  v500 = v2[4];
  v501 = v47;
  v498 = v45;
  v499 = v46;
  v48 = v2[6];
  v49 = v2[7];
  v50 = v2[8];
  v505 = *(v2 + 18);
  v503 = v49;
  v504 = v50;
  v502 = v48;
  v51 = &selRef_setSceneIdentifiers_;
  v52 = [objc_allocWithZone(type metadata accessor for ImageQualityMetrics()) init];
  sub_225B92B84(v537);
  v53 = MEMORY[0x277D84F90];
  sub_225B2E800(MEMORY[0x277D84F90]);
  v54 = objc_allocWithZone(MEMORY[0x277CE2D50]);
  type metadata accessor for VNImageOption(0);
  sub_225B93C44(&qword_27D73A9E8, type metadata accessor for VNImageOption);
  v55 = sub_225CCE2B4();

  v456 = v13;
  v478 = [v54 initWithCIImage:v13 options:v55];

  v495 = v53;
  v56 = [objc_allocWithZone(MEMORY[0x277CE2D38]) init];
  v479 = [objc_allocWithZone(MEMORY[0x277CE2D48]) init];
  v480 = [objc_allocWithZone(MEMORY[0x277CE2C70]) init];
  v486 = [objc_allocWithZone(MEMORY[0x277CE2C80]) init];
  v482 = [objc_allocWithZone(MEMORY[0x277CE2C88]) init];
  v57 = [objc_allocWithZone(MEMORY[0x277CE2C08]) init];
  v484 = [objc_allocWithZone(MEMORY[0x277CE2C58]) init];
  v483 = [objc_allocWithZone(MEMORY[0x277CE2CB0]) init];
  v475 = [objc_allocWithZone(MEMORY[0x277CE2C68]) init];
  v485 = [objc_allocWithZone(MEMORY[0x277CE2DB8]) init];
  v474 = [objc_allocWithZone(MEMORY[0x277CE2CA8]) init];
  v58 = v52;
  v492 = v52;
  v477 = v57;
  v487 = v38;
  v458 = v56;
  if (v38 >= 2)
  {
    v59 = *(v38 + 16);
    if (v59)
    {
      *&v525[0] = v53;
      sub_225CCF394();
      v60 = objc_opt_self();
      v61 = (v38 + 56);
      do
      {
        v62 = [v60 observationWithBoundingBox_];
        sub_225CCF364();
        v56 = *(*&v525[0] + 16);
        sub_225CCF3A4();
        sub_225CCF3B4();
        sub_225CCF374();
        v61 += 4;
        --v59;
      }

      while (v59);
      sub_2259D8718(0, &qword_27D73E700);
      v63 = sub_225CCE7F4();
      [v480 setInputFaceObservations_];

      v64 = sub_225CCE7F4();

      [v486 setInputFaceObservations_];

      if (!*(v487 + 16))
      {
        __break(1u);
        goto LABEL_308;
      }

      v552.origin.x = 0.0;
      v552.origin.y = 0.0;
      v552.size.width = 1.0;
      v552.size.height = 1.0;
      v539 = CGRectIntersection(*(v487 + 32), v552);
      x = v539.origin.x;
      v443 = v34;
      v66 = v39;
      v67 = v37;
      y = v539.origin.y;
      width = v539.size.width;
      height = v539.size.height;
      v56 = v458;
      [v458 setRegionOfInterest_];
      v71 = y;
      v37 = v67;
      v39 = v66;
      v34 = v443;
      [v479 setRegionOfInterest_];
      v58 = v492;
    }
  }

  v72 = v491;
  if ((v491 & 0x8000000000) != 0)
  {
    if (v487 == 1)
    {
      v74 = 0;
      v75 = 0;
    }

    else
    {
      v75 = v445;

      v74 = v446;
    }

    v76 = &v58[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_livenessChute];
    swift_beginAccess();
    *v76 = v74;
    *(v76 + 1) = v75;

    v73 = v58;
    if ((v72 & 0x10000000) == 0)
    {
LABEL_9:
      if ((v72 & 0x8000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_25:
      if (v490 == 1 || !v451)
      {
        v80 = v56;
        if (qword_28105B910 != -1)
        {
          swift_once();
        }

        v81 = off_28105B918;
        v82 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
        v83 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
        os_unfair_lock_lock((off_28105B918 + v83));
        v84 = v489;
        v85 = &v81[v82];
        v86 = v481;
        v87 = v488;
        (*(*&v489 + 16))(v481, v85, v488);
        os_unfair_lock_unlock(&v81[v83]);
        sub_225B3FCC8();
        (*(*&v84 + 8))(v86, v87);
        v56 = v80;
        if ((v72 & 8) != 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (__PAIR128__(v451, v447) == v497)
        {
          v79 = 1;
        }

        else
        {
          v79 = sub_225CCF934();
        }

        v88 = v79 & 1;
        v89 = OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_isAutoCaptured;
        swift_beginAccess();
        v73[v89] = v88;
        if ((v72 & 8) != 0)
        {
          goto LABEL_35;
        }
      }

LABEL_11:
      if ((v72 & 0x80000000) == 0)
      {
        goto LABEL_12;
      }

LABEL_39:
      if (v490 >= 2 && (v98 = *(v490 + 16), v98 == v496))
      {
        v99 = MEMORY[0x277D84F90];
        if (v98)
        {
          *&v525[0] = MEMORY[0x277D84F90];
          sub_225CCF394();
          v100 = type metadata accessor for IQPoint();
          v101 = (v490 + 40);
          do
          {
            v102 = *(v101 - 1);
            v103 = *v101;
            v104 = objc_allocWithZone(v100);
            v105 = v102;
            *&v104[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x] = v105;
            v106 = v103;
            *&v104[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y] = v106;
            v493.receiver = v104;
            v493.super_class = v100;
            objc_msgSendSuper2(&v493, sel_init);
            sub_225CCF364();
            sub_225CCF3A4();
            sub_225CCF3B4();
            sub_225CCF374();
            v101 += 2;
            --v98;
          }

          while (v98);
          v99 = *&v525[0];
          v72 = v491;
          v73 = v492;
          v56 = v458;
        }

        v525[6] = v502;
        v525[7] = v503;
        v525[8] = v504;
        *&v525[9] = v505;
        v525[2] = v498;
        v525[3] = v499;
        v525[4] = v500;
        v525[5] = v501;
        v525[0] = v496;
        v525[1] = v497;
        v107 = sub_225B80AD4(v99, 0x12uLL);

        v108 = OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_originalVertices;
        swift_beginAccess();
        *&v73[v108] = v107;

        if ((v72 & 0x100000000) != 0)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v109 = v56;
        if (qword_28105B910 != -1)
        {
          swift_once();
        }

        v110 = off_28105B918;
        v111 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
        v112 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
        os_unfair_lock_lock((off_28105B918 + v112));
        v113 = v489;
        v114 = &v110[v111];
        v115 = v481;
        v116 = v488;
        (*(*&v489 + 16))(v481, v114, v488);
        os_unfair_lock_unlock(&v110[v112]);
        sub_225B3FF68();
        (*(*&v113 + 8))(v115, v116);
        v56 = v109;
        if ((v72 & 0x100000000) != 0)
        {
          goto LABEL_50;
        }
      }

LABEL_13:
      v51 = v476;
      if ((v72 & 0x10000) == 0)
      {
        goto LABEL_14;
      }

LABEL_62:
      if (v490 == 1 || (v452 & 0x100000000) != 0)
      {
        if (v487 == 1 || (v444 & 1) != 0)
        {
          v166 = v56;
          if (qword_28105B910 != -1)
          {
            swift_once();
          }

          v167 = off_28105B918;
          v168 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
          v169 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
          os_unfair_lock_lock((off_28105B918 + v169));
          v170 = v489;
          v171 = &v167[v168];
          v172 = v481;
          v173 = v488;
          (*(*&v489 + 16))(v481, v171, v488);
          os_unfair_lock_unlock(&v167[v169]);
          sub_225B40208();
          (*(*&v170 + 8))(v172, v173);
          v56 = v166;
          if (v72)
          {
            goto LABEL_66;
          }

LABEL_15:
          if ((v72 & 4) == 0)
          {
            goto LABEL_72;
          }

          goto LABEL_69;
        }
      }

      else
      {
        v39 = *&v452;
      }

      v525[6] = v502;
      v525[7] = v503;
      v525[8] = v504;
      *&v525[9] = v505;
      v525[2] = v498;
      v525[3] = v499;
      v525[4] = v500;
      v525[5] = v501;
      v525[0] = v496;
      v525[1] = v497;
      v136 = v453;
      v135 = v454;
      v137 = v455;
      (*(v454 + 104))(v453, *MEMORY[0x277D84688], v455);
      v138 = sub_225B804A4(16, v136, v39);
      (*(v135 + 8))(v136, v137);
      v139 = &v73[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_captureTime];
      swift_beginAccess();
      *v139 = v138;
      v139[4] = BYTE4(v138) & 1;
      if (v72)
      {
        goto LABEL_66;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v73 = v58;
    if ((v491 & 0x10000000) == 0)
    {
      goto LABEL_9;
    }
  }

  if (v487 == 1)
  {
    v77 = 2;
  }

  else
  {
    v77 = v450;
  }

  v78 = OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_isFlashEnabled;
  swift_beginAccess();
  v73[v78] = v77;
  if ((v72 & 0x8000000) != 0)
  {
    goto LABEL_25;
  }

LABEL_10:
  if ((v72 & 8) == 0)
  {
    goto LABEL_11;
  }

LABEL_35:
  if (v490 >= 2 && (v174 = *(v490 + 16), v174 == v496) && v463 && *(v463 + 16) == v174)
  {
    v525[6] = v502;
    v525[7] = v503;
    v525[8] = v504;
    *&v525[9] = v505;
    v525[2] = v498;
    v525[3] = v499;
    v525[4] = v500;
    v525[5] = v501;
    v525[0] = v496;
    v525[1] = v497;
    sub_225B80118(v490, v463);
    v176 = v175;
    v525[6] = v502;
    v525[7] = v503;
    v525[8] = v504;
    *&v525[9] = v505;
    v525[2] = v498;
    v525[3] = v499;
    v525[4] = v500;
    v525[5] = v501;
    v525[0] = v496;
    v525[1] = v497;
    v178 = v453;
    v177 = v454;
    v179 = v455;
    (*(v454 + 104))(v453, *MEMORY[0x277D84688], v455);
    v180 = sub_225B804A4(3, v178, v176);
    (*(v177 + 8))(v178, v179);
    v181 = &v73[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_cardDistortion];
    swift_beginAccess();
    *v181 = v180;
    v181[4] = BYTE4(v180) & 1;
    if ((v72 & 0x80000000) != 0)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v90 = v56;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v91 = off_28105B918;
    v92 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v93 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v93));
    v94 = v489;
    v95 = &v91[v92];
    v96 = v481;
    v97 = v488;
    (*(*&v489 + 16))(v481, v95, v488);
    os_unfair_lock_unlock(&v91[v93]);
    sub_225B3FE18();
    (*(*&v94 + 8))(v96, v97);
    v56 = v90;
    if ((v72 & 0x80000000) != 0)
    {
      goto LABEL_39;
    }
  }

LABEL_12:
  if ((v72 & 0x100000000) == 0)
  {
    goto LABEL_13;
  }

LABEL_50:
  if (v490 != 1 && v463 && (v117 = *(v463 + 16), v117 == v496))
  {
    v118 = MEMORY[0x277D84F90];
    if (v117)
    {
      *&v525[0] = MEMORY[0x277D84F90];
      sub_225CCF394();
      v119 = type metadata accessor for IQPoint();
      v120 = (v463 + 40);
      do
      {
        v121 = *(v120 - 1);
        v122 = *v120;
        v123 = objc_allocWithZone(v119);
        v124 = v121;
        *&v123[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x] = v124;
        v125 = v122;
        *&v123[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y] = v125;
        v494.receiver = v123;
        v494.super_class = v119;
        objc_msgSendSuper2(&v494, sel_init);
        sub_225CCF364();
        sub_225CCF3A4();
        sub_225CCF3B4();
        sub_225CCF374();
        v120 += 2;
        --v117;
      }

      while (v117);
      v118 = *&v525[0];
      v72 = v491;
      v73 = v492;
      v56 = v458;
    }

    v525[6] = v502;
    v525[7] = v503;
    v525[8] = v504;
    *&v525[9] = v505;
    v525[2] = v498;
    v525[3] = v499;
    v525[4] = v500;
    v525[5] = v501;
    v525[0] = v496;
    v525[1] = v497;
    v126 = sub_225B80AD4(v118, 0x13uLL);

    v127 = OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_targetVertices;
    swift_beginAccess();
    *&v73[v127] = v126;

    v51 = v476;
    if ((v72 & 0x10000) != 0)
    {
      goto LABEL_62;
    }
  }

  else
  {
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v128 = off_28105B918;
    v129 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v130 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v130));
    v131 = v489;
    v132 = &v128[v129];
    v133 = v481;
    v134 = v488;
    (*(*&v489 + 16))(v481, v132, v488);
    os_unfair_lock_unlock(&v128[v130]);
    sub_225B400B8();
    (*(*&v131 + 8))(v133, v134);
    v51 = v476;
    if ((v72 & 0x10000) != 0)
    {
      goto LABEL_62;
    }
  }

LABEL_14:
  if ((v72 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_66:
  v140 = v56;
  MEMORY[0x22AA6D020]();
  if (*((v495 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v495 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_225CCE844();
  }

  sub_225CCE884();
  if ((v72 & 4) != 0)
  {
LABEL_69:
    v141 = v479;
    MEMORY[0x22AA6D020]();
    if (*((v495 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v495 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_225CCE844();
    }

    sub_225CCE884();
  }

LABEL_72:
  if ((v72 & 0x20000) == 0)
  {
    if ((v72 & 0x1C0) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_78;
  }

  MEMORY[0x22AA6D020]([v480 setRevision_]);
  if (*((v495 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v495 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_225CCE844();
  }

  sub_225CCE884();
  if ((v72 & 0x1C0) != 0)
  {
LABEL_78:
    v142 = v486;
    MEMORY[0x22AA6D020]();
    if (*((v495 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v495 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_225CCE844();
    }

    sub_225CCE884();
  }

LABEL_81:
  sub_225B798A4(&unk_2838FF750, v525);
  if ((*&v525[0] & v72) != 0 || (v72 & 0x200000) != 0 && v487 != 1 && (v457 & 1) == 0)
  {
    MEMORY[0x22AA6D020]([v482 setRevision_]);
    if (*((v495 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v495 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_225CCE844();
    }

    sub_225CCE884();
  }

  sub_225B798A4(&unk_2838FF780, v525);
  if ((*&v525[0] & v72) == 0)
  {
    v490 = 0;
    v145 = v472;
    goto LABEL_112;
  }

  *&v525[0] = 0;
  v143 = [v477 setRevision:3737841666 error:v525];
  v38 = *&v489;
  if (!v143)
  {
    v146 = *&v525[0];
    v62 = sub_225CCCCC4();

    swift_willThrow();
    if (qword_28105B910 == -1)
    {
LABEL_94:
      v147 = off_28105B918;
      v148 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v149 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v149));
      v150 = &v147[v148];
      v151 = v449;
      v152 = v488;
      (*(v38 + 16))(v449, v150, v488);
      v153 = &v147[v149];
      v154 = v151;
      os_unfair_lock_unlock(v153);
      v155 = v62;
      v156 = sub_225CCD934();
      v157 = v38;
      v158 = sub_225CCED14();

      if (os_log_type_enabled(v156, v158))
      {
        v159 = swift_slowAlloc();
        v160 = swift_slowAlloc();
        *&v525[0] = v160;
        *v159 = 136315138;
        swift_getErrorValue();
        v161 = sub_225CCFB24();
        v163 = v56;
        v164 = sub_2259BE198(v161, v162, v525);

        *(v159 + 4) = v164;
        v56 = v163;
        _os_log_impl(&dword_2259A7000, v156, v158, "Failed to set private faceAttributes revision: %s, using default revision", v159, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v160);
        MEMORY[0x22AA6F950](v160, -1, -1);
        v165 = v159;
        v51 = v476;
        MEMORY[0x22AA6F950](v165, -1, -1);

        v144 = (*(*&v489 + 8))(v449, v488);
      }

      else
      {

        v144 = (*(v157 + 8))(v154, v152);
      }

      v490 = 0;
      v145 = v472;
      v72 = v491;
      goto LABEL_109;
    }

LABEL_308:
    swift_once();
    goto LABEL_94;
  }

  v144 = *&v525[0];
  v490 = 0;
  v145 = v472;
LABEL_109:
  MEMORY[0x22AA6D020](v144);
  if (*((v495 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v495 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_225CCE844();
  }

  sub_225CCE884();
LABEL_112:
  sub_225B798A4(&unk_2838FF7E0, v525);
  if ((*&v525[0] & v72) != 0)
  {
    v182 = v484;
    [v182 setRevision_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E6F0);
    v183 = swift_allocObject();
    *(v183 + 16) = xmmword_225CD30F0;
    v184 = *MEMORY[0x277CE2EA0];
    *(v183 + 32) = *MEMORY[0x277CE2EA0];
    type metadata accessor for VNBarcodeSymbology(0);
    v185 = v184;
    v186 = sub_225CCE7F4();

    [v182 setSymbologies_];

    MEMORY[0x22AA6D020]();
    if (*((v495 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v495 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_225CCE844();
    }

    sub_225CCE884();
  }

  sub_225B798A4(&unk_2838FF828, v525);
  if (*&v525[0] & v72) != 0 || (v72 & 0x200000) != 0 && (v487 == 1 || (v457))
  {
    LODWORD(v187) = v500;
    v188 = v483;
    [v483 setQuadratureTolerance_];
    LODWORD(v189) = HIDWORD(v500);
    [v188 setMinimumSize_];
    LODWORD(v190) = DWORD1(v500);
    [v188 setMinimumAspectRatio_];
    LODWORD(v191) = DWORD2(v500);
    [v188 setMaximumAspectRatio_];
    LODWORD(v192) = v501;
    [v188 setMinimumConfidence_];
    [v188 setMaximumObservations_];
    v193 = v188;
    MEMORY[0x22AA6D020]();
    if (*((v495 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v495 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_225CCE844();
    }

    sub_225CCE884();
  }

  if ((v72 & 0x400000000) != 0)
  {
    v194 = v475;
    MEMORY[0x22AA6D020]();
    if (*((v495 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v495 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_225CCE844();
    }

    sub_225CCE884();
  }

  if ((v72 & 0x4000) != 0)
  {
    v195 = v474;
    MEMORY[0x22AA6D020]();
    if (*((v495 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v495 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_225CCE844();
    }

    sub_225CCE884();
  }

  if ((v72 & 0x20000000000) != 0)
  {
    v197 = v485;
    [v485 setRecognitionLevel_];
    [v197 setUsesLanguageCorrection_];
    v198 = v197;
    [v198 setRevision_];
    *(v525 + 13) = v535;
    *(&v525[1] + 13) = *v536;
    *(&v525[7] + 9) = v533;
    *&v525[0] = v464;
    BYTE12(v525[0]) = v473;
    DWORD2(v525[0]) = v145;
    HIDWORD(v525[2]) = *&v536[15];
    *&v525[3] = v51;
    BYTE8(v525[3]) = v469;
    *(&v525[3] + 9) = v508[0];
    HIDWORD(v525[3]) = *(v508 + 3);
    *&v525[4] = v471;
    BYTE8(v525[4]) = v468;
    HIDWORD(v525[4]) = *(v507 + 3);
    *(&v525[4] + 9) = v507[0];
    *&v525[5] = v470;
    BYTE8(v525[5]) = v467;
    HIDWORD(v525[5]) = *(v506 + 3);
    *(&v525[5] + 9) = v506[0];
    *&v525[6] = v466;
    BYTE8(v525[6]) = v465;
    *(&v525[8] + 9) = v534;
    *(&v525[6] + 9) = v532;
    v199 = sub_225B92B8C(v525);
    if (v199 != 1 && (v525[9] & 1) == 0)
    {
      v199 = [v198 setRegionOfInterest_];
    }

    MEMORY[0x22AA6D020](v199);
    if (*((v495 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v495 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_225CCE844();
    }
  }

  else
  {
    sub_225B798A4(&unk_2838FF868, v525);
    if ((*&v525[0] & v72) == 0)
    {
      goto LABEL_148;
    }

    *(v525 + 13) = v535;
    *(&v525[1] + 13) = *v536;
    *(&v525[6] + 9) = v532;
    *&v525[0] = v464;
    BYTE12(v525[0]) = v473;
    DWORD2(v525[0]) = v145;
    HIDWORD(v525[2]) = *&v536[15];
    *&v525[3] = v51;
    BYTE8(v525[3]) = v469;
    *(&v525[3] + 9) = v508[0];
    HIDWORD(v525[3]) = *(v508 + 3);
    *&v525[4] = v471;
    BYTE8(v525[4]) = v468;
    HIDWORD(v525[4]) = *(v507 + 3);
    *(&v525[4] + 9) = v507[0];
    *&v525[5] = v470;
    BYTE8(v525[5]) = v467;
    HIDWORD(v525[5]) = *(v506 + 3);
    *(&v525[5] + 9) = v506[0];
    *&v525[6] = v466;
    BYTE8(v525[6]) = v465;
    *(&v525[7] + 9) = v533;
    *(&v525[8] + 9) = v534;
    v196 = sub_225B92B8C(v525) == 1 || LOBYTE(v525[2]) == 2 || (v525[2] & 1) == 0;
    v200 = v485;
    [v485 setRecognitionLevel_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD08);
    v201 = swift_allocObject();
    *(v201 + 16) = xmmword_225CD30F0;
    *(v201 + 32) = qword_225CF29C8[v504];
    *(v201 + 40) = 0xE300000000000000;
    v202 = sub_225CCE7F4();

    [v200 setRecognitionLanguages_];

    v200;
    MEMORY[0x22AA6D020]();
    if (*((v495 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v495 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_225CCE844();
    }
  }

  sub_225CCE884();
LABEL_148:
  if (qword_27D73A2D8 != -1)
  {
    swift_once();
  }

  v203 = __swift_project_value_buffer(v460, qword_27D740B28);
  v204 = v459;
  sub_2259CB588(v203, v459);
  v205 = v461;
  DIPSignpost.init(_:)(v204, v461);
  sub_2259D8718(0, &qword_27D73E6F8);
  v206 = sub_225CCE7F4();
  *&v525[0] = 0;
  v207 = [v478 performRequests:v206 error:v525];

  if (v207)
  {
    v208 = *&v525[0];
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    sub_2259CB6A0(v205);
    if (v72)
    {
      v525[6] = v502;
      v525[7] = v503;
      v525[8] = v504;
      *&v525[9] = v505;
      v525[2] = v498;
      v525[3] = v499;
      v525[4] = v500;
      v525[5] = v501;
      v525[0] = v496;
      v525[1] = v497;
      v257 = sub_225B810CC(v56);
      v258 = &v492[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_blurriness];
      swift_beginAccess();
      *v258 = v257;
      v258[4] = BYTE4(v257) & 1;
      if ((v72 & 2) == 0)
      {
LABEL_153:
        if ((v72 & 4) == 0)
        {
          goto LABEL_154;
        }

        goto LABEL_194;
      }
    }

    else if ((v72 & 2) == 0)
    {
      goto LABEL_153;
    }

    v525[6] = v502;
    v525[7] = v503;
    v525[8] = v504;
    *&v525[9] = v505;
    v525[2] = v498;
    v525[3] = v499;
    v525[4] = v500;
    v525[5] = v501;
    v525[0] = v496;
    v525[1] = v497;
    sub_225B819D4(v456);
    v260 = v259;
    v261 = &v492[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_laplaceBlur];
    swift_beginAccess();
    *v261 = v260;
    v261[4] = BYTE4(v260) & 1;
    if ((v72 & 4) == 0)
    {
LABEL_154:
      if ((v72 & 0x20000) == 0)
      {
        goto LABEL_156;
      }

      goto LABEL_155;
    }

LABEL_194:
    v525[6] = v502;
    v525[7] = v503;
    v525[8] = v504;
    *&v525[9] = v505;
    v525[2] = v498;
    v525[3] = v499;
    v525[4] = v500;
    v525[5] = v501;
    v525[0] = v496;
    v525[1] = v497;
    v262 = sub_225B81D90(v479);
    v263 = &v492[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_exposure];
    swift_beginAccess();
    *v263 = v262;
    v263[4] = BYTE4(v262) & 1;
    if ((v72 & 0x20000) == 0)
    {
LABEL_156:
      sub_225B798A4(&unk_2838FF898, v525);
      if ((*&v525[0] & v72) != 0)
      {
        v525[6] = v502;
        v525[7] = v503;
        v525[8] = v504;
        *&v525[9] = v505;
        v525[2] = v498;
        v525[3] = v499;
        v525[4] = v500;
        v525[5] = v501;
        v525[0] = v496;
        v525[1] = v497;
        v211 = sub_225B82E3C(v486);
        v214 = v211;
        v216 = v215;
        v217 = HIDWORD(v211) & 1;
        v218 = HIDWORD(v215) & 1;
        if ((v72 & 0x40) != 0)
        {
          v219 = v212;
        }

        else
        {
          v219 = 0;
        }

        if ((v72 & 0x40) != 0)
        {
          v220 = v213 & 1;
        }

        else
        {
          v220 = 1;
        }

        v221 = &v492[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_headPitch];
        swift_beginAccess();
        *v221 = v219;
        v221[4] = v220;
        if ((v491 & 0x80) != 0)
        {
          v222 = v216;
        }

        else
        {
          v222 = 0;
        }

        if ((v491 & 0x80) != 0)
        {
          v223 = v218;
        }

        else
        {
          v223 = 1;
        }

        v224 = &v492[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_headRoll];
        swift_beginAccess();
        *v224 = v222;
        v224[4] = v223;
        v72 = v491;
        if ((v491 & 0x100) != 0)
        {
          v225 = v214;
        }

        else
        {
          v225 = 0;
        }

        if ((v491 & 0x100) != 0)
        {
          v226 = v217;
        }

        else
        {
          v226 = 1;
        }

        v227 = &v492[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_headYaw];
        swift_beginAccess();
        *v227 = v225;
        v227[4] = v226;
      }

      v229 = v476;
      v228 = v477;
      v230 = v487;
      if ((v72 & 0x400000) != 0)
      {
        if (v487 >= 2 && (v264 = *(v487 + 16)) != 0)
        {
          v265 = &v492[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_numFaces];
          swift_beginAccess();
          *v265 = v264;
          v265[8] = 0;
        }

        else
        {
          v525[6] = v502;
          v525[7] = v503;
          v525[8] = v504;
          v525[2] = v498;
          v525[3] = v499;
          v525[4] = v500;
          v525[5] = v501;
          v525[0] = v496;
          v525[1] = v497;
          *(v524 + 13) = v535;
          *(&v524[1] + 13) = *v536;
          *(&v524[7] + 9) = v533;
          *&v525[9] = v505;
          *&v524[0] = v464;
          BYTE12(v524[0]) = v473;
          v286 = v473;
          v287 = v472;
          DWORD2(v524[0]) = v472;
          HIDWORD(v524[2]) = *&v536[15];
          *&v524[3] = v476;
          BYTE8(v524[3]) = v469;
          *(&v524[3] + 9) = v508[0];
          HIDWORD(v524[3]) = *(v508 + 3);
          *&v524[4] = v471;
          BYTE8(v524[4]) = v468;
          HIDWORD(v524[4]) = *(v507 + 3);
          *(&v524[4] + 9) = v507[0];
          *&v524[5] = v470;
          BYTE8(v524[5]) = v467;
          HIDWORD(v524[5]) = *(v506 + 3);
          *(&v524[5] + 9) = v506[0];
          *&v524[6] = v466;
          BYTE8(v524[6]) = v465;
          *(&v524[8] + 9) = v534;
          *(&v524[6] + 9) = v532;
          if (sub_225B92B8C(v524) == 1)
          {
            v288 = 0;
            v289 = 0;
            v290 = 1;
            v291 = 1;
          }

          else
          {
            v289 = LODWORD(v524[0]);
            v291 = BYTE4(v524[0]);
            v288 = v287;
            v290 = v286;
          }

          LOBYTE(v513[0]) = v290 & 1;
          v292 = sub_225B83A98(v482, v289 | (v291 << 32), v288 | ((v290 & 1) << 32));
          v294 = v293;
          v295 = &v492[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_numFaces];
          swift_beginAccess();
          *v295 = v292;
          v295[8] = v294 & 1;
        }

        v72 = v491;
        if ((v491 & 0x8000) == 0)
        {
LABEL_178:
          if ((v72 & 0x10) == 0)
          {
            goto LABEL_179;
          }

          goto LABEL_213;
        }
      }

      else if ((v72 & 0x8000) == 0)
      {
        goto LABEL_178;
      }

      v525[6] = v502;
      v525[7] = v503;
      v525[8] = v504;
      *&v525[9] = v505;
      v525[2] = v498;
      v525[3] = v499;
      v525[4] = v500;
      v525[5] = v501;
      v525[0] = v496;
      v525[1] = v497;
      v296 = sub_225B844C0(v482);
      v297 = OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_faceConfidences;
      v298 = v492;
      swift_beginAccess();
      *&v298[v297] = v296;

      if ((v72 & 0x10) == 0)
      {
LABEL_179:
        if ((v72 & 0x20) == 0)
        {
          goto LABEL_180;
        }

        goto LABEL_300;
      }

LABEL_213:
      if (v230 >= 2)
      {
        if (*(v230 + 2))
        {
          if (v457)
          {
            v299 = 1;
          }

          else
          {
            v409 = v230[4];
            v410 = v230[5];
            v411 = v37;
            v412 = v230[6];
            v413 = v230[7];
            v553.origin.x = 0.0;
            v553.origin.y = 0.0;
            v553.size.width = 0.0;
            v553.size.height = 0.0;
            v547.origin.x = v34;
            v547.origin.y = v35;
            v547.size.width = v36;
            v547.size.height = v411;
            if (!CGRectEqualToRect(v547, v553))
            {
              v548.origin.x = v409;
              v548.origin.y = v410;
              v548.size.width = v412;
              v548.size.height = v413;
              v427 = CGRectGetWidth(v548);
              v443 = v34;
              v428 = v427;
              v549.origin.x = v409;
              v549.origin.y = v410;
              v549.size.width = v412;
              v549.size.height = v413;
              v429 = v428 * CGRectGetHeight(v549);
              v430 = v443;
              v550.origin.x = v443;
              v550.origin.y = v35;
              v550.size.width = v36;
              v550.size.height = v411;
              v431 = CGRectGetWidth(v550);
              v551.origin.x = v430;
              v551.origin.y = v35;
              v551.size.width = v36;
              v551.size.height = v411;
              v37 = v411;
              v432 = v431 * CGRectGetHeight(v551);
              v525[6] = v502;
              v525[7] = v503;
              v433 = v429 / v432;
              v525[8] = v504;
              *&v525[9] = v505;
              v525[2] = v498;
              v525[3] = v499;
              v525[4] = v500;
              v525[5] = v501;
              v525[0] = v496;
              v525[1] = v497;
              v434 = v229;
              v436 = v453;
              v435 = v454;
              v437 = v455;
              (*(v454 + 104))(v453, *MEMORY[0x277D84688], v455);
              v414 = sub_225B804A4(4, v436, v433);
              v438 = v435;
              v229 = v434;
              v228 = v477;
              v439 = v436;
              v230 = v487;
              (*(v438 + 8))(v439, v437);
              v415 = OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_faceToImageRatio;
              v416 = v492;
              swift_beginAccess();
              *&v416[v415] = v414;
              v34 = v443;
LABEL_299:
              v416[v415 + 4] = BYTE4(v414) & 1;
              if ((v72 & 0x20) == 0)
              {
LABEL_180:
                if ((v72 & 0x200) == 0)
                {
                  goto LABEL_182;
                }

                goto LABEL_181;
              }

LABEL_300:
              v525[6] = v502;
              v525[7] = v503;
              v525[8] = v504;
              *&v525[9] = v505;
              v525[2] = v498;
              v525[3] = v499;
              v525[4] = v500;
              v525[5] = v501;
              v525[0] = v496;
              v525[1] = v497;
              if (v230 == 1)
              {
                v417 = 1;
                v418 = 0.0;
                v419 = 0.0;
                v420 = 0.0;
                v421 = 0.0;
              }

              else
              {
                v418 = v34;
                v419 = v35;
                v420 = v36;
                v421 = v37;
                v417 = v457;
              }

              *v528 = v418;
              *&v528[1] = v419;
              *&v528[2] = v420;
              *&v528[3] = v421;
              v529 = v417 & 1;
              v422 = sub_225B856CC(v228, v528);
              v423 = &v492[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_faceCenteredRatio];
              swift_beginAccess();
              *v423 = v422;
              v423[4] = BYTE4(v422) & 1;
              if ((v72 & 0x200) == 0)
              {
LABEL_182:
                sub_225B798A4(&unk_2838FF8D0, v525);
                if ((*&v525[0] & v72) != 0)
                {
                  v525[6] = v502;
                  v525[7] = v503;
                  v525[8] = v504;
                  *&v525[9] = v505;
                  v525[2] = v498;
                  v525[3] = v499;
                  v525[4] = v500;
                  v525[5] = v501;
                  v525[0] = v496;
                  v525[1] = v497;
                  v233 = sub_225B869D0(v228);
                  v235 = v234;
                  v236 = v492;
                  v237 = &v492[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_sunglassesConfidence];
                  swift_beginAccess();
                  *v237 = v233;
                  v237[4] = BYTE4(v233) & 1;
                  v72 = v491;
                  v238 = &v236[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_glassesConfidence];
                  swift_beginAccess();
                  *v238 = v235;
                  v238[4] = BYTE4(v235) & 1;
                }

                if ((v72 & 0x1000) != 0)
                {
                  v525[6] = v502;
                  v525[7] = v503;
                  v525[8] = v504;
                  *&v525[9] = v505;
                  v525[2] = v498;
                  v525[3] = v499;
                  v525[4] = v500;
                  v525[5] = v501;
                  v525[0] = v496;
                  v525[1] = v497;
                  v266 = sub_225B873AC(v228);
                  v267 = &v492[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_facemaskConfidence];
                  swift_beginAccess();
                  *v267 = v266;
                  v267[4] = BYTE4(v266) & 1;
                  if ((v72 & 0x2000) == 0)
                  {
LABEL_186:
                    if ((v72 & 0x1000000) == 0)
                    {
                      goto LABEL_187;
                    }

                    goto LABEL_201;
                  }
                }

                else if ((v72 & 0x2000) == 0)
                {
                  goto LABEL_186;
                }

                v525[6] = v502;
                v525[7] = v503;
                v525[8] = v504;
                *&v525[9] = v505;
                v525[2] = v498;
                v525[3] = v499;
                v525[4] = v500;
                v525[5] = v501;
                v525[0] = v496;
                v525[1] = v497;
                v268 = sub_225B87C30(v228);
                v269 = v230;
                v270 = v229;
                v271 = v492;
                v272 = &v492[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_headgearConfidence];
                swift_beginAccess();
                *v272 = v268;
                v272[4] = BYTE4(v268) & 1;
                v525[6] = v502;
                v525[7] = v503;
                v525[8] = v504;
                *&v525[9] = v505;
                v525[2] = v498;
                v525[3] = v499;
                v525[4] = v500;
                v525[5] = v501;
                v525[0] = v496;
                v525[1] = v497;
                v273 = sub_225B884B8(v228);
                v274 = OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_headgearConfidences;
                swift_beginAccess();
                *&v271[v274] = v273;
                v229 = v270;
                v230 = v269;

                if ((v72 & 0x1000000) == 0)
                {
LABEL_187:
                  if ((v72 & 0x200000) == 0)
                  {
                    goto LABEL_222;
                  }

                  goto LABEL_202;
                }

LABEL_201:
                v525[6] = v502;
                v525[7] = v503;
                v525[8] = v504;
                *&v525[9] = v505;
                v525[2] = v498;
                v525[3] = v499;
                v525[4] = v500;
                v525[5] = v501;
                v525[0] = v496;
                v525[1] = v497;
                v275 = sub_225B88E94(v228);
                v277 = v276;
                v278 = &v492[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_skinTone];
                swift_beginAccess();
                *v278 = v275;
                v278[8] = v277 & 1;
                v72 = v491;
                if ((v491 & 0x200000) == 0)
                {
                  goto LABEL_222;
                }

LABEL_202:
                if (v230 != 1 && (v457 & 1) == 0)
                {
                  if (v230 && *(v230 + 2))
                  {
                    v279 = v37;
                    v280 = v35;
                    v281 = v34;
                    v282 = v230 + 4;
                    v283 = v230[5];
                    v284 = v230[6];
                    v285 = v230[7];
                  }

                  else
                  {
                    v525[6] = v502;
                    v525[7] = v503;
                    v525[8] = v504;
                    *&v525[9] = v505;
                    v525[2] = v498;
                    v525[3] = v499;
                    v525[4] = v500;
                    v525[5] = v501;
                    v525[0] = v496;
                    v525[1] = v497;
                    v282 = v526;
                    sub_225B89B28(v228, v526);
                    if (v527)
                    {
                      goto LABEL_222;
                    }

                    v279 = v37;
                    v280 = v35;
                    v281 = v34;
                    v283 = *&v526[1];
                    v284 = *&v526[2];
                    v285 = *&v526[3];
                  }

                  v304 = *v282;
                  v305 = v281;
                  v442 = v280;
                  v443 = v281;
                  v306 = v36;
                  v441 = v279;
                  MinX = CGRectGetMinX(*(&v280 - 1));
                  v540.origin.x = v304;
                  v308 = v304;
                  v540.origin.y = v283;
                  v540.size.width = v284;
                  v540.size.height = v285;
                  *&MinX = MinX - CGRectGetMinX(v540);
                  v309 = v492;
                  v310 = &v492[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_leftDrift];
                  swift_beginAccess();
                  *v310 = LODWORD(MinX);
                  v310[4] = 0;
                  v541.origin.x = v304;
                  v489 = v304;
                  v541.origin.y = v283;
                  v541.size.width = v284;
                  v541.size.height = v285;
                  MaxX = CGRectGetMaxX(v541);
                  v542.origin.x = v281;
                  v313 = v441;
                  v312 = v442;
                  v542.origin.y = v442;
                  v542.size.width = v36;
                  v542.size.height = v441;
                  *&MaxX = MaxX - CGRectGetMaxX(v542);
                  v314 = &v309[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_rightDrift];
                  swift_beginAccess();
                  *v314 = LODWORD(MaxX);
                  v314[4] = 0;
                  v543.origin.x = v308;
                  v543.origin.y = v283;
                  v543.size.width = v284;
                  v543.size.height = v285;
                  MaxY = CGRectGetMaxY(v543);
                  v316 = v443;
                  v544.origin.x = v443;
                  v544.origin.y = v312;
                  v544.size.width = v36;
                  v544.size.height = v313;
                  *&MaxY = MaxY - CGRectGetMaxY(v544);
                  v317 = &v309[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_upDrift];
                  swift_beginAccess();
                  *v317 = LODWORD(MaxY);
                  v317[4] = 0;
                  v545.origin.x = v316;
                  v545.origin.y = v312;
                  v545.size.width = v36;
                  v545.size.height = v313;
                  MinY = CGRectGetMinY(v545);
                  v546.origin.x = v489;
                  v546.origin.y = v283;
                  v546.size.width = v284;
                  v546.size.height = v285;
                  *&MinY = MinY - CGRectGetMinY(v546);
                  v319 = &v309[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_downDrift];
                  swift_beginAccess();
                  *v319 = LODWORD(MinY);
                  v319[4] = 0;
                }

LABEL_222:
                v320 = v492;
                if ((v72 & 0x2000000) != 0)
                {
                  v525[6] = v502;
                  v525[7] = v503;
                  v525[8] = v504;
                  *&v525[9] = v505;
                  v525[2] = v498;
                  v525[3] = v499;
                  v525[4] = v500;
                  v525[5] = v501;
                  v525[0] = v496;
                  v525[1] = v497;
                  v321 = sub_225B8A19C(v484);
                  v322 = OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_pdf417Detected;
                  swift_beginAccess();
                  v320[v322] = v321;
                }

                sub_225B798A4(&unk_2838FF900, v525);
                if ((*&v525[0] & v72) == 0)
                {
                  memcpy(v525, v537, 0x370uLL);
LABEL_246:
                  sub_225B798A4(&unk_2838FF940, v524);
                  if (*&v524[0] & v72) != 0 || (v72 & 0x200000) != 0 && (v230 == 1 || (v457))
                  {
                    v524[6] = v502;
                    v524[7] = v503;
                    v524[8] = v504;
                    *&v524[9] = v505;
                    v524[2] = v498;
                    v524[3] = v499;
                    v524[4] = v500;
                    v524[5] = v501;
                    v524[0] = v496;
                    v524[1] = v497;
                    v334 = sub_225B8B1B8(v483);
                    type metadata accessor for DocumentScanGuidanceHelper();
                    swift_allocObject();
                    v524[6] = v502;
                    v524[7] = v503;
                    v524[8] = v504;
                    *&v524[9] = v505;
                    v524[2] = v498;
                    v524[3] = v499;
                    v524[4] = v500;
                    v524[5] = v501;
                    v524[0] = v496;
                    v524[1] = v497;
                    sub_225B8B9B4(v334);
                    v335 = v72;
                    v337 = v336;

                    v524[6] = v502;
                    v524[7] = v503;
                    v524[8] = v504;
                    *&v524[9] = v505;
                    v524[2] = v498;
                    v524[3] = v499;
                    v524[4] = v500;
                    v524[5] = v501;
                    v524[0] = v496;
                    v524[1] = v497;
                    [v456 extent];
                    v340 = sub_225B8C4EC(v337, v338, v339);
                    if ((v335 & 0x200000000) != 0)
                    {
                      v341 = OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_rectangleCorners;
                      v342 = v228;
                      v343 = v229;
                      v344 = v492;
                      swift_beginAccess();
                      *&v344[v341] = v337;
                      v229 = v343;
                      v228 = v342;
                    }

                    if ((v491 & 0x40000) != 0)
                    {
                      v524[6] = v502;
                      v524[7] = v503;
                      v524[8] = v504;
                      *&v524[9] = v505;
                      v524[2] = v498;
                      v524[3] = v499;
                      v524[4] = v500;
                      v524[5] = v501;
                      v524[0] = v496;
                      v524[1] = v497;
                      sub_225B8CAE4(v337);
                      v346 = v345;
                      v347 = &v492[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_documentSize];
                      swift_beginAccess();
                      *v347 = v346;
                      v347[4] = BYTE4(v346) & 1;
                      v229 = v476;
                    }

                    if ((v491 & 0x100000) != 0)
                    {
                      v348 = sub_225B785F8(v340);
                      if ((v348 & 0x100000000) == 0)
                      {
                        v349 = *&v348;
                        v524[6] = v502;
                        v524[7] = v503;
                        v524[8] = v504;
                        *&v524[9] = v505;
                        v524[2] = v498;
                        v524[3] = v499;
                        v524[4] = v500;
                        v524[5] = v501;
                        v524[0] = v496;
                        v524[1] = v497;
                        v351 = v453;
                        v350 = v454;
                        v352 = v455;
                        (*(v454 + 104))(v453, *MEMORY[0x277D84660], v455);
                        v353 = sub_225B804A4(21, v351, v349);
                        (*(v350 + 8))(v351, v352);
                        v354 = &v492[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_documentSkew];
                        swift_beginAccess();
                        *v354 = v353;
                        v354[4] = BYTE4(v353) & 1;
                        v229 = v476;
                      }
                    }

                    if ((v491 & 0x80000) != 0)
                    {
                      v355 = sub_225B78DC8(v340);

                      if ((v355 & 0x100000000) == 0)
                      {
                        v524[6] = v502;
                        v524[7] = v503;
                        v524[8] = v504;
                        *&v524[9] = v505;
                        v524[2] = v498;
                        v524[3] = v499;
                        v524[4] = v500;
                        v524[5] = v501;
                        v524[0] = v496;
                        v524[1] = v497;
                        v357 = v454;
                        v356 = v455;
                        v358 = v228;
                        v359 = v229;
                        v360 = v453;
                        (*(v454 + 104))(v453, *MEMORY[0x277D84660], v455);
                        v361 = sub_225B804A4(20, v360, *&v355);
                        v362 = v360;
                        v229 = v359;
                        v228 = v358;
                        (*(v357 + 8))(v362, v356);
                        v363 = &v492[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_documentRotation];
                        swift_beginAccess();
                        *v363 = v361;
                        v363[4] = BYTE4(v361) & 1;
                      }
                    }

                    else
                    {
                    }

                    v320 = v492;
                    if ((v491 & 0x200000) != 0)
                    {
                      sub_225B76F6C(v337, v524, *&v502, *(&v502 + 1), *&v503, *(&v503 + 1));

                      if ((v524[1] & 1) == 0)
                      {
                        v364 = DWORD2(v524[0]);
                        v365 = v524[0];
                        v366 = HIDWORD(*&v524[0]);
                        v367 = HIDWORD(*(&v524[0] + 1));
                        v368 = &v492[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_leftDrift];
                        swift_beginAccess();
                        *v368 = v365;
                        v228 = v477;
                        v320 = v492;
                        v368[4] = 0;
                        v369 = &v320[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_rightDrift];
                        swift_beginAccess();
                        *v369 = v366;
                        v369[4] = 0;
                        v370 = &v320[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_upDrift];
                        swift_beginAccess();
                        *v370 = v364;
                        v370[4] = 0;
                        v371 = &v320[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_downDrift];
                        swift_beginAccess();
                        *v371 = v367;
                        v371[4] = 0;
                      }
                    }

                    else
                    {

                      swift_setDeallocating();
                      swift_deallocClassInstance();
                    }

                    v72 = v491;
                  }

                  if ((v72 & 0x400000000) != 0)
                  {
                    v524[6] = v502;
                    v524[7] = v503;
                    v524[8] = v504;
                    *&v524[9] = v505;
                    v524[2] = v498;
                    v524[3] = v499;
                    v524[4] = v500;
                    v524[5] = v501;
                    v524[0] = v496;
                    v524[1] = v497;
                    v372 = sub_225B8D758(v475);
                    v373 = OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_documentCorners;
                    swift_beginAccess();
                    *&v320[v373] = v372;
                  }

                  if ((v72 & 0x20000000000) != 0)
                  {

                    v524[6] = v502;
                    v524[7] = v503;
                    v524[8] = v504;
                    *&v524[9] = v505;
                    v524[2] = v498;
                    v524[3] = v499;
                    v524[4] = v500;
                    v524[5] = v501;
                    v524[0] = v496;
                    v524[1] = v497;
                    v382 = sub_225B8DF54(v485);
                    if ((v72 & 0x4000) != 0)
                    {
LABEL_283:
                      v524[6] = v502;
                      v524[7] = v503;
                      v524[8] = v504;
                      *&v524[9] = v505;
                      v524[2] = v498;
                      v524[3] = v499;
                      v524[4] = v500;
                      v524[5] = v501;
                      v524[0] = v496;
                      v524[1] = v497;
                      v383 = sub_225B8F68C(v474);
                      v384 = &v320[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_lensSmudgeConfidence];
                      swift_beginAccess();
                      *v384 = v383;
                      v384[4] = BYTE4(v383) & 1;
                    }
                  }

                  else
                  {
                    sub_225B798A4(&unk_2838FF980, v524);
                    if ((*&v524[0] & v72) != 0)
                    {
                      v524[6] = v502;
                      v524[7] = v503;
                      v524[8] = v504;
                      *&v524[9] = v505;
                      v524[2] = v498;
                      v524[3] = v499;
                      v524[4] = v500;
                      v524[5] = v501;
                      v524[0] = v496;
                      v524[1] = v497;
                      v374 = sub_225B8E74C(v485);
                      if ((v72 & 0x1000000000) != 0)
                      {
                        *(&v513[1] + 5) = v535;
                        *(&v513[3] + 5) = *v536;
                        *(&v513[13] + 1) = v532;
                        v513[0] = v464;
                        LODWORD(v513[1]) = v472;
                        BYTE4(v513[1]) = v473;
                        HIDWORD(v513[5]) = *&v536[15];
                        v513[6] = v229;
                        LOBYTE(v513[7]) = v469;
                        *(&v513[7] + 1) = v508[0];
                        HIDWORD(v513[7]) = *(v508 + 3);
                        v513[8] = v471;
                        LOBYTE(v513[9]) = v468;
                        HIDWORD(v513[9]) = *(v507 + 3);
                        *(&v513[9] + 1) = v507[0];
                        v513[10] = v470;
                        LOBYTE(v513[11]) = v467;
                        HIDWORD(v513[11]) = *(v506 + 3);
                        *(&v513[11] + 1) = v506[0];
                        v513[12] = v466;
                        LOBYTE(v513[13]) = v465;
                        *(&v513[15] + 1) = v533;
                        *(&v513[17] + 1) = v534;
                        if (sub_225B92B8C(v513) != 1)
                        {
                          v375 = v513[2];
                          if (v513[2])
                          {
                            sub_225B92D48(&v496, v524);

                            v376 = v490;
                            v377 = sub_225B92BB0(MEMORY[0x277D84F98], v375, &v496, v374);
                            v490 = v376;

                            sub_225B92D80(&v496);
                            v378 = OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_ocrMatchData;
                            swift_beginAccess();
                            *&v320[v378] = v377;
                          }
                        }
                      }

                      if ((v72 & 0x2000000000) != 0 && (*(&v513[1] + 5) = v535, *(&v513[3] + 5) = *v536, *(&v513[13] + 1) = v532, v513[0] = v464, LODWORD(v513[1]) = v472, BYTE4(v513[1]) = v473, HIDWORD(v513[5]) = *&v536[15], v513[6] = v229, LOBYTE(v513[7]) = v469, *(&v513[7] + 1) = v508[0], HIDWORD(v513[7]) = *(v508 + 3), v513[8] = v471, LOBYTE(v513[9]) = v468, HIDWORD(v513[9]) = *(v507 + 3), *(&v513[9] + 1) = v507[0], v513[10] = v470, LOBYTE(v513[11]) = v467, HIDWORD(v513[11]) = *(v506 + 3), *(&v513[11] + 1) = v506[0], v513[12] = v466, LOBYTE(v513[13]) = v465, *(&v513[15] + 1) = v533, *(&v513[17] + 1) = v534, sub_225B92B8C(v513) != 1) && (v379 = v513[3]) != 0)
                      {
                        sub_225B92D48(&v496, v524);

                        v380 = sub_225B92BB0(MEMORY[0x277D84F98], v379, &v496, v374);

                        sub_225B92D80(&v496);

                        v381 = OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_ocrMatchCriteria;
                        swift_beginAccess();
                        *&v320[v381] = v380;
                      }

                      else
                      {
                      }
                    }

                    v382 = 0;
                    if ((v72 & 0x4000) != 0)
                    {
                      goto LABEL_283;
                    }
                  }

                  if ((v72 & 0x800000) != 0)
                  {
                    v524[6] = v502;
                    v524[7] = v503;
                    v524[8] = v504;
                    *&v524[9] = v505;
                    v524[2] = v498;
                    v524[3] = v499;
                    v524[4] = v500;
                    v524[5] = v501;
                    v524[0] = v496;
                    v524[1] = v497;
                    v386 = sub_225B8FE7C();
                    v388 = v387;
                    v389 = &v320[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_luxLevel];
                    swift_beginAccess();
                    *v389 = v386;
                    v389[8] = v388 & 1;
                    v385 = v473;
                    if ((v72 & 0x10000000000) == 0)
                    {
                      goto LABEL_286;
                    }
                  }

                  else
                  {
                    v385 = v473;
                    if ((v72 & 0x10000000000) == 0)
                    {
LABEL_286:

LABEL_292:
                      v408 = v462;
                      *v462 = v320;
                      result = memcpy(v408 + 1, v525, 0x370uLL);
                      v408[111] = v382;
                      return result;
                    }
                  }

                  v524[6] = v502;
                  v524[7] = v503;
                  v524[8] = v504;
                  v524[2] = v498;
                  v524[3] = v499;
                  v524[4] = v500;
                  v524[5] = v501;
                  v524[0] = v496;
                  v524[1] = v497;
                  *(&v513[1] + 5) = v535;
                  *(&v513[3] + 5) = *v536;
                  *(&v513[15] + 1) = v533;
                  *&v524[9] = v505;
                  v513[0] = v464;
                  LODWORD(v513[1]) = v472;
                  BYTE4(v513[1]) = v385;
                  HIDWORD(v513[5]) = *&v536[15];
                  v513[6] = v229;
                  LOBYTE(v513[7]) = v469;
                  *(&v513[7] + 1) = v508[0];
                  HIDWORD(v513[7]) = *(v508 + 3);
                  v513[8] = v471;
                  LOBYTE(v513[9]) = v468;
                  HIDWORD(v513[9]) = *(v507 + 3);
                  *(&v513[9] + 1) = v507[0];
                  v513[10] = v470;
                  LOBYTE(v513[11]) = v467;
                  HIDWORD(v513[11]) = *(v506 + 3);
                  *(&v513[11] + 1) = v506[0];
                  v513[12] = v466;
                  LOBYTE(v513[13]) = v465;
                  *(&v513[17] + 1) = v534;
                  *(&v513[13] + 1) = v532;
                  if (sub_225B92B8C(v513) == 1)
                  {
                    v390 = 0;
                    v391 = 0;
                    v392 = 0;
                    v229 = 0;
                    v393 = 0;
                    v394 = 1;
                    v395 = 1;
                    v396 = 1;
                    v397 = 1;
                    v398 = 1;
                    v399 = v458;
                  }

                  else
                  {
                    v393 = HIDWORD(v513[4]);
                    v398 = v513[5];
                    v399 = v458;
                    v391 = v470;
                    v392 = v471;
                    v396 = v468;
                    v397 = v469;
                    v395 = v467;
                    v390 = v466;
                    v394 = v465;
                  }

                  v512[0] = v398;
                  v400 = sub_225B90284(v456, v393 | (v398 << 32), v229, v397 & 1, v392, v396 & 1, v391, v395 & 1, v390, v394 & 1);
                  v402 = v401;
                  v404 = v403;

                  v405 = OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_glareClusterSize;
                  v320 = v492;
                  swift_beginAccess();
                  *&v320[v405] = v400;

                  LOBYTE(v405) = v402 & 1;
                  v406 = OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_glareDetected;
                  swift_beginAccess();
                  v320[v406] = v405;

                  v407 = OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_glareAvgIntensity;
                  swift_beginAccess();
                  *&v320[v407] = v404;

                  goto LABEL_292;
                }

                v520 = v502;
                v521 = v503;
                v522 = v504;
                v523 = v505;
                v516 = v498;
                v517 = v499;
                v518 = v500;
                v519 = v501;
                v514 = v496;
                v515 = v497;
                if (v448)
                {
                  v323 = *(v448 + OBJC_IVAR____TtC13CoreIDVShared21IdentityDocScanConfig_pdf417ParsingConfigs);
                }

                else
                {
                  v323 = 0;
                }

                v324 = sub_225B8A61C(v524, v484, v323);

                memcpy(v513, v524, sizeof(v513));
                if ((v72 & 0x4000000) == 0)
                {
                  v324 = 2;
                }

                v325 = OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_isAAMVACompliant;
                swift_beginAccess();
                v320[v325] = v324;
                if ((v72 & 0x4000000000) != 0)
                {
                  v326 = v513;
                  sub_225A0DE54(v513, v525, &qword_27D73DDA0);
                }

                else
                {
                  v326 = v537;
                }

                memcpy(v512, v326, sizeof(v512));
                if ((v72 & 0x20000000) == 0 || (memcpy(v525, v513, 0x370uLL), sub_225B57BE4(v525) == 1) || (memcpy(v511, v525, 0x360uLL), sub_2259D061C(v511) == 1) || !v511[3])
                {
                  v327 = 0;
                  v329 = 0;
                }

                else
                {
                  v509 = v511[2];
                  v510 = v511[3];
                  sub_2259D8654();
                  v327 = sub_225CCF044();
                  v329 = v328;
                }

                v330 = &v320[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_issuerNumber];
                swift_beginAccess();
                *v330 = v327;
                v330[1] = v329;

                if ((v491 & 0x40000000) != 0)
                {
                  memcpy(v525, v513, 0x370uLL);
                  if (sub_225B57BE4(v525) != 1)
                  {
                    sub_225A0DE54(v525, &v509, &qword_27D73DD98);
                    sub_2259CB640(v513, &qword_27D73DDA0);
                    memcpy(v511, v525, 0x360uLL);
                    if (sub_2259D061C(v511) != 1)
                    {
                      v424 = v511[0];
                      v425 = v511[1];

                      sub_2259CB640(v525, &qword_27D73DD98);
                      v509 = v424;
                      v510 = v425;
                      sub_2259D8654();
                      v331 = sub_225CCF044();
                      v332 = v426;

                      goto LABEL_245;
                    }
                  }
                }

                else
                {
                  sub_2259CB640(v513, &qword_27D73DDA0);
                }

                v331 = 0;
                v332 = 0;
LABEL_245:
                v333 = &v320[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_documentType];
                swift_beginAccess();
                *v333 = v331;
                v333[1] = v332;

                memcpy(v525, v512, 0x370uLL);
                v72 = v491;
                goto LABEL_246;
              }

LABEL_181:
              v525[6] = v502;
              v525[7] = v503;
              v525[8] = v504;
              *&v525[9] = v505;
              v525[2] = v498;
              v525[3] = v499;
              v525[4] = v500;
              v525[5] = v501;
              v525[0] = v496;
              v525[1] = v497;
              v231 = sub_225B8614C(v228);
              v232 = &v492[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_blinkingConfidence];
              swift_beginAccess();
              *v232 = v231;
              v232[4] = BYTE4(v231) & 1;
              goto LABEL_182;
            }

            v299 = 0;
            v37 = v411;
          }
        }

        else
        {
          v299 = v457;
        }

        v525[6] = v502;
        v525[7] = v503;
        v525[8] = v504;
        *&v525[9] = v505;
        v525[2] = v498;
        v525[3] = v499;
        v525[4] = v500;
        v525[5] = v501;
        v525[0] = v496;
        v525[1] = v497;
      }

      else
      {
        v525[6] = v502;
        v525[7] = v503;
        v525[8] = v504;
        *&v525[9] = v505;
        v525[2] = v498;
        v525[3] = v499;
        v525[4] = v500;
        v525[5] = v501;
        v299 = v457;
        v525[0] = v496;
        v525[1] = v497;
        if (v230 == 1)
        {
          v299 = 1;
          v300 = 0.0;
          v301 = 0.0;
          v302 = 0.0;
          v303 = 0.0;
LABEL_298:
          *v530 = v300;
          *&v530[1] = v301;
          *&v530[2] = v302;
          *&v530[3] = v303;
          v531 = v299 & 1;
          v414 = sub_225B84BAC(v228, v530);
          v415 = OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_faceToImageRatio;
          v416 = v492;
          swift_beginAccess();
          *&v416[v415] = v414;
          goto LABEL_299;
        }
      }

      v300 = v34;
      v301 = v35;
      v302 = v36;
      v303 = v37;
      goto LABEL_298;
    }

LABEL_155:
    v525[6] = v502;
    v525[7] = v503;
    v525[8] = v504;
    *&v525[9] = v505;
    v525[2] = v498;
    v525[3] = v499;
    v525[4] = v500;
    v525[5] = v501;
    v525[0] = v496;
    v525[1] = v497;
    v209 = sub_225B8269C(v480);
    v210 = &v492[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_faceCaptureQuality];
    swift_beginAccess();
    *v210 = v209;
    v210[4] = BYTE4(v209) & 1;
    goto LABEL_156;
  }

  v239 = *&v525[0];

  v240 = sub_225CCCCC4();

  swift_willThrow();
  sub_2259CB6A0(v205);
  *&v525[0] = 0;
  *(&v525[0] + 1) = 0xE000000000000000;
  sub_225CCF204();

  *&v525[0] = 0xD000000000000023;
  *(&v525[0] + 1) = 0x8000000225D20D70;
  swift_getErrorValue();
  v241 = sub_225CCFB24();
  MEMORY[0x22AA6CE70](v241);

  v242 = v525[0];
  LOWORD(v525[0]) = 349;
  v243 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v244 = swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)(v242, *(&v242 + 1), 0, v525, 0, v243, 0xD000000000000029, 0x8000000225D20DA0, v245, 0xD000000000000047, 0x8000000225D20DD0, 541);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v246 = off_28105B918;
  v247 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v248 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v248));
  v249 = v489;
  v250 = &v246[v247];
  v251 = v481;
  v252 = v488;
  (*(*&v489 + 16))(v481, v250, v488);
  os_unfair_lock_unlock(&v246[v248]);
  DIPLogError(_:message:log:)(v244, 0, 0xE000000000000000);
  _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v244);

  (*(*&v249 + 8))(v251, v252);
  v253 = v492;
  v254 = &v492[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_errorCode];
  swift_beginAccess();
  *v254 = -9000;
  v254[8] = 0;
  v255 = v462;
  *v462 = v253;
  result = memcpy(v255 + 1, v537, 0x370uLL);
  v255[111] = 0;
  return result;
}

uint64_t sub_225B80118(uint64_t a1, uint64_t a2)
{
  v5 = sub_225CCD954();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5, v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  if (*(a1 + 16) == *v2 && *(a2 + 16) == v11)
  {
    if (!v11)
    {
      __break(1u);
      return result;
    }

    if (v11 < 4)
    {
      v12 = 0;
      v13 = 0.0;
LABEL_17:
      v28 = 16 * v12 + 32;
      v29 = (a1 + v28);
      v30 = (a2 + v28);
      v31 = v11 - v12;
      do
      {
        v32 = *v29++;
        v33 = v32;
        v34 = *v30++;
        *&v33.f64[0] = vcvt_f32_f64(vsubq_f64(v33, v34));
        v13 = v13 + sqrtf(vaddv_f32(vmul_f32(*&v33.f64[0], *&v33.f64[0])));
        --v31;
      }

      while (v31);
      return result;
    }

    v12 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    v21 = (a1 + 64);
    v22 = (a2 + 64);
    v13 = 0.0;
    v23 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v24 = v21 - 4;
      v37 = vld2q_f64(v24);
      v38 = vld2q_f64(v21);
      v25 = v22 - 4;
      v39 = vld2q_f64(v25);
      v40 = vld2q_f64(v22);
      v26 = vcvt_f32_f64(vsubq_f64(v37.val[0], v39.val[0]));
      v27 = vcvt_f32_f64(vsubq_f64(v38.val[0], v40.val[0]));
      *&v37.val[0].f64[0] = vcvt_f32_f64(vsubq_f64(v37.val[1], v39.val[1]));
      *&v37.val[1].f64[0] = vcvt_f32_f64(vsubq_f64(v38.val[1], v40.val[1]));
      *&v37.val[0].f64[0] = vsqrt_f32(vadd_f32(vmul_f32(v26, v26), vmul_f32(*&v37.val[0].f64[0], *&v37.val[0].f64[0])));
      *&v37.val[1].f64[0] = vsqrt_f32(vadd_f32(vmul_f32(v27, v27), vmul_f32(*&v37.val[1].f64[0], *&v37.val[1].f64[0])));
      v13 = (((v13 + *v37.val[0].f64) + *(v37.val[0].f64 + 1)) + *v37.val[1].f64) + *(v37.val[1].f64 + 1);
      v21 += 8;
      v22 += 8;
      v23 -= 4;
    }

    while (v23);
    if (v11 != v12)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v14 = off_28105B918;
    v15 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v16 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v16));
    (*(v6 + 16))(v10, &v14[v15], v5);
    os_unfair_lock_unlock(&v14[v16]);
    if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
    {
      v17 = sub_225CCD934();
      v18 = sub_225CCED04();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v36 = v20;
        *v19 = 136315138;
        *(v19 + 4) = sub_2259BE198(0xD00000000000003CLL, 0x8000000225D20F40, &v36);
        _os_log_impl(&dword_2259A7000, v17, v18, "%s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);
        MEMORY[0x22AA6F950](v20, -1, -1);
        MEMORY[0x22AA6F950](v19, -1, -1);
      }
    }

    return (*(v6 + 8))(v10, v5);
  }

  return result;
}

unint64_t sub_225B804A4(char a1, uint64_t a2, float a3)
{
  v7 = sub_225CCD954();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v57 - v14;
  v16 = sub_225CCF8F4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v3 + 144);
  if (*(v21 + 16) && (v22 = sub_2259F1E8C(a1), (v23 & 1) != 0))
  {
    v24 = *(*(v21 + 56) + 4 * v22);
    v25 = a3 / v24;
    *&v62 = v25;
    (*(v17 + 16))(v20, a2, v16);
    v26 = (*(v17 + 88))(v20, v16);
    if (v26 == *MEMORY[0x277D84678])
    {
      v27 = roundf(v25);
    }

    else if (v26 == *MEMORY[0x277D84670])
    {
      v27 = rintf(v25);
    }

    else if (v26 == *MEMORY[0x277D84680])
    {
      v27 = ceilf(v25);
    }

    else if (v26 == *MEMORY[0x277D84688])
    {
      v27 = floorf(v25);
    }

    else if (v26 == *MEMORY[0x277D84660])
    {
      v27 = truncf(v25);
    }

    else if (v26 == *MEMORY[0x277D84668])
    {
      v27 = ceilf(v25);
      v55 = floorf(v25);
      if (v25 < 0.0)
      {
        v27 = v55;
      }
    }

    else
    {
      sub_225CCEBB4();
      (*(v17 + 8))(v20, v16);
      v27 = *&v62;
    }

    v54 = 0;
    v53 = COERCE_UNSIGNED_INT(v24 * v27);
  }

  else
  {
    v59 = v8;
    v60 = v7;
    v62 = 0;
    v63 = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD00000000000002BLL, 0x8000000225D20F80);
    v61 = a1;
    sub_225CCF434();
    v28 = v62;
    v29 = v63;
    v57 = 0x8000000225D218B0;
    v58 = 0x8000000225D20DA0;
    v30 = MEMORY[0x277D84F90];
    v31 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v32 = swift_allocError();
    v34 = v33;
    v35 = sub_225CCE954();
    v36 = *(v35 - 8);
    (*(v36 + 56))(v15, 1, 1, v35);
    LODWORD(v35) = (*(v36 + 48))(v15, 1, v35);
    sub_2259CB640(v15, &unk_27D73B050);
    if (v35)
    {
      v37 = 108;
    }

    else
    {
      v37 = 23;
    }

    v38 = sub_225B2C374(v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v62 = v38;
    sub_225B2C4A0(v31, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v62);

    v40 = v62;
    v41 = sub_225B29AA0(0, 1, 1, v30);
    v43 = *(v41 + 2);
    v42 = *(v41 + 3);
    if (v43 >= v42 >> 1)
    {
      v41 = sub_225B29AA0((v42 > 1), v43 + 1, 1, v41);
    }

    *(v41 + 2) = v43 + 1;
    v44 = &v41[56 * v43];
    *(v44 + 4) = v28;
    *(v44 + 5) = v29;
    v45 = v58;
    *(v44 + 6) = 0xD000000000000029;
    *(v44 + 7) = v45;
    v46 = v57;
    *(v44 + 8) = 0xD00000000000001ELL;
    *(v44 + 9) = v46;
    *(v44 + 10) = 1500;
    *v34 = v37;
    *(v34 + 8) = v41;
    *(v34 + 16) = v28;
    *(v34 + 24) = v29;
    *(v34 + 32) = v40;
    *(v34 + 40) = 0;
    v47 = v59;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v48 = off_28105B918;
    v49 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v50 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v50));
    v51 = &v48[v49];
    v52 = v60;
    (*(v47 + 16))(v11, v51, v60);
    os_unfair_lock_unlock(&v48[v50]);
    DIPLogError(_:message:log:)(v32, 0, 0xE000000000000000);
    _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v32);
    (*(v47 + 8))(v11, v52);

    v53 = 0;
    v54 = 1;
  }

  return v53 | (v54 << 32);
}

uint64_t sub_225B80AD4(unint64_t a1, unint64_t a2)
{
  v5 = sub_225CCD954();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v50 - v12;
  v14 = *(v2 + 144);
  if (!*(v14 + 16) || (v15 = sub_2259F1E8C(a2), (v16 & 1) == 0))
  {
    v52 = v6;
    v53 = v5;
    v56 = 0;
    v57 = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD00000000000002BLL, 0x8000000225D20F80);
    v55 = a2;
    sub_225CCF434();
    v18 = v56;
    a2 = v57;
    v50 = 0x8000000225D20FB0;
    v51 = 0x8000000225D20DA0;
    v34 = MEMORY[0x277D84F90];
    v35 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v20 = swift_allocError();
    v6 = v36;
    v37 = sub_225CCE954();
    v38 = *(v37 - 8);
    (*(v38 + 56))(v13, 1, 1, v37);
    LODWORD(v37) = (*(v38 + 48))(v13, 1, v37);
    sub_2259CB640(v13, &unk_27D73B050);
    if (v37)
    {
      LOWORD(v22) = 108;
    }

    else
    {
      LOWORD(v22) = 23;
    }

    v39 = sub_225B2C374(v34);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = v39;
    sub_225B2C4A0(v35, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v56);

    v24 = v56;
    v21 = sub_225B29AA0(0, 1, 1, v34);
    v25 = *(v21 + 2);
    v23 = *(v21 + 3);
    a1 = v25 + 1;
    if (v25 >= v23 >> 1)
    {
      goto LABEL_25;
    }

    goto LABEL_18;
  }

  v17 = *(*(v14 + 56) + 4 * v15);
  if (a1 >> 62)
  {
    v18 = sub_225CCF144();
  }

  else
  {
    v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x277D84F90];
  if (v18)
  {
    v58[0] = MEMORY[0x277D84F90];
    v20 = v58;
    result = sub_225CCF394();
    if (v18 < 0)
    {
      __break(1u);
      return result;
    }

    v9 = 0;
    v22 = a1 & 0xC000000000000001;
    v23 = a1 & 0xFFFFFFFFFFFFFF8;
    v53 = a1 & 0xFFFFFFFFFFFFFF8;
    v24 = &OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x;
    v25 = &selRef_setSceneIdentifiers_;
    while (1)
    {
      if (v22)
      {
        v26 = MEMORY[0x22AA6DA80](v9, a1);
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          v21 = sub_225B29AA0((v23 > 1), a1, 1, v21);
LABEL_18:
          *(v21 + 2) = a1;
          v41 = &v21[56 * v25];
          *(v41 + 4) = v18;
          *(v41 + 5) = a2;
          v42 = v51;
          *(v41 + 6) = 0xD000000000000029;
          *(v41 + 7) = v42;
          v43 = v50;
          *(v41 + 8) = 0xD000000000000017;
          *(v41 + 9) = v43;
          *(v41 + 10) = 1512;
          *v6 = v22;
          *(v6 + 8) = v21;
          *(v6 + 16) = v18;
          *(v6 + 24) = a2;
          *(v6 + 32) = v24;
          *(v6 + 40) = 0;
          if (qword_28105B910 != -1)
          {
            swift_once();
          }

          v44 = off_28105B918;
          v45 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
          v46 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
          os_unfair_lock_lock((off_28105B918 + v46));
          v47 = v52;
          v48 = &v44[v45];
          v49 = v53;
          (*(v52 + 16))(v9, v48, v53);
          os_unfair_lock_unlock(&v44[v46]);
          DIPLogError(_:message:log:)(v20, 0, 0xE000000000000000);
          _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v20);
          (*(v47 + 8))(v9, v49);

          return 0;
        }

        v23 = *(v53 + 16);
        if (v9 >= v23)
        {
          goto LABEL_24;
        }

        v26 = *(a1 + 8 * v9 + 32);
      }

      v27 = v26;
      ++v9;
      v28 = &v26[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x];
      swift_beginAccess();
      v29 = v17 * floorf(*v28 / v17);
      v30 = &v27[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y];
      swift_beginAccess();
      v31 = v17 * floorf(*v30 / v17);
      v32 = type metadata accessor for IQPoint();
      v33 = objc_allocWithZone(v32);
      *&v33[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x] = v29;
      *&v33[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y] = v31;
      v54.receiver = v33;
      v54.super_class = v32;
      a2 = objc_msgSendSuper2(&v54, sel_init);

      v20 = v58;
      sub_225CCF364();
      v6 = *(v58[0] + 16);
      sub_225CCF3A4();
      sub_225CCF3B4();
      sub_225CCF374();
      if (v18 == v9)
      {
        return v58[0];
      }
    }
  }

  return result;
}

unint64_t sub_225B810CC(void *a1)
{
  v3 = sub_225CCD954();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v72 - v10;
  v12 = sub_225CCF8F4();
  v13 = *(v12 - 1);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v1[7];
  v84 = v1[6];
  v85 = v17;
  v86 = v1[8];
  v87 = *(v1 + 18);
  v18 = v1[3];
  v80 = v1[2];
  v81 = v18;
  v19 = v1[5];
  v82 = v1[4];
  v83 = v19;
  v20 = v1[1];
  v78 = *v1;
  v79 = v20;
  v21 = [a1 results];
  if (!v21)
  {
    v74 = v4;
    v75 = v3;
    v72 = 0x8000000225D21000;
    v73 = 0x8000000225D20DA0;
    v35 = MEMORY[0x277D84F90];
    v36 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v12 = swift_allocError();
    v38 = v37;
    v39 = sub_225CCE954();
    v40 = *(v39 - 8);
    (*(v40 + 56))(v11, 1, 1, v39);
    LODWORD(v39) = (*(v40 + 48))(v11, 1, v39);
    sub_2259CB640(v11, &unk_27D73B050);
    if (v39)
    {
      v41 = 350;
    }

    else
    {
      v41 = 23;
    }

    v42 = sub_225B2C374(v35);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v76[0] = v42;
    sub_225B2C4A0(v36, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v76);

    v44 = *&v76[0];
    v45 = sub_225B29AA0(0, 1, 1, v35);
    v47 = *(v45 + 2);
    v46 = *(v45 + 3);
    if (v47 >= v46 >> 1)
    {
      v45 = sub_225B29AA0((v46 > 1), v47 + 1, 1, v45);
    }

    *(v45 + 2) = v47 + 1;
    v48 = &v45[56 * v47];
    *(v48 + 4) = 0xD000000000000029;
    *(v48 + 5) = 0x8000000225D20FD0;
    v49 = v73;
    *(v48 + 6) = 0xD000000000000029;
    *(v48 + 7) = v49;
    v50 = v72;
    *(v48 + 8) = 0xD000000000000015;
    *(v48 + 9) = v50;
    *(v48 + 10) = 830;
    *v38 = v41;
    *(v38 + 8) = v45;
    *(v38 + 16) = 0xD000000000000029;
    *(v38 + 24) = 0x8000000225D20FD0;
    *(v38 + 32) = v44;
    *(v38 + 40) = 0;
    v52 = v74;
    v51 = v75;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v53 = off_28105B918;
    v54 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v55 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v55));
    (*(v52 + 16))(v7, &v53[v54], v51);
    os_unfair_lock_unlock(&v53[v55]);
    DIPLogError(_:message:log:)(v12, 0, 0xE000000000000000);
    _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v12);
    (*(v52 + 8))(v7, v51);
    goto LABEL_27;
  }

  v22 = v21;
  sub_2259D8718(0, &qword_27D73E778);
  v23 = sub_225CCE814();

  if (!(v23 >> 62))
  {
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_19:
    v74 = v4;
    v75 = v3;

LABEL_20:
    v3 = 0x8000000225D21020;
    v72 = 0x8000000225D21000;
    v73 = 0x8000000225D20DA0;
    v56 = MEMORY[0x277D84F90];
    v57 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v12 = swift_allocError();
    v16 = v58;
    v59 = sub_225CCE954();
    v60 = *(v59 - 8);
    (*(v60 + 56))(v11, 1, 1, v59);
    LODWORD(v59) = (*(v60 + 48))(v11, 1, v59);
    sub_2259CB640(v11, &unk_27D73B050);
    if (v59)
    {
      LOWORD(v13) = 351;
    }

    else
    {
      LOWORD(v13) = 23;
    }

    v61 = sub_225B2C374(v56);
    v62 = swift_isUniquelyReferenced_nonNull_native();
    *&v76[0] = v61;
    sub_225B2C4A0(v57, sub_225B2AC40, 0, v62, v76);

    v11 = *&v76[0];
    v24 = sub_225B29AA0(0, 1, 1, v56);
    v22 = *(v24 + 2);
    v25 = *(v24 + 3);
    v23 = v22 + 1;
    if (v22 < v25 >> 1)
    {
LABEL_24:
      v63 = v75;
      *(v24 + 2) = v23;
      v64 = &v24[56 * v22];
      *(v64 + 4) = 0xD00000000000001BLL;
      *(v64 + 5) = v3;
      v65 = v73;
      *(v64 + 6) = 0xD000000000000029;
      *(v64 + 7) = v65;
      v66 = v72;
      *(v64 + 8) = 0xD000000000000015;
      *(v64 + 9) = v66;
      *(v64 + 10) = 834;
      *v16 = v13;
      *(v16 + 1) = v24;
      *(v16 + 2) = 0xD00000000000001BLL;
      *(v16 + 3) = v3;
      *(v16 + 4) = v11;
      *(v16 + 5) = 0;
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v67 = off_28105B918;
      v68 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v69 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v69));
      v70 = v74;
      (*(v74 + 16))(v7, &v67[v68], v63);
      os_unfair_lock_unlock(&v67[v69]);
      DIPLogError(_:message:log:)(v12, 0, 0xE000000000000000);
      _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v12);
      (*(v70 + 8))(v7, v63);
LABEL_27:

      v34 = 0;
      LOBYTE(v33) = 1;
      goto LABEL_28;
    }

LABEL_31:
    v24 = sub_225B29AA0((v25 > 1), v23, 1, v24);
    goto LABEL_24;
  }

  if (!sub_225CCF144())
  {
    goto LABEL_19;
  }

LABEL_4:
  if ((v23 & 0xC000000000000001) != 0)
  {
    v26 = MEMORY[0x22AA6DA80](0, v23);
  }

  else
  {
    v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v25)
    {
      __break(1u);
      goto LABEL_31;
    }

    v26 = *(v23 + 32);
  }

  v27 = v26;

  v28 = [v27 blurScore];
  if (!v28)
  {
    v74 = v4;
    v75 = v3;

    goto LABEL_20;
  }

  v76[6] = v84;
  v76[7] = v85;
  v76[8] = v86;
  v77 = v87;
  v76[2] = v80;
  v76[3] = v81;
  v76[4] = v82;
  v76[5] = v83;
  v76[0] = v78;
  v76[1] = v79;
  v29 = v28;
  [v28 floatValue];
  v31 = v30;
  (*(v13 + 104))(v16, *MEMORY[0x277D84688], v12);
  v32 = sub_225B804A4(0, v16, v31);

  v33 = HIDWORD(v32) & 1;
  (*(v13 + 8))(v16, v12);
  v34 = v32;
LABEL_28:
  LOBYTE(v78) = v33;
  return v34 | (v33 << 32);
}

void sub_225B819D4(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD30F0;
  v3 = *MEMORY[0x277CBF948];
  *(inited + 32) = *MEMORY[0x277CBF948];
  v4 = objc_allocWithZone(MEMORY[0x277CBEB68]);
  v5 = v3;
  v6 = [v4 init];
  *(inited + 64) = sub_2259D8718(0, &qword_27D73E788);
  *(inited + 40) = v6;
  sub_225B2E5BC(inited);
  swift_setDeallocating();
  sub_2259CB640(inited + 32, &qword_27D73D8E0);
  v7 = objc_allocWithZone(MEMORY[0x277CBF740]);
  type metadata accessor for CIContextOption(0);
  sub_225B93C44(&qword_27D73AAB8, type metadata accessor for CIContextOption);
  v8 = sub_225CCE2B4();

  v9 = [v7 initWithOptions_];

  [a1 extent];
  Width = CGRectGetWidth(v18);
  if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (Width <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (Width >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [a1 extent];
  Height = CGRectGetHeight(v19);
  if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (Height <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (Height >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v12 = Width;
  v13 = Height;
  v14 = sub_225B92318(a1);
  v15 = Width * v13;
  if ((v12 * v13) >> 64 != (v12 * v13) >> 63)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v15 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v16 = v14;
  if (v15)
  {
    v17 = sub_225CCE874();
    *(v17 + 16) = v15;
    bzero((v17 + 32), 4 * v15);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  if ((v12 - 0x2000000000000000) >> 62 == 3)
  {
    [v16 extent];
    [v9 render:v16 toBitmap:v17 + 32 rowBytes:4 * v12 bounds:*MEMORY[0x277CBF9F0] format:0 colorSpace:?];
    sub_225B926EC(v17);

    return;
  }

LABEL_22:
  __break(1u);
}

unint64_t sub_225B81D90(void *a1)
{
  v3 = sub_225CCD954();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v68 - v10;
  v12 = sub_225CCF8F4();
  v13 = *(v12 - 1);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v1[7];
  v80 = v1[6];
  v81 = v17;
  v82 = v1[8];
  v83 = *(v1 + 18);
  v18 = v1[3];
  v76 = v1[2];
  v77 = v18;
  v19 = v1[5];
  v78 = v1[4];
  v79 = v19;
  v20 = v1[1];
  v74 = *v1;
  v75 = v20;
  v21 = [a1 results];
  if (!v21)
  {
    v70 = v4;
    v71 = v3;
    v68 = 0x8000000225D21090;
    v69 = 0x8000000225D20DA0;
    v35 = MEMORY[0x277D84F90];
    v36 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v12 = swift_allocError();
    v38 = v37;
    v39 = sub_225CCE954();
    v40 = *(v39 - 8);
    (*(v40 + 56))(v11, 1, 1, v39);
    LODWORD(v39) = (*(v40 + 48))(v11, 1, v39);
    sub_2259CB640(v11, &unk_27D73B050);
    if (v39)
    {
      v41 = 350;
    }

    else
    {
      v41 = 23;
    }

    v42 = sub_225B2C374(v35);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v72[0] = v42;
    sub_225B2C4A0(v36, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v72);

    v44 = *&v72[0];
    v45 = sub_225B29AA0(0, 1, 1, v35);
    v47 = *(v45 + 2);
    v46 = *(v45 + 3);
    if (v47 >= v46 >> 1)
    {
      v45 = sub_225B29AA0((v46 > 1), v47 + 1, 1, v45);
    }

    *(v45 + 2) = v47 + 1;
    v48 = &v45[56 * v47];
    *(v48 + 4) = 0xD00000000000002DLL;
    *(v48 + 5) = 0x8000000225D21060;
    *(v48 + 6) = 0xD000000000000029;
    *(v48 + 7) = v69;
    *(v48 + 8) = 0xD000000000000013;
    *(v48 + 9) = v68;
    *(v48 + 10) = 845;
    *v38 = v41;
    *(v38 + 8) = v45;
    *(v38 + 16) = 0xD00000000000002DLL;
    *(v38 + 24) = 0x8000000225D21060;
    *(v38 + 32) = v44;
    *(v38 + 40) = 0;
    v50 = v70;
    v49 = v71;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v51 = off_28105B918;
    v52 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v53 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v53));
    (*(v50 + 16))(v7, &v51[v52], v49);
    os_unfair_lock_unlock(&v51[v53]);
    DIPLogError(_:message:log:)(v12, 0, 0xE000000000000000);
    _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v12);
    (*(v50 + 8))(v7, v49);
    goto LABEL_27;
  }

  v22 = v21;
  sub_2259D8718(0, &qword_27D73E778);
  v23 = sub_225CCE814();

  if (!(v23 >> 62))
  {
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_19:
    v70 = v4;
    v71 = v3;

LABEL_20:
    v3 = 0x8000000225D210B0;
    v68 = 0x8000000225D21090;
    v69 = 0x8000000225D20DA0;
    v54 = MEMORY[0x277D84F90];
    v55 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v12 = swift_allocError();
    v16 = v56;
    v57 = sub_225CCE954();
    v58 = *(v57 - 8);
    (*(v58 + 56))(v11, 1, 1, v57);
    LODWORD(v57) = (*(v58 + 48))(v11, 1, v57);
    sub_2259CB640(v11, &unk_27D73B050);
    if (v57)
    {
      LOWORD(v13) = 351;
    }

    else
    {
      LOWORD(v13) = 23;
    }

    v59 = sub_225B2C374(v54);
    v60 = swift_isUniquelyReferenced_nonNull_native();
    *&v72[0] = v59;
    sub_225B2C4A0(v55, sub_225B2AC40, 0, v60, v72);

    v11 = *&v72[0];
    v24 = sub_225B29AA0(0, 1, 1, v54);
    v22 = *(v24 + 2);
    v25 = *(v24 + 3);
    v23 = v22 + 1;
    if (v22 < v25 >> 1)
    {
LABEL_24:
      v61 = v71;
      *(v24 + 2) = v23;
      v62 = &v24[56 * v22];
      *(v62 + 4) = 0xD00000000000001FLL;
      *(v62 + 5) = v3;
      *(v62 + 6) = 0xD000000000000029;
      *(v62 + 7) = v69;
      *(v62 + 8) = 0xD000000000000013;
      *(v62 + 9) = v68;
      *(v62 + 10) = 849;
      *v16 = v13;
      *(v16 + 1) = v24;
      *(v16 + 2) = 0xD00000000000001FLL;
      *(v16 + 3) = v3;
      *(v16 + 4) = v11;
      *(v16 + 5) = 0;
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v63 = off_28105B918;
      v64 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v65 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v65));
      v66 = v70;
      (*(v70 + 16))(v7, &v63[v64], v61);
      os_unfair_lock_unlock(&v63[v65]);
      DIPLogError(_:message:log:)(v12, 0, 0xE000000000000000);
      _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v12);
      (*(v66 + 8))(v7, v61);
LABEL_27:

      v34 = 0;
      LOBYTE(v33) = 1;
      goto LABEL_28;
    }

LABEL_31:
    v24 = sub_225B29AA0((v25 > 1), v23, 1, v24);
    goto LABEL_24;
  }

  if (!sub_225CCF144())
  {
    goto LABEL_19;
  }

LABEL_4:
  if ((v23 & 0xC000000000000001) != 0)
  {
    v26 = MEMORY[0x22AA6DA80](0, v23);
  }

  else
  {
    v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v25)
    {
      __break(1u);
      goto LABEL_31;
    }

    v26 = *(v23 + 32);
  }

  v27 = v26;

  v28 = [v27 exposureScore];
  if (!v28)
  {
    v70 = v4;
    v71 = v3;

    goto LABEL_20;
  }

  v72[6] = v80;
  v72[7] = v81;
  v72[8] = v82;
  v73 = v83;
  v72[2] = v76;
  v72[3] = v77;
  v72[4] = v78;
  v72[5] = v79;
  v72[0] = v74;
  v72[1] = v75;
  v29 = v28;
  [v28 floatValue];
  v31 = v30;
  (*(v13 + 104))(v16, *MEMORY[0x277D84688], v12);
  v32 = sub_225B804A4(2, v16, v31);

  v33 = HIDWORD(v32) & 1;
  (*(v13 + 8))(v16, v12);
  v34 = v32;
LABEL_28:
  LOBYTE(v74) = v33;
  return v34 | (v33 << 32);
}

unint64_t sub_225B8269C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v61 - v5;
  v64 = sub_225CCD954();
  v7 = *(v64 - 8);
  v9 = MEMORY[0x28223BE20](v64, v8);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v61 - v13;
  v15 = sub_225CCF8F4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v1[7];
  v73 = v1[6];
  v74 = v20;
  v75 = v1[8];
  v76 = *(v1 + 18);
  v21 = v1[3];
  v69 = v1[2];
  v70 = v21;
  v22 = v1[5];
  v71 = v1[4];
  v72 = v22;
  v23 = v1[1];
  v67 = *v1;
  v68 = v23;
  v24 = [a1 results];
  if (!v24)
  {
    v62 = 0x8000000225D21110;
    v63 = 0x8000000225D20DA0;
    v31 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v28 = swift_allocError();
    v33 = v32;
    v34 = sub_225CCE954();
    v35 = *(v34 - 8);
    (*(v35 + 56))(v6, 1, 1, v34);
    LODWORD(v34) = (*(v35 + 48))(v6, 1, v34);
    sub_2259CB640(v6, &unk_27D73B050);
    if (v34)
    {
      v36 = 350;
    }

    else
    {
      v36 = 23;
    }

    v37 = MEMORY[0x277D84F90];
    v38 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v65[0] = v38;
    sub_225B2C4A0(v31, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v65);

    v40 = *&v65[0];
    v41 = sub_225B29AA0(0, 1, 1, v37);
    v43 = *(v41 + 2);
    v42 = *(v41 + 3);
    if (v43 >= v42 >> 1)
    {
      v41 = sub_225B29AA0((v42 > 1), v43 + 1, 1, v41);
    }

    *(v41 + 2) = v43 + 1;
    v44 = &v41[56 * v43];
    *(v44 + 4) = 0xD000000000000037;
    *(v44 + 5) = 0x8000000225D210D0;
    v45 = v63;
    *(v44 + 6) = 0xD000000000000029;
    *(v44 + 7) = v45;
    v46 = v62;
    *(v44 + 8) = 0xD00000000000001DLL;
    *(v44 + 9) = v46;
    *(v44 + 10) = 859;
    *v33 = v36;
    *(v33 + 8) = v41;
    *(v33 + 16) = 0xD000000000000037;
    *(v33 + 24) = 0x8000000225D210D0;
    *(v33 + 32) = v40;
    *(v33 + 40) = 0;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v47 = off_28105B918;
    v48 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v49 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v49));
    v50 = &v47[v48];
    v51 = v64;
    (*(v7 + 16))(v11, v50, v64);
    os_unfair_lock_unlock(&v47[v49]);
    DIPLogError(_:message:log:)(v28, 0, 0xE000000000000000);
    _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v28);
    (*(v7 + 8))(v11, v51);

    LODWORD(v28) = 0;
    goto LABEL_21;
  }

  v25 = v24;
  sub_2259D8718(0, &qword_27D73E700);
  v26 = sub_225CCE814();

  v27 = sub_225B9193C(v26);

  if (!v27)
  {
    LODWORD(v28) = 0;
LABEL_14:
    v52 = v64;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v53 = off_28105B918;
    v54 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v55 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v55));
    (*(v7 + 16))(v14, &v53[v54], v52);
    os_unfair_lock_unlock(&v53[v55]);
    if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
    {
      v56 = sub_225CCD934();
      v57 = sub_225CCED04();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *&v65[0] = v59;
        *v58 = 136315138;
        *(v58 + 4) = sub_2259BE198(0xD00000000000003ALL, 0x8000000225D21130, v65);
        _os_log_impl(&dword_2259A7000, v56, v57, "%s", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v59);
        MEMORY[0x22AA6F950](v59, -1, -1);
        MEMORY[0x22AA6F950](v58, -1, -1);

        (*(v7 + 8))(v14, v64);
LABEL_21:
        LOBYTE(v30) = 1;
        return v28 | (v30 << 32);
      }
    }

    (*(v7 + 8))(v14, v52);
    goto LABEL_21;
  }

  v28 = sub_225CCEDF4();

  if ((v28 & 0x100000000) != 0)
  {
    goto LABEL_14;
  }

  v65[6] = v73;
  v65[7] = v74;
  v65[8] = v75;
  v66 = v76;
  v65[2] = v69;
  v65[3] = v70;
  v65[4] = v71;
  v65[5] = v72;
  v65[0] = v67;
  v65[1] = v68;
  (*(v16 + 104))(v19, *MEMORY[0x277D84688], v15);
  v29 = sub_225B804A4(17, v19, *&v28);
  LODWORD(v28) = v29;
  v30 = HIDWORD(v29) & 1;
  (*(v16 + 8))(v19, v15);
  return v28 | (v30 << 32);
}

unint64_t sub_225B82E3C(void *a1)
{
  v121 = *MEMORY[0x277D85DE8];
  v3 = sub_225CCD954();
  v98 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3, v4);
  v7 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v97 = &v92 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v92 - v12;
  v14 = sub_225CCF8F4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v1[6];
  v20 = v1[8];
  v108 = v1[7];
  v109 = v20;
  v110 = *(v1 + 18);
  v21 = v1[3];
  v103 = v1[2];
  v104 = v21;
  v22 = v1[5];
  v105 = v1[4];
  v106 = v22;
  v107 = v19;
  v23 = v1[1];
  v101 = *v1;
  v102 = v23;
  v24 = [a1 results];
  if (!v24)
  {
    v96 = v3;
    v94 = 0x8000000225D21DD0;
    v95 = 0x8000000225D20DA0;
    v38 = MEMORY[0x277D84F90];
    v39 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v40 = swift_allocError();
    v42 = v41;
    v43 = sub_225CCE954();
    v44 = *(v43 - 8);
    (*(v44 + 56))(v13, 1, 1, v43);
    LODWORD(v43) = (*(v44 + 48))(v13, 1, v43);
    sub_2259CB640(v13, &unk_27D73B050);
    if (v43)
    {
      v45 = 350;
    }

    else
    {
      v45 = 23;
    }

    v46 = sub_225B2C374(v38);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v111 = v46;
    sub_225B2C4A0(v39, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v111);

    v48 = v111;
    v49 = sub_225B29AA0(0, 1, 1, v38);
    v51 = *(v49 + 2);
    v50 = *(v49 + 3);
    if (v51 >= v50 >> 1)
    {
      v49 = sub_225B29AA0((v50 > 1), v51 + 1, 1, v49);
    }

    *(v49 + 2) = v51 + 1;
    v52 = &v49[56 * v51];
    *(v52 + 4) = 0xD000000000000031;
    *(v52 + 5) = 0x8000000225D21D90;
    *(v52 + 6) = 0xD000000000000029;
    *(v52 + 7) = v95;
    *(v52 + 8) = 0xD000000000000017;
    *(v52 + 9) = v94;
    *(v52 + 10) = 914;
    *v42 = v45;
    *(v42 + 8) = v49;
    *(v42 + 16) = 0xD000000000000031;
    *(v42 + 24) = 0x8000000225D21D90;
    *(v42 + 32) = v48;
    *(v42 + 40) = 0;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v53 = off_28105B918;
    v54 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v55 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v55));
    v57 = v97;
    v56 = v98;
    v58 = &v53[v54];
    v59 = v96;
    (*(v98 + 16))(v97, v58, v96);
    os_unfair_lock_unlock(&v53[v55]);
    DIPLogError(_:message:log:)(v40, 0, 0xE000000000000000);
    _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v40);
    (*(v56 + 8))(v57, v59);
    v60 = v40;
    goto LABEL_26;
  }

  v25 = v24;
  v96 = v15;
  sub_2259D8718(0, &qword_27D73E700);
  v26 = sub_225CCE814();

  v27 = sub_225B9193C(v26);

  if (!v27)
  {
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v61 = off_28105B918;
    v62 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v63 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v63));
    v64 = v98;
    (*(v98 + 16))(v7, &v61[v62], v3);
    os_unfair_lock_unlock(&v61[v63]);
    if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
    {
      v65 = sub_225CCD934();
      v66 = sub_225CCED04();
      if (os_log_type_enabled(v65, v66))
      {
        v96 = v3;
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        *&v111 = v68;
        *v67 = 136315138;
        *(v67 + 4) = sub_2259BE198(0xD000000000000034, 0x8000000225D21DF0, &v111);
        _os_log_impl(&dword_2259A7000, v65, v66, "%s", v67, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v68);
        MEMORY[0x22AA6F950](v68, -1, -1);
        MEMORY[0x22AA6F950](v67, -1, -1);

        (*(v64 + 8))(v7, v96);
LABEL_29:
        v37 = 0;
        LOBYTE(v33) = 1;
        return v37 | (v33 << 32);
      }
    }

    (*(v64 + 8))(v7, v3);
    goto LABEL_29;
  }

  v100[0] = 0;
  v99 = 0.0;
  v28 = objc_opt_self();
  [v27 pose];
  v29 = [v28 computeYawPitchRollFromPoseMatrix:v100 + 4 outputYaw:v100 outputPitch:&v99 outputRoll:?];
  v95 = v27;
  if (!v29)
  {
    v96 = v3;
    v93 = 0x8000000225D21DD0;
    v94 = 0x8000000225D20DA0;
    v69 = MEMORY[0x277D84F90];
    v70 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v71 = swift_allocError();
    v73 = v72;
    v74 = sub_225CCE954();
    v75 = *(v74 - 8);
    (*(v75 + 56))(v13, 1, 1, v74);
    LODWORD(v74) = (*(v75 + 48))(v13, 1, v74);
    sub_2259CB640(v13, &unk_27D73B050);
    if (v74)
    {
      v76 = 352;
    }

    else
    {
      v76 = 23;
    }

    v77 = sub_225B2C374(v69);
    v78 = swift_isUniquelyReferenced_nonNull_native();
    *&v111 = v77;
    sub_225B2C4A0(v70, sub_225B2AC40, 0, v78, &v111);

    v79 = v111;
    v80 = sub_225B29AA0(0, 1, 1, v69);
    v82 = *(v80 + 2);
    v81 = *(v80 + 3);
    if (v82 >= v81 >> 1)
    {
      v80 = sub_225B29AA0((v81 > 1), v82 + 1, 1, v80);
    }

    v83 = v98;
    *(v80 + 2) = v82 + 1;
    v84 = &v80[56 * v82];
    *(v84 + 4) = 0xD000000000000019;
    *(v84 + 5) = 0x8000000225D21E30;
    *(v84 + 6) = 0xD000000000000029;
    *(v84 + 7) = v94;
    *(v84 + 8) = 0xD000000000000017;
    *(v84 + 9) = v93;
    *(v84 + 10) = 927;
    *v73 = v76;
    *(v73 + 8) = v80;
    *(v73 + 16) = 0xD000000000000019;
    *(v73 + 24) = 0x8000000225D21E30;
    *(v73 + 32) = v79;
    *(v73 + 40) = 0;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v85 = off_28105B918;
    v86 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v87 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v87));
    v88 = &v85[v86];
    v89 = v96;
    v90 = v97;
    (*(v83 + 16))(v97, v88, v96);
    os_unfair_lock_unlock(&v85[v87]);
    DIPLogError(_:message:log:)(v71, 0, 0xE000000000000000);
    _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v71);

    (*(v83 + 8))(v90, v89);
    v60 = v71;
LABEL_26:

    v37 = 0;
    LOBYTE(v33) = 1;
    return v37 | (v33 << 32);
  }

  v117 = v107;
  v118 = v108;
  v119 = v109;
  v120 = v110;
  v113 = v103;
  v114 = v104;
  v115 = v105;
  v116 = v106;
  v111 = v101;
  v112 = v102;
  v30 = *(v100 + 1);
  v31 = *MEMORY[0x277D84688];
  v32 = v96;
  v98 = *(v96 + 104);
  LODWORD(v94) = v31;
  (v98)(v18, v31, v14);
  v97 = sub_225B804A4(8, v18, v30);
  v33 = HIDWORD(v97) & 1;
  v34 = *(v32 + 8);
  v34(v18, v14);
  v117 = v107;
  v118 = v108;
  v119 = v109;
  v120 = v110;
  v113 = v103;
  v114 = v104;
  v115 = v105;
  v116 = v106;
  v111 = v101;
  v112 = v102;
  v35 = *v100;
  (v98)(v18, v31, v14);
  v96 = sub_225B804A4(6, v18, v35);
  v34(v18, v14);
  v117 = v107;
  v118 = v108;
  v119 = v109;
  v120 = v110;
  v113 = v103;
  v114 = v104;
  v115 = v105;
  v116 = v106;
  v111 = v101;
  v112 = v102;
  v36 = v99;
  (v98)(v18, v94, v14);
  sub_225B804A4(7, v18, v36);

  v34(v18, v14);
  v37 = v97;
  return v37 | (v33 << 32);
}

uint64_t sub_225B83A98(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v77 - v8;
  v10 = sub_225CCD954();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = &v77 - v18;
  MEMORY[0x28223BE20](v17, v20);
  v80 = &v77 - v21;
  v22 = [a1 results];
  if (!v22)
  {
    v78 = v11;
    v79 = v10;
    v80 = 0x8000000225D20DA0;
    v77 = 0x8000000225D211A0;
    v39 = MEMORY[0x277D84F90];
    v40 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v41 = swift_allocError();
    v43 = v42;
    v44 = sub_225CCE954();
    v45 = *(v44 - 8);
    (*(v45 + 56))(v9, 1, 1, v44);
    LODWORD(v44) = (*(v45 + 48))(v9, 1, v44);
    sub_2259CB640(v9, &unk_27D73B050);
    if (v44)
    {
      v46 = 350;
    }

    else
    {
      v46 = 23;
    }

    v47 = sub_225B2C374(v39);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v81 = v47;
    sub_225B2C4A0(v40, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v81);

    v49 = v81;
    v50 = sub_225B29AA0(0, 1, 1, v39);
    v52 = *(v50 + 2);
    v51 = *(v50 + 3);
    if (v52 >= v51 >> 1)
    {
      v50 = sub_225B29AA0((v51 > 1), v52 + 1, 1, v50);
    }

    *(v50 + 2) = v52 + 1;
    v53 = &v50[56 * v52];
    *(v53 + 4) = 0xD00000000000002DLL;
    *(v53 + 5) = 0x8000000225D21170;
    *(v53 + 6) = 0xD000000000000029;
    *(v53 + 7) = v80;
    *(v53 + 8) = 0xD00000000000002FLL;
    *(v53 + 9) = v77;
    *(v53 + 10) = 940;
    *v43 = v46;
    *(v43 + 8) = v50;
    *(v43 + 16) = 0xD00000000000002DLL;
    *(v43 + 24) = 0x8000000225D21170;
    *(v43 + 32) = v49;
    *(v43 + 40) = 0;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v54 = off_28105B918;
    v55 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v56 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v56));
    v57 = v78;
    v58 = &v54[v55];
    v59 = v79;
    (v78[2])(v15, v58, v79);
    os_unfair_lock_unlock(&v54[v56]);
    DIPLogError(_:message:log:)(v41, 0, 0xE000000000000000);
    _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v41);
    (v57[1])(v15, v59);

    return 0;
  }

  sub_2259D8718(0, &qword_27D73E700);
  v23 = sub_225CCE814();

  if ((a2 & 0x100000000) != 0 || (a3 & 0x100000000) != 0)
  {
LABEL_19:
    v26 = v11;
    if (qword_28105B910 != -1)
    {
      goto LABEL_38;
    }

    goto LABEL_20;
  }

  v81 = MEMORY[0x277D84F90];
  if (v23 >> 62)
  {
    v19 = sub_225CCF144();
    v79 = v10;
    if (v19)
    {
      goto LABEL_6;
    }

LABEL_41:
    v61 = MEMORY[0x277D84F90];
LABEL_42:
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v62 = off_28105B918;
    v63 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v64 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v64));
    v65 = &v62[v63];
    v66 = v79;
    v67 = v80;
    (v11[2])(v80, v65, v79);
    os_unfair_lock_unlock(&v62[v64]);
    if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
    {
      v68 = sub_225B91B14(v23, v61);
      v70 = v69;

      v71 = sub_225CCD934();
      v72 = sub_225CCED04();

      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v81 = v74;
        *v73 = 136315138;
        v75 = sub_2259BE198(v68, v70, &v81);

        *(v73 + 4) = v75;
        _os_log_impl(&dword_2259A7000, v71, v72, "%s", v73, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v74);
        MEMORY[0x22AA6F950](v74, -1, -1);
        MEMORY[0x22AA6F950](v73, -1, -1);
      }

      else
      {
      }

      (v11[1])(v67, v79);
    }

    else
    {
      (v11[1])(v67, v66);
    }

    if ((v61 & 0x8000000000000000) != 0 || (v61 & 0x4000000000000000) != 0)
    {
      v60 = sub_225CCF144();
    }

    else
    {
      v60 = *(v61 + 16);
    }

    return v60;
  }

  v19 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v79 = v10;
  if (!v19)
  {
    goto LABEL_41;
  }

LABEL_6:
  v77 = v22;
  v78 = v11;
  v24 = 0;
  v25 = *&a3;
  v26 = v23 & 0xFFFFFFFFFFFFFF8;
  v11 = &off_278575000;
  while ((v23 & 0xC000000000000001) != 0)
  {
    v27 = MEMORY[0x22AA6DA80](v24, v23);
    v10 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

LABEL_13:
    v28 = v27;
    [v28 confidence];
    if (v29 < *&a2)
    {
    }

    else
    {
      [v28 confidence];
      v31 = v30;

      if (v31 <= v25)
      {
        sub_225CCF364();
        sub_225CCF3A4();
        sub_225CCF3B4();
        sub_225CCF374();
        goto LABEL_9;
      }
    }

LABEL_9:
    ++v24;
    if (v10 == v19)
    {
      v61 = v81;
      v11 = v78;
      goto LABEL_42;
    }
  }

  if (v24 < *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v27 = *(v23 + 8 * v24 + 32);
    v10 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  __break(1u);
LABEL_38:
  swift_once();
LABEL_20:
  v32 = off_28105B918;
  v33 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v34 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v34));
  (*(v26 + 16))(v19, &v32[v33], v10);
  os_unfair_lock_unlock(&v32[v34]);
  if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
  {
    v35 = sub_225CCD934();
    v36 = sub_225CCED04();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v81 = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_2259BE198(0xD000000000000048, 0x8000000225D211D0, &v81);
      _os_log_impl(&dword_2259A7000, v35, v36, "%s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x22AA6F950](v38, -1, -1);
      MEMORY[0x22AA6F950](v37, -1, -1);
    }

    (*(v26 + 8))(v19, v10);
  }

  else
  {
    (*(v26 + 8))(v19, v10);
  }

  if (v23 >> 62)
  {
    v60 = sub_225CCF144();
  }

  else
  {
    v60 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v60;
}

char *sub_225B844C0(void *a1)
{
  v3 = sub_225CCD954();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v54 - v10;
  v61 = sub_225CCF8F4();
  v12 = *(v61 - 8);
  MEMORY[0x28223BE20](v61, v13);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v1[7];
  v70 = v1[6];
  v71 = v16;
  v72 = v1[8];
  v73 = *(v1 + 18);
  v17 = v1[3];
  v66 = v1[2];
  v67 = v17;
  v18 = v1[5];
  v68 = v1[4];
  v69 = v18;
  v19 = v1[1];
  v64 = *v1;
  v65 = v19;
  v20 = [a1 results];
  if (v20)
  {
    v21 = v20;
    sub_2259D8718(0, &qword_27D73E700);
    v22 = sub_225CCE814();

    if (v22 >> 62)
    {
      goto LABEL_29;
    }

    for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_225CCF144())
    {
      v24 = 0;
      v59 = v22 & 0xFFFFFFFFFFFFFF8;
      v60 = v22 & 0xC000000000000001;
      v58 = *MEMORY[0x277D84688];
      v56 = (v12 + 8);
      v57 = (v12 + 104);
      v12 = MEMORY[0x277D84F90];
      v55 = v22;
      while (1)
      {
        if (v60)
        {
          v25 = MEMORY[0x22AA6DA80](v24, v22);
        }

        else
        {
          if (v24 >= *(v59 + 16))
          {
            goto LABEL_28;
          }

          v25 = *(v22 + 8 * v24 + 32);
        }

        v26 = v25;
        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        v62[6] = v70;
        v62[7] = v71;
        v62[8] = v72;
        v63 = v73;
        v62[2] = v66;
        v62[3] = v67;
        v62[4] = v68;
        v62[5] = v69;
        v62[0] = v64;
        v62[1] = v65;
        [v25 confidence];
        v29 = v28;
        v30 = v61;
        (*v57)(v15, v58, v61);
        v31 = sub_225B804A4(9, v15, v29);
        (*v56)(v15, v30);
        if ((v31 & 0x100000000) != 0)
        {

          return 0;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_225B2A818(0, *(v12 + 2) + 1, 1, v12);
        }

        v33 = *(v12 + 2);
        v32 = *(v12 + 3);
        if (v33 >= v32 >> 1)
        {
          v12 = sub_225B2A818((v32 > 1), v33 + 1, 1, v12);
        }

        *(v12 + 2) = v33 + 1;
        *&v12[4 * v33 + 32] = v31;
        ++v24;
        v22 = v55;
        if (v27 == i)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      ;
    }

    v12 = MEMORY[0x277D84F90];
LABEL_31:
  }

  else
  {
    v60 = 0x8000000225D20DA0;
    v61 = 0x8000000225D21220;
    v59 = 0x8000000225D21260;
    v34 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v35 = swift_allocError();
    v37 = v36;
    v38 = sub_225CCE954();
    v39 = *(v38 - 8);
    (*(v39 + 56))(v11, 1, 1, v38);
    LODWORD(v38) = (*(v39 + 48))(v11, 1, v38);
    sub_2259CB640(v11, &unk_27D73B050);
    if (v38)
    {
      v40 = 350;
    }

    else
    {
      v40 = 23;
    }

    v41 = MEMORY[0x277D84F90];
    v42 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v62[0] = v42;
    sub_225B2C4A0(v34, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v62);

    v44 = *&v62[0];
    v45 = sub_225B29AA0(0, 1, 1, v41);
    v47 = *(v45 + 2);
    v46 = *(v45 + 3);
    if (v47 >= v46 >> 1)
    {
      v45 = sub_225B29AA0((v46 > 1), v47 + 1, 1, v45);
    }

    *(v45 + 2) = v47 + 1;
    v48 = &v45[56 * v47];
    v49 = v61;
    *(v48 + 4) = 0xD000000000000033;
    *(v48 + 5) = v49;
    *(v48 + 6) = 0xD000000000000029;
    *(v48 + 7) = v60;
    *(v48 + 8) = 0xD00000000000001ALL;
    *(v48 + 9) = v59;
    *(v48 + 10) = 957;
    *v37 = v40;
    *(v37 + 8) = v45;
    *(v37 + 16) = 0xD000000000000033;
    *(v37 + 24) = v49;
    *(v37 + 32) = v44;
    *(v37 + 40) = 0;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v50 = off_28105B918;
    v51 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v52 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v52));
    (*(v4 + 16))(v7, &v50[v51], v3);
    os_unfair_lock_unlock(&v50[v52]);
    DIPLogError(_:message:log:)(v35, 0, 0xE000000000000000);
    _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v35);
    (*(v4 + 8))(v7, v3);

    return 0;
  }

  return v12;
}

unint64_t sub_225B84BAC(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v94 - v7;
  v97 = COERCE_DOUBLE(sub_225CCD954());
  v9 = *(*&v97 - 8);
  v11 = MEMORY[0x28223BE20](*&v97, v10);
  v13 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v94 - v16;
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v94 - v19;
  v21 = sub_225CCF8F4();
  v95 = *(v21 - 8);
  v96 = v21;
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v2[7];
  v114 = v2[6];
  v115 = v25;
  v116 = v2[8];
  v117 = *(v2 + 18);
  v26 = v2[3];
  v110 = v2[2];
  v111 = v26;
  v27 = v2[5];
  v112 = v2[4];
  v113 = v27;
  v28 = v2[1];
  v108 = *v2;
  v109 = v28;
  v29 = [a1 results];
  if (!v29)
  {
    v95 = 0x8000000225D20DA0;
    v96 = 0x8000000225D21280;
    v94 = 0x8000000225D212B0;
    v45 = MEMORY[0x277D84F90];
    v46 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v47 = swift_allocError();
    v49 = v48;
    v50 = sub_225CCE954();
    v51 = *(v50 - 8);
    (*(v51 + 56))(v8, 1, 1, v50);
    LODWORD(v50) = (*(v51 + 48))(v8, 1, v50);
    sub_2259CB640(v8, &unk_27D73B050);
    if (v50)
    {
      v52 = 350;
    }

    else
    {
      v52 = 23;
    }

    v53 = sub_225B2C374(v45);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v98 = v53;
    sub_225B2C4A0(v46, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v98);

    v55 = v98;
    v56 = sub_225B29AA0(0, 1, 1, v45);
    v58 = *(v56 + 2);
    v57 = *(v56 + 3);
    if (v58 >= v57 >> 1)
    {
      v56 = sub_225B29AA0((v57 > 1), v58 + 1, 1, v56);
    }

    *(v56 + 2) = v58 + 1;
    v59 = &v56[56 * v58];
    v60 = v96;
    *(v59 + 4) = 0xD00000000000002ELL;
    *(v59 + 5) = v60;
    *(v59 + 6) = 0xD000000000000029;
    *(v59 + 7) = v95;
    *(v59 + 8) = 0xD000000000000018;
    *(v59 + 9) = v94;
    *(v59 + 10) = 875;
    *v49 = v52;
    *(v49 + 8) = v56;
    *(v49 + 16) = 0xD00000000000002ELL;
    *(v49 + 24) = v60;
    *(v49 + 32) = v55;
    *(v49 + 40) = 0;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v61 = off_28105B918;
    v62 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v63 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v63));
    v64 = &v61[v62];
    v65 = v97;
    (*(v9 + 16))(v13, v64, COERCE_DOUBLE(*&v97));
    os_unfair_lock_unlock(&v61[v63]);
    DIPLogError(_:message:log:)(v47, 0, 0xE000000000000000);
    _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v47);
    (*(v9 + 8))(v13, COERCE_DOUBLE(*&v65));

    goto LABEL_25;
  }

  v30 = v29;
  sub_2259D8718(0, &qword_27D73E700);
  v31 = sub_225CCE814();

  v32 = sub_225B9193C(v31);

  if (!v32)
  {
    v66 = v9;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v67 = off_28105B918;
    v68 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v69 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v69));
    v70 = v97;
    (*(v9 + 16))(v17, &v67[v68], COERCE_DOUBLE(*&v97));
    os_unfair_lock_unlock(&v67[v69]);
    if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
    {
      v71 = sub_225CCD934();
      v72 = sub_225CCED04();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        *&v98 = v74;
        *v73 = 136315138;
        *(v73 + 4) = sub_2259BE198(0xD000000000000038, 0x8000000225D212D0, &v98);
        _os_log_impl(&dword_2259A7000, v71, v72, "%s", v73, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v74);
        MEMORY[0x22AA6F950](v74, -1, -1);
        MEMORY[0x22AA6F950](v73, -1, -1);
      }
    }

    (*(v66 + 8))(v17, COERCE_DOUBLE(*&v70));
LABEL_25:
    LODWORD(v75) = 0;
    LOBYTE(v76) = 1;
    return v75 | (v76 << 32);
  }

  if ((*(a2 + 32) & 1) != 0 || (v34 = *(a2 + 16), v33 = *(a2 + 24), v36 = *a2, v35 = *(a2 + 8), v125.origin.x = 0.0, v125.origin.y = 0.0, v125.size.width = 0.0, v125.size.height = 0.0, v118.origin.x = *a2, v118.origin.y = v35, v118.size.width = v34, v118.size.height = v33, CGRectEqualToRect(v118, v125)))
  {
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v37 = off_28105B918;
    v38 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v39 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v39));
    v40 = v97;
    (*(v9 + 16))(v20, &v37[v38], COERCE_DOUBLE(*&v97));
    os_unfair_lock_unlock(&v37[v39]);
    if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
    {
      v41 = sub_225CCD934();
      v42 = sub_225CCED04();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *&v98 = v44;
        *v43 = 136315138;
        *(v43 + 4) = sub_2259BE198(0xD000000000000028, 0x8000000225D21310, &v98);
        _os_log_impl(&dword_2259A7000, v41, v42, "%s", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v44);
        MEMORY[0x22AA6F950](v44, -1, -1);
        MEMORY[0x22AA6F950](v43, -1, -1);

        (*(v9 + 8))(v20, COERCE_DOUBLE(*&v97));
LABEL_29:
        v104 = v114;
        v105 = v115;
        v106 = v116;
        v107 = v117;
        v100 = v110;
        v101 = v111;
        v102 = v112;
        v103 = v113;
        v98 = v108;
        v99 = v109;
        [v32 boundingBox];
        x = v123.origin.x;
        y = v123.origin.y;
        width = v123.size.width;
        height = v123.size.height;
        v90 = CGRectGetWidth(v123);
        v124.origin.x = x;
        v124.origin.y = y;
        v124.size.width = width;
        v124.size.height = height;
        *&x = v90 * CGRectGetHeight(v124);
        v92 = v95;
        v91 = v96;
        (*(v95 + 104))(v24, *MEMORY[0x277D84688], v96);
        v75 = sub_225B804A4(4, v24, *&x);

        v76 = HIDWORD(v75) & 1;
        (*(v92 + 8))(v24, v91);
        return v75 | (v76 << 32);
      }
    }

    (*(v9 + 8))(v20, COERCE_DOUBLE(*&v40));
    goto LABEL_29;
  }

  [v32 boundingBox];
  v77 = v119.origin.x;
  v78 = v119.origin.y;
  v79 = v119.size.width;
  v80 = v119.size.height;
  v97 = CGRectGetWidth(v119);
  v120.origin.x = v77;
  v120.origin.y = v78;
  v120.size.width = v79;
  v120.size.height = v80;
  *&v78 = v97 * CGRectGetHeight(v120);
  v121.origin.x = v36;
  v121.origin.y = v35;
  v121.size.width = v34;
  v121.size.height = v33;
  v81 = CGRectGetWidth(v121);
  v122.origin.x = v36;
  v122.origin.y = v35;
  v122.size.width = v34;
  v122.size.height = v33;
  v82 = v81 * CGRectGetHeight(v122);
  v104 = v114;
  v105 = v115;
  v83 = *&v78 / v82;
  v106 = v116;
  v107 = v117;
  v100 = v110;
  v101 = v111;
  v102 = v112;
  v103 = v113;
  v98 = v108;
  v99 = v109;
  v85 = v95;
  v84 = v96;
  (*(v95 + 104))(v24, *MEMORY[0x277D84688], v96);
  v75 = sub_225B804A4(4, v24, v83);

  v76 = HIDWORD(v75) & 1;
  (*(v85 + 8))(v24, v84);
  return v75 | (v76 << 32);
}

unint64_t sub_225B856CC(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v94 - v7;
  v9 = sub_225CCD954();
  v10 = *(v9 - 8);
  v96 = v9;
  x = v10;
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = &v94 - v17;
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v94 - v20;
  v22 = sub_225CCF8F4();
  v95 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v2[7];
  v106 = v2[6];
  v107 = v26;
  v108 = v2[8];
  v109 = *(v2 + 18);
  v27 = v2[3];
  v102 = v2[2];
  v103 = v27;
  v28 = v2[5];
  v104 = v2[4];
  v105 = v28;
  v29 = v2[1];
  v100 = *v2;
  v101 = v29;
  v30 = [a1 results];
  if (!v30)
  {
    v94 = 0x8000000225D21380;
    v95 = 0x8000000225D20DA0;
    v43 = MEMORY[0x277D84F90];
    v44 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v45 = swift_allocError();
    v47 = v46;
    v48 = sub_225CCE954();
    v49 = *(v48 - 8);
    (*(v49 + 56))(v8, 1, 1, v48);
    LODWORD(v48) = (*(v49 + 48))(v8, 1, v48);
    sub_2259CB640(v8, &unk_27D73B050);
    if (v48)
    {
      v50 = 350;
    }

    else
    {
      v50 = 23;
    }

    v51 = sub_225B2C374(v43);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v98[0] = v51;
    sub_225B2C4A0(v44, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v98);

    v53 = *&v98[0];
    v54 = sub_225B29AA0(0, 1, 1, v43);
    v56 = *(v54 + 2);
    v55 = *(v54 + 3);
    if (v56 >= v55 >> 1)
    {
      v54 = sub_225B29AA0((v55 > 1), v56 + 1, 1, v54);
    }

    *(v54 + 2) = v56 + 1;
    v57 = &v54[56 * v56];
    *(v57 + 4) = 0xD000000000000036;
    *(v57 + 5) = 0x8000000225D21340;
    *(v57 + 6) = 0xD000000000000029;
    *(v57 + 7) = v95;
    *(v57 + 8) = 0xD00000000000001CLL;
    *(v57 + 9) = v94;
    *(v57 + 10) = 894;
    *v47 = v50;
    *(v47 + 8) = v54;
    *(v47 + 16) = 0xD000000000000036;
    *(v47 + 24) = 0x8000000225D21340;
    *(v47 + 32) = v53;
    *(v47 + 40) = 0;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v58 = off_28105B918;
    v59 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v60 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v60));
    v61 = x;
    v62 = &v58[v59];
    v63 = v96;
    (*(*&x + 16))(v14, v62, v96);
    os_unfair_lock_unlock(&v58[v60]);
    DIPLogError(_:message:log:)(v45, 0, 0xE000000000000000);
    _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v45);
    (*(*&v61 + 8))(v14, v63);

    goto LABEL_28;
  }

  v31 = v30;
  sub_2259D8718(0, &qword_27D73E700);
  v32 = sub_225CCE814();

  v33 = sub_225B9193C(v32);

  if (!v33)
  {
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v64 = off_28105B918;
    v65 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v66 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v66));
    v68 = v96;
    v67 = x;
    (*(*&x + 16))(v18, &v64[v65], v96);
    os_unfair_lock_unlock(&v64[v66]);
    if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
    {
      v69 = sub_225CCD934();
      v70 = sub_225CCED04();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = v67;
        v73 = swift_slowAlloc();
        *&v98[0] = v73;
        *v71 = 136315138;
        *(v71 + 4) = sub_2259BE198(0xD00000000000003DLL, 0x8000000225D213A0, v98);
        _os_log_impl(&dword_2259A7000, v69, v70, "%s", v71, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v73);
        MEMORY[0x22AA6F950](v73, -1, -1);
        MEMORY[0x22AA6F950](v71, -1, -1);

        (*(*&v72 + 8))(v18, v68);
LABEL_28:
        v92 = 0;
        LOBYTE(v91) = 1;
        return v92 | (v91 << 32);
      }
    }

    (*(*&v67 + 8))(v18, v68);
    goto LABEL_28;
  }

  if (*(a2 + 32))
  {
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v34 = off_28105B918;
    v35 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v36 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v36));
    v38 = v96;
    v37 = x;
    (*(*&x + 16))(v21, &v34[v35], v96);
    os_unfair_lock_unlock(&v34[v36]);
    if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
    {
      v39 = sub_225CCD934();
      v40 = sub_225CCED04();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *&v98[0] = v42;
        *v41 = 136315138;
        *(v41 + 4) = sub_2259BE198(0xD000000000000039, 0x8000000225D213E0, v98);
        _os_log_impl(&dword_2259A7000, v39, v40, "%s", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v42);
        MEMORY[0x22AA6F950](v42, -1, -1);
        MEMORY[0x22AA6F950](v41, -1, -1);
      }

      else
      {
      }

      (*(*&x + 8))(v21, v38);
    }

    else
    {
      (*(*&v37 + 8))(v21, v38);
    }

    goto LABEL_28;
  }

  v75 = *(a2 + 16);
  v74 = *(a2 + 24);
  v77 = *a2;
  v76 = *(a2 + 8);
  [v33 boundingBox];
  x = v110.origin.x;
  y = v110.origin.y;
  width = v110.size.width;
  height = v110.size.height;
  v115.origin.x = v77;
  v115.origin.y = v76;
  v115.size.width = v75;
  v115.size.height = v74;
  v111 = CGRectIntersection(v110, v115);
  v81 = v111.origin.x;
  v82 = v111.origin.y;
  v83 = v111.size.width;
  v84 = v111.size.height;
  v85 = CGRectGetWidth(v111);
  v112.origin.x = v81;
  v112.origin.y = v82;
  v112.size.width = v83;
  v112.size.height = v84;
  *&v82 = v85 * CGRectGetHeight(v112);
  v86 = x;
  v113.origin.x = x;
  v113.origin.y = y;
  v113.size.width = width;
  v113.size.height = height;
  v87 = CGRectGetWidth(v113);
  v114.origin.x = v86;
  v114.origin.y = y;
  v114.size.width = width;
  v114.size.height = height;
  v88 = v87 * CGRectGetHeight(v114);
  v98[6] = v106;
  v98[7] = v107;
  *&v87 = *&v82 / v88;
  v98[8] = v108;
  v99 = v109;
  v98[2] = v102;
  v98[3] = v103;
  v98[4] = v104;
  v98[5] = v105;
  v98[0] = v100;
  v98[1] = v101;
  v89 = v95;
  (*(v95 + 104))(v25, *MEMORY[0x277D84688], v22);
  v90 = sub_225B804A4(5, v25, *&v87);

  v91 = HIDWORD(v90) & 1;
  (*(v89 + 8))(v25, v22);
  v92 = v90;
  return v92 | (v91 << 32);
}

unint64_t sub_225B8614C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v74 - v5;
  v77 = sub_225CCD954();
  v7 = *(v77 - 8);
  v9 = MEMORY[0x28223BE20](v77, v8);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v74 - v13;
  v15 = sub_225CCF8F4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v1[7];
  v86 = v1[6];
  v87 = v20;
  v88 = v1[8];
  v89 = *(v1 + 18);
  v21 = v1[3];
  v82 = v1[2];
  v83 = v21;
  v22 = v1[5];
  v84 = v1[4];
  v85 = v22;
  v23 = v1[1];
  v80 = *v1;
  v81 = v23;
  v24 = [a1 results];
  if (v24)
  {
    v25 = v24;
    sub_2259D8718(0, &qword_27D73E700);
    v26 = sub_225CCE814();

    v27 = sub_225B9193C(v26);

    if (v27)
    {
      v28 = [v27 faceAttributes];
      if (v28)
      {
        v29 = v28;
        v30 = [v28 eyesCategory];
        v31 = [v30 label];

        v32 = [v31 identifier];
        v33 = sub_225CCE474();
        v35 = v34;

        if (v33 == sub_225CCE474() && v35 == v36)
        {
        }

        else
        {
          v69 = sub_225CCF934();

          v70 = 0.0;
          if ((v69 & 1) == 0)
          {
LABEL_26:
            v78[6] = v86;
            v78[7] = v87;
            v78[8] = v88;
            v79 = v89;
            v78[2] = v82;
            v78[3] = v83;
            v78[4] = v84;
            v78[5] = v85;
            v78[0] = v80;
            v78[1] = v81;
            (*(v16 + 104))(v19, *MEMORY[0x277D84688], v15);
            v72 = sub_225B804A4(10, v19, v70);

            v68 = HIDWORD(v72) & 1;
            (*(v16 + 8))(v19, v15);
            v67 = v72;
            return v67 | (v68 << 32);
          }
        }

        [v31 confidence];
        v70 = v71;
        goto LABEL_26;
      }
    }

    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v59 = off_28105B918;
    v60 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v61 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v61));
    v62 = v77;
    (*(v7 + 16))(v14, &v59[v60], v77);
    os_unfair_lock_unlock(&v59[v61]);
    if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
    {
      v63 = sub_225CCD934();
      v64 = sub_225CCED04();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        *&v78[0] = v66;
        *v65 = 136315138;
        *(v65 + 4) = sub_2259BE198(0xD00000000000003ALL, 0x8000000225D21480, v78);
        _os_log_impl(&dword_2259A7000, v63, v64, "%s", v65, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v66);
        MEMORY[0x22AA6F950](v66, -1, -1);
        MEMORY[0x22AA6F950](v65, -1, -1);
      }
    }

    (*(v7 + 8))(v14, v62);
  }

  else
  {
    v75 = 0x8000000225D21460;
    v76 = 0x8000000225D20DA0;
    v37 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v38 = swift_allocError();
    v40 = v39;
    v41 = sub_225CCE954();
    v42 = *(v41 - 8);
    (*(v42 + 56))(v6, 1, 1, v41);
    LODWORD(v41) = (*(v42 + 48))(v6, 1, v41);
    sub_2259CB640(v6, &unk_27D73B050);
    if (v41)
    {
      v43 = 350;
    }

    else
    {
      v43 = 23;
    }

    v44 = MEMORY[0x277D84F90];
    v45 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v78[0] = v45;
    sub_225B2C4A0(v37, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v78);

    v47 = *&v78[0];
    v48 = sub_225B29AA0(0, 1, 1, v44);
    v50 = *(v48 + 2);
    v49 = *(v48 + 3);
    if (v50 >= v49 >> 1)
    {
      v48 = sub_225B29AA0((v49 > 1), v50 + 1, 1, v48);
    }

    *(v48 + 2) = v50 + 1;
    v51 = &v48[56 * v50];
    *(v51 + 4) = 0xD000000000000037;
    *(v51 + 5) = 0x8000000225D21420;
    v52 = v76;
    *(v51 + 6) = 0xD000000000000029;
    *(v51 + 7) = v52;
    v53 = v75;
    *(v51 + 8) = 0xD00000000000001DLL;
    *(v51 + 9) = v53;
    *(v51 + 10) = 976;
    *v40 = v43;
    *(v40 + 8) = v48;
    *(v40 + 16) = 0xD000000000000037;
    *(v40 + 24) = 0x8000000225D21420;
    *(v40 + 32) = v47;
    *(v40 + 40) = 0;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v54 = off_28105B918;
    v55 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v56 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v56));
    v57 = &v54[v55];
    v58 = v77;
    (*(v7 + 16))(v11, v57, v77);
    os_unfair_lock_unlock(&v54[v56]);
    DIPLogError(_:message:log:)(v38, 0, 0xE000000000000000);
    _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v38);
    (*(v7 + 8))(v11, v58);
  }

  v67 = 0;
  LOBYTE(v68) = 1;
  return v67 | (v68 << 32);
}

unint64_t sub_225B869D0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v80 - v5;
  v7 = sub_225CCD954();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v80 - v14;
  v85 = sub_225CCF8F4();
  v16 = *(v85 - 8);
  MEMORY[0x28223BE20](v85, v17);
  v19 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v1[7];
  v102 = v1[6];
  v103 = v20;
  v104 = v1[8];
  v105 = *(v1 + 18);
  v21 = v1[3];
  v98 = v1[2];
  v99 = v21;
  v22 = v1[5];
  v100 = v1[4];
  v101 = v22;
  v23 = v1[1];
  v96 = *v1;
  v97 = v23;
  v24 = [a1 results];
  if (v24)
  {
    v25 = v24;
    sub_2259D8718(0, &qword_27D73E700);
    v26 = sub_225CCE814();

    v27 = sub_225B9193C(v26);

    if (v27)
    {
      v28 = [v27 faceAttributes];
      if (v28)
      {
        v83 = v28;
        v84 = v27;
        v29 = [v28 glassesCategory];
        v30 = [v29 label];

        v31 = [v30 identifier];
        v32 = sub_225CCE474();
        v34 = v33;

        if (v32 == sub_225CCE474() && v34 == v35)
        {
        }

        else
        {
          v64 = sub_225CCF934();

          v65 = 0.0;
          if ((v64 & 1) == 0)
          {
LABEL_26:
            v67 = [v30 identifier];
            v68 = sub_225CCE474();
            v70 = v69;

            if (v68 == sub_225CCE474() && v70 == v71)
            {
            }

            else
            {
              v72 = sub_225CCF934();

              v73 = 0.0;
              if ((v72 & 1) == 0)
              {
LABEL_31:
                v92 = v102;
                v93 = v103;
                v94 = v104;
                v95 = v105;
                v88 = v98;
                v89 = v99;
                v90 = v100;
                v91 = v101;
                v86 = v96;
                v87 = v97;
                v75 = *MEMORY[0x277D84688];
                v82 = v30;
                v76 = *(v16 + 104);
                v77 = v85;
                v76(v19, v75, v85);
                v81 = sub_225B804A4(12, v19, v65);
                v63 = HIDWORD(v81) & 1;
                v78 = *(v16 + 8);
                v78(v19, v77);
                v92 = v102;
                v93 = v103;
                v94 = v104;
                v95 = v105;
                v88 = v98;
                v89 = v99;
                v90 = v100;
                v91 = v101;
                v86 = v96;
                v87 = v97;
                v76(v19, v75, v77);
                sub_225B804A4(11, v19, v73);

                v78(v19, v77);
                v62 = v81;
                return v62 | (v63 << 32);
              }
            }

            [v30 confidence];
            v73 = v74;
            goto LABEL_31;
          }
        }

        [v30 confidence];
        v65 = v66;
        goto LABEL_26;
      }
    }

    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v55 = off_28105B918;
    v56 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v57 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v57));
    (*(v8 + 16))(v15, &v55[v56], v7);
    os_unfair_lock_unlock(&v55[v57]);
    if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
    {
      v58 = sub_225CCD934();
      v59 = sub_225CCED04();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *&v86 = v61;
        *v60 = 136315138;
        *(v60 + 4) = sub_2259BE198(0xD000000000000039, 0x8000000225D21D50, &v86);
        _os_log_impl(&dword_2259A7000, v58, v59, "%s", v60, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v61);
        MEMORY[0x22AA6F950](v61, -1, -1);
        MEMORY[0x22AA6F950](v60, -1, -1);
      }
    }

    (*(v8 + 8))(v15, v7);
  }

  else
  {
    v84 = 0x8000000225D20DA0;
    v85 = 0x8000000225D21CF0;
    v83 = 0x8000000225D21D30;
    v36 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v37 = swift_allocError();
    v39 = v38;
    v40 = sub_225CCE954();
    v41 = *(v40 - 8);
    (*(v41 + 56))(v6, 1, 1, v40);
    LODWORD(v40) = (*(v41 + 48))(v6, 1, v40);
    sub_2259CB640(v6, &unk_27D73B050);
    if (v40)
    {
      v42 = 350;
    }

    else
    {
      v42 = 23;
    }

    v43 = MEMORY[0x277D84F90];
    v44 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v86 = v44;
    sub_225B2C4A0(v36, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v86);

    v46 = v86;
    v47 = sub_225B29AA0(0, 1, 1, v43);
    v49 = *(v47 + 2);
    v48 = *(v47 + 3);
    if (v49 >= v48 >> 1)
    {
      v47 = sub_225B29AA0((v48 > 1), v49 + 1, 1, v47);
    }

    *(v47 + 2) = v49 + 1;
    v50 = &v47[56 * v49];
    v51 = v85;
    *(v50 + 4) = 0xD000000000000036;
    *(v50 + 5) = v51;
    *(v50 + 6) = 0xD000000000000029;
    *(v50 + 7) = v84;
    *(v50 + 8) = 0xD00000000000001CLL;
    *(v50 + 9) = v83;
    *(v50 + 10) = 991;
    *v39 = v42;
    *(v39 + 8) = v47;
    *(v39 + 16) = 0xD000000000000036;
    *(v39 + 24) = v51;
    *(v39 + 32) = v46;
    *(v39 + 40) = 0;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v52 = off_28105B918;
    v53 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v54 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v54));
    (*(v8 + 16))(v12, &v52[v53], v7);
    os_unfair_lock_unlock(&v52[v54]);
    DIPLogError(_:message:log:)(v37, 0, 0xE000000000000000);
    _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v37);
    (*(v8 + 8))(v12, v7);
  }

  v62 = 0;
  LOBYTE(v63) = 1;
  return v62 | (v63 << 32);
}