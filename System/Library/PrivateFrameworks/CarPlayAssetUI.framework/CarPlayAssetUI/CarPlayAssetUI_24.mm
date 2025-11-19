uint64_t sub_242E4A3AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_242E4A410(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9BC8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_242E4A480()
{
  result = qword_27ECF9BE0;
  if (!qword_27ECF9BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF9BD8);
    sub_242E4A53C();
    sub_242E4A5F8(&qword_27ECF9BF8, type metadata accessor for AppearanceLogger);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9BE0);
  }

  return result;
}

unint64_t sub_242E4A53C()
{
  result = qword_27ECF9BE8;
  if (!qword_27ECF9BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF9BC8);
    sub_242E4A5F8(&qword_27ECF9BF0, type metadata accessor for NotificationView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9BE8);
  }

  return result;
}

uint64_t sub_242E4A5F8(unint64_t *a1, void (*a2)(uint64_t))
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

void VectorFont.Asset.restore(from:)(void *a1)
{
  v3 = v2;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_2Tm(a1, v4);
  v6 = *v1;
  v7 = v1[1];
  v12 = 1;
  v8 = *(v5 + 8);

  v9 = v6;
  v10 = v3;
  v11 = v8(v9, v7, &v12, v4, v5);

  if (!v10)
  {

    v1[6] = v11;
  }
}

uint64_t VectorFont.assets.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v0 + 8);
  v6 = v0[5];
  v7 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0200);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_242F09510;
  *(v8 + 56) = &type metadata for VectorFont.Asset;
  *(v8 + 64) = &protocol witness table for VectorFont.Asset;
  v9 = swift_allocObject();
  *(v8 + 32) = v9;
  *(v9 + 16) = v2;
  *(v9 + 24) = v1;
  *(v9 + 32) = v4;
  *(v9 + 40) = v3;
  *(v9 + 48) = v5;
  *(v9 + 56) = v6;
  *(v9 + 64) = v7;
  v10 = v7;

  return v8;
}

void VectorFont.restoreAssets(from:)(void *a1)
{
  v3 = v2;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_2Tm(a1, v4);
  v6 = *v1;
  v7 = v1[1];
  v12 = 1;
  v8 = *(v5 + 8);

  v9 = v6;
  v10 = v3;
  v11 = v8(v9, v7, &v12, v4, v5);

  if (!v10)
  {

    v1[6] = v11;
  }
}

uint64_t VectorFont.Asset.postScriptName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t VectorFont.Asset.familyName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t VectorFont.Asset.familyName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void *VectorFont.Asset.file.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

uint64_t VectorFont.Asset.init(postScriptName:familyName:traits:weight:file:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a8;
  *(a7 + 48) = a6;
  return result;
}

void VectorFont.Asset.init(resource:bundle:)(void *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = sub_242F03690();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v44[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v44[-v9];
  MEMORY[0x28223BE20](v11);
  v13 = &v44[-v12];
  v14 = sub_242F04F00();
  v15 = [a1 URLForResource:v14 withExtension:0];

  if (!v15)
  {
    goto LABEL_19;
  }

  sub_242F03660();

  (*(v5 + 32))(v13, v10, v4);
  (*(v5 + 16))(v7, v13, v4);
  v16 = objc_allocWithZone(MEMORY[0x277CCAA20]);
  v17 = sub_242D6EC18(v7, 0);
  if (!v17)
  {
    (*(v5 + 8))(v13, v4);
LABEL_19:

LABEL_23:
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    return;
  }

  sub_242F03620();
  v18 = sub_242F04F00();
  [v17 setPreferredFilename_];

  v19 = sub_242F03630();
  FontDescriptorsFromURL = CTFontManagerCreateFontDescriptorsFromURL(v19);

  if (!FontDescriptorsFromURL)
  {
    goto LABEL_20;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    v17 = FontDescriptorsFromURL;
    goto LABEL_22;
  }

  v55 = 0;
  type metadata accessor for CTFontDescriptor(0);
  sub_242F05300();

  v21 = v55;
  if (!v55)
  {
LABEL_20:

LABEL_22:

    (*(v5 + 8))(v13, v4);
    goto LABEL_23;
  }

  if (!(v55 >> 62))
  {
    if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }

LABEL_25:
    (*(v5 + 8))(v13, v4);

LABEL_31:

    goto LABEL_23;
  }

  if (!sub_242F059B0())
  {
    goto LABEL_25;
  }

LABEL_8:
  if ((v21 & 0xC000000000000001) != 0)
  {
    v51 = v21;
    v52 = MEMORY[0x245D270D0](0, v21);
    if (!(v21 >> 62))
    {
      v21 = v51;
      v23 = v52;
      v22 = v51 & 0xFFFFFFFFFFFFFF8;
LABEL_11:
      if (*(v22 + 16) == 1)
      {
        goto LABEL_12;
      }

      goto LABEL_30;
    }
  }

  else
  {
    v22 = v21 & 0xFFFFFFFFFFFFFF8;
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v23 = *(v21 + 32);
      goto LABEL_11;
    }

    __break(1u);
  }

  v21 = v51;
  v41 = sub_242F059B0();
  v23 = v52;
  if (v41 != 1)
  {
LABEL_30:
    v42 = v23;
    (*(v5 + 8))(v13, v4);

    goto LABEL_31;
  }

LABEL_12:
  v52 = v23;
  v53 = CTFontCreateWithFontDescriptor(v23, 0.0, 0);
  v24 = CTFontCopyPostScriptName(v53);
  v49 = sub_242F04F30();
  v50 = v25;

  v26 = CTFontCopyFamilyName(v53);
  v27 = sub_242F04F30();
  v47 = v28;
  v48 = v27;

  v29 = CTFontCopyTraits(v53);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v55 = 0;
    sub_242F04CE0();

    v30 = v55;
    if (v55)
    {
      v31 = sub_242F04F30();
      if (*(v30 + 16))
      {
        v51 = v21;
        v46 = v30;
        v33 = sub_242CE519C(v31, v32);
        v45 = v34;

        if (v45)
        {
          v35 = *(*(v46 + 56) + 8 * v33);
          swift_unknownObjectRetain();

          v55 = v35;
          if (swift_dynamicCast())
          {

            v36 = v54;
            v37 = v53;
            SymbolicTraits = CTFontGetSymbolicTraits(v53);

            (*(v5 + 8))(v13, v4);
            v39 = v50;
            *a2 = v49;
            *(a2 + 8) = v39;
            v40 = v47;
            *(a2 + 16) = v48;
            *(a2 + 24) = v40;
            *(a2 + 32) = SymbolicTraits;
            *(a2 + 40) = v36;
            *(a2 + 48) = v17;
            return;
          }

          goto LABEL_35;
        }
      }

      else
      {
      }
    }
  }

  else
  {
  }

LABEL_35:
  v55 = 0;
  v56 = 0xE000000000000000;
  sub_242F05A80();

  v55 = 0xD00000000000001FLL;
  v56 = 0x8000000242F5C9C0;
  MEMORY[0x245D26660](v49, v50);
  MEMORY[0x245D26660](2629690, 0xE300000000000000);
  sub_242E4D3C0(&qword_27ECF5D48, MEMORY[0x277CC9260]);
  v43 = sub_242F05F60();
  MEMORY[0x245D26660](v43);

  MEMORY[0x245D26660](41, 0xE100000000000000);
  sub_242F05C60();
  __break(1u);
}

void VectorFont.Asset.hash(into:)()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_242F04DD0();
  sub_242F04DD0();
  sub_242F063C0();
  v3 = 0.0;
  if (v1 != 0.0)
  {
    v3 = v1;
  }

  MEMORY[0x245D279D0](*&v3);
  if (v2)
  {
    sub_242F063B0();
    v4 = v2;
    sub_242F05820();
  }

  else
  {
    sub_242F063B0();
  }
}

uint64_t VectorFont.Asset.hashValue.getter()
{
  sub_242F06390();
  VectorFont.Asset.hash(into:)();
  return sub_242F063E0();
}

uint64_t sub_242E4B248()
{
  sub_242F06390();
  VectorFont.Asset.hash(into:)();
  return sub_242F063E0();
}

uint64_t sub_242E4B2B8()
{
  sub_242F06390();
  VectorFont.Asset.hash(into:)();
  return sub_242F063E0();
}

uint64_t VectorFont.asset.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
  v8 = v7;
}

__n128 VectorFont.asset.setter(__n128 *a1)
{
  v9 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];
  v4 = a1[2].n128_u32[0];
  v5 = a1[2].n128_u64[1];
  v6 = a1[3].n128_u64[0];
  v7 = v1[3].n128_u64[0];

  result = v9;
  *v1 = v9;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u64[1] = v3;
  v1[2].n128_u32[0] = v4;
  v1[2].n128_u64[1] = v5;
  v1[3].n128_u64[0] = v6;
  return result;
}

uint64_t VectorFont.init(asset:pointSize:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = *(result + 16);
  v4 = *(result + 24);
  v5 = *(result + 32);
  v6 = *(result + 40);
  v7 = *(result + 48);
  *a2 = *result;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  *(a2 + 48) = v7;
  *(a2 + 56) = a3;
  return result;
}

void VectorFont.init(resource:pointSize:bundle:)(void *a1@<X2>, uint64_t a2@<X8>, double a3@<D0>)
{
  VectorFont.Asset.init(resource:bundle:)(a1, &v11);
  v5 = v12;
  if (v12)
  {
    v6 = v17;
    v7 = v16;
    v8 = v14;
    v9 = v15;
    v10 = v13;
    *a2 = v11;
    *(a2 + 8) = v5;
    *(a2 + 32) = v9;
  }

  else
  {
    v10 = 0;
    v8 = 0;
    v6 = 0;
    *(a2 + 32) = 0;
    v7 = 0;
    a3 = 0.0;
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  *(a2 + 16) = v10;
  *(a2 + 24) = v8;
  *(a2 + 40) = v7;
  *(a2 + 48) = v6;
  *(a2 + 56) = a3;
}

uint64_t sub_242E4B530()
{
  if (*v0)
  {
    return 0x7A6953746E696F70;
  }

  else
  {
    return 0x7465737361;
  }
}

uint64_t sub_242E4B56C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7465737361 && a2 == 0xE500000000000000;
  if (v6 || (sub_242F06110() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7A6953746E696F70 && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_242F06110();

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

uint64_t sub_242E4B64C(uint64_t a1)
{
  v2 = sub_242E4CEEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242E4B688(uint64_t a1)
{
  v2 = sub_242E4CEEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VectorFont.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9C00);
  v19 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - v4;
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[3];
  v16 = v1[2];
  v17 = v6;
  v27 = *(v1 + 8);
  v9 = v1[5];
  v10 = v1[6];
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E4CEEC();

  v11 = v10;
  sub_242F064C0();
  v20 = v17;
  v21 = v7;
  v22 = v16;
  v23 = v8;
  v24 = v27;
  v25 = v9;
  v26 = v10;
  v28 = 0;
  sub_242C869C4();
  v12 = v18;
  sub_242F05F20();
  v13 = v26;

  if (!v12)
  {
    LOBYTE(v20) = 1;
    sub_242F05EE0();
  }

  return (*(v19 + 8))(v5, v3);
}

uint64_t VectorFont.hash(into:)()
{
  v1 = *(v0 + 56);
  VectorFont.Asset.hash(into:)();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  return MEMORY[0x245D279D0](*&v2);
}

uint64_t VectorFont.hashValue.getter()
{
  v1 = *(v0 + 56);
  sub_242F06390();
  VectorFont.Asset.hash(into:)();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x245D279D0](*&v2);
  return sub_242F063E0();
}

uint64_t VectorFont.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9C10);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E4CEEC();
  sub_242F06480();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  LOBYTE(v25) = 0;
  sub_242C86C4C();
  sub_242F05E00();
  v9 = v30;
  v10 = v32;
  v22 = v31;
  v23 = v29;
  v37 = v33;
  v11 = v34;
  v24 = v35;
  v38 = 1;
  sub_242F05DC0();
  v13 = v12;
  (*(v6 + 8))(v8, v5);
  v15 = v22;
  v14 = v23;
  *&v25 = v23;
  *(&v25 + 1) = v9;
  *&v26 = v22;
  *(&v26 + 1) = v10;
  v16 = v10;
  v17 = v37;
  LODWORD(v27) = v37;
  *(&v27 + 1) = v11;
  v18 = v24;
  *&v28 = v24;
  *(&v28 + 1) = v13;
  v19 = v26;
  *a2 = v25;
  a2[1] = v19;
  v20 = v28;
  a2[2] = v27;
  a2[3] = v20;
  sub_242D67214(&v25, &v29);
  __swift_destroy_boxed_opaque_existential_2Tm(a1);
  v29 = v14;
  v30 = v9;
  v31 = v15;
  v32 = v16;
  v33 = v17;
  v34 = v11;
  v35 = v18;
  v36 = v13;
  return sub_242D67270(&v29);
}

uint64_t sub_242E4BCA0()
{
  v1 = *(v0 + 56);
  VectorFont.Asset.hash(into:)();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  return MEMORY[0x245D279D0](*&v2);
}

uint64_t sub_242E4BD1C()
{
  v1 = *(v0 + 56);
  sub_242F06390();
  VectorFont.Asset.hash(into:)();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x245D279D0](*&v2);
  return sub_242F063E0();
}

uint64_t sub_242E4BDD0()
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t sub_242E4BE9C()
{
  sub_242F04DD0();
}

uint64_t sub_242E4BF54()
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t sub_242E4C01C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_242E4D374();
  *a1 = result;
  return result;
}

void sub_242E4C04C(uint64_t *a1@<X8>)
{
  v2 = 0xEE00656D614E7470;
  v3 = 0x6972635374736F70;
  v4 = 0x737469617274;
  if (*v1 != 2)
  {
    v4 = 0x746867696577;
  }

  if (*v1)
  {
    v3 = 0x614E796C696D6166;
    v2 = 0xEA0000000000656DLL;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE600000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_242E4C0D4()
{
  v1 = 0x6972635374736F70;
  v2 = 0x737469617274;
  if (*v0 != 2)
  {
    v2 = 0x746867696577;
  }

  if (*v0)
  {
    v1 = 0x614E796C696D6166;
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

uint64_t sub_242E4C158@<X0>(_BYTE *a1@<X8>)
{
  result = sub_242E4D374();
  *a1 = result;
  return result;
}

uint64_t sub_242E4C180(uint64_t a1)
{
  v2 = sub_242E4CF40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242E4C1BC(uint64_t a1)
{
  v2 = sub_242E4CF40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VectorFont.Asset.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t VectorFont.Asset.preferredFilename.getter()
{
  v1 = *(v0 + 48);
  if (v1 && (v2 = [v1 preferredFilename]) != 0)
  {
    v3 = v2;
    v4 = sub_242F04F30();

    return v4;
  }

  else
  {
    result = sub_242F05C60();
    __break(1u);
  }

  return result;
}

NSFileWrapper_optional __swiftcall VectorFont.Asset.generateAsset(destination:)(CarPlayAssetUI::ArcPackageExporter::Destination destination)
{
  v2 = *(v1 + 48);
  v3 = v2;
  v5 = v2;
  result.value.super.isa = v5;
  result.is_nil = v4;
  return result;
}

uint64_t VectorFont.Asset.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9C18);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - v5;
  v7 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = v7;
  HIDWORD(v12) = *(v1 + 32);
  v8 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E4CF40();
  sub_242F064C0();
  LOBYTE(v16) = 0;
  v9 = v15;
  sub_242F05EC0();
  if (!v9)
  {
    v11 = HIDWORD(v12);
    LOBYTE(v16) = 1;
    sub_242F05EC0();
    LODWORD(v16) = v11;
    v17 = 2;
    type metadata accessor for SymbolicTraits(0);
    sub_242E4D3C0(&qword_27ECF9C28, type metadata accessor for SymbolicTraits);
    sub_242F05F20();
    v16 = v8;
    v17 = 3;
    type metadata accessor for Weight(0);
    sub_242E4D3C0(&qword_27ECF62C8, type metadata accessor for Weight);
    sub_242F05F20();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t VectorFont.Asset.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9C30);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E4CF40();
  sub_242F06480();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  LOBYTE(v19) = 0;
  v9 = sub_242F05DA0();
  v18 = v10;
  LOBYTE(v19) = 1;
  v16 = sub_242F05DA0();
  v17 = v11;
  type metadata accessor for SymbolicTraits(0);
  v21 = 2;
  sub_242E4D3C0(&qword_27ECF9C38, type metadata accessor for SymbolicTraits);
  sub_242F05E00();
  v20 = v19;
  type metadata accessor for Weight(0);
  v21 = 3;
  sub_242E4D3C0(&qword_27ECF62E8, type metadata accessor for Weight);
  sub_242F05E00();
  (*(v6 + 8))(v8, v5);
  v13 = v19;
  v15 = v17;
  v14 = v18;
  *a2 = v9;
  *(a2 + 8) = v14;
  *(a2 + 16) = v16;
  *(a2 + 24) = v15;
  *(a2 + 32) = v20;
  *(a2 + 40) = v13;
  *(a2 + 48) = 0;

  __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242E4C908()
{
  v1 = *(v0 + 48);
  if (v1 && (v2 = [v1 preferredFilename]) != 0)
  {
    v3 = v2;
    v4 = sub_242F04F30();

    return v4;
  }

  else
  {
    result = sub_242F05C60();
    __break(1u);
  }

  return result;
}

void *sub_242E4C9B8()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

uint64_t sub_242E4CA10()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v0 + 8);
  v6 = v0[5];
  v7 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0200);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_242F09510;
  *(v8 + 56) = &type metadata for VectorFont.Asset;
  *(v8 + 64) = &protocol witness table for VectorFont.Asset;
  v9 = swift_allocObject();
  *(v8 + 32) = v9;
  *(v9 + 16) = v2;
  *(v9 + 24) = v1;
  *(v9 + 32) = v4;
  *(v9 + 40) = v3;
  *(v9 + 48) = v5;
  *(v9 + 56) = v6;
  *(v9 + 64) = v7;
  v10 = v7;

  return v8;
}

uint64_t sub_242E4CBF8()
{
  sub_242F06390();
  sub_242F063C0();
  return sub_242F063E0();
}

uint64_t sub_242E4CC6C()
{
  sub_242F06390();
  sub_242F063C0();
  return sub_242F063E0();
}

uint64_t _s14CarPlayAssetUI10VectorFontV0C0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) || (v12 = sub_242F06110(), result = 0, (v12 & 1) != 0))
  {
    if (v2 == v7 && v3 == v8)
    {
      result = 0;
    }

    else
    {
      v14 = sub_242F06110();
      result = 0;
      if ((v14 & 1) == 0)
      {
        return result;
      }
    }

    if (v4 == v9 && v5 == v10)
    {
      if (v6)
      {
        if (v11)
        {
          sub_242C6CBCC();
          v15 = v11;
          v16 = v6;
          v17 = sub_242F05810();

          if (v17)
          {
            return 1;
          }
        }
      }

      else if (!v11)
      {
        return 1;
      }

      return 0;
    }
  }

  return result;
}

uint64_t _s14CarPlayAssetUI10VectorFontV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  v12 = a2[3];
  v13 = *(a2 + 8);
  v14 = a2[5];
  v15 = a2[6];
  v16 = *(a2 + 7);
  v26[0] = *a1;
  v26[1] = v2;
  v26[2] = v3;
  v26[3] = v4;
  v27 = v5;
  v28 = v6;
  v29 = v7;
  v22[0] = v9;
  v22[1] = v10;
  v22[2] = v11;
  v22[3] = v12;
  v23 = v13;
  v24 = v14;
  v25 = v15;
  v17 = v15;

  v18 = v7;

  LOBYTE(v2) = _s14CarPlayAssetUI10VectorFontV0C0V2eeoiySbAE_AEtFZ_0(v26, v22);
  v19 = v25;

  v20 = v29;

  return v2 & (v8 == v16);
}

unint64_t sub_242E4CEEC()
{
  result = qword_27ECF9C08;
  if (!qword_27ECF9C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9C08);
  }

  return result;
}

unint64_t sub_242E4CF40()
{
  result = qword_27ECF9C20;
  if (!qword_27ECF9C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9C20);
  }

  return result;
}

unint64_t sub_242E4CF98()
{
  result = qword_27ECF9C40;
  if (!qword_27ECF9C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9C40);
  }

  return result;
}

unint64_t sub_242E4CFF0()
{
  result = qword_27ECF9C48;
  if (!qword_27ECF9C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9C48);
  }

  return result;
}

uint64_t sub_242E4D08C(uint64_t a1, int a2)
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

uint64_t sub_242E4D0D4(uint64_t result, int a2, int a3)
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

unint64_t sub_242E4D168()
{
  result = qword_27ECF9C58;
  if (!qword_27ECF9C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9C58);
  }

  return result;
}

unint64_t sub_242E4D1C0()
{
  result = qword_27ECF9C60;
  if (!qword_27ECF9C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9C60);
  }

  return result;
}

unint64_t sub_242E4D218()
{
  result = qword_27ECF9C68;
  if (!qword_27ECF9C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9C68);
  }

  return result;
}

unint64_t sub_242E4D270()
{
  result = qword_27ECF9C70;
  if (!qword_27ECF9C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9C70);
  }

  return result;
}

unint64_t sub_242E4D2C8()
{
  result = qword_27ECF9C78;
  if (!qword_27ECF9C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9C78);
  }

  return result;
}

unint64_t sub_242E4D320()
{
  result = qword_27ECF9C80;
  if (!qword_27ECF9C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9C80);
  }

  return result;
}

uint64_t sub_242E4D374()
{
  v0 = sub_242F05CD0();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_242E4D3C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Instrument.GaugeStyle.ProgressBarConfiguration.Style.description.getter()
{
  memcpy(v3, v0, 0x164uLL);
  v1 = sub_242D49294(v3);
  sub_242C59070(v3);
  if (v1 == 1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x676E695269676944;
  }
}

uint64_t sub_242E4D494()
{
  if (*v0)
  {
    return 0x74656D7265776F70;
  }

  else
  {
    return 0x72614269676964;
  }
}

uint64_t sub_242E4D4D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x72614269676964 && a2 == 0xE700000000000000;
  if (v6 || (sub_242F06110() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74656D7265776F70 && a2 == 0xEA00000000007265)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_242F06110();

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

uint64_t sub_242E4D5B8(uint64_t a1)
{
  v2 = sub_242E5087C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242E4D5F4(uint64_t a1)
{
  v2 = sub_242E5087C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242E4D630(uint64_t a1)
{
  v2 = sub_242E50978();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242E4D66C(uint64_t a1)
{
  v2 = sub_242E50978();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242E4D6A8(uint64_t a1)
{
  v2 = sub_242E508D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242E4D6E4(uint64_t a1)
{
  v2 = sub_242E508D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Instrument.GaugeStyle.ProgressBarConfiguration.Style.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9C90);
  v28 = *(v2 - 8);
  v29 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v25 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9C98);
  v26 = *(v5 - 8);
  v27 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9CA0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E5087C();
  sub_242F064C0();
  memcpy(v32, v30, 0x164uLL);
  LODWORD(a1) = sub_242D49294(v32);
  v12 = (v9 + 8);
  v13 = sub_242C59070(v32);
  if (a1 == 1)
  {
    LOBYTE(v31[0]) = 1;
    sub_242E508D0();
    sub_242F05E40();
    memcpy(v31, v13, 0x164uLL);
    sub_242E50924();
    v14 = v29;
    sub_242F05F20();
    (*(v28 + 8))(v4, v14);
  }

  else
  {
    LOBYTE(v31[0]) = 0;
    sub_242E50978();
    sub_242F05E40();
    v15 = *v13;
    v16 = v13[2];
    v31[1] = v13[1];
    v31[2] = v16;
    v31[0] = v15;
    v17 = v13[3];
    v18 = v13[4];
    v19 = v13[6];
    v31[5] = v13[5];
    v31[6] = v19;
    v31[3] = v17;
    v31[4] = v18;
    v20 = v13[7];
    v21 = v13[8];
    v22 = v13[9];
    *(&v31[9] + 12) = *(v13 + 156);
    v31[8] = v21;
    v31[9] = v22;
    v31[7] = v20;
    sub_242E509CC();
    v23 = v27;
    sub_242F05F20();
    (*(v26 + 8))(v7, v23);
  }

  return (*v12)(v11, v8);
}

uint64_t Instrument.GaugeStyle.ProgressBarConfiguration.Style.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9CD0);
  v4 = *(v3 - 8);
  v37 = v3;
  v38 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v35 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9CD8);
  v36 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9CE0);
  v40 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  v13 = a1[3];
  v49 = a1;
  __swift_project_boxed_opaque_existential_2Tm(a1, v13);
  sub_242E5087C();
  v14 = v41;
  sub_242F06480();
  if (!v14)
  {
    v41 = v7;
    v15 = v39;
    v16 = sub_242F05E10();
    v17 = (2 * *(v16 + 16)) | 1;
    v45 = v16;
    v46 = v16 + 32;
    v47 = 0;
    v48 = v17;
    v18 = sub_242C7FBE4();
    v19 = v10;
    if (v18 == 2 || v47 != v48 >> 1)
    {
      v22 = v12;
      v23 = sub_242F05B10();
      swift_allocError();
      v25 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFF10);
      *v25 = &type metadata for Instrument.GaugeStyle.ProgressBarConfiguration.Style;
      sub_242F05D20();
      sub_242F05AF0();
      (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D84160], v23);
      swift_willThrow();
      (*(v40 + 8))(v22, v19);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v18)
      {
        v43[0] = 1;
        sub_242E508D0();
        sub_242F05D10();
        v20 = v10;
        v21 = v40;
        v30 = v15;
        v31 = v20;
        sub_242E50A20();
        v32 = v37;
        sub_242F05E00();
        (*(v38 + 8))(v6, v32);
        (*(v21 + 8))(v12, v31);
        swift_unknownObjectRelease();
        memcpy(v42, v43, sizeof(v42));
        sub_242E50A74(v42);
        v34 = v42;
      }

      else
      {
        v43[0] = 0;
        sub_242E50978();
        v27 = v9;
        sub_242F05D10();
        v28 = v19;
        v29 = v40;
        v30 = v15;
        v38 = v28;
        sub_242E50AD0();
        v33 = v41;
        sub_242F05E00();
        (*(v36 + 8))(v27, v33);
        (*(v29 + 8))(v12, v38);
        swift_unknownObjectRelease();
        *&v43[128] = *&v42[128];
        *&v43[144] = *&v42[144];
        *&v43[156] = *&v42[156];
        *&v43[64] = *&v42[64];
        *&v43[80] = *&v42[80];
        *&v43[96] = *&v42[96];
        *&v43[112] = *&v42[112];
        *v43 = *v42;
        *&v43[16] = *&v42[16];
        *&v43[32] = *&v42[32];
        *&v43[48] = *&v42[48];
        sub_242E50B24(v43);
        v34 = v43;
      }

      memcpy(v44, v34, sizeof(v44));
      memcpy(v30, v44, 0x164uLL);
    }
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(v49);
}

uint64_t sub_242E4E0E0()
{
  memcpy(v3, v0, 0x164uLL);
  v1 = sub_242D49294(v3);
  sub_242C59070(v3);
  if (v1 == 1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x676E695269676944;
  }
}

uint64_t Instrument.GaugeStyle.ProgressBarConfiguration.style.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0x164uLL);
  memcpy(a1, v1, 0x164uLL);
  return sub_242E50B7C(__dst, v4);
}

void *Instrument.GaugeStyle.ProgressBarConfiguration.style.setter(const void *a1)
{
  memcpy(v4, v1, 0x164uLL);
  sub_242E50BB4(v4);
  return memcpy(v1, a1, 0x164uLL);
}

uint64_t Instrument.GaugeStyle.ProgressBarConfiguration.assets.getter()
{
  memcpy(__dst, v0, 0x164uLL);
  sub_242D49294(__dst);
  sub_242C59070(__dst);
  return MEMORY[0x277D84F90];
}

void *Instrument.GaugeStyle.ProgressBarConfiguration.restoreAssets(from:)()
{
  memcpy(v2, v0, sizeof(v2));
  memcpy(__dst, v0, 0x164uLL);
  sub_242D49294(__dst);
  sub_242C59070(__dst);
  return memcpy(v0, v2, 0x164uLL);
}

uint64_t Instrument.GaugeStyle.ProgressBarConfiguration.description.getter()
{
  memcpy(__dst, v0, 0x164uLL);
  v1 = sub_242D49294(__dst);
  sub_242C59070(__dst);
  if (v1 == 1)
  {
    v2 = 0xD000000000000012;
  }

  else
  {
    v2 = 0x676E695269676944;
  }

  if (v1 == 1)
  {
    v3 = 0x8000000242F5CA00;
  }

  else
  {
    v3 = 0xE800000000000000;
  }

  MEMORY[0x245D26660](v2, v3);

  return 0x206C6169646152;
}

uint64_t static Instrument.GaugeStyle.ProgressBarConfiguration.== infix(_:_:)(void *__src, const void *a2)
{
  memcpy(__dst, __src, 0x164uLL);
  memcpy(v8, a2, 0x164uLL);
  memcpy(__srca, __src, 0x164uLL);
  memcpy(v5, a2, 0x164uLL);
  sub_242E50B7C(__dst, v10);
  sub_242E50B7C(v8, v10);
  LOBYTE(a2) = _s14CarPlayAssetUI10InstrumentV10GaugeStyleO24ProgressBarConfigurationV0G0O2eeoiySbAI_AItFZ_0(__srca, v5);
  memcpy(v9, v5, 0x164uLL);
  sub_242E50BE4(v9);
  memcpy(v10, __srca, 0x164uLL);
  sub_242E50BE4(v10);
  return a2 & 1;
}

uint64_t sub_242E4E49C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C797473 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_242F06110();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_242E4E520(uint64_t a1)
{
  v2 = sub_242E50C14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242E4E55C(uint64_t a1)
{
  v2 = sub_242E50C14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Instrument.GaugeStyle.ProgressBarConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9CF8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  memcpy(v10, v1, 0x164uLL);
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E50B7C(v10, v9);
  sub_242E50C14();
  sub_242F064C0();
  memcpy(v9, v10, 0x164uLL);
  sub_242E50C68();
  sub_242F05F20();
  memcpy(v8, v9, 0x164uLL);
  sub_242E50BE4(v8);
  return (*(v4 + 8))(v6, v3);
}

uint64_t _s14CarPlayAssetUI10InstrumentV10GaugeStyleO24ProgressBarConfigurationV0G0O4hash4intoys6HasherVz_tF_0(uint64_t a1)
{
  memcpy(__dst, v1, 0x164uLL);
  v3 = sub_242D49294(__dst);
  sub_242C59070(__dst);
  if (v3 == 1)
  {
    MEMORY[0x245D279A0](1);
    PowermeterDataIdentifiers.hash(into:)();
    Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(a1);
  }

  else
  {
    MEMORY[0x245D279A0](0);
  }

  return Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(a1);
}

uint64_t _s14CarPlayAssetUI10InstrumentV10GaugeStyleO24ProgressBarConfigurationV0G0O9hashValueSivg_0()
{
  sub_242F06390();
  memcpy(__dst, v0, 0x164uLL);
  v1 = sub_242D49294(__dst);
  sub_242C59070(__dst);
  if (v1 == 1)
  {
    MEMORY[0x245D279A0](1);
    PowermeterDataIdentifiers.hash(into:)();
    Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(v3);
  }

  else
  {
    MEMORY[0x245D279A0](0);
  }

  Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(v3);
  return sub_242F063E0();
}

uint64_t Instrument.GaugeStyle.ProgressBarConfiguration.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v11 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9D10);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-v6];
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E50C14();
  sub_242F06480();
  if (!v2)
  {
    v8 = v11;
    sub_242E50CBC();
    sub_242F05E00();
    (*(v5 + 8))(v7, v4);
    memcpy(v8, v10, 0x164uLL);
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242E4EBAC()
{
  memcpy(__dst, v0, 0x164uLL);
  sub_242D49294(__dst);
  sub_242C59070(__dst);
  return MEMORY[0x277D84F90];
}

void *sub_242E4EBF8()
{
  memcpy(v2, v0, sizeof(v2));
  memcpy(__dst, v0, 0x164uLL);
  sub_242D49294(__dst);
  sub_242C59070(__dst);
  return memcpy(v0, v2, 0x164uLL);
}

uint64_t sub_242E4EC94()
{
  sub_242F06390();
  memcpy(__dst, v0, 0x164uLL);
  v1 = sub_242D49294(__dst);
  sub_242C59070(__dst);
  if (v1 == 1)
  {
    MEMORY[0x245D279A0](1);
    PowermeterDataIdentifiers.hash(into:)();
    Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(v3);
  }

  else
  {
    MEMORY[0x245D279A0](0);
  }

  Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(v3);
  return sub_242F063E0();
}

uint64_t sub_242E4EE18()
{
  memcpy(__dst, v0, 0x164uLL);
  v1 = sub_242D49294(__dst);
  sub_242C59070(__dst);
  if (v1 == 1)
  {
    v2 = 0xD000000000000012;
  }

  else
  {
    v2 = 0x676E695269676944;
  }

  if (v1 == 1)
  {
    v3 = 0x8000000242F5CA00;
  }

  else
  {
    v3 = 0xE800000000000000;
  }

  MEMORY[0x245D26660](v2, v3);

  return 0x206C6169646152;
}

uint64_t sub_242E4EED0(void *__src, const void *a2)
{
  memcpy(__dst, __src, 0x164uLL);
  memcpy(v8, a2, 0x164uLL);
  memcpy(__srca, __src, 0x164uLL);
  memcpy(v5, a2, 0x164uLL);
  sub_242E50B7C(__dst, v10);
  sub_242E50B7C(v8, v10);
  LOBYTE(a2) = _s14CarPlayAssetUI10InstrumentV10GaugeStyleO24ProgressBarConfigurationV0G0O2eeoiySbAI_AItFZ_0(__srca, v5);
  memcpy(v9, v5, 0x164uLL);
  sub_242E50BE4(v9);
  memcpy(v10, __srca, 0x164uLL);
  sub_242E50BE4(v10);
  return a2 & 1;
}

void Instrument.GaugeStyle.DigiBarPowermeterConfiguration.dataIdentifiers.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 4);
  v3 = *(v1 + 6);
  *a1 = *v1;
  *(a1 + 4) = v2;
  *(a1 + 6) = v3;
}

uint64_t Instrument.GaugeStyle.DigiBarPowermeterConfiguration.dataIdentifiers.setter(uint64_t result)
{
  v2 = *(result + 4);
  v3 = *(result + 6);
  *v1 = *result;
  *(v1 + 4) = v2;
  *(v1 + 6) = v3;
  return result;
}

uint64_t Instrument.GaugeStyle.DigiBarPowermeterConfiguration.consumedPowerConfiguration.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 120);
  v3 = *(v1 + 152);
  v14[8] = *(v1 + 136);
  v15[0] = v3;
  *(v15 + 12) = *(v1 + 164);
  v4 = *(v1 + 56);
  v5 = *(v1 + 88);
  v14[4] = *(v1 + 72);
  v14[5] = v5;
  v14[6] = *(v1 + 104);
  v14[7] = v2;
  v6 = *(v1 + 24);
  v14[0] = *(v1 + 8);
  v14[1] = v6;
  v14[2] = *(v1 + 40);
  v14[3] = v4;
  v7 = *(v1 + 120);
  v8 = *(v1 + 152);
  a1[8] = *(v1 + 136);
  a1[9] = v8;
  *(a1 + 156) = *(v1 + 164);
  v9 = *(v1 + 56);
  v10 = *(v1 + 88);
  a1[4] = *(v1 + 72);
  a1[5] = v10;
  a1[6] = *(v1 + 104);
  a1[7] = v7;
  v11 = *(v1 + 24);
  *a1 = *(v1 + 8);
  a1[1] = v11;
  a1[2] = *(v1 + 40);
  a1[3] = v9;
  return sub_242E50D10(v14, &v13);
}

__n128 Instrument.GaugeStyle.DigiBarPowermeterConfiguration.consumedPowerConfiguration.setter(uint64_t a1)
{
  v3 = *(v1 + 120);
  v4 = *(v1 + 152);
  v14[8] = *(v1 + 136);
  v15[0] = v4;
  *(v15 + 12) = *(v1 + 164);
  v5 = *(v1 + 56);
  v6 = *(v1 + 88);
  v14[4] = *(v1 + 72);
  v14[5] = v6;
  v14[6] = *(v1 + 104);
  v14[7] = v3;
  v7 = *(v1 + 24);
  v14[0] = *(v1 + 8);
  v14[1] = v7;
  v14[2] = *(v1 + 40);
  v14[3] = v5;
  sub_242E50D6C(v14);
  v8 = *(a1 + 96);
  *(v1 + 120) = *(a1 + 112);
  v9 = *(a1 + 144);
  *(v1 + 136) = *(a1 + 128);
  *(v1 + 152) = v9;
  *(v1 + 164) = *(a1 + 156);
  v10 = *(a1 + 32);
  *(v1 + 56) = *(a1 + 48);
  v11 = *(a1 + 80);
  *(v1 + 72) = *(a1 + 64);
  *(v1 + 88) = v11;
  *(v1 + 104) = v8;
  result = *a1;
  v13 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v13;
  *(v1 + 40) = v10;
  return result;
}

uint64_t Instrument.GaugeStyle.DigiBarPowermeterConfiguration.regenPowerConfiguration.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 232);
  v3 = *(v1 + 248);
  v4 = *(v1 + 200);
  v17[0] = *(v1 + 184);
  v17[1] = v4;
  v17[2] = *(v1 + 216);
  v17[3] = v2;
  v5 = *(v1 + 296);
  v6 = *(v1 + 328);
  v18 = *(v1 + 312);
  v19[0] = v6;
  *(v19 + 12) = *(v1 + 340);
  v8 = *(v1 + 264);
  v7 = *(v1 + 280);
  v17[4] = v3;
  v17[5] = v8;
  v9 = *(v1 + 264);
  v10 = *(v1 + 280);
  v11 = *(v1 + 296);
  v17[6] = v7;
  v17[7] = v11;
  v12 = *(v1 + 328);
  a1[8] = v18;
  a1[9] = v12;
  *(a1 + 156) = *(v1 + 340);
  a1[4] = *(v1 + 248);
  a1[5] = v9;
  v13 = *(v1 + 232);
  a1[6] = v10;
  a1[7] = v5;
  v14 = *(v1 + 200);
  *a1 = *(v1 + 184);
  a1[1] = v14;
  a1[2] = *(v1 + 216);
  a1[3] = v13;
  return sub_242E50D10(v17, &v16);
}

__n128 Instrument.GaugeStyle.DigiBarPowermeterConfiguration.regenPowerConfiguration.setter(uint64_t a1)
{
  v3 = *(v1 + 232);
  v4 = *(v1 + 248);
  v5 = *(v1 + 200);
  v17[0] = *(v1 + 184);
  v17[1] = v5;
  v17[2] = *(v1 + 216);
  v17[3] = v3;
  v6 = *(v1 + 296);
  v7 = *(v1 + 328);
  v17[8] = *(v1 + 312);
  v18[0] = v7;
  *(v18 + 12) = *(v1 + 340);
  v8 = *(v1 + 264);
  v9 = *(v1 + 280);
  v17[4] = v4;
  v17[5] = v8;
  v17[6] = v9;
  v17[7] = v6;
  sub_242E50D6C(v17);
  v10 = *(a1 + 128);
  v11 = *(a1 + 144);
  v12 = *(a1 + 96);
  *(v1 + 296) = *(a1 + 112);
  *(v1 + 312) = v10;
  *(v1 + 328) = v11;
  *(v1 + 340) = *(a1 + 156);
  v13 = *(a1 + 32);
  *(v1 + 232) = *(a1 + 48);
  v14 = *(a1 + 80);
  *(v1 + 248) = *(a1 + 64);
  *(v1 + 264) = v14;
  *(v1 + 280) = v12;
  result = *a1;
  v16 = *(a1 + 16);
  *(v1 + 184) = *a1;
  *(v1 + 200) = v16;
  *(v1 + 216) = v13;
  return result;
}

__n128 Instrument.GaugeStyle.DigiBarPowermeterConfiguration.init(consumedPowerConfiguration:regenPowerConfiguration:)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 926627351;
  v3 = a1[6];
  *(a3 + 120) = a1[7];
  v4 = a1[9];
  *(a3 + 136) = a1[8];
  *(a3 + 152) = v4;
  *(a3 + 164) = *(a1 + 156);
  v5 = a1[2];
  *(a3 + 56) = a1[3];
  v6 = a1[5];
  *(a3 + 72) = a1[4];
  *(a3 + 88) = v6;
  *(a3 + 104) = v3;
  v7 = a1[1];
  *(a3 + 8) = *a1;
  *(a3 + 24) = v7;
  *(a3 + 40) = v5;
  v8 = *(a2 + 128);
  v9 = *(a2 + 144);
  v10 = *(a2 + 96);
  *(a3 + 296) = *(a2 + 112);
  *(a3 + 312) = v8;
  *(a3 + 328) = v9;
  *(a3 + 340) = *(a2 + 156);
  v11 = *(a2 + 32);
  *(a3 + 232) = *(a2 + 48);
  v12 = *(a2 + 80);
  *(a3 + 248) = *(a2 + 64);
  *(a3 + 264) = v12;
  *(a3 + 280) = v10;
  result = *a2;
  v14 = *(a2 + 16);
  *(a3 + 184) = *a2;
  *(a3 + 200) = v14;
  *(a3 + 4) = 20536;
  *(a3 + 6) = 8;
  *(a3 + 216) = v11;
  return result;
}

uint64_t sub_242E4F3B4()
{
  v1 = 0xD00000000000001ALL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E65644961746164;
  }
}

uint64_t sub_242E4F428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242E517F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242E4F450(uint64_t a1)
{
  v2 = sub_242E50DC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242E4F48C(uint64_t a1)
{
  v2 = sub_242E50DC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Instrument.GaugeStyle.DigiBarPowermeterConfiguration.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9D20);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - v6;
  v23 = *(v2 + 4);
  v8 = *(v2 + 6);
  v9 = *(v2 + 120);
  v10 = *(v2 + 152);
  v58 = *(v2 + 136);
  v59[0] = v10;
  *(v59 + 12) = *(v2 + 164);
  v11 = *(v2 + 56);
  v12 = *(v2 + 88);
  v54 = *(v2 + 72);
  v55 = v12;
  v56 = *(v2 + 104);
  v57 = v9;
  v13 = *(v2 + 24);
  v50 = *(v2 + 8);
  v51 = v13;
  v52 = *(v2 + 40);
  v53 = v11;
  v14 = *(v2 + 312);
  v15 = *(v2 + 328);
  v67 = *(v2 + 296);
  v68 = v14;
  v69[0] = v15;
  *(v69 + 12) = *(v2 + 340);
  v16 = *(v2 + 264);
  v17 = *(v2 + 280);
  v64 = *(v2 + 248);
  v65 = v16;
  v18 = *(v2 + 232);
  v66 = v17;
  v19 = *(v2 + 200);
  v60 = *(v2 + 184);
  v61 = v19;
  v62 = *(v2 + 216);
  v63 = v18;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E50DC0();
  sub_242F064C0();
  LODWORD(v40) = *v2;
  WORD2(v40) = v23;
  BYTE6(v40) = v8;
  LOBYTE(v37[0]) = 0;
  sub_242E10728();
  v20 = v70;
  sub_242F05F20();
  if (!v20)
  {
    v48 = v58;
    v49[0] = v59[0];
    *(v49 + 12) = *(v59 + 12);
    v44 = v54;
    v45 = v55;
    v46 = v56;
    v47 = v57;
    v40 = v50;
    v41 = v51;
    v42 = v52;
    v43 = v53;
    v39 = 1;
    sub_242E50D10(&v50, v37);
    sub_242E509CC();
    sub_242F05F20();
    v37[8] = v48;
    *v38 = v49[0];
    *&v38[12] = *(v49 + 12);
    v37[4] = v44;
    v37[5] = v45;
    v37[6] = v46;
    v37[7] = v47;
    v37[0] = v40;
    v37[1] = v41;
    v37[2] = v42;
    v37[3] = v43;
    sub_242E50D6C(v37);
    v35 = v68;
    v36[0] = v69[0];
    *(v36 + 12) = *(v69 + 12);
    v31 = v64;
    v32 = v65;
    v33 = v66;
    v34 = v67;
    v27 = v60;
    v28 = v61;
    v29 = v62;
    v30 = v63;
    v26 = 2;
    sub_242E50D10(&v60, v24);
    sub_242F05F20();
    v24[8] = v35;
    *v25 = v36[0];
    *&v25[12] = *(v36 + 12);
    v24[4] = v31;
    v24[5] = v32;
    v24[6] = v33;
    v24[7] = v34;
    v24[0] = v27;
    v24[1] = v28;
    v24[2] = v29;
    v24[3] = v30;
    sub_242E50D6C(v24);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t Instrument.GaugeStyle.DigiBarPowermeterConfiguration.hash(into:)(uint64_t a1)
{
  PowermeterDataIdentifiers.hash(into:)();
  Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(a1);
  return Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(a1);
}

uint64_t Instrument.GaugeStyle.DigiBarPowermeterConfiguration.hashValue.getter()
{
  sub_242F06390();
  PowermeterDataIdentifiers.hash(into:)();
  Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(v1);
  Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t Instrument.GaugeStyle.DigiBarPowermeterConfiguration.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9D30);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  v9 = a1[3];
  v66 = a1;
  __swift_project_boxed_opaque_existential_2Tm(a1, v9);
  sub_242E50DC0();
  sub_242F06480();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(v66);
  }

  v10 = v6;
  v23 = a2;
  LOBYTE(v24[0]) = 0;
  sub_242E1077C();
  sub_242F05E00();
  v19 = v26;
  v20 = v25;
  v18 = v27;
  v21 = v29;
  v22 = v28;
  v11 = v30;
  v12 = v31;
  v53 = 1;
  sub_242E50AD0();
  sub_242F05E00();
  HIDWORD(v16) = v12;
  v17 = v11;
  *(&v65[7] + 1) = v61;
  *(&v65[8] + 1) = v62;
  *(&v65[9] + 1) = v63[0];
  *(&v65[9] + 13) = *(v63 + 12);
  *(&v65[3] + 1) = v57;
  *(&v65[4] + 1) = v58;
  *(&v65[5] + 1) = v59;
  *(&v65[6] + 1) = v60;
  *(v65 + 1) = v54;
  *(&v65[1] + 1) = v55;
  *(&v65[2] + 1) = v56;
  v42 = 2;
  sub_242F05E00();
  (*(v10 + 8))(v8, v5);
  *(&v64[7] + 4) = v50;
  *(&v64[8] + 4) = v51;
  *(&v64[9] + 4) = *v52;
  v64[10] = *&v52[12];
  *(&v64[3] + 4) = v46;
  *(&v64[4] + 4) = v47;
  *(&v64[5] + 4) = v48;
  *(&v64[6] + 4) = v49;
  *(v64 + 4) = v43;
  *(&v64[1] + 4) = v44;
  *(&v64[2] + 4) = v45;
  *(&v24[29] + 3) = v65[7];
  *(&v24[33] + 3) = v65[8];
  *(&v24[37] + 3) = v65[9];
  *&v24[41] = *(&v65[9] + 13);
  *(&v24[13] + 3) = v65[3];
  *(&v24[17] + 3) = v65[4];
  *(&v24[21] + 3) = v65[5];
  *(&v24[25] + 3) = v65[6];
  *(&v24[1] + 3) = v65[0];
  *(&v24[5] + 3) = v65[1];
  *(&v24[9] + 3) = v65[2];
  *&v24[73] = v64[7];
  *&v24[77] = v64[8];
  *&v24[81] = v64[9];
  *&v24[85] = *&v52[12];
  *&v24[65] = v64[5];
  *&v24[69] = v64[6];
  *&v24[57] = v64[3];
  *&v24[61] = v64[4];
  *&v24[45] = v64[0];
  *&v24[49] = v64[1];
  v14 = v19;
  v13 = v20;
  LOBYTE(v24[0]) = v20;
  BYTE1(v24[0]) = v19;
  LOBYTE(v10) = v18;
  BYTE2(v24[0]) = v18;
  HIBYTE(v24[0]) = v22;
  LOBYTE(v24[1]) = v21;
  BYTE1(v24[1]) = v17;
  BYTE2(v24[1]) = BYTE4(v16);
  *&v24[53] = v64[2];
  memcpy(v23, v24, 0x164uLL);
  sub_242E50E14(v24, &v25);
  __swift_destroy_boxed_opaque_existential_2Tm(v66);
  v39 = v65[7];
  v40 = v65[8];
  v41[0] = v65[9];
  *(v41 + 13) = *(&v65[9] + 13);
  v35 = v65[3];
  v36 = v65[4];
  v37 = v65[5];
  v38 = v65[6];
  v32 = v65[0];
  v33 = v65[1];
  v34 = v65[2];
  *(&v41[8] + 13) = v64[7];
  *(&v41[9] + 13) = v64[8];
  *(&v41[10] + 13) = v64[9];
  *(&v41[11] + 13) = v64[10];
  *(&v41[6] + 13) = v64[5];
  *(&v41[7] + 13) = v64[6];
  *(&v41[4] + 13) = v64[3];
  *(&v41[5] + 13) = v64[4];
  *(&v41[1] + 13) = v64[0];
  *(&v41[2] + 13) = v64[1];
  v25 = v13;
  v26 = v14;
  v27 = v10;
  v28 = v22;
  v29 = v21;
  v30 = v17;
  v31 = BYTE4(v16);
  *(&v41[3] + 13) = v64[2];
  return sub_242E50E4C(&v25);
}

uint64_t sub_242E4FFE8(uint64_t a1)
{
  PowermeterDataIdentifiers.hash(into:)();
  Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(a1);
  return Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(a1);
}

uint64_t sub_242E500D8()
{
  sub_242F06390();
  PowermeterDataIdentifiers.hash(into:)();
  Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(v1);
  Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(v1);
  return sub_242F063E0();
}

BOOL _s14CarPlayAssetUI10InstrumentV10GaugeStyleO30DigiBarPowermeterConfigurationV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  v3 = *(a1 + 6);
  v4 = *(a1 + 120);
  v5 = *(a1 + 152);
  v88 = *(a1 + 136);
  v89[0] = v5;
  *(v89 + 12) = *(a1 + 164);
  v6 = *(a1 + 56);
  v7 = *(a1 + 88);
  v84 = *(a1 + 72);
  v85 = v7;
  v8 = *(a1 + 104);
  v87 = v4;
  v86 = v8;
  v9 = *(a1 + 24);
  v80 = *(a1 + 8);
  v81 = v9;
  v10 = *(a1 + 40);
  v83 = v6;
  v82 = v10;
  v11 = *(a1 + 296);
  v12 = *(a1 + 328);
  v98 = *(a1 + 312);
  v99[0] = v12;
  *(v99 + 12) = *(a1 + 340);
  v13 = *(a1 + 232);
  v14 = *(a1 + 264);
  v15 = *(a1 + 280);
  v94 = *(a1 + 248);
  v95 = v14;
  v97 = v11;
  v96 = v15;
  v16 = *(a1 + 200);
  v90 = *(a1 + 184);
  v91 = v16;
  v17 = *(a1 + 216);
  v93 = v13;
  v92 = v17;
  v18 = *(a2 + 4);
  v19 = *(a2 + 6);
  v20 = *(a2 + 120);
  v21 = *(a2 + 152);
  v108 = *(a2 + 136);
  v109[0] = v21;
  *(v109 + 12) = *(a2 + 164);
  v22 = *(a2 + 56);
  v23 = *(a2 + 88);
  v104 = *(a2 + 72);
  v105 = v23;
  v24 = *(a2 + 104);
  v107 = v20;
  v106 = v24;
  v25 = *(a2 + 24);
  v100 = *(a2 + 8);
  v101 = v25;
  v26 = *(a2 + 40);
  v103 = v22;
  v102 = v26;
  v27 = *(a2 + 296);
  v28 = *(a2 + 328);
  v118 = *(a2 + 312);
  v119[0] = v28;
  *(v119 + 12) = *(a2 + 340);
  v29 = *(a2 + 264);
  v30 = *(a2 + 280);
  v114 = *(a2 + 248);
  v115 = v29;
  v31 = *(a2 + 232);
  v116 = v30;
  v117 = v27;
  v32 = *(a2 + 200);
  v110 = *(a2 + 184);
  v111 = v32;
  v112 = *(a2 + 216);
  v113 = v31;
  LODWORD(v78[0]) = *a1;
  WORD2(v78[0]) = v2;
  BYTE6(v78[0]) = v3;
  LODWORD(v76[0]) = *a2;
  WORD2(v76[0]) = v18;
  BYTE6(v76[0]) = v19;
  if ((_s14CarPlayAssetUI31DriverAssistanceDataIdentifiersV2eeoiySbAC_ACtFZ_0() & 1) != 0 && (v74 = v88, v75[0] = v89[0], *(v75 + 12) = *(v89 + 12), v70 = v84, v71 = v85, v72 = v86, v73 = v87, v66 = v80, v67 = v81, v68 = v82, v69 = v83, v64 = v108, v65[0] = v109[0], *(v65 + 12) = *(v109 + 12), v60 = v104, v61 = v105, v62 = v106, v63 = v107, v56 = v100, v57 = v101, v58 = v102, v59 = v103, sub_242E50D10(&v80, &v46), sub_242E50D10(&v100, &v46), v33 = _s14CarPlayAssetUI10InstrumentV10GaugeStyleO20DigiBarConfigurationV2eeoiySbAG_AGtFZ_0(&v66, &v56), v76[8] = v64, v77[0] = v65[0], *(v77 + 12) = *(v65 + 12), v76[4] = v60, v76[5] = v61, v76[6] = v62, v76[7] = v63, v76[0] = v56, v76[1] = v57, v76[2] = v58, v76[3] = v59, sub_242E50D6C(v76), v78[8] = v74, v79[0] = v75[0], *(v79 + 12) = *(v75 + 12), v78[4] = v70, v78[5] = v71, v78[6] = v72, v78[7] = v73, v78[0] = v66, v78[1] = v67, v78[2] = v68, v78[3] = v69, sub_242E50D6C(v78), v33))
  {
    v54 = v98;
    v55[0] = v99[0];
    *(v55 + 12) = *(v99 + 12);
    v50 = v94;
    v51 = v95;
    v52 = v96;
    v53 = v97;
    v46 = v90;
    v47 = v91;
    v48 = v92;
    v49 = v93;
    v44 = v118;
    v45[0] = v119[0];
    *(v45 + 12) = *(v119 + 12);
    v40 = v114;
    v41 = v115;
    v42 = v116;
    v43 = v117;
    v36 = v110;
    v37 = v111;
    v38 = v112;
    v39 = v113;
    sub_242E50D10(&v90, &v66);
    sub_242E50D10(&v110, &v66);
    v34 = _s14CarPlayAssetUI10InstrumentV10GaugeStyleO20DigiBarConfigurationV2eeoiySbAG_AGtFZ_0(&v46, &v36);
    v64 = v44;
    v65[0] = v45[0];
    *(v65 + 12) = *(v45 + 12);
    v60 = v40;
    v61 = v41;
    v62 = v42;
    v63 = v43;
    v56 = v36;
    v57 = v37;
    v58 = v38;
    v59 = v39;
    sub_242E50D6C(&v56);
    v74 = v54;
    v75[0] = v55[0];
    *(v75 + 12) = *(v55 + 12);
    v70 = v50;
    v71 = v51;
    v72 = v52;
    v73 = v53;
    v66 = v46;
    v67 = v47;
    v68 = v48;
    v69 = v49;
    sub_242E50D6C(&v66);
  }

  else
  {
    return 0;
  }

  return v34;
}

BOOL _s14CarPlayAssetUI10InstrumentV10GaugeStyleO24ProgressBarConfigurationV0G0O2eeoiySbAI_AItFZ_0(void *__src, const void *a2)
{
  memcpy(__dst, __src, 0x164uLL);
  memcpy(__srca, a2, 0x164uLL);
  memcpy(v26, __src, 0x164uLL);
  memcpy(v27, a2, sizeof(v27));
  memcpy(v28, __src, 0x164uLL);
  if (sub_242D49294(v28) == 1)
  {
    v4 = sub_242C59070(v28);
    memcpy(v23, __srca, 0x164uLL);
    v5 = sub_242D49294(v23);
    v6 = sub_242C59070(v23);
    if (v5 == 1)
    {
      v7 = v6;
      memcpy(v22, v4, 0x164uLL);
      memcpy(v21, v7, sizeof(v21));
      sub_242E50B7C(__srca, v19);
      sub_242E50B7C(__dst, v19);
      sub_242E50B7C(__dst, v19);
      sub_242E50B7C(__srca, v19);
      v8 = _s14CarPlayAssetUI10InstrumentV10GaugeStyleO30DigiBarPowermeterConfigurationV2eeoiySbAG_AGtFZ_0(v22, v21);
LABEL_7:
      v12 = v8;
      sub_242E51924(v26);
      sub_242E50BE4(__srca);
      sub_242E50BE4(__dst);
      return v12;
    }
  }

  else
  {
    v9 = sub_242C59070(v28);
    memcpy(v23, __srca, 0x164uLL);
    v10 = sub_242D49294(v23);
    v11 = sub_242C59070(v23);
    if (v10 != 1)
    {
      v13 = v9[9];
      *&v21[128] = v9[8];
      *&v21[144] = v13;
      *&v21[156] = *(v9 + 156);
      v14 = v9[5];
      *&v21[64] = v9[4];
      *&v21[80] = v14;
      v15 = v9[7];
      *&v21[96] = v9[6];
      *&v21[112] = v15;
      v16 = v9[1];
      *v21 = *v9;
      *&v21[16] = v16;
      v17 = v9[3];
      *&v21[32] = v9[2];
      *&v21[48] = v17;
      v19[7] = v11[7];
      v19[8] = v11[8];
      v20[0] = v11[9];
      *(v20 + 12) = *(v11 + 156);
      v19[3] = v11[3];
      v19[4] = v11[4];
      v19[5] = v11[5];
      v19[6] = v11[6];
      v19[0] = *v11;
      v19[1] = v11[1];
      v19[2] = v11[2];
      sub_242E50B7C(__srca, v22);
      sub_242E50B7C(__dst, v22);
      sub_242E50B7C(__dst, v22);
      sub_242E50B7C(__srca, v22);
      v8 = _s14CarPlayAssetUI10InstrumentV10GaugeStyleO20DigiBarConfigurationV2eeoiySbAG_AGtFZ_0(v21, v19);
      goto LABEL_7;
    }
  }

  sub_242E50B7C(__dst, v23);
  sub_242E50B7C(__srca, v23);
  sub_242E51924(v26);
  return 0;
}

unint64_t sub_242E5087C()
{
  result = qword_27ECF9CA8;
  if (!qword_27ECF9CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9CA8);
  }

  return result;
}

unint64_t sub_242E508D0()
{
  result = qword_27ECF9CB0;
  if (!qword_27ECF9CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9CB0);
  }

  return result;
}

unint64_t sub_242E50924()
{
  result = qword_27ECF9CB8;
  if (!qword_27ECF9CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9CB8);
  }

  return result;
}

unint64_t sub_242E50978()
{
  result = qword_27ECF9CC0;
  if (!qword_27ECF9CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9CC0);
  }

  return result;
}

unint64_t sub_242E509CC()
{
  result = qword_27ECF9CC8;
  if (!qword_27ECF9CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9CC8);
  }

  return result;
}

unint64_t sub_242E50A20()
{
  result = qword_27ECF9CE8;
  if (!qword_27ECF9CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9CE8);
  }

  return result;
}

int8x16_t sub_242E50A74(uint64_t a1)
{
  v1 = *(a1 + 208) & 1;
  v2 = *(a1 + 344) & 0xFFFFFFFFFFLL | 0x8000000000000000;
  *(a1 + 88) &= 0xC3FFFFFFFFuLL;
  *(a1 + 168) = vandq_s8(*(a1 + 168), xmmword_242F3D8E0);
  *(a1 + 208) = v1;
  result = vandq_s8(*(a1 + 264), xmmword_242F3D8F0);
  *(a1 + 264) = result;
  *(a1 + 344) = v2;
  return result;
}

unint64_t sub_242E50AD0()
{
  result = qword_27ECF9CF0;
  if (!qword_27ECF9CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9CF0);
  }

  return result;
}

int8x16_t sub_242E50B24(uint64_t a1)
{
  v1 = *(a1 + 208) & 1;
  v2 = *(a1 + 344) & 0xFFFFFFFFFFLL;
  *(a1 + 88) &= 0xC3FFFFFFFFuLL;
  *(a1 + 168) = vandq_s8(*(a1 + 168), xmmword_242F3D8E0);
  *(a1 + 208) = v1;
  result = vandq_s8(*(a1 + 264), xmmword_242F3D8F0);
  *(a1 + 264) = result;
  *(a1 + 344) = v2;
  return result;
}

unint64_t sub_242E50C14()
{
  result = qword_27ECF9D00;
  if (!qword_27ECF9D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9D00);
  }

  return result;
}

unint64_t sub_242E50C68()
{
  result = qword_27ECF9D08;
  if (!qword_27ECF9D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9D08);
  }

  return result;
}

unint64_t sub_242E50CBC()
{
  result = qword_27ECF9D18;
  if (!qword_27ECF9D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9D18);
  }

  return result;
}

unint64_t sub_242E50DC0()
{
  result = qword_27ECF9D28;
  if (!qword_27ECF9D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9D28);
  }

  return result;
}

unint64_t sub_242E50E80()
{
  result = qword_27ECF9D38;
  if (!qword_27ECF9D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9D38);
  }

  return result;
}

unint64_t sub_242E50ED8()
{
  result = qword_27ECF9D40;
  if (!qword_27ECF9D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9D40);
  }

  return result;
}

unint64_t sub_242E50F30()
{
  result = qword_27ECF9D48;
  if (!qword_27ECF9D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9D48);
  }

  return result;
}

uint64_t sub_242E50F9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 356))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 88) >> 34) & 0xF | (*(a1 + 88) >> 36) & 0xFFFFFF0 | (*(a1 + 168) >> 12) & 0xF0000000;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_242E51008(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 344) = 0;
    result = 0.0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 352) = 0;
    *(a1 + 312) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 356) = 1;
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
      result = 0.0;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 80) = 0;
      *(a1 + 88) = (-a2 << 36) & 0xFFFFFF0000000000 | ((-a2 & 0xFLL) << 34);
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 128) = 0u;
      *(a1 + 144) = 0u;
      *(a1 + 160) = 0;
      *(a1 + 168) = (-a2 << 12) & 0xF0000000000;
      *(a1 + 176) = 0u;
      *(a1 + 192) = 0u;
      *(a1 + 208) = 0u;
      *(a1 + 224) = 0u;
      *(a1 + 240) = 0u;
      *(a1 + 256) = 0u;
      *(a1 + 272) = 0u;
      *(a1 + 288) = 0u;
      *(a1 + 304) = 0u;
      *(a1 + 320) = 0u;
      *(a1 + 336) = 0u;
      *(a1 + 352) = 0;
      return result;
    }

    *(a1 + 356) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

int8x16_t sub_242E510F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 208) & 1;
  v3 = *(a1 + 344) & 0xFFFFFFFFFFLL | (a2 << 63);
  *(a1 + 88) &= 0xC3FFFFFFFFuLL;
  *(a1 + 168) = vandq_s8(*(a1 + 168), xmmword_242F3D8E0);
  *(a1 + 208) = v2;
  result = vandq_s8(*(a1 + 264), xmmword_242F3D8F0);
  *(a1 + 264) = result;
  *(a1 + 344) = v3;
  return result;
}

uint64_t sub_242E51160(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 356))
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

uint64_t sub_242E511BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 344) = 0;
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
    *(result + 328) = 0u;
    *(result + 352) = 0;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 356) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 356) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_242E512D4()
{
  result = qword_27ECF9D50;
  if (!qword_27ECF9D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9D50);
  }

  return result;
}

unint64_t sub_242E5132C()
{
  result = qword_27ECF9D58;
  if (!qword_27ECF9D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9D58);
  }

  return result;
}

unint64_t sub_242E51384()
{
  result = qword_27ECF9D60;
  if (!qword_27ECF9D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9D60);
  }

  return result;
}

unint64_t sub_242E513DC()
{
  result = qword_27ECF9D68;
  if (!qword_27ECF9D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9D68);
  }

  return result;
}

unint64_t sub_242E51434()
{
  result = qword_27ECF9D70;
  if (!qword_27ECF9D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9D70);
  }

  return result;
}

unint64_t sub_242E5148C()
{
  result = qword_27ECF9D78;
  if (!qword_27ECF9D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9D78);
  }

  return result;
}

unint64_t sub_242E514E4()
{
  result = qword_27ECF9D80;
  if (!qword_27ECF9D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9D80);
  }

  return result;
}

unint64_t sub_242E5153C()
{
  result = qword_27ECF9D88;
  if (!qword_27ECF9D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9D88);
  }

  return result;
}

unint64_t sub_242E51594()
{
  result = qword_27ECF9D90;
  if (!qword_27ECF9D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9D90);
  }

  return result;
}

unint64_t sub_242E515EC()
{
  result = qword_27ECF9D98;
  if (!qword_27ECF9D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9D98);
  }

  return result;
}

unint64_t sub_242E51644()
{
  result = qword_27ECF9DA0;
  if (!qword_27ECF9DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9DA0);
  }

  return result;
}

unint64_t sub_242E5169C()
{
  result = qword_27ECF9DA8;
  if (!qword_27ECF9DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9DA8);
  }

  return result;
}

unint64_t sub_242E516F4()
{
  result = qword_27ECF9DB0;
  if (!qword_27ECF9DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9DB0);
  }

  return result;
}

unint64_t sub_242E5174C()
{
  result = qword_27ECF9DB8;
  if (!qword_27ECF9DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9DB8);
  }

  return result;
}

unint64_t sub_242E517A4()
{
  result = qword_27ECF9DC0;
  if (!qword_27ECF9DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9DC0);
  }

  return result;
}

uint64_t sub_242E517F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65644961746164 && a2 == 0xEF73726569666974;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000242F5CA20 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000242F5CA40 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_242E51924(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9DC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ImageGroupConfiguration.description.getter()
{
  if (*v0 == 86)
  {
    v1 = 0xEE006567616D6920;
    v2 = 0x746E6174736E6F43;
  }

  else
  {
    v3 = InstrumentDataIdentifier.rawValue.getter();
    v5 = sub_242EFCF00(v3, v4);
    v1 = v6;

    v2 = v5;
  }

  MEMORY[0x245D26660](v2, v1);

  return 0;
}

uint64_t ImageGroupConfiguration.assets.getter()
{
  v1 = *(v0 + 8);
  swift_getKeyPath();

  v2 = sub_242D47D30(v1, sub_242D49264);

  return v2;
}

uint64_t ImageGroupConfiguration.restoreAssets(from:)(void *a1)
{
  v2 = *(v1 + 8);
  v3 = v2 + 64;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v45 = v2;
  while (v6)
  {
LABEL_11:
    v10 = (*(v2 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v6)))));
    v11 = *v10;
    v12 = v10[1];

    v13 = sub_242E52264(v50, v11, v12);
    if (!*(v14 + 48))
    {
      (v13)(v50, 0);
      goto LABEL_5;
    }

    v15 = v14;
    v51 = v13;
    v16 = a1[3];
    v17 = a1[4];
    __swift_project_boxed_opaque_existential_2Tm(a1, v16);
    *&v48 = *(v15 + 40);
    if (((*(v17 + 24))(&v48, v16, v17) & 1) == 0)
    {
      goto LABEL_18;
    }

    v18 = *v15;
    v19 = *(v15 + 8);
    v21 = *(v15 + 16);
    v20 = *(v15 + 24);
    if (*(v15 + 32) < 0)
    {
      *&v48 = *v15;
      *(&v48 + 1) = v19;
      *&v49 = v21;
      *(&v49 + 1) = v20;
      v30 = v18;

      ImageAsset.LocalizedImage.restore(from:)(a1);
      if (v46)
      {
        goto LABEL_21;
      }

      v31 = *v15;
      v32 = *(v15 + 8);
      v33 = *(v15 + 16);
      v34 = *(v15 + 24);
      v35 = v49;
      *v15 = v48;
      *(v15 + 16) = v35;
      v36 = *(v15 + 32);
      *(v15 + 32) = 0x80;
      sub_242C7F724(v31, v32, v33, v34, v36);
LABEL_18:
      v2 = v45;
      v51(v50, 0);
      goto LABEL_5;
    }

    v39 = *(v15 + 32);
    v40 = *(v15 + 24);
    v42 = *v15;
    v22 = a1[4];
    __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
    LOBYTE(v48) = 0;
    v41 = *(v22 + 8);
    v43 = v21;

    v44 = v19;
    v23 = v41();
    if (v46)
    {

      v51(v50, 1);
      goto LABEL_22;
    }

    v24 = v23;

    v25 = *v15;
    v26 = *(v15 + 8);
    v27 = *(v15 + 16);
    v28 = *(v15 + 24);
    *v15 = v42;
    *(v15 + 8) = v44;
    *(v15 + 16) = v24;
    *(v15 + 24) = v40;
    v29 = *(v15 + 32);
    *(v15 + 32) = v39 & 1;
    sub_242C7F724(v25, v26, v27, v28, v29);
    v2 = v45;
    v51(v50, 0);
LABEL_5:
    v6 &= v6 - 1;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_21:
  v37 = v48;

  v51(v50, 1);
LABEL_22:
}

uint64_t sub_242E51EEC()
{
  sub_242F06390();
  MEMORY[0x245D279A0](1);
  return sub_242F063E0();
}

uint64_t sub_242E51F58()
{
  sub_242F06390();
  MEMORY[0x245D279A0](1);
  return sub_242F063E0();
}

uint64_t ImageGroupConfiguration.states.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t ImageGroupConfiguration.defaultState.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ImageGroupConfiguration.defaultState.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ImageGroupConfiguration.redactedState.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ImageGroupConfiguration.redactedState.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

_BYTE *ImageGroupConfiguration.init(dataIdentifier:criticalStateDataIdentifier:states:defaultState:redactedState:dataTransformationType:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>)
{
  v9 = *a2;
  v10 = *a8;
  *a9 = *result;
  *(a9 + 1) = v9;
  *(a9 + 8) = a3;
  *(a9 + 16) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = v10;
  return result;
}

uint64_t sub_242E521CC(_OWORD *a1)
{
  v1 = a1[1];
  v8[0] = *a1;
  v8[1] = v1;
  v3 = *a1;
  v2 = a1[1];
  v9[0] = a1[2];
  *(v9 + 9) = *(a1 + 41);
  v5 = v3;
  v6 = v2;
  *v7 = a1[2];
  *&v7[9] = *(a1 + 41);
  sub_242C7F938(v8, v10);
  swift_getAtKeyPath();
  v10[0] = v5;
  v10[1] = v6;
  v11[0] = *v7;
  *(v11 + 9) = *&v7[9];
  return sub_242C7F994(v10);
}

void (*sub_242E52264(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_242E52F28(v6, a2, a3);
  return sub_242E522EC;
}

void sub_242E522EC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_242E52338()
{
  v1 = *v0;
  v2 = 0x6E65644961746164;
  v3 = 0x53746C7561666564;
  v4 = 0x6465746361646572;
  if (v1 != 4)
  {
    v4 = 0xD000000000000016;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD00000000000001BLL;
  if (v1 != 1)
  {
    v5 = 0x736574617473;
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

uint64_t sub_242E52414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242E53A88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242E5243C(uint64_t a1)
{
  v2 = sub_242E535E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242E52478(uint64_t a1)
{
  v2 = sub_242E535E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ImageGroupConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9DD0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = *v1;
  v21 = v1[1];
  v9 = *(v1 + 1);
  v18 = *(v1 + 2);
  v19 = v9;
  v10 = *(v1 + 3);
  v15 = *(v1 + 4);
  v16 = *(v1 + 5);
  v17 = v10;
  v14 = v1[48];
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E535E0();
  sub_242F064C0();
  LOBYTE(v20) = v8;
  v22 = 0;
  sub_242C8AC28();
  sub_242F05EB0();
  if (!v2)
  {
    v12 = v19;
    LOBYTE(v20) = v21;
    v22 = 1;
    sub_242F05EB0();
    v20 = v12;
    v22 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9DE0);
    sub_242E536DC(&qword_27ECF9DE8, sub_242E53634);
    sub_242F05F20();
    LOBYTE(v20) = 3;
    sub_242F05E50();
    LOBYTE(v20) = 4;
    sub_242F05E50();
    LOBYTE(v20) = v14;
    v22 = 5;
    sub_242E53688();
    sub_242F05EB0();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t ImageGroupConfiguration.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 1);
  v4 = *(v1 + 8);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  if (*v1 == 86)
  {
    sub_242F063B0();
    if (v3 != 86)
    {
LABEL_3:
      sub_242F063B0();
      InstrumentDataIdentifier.rawValue.getter();
      sub_242F04DD0();

      goto LABEL_6;
    }
  }

  else
  {
    sub_242F063B0();
    InstrumentDataIdentifier.rawValue.getter();
    sub_242F04DD0();

    if (v3 != 86)
    {
      goto LABEL_3;
    }
  }

  sub_242F063B0();
LABEL_6:
  sub_242C7B384(a1, v4);
  if (v5)
  {
    sub_242F063B0();
    sub_242F04DD0();
    if (v6)
    {
      goto LABEL_8;
    }

LABEL_11:
    sub_242F063B0();
    if (v7)
    {
      return sub_242F063B0();
    }

    goto LABEL_12;
  }

  sub_242F063B0();
  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_8:
  sub_242F063B0();
  sub_242F04DD0();
  if (v7)
  {
    return sub_242F063B0();
  }

LABEL_12:
  sub_242F063B0();
  return MEMORY[0x245D279A0](1);
}

uint64_t ImageGroupConfiguration.hashValue.getter()
{
  sub_242F06390();
  ImageGroupConfiguration.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t ImageGroupConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9E00);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  v34 = 1;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E535E0();
  sub_242F06480();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  else
  {
    LOBYTE(v28) = 0;
    sub_242C8AC7C();
    sub_242F05D90();
    v9 = v32[0];
    LOBYTE(v28) = 1;
    sub_242F05D90();
    v10 = LOBYTE(v32[0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9DE0);
    LOBYTE(v28) = 2;
    sub_242E536DC(&qword_27ECF9E08, sub_242E53760);
    sub_242F05E00();
    v27 = v32[0];
    LOBYTE(v32[0]) = 3;
    v11 = sub_242F05D30();
    v25 = v10;
    v24 = v11;
    v26 = v12;
    LOBYTE(v32[0]) = 4;
    v13 = sub_242F05D30();
    v15 = v14;
    v23 = v13;
    v35 = 5;
    sub_242E537B4();
    sub_242F05D90();
    (*(v6 + 8))(v8, v5);
    v16 = v36;
    v34 = v36;
    LOBYTE(v28) = v9;
    BYTE1(v28) = v25;
    v17 = v26;
    v19 = v23;
    v18 = v24;
    *(&v28 + 1) = v27;
    *&v29 = v24;
    *(&v29 + 1) = v26;
    *&v30 = v23;
    *(&v30 + 1) = v15;
    v31 = v36;
    *(a2 + 48) = v36;
    v20 = v29;
    *a2 = v28;
    *(a2 + 16) = v20;
    *(a2 + 32) = v30;
    sub_242DBE658(&v28, v32);
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
    LOBYTE(v32[0]) = v9;
    BYTE1(v32[0]) = v25;
    v32[1] = v27;
    v32[2] = v18;
    v32[3] = v17;
    v32[4] = v19;
    v32[5] = v15;
    v33 = v16;
    return sub_242D49348(v32);
  }
}

uint64_t sub_242E52DCC()
{
  v1 = *(v0 + 8);
  swift_getKeyPath();

  v2 = sub_242D47D30(v1, sub_242E53DCC);

  return v2;
}

uint64_t sub_242E52EA4()
{
  sub_242F06390();
  ImageGroupConfiguration.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t sub_242E52EE8()
{
  sub_242F06390();
  ImageGroupConfiguration.hash(into:)(v1);
  return sub_242F063E0();
}

void (*sub_242E52F28(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_242E532EC(v7);
  v7[9] = sub_242E53034(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_242E52FD4;
}

void sub_242E52FD4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_242E53034(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t *a1, char a2)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x1A0uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[49] = a3;
  v10[50] = v4;
  v10[48] = a2;
  v12 = *v4;
  v13 = sub_242CE519C(a2, a3);
  *(v11 + 57) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_242D0317C();
      v13 = v21;
      goto LABEL_11;
    }

    sub_242D07AD4(v18, a4 & 1);
    v13 = sub_242CE519C(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_242F06320();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[51] = v13;
  if (v19)
  {
    memmove(v11 + 16, (*(*v5 + 56) + (v13 << 6)), 0x39uLL);
  }

  else
  {
    *(v11 + 169) = 0u;
    *(v11 + 9) = 0u;
    *(v11 + 10) = 0u;
    *(v11 + 8) = 0u;
  }

  return sub_242E531A0;
}

void sub_242E531A0(uint64_t *a1, char a2)
{
  v2 = *a1;
  *(v2 + 233) = *(*a1 + 169);
  v3 = *(v2 + 144);
  *(v2 + 192) = *(v2 + 128);
  *(v2 + 208) = v3;
  *(v2 + 224) = *(v2 + 160);
  v4 = *(v2 + 240);
  if (a2)
  {
    if (v4)
    {
      v6 = *(v2 + 400);
      v5 = *(v2 + 408);
      if ((*(v2 + 57) & 1) == 0)
      {
        v7 = *(v2 + 384);
        v8 = *(v2 + 392);
        v9 = *v6;
        v10 = *(v2 + 144);
        *v2 = *(v2 + 128);
        *(v2 + 16) = v10;
        *(v2 + 32) = *(v2 + 160);
        *(v2 + 41) = *(v2 + 169);
        v11 = v8;
        v12 = v2;
LABEL_11:
        sub_242D09F7C(v5, v7, v11, v12, v9);

        goto LABEL_12;
      }

      goto LABEL_7;
    }
  }

  else if (v4)
  {
    v6 = *(v2 + 400);
    v5 = *(v2 + 408);
    if ((*(v2 + 57) & 1) == 0)
    {
      v7 = *(v2 + 384);
      v15 = *(v2 + 392);
      v9 = *v6;
      v16 = *(v2 + 144);
      *(v2 + 64) = *(v2 + 128);
      *(v2 + 80) = v16;
      *(v2 + 96) = *(v2 + 160);
      *(v2 + 105) = *(v2 + 169);
      v12 = (v2 + 64);
      v11 = v15;
      goto LABEL_11;
    }

LABEL_7:
    memmove((*(*v6 + 56) + (v5 << 6)), (v2 + 128), 0x39uLL);
    goto LABEL_12;
  }

  if (*(v2 + 57))
  {
    v13 = *(v2 + 408);
    v14 = **(v2 + 400);
    sub_242D3E0BC(*(v14 + 48) + 16 * v13);
    sub_242ED0C2C(v13, v14);
  }

LABEL_12:
  v17 = *(v2 + 144);
  *(v2 + 256) = *(v2 + 128);
  *(v2 + 272) = v17;
  *(v2 + 288) = *(v2 + 160);
  *(v2 + 297) = *(v2 + 169);
  sub_242E53CF4(v2 + 192, v2 + 320);
  sub_242E53D64(v2 + 256);

  free(v2);
}

uint64_t (*sub_242E532EC(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_242E53314;
}

uint64_t _s14CarPlayAssetUI23ImageGroupConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 1);
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *a2;
  v9 = a2[1];
  v11 = *(a2 + 1);
  v10 = *(a2 + 2);
  v12 = *(a2 + 5);
  v13 = a2[48];
  if (*a1 == 86)
  {
    v32 = *(a2 + 3);
    v33 = *(a1 + 24);
    v34 = *(a2 + 4);
    if (v8 != 86)
    {
      return 0;
    }

LABEL_3:
    if (v2 == 86)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  if (v8 == 86)
  {
    return 0;
  }

  v36 = *(a2 + 2);
  v38 = *(a1 + 16);
  v32 = *(a2 + 3);
  v33 = *(a1 + 24);
  v34 = *(a2 + 4);
  v30 = *(a1 + 40);
  v14 = *(a1 + 32);
  v15 = a2[48];
  v16 = InstrumentDataIdentifier.rawValue.getter();
  v18 = v17;
  if (v16 != InstrumentDataIdentifier.rawValue.getter() || v18 != v19)
  {
    v26 = sub_242F06110();

    v13 = v15;
    v5 = v14;
    v6 = v30;
    v10 = v36;
    v3 = v38;
    if ((v26 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_3;
  }

  v13 = v15;
  v5 = v14;
  v6 = v30;
  v10 = v36;
  v3 = v38;
  if (v2 == 86)
  {
LABEL_4:
    v35 = v10;
    v37 = v3;
    if (v9 != 86)
    {
      return 0;
    }

    goto LABEL_17;
  }

LABEL_10:
  if (v9 == 86)
  {
    return 0;
  }

  v35 = v10;
  v37 = v3;
  v31 = v6;
  v20 = v5;
  v21 = v13;
  v22 = InstrumentDataIdentifier.rawValue.getter();
  v24 = v23;
  if (v22 == InstrumentDataIdentifier.rawValue.getter() && v24 == v25)
  {

    v13 = v21;
    v5 = v20;
    v6 = v31;
  }

  else
  {
    v27 = sub_242F06110();

    v13 = v21;
    v5 = v20;
    v6 = v31;
    if ((v27 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_17:
  if (sub_242C76D14(v4, v11))
  {
    if (v33)
    {
      v28 = v34;
      if (!v32 || (v37 != v35 || v33 != v32) && (sub_242F06110() & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v28 = v34;
      if (v32)
      {
        return 0;
      }
    }

    if (v6)
    {
      if (v12 && (v5 == v28 && v6 == v12 || (sub_242F06110() & 1) != 0))
      {
        return v7 ^ v13 ^ 1u;
      }
    }

    else if (!v12)
    {
      return v7 ^ v13 ^ 1u;
    }
  }

  return 0;
}

unint64_t sub_242E535E0()
{
  result = qword_27ECF9DD8;
  if (!qword_27ECF9DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9DD8);
  }

  return result;
}

unint64_t sub_242E53634()
{
  result = qword_27ECF9DF0;
  if (!qword_27ECF9DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9DF0);
  }

  return result;
}

unint64_t sub_242E53688()
{
  result = qword_27ECF9DF8;
  if (!qword_27ECF9DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9DF8);
  }

  return result;
}

uint64_t sub_242E536DC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF9DE0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242E53760()
{
  result = qword_27ECF9E10;
  if (!qword_27ECF9E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9E10);
  }

  return result;
}

unint64_t sub_242E537B4()
{
  result = qword_27ECF9E18;
  if (!qword_27ECF9E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9E18);
  }

  return result;
}

unint64_t sub_242E5380C()
{
  result = qword_27ECF9E20;
  if (!qword_27ECF9E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9E20);
  }

  return result;
}

unint64_t sub_242E53864()
{
  result = qword_27ECF9E28;
  if (!qword_27ECF9E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9E28);
  }

  return result;
}

uint64_t sub_242E538B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_242E53900(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_242E53984()
{
  result = qword_27ECF9E30;
  if (!qword_27ECF9E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9E30);
  }

  return result;
}

unint64_t sub_242E539DC()
{
  result = qword_27ECF9E38;
  if (!qword_27ECF9E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9E38);
  }

  return result;
}

unint64_t sub_242E53A34()
{
  result = qword_27ECF9E40;
  if (!qword_27ECF9E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9E40);
  }

  return result;
}

uint64_t sub_242E53A88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65644961746164 && a2 == 0xEE00726569666974;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000242F5CA80 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736574617473 && a2 == 0xE600000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x53746C7561666564 && a2 == 0xEC00000065746174 || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6465746361646572 && a2 == 0xED00006574617453 || (sub_242F06110() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000242F5CAA0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_242E53CA0()
{
  result = qword_27ECF9E48;
  if (!qword_27ECF9E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9E48);
  }

  return result;
}

uint64_t sub_242E53CF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9E50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_242E53D64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9E50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_242E53DD0()
{
  v0 = sub_242F04700();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *MEMORY[0x277CE0EE0];
  v6 = *(v1 + 104);
  v6(v4, v5, v0, v2);
  v16 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v15 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v14 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v7 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v8 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v9 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v10 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v11 = sub_242F047A0();
  (v6)(v4, v5, v0);
  result = sub_242F047A0();
  *&xmmword_27ECF9E58 = v16;
  *(&xmmword_27ECF9E58 + 1) = v15;
  qword_27ECF9E68 = v14;
  unk_27ECF9E70 = v7;
  *&xmmword_27ECF9E78 = v8;
  *(&xmmword_27ECF9E78 + 1) = v9;
  qword_27ECF9E88 = v10;
  unk_27ECF9E90 = v11;
  qword_27ECF9E98 = result;
  return result;
}

uint64_t static Color.Ticks.green.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF700 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *&qword_27ECF9E88;
  v8[2] = xmmword_27ECF9E78;
  v8[3] = *&qword_27ECF9E88;
  v9 = qword_27ECF9E98;
  v3 = qword_27ECF9E98;
  v4 = *&qword_27ECF9E68;
  v8[0] = xmmword_27ECF9E58;
  v5 = xmmword_27ECF9E58;
  v8[1] = *&qword_27ECF9E68;
  *(a1 + 32) = xmmword_27ECF9E78;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_242C8CBA8(v8, &v7);
}

uint64_t static Color.Ticks.green.setter(uint64_t a1)
{
  if (qword_27ECEF700 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[2] = xmmword_27ECF9E78;
  v5[3] = *&qword_27ECF9E88;
  v6 = qword_27ECF9E98;
  v5[0] = xmmword_27ECF9E58;
  v5[1] = *&qword_27ECF9E68;
  v2 = *(a1 + 48);
  xmmword_27ECF9E78 = *(a1 + 32);
  *&qword_27ECF9E88 = v2;
  qword_27ECF9E98 = *(a1 + 64);
  v3 = *(a1 + 16);
  xmmword_27ECF9E58 = *a1;
  *&qword_27ECF9E68 = v3;
  return sub_242C8CCB0(v5);
}

uint64_t (*static Color.Ticks.green.modify())()
{
  if (qword_27ECEF700 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242E54290()
{
  v0 = sub_242F04700();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *MEMORY[0x277CE0EE0];
  v6 = *(v1 + 104);
  v6(v4, v5, v0, v2);
  v16 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v15 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v14 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v7 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v8 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v9 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v10 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v11 = sub_242F047A0();
  (v6)(v4, v5, v0);
  result = sub_242F047A0();
  *&xmmword_27ECF9EA0 = v16;
  *(&xmmword_27ECF9EA0 + 1) = v15;
  qword_27ECF9EB0 = v14;
  unk_27ECF9EB8 = v7;
  *&xmmword_27ECF9EC0 = v8;
  *(&xmmword_27ECF9EC0 + 1) = v9;
  qword_27ECF9ED0 = v10;
  unk_27ECF9ED8 = v11;
  qword_27ECF9EE0 = result;
  return result;
}

uint64_t static Color.ProgressBars.green.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF708 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *&qword_27ECF9ED0;
  v8[2] = xmmword_27ECF9EC0;
  v8[3] = *&qword_27ECF9ED0;
  v9 = qword_27ECF9EE0;
  v3 = qword_27ECF9EE0;
  v4 = *&qword_27ECF9EB0;
  v8[0] = xmmword_27ECF9EA0;
  v5 = xmmword_27ECF9EA0;
  v8[1] = *&qword_27ECF9EB0;
  *(a1 + 32) = xmmword_27ECF9EC0;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_242C8D144(v8, &v7);
}

uint64_t static Color.ProgressBars.green.setter(uint64_t a1)
{
  if (qword_27ECEF708 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[2] = xmmword_27ECF9EC0;
  v5[3] = *&qword_27ECF9ED0;
  v6 = qword_27ECF9EE0;
  v5[0] = xmmword_27ECF9EA0;
  v5[1] = *&qword_27ECF9EB0;
  v2 = *(a1 + 48);
  xmmword_27ECF9EC0 = *(a1 + 32);
  *&qword_27ECF9ED0 = v2;
  qword_27ECF9EE0 = *(a1 + 64);
  v3 = *(a1 + 16);
  xmmword_27ECF9EA0 = *a1;
  *&qword_27ECF9EB0 = v3;
  return sub_242C8D24C(v5);
}

uint64_t (*static Color.ProgressBars.green.modify())()
{
  if (qword_27ECEF708 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242E5478C()
{
  v0 = sub_242F04700();
  v1 = MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0], v1);
  result = sub_242F047A0();
  qword_27ECF9EE8 = result;
  return result;
}

uint64_t static Color.Modular.green.getter@<X0>(void *a1@<X8>)
{
  if (qword_27ECEF710 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27ECF9EE8;
}

uint64_t static Color.Modular.green.setter(uint64_t *a1)
{
  v1 = *a1;
  if (qword_27ECEF710 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27ECF9EE8 = v1;
}

uint64_t (*static Color.Modular.green.modify())()
{
  if (qword_27ECEF710 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242E549F8()
{
  v0 = sub_242F04700();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *MEMORY[0x277CE0EE0];
  v6 = *(v1 + 104);
  v6(v4, v5, v0, v2);
  v14 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v7 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v8 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v9 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v10 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v11 = sub_242F047A0();
  (v6)(v4, v5, v0);
  result = sub_242F047A0();
  *&xmmword_27ECF9EF0 = v14;
  *(&xmmword_27ECF9EF0 + 1) = v7;
  qword_27ECF9F00 = v8;
  unk_27ECF9F08 = v9;
  *&xmmword_27ECF9F10 = v10;
  *(&xmmword_27ECF9F10 + 1) = v11;
  qword_27ECF9F20 = result;
  return result;
}

uint64_t static Color.ACC.green.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF718 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(&xmmword_27ECF9EF0 + 1);
  v3 = qword_27ECF9F00;
  v4 = unk_27ECF9F08;
  v5 = xmmword_27ECF9F10;
  v6 = qword_27ECF9F20;
  *a1 = xmmword_27ECF9EF0;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
}

uint64_t static Color.ACC.green.setter(uint64_t a1)
{
  v4 = *(a1 + 16);
  v5 = *a1;
  v3 = *(a1 + 32);
  v1 = *(a1 + 48);
  if (qword_27ECEF718 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  xmmword_27ECF9EF0 = v5;
  *&qword_27ECF9F00 = v4;
  xmmword_27ECF9F10 = v3;
  qword_27ECF9F20 = v1;
}

uint64_t (*static Color.ACC.green.modify())()
{
  if (qword_27ECEF718 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242E54EE8()
{
  if (qword_27ECEF708 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v36 = xmmword_27ECF9EC0;
  v37 = *&qword_27ECF9ED0;
  v38 = qword_27ECF9EE0;
  v34 = xmmword_27ECF9EA0;
  v35 = *&qword_27ECF9EB0;
  sub_242C8D144(&v34, &v39);
  if (qword_27ECEF700 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v41 = xmmword_27ECF9E78;
  v42 = *&qword_27ECF9E88;
  v43 = qword_27ECF9E98;
  v39 = xmmword_27ECF9E58;
  v40 = *&qword_27ECF9E68;
  sub_242C8CBA8(&v39, &v30);
  if (qword_27ECEF710 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27ECEF718;
  v28 = qword_27ECF9EE8;

  if (v0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = *(&xmmword_27ECF9EF0 + 1);
  v2 = qword_27ECF9F00;
  v3 = unk_27ECF9F08;
  v4 = xmmword_27ECF9F10;
  v5 = qword_27ECF9F20;
  v6 = qword_27ECEF0B0;
  v27 = xmmword_27ECF9EF0;

  v26 = v1;

  v25 = v2;

  v24 = v5;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = *algn_27ECF3678;
  v8 = qword_27ECF3680;
  v9 = qword_27ECEF0B8;
  v23 = qword_27ECF3670;

  v22 = v7;

  v21 = v8;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = qword_27ECEF0C0;
  v20 = qword_27ECF3688;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = *algn_27ECF3698;
  v12 = qword_27ECF36A0;
  v13 = unk_27ECF36A8;
  v14 = qword_27ECF36B0;
  v15 = unk_27ECF36B8;
  v16 = qword_27ECF36C0;
  v17 = qword_27ECEF0C8;
  v19 = qword_27ECF3690;

  if (v17 != -1)
  {
    swift_once();
  }

  v30 = xmmword_27ECF36C8;
  v31 = *&qword_27ECF36D8;
  v32 = xmmword_27ECF36E8;
  v33 = *&qword_27ECF36F8;
  sub_242C8E7B0(&v30, v29);
  if (qword_27ECEF0D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  xmmword_27ECF9F48 = v36;
  unk_27ECF9F58 = v37;
  xmmword_27ECF9F28 = v34;
  unk_27ECF9F38 = v35;
  unk_27ECF9F70 = v39;
  unk_27ECF9FA0 = v42;
  qword_27ECF9F68 = v38;
  unk_27ECF9F90 = v41;
  unk_27ECF9F80 = v40;
  qword_27ECF9FB0 = v43;
  unk_27ECF9FB8 = v28;
  qword_27ECF9FC0 = v23;
  unk_27ECF9FC8 = v22;
  qword_27ECF9FD0 = v21;
  unk_27ECF9FD8 = v27;
  qword_27ECF9FE0 = v26;
  qword_27ECF9FE8 = v25;
  unk_27ECF9FF0 = v3;
  xmmword_27ECF9FF8 = v4;
  qword_27ECFA008 = v24;
  unk_27ECFA010 = v20;
  qword_27ECFA018 = v19;
  qword_27ECFA020 = v11;
  unk_27ECFA028 = v12;
  qword_27ECFA030 = v13;
  unk_27ECFA038 = v14;
  qword_27ECFA040 = v15;
  unk_27ECFA048 = v16;
  xmmword_27ECFA070 = v32;
  unk_27ECFA080 = v33;
  xmmword_27ECFA050 = v30;
  unk_27ECFA060 = v31;
  xmmword_27ECFA090 = xmmword_27ECF3708;
  qword_27ECFA0A0 = qword_27ECF3718;
  unk_27ECFA0A8 = unk_27ECF3720;
  xmmword_27ECFA0B0 = xmmword_27ECF3728;
  qword_27ECFA0C0 = qword_27ECF3738;
}

uint64_t static Color.ColorValues.green.getter@<X0>(void *a1@<X8>)
{
  if (qword_27ECEF720 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &xmmword_27ECF9F28, sizeof(__dst));
  memcpy(a1, &xmmword_27ECF9F28, 0x1A0uLL);
  return sub_242C8DFF4(__dst, &v3);
}

uint64_t sub_242E55460()
{
  v0 = sub_242F04700();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0758);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_242F0A4E0;
  *(inited + 32) = xmmword_242F0B490;
  v25 = inited + 32;
  *(inited + 48) = 0;
  v5 = *(v1 + 104);
  v24 = *MEMORY[0x277CE0EE0];
  v23 = v5;
  v5(v3);
  v6 = sub_242F047A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
  v7 = swift_initStackObject();
  v22 = xmmword_242F09510;
  *(v7 + 16) = xmmword_242F09510;
  *(v7 + 32) = 0;
  v8 = v7 + 32;
  *(v7 + 40) = v6;
  v9 = sub_242CE6C84(v7);
  swift_setDeallocating();

  sub_242C6E840(v8);
  v10 = sub_242E1E384(v9);

  if (*(v10 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60);
    v11 = sub_242F05CB0();
  }

  else
  {
    v11 = MEMORY[0x277D84F98];
  }

  v26[0] = v11;

  sub_242E21B3C(v12, 1, v26);

  *(inited + 56) = v26[0];
  *(inited + 64) = xmmword_242F0B4A0;
  *(inited + 80) = 0;
  v23(v3, v24, v0);
  v13 = sub_242F047A0();
  v14 = swift_initStackObject();
  *(v14 + 16) = v22;
  *(v14 + 32) = 0;
  v15 = v14 + 32;
  *(v14 + 40) = v13;
  v16 = sub_242CE6C84(v14);
  swift_setDeallocating();

  sub_242C6E840(v15);
  v17 = sub_242E1E384(v16);

  if (*(v17 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60);
    v18 = sub_242F05CB0();
  }

  else
  {
    v18 = MEMORY[0x277D84F98];
  }

  v26[0] = v18;

  sub_242E21B3C(v19, 1, v26);

  *(inited + 88) = v26[0];
  v20 = sub_242CE6EE4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0760);
  result = swift_arrayDestroy();
  qword_27ECFA0C8 = v20;
  return result;
}

uint64_t (*static Theme.LayoutStyle.overridesDigiBandLightGreen.modify())()
{
  if (qword_27ECEF728 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

unint64_t sub_242E55904()
{
  result = sub_242CE6EE4(MEMORY[0x277D84F90]);
  qword_27ECFA0D0 = result;
  return result;
}

uint64_t (*static Theme.LayoutStyle.overridesDigiRingLightGreen.modify())()
{
  if (qword_27ECEF730 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

unint64_t sub_242E559FC()
{
  result = sub_242CE6EE4(MEMORY[0x277D84F90]);
  qword_27ECFA0D8 = result;
  return result;
}

uint64_t (*static Theme.LayoutStyle.overridesModularLightGreen.modify())()
{
  if (qword_27ECEF738 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t ShapeLayerConfiguration.description.getter()
{
  v1 = *v0;
  sub_242F05A80();
  MEMORY[0x245D26660](0xD000000000000026, 0x8000000242F5CAC0);
  v2 = MEMORY[0x245D26920](v1, &type metadata for ShapeLayerConfiguration.PathElement);
  MEMORY[0x245D26660](v2);

  MEMORY[0x245D26660](0x6143656E696C202CLL, 0xEB00000000203A70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA0E0);
  v3 = sub_242F04F90();
  MEMORY[0x245D26660](v3);

  MEMORY[0x245D26660](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_242E55C08()
{
  v1 = *v0;
  v2 = 120;
  v3 = 0x676E417472617473;
  v4 = 0x656C676E41646E65;
  if (v1 != 4)
  {
    v4 = 0x7369776B636F6C63;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 121;
  if (v1 != 1)
  {
    v5 = 0x737569646172;
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

uint64_t sub_242E55CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242E58CDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242E55CD8(uint64_t a1)
{
  v2 = sub_242E58184();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242E55D14(uint64_t a1)
{
  v2 = sub_242E58184();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242E55D50(uint64_t a1)
{
  v2 = sub_242E58130();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242E55D8C(uint64_t a1)
{
  v2 = sub_242E58130();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242E55DC8()
{
  v1 = 0x6F5465766F6DLL;
  v2 = 0x6F54637261;
  if (*v0 != 2)
  {
    v2 = 0x62755365736F6C63;
  }

  if (*v0)
  {
    v1 = 0x6F54656E696CLL;
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

uint64_t sub_242E55E40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242E58ED0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242E55E68(uint64_t a1)
{
  v2 = sub_242E580DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242E55EA4(uint64_t a1)
{
  v2 = sub_242E580DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242E55EE0(uint64_t a1)
{
  v2 = sub_242E581D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242E55F1C(uint64_t a1)
{
  v2 = sub_242E581D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242E55F58(uint64_t a1)
{
  v2 = sub_242E5822C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242E55F94(uint64_t a1)
{
  v2 = sub_242E5822C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ShapeLayerConfiguration.PathElement.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA0E8);
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x28223BE20](v3);
  v39 = v36 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA0F0);
  v6 = *(v5 - 8);
  v45 = v5;
  v46 = v6;
  MEMORY[0x28223BE20](v5);
  v44 = v36 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA0F8);
  v40 = *(v8 - 8);
  v41 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA100);
  v37 = *(v11 - 8);
  v38 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA108);
  v15 = *(v14 - 8);
  v48 = v14;
  v49 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = v36 - v16;
  v18 = *(v1 + 8);
  v19 = *(v1 + 20);
  v36[0] = *(v1 + 16);
  v36[1] = v18;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E580DC();
  v47 = v17;
  sub_242F064C0();
  v20 = v19 >> 6;
  if (v19 >> 6 > 1)
  {
    if (v20 != 2)
    {
      v64 = 3;
      sub_242E58130();
      v33 = v39;
      v35 = v47;
      v34 = v48;
      sub_242F05E40();
      (*(v42 + 8))(v33, v43);
      return (*(v49 + 8))(v35, v34);
    }

    v63 = 2;
    sub_242E58184();
    v25 = v44;
    v27 = v47;
    v26 = v48;
    sub_242F05E40();
    v62 = 0;
    v28 = v45;
    v29 = v50;
    sub_242F05EF0();
    if (!v29)
    {
      v61 = 1;
      sub_242F05EF0();
      v60 = 2;
      sub_242F05EF0();
      v59 = 3;
      sub_242F05EF0();
      v58 = 4;
      sub_242F05EF0();
      v57 = 5;
      sub_242F05ED0();
    }

    (*(v46 + 8))(v25, v28);
    return (*(v49 + 8))(v27, v26);
  }

  if (v20)
  {
    v56 = 1;
    sub_242E581D8();
    v27 = v47;
    v26 = v48;
    sub_242F05E40();
    v55 = 0;
    v30 = v41;
    v31 = v50;
    sub_242F05EF0();
    if (!v31)
    {
      v54 = 1;
      sub_242F05EF0();
    }

    (*(v40 + 8))(v10, v30);
    return (*(v49 + 8))(v27, v26);
  }

  v53 = 0;
  sub_242E5822C();
  v22 = v47;
  v21 = v48;
  sub_242F05E40();
  v52 = 0;
  v23 = v38;
  v24 = v50;
  sub_242F05EF0();
  if (!v24)
  {
    v51 = 1;
    sub_242F05EF0();
  }

  (*(v37 + 8))(v13, v23);
  return (*(v49 + 8))(v22, v21);
}

uint64_t ShapeLayerConfiguration.PathElement.hash(into:)()
{
  v1 = *(v0 + 20) >> 6;
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      MEMORY[0x245D279A0](2);
      sub_242F063C0();
      sub_242F063C0();
      sub_242F063C0();
      sub_242F063C0();
      sub_242F063C0();
      return sub_242F063B0();
    }

    else
    {
      return MEMORY[0x245D279A0](3);
    }
  }

  else
  {
    MEMORY[0x245D279A0](v1 != 0);
    sub_242F063C0();
    return sub_242F063C0();
  }
}

uint64_t ShapeLayerConfiguration.PathElement.hashValue.getter()
{
  sub_242F06390();
  ShapeLayerConfiguration.PathElement.hash(into:)();
  return sub_242F063E0();
}

uint64_t ShapeLayerConfiguration.PathElement.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA138);
  v69 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v74 = &v64 - v3;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA140);
  v72 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v73 = &v64 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA148);
  v70 = *(v5 - 8);
  v71 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v64 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA150);
  v67 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v64 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA158);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v64 - v13;
  v15 = a1[3];
  v78 = a1;
  __swift_project_boxed_opaque_existential_2Tm(a1, v15);
  sub_242E580DC();
  v16 = v77;
  sub_242F06480();
  if (!v16)
  {
    v66 = 0;
    v17 = v10;
    v65 = v8;
    v19 = v74;
    v18 = v75;
    v20 = v73;
    v77 = v12;
    v21 = v76;
    v22 = sub_242F05E10();
    v23 = (2 * *(v22 + 16)) | 1;
    v79 = v22;
    v80 = v22 + 32;
    v81 = 0;
    v82 = v23;
    v24 = sub_242C7FBF0();
    if (v24 == 4 || v81 != v82 >> 1)
    {
      v28 = sub_242F05B10();
      swift_allocError();
      v30 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFF10);
      *v30 = &type metadata for ShapeLayerConfiguration.PathElement;
      sub_242F05D20();
      sub_242F05AF0();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
      swift_willThrow();
      (*(v77 + 8))(v14, v11);
    }

    else
    {
      if (v24 > 1u)
      {
        if (v24 == 2)
        {
          v83 = 2;
          sub_242E58184();
          v32 = v66;
          sub_242F05D10();
          v33 = v77;
          if (!v32)
          {
            v83 = 0;
            v34 = v68;
            sub_242F05DD0();
            v47 = v46;
            v83 = 1;
            sub_242F05DD0();
            v48 = v72;
            v50 = v49;
            v83 = 2;
            sub_242F05DD0();
            v52 = v51;
            v83 = 3;
            sub_242F05DD0();
            LODWORD(v75) = v53;
            v83 = 4;
            sub_242F05DD0();
            v59 = v58;
            v83 = 5;
            v60 = sub_242F05DB0();
            v61 = v20;
            v62 = v60;
            (*(v48 + 8))(v61, v34);
            (*(v33 + 8))(v14, v11);
            swift_unknownObjectRelease();
            v45 = v47 | (v50 << 32);
            v43 = v52 | (v75 << 32);
            v63 = 0x100000000;
            if ((v62 & 1) == 0)
            {
              v63 = 0;
            }

            v44 = v63 | v59 | 0xFFFFFF8000000000;
            goto LABEL_19;
          }
        }

        else
        {
          v83 = 3;
          sub_242E58130();
          v37 = v66;
          sub_242F05D10();
          v38 = v77;
          if (!v37)
          {
            (*(v69 + 8))(v19, v18);
            (*(v38 + 8))(v14, v11);
            swift_unknownObjectRelease();
            v45 = 0;
            v43 = 0;
            v44 = 0xC000000000;
            goto LABEL_19;
          }
        }
      }

      else if (v24)
      {
        v83 = 1;
        sub_242E581D8();
        v35 = v66;
        sub_242F05D10();
        if (!v35)
        {
          v83 = 0;
          v36 = v71;
          sub_242F05DD0();
          v55 = v54;
          v83 = 1;
          sub_242F05DD0();
          v57 = v56;
          (*(v70 + 8))(v7, v36);
          (*(v77 + 8))(v14, v11);
          swift_unknownObjectRelease();
          v43 = 0;
          v45 = v55 | (v57 << 32);
          v44 = 0x4000000000;
          goto LABEL_19;
        }
      }

      else
      {
        v83 = 0;
        sub_242E5822C();
        v25 = v66;
        sub_242F05D10();
        if (!v25)
        {
          v83 = 0;
          v26 = v65;
          sub_242F05DD0();
          v27 = v77;
          v40 = v39;
          v83 = 1;
          sub_242F05DD0();
          v42 = v41;
          (*(v67 + 8))(v17, v26);
          (*(v27 + 8))(v14, v11);
          swift_unknownObjectRelease();
          v43 = 0;
          v44 = 0;
          v45 = v40 | (v42 << 32);
LABEL_19:
          *v21 = v45;
          *(v21 + 8) = v43;
          *(v21 + 16) = v44;
          *(v21 + 20) = BYTE4(v44);
          return __swift_destroy_boxed_opaque_existential_2Tm(v78);
        }
      }

      (*(v77 + 8))(v14, v11);
    }

    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(v78);
}

uint64_t sub_242E57160()
{
  sub_242F06390();
  ShapeLayerConfiguration.PathElement.hash(into:)();
  return sub_242F063E0();
}

uint64_t sub_242E571C0()
{
  sub_242F06390();
  ShapeLayerConfiguration.PathElement.hash(into:)();
  return sub_242F063E0();
}

uint64_t ShapeLayerConfiguration.pathElements.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ShapeLayerConfiguration.fillColorIDs.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t ShapeLayerConfiguration.strokeColorIDs.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t ShapeLayerConfiguration.lineWidth.setter(uint64_t result)
{
  *(v1 + 32) = result;
  *(v1 + 36) = BYTE4(result) & 1;
  return result;
}

uint64_t ShapeLayerConfiguration.init(pathElements:lineCap:fillColorIDs:strokeColorIDs:lineWidth:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a2;
  *a6 = result;
  *(a6 + 8) = v6;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  *(a6 + 36) = BYTE4(a5) & 1;
  return result;
}

uint64_t sub_242E573C0()
{
  v1 = *v0;
  v2 = 0x6D656C4568746170;
  v3 = 0x6F6C6F436C6C6966;
  v4 = 0x6F43656B6F727473;
  if (v1 != 3)
  {
    v4 = 0x74646957656E696CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x706143656E696CLL;
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

uint64_t sub_242E5747C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242E5902C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242E574A4(uint64_t a1)
{
  v2 = sub_242E58280();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242E574E0(uint64_t a1)
{
  v2 = sub_242E58280();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ShapeLayerConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA160);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - v6;
  v8 = *v1;
  v18 = *(v1 + 8);
  v9 = v1[2];
  v16 = v1[3];
  v17 = v9;
  v14[1] = *(v1 + 8);
  v15 = *(v1 + 36);
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E58280();

  sub_242F064C0();
  v20 = v8;
  v19 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA170);
  sub_242E58328(&qword_27ECFA178, sub_242E582D4);
  sub_242F05F20();
  if (v2)
  {
  }

  else
  {
    v11 = v16;
    v10 = v17;
    v12 = v15;

    LOBYTE(v20) = v18;
    v19 = 1;
    sub_242CD0B40();
    sub_242F05EB0();
    v20 = v10;
    v19 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1BF8);
    sub_242CCFBCC(&qword_27ECF1C00, sub_242C7DEA0);
    sub_242F05EB0();
    v20 = v11;
    v19 = 3;
    sub_242F05EB0();
    LOBYTE(v20) = 4;
    v19 = v12;
    sub_242F05E80();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t ShapeLayerConfiguration.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 8);
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = *(v2 + 36);
  sub_242C7BBD8(a1, *v2);
  if (v4 == 3)
  {
    sub_242F063B0();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_242F063B0();
    MEMORY[0x245D279A0](v4);
    if (v6)
    {
LABEL_3:
      sub_242F063B0();
      sub_242C79508(a1, v6);
      if (v5)
      {
        goto LABEL_4;
      }

LABEL_8:
      sub_242F063B0();
      if (v7)
      {
        return sub_242F063B0();
      }

      goto LABEL_9;
    }
  }

  sub_242F063B0();
  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  sub_242F063B0();
  sub_242C79508(a1, v5);
  if (v7)
  {
    return sub_242F063B0();
  }

LABEL_9:
  sub_242F063B0();
  return sub_242F063C0();
}

uint64_t ShapeLayerConfiguration.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v3 = *(v0 + 36);
  v5[9] = *v0;
  v6 = v1;
  v7 = *(v0 + 16);
  v8 = v2;
  v9 = v3;
  sub_242F06390();
  ShapeLayerConfiguration.hash(into:)(v5);
  return sub_242F063E0();
}

uint64_t ShapeLayerConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA188);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E58280();
  sub_242F06480();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA170);
  v18 = 0;
  sub_242E58328(&qword_27ECFA190, sub_242E583A0);
  sub_242F05E00();
  v9 = v19;
  v18 = 1;
  sub_242CD0A98();
  sub_242F05D90();
  v17 = v9;
  v16 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1BF8);
  v18 = 2;
  sub_242CCFBCC(&qword_27ECF1C10, sub_242C7DFAC);
  sub_242F05D90();
  v15 = v19;
  v18 = 3;
  sub_242F05D90();
  v10 = v19;
  LOBYTE(v19) = 4;
  v11 = sub_242F05D60();
  v12 = v17;
  v14 = v11;
  (*(v6 + 8))(v8, v5);
  *a2 = v12;
  *(a2 + 8) = v16;
  *(a2 + 16) = v15;
  *(a2 + 24) = v10;
  *(a2 + 32) = v14;
  *(a2 + 36) = BYTE4(v14) & 1;

  __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242E57DC4()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v3 = *(v0 + 36);
  v5[9] = *v0;
  v6 = v1;
  v7 = *(v0 + 16);
  v8 = v2;
  v9 = v3;
  sub_242F06390();
  ShapeLayerConfiguration.hash(into:)(v5);
  return sub_242F063E0();
}

uint64_t sub_242E57E34()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v3 = *(v0 + 36);
  v5[9] = *v0;
  v6 = v1;
  v7 = *(v0 + 16);
  v8 = v2;
  v9 = v3;
  sub_242F06390();
  ShapeLayerConfiguration.hash(into:)(v5);
  return sub_242F063E0();
}

BOOL _s14CarPlayAssetUI23ShapeLayerConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 36);
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a2 + 36);
  if ((sub_242C72FF0(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v2 == 3)
  {
    if (v7 != 3)
    {
      return 0;
    }

LABEL_7:
    if (v4)
    {
      if (!v9)
      {
        return 0;
      }

      v13 = sub_242C75A30(v4, v9);

      if ((v13 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v9)
    {
      return 0;
    }

    if (v3)
    {
      if (!v8)
      {
        return 0;
      }

      v14 = sub_242C75A30(v3, v8);

      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v8)
    {
      return 0;
    }

    if ((v6 & 1) == 0)
    {
      if (v5 == v10)
      {
        v15 = v11;
      }

      else
      {
        v15 = 1;
      }

      return (v15 & 1) == 0;
    }

    return (v11 & 1) != 0;
  }

  result = 0;
  if (v7 != 3 && v2 == v7)
  {
    goto LABEL_7;
  }

  return result;
}

BOOL _s14CarPlayAssetUI23ShapeLayerConfigurationV11PathElementO2eeoiySbAE_AEtFZ_0(float *a1, float *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 4) | (*(a2 + 20) << 32);
  v5 = *(a1 + 20) >> 6;
  if (v5 <= 1)
  {
    v6 = (v4 >> 38) & 3;
    if (!v5)
    {
      if (v6)
      {
        return 0;
      }

LABEL_23:
      if (*&v2 == *&v3)
      {
        return *(&v2 + 1) == *(&v3 + 1);
      }

      return 0;
    }

    if (v6 == 1)
    {
      goto LABEL_23;
    }

    return 0;
  }

  v7 = *(a2 + 1);
  if (v5 == 2)
  {
    if (((v4 >> 38) & 3) == 2)
    {
      v8 = *&v2 == *&v3 && *(&v2 + 1) == *(&v3 + 1);
      v9 = v8 && a1[2] == *&v7;
      v10 = v9 && a1[3] == *(&v7 + 1);
      if (v10 && a1[4] == a2[4])
      {
        return a1[5] & 1 ^ ((v4 & 0x100000000) == 0);
      }
    }

    return 0;
  }

  v13 = v7 | v3;
  return ((v4 >> 38) & 3) == 3 && v13 == 0 && (v4 & 0xFFFFFFFFFFLL) == 0xC000000000;
}

unint64_t sub_242E580DC()
{
  result = qword_27ECFA110;
  if (!qword_27ECFA110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA110);
  }

  return result;
}

unint64_t sub_242E58130()
{
  result = qword_27ECFA118;
  if (!qword_27ECFA118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA118);
  }

  return result;
}

unint64_t sub_242E58184()
{
  result = qword_27ECFA120;
  if (!qword_27ECFA120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA120);
  }

  return result;
}

unint64_t sub_242E581D8()
{
  result = qword_27ECFA128;
  if (!qword_27ECFA128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA128);
  }

  return result;
}

unint64_t sub_242E5822C()
{
  result = qword_27ECFA130;
  if (!qword_27ECFA130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA130);
  }

  return result;
}

unint64_t sub_242E58280()
{
  result = qword_27ECFA168;
  if (!qword_27ECFA168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA168);
  }

  return result;
}

unint64_t sub_242E582D4()
{
  result = qword_27ECFA180;
  if (!qword_27ECFA180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA180);
  }

  return result;
}

uint64_t sub_242E58328(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFA170);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242E583A0()
{
  result = qword_27ECFA198;
  if (!qword_27ECFA198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA198);
  }

  return result;
}

unint64_t sub_242E583F8()
{
  result = qword_27ECFA1A0;
  if (!qword_27ECFA1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA1A0);
  }

  return result;
}

unint64_t sub_242E58450()
{
  result = qword_27ECFA1A8;
  if (!qword_27ECFA1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA1A8);
  }

  return result;
}

__n128 __swift_memcpy37_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_242E584B8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 37))
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

uint64_t sub_242E58500(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 37) = 1;
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

    *(result + 37) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy21_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ShapeLayerConfiguration.PathElement(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 21))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 20) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 20) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for ShapeLayerConfiguration.PathElement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 21) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 21) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 20) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_242E5861C(uint64_t a1)
{
  v1 = *(a1 + 20) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_242E58638(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = a1 + 16;
  v3 = v2 | (*(result + 4) << 32);
  *result = v2;
  *(result + 4) = BYTE4(v3) & 0x3F;
  return result;
}

uint64_t sub_242E58654(uint64_t result, uint64_t a2)
{
  if (a2 < 3)
  {
    v2 = *(result + 16);
    result += 16;
    v3 = (v2 | (*(result + 4) << 32)) & 0x1FFFFFFFFLL | (a2 << 38);
    *result = v2;
    *(result + 4) = BYTE4(v3);
  }

  else
  {
    *result = (a2 - 3);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 20) = -64;
  }

  return result;
}

unint64_t sub_242E58708()
{
  result = qword_27ECFA1B0;
  if (!qword_27ECFA1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA1B0);
  }

  return result;
}

unint64_t sub_242E58760()
{
  result = qword_27ECFA1B8;
  if (!qword_27ECFA1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA1B8);
  }

  return result;
}

unint64_t sub_242E587B8()
{
  result = qword_27ECFA1C0;
  if (!qword_27ECFA1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA1C0);
  }

  return result;
}

unint64_t sub_242E58810()
{
  result = qword_27ECFA1C8;
  if (!qword_27ECFA1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA1C8);
  }

  return result;
}

unint64_t sub_242E58868()
{
  result = qword_27ECFA1D0;
  if (!qword_27ECFA1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA1D0);
  }

  return result;
}

unint64_t sub_242E588C0()
{
  result = qword_27ECFA1D8;
  if (!qword_27ECFA1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA1D8);
  }

  return result;
}

unint64_t sub_242E58918()
{
  result = qword_27ECFA1E0;
  if (!qword_27ECFA1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA1E0);
  }

  return result;
}

unint64_t sub_242E58970()
{
  result = qword_27ECFA1E8;
  if (!qword_27ECFA1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA1E8);
  }

  return result;
}

unint64_t sub_242E589C8()
{
  result = qword_27ECFA1F0;
  if (!qword_27ECFA1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA1F0);
  }

  return result;
}

unint64_t sub_242E58A20()
{
  result = qword_27ECFA1F8;
  if (!qword_27ECFA1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA1F8);
  }

  return result;
}

unint64_t sub_242E58A78()
{
  result = qword_27ECFA200;
  if (!qword_27ECFA200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA200);
  }

  return result;
}

unint64_t sub_242E58AD0()
{
  result = qword_27ECFA208;
  if (!qword_27ECFA208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA208);
  }

  return result;
}

unint64_t sub_242E58B28()
{
  result = qword_27ECFA210;
  if (!qword_27ECFA210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA210);
  }

  return result;
}

unint64_t sub_242E58B80()
{
  result = qword_27ECFA218;
  if (!qword_27ECFA218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA218);
  }

  return result;
}

unint64_t sub_242E58BD8()
{
  result = qword_27ECFA220;
  if (!qword_27ECFA220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA220);
  }

  return result;
}

unint64_t sub_242E58C30()
{
  result = qword_27ECFA228;
  if (!qword_27ECFA228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA228);
  }

  return result;
}

unint64_t sub_242E58C88()
{
  result = qword_27ECFA230[0];
  if (!qword_27ECFA230[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ECFA230);
  }

  return result;
}

uint64_t sub_242E58CDC(uint64_t a1, uint64_t a2)
{
  if (a1 == 120 && a2 == 0xE100000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 121 && a2 == 0xE100000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x737569646172 && a2 == 0xE600000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E417472617473 && a2 == 0xEA0000000000656CLL || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C676E41646E65 && a2 == 0xE800000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7369776B636F6C63 && a2 == 0xE900000000000065)
  {

    return 5;
  }

  else
  {
    v5 = sub_242F06110();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_242E58ED0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F5465766F6DLL && a2 == 0xE600000000000000;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F54656E696CLL && a2 == 0xE600000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F54637261 && a2 == 0xE500000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x62755365736F6C63 && a2 == 0xEC00000068746170)
  {

    return 3;
  }

  else
  {
    v6 = sub_242F06110();

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

uint64_t sub_242E5902C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D656C4568746170 && a2 == 0xEC00000073746E65;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x706143656E696CLL && a2 == 0xE700000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F6C6F436C6C6966 && a2 == 0xEC00000073444972 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F43656B6F727473 && a2 == 0xEE00734449726F6CLL || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74646957656E696CLL && a2 == 0xE900000000000068)
  {

    return 4;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t (*SlotViewBuilder.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (**a5)(uint64_t a1)@<X8>))(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 2) = a3;
  *(result + 3) = a4;
  *(result + 4) = a1;
  *(result + 5) = a2;
  *a5 = sub_242E592FC;
  a5[1] = result;
  return result;
}

uint64_t sub_242E5926C(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v2(v1);
  return sub_242F04940();
}

uint64_t sub_242E59318(uint64_t a1, uint64_t a2)
{
  v4 = sub_242F041B0();
  v5 = MEMORY[0x28223BE20](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2, v5);
  swift_storeEnumTagMultiPayload();
  return sub_242F041C0();
}

uint64_t sub_242E59410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_242F041B0();
  v6 = MEMORY[0x28223BE20](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3, v6);
  swift_storeEnumTagMultiPayload();
  return sub_242F041C0();
}

uint64_t Angle.description.getter()
{
  sub_242F05480();
  MEMORY[0x245D26660](539799746, 0xA400000000000000);
  sub_242F05480();
  MEMORY[0x245D26660](0x7364617220, 0xE500000000000000);
  return 0;
}

uint64_t sub_242E595B8()
{
  sub_242F05480();
  MEMORY[0x245D26660](539799746, 0xA400000000000000);
  sub_242F05480();
  MEMORY[0x245D26660](0x7364617220, 0xE500000000000000);
  return 0;
}

uint64_t IdentifiableIndices.Element.id.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 16);

  return v4(a1, v1, AssociatedTypeWitness);
}

uint64_t sub_242E5971C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a3, a1, AssociatedTypeWitness);
  v7 = *(type metadata accessor for IdentifiableIndices.Element() + 44);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

uint64_t IdentifiableIndices.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a3;
  v19 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  v18 = AssociatedTypeWitness;
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v6 = &v16 - v5;
  swift_getAssociatedTypeWitness();
  v7 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = swift_checkMetadataState();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - v12;
  v14 = sub_242F05650();
  (*(v11 + 16))(v13);
  v14(v21, 0);
  sub_242F05AA0();
  (*(v11 + 8))(v13, v10);
  (*(v17 + 16))(v6, a1, v18);
  return sub_242E5971C(v9, v6, v20);
}

void (*sub_242E59B6C(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_242E59C3C(v6, a2, a3);
  return sub_242E59BF4;
}

void sub_242E59BF4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_242E59C3C(uint64_t *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v6 = type metadata accessor for IdentifiableIndices.Element();
  *a1 = v6;
  v7 = *(v6 - 8);
  a1[1] = v7;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  a1[2] = v8;
  IdentifiableIndices.subscript.getter(a2, a3, v8);
  return sub_242E59D18;
}

void sub_242E59D18(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_242E59D74@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  v2 = sub_242F05860();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_242E59EA8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v13 - v10;
  (*(v8 + 32))(&v13 - v10, a1, AssociatedTypeWitness, v9);
  a4(v11, a2);
  return (*(v8 + 8))(v11, AssociatedTypeWitness);
}

uint64_t sub_242E59FC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(a1 - 8);
  (*(v6 + 16))(a2, v2, a1);
  swift_getWitnessTable();
  sub_242F05C30();
  IdentifiableIndices.startIndex.getter();
  v4 = *(v6 + 8);

  return v4(v2, a1);
}

uint64_t sub_242E5A0C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_242E5A114(uint64_t a1)
{
  swift_getWitnessTable();
  v3 = sub_242E5E358();
  (*(*(a1 - 8) + 8))(v1, a1);
  return v3;
}

uint64_t RandomAccessCollection<>.identifiableIndices.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  return (*(v4 + 32))(a2, v6, a1);
}

uint64_t ForEach<>.init<A>(_:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v23[1] = a4;
  v24 = a2;
  v25 = a3;
  v26 = a1;
  v27 = a9;
  v16 = type metadata accessor for IdentifiableIndices();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  (*(v17 + 16))(v23 - v19, a1, v16, v18);
  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a6;
  v20[5] = a7;
  v20[6] = a8;
  v20[7] = a10;
  v21 = v25;
  v20[8] = v24;
  v20[9] = v21;
  swift_getWitnessTable();
  type metadata accessor for IdentifiableIndices.Element();
  swift_getWitnessTable();
  sub_242F049A0();
  return (*(v17 + 8))(v26, v16);
}

uint64_t sub_242E5A474(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v20 - v15;
  v17 = type metadata accessor for IdentifiableIndices.Element();
  a2(a1 + *(v17 + 44));
  sub_242CA32B4(v13, a5, a7);
  v18 = *(v11 + 8);
  v18(v13, a5);
  sub_242CA32B4(v16, a5, a7);
  return (v18)(v16, a5);
}

uint64_t ForEach<>.init<A>(_:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  return sub_242E5ACAC(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, &unk_2855911A8, sub_242E5AC50);
}

{
  return sub_242E5ACAC(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, &unk_2855911D0, sub_242E5B6E4);
}

uint64_t sub_242E5A664@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v86 = a5;
  v87 = a8;
  v77 = a3;
  v78 = a2;
  v79 = a9;
  v81 = a4;
  v82 = a10;
  v83 = a1;
  v84 = a11;
  v85 = a12;
  v69 = type metadata accessor for IdentifiableIndices.Element();
  v88 = *(v69 - 8);
  v67 = v88[8];
  MEMORY[0x28223BE20](v69);
  v76 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v58 - v16;
  v61 = &v58 - v16;
  v80 = a7;
  v18 = sub_242F04980();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v70 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v58 - v22;
  v60 = &v58 - v22;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = sub_242F04980();
  v74 = *(v24 - 8);
  v75 = v24;
  MEMORY[0x28223BE20](v24);
  v71 = &v58 - v25;
  v62 = a6;
  v72 = *(a6 - 8);
  MEMORY[0x28223BE20](v26);
  v66 = &v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v28);
  v68 = &v58 - v30;
  v31 = v19;
  v65 = *(v19 + 16);
  v32 = v18;
  v65(v23, v81, v18, v29);
  v33 = v88;
  v64 = v88[2];
  v34 = v17;
  v35 = v69;
  v64(v34, v83, v69);
  v36 = *(v31 + 80);
  v37 = (v36 + 88) & ~v36;
  v38 = *(v33 + 80);
  v59 = v37;
  v39 = (v20 + v37 + v38) & ~v38;
  v63 = v36 | v38;
  v40 = swift_allocObject();
  *(v40 + 2) = 0;
  *(v40 + 3) = 0;
  *(v40 + 4) = v86;
  *(v40 + 5) = a6;
  v41 = v87;
  *(v40 + 6) = v80;
  *(v40 + 7) = v41;
  v43 = v84;
  v42 = v85;
  *(v40 + 8) = v82;
  *(v40 + 9) = v43;
  *(v40 + 10) = v42;
  v58 = *(v31 + 32);
  v58(&v40[v37], v60, v32);
  v44 = v88[4];
  v88 += 4;
  v60 = v44;
  (v44)(&v40[v39], v61, v35);
  v45 = v70;
  v46 = v32;
  (v65)(v70, v81, v32);
  v47 = v76;
  v64(v76, v83, v35);
  v48 = swift_allocObject();
  *(v48 + 2) = 0;
  *(v48 + 3) = 0;
  v49 = v87;
  v50 = v62;
  *(v48 + 4) = v86;
  *(v48 + 5) = v50;
  *(v48 + 6) = v80;
  *(v48 + 7) = v49;
  v52 = v84;
  v51 = v85;
  *(v48 + 8) = v82;
  *(v48 + 9) = v52;
  *(v48 + 10) = v51;
  v58(&v48[v59], v45, v46);
  (v60)(&v48[v39], v47, v35);
  v53 = v71;
  sub_242F04970();
  v54 = v66;
  v78(v53);
  (*(v74 + 8))(v53, v75);
  v55 = v68;
  sub_242CA32B4(v54, v50, v49);
  v56 = *(v72 + 8);
  v56(v54, v50);
  sub_242CA32B4(v55, v50, v49);
  return (v56)(v55, v50);
}

uint64_t sub_242E5ACAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v49 = a3;
  v50 = a8;
  v47 = a2;
  v48 = a7;
  v45 = a4;
  v46 = a5;
  v51 = a9;
  v52 = a13;
  v44 = a12;
  v40 = a11;
  v41 = a10;
  v15 = sub_242F04980();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v37 - v17;
  v37 = &v37 - v17;
  v43 = type metadata accessor for IdentifiableIndices();
  MEMORY[0x28223BE20](v43);
  v20 = &v37 - v19;
  v42 = &v37 - v19;
  v21 = *(a6 - 8);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1;
  MEMORY[0x245D25F50](v15, v23);
  RandomAccessCollection<>.identifiableIndices.getter(a6, v20);
  (*(v21 + 8))(v25, a6);
  v26 = *(v16 + 16);
  v27 = v18;
  v28 = v15;
  v38 = v15;
  v26(v27, a1, v15);
  v29 = (*(v16 + 80) + 88) & ~*(v16 + 80);
  v30 = swift_allocObject();
  v31 = v46;
  *(v30 + 2) = v45;
  *(v30 + 3) = v31;
  v32 = v48;
  *(v30 + 4) = a6;
  *(v30 + 5) = v32;
  v34 = v40;
  v33 = v41;
  *(v30 + 6) = v50;
  *(v30 + 7) = v33;
  v35 = v47;
  *(v30 + 8) = v34;
  *(v30 + 9) = v35;
  *(v30 + 10) = v49;
  (*(v16 + 32))(&v30[v29], v37, v28);
  swift_getWitnessTable();
  type metadata accessor for IdentifiableIndices.Element();
  swift_getWitnessTable();
  sub_242F049A0();
  return (*(v16 + 8))(v39, v38);
}

uint64_t sub_242E5AFC4@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v87 = a5;
  v88 = a8;
  v63 = a4;
  v76 = a3;
  v77 = a2;
  v78 = a9;
  v84 = a10;
  v85 = a1;
  v73 = a11;
  v86 = a12;
  v15 = type metadata accessor for IdentifiableIndices.Element();
  v65 = *(v15 - 8);
  v83 = *(v65 + 64);
  MEMORY[0x28223BE20](v15);
  v74 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v56 - v18;
  v59 = &v56 - v18;
  v82 = a7;
  v81 = sub_242F04980();
  v20 = *(v81 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v81);
  v67 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v56 - v23;
  v58 = &v56 - v23;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v75 = sub_242F04980();
  v72 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v69 = &v56 - v25;
  v80 = a6;
  v70 = *(a6 - 8);
  MEMORY[0x28223BE20](v26);
  v66 = &v56 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v28);
  v68 = &v56 - v30;
  v79 = v15;
  v64 = *(v15 + 44);
  v62 = *(v20 + 16);
  v31 = v24;
  v32 = v81;
  v62(v31, a4, v81, v29);
  v33 = v65;
  v61 = *(v65 + 16);
  v61(v19, v85, v15);
  v34 = *(v20 + 80);
  v35 = v20;
  v36 = *(v33 + 80);
  v37 = (v34 + 88) & ~v34;
  v57 = v37;
  v38 = (v21 + v37 + v36) & ~v36;
  v60 = v34 | v36;
  v39 = swift_allocObject();
  *(v39 + 2) = 0;
  *(v39 + 3) = 0;
  *(v39 + 4) = v87;
  *(v39 + 5) = a6;
  v40 = v88;
  *(v39 + 6) = v82;
  *(v39 + 7) = v40;
  v41 = v73;
  *(v39 + 8) = v84;
  *(v39 + 9) = v41;
  *(v39 + 10) = v86;
  v56 = *(v35 + 32);
  v56(&v39[v37], v58, v32);
  v65 = *(v33 + 32);
  v42 = v79;
  (v65)(&v39[v38], v59, v79);
  v43 = v67;
  (v62)(v67, v63, v32);
  v44 = v74;
  v45 = v85;
  v61(v74, v85, v42);
  v46 = swift_allocObject();
  *(v46 + 2) = 0;
  *(v46 + 3) = 0;
  v47 = v88;
  v49 = v80;
  v48 = v81;
  *(v46 + 4) = v87;
  *(v46 + 5) = v49;
  *(v46 + 6) = v82;
  *(v46 + 7) = v47;
  *(v46 + 8) = v84;
  *(v46 + 9) = v41;
  *(v46 + 10) = v86;
  v56(&v46[v57], v43, v48);
  (v65)(&v46[v38], v44, v79);
  v50 = v69;
  sub_242F04970();
  v51 = v66;
  v77(v45 + v64, v50);
  (*(v72 + 8))(v50, v75);
  v52 = v68;
  v53 = v80;
  sub_242CA32B4(v51, v80, v47);
  v54 = *(v70 + 8);
  v54(v51, v53);
  sub_242CA32B4(v52, v53, v47);
  return (v54)(v52, v53);
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 32);
  v2 = (sub_242F04980() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = *(*v2 + 64);

  (*(*(v1 - 8) + 8))(v0 + v4 + v2[10], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_242E5B6FC(uint64_t a1, uint64_t (*a2)(uint64_t, void, void, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, void, uint64_t))
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v12 = *(v2 + 48);
  v9 = *(v2 + 64);
  v10 = *(sub_242F04980() - 8);
  return a2(a1, *(v2 + 72), *(v2 + 80), v2 + ((*(v10 + 80) + 88) & ~*(v10 + 80)), v5, v6, v7, v8, v12, *(&v12 + 1), v9);
}

uint64_t sub_242E5B7D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X6>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_242F04980();
  MEMORY[0x245D25F50](v8);
  type metadata accessor for IdentifiableIndices.Element();
  v9 = sub_242F05650();
  v11 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a3, v11, AssociatedTypeWitness);
  v9(v14, 0);
  return (*(v5 + 8))(v7, a2);
}

uint64_t sub_242E5B96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v25 = a5;
  v26 = a1;
  v24[0] = a11;
  v24[1] = a12;
  MEMORY[0x28223BE20](a1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = v24 - v14;
  v16 = swift_getAssociatedTypeWitness();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v24 - v18;
  v20 = type metadata accessor for IdentifiableIndices.Element();
  (*(v17 + 16))(v19, v25 + *(v20 + 44), v16);
  (*(v13 + 16))(v15, v26, AssociatedTypeWitness);
  v21 = sub_242F04980();
  MEMORY[0x245D25F50](v21, v22);
  sub_242F04EC0();
  return sub_242F04960();
}

uint64_t Binding.subscript.getter(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x245D25F50](v7, v4);
  swift_getAtKeyPath();
  return (*(v3 + 8))(v6, v2);
}

uint64_t Binding.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x245D25F50](v9);
  v10 = swift_readAtKeyPath();
  (*(*(*(v4 + *MEMORY[0x277D84308] + 8) - 8) + 16))(a3);
  v10(v12, 0);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_242E5BE00(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = sub_242F04980();

  sub_242E5E428(a1, v4, v5);
}

uint64_t Binding.subscript.setter(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  sub_242E5E428(a1, a2, a3);

  v5 = *(*(*(v4 + *MEMORY[0x277D84308] + 8) - 8) + 8);

  return v5(a1);
}

void (*Binding.subscript.modify(void *a1, uint64_t *a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = *(*a2 + *MEMORY[0x277D84308] + 8);
  v8[3] = v10;
  v11 = *(v10 - 8);
  v8[4] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v8[5] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v8[5] = malloc(v12);
    v13 = malloc(v12);
  }

  v9[6] = v13;
  Binding.subscript.getter(a2, a3, v13);
  return sub_242E5C070;
}

void sub_242E5C070(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = (*a1)[1];
  v8 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[5], v4, v5);

    sub_242E5E428(v3, v8, v7);

    v9 = *(v6 + 8);
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {

    sub_242E5E428(v4, v8, v7);

    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t Binding<A>.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = a2;
  v34 = a5;
  v31 = a4;
  v32 = a1;
  v30 = a6;
  v27 = a3;
  v8 = sub_242F04980();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v29 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v27 - v13;
  v28 = *(v9 + 16);
  v15 = a1;
  v17 = v16;
  v28(&v27 - v13, v15, v12);
  v18 = (*(v9 + 80) + 64) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = v33;
  *(v19 + 5) = a3;
  v20 = v34;
  *(v19 + 6) = v31;
  *(v19 + 7) = v20;
  v21 = *(v9 + 32);
  v21(&v19[v18], v14, v17);
  v22 = v29;
  (v28)(v29, v32, v17);
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  v24 = v27;
  *(v23 + 4) = v33;
  *(v23 + 5) = v24;
  v25 = v34;
  *(v23 + 6) = v31;
  *(v23 + 7) = v25;
  v21(&v23[v18], v22, v17);
  sub_242F04970();
  return (*(v9 + 8))(v32, v17);
}

uint64_t sub_242E5C3C0(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v1 = sub_242F04980();
  MEMORY[0x245D25F50](v1);
  return sub_242F04CB0();
}

uint64_t sub_242E5C484(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = &v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v3);
  (*(v5 + 16))(v2, v4);
  sub_242F04CB0();
  sub_242F04980();
  return sub_242F04960();
}

uint64_t Binding<A>.init(_:skipping:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a4;
  v41 = a5;
  v42 = a2;
  v39 = *(a3 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](a1);
  v38 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_242F04980();
  v9 = *(v31 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v31);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v31 - v14;
  v16 = *(v9 + 16);
  v36 = a1;
  v16(&v31 - v14, a1, v13);
  v17 = *(v9 + 80);
  v37 = v9;
  v18 = (v17 + 48) & ~v17;
  v32 = v18 + v10;
  v34 = v17 | 7;
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = a3;
  *(v19 + 5) = a4;
  v33 = *(v9 + 32);
  v20 = v15;
  v21 = v31;
  v33(&v19[v18], v20, v31);
  v22 = a1;
  v23 = v21;
  (v16)(v11, v22, v21);
  v25 = v38;
  v24 = v39;
  (*(v39 + 16))(v38, v42, a3);
  v26 = v24;
  v27 = (v32 + *(v24 + 80)) & ~*(v24 + 80);
  v28 = swift_allocObject();
  *(v28 + 2) = 0;
  *(v28 + 3) = 0;
  v29 = v35;
  *(v28 + 4) = a3;
  *(v28 + 5) = v29;
  v33(&v28[v18], v11, v23);
  (*(v26 + 32))(&v28[v27], v25, a3);
  sub_242F04970();
  (*(v26 + 8))(v42, a3);
  return (*(v37 + 8))(v36, v23);
}

uint64_t sub_242E5C8E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_242F04EE0())
  {
    v11 = sub_242F04980();
    MEMORY[0x245D25F50](v11);
  }

  else
  {
    (*(v8 + 16))(v10, a1, a6);
  }

  sub_242F04980();
  return sub_242F04960();
}

uint64_t Binding<A>.skipping(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v16, v12);
  (*(v8 + 16))(v10, a1, v7);
  return Binding<A>.init(_:skipping:)(v14, v10, v7, a3, a4);
}

uint64_t sub_242E5CB70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA3C0);
  sub_242F048A0();
  return v1;
}

uint64_t sub_242E5CBB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a1;
  v67 = a3;
  WitnessTable = swift_getWitnessTable();
  v4 = sub_242F04200();
  v5 = *(a2 + 16);
  v6 = swift_getWitnessTable();
  v7 = *(a2 + 24);
  v79 = v4;
  v80 = v5;
  v68 = v6;
  v69 = v5;
  v81 = v6;
  v82 = v7;
  v70 = v7;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v9 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v57 = &v54 - v13;
  v14 = *(a2 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v16);
  v17 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v4;
  v18 = sub_242F03E00();
  v56 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v55 = &v54 - v22;
  v64 = OpaqueTypeMetadata2;
  v23 = sub_242F041D0();
  v62 = *(v23 - 8);
  v63 = v23;
  v24 = MEMORY[0x28223BE20](v23);
  v61 = &v54 - v25;
  v26 = v59;
  LODWORD(v25) = *(v59 + *(a2 + 44));
  v58 = *(a2 + 36);
  if (v25 == 1)
  {
    v57 = *(a2 + 40);
    (*(v14 + 16))(&v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v59, a2, v24);
    v27 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v28 = swift_allocObject();
    v29 = v68;
    v30 = v69;
    v31 = v70;
    *(v28 + 16) = v69;
    *(v28 + 24) = v31;
    (*(v14 + 32))(v28 + v27, v17, a2);
    v32 = v66;
    View.task<A>(id:priority:runOnAppear:_:)(v26 + v58, &v57[v26], 1, &unk_242F405D0, v28, v66, v30, v29, v20);

    v33 = WitnessTable;
    v71 = v29;
    v72 = WitnessTable;
    v34 = swift_getWitnessTable();
    v35 = v55;
    sub_242CA32B4(v20, v18, v34);
    v36 = *(v56 + 8);
    v36(v20, v18);
    sub_242CA32B4(v35, v18, v34);
    v79 = v32;
    v80 = v30;
    v81 = v29;
    v82 = v70;
    swift_getOpaqueTypeConformance2();
    v37 = v61;
    sub_242E59318(v20, v18);
    v36(v20, v18);
    v36(v35, v18);
  }

  else
  {
    v38 = *(v14 + 16);
    v56 = v9;
    v38(&v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v59, a2, v24);
    v39 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v40 = swift_allocObject();
    v41 = v69;
    v42 = v70;
    *(v40 + 16) = v69;
    *(v40 + 24) = v42;
    (*(v14 + 32))(v40 + v39, v17, a2);
    v32 = v66;
    v43 = v68;
    sub_242F046C0();

    v79 = v32;
    v80 = v41;
    v81 = v43;
    v82 = v42;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v45 = v57;
    v46 = v64;
    sub_242CA32B4(v11, v64, OpaqueTypeConformance2);
    v47 = *(v56 + 8);
    v47(v11, v46);
    sub_242CA32B4(v45, v46, OpaqueTypeConformance2);
    v77 = v43;
    v33 = WitnessTable;
    v78 = WitnessTable;
    swift_getWitnessTable();
    v37 = v61;
    sub_242E59410(v11, v18, v46);
    v47(v11, v46);
    v47(v45, v46);
  }

  v48 = v68;
  v75 = v68;
  v76 = v33;
  v49 = swift_getWitnessTable();
  v79 = v32;
  v80 = v69;
  v81 = v48;
  v82 = v70;
  v50 = swift_getOpaqueTypeConformance2();
  v73 = v49;
  v74 = v50;
  v51 = v63;
  v52 = swift_getWitnessTable();
  sub_242CA32B4(v37, v51, v52);
  return (*(v62 + 8))(v37, v51);
}

uint64_t sub_242E5D34C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_242F05430();
  v3[5] = sub_242F05420();
  v5 = sub_242F05410();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x2822009F8](sub_242E5D3E8, v5, v4);
}

uint64_t sub_242E5D3E8()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for TaskConditional() + 48));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_242E5D4E8;

  return v5();
}

uint64_t sub_242E5D4E8()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_242E5D608, v3, v2);
}

uint64_t sub_242E5D608()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t View.task<A>(id:priority:runOnAppear:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v33 = a8;
  v31 = a9;
  v32 = a6;
  v27 = a2;
  v28 = a5;
  v30 = a4;
  v29 = a3;
  v26 = a1;
  v10 = sub_242F05450();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a7 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TaskConditional();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = (&v25 - v21);
  (*(v14 + 16))(v17, v26, a7, v20);
  (*(v11 + 16))(v13, v27, v10);
  v23 = v28;

  sub_242E5DE4C(v17, v13, v29, v30, v23, a7, v22);
  MEMORY[0x245D25CB0](v22, v32, v18, v33);
  return (*(v19 + 8))(v22, v18);
}

uint64_t sub_242E5D8C0(char *a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v26 = a3;
  v4 = type metadata accessor for TaskConditional();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAFB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - v9;
  v11 = *a1;
  v23 = *(a1 + 1);
  v24 = v11;
  v28 = v11;
  v29 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA3C8);
  sub_242F048B0();
  if (v27)
  {
    sub_242F05460();
  }

  v12 = *(v4 + 40);
  v13 = sub_242F05450();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v10, &a1[v12], v13);
  (*(v14 + 56))(v10, 0, 1, v13);
  (*(v5 + 16))(v7, a1, v4);
  sub_242F05430();
  v15 = sub_242F05420();
  v16 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 2) = v15;
  *(v17 + 3) = v18;
  v19 = v26;
  *(v17 + 4) = v25;
  *(v17 + 5) = v19;
  (*(v5 + 32))(&v17[v16], v7, v4);
  v20 = sub_242E8C7B4(0, 0, v10, &unk_242F405F0, v17);
  v28 = v24;
  v29 = v23;
  v27 = v20;
  return sub_242F048C0();
}

uint64_t sub_242E5DB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_242F05430();
  v6[5] = sub_242F05420();
  v8 = sub_242F05410();
  v6[6] = v8;
  v6[7] = v7;

  return MEMORY[0x2822009F8](sub_242E5DC2C, v8, v7);
}

uint64_t sub_242E5DC2C()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for TaskConditional() + 48));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_242E5DD2C;

  return v5();
}

uint64_t sub_242E5DD2C()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_242E60360, v3, v2);
}

uint64_t sub_242E5DE4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  *a7 = sub_242E5CB70();
  a7[1] = v14;
  v15 = type metadata accessor for TaskConditional();
  (*(*(a6 - 8) + 32))(a7 + v15[9], a1, a6);
  v16 = v15[10];
  v17 = sub_242F05450();
  result = (*(*(v17 - 8) + 32))(a7 + v16, a2, v17);
  *(a7 + v15[11]) = a3;
  v19 = (a7 + v15[12]);
  *v19 = a4;
  v19[1] = a5;
  return result;
}

uint64_t EdgeInsets.hash(into:)(double a1, double a2, double a3, double a4)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x245D279D0](*&a1);
  if (a2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = a2;
  }

  MEMORY[0x245D279D0](*&v7);
  if (a3 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = a3;
  }

  MEMORY[0x245D279D0](*&v8);
  if (a4 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = a4;
  }

  return MEMORY[0x245D279D0](*&v9);
}

uint64_t EdgeInsets.hashValue.getter(double a1, double a2, double a3, double a4)
{
  sub_242F06390();
  EdgeInsets.hash(into:)(a1, a2, a3, a4);
  return sub_242F063E0();
}

uint64_t sub_242E5E040()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_242F06390();
  EdgeInsets.hash(into:)(v1, v2, v3, v4);
  return sub_242F063E0();
}

uint64_t sub_242E5E0B4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_242F06390();
  EdgeInsets.hash(into:)(v1, v2, v3, v4);
  return sub_242F063E0();
}

double UIEdgeInsets.init(_:layoutDirection:)(uint64_t a1, double a2)
{
  v4 = sub_242F03DF0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x277CDFA90], v4, v6);
  sub_242F03DE0();
  v9 = *(v5 + 8);
  v9(a1, v4);
  v9(v8, v4);
  return a2;
}

uint64_t sub_242E5E274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_242F04E70();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_242E5E35C()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_242F04E70();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_242F056B0();
  result = sub_242F04E70();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_242E5E428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x28223BE20](a1);
  v5 = MEMORY[0x28223BE20](v4);
  (*(v7 + 16))(&v9 - v6, v5);
  MEMORY[0x245D25F50](a3);
  swift_setAtWritableKeyPath();
  return sub_242F04960();
}

uint64_t sub_242E5E584()
{
  sub_242F04980();
  v1 = *(v0 + 16);

  return sub_242E5C3C0(v1);
}

uint64_t objectdestroy_8Tm()
{
  v1 = *(v0 + 40);
  v2 = (sub_242F04980() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(*v2 + 64);
  swift_unknownObjectRelease();

  (*(*(v1 - 8) + 8))(v0 + v4 + v2[10], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_242E5E724(uint64_t a1)
{
  sub_242F04980();

  return sub_242E5C484(a1);
}

uint64_t sub_242E5E82C(uint64_t a1)
{
  v3 = v1[4];
  v4 = *(sub_242F04980() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1 + ((v5 + *(v4 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80));

  return sub_242E5C8E8(a1, v6, v7, v1 + v5, v8, v3);
}

uint64_t sub_242E5E924()
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_242E5EBF8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_242E5EC68()
{
  swift_getAssociatedTypeWitness();
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_242E5ED54(unsigned __int16 *a1, unsigned int a2)
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(v5 + 64) + v10;
  if (a2 <= v11)
  {
    goto LABEL_28;
  }

  v13 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((a2 - v11 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v11)
      {
LABEL_28:
        if (v6 >= v9)
        {
          v22 = *(v5 + 48);

          return v22(a1, v6, AssociatedTypeWitness);
        }

        else
        {
          v20 = *(v8 + 48);

          return v20((a1 + v12) & ~v10);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v11 + (v19 | v17) + 1;
}

void sub_242E5F030(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v23 = v7;
  v8 = *(v7 + 84);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  if (v10 <= v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v9 + 80);
  v13 = *(v7 + 64) + v12;
  v14 = (v13 & ~v12) + *(v9 + 64);
  if (a3 <= v11)
  {
    v15 = 0;
  }

  else if (v14 <= 3)
  {
    v18 = ((a3 - v11 + ~(-1 << (8 * v14))) >> (8 * v14)) + 1;
    if (HIWORD(v18))
    {
      v15 = 4;
    }

    else
    {
      if (v18 < 0x100)
      {
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }

      if (v18 >= 2)
      {
        v15 = v19;
      }

      else
      {
        v15 = 0;
      }
    }
  }

  else
  {
    v15 = 1;
  }

  if (v11 < a2)
  {
    v16 = ~v11 + a2;
    if (v14 < 4)
    {
      v17 = (v16 >> (8 * v14)) + 1;
      if (v14)
      {
        v20 = v16 & ~(-1 << (8 * v14));
        bzero(a1, v14);
        if (v14 != 3)
        {
          if (v14 == 2)
          {
            *a1 = v20;
            if (v15 > 1)
            {
LABEL_46:
              if (v15 == 2)
              {
                *&a1[v14] = v17;
              }

              else
              {
                *&a1[v14] = v17;
              }

              return;
            }
          }

          else
          {
            *a1 = v16;
            if (v15 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v15 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v14);
      *a1 = v16;
      v17 = 1;
      if (v15 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v15)
    {
      a1[v14] = v17;
    }

    return;
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *&a1[v14] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v14] = 0;
  }

  else if (v15)
  {
    a1[v14] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v8 >= v10)
  {
    v22 = *(v23 + 56);

    v22(a1, a2, v8, AssociatedTypeWitness);
  }

  else
  {
    v21 = *(v9 + 56);

    v21(&a1[v13] & ~v12, a2);
  }
}

void sub_242E5F398()
{
  sub_242E5F990();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_242F05450();
      if (v2 <= 0x3F)
      {
        sub_242E30C70();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_242E5F458(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(sub_242F05450() - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  if (v7 <= v9)
  {
    v14 = *(v8 + 84);
  }

  else
  {
    v14 = v7;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  if (v14 >= a2)
  {
    goto LABEL_29;
  }

  v15 = ((((v11 + v12 + ((v10 + 16) & ~v10)) & ~v12) + v13) & 0xFFFFFFFFFFFFFFF8) + 24;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v14 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v14 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v15);
    if (v20)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  v24 = (a1 + v10 + 16) & ~v10;
  if (v7 == v14)
  {
    v25 = *(v6 + 48);

    return v25(v24, v7, v5);
  }

  else
  {
    v26 = (v24 + v11 + v12) & ~v12;
    if (v9 == v14)
    {
      v27 = *(v8 + 48);

      return v27(v26);
    }

    else
    {
      v28 = *(((v26 + v13) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v28 >= 0xFFFFFFFF)
      {
        LODWORD(v28) = -1;
      }

      return (v28 + 1);
    }
  }
}

void sub_242E5F6CC(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v29 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_242F05450() - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  v14 = *(v10 + 80);
  v15 = *(v10 + 64);
  if (v9 <= v11)
  {
    v16 = *(v10 + 84);
  }

  else
  {
    v16 = v9;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  v17 = ((((v13 + v14 + ((v12 + 16) & ~v12)) & ~v14) + v15) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v16 >= a3)
  {
    v20 = 0;
    v21 = a2 - v16;
    if (a2 <= v16)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (((((v13 + v14 + ((v12 + 16) & ~v12)) & ~v14) + v15) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v18 = a3 - v16 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = a2 - v16;
    if (a2 <= v16)
    {
LABEL_19:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *(a1 + v17) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v17) = 0;
      }

      else if (v20)
      {
        *(a1 + v17) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      v24 = (a1 + v12 + 16) & ~v12;
      if (v9 == v16)
      {
        v25 = *(v29 + 56);

        v25(v24, a2, v9, v7);
      }

      else
      {
        v26 = (v24 + v13 + v14) & ~v14;
        if (v11 == v16)
        {
          v27 = *(v10 + 56);

          v27(v26, a2);
        }

        else
        {
          v28 = (v26 + v15) & 0xFFFFFFFFFFFFFFF8;
          if ((a2 & 0x80000000) != 0)
          {
            *(v28 + 8) = a2 & 0x7FFFFFFF;
            *(v28 + 16) = 0;
          }

          else
          {
            *(v28 + 8) = (a2 - 1);
          }
        }
      }

      return;
    }
  }

  if (((((v13 + v14 + ((v12 + 16) & ~v12)) & ~v14) + v15) & 0xFFFFFFF8) == 0xFFFFFFE8)
  {
    v22 = v21;
  }

  else
  {
    v22 = 1;
  }

  if (((((v13 + v14 + ((v12 + 16) & ~v12)) & ~v14) + v15) & 0xFFFFFFF8) != 0xFFFFFFE8)
  {
    v23 = ~v16 + a2;
    bzero(a1, v17);
    *a1 = v23;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      *(a1 + v17) = v22;
    }

    else
    {
      *(a1 + v17) = v22;
    }
  }

  else if (v20)
  {
    *(a1 + v17) = v22;
  }
}

void sub_242E5F990()
{
  if (!qword_27ECFA3B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFA3C0);
    v0 = sub_242F048D0();
    if (!v1)
    {
      atomic_store(v0, &qword_27ECFA3B8);
    }
  }
}

uint64_t sub_242E5FA38()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for TaskConditional() - 8);
  v4 = (v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  return sub_242E5D8C0(v4, v1, v2);
}

uint64_t objectdestroy_34Tm_0()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for TaskConditional() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(*v2 + 64);

  (*(*(v1 - 8) + 8))(v0 + v4 + v2[11], v1);
  v6 = v2[12];
  v7 = sub_242F05450();
  (*(*(v7 - 8) + 8))(v0 + v4 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_242E5FC00()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(type metadata accessor for TaskConditional() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_242E5FCE8;

  return sub_242E5D34C(v0 + v5, v2, v3);
}

uint64_t sub_242E5FCE8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_242E5FDDC(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(type metadata accessor for TaskConditional() - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_242E60348;

  return sub_242E5DB90(a1, v8, v9, v1 + v7, v4, v5);
}

uint64_t sub_242E5FEF0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  sub_242F04980();
  type metadata accessor for IdentifiableIndices.Element();
  return sub_242E5B7D0(*(v1 + 16), v3, a1);
}

uint64_t objectdestroy_47Tm()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 48);
  v3 = (sub_242F04980() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 88) & ~v4;
  v6 = *(*v3 + 64);
  v7 = (type metadata accessor for IdentifiableIndices.Element() - 8);
  v8 = *(*v7 + 80);
  v9 = (v5 + v6 + v8) & ~v8;
  v10 = *(*v7 + 64);
  v11 = v4 | v8;
  swift_unknownObjectRelease();

  (*(*(v2 - 8) + 8))(v0 + v5 + v3[10], v2);
  (*(*(v1 - 8) + 8))(v0 + v9, v1);
  v12 = v7[13];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v9 + v12, AssociatedTypeWitness);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_242E60220(uint64_t a1)
{
  v3 = v1[5];
  v14 = v1[4];
  v4 = v1[6];
  v5 = v1[7];
  v7 = v1[8];
  v6 = v1[9];
  v8 = v1[10];
  v9 = *(sub_242F04980() - 8);
  v10 = (*(v9 + 80) + 88) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(type metadata accessor for IdentifiableIndices.Element() - 8);
  return sub_242E5B96C(a1, v1[2], v1[3], v1 + v10, v1 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80)), v14, v3, v4, v5, v7, v6, v8);
}

double sub_242E60364@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_242CE8370(a1, a2), (v7 & 1) != 0))
  {
    v8 = (*(a3 + 56) + (v6 << 7));
    v9 = v8[3];
    v11 = *v8;
    v10 = v8[1];
    v22 = v8[2];
    v23 = v9;
    v20 = v11;
    v21 = v10;
    v13 = v8[5];
    v12 = v8[6];
    v14 = v8[4];
    *(v26 + 9) = *(v8 + 105);
    v25 = v13;
    v26[0] = v12;
    v24 = v14;
    memmove(a4, v8, 0x79uLL);
    nullsub_2(a4);
    sub_242C7DAC0(&v20, &v19);
  }

  else
  {
    sub_242CE2D68(&v20);
    v16 = v25;
    a4[4] = v24;
    a4[5] = v16;
    a4[6] = v26[0];
    *(a4 + 105) = *(v26 + 9);
    v17 = v21;
    *a4 = v20;
    a4[1] = v17;
    result = *&v22;
    v18 = v23;
    a4[2] = v22;
    a4[3] = v18;
  }

  return result;
}

uint64_t sub_242E60430(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = result + 80;
    while (1)
    {
      __swift_mutable_project_boxed_opaque_existential_1(a2, *(a2 + 24));
      sub_242E62E08();

      sub_242F05FA0();
      if (v5)
      {
        break;
      }

      v3 += 56;

      if (!--v2)
      {
        return result;
      }
    }
  }

  return result;
}

char *EditableTheme.layoutStyles()()
{
  v1 = *v0;
  swift_getKeyPath();
  v2 = *(v1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_242CDD828(*(v1 + 16), 0);
  v4 = sub_242CDFAF8(&v6, v3 + 4, v2, v1);

  sub_242C6548C();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    v3 = MEMORY[0x277D84F90];
  }

  v6 = v3;
  sub_242CE1B7C(&v6);

  return v6;
}

void EditableTheme.init()(void *a1@<X8>)
{
  v1 = MEMORY[0x277D84F98];
  *a1 = MEMORY[0x277D84FA0];
  a1[1] = v1;
}

uint64_t EditableTheme.addLayoutStyle(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v3;
  v8[2] = *(a1 + 32);
  v9 = *(a1 + 48);
  v4 = *v2;
  v5 = v2[1];
  *a2 = v4;
  a2[1] = v5;

  sub_242C8745C(v8, v7);
  sub_242CC0F70(v7, v8);
}

uint64_t EditableTheme.addingLayoutStyle(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v1;
  v4[2] = *(a1 + 32);
  v5 = *(a1 + 48);
  sub_242C8745C(v4, v3);
  sub_242CC0F70(v3, v4);
}

uint64_t EditableTheme.updatingLayoutStyle(_:)(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v3;
  v9[2] = *(a1 + 32);
  v10 = *(a1 + 48);
  sub_242C8745C(v9, v7);

  v5 = sub_242E6290C(v4, v9);
  sub_242CC50B0(v9);
  v8 = v5;
  sub_242C8745C(v9, v7);
  sub_242CC0F70(v7, v9);

  *v2 = v8;
  return result;
}

double EditableTheme.layoutStyle(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a1 + *(type metadata accessor for Layout() + 28));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v9 = *v2;
    v8[0] = v6;
    v8[1] = v5;

    EditableTheme.subscript.getter(v8, a2);
  }

  else
  {
    *(a2 + 48) = 0;
    result = 0.0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

unint64_t EditableTheme.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *result;
  v5 = *(result + 8);
  v6 = *v2;
  v7 = *(*v2 + 16);
  if (v7)
  {
    v19 = *(result + 8);
    v20 = v4;
    v8 = sub_242CDD828(v7, 0);
    v9 = sub_242CDFAF8(v21, v8 + 4, v7, v6);

    result = sub_242C6548C();
    if (v9 != v7)
    {
      __break(1u);
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    v5 = v19;
    v4 = v20;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v21[0] = v4;
  v21[1] = v5;
  MEMORY[0x28223BE20](result);
  v18[2] = v21;
  result = sub_242CDAD54(sub_242E62B98, v18, v8);
  if (v10)
  {

    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    return result;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_12;
  }

  if (result >= v8[2])
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v11 = &v8[7 * result];
  v12 = v11[5];
  v14 = v11[6];
  v13 = v11[7];
  v16 = v11[8];
  v15 = v11[9];
  v17 = v11[10];
  *a2 = v11[4];
  *(a2 + 8) = v12;
  *(a2 + 16) = v14;
  *(a2 + 24) = v13;
  *(a2 + 32) = v16;
  *(a2 + 40) = v15;
  *(a2 + 48) = v17;
}

uint64_t EditableTheme.palettes(for:)(uint64_t *a1)
{
  v2 = *(v1 + 8);
  if (!*(v2 + 16))
  {
    return 0;
  }

  v4 = *a1;
  v3 = a1[1];

  v5 = sub_242CE8370(v4, v3);
  if ((v6 & 1) == 0)
  {

    return 0;
  }

  v7 = *(*(v2 + 56) + 8 * v5);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = sub_242CDDB14(*(v7 + 16), 0);
    v10 = sub_242CE05C4(&v12, v9 + 32, v8, v7);

    result = sub_242C6548C();
    if (v10 == v8)
    {

      return v9;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t EditableTheme.palettes(for:)(void *a1)
{
  v2 = *(v1 + 8);
  if (!*(v2 + 16))
  {
    return 0;
  }

  v3 = sub_242CE8370(*a1, a1[1]);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(v2 + 56) + 8 * v3);
  v6 = *(v5 + 16);
  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = sub_242CDDB14(*(v5 + 16), 0);
  v8 = sub_242CE05C4(&v10, v7 + 32, v6, v5);

  result = sub_242C6548C();
  if (v8 == v6)
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t EditableTheme.palettes(for:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = (a1 + *(type metadata accessor for Layout() + 28));
  v4 = v3[1];
  if (!v4)
  {
    return 0;
  }

  if (!*(v2 + 16))
  {
    return 0;
  }

  v5 = sub_242CE8370(*v3, v4);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(*(v2 + 56) + 8 * v5);
  v8 = *(v7 + 16);
  if (!v8)
  {
    return MEMORY[0x277D84F90];
  }

  v9 = sub_242CDDB14(*(v7 + 16), 0);
  v10 = sub_242CE05C4(&v12, v9 + 32, v8, v7);

  result = sub_242C6548C();
  if (v10 == v8)
  {
    return v9;
  }

  __break(1u);
  return result;
}

void EditableTheme.defaultPalette(for:)(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = type metadata accessor for Layout();
  v8 = (a1 + *(v7 + 28));
  v9 = v8[1];
  if (!v9)
  {
    goto LABEL_14;
  }

  v10 = *v8;
  v11 = *(v6 + 16);
  if (v11)
  {
    v27 = *v8;
    v28 = v9;
    v29 = v5;
    v12 = sub_242CDD828(v11, 0);
    v13 = sub_242CDFAF8(v30, v12 + 4, v11, v6);

    v7 = sub_242C6548C();
    if (v13 != v11)
    {
      __break(1u);
      goto LABEL_17;
    }

    v9 = v28;
    v5 = v29;
    v10 = v27;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  *&v30[0] = v10;
  *(&v30[0] + 1) = v9;
  MEMORY[0x28223BE20](v7);
  v26[2] = v30;
  v14 = sub_242CDAD54(sub_242E62E5C, v26, v12);
  if ((v15 & 1) == 0)
  {
    if ((v14 & 0x8000000000000000) == 0)
    {
      if (v14 < v12[2])
      {
        v16 = v10;
        v17 = &v12[7 * v14];
        v19 = v17[7];
        v18 = v17[8];

        if (*(v5 + 16))
        {
          v20 = sub_242CE8370(v16, v9);
          if (v21)
          {
            v22 = *(*(v5 + 56) + 8 * v20);

            sub_242E60364(v19, v18, v22, a2);

            swift_bridgeObjectRelease_n();

            return;
          }
        }

        goto LABEL_14;
      }

LABEL_18:
      __break(1u);
      return;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_14:
  sub_242CE2D68(v30);
  v23 = v30[5];
  a2[4] = v30[4];
  a2[5] = v23;
  a2[6] = v31[0];
  *(a2 + 105) = *(v31 + 9);
  v24 = v30[1];
  *a2 = v30[0];
  a2[1] = v24;
  v25 = v30[3];
  a2[2] = v30[2];
  a2[3] = v25;
}

uint64_t static EditableTheme.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_242E610AC(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_242C75FB8(v2, v3);
}

uint64_t sub_242E610AC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v55 = a2 + 56;
  v47 = result + 56;
  v48 = result;
  v46 = v7;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v8 = __clz(__rbit64(v6));
    v49 = (v6 - 1) & v6;
LABEL_13:
    v11 = (*(result + 48) + 56 * (v8 | (v2 << 6)));
    v13 = *v11;
    v12 = v11[1];
    v14 = v11[2];
    v53 = v11[3];
    v15 = v11[4];
    v50 = v2;
    v51 = v11[5];
    v16 = v11[6];
    sub_242F06390();

    v54 = v15;

    v52 = v16;

    v57 = v13;
    v58 = v12;
    sub_242F04DD0();
    v17 = 1 << *(v14 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v14 + 64);
    v20 = (v17 + 63) >> 6;

    v21 = 0;
    v22 = 0;
    if (!v19)
    {
LABEL_18:
      if (v20 <= v22 + 1)
      {
        v24 = v22 + 1;
      }

      else
      {
        v24 = v20;
      }

      v25 = v24 - 1;
      while (1)
      {
        v23 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v23 >= v20)
        {
          sub_242C7F83C(__src);
          memcpy(v65, __src, sizeof(v65));
          v19 = 0;
          v30 = v64;
          goto LABEL_26;
        }

        v19 = *(v14 + 64 + 8 * v23);
        ++v22;
        if (v19)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_55:

      return 0;
    }

    while (1)
    {
      v23 = v22;
LABEL_25:
      v26 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v27 = v26 | (v23 << 6);
      v28 = (*(v14 + 48) + 944 * v27);
      memcpy(__dst, v28, sizeof(__dst));
      v29 = *(*(v14 + 56) + 8 * v27);
      memmove(__src, v28, 0x3B0uLL);
      v64 = v29;
      nullsub_2(__src);
      sub_242C7F7E0(__dst, v61);
      memcpy(v65, __src, sizeof(v65));
      v30 = v64;

      v25 = v23;
LABEL_26:
      memcpy(__src, v65, sizeof(__src));
      v64 = v30;
      if (j__get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(__src) == 1)
      {
        break;
      }

      memcpy(v61, v65, sizeof(v61));
      v59[2] = v68;
      v59[3] = v69;
      v60 = v70;
      v59[0] = v66;
      v59[1] = v67;
      ColorSet.hash(into:)(v59);
      memcpy(__dst, v61, sizeof(__dst));
      sub_242C7C7BC(__dst);
      sub_242C7A5F8(v59, v30);

      v21 ^= sub_242F063E0();
      v22 = v25;
      if (!v19)
      {
        goto LABEL_18;
      }
    }

    MEMORY[0x245D279A0](v21);
    sub_242F04DD0();
    sub_242F04DD0();
    v31 = sub_242F063E0();
    v32 = a2;
    v33 = -1 << *(a2 + 32);
    v34 = v31 & ~v33;
    if (((*(v55 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
    {
      goto LABEL_55;
    }

    v35 = ~v33;
    while (1)
    {
      v36 = (*(v32 + 48) + 56 * v34);
      v38 = v36[2];
      v37 = v36[3];
      v40 = v36[4];
      v39 = v36[5];
      v41 = v36[6];
      v42 = *v36 == v57 && v36[1] == v58;
      if (!v42 && (sub_242F06110() & 1) == 0)
      {
        goto LABEL_33;
      }

      if ((sub_242C746FC(v38) & 1) == 0 || (v37 == v53 ? (v43 = v40 == v54) : (v43 = 0), !v43 && (sub_242F06110() & 1) == 0))
      {

        goto LABEL_33;
      }

      if (v39 == v51 && v41 == v52)
      {
        break;
      }

      v45 = sub_242F06110();

      if (v45)
      {

        goto LABEL_52;
      }

LABEL_33:
      v34 = (v34 + 1) & v35;
      v32 = a2;
      if (((*(v55 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
      {
        goto LABEL_55;
      }
    }

LABEL_52:

    v3 = v47;
    result = v48;
    v6 = v49;
    v2 = v50;
    v7 = v46;
  }

  while (v49);
LABEL_8:
  v9 = v2;
  while (1)
  {
    v2 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v2 >= v7)
    {
      return 1;
    }

    v10 = *(v3 + 8 * v2);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v49 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_242E61600(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_242E610AC(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_242C75FB8(v2, v3);
}

void EditableTheme.defaultPalette(for:)(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a2;
  v4 = *a1;
  v5 = a1[1];
  v34 = *v2;
  v6 = *(v34 + 16);
  if (v6)
  {
    v31 = v5;
    v32 = v4;
    v33 = a2;
    v7 = sub_242CDD828(v6, 0);
    v8 = sub_242CDFAF8(&v38, v7 + 4, v6, v34);

    a1 = sub_242C6548C();
    if (v8 != v6)
    {
      __break(1u);
      goto LABEL_19;
    }

    v4 = v32;
    v3 = v33;
    v5 = v31;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v35 = v4;
  v36 = v5;
  MEMORY[0x28223BE20](a1);
  v30 = &v35;
  v9 = sub_242CDAD54(sub_242E62E5C, v29, v7);
  if ((v10 & 1) == 0)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      if (v9 < v7[2])
      {
        v13 = &v7[7 * v9];
        v14 = v13[8];
        v33 = v13[7];

        v38 = v34;
        v35 = v4;
        v36 = v5;
        v15 = EditableTheme.palettes(for:)(&v35);
        if (!v15)
        {
LABEL_12:

          sub_242CE2D68(&v38);
          v19 = v43;
          v3[4] = v42;
          v3[5] = v19;
          v3[6] = v44[0];
          v12 = *(v44 + 9);
          goto LABEL_13;
        }

        v16 = v15;
        v37[0] = v33;
        v37[1] = v14;
        MEMORY[0x28223BE20](v15);
        v30 = v37;
        v17 = sub_242CDAAFC(sub_242C87674, v29, v16);
        if (v18)
        {

          goto LABEL_12;
        }

        if ((v17 & 0x8000000000000000) == 0)
        {
          if (v17 < *(v16 + 16))
          {
            v22 = (v16 + (v17 << 7));
            v23 = v22[2];
            v24 = v22[3];
            v25 = v22[5];
            v40 = v22[4];
            v41 = v25;
            v38 = v23;
            v39 = v24;
            v26 = v22[6];
            v27 = v22[7];
            v28 = v22[8];
            *(v44 + 9) = *(v22 + 137);
            v43 = v27;
            v44[0] = v28;
            v42 = v26;
            memmove(v3, v22 + 2, 0x79uLL);
            sub_242C7DAC0(&v38, &v35);

            nullsub_2(v3);

            return;
          }

          goto LABEL_22;
        }

LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        return;
      }

LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_242CE2D68(&v38);
  v11 = v43;
  v3[4] = v42;
  v3[5] = v11;
  v3[6] = v44[0];
  v12 = *(v44 + 9);
LABEL_13:
  *(v3 + 105) = v12;
  v20 = v39;
  *v3 = v38;
  v3[1] = v20;
  v21 = v41;
  v3[2] = v40;
  v3[3] = v21;
}

unint64_t EditableTheme.defaultWallpaperID(for:)@<X0>(unint64_t result@<X0>, void *a2@<X8>)
{
  v5 = *result;
  v4 = *(result + 8);
  v6 = *v2;
  v7 = *(*v2 + 16);
  if (v7)
  {
    v15 = *(result + 8);
    v16 = a2;
    v8 = sub_242CDD828(v7, 0);
    v9 = sub_242CDFAF8(v17, v8 + 4, v7, v6);

    result = sub_242C6548C();
    if (v9 != v7)
    {
      __break(1u);
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    v4 = v15;
    a2 = v16;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v17[0] = v5;
  v17[1] = v4;
  MEMORY[0x28223BE20](result);
  v14[2] = v17;
  result = sub_242CDAD54(sub_242E62E5C, v14, v8);
  if (v10)
  {

    *a2 = 0;
    a2[1] = 0;
    return result;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_12;
  }

  if (result >= v8[2])
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v11 = &v8[7 * result];
  v12 = v11[9];
  v13 = v11[10];

  *a2 = v12;
  a2[1] = v13;
  return result;
}