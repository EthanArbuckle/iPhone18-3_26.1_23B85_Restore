Swift::Void __swiftcall InteractionSummaryOverviewViewController.viewControllerDidLeaveAdaptiveModal()()
{
  v1 = [v0 navigationItem];
  [v1 setRightBarButtonItem_];

  v2 = [v0 navigationItem];
  [v2 setLeftBarButtonItem_];
}

void sub_228275E50(void *a1)
{
  v3 = a1;
  v1 = [v3 navigationItem];
  [v1 setRightBarButtonItem_];

  v2 = [v3 navigationItem];
  [v2 setLeftBarButtonItem_];
}

void sub_228275EE8()
{
  *(v0 + qword_27D8264F0) = 0;
  *(v0 + qword_27D8264F8) = 0;
  *(v0 + qword_27D826500) = 0;
  v1 = (v0 + qword_27D826508);
  v2 = *MEMORY[0x277D12788];
  v4 = sub_228392000();
  v5 = v3;

  MEMORY[0x22AAB5C80](0xD000000000000025, 0x80000002283AE9C0);

  *v1 = v4;
  v1[1] = v5;
  sub_228393300();
  __break(1u);
}

uint64_t sub_228276010(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_22817A958(0, &qword_280DDB9F0, 0x277D11550);
    sub_22818C470(&qword_280DDB9E8, &qword_280DDB9F0, 0x277D11550);
    v4 = sub_228392480();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_2282760F4(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_2283930D0();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_2281DB0C4(v3, 0);
  sub_2281D9D24((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

id sub_228276188()
{
  v1 = qword_27D826578;
  v2 = *(v0 + qword_27D826578);
  if (v2)
  {
    v3 = *(v0 + qword_27D826578);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D11510]) initWithHealthStore_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void *sub_22827620C()
{
  v1 = qword_27D826580;
  if (*(v0 + qword_27D826580))
  {
    v2 = *(v0 + qword_27D826580);
  }

  else
  {
    v3 = *(v0 + qword_27D826568);
    sub_228390890();
    v4 = v3;
    v5 = v0;
    sub_228390880();
    sub_228390830();

    sub_22817A958(0, &qword_280DDBAF0, 0x277CBEBD0);
    sub_2283925F0();
    v6 = sub_2283907E0();
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = sub_228390700();
    type metadata accessor for MedicationsInteractionEngine();
    swift_allocObject();
    v2 = sub_228191FE8(v4, v9);

    v10 = *(v5 + v1);
    *(v5 + v1) = v2;
  }

  return v2;
}

uint64_t sub_228276338(uint64_t a1)
{
  v2 = sub_2283900D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    sub_228390040();
  }

  else
  {
    sub_228390010();
  }

  v7 = sub_228390090();
  *(v8 + 16) = 0x4024000000000000;
  v7(v11, 0);
  v9 = sub_2283900C0();
  (*(v3 + 8))(v6, v2);
  return v9;
}

uint64_t sub_228276454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v9 = MEMORY[0x277CBCEA8];
  sub_22827C15C(0, &qword_280DDBC28, MEMORY[0x277CBCEA8]);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();

  sub_2283918F0();
  sub_22827A238(&qword_280DDBC30, &qword_280DDBC28, v9);
  v13 = sub_228391990();

  *a4 = v13;
  return result;
}

void sub_228276590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  v9 = sub_228276188();

  sub_2282B96E4(v10);

  sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  sub_22818C470(&qword_280DDB9D8, &qword_280DDB9E0, 0x277D115B8);
  v11 = sub_228392470();

  if (a5)
  {
    sub_22817A958(0, &qword_280DDB960, 0x277CCABB0);
    sub_22818C470(&qword_280DDB958, &qword_280DDB960, 0x277CCABB0);
    a5 = sub_228392470();
  }

  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = sub_22818DEBC;
  v13[4] = v8;
  v15[4] = sub_22827C1E4;
  v15[5] = v13;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_228276010;
  v15[3] = &block_descriptor_14;
  v14 = _Block_copy(v15);

  [v9 interactionResultsForMedications:v11 lifestyleFactors:a5 completion:v14];
  _Block_release(v14);
}

uint64_t sub_2282767E0(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

uint64_t sub_228276820(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a2)
    {
      v8 = a2;
      (a4)(a2, 1);
    }

    v9 = *(result + qword_27D826558);
    if (!v9)
    {
      if (a1)
      {
        v16 = a1;
      }

      else if (MEMORY[0x277D84F90] >> 62 && sub_2283930D0())
      {
        sub_2281F01B4(MEMORY[0x277D84F90]);
        v16 = v19;
      }

      else
      {
        v16 = MEMORY[0x277D84FA0];
      }

      v18 = sub_2282B9214(v16);

      (a4)(v18, 0);
    }

    v10 = v9;
    v11 = [v10 firstConceptIdentifier];
    if (v11)
    {
      if (a1)
      {
        v12 = v11;

        v14 = sub_22827B68C(v13, v12);

        v15 = sub_2282B9214(v14);

        (a4)(v15, 0);
      }

      v17 = v11;
      sub_2282760F4(MEMORY[0x277D84F90]);
      a4();
    }

    else
    {
      sub_2282760F4(MEMORY[0x277D84F90]);
      a4();
    }
  }

  return result;
}

uint64_t sub_228276A44()
{
  v1 = v0;
  sub_228279E50();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v75 = v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22824E8E4();
  v58 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228279EA8();
  v11 = *(v10 - 8);
  v61 = v10;
  v62 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228279FF0();
  v16 = *(v15 - 8);
  v64 = v15;
  v65 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22827A27C();
  v21 = *(v20 - 8);
  v66 = v20;
  v67 = v21;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v59 = v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22827A340();
  v25 = *(v24 - 8);
  v68 = v24;
  v69 = v25;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v60 = v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22827A3EC();
  v29 = *(v28 - 8);
  v71 = v28;
  v72 = v29;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v63 = v57 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22827A480();
  v33 = *(v32 - 8);
  v73 = v32;
  v74 = v33;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  v70 = v57 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(v0 + qword_27D826560);
  v76 = sub_2283906C0();
  v37 = MEMORY[0x277D77BE8];
  sub_22824EB00(0, &qword_27D824108, MEMORY[0x277D77BE8]);
  sub_22818DF04(0, &qword_280DDBB50, &qword_280DDB9E0, 0x277D115B8);
  sub_228279FA0(&qword_27D827D00, &qword_27D824108, v37);
  sub_2283919A0();

  v38 = sub_22827620C()[5];

  v76 = v38;
  sub_22824EB00(0, &qword_27D825DC8, sub_2281930F4);
  v57[1] = MEMORY[0x277CBCB10];
  sub_22827993C(&qword_27D825DD0, sub_22824E8E4);
  sub_228279FA0(&qword_27D825DD8, &qword_27D825DC8, sub_2281930F4);
  v39 = v58;
  sub_2283919E0();

  (*(v6 + 8))(v9, v39);
  v40 = swift_allocObject();
  *(v40 + 16) = sub_22827A580;
  *(v40 + 24) = v1;

  sub_2283917E0();
  v41 = MEMORY[0x277CBCD88];
  sub_22827C15C(0, &qword_280DDBC70, MEMORY[0x277CBCD88]);
  sub_22827993C(&qword_27D8265D8, sub_228279EA8);
  sub_22827A238(&qword_280DDBC78, &qword_280DDBC70, v41);
  v42 = v61;
  sub_228391AF0();

  (*(v62 + 8))(v14, v42);
  sub_22818DF04(0, &qword_280DDBB68, &qword_280DDB9F0, 0x277D11550);
  sub_22827993C(&qword_27D8265F0, sub_228279FF0);
  v43 = v59;
  v44 = v64;
  sub_2283919A0();
  (*(v65 + 8))(v19, v44);
  v45 = swift_allocObject();
  *(v45 + 16) = sub_22827A5C0;
  *(v45 + 24) = v1;
  sub_22827A0FC();

  v46 = v60;
  v47 = v66;
  sub_2283916C0();

  (*(v67 + 8))(v43, v47);
  v76 = 0;
  sub_22827993C(&qword_27D826608, sub_22827A340);
  v48 = v63;
  v49 = v68;
  sub_2283919B0();
  (*(v69 + 8))(v46, v49);
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v50 = sub_228392790();
  v76 = v50;
  v51 = sub_228392730();
  v52 = v75;
  (*(*(v51 - 8) + 56))(v75, 1, 1, v51);
  sub_22827993C(&qword_27D826618, sub_22827A3EC);
  sub_22818C470(&qword_280DDBAC0, &qword_280DDCEE0, 0x277D85C78);
  v54 = v70;
  v53 = v71;
  sub_228391A70();
  sub_22827B07C(v52, sub_228279E50);

  (*(v72 + 8))(v48, v53);
  swift_allocObject();
  swift_weakInit();
  sub_22827993C(&qword_27D826620, sub_22827A480);
  v55 = v73;
  sub_228391AC0();

  (*(v74 + 8))(v54, v55);
  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

uint64_t sub_2282774A8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v25 = a2;
  sub_22827C090();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = v6[8];
  MEMORY[0x28223BE20](v4);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
  {
    v21 = v9;
    v22 = v6;
    v23 = v5;
    v11 = 0;
    v9 = (a1 & 0xC000000000000001);
    v6 = &off_2785F4000;
    while (1)
    {
      if (v9)
      {
        v12 = MEMORY[0x22AAB6D80](v11, a1);
      }

      else
      {
        if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v12 = *(a1 + 8 * v11 + 32);
      }

      v13 = v12;
      v5 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v14 = [v12 firstOntologyCoding];
      if (v14)
      {

        sub_228393210();
        v15 = *(v26 + 16);
        sub_228393250();
        sub_228393260();
        sub_228393220();
      }

      else
      {
      }

      ++v11;
      if (v5 == i)
      {
        v16 = v26;
        v6 = v22;
        v5 = v23;
        v9 = v21;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v16 = MEMORY[0x277D84F90];
LABEL_18:
  v17 = swift_allocObject();
  v17[2] = v24;
  v17[3] = v16;
  v17[4] = v25;
  v18 = MEMORY[0x277CBCD88];
  sub_22827C15C(0, &qword_280DDBC70, MEMORY[0x277CBCD88]);
  sub_22827A238(&qword_280DDBC78, &qword_280DDBC70, v18);

  sub_228391900();
  sub_22827993C(&qword_280DDBC10, sub_22827C090);
  v19 = sub_228391990();
  (v6[1])(v9, v5);
  return v19;
}

uint64_t sub_228277790@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1, a1[1]);
  *a3 = result;
  return result;
}

uint64_t sub_2282777CC(unint64_t a1)
{
  v14 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x22AAB6D80](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v7 = [v4 interactions];
      sub_22817A958(0, &qword_280DDBA10, 0x277D11518);
      sub_22818C470(&qword_280DDBA08, &qword_280DDBA10, 0x277D11518);
      v8 = sub_228392480();

      v9 = swift_allocObject();
      swift_weakInit();
      v10 = sub_22827BE18(v8, v9);

      if ((v10 & 0xC000000000000001) != 0)
      {
        v11 = sub_2283930D0();
      }

      else
      {
        v11 = *(v10 + 16);
      }

      if (v11)
      {
        sub_228393210();
        v12 = *(v14 + 16);
        sub_228393250();
        sub_228393260();
        sub_228393220();
      }

      else
      {
      }

      if (v6 == i)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2282779EC(unint64_t *a1)
{
  v60 = sub_22838F4A0();
  v2 = *(v60 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v60);
  v58 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_22838FEF0();
  v61 = *(v59 - 8);
  v5 = *(v61 + 64);
  MEMORY[0x28223BE20](v59);
  v54 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_228391590();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = *(Strong + qword_27D826560);
    v15 = sub_228390660();
    v16 = sub_2281BFC2C(v15);

    if (v16)
    {
      v56 = *(v13 + qword_27D826598);
      v17 = *(v13 + qword_27D826568);
      *&v57 = *(v13 + qword_27D826570);
      v55 = *(v13 + qword_27D8265A8);
      v18 = MEMORY[0x277D84F90];
      v63[0] = MEMORY[0x277D84F90];
      v53 = v13;
      if (v11)
      {
        v52 = v2;
        if (v11 >> 62)
        {
          goto LABEL_35;
        }

        for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2283930D0())
        {

          v20 = v17;

          if (!i)
          {
            break;
          }

          v51 = v10;
          v13 = 0;
          v17 = 0;
          v18 = v11 & 0xC000000000000001;
          while (1)
          {
            if (v18)
            {
              v21 = MEMORY[0x22AAB6D80](v13, v11);
            }

            else
            {
              if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_34;
              }

              v21 = *(v11 + 8 * v13 + 32);
            }

            v10 = v21;
            v22 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
              break;
            }

            *&v67 = v21;
            sub_2282783C0(&v67, v56, v16, v20, v57, v55, v63);

            ++v13;
            if (v22 == i)
            {
              v24 = v63[0];
              v18 = MEMORY[0x277D84F90];
              v13 = v53;
              goto LABEL_20;
            }
          }

          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          ;
        }

        v24 = MEMORY[0x277D84F90];
LABEL_20:

        Array<A>.deduped()(v24);

        *&v67 = sub_2281D93B8(v26);
        sub_2281D7724(&v67);

        v27 = v67;

        sub_228321CC4(0xD000000000000015, 0x80000002283AFAD0, v56);
        if (qword_280DDCF18 != -1)
        {
          swift_once();
        }

        sub_22838F0C0();

        sub_228391500();
        v28 = sub_22838FB60();
        v29 = *(v28 + 48);
        v30 = *(v28 + 52);
        swift_allocObject();
        v31 = sub_22838FB50();
        *(&v68 + 1) = v28;
        v69 = sub_22827993C(&qword_27D826640, MEMORY[0x277D10E18]);
        *&v67 = v31;

        v25 = sub_22819643C(v27);

        v2 = v52;
      }

      else
      {

        v69 = 0;
        v67 = 0u;
        v68 = 0u;
        v25 = MEMORY[0x277D84F90];
      }

      v70 = v25;
      sub_22827B014(&v67, v63, sub_22827AE70);

      v32 = qword_27D826588;
      swift_beginAccess();
      sub_22817A680(v63, v13 + v32);
      swift_endAccess();
      sub_22827B014(&v67, v63, sub_22827AE70);
      v33 = v66;
      sub_22819482C(v63);
      v56 = v33;
      v34 = *(v33 + 2);
      if (!v34)
      {
        v35 = v2;

        sub_22827AF44(0, &qword_280DDB8D0, &qword_280DDCD60, MEMORY[0x277D10D48], MEMORY[0x277D84560]);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_228397F40;
        found = type metadata accessor for InteractionNoneFoundItem();
        v38 = swift_allocObject();
        type metadata accessor for InteractionNoneFoundCell();
        sub_22827993C(&qword_27D825630, type metadata accessor for InteractionNoneFoundCell);
        *(v38 + 16) = sub_22838FBB0();
        *(v38 + 24) = v39;
        *(v36 + 56) = found;
        *(v36 + 64) = sub_22827993C(&qword_27D826638, type metadata accessor for InteractionNoneFoundItem);
        *(v36 + 32) = v38;
        v56 = v36;
        v34 = *(v36 + 16);
        if (!v34)
        {
LABEL_30:

          sub_22838F910();

          sub_22838FCD0();

          sub_22838FF50();

          return sub_22827B07C(&v67, sub_22827AE70);
        }

        v2 = v35;
      }

      v62 = v18;
      sub_2281CA2AC(0, v34, 0);
      v40 = v62;
      v41 = v56 + 32;
      v57 = xmmword_228397F40;
      v42 = v54;
      do
      {
        sub_228180FB0(v41, v63);
        sub_22827AF44(0, &qword_27D823918, &qword_27D827E00, MEMORY[0x277D10D40], MEMORY[0x277D84560]);
        v43 = swift_allocObject();
        *(v43 + 16) = v57;
        v44 = v64;
        v45 = v65;
        v46 = __swift_project_boxed_opaque_existential_0(v63, v64);
        *(v43 + 56) = v44;
        *(v43 + 64) = *(v45 + 8);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v43 + 32));
        (*(*(v44 - 8) + 16))(boxed_opaque_existential_1, v46, v44);
        v48 = v58;
        sub_22838F490();
        sub_22838F450();
        (*(v2 + 8))(v48, v60);
        sub_22838FED0();
        __swift_destroy_boxed_opaque_existential_0(v63);
        v62 = v40;
        v50 = *(v40 + 16);
        v49 = *(v40 + 24);
        if (v50 >= v49 >> 1)
        {
          sub_2281CA2AC(v49 > 1, v50 + 1, 1);
          v40 = v62;
        }

        *(v40 + 16) = v50 + 1;
        (*(v61 + 32))(v40 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v50, v42, v59);
        v41 += 40;
        --v34;
      }

      while (v34);
      goto LABEL_30;
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22838F910();

    sub_22838FCD0();

    sub_22838FF50();
  }

  return result;
}

uint64_t sub_2282783C0(id *a1, id a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = v7;
  v71 = a6;
  v72 = a7;
  v74 = a4;
  v75 = a5;
  v73 = a3;
  v87 = *MEMORY[0x277D85DE8];
  v10 = [*a1 interactions];
  v77 = sub_22817A958(0, &qword_280DDBA10, 0x277D11518);
  v69 = sub_22818C470(&qword_280DDBA08, &qword_280DDBA10, 0x277D11518);
  v11 = sub_228392480();

  v81 = a2;
  v76 = v7;
  if ((v11 & 0xC000000000000001) == 0)
  {
    v30 = *(v11 + 32);
    v16 = (((1 << v30) + 63) >> 6);
    if ((v30 & 0x3Fu) > 0xD)
    {
      goto LABEL_40;
    }

LABEL_23:
    v66 = v16;
    v65[1] = v65;
    MEMORY[0x28223BE20](v12);
    v67 = v65 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v67, v31);
    v68 = 0;
    v32 = 0;
    v70 = v11;
    v8 = (v11 + 56);
    v33 = 1 << *(v11 + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v35 = v34 & *(v11 + 56);
    v16 = ((v33 + 63) >> 6);
    while (1)
    {
      if (!v35)
      {
        v37 = v32;
        while (1)
        {
          v32 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            goto LABEL_39;
          }

          if (v32 >= v16)
          {
            goto LABEL_37;
          }

          v38 = v8[v32];
          ++v37;
          if (v38)
          {
            v36 = __clz(__rbit64(v38));
            v35 = (v38 - 1) & v38;
            goto LABEL_33;
          }
        }
      }

      v36 = __clz(__rbit64(v35));
      v35 &= v35 - 1;
LABEL_33:
      v11 = v36 | (v32 << 6);
      v39 = *(*(v70 + 48) + 8 * v11);
      v40 = [v39 severity];
      v41 = [v40 severityLevel];

      if (v41 == a2)
      {
        *&v67[(v11 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v11;
        if (__OFADD__(v68++, 1))
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_37:
    v13 = sub_22827AC54(v67, v66, v68, v70, &qword_27D826648, &qword_280DDBA10, 0x277D11518, &qword_280DDBA08);
    if ((v13 & 0xC000000000000001) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_38;
  }

  v13 = MEMORY[0x277D84FA0];
  v82 = MEMORY[0x277D84FA0];
  sub_228393080();
  v14 = sub_228393100();
  if (!v14)
  {
LABEL_20:

    if ((v13 & 0xC000000000000001) != 0)
    {
      goto LABEL_38;
    }

LABEL_44:
    v51 = -1 << *(v13 + 32);
    v45 = v13 + 56;
    v46 = ~v51;
    v52 = -v51;
    if (v52 < 64)
    {
      v53 = ~(-1 << v52);
    }

    else
    {
      v53 = -1;
    }

    v48 = v53 & *(v13 + 56);

    v54 = v74;

    v47 = 0;
    v44 = v13;
    goto LABEL_48;
  }

  v8 = &off_2785F4000;
  while (1)
  {
    v78 = v14;
    swift_dynamicCast();
    v15 = [v79 severity];
    v16 = [v15 severityLevel];

    v17 = v79;
    if (v16 == a2)
    {
      break;
    }

LABEL_5:
    v14 = sub_228393100();
    if (!v14)
    {
      goto LABEL_20;
    }
  }

  v18 = *(v13 + 16);
  if (*(v13 + 24) <= v18)
  {
    sub_2282D7554(v18 + 1);
  }

  v13 = v82;
  v19 = *(v82 + 40);
  v11 = v79;
  v20 = sub_228392C50();
  v21 = v82 + 56;
  v22 = -1 << *(v82 + 32);
  v23 = v20 & ~v22;
  v24 = v23 >> 6;
  if (((-1 << v23) & ~*(v82 + 56 + 8 * (v23 >> 6))) != 0)
  {
    v25 = __clz(__rbit64((-1 << v23) & ~*(v82 + 56 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_19:
    *(v21 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    *(*(v13 + 48) + 8 * v25) = v17;
    ++*(v13 + 16);
    goto LABEL_5;
  }

  v26 = 0;
  v27 = (63 - v22) >> 6;
  while (++v24 != v27 || (v26 & 1) == 0)
  {
    v28 = v24 == v27;
    if (v24 == v27)
    {
      v24 = 0;
    }

    v26 |= v28;
    v29 = *(v21 + 8 * v24);
    if (v29 != -1)
    {
      v25 = __clz(__rbit64(~v29)) + (v24 << 6);
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_23;
  }

  v49 = swift_slowAlloc();
  v50 = sub_22827A904(v49, v16, v11, sub_22827AFAC, v80);
  v76 = v8;
  if (v8)
  {

    result = MEMORY[0x22AAB7B80](v49, -1, -1);
    __break(1u);
  }

  else
  {
    v13 = v50;

    MEMORY[0x22AAB7B80](v49, -1, -1);
    if ((v13 & 0xC000000000000001) == 0)
    {
      goto LABEL_44;
    }

LABEL_38:

    v43 = v74;

    sub_228393080();
    sub_2283924C0();
    v44 = v82;
    v45 = v83;
    v46 = v84;
    v47 = v85;
    v48 = v86;
LABEL_48:
    v70 = v46;
    v55 = (v46 + 64) >> 6;
    if (v44 < 0)
    {
      goto LABEL_55;
    }

    while (1)
    {
      v56 = v47;
      v57 = v48;
      v58 = v47;
      if (!v48)
      {
        break;
      }

LABEL_53:
      v59 = (v57 - 1) & v57;
      v60 = *(*(v44 + 48) + ((v58 << 9) | (8 * __clz(__rbit64(v57)))));
      if (!v60)
      {
        goto LABEL_59;
      }

      while (1)
      {
        v79 = v60;
        v62 = v76;
        sub_228278AB8(&v79, v73, v74, v75, v71, v72);
        v76 = v62;

        v47 = v58;
        v48 = v59;
        if ((v44 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_55:
        v61 = sub_228393100();
        if (v61)
        {
          v78 = v61;
          swift_dynamicCast();
          v60 = v79;
          v58 = v47;
          v59 = v48;
          if (v79)
          {
            continue;
          }
        }

        goto LABEL_59;
      }
    }

    while (1)
    {
      v58 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        __break(1u);
      }

      if (v58 >= v55)
      {
        break;
      }

      v57 = *(v45 + 8 * v58);
      ++v56;
      if (v57)
      {
        goto LABEL_53;
      }
    }

LABEL_59:
    sub_228176F04();

    v64 = *MEMORY[0x277D85DE8];
  }

  return result;
}

void sub_228278AB8(id *a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v100 = a6;
  v97 = a5;
  v99 = a4;
  v98 = a3;
  v103 = type metadata accessor for InteractionStackedMedmojiDataProvider(0);
  v10 = *(*(v103 - 8) + 64);
  MEMORY[0x28223BE20](v103);
  v105 = (&v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v102 = type metadata accessor for DrugInteractionVisualizationConfig(0);
  v12 = *(*(v102 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v102);
  v15 = (&v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v106 = (&v95 - v16);
  v108 = *a1;
  v115 = MEMORY[0x277D84F90];
  if (a2 >> 62)
  {
    goto LABEL_44;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2283930D0())
  {
    v104 = v15;
    v101 = v7;
    if (!i)
    {
      break;
    }

    v18 = 0;
    v118 = a2 & 0xC000000000000001;
    v15 = (a2 & 0xFFFFFFFFFFFFFF8);
    v107 = a2;
    do
    {
      if (v118)
      {
        v19 = MEMORY[0x22AAB6D80](v18, a2);
      }

      else
      {
        if (v18 >= v15[2])
        {
          goto LABEL_41;
        }

        v19 = *(a2 + 8 * v18 + 32);
      }

      v20 = v19;
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v22 = [v19 firstConceptIdentifier];
      if (v22)
      {
        v23 = v22;
        v7 = sub_22817A958(0, &qword_27D825620, 0x277D82BB8);
        v24 = [v108 firstInteractionClass];
        v25 = [v24 ancestorIdentifier];

        LOBYTE(v24) = sub_228392C60();
        if (v24)
        {
          v7 = &v115;
          sub_228393210();
          v26 = *(v115 + 16);
          sub_228393250();
          sub_228393260();
          sub_228393220();
        }

        else
        {
        }

        a2 = v107;
      }

      else
      {
      }

      ++v18;
    }

    while (v21 != i);
    v27 = 0;
    v96 = v115;
    v115 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v118)
      {
        v28 = MEMORY[0x22AAB6D80](v27, a2);
      }

      else
      {
        if (v27 >= v15[2])
        {
          goto LABEL_43;
        }

        v28 = *(a2 + 8 * v27 + 32);
      }

      v29 = v28;
      v30 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      v31 = [v28 firstConceptIdentifier];
      if (v31)
      {
        v32 = v31;
        sub_22817A958(0, &qword_27D825620, 0x277D82BB8);
        v33 = [v108 secondInteractionClass];
        v34 = [v33 ancestorIdentifier];

        v7 = sub_228392C60();
        if (v7)
        {
          v7 = &v115;
          sub_228393210();
          v35 = *(v115 + 16);
          sub_228393250();
          sub_228393260();
          sub_228393220();
        }

        else
        {
        }

        a2 = v107;
      }

      else
      {
      }

      ++v27;
      if (v30 == i)
      {
        v36 = v115;
        v37 = v96;
        goto LABEL_32;
      }
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    ;
  }

  v37 = MEMORY[0x277D84F90];
  v36 = MEMORY[0x277D84F90];
LABEL_32:
  if (v37 < 0 || (v37 & 0x4000000000000000) != 0)
  {
    if (sub_2283930D0())
    {
LABEL_35:
      if ((v37 & 0xC000000000000001) != 0)
      {
        v38 = MEMORY[0x22AAB6D80](0, v37);
      }

      else
      {
        if (!*(v37 + 16))
        {
          __break(1u);
          goto LABEL_71;
        }

        v38 = *(v37 + 32);
      }

      v39 = v38;

      _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE7medmoji0eF10Experience29MedicationVisualizationConfigVSgvg_0();
      swift_storeEnumTagMultiPayload();
      v115 = v39;
      v40 = sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
      v41 = sub_228390F30();
      v107 = v42;
      v116 = v40;
      v117 = &protocol witness table for HKMedicationUserDomainConcept;
      v115 = v39;
      if (v36 < 0)
      {
        goto LABEL_55;
      }

      goto LABEL_49;
    }
  }

  else if (*(v37 + 16))
  {
    goto LABEL_35;
  }

  v43 = [v108 firstInteractionClass];
  v44 = [v43 ancestorIdentifier];

  v45 = HKDrugInteractionLifestyleFactorForHKConceptIdentifier();
  v46 = v45;
  if (!v45)
  {
    sub_22817A958(0, &qword_280DDB960, 0x277CCABB0);
    v46 = sub_228392C40();
  }

  v47 = v45;
  v48 = sub_228392F30();

  *v106 = v48;
  swift_storeEnumTagMultiPayload();
  LOBYTE(v115) = 0;
  v41 = HKDrugInteractionLifestyleFactor.localizedString(variant:)(&v115, v48);
  v107 = v49;
  type metadata accessor for HKDrugInteractionLifestyleFactor(0);
  v116 = v50;
  v117 = &protocol witness table for HKDrugInteractionLifestyleFactor;

  v115 = v48;
  if (v36 < 0)
  {
LABEL_55:
    v58 = sub_2283930D0();
    v118 = v41;
    if (!v58)
    {
      goto LABEL_56;
    }

    goto LABEL_51;
  }

LABEL_49:
  if ((v36 & 0x4000000000000000) != 0)
  {
    goto LABEL_55;
  }

  v51 = *(v36 + 16);
  v118 = v41;
  if (!v51)
  {
LABEL_56:

    v59 = [v108 secondInteractionClass];
    v60 = [v59 ancestorIdentifier];

    v61 = HKDrugInteractionLifestyleFactorForHKConceptIdentifier();
    v62 = v61;
    if (!v61)
    {
      sub_22817A958(0, &qword_280DDB960, 0x277CCABB0);
      v62 = sub_228392C40();
    }

    v63 = v61;
    v53 = sub_228392F30();

    v54 = v104;
    *v104 = v53;
    swift_storeEnumTagMultiPayload();
    LOBYTE(v112[0]) = 0;
    v56 = HKDrugInteractionLifestyleFactor.localizedString(variant:)(v112, v53);
    v102 = v64;
    type metadata accessor for HKDrugInteractionLifestyleFactor(0);
    v113 = v65;
    v114 = &protocol witness table for HKDrugInteractionLifestyleFactor;

    goto LABEL_59;
  }

LABEL_51:
  if ((v36 & 0xC000000000000001) != 0)
  {
    v52 = MEMORY[0x22AAB6D80](0, v36);
    goto LABEL_54;
  }

  if (!*(v36 + 16))
  {
LABEL_71:
    __break(1u);
    return;
  }

  v52 = *(v36 + 32);
LABEL_54:
  v53 = v52;

  v54 = v104;
  _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE7medmoji0eF10Experience29MedicationVisualizationConfigVSgvg_0();
  swift_storeEnumTagMultiPayload();
  v112[0] = v53;
  v55 = sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  v56 = sub_228390F30();
  v102 = v57;
  v113 = v55;
  v114 = &protocol witness table for HKMedicationUserDomainConcept;
LABEL_59:
  v112[0] = v53;
  v66 = v108;
  v67 = [v108 severity];
  v68 = [v67 severityLevel];

  v69 = v103;
  v70 = v105;
  sub_22827B014(v106, v105 + *(v103 + 20), type metadata accessor for DrugInteractionVisualizationConfig);
  sub_22827B014(v54, v70 + *(v69 + 24), type metadata accessor for DrugInteractionVisualizationConfig);
  *v70 = v68;
  sub_228180ED0();
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_228396260;
  *(v71 + 32) = v66;
  type metadata accessor for HKDrugInteractionResultCollection();
  v72 = swift_allocObject();
  v72[2] = v71;
  sub_228180FB0(&v115, v111);
  sub_228180FB0(v112, v110);
  type metadata accessor for InteractionMedicationItem();
  v73 = swift_allocObject();
  v109[3] = v69;
  v74 = sub_22827993C(&qword_27D825730, type metadata accessor for InteractionStackedMedmojiDataProvider);
  v109[4] = v74;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v109);
  sub_22827B014(v70, boxed_opaque_existential_1, type metadata accessor for InteractionStackedMedmojiDataProvider);
  type metadata accessor for InteractionMedicationCell();
  sub_22827993C(&qword_27D824A80, type metadata accessor for InteractionMedicationCell);
  v76 = v66;

  v73[22] = sub_22838FBB0();
  v73[23] = v77;
  v73[27] = MEMORY[0x277D84FA0];
  v73[28] = 0;
  v78 = v98;
  v79 = v99;
  v73[24] = v98;
  v73[25] = v79;
  v73[26] = v97;
  v108 = v72;
  v73[2] = v72;
  v80 = v118;
  v81 = v56;
  v82 = v56 == v118;
  v83 = v107;
  v84 = v102;
  if (v82 && v102 == v107 || (sub_228393460() & 1) == 0)
  {
    v73[8] = v80;
    v73[9] = v83;
    sub_22816DFFC(v111, (v73 + 10));
    v73[20] = v81;
    v73[21] = v84;
    sub_22816DFFC(v110, (v73 + 15));
    sub_228180FB0(v109, (v73 + 3));
    v91 = v78;
  }

  else
  {
    v73[8] = v81;
    v73[9] = v84;
    sub_228180FB0(v110, (v73 + 10));
    v73[20] = v80;
    v73[21] = v83;
    sub_228180FB0(v111, (v73 + 15));
    v85 = *boxed_opaque_existential_1;
    v86 = v103;
    v87 = *(v103 + 24);
    v73[6] = v103;
    v73[7] = v74;
    v88 = v78;
    v89 = __swift_allocate_boxed_opaque_existential_1(v73 + 3);
    sub_22827B014(boxed_opaque_existential_1 + v87, v89 + *(v86 + 20), type metadata accessor for DrugInteractionVisualizationConfig);
    sub_22827B014(boxed_opaque_existential_1 + *(v86 + 20), v89 + *(v86 + 24), type metadata accessor for DrugInteractionVisualizationConfig);
    *v89 = v85;
    v90 = v88;

    __swift_destroy_boxed_opaque_existential_0(v110);
    __swift_destroy_boxed_opaque_existential_0(v111);
  }

  __swift_destroy_boxed_opaque_existential_0(v109);

  v93 = v100;
  MEMORY[0x22AAB5D20](v92);
  if (*((*v93 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v94 = *((*v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_2283921E0();
  }

  sub_228392230();

  sub_22827B07C(v105, type metadata accessor for InteractionStackedMedmojiDataProvider);
  sub_22827B07C(v104, type metadata accessor for DrugInteractionVisualizationConfig);
  sub_22827B07C(v106, type metadata accessor for DrugInteractionVisualizationConfig);
  __swift_destroy_boxed_opaque_existential_0(v112);
  __swift_destroy_boxed_opaque_existential_0(&v115);
}

uint64_t sub_2282796A8()
{
  v1 = *(v0 + qword_27D826560);

  v2 = *(v0 + qword_27D826570);

  v3 = *(v0 + qword_27D826580);

  sub_22819482C(v0 + qword_27D826588);
  v4 = *(v0 + qword_27D826590);
}

uint64_t InteractionSeverityDataSource.deinit()
{
  v0 = _s19HealthMedicationsUI34InteractionSeperatorLineDataSourceCfd_0();

  v1 = *(v0 + qword_27D826560);

  v2 = *(v0 + qword_27D826570);

  v3 = *(v0 + qword_27D826580);

  sub_22819482C(v0 + qword_27D826588);
  v4 = *(v0 + qword_27D826590);

  return v0;
}

uint64_t InteractionSeverityDataSource.__deallocating_deinit()
{
  InteractionSeverityDataSource.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall InteractionSeverityDataSource.registerCells(for:)(UICollectionView *a1)
{
  type metadata accessor for InteractionMedicationCell();
  sub_22827993C(&qword_27D824A80, type metadata accessor for InteractionMedicationCell);
  sub_2283926B0();
  type metadata accessor for InteractionNoneFoundCell();
  sub_22827993C(&qword_27D825630, type metadata accessor for InteractionNoneFoundCell);
  sub_2283926B0();
}

uint64_t sub_22827993C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_228279984()
{
  type metadata accessor for InteractionMedicationCell();
  sub_22827993C(&qword_27D824A80, type metadata accessor for InteractionMedicationCell);
  sub_2283926B0();
  type metadata accessor for InteractionNoneFoundCell();
  sub_22827993C(&qword_27D825630, type metadata accessor for InteractionNoneFoundCell);
  return sub_2283926B0();
}

uint64_t InteractionSeverityDataSource.supplementaryItem(ofKind:at:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_228391590();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = qword_27D826588;
  swift_beginAccess();
  sub_22817E6C8(v1 + v5, &v15);
  if (v16)
  {
    sub_22816DFFC(&v15, v17);
    v6 = v18;
    v7 = v19;
    v8 = __swift_project_boxed_opaque_existential_0(v17, v18);
    a1[3] = v6;
    a1[4] = *(v7 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v8, v6);
    return __swift_destroy_boxed_opaque_existential_0(v17);
  }

  else
  {
    sub_22819482C(&v15);
    sub_228321CC4(0xD000000000000015, 0x80000002283AFAD0, *(v1 + qword_27D826598));
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();

    sub_228391500();
    v11 = sub_22838FB60();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    v14 = sub_22838FB50();
    a1[3] = v11;
    result = sub_22827993C(&qword_27D823960, MEMORY[0x277D10E18]);
    a1[4] = result;
    *a1 = v14;
  }

  return result;
}

uint64_t type metadata accessor for InteractionSeverityDataSource()
{
  result = qword_27D8265B0;
  if (!qword_27D8265B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_228279E50()
{
  if (!qword_280DDBAD0)
  {
    sub_228392730();
    v0 = sub_228392F00();
    if (!v1)
    {
      atomic_store(v0, &qword_280DDBAD0);
    }
  }
}

void sub_228279EA8()
{
  if (!qword_27D8265C0)
  {
    sub_22824E8E4();
    sub_22824EB00(255, &qword_27D825DC8, sub_2281930F4);
    sub_22827993C(&qword_27D825DD0, sub_22824E8E4);
    sub_228279FA0(&qword_27D825DD8, &qword_27D825DC8, sub_2281930F4);
    v0 = sub_228391670();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8265C0);
    }
  }
}

uint64_t sub_228279FA0(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_22824EB00(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_228279FF0()
{
  if (!qword_27D8265C8)
  {
    v0 = MEMORY[0x277CBCD88];
    sub_22827C15C(255, &qword_280DDBC70, MEMORY[0x277CBCD88]);
    sub_22827A16C();
    sub_22827A238(&qword_280DDBC78, &qword_280DDBC70, v0);
    sub_22827993C(&qword_27D8265E0, sub_22827A16C);
    v1 = sub_228391780();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8265C8);
    }
  }
}

void sub_22827A0FC()
{
  if (!qword_280DDBB60)
  {
    sub_22818DF04(255, &qword_280DDBB68, &qword_280DDB9F0, 0x277D11550);
    v0 = sub_228392F00();
    if (!v1)
    {
      atomic_store(v0, &qword_280DDBB60);
    }
  }
}

void sub_22827A16C()
{
  if (!qword_27D8265D0)
  {
    sub_228279EA8();
    sub_2281810DC(255, &qword_280DDB860);
    sub_22827993C(&qword_27D8265D8, sub_228279EA8);
    v0 = sub_228391710();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8265D0);
    }
  }
}

uint64_t sub_22827A238(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  result = *a1;
  if (!result)
  {
    sub_22827C15C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22827A27C()
{
  if (!qword_27D8265E8)
  {
    sub_228279FF0();
    sub_22818DF04(255, &qword_280DDBB68, &qword_280DDB9F0, 0x277D11550);
    sub_22827993C(&qword_27D8265F0, sub_228279FF0);
    v0 = sub_2283916D0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8265E8);
    }
  }
}

void sub_22827A340()
{
  if (!qword_27D8265F8)
  {
    sub_228279FF0();
    sub_22827A0FC();
    sub_22827993C(&qword_27D8265F0, sub_228279FF0);
    v0 = sub_2283916D0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8265F8);
    }
  }
}

void sub_22827A3EC()
{
  if (!qword_27D826600)
  {
    sub_22827A340();
    sub_22827993C(&qword_27D826608, sub_22827A340);
    v0 = sub_228391700();
    if (!v1)
    {
      atomic_store(v0, &qword_27D826600);
    }
  }
}

void sub_22827A480()
{
  if (!qword_27D826610)
  {
    sub_22827A3EC();
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_22827993C(&qword_27D826618, sub_22827A3EC);
    sub_22818C470(&qword_280DDBAC0, &qword_280DDCEE0, 0x277D85C78);
    v0 = sub_2283917D0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D826610);
    }
  }
}

uint64_t sub_22827A588@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_22827A5C8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1);
  *a2 = result;
  return result;
}

void sub_22827A648(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5, unint64_t *a6, unint64_t *a7, uint64_t *a8, unint64_t *a9)
{
  v28 = 0;
  v10 = 0;
  v11 = a3 + 56;
  v12 = 1 << *(a3 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a3 + 56);
  v15 = (v12 + 63) >> 6;
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_11:
    v19 = v16 | (v10 << 6);
    v31 = *(*(a3 + 48) + 8 * v19);
    v20 = v31;
    v21 = a4(&v31);

    if (v9)
    {
      return;
    }

    if (v21)
    {
      *(a1 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      if (__OFADD__(v28++, 1))
      {
        __break(1u);
LABEL_16:

        sub_22827AC54(a1, a2, v28, a3, a6, a7, a8, a9);
        return;
      }
    }
  }

  v17 = v10;
  while (1)
  {
    v10 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v10 >= v15)
    {
      goto LABEL_16;
    }

    v18 = *(v11 + 8 * v10);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v14 = (v18 - 1) & v18;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *sub_22827A7D0(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
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

    v8 = a4;
    v9 = sub_22827B140(v7, a2, a3, v8);

    return v9;
  }

  return result;
}

void *sub_22827A868(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v6 = sub_22827B938(v5, a2, a3);

    return v6;
  }

  return result;
}

void *sub_22827A904(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    sub_22827A648(result, a2, a3, a4, a5, &qword_27D826648, &qword_280DDBA10, 0x277D11518, &qword_280DDBA08);
    v11 = v10;

    return v11;
  }

  return result;
}

uint64_t sub_22827A9E4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_22827C32C();
  result = sub_2283931A0();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v33 = (v10 - 1) & v10;
LABEL_17:
    v16 = (*(v4 + 48) + 32 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[2];
    v20 = v16[3];
    v21 = *(v9 + 40);
    sub_228393520();

    sub_2283920B0();
    sub_2283920B0();
    result = sub_228393570();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 32 * v25);
    *v30 = v17;
    v30[1] = v18;
    v30[2] = v19;
    v30[3] = v20;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    v10 = v33;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v33 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22827AC54(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, unint64_t *a6, uint64_t *a7, unint64_t *a8)
{
  v8 = a4;
  if (!a3)
  {
    v13 = MEMORY[0x277D84FA0];
LABEL_6:

    return v13;
  }

  v9 = a3;
  if (*(a4 + 16) == a3)
  {
    return v8;
  }

  sub_22827C28C(0, a5, a6, a7, a8);
  result = sub_2283931A0();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 56;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_17:
    v20 = *(v13 + 40);
    v21 = *(*(v8 + 48) + 8 * (v17 | (v15 << 6)));
    result = sub_228392C50();
    v22 = -1 << *(v13 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v16 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v16 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    *(*(v13 + 48) + 8 * v25) = v21;
    ++*(v13 + 16);
    if (__OFSUB__(v9--, 1))
    {
      goto LABEL_32;
    }

    if (!v9)
    {
      goto LABEL_6;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      goto LABEL_6;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v14 = (v19 - 1) & v19;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_22827AE70()
{
  if (!qword_27D826628)
  {
    v0 = MEMORY[0x277D10D48];
    sub_22827AF44(255, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], MEMORY[0x277D83D88]);
    sub_22827AF44(255, &qword_27D826630, &qword_280DDCD60, v0, MEMORY[0x277D83940]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D826628);
    }
  }
}

void sub_22827AF44(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2281810DC(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

BOOL sub_22827AFAC(id *a1)
{
  v2 = *(v1 + 16);
  v3 = [*a1 severity];
  v4 = [v3 severityLevel];

  return v4 == v2;
}

uint64_t sub_22827B014(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22827B07C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22827B0DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_22817A958(0, &qword_27D823BE0, 0x277CCD1D0);
  return sub_228392C60() & 1;
}

unint64_t *sub_22827B140(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v24 = 0;
  v25 = a4;
  v22 = a2;
  v23 = result;
  v4 = 0;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(*(v26 + 48) + 8 * v13);
    v15 = [v14 conceptIdentifiers];
    sub_22817A958(0, &qword_27D823BE0, 0x277CCD1D0);
    v16 = sub_2283921A0();

    v28 = v25;
    MEMORY[0x28223BE20](v17);
    v21[2] = &v28;
    v18 = v27;
    LOBYTE(v15) = sub_228309FEC(sub_22827C3EC, v21, v16);
    v27 = v18;

    if (v15)
    {
      *(v23 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
LABEL_15:
        v20 = v26;

        return sub_22827AC54(v23, v22, v24, v20, &qword_280DDB918, &qword_280DDB9F0, 0x277D11550, &qword_280DDB9E8);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22827B354(uint64_t a1, void *a2)
{
  v3 = v2;
  v4 = a1;
  v36[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = a2;
  v34 = v9;
  if (v6 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v35 = v3;
    v29[1] = v29;
    v30 = v7;
    MEMORY[0x28223BE20](v9);
    v31 = v29 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v31, v8);
    v32 = 0;
    v33 = v4;
    v10 = 0;
    v11 = v4 + 7;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & v4[7];
    v15 = (v12 + 63) >> 6;
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_12:
      v3 = v16 | (v10 << 6);
      v19 = *(v33[6] + 8 * v3);
      v20 = [v19 conceptIdentifiers];
      sub_22817A958(0, &qword_27D823BE0, 0x277CCD1D0);
      v8 = sub_2283921A0();

      v4 = v29;
      v36[0] = v34;
      MEMORY[0x28223BE20](v21);
      v29[-2] = v36;
      v22 = v35;
      v7 = sub_228309FEC(sub_22827C3EC, &v29[-4], v8);
      v35 = v22;

      if (v7)
      {
        *&v31[(v3 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v3;
        if (__OFADD__(v32++, 1))
        {
          __break(1u);
LABEL_16:
          v24 = sub_22827AC54(v31, v30, v32, v33, &qword_280DDB918, &qword_280DDB9F0, 0x277D11550, &qword_280DDB9E8);

          goto LABEL_17;
        }
      }
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_16;
      }

      v18 = v11[v10];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v27 = swift_slowAlloc();
  v28 = v34;
  v24 = sub_22827A7D0(v27, v7, v4, v28);

  MEMORY[0x22AAB7B80](v27, -1, -1);

LABEL_17:
  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

uint64_t sub_22827B68C(uint64_t a1, void *a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_22827B354(a1, a2);
  }

  v2 = MEMORY[0x277D84FA0];
  v26 = MEMORY[0x277D84FA0];
  v3 = a2;
  sub_228393080();
  v4 = sub_228393100();
  if (v4)
  {
    v5 = v4;
    sub_22817A958(0, &qword_280DDB9F0, 0x277D11550);
    v6 = v5;
    do
    {
      v24 = v6;
      swift_dynamicCast();
      v7 = [v25 conceptIdentifiers];
      sub_22817A958(0, &qword_27D823BE0, 0x277CCD1D0);
      v8 = sub_2283921A0();

      v24 = v3;
      MEMORY[0x28223BE20](v9);
      v23[2] = &v24;
      LOBYTE(v7) = sub_228309FEC(sub_22827C208, v23, v8);

      v10 = v25;
      if (v7)
      {
        v11 = *(v2 + 16);
        if (*(v2 + 24) <= v11)
        {
          sub_2282D7530(v11 + 1);
        }

        v2 = v26;
        v12 = *(v26 + 40);
        result = sub_228392C50();
        v14 = v2 + 56;
        v15 = -1 << *(v2 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v2 + 56 + 8 * (v16 >> 6))) != 0)
        {
          v18 = __clz(__rbit64((-1 << v16) & ~*(v2 + 56 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = 0;
          v20 = (63 - v15) >> 6;
          do
          {
            if (++v17 == v20 && (v19 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v21 = v17 == v20;
            if (v17 == v20)
            {
              v17 = 0;
            }

            v19 |= v21;
            v22 = *(v14 + 8 * v17);
          }

          while (v22 == -1);
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
        }

        *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v2 + 48) + 8 * v18) = v10;
        ++*(v2 + 16);
      }

      else
      {
      }

      v6 = sub_228393100();
    }

    while (v6);
  }

  return v2;
}

uint64_t sub_22827B938(uint64_t result, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v3 = a3;
  v22 = result;
  v23 = 0;
  v4 = 0;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v24 = v10 | (v4 << 6);
    v13 = *(*(v3 + 48) + 8 * v24);
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v14 = result;
      v15 = v3;
      v16 = v13;
      v17 = [v16 severity];
      v18 = [v17 severityLevel];

      v19 = *(v14 + qword_27D826598);
      v3 = v15;

      if (v18 == v19)
      {
        *(v22 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        if (__OFADD__(v23++, 1))
        {
          __break(1u);
LABEL_16:

          return sub_22827AC54(v22, v21, v23, v3, &qword_27D826648, &qword_280DDBA10, 0x277D11518, &qword_280DDBA08);
        }
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_16;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22827BB10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v40 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v34 = v8;
    v35 = v3;
    v33[1] = v33;
    MEMORY[0x28223BE20](v10);
    v36 = v33 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v36, v9);
    v37 = 0;
    v38 = a2;
    v9 = 0;
    v8 = v5 + 56;
    v11 = 1 << *(v5 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    while (v13)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_12:
      v18 = v15 | (v9 << 6);
      v19 = *(v5 + 48);
      v39 = v18;
      v20 = *(v19 + 8 * v18);
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v22 = Strong;
        v23 = v20;
        v3 = v5;
        v24 = [v23 severity];
        v25 = [v24 severityLevel];

        v26 = *(v22 + qword_27D826598);
        a2 = v38;

        v27 = v25 == v26;
        v5 = v3;
        if (v27)
        {
          *&v36[(v39 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v39;
          if (__OFADD__(v37++, 1))
          {
            __break(1u);
LABEL_18:
            v29 = sub_22827AC54(v36, v34, v37, v5, &qword_27D826648, &qword_280DDBA10, 0x277D11518, &qword_280DDBA08);

            goto LABEL_19;
          }
        }
      }
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_18;
      }

      v17 = *(v8 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v32 = swift_slowAlloc();

  v29 = sub_22827A868(v32, v8, v5);

  MEMORY[0x22AAB7B80](v32, -1, -1);

LABEL_19:
  v30 = *MEMORY[0x277D85DE8];
  return v29;
}

uint64_t sub_22827BE18(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_22827BB10(a1, a2);
  }

  v2 = MEMORY[0x277D84FA0];
  v21 = MEMORY[0x277D84FA0];

  sub_228393080();
  if (sub_228393100())
  {
    sub_22817A958(0, &qword_280DDBA10, 0x277D11518);
    do
    {
      swift_dynamicCast();
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong && (v4 = Strong, v5 = [v20 severity], v6 = objc_msgSend(v5, sel_severityLevel), v5, v7 = *(v4 + qword_27D826598), , v6 == v7))
      {
        v8 = *(v2 + 16);
        if (*(v2 + 24) <= v8)
        {
          sub_2282D7554(v8 + 1);
        }

        v2 = v21;
        v9 = *(v21 + 40);
        result = sub_228392C50();
        v11 = v21 + 56;
        v12 = -1 << *(v21 + 32);
        v13 = result & ~v12;
        v14 = v13 >> 6;
        if (((-1 << v13) & ~*(v21 + 56 + 8 * (v13 >> 6))) != 0)
        {
          v15 = __clz(__rbit64((-1 << v13) & ~*(v21 + 56 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v16 = 0;
          v17 = (63 - v12) >> 6;
          do
          {
            if (++v14 == v17 && (v16 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v18 = v14 == v17;
            if (v14 == v17)
            {
              v14 = 0;
            }

            v16 |= v18;
            v19 = *(v11 + 8 * v14);
          }

          while (v19 == -1);
          v15 = __clz(__rbit64(~v19)) + (v14 << 6);
        }

        *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
        *(*(v21 + 48) + 8 * v15) = v20;
        ++*(v21 + 16);
      }

      else
      {
      }
    }

    while (sub_228393100());
  }

  return v2;
}

void sub_22827C090()
{
  if (!qword_280DDBC08)
  {
    v0 = MEMORY[0x277CBCD88];
    sub_22827C15C(255, &qword_280DDBC70, MEMORY[0x277CBCD88]);
    sub_22827A238(&qword_280DDBC78, &qword_280DDBC70, v0);
    v1 = sub_228391910();
    if (!v2)
    {
      atomic_store(v1, &qword_280DDBC08);
    }
  }
}

void sub_22827C15C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    sub_22827A0FC();
    v7 = v6;
    v8 = sub_2281810DC(255, &qword_280DDB860);
    v9 = a3(a1, v7, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22827C224(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_22817A958(0, &qword_27D823BE0, 0x277CCD1D0);
  return sub_228392C60() & 1;
}

void sub_22827C28C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_22817A958(255, a3, a4);
    sub_22818C470(a5, a3, a4);
    v9 = sub_2283931B0();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_22827C32C()
{
  if (!qword_27D826650)
  {
    sub_22827C388();
    v0 = sub_2283931B0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D826650);
    }
  }
}

unint64_t sub_22827C388()
{
  result = qword_27D826658;
  if (!qword_27D826658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826658);
  }

  return result;
}

UIImage __swiftcall Symbol.uiImage(configuration:)(UIImageConfiguration_optional configuration)
{
  isa = configuration.value.super.isa;
  *v1;
  *v1;
  v3 = sub_228391FC0();

  v4 = [objc_opt_self() systemImageNamed:v3 withConfiguration:isa];

  if (v4)
  {
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t Symbol.ImageConfiguration.init(style:weight:scale:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = result;
  *(a3 + 8) = a4;
  *(a3 + 16) = a2;
  return result;
}

uint64_t Symbol.systemName.getter()
{
  v1 = *v0;
  v2 = 1937075312;
  v3 = 0x69632E6B72616D78;
  v4 = 0x6B636F6C63;
  if (v1 != 4)
  {
    v4 = 0x69662E736C6C6970;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x2E6E6F7276656863;
  if (v1 != 1)
  {
    v5 = 0xD000000000000010;
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

void Symbol.uiImage.getter()
{
  *v0;
  *v0;
  v1 = sub_228391FC0();

  v2 = [objc_opt_self() systemImageNamed:v1 withConfiguration:0];

  if (!v2)
  {
    __break(1u);
  }
}

UIImage __swiftcall Symbol.uiImage(style:weight:scale:)(UIFontTextStyle style, UIFontWeight weight, UIImageSymbolScale scale)
{
  v5 = *v3;
  result.super.isa = [objc_opt_self() _preferredFontForTextStyle_weight_];
  if (result.super.isa)
  {
    isa = result.super.isa;
    v8 = [objc_opt_self() configurationWithFont:result.super.isa scale:scale];
    v9 = sub_228391FC0();

    v10 = [objc_opt_self() systemImageNamed:v9 withConfiguration:v8];

    if (v10)
    {

      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Symbol.hashValue.getter()
{
  v1 = *v0;
  sub_228393520();
  MEMORY[0x22AAB70D0](v1);
  return sub_228393570();
}

void sub_22827CB34(double *a1, uint64_t a2)
{
  v3 = *MEMORY[0x277D76918];
  v4 = *a1;
  v5 = objc_opt_self();
  v6 = v3;
  v7 = [v5 _preferredFontForTextStyle_weight_];
  if (v7)
  {
    v8 = v7;
    v9 = [objc_opt_self() configurationWithFont:v7 scale:a2];
    v10 = sub_228391FC0();
    v11 = [objc_opt_self() systemImageNamed:v10 withConfiguration:v9];

    if (v11)
    {

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_22827CC58()
{
  result = qword_27D826660;
  if (!qword_27D826660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826660);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Symbol(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Symbol(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_22827CE0C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 40);
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
}

uint64_t sub_22827CE6C()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_22827CEB8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_22827CF5C()
{
  v1 = [*(v0 + 16) semanticIdentifier];
  v2 = [v1 stringValue];

  v3 = sub_228392000();
  return v3;
}

uint64_t sub_22827CFD4()
{
  sub_2282803BC(0, &unk_280DDBD10, MEMORY[0x277D11720], MEMORY[0x277D83D88]);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - v6;
  v8 = *(v0 + 24);
  if (*(v0 + 24))
  {
    v9 = *(v0 + 16);
    if (v8 == 1)
    {
      sub_228392A10();
      v10 = sub_228390F60();
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v7, 1, v10) != 1)
      {
        v13 = sub_228390F40();
        (*(v11 + 8))(v7, v10);
        return v13 & 1;
      }

      v12 = v7;
    }

    else
    {
      sub_228392A10();
      v14 = sub_228390F60();
      v15 = *(v14 - 8);
      if ((*(v15 + 48))(v5, 1, v14) != 1)
      {
        v13 = sub_228390F50();
        (*(v15 + 8))(v5, v14);
        return v13 & 1;
      }

      v12 = v5;
    }

    sub_228201554(v12);
    v13 = 0;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_22827D1F4()
{
  v2 = *(v0 + 16);
  sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  return sub_228390F30();
}

BOOL sub_22827D248()
{
  sub_22827F81C(*(v0 + 16), *(v0 + 24));
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

uint64_t sub_22827D288()
{
  result = sub_22827F81C(*(v0 + 16), *(v0 + 24));
  if (!v2)
  {
    if (qword_27D823310 != -1)
    {
      swift_once();
    }

    return sub_22838F0C0();
  }

  return result;
}

uint64_t sub_22827D32C()
{
  v1 = *(v0 + 16);
  v2 = [v1 localizedOntologyEducationContent];
  if (v2 && (v3 = v2, v4 = [v2 primarySection], v3, v4))
  {
    sub_228392A90();

    sub_22828036C(0, &qword_27D827E10, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_2281BF13C();
    v5 = sub_228391F90();

    return v5;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_22827D42C()
{
  v1 = v0;
  v2 = *(v0 + 16);
  sub_228392C70();
  return MEMORY[0x22AAB70D0](*(v1 + 24));
}

uint64_t MedicationInformationOverviewItem.deinit()
{
  v1 = *(v0 + 40);

  return v0;
}

uint64_t MedicationInformationOverviewItem.__deallocating_deinit()
{
  v1 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_22827D4D4()
{
  v1 = v0;
  sub_228393520();
  v2 = *(v0 + 16);
  sub_228392C70();
  MEMORY[0x22AAB70D0](*(v1 + 24));
  return sub_228393570();
}

uint64_t sub_22827D528()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);

  return v2;
}

uint64_t sub_22827D584()
{
  v1 = *v0;
  sub_228393520();
  v2 = *(v1 + 16);
  sub_228392C70();
  MEMORY[0x22AAB70D0](*(v1 + 24));
  return sub_228393570();
}

uint64_t sub_22827D5D8()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  sub_228392C70();
  return MEMORY[0x22AAB70D0](*(v1 + 24));
}

uint64_t sub_22827D618()
{
  sub_228393520();
  v1 = *v0;
  v2 = *(*v0 + 16);
  sub_228392C70();
  MEMORY[0x22AAB70D0](*(v1 + 24));
  return sub_228393570();
}

uint64_t sub_22827D668()
{
  v1 = [*(*v0 + 16) semanticIdentifier];
  v2 = [v1 stringValue];

  v3 = sub_228392000();
  return v3;
}

uint64_t sub_22827D6E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282169440](a1, WitnessTable);
}

uint64_t MedicationInformationOverviewItem.deselectionBehavior(in:)()
{
  type metadata accessor for MedicationInformationOverviewItem();
  sub_22827FDA4(&qword_27D826668);
  return sub_22838FE80();
}

uint64_t sub_22827D7F0()
{
  v2 = *v0;
  type metadata accessor for MedicationInformationOverviewItem();
  return sub_22838FE80();
}

id sub_22827D84C()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___mainStackView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___mainStackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___mainStackView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
    [v4 setAxis_];
    [v4 setAlignment_];
    [v4 setDistribution_];
    [v4 setSpacing_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_22827D924()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___criticalButtonStackView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___criticalButtonStackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___criticalButtonStackView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
    [v4 setAxis_];
    [v4 setAlignment_];
    [v4 setDistribution_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_22827D9E8()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___criticalInformationButton;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___criticalInformationButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___criticalInformationButton);
  }

  else
  {
    if (qword_27D823310 != -1)
    {
      swift_once();
    }

    v4 = sub_22838F0C0();
    _sSo8UIButtonC19HealthMedicationsUIE21makeExclamationButton5title29accessibilityIdentifierSuffixABSS_SStFZ_0(v4, v5, 0x616369746972432ELL, 0xE90000000000006CLL);
    v7 = v6;

    LODWORD(v8) = 1148846080;
    [v7 setContentHuggingPriority:0 forAxis:{v8, 0xE000000000000000}];
    v9 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_22827DB18()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiNameStackView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiNameStackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiNameStackView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
    [v4 setDistribution_];
    [v4 setSpacing_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_22827DBC8()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiChevronStack;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiChevronStack);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiChevronStack);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
    [v4 setAxis_];
    [v4 setDistribution_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_22827DC90(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = v1;
    sub_22817A958(0, &qword_280DDB9B0, 0x277D75D18);
    v6 = MEMORY[0x22AAB6680]();
    LODWORD(v7) = 1148846080;
    [v6 setContentHuggingPriority:0 forAxis:v7];
    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    v8 = *(v5 + v2);
    *(v5 + v2) = v6;
    v4 = v6;

    v3 = 0;
  }

  v9 = v3;
  return v4;
}

id sub_22827DD3C()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiChevronStackWidthConstraint;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiChevronStackWidthConstraint);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiChevronStackWidthConstraint);
  }

  else
  {
    v4 = sub_22827DBC8();
    v5 = [v4 widthAnchor];

    v6 = sub_22827DB18();
    v7 = [v6 widthAnchor];

    v8 = [v5 constraintEqualToAnchor_];
    v9 = *(v0 + v1);
    *(v0 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_22827DE0C()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiView);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(sub_228390970()) initWithFrame_];
    v6 = *MEMORY[0x277CDA138];
    v7 = v5;
    sub_228392B00();
    [v7 setTranslatesAutoresizingMaskIntoConstraints_];

    v8 = *(v4 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_22827DEF8(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    v6 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

id sub_22827DF84(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = v1;
    v6 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v7 = *MEMORY[0x277D76918];
    v8 = sub_228392AD0();
    [v6 setFont_];

    [v6 setAdjustsFontForContentSizeCategory_];
    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    [v6 setNumberOfLines_];
    v9 = *(v5 + v2);
    *(v5 + v2) = v6;
    v4 = v6;

    v3 = 0;
  }

  v10 = v3;
  return v4;
}

uint64_t sub_22827E0A4(uint64_t a1, uint64_t *a2)
{
  sub_22817E6C8(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell_item;
  swift_beginAccess();
  sub_22818FD64(v6, v3 + v4);
  swift_endAccess();
  sub_22827EBF4();
  return sub_22819482C(v6);
}

uint64_t sub_22827E114@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_22827E16C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_22827EBF4();
  return sub_22819482C(a1);
}

uint64_t (*sub_22827E1D8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_22827E23C;
}

uint64_t sub_22827E23C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_22827EBF4();
  }

  return result;
}

char *sub_22827E270(double a1, double a2, double a3, double a4)
{
  v83[1] = swift_getObjectType();
  v9 = sub_228391590();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4[OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell_state] = 2;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___mainStackView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___criticalButtonStackView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___criticalInformationButton] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___criticalInformationChevron] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiNameStackView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiChevronStack] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiChevronSpacer] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiChevron] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiChevronStackWidthConstraint] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___nameLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medNameChevronSpacer] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medNameChevron] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___informationContentLabel] = 0;
  v14 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell_item];
  v15 = type metadata accessor for MedicationInformationOverviewCell();
  *v14 = 0u;
  *(v14 + 1) = 0u;
  *(v14 + 4) = 0;
  v86.receiver = v4;
  v86.super_class = v15;
  v16 = objc_msgSendSuper2(&v86, sel_initWithFrame_, a1, a2, a3, a4);
  v17 = *MEMORY[0x277D12788];
  v84 = sub_228392000();
  v85 = v18;
  v19 = v16;

  MEMORY[0x22AAB5C80](0xD000000000000020, 0x80000002283AFF00);

  v83[0] = v84;
  v20 = sub_22827D924();
  v21 = sub_22827D9E8();
  [v20 addArrangedSubview_];

  v22 = OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___criticalButtonStackView;
  v23 = *&v19[OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___criticalButtonStackView];
  v24 = objc_allocWithZone(MEMORY[0x277D75D18]);
  v25 = v23;
  v26 = [v24 init];
  [v25 addArrangedSubview_];

  v27 = *&v19[v22];
  v28 = sub_22827DB0C();
  [v27 addArrangedSubview_];

  v29 = sub_22827DBC8();
  v30 = sub_22827DE0C();
  [v29 addArrangedSubview_];

  v31 = OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiChevronStack;
  v32 = *&v19[OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiChevronStack];
  v33 = sub_22827DC78();
  [v32 addArrangedSubview_];

  v34 = *&v19[v31];
  v35 = sub_22827DC84();
  [v34 addArrangedSubview_];

  v36 = sub_22827DB18();
  [v36 addArrangedSubview_];

  v37 = OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiNameStackView;
  v38 = *&v19[OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiNameStackView];
  v39 = sub_22827DEDC();
  [v38 addArrangedSubview_];

  v40 = *&v19[v37];
  v41 = sub_22827DEEC();
  [v40 addArrangedSubview_];

  v42 = *&v19[v37];
  v43 = sub_22827DF68();
  [v42 addArrangedSubview_];

  v44 = sub_22827D84C();
  [v44 addArrangedSubview_];

  v45 = OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___mainStackView;
  [*&v19[OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___mainStackView] addArrangedSubview_];
  v46 = *&v19[v45];
  v47 = sub_22827DF74();
  [v46 addArrangedSubview_];

  [*&v19[v45] setCustomSpacing:*&v19[v37] afterView:12.0];
  v48 = [v19 contentView];
  [v48 addSubview_];

  sub_228391520();
  sub_2283914D0();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  (*(v10 + 8))(v13, v9);
  v55 = *&v19[v45];
  v56 = [v19 contentView];
  [v55 hk:v56 alignHorizontalConstraintsWithView:v50 insets:{v52, v54, 16.0}];

  v57 = objc_opt_self();
  sub_22828036C(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_228397F00;
  v59 = [*&v19[v45] topAnchor];
  v60 = [v19 contentView];
  v61 = [v60 topAnchor];

  v62 = [v59 constraintEqualToAnchor:v61 constant:16.0];
  *(v58 + 32) = v62;
  v63 = [*&v19[v45] bottomAnchor];
  v64 = [v19 contentView];
  v65 = [v64 bottomAnchor];

  v66 = [v63 constraintEqualToAnchor:v65 constant:-16.0];
  *(v58 + 40) = v66;
  v67 = OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiView;
  v68 = [*&v19[OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiView] widthAnchor];
  v69 = [v68 constraintEqualToConstant_];

  *(v58 + 48) = v69;
  v70 = [*&v19[v67] heightAnchor];
  v71 = [v70 constraintEqualToConstant_];

  *(v58 + 56) = v71;
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v72 = sub_228392190();

  [v57 activateConstraints_];

  v73 = sub_22827D9E8();

  v74 = sub_228391FC0();

  [v73 setAccessibilityIdentifier_];

  v75 = sub_22827DF74();

  v76 = sub_228391FC0();

  [v75 setAccessibilityIdentifier_];

  v77 = [v19 traitCollection];
  v78 = [v77 preferredContentSizeCategory];

  v19[OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell_state] = sub_2283928C0() & 1;
  sub_2282803BC(0, &qword_27D825090, sub_2281D51F0, MEMORY[0x277D84560]);
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_228397F40;
  v80 = sub_228391640();
  v81 = MEMORY[0x277D74DB8];
  *(v79 + 32) = v80;
  *(v79 + 40) = v81;
  sub_228392B50();

  swift_unknownObjectRelease();

  return v19;
}

uint64_t sub_22827EBF4()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2282803BC(0, &qword_280DDBD20, MEMORY[0x277D116C8], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell_item;
  swift_beginAccess();
  sub_22817E6C8(&v1[v9], v37);
  if (v37[3])
  {
    sub_2281810DC(0, &qword_280DDCD60);
    type metadata accessor for MedicationInformationOverviewItem();
    if (swift_dynamicCast())
    {
      v10 = v36;
      v11 = sub_22827D924();
      [v11 setHidden_];

      sub_22827F0EC();
      v12 = sub_22827DE0C();
      v13 = *(v10 + 16);
      _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE7medmoji0eF10Experience29MedicationVisualizationConfigVSgvg_0();
      sub_228390950();

      v14 = sub_22827DEDC();
      v37[0] = *(v10 + 16);
      sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
      sub_228390F30();
      v15 = sub_228391FC0();

      [v14 setText_];

      v16 = sub_22827DF74();
      sub_22827F81C(*(v10 + 16), *(v10 + 24));
      if (!v17)
      {
        if (qword_27D823310 != -1)
        {
          swift_once();
        }

        sub_22838F0C0();
      }

      v18 = sub_228391FC0();

      [v16 setText_];

      v19 = *(v10 + 16);
      LOBYTE(v18) = *(v10 + 24);
      v20 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___informationContentLabel];
      sub_22827F81C(v19, v18);
      if (v21)
      {

        v22 = &selRef_labelColor;
      }

      else
      {
        v22 = &selRef_secondaryLabelColor;
      }

      v32 = [objc_opt_self() *v22];
      [v20 setTextColor_];

      sub_22827F81C(*(v10 + 16), *(v10 + 24));
      v34 = v33;
      if (v33)
      {
      }

      [v1 setUserInteractionEnabled_];
    }
  }

  else
  {
    sub_22819482C(v37);
  }

  sub_228391150();
  v23 = v1;
  v24 = sub_2283911A0();
  v25 = sub_2283925C0();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v36 = v27;
    *v26 = 136446210;
    sub_22817E6C8(&v1[v9], v37);
    sub_228181D50();
    v28 = sub_228392040();
    v30 = sub_2281C96FC(v28, v29, &v36);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_22816B000, v24, v25, "Incorrect view model for MedicationInformationOverviewItem: %{public}s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x22AAB7B80](v27, -1, -1);
    MEMORY[0x22AAB7B80](v26, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_22827F0EC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell_item;
  swift_beginAccess();
  sub_22817E6C8(v1 + v2, v26);
  if (!v27)
  {
    return sub_22819482C(v26);
  }

  sub_2281810DC(0, &qword_280DDCD60);
  type metadata accessor for MedicationInformationOverviewItem();
  result = swift_dynamicCast();
  if (result)
  {
    if (*(v1 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell_state))
    {
      if (*(v1 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell_state) != 1)
      {
        result = sub_228393300();
        __break(1u);
        return result;
      }

      v10 = sub_22827DB18();
      [v10 setAxis_];

      [*(v1 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiNameStackView) setAlignment_];
      sub_22827F81C(*(v25 + 16), *(v25 + 24));
      if (v11)
      {

        v12 = sub_22827CFD4();
        v13 = sub_22827DB0C();
        v14 = v13;
        if (v12)
        {
          [v13 setHidden_];
          v15 = 1;
        }

        else
        {
          [v13 setHidden_];
          v15 = 0;
        }
      }

      else
      {
        v14 = sub_22827DB0C();
        v15 = 1;
        [v14 setHidden_];
      }

      v21 = sub_22827DF68();
      [v21 setHidden_];

      v22 = sub_22827DC84();
      [v22 setHidden_];

      v23 = sub_22827DD3C();
      [v23 setActive_];

      v24 = sub_22827DC78();
      [v24 setHidden_];

      v20 = sub_22827DEEC();
      [v20 setHidden_];
    }

    else
    {
      v4 = sub_22827DB18();
      [v4 setAxis_];

      [*(v1 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiNameStackView) setAlignment_];
      sub_22827F81C(*(v25 + 16), *(v25 + 24));
      if (v5)
      {

        v6 = sub_22827CFD4();
        v7 = sub_22827DB0C();
        v8 = v7;
        if (v6)
        {
          [v7 setHidden_];
          v9 = 1;
        }

        else
        {
          [v7 setHidden_];
          v9 = 0;
        }
      }

      else
      {
        v8 = sub_22827DB0C();
        v9 = 1;
        [v8 setHidden_];
      }

      v16 = sub_22827DF68();
      [v16 setHidden_];

      v17 = sub_22827DC84();
      [v17 setHidden_];

      v18 = sub_22827DD3C();
      [v18 setActive_];

      v19 = sub_22827DC78();
      [v19 setHidden_];

      v20 = sub_22827DEEC();
      [v20 setHidden_];
    }
  }

  return result;
}

void sub_22827F4A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22827D9E8();
  if (!a2)
  {
    v5 = *MEMORY[0x277D12788];
    sub_228392000();

    MEMORY[0x22AAB5C80](0xD00000000000001ALL, 0x80000002283AFB80);
  }

  v6 = sub_228391FC0();

  [v4 setAccessibilityIdentifier_];

  v7 = sub_22827DF74();
  if (!a2)
  {
    v8 = *MEMORY[0x277D12788];
    sub_228392000();

    MEMORY[0x22AAB5C80](0xD000000000000019, 0x80000002283AFBA0);

    v9 = [*(v2 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___informationContentLabel) text];
    if (v9)
    {
      v10 = v9;
      v11 = sub_228392000();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0xE000000000000000;
    }

    MEMORY[0x22AAB5C80](v11, v13);
  }

  v14 = sub_228391FC0();

  [v7 setAccessibilityIdentifier_];
}

id MedicationInformationOverviewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationInformationOverviewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22827F81C(void *a1, char a2)
{
  v3 = [a1 localizedOntologyEducationContent];
  if (!a2)
  {
    if (v3)
    {
      v4 = v3;
      sub_22817A958(0, &unk_27D8251E0, 0x277CCD750);
      v5 = sub_22838FA70();
      goto LABEL_9;
    }

    return 0;
  }

  if (a2 != 1)
  {
    if (v3)
    {
      v4 = v3;
      sub_22817A958(0, &unk_27D8251E0, 0x277CCD750);
      v5 = sub_22838FA80();
      goto LABEL_9;
    }

    return 0;
  }

  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  sub_22817A958(0, &unk_27D8251E0, 0x277CCD750);
  v5 = sub_22838FA90();
LABEL_9:
  v6 = v5;

  return v6;
}

uint64_t sub_22827F934(uint64_t a1, char a2)
{
  sub_2282803BC(0, &unk_280DDBD10, MEMORY[0x277D11720], MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  if (a2)
  {
    if (a2 == 1)
    {
      sub_228392A10();
      v10 = sub_228390F60();
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v9, 1, v10) != 1)
      {
        v13 = sub_228390F40();
        (*(v11 + 8))(v9, v10);
        return v13 & 1;
      }

      v12 = v9;
    }

    else
    {
      sub_228392A10();
      v14 = sub_228390F60();
      v15 = *(v14 - 8);
      if ((*(v15 + 48))(v7, 1, v14) != 1)
      {
        v13 = sub_228390F50();
        (*(v15 + 8))(v7, v14);
        return v13 & 1;
      }

      v12 = v7;
    }

    sub_228201554(v12);
    v13 = 0;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t _s19HealthMedicationsUI33MedicationInformationOverviewItemC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 16) semanticIdentifier];
  v4 = [v3 stringValue];

  v5 = sub_228392000();
  v7 = v6;

  v8 = [*(a2 + 16) semanticIdentifier];
  v9 = [v8 stringValue];

  v10 = sub_228392000();
  v12 = v11;

  if (v5 == v10 && v7 == v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_228393460();
  }

  return v14 & 1;
}

void sub_22827FC3C(void *a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 16);
  v5 = sub_22827F81C(v4, v3);
  if (!v6)
  {
    if (qword_27D823310 != -1)
    {
      swift_once();
    }

    v5 = sub_22838F0C0();
  }

  v7 = v5;
  v8 = v6;
  v9 = sub_22827D32C();
  v13 = sub_22824DB80(v3, v4, v7, v8, v9, v10);

  v11 = [a1 navigationController];
  if (v11)
  {
    v12 = v11;
    [v11 pushViewController:v13 animated:1];
  }
}

uint64_t sub_22827FDA4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MedicationInformationOverviewItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_228280154()
{
  result = qword_27D826700;
  if (!qword_27D826700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826700);
  }

  return result;
}

void sub_2282801A8(unsigned __int8 *a1)
{
  v2 = [a1 traitCollection];
  v5 = [v2 preferredContentSizeCategory];

  v3 = sub_2283928C0();
  v4 = a1[OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell_state];
  a1[OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell_state] = v3 & 1;
  if (v4 != (v3 & 1))
  {
    sub_22827F0EC();
  }
}

void sub_228280240()
{
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell_state) = 2;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___mainStackView) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___criticalButtonStackView) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___criticalInformationButton) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___criticalInformationChevron) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiNameStackView) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiChevronStack) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiChevronSpacer) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiChevron) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiChevronStackWidthConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiView) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___nameLabel) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medNameChevronSpacer) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medNameChevron) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___informationContentLabel) = 0;
  v1 = v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell_item;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  sub_228393300();
  __break(1u);
}

void sub_22828036C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2282803BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_228280420()
{
  sub_2281AB388(0, &qword_27D823EE0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_228397F30;
  v1 = *MEMORY[0x277D12788];
  *(v0 + 32) = sub_228392000();
  *(v0 + 40) = v2;
  strcpy((v0 + 48), "DayHistoryView");
  *(v0 + 63) = -18;
  v3 = sub_228392190();

  v4 = HKUIJoinStringsForAutomationIdentifier();

  if (v4)
  {
    v5 = sub_228392000();
    v7 = v6;

    qword_27D828D80 = v5;
    *algn_27D828D88 = v7;
  }

  else
  {
    __break(1u);
  }
}

id sub_228280580(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_2282805E0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  sub_22827CB04();
  v2 = v1;
  [v0 setImage_];

  [v0 setContentMode_];
  [v0 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
  LODWORD(v3) = 1148846080;
  [v0 setContentCompressionResistancePriority:0 forAxis:v3];
  v4 = [objc_opt_self() systemGrayColor];
  [v0 setTintColor_];

  return v0;
}

id sub_2282806D0(uint64_t *a1, Class *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = [objc_allocWithZone(*a2) init];
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_22828073C()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView____lazy_storage___lineItemsStackView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView____lazy_storage___lineItemsStackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView____lazy_storage___lineItemsStackView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
    [v4 setAxis_];
    [v4 setAlignment_];
    [v4 setDistribution_];
    [v4 setSpacing_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_228280800(unsigned __int8 a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_state);
  if (v2 == 2)
  {
    __break(1u);
  }

  else if (v2 != a1)
  {
    sub_228281050();
    if (*(v1 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_lineItems))
    {
      v3 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_previousDisplayContext);
      if (v3 != 2 && (v3 & 1) != 0)
      {
        v4 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_lineItems);

        sub_228282A4C(v5);
      }
    }
  }
}

id sub_228280898(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView____lazy_storage___doseStatusImageView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView____lazy_storage___timeLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView____lazy_storage___elapsedTimeLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView____lazy_storage___chevronImage] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView____lazy_storage___headerStackView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView____lazy_storage___lineItemsStackView] = 0;
  v4[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_state] = 2;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_lineItems] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_timer] = 0;
  v9 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_timeTextCache];
  *v9 = 0;
  v9[1] = 0;
  v10 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_elapsedTimeCache;
  v11 = sub_22838F440();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v4[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_previousDisplayContext] = 2;
  v14.receiver = v4;
  v14.super_class = type metadata accessor for MedicationsDayHistoryView();
  v12 = objc_msgSendSuper2(&v14, sel_initWithFrame_, a1, a2, a3, a4);
  sub_228280BFC();
  sub_228281604();

  return v12;
}

id sub_228280A58()
{
  v1 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_timer];
  if (v1)
  {
    [v1 invalidate];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for MedicationsDayHistoryView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_228280BFC()
{
  swift_getObjectType();
  sub_2281AB388(0, &qword_280DDCE30);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_228397F20;
  *(v1 + 32) = sub_2282806BC();
  *(v1 + 40) = sub_22828073C();
  v2 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_22817A958(0, &qword_280DDB9B0, 0x277D75D18);
  v3 = sub_228392190();

  v4 = [v2 initWithArrangedSubviews_];

  [v4 setAxis_];
  [v4 setSpacing_];
  v5 = v4;
  [v0 addSubview_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_228397F00;
  v8 = [v5 leadingAnchor];
  v9 = [v0 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v7 + 32) = v10;
  v11 = [v5 trailingAnchor];

  v12 = [v0 trailingAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v7 + 40) = v13;
  v14 = [v5 topAnchor];

  v15 = [v0 topAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v7 + 48) = v16;
  v17 = [v5 bottomAnchor];

  v18 = [v0 bottomAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v7 + 56) = v19;
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v20 = sub_228392190();

  [v6 activateConstraints_];

  v21 = [v0 traitCollection];
  v22 = [v21 preferredContentSizeCategory];

  v23 = sub_2283928C0() & 1;
  v24 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_state);
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_state) = v23;
  sub_228280800(v24);
  sub_22828482C(0, &qword_27D825090, sub_2281D51F0, MEMORY[0x277D84560]);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_228397F40;
  v26 = sub_228391640();
  v27 = MEMORY[0x277D74DB8];
  *(v25 + 32) = v26;
  *(v25 + 40) = v27;
  sub_228392B50();

  swift_unknownObjectRelease();
}

void sub_228281050()
{
  v2 = v0;
  v3 = sub_2282806BC();
  sub_228392B10();

  if (*(v2 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_state))
  {
    if (*(v2 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_state) == 1)
    {
      sub_2281AB388(0, &qword_280DDCE30);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_22839CC40;
      *(v20 + 32) = sub_22828050C();
      *(v20 + 40) = sub_228280520();
      *(v20 + 48) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
      *(v20 + 56) = sub_228280560();
      sub_22817A958(0, &qword_280DDB9B0, 0x277D75D18);
      *(v20 + 64) = sub_228392B30();
      v21 = objc_allocWithZone(MEMORY[0x277D75A68]);
      v22 = sub_228392190();

      v23 = [v21 initWithArrangedSubviews_];

      [v23 setCustomSpacing:*(v2 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView____lazy_storage___doseStatusImageView) afterView:5.0];
      v6 = &off_2785F4000;
      [v23 setAxis_];
      [v23 setAlignment_];
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_228397F20;
      *(inited + 32) = v23;
      v5 = (inited + 32);
      v4 = v23;
      *(inited + 40) = sub_228280540();
      v25 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView____lazy_storage___headerStackView;
      if ((inited & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x22AAB6D80](0, inited);
      }

      else
      {
        if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v26 = *v5;
      }

      v27 = v26;
      v1 = &off_2785F4000;
      [*(v2 + v25) addArrangedSubview_];

      if ((inited & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x22AAB6D80](1, inited);
      }

      else
      {
        if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
        {
          goto LABEL_31;
        }

        v28 = *(inited + 40);
      }

      v29 = v28;
      [*(v2 + v25) addArrangedSubview_];

      swift_setDeallocating();
      v30 = *(inited + 16);
      swift_arrayDestroy();
      [*(v2 + v25) setAxis_];
      [*(v2 + v25) setAlignment_];
    }

    else
    {
      sub_228393300();
      __break(1u);
    }

    return;
  }

  sub_2281AB388(0, &qword_280DDCE30);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_22839F000;
  *(v4 + 32) = sub_22828050C();
  *(v4 + 40) = sub_228280520();
  *(v4 + 48) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *(v4 + 56) = sub_228280540();
  *(v4 + 64) = sub_228280560();
  sub_22817A958(0, &qword_280DDB9B0, 0x277D75D18);
  *(v4 + 72) = sub_228392B30();
  v5 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView____lazy_storage___headerStackView;
  v1 = (v4 & 0xFFFFFFFFFFFFFF8);
  v6 = (v4 & 0xC000000000000001);
  if ((v4 & 0xC000000000000001) != 0)
  {
    goto LABEL_32;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_30;
  }

  for (i = *(v4 + 32); ; i = MEMORY[0x22AAB6D80](0, v4))
  {
    v8 = i;
    [*(v5 + v2) addArrangedSubview_];

    if (v6)
    {
      v9 = MEMORY[0x22AAB6D80](1, v4);
    }

    else
    {
      if (v1[2] < 2)
      {
        goto LABEL_30;
      }

      v9 = *(v4 + 40);
    }

    v10 = v9;
    [*(v5 + v2) addArrangedSubview_];

    if (v6)
    {
      v11 = MEMORY[0x22AAB6D80](2, v4);
    }

    else
    {
      if (v1[2] < 3)
      {
        goto LABEL_30;
      }

      v11 = *(v4 + 48);
    }

    v12 = v11;
    [*(v5 + v2) addArrangedSubview_];

    if (v6)
    {
      v13 = MEMORY[0x22AAB6D80](3, v4);
    }

    else
    {
      if (v1[2] < 4)
      {
        goto LABEL_30;
      }

      v13 = *(v4 + 56);
    }

    v14 = v13;
    [*(v5 + v2) addArrangedSubview_];

    if (v6)
    {
      v15 = MEMORY[0x22AAB6D80](4, v4);
    }

    else
    {
      if (v1[2] < 5)
      {
        goto LABEL_30;
      }

      v15 = *(v4 + 64);
    }

    v16 = v15;
    [*(v5 + v2) addArrangedSubview_];

    if (v6)
    {
      break;
    }

    if (v1[2] >= 6)
    {
      v17 = *(v4 + 72);
      goto LABEL_20;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

  v17 = MEMORY[0x22AAB6D80](5, v4);
LABEL_20:
  v18 = v17;
  [*(v5 + v2) addArrangedSubview_];

  swift_setDeallocating();
  v19 = *(v4 + 16);
  swift_arrayDestroy();
  [*(v5 + v2) setCustomSpacing:*(v2 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView____lazy_storage___doseStatusImageView) afterView:5.0];
  [*(v5 + v2) setCustomSpacing:*(v2 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView____lazy_storage___elapsedTimeLabel) afterView:2.0];
  [*(v5 + v2) setAxis_];
  [*(v5 + v2) setAlignment_];
}

void sub_228281604()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6[4] = sub_2282849F0;
  v6[5] = v2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_228281980;
  v6[3] = &block_descriptor_15;
  v3 = _Block_copy(v6);

  v4 = [v1 scheduledTimerWithTimeInterval:1 repeats:v3 block:60.0];
  _Block_release(v3);
  v5 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_timer);
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_timer) = v4;
}

void sub_228281718()
{
  sub_22828482C(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = &v21[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v2);
  v6 = &v21[-v5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = Strong[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_previousDisplayContext];
    if (v9 == 2)
    {
    }

    else
    {
      v10 = &Strong[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_timeTextCache];
      v11 = *&Strong[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_timeTextCache + 8];
      if (v9)
      {
        if (v11)
        {
          v12 = *v10;
          v13 = *&Strong[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_timeTextCache + 8];
        }

        else
        {
          v12 = 0;
          v13 = 0xE000000000000000;
        }

        v16 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_elapsedTimeCache;
        swift_beginAccess();
        sub_22822BFC0(&v8[v16], v4);

        sub_2282819E8(v12, v13, v4);

        v17 = MEMORY[0x277CC9578];
        v18 = v4;
      }

      else
      {
        if (v11)
        {
          v14 = *v10;
          v15 = *&Strong[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_timeTextCache + 8];
        }

        else
        {
          v14 = 0;
          v15 = 0xE000000000000000;
        }

        v19 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_elapsedTimeCache;
        swift_beginAccess();
        sub_22822BFC0(&v8[v19], v6);
        if (*&v8[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_lineItems])
        {
          v20 = *&v8[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_lineItems];
        }

        else
        {
          v20 = MEMORY[0x277D84F90];
        }

        sub_2282822FC(v14, v15, v6, v20);

        v17 = MEMORY[0x277CC9578];
        v18 = v6;
      }

      sub_228284980(v18, &qword_280DDCDB0, v17);
    }
  }
}

void sub_228281980(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_2282819E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_22838F580();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22828482C(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v32 - v18;
  v20 = (v4 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_timeTextCache);
  v21 = *(v4 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_timeTextCache + 8);
  *v20 = a1;
  v20[1] = a2;

  sub_22822BFC0(a3, v19);
  v22 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_elapsedTimeCache;
  swift_beginAccess();
  sub_22822C098(v19, v4 + v22);
  swift_endAccess();
  v23 = sub_228280520();
  v24 = sub_228391FC0();
  [v23 setText_];

  v25 = sub_228280540();
  sub_22822BFC0(a3, v17);
  v26 = sub_22838F440();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v17, 1, v26) == 1)
  {
    sub_228284980(v17, &qword_280DDCDB0, MEMORY[0x277CC9578]);
    v28 = 0;
  }

  else
  {
    sub_22838F540();
    Date.timeElapsedToNow(locale:useShortUnitsIfNeeded:)(v12, 1);
    v30 = v29;
    (*(v9 + 8))(v12, v8);
    (*(v27 + 8))(v17, v26);
    if (v30)
    {
      v28 = sub_228391FC0();
    }

    else
    {
      v28 = 0;
    }
  }

  [v25 setText_];

  v31 = sub_22828050C();
  [v31 setHidden_];
}

uint64_t Date.timeElapsedToNow(locale:useShortUnitsIfNeeded:)(uint64_t a1, char a2)
{
  v47 = a1;
  sub_22828482C(0, &qword_27D826710, MEMORY[0x277CC9640], MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v39 - v5;
  v7 = sub_22838F560();
  v43 = *(v7 - 8);
  v44 = v7;
  v8 = *(v43 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22838F4D0();
  v45 = *(v11 - 8);
  v46 = v11;
  v12 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v42 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22838F440();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_22838F6C0();
  v19 = *(v48 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v48);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = [objc_opt_self() currentCalendar];
  sub_22838F630();

  sub_22838F3F0();
  sub_22838F360();
  v25 = v24;
  if ((sub_22838F5A0() & 1) == 0 && (sub_22838F5E0() & 1) == 0)
  {
    v27 = 0;
    goto LABEL_17;
  }

  sub_2283923F0();
  if (v25 >= v26)
  {
    v40 = v6;
    v41 = v14;
    v28 = [objc_allocWithZone(MEMORY[0x277CCAC78]) init];
    v29 = sub_22838F4F0();
    [v28 setLocale_];

    [v28 setDateTimeStyle_];
    if (a2)
    {
      sub_22838F570();
      v30 = v40;
      sub_22838F550();
      (*(v43 + 8))(v10, v44);
      v31 = v45;
      v32 = v46;
      if ((*(v45 + 48))(v30, 1, v46) == 1)
      {
        sub_228284980(v30, &qword_27D826710, MEMORY[0x277CC9640]);
      }

      else
      {
        v33 = v42;
        (*(v31 + 32))(v42, v30, v32);
        if (qword_27D8232F0 != -1)
        {
          swift_once();
        }

        v47 = qword_27D826708;
        v34 = sub_22838F4C0();
        LODWORD(v47) = sub_2282845F4(v34, v35, v47);

        (*(v31 + 8))(v33, v32);
        if (v47)
        {
          v36 = 2;
LABEL_16:
          [v28 setUnitsStyle_];
          sub_22838F360();
          v37 = [v28 localizedStringFromTimeInterval_];
          v27 = sub_228392000();

          v14 = v41;
          goto LABEL_17;
        }
      }
    }

    v36 = 3;
    goto LABEL_16;
  }

  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v27 = sub_22838F0C0();
LABEL_17:
  (*(v15 + 8))(v18, v14);
  (*(v19 + 8))(v22, v48);
  return v27;
}

id sub_2282822FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_2283911B0();
  v45 = *(v10 - 8);
  v46 = v10;
  v11 = *(v45 + 64);
  MEMORY[0x28223BE20](v10);
  v44 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_22838F580();
  v13 = *(v43 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v43);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22828482C(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v42 - v22;
  v24 = (v5 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_timeTextCache);
  v25 = *(v5 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_timeTextCache + 8);
  *v24 = a1;
  v24[1] = a2;

  sub_22822BFC0(a3, v23);
  v26 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_elapsedTimeCache;
  swift_beginAccess();

  sub_22822C098(v23, v5 + v26);
  swift_endAccess();
  v27 = *(v5 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_lineItems);
  *(v5 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_lineItems) = a4;

  v28 = sub_228280520();
  v29 = sub_228391FC0();
  [v28 setText_];

  v30 = sub_228280540();
  sub_22822BFC0(a3, v21);
  v31 = sub_22838F440();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v21, 1, v31) == 1)
  {
    sub_228284980(v21, &qword_280DDCDB0, MEMORY[0x277CC9578]);
    v33 = 0;
  }

  else
  {
    sub_22838F540();
    Date.timeElapsedToNow(locale:useShortUnitsIfNeeded:)(v16, 1);
    v35 = v34;
    (*(v13 + 8))(v16, v43);
    (*(v32 + 8))(v21, v31);
    if (v35)
    {
      v33 = sub_228391FC0();
    }

    else
    {
      v33 = 0;
    }
  }

  [v30 setText_];

  if (*(a4 + 16) == 1)
  {
    v36 = sub_22828050C();
    sub_228282790((a4 + 32));

    return [*(v5 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView____lazy_storage___doseStatusImageView) setHidden_];
  }

  else
  {
    v38 = v44;
    sub_228391150();
    v39 = sub_2283911A0();
    v40 = sub_2283925C0();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_22816B000, v39, v40, "Expected 1 lineItem to exist for [MedicationDoseEvent] since we do not group\ndoses by time in the Medication Detail Room.", v41, 2u);
      MEMORY[0x22AAB7B80](v41, -1, -1);
    }

    return (*(v45 + 8))(v38, v46);
  }
}

void sub_228282790(void *a1)
{
  v2 = v1;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v4);
  LOBYTE(v4) = (*(v5 + 24))(v4, v5);
  v6 = objc_opt_self();
  v7 = &selRef_systemGrayColor;
  if ((v4 & 1) == 0)
  {
    v7 = &selRef_systemCyanColor;
  }

  v8 = [v6 *v7];
  sub_2281AB388(0, &qword_280DDCE30);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_228397F20;
  *(v9 + 32) = [objc_opt_self() systemWhiteColor];
  *(v9 + 40) = v8;
  sub_22817A958(0, &qword_280DDB990, 0x277D75348);
  v10 = v8;
  v11 = sub_228392190();

  v12 = objc_opt_self();
  v13 = [v12 configurationWithPaletteColors_];

  v14 = [objc_opt_self() preferredFontForTextStyle_];
  v15 = [v12 configurationWithFont_];

  v21 = [v13 configurationByApplyingConfiguration_];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v16);
  (*(v17 + 8))(v16, v17);
  v18 = sub_228391FC0();

  v19 = [objc_opt_self() systemImageNamed_];

  [v2 setImage_];
  [v2 setPreferredSymbolConfiguration_];
  LODWORD(v20) = 1148846080;
  [v2 setContentCompressionResistancePriority:0 forAxis:v20];
}

uint64_t sub_228282A4C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_lineItems);
  *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_lineItems) = a1;

  v5 = sub_22828073C();
  sub_228392B10();

  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v18 = MEMORY[0x277D84F90];
    sub_228393240();
    v8 = a1 + 32;
    do
    {
      sub_228180FB0(v8, v17);
      sub_228282C00(v17);
      __swift_destroy_boxed_opaque_existential_0(v17);
      sub_228393210();
      v9 = *(v18 + 16);
      sub_228393250();
      sub_228393260();
      sub_228393220();
      v8 += 40;
      --v6;
    }

    while (v6);
    v7 = v18;
  }

  if (v7 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
  {
    v11 = 0;
    v12 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView____lazy_storage___lineItemsStackView;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x22AAB6D80](v11, v7);
      }

      else
      {
        if (v11 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v13 = *(v7 + 8 * v11 + 32);
      }

      v14 = v13;
      v15 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      [*(v2 + v12) addArrangedSubview_];

      ++v11;
      if (v15 == i)
      {
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }
}

uint64_t sub_228282C00(void *a1)
{
  sub_22828482C(0, &qword_27D825628, MEMORY[0x277D12720], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v77 = &v76 - v4;
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v5);
  if ((*(v6 + 24))(v5, v6))
  {
    v7 = MEMORY[0x277D837D0];
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();
    sub_2281AEAE8(0, &qword_280DDB870, &qword_280DDB830, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_228397F40;
    v9 = a1[3];
    v10 = a1[4];
    __swift_project_boxed_opaque_existential_0(a1, v9);
    v11 = (*(v10 + 16))(v9, v10);
    v13 = v12;
    *(v8 + 56) = v7;
    *(v8 + 64) = sub_22818E210();
    *(v8 + 32) = v11;
    *(v8 + 40) = v13;
    v82 = sub_228391FD0();
    *&v81 = v14;
  }

  else
  {
    v15 = a1[3];
    v16 = a1[4];
    __swift_project_boxed_opaque_existential_0(a1, v15);
    v82 = (*(v16 + 16))(v15, v16);
    *&v81 = v17;
  }

  v18 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  sub_2281AB388(0, &qword_27D823EE0);
  v19 = swift_allocObject();
  v78 = xmmword_228397F30;
  *(v19 + 16) = xmmword_228397F30;
  v20 = qword_27D8232E8;
  v21 = v18;
  if (v20 != -1)
  {
    swift_once();
  }

  v23 = qword_27D828D80;
  v22 = *algn_27D828D88;
  *(v19 + 32) = qword_27D828D80;
  *(v19 + 40) = v22;
  *(v19 + 48) = 0x65736F447473614CLL;
  *(v19 + 56) = 0xE800000000000000;

  v24 = sub_228392190();

  v25 = HKUIJoinStringsForAutomationIdentifier();

  [v21 setAccessibilityIdentifier_];
  [v21 setAdjustsFontForContentSizeCategory_];
  v26 = objc_opt_self();
  v27 = *MEMORY[0x277D76968];
  v28 = *MEMORY[0x277D74420];
  v79 = v26;
  v29 = [v26 _preferredFontForTextStyle_weight_];
  [v21 setFont_];

  v30 = objc_opt_self();
  v31 = [v30 secondaryLabelColor];
  [v21 setTextColor_];

  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  sub_228392050();

  v32 = sub_228391FC0();

  [v21 setText_];

  v33 = a1[3];
  v34 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v33);
  [v21 setHidden_];
  if (!v80[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_state])
  {
    v35 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
    sub_228282790(a1);
    v36 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    v37 = swift_allocObject();
    *(v37 + 16) = v78;
    *(v37 + 32) = v23;
    *(v37 + 40) = v22;
    strcpy((v37 + 48), "MedicationName");
    *(v37 + 63) = -18;

    v38 = v36;
    v39 = sub_228392190();

    v40 = HKUIJoinStringsForAutomationIdentifier();

    [v38 setAccessibilityIdentifier_];
    [v38 setAdjustsFontForContentSizeCategory_];
    [v38 setNumberOfLines_];
    v41 = [v79 preferredFontForTextStyle_];
    [v38 setFont_];

    v42 = [v30 labelColor];
    [v38 setTextColor_];

    v43 = sub_228391FC0();

    [v38 &selRef:v43 didTapDay:?];

    sub_2281AB388(0, &qword_280DDCE30);
    v44 = swift_allocObject();
    v81 = xmmword_228397F20;
    *(v44 + 16) = xmmword_228397F20;
    *(v44 + 32) = v38;
    *(v44 + 40) = v21;
    v45 = objc_allocWithZone(MEMORY[0x277D75A68]);
    sub_22817A958(0, &qword_280DDB9B0, 0x277D75D18);
    v46 = sub_228392190();

    v47 = [v45 initWithArrangedSubviews_];

    v82 = v21;
    [v47 setAxis_];
    v48 = swift_allocObject();
    *(v48 + 16) = v81;
    *(v48 + 32) = v35;
    *(v48 + 40) = v47;
    v49 = objc_allocWithZone(MEMORY[0x277D75A68]);
    v50 = v35;
    v51 = v47;
    v52 = sub_228392190();

    v53 = [v49 initWithArrangedSubviews_];

    [v53 setAxis_];
    [v53 setAlignment_];
    [v53 setDistribution_];
    [v53 setSpacing_];

    return v53;
  }

  if (v80[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_state] == 1)
  {
    v54 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    [v54 setAdjustsFontForContentSizeCategory_];
    [v54 setNumberOfLines_];
    v55 = [v30 labelColor];
    [v54 setTextColor_];

    [v54 setLineBreakMode_];
    v56 = swift_allocObject();
    *(v56 + 16) = v78;
    *(v56 + 32) = v23;
    *(v56 + 40) = v22;
    strcpy((v56 + 48), "MedicationName");
    *(v56 + 63) = -18;

    v57 = v54;
    v58 = sub_228392190();

    v59 = HKUIJoinStringsForAutomationIdentifier();

    [v57 setAccessibilityIdentifier_];
    v60 = a1[3];
    v61 = a1[4];
    __swift_project_boxed_opaque_existential_0(a1, v60);
    v62 = (*(v61 + 24))(v60, v61);
    v63 = &selRef_systemGrayColor;
    if ((v62 & 1) == 0)
    {
      v63 = &selRef_systemCyanColor;
    }

    v64 = [v30 *v63];
    v65 = [v79 preferredFontForTextStyle_];
    sub_22817A958(0, &unk_280DDBAA0, 0x277CCA898);
    v66 = a1[3];
    v67 = a1[4];
    __swift_project_boxed_opaque_existential_0(a1, v66);
    (*(v67 + 8))(v66, v67);
    sub_2281AB388(0, &qword_280DDCE30);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_228396260;
    *(v68 + 32) = v64;
    v69 = sub_228392800();
    (*(*(v69 - 8) + 56))(v77, 1, 1, v69);
    v80 = v64;
    v75 = v65;
    v70 = sub_2283927F0();
    [v57 setAttributedText_];

    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_228397F20;
    *(v71 + 32) = v57;
    *(v71 + 40) = v21;
    v72 = objc_allocWithZone(MEMORY[0x277D75A68]);
    sub_22817A958(0, &qword_280DDB9B0, 0x277D75D18);
    v73 = sub_228392190();

    v53 = [v72 initWithArrangedSubviews_];

    [v53 setAxis_];
    return v53;
  }

  result = sub_228393300();
  __break(1u);
  return result;
}

uint64_t sub_228283890(uint64_t a1)
{
  v2 = sub_22838F580();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22828482C(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v24 - v9;
  v11 = sub_228280540();
  v12 = [v11 text];

  if (v12)
  {
    v13 = sub_228392000();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  sub_22822BFC0(a1, v10);
  v16 = sub_22838F440();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v10, 1, v16) == 1)
  {
    sub_228284980(v10, &qword_280DDCDB0, MEMORY[0x277CC9578]);
    if (!v15)
    {
      return 0;
    }

LABEL_17:

    return 1;
  }

  sub_22838F540();
  v18 = Date.timeElapsedToNow(locale:useShortUnitsIfNeeded:)(v6, 1);
  v20 = v19;
  (*(v3 + 8))(v6, v2);
  (*(v17 + 8))(v10, v16);
  if (v15)
  {
    if (v20)
    {
      if (v13 == v18 && v15 == v20)
      {
      }

      else
      {
        v22 = sub_228393460();

        if ((v22 & 1) == 0)
        {
          return 1;
        }
      }

      return 0;
    }

    goto LABEL_17;
  }

  if (v20)
  {
    goto LABEL_17;
  }

  return 0;
}

uint64_t sub_228283B64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_lineItems);
  if (!v4)
  {
    return 1;
  }

  v8 = *(v3 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_lineItems);

  v9 = sub_228280520();
  v10 = [v9 text];

  if (!v10)
  {
    goto LABEL_31;
  }

  v11 = sub_228392000();
  v13 = v12;

  if (v11 == a1 && v13 == a2)
  {
  }

  else
  {
    v15 = sub_228393460();

    if ((v15 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  v17 = *(v4 + 16);
  if (v17 != *(a3 + 16))
  {
LABEL_31:

    return 1;
  }

  v18 = 0;
  v19 = 0;
  v45 = a3 + 32;
  while (1)
  {
    if (v19 == v17)
    {
      v62 = 0;
      v19 = v17;
      v60 = 0u;
      v61 = 0u;
      goto LABEL_18;
    }

    if (v19 >= v17)
    {
      break;
    }

    result = sub_228180FB0(v45 + 40 * v19, &v60);
    if (__OFADD__(v19++, 1))
    {
      goto LABEL_41;
    }

LABEL_18:
    if (v18 == v17)
    {
      v59 = 0;
      v18 = v17;
      v57 = 0u;
      v58 = 0u;
    }

    else
    {
      if (v18 >= *(v4 + 16))
      {
        goto LABEL_42;
      }

      sub_228180FB0(v4 + 32 + 40 * v18++, &v57);
    }

    v52[0] = v60;
    v52[1] = v61;
    v53 = v62;
    v54 = v57;
    v55 = v58;
    v56 = v59;
    if (!*(&v61 + 1))
    {

      if (*(&v55 + 1))
      {
        sub_2282848F8(&v54);
        return 1;
      }

      return 0;
    }

    if (!*(&v55 + 1))
    {

      v44 = v52;
LABEL_38:
      __swift_destroy_boxed_opaque_existential_0(v44);
      return 1;
    }

    sub_22819A62C(v52, v49);
    sub_22819A62C(&v54, v46);
    v27 = v50;
    v28 = v51;
    __swift_project_boxed_opaque_existential_0(v49, v50);
    v29 = (*(v28 + 8))(v27, v28);
    v31 = v30;
    v32 = v47;
    v33 = v48;
    __swift_project_boxed_opaque_existential_0(v46, v47);
    if (v29 == (*(v33 + 8))(v32, v33) && v31 == v34)
    {
    }

    else
    {
      v35 = sub_228393460();

      if ((v35 & 1) == 0)
      {
LABEL_37:

        __swift_destroy_boxed_opaque_existential_0(v46);
        v44 = v49;
        goto LABEL_38;
      }
    }

    v36 = v50;
    v37 = v51;
    __swift_project_boxed_opaque_existential_0(v49, v50);
    v38 = (*(v37 + 16))(v36, v37);
    v40 = v39;
    v41 = v47;
    v42 = v48;
    __swift_project_boxed_opaque_existential_0(v46, v47);
    if (v38 == (*(v42 + 16))(v41, v42) && v40 == v43)
    {
    }

    else
    {
      v20 = sub_228393460();

      if ((v20 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    v21 = v50;
    v22 = v51;
    __swift_project_boxed_opaque_existential_0(v49, v50);
    LOBYTE(v21) = (*(v22 + 24))(v21, v22);
    v23 = v47;
    v24 = v48;
    __swift_project_boxed_opaque_existential_0(v46, v47);
    v25 = v21 ^ (*(v24 + 24))(v23, v24);
    __swift_destroy_boxed_opaque_existential_0(v46);
    result = __swift_destroy_boxed_opaque_existential_0(v49);
    if (v25)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_228283FA0()
{
  v0 = sub_2281F01D8(&unk_283B66E18);
  result = swift_arrayDestroy();
  qword_27D826708 = v0;
  return result;
}

uint64_t static Date.shortUnitsLocales.getter()
{
  if (qword_27D8232F0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_228284048(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v4 = sub_228393110();

    return v4 & 1;
  }

  if (!*(a2 + 16))
  {
    goto LABEL_36;
  }

  v6 = *(a2 + 40);
  sub_228393520();
  sub_228300540();
  sub_2283920B0();

  v7 = sub_228393570();
  v8 = -1 << *(a2 + 32);
  v9 = v7 & ~v8;
  if (((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_36:
    v45 = 0;
    return v45 & 1;
  }

  v48 = ~v8;
  v46 = a1;
  v47 = *MEMORY[0x277CCC520];
  while (1)
  {
    v10 = *(a2 + 48);
    v11 = *(v10 + 8 * v9);
    v12 = *(v11 + 24);
    if (!v12)
    {
      v26 = *(v10 + 8 * v9);

      goto LABEL_18;
    }

    v13 = *(v10 + 8 * v9);

    v14 = v12;
    v15 = [v14 metadata];
    if (!v15)
    {

      goto LABEL_18;
    }

    v16 = v15;
    v17 = sub_228391F20();

    v18 = sub_228392000();
    if (!*(v17 + 16))
    {

      goto LABEL_18;
    }

    v20 = sub_2281A76E0(v18, v19);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

LABEL_17:
      a1 = v46;
LABEL_18:
      v27 = [*(v11 + 16) semanticIdentifier];
      v28 = [v27 stringValue];

      v24 = sub_228392000();
      v23 = v29;

      v25 = *(a1 + 24);
      if (!v25)
      {
        goto LABEL_28;
      }

      goto LABEL_19;
    }

    sub_2281BC4A4(*(v17 + 56) + 32 * v20, v51);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_17;
    }

    v24 = v49;
    v23 = v50;
    a1 = v46;
    v25 = *(v46 + 24);
    if (!v25)
    {
      goto LABEL_28;
    }

LABEL_19:
    v30 = v25;
    v31 = [v30 metadata];
    if (!v31)
    {

      goto LABEL_28;
    }

    v32 = v31;
    v33 = sub_228391F20();

    v34 = sub_228392000();
    if (!*(v33 + 16))
    {

LABEL_27:

      a1 = v46;
      goto LABEL_28;
    }

    v36 = sub_2281A76E0(v34, v35);
    v38 = v37;

    if ((v38 & 1) == 0)
    {

      goto LABEL_27;
    }

    sub_2281BC4A4(*(v33 + 56) + 32 * v36, v51);

    a1 = v46;
    if (swift_dynamicCast())
    {
      v40 = v49;
      v39 = v50;
      goto LABEL_29;
    }

LABEL_28:
    v41 = [*(a1 + 16) semanticIdentifier];
    v42 = [v41 stringValue];

    v40 = sub_228392000();
    v39 = v43;

LABEL_29:
    if (v24 == v40 && v23 == v39)
    {
      break;
    }

    v45 = sub_228393460();

    if ((v45 & 1) == 0)
    {
      v9 = (v9 + 1) & v48;
      if ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
      {
        continue;
      }
    }

    return v45 & 1;
  }

  v45 = 1;
  return v45 & 1;
}

uint64_t sub_2282844A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a5 + 16))
  {
    return 0;
  }

  v10 = *(a5 + 40);
  sub_228393520();
  sub_2283920B0();
  sub_2283920B0();
  v11 = sub_228393570();
  v12 = a5 + 56;
  v13 = -1 << *(a5 + 32);
  v14 = v11 & ~v13;
  if (((*(a5 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 0;
  }

  v15 = ~v13;
  v16 = *(a5 + 48);
  while (1)
  {
    v17 = (v16 + 32 * v14);
    v18 = v17[2];
    v19 = v17[3];
    v20 = *v17 == a1 && v17[1] == a2;
    if (v20 || (sub_228393460() & 1) != 0)
    {
      v21 = v18 == a3 && v19 == a4;
      if (v21 || (sub_228393460() & 1) != 0)
      {
        break;
      }
    }

    v14 = (v14 + 1) & v15;
    if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_2282845F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_228393520();
  sub_2283920B0();
  v7 = sub_228393570();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_228393460() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t type metadata accessor for MedicationsDayHistoryView()
{
  result = qword_27D826778;
  if (!qword_27D826778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_228284740()
{
  sub_22828482C(319, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_22828482C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2282848A4()
{
  result = qword_27D826788;
  if (!qword_27D826788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826788);
  }

  return result;
}

uint64_t sub_2282848F8(uint64_t a1)
{
  sub_2281AEAE8(0, &qword_27D826790, &qword_27D823F08, &protocol descriptor for DayHistoryLineItemDisplayable, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_228284980(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22828482C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_228284A14()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v0 setAdjustsFontForContentSizeCategory_];
  [v0 setNumberOfLines_];
  sub_2281AB388(0, &qword_27D823EE0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_228397F30;
  v2 = qword_27D8232E8;
  v3 = v0;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = *algn_27D828D88;
  *(v1 + 32) = qword_27D828D80;
  *(v1 + 40) = v4;
  strcpy((v1 + 48), "TimeTakenLabel");
  *(v1 + 63) = -18;

  v5 = sub_228392190();

  v6 = HKUIJoinStringsForAutomationIdentifier();

  [v3 setAccessibilityIdentifier_];
  v7 = [objc_opt_self() preferredFontForTextStyle_];
  [v3 setFont_];

  return v3;
}

id sub_228284BB8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v0 setAdjustsFontForContentSizeCategory_];
  [v0 setNumberOfLines_];
  sub_2281AB388(0, &qword_27D823EE0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_228397F30;
  v2 = qword_27D8232E8;
  v3 = v0;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = *algn_27D828D88;
  *(v1 + 32) = qword_27D828D80;
  *(v1 + 40) = v4;
  *(v1 + 48) = 0xD000000000000010;
  *(v1 + 56) = 0x80000002283B0290;

  v5 = sub_228392190();

  v6 = HKUIJoinStringsForAutomationIdentifier();

  [v3 setAccessibilityIdentifier_];
  v7 = [objc_opt_self() _preferredFontForTextStyle_weight_];
  [v3 setFont_];

  v8 = [objc_opt_self() systemGrayColor];
  [v3 setTextColor_];

  return v3;
}

void sub_228284D9C()
{
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView____lazy_storage___doseStatusImageView) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView____lazy_storage___timeLabel) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView____lazy_storage___elapsedTimeLabel) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView____lazy_storage___chevronImage) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView____lazy_storage___headerStackView) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView____lazy_storage___lineItemsStackView) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_state) = 2;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_lineItems) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_timer) = 0;
  v1 = (v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_timeTextCache);
  *v1 = 0;
  v1[1] = 0;
  v2 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_elapsedTimeCache;
  v3 = sub_22838F440();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_previousDisplayContext) = 2;
  sub_228393300();
  __break(1u);
}

void sub_228284ED4(void *a1)
{
  v2 = [a1 traitCollection];
  v5 = [v2 preferredContentSizeCategory];

  v3 = sub_2283928C0() & 1;
  v4 = *(a1 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_state);
  *(a1 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_state) = v3;
  sub_228280800(v4);
}

void MedicationSummaryView.body.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  *a1 = sub_228391C20();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_2282852C4();
  sub_22828506C(v3, v4, a1 + *(v7 + 44));
  v8 = sub_228391D20();
  LOBYTE(v3) = sub_228391C60();
  sub_228285B0C();
  v10 = a1 + *(v9 + 36);
  *v10 = v8;
  *(v10 + 8) = v3;
}

uint64_t sub_22828506C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a3;
  sub_2282853CC();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v36 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = (&v36 - v9);
  *v10 = sub_228391D90();
  v10[1] = v11;
  sub_228286404();
  sub_228285CC4((v10 + *(v12 + 44)));
  v38 = a1;
  v39 = a2;
  sub_22819DFF4();

  v13 = sub_228391CE0();
  v15 = v14;
  v17 = v16;
  sub_228391CB0();
  v18 = sub_228391CD0();
  v20 = v19;
  v22 = v21;

  sub_22828649C(v13, v15, v17 & 1);

  sub_228391C90();
  v23 = sub_228391CC0();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_22828649C(v18, v20, v22 & 1);

  v30 = v36;
  sub_228286610(v10, v36, sub_2282853CC);
  v31 = v37;
  sub_228286610(v30, v37, sub_2282853CC);
  sub_22828535C();
  v33 = v31 + *(v32 + 48);
  *v33 = 0x402E000000000000;
  *(v33 + 8) = 0;
  v34 = v31 + *(v32 + 64);
  *v34 = v23;
  *(v34 + 8) = v25;
  *(v34 + 16) = v27 & 1;
  *(v34 + 24) = v29;
  sub_2282864AC(v23, v25, v27 & 1);

  sub_228286678(v10, sub_2282853CC);
  sub_22828649C(v23, v25, v27 & 1);

  return sub_228286678(v30, sub_2282853CC);
}

void sub_2282852C4()
{
  if (!qword_27D826798)
  {
    sub_228285480(255, &qword_27D8267A0, sub_22828535C, MEMORY[0x277CE14B8]);
    v0 = sub_228391BB0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D826798);
    }
  }
}

void sub_22828535C()
{
  if (!qword_27D8267A8)
  {
    sub_2282853CC();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27D8267A8);
    }
  }
}

void sub_2282853CC()
{
  if (!qword_27D8267B0)
  {
    sub_228285480(255, &qword_27D8267B8, sub_2282854E4, MEMORY[0x277CE14B8]);
    sub_228285AA8(&qword_27D826840, &qword_27D8267B8, sub_2282854E4);
    v0 = sub_228391D70();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8267B0);
    }
  }
}

void sub_228285480(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2282854E4()
{
  if (!qword_27D8267C0)
  {
    sub_228285554();
    sub_228285684();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D8267C0);
    }
  }
}

void sub_228285554()
{
  if (!qword_27D8267C8)
  {
    sub_2282855B4();
    v0 = sub_228391BD0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8267C8);
    }
  }
}

void sub_2282855B4()
{
  if (!qword_27D8267D0)
  {
    sub_228285630();
    v0 = sub_228391B80();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8267D0);
    }
  }
}

unint64_t sub_228285630()
{
  result = qword_27D8267D8;
  if (!qword_27D8267D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8267D8);
  }

  return result;
}

void sub_228285684()
{
  if (!qword_27D8267E0)
  {
    sub_228285C54(255, &qword_27D8267E8, MEMORY[0x277CDF838], MEMORY[0x277CDF688], MEMORY[0x277CDFAB8]);
    sub_228285718();
    v0 = sub_228391BD0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8267E0);
    }
  }
}

void sub_228285718()
{
  if (!qword_27D8267F0)
  {
    sub_22828577C();
    sub_2282858F0();
    v0 = sub_228391B90();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8267F0);
    }
  }
}

void sub_22828577C()
{
  if (!qword_27D8267F8)
  {
    sub_228285814();
    sub_228285480(255, &qword_27D826818, MEMORY[0x277CE1060], MEMORY[0x277CE0860]);
    v0 = sub_228391BD0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8267F8);
    }
  }
}

void sub_228285814()
{
  if (!qword_27D826800)
  {
    sub_228285874();
    v0 = sub_228391BD0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D826800);
    }
  }
}

void sub_228285874()
{
  if (!qword_27D826808)
  {
    sub_22821B3F8(255, &qword_27D826810, MEMORY[0x277CE0AE0], MEMORY[0x277D83D88]);
    v0 = sub_228391C50();
    if (!v1)
    {
      atomic_store(v0, &qword_27D826808);
    }
  }
}

unint64_t sub_2282858F0()
{
  result = qword_27D826820;
  if (!qword_27D826820)
  {
    sub_22828577C();
    sub_228285970();
    sub_228285A20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826820);
  }

  return result;
}

unint64_t sub_228285970()
{
  result = qword_27D826828;
  if (!qword_27D826828)
  {
    sub_228285814();
    sub_228286338(&qword_27D826830, sub_228285874);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826828);
  }

  return result;
}

unint64_t sub_228285A20()
{
  result = qword_27D826838;
  if (!qword_27D826838)
  {
    sub_228285480(255, &qword_27D826818, MEMORY[0x277CE1060], MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826838);
  }

  return result;
}

uint64_t sub_228285AA8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_228285480(255, a2, a3, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_228285B0C()
{
  if (!qword_27D826848)
  {
    sub_228285BA0();
    sub_228285C54(255, &qword_27D826860, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0718]);
    v0 = sub_228391BD0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D826848);
    }
  }
}

void sub_228285BA0()
{
  if (!qword_27D826850)
  {
    sub_228285480(255, &qword_27D8267A0, sub_22828535C, MEMORY[0x277CE14B8]);
    sub_228285AA8(&qword_27D826858, &qword_27D8267A0, sub_22828535C);
    v0 = sub_228391D60();
    if (!v1)
    {
      atomic_store(v0, &qword_27D826850);
    }
  }
}

void sub_228285C54(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_228285CC4@<X0>(_OWORD *a1@<X8>)
{
  sub_228285480(0, &qword_27D826888, MEMORY[0x277CE09A8], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v37 - v4;
  sub_228285684();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v39 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - v11;
  v13 = objc_opt_self();
  v14 = [v13 secondarySystemBackgroundColor];
  v38 = sub_228391D30();
  sub_228391D90();
  sub_228391BA0();
  *&v46[3] = *&v46[27];
  *&v46[11] = *&v46[35];
  *&v46[19] = *&v46[43];
  sub_22821B3F8(0, &qword_27D826890, MEMORY[0x277CE0F78], MEMORY[0x277D84560]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_228397F30;
  v16 = [v13 systemCyanColor];
  *(v15 + 32) = sub_228391D30();
  v17 = [v13 systemBlueColor];
  *(v15 + 40) = sub_228391D30();
  MEMORY[0x22AAB5920](v15);
  sub_228391DA0();
  sub_228391DB0();
  sub_228391BC0();
  sub_228391D90();
  sub_228391BA0();
  v18 = sub_228391D40();
  v19 = sub_228391C80();
  (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
  sub_228391CA0();
  sub_2282864BC(v5);
  v20 = sub_228391C70();

  KeyPath = swift_getKeyPath();
  v22 = &v12[*(v7 + 44)];
  sub_22828577C();
  v24 = (v22 + *(v23 + 36));
  sub_228285480(0, &qword_27D826818, MEMORY[0x277CE1060], MEMORY[0x277CE0860]);
  v26 = *(v25 + 28);
  v27 = *MEMORY[0x277CE1048];
  v28 = sub_228391D50();
  (*(*(v28 - 8) + 104))(v24 + v26, v27, v28);
  *v24 = swift_getKeyPath();
  *v22 = v18;
  v22[1] = KeyPath;
  v22[2] = v20;
  v29 = v43;
  *(v12 + 2) = v42;
  *(v12 + 3) = v29;
  *(v12 + 4) = v44;
  *(v12 + 10) = v45;
  v30 = v41;
  *v12 = v40;
  *(v12 + 1) = v30;
  v31 = v39;
  sub_228286610(v12, v39, sub_228285684);
  v32 = v38;
  *&v47[0] = v38;
  WORD4(v47[0]) = 256;
  *(v47 + 10) = *v46;
  *(&v47[1] + 10) = *&v46[8];
  *(&v47[2] + 10) = *&v46[16];
  *(&v47[3] + 1) = *&v46[23];
  v33 = v47[1];
  *a1 = v47[0];
  a1[1] = v33;
  v34 = v47[3];
  a1[2] = v47[2];
  a1[3] = v34;
  sub_2282854E4();
  sub_228286610(v31, a1 + *(v35 + 48), sub_228285684);
  sub_228286610(v47, &v48, sub_228285554);
  sub_228286678(v12, sub_228285684);
  sub_228286678(v31, sub_228285684);
  v48 = v32;
  v49 = 256;
  v50 = *v46;
  v51 = *&v46[8];
  *v52 = *&v46[16];
  *&v52[14] = *&v46[23];
  return sub_228286678(&v48, sub_228285554);
}

void sub_2282861E8(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  *a1 = sub_228391C20();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_2282852C4();
  sub_22828506C(v3, v4, a1 + *(v7 + 44));
  v8 = sub_228391D20();
  LOBYTE(v3) = sub_228391C60();
  sub_228285B0C();
  v10 = a1 + *(v9 + 36);
  *v10 = v8;
  *(v10 + 8) = v3;
}

unint64_t sub_228286288()
{
  result = qword_27D826868;
  if (!qword_27D826868)
  {
    sub_228285B0C();
    sub_228286338(&qword_27D826870, sub_228285BA0);
    sub_228286380();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826868);
  }

  return result;
}

uint64_t sub_228286338(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_228286380()
{
  result = qword_27D826878;
  if (!qword_27D826878)
  {
    sub_228285C54(255, &qword_27D826860, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0718]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826878);
  }

  return result;
}

void sub_228286404()
{
  if (!qword_27D826880)
  {
    sub_228285480(255, &qword_27D8267B8, sub_2282854E4, MEMORY[0x277CE14B8]);
    v0 = sub_228391BB0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D826880);
    }
  }
}

uint64_t sub_22828649C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2282864AC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2282864BC(uint64_t a1)
{
  sub_228285480(0, &qword_27D826888, MEMORY[0x277CE09A8], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_228286548(uint64_t a1)
{
  v2 = sub_228391D50();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_228391BF0();
}

uint64_t sub_228286610(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_228286678(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for DDIOnboardingDataSource()
{
  result = qword_27D8268B0;
  if (!qword_27D8268B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_228286724()
{
  sub_2282877B8(319, &qword_27D8238D0, type metadata accessor for MedicationSearchItem, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

uint64_t sub_228286808()
{
  v1 = sub_22838F4A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *(v0 + qword_27D8268A0);
  swift_allocObject();
  swift_weakInit();
  sub_228287708();
  sub_228287770(&qword_27D8268E0, sub_228287708);

  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  sub_2282877B8(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
  v6 = *(sub_22838FEF0() - 8);
  v12[0] = *(v6 + 72);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  *(swift_allocObject() + 16) = xmmword_228397F30;
  v8 = sub_228287080();
  sub_228194894(v8);

  sub_22838F490();
  sub_22838F450();
  v9 = *(v2 + 8);
  v9(v5, v1);
  sub_22838FED0();
  v10 = sub_228286B54();
  sub_228195058(v10);

  sub_22838F490();
  sub_22838F450();
  v9(v5, v1);
  sub_22838FED0();
  sub_22838FF50();
}

uint64_t sub_228286B54()
{
  v13 = MEMORY[0x277D84F90];
  sub_228393240();
  v1 = *(v0 + qword_27D826898);
  v2 = type metadata accessor for OnboardingLifestyleInteractionSwitchItem();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();

  sub_228385A54(1, v1);

  sub_228393210();
  v5 = *(v13 + 16);
  sub_228393250();
  sub_228393260();
  sub_228393220();
  v6 = *(v2 + 48);
  v7 = *(v2 + 52);
  swift_allocObject();

  sub_228385A54(2, v1);

  sub_228393210();
  v8 = *(v13 + 16);
  sub_228393250();
  sub_228393260();
  sub_228393220();
  v9 = *(v2 + 48);
  v10 = *(v2 + 52);
  swift_allocObject();

  sub_228385A54(3, v1);

  sub_228393210();
  v11 = *(v13 + 16);
  sub_228393250();
  sub_228393260();
  sub_228393220();
  return v13;
}

uint64_t sub_228286CF4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = sub_228287080();
    sub_228194894(v1);

    sub_22838FF60();

    v2 = sub_228286B54();
    sub_228195058(v2);

    sub_22838FF60();
  }

  return result;
}

uint64_t sub_228286DE0()
{
  v1 = *(v0 + qword_27D826898);

  v2 = *(v0 + qword_27D8268A0);

  sub_228287628(v0 + qword_27D828D90);
  v3 = *(v0 + qword_27D8268A8);
}

uint64_t sub_228286E40()
{
  v0 = sub_22838FFB0();
  v1 = *(v0 + qword_27D826898);

  v2 = *(v0 + qword_27D8268A0);

  sub_228287628(v0 + qword_27D828D90);
  v3 = *(v0 + qword_27D8268A8);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_228286F00()
{
  sub_228390120();
  sub_2283926D0();
  type metadata accessor for InteractionsOnboardingEducationCell();
  sub_228287770(&qword_27D8268C8, type metadata accessor for InteractionsOnboardingEducationCell);
  sub_2283926B0();
  sub_228390190();
  return sub_2283926B0();
}

uint64_t sub_228287080()
{
  sub_2282877B8(0, &qword_280DDB8D0, sub_22817A700, MEMORY[0x277D84560]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_228397F30;
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v1 = sub_22838F0C0();
  v3 = v2;
  *(v0 + 56) = &type metadata for InteractionsOnboardingEducationItem;
  v4 = sub_22828781C();
  *(v0 + 64) = v4;
  v5 = swift_allocObject();
  *(v0 + 32) = v5;
  type metadata accessor for InteractionsOnboardingEducationCell();
  sub_228287770(&qword_27D8268C8, type metadata accessor for InteractionsOnboardingEducationCell);
  v5[4] = sub_22838FBB0();
  v5[5] = v6;
  v5[2] = v1;
  v5[3] = v3;
  v7 = sub_22838F0C0();
  v9 = v8;
  *(v0 + 96) = &type metadata for InteractionsOnboardingEducationItem;
  *(v0 + 104) = v4;
  v10 = swift_allocObject();
  *(v0 + 72) = v10;
  v10[4] = sub_22838FBB0();
  v10[5] = v11;
  v10[2] = v7;
  v10[3] = v9;
  return v0;
}

uint64_t sub_2282872B0(uint64_t a1, uint64_t a2)
{
  v5 = sub_22838F4A0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = qword_27D826898;
  sub_228390890();
  sub_228390880();
  sub_228390830();

  sub_2282876B4();
  sub_2283925F0();
  v11 = sub_2283907E0();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *(v2 + v10) = sub_228390700();
  *(v2 + qword_27D8268A8) = MEMORY[0x277D84FA0];
  sub_228181FB4(a1, v2 + qword_27D828D90);
  *(v2 + qword_27D8268A0) = a2;
  v19[0] = 0;
  v19[1] = 0xE000000000000000;

  sub_2283931D0();

  strcpy(v19, "MutableArray<");
  HIWORD(v19[1]) = -4864;
  sub_22838F490();
  v14 = sub_22838F450();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  MEMORY[0x22AAB5C80](v14, v16);

  MEMORY[0x22AAB5C80](62, 0xE100000000000000);
  v17 = sub_22838FF30();

  sub_228286808();

  sub_228287628(a1);
  return v17;
}

void *sub_2282874EC(uint64_t a1)
{
  v2 = sub_2283900D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228390040();
  if (a1 == 1)
  {
    sub_2283900B0();
    goto LABEL_5;
  }

  if (a1)
  {
LABEL_5:
    v7 = sub_2283900C0();
    (*(v3 + 8))(v6, v2);
    return v7;
  }

  v7 = sub_2283900C0();
  (*(v3 + 8))(v6, v2);
  [v7 setInterGroupSpacing_];
  return v7;
}

uint64_t sub_228287628(uint64_t a1)
{
  sub_2282877B8(0, &qword_27D8238D0, type metadata accessor for MedicationSearchItem, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2282876B4()
{
  result = qword_280DDBAF0;
  if (!qword_280DDBAF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DDBAF0);
  }

  return result;
}

void sub_228287708()
{
  if (!qword_27D8268D8)
  {
    sub_228192BCC();
    v0 = sub_228391880();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8268D8);
    }
  }
}

uint64_t sub_228287770(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2282877B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_22828781C()
{
  result = qword_27D8268E8;
  if (!qword_27D8268E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8268E8);
  }

  return result;
}

uint64_t sub_228287870(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 64);
  *(v4 + 56) = v3;
  *(v4 + 64) = v2;
}

uint64_t sub_2282878D0()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t sub_22828791C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 64);
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
}

uint64_t sub_2282879C0()
{
  sub_22838F4A0();
  sub_2282893CC(&qword_27D824618, 255, MEMORY[0x277CC95F0]);
  v4 = sub_228393420();
  MEMORY[0x22AAB5C80](95, 0xE100000000000000);
  swift_beginAccess();
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);

  MEMORY[0x22AAB5C80](v2, v1);

  return v4;
}

uint64_t MedicationEducationItem.__allocating_init(primaryContent:attribution:alternateRenderingMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  type metadata accessor for MedicationEducationItemCell();
  sub_2282893CC(&qword_27D8268F8, v14, type metadata accessor for MedicationEducationItemCell);
  *(v13 + 56) = sub_22838FBB0();
  *(v13 + 64) = v15;
  sub_22838F490();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3;
  *(v13 + 40) = a4;
  *(v13 + 48) = a5;
  return v13;
}

uint64_t MedicationEducationItem.init(primaryContent:attribution:alternateRenderingMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  type metadata accessor for MedicationEducationItemCell();
  sub_2282893CC(&qword_27D8268F8, v11, type metadata accessor for MedicationEducationItemCell);
  *(v5 + 56) = sub_22838FBB0();
  *(v5 + 64) = v12;
  sub_22838F490();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return v5;
}

char *MedicationEducationItem.deinit()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = *(v0 + 8);

  v4 = OBJC_IVAR____TtC19HealthMedicationsUI23MedicationEducationItem_uuid;
  v5 = sub_22838F4A0();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  return v0;
}

uint64_t MedicationEducationItem.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = *(v0 + 8);

  v4 = OBJC_IVAR____TtC19HealthMedicationsUI23MedicationEducationItem_uuid;
  v5 = sub_22838F4A0();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_228287D6C()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);

  return v2;
}

uint64_t sub_228287DBC()
{
  v1 = *v0;
  sub_22838F4A0();
  sub_2282893CC(&qword_27D824618, 255, MEMORY[0x277CC95F0]);
  v5 = sub_228393420();
  MEMORY[0x22AAB5C80](95, 0xE100000000000000);
  swift_beginAccess();
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);

  MEMORY[0x22AAB5C80](v2, v3);

  return v5;
}

uint64_t sub_228287E98(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282169440](a1, WitnessTable);
}

uint64_t sub_228287EFC(uint64_t a1, uint64_t *a2)
{
  sub_22817E6C8(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationEducationItemCell_item;
  swift_beginAccess();
  sub_22818FD64(v6, v3 + v4);
  swift_endAccess();
  sub_228288588();
  return sub_22819482C(v6);
}

uint64_t sub_228287F6C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationEducationItemCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_228287FC4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationEducationItemCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_228288588();
  return sub_22819482C(a1);
}

uint64_t (*sub_228288030(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_228288094;
}

uint64_t sub_228288094(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_228288588();
  }

  return result;
}

id sub_2282880C8()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationEducationItemCell____lazy_storage___primaryLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationEducationItemCell____lazy_storage___primaryLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationEducationItemCell____lazy_storage___primaryLabel);
  }

  else
  {
    v4 = sub_228288128();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_228288128()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v1 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  v2 = v0;
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = *MEMORY[0x277D12788];
  v8 = sub_228392000();
  v9 = v4;

  MEMORY[0x22AAB5C80](0xD000000000000014, 0x80000002283A9550);

  MEMORY[0x22AAB5C80](0x7972616D6972502ELL, 0xED00006C6562614CLL);

  v5 = sub_228391FC0();

  [v2 setAccessibilityIdentifier_];

  [v2 setNumberOfLines_];
  LODWORD(v6) = 1148846080;
  [v2 setContentCompressionResistancePriority:1 forAxis:v6];
  [v2 setAdjustsFontForContentSizeCategory_];
  return v2;
}

id sub_2282882D4()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationEducationItemCell____lazy_storage___attributionLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationEducationItemCell____lazy_storage___attributionLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationEducationItemCell____lazy_storage___attributionLabel);
  }

  else
  {
    swift_getObjectType();
    v4 = sub_22828833C();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_22828833C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = *MEMORY[0x277D12788];
  v2 = sub_228392000();
  v4 = v3;
  sub_2282893CC(&qword_27D8268F8, v3, type metadata accessor for MedicationEducationItemCell);
  v5 = sub_22838FBB0();
  MEMORY[0x22AAB5C80](v5);

  v11 = v4;

  MEMORY[0x22AAB5C80](46, 0xE100000000000000);

  MEMORY[0x22AAB5C80](0xD000000000000011, 0x80000002283B0420);

  v6 = sub_228391FC0();

  [v0 setAccessibilityIdentifier_];

  [v0 setNumberOfLines_];
  v7 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  v8 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor_];

  LODWORD(v9) = 1148846080;
  [v0 setContentCompressionResistancePriority:1 forAxis:v9];
  [v0 setAdjustsFontForContentSizeCategory_];
  return v0;
}

uint64_t sub_228288588()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22817A7F0(0, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v99 - v9;
  v11 = sub_2283913A0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationEducationItemCell_item;
  swift_beginAccess();
  sub_22817E6C8(&v1[v16], v105);
  if (v105[3])
  {
    sub_22817A700();
    type metadata accessor for MedicationEducationItem();
    if (swift_dynamicCast())
    {
      v17 = v104;
      sub_228391390();
      v18 = *(v17 + 48);
      v101 = v17;
      if (v18 == 2 || (v18 & 1) == 0)
      {
        v19 = &selRef_tertiarySystemBackgroundColor;
      }

      else
      {
        v19 = &selRef_tertiarySystemFillColor;
      }

      v29 = [objc_opt_self() *v19];
      sub_228391370();
      v30 = *(v12 + 16);
      v100 = v15;
      v30(v10, v15, v11);
      v102 = v11;
      v103 = v12;
      (*(v12 + 56))(v10, 0, 1, v11);
      MEMORY[0x22AAB6420](v10);
      sub_228180ED0();
      v99[1] = v31;
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_228399D40;
      v33 = sub_2282880C8();
      v34 = [v33 topAnchor];

      v35 = [v1 contentView];
      v36 = [v35 topAnchor];

      sub_22838F7D0();
      v37 = [v34 constraintEqualToAnchor:v36 constant:?];

      *(v32 + 32) = v37;
      v38 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationEducationItemCell____lazy_storage___primaryLabel;
      v39 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationEducationItemCell____lazy_storage___primaryLabel] leadingAnchor];
      v40 = [v1 contentView];
      v41 = [v40 layoutMarginsGuide];

      v42 = [v41 leadingAnchor];
      v43 = [v39 constraintEqualToAnchor_];

      *(v32 + 40) = v43;
      v44 = [*&v1[v38] trailingAnchor];
      v45 = [v1 contentView];
      v46 = [v45 layoutMarginsGuide];

      v47 = [v46 trailingAnchor];
      v48 = [v44 constraintEqualToAnchor_];

      v49 = v38;
      *(v32 + 48) = v48;
      v105[0] = v32;
      v50 = [v1 contentView];
      [v50 addSubview_];

      v51 = v101;
      if (*(v101 + 40))
      {
        v52 = *(v101 + 32);
        v53 = *(v101 + 40);

        sub_2283920A0();
        v55 = v54;

        if (v55)
        {

          v56 = [v1 contentView];
          v57 = sub_2282882D4();
          [v56 addSubview_];

          inited = swift_initStackObject();
          *(inited + 16) = xmmword_228397F00;
          v59 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationEducationItemCell____lazy_storage___attributionLabel;
          v60 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationEducationItemCell____lazy_storage___attributionLabel] topAnchor];
          v61 = [*&v1[v49] bottomAnchor];
          sub_22838F7D0();
          v62 = v49;
          v63 = [v60 constraintEqualToAnchor:v61 constant:?];

          *(inited + 32) = v63;
          v64 = [*&v1[v59] leadingAnchor];
          v65 = [*&v1[v62] leadingAnchor];
          v66 = [v64 constraintEqualToAnchor_];

          *(inited + 40) = v66;
          v67 = [*&v1[v59] trailingAnchor];
          v68 = [*&v1[v62] trailingAnchor];
          v69 = [v67 constraintEqualToAnchor_];

          *(inited + 48) = v69;
          v70 = [*&v1[v59] bottomAnchor];
          v71 = [v1 contentView];
          v72 = [v71 bottomAnchor];

          sub_22838F7D0();
          v74 = [v70 constraintEqualToAnchor:v72 constant:-v73];

          v49 = v62;
          *(inited + 56) = v74;
          sub_2281D5A98(inited);
        }
      }

      v75 = *(v51 + 48);
      v76 = v102;
      v77 = v100;
      if (v75 != 2 && (v75 & 1) != 0)
      {
        v78 = *&v1[v49];
        v79 = objc_opt_self();
        v80 = v78;
        v81 = [v79 secondaryLabelColor];
        [v80 setTextColor_];

        v82 = [*&v1[v49] bottomAnchor];
        v83 = [v1 contentView];
        v84 = [v83 bottomAnchor];

        sub_22838F7D0();
        v86 = [v82 constraintEqualToAnchor:v84 constant:-v85];

        MEMORY[0x22AAB5D20]();
        if (*((v105[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v98 = *((v105[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_2283921E0();
        }

        sub_228392230();
      }

      v87 = objc_opt_self();
      sub_2281BF1B8();
      v88 = sub_228392190();

      [v87 activateConstraints_];

      v89 = *&v1[v49];
      v90 = *(v51 + 16);
      v91 = *(v51 + 24);

      v92 = v89;
      v93 = sub_228391FC0();

      [v92 setText_];

      if (*(v51 + 40))
      {
        v94 = *(v51 + 32);
        v95 = *(v51 + 40);

        v96 = sub_2282882D4();
        v97 = sub_228391FC0();

        [v96 setText_];

        return (*(v103 + 8))(v77, v76);
      }

      else
      {
        (*(v103 + 8))(v77, v76);
      }
    }
  }

  else
  {
    sub_22819482C(v105);
  }

  sub_228391150();
  v20 = v1;
  v21 = sub_2283911A0();
  v22 = sub_2283925C0();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v104 = v24;
    *v23 = 136446210;
    sub_22817E6C8(&v1[v16], v105);
    sub_22817A7F0(0, &qword_280DDCD50, sub_22817A700);
    v25 = sub_228392040();
    v27 = sub_2281C96FC(v25, v26, &v104);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_22816B000, v21, v22, "Incorrect view model for MedicationEducationItemCell: %{public}s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x22AAB7B80](v24, -1, -1);
    MEMORY[0x22AAB7B80](v23, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

id MedicationEducationItemCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id MedicationEducationItemCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationEducationItemCell_item];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationEducationItemCell____lazy_storage___primaryLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationEducationItemCell____lazy_storage___attributionLabel] = 0;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for MedicationEducationItemCell();
  return objc_msgSendSuper2(&v11, sel_initWithFrame_, a1, a2, a3, a4);
}

id MedicationEducationItemCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id MedicationEducationItemCell.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationEducationItemCell_item];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationEducationItemCell____lazy_storage___primaryLabel] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationEducationItemCell____lazy_storage___attributionLabel] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for MedicationEducationItemCell();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id MedicationEducationItemCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationEducationItemCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2282893CC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for MedicationEducationItem()
{
  result = qword_27D826920;
  if (!qword_27D826920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2282894C4()
{
  result = sub_22838F4A0();
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

uint64_t MedicationSearchFieldItem.init(onActive:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_22838F4A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838F490();
  v11 = sub_22838F450();
  v13 = v12;
  (*(v7 + 8))(v10, v6);
  *a3 = v11;
  a3[1] = v13;
  type metadata accessor for MedicationSearchFieldCell();
  sub_228289814();
  result = sub_22838FBB0();
  a3[4] = result;
  a3[5] = v15;
  a3[2] = a1;
  a3[3] = a2;
  return result;
}

unint64_t sub_228289814()
{
  result = qword_27D826930;
  if (!qword_27D826930)
  {
    type metadata accessor for MedicationSearchFieldCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826930);
  }

  return result;
}

uint64_t MedicationSearchFieldItem.uniqueIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MedicationSearchFieldItem.reuseIdentifier.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t static MedicationSearchFieldItem.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_228393460();
  }
}

uint64_t MedicationSearchFieldItem.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_2283920B0();
}

uint64_t MedicationSearchFieldItem.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_228393520();
  sub_2283920B0();
  return sub_228393570();
}

unint64_t sub_228289950()
{
  result = qword_27D826938;
  if (!qword_27D826938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826938);
  }

  return result;
}

uint64_t sub_2282899A8(uint64_t a1)
{
  v2 = sub_22828A194();

  return MEMORY[0x282169440](a1, v2);
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

id sub_228289A1C()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationSearchFieldCell____lazy_storage___searchBar;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationSearchFieldCell____lazy_storage___searchBar);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationSearchFieldCell____lazy_storage___searchBar);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D759E8]) init];
    [v4 setSearchBarStyle_];
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();
    v5 = sub_228391FC0();

    [v4 setPlaceholder_];

    [v4 setDelegate_];
    v6 = [v4 searchTextField];
    v7 = [objc_opt_self() secondarySystemBackgroundColor];
    [v6 setBackgroundColor_];

    v8 = [v4 searchTextField];
    sub_22838F7C0();
    v9 = *MEMORY[0x277CDA138];
    v10 = v0;
    sub_228392B00();

    v11 = *(v0 + v1);
    *(v10 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

char *sub_228289BFC(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationSearchFieldCell_item];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationSearchFieldCell____lazy_storage___searchBar] = 0;
  v18.receiver = v4;
  v18.super_class = type metadata accessor for MedicationSearchFieldCell();
  v10 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = [v10 contentView];
  v12 = [objc_opt_self() systemBackgroundColor];
  [v11 setBackgroundColor_];

  v13 = v10;
  v14 = sub_228289A1C();
  [v13 addSubview_];

  v15 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationSearchFieldCell____lazy_storage___searchBar;
  [*&v13[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationSearchFieldCell____lazy_storage___searchBar] setTranslatesAutoresizingMaskIntoConstraints_];
  v16 = *&v13[v15];
  [v16 hk:v13 alignConstraintsWithView:?];

  return v13;
}

id sub_228289E08()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationSearchFieldCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_228289E88@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationSearchFieldCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_228289EE0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationSearchFieldCell_item;
  swift_beginAccess();
  sub_22817A680(a1, v1 + v3);
  return swift_endAccess();
}

void sub_228289FA0(void *a1)
{
  v3 = [a1 viewController];
  if (v3)
  {
    v6 = v3;
    type metadata accessor for NewMedicationOnboardingViewController();
    if (swift_dynamicCastClass())
    {
      [a1 resignFirstResponder];
      v4 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationSearchFieldCell_item;
      swift_beginAccess();
      sub_22817E6C8(v1 + v4, v8);
      if (v9)
      {
        sub_22817A700();
        if (swift_dynamicCast())
        {
          sub_228176FA8(v7);

          sub_228176EC8(v7);

          if (v7)
          {
            v7(v5);
            sub_228176EC8(v7);
          }
        }
      }

      else
      {
        sub_22819482C(v8);
      }

      sub_2282F70D0(a1, v1);
    }

    else
    {
    }
  }
}

unint64_t sub_22828A194()
{
  result = qword_27D8269C0;
  if (!qword_27D8269C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8269C0);
  }

  return result;
}

uint64_t sub_22828A210()
{
  sub_228182110();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_228397F30;
  v1 = type metadata accessor for InteractionFactorsHeaderDataSource();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = sub_228319B08();
  v5 = sub_22828A354(&qword_27D826A30, type metadata accessor for InteractionFactorsHeaderDataSource);
  *(v0 + 32) = v4;
  *(v0 + 40) = v5;
  sub_228390890();
  sub_228390880();
  sub_228390830();

  sub_2282876B4();
  sub_2283925F0();
  v6 = sub_2283907E0();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_228390700();
  v10 = type metadata accessor for InteractionFactorsLifestyleOptionsDataSource();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_22821301C(v9);
  v14 = sub_22828A354(&qword_27D826A38, type metadata accessor for InteractionFactorsLifestyleOptionsDataSource);
  *(v0 + 48) = v13;
  *(v0 + 56) = v14;
  return v0;
}

uint64_t sub_22828A354(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 UITextFieldWithInsets.insets.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC19HealthMedicationsUI21UITextFieldWithInsets_insets;
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

__n128 UITextFieldWithInsets.insets.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC19HealthMedicationsUI21UITextFieldWithInsets_insets;
  swift_beginAccess();
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  return result;
}

__C::CGRect __swiftcall UITextFieldWithInsets.textRect(forBounds:)(__C::CGRect forBounds)
{
  sub_22828A4F8(&selRef_textRectForBounds_, forBounds.origin.x, forBounds.origin.y, forBounds.size.width, forBounds.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

__C::CGRect __swiftcall UITextFieldWithInsets.editingRect(forBounds:)(__C::CGRect forBounds)
{
  sub_22828A4F8(&selRef_editingRectForBounds_, forBounds.origin.x, forBounds.origin.y, forBounds.size.width, forBounds.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

void sub_22828A4F8(SEL *a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  v12 = &v5[OBJC_IVAR____TtC19HealthMedicationsUI21UITextFieldWithInsets_insets];
  swift_beginAccess();
  if (v12[32])
  {
    v22.receiver = v5;
    v22.super_class = ObjectType;
    objc_msgSendSuper2(&v22, *a1, a2, a3, a4, a5);
  }

  else
  {
    v14 = *(v12 + 2);
    v13 = *(v12 + 3);
    v16 = *v12;
    v15 = *(v12 + 1);
    v21.receiver = v5;
    v21.super_class = ObjectType;
    objc_msgSendSuper2(&v21, *a1, a2, a3, a4, a5);
    UIEdgeInsetsInsetRect(v17, v18, v19, v20, v16, v15);
  }
}

void sub_22828A5F8(char *a1, double a2, double a3, double a4, double a5, uint64_t a6, SEL *a7)
{
  ObjectType = swift_getObjectType();
  v14 = &a1[OBJC_IVAR____TtC19HealthMedicationsUI21UITextFieldWithInsets_insets];
  swift_beginAccess();
  if (v14[32])
  {
    v30.receiver = a1;
    v30.super_class = ObjectType;
    objc_msgSendSuper2(&v30, *a7, a2, a3, a4, a5);
  }

  else
  {
    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    v18 = *v14;
    v17 = *(v14 + 1);
    v29.receiver = a1;
    v29.super_class = ObjectType;
    v19 = *a7;
    v20 = a1;
    objc_msgSendSuper2(&v29, v19, a2, a3, a4, a5);
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    UIEdgeInsetsInsetRect(v22, v24, v26, v28, v18, v17);
  }
}

id UITextFieldWithInsets.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id UITextFieldWithInsets.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI21UITextFieldWithInsets_insets];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v10[32] = 1;
  v12.receiver = v4;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
}

id UITextFieldWithInsets.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id UITextFieldWithInsets.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC19HealthMedicationsUI21UITextFieldWithInsets_insets];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v4[32] = 1;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id UITextFieldWithInsets.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22828AA44()
{
  v1 = qword_280DDC1C0;
  if (*(v0 + qword_280DDC1C0))
  {
    v2 = *(v0 + qword_280DDC1C0);
  }

  else
  {
    v3 = v0;
    sub_228390890();
    sub_228390880();
    sub_228390830();

    sub_22817A958(0, &qword_280DDBAF0, 0x277CBEBD0);
    sub_2283925F0();
    v4 = sub_2283907E0();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    v2 = sub_228390700();
    v7 = *(v3 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

void *sub_22828AB18()
{
  v1 = qword_280DDC1B8;
  if (*(v0 + qword_280DDC1B8))
  {
    v2 = *(v0 + qword_280DDC1B8);
  }

  else
  {
    v3 = *(v0 + qword_280DDC1D8);
    v4 = v0;
    v5 = sub_22828AA44();
    type metadata accessor for MedicationsInteractionEngine();
    swift_allocObject();
    v2 = sub_228191FE8(v3, v5);

    v6 = *(v0 + v1);
    *(v4 + v1) = v2;
  }

  return v2;
}

uint64_t InteractionSummaryDataSource.__allocating_init(filteringMedication:listManager:healthStore:analyticsManager:roomType:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = *(v6 + 48);
  v13 = *(v6 + 52);
  v14 = swift_allocObject();
  *(v14 + qword_280DDC1C0) = 0;
  *(v14 + qword_280DDC1B8) = 0;
  *(v14 + qword_280DDC1D0) = MEMORY[0x277D84FA0];
  *(v14 + qword_27D826A48) = 0;
  *(v14 + qword_280DDC1C8) = a1;
  *(v14 + qword_27D826A50) = a2;
  *(v14 + qword_280DDC1D8) = a3;
  *(v14 + qword_27D826A58) = a4;
  *(v14 + qword_280DDC1B0) = a5;
  v15 = a1;

  v16 = a3;

  v17 = sub_22838F920();

  sub_22828BB74();

  return v17;
}

uint64_t InteractionSummaryDataSource.init(filteringMedication:listManager:healthStore:analyticsManager:roomType:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  *(v5 + qword_280DDC1C0) = 0;
  *(v5 + qword_280DDC1B8) = 0;
  *(v5 + qword_280DDC1D0) = MEMORY[0x277D84FA0];
  *(v5 + qword_27D826A48) = 0;
  *(v5 + qword_280DDC1C8) = a1;
  *(v5 + qword_27D826A50) = a2;
  *(v5 + qword_280DDC1D8) = a3;
  *(v5 + qword_27D826A58) = a4;
  *(v5 + qword_280DDC1B0) = a5;
  v7 = a1;

  v8 = a3;

  v9 = sub_22838F920();

  sub_22828BB74();

  return v9;
}

uint64_t sub_22828AE10()
{
  v1 = *(v0 + qword_27D826A50);

  v2 = *(v0 + qword_27D826A58);

  v3 = *(v0 + qword_280DDC1C0);

  v4 = *(v0 + qword_280DDC1B8);

  v5 = *(v0 + qword_280DDC1D0);

  v6 = *(v0 + qword_27D826A48);
}

uint64_t InteractionSummaryDataSource.deinit()
{
  v1 = qword_280DDC1D0;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if ((v2 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v3 = *(v0 + v1);
    }

    swift_unknownObjectRetain();
    sub_228393080();
    sub_228391820();
    sub_22828DFF0(&qword_27D824180, MEMORY[0x277CBCDA8]);
    result = sub_2283924C0();
    v6 = v26;
    v5 = v27;
    v7 = v28;
    v8 = v29;
    v9 = v30;
  }

  else
  {
    v10 = -1 << *(v2 + 32);
    v5 = v2 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v2 + 56);
    result = swift_bridgeObjectRetain_n();
    v8 = 0;
    v6 = v2;
  }

  if (v6 < 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v13 = v8;
    v14 = v9;
    v15 = v8;
    if (!v9)
    {
      break;
    }

LABEL_14:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v6 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

    if (!v17)
    {
LABEL_20:
      sub_228176F04();

      v18 = _s19HealthMedicationsUI34InteractionSeperatorLineDataSourceCfd_0();

      v19 = *(v18 + qword_27D826A50);

      v20 = *(v18 + qword_27D826A58);

      v21 = *(v18 + qword_280DDC1C0);

      v22 = *(v18 + qword_280DDC1B8);

      v23 = *(v18 + qword_280DDC1D0);

      v24 = *(v18 + qword_27D826A48);

      return v18;
    }

    while (1)
    {
      sub_228391810();

      v8 = v15;
      v9 = v16;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_16:
      if (sub_228393100())
      {
        sub_228391820();
        swift_dynamicCast();
        v15 = v8;
        v16 = v9;
        if (v25)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= ((v7 + 64) >> 6))
    {
      goto LABEL_20;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t InteractionSummaryDataSource.__deallocating_deinit()
{
  InteractionSummaryDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_22828B19C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v9 = MEMORY[0x277CBCEA8];
  sub_22828DF5C(0, &qword_280DDBC38, MEMORY[0x277CBCEA8]);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();

  sub_2283918F0();
  sub_22828E044(&qword_280DDBC40, &qword_280DDBC38, v9);
  v13 = sub_228391990();

  *a4 = v13;
  return result;
}

void sub_22828B2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  sub_22828AB18();
  v9 = sub_228191178();

  sub_2282B96E4(v10);

  sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  sub_22818C470(&qword_280DDB9D8, &qword_280DDB9E0, 0x277D115B8);
  v11 = sub_228392470();

  if (a5)
  {
    sub_22817A958(0, &qword_280DDB960, 0x277CCABB0);
    sub_22818C470(&qword_280DDB958, &qword_280DDB960, 0x277CCABB0);
    a5 = sub_228392470();
  }

  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = sub_22818DEBC;
  v13[4] = v8;
  v15[4] = sub_22828E088;
  v15[5] = v13;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_228276010;
  v15[3] = &block_descriptor_16;
  v14 = _Block_copy(v15);

  [v9 interactionResultsForMedications:v11 lifestyleFactors:a5 completion:v14];
  _Block_release(v14);
}

void sub_22828B538(uint64_t a1, void *a2, uint64_t a3, void (*a4)(id, uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a2)
    {
      v32 = a2;
      v9 = a2;
      sub_2281810DC(0, &qword_280DDB860);
      sub_22817A958(0, &qword_27D825E88, 0x277CCA9B8);
      if (swift_dynamicCast())
      {
        if ([v31 code] == 1003)
        {
          v10 = [objc_opt_self() sharedBehavior];
          if (v10)
          {
            v11 = v10;
            v12 = [v10 isAppleInternalInstall];

            if (!v12)
            {
              v29 = v31;
              a4(v31, 1);

              return;
            }

            v30 = a4;

            v13 = 1;
            goto LABEL_17;
          }

LABEL_26:
          __break(1u);
          return;
        }
      }

      a4(a2, 1);
      goto LABEL_20;
    }

    sub_22828AA44();
    v14 = sub_228390730();

    if (v14)
    {
      v15 = [objc_opt_self() sharedBehavior];
      if (!v15)
      {
        __break(1u);
        goto LABEL_26;
      }

      v16 = v15;
      v17 = [v15 isAppleInternalInstall];

      if (!a1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v17 = 0;
      if (!a1)
      {
LABEL_11:
        v13 = MEMORY[0x277D84F90];
        goto LABEL_14;
      }
    }

    v18 = *(v8 + qword_280DDC1C8);
    v19 = v18;
    v13 = Set<>.severities(filtering:includeMinorInteractions:)(v18, v17);

LABEL_14:
    if (v13 >> 62)
    {
      v30 = a4;
      if (sub_2283930D0())
      {
        goto LABEL_17;
      }
    }

    else
    {
      v30 = a4;
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_17:
        v20 = *(v8 + qword_280DDC1C8);
        v21 = *(v8 + qword_27D826A50);
        v22 = *(v8 + qword_280DDC1D8);
        v23 = swift_allocObject();
        swift_weakInit();
        type metadata accessor for InteractionSummaryItem();
        v24 = swift_allocObject();
        type metadata accessor for InteractionSummaryItemCell();
        sub_22828DFF0(qword_280DDC3F0, type metadata accessor for InteractionSummaryItemCell);
        v25 = v20;

        v26 = v22;

        v24[8] = sub_22838FBB0();
        v24[9] = v27;
        v24[2] = v13;
        v24[3] = v20;
        v24[4] = v21;
        v24[5] = v26;
        v24[6] = sub_22828E0AC;
        v24[7] = v23;

        v30(v28, 0);

LABEL_20:

        return;
      }
    }

    v13 = 0;
    goto LABEL_17;
  }
}

uint64_t sub_22828B8F0(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v24 = a1;
    v3 = *(result + qword_280DDC1C8);
    v4 = *(result + qword_27D826A50);
    v5 = *(result + qword_280DDC1D8);
    v23 = qword_27D826A58;
    v6 = *(result + qword_27D826A58);
    v21 = result;
    v22 = qword_280DDC1B0;
    v20 = *(result + qword_280DDC1B0);
    v7 = type metadata accessor for InteractionSummaryOverviewViewController();
    v8 = objc_allocWithZone(v7);
    *&v8[qword_27D8264F0] = 0;
    *&v8[qword_27D8264F8] = 0;
    *&v8[qword_27D826500] = 0;
    v9 = &v8[qword_27D826508];
    v10 = *MEMORY[0x277D12788];
    v26 = sub_228392000();
    v27 = v11;
    v19 = v3;

    v12 = v5;

    MEMORY[0x22AAB5C80](0xD000000000000025, 0x80000002283AE9C0);

    v13 = v27;
    *v9 = v26;
    v9[1] = v13;
    *&v8[qword_27D826510] = v3;
    *&v8[qword_27D826518] = v4;
    *&v8[qword_27D826520] = v12;
    *&v8[qword_27D826528] = v6;
    *&v8[qword_27D826530] = v20;
    v25.receiver = v8;
    v25.super_class = v7;
    v14 = v19;

    v15 = v12;

    v16 = objc_msgSendSuper2(&v25, sel_initWithCollectionViewLayout_, 0);
    [v16 setModalPresentationStyle_];
    sub_228274A00();

    [v16 setModalPresentationStyle_];
    [v24 showAdaptively:v16 sender:v21];
    v17 = *(v21 + v23);
    v18 = *(v21 + v22);

    sub_228390FE0();
  }

  return result;
}

uint64_t sub_22828BB74()
{
  v1 = v0;
  sub_22828D988(0, &qword_280DDBAD0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v82 = &v60 - v4;
  v78 = sub_228392770();
  v76 = *(v78 - 8);
  v5 = *(v76 + 64);
  MEMORY[0x28223BE20](v78);
  v65 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22828DDA8(0, &unk_280DDBBE0, MEMORY[0x277CBCEC0]);
  v63 = v7;
  v64 = *(v7 - 1);
  v8 = *(v64 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v60 - v9;
  sub_22824E8E4();
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22824E9B0();
  v66 = v17;
  v68 = *(v17 - 8);
  v18 = *(v68 + 64);
  MEMORY[0x28223BE20](v17);
  v61 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22828DC90(0, &qword_27D825DE0, sub_22824E9B0, sub_22828D9EC, MEMORY[0x277CBCCF0]);
  v21 = *(v20 - 8);
  v71 = v20;
  v72 = v21;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v62 = &v60 - v23;
  sub_22828DA20();
  v25 = *(v24 - 8);
  v73 = v24;
  v74 = v25;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v67 = &v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22828DBFC();
  v75 = v28;
  v79 = *(v28 - 8);
  v29 = *(v79 + 64);
  MEMORY[0x28223BE20](v28);
  v70 = &v60 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22828DC90(0, &qword_27D826A80, sub_22828DBFC, sub_22828DD74, MEMORY[0x277CBCD58]);
  v77 = v31;
  v80 = *(v31 - 8);
  v32 = *(v80 + 64);
  MEMORY[0x28223BE20](v31);
  v69 = &v60 - v33;
  v34 = *(v0 + qword_27D826A50);
  v83 = sub_2283906C0();
  v35 = MEMORY[0x277D77BE8];
  sub_22824EB00(0, &qword_27D824108, MEMORY[0x277D77BE8]);
  sub_2281A1218();
  sub_228279FA0(&qword_27D827D00, &qword_27D824108, v35);
  sub_2283919A0();

  v81 = v1;
  v36 = sub_22828AB18()[5];

  v84 = v36;
  v37 = *(v1 + qword_280DDC1B8);

  sub_2281911EC();

  swift_beginAccess();
  sub_22828DDA8(0, &qword_280DDBBD0, MEMORY[0x277CBCED0]);
  sub_228391930();
  swift_endAccess();

  sub_22824EB00(0, &qword_27D825DC8, sub_2281930F4);
  sub_22828DFF0(&qword_27D825DD0, sub_22824E8E4);
  sub_228279FA0(&qword_27D825DD8, &qword_27D825DC8, sub_2281930F4);
  sub_22824EB64();
  v38 = v61;
  v39 = v63;
  sub_2283919C0();
  (*(v64 + 8))(v10, v39);

  (*(v13 + 8))(v16, v12);
  v40 = v65;
  sub_228392750();
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v41 = sub_228392790();
  v83 = v41;
  v42 = sub_228392730();
  v43 = *(v42 - 8);
  v63 = *(v43 + 56);
  v64 = v43 + 56;
  v44 = v82;
  v63(v82, 1, 1, v42);
  sub_22828D9EC();
  v60 = sub_22818C470(&qword_280DDBAC0, &qword_280DDCEE0, 0x277D85C78);
  v45 = v62;
  v46 = v66;
  sub_228391A80();
  sub_2281A16F0(v44);

  (*(v76 + 8))(v40, v78);
  (*(v68 + 8))(v38, v46);
  v47 = swift_allocObject();
  swift_weakInit();
  v48 = swift_allocObject();
  *(v48 + 16) = sub_22828DDFC;
  *(v48 + 24) = v47;
  sub_2283917E0();
  v49 = MEMORY[0x277CBCD88];
  sub_22828DF5C(0, &qword_280DDBC90, MEMORY[0x277CBCD88]);
  sub_22828DB60();
  sub_22828E044(&qword_280DDBC98, &qword_280DDBC90, v49);
  v50 = v67;
  v51 = v71;
  sub_228391AF0();

  (*(v72 + 8))(v45, v51);
  v83 = 0;
  sub_22828DFF0(&qword_27D826A78, sub_22828DA20);
  v52 = v70;
  v53 = v73;
  sub_2283919B0();
  (*(v74 + 8))(v50, v53);
  v54 = sub_228392790();
  v83 = v54;
  v55 = v82;
  v63(v82, 1, 1, v42);
  sub_22828DD74();
  v56 = v69;
  v57 = v75;
  sub_228391A70();
  sub_2281A16F0(v55);

  (*(v79 + 8))(v52, v57);
  swift_allocObject();
  swift_weakInit();
  sub_22828DE0C();
  v58 = v77;
  sub_228391AC0();

  (*(v80 + 8))(v56, v58);
  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

uint64_t sub_22828C724(unint64_t a1, uint64_t a2, char a3)
{
  v41 = a2;
  sub_22828DEA8();
  v6 = v5;
  v43 = *(v5 - 1);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v5);
  v42 = &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22828D988(0, &qword_280DDBC58, sub_22828DB2C, MEMORY[0x277CBCE78]);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = &v36[-v13];
  sub_22828DF5C(0, &unk_280DDB850, MEMORY[0x277CBCF38]);
  v16 = v15;
  v17 = *(v15 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  v20 = &v36[-v19];
  if (a3)
  {
    if (a1 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
    {
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (!Strong)
      {
        v44 = 0;
        sub_22828DB2C(0);
        goto LABEL_26;
      }

      v38 = v6;
      v40 = Strong;
      v23 = *(Strong + qword_280DDC1C8);
      v6 = &off_2785F4000;
      if (v23)
      {
        v39 = v23;
        v24 = [v39 firstOntologyCoding];
        if (!v24 || (v24, v25 = *(v40 + qword_27D826A50), , v37 = sub_2283906B0(), , (v37 & 1) == 0))
        {
          v44 = 0;
          sub_22828DB2C(0);
          sub_2283918C0();
          sub_2281810DC(0, &qword_280DDB860);
          sub_2283918A0();
          (*(v11 + 8))(v14, v10);
          sub_22828E044(&qword_27D826A98, &unk_280DDB850, MEMORY[0x277CBCF38]);
          v34 = sub_228391990();

          goto LABEL_27;
        }
      }

      v16 = 0;
      v44 = MEMORY[0x277D84F90];
      v11 = a1 & 0xC000000000000001;
      v10 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v11)
        {
          v26 = MEMORY[0x22AAB6D80](v16, a1);
        }

        else
        {
          if (v16 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }

          v26 = *(a1 + 8 * v16 + 32);
        }

        v20 = v26;
        v14 = (v16 + 1);
        if (__OFADD__(v16, 1))
        {
          break;
        }

        v27 = [v26 firstOntologyCoding];
        if (v27)
        {

          sub_228393210();
          v17 = *(v44 + 16);
          sub_228393250();
          sub_228393260();
          sub_228393220();
        }

        else
        {
        }

        ++v16;
        if (v14 == i)
        {
          v28 = v44;
          v29 = swift_allocObject();
          v29[2] = v40;
          v29[3] = v28;
          v29[4] = v41;
          v30 = MEMORY[0x277CBCD88];
          sub_22828DF5C(0, &qword_280DDBC90, MEMORY[0x277CBCD88]);
          sub_22828E044(&qword_280DDBC98, &qword_280DDBC90, v30);

          v31 = v42;
          sub_228391900();
          sub_22828DFF0(&qword_280DDBC20, sub_22828DEA8);
          v32 = v38;
          v33 = sub_228391990();
          (*(v43 + 8))(v31, v32);
          v44 = v33;
          v34 = sub_228391990();

          return v34;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }
  }

  v45 = 0;
  sub_22828DB2C(0);
LABEL_26:
  sub_2283918C0();
  sub_2281810DC(0, &qword_280DDB860);
  sub_2283918A0();
  (*(v11 + 8))(v14, v10);
  sub_22828E044(&qword_27D826A98, &unk_280DDB850, MEMORY[0x277CBCF38]);
  v34 = sub_228391990();
LABEL_27:
  (*(v17 + 8))(v20, v16);
  return v34;
}

uint64_t sub_22828CDB0(uint64_t *a1)
{
  v2 = sub_22838F4A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v7)
    {
      v9 = *(result + qword_27D826A48);
      *(result + qword_27D826A48) = v7;
      swift_retain_n();

      sub_22838F910();

      v18 = sub_22838FCD0();

      sub_22828D988(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
      v10 = *(sub_22838FEF0() - 8);
      v11 = *(v10 + 72);
      v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v13 = swift_allocObject();
      v17 = xmmword_228397F40;
      *(v13 + 16) = xmmword_228397F40;
      sub_228241A58(0, &qword_27D823918, &qword_27D827E00);
      v14 = swift_allocObject();
      *(v14 + 16) = v17;
      *(v14 + 56) = type metadata accessor for InteractionSummaryItem();
      *(v14 + 64) = sub_22828DFF0(&qword_27D824CE0, type metadata accessor for InteractionSummaryItem);
      *(v14 + 32) = v7;

      sub_22838F490();
      sub_22838F450();
      (*(v3 + 8))(v6, v2);
      sub_22838FED0();
      sub_22838FF50();
    }

    else
    {
      v15 = result;

      sub_22838F910();

      sub_22838FCD0();

      sub_22838FF50();

      v16 = *(v15 + qword_27D826A48);
      *(v15 + qword_27D826A48) = 0;
    }
  }

  return result;
}

uint64_t sub_22828D114()
{
  v0 = sub_2283900D0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  sub_228390040();
  sub_228390000();
  v8 = *(v1 + 8);
  v8(v7, v0);
  v9 = sub_2283900C0();
  v8(v5, v0);
  return v9;
}

uint64_t InteractionSummaryDataSource.supplementaryItem(ofKind:at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_22838F4A0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *MEMORY[0x277D767D0];
  if (sub_228392000() == a1 && v13 == a2)
  {
  }

  else
  {
    v15 = sub_228393460();

    if ((v15 & 1) == 0)
    {
      a3[3] = sub_22838FC00();
      a3[4] = sub_22828DFF0(&qword_27D823958, MEMORY[0x277D10EC8]);
      __swift_allocate_boxed_opaque_existential_1(a3);
      return sub_22838FBF0();
    }
  }

  if (*(v3 + qword_280DDC1C8))
  {
    v17 = 1;
  }

  else
  {
    v18 = *(v3 + qword_27D826A50);
    v19 = sub_228390660();
    v20 = sub_2281BFC2C(v19);

    if (v20)
    {
      if (v20 >> 62)
      {
        v17 = sub_2283930D0();
      }

      else
      {
        v17 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v17 = 0;
    }
  }

  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_228241A58(0, &qword_280DDB870, &qword_280DDB830);
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D83B88];
  *(v21 + 16) = xmmword_228397F40;
  v23 = MEMORY[0x277D83C10];
  *(v21 + 56) = v22;
  *(v21 + 64) = v23;
  *(v21 + 32) = v17;
  sub_22838F0C0();
  if (*(v21 + 16))
  {
    sub_228391FD0();
  }

  v27[0] = 0x74497265746F6F46;
  v27[1] = 0xEB000000005F6D65;
  sub_22838F490();
  v24 = sub_22838F450();
  v26 = v25;
  (*(v8 + 8))(v11, v7);
  MEMORY[0x22AAB5C80](v24, v26);

  a3[3] = sub_228390330();
  a3[4] = sub_22828DFF0(&qword_27D8244F8, MEMORY[0x277D110D8]);
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_228390320();
}

Swift::Void __swiftcall InteractionSummaryDataSource.registerCells(for:)(UICollectionView *a1)
{
  sub_228390340();
  sub_2283926D0();
  sub_228390300();
  sub_2283926C0();
  type metadata accessor for InteractionSummaryItemCell();
  sub_22828DFF0(qword_280DDC3F0, type metadata accessor for InteractionSummaryItemCell);
  sub_2283926B0();
}

uint64_t sub_22828D74C()
{
  sub_228390340();
  sub_2283926D0();
  sub_228390300();
  sub_2283926C0();
  type metadata accessor for InteractionSummaryItemCell();
  sub_22828DFF0(qword_280DDC3F0, type metadata accessor for InteractionSummaryItemCell);
  return sub_2283926B0();
}

uint64_t type metadata accessor for InteractionSummaryDataSource()
{
  result = qword_280DDC1A0;
  if (!qword_280DDC1A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22828D988(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22828DA20()
{
  if (!qword_27D826A68)
  {
    v0 = MEMORY[0x277CBCD88];
    sub_22828DF5C(255, &qword_280DDBC90, MEMORY[0x277CBCD88]);
    sub_22824EDEC();
    sub_22828E044(&qword_280DDBC98, &qword_280DDBC90, v0);
    sub_22828DFF0(&qword_27D825E20, sub_22824EDEC);
    v1 = sub_228391780();
    if (!v2)
    {
      atomic_store(v1, &qword_27D826A68);
    }
  }
}

unint64_t sub_22828DB60()
{
  result = qword_27D825E10;
  if (!qword_27D825E10)
  {
    sub_22828DC90(255, &qword_27D825DE0, sub_22824E9B0, sub_22828D9EC, MEMORY[0x277CBCCF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D825E10);
  }

  return result;
}

void sub_22828DBFC()
{
  if (!qword_27D826A70)
  {
    sub_22828DA20();
    sub_22828DFF0(&qword_27D826A78, sub_22828DA20);
    v0 = sub_228391700();
    if (!v1)
    {
      atomic_store(v0, &qword_27D826A70);
    }
  }
}

void sub_22828DC90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, void *))
{
  if (!*a2)
  {
    v11[0] = a3(255);
    v11[1] = sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    v11[2] = a4();
    v11[3] = sub_22818C470(&qword_280DDBAC0, &qword_280DDCEE0, 0x277D85C78);
    v9 = a5(a1, v11);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_22828DDA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_22828DE0C()
{
  result = qword_27D826A90;
  if (!qword_27D826A90)
  {
    sub_22828DC90(255, &qword_27D826A80, sub_22828DBFC, sub_22828DD74, MEMORY[0x277CBCD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826A90);
  }

  return result;
}

void sub_22828DEA8()
{
  if (!qword_280DDBC18)
  {
    v0 = MEMORY[0x277CBCD88];
    sub_22828DF5C(255, &qword_280DDBC90, MEMORY[0x277CBCD88]);
    sub_22828E044(&qword_280DDBC98, &qword_280DDBC90, v0);
    v1 = sub_228391910();
    if (!v2)
    {
      atomic_store(v1, &qword_280DDBC18);
    }
  }
}

void sub_22828DF5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    sub_22828DB2C(255);
    v7 = v6;
    v8 = sub_2281810DC(255, &qword_280DDB860);
    v9 = a3(a1, v7, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_22828DFF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22828E044(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  result = *a1;
  if (!result)
  {
    sub_22828DF5C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22828E0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *a4;
  v9 = a4[1];
  v11 = a4[2];
  result = sub_22838F0C0();
  if (*(a9 + 16))
  {
    v13 = sub_228391FD0();

    return v13;
  }

  return result;
}

uint64_t LocalizationSource.table.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

HealthMedicationsUI::LocalizationSource __swiftcall LocalizationSource.init(bundle:table:)(NSBundle bundle, Swift::String table)
{
  *v2 = bundle;
  *(v2 + 8) = table;
  result.table = table;
  result.bundle = bundle;
  return result;
}