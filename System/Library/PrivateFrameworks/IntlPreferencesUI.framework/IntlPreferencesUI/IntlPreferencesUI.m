uint64_t sub_25555E8E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25556D14C();
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
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_25555E9AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25556D14C();
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
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_25555EA6C()
{
  v1 = type metadata accessor for IPLanguageDiscoveryChoiceButton();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v1 - 8) + 64);
  v6 = *(v1 + 20);
  v7 = sub_25556D14C();
  (*(*(v7 - 8) + 8))(v0 + v4 + v6, v7);
  v8 = *(v0 + v4 + *(v2 + 32) + 8);

  v9 = *(v0 + v4 + *(v2 + 36));

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25555EB80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9570, &qword_25556E6F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25555EBF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9570, &qword_25556E6F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25555EC5C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_25555EC98(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = sub_25556D6DC();
  [v4 setLocaleIdentifier_];
}

uint64_t sub_25555ED04()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25555ED3C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25555ED80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25556D14C();
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

uint64_t sub_25555EE40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25556D14C();
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

uint64_t sub_25555EF38@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25556D29C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25555EFA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9708, &qword_25556E978);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25555F010@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25556D23C();
  *a1 = result;
  return result;
}

uint64_t sub_25555F03C(uint64_t *a1)
{
  v1 = *a1;

  return sub_25556D24C();
}

uint64_t sub_25555F068()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7B9650, &qword_25556E8F8);
  type metadata accessor for IPLanguageDiscoveryViewModel(255);
  sub_2555683E8(&qword_27F7B9670, &qword_27F7B9650, &qword_25556E8F8);
  sub_25556CDE0(&qword_27F7B9520, type metadata accessor for IPLanguageDiscoveryViewModel);
  return swift_getOpaqueTypeConformance2();
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

void type metadata accessor for IPLanguageDiscoveryChoice()
{
  if (!qword_27F7B94B8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27F7B94B8);
    }
  }
}

uint64_t sub_255564BCC@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v2 = sub_25556D0CC();
  v54 = *(v2 - 8);
  v55 = v2;
  v3 = *(v54 + 64);
  (MEMORY[0x28223BE20])();
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_25556D14C();
  v6 = *(v56 - 8);
  v7 = *(v6 + 64);
  v8 = (MEMORY[0x28223BE20])();
  v53 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v52 - v10;
  v58 = sub_25556D6CC();
  v12 = *(v58 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v58);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v52 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v52 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v52 - v23;
  v25 = sub_25556D6AC();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = *v1;
  if (*v1 == 3)
  {
    sub_25556D66C();
    sub_255568298();
    v42 = sub_25556D71C();
    if (!v42)
    {
      v42 = [objc_opt_self() mainBundle];
    }

    v43 = v42;
    sub_25556D13C();
    (*(v12 + 16))(v22, v16, v58);
    v44 = v56;
    (*(v6 + 16))(v53, v11, v56);
    v45 = [v43 bundleURL];
    sub_25556D0FC();

    (*(v54 + 104))(v5, *MEMORY[0x277CC9118], v55);
    v46 = v57;
    sub_25556D0EC();

    (*(v6 + 8))(v11, v44);
    (*(v12 + 8))(v16, v58);
    v47 = sub_25556D0DC();
    return (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
  }

  else
  {
    if (v27 == 2)
    {
      sub_25556D66C();
      sub_255568298();
      v36 = sub_25556D71C();
      if (!v36)
      {
        v36 = [objc_opt_self() mainBundle];
      }

      v37 = v36;
      sub_25556D13C();
      (*(v12 + 16))(v22, v19, v58);
      v38 = v56;
      (*(v6 + 16))(v53, v11, v56);
      v39 = [v37 bundleURL];
      sub_25556D0FC();

      (*(v54 + 104))(v5, *MEMORY[0x277CC9118], v55);
      v35 = v57;
      sub_25556D0EC();

      (*(v6 + 8))(v11, v38);
      (*(v12 + 8))(v19, v58);
      goto LABEL_10;
    }

    if (v27 == 1)
    {
      sub_25556D69C();
      sub_25556D68C();
      v28 = (v1 + *(type metadata accessor for IPLanguageDiscoveryChoiceButton() + 24));
      v29 = *v28;
      v30 = v28[1];
      sub_25556D67C();
      sub_25556D68C();
      sub_25556D6BC();
      sub_255568298();
      v31 = sub_25556D71C();
      if (!v31)
      {
        v31 = [objc_opt_self() mainBundle];
      }

      v32 = v31;
      sub_25556D13C();
      (*(v12 + 16))(v22, v24, v58);
      v33 = v56;
      (*(v6 + 16))(v53, v11, v56);
      v34 = [v32 bundleURL];
      sub_25556D0FC();

      (*(v54 + 104))(v5, *MEMORY[0x277CC9118], v55);
      v35 = v57;
      sub_25556D0EC();

      (*(v6 + 8))(v11, v33);
      (*(v12 + 8))(v24, v58);
LABEL_10:
      v40 = sub_25556D0DC();
      return (*(*(v40 - 8) + 56))(v35, 0, 1, v40);
    }

    v48 = sub_25556D0DC();
    v49 = *(*(v48 - 8) + 56);
    v50 = v48;
    v51 = v57;

    return v49(v51, 1, 1, v50);
  }
}

uint64_t sub_2555653B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_25556D0CC();
  v72 = *(v4 - 8);
  v73 = v4;
  v5 = *(v72 + 64);
  MEMORY[0x28223BE20](v4);
  v71 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25556D6CC();
  v74 = *(v7 - 8);
  v75 = v7;
  v8 = *(v74 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v66 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v66 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v66 - v18;
  v76 = sub_25556D14C();
  v20 = *(v76 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v76);
  v70 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v66 - v24;
  v26 = sub_25556D6AC();
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  MEMORY[0x28223BE20](v28);
  v29 = *v2;
  if (*v2 == 3)
  {
    v69 = a1;
    sub_25556D66C();
    sub_255568298();
    v59 = sub_25556D71C();
    if (!v59)
    {
      v59 = [objc_opt_self() mainBundle];
    }

    v60 = v59;
    v62 = v74;
    v61 = v75;
    sub_25556D13C();
    (*(v62 + 16))(v17, v11, v61);
    v63 = v76;
    (*(v20 + 16))(v70, v25, v76);
    v64 = [v60 bundleURL];
    v65 = v71;
    sub_25556D0FC();

    (*(v72 + 104))(v65, *MEMORY[0x277CC9118], v73);
    sub_25556D0EC();

    (*(v20 + 8))(v25, v63);
    return (*(v62 + 8))(v11, v75);
  }

  else
  {
    if (v29 != 2)
    {
      if (v29 != 1)
      {
        v35 = 0;
        v36 = 0xE000000000000000;

        return MEMORY[0x28211CB40](v35, v36);
      }

      v69 = a1;
      sub_25556D69C();
      sub_25556D68C();
      sub_25556D13C();
      v30 = sub_25556D12C();
      v67 = *(v20 + 8);
      v68 = (v20 + 8);
      v67(v25, v76);
      v31 = type metadata accessor for IPLanguageDiscoveryChoiceButton();
      v32 = v2 + *(v31 + 20);
      sub_25556D11C();
      v33 = sub_25556D6DC();

      v34 = [v30 localizedStringForLanguage:v33 context:5];

      if (v34)
      {
        sub_25556D6EC();

        sub_25556D67C();

        sub_25556D68C();
        v37 = (v2 + *(v31 + 24));
        v38 = *v37;
        v39 = v37[1];
        sub_25556D67C();
        sub_25556D68C();
        sub_25556D6BC();
        sub_255568298();
        v40 = sub_25556D71C();
        if (!v40)
        {
          v40 = [objc_opt_self() mainBundle];
        }

        v41 = v40;
        v43 = v74;
        v42 = v75;
        sub_25556D13C();
        (*(v43 + 16))(v17, v19, v42);
        v44 = v76;
        (*(v20 + 16))(v70, v25, v76);
        v45 = [v41 bundleURL];
        v46 = v71;
        sub_25556D0FC();

        (*(v72 + 104))(v46, *MEMORY[0x277CC9118], v73);
        sub_25556D0EC();

        v67(v25, v44);
        return (*(v43 + 8))(v19, v42);
      }

LABEL_20:
      __break(1u);
      return MEMORY[0x28211CB40](v35, v36);
    }

    v69 = a1;
    sub_25556D69C();
    sub_25556D68C();
    sub_25556D13C();
    v48 = sub_25556D12C();
    v68 = *(v20 + 8);
    v68(v25, v76);
    v49 = v2 + *(type metadata accessor for IPLanguageDiscoveryChoiceButton() + 20);
    sub_25556D11C();
    v50 = sub_25556D6DC();

    v51 = [v48 localizedStringForLanguage:v50 context:5];

    if (!v51)
    {
      __break(1u);
      goto LABEL_20;
    }

    sub_25556D6EC();

    sub_25556D67C();

    sub_25556D68C();
    sub_25556D6BC();
    sub_255568298();
    v52 = sub_25556D71C();
    v67 = (v20 + 8);
    if (!v52)
    {
      v52 = [objc_opt_self() mainBundle];
    }

    v53 = v52;
    v55 = v74;
    v54 = v75;
    sub_25556D13C();
    (*(v55 + 16))(v17, v14, v54);
    v56 = v76;
    (*(v20 + 16))(v70, v25, v76);
    v57 = [v53 bundleURL];
    v58 = v71;
    sub_25556D0FC();

    (*(v72 + 104))(v58, *MEMORY[0x277CC9118], v73);
    sub_25556D0EC();

    v68(v25, v56);
    return (*(v55 + 8))(v14, v54);
  }
}

uint64_t sub_255565CE0@<X0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v2 = sub_25556D2CC();
  v65 = *(v2 - 8);
  v66 = v2;
  v3 = *(v65 + 64);
  MEMORY[0x28223BE20](v2);
  v64 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25556D21C();
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B94E0, &qword_25556E660);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v63 - v12;
  v14 = type metadata accessor for IPLanguageDiscoveryChoiceButton();
  v15 = v14 - 8;
  v16 = *(v14 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B94E8, &qword_25556E668);
  v68 = *(v18 - 8);
  v69 = v18;
  v19 = *(v68 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v63 - v20;
  sub_255567E28(v1, &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for IPLanguageDiscoveryChoiceButton);
  v22 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v23 = swift_allocObject();
  sub_255567BD0(&v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
  v71 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B94F0, &qword_25556E670);
  sub_255567C9C();
  v67 = v21;
  sub_25556D63C();
  v24 = *(v6 + 28);
  v25 = *MEMORY[0x277CE0118];
  v26 = sub_25556D34C();
  (*(*(v26 - 8) + 104))(&v9[v24], v25, v26);
  __asm { FMOV            V0.2D, #20.0 }

  *v9 = _Q0;
  v32 = *v1;
  v33 = v1 + *(v15 + 36);
  v34 = *v33;
  v35 = v33[8];

  v36 = v34;
  if ((v35 & 1) == 0)
  {
    sub_25556D70C();
    v37 = sub_25556D40C();
    sub_25556D19C();

    v38 = v64;
    sub_25556D2BC();
    swift_getAtKeyPath();

    (*(v65 + 8))(v38, v66);
    v36 = v72;
  }

  swift_getKeyPath();
  *&v72 = v36;
  sub_255567DE0(&qword_27F7B9520, type metadata accessor for IPLanguageDiscoveryViewModel);
  sub_25556D16C();

  v39 = *(v36 + 16);
  v40 = *(v36 + 24);

  if ((v40 & 1) != 0 || v32 != v39)
  {
    v42 = [objc_opt_self() quaternaryLabelColor];
    v41 = sub_25556D5BC();
  }

  else
  {
    v41 = sub_25556D58C();
  }

  v43 = v41;

  if ((v35 & 1) == 0)
  {
    sub_25556D70C();
    v44 = sub_25556D40C();
    sub_25556D19C();

    v45 = v64;
    sub_25556D2BC();
    swift_getAtKeyPath();

    (*(v65 + 8))(v45, v66);
    v34 = v72;
  }

  swift_getKeyPath();
  *&v72 = v34;
  sub_25556D16C();

  v46 = *(v34 + 16);
  v47 = *(v34 + 24);

  sub_25556D1DC();
  sub_255567E28(v9, v13, MEMORY[0x277CDFC08]);
  v48 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9528, &qword_25556E6B0) + 36)];
  v49 = v73;
  *v48 = v72;
  *(v48 + 1) = v49;
  *(v48 + 4) = v74;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9530, &qword_25556E6B8);
  *&v13[*(v50 + 52)] = v43;
  *&v13[*(v50 + 56)] = 256;
  v51 = sub_25556D65C();
  v53 = v52;
  sub_255567E90(v9);
  v54 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9538, &qword_25556E6C0) + 36)];
  *v54 = v51;
  v54[1] = v53;
  v55 = sub_25556D65C();
  v57 = v56;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9540, &qword_25556E6C8);
  v59 = v70;
  v60 = v70 + *(v58 + 36);
  sub_255567EEC(v13, v60);
  v61 = (v60 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9548, &qword_25556E6D0) + 36));
  *v61 = v55;
  v61[1] = v57;
  return (*(v68 + 32))(v59, v67, v69);
}

uint64_t sub_2555663BC(uint64_t *a1)
{
  v2 = sub_25556D2CC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1 + *(type metadata accessor for IPLanguageDiscoveryChoiceButton() + 28);
  v8 = *v7;
  v9 = v7[8];

  if ((v9 & 1) == 0)
  {
    sub_25556D70C();
    v10 = sub_25556D40C();
    sub_25556D19C();

    sub_25556D2BC();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
    v8 = v14;
  }

  v11 = *a1;
  if ((*(v8 + 24) & 1) != 0 || *(v8 + 16) != v11)
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    *(&v13 - 4) = v8;
    *(&v13 - 3) = v11;
    *(&v13 - 16) = 0;
    v14 = v8;
    sub_255567DE0(&qword_27F7B9520, type metadata accessor for IPLanguageDiscoveryViewModel);
    sub_25556D15C();
  }

  else
  {
    *(v8 + 24) = 0;
  }
}

__n128 sub_255566608@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9508, &qword_25556E678);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - v7;
  *v8 = sub_25556D2DC();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9550, &qword_25556E6D8);
  sub_255566790(a1, &v8[*(v9 + 44)]);
  v10 = sub_25556D42C();
  v11 = &v8[*(v5 + 44)];
  *v11 = v10;
  *(v11 + 8) = 0u;
  *(v11 + 24) = 0u;
  v11[40] = 1;
  sub_25556D65C();
  sub_25556D22C();
  sub_2555680C0(v8, a2, &qword_27F7B9508, &qword_25556E678);
  v12 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B94F0, &qword_25556E670) + 36);
  v13 = v16[5];
  *(v12 + 64) = v16[4];
  *(v12 + 80) = v13;
  *(v12 + 96) = v16[6];
  v14 = v16[1];
  *v12 = v16[0];
  *(v12 + 16) = v14;
  result = v16[3];
  *(v12 + 32) = v16[2];
  *(v12 + 48) = result;
  return result;
}

uint64_t sub_255566790@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25556D2CC();
  v91 = *(v4 - 8);
  v5 = *(v91 + 64);
  MEMORY[0x28223BE20](v4);
  v90 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9558, &qword_25556E6E0);
  v98 = *(v7 - 8);
  v99 = v7;
  v8 = *(v98 + 64);
  MEMORY[0x28223BE20](v7);
  v104 = &v80 - v9;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9560, &qword_25556E6E8);
  v10 = *(*(v95 - 8) + 64);
  MEMORY[0x28223BE20](v95);
  v94 = &v80 - v11;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9568, &qword_25556E6F0);
  v12 = *(*(v92 - 8) + 64);
  MEMORY[0x28223BE20](v92);
  v97 = &v80 - v13;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9570, &qword_25556E6F8);
  v14 = *(*(v96 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v96);
  v101 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v93 = &v80 - v18;
  MEMORY[0x28223BE20](v17);
  v100 = &v80 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9578, &qword_25556E700);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v80 - v22;
  v24 = *a1;
  v102 = *a1;
  if (v102 == 1)
  {
    goto LABEL_4;
  }

  if (v24 == 3)
  {
    goto LABEL_4;
  }

  v25 = 0;
  KeyPath = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  if (v24 == 2)
  {
LABEL_4:
    v25 = sub_25556D5EC();
    sub_25556D45C();
    v34 = sub_25556D43C();
    (*(*(v34 - 8) + 56))(v23, 1, 1, v34);
    v27 = sub_25556D48C();
    sub_255568190(v23, &qword_27F7B9578, &qword_25556E700);
    KeyPath = swift_getKeyPath();
    sub_25556D65C();
    sub_25556D1FC();
    v28 = v141;
    v29 = v142;
    v30 = v143;
    v31 = v144;
    v32 = v145;
    v33 = v146;
  }

  v105 = v33;
  v106 = v32;
  v107 = v31;
  v108 = v30;
  v109 = v29;
  v110 = v28;
  v111 = KeyPath;
  v112 = v27;
  v113 = v25;
  sub_25556D65C();
  sub_25556D1FC();
  v84 = v149;
  v85 = v147;
  v82 = v152;
  v83 = v151;
  v138 = 1;
  v137 = v148;
  v136 = v150;
  v89 = sub_25556D37C();
  LOBYTE(v123) = 1;
  sub_2555672E0(a1, v139);
  *&v135[7] = v139[0];
  *&v135[23] = v139[1];
  *&v135[39] = v139[2];
  *&v135[55] = v139[3];
  v103 = v123;
  v87 = swift_getKeyPath();
  v88 = sub_25556D59C();
  v86 = swift_getKeyPath();
  v35 = a1 + *(type metadata accessor for IPLanguageDiscoveryChoiceButton() + 28);
  v36 = *v35;
  v37 = v35[8];

  v38 = v36;
  v81 = v37;
  if ((v37 & 1) == 0)
  {
    sub_25556D70C();
    v39 = sub_25556D40C();
    sub_25556D19C();

    v40 = v90;
    sub_25556D2BC();
    swift_getAtKeyPath();

    (*(v91 + 8))(v40, v4);
    v38 = v123;
  }

  v80 = v4;
  swift_getKeyPath();
  v123 = v38;
  sub_255567DE0(&qword_27F7B9520, type metadata accessor for IPLanguageDiscoveryViewModel);
  sub_25556D16C();

  v41 = *(v38 + 16);
  v42 = *(v38 + 24);

  v43 = sub_25556D5EC();
  v44 = sub_25556D4AC();
  v45 = swift_getKeyPath();
  v123 = v43;
  v124 = v45;
  *v125 = v44;
  sub_25556D47C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9580, &qword_25556E798);
  sub_255568008();
  sub_25556D52C();

  if ((v81 & 1) == 0)
  {
    sub_25556D70C();
    v46 = sub_25556D40C();
    sub_25556D19C();

    v47 = v90;
    sub_25556D2BC();
    swift_getAtKeyPath();

    (*(v91 + 8))(v47, v80);
    v36 = v123;
  }

  swift_getKeyPath();
  v123 = v36;
  sub_25556D16C();

  v48 = *(v36 + 16);
  v49 = *(v36 + 24);

  if ((v49 & 1) != 0 || v102 != v48)
  {
    v51 = [objc_opt_self() quaternaryLabelColor];
    v50 = sub_25556D5BC();
  }

  else
  {
    v50 = sub_25556D58C();
  }

  v52 = v50;
  v53 = swift_getKeyPath();
  v54 = v94;
  (*(v98 + 32))(v94, v104, v99);
  v55 = (v54 + *(v95 + 36));
  *v55 = v53;
  v55[1] = v52;
  v56 = v97;
  sub_2555680C0(v54, v97, &qword_27F7B9560, &qword_25556E6E8);
  *(v56 + *(v92 + 36)) = 256;
  sub_25556D65C();
  sub_25556D1FC();
  v57 = v56;
  v58 = v93;
  sub_2555680C0(v57, v93, &qword_27F7B9568, &qword_25556E6F0);
  v59 = (v58 + *(v96 + 36));
  v60 = v154;
  *v59 = v153;
  v59[1] = v60;
  v59[2] = v155;
  v61 = v100;
  sub_2555680C0(v58, v100, &qword_27F7B9570, &qword_25556E6F8);
  LOBYTE(v53) = v138;
  LOBYTE(v54) = v137;
  v62 = v136;
  v63 = v101;
  sub_25555EB80(v61, v101);
  *&v114 = v113;
  *(&v114 + 1) = v111;
  *&v115 = v112;
  *(&v115 + 1) = v110;
  *&v116 = v109;
  *(&v116 + 1) = v108;
  v64 = v105;
  *&v117 = v107;
  *(&v117 + 1) = v106;
  v118 = v105;
  v65 = v117;
  *(a2 + 32) = v116;
  *(a2 + 48) = v65;
  v66 = v115;
  *a2 = v114;
  *(a2 + 16) = v66;
  *(a2 + 64) = v64;
  *(a2 + 72) = 0;
  *(a2 + 80) = v53;
  v67 = v84;
  *(a2 + 88) = v85;
  *(a2 + 96) = v54;
  *(a2 + 104) = v67;
  *(a2 + 112) = v62;
  v68 = v82;
  *(a2 + 120) = v83;
  *(a2 + 128) = v68;
  v69 = v89;
  v119[0] = v89;
  v119[1] = 0;
  LOBYTE(v120[0]) = v103;
  *(v120 + 1) = *v135;
  *&v120[4] = *&v135[63];
  *(&v120[3] + 1) = *&v135[48];
  *(&v120[2] + 1) = *&v135[32];
  *(&v120[1] + 1) = *&v135[16];
  v70 = v86;
  v71 = v87;
  *(&v120[4] + 1) = v87;
  LOBYTE(v121) = 0;
  DWORD1(v121) = *&v140[3];
  *(&v121 + 1) = *v140;
  v72 = v88;
  *(&v121 + 1) = v86;
  v122 = v88;
  v73 = v89;
  v74 = v120[0];
  v75 = v120[1];
  *(a2 + 184) = v120[2];
  *(a2 + 168) = v75;
  *(a2 + 152) = v74;
  *(a2 + 136) = v73;
  v76 = v120[3];
  v77 = v120[4];
  *(a2 + 232) = v121;
  *(a2 + 216) = v77;
  *(a2 + 200) = v76;
  *(a2 + 248) = v72;
  *(a2 + 256) = 0;
  *(a2 + 264) = 1;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B95A0, &qword_25556E7A8);
  sub_25555EB80(v63, a2 + *(v78 + 96));
  sub_255568128(&v114, &v123, &qword_27F7B95A8, &qword_25556E7B0);
  sub_255568128(v119, &v123, &qword_27F7B95B0, &qword_25556E7B8);
  sub_25555EBF0(v61);
  sub_25555EBF0(v63);
  v126 = *&v135[16];
  v127 = *&v135[32];
  *v128 = *&v135[48];
  v123 = v69;
  v124 = 0;
  v125[0] = v103;
  *&v125[1] = *v135;
  *&v128[15] = *&v135[63];
  v129 = v71;
  v130 = 0;
  *v131 = *v140;
  *&v131[3] = *&v140[3];
  v132 = v70;
  v133 = v72;
  sub_255568190(&v123, &qword_27F7B95B0, &qword_25556E7B8);
  v134[0] = v113;
  v134[1] = v111;
  v134[2] = v112;
  v134[3] = v110;
  v134[4] = v109;
  v134[5] = v108;
  v134[6] = v107;
  v134[7] = v106;
  v134[8] = v105;
  return sub_255568190(v134, &qword_27F7B95A8, &qword_25556E7B0);
}

uint64_t sub_2555672E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v74 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9578, &qword_25556E700);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v63 - v5;
  v7 = sub_25556D4BC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B95B8, &qword_25556E7C0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v63 - v14;
  v16 = sub_25556D0DC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v63 - v22;
  v73 = a1;
  sub_255564BCC(v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_255568190(v15, &qword_27F7B95B8, &qword_25556E7C0);
    v71 = 0;
    v72 = 0;
    v24 = 0;
    v70 = 0;
    v25 = *MEMORY[0x277CE0A68];
  }

  else
  {
    (*(v17 + 32))(v23, v15, v16);
    (*(v17 + 16))(v21, v23, v16);
    v70 = sub_25556D4FC();
    v71 = v26;
    v63 = v27;
    v72 = v28;
    v66 = *MEMORY[0x277CE0A68];
    (*(v8 + 104))(v11);
    v29 = sub_25556D43C();
    (*(*(v29 - 8) + 56))(v6, 1, 1, v29);
    sub_25556D44C();
    sub_25556D49C();
    sub_255568190(v6, &qword_27F7B9578, &qword_25556E700);
    (*(v8 + 8))(v11, v7);
    v65 = v23;
    v30 = v11;
    v31 = v70;
    v32 = v21;
    v33 = v71;
    v34 = sub_25556D4DC();
    v68 = v8;
    v69 = v7;
    v35 = v34;
    v37 = v36;
    v64 = v38;
    v67 = v6;
    v40 = v39;

    v41 = v31;
    v11 = v30;
    v42 = v33;
    v21 = v32;
    sub_2555681F0(v41, v42, v63 & 1);

    (*(v17 + 8))(v65, v16);
    v25 = v66;
    v24 = v64 & 1;
    v71 = v37;
    v72 = v35;
    v43 = v35;
    v44 = v37;
    v8 = v68;
    v7 = v69;
    sub_255568244(v43, v44, v64 & 1);
    v70 = v40;
    v6 = v67;
  }

  sub_2555653B4(v21);
  v45 = sub_25556D4FC();
  v47 = v46;
  v49 = v48;
  (*(v8 + 104))(v11, v25, v7);
  v50 = sub_25556D43C();
  (*(*(v50 - 8) + 56))(v6, 1, 1, v50);
  sub_25556D49C();
  sub_255568190(v6, &qword_27F7B9578, &qword_25556E700);
  (*(v8 + 8))(v11, v7);
  v51 = sub_25556D4DC();
  v53 = v52;
  v55 = v54;
  v57 = v56;

  sub_2555681F0(v45, v47, v49 & 1);

  v59 = v71;
  v58 = v72;
  v60 = v70;
  sub_255568200(v72, v71, v24, v70);
  sub_255568244(v51, v53, v55 & 1);

  sub_255568254(v58, v59, v24, v60);
  v75 = v55 & 1;
  v61 = v74;
  *v74 = v58;
  v61[1] = v59;
  v61[2] = v24;
  v61[3] = v60;
  v61[4] = v51;
  v61[5] = v53;
  *(v61 + 48) = v55 & 1;
  v61[7] = v57;
  sub_2555681F0(v51, v53, v55 & 1);

  return sub_255568254(v58, v59, v24, v60);
}

uint64_t sub_2555678D8()
{
  v1 = *v0;
  sub_25556D74C();
  MEMORY[0x259C389F0](v1);
  return sub_25556D76C();
}

uint64_t sub_25556794C()
{
  v1 = *v0;
  sub_25556D74C();
  MEMORY[0x259C389F0](v1);
  return sub_25556D76C();
}

void *sub_2555679A4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t type metadata accessor for IPLanguageDiscoveryChoiceButton()
{
  result = qword_27F7B94C8;
  if (!qword_27F7B94C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_255567A70()
{
  type metadata accessor for IPLanguageDiscoveryChoice();
  if (v0 <= 0x3F)
  {
    sub_25556D14C();
    if (v1 <= 0x3F)
    {
      sub_255567B14();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_255567B14()
{
  if (!qword_27F7B94D8)
  {
    type metadata accessor for IPLanguageDiscoveryViewModel(255);
    v0 = sub_25556D1BC();
    if (!v1)
    {
      atomic_store(v0, &qword_27F7B94D8);
    }
  }
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

uint64_t sub_255567BD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IPLanguageDiscoveryChoiceButton();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_255567C34()
{
  v1 = *(type metadata accessor for IPLanguageDiscoveryChoiceButton() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_2555663BC(v2);
}

unint64_t sub_255567C9C()
{
  result = qword_27F7B94F8;
  if (!qword_27F7B94F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7B94F0, &qword_25556E670);
    sub_255567D28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7B94F8);
  }

  return result;
}

unint64_t sub_255567D28()
{
  result = qword_27F7B9500;
  if (!qword_27F7B9500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7B9508, &qword_25556E678);
    sub_2555683E8(&qword_27F7B9510, &qword_27F7B9518, &qword_25556E680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7B9500);
  }

  return result;
}

uint64_t sub_255567DE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_255567E28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_255567E90(uint64_t a1)
{
  v2 = sub_25556D21C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_255567EEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B94E0, &qword_25556E660);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_255567F5C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25556D27C();
  *a1 = result;
  return result;
}

uint64_t sub_255567F88(uint64_t *a1)
{
  v1 = *a1;

  return sub_25556D28C();
}

uint64_t sub_255567FB4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25556D25C();
  *a1 = result;
  return result;
}

unint64_t sub_255568008()
{
  result = qword_27F7B9588;
  if (!qword_27F7B9588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7B9580, &qword_25556E798);
    sub_2555683E8(&qword_27F7B9590, &qword_27F7B9598, &qword_25556E7A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7B9588);
  }

  return result;
}

uint64_t sub_2555680C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_255568128(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_255568190(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2555681F0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_255568200(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_255568244(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_255568244(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_255568254(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_2555681F0(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_255568298()
{
  result = qword_27F7B95C0;
  if (!qword_27F7B95C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F7B95C0);
  }

  return result;
}

unint64_t sub_255568304()
{
  result = qword_27F7B95C8;
  if (!qword_27F7B95C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7B9540, &qword_25556E6C8);
    sub_2555683E8(&qword_27F7B95D0, &qword_27F7B94E8, &qword_25556E668);
    sub_2555683E8(&qword_27F7B95D8, &qword_27F7B9548, &qword_25556E6D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7B95C8);
  }

  return result;
}

uint64_t sub_2555683E8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t IPLanguageDiscoverySetupViewController.localeIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR___IPLanguageDiscoverySetupViewController_localeIdentifier);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

void sub_255568590(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 localeIdentifier];
  v4 = sub_25556D6EC();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t IPLanguageDiscoverySetupViewController.completionHandler.getter()
{
  v1 = (v0 + OBJC_IVAR___IPLanguageDiscoverySetupViewController_completionHandler);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_25556870C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_255568814(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9);
}

uint64_t sub_255568878@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v3 = [*a1 completionHandler];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  result = swift_allocObject();
  *(result + 16) = sub_255569724;
  *(result + 24) = v4;
  *a2 = sub_2555696E8;
  a2[1] = result;
  return result;
}

void sub_255568914(uint64_t *a1, void **a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  v8[4] = sub_2555696B0;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_25556870C;
  v8[3] = &block_descriptor_18;
  v7 = _Block_copy(v8);

  [v6 setCompletionHandler_];
  _Block_release(v7);
}

id IPLanguageDiscoverySetupViewController.init(localeIdentifier:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_25556D6DC();

  v11[4] = a3;
  v11[5] = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_25556870C;
  v11[3] = &block_descriptor;
  v8 = _Block_copy(v11);
  v9 = [v6 initWithLocaleIdentifier:v7 completionHandler:v8];

  _Block_release(v8);

  return v9;
}

{
  v5 = (v4 + OBJC_IVAR___IPLanguageDiscoverySetupViewController_localeIdentifier);
  *v5 = a1;
  v5[1] = a2;
  v6 = (v4 + OBJC_IVAR___IPLanguageDiscoverySetupViewController_completionHandler);
  *v6 = a3;
  v6[1] = a4;
  v8.super_class = IPLanguageDiscoverySetupViewController;
  return objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, 0, 0);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id IPLanguageDiscoverySetupViewController.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

Swift::Void __swiftcall IPLanguageDiscoverySetupViewController.viewDidLoad()()
{
  v1 = type metadata accessor for IPLanguageDiscoverySetupView(0);
  v2 = (v1 - 8);
  v3 = *(*(v1 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v58 - v7;
  v59.receiver = v0;
  v59.super_class = IPLanguageDiscoverySetupViewController;
  objc_msgSendSuper2(&v59, sel_viewDidLoad);
  v9 = [v0 localeIdentifier];
  sub_25556D6EC();

  sub_25556D10C();
  v10 = &v8[v2[7]];
  v11 = [objc_opt_self() currentDevice];
  v12 = [v11 model];

  v13 = sub_25556D6EC();
  v15 = v14;

  *v10 = v13;
  v10[1] = v15;
  v16 = &v8[v2[8]];
  v17 = &v8[v2[9]];
  v18 = type metadata accessor for IPLanguageDiscoveryViewModel(0);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 1;
  sub_25556D17C();
  v58[1] = v21;
  sub_25556D60C();
  v22 = v58[3];
  *v17 = v58[2];
  *(v17 + 1) = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = v0;
  *v16 = sub_2555693E4;
  v16[1] = v23;
  sub_2555693F0(v8, v6);
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B95F0, &qword_25556E7E0));
  v24 = v0;
  v25 = sub_25556D38C();
  [v24 addChildViewController_];
  v26 = [v24 view];
  if (!v26)
  {
    __break(1u);
    goto LABEL_14;
  }

  v27 = v26;
  v28 = [v25 view];
  if (!v28)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v29 = v28;
  [v27 addSubview_];

  v30 = [v25 view];
  if (!v30)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v30 setTranslatesAutoresizingMaskIntoConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B95F8, &qword_25556E7E8);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_25556E7D0;
  v32 = [v25 view];

  if (!v32)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v33 = [v32 leadingAnchor];

  v34 = [v24 view];
  if (!v34)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v35 = v34;
  v36 = [v34 leadingAnchor];

  v37 = [v33 constraintEqualToAnchor_];
  *(v31 + 32) = v37;
  v38 = [v25 view];

  if (!v38)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v39 = [v38 trailingAnchor];

  v40 = [v24 view];
  if (!v40)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v41 = v40;
  v42 = [v40 trailingAnchor];

  v43 = [v39 constraintEqualToAnchor_];
  *(v31 + 40) = v43;
  v44 = [v25 view];

  if (!v44)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v45 = [v44 topAnchor];

  v46 = [v24 view];
  if (!v46)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v47 = v46;
  v48 = [v46 topAnchor];

  v49 = [v45 constraintEqualToAnchor_];
  *(v31 + 48) = v49;
  v50 = [v25 view];

  if (!v50)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v51 = [v50 bottomAnchor];

  v52 = [v24 view];
  if (v52)
  {
    v53 = v52;
    v54 = objc_opt_self();
    v55 = [v53 bottomAnchor];

    v56 = [v51 constraintEqualToAnchor_];
    *(v31 + 56) = v56;
    sub_255569654(0, &qword_27F7B9600, 0x277CCAAD0);
    v57 = sub_25556D6FC();

    [v54 activateConstraints_];

    [v25 didMoveToParentViewController_];
    sub_255569454(v8);
    return;
  }

LABEL_23:
  __break(1u);
}

void sub_255569358(uint64_t a1, char a2, id a3)
{
  [a3 dismissViewControllerAnimated:1 completion:0];
  v6 = [a3 completionHandler];
  v7 = v6;
  if (a2)
  {
    v8 = 0;
  }

  else
  {
    v8 = a1;
  }

  (*(v6 + 2))(v6, v8);

  _Block_release(v7);
}

uint64_t sub_2555693F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IPLanguageDiscoverySetupView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255569454(uint64_t a1)
{
  v2 = type metadata accessor for IPLanguageDiscoverySetupView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id IPLanguageDiscoverySetupViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_25556D6DC();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:a3];

  return v5;
}

uint64_t sub_255569654(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2555696B0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_2555696E8(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_255569728()
{
  swift_getKeyPath();
  sub_25556CDE0(&qword_27F7B9520, type metadata accessor for IPLanguageDiscoveryViewModel);
  sub_25556D16C();

  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_2555697CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25556CDE0(&qword_27F7B9520, type metadata accessor for IPLanguageDiscoveryViewModel);
  sub_25556D16C();

  v5 = *(v3 + 24);
  *a2 = *(v3 + 16);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_2555698B0(uint64_t result, char a2)
{
  if ((*(v2 + 24) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 16) != result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 16) = result;
    *(v2 + 24) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  swift_getKeyPath();
  MEMORY[0x28223BE20]();
  sub_25556CDE0(&qword_27F7B9520, type metadata accessor for IPLanguageDiscoveryViewModel);
  sub_25556D15C();
}

uint64_t sub_2555699E4(uint64_t result, uint64_t a2, char a3)
{
  *(result + 16) = a2;
  *(result + 24) = a3 & 1;
  return result;
}

uint64_t sub_2555699F4()
{
  v1 = OBJC_IVAR____TtC17IntlPreferencesUI28IPLanguageDiscoveryViewModel___observationRegistrar;
  v2 = sub_25556D18C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_255569AB8()
{
  result = sub_25556D18C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_255569B9C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_255569BD4()
{
  sub_25556D14C();
  if (v0 <= 0x3F)
  {
    sub_255569C78();
    if (v1 <= 0x3F)
    {
      sub_255569CDC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_255569C78()
{
  if (!qword_27F7B9638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7B9640, qword_25556E880);
    v0 = sub_25556D72C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F7B9638);
    }
  }
}

void sub_255569CDC()
{
  if (!qword_27F7B9648)
  {
    type metadata accessor for IPLanguageDiscoveryViewModel(255);
    v0 = sub_25556D62C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F7B9648);
    }
  }
}

uint64_t sub_255569D50()
{
  sub_25556D41C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9678, &qword_25556E910);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7B9680, &qword_25556E918);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7B9688, &qword_25556E920);
  sub_25556CA94();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7B96A8, &qword_25556E930);
  sub_2555683E8(&qword_27F7B96B0, &qword_27F7B96A8, &qword_25556E930);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_25556D1AC();
}

uint64_t sub_255569EBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9680, &qword_25556E918);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v12[-v4];
  *v5 = sub_25556D37C();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B96B8, &qword_25556E938);
  sub_25556A08C(a1, &v5[*(v6 + 44)]);
  v7 = sub_25556D42C();
  v8 = &v5[*(v2 + 36)];
  *v8 = v7;
  *(v8 + 8) = 0u;
  *(v8 + 24) = 0u;
  v8[40] = 1;
  v13 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9688, &qword_25556E920);
  sub_25556CA94();
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7B96A8, &qword_25556E930);
  v10 = sub_2555683E8(&qword_27F7B96B0, &qword_27F7B96A8, &qword_25556E930);
  v14 = v9;
  v15 = v10;
  swift_getOpaqueTypeConformance2();
  sub_25556D57C();
  return sub_255568190(v5, &qword_27F7B9680, &qword_25556E918);
}

void sub_25556A08C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v222 = a1;
  v196 = a2;
  v194 = sub_25556D36C();
  v191 = *(v194 - 8);
  v2 = *(v191 + 64);
  MEMORY[0x28223BE20](v194);
  v188 = &v162 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B96E0, &qword_25556E950);
  v187 = *(v190 - 8);
  v4 = *(v187 + 64);
  MEMORY[0x28223BE20](v190);
  v186 = &v162 - v5;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B96E8, &qword_25556E958);
  v192 = *(v193 - 8);
  v6 = *(v192 + 64);
  MEMORY[0x28223BE20](v193);
  v189 = &v162 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B96F0, &qword_25556E960);
  v195 = *(v8 - 8);
  v9 = *(v195 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v162 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v210 = &v162 - v13;
  v209 = sub_25556D3DC();
  v220 = *(v209 - 8);
  v14 = *(v220 + 64);
  MEMORY[0x28223BE20](v209);
  v185 = &v162 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = sub_25556D5DC();
  v218 = *(v208 - 8);
  v16 = *(v218 + 64);
  MEMORY[0x28223BE20](v208);
  v184 = &v162 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_25556D3FC();
  v178 = *(v180 - 8);
  v18 = *(v178 + 8);
  MEMORY[0x28223BE20](v180);
  v176 = &v162 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B96F8, &qword_25556E968);
  v175 = *(v177 - 1);
  v20 = *(v175 + 64);
  MEMORY[0x28223BE20](v177);
  v174 = &v162 - v21;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9700, &qword_25556E970);
  v181 = *(v182 - 8);
  v22 = *(v181 + 64);
  MEMORY[0x28223BE20](v182);
  v179 = &v162 - v23;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9708, &qword_25556E978);
  v24 = *(*(v183 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v183);
  v221 = &v162 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v219 = &v162 - v27;
  v28 = type metadata accessor for IPLanguageDiscoverySetupView(0);
  v173 = *(v28 - 8);
  v29 = *(v173 + 64);
  MEMORY[0x28223BE20](v28);
  v203 = v30;
  v204 = &v162 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9710, &qword_25556E980);
  v206 = *(v207 - 8);
  v31 = v206[8];
  v32 = MEMORY[0x28223BE20](v207);
  v205 = &v162 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v217 = &v162 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9578, &qword_25556E700);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v213 = &v162 - v37;
  v212 = sub_25556D4BC();
  v38 = *(v212 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v212);
  v211 = &v162 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_25556D14C();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  v45 = &v162 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_25556D31C();
  v47 = *(*(v46 - 8) + 64);
  v48 = MEMORY[0x28223BE20](v46 - 8);
  v200 = &v162 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  sub_25556D30C();
  sub_25556D2FC();
  sub_25556D13C();
  v50 = sub_25556D12C();
  v51 = *(v42 + 8);
  v199 = v41;
  v198 = v42 + 8;
  v197 = v51;
  v51(v45, v41);
  sub_25556D11C();
  v52 = sub_25556D6DC();

  v53 = [v50 localizedStringForLanguage:v52 context:5];

  if (!v53)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  v201 = v12;
  v202 = v8;
  sub_25556D6EC();

  sub_25556D2EC();

  sub_25556D2FC();
  v170 = v28;
  v54 = (v222 + *(v28 + 20));
  v55 = v54[1];
  v172 = *v54;
  v171 = v55;
  sub_25556D2EC();
  sub_25556D2FC();
  sub_25556D33C();
  v167 = sub_255568298();
  if (!sub_25556D71C())
  {
    v56 = [objc_opt_self() mainBundle];
  }

  v57 = sub_25556D4EC();
  v59 = v58;
  v61 = v60;
  v62 = *MEMORY[0x277CE0A80];
  v63 = v38;
  v64 = v38 + 104;
  v65 = *(v38 + 104);
  v66 = v211;
  v67 = v212;
  v166 = v64;
  v165 = v65;
  v65(v211, v62, v212);
  v68 = sub_25556D43C();
  v69 = *(v68 - 8);
  v70 = *(v69 + 56);
  v71 = v213;
  v164 = v68;
  v163 = v70;
  v162 = v69 + 56;
  (v70)(v213, 1, 1);
  sub_25556D44C();
  sub_25556D49C();
  sub_25556CBD8(v71);
  v72 = *(v63 + 8);
  v168 = v63 + 8;
  v72(v66, v67);
  v73 = v72;
  v74 = sub_25556D4DC();
  v214 = v75;
  v215 = v74;
  v169 = v76;
  v216 = v77;

  sub_2555681F0(v57, v59, v61 & 1);

  sub_25556D30C();
  sub_25556D2FC();
  sub_25556D2EC();
  sub_25556D2FC();
  sub_25556D13C();
  v78 = sub_25556D12C();
  v197(v45, v199);
  v79 = v222;
  sub_25556D11C();
  v80 = sub_25556D6DC();

  v81 = [v78 localizedStringForLanguage:v80 context:5];

  if (!v81)
  {
    goto LABEL_9;
  }

  v82 = v79;
  sub_25556D6EC();

  sub_25556D2EC();

  sub_25556D2FC();
  sub_25556D33C();
  if (!sub_25556D71C())
  {
    v83 = [objc_opt_self() mainBundle];
  }

  v84 = sub_25556D4EC();
  v86 = v85;
  v88 = v87;
  v90 = v211;
  v89 = v212;
  v165(v211, *MEMORY[0x277CE0A90], v212);
  v91 = v213;
  v163(v213, 1, 1, v164);
  sub_25556D49C();
  sub_25556CBD8(v91);
  v73(v90, v89);
  v92 = sub_25556D4DC();
  v94 = v93;
  LOBYTE(v90) = v95;

  sub_2555681F0(v84, v86, v88 & 1);

  sub_25556D5AC();
  v96 = sub_25556D4CC();
  v211 = v97;
  v212 = v96;
  LODWORD(v200) = v98;
  v213 = v99;

  sub_2555681F0(v92, v94, v90 & 1);

  v224 = &unk_286773768;
  v100 = v204;
  sub_2555693F0(v82, v204);
  v101 = (*(v173 + 80) + 16) & ~*(v173 + 80);
  v197 = *(v173 + 80);
  v102 = swift_allocObject();
  sub_25556CB5C(v100, v102 + v101);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B94A8, &qword_25556E490);
  type metadata accessor for IPLanguageDiscoveryChoice();
  type metadata accessor for IPLanguageDiscoveryChoiceButton();
  sub_2555683E8(&qword_27F7B9718, &qword_27F7B94A8, &qword_25556E490);
  sub_25556CDE0(&qword_27F7B9720, type metadata accessor for IPLanguageDiscoveryChoiceButton);
  sub_25556CDE0(&qword_27F7B9728, type metadata accessor for IPLanguageDiscoveryChoice);
  sub_25556D64C();
  v103 = v204;
  sub_2555693F0(v82, v204);
  v104 = swift_allocObject();
  v105 = v101;
  sub_25556CB5C(v103, v104 + v101);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9730, &qword_25556E988);
  sub_25556CE88();
  v106 = v174;
  sub_25556D63C();
  v107 = v176;
  sub_25556D3EC();
  v199 = MEMORY[0x277CDF028];
  v108 = sub_2555683E8(&qword_27F7B9740, &qword_27F7B96F8, &qword_25556E968);
  v109 = sub_25556CDE0(&qword_27F7B9748, MEMORY[0x277CDE400]);
  v110 = v179;
  v111 = v177;
  v112 = v180;
  sub_25556D53C();
  (*(v178 + 1))(v107, v112);
  (*(v175 + 8))(v106, v111);
  v113 = v184;
  sub_25556D5CC();
  v114 = v185;
  sub_25556D3CC();
  v224 = v111;
  v225 = v112;
  v226 = v108;
  v227 = v109;
  v198 = MEMORY[0x277CDE668];
  swift_getOpaqueTypeConformance2();
  v180 = sub_25556CDE0(&qword_27F7B9750, MEMORY[0x277CE0638]);
  v115 = v219;
  v116 = v182;
  v117 = v209;
  sub_25556D55C();
  v118 = *(v220 + 8);
  v220 += 8;
  v178 = v118;
  v118(v114, v117);
  v119 = v222;
  v120 = *(v218 + 8);
  v218 += 8;
  v177 = v120;
  (v120)(v113, v208);
  (*(v181 + 8))(v110, v116);
  v121 = (v119 + *(v170 + 28));
  v123 = *v121;
  v122 = v121[1];
  v224 = v123;
  v225 = v122;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9668, &qword_25556E908);
  sub_25556D61C();
  v124 = v223;
  swift_getKeyPath();
  v224 = v124;
  sub_25556CDE0(&qword_27F7B9520, type metadata accessor for IPLanguageDiscoveryViewModel);
  sub_25556D16C();

  LOBYTE(v100) = v124[24];

  KeyPath = swift_getKeyPath();
  v126 = swift_allocObject();
  *(v126 + 16) = v100;
  v127 = (v115 + *(v183 + 36));
  *v127 = KeyPath;
  v127[1] = sub_25556CF64;
  v127[2] = v126;
  sub_2555693F0(v119, v103);
  v128 = swift_allocObject();
  v129 = sub_25556CB5C(v103, v128 + v105);
  MEMORY[0x28223BE20](v129);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9758, &qword_25556E9E8);
  sub_25556CFF0();
  v130 = v186;
  sub_25556D63C();
  v131 = v188;
  sub_25556D35C();
  v132 = sub_2555683E8(&qword_27F7B9778, &qword_27F7B96E0, &qword_25556E950);
  v133 = sub_25556CDE0(&qword_27F7B9780, MEMORY[0x277CDDEE0]);
  v134 = v189;
  v135 = v190;
  v136 = v194;
  sub_25556D53C();
  (*(v191 + 8))(v131, v136);
  (*(v187 + 8))(v130, v135);
  v137 = v113;
  sub_25556D5CC();
  sub_25556D3CC();
  v224 = v135;
  v225 = v136;
  v226 = v132;
  v227 = v133;
  swift_getOpaqueTypeConformance2();
  v138 = v210;
  v139 = v193;
  v140 = v209;
  sub_25556D55C();
  v178(v114, v140);
  (v177)(v137, v208);
  (*(v192 + 8))(v134, v139);
  LOBYTE(v224) = v169 & 1;
  LOBYTE(v139) = v169 & 1;
  LODWORD(v220) = v169 & 1;
  v141 = v206[2];
  v142 = v205;
  v143 = v207;
  v141(v205, v217, v207);
  sub_25555EFA0(v219, v221);
  v144 = v195;
  v145 = *(v195 + 16);
  v146 = v201;
  v145(v201, v138, v202);
  v147 = v196;
  v148 = v214;
  *v196 = v215;
  v147[1] = v148;
  *(v147 + 16) = v139;
  v149 = v211;
  v150 = v212;
  v147[3] = v216;
  v147[4] = v150;
  v147[5] = v149;
  LODWORD(v222) = v200 & 1;
  *(v147 + 48) = v200 & 1;
  v147[7] = v213;
  v147[8] = 0x4034000000000000;
  *(v147 + 72) = 0;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9788, &qword_25556E9F8);
  v141(v147 + v151[20], v142, v143);
  v152 = v147 + v151[24];
  *v152 = 0x4034000000000000;
  v152[8] = 0;
  sub_25555EFA0(v221, v147 + v151[28]);
  v153 = v146;
  v154 = v202;
  v145(v147 + v151[32], v153, v202);
  v155 = v147 + v151[36];
  *v155 = 0;
  v155[8] = 1;
  v156 = v147 + v151[40];
  *v156 = 0;
  v156[8] = 1;
  sub_255568244(v215, v214, v220);

  v158 = v211;
  v157 = v212;
  LOBYTE(v142) = v222;
  sub_255568244(v212, v211, v222);
  v159 = *(v144 + 8);

  v159(v210, v154);
  sub_255568190(v219, &qword_27F7B9708, &qword_25556E978);
  v160 = v206[1];
  v161 = v207;
  v160(v217, v207);
  v159(v201, v154);
  sub_255568190(v221, &qword_27F7B9708, &qword_25556E978);
  v160(v205, v161);
  sub_2555681F0(v157, v158, v142);

  sub_2555681F0(v215, v214, v224);
}

uint64_t sub_25556BA00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = *a1;
  v6 = type metadata accessor for IPLanguageDiscoveryChoiceButton();
  v7 = v6[5];
  v8 = sub_25556D14C();
  (*(*(v8 - 8) + 16))(&a3[v7], a2, v8);
  *a3 = v5;
  v9 = &a3[v6[6]];
  v10 = [objc_opt_self() currentDevice];
  v11 = [v10 model];

  v12 = sub_25556D6EC();
  v14 = v13;

  *v9 = v12;
  v9[1] = v14;
  v15 = &a3[v6[7]];
  type metadata accessor for IPLanguageDiscoveryViewModel(0);
  sub_25556CDE0(&qword_27F7B9520, type metadata accessor for IPLanguageDiscoveryViewModel);
  result = sub_25556D1CC();
  *v15 = result;
  v15[8] = v17 & 1;
  return result;
}

uint64_t sub_25556BB4C(uint64_t a1)
{
  result = type metadata accessor for IPLanguageDiscoverySetupView(0);
  v3 = a1 + *(result + 24);
  v4 = *v3;
  if (*v3)
  {
    v5 = *(v3 + 8);
    v6 = (a1 + *(result + 28));
    v10 = *v6;
    v11 = v6[1];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9668, &qword_25556E908);
    sub_25556D61C();
    swift_getKeyPath();
    sub_25556CDE0(&qword_27F7B9520, type metadata accessor for IPLanguageDiscoveryViewModel);
    sub_25556D16C();

    v7 = *(v9 + 16);
    v8 = *(v9 + 24);

    v4(v7, v8);
    return sub_25556CBC8(v4);
  }

  return result;
}

__n128 sub_25556BC78@<Q0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9578, &qword_25556E700);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v26 - v4;
  v6 = sub_25556D4BC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25556D32C();
  v11 = sub_25556D4EC();
  v13 = v12;
  v15 = v14;
  (*(v7 + 104))(v10, *MEMORY[0x277CE0A68], v6);
  v16 = sub_25556D43C();
  (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
  sub_25556D46C();
  sub_25556D49C();
  sub_25556CBD8(v5);
  (*(v7 + 8))(v10, v6);
  v17 = sub_25556D4DC();
  v19 = v18;
  LOBYTE(v10) = v20;
  v22 = v21;

  sub_2555681F0(v11, v13, v15 & 1);

  sub_25556D65C();
  sub_25556D22C();
  *a1 = v17;
  *(a1 + 8) = v19;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v22;
  v23 = v26[5];
  *(a1 + 96) = v26[4];
  *(a1 + 112) = v23;
  *(a1 + 128) = v26[6];
  v24 = v26[1];
  *(a1 + 32) = v26[0];
  *(a1 + 48) = v24;
  result = v26[3];
  *(a1 + 64) = v26[2];
  *(a1 + 80) = result;
  return result;
}

void sub_25556BF3C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9578, &qword_25556E700);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v40 - v5;
  v40[0] = sub_25556D4BC();
  v7 = *(v40[0] - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v40[0]);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25556D14C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25556D31C();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  sub_25556D30C();
  sub_25556D2FC();
  sub_25556D13C();
  v18 = sub_25556D12C();
  (*(v12 + 8))(v15, v11);
  sub_25556D11C();
  v19 = sub_25556D6DC();

  v20 = [v18 localizedStringForLanguage:v19 context:5];

  if (v20)
  {
    sub_25556D6EC();

    sub_25556D2EC();

    sub_25556D2FC();
    sub_25556D33C();
    sub_255568298();
    if (!sub_25556D71C())
    {
      v21 = [objc_opt_self() mainBundle];
    }

    v22 = sub_25556D4EC();
    v24 = v23;
    v26 = v25;
    v27 = v40[0];
    (*(v7 + 104))(v10, *MEMORY[0x277CE0A68], v40[0]);
    v28 = sub_25556D43C();
    (*(*(v28 - 8) + 56))(v6, 1, 1, v28);
    sub_25556D46C();
    sub_25556D49C();
    sub_25556CBD8(v6);
    (*(v7 + 8))(v10, v27);
    v29 = sub_25556D4DC();
    v31 = v30;
    LOBYTE(v27) = v32;
    v34 = v33;

    sub_2555681F0(v22, v24, v26 & 1);

    sub_25556D65C();
    sub_25556D22C();
    v48 = v27 & 1;
    v35 = sub_25556D59C();
    KeyPath = swift_getKeyPath();
    *a2 = v29;
    *(a2 + 8) = v31;
    *(a2 + 16) = v27 & 1;
    *(a2 + 24) = v34;
    v37 = v46;
    *(a2 + 96) = v45;
    *(a2 + 112) = v37;
    *(a2 + 128) = v47;
    v38 = v42;
    *(a2 + 32) = v41;
    *(a2 + 48) = v38;
    v39 = v44;
    *(a2 + 64) = v43;
    *(a2 + 80) = v39;
    *(a2 + 144) = KeyPath;
    *(a2 + 152) = v35;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25556C420(uint64_t a1)
{
  v2 = sub_25556D3AC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B96A8, &qword_25556E930);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11[-v7];
  sub_25556D39C();
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B96C0, &qword_25556E940);
  sub_2555683E8(&qword_27F7B96C8, &qword_27F7B96C0, &qword_25556E940);
  sub_25556D1EC();
  v9 = sub_2555683E8(&qword_27F7B96B0, &qword_27F7B96A8, &qword_25556E930);
  MEMORY[0x259C38650](v8, v4, v9);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_25556C60C(uint64_t a1)
{
  v2 = type metadata accessor for IPLanguageDiscoverySetupView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2555693F0(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_25556CB5C(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B96D0, &qword_25556E948);
  sub_2555683E8(&qword_27F7B96D8, &qword_27F7B96D0, &qword_25556E948);
  return sub_25556D63C();
}

uint64_t sub_25556C778(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for IPLanguageDiscoverySetupView(0);
  v5 = a1 + *(result + 24);
  v6 = *v5;
  if (*v5)
  {
    v7 = *(v5 + 8);

    v6(a2, 0);

    return sub_25556CBC8(v6);
  }

  return result;
}

uint64_t sub_25556C800()
{
  v0 = sub_25556D32C();

  return MEMORY[0x282130010](v0);
}

uint64_t sub_25556C85C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9650, &qword_25556E8F8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12[-v6];
  v13 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9658, &qword_25556E900);
  sub_2555683E8(&qword_27F7B9660, &qword_27F7B9658, &qword_25556E900);
  sub_25556D20C();
  v8 = (v1 + *(a1 + 28));
  v10 = *v8;
  v9 = v8[1];
  v14 = v10;
  v15 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9668, &qword_25556E908);
  sub_25556D61C();
  type metadata accessor for IPLanguageDiscoveryViewModel(0);
  sub_2555683E8(&qword_27F7B9670, &qword_27F7B9650, &qword_25556E8F8);
  sub_25556CDE0(&qword_27F7B9520, type metadata accessor for IPLanguageDiscoveryViewModel);
  sub_25556D54C();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_25556CA94()
{
  result = qword_27F7B9690;
  if (!qword_27F7B9690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7B9680, &qword_25556E918);
    sub_2555683E8(&qword_27F7B9698, &qword_27F7B96A0, &qword_25556E928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7B9690);
  }

  return result;
}

uint64_t sub_25556CB5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IPLanguageDiscoverySetupView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25556CBC8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25556CBD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9578, &qword_25556E700);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for IPLanguageDiscoverySetupView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = sub_25556D14C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(v0 + v3 + v1[5] + 8);

  v7 = (v0 + v3 + v1[6]);
  if (*v7)
  {
    v8 = v7[1];
  }

  v9 = (v0 + v3 + v1[7]);
  v10 = *v9;

  v11 = v9[1];

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25556CD60@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v5 = *(type metadata accessor for IPLanguageDiscoverySetupView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_25556BA00(a1, v6, a2);
}

uint64_t sub_25556CDE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25556CE28()
{
  v1 = *(type metadata accessor for IPLanguageDiscoverySetupView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_25556BB4C(v2);
}

unint64_t sub_25556CE88()
{
  result = qword_27F7B9738;
  if (!qword_27F7B9738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7B9730, &qword_25556E988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7B9738);
  }

  return result;
}

uint64_t sub_25556CF0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25556D23C();
  *a1 = result;
  return result;
}

uint64_t sub_25556CF38(uint64_t *a1)
{
  v1 = *a1;

  return sub_25556D24C();
}

unint64_t sub_25556CFF0()
{
  result = qword_27F7B9760;
  if (!qword_27F7B9760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7B9758, &qword_25556E9E8);
    sub_25556CE88();
    sub_2555683E8(&qword_27F7B9768, &qword_27F7B9770, &qword_25556E9F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7B9760);
  }

  return result;
}

void sub_25556D0A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 24) = v2;
}