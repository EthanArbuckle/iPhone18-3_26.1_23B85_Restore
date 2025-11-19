uint64_t static Color.ProgressBars.monochrome.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF188 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *&qword_27ECF4940;
  v8[2] = xmmword_27ECF4930;
  v8[3] = *&qword_27ECF4940;
  v9 = qword_27ECF4950;
  v3 = qword_27ECF4950;
  v4 = *&qword_27ECF4920;
  v8[0] = xmmword_27ECF4910;
  v5 = xmmword_27ECF4910;
  v8[1] = *&qword_27ECF4920;
  *(a1 + 32) = xmmword_27ECF4930;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_242C8D144(v8, &v7);
}

uint64_t static Color.ProgressBars.monochrome.setter(uint64_t a1)
{
  if (qword_27ECEF188 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[2] = xmmword_27ECF4930;
  v5[3] = *&qword_27ECF4940;
  v6 = qword_27ECF4950;
  v5[0] = xmmword_27ECF4910;
  v5[1] = *&qword_27ECF4920;
  v2 = *(a1 + 48);
  xmmword_27ECF4930 = *(a1 + 32);
  *&qword_27ECF4940 = v2;
  qword_27ECF4950 = *(a1 + 64);
  v3 = *(a1 + 16);
  xmmword_27ECF4910 = *a1;
  *&qword_27ECF4920 = v3;
  return sub_242C8D24C(v5);
}

uint64_t (*static Color.ProgressBars.monochrome.modify())()
{
  if (qword_27ECEF188 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242D7F224()
{
  v0 = sub_242F04700();
  MEMORY[0x28223BE20](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0]);
  result = sub_242F047A0();
  qword_27ECF4958 = result;
  return result;
}

uint64_t static Color.Modular.monochrome.getter@<X0>(void *a1@<X8>)
{
  if (qword_27ECEF190 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27ECF4958;
}

uint64_t static Color.Modular.monochrome.setter(uint64_t *a1)
{
  v1 = *a1;
  if (qword_27ECEF190 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27ECF4958 = v1;
}

uint64_t (*static Color.Modular.monochrome.modify())()
{
  if (qword_27ECEF190 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242D7F490()
{
  v0 = sub_242F04700();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *MEMORY[0x277CE0EE0];
  v5 = *(v1 + 104);
  v5(v3, v4, v0);
  v13 = sub_242F047A0();
  v5(v3, v4, v0);
  v6 = sub_242F047A0();
  v5(v3, v4, v0);
  v7 = sub_242F047A0();
  v5(v3, v4, v0);
  v8 = sub_242F047A0();
  v5(v3, v4, v0);
  v9 = sub_242F047A0();
  v5(v3, v4, v0);
  v10 = sub_242F047A0();
  v5(v3, v4, v0);
  result = sub_242F047A0();
  *&xmmword_27ECF4960 = v13;
  *(&xmmword_27ECF4960 + 1) = v6;
  qword_27ECF4970 = v7;
  unk_27ECF4978 = v8;
  *&xmmword_27ECF4980 = v9;
  *(&xmmword_27ECF4980 + 1) = v10;
  qword_27ECF4990 = result;
  return result;
}

uint64_t static Color.ACC.monochrome.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF198 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(&xmmword_27ECF4960 + 1);
  v3 = qword_27ECF4970;
  v4 = unk_27ECF4978;
  v5 = xmmword_27ECF4980;
  v6 = qword_27ECF4990;
  *a1 = xmmword_27ECF4960;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
}

uint64_t static Color.ACC.monochrome.setter(uint64_t a1)
{
  v4 = *(a1 + 16);
  v5 = *a1;
  v3 = *(a1 + 32);
  v1 = *(a1 + 48);
  if (qword_27ECEF198 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  xmmword_27ECF4960 = v5;
  *&qword_27ECF4970 = v4;
  xmmword_27ECF4980 = v3;
  qword_27ECF4990 = v1;
}

uint64_t (*static Color.ACC.monochrome.modify())()
{
  if (qword_27ECEF198 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242D7F978()
{
  if (qword_27ECEF188 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v36 = xmmword_27ECF4930;
  v37 = *&qword_27ECF4940;
  v38 = qword_27ECF4950;
  v34 = xmmword_27ECF4910;
  v35 = *&qword_27ECF4920;
  sub_242C8D144(&v34, &v39);
  if (qword_27ECEF180 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v41 = xmmword_27ECF48E8;
  v42 = *&qword_27ECF48F8;
  v43 = qword_27ECF4908;
  v39 = xmmword_27ECF48C8;
  v40 = *&qword_27ECF48D8;
  sub_242C8CBA8(&v39, &v30);
  if (qword_27ECEF190 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27ECEF198;
  v28 = qword_27ECF4958;

  if (v0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = *(&xmmword_27ECF4960 + 1);
  v2 = qword_27ECF4970;
  v3 = unk_27ECF4978;
  v4 = xmmword_27ECF4980;
  v5 = qword_27ECF4990;
  v6 = qword_27ECEF0B0;
  v27 = xmmword_27ECF4960;

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
  xmmword_27ECF49B8 = v36;
  unk_27ECF49C8 = v37;
  xmmword_27ECF4998 = v34;
  unk_27ECF49A8 = v35;
  unk_27ECF49E0 = v39;
  unk_27ECF4A10 = v42;
  qword_27ECF49D8 = v38;
  unk_27ECF4A00 = v41;
  unk_27ECF49F0 = v40;
  qword_27ECF4A20 = v43;
  unk_27ECF4A28 = v28;
  qword_27ECF4A30 = v23;
  unk_27ECF4A38 = v22;
  qword_27ECF4A40 = v21;
  unk_27ECF4A48 = v27;
  qword_27ECF4A50 = v26;
  qword_27ECF4A58 = v25;
  unk_27ECF4A60 = v3;
  xmmword_27ECF4A68 = v4;
  qword_27ECF4A78 = v24;
  unk_27ECF4A80 = v20;
  qword_27ECF4A88 = v19;
  qword_27ECF4A90 = v11;
  unk_27ECF4A98 = v12;
  qword_27ECF4AA0 = v13;
  unk_27ECF4AA8 = v14;
  qword_27ECF4AB0 = v15;
  unk_27ECF4AB8 = v16;
  xmmword_27ECF4AE0 = v32;
  unk_27ECF4AF0 = v33;
  xmmword_27ECF4AC0 = v30;
  *algn_27ECF4AD0 = v31;
  xmmword_27ECF4B00 = xmmword_27ECF3708;
  qword_27ECF4B10 = qword_27ECF3718;
  unk_27ECF4B18 = unk_27ECF3720;
  xmmword_27ECF4B20 = xmmword_27ECF3728;
  qword_27ECF4B30 = qword_27ECF3738;
}

uint64_t static Color.ColorValues.monochrome.getter@<X0>(void *a1@<X8>)
{
  if (qword_27ECEF1A0 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &xmmword_27ECF4998, sizeof(__dst));
  memcpy(a1, &xmmword_27ECF4998, 0x1A0uLL);
  return sub_242C8DFF4(__dst, &v3);
}

unint64_t sub_242D7FEF0()
{
  result = sub_242CE6EE4(MEMORY[0x277D84F90]);
  qword_27ECF4B38 = result;
  return result;
}

uint64_t (*static Theme.LayoutStyle.overridesDigiBandLightMonochrome.modify())()
{
  if (qword_27ECEF1A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

unint64_t sub_242D7FFE8()
{
  result = sub_242CE6EE4(MEMORY[0x277D84F90]);
  qword_27ECF4B40 = result;
  return result;
}

uint64_t (*static Theme.LayoutStyle.overridesDigiRingLightMonochrome.modify())()
{
  if (qword_27ECEF1B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

unint64_t sub_242D800E0()
{
  result = sub_242CE6EE4(MEMORY[0x277D84F90]);
  qword_27ECF4B48 = result;
  return result;
}

uint64_t (*static Theme.LayoutStyle.overridesModularLightMonochrome.modify())()
{
  if (qword_27ECEF1B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

unint64_t sub_242D802CC()
{
  v1 = *v0;
  if (v1 == 2)
  {
    v2 = 0xD000000000000011;
  }

  else
  {
    v2 = 0xD000000000000012;
  }

  v3 = 0xD00000000000001BLL;
  if (!*v0)
  {
    v3 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_242D8033C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242D80C84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242D80364(uint64_t a1)
{
  v2 = sub_242D80AB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242D803A0(uint64_t a1)
{
  v2 = sub_242D80AB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EnergyEfficiencyDataIdentifiers.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4B50);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v14 = v1[2];
  v15 = v9;
  HIDWORD(v13) = v1[3];
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D80AB0();
  sub_242F064C0();
  v23 = v8;
  v22 = 0;
  sub_242C8AC28();
  sub_242F05F20();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v10 = BYTE4(v13);
  v11 = v14;
  v21 = v15;
  v20 = 1;
  sub_242F05F20();
  v19 = v11;
  v18 = 2;
  sub_242F05F20();
  v17 = v10;
  v16 = 3;
  sub_242F05F20();
  return (*(v5 + 8))(v7, v4);
}

uint64_t EnergyEfficiencyDataIdentifiers.hash(into:)()
{
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();
}

uint64_t EnergyEfficiencyDataIdentifiers.hashValue.getter()
{
  sub_242F06390();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t EnergyEfficiencyDataIdentifiers.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4B60);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D80AB0();
  sub_242F06480();
  if (!v2)
  {
    v23 = 0;
    sub_242C8AC7C();
    sub_242F05E00();
    v9 = v24;
    v21 = 1;
    sub_242F05E00();
    v16 = v9;
    v10 = v22;
    v19 = 2;
    sub_242F05E00();
    v15 = v10;
    LOBYTE(v10) = v20;
    v17 = 3;
    sub_242F05E00();
    (*(v6 + 8))(v8, v5);
    v12 = v18;
    v13 = v15;
    *a2 = v16;
    a2[1] = v13;
    a2[2] = v10;
    a2[3] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

unint64_t sub_242D80AB0()
{
  result = qword_27ECF4B58;
  if (!qword_27ECF4B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4B58);
  }

  return result;
}

unint64_t sub_242D80B08()
{
  result = qword_27ECF4B68;
  if (!qword_27ECF4B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4B68);
  }

  return result;
}

unint64_t sub_242D80B80()
{
  result = qword_27ECF4B70;
  if (!qword_27ECF4B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4B70);
  }

  return result;
}

unint64_t sub_242D80BD8()
{
  result = qword_27ECF4B78;
  if (!qword_27ECF4B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4B78);
  }

  return result;
}

unint64_t sub_242D80C30()
{
  result = qword_27ECF4B80;
  if (!qword_27ECF4B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4B80);
  }

  return result;
}

uint64_t sub_242D80C84(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x8000000242F5AD00 == a2;
  if (v3 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000242F5AD20 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000242F5AD40 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000242F59750 == a2)
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

void AssetResource.restore(from:)(void *a1)
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

    v1[2] = v11;
  }
}

uint64_t SymbolAssetResource.nameAliasResource.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  v4 = v3;
}

__n128 SymbolAssetResource.nameAliasResource.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = v1[1].n128_u64[0];

  result = v5;
  *v1 = v5;
  v1[1].n128_u64[0] = v2;
  return result;
}

uint64_t SymbolAssetResource.unicodeResource.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  *a1 = v1[3];
  a1[1] = v2;
  a1[2] = v3;
  v4 = v3;
}

__n128 SymbolAssetResource.unicodeResource.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = *(v1 + 40);

  result = v5;
  *(v1 + 24) = v5;
  *(v1 + 40) = v2;
  return result;
}

__n128 SymbolAssetResource.init(nameAliasResource:unicodeResource:)@<Q0>(__n128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  result = *a1;
  v4 = a1[1].n128_u64[0];
  v5 = *a2;
  v6 = *(a2 + 2);
  *a3 = *a1;
  *(a3 + 16) = v4;
  *(a3 + 24) = v5;
  *(a3 + 40) = v6;
  return result;
}

uint64_t sub_242D8103C()
{
  if (*v0)
  {
    return 0x5265646F63696E75;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_242D81088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000242F5AD80 == a2 || (sub_242F06110() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x5265646F63696E75 && a2 == 0xEF656372756F7365)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_242F06110();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_242D81178(uint64_t a1)
{
  v2 = sub_242D829E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242D811B4(uint64_t a1)
{
  v2 = sub_242D829E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SymbolAssetResource.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4B88);
  v21 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - v4;
  v6 = *v1;
  v7 = v1[1];
  v9 = v1[2];
  v8 = v1[3];
  v10 = v1[5];
  v19 = v1[4];
  v17 = v8;
  v18 = v10;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D829E8();

  v11 = v9;
  sub_242F064C0();
  v22 = v6;
  v23 = v7;
  v24 = v9;
  v25 = 0;
  sub_242D82A3C();
  v12 = v20;
  sub_242F05F20();
  v13 = v24;

  if (!v12)
  {
    v22 = v17;
    v23 = v19;
    v24 = v18;
    v25 = 1;
    v14 = v18;

    sub_242F05F20();
    v15 = v24;
  }

  return (*(v21 + 8))(v5, v3);
}

void SymbolAssetResource.hash(into:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  sub_242F04DD0();
  sub_242F063B0();
  if (v1)
  {
    v3 = v1;
    sub_242F05820();
  }

  sub_242F04DD0();
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

uint64_t SymbolAssetResource.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  sub_242F06390();
  sub_242F04DD0();
  sub_242F063B0();
  if (v1)
  {
    v3 = v1;
    sub_242F05820();
  }

  sub_242F04DD0();
  sub_242F063B0();
  if (v2)
  {
    v4 = v2;
    sub_242F05820();
  }

  return sub_242F063E0();
}

void SymbolAssetResource.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4BA0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D829E8();
  sub_242F06480();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  else
  {
    v22 = 0;
    sub_242D82A90();
    sub_242F05E00();
    v9 = v20;
    v17 = v19;
    v18 = v21;
    v22 = 1;
    sub_242F05E00();
    (*(v6 + 8))(v8, v5);
    v10 = v19;
    v11 = v20;
    v12 = v21;
    v13 = v18;
    *a2 = v17;
    a2[1] = v9;
    a2[2] = v13;
    a2[3] = v10;
    a2[4] = v11;
    a2[5] = v12;
    v14 = v12;

    v15 = v13;

    __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }
}

uint64_t sub_242D81824()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  sub_242F06390();
  sub_242F04DD0();
  sub_242F063B0();
  if (v1)
  {
    v3 = v1;
    sub_242F05820();
  }

  sub_242F04DD0();
  sub_242F063B0();
  if (v2)
  {
    v4 = v2;
    sub_242F05820();
  }

  return sub_242F063E0();
}

uint64_t AssetResource.filename.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void *AssetResource.file.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

CarPlayAssetUI::AssetResource __swiftcall AssetResource.init(filename:file:)(CarPlayAssetUI::AssetResource filename, NSFileWrapper file)
{
  *v2 = filename.filename;
  *(v2 + 16) = file;
  filename.file.value = file;
  return filename;
}

void __swiftcall AssetResource.init(resource:bundle:)(CarPlayAssetUI::AssetResource_optional *__return_ptr retstr, Swift::String resource, NSBundle bundle)
{
  v5 = sub_242F03690();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v24[-v11];
  MEMORY[0x28223BE20](v10);
  v14 = &v24[-v13];
  v15 = sub_242F04F00();

  v16 = [(objc_class *)bundle.super.isa URLForResource:v15 withExtension:0];

  if (v16)
  {
    sub_242F03660();

    (*(v6 + 32))(v14, v12, v5);
    (*(v6 + 16))(v9, v14, v5);
    v17 = objc_allocWithZone(MEMORY[0x277CCAA20]);
    v18 = sub_242D6EC18(v9, 0);
    if (v18)
    {
      v19 = v18;
      v20 = sub_242F03620();
      v22 = v21;
      v23 = sub_242F04F00();
      [v19 setPreferredFilename_];

      (*(v6 + 8))(v14, v5);
      retstr->value.filename._countAndFlagsBits = v20;
      retstr->value.filename._object = v22;
      retstr->value.file.value.super.isa = v19;
      return;
    }

    (*(v6 + 8))(v14, v5);
  }

  retstr->value.filename._countAndFlagsBits = 0;
  retstr->value.filename._object = 0;
  retstr->value.file.value.super.isa = 0;
}

uint64_t sub_242D81C4C()
{
  sub_242F06390();
  sub_242F04DD0();
  return sub_242F063E0();
}

uint64_t sub_242D81CB8()
{
  sub_242F06390();
  sub_242F04DD0();
  return sub_242F063E0();
}

uint64_t sub_242D81D08@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_242F05CD0();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_242D81D90@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_242F05CD0();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_242D81DE8(uint64_t a1)
{
  v2 = sub_242D82AE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242D81E24(uint64_t a1)
{
  v2 = sub_242D82AE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AssetResource.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AssetResource.preferredFilename.getter()
{
  v1 = *(v0 + 16);
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

NSFileWrapper_optional __swiftcall AssetResource.generateAsset(destination:)(CarPlayAssetUI::ArcPackageExporter::Destination destination)
{
  v2 = *(v1 + 16);
  v3 = v2;
  v5 = v2;
  result.value.super.isa = v5;
  result.is_nil = v4;
  return result;
}

uint64_t AssetResource.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4BB0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D82AE4();
  sub_242F064C0();
  sub_242F05EC0();
  return (*(v3 + 8))(v5, v2);
}

void AssetResource.hash(into:)()
{
  v1 = *(v0 + 16);
  sub_242F04DD0();
  if (v1)
  {
    sub_242F063B0();
    v2 = v1;
    sub_242F05820();
  }

  else
  {
    sub_242F063B0();
  }
}

uint64_t AssetResource.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_242F06390();
  sub_242F04DD0();
  sub_242F063B0();
  if (v1)
  {
    v2 = v1;
    sub_242F05820();
  }

  return sub_242F063E0();
}

uint64_t AssetResource.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4BC0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D82AE4();
  sub_242F06480();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  v9 = sub_242F05DA0();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  *a2 = v9;
  a2[1] = v11;
  a2[2] = 0;

  __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242D8236C()
{
  v1 = *(v0 + 16);
  sub_242F06390();
  sub_242F04DD0();
  sub_242F063B0();
  if (v1)
  {
    v2 = v1;
    sub_242F05820();
  }

  return sub_242F063E0();
}

void sub_242D823F4()
{
  v1 = *(v0 + 16);
  sub_242F04DD0();
  if (v1)
  {
    sub_242F063B0();
    v2 = v1;
    sub_242F05820();
  }

  else
  {
    sub_242F063B0();
  }
}

uint64_t sub_242D8248C()
{
  v1 = *(v0 + 16);
  sub_242F06390();
  sub_242F04DD0();
  sub_242F063B0();
  if (v1)
  {
    v2 = v1;
    sub_242F05820();
  }

  return sub_242F063E0();
}

uint64_t sub_242D82510()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_242D8254C()
{
  v1 = *(v0 + 16);
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

void *sub_242D825FC()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void sub_242D82624(void *a1)
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

    v1[2] = v11;
  }
}

uint64_t sub_242D826F4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4BB0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D82AE4();
  sub_242F064C0();
  sub_242F05EC0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t _s14CarPlayAssetUI0C8ResourceV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = sub_242F06110(), result = 0, (v5 & 1) != 0))
  {
    if (v2)
    {
      if (v3)
      {
        sub_242C6CBCC();
        v7 = v3;
        v8 = v2;
        v9 = sub_242F05810();

        if (v9)
        {
          return 1;
        }
      }
    }

    else if (!v3)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t _s14CarPlayAssetUI06SymbolC8ResourceV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v11 = a2[4];
  v12 = a2[5];
  v26 = *a1;
  v27 = v2;
  v28 = v4;
  v23 = v7;
  v24 = v8;
  v25 = v9;
  v13 = v9;

  v14 = v4;

  LOBYTE(v2) = _s14CarPlayAssetUI0C8ResourceV2eeoiySbAC_ACtFZ_0(&v26, &v23);
  v15 = v25;

  v16 = v28;

  if (v2)
  {
    v26 = v3;
    v27 = v5;
    v28 = v6;
    v23 = v10;
    v24 = v11;
    v25 = v12;
    v17 = v12;

    v18 = v6;

    v19 = _s14CarPlayAssetUI0C8ResourceV2eeoiySbAC_ACtFZ_0(&v26, &v23);
    v20 = v25;

    v21 = v28;
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

unint64_t sub_242D829E8()
{
  result = qword_27ECF4B90;
  if (!qword_27ECF4B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4B90);
  }

  return result;
}

unint64_t sub_242D82A3C()
{
  result = qword_27ECF4B98;
  if (!qword_27ECF4B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4B98);
  }

  return result;
}

unint64_t sub_242D82A90()
{
  result = qword_27ECF4BA8;
  if (!qword_27ECF4BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4BA8);
  }

  return result;
}

unint64_t sub_242D82AE4()
{
  result = qword_27ECF4BB8;
  if (!qword_27ECF4BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4BB8);
  }

  return result;
}

unint64_t sub_242D82B3C()
{
  result = qword_27ECF4BC8;
  if (!qword_27ECF4BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4BC8);
  }

  return result;
}

unint64_t sub_242D82B94()
{
  result = qword_27ECF4BD0;
  if (!qword_27ECF4BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4BD0);
  }

  return result;
}

unint64_t sub_242D82C2C()
{
  result = qword_27ECF4BD8;
  if (!qword_27ECF4BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4BD8);
  }

  return result;
}

unint64_t sub_242D82C84()
{
  result = qword_27ECF4BE0;
  if (!qword_27ECF4BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4BE0);
  }

  return result;
}

unint64_t sub_242D82CDC()
{
  result = qword_27ECF4BE8;
  if (!qword_27ECF4BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4BE8);
  }

  return result;
}

unint64_t sub_242D82D34()
{
  result = qword_27ECF4BF0;
  if (!qword_27ECF4BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4BF0);
  }

  return result;
}

unint64_t sub_242D82D8C()
{
  result = qword_27ECF4BF8;
  if (!qword_27ECF4BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4BF8);
  }

  return result;
}

unint64_t sub_242D82DE4()
{
  result = qword_27ECF4C00;
  if (!qword_27ECF4C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4C00);
  }

  return result;
}

CarPlayAssetUI::DriverAssistanceLabelState_optional __swiftcall DriverAssistanceLabelState.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x2010003u >> (8 * rawValue);
  if (rawValue >= 4)
  {
    LOBYTE(v2) = 3;
  }

  *v1 = v2;
  return rawValue;
}

_BYTE *DriverAssistanceDataIdentifiers.init(cruiseControlSpeedDataIdentifier:cruiseControlStateDataIdentifier:speedDataIdentifier:speedUnitDataIdentifier:speedMaxDataIdentifier:speedLimitedDataIdentifier:uiSceneStateDataIdentifier:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, char *a5@<X4>, char *a6@<X5>, char *a7@<X6>, _BYTE *a8@<X8>)
{
  v8 = *a2;
  v9 = *a3;
  v10 = *a4;
  v11 = *a5;
  v12 = *a6;
  v13 = *a7;
  *a8 = *result;
  a8[1] = v8;
  a8[2] = v9;
  a8[3] = v10;
  a8[4] = v11;
  a8[5] = v12;
  a8[6] = v13;
  return result;
}

unint64_t sub_242D8303C()
{
  v1 = *v0;
  v2 = 0xD000000000000017;
  if (v1 != 3)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0 > 4u)
  {
    v2 = 0xD00000000000001ALL;
  }

  v3 = 0xD000000000000013;
  if (v1 == 1)
  {
    v3 = 0xD000000000000020;
  }

  if (!*v0)
  {
    v3 = 0xD000000000000020;
  }

  if (*v0 <= 2u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_242D830F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242D841C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242D83120(uint64_t a1)
{
  v2 = sub_242D83E80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242D8315C(uint64_t a1)
{
  v2 = sub_242D83E80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DriverAssistanceDataIdentifiers.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4C08);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - v6;
  v8 = *v1;
  v9 = v1[1];
  v22 = v1[2];
  v23 = v9;
  v10 = v1[3];
  v20 = v1[4];
  v21 = v10;
  v11 = v1[5];
  v18 = v1[6];
  v19 = v11;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D83E80();
  v12 = v4;
  sub_242F064C0();
  v37 = v8;
  v36 = 0;
  sub_242C8AC28();
  sub_242F05F20();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v13 = v21;
  v14 = v22;
  v15 = v19;
  v16 = v20;
  v35 = v23;
  v34 = 1;
  sub_242F05F20();
  v33 = v14;
  v32 = 2;
  sub_242F05F20();
  v31 = v13;
  v30 = 3;
  sub_242F05F20();
  v29 = v16;
  v28 = 4;
  sub_242F05F20();
  v27 = v15;
  v26 = 5;
  sub_242F05F20();
  v25 = v18;
  v24 = 6;
  sub_242F05F20();
  return (*(v5 + 8))(v7, v12);
}

uint64_t DriverAssistanceDataIdentifiers.hash(into:)()
{
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();
}

uint64_t DriverAssistanceDataIdentifiers.hashValue.getter()
{
  sub_242F06390();
  DriverAssistanceDataIdentifiers.hash(into:)();
  return sub_242F063E0();
}

uint64_t DriverAssistanceDataIdentifiers.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4C18);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D83E80();
  sub_242F06480();
  if (!v2)
  {
    v36 = 0;
    sub_242C8AC7C();
    sub_242F05E00();
    v9 = v37;
    v34 = 1;
    sub_242F05E00();
    v23 = v9;
    v10 = v35;
    v32 = 2;
    sub_242F05E00();
    v22 = v10;
    v11 = v33;
    v30 = 3;
    sub_242F05E00();
    v21 = v11;
    v12 = v31;
    v28 = 4;
    sub_242F05E00();
    v20 = v12;
    v13 = v29;
    v26 = 5;
    sub_242F05E00();
    v15 = v27;
    v25 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4C20);
    sub_242D83ED4();
    sub_242F05D90();
    (*(v6 + 8))(v8, v5);
    v16 = v24;
    if (v24 == 86)
    {
      v16 = 80;
    }

    v17 = v22;
    *a2 = v23;
    a2[1] = v17;
    v18 = v20;
    a2[2] = v21;
    a2[3] = v18;
    a2[4] = v13;
    a2[5] = v15;
    a2[6] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242D839EC()
{
  sub_242F06390();
  DriverAssistanceDataIdentifiers.hash(into:)();
  return sub_242F063E0();
}

uint64_t sub_242D83A4C()
{
  sub_242F06390();
  DriverAssistanceDataIdentifiers.hash(into:)();
  return sub_242F063E0();
}

uint64_t _s14CarPlayAssetUI31DriverAssistanceDataIdentifiersV2eeoiySbAC_ACtFZ_0()
{
  v0 = InstrumentDataIdentifier.rawValue.getter();
  v2 = v1;
  if (v0 == InstrumentDataIdentifier.rawValue.getter() && v2 == v3)
  {
  }

  else
  {
    v4 = sub_242F06110();

    if ((v4 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  v5 = InstrumentDataIdentifier.rawValue.getter();
  v7 = v6;
  if (v5 == InstrumentDataIdentifier.rawValue.getter() && v7 == v8)
  {
  }

  else
  {
    v9 = sub_242F06110();

    if ((v9 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  v10 = InstrumentDataIdentifier.rawValue.getter();
  v12 = v11;
  if (v10 == InstrumentDataIdentifier.rawValue.getter() && v12 == v13)
  {
  }

  else
  {
    v14 = sub_242F06110();

    if ((v14 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  v15 = InstrumentDataIdentifier.rawValue.getter();
  v17 = v16;
  if (v15 == InstrumentDataIdentifier.rawValue.getter() && v17 == v18)
  {
  }

  else
  {
    v19 = sub_242F06110();

    if ((v19 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  v20 = InstrumentDataIdentifier.rawValue.getter();
  v22 = v21;
  if (v20 == InstrumentDataIdentifier.rawValue.getter() && v22 == v23)
  {
  }

  else
  {
    v24 = sub_242F06110();

    if ((v24 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  v25 = InstrumentDataIdentifier.rawValue.getter();
  v27 = v26;
  if (v25 == InstrumentDataIdentifier.rawValue.getter() && v27 == v28)
  {

    goto LABEL_25;
  }

  v29 = sub_242F06110();

  if ((v29 & 1) == 0)
  {
LABEL_28:
    v34 = 0;
    return v34 & 1;
  }

LABEL_25:
  v30 = InstrumentDataIdentifier.rawValue.getter();
  v32 = v31;
  if (v30 == InstrumentDataIdentifier.rawValue.getter() && v32 == v33)
  {
    v34 = 1;
  }

  else
  {
    v34 = sub_242F06110();
  }

  return v34 & 1;
}

unint64_t sub_242D83E80()
{
  result = qword_27ECF4C10;
  if (!qword_27ECF4C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4C10);
  }

  return result;
}

unint64_t sub_242D83ED4()
{
  result = qword_27ECF4C28;
  if (!qword_27ECF4C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF4C20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4C28);
  }

  return result;
}

unint64_t sub_242D83F3C()
{
  result = qword_27ECF4C30;
  if (!qword_27ECF4C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4C30);
  }

  return result;
}

unint64_t sub_242D83F94()
{
  result = qword_27ECF4C38;
  if (!qword_27ECF4C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4C38);
  }

  return result;
}

_DWORD *__swift_memcpy7_1(_DWORD *result, int *a2)
{
  v2 = *a2;
  *(result + 3) = *(a2 + 3);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for TemperatureDataIdentifiers(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xAB && a1[7])
  {
    return (*a1 + 171);
  }

  v3 = *a1;
  v4 = v3 >= 0x56;
  v5 = v3 - 86;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TemperatureDataIdentifiers(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xAA)
  {
    *(result + 6) = 0;
    *(result + 4) = 0;
    *result = a2 - 171;
    if (a3 >= 0xAB)
    {
      *(result + 7) = 1;
    }
  }

  else
  {
    if (a3 >= 0xAB)
    {
      *(result + 7) = 0;
    }

    if (a2)
    {
      *result = a2 + 85;
    }
  }

  return result;
}

unint64_t sub_242D840BC()
{
  result = qword_27ECF4C40;
  if (!qword_27ECF4C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4C40);
  }

  return result;
}

unint64_t sub_242D84114()
{
  result = qword_27ECF4C48;
  if (!qword_27ECF4C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4C48);
  }

  return result;
}

unint64_t sub_242D8416C()
{
  result = qword_27ECF4C50;
  if (!qword_27ECF4C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4C50);
  }

  return result;
}

uint64_t sub_242D841C0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000020 && 0x8000000242F5ADA0 == a2;
  if (v3 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000020 && 0x8000000242F5ADD0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000242F5AE00 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000242F5AE20 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000242F5AE40 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000242F5AE60 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000242F5AE80 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_242F06110();

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

unint64_t TemperatureDataIdentifiers.description.getter()
{
  v0 = InstrumentDataIdentifier.rawValue.getter();
  v2 = sub_242EFCF00(v0, v1);

  return v2;
}

uint64_t sub_242D845F0()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    if (*v0)
    {
      return 0xD00000000000001CLL;
    }

    else
    {
      return 0x6E65644961746164;
    }
  }

  else
  {
    v2 = 0xD000000000000022;
    if (v1 != 5)
    {
      v2 = 0xD00000000000001DLL;
    }

    v3 = 0xD000000000000023;
    if (v1 == 3)
    {
      v3 = 0xD00000000000001ELL;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_242D846E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242D85384(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242D84710(uint64_t a1)
{
  v2 = sub_242D851B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242D8474C(uint64_t a1)
{
  v2 = sub_242D851B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TemperatureDataIdentifiers.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4C68);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - v6;
  v8 = *v1;
  v9 = v1[1];
  v22 = v1[2];
  v23 = v9;
  v10 = v1[3];
  v20 = v1[4];
  v21 = v10;
  v11 = v1[5];
  v18 = v1[6];
  v19 = v11;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D851B0();
  v12 = v4;
  sub_242F064C0();
  v37 = v8;
  v36 = 0;
  sub_242C8AC28();
  sub_242F05F20();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v13 = v21;
  v14 = v22;
  v15 = v19;
  v16 = v20;
  v35 = v23;
  v34 = 1;
  sub_242F05F20();
  v33 = v14;
  v32 = 2;
  sub_242F05F20();
  v31 = v13;
  v30 = 3;
  sub_242F05F20();
  v29 = v16;
  v28 = 4;
  sub_242F05F20();
  v27 = v15;
  v26 = 5;
  sub_242F05F20();
  v25 = v18;
  v24 = 6;
  sub_242F05F20();
  return (*(v5 + 8))(v7, v12);
}

uint64_t TemperatureDataIdentifiers.hash(into:)()
{
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();
}

uint64_t TemperatureDataIdentifiers.hashValue.getter()
{
  sub_242F06390();
  TemperatureDataIdentifiers.hash(into:)();
  return sub_242F063E0();
}

uint64_t TemperatureDataIdentifiers.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4C78);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D851B0();
  sub_242F06480();
  if (!v2)
  {
    v34 = 0;
    sub_242C8AC7C();
    sub_242F05E00();
    v9 = v35;
    v32 = 1;
    sub_242F05E00();
    v21 = v9;
    v10 = v33;
    v30 = 2;
    sub_242F05E00();
    v20 = v10;
    v11 = v31;
    v28 = 3;
    sub_242F05E00();
    v19 = v11;
    v12 = v29;
    v26 = 4;
    sub_242F05E00();
    v18 = v12;
    LOBYTE(v12) = v27;
    v24 = 5;
    sub_242F05E00();
    HIDWORD(v17) = v25;
    v22 = 6;
    sub_242F05E00();
    (*(v6 + 8))(v8, v5);
    v14 = v23;
    v15 = v20;
    *a2 = v21;
    a2[1] = v15;
    v16 = v18;
    a2[2] = v19;
    a2[3] = v16;
    a2[4] = v12;
    a2[5] = BYTE4(v17);
    a2[6] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242D84FC0()
{
  sub_242F06390();
  TemperatureDataIdentifiers.hash(into:)();
  return sub_242F063E0();
}

uint64_t sub_242D85020()
{
  sub_242F06390();
  TemperatureDataIdentifiers.hash(into:)();
  return sub_242F063E0();
}

double sub_242D85078()
{
  *&result = 538778651;
  dword_27ECF4C58 = 538778651;
  word_27ECF4C5C = 7966;
  byte_27ECF4C5E = 68;
  return result;
}

uint64_t static TemperatureDataIdentifiers.engineTemperature.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF1C0 != -1)
  {
    v3 = a1;
    result = swift_once();
    a1 = v3;
  }

  v1 = word_27ECF4C5C;
  v2 = byte_27ECF4C5E;
  *a1 = dword_27ECF4C58;
  *(a1 + 4) = v1;
  *(a1 + 6) = v2;
  return result;
}

double sub_242D85114()
{
  *&result = 100860417;
  dword_27ECF4C5F = 100860417;
  word_27ECF4C63 = 1284;
  byte_27ECF4C65 = 68;
  return result;
}

uint64_t static TemperatureDataIdentifiers.batteryTemperature.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF1C8 != -1)
  {
    v3 = a1;
    result = swift_once();
    a1 = v3;
  }

  v1 = word_27ECF4C63;
  v2 = byte_27ECF4C65;
  *a1 = dword_27ECF4C5F;
  *(a1 + 4) = v1;
  *(a1 + 6) = v2;
  return result;
}

unint64_t sub_242D851B0()
{
  result = qword_27ECF4C70;
  if (!qword_27ECF4C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4C70);
  }

  return result;
}

unint64_t sub_242D85208()
{
  result = qword_27ECF4C80;
  if (!qword_27ECF4C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4C80);
  }

  return result;
}

unint64_t sub_242D85280()
{
  result = qword_27ECF4C88;
  if (!qword_27ECF4C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4C88);
  }

  return result;
}

unint64_t sub_242D852D8()
{
  result = qword_27ECF4C90;
  if (!qword_27ECF4C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4C90);
  }

  return result;
}

unint64_t sub_242D85330()
{
  result = qword_27ECF4C98;
  if (!qword_27ECF4C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4C98);
  }

  return result;
}

uint64_t sub_242D85384(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65644961746164 && a2 == 0xEE00726569666974;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000242F59940 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000242F59960 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000242F5AEA0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000023 && 0x8000000242F5AEC0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000022 && 0x8000000242F5AEF0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000242F5AF20 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_242F06110();

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

uint64_t sub_242D855D4()
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t Instrument.native.getter()
{
  v1 = type metadata accessor for Instrument();
  memcpy(__dst, (v0 + *(v1 + 20)), sizeof(__dst));
  v2 = sub_242C9E788(__dst);
  result = 0;
  if (v2 > 3)
  {
    if (v2 == 4 || v2 == 5)
    {
      goto LABEL_10;
    }

    if (v2 != 7)
    {
      return result;
    }

    v4 = sub_242C556B4(__dst);
    enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0 = get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(v4);
    return enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0 == 0;
  }

  switch(v2)
  {
    case 1:
      return *(sub_242C556B4(__dst) + 552);
    case 2:
      v6 = sub_242C556B4(__dst);
      enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0 = sub_242C9E7A4(v6 + 8);
      return enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0 == 0;
    case 3:
LABEL_10:
      sub_242C556B4(__dst);
      return 1;
  }

  return result;
}

uint64_t type metadata accessor for Instrument()
{
  result = qword_27ECF4E70;
  if (!qword_27ECF4E70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_242D85854()
{
  v0 = *(sub_242D726A0() + 16);
  if (v0)
  {
    v12 = MEMORY[0x277D84F90];
    sub_242E3BC70(0, v0, 0);
    v1 = 32;
    v2 = v12;
    do
    {
      v3 = InstrumentDataIdentifier.rawValue.getter();
      v13 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        v8 = v3;
        v9 = v4;
        sub_242E3BC70((v5 > 1), v6 + 1, 1);
        v4 = v9;
        v3 = v8;
        v2 = v13;
      }

      *(v2 + 16) = v6 + 1;
      v7 = v2 + 16 * v6;
      *(v7 + 32) = v3;
      *(v7 + 40) = v4;
      ++v1;
      --v0;
    }

    while (v0);
  }

  else
  {

    v2 = MEMORY[0x277D84F90];
  }

  v10 = sub_242C86440(v2);

  return v10;
}

uint64_t Instrument.Kind.appBundleId.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  if (sub_242C9E788(__dst) != 6)
  {
    return 0;
  }

  v1 = *sub_242C556B4(__dst);

  return v1;
}

uint64_t Instrument.init(id:kind:backgroundColor:shadowID:persistent:blendMode:)@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, __int16 *a7@<X6>, uint64_t a8@<X8>)
{
  v34 = a4;
  v35 = a5;
  v33 = a3;
  HIDWORD(v32) = a6;
  v36 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2168);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v32 - v13;
  memcpy(v42, a2, 0x238uLL);
  v15 = *a7;
  v16 = *(a7 + 2);
  sub_242F03710();
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2170) + 52);
  *(a8 + v17) = 7;
  v37 = a1;
  sub_242CA321C(a1, v14, &qword_27ECF2168);
  sub_242C6D138(a8, &qword_27ECF2170);
  sub_242D8E1EC(v14, a8);
  *(a8 + v17) = 7;
  v18 = type metadata accessor for Instrument();
  memcpy((a8 + *(v18 + 20)), v42, 0x238uLL);
  v19 = a8 + *(v18 + 24);
  v20 = v33;
  *(v19 + 8) = 0;
  *(v19 + 16) = 0;
  *v19 = v20;
  *(v19 + 24) = 256;
  v21 = v35;
  *(v19 + 32) = v34;
  *(v19 + 40) = v21;
  *(v19 + 50) = v16;
  *(v19 + 48) = v15;
  memcpy(v41, v42, sizeof(v41));

  sub_242CF6BA4(v42, v40);
  v22 = Instrument.Kind.defaultVerifierIdentifier.getter();
  v24 = v23;

  *(v19 + 8) = v22;
  *(v19 + 16) = v24;
  if (v36 != 2)
  {
    sub_242C6D138(v37, &qword_27ECF2168);

    v29 = BYTE4(v32);
    goto LABEL_10;
  }

  v25 = v37;
  memcpy(v41, v42, sizeof(v41));
  if (sub_242C9E788(v41) == 1)
  {
    v26 = sub_242C556B4(v41);
    memcpy(v40, v26, 0x228uLL);
    if (sub_242D3DE48(v40) == 3)
    {
      v27 = sub_242C65548(v40);
      memcpy(v39, v27, sizeof(v39));
      v28 = sub_242D3DE64(v39);
      if (!v28)
      {
        v38 = *sub_242C58D34(v39);
        if (InstrumentDataIdentifier.rawValue.getter() != 0x53656C6369686576 || v31 != 0xEC00000064656570)
        {
          v29 = sub_242F06110();

          goto LABEL_9;
        }

        goto LABEL_19;
      }

      if (v28 == 7)
      {
        sub_242C58D34(v39);

LABEL_19:
        v29 = 1;
        goto LABEL_9;
      }
    }
  }

  v29 = 0;
LABEL_9:
  sub_242C6D138(v25, &qword_27ECF2168);
LABEL_10:
  *(v19 + 24) = v29 & 1;
  memcpy(v41, v42, sizeof(v41));
  result = sub_242C9E788(v41);
  if (result == 8)
  {
LABEL_13:
    *(v19 + 25) = 0;
    return result;
  }

  if (result == 2)
  {
    sub_242C556B4(v41);
    result = sub_242CF6C60(v42);
    goto LABEL_13;
  }

  return sub_242CF6C60(v42);
}

uint64_t Instrument.Configuration.backgroundColor.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Instrument.Configuration.verifierIdentifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t Instrument.Configuration.verifierIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t Instrument.Configuration.shadowID.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t Instrument.Configuration.shadowID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

void Instrument.Configuration.blendMode.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 2) = *(v1 + 50);
  *a1 = v2;
}

__int16 *Instrument.Configuration.blendMode.setter(__int16 *result)
{
  v2 = *result;
  *(v1 + 50) = *(result + 2);
  *(v1 + 48) = v2;
  return result;
}

uint64_t sub_242D85FC8()
{
  v1 = *v0;
  v2 = 0x756F72676B636162;
  v3 = 0x536F547370696C63;
  v4 = 0x4449776F64616873;
  if (v1 != 4)
  {
    v4 = 0x646F4D646E656C62;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000012;
  if (v1 != 1)
  {
    v5 = 0x6574736973726570;
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

uint64_t sub_242D860A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242D90144(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242D860D8(uint64_t a1)
{
  v2 = sub_242D8E25C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242D86114(uint64_t a1)
{
  v2 = sub_242D8E25C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Instrument.Configuration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4CA8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v9 = *v1;
  v8 = v1[1];
  v19 = v1[2];
  v20 = v8;
  LODWORD(v8) = *(v1 + 24);
  v17 = *(v1 + 25);
  v18 = v8;
  v10 = v1[4];
  v15 = v1[5];
  v16 = v10;
  LODWORD(v10) = *(v1 + 50);
  v13 = *(v1 + 24);
  v14 = v10;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D8E25C();

  sub_242F064C0();
  v22 = v9;
  v21 = 0;
  sub_242C7C594();
  sub_242F05F20();
  if (v2)
  {
  }

  else
  {

    LOBYTE(v22) = 1;
    sub_242F05E50();
    LOBYTE(v22) = 2;
    sub_242F05ED0();
    LOBYTE(v22) = 3;
    sub_242F05ED0();
    LOBYTE(v22) = 4;
    sub_242F05E50();
    BYTE2(v22) = (v13 | (v14 << 16)) >> 16;
    LOWORD(v22) = v13;
    v21 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4CB8);
    sub_242C7E000(&qword_27ECF4CC0, &qword_27ECF4CB8);
    sub_242F05EB0();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t Instrument.Configuration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4CC8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D8E25C();
  sub_242F06480();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  LOBYTE(v26) = 0;
  sub_242C7C540();
  sub_242F05E00();
  v9 = v29[0];
  LOBYTE(v29[0]) = 1;
  v10 = sub_242F05D30();
  v12 = v11;
  v25 = v10;
  LOBYTE(v29[0]) = 2;
  v35 = sub_242F05DB0();
  LOBYTE(v29[0]) = 3;
  v24 = sub_242F05DB0();
  LOBYTE(v29[0]) = 4;
  *&v23 = sub_242F05D30();
  *(&v23 + 1) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4CB8);
  v38 = 5;
  sub_242C7E000(&qword_27ECF4CD0, &qword_27ECF4CB8);
  sub_242F05D90();
  v35 &= 1u;
  v14 = v35;
  v21 = v24 & 1;
  (*(v6 + 8))(v8, v5);
  v24 = v36;
  v22 = v37;
  v15 = v25;
  *&v26 = v9;
  *(&v26 + 1) = v25;
  *&v27 = v12;
  BYTE8(v27) = v14;
  v16 = v21;
  BYTE9(v27) = v21;
  v17 = v23;
  *v28 = v23;
  v28[18] = v37;
  *&v28[16] = v36;
  v18 = v27;
  *a2 = v26;
  *(a2 + 16) = v18;
  *(a2 + 32) = *v28;
  *(a2 + 47) = *&v28[15];
  sub_242D8E2B0(&v26, v29);
  __swift_destroy_boxed_opaque_existential_2Tm(a1);
  v29[0] = v9;
  v29[1] = v15;
  v29[2] = v12;
  v30 = v35;
  v31 = v16;
  v32 = v17;
  v34 = v22;
  v33 = v24;
  return sub_242D8E2E8(v29);
}

uint64_t Instrument.NavigationStyle.description.getter()
{
  if (*v0)
  {
    return 0x726143206E727554;
  }

  else
  {
    return 7364941;
  }
}

uint64_t Instrument.NavigationStyle.rawValue.getter()
{
  if (*v0)
  {
    return 0x647261436E727574;
  }

  else
  {
    return 7364973;
  }
}

uint64_t sub_242D868CC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x647261436E727574;
  }

  else
  {
    v3 = 7364973;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x647261436E727574;
  }

  else
  {
    v5 = 7364973;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_242F06110();
  }

  return v8 & 1;
}

void sub_242D86978(uint64_t *a1@<X8>)
{
  v2 = 7364973;
  if (*v1)
  {
    v2 = 0x647261436E727574;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_242D86A70()
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t sub_242D86AEC()
{
  sub_242F04DD0();
}

uint64_t sub_242D86B54()
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t sub_242D86BCC()
{
  if (*v0)
  {
    return 0x726143206E727554;
  }

  else
  {
    return 7364941;
  }
}

uint64_t Instrument.PunchThroughType.description.getter()
{
  if (*v0)
  {
    return 0x676E6974746553;
  }

  else
  {
    return 0x6172656D6143;
  }
}

uint64_t sub_242D86C48@<X0>(char *a1@<X8>)
{
  v2 = sub_242F05CD0();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t Instrument.PunchThroughType.rawValue.getter()
{
  if (*v0)
  {
    return 0x676E6974746573;
  }

  else
  {
    return 0x6172656D6163;
  }
}

uint64_t sub_242D86CEC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x676E6974746573;
  }

  else
  {
    v3 = 0x6172656D6163;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x676E6974746573;
  }

  else
  {
    v5 = 0x6172656D6163;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_242F06110();
  }

  return v8 & 1;
}

void sub_242D86D9C(uint64_t *a1@<X8>)
{
  v2 = 0x6172656D6163;
  if (*v1)
  {
    v2 = 0x676E6974746573;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_242D86E98()
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t sub_242D86F18()
{
  sub_242F04DD0();
}

uint64_t sub_242D86F84()
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t sub_242D87000()
{
  if (*v0)
  {
    return 0x676E6974746553;
  }

  else
  {
    return 0x6172656D6143;
  }
}

uint64_t Instrument.Kind.icon.getter()
{
  memcpy(v4, v0, 0x238uLL);
  v1 = sub_242C9E788(v4);
  if (v1 > 3)
  {
    if (v1 <= 5)
    {
      v2 = 0x616C75636F6E6962;
      sub_242C556B4(v4);
      return v2;
    }

    if (v1 == 6)
    {
      sub_242C556B4(v4);
      return 0xD000000000000011;
    }

    if (v1 != 7)
    {
      return 0xD000000000000016;
    }

    goto LABEL_10;
  }

  if (v1 > 1)
  {
    if (v1 != 2)
    {
      sub_242C556B4(v4);
      return 0x6F65646976;
    }

LABEL_10:
    v2 = 0xD000000000000018;
    sub_242C556B4(v4);
    return v2;
  }

  if (v1)
  {
    sub_242C556B4(v4);
    return 0x6567756167;
  }

  else
  {
    sub_242C556B4(v4);
    return 0x637269632E70616DLL;
  }
}

uint64_t Instrument.Kind.shortName.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = sub_242C9E788(__dst);
  if (v1 <= 3)
  {
    v3 = 0x697461676976614ELL;
    v4 = 0x6F74616369646E49;
    if (v1 != 2)
    {
      v4 = 0x7453207475706E49;
    }

    if (v1)
    {
      v3 = 0x6567756147;
    }

    if (v1 <= 1)
    {
      v2 = v3;
    }

    else
    {
      v2 = v4;
    }
  }

  else if (v1 <= 5)
  {
    if (v1 == 4)
    {
      v2 = 0x746E656449205450;
    }

    else
    {
      v2 = 0x65707954205450;
    }
  }

  else if (v1 == 6)
  {
    v2 = 7368769;
  }

  else
  {
    if (v1 != 7)
    {
      return 1970169165;
    }

    v2 = 0x5020746567646957;
  }

  sub_242C556B4(__dst);
  return v2;
}

uint64_t Instrument.Kind.name.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = sub_242C9E788(__dst);
  if (v1 <= 3)
  {
    if (v1 > 1)
    {
      if (v1 != 2)
      {
        v34 = sub_242C556B4(__dst);
        v27 = *v34;
        v28 = v34[1];
        sub_242F05A80();

        strcpy(v41, "Input Stream (");
        v41[15] = -18;
        goto LABEL_30;
      }

      strcpy(v41, "Indicator (");
      *&v41[12] = -352321536;
      LOBYTE(v42) = *sub_242C556B4(__dst);
      v21 = InstrumentDataIdentifier.rawValue.getter();
      v23 = sub_242EFCF00(v21, v22);
      v25 = v24;

      MEMORY[0x245D26660](v23, v25);
LABEL_40:

      goto LABEL_41;
    }

    if (v1)
    {
      v32 = sub_242C556B4(__dst);
      v42 = 0x28206567756147;
      v43 = 0xE700000000000000;
      memcpy(v41, v32, sizeof(v41));
      v14 = Instrument.GaugeStyle.description.getter();
LABEL_27:
      MEMORY[0x245D26660](v14, v16);

      goto LABEL_28;
    }

    v17 = *sub_242C556B4(__dst);
    strcpy(v41, "Navigation (");
    v41[13] = 0;
    *&v41[14] = -5120;
    if (v17)
    {
      v18 = 0x726143206E727554;
    }

    else
    {
      v18 = 7364941;
    }

    if (v17)
    {
      v19 = 0xE900000000000064;
    }

    else
    {
      v19 = 0xE300000000000000;
    }

    v20 = v19;
LABEL_39:
    MEMORY[0x245D26660](v18, v20);
    goto LABEL_40;
  }

  if (v1 <= 5)
  {
    if (v1 == 4)
    {
      v26 = sub_242C556B4(__dst);
      v27 = *v26;
      v28 = v26[1];
      sub_242F05A80();

      *v41 = 0xD00000000000001ALL;
      *&v41[8] = 0x8000000242F5B000;
LABEL_30:
      MEMORY[0x245D26660](v27, v28);
LABEL_41:
      MEMORY[0x245D26660](41, 0xE100000000000000);
      return *v41;
    }

    v35 = sub_242C556B4(__dst);
    v36 = *v35;
    v37 = v35[1];
    sub_242F05A80();

    *v41 = 0xD000000000000014;
    *&v41[8] = 0x8000000242F5AFE0;
    if (v36)
    {
      v38 = 0x676E6974746553;
    }

    else
    {
      v38 = 0x6172656D6143;
    }

    if (v36)
    {
      v39 = 0xE700000000000000;
    }

    else
    {
      v39 = 0xE600000000000000;
    }

    MEMORY[0x245D26660](v38, v39);

    MEMORY[0x245D26660](8236, 0xE200000000000000);
    LOBYTE(v42) = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4CD8);
    v18 = sub_242F04F90();
    goto LABEL_39;
  }

  if (v1 == 6)
  {
    v29 = sub_242C556B4(__dst);
    v40 = *v29;
    v30 = *(v29 + 16);
    v31 = *(v29 + 24);
    v42 = 0;
    v43 = 0xE000000000000000;
    MEMORY[0x245D26660](0x2820707041, 0xE500000000000000);
    *v41 = v40;
    *&v41[16] = v30;
    *&v41[24] = v31;
    sub_242F05C20();
LABEL_28:
    MEMORY[0x245D26660](41, 0xE100000000000000);
    return v42;
  }

  if (v1 == 7)
  {
    v2 = sub_242C556B4(__dst);
    *v41 = 0;
    *&v41[8] = 0xE000000000000000;
    sub_242F05A80();

    v42 = 0xD000000000000010;
    v43 = 0x8000000242F5AFC0;
    *v41 = *v2;
    v3 = v2[4];
    v5 = v2[1];
    v4 = v2[2];
    *&v41[48] = v2[3];
    *&v41[64] = v3;
    *&v41[16] = v5;
    *&v41[32] = v4;
    v6 = v2[8];
    v8 = v2[5];
    v7 = v2[6];
    *&v41[112] = v2[7];
    *&v41[128] = v6;
    *&v41[80] = v8;
    *&v41[96] = v7;
    v9 = v2[12];
    v11 = v2[9];
    v10 = v2[10];
    *&v41[176] = v2[11];
    *&v41[192] = v9;
    *&v41[144] = v11;
    *&v41[160] = v10;
    enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0 = get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(v41);
    v13 = enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0 == 1;
    if (enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0 == 1)
    {
      v14 = 0x65746F6D6572;
    }

    else
    {
      v14 = 0x6C61636F6CLL;
    }

    if (v13)
    {
      v15 = 0xE600000000000000;
    }

    else
    {
      v15 = 0xE500000000000000;
    }

    v16 = v15;
    goto LABEL_27;
  }

  return 1970169165;
}

uint64_t Instrument.Kind.detail.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = sub_242C9E788(__dst);
  if (v1 <= 3)
  {
    if (v1 > 1)
    {
      if (v1 == 2)
      {
        sub_242C556B4(__dst);
        return 0xD000000000000044;
      }

      else
      {
        sub_242C556B4(__dst);
        return 0x7453206F65646956;
      }
    }

    else if (v1)
    {
      sub_242C556B4(__dst);
      return 0xD000000000000035;
    }

    else
    {
      sub_242C556B4(__dst);
      return 0xD000000000000017;
    }
  }

  else if (v1 <= 5)
  {
    if (v1 == 4)
    {
      sub_242C556B4(__dst);
      return 0xD00000000000003ALL;
    }

    else
    {
      sub_242C556B4(__dst);
      return 0xD000000000000036;
    }
  }

  else if (v1 == 6)
  {
    sub_242C556B4(__dst);
    return 0x746163696C707041;
  }

  else if (v1 == 7)
  {
    sub_242C556B4(__dst);
    return 0x5020746567646957;
  }

  else
  {
    return 1970169165;
  }
}

uint64_t Instrument.Kind.defaultVerifierIdentifier.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = sub_242C9E788(__dst);
  if (v1 != 1)
  {
    if (v1 == 2)
    {
      sub_242C556B4(__dst);
      return 0x6163696669746F6ELL;
    }

    return 0;
  }

  v3 = sub_242C556B4(__dst);
  memcpy(v12, v3, sizeof(v12));
  if (sub_242D3DE48(v12) == 3)
  {
    v4 = sub_242C65548(v12);
    memcpy(v11, v4, sizeof(v11));
    if (sub_242D3DE64(v11) == 2)
    {
      v10[559] = *sub_242C58D34(v11);
      if (InstrumentDataIdentifier.rawValue.getter() == 0x73696D736E617274 && v5 == 0xEC0000006E6F6973)
      {
        memcpy(v10, v3, 0x228uLL);
        v6 = sub_242C65548(v10);
        sub_242D48070(v3, v9);
        sub_242CA321C(v6, v9, &qword_27ECF3480);

LABEL_10:
        sub_242D480A8(v3);
        sub_242D480A8(v3);
        return 0x6C646E7270;
      }

      v7 = sub_242F06110();
      memcpy(v10, v3, 0x228uLL);
      v8 = sub_242C65548(v10);
      sub_242D48070(v3, v9);
      sub_242CA321C(v8, v9, &qword_27ECF3480);

      if (v7)
      {
        goto LABEL_10;
      }

      sub_242D480A8(v3);
      sub_242D480A8(v3);
    }
  }

  return 0;
}

uint64_t Instrument.Kind.defaultPersistent.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  if (sub_242C9E788(__dst) != 1)
  {
    goto LABEL_8;
  }

  v1 = sub_242C556B4(__dst);
  memcpy(v8, v1, sizeof(v8));
  if (sub_242D3DE48(v8) != 3)
  {
    goto LABEL_8;
  }

  v2 = sub_242C65548(v8);
  memcpy(v7, v2, sizeof(v7));
  v3 = sub_242D3DE64(v7);
  if (v3 == 7)
  {
    sub_242C58D34(v7);
    v5 = 1;
    return v5 & 1;
  }

  if (!v3)
  {
    sub_242C58D34(v7);
    if (InstrumentDataIdentifier.rawValue.getter() == 0x53656C6369686576 && v4 == 0xEC00000064656570)
    {

      v5 = 1;
    }

    else
    {
      v5 = sub_242F06110();
    }
  }

  else
  {
LABEL_8:
    v5 = 0;
  }

  return v5 & 1;
}

char *Instrument.Kind.focusableStateDataIdentifier.getter@<X0>(char *a1@<X8>)
{
  memcpy(v5, v1, 0x238uLL);
  result = sub_242C9E788(v5);
  if (result <= 3)
  {
    if (result == 2)
    {
      result = sub_242C556B4(v5);
      v4 = *result;
      goto LABEL_7;
    }

LABEL_6:
    result = sub_242C556B4(v5);
    v4 = 86;
    goto LABEL_7;
  }

  if (result < 8)
  {
    goto LABEL_6;
  }

  v4 = 77;
LABEL_7:
  *a1 = v4;
  return result;
}

uint64_t Instrument.Kind.hash(into:)(__int128 *a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  v3 = sub_242C9E788(__dst);
  if (v3 > 3)
  {
    if (v3 > 5)
    {
      if (v3 == 6)
      {
        v18 = *(sub_242C556B4(__dst) + 24);
        MEMORY[0x245D279A0](6);
        sub_242F04DD0();
        if (v18)
        {
          sub_242F063B0();
          return sub_242F04DD0();
        }
      }

      else
      {
        if (v3 != 7)
        {
          v14 = 7;
          return MEMORY[0x245D279A0](v14);
        }

        v4 = sub_242C556B4(__dst);
        MEMORY[0x245D279A0](8);
        v39[0] = *v4;
        v5 = v4[1];
        v6 = v4[2];
        v7 = v4[4];
        v39[3] = v4[3];
        v39[4] = v7;
        v39[1] = v5;
        v39[2] = v6;
        v8 = v4[5];
        v9 = v4[6];
        v10 = v4[8];
        v39[7] = v4[7];
        v39[8] = v10;
        v39[5] = v8;
        v39[6] = v9;
        v11 = v4[9];
        v12 = v4[10];
        v13 = v4[12];
        v39[11] = v4[11];
        v39[12] = v13;
        v39[9] = v11;
        v39[10] = v12;
        if (get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(v39) == 1)
        {
          v14 = 1;
          return MEMORY[0x245D279A0](v14);
        }

        MEMORY[0x245D279A0](0);
        v39[43] = v39[3];
        v39[44] = v39[4];
        v39[45] = v39[5];
        v39[46] = v39[6];
        v39[41] = v39[1];
        v39[42] = v39[2];
        sub_242F04DD0();
        sub_242D65A9C(a1);
        if ((~LOBYTE(v39[9]) & 0xFE) != 0)
        {
          v39[37] = v39[9];
          v39[38] = v39[10];
          v39[39] = v39[11];
          v39[40] = v39[12];
          v39[35] = v39[7];
          v39[36] = v39[8];
          sub_242F063B0();
          return sub_242D65A9C(a1);
        }
      }

      return sub_242F063B0();
    }

    if (v3 == 4)
    {
      v17 = *(sub_242C556B4(__dst) + 16);
      MEMORY[0x245D279A0](4);
      sub_242F04DD0();
      LOBYTE(v39[0]) = v17;
LABEL_31:
      InstrumentDataIdentifier.rawValue.getter();
      goto LABEL_32;
    }

    v38 = *(sub_242C556B4(__dst) + 1);
    MEMORY[0x245D279A0](5);
    sub_242F04DD0();

    if (v38 != 86)
    {
      sub_242F063B0();
      LOBYTE(v39[0]) = v38;
      goto LABEL_31;
    }

    return sub_242F063B0();
  }

  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v15 = sub_242C556B4(__dst);
      MEMORY[0x245D279A0](2);
      memcpy(v39, v15, 0x200uLL);
      return Instrument.IndicatorConfiguration.hash(into:)(a1);
    }

    v29 = *(sub_242C556B4(__dst) + 16);
    MEMORY[0x245D279A0](3);
    sub_242F04DD0();
    if (!v29)
    {
      return sub_242F063B0();
    }

    sub_242F063B0();
    result = MEMORY[0x245D279A0](*(v29 + 16));
    v30 = *(v29 + 16);
    if (v30)
    {

      v31 = *(v29 + 128);
      v39[5] = *(v29 + 112);
      v39[6] = v31;
      v39[7] = *(v29 + 144);
      *&v39[8] = *(v29 + 160);
      v32 = *(v29 + 48);
      v33 = *(v29 + 80);
      v34 = *(v29 + 96);
      v39[2] = *(v29 + 64);
      v39[3] = v33;
      v39[4] = v34;
      v39[0] = *(v29 + 32);
      v39[1] = v32;
      VisibilityRule.hash(into:)();
      v35 = v30 - 1;
      if (v35)
      {
        v36 = (v29 + 168);
        do
        {
          v39[5] = v36[5];
          v39[6] = v36[6];
          v39[7] = v36[7];
          *&v39[8] = *(v36 + 16);
          v39[1] = v36[1];
          v39[2] = v36[2];
          v39[3] = v36[3];
          v39[4] = v36[4];
          v37 = *v36;
          v36 = (v36 + 136);
          v39[0] = v37;
          VisibilityRule.hash(into:)();
          --v35;
        }

        while (v35);
      }
    }
  }

  else
  {
    if (!v3)
    {
      sub_242C556B4(__dst);
      MEMORY[0x245D279A0](0);
LABEL_32:
      sub_242F04DD0();
    }

    v19 = sub_242C556B4(__dst);
    MEMORY[0x245D279A0](1);
    memcpy(v39, v19, 0x228uLL);
    Instrument.GaugeStyle.hash(into:)(a1);
    v20 = v19[70];
    sub_242F063B0();
    result = MEMORY[0x245D279A0](*(v20 + 16));
    v21 = *(v20 + 16);
    if (v21)
    {
      v22 = *(v20 + 128);
      v39[5] = *(v20 + 112);
      v39[6] = v22;
      v39[7] = *(v20 + 144);
      *&v39[8] = *(v20 + 160);
      v23 = *(v20 + 48);
      v24 = *(v20 + 80);
      v25 = *(v20 + 96);
      v39[2] = *(v20 + 64);
      v39[3] = v24;
      v39[4] = v25;
      v39[0] = *(v20 + 32);
      v39[1] = v23;
      result = VisibilityRule.hash(into:)();
      v26 = v21 - 1;
      if (v26)
      {
        v27 = (v20 + 168);
        do
        {
          v39[5] = v27[5];
          v39[6] = v27[6];
          v39[7] = v27[7];
          *&v39[8] = *(v27 + 16);
          v39[1] = v27[1];
          v39[2] = v27[2];
          v39[3] = v27[3];
          v39[4] = v27[4];
          v28 = *v27;
          v27 = (v27 + 136);
          v39[0] = v28;
          result = VisibilityRule.hash(into:)();
          --v26;
        }

        while (v26);
      }
    }
  }

  return result;
}

uint64_t Instrument.Kind.hashValue.getter()
{
  sub_242F06390();
  Instrument.Kind.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t sub_242D88320()
{
  sub_242F06390();
  Instrument.Kind.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t sub_242D88364()
{
  sub_242F06390();
  Instrument.Kind.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t Instrument.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2170);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v7 - v4;
  sub_242CA321C(v1, &v7 - v4, &qword_27ECF2170);
  return sub_242D8E1EC(v5, a1);
}

uint64_t sub_242D8844C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2170);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  sub_242CA321C(a1, &v8 - v5, &qword_27ECF2170);
  return sub_242D8E1EC(v6, a2);
}

uint64_t Instrument.kind.getter@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for Instrument() + 20);
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy(a1, (v1 + v3), 0x238uLL);
  return sub_242CF6BA4(__dst, &v5);
}

void *Instrument.kind.setter(const void *a1)
{
  v3 = *(type metadata accessor for Instrument() + 20);
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  sub_242CF6C60(__dst);
  return memcpy((v1 + v3), a1, 0x238uLL);
}

uint64_t Instrument.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Instrument() + 24));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11[0] = v4;
  *(v11 + 15) = *(v3 + 47);
  v6 = *(v11 + 15);
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 47) = v6;
  return sub_242D8E2B0(&v9, v8);
}

__n128 Instrument.configuration.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Instrument() + 24);
  v4 = *(v3 + 32);
  v7[1] = *(v3 + 16);
  v8[0] = v4;
  *(v8 + 15) = *(v3 + 47);
  v7[0] = *v3;
  sub_242D8E2E8(v7);
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  result = *(a1 + 32);
  *(v3 + 32) = result;
  *(v3 + 47) = *(a1 + 47);
  return result;
}

BOOL Instrument.external.getter()
{
  v1 = type metadata accessor for Instrument();
  memcpy(__dst, (v0 + *(v1 + 20)), sizeof(__dst));
  v2 = sub_242C9E788(__dst);
  return !v2 || v2 == 6;
}

uint64_t Instrument.trackable.getter()
{
  v1 = type metadata accessor for Instrument();
  memcpy(v7, (v0 + *(v1 + 20)), 0x238uLL);
  v2 = sub_242C9E788(v7);
  if (v2 == 4 || v2 == 3)
  {
    v3 = sub_242C556B4(v7);
    if (*v3 == 0x7765695673616461 && v3[1] == 0xE800000000000000)
    {
      v5 = 1;
    }

    else
    {
      v5 = sub_242F06110();
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void *Instrument.Kind.assets.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = sub_242C9E788(__dst);
  if (v1 != 1)
  {
    if (v1 == 2)
    {
      v2 = sub_242C556B4(__dst);
      memcpy(__src, (v2 + 8), 0x1D0uLL);
      if (sub_242C9E7A4(__src) != 1)
      {
        memcpy(v23, __src, 0x1D0uLL);
        return Instrument.IndicatorStyle.CriticalConfiguration.assets.getter();
      }
    }

    return MEMORY[0x277D84F90];
  }

  v4 = sub_242C556B4(__dst);
  memcpy(__src, v4, sizeof(__src));
  v5 = sub_242D3DE48(__src);
  if (v5 <= 2)
  {
    if (!v5)
    {
LABEL_13:
      sub_242C65548(__src);
      return MEMORY[0x277D84F90];
    }

    if (v5 == 1)
    {
      v7 = *(sub_242C65548(__src) + 8);
      swift_getKeyPath();

      v8 = sub_242D47D30(v7, sub_242D49264);
    }

    else
    {
      v10 = sub_242C65548(__src);
      v12 = *v10;
      v11 = *(v10 + 8);
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      v15 = *(v10 + 32);
      v16 = *(v10 + 40);
      v17 = *(v10 + 48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0200);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_242F09510;
      *(v8 + 56) = &type metadata for VectorFont.Asset;
      *(v8 + 64) = &protocol witness table for VectorFont.Asset;
      v18 = swift_allocObject();
      *(v8 + 32) = v18;
      *(v18 + 16) = v12;
      *(v18 + 24) = v11;
      *(v18 + 32) = v14;
      *(v18 + 40) = v13;
      *(v18 + 48) = v15;
      *(v18 + 56) = v16;
      *(v18 + 64) = v17;
      v19 = v17;
    }

    return v8;
  }

  else
  {
    if (v5 <= 4)
    {
      if (v5 == 3)
      {
        v6 = sub_242C65548(__src);
        memcpy(v23, v6, 0x228uLL);
        return TextElementConfiguration.assets.getter();
      }

      goto LABEL_13;
    }

    if (v5 != 5)
    {
      return MEMORY[0x277D84F90];
    }

    v9 = sub_242C65548(__src);
    memcpy(v23, v9, 0x164uLL);
    switch(sub_242D4926C(v23))
    {
      case 6u:
        v21 = sub_242C5904C(v23);
        memcpy(v22, v21, 0x164uLL);
        sub_242D49294(v22);
        sub_242C59070(v22);
        return MEMORY[0x277D84F90];
      case 8u:
      case 9u:
      case 0xAu:
        v20 = sub_242C5904C(v23);
        v22[11] = v20[11];
        v22[12] = v20[12];
        v22[13] = v20[13];
        v22[14] = v20[14];
        v22[7] = v20[7];
        v22[8] = v20[8];
        v22[9] = v20[9];
        v22[10] = v20[10];
        v22[3] = v20[3];
        v22[4] = v20[4];
        v22[5] = v20[5];
        v22[6] = v20[6];
        v22[0] = *v20;
        v22[1] = v20[1];
        v22[2] = v20[2];
        result = Instrument.GaugeStyle.TicksConfiguration.assets.getter();
        break;
      default:
        sub_242C5904C(v23);
        return MEMORY[0x277D84F90];
    }
  }

  return result;
}

void *Instrument.Kind.restoreAssets(from:)(uint64_t a1)
{
  v3 = v1;
  v4 = MEMORY[0x28223BE20](a1);
  memcpy(__dst, v1, sizeof(__dst));
  memcpy(v19, v1, sizeof(v19));
  result = sub_242C9E788(v19);
  if (result == 1)
  {
    v9 = sub_242C556B4(v19);
    memcpy(v16, v9, sizeof(v16));
    memcpy(v17, __dst, sizeof(v17));
    v10 = sub_242C556B4(v17);
    sub_242CA321C(v10, __src, &qword_27ECF4728);
    Instrument.GaugeStyle.restoreAssets(from:)(v4);
    if (v2)
    {
      memcpy(__src, v16, sizeof(__src));
      return sub_242D482B4(__src);
    }

    memcpy(v14, v1, sizeof(v14));
    sub_242CF6C60(v14);
    memcpy(__src, v16, sizeof(__src));
    sub_242D7CE84(__src);
    v8 = __src;
  }

  else
  {
    if (result != 2)
    {
      return result;
    }

    v6 = sub_242C556B4(v19);
    memcpy(__src, v6, 0x200uLL);
    memcpy(v13, (v6 + 8), sizeof(v13));
    memmove(v14, (v6 + 8), 0x1D0uLL);
    if (sub_242C9E7A4(v14) == 1)
    {
      memcpy(v17, __dst, sizeof(v17));
      v7 = sub_242C556B4(v17);
      sub_242CA321C(v7, v16, &qword_27ECF4730);
    }

    else
    {
      memcpy(v16, v14, 0x1D0uLL);
      sub_242CF6BA4(__dst, v17);
      sub_242D66F08(v13, v17);
      ImageAsset.restore(from:)(v4);
      if (v2)
      {
        memcpy(v17, __src, 0x200uLL);
        sub_242D671B4(v17);
        memcpy(v12, v16, sizeof(v12));
        return sub_242D671E4(v12);
      }

      ImageAsset.restore(from:)(v4);
      ImageAsset.restore(from:)(v4);
      ImageAsset.restore(from:)(v4);
      memcpy(v12, &v16[192], 0x110uLL);
      enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0 = get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(v12);
      if (enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0 != 1)
      {
        Instrument.IndicatorStyle.CriticalConfiguration.TextConfiguration.restoreAssets(from:)(v4);
      }

      memcpy(v17, &__src[1], 0x1D0uLL);
      sub_242D66F40(v17);
      memcpy(v17, v16, 0x1D0uLL);
      nullsub_2(v17);
      memcpy(&__src[1], v17, 0x1D0uLL);
    }

    memcpy(v16, v3, sizeof(v16));
    sub_242CF6C60(v16);
    memcpy(v17, __src, 0x200uLL);
    sub_242D7CF4C(v17);
    v8 = v17;
  }

  return memcpy(v3, v8, 0x238uLL);
}

uint64_t Instrument.dataIdentifiers.getter()
{
  v1 = sub_242F06440();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(type metadata accessor for Instrument() + 20);
  memcpy(v11, (v0 + v5), sizeof(v11));
  v10 = &type metadata for Instrument.Kind;
  v9 = swift_allocObject();
  memcpy((v9 + 16), (v0 + v5), 0x238uLL);
  sub_242CF6BA4(v11, v8);
  sub_242F063F0();
  v6 = sub_242D85854();
  (*(v2 + 8))(v4, v1);
  return v6;
}

uint64_t sub_242D890A0()
{
  v1 = 1684957547;
  if (*v0 != 1)
  {
    v1 = 0x72756769666E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_242D890F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242D90364(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242D8911C(uint64_t a1)
{
  v2 = sub_242D8E318();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242D89158(uint64_t a1)
{
  v2 = sub_242D8E318();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Instrument.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2178);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D8E318();
  sub_242F064C0();
  sub_242CDCCF0(v3, 0);
  if (!v2)
  {
    v9 = type metadata accessor for Instrument();
    v10 = *(v9 + 20);
    memcpy(v26, (v3 + v10), 0x238uLL);
    memcpy(v25, (v3 + v10), sizeof(v25));
    v26[591] = 1;
    sub_242CF6BA4(v26, v24);
    sub_242D8E36C();
    sub_242F05F20();
    memcpy(v24, v25, sizeof(v24));
    sub_242CF6C60(v24);
    v11 = v3 + *(v9 + 24);
    v12 = *(v11 + 32);
    v13 = *v11;
    v14 = *v11;
    v22 = *(v11 + 16);
    v23[0] = v12;
    v21 = v13;
    *(v23 + 15) = *(v11 + 47);
    v18 = v14;
    v19 = v22;
    v20[0] = *(v11 + 32);
    *(v20 + 15) = *(v11 + 47);
    v26[590] = 2;
    sub_242D8E2B0(&v21, v16);
    sub_242D8E3C0();
    sub_242F05F20();
    v16[0] = v18;
    v16[1] = v19;
    v17[0] = v20[0];
    *(v17 + 15) = *(v20 + 15);
    sub_242D8E2E8(v16);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t Instrument.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4CF8);
  MEMORY[0x28223BE20](v3 - 8);
  v40 = &v32 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2170);
  MEMORY[0x28223BE20](v5);
  v36 = &v32 - v6;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4D00);
  v37 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v8 = &v32 - v7;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2168);
  v35 = *(v38 - 8);
  v9 = MEMORY[0x28223BE20](v38);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - v12;
  v43 = type metadata accessor for Instrument();
  MEMORY[0x28223BE20](v43);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_242F03710();
  sub_242CA321C(v13, v15, &qword_27ECF2168);
  sub_242C6D138(v13, &qword_27ECF2168);
  v16 = *(v5 + 52);
  v41 = v15;
  *&v15[v16] = 7;
  v17 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_2Tm(a1, v17);
  sub_242D8E318();
  v18 = v42;
  sub_242F06480();
  if (v18)
  {
    v22 = v41;
    __swift_destroy_boxed_opaque_existential_2Tm(v44);
    return sub_242C6D138(v22, &qword_27ECF2170);
  }

  else
  {
    v19 = v35;
    v20 = v36;
    v42 = v5;
    v48[0] = 0;
    sub_242D8F128(&qword_27ECF4D08);
    v21 = v38;
    sub_242F05D90();
    v33 = v8;
    if ((*(v19 + 48))(v40, 1, v21) == 1)
    {
      sub_242C6D138(v40, &qword_27ECF4CF8);
      sub_242F03710();
    }

    else
    {
      sub_242D8E1EC(v40, v11);
      sub_242CA321C(v11, v20, &qword_27ECF2168);
      sub_242C6D138(v11, &qword_27ECF2168);
    }

    v24 = v34;
    v25 = v43;
    *(v20 + *(v42 + 52)) = 7;
    v26 = v41;
    sub_242D8E414(v20, v41, &qword_27ECF2170);
    v48[591] = 1;
    sub_242D8E47C();
    v27 = v39;
    v28 = v33;
    sub_242F05E00();
    v29 = v37;
    memcpy((v26 + *(v25 + 20)), v48, 0x238uLL);
    v48[590] = 2;
    sub_242D8E4D0();
    sub_242F05E00();
    (*(v29 + 8))(v28, v27);
    v30 = v26 + *(v25 + 24);
    v31 = v46;
    *v30 = v45;
    *(v30 + 16) = v31;
    *(v30 + 32) = *v47;
    *(v30 + 47) = *&v47[15];
    sub_242D8E524(v26, v24);
    __swift_destroy_boxed_opaque_existential_2Tm(v44);
    return sub_242C9E72C(v26);
  }
}

uint64_t sub_242D89A28@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2170);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v7 - v4;
  sub_242CA321C(v1, &v7 - v4, &qword_27ECF2170);
  return sub_242D8E1EC(v5, a1);
}

uint64_t static Instrument.Configuration.BlendMode.default.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27ECF4CA0;
  return result;
}

uint64_t static Instrument.Configuration.BlendMode.default.setter(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27ECF4CA0 = v1;
  return result;
}

CarPlayAssetUI::Instrument::Configuration::BlendMode_optional __swiftcall Instrument.Configuration.BlendMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_242F062E0();

  v5 = 0;
  v6 = 5;
  switch(v3)
  {
    case 0:
      goto LABEL_15;
    case 1:
      v5 = 1;
      goto LABEL_15;
    case 2:
      v5 = 2;
      goto LABEL_15;
    case 3:
      v5 = 3;
      goto LABEL_15;
    case 4:
      v5 = 4;
LABEL_15:
      v6 = v5;
      break;
    case 5:
      break;
    case 6:
      v6 = 6;
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    default:
      v6 = 23;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t Instrument.Configuration.BlendMode.rawValue.getter()
{
  result = 2037411683;
  switch(*v0)
  {
    case 1:
      result = 0x7261656C63;
      break;
    case 2:
      result = 0x766F656372756F73;
      break;
    case 3:
      result = 0x6E69656372756F73;
      break;
    case 4:
      result = 0x756F656372756F73;
      break;
    case 5:
      result = 0x7461656372756F73;
      break;
    case 6:
      result = 0x7265766F74736564;
      break;
    case 7:
      result = 0x6E6974736564;
      break;
    case 8:
      result = 0x74756F74736564;
      break;
    case 9:
      result = 0x706F746174736564;
      break;
    case 0xA:
      result = 0x6576697469646461;
      break;
    case 0xB:
      result = 0x6867696C73756C70;
      break;
    case 0xC:
      result = 0x6B72616473756C70;
      break;
    case 0xD:
      result = 0x766973756C637865;
      break;
    case 0xE:
      result = 7499640;
      break;
    case 0xF:
      result = 0x6E6565726373;
      break;
    case 0x10:
      result = 0x6F6973756C637865;
      break;
    case 0x11:
      v2 = 1769496941;
      goto LABEL_20;
    case 0x12:
      v2 = 1768843629;
LABEL_20:
      result = v2 | 0x6D756D00000000;
      break;
    case 0x13:
    case 0x14:
      result = 0x7463617274627573;
      break;
    case 0x15:
      result = 0x6E656E6F706D6F63;
      break;
    case 0x16:
      result = 0x6C616D726F6ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_242D89F7C()
{
  v0 = Instrument.Configuration.BlendMode.rawValue.getter();
  v2 = v1;
  if (v0 == Instrument.Configuration.BlendMode.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_242F06110();
  }

  return v5 & 1;
}

uint64_t sub_242D8A024@<X0>(uint64_t *a1@<X8>)
{
  result = Instrument.Configuration.BlendMode.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_242D8A0FC()
{
  sub_242F06390();
  Instrument.Configuration.BlendMode.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t sub_242D8A164()
{
  Instrument.Configuration.BlendMode.rawValue.getter();
  sub_242F04DD0();
}

uint64_t sub_242D8A1C8()
{
  sub_242F06390();
  Instrument.Configuration.BlendMode.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t sub_242D8A22C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27ECF4CA0;
  return result;
}

uint64_t sub_242D8A2A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_242D9047C();
  *a1 = result;
  return result;
}

void sub_242D8A2D0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006E6FLL;
  v4 = 0x697461676976616ELL;
  v5 = 0xE400000000000000;
  v6 = 1970169197;
  if (v2 != 6)
  {
    v6 = 0x6F50746567646977;
    v5 = 0xED00007265766F70;
  }

  v7 = 0xEC0000006867756FLL;
  v8 = 0x72685468636E7570;
  if (v2 != 4)
  {
    v8 = 0xD000000000000010;
    v7 = 0x8000000242F57A90;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000072;
  v10 = 0x6F74616369646E69;
  if (v2 != 2)
  {
    v10 = 0x7274537475706E69;
    v9 = 0xEB000000006D6165;
  }

  if (*v1)
  {
    v4 = 0x6567756167;
    v3 = 0xE500000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
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

uint64_t sub_242D8A3EC()
{
  v1 = *v0;
  v2 = 0x697461676976616ELL;
  v3 = 1970169197;
  if (v1 != 6)
  {
    v3 = 0x6F50746567646977;
  }

  v4 = 0x72685468636E7570;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6F74616369646E69;
  if (v1 != 2)
  {
    v5 = 0x7274537475706E69;
  }

  if (*v0)
  {
    v2 = 0x6567756167;
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

uint64_t sub_242D8A504@<X0>(_BYTE *a1@<X8>)
{
  result = sub_242D9047C();
  *a1 = result;
  return result;
}

uint64_t sub_242D8A52C(uint64_t a1)
{
  v2 = sub_242D8E588();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242D8A568(uint64_t a1)
{
  v2 = sub_242D8E588();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242D8A5B0()
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t sub_242D8A69C()
{
  sub_242F04DD0();
}

uint64_t sub_242D8A774()
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t sub_242D8A85C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_242D904C8();
  *a1 = result;
  return result;
}

void sub_242D8A88C(uint64_t *a1@<X8>)
{
  v2 = 0xEA0000000000656CLL;
  v3 = 0x7974536567756167;
  v4 = 0xEE0072756C42646ELL;
  v5 = 0x756F72676B636162;
  if (*v1 != 2)
  {
    v5 = 0x72756769666E6F63;
    v4 = 0xED00006E6F697461;
  }

  if (*v1)
  {
    v3 = 0x4C737265646E6572;
    v2 = 0xEE00796C6C61636FLL;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_242D8A934()
{
  v1 = 0x7974536567756167;
  v2 = 0x756F72676B636162;
  if (*v0 != 2)
  {
    v2 = 0x72756769666E6F63;
  }

  if (*v0)
  {
    v1 = 0x4C737265646E6572;
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

uint64_t sub_242D8A9D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_242D904C8();
  *a1 = result;
  return result;
}

uint64_t sub_242D8AA00(uint64_t a1)
{
  v2 = sub_242D8E934();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242D8AA3C(uint64_t a1)
{
  v2 = sub_242D8E934();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242D8AA78(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x656C797473;
  if (v2 != 1)
  {
    v4 = 0x72756769666E6F63;
    v3 = 0xED00006E6F697461;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E65644961746164;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEE00726569666974;
  }

  v7 = 0xE500000000000000;
  v8 = 0x656C797473;
  if (*a2 != 1)
  {
    v8 = 0x72756769666E6F63;
    v7 = 0xED00006E6F697461;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E65644961746164;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEE00726569666974;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_242F06110();
  }

  return v11 & 1;
}

uint64_t sub_242D8AB94()
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t sub_242D8AC4C()
{
  sub_242F04DD0();
}

uint64_t sub_242D8ACF0()
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t sub_242D8ADA4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_242D90514();
  *a1 = result;
  return result;
}

void sub_242D8ADD4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00726569666974;
  v4 = 0xE500000000000000;
  v5 = 0x656C797473;
  if (v2 != 1)
  {
    v5 = 0x72756769666E6F63;
    v4 = 0xED00006E6F697461;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E65644961746164;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_242D8AE48()
{
  v1 = 0x656C797473;
  if (*v0 != 1)
  {
    v1 = 0x72756769666E6F63;
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

uint64_t sub_242D8AEB8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_242D90514();
  *a1 = result;
  return result;
}

uint64_t sub_242D8AEE0(uint64_t a1)
{
  v2 = sub_242D8E88C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242D8AF1C(uint64_t a1)
{
  v2 = sub_242D8E88C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242D8AF58(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x72756769666E6F63;
  }

  else
  {
    v3 = 0x6E6F697461636F6CLL;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xED00006E6F697461;
  }

  if (*a2)
  {
    v5 = 0x72756769666E6F63;
  }

  else
  {
    v5 = 0x6E6F697461636F6CLL;
  }

  if (*a2)
  {
    v6 = 0xED00006E6F697461;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_242F06110();
  }

  return v8 & 1;
}

uint64_t sub_242D8B00C()
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t sub_242D8B09C()
{
  sub_242F04DD0();
}

uint64_t sub_242D8B118()
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

void sub_242D8B1B0(uint64_t *a1@<X8>)
{
  v2 = 0x6E6F697461636F6CLL;
  if (*v1)
  {
    v2 = 0x72756769666E6F63;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xED00006E6F697461;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_242D8B1FC()
{
  if (*v0)
  {
    return 0x72756769666E6F63;
  }

  else
  {
    return 0x6E6F697461636F6CLL;
  }
}

uint64_t sub_242D8B250(uint64_t a1)
{
  v2 = sub_242D8E5DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242D8B28C(uint64_t a1)
{
  v2 = sub_242D8E5DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242D8B2C8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000017;
  }

  else
  {
    v3 = 0x696669746E656469;
  }

  if (v2)
  {
    v4 = 0xEA00000000007265;
  }

  else
  {
    v4 = 0x8000000242F57AC0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000017;
  }

  else
  {
    v5 = 0x696669746E656469;
  }

  if (*a2)
  {
    v6 = 0x8000000242F57AC0;
  }

  else
  {
    v6 = 0xEA00000000007265;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_242F06110();
  }

  return v8 & 1;
}

uint64_t sub_242D8B378()
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t sub_242D8B404()
{
  sub_242F04DD0();
}

uint64_t sub_242D8B47C()
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

void sub_242D8B510(unint64_t *a1@<X8>)
{
  v2 = 0x8000000242F57AC0;
  v3 = 0x696669746E656469;
  if (*v1)
  {
    v3 = 0xD000000000000017;
  }

  else
  {
    v2 = 0xEA00000000007265;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_242D8B558()
{
  if (*v0)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_242D8B5A8(uint64_t a1)
{
  v2 = sub_242D8E838();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242D8B5E4(uint64_t a1)
{
  v2 = sub_242D8E838();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242D8B620(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E65644961746164;
  }

  else
  {
    v3 = 0x696669746E656469;
  }

  if (v2)
  {
    v4 = 0xEA00000000007265;
  }

  else
  {
    v4 = 0xEE00726569666974;
  }

  if (*a2)
  {
    v5 = 0x6E65644961746164;
  }

  else
  {
    v5 = 0x696669746E656469;
  }

  if (*a2)
  {
    v6 = 0xEE00726569666974;
  }

  else
  {
    v6 = 0xEA00000000007265;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_242F06110();
  }

  return v8 & 1;
}

uint64_t sub_242D8B6D8()
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t sub_242D8B76C()
{
  sub_242F04DD0();
}

uint64_t sub_242D8B7EC()
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

void sub_242D8B888(uint64_t *a1@<X8>)
{
  v2 = 0x696669746E656469;
  if (*v1)
  {
    v2 = 0x6E65644961746164;
  }

  v3 = 0xEA00000000007265;
  if (*v1)
  {
    v3 = 0xEE00726569666974;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_242D8B8D8()
{
  if (*v0)
  {
    return 0x6E65644961746164;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_242D8B930(uint64_t a1)
{
  v2 = sub_242D8E7B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242D8B96C(uint64_t a1)
{
  v2 = sub_242D8E7B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242D8B9A8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E65644961746164;
  }

  else
  {
    v3 = 1701869940;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xEE00726569666974;
  }

  if (*a2)
  {
    v5 = 0x6E65644961746164;
  }

  else
  {
    v5 = 1701869940;
  }

  if (*a2)
  {
    v6 = 0xEE00726569666974;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_242F06110();
  }

  return v8 & 1;
}

uint64_t sub_242D8BA54()
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t sub_242D8BADC()
{
  sub_242F04DD0();
}

uint64_t sub_242D8BB50()
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

void sub_242D8BBE0(uint64_t *a1@<X8>)
{
  v2 = 1701869940;
  if (*v1)
  {
    v2 = 0x6E65644961746164;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xEE00726569666974;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_242D8BC24()
{
  if (*v0)
  {
    return 0x6E65644961746164;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_242D8BC70(uint64_t a1)
{
  v2 = sub_242D8E6E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242D8BCAC(uint64_t a1)
{
  v2 = sub_242D8E6E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Instrument.Kind.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v81 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4D20);
  v78 = *(v3 - 8);
  v79 = v3;
  MEMORY[0x28223BE20](v3);
  v85 = &v67 - v4;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4D28);
  v80 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v84 = &v67 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4D30);
  v76 = *(v6 - 8);
  v77 = v6;
  MEMORY[0x28223BE20](v6);
  v83 = &v67 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4D38);
  v73 = *(v8 - 8);
  v74 = v8;
  MEMORY[0x28223BE20](v8);
  v82 = &v67 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4D40);
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v67 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4D48);
  v70 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v67 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4D50);
  v86 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v67 - v17;
  v19 = a1[3];
  v92 = a1;
  __swift_project_boxed_opaque_existential_2Tm(a1, v19);
  sub_242D8E588();
  v20 = v87;
  sub_242F06480();
  if (v20)
  {
    goto LABEL_2;
  }

  v67 = v13;
  v68 = v12;
  v23 = v82;
  v24 = v83;
  v87 = 0;
  v25 = v84;
  v26 = v85;
  v27 = sub_242F05E10();
  if (!*(v27 + 16))
  {

    v31 = sub_242F05B10();
    v87 = v16;
    v32 = v31;
    swift_allocError();
    v34 = v33;
    v35 = v92;
    __swift_project_boxed_opaque_existential_2Tm(v92, v92[3]);
    sub_242F06450();
    sub_242F05AF0();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84168], v32);
    swift_willThrow();
    (*(v86 + 8))(v18, v87);
    v21 = v35;
    return __swift_destroy_boxed_opaque_existential_2Tm(v21);
  }

  v69 = v18;
  v28 = *(v27 + 32);

  if (v28 > 3)
  {
    v36 = v69;
    if (v28 > 5)
    {
      v37 = v81;
      if (v28 == 6)
      {
        (*(v86 + 8))(v69, v16);
        sub_242D8E6B0(v91);
LABEL_35:
        memcpy(v37, v91, 0x238uLL);
        goto LABEL_2;
      }

      LOBYTE(v89[0]) = 7;
      sub_242D8E5DC();
      v46 = v87;
      sub_242F05D10();
      if (!v46)
      {
        v90 = 1;
        sub_242D8E630();
        v53 = v79;
        sub_242F05E00();
        v54 = (v86 + 8);
        (*(v78 + 8))(v26, v53);
        (*v54)(v36, v16);
        v89[10] = *&v88[160];
        v89[11] = *&v88[176];
        v89[12] = *&v88[192];
        v89[6] = *&v88[96];
        v89[7] = *&v88[112];
        v89[8] = *&v88[128];
        v89[9] = *&v88[144];
        v89[2] = *&v88[32];
        v89[3] = *&v88[48];
        v89[4] = *&v88[64];
        v89[5] = *&v88[80];
        v89[0] = *v88;
        v89[1] = *&v88[16];
        sub_242D8E684(v89);
        goto LABEL_32;
      }
    }

    else
    {
      v37 = v81;
      if (v28 == 4)
      {
        LOBYTE(v89[0]) = 4;
        sub_242D8E7B8();
        v38 = v87;
        sub_242F05D10();
        if (!v38)
        {
          v88[0] = 1;
          sub_242C8AC7C();
          v39 = v77;
          sub_242F05E00();
          v55 = v89[0];
          v88[0] = 0;
          v56 = sub_242F05DA0();
          v57 = v24;
          v66 = v65;
          (*(v76 + 8))(v57, v39);
          (*(v86 + 8))(v69, v16);
          *&v89[0] = v56;
          *(&v89[0] + 1) = v66;
          LOBYTE(v89[1]) = v55;
          sub_242D8E80C(v89);
LABEL_32:
          memcpy(v91, v89, 0x238uLL);
          goto LABEL_35;
        }
      }

      else
      {
        LOBYTE(v89[0]) = 5;
        sub_242D8E6E4();
        v42 = v87;
        sub_242F05D10();
        if (!v42)
        {
          v88[0] = 0;
          sub_242D8E738();
          v43 = v25;
          v44 = v75;
          sub_242F05E00();
          v58 = v16;
          v59 = v44;
          LOBYTE(v44) = v89[0];
          v90 = 1;
          sub_242C8AC7C();
          sub_242F05D90();
          v60 = (v86 + 8);
          (*(v80 + 8))(v43, v59);
          (*v60)(v36, v58);
          LOBYTE(v89[0]) = v44;
          BYTE1(v89[0]) = v88[0];
          sub_242D8E78C(v89);
          goto LABEL_32;
        }
      }
    }

    (*(v86 + 8))(v36, v16);
    goto LABEL_2;
  }

  v29 = v87;
  if (v28 > 1)
  {
    if (v28 == 2)
    {
      LOBYTE(v89[0]) = 2;
      sub_242D8E88C();
      v40 = v68;
      v30 = v69;
      sub_242F05D10();
      if (!v29)
      {
        v90 = 2;
        sub_242D8E8E0();
        v47 = v72;
        sub_242F05E00();
        v48 = (v86 + 8);
        (*(v71 + 8))(v40, v47);
        (*v48)(v69, v16);
        memcpy(v89, v88, 0x200uLL);
        sub_242D7CF4C(v89);
        goto LABEL_33;
      }
    }

    else
    {
      LOBYTE(v89[0]) = 3;
      sub_242D8E838();
      v45 = v23;
      v30 = v69;
      sub_242F05D10();
      if (!v29)
      {
        LOBYTE(v89[0]) = 0;
        v51 = v74;
        v52 = sub_242F05DA0();
        v63 = v62;
        v87 = v52;
        v90 = 1;
        sub_242D48228();
        sub_242F05D90();
        v64 = v86;
        (*(v73 + 8))(v45, v51);
        (*(v64 + 8))(v69, v16);
        *&v89[0] = v87;
        *(&v89[0] + 1) = v63;
        *&v89[1] = *v88;
        sub_242CFB420(v89);
        goto LABEL_33;
      }
    }

    goto LABEL_17;
  }

  if (!v28)
  {
    LOBYTE(v89[0]) = 0;
    v30 = v69;
    sub_242F05D00();
    if (!v29)
    {
      __swift_mutable_project_boxed_opaque_existential_1(v88, *&v88[24]);
      sub_242D8E9DC();
      sub_242F05F80();
      (*(v86 + 8))(v69, v16);
      LOBYTE(v89[0]) = v90;
      sub_242D8EA30(v89);
      __swift_destroy_boxed_opaque_existential_2Tm(v88);
LABEL_33:
      v61 = v89;
      goto LABEL_34;
    }

LABEL_17:
    (*(v86 + 8))(v30, v16);
    goto LABEL_2;
  }

  LOBYTE(v89[0]) = 1;
  sub_242D8E934();
  v41 = v69;
  sub_242F05D10();
  if (!v29)
  {
    v90 = 3;
    sub_242D8E988();
    v49 = v67;
    sub_242F05E00();
    v50 = (v86 + 8);
    (*(v70 + 8))(v15, v49);
    (*v50)(v41, v16);
    memcpy(v88, v89, sizeof(v88));
    sub_242D7CE84(v88);
    v61 = v88;
LABEL_34:
    memcpy(v91, v61, 0x238uLL);
    v37 = v81;
    goto LABEL_35;
  }

  (*(v86 + 8))(v41, v16);
LABEL_2:
  v21 = v92;
  return __swift_destroy_boxed_opaque_existential_2Tm(v21);
}

uint64_t Instrument.Kind.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4DB8);
  v71 = *(v2 - 8);
  v72 = v2;
  MEMORY[0x28223BE20](v2);
  v68 = &v57 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4DC0);
  v69 = *(v4 - 8);
  v70 = v4;
  MEMORY[0x28223BE20](v4);
  v67 = &v57 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4DC8);
  v65 = *(v6 - 8);
  v66 = v6;
  MEMORY[0x28223BE20](v6);
  v63 = &v57 - v7;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4DD0);
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v61 = &v57 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4DD8);
  v59 = *(v9 - 8);
  v60 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v57 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4DE0);
  v58 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v57 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4DE8);
  v16 = *(v15 - 8);
  v75 = v15;
  v76 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v57 - v17;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D8E588();
  v19 = v18;
  sub_242F064C0();
  memcpy(v78, v73, 0x238uLL);
  v20 = sub_242C9E788(v78);
  if (v20 > 3)
  {
    if (v20 > 5)
    {
      v32 = v75;
      if (v20 == 7)
      {
        v33 = sub_242C556B4(v78);
        LOBYTE(v77[0]) = 7;
        sub_242D8E5DC();
        v34 = v68;
        sub_242F05E40();
        v77[0] = *v33;
        v35 = v33[1];
        v36 = v33[2];
        v37 = v33[4];
        v77[3] = v33[3];
        v77[4] = v37;
        v77[1] = v35;
        v77[2] = v36;
        v38 = v33[5];
        v39 = v33[6];
        v40 = v33[8];
        v77[7] = v33[7];
        v77[8] = v40;
        v77[5] = v38;
        v77[6] = v39;
        v41 = v33[9];
        v42 = v33[10];
        v43 = v33[12];
        v77[11] = v33[11];
        v77[12] = v43;
        v77[9] = v41;
        v77[10] = v42;
        v79 = 1;
        sub_242D8EA58();
        v44 = v72;
        sub_242F05F20();
        (*(v71 + 8))(v34, v44);
      }

      else
      {
        if (v20 != 8)
        {
          sub_242C556B4(v78);
          result = sub_242F05C60();
          __break(1u);
          return result;
        }

        LOBYTE(v77[0]) = 6;
        sub_242F05ED0();
      }

      return (*(v76 + 8))(v19, v32);
    }

    else
    {
      v24 = v75;
      if (v20 == 4)
      {
        v25 = *(sub_242C556B4(v78) + 16);
        LOBYTE(v77[0]) = 4;
        sub_242D8E7B8();
        v26 = v63;
        sub_242F05E40();
        LOBYTE(v77[0]) = 0;
        v27 = v66;
        v28 = v74;
        sub_242F05EC0();
        if (!v28)
        {
          LOBYTE(v77[0]) = v25;
          v79 = 1;
          sub_242C8AC28();
          sub_242F05F20();
        }

        (*(v65 + 8))(v26, v27);
      }

      else
      {
        v46 = sub_242C556B4(v78);
        v47 = *v46;
        v48 = v46[1];
        LOBYTE(v77[0]) = 5;
        sub_242D8E6E4();
        v49 = v67;
        sub_242F05E40();
        LOBYTE(v77[0]) = v47;
        v79 = 0;
        sub_242D8EAAC();
        v50 = v70;
        v51 = v74;
        sub_242F05F20();
        if (!v51 && v48 != 86)
        {
          LOBYTE(v77[0]) = v48;
          v79 = 1;
          sub_242C8AC28();
          sub_242F05F20();
        }

        (*(v69 + 8))(v49, v50);
      }

      return (*(v76 + 8))(v19, v24);
    }
  }

  else
  {
    if (v20 <= 1)
    {
      if (!v20)
      {
        v21 = *sub_242C556B4(v78);
        v79 = 0;
        v22 = v75;
        sub_242F05E30();
        v79 = v21;
        __swift_mutable_project_boxed_opaque_existential_1(v77, *(&v77[1] + 1));
        sub_242D8EBA8();
        sub_242F05FA0();
        (*(v76 + 8))(v18, v22);
        return __swift_destroy_boxed_opaque_existential_2Tm(v77);
      }

      v45 = sub_242C556B4(v78);
      LOBYTE(v77[0]) = 1;
      sub_242D8E934();
      v30 = v75;
      sub_242F05E40();
      memcpy(v77, v45, 0x238uLL);
      v79 = 3;
      sub_242D8EB54();
      sub_242F05F20();
      (*(v58 + 8))(v14, v12);
      return (*(v76 + 8))(v18, v30);
    }

    if (v20 == 2)
    {
      v29 = sub_242C556B4(v78);
      LOBYTE(v77[0]) = 2;
      sub_242D8E88C();
      v30 = v75;
      sub_242F05E40();
      memcpy(v77, v29, 0x200uLL);
      v79 = 2;
      sub_242D8EB00();
      v31 = v60;
      sub_242F05F20();
      (*(v59 + 8))(v11, v31);
      return (*(v76 + 8))(v18, v30);
    }

    v52 = *(sub_242C556B4(v78) + 16);
    LOBYTE(v77[0]) = 3;
    sub_242D8E838();
    v53 = v61;
    v54 = v75;
    sub_242F05E40();
    LOBYTE(v77[0]) = 0;
    v55 = v64;
    v56 = v74;
    sub_242F05EC0();
    if (!v56)
    {
      if (v52)
      {
        *&v77[0] = v52;
        v79 = 1;
        sub_242D48180();
        sub_242F05F20();
      }
    }

    (*(v62 + 8))(v53, v55);
    return (*(v76 + 8))(v18, v54);
  }
}

uint64_t _s14CarPlayAssetUI10InstrumentV4KindO2eeoiySbAE_AEtFZ_0(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v4 = v1;
  memcpy(__dst, v1, sizeof(__dst));
  memcpy(__src, v3, sizeof(__src));
  memcpy(v92, v4, sizeof(v92));
  memcpy(v93, v3, sizeof(v93));
  memcpy(v94, v4, sizeof(v94));
  v5 = sub_242C9E788(v94);
  if (v5 <= 3)
  {
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        v44 = sub_242C556B4(v94);
        v45 = *v44;
        v46 = v44[1];
        v47 = v44[2];
        memcpy(v89, __src, sizeof(v89));
        if (sub_242C9E788(v89) != 3)
        {
LABEL_76:
          memcpy(v88, __dst, 0x238uLL);
          sub_242C556B4(v88);

LABEL_80:

          goto LABEL_81;
        }

        v48 = sub_242C556B4(v89);
        v49 = v48[2];
        if ((v45 != *v48 || v46 != v48[1]) && (sub_242F06110() & 1) == 0)
        {
          goto LABEL_86;
        }

        if (v47)
        {
          if (v49)
          {
            sub_242CF6BA4(__src, v88);
            sub_242CF6BA4(__dst, v88);
            swift_bridgeObjectRetain_n();

            v50 = sub_242C72BB4(v47, v49);
            sub_242C6D138(v92, &qword_27ECF4F88);
            swift_bridgeObjectRelease_n();
            goto LABEL_109;
          }

          sub_242CF6BA4(__src, v88);
          sub_242CF6BA4(__dst, v88);
          swift_bridgeObjectRetain_n();
          sub_242C6D138(v92, &qword_27ECF4F88);
        }

        else
        {
          sub_242CF6BA4(__src, v88);
          sub_242CF6BA4(__dst, v88);

          sub_242C6D138(v92, &qword_27ECF4F88);
          if (!v49)
          {

            goto LABEL_110;
          }
        }

        goto LABEL_84;
      }

      v21 = sub_242C556B4(v94);
      memcpy(v89, __src, sizeof(v89));
      if (sub_242C9E788(v89) == 2)
      {
        v22 = sub_242C556B4(v89);
        memcpy(v74, v21, 0x200uLL);
        memcpy(v73, v22, 0x200uLL);
        sub_242CF6BA4(__src, v88);
        sub_242CF6BA4(__dst, v88);
        sub_242CF6BA4(__src, v88);
        sub_242CF6BA4(__dst, v88);
        v23 = _s14CarPlayAssetUI10InstrumentV22IndicatorConfigurationV2eeoiySbAE_AEtFZ_0(v74, v73);
LABEL_47:
        v14 = v23;
        sub_242C6D138(v92, &qword_27ECF4F88);
        sub_242CF6C60(__src);
        sub_242CF6C60(__dst);
        return v14 & 1;
      }

      memcpy(v88, __dst, 0x238uLL);
      v61 = sub_242C556B4(v88);
      v62 = &unk_27ECF4730;
    }

    else
    {
      if (!v5)
      {
        v15 = *sub_242C556B4(v94);
        memcpy(v89, __src, sizeof(v89));
        if (sub_242C9E788(v89))
        {
          goto LABEL_81;
        }

        v16 = *sub_242C556B4(v89);
        if (v15)
        {
          v17 = 0x647261436E727574;
        }

        else
        {
          v17 = 7364973;
        }

        if (v15)
        {
          v18 = 0xE800000000000000;
        }

        else
        {
          v18 = 0xE300000000000000;
        }

        if (v16)
        {
          v19 = 0x647261436E727574;
        }

        else
        {
          v19 = 7364973;
        }

        if (v16)
        {
          v20 = 0xE800000000000000;
        }

        else
        {
          v20 = 0xE300000000000000;
        }

        if (v17 == v19 && v18 == v20)
        {

          goto LABEL_56;
        }

        v67 = sub_242F06110();

        sub_242C6D138(v92, &qword_27ECF4F88);
        if ((v67 & 1) == 0)
        {
          goto LABEL_84;
        }

LABEL_110:
        v14 = 1;
        return v14 & 1;
      }

      v42 = sub_242C556B4(v94);
      memcpy(v89, __src, sizeof(v89));
      if (sub_242C9E788(v89) == 1)
      {
        v43 = sub_242C556B4(v89);
        memcpy(v88, v42, 0x238uLL);
        memcpy(v74, v43, 0x238uLL);
        sub_242CF6BA4(__src, v73);
        sub_242CF6BA4(__dst, v73);
        sub_242CF6BA4(__src, v73);
        sub_242CF6BA4(__dst, v73);
        v23 = static Instrument.GaugeConfiguration.== infix(_:_:)(v88);
        goto LABEL_47;
      }

      memcpy(v88, __dst, 0x238uLL);
      v61 = sub_242C556B4(v88);
      v62 = &unk_27ECF4728;
    }

LABEL_78:
    sub_242CA321C(v61, v74, v62);
    goto LABEL_81;
  }

  if (v5 > 5)
  {
    if (v5 != 6)
    {
      if (v5 == 7)
      {
        v6 = sub_242C556B4(v94);
        memcpy(v89, __src, sizeof(v89));
        if (sub_242C9E788(v89) == 7)
        {
          v7 = sub_242C556B4(v89);
          v73[9] = v6[9];
          v73[10] = v6[10];
          v73[11] = v6[11];
          v73[12] = v6[12];
          v73[5] = v6[5];
          v73[6] = v6[6];
          v73[7] = v6[7];
          v73[8] = v6[8];
          v73[1] = v6[1];
          v73[2] = v6[2];
          v73[3] = v6[3];
          v73[4] = v6[4];
          v73[0] = *v6;
          v8 = v7[11];
          v85 = v7[10];
          v86 = v8;
          v87 = v7[12];
          v9 = v7[7];
          v81 = v7[6];
          v82 = v9;
          v10 = v7[8];
          v84 = v7[9];
          v83 = v10;
          v11 = v7[3];
          v77 = v7[2];
          v78 = v11;
          v12 = v7[4];
          v80 = v7[5];
          v79 = v12;
          v13 = *v7;
          v76 = v7[1];
          v75 = v13;
          sub_242CF6BA4(__src, v88);
          sub_242CF6BA4(__dst, v88);
          sub_242CF6BA4(__src, v88);
          sub_242CF6BA4(__dst, v88);
          v14 = _s14CarPlayAssetUI10InstrumentV15PopoverLocationO2eeoiySbAE_AEtFZ_0(v73, &v75);
          sub_242C6D138(v92, &qword_27ECF4F88);
          v74[10] = v85;
          v74[11] = v86;
          v74[12] = v87;
          v74[6] = v81;
          v74[7] = v82;
          v74[8] = v83;
          v74[9] = v84;
          v74[2] = v77;
          v74[3] = v78;
          v74[4] = v79;
          v74[5] = v80;
          v74[0] = v75;
          v74[1] = v76;
          sub_242D906CC(v74);
          v88[10] = v73[10];
          v88[11] = v73[11];
          v88[12] = v73[12];
          v88[6] = v73[6];
          v88[7] = v73[7];
          v88[9] = v73[9];
          v88[8] = v73[8];
          v88[2] = v73[2];
          v88[3] = v73[3];
          v88[5] = v73[5];
          v88[4] = v73[4];
          v88[1] = v73[1];
          v88[0] = v73[0];
          sub_242D906CC(v88);
          return v14 & 1;
        }

        memcpy(v88, __dst, 0x238uLL);
        v61 = sub_242C556B4(v88);
        v62 = &unk_27ECF4F80;
        goto LABEL_78;
      }

      memcpy(v89, __src, sizeof(v89));
      if (sub_242C9E788(v89) == 8)
      {
LABEL_56:
        sub_242C6D138(v92, &qword_27ECF4F88);
        v14 = 1;
        return v14 & 1;
      }

LABEL_81:
      v63 = __src;
      v64 = v89;
LABEL_82:
      sub_242CF6BA4(v63, v64);
LABEL_83:
      sub_242C6D138(v92, &qword_27ECF4F88);
LABEL_84:
      v14 = 0;
      return v14 & 1;
    }

    v34 = sub_242C556B4(v94);
    v35 = *v34;
    v36 = v34[1];
    v38 = v34[2];
    v37 = v34[3];
    memcpy(v89, __src, sizeof(v89));
    if (sub_242C9E788(v89) == 6)
    {
      v39 = sub_242C556B4(v89);
      v41 = v39[2];
      v40 = v39[3];
      if (v35 == *v39 && v36 == v39[1] || (sub_242F06110() & 1) != 0)
      {
        if (!v37)
        {
          sub_242CF6BA4(__src, v88);
          sub_242CF6BA4(__dst, v88);
          sub_242CF6BA4(__src, v88);
          sub_242CF6BA4(__dst, v88);
          sub_242C6D138(v92, &qword_27ECF4F88);
          sub_242CF6C60(__src);
          sub_242CF6C60(__dst);
          if (v40)
          {
            goto LABEL_84;
          }

          goto LABEL_110;
        }

        if (v40)
        {
          if (v38 == v41 && v37 == v40)
          {
            sub_242CF6BA4(__src, v88);
            sub_242CF6BA4(__dst, v88);
            goto LABEL_56;
          }

          v72 = sub_242F06110();
          sub_242CF6BA4(__src, v88);
          sub_242CF6BA4(__dst, v88);
          sub_242C6D138(v92, &qword_27ECF4F88);
          if ((v72 & 1) == 0)
          {
            goto LABEL_84;
          }

          goto LABEL_110;
        }
      }

LABEL_86:
      sub_242CF6BA4(__src, v88);
      v63 = __dst;
      v64 = v88;
      goto LABEL_82;
    }

    goto LABEL_76;
  }

  if (v5 != 4)
  {
    v51 = sub_242C556B4(v94);
    v52 = *v51;
    v53 = v51[1];
    memcpy(v89, __src, sizeof(v89));
    if (sub_242C9E788(v89) != 5)
    {
      goto LABEL_81;
    }

    v54 = sub_242C556B4(v89);
    v55 = *v54;
    v56 = v54[1];
    if (v52)
    {
      v57 = 0x676E6974746573;
    }

    else
    {
      v57 = 0x6172656D6163;
    }

    if (v52)
    {
      v58 = 0xE700000000000000;
    }

    else
    {
      v58 = 0xE600000000000000;
    }

    if (v55)
    {
      v59 = 0x676E6974746573;
    }

    else
    {
      v59 = 0x6172656D6163;
    }

    if (v55)
    {
      v60 = 0xE700000000000000;
    }

    else
    {
      v60 = 0xE600000000000000;
    }

    if (v57 == v59 && v58 == v60)
    {
    }

    else
    {
      v66 = sub_242F06110();

      if ((v66 & 1) == 0)
      {
        goto LABEL_83;
      }
    }

    if (v53 == 86)
    {
      sub_242C6D138(v92, &qword_27ECF4F88);
      if (v56 != 86)
      {
        goto LABEL_84;
      }

      goto LABEL_110;
    }

    if (v56 == 86)
    {
      goto LABEL_83;
    }

    LOBYTE(v88[0]) = v53;
    LOBYTE(v74[0]) = v56;
    v68 = InstrumentDataIdentifier.rawValue.getter();
    v70 = v69;
    if (v68 == InstrumentDataIdentifier.rawValue.getter() && v70 == v71)
    {
      sub_242C6D138(v92, &qword_27ECF4F88);

      v14 = 1;
      return v14 & 1;
    }

    v50 = sub_242F06110();
    sub_242C6D138(v92, &qword_27ECF4F88);

LABEL_109:

    if ((v50 & 1) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_110;
  }

  v24 = sub_242C556B4(v94);
  v25 = *v24;
  v26 = *(v24 + 8);
  v27 = *(v24 + 16);
  memcpy(v89, __src, sizeof(v89));
  if (sub_242C9E788(v89) != 4)
  {
    memcpy(v88, __dst, 0x238uLL);
    sub_242C556B4(v88);
    goto LABEL_80;
  }

  v28 = sub_242C556B4(v89);
  v29 = *(v28 + 16);
  if ((v25 != *v28 || v26 != *(v28 + 8)) && (sub_242F06110() & 1) == 0)
  {
    goto LABEL_86;
  }

  LOBYTE(v74[0]) = v27;
  LOBYTE(v73[0]) = v29;
  v30 = InstrumentDataIdentifier.rawValue.getter();
  v32 = v31;
  if (v30 == InstrumentDataIdentifier.rawValue.getter() && v32 == v33)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_242F06110();
  }

  sub_242CF6BA4(__src, v88);
  sub_242CF6BA4(__dst, v88);
  sub_242C6D138(v92, &qword_27ECF4F88);

  return v14 & 1;
}

uint64_t sub_242D8E1EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2168);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_242D8E25C()
{
  result = qword_27ECF4CB0;
  if (!qword_27ECF4CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4CB0);
  }

  return result;
}

unint64_t sub_242D8E318()
{
  result = qword_27ECF4CE0;
  if (!qword_27ECF4CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4CE0);
  }

  return result;
}

unint64_t sub_242D8E36C()
{
  result = qword_27ECF4CE8;
  if (!qword_27ECF4CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4CE8);
  }

  return result;
}

unint64_t sub_242D8E3C0()
{
  result = qword_27ECF4CF0;
  if (!qword_27ECF4CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4CF0);
  }

  return result;
}

uint64_t sub_242D8E414(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_242D8E47C()
{
  result = qword_27ECF4D10;
  if (!qword_27ECF4D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4D10);
  }

  return result;
}

unint64_t sub_242D8E4D0()
{
  result = qword_27ECF4D18;
  if (!qword_27ECF4D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4D18);
  }

  return result;
}

uint64_t sub_242D8E524(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Instrument();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_242D8E588()
{
  result = qword_27ECF4D58;
  if (!qword_27ECF4D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4D58);
  }

  return result;
}

unint64_t sub_242D8E5DC()
{
  result = qword_27ECF4D60;
  if (!qword_27ECF4D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4D60);
  }

  return result;
}

unint64_t sub_242D8E630()
{
  result = qword_27ECF4D68;
  if (!qword_27ECF4D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4D68);
  }

  return result;
}

void *sub_242D8E684(void *result)
{
  v1 = result[67] & 0xFE00000000000007;
  v2 = result[69] & 1 | 0x7000000000000000;
  result[64] &= 7uLL;
  result[67] = v1;
  result[69] = v2;
  return result;
}

void sub_242D8E6B0(void *a1)
{
  bzero(a1, 0x228uLL);
  a1[69] = 0x8000000000000000;
  a1[70] = 0;
}

unint64_t sub_242D8E6E4()
{
  result = qword_27ECF4D70;
  if (!qword_27ECF4D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4D70);
  }

  return result;
}

unint64_t sub_242D8E738()
{
  result = qword_27ECF4D78;
  if (!qword_27ECF4D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4D78);
  }

  return result;
}

void *sub_242D8E78C(void *result)
{
  v1 = result[67] & 0xFE00000000000007;
  v2 = result[69] & 1 | 0x5000000000000000;
  result[64] &= 7uLL;
  result[67] = v1;
  result[69] = v2;
  return result;
}

unint64_t sub_242D8E7B8()
{
  result = qword_27ECF4D80;
  if (!qword_27ECF4D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4D80);
  }

  return result;
}

void *sub_242D8E80C(void *result)
{
  v1 = result[67] & 0xFE00000000000007;
  v2 = result[69] & 1 | 0x4000000000000000;
  result[64] &= 7uLL;
  result[67] = v1;
  result[69] = v2;
  return result;
}

unint64_t sub_242D8E838()
{
  result = qword_27ECF4D88;
  if (!qword_27ECF4D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4D88);
  }

  return result;
}

unint64_t sub_242D8E88C()
{
  result = qword_27ECF4D90;
  if (!qword_27ECF4D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4D90);
  }

  return result;
}

unint64_t sub_242D8E8E0()
{
  result = qword_27ECF4D98;
  if (!qword_27ECF4D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4D98);
  }

  return result;
}

unint64_t sub_242D8E934()
{
  result = qword_27ECF4DA0;
  if (!qword_27ECF4DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4DA0);
  }

  return result;
}

unint64_t sub_242D8E988()
{
  result = qword_27ECF4DA8;
  if (!qword_27ECF4DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4DA8);
  }

  return result;
}

unint64_t sub_242D8E9DC()
{
  result = qword_27ECF4DB0;
  if (!qword_27ECF4DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4DB0);
  }

  return result;
}

void *sub_242D8EA30(void *result)
{
  v1 = result[67] & 0xFE00000000000007;
  v2 = result[69] & 1;
  result[64] &= 7uLL;
  result[67] = v1;
  result[69] = v2;
  return result;
}

unint64_t sub_242D8EA58()
{
  result = qword_27ECF4DF0;
  if (!qword_27ECF4DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4DF0);
  }

  return result;
}

unint64_t sub_242D8EAAC()
{
  result = qword_27ECF4DF8;
  if (!qword_27ECF4DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4DF8);
  }

  return result;
}

unint64_t sub_242D8EB00()
{
  result = qword_27ECF4E00;
  if (!qword_27ECF4E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4E00);
  }

  return result;
}

unint64_t sub_242D8EB54()
{
  result = qword_27ECF4E08;
  if (!qword_27ECF4E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4E08);
  }

  return result;
}

unint64_t sub_242D8EBA8()
{
  result = qword_27ECF4E10;
  if (!qword_27ECF4E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4E10);
  }

  return result;
}

unint64_t sub_242D8EC44()
{
  result = qword_27ECF4E28;
  if (!qword_27ECF4E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4E28);
  }

  return result;
}

unint64_t sub_242D8ECE0()
{
  result = qword_27ECF4E40;
  if (!qword_27ECF4E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4E40);
  }

  return result;
}

unint64_t sub_242D8ED38()
{
  result = qword_27ECF4E48;
  if (!qword_27ECF4E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4E48);
  }

  return result;
}

unint64_t sub_242D8ED90()
{
  result = qword_27ECF4E50;
  if (!qword_27ECF4E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2168);
    sub_242CE3168(&qword_27ECF2258);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4E50);
  }

  return result;
}

unint64_t sub_242D8EE30()
{
  result = qword_27ECF4E58;
  if (!qword_27ECF4E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4E58);
  }

  return result;
}

unint64_t sub_242D8EE88()
{
  result = qword_27ECF4E60;
  if (!qword_27ECF4E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4E60);
  }

  return result;
}

unint64_t sub_242D8EEE0()
{
  result = qword_27ECF4E68;
  if (!qword_27ECF4E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4E68);
  }

  return result;
}

void sub_242D8EF5C()
{
  sub_242D8EFE0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_242D8EFE0()
{
  if (!qword_27ECF4E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2168);
    sub_242D8F0AC();
    sub_242D8F128(&qword_27ECF4D08);
    sub_242D8F128(&qword_27ECF2180);
    v0 = type metadata accessor for SkipEncode();
    if (!v1)
    {
      atomic_store(v0, &qword_27ECF4E80);
    }
  }
}

unint64_t sub_242D8F0AC()
{
  result = qword_27ECF4E88;
  if (!qword_27ECF4E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4E88);
  }

  return result;
}

uint64_t sub_242D8F128(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2168);
    sub_242CE3168(&qword_27ECF2158);
    sub_242CE3168(&qword_27ECF2160);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_242D8F1D8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 51))
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

uint64_t sub_242D8F220(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 50) = 0;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 51) = 1;
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

    *(result + 51) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14CarPlayAssetUI22DynamicAppearanceValueVyAA05ImageC0VGSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((v1 & 0x7E) != 0)
  {
    return 128 - (v1 & 0x7E | (v1 >> 7));
  }

  else
  {
    return 0;
  }
}

unint64_t get_enum_tag_for_layout_string_14CarPlayAssetUI10InstrumentV4KindO(uint64_t a1)
{
  v1 = *(a1 + 552);
  if (v1 >= 0)
  {
    return v1 >> 60;
  }

  else
  {
    return (*a1 + 8);
  }
}

uint64_t sub_242D8F2E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 568))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 512) >> 3;
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

double sub_242D8F330(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(a1 + 552) = 0u;
    *(a1 + 536) = 0u;
    *(a1 + 520) = 0u;
    *(a1 + 504) = 0u;
    *(a1 + 488) = 0u;
    *(a1 + 472) = 0u;
    *(a1 + 456) = 0u;
    *(a1 + 440) = 0u;
    *(a1 + 424) = 0u;
    *(a1 + 408) = 0u;
    *(a1 + 392) = 0u;
    *(a1 + 376) = 0u;
    *(a1 + 360) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 568) = 1;
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
      *(a1 + 480) = 0u;
      *(a1 + 496) = 0u;
      *(a1 + 448) = 0u;
      *(a1 + 464) = 0u;
      *(a1 + 416) = 0u;
      *(a1 + 432) = 0u;
      *(a1 + 384) = 0u;
      *(a1 + 400) = 0u;
      *(a1 + 352) = 0u;
      *(a1 + 368) = 0u;
      *(a1 + 320) = 0u;
      *(a1 + 336) = 0u;
      *(a1 + 288) = 0u;
      *(a1 + 304) = 0u;
      *(a1 + 256) = 0u;
      *(a1 + 272) = 0u;
      *(a1 + 224) = 0u;
      *(a1 + 240) = 0u;
      *(a1 + 192) = 0u;
      *(a1 + 208) = 0u;
      *(a1 + 160) = 0u;
      *(a1 + 176) = 0u;
      *(a1 + 128) = 0u;
      *(a1 + 144) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 512) = 8 * -a2;
      *(a1 + 520) = 0u;
      *(a1 + 536) = 0u;
      *(a1 + 552) = 0u;
      return result;
    }

    *(a1 + 568) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_242D8F458(void *a1, uint64_t a2)
{
  if (a2 < 8)
  {
    v3 = a1[67] & 0xFE00000000000007;
    v4 = a1[69] & 1 | (a2 << 60);
    a1[64] &= 7uLL;
    a1[67] = v3;
    a1[69] = v4;
  }

  else
  {
    *a1 = (a2 - 8);
    bzero(a1 + 1, 0x220uLL);
    a1[69] = 0x8000000000000000;
    a1[70] = 0;
  }
}

uint64_t getEnumTagSinglePayload for Instrument.Configuration.BlendMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_17;
  }

  if (a2 + 22 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 22) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 22;
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

      return (*a1 | (v4 << 8)) - 22;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v8 = v6 - 23;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Instrument.Configuration.BlendMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEA)
  {
    v4 = 0;
  }

  if (a2 > 0xE9)
  {
    v5 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Instrument.Configuration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Instrument.Configuration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_242D8F800()
{
  result = qword_27ECF4E90;
  if (!qword_27ECF4E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4E90);
  }

  return result;
}

unint64_t sub_242D8F858()
{
  result = qword_27ECF4E98;
  if (!qword_27ECF4E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4E98);
  }

  return result;
}

unint64_t sub_242D8F8B0()
{
  result = qword_27ECF4EA0;
  if (!qword_27ECF4EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4EA0);
  }

  return result;
}

unint64_t sub_242D8F908()
{
  result = qword_27ECF4EA8;
  if (!qword_27ECF4EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4EA8);
  }

  return result;
}

unint64_t sub_242D8F960()
{
  result = qword_27ECF4EB0;
  if (!qword_27ECF4EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4EB0);
  }

  return result;
}

unint64_t sub_242D8F9B8()
{
  result = qword_27ECF4EB8;
  if (!qword_27ECF4EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4EB8);
  }

  return result;
}

unint64_t sub_242D8FA10()
{
  result = qword_27ECF4EC0;
  if (!qword_27ECF4EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4EC0);
  }

  return result;
}

unint64_t sub_242D8FA68()
{
  result = qword_27ECF4EC8;
  if (!qword_27ECF4EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4EC8);
  }

  return result;
}

unint64_t sub_242D8FAC0()
{
  result = qword_27ECF4ED0;
  if (!qword_27ECF4ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4ED0);
  }

  return result;
}

unint64_t sub_242D8FB18()
{
  result = qword_27ECF4ED8;
  if (!qword_27ECF4ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4ED8);
  }

  return result;
}

unint64_t sub_242D8FB70()
{
  result = qword_27ECF4EE0;
  if (!qword_27ECF4EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4EE0);
  }

  return result;
}

unint64_t sub_242D8FBC8()
{
  result = qword_27ECF4EE8;
  if (!qword_27ECF4EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4EE8);
  }

  return result;
}

unint64_t sub_242D8FC20()
{
  result = qword_27ECF4EF0;
  if (!qword_27ECF4EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4EF0);
  }

  return result;
}

unint64_t sub_242D8FC78()
{
  result = qword_27ECF4EF8;
  if (!qword_27ECF4EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4EF8);
  }

  return result;
}

unint64_t sub_242D8FCD0()
{
  result = qword_27ECF4F00;
  if (!qword_27ECF4F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4F00);
  }

  return result;
}

unint64_t sub_242D8FD28()
{
  result = qword_27ECF4F08;
  if (!qword_27ECF4F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4F08);
  }

  return result;
}

unint64_t sub_242D8FD80()
{
  result = qword_27ECF4F10;
  if (!qword_27ECF4F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4F10);
  }

  return result;
}

unint64_t sub_242D8FDD8()
{
  result = qword_27ECF4F18;
  if (!qword_27ECF4F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4F18);
  }

  return result;
}

unint64_t sub_242D8FE30()
{
  result = qword_27ECF4F20;
  if (!qword_27ECF4F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4F20);
  }

  return result;
}

unint64_t sub_242D8FE88()
{
  result = qword_27ECF4F28;
  if (!qword_27ECF4F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4F28);
  }

  return result;
}

unint64_t sub_242D8FEE0()
{
  result = qword_27ECF4F30;
  if (!qword_27ECF4F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4F30);
  }

  return result;
}

unint64_t sub_242D8FF38()
{
  result = qword_27ECF4F38;
  if (!qword_27ECF4F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4F38);
  }

  return result;
}

unint64_t sub_242D8FF90()
{
  result = qword_27ECF4F40;
  if (!qword_27ECF4F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4F40);
  }

  return result;
}

unint64_t sub_242D8FFE8()
{
  result = qword_27ECF4F48;
  if (!qword_27ECF4F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4F48);
  }

  return result;
}

unint64_t sub_242D90040()
{
  result = qword_27ECF4F50;
  if (!qword_27ECF4F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4F50);
  }

  return result;
}

unint64_t sub_242D90098()
{
  result = qword_27ECF4F58;
  if (!qword_27ECF4F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4F58);
  }

  return result;
}

unint64_t sub_242D900F0()
{
  result = qword_27ECF4F60;
  if (!qword_27ECF4F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4F60);
  }

  return result;
}

uint64_t sub_242D90144(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000242F59ED0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574736973726570 && a2 == 0xEA0000000000746ELL || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x536F547370696C63 && a2 == 0xEC00000065706168 || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4449776F64616873 && a2 == 0xE800000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x646F4D646E656C62 && a2 == 0xE900000000000065)
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

uint64_t sub_242D90364(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461)
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

uint64_t sub_242D9047C()
{
  v0 = sub_242F05CD0();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_242D904C8()
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

uint64_t sub_242D90514()
{
  v0 = sub_242F05CD0();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_242D90560(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2168);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_242D905D0()
{
  result = qword_27ECF4F68;
  if (!qword_27ECF4F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4F68);
  }

  return result;
}

unint64_t sub_242D90624()
{
  result = qword_27ECF4F70;
  if (!qword_27ECF4F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4F70);
  }

  return result;
}

unint64_t sub_242D90678()
{
  result = qword_27ECF4F78;
  if (!qword_27ECF4F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4F78);
  }

  return result;
}

int64x2_t static NotificationSymbolConfiguration.centerConsoleDefault.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3F48);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_242F04430();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_242F04460();
  sub_242D5A3A0(v4);
  sub_242F04440();
  v6 = sub_242F04480();

  v7 = type metadata accessor for NotificationSymbolConfiguration(0);
  v8 = *(v7 + 28);
  v9 = *MEMORY[0x277CE1058];
  v10 = sub_242F04820();
  (*(*(v10 - 8) + 104))(a1 + v8, v9, v10);
  *a1 = v6;
  *(a1 + 8) = vdupq_n_s64(0x404E000000000000uLL);
  *(a1 + 24) = 0;
  v11 = (a1 + *(v7 + 32));
  *v11 = 0u;
  v11[1] = 0u;
  result = vdupq_n_s64(0x4044000000000000uLL);
  *(a1 + 32) = result;
  return result;
}

__n128 sub_242D908A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3F48);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v16 - v1;
  v3 = type metadata accessor for NotificationSymbolConfiguration(0);
  __swift_allocate_value_buffer(v3, qword_27ECF4F90);
  v4 = __swift_project_value_buffer(v3, qword_27ECF4F90);
  v5 = sub_242F04430();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  sub_242F04460();
  sub_242D5A3A0(v2);
  sub_242F04440();
  v6 = sub_242F04480();

  v7 = *(v3 + 28);
  v8 = *MEMORY[0x277CE1058];
  v9 = sub_242F04820();
  (*(*(v9 - 8) + 104))(v4 + v7, v8, v9);
  *v4 = v6;
  __asm { FMOV            V0.2D, #20.0 }

  *(v4 + 8) = result;
  *(v4 + 24) = 0;
  v15 = (v4 + *(v3 + 32));
  *v15 = 0u;
  v15[1] = 0u;
  *(v4 + 32) = result;
  return result;
}

double sub_242D90A38()
{
  v0 = type metadata accessor for FancyNotificationConfiguration.FancyButtonConfiguration(0);
  __swift_allocate_value_buffer(v0, qword_27ECF4FA8);
  v1 = __swift_project_value_buffer(v0, qword_27ECF4FA8);
  v2 = [objc_opt_self() _carSystemQuaternaryColor];
  v3 = sub_242F047D0();
  sub_242F044A0();
  v4 = sub_242F04420();

  sub_242F044B0();
  sub_242F04440();
  v5 = sub_242F04480();

  if (qword_27ECEF1D0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for NotificationSymbolConfiguration(0);
  v7 = __swift_project_value_buffer(v6, qword_27ECF4F90);
  sub_242D92BE4(v7, v1 + *(v0 + 56), type metadata accessor for NotificationSymbolConfiguration);
  __asm { FMOV            V0.2D, #10.0 }

  *(v1 + 32) = _Q0;
  *v1 = xmmword_242F2D1B0;
  *(v1 + 48) = 0x407A400000000000;
  *(v1 + 56) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  result = 20.0;
  *(v1 + 64) = xmmword_242F2D1C0;
  return result;
}

__n128 sub_242D90B84@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_242F04490();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_242F04410();
  sub_242F04420();

  v6 = *MEMORY[0x277CE0A10];
  v7 = *(v3 + 104);
  v7(v5, v6, v2);
  v8 = sub_242F044C0();

  v9 = *(v3 + 8);
  v9(v5, v2);
  sub_242F04410();
  v7(v5, v6, v2);
  v10 = sub_242F044C0();

  v9(v5, v2);
  v11 = sub_242F04210();
  v12 = MEMORY[0x277CE04F8];
  v13 = MEMORY[0x277CE04E8];
  *(a1 + 40) = MEMORY[0x277CE04F8];
  *(a1 + 48) = v13;
  *(a1 + 16) = v11;
  v14 = sub_242F04210();
  *(a1 + 80) = v12;
  *(a1 + 88) = v13;
  *(a1 + 56) = v14;
  *a1 = v8;
  *(a1 + 8) = v10;
  __asm
  {
    FMOV            V0.2D, #15.0
    FMOV            V1.2D, #5.0
  }

  *(a1 + 96) = result;
  *(a1 + 112) = _Q1;
  *(a1 + 128) = 0;
  *(a1 + 136) = 4;
  *(a1 + 144) = 1;
  *(a1 + 152) = 0x3FE999999999999ALL;
  return result;
}

int64x2_t sub_242D90D58()
{
  v0 = sub_242F04490();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for NotificationSymbolConfiguration(0);
  __swift_allocate_value_buffer(v4, qword_27ECF4FC0);
  v5 = __swift_project_value_buffer(v4, qword_27ECF4FC0);
  sub_242F04470();
  sub_242F04420();

  (*(v1 + 104))(v3, *MEMORY[0x277CE0A10], v0);
  v6 = sub_242F044C0();

  (*(v1 + 8))(v3, v0);
  v7 = *(v4 + 28);
  v8 = *MEMORY[0x277CE1048];
  v9 = sub_242F04820();
  (*(*(v9 - 8) + 104))(v5 + v7, v8, v9);
  *v5 = v6;
  *(v5 + 8) = vdupq_n_s64(0x404E000000000000uLL);
  *(v5 + 24) = 0;
  v10 = (v5 + *(v4 + 32));
  *v10 = 0u;
  v10[1] = 0u;
  result = vdupq_n_s64(0x4044000000000000uLL);
  *(v5 + 32) = result;
  return result;
}

__n128 sub_242D90F20()
{
  v0 = sub_242F04820();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for IconNotificationButtonConfiguration(0);
  __swift_allocate_value_buffer(v4, qword_27ECF4FD8);
  v5 = __swift_project_value_buffer(v4, qword_27ECF4FD8);
  (*(v1 + 104))(v3, *MEMORY[0x277CE1050], v0);
  v6 = sub_242F04040();
  (*(v1 + 32))(&v5[v4[5]], v3, v0);
  *v5 = 0x4040000000000000;
  v7 = &v5[v4[6]];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  v7[32] = 1;
  v8 = &v5[v4[7]];
  __asm { FMOV            V0.2D, #14.0 }

  *v8 = result;
  *(v8 + 1) = xmmword_242F2D1D0;
  *&v5[v4[8]] = v6;
  return result;
}

uint64_t static FancyNotificationConfiguration.trailingButtonConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF1E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IconNotificationButtonConfiguration(0);
  v3 = __swift_project_value_buffer(v2, qword_27ECF4FD8);
  return sub_242D92BE4(v3, a1, type metadata accessor for IconNotificationButtonConfiguration);
}

uint64_t sub_242D91104()
{
  v29 = sub_242F04A30();
  v28 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v1 = &v27 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for IconNotificationButtonConfiguration(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NotificationSymbolConfiguration(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FancyNotificationConfiguration.FancyButtonConfiguration(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FancyNotificationConfiguration(0);
  __swift_allocate_value_buffer(v11, qword_27ECF4FF0);
  v12 = __swift_project_value_buffer(v11, qword_27ECF4FF0);
  if (qword_27ECEF1D8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, qword_27ECF4FA8);
  sub_242D92BE4(v13, v10, type metadata accessor for FancyNotificationConfiguration.FancyButtonConfiguration);
  if (qword_27ECEF1E0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v5, qword_27ECF4FC0);
  sub_242D92BE4(v14, v7, type metadata accessor for NotificationSymbolConfiguration);
  if (qword_27ECEF1E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v2, qword_27ECF4FD8);
  sub_242D92BE4(v15, v4, type metadata accessor for IconNotificationButtonConfiguration);
  sub_242D90B84(v30);
  sub_242F04730();
  v16 = sub_242F04770();

  _s7SwiftUI10ShapeStyleP012CarPlayAssetB0AA8MaterialVRszrlE07platterH0AFvgZ_0();
  v17 = v12 + v11[9];
  v18 = v12 + v11[10];
  v19 = (v12 + v11[12]);
  *v19 = 0;
  v19[1] = 0;
  v19[2] = 0;
  sub_242D92C4C(v10, v12, type metadata accessor for FancyNotificationConfiguration.FancyButtonConfiguration);
  *(v12 + v11[5]) = 0x403C000000000000;
  sub_242D92C4C(v7, v12 + v11[6], type metadata accessor for NotificationSymbolConfiguration);
  sub_242D92C4C(v4, v12 + v11[7], type metadata accessor for IconNotificationButtonConfiguration);
  v20 = (v12 + v11[8]);
  v21 = v30[1];
  *v20 = v30[0];
  v20[1] = v21;
  v22 = v30[5];
  v20[4] = v30[4];
  v20[5] = v22;
  v23 = v30[3];
  v20[2] = v30[2];
  v20[3] = v23;
  v24 = v30[9];
  v20[8] = v30[8];
  v20[9] = v24;
  v25 = v30[7];
  v20[6] = v30[6];
  v20[7] = v25;
  *v17 = xmmword_242F2D1E0;
  *(v17 + 16) = 0;
  *v18 = xmmword_242F2D1F0;
  *(v18 + 16) = 0;
  (*(v28 + 32))(v12 + v11[11], v1, v29);
  *v19 = v16;
  *(v19 + 1) = xmmword_242F2D200;
}

uint64_t static FancyNotificationConfiguration.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF1F0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for FancyNotificationConfiguration(0);
  v3 = __swift_project_value_buffer(v2, qword_27ECF4FF0);
  return sub_242D92BE4(v3, a1, type metadata accessor for FancyNotificationConfiguration);
}

double static NoticeConfiguration.defaultCenter.getter@<D0>(void *a1@<X8>)
{
  v41 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3F48);
  MEMORY[0x28223BE20](v1 - 8);
  v39 = &v38.i8[-v2];
  v40 = type metadata accessor for NotificationSymbolConfiguration(0) - 8;
  MEMORY[0x28223BE20](v40);
  v4 = &v38.i8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_242F04490();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v38.i8[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_242F044D0();
  sub_242F04450();
  sub_242F04480();

  v9 = *MEMORY[0x277CE0A10];
  v10 = *(v6 + 104);
  v10(v8, v9, v5);
  v38.i64[0] = sub_242F044C0();

  v11 = *(v6 + 8);
  v11(v8, v5);
  sub_242F044D0();
  sub_242F04450();
  sub_242F04480();

  v10(v8, v9, v5);
  v12 = sub_242F044C0();

  v11(v8, v5);
  v13 = sub_242F04210();
  v14 = MEMORY[0x277CE04F8];
  v15 = MEMORY[0x277CE04E8];
  v44 = MEMORY[0x277CE04F8];
  v45 = MEMORY[0x277CE04E8];
  v43 = v13;
  v16 = sub_242F04230();
  v47 = v14;
  v48 = v15;
  v46 = v16;
  v42[0] = v38.i64[0];
  v42[1] = v12;
  v38 = vdupq_n_s64(0x404A000000000000uLL);
  __asm { FMOV            V0.2D, #8.0 }

  v49 = v38;
  v50 = _Q0;
  v51 = 0;
  v52 = 3;
  v53 = 0;
  v54 = 0x3FED70A3D70A3D71;
  v22 = sub_242F04430();
  v23 = v39;
  (*(*(v22 - 8) + 56))(v39, 1, 1, v22);
  sub_242F04460();
  sub_242D5A3A0(v23);
  sub_242F04440();
  v24 = sub_242F04480();

  v25 = v40;
  v26 = *(v40 + 36);
  v27 = *MEMORY[0x277CE1058];
  v28 = sub_242F04820();
  (*(*(v28 - 8) + 104))(&v4[v26], v27, v28);
  *v4 = v24;
  *(v4 + 8) = v38;
  v4[24] = 0;
  v29 = &v4[*(v25 + 40)];
  *v29 = 0u;
  *(v29 + 1) = 0u;
  *(v4 + 2) = vdupq_n_s64(0x4044000000000000uLL);
  v30 = type metadata accessor for NoticeConfiguration(0);
  v31 = v41;
  sub_242D92BE4(v4, v41 + v30[5], type metadata accessor for NotificationSymbolConfiguration);
  sub_242D92BE4(v4, v31 + v30[6], type metadata accessor for NotificationSymbolConfiguration);
  sub_242D575E8(v42, v31 + v30[7]);
  sub_242D575E8(v42, v31 + v30[8]);
  sub_242F04730();
  v32 = sub_242F04770();

  sub_242D92B30(v4, type metadata accessor for NotificationSymbolConfiguration);
  sub_242D91AA0(v42);
  v33 = v31;
  v34 = v31 + v30[9];
  v35 = v31 + v30[10];
  v36 = (v31 + v30[12]);
  v36[1] = 0;
  v36[2] = 0;
  *v36 = 0;
  *v33 = 0x403E000000000000;
  *(v33 + v30[11]) = 1;
  *v34 = xmmword_242F2D210;
  v34[16] = 0;
  *v35 = xmmword_242F2D220;
  v35[16] = 0;

  *v36 = v32;
  result = 16.0;
  *(v36 + 1) = xmmword_242F2D200;
  return result;
}

double static BannerConfiguration.defaultCenter.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3F48);
  MEMORY[0x28223BE20](v2 - 8);
  v58 = &v51.i8[-v3];
  v4 = sub_242F04490();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v51.i8[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for IconNotificationButtonConfiguration(0);
  v9 = (v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v51.i8[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = v9[7];
  v13 = *MEMORY[0x277CE1050];
  v56 = sub_242F04820();
  v14 = *(v56 - 8);
  v59 = *(v14 + 104);
  v57 = v14 + 104;
  v59(&v11[v12], v13, v56);
  v15 = sub_242F04040();
  *v11 = 0x4040000000000000;
  v16 = &v11[v9[8]];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v16[32] = 1;
  v17 = &v11[v9[9]];
  __asm { FMOV            V0.2D, #14.0 }

  *v17 = _Q0;
  *(v17 + 1) = _Q0;
  *&v11[v9[10]] = v15;
  v55 = v11;
  sub_242F04410();
  sub_242F04420();

  v23 = *MEMORY[0x277CE0A10];
  v24 = *(v5 + 104);
  v24(v7, v23, v4);
  v54 = sub_242F044C0();

  v25 = *(v5 + 8);
  v25(v7, v4);
  sub_242F04410();
  v24(v7, v23, v4);
  v26 = sub_242F044C0();

  v25(v7, v4);
  v27 = sub_242F04210();
  v28 = MEMORY[0x277CE04F8];
  v29 = MEMORY[0x277CE04E8];
  v62 = MEMORY[0x277CE04F8];
  v63 = MEMORY[0x277CE04E8];
  v61 = v27;
  v30 = sub_242F04210();
  v65 = v28;
  v66 = v29;
  v64 = v30;
  v60[0] = v54;
  v60[1] = v26;
  __asm { FMOV            V0.2D, #10.0 }

  v67 = _Q0;
  v68 = _Q0;
  v69 = 0;
  v70 = 4;
  v71 = 1;
  v72 = 0x3FE999999999999ALL;
  v53 = a1;
  sub_242D92BE4(v11, a1, type metadata accessor for IconNotificationButtonConfiguration);
  v32 = sub_242F04430();
  v54 = *(*(v32 - 8) + 56);
  v33 = v58;
  v54(v58, 1, 1, v32);
  sub_242F04460();
  sub_242D5A3A0(v33);
  sub_242F04440();
  v34 = sub_242F04480();

  v35 = type metadata accessor for BannerConfiguration(0);
  v36 = a1 + v35[7];
  v37 = type metadata accessor for NotificationSymbolConfiguration(0);
  v38 = *MEMORY[0x277CE1058];
  v39 = v56;
  v59((v36 + *(v37 + 28)), v38, v56);
  *v36 = v34;
  v52 = vdupq_n_s64(0x404E000000000000uLL);
  *(v36 + 8) = v52;
  *(v36 + 24) = 0;
  v40 = (v36 + *(v37 + 32));
  *v40 = 0u;
  v40[1] = 0u;
  v51 = vdupq_n_s64(0x4044000000000000uLL);
  *(v36 + 32) = v51;
  v54(v33, 1, 1, v32);
  sub_242F04460();
  sub_242D5A3A0(v33);
  sub_242F04440();
  v41 = sub_242F04480();

  v42 = v53;
  v43 = v53 + v35[8];
  v59((v43 + *(v37 + 28)), v38, v39);
  *v43 = v41;
  *(v43 + 8) = v52;
  *(v43 + 24) = 0;
  v44 = (v43 + *(v37 + 32));
  *v44 = 0u;
  v44[1] = 0u;
  *(v43 + 32) = v51;
  sub_242D575E8(v60, v42 + v35[9]);
  sub_242D575E8(v60, v42 + v35[10]);
  sub_242F04730();
  v45 = sub_242F04770();

  sub_242D91AA0(v60);
  sub_242D92B30(v55, type metadata accessor for IconNotificationButtonConfiguration);
  v46 = v42;
  v47 = v42 + v35[11];
  v48 = v42 + v35[12];
  v49 = (v42 + v35[14]);
  v49[1] = 0;
  v49[2] = 0;
  *v49 = 0;
  *(v46 + v35[5]) = 0x403C000000000000;
  *(v46 + v35[6]) = 0;
  *(v46 + v35[13]) = 1;
  *v47 = xmmword_242F2D230;
  *(v47 + 16) = 0;
  *v48 = xmmword_242F2D240;
  *(v48 + 16) = 0;

  *v49 = v45;
  result = 16.0;
  *(v49 + 1) = xmmword_242F2D200;
  return result;
}

double static ActionConfiguration.defaultActionCenter.getter@<D0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3F48);
  MEMORY[0x28223BE20](v1 - 8);
  v53 = &v49.i8[-v2];
  v54 = type metadata accessor for ActionConfiguration(0) - 8;
  MEMORY[0x28223BE20](v54);
  v4 = &v49.i8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_242F04490();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v49.i8[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_242F04410();
  sub_242F04420();

  v9 = *MEMORY[0x277CE0A10];
  v10 = *(v6 + 104);
  v10(v8, v9, v5);
  v52 = sub_242F044C0();

  v11 = *(v6 + 8);
  v11(v8, v5);
  sub_242F04410();
  v10(v8, v9, v5);
  v12 = sub_242F044C0();

  v11(v8, v5);
  v13 = sub_242F04210();
  v14 = MEMORY[0x277CE04F8];
  v15 = MEMORY[0x277CE04E8];
  v59 = MEMORY[0x277CE04F8];
  v60 = MEMORY[0x277CE04E8];
  v58 = v13;
  v16 = sub_242F04210();
  v62 = v14;
  v63 = v15;
  v61 = v16;
  v57[0] = v52;
  v57[1] = v12;
  __asm { FMOV            V0.2D, #15.0 }

  v64 = _Q0;
  v65 = _Q0;
  v66 = 0;
  v67 = 4;
  v68 = 1;
  v69 = 0x3FE999999999999ALL;
  static ActionConfiguration.defaultAlertCenter.getter(v4);
  v22 = *(v4 + 1);
  v70 = *v4;
  v71 = v22;
  v23 = *(v4 + 3);
  v72 = *(v4 + 2);
  v73 = v23;
  sub_242D5A344(&v70, &v56);
  sub_242D92B30(v4, type metadata accessor for ActionConfiguration);
  v24 = sub_242F04430();
  v25 = *(v24 - 8);
  v51 = *(v25 + 56);
  v52 = v25 + 56;
  v26 = v53;
  v51(v53, 1, 1, v24);
  sub_242F04460();
  sub_242D5A3A0(v26);
  sub_242F04440();
  v49.i64[0] = sub_242F04480();

  v27 = v55 + *(v54 + 36);
  v28 = type metadata accessor for NotificationSymbolConfiguration(0);
  v29 = *(v28 + 28);
  v30 = *MEMORY[0x277CE1058];
  v31 = sub_242F04820();
  v32 = *(*(v31 - 8) + 104);
  v32(v27 + v29, v30, v31);
  v33 = vdupq_n_s64(0x404E000000000000uLL);
  v50 = v33;
  *v27 = v49.i64[0];
  *(v27 + 8) = v33;
  *(v27 + 24) = 0;
  v34 = (v27 + *(v28 + 32));
  *v34 = 0u;
  v34[1] = 0u;
  v49 = vdupq_n_s64(0x4044000000000000uLL);
  *(v27 + 32) = v49;
  v51(v26, 1, 1, v24);
  sub_242F04460();
  sub_242D5A3A0(v26);
  sub_242F04440();
  v35 = sub_242F04480();

  v36 = v54;
  v37 = v55;
  v38 = v55 + *(v54 + 40);
  v32(v38 + *(v28 + 28), v30, v31);
  *v38 = v35;
  *(v38 + 8) = v50;
  *(v38 + 24) = 0;
  v39 = (v38 + *(v28 + 32));
  *v39 = 0u;
  v39[1] = 0u;
  *(v38 + 32) = v49;
  v40 = v37;
  sub_242D575E8(v57, v37 + v36[11]);
  sub_242D575E8(v57, v37 + v36[12]);
  _s7SwiftUI10ShapeStyleP012CarPlayAssetB0AA8MaterialVRszrlE07platterH0AFvgZ_0();
  sub_242F04730();
  v41 = sub_242F04770();

  sub_242D91AA0(v57);
  v42 = v40;
  v43 = v40 + v36[13];
  v44 = v40 + v36[14];
  v45 = (v40 + v36[17]);
  v45[1] = 0;
  v45[2] = 0;
  *v45 = 0;
  v46 = v73;
  *(v42 + 32) = v72;
  *(v42 + 48) = v46;
  v47 = v71;
  *v42 = v70;
  *(v42 + 16) = v47;
  *(v42 + 64) = 1;
  *(v42 + 72) = 0x403C000000000000;
  *(v42 + v36[15]) = 1;
  *v43 = xmmword_242F2D250;
  *(v43 + 16) = 0;
  *v44 = xmmword_242F2D260;
  *(v44 + 16) = 0;

  *v45 = v41;
  result = 16.0;
  *(v45 + 1) = xmmword_242F2D200;
  return result;
}

double static ActionConfiguration.defaultAlertCenter.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_242F04490();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NotificationSymbolConfiguration(0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = (v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_242F04470();
  sub_242F04420();

  v43 = *MEMORY[0x277CE0A10];
  v42 = *(v3 + 104);
  v42(v5);
  *&v44 = sub_242F044C0();

  v10 = *(v3 + 8);
  v41[1] = v3 + 8;
  v10(v5, v2);
  v11 = v10;
  v12 = *(v7 + 36);
  v13 = *MEMORY[0x277CE1048];
  v14 = sub_242F04820();
  (*(*(v14 - 8) + 104))(&v9->i8[v12], v13, v14);
  v9->i64[1] = 0;
  v9[1].i64[0] = 0;
  v9->i64[0] = v44;
  v9[1].i8[8] = 1;
  v15 = &v9->i8[*(v7 + 40)];
  v45 = v9;
  __asm { FMOV            V1.2D, #16.0 }

  v44 = _Q1;
  *v15 = _Q1;
  *(v15 + 1) = xmmword_242F22E30;
  v9[2] = vdupq_n_s64(0x4044000000000000uLL);
  sub_242F04470();
  sub_242F04420();

  v21 = v43;
  v22 = v42;
  (v42)(v5, v43, v2);
  v41[0] = sub_242F044C0();

  v11(v5, v2);
  sub_242F044A0();
  (v22)(v5, v21, v2);
  v23 = sub_242F044C0();

  v11(v5, v2);
  v24 = sub_242F04210();
  v25 = MEMORY[0x277CE04F8];
  v26 = MEMORY[0x277CE04E8];
  v49 = MEMORY[0x277CE04F8];
  v50 = MEMORY[0x277CE04E8];
  v48 = v24;
  v27 = sub_242F04230();
  v52 = v25;
  v53 = v26;
  v51 = v27;
  v47[0] = v41[0];
  v47[1] = v23;
  v54 = v44;
  v55 = v44;
  v56 = 0x4020000000000000;
  v57 = 4;
  v58 = 0;
  v59 = 0x3FE9EB851EB851ECLL;
  v28 = [objc_opt_self() _carSystemQuaternaryColor];
  v29 = sub_242F047D0();
  sub_242F044A0();
  v30 = sub_242F04420();

  __asm { FMOV            V0.2D, #10.0 }

  v60 = _Q0;
  v61 = xmmword_242F2D270;
  *&v62 = v29;
  *(&v62 + 1) = v30;
  v63 = xmmword_242F2D1C0;
  v32 = type metadata accessor for ActionConfiguration(0);
  v33 = v45;
  sub_242D92BE4(v45, a1 + v32[7], type metadata accessor for NotificationSymbolConfiguration);
  sub_242D92BE4(v33, a1 + v32[8], type metadata accessor for NotificationSymbolConfiguration);
  sub_242D575E8(v47, a1 + v32[9]);
  sub_242D575E8(v47, a1 + v32[10]);
  sub_242D5A344(&v60, &v46);
  _s7SwiftUI10ShapeStyleP012CarPlayAssetB0AA8MaterialVRszrlE07platterH0AFvgZ_0();
  sub_242F04730();
  v34 = sub_242F04770();

  sub_242D92B90(&v60);
  sub_242D91AA0(v47);
  sub_242D92B30(v33, type metadata accessor for NotificationSymbolConfiguration);
  v35 = a1 + v32[11];
  v36 = a1 + v32[12];
  v37 = (a1 + v32[15]);
  v37[1] = 0;
  v37[2] = 0;
  *v37 = 0;
  v38 = v63;
  *(a1 + 32) = v62;
  *(a1 + 48) = v38;
  v39 = v61;
  *a1 = v60;
  *(a1 + 16) = v39;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0x403C000000000000;
  *(a1 + v32[13]) = 0;
  *v35 = xmmword_242F2D280;
  *(v35 + 16) = 0;
  *v36 = xmmword_242F2D290;
  *(v36 + 16) = 0;

  *v37 = v34;
  result = 16.0;
  *(v37 + 1) = xmmword_242F2D200;
  return result;
}

uint64_t sub_242D92B30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_242D92BE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_242D92C4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_242D92E1C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5378);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5358);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - v5;
  v7 = objc_opt_self();
  v8 = [v7 kilowatts];
  sub_242C8760C(0, &qword_27ECF5360);
  sub_242F03490();
  v9 = [v7 kilowatts];
  sub_242E77480(v9, v2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5380);
  v10 = swift_allocObject();
  sub_242CF6B3C(v2, v10 + *(*v10 + 152), &qword_27ECF5378);
  *(v10 + 16) = 14;
  *(v10 + 24) = v3;
  *(v10 + 32) = &protocol witness table for Measurement<A>;
  result = (*(v4 + 32))(v10 + *(*v10 + 112), v6, v3);
  qword_27ECF5038 = v10;
  return result;
}

uint64_t sub_242D930F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5348);
  result = swift_allocObject();
  *(result + 56) = &unk_28557B730;
  *(result + 16) = 17;
  *(result + 24) = MEMORY[0x277D837D0];
  *(result + 32) = &protocol witness table for String;
  *(result + 40) = 0x647261646E617473;
  *(result + 48) = 0xE800000000000000;
  qword_27ECF5050 = result;
  return result;
}

uint64_t sub_242D93190()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5348);
  result = swift_allocObject();
  *(result + 56) = &unk_28557B790;
  *(result + 16) = 19;
  *(result + 24) = MEMORY[0x277D837D0];
  *(result + 32) = &protocol witness table for String;
  *(result + 40) = 1952867692;
  *(result + 48) = 0xE400000000000000;
  qword_27ECF5058 = result;
  return result;
}

uint64_t sub_242D932A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5378);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5358);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - v5;
  v7 = objc_opt_self();
  v8 = [v7 milliwatts];
  sub_242C8760C(0, &qword_27ECF5360);
  sub_242F03490();
  v9 = [v7 milliwatts];
  sub_242E77480(v9, v2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5380);
  v10 = swift_allocObject();
  sub_242CF6B3C(v2, v10 + *(*v10 + 152), &qword_27ECF5378);
  *(v10 + 16) = 23;
  *(v10 + 24) = v3;
  *(v10 + 32) = &protocol witness table for Measurement<A>;
  result = (*(v4 + 32))(v10 + *(*v10 + 112), v6, v3);
  qword_27ECF5070 = v10;
  return result;
}

uint64_t sub_242D935F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF53C0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF53C8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - v5;
  v7 = objc_opt_self();
  v8 = [v7 celsius];
  sub_242C8760C(0, &qword_27ECF53D0);
  sub_242F03490();
  v9 = [v7 celsius];
  sub_242E77784(v9, v2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF53D8);
  v10 = swift_allocObject();
  sub_242CF6B3C(v2, &v10[*(*v10 + 152)], &qword_27ECF53C0);
  v10[16] = 1;
  *(v10 + 3) = v3;
  *(v10 + 4) = &protocol witness table for Measurement<A>;
  result = (*(v4 + 32))(&v10[*(*v10 + 112)], v6, v3);
  off_27ECF5098 = v10;
  return result;
}

uint64_t sub_242D93960(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF53C8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  v7 = [objc_opt_self() celsius];
  sub_242C8760C(0, &qword_27ECF53D0);
  sub_242F03490();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF53E0);
  v8 = swift_allocObject();
  *(v8 + 16) = 68;
  *(v8 + 24) = v3;
  *(v8 + 32) = &protocol witness table for Measurement<A>;
  result = (*(v4 + 32))(v8 + *(*v8 + 112), v6, v3);
  *a2 = v8;
  return result;
}

uint64_t sub_242D93B3C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF53C0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF53C8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - v5;
  v7 = objc_opt_self();
  v8 = [v7 celsius];
  sub_242C8760C(0, &qword_27ECF53D0);
  sub_242F03490();
  v9 = [v7 celsius];
  sub_242E77784(v9, v2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF53D8);
  v10 = swift_allocObject();
  sub_242CF6B3C(v2, &v10[*(*v10 + 152)], &qword_27ECF53C0);
  v10[16] = 27;
  *(v10 + 3) = v3;
  *(v10 + 4) = &protocol witness table for Measurement<A>;
  result = (*(v4 + 32))(&v10[*(*v10 + 112)], v6, v3);
  off_27ECF50D0 = v10;
  return result;
}

uint64_t sub_242D93EC8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF53C0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF53C8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - v5;
  v7 = objc_opt_self();
  v8 = [v7 celsius];
  sub_242C8760C(0, &qword_27ECF53D0);
  sub_242F03490();
  v9 = [v7 celsius];
  sub_242E77784(v9, v2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF53D8);
  v10 = swift_allocObject();
  sub_242CF6B3C(v2, v10 + *(*v10 + 152), &qword_27ECF53C0);
  *(v10 + 16) = 53;
  *(v10 + 24) = v3;
  *(v10 + 32) = &protocol witness table for Measurement<A>;
  result = (*(v4 + 32))(v10 + *(*v10 + 112), v6, v3);
  qword_27ECF5100 = v10;
  return result;
}

uint64_t sub_242D94594()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF53B8);
  v0 = swift_allocObject();
  v1 = _swift_stdlib_malloc_size(v0);
  v2 = v1 - 32;
  if (v1 < 32)
  {
    v2 = v1 - 25;
  }

  *(v0 + 16) = 15;
  *(v0 + 24) = 2 * (v2 >> 3);
  *(v0 + 32) = xmmword_242F2D2D0;
  *(v0 + 48) = xmmword_242F2D2E0;
  *(v0 + 64) = xmmword_242F2D2F0;
  *(v0 + 80) = xmmword_242F2D300;
  *(v0 + 96) = xmmword_242F09510;
  *(v0 + 112) = xmmword_242F2D310;
  *(v0 + 128) = xmmword_242F2D320;
  *(v0 + 144) = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5350);
  result = swift_allocObject();
  *(result + 16) = 46;
  *(result + 24) = MEMORY[0x277D83B88];
  *(result + 32) = &protocol witness table for Int;
  *(result + 40) = 4;
  *(result + 48) = v0;
  qword_27ECF51A0 = result;
  return result;
}

uint64_t sub_242D946B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5348);
  result = swift_allocObject();
  *(result + 56) = MEMORY[0x277D84F90];
  *(result + 16) = 47;
  *(result + 24) = MEMORY[0x277D837D0];
  *(result + 32) = &protocol witness table for String;
  *(result + 40) = 28261;
  *(result + 48) = 0xE200000000000000;
  qword_27ECF51A8 = result;
  return result;
}

uint64_t sub_242D94748()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF53A8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_242F15420;
  *(v0 + 32) = xmmword_242F2D330;
  *(v0 + 48) = 0;
  *(v0 + 56) = xmmword_242F2D340;
  *(v0 + 72) = 256;
  *(v0 + 80) = xmmword_242F2D350;
  *(v0 + 96) = 257;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF53B0);
  v1 = swift_allocObject();
  *(v1 + 64) = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5310);
  *(v1 + 16) = 48;
  result = sub_242D96708(&qword_27ECF5318, &qword_27ECF5310);
  *(v1 + 24) = v2;
  *(v1 + 32) = result;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  qword_27ECF51B0 = v1;
  return result;
}

double sub_242D948E8()
{
  sub_242D966D8(v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5388);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_242F0A4E0;
  v1 = sub_242F04760();
  sub_242CD54A4(0, 0);
  sub_242D3D654(0, 0);
  *&v22 = 0xD000000000000012;
  *(&v22 + 1) = 0x8000000242F5B180;
  v23 = 0uLL;
  LOBYTE(v24) = 0;
  *(&v24 + 1) = 0xD000000000000015;
  *&v25 = 0x8000000242F5B1A0;
  *(&v25 + 1) = v1;
  v26 = 0u;
  v27 = 0u;
  *&v28 = nullsub_2;
  *(&v28 + 1) = 0;
  sub_242D966F8(&v22);
  v38 = v28;
  v39 = v29;
  v40 = v30;
  v34 = v24;
  v35 = v25;
  v36 = v26;
  v37 = v27;
  v32 = v22;
  v33 = v23;
  *&v31 = 49;
  *(&v31 + 1) = 0xE100000000000000;
  nullsub_2(&v31);
  v2 = v38;
  *(v0 + 128) = v37;
  *(v0 + 144) = v2;
  *(v0 + 160) = v39;
  *(v0 + 176) = v40;
  v3 = v34;
  *(v0 + 64) = v33;
  *(v0 + 80) = v3;
  v4 = v36;
  *(v0 + 96) = v35;
  *(v0 + 112) = v4;
  v5 = v32;
  *(v0 + 32) = v31;
  *(v0 + 48) = v5;
  v6 = sub_242F04760();
  sub_242CD54A4(0, 0);
  sub_242D3D654(0, 0);
  *&v41 = 0xD000000000000014;
  *(&v41 + 1) = 0x8000000242F5B1C0;
  *&v42 = 0xD00000000000002ELL;
  *(&v42 + 1) = 0x8000000242F5B1E0;
  LOBYTE(v43) = 1;
  *(&v43 + 1) = 0xD000000000000015;
  *&v44 = 0x8000000242F5B1A0;
  *(&v44 + 1) = v6;
  v45 = xmmword_242F2D360;
  *&v46 = nullsub_2;
  *(&v46 + 1) = 0;
  *&v47 = nullsub_2;
  *(&v47 + 1) = 0;
  sub_242D966F8(&v41);
  v57 = v47;
  v58 = v48;
  v59 = v49;
  v53 = v43;
  v54 = v44;
  v55 = v45;
  v56 = v46;
  v51 = v41;
  v52 = v42;
  *&v50 = 50;
  *(&v50 + 1) = 0xE100000000000000;
  nullsub_2(&v50);
  v7 = v56;
  v8 = v58;
  *(v0 + 296) = v57;
  *(v0 + 312) = v8;
  v9 = v53;
  *(v0 + 216) = v52;
  *(v0 + 232) = v9;
  v10 = v55;
  *(v0 + 248) = v54;
  *(v0 + 264) = v10;
  *(v0 + 280) = v7;
  v11 = v51;
  *(v0 + 184) = v50;
  *(v0 + 328) = v59;
  *(v0 + 200) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5390);
  v12 = swift_allocObject();
  *(v12 + 192) = v0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5398);
  *(v12 + 16) = 50;
  v14 = sub_242D96708(&qword_27ECF53A0, &qword_27ECF5398);
  v15 = v20[7];
  *(v12 + 136) = v20[6];
  *(v12 + 152) = v15;
  *(v12 + 168) = v20[8];
  v16 = v20[3];
  *(v12 + 72) = v20[2];
  *(v12 + 88) = v16;
  v17 = v20[5];
  *(v12 + 104) = v20[4];
  *(v12 + 120) = v17;
  result = *v20;
  v19 = v20[1];
  *(v12 + 40) = v20[0];
  *(v12 + 24) = v13;
  *(v12 + 32) = v14;
  *(v12 + 184) = v21;
  *(v12 + 56) = v19;
  qword_27ECF51C8 = v12;
  return result;
}

uint64_t sub_242D94C90()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5328);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5330);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - v5;
  v7 = objc_opt_self();
  v8 = [v7 meters];
  sub_242C8760C(0, &qword_27ECF5338);
  sub_242F03490();
  v9 = [v7 meters];
  sub_242E77A88(v9, v2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5340);
  v10 = swift_allocObject();
  sub_242CF6B3C(v2, &v10[*(*v10 + 152)], &qword_27ECF5328);
  v10[16] = 52;
  *(v10 + 3) = v3;
  *(v10 + 4) = &protocol witness table for Measurement<A>;
  result = (*(v4 + 32))(&v10[*(*v10 + 112)], v6, v3);
  off_27ECF51D8 = v10;
  return result;
}

uint64_t sub_242D94F28()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5378);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5358);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - v5;
  v7 = objc_opt_self();
  v8 = [v7 milliwatts];
  sub_242C8760C(0, &qword_27ECF5360);
  sub_242F03490();
  v9 = [v7 milliwatts];
  sub_242E77480(v9, v2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5380);
  v10 = swift_allocObject();
  sub_242CF6B3C(v2, v10 + *(*v10 + 152), &qword_27ECF5378);
  *(v10 + 16) = 55;
  *(v10 + 24) = v3;
  *(v10 + 32) = &protocol witness table for Measurement<A>;
  result = (*(v4 + 32))(v10 + *(*v10 + 112), v6, v3);
  qword_27ECF51E8 = v10;
  return result;
}

uint64_t sub_242D95194()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5378);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5358);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - v5;
  v7 = objc_opt_self();
  v8 = [v7 milliwatts];
  sub_242C8760C(0, &qword_27ECF5360);
  sub_242F03490();
  v9 = [v7 milliwatts];
  sub_242E77480(v9, v2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5380);
  v10 = swift_allocObject();
  sub_242CF6B3C(v2, &v10[*(*v10 + 152)], &qword_27ECF5378);
  v10[16] = 56;
  *(v10 + 3) = v3;
  *(v10 + 4) = &protocol witness table for Measurement<A>;
  result = (*(v4 + 32))(&v10[*(*v10 + 112)], v6, v3);
  off_27ECF51F0 = v10;
  return result;
}

__n128 sub_242D9545C(double a1, __n128 a2, uint64_t a3, char a4, uint64_t *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5370);
  v8 = swift_allocObject();
  *(v8 + 56) = a1;
  *(v8 + 16) = a4;
  *(v8 + 24) = MEMORY[0x277D839F8];
  *(v8 + 32) = &protocol witness table for Double;
  result = a2;
  *(v8 + 40) = a2;
  *a5 = v8;
  return result;
}

uint64_t sub_242D95520(uint64_t a1, char a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5358);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  v9 = [objc_opt_self() milliwatts];
  sub_242C8760C(0, &qword_27ECF5360);
  sub_242F03490();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5368);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = v5;
  *(v10 + 32) = &protocol witness table for Measurement<A>;
  result = (*(v6 + 32))(v10 + *(*v10 + 112), v8, v5);
  *a3 = v10;
  return result;
}

uint64_t sub_242D9571C(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5350);
  result = swift_allocObject();
  v8 = MEMORY[0x277D83B88];
  *(result + 16) = a3;
  *(result + 24) = v8;
  *(result + 32) = &protocol witness table for Int;
  *(result + 40) = 0;
  *(result + 48) = a2;
  *a4 = result;
  return result;
}

uint64_t sub_242D957B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5348);
  result = swift_allocObject();
  *(result + 56) = &unk_28557BB28;
  *(result + 16) = 60;
  *(result + 24) = MEMORY[0x277D837D0];
  *(result + 32) = &protocol witness table for String;
  *(result + 40) = 48;
  *(result + 48) = 0xE100000000000000;
  qword_27ECF5220 = result;
  return result;
}

uint64_t sub_242D95844()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5328);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5330);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - v5;
  v7 = objc_opt_self();
  v8 = [v7 miles];
  sub_242C8760C(0, &qword_27ECF5338);
  sub_242F03490();
  v9 = [v7 miles];
  sub_242E77A88(v9, v2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5340);
  v10 = swift_allocObject();
  sub_242CF6B3C(v2, &v10[*(*v10 + 152)], &qword_27ECF5328);
  v10[16] = 61;
  *(v10 + 3) = v3;
  *(v10 + 4) = &protocol witness table for Measurement<A>;
  result = (*(v4 + 32))(&v10[*(*v10 + 112)], v6, v3);
  off_27ECF5228 = v10;
  return result;
}

uint64_t sub_242D95AD4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5328);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5330);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - v5;
  v7 = objc_opt_self();
  v8 = [v7 miles];
  sub_242C8760C(0, &qword_27ECF5338);
  sub_242F03490();
  v9 = [v7 miles];
  sub_242E77A88(v9, v2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5340);
  v10 = swift_allocObject();
  sub_242CF6B3C(v2, v10 + *(*v10 + 152), &qword_27ECF5328);
  *(v10 + 16) = 63;
  *(v10 + 24) = v3;
  *(v10 + 32) = &protocol witness table for Measurement<A>;
  result = (*(v4 + 32))(v10 + *(*v10 + 112), v6, v3);
  qword_27ECF5238 = v10;
  return result;
}

uint64_t sub_242D95D64()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5328);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5330);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - v5;
  v7 = objc_opt_self();
  v8 = [v7 miles];
  sub_242C8760C(0, &qword_27ECF5338);
  sub_242F03490();
  v9 = [v7 miles];
  sub_242E77A88(v9, v2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5340);
  v10 = swift_allocObject();
  sub_242CF6B3C(v2, v10 + *(*v10 + 152), &qword_27ECF5328);
  *(v10 + 16) = 65;
  *(v10 + 24) = v3;
  *(v10 + 32) = &protocol witness table for Measurement<A>;
  result = (*(v4 + 32))(v10 + *(*v10 + 112), v6, v3);
  qword_27ECF5248 = v10;
  return result;
}

uint64_t sub_242D96040(uint64_t a1, char a2, __int16 a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5320);
  result = swift_allocObject();
  *(result + 16) = a2;
  *(result + 24) = MEMORY[0x277D84C58];
  *(result + 32) = &protocol witness table for UInt16;
  *(result + 40) = a3;
  *a4 = result;
  return result;
}

uint64_t sub_242D960D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5308);
  v0 = swift_allocObject();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5310);
  *(v0 + 16) = 69;
  result = sub_242D96708(&qword_27ECF5318, &qword_27ECF5310);
  *(v0 + 24) = v1;
  *(v0 + 32) = result;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  qword_27ECF5268 = v0;
  return result;
}

uint64_t sub_242D96198()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5300);
  result = swift_allocObject();
  *(result + 48) = &unk_28557BB78;
  *(result + 16) = 70;
  *(result + 24) = MEMORY[0x277D84B78];
  *(result + 32) = &protocol witness table for UInt8;
  *(result + 40) = 68;
  qword_27ECF5270 = result;
  return result;
}

uint64_t sub_242D9627C(uint64_t a1, uint64_t a2, char a3, __int16 a4, uint64_t *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF52F8);
  result = swift_allocObject();
  *(result + 48) = a2;
  *(result + 16) = a3;
  *(result + 24) = MEMORY[0x277D84C58];
  *(result + 32) = &protocol witness table for UInt16;
  *(result + 40) = a4;
  *a5 = result;
  return result;
}

uint64_t sub_242D96334(double a1, uint64_t a2, char a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF52F0);
  result = swift_allocObject();
  *(result + 16) = a3;
  *(result + 24) = MEMORY[0x277D839F8];
  *(result + 32) = &protocol witness table for Double;
  *(result + 40) = a1;
  *a4 = result;
  return result;
}

double sub_242D96400()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF52D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_242F09510;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0xD000000000000013;
  *(v0 + 64) = 0x8000000242F59FB0;
  *(v0 + 72) = 0xD000000000000012;
  *(v0 + 80) = 0x8000000242F59FD0;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF52D8);
  v1 = swift_allocObject();
  *(v1 + 120) = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF52E0);
  *(v1 + 16) = 74;
  v3 = sub_242D96708(&qword_27ECF52E8, &qword_27ECF52E0);
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  result = 0.0;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  qword_27ECF5298 = v1;
  return result;
}

double sub_242D96550()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF52B8);
  v0 = swift_allocObject();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF52C0);
  *(v0 + 16) = 77;
  v2 = sub_242D96708(&qword_27ECF52C8, &qword_27ECF52C0);
  *(v0 + 24) = v1;
  *(v0 + 32) = v2;
  result = 0.0;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  qword_27ECF52A0 = v0;
  return result;
}

uint64_t sub_242D96634(uint64_t a1, char a2, char a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF52B0);
  result = swift_allocObject();
  *(result + 16) = a2;
  *(result + 24) = MEMORY[0x277D839B0];
  *(result + 32) = &protocol witness table for Bool;
  *(result + 40) = a3;
  *a4 = result;
  return result;
}

double sub_242D966D8(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_242D96708(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}