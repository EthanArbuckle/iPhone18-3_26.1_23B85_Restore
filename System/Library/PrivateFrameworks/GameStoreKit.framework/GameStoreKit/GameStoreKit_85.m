Swift::Void __swiftcall LayerVisualEffect.apply(to:)(CALayer to)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  sub_24EEB9530(*v1, v4, to.super.isa);
  v7 = [v6 CGColor];
  MEMORY[0x253050C20](v3, v4);
  MEMORY[0x253050C20](46, 0xE100000000000000);
  MEMORY[0x253050C20](0x6C6F437475706E69, 0xEB0000000030726FLL);
  v8 = sub_24F92B098();

  [(objc_class *)to.super.isa setValue:v7 forKeyPath:v8];

  v9 = [v5 CGColor];
  MEMORY[0x253050C20](v3, v4);
  MEMORY[0x253050C20](46, 0xE100000000000000);
  MEMORY[0x253050C20](0x6C6F437475706E69, 0xEB0000000031726FLL);
  v10 = sub_24F92B098();

  [(objc_class *)to.super.isa setValue:v9 forKeyPath:v10];
}

GameStoreKit::LayerVisualEffect __swiftcall LayerVisualEffect.init(filterType:vibrantColor:tintColor:)(Swift::String filterType, UIColor vibrantColor, UIColor tintColor)
{
  *v3 = filterType;
  *(v3 + 16) = vibrantColor;
  *(v3 + 24) = tintColor;
  result.filterType = filterType;
  result.tintColor = tintColor;
  result.vibrantColor = vibrantColor;
  return result;
}

void sub_24EEB9530(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(v3 + 16);
  v5 = *(v3 + 24);
  sub_24EEB99AC(a1, a2, a3);
  if (v7)
  {
  }

  else
  {
    v8 = objc_allocWithZone(MEMORY[0x277CD9EA0]);
    v9 = sub_24F92B098();
    v10 = [v8 initWithType_];

    v11 = [v6 CGColor];
    v12 = sub_24F92B098();
    [v10 setValue:v11 forKey:v12];

    v13 = [v5 CGColor];
    v14 = sub_24F92B098();
    [v10 setValue:v13 forKey:v14];

    v15 = [a3 filters];
    if (v15)
    {
      v16 = v15;
      sub_24F92B5A8();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93DE60;
    *(inited + 56) = sub_24E69A5C4(0, &qword_27F232DA0);
    *(inited + 32) = v10;
    v18 = v10;
    sub_24EA0AEE8(inited);
    v19 = sub_24F92B588();

    [a3 setFilters_];
  }
}

Swift::Void __swiftcall LayerVisualEffect.unapply(to:)(CALayer to)
{
  v3 = *v1;
  v4 = v1[1];
  sub_24EEB99AC(*v1, v4, to.super.isa);
  if (v5)
  {

    v6 = [objc_opt_self() clearColor];
    v7 = [v6 CGColor];

    v8 = v7;
    MEMORY[0x253050C20](v3, v4);
    MEMORY[0x253050C20](46, 0xE100000000000000);
    MEMORY[0x253050C20](0x6C6F437475706E69, 0xEB0000000030726FLL);
    v9 = sub_24F92B098();

    [(objc_class *)to.super.isa setValue:v8 forKeyPath:v9];

    v10 = v8;
    MEMORY[0x253050C20](v3, v4);
    MEMORY[0x253050C20](46, 0xE100000000000000);
    MEMORY[0x253050C20](0x6C6F437475706E69, 0xEB0000000031726FLL);
    v11 = sub_24F92B098();

    [(objc_class *)to.super.isa setValue:v10 forKeyPath:v11];
  }
}

void sub_24EEB99AC(uint64_t a1, uint64_t a2, id a3)
{
  v5 = [a3 filters];
  v6 = MEMORY[0x277D84F70];
  if (v5)
  {
    v7 = v5;
    v8 = sub_24F92B5A8();

    v9 = *(v8 + 16);
    if (!v9)
    {
LABEL_19:

      return;
    }
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
    v9 = *(MEMORY[0x277D84F90] + 16);
    if (!v9)
    {
      goto LABEL_19;
    }
  }

  v10 = 0;
  v11 = v8 + 32;
  v24 = v8;
  while (v10 < *(v8 + 16))
  {
    sub_24E643A9C(v11, v26);
    sub_24E69A5C4(0, &qword_27F232DA0);
    if (swift_dynamicCast())
    {
      v12 = [v25 type];
      if (v12)
      {
        v13 = v9;
        v14 = v6;
        v15 = v12;
        v16 = a1;
        v17 = a2;
        v18 = sub_24F92B0D8();
        v20 = v19;

        v21 = v18;
        a2 = v17;
        if (v21 == v16 && v20 == v17)
        {

          goto LABEL_19;
        }

        a1 = v16;
        v23 = sub_24F92CE08();

        if (v23)
        {
          goto LABEL_19;
        }

        v6 = v14;
        v9 = v13;
        v8 = v24;
      }

      else
      {
      }
    }

    ++v10;
    v11 += 32;
    if (v9 == v10)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
}

uint64_t static LayerVisualEffect.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_24F92CE08() & 1) == 0)
  {
    return 0;
  }

  sub_24E69A5C4(0, &qword_27F21BCB0);
  v7 = v2;
  v8 = v4;
  v9 = sub_24F92C408();

  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = v3;
  v11 = v5;
  v12 = sub_24F92C408();

  return v12 & 1;
}

uint64_t sub_24EEB9C74(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_24F92CE08() & 1) == 0)
  {
    return 0;
  }

  sub_24E69A5C4(0, &qword_27F21BCB0);
  v7 = v2;
  v8 = v4;
  v9 = sub_24F92C408();

  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = v3;
  v11 = v5;
  v12 = sub_24F92C408();

  return v12 & 1;
}

uint64_t sub_24EEB9D50()
{
  v0 = sub_24F92B0D8();
  v2 = v1;
  sub_24E69A5C4(0, &qword_27F2394A0);
  v3 = sub_24F92C3A8();
  result = sub_24F92C3A8();
  qword_27F232D60 = v0;
  *algn_27F232D68 = v2;
  qword_27F232D70 = v3;
  unk_27F232D78 = result;
  return result;
}

id static LayerVisualEffect.darkening.getter@<X0>(void *a1@<X8>)
{
  if (qword_27F2107C0 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = *algn_27F232D68;
  v3 = qword_27F232D70;
  v2 = unk_27F232D78;
  v7 = unk_27F232D78;
  *a1 = qword_27F232D60;
  a1[1] = v1;
  a1[2] = v3;
  a1[3] = v2;

  v4 = v3;

  return v7;
}

uint64_t sub_24EEB9E88()
{
  v0 = sub_24F92B0D8();
  v2 = v1;
  sub_24E69A5C4(0, &qword_27F2394A0);
  v3 = sub_24F92C3A8();
  v4 = [v3 colorWithAlphaComponent_];

  result = sub_24F92C3A8();
  qword_27F232D80 = v0;
  *algn_27F232D88 = v2;
  qword_27F232D90 = v4;
  unk_27F232D98 = result;
  return result;
}

id static LayerVisualEffect.plusL.getter@<X0>(void *a1@<X8>)
{
  if (qword_27F2107C8 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = *algn_27F232D88;
  v3 = qword_27F232D90;
  v2 = unk_27F232D98;
  v7 = unk_27F232D98;
  *a1 = qword_27F232D80;
  a1[1] = v1;
  a1[2] = v3;
  a1[3] = v2;

  v4 = v3;

  return v7;
}

double OverlayCapsuleLockup.id.getter@<D0>(uint64_t a1@<X8>)
{
  sub_24E60169C(v1, v5, &qword_27F213F18);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

double OverlayCapsuleLockup.segue.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for OverlayCapsuleLockup(0);
  sub_24E60169C(v1 + *(v3 + 40), v6, qword_27F24EC90);
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  return result;
}

uint64_t OverlayCapsuleLockup.contextMenu.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  v6 = type metadata accessor for OverlayCapsuleLockup(0);
  sub_24E60169C(v1 + *(v6 + 44), v5, &qword_27F215440);
  return sub_24E68039C(v5, a1);
}

uint64_t sub_24EEBA318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  v7 = type metadata accessor for OverlayCapsuleLockup(0);
  sub_24E60169C(a1 + *(v7 + 44), v6, &qword_27F215440);
  return sub_24E68039C(v6, a2);
}

uint64_t sub_24EEBA460()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6575676573;
  if (v1 != 6)
  {
    v3 = 0x4D747865746E6F63;
  }

  v4 = 0xD000000000000013;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 2)
  {
    v5 = 0x656C746974627573;
  }

  if (*v0)
  {
    v2 = 0x726F737365636361;
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

uint64_t sub_24EEBA560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24EEBBF0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24EEBA588(uint64_t a1)
{
  v2 = sub_24EEBA9E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EEBA5C4(uint64_t a1)
{
  v2 = sub_24EEBA9E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OverlayCapsuleLockup.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232DA8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EEBA9E4();
  sub_24F92D128();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
  sub_24E602068(&qword_27F214040, &qword_27F213F18);
  sub_24F92CD48();
  if (!v1)
  {
    type metadata accessor for OverlayCapsuleLockup(0);
    v8[14] = 1;
    type metadata accessor for OverlayButtonLabelAccessory(0);
    sub_24EEBAA38(&qword_27F232DB8, type metadata accessor for OverlayButtonLabelAccessory);
    sub_24F92CCF8();
    v8[13] = 2;
    sub_24F92CD08();
    v8[12] = 3;
    sub_24F92CCA8();
    v8[11] = 4;
    sub_24F92CCB8();
    v8[10] = 5;
    sub_24F929608();
    sub_24EEBAA38(&qword_27F214058, MEMORY[0x277D21F70]);
    sub_24F92CCF8();
    v8[9] = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050);
    sub_24F92CD48();
    v8[8] = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
    sub_24E65CD0C();
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24EEBA9E4()
{
  result = qword_27F232DB0;
  if (!qword_27F232DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232DB0);
  }

  return result;
}

uint64_t sub_24EEBAA38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OverlayCapsuleLockup.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v43);
  v44 = &v41 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v4 - 8);
  v46 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232DC0);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v41 - v7;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232DC8);
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v9 = &v41 - v8;
  v10 = type metadata accessor for OverlayCapsuleLockup(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 20);
  v15 = type metadata accessor for OverlayButtonLabelAccessory(0);
  v16 = *(*(v15 - 8) + 56);
  v54 = v14;
  v16(&v12[v14], 1, 1, v15);
  v17 = v10[9];
  v18 = sub_24F929608();
  v19 = *(*(v18 - 8) + 56);
  v52 = v17;
  v19(&v12[v17], 1, 1, v18);
  v20 = &v12[v10[10]];
  v57 = 0;
  v55 = 0u;
  v56 = 0u;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0;
  sub_24E61DA68(&v55, v20, qword_27F21B590);
  v21 = v10[11];
  v22 = sub_24F92A6D8();
  v23 = *(*(v22 - 8) + 56);
  v51 = v21;
  v23(&v12[v21], 1, 1, v22);
  v24 = a1[3];
  v53 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_24EEBA9E4();
  v48 = v9;
  v25 = v50;
  sub_24F92D108();
  if (v25)
  {
    v28 = v54;
    __swift_destroy_boxed_opaque_existential_1(v53);
    sub_24E601704(&v12[v28], &qword_27F232DC0);
    v29 = v52;

    sub_24E601704(&v12[v29], &qword_27F213E68);
    sub_24E601704(v20, qword_27F24EC90);
    return sub_24E601704(&v12[v51], &qword_27F215440);
  }

  else
  {
    v50 = v18;
    v41 = v10;
    v27 = v45;
    v26 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v58 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    sub_24F92CC68();
    v30 = v56;
    *v12 = v55;
    *(v12 + 1) = v30;
    *(v12 + 4) = v57;
    LOBYTE(v55) = 1;
    sub_24EEBAA38(&qword_27F232DD0, type metadata accessor for OverlayButtonLabelAccessory);
    sub_24F92CC18();
    v31 = v47;
    sub_24E61DA68(v27, &v12[v54], &qword_27F232DC0);
    LOBYTE(v55) = 2;
    v32 = sub_24F92CC28();
    v33 = v41;
    v34 = &v12[v41[6]];
    *v34 = v32;
    v34[1] = v35;
    LOBYTE(v55) = 3;
    v36 = sub_24F92CBC8();
    v37 = &v12[v33[7]];
    *v37 = v36;
    v37[1] = v38;
    LOBYTE(v55) = 4;
    v12[v33[8]] = sub_24F92CBD8();
    LOBYTE(v55) = 5;
    sub_24EEBAA38(&qword_27F213F48, MEMORY[0x277D21F70]);
    sub_24F92CC18();
    sub_24E61DA68(v26, &v12[v52], &qword_27F213E68);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v58 = 6;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40);
    sub_24F92CC68();
    sub_24E61DA68(&v55, v20, qword_27F24EC90);
    LOBYTE(v55) = 7;
    sub_24E65CAA0();
    v39 = v44;
    sub_24F92CC68();
    (*(v31 + 8))(v48, v49);
    sub_24E61DA68(v39, &v12[v51], &qword_27F215440);
    sub_24EEBC468(v12, v42, type metadata accessor for OverlayCapsuleLockup);
    __swift_destroy_boxed_opaque_existential_1(v53);
    return sub_24EEBB32C(v12);
  }
}

uint64_t sub_24EEBB32C(uint64_t a1)
{
  v2 = type metadata accessor for OverlayCapsuleLockup(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EEBB3D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 44), &v9 - v6, &qword_27F215440);
  return sub_24E68039C(v7, a2);
}

double sub_24EEBB4B0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E60169C(a1, v5, &qword_27F213F18);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

double sub_24EEBB508@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for OverlayCapsuleLockup(0);
  sub_24E60169C(a1 + *(v4 + 40), v7, qword_27F24EC90);
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v8;
  return result;
}

uint64_t sub_24EEBB620(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232DC0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[11];

  return v15(v16, a2, v14);
}

uint64_t sub_24EEBB7C4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232DC0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[11];

  return v15(v16, a2, a2, v14);
}

void sub_24EEBB954()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24EEBBAD8(319, &qword_27F232DF0, type metadata accessor for OverlayButtonLabelAccessory);
    if (v1 <= 0x3F)
    {
      sub_24E66ECF0(319, &qword_27F254DE0);
      if (v2 <= 0x3F)
      {
        sub_24E66ECF0(319, &qword_27F2169A0);
        if (v3 <= 0x3F)
        {
          sub_24EEBBAD8(319, &qword_27F213EB0, MEMORY[0x277D21F70]);
          if (v4 <= 0x3F)
          {
            sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8);
            if (v5 <= 0x3F)
            {
              sub_24E65B038(319, &qword_27F215458, &qword_27F215460);
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

void sub_24EEBBAD8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F92C4A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_24EEBBB40()
{
  result = qword_27F232DF8;
  if (!qword_27F232DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232DF8);
  }

  return result;
}

unint64_t sub_24EEBBB98()
{
  result = qword_27F232E00;
  if (!qword_27F232E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232E00);
  }

  return result;
}

unint64_t sub_24EEBBBF0()
{
  result = qword_27F232E08;
  if (!qword_27F232E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232E08);
  }

  return result;
}

uint64_t sub_24EEBBC44@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = type metadata accessor for OverlayCapsuleLockup(0);
  v6 = v5[5];
  v7 = type metadata accessor for OverlayButtonLabelView(0);
  sub_24E60169C(a1 + v6, &a2[v7[5]], &qword_27F232DC0);
  v8 = (a1 + v5[6]);
  v9 = *v8;
  v10 = v8[1];
  v11 = (a1 + v5[7]);
  v12 = *v11;
  v13 = v11[1];
  LOBYTE(v11) = *(a1 + v5[8]);
  *a2 = 0;
  v14 = &a2[v7[6]];
  *v14 = v9;
  v14[1] = v10;
  v15 = &a2[v7[7]];
  *v15 = v12;
  v15[1] = v13;
  a2[v7[8]] = v11;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232E30);
  v17 = MEMORY[0x277CE1260];
  sub_24EEBC468(v2, &a2[*(v16 + 36)], MEMORY[0x277CE1260]);
  v18 = &a2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232E38) + 36)];
  sub_24EEBC468(v2, v18, v17);
  *(v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B698) + 36)) = 0;
}

uint64_t sub_24EEBBD9C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F9271D8();
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 64) = v3;
  *(a1 + 72) = sub_24EEBAA38(&qword_27F214E38, MEMORY[0x277CE1260]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a1 + 40));
  return sub_24EEBC468(v1, boxed_opaque_existential_1, MEMORY[0x277CE1260]);
}

uint64_t sub_24EEBBE34()
{
  MEMORY[0x28223BE20](v0);
  sub_24EEBC468(v2, &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OverlayCapsuleLockupComponent);
  sub_24EEBAA38(&qword_27F232E20, type metadata accessor for OverlayCapsuleLockupComponent);
  return sub_24F9218E8();
}

uint64_t sub_24EEBBF0C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xE900000000000079 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FA61790 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65)
  {

    return 7;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24EEBC1C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9271D8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24EEBC240(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9271D8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24EEBC2D0()
{
  result = sub_24F9271D8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24EEBC468(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24EEBC4D4()
{
  result = qword_27F232E40;
  if (!qword_27F232E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232E38);
    sub_24EEBC58C();
    sub_24E602068(&qword_27F21B720, &qword_27F21B698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232E40);
  }

  return result;
}

unint64_t sub_24EEBC58C()
{
  result = qword_27F232E48;
  if (!qword_27F232E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232E30);
    sub_24EEBAA38(&qword_27F232E50, type metadata accessor for OverlayButtonLabelView);
    sub_24E602068(&qword_27F232E58, qword_27F232E60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232E48);
  }

  return result;
}

void sub_24EEBC67C()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_24E6C5550();
    if (v1 <= 0x3F)
    {
      sub_24E684184(319, &qword_27F2168C8, MEMORY[0x277CDFA28]);
      if (v2 <= 0x3F)
      {
        sub_24E684120();
        if (v3 <= 0x3F)
        {
          sub_24E684184(319, &qword_27F2168D0, MEMORY[0x277CDFAA0]);
          if (v4 <= 0x3F)
          {
            sub_24E654514();
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

uint64_t sub_24EEBC7A4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v30 = *(a3 + 32);
  v5 = *(v30 - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v31 = *(sub_24F923E98() - 8);
  v8 = *(v31 + 64);
  if (v8 <= 8)
  {
    v8 = 8;
  }

  v32 = v8;
  v9 = *(sub_24F925218() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  v12 = *(sub_24F923F78() - 8);
  if (*(v12 + 64) <= 8uLL)
  {
    v13 = 8;
  }

  else
  {
    v13 = *(v12 + 64);
  }

  v14 = *(v5 + 64);
  if (v10)
  {
    v15 = v11;
  }

  else
  {
    v15 = v11 + 1;
  }

  if (v15 <= 8)
  {
    v15 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_38;
  }

  v16 = *(v31 + 80) & 0xF8 | 7;
  v17 = (((((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v16 + 16) & ~v16;
  v18 = *(v9 + 80) & 0xF8 | 7;
  v19 = *(v12 + 80) & 0xF8 | 7;
  v20 = ((((v13 + ((v15 + 1 + v19 + ((v15 + 1 + v18 + ((v32 + v18 + v17 + 1) & ~v18)) & ~v18)) & ~v19) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v21 = v20 & 0xFFFFFFF8;
  if ((v20 & 0xFFFFFFF8) != 0)
  {
    v22 = 2;
  }

  else
  {
    v22 = a2 - v7 + 1;
  }

  if (v22 >= 0x10000)
  {
    v23 = 4;
  }

  else
  {
    v23 = 2;
  }

  if (v22 < 0x100)
  {
    v23 = 1;
  }

  if (v22 >= 2)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if (v24 > 1)
  {
    if (v24 == 2)
    {
      v25 = *(a1 + v20);
      if (!v25)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v25 = *(a1 + v20);
      if (!v25)
      {
        goto LABEL_38;
      }
    }
  }

  else if (!v24 || (v25 = *(a1 + v20)) == 0)
  {
LABEL_38:
    if (v6 < 0x7FFFFFFF)
    {
      v29 = *((a1 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v29 >= 0xFFFFFFFF)
      {
        LODWORD(v29) = -1;
      }

      return (v29 + 1);
    }

    else
    {
      v28 = *(v5 + 48);

      return v28(a1, v6, v30);
    }
  }

  v27 = v25 - 1;
  if (v21)
  {
    v27 = 0;
    LODWORD(v21) = *a1;
  }

  return v7 + (v21 | v27) + 1;
}

void sub_24EEBCADC(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 32) - 8);
  v28 = v5;
  v29 = *(v5 + 84);
  if (v29 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v5 + 84);
  }

  v7 = *(sub_24F923E98() - 8);
  if (*(v7 + 64) <= 8uLL)
  {
    v8 = 8;
  }

  else
  {
    v8 = *(v7 + 64);
  }

  v9 = *(sub_24F925218() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  v12 = *(sub_24F923F78() - 8);
  if (*(v12 + 64) <= 8uLL)
  {
    v13 = 8;
  }

  else
  {
    v13 = *(v12 + 64);
  }

  v14 = *(v5 + 64);
  v15 = *(v7 + 80) & 0xF8 | 7;
  v16 = (((((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v15 + 16) & ~v15;
  v17 = *(v9 + 80) & 0xF8 | 7;
  v18 = (v8 + v17 + v16 + 1) & ~v17;
  if (v10)
  {
    v19 = v11;
  }

  else
  {
    v19 = v11 + 1;
  }

  if (v19 <= 8)
  {
    v19 = 8;
  }

  v20 = *(v12 + 80) & 0xF8 | 7;
  v21 = ((((v13 + ((v19 + 1 + v20 + ((v19 + 1 + v17 + v18) & ~v17)) & ~v20) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v6 >= a3)
  {
    v24 = 0;
  }

  else
  {
    if (((((v13 + ((v19 + 1 + v20 + ((v19 + 1 + v17 + v18) & ~v17)) & ~v20) + 8) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v22 = a3 - v6 + 1;
    }

    else
    {
      v22 = 2;
    }

    if (v22 >= 0x10000)
    {
      v23 = 4;
    }

    else
    {
      v23 = 2;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    if (v22 >= 2)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }
  }

  if (a2 > v6)
  {
    if (v21)
    {
      v25 = 1;
    }

    else
    {
      v25 = a2 - v6;
    }

    if (v21)
    {
      bzero(a1, v21);
      *a1 = ~v6 + a2;
    }

    if (v24 > 1)
    {
      if (v24 == 2)
      {
        *(a1 + v21) = v25;
      }

      else
      {
        *(a1 + v21) = v25;
      }
    }

    else if (v24)
    {
      *(a1 + v21) = v25;
    }

    return;
  }

  if (v24 > 1)
  {
    if (v24 != 2)
    {
      *(a1 + v21) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_46;
    }

    *(a1 + v21) = 0;
  }

  else if (v24)
  {
    *(a1 + v21) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_46;
  }

  if (!a2)
  {
    return;
  }

LABEL_46:
  if (v29 < 0x7FFFFFFF)
  {
    v27 = ((a1 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v27 = a2 & 0x7FFFFFFF;
      v27[1] = 0;
    }

    else
    {
      *v27 = a2 - 1;
    }
  }

  else
  {
    v26 = *(v28 + 56);

    v26(a1);
  }
}

uint64_t sub_24EEBCEB4(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v12 = sub_24F9252E8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F925808();
  *&v17[1] = a3;
  *&v17[2] = a4;
  *&v17[3] = a5;
  *&v17[4] = a6;
  v18 = 0;
  sub_24F9252D8();
  MEMORY[0x25304C420](v15, a1, v12, a2);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_24EEBCFE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v16 = type metadata accessor for AdaptiveSideBySideContainerView();
  v17 = v16[19];
  *(a9 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  swift_storeEnumTagMultiPayload();
  v18 = v16[20];
  *(a9 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  swift_storeEnumTagMultiPayload();
  v19 = v16[21];
  *(a9 + v19) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v20 = v16[22];
  *(a9 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  swift_storeEnumTagMultiPayload();
  *(a9 + v16[23]) = 0;
  v21 = a9 + v16[24];
  sub_24F926F28();
  *v21 = a6;
  *(v21 + 8) = a7;
  result = (*(*(a8 - 8) + 32))(a9, a1, a8);
  v23 = (a9 + v16[17]);
  *v23 = a2;
  v23[1] = a3;
  v24 = (a9 + v16[18]);
  *v24 = a4;
  v24[1] = a5;
  return result;
}

uint64_t sub_24EEBD1C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v19[0] = a6;
  v19[1] = a7;
  v13 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24F9236C8();
  v17 = MEMORY[0x28223BE20](v16);
  (*(v13 + 16))(v15, v7, a3, v17);
  sub_24F9236D8();
  v19[4] = a3;
  v19[5] = a4;
  v19[6] = a5;
  v19[7] = v19[0];
  v19[8] = a1;
  v19[9] = a2;
  swift_getWitnessTable();
  return sub_24F923AF8();
}

uint64_t sub_24EEBD368(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_24F9252E8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0uLL;
  v13 = 0uLL;
  if ((a3 & 1) == 0)
  {
    sub_24F923318();
    *(&v12 + 1) = v14;
    *(&v13 + 1) = v15;
  }

  v17[0] = v12;
  v17[1] = v13;
  v18 = a3 & 1;
  sub_24F9252D8();
  MEMORY[0x25304C420](v11, a4, v8, a5);
  return (*(v9 + 8))(v11, v8);
}

double sub_24EEBD4D4()
{
  result = 40.0;
  if (*v0 != 3)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_24EEBD51C()
{
  if (*v0 > 1u)
  {
    if (*v0 == 2)
    {
      return sub_24F922318();
    }
  }

  else if (!*v0)
  {
    return sub_24F922318();
  }

  return _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
}

uint64_t sub_24EEBD564()
{
  v1 = sub_24F924258();
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = 0;
  if (*v0 == 3)
  {
    v6 = *(v2 + 20);
    v7 = *MEMORY[0x277CE0118];
    v8 = sub_24F924B38();
    (*(*(v8 - 8) + 104))(&v4[v6], v7, v8);
    __asm { FMOV            V0.2D, #8.0 }

    *v4 = _Q0;
    sub_24EEC31F4(&qword_27F229928, MEMORY[0x277CDFC08]);
    return sub_24F927348();
  }

  return v5;
}

double sub_24EEBD688(double result)
{
  if (*v1 - 1 >= 2)
  {
    if (*v1)
    {
      v2 = 0.4;
    }

    else
    {
      v2 = 0.7;
    }

    return result * v2;
  }

  return result;
}

uint64_t sub_24EEBD6BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](a1);
  (*(v3 + 16))(v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v6 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v7 = swift_allocObject();
  v44 = v7;
  *(v7 + 16) = *(a1 + 16);
  v43 = *(a1 + 24);
  *(v7 + 24) = v43;
  v8 = *(a1 + 40);
  *(v7 + 40) = v8;
  v42 = *(a1 + 48);
  *(v7 + 48) = v42;
  (*(v3 + 32))(v7 + v6, v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232EE8);
  v9 = sub_24F924038();
  *&v43 = v9;
  v10 = sub_24E602068(&qword_27F232EF0, &qword_27F232EE8);
  v73 = v42;
  v74 = v10;
  v11 = MEMORY[0x277CDFAD8];
  *&v42 = swift_getWitnessTable();
  v59 = v9;
  v60 = v42;
  v41[3] = MEMORY[0x277CDEC10];
  swift_getOpaqueTypeMetadata2();
  v41[2] = sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232EF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232F00);
  sub_24F924038();
  sub_24F924E38();
  sub_24E602068(&qword_27F232F08, &qword_27F232EF8);
  v12 = sub_24F923AE8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215A98);
  v13 = sub_24F924038();
  v14 = sub_24E602068(&qword_27F232F10, &qword_27F232EF8);
  v15 = sub_24E602068(&qword_27F232F18, &qword_27F232F00);
  v71 = v8;
  v72 = v15;
  WitnessTable = swift_getWitnessTable();
  v70 = v8;
  v16 = swift_getWitnessTable();
  v67 = v14;
  v68 = v16;
  v17 = swift_getWitnessTable();
  v18 = sub_24E6695B8();
  v19 = sub_24E602068(&qword_27F2551A0, &qword_27F215A98);
  v65 = v17;
  v66 = v19;
  v20 = swift_getWitnessTable();
  v59 = v12;
  v60 = &type metadata for IsDebugComponentNameOrSizeOverlayEnabled;
  v61 = v13;
  v62 = v17;
  v63 = v18;
  v64 = v20;
  swift_getOpaqueTypeMetadata2();
  sub_24F924038();
  sub_24F92C4A8();
  v59 = v12;
  v60 = &type metadata for IsDebugComponentNameOrSizeOverlayEnabled;
  v61 = v13;
  v62 = v17;
  v63 = v18;
  v64 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v58 = MEMORY[0x277CDF918];
  v56 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24F924B98();
  v21 = sub_24F924038();
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232F20);
  v59 = v43;
  v60 = v42;
  v54 = swift_getOpaqueTypeConformance2();
  v55 = MEMORY[0x277CE0880];
  v41[1] = v11;
  v23 = swift_getWitnessTable();
  v24 = swift_getWitnessTable();
  v52 = v23;
  v53 = v24;
  v25 = swift_getWitnessTable();
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A1E8);
  v27 = sub_24EB8F770();
  v59 = v26;
  v60 = v27;
  v28 = swift_getOpaqueTypeConformance2();
  v59 = v21;
  v60 = v22;
  v61 = v25;
  v62 = v28;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v59 = v21;
  v60 = v22;
  v61 = v25;
  v62 = v28;
  v30 = swift_getOpaqueTypeConformance2();
  v59 = OpaqueTypeMetadata2;
  v60 = v30;
  v31 = swift_getOpaqueTypeMetadata2();
  v59 = OpaqueTypeMetadata2;
  v60 = v30;
  v32 = swift_getOpaqueTypeConformance2();
  v33 = MEMORY[0x277CE1350];
  v59 = v21;
  v60 = MEMORY[0x277CE1350];
  v61 = v31;
  v62 = v25;
  v34 = MEMORY[0x277CE1340];
  v63 = MEMORY[0x277CE1340];
  v64 = v32;
  swift_getOpaqueTypeMetadata2();
  sub_24F9252E8();
  sub_24F924038();
  sub_24F924038();
  v59 = v21;
  v60 = v33;
  v61 = v31;
  v62 = v25;
  v63 = v34;
  v64 = v32;
  v35 = swift_getOpaqueTypeConformance2();
  v36 = sub_24EEC31F4(&qword_27F2156E0, MEMORY[0x277CE0660]);
  v50 = v35;
  v51 = v36;
  v48 = swift_getWitnessTable();
  v49 = v36;
  swift_getWitnessTable();
  v46 = sub_24F923B78();
  v47 = v37;
  v38 = sub_24F923B88();
  v39 = swift_getWitnessTable();
  sub_24E7896B8(&v46, v38, v39);

  v46 = v59;
  v47 = v60;
  sub_24E7896B8(&v46, v38, v39);
}

uint64_t sub_24EEBDF0C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, ValueMetadata *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>)
{
  v193 = a8;
  v196 = a7;
  v195 = a6;
  v192 = a5;
  v191 = a2;
  v156 = a1;
  v184 = a9;
  v194 = a4;
  Description = a4[-1].Description;
  MEMORY[0x28223BE20](a1);
  v177 = &v150 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232EE8);
  v12 = sub_24F924038();
  v188 = v12;
  v176 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v175 = &v150 - v13;
  v14 = sub_24E602068(&qword_27F232EF0, &qword_27F232EE8);
  v222 = a7;
  v223 = v14;
  WitnessTable = swift_getWitnessTable();
  v208 = v12;
  v209 = WitnessTable;
  v186 = MEMORY[0x277CDEC10];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v180 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v178 = &v150 - v16;
  v181 = v17;
  v189 = sub_24F924038();
  v183 = *(v189 - 8);
  MEMORY[0x28223BE20](v189);
  v182 = &v150 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232EF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232F00);
  v190 = a3;
  sub_24F924038();
  sub_24F924E38();
  sub_24E602068(&qword_27F232F08, &qword_27F232EF8);
  v19 = sub_24F923AE8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215A98);
  v20 = sub_24F924038();
  v21 = sub_24E602068(&qword_27F232F10, &qword_27F232EF8);
  v22 = sub_24E602068(&qword_27F232F18, &qword_27F232F00);
  v23 = v195;
  v220 = v195;
  v221 = v22;
  v218 = swift_getWitnessTable();
  v219 = v23;
  v24 = swift_getWitnessTable();
  v216 = v21;
  v217 = v24;
  v25 = swift_getWitnessTable();
  v26 = sub_24E6695B8();
  v27 = sub_24E602068(&qword_27F2551A0, &qword_27F215A98);
  v214 = v25;
  v215 = v27;
  v28 = swift_getWitnessTable();
  v208 = v19;
  v209 = &type metadata for IsDebugComponentNameOrSizeOverlayEnabled;
  v210 = v20;
  v211 = v25;
  v212 = v26;
  v213 = v28;
  swift_getOpaqueTypeMetadata2();
  sub_24F924038();
  v29 = sub_24F92C4A8();
  v208 = v19;
  v209 = &type metadata for IsDebugComponentNameOrSizeOverlayEnabled;
  v210 = v20;
  v211 = v25;
  v212 = v26;
  v213 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v207 = MEMORY[0x277CDF918];
  v205 = swift_getWitnessTable();
  v30 = swift_getWitnessTable();
  v172 = v29;
  v162 = v30;
  sub_24F924B98();
  v31 = sub_24F924038();
  v171 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v170 = &v150 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232F20);
  v208 = v188;
  v209 = WitnessTable;
  v158 = swift_getOpaqueTypeConformance2();
  v203 = v158;
  v204 = MEMORY[0x277CE0880];
  v34 = swift_getWitnessTable();
  v35 = swift_getWitnessTable();
  v159 = v34;
  v201 = v34;
  v202 = v35;
  v36 = swift_getWitnessTable();
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A1E8);
  v38 = sub_24EB8F770();
  v208 = v37;
  v209 = v38;
  v39 = swift_getOpaqueTypeConformance2();
  v208 = v31;
  v209 = v33;
  v210 = v36;
  v211 = v39;
  v40 = swift_getOpaqueTypeMetadata2();
  v208 = v31;
  v209 = v33;
  v210 = v36;
  v211 = v39;
  v41 = swift_getOpaqueTypeConformance2();
  v208 = v40;
  v209 = v41;
  v42 = swift_getOpaqueTypeMetadata2();
  v208 = v40;
  v209 = v41;
  v43 = swift_getOpaqueTypeConformance2();
  v174 = v31;
  v208 = v31;
  v209 = MEMORY[0x277CE1350];
  v157 = v42;
  v210 = v42;
  v173 = v36;
  v211 = v36;
  v212 = MEMORY[0x277CE1340];
  v213 = v43;
  v186 = v43;
  v44 = swift_getOpaqueTypeMetadata2();
  v160 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v185 = &v150 - v45;
  sub_24F9252E8();
  v161 = v44;
  v46 = sub_24F924038();
  v166 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v163 = &v150 - v47;
  v167 = v48;
  v169 = sub_24F924038();
  v168 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v164 = &v150 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v165 = &v150 - v51;
  v52 = sub_24F925218();
  v53 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v151 = &v150 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20);
  v56 = v55 - 8;
  MEMORY[0x28223BE20](v55);
  v58 = &v150 - v57;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  MEMORY[0x28223BE20](v59 - 8);
  v152 = &v150 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61);
  v63 = &v150 - v62;
  MEMORY[0x28223BE20](v64);
  v66 = &v150 - v65;
  sub_24F923998();
  v68 = v67;
  v70 = v69;
  sub_24F923988();
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v79 = v193;
  v80 = v193[1];
  v81 = v192;
  v156 = v193 + 1;
  v155 = v80;
  v154 = v80(v192, v193);
  (v79[2])(&v208, v81, v79);
  v153 = 0x5040302010001uLL >> (8 * v208);
  v208 = v190;
  v209 = v194;
  v210 = v81;
  v211 = v195;
  v212 = v196;
  v213 = v79;
  v82 = type metadata accessor for AdaptiveSideBySideContainerView();
  sub_24F769764(v66);
  (*(v53 + 104))(v63, *MEMORY[0x277CE0558], v52);
  (*(v53 + 56))(v63, 0, 1, v52);
  v83 = *(v56 + 56);
  sub_24EDEBCCC(v66, v58);
  sub_24EDEBCCC(v63, &v58[v83]);
  v84 = *(v53 + 48);
  if (v84(v58, 1, v52) == 1)
  {
    sub_24E601704(v63, &qword_27F215598);
    sub_24E601704(v66, &qword_27F215598);
    v85 = v84(&v58[v83], 1, v52);
    v86 = v194;
    if (v85 == 1)
    {
      v87 = sub_24E601704(v58, &qword_27F215598);
      v88 = 1;
LABEL_7:
      v89 = v193;
      v90 = v192;
      goto LABEL_9;
    }

LABEL_6:
    v87 = sub_24E601704(v58, &unk_27F254F20);
    v88 = 0;
    goto LABEL_7;
  }

  sub_24EDEBCCC(v58, v152);
  if (v84(&v58[v83], 1, v52) == 1)
  {
    sub_24E601704(v63, &qword_27F215598);
    sub_24E601704(v66, &qword_27F215598);
    (*(v53 + 8))(v152, v52);
    v86 = v194;
    goto LABEL_6;
  }

  v91 = &v58[v83];
  v92 = v151;
  (*(v53 + 32))(v151, v91, v52);
  sub_24EEC31F4(&qword_27F215650, MEMORY[0x277CE0570]);
  v150 = v82;
  v93 = v152;
  v88 = sub_24F92AFF8();
  v94 = *(v53 + 8);
  v94(v92, v52);
  sub_24E601704(v63, &qword_27F215598);
  sub_24E601704(v66, &qword_27F215598);
  v95 = v93;
  v82 = v150;
  v94(v95, v52);
  v87 = sub_24E601704(v58, &qword_27F215598);
  v89 = v193;
  v90 = v192;
  v86 = v194;
LABEL_9:
  if (v68 <= 1580.0)
  {
    v96 = v68;
  }

  else
  {
    v96 = 1580.0;
  }

  v97 = 0.0;
  v98 = v191;
  if (v153 <= 2u)
  {
    if (!v153)
    {
      goto LABEL_43;
    }

    v97 = 16.0;
    if (v153 == 1)
    {
      if (v88)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    }

    if ((v88 & 1) == 0)
    {
      v97 = dbl_24F9AB680[sub_24E6B00B4(v96)];
    }

    goto LABEL_30;
  }

  if (v153 == 3)
  {
    v87 = sub_24E6B00B4(v96);
    if (v87 < 4u)
    {
      goto LABEL_43;
    }

    if (v88)
    {
      v97 = 16.0;
    }

    else
    {
      v97 = 34.0;
    }

LABEL_30:
    v87 = [objc_opt_self() _readableWidth];
    v100 = v96 - v99;
    if (v100 > 0.0)
    {
      v101 = v100 * 0.5;
      if (v101 > v97)
      {
        v97 = v101;
      }
    }

    goto LABEL_43;
  }

  if (v153 == 4)
  {
    if ((v88 & 1) == 0)
    {
LABEL_41:
      v87 = sub_24E6B00B4(v96);
      v97 = dbl_24F9AB680[v87];
      goto LABEL_43;
    }

    v97 = 16.0;
    if (v96 + -420.0 > 0.0)
    {
      if ((v96 + -420.0) * 0.5 > 16.0)
      {
        v97 = (v96 + -420.0) * 0.5;
      }

      else
      {
        v97 = 16.0;
      }
    }
  }

  else
  {
    if (qword_27F210748 != -1)
    {
      swift_once();
    }

    v87 = swift_beginAccess();
    if (byte_27F2301A8)
    {
      if (v88)
      {
        if (qword_27F210D60 != -1)
        {
          v87 = swift_once();
        }

        v97 = *&qword_27F39D300;
      }

      else if (v96 < 0.0 || v96 >= 376.0)
      {
        if (v96 >= 428.0 || v96 < 376.0)
        {
          v97 = 46.0;
        }

        else
        {
          v97 = 38.0;
        }
      }

      else
      {
        v97 = 44.0;
      }
    }

    else
    {
      v97 = 40.0;
    }
  }

LABEL_43:
  v102 = v177;
  (*(v98 + *(v82 + 72)))(v87, v68, v70, v72, v74, v76, v78);
  swift_getKeyPath();
  v103 = swift_allocObject();
  v104 = v154 & 1;
  *(v103 + 16) = v104;
  v105 = v175;
  sub_24F9266A8();

  Description[1](v102, v86);
  v106 = sub_24F925818();
  v107 = v178;
  v108 = v188;
  MEMORY[0x25304C0E0](v104, v106, v188, WitnessTable);
  (*(v176 + 8))(v105, v108);
  if ((v155(v90, v89) & 1) != 0 || (v109 = sub_24F925818(), sub_24F925848(), sub_24F925848(), sub_24F925848() != v109))
  {
    sub_24F925848();
  }

  sub_24F924058();
  v110 = v182;
  v111 = v181;
  sub_24F926438();
  v112 = (*(v180 + 8))(v107, v111);
  v193 = &v150;
  MEMORY[0x28223BE20](v112);
  v113 = v190;
  *(&v150 - 14) = v190;
  *(&v150 - 13) = v86;
  v114 = v195;
  *(&v150 - 12) = v90;
  *(&v150 - 11) = v114;
  v115 = v196;
  *(&v150 - 10) = v196;
  *(&v150 - 9) = v89;
  *(&v150 - 64) = v104;
  *(&v150 - 7) = v98;
  *(&v150 - 6) = v68;
  *(&v150 - 5) = v70;
  *(&v150 - 4) = v72;
  *(&v150 - 3) = v74;
  sub_24F9249A8();
  v149 = v162;
  v148 = v159;
  v116 = v170;
  v117 = v189;
  sub_24F926318();
  (*(v183 + 8))(v110, v117);
  v118 = sub_24F927558();
  MEMORY[0x28223BE20](v118);
  v119 = v194;
  *(&v150 - 8) = v113;
  *(&v150 - 7) = v119;
  *(&v150 - 6) = v90;
  *(&v150 - 5) = v114;
  *(&v150 - 4) = v115;
  *(&v150 - 3) = v89;
  v120 = swift_checkMetadataState();
  v121 = MEMORY[0x277CE1350];
  v148 = v186;
  v122 = v174;
  v123 = v173;
  sub_24F926B08();
  (*(v171 + 8))(v116, v122);
  v124 = (v89[3])(v90, v89);
  LOBYTE(v116) = sub_24F925818();
  sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v116)
  {
    sub_24F925848();
  }

  *&v125 = (v68 - v96) * 0.5 + v97;
  v126 = sub_24EA91914(v124);
  v128 = v127;
  v130 = v129;
  v132 = v131;
  v208 = v122;
  v209 = v121;
  v210 = v120;
  v211 = v123;
  v212 = MEMORY[0x277CE1340];
  v213 = v186;
  v133 = swift_getOpaqueTypeConformance2();
  v134 = v163;
  v135 = v161;
  v136 = v185;
  sub_24EEBCEB4(v161, v133, v126, v128, v130, v132);
  (*(v160 + 8))(v136, v135);
  v137 = sub_24F9257F8();
  v138 = sub_24EEC31F4(&qword_27F2156E0, MEMORY[0x277CE0660]);
  v199 = v133;
  v200 = v138;
  v139 = v167;
  v140 = swift_getWitnessTable();
  v141 = v164;
  sub_24EEBD368(v137, v125, 0, v139, v140);
  (*(v166 + 8))(v134, v139);
  v197 = v140;
  v198 = v138;
  v142 = v169;
  v143 = swift_getWitnessTable();
  v144 = v165;
  sub_24E7896B8(v141, v142, v143);
  v145 = *(v168 + 8);
  v145(v141, v142);
  sub_24E7896B8(v144, v142, v143);
  return (v145)(v144, v142);
}

void sub_24EEBF840(double *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    sub_24F925838();
    *a1 = sub_24EA91914(v2);
    *(a1 + 1) = v4;
    *(a1 + 2) = v5;
    *(a1 + 3) = v6;
  }
}

uint64_t sub_24EEBF8A0@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, ValueMetadata *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D2>, double a12@<D3>, double a13@<D4>, double a14@<D5>)
{
  v95 = a8;
  v96 = a7;
  v98 = a5;
  v93 = a4;
  v97 = a2;
  LODWORD(v99) = a1;
  v102 = a9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232EF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232F00);
  sub_24F924038();
  v90 = a3;
  sub_24F924E38();
  sub_24E602068(&qword_27F232F08, &qword_27F232EF8);
  v21 = sub_24F923AE8();
  v92 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v91 = &v77[-v22];
  v89 = type metadata accessor for PageHeaderLayout();
  MEMORY[0x28223BE20](v89);
  v85 = &v77[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215A98);
  v24 = sub_24F924038();
  v25 = sub_24E602068(&qword_27F232F10, &qword_27F232EF8);
  v26 = sub_24E602068(&qword_27F232F18, &qword_27F232F00);
  v126 = a6;
  v127 = v26;
  WitnessTable = swift_getWitnessTable();
  v125 = a6;
  v94 = a6;
  v27 = swift_getWitnessTable();
  v122 = v25;
  v123 = v27;
  v28 = swift_getWitnessTable();
  v29 = sub_24E6695B8();
  v30 = sub_24E602068(&qword_27F2551A0, &qword_27F215A98);
  v120 = v28;
  v121 = v30;
  v31 = swift_getWitnessTable();
  v106 = v21;
  v114 = v21;
  v115 = &type metadata for IsDebugComponentNameOrSizeOverlayEnabled;
  v105 = v24;
  v116 = v24;
  v117 = v28;
  v104 = v29;
  v118 = v29;
  v119 = v31;
  v103 = v31;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v87 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v34 = &v77[-v33];
  v35 = sub_24F924038();
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v88 = &v77[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v38);
  v86 = &v77[-v39];
  v40 = sub_24F92C4A8();
  v101 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v100 = &v77[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = MEMORY[0x28223BE20](v42);
  v45 = &v77[-v44];
  v46 = MEMORY[0x277CDF918];
  if (v99)
  {
    v84 = v40;
    v47 = v95;
    v48 = *(v95 + 48);
    v49 = v85;
    v99 = v28;
    v50 = v97;
    v82 = v36;
    v51 = v98;
    v48(v98, v95, v43);
    v52 = (*(v47 + 64))(v51, v47, a10);
    v78 = (*(v47 + 40))(v51, v47);
    v79 = v35;
    v53 = v90;
    v80 = v34;
    v54 = v93;
    v114 = v90;
    v115 = v93;
    v83 = v45;
    v55 = v94;
    v116 = v51;
    v117 = v94;
    v81 = OpaqueTypeMetadata2;
    v56 = v96;
    v118 = v96;
    v119 = v47;
    type metadata accessor for AdaptiveSideBySideContainerView();
    v57 = v89;
    sub_24F7699B0(v49 + *(v89 + 32));
    *(v49 + v57[5]) = v52;
    v58 = (v49 + v57[6]);
    *v58 = a11;
    v58[1] = a12;
    v58[2] = a13;
    v58[3] = a14;
    *(v49 + v57[7]) = v78 & 1;
    v59 = sub_24EEC0468(v49, v53, v54, v51, v55, v56, v47);
    v60 = sub_24EEC24A0(v49);
    v61 = MEMORY[0x28223BE20](v60);
    *&v77[-64] = v53;
    *&v77[-56] = v54;
    v62 = v79;
    *&v77[-48] = v51;
    *&v77[-40] = v55;
    *&v77[-32] = v56;
    *&v77[-24] = v47;
    *&v77[-16] = v50;
    v63 = v91;
    (v59)(sub_24EEC24FC, v61);

    sub_24F9275A8();
    sub_24F926CF8();
    v64 = v80;
    sub_24F186F48();

    v65 = v63;
    v45 = v83;
    (*(v92 + 8))(v65, v106);
    sub_24F925858();
    v28 = v99;
    (*(v47 + 32))(v51, v47);
    v114 = v106;
    v115 = &type metadata for IsDebugComponentNameOrSizeOverlayEnabled;
    v116 = v105;
    v117 = v28;
    v118 = v104;
    v119 = v103;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v67 = v88;
    v68 = v81;
    sub_24F926A48();
    (*(v87 + 8))(v64, v68);
    v107 = OpaqueTypeConformance2;
    v46 = MEMORY[0x277CDF918];
    v108 = MEMORY[0x277CDF918];
    v69 = swift_getWitnessTable();
    v70 = v86;
    sub_24E7896B8(v67, v62, v69);
    v71 = v82;
    v72 = *(v82 + 8);
    v72(v67, v62);
    sub_24E7896B8(v70, v62, v69);
    v72(v70, v62);
    v40 = v84;
    v73 = v100;
    (*(v71 + 32))(v100, v67, v62);
    (*(v71 + 56))(v73, 0, 1, v62);
  }

  else
  {
    v73 = v100;
    (*(v36 + 56))(v100, 1, 1, v35, v43);
    v114 = v106;
    v115 = &type metadata for IsDebugComponentNameOrSizeOverlayEnabled;
    v116 = v105;
    v117 = v28;
    v118 = v104;
    v119 = v103;
    v112 = swift_getOpaqueTypeConformance2();
    v113 = v46;
    swift_getWitnessTable();
  }

  sub_24E8D5004(v73, v45);
  v74 = *(v101 + 8);
  v74(v73, v40);
  v114 = v106;
  v115 = &type metadata for IsDebugComponentNameOrSizeOverlayEnabled;
  v116 = v105;
  v117 = v28;
  v118 = v104;
  v119 = v103;
  v110 = swift_getOpaqueTypeConformance2();
  v111 = v46;
  v109 = swift_getWitnessTable();
  v75 = swift_getWitnessTable();
  sub_24E7896B8(v45, v40, v75);
  return (v74)(v45, v40);
}

uint64_t (*sub_24EEC0468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14 = type metadata accessor for PageHeaderLayout();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  sub_24EEC2530(a1, &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v15 + 80) + 64) & ~*(v15 + 80);
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = a4;
  v18[5] = a5;
  v18[6] = a6;
  v18[7] = a7;
  sub_24EEC26AC(&v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  return sub_24EEC2710;
}

uint64_t sub_24EEC0594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PageHeaderLayout();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232F00);
  sub_24F924038();
  v7 = sub_24F924E38();
  v8 = sub_24EEC31F4(&qword_27F232F28, type metadata accessor for PageHeaderLayout);
  sub_24E602068(&qword_27F232F18, &qword_27F232F00);
  swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  return sub_24EEBD1C0(a1, a2, v6, v7, v8, WitnessTable, a3);
}

uint64_t sub_24EEC070C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v46 = a3;
  v47 = a6;
  v51 = a5;
  v52 = a8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232F00);
  v12 = sub_24F924038();
  v45 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v44 = &v44 - v16;
  v17 = *(a2 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v44 - v22;
  v24 = sub_24F924E38();
  v49 = *(v24 - 8);
  v50 = v24;
  v25 = MEMORY[0x28223BE20](v24);
  v48 = &v44 - v26;
  v27 = (*(a7 + 56))(a4, a7, v25);
  if (v27)
  {
    v28 = v27;
    v61 = a2;
    v62 = v46;
    v63 = a4;
    v29 = v51;
    v64 = v51;
    v65 = v47;
    v66 = a7;
    v30 = type metadata accessor for AdaptiveSideBySideContainerView();
    (*(a1 + *(v30 + 68)))();
    v61 = v28;
    sub_24E6425B4();
    sub_24F926B58();
    (*(v17 + 8))(v23, a2);
    v31 = sub_24E602068(&qword_27F232F18, &qword_27F232F00);
    v53 = v29;
    v54 = v31;
    WitnessTable = swift_getWitnessTable();
    v33 = v44;
    sub_24E7896B8(v14, v12, WitnessTable);
    v34 = *(v45 + 8);
    v34(v14, v12);
    sub_24E7896B8(v33, v12, WitnessTable);
    v35 = v48;
    sub_24ECCCBA0(v14, v12);

    v34(v14, v12);
    v36 = v33;
    v37 = v12;
  }

  else
  {
    v61 = a2;
    v62 = v46;
    v63 = a4;
    v29 = v51;
    v64 = v51;
    v65 = v47;
    v66 = a7;
    v38 = type metadata accessor for AdaptiveSideBySideContainerView();
    (*(a1 + *(v38 + 68)))();
    sub_24E7896B8(v20, a2, v29);
    v34 = *(v17 + 8);
    v34(v20, a2);
    sub_24E7896B8(v23, a2, v29);
    v39 = sub_24E602068(&qword_27F232F18, &qword_27F232F00);
    v59 = v29;
    v60 = v39;
    swift_getWitnessTable();
    v35 = v48;
    sub_24ECCCC98(v20, v12, a2);
    v34(v20, a2);
    v36 = v23;
    v37 = a2;
  }

  v34(v36, v37);
  v40 = sub_24E602068(&qword_27F232F18, &qword_27F232F00);
  v57 = v29;
  v58 = v40;
  v55 = swift_getWitnessTable();
  v56 = v29;
  v41 = v50;
  v42 = swift_getWitnessTable();
  sub_24E7896B8(v35, v41, v42);
  return (*(v49 + 8))(v35, v41);
}

uint64_t sub_24EEC0C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v59 = a2;
  v60 = a8;
  v56 = a7;
  v57 = a4;
  v65 = a6;
  v58 = a5;
  v62 = a1;
  v63 = a9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F40);
  MEMORY[0x28223BE20](v11 - 8);
  v61 = v52 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232EE8);
  v13 = sub_24F924038();
  v54 = v13;
  v14 = sub_24E602068(&qword_27F232EF0, &qword_27F232EE8);
  v94 = a7;
  v95 = v14;
  v64 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v80 = v13;
  v81 = WitnessTable;
  v52[4] = MEMORY[0x277CDEC10];
  v53 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v52[3] = sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232EF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232F00);
  v55 = a3;
  sub_24F924038();
  sub_24F924E38();
  sub_24E602068(&qword_27F232F08, &qword_27F232EF8);
  v16 = sub_24F923AE8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215A98);
  v17 = sub_24F924038();
  v18 = sub_24E602068(&qword_27F232F10, &qword_27F232EF8);
  v19 = sub_24E602068(&qword_27F232F18, &qword_27F232F00);
  v20 = v65;
  v92 = v65;
  v93 = v19;
  v90 = swift_getWitnessTable();
  v91 = v20;
  v21 = swift_getWitnessTable();
  v88 = v18;
  v89 = v21;
  v22 = swift_getWitnessTable();
  v23 = sub_24E6695B8();
  v24 = sub_24E602068(&qword_27F2551A0, &qword_27F215A98);
  v86 = v22;
  v87 = v24;
  v25 = swift_getWitnessTable();
  v80 = v16;
  v81 = &type metadata for IsDebugComponentNameOrSizeOverlayEnabled;
  v82 = v17;
  v83 = v22;
  v84 = v23;
  v85 = v25;
  swift_getOpaqueTypeMetadata2();
  sub_24F924038();
  sub_24F92C4A8();
  v80 = v16;
  v81 = &type metadata for IsDebugComponentNameOrSizeOverlayEnabled;
  v82 = v17;
  v83 = v22;
  v84 = v23;
  v85 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v79 = MEMORY[0x277CDF918];
  v77 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24F924B98();
  v26 = sub_24F924038();
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232F20);
  v80 = v54;
  v81 = v53;
  v75 = swift_getOpaqueTypeConformance2();
  v76 = MEMORY[0x277CE0880];
  v28 = swift_getWitnessTable();
  v29 = swift_getWitnessTable();
  v73 = v28;
  v74 = v29;
  v30 = swift_getWitnessTable();
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A1E8);
  v32 = sub_24EB8F770();
  v80 = v31;
  v81 = v32;
  v33 = swift_getOpaqueTypeConformance2();
  v80 = v26;
  v81 = v27;
  v52[1] = v26;
  v52[2] = v27;
  v82 = v30;
  v83 = v33;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v64 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v36 = v52 - v35;
  v80 = v26;
  v81 = v27;
  v82 = v30;
  v83 = v33;
  v37 = swift_getOpaqueTypeConformance2();
  v80 = OpaqueTypeMetadata2;
  v81 = v37;
  v53 = v37;
  v54 = MEMORY[0x277CDEBB0];
  v38 = swift_getOpaqueTypeMetadata2();
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v41 = v52 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v44 = v52 - v43;
  v66 = v55;
  v67 = v57;
  v68 = v58;
  v69 = v65;
  v70 = v56;
  v71 = v60;
  v72 = v59;
  sub_24F924C88();
  swift_checkMetadataState();
  sub_24F926218();
  v45 = v61;
  sub_24F925078();
  v46 = sub_24F925088();
  (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
  v47 = sub_24F925818();
  v48 = v53;
  MEMORY[0x25304C060](v45, v47, OpaqueTypeMetadata2, v53);
  sub_24E601704(v45, &qword_27F228F40);
  (*(v64 + 8))(v36, OpaqueTypeMetadata2);
  v80 = OpaqueTypeMetadata2;
  v81 = v48;
  v49 = swift_getOpaqueTypeConformance2();
  sub_24E7896B8(v41, v38, v49);
  v50 = *(v39 + 8);
  v50(v41, v38);
  sub_24E7896B8(v44, v38, v49);
  return (v50)(v44, v38);
}

uint64_t sub_24EEC14A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = sub_24F924C18();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F926C98();
  (*(a7 + 24))(a4, a7);
  sub_24F927618();
  sub_24F9238C8();
  v15[1] = v13;
  v15[2] = v20;
  v16 = v21;
  v17 = v22;
  v18 = v23;
  v19 = v24;
  sub_24F924C08();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A1E8);
  sub_24EB8F770();
  sub_24F9265B8();
  (*(v10 + 8))(v12, v9);
}

uint64_t sub_24EEC1658()
{
  v14 = *(v0 + 32);
  v1 = type metadata accessor for AdaptiveSideBySideContainerView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 64) & ~*(*(v1 - 1) + 80));
  (*(*(v14 - 8) + 8))(v2);

  v3 = v1[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_24F923E98();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24F925218();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v2 + v5, 1, v6))
    {
      (*(v7 + 8))(v2 + v5, v6);
    }
  }

  else
  {
  }

  v8 = v1[21];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_24F925218();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v2 + v8, 1, v9))
    {
      (*(v10 + 8))(v2 + v8, v9);
    }
  }

  else
  {
  }

  v11 = v1[22];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_24F923F78();
    (*(*(v12 - 8) + 8))(v2 + v11, v12);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24EEC19D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = *(type metadata accessor for AdaptiveSideBySideContainerView() - 8);
  v12 = v2 + ((*(v11 + 80) + 64) & ~*(v11 + 80));

  return sub_24EEBDF0C(a1, v12, v5, v6, v7, v8, v9, v10, a2);
}

uint64_t sub_24EEC1B54(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v48 = sub_24F922348();
  v51 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v54 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_24F923F78();
  v40 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F923A38();
  v36 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v35 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222C98);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v21 = &v35 - v20;
  v49 = a1;
  v39 = a2;
  v50 = a3;
  v22 = v14;
  v38 = a4;
  v23 = sub_24F923BB8();
  (*(*(v23 - 8) + 16))(v21, a5, v23);
  v24 = *(v19 + 44);
  v25 = sub_24EEC31F4(&qword_27F2195F8, MEMORY[0x277CDF7F8]);
  sub_24F92BB88();
  sub_24F92BC08();
  if (*&v21[v24] != v57[0])
  {
    v37 = v55 + 8;
    v52 = (v36 + 32);
    v53 = (v36 + 16);
    v43 = v51 + 1;
    v42 = *MEMORY[0x277CDFA88];
    v41 = (v40 + 13);
    ++v40;
    v51 = (v36 + 8);
    v39 &= 1u;
    v38 &= 1u;
    v45 = v24;
    v44 = v25;
    do
    {
      v27 = sub_24F92BC88();
      (*v53)(v17);
      v27(v57, 0);
      sub_24F92BC18();
      (*v52)(v22, v17, v12);
      if (*(v55 + *(type metadata accessor for PageHeaderLayout() + 28)) == 1)
      {
        v28 = v23;
        v29 = v12;
        v30 = v46;
        v31 = v47;
        (*v41)(v46, v42, v47);
        sub_24F923F68();
        (*v40)(v30, v31);
        sub_24F927828();
        LOBYTE(v57[0]) = v39;
        v56 = v38;
        sub_24F923A28();
        v12 = v29;
        v23 = v28;
        v24 = v45;
      }

      else
      {
        _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
        sub_24F9222E8();
        v33 = v32;
        sub_24F9222E8();
        if (v34 >= v33)
        {
          sub_24F922308();
        }

        else
        {
          sub_24F9222F8();
        }

        (*v43)(v54, v48);
        sub_24F927828();
        LOBYTE(v57[0]) = 0;
        v56 = 0;
        sub_24F923A28();
      }

      (*v51)(v22, v12);
      sub_24F92BC08();
    }

    while (*&v21[v24] != v57[0]);
  }

  return sub_24E601704(v21, &qword_27F222C98);
}

void (*sub_24EEC2228(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24F923238();
  return sub_24E622878;
}

uint64_t sub_24EEC2308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v17 - v13;
  v12();
  sub_24E7896B8(v11, a4, a6);
  v15 = *(v8 + 8);
  v15(v11, a4);
  sub_24E7896B8(v14, a4, a6);
  return (v15)(v14, a4);
}

uint64_t type metadata accessor for PageHeaderLayout()
{
  result = qword_27F232F30;
  if (!qword_27F232F30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EEC24A0(uint64_t a1)
{
  v2 = type metadata accessor for PageHeaderLayout();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EEC2530(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageHeaderLayout();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EEC2594()
{
  v1 = (type metadata accessor for PageHeaderLayout() - 8);
  v2 = v0 + ((*(*v1 + 80) + 64) & ~*(*v1 + 80));
  v3 = sub_24F922348();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v1[10];
  v5 = sub_24F923F78();
  (*(*(v5 - 8) + 8))(v2 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_24EEC26AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageHeaderLayout();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EEC27F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F922348();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = sub_24F923F78();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24EEC2938(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24F922348();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 28)) = a2 + 1;
  }

  else
  {
    v11 = sub_24F923F78();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_24EEC2A58()
{
  result = sub_24F922348();
  if (v1 <= 0x3F)
  {
    result = sub_24F923F78();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24EEC2AF8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232EE8);
  sub_24F924038();
  sub_24E602068(&qword_27F232EF0, &qword_27F232EE8);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232EF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232F00);
  sub_24F924038();
  sub_24F924E38();
  sub_24E602068(&qword_27F232F08, &qword_27F232EF8);
  sub_24F923AE8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215A98);
  sub_24F924038();
  sub_24E602068(&qword_27F232F10, &qword_27F232EF8);
  sub_24E602068(&qword_27F232F18, &qword_27F232F00);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24E6695B8();
  sub_24E602068(&qword_27F2551A0, &qword_27F215A98);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24F924038();
  sub_24F92C4A8();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24F924B98();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232F20);
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A1E8);
  sub_24EB8F770();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_24F9252E8();
  sub_24F924038();
  sub_24F924038();
  swift_getOpaqueTypeConformance2();
  sub_24EEC31F4(&qword_27F2156E0, MEMORY[0x277CE0660]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24F923B88();
  return swift_getWitnessTable();
}

unint64_t sub_24EEC31A0()
{
  result = qword_27F232F48;
  if (!qword_27F232F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232F48);
  }

  return result;
}

uint64_t sub_24EEC31F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EEC323C()
{
  v7 = sub_24F92BEE8();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24F92BE88();
  MEMORY[0x28223BE20](v3);
  v4 = sub_24F927DC8();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_24E74EC40();
  sub_24F927DB8();
  v8 = MEMORY[0x277D84F90];
  sub_24E9BFCB4(&qword_27F2394E0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30);
  sub_24E9723D4(&qword_27F2394F0, &unk_27F22BD30);
  sub_24F92C6A8();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_24F92BF38();
  qword_27F232F50 = result;
  return result;
}

uint64_t sub_24EEC348C()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F232F58);
  __swift_project_value_buffer(v4, qword_27F232F58);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

_BYTE *sub_24EEC35E0(int a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v45 = a3;
  LODWORD(v46) = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C570);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v44 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237700);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v44 - v11;
  v4[OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator__isGlobalAutoPlayEnabled] = 1;
  v4[OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_isAutoPlayEnabled] = 1;
  v4[OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_isAutoPlayActive] = 1;
  v4[OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_shouldLoopAutoPlayback] = 1;
  v13 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_metricsPipeline;
  v14 = sub_24F929158();
  (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
  v15 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_visibleVideoFrames;
  v16 = MEMORY[0x277D84F90];
  *&v4[v15] = sub_24E60AF2C(MEMORY[0x277D84F90]);
  *&v4[OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_autoPlayExclusions] = MEMORY[0x277D84FA0];
  *&v4[OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_playbackQueue] = v16;
  v17 = &v4[OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activePlaybackIndex];
  *v17 = 0;
  v17[8] = 1;
  *&v4[OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activeVideo] = 0;
  v18 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator__isScrolling;
  LOBYTE(v49[0]) = 0;
  sub_24F923058();
  (*(v10 + 32))(&v4[v18], v12, v9);
  v19 = &v4[OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_networkObservation];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *(v19 + 4) = 0;
  v4[OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_isLowDataModeEnabled] = 0;
  *&v4[OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_playbackCoalescingWaitTime] = 0x3FB999999999999ALL;
  *&v4[OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_playbackWorkItem] = 0;
  swift_beginAccess();
  sub_24E861B58(a2, &v4[v13]);
  swift_endAccess();
  v47 = a2;
  v20 = a2;
  v21 = v45;
  sub_24E60169C(v20, v8, &qword_27F21C570);
  type metadata accessor for VideoViewModelManager();
  swift_allocObject();
  *&v4[OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_videoViewModelManager] = sub_24EDEFDC8(v8);
  v4[OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_isVideoAutoplayEnabled] = UIAccessibilityIsVideoAutoplayEnabled();
  v22 = type metadata accessor for VideoPlaybackCoordinator();
  v51.receiver = v4;
  v51.super_class = v22;
  v23 = objc_msgSendSuper2(&v51, sel_init);
  LOBYTE(v8) = v23[OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator__isGlobalAutoPlayEnabled];
  v24 = v46 & 1;
  v23[OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator__isGlobalAutoPlayEnabled] = v46;
  v25 = v23;
  sub_24EEC3D9C(v8);
  v26 = v21[3];
  v27 = v21[4];
  __swift_project_boxed_opaque_existential_1(v21, v26);
  v28 = sub_24E74EC40();
  v29 = sub_24F92BEF8();
  v48[3] = v28;
  v48[4] = MEMORY[0x277D225C0];
  v48[0] = v29;
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = *(v27 + 40);

  v31(v49, v48, sub_24EEC9A40, v30, v26, v27);

  __swift_destroy_boxed_opaque_existential_1(v48);
  v32 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_networkObservation;
  swift_beginAccess();
  sub_24EA043F8(v49, &v25[v32]);
  swift_endAccess();
  v33 = v21[3];
  v34 = v21[4];
  __swift_project_boxed_opaque_existential_1(v21, v33);
  v25[OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_isLowDataModeEnabled] = (*(v34 + 32))(v33, v34) & 1;
  if (qword_27F2107D8 != -1)
  {
    swift_once();
  }

  v35 = sub_24F92AAE8();
  v46 = __swift_project_value_buffer(v35, qword_27F232F58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93FC20;
  sub_24F9283A8();
  v36 = MEMORY[0x277D839B0];
  v50 = MEMORY[0x277D839B0];
  LOBYTE(v49[0]) = v24;
  sub_24F928438();
  sub_24E601704(v49, &qword_27F2129B0);
  sub_24F9283A8();
  v37 = v25[OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_isVideoAutoplayEnabled];
  v50 = v36;
  LOBYTE(v49[0]) = v37;
  sub_24F928438();
  sub_24E601704(v49, &qword_27F2129B0);
  sub_24F92A588();

  v38 = objc_opt_self();
  v39 = [v38 defaultCenter];
  [v39 addObserver:v25 selector:sel_videoAutoplayStatusDidChange_ name:*MEMORY[0x277D765E0] object:0];

  v40 = [v38 defaultCenter];
  v41 = v25;
  v42 = sub_24F92B098();
  [v40 addObserver:v41 selector:sel_didChangeAutoPlayVideoSetting_ name:v42 object:0];

  sub_24E601704(v47, &qword_27F21C570);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return v41;
}

void sub_24EEC3D00(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = a1[3];
    v5 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v4);
    v3[OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_isLowDataModeEnabled] = (*(v5 + 32))(v4, v5) & 1;
  }
}

void sub_24EEC3D9C(char a1)
{
  v2 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator__isGlobalAutoPlayEnabled;
  if (*(v1 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator__isGlobalAutoPlayEnabled) != (a1 & 1))
  {
    if (qword_27F2107D8 != -1)
    {
      swift_once();
    }

    v3 = sub_24F92AAE8();
    __swift_project_value_buffer(v3, qword_27F232F58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    if ((*(v1 + v2) & 1) != 0 || sub_24EEC452C())
    {
      v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_isVideoAutoplayEnabled);
    }

    else
    {
      v4 = 0;
    }

    v6 = MEMORY[0x277D839B0];
    v5[0] = v4;
    sub_24F928438();
    sub_24E601704(v5, &qword_27F2129B0);
    sub_24F92A588();

    if (*(v1 + v2) == 1)
    {
      *(v1 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_isAutoPlayActive) = 1;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_24F923098();

      if ((v5[0] & 1) == 0)
      {
        sub_24EEC66B8();
      }
    }

    else
    {
      sub_24EEC6894();
      *(v1 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activeVideo) = 0;

      sub_24EEC4150();
    }
  }
}

uint64_t sub_24EEC4000(uint64_t a1)
{
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_visibleVideoFrames;
  v8 = (v4 + 63) >> 6;

  v10 = 0;
  while (v6)
  {
LABEL_11:
    sub_24E65864C(*(a1 + 48) + 40 * (__clz(__rbit64(v6)) | (v10 << 6)), v15);
    v13[0] = v15[0];
    v13[1] = v15[1];
    v14 = v16;
    swift_beginAccess();
    if (*(*(v1 + v7) + 16) && (sub_24E76D934(v13), (v12 & 1) != 0))
    {
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      sub_24EEC6CF8(v13);
    }

    v6 &= v6 - 1;
    result = sub_24E6585F8(v13);
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
    }

    v6 = *(v3 + 8 * v11);
    ++v10;
    if (v6)
    {
      v10 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24EEC4150()
{
  result = *(v0 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_playbackQueue);
  v2 = *(result + 16);
  if (v2)
  {
    v3 = v0;
    v4 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activeVideo;
    v5 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_videoViewModelManager;
    v6 = result + 32;

    v7 = &unk_27F21B438;
    v18 = v5;
    while (1)
    {
      sub_24E65864C(v6, v34);
      sub_24E65864C(v34, v32);
      v8 = *(v3 + v4);
      if (v8)
      {
        sub_24E65864C(*(v8 + 16) + OBJC_IVAR____TtC12GameStoreKit5Video_playbackId, &v29);
      }

      else
      {
        v31 = 0;
        v29 = 0u;
        v30 = 0u;
      }

      sub_24E60169C(v32, v24, &qword_27F235830);
      sub_24E60169C(&v29, &v26, &qword_27F235830);
      if (!v25)
      {
        break;
      }

      sub_24E60169C(v24, v22, &qword_27F235830);
      if (!*(&v27 + 1))
      {
        sub_24E601704(&v29, &qword_27F235830);
        sub_24E601704(v32, &qword_27F235830);
        sub_24E6585F8(v22);
LABEL_15:
        sub_24E601704(v24, v7);
        goto LABEL_16;
      }

      v19 = v26;
      v20 = v27;
      v21 = v28;
      v9 = MEMORY[0x253052150](v22, &v19);
      sub_24E6585F8(&v19);
      sub_24E601704(&v29, &qword_27F235830);
      sub_24E601704(v32, &qword_27F235830);
      sub_24E6585F8(v22);
      sub_24E601704(v24, &qword_27F235830);
      if (v9)
      {
        goto LABEL_27;
      }

LABEL_16:
      sub_24E65864C(v34, v24);
      sub_24E60169C(v24, &v29, &qword_27F235830);
      if (*(&v30 + 1))
      {
        v32[0] = v29;
        v32[1] = v30;
        v33 = v31;
        v10 = *(v3 + v5);
        sub_24E65864C(v32, &v29);
        sub_24E60169C(&v29, &v19, &qword_27F235830);
        if (*(&v20 + 1))
        {
          v22[0] = v19;
          v22[1] = v20;
          v23 = v21;
          v11 = *(v10 + 16);
          if (*(v11 + 16))
          {

            v12 = sub_24E76D934(v22);
            if (v13)
            {
              v14 = v7;
              v15 = *(*(v11 + 56) + 8 * v12);

              sub_24E6585F8(v22);
              sub_24E601704(&v29, &qword_27F235830);
              sub_24E6585F8(v32);
              sub_24E601704(v24, &qword_27F235830);

              v16 = *(v15 + 24);
              if (v16)
              {
                [v16 pause];

                sub_24E6585F8(v34);
              }

              else
              {
                sub_24E6585F8(v34);
              }

              v7 = v14;
              v5 = v18;
              goto LABEL_4;
            }
          }

          sub_24E6585F8(v22);
          sub_24E601704(&v29, &qword_27F235830);
          sub_24E6585F8(v32);
LABEL_25:
          v17 = v24;
        }

        else
        {
          sub_24E601704(&v29, &qword_27F235830);
          sub_24E6585F8(v32);
          sub_24E601704(v24, &qword_27F235830);
          v17 = &v19;
        }

        sub_24E601704(v17, &qword_27F235830);
LABEL_27:
        sub_24E6585F8(v34);
        goto LABEL_4;
      }

      sub_24E601704(v24, &qword_27F235830);
      sub_24E6585F8(v34);
      sub_24E601704(&v29, &qword_27F235830);
LABEL_4:
      v6 += 40;
      if (!--v2)
      {
      }
    }

    sub_24E601704(&v29, &qword_27F235830);
    sub_24E601704(v32, &qword_27F235830);
    if (!*(&v27 + 1))
    {
      goto LABEL_25;
    }

    goto LABEL_15;
  }

  return result;
}

BOOL sub_24EEC452C()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activeVideo;
  v2 = *(v0 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activeVideo);
  if (v2)
  {
    sub_24E65864C(*(v2 + 16) + OBJC_IVAR____TtC12GameStoreKit5Video_playbackId, v5);
  }

  else
  {
    v6 = 0;
    memset(v5, 0, sizeof(v5));
  }

  v3 = sub_24EEC5F2C(v5);
  sub_24E601704(v5, &qword_27F235830);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  if (!*(v0 + v1))
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_24F923098();

  return LOBYTE(v5[0]) != 4;
}

uint64_t sub_24EEC4630()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  return v1;
}

uint64_t sub_24EEC46A4(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  if (v5 == 1 && (a1 & 1) == 0)
  {
    sub_24EEC66B8();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v1;
  return sub_24F9230A8();
}

uint64_t sub_24EEC476C(uint64_t a1, int a2)
{
  v3 = v2;
  v41 = a2;
  v38 = sub_24F929158();
  v5 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C570);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EB88);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v36 - v12;
  v14 = sub_24F928698();
  v15 = *(v14 - 8);
  v39 = v14;
  v40 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activeVideo;
  v19 = *(v2 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activeVideo);
  if (v19)
  {
    sub_24E65864C(*(v19 + 16) + OBJC_IVAR____TtC12GameStoreKit5Video_playbackId, v51);
    v36 = v7;
    v37 = v5;
    if (a1)
    {
LABEL_3:
      sub_24E65864C(*(a1 + 16) + OBJC_IVAR____TtC12GameStoreKit5Video_playbackId, v49);
      goto LABEL_6;
    }
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    v36 = v7;
    v37 = v5;
    if (a1)
    {
      goto LABEL_3;
    }
  }

  v50 = 0;
  memset(v49, 0, sizeof(v49));
LABEL_6:
  sub_24E60169C(v51, v45, &qword_27F235830);
  sub_24E60169C(v49, &v46, &qword_27F235830);
  if (v45[3])
  {
    sub_24E60169C(v45, v44, &qword_27F235830);
    if (*(&v47 + 1))
    {
      v42[0] = v46;
      v42[1] = v47;
      v43 = v48;
      v20 = MEMORY[0x253052150](v44, v42);
      sub_24E6585F8(v42);
      sub_24E601704(v49, &qword_27F235830);
      sub_24E601704(v51, &qword_27F235830);
      sub_24E6585F8(v44);
      result = sub_24E601704(v45, &qword_27F235830);
      if (v20)
      {
        return result;
      }

      v22 = *(v3 + v18);
      if (!v22)
      {
        goto LABEL_22;
      }

      goto LABEL_15;
    }

    sub_24E601704(v49, &qword_27F235830);
    sub_24E601704(v51, &qword_27F235830);
    sub_24E6585F8(v44);
  }

  else
  {
    sub_24E601704(v49, &qword_27F235830);
    sub_24E601704(v51, &qword_27F235830);
    if (!*(&v47 + 1))
    {
      return sub_24E601704(v45, &qword_27F235830);
    }
  }

  sub_24E601704(v45, &qword_27F21B438);
  v22 = *(v2 + v18);
  if (!v22)
  {
    goto LABEL_22;
  }

LABEL_15:
  v23 = *(v22 + 24);
  if (v23)
  {
    v24 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_shouldBePlaying;
    swift_beginAccess();
    if (*(v23 + v24) == 1)
    {

      sub_24F143C7C(v41 & 1, 0, v13);

      v26 = v39;
      v25 = v40;
      if ((*(v40 + 48))(v13, 1, v39) == 1)
      {
        v27 = &qword_27F21EB88;
        v28 = v13;
      }

      else
      {
        (*(v25 + 32))(v17, v13, v26);
        v29 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_metricsPipeline;
        swift_beginAccess();
        sub_24E60169C(v3 + v29, v10, &qword_27F21C570);
        v30 = v37;
        v31 = v38;
        if (!(*(v37 + 48))(v10, 1, v38))
        {
          v32 = *(v30 + 16);
          v33 = v30;
          v34 = v36;
          v32(v36, v10, v31);
          sub_24E601704(v10, &qword_27F21C570);
          if (qword_27F210658 != -1)
          {
            swift_once();
          }

          v35 = sub_24F929AB8();
          __swift_project_value_buffer(v35, qword_27F22E3B8);
          sub_24F929138();

          (*(v33 + 8))(v34, v31);
          (*(v40 + 8))(v17, v26);
          goto LABEL_22;
        }

        (*(v25 + 8))(v17, v26);
        v27 = &qword_27F21C570;
        v28 = v10;
      }

      sub_24E601704(v28, v27);
    }
  }

LABEL_22:
  *(v3 + v18) = a1;

  result = sub_24EEC4150();
  if (*(v3 + v18))
  {
    return sub_24EEC4D78(v41 & 1);
  }

  return result;
}

uint64_t sub_24EEC4D78(char a1)
{
  v3 = sub_24F927DE8();
  v19 = *(v3 - 8);
  v20 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v18 = &v18 - v7;
  v8 = sub_24F927D88();
  MEMORY[0x28223BE20](v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  aBlock[4] = sub_24EEC9BA0;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_87;
  _Block_copy(aBlock);
  v21 = MEMORY[0x277D84F90];
  sub_24E9BFCB4(&qword_27F222930, MEMORY[0x277D85198]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310);
  sub_24F92C6A8();
  sub_24F927E28();
  swift_allocObject();
  v11 = sub_24F927E08();

  v12 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_playbackWorkItem;
  if (*(v1 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_playbackWorkItem))
  {

    sub_24F927E18();
  }

  *(v1 + v12) = v11;

  v13 = v18;
  if (qword_27F2107D0 != -1)
  {
    swift_once();
  }

  sub_24F927DD8();
  sub_24F927E58();
  v14 = *(v19 + 8);
  v15 = v6;
  v16 = v20;
  result = v14(v15, v20);
  if (*(v1 + v12))
  {

    sub_24F92BEA8();

    return v14(v13, v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24EEC5110(uint64_t a1, char a2)
{
  v4 = sub_24F927D88();
  v15 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F927DC8();
  v7 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E74EC40();
  v10 = sub_24F92BEF8();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  aBlock[4] = sub_24EEC9BC4;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_74_0;
  v12 = _Block_copy(aBlock);

  sub_24F927DA8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24E9BFCB4(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v9, v6, v12);
  _Block_release(v12);

  (*(v15 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v14);
}

void sub_24EEC53EC(uint64_t a1, int a2)
{
  v31 = a2;
  v2 = sub_24F929158();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C570);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EB88);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v30 - v10;
  v12 = sub_24F928698();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v18 = *(Strong + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activeVideo);
    if (!v18 || (v30[1] = *(Strong + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activeVideo), (v19 = *(v18 + 24)) != 0) && (v30[0] = v8, v20 = v15, v21 = v13, v22 = v12, v23 = v5, v24 = v2, v25 = v3, v26 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_shouldBePlaying, swift_beginAccess(), v27 = *(v19 + v26), v3 = v25, v2 = v24, v5 = v23, v12 = v22, v13 = v21, v15 = v20, v8 = v30[0], (v27 & 1) != 0) || *(v17 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_isAutoPlayActive) != 1)
    {
    }

    else
    {

      sub_24F1444F8();
      if (v31)
      {
      }

      else
      {
        sub_24F144620(0, v11);
        if ((*(v13 + 48))(v11, 1, v12) == 1)
        {

          sub_24E601704(v11, &qword_27F21EB88);
        }

        else
        {
          (*(v13 + 32))(v15, v11, v12);
          v28 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_metricsPipeline;
          swift_beginAccess();
          sub_24E60169C(v17 + v28, v8, &qword_27F21C570);
          if ((*(v3 + 48))(v8, 1, v2))
          {
            (*(v13 + 8))(v15, v12);

            sub_24E601704(v8, &qword_27F21C570);
          }

          else
          {
            (*(v3 + 16))(v5, v8, v2);
            sub_24E601704(v8, &qword_27F21C570);
            if (qword_27F210658 != -1)
            {
              swift_once();
            }

            v29 = sub_24F929AB8();
            __swift_project_value_buffer(v29, qword_27F22E3B8);
            sub_24F929138();

            (*(v3 + 8))(v5, v2);
            (*(v13 + 8))(v15, v12);
          }
        }
      }
    }
  }
}

uint64_t sub_24EEC5890(uint64_t result)
{
  v2 = result;
  if (*(v1 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator__isGlobalAutoPlayEnabled) & 1) == 0 && (result = sub_24EEC452C(), (result & 1) == 0) || *(v1 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_isVideoAutoplayEnabled) != 1 || *(v1 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_isAutoPlayEnabled) != 1 || *(v1 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_isAutoPlayActive) != 1 || (*(v1 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_isLowDataModeEnabled))
  {
    v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activeVideo);
    if (v3)
    {
      result = *(v3 + 24);
      if (result)
      {

        return [result pause];
      }
    }

    return result;
  }

  result = sub_24EEC452C();
  if ((result & 1) != 0 && (v2 & 1) == 0)
  {
    v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activeVideo);
    if (v4)
    {
      v5 = *(v4 + 24);
      if (!v5)
      {
        return sub_24EEC4D78(0);
      }

      v6 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_shouldBePlaying;
      result = swift_beginAccess();
      if ((*(v5 + v6) & 1) == 0)
      {
        return sub_24EEC4D78(0);
      }
    }

    return result;
  }

  v7 = v1 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activePlaybackIndex;
  result = sub_24EEC5ABC(*(v1 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activePlaybackIndex), *(v1 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activePlaybackIndex + 8));
  if (v8)
  {
    if ((*(v1 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_shouldLoopAutoPlayback) & 1) == 0)
    {
      if ((*(v7 + 8) & 1) == 0)
      {
LABEL_32:
        *v7 = result;
        goto LABEL_33;
      }

LABEL_31:
      *v7 = 0;
LABEL_33:
      *(v7 + 8) = 1;
      return result;
    }

    result = sub_24EEC5ABC(0, 1);
    v9 = *(v7 + 8);
    if (v10)
    {
      if (!*(v7 + 8))
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v9 = *(v7 + 8);
  }

  if ((v9 & 1) == 0 && result == *v7)
  {
    goto LABEL_31;
  }

  *v7 = result;
  *(v7 + 8) = 0;
  v11 = *(v1 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_playbackQueue);
  if (result < *(v11 + 16))
  {
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      sub_24E65864C(v11 + 40 * result + 32, v14);
      v12 = sub_24EEC8E54(v14);
      result = sub_24E601704(v14, &qword_27F235830);
      if (v12)
      {

        sub_24EEC476C(v13, 0);
      }
    }
  }

  return result;
}

uint64_t sub_24EEC5ABC(uint64_t result, char a2)
{
  v3 = v2;
  if (a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = result + 1;
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }
  }

  v5 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_playbackQueue;
  v6 = *(*(v2 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_playbackQueue) + 16);
  if (v4 >= v6)
  {
    return 0;
  }

  v30 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_videoViewModelManager;
  v7 = 40 * v4 + 32;
  v8 = v4;
  while (1)
  {
    if (v4 < 0)
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:

      return v8;
    }

    v10 = *(v3 + v5);
    if (v8 >= *(v10 + 16))
    {
      goto LABEL_38;
    }

    sub_24E65864C(v10 + v7, v41);
    sub_24E60169C(v41, &v36, &qword_27F235830);
    if (!*(&v37 + 1))
    {
      sub_24E601704(v41, &qword_27F235830);
      v9 = &v36;
      goto LABEL_7;
    }

    v39[0] = v36;
    v39[1] = v37;
    v40 = v38;
    v11 = *(v3 + v30);
    sub_24E65864C(v39, &v36);
    sub_24E60169C(&v36, &v31, &qword_27F235830);
    if (!*(&v32 + 1))
    {
      sub_24E601704(&v36, &qword_27F235830);
      sub_24E6585F8(v39);
      sub_24E601704(v41, &qword_27F235830);
      v9 = &v31;
      goto LABEL_7;
    }

    v34[0] = v31;
    v34[1] = v32;
    v35 = v33;
    v12 = *(v11 + 16);
    if (!*(v12 + 16))
    {
      goto LABEL_29;
    }

    v13 = sub_24E76D934(v34);
    if ((v14 & 1) == 0)
    {

LABEL_29:
      sub_24E6585F8(v34);
      sub_24E601704(&v36, &qword_27F235830);
      sub_24E6585F8(v39);
      v9 = v41;
LABEL_7:
      sub_24E601704(v9, &qword_27F235830);
      goto LABEL_8;
    }

    v15 = *(*(v12 + 56) + 8 * v13);

    sub_24E6585F8(v34);
    sub_24E601704(&v36, &qword_27F235830);
    sub_24E6585F8(v39);
    sub_24E601704(v41, &qword_27F235830);

    v16 = v15 + OBJC_IVAR____TtC12GameStoreKit14VideoViewModel_configuration;
    if ((*(v16 + *(type metadata accessor for VideoConfiguration() + 36)) & 1) == 0)
    {
      goto LABEL_31;
    }

    if (qword_27F2110D0 != -1)
    {
      swift_once();
    }

    v17 = *(qword_27F23E380 + OBJC_IVAR____TtC12GameStoreKit28AutoPlayVideoSettingsManager_autoPlayUserSetting);
    if (!v17 || (*(qword_27F23E380 + OBJC_IVAR____TtC12GameStoreKit28AutoPlayVideoSettingsManager_networkIsConstrained) & 1) != 0)
    {
      goto LABEL_31;
    }

    v26 = qword_27F23E380;
    v29 = v17;
    if (ASKPerformanceProfileGetForCurrentDevice() != 2)
    {

LABEL_31:

      goto LABEL_8;
    }

    v22 = sub_24F92B0D8();
    v27 = v18;
    if (v22 == sub_24F92B0D8() && v27 == v19)
    {
      goto LABEL_39;
    }

    v23 = sub_24F92CE08();

    if (v23)
    {
      break;
    }

    v24 = sub_24F92B0D8();
    v28 = v20;
    if (v24 == sub_24F92B0D8() && v28 == v21)
    {
    }

    else
    {
      v25 = sub_24F92CE08();

      if ((v25 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    if ((*(v26 + OBJC_IVAR____TtC12GameStoreKit28AutoPlayVideoSettingsManager_networkMayUseCellular) & 1) == 0)
    {
      return v8;
    }

LABEL_8:
    ++v8;
    v7 += 40;
    if (v6 == v8)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_24EEC5F2C(uint64_t a1)
{
  sub_24E60169C(a1, &v8, &qword_27F235830);
  if (*(&v9 + 1))
  {
    v11[0] = v8;
    v11[1] = v9;
    v12 = v10;
    v2 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_autoPlayExclusions;
    swift_beginAccess();
    v3 = *(v1 + v2);

    v4 = sub_24F4D3620(v11, v3);

    if ((v4 & 1) == 0)
    {
      v5 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_visibleVideoFrames;
      swift_beginAccess();
      if (*(*(v1 + v5) + 16))
      {

        sub_24E76D934(v11);
        if (v6)
        {
          sub_24E6585F8(v11);

          return 1;
        }
      }
    }

    sub_24E6585F8(v11);
  }

  else
  {
    sub_24E601704(&v8, &qword_27F235830);
  }

  return 0;
}

uint64_t sub_24EEC6054()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_visibleVideoFrames;
  swift_beginAccess();
  v46 = v0;
  v47 = v1;
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_24EAE6894(*(v2 + 16), 0);
    v5 = sub_24EAE7F74(v60, (v4 + 4), v3, v2);
    swift_bridgeObjectRetain_n();
    sub_24E6586B4();
    if (v5 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = MEMORY[0x277D84F90];
LABEL_5:
  *&v60[0] = v4;
  sub_24E85866C(v60);

  v6 = *&v60[0];
  v7 = *(*&v60[0] + 16);
  if (v7)
  {
    v49 = MEMORY[0x277D84F90];
    sub_24F457B3C(0, v7, 0);
    v8 = v49;
    v9 = v6 + 32;
    do
    {
      sub_24E60169C(v9, v60, &qword_27F21F450);
      sub_24E60169C(v60, &v55, &qword_27F21F450);
      v50 = v55;
      v51 = v56;
      v52 = v57;
      v53 = v58;
      v54 = v59;
      sub_24E65864C(&v50, &v62);
      sub_24E601704(&v50, &qword_27F21F450);
      sub_24E601704(v60, &qword_27F21F450);
      v11 = v49[2];
      v10 = v49[3];
      if (v11 >= v10 >> 1)
      {
        sub_24F457B3C((v10 > 1), v11 + 1, 1);
      }

      v49[2] = v11 + 1;
      v12 = &v49[5 * v11];
      v13 = v62;
      v14 = v63;
      v12[8] = v64;
      *(v12 + 2) = v13;
      *(v12 + 3) = v14;
      v9 += 72;
      --v7;
    }

    while (v7);
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  v15 = v8[2];
  v16 = v46;
  v48 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_autoPlayExclusions;
  swift_beginAccess();
  if (v15)
  {
    v17 = 0;
    v18 = v8 + 4;
    v45 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v17 >= v8[2])
      {
        __break(1u);
        goto LABEL_49;
      }

      sub_24E65864C(&v18[5 * v17], v60);
      sub_24E65864C(v60, &v55);
      sub_24E60169C(&v55, &v62, &qword_27F235830);
      if (!*(&v63 + 1))
      {
        break;
      }

      v50 = v62;
      v51 = v63;
      v52 = v64;
      v19 = *(v16 + v48);
      if (*(v19 + 16))
      {
        v20 = v18;
        v21 = v15;

        v22 = sub_24F92C7B8();
        v23 = -1 << *(v19 + 32);
        v24 = v22 & ~v23;
        if ((*(v19 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
        {
          v25 = ~v23;
          while (1)
          {
            sub_24E65864C(*(v19 + 48) + 40 * v24, &v62);
            v26 = MEMORY[0x253052150](&v62, &v50);
            sub_24E6585F8(&v62);
            if (v26)
            {
              break;
            }

            v24 = (v24 + 1) & v25;
            if (((*(v19 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
            {
              goto LABEL_23;
            }
          }

          sub_24E6585F8(&v50);
          sub_24E601704(&v55, &qword_27F235830);
          v16 = v46;
          v15 = v21;
          v18 = v20;
          goto LABEL_14;
        }

LABEL_23:

        v16 = v46;
        v15 = v21;
        v18 = v20;
      }

      if (!*(*(v16 + v47) + 16))
      {
        sub_24E6585F8(&v50);
        v35 = &v55;
        goto LABEL_33;
      }

      sub_24E76D934(&v50);
      v28 = v27;
      sub_24E6585F8(&v50);
      sub_24E601704(&v55, &qword_27F235830);

      if (v28)
      {
        v55 = v60[0];
        v56 = v60[1];
        v57 = v61;
        v29 = v45;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_24F457B3C(0, *(v45 + 16) + 1, 1);
          v29 = v45;
        }

        v31 = *(v29 + 16);
        v30 = *(v29 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_24F457B3C((v30 > 1), v31 + 1, 1);
          v29 = v45;
        }

        *(v29 + 16) = v31 + 1;
        v45 = v29;
        v32 = v29 + 40 * v31;
        v33 = v55;
        v34 = v56;
        *(v32 + 64) = v57;
        *(v32 + 32) = v33;
        *(v32 + 48) = v34;
        goto LABEL_15;
      }

LABEL_14:
      sub_24E6585F8(v60);
LABEL_15:
      if (++v17 == v15)
      {
        goto LABEL_36;
      }
    }

    sub_24E601704(&v55, &qword_27F235830);
    v35 = &v62;
LABEL_33:
    sub_24E601704(v35, &qword_27F235830);
    goto LABEL_14;
  }

  v45 = MEMORY[0x277D84F90];
LABEL_36:

  v36 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_playbackQueue;
  *(v16 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_playbackQueue) = v45;

  v38 = *(v16 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activeVideo);
  if (!v38)
  {
    v40 = 0;
    v43 = 1;
LABEL_47:
    v44 = v16 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activePlaybackIndex;
    *v44 = v40;
    *(v44 + 8) = v43 & 1;
    return result;
  }

  v8 = *(v16 + v36);
  sub_24E65864C(*(v38 + 16) + OBJC_IVAR____TtC12GameStoreKit5Video_playbackId, v60);
  v39 = v8[2];

  v40 = 0;
  if (!v39)
  {
    v43 = 1;
LABEL_46:
    sub_24E6585F8(v60);

    goto LABEL_47;
  }

  v41 = (v8 + 4);
  while (v40 < v8[2])
  {
    sub_24E65864C(v41, &v55);
    v42 = MEMORY[0x253052150](&v55, v60);
    sub_24E6585F8(&v55);
    if (v42)
    {
      goto LABEL_43;
    }

    ++v40;
    v41 += 40;
    if (v39 == v40)
    {
      v40 = 0;
LABEL_43:
      v43 = v42 ^ 1;
      goto LABEL_46;
    }
  }

LABEL_49:
  __break(1u);

  __break(1u);
  return result;
}

void sub_24EEC66B8()
{
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator__isGlobalAutoPlayEnabled) & 1) == 0 && !sub_24EEC452C() || *(v0 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_isVideoAutoplayEnabled) != 1 || *(v0 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_isAutoPlayEnabled) != 1 || *(v0 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_isAutoPlayActive) != 1 || (*(v0 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_isLowDataModeEnabled))
  {
    v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activeVideo);
    if (v1)
    {
      v2 = *(v1 + 24);
      if (v2)
      {

        [v2 pause];
      }
    }

    return;
  }

  if (!sub_24EEC452C())
  {
    v6 = v0 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activePlaybackIndex;
    v7 = sub_24EEC5ABC(*(v0 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activePlaybackIndex), *(v0 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activePlaybackIndex + 8));
    if (v8)
    {
      v7 = sub_24EEC5ABC(v7, 1);
      *v6 = v7;
      *(v6 + 8) = v9 & 1;
      if (v9)
      {
        goto LABEL_24;
      }
    }

    else
    {
      *v6 = v7;
      *(v6 + 8) = 0;
    }

    v10 = *(v0 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_playbackQueue);
    if (v7 < *(v10 + 16))
    {
      if (v7 < 0)
      {
        __break(1u);
        return;
      }

      sub_24E65864C(v10 + 40 * v7 + 32, v12);
      v11 = sub_24EEC8E54(v12);
      sub_24E601704(v12, &qword_27F235830);
      goto LABEL_25;
    }

LABEL_24:
    v11 = 0;
LABEL_25:
    sub_24EEC476C(v11, 0);

    return;
  }

  v3 = *(v0 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activeVideo);
  if (v3)
  {
    v4 = *(v3 + 24);
    if (!v4 || (v5 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_shouldBePlaying, swift_beginAccess(), (*(v4 + v5) & 1) == 0))
    {
      sub_24EEC4D78(0);
    }
  }
}

uint64_t sub_24EEC6894()
{
  v1 = sub_24F929158();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C570);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EB88);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v41 - v9;
  v11 = sub_24F928698();
  v12 = *(v11 - 8);
  result = MEMORY[0x28223BE20](v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_isAutoPlayActive) = 0;
  v16 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activeVideo;
  v17 = *(v0 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activeVideo);
  if (!v17)
  {
    return result;
  }

  v18 = *(v17 + 24);
  if (!v18)
  {
    return result;
  }

  v41 = v7;
  v42 = v0;
  v19 = v10;
  v20 = result;
  v21 = v4;
  v22 = v1;
  v23 = v2;
  v24 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_shouldBePlaying;
  result = swift_beginAccess();
  v25 = v18[v24];
  v26 = v23;
  v27 = v22;
  v28 = v21;
  v29 = v20;
  v30 = v12;
  v31 = v15;
  v32 = v19;
  v33 = v42;
  if (v25 != 1)
  {
    return result;
  }

  [v18 pause];
  if (!*(v33 + v16))
  {
    (*(v30 + 56))(v32, 1, 1, v29);
    goto LABEL_9;
  }

  sub_24F143C7C(0, 0, v32);

  if ((*(v30 + 48))(v32, 1, v29) == 1)
  {
LABEL_9:
    v38 = &qword_27F21EB88;
    v39 = v32;
    return sub_24E601704(v39, v38);
  }

  (*(v30 + 32))(v31, v32, v29);
  v34 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_metricsPipeline;
  v35 = v42;
  swift_beginAccess();
  v36 = v35 + v34;
  v37 = v41;
  sub_24E60169C(v36, v41, &qword_27F21C570);
  if ((*(v26 + 48))(v37, 1, v27))
  {
    (*(v30 + 8))(v31, v29);
    v38 = &qword_27F21C570;
    v39 = v37;
    return sub_24E601704(v39, v38);
  }

  (*(v26 + 16))(v28, v37, v27);
  sub_24E601704(v37, &qword_27F21C570);
  if (qword_27F210658 != -1)
  {
    swift_once();
  }

  v40 = sub_24F929AB8();
  __swift_project_value_buffer(v40, qword_27F22E3B8);
  sub_24F929138();

  (*(v26 + 8))(v28, v27);
  return (*(v30 + 8))(v31, v29);
}

uint64_t sub_24EEC6CF8(uint64_t a1)
{
  v3 = sub_24F929158();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C570);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EB88);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v30 - v11;
  v13 = sub_24F928698();
  v31 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E65864C(a1, v36);
  sub_24E60169C(v36, &v40, &qword_27F235830);
  if (!*(&v41 + 1))
  {
    sub_24E601704(v36, &qword_27F235830);
    return sub_24E601704(&v40, &qword_27F235830);
  }

  v30 = v4;
  v43 = v40;
  v44 = v41;
  v45 = v42;
  v32 = v1;
  sub_24E65864C(&v43, &v40);
  v16 = sub_24EDF0038(&v40);
  sub_24E601704(&v40, &qword_27F235830);
  sub_24E6585F8(&v43);
  result = sub_24E601704(v36, &qword_27F235830);
  if (!v16)
  {
    return result;
  }

  v18 = *(v16 + 24);
  if (v18)
  {
    v19 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_shouldBePlaying;
    swift_beginAccess();
    LODWORD(v19) = v18[v19];
    [v18 pause];
    v20 = v19 == 1;
    v21 = v32;
    if (v20)
    {
      sub_24F143C7C(0, 0, v12);
      v22 = v31;
      if ((*(v31 + 48))(v12, 1, v13) == 1)
      {
        sub_24E601704(v12, &qword_27F21EB88);
      }

      else
      {
        (*(v22 + 32))(v15, v12, v13);
        v23 = v22;
        v24 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_metricsPipeline;
        swift_beginAccess();
        sub_24E60169C(v21 + v24, v9, &qword_27F21C570);
        v25 = v30;
        if ((*(v30 + 48))(v9, 1, v3))
        {
          (*(v23 + 8))(v15, v13);
          sub_24E601704(v9, &qword_27F21C570);
        }

        else
        {
          (*(v25 + 16))(v6, v9, v3);
          sub_24E601704(v9, &qword_27F21C570);
          if (qword_27F210658 != -1)
          {
            swift_once();
          }

          v26 = sub_24F929AB8();
          __swift_project_value_buffer(v26, qword_27F22E3B8);
          sub_24F929138();

          (*(v25 + 8))(v6, v3);
          (*(v31 + 8))(v15, v13);
        }
      }
    }
  }

  else
  {
    [0 pause];
    v21 = v32;
  }

  v27 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activeVideo;
  v28 = *(v21 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activeVideo);
  if (v28)
  {
    sub_24E65864C(*(v28 + 16) + OBJC_IVAR____TtC12GameStoreKit5Video_playbackId, &v43);
  }

  else
  {
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
  }

  sub_24E65864C(*(v16 + 16) + OBJC_IVAR____TtC12GameStoreKit5Video_playbackId, &v40);
  sub_24E60169C(&v43, v36, &qword_27F235830);
  sub_24E60169C(&v40, &v37, &qword_27F235830);
  if (v36[3])
  {
    sub_24E60169C(v36, v35, &qword_27F235830);
    if (*(&v38 + 1))
    {
      v33[0] = v37;
      v33[1] = v38;
      v34 = v39;
      v29 = MEMORY[0x253052150](v35, v33);
      sub_24E6585F8(v33);
      sub_24E601704(&v40, &qword_27F235830);
      sub_24E601704(&v43, &qword_27F235830);
      sub_24E6585F8(v35);
      sub_24E601704(v36, &qword_27F235830);
      if ((v29 & 1) == 0)
      {
      }

      goto LABEL_24;
    }

    sub_24E601704(&v40, &qword_27F235830);
    sub_24E601704(&v43, &qword_27F235830);
    sub_24E6585F8(v35);
LABEL_26:
    sub_24E601704(v36, &qword_27F21B438);
  }

  sub_24E601704(&v40, &qword_27F235830);
  sub_24E601704(&v43, &qword_27F235830);
  if (*(&v38 + 1))
  {
    goto LABEL_26;
  }

  sub_24E601704(v36, &qword_27F235830);
LABEL_24:
  *(v32 + v27) = 0;

  sub_24EEC4150();
}

uint64_t sub_24EEC73C4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12[-v2];
  result = sub_24EEC5ABC(*(v0 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activePlaybackIndex), *(v0 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activePlaybackIndex + 8));
  if ((v5 & 1) == 0)
  {
    v6 = *(v0 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_playbackQueue);
    if (result < *(v6 + 16))
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        sub_24E65864C(v6 + 40 * result + 32, v13);
        v7 = sub_24EEC8E54(v13);
        result = sub_24E601704(v13, &qword_27F235830);
        if (v7)
        {
          v8 = *(v0 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activeVideo);
          if (v8)
          {
            sub_24E65864C(*(v7 + 16) + OBJC_IVAR____TtC12GameStoreKit5Video_playbackId, v13);
            sub_24E65864C(*(v8 + 16) + OBJC_IVAR____TtC12GameStoreKit5Video_playbackId, v12);

            v9 = MEMORY[0x253052150](v13, v12);
            sub_24E6585F8(v12);
            sub_24E6585F8(v13);
            if ((v9 & 1) == 0)
            {
              v10 = sub_24F92B858();
              (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
              v11 = swift_allocObject();
              v11[2] = 0;
              v11[3] = 0;
              v11[4] = v7;

              sub_24EA9A1C4(0, 0, v3, &unk_24F9AB7E8, v11);
            }
          }
        }
      }
    }
  }

  return result;
}

_BYTE *sub_24EEC75CC(_BYTE *result, uint64_t a2)
{
  v4 = *result;
  if (*result)
  {
    v5 = v2;
    v7 = *(v5 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_playbackQueue);
    v8 = *(v7 + 16);

    if (v8)
    {
      v9 = 0;
      v10 = v7 + 32;
      while (v9 < *(v7 + 16))
      {
        sub_24E65864C(v10, v13);
        v3 = MEMORY[0x253052150](v13, a2);
        sub_24E6585F8(v13);
        if (v3)
        {

          v13[0] = v9;
          v3 = sub_24F92CD88();
          v10 = v11;
          goto LABEL_9;
        }

        ++v9;
        v10 += 40;
        if (v8 == v9)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_7:

      v10 = 0xE200000000000000;
      v3 = 11565;
LABEL_9:
      if (qword_27F2107D8 == -1)
      {
        goto LABEL_10;
      }
    }

    swift_once();
LABEL_10:
    v12 = sub_24F92AAE8();
    __swift_project_value_buffer(v12, qword_27F232F58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93FC20;
    sub_24F9283A8();
    v14 = MEMORY[0x277D837D0];
    v13[0] = v3;
    v13[1] = v10;
    sub_24F928438();
    sub_24E601704(v13, &qword_27F2129B0);
    sub_24F9283A8();
    v14 = &type metadata for VideoPlayer.PlayerState;
    LOBYTE(v13[0]) = v4;
    sub_24F928438();
    sub_24E601704(v13, &qword_27F2129B0);
    sub_24F92A588();

    if (v4 == 4)
    {
      return sub_24EEC5890(0);
    }
  }

  return result;
}

uint64_t sub_24EEC7884(double a1)
{
  if (qword_27F2107D8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F92AAE8();
  __swift_project_value_buffer(v2, qword_27F232F58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F9479A0;
  sub_24F9283A8();
  v4[3] = MEMORY[0x277D839F8];
  *v4 = a1;
  sub_24F928438();
  sub_24E601704(v4, &qword_27F2129B0);
  sub_24F9283A8();
  sub_24F92A588();

  return sub_24EEC73C4();
}

uint64_t sub_24EEC7A4C(int a1, uint64_t a2)
{
  v57 = a1;
  v4 = sub_24F929158();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C570);
  MEMORY[0x28223BE20](v8 - 8);
  v56 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EB88);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v50 - v17;
  v19 = sub_24F928698();
  v58 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v55 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v50 - v22;
  sub_24E65864C(a2, v64);
  sub_24E60169C(v64, &v59, &qword_27F235830);
  if (!*(&v60 + 1))
  {
    sub_24E601704(v64, &qword_27F235830);
    return sub_24E601704(&v59, &qword_27F235830);
  }

  v53 = v7;
  v24 = v4;
  v51 = a2;
  v62[0] = v59;
  v62[1] = v60;
  v63 = v61;
  v54 = v2;
  sub_24E65864C(v62, &v59);
  v25 = sub_24EDF0038(&v59);
  sub_24E601704(&v59, &qword_27F235830);
  sub_24E6585F8(v62);
  result = sub_24E601704(v64, &qword_27F235830);
  if (v25)
  {
    v52 = v25;
    sub_24F143C7C(0, 1, v18);
    v27 = v58;
    v28 = (v58 + 48);
    v50 = *(v58 + 48);
    if (v50(v18, 1, v19) == 1)
    {
      v29 = &qword_27F21EB88;
      v30 = v18;
    }

    else
    {
      (*(v27 + 32))(v23, v18, v19);
      v31 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_metricsPipeline;
      v32 = v54;
      swift_beginAccess();
      sub_24E60169C(v32 + v31, v12, &qword_27F21C570);
      if (!(*(v5 + 48))(v12, 1, v24))
      {
        v33 = v53;
        (*(v5 + 16))(v53, v12, v24);
        sub_24E601704(v12, &qword_27F21C570);
        if (qword_27F210658 != -1)
        {
          swift_once();
        }

        v41 = sub_24F929AB8();
        __swift_project_value_buffer(v41, qword_27F22E3B8);
        sub_24F929138();

        (*(v5 + 8))(v33, v24);
        (*(v58 + 8))(v23, v19);
        goto LABEL_9;
      }

      (*(v27 + 8))(v23, v19);
      v29 = &qword_27F21C570;
      v30 = v12;
    }

    sub_24E601704(v30, v29);
    v33 = v53;
LABEL_9:
    if (v57)
    {
      sub_24F144EC8(v15);
      if (v50(v15, 1, v19) == 1)
      {
        sub_24E601704(v15, &qword_27F21EB88);
        v34 = v54;
        v35 = v51;
      }

      else
      {
        v36 = v58;
        v28 = v55;
        (*(v58 + 32))(v55, v15, v19);
        v37 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_metricsPipeline;
        v34 = v54;
        swift_beginAccess();
        v38 = v34 + v37;
        v39 = v56;
        sub_24E60169C(v38, v56, &qword_27F21C570);
        v40 = (*(v5 + 48))(v39, 1, v24);
        v35 = v51;
        if (!v40)
        {
          (*(v5 + 16))(v33, v39, v24);
          sub_24E601704(v39, &qword_27F21C570);
          if (qword_27F210658 != -1)
          {
            goto LABEL_30;
          }

          goto LABEL_18;
        }

        (*(v36 + 8))(v28, v19);
        sub_24E601704(v39, &qword_27F21C570);
      }

      while (1)
      {
        v44 = sub_24EEC5ABC(*(v34 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activePlaybackIndex), *(v34 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activePlaybackIndex + 8));
        if (v45)
        {
          v44 = sub_24EEC5ABC(v44, 1);
          if (v46)
          {
            break;
          }
        }

        v47 = *(v34 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_playbackQueue);
        if (v44 >= *(v47 + 16))
        {
          break;
        }

        if ((v44 & 0x8000000000000000) == 0)
        {
          sub_24E65864C(v47 + 40 * v44 + 32, v64);
          v48 = sub_24EEC8E54(v64);
          sub_24E601704(v64, &qword_27F235830);
          if (v48)
          {
            sub_24E65864C(*(v48 + 16) + OBJC_IVAR____TtC12GameStoreKit5Video_playbackId, v64);
            v49 = MEMORY[0x253052150](v35, v64);
            sub_24E6585F8(v64);
            if ((v49 & 1) == 0)
            {
              sub_24EEC5890(1);
            }
          }
        }

        __break(1u);
LABEL_30:
        swift_once();
LABEL_18:
        v42 = sub_24F929AB8();
        __swift_project_value_buffer(v42, qword_27F22E3B8);
        sub_24F929138();

        v43 = *(v5 + 8);
        v5 += 8;
        v43(v33, v24);
        (*(v58 + 8))(v28, v19);
      }
    }
  }

  return result;
}

uint64_t sub_24EEC8264(uint64_t a1)
{
  v2 = v1;
  v29 = a1;
  v3 = sub_24F929158();
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v26 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C570);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EB88);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = sub_24F928698();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F2107D8 != -1)
  {
    swift_once();
  }

  v15 = sub_24F92AAE8();
  __swift_project_value_buffer(v15, qword_27F232F58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A588();

  if (((*(v1 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator__isGlobalAutoPlayEnabled) & 1) != 0 || sub_24EEC452C()) && *(v1 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_isVideoAutoplayEnabled) == 1)
  {
    *(v1 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_isAutoPlayEnabled) = 0;
  }

  sub_24E65864C(v29, v30);
  v16 = sub_24EEC8E54(v30);
  result = sub_24E601704(v30, &qword_27F235830);
  if (v16)
  {
    sub_24F143C7C(1, 0, v10);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {

      v18 = &qword_27F21EB88;
      v19 = v10;
      return sub_24E601704(v19, v18);
    }

    (*(v12 + 32))(v14, v10, v11);
    v20 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_metricsPipeline;
    swift_beginAccess();
    sub_24E60169C(v2 + v20, v7, &qword_27F21C570);
    v22 = v27;
    v21 = v28;
    if ((*(v27 + 48))(v7, 1, v28))
    {
      (*(v12 + 8))(v14, v11);

      v18 = &qword_27F21C570;
      v19 = v7;
      return sub_24E601704(v19, v18);
    }

    v23 = v26;
    (*(v22 + 16))(v26, v7, v21);
    sub_24E601704(v7, &qword_27F21C570);
    if (qword_27F210658 != -1)
    {
      swift_once();
    }

    v24 = sub_24F929AB8();
    __swift_project_value_buffer(v24, qword_27F22E3B8);
    sub_24F929138();

    (*(v22 + 8))(v23, v21);
    return (*(v12 + 8))(v14, v11);
  }

  return result;
}

uint64_t sub_24EEC87A4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24F929158();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C570);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EB88);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v39 - v12;
  v14 = sub_24F928698();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E65864C(a1, v49);
  sub_24E60169C(v49, &v44, &qword_27F235830);
  if (!*(&v45 + 1))
  {
    sub_24E601704(v49, &qword_27F235830);
    v32 = &v44;
    v31 = &qword_27F235830;
    return sub_24E601704(v32, v31);
  }

  v43 = v17;
  v40 = v7;
  v47[0] = v44;
  v47[1] = v45;
  v48 = v46;
  sub_24E65864C(v47, &v44);
  v18 = sub_24EDF0038(&v44);
  sub_24E601704(&v44, &qword_27F235830);
  sub_24E6585F8(v47);
  result = sub_24E601704(v49, &qword_27F235830);
  if (!v18)
  {
    return result;
  }

  v41 = v15;
  v42 = v5;
  v39 = v4;
  if (qword_27F2107D8 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v20 = sub_24F92AAE8();
    __swift_project_value_buffer(v20, qword_27F232F58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A588();

    v21 = 1;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_isAutoPlayEnabled) = 1;
    sub_24EEC6054();
    v22 = *(v2 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_playbackQueue);
    sub_24E65864C(*(v18 + 16) + OBJC_IVAR____TtC12GameStoreKit5Video_playbackId, v49);
    v23 = *(v22 + 16);

    v24 = 0;
    if (!v23)
    {
      break;
    }

    v25 = v22 + 32;
    while (v24 < *(v22 + 16))
    {
      sub_24E65864C(v25, v47);
      v26 = MEMORY[0x253052150](v47, v49);
      sub_24E6585F8(v47);
      if (v26)
      {
        goto LABEL_10;
      }

      ++v24;
      v25 += 40;
      if (v23 == v24)
      {
        v24 = 0;
LABEL_10:
        v21 = v26 ^ 1;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_22:
    swift_once();
  }

LABEL_11:
  v28 = v41;
  v27 = v42;

  sub_24E6585F8(v49);
  v29 = v2 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activePlaybackIndex;
  *v29 = v24;
  *(v29 + 8) = v21 & 1;

  sub_24EEC476C(v30, 1);

  sub_24F144620(1, v13);
  if ((*(v28 + 48))(v13, 1, v14) == 1)
  {

    v31 = &qword_27F21EB88;
    v32 = v13;
    return sub_24E601704(v32, v31);
  }

  v33 = v43;
  (*(v28 + 32))(v43, v13, v14);
  v34 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_metricsPipeline;
  swift_beginAccess();
  sub_24E60169C(v2 + v34, v10, &qword_27F21C570);
  v35 = v39;
  if ((*(v27 + 48))(v10, 1, v39))
  {
    (*(v28 + 8))(v33, v14);

    v31 = &qword_27F21C570;
    v32 = v10;
    return sub_24E601704(v32, v31);
  }

  v36 = v40;
  (*(v27 + 16))(v40, v10, v35);
  sub_24E601704(v10, &qword_27F21C570);
  if (qword_27F210658 != -1)
  {
    swift_once();
  }

  v37 = sub_24F929AB8();
  __swift_project_value_buffer(v37, qword_27F22E3B8);
  v38 = v43;
  sub_24F929138();

  (*(v27 + 8))(v36, v35);
  return (*(v28 + 8))(v38, v14);
}

uint64_t sub_24EEC8E54(uint64_t a1)
{
  sub_24E60169C(a1, &v3, &qword_27F235830);
  if (*(&v4 + 1))
  {
    v6[0] = v3;
    v6[1] = v4;
    v7 = v5;
    sub_24E65864C(v6, &v3);
    v1 = sub_24EDF0038(&v3);
    sub_24E601704(&v3, &qword_27F235830);
    sub_24E6585F8(v6);
  }

  else
  {
    sub_24E601704(&v3, &qword_27F235830);
    return 0;
  }

  return v1;
}

void sub_24EEC8F14()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_isVideoAutoplayEnabled;
  v2 = *(v0 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_isVideoAutoplayEnabled);
  if (v2 != UIAccessibilityIsVideoAutoplayEnabled())
  {
    *(v0 + v1) = UIAccessibilityIsVideoAutoplayEnabled();
    if (qword_27F2107D8 != -1)
    {
      swift_once();
    }

    v3 = sub_24F92AAE8();
    __swift_project_value_buffer(v3, qword_27F232F58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    v4 = *(v0 + v1);
    v6 = MEMORY[0x277D839B0];
    v5[0] = v4;
    sub_24F928438();
    sub_24E601704(v5, &qword_27F2129B0);
    sub_24F92A588();

    if (*(v0 + v1) == 1)
    {
      *(v0 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_isAutoPlayActive) = 1;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_24F923098();

      if ((v5[0] & 1) == 0)
      {
        sub_24EEC66B8();
      }
    }

    else
    {
      sub_24EEC6894();
    }
  }
}

void sub_24EEC9224(void *a1)
{
  v2 = [a1 userInfo];
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = v2;
  v4 = sub_24F92AE38();

  sub_24F92C7F8();
  if (!*(v4 + 16) || (v5 = sub_24E76D934(v8), (v6 & 1) == 0))
  {

    sub_24E6585F8(v8);
LABEL_8:
    v9 = 0u;
    v10 = 0u;
    goto LABEL_9;
  }

  sub_24E643A9C(*(v4 + 56) + 32 * v5, &v9);
  sub_24E6585F8(v8);

  if (!*(&v10 + 1))
  {
LABEL_9:
    sub_24E601704(&v9, &qword_27F2129B0);
    return;
  }

  if (swift_dynamicCast())
  {
    v7 = *(v1 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator__isGlobalAutoPlayEnabled);
    *(v1 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator__isGlobalAutoPlayEnabled) = v8[0];
    sub_24EEC3D9C(v7);
  }
}

id sub_24EEC9418()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoPlaybackCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for VideoPlaybackCoordinator()
{
  result = qword_27F232FF8;
  if (!qword_27F232FF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EEC95BC()
{
  sub_24E78F45C();
  if (v0 <= 0x3F)
  {
    sub_24EA22D84();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_24EEC96EC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for VideoPlaybackCoordinator();
  result = sub_24F922FA8();
  *a1 = result;
  return result;
}

uint64_t sub_24EEC9740()
{
  if (qword_27F2107D8 != -1)
  {
    swift_once();
  }

  v0 = sub_24F92AAE8();
  __swift_project_value_buffer(v0, qword_27F232F58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A5A8();
}

uint64_t sub_24EEC9884(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_videoViewModelManager);
  sub_24E60169C(a1, &v8, &qword_27F235830);
  if (*(&v9 + 1))
  {
    v11[0] = v8;
    v11[1] = v9;
    v12 = v10;
    v3 = *(v2 + 16);
    if (*(v3 + 16))
    {

      v4 = sub_24E76D934(v11);
      if (v5)
      {
        v6 = *(*(v3 + 56) + 8 * v4);

        sub_24E6585F8(v11);

        return v6;
      }
    }

    sub_24E6585F8(v11);
  }

  else
  {
    sub_24E601704(&v8, &qword_27F235830);
  }

  return 0;
}

uint64_t sub_24EEC9960@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  *a1 = v3;
  return result;
}

uint64_t sub_24EEC9A08()
{
  MEMORY[0x2530543E0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24EEC9A74()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24EEC9AB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24F145FA8(a1, v4, v5, v6);
}

uint64_t sub_24EEC9B68()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_87(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *ShowRatingPromptAction.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(swift_allocObject() + OBJC_IVAR____TtC12GameStoreKit22ShowRatingPromptAction_rateAction) = 0;
  v12 = *(v9 + 16);
  v16 = a1;
  v12(v11, a1, v8);
  (*(v5 + 16))(v7, a2, v4);
  v13 = Action.init(deserializing:using:)(v11, v7);
  (*(v5 + 8))(a2, v4);
  (*(v9 + 8))(v16, v8);
  return v13;
}

char *ShowRatingPromptAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_24F9285B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + OBJC_IVAR____TtC12GameStoreKit22ShowRatingPromptAction_rateAction) = 0;
  v14 = *(v10 + 16);
  v18 = a1;
  v14(v13, a1, v9, v11);
  (*(v6 + 16))(v8, a2, v5);
  v15 = Action.init(deserializing:using:)(v13, v8);
  (*(v6 + 8))(a2, v5);
  (*(v10 + 8))(v18, v9);
  return v15;
}

uint64_t ShowRatingPromptAction.__allocating_init(rateAction:)(uint64_t a1)
{
  v2 = sub_24F91F6B8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v25 - v7;
  v9 = sub_24F928AD8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + OBJC_IVAR____TtC12GameStoreKit22ShowRatingPromptAction_rateAction) = a1;
  v30 = 0;
  memset(v29, 0, sizeof(v29));

  sub_24F928A98();
  v14 = sub_24F929608();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  v15 = (v13 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v15 = 0u;
  v15[1] = 0u;
  v16 = v13 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E65E064(v29, &v26);
  if (*(&v27 + 1))
  {
    v17 = v27;
    *v16 = v26;
    *(v16 + 16) = v17;
    *(v16 + 32) = v28;
  }

  else
  {
    sub_24F91F6A8();
    v18 = sub_24F91F668();
    v19 = v2;
    v20 = v18;
    v21 = v3;
    v23 = v22;
    (*(v21 + 8))(v5, v19);
    v25[1] = v20;
    v25[2] = v23;
    sub_24F92C7F8();
    sub_24E601704(&v26, &qword_27F235830);
  }

  sub_24E601704(v29, &qword_27F235830);
  sub_24E65E0D4(v8, v13 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0u;
  (*(v10 + 32))(v13 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v12, v9);
  return v13;
}

uint64_t ShowRatingPromptAction.init(rateAction:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24F91F6B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v25 - v9;
  v11 = sub_24F928AD8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + OBJC_IVAR____TtC12GameStoreKit22ShowRatingPromptAction_rateAction) = a1;
  v33 = 0;
  memset(v32, 0, sizeof(v32));

  sub_24F928A98();
  v15 = sub_24F929608();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  v16 = (v2 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v16 = 0u;
  v16[1] = 0u;
  sub_24E65E064(v32, &v26);
  if (*(&v27 + 1))
  {
    v29 = v26;
    v30 = v27;
    v31 = v28;
  }

  else
  {
    sub_24F91F6A8();
    v17 = sub_24F91F668();
    v18 = v5;
    v19 = v17;
    v21 = v20;
    (*(v18 + 8))(v7, v4);
    v25[1] = v19;
    v25[2] = v21;
    sub_24F92C7F8();
    sub_24E601704(&v26, &qword_27F235830);
  }

  sub_24E601704(v32, &qword_27F235830);
  v22 = v2 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v22 + 32) = v31;
  v23 = v30;
  *v22 = v29;
  *(v22 + 16) = v23;
  sub_24E65E0D4(v10, v2 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  (*(v12 + 32))(v2 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v14, v11);
  return v2;
}

uint64_t ShowRatingPromptAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return v0;
}

uint64_t ShowRatingPromptAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ShowRatingPromptAction()
{
  result = qword_27F233008;
  if (!qword_27F233008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EECA940(uint64_t a1)
{
  v2 = sub_24EECAAEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EECA97C(uint64_t a1)
{
  v2 = sub_24EECAAEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EECA9D8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233018);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EECAAEC();
  sub_24F92D128();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24EECAAEC()
{
  result = qword_27F233020;
  if (!qword_27F233020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233020);
  }

  return result;
}

unint64_t sub_24EECAB54()
{
  result = qword_27F233028;
  if (!qword_27F233028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233028);
  }

  return result;
}

unint64_t sub_24EECABAC()
{
  result = qword_27F233030;
  if (!qword_27F233030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233030);
  }

  return result;
}

uint64_t CallAction.providerIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CallAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CallAction() + 28);
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for CallAction()
{
  result = qword_27F233050;
  if (!qword_27F233050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24EECAD08()
{
  v1 = 0x73656C646E6168;
  v2 = 0x6F656469567369;
  if (*v0 != 2)
  {
    v2 = 0x654D6E6F69746361;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000012;
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

uint64_t sub_24EECAD94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24EECB8E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24EECADBC(uint64_t a1)
{
  v2 = sub_24EECB084();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EECADF8(uint64_t a1)
{
  v2 = sub_24EECB084();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CallAction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233038);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EECB084();
  sub_24F92D128();
  v12 = 0;
  sub_24F92CD08();
  if (!v2)
  {
    v11 = *(v3 + 16);
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237690);
    sub_24EC37C3C(&qword_27F22BE30, sub_24EC37814);
    sub_24F92CD48();
    v10[14] = 2;
    sub_24F92CD18();
    type metadata accessor for CallAction();
    v10[13] = 3;
    sub_24F928AD8();
    sub_24E674184(&qword_27F216080);
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24EECB084()
{
  result = qword_27F233040;
  if (!qword_27F233040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233040);
  }

  return result;
}

uint64_t CallAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_24F928AD8();
  v19 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233048);
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for CallAction();
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EECB084();
  v23 = v8;
  v12 = v24;
  sub_24F92D108();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = a1;
  v14 = v21;
  v15 = v22;
  v29 = 0;
  *v11 = sub_24F92CC28();
  *(v11 + 1) = v16;
  v24 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237690);
  v28 = 1;
  sub_24EC37C3C(&qword_27F22BE48, sub_24EC37CB4);
  sub_24F92CC68();
  *(v11 + 2) = v25;
  v27 = 2;
  v18 = 0;
  v11[24] = sub_24F92CC38() & 1;
  v26 = 3;
  sub_24E674184(&qword_27F254CB0);
  sub_24F92CC68();
  (*(v14 + 8))(v23, v15);
  (*(v19 + 32))(&v11[*(v9 + 28)], v5, v3);
  sub_24EECB4CC(v11, v20);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return sub_24EECB530(v11);
}

uint64_t sub_24EECB4CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CallAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EECB530(uint64_t a1)
{
  v2 = type metadata accessor for CallAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EECB5D0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F928AD8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24EECB690(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F928AD8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24EECB734()
{
  sub_24EC38004();
  if (v0 <= 0x3F)
  {
    sub_24F928AD8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24EECB7E4()
{
  result = qword_27F233060;
  if (!qword_27F233060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233060);
  }

  return result;
}

unint64_t sub_24EECB83C()
{
  result = qword_27F233068;
  if (!qword_27F233068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233068);
  }

  return result;
}

unint64_t sub_24EECB894()
{
  result = qword_27F233070;
  if (!qword_27F233070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233070);
  }

  return result;
}

uint64_t sub_24EECB8E8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x800000024FA4A580 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73656C646E6168 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F656469567369 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
  {

    return 3;
  }

  else
  {
    v5 = sub_24F92CE08();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t Lockup.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v184 = a2;
  v158 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v5 - 8);
  v166 = &v155 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v162 = &v155 - v8;
  v178 = sub_24F9285B8();
  v169 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v175 = &v155 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v10 - 8);
  v167 = (&v155 - v11);
  v12 = sub_24F91F6B8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v155 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_24F928388();
  v16 = *(v176 - 8);
  MEMORY[0x28223BE20](v176);
  v165 = &v155 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v164 = &v155 - v19;
  MEMORY[0x28223BE20](v20);
  v163 = &v155 - v21;
  MEMORY[0x28223BE20](v22);
  v161 = &v155 - v23;
  MEMORY[0x28223BE20](v24);
  v160 = &v155 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v155 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v155 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v155 - v33;
  v168 = v3;
  *(v3 + 424) = 4;
  v174 = a1;
  sub_24F928398();
  v35 = sub_24F928348();
  if (v36)
  {
    v179 = v35;
    v180 = v36;
  }

  else
  {
    sub_24F91F6A8();
    v37 = sub_24F91F668();
    v38 = v13;
    v40 = v39;
    (*(v38 + 8))(v15, v12);
    v179 = v37;
    v180 = v40;
  }

  sub_24F92C7F8();
  v41 = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v177 = *(v16 + 8);
  v177(v34, v176);
  v42 = v182;
  v43 = v168;
  *(v168 + 448) = v181;
  *(v43 + 464) = v42;
  *(v43 + 480) = v183;
  sub_24F929608();
  v44 = v174;
  sub_24F928398();
  v45 = v169;
  v171 = *(v169 + 16);
  v172 = v169 + 16;
  v171(v175, v184, v178);
  v46 = v167;
  sub_24F929548();
  v159 = OBJC_IVAR____TtC12GameStoreKit6Lockup_impressionMetrics;
  sub_24E65E0D4(v46, v43 + OBJC_IVAR____TtC12GameStoreKit6Lockup_impressionMetrics);
  sub_24F928398();
  v47 = sub_24F928348();
  v49 = v48;
  v177(v28, v176);
  if (!v49)
  {
    v99 = sub_24F92AC38();
    sub_24EECF174(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v100 = 0x64496D616461;
    v100[1] = 0xE600000000000000;
    v100[2] = v158;
    (*(*(v99 - 8) + 104))(v100, *MEMORY[0x277D22530], v99);
    swift_willThrow();
    (*(v45 + 8))(v184, v178);
    v177(v44, v176);
    sub_24E6585F8(v43 + 448);
    sub_24E601704(v43 + v159, &qword_27F213E68);
    type metadata accessor for Lockup();
    swift_deallocPartialClassInstance();
    return v43;
  }

  v167 = (v43 + 376);
  *(v43 + 16) = v47;
  *(v43 + 24) = v49;
  sub_24F928398();
  v50 = sub_24F928348();
  v52 = v51;
  v53 = v177;
  v54 = v176;
  (v177)(v31);
  v55 = v53;
  *(v43 + 32) = v50;
  *(v43 + 40) = v52;
  v56 = type metadata accessor for Artwork();
  sub_24F928398();
  v171(v175, v184, v178);
  v157 = sub_24EECF174(&qword_27F219660, type metadata accessor for Artwork);
  v158 = v56;
  sub_24F929548();
  *(v43 + 48) = v181;
  v57 = v160;
  sub_24F928398();
  LOBYTE(v50) = sub_24F928278();
  v53(v57, v54);
  *(v43 + 56) = v50 & 1;
  sub_24F928398();
  v58 = sub_24F928348();
  v60 = v59;
  v53(v31, v54);
  *(v43 + 64) = v58;
  *(v43 + 72) = v60;
  sub_24F928398();
  v61 = sub_24F928348();
  v63 = v62;
  v53(v31, v54);
  *(v43 + 80) = v61;
  *(v43 + 88) = v63;
  sub_24F928398();
  v64 = sub_24F928348();
  v66 = v65;
  v53(v31, v54);
  *(v43 + 96) = v64;
  *(v43 + 104) = v66;
  sub_24F928398();
  v67 = sub_24F928348();
  v69 = v68;
  v53(v31, v54);
  *(v43 + 112) = v67;
  *(v43 + 120) = v69;
  sub_24F928398();
  v70 = JSONObject.appStoreColor.getter();
  v53(v31, v54);
  *(v43 + 128) = v70;
  sub_24F928398();
  sub_24EE5C214();
  sub_24F928248();
  v53(v31, v54);
  *(v43 + 136) = v181;
  sub_24F928398();
  v71 = sub_24F928348();
  v73 = v72;
  v55(v31, v54);
  *(v43 + 144) = v71;
  *(v43 + 152) = v73;
  sub_24F928398();
  v74 = sub_24F928348();
  v76 = v75;
  v55(v31, v54);
  *(v43 + 184) = v74;
  *(v43 + 192) = v76;
  sub_24F928398();
  v77 = sub_24F928348();
  v79 = v78;
  v177 = v55;
  v173 = v41;
  v55(v31, v54);
  *(v43 + 216) = v77;
  *(v43 + 224) = v79;
  sub_24F928398();
  v80 = sub_24F928348();
  v82 = v81;
  v55(v31, v54);
  *(v43 + 200) = v80;
  *(v43 + 208) = v82;
  type metadata accessor for LockupContextMenuData();
  sub_24F928398();
  v83 = v184;
  v84 = v178;
  v85 = v171;
  v171(v175, v184, v178);
  sub_24EECF174(&qword_27F233078, type metadata accessor for LockupContextMenuData);
  sub_24F929548();
  *(v43 + 360) = v181;
  sub_24F928398();
  v86 = v175;
  v85(v175, v83, v84);
  sub_24EAFF164(v31, v86, &v181);
  v87 = v183;
  v88 = v182;
  v89 = v167;
  *v167 = v181;
  v89[1] = v88;
  *(v43 + 408) = v87;
  type metadata accessor for SearchAdOpportunity();
  sub_24F928398();
  v85(v86, v184, v84);
  sub_24EECF174(&qword_27F227228, type metadata accessor for SearchAdOpportunity);
  sub_24F929548();
  *(v43 + 416) = v181;
  v90 = v161;
  sub_24F928398();
  v91 = v162;
  sub_24F9282B8();
  v93 = v176;
  v92 = v177;
  v177(v90, v176);
  v94 = sub_24F92AC28();
  v95 = *(v94 - 8);
  v96 = *(v95 + 48);
  v160 = (v95 + 48);
  v156 = v96;
  v97 = v96(v91, 1, v94);
  v161 = v94;
  v155 = v95;
  if (v97 == 1)
  {
    sub_24E601704(v91, &qword_27F2213B0);
    v98 = MEMORY[0x277D84F90];
  }

  else
  {
    v101 = v170;
    v102 = sub_24F92ABB8();
    v170 = v101;
    if (v101)
    {

      v154 = v168;

      sub_24E951FEC(*(v154 + 376), *(v154 + 384), *(v154 + 392), *(v154 + 400), *(v154 + 408));

      sub_24E6585F8(v154 + 448);
      sub_24E601704(v154 + v159, &qword_27F213E68);
      type metadata accessor for Lockup();
      swift_deallocPartialClassInstance();
      __break(1u);
      goto LABEL_21;
    }

    v98 = v102;
    (*(v95 + 8))(v91, v94);
  }

  v103 = sub_24F45D7F4(v98);

  v104 = v168;
  *(v168 + 432) = v103;
  sub_24F928398();
  sub_24EECEFD0();
  sub_24F928248();
  v92(v31, v93);
  v105 = v179;
  swift_beginAccess();
  *(v104 + 424) = v105;
  sub_24F928398();
  v106 = sub_24F928338();
  v92(v31, v93);
  *(v104 + 160) = v106;
  sub_24F928398();
  v107 = sub_24F928348();
  v109 = v108;
  v92(v31, v93);
  *(v104 + 168) = v107;
  *(v104 + 176) = v109;
  sub_24F928398();
  v110 = sub_24F928348();
  v112 = v111;
  v92(v31, v93);
  *(v104 + 248) = v110;
  *(v104 + 256) = v112;
  v167 = type metadata accessor for Action();
  sub_24F928398();
  v113 = v92;
  v114 = v184;
  v115 = static Action.tryToMakeInstance(byDeserializing:using:)(v31, v184);
  v113(v31, v93);
  *(v104 + 232) = v115;
  type metadata accessor for OfferDisplayProperties();
  sub_24F928398();
  v171(v175, v114, v178);
  sub_24EECF174(&qword_27F225B10, type metadata accessor for OfferDisplayProperties);
  sub_24F929548();
  *(v104 + 240) = v179;
  sub_24F928398();
  v116 = static Action.tryToMakeInstance(byDeserializing:using:)(v31, v184);
  v113(v31, v93);
  *(v104 + 264) = v116;
  sub_24F928398();
  v117 = sub_24F928348();
  v119 = v118;
  v113(v31, v93);
  *(v104 + 272) = v117;
  *(v104 + 280) = v119;
  sub_24F928398();
  v120 = sub_24F928348();
  v122 = v121;
  v113(v31, v93);
  v93 = v104;
  *(v104 + 288) = v120;
  *(v104 + 296) = v122;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233088);
  sub_24F928398();
  (v171)();
  sub_24EECF024();
  sub_24F929548();
  v123 = v179;
  if (v179)
  {
    if (v179 >> 62)
    {
      type metadata accessor for Lockup();

      v153 = sub_24F92CA98();
      swift_bridgeObjectRelease_n();
      v123 = v153;
    }

    else
    {

      sub_24F92CEE8();
      type metadata accessor for Lockup();
    }
  }

  v124 = v176;
  v125 = v177;
  *(v104 + 304) = v123;
  sub_24F928398();
  v126 = sub_24F928348();
  v128 = v127;
  v125(v31, v124);
  *(v104 + 312) = v126;
  *(v104 + 320) = v128;
  sub_24F928398();
  v129 = v125;
  v130 = v184;
  v131 = static Action.tryToMakeInstance(byDeserializing:using:)(v31, v184);
  v129(v31, v124);
  *(v104 + 328) = v131;
  sub_24F928398();
  v132 = v175;
  v133 = v178;
  v134 = v171;
  v171(v175, v130, v178);
  sub_24F929548();
  *(v93 + 336) = v179;
  v167 = type metadata accessor for FlowPreviewActionsConfiguration();
  sub_24F928398();
  v134(v132, v130, v133);
  sub_24EECF174(&qword_27F222748, type metadata accessor for FlowPreviewActionsConfiguration);
  sub_24F929548();
  *(v93 + 440) = v179;
  v135 = v163;
  sub_24F928398();
  LOBYTE(v131) = sub_24F928278();
  v136 = v176;
  v137 = v177;
  v177(v135, v176);
  *(v93 + 368) = v131 & 1;
  v138 = v164;
  sub_24F928398();
  LOBYTE(v131) = sub_24F928278();
  v137(v138, v136);
  *(v93 + 369) = v131 & 1;
  v139 = v165;
  sub_24F928398();
  v140 = v166;
  sub_24F9282B8();
  v141 = v139;
  v142 = v136;
  v137(v141, v136);
  v143 = v161;
  if (v156(v140, 1, v161) == 1)
  {
    sub_24E601704(v140, &qword_27F2213B0);
    v144 = MEMORY[0x277D84F90];
    v145 = v184;
    v146 = v178;
    v147 = v169;
LABEL_17:
    *(v93 + 344) = v144;
    v150 = v174;
    sub_24F928398();
    sub_24EECF0D8();
    sub_24F928248();
    (*(v147 + 8))(v145, v146);
    v151 = v177;
    v177(v150, v142);
    v151(v31, v142);
    *(v93 + 352) = v179 & 1;
    return v93;
  }

  v148 = v170;
  v149 = sub_24F92ABB8();
  v147 = v169;
  v170 = v148;
  if (!v148)
  {
    v144 = v149;
    (*(v155 + 8))(v140, v143);
    v145 = v184;
    v146 = v178;
    goto LABEL_17;
  }

LABEL_21:

  sub_24E951FEC(*(v93 + 376), *(v93 + 384), *(v93 + 392), *(v93 + 400), *(v93 + 408));

  sub_24E6585F8(v93 + 448);
  sub_24E601704(v93 + v159, &qword_27F213E68);
  type metadata accessor for Lockup();
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t Lockup.init(id:adamId:bundleId:icon:isEditorsChoice:heading:title:subtitle:subtitleTextColor:subtitleTextFilter:developerTagline:editorialTagline:editorialDescription:shortEditorialDescription:ordinal:rating:ratingCount:ageRating:shelfBackground:searchAdOpportunity:buttonAction:offerDisplayProperties:clickAction:crossLinkTitle:crossLinkSubtitle:children:tertiaryTitle:tertiaryTitleAction:tertiaryTitleArtwork:tertiaryTitleIcons:tertiaryIconPlacement:flowPreviewActionsConfiguration:contextMenuData:decorations:includeBetaApps:impressionMetrics:useAdsLocale:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, __int128 *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char *a45, uint64_t a46, uint64_t a47, uint64_t a48, unsigned __int8 a49, uint64_t a50, unsigned __int8 a51)
{
  v52 = v51;
  v121 = a8;
  v119 = a7;
  v125 = a6;
  v117 = a5;
  v115 = a4;
  v114 = a3;
  v143 = a50;
  v145 = a49;
  v146 = a51;
  v132 = a48;
  v130 = a47;
  v144 = a44;
  v141 = a42;
  v142 = a43;
  v139 = a40;
  v140 = a41;
  v137 = a38;
  v138 = a39;
  v136 = a37;
  v135 = a36;
  v133 = a35;
  v131 = a34;
  v129 = a33;
  v128 = a32;
  v124 = a31;
  v127 = a28;
  v126 = a27;
  v123 = a26;
  v120 = a25;
  v107 = a24;
  v106 = a23;
  v122 = a22;
  v113 = a21;
  v112 = a20;
  v111 = a19;
  v110 = a18;
  v118 = a17;
  v109 = a16;
  v108 = a15;
  v105 = a12;
  v104 = a11;
  v103 = a10;
  v102 = a9;
  v134 = a46;
  v116 = a29;
  v101 = a13;
  v55 = sub_24F91F6B8();
  v56 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v58 = &v97 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = *a2;
  v98 = a2[1];
  v60 = a1;
  v61 = *a14;
  v62 = *a30;
  v99 = a30[1];
  v100 = v62;
  v63 = *(a30 + 16);
  v64 = *a45;
  *(v52 + 424) = 4;
  sub_24E60169C(v60, &v149, &qword_27F235830);
  if (*(&v150 + 1))
  {
    v152 = v149;
    v153 = v150;
    v154 = v151;
  }

  else
  {
    sub_24F91F6A8();
    v65 = sub_24F91F668();
    v97 = v59;
    v66 = v61;
    v67 = v63;
    v68 = v60;
    v69 = v65;
    v71 = v70;
    (*(v56 + 8))(v58, v55);
    v147 = v69;
    v148 = v71;
    v60 = v68;
    v63 = v67;
    v61 = v66;
    v59 = v97;
    sub_24F92C7F8();
    sub_24E601704(&v149, &qword_27F235830);
  }

  v72 = v153;
  *(v52 + 448) = v152;
  *(v52 + 464) = v72;
  *(v52 + 480) = v154;
  v73 = v143;
  sub_24E60169C(v143, v52 + OBJC_IVAR____TtC12GameStoreKit6Lockup_impressionMetrics, &qword_27F213E68);
  v74 = v98;
  *(v52 + 16) = v59;
  *(v52 + 24) = v74;
  v75 = v115;
  *(v52 + 32) = v114;
  *(v52 + 40) = v75;
  *(v52 + 48) = v117;
  v76 = v107;
  *(v52 + 64) = v106;
  *(v52 + 72) = v76;
  v77 = v121;
  *(v52 + 80) = v119;
  *(v52 + 88) = v77;
  v78 = v103;
  *(v52 + 96) = v102;
  *(v52 + 104) = v78;
  v79 = v105;
  *(v52 + 112) = v104;
  *(v52 + 120) = v79;
  *(v52 + 128) = v101;
  *(v52 + 56) = v125 & 1;
  *(v52 + 136) = v61;
  v80 = v109;
  *(v52 + 144) = v108;
  *(v52 + 152) = v80;
  v81 = v111;
  *(v52 + 192) = v110;
  *(v52 + 200) = v81;
  v82 = v113;
  *(v52 + 208) = v112;
  *(v52 + 216) = v82;
  v83 = v99;
  *(v52 + 376) = v100;
  *(v52 + 392) = v83;
  *(v52 + 408) = v63;
  *(v52 + 360) = v130;
  *(v52 + 416) = v124;
  *(v52 + 432) = v132;
  v84 = v123;
  *(v52 + 160) = v120;
  *(v52 + 168) = v84;
  v85 = v118;
  *(v52 + 176) = v126;
  *(v52 + 184) = v85;
  v86 = v128;
  *(v52 + 224) = v122;
  *(v52 + 232) = v86;
  v87 = v127;
  *(v52 + 240) = v129;
  *(v52 + 248) = v87;
  v88 = v131;
  *(v52 + 256) = v116;
  *(v52 + 264) = v88;
  v89 = v135;
  *(v52 + 272) = v133;
  *(v52 + 280) = v89;
  v90 = v137;
  v91 = v138;
  *(v52 + 288) = v136;
  *(v52 + 296) = v90;
  v92 = v139;
  v93 = v140;
  *(v52 + 304) = v91;
  *(v52 + 312) = v92;
  v95 = v141;
  v94 = v142;
  *(v52 + 320) = v93;
  *(v52 + 328) = v95;
  *(v52 + 336) = v94;
  sub_24E601704(v73, &qword_27F213E68);
  sub_24E601704(v60, &qword_27F235830);
  *(v52 + 344) = v144;
  *(v52 + 352) = v64 & 1;
  *(v52 + 440) = v134;
  *(v52 + 368) = v145 & 1;
  *(v52 + 369) = v146 & 1;
  return v52;
}

uint64_t Lockup.deinit()
{

  sub_24E951FEC(*(v0 + 376), *(v0 + 384), *(v0 + 392), *(v0 + 400), *(v0 + 408));

  sub_24E6585F8(v0 + 448);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Lockup_impressionMetrics, &qword_27F213E68);
  return v0;
}

uint64_t sub_24EECDA24@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for Lockup();
  *a1 = v1;
}

uint64_t sub_24EECDA68@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 424);
  return result;
}

uint64_t sub_24EECDAAC(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 424) = v2;
  return result;
}

uint64_t sub_24EECDB74(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 432) = a1;
}

uint64_t sub_24EECDC0C()
{
  sub_24F92C888();
  v1 = sub_24F92D1E8();

  v12 = v1;
  MEMORY[0x253050C20](539828256, 0xE400000000000000);
  MEMORY[0x253050C20](v0[2], v0[3]);
  MEMORY[0x253050C20](93, 0xE100000000000000);
  MEMORY[0x253050C20](0x5B2064496D616441, 0xE800000000000000);

  MEMORY[0x253050C20](0x6964616548202D20, 0xEC000000203A676ELL);
  v2 = v0[11];
  if (v2)
  {
    v3 = v0[10];
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    v4 = v0[11];
  }

  else
  {
    v4 = 0xE000000000000000;
  }

  MEMORY[0x253050C20](v3, v4);

  MEMORY[0x253050C20](0x3A656C746974202CLL, 0xE900000000000020);
  v5 = v0[13];
  if (v5)
  {
    v6 = v0[12];
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = v0[13];
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  MEMORY[0x253050C20](v6, v7);

  MEMORY[0x253050C20](0x746974627573202CLL, 0xEB000000003A656CLL);
  v8 = v0[15];
  if (v8)
  {
    v9 = v0[14];
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    v10 = v0[15];
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  MEMORY[0x253050C20](v9, v10);

  MEMORY[0x253050C20](41, 0xE100000000000000);
  return v12;
}

uint64_t type metadata accessor for Lockup()
{
  result = qword_27F2330A8;
  if (!qword_27F2330A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Lockup.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  Lockup.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t Lockup.__allocating_init(id:adamId:bundleId:icon:isEditorsChoice:heading:title:subtitle:subtitleTextColor:subtitleTextFilter:developerTagline:editorialTagline:editorialDescription:shortEditorialDescription:ordinal:rating:ratingCount:ageRating:shelfBackground:searchAdOpportunity:buttonAction:offerDisplayProperties:clickAction:crossLinkTitle:crossLinkSubtitle:children:tertiaryTitle:tertiaryTitleAction:tertiaryTitleArtwork:tertiaryTitleIcons:tertiaryIconPlacement:flowPreviewActionsConfiguration:contextMenuData:decorations:includeBetaApps:impressionMetrics:useAdsLocale:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, __int128 *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char *a45, uint64_t a46, uint64_t a47, uint64_t a48, unsigned __int8 a49, uint64_t a50, unsigned __int8 a51)
{
  v122 = a8;
  v120 = a7;
  v126 = a6;
  v118 = a5;
  v116 = a4;
  v115 = a3;
  v144 = a50;
  v146 = a49;
  v147 = a51;
  v133 = a48;
  v131 = a47;
  v145 = a44;
  v142 = a42;
  v143 = a43;
  v140 = a40;
  v141 = a41;
  v138 = a38;
  v139 = a39;
  v136 = a36;
  v137 = a37;
  v134 = a35;
  v132 = a34;
  v130 = a33;
  v129 = a32;
  v125 = a31;
  v128 = a28;
  v127 = a27;
  v124 = a26;
  v121 = a25;
  v108 = a24;
  v107 = a23;
  v123 = a22;
  v114 = a21;
  v113 = a20;
  v112 = a19;
  v111 = a18;
  v119 = a17;
  v110 = a16;
  v109 = a15;
  v106 = a12;
  v105 = a11;
  v104 = a10;
  v103 = a9;
  v135 = a46;
  v117 = a29;
  v102 = a13;
  v53 = sub_24F91F6B8();
  v54 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v56 = &v98 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = swift_allocObject();
  v58 = *a2;
  v99 = a2[1];
  v59 = a1;
  v60 = *a14;
  v61 = *a30;
  v100 = a30[1];
  v101 = v61;
  v62 = *(a30 + 16);
  v63 = *a45;
  *(v57 + 424) = 4;
  sub_24E60169C(v59, &v150, &qword_27F235830);
  if (*(&v151 + 1))
  {
    v64 = v151;
    *(v57 + 448) = v150;
    *(v57 + 464) = v64;
    *(v57 + 480) = v152;
  }

  else
  {
    sub_24F91F6A8();
    v65 = sub_24F91F668();
    v98 = v58;
    v66 = v60;
    v67 = v62;
    v68 = v63;
    v69 = v59;
    v70 = v65;
    v72 = v71;
    (*(v54 + 8))(v56, v53);
    v148 = v70;
    v149 = v72;
    v59 = v69;
    v63 = v68;
    v62 = v67;
    v60 = v66;
    v58 = v98;
    sub_24F92C7F8();
    sub_24E601704(&v150, &qword_27F235830);
  }

  v73 = v144;
  sub_24E60169C(v144, v57 + OBJC_IVAR____TtC12GameStoreKit6Lockup_impressionMetrics, &qword_27F213E68);
  v74 = v99;
  *(v57 + 16) = v58;
  *(v57 + 24) = v74;
  v75 = v116;
  *(v57 + 32) = v115;
  *(v57 + 40) = v75;
  *(v57 + 48) = v118;
  v76 = v108;
  *(v57 + 64) = v107;
  *(v57 + 72) = v76;
  v77 = v122;
  *(v57 + 80) = v120;
  *(v57 + 88) = v77;
  v78 = v104;
  *(v57 + 96) = v103;
  *(v57 + 104) = v78;
  v79 = v106;
  *(v57 + 112) = v105;
  *(v57 + 120) = v79;
  *(v57 + 128) = v102;
  *(v57 + 56) = v126 & 1;
  *(v57 + 136) = v60;
  v80 = v110;
  *(v57 + 144) = v109;
  *(v57 + 152) = v80;
  v81 = v112;
  *(v57 + 192) = v111;
  *(v57 + 200) = v81;
  v82 = v114;
  *(v57 + 208) = v113;
  *(v57 + 216) = v82;
  v83 = v100;
  *(v57 + 376) = v101;
  *(v57 + 392) = v83;
  *(v57 + 408) = v62;
  *(v57 + 360) = v131;
  *(v57 + 416) = v125;
  *(v57 + 432) = v133;
  v84 = v124;
  *(v57 + 160) = v121;
  *(v57 + 168) = v84;
  v85 = v119;
  *(v57 + 176) = v127;
  *(v57 + 184) = v85;
  v86 = v129;
  *(v57 + 224) = v123;
  *(v57 + 232) = v86;
  v87 = v128;
  *(v57 + 240) = v130;
  *(v57 + 248) = v87;
  v88 = v132;
  *(v57 + 256) = v117;
  *(v57 + 264) = v88;
  v89 = v136;
  v90 = v137;
  *(v57 + 272) = v134;
  *(v57 + 280) = v89;
  v91 = v138;
  v92 = v139;
  *(v57 + 288) = v90;
  *(v57 + 296) = v91;
  v93 = v140;
  v94 = v141;
  *(v57 + 304) = v92;
  *(v57 + 312) = v93;
  v96 = v142;
  v95 = v143;
  *(v57 + 320) = v94;
  *(v57 + 328) = v96;
  *(v57 + 336) = v95;
  sub_24E601704(v73, &qword_27F213E68);
  sub_24E601704(v59, &qword_27F235830);
  *(v57 + 344) = v145;
  *(v57 + 352) = v63 & 1;
  *(v57 + 440) = v135;
  *(v57 + 368) = v146 & 1;
  *(v57 + 369) = v147 & 1;
  return v57;
}

uint64_t Lockup.__allocating_init(removingActions:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v30 - v3;
  v38 = &v30 - v3;
  v70 = 0;
  memset(v69, 0, sizeof(v69));
  v5 = *(a1 + 24);
  v68[0] = *(a1 + 16);
  v68[1] = v5;
  v6 = *(a1 + 40);
  v57 = *(a1 + 32);
  v63 = v6;
  v42 = *(a1 + 48);
  v56 = *(a1 + 56);
  v7 = *(a1 + 88);
  v55 = *(a1 + 80);
  v41 = v7;
  v8 = *(a1 + 104);
  v54 = *(a1 + 96);
  v40 = v8;
  v9 = *(a1 + 120);
  v53 = *(a1 + 112);
  v62 = v9;
  v60 = *(a1 + 128);
  v67 = *(a1 + 136);
  v10 = *(a1 + 152);
  v52 = *(a1 + 144);
  v11 = *(a1 + 200);
  v58 = *(a1 + 192);
  v59 = v10;
  v51 = v11;
  v12 = *(a1 + 216);
  v30 = *(a1 + 208);
  v50 = v12;
  v13 = *(a1 + 224);
  v14 = *(a1 + 72);
  v48 = *(a1 + 64);
  v15 = *(a1 + 168);
  v34 = *(a1 + 160);
  v46 = v15;
  v16 = *(a1 + 176);
  v49 = *(a1 + 184);
  v17 = *(a1 + 256);
  v44 = *(a1 + 248);
  v18 = *(a1 + 320);
  v43 = *(a1 + 312);
  v37 = v18;
  v66 = *(a1 + 352);
  v19 = *(a1 + 336);
  v31 = *(a1 + 328);
  v35 = v19;
  v36 = *(a1 + 344);
  v33 = *(a1 + 360);
  v39 = *(a1 + 368);
  sub_24E60169C(a1 + OBJC_IVAR____TtC12GameStoreKit6Lockup_impressionMetrics, v4, &qword_27F213E68);
  v32 = *(a1 + 369);
  memset(v64, 0, sizeof(v64));
  v65 = 0x8000;
  v47 = v61 + 392;
  v45 = *(v61 + 392);

  v20 = v60;

  v21 = v30;

  v22 = v34;
  v23 = v34;

  v24 = v37;

  v25 = v31;

  v26 = v35;

  v28 = v45(v69, v68, v57, v63, v42, v56, v55, v41, v54, v40, v53, v62, v60, &v67, v52, v59, v49, v58, v51, v21, v50, v13, v48, v14, v22, v46, v16, v44, v17, v64, 0, 0, 0, 0, 0, 0, 0, 0, 0, v43, v24, v25, v26, v27, &v66, 0, v33, MEMORY[0x277D84FA0], v39, v38, v32);

  return v28;
}

uint64_t Lockup.adamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t Lockup.bundleId.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t Lockup.ordinal.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t Lockup.heading.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t Lockup.title.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t Lockup.subtitle.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

void *Lockup.subtitleTextColor.getter()
{
  v1 = *(v0 + 128);
  v2 = v1;
  return v1;
}

uint64_t Lockup.developerTagline.getter()
{
  v1 = *(v0 + 144);

  return v1;
}

void *Lockup.rating.getter()
{
  v1 = *(v0 + 160);
  v2 = v1;
  return v1;
}

uint64_t Lockup.ratingCount.getter()
{
  v1 = *(v0 + 168);

  return v1;
}

uint64_t Lockup.editorialTagline.getter()
{
  v1 = *(v0 + 184);

  return v1;
}

uint64_t Lockup.editorialDescription.getter()
{
  v1 = *(v0 + 200);

  return v1;
}

uint64_t Lockup.shortEditorialDescription.getter()
{
  v1 = *(v0 + 216);

  return v1;
}

uint64_t Lockup.ageRating.getter()
{
  v1 = *(v0 + 248);

  return v1;
}

uint64_t Lockup.crossLinkTitle.getter()
{
  v1 = *(v0 + 272);

  return v1;
}

uint64_t Lockup.crossLinkSubtitle.getter()
{
  v1 = *(v0 + 288);

  return v1;
}

uint64_t Lockup.tertiaryTitle.getter()
{
  v1 = *(v0 + 312);

  return v1;
}

id Lockup.shelfBackground.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 376);
  v3 = *(v1 + 384);
  v4 = *(v1 + 392);
  v5 = *(v1 + 400);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 408);
  *(a1 + 32) = v6;
  return sub_24E951F10(v2, v3, v4, v5, v6);
}

uint64_t sub_24EECECDC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 432) = v2;
}

uint64_t Lockup.__deallocating_deinit()
{
  Lockup.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24EECEE00@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 384))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_24EECEE54@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for Lockup();
  *a1 = v3;
}

id sub_24EECEE9C@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *(*v1 + 384);
  v5 = *(*v1 + 392);
  v6 = *(*v1 + 400);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v7 = *(v2 + 408);
  *(a1 + 32) = v7;
  return sub_24E951F10(v3, v4, v5, v6, v7);
}

uint64_t sub_24EECEEC8@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

uint64_t sub_24EECEF28@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = swift_beginAccess();
  *a1 = *(v3 + 424);
  return result;
}

unint64_t sub_24EECEFD0()
{
  result = qword_27F233080;
  if (!qword_27F233080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233080);
  }

  return result;
}

unint64_t sub_24EECF024()
{
  result = qword_27F233090;
  if (!qword_27F233090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F233088);
    sub_24EECF174(&qword_27F22B2C0, type metadata accessor for MixedMediaLockup);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233090);
  }

  return result;
}

unint64_t sub_24EECF0D8()
{
  result = qword_27F233098;
  if (!qword_27F233098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233098);
  }

  return result;
}

uint64_t sub_24EECF174(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EECF1BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 424);
  return result;
}

uint64_t sub_24EECF204(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 424) = v2;
  return result;
}

uint64_t sub_24EECF248@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 432);
}

void sub_24EECF2A0()
{
  sub_24E61C938();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of Lockup.__allocating_init(id:adamId:bundleId:icon:isEditorsChoice:heading:title:subtitle:subtitleTextColor:subtitleTextFilter:developerTagline:editorialTagline:editorialDescription:shortEditorialDescription:ordinal:rating:ratingCount:ageRating:shelfBackground:searchAdOpportunity:buttonAction:offerDisplayProperties:clickAction:crossLinkTitle:crossLinkSubtitle:children:tertiaryTitle:tertiaryTitleAction:tertiaryTitleArtwork:tertiaryTitleIcons:tertiaryIconPlacement:flowPreviewActionsConfiguration:contextMenuData:decorations:includeBetaApps:impressionMetrics:useAdsLocale:)()
{
  v1 = *(v0 + 392);

  return v1();
}

unint64_t sub_24EECF710()
{
  result = qword_27F2330B8;
  if (!qword_27F2330B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2330B8);
  }

  return result;
}

uint64_t sub_24EECF76C()
{
  result = sub_24F92B098();
  qword_27F2330C0 = result;
  return result;
}

id static PersonalizedMediaTokenService.mediaTokenAccountDidChangeNotification.getter()
{
  if (qword_27F2107E0 != -1)
  {
    swift_once();
  }

  v1 = qword_27F2330C0;

  return v1;
}

id sub_24EECF800(void *a1, uint64_t a2)
{
  v27 = a2;
  v29 = a1;
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2330E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v24 - v3;
  v26 = sub_24F92BEE8();
  v5 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F92BE88();
  MEMORY[0x28223BE20](v8);
  v9 = sub_24F927DC8();
  MEMORY[0x28223BE20](v9 - 8);
  v25 = OBJC_IVAR____TtC12GameStoreKit29PersonalizedMediaTokenService_queue;
  v10 = sub_24E69A5C4(0, &qword_27F222300);
  v24[1] = "idChangeNotification";
  v24[2] = v10;
  sub_24F927DA8();
  v32 = MEMORY[0x277D84F90];
  sub_24E9BFCB4(&qword_27F2394E0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30);
  v11 = v27;
  sub_24E9723D4(&qword_27F2394F0, &unk_27F22BD30);
  v12 = v28;
  sub_24F92C6A8();
  (*(v5 + 104))(v7, *MEMORY[0x277D85260], v26);
  *&v12[v25] = sub_24F92BF38();
  v13 = v29;
  *&v12[OBJC_IVAR____TtC12GameStoreKit29PersonalizedMediaTokenService_tokenService] = v29;
  v14 = v13;
  MEMORY[0x2530504F0]();
  v15 = sub_24F92AB18();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v4, 1, v15) == 1)
  {
    sub_24E94221C(v4);
    v17 = 0;
  }

  else
  {
    v17 = sub_24F92AB08();
    (*(v16 + 8))(v4, v15);
  }

  [v14 setAccount_];

  *&v12[OBJC_IVAR____TtC12GameStoreKit29PersonalizedMediaTokenService_accounts] = v11;
  v31.receiver = v12;
  v31.super_class = ObjectType;

  v18 = objc_msgSendSuper2(&v31, sel_init);
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 defaultCenter];
  sub_24F92AB98();
  v22 = sub_24F92AB78();
  [v21 addObserver:v20 selector:sel_accountsDidChange name:v22 object:v11];

  return v20;
}

uint64_t sub_24EECFC68()
{
  ObjectType = swift_getObjectType();
  v2 = sub_24F927D88();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24F927DC8();
  v6 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *&v0[OBJC_IVAR____TtC12GameStoreKit29PersonalizedMediaTokenService_queue];
  v9 = *&v0[OBJC_IVAR____TtC12GameStoreKit29PersonalizedMediaTokenService_accounts];
  v10 = *&v0[OBJC_IVAR____TtC12GameStoreKit29PersonalizedMediaTokenService_tokenService];
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v9;
  v11[4] = v0;
  v11[5] = ObjectType;
  aBlock[4] = sub_24EED0474;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_88;
  v12 = _Block_copy(aBlock);
  v13 = v10;

  v14 = v0;
  sub_24F927DA8();
  v18 = MEMORY[0x277D84F90];
  sub_24E9BFCB4(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v8, v5, v12);
  _Block_release(v12);
  (*(v3 + 8))(v5, v2);
  (*(v6 + 8))(v8, v17);
}

void sub_24EECFF58(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2330E0);
  *&v6 = MEMORY[0x28223BE20](v5 - 8).n128_u64[0];
  v8 = &v18 - v7;
  v9 = [a1 account];
  MEMORY[0x2530504F0]();
  v10 = sub_24F92AB18();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    sub_24E94221C(v8);
    v12 = 0;
  }

  else
  {
    v12 = sub_24F92AB08();
    (*(v11 + 8))(v8, v10);
  }

  v13 = [v12 ams_DSID];
  v14 = [v9 ams_DSID];
  v15 = v14;
  if (v13)
  {
    if (v14)
    {
      sub_24E69A5C4(0, &qword_27F22BD50);
      v16 = sub_24F92C408();

      if ((v16 & 1) == 0)
      {
        goto LABEL_12;
      }

LABEL_9:
      v17 = v12;
      goto LABEL_15;
    }

    v15 = v13;
  }

  else if (!v14)
  {
    goto LABEL_9;
  }

LABEL_12:
  [a1 setAccount_];
  [a1 invalidateMediaToken];
  v17 = [objc_opt_self() defaultCenter];
  if (qword_27F2107E0 != -1)
  {
    swift_once();
  }

  [v17 postNotificationName:qword_27F2330C0 object:a3];

  v9 = v12;
LABEL_15:
}

id PersonalizedMediaTokenService.fetchMediaToken()()
{
  v1 = [*(v0 + OBJC_IVAR____TtC12GameStoreKit29PersonalizedMediaTokenService_tokenService) fetchMediaToken];

  return v1;
}

id PersonalizedMediaTokenService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PersonalizedMediaTokenService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24EED042C()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t MetricsPageEnterGate.hasMetricsPage.setter(char a1)
{
  v3 = sub_24F9287F8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = swift_beginAccess();
  v8 = *(v1 + 34);
  *(v1 + 34) = a1;
  if (v8 & 1) == 0 && (a1)
  {
    result = swift_beginAccess();
    if (*(v1 + 32) == 1)
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v9 = *(v1 + 24);
        ObjectType = swift_getObjectType();
        sub_24F9287E8();
        (*(v9 + 8))(v6, ObjectType, v9);
        swift_unknownObjectRelease();
        return (*(v4 + 8))(v6, v3);
      }
    }
  }

  return result;
}

uint64_t MetricsPageEnterGate.hasAppeared.setter(char a1)
{
  v3 = a1 & 1;
  v4 = sub_24F9287F8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = swift_beginAccess();
  v9 = *(v1 + 32);
  *(v1 + 32) = a1;
  if (v9 != v3)
  {
    result = swift_beginAccess();
    if (*(v1 + 34) == 1 && (a1 & 1) != 0)
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v10 = *(v1 + 24);
        ObjectType = swift_getObjectType();
        sub_24F9287E8();
        (*(v10 + 8))(v7, ObjectType, v10);
        swift_unknownObjectRelease();
        return (*(v5 + 8))(v7, v4);
      }
    }
  }

  return result;
}

uint64_t MetricsPageEnterGate.hasExitedWhileAppeared.setter(char a1)
{
  v3 = sub_24F9287F8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = swift_beginAccess();
  v8 = *(v1 + 33);
  *(v1 + 33) = a1;
  if (v8 == 1 && (a1 & 1) == 0)
  {
    result = swift_beginAccess();
    if (*(v1 + 34))
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v9 = *(v1 + 24);
        ObjectType = swift_getObjectType();
        sub_24F9287B8();
        (*(v9 + 8))(v6, ObjectType, v9);
        swift_unknownObjectRelease();
        return (*(v4 + 8))(v6, v3);
      }
    }
  }

  return result;
}

uint64_t sub_24EED08D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v8 = a3(a1, v3, ObjectType, a2);
  swift_unknownObjectRelease();
  return v8;
}

void (*MetricsPageEnterGate.hasAppeared.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 48) = v1;
  v6 = sub_24F9287F8();
  *(v5 + 56) = v6;
  v7 = *(v6 - 8);
  *(v5 + 64) = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  *(v5 + 72) = v8;
  swift_beginAccess();
  *(v5 + 80) = *(v1 + 32);
  return sub_24EED0A58;
}

void sub_24EED0A58(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  if (a2)
  {
    v4 = v2[9];
    MetricsPageEnterGate.hasAppeared.setter(*(*a1 + 80));
  }

  else
  {
    v5 = v2[6];
    v6 = *(v5 + 32);
    *(v5 + 32) = v3;
    if (v3 != v6)
    {
      v7 = v2[6];
      swift_beginAccess();
      if (v3)
      {
        if ((*(v7 + 34) & 1) != 0 && swift_unknownObjectWeakLoadStrong())
        {
          v9 = v2[8];
          v8 = v2[9];
          v10 = v2[7];
          v11 = *(v2[6] + 24);
          ObjectType = swift_getObjectType();
          sub_24F9287E8();
          (*(v11 + 8))(v8, ObjectType, v11);
          swift_unknownObjectRelease();
          (*(v9 + 8))(v8, v10);
        }
      }
    }

    v4 = v2[9];
  }

  free(v4);

  free(v2);
}

void (*MetricsPageEnterGate.hasExitedWhileAppeared.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 48) = v1;
  v6 = sub_24F9287F8();
  *(v5 + 56) = v6;
  v7 = *(v6 - 8);
  *(v5 + 64) = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  *(v5 + 72) = v8;
  swift_beginAccess();
  *(v5 + 80) = *(v1 + 33);
  return sub_24EED0C98;
}

void sub_24EED0C98(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  if (a2)
  {
    v4 = v2[9];
    MetricsPageEnterGate.hasExitedWhileAppeared.setter(v3);
  }

  else
  {
    v5 = v2[6];
    v6 = *(v5 + 33);
    *(v5 + 33) = v3;
    if (v6 == 1 && (v3 & 1) == 0)
    {
      v7 = v2[6];
      swift_beginAccess();
      if (*(v7 + 34))
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          v9 = v2[8];
          v8 = v2[9];
          v10 = v2[7];
          v11 = *(v2[6] + 24);
          ObjectType = swift_getObjectType();
          sub_24F9287B8();
          (*(v11 + 8))(v8, ObjectType, v11);
          swift_unknownObjectRelease();
          (*(v9 + 8))(v8, v10);
        }
      }
    }

    v4 = v2[9];
  }

  free(v4);

  free(v2);
}

void (*MetricsPageEnterGate.hasMetricsPage.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 48) = v1;
  v6 = sub_24F9287F8();
  *(v5 + 56) = v6;
  v7 = *(v6 - 8);
  *(v5 + 64) = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  *(v5 + 72) = v8;
  swift_beginAccess();
  *(v5 + 80) = *(v1 + 34);
  return sub_24EED0ED4;
}

void sub_24EED0ED4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  if (a2)
  {
    v4 = v2[9];
    MetricsPageEnterGate.hasMetricsPage.setter(v3);
  }

  else
  {
    v5 = v2[6];
    v6 = *(v5 + 34);
    *(v5 + 34) = v3;
    if ((v6 & 1) == 0)
    {
      if (v3)
      {
        v7 = v2[6];
        swift_beginAccess();
        if (*(v7 + 32) == 1)
        {
          if (swift_unknownObjectWeakLoadStrong())
          {
            v9 = v2[8];
            v8 = v2[9];
            v10 = v2[7];
            v11 = *(v2[6] + 24);
            ObjectType = swift_getObjectType();
            sub_24F9287E8();
            (*(v11 + 8))(v8, ObjectType, v11);
            swift_unknownObjectRelease();
            (*(v9 + 8))(v8, v10);
          }
        }
      }
    }

    v4 = v2[9];
  }

  free(v4);

  free(v2);
}

uint64_t MetricsPageEnterGate.__deallocating_deinit()
{
  sub_24E883630(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_24EED1044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a2 + 32) = 0;
  *(a2 + 34) = 0;
  *(a2 + 24) = a4;
  swift_unknownObjectWeakAssign();
  return a2;
}

uint64_t sub_24EED10A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 32) = 0;
  *(v5 + 34) = 0;
  *(v5 + 24) = a4;
  swift_unknownObjectWeakAssign();
  return v5;
}

uint64_t sub_24EED110C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_24EED117C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 33);
  return result;
}

uint64_t sub_24EED11EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 34);
  return result;
}

double static CGRect.frame(pinnedAtBottomLeftOf:of:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MinX = CGRectGetMinX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMaxY(v10);
  return MinX;
}

CGFloat static CGRect.frame(pinnedAtBottomRightOf:of:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v9 = CGRectGetMaxX(*&a1) - a5;
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  CGRectGetMaxY(v11);
  return v9;
}

CGFloat static CGRect.frame(centeredWithin:of:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v9 = CGRectGetMidX(*&a1) - a5 * 0.5;
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  CGRectGetMidY(v11);
  return v9;
}

CGFloat static CGRect.frame(pinnedAtTopCenterOf:of:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v9 = CGRectGetMidX(*&a1) + a5 * -0.5;
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  CGRectGetMinY(v11);
  return v9;
}

CGFloat static CGRect.frame(pinnedAtBottomCenterOf:of:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v9 = CGRectGetMidX(*&a1) + a5 * -0.5;
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  CGRectGetMaxY(v11);
  return v9;
}

double static ReviewComposerUtility.iconSize(from:)(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC12GameStoreKit17WriteReviewAction_appIcon);
  if (v1)
  {
    return dbl_24F9AC078[*(v1 + 64)];
  }

  else
  {
    return 60.0;
  }
}

uint64_t _s12GameStoreKit21ReviewComposerUtilityO11lockupStyle4from20AppleMediaServicesUI0d6LockupH0CAA05WriteD6ActionC_tFZ_0(uint64_t a1)
{
  v2 = sub_24F921E78();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_24F921E88();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(a1 + OBJC_IVAR____TtC12GameStoreKit17WriteReviewAction_appIcon);
  if (!v11)
  {
    goto LABEL_12;
  }

  v12 = *(v11 + 64);
  if (v12 <= 3)
  {
    if (v12 > 1)
    {
      if (v12 != 2)
      {
        v15 = MEMORY[0x277CEE7F8];
        goto LABEL_13;
      }

      goto LABEL_18;
    }

    if (v12)
    {
      v20[13] = 1;
      v14 = 60.0;
      goto LABEL_20;
    }

LABEL_12:
    v15 = MEMORY[0x277CEE800];
LABEL_13:
    (*(v7 + 104))(v10, *v15, v6, v8);
    (*(v3 + 104))(v5, *MEMORY[0x277CEE7E8], v2);
    v16 = objc_allocWithZone(sub_24F921EB8());
    return sub_24F921EA8();
  }

  if (v12 > 5)
  {
    if (v12 == 6 || v12 != 7)
    {
      goto LABEL_12;
    }

    v20[15] = 7;
    v14 = 36.0;
LABEL_20:
    Artwork.Style.iconCornerRadius(for:isPlaceholder:)(0, 60.0, v14);
    (*(v7 + 104))(v10, *MEMORY[0x277CEE800], v6);
    (*(v3 + 104))(v5, *MEMORY[0x277CEE7E8], v2);
    v19 = objc_allocWithZone(sub_24F921EB8());
    return sub_24F921EA8();
  }

  if (v12 != 4)
  {
    v15 = MEMORY[0x277CEE7F0];
    goto LABEL_13;
  }

LABEL_18:
  v20[14] = v12;
  Artwork.Style.iconCornerRadius(for:isPlaceholder:)(1, 60.0, 60.0);
  (*(v7 + 104))(v10, *MEMORY[0x277CEE800], v6);
  (*(v3 + 104))(v5, *MEMORY[0x277CEE7E8], v2);
  v18 = objc_allocWithZone(sub_24F921EB8());
  return sub_24F921E98();
}

uint64_t TitledParagraphLayout.init(metrics:allowsMultiColumn:primaryText:secondaryText:bodyText:)@<X0>(_OWORD *a1@<X0>, char a2@<W1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X8>)
{
  v9 = a1[3];
  *(a6 + 160) = a1[2];
  *(a6 + 176) = v9;
  v10 = a1[5];
  *(a6 + 192) = a1[4];
  *(a6 + 208) = v10;
  v11 = a1[1];
  *(a6 + 128) = *a1;
  *(a6 + 144) = v11;
  *a6 = a2;
  sub_24E612C80(a3, a6 + 8);
  sub_24E612C80(a4, a6 + 48);

  return sub_24E612C80(a5, a6 + 88);
}

uint64_t TitledParagraphLayout.Metrics.init(textSpace:bodyTopSpace:columnWidth:columnMargin:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  sub_24E612C80(a1, a3);
  result = sub_24E612C80(a2, a3 + 40);
  *(a3 + 80) = a4;
  *(a3 + 88) = a5;
  return result;
}

uint64_t TitledParagraphLayout.Metrics.textSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_24E612C80(a1, v1);
}

uint64_t TitledParagraphLayout.Metrics.bodyTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 40);

  return sub_24E612C80(a1, v1 + 40);
}

uint64_t static TitledParagraphLayout.isMultiColumn(compatibleWith:)()
{
  if (sub_24F92BF78())
  {
    v0 = sub_24F92BF98() ^ 1;
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

double TitledParagraphLayout.measurements(fitting:in:)(void *a1, double a2)
{
  v3 = v2;
  v6 = sub_24F9225E8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_24F922618();
  v10 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v12 = v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = MEMORY[0x28223BE20](v13).n128_u64[0];
  v16 = v65 - v15;
  v17 = [a1 traitCollection];
  if (*v2 == 1 && (sub_24F92BF78() & 1) != 0 && (sub_24F92BF98() & 1) == 0)
  {
    (*(v7 + 104))(v9, *MEMORY[0x277D22788], v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B3F0);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_24F93A400;
    v55 = v3[9];
    v54 = v3[10];
    v56 = __swift_project_boxed_opaque_existential_1(v3 + 6, v55);
    *(v53 + 56) = v55;
    *(v53 + 64) = *(v54 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v53 + 32));
    (*(*(v55 - 8) + 16))(boxed_opaque_existential_1, v56, v55);
    v59 = v3[4];
    v58 = v3[5];
    v60 = __swift_project_boxed_opaque_existential_1(v3 + 1, v59);
    v73 = v59;
    v74 = *(v58 + 8);
    v61 = __swift_allocate_boxed_opaque_existential_1(v72);
    (*(*(v59 - 8) + 16))(v61, v60, v59);
    sub_24E615E00((v3 + 16), v71);
    v69 = sub_24F922418();
    v70 = MEMORY[0x277D226F0];
    __swift_allocate_boxed_opaque_existential_1(v68);
    sub_24F922408();
    v62 = sub_24F9229F8();
    v63 = MEMORY[0x277D22900];
    *(v53 + 96) = v62;
    *(v53 + 104) = v63;
    __swift_allocate_boxed_opaque_existential_1((v53 + 72));
    sub_24F9229E8();
    sub_24F9225F8();
    sub_24F9225D8();
    __swift_project_boxed_opaque_existential_1(v3 + 11, v3[14]);
    sub_24F922288();

    (*(v10 + 8))(v16, v67);
  }

  else
  {
    v66 = v17;
    v18 = sub_24F92BF98();
    (*(v7 + 104))(v9, *MEMORY[0x277D22788], v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B3F0);
    if (v18)
    {
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_24F93FC20;
      sub_24E615E00((v3 + 16), v72);
      v20 = sub_24F9229A8();
      v21 = MEMORY[0x277D228E0];
      *(v19 + 56) = v20;
      *(v19 + 64) = v21;
      __swift_allocate_boxed_opaque_existential_1((v19 + 32));
      sub_24F9229B8();
      v23 = v3[9];
      v22 = v3[10];
      v24 = __swift_project_boxed_opaque_existential_1(v3 + 6, v23);
      *(v19 + 96) = v23;
      *(v19 + 104) = *(v22 + 8);
      v25 = __swift_allocate_boxed_opaque_existential_1((v19 + 72));
      (*(*(v23 - 8) + 16))(v25, v24, v23);
      v27 = v3[4];
      v26 = v3[5];
      v28 = __swift_project_boxed_opaque_existential_1(v3 + 1, v27);
      v73 = v27;
      v74 = *(v26 + 8);
      v29 = __swift_allocate_boxed_opaque_existential_1(v72);
      (*(*(v27 - 8) + 16))(v29, v28, v27);
      sub_24E615E00((v3 + 16), v71);
      v30 = sub_24F922418();
      v69 = v30;
      v70 = MEMORY[0x277D226F0];
      __swift_allocate_boxed_opaque_existential_1(v68);
      sub_24F922408();
      v31 = sub_24F9229F8();
      v32 = MEMORY[0x277D22900];
      *(v19 + 136) = v31;
      *(v19 + 144) = v32;
      __swift_allocate_boxed_opaque_existential_1((v19 + 112));
      sub_24F9229E8();
      v33 = v10;
      v65[1] = a1;
      v35 = v3[14];
      v34 = v3[15];
      v36 = __swift_project_boxed_opaque_existential_1(v3 + 11, v35);
      v73 = v35;
      v74 = *(v34 + 8);
      v37 = __swift_allocate_boxed_opaque_existential_1(v72);
      (*(*(v35 - 8) + 16))(v37, v36, v35);
      sub_24E615E00((v3 + 21), v71);
      v69 = v30;
      v70 = MEMORY[0x277D226F0];
      __swift_allocate_boxed_opaque_existential_1(v68);
      sub_24F922408();
      *(v19 + 176) = v31;
      *(v19 + 184) = MEMORY[0x277D22900];
      __swift_allocate_boxed_opaque_existential_1((v19 + 152));
      sub_24F9229E8();
      sub_24F9225F8();
      sub_24F9225D8();
      a2 = v38;

      (*(v33 + 8))(v12, v67);
    }

    else
    {
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_24F9479A0;
      sub_24E615E00((v3 + 16), v72);
      v40 = sub_24F9229A8();
      v41 = MEMORY[0x277D228E0];
      *(v39 + 56) = v40;
      *(v39 + 64) = v41;
      __swift_allocate_boxed_opaque_existential_1((v39 + 32));
      sub_24F9229B8();
      v42 = v3[4];
      v43 = v3[5];
      v44 = __swift_project_boxed_opaque_existential_1(v3 + 1, v42);
      *(v39 + 96) = v42;
      *(v39 + 104) = *(v43 + 8);
      v45 = __swift_allocate_boxed_opaque_existential_1((v39 + 72));
      (*(*(v42 - 8) + 16))(v45, v44, v42);
      v46 = v3[14];
      v47 = v3[15];
      v48 = __swift_project_boxed_opaque_existential_1(v3 + 11, v46);
      v73 = v46;
      v74 = *(v47 + 8);
      v49 = __swift_allocate_boxed_opaque_existential_1(v72);
      (*(*(v46 - 8) + 16))(v49, v48, v46);
      sub_24E615E00((v3 + 21), v71);
      v69 = sub_24F922418();
      v70 = MEMORY[0x277D226F0];
      __swift_allocate_boxed_opaque_existential_1(v68);
      sub_24F922408();
      v50 = sub_24F9229F8();
      v51 = MEMORY[0x277D22900];
      *(v39 + 136) = v50;
      *(v39 + 144) = v51;
      __swift_allocate_boxed_opaque_existential_1((v39 + 112));
      sub_24F9229E8();
      sub_24F9225F8();
      sub_24F9225D8();
      a2 = v52;

      (*(v10 + 8))(v12, v67);
    }
  }

  return a2;
}

uint64_t sub_24EED24B8@<X0>(uint64_t *a1@<X8>)
{
  v54 = a1;
  v2 = sub_24F922B68();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F922708();
  v51 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F922718();
  v58 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v52 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_24F9226C8();
  v11 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v1;
  if (*v1 == 1 && (sub_24F92BF78() & 1) != 0 || (sub_24F92BF98() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213A88);
    v14 = *(sub_24F922748() - 8);
    v49 = *(v14 + 72);
    v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v16 = swift_allocObject();
    v50 = v16;
    *(v16 + 16) = xmmword_24F93A400;
    v53 = v16 + v15;
    *(&v66 + 1) = sub_24F922418();
    v67 = MEMORY[0x277D226F0];
    __swift_allocate_boxed_opaque_existential_1(&v65);
    sub_24F922408();
    v64 = 0;
    memset(v63, 0, sizeof(v63));
    v48 = *MEMORY[0x277D227C8];
    v55 = v11;
    v17 = *(v11 + 104);
    v46 = v11 + 104;
    v47 = v17;
    v18 = v13;
    v17(v13);
    v43 = *MEMORY[0x277D227F0];
    v19 = v51;
    v38 = v9;
    v20 = v58;
    v21 = *(v58 + 104);
    v44 = v58 + 104;
    v45 = v21;
    v22 = v52;
    v21(v52);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2330E8);
    v42 = v19[9];
    v39 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v23 = swift_allocObject();
    v40 = xmmword_24F93DE60;
    *(v23 + 16) = xmmword_24F93DE60;
    sub_24F9226F8();
    *&v60 = v23;
    v37[3] = sub_24EED36B4();
    v37[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2330F0);
    v37[1] = sub_24EED370C();
    sub_24F92C6A8();
    sub_24F922738();
    v51 = v19[1];
    (v51)(v8, v6);
    v24 = *(v20 + 8);
    v58 = v20 + 8;
    v37[0] = v24;
    v25 = v38;
    v24(v22, v38);
    v26 = *(v55 + 8);
    v55 += 8;
    v27 = v57;
    v26(v18, v57);
    sub_24E930E6C(v63);
    __swift_destroy_boxed_opaque_existential_1(&v65);
    v67 = 0;
    v65 = 0u;
    v66 = 0u;
    v47(v18, v48, v27);
    v45(v22, v43, v25);
    v28 = swift_allocObject();
    *(v28 + 16) = v40;
    sub_24F9226F8();
    *&v63[0] = v28;
    sub_24F92C6A8();
    sub_24F922738();
    (v51)(v8, v6);
    (v37[0])(v22, v25);
    v26(v18, v57);
    sub_24E930E6C(&v65);
    v29 = sub_24F922758();
    v30 = MEMORY[0x277D22808];
    v31 = v54;
    v54[3] = v29;
    v31[4] = v30;
    __swift_allocate_boxed_opaque_existential_1(v31);
    return sub_24F922728();
  }

  else
  {
    v33 = v56;
    sub_24E615E00((v56 + 8), &v65);
    sub_24E615E00((v33 + 48), v63);
    (*(v3 + 104))(v5, *MEMORY[0x277D229D8], v2);
    v62 = 0;
    v60 = 0u;
    v61 = 0u;
    v59[3] = sub_24F922418();
    v59[4] = MEMORY[0x277D226F0];
    __swift_allocate_boxed_opaque_existential_1(v59);
    sub_24F922408();
    v34 = sub_24F922B78();
    v35 = MEMORY[0x277D229E8];
    v36 = v54;
    v54[3] = v34;
    v36[4] = v35;
    __swift_allocate_boxed_opaque_existential_1(v36);
    return sub_24F922B48();
  }
}

uint64_t sub_24EED2C98(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v12 = sub_24F9221D8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v19[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  CGRectGetMaxX(v20);
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  CGRectGetMinY(v21);
  v22.origin.x = a2;
  v22.origin.y = a3;
  v22.size.width = a4;
  v22.size.height = a5;
  CGRectGetHeight(v22);
  v16 = [a1 traitCollection];
  sub_24EED24B8(v19);

  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  sub_24F92C1D8();
  sub_24F922AC8();
  (*(v13 + 8))(v15, v12);
  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  CGRectGetWidth(v23);
  __swift_project_boxed_opaque_existential_1((v6 + 88), *(v6 + 112));
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  CGRectGetHeight(v24);
  sub_24F922288();
  v25.origin.x = a2;
  v25.origin.y = a3;
  v25.size.width = a4;
  v25.size.height = a5;
  CGRectGetMinX(v25);
  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = a4;
  v26.size.height = a5;
  CGRectGetMinY(v26);
  __swift_project_boxed_opaque_existential_1((v6 + 88), *(v6 + 112));
  sub_24F92C1D8();
  sub_24F922228();
  sub_24F922128();
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t sub_24EED2F6C@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v31 = a2;
  v29 = sub_24F922C28();
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v26 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_24F9221D8();
  v28 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24F92CDB8();
  v17 = *(v16 - 8);
  *&v18 = MEMORY[0x28223BE20](v16).n128_u64[0];
  v20 = v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [a1 traitCollection];
  __swift_project_boxed_opaque_existential_1(v6 + 16, v6[19]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  (*(v17 + 8))(v20, v16);
  v33.origin.x = a3;
  v33.origin.y = a4;
  v33.size.width = a5;
  v33.size.height = a6;
  CGRectGetMinX(v33);
  v34.origin.x = a3;
  v34.origin.y = a4;
  v34.size.width = a5;
  v34.size.height = a6;
  CGRectGetMinY(v34);
  v35.origin.x = a3;
  v35.origin.y = a4;
  v35.size.width = a5;
  v35.size.height = a6;
  CGRectGetWidth(v35);
  v36.origin.x = a3;
  *v25 = a3;
  *&v25[1] = a4;
  v36.origin.y = a4;
  v36.size.width = a5;
  v36.size.height = a6;
  CGRectGetHeight(v36);
  v22 = v21;
  sub_24EED24B8(v32);
  __swift_project_boxed_opaque_existential_1(v32, v32[3]);
  sub_24F922AC8();
  __swift_project_boxed_opaque_existential_1(v7 + 11, v7[14]);
  sub_24F922288();
  __swift_project_boxed_opaque_existential_1(v7 + 21, v7[24]);
  sub_24F9223C8();
  __swift_project_boxed_opaque_existential_1(v7 + 11, v7[14]);
  v37.origin.x = a3;
  v37.origin.y = a4;
  v37.size.width = a5;
  v37.size.height = a6;
  CGRectGetMinX(v37);
  sub_24F9221A8();
  sub_24F922158();
  v23 = v26;
  sub_24F9221C8();
  sub_24F922BB8();
  (*(v27 + 8))(v23, v29);
  sub_24F922228();
  sub_24F922128();

  (*(v28 + 8))(v15, v30);
  return __swift_destroy_boxed_opaque_existential_1(v32);
}

uint64_t TitledParagraphLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  if (*v6 == 1)
  {
    v7 = a2;
    v8 = a3;
    v9 = a4;
    v10 = a5;
    v11 = a6;
    v12 = a1;
    v13 = [a1 traitCollection];
    if (sub_24F92BF78())
    {
      v14 = sub_24F92BF98();

      a1 = v12;
      a6 = v11;
      a5 = v10;
      a4 = v9;
      a3 = v8;
      a2 = v7;
      if ((v14 & 1) == 0)
      {

        return sub_24EED2C98(v12, v8, v9, v10, v11);
      }
    }

    else
    {

      a1 = v12;
      a6 = v11;
      a5 = v10;
      a4 = v9;
      a3 = v8;
      a2 = v7;
    }
  }

  return sub_24EED2F6C(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_24EED34D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  if (*v6 == 1)
  {
    v7 = a2;
    v8 = a3;
    v9 = a4;
    v10 = a5;
    v11 = a6;
    v12 = a1;
    v13 = [a1 traitCollection];
    if (sub_24F92BF78())
    {
      v14 = sub_24F92BF98();

      a1 = v12;
      a6 = v11;
      a5 = v10;
      a4 = v9;
      a3 = v8;
      a2 = v7;
      if ((v14 & 1) == 0)
      {

        return sub_24EED2C98(v12, v8, v9, v10, v11);
      }
    }

    else
    {

      a1 = v12;
      a6 = v11;
      a5 = v10;
      a4 = v9;
      a3 = v8;
      a2 = v7;
    }
  }

  return sub_24EED2F6C(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_24EED3604(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EED364C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24EED36B4()
{
  result = qword_27F237A50;
  if (!qword_27F237A50)
  {
    sub_24F922708();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237A50);
  }

  return result;
}

unint64_t sub_24EED370C()
{
  result = qword_27F237A60;
  if (!qword_27F237A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2330F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237A60);
  }

  return result;
}

char *ReviewSummaryReportConcernAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v80 = a2;
  v74 = v4;
  v6 = *v4;
  v72 = v3;
  v73 = v6;
  v7 = sub_24F9285B8();
  v76 = *(v7 - 8);
  v77 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v67 = v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v71 = v62 - v11;
  MEMORY[0x28223BE20](v10);
  v69 = v62 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v62 - v14;
  v16 = sub_24F928388();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v65 = v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v70 = v62 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v68 = (v62 - v23);
  MEMORY[0x28223BE20](v22);
  v25 = v62 - v24;
  v26 = sub_24F92AC28();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = v62 - v31;
  v78 = a1;
  sub_24F928398();
  sub_24F9282B8();
  v66 = v17;
  v33 = *(v17 + 8);
  v34 = v25;
  v35 = v26;
  v36 = v27;
  v79 = v16;
  v33(v34, v16);
  v37 = (*(v27 + 48))(v15, 1, v35);
  v75 = v33;
  if (v37 == 1)
  {
    sub_24E601704(v15, &qword_27F2213B0);
LABEL_5:
    v38 = v76;
    v39 = v74;
    v40 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v41 = 0x736E7265636E6F63;
    v41[1] = 0xE800000000000000;
    v41[2] = v73;
    (*(*(v40 - 8) + 104))(v41, *MEMORY[0x277D22530], v40);
    swift_willThrow();
    (*(v38 + 8))(v80, v77);
    v75(v78, v79);
    goto LABEL_6;
  }

  (*(v27 + 32))(v32, v15, v35);
  if (sub_24F92ABF8())
  {
    (*(v27 + 8))(v32, v35);
    goto LABEL_5;
  }

  (*(v27 + 16))(v30, v32, v35);
  v43 = v77;
  v44 = v76 + 16;
  v64 = *(v76 + 16);
  v64(v69, v80, v77);
  sub_24EAD2CA8();
  v45 = sub_24F92B6A8();
  v62[2] = OBJC_IVAR____TtC12GameStoreKit32ReviewSummaryReportConcernAction_concerns;
  v63 = v32;
  v39 = v74;
  *&v74[OBJC_IVAR____TtC12GameStoreKit32ReviewSummaryReportConcernAction_concerns] = v45;
  v46 = v68;
  sub_24F928398();
  v47 = sub_24F928348();
  v69 = v35;
  v49 = v48;
  v75(v46, v79);
  v50 = &v39[OBJC_IVAR____TtC12GameStoreKit32ReviewSummaryReportConcernAction_comment];
  *v50 = v47;
  v50[1] = v49;
  v68 = v50;
  v51 = v70;
  sub_24F928398();
  v52 = v71;
  v62[1] = v44;
  v64(v71, v80, v43);
  type metadata accessor for HttpTemplateAction();
  swift_allocObject();
  v53 = v72;
  v54 = HttpTemplateAction.init(deserializing:using:)(v51, v52);
  if (!v53)
  {
    *&v39[OBJC_IVAR____TtC12GameStoreKit32ReviewSummaryReportConcernAction_sendAction] = v54;
    v55 = v65;
    v56 = v78;
    (*(v66 + 16))(v65, v78, v79);
    v57 = v67;
    v58 = v80;
    v59 = v77;
    v64(v67, v80, v77);
    v60 = Action.init(deserializing:using:)(v55, v57);
    v61 = v79;
    v39 = v60;
    (*(v76 + 8))(v58, v59);
    v75(v56, v61);
    (*(v36 + 8))(v63, v69);
    return v39;
  }

  (*(v76 + 8))(v80, v77);
  v75(v78, v79);
  (*(v36 + 8))(v63, v69);

LABEL_6:
  swift_deallocPartialClassInstance();
  return v39;
}

uint64_t ReviewSummaryReportConcernAction.comment.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit32ReviewSummaryReportConcernAction_comment);

  return v1;
}

uint64_t sub_24EED4018()
{
}

uint64_t ReviewSummaryReportConcernAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return v0;
}

uint64_t ReviewSummaryReportConcernAction.__deallocating_deinit()
{
  ReviewSummaryReportConcernAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ReviewSummaryReportConcernAction()
{
  result = qword_27F2330F8;
  if (!qword_27F2330F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EED428C(void **a1)
{
  v2 = *(sub_24F91FEF8() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_24E86187C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_24EED64B0(v5);
  *a1 = v3;
}

uint64_t AchievementSummary.__allocating_init(id:bundleId:completedAchievements:totalAchievements:completedText:action:achievements:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v33 = a3;
  v34 = a4;
  v32 = a2;
  v14 = a9;
  v15 = sub_24F91F6B8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 80) = 0u;
  *(v19 + 96) = 0u;
  sub_24E60169C(a1, &v37, &qword_27F235830);
  if (*(&v38 + 1))
  {
    v20 = v38;
    *(v19 + 112) = v37;
    *(v19 + 128) = v20;
    *(v19 + 144) = v39;
  }

  else
  {
    sub_24F91F6A8();
    v21 = sub_24F91F668();
    v30 = a9;
    v31 = a5;
    v22 = a6;
    v23 = a8;
    v24 = v21;
    v25 = a7;
    v27 = v26;
    (*(v16 + 8))(v18, v15);
    v35 = v24;
    v36 = v27;
    a8 = v23;
    a6 = v22;
    a7 = v25;
    v14 = v30;
    a5 = v31;
    sub_24F92C7F8();
    sub_24E601704(&v37, &qword_27F235830);
  }

  sub_24E601704(a1, &qword_27F235830);
  v28 = v33;
  *(v19 + 16) = v32;
  *(v19 + 24) = v28;
  *(v19 + 32) = v34;
  *(v19 + 40) = a5;
  *(v19 + 48) = a6;
  *(v19 + 56) = a7;
  *(v19 + 64) = v14;
  *(v19 + 72) = a8;
  return v19;
}

uint64_t AchievementSummary.init(id:bundleId:completedAchievements:totalAchievements:completedText:action:achievements:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v34 = a3;
  v35 = a4;
  v33 = a2;
  v16 = a9;
  v17 = sub_24F91F6B8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v10 + 80) = 0u;
  *(v10 + 96) = 0u;
  sub_24E60169C(a1, &v38, &qword_27F235830);
  if (*(&v39 + 1))
  {
    v41 = v38;
    v42 = v39;
    v43 = v40;
  }

  else
  {
    sub_24F91F6A8();
    v21 = sub_24F91F668();
    v31 = a9;
    v32 = a5;
    v22 = a6;
    v23 = a8;
    v24 = v21;
    v25 = a7;
    v27 = v26;
    (*(v18 + 8))(v20, v17);
    v36 = v24;
    v37 = v27;
    a8 = v23;
    a6 = v22;
    a7 = v25;
    v16 = v31;
    a5 = v32;
    sub_24F92C7F8();
    sub_24E601704(&v38, &qword_27F235830);
  }

  sub_24E601704(a1, &qword_27F235830);
  v28 = v42;
  *(v10 + 112) = v41;
  *(v10 + 128) = v28;
  *(v10 + 144) = v43;
  v29 = v34;
  *(v10 + 16) = v33;
  *(v10 + 24) = v29;
  *(v10 + 32) = v35;
  *(v10 + 40) = a5;
  *(v10 + 48) = a6;
  *(v10 + 56) = a7;
  *(v10 + 64) = v16;
  *(v10 + 72) = a8;
  return v10;
}

uint64_t AchievementSummary.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v141 = a2;
  v114 = sub_24F91F6B8();
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v112 = &v99 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_24F9285B8();
  v131 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v125 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233108);
  MEMORY[0x28223BE20](v5 - 8);
  v124 = &v99 - v6;
  v123 = sub_24F91FEF8();
  v126 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v130 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v129 = &v99 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v10 - 8);
  v119 = &v99 - v11;
  v12 = sub_24F92AC28();
  v120 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v117 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F928388();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v115 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v118 = &v99 - v18;
  MEMORY[0x28223BE20](v19);
  v128 = &v99 - v20;
  MEMORY[0x28223BE20](v21);
  v121 = &v99 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v99 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v99 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v99 - v30;
  v134 = a1;
  sub_24F928398();
  v116 = sub_24F928348();
  v33 = v32;
  v127 = v15;
  v36 = *(v15 + 8);
  v35 = v15 + 8;
  v34 = v36;
  v36(v31, v14);
  if (!v33)
  {
    v37 = sub_24F92AC38();
    sub_24EED63C4(&qword_27F2213B8, 255, MEMORY[0x277D22548]);
    swift_allocError();
    *v44 = 0x6449656C646E7562;
    v44[1] = 0xE800000000000000;
    v44[2] = v132;
    (*(*(v37 - 8) + 104))(v44, *MEMORY[0x277D22530], v37);
    swift_willThrow();
    (*(v131 + 8))(v141, v133);
    v34(v134, v14);
    return v37;
  }

  v122 = v33;
  v111 = v12;
  v37 = 0x800000024FA61DC0;
  v38 = v134;
  sub_24F928398();
  v110 = sub_24F928258();
  v40 = v39;
  v34(v28, v14);
  v41 = v14;
  if (v40)
  {

    v42 = sub_24F92AC38();
    sub_24EED63C4(&qword_27F2213B8, 255, MEMORY[0x277D22548]);
    swift_allocError();
    *v43 = 0xD000000000000015;
    v43[1] = 0x800000024FA61DC0;
    v43[2] = v132;
    (*(*(v42 - 8) + 104))(v43, *MEMORY[0x277D22530], v42);
    swift_willThrow();
    (*(v131 + 8))(v141, v133);
    v34(v38, v14);
    return v37;
  }

  v37 = 0x800000024FA61DE0;
  v45 = v38;
  sub_24F928398();
  v105 = sub_24F928258();
  v47 = v46;
  v34(v25, v41);
  v48 = v141;
  v49 = v35;
  if (v47)
  {

    v50 = sub_24F92AC38();
    sub_24EED63C4(&qword_27F2213B8, 255, MEMORY[0x277D22548]);
    swift_allocError();
    *v51 = 0xD000000000000011;
    v51[1] = 0x800000024FA61DE0;
    v51[2] = v132;
    (*(*(v50 - 8) + 104))(v51, *MEMORY[0x277D22530], v50);
    swift_willThrow();
    (*(v131 + 8))(v48, v133);
    v34(v38, v41);
    return v37;
  }

  v37 = 0xED00007478655464;
  v52 = v121;
  sub_24F928398();
  v102 = sub_24F928348();
  v54 = v53;
  v34(v52, v41);
  v55 = v34;
  v56 = v132;
  if (!v54)
  {

    v63 = sub_24F92AC38();
    sub_24EED63C4(&qword_27F2213B8, 255, MEMORY[0x277D22548]);
    swift_allocError();
    strcpy(v64, "completedText");
    *(v64 + 7) = -4864;
    *(v64 + 2) = v56;
    (*(*(v63 - 8) + 104))(v64, *MEMORY[0x277D22530], v63);
    swift_willThrow();
    (*(v131 + 8))(v141, v133);
    v55(v45, v41);
    return v37;
  }

  v103 = v54;
  type metadata accessor for Action();
  v57 = v128;
  sub_24F928398();
  v104 = static Action.tryToMakeInstance(byDeserializing:using:)(v57, v141);
  v55(v57, v41);
  v58 = v118;
  sub_24F928398();
  v59 = v119;
  sub_24F9282B8();
  v55(v58, v41);
  v60 = v120;
  v61 = v111;
  if ((*(v120 + 48))(v59, 1, v111) == 1)
  {

    sub_24E601704(v59, &qword_27F2213B0);
    v37 = sub_24F92AC38();
    sub_24EED63C4(&qword_27F2213B8, 255, MEMORY[0x277D22548]);
    swift_allocError();
    strcpy(v62, "achievements");
    v62[13] = 0;
    *(v62 + 7) = -5120;
    *(v62 + 2) = v56;
    (*(*(v37 - 8) + 104))(v62, *MEMORY[0x277D22530], v37);
    swift_willThrow();

    (*(v131 + 8))(v141, v133);
    v55(v45, v41);
    return v37;
  }

  v100 = v55;
  v101 = v49;
  v121 = v41;
  (*(v60 + 32))(v117, v59, v61);
  result = sub_24F92AC08();
  v66 = result;
  v119 = *(result + 16);
  if (!v119)
  {
    v69 = MEMORY[0x277D84F90];
LABEL_22:
    v78 = v100;

    v79 = v115;
    sub_24F928398();
    v80 = sub_24F928348();
    if (v81)
    {
      *&v137 = v80;
      *(&v137 + 1) = v81;
    }

    else
    {
      v83 = v112;
      sub_24F91F6A8();
      v84 = sub_24F91F668();
      v86 = v85;
      (*(v113 + 8))(v83, v114);
      *&v137 = v84;
      *(&v137 + 1) = v86;
    }

    sub_24F92C7F8();
    v78(v79, v121);
    v87 = v133;
    v88 = v131;
    v89 = v104;
    type metadata accessor for AchievementSummary();
    v37 = swift_allocObject();
    *(v37 + 80) = 0u;
    *(v37 + 96) = 0u;
    sub_24E60169C(v140, &v137, &qword_27F235830);
    if (*(&v138 + 1))
    {
      v90 = v138;
      *(v37 + 112) = v137;
      *(v37 + 128) = v90;
      *(v37 + 144) = v139;
      v91 = v141;
    }

    else
    {
      v92 = v112;
      sub_24F91F6A8();
      v93 = sub_24F91F668();
      v95 = v94;
      (*(v113 + 8))(v92, v114);
      v135 = v93;
      v136 = v95;
      v89 = v104;
      v91 = v141;
      sub_24F92C7F8();
      sub_24E601704(&v137, &qword_27F235830);
    }

    (*(v88 + 8))(v91, v87);
    v78(v134, v121);
    sub_24E601704(v140, &qword_27F235830);
    (*(v120 + 8))(v117, v111);
    v96 = v122;
    *(v37 + 16) = v116;
    *(v37 + 24) = v96;
    v97 = v105;
    *(v37 + 32) = v110;
    *(v37 + 40) = v97;
    v98 = v103;
    *(v37 + 48) = v102;
    *(v37 + 56) = v98;
    *(v37 + 64) = v69;
    *(v37 + 72) = v89;
    return v37;
  }

  v67 = 0;
  v118 = (v127 + 16);
  v109 = (v131 + 16);
  v108 = (v126 + 48);
  v68 = (v126 + 32);
  v107 = (v126 + 16);
  v106 = v126 + 8;
  v69 = MEMORY[0x277D84F90];
  while (v67 < *(v66 + 16))
  {
    (*(v127 + 16))(v128, v66 + ((*(v127 + 80) + 32) & ~*(v127 + 80)) + *(v127 + 72) * v67, v121);
    (*v109)(v125, v141, v133);
    sub_24EED63C4(&qword_27F233110, 255, MEMORY[0x277D0C7C0]);
    v70 = v124;
    v71 = v123;
    sub_24F929548();
    if ((*v108)(v70, 1, v71) == 1)
    {

      sub_24E601704(v70, &qword_27F233108);
      v37 = sub_24F92AC38();
      sub_24EED63C4(&qword_27F2213B8, 255, MEMORY[0x277D22548]);
      swift_allocError();
      *v82 = 0x6D65766569686361;
      v82[1] = 0xEB00000000746E65;
      v82[2] = v56;
      (*(*(v37 - 8) + 104))(v82, *MEMORY[0x277D22530], v37);
      swift_willThrow();

      (*(v131 + 8))(v141, v133);
      v100(v45, v121);
      (*(v120 + 8))(v117, v111);
      return v37;
    }

    v72 = *v68;
    v73 = v129;
    (*v68)(v129, v70, v71);
    (*v107)(v130, v73, v71);
    v74 = v71;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v69 = sub_24E6165CC(0, *(v69 + 2) + 1, 1, v69);
    }

    v76 = *(v69 + 2);
    v75 = *(v69 + 3);
    if (v76 >= v75 >> 1)
    {
      v69 = sub_24E6165CC(v75 > 1, v76 + 1, 1, v69);
    }

    ++v67;
    v77 = v126;
    (*(v126 + 8))(v129, v74);
    *(v69 + 2) = v76 + 1;
    result = v72(&v69[((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v76], v130, v74);
    v45 = v134;
    v56 = v132;
    if (v119 == v67)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

uint64_t AchievementSummary.bundleId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AchievementSummary.completedText.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_24EED5AA0(JSContext a1)
{
  v2 = v1;
  v4 = sub_24F91FEF8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_opt_self();
  v9 = [v8 valueWithNewObjectInContext_];
  if (!v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  v10 = v9;
  v11 = v2[3];
  v32 = v2[2];
  v33 = v11;

  v12 = &off_279691000;
  v13 = [v8 valueWithObject:sub_24F92CF68() inContext:a1.super.isa];
  swift_unknownObjectRelease();
  if (!v13)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_24F92C328();
  v32 = v2[4];
  v14 = [v8 valueWithObject:sub_24F92CF68() inContext:a1.super.isa];
  swift_unknownObjectRelease();
  if (!v14)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_24F92C328();
  v32 = v2[5];
  v15 = [v8 valueWithObject:sub_24F92CF68() inContext:a1.super.isa];
  swift_unknownObjectRelease();
  if (!v15)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_24F92C328();
  v16 = v2[7];
  v32 = v2[6];
  v33 = v16;

  v17 = [v8 valueWithObject:sub_24F92CF68() inContext:a1.super.isa];
  swift_unknownObjectRelease();
  if (!v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_24F92C328();
  v32 = v2[8];

  sub_24EED428C(&v32);
  v18 = v32;
  v19 = v32[2];
  if (v19)
  {
    v28 = v8;
    v29 = v10;
    v32 = MEMORY[0x277D84F90];
    sub_24F92C978();
    v21 = *(v5 + 16);
    v20 = v5 + 16;
    v22 = *(v20 + 64);
    v27 = v18;
    v23 = v18 + ((v22 + 32) & ~v22);
    v30 = *(v20 + 56);
    v31 = v21;
    do
    {
      v31(v7, v23, v4);
      Achievement.makeValue(in:)(a1);
      (*(v20 - 8))(v7, v4);
      sub_24F92C948();
      sub_24F92C988();
      sub_24F92C998();
      sub_24F92C958();
      v23 += v30;
      --v19;
    }

    while (v19);

    v24 = v32;
    v8 = v28;
    v10 = v29;
    v12 = &off_279691000;
  }

  else
  {

    v24 = MEMORY[0x277D84F90];
  }

  v32 = v24;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223FA8);
  v2 = sub_24F92CF68();
  v25 = [v8 v12[249]];
  swift_unknownObjectRelease();
  if (v25)
  {

    sub_24F92C328();
    return v10;
  }

LABEL_18:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_24EED5F20(uint64_t a1, uint64_t a2)
{
  v19[1] = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v19 - v6;
  v8 = sub_24F91F648();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v19 - v13;
  sub_24F91FE88();
  v15 = *(v9 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    sub_24F91F548();
    if (v15(v7, 1, v8) != 1)
    {
      sub_24E601704(v7, &unk_27F22EC30);
    }
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
  }

  sub_24F91FE88();
  if (v15(v4, 1, v8) == 1)
  {
    sub_24F91F548();
    if (v15(v4, 1, v8) != 1)
    {
      sub_24E601704(v4, &unk_27F22EC30);
    }
  }

  else
  {
    (*(v9 + 32))(v11, v4, v8);
  }

  v16 = sub_24F91F588();
  v17 = *(v9 + 8);
  v17(v11, v8);
  v17(v14, v8);
  return v16 & 1;
}