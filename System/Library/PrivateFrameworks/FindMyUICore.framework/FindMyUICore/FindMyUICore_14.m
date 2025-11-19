unint64_t sub_24B160E9C()
{
  result = qword_27EFCD428;
  if (!qword_27EFCD428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD428);
  }

  return result;
}

unint64_t sub_24B160EF4()
{
  result = qword_27EFCD430;
  if (!qword_27EFCD430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD430);
  }

  return result;
}

double sub_24B160F48@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  PinCircleShape.path(in:)(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

double (*sub_24B160FA8(void *a1))(uint64_t)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_24B161164;
}

unint64_t sub_24B160FDC()
{
  result = qword_27EFCD438;
  if (!qword_27EFCD438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD438);
  }

  return result;
}

uint64_t sub_24B161040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B0F6694();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_24B1610A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B0F6694();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_24B161108(uint64_t a1)
{
  v2 = sub_24B0F6694();

  return MEMORY[0x282133738](a1, v2);
}

double PinRectangleShape.init(showTail:)@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v2 = 0.0;
  if (a1)
  {
    v2 = 1.0;
  }

  *a2 = v2;
  result = 0.123;
  *(a2 + 8) = xmmword_24B2E8230;
  *(a2 + 24) = 0x3FD212878C50DBBBLL;
  return result;
}

double (*PinRectangleShape.animatableData.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_24B160B14;
}

double PinRectangleShape.path(in:)@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v11 = sub_24B2D3DC4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  v16 = v5[1];
  v17 = v5[2];
  v36.origin.x = a2;
  v36.origin.y = a3;
  v36.size.width = a4;
  v36.size.height = a5;
  Width = CGRectGetWidth(v36);
  v21[2] = 0;
  v21[3] = 0;
  v22 = v17 * Width * 0.5;
  v23 = v15 * (v16 * Width);
  v24 = (v15 * 0.2 + 0.6) * v22;
  v25 = v16 * Width * 0.0 + v15 * (v16 * Width * 0.09 - v16 * Width * 0.0);
  v26 = v17 * Width * 0.11024725;
  v27 = 0;
  v28 = v17 * Width;
  v29 = 0;
  sub_24B2D4554();
  sub_24B2D4534();
  v37.origin.x = a2;
  v37.origin.y = a3;
  v37.size.width = a4;
  v37.size.height = a5;
  CGRectGetWidth(v37);
  v38.origin.x = a2;
  v38.origin.y = a3;
  v38.size.width = a4;
  v38.size.height = a5;
  CGRectGetHeight(v38);
  (*(v12 + 104))(v14, *MEMORY[0x277CE0118], v11);
  sub_24B2D44E4();
  sub_24B2D4514();
  sub_24B160E44(&v32);
  sub_24B160E44(&v31);
  sub_24B160E44(&v30);
  result = *&v33;
  v20 = v34;
  *a1 = v33;
  *(a1 + 16) = v20;
  *(a1 + 32) = v35;
  return result;
}

double PinRectangleShape.sizeThatFits(_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if ((a4 & 1) != 0 || (result = *&a3 / (*v4 * v4[1] + 1.0), (a2 & 1) == 0) && result > *&a1)
  {
    result = *&a1;
    if (a2)
    {
      return 50.0;
    }
  }

  return result;
}

unint64_t sub_24B1614C4()
{
  result = qword_27EFCD448;
  if (!qword_27EFCD448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD448);
  }

  return result;
}

unint64_t sub_24B16151C()
{
  result = qword_27EFCD450;
  if (!qword_27EFCD450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD450);
  }

  return result;
}

double sub_24B161570@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  PinRectangleShape.path(in:)(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

unint64_t sub_24B1615D0()
{
  result = qword_27EFCD458;
  if (!qword_27EFCD458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD458);
  }

  return result;
}

uint64_t sub_24B161634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B0F6640();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_24B161698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B0F6640();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_24B1616FC(uint64_t a1)
{
  v2 = sub_24B0F6640();

  return MEMORY[0x282133738](a1, v2);
}

uint64_t type metadata accessor for CustomMapCameraPosition()
{
  result = qword_27EFCD468;
  if (!qword_27EFCD468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B1617A4()
{
  result = sub_24B2D2DE4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24B161810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D2>, double a4@<D3>, double a5@<D4>, double a6@<D5>)
{
  v7 = v6;
  v60 = a2;
  v13 = type metadata accessor for Annotation();
  *&v61 = *(v13 - 8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = (&v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v18 = &v59 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v59 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v59 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD480);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v59 - v29;
  v31 = type metadata accessor for CustomMapCameraPosition();
  MEMORY[0x28223BE20](v31);
  v33 = (&v59 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24B162338(v7, v33, type metadata accessor for CustomMapCameraPosition);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v35 = sub_24B2D2DE4();
      return (*(*(v35 - 8) + 32))(v60, v33, v35);
    }

    else
    {
      v43 = *(a1 + 16);
      v44 = MEMORY[0x277D84F90];
      if (v43)
      {
        v62 = MEMORY[0x277D84F90];
        sub_24B007A0C(0, v43, 0);
        v44 = v62;
        v45 = a1 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
        v46 = *(v61 + 72);
        do
        {
          sub_24B162338(v45, v24, type metadata accessor for Annotation);
          v61 = *(v24 + 2);
          sub_24B1623A0(v24, type metadata accessor for Annotation);
          v62 = v44;
          v48 = *(v44 + 16);
          v47 = *(v44 + 24);
          if (v48 >= v47 >> 1)
          {
            sub_24B007A0C((v47 > 1), v48 + 1, 1);
            v44 = v62;
          }

          *(v44 + 16) = v48 + 1;
          *(v44 + 16 * v48 + 32) = v61;
          v45 += v46;
          --v43;
        }

        while (v43);
      }

      sub_24B163FD8(v44, &v62, a3, a4, a5, a6);
      if (v63)
      {
        v49 = sub_24B2D2DE4();
        v50 = *(v49 - 8);
        (*(v50 + 56))(v30, 1, 1, v49);
        sub_24B2D2DD4();
        result = (*(v50 + 48))(v30, 1, v49);
        if (result != 1)
        {
          return sub_24AFF8258(v30, &qword_27EFCD480);
        }
      }

      else
      {
        sub_24B2D2DA4();
        v51 = sub_24B2D2DE4();
        v52 = *(v51 - 8);
        (*(v52 + 56))(v30, 0, 1, v51);
        return (*(v52 + 32))(v60, v30, v51);
      }
    }
  }

  else
  {
    v37 = v33[1];
    v38 = *(a1 + 16);
    if (v38)
    {
      v39 = *v33;
      v40 = a1 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
      v41 = *(v61 + 72);
      while (1)
      {
        sub_24B162338(v40, v15, type metadata accessor for Annotation);
        v42 = *v15 == v39 && v15[1] == v37;
        if (v42 || (sub_24B2D6004() & 1) != 0)
        {
          break;
        }

        sub_24B1623A0(v15, type metadata accessor for Annotation);
        v40 += v41;
        if (!--v38)
        {
          goto LABEL_12;
        }
      }

      sub_24B162400(v15, v18);
      sub_24B162400(v18, v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC80C0);
      v53 = swift_allocObject();
      v54 = *(v21 + 2);
      *(v53 + 16) = xmmword_24B2DE430;
      *(v53 + 32) = v54;
      sub_24B163FD8(v53, &v62, a3, a4, a5, a6);
      if (v63)
      {
        v55 = sub_24B2D2DE4();
        v56 = *(v55 - 8);
        (*(v56 + 56))(v27, 1, 1, v55);
        sub_24B2D2DD4();
        sub_24B1623A0(v21, type metadata accessor for Annotation);
        result = (*(v56 + 48))(v27, 1, v55);
        if (result != 1)
        {
          return sub_24AFF8258(v27, &qword_27EFCD480);
        }
      }

      else
      {
        sub_24B2D2DA4();
        v57 = sub_24B2D2DE4();
        v58 = *(v57 - 8);
        (*(v58 + 56))(v27, 0, 1, v57);
        sub_24B1623A0(v21, type metadata accessor for Annotation);
        return (*(v58 + 32))(v60, v27, v57);
      }
    }

    else
    {
LABEL_12:

      return sub_24B2D2DD4();
    }
  }

  return result;
}

uint64_t sub_24B161F90(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B2D2DE4();
  v28 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CustomMapCameraPosition();
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v27 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD478);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v27 - v14;
  v17 = (&v27 + *(v16 + 56) - v14);
  sub_24B162338(a1, &v27 - v14, type metadata accessor for CustomMapCameraPosition);
  sub_24B162338(a2, v17, type metadata accessor for CustomMapCameraPosition);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_24B162338(v15, v12, type metadata accessor for CustomMapCameraPosition);
    v23 = *v12;
    v22 = v12[1];
    if (!swift_getEnumCaseMultiPayload())
    {
      if (v23 == *v17 && v22 == v17[1])
      {
      }

      else
      {
        v25 = sub_24B2D6004();

        if ((v25 & 1) == 0)
        {
          sub_24B1623A0(v15, type metadata accessor for CustomMapCameraPosition);
          goto LABEL_11;
        }
      }

LABEL_19:
      sub_24B1623A0(v15, type metadata accessor for CustomMapCameraPosition);
      v20 = 1;
      return v20 & 1;
    }

LABEL_10:
    sub_24AFF8258(v15, &qword_27EFCD478);
LABEL_11:
    v20 = 0;
    return v20 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_19;
    }

    goto LABEL_10;
  }

  sub_24B162338(v15, v9, type metadata accessor for CustomMapCameraPosition);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v28 + 8))(v9, v4);
    goto LABEL_10;
  }

  v19 = v28;
  (*(v28 + 32))(v6, v17, v4);
  v20 = sub_24B2D2D94();
  v21 = *(v19 + 8);
  v21(v6, v4);
  v21(v9, v4);
  sub_24B1623A0(v15, type metadata accessor for CustomMapCameraPosition);
  return v20 & 1;
}

uint64_t sub_24B162338(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B1623A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B162400(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Annotation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B162484()
{
  result = qword_27EFCD488;
  if (!qword_27EFCD488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD488);
  }

  return result;
}

uint64_t (*EnvironmentValues.customMapControlVisibility.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  a1[1] = sub_24B162484();
  sub_24B2D3C74();
  return sub_24B162558;
}

uint64_t sub_24B162584(void (*a1)(void))
{
  a1();
  sub_24B2D3C74();
  return v2;
}

unint64_t sub_24B1625CC()
{
  result = qword_27EFCD490;
  if (!qword_27EFCD490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD490);
  }

  return result;
}

uint64_t (*EnvironmentValues.customMapFocusButtonVisibility.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  a1[1] = sub_24B1625CC();
  sub_24B2D3C74();
  return sub_24B1626E8;
}

unint64_t sub_24B162744()
{
  result = qword_27EFCD498;
  if (!qword_27EFCD498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD498);
  }

  return result;
}

uint64_t static CustomMapIsFocusedPreferenceKey.reduce(value:nextValue:)(_BYTE *a1, uint64_t (*a2)(void))
{
  if (*a1 == 1)
  {
    result = a2();
  }

  else
  {
    result = 0;
  }

  *a1 = result & 1;
  return result;
}

_BYTE *sub_24B1627F0(_BYTE *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  if (*result == 1)
  {
    result = a2(&v4);
    v3 = v4;
  }

  else
  {
    v3 = 0;
  }

  *v2 = v3;
  return result;
}

uint64_t EnvironmentValues.customMapIsFocused.getter()
{
  sub_24B162888();
  sub_24B2D3C74();
  return v1;
}

unint64_t sub_24B162888()
{
  result = qword_27EFCD4A0;
  if (!qword_27EFCD4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD4A0);
  }

  return result;
}

uint64_t (*EnvironmentValues.customMapIsFocused.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_24B162888();
  sub_24B2D3C74();
  *(a1 + 16) = *(a1 + 17);
  return sub_24B162980;
}

uint64_t type metadata accessor for CustomMapFocusButton()
{
  result = qword_27EFCD4B0;
  if (!qword_27EFCD4B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B162A3C()
{
  sub_24B07A804();
  if (v0 <= 0x3F)
  {
    sub_24B162AD0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24B162AD0()
{
  if (!qword_27EFCD4C0)
  {
    sub_24B2D3364();
    v0 = sub_24B2D3374();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFCD4C0);
    }
  }
}

uint64_t sub_24B162B54@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAA68);
  MEMORY[0x28223BE20](v4 - 8);
  v77 = &v64 - v5;
  v6 = sub_24B2D3364();
  v82 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v81 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v79 = &v64 - v9;
  MEMORY[0x28223BE20](v10);
  v78 = &v64 - v11;
  MEMORY[0x28223BE20](v12);
  v76 = &v64 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v64 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v64 - v18;
  v20 = type metadata accessor for CustomMapFocusButton();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD4C8);
  v74 = *(v23 - 8);
  v75 = v23;
  MEMORY[0x28223BE20](v23);
  v25 = &v64 - v24;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD4D0);
  MEMORY[0x28223BE20](v73);
  v83 = &v64 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD4D8);
  MEMORY[0x28223BE20](v27);
  v33 = MEMORY[0x28223BE20](v28);
  if (*v2)
  {
    v34 = *(v30 + 56);

    return v34(a1, 1, 1, v33);
  }

  else
  {
    v64 = &v64 - v31;
    v65 = v32;
    v66 = v30;
    v67 = v29;
    v68 = a1;
    sub_24B163814(v2, &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    v36 = (*(v21 + 80) + 16) & ~*(v21 + 80);
    v37 = swift_allocObject();
    sub_24B163878(&v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v37 + v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD4E8);
    sub_24B16393C();
    sub_24B2D4D34();
    v38 = *(v20 + 24);
    v80 = v2;
    v72 = v38;
    sub_24B163AC8(&qword_27EFCD4E0, MEMORY[0x277CDF450], v19);
    v39 = v82;
    v71 = *(v82 + 32);
    v71(v16, v19, v6);
    v40 = *(v39 + 88);
    v41 = v40(v16, v6);
    v42 = *MEMORY[0x277CDF418];
    v43 = *MEMORY[0x277CDF438];
    v44 = *MEMORY[0x277CDF440];
    v70 = *MEMORY[0x277CDF438];
    v69 = v44;
    if (v41 != v42 && v41 != v43 && v41 != v44 && v41 != *MEMORY[0x277CDF420] && v41 != *MEMORY[0x277CDF410])
    {
      (*(v39 + 8))(v16, v6);
    }

    sub_24B2D43D4();
    v45 = sub_24B2D43B4();
    v46 = v77;
    (*(*(v45 - 8) + 56))(v77, 1, 1, v45);
    v47 = sub_24B2D4404();
    sub_24B107AC8(v46);
    KeyPath = swift_getKeyPath();
    v49 = v83;
    (*(v74 + 32))(v83, v25, v75);
    v50 = (v49 + *(v73 + 36));
    *v50 = KeyPath;
    v50[1] = v47;
    v51 = v76;
    sub_24B163AC8(&qword_27EFCD4E0, MEMORY[0x277CDF450], v76);
    v52 = v78;
    v71(v78, v51, v6);
    v53 = v40(v52, v6);
    if (v53 == v42)
    {
      v54 = v68;
      v55 = v81;
    }

    else
    {
      v54 = v68;
      v55 = v81;
      if (v53 != v70 && v53 != v69 && v53 != *MEMORY[0x277CDF420] && v53 != *MEMORY[0x277CDF410])
      {
        (*(v82 + 8))(v52, v6);
      }
    }

    v56 = v79;
    sub_24B163AC8(&qword_27EFCD4E0, MEMORY[0x277CDF450], v79);
    v71(v55, v56, v6);
    v57 = v40(v55, v6);
    if (v57 != v42 && v57 != v70 && v57 != v69 && v57 != *MEMORY[0x277CDF420] && v57 != *MEMORY[0x277CDF410])
    {
      (*(v82 + 8))(v55, v6);
    }

    sub_24B2D5064();
    sub_24B2D3494();
    v58 = v65;
    sub_24B0391CC(v83, v65, &qword_27EFCD4D0);
    v59 = v67;
    v60 = (v58 + *(v67 + 36));
    v61 = v85;
    *v60 = v84;
    v60[1] = v61;
    v60[2] = v86;
    v62 = v58;
    v63 = v64;
    sub_24B0391CC(v62, v64, &qword_27EFCD4D8);
    sub_24B0391CC(v63, v54, &qword_27EFCD4D8);
    return (*(v66 + 56))(v54, 0, 1, v59);
  }
}

uint64_t sub_24B1634AC()
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  sub_24B2D50E4();
  sub_24B2D35C4();
}

uint64_t sub_24B16359C(uint64_t a1)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  (*(a1 + 8))(isCurrentExecutor);
}

uint64_t sub_24B163644@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD4E8);
  MEMORY[0x28223BE20](v2);
  v4 = v11 - v3;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = sub_24B2D4BE4();
  sub_24B2D5064();
  sub_24B2D3904();
  v6 = &v4[*(v2 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBC28);
  sub_24B2D3994();
  *v6 = 0;
  v7 = v11[2];
  *(v4 + 56) = v11[3];
  v8 = v11[5];
  *(v4 + 72) = v11[4];
  *(v4 + 88) = v8;
  *(v4 + 104) = v11[6];
  v9 = v11[1];
  *(v4 + 8) = v11[0];
  *(v4 + 24) = v9;
  *v4 = v5;
  *(v4 + 40) = v7;
  sub_24B0391CC(v4, a1, &qword_27EFCD4E8);
}

uint64_t sub_24B163814(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustomMapFocusButton();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B163878(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustomMapFocusButton();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B1638DC()
{
  type metadata accessor for CustomMapFocusButton();

  return sub_24B1634AC();
}

unint64_t sub_24B16393C()
{
  result = qword_27EFCD4F0;
  if (!qword_27EFCD4F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD4E8);
    sub_24B1639F4();
    sub_24B039184(&qword_27EFCBC20, &qword_27EFCBC28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD4F0);
  }

  return result;
}

unint64_t sub_24B1639F4()
{
  result = qword_27EFCD4F8;
  if (!qword_27EFCD4F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD4F8);
  }

  return result;
}

uint64_t sub_24B163AC8@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = sub_24B2D3C64();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  MEMORY[0x28223BE20](v12);
  v14 = &v18 - v13;
  sub_24B008890(v6, &v18 - v13, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = a2(0);
    return (*(*(v15 - 8) + 32))(a3, v14, v15);
  }

  else
  {
    sub_24B2D5924();
    v17 = sub_24B2D42A4();
    sub_24B2D3154();

    sub_24B2D3C54();
    swift_getAtKeyPath();

    return (*(v9 + 8))(v11, v8);
  }
}

unint64_t sub_24B163D5C()
{
  result = qword_27EFCD508;
  if (!qword_27EFCD508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD510);
    sub_24B163DE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD508);
  }

  return result;
}

unint64_t sub_24B163DE0()
{
  result = qword_27EFCD518;
  if (!qword_27EFCD518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD4D8);
    sub_24B163E6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD518);
  }

  return result;
}

unint64_t sub_24B163E6C()
{
  result = qword_27EFCD520;
  if (!qword_27EFCD520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD4D0);
    sub_24B039184(&qword_27EFCD528, &qword_27EFCD4C8);
    sub_24B039184(&qword_27EFC8E90, &qword_27EFC8E98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD520);
  }

  return result;
}

uint64_t sub_24B163F50()
{
  v0 = sub_24B2D3184();
  __swift_allocate_value_buffer(v0, qword_27EFCD538);
  __swift_project_value_buffer(v0, qword_27EFCD538);
  return sub_24B2D3174();
}

void sub_24B163FD8(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D2>, double a4@<D3>, double a5@<D4>, double a6@<D5>)
{
  if (qword_27EFC76F8 != -1)
  {
    swift_once();
  }

  v12 = sub_24B2D3184();
  __swift_project_value_buffer(v12, qword_27EFCD538);
  v13 = sub_24B2D3164();
  v14 = sub_24B2D5904();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v127[0] = v16;
    *v15 = 136315394;
    type metadata accessor for CGSize(0);
    v17 = sub_24B2D53C4();
    v19 = sub_24AFF321C(v17, v18, v127);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v123 = a3;
    v124 = a4;
    v125 = a5;
    v126 = a6;
    v20 = sub_24B2D53C4();
    v22 = sub_24AFF321C(v20, v21, v127);

    *(v15 + 14) = v22;
    _os_log_impl(&dword_24AFD2000, v13, v14, "MKMapRect: CustomInit\n- viewSize: %s\n- edgeInsets: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v16, -1, -1);
    MEMORY[0x24C23D530](v15, -1, -1);
  }

  v23 = *(a1 + 16);
  *&v24 = MEMORY[0x277D84F90];
  if (v23)
  {
    v25 = (a1 + 40);
    *&v26 = MEMORY[0x277D84F90];
    do
    {
      v30 = *(v25 - 1);
      v31 = *v25;
      v128.latitude = v30;
      v128.longitude = *v25;
      if (CLLocationCoordinate2DIsValid(v128))
      {
        v123 = *&v26;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_24B007A0C(0, *(v26 + 16) + 1, 1);
          *&v26 = v123;
        }

        v28 = *(v26 + 16);
        v27 = *(v26 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_24B007A0C((v27 > 1), v28 + 1, 1);
          *&v26 = v123;
        }

        *(v26 + 16) = v28 + 1;
        v29 = v26 + 16 * v28;
        *(v29 + 32) = v30;
        *(v29 + 40) = v31;
      }

      v25 += 2;
      --v23;
    }

    while (v23);
    v32 = *(a1 + 16);
  }

  else
  {
    v32 = 0;
    *&v26 = MEMORY[0x277D84F90];
  }

  v33 = *(v26 + 16);
  if (v32 == v33)
  {

    v34 = *(v26 + 16);
    if (!v34)
    {
      goto LABEL_18;
    }
  }

  else
  {

    v40 = sub_24B2D3164();
    v41 = sub_24B2D5934();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v122 = a2;
      *&v117 = COERCE_DOUBLE(swift_slowAlloc());
      v123 = *&v117;
      *v42 = 136380931;
      type metadata accessor for CLLocationCoordinate2D(0);
      v44 = v43;
      v45 = MEMORY[0x24C23BD20](a1, v43);
      v46 = v33;
      v48 = v47;

      v49 = sub_24AFF321C(v45, v48, &v123);
      v33 = v46;

      *(v42 + 4) = v49;
      *(v42 + 12) = 2081;
      v50 = MEMORY[0x24C23BD20](v26, v44);
      v52 = sub_24AFF321C(v50, v51, &v123);

      *(v42 + 14) = v52;
      _os_log_impl(&dword_24AFD2000, v40, v41, "MKMapRect: CustomInit - Invalid Coordinates\nAll: %{private}s\nValid: %{private}s", v42, 0x16u);
      swift_arrayDestroy();
      a2 = v122;
      MEMORY[0x24C23D530](v117, -1, -1);
      MEMORY[0x24C23D530](v42, -1, -1);
    }

    else
    {
    }

    v34 = *(v26 + 16);
    if (!v34)
    {
LABEL_18:

      v35 = sub_24B2D3164();
      v36 = sub_24B2D5934();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_24AFD2000, v35, v36, "MKMapRect: CustomInit - No valid coordinates", v37, 2u);
        MEMORY[0x24C23D530](v37, -1, -1);
      }

      v38 = 0uLL;
      v39 = 0uLL;
      goto LABEL_56;
    }
  }

  if (v33)
  {
    v123 = *&v24;
    sub_24B0079DC(0, v33, 0);
    *&v24 = v123;
    v53 = v26 + 40;
    v54 = v33;
    do
    {
      v57 = MKMapPointForCoordinate(*(v53 - 8));
      y = v57.y;
      x = v57.x;
      v123 = *&v24;
      v59 = *(v24 + 16);
      v58 = *(v24 + 24);
      v60 = v59 + 1;
      if (v59 >= v58 >> 1)
      {
        sub_24B0079DC((v58 > 1), v59 + 1, 1);
        y = v57.y;
        x = v57.x;
        *&v24 = v123;
      }

      *(v24 + 16) = v60;
      v61 = v24 + 16 * v59;
      *(v61 + 32) = x;
      *(v61 + 40) = y;
      v53 += 16;
      --v54;
    }

    while (v54);
  }

  else
  {
    v60 = *(v24 + 16);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_24B006AD8(0, v60, 0, v24);
  }

  MKMapRectBoundingMapPoints();
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v70 = sub_24B2D3164();
  v71 = sub_24B2D5904();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v127[0] = v73;
    *v72 = 136315138;
    v123 = v63;
    v124 = v65;
    v125 = v67;
    v126 = v69;
    type metadata accessor for MKMapRect(0);
    v74 = sub_24B2D53C4();
    v76 = sub_24AFF321C(v74, v75, v127);

    *(v72 + 4) = v76;
    _os_log_impl(&dword_24AFD2000, v70, v71, "MKMapRect: CustomInit - coordinatesBoundingMapRect: %s", v72, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v73);
    MEMORY[0x24C23D530](v73, -1, -1);
    MEMORY[0x24C23D530](v72, -1, -1);
  }

  if (v34 == 1)
  {
    v77 = 0;
    v78 = 0uLL;
  }

  else
  {
    v77 = v34 & 0x7FFFFFFFFFFFFFFELL;
    v79 = (v26 + 48);
    v78 = 0uLL;
    v80 = v34 & 0x7FFFFFFFFFFFFFFELL;
    do
    {
      v78 = vaddq_f64(vaddq_f64(v78, v79[-1]), *v79);
      v79 += 2;
      v80 -= 2;
    }

    while (v80);
    if (v34 == v77)
    {
      goto LABEL_43;
    }
  }

  v81 = v34 - v77;
  v82 = (v26 + 16 * v77 + 32);
  do
  {
    v83 = *v82++;
    v78 = vaddq_f64(v78, v83);
    --v81;
  }

  while (v81);
LABEL_43:

  MKMapRectMakeWithRadialDistance();
  v85 = v84;
  v87 = v86;
  width = v88;
  height = v90;
  v92 = sub_24B2D3164();
  v93 = sub_24B2D5904();
  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v127[0] = v95;
    *v94 = 136315138;
    v123 = v85;
    v124 = v87;
    v125 = width;
    v126 = height;
    type metadata accessor for MKMapRect(0);
    v96 = sub_24B2D53C4();
    v98 = sub_24AFF321C(v96, v97, v127);

    *(v94 + 4) = v98;
    _os_log_impl(&dword_24AFD2000, v92, v93, "MKMapRect: CustomInit - minRadialDistanceMapRect: %s", v94, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v95);
    MEMORY[0x24C23D530](v95, -1, -1);
    MEMORY[0x24C23D530](v94, -1, -1);
  }

  if (v63 == *MEMORY[0x277CD4BB0] && v65 == *(MEMORY[0x277CD4BB0] + 8))
  {
  }

  else
  {

    if (v67 != 0.0 && v69 != 0.0)
    {
      v129.origin.x = v63;
      v129.origin.y = v65;
      v129.size.width = v67;
      v129.size.height = v69;
      v131.origin.x = v85;
      v131.origin.y = v87;
      v131.size.width = width;
      v131.size.height = height;
      v130 = MKMapRectUnion(v129, v131);
      v85 = v130.origin.x;
      v87 = v130.origin.y;
      width = v130.size.width;
      height = v130.size.height;
    }
  }

  v99 = sub_24B2D3164();
  v100 = sub_24B2D5904();
  if (os_log_type_enabled(v99, v100))
  {
    v101 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v127[0] = v102;
    *v101 = 136315138;
    v123 = v85;
    v124 = v87;
    v125 = width;
    v126 = height;
    type metadata accessor for MKMapRect(0);
    v103 = sub_24B2D53C4();
    v105 = sub_24AFF321C(v103, v104, v127);

    *(v101 + 4) = v105;
    _os_log_impl(&dword_24AFD2000, v99, v100, "MKMapRect: CustomInit - adjustedMapRect: %s", v101, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v102);
    MEMORY[0x24C23D530](v102, -1, -1);
    MEMORY[0x24C23D530](v101, -1, -1);
  }

  _MKMapRectThatFits();
  v120 = v107;
  v121 = v106;
  v118 = v108;
  v119 = v109;
  v110 = sub_24B2D3164();
  v111 = sub_24B2D5904();
  if (os_log_type_enabled(v110, v111))
  {
    v112 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    v127[0] = v113;
    *v112 = 136315138;
    v123 = v121;
    v124 = v118;
    v125 = v120;
    v126 = v119;
    type metadata accessor for MKMapRect(0);
    v114 = sub_24B2D53C4();
    v116 = sub_24AFF321C(v114, v115, v127);

    *(v112 + 4) = v116;
    _os_log_impl(&dword_24AFD2000, v110, v111, "MKMapRect: CustomInit - insetMapRect: %s", v112, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v113);
    MEMORY[0x24C23D530](v113, -1, -1);
    MEMORY[0x24C23D530](v112, -1, -1);
  }

  *&v38 = v121;
  *(&v38 + 1) = v118;
  *&v39 = v120;
  *(&v39 + 1) = v119;
LABEL_56:
  *a2 = v38;
  *(a2 + 16) = v39;
  *(a2 + 32) = v34 == 0;
}

void sub_24B164A6C(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D2>, double a4@<D3>, double a5@<D4>, double a6@<D5>)
{
  if (qword_27EFC76F8 != -1)
  {
    swift_once();
  }

  v10 = sub_24B2D3184();
  __swift_project_value_buffer(v10, qword_27EFCD538);
  v11 = sub_24B2D3164();
  v12 = sub_24B2D5904();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v130[0] = v14;
    *v13 = 136315394;
    type metadata accessor for CGSize(0);
    v15 = sub_24B2D53C4();
    v17 = sub_24AFF321C(v15, v16, v130);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v126 = a3;
    v127 = a4;
    v128 = a5;
    v129 = a6;
    v18 = sub_24B2D53C4();
    v20 = sub_24AFF321C(v18, v19, v130);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_24AFD2000, v11, v12, "MKMapRect: CustomInit\n- viewSize: %s\n- edgePadding: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v14, -1, -1);
    MEMORY[0x24C23D530](v13, -1, -1);
  }

  v21 = *(a1 + 16);
  *&v22 = MEMORY[0x277D84F90];
  if (v21)
  {
    v23 = (a1 + 48);
    *&v24 = MEMORY[0x277D84F90];
    do
    {
      v28 = *(v23 - 2);
      v29 = *(v23 - 1);
      v30 = *v23;
      v131.latitude = v28;
      v131.longitude = v29;
      if (CLLocationCoordinate2DIsValid(v131))
      {
        v126 = *&v24;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_24B007A3C(0, *(v24 + 16) + 1, 1);
          *&v24 = v126;
        }

        v26 = *(v24 + 16);
        v25 = *(v24 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_24B007A3C((v25 > 1), v26 + 1, 1);
          *&v24 = v126;
        }

        *(v24 + 16) = v26 + 1;
        v27 = (v24 + 24 * v26);
        v27[4] = v28;
        v27[5] = v29;
        v27[6] = v30;
      }

      v23 += 3;
      --v21;
    }

    while (v21);
    v31 = *(a1 + 16);
  }

  else
  {
    v31 = 0;
    *&v24 = MEMORY[0x277D84F90];
  }

  v32 = *(v24 + 16);
  if (v31 == v32)
  {

    v33 = *(v24 + 16);
    if (v33)
    {
LABEL_18:
      v118 = v33;
      if (v32)
      {
        v126 = *&v22;
        sub_24B0079DC(0, v32, 0);
        *&v22 = v126;
        v34 = v24 + 40;
        v35 = v32;
        do
        {
          v38 = MKMapPointForCoordinate(*(v34 - 8));
          y = v38.y;
          x = v38.x;
          v126 = *&v22;
          v40 = *(v22 + 16);
          v39 = *(v22 + 24);
          v41 = v40 + 1;
          if (v40 >= v39 >> 1)
          {
            sub_24B0079DC((v39 > 1), v40 + 1, 1);
            y = v38.y;
            x = v38.x;
            *&v22 = v126;
          }

          *(v22 + 16) = v41;
          v42 = v22 + 16 * v40;
          *(v42 + 32) = x;
          *(v42 + 40) = y;
          v34 += 24;
          --v35;
        }

        while (v35);
      }

      else
      {
        v41 = *(v22 + 16);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_24B006AD8(0, v41, 0, v22);
      }

      MKMapRectBoundingMapPoints();
      v61 = v60;
      v63 = v62;
      v65 = v64;
      v67 = v66;
      v68 = sub_24B2D3164();
      v69 = sub_24B2D5904();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v130[0] = v71;
        *v70 = 136315138;
        v126 = v61;
        v127 = v63;
        v128 = v65;
        v129 = v67;
        type metadata accessor for MKMapRect(0);
        v72 = sub_24B2D53C4();
        v74 = sub_24AFF321C(v72, v73, v130);

        *(v70 + 4) = v74;
        _os_log_impl(&dword_24AFD2000, v68, v69, "MKMapRect: CustomInit - coordinatesBoundingMapRect: %s", v70, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v71);
        MEMORY[0x24C23D530](v71, -1, -1);
        MEMORY[0x24C23D530](v70, -1, -1);
      }

      v75 = (v24 + 48);
      v76 = 0.0;
      v33 = v118;
      v77 = v118;
      v78 = 0.0;
      v79 = 0.0;
      do
      {
        v80 = *(v75 - 2);
        v81 = *(v75 - 1);
        v82 = *v75;
        v75 += 3;
        v83 = v82;
        v79 = v79 + v80;
        v78 = v78 + v81;
        if (v82 > v76)
        {
          v76 = v83;
        }

        --v77;
      }

      while (v77);

      MKMapRectMakeWithRadialDistance();
      v85 = v84;
      v87 = v86;
      width = v88;
      height = v90;
      v92 = sub_24B2D3164();
      v93 = sub_24B2D5904();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v130[0] = v95;
        *v94 = 136315138;
        v126 = v85;
        v127 = v87;
        v128 = width;
        v129 = height;
        type metadata accessor for MKMapRect(0);
        v96 = sub_24B2D53C4();
        v98 = sub_24AFF321C(v96, v97, v130);

        *(v94 + 4) = v98;
        v33 = v118;
        _os_log_impl(&dword_24AFD2000, v92, v93, "MKMapRect: CustomInit - minRadialDistanceMapRect: %s", v94, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v95);
        MEMORY[0x24C23D530](v95, -1, -1);
        MEMORY[0x24C23D530](v94, -1, -1);
      }

      if (v61 == *MEMORY[0x277CD4BB0] && v63 == *(MEMORY[0x277CD4BB0] + 8))
      {
      }

      else
      {

        if (v65 != 0.0 && v67 != 0.0)
        {
          v132.origin.x = v61;
          v132.origin.y = v63;
          v132.size.width = v65;
          v132.size.height = v67;
          v134.origin.x = v85;
          v134.origin.y = v87;
          v134.size.width = width;
          v134.size.height = height;
          v133 = MKMapRectUnion(v132, v134);
          v85 = v133.origin.x;
          v87 = v133.origin.y;
          width = v133.size.width;
          height = v133.size.height;
        }
      }

      v99 = sub_24B2D3164();
      v100 = sub_24B2D5904();
      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v130[0] = v102;
        *v101 = 136315138;
        v126 = v85;
        v127 = v87;
        v128 = width;
        v129 = height;
        type metadata accessor for MKMapRect(0);
        v103 = sub_24B2D53C4();
        v105 = sub_24AFF321C(v103, v104, v130);

        *(v101 + 4) = v105;
        _os_log_impl(&dword_24AFD2000, v99, v100, "MKMapRect: CustomInit - adjustedMapRect: %s", v101, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v102);
        MEMORY[0x24C23D530](v102, -1, -1);
        MEMORY[0x24C23D530](v101, -1, -1);
      }

      _MKMapRectThatFits();
      v124 = v107;
      v125 = v106;
      v120 = v108;
      v122 = v109;
      v110 = sub_24B2D3164();
      v111 = sub_24B2D5904();
      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        v130[0] = v113;
        *v112 = 136315138;
        v126 = v125;
        v127 = v120;
        v128 = v124;
        v129 = v122;
        type metadata accessor for MKMapRect(0);
        v114 = sub_24B2D53C4();
        v116 = sub_24AFF321C(v114, v115, v130);

        *(v112 + 4) = v116;
        _os_log_impl(&dword_24AFD2000, v110, v111, "MKMapRect: CustomInit - insetMapRect: %s", v112, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v113);
        MEMORY[0x24C23D530](v113, -1, -1);
        MEMORY[0x24C23D530](v112, -1, -1);
      }

      *&v58 = v125;
      *(&v58 + 1) = v120;
      *&v59 = v124;
      *(&v59 + 1) = v122;
      goto LABEL_53;
    }
  }

  else
  {

    v43 = sub_24B2D3164();
    v44 = sub_24B2D5934();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v119 = a2;
      *&v117 = COERCE_DOUBLE(swift_slowAlloc());
      v126 = *&v117;
      *v45 = 136380931;
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD550);
      v47 = MEMORY[0x24C23BD20](a1, v46);
      v48 = v32;
      v50 = v49;

      v51 = sub_24AFF321C(v47, v50, &v126);
      v32 = v48;

      *(v45 + 4) = v51;
      *(v45 + 12) = 2081;
      v52 = MEMORY[0x24C23BD20](v24, v46);
      v54 = sub_24AFF321C(v52, v53, &v126);

      *(v45 + 14) = v54;
      _os_log_impl(&dword_24AFD2000, v43, v44, "MKMapRect: CustomInit - Invalid Coordinates\nAll: %{private}s\nValid: %{private}s", v45, 0x16u);
      swift_arrayDestroy();
      a2 = v119;
      MEMORY[0x24C23D530](v117, -1, -1);
      MEMORY[0x24C23D530](v45, -1, -1);
    }

    else
    {
    }

    v33 = *(v24 + 16);
    if (v33)
    {
      goto LABEL_18;
    }
  }

  v55 = sub_24B2D3164();
  v56 = sub_24B2D5934();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_24AFD2000, v55, v56, "MKMapRect: CustomInit - No valid coordinates", v57, 2u);
    MEMORY[0x24C23D530](v57, -1, -1);
  }

  v58 = 0uLL;
  v59 = 0uLL;
LABEL_53:
  *a2 = v58;
  *(a2 + 16) = v59;
  *(a2 + 32) = v33 == 0;
}

uint64_t sub_24B165514()
{
  swift_getKeyPath();
  sub_24B166D24();
  sub_24B2D2584();

  if (v0[18])
  {
    v1 = 0x10000;
  }

  else
  {
    v1 = 0;
  }

  if (v0[17])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return v2 | v0[16] | v1;
}

uint64_t sub_24B1655AC(unsigned int a1)
{
  if (v1[18])
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  if (v1[17])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  v4 = a1 & 1;
  v5 = (a1 >> 8) & 1;
  v6 = HIWORD(a1) & 1;
  result = sub_24B166ACC(v3 | v1[16] | v2, a1 & 0x10101);
  if (result)
  {
    v1[16] = v4;
    v1[17] = v5;
    v1[18] = v6;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24B166D24();
    sub_24B2D2574();
  }

  return result;
}

uint64_t sub_24B1656E4()
{
  v1 = OBJC_IVAR____TtC12FindMyUICore20CustomMapStyleLoader___observationRegistrar;
  v2 = sub_24B2D25C4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CustomMapStyleLoader()
{
  result = qword_27EFCD578;
  if (!qword_27EFCD578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B1657D4()
{
  result = sub_24B2D25C4();
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

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CustomMapStyle(unsigned __int16 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CustomMapStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_24B165990@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v3 = sub_24B2D3054();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24B2D2EB4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24B2D2F24();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_24B2D2F14();
    if ((a1 & 0x10000) != 0)
    {
      sub_24B2D3044();
      sub_24B2D2EC4();
      (*(v4 + 8))(v6, v3);
    }

    else
    {
      sub_24B2D2EE4();
    }
  }

  else
  {
    sub_24B2D2F14();
    sub_24B2D2EA4();
    sub_24B2D3044();
    sub_24B2D2EF4();
    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v7);
  }

  return (*(v12 + 8))(v14, v11);
}

void sub_24B165C20(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24B2D2E94();
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    *v2 = 0;
    v6 = [v5 showsTraffic];

    v7 = sub_24B2D2F34();
    (*(*(v7 - 8) + 8))(a1, v7);
    v2[1] = v6;
    v8 = 1;
  }

  else
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v8 = 1;
      *v2 = 1;
      v10 = [v9 showsTraffic];

      v11 = sub_24B2D2F34();
      (*(*(v11 - 8) + 8))(a1, v11);
      v2[1] = v10;
    }

    else
    {
      v12 = sub_24B2D2F34();
      (*(*(v12 - 8) + 8))(a1, v12);
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();

      if (!v13)
      {
        return;
      }

      v8 = 0;
      *v2 = 1;
    }
  }

  v2[2] = v8;
}

uint64_t sub_24B165DB4()
{
  v0 = sub_24B2D3184();
  __swift_allocate_value_buffer(v0, qword_27EFCD558);
  __swift_project_value_buffer(v0, qword_27EFCD558);
  return sub_24B2D3174();
}

uint64_t sub_24B165E44()
{
  v0 = sub_24B2D2534();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24B2D2204();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24B2D5344();
  MEMORY[0x28223BE20](v5 - 8);
  sub_24B2D52E4();
  if (qword_27EFC7708 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v1, qword_27EFE4550);
  (*(v2 + 16))(v4, v6, v1);
  sub_24B2D2524();
  return sub_24B2D2224();
}

uint64_t sub_24B166078(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[2])
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  if (a1[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  if (a2[2])
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (a2[1])
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  return sub_24B166ACC(v3 | *a1 | v2, v5 | *a2 | v4);
}

uint64_t sub_24B1660CC()
{
  sub_24B2D60E4();
  sub_24B2D5404();

  return sub_24B2D6124();
}

uint64_t sub_24B166154()
{
  sub_24B2D5404();
}

uint64_t sub_24B1661C8()
{
  sub_24B2D60E4();
  sub_24B2D5404();

  return sub_24B2D6124();
}

uint64_t sub_24B16624C@<X0>(char *a1@<X8>)
{
  v2 = sub_24B2D5E14();

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

void sub_24B1662AC(uint64_t *a1@<X8>)
{
  v2 = 0x65726F6C707865;
  if (*v1)
  {
    v2 = 0x74696C6C65746173;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000065;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24B1662F0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x74696C6C65746173;
  }

  else
  {
    v3 = 0x65726F6C707865;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE900000000000065;
  }

  if (*a2)
  {
    v5 = 0x74696C6C65746173;
  }

  else
  {
    v5 = 0x65726F6C707865;
  }

  if (*a2)
  {
    v6 = 0xE900000000000065;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24B2D6004();
  }

  return v8 & 1;
}

uint64_t sub_24B16644C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD5D0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B1673E8();
  sub_24B2D6144();
  v8[15] = 0;
  sub_24B2D5F04();
  if (!v1)
  {
    v8[14] = 1;
    sub_24B2D5F04();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24B1665CC()
{
  if (*v0)
  {
    return 0x62614C73776F6873;
  }

  else
  {
    return 0x61725473776F6873;
  }
}

uint64_t sub_24B166618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x61725473776F6873 && a2 == 0xEC00000063696666;
  if (v6 || (sub_24B2D6004() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x62614C73776F6873 && a2 == 0xEB00000000736C65)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B2D6004();

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

uint64_t sub_24B1666FC(uint64_t a1)
{
  v2 = sub_24B1673E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B166738(uint64_t a1)
{
  v2 = sub_24B1673E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B16679C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24B167238(a1);
  if (!v2)
  {
    *a2 = result & 1;
    a2[1] = BYTE1(result) & 1;
  }

  return result;
}

uint64_t sub_24B166804(uint64_t a1, char a2)
{
  if (qword_27EFC7700 != -1)
  {
    swift_once();
  }

  v3 = sub_24B2D3184();
  __swift_project_value_buffer(v3, qword_27EFCD558);
  v4 = sub_24B2D3164();
  v5 = sub_24B2D5934();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446210;
    v8 = a2 & 1;
    v9 = sub_24B2D53C4();
    v11 = sub_24AFF321C(v9, v10, &v15);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_24AFD2000, v4, v5, "CustomMapStyle: Save to UserDefaults (%{public}s)", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x24C23D530](v7, -1, -1);
    MEMORY[0x24C23D530](v6, -1, -1);
  }

  else
  {

    v8 = a2 & 1;
  }

  LOBYTE(v15) = v8;
  sub_24B166BB4();
  sub_24B166C08();
  sub_24B2D5944();
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_24B2D5C34();

  v15 = 0xD000000000000017;
  v16 = 0x800000024B2DC090;
  if (a2)
  {
    v12 = 0x74696C6C65746173;
  }

  else
  {
    v12 = 0x65726F6C707865;
  }

  if (a2)
  {
    v13 = 0xE900000000000065;
  }

  else
  {
    v13 = 0xE700000000000000;
  }

  MEMORY[0x24C23BC10](v12, v13);

  sub_24B166C5C();
  sub_24B166CB0();
  sub_24B2D5944();
}

uint64_t sub_24B166ACC(unsigned int a1, int a2)
{
  v4 = (a1 & 1) == 0;
  if (a1)
  {
    v5 = 0x74696C6C65746173;
  }

  else
  {
    v5 = 0x65726F6C707865;
  }

  if (v4)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  if (a2)
  {
    v7 = 0x74696C6C65746173;
  }

  else
  {
    v7 = 0x65726F6C707865;
  }

  if (a2)
  {
    v8 = 0xE900000000000065;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v5 == v7 && v6 == v8)
  {
  }

  else
  {
    v9 = sub_24B2D6004();

    result = 0;
    if ((v9 & 1) == 0)
    {
      return result;
    }
  }

  return (((a2 & 0x100) == 0) ^ (a1 >> 8)) & (((a2 & 0x10000) == 0) ^ ((a1 & 0x10000) >> 16));
}

unint64_t sub_24B166BB4()
{
  result = qword_27EFCD588;
  if (!qword_27EFCD588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD588);
  }

  return result;
}

unint64_t sub_24B166C08()
{
  result = qword_27EFCD590;
  if (!qword_27EFCD590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD590);
  }

  return result;
}

unint64_t sub_24B166C5C()
{
  result = qword_27EFCD598;
  if (!qword_27EFCD598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD598);
  }

  return result;
}

unint64_t sub_24B166CB0()
{
  result = qword_27EFCD5A0;
  if (!qword_27EFCD5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD5A0);
  }

  return result;
}

void sub_24B166D04()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 25);
  v3 = *(v0 + 26);
  v1[16] = *(v0 + 24);
  v1[17] = v2;
  v1[18] = v3;
}

unint64_t sub_24B166D24()
{
  result = qword_27EFCD5A8;
  if (!qword_27EFCD5A8)
  {
    type metadata accessor for CustomMapStyleLoader();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD5A8);
  }

  return result;
}

uint64_t sub_24B166D7C(char a1)
{
  if (qword_27EFC7700 != -1)
  {
    swift_once();
  }

  v2 = 0xE900000000000065;
  v3 = 0x74696C6C65746173;
  v4 = sub_24B2D3184();
  __swift_project_value_buffer(v4, qword_27EFCD558);
  v5 = sub_24B2D3164();
  v6 = sub_24B2D5934();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136446210;
    if ((a1 & 1) == 0)
    {
      v3 = 0x65726F6C707865;
      v2 = 0xE700000000000000;
    }

    v9 = sub_24AFF321C(v3, v2, &v13);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_24AFD2000, v5, v6, "CustomMapStyle: Load with Mode (%{public}s) from UserDefaults", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x24C23D530](v8, -1, -1);
    MEMORY[0x24C23D530](v7, -1, -1);
  }

  else
  {

    if ((a1 & 1) == 0)
    {
      v3 = 0x65726F6C707865;
      v2 = 0xE700000000000000;
    }
  }

  v13 = 0;
  v14 = 0xE000000000000000;
  sub_24B2D5C34();

  v13 = 0xD000000000000017;
  v14 = 0x800000024B2DC090;
  MEMORY[0x24C23BC10](v3, v2);

  sub_24B166C5C();
  sub_24B166CB0();
  sub_24B2D5954();

  if (v15 == 2)
  {
    v10 = 0;
    v11 = 0x10000;
  }

  else
  {
    v11 = (HIBYTE(v15) & 1) << 16;
    v10 = (v15 & 1) << 8;
  }

  return v10 | a1 & 1 | v11;
}

uint64_t sub_24B166FFC()
{
  if (qword_27EFC7700 != -1)
  {
    swift_once();
  }

  v0 = sub_24B2D3184();
  __swift_project_value_buffer(v0, qword_27EFCD558);
  v1 = sub_24B2D3164();
  v2 = sub_24B2D5934();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24AFD2000, v1, v2, "CustomMapStyle: Load from UserDefaults", v3, 2u);
    MEMORY[0x24C23D530](v3, -1, -1);
  }

  sub_24B166BB4();
  sub_24B166C08();
  sub_24B2D5954();
  if (v5 == 2)
  {
    return 2;
  }

  else
  {
    return sub_24B166D7C(v5 & 1) & 0x10101;
  }
}

unint64_t sub_24B167190()
{
  result = qword_27EFCD5B0;
  if (!qword_27EFCD5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD5B0);
  }

  return result;
}

unint64_t sub_24B1671E4()
{
  result = qword_27EFCD5B8;
  if (!qword_27EFCD5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD5B8);
  }

  return result;
}

uint64_t sub_24B167238(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD5C0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B1673E8();
  sub_24B2D6134();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v11[15] = 0;
  v7 = sub_24B2D5E84();
  v11[14] = 1;
  v8 = sub_24B2D5E84();
  (*(v4 + 8))(v6, v3);
  __swift_destroy_boxed_opaque_existential_0(a1);
  if (v8)
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 0xFFFFFFFE | v7 & 1;
}

unint64_t sub_24B1673E8()
{
  result = qword_27EFCD5C8;
  if (!qword_27EFCD5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD5C8);
  }

  return result;
}

unint64_t sub_24B167450()
{
  result = qword_27EFCD5D8;
  if (!qword_27EFCD5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD5D8);
  }

  return result;
}

unint64_t sub_24B1674A8()
{
  result = qword_27EFCD5E0;
  if (!qword_27EFCD5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD5E0);
  }

  return result;
}

unint64_t sub_24B167500()
{
  result = qword_27EFCD5E8;
  if (!qword_27EFCD5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD5E8);
  }

  return result;
}

void sub_24B16759C()
{
  sub_24B1676A4(319, &qword_27EFCD600, &type metadata for CustomMapStyle, MEMORY[0x277CE11F8]);
  if (v0 <= 0x3F)
  {
    sub_24B1676A4(319, &qword_27EFC98D8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_24B16B190(319, &qword_27EFCD4C0, MEMORY[0x277CDF450]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24B1676A4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_24B167710@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v82 = a1;
  v85 = sub_24B2D4074();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v83 = (&v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for CustomMapStyleToggle(0);
  v5 = v4 - 8;
  v79 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v80 = v6;
  v81 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAA68);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v67 - v8;
  v10 = sub_24B2D3364();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v74 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v72 = &v67 - v14;
  MEMORY[0x28223BE20](v15);
  v71 = &v67 - v16;
  MEMORY[0x28223BE20](v17);
  v70 = &v67 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v67 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v67 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD608);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v67 - v26;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD610);
  MEMORY[0x28223BE20](v69);
  v73 = &v67 - v28;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD618);
  MEMORY[0x28223BE20](v76);
  v75 = &v67 - v29;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD620);
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v90 = &v67 - v30;
  sub_24B168230(v2, v27);
  v88 = *(v5 + 32);
  sub_24B163CF0(v24);
  v89 = *(v11 + 32);
  v89(v21, v24, v10);
  v68 = v11;
  v87 = *(v11 + 88);
  v31 = v87(v21, v10);
  v32 = *MEMORY[0x277CDF418];
  v33 = *MEMORY[0x277CDF438];
  v91 = *MEMORY[0x277CDF440];
  v86 = v33;
  if (v31 == v32)
  {
    v34 = v71;
  }

  else
  {
    v34 = v71;
    if (v31 != v33 && v31 != v91 && v31 != *MEMORY[0x277CDF420] && v31 != *MEMORY[0x277CDF410])
    {
      (*(v68 + 8))(v21, v10);
    }
  }

  sub_24B2D43D4();
  v35 = sub_24B2D43B4();
  (*(*(v35 - 8) + 56))(v9, 1, 1, v35);
  v36 = sub_24B2D4404();
  sub_24AFF8258(v9, &qword_27EFCAA68);
  KeyPath = swift_getKeyPath();
  v38 = v73;
  sub_24B0391CC(v27, v73, &qword_27EFCD608);
  v39 = (v38 + *(v69 + 36));
  *v39 = KeyPath;
  v39[1] = v36;
  v40 = v70;
  sub_24B163CF0(v70);
  v89(v34, v40, v10);
  v41 = v87(v34, v10);
  if (v41 == v32)
  {
    v42 = v74;
  }

  else
  {
    v42 = v74;
    if (v41 != v86 && v41 != v91 && v41 != *MEMORY[0x277CDF420] && v41 != *MEMORY[0x277CDF410])
    {
      (*(v68 + 8))(v34, v10);
    }
  }

  v43 = v72;
  sub_24B163CF0(v72);
  v89(v42, v43, v10);
  v44 = v87(v42, v10);
  if (v44 != v32 && v44 != v86 && v44 != v91 && v44 != *MEMORY[0x277CDF420] && v44 != *MEMORY[0x277CDF410])
  {
    (*(v68 + 8))(v42, v10);
  }

  sub_24B2D5064();
  sub_24B2D3494();
  v45 = v75;
  sub_24B0391CC(v38, v75, &qword_27EFCD610);
  v46 = v76;
  v47 = (v45 + *(v76 + 36));
  v48 = v98;
  *v47 = v97;
  v47[1] = v48;
  v47[2] = v99;
  v49 = *(v2 + 8);
  v50 = *(v2 + 16);
  v51 = *(v2 + 17);
  v52 = *(v2 + 18);
  v92 = *v2;
  v93 = v49;
  LOBYTE(v94) = v50;
  BYTE1(v94) = v51;
  BYTE2(v94) = v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD628);
  MEMORY[0x24C23B610](v96, v53);
  LOWORD(v92) = v96[0];
  BYTE2(v92) = BYTE2(v96[0]);
  v54 = sub_24B16AA28();
  v55 = sub_24B16ACB0();
  sub_24B2D49B4();
  sub_24AFF8258(v45, &qword_27EFCD618);
  v56 = *(v2 + 32);
  LOBYTE(v96[0]) = *(v2 + 24);
  v96[1] = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC92E8);
  sub_24B2D4CF4();
  v89 = v92;
  v91 = v94;
  sub_24B2D4344();
  v57 = v81;
  sub_24B16AD04(v2, v81);
  v58 = (*(v79 + 80) + 16) & ~*(v79 + 80);
  v59 = swift_allocObject();
  sub_24B16AD68(v57, v59 + v58);
  v60 = sub_24B2D4D14();
  v61 = v83;
  *v83 = v60;
  v62 = v84;
  v63 = v85;
  (*(v84 + 104))(v61, *MEMORY[0x277CDE248], v85);
  type metadata accessor for CustomMapStyleToggle.MapStylePickerContainer(0);
  v92 = v46;
  v93 = &type metadata for CustomMapStyle;
  v94 = v54;
  v95 = v55;
  swift_getOpaqueTypeConformance2();
  sub_24B16AE5C(&qword_27EFCD668, type metadata accessor for CustomMapStyleToggle.MapStylePickerContainer);
  v64 = v78;
  v65 = v90;
  sub_24B2D4984();

  (*(v62 + 8))(v61, v63);
  return (*(v77 + 8))(v65, v64);
}

uint64_t sub_24B168230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = sub_24B2D3984();
  v22 = *(v3 - 8);
  v23 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD648);
  v19 = *(v6 - 8);
  v20 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v18 - v7;
  sub_24B2D5694();
  v18[2] = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = *(a1 + 32);
  v28 = *(a1 + 24);
  v29 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC92E8);
  v10 = sub_24B2D4CF4();
  v18[1] = v18;
  MEMORY[0x28223BE20](v10);
  v18[-2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD670);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD678);
  v12 = sub_24B2D3D14();
  v13 = sub_24B16AEAC();
  v14 = sub_24B16AE5C(&qword_27EFCBC60, MEMORY[0x277CDDE78]);
  v24 = v11;
  v25 = v12;
  v26 = v13;
  v27 = v14;
  swift_getOpaqueTypeConformance2();
  sub_24B2D4DC4();
  sub_24B2D3974();
  sub_24B039184(&qword_27EFCD650, &qword_27EFCD648);
  sub_24B16AE5C(&qword_27EFCD658, MEMORY[0x277CDDBD0]);
  v15 = v20;
  v16 = v23;
  sub_24B2D46F4();
  (*(v22 + 8))(v5, v16);
  (*(v19 + 8))(v8, v15);
}

uint64_t sub_24B1685DC@<X0>(uint64_t a1@<X8>)
{
  v22[2] = a1;
  v1 = sub_24B2D3D14();
  v23 = *(v1 - 8);
  v24 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9490);
  v4 = *(v22[0] - 8);
  MEMORY[0x28223BE20](v22[0]);
  v6 = v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD690);
  MEMORY[0x28223BE20](v7);
  v9 = v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD678);
  MEMORY[0x28223BE20](v10);
  v12 = v22 - v11;
  sub_24B2D5694();
  v22[1] = sub_24B2D5684();
  sub_24B2D5604();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  MEMORY[0x28223BE20](v14);
  sub_24B2D4C34();
  sub_24B2D5064();
  sub_24B2D3904();
  (*(v4 + 32))(v9, v6, v22[0]);
  v15 = &v9[*(v7 + 36)];
  v16 = v30;
  *(v15 + 4) = v29;
  *(v15 + 5) = v16;
  *(v15 + 6) = v31;
  v17 = v26;
  *v15 = v25;
  *(v15 + 1) = v17;
  v18 = v28;
  *(v15 + 2) = v27;
  *(v15 + 3) = v18;
  v19 = &v12[*(v10 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBC28);
  sub_24B2D3994();
  *v19 = 0;
  sub_24B16B02C(v9, v12);
  sub_24B2D3D04();
  sub_24B16AEAC();
  sub_24B16AE5C(&qword_27EFCBC60, MEMORY[0x277CDDE78]);
  v20 = v24;
  sub_24B2D46C4();
  (*(v23 + 8))(v3, v20);
  sub_24AFF8258(v12, &qword_27EFCD678);
}

uint64_t sub_24B168A3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24B2D2214();
  MEMORY[0x28223BE20](v4 - 8);
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = *(a1 + 17);
  v8 = *(a1 + 18);
  v19 = *a1;
  v20 = v5;
  v21 = v6;
  v22 = v7;
  v23 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD628);
  MEMORY[0x24C23B610](&v18, v9);
  sub_24B165E44();
  v10 = sub_24B2D45F4();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14 & 1;
  *(a2 + 24) = v16;
  return result;
}

uint64_t sub_24B168BBC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = *(a1 + 17);
  v7 = *(a1 + 18);
  v12 = *a1;
  v13 = v4;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD628);
  MEMORY[0x24C23B610](&v11, v8);
  v9 = sub_24B2D4BC4();

  *a2 = v9;
  return result;
}

void sub_24B168CE4(uint64_t a1, char *a2)
{
  v2 = *a2;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = [objc_opt_self() standardUserDefaults];
  sub_24B166804(v3, v2);
}

uint64_t sub_24B168DE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD628);
  sub_24B2D4E64();
  v4 = *(a1 + *(type metadata accessor for CustomMapStyleToggle(0) + 28));
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD530);
  swift_storeEnumTagMultiPayload();

  result = type metadata accessor for CustomMapStyleToggle.MapStylePickerContainer(0);
  v6 = a2 + *(result + 20);
  *v6 = v7;
  *(v6 + 1) = v8;
  v6[16] = v9;
  v6[17] = v10;
  v6[18] = v11;
  *(a2 + *(result + 24)) = v4;
  return result;
}

uint64_t sub_24B168F44@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v53 = sub_24B2D40A4();
  v54 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v52 = v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_24B2D38A4();
  v3 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v5 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v44 - v7;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD6B8);
  v47 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v10 = v44 - v9;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD6C0);
  MEMORY[0x28223BE20](v45);
  v12 = v44 - v11;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD6C8);
  v51 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = v44 - v13;
  v56 = v1;
  v44[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD6D0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD6D8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD6E0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD6E8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD6F0);
  v18 = sub_24B2D2D24();
  v19 = sub_24B16AE5C(&qword_27EFCD6F8, MEMORY[0x277CE42C0]);
  *&v59 = v18;
  *(&v59 + 1) = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v59 = v17;
  *(&v59 + 1) = OpaqueTypeConformance2;
  v21 = swift_getOpaqueTypeConformance2();
  *&v59 = v16;
  *(&v59 + 1) = v21;
  v22 = swift_getOpaqueTypeConformance2();
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD700);
  v24 = sub_24B16B208();
  *&v59 = v23;
  *(&v59 + 1) = v24;
  v25 = swift_getOpaqueTypeConformance2();
  *&v59 = v14;
  *(&v59 + 1) = v15;
  *&v60 = v22;
  *(&v60 + 1) = v25;
  swift_getOpaqueTypeConformance2();
  sub_24B2D37C4();
  sub_24B163D18(v8);
  sub_24B2D3894();
  sub_24B2D3884();
  v26 = *(v3 + 8);
  v27 = v5;
  v28 = v46;
  v26(v27, v46);
  v26(v8, v28);
  sub_24B2D5064();
  sub_24B2D3904();
  (*(v47 + 32))(v12, v10, v48);
  v29 = v45;
  v30 = &v12[*(v45 + 36)];
  v31 = v64;
  *(v30 + 4) = v63;
  *(v30 + 5) = v31;
  *(v30 + 6) = v65;
  v32 = v60;
  *v30 = v59;
  *(v30 + 1) = v32;
  v33 = v62;
  *(v30 + 2) = v61;
  *(v30 + 3) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD720);
  v34 = sub_24B2D3DA4();
  v35 = *(v34 - 8);
  v36 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_24B2DE430;
  sub_24B2D3D94();
  sub_24B136894(v37);
  swift_setDeallocating();
  (*(v35 + 8))(v37 + v36, v34);
  swift_deallocClassInstance();
  v38 = sub_24B16B2FC();
  v39 = v49;
  sub_24B2D4804();

  sub_24AFF8258(v12, &qword_27EFCD6C0);
  v40 = v52;
  sub_24B2D3DB4();
  v57 = v29;
  v58 = v38;
  swift_getOpaqueTypeConformance2();
  v41 = v50;
  v42 = v53;
  sub_24B2D47E4();
  (*(v54 + 8))(v40, v42);
  return (*(v51 + 8))(v39, v41);
}

uint64_t sub_24B1696C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v3 = sub_24B2D3C94();
  v87 = *(v3 - 8);
  v88 = v3;
  MEMORY[0x28223BE20](v3);
  v86 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24B2D2534();
  MEMORY[0x28223BE20](v5 - 8);
  v83 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_24B2D2204();
  v76 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v78 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24B2D5344();
  MEMORY[0x28223BE20](v8 - 8);
  v73 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24B2D2214();
  v84 = *(v10 - 8);
  v85 = v10;
  MEMORY[0x28223BE20](v10);
  v72 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v82 = &v64 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD738);
  MEMORY[0x28223BE20](v14 - 8);
  v67 = &v64 - v15;
  v16 = sub_24B2D2F34();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_24B2D2D24();
  v66 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v65 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD6F0);
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v90 = &v64 - v21;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD6E8);
  v71 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v91 = &v64 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD6D8);
  v80 = *(v23 - 8);
  v81 = v23;
  MEMORY[0x28223BE20](v23);
  v77 = &v64 - v24;
  sub_24B2D5694();
  v75 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD740);
  sub_24B2D2D04();
  *(swift_allocObject() + 16) = xmmword_24B2DEAD0;
  sub_24B2D2F04();
  sub_24B2D2CE4();
  v25 = *(v17 + 8);
  v25(v19, v16);
  sub_24B2D2ED4();
  sub_24B2D2CF4();
  v25(v19, v16);
  v26 = a1 + *(type metadata accessor for CustomMapStyleToggle.MapStylePickerContainer(0) + 20);
  v27 = *v26;
  v28 = *(v26 + 8);
  v29 = *(v26 + 16);
  v30 = *(v26 + 17);
  LOBYTE(v26) = *(v26 + 18);
  v97 = v27;
  v98 = v28;
  v99 = v29;
  v100 = v30;
  v101 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD628);
  sub_24B2D4E64();
  v31 = v92;
  v32 = v93;
  v33 = v94;
  v34 = v95;
  v35 = v96;
  swift_getKeyPath();
  v97 = v31;
  v98 = v32;
  v99 = v33;
  v100 = v34;
  v101 = v35;
  sub_24B2D4E54();

  v64 = a1;
  v36 = v65;
  sub_24B2D2D14();
  v37 = sub_24B16AE5C(&qword_27EFCD6F8, MEMORY[0x277CE42C0]);
  v38 = v68;
  v67 = v37;
  sub_24B2D48B4();
  (*(v66 + 8))(v36, v38);
  sub_24B2D52E4();
  if (qword_27EFC7708 != -1)
  {
    swift_once();
  }

  v39 = v79;
  v40 = __swift_project_value_buffer(v79, qword_27EFE4550);
  (*(v76 + 16))(v78, v40, v39);
  sub_24B2D2524();
  v41 = v82;
  sub_24B2D2224();
  v43 = v84;
  v42 = v85;
  (*(v84 + 16))(v72, v41, v85);
  v44 = sub_24B2D45F4();
  v46 = v45;
  v48 = v47;
  v97 = v38;
  v98 = v67;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v50 = v90;
  v51 = v70;
  sub_24B2D4794();
  sub_24B083C34(v44, v46, v48 & 1);

  (*(v43 + 8))(v41, v42);
  (*(v69 + 8))(v50, v51);
  v53 = v86;
  v52 = v87;
  v54 = v88;
  (*(v87 + 104))(v86, *MEMORY[0x277CDDDC0], v88);
  v97 = v51;
  v98 = OpaqueTypeConformance2;
  v55 = swift_getOpaqueTypeConformance2();
  v56 = v77;
  v57 = v74;
  v58 = v91;
  sub_24B2D48A4();
  (*(v52 + 8))(v53, v54);
  v59 = (*(v71 + 8))(v58, v57);
  MEMORY[0x28223BE20](v59);
  *(&v64 - 2) = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD6E0);
  v97 = v57;
  v98 = v55;
  swift_getOpaqueTypeConformance2();
  v60 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD700);
  v61 = sub_24B16B208();
  v97 = v60;
  v98 = v61;
  swift_getOpaqueTypeConformance2();
  v62 = v81;
  sub_24B2D4994();
  (*(v80 + 8))(v56, v62);
}

void sub_24B16A26C(uint64_t a1)
{
  v2 = sub_24B2D2F34();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  sub_24B165C20(v5);
}

uint64_t sub_24B16A334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a1;
  v39 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD748);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v34 = v31 - v4;
  v5 = sub_24B2D3F54();
  MEMORY[0x28223BE20](v5 - 8);
  v31[1] = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD710);
  v33 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v32 = v31 - v7;
  v8 = sub_24B2D38A4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v31 - v13;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD700);
  MEMORY[0x28223BE20](v37);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v31 - v18;
  sub_24B2D5694();
  v36 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B163D18(v14);
  sub_24B2D3894();
  sub_24B16AE5C(&qword_27EFCD750, MEMORY[0x277CDDB20]);
  v20 = sub_24B2D52A4();
  v21 = *(v9 + 8);
  v21(v11, v8);
  v21(v14, v8);
  if (v20)
  {
    (*(v3 + 56))(v16, 1, 1, v2);
    v22 = sub_24B039184(&qword_27EFCD718, &qword_27EFCD710);
    v40 = v38;
    v41 = v22;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x24C23A760](v16, v2, OpaqueTypeConformance2);
    sub_24AFF8258(v16, &qword_27EFCD700);
  }

  else
  {
    sub_24B2D3F34();
    type metadata accessor for DismissButton();
    sub_24B16AE5C(&qword_27EFCD758, type metadata accessor for DismissButton);
    v24 = v32;
    sub_24B2D33D4();
    v25 = sub_24B039184(&qword_27EFCD718, &qword_27EFCD710);
    v26 = v34;
    v27 = v38;
    MEMORY[0x24C23A750](v24, v38, v25);
    (*(v3 + 16))(v16, v26, v2);
    (*(v3 + 56))(v16, 0, 1, v2);
    v40 = v27;
    v41 = v25;
    v28 = swift_getOpaqueTypeConformance2();
    MEMORY[0x24C23A760](v16, v2, v28);
    sub_24AFF8258(v16, &qword_27EFCD700);
    (*(v3 + 8))(v26, v2);
    (*(v33 + 8))(v24, v27);
  }

  v29 = sub_24B16B208();
  MEMORY[0x24C23A750](v19, v37, v29);
  sub_24AFF8258(v19, &qword_27EFCD700);
}

uint64_t sub_24B16A944@<X0>(uint64_t a1@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B2D32C4();
  v2 = *(type metadata accessor for DismissButton() + 20);
  *(a1 + v2) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC97E0);
  swift_storeEnumTagMultiPayload();
}

unint64_t sub_24B16AA28()
{
  result = qword_27EFCD630;
  if (!qword_27EFCD630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD618);
    sub_24B16AAB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD630);
  }

  return result;
}

unint64_t sub_24B16AAB4()
{
  result = qword_27EFCD638;
  if (!qword_27EFCD638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD610);
    sub_24B16AB6C();
    sub_24B039184(&qword_27EFC8E90, &qword_27EFC8E98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD638);
  }

  return result;
}

unint64_t sub_24B16AB6C()
{
  result = qword_27EFCD640;
  if (!qword_27EFCD640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD608);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD648);
    sub_24B2D3984();
    sub_24B039184(&qword_27EFCD650, &qword_27EFCD648);
    sub_24B16AE5C(&qword_27EFCD658, MEMORY[0x277CDDBD0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD640);
  }

  return result;
}

unint64_t sub_24B16ACB0()
{
  result = qword_27EFCD660;
  if (!qword_27EFCD660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD660);
  }

  return result;
}

uint64_t sub_24B16AD04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustomMapStyleToggle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B16AD68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustomMapStyleToggle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B16ADCC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for CustomMapStyleToggle(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24B168DE0(v4, a1);
}

uint64_t sub_24B16AE5C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24B16AEAC()
{
  result = qword_27EFCD680;
  if (!qword_27EFCD680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD678);
    sub_24B16AF64();
    sub_24B039184(&qword_27EFCBC20, &qword_27EFCBC28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD680);
  }

  return result;
}

unint64_t sub_24B16AF64()
{
  result = qword_27EFCD688;
  if (!qword_27EFCD688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD690);
    sub_24B039184(&qword_27EFC9498, &qword_27EFC9490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD688);
  }

  return result;
}

uint64_t sub_24B16B02C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD690);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_24B16B0C4()
{
  sub_24B16B190(319, &qword_27EFCD6B0, MEMORY[0x277CDDB20]);
  if (v0 <= 0x3F)
  {
    sub_24B1676A4(319, &qword_27EFCD600, &type metadata for CustomMapStyle, MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24B16B190(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24B2D3374();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_24B16B208()
{
  result = qword_27EFCD708;
  if (!qword_27EFCD708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD700);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD710);
    sub_24B039184(&qword_27EFCD718, &qword_27EFCD710);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD708);
  }

  return result;
}

unint64_t sub_24B16B2FC()
{
  result = qword_27EFCD728;
  if (!qword_27EFCD728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD6C0);
    sub_24B039184(&qword_27EFCD730, &qword_27EFCD6B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD728);
  }

  return result;
}

uint64_t sub_24B16B3BC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  a3(a1, a2);
}

uint64_t InteractiveMap.init(annotations:focusOnUserLocation:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v26 = a2;
  v25 = a1;
  v4 = sub_24B2D2DE4();
  v23 = *(v4 - 8);
  v24 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for CustomMapCameraPosition();
  MEMORY[0x28223BE20](v27);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a3 + 16) = 0;
  v9 = type metadata accessor for InteractiveMap();
  v10 = (a3 + v9[8]);
  v28 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9850);
  sub_24B2D4CC4();
  v11 = v30;
  *v10 = v29;
  v10[1] = v11;
  type metadata accessor for CustomMapStyleLoader();
  v12 = swift_allocObject();
  v13 = objc_opt_self();
  v14 = [v13 standardUserDefaults];
  v15 = sub_24B166FFC();

  if (v15 == 2)
  {
    v16 = [v13 standardUserDefaults];
    v15 = sub_24B166D7C(0);

    v17 = (v15 >> 8) & 1;
    v18 = HIWORD(v15) & 1;
  }

  else
  {
    v17 = ((v15 & 0xFFFFFF) >> 8) & 1;
    v18 = ((v15 & 0xFFFFFF) >> 16) & 1;
  }

  v19 = (a3 + v9[9]);
  v12[16] = v15 & 1;
  v12[17] = v17;
  v12[18] = v18;
  sub_24B2D25B4();
  v28 = v12;
  sub_24B2D4CC4();
  v20 = v30;
  *v19 = v29;
  v19[1] = v20;
  *a3 = v25;
  LOBYTE(v20) = v26;
  *(a3 + 8) = v26 & 1;
  if (v20)
  {
    sub_24B2D2DD4();
    sub_24B2D2D54();
    (*(v23 + 8))(v6, v24);
  }

  else
  {
    sub_24B2D2DD4();
  }

  swift_storeEnumTagMultiPayload();
  v21 = a3 + v9[7];
  sub_24B16FCAC(v8, v21, type metadata accessor for CustomMapCameraPosition);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD760);
  *(v21 + *(result + 28)) = 0;
  return result;
}

uint64_t type metadata accessor for InteractiveMap()
{
  result = qword_27EFCD7F0;
  if (!qword_27EFCD7F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t InteractiveMap.body.getter@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v2 = type metadata accessor for InteractiveMap();
  v33 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v34 = v3;
  v35 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD768);
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - v5;
  v36 = v1;
  sub_24B16BC58(&v32 - v5);
  v7 = sub_24B2D5044();
  v9 = v8;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  LOBYTE(v39) = 0;
  sub_24B2D4CC4();
  v10 = v46;
  v11 = v47;
  v12 = sub_24B2D4304();
  sub_24B2D32F4();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  LOBYTE(v46) = 0;
  *&v39 = sub_24B08402C;
  *(&v39 + 1) = 0;
  LOBYTE(v40) = 0;
  *(&v40 + 1) = v66[0];
  DWORD1(v40) = *(v66 + 3);
  BYTE8(v40) = v10;
  *(&v40 + 9) = *v65;
  HIDWORD(v40) = *&v65[3];
  *&v41 = v11;
  BYTE8(v41) = v12;
  HIDWORD(v41) = *&v64[3];
  *(&v41 + 9) = *v64;
  *&v42 = v14;
  *(&v42 + 1) = v16;
  *&v43 = v18;
  *(&v43 + 1) = v20;
  LOBYTE(v44) = 0;
  DWORD1(v44) = *&v63[3];
  v21 = *v63;
  *(&v44 + 1) = *v63;
  *(&v44 + 1) = v7;
  v45 = v9;
  v22 = &v6[*(v4 + 36)];
  v23 = v44;
  *(v22 + 4) = v43;
  *(v22 + 5) = v23;
  *(v22 + 12) = v9;
  v24 = v40;
  *v22 = v39;
  *(v22 + 1) = v24;
  v25 = v42;
  *(v22 + 2) = v41;
  *(v22 + 3) = v25;
  v46 = sub_24B08402C;
  v47 = 0;
  v48 = 0;
  *&v49[3] = *(v66 + 3);
  *v49 = v66[0];
  v50 = v10;
  *&v51[3] = *&v65[3];
  *v51 = *v65;
  v52 = v11;
  v53 = v12;
  *&v54[3] = *&v64[3];
  *v54 = *v64;
  v55 = v14;
  v56 = v16;
  v57 = v18;
  v58 = v20;
  v59 = 0;
  *&v60[3] = *&v63[3];
  *v60 = v21;
  v61 = v7;
  v62 = v9;
  sub_24B16F2D4(&v39, v38);
  sub_24AFF8258(&v46, &qword_27EFCD770);
  v26 = v35;
  v38[0] = *v36;
  sub_24B16FC44(v36, v35, type metadata accessor for InteractiveMap);
  v27 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v28 = swift_allocObject();
  sub_24B16FCAC(v26, v28 + v27, type metadata accessor for InteractiveMap);
  v29 = swift_allocObject();
  *(v29 + 16) = sub_24B16F344;
  *(v29 + 24) = v28;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_24B09289C;
  *(v30 + 24) = v29;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9850);
  sub_24B16F3E8();
  sub_24B092A60();
  sub_24B2D49B4();

  return sub_24AFF8258(v6, &qword_27EFCD768);
}

uint64_t sub_24B16BC58@<X0>(uint64_t a1@<X8>)
{
  v75 = a1;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD780);
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v73 = &v63 - v2;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD788);
  MEMORY[0x28223BE20](v72);
  v71 = &v63 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD820);
  v69 = *(v4 - 8);
  v70 = v4;
  MEMORY[0x28223BE20](v4);
  v68 = &v63 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC78B0);
  v66 = *(v6 - 8);
  v67 = v6;
  MEMORY[0x28223BE20](v6);
  v77 = &v63 - v7;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD798);
  v65 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v9 = &v63 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD7A0);
  MEMORY[0x28223BE20](v10);
  v12 = &v63 - v11;
  v78 = v1;
  sub_24B16C810(&v63 - v11);
  v13 = type metadata accessor for InteractiveMap();
  v14 = (v1 + *(v13 + 36));
  v16 = *v14;
  v15 = v14[1];
  v81 = v16;
  v82 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD828);
  sub_24B2D4CD4();
  v17 = v80;
  swift_getKeyPath();
  v81 = v17;
  sub_24B16FBFC(&qword_27EFCD5A8, type metadata accessor for CustomMapStyleLoader);
  sub_24B2D2584();

  v18 = v17[16];
  v19 = v17[17];
  v20 = v17[18];

  v21 = sub_24B2D2F34();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v20)
  {
    v25 = 0x10000;
  }

  else
  {
    v25 = 0;
  }

  if (v19)
  {
    v26 = 256;
  }

  else
  {
    v26 = 0;
  }

  sub_24B165990(v26 | v18 | v25, v24);
  v27 = sub_24B16F6E4();
  sub_24B2D4664();
  (*(v22 + 8))(v24, v21);
  sub_24AFF8258(v12, &qword_27EFCD7A0);
  v28 = v78;
  v79 = v78;
  sub_24B2D3014();
  v81 = v10;
  v82 = v27;
  swift_getOpaqueTypeConformance2();
  sub_24B16FBFC(&qword_27EFCD7D0, MEMORY[0x277CE4320]);
  v29 = v64;
  sub_24B2D4624();
  v30 = (v65[1])(v9, v29);
  v31 = *(v13 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  sub_24B16FC44(v28, &v63 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InteractiveMap);
  sub_24B2D5694();
  v33 = sub_24B2D5684();
  v34 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v35 = swift_allocObject();
  v36 = MEMORY[0x277D85700];
  *(v35 + 16) = v33;
  *(v35 + 24) = v36;
  sub_24B16FCAC(&v63 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), v35 + v34, type metadata accessor for InteractiveMap);
  v37 = sub_24B2D56D4();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  v40 = (v39 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_24B2D56A4();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v64 = sub_24B2D3714();
    v65 = &v63;
    v63 = *(v64 - 8);
    MEMORY[0x28223BE20](v64);
    v42 = &v63 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
    v81 = 0;
    v82 = 0xE000000000000000;
    sub_24B2D5C34();

    v81 = 0xD00000000000002ELL;
    v82 = 0x800000024B2DC190;
    v80 = 107;
    v43 = sub_24B2D5FA4();
    MEMORY[0x24C23BC10](v43);

    v45 = MEMORY[0x28223BE20](v44);
    (*(v38 + 16))(&v63 - v40, &v63 - v40, v37, v45);
    sub_24B2D3704();
    (*(v38 + 8))(&v63 - v40, v37);
    v46 = v68;
    (*(v66 + 32))(v68, v77, v67);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC78B8);
    v48 = (*(v63 + 32))(&v46[*(v47 + 36)], v42, v64);
  }

  else
  {
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC78C0);
    v46 = v68;
    v50 = &v68[*(v49 + 36)];
    v51 = sub_24B2D35A4();
    (*(v38 + 32))(&v50[*(v51 + 20)], &v63 - v40, v37);
    *v50 = &unk_24B2EE760;
    *(v50 + 1) = v35;
    v48 = (*(v66 + 32))(v46, v77, v67);
  }

  MEMORY[0x28223BE20](v48);
  *(&v63 - 2) = v78;
  v52 = sub_24B2D5034();
  v54 = v53;
  v56 = v71;
  v55 = v72;
  v57 = &v71[*(v72 + 36)];
  sub_24B16EF58(sub_24B16FB30, v57);
  v58 = (v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD7E0) + 36));
  *v58 = v52;
  v58[1] = v54;
  (*(v69 + 32))(v56, v46, v70);
  v59 = sub_24B16F520();
  v60 = v73;
  sub_24B2D4634();
  sub_24AFF8258(v56, &qword_27EFCD788);
  sub_24B2D5134();
  v81 = v55;
  v82 = v59;
  swift_getOpaqueTypeConformance2();
  v61 = v76;
  sub_24B2D4654();
  return (*(v74 + 8))(v60, v61);
}

uint64_t sub_24B16C714(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) && *(a2 + 16))
  {
    v2 = sub_24B2D50C4();
    MEMORY[0x28223BE20](v2);
    sub_24B2D35C4();
  }

  else
  {
    type metadata accessor for InteractiveMap();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9888);
    return sub_24B2D4CE4();
  }
}

uint64_t sub_24B16C810@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = type metadata accessor for InteractiveMap();
  v28 = *(v2 - 8);
  v3 = *(v28 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD868);
  MEMORY[0x28223BE20](v33);
  v31 = (v27 - v4);
  v29 = sub_24B2D2E24();
  v27[1] = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v30 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9800);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v27 - v7;
  v9 = sub_24B2D2DE4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD7B8);
  MEMORY[0x28223BE20](v32);
  v16 = v27 - v15;
  if (*(v1 + 8) == 1)
  {
    v28 = v14;
    sub_24B2D2DD4();
    sub_24B2D2D54();
    (*(v10 + 8))(v12, v9);
    v17 = sub_24B2D2D44();
    v18 = *(*(v17 - 8) + 56);
    v27[0] = v8;
    v18(v8, 1, 1, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA0B0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_24B2DE430;
    sub_24B2D2DF4();
    v35 = v19;
    sub_24B16FBFC(&qword_27EFC9818, MEMORY[0x277CE42D0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9820);
    sub_24B039184(&qword_27EFC9828, &qword_27EFC9820);
    sub_24B2D5B44();
    v20 = sub_24B2D5134();
    MEMORY[0x28223BE20](v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD870);
    sub_24B039184(&qword_27EFCD878, &qword_27EFCD870);
    sub_24B2D2C84();
    v21 = v28;
    v22 = v32;
    (*(v28 + 16))(v31, v16, v32);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD7C8);
    sub_24B039184(&qword_27EFCD7B0, &qword_27EFCD7B8);
    sub_24B039184(&qword_27EFCD7C0, &qword_27EFCD7C8);
    sub_24B2D3ED4();
    return (*(v21 + 8))(v16, v22);
  }

  else
  {
    sub_24B16FC44(v1, v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InteractiveMap);
    v24 = (*(v28 + 80) + 16) & ~*(v28 + 80);
    v25 = swift_allocObject();
    sub_24B16FCAC(v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for InteractiveMap);
    v26 = v31;
    *v31 = sub_24B16FB38;
    v26[1] = v25;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD7C8);
    sub_24B039184(&qword_27EFCD7B0, &qword_27EFCD7B8);
    sub_24B039184(&qword_27EFCD7C0, &qword_27EFCD7C8);
    return sub_24B2D3ED4();
  }
}

double sub_24B16CF54@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a2;
  v43 = a1;
  v41 = a3;
  v38 = sub_24B2D2E24();
  v35 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v40 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9800);
  MEMORY[0x28223BE20](v4 - 8);
  v39 = v33 - v5;
  v6 = sub_24B2D3524();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = type metadata accessor for InteractiveMap();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA058);
  MEMORY[0x28223BE20](v13 - 8);
  v36 = v33 - v14;
  v15 = sub_24B2D5694();
  v37 = sub_24B2D5684();
  v16 = v15;
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v34 = type metadata accessor for InteractiveMap;
  v17 = v42;
  sub_24B16FC44(v42, v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InteractiveMap);
  (*(v7 + 16))(v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v43, v6);
  v33[2] = v16;
  v18 = sub_24B2D5684();
  v19 = *(v10 + 80);
  v20 = v17;
  v21 = (v19 + 32) & ~v19;
  v33[0] = v6;
  v33[1] = v19 | 7;
  v22 = (v21 + v11 + *(v7 + 80)) & ~*(v7 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v18;
  *(v23 + 24) = MEMORY[0x277D85700];
  sub_24B16FCAC(v12, v23 + v21, type metadata accessor for InteractiveMap);
  (*(v7 + 32))(v23 + v22, v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v33[0]);
  sub_24B16FC44(v20, v12, v34);
  v24 = sub_24B2D5684();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = MEMORY[0x277D85700];
  sub_24B16FCAC(v12, v25 + v21, type metadata accessor for InteractiveMap);
  sub_24B2D2DE4();
  sub_24B2D4E74();
  v26 = sub_24B2D2D44();
  (*(*(v26 - 8) + 56))(v39, 1, 1, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA0B0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_24B2DE430;
  sub_24B2D2DF4();
  *&v44 = v27;
  sub_24B16FBFC(&qword_27EFC9818, MEMORY[0x277CE42D0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9820);
  sub_24B039184(&qword_27EFC9828, &qword_27EFC9820);
  sub_24B2D5B44();
  v28 = sub_24B2D5134();
  MEMORY[0x28223BE20](v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD870);
  sub_24B039184(&qword_27EFCD878, &qword_27EFCD870);
  v29 = v41;
  sub_24B2D2CA4();
  sub_24B2D3514();
  sub_24B2D3514();
  sub_24B2D5064();
  sub_24B2D3494();

  v30 = (v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD898) + 36));
  v31 = v45;
  *v30 = v44;
  v30[1] = v31;
  result = v46[0];
  v30[2] = *v46;
  return result;
}

uint64_t sub_24B16D600@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CustomMapCameraPosition();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = type metadata accessor for InteractiveMap();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD760);
  sub_24B2D4CD4();
  v8 = (a1 + *(v7 + 32));
  v10 = *v8;
  v9 = v8[1];
  v17[2] = v10;
  v17[3] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9888);
  sub_24B2D4CD4();
  v11 = v17[1];
  sub_24B2D3514();
  sub_24B2D3504();
  sub_24B161810(v11, a2, v12, v13, v14, v15);

  sub_24B16FD14(v6, type metadata accessor for CustomMapCameraPosition);
}

uint64_t sub_24B16D7CC(uint64_t a1)
{
  v2 = type metadata accessor for CustomMapCameraPosition();
  MEMORY[0x28223BE20](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - v6;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = sub_24B2D2DE4();
  (*(*(v8 - 8) + 16))(v7, a1, v8);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for InteractiveMap();
  sub_24B16FC44(v7, v4, type metadata accessor for CustomMapCameraPosition);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD760);
  sub_24B2D4CE4();
  sub_24B16FD14(v7, type metadata accessor for CustomMapCameraPosition);
}

uint64_t sub_24B16D994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, char *, uint64_t)@<X3>, char *a5@<X8>)
{
  v46 = a4;
  v42 = a3;
  v38[1] = a2;
  v48 = a5;
  v6 = type metadata accessor for InteractiveMap();
  v40 = *(v6 - 8);
  v7 = *(v40 + 64);
  MEMORY[0x28223BE20](v6);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD880);
  v44 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v45 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v49 = v38 - v10;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9898);
  v11 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v38 - v15;
  sub_24B2D5694();
  v43 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B2D3034();
  v17 = (a1 + *(v6 + 32));
  v19 = *v17;
  v18 = v17[1];
  v50 = v19;
  v51 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9888);
  sub_24B2D4CD4();
  sub_24B16FC44(a1, v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InteractiveMap);
  v20 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v21 = swift_allocObject();
  sub_24B16FCAC(v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for InteractiveMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9850);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD888);
  sub_24B039184(&qword_27EFC98A8, &qword_27EFC9850);
  v22 = type metadata accessor for AnnotationContent();
  v23 = sub_24B16FBFC(&qword_27EFC98B0, type metadata accessor for AnnotationContent);
  v39 = v16;
  v50 = v22;
  v51 = MEMORY[0x277D837D0];
  v52 = v23;
  v53 = MEMORY[0x277D837E0];
  swift_getOpaqueTypeConformance2();
  sub_24B16FBFC(&qword_27EFC98B8, type metadata accessor for Annotation);
  v24 = v49;
  sub_24B2D4EC4();
  v25 = *(v11 + 16);
  v26 = v13;
  v27 = v13;
  v28 = v41;
  v25(v27, v16, v41);
  v30 = v44;
  v29 = v45;
  v46 = *(v44 + 16);
  v31 = v24;
  v32 = v47;
  v46(v45, v31, v47);
  v33 = v48;
  v25(v48, v26, v28);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD890);
  v46(&v33[*(v34 + 48)], v29, v32);
  v35 = *(v30 + 8);
  v35(v49, v32);
  v36 = *(v11 + 8);
  v36(v39, v28);
  v35(v29, v32);
  v36(v26, v28);
}

uint64_t sub_24B16DF04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a3;
  v5 = type metadata accessor for Annotation();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AnnotationContent();
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B16FC44(a1, v7, type metadata accessor for Annotation);
  v11 = (a2 + *(type metadata accessor for InteractiveMap() + 32));
  v13 = v11[1];
  v23 = *v11;
  v12 = v23;
  v24 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9888);
  sub_24B2D4CD4();
  v14 = *(v22 + 16);

  v15 = v14 < 2;
  v23 = v12;
  v24 = v13;
  sub_24B2D4CD4();
  v16 = *(v22 + 16);

  sub_24B16FCAC(v7, v10, type metadata accessor for Annotation);
  v10[v8[5]] = v15;
  v10[v8[6]] = v16 < 2;
  v10[v8[7]] = 0;
  v17 = v8[8];
  sub_24B2D4A84();
  v18 = sub_24B2D4B44();

  *&v10[v17] = v18;
  v19 = a1[1];
  v23 = *a1;
  v24 = v19;
  sub_24B16FBFC(&qword_27EFC98B0, type metadata accessor for AnnotationContent);
  sub_24B2D2FF4();
  sub_24B16FD14(v10, type metadata accessor for AnnotationContent);
}

uint64_t sub_24B16E1C4()
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B2D5134();
  sub_24B2D3E04();
  sub_24B2D3004();
}

uint64_t sub_24B16E284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = sub_24B2D5D64();
  v3[3] = v4;
  v3[4] = *(v4 - 8);
  v3[5] = swift_task_alloc();
  v3[6] = type metadata accessor for CustomMapCameraPosition();
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  sub_24B2D5694();
  v3[9] = sub_24B2D5684();
  v6 = sub_24B2D5604();
  v3[10] = v6;
  v3[11] = v5;

  return MEMORY[0x2822009F8](sub_24B16E3B4, v6, v5);
}

uint64_t sub_24B16E3B4()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  *(v0 + 112) = *(type metadata accessor for InteractiveMap() + 28);
  *(v0 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD760);
  sub_24B2D4CD4();
  sub_24B2D2DD4();
  swift_storeEnumTagMultiPayload();
  v3 = sub_24B161F90(v1, v2);
  sub_24B16FD14(v2, type metadata accessor for CustomMapCameraPosition);
  sub_24B16FD14(v1, type metadata accessor for CustomMapCameraPosition);
  if (v3)
  {
    sub_24B2D6084();
    v4 = swift_task_alloc();
    *(v0 + 104) = v4;
    *v4 = v0;
    v4[1] = sub_24B16E584;

    return sub_24B09A030(10000000000000000, 0, 0, 0, 1);
  }

  else
  {

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_24B16E584()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[5];
  v5 = v2[4];
  v6 = v2[3];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[10];
    v8 = v3[11];
    v9 = sub_24B170270;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[10];
    v8 = v3[11];
    v9 = sub_24B16E718;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_24B16E718()
{
  v1 = v0[8];
  v2 = v0[7];

  swift_storeEnumTagMultiPayload();
  sub_24B16FC44(v1, v2, type metadata accessor for CustomMapCameraPosition);
  sub_24B2D4CE4();
  sub_24B16FD14(v1, type metadata accessor for CustomMapCameraPosition);

  v3 = v0[1];

  return v3();
}

uint64_t sub_24B16E810@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v54 = a1;
  v57 = a2;
  v3 = sub_24B2D2F94();
  v68 = *(v3 - 8);
  v69 = v3;
  MEMORY[0x28223BE20](v3);
  v66 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v62 = &v52 - v6;
  v56 = sub_24B2D2CD4();
  v67 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v63 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v60 = &v52 - v9;
  v10 = sub_24B2D2E44();
  v64 = *(v10 - 8);
  v65 = v10;
  MEMORY[0x28223BE20](v10);
  v61 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v58 = &v52 - v13;
  v14 = type metadata accessor for CustomMapStyleToggle(0);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v59 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v52 - v18;
  v20 = a1 + *(type metadata accessor for InteractiveMap() + 36);
  v22 = *v20;
  v21 = *(v20 + 1);
  v73 = v22;
  v74 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD828);
  sub_24B2D4CF4();
  v23 = v78;
  v24 = v79;
  v25 = v80;
  swift_getKeyPath();
  v78 = v23;
  v79 = v24;
  v80 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD858);
  sub_24B2D4E54();

  v26 = v73;
  v27 = v74;
  v28 = v75;
  v29 = v76;
  LODWORD(v53) = v77;

  v30 = sub_24B2D5134();
  v70 = 0;
  sub_24B2D4CC4();
  v31 = v72;
  v19[24] = v71;
  *(v19 + 4) = v31;
  v32 = *(v15 + 32);
  *&v19[v32] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD4E0);
  swift_storeEnumTagMultiPayload();
  *v19 = v26;
  *(v19 + 1) = v27;
  v19[16] = v28;
  v19[17] = v29;
  v19[18] = v53;
  *&v19[*(v15 + 36)] = v30;
  v55 = v19;
  sub_24B2D5134();
  v33 = v58;
  sub_24B2D2E34();
  sub_24B2D5134();
  v34 = v60;
  sub_24B2D2CC4();
  sub_24B2D5134();
  v35 = v62;
  sub_24B2D2F84();
  v52 = type metadata accessor for CustomMapStyleToggle;
  v36 = v59;
  sub_24B16FC44(v19, v59, type metadata accessor for CustomMapStyleToggle);
  v54 = *(v64 + 16);
  v37 = v61;
  v54(v61, v33, v65);
  v53 = *(v67 + 16);
  v38 = v63;
  v39 = v56;
  v53(v63, v34, v56);
  v40 = *(v68 + 16);
  v41 = v66;
  v40(v66, v35, v69);
  v42 = v57;
  sub_24B16FC44(v36, v57, v52);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD860);
  v44 = v37;
  v45 = v65;
  v54((v42 + v43[12]), v44, v65);
  v53((v42 + v43[16]), v38, v39);
  v46 = v42 + v43[20];
  v47 = v69;
  v40(v46, v41, v69);
  v48 = *(v68 + 8);
  v48(v62, v47);
  v49 = *(v67 + 8);
  v49(v60, v39);
  v50 = *(v64 + 8);
  v50(v58, v45);
  sub_24B16FD14(v55, type metadata accessor for CustomMapStyleToggle);
  v48(v66, v69);
  v49(v63, v39);
  v50(v61, v45);
  return sub_24B16FD14(v59, type metadata accessor for CustomMapStyleToggle);
}

uint64_t sub_24B16EE64()
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for InteractiveMap();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9888);
  sub_24B2D4CE4();
}

uint64_t sub_24B16EF58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22[0] = a1;
  v3 = sub_24B2D3DE4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD830);
  MEMORY[0x28223BE20](v7);
  v9 = v22 - v8;
  sub_24B2D5694();
  v22[1] = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v9 = sub_24B2D3DF4();
  *(v9 + 1) = 0;
  v9[16] = 1;
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD838);
  (v22[0])(v10);

  sub_24B2D3DD4();
  sub_24B039184(&qword_27EFCD840, &qword_27EFCD830);
  sub_24B16FBFC(&qword_27EFCAFA0, MEMORY[0x277CDDEE0]);
  sub_24B2D46D4();
  (*(v4 + 8))(v6, v3);
  sub_24AFF8258(v9, &qword_27EFCD830);
  v11 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD848) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8E10);
  sub_24B2D3934();
  *v11 = swift_getKeyPath();
  LOBYTE(v11) = sub_24B2D42F4();
  sub_24B2D32F4();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD850);
  v21 = a2 + *(result + 36);
  *v21 = v11;
  *(v21 + 8) = v13;
  *(v21 + 16) = v15;
  *(v21 + 24) = v17;
  *(v21 + 32) = v19;
  *(v21 + 40) = 0;
  return result;
}

uint64_t sub_24B16F2D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD770);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B16F3E8()
{
  result = qword_27EFCD778;
  if (!qword_27EFCD778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD768);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD780);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD788);
    sub_24B16F520();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24B039184(&qword_27EFCD7E8, &qword_27EFCD770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD778);
  }

  return result;
}

unint64_t sub_24B16F520()
{
  result = qword_27EFCD790;
  if (!qword_27EFCD790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD788);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC78B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD798);
    sub_24B2D3014();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD7A0);
    sub_24B16F6E4();
    swift_getOpaqueTypeConformance2();
    sub_24B16FBFC(&qword_27EFCD7D0, MEMORY[0x277CE4320]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24B039184(&qword_27EFCD7D8, &qword_27EFCD7E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD790);
  }

  return result;
}

unint64_t sub_24B16F6E4()
{
  result = qword_27EFCD7A8;
  if (!qword_27EFCD7A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD7A0);
    sub_24B039184(&qword_27EFCD7B0, &qword_27EFCD7B8);
    sub_24B039184(&qword_27EFCD7C0, &qword_27EFCD7C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD7A8);
  }

  return result;
}

void sub_24B16F80C()
{
  sub_24B16F9CC(319, &qword_27EFCD800, type metadata accessor for Annotation, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_24B16F9CC(319, &qword_27EFCD808, type metadata accessor for CustomMapCameraPosition, MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_24B16F968();
      if (v2 <= 0x3F)
      {
        sub_24B16F9CC(319, &qword_27EFCD818, type metadata accessor for CustomMapStyleLoader, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24B16F968()
{
  if (!qword_27EFCD810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9850);
    v0 = sub_24B2D4D04();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFCD810);
    }
  }
}

void sub_24B16F9CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24B16FA54()
{
  v2 = *(type metadata accessor for InteractiveMap() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24AFFD370;

  return sub_24B16E284(v4, v5, v0 + v3);
}

double sub_24B16FB38@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for InteractiveMap() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24B16CF54(a1, v6, a2);
}

uint64_t sub_24B16FBFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B16FC44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B16FCAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B16FD14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B16FD74@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InteractiveMap() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  sub_24B2D3524();

  return sub_24B16D600(v1 + v4, a1);
}

uint64_t objectdestroy_16Tm_0()
{
  v1 = type metadata accessor for InteractiveMap();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3 + *(v1 + 28);
  type metadata accessor for CustomMapCameraPosition();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v7 = sub_24B2D2DE4();
    (*(*(v7 - 8) + 8))(v5, v7);
  }

  else if (!EnumCaseMultiPayload)
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD760);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24B16FFC8(uint64_t a1)
{
  type metadata accessor for InteractiveMap();

  return sub_24B16D7CC(a1);
}

uint64_t objectdestroyTm_20()
{
  v1 = type metadata accessor for InteractiveMap();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3 + *(v1 + 28);
  type metadata accessor for CustomMapCameraPosition();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v7 = sub_24B2D2DE4();
    (*(*(v7 - 8) + 8))(v5, v7);
  }

  else if (!EnumCaseMultiPayload)
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD760);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t keypath_get_6Tm@<X0>(void (*a1)(void)@<X3>, _BYTE *a2@<X8>)
{
  a1();
  result = sub_24B2D3C74();
  *a2 = v4;
  return result;
}

uint64_t sub_24B1703A0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B1793FC(&qword_27EFCD5A8, type metadata accessor for CustomMapStyleLoader);
  sub_24B2D2584();

  v5 = v3[17];
  v6 = v3[18];
  *a2 = v3[16];
  a2[1] = v5;
  a2[2] = v6;
  return result;
}

uint64_t sub_24B170458(unsigned __int8 *a1)
{
  if (a1[2])
  {
    v1 = 0x10000;
  }

  else
  {
    v1 = 0;
  }

  if (a1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_24B1655AC(v2 | *a1 | v1);
}

uint64_t sub_24B1704A8()
{
  v1 = sub_24B2D3C64();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for InteractiveMapV2() + 56);
  result = *v5;
  v7 = *(v5 + 8);
  if (*(v5 + 9) != 1)
  {
    v8 = *v5;

    sub_24B2D5924();
    v9 = sub_24B2D42A4();
    sub_24B2D3154();

    sub_24B2D3C54();
    swift_getAtKeyPath();
    sub_24B177594(v8, v7, 0);
    (*(v2 + 8))(v4, v1);
    return v10;
  }

  return result;
}

uint64_t sub_24B170614()
{
  v1 = sub_24B2D3C64();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for InteractiveMapV2() + 60);
  result = *v5;
  v7 = *(v5 + 8);
  if (*(v5 + 9) != 1)
  {
    v8 = *v5;

    sub_24B2D5924();
    v9 = sub_24B2D42A4();
    sub_24B2D3154();

    sub_24B2D3C54();
    swift_getAtKeyPath();
    sub_24B177594(v8, v7, 0);
    (*(v2 + 8))(v4, v1);
    return v10;
  }

  return result;
}

uint64_t sub_24B170780()
{
  v1 = sub_24B2D3C64();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for InteractiveMapV2() + 64);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_24B2D5924();
    v7 = sub_24B2D42A4();
    sub_24B2D3154();

    sub_24B2D3C54();
    swift_getAtKeyPath();
    sub_24AFEFDB8(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[15];
  }

  return v6;
}

uint64_t sub_24B1708D8()
{
  v1 = sub_24B2D3C64();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for InteractiveMapV2() + 68);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_24B2D5924();
    v7 = sub_24B2D42A4();
    sub_24B2D3154();

    sub_24B2D3C54();
    swift_getAtKeyPath();
    sub_24AFEFDB8(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[15];
  }

  return v6;
}

uint64_t InteractiveMapV2.init(initialCameraPosition:annotations:focusedAnnotations:selectedAnnotation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v46 = a3;
  v47 = a4;
  v44 = a1;
  v45 = a2;
  v6 = sub_24B2D2DE4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - v11;
  *a5 = 0;
  v13 = type metadata accessor for InteractiveMapV2();
  v14 = a5 + v13[8];
  sub_24B2D2DD4();
  (*(v7 + 16))(v9, v12, v6);
  v43 = v14;
  sub_24B2D4CC4();
  (*(v7 + 8))(v12, v6);
  v15 = a5 + v13[9];
  v48 = 0uLL;
  LOBYTE(v49) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8A0);
  sub_24B2D4CC4();
  v16 = v51;
  v17 = *(&v51 + 1);
  *v15 = v50;
  v15[16] = v16;
  *(v15 + 3) = v17;
  type metadata accessor for CustomMapStyleLoader();
  v18 = swift_allocObject();
  v19 = objc_opt_self();
  v20 = [v19 standardUserDefaults];
  v21 = sub_24B166FFC();

  if (v21 == 2)
  {
    v22 = [v19 standardUserDefaults];
    v21 = sub_24B166D7C(0);

    v23 = (v21 >> 8) & 1;
    v24 = HIWORD(v21) & 1;
  }

  else
  {
    v23 = ((v21 & 0xFFFFFF) >> 8) & 1;
    v24 = ((v21 & 0xFFFFFF) >> 16) & 1;
  }

  v25 = (a5 + v13[10]);
  v18[16] = v21 & 1;
  v18[17] = v23;
  v18[18] = v24;
  sub_24B2D25B4();
  *&v48 = v18;
  sub_24B2D4CC4();
  v26 = *(&v50 + 1);
  *v25 = v50;
  v25[1] = v26;
  v27 = a5 + v13[11];
  v28 = *(MEMORY[0x277CD4BB0] + 16);
  v48 = *MEMORY[0x277CD4BB0];
  v49 = v28;
  type metadata accessor for MKMapRect(0);
  sub_24B2D4CC4();
  v29 = v52;
  v30 = v51;
  *v27 = v50;
  *(v27 + 1) = v30;
  *(v27 + 4) = v29;
  v31 = a5 + v13[12];
  LOBYTE(v48) = 1;
  sub_24B2D4CC4();
  v32 = *(&v50 + 1);
  *v31 = v50;
  *(v31 + 1) = v32;
  v33 = a5 + v13[13];
  LOBYTE(v48) = 0;
  sub_24B2D4CC4();
  v34 = *(&v50 + 1);
  *v33 = v50;
  *(v33 + 1) = v34;
  v35 = a5 + v13[14];
  *v35 = swift_getKeyPath();
  *(v35 + 4) = 0;
  v36 = a5 + v13[15];
  *v36 = swift_getKeyPath();
  *(v36 + 4) = 0;
  v37 = a5 + v13[16];
  *v37 = swift_getKeyPath();
  v37[8] = 0;
  v38 = a5 + v13[17];
  *v38 = swift_getKeyPath();
  v38[8] = 0;
  v39 = v43;
  sub_24AFF8258(v43, &qword_27EFCA028);
  *(v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA028) + 28)) = 0;
  (*(v7 + 32))(v39, v44, v6);
  v40 = v46;
  a5[1] = v45;
  a5[2] = v40;
  return sub_24B0391CC(v47, a5 + v13[7], &qword_27EFCD8A8);
}

uint64_t type metadata accessor for InteractiveMapV2()
{
  result = qword_27EFCD9C8;
  if (!qword_27EFCD9C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t InteractiveMapV2.body.getter@<X0>(uint64_t a1@<X8>)
{
  v94 = a1;
  v2 = type metadata accessor for InteractiveMapV2();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v89 = v2 - 8;
  MEMORY[0x28223BE20](v2 - 8);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8B0);
  MEMORY[0x28223BE20](v96);
  v6 = &v76 - v5;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8B8);
  v80 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v8 = &v76 - v7;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8C0);
  v82 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v78 = &v76 - v9;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8C8);
  v84 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v99 = &v76 - v10;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8D0);
  v88 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v98 = &v76 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8D8);
  v13 = *(v12 - 8);
  v90 = v12;
  v91 = v13;
  MEMORY[0x28223BE20](v12);
  v85 = &v76 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8E0);
  v92 = *(v15 - 8);
  v93 = v15;
  MEMORY[0x28223BE20](v15);
  v86 = &v76 - v16;
  v104 = v1;
  sub_24B171A7C(v8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8A8);
  MEMORY[0x24C23B610](v17);
  v100 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for InteractiveMapV2;
  sub_24B179024(v1, v100, type metadata accessor for InteractiveMapV2);
  v102 = *(v3 + 80);
  v103 = v4;
  v18 = (v102 + 16) & ~v102;
  v19 = swift_allocObject();
  v97 = type metadata accessor for InteractiveMapV2;
  sub_24B178FBC(&v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for InteractiveMapV2);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_24B1775A0;
  *(v20 + 24) = v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD8E8);
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD8F0);
  v23 = sub_24B177624();
  v107 = v22;
  v108 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v107 = v21;
  v108 = OpaqueTypeConformance2;
  v77 = swift_getOpaqueTypeConformance2();
  v25 = sub_24B177A3C();
  v26 = v79;
  v27 = v96;
  sub_24B2D4844();

  sub_24AFF8258(v6, &qword_27EFCD8B0);
  (*(v80 + 8))(v8, v26);
  v105 = *(v104 + 8);
  v28 = v105;
  v29 = v100;
  v30 = v101;
  sub_24B179024(v104, v100, v101);
  v95 = v18;
  v31 = swift_allocObject();
  sub_24B178FBC(v29, v31 + v18, type metadata accessor for InteractiveMapV2);
  v32 = swift_allocObject();
  *(v32 + 16) = sub_24B177AF0;
  *(v32 + 24) = v31;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_24B177B64;
  *(v33 + 24) = v32;

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD988);
  v107 = v26;
  v108 = v27;
  v109 = v77;
  v110 = v25;
  v96 = MEMORY[0x277CE0DB8];
  v35 = swift_getOpaqueTypeConformance2();
  v36 = sub_24B177BB8();
  v37 = v81;
  v38 = v34;
  v39 = v78;
  sub_24B2D4844();
  v80 = v28;

  (*(v82 + 8))(v39, v37);
  v105 = *(v104 + 16);
  v40 = v100;
  sub_24B179024(v104, v100, v30);
  v41 = v95;
  v42 = swift_allocObject();
  sub_24B178FBC(v40, v42 + v41, v97);
  v43 = swift_allocObject();
  *(v43 + 16) = sub_24B177C6C;
  *(v43 + 24) = v42;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_24B177CF4;
  *(v44 + 24) = v43;

  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD998);
  v107 = v37;
  v108 = v38;
  v109 = v35;
  v110 = v36;
  v46 = swift_getOpaqueTypeConformance2();
  v47 = sub_24B039184(&qword_27EFCD9A0, &qword_27EFCD998);
  v48 = v99;
  v49 = v83;
  sub_24B2D4844();

  (*(v84 + 8))(v48, v49);
  v50 = v104;
  v105 = sub_24B1704A8();
  v106 = v51 & 1;
  v52 = v100;
  sub_24B179024(v50, v100, v101);
  v53 = v95;
  v54 = swift_allocObject();
  v55 = v97;
  sub_24B178FBC(v52, v54 + v53, v97);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC8498);
  v107 = v49;
  v108 = v45;
  v109 = v46;
  v110 = v47;
  v57 = swift_getOpaqueTypeConformance2();
  v58 = sub_24B177DA8();
  v59 = v85;
  v60 = v87;
  v61 = v98;
  sub_24B2D49C4();

  (*(v88 + 8))(v61, v60);
  v62 = v104;
  v105 = sub_24B170614();
  v106 = v63 & 1;
  sub_24B179024(v62, v52, v101);
  v64 = v86;
  v65 = swift_allocObject();
  sub_24B178FBC(v52, v65 + v53, v55);
  v107 = v60;
  v108 = v56;
  v109 = v57;
  v110 = v58;
  swift_getOpaqueTypeConformance2();
  v66 = v64;
  v67 = v90;
  sub_24B2D49B4();

  (*(v91 + 8))(v59, v67);
  v68 = sub_24B2D50C4();
  v69 = (v104 + *(v89 + 56));
  v70 = *v69;
  v71 = *(v69 + 1);
  LOBYTE(v107) = v70;
  v108 = v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC92E8);
  sub_24B2D4CD4();
  v72 = 0;
  if ((v105 & 1) == 0)
  {
  }

  v73 = v94;
  (*(v92 + 32))(v94, v66, v93);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD9B0);
  v75 = (v73 + *(result + 36));
  *v75 = v68;
  v75[1] = v72;
  return result;
}

uint64_t sub_24B171A7C@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v2 = sub_24B2D2F34();
  v66 = *(v2 - 8);
  v67 = v2;
  MEMORY[0x28223BE20](v2);
  v62 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for InteractiveMapV2();
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v55 = sub_24B2D2E84();
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD920);
  MEMORY[0x28223BE20](v53);
  v11 = &v51 - v10;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD918);
  v58 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v52 = &v51 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD910);
  v14 = *(v13 - 8);
  v59 = v13;
  v60 = v14;
  MEMORY[0x28223BE20](v13);
  v56 = &v51 - v15;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8F0);
  MEMORY[0x28223BE20](v63);
  v17 = &v51 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8E8);
  v19 = *(v18 - 8);
  v64 = v18;
  v65 = v19;
  MEMORY[0x28223BE20](v18);
  v61 = &v51 - v20;
  sub_24B1731D0(v11);
  sub_24B2D2E74();
  v21 = v1;
  sub_24B179024(v1, &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InteractiveMapV2);
  v22 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v23 = swift_allocObject();
  sub_24B178FBC(&v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for InteractiveMapV2);
  v24 = sub_24B1778A0();
  v25 = v53;
  sub_24B2D4614();

  (*(v54 + 8))(v9, v55);
  sub_24AFF8258(v11, &qword_27EFCD920);
  v26 = (v21 + *(v5 + 48));
  v28 = *v26;
  v27 = v26[1];
  v73 = v28;
  v74 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD828);
  sub_24B2D4CD4();
  v29 = v72;
  swift_getKeyPath();
  v73 = v29;
  sub_24B1793FC(&qword_27EFCD5A8, type metadata accessor for CustomMapStyleLoader);
  sub_24B2D2584();

  v30 = v29[16];
  v31 = v29[17];
  LODWORD(v5) = v29[18];

  if (v5)
  {
    v32 = 0x10000;
  }

  else
  {
    v32 = 0;
  }

  if (v31)
  {
    v33 = 256;
  }

  else
  {
    v33 = 0;
  }

  v34 = v62;
  sub_24B165990(v33 | v30 | v32, v62);
  v73 = v25;
  v74 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = v56;
  v37 = v57;
  v38 = v52;
  sub_24B2D4664();
  (*(v66 + 8))(v34, v67);
  (*(v58 + 8))(v38, v37);
  v71 = v21;
  sub_24B2D3014();
  v73 = v37;
  v74 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_24B1793FC(&qword_27EFCD7D0, MEMORY[0x277CE4320]);
  v39 = v59;
  sub_24B2D4624();
  (*(v60 + 8))(v36, v39);
  v70 = v21;
  v40 = sub_24B2D5034();
  v42 = v41;
  v43 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD908) + 36)];
  sub_24B175DF0(sub_24B178C90, v69, v43);
  v44 = (v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD968) + 36));
  *v44 = v40;
  v44[1] = v42;
  v45 = sub_24B1750DC();
  v46 = v63;
  v17[*(v63 + 36)] = v45 & 1;
  v47 = sub_24B177624();
  v48 = v61;
  sub_24B2D4634();
  sub_24AFF8258(v17, &qword_27EFCD8F0);
  sub_24B2D5134();
  v73 = v46;
  v74 = v47;
  swift_getOpaqueTypeConformance2();
  v49 = v64;
  sub_24B2D4654();
  return (*(v65 + 8))(v48, v49);
}

uint64_t sub_24B1722C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  v5 = sub_24B2D1974();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDA30);
  MEMORY[0x28223BE20](v12);
  v33 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - v15;
  v30 = v17;
  v31 = a1;
  v18 = *(v17 + 48);
  sub_24B008890(a1, &v28 - v15, &qword_27EFCD8B0);
  v32 = a2;
  sub_24B008890(a2, &v16[v18], &qword_27EFCD8B0);
  v19 = *(v6 + 48);
  if (v19(v16, 1, v5) == 1)
  {
    if (v19(&v16[v18], 1, v5) == 1)
    {
      return sub_24AFF8258(v16, &qword_27EFCD8B0);
    }

    goto LABEL_6;
  }

  sub_24B008890(v16, v11, &qword_27EFCD8B0);
  if (v19(&v16[v18], 1, v5) == 1)
  {
    (*(v6 + 8))(v11, v5);
LABEL_6:
    sub_24AFF8258(v16, &qword_27EFCDA30);
    v16 = v33;
    goto LABEL_7;
  }

  (*(v6 + 32))(v8, &v16[v18], v5);
  sub_24B1793FC(&qword_27EFCC7C8, MEMORY[0x277D08CF8]);
  v26 = sub_24B2D52A4();
  v27 = *(v6 + 8);
  v27(v8, v5);
  v27(v11, v5);
  result = sub_24AFF8258(v16, &qword_27EFCD8B0);
  v16 = v33;
  if (v26)
  {
    return result;
  }

LABEL_7:
  v20 = *(v30 + 48);
  sub_24B008890(v31, v16, &qword_27EFCD8B0);
  sub_24B008890(v32, &v16[v20], &qword_27EFCD8B0);
  v21 = (v19)(&v16[v20], 1, v5);
  if (v21 == 1)
  {
    result = (v19)(v16, 1, v5);
    if (result == 1)
    {
      return result;
    }

    v23 = (v29 + *(type metadata accessor for InteractiveMapV2() + 52));
    v24 = *v23;
    v25 = *(v23 + 1);
    v35 = v24;
    v36 = v25;
    v34 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC92E8);
    sub_24B2D4CE4();
  }

  else
  {
    MEMORY[0x28223BE20](v21);
    *(&v28 - 2) = v29;
    sub_24B2D3824();
    sub_24AFF8258(&v16[v20], &qword_27EFCD8B0);
  }

  return sub_24AFF8258(v16, &qword_27EFCD8B0);
}

uint64_t sub_24B17276C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  a4(a1, a2, a3);
}

void sub_24B17283C(uint64_t a1, uint64_t a2)
{
  sub_24B1771E4(a1, a2);
  if ((v2 & 1) == 0)
  {
    MEMORY[0x28223BE20](v2);
    sub_24B2D3824();
  }
}

uint64_t sub_24B1728D0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  a4(a1, a2, a3);
}

uint64_t sub_24B1729AC()
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0 = sub_24B2D50C4();
  MEMORY[0x28223BE20](v0);
  sub_24B2D35C4();
}

void sub_24B172A9C(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v51[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v51[-v8];
  v10 = sub_24B2D2DE4();
  v58 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v56 = &v51[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v54 = &v51[-v13];
  MEMORY[0x28223BE20](v14);
  v55 = &v51[-v15];
  MEMORY[0x28223BE20](v16);
  v57 = &v51[-v17];
  MEMORY[0x28223BE20](v18);
  v20 = &v51[-v19];
  if ((a1 & 1) != 0 || (v53 = type metadata accessor for InteractiveMapV2(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA028), sub_24B2D4CD4(), v34 = sub_24B2D2D64(), v35 = *(v58 + 8), v35(v20, v10), (v34 & 1) == 0) && (v36 = v57, sub_24B2D4CD4(), v37 = sub_24B2D2D84(), v35(v36, v10), (v37 & 1) == 0) && (v38 = v57, sub_24B2D4CD4(), v39 = sub_24B2D2D74(), v35(v38, v10), (v39 & 1) == 0) && (v40 = (v2 + *(v53 + 52)), v41 = *v40, v42 = *(v40 + 1), LOBYTE(v61) = v41, *(&v61 + 1) = v42, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC92E8), sub_24B2D4CD4(), (v59 & 1) == 0))
  {
    v53 = v10;
    v21 = type metadata accessor for InteractiveMapV2();
    v22 = (v2 + *(v21 + 52));
    v23 = *v22;
    v24 = *(v22 + 1);
    LOBYTE(v61) = v23;
    *(&v61 + 1) = v24;
    LOBYTE(v59) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC92E8);
    sub_24B2D4CE4();
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8A8);
    MEMORY[0x24C23B610]();
    v26 = sub_24B2D1974();
    v52 = (*(*(v26 - 8) + 48))(v9, 1, v26);
    sub_24AFF8258(v9, &qword_27EFCD8B0);
    v28 = *(v2 + 8);
    v27 = *(v2 + 16);
    MEMORY[0x24C23B610](v25);
    v29 = sub_24B175478(v28, v27, v6);
    sub_24AFF8258(v6, &qword_27EFCD8B0);
    v30 = 0.0;
    if (*(v29 + 2) >= 2uLL)
    {
      if (qword_27EFC76F0 != -1)
      {
        swift_once();
      }

      v30 = *&qword_27EFCD2C0;
    }

    v31 = (v2 + *(v21 + 36));
    v32 = *(v31 + 16);
    v33 = *(v31 + 3);
    v61 = *v31;
    LOBYTE(v62) = v32;
    v63 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDA28);
    sub_24B2D4CD4();
    if (v60)
    {
    }

    else
    {
      v43 = 40.0;
      if (v52 == 1)
      {
        v43 = 0.0;
      }

      sub_24B164A6C(v29, &v61, v30, v30, v43 + v30, v30);
      v44 = v53;
      if ((v64 & 1) == 0)
      {
        v45 = v54;
        sub_24B2D2DA4();
        v46 = v58;
        v47 = v55;
        (*(v58 + 32))(v55, v45, v44);
        v48 = *(v46 + 16);
        v49 = v57;
        v48(v57, v47, v44);
        v48(v56, v49, v44);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA028);
        sub_24B2D4CE4();
        v50 = *(v46 + 8);
        v50(v49, v44);
        v50(v47, v44);
      }
    }
  }
}

uint64_t sub_24B173064(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if ((v3 & 1) == 0)
  {
    if (v2 == v4)
    {
      v7 = v5;
    }

    else
    {
      v7 = 1;
    }

    if ((v7 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_12:
    type metadata accessor for InteractiveMapV2();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC92E8);
    sub_24B2D4CE4();
  }

  if (!v5)
  {
    goto LABEL_12;
  }

LABEL_5:
}

uint64_t sub_24B1731A8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    if (v3)
    {
      return sub_24B1769BC(v2, v3);
    }

    return 0;
  }

  return !v3;
}

uint64_t sub_24B1731D0@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = type metadata accessor for InteractiveMapV2();
  v26 = *(v1 - 8);
  v25 = *(v26 + 64);
  MEMORY[0x28223BE20](v1);
  v24 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8A8);
  MEMORY[0x28223BE20](v22);
  v21[1] = v21 - v3;
  v4 = sub_24B2D2E24();
  MEMORY[0x28223BE20](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9800);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA058);
  MEMORY[0x28223BE20](v8 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA028);
  sub_24B2D4CF4();
  v9 = sub_24B2D2D44();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA0B0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_24B2DE430;
  sub_24B2D2DF4();
  v29 = v10;
  sub_24B1793FC(&qword_27EFC9818, MEMORY[0x277CE42D0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9820);
  sub_24B039184(&qword_27EFC9828, &qword_27EFC9820);
  sub_24B2D5B44();
  v11 = v27;
  sub_24B2D4E64();
  sub_24B2D5134();
  v28 = v11;
  sub_24B2D1974();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDAB0);
  sub_24B1793FC(&qword_27EFCC7C0, MEMORY[0x277D08CF8]);
  sub_24B039184(&qword_27EFCDAB8, &qword_27EFCDAB0);
  v12 = v23;
  sub_24B2D2CB4();
  v13 = sub_24B2D4A84();
  KeyPath = swift_getKeyPath();
  v15 = (v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD938) + 36));
  *v15 = KeyPath;
  v15[1] = v13;
  v16 = v24;
  sub_24B179024(v27, v24, type metadata accessor for InteractiveMapV2);
  v17 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v18 = swift_allocObject();
  sub_24B178FBC(v16, v18 + v17, type metadata accessor for InteractiveMapV2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD920);
  v20 = (v12 + *(result + 36));
  *v20 = sub_24B174334;
  v20[1] = 0;
  v20[2] = sub_24B179094;
  v20[3] = v18;
  return result;
}

uint64_t sub_24B173750@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v44 = a2;
  v3 = type metadata accessor for InteractiveMapV2();
  v40 = *(v3 - 8);
  v4 = *(v40 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDAC0);
  v42 = *(v5 - 8);
  v43 = v5;
  MEMORY[0x28223BE20](v5);
  v45 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v37 - v8;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9898);
  v10 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - v14;
  sub_24B2D5694();
  v41 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B2D3034();
  v50 = *(a1 + 8);
  sub_24B179024(a1, &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InteractiveMapV2);
  v16 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v17 = swift_allocObject();
  sub_24B178FBC(&v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for InteractiveMapV2);

  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD988);
  v18 = sub_24B2D1974();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDAC8);
  sub_24B039184(&qword_27EFCDAD0, &qword_27EFCD988);
  v19 = type metadata accessor for AnnotationContentV2();
  v20 = sub_24B1793FC(&qword_27EFCDAD8, type metadata accessor for AnnotationContentV2);
  v38 = v15;
  v21 = v20;
  v22 = sub_24B1793FC(&qword_27EFCC7C0, MEMORY[0x277D08CF8]);
  v46 = v19;
  v47 = v18;
  v48 = v21;
  v49 = v22;
  swift_getOpaqueTypeConformance2();
  sub_24B1793FC(&qword_27EFCDAE0, type metadata accessor for AnnotationV2);
  v23 = v9;
  v37 = v9;
  sub_24B2D4EC4();
  v24 = *(v10 + 16);
  v25 = v12;
  v26 = v12;
  v27 = v39;
  v24(v26, v15, v39);
  v28 = v42;
  v29 = v43;
  v30 = *(v42 + 16);
  v30(v45, v23, v43);
  v31 = v44;
  v24(v44, v25, v27);
  v32 = &v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDAE8) + 48)];
  v33 = v45;
  v30(v32, v45, v29);
  v34 = *(v28 + 8);
  v34(v37, v29);
  v35 = *(v10 + 8);
  v35(v38, v27);
  v34(v33, v29);
  v35(v25, v27);
}

uint64_t sub_24B173CC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a3;
  v42 = type metadata accessor for AnnotationContentV2();
  MEMORY[0x28223BE20](v42);
  v41 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24B2D1974();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v37 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDA30);
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8B0);
  MEMORY[0x28223BE20](v12 - 8);
  v38 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v37 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v37 - v18;
  sub_24B2D5694();
  v39 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for InteractiveMapV2();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8A8);
  v40 = a2;
  MEMORY[0x24C23B610](v20);
  v21 = *(v7 + 16);
  v44 = a1;
  v21(v16, a1, v6);
  (*(v7 + 56))(v16, 0, 1, v6);
  v22 = *(v9 + 48);
  sub_24B008890(v19, v11, &qword_27EFCD8B0);
  sub_24B008890(v16, &v11[v22], &qword_27EFCD8B0);
  v23 = *(v7 + 48);
  if (v23(v11, 1, v6) != 1)
  {
    v28 = v38;
    sub_24B008890(v11, v38, &qword_27EFCD8B0);
    if (v23(&v11[v22], 1, v6) != 1)
    {
      v29 = v37;
      (*(v7 + 32))(v37, &v11[v22], v6);
      sub_24B1793FC(&qword_27EFCC7C8, MEMORY[0x277D08CF8]);
      v27 = sub_24B2D52A4();
      v30 = *(v7 + 8);
      v30(v29, v6);
      sub_24AFF8258(v16, &qword_27EFCD8B0);
      sub_24AFF8258(v19, &qword_27EFCD8B0);
      v30(v38, v6);
      sub_24AFF8258(v11, &qword_27EFCD8B0);
      v25 = v44;
      v26 = v40;
      goto LABEL_10;
    }

    sub_24AFF8258(v16, &qword_27EFCD8B0);
    sub_24AFF8258(v19, &qword_27EFCD8B0);
    (*(v7 + 8))(v28, v6);
    v25 = v44;
    v26 = v40;
    goto LABEL_8;
  }

  sub_24AFF8258(v16, &qword_27EFCD8B0);
  sub_24AFF8258(v19, &qword_27EFCD8B0);
  v24 = v23(&v11[v22], 1, v6);
  v25 = v44;
  v26 = v40;
  if (v24 != 1)
  {
LABEL_8:
    sub_24AFF8258(v11, &qword_27EFCDA30);
    v27 = 0;
    goto LABEL_10;
  }

  sub_24AFF8258(v11, &qword_27EFCD8B0);
  v27 = 1;
LABEL_10:
  v31 = (*(*(v26 + 8) + 16) < 2uLL) | v27;
  v32 = v41;
  sub_24B179024(v25, v41, type metadata accessor for AnnotationV2);
  v33 = v42;
  *(v32 + *(v42 + 20)) = v31 & 1;
  *(v32 + v33[6]) = v31 & 1;
  *(v32 + v33[7]) = v27 & 1;
  v34 = v33[8];
  sub_24B2D4A84();
  v35 = sub_24B2D4B44();

  *(v32 + v34) = v35;
  sub_24B1793FC(&qword_27EFCDAD8, type metadata accessor for AnnotationContentV2);
  sub_24B1793FC(&qword_27EFCC7C0, MEMORY[0x277D08CF8]);
  sub_24B2D2FF4();
  sub_24B179444(v32, type metadata accessor for AnnotationContentV2);
}

double sub_24B174334@<D0>(double *a1@<X8>)
{
  sub_24B2D3514();
  v3 = v2;
  sub_24B2D3504();
  v5 = v3 + v4;
  sub_24B2D3504();
  v7 = v5 + v6;
  sub_24B2D3514();
  v9 = v8;
  sub_24B2D3504();
  v11 = v9 + v10;
  sub_24B2D3504();
  result = v11 + v12;
  *a1 = v7;
  a1[1] = v11 + v12;
  return result;
}

uint64_t sub_24B174394()
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for InteractiveMapV2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDA28);
  sub_24B2D4CE4();
  sub_24B172A9C(0);
}

uint64_t sub_24B174494()
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B2D2E54();
  type metadata accessor for InteractiveMapV2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDA38);
  sub_24B2D4CE4();
}

uint64_t sub_24B1745A8()
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B2D3DF4();
  sub_24B2D5134();
  sub_24B2D3004();
}

uint64_t sub_24B17466C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDAA0);
  v89 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v70 - v4;
  v6 = sub_24B2D2F94();
  v81 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v88 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v87 = &v70 - v9;
  v10 = type metadata accessor for InteractiveMapV2();
  v77 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v78 = v11;
  v79 = (&v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v80 = type metadata accessor for CustomMapFocusButton();
  MEMORY[0x28223BE20](v80);
  v86 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v70 - v14;
  MEMORY[0x28223BE20](v16);
  v85 = &v70 - v17;
  v94 = sub_24B2D2CD4();
  v96 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v93 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v70 - v20;
  v92 = sub_24B2D2E44();
  v95 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v91 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v82 = &v70 - v24;
  v25 = type metadata accessor for CustomMapStyleToggle(0);
  MEMORY[0x28223BE20](v25);
  v84 = &v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v70 - v28;
  v30 = a1;
  sub_24B170780();
  if (sub_24B2D3314())
  {
    v31 = v90;
    v32 = *(v89 + 56);

    return v32(v31, 1, 1, v3);
  }

  else
  {
    v74 = v6;
    v75 = v5;
    v76 = v3;
    v34 = (a1 + *(v10 + 40));
    v36 = *v34;
    v35 = v34[1];
    v100 = v36;
    v101 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD828);
    sub_24B2D4CF4();
    v37 = v105;
    v38 = v106;
    v39 = v107;
    swift_getKeyPath();
    v105 = v37;
    v106 = v38;
    v107 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD858);
    sub_24B2D4E54();

    v40 = v100;
    v73 = v101;
    v83 = v21;
    v41 = v102;
    v72 = v103;
    v71 = v104;

    v42 = sub_24B2D5134();
    v97 = 0;
    sub_24B2D4CC4();
    v43 = v99;
    v29[24] = v98;
    *(v29 + 4) = v43;
    v44 = *(v25 + 24);
    *&v29[v44] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD4E0);
    swift_storeEnumTagMultiPayload();
    v45 = v73;
    *v29 = v40;
    *(v29 + 1) = v45;
    v29[16] = v41;
    v29[17] = v72;
    v29[18] = v71;
    *&v29[*(v25 + 28)] = v42;
    sub_24B2D5134();
    v46 = v82;
    sub_24B2D2E34();
    sub_24B2D5134();
    sub_24B2D2CC4();
    v47 = v46;
    if (sub_24B1750DC())
    {
      v48 = 1;
    }

    else
    {
      sub_24B1708D8();
      v48 = sub_24B2D3314();
    }

    v49 = v30;
    v50 = v79;
    sub_24B179024(v49, v79, type metadata accessor for InteractiveMapV2);
    v51 = (*(v77 + 80) + 16) & ~*(v77 + 80);
    v52 = swift_allocObject();
    sub_24B178FBC(v50, v52 + v51, type metadata accessor for InteractiveMapV2);
    *v15 = v48 & 1;
    *(v15 + 1) = sub_24B178F5C;
    *(v15 + 2) = v52;
    v53 = *(v80 + 6);
    *&v15[v53] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v54 = v85;
    sub_24B178FBC(v15, v85, type metadata accessor for CustomMapFocusButton);
    sub_24B2D5134();
    v55 = v87;
    sub_24B2D2F84();
    v56 = v84;
    v80 = v29;
    sub_24B179024(v29, v84, type metadata accessor for CustomMapStyleToggle);
    v79 = *(v95 + 16);
    (v79)(v91, v47, v92);
    v78 = *(v96 + 16);
    v78(v93, v83, v94);
    v77 = type metadata accessor for CustomMapFocusButton;
    v57 = v86;
    sub_24B179024(v54, v86, type metadata accessor for CustomMapFocusButton);
    v58 = v81;
    v73 = *(v81 + 16);
    v59 = v74;
    v73(v88, v55, v74);
    v60 = v56;
    v61 = v75;
    sub_24B179024(v60, v75, type metadata accessor for CustomMapStyleToggle);
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDAA8);
    (v79)(v61 + v62[12], v91, v92);
    v63 = v94;
    v78((v61 + v62[16]), v93, v94);
    sub_24B179024(v57, v61 + v62[20], v77);
    v64 = v88;
    v73(v61 + v62[24], v88, v59);
    v65 = *(v58 + 8);
    v65(v87, v59);
    sub_24B179444(v85, type metadata accessor for CustomMapFocusButton);
    v66 = *(v96 + 8);
    v96 += 8;
    v66(v83, v63);
    v67 = *(v95 + 8);
    v95 += 8;
    v68 = v92;
    v67(v82, v92);
    sub_24B179444(v80, type metadata accessor for CustomMapStyleToggle);
    v65(v64, v59);
    sub_24B179444(v86, type metadata accessor for CustomMapFocusButton);
    v66(v93, v94);
    v67(v91, v68);
    sub_24B179444(v84, type metadata accessor for CustomMapStyleToggle);
    v69 = v90;
    sub_24B0391CC(v61, v90, &qword_27EFCDAA0);
    return (*(v89 + 56))(v69, 0, 1, v76);
  }
}

uint64_t sub_24B1750DC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v37 - v3;
  v5 = sub_24B2D2DE4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - v10;
  v12 = *(v1 + 8);
  if (!*(v12 + 16))
  {
    return 1;
  }

  *&v38 = v4;
  *&v37 = type metadata accessor for InteractiveMapV2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA028);
  sub_24B2D4CD4();
  sub_24B2D2DD4();
  v13 = sub_24B2D2D94();
  v14 = *(v6 + 8);
  v14(v8, v5);
  v14(v11, v5);
  if (v13)
  {
    return 1;
  }

  sub_24B2D4CD4();
  v15 = sub_24B2D2D84();
  v14(v11, v5);
  if (v15)
  {
    return 1;
  }

  v18 = *(v1 + 16);
  v19 = v37;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8A8);
  v21 = v38;
  MEMORY[0x24C23B610](v20);
  v22 = sub_24B175478(v12, v18, v21);
  sub_24AFF8258(v21, &qword_27EFCD8B0);
  v23 = *(v22 + 2);
  if (!v23)
  {
    v16 = 1;
LABEL_16:

    return v16;
  }

  result = sub_24B2D5694();
  v24 = 0;
  v25 = (v1 + *(v19 + 44));
  v26 = *v25;
  v37 = v25[1];
  v38 = v26;
  v27 = *(v25 + 4);
  v28 = v23 - 1;
  v29 = (v22 + 40);
  while (v24 < *(v22 + 2))
  {
    v30 = *(v29 - 1);
    v31 = *v29;
    sub_24B2D5684();
    sub_24B2D5604();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v43 = v38;
    v44 = v37;
    v45 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDA38);
    sub_24B2D4CD4();
    v32 = v39;
    v33 = v40;
    v34 = v41;
    v35 = v42;
    v46.latitude = v30;
    v46.longitude = v31;
    v47 = MKMapPointForCoordinate(v46);
    v48.origin.x = v32;
    v48.origin.y = v33;
    v48.size.width = v34;
    v48.size.height = v35;
    v16 = MKMapRectContainsPoint(v48, v47);

    if (v16)
    {
      v29 += 3;
      if (v28 != v24++)
      {
        continue;
      }
    }

    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_24B175478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v72 = a1;
  v65 = type metadata accessor for AnnotationV2();
  v71 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v73 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v63 - v7;
  v9 = sub_24B2D1974();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v63 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8B0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v63 - v17;
  v19 = v10;
  sub_24B008890(a3, &v63 - v17, &qword_27EFCD8B0);
  if ((*(v10 + 48))(v18, 1, v9) == 1)
  {
  }

  else
  {
    (*(v10 + 32))(v15, v18, v9);
    sub_24B2D5694();
    v70 = sub_24B2D5684();
    sub_24B2D5604();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8008);
    v20 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_24B2DE430;
    (*(v19 + 16))(v21 + v20, v15, v9);
    v22 = sub_24B136BB4(v21);
    swift_setDeallocating();
    v23 = *(v19 + 8);
    v23(v21 + v20, v9);
    swift_deallocClassInstance();
    v23(v15, v9);
    a2 = v22;
  }

  v24 = v72;
  if (*(a2 + 16))
  {
    v69 = *(v72 + 16);
    if (v69)
    {
      v25 = sub_24B2D5694();
      v26 = 0;
      v67 = v24 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
      v68 = v25;
      v66 = *(v71 + 72);
      v71 = v19 + 16;
      v72 = a2 + 56;
      v63 = v19;
      v27 = (v19 + 8);
      v64 = MEMORY[0x277D84F90];
      do
      {
        sub_24B179024(v67 + v66 * v26, v73, type metadata accessor for AnnotationV2);
        v70 = sub_24B2D5684();
        sub_24B2D5604();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v28 = a2;
        if (*(a2 + 16) && (sub_24B1793FC(&qword_27EFCC7C0, MEMORY[0x277D08CF8]), v29 = sub_24B2D5244(), v30 = -1 << *(a2 + 32), v31 = v29 & ~v30, ((*(v72 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) != 0))
        {
          v32 = ~v30;
          v33 = *(v63 + 72);
          v34 = *(v63 + 16);
          while (1)
          {
            v34(v12, *(v28 + 48) + v33 * v31, v9);
            sub_24B1793FC(&qword_27EFCC7C8, MEMORY[0x277D08CF8]);
            v35 = sub_24B2D52A4();
            (*v27)(v12, v9);
            if (v35)
            {
              break;
            }

            v31 = (v31 + 1) & v32;
            if (((*(v72 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
            {
              goto LABEL_9;
            }
          }

          v36 = v73;
          sub_24B2D1BE4();
          v38 = v37;
          v40 = v39;
          sub_24B2D1C04();
          v42 = v41;
          sub_24B179444(v36, type metadata accessor for AnnotationV2);

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            a2 = v28;
            v43 = v64;
          }

          else
          {
            v43 = sub_24B006D1C(0, *(v64 + 2) + 1, 1, v64);
            a2 = v28;
          }

          v45 = *(v43 + 2);
          v44 = *(v43 + 3);
          if (v45 >= v44 >> 1)
          {
            v43 = sub_24B006D1C((v44 > 1), v45 + 1, 1, v43);
          }

          *(v43 + 2) = v45 + 1;
          v64 = v43;
          v46 = &v43[24 * v45];
          *(v46 + 4) = v38;
          *(v46 + 5) = v40;
          *(v46 + 6) = v42;
        }

        else
        {
LABEL_9:
          sub_24B179444(v73, type metadata accessor for AnnotationV2);

          a2 = v28;
        }

        ++v26;
      }

      while (v26 != v69);

      return v64;
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  else
  {

    v48 = *(v24 + 16);
    result = MEMORY[0x277D84F90];
    if (v48)
    {
      v74 = MEMORY[0x277D84F90];
      sub_24B007A3C(0, v48, 0);
      v49 = v71;
      v50 = v24 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
      v51 = v74;
      sub_24B2D5694();
      v52 = *(v49 + 72);
      do
      {
        sub_24B179024(v50, v8, type metadata accessor for AnnotationV2);
        sub_24B2D5684();
        sub_24B2D5604();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        sub_24B2D1BE4();
        v54 = v53;
        v56 = v55;
        sub_24B2D1C04();
        v58 = v57;

        sub_24B179444(v8, type metadata accessor for AnnotationV2);
        v59 = v51;
        v74 = v51;
        v61 = *(v51 + 16);
        v60 = *(v51 + 24);
        if (v61 >= v60 >> 1)
        {
          sub_24B007A3C((v60 > 1), v61 + 1, 1);
          v59 = v74;
        }

        *(v59 + 16) = v61 + 1;
        v51 = v59;
        v62 = (v59 + 24 * v61);
        v62[4] = v54;
        v62[5] = v56;
        v62[6] = v58;
        v50 += v52;
        --v48;
      }

      while (v48);
      return v59;
    }
  }

  return result;
}

uint64_t sub_24B175CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 32) = a4;
  sub_24B2D5694();
  *(v4 + 40) = sub_24B2D5684();
  v6 = sub_24B2D5604();

  return MEMORY[0x2822009F8](sub_24B175D40, v6, v5);
}

uint64_t sub_24B175D40()
{
  v1 = *(v0 + 32);

  v2 = (v1 + *(type metadata accessor for InteractiveMapV2() + 48));
  v3 = *v2;
  v4 = *(v2 + 1);
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  *(v0 + 48) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC92E8);
  sub_24B2D4CE4();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24B175DF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a3;
  v5 = sub_24B2D3764();
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x28223BE20](v5);
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24B2D3844();
  v33 = *(v7 - 8);
  v34 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDA40);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - v12;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDA48);
  MEMORY[0x28223BE20](v35);
  v15 = &v33 - v14;
  sub_24B2D5694();
  v36 = sub_24B2D5684();
  sub_24B2D5604();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  *(&v33 - 2) = a1;
  *(&v33 - 1) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDA50);
  sub_24B039184(&qword_27EFCDA58, &qword_27EFCDA50);
  sub_24B2D3F94();
  sub_24B2D3834();
  sub_24B039184(&qword_27EFCDA60, &qword_27EFCDA40);
  sub_24B1793FC(&qword_27EFCAFA8, MEMORY[0x277CDDA98]);
  v17 = v34;
  sub_24B2D46D4();
  (*(v33 + 8))(v9, v17);
  (*(v11 + 8))(v13, v10);
  v18 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDA68) + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8E10);
  sub_24B2D3944();
  *v18 = swift_getKeyPath();
  LOBYTE(v18) = sub_24B2D42F4();
  v19 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDA70) + 36)];
  *v19 = v18;
  *(v19 + 8) = 0u;
  *(v19 + 24) = 0u;
  v19[40] = 1;
  v20 = sub_24B2D4B54();
  KeyPath = swift_getKeyPath();
  v22 = &v15[*(v35 + 36)];
  *v22 = KeyPath;
  v22[1] = v20;
  v24 = v37;
  v23 = v38;
  v25 = v39;
  (*(v38 + 104))(v37, *MEMORY[0x277CDF9D8], v39);
  sub_24B178CA0();
  v26 = v40;
  sub_24B2D4764();
  (*(v23 + 8))(v24, v25);
  sub_24AFF8258(v15, &qword_27EFCDA48);
  v27 = (v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDA90) + 36));
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8E20) + 28);
  v29 = *MEMORY[0x277CDF440];
  v30 = sub_24B2D3364();
  (*(*(v30 - 8) + 104))(v27 + v28, v29, v30);
  v31 = swift_getKeyPath();

  *v27 = v31;
  return result;
}

uint64_t sub_24B17638C@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_24B2D3DF4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDA98);
  a1();
}

void (*EnvironmentValues.mapCameraStatePreservation.modify(uint64_t *a1))(void **a1)
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
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_24B177EA4();
  sub_24B2D3C74();
  v5 = *(v4 + 24);
  *v4 = *(v4 + 16);
  *(v4 + 8) = v5;
  return sub_24B1765EC;
}

uint64_t sub_24B176618(void (*a1)(void))
{
  a1();
  sub_24B2D3C74();
  return v2;
}

uint64_t keypath_getTm@<X0>(void (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  a1();
  result = sub_24B2D3C74();
  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

void (*EnvironmentValues.mapAnimatableChangesStableValue.modify(uint64_t *a1))(void **a1)
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
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_24B177EF8();
  sub_24B2D3C74();
  v5 = *(v4 + 24);
  *v4 = *(v4 + 16);
  *(v4 + 8) = v5;
  return sub_24B176870;
}

void sub_24B17687C(void **a1)
{
  v2 = *(*a1 + 8);
  v1 = *a1;
  *(v1 + 2) = **a1;
  v1[24] = v2;
  sub_24B2D3C84();

  free(v1);
}

uint64_t sub_24B1768F4(uint64_t a1)
{
  v2 = sub_24B2D3364();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return MEMORY[0x24C23A1E0](v5);
}

uint64_t sub_24B1769BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A80);
  MEMORY[0x28223BE20](v4 - 8);
  v46 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v45 = &v41 - v7;
  v8 = sub_24B2D24A4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v47 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
  MEMORY[0x28223BE20](v11 - 8);
  v48 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v49 = &v41 - v14;
  v15 = type metadata accessor for AnnotationV2();
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v41 - v20;
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
    return 0;
  }

  if (!v22 || a1 == a2)
  {
    return 1;
  }

  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = a1 + v23;
  v55 = (v9 + 48);
  v44 = (v9 + 32);
  v43 = (v9 + 8);
  v25 = a2 + v23;
  v42 = *(v19 + 72);
  v56 = v8;
  while (1)
  {
    result = sub_24B179024(v24, v21, type metadata accessor for AnnotationV2);
    if (!v22)
    {
      break;
    }

    v51 = v24;
    sub_24B179024(v25, v17, type metadata accessor for AnnotationV2);
    sub_24B2D60E4();
    sub_24B2D1964();
    sub_24B2D5404();
    Icon.hash(into:)(v57);
    sub_24B2D1C24();
    v27 = v49;
    sub_24B008890(&v21[*(v15 + 32)], v49, &qword_27EFC8450);
    v52 = *v55;
    v28 = v52(v27, 1, v8);
    v54 = v22;
    v50 = v25;
    if (v28 == 1)
    {
      sub_24B2D6104();
    }

    else
    {
      v29 = v47;
      (*v44)(v47, v49, v8);
      sub_24B2D6104();
      sub_24B1793FC(&qword_27EFCB108, MEMORY[0x277CC9578]);
      sub_24B2D5254();
      (*v43)(v29, v8);
    }

    v30 = v45;
    sub_24B008890(&v21[*(v15 + 36)], v45, &qword_27EFC8A80);
    v31 = sub_24B2D1BB4();
    v32 = *(v31 - 8);
    v33 = *(v32 + 48);
    if (v33(v30, 1, v31) == 1)
    {
      sub_24AFF8258(v30, &qword_27EFC8A80);
    }

    else
    {
      sub_24B2D1B64();
      (*(v32 + 8))(v30, v31);
    }

    v53 = sub_24B2D6124();
    sub_24B2D60E4();
    sub_24B2D1964();
    sub_24B2D5404();
    Icon.hash(into:)(v57);
    sub_24B2D1C24();
    v34 = v48;
    sub_24B008890(&v17[*(v15 + 32)], v48, &qword_27EFC8450);
    v35 = v34;
    v36 = v56;
    if (v52(v35, 1, v56) == 1)
    {
      sub_24B2D6104();
    }

    else
    {
      v37 = v47;
      (*v44)(v47, v48, v36);
      sub_24B2D6104();
      sub_24B1793FC(&qword_27EFCB108, MEMORY[0x277CC9578]);
      sub_24B2D5254();
      (*v43)(v37, v36);
    }

    v38 = v46;
    sub_24B008890(&v17[*(v15 + 36)], v46, &qword_27EFC8A80);
    if (v33(v38, 1, v31) == 1)
    {
      sub_24AFF8258(v38, &qword_27EFC8A80);
    }

    else
    {
      sub_24B2D1B64();
      (*(v32 + 8))(v38, v31);
    }

    v8 = v56;
    v39 = v54;
    v40 = sub_24B2D6124();
    sub_24B179444(v17, type metadata accessor for AnnotationV2);
    sub_24B179444(v21, type metadata accessor for AnnotationV2);
    result = v53 == v40;
    if (v53 == v40)
    {
      v22 = v39 - 1;
      v25 = v50 + v42;
      v24 = v51 + v42;
      if (v39 != 1)
      {
        continue;
      }
    }

    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_24B17712C(uint64_t a1, uint64_t a2, char a3)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B172A9C(a3 & 1);
}

void sub_24B1771E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B2D1974();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v33 - v9;
  v12 = MEMORY[0x28223BE20](v10);
  v13 = &v33 - v11;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v14 = 0;
    v15 = *(a1 + 56);
    v33 = a1 + 56;
    v16 = 1 << *(a1 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    v40 = v5 + 32;
    v42 = a2 + 56;
    v43 = v5 + 16;
    v20 = (v5 + 8);
    v34 = v19;
    v35 = &v33 - v11;
    v36 = v5;
    v37 = a1;
    if (v18)
    {
      while (1)
      {
        v21 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_13:
        v24 = *(a1 + 48);
        v41 = *(v5 + 72);
        v25 = *(v5 + 16);
        v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4, v12);
        (*(v5 + 32))(v44, v13, v4);
        sub_24B1793FC(&qword_27EFCC7C0, MEMORY[0x277D08CF8]);
        v26 = sub_24B2D5244();
        v27 = -1 << *(a2 + 32);
        v28 = v26 & ~v27;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          break;
        }

        v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v29 = a2;
        v30 = ~v27;
        while (1)
        {
          (v25)(v7, *(v29 + 48) + v28 * v41, v4);
          sub_24B1793FC(&qword_27EFCC7C8, MEMORY[0x277D08CF8]);
          v31 = sub_24B2D52A4();
          v32 = *v20;
          (*v20)(v7, v4);
          if (v31)
          {
            break;
          }

          v28 = (v28 + 1) & v30;
          if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            v32(v44, v4);
            return;
          }
        }

        v32(v44, v4);
        a2 = v29;
        v5 = v36;
        a1 = v37;
        v19 = v34;
        v13 = v35;
        v18 = v39;
        if (!v39)
        {
          goto LABEL_8;
        }
      }

      (*v20)(v44, v4);
    }

    else
    {
LABEL_8:
      v22 = v14;
      while (1)
      {
        v14 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v14 >= v19)
        {
          return;
        }

        v23 = *(v33 + 8 * v14);
        ++v22;
        if (v23)
        {
          v21 = __clz(__rbit64(v23));
          v39 = (v23 - 1) & v23;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_24B177594(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_24B177624()
{
  result = qword_27EFCD8F8;
  if (!qword_27EFCD8F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD8F0);
    sub_24B1776DC();
    sub_24B039184(&qword_27EFCD970, &qword_27EFCD978);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD8F8);
  }

  return result;
}

unint64_t sub_24B1776DC()
{
  result = qword_27EFCD900;
  if (!qword_27EFCD900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD908);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD910);
    sub_24B2D3014();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD918);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD920);
    sub_24B1778A0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24B1793FC(&qword_27EFCD7D0, MEMORY[0x277CE4320]);
    swift_getOpaqueTypeConformance2();
    sub_24B039184(&qword_27EFCD960, &qword_27EFCD968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD900);
  }

  return result;
}

unint64_t sub_24B1778A0()
{
  result = qword_27EFCD928;
  if (!qword_27EFCD928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD920);
    sub_24B177958();
    sub_24B039184(&qword_27EFCD950, &qword_27EFCD958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD928);
  }

  return result;
}

unint64_t sub_24B177958()
{
  result = qword_27EFCD930;
  if (!qword_27EFCD930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD938);
    sub_24B039184(&qword_27EFCD940, &qword_27EFCD948);
    sub_24B039184(&qword_27EFC8EB0, &qword_27EFC8EB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD930);
  }

  return result;
}

unint64_t sub_24B177A3C()
{
  result = qword_27EFCD980;
  if (!qword_27EFCD980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD8B0);
    sub_24B1793FC(&qword_27EFCC7C8, MEMORY[0x277D08CF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD980);
  }

  return result;
}

unint64_t sub_24B177BB8()
{
  result = qword_27EFCD990;
  if (!qword_27EFCD990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD988);
    sub_24B1793FC(&qword_27EFCD220, type metadata accessor for AnnotationV2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD990);
  }

  return result;
}

void sub_24B177C6C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for InteractiveMapV2();

  sub_24B17283C(a1, a2);
}

uint64_t sub_24B177D48()
{
  type metadata accessor for InteractiveMapV2();

  return sub_24B1729AC();
}

unint64_t sub_24B177DA8()
{
  result = qword_27EFCD9A8;
  if (!qword_27EFCD9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EFC8498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD9A8);
  }

  return result;
}

uint64_t sub_24B177E24(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for InteractiveMapV2();

  return sub_24B173064(a1, a2);
}

unint64_t sub_24B177EA4()
{
  result = qword_27EFCD9B8;
  if (!qword_27EFCD9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD9B8);
  }

  return result;
}

unint64_t sub_24B177EF8()
{
  result = qword_27EFCD9C0;
  if (!qword_27EFCD9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD9C0);
  }

  return result;
}

void sub_24B177F90()
{
  sub_24B178304(319, &qword_27EFCD9D8, type metadata accessor for AnnotationV2, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_24B178270();
    if (v1 <= 0x3F)
    {
      sub_24B178368(319, &qword_27EFCD9E8, &qword_27EFCD8B0, &unk_24B2F42D0, MEMORY[0x277CE11F8]);
      if (v2 <= 0x3F)
      {
        sub_24B178304(319, &qword_27EFCA040, MEMORY[0x277CE42C8], MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_24B178368(319, &qword_27EFCD9F0, &qword_27EFCD8A0, &unk_24B2EE830, MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_24B178304(319, &qword_27EFCD818, type metadata accessor for CustomMapStyleLoader, MEMORY[0x277CE10B8]);
            if (v5 <= 0x3F)
            {
              sub_24B178304(319, &qword_27EFCD9F8, type metadata accessor for MKMapRect, MEMORY[0x277CE10B8]);
              if (v6 <= 0x3F)
              {
                sub_24B1783CC(319, &qword_27EFC98D8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
                if (v7 <= 0x3F)
                {
                  sub_24B178368(319, &qword_27EFCDA00, &unk_27EFC8498, &unk_24B2EBB60, MEMORY[0x277CDF468]);
                  if (v8 <= 0x3F)
                  {
                    sub_24B1783CC(319, &qword_27EFCDA08, MEMORY[0x277CDF388], MEMORY[0x277CDF468]);
                    if (v9 <= 0x3F)
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
    }
  }
}

void sub_24B178270()
{
  if (!qword_27EFCD9E0)
  {
    sub_24B2D1974();
    sub_24B1793FC(&qword_27EFCC7C0, MEMORY[0x277D08CF8]);
    v0 = sub_24B2D5854();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFCD9E0);
    }
  }
}

void sub_24B178304(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_24B178368(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_24B1783CC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_24B17841C()
{
  result = qword_27EFCDA10;
  if (!qword_27EFCDA10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD9B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD8D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EFC8498);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD8D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD8C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD998);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD8C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD988);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD8B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD8B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD8E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD8F0);
    sub_24B177624();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24B177A3C();
    swift_getOpaqueTypeConformance2();
    sub_24B177BB8();
    swift_getOpaqueTypeConformance2();
    sub_24B039184(&qword_27EFCD9A0, &qword_27EFCD998);
    swift_getOpaqueTypeConformance2();
    sub_24B177DA8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24B039184(&qword_27EFCDA18, &qword_27EFCDA20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCDA10);
  }

  return result;
}

uint64_t sub_24B1787BC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for InteractiveMapV2();
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v22[-v10];
  v12 = v2 + *(v5 + 56);
  v13 = *v12;
  v14 = *(v12 + 8);
  v22[16] = v13;
  v23 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC92E8);
  v15 = sub_24B2D4CD4();
  if (v22[15] == 1 && *(a1 + 16))
  {
    v16 = sub_24B2D56D4();
    (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
    sub_24B179024(v2, &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for InteractiveMapV2);
    sub_24B2D5694();
    v17 = sub_24B2D5684();
    v18 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v19 = swift_allocObject();
    v20 = MEMORY[0x277D85700];
    *(v19 + 16) = v17;
    *(v19 + 24) = v20;
    sub_24B178FBC(v8, v19 + v18, type metadata accessor for InteractiveMapV2);
    sub_24B00A9A4(0, 0, v11, &unk_24B2EEB50, v19);
  }

  MEMORY[0x28223BE20](v15);
  *&v22[-16] = v2;
  return sub_24B2D3824();
}

uint64_t sub_24B178B04(uint64_t a1)
{
  v4 = *(type metadata accessor for InteractiveMapV2() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AFFD370;

  return sub_24B175CA8(a1, v6, v7, v1 + v5);
}

uint64_t sub_24B178C18()
{
  type metadata accessor for InteractiveMapV2();

  return sub_24B174494();
}

unint64_t sub_24B178CA0()
{
  result = qword_27EFCDA78;
  if (!qword_27EFCDA78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCDA48);
    sub_24B178D58();
    sub_24B039184(&qword_27EFC8EB0, &qword_27EFC8EB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCDA78);
  }

  return result;
}

unint64_t sub_24B178D58()
{
  result = qword_27EFCDA80;
  if (!qword_27EFCDA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCDA70);
    sub_24B178DE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCDA80);
  }

  return result;
}

unint64_t sub_24B178DE4()
{
  result = qword_27EFCDA88;
  if (!qword_27EFCDA88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCDA68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCDA40);
    sub_24B2D3844();
    sub_24B039184(&qword_27EFCDA60, &qword_27EFCDA40);
    sub_24B1793FC(&qword_27EFCAFA8, MEMORY[0x277CDDA98]);
    swift_getOpaqueTypeConformance2();
    sub_24B039184(&qword_27EFC8F00, &qword_27EFC8E10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCDA88);
  }

  return result;
}

uint64_t sub_24B178FBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B179024(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B179094()
{
  type metadata accessor for InteractiveMapV2();

  return sub_24B174394();
}

uint64_t objectdestroyTm_21()
{
  v1 = type metadata accessor for InteractiveMapV2();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v0 + v3 + v1[7];

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8A8) + 32);
  v8 = sub_24B2D1974();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v6 + v7, 1, v8))
  {
    (*(v9 + 8))(v6 + v7, v8);
  }

  v10 = v5 + v1[8];
  v11 = sub_24B2D2DE4();
  (*(*(v11 - 8) + 8))(v10, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA028);

  sub_24B177594(*(v5 + v1[14]), *(v5 + v1[14] + 8), *(v5 + v1[14] + 9));
  sub_24B177594(*(v5 + v1[15]), *(v5 + v1[15] + 8), *(v5 + v1[15] + 9));
  sub_24AFEFDB8(*(v5 + v1[16]), *(v5 + v1[16] + 8));
  sub_24AFEFDB8(*(v5 + v1[17]), *(v5 + v1[17] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24B17937C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for InteractiveMapV2() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24B173CC8(a1, v6, a2);
}

uint64_t sub_24B1793FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B179444(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B1794E8()
{
  v0 = sub_24B2D2204();
  __swift_allocate_value_buffer(v0, qword_27EFE4550);
  v1 = __swift_project_value_buffer(v0, qword_27EFE4550);
  *v1 = type metadata accessor for InteractiveMapModule();
  v2 = *MEMORY[0x277CC9120];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_24B179584()
{
  v0 = sub_24B2D3184();
  __swift_allocate_value_buffer(v0, qword_27EFCDAF0);
  __swift_project_value_buffer(v0, qword_27EFCDAF0);
  return sub_24B2D3174();
}

uint64_t static StaticMapGenerator.generateImage(focusedAnnotation:centerOffset:size:allowPitch:)(uint64_t a1, char a2, double a3, double a4, double a5, double a6)
{
  *(v6 + 89) = a2;
  *(v6 + 280) = a5;
  *(v6 + 288) = a6;
  *(v6 + 264) = a3;
  *(v6 + 272) = a4;
  v8 = sub_24B2D24A4();
  *(v6 + 296) = v8;
  *(v6 + 304) = *(v8 - 8);
  *(v6 + 312) = swift_task_alloc();
  *(v6 + 320) = *a1;
  *(v6 + 336) = *(a1 + 16);
  *(v6 + 344) = *(a1 + 24);

  return MEMORY[0x2822009F8](sub_24B1796DC, 0, 0);
}

uint64_t sub_24B1796DC()
{
  v81 = v0;
  v1 = *(v0 + 328);
  v2 = *(v0 + 320);
  v4 = *(v0 + 304);
  v3 = *(v0 + 312);
  v5 = *(v0 + 296);
  v6 = fmax(*(v0 + 336), 10.0);
  v7 = v6 + v6;
  sub_24B2D2494();
  v8 = objc_allocWithZone(MEMORY[0x277CE41F8]);
  v9 = sub_24B2D23B4();
  v10 = [v8 initWithCoordinate:v9 altitude:v2 horizontalAccuracy:v1 verticalAccuracy:0.0 timestamp:{v7, 0.0}];
  *(v0 + 360) = v10;

  (*(v4 + 8))(v3, v5);
  MKMapRectMakeWithRadialDistance();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [objc_allocWithZone(MEMORY[0x277CD4E80]) initWithCLLocation_];
  if (v19)
  {
    v20 = v19;
    v21 = *(v0 + 89);
    v23 = *(v0 + 280);
    v22 = *(v0 + 288);
    v24 = objc_opt_self();
    v25 = [v24 cameraLookingAtMapItem:v20 forViewSize:v21 allowPitch:{v23, v22}];
    v26 = [v24 _cameraLookingAtMapRect_forViewSize_];
    if (v26)
    {
      v27 = v26;
      [v25 centerCoordinateDistance];
      v29 = v28;
      [v27 centerCoordinateDistance];
      if (v30 <= v29)
      {
        if (qword_27EFC7710 != -1)
        {
          swift_once();
        }

        v31 = (v0 + 176);
        v58 = sub_24B2D3184();
        __swift_project_value_buffer(v58, qword_27EFCDAF0);
        v59 = sub_24B2D3164();
        v60 = sub_24B2D5904();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v80 = v62;
          *v61 = 136315138;
          *(v61 + 4) = sub_24AFF321C(0xD00000000000003ELL, 0x800000024B2DC240, &v80);
          _os_log_impl(&dword_24AFD2000, v59, v60, "%s - Using MKMapItem default camera", v61, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v62);
          MEMORY[0x24C23D530](v62, -1, -1);
          MEMORY[0x24C23D530](v61, -1, -1);
        }

        if ((*(v0 + 89) & 1) == 0)
        {
          [v25 setPitch_];
        }

        *(v0 + 256) = v25;
        sub_24B038248(0, &qword_27EFCDB08);
        type metadata accessor for MKCoordinateRegion(0);
        v63 = v25;
        sub_24B2D1AA4();

        v49 = 208;
        v50 = 200;
        v51 = 192;
        v52 = 184;
      }

      else
      {
        if (qword_27EFC7710 != -1)
        {
          swift_once();
        }

        v31 = (v0 + 136);
        v32 = sub_24B2D3184();
        __swift_project_value_buffer(v32, qword_27EFCDAF0);
        v33 = sub_24B2D3164();
        v34 = sub_24B2D5904();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v80 = v36;
          *v35 = 136315138;
          *(v35 + 4) = sub_24AFF321C(0xD00000000000003ELL, 0x800000024B2DC240, &v80);
          _os_log_impl(&dword_24AFD2000, v33, v34, "%s - Creating new camera based on defaultFramingCamera with minimumFramingCamera distance", v35, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v36);
          MEMORY[0x24C23D530](v36, -1, -1);
          MEMORY[0x24C23D530](v35, -1, -1);
        }

        v37 = *(v0 + 89);
        [v25 centerCoordinate];
        v39 = v38;
        v41 = v40;
        [v27 centerCoordinateDistance];
        v43 = v42;
        v44 = 0.0;
        if (v37 == 1)
        {
          [v25 pitch];
          v44 = v45;
        }

        [v25 heading];
        v47 = [v24 cameraLookingAtCenterCoordinate:v39 fromDistance:v41 pitch:v43 heading:{v44, v46}];
        *(v0 + 248) = v47;
        sub_24B038248(0, &qword_27EFCDB08);
        type metadata accessor for MKCoordinateRegion(0);
        v48 = v47;
        sub_24B2D1AA4();

        v49 = 168;
        v50 = 160;
        v51 = 152;
        v52 = 144;
      }

      goto LABEL_24;
    }
  }

  v31 = (v0 + 96);
  if (qword_27EFC7710 != -1)
  {
    swift_once();
  }

  v53 = sub_24B2D3184();
  __swift_project_value_buffer(v53, qword_27EFCDAF0);
  v54 = sub_24B2D3164();
  v55 = sub_24B2D5914();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v80 = v57;
    *v56 = 136315138;
    *(v56 + 4) = sub_24AFF321C(0xD00000000000003ELL, 0x800000024B2DC240, &v80);
    _os_log_impl(&dword_24AFD2000, v54, v55, "%s - Couldn't create MKMapItem/MKMapCamera", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v57);
    MEMORY[0x24C23D530](v57, -1, -1);
    MEMORY[0x24C23D530](v56, -1, -1);
  }

  v83.origin.x = v12;
  v83.origin.y = v14;
  v83.size.width = v16;
  v83.size.height = v18;
  *(v0 + 216) = MKCoordinateRegionForMapRect(v83);
  sub_24B038248(0, &qword_27EFCDB08);
  type metadata accessor for MKCoordinateRegion(0);
  sub_24B2D1A94();
  v49 = 128;
  v50 = 120;
  v51 = 112;
  v52 = 104;
LABEL_24:
  v64 = *v31;
  v65 = *(v0 + v52);
  v66 = *(v0 + v51);
  v67 = *(v0 + v50);
  v68 = *(v0 + v49);
  *(v0 + 90) = v68;
  *(v0 + 384) = v66;
  *(v0 + 392) = v67;
  *(v0 + 368) = v64;
  *(v0 + 376) = v65;
  v70 = *(v0 + 344);
  v69 = *(v0 + 352);
  *(v0 + 56) = v64;
  v71 = *(v0 + 336);
  *(v0 + 64) = v65;
  *(v0 + 72) = v66;
  *(v0 + 80) = v67;
  *(v0 + 88) = v68;
  *(v0 + 16) = *(v0 + 320);
  *(v0 + 32) = v71;
  *(v0 + 40) = v70;
  *(v0 + 48) = v69;
  sub_24B17B67C(v64, v65, v66, v67, v68);
  v72 = v70;
  v73 = v69;
  v74 = swift_task_alloc();
  *(v0 + 400) = v74;
  *v74 = v0;
  v74[1] = sub_24B179EB0;
  v75 = *(v0 + 280);
  v76 = *(v0 + 288);
  v77 = *(v0 + 264);
  v78 = *(v0 + 272);

  return sub_24B17A35C(v0 + 56, v0 + 16, v77, v78, v75, v76);
}

uint64_t sub_24B179EB0(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 408) = v1;

  v5 = *(v4 + 90);
  v6 = *(v4 + 392);
  v7 = *(v4 + 384);
  v8 = *(v4 + 376);
  v9 = *(v4 + 368);
  if (v1)
  {
    sub_24B17B688(*(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), *(v4 + 48));
    sub_24B17B6C8(v9, v8, v7, v6, v5);
    v10 = sub_24B17A114;
  }

  else
  {
    *(v4 + 416) = a1;
    sub_24B17B688(*(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), *(v4 + 48));
    sub_24B17B6C8(v9, v8, v7, v6, v5);
    v10 = sub_24B17A090;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_24B17A090()
{
  v1 = *(v0 + 360);
  sub_24B17B6C8(*(v0 + 368), *(v0 + 376), *(v0 + 384), *(v0 + 392), *(v0 + 90));

  v2 = *(v0 + 8);
  v3 = *(v0 + 416);

  return v2(v3);
}

uint64_t sub_24B17A114()
{
  v1 = *(v0 + 360);
  sub_24B17B6C8(*(v0 + 368), *(v0 + 376), *(v0 + 384), *(v0 + 392), *(v0 + 90));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t static StaticMapGenerator.mapSnapshotter(framing:centerOffset:annotation:size:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_24B0C9468;

  return sub_24B17A35C(a1, a2, a3, a4, a5, a6);
}

void sub_24B17A27C(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDB10);
    sub_24B2D5624();
  }

  else if (a2)
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDB10);
    sub_24B2D5634();
  }

  else
  {
    __break(1u);
  }
}

void __swiftcall StaticMapGenerator.Annotation.init(coordinate:accuracyRadius:accuracyFillColor:accuracyStrokeColor:)(FindMyUICore::StaticMapGenerator::Annotation *__return_ptr retstr, __C::CLLocationCoordinate2D coordinate, Swift::Double accuracyRadius, UIColor accuracyFillColor, UIColor accuracyStrokeColor)
{
  retstr->coordinate.latitude = coordinate.latitude;
  retstr->coordinate.longitude = coordinate.longitude;
  retstr->accuracyRadius = accuracyRadius;
  retstr->accuracyFillColor = accuracyFillColor;
  retstr->accuracyStrokeColor = accuracyStrokeColor;
}

uint64_t sub_24B17A35C(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  *(v6 + 360) = a5;
  *(v6 + 368) = a6;
  *(v6 + 344) = a3;
  *(v6 + 352) = a4;
  *(v6 + 336) = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDB10);
  *(v6 + 376) = v8;
  *(v6 + 384) = *(v8 - 8);
  *(v6 + 392) = swift_task_alloc();
  v9 = *(a2 + 16);
  *(v6 + 400) = *a2;
  *(v6 + 416) = v9;
  *(v6 + 432) = *(a2 + 32);

  return MEMORY[0x2822009F8](sub_24B17A444, 0, 0);
}

uint64_t sub_24B17A444()
{
  v43 = v0;
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);
  v3 = *(v0 + 336);
  v4 = objc_opt_self();
  *(v0 + 440) = v4;
  v5 = [v4 traitCollectionWithUserInterfaceStyle_];
  v6 = [objc_allocWithZone(MEMORY[0x277CD4EB8]) init];
  *(v0 + 304) = v2;
  *(v0 + 312) = v1;
  [v6 setSize_];
  if (v3[4])
  {
    [v6 setRegion_];
  }

  else
  {
    [v6 setCamera_];
  }

  v7 = *(v0 + 424);
  v8 = *(v0 + 344) + *(v0 + 344);
  v9 = *(v0 + 352) + *(v0 + 352);
  *(v0 + 272) = 0;
  *(v0 + 280) = v8;
  *(v0 + 288) = v9;
  *(v0 + 296) = 0;
  [v6 _setEdgeInsets_];
  [v6 setTraitCollection_];
  if (v7)
  {
    v11 = *(v0 + 424);
    v10 = *(v0 + 432);
    v36 = v10;
    v37 = v11;
    v39 = *(v0 + 408);
    v40 = *(v0 + 416);
    v38 = *(v0 + 400);
    v12 = objc_opt_self();
    v13 = v11;
    v14 = v10;
    v15 = [v12 circleWithCenterCoordinate:*&v38 radius:{*&v39, *&v40}];
    v16 = [objc_allocWithZone(MEMORY[0x277CD4DA8]) initWithCircle_];
    v17 = [v13 resolvedColorWithTraitCollection_];
    [v16 setFillColor_];

    v18 = v16;
    [v18 setBlendMode_];
    v19 = [objc_allocWithZone(MEMORY[0x277CD4DA8]) initWithCircle_];
    v20 = [v14 resolvedColorWithTraitCollection_];
    [v19 setStrokeColor_];

    [v19 setLineWidth_];
    v21 = v19;
    [v21 setBlendMode_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7E98);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_24B2EED20;
    *(v22 + 32) = v21;
    *(v22 + 40) = v18;
    sub_24B038248(0, &qword_27EFCDB20);
    v23 = sub_24B2D5524();

    [v6 _setOverlayRenderers_forOverlayLevel_];

    sub_24B17B688(v38, v39, v40, v37, v36);
  }

  v41 = [objc_allocWithZone(MEMORY[0x277CD4EC0]) initWithOptions_];
  *(v0 + 448) = v41;

  if (qword_27EFC7710 != -1)
  {
    swift_once();
  }

  v24 = sub_24B2D3184();
  *(v0 + 456) = __swift_project_value_buffer(v24, qword_27EFCDAF0);
  v25 = sub_24B2D3164();
  v26 = sub_24B2D5904();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v42 = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_24AFF321C(0xD000000000000035, 0x800000024B2DC2B0, &v42);
    _os_log_impl(&dword_24AFD2000, v25, v26, "%s - Will Generate lightSnapshot", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x24C23D530](v28, -1, -1);
    MEMORY[0x24C23D530](v27, -1, -1);
  }

  v30 = *(v0 + 384);
  v29 = *(v0 + 392);
  v31 = *(v0 + 376);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 320;
  *(v0 + 24) = sub_24B17AA74;
  swift_continuation_init();
  *(v0 + 200) = v31;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 176));
  *(v0 + 464) = sub_24B038248(0, &qword_27EFCDB18);
  *(v0 + 472) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC85A0);
  sub_24B2D5614();
  v33 = *(v30 + 32);
  *(v0 + 480) = v33;
  *(v0 + 488) = (v30 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v33(boxed_opaque_existential_0, v29, v31);
  *(v0 + 144) = MEMORY[0x277D85DD0];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_24B17A27C;
  *(v0 + 168) = &block_descriptor_6;
  [v41 startWithCompletionHandler_];
  v34 = *(v30 + 8);
  *(v0 + 496) = v34;
  *(v0 + 504) = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v34(boxed_opaque_existential_0, v31);

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_24B17AA74()
{
  v1 = *(*v0 + 48);
  *(*v0 + 512) = v1;
  if (v1)
  {
    v2 = sub_24B17B56C;
  }

  else
  {
    v2 = sub_24B17AB84;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24B17AB84()
{
  v45 = v0;
  v1 = *(v0 + 320);
  *(v0 + 520) = v1;
  v2 = v1;
  v3 = sub_24B2D3164();
  v4 = sub_24B2D5904();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v44 = v7;
    *v5 = 136315394;
    *(v5 + 4) = sub_24AFF321C(0xD000000000000035, 0x800000024B2DC2B0, &v44);
    *(v5 + 12) = 2112;
    *(v5 + 14) = v2;
    *v6 = v2;
    v8 = v2;
    _os_log_impl(&dword_24AFD2000, v3, v4, "%s - Did Finish - lightSnapshot %@", v5, 0x16u);
    sub_24B17B79C(v6);
    MEMORY[0x24C23D530](v6, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x24C23D530](v7, -1, -1);
    MEMORY[0x24C23D530](v5, -1, -1);
  }

  v9 = *(v0 + 304);
  v10 = *(v0 + 312);
  v11 = *(v0 + 336);
  v12 = [*(v0 + 440) traitCollectionWithUserInterfaceStyle_];
  v13 = [objc_allocWithZone(MEMORY[0x277CD4EB8]) init];
  [v13 setSize_];
  if (v11[4])
  {
    [v13 setRegion_];
  }

  else
  {
    [v13 setCamera_];
  }

  v14 = *(v0 + 424);
  [v13 _setEdgeInsets_];
  [v13 setTraitCollection_];
  if (v14)
  {
    v16 = *(v0 + 424);
    v15 = *(v0 + 432);
    v38 = v16;
    v41 = *(v0 + 408);
    v42 = *(v0 + 416);
    v39 = *(v0 + 400);
    v17 = objc_opt_self();
    v18 = v16;
    v19 = v15;
    v20 = [v17 circleWithCenterCoordinate:*&v39 radius:{*&v41, *&v42}];
    v21 = [objc_allocWithZone(MEMORY[0x277CD4DA8]) initWithCircle_];
    v22 = [v18 resolvedColorWithTraitCollection_];
    [v21 setFillColor_];

    v23 = v21;
    [v23 setBlendMode_];
    v24 = [objc_allocWithZone(MEMORY[0x277CD4DA8]) initWithCircle_];
    v25 = [v19 resolvedColorWithTraitCollection_];
    [v24 setStrokeColor_];

    [v24 setLineWidth_];
    v26 = v24;
    [v26 setBlendMode_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7E98);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_24B2EED20;
    *(v27 + 32) = v26;
    *(v27 + 40) = v23;
    sub_24B038248(0, &qword_27EFCDB20);
    v28 = sub_24B2D5524();

    [v13 _setOverlayRenderers_forOverlayLevel_];

    sub_24B17B688(v39, v41, v42, v38, v15);
  }

  v43 = [objc_allocWithZone(MEMORY[0x277CD4EC0]) initWithOptions_];
  *(v0 + 528) = v43;

  v29 = sub_24B2D3164();
  v30 = sub_24B2D5904();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v44 = v32;
    *v31 = 136315138;
    *(v31 + 4) = sub_24AFF321C(0xD000000000000035, 0x800000024B2DC2B0, &v44);
    _os_log_impl(&dword_24AFD2000, v29, v30, "%s - Will Generate darkSnapshot", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x24C23D530](v32, -1, -1);
    MEMORY[0x24C23D530](v31, -1, -1);
  }

  v40 = *(v0 + 496);
  v37 = *(v0 + 480);
  v33 = *(v0 + 392);
  v34 = *(v0 + 376);
  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 328;
  *(v0 + 88) = sub_24B17B210;
  swift_continuation_init();
  *(v0 + 264) = v34;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 240));
  sub_24B2D5614();
  v37(boxed_opaque_existential_0, v33, v34);
  *(v0 + 208) = MEMORY[0x277D85DD0];
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_24B17A27C;
  *(v0 + 232) = &block_descriptor_11;
  [v43 startWithCompletionHandler_];
  v40(boxed_opaque_existential_0, v34);

  return MEMORY[0x282200938](v0 + 80);
}

uint64_t sub_24B17B210()
{
  v1 = *(*v0 + 112);
  *(*v0 + 536) = v1;
  if (v1)
  {
    v2 = sub_24B17B5E8;
  }

  else
  {
    v2 = sub_24B17B320;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24B17B320()
{
  v19 = v0;
  v1 = *(v0 + 328);
  v2 = sub_24B2D3164();
  v3 = sub_24B2D5904();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v4 = 136315394;
    *(v4 + 4) = sub_24AFF321C(0xD000000000000035, 0x800000024B2DC2B0, &v18);
    *(v4 + 12) = 2112;
    *(v4 + 14) = v1;
    *v5 = v1;
    v7 = v1;
    _os_log_impl(&dword_24AFD2000, v2, v3, "%s - Did Finish - darkSnapshot %@", v4, 0x16u);
    sub_24B17B79C(v5);
    MEMORY[0x24C23D530](v5, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C23D530](v6, -1, -1);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  v8 = [*(v0 + 520) image];
  v9 = [v8 imageAsset];
  if (v9)
  {
    v10 = v9;
    v11 = *(v0 + 440);
    v12 = [v1 image];
    v13 = [v11 traitCollectionWithUserInterfaceStyle_];
    [v10 registerImage:v12 withTraitCollection:v13];
  }

  v14 = *(v0 + 528);
  v15 = *(v0 + 448);

  v16 = *(v0 + 8);

  return v16(v8);
}

uint64_t sub_24B17B56C()
{
  v1 = *(v0 + 448);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24B17B5E8()
{
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[56];
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

id sub_24B17B67C(id result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    return result;
  }

  return result;
}

void sub_24B17B688(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  if (a4)
  {
  }
}

void sub_24B17B6C8(id a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }
}

uint64_t sub_24B17B6E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_24B17B72C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24B17B79C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7BB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static GenericControl.Info.offerLocationMenu(compactTitleOnly:fromEmailDescription:forceInProgressState:forceDisabledState:action:)@<X0>(char a1@<W0>, unint64_t a2@<X1>, unint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v83 = a6;
  v84 = a7;
  v77 = a5;
  v78 = a4;
  v85 = a3;
  v81 = a2;
  v79 = a8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A68);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v72 - v10;
  v80 = MEMORY[0x277D84F90];
  if ((a1 & 1) == 0)
  {
    if (qword_27EFC7718 != -1)
    {
      swift_once();
    }

    v12 = sub_24B2D1454();
    v13 = __swift_project_value_buffer(v12, qword_27EFCDB30);
    v14 = *(v12 - 8);
    v15 = *(v14 + 16);
    v82 = v13;
    v76 = v15;
    v15(v11);
    v16 = *(v14 + 56);
    v16(v11, 0, 1, v12);
    v17 = sub_24B2D52D4();
    v19 = v18;
    sub_24B0C6490(v11);
    v20 = sub_24B006774(0, 1, 1, MEMORY[0x277D84F90]);
    v22 = *(v20 + 2);
    v21 = *(v20 + 3);
    v80 = v20;
    if (v22 >= v21 >> 1)
    {
      v80 = sub_24B006774((v21 > 1), v22 + 1, 1, v80);
    }

    v23 = v80;
    *(v80 + 2) = v22 + 1;
    v24 = &v23[16 * v22];
    *(v24 + 4) = v17;
    *(v24 + 5) = v19;
    v76(v11, v82, v12);
    v16(v11, 0, 1, v12);
    v25 = sub_24B2D52D4();
    v27 = v26;
    sub_24B0C6490(v11);
    v29 = *(v23 + 2);
    v28 = *(v23 + 3);
    if (v29 >= v28 >> 1)
    {
      v80 = sub_24B006774((v28 > 1), v29 + 1, 1, v80);
    }

    v30 = v80;
    *(v80 + 2) = v29 + 1;
    v31 = &v30[16 * v29];
    *(v31 + 4) = v25;
    *(v31 + 5) = v27;
  }

  if (qword_27EFC7718 != -1)
  {
    swift_once();
  }

  v32 = sub_24B2D1454();
  v33 = __swift_project_value_buffer(v32, qword_27EFCDB30);
  v34 = *(v32 - 8);
  v35 = *(v34 + 16);
  v35(v11, v33, v32);
  v82 = *(v34 + 56);
  v82(v11, 0, 1, v32);
  v36 = sub_24B2D52D4();
  v38 = v37;
  sub_24B0C6490(v11);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v80 = sub_24B006774(0, *(v80 + 2) + 1, 1, v80);
  }

  v40 = *(v80 + 2);
  v39 = *(v80 + 3);
  if (v40 >= v39 >> 1)
  {
    v80 = sub_24B006774((v39 > 1), v40 + 1, 1, v80);
  }

  v41 = v80;
  *(v80 + 2) = v40 + 1;
  v42 = &v41[16 * v40];
  *(v42 + 4) = v36;
  *(v42 + 5) = v38;
  v43 = v85;
  if (v85)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A78);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_24B2DE430;
    *(v44 + 56) = MEMORY[0x277D837D0];
    *(v44 + 64) = sub_24B075024();
    *(v44 + 32) = v81;
    *(v44 + 40) = v43;
    v35(v11, v33, v32);
    v82(v11, 0, 1, v32);

    v45 = sub_24B2D52D4();
    v75 = v46;
    v76 = v45;
  }

  else
  {
    v35(v11, v33, v32);
    v82(v11, 0, 1, v32);
    v47 = sub_24B2D52D4();
    v75 = v48;
    v76 = v47;
  }

  sub_24B0C6490(v11);
  v86 = v80;

  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7B90);
  sub_24B2D1A94();
  v74 = v94;
  v73 = v95;
  v97 = v96;
  v72 = v96;
  v93 = MEMORY[0x277D84F90];
  sub_24B007A5C(0, 3, 0);
  v49 = 0;
  v50 = v93;
  v81 = 0x800000024B2D9C80;
  while (1)
  {
    v91 = byte_285E48DD8[v49 + 32];
    v51 = v91;
    v52 = sub_24B17C1AC();
    if (v51 > 1)
    {
      if (v51 == 2)
      {
        v85 = 0xE800000000000000;
        v54 = 0x7974696E69666E69;
      }

      else
      {
        v54 = 0xD000000000000015;
        v85 = v81;
      }
    }

    else if (v51)
    {
      v85 = 0xE800000000000000;
      v54 = 0x7261646E656C6163;
    }

    else
    {
      v85 = 0xE500000000000000;
      v54 = 0x6B636F6C63;
    }

    v86 = v52;
    v87 = v53;
    sub_24B2D1AA4();
    v55 = v94;
    v56 = v95;
    v57 = v96;
    v92 = v96;
    v58 = swift_allocObject();
    *(v58 + 16) = v83;
    *(v58 + 24) = v84;
    *(v58 + 32) = v51;
    v93 = v50;
    v60 = *(v50 + 16);
    v59 = *(v50 + 24);

    if (v60 >= v59 >> 1)
    {
      sub_24B007A5C((v59 > 1), v60 + 1, 1);
      v50 = v93;
    }

    *(v50 + 16) = v60 + 1;
    v61 = v50 + (v60 << 6);
    *(v61 + 32) = v55;
    *(v61 + 40) = v56;
    *(v61 + 48) = v57;
    v62 = *&v90[3];
    *(v61 + 49) = *v90;
    *(v61 + 52) = v62;
    v63 = v85;
    *(v61 + 56) = v54;
    *(v61 + 64) = v63;
    *(v61 + 72) = 0;
    *(v61 + 74) = 0;
    LODWORD(v63) = v88;
    *(v61 + 79) = v89;
    *(v61 + 75) = v63;
    *(v61 + 80) = &unk_24B2EEDC0;
    *(v61 + 88) = v58;
    if (v49 == 2)
    {
      break;
    }

    ++v49;
  }

  v65 = v78;
  v66 = 0x10000;
  if ((v77 & 1) == 0)
  {
    v66 = 0;
  }

  v67 = v72 & 1;
  v68 = v79;
  v69 = v73;
  *v79 = v74;
  v68[1] = v69;
  v68[2] = v67;
  if (v65)
  {
    v70 = 0x8000000000000101;
  }

  else
  {
    v70 = 0x8000000000000001;
  }

  *(v68 + 3) = xmmword_24B2E4370;
  v68[5] = v70 | v66;
  v71 = v75;
  v68[6] = v76;
  v68[7] = v71;
  v68[8] = v50;
  return result;
}

uint64_t sub_24B17BFE0(int *a1, uint64_t a2, char a3)
{
  *(v3 + 16) = sub_24B2D5694();
  *(v3 + 24) = sub_24B2D5684();
  *(v3 + 40) = a3;
  v8 = (a1 + *a1);
  v6 = swift_task_alloc();
  *(v3 + 32) = v6;
  *v6 = v3;
  v6[1] = sub_24B02CD04;

  return v8(v3 + 40);
}

uint64_t sub_24B17C104()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24AFFD370;

  return sub_24B17BFE0(v2, v3, v4);
}

uint64_t sub_24B17C1AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A68);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  if (*v0 > 1u)
  {
    if (*v0 == 2)
    {
      if (qword_27EFC7718 == -1)
      {
        goto LABEL_9;
      }

      goto LABEL_10;
    }
  }

  else if (!*v0)
  {
    if (qword_27EFC7718 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (qword_27EFC7718 != -1)
  {
LABEL_10:
    swift_once();
  }

LABEL_9:
  v4 = sub_24B2D1454();
  v5 = __swift_project_value_buffer(v4, qword_27EFCDB30);
  v6 = *(v4 - 8);
  (*(v6 + 16))(v3, v5, v4);
  (*(v6 + 56))(v3, 0, 1, v4);
  v7 = sub_24B2D52D4();
  sub_24B0C6490(v3);
  return v7;
}

uint64_t OfferLocationDuration.hashValue.getter()
{
  v1 = *v0;
  sub_24B2D60E4();
  MEMORY[0x24C23C8D0](v1);
  return sub_24B2D6124();
}

unint64_t sub_24B17C550()
{
  result = qword_27EFCDB28;
  if (!qword_27EFCDB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCDB28);
  }

  return result;
}

uint64_t sub_24B17C5D8()
{
  v0 = sub_24B2D1454();
  __swift_allocate_value_buffer(v0, qword_27EFCDB30);
  __swift_project_value_buffer(v0, qword_27EFCDB30);
  type metadata accessor for UIPeopleModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  return sub_24B2D1434();
}

uint64_t static FindMyLocalizationTable.uiPeople.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFC7718 != -1)
  {
    swift_once();
  }

  v2 = sub_24B2D1454();
  v3 = __swift_project_value_buffer(v2, qword_27EFCDB30);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24B17C71C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDB48);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_24B008890(a1, &v10 - v5, &qword_27EFCDB48);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC12FindMyUICore16ContactsProvider_subscriptionsStorage;
  swift_beginAccess();
  sub_24B17C8BC(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t sub_24B17C7F4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12FindMyUICore16ContactsProvider_subscriptionsStorage;
  swift_beginAccess();
  return sub_24B008890(v1 + v3, a1, &qword_27EFCDB48);
}

uint64_t sub_24B17C85C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12FindMyUICore16ContactsProvider_subscriptionsStorage;
  swift_beginAccess();
  sub_24B17C8BC(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_24B17C8BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDB48);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B17C98C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC12FindMyUICore16ContactsProvider_dataStorage;
  swift_beginAccess();
  v5 = *v3;
  v4 = *(v3 + 8);
  v6 = *(v3 + 16);
  v8 = *(v3 + 24);
  v7 = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v8;
  *(a2 + 32) = v7;
}

uint64_t sub_24B17CA0C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v5 = a1[3];
  v6 = a1[4];
  v7 = *a2 + OBJC_IVAR____TtC12FindMyUICore16ContactsProvider_dataStorage;
  swift_beginAccess();
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
}

uint64_t sub_24B17CAC4@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC12FindMyUICore16ContactsProvider_dataStorage);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v3 + 16);
  v8 = v3[3];
  v7 = v3[4];
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 32) = v7;
}

uint64_t sub_24B17CB40(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = v1 + OBJC_IVAR____TtC12FindMyUICore16ContactsProvider_dataStorage;
  swift_beginAccess();
  *v6 = v3;
  *(v6 + 8) = v4;
  *(v6 + 16) = v5;
  *(v6 + 24) = *(a1 + 3);
}

uint64_t sub_24B17CC44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v36 = a2;
  v5 = sub_24B2D24A4();
  v35 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v34 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDB50);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB688);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v33 - v14;
  v16 = v2 + OBJC_IVAR____TtC12FindMyUICore16ContactsProvider_dataStorage;
  swift_beginAccess();
  v17 = *(v16 + 24);
  if (*(v17 + 16))
  {

    v18 = sub_24B181540(a1);
    if (v19)
    {
      v20 = v18;
      v33[0] = a1;
      v21 = v5;
      v22 = *(v17 + 56);
      v23 = type metadata accessor for ContactsProvider.ContactState(0);
      v24 = *(v23 - 8);
      v33[1] = v3;
      v25 = v24;
      v26 = v22 + *(v24 + 72) * v20;
      v5 = v21;
      a1 = v33[0];
      sub_24B183364(v26, v9, type metadata accessor for ContactsProvider.ContactState);

      (*(v25 + 56))(v9, 0, 1, v23);
      goto LABEL_6;
    }
  }

  v23 = type metadata accessor for ContactsProvider.ContactState(0);
  (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
LABEL_6:
  type metadata accessor for ContactsProvider.ContactState(0);
  if ((*(*(v23 - 8) + 48))(v9, 1, v23))
  {
    sub_24AFF8258(v9, &qword_27EFCDB50);
    v27 = sub_24B2D1494();
    (*(*(v27 - 8) + 56))(v15, 1, 1, v27);
LABEL_9:
    sub_24AFF8258(v15, &qword_27EFCB688);
    sub_24B186964();
    v29 = v36;
    sub_24B2D14A4();
    sub_24B2D1494();
    v30 = *(v27 - 8);
    (*(v30 + 16))(v12, v29, v27);
    (*(v30 + 56))(v12, 0, 1, v27);
    v31 = v34;
    sub_24B2D2494();
    sub_24B17F6E0(v12, a1, v31);
    (*(v35 + 8))(v31, v5);
    return sub_24AFF8258(v12, &qword_27EFCB688);
  }

  sub_24B008890(&v9[*(v23 + 20)], v15, &qword_27EFCB688);
  sub_24AFF8258(v9, &qword_27EFCDB50);
  v27 = sub_24B2D1494();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v15, 1, v27) == 1)
  {
    goto LABEL_9;
  }

  return (*(v28 + 32))(v36, v15, v27);
}

uint64_t ContactsProvider.__allocating_init(dependencies:)(__int128 *a1)
{
  v2 = swift_allocObject();
  ContactsProvider.init(dependencies:)(a1);
  return v2;
}

_OWORD *ContactsProvider.init(dependencies:)(__int128 *a1)
{
  v2 = v1;
  v4 = sub_24B2D2504();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDB58);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - v6;
  swift_defaultActor_initialize();
  v8 = v2 + OBJC_IVAR____TtC12FindMyUICore16ContactsProvider_subscriptionsStorage;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDB48);
  v10 = v9[9];
  v11 = MEMORY[0x277D84F90];
  *&v8[v10] = sub_24B193A40(MEMORY[0x277D84F90]);
  *&v8[v9[10]] = MEMORY[0x277D84FA0];
  v8[v9[11]] = 0;
  sub_24B2D3174();
  v12 = v2 + OBJC_IVAR____TtC12FindMyUICore16ContactsProvider_dataStorage;
  *(v12 + 3) = sub_24B193A68(v11);
  v12[16] = 0;
  *(v12 + 4) = sub_24B1933E8(v11);
  *v12 = 0xD000000000000010;
  *(v12 + 1) = 0x800000024B2EEE70;
  v13 = OBJC_IVAR____TtC12FindMyUICore16ContactsProvider_taskQueue;
  sub_24B2D12D4();
  v14 = sub_24B2D1294();
  v15 = *(*(v14 - 8) + 56);
  v16 = *a1;
  v20 = a1[1];
  v21 = v16;
  v19 = a1[2];
  v15(v7, 1, 1, v14);
  sub_24B2D24F4();
  *(v2 + v13) = sub_24B2D12B4();
  *(v2 + OBJC_IVAR____TtC12FindMyUICore16ContactsProvider_valuePublisher) = 0;
  v17 = v20;
  v2[7] = v21;
  v2[8] = v17;
  v2[9] = v19;
  return v2;
}

uint64_t sub_24B17D404()
{
  v1[19] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  v1[20] = swift_task_alloc();
  v2 = sub_24B2D3184();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B17D4FC, v0, 0);
}

uint64_t sub_24B17D4FC()
{
  v29 = v0;
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v4 = v0[19];
  v5 = OBJC_IVAR____TtC12FindMyUICore16ContactsProvider_subscriptionsStorage;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);

  v6 = sub_24B2D3164();
  v7 = sub_24B2D5934();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[22];
    v8 = v0[23];
    v10 = v0[21];
    v11 = v0[19];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28 = v13;
    *v12 = 136315394;
    v0[18] = v11;
    v14 = sub_24B2D53C4();
    v16 = sub_24AFF321C(v14, v15, &v28);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_24AFF321C(0xD000000000000018, 0x800000024B2DC550, &v28);
    _os_log_impl(&dword_24AFD2000, v6, v7, "ContactsProvider%s: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v13, -1, -1);
    MEMORY[0x24C23D530](v12, -1, -1);

    (*(v9 + 8))(v8, v10);
  }

  else
  {
    v18 = v0[22];
    v17 = v0[23];
    v19 = v0[21];

    (*(v18 + 8))(v17, v19);
  }

  v20 = v0[19];
  v21 = OBJC_IVAR____TtC12FindMyUICore16ContactsProvider_valuePublisher;
  v0[24] = OBJC_IVAR____TtC12FindMyUICore16ContactsProvider_valuePublisher;
  if (*(v20 + v21))
  {

    sub_24B2D5764();

    v22 = v0[19];
  }

  else
  {
    v22 = v20;
  }

  *(v20 + v21) = 0;

  v23 = v22 + OBJC_IVAR____TtC12FindMyUICore16ContactsProvider_dataStorage;
  swift_beginAccess();
  v24 = *(v23 + 16);
  *(v23 + 16) = 0;
  sub_24B1F422C(v24);
  swift_endAccess();
  v27 = (*(v22 + 144) + **(v22 + 144));
  v25 = swift_task_alloc();
  v0[25] = v25;
  *v25 = v0;
  v25[1] = sub_24B17D850;

  return v27(v0 + 2);
}

uint64_t sub_24B17D850()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 152);
  if (v0)
  {
    v4 = sub_24B17DAFC;
  }

  else
  {
    v4 = sub_24B17D97C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24B17D97C()
{
  v1 = *(v0 + 192);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v4 = sub_24B2D56D4();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_24B0C43AC(v0 + 16, v0 + 56);
  v5 = sub_24B18315C(&qword_27EFCDB68, type metadata accessor for ContactsProvider);
  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = v5;
  sub_24B07F7D0((v0 + 56), (v6 + 4));
  v6[9] = v3;
  swift_retain_n();
  v7 = sub_24B00A9A4(0, 0, v2, &unk_24B2EF028, v6);
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  *(v3 + v1) = v7;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_24B17DAFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B17DB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v7 = sub_24B2D24A4();
  v5[17] = v7;
  v5[18] = *(v7 - 8);
  v5[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v8 = sub_24B2D1494();
  v5[22] = v8;
  v5[23] = *(v8 - 8);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDBB8);
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDBE0);
  v5[28] = swift_task_alloc();
  v9 = type metadata accessor for ContactsProvider.Subscription(0);
  v5[29] = v9;
  v5[30] = *(v9 - 8);
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B17DDD8, a5, 0);
}

uint64_t sub_24B17DDD8()
{
  v1 = v0[15];
  v2 = v1[3];
  v3 = __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v2 - 8);
  v5 = swift_task_alloc();
  (*(v4 + 16))(v5, v3, v2);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  sub_24B2D57B4();

  v6 = sub_24B18315C(&qword_27EFCDB68, type metadata accessor for ContactsProvider);
  v0[35] = v6;
  v7 = v0[16];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v8 = swift_task_alloc();
  v0[36] = v8;
  *v8 = v0;
  v8[1] = sub_24B17DFD4;

  return MEMORY[0x282200310](v0 + 11, v7, v6);
}

uint64_t sub_24B17DFD4()
{
  v2 = *v1;

  if (!v0)
  {
    v4 = *(v2 + 128);

    return MEMORY[0x2822009F8](sub_24B17E0E4, v4, 0);
  }

  return result;
}

uint64_t sub_24B17E0E4(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = (v3 + 11);
  v4 = v3[11];
  v6 = (v3 + 2);
  if (!v4)
  {
    __swift_destroy_boxed_opaque_existential_0(v6);

    v99 = v3[1];

    return v99();
  }

  v7 = MEMORY[0x277D84FA0];
  v3[12] = MEMORY[0x277D84FA0];
  v3[13] = v7;
  v132 = *(v4 + 16);
  if (!v132)
  {

    v9 = MEMORY[0x277D84F98];
    v101 = MEMORY[0x277D84FA0];
    if (!*(MEMORY[0x277D84FA0] + 16))
    {
LABEL_81:

LABEL_82:
      v116 = v3[18];
      v117 = v3[19];
      v118 = v3[17];
      v119 = v3[13];
      sub_24B2D2494();
      sub_24B17FD48(v9, v119, v117);

      (*(v116 + 8))(v117, v118);
      v120 = v3[35];
      v121 = v3[16];
      __swift_mutable_project_boxed_opaque_existential_1((v3 + 2), v3[5]);
      v122 = swift_task_alloc();
      v3[36] = v122;
      *v122 = v3;
      v122[1] = sub_24B17DFD4;
      v6 = v5;
      a2 = v121;
      a3 = v120;

      return MEMORY[0x282200310](v6, a2, a3);
    }

LABEL_71:
    v102 = v9;
    v103 = v3[35];
    v105 = v3[20];
    v104 = v3[21];
    v106 = v3[16];
    v107 = sub_24B2D56D4();
    v108 = *(v107 - 8);
    (*(v108 + 56))(v104, 1, 1, v107);
    v109 = swift_allocObject();
    v109[2] = v106;
    v109[3] = v103;
    v109[4] = v106;
    v109[5] = v101;
    sub_24B008890(v104, v105, &qword_27EFC8580);
    LODWORD(v104) = (*(v108 + 48))(v105, 1, v107);
    swift_retain_n();

    v110 = v3[20];
    if (v104 == 1)
    {
      sub_24AFF8258(v3[20], &qword_27EFC8580);
    }

    else
    {
      sub_24B2D56C4();
      (*(v108 + 8))(v110, v107);
    }

    v111 = v109[2];
    swift_unknownObjectRetain();

    v9 = v102;
    if (v111)
    {
      swift_getObjectType();
      v112 = sub_24B2D5604();
      v114 = v113;
      swift_unknownObjectRelease();
    }

    else
    {
      v112 = 0;
      v114 = 0;
    }

    v5 = (v3 + 11);
    sub_24AFF8258(v3[21], &qword_27EFC8580);
    v115 = swift_allocObject();
    *(v115 + 16) = &unk_24B2EF038;
    *(v115 + 24) = v109;
    if (v114 | v112)
    {
      v3[7] = 0;
      v3[8] = 0;
      v3[9] = v112;
      v3[10] = v114;
    }

    swift_task_create();

    goto LABEL_82;
  }

  v8 = 0;
  v133 = v4 + 32;
  v9 = MEMORY[0x277D84F98];
  v131 = v4;
  while (1)
  {
    if (v8 >= *(v4 + 16))
    {
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    v10 = (v133 + 16 * v8);
    v11 = *v10;
    v12 = *(v10 + 8);
    v136 = v11;
    if (!v12)
    {
      v83 = *(v11 + 16);
      if (v83)
      {
        v84 = v8;
        v85 = v3[30];
        v86 = v11 + ((*(v85 + 80) + 32) & ~*(v85 + 80));

        v87 = *(v85 + 72);
        do
        {
          v89 = v3[33];
          v88 = v3[34];
          sub_24B183364(v86, v88, type metadata accessor for ContactsProvider.Subscription);
          sub_24B1ACEA4(v89, v88);
          sub_24B1830FC(v89, type metadata accessor for ContactsProvider.Subscription);
          v86 += v87;
          --v83;
        }

        while (v83);

        v4 = v131;
        v8 = v84;
      }

      goto LABEL_4;
    }

    if (v12 == 1)
    {
      break;
    }

    v90 = *(v11 + 16);
    if (v90)
    {
      v91 = v8;
      v92 = v9;
      v93 = v3[30];
      v94 = v11 + ((*(v93 + 80) + 32) & ~*(v93 + 80));

      v95 = *(v93 + 72);
      v96 = v5;
      do
      {
        v97 = v3[33];
        v98 = v3[31];
        sub_24B183364(v94, v98, type metadata accessor for ContactsProvider.Subscription);
        sub_24B1ACEA4(v97, v98);
        sub_24B1830FC(v97, type metadata accessor for ContactsProvider.Subscription);
        v94 += v95;
        --v90;
      }

      while (v90);

      v5 = v96;
      v9 = v92;
      v4 = v131;
      v8 = v91;
    }

LABEL_4:
    if (++v8 == v132)
    {

      v101 = *(v5 + 1);
      if (!*(v101 + 16))
      {
        goto LABEL_81;
      }

      goto LABEL_71;
    }
  }

  v130 = v8;
  swift_bridgeObjectRetain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 3) = v9;
  v135 = v11 + 64;
  v14 = -1 << *(v11 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(v11 + 64);
  v134 = (63 - v14) >> 6;

  v17 = 0;
  while (2)
  {
    v141 = v9;
    v139 = isUniquelyReferenced_nonNull_native;
    if (!v16)
    {
      if (v134 <= v17 + 1)
      {
        v22 = v17 + 1;
      }

      else
      {
        v22 = v134;
      }

      while (1)
      {
        v21 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v21 >= v134)
        {
          v138 = v22 - 1;
          v68 = v3[27];
          v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDBC0);
          (*(*(v69 - 8) + 56))(v68, 1, 1, v69);
          v16 = 0;
          goto LABEL_23;
        }

        v16 = *(v135 + 8 * v21);
        ++v17;
        if (v16)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    v21 = v17;
LABEL_22:
    v23 = v3[33];
    v24 = v3[27];
    v25 = v3[25];
    v137 = v25;
    v27 = v3[22];
    v26 = v3[23];
    v28 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v29 = v28 | (v21 << 6);
    sub_24B183364(*(v136 + 48) + *(v3[30] + 72) * v29, v23, type metadata accessor for ContactsProvider.Subscription);
    (*(v26 + 16))(v25, *(v136 + 56) + *(v26 + 72) * v29, v27);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDBC0);
    v31 = *(v30 + 48);
    sub_24B1832FC(v23, v24, type metadata accessor for ContactsProvider.Subscription);
    (*(v26 + 32))(v24 + v31, v137, v27);
    (*(*(v30 - 8) + 56))(v24, 0, 1, v30);
    v138 = v21;
LABEL_23:
    v32 = v3[26];
    sub_24B182F1C(v3[27], v32);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDBC0);
    v34 = (*(*(v33 - 8) + 48))(v32, 1, v33);
    v35 = v3[28];
    if (v34 == 1)
    {
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDBE8);
      (*(*(v36 - 8) + 56))(v35, 1, 1, v36);
    }

    else
    {
      v37 = v3[26];
      v39 = v3[22];
      v38 = v3[23];
      v40 = *(v33 + 48);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDBE8);
      v42 = *(v41 + 48);
      sub_24B183364(v37, v35, type metadata accessor for ContactsProvider.Subscription);
      (*(v38 + 16))(v35 + v42, v37 + v40, v39);
      sub_24AFF8258(v37, &qword_27EFCDBC0);
      (*(*(v41 - 8) + 56))(v35, 0, 1, v41);
    }

    v43 = v3[28];
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDBE8);
    if ((*(*(v44 - 8) + 48))(v43, 1, v44) == 1)
    {
      swift_bridgeObjectRelease_n();

      v5 = (v3 + 11);
      v9 = v141;
      v8 = v130;
      v4 = v131;
      goto LABEL_4;
    }

    v45 = v3[32];
    v46 = v3[23];
    v47 = v3[24];
    v48 = v3[22];
    v49 = *(v44 + 48);
    sub_24B1832FC(v43, v45, type metadata accessor for ContactsProvider.Subscription);
    v50 = *(v46 + 32);
    v50(v47, v43 + v49, v48);
    v51 = sub_24B181540(v45);
    v52 = *(v141 + 16);
    v53 = (a2 & 1) == 0;
    v6 = (v52 + v53);
    if (__OFADD__(v52, v53))
    {
      goto LABEL_86;
    }

    v54 = a2;
    if (*(v141 + 24) < v6)
    {
      v55 = v3[32];
      sub_24B1C4A10(v6, v139 & 1);
      v56 = v3[14];
      v57 = sub_24B181540(v55);
      if ((v54 & 1) != (v58 & 1))
      {

        return sub_24B2D6054();
      }

      v51 = v57;
      v59 = v3[32];
      if ((v54 & 1) == 0)
      {
LABEL_34:
        v60 = v3[30];
        v62 = v3[23];
        v61 = v3[24];
        v63 = v50;
        v64 = v3[22];
        *(v56 + 8 * (v51 >> 6) + 64) |= 1 << v51;
        sub_24B1832FC(v59, *(v56 + 48) + *(v60 + 72) * v51, type metadata accessor for ContactsProvider.Subscription);
        v6 = v63(*(v56 + 56) + *(v62 + 72) * v51, v61, v64);
        v65 = *(v56 + 16);
        v66 = __OFADD__(v65, 1);
        v67 = v65 + 1;
        if (v66)
        {
          goto LABEL_87;
        }

        *(v56 + 16) = v67;
        goto LABEL_13;
      }

LABEL_12:
      v18 = v3[23];
      v19 = v3[24];
      v20 = v3[22];
      sub_24B1830FC(v59, type metadata accessor for ContactsProvider.Subscription);
      v6 = (*(v18 + 40))(*(v56 + 56) + *(v18 + 72) * v51, v19, v20);
LABEL_13:
      isUniquelyReferenced_nonNull_native = 1;
      v17 = v138;
      v9 = v56;
      continue;
    }

    break;
  }

  if (v139)
  {
    v56 = v141;
    v59 = v3[32];
    if ((a2 & 1) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_12;
  }

  v124 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDBF0);
  v70 = sub_24B2D5DC4();
  v56 = v70;
  v71 = *(v141 + 16);
  if (!v71)
  {
LABEL_53:

    v3[14] = v56;
    v50 = v124;
    v59 = v3[32];
    if ((v54 & 1) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_12;
  }

  v6 = (v70 + 64);
  a2 = (v141 + 64);
  v72 = ((1 << *(v56 + 32)) + 63) >> 6;
  if (v56 != v141 || v6 >= &a2[8 * v72])
  {
    v6 = memmove(v6, a2, 8 * v72);
    v71 = *(v141 + 16);
  }

  v73 = 0;
  *(v56 + 16) = v71;
  v74 = 1 << *(v141 + 32);
  if (v74 < 64)
  {
    v75 = ~(-1 << v74);
  }

  else
  {
    v75 = -1;
  }

  v76 = v75 & *(v141 + 64);
  v77 = (v74 + 63) >> 6;
  v123 = v77;
  if (v76)
  {
    do
    {
      v140 = (v76 - 1) & v76;
      v78 = __clz(__rbit64(v76)) | (v73 << 6);
      v79 = v141;
LABEL_51:
      v128 = v3[33];
      v129 = v3[25];
      v82 = v3[23];
      v126 = v3[22];
      v127 = *(v3[30] + 72) * v78;
      sub_24B183364(*(v79 + 48) + v127, v128, type metadata accessor for ContactsProvider.Subscription);
      v125 = *(v82 + 72) * v78;
      (*(v82 + 16))(v129, *(v79 + 56) + v125, v126);
      sub_24B1832FC(v128, *(v56 + 48) + v127, type metadata accessor for ContactsProvider.Subscription);
      v6 = (v124)(*(v56 + 56) + v125, v129, v126);
      v76 = v140;
      v77 = v123;
    }

    while (v140);
  }

  v80 = v73;
  v79 = v141;
  while (1)
  {
    v73 = v80 + 1;
    if (__OFADD__(v80, 1))
    {
      break;
    }

    if (v73 >= v77)
    {
      goto LABEL_53;
    }

    v81 = *(v141 + 64 + 8 * v73);
    ++v80;
    if (v81)
    {
      v140 = (v81 - 1) & v81;
      v78 = __clz(__rbit64(v81)) | (v73 << 6);
      goto LABEL_51;
    }
  }

LABEL_89:
  __break(1u);
  return MEMORY[0x282200310](v6, a2, a3);
}

uint64_t sub_24B17EF28()
{
  v1 = OBJC_IVAR____TtC12FindMyUICore16ContactsProvider_valuePublisher;
  if (*(v0 + OBJC_IVAR____TtC12FindMyUICore16ContactsProvider_valuePublisher))
  {

    sub_24B2D5764();
  }

  *(v0 + v1) = 0;

  v2 = v0 + OBJC_IVAR____TtC12FindMyUICore16ContactsProvider_dataStorage;
  swift_beginAccess();
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;
  sub_24B1F422C(v3);
  return swift_endAccess();
}