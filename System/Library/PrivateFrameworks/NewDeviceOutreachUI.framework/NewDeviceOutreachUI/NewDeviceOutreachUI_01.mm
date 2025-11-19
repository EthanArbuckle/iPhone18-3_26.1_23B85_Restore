uint64_t sub_25BDBB314@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  type metadata accessor for CoverageCentralViewModel();
  sub_25BDBC0E4(&qword_27FBDD438, type metadata accessor for CoverageCentralViewModel);
  sub_25BDDFD88();
  v4 = *(type metadata accessor for CoverageCentralSectionView() + 20);
  v5 = sub_25BDDF6E8();
  v6 = *(*(v5 - 8) + 32);

  return v6(a2 + v4, a1, v5);
}

uint64_t sub_25BDBB410(uint64_t a1)
{
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD4F0, &qword_25BDE29E8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v16[-v6];
  v17 = v1;
  v8 = v1 + *(a1 + 20);
  v9 = sub_25BDDF6D8();
  if (v10)
  {
    v18 = v9;
    v19 = v10;
    sub_25BDBBE6C();
    v11 = sub_25BDDFC98();
    v14 = v13 & 1;
  }

  else
  {
    v11 = 0;
    v14 = 0;
    v12 = 0;
  }

  v18 = v11;
  v19 = v10;
  v20 = v14;
  v21 = v12;
  sub_25BDBA67C(v3, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD4F8, &qword_25BDE29F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD500, &qword_25BDE29F8);
  sub_25BDBBA68();
  sub_25BDBBAE4();
  sub_25BDBBBF4();
  return sub_25BDDFD38();
}

uint64_t sub_25BDBB588(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoverageCentralSectionView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BDBB5EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoverageCentralSectionView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BDBB650()
{
  v1 = *(type metadata accessor for CoverageCentralSectionView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_25BDDFA88() - 8);
  return sub_25BDBA1B8(v0 + v2, v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));
}

uint64_t sub_25BDBB710()
{
  v1 = v0;
  v2 = (type metadata accessor for CoverageCentralSectionView() - 8);
  v3 = (*(*v2 + 80) + 16) & ~*(*v2 + 80);
  v4 = *(*v2 + 64);
  v5 = *(sub_25BDDFA98() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_25BDDFA88() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD440, &qword_25BDE2980);
  sub_25BDDFD58();
  (*(*v11 + 528))(v1 + v6, v1 + v9, v1 + v3 + v2[7]);
}

uint64_t objectdestroyTm_1()
{
  v1 = (type metadata accessor for CoverageCentralSectionView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_25BDDFA88();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD440, &qword_25BDE2980);
  (*(*(v11 - 8) + 8))(v0 + v3, v11);
  v12 = v1[7];
  v13 = sub_25BDDF6E8();
  (*(*(v13 - 8) + 8))(v0 + v3 + v12, v13);
  (*(v6 + 8))(v0 + v8, v5);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

unint64_t sub_25BDBBA68()
{
  result = qword_27FBDD508;
  if (!qword_27FBDD508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD4F8, &qword_25BDE29F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD508);
  }

  return result;
}

unint64_t sub_25BDBBAE4()
{
  result = qword_27FBDD510;
  if (!qword_27FBDD510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD500, &qword_25BDE29F8);
    sub_25BDBBB68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD510);
  }

  return result;
}

unint64_t sub_25BDBBB68()
{
  result = qword_27FBDD518;
  if (!qword_27FBDD518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD520, &qword_25BDE2A00);
    sub_25BDB9E18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD518);
  }

  return result;
}

unint64_t sub_25BDBBBF4()
{
  result = qword_27FBDD528;
  if (!qword_27FBDD528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD4F0, &qword_25BDE29E8);
    sub_25BDBBC78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD528);
  }

  return result;
}

unint64_t sub_25BDBBC78()
{
  result = qword_27FBDD530;
  if (!qword_27FBDD530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD538, &qword_25BDE2A08);
    sub_25BDBBD30();
    sub_25BDBC1A0(&qword_27FBDD570, &qword_27FBDD578, &qword_25BDE30D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD530);
  }

  return result;
}

unint64_t sub_25BDBBD30()
{
  result = qword_27FBDD540;
  if (!qword_27FBDD540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD548, &qword_25BDE2A10);
    sub_25BDBBDE8();
    sub_25BDBC1A0(&qword_27FBDD560, &qword_27FBDD568, &unk_25BDE2A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD540);
  }

  return result;
}

unint64_t sub_25BDBBDE8()
{
  result = qword_27FBDD550;
  if (!qword_27FBDD550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD558, &qword_25BDE2A18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD550);
  }

  return result;
}

unint64_t sub_25BDBBE6C()
{
  result = qword_27FBDD580;
  if (!qword_27FBDD580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD580);
  }

  return result;
}

void sub_25BDBBF04()
{
  sub_25BDBBF88();
  if (v0 <= 0x3F)
  {
    sub_25BDDF6E8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25BDBBF88()
{
  if (!qword_27FBDD588)
  {
    type metadata accessor for CoverageCentralViewModel();
    v0 = sub_25BDDFD98();
    if (!v1)
    {
      atomic_store(v0, &qword_27FBDD588);
    }
  }
}

unint64_t sub_25BDBBFE0()
{
  result = qword_27FBDD590;
  if (!qword_27FBDD590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD598, &qword_25BDE2AC0);
    sub_25BDBBA68();
    sub_25BDBBAE4();
    sub_25BDBBBF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD590);
  }

  return result;
}

uint64_t sub_25BDBC080(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_25BDBC090@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BDDFBB8();
  *a1 = result;
  return result;
}

uint64_t sub_25BDBC0E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25BDBC12C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for CoverageCentralSectionView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  return sub_25BDB8064(a1, a2);
}

uint64_t sub_25BDBC1A0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

NDODeviceCoverageDetailsUI __swiftcall NDODeviceCoverageDetailsUI.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_25BDBC40C(void *a1)
{
  result = [a1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints_];

  [v1 addChildViewController_];
  result = [v1 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v5 = result;
  result = [a1 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = result;
  [v5 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD430, &unk_25BDE2490);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_25BDE2440;
  result = [a1 view];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = result;
  v9 = [result topAnchor];

  result = [v1 view];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v10 = result;
  v11 = [result topAnchor];

  v12 = [v9 constraintEqualToAnchor_];
  *(v7 + 32) = v12;
  result = [a1 view];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v13 = result;
  v14 = [result bottomAnchor];

  result = [v1 view];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v15 = result;
  v16 = [result bottomAnchor];

  v17 = [v14 constraintEqualToAnchor_];
  *(v7 + 40) = v17;
  result = [a1 view];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v18 = result;
  v19 = [result leadingAnchor];

  result = [v1 view];
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v20 = result;
  v21 = [result safeAreaLayoutGuide];

  v22 = [v21 leadingAnchor];
  v23 = [v19 constraintEqualToAnchor_];

  *(v7 + 48) = v23;
  result = [a1 view];
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v24 = result;
  v25 = [result trailingAnchor];

  result = [v1 view];
  if (!result)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v26 = result;
  v27 = objc_opt_self();
  v28 = [v26 safeAreaLayoutGuide];

  v29 = [v28 trailingAnchor];
  v30 = [v25 constraintEqualToAnchor_];

  *(v7 + 56) = v30;
  sub_25BDABD64(0, &qword_27FBDD280, 0x277CCAAD0);
  v31 = sub_25BDDFEC8();

  [v27 activateConstraints_];

  return [a1 didMoveToParentViewController_];
}

id sub_25BDBC87C()
{
  v2.receiver = v0;
  v2.super_class = _s21WrapperViewControllerCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25BDBC8C0()
{
  v1 = *v0;
  sub_25BDE0238();
  MEMORY[0x25F87BFE0](v1);
  return sub_25BDE0258();
}

uint64_t sub_25BDBC934()
{
  v1 = *v0;
  sub_25BDE0238();
  MEMORY[0x25F87BFE0](v1);
  return sub_25BDE0258();
}

unint64_t sub_25BDBC98C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_25BDE0238();
  MEMORY[0x25F87BFE0](a1);
  v4 = sub_25BDE0258();

  return sub_25BDBC9F8(a1, v4);
}

unint64_t sub_25BDBC9F8(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *sub_25BDBCA64(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD608, "Jl");
  v3 = sub_25BDE0198();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_25BDBC98C(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_25BDBC98C(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25BDBCB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = a3;
  v38 = a1;
  v39 = a2;
  v7 = sub_25BDDFDC8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25BDDFDE8();
  v40 = *(v12 - 8);
  v41 = v12;
  v13 = *(v40 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for NDOSignpost();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v37 - v21;
  if ([objc_opt_self() isSignedIntoAppleAccount])
  {
    v23 = a5;
    v24 = 0x6E776F6E6B6E55;
    sub_25BDA23D4(1u, v22);
    v25 = sub_25BDBCA64(qword_286D704F8);
    sub_25BDBD124(&qword_286D704F8[4]);
    if (v25[2])
    {
      v26 = v42;
      v27 = sub_25BDBC98C(v42);
      if (v28)
      {
        v29 = (v25[7] + 16 * v27);
        v24 = *v29;
        v30 = v29[1];
      }

      else
      {
        v30 = 0xE700000000000000;
      }
    }

    else
    {
      v30 = 0xE700000000000000;
      v26 = v42;
    }

    sub_25BDAB79C(v22, v20);
    v35 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = a4;
    *(v36 + 24) = v23;
    sub_25BDAB800(v20, v36 + v35);

    sub_25BDA2664(v38, v39, v24, v30, sub_25BDBD18C, v36);

    if (v26 < 0)
    {
      __break(1u);
    }

    else
    {
      sub_25BDC07B4(v26, 1);
      return sub_25BDAB92C(v22);
    }
  }

  else
  {
    sub_25BDABD64(0, &qword_27FBDD170, 0x277D85C78);
    v31 = sub_25BDE0018();
    v32 = swift_allocObject();
    *(v32 + 16) = a4;
    *(v32 + 24) = a5;
    aBlock[4] = sub_25BDBD058;
    aBlock[5] = v32;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25BDA2E38;
    aBlock[3] = &block_descriptor_2;
    v33 = _Block_copy(aBlock);

    sub_25BDDFDD8();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_25BDBD388(&qword_27FBDD178, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD180, "\\b");
    sub_25BDA7F8C();
    sub_25BDE00C8();
    MEMORY[0x25F87BDC0](0, v15, v11, v33);
    _Block_release(v33);

    (*(v8 + 8))(v11, v7);
    return (*(v40 + 8))(v15, v41);
  }

  return result;
}

void sub_25BDBD058()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  type metadata accessor for NDOErrors();
  sub_25BDBD388(&qword_27FBDD168, type metadata accessor for NDOErrors);
  v3 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  v2(0, v3);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25BDBD124(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD600, "Hl");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_25BDBD18C(void *a1)
{
  v3 = *(*(type metadata accessor for NDOSignpost() - 8) + 80);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  if (a1)
  {
    v6 = _s21WrapperViewControllerCMa();
    v7 = objc_allocWithZone(v6);
    *&v7[OBJC_IVAR____TtCE19NewDeviceOutreachUICSo26NDODeviceCoverageDetailsUIP33_7AEC11C85262A7495351F90F23CAE37121WrapperViewController_childViewController] = a1;
    v11.receiver = v7;
    v11.super_class = v6;
    v8 = a1;
    v9 = objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, 0, 0);
    v5(v9, 0);
  }

  else
  {
    type metadata accessor for NDOErrors();
    sub_25BDBD388(&qword_27FBDD168, type metadata accessor for NDOErrors);
    v10 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v5(0, v10);
  }

  sub_25BDB4990();
}

void type metadata accessor for NDODeviceCoverageDetailsFlowSource()
{
  if (!qword_27FBDD610)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27FBDD610);
    }
  }
}

uint64_t sub_25BDBD388(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25BDBD4D0()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

id sub_25BDBD570(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];

  v6 = sub_25BDDFE38();

  return v6;
}

uint64_t sub_25BDBD5D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_25BDDFE48();
  v7 = (a1 + *a4);
  v8 = v7[1];
  *v7 = v6;
  v7[1] = v9;
}

id sub_25BDBD728(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + *a3);

  v4 = sub_25BDDFDF8();

  return v4;
}

uint64_t sub_25BDBD798(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_25BDDFE08();
  v7 = *(a1 + *a4);
  *(a1 + *a4) = v6;
}

uint64_t NDOAppleCareViewController.supportedInterfaceOrientations.getter()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

id sub_25BDBD8CC(void *a1)
{
  v2 = sub_25BDBFBA8(a1);

  return v2;
}

id sub_25BDBD934(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_25BDDFE38();

  if (a6)
  {
    v10 = sub_25BDDFE38();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDeviceInfo:a1 presentationType:a2 source:v9 deeplinkParams:v10];

  return v11;
}

id sub_25BDBD9F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_25BDBFE20(a1, a3, a4);

  return v5;
}

id sub_25BDBDAC4(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithWarranty_];

  return v2;
}

void sub_25BDBDB0C()
{
  swift_unknownObjectWeakInit();
  v1 = (v0 + OBJC_IVAR___NDOAppleCareViewController_source);
  *v1 = 0x4174726F70707553;
  v1[1] = 0xEA00000000007070;
  v2 = (v0 + OBJC_IVAR___NDOAppleCareViewController_urlString);
  *v2 = 0;
  v2[1] = 0;
  sub_25BDE0158();
  __break(1u);
}

id sub_25BDBDC70(void *a1, uint64_t a2, SEL *a3)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) *a3];

  return v4;
}

void sub_25BDBDCC8()
{
  swift_unknownObjectWeakInit();
  v1 = (v0 + OBJC_IVAR___NDOAppleCareViewController_source);
  *v1 = 0x4174726F70707553;
  v1[1] = 0xEA00000000007070;
  v2 = (v0 + OBJC_IVAR___NDOAppleCareViewController_urlString);
  *v2 = 0;
  v2[1] = 0;
  sub_25BDE0158();
  __break(1u);
}

id sub_25BDBDE20(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v6 = sub_25BDDFE38();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithWarranty:a1 presentationType:a2 serialNumber:v6];

  return v7;
}

void sub_25BDBDEB4()
{
  swift_unknownObjectWeakInit();
  v1 = (v0 + OBJC_IVAR___NDOAppleCareViewController_source);
  *v1 = 0x4174726F70707553;
  v1[1] = 0xEA00000000007070;
  v2 = (v0 + OBJC_IVAR___NDOAppleCareViewController_urlString);
  *v2 = 0;
  v2[1] = 0;
  sub_25BDE0158();
  __break(1u);
}

id NDOAppleCareViewController.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

void NDOAppleCareViewController.init(coder:)()
{
  swift_unknownObjectWeakInit();
  v1 = (v0 + OBJC_IVAR___NDOAppleCareViewController_source);
  *v1 = 0x4174726F70707553;
  v1[1] = 0xEA00000000007070;
  v2 = (v0 + OBJC_IVAR___NDOAppleCareViewController_urlString);
  *v2 = 0;
  v2[1] = 0;
  sub_25BDE0158();
  __break(1u);
}

Swift::Void __swiftcall NDOAppleCareViewController.loadView()()
{
  v4.super_class = NDOAppleCareViewController;
  objc_msgSendSuper2(&v4, sel_loadView);
  v1 = [v0 navigationItem];
  sub_25BDABD64(0, &qword_27FBDD358, 0x277D751E0);
  sub_25BDABD64(0, &qword_27FBDD360, 0x277D750C8);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_25BDE0058();
  v3 = sub_25BDDFFF8();
  [v1 setRightBarButtonItem_];
}

void sub_25BDBE2EC()
{
  v0 = sub_25BDDF668();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25BDB7ADC();
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_25BDDF648();
  v7 = sub_25BDDFFE8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_25BD8D000, v6, v7, "Cancel button tapped", v8, 2u);
    MEMORY[0x25F87C8F0](v8, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  sub_25BDBF24C(0);
}

Swift::Void __swiftcall NDOAppleCareViewController.viewDidLoad()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBDD9A0, &unk_25BDE2670);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v13[-1] - v3;
  v5 = sub_25BDDF408();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.receiver = v0;
  v14.super_class = NDOAppleCareViewController;
  objc_msgSendSuper2(&v14, sel_viewDidLoad);
  v13[3] = sub_25BDDFB58();
  v13[4] = MEMORY[0x277D74D18];
  __swift_allocate_boxed_opaque_existential_1(v13);
  sub_25BDDFB48();
  sub_25BDE0008();
  v10 = [v0 urlString];
  if (!v10)
  {
    goto LABEL_4;
  }

  v11 = v10;
  sub_25BDDFE48();

  sub_25BDDF3F8();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_25BDA8554(v4, &unk_27FBDD9A0, &unk_25BDE2670);
LABEL_4:
    sub_25BDBEDA0();
    return;
  }

  (*(v6 + 32))(v9, v4, v5);
  sub_25BDBE6B4(v9);
  (*(v6 + 8))(v9, v5);
}

void sub_25BDBE6B4(uint64_t a1)
{
  v2 = v1;
  v57 = a1;
  v3 = sub_25BDDF408();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = [objc_allocWithZone(MEMORY[0x277D2D0C0]) init];
  v7 = [v1 presentingViewController];
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v9 = sub_25BDA25C8(v6, v7, sub_25BDC0120, v8);

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v4 + 16))(&v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v57, v3);
  v11 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  (*(v4 + 32))(v12 + v11, &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  *(v12 + ((v5 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
  v13 = objc_allocWithZone(NDOAMSUILoadingViewController);
  v60 = sub_25BDC019C;
  v61 = v12;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v59 = sub_25BDA6394;
  *(&v59 + 1) = &block_descriptor_3;
  v14 = _Block_copy(&aBlock);

  swift_unknownObjectRetain();
  v15 = [v13 initWithCreateAMSViewController_];
  _Block_release(v14);

  v57 = v9;
  [v15 setPresenter_];
  v16 = [v15 view];
  if (!v16)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v16;
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];

  [v2 addChildViewController_];
  v18 = [v2 view];
  if (!v18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v19 = v18;
  v20 = [v15 view];
  if (!v20)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v20;
  [v19 addSubview_];

  v60 = 0;
  aBlock = 0u;
  v59 = 0u;
  v22 = v2;
  sub_25BDE0008();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD430, &unk_25BDE2490);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_25BDE2440;
  v24 = [v15 view];
  if (!v24)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v25 = v24;
  v26 = [v24 topAnchor];

  v27 = [v2 view];
  if (!v27)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v28 = v27;
  v29 = [v27 topAnchor];

  v30 = [v26 constraintEqualToAnchor_];
  *(v23 + 32) = v30;
  v31 = [v15 view];
  if (!v31)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v32 = v31;
  v33 = [v31 bottomAnchor];

  v34 = [v2 view];
  if (!v34)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v35 = v34;
  v36 = [v34 bottomAnchor];

  v37 = [v33 constraintEqualToAnchor_];
  *(v23 + 40) = v37;
  v38 = [v15 view];
  if (!v38)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v39 = v38;
  v40 = [v38 leadingAnchor];

  v41 = [v2 view];
  if (!v41)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v42 = v41;
  v43 = [v41 safeAreaLayoutGuide];

  v44 = [v43 leadingAnchor];
  v45 = [v40 constraintEqualToAnchor_];

  *(v23 + 48) = v45;
  v46 = [v15 view];
  if (!v46)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v47 = v46;
  v48 = [v46 trailingAnchor];

  v49 = [v2 view];
  if (v49)
  {
    v50 = v49;
    v51 = objc_opt_self();
    v52 = [v50 safeAreaLayoutGuide];

    v53 = [v52 trailingAnchor];
    v54 = [v48 constraintEqualToAnchor_];

    *(v23 + 56) = v54;
    sub_25BDABD64(0, &qword_27FBDD280, 0x277CCAAD0);
    v55 = sub_25BDDFEC8();

    [v51 activateConstraints_];

    [v15 didMoveToParentViewController_];
    swift_unknownObjectRelease();

    return;
  }

LABEL_23:
  __break(1u);
}

void sub_25BDBEDA0()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D2D0C0]) init];
  v2 = [v0 serialNumber];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5[4] = sub_25BDC0744;
  v5[5] = v3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_25BDB688C;
  v5[3] = &block_descriptor_15;
  v4 = _Block_copy(v5);

  [v1 getDeviceInfoForSerialNumber:v2 usingPolicy:0 withReply:v4];
  _Block_release(v4);
}

Swift::Void __swiftcall NDOAppleCareViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  objc_msgSendSuper2(&v10, sel_viewWillAppear_, a1);
  v2 = [v1 view];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() systemBackgroundColor];
    [v3 setBackgroundColor_];

    v5 = [objc_allocWithZone(MEMORY[0x277D75788]) init];
    [v5 configureWithTransparentBackground];
    v6 = [v1 navigationItem];
    v7 = v5;
    [v6 setScrollEdgeAppearance_];

    v8 = [v1 navigationItem];
    [v8 setStandardAppearance_];

    v9 = [v1 navigationItem];
    [v9 setCompactAppearance_];
  }

  else
  {
    __break(1u);
  }
}

id NDOAppleCareViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_25BDDFE38();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:a3];

  return v5;
}

void sub_25BDBF24C(uint64_t a1)
{
  v2 = v1;
  v4 = [v1 presentor];
  if (v4)
  {
    v5 = v4;
    if ([v4 respondsToSelector_])
    {
      if ([v5 respondsToSelector_])
      {
        [v5 outreachFinishedWithCompletion_];
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v6 = [v2 serialNumber];
      [v5 outreachFinishedForDeviceWithSerialNumber:v6 withCompletion:a1];
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_25BDBF378(void *a1)
{
  v2 = sub_25BDDFDC8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25BDDFDE8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    sub_25BDABD64(0, &qword_27FBDD170, 0x277D85C78);
    v14 = sub_25BDE0018();
    v20 = v7;
    v15 = v14;
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    *(v16 + 24) = v13;
    aBlock[4] = sub_25BDC074C;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25BDA2E38;
    aBlock[3] = &block_descriptor_21;
    v17 = _Block_copy(aBlock);
    v18 = a1;
    v19 = v13;

    sub_25BDDFDD8();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_25BDAC8B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD180, "\\b");
    sub_25BDA7F8C();
    sub_25BDE00C8();
    MEMORY[0x25F87BDC0](0, v11, v6, v17);
    _Block_release(v17);

    (*(v3 + 8))(v6, v2);
    return (*(v8 + 8))(v11, v20);
  }

  return result;
}

uint64_t sub_25BDBF644(void *a1, void *a2)
{
  v4 = sub_25BDDF668();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBDD9A0, &unk_25BDE2670);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v40 - v11;
  v13 = sub_25BDDF408();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
LABEL_8:
    v26 = sub_25BDB7ADC();
    (*(v5 + 16))(v8, v26, v4);
    v27 = sub_25BDDF648();
    v28 = sub_25BDDFFC8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_25BD8D000, v27, v28, "Fetched device info is missing fields, unable to load purchase flow, displaying error state", v29, 2u);
      MEMORY[0x25F87C8F0](v29, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v43[3] = sub_25BDDFB58();
    v43[4] = MEMORY[0x277D74D18];
    __swift_allocate_boxed_opaque_existential_1(v43);

    sub_25BDC4414(sub_25BDC0754, v30);

    return sub_25BDE0008();
  }

  v18 = a1;
  v19 = [v18 warranty];
  if (!v19)
  {

    goto LABEL_8;
  }

  v20 = v19;
  v42 = v17;
  v21 = [v19 agsURL];
  if (!v21)
  {

    goto LABEL_8;
  }

  v22 = v21;
  v41 = a2;
  sub_25BDDFE48();
  sub_25BDDF3F8();

  v23 = v14;
  v24 = *(v14 + 48);
  v25 = v13;
  if (v24(v12, 1, v13) == 1)
  {

    sub_25BDA8554(v12, &unk_27FBDD9A0, &unk_25BDE2670);
    goto LABEL_8;
  }

  (*(v23 + 32))(v42, v12, v13);
  v32 = v41;
  [v41 setUrlString_];

  v33 = [v20 additionalPurchaseFlowHeaders];
  if (v33)
  {
    v34 = v33;
    sub_25BDDFE08();
  }

  else
  {
    sub_25BDA6C28(MEMORY[0x277D84F90]);
  }

  v35 = sub_25BDDFDF8();

  [v32 setAdditionalHeaders_];

  v36 = [v20 additionalPurchaseFlowData];
  v37 = v42;
  if (v36)
  {
    v38 = v36;
    sub_25BDDFE08();
  }

  else
  {
    sub_25BDA6C28(MEMORY[0x277D84F90]);
  }

  v39 = sub_25BDDFDF8();

  [v32 setAdditionalBody_];

  sub_25BDBE6B4(v37);
  return (*(v23 + 8))(v37, v25);
}

uint64_t sub_25BDBFB60@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
}

id sub_25BDBFBA8(void *a1)
{
  swift_unknownObjectWeakInit();
  v3 = &v1[OBJC_IVAR___NDOAppleCareViewController_source];
  *v3 = 0x4174726F70707553;
  *(v3 + 1) = 0xEA00000000007070;
  v4 = &v1[OBJC_IVAR___NDOAppleCareViewController_urlString];
  *v4 = 0;
  v4[1] = 0;
  v5 = [a1 device];
  v6 = [v5 serialNumber];

  v7 = sub_25BDDFE48();
  v9 = v8;

  v10 = &v1[OBJC_IVAR___NDOAppleCareViewController_serialNumber];
  *v10 = v7;
  v10[1] = v9;
  v11 = [a1 warranty];
  if (v11 && (v12 = v11, v13 = [v11 agsURL], v12, v13))
  {
    v14 = sub_25BDDFE48();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = v4[1];
  *v4 = v14;
  v4[1] = v16;

  v18 = [a1 warranty];
  if (v18 && (v19 = v18, v20 = [v18 additionalPurchaseFlowHeaders], v19, v20))
  {
    v21 = sub_25BDDFE08();
  }

  else
  {
    v21 = sub_25BDA6C28(MEMORY[0x277D84F90]);
  }

  *&v1[OBJC_IVAR___NDOAppleCareViewController_additionalHeaders] = v21;
  v22 = [a1 warranty];
  if (v22 && (v23 = v22, v24 = [v22 additionalPurchaseFlowData], v23, v24))
  {
    v25 = sub_25BDDFE08();
  }

  else
  {
    v25 = sub_25BDA6C28(MEMORY[0x277D84F90]);
  }

  *&v1[OBJC_IVAR___NDOAppleCareViewController_additionalBody] = v25;
  v27.receiver = v1;
  v27.super_class = NDOAppleCareViewController;
  return objc_msgSendSuper2(&v27, sel_initWithNibName_bundle_, 0, 0);
}

id sub_25BDBFE20(void *a1, uint64_t a2, uint64_t a3)
{

  swift_unknownObjectWeakInit();
  v7 = &v3[OBJC_IVAR___NDOAppleCareViewController_source];
  *v7 = 0x4174726F70707553;
  *(v7 + 1) = 0xEA00000000007070;
  v8 = &v3[OBJC_IVAR___NDOAppleCareViewController_urlString];
  *v8 = 0;
  v8[1] = 0;
  v9 = [a1 device];
  v10 = [v9 serialNumber];

  v11 = sub_25BDDFE48();
  v13 = v12;

  v14 = &v3[OBJC_IVAR___NDOAppleCareViewController_serialNumber];
  *v14 = v11;
  v14[1] = v13;
  v15 = [a1 warranty];
  if (v15 && (v16 = v15, v17 = [v15 agsURL], v16, v17))
  {
    v18 = sub_25BDDFE48();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v21 = v8[1];
  *v8 = v18;
  v8[1] = v20;

  v22 = [a1 warranty];
  if (v22 && (v23 = v22, v24 = [v22 additionalPurchaseFlowHeaders], v23, v24))
  {
    v25 = sub_25BDDFE08();
  }

  else
  {
    v25 = sub_25BDA6C28(MEMORY[0x277D84F90]);
  }

  *&v3[OBJC_IVAR___NDOAppleCareViewController_additionalHeaders] = v25;
  v26 = [a1 warranty];
  if (v26 && (v27 = v26, v28 = [v26 additionalPurchaseFlowData], v27, v28))
  {
    v29 = sub_25BDDFE08();
  }

  else
  {
    v29 = sub_25BDA6C28(MEMORY[0x277D84F90]);
  }

  *&v3[OBJC_IVAR___NDOAppleCareViewController_additionalBody] = v29;
  v30 = *(v7 + 1);
  *v7 = a2;
  *(v7 + 1) = a3;

  v32.receiver = v3;
  v32.super_class = NDOAppleCareViewController;
  return objc_msgSendSuper2(&v32, sel_initWithNibName_bundle_, 0, 0);
}

void sub_25BDC00BC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_25BDBE2EC();
  }
}

void sub_25BDC0120(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_25BDBF24C(2 * (a2 != 0));
  }

  if (a2)
  {
    a2();
  }
}

void sub_25BDC019C(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_25BDDF408() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v26 = v8;
    v27 = v6;
    v11 = [Strong additionalHeaders];
    v12 = sub_25BDDFE08();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD070, &qword_25BDE2210);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25BDE21F0;
    strcpy((inited + 32), "X-source-type");
    *(inited + 46) = -4864;
    v14 = [v10 source];
    v15 = sub_25BDDFE48();
    v17 = v16;

    *(inited + 48) = v15;
    *(inited + 56) = v17;
    v18 = sub_25BDA6C28(inited);
    swift_setDeallocating();
    sub_25BDA8554(inited + 32, &qword_27FBDD078, qword_25BDE2218);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v12;
    sub_25BDC049C(v18, sub_25BDBFB60, 0, isUniquelyReferenced_nonNull_native, &v28);

    v20 = v28;
    v21 = [v10 additionalBody];
    v22 = sub_25BDDFE08();

    v23 = swift_allocObject();
    *(v23 + 16) = a1;
    *(v23 + 24) = a2;

    v24 = sub_25BDA4DBC();
    v25 = sub_25BDA4DF4();
    sub_25BDA4E34(v24, v2 + v27, v20, v22, v25, v26, sub_25BDA83B4, v23);
    swift_unknownObjectRelease();
  }
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25BDC049C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v56 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v45 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v46 = v10;
  v47 = v6;
  while (v9)
  {
    v50 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 10) | (16 * __clz(__rbit64(v9)));
    v17 = (*(a1 + 48) + v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = (*(a1 + 56) + v16);
    v21 = *v20;
    v22 = v20[1];
    v55[0] = v18;
    v55[1] = v19;
    v55[2] = v21;
    v55[3] = v22;

    a2(&v51, v55);

    v23 = v51;
    v24 = v52;
    v25 = v53;
    v26 = v54;
    v27 = *v56;
    v29 = sub_25BDA69EC(v51, v52);
    v30 = *(v27 + 16);
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_25;
    }

    v33 = v28;
    if (*(v27 + 24) >= v32)
    {
      if ((v50 & 1) == 0)
      {
        sub_25BDAB988();
      }
    }

    else
    {
      v34 = v56;
      sub_25BDAAFC0(v32, v50 & 1);
      v35 = *v34;
      v36 = sub_25BDA69EC(v23, v24);
      if ((v33 & 1) != (v37 & 1))
      {
        goto LABEL_27;
      }

      v29 = v36;
    }

    v9 &= v9 - 1;
    v38 = *v56;
    if (v33)
    {

      v12 = (v38[7] + 16 * v29);
      v13 = v12[1];
      *v12 = v25;
      v12[1] = v26;
    }

    else
    {
      v38[(v29 >> 6) + 8] |= 1 << v29;
      v39 = (v38[6] + 16 * v29);
      *v39 = v23;
      v39[1] = v24;
      v40 = (v38[7] + 16 * v29);
      *v40 = v25;
      v40[1] = v26;
      v41 = v38[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_26;
      }

      v38[2] = v43;
    }

    a4 = 1;
    v11 = v14;
    v10 = v46;
    v6 = v47;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_25BDC073C();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v50 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_25BDE01E8();
  __break(1u);
  return result;
}

void sub_25BDC0754()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_25BDBEDA0();
  }
}

uint64_t sub_25BDC07B4(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD2A8, &qword_25BDE25A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  sub_25BDDFF68();
  v8 = sub_25BDDFF88();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  sub_25BDAFA6C(0, 0, v7, &unk_25BDE2CB0, v9);
}

uint64_t sub_25BDC08C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 96) = a5;
  *(v5 + 64) = a4;
  v6 = sub_25BDDF668();
  *(v5 + 72) = v6;
  v7 = *(v6 - 8);
  *(v5 + 80) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25BDC0988, 0, 0);
}

uint64_t sub_25BDC0988()
{
  v34 = v0;
  if (qword_27FBDE1B8 != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = __swift_project_value_buffer(v3, qword_27FBDE1C0);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_25BDDF648();
  v6 = sub_25BDDFFB8();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[9];
  if (v7)
  {
    v11 = v0[8];
    v12 = *(v0 + 96);
    v32 = v0[9];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v33 = v14;
    *v13 = 136315394;
    v15 = sub_25BDB5E1C(v11, v12);
    v31 = v8;
    v17 = sub_25BDA6444(v15, v16, &v33);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    sub_25BDB5ECC(v11, v12);
    sub_25BDC0F78();
    v18 = sub_25BDDFE18();
    v20 = v19;

    v21 = sub_25BDA6444(v18, v20, &v33);

    *(v13 + 14) = v21;
    _os_log_impl(&dword_25BD8D000, v5, v6, "Sending analytic event: %s with payload %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F87C8F0](v14, -1, -1);
    MEMORY[0x25F87C8F0](v13, -1, -1);

    (*(v9 + 8))(v31, v32);
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  v22 = v0[11];
  v23 = v0[8];
  v24 = *(v0 + 96);
  sub_25BDB5E1C(v23, v24);
  v25 = sub_25BDDFE38();

  v26 = swift_allocObject();
  *(v26 + 16) = v23;
  *(v26 + 24) = v24;
  v0[6] = sub_25BDC0F54;
  v0[7] = v26;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_25BDC0D58;
  v0[5] = &block_descriptor_4;
  v27 = _Block_copy(v0 + 2);
  v28 = v0[7];

  AnalyticsSendEventLazy();
  _Block_release(v27);

  v29 = v0[1];

  return v29();
}

uint64_t sub_25BDC0CBC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25BDAFE88;

  return sub_25BDC08C4(v4, v5, v6, v2, v3);
}

id sub_25BDC0D58(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_25BDC0F78();
    v5 = sub_25BDDFDF8();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_25BDC0DF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD2A8, &qword_25BDE25A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BDC0E64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD2A8, &qword_25BDE25A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25BDC0ECC()
{
  v0 = sub_25BDDF668();
  __swift_allocate_value_buffer(v0, qword_27FBDE1C0);
  __swift_project_value_buffer(v0, qword_27FBDE1C0);
  v1 = sub_25BDB7AD0();
  v2 = *v1;
  v3 = v1[1];

  return sub_25BDDF658();
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_25BDC0F78()
{
  result = qword_27FBDD650;
  if (!qword_27FBDD650)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FBDD650);
  }

  return result;
}

uint64_t sub_25BDC0FC4@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD658, &unk_25BDE2D40);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_25BDC1048()
{
  type metadata accessor for CoverageCentralViewModel();
  sub_25BDC41C0(&qword_27FBDD438, type metadata accessor for CoverageCentralViewModel);

  return sub_25BDDFD88();
}

uint64_t sub_25BDC10D4()
{
  v0 = *(type metadata accessor for CoverageCentralMainView() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD440, &qword_25BDE2980);
  sub_25BDDFD58();
  return v2;
}

uint64_t type metadata accessor for CoverageCentralMainView()
{
  result = qword_27FBDE270;
  if (!qword_27FBDE270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25BDC1174()
{
  v0 = *(type metadata accessor for CoverageCentralMainView() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD440, &qword_25BDE2980);
  return sub_25BDDFD68();
}

void (*sub_25BDC11CC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for CoverageCentralMainView() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD440, &qword_25BDE2980);
  *(v3 + 32) = sub_25BDDFD48();
  return sub_25BDB7E44;
}

uint64_t sub_25BDC1268()
{
  v0 = *(type metadata accessor for CoverageCentralMainView() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD440, &qword_25BDE2980);
  return sub_25BDDFD78();
}

uint64_t sub_25BDC12BC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CoverageCentralMainView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_25BDC13DC(v1, a1);
  sub_25BDC32B8(v1, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_25BDC331C(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD660, qword_25BDE2D50);
  v9 = (a1 + *(result + 36));
  *v9 = sub_25BDC3380;
  v9[1] = v7;
  v9[2] = 0;
  v9[3] = 0;
  return result;
}

uint64_t sub_25BDC13DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v134 = a2;
  v108 = sub_25BDDF668();
  v107 = *(v108 - 8);
  v3 = *(v107 + 64);
  MEMORY[0x28223BE20](v108);
  v106 = &v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD6F0, &qword_25BDE2E30);
  v5 = *(*(v113 - 8) + 64);
  MEMORY[0x28223BE20](v113);
  v114 = &v101 - v6;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD6E0, &unk_25BDE2E20);
  v7 = *(*(v137 - 8) + 64);
  MEMORY[0x28223BE20](v137);
  v116 = &v101 - v8;
  v115 = sub_25BDDF798();
  v112 = *(v115 - 8);
  v9 = *(v112 + 64);
  MEMORY[0x28223BE20](v115);
  v111 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_25BDDF9A8();
  v110 = *(v122 - 8);
  v11 = *(v110 + 64);
  v12 = MEMORY[0x28223BE20](v122);
  v109 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v119 = &v101 - v14;
  v15 = type metadata accessor for CoverageCentralMainView();
  v16 = v15 - 8;
  v131 = *(v15 - 8);
  v17 = *(v131 + 64);
  MEMORY[0x28223BE20](v15);
  v132 = v18;
  v133 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD6B8, &qword_25BDE2E10);
  v19 = *(*(v127 - 8) + 64);
  MEMORY[0x28223BE20](v127);
  v21 = &v101 - v20;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD6B0, &qword_25BDE2E08);
  v118 = *(v129 - 8);
  v22 = *(v118 + 64);
  MEMORY[0x28223BE20](v129);
  v117 = &v101 - v23;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD6F8, &qword_25BDE2E38);
  v121 = *(v130 - 8);
  v24 = *(v121 + 8);
  MEMORY[0x28223BE20](v130);
  v120 = &v101 - v25;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD700, &qword_25BDE2E40);
  v26 = *(*(v135 - 8) + 64);
  MEMORY[0x28223BE20](v135);
  v28 = &v101 - v27;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD708, &unk_25BDE2E48);
  v29 = *(*(v124 - 8) + 64);
  MEMORY[0x28223BE20](v124);
  v125 = &v101 - v30;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD6A8, &qword_25BDE2DF8);
  v31 = *(*(v136 - 8) + 64);
  MEMORY[0x28223BE20](v136);
  v128 = &v101 - v32;
  v123 = sub_25BDDFC38();
  v103 = *(v123 - 8);
  v33 = *(v103 + 64);
  MEMORY[0x28223BE20](v123);
  v35 = &v101 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD5B0, &qword_25BDE2E00);
  v102 = *(v36 - 8);
  v37 = *(v102 + 64);
  MEMORY[0x28223BE20](v36);
  v39 = &v101 - v38;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD5B8, &unk_25BDE2B10);
  v105 = *(v126 - 8);
  v40 = *(v105 + 64);
  MEMORY[0x28223BE20](v126);
  v104 = &v101 - v41;
  v42 = sub_25BDDF6F8();
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  v46 = (&v101 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = *(v16 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD440, &qword_25BDE2980);
  v48 = sub_25BDDFD58();
  (*(*v138 + 192))(v48);

  v49 = (*(v43 + 88))(v46, v42);
  if (v49 == *MEMORY[0x277D2B668])
  {
    v50 = (*(v43 + 96))(v46, v42);
    v51 = *v46;
    MEMORY[0x28223BE20](v50);
    *(&v101 - 2) = v51;
    *(&v101 - 1) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD710, &qword_25BDE2E58);
    sub_25BDC3E64();
    sub_25BDDFC78();

    LOBYTE(v51) = sub_25BDDFC58();
    sub_25BDDFB68();
    v52 = v127;
    v53 = &v21[*(v127 + 36)];
    *v53 = v51;
    *(v53 + 1) = v54;
    *(v53 + 2) = v55;
    *(v53 + 3) = v56;
    *(v53 + 4) = v57;
    v53[40] = 0;
    v58 = sub_25BDC3A5C();
    v59 = v117;
    sub_25BDDFCA8();
    sub_25BDA8554(v21, &qword_27FBDD6B8, &qword_25BDE2E10);
    v60 = v133;
    sub_25BDC32B8(a1, v133);
    v61 = (*(v131 + 80) + 16) & ~*(v131 + 80);
    v62 = swift_allocObject();
    sub_25BDC331C(v60, v62 + v61);
    v138 = v52;
    v139 = v58;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v64 = v120;
    v65 = v129;
    sub_25BDDFCE8();

    (*(v118 + 8))(v59, v65);
    v66 = v121;
    v67 = v130;
    (*(v121 + 2))(v125, v64, v130);
    swift_storeEnumTagMultiPayload();
    v68 = sub_25BDBC1A0(&qword_27FBDD5D8, &qword_27FBDD5B0, &qword_25BDE2E00);
    v69 = sub_25BDC41C0(&qword_27FBDD5E0, MEMORY[0x277CDE330]);
    v138 = v36;
    v139 = v123;
    v140 = v68;
    v141 = v69;
    swift_getOpaqueTypeConformance2();
    v138 = v65;
    v139 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v70 = v128;
    sub_25BDDFC18();
    sub_25BD90814(v70, v28);
    swift_storeEnumTagMultiPayload();
    sub_25BDC3898();
    sub_25BDC3B14();
    sub_25BDDFC18();
    sub_25BD90884(v70);
    return (*(v66 + 8))(v64, v67);
  }

  else
  {
    v120 = v36;
    v72 = v131;
    v73 = v133;
    v121 = v28;
    if (v49 == *MEMORY[0x277D2B660])
    {
      (*(v43 + 96))(v46, v42);
      v74 = v110;
      v75 = v119;
      v76 = v122;
      (*(v110 + 32))(v119, v46, v122);
      (*(v74 + 16))(v109, v75, v76);
      sub_25BDC32B8(a1, v73);
      v77 = (*(v72 + 80) + 16) & ~*(v72 + 80);
      v78 = swift_allocObject();
      sub_25BDC331C(v73, v78 + v77);
      v79 = v111;
      sub_25BDDF788();
      v80 = v112;
      v81 = v115;
      (*(v112 + 16))(v114, v79, v115);
      swift_storeEnumTagMultiPayload();
      sub_25BDC41C0(&qword_27FBDD6E8, MEMORY[0x277D2B6A8]);
      v82 = v116;
      sub_25BDDFC18();
      sub_25BDA84EC(v82, v121, &qword_27FBDD6E0, &unk_25BDE2E20);
      swift_storeEnumTagMultiPayload();
      sub_25BDC3898();
      sub_25BDC3B14();
      sub_25BDDFC18();
      sub_25BDA8554(v82, &qword_27FBDD6E0, &unk_25BDE2E20);
      (*(v80 + 8))(v79, v81);
      return (*(v74 + 8))(v119, v122);
    }

    else if (v49 == *MEMORY[0x277D2B670])
    {
      sub_25BDDFB78();
      sub_25BDDFC28();
      v83 = sub_25BDBC1A0(&qword_27FBDD5D8, &qword_27FBDD5B0, &qword_25BDE2E00);
      v84 = sub_25BDC41C0(&qword_27FBDD5E0, MEMORY[0x277CDE330]);
      v85 = v104;
      v86 = v120;
      v87 = v123;
      sub_25BDDFCD8();
      (*(v103 + 8))(v35, v87);
      (*(v102 + 8))(v39, v86);
      v88 = v105;
      v89 = v126;
      (*(v105 + 16))(v125, v85, v126);
      swift_storeEnumTagMultiPayload();
      v138 = v86;
      v139 = v87;
      v140 = v83;
      v141 = v84;
      swift_getOpaqueTypeConformance2();
      v90 = sub_25BDC3A5C();
      v138 = v127;
      v139 = v90;
      v91 = swift_getOpaqueTypeConformance2();
      v138 = v129;
      v139 = v91;
      swift_getOpaqueTypeConformance2();
      v92 = v128;
      sub_25BDDFC18();
      sub_25BD90814(v92, v121);
      swift_storeEnumTagMultiPayload();
      sub_25BDC3898();
      sub_25BDC3B14();
      sub_25BDDFC18();
      sub_25BD90884(v92);
      return (*(v88 + 8))(v85, v89);
    }

    else
    {
      v93 = sub_25BDB7ADC();
      v94 = v107;
      v95 = v106;
      v96 = v108;
      (*(v107 + 16))(v106, v93, v108);
      v97 = sub_25BDDF648();
      v98 = sub_25BDDFFC8();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        *v99 = 0;
        _os_log_impl(&dword_25BD8D000, v97, v98, "Should not hit unknown default case", v99, 2u);
        MEMORY[0x25F87C8F0](v99, -1, -1);
      }

      (*(v94 + 8))(v95, v96);
      swift_storeEnumTagMultiPayload();
      sub_25BDC41C0(&qword_27FBDD6E8, MEMORY[0x277D2B6A8]);
      v100 = v116;
      sub_25BDDFC18();
      sub_25BDA84EC(v100, v121, &qword_27FBDD6E0, &unk_25BDE2E20);
      swift_storeEnumTagMultiPayload();
      sub_25BDC3898();
      sub_25BDC3B14();
      sub_25BDDFC18();
      sub_25BDA8554(v100, &qword_27FBDD6E0, &unk_25BDE2E20);
      return (*(v43 + 8))(v46, v42);
    }
  }
}

uint64_t sub_25BDC25C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoverageCentralMainView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v10[1] = a1;
  sub_25BDC32B8(a2, v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_25BDC331C(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD728, &unk_25BDE2E70);
  type metadata accessor for CoverageCentralSectionView();
  sub_25BDBC1A0(&qword_27FBDD730, &qword_27FBDD728, &unk_25BDE2E70);
  sub_25BDC41C0(&qword_27FBDD720, type metadata accessor for CoverageCentralSectionView);
  sub_25BDC41C0(&qword_27FBDD738, MEMORY[0x277D2B648]);
  return sub_25BDDFD28();
}

uint64_t sub_25BDC27C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25BDDF6E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(type metadata accessor for CoverageCentralMainView() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD440, &qword_25BDE2980);
  sub_25BDDFD58();
  (*(v5 + 16))(v8, a1, v4);
  return sub_25BDBB314(v8, a2);
}

uint64_t sub_25BDC28E0(uint64_t a1)
{
  v1[3] = a1;
  sub_25BDDFF48();
  v1[4] = sub_25BDDFF38();
  v3 = sub_25BDDFF28();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x2822009F8](sub_25BDC2978, v3, v2);
}

uint64_t sub_25BDC2978()
{
  v1 = v0[3];
  v2 = *(type metadata accessor for CoverageCentralMainView() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD440, &qword_25BDE2980);
  sub_25BDDFD58();
  v3 = v0[2];
  v0[7] = v3;
  v7 = (*v3 + 520);
  v8 = (*v7 + **v7);
  v4 = (*v7)[1];
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_25BDC2ADC;

  return v8();
}

uint64_t sub_25BDC2ADC()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v7 = *v0;

  v4 = *(v1 + 48);
  v5 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_25BDC2C20, v5, v4);
}

uint64_t sub_25BDC2C20()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25BDC2C80(uint64_t a1)
{
  v2 = type metadata accessor for CoverageCentralMainView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD2A8, &qword_25BDE25A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v10 = sub_25BDDFF88();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_25BDC32B8(a1, v5);
  sub_25BDDFF48();
  v11 = sub_25BDDFF38();
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v11;
  *(v13 + 24) = v14;
  sub_25BDC331C(v5, v13 + v12);
  sub_25BDAFA6C(0, 0, v9, &unk_25BDE2E88, v13);
}

uint64_t sub_25BDC2E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  sub_25BDDFF48();
  v4[4] = sub_25BDDFF38();
  v6 = sub_25BDDFF28();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](sub_25BDC2ED0, v6, v5);
}

uint64_t sub_25BDC2ED0()
{
  v1 = v0[3];
  v2 = *(type metadata accessor for CoverageCentralMainView() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD440, &qword_25BDE2980);
  sub_25BDDFD58();
  v3 = v0[2];
  v0[7] = v3;
  v7 = (*v3 + 512);
  v8 = (*v7 + **v7);
  v4 = (*v7)[1];
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_25BDC3034;

  return v8();
}

uint64_t sub_25BDC3034()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v7 = *v0;

  v4 = *(v1 + 48);
  v5 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_25BDC42D4, v5, v4);
}

uint64_t sub_25BDC3178()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD2A0, &qword_25BDE2548);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v8 - v2;
  v4 = *(type metadata accessor for CoverageCentralMainView() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD440, &qword_25BDE2980);
  sub_25BDDFD58();
  v5 = v8[1];
  sub_25BDC3BD0(v3);
  v6 = sub_25BDDF5D8();
  (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
  (*(*v5 + 392))(v3);
}

uint64_t sub_25BDC32B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoverageCentralMainView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BDC331C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoverageCentralMainView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BDC3398@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD658, &unk_25BDE2D40);
  swift_storeEnumTagMultiPayload();
  v1 = *(type metadata accessor for CoverageCentralMainView() + 20);
  type metadata accessor for CoverageCentralViewModel();
  sub_25BDC41C0(&qword_27FBDD438, type metadata accessor for CoverageCentralViewModel);
  return sub_25BDDFD88();
}

uint64_t sub_25BDC3474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_25BDC13DC(v2, a2);
  sub_25BDC32B8(v2, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_25BDC331C(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD660, qword_25BDE2D50);
  v9 = (a2 + *(result + 36));
  *v9 = sub_25BDC42D0;
  v9[1] = v7;
  v9[2] = 0;
  v9[3] = 0;
  return result;
}

void sub_25BDC35B4()
{
  sub_25BDC3698(319, &qword_27FBDD670, MEMORY[0x277D402D0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_25BDC3698(319, &qword_27FBDD588, type metadata accessor for CoverageCentralViewModel, MEMORY[0x277CE12F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25BDC3698(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_25BDC36FC()
{
  result = qword_27FBDD678;
  if (!qword_27FBDD678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD660, qword_25BDE2D50);
    sub_25BDC3788();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD678);
  }

  return result;
}

unint64_t sub_25BDC3788()
{
  result = qword_27FBDD680;
  if (!qword_27FBDD680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD688, &qword_25BDE2DE8);
    sub_25BDC380C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD680);
  }

  return result;
}

unint64_t sub_25BDC380C()
{
  result = qword_27FBDD690;
  if (!qword_27FBDD690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD698, &qword_25BDE2DF0);
    sub_25BDC3898();
    sub_25BDC3B14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD690);
  }

  return result;
}

unint64_t sub_25BDC3898()
{
  result = qword_27FBDD6A0;
  if (!qword_27FBDD6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD6A8, &qword_25BDE2DF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD5B0, &qword_25BDE2E00);
    sub_25BDDFC38();
    sub_25BDBC1A0(&qword_27FBDD5D8, &qword_27FBDD5B0, &qword_25BDE2E00);
    sub_25BDC41C0(&qword_27FBDD5E0, MEMORY[0x277CDE330]);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD6B0, &qword_25BDE2E08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD6B8, &qword_25BDE2E10);
    sub_25BDC3A5C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD6A0);
  }

  return result;
}

unint64_t sub_25BDC3A5C()
{
  result = qword_27FBDD6C0;
  if (!qword_27FBDD6C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD6B8, &qword_25BDE2E10);
    sub_25BDBC1A0(&qword_27FBDD6C8, &qword_27FBDD6D0, &qword_25BDE2E18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD6C0);
  }

  return result;
}

unint64_t sub_25BDC3B14()
{
  result = qword_27FBDD6D8;
  if (!qword_27FBDD6D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD6E0, &unk_25BDE2E20);
    sub_25BDC41C0(&qword_27FBDD6E8, MEMORY[0x277D2B6A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD6D8);
  }

  return result;
}

uint64_t sub_25BDC3BD0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_25BDDFBE8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD658, &unk_25BDE2D40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_25BDA84EC(v2, &v17 - v11, &qword_27FBDD658, &unk_25BDE2D40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_25BDDF5D8();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_25BDDFFD8();
    v16 = sub_25BDDFC48();
    sub_25BDDF608();

    sub_25BDDFBD8();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_25BDC3DE8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for CoverageCentralMainView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_25BDC3E64()
{
  result = qword_27FBDD718;
  if (!qword_27FBDD718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD710, &qword_25BDE2E58);
    sub_25BDC41C0(&qword_27FBDD720, type metadata accessor for CoverageCentralSectionView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD718);
  }

  return result;
}

uint64_t sub_25BDC3F18()
{
  v2 = *(type metadata accessor for CoverageCentralMainView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25BDAFE88;

  return sub_25BDC28E0(v0 + v3);
}

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for CoverageCentralMainView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD658, &unk_25BDE2D40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_25BDDF5D8();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v1 + 20);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD440, &qword_25BDE2980);
  (*(*(v9 - 8) + 8))(&v5[v8], v9);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25BDC4140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(type metadata accessor for CoverageCentralMainView() - 8) + 80);

  return sub_25BDC27C4(a1, a2);
}

uint64_t sub_25BDC41C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25BDC4208()
{
  v2 = *(type metadata accessor for CoverageCentralMainView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25BDB45AC;

  return sub_25BDC2E38(v4, v5, v6, v0 + v3);
}

uint64_t sub_25BDC42D8()
{
  sub_25BDDFB18();
  v0 = sub_25BDC4770();
  v1 = [v0 localize];

  sub_25BDDFE48();
  sub_25BDDFB08();
  v2 = sub_25BDC4770();
  v3 = [v2 localize];

  sub_25BDDFE48();
  sub_25BDDFAD8();
  v4 = sub_25BDDFE38();
  v5 = [objc_opt_self() systemImageNamed_];

  return sub_25BDDFB28();
}

uint64_t sub_25BDC4414(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v22 = a2;
  v2 = sub_25BDE0088();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  sub_25BDDFB18();
  v10 = sub_25BDC4770();
  v11 = [v10 localize];

  sub_25BDDFE48();
  sub_25BDDFB08();
  v12 = sub_25BDC4770();
  v13 = [v12 localize];

  sub_25BDDFE48();
  sub_25BDDFAD8();
  v14 = sub_25BDDFE38();
  v15 = [objc_opt_self() systemImageNamed_];

  sub_25BDDFB28();
  sub_25BDE0068();
  v16 = sub_25BDC4770();
  v17 = [v16 localize];

  sub_25BDDFE48();
  sub_25BDE0078();
  (*(v3 + 16))(v7, v9, v2);
  sub_25BDDFB38();
  sub_25BDC49D8();
  v18 = swift_allocObject();
  *(v18 + 16) = v21;
  *(v18 + 24) = v22;

  sub_25BDE0058();
  v19 = sub_25BDDFAF8();
  sub_25BDDFAE8();
  v19(v23, 0);
  return (*(v3 + 8))(v9, v2);
}

id sub_25BDC4770()
{
  v0 = sub_25BDDF408();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25BDDF468();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() currentLocale];
  sub_25BDDF458();

  type metadata accessor for NDOCoverageCentralViewController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  v13 = [v12 bundleURL];

  sub_25BDDF3E8();
  v14 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v15 = sub_25BDDFE38();
  v16 = sub_25BDDF448();
  v17 = sub_25BDDF3C8();
  v18 = [v14 initWithKey:v15 table:0 locale:v16 bundleURL:v17];

  (*(v1 + 8))(v4, v0);
  (*(v6 + 8))(v9, v5);
  return v18;
}

unint64_t sub_25BDC49D8()
{
  result = qword_27FBDD360;
  if (!qword_27FBDD360)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FBDD360);
  }

  return result;
}

uint64_t sub_25BDC4A24()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_25BDC4C04(uint64_t *a1, uint64_t *a2)
{
  swift_beginAccess();
  v4 = *a1;
  v5 = *a2;

  return v4;
}

uint64_t sub_25BDC4C68(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  swift_beginAccess();
  v8 = *a4;
  *a3 = a1;
  *a4 = a2;
}

id sub_25BDC4D6C()
{
  v1 = OBJC_IVAR___NDOSpecifierDataSource_ndoManager;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_25BDC4E20(uint64_t a1)
{
  v3 = OBJC_IVAR___NDOSpecifierDataSource_ndoManager;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_25BDC4F04()
{
  v1 = (v0 + OBJC_IVAR___NDOSpecifierDataSource_serialNumber);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_25BDC4FD8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___NDOSpecifierDataSource_serialNumber);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_25BDC50D8()
{
  v1 = OBJC_IVAR___NDOSpecifierDataSource_ndoSpecifiers;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_25BDC51A4(uint64_t a1)
{
  v3 = OBJC_IVAR___NDOSpecifierDataSource_ndoSpecifiers;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_25BDC52D8()
{
  v1 = (v0 + OBJC_IVAR___NDOSpecifierDataSource_updateHandler);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_25BDA6D70(v3);
  return v3;
}

uint64_t sub_25BDC53F4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___NDOSpecifierDataSource_updateHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_25BDA8480(v6);
}

void sub_25BDC5554(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

id NDOSpecifierDataSource.init(defaultDevice:)(char a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 initWithDefaultDevice_];
}

id NDOSpecifierDataSource.init(defaultDevice:)()
{
  v1 = OBJC_IVAR___NDOSpecifierDataSource_ndoManager;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x277D2D0C0]) init];
  v2 = &v0[OBJC_IVAR___NDOSpecifierDataSource_serialNumber];
  *v2 = 0;
  *(v2 + 1) = 0;
  *&v0[OBJC_IVAR___NDOSpecifierDataSource_ndoSpecifiers] = MEMORY[0x277D84F90];
  v3 = &v0[OBJC_IVAR___NDOSpecifierDataSource_updateHandler];
  *v3 = 0;
  *(v3 + 1) = 0;
  swift_unknownObjectWeakInit();
  v5.receiver = v0;
  v5.super_class = NDOSpecifierDataSource;
  return objc_msgSendSuper2(&v5, sel_init);
}

Swift::Void __swiftcall NDOSpecifierDataSource.loadSpecifiers()()
{
  v1 = v0;
  v2 = sub_25BDDF668();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 updateHandler];
  if (v7)
  {
    _Block_release(v7);
    v8 = sub_25BDB7ADC();
    (*(v3 + 16))(v6, v8, v2);
    v9 = sub_25BDDF648();
    v10 = sub_25BDDFFE8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_25BD8D000, v9, v10, "Loading specifiers", v11, 2u);
      MEMORY[0x25F87C8F0](v11, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_25BDC8DA0(2, v1, v12, 0, 0);
  }
}

uint64_t sub_25BDC5964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_25BDC8DA0(2, v3, v6, a2, a3);
}

id NDOSpecifierDataSource.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void sub_25BDC5BDC()
{
  v1 = [v0 serialNumber];
  if (v1)
  {
    v2 = v1;
LABEL_8:
    sub_25BDDFE48();

    return;
  }

  if ([objc_opt_self() isInternal])
  {
    v3 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v4 = sub_25BDDFE38();
    v5 = [v3 initWithSuiteName_];

    if (v5)
    {
      v6 = sub_25BDDFE38();
      v2 = [v5 stringForKey_];

      if (v2)
      {
        goto LABEL_8;
      }
    }
  }

  v7 = MobileGestalt_get_current_device();
  if (v7)
  {
    v8 = v7;
    v2 = MobileGestalt_copy_serialNumber_obj();

    if (v2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_25BDC5D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a4;
  v43 = a1;
  v5 = sub_25BDDFDC8();
  v42 = *(v5 - 8);
  v6 = *(v42 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25BDDFDE8();
  v41 = *(v9 - 8);
  v10 = *(v41 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25BDDF668();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v39 - v19;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v23 = [Strong updateHandler];
    if (v23)
    {
      v24 = v23;
      v25 = sub_25BDB7ADC();
      (*(v14 + 16))(v18, v25, v13);
      v26 = sub_25BDDF648();
      v27 = sub_25BDDFFE8();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_25BD8D000, v26, v27, "Update handler present, updating specifiers and calling update handler", v28, 2u);
        MEMORY[0x25F87C8F0](v28, -1, -1);
      }

      (*(v14 + 8))(v18, v13);
      sub_25BDABD64(0, &qword_27FBDD7A8, 0x277D3FAD8);
      v29 = sub_25BDDFEC8();
      [v22 setNdoSpecifiers_];

      v24[2](v24);
      _Block_release(v24);
    }

    else
    {
      sub_25BDABD64(0, &qword_27FBDD170, 0x277D85C78);
      v39 = sub_25BDE0018();
      v34 = swift_allocObject();
      v34[2] = v22;
      v34[3] = a3;
      v35 = v43;
      v34[4] = v40;
      v34[5] = v35;
      aBlock[4] = sub_25BDC93FC;
      aBlock[5] = v34;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_25BDA2E38;
      aBlock[3] = &block_descriptor_50;
      v36 = _Block_copy(aBlock);
      v37 = v22;
      sub_25BDA6D70(a3);

      sub_25BDDFDD8();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_25BDC9408(&qword_27FBDD178, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD180, "\\b");
      sub_25BDA7F8C();
      sub_25BDE00C8();
      v38 = v39;
      MEMORY[0x25F87BDC0](0, v12, v8, v36);
      _Block_release(v36);

      (*(v42 + 8))(v8, v5);
      (*(v41 + 8))(v12, v9);
    }
  }

  else
  {
    v30 = sub_25BDB7ADC();
    (*(v14 + 16))(v20, v30, v13);
    v31 = sub_25BDDF648();
    v32 = sub_25BDDFFC8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_25BD8D000, v31, v32, "Unable to update specifiers, self is nil", v33, 2u);
      MEMORY[0x25F87C8F0](v33, -1, -1);
    }

    (*(v14 + 8))(v20, v13);
  }
}

void sub_25BDC62C0(void *a1, void (*a2)(uint64_t), uint64_t a3, unint64_t a4)
{
  v8 = sub_25BDDF668();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v91 = &v89 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v89 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v89 - v19;
  v21 = [a1 hostingController];
  if (!v21)
  {
    v48 = sub_25BDB7ADC();
    (*(v9 + 16))(v20, v48, v8);
    v49 = sub_25BDDF648();
    v50 = sub_25BDDFFC8();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = v8;
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_25BD8D000, v49, v50, "Unable to update specifiers, missing specifier id to insert after", v52, 2u);
      v53 = v52;
      v8 = v51;
      MEMORY[0x25F87C8F0](v53, -1, -1);
    }

    v54 = (*(v9 + 8))(v20, v8);
    if (a2)
    {
      a2(v54);
    }

    return;
  }

  v89 = a4;
  v92 = v8;
  v93 = a2;
  v22 = v21;
  v23 = [v21 specifierIDToInsertAfter];

  v24 = v23;
  v25 = v23;
  if (!v23)
  {
    sub_25BDDFE48();
    v25 = sub_25BDDFE38();

    sub_25BDDFE48();
    v24 = sub_25BDDFE38();
  }

  v90 = sub_25BDDFE48();
  v27 = v26;
  v28 = v23;
  v29 = [a1 hostingController];
  v94 = a3;
  if (v29 && (v30 = v29, v31 = [v29 parentViewController], v30, v31) && (v32 = objc_msgSend(v31, sel_specifierDataSource), v31, v32))
  {
    objc_opt_self();
    v33 = swift_dynamicCastObjCClass();
    if (v33)
    {
      v34 = v33;
      swift_unknownObjectRetain();

      v35 = [v34 specifierForID_];
      swift_unknownObjectRelease();
      if (v35)
      {
        v36 = v35;

        if (v89 >> 62)
        {
          v37 = sub_25BDE0168();
        }

        else
        {
          v37 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v38 = v93;
        v39 = [a1 ndoSpecifiers];
        sub_25BDABD64(0, &qword_27FBDD7A8, 0x277D3FAD8);
        v40 = sub_25BDDFED8();

        if (v40 >> 62)
        {
          v41 = sub_25BDE0168();
        }

        else
        {
          v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v42 = v37 != v41;
        v43 = swift_allocObject();
        v44 = v89;
        v43[2] = a1;
        v43[3] = v44;
        v43[4] = v36;
        v43[5] = v38;
        v43[6] = v94;
        aBlock[4] = sub_25BDC9450;
        aBlock[5] = v43;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_25BDB688C;
        aBlock[3] = &block_descriptor_56;
        v45 = _Block_copy(aBlock);
        v46 = v36;
        v47 = a1;

        sub_25BDA6D70(v38);

        [v34 performUpdatesAnimated:v42 usingBlock:v45];

        _Block_release(v45);
        return;
      }

      goto LABEL_33;
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v55 = [a1 hostingController];
  if (!v55 || (v56 = v55, v57 = [v55 parentViewController], v56, !v57))
  {

    goto LABEL_32;
  }

  v58 = [v57 specifierForID_];

  if (!v58)
  {
LABEL_32:
    v34 = 0;
LABEL_33:
    v76 = v92;
    v77 = sub_25BDB7ADC();
    (*(v9 + 16))(v13, v77, v76);

    v78 = sub_25BDDF648();
    v79 = sub_25BDDFFC8();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      aBlock[0] = v81;
      *v80 = 136315138;
      v82 = sub_25BDA6444(v90, v27, aBlock);

      *(v80 + 4) = v82;
      _os_log_impl(&dword_25BD8D000, v78, v79, "Unable to update specifiers, missing specifier to insert after for specifier id: %s", v80, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v81);
      MEMORY[0x25F87C8F0](v81, -1, -1);
      MEMORY[0x25F87C8F0](v80, -1, -1);
    }

    else
    {
    }

    v83 = (*(v9 + 8))(v13, v76);
    if (v93)
    {
      v93(v83);
    }

    return;
  }

  v59 = v58;
  v60 = [a1 hostingController];
  v61 = v92;
  if (v60 && (v62 = v60, v63 = [v60 parentViewController], v62, v63) && (v64 = objc_msgSend(v63, sel_specifiers), v63, v64))
  {
    v65 = [objc_allocWithZone(MEMORY[0x277D3FAE8]) initWithSpecifiers_];

    if (!v65)
    {
      __break(1u);
      return;
    }

    v66 = v65;
    sub_25BDC6DD4(v89, v59, v65);
    v67 = [a1 hostingController];
    v68 = [v67 parentViewController];

    [v68 performSpecifierUpdates_];
    v69 = sub_25BDB7ADC();
    v70 = v91;
    (*(v9 + 16))(v91, v69, v61);
    v71 = sub_25BDDF648();
    v72 = sub_25BDDFFE8();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_25BD8D000, v71, v72, "Finished updating specifiers", v73, 2u);
      v74 = v73;
      v61 = v92;
      MEMORY[0x25F87C8F0](v74, -1, -1);
    }

    v75 = (*(v9 + 8))(v70, v61);
    if (v93)
    {
      v93(v75);
    }
  }

  else
  {

    v84 = sub_25BDB7ADC();
    (*(v9 + 16))(v18, v84, v61);
    v85 = sub_25BDDF648();
    v86 = sub_25BDDFFC8();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&dword_25BD8D000, v85, v86, "Unable to update specifiers, current specifiers is nil", v87, 2u);
      MEMORY[0x25F87C8F0](v87, -1, -1);
    }

    v88 = (*(v9 + 8))(v18, v61);
    if (v93)
    {
      v93(v88);
    }
  }
}

uint64_t sub_25BDC6C34(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v9 = sub_25BDDF668();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25BDC6DD4(a3, a4, a1);
  v14 = sub_25BDB7ADC();
  (*(v10 + 16))(v13, v14, v9);
  v15 = sub_25BDDF648();
  v16 = sub_25BDDFFE8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_25BD8D000, v15, v16, "Finished updating specifiers", v17, 2u);
    MEMORY[0x25F87C8F0](v17, -1, -1);
  }

  result = (*(v10 + 8))(v13, v9);
  if (a5)
  {
    return a5(result);
  }

  return result;
}

void sub_25BDC6DD4(unint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  sub_25BDABD64(0, &qword_27FBDD7A8, 0x277D3FAD8);
  v8 = sub_25BDDFEC8();
  [v4 setNdoSpecifiers_];

  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7D0, &qword_25BDE2F28);
    v9 = swift_allocObject();
    v10 = MEMORY[0x277D837D0];
    *(v9 + 16) = xmmword_25BDE2F00;
    strcpy((v9 + 32), "WARRANTY_GROUP");
    *(v9 + 47) = -18;
    *(v9 + 56) = v10;
    *(v9 + 64) = 0xD000000000000014;
    *(v9 + 72) = 0x800000025BDE6180;
    *(v9 + 120) = v10;
    *(v9 + 88) = v10;
    strcpy((v9 + 96), "WARRANTY_OFFER");
    *(v9 + 111) = -18;
    v11 = sub_25BDDFEC8();

    [a3 removeSpecifiersWithIDs_];

    sub_25BDC6F8C(a1);
    v12 = sub_25BDDFEC8();

    [a3 insertContiguousSpecifiers:v12 afterSpecifier:a2];
  }
}

char *sub_25BDC6F8C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_25BDE0168();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_25BDC8C70(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x25F87BED0](i, a1);
        sub_25BDABD64(0, &qword_27FBDD7A8, 0x277D3FAD8);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_25BDC8C70((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_25BDA818C(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_25BDABD64(0, &qword_27FBDD7A8, 0x277D3FAD8);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_25BDC8C70((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_25BDA818C(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BDC7188(uint64_t a1, unint64_t a2, void *a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t *a6)
{
  v63 = a6;
  v65 = a5;
  v66 = a4;
  v9 = sub_25BDDF668();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v58 - v14;
  MEMORY[0x28223BE20](v13);
  v64 = &v58 - v16;
  v17 = sub_25BDDF508();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v24 = &v58 - v23;
  if (a2 >> 60 == 15)
  {
    v25 = sub_25BDB7ADC();
    (*(v10 + 16))(v15, v25, v9);
    v26 = a3;
    v27 = sub_25BDDF648();
    v28 = sub_25BDDFFC8();

    v29 = v9;
    if (os_log_type_enabled(v27, v28))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v67 = a3;
      v68 = v31;
      *v30 = 136315138;
      v32 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD190, &unk_25BDE23D0);
      v33 = sub_25BDDFE68();
      v35 = sub_25BDA6444(v33, v34, &v68);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_25BD8D000, v27, v28, "Failed to load coverage info, error: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x25F87C8F0](v31, -1, -1);
      MEMORY[0x25F87C8F0](v30, -1, -1);
    }

    (*(v10 + 8))(v15, v29);
    return v66(MEMORY[0x277D84F90]);
  }

  else
  {
    v60 = v22;
    v37 = sub_25BDDF358();
    v38 = *(v37 + 48);
    v39 = *(v37 + 52);
    swift_allocObject();
    sub_25BDB3C24(a1, a2);
    sub_25BDDF348();
    sub_25BDC9408(&qword_27FBDD7B0, MEMORY[0x277D2D090]);
    v61 = a1;
    v62 = a2;
    sub_25BDDF338();

    (*(v60 + 32))(v24, v21, v17);
    sub_25BDC782C();
    v41 = v40;
    v42 = sub_25BDB7ADC();
    v43 = v10;
    v44 = *(v10 + 16);
    v45 = v64;
    v44(v64, v42, v9);

    v46 = sub_25BDDF648();
    v47 = sub_25BDDFFE8();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v68 = v63;
      *v48 = 136315138;
      v49 = sub_25BDABD64(0, &qword_27FBDD7A8, 0x277D3FAD8);
      v50 = MEMORY[0x25F87BC80](v41, v49);
      v52 = sub_25BDA6444(v50, v51, &v68);
      v59 = v9;
      v53 = v47;
      v54 = v52;

      *(v48 + 4) = v54;
      _os_log_impl(&dword_25BD8D000, v46, v53, "specifiers: %s", v48, 0xCu);
      v55 = v63;
      __swift_destroy_boxed_opaque_existential_0(v63);
      MEMORY[0x25F87C8F0](v55, -1, -1);
      MEMORY[0x25F87C8F0](v48, -1, -1);

      (*(v43 + 8))(v45, v59);
    }

    else
    {

      (*(v43 + 8))(v45, v9);
    }

    v57 = v61;
    v56 = v62;
    v66(v41);
    sub_25BDA7298(v57, v56);

    return (*(v60 + 8))(v24, v17);
  }
}

void sub_25BDC782C()
{
  v1 = v0;
  v2 = sub_25BDDF558();
  v75 = *(v2 - 8);
  v76 = v2;
  v3 = *(v75 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v73 = &v71 - v8;
  MEMORY[0x28223BE20](v7);
  v74 = &v71 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7B8, &qword_25BDE2F10);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v71 - v12;
  v14 = sub_25BDDF598();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = MEMORY[0x277D84F90];
  v19 = objc_opt_self();
  v20 = sub_25BDDFE38();
  v21 = [v19 groupSpecifierWithID_];

  if (!v21)
  {
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v78 = v15;
  v79 = v14;
  v22 = v21;
  MEMORY[0x25F87BC50]();
  if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v69 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_25BDDFEF8();
  }

  sub_25BDDFF08();
  v23 = objc_opt_self();
  sub_25BDDF4E8();
  v24 = sub_25BDDFE38();

  type metadata accessor for NDODeviceDetailsViewController(0);
  v25 = [v23 preferenceSpecifierNamed:v24 target:v1 set:0 get:sel_coverageDetailText_ detail:swift_getObjCClassFromMetadata() cell:2 edit:0];

  if (!v25)
  {
    goto LABEL_24;
  }

  v26 = sub_25BDDFE38();
  v27 = NSClassFromString(v26);

  v77 = v22;
  v72 = v6;
  if (v27)
  {
    v80[0] = swift_getObjCClassMetadata();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7C8, &qword_25BDE2F20);
    v28 = sub_25BDE01D8();
  }

  else
  {
    v28 = 0;
  }

  [v25 setProperty:v28 forKey:*MEMORY[0x277D3FE58]];
  swift_unknownObjectRelease();
  v29 = sub_25BDDFE38();
  v30 = *MEMORY[0x277D3FFB8];
  [v25 setProperty:v29 forKey:*MEMORY[0x277D3FFB8]];

  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = swift_allocObject();
  *(v32 + 16) = sub_25BDC936C;
  *(v32 + 24) = v31;
  v80[0] = sub_25BDC4A24;
  v80[1] = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7C0, &qword_25BDE2F18);
  v33 = sub_25BDE01D8();
  swift_beginAccess();

  v34 = sub_25BDDFE38();

  [v25 setProperty:v33 forKey:v34];

  swift_unknownObjectRelease();
  sub_25BDDF4F8();
  v35 = sub_25BDDFE38();

  [v25 setProperty:v35 forKey:*MEMORY[0x277D401A8]];

  sub_25BDC5BDC();
  v36 = sub_25BDDFE38();

  swift_beginAccess();

  v37 = sub_25BDDFE38();

  [v25 setProperty:v36 forKey:v37];

  v38 = [objc_opt_self() mainBundle];
  v39 = [v38 bundleIdentifier];

  swift_beginAccess();

  v40 = sub_25BDDFE38();

  [v25 setProperty:v39 forKey:v40];

  MEMORY[0x25F87BC50]();
  if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_25BDDFEF8();
  }

  sub_25BDDFF08();
  sub_25BDDF4D8();
  v42 = v78;
  v41 = v79;
  if ((*(v78 + 48))(v13, 1, v79) == 1)
  {

    sub_25BDA8554(v13, &qword_27FBDD7B8, &qword_25BDE2F10);
    return;
  }

  (*(v42 + 32))(v18, v13, v41);
  if ((sub_25BDDF588() & 1) == 0)
  {
    (*(v42 + 8))(v18, v41);

    return;
  }

  v43 = v74;
  sub_25BDDF568();
  sub_25BDDF548();
  v44 = *(v75 + 8);
  v45 = v44(v43, v76);
  v81 = type metadata accessor for NDOSpecifierDataSource(v45);
  v80[0] = v1;
  v46 = v1;
  v47 = sub_25BDDFE38();

  v48 = v81;
  if (v81)
  {
    v49 = __swift_project_boxed_opaque_existential_0(v80, v81);
    v74 = &v71;
    v50 = v18;
    v51 = v30;
    v52 = v44;
    v53 = *(v48 - 8);
    v54 = *(v53 + 64);
    MEMORY[0x28223BE20](v49);
    v56 = &v71 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v53 + 16))(v56);
    v57 = sub_25BDE01B8();
    (*(v53 + 8))(v56, v48);
    v44 = v52;
    v30 = v51;
    v18 = v50;
    __swift_destroy_boxed_opaque_existential_0(v80);
  }

  else
  {
    v57 = 0;
  }

  v58 = [objc_allocWithZone(MEMORY[0x277D3FAD8]) initWithName:v47 target:v57 set:0 get:0 detail:0 cell:13 edit:0];

  swift_unknownObjectRelease();
  if (!v58)
  {
    goto LABEL_25;
  }

  v59 = sub_25BDDFE38();
  [v58 setProperty:v59 forKey:v30];

  v60 = v73;
  sub_25BDDF568();
  v61 = v76;
  (*(v75 + 16))(v72, v60, v76);
  v62 = sub_25BDE01D8();
  v44(v60, v61);
  swift_beginAccess();

  v63 = sub_25BDDFE38();

  [v58 setProperty:v62 forKey:v63];
  swift_unknownObjectRelease();

  [v58 setButtonAction_];
  v64 = sub_25BDDFF18();
  [v58 setProperty:v64 forKey:*MEMORY[0x277D3FD80]];

  v65 = v58;
  MEMORY[0x25F87BC50]();
  if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v70 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_25BDDFEF8();
  }

  sub_25BDDFF08();
  sub_25BDDF578();
  v66 = v77;
  if (v67)
  {
    v68 = sub_25BDDFE38();

    [v66 setProperty:v68 forKey:*MEMORY[0x277D3FF88]];

    (*(v78 + 8))(v18, v79);
  }

  else
  {
    (*(v78 + 8))(v18, v79);
  }
}

uint64_t sub_25BDC832C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {

    v7 = v4;
    v4 = sub_25BDDF428();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v10 = a3;
  v6(v4, v9, a3);

  sub_25BDA7298(v4, v9);
}

void sub_25BDC83D8(void *a1)
{
  v3 = sub_25BDDF668();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25BDDF558();
  v44 = *(v8 - 8);
  v9 = *(v44 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v42 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - v11;
  swift_beginAccess();

  v13 = sub_25BDDFE38();

  v14 = [a1 propertyForKey_];

  if (v14)
  {
    sub_25BDE00B8();
    swift_unknownObjectRelease();
    sub_25BDA818C(&v50, &aBlock);
    v43 = v12;
    swift_dynamicCast();
    v15 = [v1 hostingController];
    v16 = v8;
    if (v15 && (v17 = v15, v18 = [v15 parentViewController], v17, v18))
    {
      v19 = [v1 ndoManager];
      v20 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v21 = v18;

      v22 = sub_25BDA25C8(v19, v18, sub_25BDC9184, v20);

      v16 = v8;
      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v25 = v43;
      v24 = v44;
      v26 = v42;
      (*(v44 + 16))(v42, v43, v16);
      v27 = (*(v24 + 80) + 24) & ~*(v24 + 80);
      v28 = swift_allocObject();
      *(v28 + 16) = v23;
      (*(v24 + 32))(v28 + v27, v26, v16);
      *(v28 + ((v9 + v27 + 7) & 0xFFFFFFFFFFFFFFF8)) = v22;
      v29 = objc_allocWithZone(NDOAMSUILoadingViewController);
      v48 = sub_25BDC928C;
      v49 = v28;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v46 = sub_25BDA6394;
      v47 = &block_descriptor_5;
      v30 = _Block_copy(&aBlock);

      swift_unknownObjectRetain();
      v31 = [v29 initWithCreateAMSViewController_];
      _Block_release(v30);

      [v31 setPresenter_];
      v32 = [objc_opt_self() currentDevice];
      v33 = [v32 userInterfaceIdiom];

      if (v33 == 1 || v33 == 6)
      {
        v35 = 2;
      }

      else
      {
        v35 = 0;
      }

      v36 = v31;
      [v36 setModalInPresentation_];
      [v36 setModalPresentationStyle_];
      v37 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

      [v21 presentViewController:v37 animated:1 completion:0];
      swift_unknownObjectRelease();
    }

    else
    {
      v38 = sub_25BDB7ADC();
      (*(v4 + 16))(v7, v38, v3);
      v39 = sub_25BDDF648();
      v40 = sub_25BDDFFC8();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_25BD8D000, v39, v40, "Failed to present AMSUI view controller, parent view controller is nil", v41, 2u);
        MEMORY[0x25F87C8F0](v41, -1, -1);
      }

      (*(v4 + 8))(v7, v3);
      v25 = v43;
      v24 = v44;
    }

    (*(v24 + 8))(v25, v16);
  }

  else
  {
    __break(1u);
  }
}

void *sub_25BDC89C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_25BDDF408();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    v15 = [result ndoManager];
    v22 = v8;
    v16 = a5;
    v17 = v15;
    sub_25BDDF538();
    v18 = sub_25BDDF528();
    v19 = sub_25BDDF518();
    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    *(v20 + 24) = a2;

    v21 = sub_25BDA4DF4();
    sub_25BDA4E34(v17, v12, v18, v19, v21, v16, sub_25BDA83B4, v20);

    swift_unknownObjectRelease();
    return (*(v9 + 8))(v12, v22);
  }

  return result;
}

char *sub_25BDC8C70(char *a1, int64_t a2, char a3)
{
  result = sub_25BDC8C90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25BDC8C90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7D0, &qword_25BDE2F28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_25BDC8DA0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_25BDDF668();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
  v16 = objc_opt_self();

  sub_25BDA6D70(a4);
  if ([v16 isSignedIntoAppleAccount])
  {
    v17 = [a2 ndoManager];
    sub_25BDC5BDC();
    v18 = sub_25BDDFE38();

    v19 = swift_allocObject();
    v19[2] = sub_25BDC9354;
    v19[3] = v15;
    v19[4] = a2;
    aBlock[4] = sub_25BDC9360;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25BDC832C;
    aBlock[3] = &block_descriptor_39;
    v20 = _Block_copy(aBlock);

    v21 = a2;

    [v17 getCoverageInfoForSerialNumber:v18 usingPolicy:a1 withReply:v20];
    _Block_release(v20);
  }

  else
  {
    v22 = sub_25BDB7ADC();
    (*(v11 + 16))(v14, v22, v10);
    v23 = sub_25BDDF648();
    v24 = sub_25BDDFFE8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_25BD8D000, v23, v24, "Not creating specifiers, user not logged in.", v25, 2u);
      MEMORY[0x25F87C8F0](v25, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    sub_25BDC5D30(MEMORY[0x277D84F90], a3, a4, a5);
  }
}

uint64_t sub_25BDC90BC(void *a1)
{
  if ([a1 propertyForKey_])
  {
    sub_25BDE00B8();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  else
  {
    sub_25BDA8554(v5, &qword_27FBDD1B0, &qword_25BDE23F0);
  }

  return 0;
}

void sub_25BDC9184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = swift_allocObject();
      *(v7 + 16) = a2;
      *(v7 + 24) = a3;
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_25BDA6D70(a2);
      sub_25BDC8DA0(4, v6, v8, sub_25BDC4A24, v7);
    }
  }
}

void *sub_25BDC928C(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_25BDDF558() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  return sub_25BDC89C0(a1, a2, v8, v2 + v6, v7);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_25BDC936C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_25BDC8DA0(4, v1, v2, 0, 0);
  }
}

uint64_t sub_25BDC9408(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25BDC9488()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7D8, &qword_25BDE2F30);
  sub_25BDDFD58();
  return v1;
}

void (*sub_25BDC9504(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7D8, &qword_25BDE2F30);
  *(v3 + 32) = sub_25BDDFD48();
  return sub_25BDB7E44;
}

uint64_t sub_25BDC9590()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7D8, &qword_25BDE2F30);

  return sub_25BDDFD78();
}

uint64_t sub_25BDC95D8@<X0>(uint64_t a1@<X8>)
{
  v126 = a1;
  v101 = sub_25BDDF668();
  v100 = *(v101 - 8);
  v2 = *(v100 + 64);
  MEMORY[0x28223BE20](v101);
  v99 = &v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD6F0, &qword_25BDE2E30);
  v4 = *(*(v106 - 8) + 64);
  MEMORY[0x28223BE20](v106);
  v107 = &v94 - v5;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD6E0, &unk_25BDE2E20);
  v6 = *(*(v130 - 8) + 64);
  MEMORY[0x28223BE20](v130);
  v109 = &v94 - v7;
  v108 = sub_25BDDF798();
  v105 = *(v108 - 8);
  v8 = *(v105 + 64);
  MEMORY[0x28223BE20](v108);
  v104 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_25BDDF9A8();
  v103 = *(v116 - 8);
  v10 = *(v103 + 64);
  v11 = MEMORY[0x28223BE20](v116);
  v102 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v114 = &v94 - v13;
  v14 = type metadata accessor for DeviceWarrantyMainView();
  v124 = *(v14 - 8);
  v15 = *(v124 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v125 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7E0, &qword_25BDE2F38);
  v110 = *(v112 - 8);
  v16 = *(v110 + 64);
  MEMORY[0x28223BE20](v112);
  v18 = &v94 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7E8, &qword_25BDE2F40);
  v113 = *(v19 - 8);
  v20 = *(v113 + 64);
  MEMORY[0x28223BE20](v19);
  v111 = &v94 - v21;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7F0, &qword_25BDE2F48);
  v22 = *(*(v122 - 8) + 64);
  MEMORY[0x28223BE20](v122);
  v115 = &v94 - v23;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7F8, &qword_25BDE2F50);
  v24 = *(*(v127 - 8) + 64);
  MEMORY[0x28223BE20](v127);
  v129 = &v94 - v25;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD800, &qword_25BDE2F58);
  v26 = *(*(v119 - 8) + 64);
  MEMORY[0x28223BE20](v119);
  v118 = &v94 - v27;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD808, &qword_25BDE2F60);
  v28 = *(*(v128 - 8) + 64);
  MEMORY[0x28223BE20](v128);
  v121 = &v94 - v29;
  v117 = sub_25BDDFC38();
  v96 = *(v117 - 8);
  v30 = *(v96 + 64);
  MEMORY[0x28223BE20](v117);
  v32 = &v94 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD5B0, &qword_25BDE2E00);
  v95 = *(v123 - 8);
  v33 = *(v95 + 64);
  MEMORY[0x28223BE20](v123);
  v35 = &v94 - v34;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD5B8, &unk_25BDE2B10);
  v98 = *(v120 - 8);
  v36 = *(v98 + 64);
  MEMORY[0x28223BE20](v120);
  v97 = &v94 - v37;
  v38 = sub_25BDDF7D8();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  v42 = (&v94 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7D8, &qword_25BDE2F30);
  v43 = v1;
  v44 = sub_25BDDFD58();
  (*(*v131 + 200))(v44);

  v45 = (*(v39 + 88))(v42, v38);
  if (v45 == *MEMORY[0x277D2B6C8])
  {
    v46 = (*(v39 + 96))(v42, v38);
    v47 = *v42;
    MEMORY[0x28223BE20](v46);
    v48 = v19;
    *(&v94 - 2) = v47;
    *(&v94 - 1) = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD828, &qword_25BDE2F68);
    sub_25BDCB4C0();
    sub_25BDDFC78();

    v49 = sub_25BDBC1A0(&qword_27FBDD820, &qword_27FBDD7E0, &qword_25BDE2F38);
    v50 = v111;
    v51 = v112;
    sub_25BDDFCA8();
    (*(v110 + 8))(v18, v51);
    v52 = v125;
    sub_25BDCB390(v43, v125);
    v53 = (*(v124 + 80) + 16) & ~*(v124 + 80);
    v54 = swift_allocObject();
    sub_25BDCB3F4(v52, v54 + v53);
    v131 = v51;
    v132 = v49;
    swift_getOpaqueTypeConformance2();
    v55 = v115;
    sub_25BDDFCE8();

    (*(v113 + 8))(v50, v48);
    v56 = sub_25BDDFC58();
    sub_25BDDFB68();
    v57 = v55 + *(v122 + 36);
    *v57 = v56;
    *(v57 + 8) = v58;
    *(v57 + 16) = v59;
    *(v57 + 24) = v60;
    *(v57 + 32) = v61;
    *(v57 + 40) = 0;
    sub_25BDA84EC(v55, v118, &qword_27FBDD7F0, &qword_25BDE2F48);
    swift_storeEnumTagMultiPayload();
    v62 = sub_25BDBC1A0(&qword_27FBDD5D8, &qword_27FBDD5B0, &qword_25BDE2E00);
    v63 = sub_25BDCB92C(&qword_27FBDD5E0, MEMORY[0x277CDE330]);
    v131 = v123;
    v132 = v117;
    v133 = v62;
    v134 = v63;
    swift_getOpaqueTypeConformance2();
    sub_25BDCA93C();
    v64 = v121;
    sub_25BDDFC18();
    sub_25BDA84EC(v64, v129, &qword_27FBDD808, &qword_25BDE2F60);
    swift_storeEnumTagMultiPayload();
    sub_25BDCA7F0();
    sub_25BDC3B14();
    sub_25BDDFC18();
    sub_25BDA8554(v64, &qword_27FBDD808, &qword_25BDE2F60);
    return sub_25BDA8554(v55, &qword_27FBDD7F0, &qword_25BDE2F48);
  }

  else
  {
    v66 = v123;
    v67 = v124;
    v68 = v125;
    if (v45 == *MEMORY[0x277D2B6C0])
    {
      (*(v39 + 96))(v42, v38);
      v69 = v103;
      v70 = v114;
      v71 = v116;
      (*(v103 + 32))(v114, v42, v116);
      (*(v69 + 16))(v102, v70, v71);
      v72 = v68;
      sub_25BDCB390(v43, v68);
      v73 = (*(v67 + 80) + 16) & ~*(v67 + 80);
      v74 = swift_allocObject();
      sub_25BDCB3F4(v72, v74 + v73);
      v75 = v104;
      sub_25BDDF788();
      v76 = v105;
      v77 = v108;
      (*(v105 + 16))(v107, v75, v108);
      swift_storeEnumTagMultiPayload();
      sub_25BDCB92C(&qword_27FBDD6E8, MEMORY[0x277D2B6A8]);
      v78 = v109;
      sub_25BDDFC18();
      sub_25BDA84EC(v78, v129, &qword_27FBDD6E0, &unk_25BDE2E20);
      swift_storeEnumTagMultiPayload();
      sub_25BDCA7F0();
      sub_25BDC3B14();
      sub_25BDDFC18();
      sub_25BDA8554(v78, &qword_27FBDD6E0, &unk_25BDE2E20);
      (*(v76 + 8))(v75, v77);
      return (*(v69 + 8))(v114, v116);
    }

    else if (v45 == *MEMORY[0x277D2B6D0])
    {
      sub_25BDDFB78();
      sub_25BDDFC28();
      v79 = sub_25BDBC1A0(&qword_27FBDD5D8, &qword_27FBDD5B0, &qword_25BDE2E00);
      v80 = sub_25BDCB92C(&qword_27FBDD5E0, MEMORY[0x277CDE330]);
      v81 = v97;
      v82 = v117;
      sub_25BDDFCD8();
      (*(v96 + 8))(v32, v82);
      (*(v95 + 8))(v35, v66);
      v83 = v98;
      v84 = v120;
      (*(v98 + 16))(v118, v81, v120);
      swift_storeEnumTagMultiPayload();
      v131 = v66;
      v132 = v82;
      v133 = v79;
      v134 = v80;
      swift_getOpaqueTypeConformance2();
      sub_25BDCA93C();
      v85 = v121;
      sub_25BDDFC18();
      sub_25BDA84EC(v85, v129, &qword_27FBDD808, &qword_25BDE2F60);
      swift_storeEnumTagMultiPayload();
      sub_25BDCA7F0();
      sub_25BDC3B14();
      sub_25BDDFC18();
      sub_25BDA8554(v85, &qword_27FBDD808, &qword_25BDE2F60);
      return (*(v83 + 8))(v81, v84);
    }

    else
    {
      v86 = sub_25BDB7ADC();
      v87 = v100;
      v88 = v99;
      v89 = v101;
      (*(v100 + 16))(v99, v86, v101);
      v90 = sub_25BDDF648();
      v91 = sub_25BDDFFC8();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        *v92 = 0;
        _os_log_impl(&dword_25BD8D000, v90, v91, "Should not hit unknown default case", v92, 2u);
        MEMORY[0x25F87C8F0](v92, -1, -1);
      }

      (*(v87 + 8))(v88, v89);
      swift_storeEnumTagMultiPayload();
      sub_25BDCB92C(&qword_27FBDD6E8, MEMORY[0x277D2B6A8]);
      v93 = v109;
      sub_25BDDFC18();
      sub_25BDA84EC(v93, v129, &qword_27FBDD6E0, &unk_25BDE2E20);
      swift_storeEnumTagMultiPayload();
      sub_25BDCA7F0();
      sub_25BDC3B14();
      sub_25BDDFC18();
      sub_25BDA8554(v93, &qword_27FBDD6E0, &unk_25BDE2E20);
      return (*(v39 + 8))(v42, v38);
    }
  }
}

uint64_t type metadata accessor for DeviceWarrantyMainView()
{
  result = qword_27FBDE310;
  if (!qword_27FBDE310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_25BDCA7F0()
{
  result = qword_27FBDD810;
  if (!qword_27FBDD810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD808, &qword_25BDE2F60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD5B0, &qword_25BDE2E00);
    sub_25BDDFC38();
    sub_25BDBC1A0(&qword_27FBDD5D8, &qword_27FBDD5B0, &qword_25BDE2E00);
    sub_25BDCB92C(&qword_27FBDD5E0, MEMORY[0x277CDE330]);
    swift_getOpaqueTypeConformance2();
    sub_25BDCA93C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD810);
  }

  return result;
}

unint64_t sub_25BDCA93C()
{
  result = qword_27FBDD818;
  if (!qword_27FBDD818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD7F0, &qword_25BDE2F48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD7E8, &qword_25BDE2F40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD7E0, &qword_25BDE2F38);
    sub_25BDBC1A0(&qword_27FBDD820, &qword_27FBDD7E0, &qword_25BDE2F38);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD818);
  }

  return result;
}

uint64_t sub_25BDCAA7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceWarrantyMainView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v10[1] = a1;
  sub_25BDCB390(a2, v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_25BDCB3F4(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD2C0, &unk_25BDE3010);
  type metadata accessor for DeviceWarrantySectionView();
  sub_25BDBC1A0(&qword_27FBDD858, &qword_27FBDD2C0, &unk_25BDE3010);
  sub_25BDCB92C(&qword_27FBDD838, type metadata accessor for DeviceWarrantySectionView);
  sub_25BDCB92C(&qword_27FBDD860, MEMORY[0x277D2B688]);
  return sub_25BDDFD28();
}

uint64_t sub_25BDCAC7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25BDDF778();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7D8, &qword_25BDE2F30);
  sub_25BDDFD58();
  (*(v5 + 16))(v8, a1, v4);
  return sub_25BDCF210(v8, a2);
}

uint64_t sub_25BDCAD80(uint64_t a1)
{
  v1[3] = a1;
  sub_25BDDFF48();
  v1[4] = sub_25BDDFF38();
  v3 = sub_25BDDFF28();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x2822009F8](sub_25BDCAE18, v3, v2);
}

uint64_t sub_25BDCAE18()
{
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7D8, &qword_25BDE2F30);
  sub_25BDDFD58();
  v2 = v0[2];
  v0[7] = v2;
  v6 = (*v2 + 624);
  v7 = (*v6 + **v6);
  v3 = (*v6)[1];
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_25BDC2ADC;

  return v7();
}

uint64_t sub_25BDCAF64(uint64_t a1)
{
  v2 = type metadata accessor for DeviceWarrantyMainView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD2A8, &qword_25BDE25A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v10 = sub_25BDDFF88();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_25BDCB390(a1, v5);
  sub_25BDDFF48();
  v11 = sub_25BDDFF38();
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v11;
  *(v13 + 24) = v14;
  sub_25BDCB3F4(v5, v13 + v12);
  sub_25BDAFA6C(0, 0, v9, &unk_25BDE3028, v13);
}

uint64_t sub_25BDCB11C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  sub_25BDDFF48();
  v4[4] = sub_25BDDFF38();
  v6 = sub_25BDDFF28();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](sub_25BDCB1B4, v6, v5);
}

uint64_t sub_25BDCB1B4()
{
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7D8, &qword_25BDE2F30);
  sub_25BDDFD58();
  v2 = v0[2];
  v0[7] = v2;
  v6 = (*v2 + 616);
  v7 = (*v6 + **v6);
  v3 = (*v6)[1];
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_25BDC3034;

  return v7();
}

uint64_t sub_25BDCB300()
{
  type metadata accessor for DeviceWarrantyViewModel();
  sub_25BDCB92C(&qword_27FBDD290, type metadata accessor for DeviceWarrantyViewModel);

  return sub_25BDDFD88();
}

uint64_t sub_25BDCB390(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceWarrantyMainView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BDCB3F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceWarrantyMainView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BDCB458()
{
  v1 = *(type metadata accessor for DeviceWarrantyMainView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_25BDCAF64(v2);
}

unint64_t sub_25BDCB4C0()
{
  result = qword_27FBDD830;
  if (!qword_27FBDD830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD828, &qword_25BDE2F68);
    sub_25BDCB92C(&qword_27FBDD838, type metadata accessor for DeviceWarrantySectionView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD830);
  }

  return result;
}

uint64_t sub_25BDCB574()
{
  v2 = *(type metadata accessor for DeviceWarrantyMainView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25BDAFE88;

  return sub_25BDCAD80(v0 + v3);
}

void sub_25BDCB684()
{
  sub_25BDCB6F0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_25BDCB6F0()
{
  if (!qword_27FBDD840)
  {
    type metadata accessor for DeviceWarrantyViewModel();
    v0 = sub_25BDDFD98();
    if (!v1)
    {
      atomic_store(v0, &qword_27FBDD840);
    }
  }
}

unint64_t sub_25BDCB748()
{
  result = qword_27FBDD848;
  if (!qword_27FBDD848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD850, &qword_25BDE3008);
    sub_25BDCA7F0();
    sub_25BDC3B14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD848);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{
  v1 = *(type metadata accessor for DeviceWarrantyMainView() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7D8, &qword_25BDE2F30);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25BDCB8AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(type metadata accessor for DeviceWarrantyMainView() - 8) + 80);

  return sub_25BDCAC7C(a1, a2);
}

uint64_t sub_25BDCB92C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25BDCB974()
{
  v2 = *(type metadata accessor for DeviceWarrantyMainView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25BDB45AC;

  return sub_25BDCB11C(v4, v5, v6, v0 + v3);
}

uint64_t sub_25BDCBA40()
{
  type metadata accessor for DeviceWarrantyViewModel();
  sub_25BDCFC90(&qword_27FBDD290, type metadata accessor for DeviceWarrantyViewModel);

  return sub_25BDDFD88();
}

void (*sub_25BDCBACC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7D8, &qword_25BDE2F30);
  *(v3 + 32) = sub_25BDDFD48();
  return sub_25BDB7E44;
}

uint64_t sub_25BDCBB58@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DeviceWarrantySectionView() + 20);
  v4 = sub_25BDDF778();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for DeviceWarrantySectionView()
{
  result = qword_27FBDE3A0;
  if (!qword_27FBDE3A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25BDCBC20(uint64_t a1)
{
  v3 = *(type metadata accessor for DeviceWarrantySectionView() + 20);
  v4 = sub_25BDDF778();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_25BDCBCE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v189 = a2;
  v143 = sub_25BDDF668();
  v146 = *(v143 - 8);
  v3 = *(v146 + 64);
  MEMORY[0x28223BE20](v143);
  v144 = &v136 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD868, &qword_25BDE3048);
  v5 = *(*(v148 - 8) + 64);
  MEMORY[0x28223BE20](v148);
  v149 = &v136 - v6;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD870, &qword_25BDE3050);
  v7 = *(*(v190 - 8) + 64);
  MEMORY[0x28223BE20](v190);
  v151 = &v136 - v8;
  v150 = sub_25BDDF938();
  v142 = *(v150 - 8);
  v9 = *(v142 + 64);
  MEMORY[0x28223BE20](v150);
  v140 = &v136 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_25BDDF968();
  v139 = *(v141 - 8);
  v11 = *(v139 + 64);
  v12 = MEMORY[0x28223BE20](v141);
  v137 = &v136 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v138 = &v136 - v14;
  v162 = sub_25BDDF878();
  v147 = *(v162 - 8);
  v15 = *(v147 + 64);
  MEMORY[0x28223BE20](v162);
  v145 = &v136 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_25BDDF8E8();
  v156 = *(v157 - 8);
  v17 = *(v156 + 64);
  v18 = MEMORY[0x28223BE20](v157);
  v152 = &v136 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v155 = &v136 - v20;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD878, &qword_25BDE3058);
  v21 = *(*(v158 - 8) + 64);
  MEMORY[0x28223BE20](v158);
  v159 = &v136 - v22;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD880, &qword_25BDE3060);
  v23 = *(*(v176 - 8) + 64);
  MEMORY[0x28223BE20](v176);
  v160 = &v136 - v24;
  v161 = sub_25BDDF718();
  v154 = *(v161 - 8);
  v25 = *(v154 + 64);
  MEMORY[0x28223BE20](v161);
  v153 = &v136 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_25BDDF7A8();
  v165 = *(v166 - 8);
  v27 = *(v165 + 64);
  v28 = MEMORY[0x28223BE20](v166);
  v163 = &v136 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v164 = &v136 - v30;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD888, &qword_25BDE3068);
  v31 = *(*(v188 - 8) + 64);
  MEMORY[0x28223BE20](v188);
  v186 = &v136 - v32;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD890, &qword_25BDE3070);
  v33 = *(*(v173 - 8) + 64);
  MEMORY[0x28223BE20](v173);
  v172 = &v136 - v34;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD898, &qword_25BDE3078);
  v35 = *(*(v182 - 8) + 64);
  MEMORY[0x28223BE20](v182);
  v180 = &v136 - v36;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD8A0, &qword_25BDE3080);
  v37 = *(*(v174 - 8) + 64);
  MEMORY[0x28223BE20](v174);
  v184 = &v136 - v38;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD8A8, &qword_25BDE3088);
  v39 = *(*(v187 - 8) + 64);
  MEMORY[0x28223BE20](v187);
  v175 = &v136 - v40;
  v41 = type metadata accessor for DeviceWarrantySectionView();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v171 = &v136 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = sub_25BDDF958();
  v169 = *(v183 - 8);
  v44 = *(v169 + 8);
  MEMORY[0x28223BE20](v183);
  v168 = &v136 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_25BDDF998();
  v179 = *(v181 - 8);
  v46 = *(v179 + 8);
  v47 = MEMORY[0x28223BE20](v181);
  v167 = &v136 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v178 = &v136 - v49;
  v50 = sub_25BDDFAC8();
  v51 = *(v50 - 8);
  v52 = *(v51 + 64);
  v53 = MEMORY[0x28223BE20](v50);
  v54 = &v136 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v56 = &v136 - v55;
  v57 = *(v51 + 16);
  v177 = a1;
  v57(&v136 - v55, a1, v50);
  v58 = (*(v51 + 88))(v56, v50);
  v59 = *MEMORY[0x277D2B818];
  v170 = v42;
  if (v58 == v59)
  {
    (*(v51 + 96))(v56, v50);
    v60 = v179;
    v61 = *(v179 + 4);
    v166 = v43;
    v62 = v171;
    v63 = v178;
    v64 = v181;
    v61();
    (*(v60 + 2))(v167, v63, v64);
    sub_25BDCF460(v185, v62);
    v57(v54, v177, v50);
    v65 = (*(v170 + 80) + 16) & ~*(v170 + 80);
    v66 = (v166 + *(v51 + 80) + v65) & ~*(v51 + 80);
    v67 = swift_allocObject();
    sub_25BDCF4C4(v62, v67 + v65);
    (*(v51 + 32))(v67 + v66, v54, v50);
    v68 = v168;
    sub_25BDDF948();
    v69 = v169;
    v70 = v183;
    (*(v169 + 2))(v180, v68, v183);
    swift_storeEnumTagMultiPayload();
    sub_25BDCFC90(&qword_27FBDD8C8, MEMORY[0x277D2B748]);
    v71 = v184;
    sub_25BDDFC18();
    sub_25BDA84EC(v71, v172, &qword_27FBDD8A0, &qword_25BDE3080);
    swift_storeEnumTagMultiPayload();
    sub_25BDCD67C();
    sub_25BDCD738();
    v72 = v175;
    sub_25BDDFC18();
    sub_25BDA8554(v71, &qword_27FBDD8A0, &qword_25BDE3080);
    sub_25BDA84EC(v72, v186, &qword_27FBDD8A8, &qword_25BDE3088);
    swift_storeEnumTagMultiPayload();
    sub_25BDCD5F0();
    sub_25BDCD824();
    sub_25BDDFC18();
    sub_25BDA8554(v72, &qword_27FBDD8A8, &qword_25BDE3088);
    (*(v69 + 1))(v68, v70);
    return (*(v179 + 1))(v178, v181);
  }

  v169 = v57;
  v178 = &v136 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = v56;
  v74 = v43;
  v181 = v50;
  v76 = v184;
  v75 = v185;
  v77 = v177;
  if (v58 == *MEMORY[0x277D2B808])
  {
    swift_storeEnumTagMultiPayload();
    sub_25BDCFC90(&qword_27FBDD8C8, MEMORY[0x277D2B748]);
    sub_25BDDFC18();
    sub_25BDA84EC(v76, v172, &qword_27FBDD8A0, &qword_25BDE3080);
    swift_storeEnumTagMultiPayload();
    sub_25BDCD67C();
    sub_25BDCD738();
    v78 = v175;
    sub_25BDDFC18();
    sub_25BDA8554(v76, &qword_27FBDD8A0, &qword_25BDE3080);
    sub_25BDA84EC(v78, v186, &qword_27FBDD8A8, &qword_25BDE3088);
    swift_storeEnumTagMultiPayload();
    sub_25BDCD5F0();
    sub_25BDCD824();
    sub_25BDDFC18();
    sub_25BDA8554(v78, &qword_27FBDD8A8, &qword_25BDE3088);
    v79 = *(v51 + 8);
    v80 = v179;
    return v79(v80, v181);
  }

  if (v58 == *MEMORY[0x277D2B7F8])
  {
    v81 = v179;
    v82 = v181;
    (*(v51 + 96))(v179, v181);
    v83 = v165;
    v84 = v164;
    v85 = v81;
    v86 = v166;
    (*(v165 + 32))(v164, v85, v166);
    (*(v83 + 16))(v163, v84, v86);
    v87 = v171;
    sub_25BDCF460(v75, v171);
    v88 = v178;
    v169(v178, v77, v82);
    v89 = (*(v170 + 80) + 16) & ~*(v170 + 80);
    v90 = (v74 + *(v51 + 80) + v89) & ~*(v51 + 80);
    v91 = swift_allocObject();
    sub_25BDCF4C4(v87, v91 + v89);
    (*(v51 + 32))(v91 + v90, v88, v82);
    v92 = v153;
    sub_25BDDF708();
    v93 = v154;
    v94 = v161;
    (*(v154 + 16))(v159, v92, v161);
    swift_storeEnumTagMultiPayload();
    sub_25BDCFC90(&qword_27FBDD4C8, MEMORY[0x277D2B680]);
    sub_25BDCFC90(&qword_27FBDD8D8, MEMORY[0x277D2B700]);
    v95 = v160;
    sub_25BDDFC18();
    sub_25BDA84EC(v95, v172, &qword_27FBDD880, &qword_25BDE3060);
    swift_storeEnumTagMultiPayload();
    sub_25BDCD67C();
    sub_25BDCD738();
    v96 = v175;
    sub_25BDDFC18();
    sub_25BDA8554(v95, &qword_27FBDD880, &qword_25BDE3060);
    sub_25BDA84EC(v96, v186, &qword_27FBDD8A8, &qword_25BDE3088);
    swift_storeEnumTagMultiPayload();
    sub_25BDCD5F0();
    sub_25BDCD824();
    sub_25BDDFC18();
    sub_25BDA8554(v96, &qword_27FBDD8A8, &qword_25BDE3088);
    (*(v93 + 8))(v92, v94);
    v97 = *(v165 + 8);
    v98 = v164;
    v99 = &v191;
  }

  else
  {
    v100 = v171;
    if (v58 != *MEMORY[0x277D2B800])
    {
      if (v58 == *MEMORY[0x277D2B810])
      {
        v119 = v179;
        (*(v51 + 96))(v179, v181);
        v120 = v139;
        v121 = v138;
        v122 = v141;
        (*(v139 + 32))(v138, v119, v141);
        (*(v120 + 16))(v137, v121, v122);
        v123 = v140;
        sub_25BDDF928();
        v124 = v142;
        v125 = v150;
        (*(v142 + 16))(v149, v123, v150);
        swift_storeEnumTagMultiPayload();
        sub_25BDCFC90(&qword_27FBDD8B0, MEMORY[0x277D2B738]);
        v126 = v151;
        sub_25BDDFC18();
        sub_25BDA84EC(v126, v186, &qword_27FBDD870, &qword_25BDE3050);
        swift_storeEnumTagMultiPayload();
        sub_25BDCD5F0();
        sub_25BDCD824();
        sub_25BDDFC18();
        sub_25BDA8554(v126, &qword_27FBDD870, &qword_25BDE3050);
        (*(v124 + 8))(v123, v125);
        return (*(v120 + 8))(v121, v122);
      }

      v127 = sub_25BDB7ADC();
      v128 = v143;
      (*(v146 + 16))(v144, v127, v143);
      v129 = sub_25BDDF648();
      v130 = sub_25BDDFFC8();
      v131 = os_log_type_enabled(v129, v130);
      v132 = v186;
      v133 = v179;
      if (v131)
      {
        v134 = swift_slowAlloc();
        *v134 = 0;
        _os_log_impl(&dword_25BD8D000, v129, v130, "Should not hit unknown default case", v134, 2u);
        MEMORY[0x25F87C8F0](v134, -1, -1);
      }

      (*(v146 + 8))(v144, v128);
      swift_storeEnumTagMultiPayload();
      sub_25BDCFC90(&qword_27FBDD8B0, MEMORY[0x277D2B738]);
      v135 = v151;
      sub_25BDDFC18();
      sub_25BDA84EC(v135, v132, &qword_27FBDD870, &qword_25BDE3050);
      swift_storeEnumTagMultiPayload();
      sub_25BDCD5F0();
      sub_25BDCD824();
      sub_25BDDFC18();
      sub_25BDA8554(v135, &qword_27FBDD870, &qword_25BDE3050);
      v79 = *(v51 + 8);
      v80 = v133;
      return v79(v80, v181);
    }

    v101 = v185;
    v102 = v51;
    v103 = *(v51 + 96);
    v104 = v179;
    v184 = v52;
    v105 = v181;
    v103(v179);
    v106 = v156;
    v107 = v155;
    v108 = v104;
    v109 = v157;
    (*(v156 + 32))(v155, v108, v157);
    (*(v106 + 16))(v152, v107, v109);
    sub_25BDCF460(v101, v100);
    v110 = v178;
    v169(v178, v77, v105);
    v111 = (*(v170 + 80) + 16) & ~*(v170 + 80);
    v112 = (v74 + *(v102 + 80) + v111) & ~*(v102 + 80);
    v113 = swift_allocObject();
    sub_25BDCF4C4(v100, v113 + v111);
    (*(v102 + 32))(v113 + v112, v110, v105);
    v114 = v145;
    sub_25BDDF868();
    v115 = v147;
    v116 = v162;
    (*(v147 + 16))(v159, v114, v162);
    swift_storeEnumTagMultiPayload();
    sub_25BDCFC90(&qword_27FBDD4C8, MEMORY[0x277D2B680]);
    sub_25BDCFC90(&qword_27FBDD8D8, MEMORY[0x277D2B700]);
    v117 = v160;
    sub_25BDDFC18();
    sub_25BDA84EC(v117, v172, &qword_27FBDD880, &qword_25BDE3060);
    swift_storeEnumTagMultiPayload();
    sub_25BDCD67C();
    sub_25BDCD738();
    v118 = v175;
    sub_25BDDFC18();
    sub_25BDA8554(v117, &qword_27FBDD880, &qword_25BDE3060);
    sub_25BDA84EC(v118, v186, &qword_27FBDD8A8, &qword_25BDE3088);
    swift_storeEnumTagMultiPayload();
    sub_25BDCD5F0();
    sub_25BDCD824();
    sub_25BDDFC18();
    sub_25BDA8554(v118, &qword_27FBDD8A8, &qword_25BDE3088);
    (*(v115 + 8))(v114, v116);
    v97 = *(v156 + 8);
    v98 = v155;
    v99 = &v189;
  }

  return v97(v98, *(v99 - 32));
}

unint64_t sub_25BDCD5F0()
{
  result = qword_27FBDD8B8;
  if (!qword_27FBDD8B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD8A8, &qword_25BDE3088);
    sub_25BDCD67C();
    sub_25BDCD738();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD8B8);
  }

  return result;
}

unint64_t sub_25BDCD67C()
{
  result = qword_27FBDD8C0;
  if (!qword_27FBDD8C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD8A0, &qword_25BDE3080);
    sub_25BDCFC90(&qword_27FBDD8C8, MEMORY[0x277D2B748]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD8C0);
  }

  return result;
}

unint64_t sub_25BDCD738()
{
  result = qword_27FBDD8D0;
  if (!qword_27FBDD8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD880, &qword_25BDE3060);
    sub_25BDCFC90(&qword_27FBDD4C8, MEMORY[0x277D2B680]);
    sub_25BDCFC90(&qword_27FBDD8D8, MEMORY[0x277D2B700]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD8D0);
  }

  return result;
}

unint64_t sub_25BDCD824()
{
  result = qword_27FBDD8E0;
  if (!qword_27FBDD8E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD870, &qword_25BDE3050);
    sub_25BDCFC90(&qword_27FBDD8B0, MEMORY[0x277D2B738]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD8E0);
  }

  return result;
}

uint64_t sub_25BDCD8E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD2D8, &qword_25BDE2990);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v6 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7D8, &qword_25BDE2F30);
  sub_25BDDFD58();
  v4 = v6[1];
  sub_25BDDFAA8();
  (*(*v4 + 632))(v3);

  return sub_25BDA8554(v3, &qword_27FBDD2D8, &qword_25BDE2990);
}

uint64_t sub_25BDCD9F4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD8E8, &unk_25BDE3090);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-v4];
  v15 = v0;
  v6 = v0 + *(type metadata accessor for DeviceWarrantySectionView() + 20);
  v7 = sub_25BDDF768();
  if (v8)
  {
    v16 = v7;
    v17 = v8;
    sub_25BDBBE6C();
    v9 = sub_25BDDFC98();
    v12 = v11 & 1;
  }

  else
  {
    v9 = 0;
    v12 = 0;
    v10 = 0;
  }

  v16 = v9;
  v17 = v8;
  v18 = v12;
  v19 = v10;
  sub_25BDCDD58(v1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD4F8, &qword_25BDE29F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD8F0, &qword_25BDE30A0);
  sub_25BDBBA68();
  sub_25BDCF7A4();
  sub_25BDCF8B4();
  return sub_25BDDFD38();
}

uint64_t sub_25BDCDB70(uint64_t a1)
{
  v2 = type metadata accessor for DeviceWarrantySectionView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = a1 + *(MEMORY[0x28223BE20](v2 - 8) + 28);
  v9[1] = sub_25BDDF738();
  swift_getKeyPath();
  sub_25BDCF460(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_25BDCF4C4(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD988, &qword_25BDE3248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD908, &qword_25BDE30A8);
  sub_25BDBC1A0(&qword_27FBDD990, &qword_27FBDD988, &qword_25BDE3248);
  sub_25BDCF828();
  return sub_25BDDFD18();
}

uint64_t sub_25BDCDD2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25BDDFAB8();
  *a1 = result;
  return result;
}

uint64_t sub_25BDCDD58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD578, &qword_25BDE30D0);
  v3 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v5 = &v58 - v4;
  v6 = type metadata accessor for DeviceWarrantySectionView();
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD940, &qword_25BDE30C8);
  v10 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v12 = &v58 - v11;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD958, &qword_25BDE3178);
  v13 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v64 = &v58 - v14;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD960, &qword_25BDE3180);
  v15 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v17 = (&v58 - v16);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD930, &unk_25BDE30B8);
  v18 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v61 = &v58 - v19;
  v20 = *(v7 + 28);
  v21 = sub_25BDDF758();
  if (v22)
  {
    *&v68 = v21;
    *(&v68 + 1) = v22;
    sub_25BDBBE6C();
    v23 = sub_25BDDFC98();
    v25 = v24;
    v27 = v26;
    sub_25BDDFC68();
    v58 = sub_25BDDFC88();
    v29 = v28;
    v31 = v30;
    v33 = v32;

    sub_25BDBC080(v23, v25, v27 & 1);

    sub_25BDDFDA8();
    sub_25BDDFB98();
    v31 &= 1u;
    v77 = v31;
    KeyPath = swift_getKeyPath();
    *&v68 = v58;
    *(&v68 + 1) = v29;
    LOBYTE(v69) = v31;
    *(&v69 + 1) = v33;
    v74 = v82;
    v75 = v83;
    v76[0] = v84;
    v70 = v78;
    v71 = v79;
    v73 = v81;
    v72 = v80;
    *&v76[1] = KeyPath;
    BYTE8(v76[1]) = 0;
    v35 = v69;
    *v17 = v68;
    v17[1] = v35;
    v36 = v70;
    v37 = v71;
    v38 = v73;
    v17[4] = v72;
    v17[5] = v38;
    v17[2] = v36;
    v17[3] = v37;
    v39 = v74;
    v40 = v75;
    v41 = v76[0];
    *(v17 + 137) = *(v76 + 9);
    v17[7] = v40;
    v17[8] = v41;
    v17[6] = v39;
    swift_storeEnumTagMultiPayload();
    sub_25BDA84EC(&v68, &v67, &qword_27FBDD548, &qword_25BDE2A10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD548, &qword_25BDE2A10);
    sub_25BDBBD30();
    sub_25BDBC1A0(&qword_27FBDD938, &qword_27FBDD940, &qword_25BDE30C8);
    v42 = v61;
    sub_25BDDFC18();
    sub_25BDA84EC(v42, v64, &qword_27FBDD930, &unk_25BDE30B8);
    swift_storeEnumTagMultiPayload();
    sub_25BDCF9F0();
    sub_25BDBC1A0(&qword_27FBDD570, &qword_27FBDD578, &qword_25BDE30D0);
    v43 = v66;
    sub_25BDDFC18();
    sub_25BDA8554(&v68, &qword_27FBDD548, &qword_25BDE2A10);
    sub_25BDA8554(v42, &qword_27FBDD930, &unk_25BDE30B8);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD920, &qword_25BDE30B0);
    return (*(*(v44 - 8) + 56))(v43, 0, 1, v44);
  }

  else
  {
    v46 = *(sub_25BDDF728() + 16);

    if (v46)
    {
      *v12 = sub_25BDDFC08();
      *(v12 + 1) = 0;
      v12[16] = 1;
      v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD968, &qword_25BDE3188) + 44);
      *&v68 = sub_25BDDF728();
      swift_getKeyPath();
      sub_25BDCF460(a1, &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
      v47 = (*(v8 + 80) + 16) & ~*(v8 + 80);
      v48 = swift_allocObject();
      sub_25BDCF4C4(&v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v48 + v47);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD970, &unk_25BDE31C0);
      sub_25BDDF8D8();
      sub_25BDBC1A0(&qword_27FBDD978, &qword_27FBDD970, &unk_25BDE31C0);
      sub_25BDCFC90(&qword_27FBDD980, MEMORY[0x277D2B720]);
      sub_25BDDFD18();
      sub_25BDA84EC(v12, v17, &qword_27FBDD940, &qword_25BDE30C8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD548, &qword_25BDE2A10);
      sub_25BDBBD30();
      sub_25BDBC1A0(&qword_27FBDD938, &qword_27FBDD940, &qword_25BDE30C8);
      v49 = v61;
      sub_25BDDFC18();
      sub_25BDA84EC(v49, v64, &qword_27FBDD930, &unk_25BDE30B8);
      swift_storeEnumTagMultiPayload();
      sub_25BDCF9F0();
      sub_25BDBC1A0(&qword_27FBDD570, &qword_27FBDD578, &qword_25BDE30D0);
      v50 = v66;
      sub_25BDDFC18();
      sub_25BDA8554(v49, &qword_27FBDD930, &unk_25BDE30B8);
      sub_25BDA8554(v12, &qword_27FBDD940, &qword_25BDE30C8);
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD920, &qword_25BDE30B0);
      return (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
    }

    else if (sub_25BDDF748() & 1) != 0 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7D8, &qword_25BDE2F30), v52 = sub_25BDDFD58(), v53 = (*(*v68 + 296))(v52), , (v53))
    {
      *v5 = sub_25BDDFBF8();
      *(v5 + 1) = 0;
      v5[16] = 1;
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD5A8, &qword_25BDE2AD0);
      sub_25BDCEA44(a1, &v5[*(v54 + 44)]);
      sub_25BDA84EC(v5, v64, &qword_27FBDD578, &qword_25BDE30D0);
      swift_storeEnumTagMultiPayload();
      sub_25BDCF9F0();
      sub_25BDBC1A0(&qword_27FBDD570, &qword_27FBDD578, &qword_25BDE30D0);
      v55 = v66;
      sub_25BDDFC18();
      sub_25BDA8554(v5, &qword_27FBDD578, &qword_25BDE30D0);
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD920, &qword_25BDE30B0);
      return (*(*(v56 - 8) + 56))(v55, 0, 1, v56);
    }

    else
    {
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD920, &qword_25BDE30B0);
      return (*(*(v57 - 8) + 56))(v66, 1, 1, v57);
    }
  }
}

uint64_t sub_25BDCE7BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25BDDF908();
  *a1 = result;
  return result;
}

uint64_t sub_25BDCE7E8(uint64_t a1)
{
  v2 = sub_25BDDF918();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7D8, &qword_25BDE2F30);
  sub_25BDDFD58();
  v6 = v9[1];
  v7 = swift_allocObject();
  *(v7 + 16) = sub_25BDCFCD8;
  *(v7 + 24) = v6;
  return sub_25BDDF8C8();
}

uint64_t sub_25BDCE91C(uint64_t a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD2D8, &qword_25BDE2990);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  v8 = sub_25BDDFA98();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  a2(v7);
  return sub_25BDA8554(v7, &qword_27FBDD2D8, &qword_25BDE2990);
}

uint64_t sub_25BDCEA44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v3 = sub_25BDDFC38();
  v65 = *(v3 - 8);
  v66 = v3;
  v4 = *(v65 + 64);
  MEMORY[0x28223BE20](v3);
  v64 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD5B0, &qword_25BDE2E00);
  v62 = *(v6 - 8);
  v63 = v6;
  v7 = *(v62 + 64);
  MEMORY[0x28223BE20](v6);
  v61 = &v60 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD5B8, &unk_25BDE2B10);
  v70 = *(v9 - 8);
  v71 = v9;
  v10 = *(v70 + 64);
  MEMORY[0x28223BE20](v9);
  v60 = &v60 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD5C0, &unk_25BDE3200);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v73 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v72 = &v60 - v16;
  v67 = sub_25BDDF988();
  v17 = *(v67 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v67);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD298, &unk_25BDE2B20);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v60 - v23;
  v25 = sub_25BDDF438();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v60 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v60 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD5C8, &qword_25BDE3210);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v68 = &v60 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v38 = &v60 - v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7D8, &qword_25BDE2F30);
  v69 = a1;
  v39 = sub_25BDDFD58();
  (*(*v75 + 248))(v39);

  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_25BDA8554(v24, &qword_27FBDD298, &unk_25BDE2B20);
    v40 = 1;
    v41 = v67;
  }

  else
  {
    (*(v26 + 32))(v32, v24, v25);
    (*(v26 + 16))(v30, v32, v25);
    sub_25BDDF978();
    (*(v26 + 8))(v32, v25);
    v42 = v67;
    (*(v17 + 32))(v38, v20, v67);
    v40 = 0;
    v41 = v42;
  }

  (*(v17 + 56))(v38, v40, 1, v41);
  v43 = sub_25BDDFD58();
  v44 = (*(*v75 + 344))(v43);

  v45 = 1;
  v46 = v71;
  v47 = v72;
  v48 = v70;
  if (v44)
  {
    v49 = v61;
    sub_25BDDFB78();
    v50 = v64;
    sub_25BDDFC28();
    sub_25BDBC1A0(&qword_27FBDD5D8, &qword_27FBDD5B0, &qword_25BDE2E00);
    sub_25BDCFC90(&qword_27FBDD5E0, MEMORY[0x277CDE330]);
    v51 = v60;
    v52 = v63;
    v53 = v66;
    sub_25BDDFCD8();
    (*(v65 + 8))(v50, v53);
    (*(v62 + 8))(v49, v52);
    (*(v48 + 32))(v47, v51, v46);
    v45 = 0;
  }

  (*(v48 + 56))(v47, v45, 1, v46);
  v54 = v68;
  sub_25BDA84EC(v38, v68, &qword_27FBDD5C8, &qword_25BDE3210);
  v55 = v73;
  sub_25BDA84EC(v47, v73, &qword_27FBDD5C0, &unk_25BDE3200);
  v56 = v74;
  sub_25BDA84EC(v54, v74, &qword_27FBDD5C8, &qword_25BDE3210);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD5D0, &qword_25BDE2B30);
  v58 = v56 + *(v57 + 48);
  *v58 = 0;
  *(v58 + 8) = 1;
  sub_25BDA84EC(v55, v56 + *(v57 + 64), &qword_27FBDD5C0, &unk_25BDE3200);
  sub_25BDA8554(v47, &qword_27FBDD5C0, &unk_25BDE3200);
  sub_25BDA8554(v38, &qword_27FBDD5C8, &qword_25BDE3210);
  sub_25BDA8554(v55, &qword_27FBDD5C0, &unk_25BDE3200);
  return sub_25BDA8554(v54, &qword_27FBDD5C8, &qword_25BDE3210);
}

uint64_t sub_25BDCF210@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  type metadata accessor for DeviceWarrantyViewModel();
  sub_25BDCFC90(&qword_27FBDD290, type metadata accessor for DeviceWarrantyViewModel);
  sub_25BDDFD88();
  v4 = *(type metadata accessor for DeviceWarrantySectionView() + 20);
  v5 = sub_25BDDF778();
  v6 = *(*(v5 - 8) + 32);

  return v6(a2 + v4, a1, v5);
}

uint64_t sub_25BDCF2E8(uint64_t a1)
{
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD8E8, &unk_25BDE3090);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v16[-v6];
  v17 = v1;
  v8 = v1 + *(a1 + 20);
  v9 = sub_25BDDF768();
  if (v10)
  {
    v18 = v9;
    v19 = v10;
    sub_25BDBBE6C();
    v11 = sub_25BDDFC98();
    v14 = v13 & 1;
  }

  else
  {
    v11 = 0;
    v14 = 0;
    v12 = 0;
  }

  v18 = v11;
  v19 = v10;
  v20 = v14;
  v21 = v12;
  sub_25BDCDD58(v3, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD4F8, &qword_25BDE29F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD8F0, &qword_25BDE30A0);
  sub_25BDBBA68();
  sub_25BDCF7A4();
  sub_25BDCF8B4();
  return sub_25BDDFD38();
}

uint64_t sub_25BDCF460(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceWarrantySectionView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BDCF4C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceWarrantySectionView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_4()
{
  v1 = (type metadata accessor for DeviceWarrantySectionView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_25BDDFAC8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7D8, &qword_25BDE2F30);
  (*(*(v11 - 8) + 8))(v0 + v3, v11);
  v12 = v1[7];
  v13 = sub_25BDDF778();
  (*(*(v13 - 8) + 8))(v0 + v3 + v12, v13);
  (*(v6 + 8))(v0 + v8, v5);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_25BDCF6DC()
{
  v0 = *(type metadata accessor for DeviceWarrantySectionView() - 8);
  v1 = (*(v0 + 80) + 16) & ~*(v0 + 80);
  v2 = *(v0 + 64);
  v3 = *(*(sub_25BDDFAC8() - 8) + 80);
  return sub_25BDCD8E0();
}

unint64_t sub_25BDCF7A4()
{
  result = qword_27FBDD8F8;
  if (!qword_27FBDD8F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD8F0, &qword_25BDE30A0);
    sub_25BDCF828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD8F8);
  }

  return result;
}

unint64_t sub_25BDCF828()
{
  result = qword_27FBDD900;
  if (!qword_27FBDD900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD908, &qword_25BDE30A8);
    sub_25BDCD5F0();
    sub_25BDCD824();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD900);
  }

  return result;
}

unint64_t sub_25BDCF8B4()
{
  result = qword_27FBDD910;
  if (!qword_27FBDD910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD8E8, &unk_25BDE3090);
    sub_25BDCF938();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD910);
  }

  return result;
}

unint64_t sub_25BDCF938()
{
  result = qword_27FBDD918;
  if (!qword_27FBDD918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD920, &qword_25BDE30B0);
    sub_25BDCF9F0();
    sub_25BDBC1A0(&qword_27FBDD570, &qword_27FBDD578, &qword_25BDE30D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD918);
  }

  return result;
}

unint64_t sub_25BDCF9F0()
{
  result = qword_27FBDD928;
  if (!qword_27FBDD928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD930, &unk_25BDE30B8);
    sub_25BDBBD30();
    sub_25BDBC1A0(&qword_27FBDD938, &qword_27FBDD940, &qword_25BDE30C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD928);
  }

  return result;
}

void sub_25BDCFAEC()
{
  sub_25BDCB6F0();
  if (v0 <= 0x3F)
  {
    sub_25BDDF778();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_25BDCFB70()
{
  result = qword_27FBDD948;
  if (!qword_27FBDD948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD950, &qword_25BDE3170);
    sub_25BDBBA68();
    sub_25BDCF7A4();
    sub_25BDCF8B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD948);
  }

  return result;
}

uint64_t sub_25BDCFC10(uint64_t a1)
{
  v2 = *(*(type metadata accessor for DeviceWarrantySectionView() - 8) + 80);

  return sub_25BDCE7E8(a1);
}

uint64_t sub_25BDCFC90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_12Tm()
{
  v1 = (type metadata accessor for DeviceWarrantySectionView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7D8, &qword_25BDE2F30);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[7];
  v7 = sub_25BDDF778();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25BDCFE30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for DeviceWarrantySectionView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  return sub_25BDCBCE4(a1, a2);
}

uint64_t sub_25BDCFF74(uint64_t a1, void *aBlock)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;

  v3(sub_25BDA8148, v5);
}

uint64_t sub_25BDD00B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[4] = a1;
  v7[5] = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_25BDB688C;
  v7[3] = &block_descriptor_27;
  v4 = _Block_copy(v7);
  v5 = *(a3 + 16);

  v5(a3, v4);
  _Block_release(v4);
}

uint64_t (*sub_25BDD022C())()
{
  v1 = [v0 specifier];
  if (!v1)
  {
    v11 = 0u;
    v12 = 0u;
LABEL_9:
    sub_25BDD1CE4(&v11);
    return 0;
  }

  v2 = v1;
  v3 = sub_25BDC4A5C();
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];

  v6 = sub_25BDDFE38();

  v7 = [v2 propertyForKey_];

  if (v7)
  {
    sub_25BDE00B8();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (!*(&v10 + 1))
  {
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7C0, &qword_25BDE2F18);
  if (swift_dynamicCast())
  {
    *(swift_allocObject() + 16) = v9;
    return sub_25BDD1D4C;
  }

  return 0;
}

id sub_25BDD03CC(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  sub_25BDD044C(a3);
  v6 = v5;

  if (v6)
  {
    v7 = sub_25BDDFE38();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_25BDD044C(uint64_t (*a1)(void))
{
  v3 = [v1 specifier];
  if (!v3)
  {
    v13 = 0u;
    v14 = 0u;
LABEL_11:
    sub_25BDD1CE4(&v13);
    return 0;
  }

  v4 = v3;
  v5 = a1();
  swift_beginAccess();
  v7 = *v5;
  v6 = v5[1];

  v8 = sub_25BDDFE38();

  v9 = [v4 propertyForKey_];

  if (v9)
  {
    sub_25BDE00B8();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13 = v11;
  v14 = v12;
  if (!*(&v12 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

id sub_25BDD058C()
{
  v1 = v0;
  v2 = sub_25BDDF668();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = [v1 refreshSpecifiers];
  v11 = sub_25BDB7ADC();
  v12 = *(v3 + 16);
  if (v10)
  {
    v12(v7, v11, v2);
    v13 = sub_25BDDF648();
    v14 = sub_25BDDFFE8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_25BD8D000, v13, v14, "Device details exiting, refreshing specifiers", v15, 2u);
      MEMORY[0x25F87C8F0](v15, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
    v10[2](v10);
    _Block_release(v10);
  }

  else
  {
    v12(v9, v11, v2);
    v16 = sub_25BDDF648();
    v17 = sub_25BDDFFE8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_25BD8D000, v16, v17, "Device details exiting, unable to refresh specifiers", v18, 2u);
      MEMORY[0x25F87C8F0](v18, -1, -1);
    }

    (*(v3 + 8))(v9, v2);
  }

  v20.receiver = v1;
  v20.super_class = NDODeviceDetailsViewController;
  return objc_msgSendSuper2(&v20, sel_dealloc);
}

Swift::Void __swiftcall NDODeviceDetailsViewController.viewDidLoad()()
{
  v1 = v0;
  v2 = sub_25BDDF668();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  v9 = [objc_opt_self() systemGroupedBackgroundColor];
  [v8 setBackgroundColor_];

  v10 = [objc_opt_self() defaultStore];
  if (!v10)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v11 = v10;
  v12 = [v10 aida_accountForPrimaryiCloudAccount];

  if (v12)
  {

    [v1 loadCoverageDetailsContentViewController];
    v13 = sub_25BDB5E14();

    sub_25BDC07B4(v13, 1);
  }

  else
  {
    v14 = sub_25BDB7ADC();
    (*(v3 + 16))(v6, v14, v2);
    v15 = sub_25BDDF648();
    v16 = sub_25BDDFFC8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_25BD8D000, v15, v16, "Not loading device details due to no signed in account", v17, 2u);
      MEMORY[0x25F87C8F0](v17, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    v19[3] = sub_25BDDFB58();
    v19[4] = MEMORY[0x277D74D18];
    __swift_allocate_boxed_opaque_existential_1(v19);
    sub_25BDC42D8();
    sub_25BDE0008();
  }
}

id NDODeviceDetailsViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_25BDDFE38();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:a3];

  return v5;
}

{
  v5 = &v3[OBJC_IVAR___NDODeviceDetailsViewController_createViewController];
  *v5 = 0;
  *(v5 + 1) = 0;
  if (a2)
  {
    v6 = sub_25BDDFE38();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = NDODeviceDetailsViewController;
  v7 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, v6, a3);

  return v7;
}

id NDODeviceDetailsViewController.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

{
  v3 = (v1 + OBJC_IVAR___NDODeviceDetailsViewController_createViewController);
  *v3 = 0;
  v3[1] = 0;
  v6.super_class = NDODeviceDetailsViewController;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id sub_25BDD0E20(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v8[4] = a1;
  v8[5] = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_25BDCFF74;
  v8[3] = &block_descriptor_6;
  v5 = _Block_copy(v8);
  v6 = [v4 initWithViewControllerCreation_];
  _Block_release(v5);

  return v6;
}

char *sub_25BDD0EE4(uint64_t a1, uint64_t a2)
{
  v5 = [v2 init];
  v6 = &v5[OBJC_IVAR___NDODeviceDetailsViewController_createViewController];
  v7 = *&v5[OBJC_IVAR___NDODeviceDetailsViewController_createViewController];
  v8 = *&v5[OBJC_IVAR___NDODeviceDetailsViewController_createViewController + 8];
  *v6 = a1;
  *(v6 + 1) = a2;
  v9 = v5;
  sub_25BDA8480(v7);

  return v9;
}

id sub_25BDD0FF0()
{
  v1 = v0;
  v2 = sub_25BDDF668();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NDOSignpost();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - v12;
  v39 = sub_25BDDFB58();
  v40 = MEMORY[0x277D74D18];
  __swift_allocate_boxed_opaque_existential_1(aBlock);
  sub_25BDDFB48();
  sub_25BDE0008();
  v14 = [v0 createViewController];
  if (v14)
  {
    v15 = v14;
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v40 = sub_25BDD1C10;
    v41 = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25BDB688C;
    v39 = &block_descriptor_7_0;
    v17 = _Block_copy(aBlock);
    v18 = v15[2];
    swift_retain_n();
    v18(v15, v17);
    _Block_release(v15);

    _Block_release(v17);
  }

  v20 = [v0 serialNumber];
  if (v20)
  {
    v21 = v20;
    v37 = sub_25BDDFE48();
    v23 = v22;

    v24 = [v1 source];
    if (v24)
    {
      v25 = v24;
      v26 = sub_25BDDFE48();
      v28 = v27;

      sub_25BDA23D4(1u, v13);
      v29 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_25BDAB79C(v13, v11);
      v30 = (*(v8 + 80) + 24) & ~*(v8 + 80);
      v31 = swift_allocObject();
      *(v31 + 16) = v29;
      sub_25BDAB800(v11, v31 + v30);

      sub_25BDA2664(v37, v23, v26, v28, sub_25BDD1B64, v31);

      sub_25BDAB92C(v13);
    }
  }

  v32 = sub_25BDB7ADC();
  (*(v3 + 16))(v6, v32, v2);
  v33 = sub_25BDDF648();
  v34 = sub_25BDDFFC8();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_25BD8D000, v33, v34, "Missing necessary properties to load coverage details", v35, 2u);
    MEMORY[0x25F87C8F0](v35, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  return [v1 embedViewControllerWithController_];
}

void sub_25BDD14A4(void *a1)
{
  v2 = v1;
  v4 = sub_25BDDF668();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v55 = a1;
    v9 = [v55 view];
    if (v9)
    {
      v10 = v9;
      [v9 setTranslatesAutoresizingMaskIntoConstraints_];

      [v2 addChildViewController_];
      v11 = [v2 view];
      if (v11)
      {
        v12 = v11;
        v13 = [v55 view];
        if (v13)
        {
          v14 = v13;
          [v12 addSubview_];

          v58 = 0;
          v56 = 0u;
          v57 = 0u;
          sub_25BDE0008();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD430, &unk_25BDE2490);
          v15 = swift_allocObject();
          *(v15 + 16) = xmmword_25BDE2440;
          v16 = [v55 view];
          if (v16)
          {
            v17 = v16;
            v18 = [v16 topAnchor];

            v19 = [v2 view];
            if (v19)
            {
              v20 = v19;
              v21 = [v19 topAnchor];

              v22 = [v18 constraintEqualToAnchor_];
              *(v15 + 32) = v22;
              v23 = [v55 view];
              if (v23)
              {
                v24 = v23;
                v25 = [v23 bottomAnchor];

                v26 = [v2 view];
                if (v26)
                {
                  v27 = v26;
                  v28 = [v26 bottomAnchor];

                  v29 = [v25 constraintEqualToAnchor_];
                  *(v15 + 40) = v29;
                  v30 = [v55 view];
                  if (v30)
                  {
                    v31 = v30;
                    v32 = [v30 leadingAnchor];

                    v33 = [v2 view];
                    if (v33)
                    {
                      v34 = v33;
                      v35 = [v33 safeAreaLayoutGuide];

                      v36 = [v35 leadingAnchor];
                      v37 = [v32 constraintEqualToAnchor_];

                      *(v15 + 48) = v37;
                      v38 = [v55 view];
                      if (v38)
                      {
                        v39 = v38;
                        v40 = [v38 trailingAnchor];

                        v41 = [v2 view];
                        if (v41)
                        {
                          v42 = v41;
                          v43 = objc_opt_self();
                          v44 = [v42 safeAreaLayoutGuide];

                          v45 = [v44 trailingAnchor];
                          v46 = [v40 constraintEqualToAnchor_];

                          *(v15 + 56) = v46;
                          sub_25BDABD64(0, &qword_27FBDD280, 0x277CCAAD0);
                          v47 = sub_25BDDFEC8();

                          [v43 activateConstraints_];

                          [v55 didMoveToParentViewController_];
                          v48 = v55;

                          return;
                        }

LABEL_29:
                        __break(1u);
                        return;
                      }

LABEL_28:
                      __break(1u);
                      goto LABEL_29;
                    }

LABEL_27:
                    __break(1u);
                    goto LABEL_28;
                  }

LABEL_26:
                  __break(1u);
                  goto LABEL_27;
                }

LABEL_25:
                __break(1u);
                goto LABEL_26;
              }

LABEL_24:
              __break(1u);
              goto LABEL_25;
            }

LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }

  v49 = sub_25BDB7ADC();
  (*(v5 + 16))(v8, v49, v4);
  v50 = sub_25BDDF648();
  v51 = sub_25BDDFFC8();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_25BD8D000, v50, v51, "Unable to embed nil view controller, displaying error state", v52, 2u);
    MEMORY[0x25F87C8F0](v52, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v53 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(&v57 + 1) = sub_25BDDFB58();
  v58 = MEMORY[0x277D74D18];
  __swift_allocate_boxed_opaque_existential_1(&v56);

  sub_25BDC4414(sub_25BDD1C84, v53);

  sub_25BDE0008();
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_25BDD1B64(uint64_t a1)
{
  v3 = *(*(type metadata accessor for NDOSignpost() - 8) + 80);
  v4 = *(v1 + 16);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    [Strong embedViewControllerWithController_];
  }

  sub_25BDB4990();
}

void sub_25BDD1C10(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong embedViewControllerWithController_];
  }
}

void sub_25BDD1C84()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong loadCoverageDetailsContentViewController];
  }
}

uint64_t sub_25BDD1CE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD1B0, &qword_25BDE23F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25BDD1D4C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

id sub_25BDD1D98()
{
  v0 = objc_allocWithZone(MEMORY[0x277D2D0C8]);

  return [v0 init];
}

uint64_t sub_25BDD1DD0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v65 = a6;
  v66 = a8;
  v60 = a5;
  v67 = a4;
  v68 = a2;
  v69 = a1;
  v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBDD9A0, &unk_25BDE2670) - 8);
  v10 = *(v63 + 64);
  v11 = (MEMORY[0x28223BE20])();
  v64 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v12;
  MEMORY[0x28223BE20](v11);
  v71 = &v55 - v13;
  v14 = sub_25BDDF408();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_25BDDF668();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_25BDB7ADC();
  v25 = *(v20 + 16);
  v58 = v19;
  v25(v23, v24, v19);
  v70 = v15;
  v26 = *(v15 + 16);
  v61 = a3;
  v59 = v26;
  v26(v18, a3, v14);
  v27 = sub_25BDDF648();
  v28 = sub_25BDDFFE8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v57 = a7;
    v30 = v29;
    v56 = swift_slowAlloc();
    aBlock[0] = v56;
    *v30 = 136315138;
    sub_25BDD4B2C(&unk_27FBDD0E0, MEMORY[0x277CC9260]);
    v31 = sub_25BDE01A8();
    v33 = v32;
    (*(v70 + 8))(v18, v14);
    v34 = sub_25BDA6444(v31, v33, aBlock);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_25BD8D000, v27, v28, "Making AMSUI view controller for %s", v30, 0xCu);
    v35 = v56;
    __swift_destroy_boxed_opaque_existential_0(v56);
    MEMORY[0x25F87C8F0](v35, -1, -1);
    v36 = v30;
    a7 = v57;
    MEMORY[0x25F87C8F0](v36, -1, -1);
  }

  else
  {

    (*(v70 + 8))(v18, v14);
  }

  (*(v20 + 8))(v23, v58);
  v37 = objc_allocWithZone(MEMORY[0x277D2D0A8]);
  v38 = sub_25BDDFDF8();
  v60 = [v37 initWithRequestType:3 serialNumber:0 universalLinkPath:0 additionalBody:v38];

  v39 = v71;
  v59(v71, v61, v14);
  (*(v70 + 56))(v39, 0, 1, v14);
  v40 = swift_allocObject();
  v41 = v66;
  *(v40 + 16) = a7;
  *(v40 + 24) = v41;
  v42 = v64;
  sub_25BDA84EC(v39, v64, &unk_27FBDD9A0, &unk_25BDE2670);
  v43 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v44 = (v62 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = (v44 + 23) & 0xFFFFFFFFFFFFFFF8;
  v46 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
  v47 = (v46 + 15) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  sub_25BDD3608(v42, v48 + v43);
  v49 = (v48 + v44);
  *v49 = sub_25BDA83B4;
  v49[1] = v40;
  v50 = v68;
  *(v48 + v45) = v67;
  *(v48 + v46) = v50;
  v51 = v60;
  *(v48 + v47) = v60;
  *(v48 + ((v47 + 15) & 0xFFFFFFFFFFFFFFF8)) = v65;
  aBlock[4] = sub_25BDD3678;
  aBlock[5] = v48;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25BDD4740;
  aBlock[3] = &block_descriptor_7;
  v52 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  v53 = v51;

  [v69 getAmsPropertiesForContext:v53 withReply:v52];
  _Block_release(v52);

  return sub_25BDA8554(v71, &unk_27FBDD9A0, &unk_25BDE2670);
}

uint64_t sub_25BDD23E8(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v50 = a6;
  v51 = a8;
  v49 = a7;
  v52 = a5;
  v53 = a4;
  v54 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBDD9A0, &unk_25BDE2670);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8);
  v48 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v55 = &v46 - v14;
  v15 = sub_25BDDF668();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_25BDB7ADC();
  (*(v16 + 16))(v19, v20, v15);

  v21 = sub_25BDDF648();
  v22 = sub_25BDDFFE8();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v47 = v11;
    v24 = v23;
    v25 = swift_slowAlloc();
    aBlock[0] = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_25BDA6444(a1, a2, aBlock);
    _os_log_impl(&dword_25BD8D000, v21, v22, "Making universal link AMSUI view controller for path: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x25F87C8F0](v25, -1, -1);
    v26 = v24;
    v11 = v47;
    MEMORY[0x25F87C8F0](v26, -1, -1);
  }

  (*(v16 + 8))(v19, v15);
  sub_25BDA6C28(MEMORY[0x277D84F90]);
  v27 = objc_allocWithZone(MEMORY[0x277D2D0A8]);
  v28 = sub_25BDDFE38();
  v29 = sub_25BDDFDF8();

  v30 = [v27 initWithRequestType:2 serialNumber:0 universalLinkPath:v28 additionalBody:v29];

  v31 = sub_25BDDF408();
  v32 = v55;
  (*(*(v31 - 8) + 56))(v55, 1, 1, v31);
  v33 = v48;
  sub_25BDA84EC(v32, v48, &unk_27FBDD9A0, &unk_25BDE2670);
  v34 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v35 = (v12 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  sub_25BDD3608(v33, v39 + v34);
  v40 = (v39 + v35);
  v41 = v51;
  v42 = v52;
  *v40 = v49;
  v40[1] = v41;
  *(v39 + v36) = v42;
  *(v39 + v37) = v53;
  *(v39 + v38) = v30;
  *(v39 + ((v38 + 15) & 0xFFFFFFFFFFFFFFF8)) = v50;
  aBlock[4] = sub_25BDD4BA0;
  aBlock[5] = v39;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25BDD4740;
  aBlock[3] = &block_descriptor_10_0;
  v43 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  v44 = v30;

  [v54 getAmsPropertiesForContext:v44 withReply:v43];
  _Block_release(v43);

  return sub_25BDA8554(v55, &unk_27FBDD9A0, &unk_25BDE2670);
}

uint64_t sub_25BDD28A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41 = a5;
  v42 = a4;
  v43 = a3;
  v44 = a2;
  v45 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBDD9A0, &unk_25BDE2670);
  v40 = *(v7 - 8);
  v8 = *(v40 + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - v11;
  v13 = sub_25BDDF668();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_25BDB7ADC();
  (*(v14 + 16))(v17, v18, v13);
  v19 = sub_25BDDF648();
  v20 = sub_25BDDFFE8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_25BD8D000, v19, v20, "Making AMSUI view controller for Coverage Central", v21, 2u);
    MEMORY[0x25F87C8F0](v21, -1, -1);
  }

  (*(v14 + 8))(v17, v13);
  sub_25BDA6C28(MEMORY[0x277D84F90]);
  v22 = objc_allocWithZone(MEMORY[0x277D2D0A8]);
  v23 = sub_25BDDFDF8();

  v39 = [v22 initWithRequestType:0 serialNumber:0 universalLinkPath:0 additionalBody:v23];

  v24 = sub_25BDDF408();
  (*(*(v24 - 8) + 56))(v12, 1, 1, v24);
  v25 = swift_allocObject();
  *(v25 + 16) = v41;
  *(v25 + 24) = a6;
  sub_25BDA84EC(v12, v10, &unk_27FBDD9A0, &unk_25BDE2670);
  v26 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v27 = (v8 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 23) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
  v41 = v12;
  v31 = swift_allocObject();
  sub_25BDD3608(v10, v31 + v26);
  v32 = (v31 + v27);
  *v32 = sub_25BDD4B84;
  v32[1] = v25;
  v33 = v44;
  *(v31 + v28) = v43;
  *(v31 + v29) = v33;
  v34 = v39;
  *(v31 + v30) = v39;
  *(v31 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8)) = v42;
  aBlock[4] = sub_25BDD4BA0;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25BDD4740;
  aBlock[3] = &block_descriptor_20;
  v35 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  v36 = v34;

  [v45 getAmsPropertiesForContext:v36 withReply:v35];
  _Block_release(v35);

  return sub_25BDA8554(v41, &unk_27FBDD9A0, &unk_25BDE2670);
}

uint64_t sub_25BDD2D24(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v48 = a8;
  v50 = a6;
  v51 = a5;
  v52 = a4;
  v53 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBDD9A0, &unk_25BDE2670);
  v47 = *(v9 - 8);
  v10 = *(v47 + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v49 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v54 = &v45 - v12;
  v13 = sub_25BDDF668();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_25BDB7ADC();
  (*(v14 + 16))(v17, v18, v13);
  v19 = sub_25BDDF648();
  v20 = sub_25BDDFFE8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = a7;
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_25BD8D000, v19, v20, "Making AMSUI view controller for Coverage Details", v22, 2u);
    v23 = v22;
    a7 = v21;
    MEMORY[0x25F87C8F0](v23, -1, -1);
  }

  (*(v14 + 8))(v17, v13);
  sub_25BDA6C28(MEMORY[0x277D84F90]);
  v24 = objc_allocWithZone(MEMORY[0x277D2D0A8]);
  v25 = sub_25BDDFE38();
  v26 = sub_25BDDFDF8();

  v46 = [v24 initWithRequestType:1 serialNumber:v25 universalLinkPath:0 additionalBody:v26];

  v27 = sub_25BDDF408();
  v28 = v54;
  (*(*(v27 - 8) + 56))(v54, 1, 1, v27);
  v29 = swift_allocObject();
  v30 = v48;
  *(v29 + 16) = a7;
  *(v29 + 24) = v30;
  v31 = v28;
  v32 = v49;
  sub_25BDA84EC(v31, v49, &unk_27FBDD9A0, &unk_25BDE2670);
  v33 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v34 = (v10 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 23) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  sub_25BDD3608(v32, v38 + v33);
  v39 = (v38 + v34);
  *v39 = sub_25BDD4B84;
  v39[1] = v29;
  v40 = v52;
  *(v38 + v35) = v51;
  *(v38 + v36) = v40;
  v41 = v46;
  *(v38 + v37) = v46;
  *(v38 + ((v37 + 15) & 0xFFFFFFFFFFFFFFF8)) = v50;
  aBlock[4] = sub_25BDD4BA0;
  aBlock[5] = v38;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25BDD4740;
  aBlock[3] = &block_descriptor_30_0;
  v42 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  v43 = v41;

  [v53 getAmsPropertiesForContext:v43 withReply:v42];
  _Block_release(v42);

  return sub_25BDA8554(v54, &unk_27FBDD9A0, &unk_25BDE2670);
}

uint64_t sub_25BDD31E0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v46 = a7;
  v47 = a8;
  v44 = a5;
  v45 = a6;
  v41 = a1;
  v42 = a4;
  v55 = a2;
  v43 = a9;
  v51 = sub_25BDDFDC8();
  v54 = *(v51 - 8);
  v11 = *(v54 + 64);
  MEMORY[0x28223BE20](v51);
  v50 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25BDDFDE8();
  v52 = *(v13 - 8);
  v53 = v13;
  v14 = *(v52 + 64);
  MEMORY[0x28223BE20](v13);
  v48 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBDD9A0, &unk_25BDE2670);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v20 = &v41 - v19;
  sub_25BDA7EE8();
  v49 = sub_25BDE0018();
  sub_25BDA84EC(a3, v20, &unk_27FBDD9A0, &unk_25BDE2670);
  v21 = (*(v17 + 80) + 24) & ~*(v17 + 80);
  v22 = (v18 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 23) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 16) = a1;
  sub_25BDD3608(v20, v27 + v21);
  *(v27 + v22) = v55;
  v28 = (v27 + v23);
  v29 = v44;
  v30 = v45;
  *v28 = v42;
  v28[1] = v29;
  *(v27 + v24) = v30;
  v31 = v47;
  *(v27 + v25) = v46;
  *(v27 + v26) = v31;
  *(v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8)) = v43;
  aBlock[4] = sub_25BDD4A50;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25BDA2E38;
  aBlock[3] = &block_descriptor_36;
  v32 = _Block_copy(aBlock);
  v33 = v41;
  v34 = v55;
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  v35 = v31;

  v36 = v48;
  sub_25BDDFDD8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_25BDD4B2C(&qword_27FBDD178, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD180, "\\b");
  sub_25BDA7F8C();
  v38 = v50;
  v37 = v51;
  sub_25BDE00C8();
  v39 = v49;
  MEMORY[0x25F87BDC0](0, v36, v38, v32);
  _Block_release(v32);

  (*(v54 + 8))(v38, v37);
  return (*(v52 + 8))(v36, v53);
}

uint64_t sub_25BDD3608(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBDD9A0, &unk_25BDE2670);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_25BDD367C(void *a1, uint64_t a2, void *a3, void (*a4)(id, id), uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9)
{
  v120 = a8;
  v116 = a7;
  v115 = a6;
  v122 = a5;
  v123 = a4;
  v12 = sub_25BDDF668();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_25BDDF328();
  v118 = *(v119 - 8);
  v17 = *(v118 + 64);
  MEMORY[0x28223BE20](v119);
  v117 = &v113 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBDD9A0, &unk_25BDE2670);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v113 - v21;
  v23 = sub_25BDDF408();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v113 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  if (a1)
  {
    v114 = &v113 - v29;
    v121 = a1;
    v30 = [v121 url];
    if (v30)
    {
      v31 = v30;
      sub_25BDDF3E8();

      (*(v24 + 32))(v22, v28, v23);
      (*(v24 + 56))(v22, 0, 1, v23);
    }

    else
    {
      sub_25BDA84EC(a2, v22, &unk_27FBDD9A0, &unk_25BDE2670);
    }

    if ((*(v24 + 48))(v22, 1, v23) == 1)
    {

      sub_25BDA8554(v22, &unk_27FBDD9A0, &unk_25BDE2670);
      goto LABEL_9;
    }

    v32 = v114;
    (*(v24 + 32))(v114, v22, v23);
    if (a3)
    {
      (*(v24 + 8))(v32, v23);

      goto LABEL_9;
    }

    v113 = a9;
    v43 = objc_allocWithZone(MEMORY[0x277CCAB70]);
    v44 = sub_25BDDF3C8();
    v45 = [v43 initWithURL_];

    v46 = sub_25BDDFE38();
    [v45 setHTTPMethod_];

    v47 = sub_25BDDFE38();
    v48 = sub_25BDDFE38();
    [v45 setValue:v47 forHTTPHeaderField:v48];

    v49 = sub_25BDDFE38();
    v50 = sub_25BDDFE38();
    [v45 setValue:v49 forHTTPHeaderField:v50];

    v51 = sub_25BDDFE38();
    v52 = sub_25BDDFE38();
    [v45 addValue:v51 forHTTPHeaderField:v52];

    v53 = v121;
    v54 = [v121 bodyData];
    v55 = sub_25BDDF428();
    v57 = v56;

    v58 = sub_25BDDF418();
    sub_25BDA72AC(v55, v57);
    [v45 setHTTPBody_];

    sub_25BDD4478(v115);
    v59 = sub_25BDDFDF8();

    [v45 addAllHeadersFrom_];

    v60 = [v53 signatureHeaders];
    v61 = sub_25BDDFE08();

    sub_25BDD4478(v61);

    v62 = sub_25BDDFDF8();

    [v45 addAllHeadersFrom_];

    v63 = sub_25BDDFE38();
    v64 = v116;
    v65 = [v116 basicHeadersWithBundleID_];

    v66 = sub_25BDDFE08();
    sub_25BDD4478(v66);

    v67 = sub_25BDDFDF8();

    [v45 addAllHeadersFrom_];

    v68 = sub_25BDDFE38();
    v69 = [v64 OASHeadersWithOfferID:v68 serialNumber:0 primarySerialNumber:0 currentStoreLocaleHeader:0];

    v70 = sub_25BDDFE08();
    sub_25BDD4478(v70);

    v71 = sub_25BDDFDF8();

    [v45 &selRef:v71 initWithDefaultDevice:? + 3];

    v72 = [v64 accountHeadersFor:v45 forceReprovisioning:0 avoidUI:0];
    if (v72)
    {
      v73 = v72;
      v74 = sub_25BDDFE08();
    }

    else
    {
      v74 = sub_25BDA6C28(MEMORY[0x277D84F90]);
    }

    v75 = v120;
    sub_25BDD4478(v74);

    v76 = sub_25BDDFDF8();

    [v45 &selRef:v76 initWithDefaultDevice:? + 3];

    v77 = v117;
    sub_25BDDF318();
    v78 = objc_allocWithZone(NDOAppleCareAMSUIViewController);
    v79 = sub_25BDDF308();
    v80 = [v78 initWithRequest_];

    (*(v118 + 8))(v77, v119);
    if (![v75 requestType] || objc_msgSend(v75, sel_requestType) == 1)
    {
      v81 = [v80 appearance];
      if (v81)
      {
        v82 = v81;
        v83 = [objc_opt_self() ams_primaryGroupedBackground];
        [v82 setBackgroundColor_];
      }
    }

    [v80 setPresenter_];
    v84 = [objc_opt_self() appearance];
    v85 = [v84 buttonTextColor];

    if (v85)
    {
      v86 = [v85 CGColor];
      v87 = sub_25BDDFFA8();

      if (!v87)
      {
LABEL_26:

        goto LABEL_27;
      }

      v88 = *(v87 + 16);
      if (v88 < 3)
      {

        goto LABEL_26;
      }

      if (v88 == 3)
      {
        __break(1u);
        return;
      }

      v90 = *(v87 + 32);
      v89 = *(v87 + 40);
      v91 = *(v87 + 48);
      v92 = *(v87 + 56);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBDD9D0, &qword_25BDE32A8);
      v93 = swift_allocObject();
      *(v93 + 16) = xmmword_25BDE3250;
      v94 = v90 * 255.0;
      v95 = lroundf(v94);
      v96 = MEMORY[0x277D83B88];
      v97 = MEMORY[0x277D83C10];
      *(v93 + 56) = MEMORY[0x277D83B88];
      *(v93 + 64) = v97;
      *(v93 + 32) = v95;
      v98 = v89 * 255.0;
      v99 = lroundf(v98);
      *(v93 + 96) = v96;
      *(v93 + 104) = v97;
      *(v93 + 72) = v99;
      v100 = v91 * 255.0;
      v101 = lroundf(v100);
      *(v93 + 136) = v96;
      *(v93 + 144) = v97;
      *(v93 + 112) = v101;
      v102 = v92 * 255.0;
      v103 = lroundf(v102);
      *(v93 + 176) = v96;
      *(v93 + 184) = v97;
      *(v93 + 152) = v103;
      v104 = sub_25BDDFE58();
      v106 = v105;

      if (v106)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD9B8, "fs");
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_25BDE21F0;
        strcpy(v124, "tintColorHex");
        BYTE5(v124[1]) = 0;
        HIWORD(v124[1]) = -5120;
        v108 = v80;
        v109 = MEMORY[0x277D837D0];
        sub_25BDE0108();
        *(inited + 96) = v109;
        *(inited + 72) = v104;
        *(inited + 80) = v106;
        sub_25BDA7300(inited);
        swift_setDeallocating();
        sub_25BDA8554(inited + 32, &unk_27FBDD9C0, &qword_25BDE2408);
        v85 = sub_25BDDFDF8();

        [v108 setClientOptions_];

        goto LABEL_26;
      }
    }

LABEL_27:
    v110 = v80;
    v111 = v121;
    v112 = [v121 presentModally];
    v123(v80, v112);

    (*(v24 + 8))(v114, v23);
    return;
  }

LABEL_9:
  v33 = sub_25BDB7ADC();
  (*(v13 + 16))(v16, v33, v12);
  v34 = a3;
  v35 = sub_25BDDF648();
  v36 = sub_25BDDFFC8();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v124[0] = v38;
    *v37 = 136315138;
    v124[15] = a3;
    v39 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD190, &unk_25BDE23D0);
    v40 = sub_25BDDFE68();
    v42 = sub_25BDA6444(v40, v41, v124);

    *(v37 + 4) = v42;
    _os_log_impl(&dword_25BD8D000, v35, v36, "Cannot get coverage details ams properties from agent, error: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x25F87C8F0](v38, -1, -1);
    MEMORY[0x25F87C8F0](v37, -1, -1);
  }

  (*(v13 + 8))(v16, v12);
  v123(0, 0);
}

uint64_t sub_25BDD4478(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBDD1C0, &qword_25BDE2400);
    v2 = sub_25BDE0198();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v14 = (*(a1 + 48) + v13);
    v15 = v14[1];
    v16 = (*(a1 + 56) + v13);
    v18 = *v16;
    v17 = v16[1];
    *&v35[0] = *v14;
    *(&v35[0] + 1) = v15;

    swift_dynamicCast();
    swift_dynamicCast();
    v31 = v27;
    v32 = v28;
    v33 = v29;
    sub_25BDA818C(&v30, v34);
    v27 = v31;
    v28 = v32;
    v29 = v33;
    sub_25BDA818C(v34, v35);
    v19 = *(v2 + 40);
    result = sub_25BDE00E8();
    v20 = -1 << *(v2 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v7 + 8 * (v21 >> 6))) == 0)
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
        v26 = *(v7 + 8 * v22);
        if (v26 != -1)
        {
          v10 = __clz(__rbit64(~v26)) + (v22 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v21) & ~*(v7 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v27;
    *(v11 + 16) = v28;
    *(v11 + 32) = v29;
    result = sub_25BDA818C(v35, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_25BDD4740(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBDD9A0, &unk_25BDE2670) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_25BDDF408();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + v7 + 8);

  v13 = *(v0 + v8);

  v14 = *(v0 + v9);
  swift_unknownObjectRelease();

  v15 = *(v0 + v11);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v2 | 7);
}

uint64_t sub_25BDD4954(void *a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBDD9A0, &unk_25BDE2670) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  return sub_25BDD31E0(a1, a2, v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + v8), *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_25BDD4A50()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBDD9A0, &unk_25BDE2670) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_25BDD367C(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_25BDD4B2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25BDD4BA4@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D2B670];
  v3 = sub_25BDDF6F8();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_25BDD4CBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25BDDF6F8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  return (*(**a2 + 200))(v7);
}

uint64_t sub_25BDD4DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25BDDF6F8();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_25BDD4E14@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 536))();

  v3 = OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__state;
  swift_beginAccess();
  v4 = sub_25BDDF6F8();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_25BDD4EE0(uint64_t a1)
{
  swift_getKeyPath();
  v5 = v1;
  v6 = a1;
  (*(*v1 + 544))();

  v3 = sub_25BDDF6F8();
  return (*(*(v3 - 8) + 8))(a1, v3);
}

uint64_t sub_25BDD4FB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25BDDF6F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4);
  v9 = OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__state;
  swift_beginAccess();
  (*(v5 + 40))(a1 + v9, v8, v4);
  return swift_endAccess();
}

void (*sub_25BDD50F8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 536))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_25BDDD158(&qword_27FBDD438, type metadata accessor for CoverageCentralViewModel);
  sub_25BDDF4A8();

  v4[7] = sub_25BDD4C18();
  return sub_25BDD5248;
}

uint64_t type metadata accessor for CoverageCentralViewModel()
{
  result = qword_27FBDE4E0;
  if (!qword_27FBDE4E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25BDD5344(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD298, &unk_25BDE2B20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v9 - v6;
  sub_25BDA84EC(a1, &v9 - v6, &qword_27FBDD298, &unk_25BDE2B20);
  return (*(**a2 + 248))(v7);
}

uint64_t sub_25BDD5434(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD298, &unk_25BDE2B20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12[-v5];
  v7 = OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__dataDate;
  swift_beginAccess();
  sub_25BDA84EC(v1 + v7, v6, &qword_27FBDD298, &unk_25BDE2B20);
  v8 = sub_25BDDBEE0(v6, a1);
  sub_25BDA8554(v6, &qword_27FBDD298, &unk_25BDE2B20);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x28223BE20](KeyPath);
    *&v12[-16] = v1;
    *&v12[-8] = a1;
    (*(*v1 + 544))(v10, sub_25BDDC200);
  }

  else
  {
    sub_25BDA84EC(a1, v6, &qword_27FBDD298, &unk_25BDE2B20);
    swift_beginAccess();
    sub_25BDB388C(v6, v1 + v7, &qword_27FBDD298, &unk_25BDE2B20);
    swift_endAccess();
  }

  return sub_25BDA8554(a1, &qword_27FBDD298, &unk_25BDE2B20);
}

void (*sub_25BDD561C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 536))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_25BDDD158(&qword_27FBDD438, type metadata accessor for CoverageCentralViewModel);
  sub_25BDDF4A8();

  v4[7] = sub_25BDD52A0();
  return sub_25BDD576C;
}

uint64_t sub_25BDD57D8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 288))();
  *a2 = result & 1;
  return result;
}

void (*sub_25BDD58BC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 536))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_25BDDD158(&qword_27FBDD438, type metadata accessor for CoverageCentralViewModel);
  sub_25BDDF4A8();

  v4[7] = sub_25BDD5778();
  return sub_25BDD5A0C;
}

uint64_t sub_25BDD5A78@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 336))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_25BDD5B34(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  (*(*v2 + 536))();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t sub_25BDD5BE4(char a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1 & 1;
  v7 = *a2;
  result = swift_beginAccess();
  if (*(v4 + v7) == v6)
  {
    *(v4 + v7) = v6;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x28223BE20](KeyPath);
    v11 = v4;
    v12 = v6;
    (*(*v4 + 544))(v10, a4);
  }

  return result;
}

void (*sub_25BDD5CE0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 536))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_25BDDD158(&qword_27FBDD438, type metadata accessor for CoverageCentralViewModel);
  sub_25BDDF4A8();

  v4[7] = sub_25BDD5A18();
  return sub_25BDD5E30;
}

uint64_t sub_25BDD5EE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD2A0, &qword_25BDE2548);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v9 - v6;
  sub_25BDA84EC(a1, &v9 - v6, &qword_27FBDD2A0, &qword_25BDE2548);
  return (*(**a2 + 392))(v7);
}

uint64_t sub_25BDD5FEC@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  swift_getKeyPath();
  (*(*v4 + 536))();

  v9 = *a1;
  swift_beginAccess();
  return sub_25BDA84EC(v4 + v9, a4, a2, a3);
}

uint64_t sub_25BDD6098(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD2A0, &qword_25BDE2548);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12[-v5];
  v7 = OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__appendSettingsNavigationPath;
  swift_beginAccess();
  sub_25BDA84EC(v1 + v7, v6, &qword_27FBDD2A0, &qword_25BDE2548);
  v8 = sub_25BDDC284(v6, a1);
  sub_25BDA8554(v6, &qword_27FBDD2A0, &qword_25BDE2548);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x28223BE20](KeyPath);
    *&v12[-16] = v1;
    *&v12[-8] = a1;
    (*(*v1 + 544))(v10, sub_25BDDC5A4);
  }

  else
  {
    sub_25BDA84EC(a1, v6, &qword_27FBDD2A0, &qword_25BDE2548);
    swift_beginAccess();
    sub_25BDB388C(v6, v1 + v7, &qword_27FBDD2A0, &qword_25BDE2548);
    swift_endAccess();
  }

  return sub_25BDA8554(a1, &qword_27FBDD2A0, &qword_25BDE2548);
}

uint64_t sub_25BDD6280(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v16 - v12;
  sub_25BDA84EC(a2, &v16 - v12, a3, a4);
  v14 = *a5;
  swift_beginAccess();
  sub_25BDB388C(v13, a1 + v14, a3, a4);
  return swift_endAccess();
}

void (*sub_25BDD6354(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 536))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_25BDDD158(&qword_27FBDD438, type metadata accessor for CoverageCentralViewModel);
  sub_25BDDF4A8();

  v4[7] = sub_25BDD5E3C();
  return sub_25BDD64A4;
}

uint64_t sub_25BDD64B0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 536))();

  v3 = OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__dataProvider;
  swift_beginAccess();
  return sub_25BDB39C4(v1 + v3, a1);
}

uint64_t sub_25BDD654C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 536))();

  v4 = OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__dataProvider;
  swift_beginAccess();
  return sub_25BDB39C4(v3 + v4, a2);
}

uint64_t sub_25BDD65EC(uint64_t a1, uint64_t *a2)
{
  sub_25BDB39C4(a1, v7);
  v3 = *a2;
  KeyPath = swift_getKeyPath();
  v6[2] = v3;
  v6[3] = v7;
  (*(*v3 + 544))(KeyPath, sub_25BDDD0E0, v6, MEMORY[0x277D84F78] + 8);

  return __swift_destroy_boxed_opaque_existential_0(v7);
}

uint64_t sub_25BDD66B0()
{
  swift_getKeyPath();
  (*(*v0 + 536))();

  v1 = *(v0 + OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__deviceWarrantyViewModelProvider);
  v2 = *(v0 + OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__deviceWarrantyViewModelProvider + 8);

  return v1;
}

uint64_t sub_25BDD6730@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 536))();

  v5 = *(v3 + OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__deviceWarrantyViewModelProvider);
  v4 = *(v3 + OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__deviceWarrantyViewModelProvider + 8);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_25BDDD044;
  a2[1] = v6;
}

uint64_t sub_25BDD67F0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  KeyPath = swift_getKeyPath();
  v10[2] = v6;
  v10[3] = sub_25BDDCFB0;
  v10[4] = v5;
  v8 = *(*v6 + 544);

  v8(KeyPath, sub_25BDDCFF8, v10, MEMORY[0x277D84F78] + 8);
}

uint64_t CoverageCentralViewModel.__allocating_init(_:deviceWarrantyViewModelProvider:openAMS:openPath:startWeb:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v46 = a6;
  v47 = a8;
  v45 = a4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD2A8, &qword_25BDE25A0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v44 - v17;
  v19 = *(v9 + 48);
  v20 = *(v9 + 52);
  v21 = swift_allocObject();
  v22 = OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__state;
  v23 = *MEMORY[0x277D2B670];
  v24 = sub_25BDDF6F8();
  (*(*(v24 - 8) + 104))(v21 + v22, v23, v24);
  v25 = OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__dataDate;
  v26 = sub_25BDDF438();
  (*(*(v26 - 8) + 56))(v21 + v25, 1, 1, v26);
  *(v21 + OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__showLastUpdatedMessage) = 0;
  *(v21 + OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__showLoadingSpinner) = 0;
  v27 = OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__appendSettingsNavigationPath;
  v28 = sub_25BDDF5D8();
  (*(*(v28 - 8) + 56))(v21 + v27, 1, 1, v28);
  sub_25BDDF4B8();
  sub_25BDB39C4(a1, v21 + OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__dataProvider);
  v29 = (v21 + OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__deviceWarrantyViewModelProvider);
  *v29 = a2;
  v29[1] = a3;
  v30 = (v21 + OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel_openAMSHandler);
  v31 = v46;
  *v30 = v45;
  v30[1] = a5;
  v32 = (v21 + OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel_openPathHandler);
  *v32 = v31;
  v32[1] = a7;
  v33 = (v21 + OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel_startWebHandler);
  *v33 = v47;
  v33[1] = a9;
  v34 = objc_opt_self();

  if ([v34 isSignedIntoAppleAccount])
  {
    sub_25BDDFF58();
    v35 = sub_25BDDFF88();
    (*(*(v35 - 8) + 56))(v18, 0, 1, v35);
    v36 = swift_allocObject();
    v36[2] = 0;
    v36[3] = 0;
    v36[4] = v21;

    v37 = &unk_25BDE33A8;
    v38 = v18;
    v39 = v36;
  }

  else
  {
    v40 = sub_25BDDFF88();
    (*(*(v40 - 8) + 56))(v18, 1, 1, v40);
    sub_25BDDFF48();

    v41 = sub_25BDDFF38();
    v39 = swift_allocObject();
    v42 = MEMORY[0x277D85700];
    v39[2] = v41;
    v39[3] = v42;
    v39[4] = v21;
    v37 = &unk_25BDE3398;
    v38 = v18;
  }

  sub_25BDAFA6C(0, 0, v38, v37, v39);

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v21;
}

uint64_t CoverageCentralViewModel.init(_:deviceWarrantyViewModelProvider:openAMS:openPath:startWeb:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v44 = a6;
  v45 = a8;
  v43 = a4;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD2A8, &qword_25BDE25A0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v42 - v18;
  v20 = OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__state;
  v21 = *MEMORY[0x277D2B670];
  v22 = sub_25BDDF6F8();
  (*(*(v22 - 8) + 104))(v10 + v20, v21, v22);
  v23 = OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__dataDate;
  v24 = sub_25BDDF438();
  (*(*(v24 - 8) + 56))(v10 + v23, 1, 1, v24);
  *(v10 + OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__showLastUpdatedMessage) = 0;
  *(v10 + OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__showLoadingSpinner) = 0;
  v25 = OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__appendSettingsNavigationPath;
  v26 = sub_25BDDF5D8();
  (*(*(v26 - 8) + 56))(v10 + v25, 1, 1, v26);
  sub_25BDDF4B8();
  sub_25BDB39C4(a1, v10 + OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__dataProvider);
  v27 = (v10 + OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__deviceWarrantyViewModelProvider);
  *v27 = a2;
  v27[1] = a3;
  v28 = (v10 + OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel_openAMSHandler);
  v29 = v44;
  *v28 = v43;
  v28[1] = a5;
  v30 = (v10 + OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel_openPathHandler);
  *v30 = v29;
  v30[1] = a7;
  v31 = (v10 + OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel_startWebHandler);
  *v31 = v45;
  v31[1] = a9;
  v32 = objc_opt_self();

  if ([v32 isSignedIntoAppleAccount])
  {
    sub_25BDDFF58();
    v33 = sub_25BDDFF88();
    (*(*(v33 - 8) + 56))(v19, 0, 1, v33);
    v34 = swift_allocObject();
    v34[2] = 0;
    v34[3] = 0;
    v34[4] = v10;

    v35 = &unk_25BDE33B8;
    v36 = v19;
    v37 = v34;
  }

  else
  {
    v38 = sub_25BDDFF88();
    (*(*(v38 - 8) + 56))(v19, 1, 1, v38);
    sub_25BDDFF48();

    v39 = sub_25BDDFF38();
    v37 = swift_allocObject();
    v40 = MEMORY[0x277D85700];
    v37[2] = v39;
    v37[3] = v40;
    v37[4] = v10;
    v35 = &unk_25BDE33B0;
    v36 = v19;
  }

  sub_25BDAFA6C(0, 0, v36, v35, v37);

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v10;
}

uint64_t sub_25BDD70C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_25BDDF6F8();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  sub_25BDDFF48();
  v4[6] = sub_25BDDFF38();
  v9 = sub_25BDDFF28();

  return MEMORY[0x2822009F8](sub_25BDD71B8, v9, v8);
}

uint64_t sub_25BDD71B8()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  v6 = *MEMORY[0x277D2B758];
  v7 = sub_25BDDF9A8();
  (*(*(v7 - 8) + 104))(v2, v6, v7);
  (*(v4 + 104))(v2, *MEMORY[0x277D2B660], v3);
  (*(*v5 + 200))(v2);

  v8 = v0[1];

  return v8();
}

uint64_t sub_25BDD72CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*a4 + 512);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_25BDAFE88;

  return v9();
}

uint64_t sub_25BDD73E8()
{
  v1[10] = v0;
  v2 = sub_25BDDF668();
  v1[11] = v2;
  v3 = *(v2 - 8);
  v1[12] = v3;
  v4 = *(v3 + 64) + 15;
  v1[13] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD9E0, &qword_25BDE33C8) - 8) + 64) + 15;
  v1[14] = swift_task_alloc();
  v6 = sub_25BDDFA58();
  v1[15] = v6;
  v7 = *(v6 - 8);
  v1[16] = v7;
  v8 = *(v7 + 64) + 15;
  v1[17] = swift_task_alloc();
  v9 = sub_25BDDF6F8();
  v1[18] = v9;
  v10 = *(v9 - 8);
  v1[19] = v10;
  v11 = *(v10 + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  sub_25BDDFF48();
  v1[22] = sub_25BDDFF38();
  v13 = sub_25BDDFF28();
  v1[23] = v13;
  v1[24] = v12;

  return MEMORY[0x2822009F8](sub_25BDD75D8, v13, v12);
}

uint64_t sub_25BDD75D8()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  (*(**(v0 + 80) + 192))();
  v4 = (*(v3 + 88))(v1, v2);
  v5 = *MEMORY[0x277D2B660];
  (*(v3 + 8))(v1, v2);
  if (v4 == v5)
  {
    v6 = *(v0 + 160);
    v7 = *(v0 + 80);
    (*(*(v0 + 152) + 104))(v6, *MEMORY[0x277D2B670], *(v0 + 144));
    (*(*v7 + 200))(v6);
  }

  v8 = *(v0 + 80);
  KeyPath = swift_getKeyPath();
  (*(*v8 + 536))(KeyPath);

  v10 = OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__dataProvider;
  swift_beginAccess();
  sub_25BDB39C4(v8 + v10, v0 + 16);
  v11 = *(v0 + 40);
  v12 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_0((v0 + 16), v11);
  v13 = *(MEMORY[0x277D2B760] + 4);
  v14 = swift_task_alloc();
  *(v0 + 200) = v14;
  *v14 = v0;
  v14[1] = sub_25BDD77E8;

  return MEMORY[0x28218AB78](v11, v12);
}

uint64_t sub_25BDD77E8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 200);
  v9 = *v2;
  *(v4 + 208) = a1;
  *(v4 + 216) = a2;

  v6 = *(v3 + 192);
  v7 = *(v3 + 184);

  return MEMORY[0x2822009F8](sub_25BDD7910, v7, v6);
}

uint64_t sub_25BDD7910()
{
  v1 = v0[27];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v1 >> 60 != 15)
  {
    v3 = v0[26];
    v2 = v0[27];
    v5 = v0[14];
    v4 = v0[15];
    v6 = sub_25BDDF358();
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    sub_25BDB3C24(v3, v2);
    sub_25BDDF348();
    sub_25BDDD158(&qword_27FBDD9E8, MEMORY[0x277D2B790]);
    sub_25BDDF338();
    v10 = v0[26];
    v9 = v0[27];
    v28 = v0[16];
    v27 = v0[17];
    v30 = v0[14];
    v29 = v0[15];

    (*(v28 + 56))(v30, 0, 1, v29);
    (*(v28 + 32))(v27, v30, v29);
    v31 = *(sub_25BDDFA48() + 16);

    v32 = sub_25BDA7298(v10, v9);
    v33 = v0[17];
    if (v31)
    {
      v34 = v0[10];
      MEMORY[0x25F87BB50](v32, 0.5, 0.85, 0.0);
      v35 = swift_task_alloc();
      *(v35 + 16) = v34;
      *(v35 + 24) = v33;
      sub_25BDDFB88();

      v38 = (*v34 + 520);
      v39 = (*v38 + **v38);
      v36 = (*v38)[1];
      v23 = swift_task_alloc();
      v0[28] = v23;
      *v23 = v0;
      v24 = sub_25BDD7DD8;
      goto LABEL_6;
    }

    (*(v0[16] + 8))(v0[17], v0[15]);
  }

  v12 = v0[12];
  v11 = v0[13];
  v13 = v0[11];
  v14 = sub_25BDB7ADC();
  (*(v12 + 16))(v11, v14, v13);
  v15 = sub_25BDDF648();
  v16 = sub_25BDDFFC8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_25BD8D000, v15, v16, "Local device list failed", v17, 2u);
    MEMORY[0x25F87C8F0](v17, -1, -1);
  }

  v19 = v0[12];
  v18 = v0[13];
  v21 = v0[10];
  v20 = v0[11];

  (*(v19 + 8))(v18, v20);
  v37 = (*v21 + 520);
  v39 = (*v37 + **v37);
  v22 = (*v37)[1];
  v23 = swift_task_alloc();
  v0[29] = v23;
  *v23 = v0;
  v24 = sub_25BDD7FBC;
LABEL_6:
  v23[1] = v24;
  v25 = v0[10];

  return v39();
}

uint64_t sub_25BDD7DD8()
{
  v1 = *v0;
  v2 = *(*v0 + 224);
  v6 = *v0;

  v3 = *(v1 + 192);
  v4 = *(v1 + 184);

  return MEMORY[0x2822009F8](sub_25BDD7EF8, v4, v3);
}

uint64_t sub_25BDD7EF8()
{
  v1 = v0[22];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];
  sub_25BDA7298(v0[26], v0[27]);

  (*(v3 + 8))(v2, v4);
  v6 = v0[20];
  v5 = v0[21];
  v7 = v0[17];
  v9 = v0[13];
  v8 = v0[14];

  v10 = v0[1];

  return v10();
}

uint64_t sub_25BDD7FBC()
{
  v1 = *v0;
  v2 = *(*v0 + 232);
  v6 = *v0;

  v3 = *(v1 + 192);
  v4 = *(v1 + 184);

  return MEMORY[0x2822009F8](sub_25BDD80DC, v4, v3);
}

uint64_t sub_25BDD80DC()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[22];

  sub_25BDA7298(v1, v2);
  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[17];
  v8 = v0[13];
  v7 = v0[14];

  v9 = v0[1];

  return v9();
}

uint64_t sub_25BDD8184(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD298, &unk_25BDE2B20);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  v6 = sub_25BDDF6F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v10 = sub_25BDDFA48();
  (*(v7 + 104))(v10, *MEMORY[0x277D2B668], v6);
  (*(*a1 + 200))(v10);
  sub_25BDDFA38();
  (*(*a1 + 248))(v5);
  (*(*a1 + 344))(1);
  return (*(*a1 + 296))(1);
}

uint64_t sub_25BDD8394()
{
  v1[11] = v0;
  v2 = sub_25BDDF6F8();
  v1[12] = v2;
  v3 = *(v2 - 8);
  v1[13] = v3;
  v4 = *(v3 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v5 = sub_25BDDF668();
  v1[16] = v5;
  v6 = *(v5 - 8);
  v1[17] = v6;
  v7 = *(v6 + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  sub_25BDDFF48();
  v1[20] = sub_25BDDFF38();
  v9 = sub_25BDDFF28();
  v1[21] = v9;
  v1[22] = v8;

  return MEMORY[0x2822009F8](sub_25BDD84FC, v9, v8);
}

uint64_t sub_25BDD84FC()
{
  v1 = v0[11];
  swift_getKeyPath();
  (*(*v1 + 536))();

  v2 = OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__dataProvider;
  swift_beginAccess();
  sub_25BDB39C4(v1 + v2, (v0 + 2));
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v3);
  v5 = *(MEMORY[0x277D2B768] + 4);
  v6 = swift_task_alloc();
  v0[23] = v6;
  *v6 = v0;
  v6[1] = sub_25BDD8620;

  return MEMORY[0x28218AB80](v3, v4);
}

uint64_t sub_25BDD8620(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 184);
  v9 = *v2;
  *(v4 + 192) = a1;
  *(v4 + 200) = a2;

  v6 = *(v3 + 176);
  v7 = *(v3 + 168);

  return MEMORY[0x2822009F8](sub_25BDD8748, v7, v6);
}

uint64_t sub_25BDD8748()
{
  v1 = v0[25];
  v2 = v0[20];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v1 >> 60 != 15)
  {
    v4 = v0[24];
    v3 = v0[25];
    v5 = sub_25BDDF358();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    sub_25BDB3C24(v4, v3);
    sub_25BDDF348();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD728, &unk_25BDE2E70);
    sub_25BDDC73C();
    sub_25BDDF338();

    v45 = v0[10];
    v47 = v0[24];
    v46 = v0[25];
    if (*(v45 + 16))
    {
      v48 = v0[11];
      v49 = sub_25BDA7298(v0[24], v0[25]);
      MEMORY[0x25F87BB50](v49, 0.5, 0.85, 0.0);
      v50 = swift_task_alloc();
      *(v50 + 16) = v48;
      *(v50 + 24) = v45;
      sub_25BDDFB88();
      sub_25BDA7298(v47, v46);

      goto LABEL_10;
    }

    v51 = v0[10];

    sub_25BDA7298(v47, v46);
  }

  v8 = v0[19];
  v9 = v0[16];
  v10 = v0[17];
  v11 = sub_25BDB7ADC();
  v52 = *(v10 + 16);
  v53 = v11;
  v52(v8);
  v12 = sub_25BDDF648();
  v13 = sub_25BDDFFC8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_25BD8D000, v12, v13, "Remote device list failed", v14, 2u);
    MEMORY[0x25F87C8F0](v14, -1, -1);
  }

  v15 = v0[19];
  v16 = v0[16];
  v17 = v0[17];
  v18 = v0[15];
  v20 = v0[12];
  v19 = v0[13];
  v21 = v0[11];

  v22 = *(v17 + 8);
  v23 = v22(v15, v16);
  (*(*v21 + 192))(v23);
  LODWORD(v21) = (*(v19 + 88))(v18, v20);
  LODWORD(v15) = *MEMORY[0x277D2B670];
  (*(v19 + 8))(v18, v20);
  if (v21 == v15)
  {
    (v52)(v0[18], v53, v0[16]);
    v24 = sub_25BDDF648();
    v25 = sub_25BDDFFC8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_25BD8D000, v24, v25, "Displaying error state", v26, 2u);
      MEMORY[0x25F87C8F0](v26, -1, -1);
    }

    v28 = v0[17];
    v27 = v0[18];
    v29 = v0[16];
    v31 = v0[13];
    v30 = v0[14];
    v32 = v0[11];
    v33 = v0[12];

    v22(v27, v29);
    v34 = *MEMORY[0x277D2B750];
    v35 = sub_25BDDF9A8();
    (*(*(v35 - 8) + 104))(v30, v34, v35);
    (*(v31 + 104))(v30, *MEMORY[0x277D2B660], v33);
    (*(*v32 + 200))(v30);
  }

  v37 = v0[24];
  v36 = v0[25];
  v38 = v0[11];
  (*(*v38 + 344))(0);
  (*(*v38 + 296))(1);
  sub_25BDA7298(v37, v36);
LABEL_10:
  v40 = v0[18];
  v39 = v0[19];
  v42 = v0[14];
  v41 = v0[15];

  v43 = v0[1];

  return v43();
}

uint64_t sub_25BDD8C50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD298, &unk_25BDE2B20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  v8 = sub_25BDDF6F8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v11 = a2;
  (*(v12 + 104))(v11, *MEMORY[0x277D2B668]);
  v13 = *(*a1 + 200);

  v13(v11);
  v14 = sub_25BDDF438();
  (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  (*(*a1 + 248))(v7);
  (*(*a1 + 344))(0);
  return (*(*a1 + 296))(0);
}

uint64_t sub_25BDD8E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v236 = a3;
  v254 = a2;
  v268 = a1;
  v245 = sub_25BDDF6E8();
  v238 = *(v245 - 8);
  v3 = *(v238 + 64);
  MEMORY[0x28223BE20](v245);
  v237 = v4;
  v243 = &v221 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD2A8, &qword_25BDE25A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v244 = &v221 - v7;
  v240 = sub_25BDDF858();
  v239 = *(v240 - 8);
  v8 = *(v239 + 64);
  MEMORY[0x28223BE20](v240);
  v246 = &v221 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBDD9A0, &unk_25BDE2670);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v252 = &v221 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v261 = &v221 - v15;
  MEMORY[0x28223BE20](v14);
  v259 = &v221 - v16;
  v17 = sub_25BDDF408();
  v264 = *(v17 - 1);
  v265 = v17;
  v18 = *(v264 + 8);
  v19 = MEMORY[0x28223BE20](v17);
  v241 = &v221 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v258 = &v221 - v22;
  MEMORY[0x28223BE20](v21);
  v251 = &v221 - v23;
  v24 = sub_25BDDF668();
  v266 = *(v24 - 8);
  v267 = v24;
  v25 = *(v266 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v230 = &v221 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v229 = &v221 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v257 = &v221 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v262 = &v221 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v260 = &v221 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v235 = &v221 - v37;
  MEMORY[0x28223BE20](v36);
  v226 = &v221 - v38;
  v228 = sub_25BDDF5B8();
  v227 = *(v228 - 8);
  v39 = *(v227 + 64);
  MEMORY[0x28223BE20](v228);
  v225 = &v221 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v255 = sub_25BDDFA88();
  v253 = *(v255 - 8);
  v41 = *(v253 + 64);
  v42 = MEMORY[0x28223BE20](v255);
  v222 = &v221 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v42);
  v233 = &v221 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v231 = &v221 - v46;
  MEMORY[0x28223BE20](v45);
  v232 = &v221 - v47;
  v234 = sub_25BDDF898();
  v224 = *(v234 - 8);
  v48 = *(v224 + 64);
  MEMORY[0x28223BE20](v234);
  v223 = &v221 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD2A0, &qword_25BDE2548);
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50 - 8);
  v247 = &v221 - v52;
  v248 = sub_25BDDF5D8();
  v250 = *(v248 - 8);
  v53 = *(v250 + 64);
  MEMORY[0x28223BE20](v248);
  v242 = &v221 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_25BDDF818();
  v56 = *(v55 - 8);
  v57 = *(v56 + 64);
  v58 = MEMORY[0x28223BE20](v55);
  v249 = &v221 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = MEMORY[0x28223BE20](v58);
  v256 = &v221 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v64 = &v221 - v63;
  v65 = MEMORY[0x28223BE20](v62);
  v67 = &v221 - v66;
  MEMORY[0x28223BE20](v65);
  v69 = (&v221 - v68);
  v70 = sub_25BDDFA98();
  v71 = *(v70 - 8);
  v72 = *(v71 + 64);
  v73 = MEMORY[0x28223BE20](v70);
  MEMORY[0x28223BE20](v73);
  v75 = &v221 - v74;
  (*(v71 + 16))(&v221 - v74, v268, v70);
  v76 = (*(v71 + 88))(v75, v70);
  if (v76 == *MEMORY[0x277D2B7F0])
  {
    (*(v71 + 96))(v75, v70);
    (*(v56 + 32))(v64, v75, v55);
    sub_25BDDF808();
    v77 = v56;
    v78 = v55;
    v79 = v266;
    v80 = v267;
    if (v81)
    {
      v82 = v261;
      sub_25BDDF3F8();

      v84 = v264;
      v83 = v265;
      if ((*(v264 + 6))(v82, 1, v265) != 1)
      {
        v120 = v258;
        v84[4](v258, v82, v83);
        v121 = *(v263 + OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel_startWebHandler + 8);
        (*(v263 + OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel_startWebHandler))(v120);
        (v84[1])(v120, v83);
        return (*(v77 + 8))(v64, v78);
      }

      sub_25BDA8554(v82, &unk_27FBDD9A0, &unk_25BDE2670);
    }

    v85 = sub_25BDB7ADC();
    v86 = v262;
    (*(v79 + 16))(v262, v85, v80);
    v87 = sub_25BDDF648();
    v88 = sub_25BDDFFC8();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&dword_25BD8D000, v87, v88, "Can't start web. No url", v89, 2u);
      MEMORY[0x25F87C8F0](v89, -1, -1);
    }

    (*(v79 + 8))(v86, v80);
    return (*(v77 + 8))(v64, v78);
  }

  if (v76 != *MEMORY[0x277D2B7E8])
  {
    if (v76 != *MEMORY[0x277D2B7E0])
    {
      if (v76 == *MEMORY[0x277D2B7D0])
      {
        (*(v71 + 96))(v75, v70);
        v122 = v69;
        v123 = v55;
        v124 = (*(v56 + 32))(v69, v75, v55);
        v125 = v263;
        v126 = v247;
        (*(*v263 + 384))(v124);
        v127 = v250;
        v128 = v248;
        if ((*(v250 + 48))(v126, 1, v248) == 1)
        {
          sub_25BDA8554(v126, &qword_27FBDD2A0, &qword_25BDE2548);
          v129 = sub_25BDB7ADC();
          v130 = v266;
          v131 = v267;
          v132 = v235;
          (*(v266 + 16))(v235, v129, v267);
          v133 = sub_25BDDF648();
          v134 = sub_25BDDFFC8();
          if (os_log_type_enabled(v133, v134))
          {
            v135 = swift_slowAlloc();
            *v135 = 0;
            _os_log_impl(&dword_25BD8D000, v133, v134, "Can't handle device warranty action since appendSettingsNavigationPath is nil", v135, 2u);
            MEMORY[0x25F87C8F0](v135, -1, -1);
          }

          (*(v130 + 8))(v132, v131);
          return (*(v56 + 8))(v122, v123);
        }

        else
        {
          v265 = v122;
          v268 = v123;
          v166 = v242;
          (*(v127 + 32))(v242, v126, v128);
          v167 = v253;
          v168 = v232;
          v169 = v255;
          (*(v253 + 16))(v232, v254, v255);
          v170 = (*(v167 + 88))(v168, v169);
          v171 = v266;
          v172 = v267;
          if (v170 == *MEMORY[0x277D2B7B0])
          {
            (*(v167 + 96))(v168, v169);
            v173 = v224;
            v174 = v223;
            v175 = (*(v224 + 32))(v223, v168, v234);
            v267 = &v221;
            MEMORY[0x28223BE20](v175);
            *(&v221 - 4) = v125;
            *(&v221 - 3) = v174;
            v176 = v265;
            *(&v221 - 2) = v265;
            type metadata accessor for DeviceWarrantyMainView();
            sub_25BDDD158(&qword_27FBDDA08, type metadata accessor for DeviceWarrantyMainView);
            v177 = v225;
            sub_25BDDF5A8();
            sub_25BDDD158(&qword_27FBDDA10, MEMORY[0x277D40260]);
            v178 = v228;
            sub_25BDDF5C8();
            (*(v227 + 8))(v177, v178);
            (*(v127 + 8))(v166, v128);
            (*(v173 + 8))(v174, v234);
            return (*(v56 + 8))(v176, v268);
          }

          else
          {
            (*(v167 + 8))(v168, v169);
            v197 = sub_25BDB7ADC();
            v198 = v226;
            (*(v171 + 16))(v226, v197, v172);
            v199 = sub_25BDDF648();
            v200 = sub_25BDDFFC8();
            if (os_log_type_enabled(v199, v200))
            {
              v201 = swift_slowAlloc();
              *v201 = 0;
              _os_log_impl(&dword_25BD8D000, v199, v200, "Can't handle device warranty action from non device item", v201, 2u);
              MEMORY[0x25F87C8F0](v201, -1, -1);
            }

            (*(v171 + 8))(v198, v172);
            (*(v250 + 8))(v242, v128);
            return (*(v56 + 8))(v265, v268);
          }
        }
      }

      else if (v76 == *MEMORY[0x277D2B7D8])
      {
        (*(v71 + 96))(v75, v70);
        v141 = v56;
        v142 = *(v56 + 32);
        v268 = v55;
        v142(v249, v75, v55);
        v143 = v253;
        v144 = *(v253 + 16);
        v145 = v231;
        v146 = v254;
        v147 = v255;
        v144(v231, v254, v255);
        if ((*(v143 + 88))(v145, v147) == *MEMORY[0x277D2B7A8])
        {
          (*(v143 + 96))(v145, v147);
          (*(v239 + 32))(v246, v145, v240);
          v148 = sub_25BDDFF88();
          (*(*(v148 - 8) + 56))(v244, 1, 1, v148);
          v149 = v147;
          v150 = v143;
          v151 = v238;
          (*(v238 + 16))(v243, v236, v245);
          v144(v233, v146, v149);
          sub_25BDDFF48();
          v152 = v263;

          v153 = sub_25BDDFF38();
          v154 = (*(v151 + 80) + 40) & ~*(v151 + 80);
          v155 = (v237 + *(v150 + 80) + v154) & ~*(v150 + 80);
          v156 = swift_allocObject();
          v157 = MEMORY[0x277D85700];
          *(v156 + 2) = v153;
          *(v156 + 3) = v157;
          *(v156 + 4) = v152;
          (*(v151 + 32))(&v156[v154], v243, v245);
          (*(v150 + 32))(&v156[v155], v233, v255);
          sub_25BDAFA6C(0, 0, v244, &unk_25BDE3418, v156);

          KeyPath = swift_getKeyPath();
          (*(*v152 + 536))(KeyPath);

          v159 = OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__dataProvider;
          swift_beginAccess();
          sub_25BDB39C4(v152 + v159, v269);
          v267 = v269[4];
          __swift_project_boxed_opaque_existential_0(v269, v269[3]);
          sub_25BDDF848();
          v160 = sub_25BDDF388();
          v161 = *(v160 + 48);
          v162 = *(v160 + 52);
          swift_allocObject();
          sub_25BDDF378();
          sub_25BDDD158(&qword_27FBDDA00, MEMORY[0x277D2B6D8]);
          v163 = v249;
          v218 = sub_25BDDF368();
          v220 = v219;

          sub_25BDDF9D8();
          sub_25BDA7298(v218, v220);
          (*(v239 + 8))(v246, v240);
          (*(v56 + 8))(v163, v55);
          return __swift_destroy_boxed_opaque_existential_0(v269);
        }

        else
        {
          v189 = v268;
          (*(v143 + 8))(v145, v147);
          v190 = sub_25BDB7ADC();
          v191 = v266;
          v192 = v267;
          v193 = v229;
          (*(v266 + 16))(v229, v190, v267);
          v194 = sub_25BDDF648();
          v195 = sub_25BDDFFC8();
          if (os_log_type_enabled(v194, v195))
          {
            v196 = swift_slowAlloc();
            *v196 = 0;
            _os_log_impl(&dword_25BD8D000, v194, v195, "Can't handle dismiss promo action from non promo item", v196, 2u);
            MEMORY[0x25F87C8F0](v196, -1, -1);
          }

          (*(v191 + 8))(v193, v192);
          return (*(v141 + 8))(v249, v189);
        }
      }

      else if (v76 == *MEMORY[0x277D2B7C8])
      {
        v179 = sub_25BDDFF88();
        v180 = v244;
        (*(*(v179 - 8) + 56))(v244, 1, 1, v179);
        v181 = v238;
        v182 = v243;
        v183 = v245;
        (*(v238 + 16))(v243, v236, v245);
        sub_25BDDFF48();
        v184 = v263;

        v185 = sub_25BDDFF38();
        v186 = (*(v181 + 80) + 40) & ~*(v181 + 80);
        v187 = swift_allocObject();
        v188 = MEMORY[0x277D85700];
        *(v187 + 2) = v185;
        *(v187 + 3) = v188;
        *(v187 + 4) = v184;
        (*(v181 + 32))(&v187[v186], v182, v183);
        sub_25BDAFA6C(0, 0, v180, &unk_25BDE3408, v187);
      }

      else
      {
        v202 = sub_25BDB7ADC();
        v203 = v266;
        v204 = v230;
        (*(v266 + 16))(v230, v202, v267);
        v205 = v253;
        v206 = v222;
        v207 = v255;
        (*(v253 + 16))(v222, v254, v255);
        v208 = sub_25BDDF648();
        LODWORD(v268) = sub_25BDDFFE8();
        if (os_log_type_enabled(v208, v268))
        {
          v209 = v206;
          v210 = swift_slowAlloc();
          v264 = v210;
          v265 = swift_slowAlloc();
          v269[0] = v265;
          *v210 = 136315138;
          sub_25BDDFA68();
          v211 = sub_25BDDFE68();
          v213 = v212;
          (*(v205 + 8))(v209, v207);
          v214 = sub_25BDA6444(v211, v213, v269);

          v215 = v264;
          *(v264 + 1) = v214;
          v216 = v215;
          _os_log_impl(&dword_25BD8D000, v208, v268, "Not handling action: %s", v215, 0xCu);
          v217 = v265;
          __swift_destroy_boxed_opaque_existential_0(v265);
          MEMORY[0x25F87C8F0](v217, -1, -1);
          MEMORY[0x25F87C8F0](v216, -1, -1);

          (*(v203 + 8))(v230, v267);
        }

        else
        {

          (*(v205 + 8))(v206, v207);
          (*(v203 + 8))(v204, v267);
        }

        return (*(v71 + 8))(v75, v70);
      }
    }

    (*(v71 + 96))(v75, v70);
    v105 = v56;
    v106 = *(v56 + 32);
    v107 = v256;
    v108 = v55;
    v106(v256, v75, v55);
    sub_25BDDF808();
    v109 = v266;
    v110 = v267;
    v111 = v257;
    if (v112)
    {
      v113 = v252;
      sub_25BDDF3F8();

      v115 = v264;
      v114 = v265;
      if ((*(v264 + 6))(v113, 1, v265) != 1)
      {
        v164 = v241;
        v115[4](v241, v113, v114);
        v165 = *(v263 + OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel_openPathHandler + 8);
        (*(v263 + OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel_openPathHandler))(v164);
        (v115[1])(v164, v114);
        return (*(v105 + 8))(v107, v108);
      }

      sub_25BDA8554(v113, &unk_27FBDD9A0, &unk_25BDE2670);
    }

    v116 = sub_25BDB7ADC();
    (*(v109 + 16))(v111, v116, v110);
    v117 = sub_25BDDF648();
    v118 = sub_25BDDFFC8();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      *v119 = 0;
      _os_log_impl(&dword_25BD8D000, v117, v118, "Can't open path. No url", v119, 2u);
      MEMORY[0x25F87C8F0](v119, -1, -1);
    }

    (*(v109 + 8))(v111, v110);
    return (*(v105 + 8))(v107, v108);
  }

  (*(v71 + 96))(v75, v70);
  v90 = v56;
  v91 = v75;
  v92 = v55;
  (*(v56 + 32))(v67, v91, v55);
  sub_25BDDF808();
  v93 = v266;
  v94 = v267;
  if (v95)
  {
    v268 = v55;
    v96 = v259;
    sub_25BDDF3F8();

    v98 = v264;
    v97 = v265;
    if ((*(v264 + 6))(v96, 1, v265) != 1)
    {
      v136 = v251;
      v98[4](v251, v96, v97);
      v138 = *(v263 + OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel_openAMSHandler);
      v137 = *(v263 + OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel_openAMSHandler + 8);
      v139 = sub_25BDDF7F8();
      v140 = sub_25BDDF7E8();
      v138(v136, v139, v140);

      (v98[1])(v136, v97);
      return (*(v56 + 8))(v67, v268);
    }

    sub_25BDA8554(v96, &unk_27FBDD9A0, &unk_25BDE2670);
    v92 = v268;
  }

  v99 = sub_25BDB7ADC();
  v100 = v260;
  (*(v93 + 16))(v260, v99, v94);
  v101 = sub_25BDDF648();
  v102 = sub_25BDDFFC8();
  if (os_log_type_enabled(v101, v102))
  {
    v103 = swift_slowAlloc();
    *v103 = 0;
    _os_log_impl(&dword_25BD8D000, v101, v102, "Can't launch AMS. No url", v103, 2u);
    MEMORY[0x25F87C8F0](v103, -1, -1);
  }

  (*(v93 + 8))(v100, v94);
  return (*(v90 + 8))(v67, v92);
}

uint64_t sub_25BDDAB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = sub_25BDDF668();
  v6[6] = v7;
  v8 = *(v7 - 8);
  v6[7] = v8;
  v9 = *(v8 + 64) + 15;
  v6[8] = swift_task_alloc();
  v10 = sub_25BDDF6E8();
  v6[9] = v10;
  v11 = *(v10 - 8);
  v6[10] = v11;
  v12 = *(v11 + 64) + 15;
  v6[11] = swift_task_alloc();
  v13 = sub_25BDDF6F8();
  v6[12] = v13;
  v14 = *(v13 - 8);
  v6[13] = v14;
  v15 = *(v14 + 64) + 15;
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  sub_25BDDFF48();
  v6[16] = sub_25BDDFF38();
  v17 = sub_25BDDFF28();

  return MEMORY[0x2822009F8](sub_25BDDACF0, v17, v16);
}

uint64_t sub_25BDDACF0()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[3];

  v7 = *(*v5 + 192);
  v7(v6);
  v8 = *(v4 + 88);
  v9 = v8(v2, v3);
  v10 = v0[15];
  if (v9 == *MEMORY[0x277D2B668])
  {
    v11 = v9;
    v12 = v0[12];
    v13 = v0[3];
    v56 = *(v0[13] + 96);
    v57 = v0[14];
    v14 = v56(v0[15], v12);
    v58 = *v10;
    v7(v14);
    v15 = v8(v57, v12);
    v16 = v0[12];
    if (v15 != v11)
    {
      (*(v0[13] + 8))(v0[14], v16);
LABEL_7:

      goto LABEL_8;
    }

    v17 = v58;
    v18 = v0[14];
    v19 = v0[4];
    v56(v18, v16);
    v20 = *v18;
    v21 = swift_task_alloc();
    *(v21 + 16) = v19;
    v22 = sub_25BDDBC08(sub_25BDDD084, v21, v20);
    v24 = v23;

    if (v24)
    {
      goto LABEL_7;
    }

    v42 = v0[5];
    sub_25BDDFA78();
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      if ((v22 & 0x8000000000000000) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      result = sub_25BDDBECC(v58);
      v17 = result;
      if ((v22 & 0x8000000000000000) == 0)
      {
LABEL_16:
        if (v22 < v17[2])
        {
          v43 = v17 + ((*(v0[10] + 80) + 32) & ~*(v0[10] + 80)) + *(v0[10] + 72) * v22;
          result = sub_25BDDF688();
          v0[2] = v17;
          if (v22 < v17[2])
          {
            v45 = v0[10];
            v44 = v0[11];
            v46 = v0[9];
            (*(v45 + 16))(v44, v43, v46);
            v47 = sub_25BDDF6B8();
            v48 = *(v45 + 8);
            v48(v44, v46);
            v49 = *(v47 + 16);

            if (!v49)
            {
              v51 = v0[11];
              v52 = v0[9];
              sub_25BDDB14C(v22, v51);
              v48(v51, v52);
            }

            v53 = v0[3];
            MEMORY[0x25F87BB50](v50, 0.15, 0.85, 0.25);
            v54 = swift_task_alloc();
            *(v54 + 16) = v53;
            *(v54 + 24) = v0 + 2;
            sub_25BDDFB88();

            v55 = v0[2];

            goto LABEL_11;
          }

LABEL_24:
          __break(1u);
          return result;
        }

LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  (*(v0[13] + 8))(v0[15], v0[12]);
LABEL_8:
  v26 = v0[7];
  v25 = v0[8];
  v27 = v0[6];
  v28 = sub_25BDB7ADC();
  (*(v26 + 16))(v25, v28, v27);
  v29 = sub_25BDDF648();
  v30 = sub_25BDDFFC8();
  v31 = os_log_type_enabled(v29, v30);
  v33 = v0[7];
  v32 = v0[8];
  v34 = v0[6];
  if (v31)
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_25BD8D000, v29, v30, "Can't handle dismiss promo action due to unknown section index", v35, 2u);
    MEMORY[0x25F87C8F0](v35, -1, -1);
  }

  (*(v33 + 8))(v32, v34);
LABEL_11:
  v37 = v0[14];
  v36 = v0[15];
  v38 = v0[11];
  v39 = v0[8];

  v40 = v0[1];

  return v40();
}

uint64_t sub_25BDDB14C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25BDDBECC(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = sub_25BDDF6E8();
    v10 = *(v9 - 8);
    v11 = *(v10 + 72);
    v12 = v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v11 * a1;
    result = (*(v10 + 32))(a2, v12, v9);
    if (v11 > 0 || v12 >= v12 + v11 + v11 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v11)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_25BDDB254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_25BDDF668();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  v9 = sub_25BDDF6F8();
  v5[8] = v9;
  v10 = *(v9 - 8);
  v5[9] = v10;
  v11 = *(v10 + 64) + 15;
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  sub_25BDDFF48();
  v5[12] = sub_25BDDFF38();
  v13 = sub_25BDDFF28();

  return MEMORY[0x2822009F8](sub_25BDDB3B0, v13, v12);
}

uint64_t sub_25BDDB3B0()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[3];

  v7 = *(*v5 + 192);
  v7(v6);
  v8 = *(v4 + 88);
  v9 = v8(v2, v3);
  v10 = v0[11];
  if (v9 != *MEMORY[0x277D2B668])
  {
    (*(v0[9] + 8))(v0[11], v0[8]);
LABEL_8:
    v26 = v0[6];
    v25 = v0[7];
    v27 = v0[5];
    v28 = sub_25BDB7ADC();
    (*(v26 + 16))(v25, v28, v27);
    v29 = sub_25BDDF648();
    v30 = sub_25BDDFFC8();
    v31 = os_log_type_enabled(v29, v30);
    v33 = v0[6];
    v32 = v0[7];
    v34 = v0[5];
    if (v31)
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_25BD8D000, v29, v30, "Can't handle expand section action due to unknown section index", v35, 2u);
      MEMORY[0x25F87C8F0](v35, -1, -1);
    }

    (*(v33 + 8))(v32, v34);
    goto LABEL_11;
  }

  v11 = v9;
  v12 = v0[8];
  v13 = v0[3];
  v47 = *(v0[9] + 96);
  v48 = v0[10];
  v14 = v47(v0[11], v12);
  v49 = *v10;
  v7(v14);
  v15 = v8(v48, v12);
  v16 = v0[8];
  if (v15 != v11)
  {
    (*(v0[9] + 8))(v0[10], v16);
LABEL_7:

    goto LABEL_8;
  }

  v17 = v49;
  v18 = v0[10];
  v19 = v0[4];
  v47(v18, v16);
  v20 = *v18;
  v21 = swift_task_alloc();
  *(v21 + 16) = v19;
  v22 = sub_25BDDBC08(sub_25BDDD1B8, v21, v20);
  v24 = v23;

  if (v24)
  {
    goto LABEL_7;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v22 & 0x8000000000000000) == 0)
    {
      goto LABEL_16;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = sub_25BDDBECC(v49);
  v17 = result;
  if ((v22 & 0x8000000000000000) != 0)
  {
    goto LABEL_19;
  }

LABEL_16:
  if (v22 >= v17[2])
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v41 = v0[3];
  v42 = *(sub_25BDDF6E8() - 8);
  v43 = v17 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v22;
  v44 = sub_25BDDF678();
  v0[2] = v17;
  MEMORY[0x25F87BB50](v44, 0.15, 0.85, 0.25);
  v45 = swift_task_alloc();
  *(v45 + 16) = v41;
  *(v45 + 24) = v0 + 2;
  sub_25BDDFB88();

  v46 = v0[2];

LABEL_11:
  v37 = v0[10];
  v36 = v0[11];
  v38 = v0[7];

  v39 = v0[1];

  return v39();
}

uint64_t sub_25BDDB79C(uint64_t a1, void *a2)
{
  v4 = sub_25BDDF6F8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = *a2;
  (*(v8 + 104))(v7, *MEMORY[0x277D2B668]);
  v9 = *(*a1 + 200);

  return v9(v7);
}

uint64_t CoverageCentralViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__state;
  v2 = sub_25BDDF6F8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_25BDA8554(v0 + OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__dataDate, &qword_27FBDD298, &unk_25BDE2B20);
  sub_25BDA8554(v0 + OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__appendSettingsNavigationPath, &qword_27FBDD2A0, &qword_25BDE2548);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__dataProvider));
  v3 = *(v0 + OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__deviceWarrantyViewModelProvider + 8);

  v4 = *(v0 + OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel_openAMSHandler + 8);

  v5 = *(v0 + OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel_openPathHandler + 8);

  v6 = *(v0 + OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel_startWebHandler + 8);

  v7 = OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel___observationRegistrar;
  v8 = sub_25BDDF4C8();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  return v0;
}

uint64_t CoverageCentralViewModel.__deallocating_deinit()
{
  CoverageCentralViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_25BDDBB7C()
{
  v0 = sub_25BDDF6A8();
  v2 = v1;
  if (v0 == sub_25BDDF6A8() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_25BDE01C8();
  }

  return v4 & 1;
}

uint64_t sub_25BDDBC08(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(sub_25BDDF6E8() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

size_t sub_25BDDBCF4(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDDA18, qword_25BDE34E8);
  v10 = *(sub_25BDDF6E8() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_25BDDF6E8() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_25BDDBEE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25BDDF438();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD298, &unk_25BDE2B20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD300, &qword_25BDE2758);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_25BDA84EC(a1, &v24 - v16, &qword_27FBDD298, &unk_25BDE2B20);
  sub_25BDA84EC(a2, &v17[v18], &qword_27FBDD298, &unk_25BDE2B20);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_25BDA84EC(v17, v12, &qword_27FBDD298, &unk_25BDE2B20);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_25BDDD158(&qword_27FBDD308, MEMORY[0x277CC9578]);
      v21 = sub_25BDDFE28();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_25BDA8554(v17, &qword_27FBDD298, &unk_25BDE2B20);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_25BDA8554(v17, &qword_27FBDD300, &qword_25BDE2758);
    v20 = 1;
    return v20 & 1;
  }

  sub_25BDA8554(v17, &qword_27FBDD298, &unk_25BDE2B20);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_25BDDC284(uint64_t a1, uint64_t a2)
{
  v4 = sub_25BDDF5D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD2A0, &qword_25BDE2548);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD2F0, &qword_25BDE2750);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_25BDA84EC(a1, &v24 - v16, &qword_27FBDD2A0, &qword_25BDE2548);
  sub_25BDA84EC(a2, &v17[v18], &qword_27FBDD2A0, &qword_25BDE2548);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_25BDA84EC(v17, v12, &qword_27FBDD2A0, &qword_25BDE2548);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_25BDDD158(&qword_27FBDD2F8, MEMORY[0x277D402D0]);
      v21 = sub_25BDDFE28();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_25BDA8554(v17, &qword_27FBDD2A0, &qword_25BDE2548);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_25BDA8554(v17, &qword_27FBDD2F0, &qword_25BDE2750);
    v20 = 1;
    return v20 & 1;
  }

  sub_25BDA8554(v17, &qword_27FBDD2A0, &qword_25BDE2548);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_25BDDC5E8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25BDB45AC;

  return sub_25BDD70C4(v3, v4, v5, v2);
}

uint64_t sub_25BDDC67C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25BDB45AC;

  return sub_25BDD72CC(v3, v4, v5, v2);
}

unint64_t sub_25BDDC73C()
{
  result = qword_27FBDD9F0;
  if (!qword_27FBDD9F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD728, &unk_25BDE2E70);
    sub_25BDDD158(&qword_27FBDD9F8, MEMORY[0x277D2B648]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD9F0);
  }

  return result;
}

uint64_t sub_25BDDC81C()
{
  v2 = *(sub_25BDDF6E8() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25BDB45AC;

  return sub_25BDDB254(v5, v6, v7, v4, v0 + v3);
}

uint64_t sub_25BDDC8F4()
{
  v2 = *(sub_25BDDF6E8() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_25BDDFA88() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 32);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_25BDAFE88;

  return sub_25BDDAB34(v8, v9, v10, v7, v0 + v3, v0 + v6);
}

uint64_t sub_25BDDCA28()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  KeyPath = swift_getKeyPath();
  (*(*v1 + 536))(KeyPath);

  v6 = *(v1 + OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__deviceWarrantyViewModelProvider);
  v5 = *(v1 + OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__deviceWarrantyViewModelProvider + 8);

  v7 = sub_25BDDF888();
  v9 = v8;
  v10 = sub_25BDDF7F8();
  v11 = v6(v7, v9, v10);

  return sub_25BDCBA3C(v11);
}

void sub_25BDDCB44()
{
  v0 = sub_25BDDF6F8();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_25BDB4218(319, &qword_27FBDD2E0, MEMORY[0x277CC9578]);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_25BDB4218(319, &qword_27FBDD2E8, MEMORY[0x277D402D0]);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        v6 = sub_25BDDF4C8();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_25BDDCFB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v9[0] = a1;
  v9[1] = a2;
  v8 = a3;
  v4(&v7, v9, &v8);
  return v7;
}

uint64_t sub_25BDDCFF8()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__deviceWarrantyViewModelProvider);
  v3 = v2[1];
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_25BDDD044@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  result = v5(*a1, a1[1], *a2);
  *a3 = result;
  return result;
}

uint64_t sub_25BDDD0E0()
{
  v1 = *(v0 + 16);
  sub_25BDB39C4(*(v0 + 24), v4);
  v2 = OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__dataProvider;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v1 + v2));
  sub_25BDB3938(v4, v1 + v2);
  return swift_endAccess();
}

uint64_t sub_25BDDD158(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_25BDDD1E4()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27FBDE500 = result;
  return result;
}

uint64_t sub_25BDDD2D0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_25BDDF5F8();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  if (qword_27FBDE4F8 != -1)
  {
    swift_once();
  }

  v4 = qword_27FBDE500;
  return sub_25BDDF5E8();
}

uint64_t sub_25BDDD3BC()
{
  v0 = sub_25BDDF5F8();
  __swift_allocate_value_buffer(v0, qword_27FBDE568);
  __swift_project_value_buffer(v0, qword_27FBDE568);
  if (qword_27FBDE4F8 != -1)
  {
    swift_once();
  }

  v1 = qword_27FBDE500;
  return sub_25BDDF5E8();
}

uint64_t sub_25BDDD488(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_25BDDF5F8();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_25BDDD500@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_25BDDF5F8();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}