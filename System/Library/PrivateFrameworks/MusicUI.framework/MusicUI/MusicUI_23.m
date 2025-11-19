uint64_t sub_2168D87E0()
{
  sub_2168E31E4();

  return sub_217009104();
}

uint64_t sub_2168D8828(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB9E8);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_67_0();
  OUTLINED_FUNCTION_49_11();
  sub_2168282D4(v4, v5, v6);
  sub_2168E31E4();
  sub_217009114();
  return sub_2166997CC(a1, &qword_27CABB9E8);
}

uint64_t sub_2168D88F8()
{
  v0 = sub_2168D88D8();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2168D8928()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_2168D897C()
{
  sub_216820E14();
  if (v0 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ObjectGraph();
      if (v2 <= 0x3F)
      {
        type metadata accessor for CatalogPagePresenter();
        swift_getWitnessTable();
        sub_2170086B4();
        if (v3 <= 0x3F)
        {
          type metadata accessor for UnifiedMessages.Coordinator();
          if (v4 <= 0x3F)
          {
            sub_2168E4118(319, &qword_280E2B448, MEMORY[0x277CDE160]);
            if (v5 <= 0x3F)
            {
              sub_2166B49AC();
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

uint64_t sub_2168D8AF8(uint64_t *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = sub_217009804();
  v10 = *(v8 - 8);
  result = v8 - 8;
  v11 = v10;
  v12 = *(v10 + 64);
  v13 = 8;
  if (v12 > 8)
  {
    v13 = v12;
  }

  v14 = *(v5 + 80);
  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_28:
    if ((v6 & 0x80000000) != 0)
    {

      return __swift_getEnumTagSinglePayload((a1 + v14 + 16) & ~v14, v6, AssociatedTypeWitness);
    }

    else
    {
      v23 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v23) = -1;
      }

      return (v23 + 1);
    }
  }

  else
  {
    v15 = *(v11 + 80) & 0xF8 | 7;
    v16 = ((v13 + ((v15 + ((((((((*(v5 + 64) + ((v14 + 16) & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 41) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v15) + 8) & 0xFFFFFFFFFFFFFFF8) + 16;
    v17 = v16 & 0xFFFFFFF8;
    if ((v16 & 0xFFFFFFF8) != 0)
    {
      v18 = 2;
    }

    else
    {
      v18 = a2 - v7 + 1;
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

    switch(v20)
    {
      case 1:
        v21 = *(a1 + v16);
        if (!v21)
        {
          goto LABEL_28;
        }

        goto LABEL_24;
      case 2:
        v21 = *(a1 + v16);
        if (!v21)
        {
          goto LABEL_28;
        }

        goto LABEL_24;
      case 3:
        __break(1u);
        return result;
      case 4:
        v21 = *(a1 + v16);
        if (!v21)
        {
          goto LABEL_28;
        }

LABEL_24:
        v22 = v21 - 1;
        if (v17)
        {
          v22 = 0;
          LODWORD(v17) = *a1;
        }

        result = v7 + (v17 | v22) + 1;
        break;
      default:
        goto LABEL_28;
    }
  }

  return result;
}

void sub_2168D8D54(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(sub_217009804() - 8);
  v11 = 8;
  if (*(v10 + 64) > 8uLL)
  {
    v11 = *(v10 + 64);
  }

  v12 = *(v7 + 80);
  v13 = *(v10 + 80) & 0xF8 | 7;
  v14 = ((v11 + ((v13 + ((((((((*(v7 + 64) + ((v12 + 16) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 41) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v13) + 8) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 >= a3)
  {
    v17 = 0;
  }

  else
  {
    if (v14)
    {
      v15 = 2;
    }

    else
    {
      v15 = a3 - v9 + 1;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v17)
    {
      case 1:
        *(a1 + v14) = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        break;
      case 2:
        *(a1 + v14) = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        break;
      case 3:
LABEL_45:
        __break(1u);
        break;
      case 4:
        *(a1 + v14) = 0;
        goto LABEL_33;
      default:
LABEL_33:
        if (a2)
        {
LABEL_34:
          if ((v8 & 0x80000000) != 0)
          {

            __swift_storeEnumTagSinglePayload((a1 + v12 + 16) & ~v12, a2, v8, AssociatedTypeWitness);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v19 = a2 & 0x7FFFFFFF;
              a1[1] = 0;
            }

            else
            {
              v19 = (a2 - 1);
            }

            *a1 = v19;
          }
        }

        break;
    }
  }

  else
  {
    if (v14)
    {
      v18 = 1;
    }

    else
    {
      v18 = a2 - v9;
    }

    if (v14)
    {
      bzero(a1, v14);
      *a1 = ~v9 + a2;
    }

    switch(v17)
    {
      case 1:
        *(a1 + v14) = v18;
        break;
      case 2:
        *(a1 + v14) = v18;
        break;
      case 3:
        goto LABEL_45;
      case 4:
        *(a1 + v14) = v18;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_2168D906C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PageView.ImpressionTracker();
  result = sub_217007D64();
  *a1 = result;
  return result;
}

uint64_t sub_2168D90C0@<X0>(uint64_t (*a1)()@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v528 = a2;
  v538 = a1;
  v536 = a4;
  v550 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA58);
  v549 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9000);
  v5 = a3[2];
  v6 = a3[4];
  type metadata accessor for CatalogSectionView();
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v507 = a3;
  swift_getTupleTypeMetadata2();
  sub_21700B4E4();
  swift_getWitnessTable();
  *&v666 = v549;
  *(&v666 + 1) = OpaqueTypeMetadata2;
  *&v667 = sub_21700B084();
  *(&v667 + 1) = v5;
  *&v668 = sub_2166D9530(&qword_280E29FC0, &qword_27CAB9000);
  *(&v668 + 1) = swift_getOpaqueTypeConformance2();
  WitnessTable = swift_getWitnessTable();
  v670 = v6;
  v8 = v6;
  v671 = &off_280E43BE0;
  v672 = sub_2166B4B88(&qword_280E43BC8, type metadata accessor for MappedSection);
  v9 = type metadata accessor for PaginatingShelfCollection();
  _s27BannerNavigationItemAdaptorVMa(255);
  v545 = v9;
  v542 = sub_2170089F4();
  v10 = sub_217009564();
  v504 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v519 = &v448 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v518 = &v448 - v13;
  v502 = type metadata accessor for SocialProfileFollowRequestsPageView(0);
  MEMORY[0x28223BE20](v502);
  v501 = &v448 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SocialProfileFollowRequestsPageComponentModel();
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v466 = &v448 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v500 = &v448 - v18;
  v492 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBAB0);
  MEMORY[0x28223BE20](v492);
  v498 = &v448 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBA50);
  MEMORY[0x28223BE20](v20);
  v503 = &v448 - v21;
  v516 = v22;
  v549 = v10;
  v23 = sub_217009564();
  v517 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v523 = &v448 - v24;
  v494 = type metadata accessor for UserNotificationSettingsPageView();
  MEMORY[0x28223BE20](v494);
  v499 = &v448 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v464 = type metadata accessor for SocialOnboardingNotificationSettingsPageLockup();
  v26 = MEMORY[0x28223BE20](v464);
  v465 = &v448 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v497 = &v448 - v28;
  v29 = type metadata accessor for SocialOnboardingSharedPlaylistPageLockup();
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v463 = &v448 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v493 = &v448 - v32;
  v484 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBAB8);
  MEMORY[0x28223BE20](v484);
  v486 = (&v448 - v33);
  v514 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBA98);
  MEMORY[0x28223BE20](v514);
  v489 = &v448 - v34;
  v485 = type metadata accessor for SocialOnboardingPrivacySettingsPageView();
  MEMORY[0x28223BE20](v485);
  v491 = &v448 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for SocialOnboardingPrivacySettingsPageLockup();
  v37 = MEMORY[0x28223BE20](v36 - 8);
  v462 = &v448 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v490 = &v448 - v39;
  FriendsPageView = type metadata accessor for SocialOnboardingFindFriendsPageView();
  MEMORY[0x28223BE20](FriendsPageView);
  v488 = &v448 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  FriendsPageSectionLockup = type metadata accessor for SocialOnboardingFindFriendsPageSectionLockup();
  v42 = MEMORY[0x28223BE20](FriendsPageSectionLockup - 8);
  v461 = &v448 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v487 = &v448 - v44;
  v511 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBAC0);
  MEMORY[0x28223BE20](v511);
  v513 = &v448 - v45;
  v477 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBAC8);
  MEMORY[0x28223BE20](v477);
  v479 = &v448 - v46;
  v512 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBA90);
  MEMORY[0x28223BE20](v512);
  v481 = &v448 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBA48);
  MEMORY[0x28223BE20](v48);
  v515 = &v448 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A20);
  MEMORY[0x28223BE20](v50 - 8);
  v459 = &v448 - v51;
  v476 = type metadata accessor for SocialOnboardingProfileCreationPageView();
  MEMORY[0x28223BE20](v476);
  v482 = &v448 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v458 = type metadata accessor for SocialOnboardingUserNameHandlePageLockup();
  MEMORY[0x28223BE20](v458);
  v480 = &v448 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v469 = type metadata accessor for SocialProfileEditorPageView();
  MEMORY[0x28223BE20](v469);
  v478 = &v448 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v467 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBAD0);
  MEMORY[0x28223BE20](v467);
  v468 = &v448 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBA40);
  MEMORY[0x28223BE20](v56);
  v470 = &v448 - v57;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v521 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v522 = &v448 - v58;
  v59 = v5;
  v60 = type metadata accessor for SearchPageListContentView();
  v506 = *(v60 - 8);
  v61 = MEMORY[0x28223BE20](v60);
  v460 = &v448 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61);
  v474 = &v448 - v63;
  v64 = type metadata accessor for SongDetailPageView();
  v496 = v8;
  v457 = type metadata accessor for CatalogPagePresenter();
  sub_21700F164();
  v539 = sub_217009B34();
  v65 = sub_2170089F4();
  v543 = v60;
  v66 = sub_217009564();
  v475 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v473 = &v448 - v67;
  v550 = v68;
  v509 = v56;
  v69 = sub_217009564();
  v510 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v508 = &v448 - v70;
  v547 = v71;
  v525 = v48;
  v72 = sub_217009564();
  v526 = *(v72 - 8);
  v73 = MEMORY[0x28223BE20](v72);
  v527 = &v448 - v74;
  v546 = v64;
  v456 = *(v64 - 8);
  v75 = MEMORY[0x28223BE20](v73);
  v455 = &v448 - v76;
  v544 = v65;
  v505 = *(v65 - 8);
  v77 = MEMORY[0x28223BE20](v75);
  v472 = &v448 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v77);
  v471 = &v448 - v79;
  v530 = type metadata accessor for MappedSection.Content(0);
  MEMORY[0x28223BE20](v530);
  v524 = &v448 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v529 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBAD8);
  MEMORY[0x28223BE20](v529);
  v82 = &v448 - v81;
  v541 = v72;
  v548 = v23;
  v83 = sub_217009564();
  v532 = *(v83 - 8);
  v84 = MEMORY[0x28223BE20](v83);
  v531 = &v448 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v84);
  v533 = &v448 - v86;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBAE0);
  MEMORY[0x28223BE20](v87 - 8);
  v89 = &v448 - v88;
  v90 = type metadata accessor for MappedSection(0);
  v91 = MEMORY[0x28223BE20](v90);
  v454 = &v448 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v91);
  v94 = &v448 - v93;
  v95 = v83;
  v535 = sub_21700F164();
  v534 = *(v535 - 8);
  v96 = MEMORY[0x28223BE20](v535);
  v98 = &v448 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v96);
  v540 = &v448 - v99;
  v495 = v59;
  v100 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v102 = *(AssociatedConformanceWitness + 56);
  v520 = AssociatedConformanceWitness;
  v453 = v102;
  v103 = (v102)(v100);
  sub_216CE0B38(v103, v89);

  if (__swift_getEnumTagSinglePayload(v89, 1, v90) == 1)
  {
    sub_2166997CC(v89, &qword_27CABBAE0);
    v104 = v98;
    __swift_storeEnumTagSinglePayload(v98, 1, 1, v95);
    v105 = swift_getWitnessTable();
    v106 = swift_getWitnessTable();
    v665[92] = v105;
    v665[93] = v106;
    v107 = swift_getWitnessTable();
    v108 = swift_getWitnessTable();
    v665[90] = v107;
    v665[91] = v108;
    v109 = swift_getWitnessTable();
    v110 = sub_2168E41B0();
    v665[88] = v109;
    v665[89] = v110;
    v111 = swift_getWitnessTable();
    v112 = sub_2168E42C0();
    v665[86] = v111;
    v665[87] = v112;
    v113 = swift_getWitnessTable();
    v114 = sub_2168E4548();
    v115 = sub_2166D9530(&qword_280E2B358, &qword_27CABBA58);
    v116 = swift_getWitnessTable();
    v117 = sub_2166B4B88(&qword_280E41798, _s27BannerNavigationItemAdaptorVMa);
    v665[84] = v116;
    v665[85] = v117;
    v118 = swift_getWitnessTable();
    v665[82] = v115;
    v665[83] = v118;
    v119 = swift_getWitnessTable();
    v665[80] = v114;
    v665[81] = v119;
    v120 = swift_getWitnessTable();
    v665[78] = v113;
    v665[79] = v120;
    swift_getWitnessTable();
  }

  else
  {
    v450 = v98;
    v451 = v95;
    sub_2168E4BA0(v89, v94, type metadata accessor for MappedSection);
    v121 = *&v94[*(v90 + 32)];
    v122 = *(v529 + 48);
    sub_2168E47BC(&v94[*(v90 + 28)], v82, type metadata accessor for MappedSection.Content);
    v82[v122] = v121 == 512;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v452 = v94;
    v124 = v550;
    switch(EnumCaseMultiPayload)
    {
      case '""':
        v449 = v82;
        v244 = v524;
        sub_2168E47BC(v82, v524, type metadata accessor for MappedSection.Content);
        v245 = v497;
        sub_2168E4BA0(v244, v497, type metadata accessor for SocialOnboardingNotificationSettingsPageLockup);
        v246 = v465;
        sub_2168E47BC(v245, v465, type metadata accessor for SocialOnboardingNotificationSettingsPageLockup);
        v247 = v494;
        v248 = v499;
        v249 = (v499 + *(v494 + 20));
        type metadata accessor for UserSocialProfileCoordinator();
        sub_2166B4B88(&unk_280E31C00, type metadata accessor for UserSocialProfileCoordinator);
        *v249 = sub_217008CF4();
        v249[1] = v250;
        v251 = (v248 + v247[6]);
        type metadata accessor for SubscriptionStatusCoordinator();
        sub_2166B4B88(&qword_280E30FC8, type metadata accessor for SubscriptionStatusCoordinator);
        *v251 = sub_217008CF4();
        v251[1] = v252;
        v253 = v248 + v247[7];
        *v253 = swift_getKeyPath();
        *(v253 + 40) = 0;
        v254 = v247[8];
        *(v248 + v254) = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
        swift_storeEnumTagMultiPayload();
        sub_2168E47BC(v246, v248, type metadata accessor for SocialOnboardingNotificationSettingsPageLockup);
        v255 = v464;
        v256 = v248 + v247[9];
        *v256 = *(v246 + *(v464 + 28));
        *(v256 + 8) = 0;
        v257 = v248 + v247[10];
        *v257 = *(v246 + *(v255 + 24));
        *(v257 + 8) = 0;
        LOBYTE(v254) = sub_216A91B10();
        v538 = type metadata accessor for SocialOnboardingNotificationSettingsPageLockup;
        sub_2168E4BFC(v246, type metadata accessor for SocialOnboardingNotificationSettingsPageLockup);
        v258 = v248 + v247[11];
        *v258 = v254 & 1;
        *(v258 + 8) = 0;
        sub_2168E47BC(v248, v498, type metadata accessor for UserNotificationSettingsPageView);
        swift_storeEnumTagMultiPayload();
        sub_2166B4B88(qword_280E2F4D0, type metadata accessor for UserNotificationSettingsPageView);
        sub_2166B4B88(qword_280E2E3F0, type metadata accessor for SocialProfileFollowRequestsPageView);
        v259 = v503;
        sub_217009554();
        AssociatedTypeWitness = sub_2168E4548();
        v260 = sub_2166D9530(&qword_280E2B358, &qword_27CABBA58);
        v261 = swift_getWitnessTable();
        v262 = sub_2166B4B88(&qword_280E41798, _s27BannerNavigationItemAdaptorVMa);
        v665[15] = v261;
        v665[16] = v262;
        v263 = swift_getWitnessTable();
        v665[13] = v260;
        v665[14] = v263;
        v264 = swift_getWitnessTable();
        v265 = v523;
        sub_2166C2718();
        sub_2166997CC(v259, &qword_27CABBA50);
        v266 = swift_getWitnessTable();
        v267 = swift_getWitnessTable();
        v665[11] = v266;
        v665[12] = v267;
        v268 = v548;
        v269 = swift_getWitnessTable();
        v270 = swift_getWitnessTable();
        v665[9] = v269;
        v665[10] = v270;
        v271 = swift_getWitnessTable();
        v272 = sub_2168E41B0();
        v665[7] = v271;
        v665[8] = v272;
        v273 = swift_getWitnessTable();
        v274 = sub_2168E42C0();
        v665[5] = v273;
        v665[6] = v274;
        swift_getWitnessTable();
        v665[3] = AssociatedTypeWitness;
        v665[4] = v264;
        swift_getWitnessTable();
        sub_2166C2CB0();
        (*(v517 + 8))(v265, v268);
        sub_2168E4BFC(v499, type metadata accessor for UserNotificationSettingsPageView);
        v221 = v497;
        goto LABEL_12;
      case '#':
        v449 = v82;
        v194 = v524;
        sub_2168E47BC(v82, v524, type metadata accessor for MappedSection.Content);
        v195 = v194;
        v196 = v490;
        sub_2168E4BA0(v195, v490, type metadata accessor for SocialOnboardingPrivacySettingsPageLockup);
        v197 = v462;
        sub_2168E47BC(v196, v462, type metadata accessor for SocialOnboardingPrivacySettingsPageLockup);
        v198 = v522;
        v199 = AssociatedTypeWitness;
        (*(v521 + 16))(v522, v538, AssociatedTypeWitness);
        v200 = v528;

        v201 = v491;
        sub_2167D5B88(v197, v198, v200, v199, v520, v491);
        sub_2168E47BC(v201, v486, type metadata accessor for SocialOnboardingPrivacySettingsPageView);
        swift_storeEnumTagMultiPayload();
        sub_2166B4B88(&qword_280E2D930, type metadata accessor for SocialOnboardingPrivacySettingsPageView);
        sub_2168E44F4();
        v202 = v489;
        sub_217009554();
        sub_2168282D4(v202, v513, &qword_27CABBA98);
        swift_storeEnumTagMultiPayload();
        sub_2168E434C();
        sub_2168E4438();
        v203 = v515;
        sub_217009554();
        sub_2166997CC(v202, &qword_27CABBA98);
        v204 = swift_getWitnessTable();
        v205 = swift_getWitnessTable();
        v649 = v204;
        v650 = v205;
        v206 = swift_getWitnessTable();
        v207 = swift_getWitnessTable();
        v647 = v206;
        v648 = v207;
        v208 = swift_getWitnessTable();
        v209 = sub_2168E41B0();
        v645 = v208;
        v646 = v209;
        v210 = swift_getWitnessTable();
        v211 = sub_2168E42C0();
        v212 = v527;
        sub_2166C2CB0();
        sub_2166997CC(v203, &qword_27CABBA48);
        v643 = v210;
        v644 = v211;
        v213 = v541;
        swift_getWitnessTable();
        v214 = sub_2168E4548();
        v215 = sub_2166D9530(&qword_280E2B358, &qword_27CABBA58);
        v216 = swift_getWitnessTable();
        v217 = sub_2166B4B88(&qword_280E41798, _s27BannerNavigationItemAdaptorVMa);
        v641 = v216;
        v642 = v217;
        v218 = swift_getWitnessTable();
        v639 = v215;
        v640 = v218;
        v219 = swift_getWitnessTable();
        v637 = v214;
        v638 = v219;
        swift_getWitnessTable();
        sub_2166C2718();
        (*(v526 + 8))(v212, v213);
        sub_2168E4BFC(v491, type metadata accessor for SocialOnboardingPrivacySettingsPageView);
        v220 = type metadata accessor for SocialOnboardingPrivacySettingsPageLockup;
        v221 = v490;
        goto LABEL_17;
      case '$':
      case '&':
      case '\'':
      case ')':
      case '*':
      case '+':
      case '-':
      case '0':
      case '2':
      case '3':
      case '4':
      case '5':
      case '7':
        goto LABEL_8;
      case '%':
        v449 = v82;
        v275 = v524;
        sub_2168E47BC(v82, v524, type metadata accessor for MappedSection.Content);
        v276 = v275;
        v277 = v480;
        sub_2168E4BA0(v276, v480, type metadata accessor for SocialOnboardingUserNameHandlePageLockup);
        v278 = v459;
        sub_2168E47BC(v277, v459, type metadata accessor for SocialOnboardingUserNameHandlePageLockup);
        __swift_storeEnumTagSinglePayload(v278, 0, 1, v458);
        v279 = v522;
        v280 = AssociatedTypeWitness;
        (*(v521 + 16))(v522, v538, AssociatedTypeWitness);
        v281 = v528;

        v282 = v482;
        sub_2167CD3B0(v278, v279, v281, v280, v520, v482);
        sub_2168E47BC(v282, v479, type metadata accessor for SocialOnboardingProfileCreationPageView);
        swift_storeEnumTagMultiPayload();
        sub_2166B4B88(qword_280E2D888, type metadata accessor for SocialOnboardingProfileCreationPageView);
        sub_2166B4B88(&qword_280E2E520, type metadata accessor for SocialOnboardingFindFriendsPageView);
        v283 = v481;
        sub_217009554();
        sub_2168282D4(v283, v513, &qword_27CABBA90);
        swift_storeEnumTagMultiPayload();
        sub_2168E434C();
        sub_2168E4438();
        v284 = v515;
        sub_217009554();
        sub_2166997CC(v283, &qword_27CABBA90);
        v285 = swift_getWitnessTable();
        v286 = swift_getWitnessTable();
        v621 = v285;
        v622 = v286;
        v287 = swift_getWitnessTable();
        v288 = swift_getWitnessTable();
        v619 = v287;
        v620 = v288;
        v289 = swift_getWitnessTable();
        v290 = sub_2168E41B0();
        v617 = v289;
        v618 = v290;
        v291 = swift_getWitnessTable();
        v292 = sub_2168E42C0();
        v293 = v527;
        sub_2166C2CB0();
        sub_2166997CC(v284, &qword_27CABBA48);
        v615 = v291;
        v616 = v292;
        v294 = v541;
        swift_getWitnessTable();
        v295 = sub_2168E4548();
        v296 = sub_2166D9530(&qword_280E2B358, &qword_27CABBA58);
        v297 = swift_getWitnessTable();
        v298 = sub_2166B4B88(&qword_280E41798, _s27BannerNavigationItemAdaptorVMa);
        v613 = v297;
        v614 = v298;
        v299 = swift_getWitnessTable();
        v611 = v296;
        v612 = v299;
        v300 = swift_getWitnessTable();
        v609 = v295;
        v610 = v300;
        swift_getWitnessTable();
        sub_2166C2718();
        (*(v526 + 8))(v293, v294);
        sub_2168E4BFC(v482, type metadata accessor for SocialOnboardingProfileCreationPageView);
        v220 = type metadata accessor for SocialOnboardingUserNameHandlePageLockup;
        v221 = v480;
        goto LABEL_17;
      case '(':
        (*(v521 + 16))(v522, v538, AssociatedTypeWitness);

        v330 = v478;
        sub_216F126A0();
        sub_2168E47BC(v330, v468, type metadata accessor for SocialProfileEditorPageView);
        swift_storeEnumTagMultiPayload();
        sub_2168E426C();
        sub_2166B4B88(qword_280E32E70, type metadata accessor for SocialProfileEditorPageView);
        v331 = v470;
        sub_217009554();
        v332 = swift_getWitnessTable();
        v333 = swift_getWitnessTable();
        v607 = v332;
        v608 = v333;
        v334 = swift_getWitnessTable();
        v449 = v82;
        v335 = swift_getWitnessTable();
        v605 = v334;
        v606 = v335;
        v336 = swift_getWitnessTable();
        v337 = sub_2168E41B0();
        v338 = v508;
        sub_2166C2CB0();
        sub_2166997CC(v331, &qword_27CABBA40);
        v603 = v336;
        v604 = v337;
        v339 = v547;
        v340 = swift_getWitnessTable();
        v341 = sub_2168E42C0();
        v342 = v527;
        sub_2166C2718();
        (*(v510 + 8))(v338, v339);
        v601 = v340;
        v602 = v341;
        v343 = v541;
        swift_getWitnessTable();
        v344 = sub_2168E4548();
        v345 = sub_2166D9530(&qword_280E2B358, &qword_27CABBA58);
        v346 = swift_getWitnessTable();
        v347 = sub_2166B4B88(&qword_280E41798, _s27BannerNavigationItemAdaptorVMa);
        v599 = v346;
        v600 = v347;
        v348 = swift_getWitnessTable();
        v597 = v345;
        v598 = v348;
        v349 = swift_getWitnessTable();
        v595 = v344;
        v596 = v349;
        swift_getWitnessTable();
        sub_2166C2718();
        (*(v526 + 8))(v342, v343);
        v220 = type metadata accessor for SocialProfileEditorPageView;
        v221 = v478;
        goto LABEL_17;
      case ',':
        v449 = v82;
        v222 = v524;
        sub_2168E47BC(v82, v524, type metadata accessor for MappedSection.Content);
        v223 = v500;
        sub_2168E4BA0(v222, v500, type metadata accessor for SocialProfileFollowRequestsPageComponentModel);
        v224 = v466;
        sub_2168E47BC(v223, v466, type metadata accessor for SocialProfileFollowRequestsPageComponentModel);
        v225 = v501;
        sub_2168E47BC(v224, v501, type metadata accessor for SocialProfileFollowRequestsPageComponentModel);
        type metadata accessor for UserSocialProfileCoordinator();
        type metadata accessor for ObjectGraph();
        v226 = v528;
        sub_21700E094();
        v227 = v502;
        *(v225 + *(v502 + 24)) = v666;
        type metadata accessor for SocialGraphController();
        sub_21700E094();
        v538 = type metadata accessor for SocialProfileFollowRequestsPageComponentModel;
        sub_2168E4BFC(v224, type metadata accessor for SocialProfileFollowRequestsPageComponentModel);
        *(v225 + *(v227 + 28)) = v666;
        *(v225 + *(v227 + 20)) = v226;
        sub_2168E47BC(v225, v498, type metadata accessor for SocialProfileFollowRequestsPageView);
        swift_storeEnumTagMultiPayload();
        sub_2166B4B88(qword_280E2F4D0, type metadata accessor for UserNotificationSettingsPageView);
        sub_2166B4B88(qword_280E2E3F0, type metadata accessor for SocialProfileFollowRequestsPageView);

        v228 = v503;
        sub_217009554();
        AssociatedTypeWitness = sub_2168E4548();
        v229 = sub_2166D9530(&qword_280E2B358, &qword_27CABBA58);
        v230 = swift_getWitnessTable();
        v231 = sub_2166B4B88(&qword_280E41798, _s27BannerNavigationItemAdaptorVMa);
        v665[29] = v230;
        v665[30] = v231;
        v232 = swift_getWitnessTable();
        v665[27] = v229;
        v665[28] = v232;
        v233 = swift_getWitnessTable();
        v234 = v523;
        sub_2166C2718();
        sub_2166997CC(v228, &qword_27CABBA50);
        v235 = swift_getWitnessTable();
        v236 = swift_getWitnessTable();
        v665[25] = v235;
        v665[26] = v236;
        v237 = v548;
        v238 = swift_getWitnessTable();
        v239 = swift_getWitnessTable();
        v665[23] = v238;
        v665[24] = v239;
        v240 = swift_getWitnessTable();
        v241 = sub_2168E41B0();
        v665[21] = v240;
        v665[22] = v241;
        v242 = swift_getWitnessTable();
        v243 = sub_2168E42C0();
        v665[19] = v242;
        v665[20] = v243;
        swift_getWitnessTable();
        v665[17] = AssociatedTypeWitness;
        v665[18] = v233;
        swift_getWitnessTable();
        sub_2166C2CB0();
        (*(v517 + 8))(v234, v237);
        sub_2168E4BFC(v501, type metadata accessor for SocialProfileFollowRequestsPageView);
        v221 = v500;
LABEL_12:
        v220 = v538;
        goto LABEL_17;
      case '.':
        v449 = v82;
        v301 = v524;
        sub_2168E47BC(v82, v524, type metadata accessor for MappedSection.Content);
        v302 = v301;
        v303 = v493;
        sub_2168E4BA0(v302, v493, type metadata accessor for SocialOnboardingSharedPlaylistPageLockup);
        v304 = v463;
        sub_2168E47BC(v303, v463, type metadata accessor for SocialOnboardingSharedPlaylistPageLockup);
        v305 = v522;
        v306 = AssociatedTypeWitness;
        (*(v521 + 16))(v522, v538, AssociatedTypeWitness);
        v307 = v528;

        sub_216B75320(v304, v305, v307, v306, v520, &v666);
        v308 = v667;
        v565 = v666;
        v566 = v667;
        v674[0] = *(&v667 + 1);
        v309 = v668;
        v673 = v668;
        v310 = v486;
        *v486 = v666;
        v310[1] = v308;
        v310[2] = v309;
        v311 = WitnessTable;
        *(v310 + 6) = WitnessTable;
        v538 = v311;
        swift_storeEnumTagMultiPayload();
        sub_2168282D4(&v565, v665, &qword_27CABBAE8);
        sub_2168282D4(v674, v665, &qword_27CABBAF0);
        sub_2168282D4(&v673, v665, &qword_27CABAA40);
        sub_2166B4B88(&qword_280E2D930, type metadata accessor for SocialOnboardingPrivacySettingsPageView);
        sub_2168E44F4();

        v312 = v489;
        sub_217009554();
        sub_2168282D4(v312, v513, &qword_27CABBA98);
        swift_storeEnumTagMultiPayload();
        sub_2168E434C();
        sub_2168E4438();
        v313 = v515;
        sub_217009554();
        sub_2166997CC(v312, &qword_27CABBA98);
        v314 = swift_getWitnessTable();
        v315 = swift_getWitnessTable();
        v663 = v314;
        v664 = v315;
        v316 = swift_getWitnessTable();
        v317 = swift_getWitnessTable();
        v661 = v316;
        v662 = v317;
        v318 = swift_getWitnessTable();
        v319 = sub_2168E41B0();
        v659 = v318;
        v660 = v319;
        v320 = swift_getWitnessTable();
        v321 = sub_2168E42C0();
        v322 = v527;
        sub_2166C2CB0();
        sub_2166997CC(v313, &qword_27CABBA48);
        v657 = v320;
        v658 = v321;
        v323 = v541;
        swift_getWitnessTable();
        v324 = sub_2168E4548();
        v325 = sub_2166D9530(&qword_280E2B358, &qword_27CABBA58);
        v326 = swift_getWitnessTable();
        v327 = sub_2166B4B88(&qword_280E41798, _s27BannerNavigationItemAdaptorVMa);
        v655 = v326;
        v656 = v327;
        v328 = swift_getWitnessTable();
        v653 = v325;
        v654 = v328;
        v329 = swift_getWitnessTable();
        v651 = v324;
        v652 = v329;
        swift_getWitnessTable();
        sub_2166C2718();
        sub_2166997CC(&v565, &qword_27CABBAE8);
        sub_2166997CC(v674, &qword_27CABBAF0);
        sub_2166997CC(&v673, &qword_27CABAA40);

        (*(v526 + 8))(v322, v323);
        v220 = type metadata accessor for SocialOnboardingSharedPlaylistPageLockup;
        v221 = v493;
        goto LABEL_17;
      case '/':
        v449 = v82;
        v350 = v524;
        sub_2168E47BC(v82, v524, type metadata accessor for MappedSection.Content);
        v351 = v350;
        v352 = v487;
        sub_2168E4BA0(v351, v487, type metadata accessor for SocialOnboardingFindFriendsPageSectionLockup);
        v353 = v461;
        sub_2168E47BC(v352, v461, type metadata accessor for SocialOnboardingFindFriendsPageSectionLockup);
        v354 = v522;
        v355 = AssociatedTypeWitness;
        (*(v521 + 16))(v522, v538, AssociatedTypeWitness);
        v356 = v528;

        v357 = v488;
        sub_216C7E9E0(v353, v354, v356, v355, v520, v488);
        sub_2168E47BC(v357, v479, type metadata accessor for SocialOnboardingFindFriendsPageView);
        swift_storeEnumTagMultiPayload();
        sub_2166B4B88(qword_280E2D888, type metadata accessor for SocialOnboardingProfileCreationPageView);
        sub_2166B4B88(&qword_280E2E520, type metadata accessor for SocialOnboardingFindFriendsPageView);
        v358 = v481;
        sub_217009554();
        sub_2168282D4(v358, v513, &qword_27CABBA90);
        swift_storeEnumTagMultiPayload();
        sub_2168E434C();
        sub_2168E4438();
        v359 = v515;
        sub_217009554();
        sub_2166997CC(v358, &qword_27CABBA90);
        v360 = swift_getWitnessTable();
        v361 = swift_getWitnessTable();
        v635 = v360;
        v636 = v361;
        v362 = swift_getWitnessTable();
        v363 = swift_getWitnessTable();
        v633 = v362;
        v634 = v363;
        v364 = swift_getWitnessTable();
        v365 = sub_2168E41B0();
        v631 = v364;
        v632 = v365;
        v366 = swift_getWitnessTable();
        v367 = sub_2168E42C0();
        v368 = v527;
        sub_2166C2CB0();
        sub_2166997CC(v359, &qword_27CABBA48);
        v629 = v366;
        v630 = v367;
        v369 = v541;
        swift_getWitnessTable();
        v370 = sub_2168E4548();
        v371 = sub_2166D9530(&qword_280E2B358, &qword_27CABBA58);
        v372 = swift_getWitnessTable();
        v373 = sub_2166B4B88(&qword_280E41798, _s27BannerNavigationItemAdaptorVMa);
        v627 = v372;
        v628 = v373;
        v374 = swift_getWitnessTable();
        v625 = v371;
        v626 = v374;
        v375 = swift_getWitnessTable();
        v623 = v370;
        v624 = v375;
        swift_getWitnessTable();
        sub_2166C2718();
        (*(v526 + 8))(v368, v369);
        sub_2168E4BFC(v488, type metadata accessor for SocialOnboardingFindFriendsPageView);
        v220 = type metadata accessor for SocialOnboardingFindFriendsPageSectionLockup;
        v221 = v487;
LABEL_17:
        sub_2168E4BFC(v221, v220);
        goto LABEL_18;
      case '1':
        v417 = v524;
        sub_2168E47BC(v82, v524, type metadata accessor for MappedSection.Content);
        v418 = *(v417 + 16);
        v666 = *v417;
        v667 = v418;
        v668 = *(v417 + 32);
        WitnessTable = *(v417 + 48);
        sub_2167CC348(&v666, &v565);
        v419 = v454;
        sub_2168E47BC(v94, v454, type metadata accessor for MappedSection);
        v420 = v455;
        sub_2167CB8E4(&v565, v419, v528, v455);

        sub_2168D43D4(v507, MEMORY[0x277CDF490]);
        v421 = v546;
        v422 = swift_getWitnessTable();
        swift_getWitnessTable();
        v423 = v472;
        sub_21700A654();

        (*(v456 + 8))(v420, v421);
        v424 = swift_getWitnessTable();
        v563 = v422;
        v564 = v424;
        AssociatedTypeWitness = MEMORY[0x277CDFAD8];
        v425 = v544;
        v426 = swift_getWitnessTable();
        v427 = v471;
        sub_2166C24DC(v423, v425, v426);
        v428 = *(v505 + 8);
        v505 += 8;
        v538 = v428;
        (v428)(v423, v425);
        sub_2166C24DC(v427, v425, v426);
        v429 = swift_getWitnessTable();
        v430 = v473;
        sub_2166C2718();
        v561 = v426;
        v562 = v429;
        v431 = swift_getWitnessTable();
        v432 = v124;
        v433 = sub_2168E41B0();
        v434 = v508;
        sub_2166C2718();
        (*(v475 + 8))(v430, v432);
        v559 = v431;
        v560 = v433;
        v435 = v547;
        v436 = swift_getWitnessTable();
        v437 = sub_2168E42C0();
        sub_2166C2718();
        (*(v510 + 8))(v434, v435);
        v557 = v436;
        v558 = v437;
        v438 = v541;
        swift_getWitnessTable();
        v439 = sub_2168E4548();
        v440 = v82;
        v441 = sub_2166D9530(&qword_280E2B358, &qword_27CABBA58);
        v442 = swift_getWitnessTable();
        v443 = sub_2166B4B88(&qword_280E41798, _s27BannerNavigationItemAdaptorVMa);
        v555 = v442;
        v556 = v443;
        v444 = swift_getWitnessTable();
        v553 = v441;
        v554 = v444;
        v445 = swift_getWitnessTable();
        v551 = v439;
        v552 = v445;
        swift_getWitnessTable();
        v446 = v527;
        sub_2166C2718();
        (*(v526 + 8))(v446, v438);
        v447 = v538;
        (v538)(v472, v425);
        (v447)(v471, v425);
        sub_2168E4818(&v666);
        sub_2168E4BFC(v452, type metadata accessor for MappedSection);
        v151 = type metadata accessor for MappedSection.Content;
        v152 = v440;
        goto LABEL_19;
      case '6':
      case '8':
        if (v121 != 512)
        {
          goto LABEL_8;
        }

        sub_2168E4BFC(v82, type metadata accessor for MappedSection.Content);
        v125 = v522;
        (*(v521 + 16))(v522, v538, AssociatedTypeWitness);
        v126 = v460;
        sub_21681D520(v125, v528, v460);
        v127 = v543;
        v128 = swift_getWitnessTable();
        v129 = v474;
        sub_2166C24DC(v126, v127, v128);
        v130 = *(v506 + 8);
        v506 += 8;
        v538 = v130;

        (v130)(v126, v127);
        sub_2166C24DC(v129, v127, v128);
        v131 = swift_getWitnessTable();
        v132 = swift_getWitnessTable();
        v579 = v131;
        v580 = v132;
        v133 = swift_getWitnessTable();
        v134 = v473;
        sub_2166C2CB0();
        v577 = v133;
        v578 = v128;
        v135 = swift_getWitnessTable();
        v136 = v124;
        v137 = sub_2168E41B0();
        v138 = v508;
        sub_2166C2718();
        (*(v475 + 8))(v134, v136);
        v575 = v135;
        v576 = v137;
        v139 = v547;
        v140 = swift_getWitnessTable();
        v141 = sub_2168E42C0();
        sub_2166C2718();
        (*(v510 + 8))(v138, v139);
        v573 = v140;
        v574 = v141;
        v142 = v541;
        swift_getWitnessTable();
        v143 = sub_2168E4548();
        v144 = sub_2166D9530(&qword_280E2B358, &qword_27CABBA58);
        v145 = swift_getWitnessTable();
        v146 = sub_2166B4B88(&qword_280E41798, _s27BannerNavigationItemAdaptorVMa);
        v571 = v145;
        v572 = v146;
        v147 = swift_getWitnessTable();
        v569 = v144;
        v570 = v147;
        v148 = swift_getWitnessTable();
        v567 = v143;
        v568 = v148;
        swift_getWitnessTable();
        v149 = v527;
        sub_2166C2718();
        (*(v526 + 8))(v149, v142);
        v150 = v538;
        (v538)(v126, v127);
        (v150)(v474, v127);
        v151 = type metadata accessor for MappedSection;
        v152 = v452;
        goto LABEL_19;
      default:
        if (EnumCaseMultiPayload == 20)
        {
          v153 = v453(AssociatedTypeWitness, v520);
          v154 = v528;

          sub_216E0ACB0(v153, v154, &v666);
          sub_2168E470C(&v666, v468);
          swift_storeEnumTagMultiPayload();
          sub_2168E426C();
          sub_2166B4B88(qword_280E32E70, type metadata accessor for SocialProfileEditorPageView);
          v155 = v470;
          sub_217009554();
          v156 = swift_getWitnessTable();
          v157 = swift_getWitnessTable();
          v593 = v156;
          v594 = v157;
          v158 = swift_getWitnessTable();
          v449 = v82;
          v159 = swift_getWitnessTable();
          v591 = v158;
          v592 = v159;
          v160 = swift_getWitnessTable();
          v161 = sub_2168E41B0();
          v162 = v508;
          sub_2166C2CB0();
          sub_2166997CC(v155, &qword_27CABBA40);
          v589 = v160;
          v590 = v161;
          v163 = v547;
          v164 = swift_getWitnessTable();
          v165 = sub_2168E42C0();
          v166 = v527;
          sub_2166C2718();
          (*(v510 + 8))(v162, v163);
          v587 = v164;
          v588 = v165;
          v167 = v541;
          swift_getWitnessTable();
          v168 = sub_2168E4548();
          v169 = sub_2166D9530(&qword_280E2B358, &qword_27CABBA58);
          v170 = swift_getWitnessTable();
          v171 = sub_2166B4B88(&qword_280E41798, _s27BannerNavigationItemAdaptorVMa);
          v585 = v170;
          v586 = v171;
          v172 = swift_getWitnessTable();
          v583 = v169;
          v584 = v172;
          v173 = swift_getWitnessTable();
          v581 = v168;
          v582 = v173;
          swift_getWitnessTable();
          sub_2166C2718();
          (*(v526 + 8))(v166, v167);
          sub_2168E4768(&v666);
LABEL_18:
          sub_2168E4BFC(v452, type metadata accessor for MappedSection);
          v151 = type metadata accessor for MappedSection.Content;
          v152 = v449;
LABEL_19:
          sub_2168E4BFC(v152, v151);
        }

        else
        {
LABEL_8:
          v174 = v519;
          sub_2168DE2C0(v538, v528, v507, v519);
          v175 = sub_2166D9530(&qword_280E2B358, &qword_27CABBA58);
          v176 = swift_getWitnessTable();
          v177 = sub_2166B4B88(&qword_280E41798, _s27BannerNavigationItemAdaptorVMa);
          v665[59] = v176;
          v665[60] = v177;
          v178 = swift_getWitnessTable();
          v665[57] = v175;
          v665[58] = v178;
          v179 = v549;
          v180 = swift_getWitnessTable();
          v181 = v518;
          sub_2166C24DC(v174, v179, v180);
          v449 = v82;
          v538 = *(v504 + 8);
          (v538)(v174, v179);
          sub_2166C24DC(v181, v179, v180);
          v182 = sub_2168E4548();
          sub_2166C2CB0();
          v183 = swift_getWitnessTable();
          v184 = swift_getWitnessTable();
          v665[55] = v183;
          v665[56] = v184;
          v185 = v548;
          v186 = swift_getWitnessTable();
          v187 = swift_getWitnessTable();
          v665[53] = v186;
          v665[54] = v187;
          v188 = swift_getWitnessTable();
          v189 = sub_2168E41B0();
          v665[51] = v188;
          v665[52] = v189;
          v190 = swift_getWitnessTable();
          v191 = sub_2168E42C0();
          v665[49] = v190;
          v665[50] = v191;
          swift_getWitnessTable();
          v665[47] = v182;
          v665[48] = v180;
          swift_getWitnessTable();
          v192 = v523;
          sub_2166C2CB0();
          (*(v517 + 8))(v192, v185);
          v193 = v538;
          (v538)(v519, v179);
          (v193)(v518, v179);
          sub_2168E4BFC(v452, type metadata accessor for MappedSection);
          sub_2166997CC(v449, &qword_27CABBAD8);
        }

        v376 = swift_getWitnessTable();
        v377 = swift_getWitnessTable();
        v665[45] = v376;
        v665[46] = v377;
        v378 = swift_getWitnessTable();
        v379 = swift_getWitnessTable();
        v665[43] = v378;
        v665[44] = v379;
        v380 = swift_getWitnessTable();
        v381 = sub_2168E41B0();
        v665[41] = v380;
        v665[42] = v381;
        v382 = swift_getWitnessTable();
        v383 = sub_2168E42C0();
        v665[39] = v382;
        v665[40] = v383;
        v384 = swift_getWitnessTable();
        v385 = sub_2168E4548();
        v386 = sub_2166D9530(&qword_280E2B358, &qword_27CABBA58);
        v387 = swift_getWitnessTable();
        v388 = sub_2166B4B88(&qword_280E41798, _s27BannerNavigationItemAdaptorVMa);
        v665[37] = v387;
        v665[38] = v388;
        v389 = swift_getWitnessTable();
        v665[35] = v386;
        v665[36] = v389;
        v390 = swift_getWitnessTable();
        v665[33] = v385;
        v665[34] = v390;
        v391 = swift_getWitnessTable();
        v665[31] = v384;
        v665[32] = v391;
        v392 = v451;
        v393 = swift_getWitnessTable();
        v394 = v531;
        v395 = v533;
        sub_2166C24DC(v533, v392, v393);
        v396 = v532;
        (*(v532 + 8))(v395, v392);
        v104 = v450;
        (*(v396 + 32))(v450, v394, v392);
        __swift_storeEnumTagSinglePayload(v104, 0, 1, v392);
        break;
    }
  }

  sub_2168D4034(v104, v540);
  v539 = *(v534 + 8);
  v397 = v535;
  v539(v104, v535);
  v398 = swift_getWitnessTable();
  v399 = swift_getWitnessTable();
  v665[76] = v398;
  v665[77] = v399;
  v400 = swift_getWitnessTable();
  v401 = swift_getWitnessTable();
  v665[74] = v400;
  v665[75] = v401;
  v402 = swift_getWitnessTable();
  v403 = sub_2168E41B0();
  v665[72] = v402;
  v665[73] = v403;
  v404 = swift_getWitnessTable();
  v405 = sub_2168E42C0();
  v665[70] = v404;
  v665[71] = v405;
  v406 = swift_getWitnessTable();
  v407 = sub_2168E4548();
  v408 = sub_2166D9530(&qword_280E2B358, &qword_27CABBA58);
  v409 = swift_getWitnessTable();
  v410 = sub_2166B4B88(&qword_280E41798, _s27BannerNavigationItemAdaptorVMa);
  v665[68] = v409;
  v665[69] = v410;
  v411 = swift_getWitnessTable();
  v665[66] = v408;
  v665[67] = v411;
  v412 = swift_getWitnessTable();
  v665[64] = v407;
  v665[65] = v412;
  v413 = swift_getWitnessTable();
  v665[62] = v406;
  v665[63] = v413;
  v665[61] = swift_getWitnessTable();
  v414 = swift_getWitnessTable();
  v415 = v540;
  sub_2166C24DC(v540, v397, v414);
  return (v539)(v415, v397);
}

uint64_t sub_2168DDAA8(uint64_t a1)
{
  if (!*(v1 + *(a1 + 108)))
  {
    return 0;
  }

  v2 = sub_2168D43D4(a1, MEMORY[0x277CDF498]);
  MEMORY[0x28223BE20](v2);
  swift_getKeyPath();
  type metadata accessor for CatalogPagePresenter();
  swift_getWitnessTable();
  sub_2170086A4();

  return v4;
}

uint64_t sub_2168DDBB4(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t a1), void *a6)
{
  v54 = a1;
  v10 = sub_21700B5A4();
  v49 = *(v10 - 8);
  v50 = v10;
  MEMORY[0x28223BE20](v10);
  v47 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_21700B5E4();
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v45 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_21700B604();
  v44 = *(v52 - 8);
  v13 = MEMORY[0x28223BE20](v52);
  v43 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v51 = &v41 - v15;
  v16 = type metadata accessor for CatalogPagePresenter.State();
  v17 = sub_21700F164();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v41 - v22;
  aBlock = a3;
  v56 = a4;
  v57 = a5;
  v58 = a6;
  v24 = type metadata accessor for PageView();
  result = sub_2168DDAA8(v24);
  if (v26)
  {
    v28 = v26;
    LODWORD(v42) = v27;
    v53 = result;
    v29 = *(v18 + 16);
    v29(v23, v54, v17);
    if (__swift_getEnumTagSinglePayload(v23, 1, v16) == 1)
    {
    }

    else
    {
      v29(v21, v23, v17);
      if (!swift_getEnumCaseMultiPayload())
      {
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        (*(*(AssociatedTypeWitness - 8) + 8))(v21, AssociatedTypeWitness);
        (*(v18 + 8))(v23, v17);
        v31 = v53;
        aBlock = v53;
        v56 = v28;
        v32 = v42 & 1;
        LOBYTE(v57) = v42 & 1;
        v61 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDA20);
        sub_21700B0D4();
        sub_2166AF2EC();
        v42 = sub_21700EE84();
        v33 = v43;
        sub_21700B5F4();
        sub_21700B634();
        v54 = *(v44 + 8);
        v54(v33, v52);
        v34 = swift_allocObject();
        *(v34 + 16) = v31;
        *(v34 + 24) = v28;
        *(v34 + 32) = v32;
        v59 = sub_2168E4700;
        v60 = v34;
        aBlock = MEMORY[0x277D85DD0];
        v56 = 1107296256;
        v57 = sub_2169F0990;
        v58 = &block_descriptor_59;
        v35 = _Block_copy(&aBlock);

        v36 = v45;
        sub_21700B5C4();
        aBlock = MEMORY[0x277D84F90];
        sub_2166B4B88(&qword_280E2A480, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABC970);
        sub_2166D9530(&qword_280E29E50, &unk_27CABC970);
        v37 = v47;
        v38 = v50;
        sub_21700F214();
        v39 = v51;
        v40 = v42;
        MEMORY[0x21CE9FC70](v51, v36, v37, v35);
        _Block_release(v35);

        (*(v49 + 8))(v37, v38);
        (*(v46 + 8))(v36, v48);
        return (v54)(v39, v52);
      }

      (*(*(v16 - 8) + 8))(v21, v16);
    }

    return (*(v18 + 8))(v23, v17);
  }

  return result;
}

void *sub_2168DE228(uint64_t a1, uint64_t a2, char a3)
{
  v8 = a1;
  v9 = a2;
  v10 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDA20);
  result = MEMORY[0x21CE9BEE0](&v7);
  if ((v7 & 1) == 0)
  {
    v8 = a1;
    v9 = a2;
    v10 = a3 & 1;
    v7 = 1;
    return sub_21700B0D4();
  }

  return result;
}

uint64_t sub_2168DE2C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v111 = a2;
  v119 = a1;
  v115 = a4;
  v94 = type metadata accessor for Page.Header(0);
  v5 = MEMORY[0x28223BE20](v94);
  v95 = v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = *(a3 - 1);
  MEMORY[0x28223BE20](v5);
  v109 = v7;
  v110 = v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9000);
  v8 = a3[2];
  v9 = a3[4];
  v10 = type metadata accessor for CatalogSectionView();
  WitnessTable = swift_getWitnessTable();
  *__src = v10;
  *&__src[8] = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v122 = a3[3];
  swift_getTupleTypeMetadata2();
  sub_21700B4E4();
  swift_getWitnessTable();
  v13 = sub_21700B084();
  v14 = sub_2166D9530(&qword_280E29FC0, &qword_27CAB9000);
  *__src = v10;
  *&__src[8] = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = swift_getWitnessTable();
  v17 = sub_2166B4B88(&qword_280E43BC8, type metadata accessor for MappedSection);
  *__src = v118;
  *&__src[8] = OpaqueTypeMetadata2;
  v101 = v13;
  v102 = OpaqueTypeMetadata2;
  *&__src[16] = v13;
  *&__src[24] = v8;
  v99 = OpaqueTypeConformance2;
  v100 = v14;
  *&__src[32] = v14;
  *&__src[40] = OpaqueTypeConformance2;
  v98 = v16;
  *&__src[48] = v16;
  *&__src[56] = v9;
  *&__src[64] = &off_280E43BE0;
  *&__src[72] = v17;
  v97 = v17;
  v18 = type metadata accessor for PaginatingShelfCollection();
  _s27BannerNavigationItemAdaptorVMa(255);
  v114 = v18;
  v19 = sub_2170089F4();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v106 = v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v104 = v85 - v24;
  MEMORY[0x28223BE20](v23);
  v105 = v85 - v25;
  v123 = v9;
  v121 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v108 = *(AssociatedTypeWitness - 8);
  v107 = *(v108 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v116 = v85 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA58);
  v28 = sub_217009564();
  v112 = *(v28 - 8);
  v113 = v28;
  MEMORY[0x28223BE20](v28);
  v30 = v85 - v29;
  v31 = v119;
  v32 = a3;
  v33 = v117;
  if (sub_2168DEF4C())
  {
    v34 = v108;
    v35 = v116;
    v36 = AssociatedTypeWitness;
    (*(v108 + 16))(v116, v31, AssociatedTypeWitness);
    v37 = (*(v34 + 80) + 48) & ~*(v34 + 80);
    v38 = swift_allocObject();
    v39 = v122;
    *(v38 + 2) = v121;
    *(v38 + 3) = v39;
    v40 = v32[5];
    *(v38 + 4) = v123;
    *(v38 + 5) = v40;
    (*(v34 + 32))(&v38[v37], v35, v36);
    *__src = sub_2168E4A7C;
    *&__src[8] = v38;
    sub_2166D9530(&qword_280E2B358, &qword_27CABBA58);
    v41 = swift_getWitnessTable();
    v42 = sub_2166B4B88(&qword_280E41798, _s27BannerNavigationItemAdaptorVMa);
    v124 = v41;
    v125 = v42;
    swift_getWitnessTable();
    sub_2166C2718();

    v43 = v30;
  }

  else
  {
    v90 = v20;
    v91 = v27;
    v92 = v30;
    v93 = v19;
    v44 = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    __dst[0] = (*(AssociatedConformanceWitness + 56))(v44, AssociatedConformanceWitness);
    v45 = v33;
    v88 = sub_2168D43D4(a3, MEMORY[0x277CDF490]);
    v96 = a3[5];
    v87 = sub_2168DF450();
    v86 = sub_2168DF728();
    v46 = v103;
    v47 = *(v103 + 16);
    v48 = v110;
    v47(v110, v45, v32);
    v49 = v47;
    v50 = *(v46 + 80);
    v51 = (v50 + 48) & ~v50;
    v85[1] = v50 | 7;
    v52 = (v109 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
    v53 = swift_allocObject();
    v54 = v122;
    v53[2] = v121;
    v53[3] = v54;
    v55 = v96;
    v53[4] = v123;
    v53[5] = v55;
    v103 = *(v46 + 32);
    (v103)(v53 + v51, v48, v32);
    *(v53 + v52) = v111;
    v56 = v108;
    (*(v108 + 16))(v116, v119, AssociatedTypeWitness);
    v49(v48, v117, v32);
    v57 = (*(v56 + 80) + 48) & ~*(v56 + 80);
    v58 = (v107 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
    v59 = swift_allocObject();
    v60 = v122;
    v59[2] = v121;
    v59[3] = v60;
    v61 = v96;
    v59[4] = v123;
    v59[5] = v61;
    v62 = v59 + v57;
    v63 = AssociatedTypeWitness;
    (*(v56 + 32))(v62, v116, AssociatedTypeWitness);
    v64 = v110;
    *(v59 + v58) = v111;
    (v103)(v59 + ((v50 + v58 + 8) & ~v50), v64, v32);
    swift_retain_n();
    sub_216DF5300(__dst, 0, 0, v88, v87 & 1, v86 & 1, sub_2168E486C, v53, __src, sub_2168E4950, v59, v118, v102, v101, v100, v99, v98, &off_280E43BE0, v97);
    memcpy(__dst, __src, 0x49uLL);
    v65 = (*(AssociatedConformanceWitness + 32))(v63);
    if (v65)
    {
      v66 = v95;
      sub_216DE8DC8();

      v67 = (v66 + *(v94 + 52));
      v68 = *v67;
      v65 = v67[1];
      sub_21700DF14();
      sub_2168E4BFC(v66, type metadata accessor for Page.Header);
    }

    else
    {
      v68 = 0;
    }

    v43 = v92;
    v69 = v93;
    v70 = v114;
    v132 = v68;
    v133 = v65;
    v71 = swift_getWitnessTable();
    v72 = v104;
    sub_216EF31A4();

    memcpy(v134, __dst, 0x49uLL);
    (*(*(v70 - 8) + 8))(v134, v70);
    v73 = sub_2166B4B88(&qword_280E41798, _s27BannerNavigationItemAdaptorVMa);
    v130 = v71;
    v131 = v73;
    v74 = swift_getWitnessTable();
    v75 = v105;
    sub_2166C24DC(v72, v69, v74);
    v76 = *(v90 + 8);
    v76(v72, v69);
    v77 = v106;
    sub_2166C24DC(v75, v69, v74);
    sub_2166D9530(&qword_280E2B358, &qword_27CABBA58);
    sub_2166C2CB0();
    v76(v77, v69);
    v76(v75, v69);
  }

  v78 = sub_2166D9530(&qword_280E2B358, &qword_27CABBA58);
  v79 = swift_getWitnessTable();
  v80 = sub_2166B4B88(&qword_280E41798, _s27BannerNavigationItemAdaptorVMa);
  v128 = v79;
  v129 = v80;
  v81 = swift_getWitnessTable();
  v126 = v78;
  v127 = v81;
  v82 = v113;
  v83 = swift_getWitnessTable();
  sub_2166C24DC(v43, v82, v83);
  return (*(v112 + 8))(v43, v82);
}

uint64_t sub_2168DEF4C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBAE0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v26 - v1;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = *(AssociatedConformanceWitness + 56);
  v5 = swift_checkMetadataState();
  v6 = v4(v5, AssociatedConformanceWitness);
  sub_216CE0B38(v6, v2);

  v7 = type metadata accessor for MappedSection(0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v7) == 1)
  {
    sub_2166997CC(v2, &qword_27CABBAE0);
    return 0;
  }

  v8 = v2[*(v7 + 52)];
  sub_2168E4BFC(v2, type metadata accessor for MappedSection);
  if (v8 == 62)
  {
    return 0;
  }

  sub_216C275C8(v8);
  if (v10 == 0xD000000000000018 && 0x8000000217080F90 == v9)
  {
    goto LABEL_27;
  }

  v12 = sub_21700F7D4();

  if (v12)
  {
    return 0;
  }

  sub_216C275C8(v8);
  if (v14 == 0xD000000000000017 && 0x8000000217080F10 == v13)
  {
    goto LABEL_27;
  }

  v16 = sub_21700F7D4();

  if (v16)
  {
    return 0;
  }

  sub_216C275C8(v8);
  if (v18 == 0xD00000000000001ALL && 0x80000002170811B0 == v17)
  {
    goto LABEL_27;
  }

  v20 = sub_21700F7D4();

  if (v20)
  {
    return 0;
  }

  sub_216C275C8(v8);
  if (v22 == 0xD000000000000019 && 0x8000000217081600 == v21)
  {
LABEL_27:

    return 0;
  }

  v24 = sub_21700F7D4();

  if (v24)
  {
    return 0;
  }

  if (qword_280E2B930 != -1)
  {
    swift_once();
  }

  return byte_280E73A85;
}

void *sub_2168DF244@<X0>(void *a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = *(AssociatedConformanceWitness + 56);
  v4 = swift_checkMetadataState();
  v5 = v3(v4, AssociatedConformanceWitness);
  sub_217008444();
  sub_217008444();
  sub_21700B3B4();
  sub_2170083C4();
  sub_217008444();
  v7 = sub_216A1204C(v6);
  v8 = qword_217025178[v7];
  KeyPath = swift_getKeyPath();
  v12[80] = v24;
  v12[72] = v26;
  v11 = swift_getKeyPath();
  __src[0] = v5;
  __src[1] = v23;
  LOBYTE(__src[2]) = v24;
  __src[3] = v25;
  LOBYTE(__src[4]) = v26;
  __src[5] = v27;
  __src[6] = v28;
  __src[7] = KeyPath;
  LOBYTE(__src[8]) = v7;
  memcpy(__dst, __src, 0x41uLL);
  v14[0] = v5;
  v14[1] = v23;
  v15 = v24;
  v16 = v25;
  v17 = v26;
  v18 = v27;
  v19 = v28;
  v20 = KeyPath;
  v21 = v7;
  sub_2168282D4(__src, v12, &qword_27CABBAF8);
  sub_2166997CC(v14, &qword_27CABBAF8);
  result = memcpy(a1, __dst, 0x48uLL);
  a1[9] = v11;
  a1[10] = 0;
  a1[11] = v8;
  a1[12] = 0;
  a1[13] = v8;
  return result;
}

uint64_t sub_2168DF450()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBAE0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v20 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB00);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - v7;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = *(AssociatedConformanceWitness + 56);
  v11 = swift_checkMetadataState();
  v12 = v10(v11, AssociatedConformanceWitness);
  sub_216CE0B38(v12, v2);

  v13 = type metadata accessor for MappedSection(0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v13) == 1)
  {
    sub_2166997CC(v2, &qword_27CABBAE0);
    v14 = type metadata accessor for MappedSection.Content(0);
    v15 = 1;
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v14);
  }

  else
  {
    sub_2168E47BC(&v2[*(v13 + 28)], v8, type metadata accessor for MappedSection.Content);
    sub_2168E4BFC(v2, type metadata accessor for MappedSection);
    v16 = type metadata accessor for MappedSection.Content(0);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v16);
    sub_2168282D4(v8, v6, &qword_27CABBB00);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 23 || EnumCaseMultiPayload == 0)
    {
      sub_2168E4BFC(v6, type metadata accessor for MappedSection.Content);
      v15 = 0;
    }

    else
    {
      sub_2168E4BFC(v6, type metadata accessor for MappedSection.Content);
      v15 = 1;
    }
  }

  sub_2166997CC(v8, &qword_27CABBB00);
  return v15;
}

uint64_t sub_2168DF728()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  MEMORY[0x28223BE20](v0 - 8);
  v29 = &v28 - v1;
  v28 = type metadata accessor for CuratorDetailHeaderComponentModel();
  MEMORY[0x28223BE20](v28);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ArtistDetailHeaderLockup();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBAE0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB00);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - v14;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = *(AssociatedConformanceWitness + 56);
  v18 = swift_checkMetadataState();
  v19 = v17(v18, AssociatedConformanceWitness);
  sub_216CE0B38(v19, v9);

  v20 = type metadata accessor for MappedSection(0);
  if (__swift_getEnumTagSinglePayload(v9, 1, v20) == 1)
  {
    sub_2166997CC(v9, &qword_27CABBAE0);
    v21 = type metadata accessor for MappedSection.Content(0);
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v21);
LABEL_8:
    v24 = 0;
    goto LABEL_9;
  }

  sub_2168E47BC(&v9[*(v20 + 28)], v15, type metadata accessor for MappedSection.Content);
  sub_2168E4BFC(v9, type metadata accessor for MappedSection);
  v22 = type metadata accessor for MappedSection.Content(0);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v22);
  sub_2168282D4(v15, v13, &qword_27CABBB00);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 9)
  {
    sub_2168E4BA0(v13, v3, type metadata accessor for CuratorDetailHeaderComponentModel);
    v25 = v29;
    sub_2168282D4(&v3[*(v28 + 32)], v29, &qword_27CAB6D60);
    sub_2168E4BFC(v3, type metadata accessor for CuratorDetailHeaderComponentModel);
    v26 = type metadata accessor for Artwork();
    v24 = __swift_getEnumTagSinglePayload(v25, 1, v26) != 1;
    sub_2166997CC(v25, &qword_27CAB6D60);
  }

  else
  {
    if (EnumCaseMultiPayload != 4)
    {
      sub_2168E4BFC(v13, type metadata accessor for MappedSection.Content);
      goto LABEL_8;
    }

    sub_2168ABE5C();
    v24 = sub_216AD18DC();

    sub_2168E4BFC(v6, type metadata accessor for ArtistDetailHeaderLockup);
  }

LABEL_9:
  sub_2166997CC(v15, &qword_27CABBB00);
  return v24 & 1;
}

uint64_t sub_2168DFBAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v25[1] = a4;
  v26 = a2;
  v27 = a3;
  v29 = a9;
  v28 = type metadata accessor for MappedSection(0);
  MEMORY[0x28223BE20](v28);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CatalogSectionView();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v25 - v19;
  sub_2168E47BC(a1, v16, type metadata accessor for MappedSection);
  v30 = a6;
  v31 = a7;
  v32 = a8;
  v33 = a10;
  v21 = type metadata accessor for PageView();
  sub_2168D43D4(v21, MEMORY[0x277CDF490]);

  v22 = v26;
  sub_216E69B04(v16, v26, v27, a5, v20);
  WitnessTable = swift_getWitnessTable();
  sub_2166B4B88(&qword_280E43BD8, type metadata accessor for MappedSection);
  sub_216BE57CC(v22, 0, v17, v28, WitnessTable, v29);
  return (*(v18 + 8))(v20, v17);
}

uint64_t sub_2168DFDE4()
{
  swift_getTupleTypeMetadata2();
  sub_21700B4E4();
  swift_getWitnessTable();
  sub_216E69898();
  return sub_21700B074();
}

uint64_t sub_2168DFEAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v38 = a3;
  v39 = a7;
  v41 = a8;
  v42 = a2;
  v10 = *(a5 - 8);
  v34 = a5;
  v35 = v10;
  v11 = MEMORY[0x28223BE20](a1);
  v43 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v40 = &v34 - v13;
  v14 = type metadata accessor for Page.Header(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a6;
  swift_getAssociatedTypeWitness();
  v36 = a4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = *(AssociatedConformanceWitness + 32);
  v19 = swift_checkMetadataState();
  if (v18(v19, AssociatedConformanceWitness))
  {
    sub_216DE8DC8();

    v20 = &v16[*(v14 + 52)];
    v22 = *v20;
    v21 = *(v20 + 1);
    sub_21700DF14();
    sub_2168E4BFC(v16, type metadata accessor for Page.Header);
  }

  else
  {
    v22 = 0;
    v21 = 0;
  }

  v23 = v18(v19, AssociatedConformanceWitness);
  if (v23)
  {
    sub_216DE8DC8();

    v24 = &v16[*(v14 + 56)];
    v25 = *v24;
    v23 = *(v24 + 1);
    sub_21700DF14();
    sub_2168E4BFC(v16, type metadata accessor for Page.Header);
  }

  else
  {
    v25 = 0;
  }

  v26 = v34;
  v47 = v36;
  v48 = v34;
  v27 = v39;
  v49 = v37;
  v50 = v39;
  v28 = type metadata accessor for PageView();
  v29 = v40;
  sub_2166C24DC(v38 + *(v28 + 52), v26, v27);
  v47 = v22;
  v48 = v21;
  v49 = v25;
  v50 = v23;
  v30 = v43;
  v51 = v42;
  v52[0] = &v47;
  v31 = v35;
  (*(v35 + 16))(v43, v29, v26);
  v52[1] = v30;
  sub_21700DF14();
  swift_retain_n();
  sub_21700DF14();
  v46[0] = &type metadata for UnifiedMessagesHeaderView;
  v46[1] = v26;
  v44 = sub_2168E4B4C();
  v45 = v27;
  sub_216984F84(v52, 2, v46);

  v32 = *(v31 + 8);
  v32(v29, v26);
  v32(v30, v26);
}

uint64_t sub_2168E024C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v118 = a5;
  v116 = a4;
  v145 = a3;
  v139 = a2;
  v142 = a1;
  v147 = a6;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7930);
  MEMORY[0x28223BE20](v6 - 8);
  v146 = &v92 - v7;
  type metadata accessor for PageViewEnvironmentModifier();
  swift_getWitnessTable();
  v8 = sub_2170097A4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB9F8);
  v117 = v8;
  v9 = sub_2170089F4();
  v140 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v134 = &v92 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA00);
  v121 = v9;
  v11 = sub_2170089F4();
  v141 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v136 = &v92 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA08);
  v127 = v11;
  v13 = sub_2170089F4();
  v143 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v137 = &v92 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA10);
  v130 = v13;
  v15 = sub_2170089F4();
  v144 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v138 = &v92 - v16;
  v17 = type metadata accessor for PopoverBubbleTipRequestManager(255);
  WitnessTable = swift_getWitnessTable();
  v114 = WitnessTable;
  v19 = sub_2166D9530(&qword_280E2A7F0, &qword_27CABB9F8);
  v169 = WitnessTable;
  v170 = v19;
  v20 = MEMORY[0x277CDFAD8];
  v21 = swift_getWitnessTable();
  v119 = v21;
  v22 = sub_2166D9530(&qword_280E2A7D8, &qword_27CABBA00);
  v167 = v21;
  v168 = v22;
  v23 = swift_getWitnessTable();
  v125 = v23;
  v24 = sub_2166D9530(&qword_280E2A7E0, &qword_27CABBA08);
  v165 = v23;
  v166 = v24;
  v148 = v20;
  v25 = swift_getWitnessTable();
  v128 = v25;
  v26 = sub_2166D9530(&qword_280E2A7C0, &qword_27CABBA10);
  v163 = v25;
  v164 = v26;
  v27 = v15;
  v28 = swift_getWitnessTable();
  v29 = sub_2166B4B88(&qword_280E30968, type metadata accessor for PopoverBubbleTipRequestManager);
  v159 = v15;
  v160 = v17;
  v102 = v15;
  v96 = v17;
  v161 = v28;
  v162 = v29;
  v104 = v28;
  v103 = v29;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v133 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v124 = &v92 - v30;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA18);
  v31 = sub_2170089F4();
  v135 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v126 = &v92 - v32;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA20);
  v122 = v31;
  v33 = sub_2170089F4();
  v132 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v129 = &v92 - v34;
  v35 = type metadata accessor for ObjectGraph();
  v159 = v27;
  v160 = v17;
  v161 = v28;
  v162 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v112 = OpaqueTypeConformance2;
  v37 = sub_2166D9530(&qword_280E2A7E8, &qword_27CABBA18);
  v157 = OpaqueTypeConformance2;
  v158 = v37;
  v38 = swift_getWitnessTable();
  v120 = v38;
  v39 = sub_2166D9530(&qword_280E2A7A8, &qword_27CABBA20);
  v155 = v38;
  v156 = v39;
  v40 = swift_getWitnessTable();
  v159 = v33;
  v160 = v35;
  v94 = v33;
  v161 = v40;
  v41 = v40;
  v95 = v40;
  v111 = swift_getOpaqueTypeMetadata2();
  v123 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v110 = &v92 - v42;
  v115 = type metadata accessor for CatalogPagePresenter();
  type metadata accessor for ViewAppearanceLifecycleModifier();
  v43 = sub_2170089F4();
  v118 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v105 = &v92 - v44;
  v159 = v33;
  v160 = v35;
  v161 = v41;
  v45 = swift_getOpaqueTypeConformance2();
  v97 = v45;
  v46 = swift_getWitnessTable();
  v153 = v45;
  v154 = v46;
  v101 = v43;
  v100 = swift_getWitnessTable();
  v159 = v43;
  v160 = v100;
  v108 = MEMORY[0x277D7EE20];
  v99 = swift_getOpaqueTypeMetadata2();
  v109 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v92 = &v92 - v47;
  type metadata accessor for PageRenderMetricsViewModifier();
  v106 = sub_2170089F4();
  v113 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v93 = &v92 - v48;
  v49 = sub_2170089F4();
  v116 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v98 = &v92 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v107 = &v92 - v52;
  type metadata accessor for MusicEntityAnnotationWrapper();
  swift_checkMetadataState();
  v53 = v139;
  sub_21700E094();
  sub_2166B4B88(&qword_280E46810, type metadata accessor for MusicEntityAnnotationWrapper);
  v54 = v134;
  sub_21700A654();

  type metadata accessor for PlaybackPresenter();
  sub_21700E094();
  sub_2166B4B88(&qword_280E3FDB0, type metadata accessor for PlaybackPresenter);
  v55 = v136;
  v56 = v121;
  sub_21700A654();

  (*(v140 + 8))(v54, v56);
  _s18HighlightsProviderCMa();
  sub_21700E094();
  v57 = v159;
  sub_2166B4B88(&qword_280E43A00, _s18HighlightsProviderCMa);
  v58 = v137;
  v59 = v127;
  sub_21700A654();

  (*(v141 + 8))(v55, v59);
  swift_getKeyPath();
  v60 = v145;

  v61 = v146;
  sub_216A3FFDC();
  v62 = v138;
  v63 = v130;
  sub_21700A3D4();

  sub_2166997CC(v61, &qword_27CAB7930);
  (*(v143 + 8))(v58, v63);
  swift_checkMetadataState();
  sub_21700E094();
  v64 = v124;
  v65 = v102;
  sub_21700A3C4();

  (*(v144 + 8))(v62, v65);
  sub_216A403DC();
  type metadata accessor for MenuBuilder();
  sub_2166B4B88(qword_280E45220, type metadata accessor for MenuBuilder);
  v66 = v126;
  v67 = OpaqueTypeMetadata2;
  sub_21700A654();

  (*(v133 + 8))(v64, v67);
  sub_216A40464(v53);
  type metadata accessor for AddToPlaylistMenuBuilder();
  sub_2166B4B88(&qword_280E36F00, type metadata accessor for AddToPlaylistMenuBuilder);
  v68 = v129;
  v69 = v122;
  sub_21700A654();

  (*(v135 + 8))(v66, v69);
  v70 = v110;
  v71 = v94;
  sub_21700A1E4();
  (*(v132 + 8))(v68, v71);
  v159 = v60;
  v72 = v105;
  v73 = v111;
  sub_2167C9688(&v159, v111, v115, v97);
  (*(v123 + 8))(v70, v73);
  v74 = *(*v60 + 120);
  v75 = v60;

  v76 = v92;
  v77 = v101;
  v78 = v100;
  sub_21700A214();

  (*(v118 + 8))(v72, v77);
  v79 = *&v75[v74];

  v159 = v77;
  v160 = v78;
  v80 = swift_getOpaqueTypeConformance2();
  v81 = v93;
  v82 = v99;
  sub_216A0A894(v79, v99, v80);

  (*(v109 + 8))(v76, v82);
  v83 = sub_2166B4B88(&qword_280E314E0, type metadata accessor for PageRenderMetricsViewModifier);
  v151 = v80;
  v152 = v83;
  v84 = v106;
  v85 = swift_getWitnessTable();
  v86 = v98;
  sub_216BE820C(v84, v85);
  (*(v113 + 8))(v81, v84);
  v87 = sub_2168E341C();
  v149 = v85;
  v150 = v87;
  v88 = swift_getWitnessTable();
  v89 = v107;
  sub_2166C24DC(v86, v49, v88);
  v90 = *(v116 + 8);
  v90(v86, v49);
  sub_2166C24DC(v89, v49, v88);
  return (v90)(v89, v49);
}

uint64_t sub_2168E15BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7930);
  OUTLINED_FUNCTION_36(v1);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_67_0();
  OUTLINED_FUNCTION_49_11();
  sub_2168282D4(v3, v4, v5);
  return sub_216B51EF4(v0);
}

uint64_t sub_2168E168C()
{
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8();

  return sub_217008684();
}

void sub_2168E172C()
{
  OUTLINED_FUNCTION_49();
  v149 = v0;
  v3 = v2;
  v141 = v4;
  v147 = v5;
  OUTLINED_FUNCTION_16();
  v145 = v6;
  v146 = *(v7 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_70(&v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v142 = sub_217006624();
  OUTLINED_FUNCTION_1();
  v140 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_70(&v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  OUTLINED_FUNCTION_1_50();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  v13 = sub_2170097A4();
  OUTLINED_FUNCTION_7_31();
  WitnessTable = swift_getWitnessTable();
  v152 = v13;
  v153 = WitnessTable;
  v116 = v13;
  v15 = WitnessTable;
  v117 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v130 = sub_2170064D4();
  OUTLINED_FUNCTION_1();
  v133 = v17;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v19);
  v119 = sub_21700D194();
  OUTLINED_FUNCTION_1();
  v118 = v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_21700D8E4();
  OUTLINED_FUNCTION_1();
  v120 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_77();
  v28 = v26 - v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_70(&v108 - v30);
  OUTLINED_FUNCTION_16();
  v123 = v31;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_67_0();
  v152 = v13;
  v153 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v152 = OpaqueTypeMetadata2;
  v153 = OpaqueTypeConformance2;
  v34 = OpaqueTypeConformance2;
  v110 = OpaqueTypeConformance2;
  v122 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_16();
  v124 = v35;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v37);
  type metadata accessor for PageNavigationModifier();
  OUTLINED_FUNCTION_72_0();
  v38 = sub_2170089F4();
  v128 = v38;
  OUTLINED_FUNCTION_16();
  v138 = v39;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_105();
  v148 = v41;
  v152 = OpaqueTypeMetadata2;
  v153 = v34;
  v42 = swift_getOpaqueTypeConformance2();
  v113 = v42;
  OUTLINED_FUNCTION_27_17();
  v45 = sub_2166B4B88(v43, v44);
  v157 = v42;
  v158 = v45;
  v143 = MEMORY[0x277CDFAD8];
  v127 = swift_getWitnessTable();
  v152 = v38;
  v153 = v127;
  v134 = MEMORY[0x277D7EF20];
  v131 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_16();
  v136 = v46;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v48);
  v135 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v137 = v49;
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_77();
  v129 = v51 - v52;
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_70(&v108 - v54);
  v109 = v3;
  v55 = *(v3 + 36);
  v56 = *(v3 + 16);
  v112 = *(v3 + 24);
  v111 = v56;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v108 = v55;
  sub_21700E324();
  sub_21700D8A4();
  OUTLINED_FUNCTION_67();
  v59(v23, v119);
  v60 = *((*(AssociatedConformanceWitness + 56))(AssociatedTypeWitness, AssociatedConformanceWitness) + 16);

  v154 = MEMORY[0x277D83B88];
  v152 = v60;
  v61 = v114;
  sub_21700D8C4();
  v62 = *(v120 + 8);
  v63 = v28;
  v64 = v121;
  v62(v63, v121);
  sub_2166997CC(&v152, &unk_27CABF7A0);
  swift_checkMetadataState();
  sub_21700A204();
  v62(v61, v64);
  v65 = v126;
  sub_21700A2A4();
  OUTLINED_FUNCTION_67();
  v66(v1, OpaqueTypeMetadata2);
  v67 = v140;
  v68 = v139;
  v69 = v142;
  (*(v140 + 104))(v139, *MEMORY[0x277D26AB0], v142);
  v70 = v115;
  v71 = v130;
  sub_217006494();
  (*(v67 + 8))(v68, v69);
  OUTLINED_FUNCTION_67();
  v72(v65, v71);
  v73 = v149;
  v74 = (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v75 = v109;
  v76 = v73 + *(v109 + 48);
  v77 = *(v76 + 16);
  v159[0] = *v76;
  v159[1] = v77;
  v160 = *(v76 + 32);
  v78 = v122;
  sub_216EB110C(v74, v159, *(v73 + *(v109 + 40)), v122, v113);

  OUTLINED_FUNCTION_67();
  v79(v70, v78);
  v152 = 0;
  v153 = 0xE000000000000000;
  sub_21700F3B4();

  v155 = 0xD000000000000010;
  v156 = 0x8000000217083E30;
  v80 = sub_2168E1708();
  v81 = *(*v80 + 152);
  swift_beginAccess();
  v82 = v112;
  v83 = v111;
  v84 = type metadata accessor for AnyProtoRequestConvertibleIntent();
  v85 = *(v84 - 8);
  (*(v85 + 16))(&v152, v80 + v81, v84);

  v86 = sub_2169426B4();
  v88 = v87;
  (*(v85 + 8))(&v152, v84);
  MEMORY[0x21CE9F490](v86, v88);

  MEMORY[0x21CE9F490](41, 0xE100000000000000);
  v89 = v125;
  v90 = v128;
  v91 = v127;
  v92 = v148;
  sub_21700A274();

  OUTLINED_FUNCTION_67();
  v93(v92, v90);
  v94 = v145;
  v95 = v144;
  (*(v145 + 16))(v144, v149, v75);
  v96 = (*(v94 + 80) + 32) & ~*(v94 + 80);
  v97 = swift_allocObject();
  *(v97 + 16) = v83;
  *(v97 + 24) = v82;
  (*(v94 + 32))(v97 + v96, v95, v75);
  v152 = v90;
  v153 = v91;
  v98 = swift_getOpaqueTypeConformance2();
  v99 = v131;
  sub_21700AAF4();

  OUTLINED_FUNCTION_67();
  v100(v89, v99);
  v150 = v98;
  v151 = MEMORY[0x277CE0790];
  v101 = v135;
  v102 = swift_getWitnessTable();
  v103 = v132;
  v104 = OUTLINED_FUNCTION_53_0();
  sub_2166C24DC(v104, v105, v102);
  v106 = *(v137 + 8);
  v107 = OUTLINED_FUNCTION_53_0();
  v106(v107);
  sub_2166C24DC(v103, v101, v102);
  (v106)(v103, v101);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_2168E23D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8);
  MEMORY[0x28223BE20](v6 - 8);
  v38 = &v29 - v7;
  v41 = sub_21700DFD4();
  v37 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PageViewContentViewModifier();
  v10 = *(v9 - 8);
  v39 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v36 = &v29 - v11;
  if (qword_280E29CB0 != -1)
  {
    swift_once();
  }

  v12 = qword_280E29CB8;
  v13 = sub_2168E1708();
  v14 = *(*v13 + 152);
  swift_beginAccess();
  v15 = type metadata accessor for AnyProtoRequestConvertibleIntent();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v42, v13 + v14, v15);

  v17 = v12;
  v18 = a2;
  v31 = a3;
  v32 = a2;
  v19 = a3;
  sub_2168E294C(v17);
  (*(v16 + 8))(v42, v15);
  v34 = objc_opt_self();
  v33 = [v34 sharedApplication];
  v35 = *(v10 + 16);
  v20 = v36;
  v35(v36, a1, v9);
  v21 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v18;
  *(v22 + 24) = v19;
  v30 = *(v10 + 32);
  v30(v22 + v21, v20, v9);
  sub_2168E2D4C(sub_2168E3488, v22);

  v33 = *(a1 + *(v9 + 40));
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  v34 = [v34 sharedApplication];
  v35(v20, a1, v9);
  v23 = swift_allocObject();
  v24 = v31;
  *(v23 + 16) = v32;
  *(v23 + 24) = v24;
  v30(v23 + v21, v20, v9);
  v25 = v40;
  sub_2168E2E88();

  sub_2169FCF54(v33);
  strcpy(v42, "appLevelSheet");
  v42[7] = -4864;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v26 = v38;
  sub_21700E324();
  v27 = sub_21700D194();
  __swift_storeEnumTagSinglePayload(v26, 0, 1, v27);
  sub_2169FD04C();
  sub_2166997CC(v26, &qword_27CAB8DF8);

  return (*(v37 + 8))(v25, v41);
}

void sub_2168E294C(uint64_t a1)
{
  v2 = [objc_opt_self() defaultCenter];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013DA0;
  v4 = MEMORY[0x277D837D0];
  sub_21700F364();
  type metadata accessor for AnyProtoRequestConvertibleIntent();
  v5 = sub_2169426B4();
  *(inited + 96) = v4;
  *(inited + 72) = v5;
  *(inited + 80) = v6;
  sub_21700E384();
  v7 = sub_21700E344();

  [v2 postNotificationName:a1 object:0 userInfo:v7];
}

uint64_t sub_2168E2AB8(uint64_t a1)
{
  v2 = sub_2170090F4();
  v15 = *(v2 - 8);
  v16 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9310);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  v8 = sub_217009804();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PageViewContentViewModifier();
  sub_2168282D4(a1 + *(v12 + 56), v7, &qword_27CAB9310);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_21700ED94();
    v13 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();

    (*(v15 + 8))(v4, v16);
  }

  sub_2170097F4();
  return (*(v9 + 8))(v11, v8);
}

void sub_2168E2D4C(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedApplication];
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v7[4] = sub_2166EFCD4;
  v7[5] = v5;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_2169F0990;
  v7[3] = &block_descriptor_29;
  v6 = _Block_copy(v7);

  [v4 _performBlockAfterCATransactionCommits_];
  _Block_release(v6);
}

void sub_2168E2E88()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v26 = v2;
  v27 = v3;
  v5 = v4;
  v25 = v6;
  v8 = v7;
  v9 = sub_21700DFD4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v14);
  v16 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v16, v8, v9, v15);
  v17 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v18 = (v13 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 23) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  (*(v11 + 32))(v20 + v17, v16, v9);
  v21 = (v20 + v18);
  *v21 = v25;
  v21[1] = v5;
  v22 = v27;
  *(v20 + v19) = v26;
  v23 = (v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v23 = v22;
  v23[1] = v1;
  sub_21700DF14();

  sub_2168E2D4C(sub_2168E3AE4, v20);

  OUTLINED_FUNCTION_26();
}

void sub_2168E3008()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  *v8 = v10;
  *(v8 + 1) = v11;
  v12 = type metadata accessor for PageViewContentViewModifier();
  v13 = v12[9];
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_34();
  (*(v14 + 32))(&v9[v13], v7);
  *&v9[v12[10]] = v5;
  v15 = &v9[v12[11]];
  *v15 = sub_2168E168C();
  v15[1] = v16;
  v17 = &v9[v12[12]];
  v18 = *(v3 + 16);
  *v17 = *v3;
  *(v17 + 1) = v18;
  *(v17 + 16) = *(v3 + 32);
  *&v9[v12[13]] = v1;
  v19 = v12[14];
  *&v9[v19] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9310);
  swift_storeEnumTagMultiPayload();
  v20 = &v9[v12[15]];
  type metadata accessor for MusicStackAuthority();
  OUTLINED_FUNCTION_19_22();
  sub_2166B4B88(v21, v22);
  *v20 = sub_217008CF4();
  v20[1] = v23;
  OUTLINED_FUNCTION_26();
}

unint64_t sub_2168E31E4()
{
  result = qword_280E2AC60;
  if (!qword_280E2AC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AC60);
  }

  return result;
}

uint64_t sub_2168E3238()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB9E8);
  __swift_allocate_value_buffer(v0, qword_280E2AC70);
  v1 = __swift_project_value_buffer(v0, qword_280E2AC70);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBA38);

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
}

uint64_t sub_2168E32C0@<X0>(uint64_t a1@<X8>)
{
  if (qword_280E2AC68 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB9E8);
  v3 = __swift_project_value_buffer(v2, qword_280E2AC70);
  return sub_2168282D4(v3, a1, &qword_27CABB9E8);
}

uint64_t sub_2168E3350()
{
  sub_2168E33C8();
  sub_217009104();
  return v1;
}

unint64_t sub_2168E33C8()
{
  result = qword_27CABB9F0;
  if (!qword_27CABB9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABB9F0);
  }

  return result;
}

unint64_t sub_2168E341C()
{
  result = qword_280E3D8B0;
  if (!qword_280E3D8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E3D8B0);
  }

  return result;
}

uint64_t sub_2168E34B8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = type metadata accessor for PageViewContentViewModifier();
  OUTLINED_FUNCTION_36(v4);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return a1(v6, v2, v3);
}

uint64_t sub_2168E354C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a5;
  v38 = a6;
  v34[1] = a1;
  v35 = a4;
  v40 = sub_21700B5A4();
  v43 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21700B5E4();
  v41 = *(v7 - 8);
  v42 = v7;
  MEMORY[0x28223BE20](v7);
  v36 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21700B594();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34[0] = sub_21700B604();
  v44 = *(v34[0] - 8);
  MEMORY[0x28223BE20](v34[0]);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v34 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBA28);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v34 - v20;
  v22 = sub_21700E4D4();
  sub_21700DF54();

  v45 = v35;
  sub_21700DFA4();
  (*(v19 + 8))(v21, v18);
  v23 = aBlock[0];
  sub_2166AF2EC();
  v35 = sub_21700EE84();
  sub_21700B5F4();
  *v12 = v23;
  (*(v10 + 104))(v12, *MEMORY[0x277D85188], v9);
  MEMORY[0x21CE9C440](v14, v12);
  (*(v10 + 8))(v12, v9);
  v24 = *(v44 + 8);
  v44 += 8;
  v25 = v34[0];
  v24(v14, v34[0]);
  v26 = swift_allocObject();
  v27 = v38;
  *(v26 + 16) = v37;
  *(v26 + 24) = v27;
  aBlock[4] = sub_2168E4C64;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2169F0990;
  aBlock[3] = &block_descriptor_5;
  v28 = _Block_copy(aBlock);

  v29 = v36;
  sub_21700B5C4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2166B4B88(&qword_280E2A480, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABC970);
  sub_2166D9530(&qword_280E29E50, &unk_27CABC970);
  v31 = v39;
  v30 = v40;
  sub_21700F214();
  v32 = v35;
  MEMORY[0x21CE9FC70](v17, v29, v31, v28);
  _Block_release(v28);

  (*(v43 + 8))(v31, v30);
  (*(v41 + 8))(v29, v42);
  return v24(v17, v25);
}

uint64_t sub_2168E3AE4()
{
  v1 = sub_21700DFD4();
  OUTLINED_FUNCTION_2(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v0 + v7);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v0 + v8);
  v13 = (v0 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];

  return sub_2168E354C(v0 + v6, v10, v11, v12, v14, v15);
}

uint64_t sub_2168E3BB4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = sub_2170080D4();
  v11 = *(v9 - 8);
  result = v9 - 8;
  v12 = v11;
  v13 = *(v11 + 64);
  if (v13 <= 8)
  {
    v14 = 8;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  v16 = *(v6 + 64) + 7;
  if (v8 >= a2)
  {
LABEL_29:
    v25 = (a1 + v15 + 17) & ~v15;
    if (v7 < 0x7FFFFFFF)
    {
      v26 = *((((v16 + v25) & 0xFFFFFFFFFFFFFFF8) + 41) & 0xFFFFFFFFFFFFFFF8);
      if (v26 >= 0xFFFFFFFF)
      {
        LODWORD(v26) = -1;
      }

      return (v26 + 1);
    }

    else
    {

      return __swift_getEnumTagSinglePayload(v25, v7, v5);
    }
  }

  else
  {
    v17 = *(v12 + 80) & 0xF8 | 7;
    v18 = ((v14 + ((v17 + ((((((((((((((((((((v16 + ((v15 + 17) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 41) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v17) + 48) & 0xFFFFFFFFFFFFFFF8) + 16;
    v19 = v18 & 0xFFFFFFF8;
    if ((v18 & 0xFFFFFFF8) != 0)
    {
      v20 = 2;
    }

    else
    {
      v20 = a2 - v8 + 1;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    switch(v22)
    {
      case 1:
        v23 = *(a1 + v18);
        if (!v23)
        {
          goto LABEL_29;
        }

        goto LABEL_25;
      case 2:
        v23 = *(a1 + v18);
        if (!v23)
        {
          goto LABEL_29;
        }

        goto LABEL_25;
      case 3:
        __break(1u);
        return result;
      case 4:
        v23 = *(a1 + v18);
        if (!v23)
        {
          goto LABEL_29;
        }

LABEL_25:
        v24 = v23 - 1;
        if (v19)
        {
          v24 = 0;
          LODWORD(v19) = *a1;
        }

        result = v8 + (v19 | v24) + 1;
        break;
      default:
        goto LABEL_29;
    }
  }

  return result;
}

void sub_2168E3E38(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_2170080D4() - 8);
  if (*(v11 + 64) <= 8uLL)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 80);
  v14 = *(v8 + 64) + 7;
  v15 = *(v11 + 80) & 0xF8 | 7;
  v16 = ((v12 + ((v15 + ((((((((((((((((((((v14 + ((v13 + 17) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 41) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v15) + 48) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v10 >= a3)
  {
    v19 = 0;
  }

  else
  {
    if (((v12 + ((v15 + ((((((((((((((((((((v14 + ((v13 + 17) & ~v13)) & 0xFFFFFFF8) + 41) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 16) & ~v15) + 48) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v17 = a3 - v10 + 1;
    }

    else
    {
      v17 = 2;
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
  }

  if (a2 <= v10)
  {
    switch(v19)
    {
      case 1:
        *(a1 + v16) = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 2:
        *(a1 + v16) = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 3:
LABEL_46:
        __break(1u);
        break;
      case 4:
        *(a1 + v16) = 0;
        goto LABEL_34;
      default:
LABEL_34:
        if (a2)
        {
LABEL_35:
          v21 = (a1 + v13 + 17) & ~v13;
          if (v9 < 0x7FFFFFFF)
          {
            v22 = ((((v14 + v21) & 0xFFFFFFFFFFFFFFF8) + 41) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v23 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v23 = (a2 - 1);
            }

            *v22 = v23;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(v21, a2, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    if (v16)
    {
      v20 = 1;
    }

    else
    {
      v20 = a2 - v10;
    }

    if (v16)
    {
      bzero(a1, v16);
      *a1 = ~v10 + a2;
    }

    switch(v19)
    {
      case 1:
        *(a1 + v16) = v20;
        break;
      case 2:
        *(a1 + v16) = v20;
        break;
      case 3:
        goto LABEL_46;
      case 4:
        *(a1 + v16) = v20;
        break;
      default:
        return;
    }
  }
}

void sub_2168E4118(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2170080E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_2168E41B0()
{
  result = qword_280E2ABC0;
  if (!qword_280E2ABC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA40);
    sub_2168E426C();
    sub_2166B4B88(qword_280E32E70, type metadata accessor for SocialProfileEditorPageView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2ABC0);
  }

  return result;
}

unint64_t sub_2168E426C()
{
  result = qword_280E37690[0];
  if (!qword_280E37690[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E37690);
  }

  return result;
}

unint64_t sub_2168E42C0()
{
  result = qword_280E2A9B0;
  if (!qword_280E2A9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA48);
    sub_2168E434C();
    sub_2168E4438();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A9B0);
  }

  return result;
}

unint64_t sub_2168E434C()
{
  result = qword_280E2AB20;
  if (!qword_280E2AB20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA90);
    sub_2166B4B88(qword_280E2D888, type metadata accessor for SocialOnboardingProfileCreationPageView);
    sub_2166B4B88(&qword_280E2E520, type metadata accessor for SocialOnboardingFindFriendsPageView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AB20);
  }

  return result;
}

unint64_t sub_2168E4438()
{
  result = qword_280E2AB28;
  if (!qword_280E2AB28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA98);
    sub_2166B4B88(&qword_280E2D930, type metadata accessor for SocialOnboardingPrivacySettingsPageView);
    sub_2168E44F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AB28);
  }

  return result;
}

unint64_t sub_2168E44F4()
{
  result = qword_280E2D7D0[0];
  if (!qword_280E2D7D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E2D7D0);
  }

  return result;
}

unint64_t sub_2168E4548()
{
  result = qword_280E2AB30;
  if (!qword_280E2AB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA50);
    sub_2166B4B88(qword_280E2F4D0, type metadata accessor for UserNotificationSettingsPageView);
    sub_2166B4B88(qword_280E2E3F0, type metadata accessor for SocialProfileFollowRequestsPageView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AB30);
  }

  return result;
}

uint64_t sub_2168E4634(void (*a1)(char *, uint64_t))
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = type metadata accessor for PageView();
  OUTLINED_FUNCTION_36(v7);
  v9 = v1 + ((*(v8 + 80) + 48) & ~*(v8 + 80));

  return sub_2168DDBB4(a1, v9, v3, v4, v5, v6);
}

uint64_t sub_2168E47BC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_2168E486C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = v4[2];
  v10 = v4[3];
  v11 = v4[4];
  v12 = v4[5];
  v13 = OUTLINED_FUNCTION_56_9();
  OUTLINED_FUNCTION_2(v13);
  v15 = v14;
  v17 = v16;
  v18 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  return sub_2168DFBAC(a1, a2, a3, v4 + v18, *(v4 + ((*(v17 + 64) + v18 + 7) & 0xFFFFFFFFFFFFFFF8)), v9, v10, v11, a4, v12);
}

uint64_t sub_2168E4950()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2(AssociatedTypeWitness);
  v1 = type metadata accessor for PageView();
  OUTLINED_FUNCTION_36(v1);

  return sub_2168DFDE4();
}

void *sub_2168E4A7C@<X0>(void *a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_36(AssociatedTypeWitness);

  return sub_2168DF244(a1);
}

unint64_t sub_2168E4B4C()
{
  result = qword_280E34AB0[0];
  if (!qword_280E34AB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E34AB0);
  }

  return result;
}

uint64_t sub_2168E4BA0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_2168E4BFC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2168E4C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[5] = a4;
  v6[6] = v5;
  v6[3] = a2;
  v6[4] = a3;
  v6[2] = a1;
  v8 = sub_217007C24();
  v6[7] = v8;
  OUTLINED_FUNCTION_2(v8);
  v6[8] = v9;
  v6[9] = OUTLINED_FUNCTION_80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB08);
  v6[10] = OUTLINED_FUNCTION_80();
  v6[11] = *(a5 + 8);
  v6[12] = swift_getAssociatedTypeWitness();
  v6[13] = *(swift_getAssociatedConformanceWitness() + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[14] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_2(AssociatedTypeWitness);
  v6[15] = v11;
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = *(a5 + 16);
  v12 = swift_getAssociatedTypeWitness();
  v6[19] = v12;
  v13 = sub_21700F164();
  v6[20] = v13;
  OUTLINED_FUNCTION_2(v13);
  v6[21] = v14;
  v6[22] = OUTLINED_FUNCTION_80();
  v6[23] = *(v12 - 8);
  v6[24] = OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_2168E4EF0()
{
  if (*(v0[6] + 32) != 1)
  {
LABEL_4:
    v3 = swift_task_alloc();
    v0[27] = v3;
    *v3 = v0;
    v3[1] = sub_2168E5444;
    v4 = v0[11];
    v5 = v0[5];
    v6 = v0[3];
    v7 = v0[4];
    v8 = v0[2];

    return sub_2168E56AC(v8, v6, v7, v5, v4);
  }

  (*(v0[18] + 24))(v0[5]);
  v1 = v0[22];
  v2 = v0[19];
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    (*(v0[21] + 8))(v1, v0[20]);
    goto LABEL_4;
  }

  (*(v0[23] + 32))(v0[24], v1, v2);
  v10 = swift_task_alloc();
  v0[25] = v10;
  swift_getAssociatedConformanceWitness();
  *v10 = v0;
  v10[1] = sub_2168E5150;

  return sub_216C46518();
}

uint64_t sub_2168E5150()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v2 = *v1;
  OUTLINED_FUNCTION_28();
  *v3 = v2;
  *(v4 + 208) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2168E5250()
{
  if (qword_27CAB5BC8 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v17 = v0[24];
  v16 = v0[19];
  v2 = v0[16];
  v4 = v0[14];
  v3 = v0[15];
  v14 = v0[17];
  v15 = v0[13];
  v5 = v0[9];
  v6 = v0[10];
  v8 = v0[7];
  v7 = v0[8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB10);
  v10 = __swift_project_value_buffer(v9, qword_27CB22950);
  (*(v7 + 16))(v5, v10, v8);
  sub_216BD7934(v5, "InitializeViewModel", 19, 2, v6);
  v11 = swift_checkMetadataState();
  (*(v3 + 16))(v2, v14, v4);
  sub_216F76A38(v2, v11, v15);
  sub_216BD4F18();
  sub_2168E5D00(v6);
  (*(v3 + 8))(v14, v4);
  (*(v1 + 8))(v17, v16);
  OUTLINED_FUNCTION_8_28();

  OUTLINED_FUNCTION_3();

  return v12();
}

uint64_t sub_2168E5444()
{
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_2168E55F0()
{
  (*(v0[23] + 8))(v0[24], v0[19]);

  OUTLINED_FUNCTION_3();

  return v1();
}

uint64_t sub_2168E56AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_2168E56D4, 0, 0);
}

uint64_t sub_2168E56D4()
{
  if (sub_21669DAC4())
  {
    v1 = swift_task_alloc();
    v0[8] = v1;
    *v1 = v0;
    v1[1] = sub_2168E57D4;

    return sub_216A4F6C8();
  }

  else
  {
    v0[9] = *(v0[7] + 40);
    OUTLINED_FUNCTION_206();
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v11 = OUTLINED_FUNCTION_1_51(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);

    return v11();
  }
}

uint64_t sub_2168E57D4()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2168E58BC()
{
  v0[9] = *(v0[7] + 40);
  OUTLINED_FUNCTION_206();
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v9 = OUTLINED_FUNCTION_1_51(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12);

  return v9();
}

uint64_t sub_2168E5944(uint64_t a1)
{
  OUTLINED_FUNCTION_69_0();
  v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v5 + 88) = a1;

  if (v1)
  {
    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    v10 = swift_task_alloc();
    *(v5 + 96) = v10;
    *v10 = v6;
    v10[1] = sub_2168E5AE4;

    return sub_216E4E670();
  }
}

uint64_t sub_2168E5AE4()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v2 = *v1;
  OUTLINED_FUNCTION_28();
  *v3 = v2;
  *(v4 + 104) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2168E5BE4()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_2168E5C40()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_2168E5C9C()
{

  return v0;
}

uint64_t sub_2168E5CCC()
{
  sub_2168E5C9C();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_2168E5D00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2168E5DE0()
{
  OUTLINED_FUNCTION_49();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  OUTLINED_FUNCTION_35_14();
  sub_217006224();
  OUTLINED_FUNCTION_34();
  (*(v13 + 32))(v2, v1);
  OUTLINED_FUNCTION_33_1();
  v14 = type metadata accessor for InvalidationCoordinator.SectionInvalidationDescriptor();
  OUTLINED_FUNCTION_39_11(v14);
  v15 = (v2 + v4[10]);
  *v15 = v0;
  v15[1] = v12;
  v16 = v2 + v4[11];
  v17 = *(v10 + 16);
  *v16 = *v10;
  *(v16 + 16) = v17;
  *(v16 + 32) = *(v10 + 32);
  *(v2 + v4[12]) = v8;
  *(v2 + v4[13]) = v6;
  OUTLINED_FUNCTION_26();
}

uint64_t sub_2168E5EA0()
{
  OUTLINED_FUNCTION_49();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_35_14();
  sub_217006224();
  OUTLINED_FUNCTION_34();
  (*(v9 + 32))(v2, v1);
  OUTLINED_FUNCTION_34_15();
  v10 = type metadata accessor for InvalidationCoordinator.PageInvalidationDescriptor();
  OUTLINED_FUNCTION_39_11(v10);
  v11 = v2 + v4[10];
  v12 = *(v0 + 16);
  *v11 = *v0;
  *(v11 + 16) = v12;
  *(v11 + 32) = *(v0 + 32);
  *(v2 + v4[11]) = v8;
  *(v2 + v4[12]) = v6;
  OUTLINED_FUNCTION_26();

  return sub_2168CF09C(v13, v14);
}

uint64_t sub_2168E5F6C()
{
  sub_217006224();
  OUTLINED_FUNCTION_34();
  v0 = OUTLINED_FUNCTION_8();

  return v1(v0);
}

uint64_t sub_2168E5FC8()
{
  sub_2168E6034();

  return v0;
}

uint64_t sub_2168E6034()
{
  sub_2168E7460();
  swift_beginAccess();
  v11 = v0;
  type metadata accessor for InvalidationCoordinator.SectionInvalidationEventDescriptor();
  type metadata accessor for AnyInvalidationObserver();
  sub_21700E984();
  v1 = sub_21700E3B4();
  result = swift_endAccess();
  v3 = 0;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

      swift_getTupleTypeMetadata2();
      sub_21700E894();
      v10 = sub_21700E384();
      swift_beginAccess();
      *(v11 + 88) = v10;
    }

    v6 = *(v1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      do
      {
LABEL_8:
        sub_21700DF14();
        v12 = sub_21700E834();
        while (v12 != sub_21700E8D4())
        {
          v9 = sub_21700E8B4();
          sub_21700E864();
          if (v9)
          {
          }

          else
          {
            sub_21700F3F4();
          }

          sub_21700E974();
          sub_216B13138();
        }

        v6 &= v6 - 1;
      }

      while (v6);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2168E62C8()
{
  sub_2168E5FC8();

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

uint64_t sub_2168E6314()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2168E6358(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2168E6398(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2168E6404()
{
  result = type metadata accessor for InvalidationCoordinator.PageInvalidationDescriptor();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for InvalidationCoordinator.SectionInvalidationDescriptor();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_2168E64DC()
{
  sub_217006224();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MusicEvent(319);
    if (v1 <= 0x3F)
    {
      sub_2168E65F0();
      if (v2 <= 0x3F)
      {
        sub_21668A338(319, &qword_280E29E28, &qword_27CAB74F8);
        if (v3 <= 0x3F)
        {
          sub_2168E6684();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2168E65F0()
{
  if (!qword_280E2FA80)
  {
    type metadata accessor for SectionChangeInstruction(255);
    sub_2168EB41C(&qword_280E360D8, type metadata accessor for SectionChangeInstruction);
    v0 = type metadata accessor for AnyProtoRequestConvertibleIntent();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2FA80);
    }
  }
}

void sub_2168E6684()
{
  if (!qword_280E3D8A0)
  {
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, &qword_280E3D8A0);
    }
  }
}

void sub_2168E66D4()
{
  sub_217006224();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MusicEvent(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for PageChangeInstruction();
      swift_getWitnessTable();
      type metadata accessor for AnyProtoRequestConvertibleIntent();
      if (v2 <= 0x3F)
      {
        type metadata accessor for PageEventTrigger.InvalidationStrategy();
        if (v3 <= 0x3F)
        {
          sub_21668A338(319, &qword_280E29F18, &qword_27CABBB20);
          if (v4 <= 0x3F)
          {
            sub_2168E6844();
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

void sub_2168E6844()
{
  if (!qword_280E4A4F0)
  {
    sub_2170061E4();
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, &qword_280E4A4F0);
    }
  }
}

void sub_2168E689C()
{
  OUTLINED_FUNCTION_49();
  v1 = *v0;
  v2 = _s7SectionVMa(0);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v8 = v7 - v6;
  sub_2168E6034();
  sub_2168E6A88(0, 0);
  v9 = *(v1 + 88);
  v10 = *(v1 + 80);
  v11 = (*(v9 + 40))(v10, v9);
  if (v11 != 1)
  {
    v12 = v11;
    sub_2168E6C28(v11);
    sub_216783AAC(v12);
  }

  v13 = (*(*(v9 + 16) + 32))(v10);
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v16 = *(v4 + 72);
    do
    {
      sub_2168EB464(v15, v8, _s7SectionVMa);
      v17 = *(v8 + *(v2 + 56));
      if (v17 != 1)
      {
        sub_2168E6C7C(v17);
      }

      sub_2168EB4C0(v8, _s7SectionVMa);
      v15 += v16;
      --v14;
    }

    while (v14);

    OUTLINED_FUNCTION_26();
  }

  else
  {
    OUTLINED_FUNCTION_26();
  }
}

uint64_t sub_2168E6A88(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = swift_allocObject();
  v7[2] = *(v6 + 80);
  v7[3] = *(v6 + 88);
  v7[4] = a1;
  v7[5] = a2;
  OUTLINED_FUNCTION_120_0();
  sub_2168EAE00(a1, a2);
  OUTLINED_FUNCTION_22_13();
  type metadata accessor for InvalidationCoordinator.DeferredUpdate();
  OUTLINED_FUNCTION_32();
  sub_21700E984();

  OUTLINED_FUNCTION_7_32();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_33();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9_32();
  sub_21700ED04();
  swift_endAccess();

  OUTLINED_FUNCTION_120_0();

  OUTLINED_FUNCTION_9_32();
  sub_21700ED04();
  swift_endAccess();

  OUTLINED_FUNCTION_120_0();

  OUTLINED_FUNCTION_9_32();
  sub_21700ED04();
  swift_endAccess();
}

void sub_2168E6C28(uint64_t a1)
{
  sub_2168E7460();
  sub_2168E6A88(0, 1uLL);
  if (a1)
  {

    sub_2168E761C();
  }
}

void sub_2168E6C7C(uint64_t a1)
{
  if (a1)
  {
    sub_2168E6F74();
  }
}

void sub_2168E6C88(uint64_t a1)
{
  OUTLINED_FUNCTION_116();
  sub_2168E6D04();
  v2 = OUTLINED_FUNCTION_116();
  sub_2168E6A88(v2, v3);
  v4 = *(a1 + *(_s7SectionVMa(0) + 56));
  if (v4 != 1)
  {

    sub_2168E6C7C(v4);
  }
}

uint64_t sub_2168E6D04()
{
  swift_beginAccess();
  type metadata accessor for InvalidationCoordinator.SectionInvalidationEventDescriptor();
  type metadata accessor for AnyInvalidationObserver();
  sub_21700E984();
  sub_21700DF14();
  sub_21700E404();

  if (v3)
  {
    swift_endAccess();
    sub_21700DF14();
    v0 = sub_21700E834();

    while (v0 != sub_21700E8D4())
    {
      v2 = sub_21700E8B4();
      sub_21700E864();
      if (v2)
      {
      }

      else
      {
        sub_21700F3F4();
      }

      sub_21700E974();
      sub_216B13138();
    }

    swift_beginAccess();
    sub_21700E3F4();
    sub_21700DF14();
    sub_21700E414();
  }

  return swift_endAccess();
}

uint64_t sub_2168E6F2C(uint64_t a1, unint64_t a2)
{
  sub_2168E6D04();

  return sub_2168E6A88(a1, a2);
}

void sub_2168E6F74()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *v1;
  v9 = type metadata accessor for MusicEvent(0);
  v39 = *(v9 - 8);
  v10 = *(v39 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - v13;
  swift_beginAccess();
  v60 = v5;
  v61 = v3;
  v15 = *(v8 + 88);
  v47 = *(v8 + 80);
  v46 = v15;
  v48 = type metadata accessor for InvalidationCoordinator.SectionInvalidationEventDescriptor();
  type metadata accessor for AnyInvalidationObserver();
  v16 = sub_21700E984();
  sub_21700DF14();
  sub_21700E404();

  v17 = *&v54[0];
  swift_endAccess();
  if (!v17)
  {
    v17 = sub_21700E894();
  }

  v62 = v17;
  v18 = *(v7 + 16);
  if (v18)
  {
    v45 = v10;
    v19 = 0;
    v20 = v7 + 32;
    v43 = v48 - 8;
    v44 = v16;
    v38 = v18;
    v37 = v7 + 32;
    v42 = v5;
    do
    {
      sub_2168EB174(v20 + (v19 << 6), &v60);
      if (v60)
      {
        v21 = *(v60 + 16);
        if (v21)
        {
          v41 = v19;
          v52 = v1[5];
          v22 = v21;
          OUTLINED_FUNCTION_25_16();
          v50 = v23;
          v51 = v24;
          v49 = (v24 + 48) & ~v24;
          v40 = v25;
          sub_21700DF14();
          do
          {
            v53 = v22;
            OUTLINED_FUNCTION_0_63();
            sub_2168EB464(v20, v14, v26);
            sub_2168EB174(&v60, v54);
            v56[0] = v54[0];
            v56[1] = v54[1];
            *v57 = *v55;
            *&v57[9] = *&v55[9];
            v58 = v5;
            v59 = v3;
            sub_21700DF14();
            v27 = sub_2168CE82C(v56, v52);
            OUTLINED_FUNCTION_143();
            v28 = v11;
            v29 = swift_allocObject();
            swift_weakInit();
            OUTLINED_FUNCTION_143();
            v30 = v14;
            v31 = swift_allocObject();
            swift_weakInit();
            sub_2168EB090(v30, v28);
            v32 = v49;
            v33 = swift_allocObject();
            v34 = v46;
            v33[2] = v47;
            v33[3] = v34;
            v33[4] = v29;
            v33[5] = v31;
            v11 = v28;
            v14 = v30;
            v35 = v53;
            sub_2168EB090(v28, v33 + v32);
            sub_216B130F8();
            v5 = v42;

            *&v54[0] = v27;
            sub_21700E8F4();
            (*(*(v48 - 8) + 8))(v56, v48);
            v20 += v50;
            v22 = v35 - 1;
          }

          while (v22);

          v18 = v38;
          v19 = v41;
          v20 = v37;
        }
      }

      ++v19;
      sub_2168EB1D0(&v60);
    }

    while (v19 != v18);
    v17 = v62;
  }

  *&v54[0] = v17;
  v60 = v5;
  v61 = v3;
  OUTLINED_FUNCTION_120_0();
  sub_21700E3F4();
  sub_21700DF14();
  sub_21700E414();
  swift_endAccess();
  OUTLINED_FUNCTION_26();
}

uint64_t sub_2168E7460()
{
  result = swift_beginAccess();
  if (*(v0 + 80))
  {
    type metadata accessor for MusicEvent(0);
    type metadata accessor for PageEventTrigger();
    type metadata accessor for AnyInvalidationObserver();
    sub_2168EB41C(&qword_280E46330, type metadata accessor for MusicEvent);
    sub_21700DF14();
    v2 = sub_21700E3B4();

    v3 = 0;
    v4 = 1 << *(v2 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(v2 + 64);
    v7 = (v4 + 63) >> 6;
    if (v6)
    {
      goto LABEL_10;
    }

    while (1)
    {
      v8 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v8 >= v7)
      {

        *(v0 + 80) = 0;
      }

      v6 = *(v2 + 64 + 8 * v8);
      ++v3;
      if (v6)
      {
        v3 = v8;
        do
        {
LABEL_10:
          v6 &= v6 - 1;

          sub_216B13138();
        }

        while (v6);
        continue;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_2168E761C()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = v2;
  v4 = *v0;
  v5 = type metadata accessor for MusicEvent(0);
  OUTLINED_FUNCTION_1();
  v46[1] = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  v60 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v46 - v11;
  v13 = v4;
  v14 = *(v4 + 80);
  v15 = *(v13 + 88);
  v16 = type metadata accessor for PageEventTrigger();
  v17 = type metadata accessor for AnyInvalidationObserver();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_32();
  sub_21700E894();
  v52 = sub_2168EB41C(&qword_280E46330, type metadata accessor for MusicEvent);
  v53 = v17;
  v18 = sub_21700E384();
  v64 = v18;
  OUTLINED_FUNCTION_104_0();
  v19 = sub_21700E834();
  v63 = v19;
  OUTLINED_FUNCTION_104_0();
  if (v19 == sub_21700E8D4())
  {
LABEL_13:
    swift_beginAccess();
    v1[10] = v18;

    OUTLINED_FUNCTION_26();
  }

  else
  {
    v51 = v14;
    v47 = v3 + 32;
    v46[3] = v16 - 8;
    v46[0] = v3;
    v50 = v8;
    v49 = v15;
    v58 = v16;
    while (1)
    {
      OUTLINED_FUNCTION_104_0();
      v20 = sub_21700E8B4();
      sub_21700E864();
      if ((v20 & 1) == 0)
      {
        break;
      }

      v21 = v47 + (v19 << 6);
      sub_21700E974();
      v22 = *(v16 - 8);
      (*(v22 + 16))(v62, v21, v16);
      if (v62[0])
      {
        v48 = v22;
        v23 = v16;
        v24 = *(v62[0] + 16);
        if (v24)
        {
          v57 = v1[5];
          OUTLINED_FUNCTION_25_16();
          v55 = v25;
          v56 = v26;
          v54 = (v26 + 48) & ~v26;
          v46[2] = v27;
          sub_21700DF14();
          do
          {
            v59 = type metadata accessor for MusicEvent;
            sub_2168EB464(v3, v12, type metadata accessor for MusicEvent);
            v28 = sub_2168CE82C(v62, v57);
            OUTLINED_FUNCTION_143();
            v29 = swift_allocObject();
            swift_weakInit();
            OUTLINED_FUNCTION_143();
            v30 = v5;
            v31 = v1;
            v32 = swift_allocObject();
            swift_weakInit();
            v33 = OUTLINED_FUNCTION_30_17();
            sub_2168EB464(v33, v34, type metadata accessor for MusicEvent);
            v35 = v24;
            v36 = v12;
            v37 = v54;
            v38 = swift_allocObject();
            v39 = v49;
            v38[2] = v51;
            v38[3] = v39;
            v38[4] = v29;
            v38[5] = v32;
            v1 = v31;
            v5 = v30;
            v40 = v38 + v37;
            v12 = v36;
            v41 = v35;
            sub_2168EB090(v60, v40);

            sub_216B130F8();

            v42 = OUTLINED_FUNCTION_30_17();
            v43 = v59;
            sub_2168EB464(v42, v44, v59);
            v61 = v28;
            sub_21700E3F4();
            sub_21700E414();

            sub_2168EB4C0(v12, v43);
            v3 += v55;
            v24 = v41 - 1;
          }

          while (v24);

          v16 = v58;
          (*(v48 + 8))(v62, v58);
          v3 = v46[0];
        }

        else
        {
          v16 = v23;
          (*(v48 + 8))(v62, v23);
        }
      }

      else
      {
        (*(v22 + 8))(v62, v16);
      }

      OUTLINED_FUNCTION_104_0();
      v45 = sub_21700E8D4();
      v19 = v63;
      if (v63 == v45)
      {
        v18 = v64;
        goto LABEL_13;
      }
    }

    sub_21700F3F4();
    __break(1u);
  }
}

uint64_t sub_2168E7B50(unsigned int a1)
{
  v3 = type metadata accessor for InvalidationCoordinator.SectionInvalidationDescriptor();
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - v4;
  v6 = type metadata accessor for InvalidationCoordinator.PageInvalidationDescriptor();
  v20 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = type metadata accessor for InvalidationCoordinator.DeferredUpdate();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v20 - v14;
  v23 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      swift_beginAccess();
      v24 = v1[8];
      sub_21700E984();
      swift_getWitnessTable();
      result = sub_21700ECD4();
      if (result)
      {
        return result;
      }
    }

    else
    {
      swift_beginAccess();
      v24 = v1[9];
      sub_21700E984();
      swift_getWitnessTable();
      result = sub_21700ECD4();
      if (result)
      {
        return result;
      }
    }
  }

  else
  {
    swift_beginAccess();
    v24 = v1[7];
    sub_21700E984();
    swift_getWitnessTable();
    result = sub_21700ECD4();
    if (result)
    {
      return result;
    }
  }

  swift_beginAccess();
  swift_getWitnessTable();
  sub_21700ECF4();
  swift_endAccess();
  sub_2168EAA00();
  (*(v10 + 16))(v12, v15, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = v21;
    v17 = v22;
    (*(v21 + 32))(v5, v12, v22);
    sub_2168E9D6C();
    (*(v18 + 8))(v5, v17);
  }

  else
  {
    v19 = v20;
    (*(v20 + 32))(v8, v12, v6);
    sub_2168EA15C();
    (*(v19 + 8))(v8, v6);
  }

  sub_2168E7B50(v23);
  return (*(v10 + 8))(v15, v9);
}

uint64_t sub_2168E804C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for InvalidationCoordinator.SectionInvalidationDescriptor();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - v8;
  v10 = type metadata accessor for InvalidationCoordinator.PageInvalidationDescriptor();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - v12;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v3, a1, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 32))(v9, v17, v6);
    v19 = sub_217006224();
    (*(*(v19 - 8) + 16))(a2, v9, v19);
    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    (*(v11 + 32))(v13, v17, v10);
    v21 = sub_217006224();
    (*(*(v21 - 8) + 16))(a2, v13, v21);
    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_2168E831C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v26 = a2;
  v3 = type metadata accessor for InvalidationCoordinator.SectionInvalidationDescriptor();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - v5;
  v7 = type metadata accessor for InvalidationCoordinator.PageInvalidationDescriptor();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v25, a1, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 32))(v6, v14, v3);
    v16 = *(v3 + 44);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB28);
    v18 = v26;
    v26[3] = v17;
    v18[4] = sub_2168EB02C();
    v19 = swift_allocObject();
    *v18 = v19;
    sub_2168282D4(&v6[v16], v19 + 16, &qword_27CABBB28);
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    (*(v8 + 32))(v10, v14, v7);
    v21 = *(v7 + 40);
    type metadata accessor for PageChangeInstruction();
    swift_getWitnessTable();
    v22 = type metadata accessor for AnyProtoRequestConvertibleIntent();
    v23 = v26;
    v26[3] = v22;
    v23[4] = swift_getWitnessTable();
    v24 = swift_allocObject();
    *v23 = v24;
    (*(*(v22 - 8) + 16))(v24 + 16, &v10[v21], v22);
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_2168E8694(uint64_t a1)
{
  v3 = type metadata accessor for MusicEvent(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (!*(v1 + 80))
  {
    return swift_endAccess();
  }

  type metadata accessor for PageEventTrigger();
  type metadata accessor for AnyInvalidationObserver();
  sub_2168EB41C(&qword_280E46330, type metadata accessor for MusicEvent);
  sub_21700E404();
  v6 = v8;
  result = swift_endAccess();
  if (v6)
  {
    sub_216B13138();
    swift_beginAccess();
    if (*(v1 + 80))
    {
      sub_2168EB464(a1, v5, type metadata accessor for MusicEvent);
      v8 = 0;
      sub_21700E3F4();
      sub_21700E414();
    }

    swift_endAccess();
  }

  return result;
}

uint64_t sub_2168E8874()
{
  sub_216B13138();
  swift_beginAccess();
  type metadata accessor for InvalidationCoordinator.SectionInvalidationEventDescriptor();
  type metadata accessor for AnyInvalidationObserver();
  OUTLINED_FUNCTION_32();
  sub_21700E984();
  sub_21700DF14();
  sub_21700E404();

  if (v1)
  {
    swift_endAccess();
    sub_21700DF14();
    swift_getWitnessTable();
    sub_21700ECB4();

    if (v2)
    {
    }

    sub_21700E904();

    OUTLINED_FUNCTION_120_0();
    sub_21700E3F4();
    sub_21700DF14();
    sub_21700E414();
  }

  return swift_endAccess();
}

uint64_t sub_2168E8A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      sub_2168E8B10(a4, a1, Strong);
    }
  }

  return result;
}

uint64_t sub_2168E8B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a3;
  v17 = a1;
  v5 = *v3;
  v6 = type metadata accessor for MusicEvent(0);
  MEMORY[0x28223BE20](v6 - 8);
  v14 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_217006224();
  MEMORY[0x28223BE20](v8 - 8);
  v15 = *(v5 + 80);
  v13[2] = *(v5 + 88);
  v18 = type metadata accessor for InvalidationCoordinator.SectionInvalidationDescriptor();
  v9 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v11 = v13 - v10;
  v13[1] = *(a2 + 64);
  type metadata accessor for SectionChangeInstruction(0);
  sub_2168EB41C(&qword_280E360E0, type metadata accessor for SectionChangeInstruction);
  sub_2168EB41C(&qword_280E360D8, type metadata accessor for SectionChangeInstruction);
  sub_21700DF14();
  sub_216B13178();
  sub_217006214();
  sub_2168EB464(v17, v14, type metadata accessor for MusicEvent);
  sub_2168282D4(v20, v19, &qword_27CABBB28);
  sub_2168E5DE0();
  sub_21700DF14();
  sub_2168E8874();
  sub_2168E9228();
  (*(v9 + 8))(v11, v18);
  return sub_216697664(v20, &qword_27CABBB28);
}

uint64_t sub_2168E8E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_2168E8EB4(a4, a1);
    }
  }

  return result;
}

uint64_t sub_2168E8EB4(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v16 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8);
  MEMORY[0x28223BE20](v4 - 8);
  v22 = &v15 - v5;
  v6 = type metadata accessor for MusicEvent(0);
  MEMORY[0x28223BE20](v6 - 8);
  v17 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_217006224();
  MEMORY[0x28223BE20](v8 - 8);
  v15 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v21 = type metadata accessor for InvalidationCoordinator.PageInvalidationDescriptor();
  v19 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v11 = &v15 - v10;
  type metadata accessor for PageChangeInstruction();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_216B13178();
  sub_217006214();
  sub_2168EB464(a1, v17, type metadata accessor for MusicEvent);
  v12 = type metadata accessor for AnyProtoRequestConvertibleIntent();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v23, v24, v12);
  sub_216B12C88(v22);
  sub_2168E5EA0();
  sub_21700DF14();
  sub_2168E8694(v16);
  sub_2168E96E8();
  (*(v19 + 8))(v11, v21);
  return (*(v13 + 8))(v24, v12);
}

void sub_2168E9228()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_33_1();
  v4 = type metadata accessor for InvalidationCoordinator.DeferredUpdate();
  OUTLINED_FUNCTION_1();
  v56 = v5;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v55 = &v47[-v7];
  v53 = type metadata accessor for MusicEvent(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v52 = v10 - v9;
  OUTLINED_FUNCTION_33_1();
  v11 = type metadata accessor for InvalidationCoordinator.SectionInvalidationDescriptor();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_77();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v47[-v19];
  if (qword_280E2C0F0 != -1)
  {
    OUTLINED_FUNCTION_1_52();
  }

  v21 = sub_217007CA4();
  __swift_project_value_buffer(v21, qword_280E2C0F8);
  v22 = *(v13 + 16);
  OUTLINED_FUNCTION_22_13();
  v22();
  v57 = v3;
  OUTLINED_FUNCTION_22_13();
  v54 = v22;
  v22();
  v23 = sub_217007C84();
  v24 = sub_21700EDA4();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v48 = v24;
    v26 = v25;
    v49 = swift_slowAlloc();
    v58 = v49;
    *v26 = 136446466;
    v27 = &v20[v11[10]];
    v50 = v1;
    v51 = v4;
    v28 = *v27;
    v29 = v27[1];
    v30 = *(v13 + 8);
    sub_21700DF14();
    (v30)(v20, v11);
    v31 = sub_2166A85FC(v28, v29, &v58);

    *(v26 + 4) = v31;
    *(v26 + 12) = 2082;
    OUTLINED_FUNCTION_0_63();
    sub_2168EB464(v17 + v32, v52, v33);
    v34 = sub_21700E594();
    v36 = v35;
    v37 = OUTLINED_FUNCTION_31_7();
    v30(v37);
    v38 = sub_2166A85FC(v34, v36, &v58);
    v1 = v50;

    *(v26 + 14) = v38;
    v4 = v51;
    _os_log_impl(&dword_216679000, v23, v48, "Section %{public}s invalidated by: %{public}s", v26, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {

    v39 = *(v13 + 8);
    v40 = OUTLINED_FUNCTION_31_7();
    v39(v40);
    (v39)(v20, v11);
  }

  v41 = *(v57 + v11[13]);
  if (v41 == 3)
  {
    if (*(v1 + 48) == 1)
    {
      sub_2168E9D6C();
    }

    else
    {
      if (!*(v57 + v11[12]))
      {
        sub_2168E6D04();
      }

      v45 = v55;
      OUTLINED_FUNCTION_22_13();
      v46();
      OUTLINED_FUNCTION_116();
      swift_storeEnumTagMultiPayload();
      sub_2168E9A78();
      (*(v56 + 8))(v45, v4);
    }
  }

  else
  {
    v42 = v55;
    OUTLINED_FUNCTION_22_13();
    v43();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB38);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_217013DA0;
    *(v44 + 32) = v41;
    OUTLINED_FUNCTION_30_17();
    sub_2168E9A78();

    (*(v56 + 8))(v42, v4);
  }

  OUTLINED_FUNCTION_26();
}

void sub_2168E96E8()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_16_0();
  v5 = *(v4 + 88);
  OUTLINED_FUNCTION_34_15();
  type metadata accessor for InvalidationCoordinator.DeferredUpdate();
  OUTLINED_FUNCTION_1();
  v43 = v7;
  v44 = v6;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v42 = &v39 - v9;
  type metadata accessor for MusicEvent(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  v13 = v12 - v11;
  OUTLINED_FUNCTION_34_15();
  v14 = type metadata accessor for InvalidationCoordinator.PageInvalidationDescriptor();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  v19 = &v39 - v18;
  if (qword_280E2C0F0 != -1)
  {
    OUTLINED_FUNCTION_1_52();
  }

  v20 = sub_217007CA4();
  __swift_project_value_buffer(v20, qword_280E2C0F8);
  v21 = *(v16 + 16);
  v45 = v3;
  v41 = v21;
  v21(v19, v3, v14);
  v22 = sub_217007C84();
  v23 = sub_21700EDA4();
  if (os_log_type_enabled(v22, v23))
  {
    v5 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v40 = v1;
    v25 = v24;
    v46 = v24;
    *v5 = 136446210;
    OUTLINED_FUNCTION_0_63();
    sub_2168EB464(&v19[v26], v13, v27);
    v28 = sub_21700E594();
    v30 = v29;
    v31 = OUTLINED_FUNCTION_31_7();
    v32(v31);
    v33 = sub_2166A85FC(v28, v30, &v46);

    *(v5 + 4) = v33;
    _os_log_impl(&dword_216679000, v22, v23, "Page invalidated by: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    v1 = v40;
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {

    v34 = OUTLINED_FUNCTION_31_7();
    v35(v34);
  }

  v36 = *(v45 + *(v14 + 48));
  if (v36 && *(v36 + 16))
  {
    goto LABEL_12;
  }

  if (*(v1 + 48) != 1)
  {
    if (*(v45 + *(v14 + 44)) != 2)
    {
      sub_2168E6034();
    }

LABEL_12:
    v37 = OUTLINED_FUNCTION_27_18();
    v38(v37);
    OUTLINED_FUNCTION_38_11();
    sub_2168E9A78();
    (*(v43 + 8))(v5, v16 + 16);
    goto LABEL_13;
  }

  sub_2168EA15C();
LABEL_13:
  OUTLINED_FUNCTION_26();
}

void sub_2168E9A78()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_16_0();
  v6 = type metadata accessor for InvalidationCoordinator.DeferredUpdate();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  if (qword_280E2C0F0 != -1)
  {
    OUTLINED_FUNCTION_1_52();
  }

  v12 = sub_217007CA4();
  __swift_project_value_buffer(v12, qword_280E2C0F8);
  (*(v8 + 16))(v11, v5, v6);
  sub_21700DF14();
  v13 = sub_217007C84();
  v14 = sub_21700EDA4();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v27 = v5;
    v16 = v15;
    v26 = swift_slowAlloc();
    v29[0] = v26;
    *v16 = 136446466;
    sub_2168E831C(v6, v28);
    __swift_project_boxed_opaque_existential_1(v28, v28[3]);
    v17 = sub_21700CEA4();
    v19 = v18;
    (*(v8 + 8))(v11, v6);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    v20 = sub_2166A85FC(v17, v19, v29);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2082;
    v21 = MEMORY[0x21CE9F660](v3, &unk_282931A88);
    v23 = sub_2166A85FC(v21, v22, v29);

    *(v16 + 14) = v23;
    _os_log_impl(&dword_216679000, v13, v14, "Deferred update: %{public}s until: %{public}s", v16, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    v5 = v27;
    OUTLINED_FUNCTION_6();
  }

  else
  {

    v24 = (*(v8 + 8))(v11, v6);
  }

  MEMORY[0x28223BE20](v24);
  *(&v25 - 2) = v1;
  *(&v25 - 1) = v5;
  sub_216CE1594(sub_2168EB010, (&v25 - 4), v3);
  OUTLINED_FUNCTION_26();
}

void sub_2168E9D6C()
{
  OUTLINED_FUNCTION_49();
  v2 = v0;
  v4 = v3;
  v42 = type metadata accessor for MusicEvent(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v41 = v7 - v6;
  v8 = type metadata accessor for InvalidationCoordinator.SectionInvalidationDescriptor();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_77();
  v14 = (v12 - v13);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_19_23();
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  if (!*(v4 + *(v19 + 48)))
  {
    sub_2168E6A88(*(v4 + *(v8 + 40)), *(v4 + *(v8 + 40) + 8));
    sub_2168E6D04();
  }

  if (qword_280E2C0F0 != -1)
  {
    OUTLINED_FUNCTION_1_52();
  }

  v20 = sub_217007CA4();
  __swift_project_value_buffer(v20, qword_280E2C0F8);
  v21 = *(v10 + 16);
  v21(v18, v4, v8);
  v22 = OUTLINED_FUNCTION_30_17();
  (v21)(v22);
  v21(v14, v4, v8);
  v23 = sub_217007C84();
  v24 = sub_21700EDA4();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v40 = v2;
    v26 = v25;
    v39 = swift_slowAlloc();
    v43 = v39;
    *v26 = 136446722;
    v27 = &v18[*(v8 + 40)];
    v38 = v23;
    v37 = v24;
    v28 = *v27;
    v29 = *(v10 + 8);
    sub_21700DF14();
    v29(v18, v8);
    OUTLINED_FUNCTION_24_17();
    OUTLINED_FUNCTION_26_21();

    *(v26 + 4) = v28;
    *(v26 + 12) = 2082;
    __swift_project_boxed_opaque_existential_1(&v1[*(v8 + 44)], *&v1[*(v8 + 44) + 24]);
    OUTLINED_FUNCTION_26_21();
    v30 = sub_21700CEA4();
    v29(v1, v8);
    OUTLINED_FUNCTION_24_17();
    OUTLINED_FUNCTION_26_21();

    *(v26 + 14) = v30;
    *(v26 + 22) = 2082;
    OUTLINED_FUNCTION_0_63();
    sub_2168EB464(&v14[v31], v41, v32);
    v33 = sub_21700E594();
    v29(v14, v8);
    OUTLINED_FUNCTION_24_17();
    OUTLINED_FUNCTION_26_21();

    *(v26 + 24) = v33;
    v34 = v38;
    _os_log_impl(&dword_216679000, v38, v37, "Section %{public}s needs update from: %{public}s after: %{public}s", v26, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {

    v35 = *(v10 + 8);
    v35(v14, v8);
    v35(v18, v8);
    v35(v1, v8);
  }

  sub_21700CC34();
  OUTLINED_FUNCTION_26();
}

void sub_2168EA15C()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  v4 = *v0;
  v68 = type metadata accessor for MusicEvent(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v67 = v7 - v6;
  v8 = *(v4 + 80);
  v73 = v0;
  v69 = *(v4 + 88);
  v70 = v8;
  v9 = type metadata accessor for InvalidationCoordinator.PageInvalidationDescriptor();
  OUTLINED_FUNCTION_1();
  v71 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_77();
  v72 = (v12 - v13);
  MEMORY[0x28223BE20](v14);
  v16 = &v66 - v15;
  MEMORY[0x28223BE20](v17);
  v66 = &v66 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  v21 = &v66 - v20;
  v22 = sub_2170061E4();
  OUTLINED_FUNCTION_1();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_19_23();
  MEMORY[0x28223BE20](v26);
  v28 = &v66 - v27;
  v29 = *(v9 + 52);
  v74 = v3;
  sub_2168282D4(v3 + v29, v21, &qword_27CAB74E8);
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
  {
    sub_216697664(v21, &qword_27CAB74E8);
LABEL_9:
    v45 = v74;
    v47 = v71;
    v46 = v72;
    if (*(v74 + *(v9 + 44)) != 2)
    {
      sub_2168E6A88(0, 0);
      sub_2168E6034();
    }

    if (qword_280E2C0F0 != -1)
    {
      OUTLINED_FUNCTION_1_52();
    }

    v48 = sub_217007CA4();
    __swift_project_value_buffer(v48, qword_280E2C0F8);
    v49 = *(v47 + 16);
    v49(v16, v45, v9);
    v49(v46, v45, v9);
    v50 = sub_217007C84();
    v51 = sub_21700EDA4();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *v52 = 136446466;
      type metadata accessor for PageChangeInstruction();
      OUTLINED_FUNCTION_8_29();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_33_1();
      type metadata accessor for AnyProtoRequestConvertibleIntent();
      sub_2169426B4();
      v53 = *(v47 + 8);
      v53(v16, v9);
      v54 = OUTLINED_FUNCTION_8();
      v57 = sub_2166A85FC(v54, v55, v56);

      *(v52 + 4) = v57;
      *(v52 + 12) = 2082;
      OUTLINED_FUNCTION_0_63();
      v58 = v72;
      sub_2168EB464(v72 + v59, v67, v60);
      sub_21700E594();
      v53(v58, v9);
      v61 = OUTLINED_FUNCTION_8();
      v64 = sub_2166A85FC(v61, v62, v63);

      *(v52 + 14) = v64;
      _os_log_impl(&dword_216679000, v50, v51, "Page needs update from: %{public}s after: %{public}s", v52, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    else
    {

      v65 = *(v47 + 8);
      v65(v46, v9);
      v65(v16, v9);
    }

    sub_21700CC34();
    goto LABEL_17;
  }

  (*(v24 + 32))(v28, v21, v22);
  sub_2170061D4();
  v30 = sub_217006144();
  v31 = *(v24 + 8);
  v31(v1, v22);
  if ((v30 & 1) == 0)
  {
    v31(v28, v22);
    goto LABEL_9;
  }

  v32 = v74;
  if (qword_280E2C0F0 != -1)
  {
    OUTLINED_FUNCTION_1_52();
  }

  v33 = sub_217007CA4();
  __swift_project_value_buffer(v33, qword_280E2C0F8);
  v34 = v71;
  v35 = v66;
  (*(v71 + 16))(v66, v32, v9);
  v36 = sub_217007C84();
  v37 = sub_21700EDA4();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v72 = v38;
    v39 = swift_slowAlloc();
    v73 = v39;
    *v38 = 136446210;
    v74 = v31;
    v75 = v39;
    type metadata accessor for PageChangeInstruction();
    OUTLINED_FUNCTION_8_29();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_34_15();
    type metadata accessor for AnyProtoRequestConvertibleIntent();
    v40 = sub_2169426B4();
    v42 = v41;
    (*(v34 + 8))(v35, v9);
    v43 = sub_2166A85FC(v40, v42, &v75);

    v44 = v72;
    *(v72 + 1) = v43;
    _os_log_impl(&dword_216679000, v36, v37, "Ignoring page update from: %{public}s. End date surpassed.", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v73);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();

    v74(v28, v22);
  }

  else
  {

    (*(v34 + 8))(v35, v9);
    v31(v28, v22);
  }

LABEL_17:
  OUTLINED_FUNCTION_26();
}

uint64_t sub_2168EA85C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for InvalidationCoordinator.DeferredUpdate();
  v5 = MEMORY[0x28223BE20](v4);
  (*(v7 + 16))(&v9 - v6, a3, v4, v5);
  swift_beginAccess();
  sub_21700E984();
  sub_21700E8F4();
  return swift_endAccess();
}

uint64_t sub_2168EAA00()
{
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_120_0();
  type metadata accessor for InvalidationCoordinator.DeferredUpdate();
  OUTLINED_FUNCTION_32();
  sub_21700E984();
  OUTLINED_FUNCTION_7_32();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_33();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_18_19();
  sub_21700ED04();
  swift_endAccess();
  OUTLINED_FUNCTION_120_0();
  OUTLINED_FUNCTION_18_19();
  sub_21700ED04();
  swift_endAccess();
  OUTLINED_FUNCTION_120_0();
  OUTLINED_FUNCTION_18_19();
  sub_21700ED04();
  return swift_endAccess();
}

uint64_t sub_2168EAB84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for InvalidationCoordinator.SectionInvalidationDescriptor();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - v8;
  type metadata accessor for InvalidationCoordinator.UpdateType();
  v10 = type metadata accessor for InvalidationCoordinator.DeferredUpdate();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12.n128_f64[0] = MEMORY[0x28223BE20](TupleTypeMetadata2 - 8);
  v14 = &v22 - v13;
  v16 = *(v15 + 56);
  v17 = *(v10 - 8);
  (*(v17 + 16))(&v22 + v16 - v13, a1, v10, v12);
  if (!a3)
  {
    goto LABEL_4;
  }

  if (a3 == 1)
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
LABEL_4:
      (*(v17 + 8))(&v14[v16], v10);
      v18 = 1;
      return v18 & 1;
    }

LABEL_11:
    (*(v17 + 8))(&v14[v16], v10);
    v18 = 0;
    return v18 & 1;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_11;
  }

  (*(v7 + 32))(v9, &v14[v16], v6);
  v19 = &v9[*(v6 + 40)];
  if (*v19 == a2 && *(v19 + 1) == a3)
  {
    v18 = 1;
  }

  else
  {
    v18 = sub_21700F7D4();
  }

  (*(v7 + 8))(v9, v6);
  return v18 & 1;
}

uint64_t sub_2168EAE00(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
    return sub_21700DF14();
  }

  return result;
}

uint64_t sub_2168EAE2C()
{
  v1 = sub_217006224();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_19_23();
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - v6;
  v8 = type metadata accessor for InvalidationCoordinator.DeferredUpdate();
  sub_2168E804C(v8, v7);
  sub_2168E804C(v8, v0);
  v9 = sub_217006204();
  v10 = *(v3 + 8);
  v10(v0, v1);
  v10(v7, v1);
  return v9 & 1;
}

uint64_t sub_2168EAF70()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_280E2C0F8);
  v1 = OUTLINED_FUNCTION_8();
  __swift_project_value_buffer(v1, v2);
  return sub_217007C94();
}

unint64_t sub_2168EB02C()
{
  result = qword_27CABBB30;
  if (!qword_27CABBB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBB28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABBB30);
  }

  return result;
}

uint64_t sub_2168EB090(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2168EB0F4()
{
  type metadata accessor for MusicEvent(0);
  v0 = OUTLINED_FUNCTION_13_17();

  return sub_2168E8E08(v0, v1, v2, v3);
}

uint64_t objectdestroy_33Tm()
{
  OUTLINED_FUNCTION_49();
  v1 = *(type metadata accessor for MusicEvent(0) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);

  v3 = v0 + v2;
  type metadata accessor for MusicEvent.Event(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:

      break;
    case 1:
      v6 = sub_2170061E4();
      OUTLINED_FUNCTION_34();
      v8 = *(v7 + 8);
      v9 = OUTLINED_FUNCTION_116();
      v8(v9);
      v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB8C0) + 48);
      if (!__swift_getEnumTagSinglePayload(v3 + v10, 1, v6))
      {
        (v8)(v3 + v10, v6);
      }

      break;
    case 0:
      sub_2170061E4();
      OUTLINED_FUNCTION_34();
      (*(v5 + 8))(v0 + v2);
      break;
  }

  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t sub_2168EB3AC()
{
  type metadata accessor for MusicEvent(0);
  v0 = OUTLINED_FUNCTION_13_17();

  return sub_2168E8A64(v0, v1, v2, v3);
}

uint64_t sub_2168EB41C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2168EB464(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_2168EB4C0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2168EB518()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_7MusicUI23InvalidationCoordinatorC10UpdateType33_F008FC58614C03950967F7D612A50909LLOyx_G(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2168EB5D0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2168EB610(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2168EB66C(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v97 = a2;
  v91 = a3;
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v84 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v15);
  v83 = &v80 - v16;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v17);
  v82 = &v80 - v18;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v19);
  v81 = &v80 - v20;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v21);
  v23 = &v80 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v80 - v25;
  sub_21700D7A4();
  OUTLINED_FUNCTION_0_7();
  sub_21700CE04();
  v87 = v6;
  v27 = v6;
  v28 = v12;
  v29 = a1;
  v30 = *(v27 + 16);
  v94 = v4;
  v31 = v91;
  v89 = v30;
  v90 = v27 + 16;
  v30(v9, v97, v4);
  v32 = v31;
  v88 = v9;
  sub_21700D734();
  v86 = v29;
  sub_21700CE04();
  v33 = sub_21700CDB4();
  v35 = v34;
  v36 = *(v28 + 8);
  v92 = v28 + 8;
  v93 = v10;
  v36(v23, v10);
  if (v35)
  {
    v37 = type metadata accessor for ListLockup();
    v95 = v33;
    v96 = v35;
    v38 = v32;
    sub_21700F364();
    type metadata accessor for Artwork();
    v39 = v86;
    sub_21700CE04();
    v89(v88, v97, v94);
    sub_2168EC478(&qword_280E2BF60, type metadata accessor for Artwork);
    sub_21700D734();
    OUTLINED_FUNCTION_10_24();
    v40 = sub_21700CDB4();
    v42 = v41;
    v43 = v93;
    v36(v26, v93);
    v44 = (v38 + v37[6]);
    *v44 = v40;
    v44[1] = v42;
    sub_21700CE04();
    v45 = sub_21700CDB4();
    v47 = v46;
    v48 = OUTLINED_FUNCTION_8_30();
    (v36)(v48);
    v49 = (v38 + v37[7]);
    *v49 = v45;
    v49[1] = v47;
    v50 = v81;
    sub_21700CE04();
    sub_21700CD44();
    v36(v50, v43);
    OUTLINED_FUNCTION_6_34(v37[8]);
    OUTLINED_FUNCTION_11_0();
    v51 = v82;
    sub_21700CE04();
    sub_21700CD44();
    v36(v51, v43);
    v52 = v37;
    OUTLINED_FUNCTION_6_34(v37[9]);
    sub_21700CE04();
    sub_2167FEFD4();
    sub_21700CD14();
    v53 = OUTLINED_FUNCTION_8_30();
    (v36)(v53);
    *(v38 + v37[10]) = v95;
    v54 = v83;
    sub_21700CE04();
    sub_21700CD44();
    v36(v54, v43);
    OUTLINED_FUNCTION_6_34(v52[12]);
    OUTLINED_FUNCTION_0_7();
    sub_21700CE04();
    v55 = sub_21700CDB4();
    v85 = v36;
    v57 = v56;
    v58 = OUTLINED_FUNCTION_8_30();
    v59(v58);
    v60 = v52;
    v61 = (v38 + v52[14]);
    *v61 = v55;
    v61[1] = v57;
    v62 = type metadata accessor for ContentDescriptor();
    OUTLINED_FUNCTION_0_7();
    sub_21700CE04();
    v63 = v88;
    v64 = v97;
    v89(v88, v97, v94);
    v65 = sub_2168EC478(qword_280E40390, type metadata accessor for ContentDescriptor);
    v82 = v62;
    v83 = v65;
    OUTLINED_FUNCTION_8_30();
    sub_21700D734();
    OUTLINED_FUNCTION_10_24();
    sub_21700D2E4();
    v85(v26, v93);
    OUTLINED_FUNCTION_11_0();
    v66 = v39;
    sub_21700CE04();
    v67 = v63;
    v68 = v63;
    v69 = v94;
    v70 = v89;
    v89(v68, v64, v94);
    sub_2168EC4C0();
    sub_21700D734();
    OUTLINED_FUNCTION_11_0();
    sub_21700CE04();
    v70(v67, v64, v69);
    sub_21700D734();
    OUTLINED_FUNCTION_11_0();
    v71 = v84;
    sub_21700CE04();
    sub_21700CD44();
    (*(v87 + 8))(v64, v69);
    v72 = v93;
    v73 = v85;
    v85(v66, v93);
    v73(v71, v72);
    OUTLINED_FUNCTION_6_34(v60[17]);
  }

  else
  {
    sub_21700E2E4();
    OUTLINED_FUNCTION_0_64();
    sub_2168EC478(v74, v75);
    swift_allocError();
    v77 = v76;
    v78 = type metadata accessor for ListLockup();
    *v77 = 25705;
    v77[1] = 0xE200000000000000;
    v77[2] = v78;
    OUTLINED_FUNCTION_50();
    (*(v79 + 104))(v77);
    swift_willThrow();
    (*(v87 + 8))(v97, v94);
    v36(v86, v93);
    sub_2166997CC(v32, &qword_27CAB6D58);
  }
}

uint64_t sub_2168EBF18@<X0>(char *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v41 = a2;
  v5 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v35 - v12;
  sub_21700CE04();
  v14 = sub_21700CD44();
  v15 = v13;
  v16 = v5;
  v17 = *(v7 + 8);
  v17(v15, v16);
  if (v14 == 2)
  {
    sub_21700E2E4();
    OUTLINED_FUNCTION_0_64();
    sub_2168EC478(v18, v19);
    OUTLINED_FUNCTION_11_28();
    *v20 = 0xD000000000000012;
    v20[1] = 0x8000000217084140;
    v20[2] = &type metadata for ListLockup.ToggleDescriptor;
    OUTLINED_FUNCTION_50();
    (*(v21 + 104))();
    swift_willThrow();
    sub_21700CF34();
    OUTLINED_FUNCTION_9_0();
    (*(v22 + 8))(v41);
    v23 = a1;
    return (v17)(v23, v16);
  }

  *a3 = v14 & 1;
  sub_21700CE04();
  v24 = v41;
  v25 = v35[1];
  sub_21700D2D4();
  if (v25)
  {
    sub_21700CF34();
    OUTLINED_FUNCTION_9_0();
    (*(v26 + 8))(v24);
    v17(a1, v16);
    v23 = v10;
    return (v17)(v23, v16);
  }

  v17(v10, v16);
  sub_2167B7D58(v40, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB50);
  if (swift_dynamicCast())
  {
    sub_21700CF34();
    OUTLINED_FUNCTION_9_0();
    (*(v28 + 8))(v24);
    v17(a1, v16);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    sub_2166A0F18(v36, v39);
    return sub_2166A0F18(v39, (a3 + 8));
  }

  else
  {
    v37 = 0;
    memset(v36, 0, sizeof(v36));
    sub_2166997CC(v36, qword_27CABBB58);
    sub_21700E2E4();
    OUTLINED_FUNCTION_0_64();
    sub_2168EC478(v29, v30);
    OUTLINED_FUNCTION_11_28();
    v31 = MEMORY[0x277D84F90];
    *v32 = 0x6E6F69746361;
    v32[1] = 0xE600000000000000;
    v32[2] = &type metadata for ListLockup.ToggleDescriptor;
    v32[3] = v31;
    OUTLINED_FUNCTION_50();
    (*(v33 + 104))();
    swift_willThrow();
    sub_21700CF34();
    OUTLINED_FUNCTION_9_0();
    (*(v34 + 8))(v24);
    v17(a1, v16);
    return __swift_destroy_boxed_opaque_existential_1Tm(v40);
  }
}

uint64_t sub_2168EC478(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2168EC4C0()
{
  result = qword_27CABBB48;
  if (!qword_27CABBB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABBB48);
  }

  return result;
}

uint64_t sub_2168EC5AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = v3[2];
  v3[2] = a1;
  v3[3] = a2;

  sub_21667E91C(v5);
  v6 = *MEMORY[0x277D27800];
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = *(v4 + 264);
  *(v8 + 24) = v7;
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  *(v3 + *(*v3 + 272)) = sub_2166B9AD0(v6, 0, 1, 1, sub_2168EC8FC, v8);
}

uint64_t sub_2168EC6D0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  if (!sub_217005964())
  {

    v3 = 0u;
    v4 = 0u;
    return sub_216697CFC(&v3);
  }

  sub_21700E514();
  sub_21700F364();
  sub_216934FBC();

  sub_216788110(v2);
  if (!*(&v4 + 1))
  {

    return sub_216697CFC(&v3);
  }

  v1 = swift_dynamicCast();
  if ((v1 & 1) != 0 && v2[0] == 1)
  {
    sub_216B12888(v1);
  }
}

char *sub_2168EC84C()
{
  v0 = sub_216B127F4();

  return v0;
}

uint64_t sub_2168EC890()
{
  v0 = sub_2168EC84C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2168EC904@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v87 = a1;
  v3 = sub_21700C084();
  OUTLINED_FUNCTION_1();
  v85 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v8 = v7 - v6;
  v9 = sub_217005EF4();
  OUTLINED_FUNCTION_1();
  v86 = v10;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = (&v84 - v15);
  v17 = type metadata accessor for ContentDescriptor();
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v84 - v21;
  v23 = type metadata accessor for FlowAction.Destination(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_7();
  v27 = v26 - v25;
  OUTLINED_FUNCTION_3_49();
  sub_2168ED84C(v2, v27, v28);
  OUTLINED_FUNCTION_38();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80F0);
      OUTLINED_FUNCTION_8_31();
      sub_2168ED900(v27, v22);
      sub_2168ED3E8(v22, v9, v87);

      OUTLINED_FUNCTION_2_41();
      v30 = v22;
      return sub_2168ED8A8(v30, v29);
    case 6u:
      v52 = *(v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80E8) + 48));
      v53 = *(v85 + 32);
      v53(v8, v27, v3);
      if (v52 == 2 || (v52 & 1) != 0)
      {
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBBE0);
        v55 = (v87 + *(v54 + 48));
        v53(v87, v8, v3);
        type metadata accessor for MusicAppDestination.AlbumDescriptor(0);
        swift_storeEnumTagMultiPayload();
        type metadata accessor for MusicAppDestination(0);
        *v55 = 0;
        v55[1] = 0;
      }

      else
      {
        v53(v87, v8, v3);
        type metadata accessor for MusicAppDestination.AlbumDescriptor(0);
        swift_storeEnumTagMultiPayload();
        type metadata accessor for MusicAppDestination(0);
        OUTLINED_FUNCTION_38();
      }

      goto LABEL_21;
    case 0xAu:
      sub_21700C384();
      OUTLINED_FUNCTION_9();
      v50 = OUTLINED_FUNCTION_10_25();
      v51(v50);
      type metadata accessor for MusicAppDestination(0);
      OUTLINED_FUNCTION_30_15();
      goto LABEL_21;
    case 0xBu:
      sub_2170072A4();
      OUTLINED_FUNCTION_9();
      v43 = OUTLINED_FUNCTION_10_25();
      v44(v43);
      type metadata accessor for MusicAppDestination(0);
      OUTLINED_FUNCTION_30_15();
      goto LABEL_21;
    case 0xDu:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80D0);
      OUTLINED_FUNCTION_8_31();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBBE0);
      OUTLINED_FUNCTION_12_25();
      sub_21700C1E4();
      OUTLINED_FUNCTION_9();
      (*(v35 + 32))(v3, v27);
      type metadata accessor for MusicAppDestination.AlbumDescriptor(0);
      swift_storeEnumTagMultiPayload();
      *v16 = v23;
      v16[1] = v9;
      type metadata accessor for MusicAppDestination(0);
      goto LABEL_21;
    case 0xEu:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80C8);
      OUTLINED_FUNCTION_8_31();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CACA4F0);
      OUTLINED_FUNCTION_12_25();
      sub_21700C924();
      OUTLINED_FUNCTION_9();
      (*(v36 + 32))(v3, v27);
      type metadata accessor for MusicAppDestination.PlaylistDescriptor(0);
      swift_storeEnumTagMultiPayload();
      *v16 = v23;
      v16[1] = v9;
      type metadata accessor for MusicAppDestination(0);
      goto LABEL_21;
    case 0xFu:
      v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80F8) + 48);
      sub_2168ED900(v27, v20);
      v57 = v86;
      v58 = *(v86 + 32);
      v58(v16, v27 + v56, v9);
      if (*(v20 + 12))
      {
        goto LABEL_28;
      }

      if (*(v20 + 4))
      {
        sub_21700DF14();
LABEL_28:
        sub_21700DF14();
        v77 = sub_21700BA64();
        v79 = v78;
        OUTLINED_FUNCTION_2_41();
        sub_2168ED8A8(v20, v80);
        v81 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBBE8) + 48);
        v82 = v87;
        *v87 = v77;
        v82[1] = v79;
        type metadata accessor for MusicAppDestination.PlaylistDescriptor(0);
        swift_storeEnumTagMultiPayload();
        v58((v82 + v81), v16, v9);
        type metadata accessor for MusicAppDestination(0);
        swift_storeEnumTagMultiPayload();
LABEL_22:
        OUTLINED_FUNCTION_9_33();
      }

      else
      {
        OUTLINED_FUNCTION_2_41();
        sub_2168ED8A8(v20, v83);
        (*(v57 + 8))(v16, v9);
        type metadata accessor for MusicAppDestination(0);
        v68 = OUTLINED_FUNCTION_13_18();
      }

      return __swift_storeEnumTagSinglePayload(v68, v69, v70, v71);
    case 0x10u:
      v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80C0) + 48);
      sub_21700C1E4();
      OUTLINED_FUNCTION_9();
      (*(v60 + 32))(v87, v27);
      type metadata accessor for MusicAppDestination.AlbumDescriptor(0);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for MusicAppDestination(0);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_9_33();
      __swift_storeEnumTagSinglePayload(v61, v62, v63, v64);
      v65 = &qword_27CAB6AE8;
      return sub_216697664(v27 + v59, v65);
    case 0x11u:
      v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80B8) + 48);
      sub_21700C924();
      OUTLINED_FUNCTION_9();
      (*(v72 + 32))(v87, v27);
      type metadata accessor for MusicAppDestination(0);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_9_33();
      __swift_storeEnumTagSinglePayload(v73, v74, v75, v76);
      v65 = qword_27CAB6AF0;
      return sub_216697664(v27 + v59, v65);
    case 0x12u:
      sub_21700C734();
      OUTLINED_FUNCTION_9();
      v66 = OUTLINED_FUNCTION_10_25();
      v67(v66);
      type metadata accessor for MusicAppDestination(0);
      OUTLINED_FUNCTION_30_15();
      goto LABEL_21;
    case 0x13u:
      v31 = *v27;
      v32 = *(v27 + 8);
      v33 = *(v27 + 16);
      v34 = v87;
      *v87 = v31;
      v34[1] = v32;
      *(v34 + 16) = v33;
      type metadata accessor for MusicAppDestination(0);
      OUTLINED_FUNCTION_38();
      goto LABEL_21;
    case 0x18u:
      v37 = *v27;
      v38 = *(v27 + 8);
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CACA4E0);
      v40 = *(v86 + 32);
      v40(v14, v27 + *(v39 + 48), v9);
      v41 = *(v39 + 48);
      v42 = v87;
      *v87 = v37;
      v42[1] = v38;
      v40(v42 + v41, v14, v9);
      type metadata accessor for MusicAppDestination(0);
      OUTLINED_FUNCTION_38();
      goto LABEL_21;
    case 0x1Bu:
      type metadata accessor for MusicAppDestination(0);
      OUTLINED_FUNCTION_38();
LABEL_21:
      swift_storeEnumTagMultiPayload();
      goto LABEL_22;
    default:
      type metadata accessor for MusicAppDestination(0);
      v45 = OUTLINED_FUNCTION_13_18();
      __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
      v29 = type metadata accessor for FlowAction.Destination;
      v30 = v27;
      return sub_2168ED8A8(v30, v29);
  }
}

uint64_t sub_2168ED1E4()
{
  type metadata accessor for MusicAppDestination(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_7();
  v3 = v2 - v1;
  v4 = OUTLINED_FUNCTION_38();
  sub_2168ED84C(v4, v5, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 1;
  switch(EnumCaseMultiPayload)
  {
    case 1:
    case 2:
    case 5:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 18:
      v9 = type metadata accessor for MusicAppDestination;
      goto LABEL_3;
    case 6:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBBE0);
      OUTLINED_FUNCTION_5_31();
      v10 = type metadata accessor for MusicAppDestination.AlbumDescriptor;
      goto LABEL_9;
    case 7:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CACA4F0);
      OUTLINED_FUNCTION_5_31();
      v10 = type metadata accessor for MusicAppDestination.PlaylistDescriptor;
      goto LABEL_9;
    case 8:
      v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBBE8) + 48);
      sub_217005EF4();
      OUTLINED_FUNCTION_34();
      (*(v12 + 8))(v3 + v11);
      v9 = type metadata accessor for MusicAppDestination.PlaylistDescriptor;
LABEL_3:
      sub_2168ED8A8(v3, v9);
      goto LABEL_4;
    case 9:
    case 19:
      return result;
    case 17:

      v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CACA4E0) + 48);
      sub_217005EF4();
      OUTLINED_FUNCTION_34();
      (*(v14 + 8))(v3 + v13);
LABEL_4:
      result = 1;
      break;
    default:
      v10 = type metadata accessor for MusicAppDestination;
LABEL_9:
      sub_2168ED8A8(v3, v10);
      result = 0;
      break;
  }

  return result;
}

uint64_t sub_2168ED3E8@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  if (!*(a1 + 12))
  {
    if (!*(a1 + 4))
    {
      v17 = type metadata accessor for MusicAppDestination(0);
      v18 = a3;
      v19 = 1;
LABEL_22:

      return __swift_storeEnumTagSinglePayload(v18, v19, 1, v17);
    }

    sub_21700DF14();
  }

  sub_21700DF14();
  v6 = sub_21700BA64();
  v8 = v6;
  v9 = v7;
  v10 = *a1;
  switch(v10)
  {
    case 4:
      goto LABEL_12;
    case 5:
      *a3 = v6;
      a3[1] = v7;
      v11 = type metadata accessor for MusicAppDestination(0);
LABEL_21:
      swift_storeEnumTagMultiPayload();
      v18 = a3;
      v19 = 0;
      v17 = v11;
      goto LABEL_22;
    case 14:
      v12 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CACA4F0) + 48));
      *a3 = v8;
      a3[1] = v9;
      type metadata accessor for MusicAppDestination.PlaylistDescriptor(0);
      swift_storeEnumTagMultiPayload();
      if (!a2)
      {
        v13 = 0;
        v14 = 0;
        goto LABEL_20;
      }

      goto LABEL_11;
    case 19:
LABEL_12:
      v12 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBBE0) + 48));
      *a3 = v8;
      a3[1] = v9;
      type metadata accessor for MusicAppDestination.AlbumDescriptor(0);
      swift_storeEnumTagMultiPayload();
      if (!a2)
      {
        v13 = 0;
        v14 = 0;
        goto LABEL_20;
      }

LABEL_11:
      sub_21700DF14();
      v13 = sub_21700BA64();
LABEL_20:
      *v12 = v13;
      v12[1] = v14;
      v11 = type metadata accessor for MusicAppDestination(0);
      goto LABEL_21;
  }

  v15 = type metadata accessor for MusicAppDestination(0);
  __swift_storeEnumTagSinglePayload(a3, 1, 1, v15);
}

uint64_t sub_2168ED65C()
{
  type metadata accessor for FlowAction.Destination(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_7();
  v3 = v2 - v1;
  OUTLINED_FUNCTION_3_49();
  v4 = OUTLINED_FUNCTION_38();
  sub_2168ED84C(v4, v5, v6);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80F0);
      OUTLINED_FUNCTION_5_31();
      v7 = type metadata accessor for ContentDescriptor;
      goto LABEL_7;
    case 4u:
    case 0x12u:
      v7 = type metadata accessor for FlowAction.Destination;
LABEL_7:
      sub_2168ED8A8(v3, v7);
      goto LABEL_13;
    case 0xDu:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80D0);
      OUTLINED_FUNCTION_5_31();
      goto LABEL_9;
    case 0xEu:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80C8);
      OUTLINED_FUNCTION_5_31();
      goto LABEL_11;
    case 0x10u:
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80C0);
      sub_216697664(v3 + *(v9 + 48), &qword_27CAB6AE8);
LABEL_9:
      sub_21700C1E4();
      goto LABEL_12;
    case 0x11u:
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80B8);
      sub_216697664(v3 + *(v10 + 48), qword_27CAB6AF0);
LABEL_11:
      sub_21700C924();
LABEL_12:
      OUTLINED_FUNCTION_34();
      (*(v11 + 8))(v3);
LABEL_13:
      result = 1;
      break;
    default:
      sub_2168ED8A8(v3, type metadata accessor for FlowAction.Destination);
      result = 0;
      break;
  }

  return result;
}

uint64_t sub_2168ED84C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2168ED8A8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2168ED900(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentDescriptor();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2168ED9AC()
{
  type metadata accessor for JSSearchResultsPage.QueryContext(319);
  if (v0 <= 0x3F)
  {
    sub_2166DAA20(319, &qword_280E2A070, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ObjectGraph();
      if (v2 <= 0x3F)
      {
        sub_216820EBC();
        if (v3 <= 0x3F)
        {
          sub_2166DAA20(319, &qword_280E2B468, MEMORY[0x277CDF310], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_2166DAA20(319, &qword_280E2B438, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
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

uint64_t sub_2168EDB18@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v2 = sub_21700DAF4();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  MEMORY[0x28223BE20](v8 - 8);
  v49 = &v41 - v9;
  v48 = sub_2170090F4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBC08);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - v16;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBC10);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v18);
  v20 = &v41 - v19;
  *v17 = sub_2170091A4();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBC18);
  sub_2168EE08C(v1, &v17[*(v21 + 44)]);
  v22 = *(type metadata accessor for SearchResultsQueryContextView(0) + 32);
  v52 = v1;
  v23 = v1 + v22;
  v24 = *(v23 + 8);
  v25 = *(v23 + 24);
  if (*(v23 + 32) != 1)
  {
    v45 = v7;
    v26 = *v23;
    v43 = *(v23 + 16);
    v27 = v43;

    sub_21700ED94();
    v47 = v2;
    v28 = sub_217009C34();
    v46 = v4;
    v29 = v28;
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_21680E444(v26, v24, v27, v25, 0);
    v42 = *(v11 + 8);
    v30 = v48;
    v42(v14, v48);
    v44 = v54;

    sub_21700ED94();
    v31 = sub_217009C34();
    v2 = v47;
    sub_217007BC4();

    v4 = v46;
    sub_2170090E4();
    swift_getAtKeyPath();
    v32 = v26;
    v7 = v45;
    sub_21680E444(v32, v24, v43, v25, 0);
    v42(v14, v30);
    v25 = v55;
    v24 = v44;
  }

  v33 = &v17[*(v50 + 36)];
  *v33 = 0;
  *(v33 + 1) = v24;
  *(v33 + 2) = 0;
  *(v33 + 3) = v25;
  v33[32] = 0;
  v34 = *(type metadata accessor for JSSearchResultsPage.QueryContext(0) + 36);
  v35 = sub_21700D7A4();
  OUTLINED_FUNCTION_34();
  v37 = v49;
  (*(v36 + 16))(v49, v52 + v34, v35);
  __swift_storeEnumTagSinglePayload(v37, 0, 1, v35);
  sub_21700DAE4();
  sub_2168F19B8();
  sub_21700A1C4();
  (*(v4 + 8))(v7, v2);
  sub_216699778(v37, &qword_27CAB6D58);
  sub_216699778(v17, &qword_27CABBC08);
  *&v20[*(v51 + 36)] = xmmword_21701AB40;
  sub_217008344();
  sub_2168F1A9C();
  sub_21700A624();
  sub_216699778(v20, &qword_27CABBC10);
  sub_217009CE4();
  sub_217007F24();
  OUTLINED_FUNCTION_1_27();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBC40);
  OUTLINED_FUNCTION_3_50(v38);
  sub_217009C74();
  sub_217007F24();
  OUTLINED_FUNCTION_1_27();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBC48);
  return OUTLINED_FUNCTION_3_50(v39);
}

uint64_t sub_2168EE08C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v106 = a2;
  v3 = sub_2170080D4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v87 - v8;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBC50);
  MEMORY[0x28223BE20](v87);
  v11 = (&v87 - v10);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBC58);
  MEMORY[0x28223BE20](v88);
  v13 = &v87 - v12;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBC60);
  MEMORY[0x28223BE20](v90);
  v92 = &v87 - v14;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBC68);
  MEMORY[0x28223BE20](v89);
  v95 = &v87 - v15;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBC70);
  MEMORY[0x28223BE20](v91);
  v93 = &v87 - v16;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBC78);
  MEMORY[0x28223BE20](v99);
  v94 = &v87 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBC80);
  v102 = *(v18 - 8);
  v103 = v18;
  MEMORY[0x28223BE20](v18);
  v98 = &v87 - v19;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBC88);
  MEMORY[0x28223BE20](v96);
  v101 = &v87 - v20;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBC90);
  MEMORY[0x28223BE20](v100);
  v105 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v97 = &v87 - v23;
  MEMORY[0x28223BE20](v24);
  v104 = &v87 - v25;
  Context = type metadata accessor for SearchResultsQueryContextView.TextView(0);
  sub_2168F2134(a1, v11 + Context[6]);
  v27 = *(type metadata accessor for SearchResultsQueryContextView(0) + 24);
  v107 = a1;
  v28 = *(a1 + v27);
  *v11 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128);
  swift_storeEnumTagMultiPayload();
  v29 = v11 + Context[5];
  *v29 = swift_getKeyPath();
  v29[40] = 0;
  *(v11 + Context[7]) = v28;
  v30 = qword_27CAB59D8;

  if (v30 != -1)
  {
    swift_once();
  }

  v31 = qword_27CABBBF0;
  KeyPath = swift_getKeyPath();
  v33 = (v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBC98) + 36));
  *v33 = KeyPath;
  v33[1] = v31;
  v34 = swift_getKeyPath();
  v35 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBCA0) + 36);
  *v35 = v34;
  *(v35 + 1) = 4;
  v35[16] = 0;

  LOBYTE(v31) = sub_217009C74();
  sub_217007F24();
  v36 = v11 + *(v87 + 36);
  *v36 = v31;
  *(v36 + 1) = v37;
  *(v36 + 2) = v38;
  *(v36 + 3) = v39;
  *(v36 + 4) = v40;
  v36[40] = 0;
  sub_21700B3B4();
  sub_217008BB4();
  sub_2167C5834(v11, v13, &qword_27CABBC50);
  v41 = memcpy(&v13[*(v88 + 36)], __src, 0x70uLL);
  sub_216C0C924(v41, v42, v43, v44, v45, v46, v47, v48, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98);
  (*(v4 + 104))(v6, *MEMORY[0x277CDF3C0], v3);
  LOBYTE(v31) = sub_2170080C4();
  v49 = *(v4 + 8);
  v49(v6, v3);
  v49(v9, v3);
  if (v31)
  {
    if (qword_27CAB59E8 != -1)
    {
      swift_once();
    }

    v50 = &qword_27CABBC00;
  }

  else
  {
    if (qword_27CAB59E0 != -1)
    {
      swift_once();
    }

    v50 = &qword_27CABBBF8;
  }

  v51 = *v50;

  v52 = sub_217009C84();
  v53 = v92;
  sub_2167C5834(v13, v92, &qword_27CABBC58);
  v54 = v53 + *(v90 + 36);
  *v54 = v51;
  *(v54 + 8) = v52;
  v55 = v95;
  v56 = (v95 + *(v89 + 36));
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB72E8);
  sub_217008C64();
  v58 = sub_217008B44();
  v59 = *(v58 + 20);
  v60 = *MEMORY[0x277CE0118];
  v61 = sub_217009294();
  v62 = *(*(v61 - 8) + 104);
  v62(&v56[v59], v60, v61);
  __asm { FMOV            V0.2D, #22.0 }

  *v56 = _Q0;
  v56[*(v57 + 36)] = 0;
  sub_2167C5834(v53, v55, &qword_27CABBC60);
  v68 = v93;
  v69 = (v93 + *(v91 + 36));
  v62(&v69[*(v58 + 20)], v60, v61);
  __asm { FMOV            V0.2D, #24.0 }

  *v69 = _Q0;
  *&v69[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7438) + 36)] = 256;
  sub_2167C5834(v55, v68, &qword_27CABBC68);
  v71 = v94;
  v72 = sub_2167C5834(v68, v94, &qword_27CABBC70);
  *(v71 + *(v99 + 36)) = 1;
  MEMORY[0x28223BE20](v72);
  type metadata accessor for SearchQueryContextMenu();
  sub_2168F1B8C();
  sub_2168F20EC(&qword_27CABBCF8, type metadata accessor for SearchQueryContextMenu);
  v73 = v98;
  sub_21700A3B4();
  sub_216699778(v71, &qword_27CABBC78);
  sub_21700ACC4();
  v74 = sub_21700AD04();

  v75 = v101;
  (*(v102 + 32))(v101, v73, v103);
  v76 = &v75[*(v96 + 36)];
  *v76 = v74;
  *(v76 + 8) = xmmword_217025720;
  *(v76 + 3) = 0x4028000000000000;
  sub_21700ACC4();
  v77 = sub_21700AD04();

  v78 = v75;
  v79 = v97;
  sub_2167C5834(v78, v97, &qword_27CABBC88);
  v80 = (v79 + *(v100 + 36));
  *v80 = v77;
  v80[1] = 0x3FE0000000000000;
  v80[2] = 0;
  v80[3] = 0;
  v81 = v104;
  sub_2167C5834(v79, v104, &qword_27CABBC90);
  v82 = v105;
  sub_21670DC68(v81, v105);
  v83 = v106;
  *v106 = 0;
  *(v83 + 8) = 0;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBD00);
  sub_21670DC68(v82, v83 + *(v84 + 48));
  v85 = v83 + *(v84 + 64);
  *v85 = 0;
  v85[8] = 0;
  sub_216699778(v81, &qword_27CABBC90);
  return sub_216699778(v82, &qword_27CABBC90);
}

uint64_t sub_2168EEC18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for MenuContext(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v25 - v8;
  v10 = (a1 + *(type metadata accessor for SearchResultsQueryContextView(0) + 20));
  v11 = v10[1];
  if (v11)
  {
    v12 = *v10;
    v27 = v11;
    v28 = v12;
  }

  else
  {
    v27 = 0xE000000000000000;
    v28 = 0;
  }

  v13 = *(a1 + 56);
  sub_21700DF14();
  v26 = sub_2169FD4B4(v13);
  v14 = type metadata accessor for ContentDescriptor();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v14);
  v25 = 0x8000000217084180;
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  swift_storeEnumTagMultiPayload();
  ContextMenu = type metadata accessor for SearchQueryContextMenu();
  v16 = a2 + ContextMenu[7];
  sub_216683A80(v9, v16, &qword_27CAB6A00);
  v17 = type metadata accessor for MenuConfiguration(0);
  sub_2168F2134(v6, v16 + v17[5]);
  v18 = (v16 + v17[6]);
  *v18 = 0;
  v18[1] = 0;
  *(v16 + v17[7]) = 0;
  sub_216683A80(v29, v16 + v17[8], &qword_27CAB6DB0);
  sub_2168F24A4(v6, type metadata accessor for MenuContext);
  sub_216699778(v29, &qword_27CAB6DB0);
  sub_216699778(v9, &qword_27CAB6A00);
  v19 = (v16 + v17[9]);
  *v19 = 0xD000000000000016;
  v19[1] = v25;
  type metadata accessor for MenuBuilder();
  sub_2168F20EC(qword_280E45220, type metadata accessor for MenuBuilder);
  *a2 = sub_217008CF4();
  a2[1] = v20;
  v21 = ContextMenu[5];
  *(a2 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  result = swift_storeEnumTagMultiPayload();
  v23 = (a2 + ContextMenu[6]);
  v24 = v27;
  *v23 = v28;
  v23[1] = v24;
  v23[2] = v26;
  return result;
}

uint64_t sub_2168EEF24@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_2170093C4();
  *(a1 + 8) = 0x4018000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBD28);
  return sub_2168EEF78(v1, (a1 + *(v3 + 44)));
}

uint64_t sub_2168EEF78@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v162 = a2;
  v3 = sub_2170080D4();
  v142 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v141 = &v133 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v140 = &v133 - v6;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBD30);
  MEMORY[0x28223BE20](v143);
  v139 = &v133 - v7;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBD38);
  MEMORY[0x28223BE20](v160);
  v144 = &v133 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBD40);
  MEMORY[0x28223BE20](v9 - 8);
  v161 = &v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v159 = &v133 - v12;
  Context = type metadata accessor for SearchResultsQueryContextView.TextViewContentView(0);
  MEMORY[0x28223BE20](Context);
  v146 = &v133 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBD48);
  MEMORY[0x28223BE20](v15);
  v17 = &v133 - v16;
  v18 = type metadata accessor for SearchResultsQueryContextView.TextView(0);
  v19 = v18 - 8;
  v147 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v148 = v20;
  v149 = &v133 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBD50);
  MEMORY[0x28223BE20](v21);
  v136 = &v133 - v22;
  v165 = sub_217005C64();
  v167 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v164 = &v133 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v135 = &v133 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v133 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBD58);
  MEMORY[0x28223BE20](v29 - 8);
  v158 = &v133 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v168 = &v133 - v32;
  v33 = *(v19 + 32);
  v166 = a1;
  v34 = a1 + v33;
  v35 = *(a1 + v33 + 32);
  sub_21700B3B4();
  sub_2170083C4();
  v153 = v175;
  v152 = v177;
  v151 = v179;
  v150 = v180;
  v174 = 1;
  v173 = v176;
  v172 = v178;
  v36 = *(v34 + 8);
  v163 = v34;
  if (v36)
  {
    v137 = v21;
    sub_21700DF14();
    v37 = sub_21700A074();
    v138 = v17;
    v38 = v28;
    v40 = v39;
    v42 = v41;
    v145 = v15;

    sub_217009EA4();
    v157 = sub_21700A094();
    v156 = v43;
    v44 = Context;
    v45 = v35;
    v46 = v3;
    v48 = v47;
    v155 = v49;

    v50 = v37;
    v21 = v137;
    v51 = v40;
    v28 = v38;
    v17 = v138;
    sub_21678817C(v50, v51, v42 & 1);
    v15 = v145;

    v52 = v48 & 1;
    v3 = v46;
    v35 = v45;
    Context = v44;
    v154 = v52;
  }

  else
  {
    v157 = 0;
    v156 = 0;
    v154 = 0;
    v155 = 0;
  }

  if (v35 == 2 || (v35 & 1) == 0)
  {
    v75 = v163;
    v77 = v146;
    sub_2168F2134(v163, v146);
    sub_2168F2134(v77, v17);
    swift_storeEnumTagMultiPayload();
    sub_2168F23EC();
    sub_2168F20EC(&qword_27CABBD78, type metadata accessor for SearchResultsQueryContextView.TextViewContentView);
    sub_217009554();
    sub_2168F24A4(v77, type metadata accessor for SearchResultsQueryContextView.TextViewContentView);
  }

  else
  {
    v137 = Context;
    v53 = *(v163 + 24);
    v181 = *(v163 + 16);
    v182 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBD88);
    swift_allocObject();
    sub_21700DF14();
    sub_217006564();
    sub_217006554();

    v54 = *(v167 + 16);
    LODWORD(v146) = v35;
    v55 = v165;
    v54(v135, v28, v165);
    v56 = sub_21700A164();
    v58 = v57;
    v138 = v28;
    v60 = v59;
    v61 = v21;
    sub_217009D54();
    v62 = sub_21700A094();
    v145 = v15;
    v63 = v62;
    v134 = v64;
    HIDWORD(v133) = v65;
    v135 = v66;

    sub_21678817C(v56, v58, v60 & 1);

    KeyPath = swift_getKeyPath();
    v68 = swift_getKeyPath();
    v69 = v149;
    sub_2168F2134(v166, v149);
    v70 = (*(v147 + 80) + 16) & ~*(v147 + 80);
    v71 = swift_allocObject();
    sub_2168F29F4(v69, v71 + v70);
    v72 = v136;
    v73 = (v136 + *(v61 + 36));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBD70);
    sub_2170084D4();
    *v73 = v68;
    v74 = v134;
    *v72 = v63;
    *(v72 + 8) = v74;
    *(v72 + 16) = BYTE4(v133) & 1;
    *(v72 + 24) = v135;
    *(v72 + 32) = KeyPath;
    *(v72 + 40) = 0;
    *(v72 + 48) = 1;
    sub_216683A80(v72, v17, &qword_27CABBD50);
    swift_storeEnumTagMultiPayload();
    sub_2168F23EC();
    sub_2168F20EC(&qword_27CABBD78, type metadata accessor for SearchResultsQueryContextView.TextViewContentView);
    v75 = v163;
    v28 = v138;
    sub_217009554();
    sub_216699778(v72, &qword_27CABBD50);
    v76 = v55;
    v35 = v146;
    (*(v167 + 8))(v28, v76);
  }

  v78 = *(v75 + 48);
  if (v78)
  {
    LODWORD(v146) = v35;
    v181 = *(v75 + 40);
    v182 = v78;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBD88);
    swift_allocObject();
    sub_21700DF14();
    sub_217006564();
    v79 = v164;
    sub_217006554();

    (*(v167 + 16))(v28, v79, v165);
    v163 = sub_21700A164();
    v145 = v80;
    v82 = v81;
    v83 = v140;
    sub_216C0C924(v163, v80, v81, v84, v85, v86, v87, v88, v133, v134, v135, v136, v137, v84, v139, v140, v141, v142, v143, v144);
    v89 = v142;
    v90 = v141;
    (*(v142 + 104))(v141, *MEMORY[0x277CDF3C0], v3);
    v91 = sub_2170080C4();
    v92 = *(v89 + 8);
    v92(v90, v3);
    v92(v83, v3);
    if (v91)
    {
      v93 = sub_217009834();
    }

    else
    {
      v93 = sub_217009824();
    }

    v95 = v93;
    v142 = swift_getKeyPath();
    LODWORD(v181) = v95;
    v141 = sub_2170083D4();
    v140 = sub_217009E64();
    v96 = swift_getKeyPath();
    v97 = v82 & 1;
    v170 = v82 & 1;
    v98 = sub_217009824();
    v99 = swift_getKeyPath();
    v171 = 0;
    LOBYTE(v95) = sub_217009C94();
    sub_217007F24();
    v101 = v100;
    v103 = v102;
    v105 = v104;
    v107 = v106;
    LOBYTE(v181) = 0;
    v108 = swift_getKeyPath();
    v109 = v149;
    sub_2168F2134(v166, v149);
    v110 = (*(v147 + 80) + 16) & ~*(v147 + 80);
    v111 = swift_allocObject();
    sub_2168F29F4(v109, v111 + v110);
    v112 = v139;
    v113 = (v139 + *(v143 + 36));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBD70);
    sub_2170084D4();
    *v113 = v108;
    v114 = v145;
    *v112 = v163;
    *(v112 + 8) = v114;
    *(v112 + 16) = v97;
    v115 = v142;
    *(v112 + 24) = v138;
    *(v112 + 32) = v115;
    *(v112 + 40) = v141;
    *(v112 + 48) = v96;
    *(v112 + 56) = v140;
    *(v112 + 64) = v98;
    *(v112 + 72) = v99;
    *(v112 + 80) = 2;
    *(v112 + 88) = 0;
    *(v112 + 96) = v95;
    *(v112 + 104) = v101;
    *(v112 + 112) = v103;
    *(v112 + 120) = v105;
    *(v112 + 128) = v107;
    *(v112 + 136) = 0;
    sub_2168F2500();
    v116 = v144;
    sub_21700A954();
    sub_216699778(v112, &qword_27CABBD30);
    (*(v167 + 8))(v164, v165);
    v94 = v159;
    sub_2167C5834(v116, v159, &qword_27CABBD38);
    __swift_storeEnumTagSinglePayload(v94, 0, 1, v160);
  }

  else
  {
    v94 = v159;
    __swift_storeEnumTagSinglePayload(v159, 1, 1, v160);
  }

  sub_21700B3B4();
  sub_2170083C4();
  v167 = v181;
  v166 = v183;
  v165 = v185;
  v164 = v186;
  v171 = 1;
  v170 = v182;
  v169 = v184;
  v117 = v174;
  v118 = v173;
  v119 = v172;
  v120 = v158;
  sub_216683A80(v168, v158, &qword_27CABBD58);
  v121 = v161;
  sub_216683A80(v94, v161, &qword_27CABBD40);
  v122 = v171;
  LODWORD(v160) = v170;
  LODWORD(v163) = v169;
  v123 = v162;
  *v162 = 0;
  *(v123 + 8) = v117;
  v123[2] = v153;
  *(v123 + 24) = v118;
  v123[4] = v152;
  *(v123 + 40) = v119;
  v124 = v150;
  v123[6] = v151;
  v123[7] = v124;
  v125 = v157;
  v126 = v156;
  v123[8] = v157;
  v123[9] = v126;
  v127 = v154;
  v128 = v155;
  v123[10] = v154;
  v123[11] = v128;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBD80);
  sub_216683A80(v120, v123 + v129[16], &qword_27CABBD58);
  sub_216683A80(v121, v123 + v129[20], &qword_27CABBD40);
  v130 = v123 + v129[24];
  *v130 = 0;
  v130[8] = v122;
  *(v130 + 2) = v167;
  v130[24] = v160;
  *(v130 + 4) = v166;
  v130[40] = v163;
  v131 = v164;
  *(v130 + 6) = v165;
  *(v130 + 7) = v131;
  sub_2167770D0(v125, v126, v127, v128);
  sub_216699778(v94, &qword_27CABBD40);
  sub_216699778(v168, &qword_27CABBD58);
  sub_216699778(v121, &qword_27CABBD40);
  sub_216699778(v120, &qword_27CABBD58);
  return sub_2167C4DF0(v125, v126, v127, v128);
}

uint64_t sub_2168F0114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v82 = a2;
  v86 = a3;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8148);
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v71 = &v70 - v4;
  v5 = sub_21700DA84();
  v84 = *(v5 - 8);
  v85 = v5;
  MEMORY[0x28223BE20](v5);
  v70 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v83 = &v70 - v8;
  v80 = sub_21700CFB4();
  v9 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v78 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_21700D704();
  v77 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v74 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v93 = &v70 - v13;
  v76 = sub_21700D284();
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_217005EF4();
  v91 = *(v16 - 8);
  v92 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v90 = &v70 - v20;
  v81 = type metadata accessor for OpenExternalURLAction();
  MEMORY[0x28223BE20](v81);
  v88 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_217005AB4();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v70 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v70 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BD0);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = &v70 - v33;
  sub_2170059E4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v34, 1, v22);
  v87 = v31;
  v89 = v34;
  if (!EnumTagSinglePayload)
  {
    sub_217005A64();
    v34 = v89;
    v31 = v87;
  }

  if (__swift_getEnumTagSinglePayload(v34, 1, v22))
  {
    v36 = v92;
    __swift_storeEnumTagSinglePayload(v31, 1, 1, v92);
  }

  else
  {
    (*(v23 + 16))(v25, v34, v22);
    sub_2170059F4();
    (*(v23 + 8))(v25, v22);
    v36 = v92;
  }

  v37 = v91;
  (*(v91 + 16))(v90, a1, v36);
  sub_21700D6F4();
  v38 = MEMORY[0x277D837D0];
  v98 = MEMORY[0x277D837D0];
  *&v97 = 0x657461676976616ELL;
  *(&v97 + 1) = 0xE800000000000000;
  sub_2166EF9C4(&v97, &v94);
  v39 = MEMORY[0x277D84F98];
  swift_isUniquelyReferenced_nonNull_native();
  v99 = v39;
  sub_2166EF9D4();
  v40 = v99;
  v98 = v38;
  *&v97 = 0xD000000000000012;
  *(&v97 + 1) = 0x80000002170801F0;
  sub_2166EF9C4(&v97, &v94);
  swift_isUniquelyReferenced_nonNull_native();
  v99 = v40;
  sub_2166EF9D4();
  v41 = v99;
  sub_216683A80(v31, v28, &qword_27CABA820);
  if (__swift_getEnumTagSinglePayload(v28, 1, v36) == 1)
  {
    sub_216699778(v28, &qword_27CABA820);
  }

  else
  {
    (*(v37 + 32))(v18, v28, v36);
    v42 = sub_217005DE4();
    v98 = v38;
    *&v97 = v42;
    *(&v97 + 1) = v43;
    sub_2166EF9C4(&v97, &v94);
    swift_isUniquelyReferenced_nonNull_native();
    v99 = v41;
    sub_2166EF9D4();
    v41 = v99;
    (*(v37 + 8))(v18, v36);
  }

  v44 = v88;
  if (qword_280E46040 != -1)
  {
    swift_once();
  }

  v45 = sub_21700CF84();
  v46 = __swift_project_value_buffer(v45, qword_280E73DB0);
  v47 = v78;
  MEMORY[0x21CE9DD70](0x656372756F53, 0xE600000000000000, 1802398060, 0xE400000000000000, v41, v46);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
  v48 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_217013DA0;
  v50 = v49 + v48;
  v51 = v80;
  (*(v9 + 16))(v50, v47, v80);
  v52 = v77;
  v53 = v93;
  v54 = v79;
  (*(v77 + 16))(v74, v93, v79);
  sub_21700D244();
  (*(v9 + 8))(v47, v51);
  (*(v52 + 8))(v53, v54);
  (*(v91 + 32))(v44, v90, v92);
  v55 = v81;
  (*(v75 + 32))(v44 + *(v81 + 24), v15, v76);
  *(v44 + *(v55 + 20)) = 0;
  type metadata accessor for SearchResultsQueryContextView.TextView(0);
  type metadata accessor for ObjectGraph();
  v56 = v83;
  v57 = v85;
  sub_21700E094();
  type metadata accessor for MusicPageMetricsProvider();
  sub_21700E094();
  v58 = v97;
  v59 = OBJC_IVAR____TtC7MusicUI24MusicPageMetricsProvider_pageMetrics;
  swift_beginAccess();
  v60 = sub_21700D194();
  if (__swift_getEnumTagSinglePayload(v58 + v59, 1, v60))
  {
    swift_endAccess();
    v61 = MEMORY[0x277D837D0];
LABEL_13:
    v62 = sub_21700E384();

    goto LABEL_15;
  }

  v62 = sub_21700D0F4();
  swift_endAccess();
  v61 = MEMORY[0x277D837D0];
  if (!v62)
  {
    goto LABEL_13;
  }

LABEL_15:
  v98 = v61;
  *&v97 = 0x686372616553;
  *(&v97 + 1) = 0xE600000000000000;
  sub_2166EF9C4(&v97, &v94);
  swift_isUniquelyReferenced_nonNull_native();
  v99 = v62;
  sub_2166EF9D4();
  v63 = v99;
  sub_216C0C534(&v97);
  if (v98)
  {
    __swift_project_boxed_opaque_existential_1(&v97, v98);
    v95 = v55;
    v96 = sub_2168F20EC(qword_280E3A6B0, type metadata accessor for OpenExternalURLAction);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v94);
    sub_2168F2134(v44, boxed_opaque_existential_1);
    v99 = v63;
    v65 = v71;
    sub_21700DA44();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
    v66 = v70;
    sub_21700DA24();
    (*(v72 + 8))(v65, v73);

    sub_217007534();
    v67 = v84;
    v68 = v66;
    v44 = v88;
    (*(v84 + 8))(v68, v57);
    __swift_destroy_boxed_opaque_existential_1Tm(&v94);
    __swift_destroy_boxed_opaque_existential_1Tm(&v97);
  }

  else
  {

    sub_216699778(&v97, &qword_27CAB7310);
    v67 = v84;
  }

  sub_2170084C4();

  (*(v67 + 8))(v56, v57);
  sub_2168F24A4(v44, type metadata accessor for OpenExternalURLAction);
  sub_216699778(v87, &qword_27CABA820);
  return sub_216699778(v89, &qword_27CAB6BD0);
}

uint64_t sub_2168F0E30@<X0>(uint64_t a1@<X8>)
{
  v69 = sub_21700CFB4();
  v3 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v66 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_217005EF4();
  v52 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_21700D704();
  v53 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v54 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v52 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v52 - v16;
  v18 = sub_21700D284();
  v67 = *(v18 - 8);
  v68 = v18;
  MEMORY[0x28223BE20](v18);
  v65 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v1[1];
  v58 = *v1;
  v21 = v1[3];
  v60 = v1[2];
  v22 = v1[6];
  v63 = v1[5];
  v56 = v1;
  v64 = v22;
  sub_21700DF14();
  v59 = v20;
  sub_21700DF14();
  v61 = v21;
  sub_21700DF14();
  v57 = sub_217009E94();
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v5);
  v23 = v11;
  sub_21700D6F4();
  v24 = MEMORY[0x277D837D0];
  v73 = MEMORY[0x277D837D0];
  *&v72 = 0x7463656C6573;
  *(&v72 + 1) = 0xE600000000000000;
  sub_2166EF9C4(&v72, v71);
  v25 = MEMORY[0x277D84F98];
  swift_isUniquelyReferenced_nonNull_native();
  v70 = v25;
  sub_2166EF9D4();
  v26 = v70;
  v73 = v24;
  *&v72 = 0xD000000000000012;
  *(&v72 + 1) = 0x80000002170801F0;
  sub_2166EF9C4(&v72, v71);
  swift_isUniquelyReferenced_nonNull_native();
  v70 = v26;
  sub_2166EF9D4();
  v27 = v70;
  v55 = v17;
  sub_216683A80(v17, v14, &qword_27CABA820);
  if (__swift_getEnumTagSinglePayload(v14, 1, v5) == 1)
  {
    sub_216699778(v14, &qword_27CABA820);
  }

  else
  {
    v28 = v52;
    (*(v52 + 32))(v7, v14, v5);
    v29 = sub_217005DE4();
    v73 = v24;
    *&v72 = v29;
    *(&v72 + 1) = v30;
    sub_2166EF9C4(&v72, v71);
    swift_isUniquelyReferenced_nonNull_native();
    v70 = v27;
    sub_2166EF9D4();
    v27 = v70;
    (*(v28 + 8))(v7, v5);
  }

  if (qword_280E46040 != -1)
  {
    swift_once();
  }

  v31 = sub_21700CF84();
  v32 = __swift_project_value_buffer(v31, qword_280E73DB0);
  v33 = v66;
  MEMORY[0x21CE9DD70](1701998413, 0xE400000000000000, 0x6E6F74747562, 0xE600000000000000, v27, v32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
  v34 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_217013DA0;
  v36 = v35 + v34;
  v37 = v69;
  (*(v3 + 16))(v36, v33, v69);
  v38 = v53;
  v39 = v62;
  (*(v53 + 16))(v54, v23, v62);
  v40 = v65;
  sub_21700D244();
  (*(v3 + 8))(v33, v37);
  (*(v38 + 8))(v23, v39);
  sub_216699778(v55, &qword_27CABA820);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE08);
  v42 = a1 + v41[25];
  LOBYTE(v71[0]) = 0;
  sub_21700AEA4();
  v43 = *(&v72 + 1);
  *v42 = v72;
  *(v42 + 8) = v43;
  v44 = v41[26];
  *(a1 + v44) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE10);
  swift_storeEnumTagMultiPayload();
  sub_2168F15B4(v56, a1);
  *(a1 + v41[17]) = 1;
  *(a1 + v41[18]) = 1;
  v45 = (a1 + v41[20]);
  v46 = v59;
  *v45 = v58;
  v45[1] = v46;
  v47 = (a1 + v41[19]);
  v48 = v61;
  *v47 = v60;
  v47[1] = v48;
  *(a1 + v41[21]) = 3;
  *(a1 + v41[23]) = v57;
  v49 = (a1 + v41[22]);
  v50 = v64;
  *v49 = v63;
  v49[1] = v50;
  return (*(v67 + 32))(a1 + v41[24], v40, v68);
}

uint64_t sub_2168F15B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_21700D284();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ModalPresentationDescriptor();
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE18);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE20);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v25 - v17;
  v19 = *(a1 + 16);
  v20 = *(a1 + 24);
  sub_21700DF14();
  sub_21700D234();
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v3);
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = v19;
  *(v9 + 5) = v20;
  v9[48] = 8;
  *(v9 + 7) = 0;
  v9[64] = 0;
  sub_216683A80(v15, v12, &qword_27CABBE18);
  if (__swift_getEnumTagSinglePayload(v12, 1, v3) == 1)
  {
    sub_21700D234();
    sub_216699778(v15, &qword_27CABBE18);
    if (__swift_getEnumTagSinglePayload(v12, 1, v3) != 1)
    {
      sub_216699778(v12, &qword_27CABBE18);
    }
  }

  else
  {
    sub_216699778(v15, &qword_27CABBE18);
    (*(v4 + 32))(v6, v12, v3);
  }

  (*(v4 + 32))(&v9[*(v7 + 40)], v6, v3);
  sub_2168F29F4(v9, v18);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v7);
  v21 = sub_21700AD34();
  v22 = sub_217009E94();
  v23 = v26;
  sub_2167C5834(v18, v26, &qword_27CABBE20);
  result = type metadata accessor for ParagraphView(0);
  *(v23 + *(result + 20)) = v21;
  *(v23 + *(result + 24)) = v22;
  return result;
}

uint64_t sub_2168F1924()
{
  result = sub_217009E24();
  qword_27CABBBF0 = result;
  return result;
}

uint64_t sub_2168F196C(uint64_t a1, SEL *a2, uint64_t *a3)
{
  v4 = [objc_opt_self() *a2];
  result = sub_21700AC44();
  *a3 = result;
  return result;
}

unint64_t sub_2168F19B8()
{
  result = qword_27CABBC20;
  if (!qword_27CABBC20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBC08);
    sub_21669E098(&qword_27CABBC28, &unk_27CABBC30);
    sub_21669E098(&qword_280E2A8D8, &qword_27CAB8860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABBC20);
  }

  return result;
}

unint64_t sub_2168F1A9C()
{
  result = qword_27CABBC38;
  if (!qword_27CABBC38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBC10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBC08);
    sub_2168F19B8();
    swift_getOpaqueTypeConformance2();
    sub_2167B8C60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABBC38);
  }

  return result;
}

unint64_t sub_2168F1B8C()
{
  result = qword_27CABBCA8;
  if (!qword_27CABBCA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBC78);
    sub_2168F1C18();
    sub_2168F2098();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABBCA8);
  }

  return result;
}

unint64_t sub_2168F1C18()
{
  result = qword_27CABBCB0;
  if (!qword_27CABBCB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBC70);
    sub_2168F1CD0();
    sub_21669E098(&qword_280E2B390, &qword_27CAB7438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABBCB0);
  }

  return result;
}

unint64_t sub_2168F1CD0()
{
  result = qword_27CABBCB8;
  if (!qword_27CABBCB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBC68);
    sub_2168F1D88();
    sub_21669E098(&qword_280E2A808, &qword_27CAB72E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABBCB8);
  }

  return result;
}

unint64_t sub_2168F1D88()
{
  result = qword_27CABBCC0;
  if (!qword_27CABBCC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBC60);
    sub_2168F1E40();
    sub_21669E098(&qword_280E2A840, &qword_27CAB7BE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABBCC0);
  }

  return result;
}

unint64_t sub_2168F1E40()
{
  result = qword_27CABBCC8;
  if (!qword_27CABBCC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBC58);
    sub_2168F2268(&qword_27CABBCD0, &unk_27CABBC50, &unk_2170257F0, sub_2168F1EF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABBCC8);
  }

  return result;
}

unint64_t sub_2168F1EF8()
{
  result = qword_27CABBCD8;
  if (!qword_27CABBCD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBCA0);
    sub_2168F1FB0();
    sub_21669E098(&qword_280E2A6F8, &qword_27CAB7638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABBCD8);
  }

  return result;
}

unint64_t sub_2168F1FB0()
{
  result = qword_27CABBCE0;
  if (!qword_27CABBCE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBC98);
    sub_2168F20EC(&qword_27CABBCE8, type metadata accessor for SearchResultsQueryContextView.TextView);
    sub_21669E098(&qword_280E2A720, &qword_27CAB7670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABBCE0);
  }

  return result;
}

unint64_t sub_2168F2098()
{
  result = qword_27CABBCF0;
  if (!qword_27CABBCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABBCF0);
  }

  return result;
}

uint64_t sub_2168F20EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2168F2134(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_110();
  v4(v3);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

void sub_2168F21B4()
{
  sub_216820EBC();
  if (v0 <= 0x3F)
  {
    sub_21680D428();
    if (v1 <= 0x3F)
    {
      type metadata accessor for JSSearchResultsPage.QueryContext(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for ObjectGraph();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2168F2268(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_100(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2168F22E8()
{
  result = qword_27CABBD20;
  if (!qword_27CABBD20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBC40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBC10);
    sub_2168F1A9C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABBD20);
  }

  return result;
}

unint64_t sub_2168F23EC()
{
  result = qword_27CABBD60;
  if (!qword_27CABBD60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBD50);
    sub_21680DC54();
    sub_21669E098(&qword_27CABBD68, &unk_27CABBD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABBD60);
  }

  return result;
}

uint64_t sub_2168F24A4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_2168F2500()
{
  result = qword_27CABBD90;
  if (!qword_27CABBD90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBD30);
    sub_2168F2268(&qword_27CABBD98, &unk_27CABBDA0, &unk_217025A78, sub_2168F25E4);
    sub_21669E098(&qword_27CABBD68, &unk_27CABBD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABBD90);
  }

  return result;
}

unint64_t sub_2168F25E4()
{
  result = qword_27CABBDA8;
  if (!qword_27CABBDA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBDB0);
    sub_2168F269C();
    sub_21669E098(&qword_280E2A6F8, &qword_27CAB7638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABBDA8);
  }

  return result;
}

unint64_t sub_2168F269C()
{
  result = qword_27CABBDB8;
  if (!qword_27CABBDB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBDC0);
    sub_2168F2754();
    sub_21669E098(&qword_280E2A830, &unk_27CAB8870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABBDB8);
  }

  return result;
}

unint64_t sub_2168F2754()
{
  result = qword_27CABBDC8;
  if (!qword_27CABBDC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBDD0);
    sub_2168F280C();
    sub_21669E098(&qword_280E2A720, &qword_27CAB7670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABBDC8);
  }

  return result;
}

unint64_t sub_2168F280C()
{
  result = qword_27CABBDD8;
  if (!qword_27CABBDD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBDE0);
    sub_21669E098(&qword_27CAB7CD8, &qword_27CAB7CE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABBDD8);
  }

  return result;
}

uint64_t sub_2168F28C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SearchResultsQueryContextView.TextView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2168F0114(a1, v6, a2);
}

uint64_t sub_2168F296C()
{
  result = type metadata accessor for JSSearchResultsPage.QueryContext(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2168F29F4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_110();
  v4(v3);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

uint64_t sub_2168F2A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a2;
  v46 = a3;
  sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v47 = v5;
  v48 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  v43 = v6;
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v39 = v8;
  v40 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_0();
  v45 = v9;
  v51 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v42 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v39 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v39 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE90);
  MEMORY[0x28223BE20](v20);
  v22 = (&v39 - v21);
  v50 = a1;
  sub_21700CE04();
  sub_21700CE04();
  v23 = sub_21700CDB4();
  v25 = v24;
  v26 = *(v11 + 8);
  v27 = v16;
  v28 = v51;
  v26(v27, v51);
  if (v25)
  {
    v41 = v26;
    (*(v11 + 32))(v22 + *(v20 + 36), v19, v28);
    *v22 = v23;
    v22[1] = v25;
    v29 = (v46 + *(type metadata accessor for IntentAction() + 20));
    v29[3] = v20;
    v29[4] = sub_2168F2FA0();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
    sub_2168F3004(v22, boxed_opaque_existential_1);
    v31 = v50;
    sub_21700CE04();
    v33 = v47;
    v32 = v48;
    v34 = v49;
    (*(v47 + 16))(v43, v49, v48);
    v35 = v44;
    sub_21700D224();
    (*(v33 + 8))(v34, v32);
    v41(v31, v51);
    sub_21669987C(v22, &qword_27CABBE90);
    if (v35)
    {
      return sub_21669987C(v29, &qword_27CABBEA0);
    }

    else
    {
      return (*(v39 + 32))(v46, v45, v40);
    }
  }

  else
  {
    v37 = sub_21700E2E4();
    sub_2167B1EA4();
    swift_allocError();
    *v38 = 0x646E696B24;
    v38[1] = 0xE500000000000000;
    v38[2] = v20;
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x277D22530], v37);
    swift_willThrow();
    v26(v19, v28);
    (*(v47 + 8))(v49, v48);
    return (v26)(v50, v28);
  }
}

unint64_t sub_2168F2FA0()
{
  result = qword_27CABBE98;
  if (!qword_27CABBE98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBE90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABBE98);
  }

  return result;
}

uint64_t sub_2168F3004(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2168F309C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v43 = a3;
  v46 = a2;
  v45 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v39 = v10;
  v40 = v9;
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v44 = a1;
  sub_21700CE04();
  v20 = sub_21700CDB4();
  v22 = v21;
  v23 = v19;
  v24 = *(v15 + 8);
  v24(v23, v13);
  if (v22)
  {
    v41 = v24;
    v25 = v43;
    v26 = v44;
    *v43 = v20;
    v25[1] = v22;
    sub_21700CE04();
    (*(v5 + 16))(v8, v46, v45);
    v27 = v42;
    sub_21700D224();
    v28 = OUTLINED_FUNCTION_1_23();
    v29(v28);
    v41(v26, v13);
    if (v27)
    {
    }

    else
    {
      v37 = type metadata accessor for UnblockUserAction();
      return (*(v39 + 32))(v43 + *(v37 + 20), v12, v40);
    }
  }

  else
  {
    v31 = sub_21700E2E4();
    sub_2167B1EA4();
    swift_allocError();
    v33 = v32;
    v34 = type metadata accessor for UnblockUserAction();
    *v33 = 0x72506C6169636F73;
    v33[1] = 0xEF4449656C69666FLL;
    v33[2] = v34;
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D22530], v31);
    swift_willThrow();
    v35 = OUTLINED_FUNCTION_1_23();
    v36(v35);
    return (v24)(v44, v13);
  }
}

uint64_t sub_2168F34B4@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v73 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_1_0();
  v65 = v4;
  MEMORY[0x28223BE20](v5);
  v71 = v61 - v6;
  v76 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v70 = v7;
  MEMORY[0x28223BE20](v8);
  v10 = v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_0();
  v64 = v15;
  MEMORY[0x28223BE20](v16);
  v18 = v61 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = v61 - v20;
  sub_21700CE04();
  v22 = sub_21700CDB4();
  v24 = v23;
  v26 = *(v13 + 8);
  v25 = v13 + 8;
  v72 = v11;
  v69 = v26;
  v26(v21, v11);
  if (v24)
  {
    __dst[0] = v22;
    __dst[1] = v24;
    sub_21700F364();
    type metadata accessor for Artwork();
    sub_21700CE04();
    v67 = *(v70 + 16);
    v68 = v70 + 16;
    v67(v10, v73, v76);
    v66 = type metadata accessor for RecentSearchLockup();
    sub_2166D5D50(&qword_280E2BF60, type metadata accessor for Artwork);
    sub_21700D734();
    OUTLINED_FUNCTION_7_33();
    v27 = sub_21700CDB4();
    v29 = v28;
    v30 = v72;
    v31 = v69;
    v69(v18, v72);
    a2[10] = v27;
    a2[11] = v29;
    sub_21700CE04();
    v32 = sub_21700CDB4();
    v34 = v33;
    v31(v18, v30);
    a2[12] = v32;
    a2[13] = v34;
    v35 = type metadata accessor for ContentDescriptor();
    v63 = a2;
    v61[1] = v25;
    v36 = v35;
    OUTLINED_FUNCTION_2_0();
    sub_21700CE04();
    v61[0] = v10;
    OUTLINED_FUNCTION_3_51();
    v37();
    sub_2166D5D50(qword_280E40390, type metadata accessor for ContentDescriptor);
    v38 = v71;
    v62 = v36;
    v39 = v63;
    sub_21700D734();
    sub_216681B64(v38, &v39[*(v66 + 52)], &qword_27CAB6A00);
    sub_21700CE04();
    sub_21700D2E4();
    v40 = v72;
    v31(v18, v72);
    v41 = v64;
    sub_21700CE04();
    LOBYTE(v32) = sub_21700CD44();
    v31(v41, v40);
    v39[112] = v32 & 1;
    OUTLINED_FUNCTION_7_33();
    sub_21700D2E4();
    v31(v18, v40);
    sub_21700CE04();
    sub_2168F3E64();
    sub_21700CCC4();
    v31(v18, v40);
    v39[113] = __dst[0];
    sub_21700D7A4();
    OUTLINED_FUNCTION_2_0();
    sub_21700CE04();
    OUTLINED_FUNCTION_3_51();
    v42();
    sub_21700D734();
    v43 = v65;
    sub_216681B64(v71, v65, &qword_27CAB6A00);
    if (__swift_getEnumTagSinglePayload(v43, 1, v62) == 1)
    {
      v44 = OUTLINED_FUNCTION_0_65();
      v45(v44);
      OUTLINED_FUNCTION_1_53();
      v46();
      sub_2168F3EB8(v71);
      result = sub_2168F3EB8(v43);
      v48 = 1;
    }

    else
    {
      memcpy(__dst, (v43 + 8), 0x69uLL);
      sub_21686BC90(__dst, v74);
      sub_2168F3F20(v43);
      memcpy(v74, __dst, 0x69uLL);
      v56 = ContentIdentifiers.identifierKinds.getter();
      sub_21686BCEC(__dst);
      v57 = sub_216CE1254(0, v56);

      v58 = OUTLINED_FUNCTION_0_65();
      v59(v58);
      OUTLINED_FUNCTION_1_53();
      v60();
      result = sub_2168F3EB8(v71);
      v48 = !v57;
    }

    v39[114] = v48 & 1;
  }

  else
  {
    v49 = sub_21700E2E4();
    sub_2166D5D50(&qword_280E2A0F8, MEMORY[0x277D22548]);
    swift_allocError();
    v51 = v50;
    v52 = type metadata accessor for RecentSearchLockup();
    *v51 = 25705;
    v51[1] = 0xE200000000000000;
    v51[2] = v52;
    (*(*(v49 - 8) + 104))(v51, *MEMORY[0x277D22530], v49);
    swift_willThrow();
    v53 = OUTLINED_FUNCTION_0_65();
    v54(v53);
    OUTLINED_FUNCTION_1_53();
    return v55();
  }

  return result;
}

uint64_t sub_2168F3E0C(uint64_t a1)
{
  result = sub_2166D5D50(qword_280E3E960, type metadata accessor for RecentSearchLockup);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2168F3E64()
{
  result = qword_280E2BF68;
  if (!qword_280E2BF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2BF68);
  }

  return result;
}

uint64_t sub_2168F3EB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2168F3F20(uint64_t a1)
{
  v2 = type metadata accessor for ContentDescriptor();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ContainerDetailArtworkView()
{
  result = qword_27CABBEB0;
  if (!qword_27CABBEB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2168F3FF0()
{
  sub_216690C88(319, &qword_280E2BF20, type metadata accessor for Artwork);
  if (v0 <= 0x3F)
  {
    sub_216690C88(319, qword_280E44408, type metadata accessor for VideoArtwork);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2168F40D0@<X0>(uint64_t a1@<X8>)
{
  v177 = a1;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEC0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v3);
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEC8);
  OUTLINED_FUNCTION_1();
  v159 = v4;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v6);
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBED0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v8);
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBED8);
  OUTLINED_FUNCTION_1();
  v163 = v9;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v11);
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEE0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_105();
  v174 = v13;
  sub_21700D8E4();
  OUTLINED_FUNCTION_1();
  v171 = v15;
  v172 = v14;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_0();
  v169 = v16;
  MEMORY[0x28223BE20](v17);
  v170 = &v139 - v18;
  v166 = sub_2170099D4();
  OUTLINED_FUNCTION_1();
  v165 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_70(&v139 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530);
  OUTLINED_FUNCTION_36(v22);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v24);
  v25 = type metadata accessor for ContainerDetailArtworkView();
  OUTLINED_FUNCTION_1();
  v141 = v26;
  MEMORY[0x28223BE20](v27);
  v142 = v28;
  OUTLINED_FUNCTION_70(&v139 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEE8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v30);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEF0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v32);
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEF8);
  OUTLINED_FUNCTION_1();
  v150 = v33;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v35);
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBF00);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v37);
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBF08);
  OUTLINED_FUNCTION_1();
  v154 = v38;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v40);
  v41 = sub_2170071B4();
  OUTLINED_FUNCTION_1();
  v43 = v42;
  MEMORY[0x28223BE20](v44);
  v46 = &v139 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8);
  v48 = OUTLINED_FUNCTION_36(v47);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_1_0();
  v140 = v49;
  MEMORY[0x28223BE20](v50);
  v52 = &v139 - v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBF10);
  OUTLINED_FUNCTION_36(v53);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v54);
  v56 = &v139 - v55;
  v57 = sub_217006EC4();
  OUTLINED_FUNCTION_1();
  v156 = v58;
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_1_0();
  v139 = v60;
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_70(&v139 - v62);
  v145 = v25;
  v63 = *(v25 + 20);
  v164 = v1;
  sub_2166A6E54(v1 + v63, v52, &qword_27CABBEA8);
  v64 = type metadata accessor for VideoArtwork();
  if (__swift_getEnumTagSinglePayload(v52, 1, v64) == 1)
  {
    sub_216697664(v52, &qword_27CABBEA8);
    __swift_storeEnumTagSinglePayload(v56, 1, 1, v57);
LABEL_4:
    sub_216697664(v56, &qword_27CABBF10);
    v66 = v157;
    sub_2168F50D4(v157);
    v67 = (v66 + *(v158 + 36));
    v68 = *(sub_217008B44() + 20);
    v69 = *MEMORY[0x277CE0118];
    sub_217009294();
    OUTLINED_FUNCTION_34();
    (*(v70 + 104))(&v67[v68], v69);
    __asm { FMOV            V0.2D, #10.0 }

    *v67 = _Q0;
    *&v67[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7438) + 36)] = 256;
    sub_2170099A4();
    sub_2168F6264();
    OUTLINED_FUNCTION_11_29();
    v76 = OUTLINED_FUNCTION_10_26();
    v77(v76);
    sub_216697664(v66, &qword_27CABBEC0);
    v78 = sub_216983738(33);
    OUTLINED_FUNCTION_3_52(v78, v79);
    sub_2167B2E14();
    v80 = MEMORY[0x277D837D0];
    v81 = v161;
    OUTLINED_FUNCTION_12_26();

    v82 = OUTLINED_FUNCTION_14_22();
    v83(v82);
    OUTLINED_FUNCTION_7_34();
    sub_216697664(v178, &unk_27CABF7A0);
    OUTLINED_FUNCTION_9_34();
    v181 = v80;
    v179 = 0x636974617473;
    v180 = 0xE600000000000000;
    v84 = v170;
    sub_21700D8C4();
    v85 = v172;
    v86 = *(v171 + 8);
    v86(v67, v172);
    OUTLINED_FUNCTION_9_34();
    v87 = sub_2168F648C();
    v88 = v162;
    v89 = v175;
    sub_21700A204();
    v86(v84, v85);
    sub_216697664(v81, &qword_27CABBED0);
    v90 = v163;
    v91 = v176;
    (*(v163 + 16))(v174, v88, v176);
    swift_storeEnumTagMultiPayload();
    v92 = sub_2168F65AC();
    v179 = v167;
    v180 = v92;
    swift_getOpaqueTypeConformance2();
    v179 = v89;
    v180 = v87;
    swift_getOpaqueTypeConformance2();
    sub_217009554();
    return (*(v90 + 8))(v88, v91);
  }

  sub_217007174();
  sub_216DEE900(v56);
  (*(v43 + 8))(v46, v41);
  OUTLINED_FUNCTION_5_32();
  sub_2168F68F0(v52, v65);
  if (__swift_getEnumTagSinglePayload(v56, 1, v57) == 1)
  {
    goto LABEL_4;
  }

  v94 = v156;
  v95 = *(v156 + 32);
  v96 = v155;
  v95(v155, v56, v57);
  v97 = v139;
  (*(v94 + 16))(v139, v96, v57);
  v98 = v164;
  v99 = v143;
  sub_2168F6758(v164, v143);
  v100 = (*(v141 + 80) + 16) & ~*(v141 + 80);
  v101 = swift_allocObject();
  sub_2168F67BC(v99, v101 + v100);
  v102 = v140;
  sub_2166A6E54(v98 + v63, v140, &qword_27CABBEA8);
  if (__swift_getEnumTagSinglePayload(v102, 1, v64) == 1)
  {
    sub_216697664(v102, &qword_27CABBEA8);
    v103 = sub_21700C444();
    v104 = v146;
    v105 = v146;
    v106 = 1;
  }

  else
  {
    v107 = *(v64 + 20);
    v108 = sub_21700C444();
    OUTLINED_FUNCTION_34();
    v110 = v102 + v107;
    v104 = v146;
    (*(v109 + 16))(v146, v110, v108);
    OUTLINED_FUNCTION_5_32();
    sub_2168F68F0(v102, v111);
    v105 = v104;
    v106 = 0;
    v103 = v108;
  }

  __swift_storeEnumTagSinglePayload(v105, v106, 1, v103);
  v112 = *(v98 + *(v145 + 24));
  v113 = v147;
  v95(v147, v97, v57);
  v114 = v144;
  v115 = (v113 + *(v144 + 36));
  *v115 = sub_2168F6820;
  v115[1] = v101;
  sub_2168F6880(v104, v113 + *(v114 + 40));
  *(v113 + *(v114 + 44)) = v112;
  v116 = v148;
  v117 = (v148 + *(v149 + 36));
  v118 = *(sub_217008B44() + 20);
  v119 = *MEMORY[0x277CE0118];
  sub_217009294();
  OUTLINED_FUNCTION_34();
  (*(v120 + 104))(&v117[v118], v119);
  __asm { FMOV            V0.2D, #10.0 }

  *v117 = _Q0;
  *&v117[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7438) + 36)] = 256;
  sub_21678818C(v113, v116, &qword_27CABBEE8);
  sub_2170099A4();
  sub_2168F6674();
  OUTLINED_FUNCTION_11_29();
  v122 = OUTLINED_FUNCTION_10_26();
  v123(v122);
  sub_216697664(v116, &qword_27CABBEF0);
  v124 = sub_216983738(161);
  OUTLINED_FUNCTION_3_52(v124, v125);
  sub_2167B2E14();
  v126 = MEMORY[0x277D837D0];
  v127 = v152;
  OUTLINED_FUNCTION_12_26();

  v128 = OUTLINED_FUNCTION_14_22();
  v129(v128);
  OUTLINED_FUNCTION_7_34();
  sub_216697664(v178, &unk_27CABF7A0);
  OUTLINED_FUNCTION_9_34();
  v181 = v126;
  v179 = 0x6E6F69746F6DLL;
  v180 = 0xE600000000000000;
  v130 = v170;
  sub_21700D8C4();
  v131 = v172;
  v132 = *(v171 + 8);
  v132(v117, v172);
  OUTLINED_FUNCTION_9_34();
  v133 = sub_2168F65AC();
  v171 = v57;
  v134 = v153;
  v135 = v167;
  sub_21700A204();
  v132(v130, v131);
  sub_216697664(v127, &qword_27CABBF00);
  v136 = v154;
  v137 = v168;
  (*(v154 + 16))(v174, v134, v168);
  swift_storeEnumTagMultiPayload();
  v179 = v135;
  v180 = v133;
  swift_getOpaqueTypeConformance2();
  v138 = sub_2168F648C();
  v179 = v175;
  v180 = v138;
  swift_getOpaqueTypeConformance2();
  sub_217009554();
  (*(v136 + 8))(v134, v137);
  return (*(v156 + 8))(v155, v171);
}

double sub_2168F50D4@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v62 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v58 - v4;
  v6 = sub_21700C444();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  MEMORY[0x28223BE20](v10 - 8);
  v59 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v58 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v58 - v16;
  v69 = sub_217007474();
  v64 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v68 = &v58 - v21;
  MEMORY[0x28223BE20](v22);
  v63 = &v58 - v23;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76F8);
  v24 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v65 = &v58 - v25;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBF38);
  MEMORY[0x28223BE20](v60);
  v66 = &v58 - v26;
  v61 = v2;
  sub_2166A6E54(v2, v14, &qword_27CAB6D60);
  v27 = type metadata accessor for Artwork();
  if (__swift_getEnumTagSinglePayload(v14, 1, v27) == 1)
  {
    sub_216697664(v14, &qword_27CAB6D60);
    v28 = sub_21700C4B4();
    v29 = v17;
    v30 = 1;
  }

  else
  {
    v31 = sub_21700C4B4();
    v58 = v9;
    v32 = v31;
    (*(*(v31 - 8) + 16))(v17, v14, v31);
    sub_2168F68F0(v14, type metadata accessor for Artwork);
    v29 = v17;
    v30 = 0;
    v28 = v32;
    v9 = v58;
  }

  __swift_storeEnumTagSinglePayload(v29, v30, 1, v28);
  type metadata accessor for ContainerDetailArtworkView();
  v33 = v61;
  sub_217007434();
  sub_217007404();
  v34 = *(v64 + 8);
  v34(v19, v69);
  v35 = v59;
  sub_2166A6E54(v33, v59, &qword_27CAB6D60);
  if (__swift_getEnumTagSinglePayload(v35, 1, v27) == 1)
  {
    sub_216697664(v35, &qword_27CAB6D60);
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
    sub_21700C404();
    if (__swift_getEnumTagSinglePayload(v5, 1, v6) != 1)
    {
      sub_216697664(v5, &qword_27CAB7530);
    }
  }

  else
  {
    (*(v7 + 16))(v5, v35 + *(v27 + 20), v6);
    sub_2168F68F0(v35, type metadata accessor for Artwork);
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
    (*(v7 + 32))(v9, v5, v6);
  }

  v36 = v63;
  v37 = v68;
  sub_2170073E4();
  (*(v7 + 8))(v9, v6);
  v38 = v69;
  v34(v37, v69);
  *(swift_allocObject() + 16) = xmmword_217016ED0;
  sub_2167C505C();
  v39 = v65;
  sub_2170073F4();

  v34(v36, v38);
  sub_21700ACC4();
  v40 = sub_21700AD04();

  v41 = v66;
  v42 = &v66[*(v60 + 36)];
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7440);
  v44 = &v42[*(v43 + 36)];
  v45 = *(sub_217008B44() + 20);
  v46 = *MEMORY[0x277CE0118];
  v47 = sub_217009294();
  (*(*(v47 - 8) + 104))(&v44[v45], v46, v47);
  __asm { FMOV            V0.2D, #10.0 }

  *v44 = _Q0;
  *v42 = 0x3FF0000000000000;
  v42[8] = 0;
  *(v42 + 2) = v40;
  v53 = &v42[*(v43 + 40)];
  *v53 = swift_getKeyPath();
  v53[8] = 0;
  (*(v24 + 32))(v41, v39, v67);
  sub_21700ACC4();
  v54 = sub_21700AD04();

  v55 = v62;
  sub_21678818C(v41, v62, &qword_27CABBF38);
  v56 = v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBF28) + 36);
  *v56 = v54;
  result = 25.0;
  *(v56 + 8) = xmmword_217025D90;
  *(v56 + 24) = 0x4034000000000000;
  return result;
}

uint64_t sub_2168F58C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a1;
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530);
  MEMORY[0x28223BE20](v4 - 8);
  v51 = &OpaqueTypeMetadata2 - v5;
  v6 = sub_2170063E4();
  v52 = *(v6 - 8);
  v53 = v6;
  MEMORY[0x28223BE20](v6);
  v50 = &OpaqueTypeMetadata2 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB76F8);
  v46 = v8;
  v9 = *(a1 + 16);
  v10 = sub_2167C505C();
  v63 = &type metadata for ArtworkPlaceholderView;
  v64 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v11 = *(a1 + 24);
  v63 = v8;
  v64 = v9;
  v65 = OpaqueTypeConformance2;
  v66 = v11;
  v12 = sub_2170063B4();
  v47 = sub_2170064D4();
  v49 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v14 = &OpaqueTypeMetadata2 - v13;
  v15 = sub_217005EF4();
  MEMORY[0x28223BE20](v15 - 8);
  v40 = *(v12 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &OpaqueTypeMetadata2 - v17;
  WitnessTable = swift_getWitnessTable();
  v63 = v12;
  v64 = WitnessTable;
  v42 = MEMORY[0x277D269E0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v44 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v38 = &OpaqueTypeMetadata2 - v20;
  v21 = sub_2170089F4();
  v45 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v39 = &OpaqueTypeMetadata2 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v41 = &OpaqueTypeMetadata2 - v24;
  sub_217006EB4();
  v58 = v9;
  v59 = v11;
  v25 = v2;
  v60 = v2;
  v55 = v9;
  v56 = v11;
  v57 = v2;
  sub_2170063A4();
  sub_21700A2A4();
  (*(v40 + 8))(v18, v12);
  v26 = v51;
  sub_2166A6E54(v25 + *(v48 + 40), v51, &qword_27CAB7530);
  v27 = v50;
  sub_216B50CD4(v26, v50);
  v28 = v38;
  v29 = v47;
  sub_217006454();
  (*(v52 + 8))(v27, v53);
  (*(v49 + 8))(v14, v29);
  v63 = v12;
  v64 = WitnessTable;
  v30 = swift_getOpaqueTypeConformance2();
  v31 = OpaqueTypeMetadata2;
  sub_2166BF464();
  v32 = v39;
  sub_21700A9C4();
  (*(v44 + 8))(v28, v31);
  v61 = v30;
  v62 = MEMORY[0x277CDF678];
  v33 = swift_getWitnessTable();
  v34 = v41;
  sub_2166C24DC(v32, v21, v33);
  v35 = *(v45 + 8);
  v35(v32, v21);
  sub_2166C24DC(v34, v21, v33);
  return (v35)(v34, v21);
}

uint64_t sub_2168F5F80()
{
  v0 = sub_21700C444();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_217007474();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  sub_217006EA4();
  v14 = sub_21700C4B4();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v14);
  sub_217007464();
  sub_21700C404();
  sub_2170073E4();
  (*(v1 + 8))(v3, v0);
  v15 = *(v8 + 8);
  v15(v10, v7);
  *(swift_allocObject() + 16) = xmmword_217016ED0;
  sub_2167C505C();
  sub_2170073F4();

  return (v15)(v13, v7);
}

unint64_t sub_2168F6264()
{
  result = qword_27CABBF18;
  if (!qword_27CABBF18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBEC0);
    sub_2168F631C();
    sub_2166D9530(&qword_280E2B390, &qword_27CAB7438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABBF18);
  }

  return result;
}

unint64_t sub_2168F631C()
{
  result = qword_27CABBF20;
  if (!qword_27CABBF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBF28);
    sub_2168F63A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABBF20);
  }

  return result;
}

unint64_t sub_2168F63A8()
{
  result = qword_27CABBF30;
  if (!qword_27CABBF30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBF38);
    sub_2167C505C();
    swift_getOpaqueTypeConformance2();
    sub_2166D9530(qword_280E382B8, &qword_27CAB7440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABBF30);
  }

  return result;
}

unint64_t sub_2168F648C()
{
  result = qword_27CABBF40;
  if (!qword_27CABBF40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBED0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBEC0);
    sub_2168F6264();
    swift_getOpaqueTypeConformance2();
    sub_2168F6554();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABBF40);
  }

  return result;
}

unint64_t sub_2168F6554()
{
  result = qword_280E2A6F0;
  if (!qword_280E2A6F0)
  {
    sub_217009B44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A6F0);
  }

  return result;
}

unint64_t sub_2168F65AC()
{
  result = qword_27CABBF48;
  if (!qword_27CABBF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBF00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBEF0);
    sub_2168F6674();
    swift_getOpaqueTypeConformance2();
    sub_2168F6554();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABBF48);
  }

  return result;
}

unint64_t sub_2168F6674()
{
  result = qword_27CABBF50;
  if (!qword_27CABBF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBEF0);
    sub_2166D9530(qword_27CABBF58, &qword_27CABBEE8);
    sub_2166D9530(&qword_280E2B390, &qword_27CAB7438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABBF50);
  }

  return result;
}

uint64_t sub_2168F6758(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContainerDetailArtworkView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2168F67BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContainerDetailArtworkView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_2168F6820@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ContainerDetailArtworkView();
  OUTLINED_FUNCTION_36(v2);
  return sub_2168F50D4(a1);
}

uint64_t sub_2168F6880(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2168F68F0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_2168F6948()
{
  sub_217006EC4();
  if (v0 <= 0x3F)
  {
    sub_2166B0B84();
    if (v1 <= 0x3F)
    {
      sub_216690C88(319, &unk_280E2A3A0, MEMORY[0x277D2B220]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_2168F6A48()
{
  result = qword_27CABBFE0;
  if (!qword_27CABBFE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBFE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBF00);
    sub_2168F65AC();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBED0);
    sub_2168F648C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABBFE0);
  }

  return result;
}

unint64_t sub_2168F6BB8()
{
  result = qword_280E35180[0];
  if (!qword_280E35180[0])
  {
    type metadata accessor for RemoveAppWithAccessAction();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E35180);
  }

  return result;
}

uint64_t sub_2168F6C10(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + *(type metadata accessor for RemoveAppWithAccessAction() + 20));
  v4 = *v3;
  v5 = v3[1];
  type metadata accessor for JSIntentDispatcher();
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  sub_216ECDDBC(v4, v5, a2);
  v8[3] = sub_21700D7C4();
  v8[4] = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v8);
  sub_21700D7B4();
  sub_21700D2A4();
  v6 = sub_21700E1B4();

  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return v6;
}

uint64_t type metadata accessor for RecordLabelContextMenu()
{
  result = qword_280E39008;
  if (!qword_280E39008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2168F6D88()
{
  sub_21700BEA4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MenuConfiguration(319);
    if (v1 <= 0x3F)
    {
      sub_2167B83B4();
      if (v2 <= 0x3F)
      {
        sub_2167EE974();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2168F6FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a3;
  v4[23] = a4;
  v4[20] = a1;
  v4[21] = a2;
  v5 = sub_217006DE4();
  v4[24] = v5;
  OUTLINED_FUNCTION_2(v5);
  v4[25] = v6;
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v7 = sub_217006E04();
  v4[28] = v7;
  OUTLINED_FUNCTION_2(v7);
  v4[29] = v8;
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v9 = sub_217006E24();
  v4[33] = v9;
  OUTLINED_FUNCTION_2(v9);
  v4[34] = v10;
  v4[35] = OUTLINED_FUNCTION_80();
  v11 = sub_217006BF4();
  v4[36] = v11;
  OUTLINED_FUNCTION_2(v11);
  v4[37] = v12;
  v4[38] = OUTLINED_FUNCTION_80();
  v13 = sub_21700C084();
  v4[39] = v13;
  OUTLINED_FUNCTION_2(v13);
  v4[40] = v14;
  v4[41] = OUTLINED_FUNCTION_80();
  v15 = sub_21700C384();
  v4[42] = v15;
  OUTLINED_FUNCTION_2(v15);
  v4[43] = v16;
  v4[44] = OUTLINED_FUNCTION_80();
  v17 = sub_21700C1E4();
  v4[45] = v17;
  OUTLINED_FUNCTION_2(v17);
  v4[46] = v18;
  v4[47] = OUTLINED_FUNCTION_80();
  v19 = sub_2170067A4();
  v4[48] = v19;
  OUTLINED_FUNCTION_2(v19);
  v4[49] = v20;
  v4[50] = OUTLINED_FUNCTION_80();
  type metadata accessor for CreateGenericMusicItemStationAction();
  v4[51] = OUTLINED_FUNCTION_80();
  sub_21700EA34();
  v4[52] = sub_21700EA24();
  v22 = sub_21700E9B4();
  v4[53] = v22;
  v4[54] = v21;

  return MEMORY[0x2822009F8](sub_2168F7334, v22, v21);
}

void sub_2168F7334()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A30);
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  sub_216EAE8EC();
  v2 = v91;
  v1 = v92;
  v3 = v93;
  v4 = v94;
  *(v0 + 440) = v92;
  *(v0 + 448) = v3;
  *(v0 + 456) = v4;
  if (qword_27CAB59F0 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 408);
  v6 = *(v0 + 168);
  v7 = sub_217007CA4();
  *(v0 + 464) = __swift_project_value_buffer(v7, qword_27CABBFF0);
  sub_2168F95F0(v6, v5);
  v8 = sub_217007C84();
  v9 = sub_21700EDA4();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 408);
  if (v10)
  {
    v89 = v2;
    v12 = swift_slowAlloc();
    v90 = v1;
    v91 = swift_slowAlloc();
    v13 = v3;
    v14 = v4;
    v15 = v91;
    *v12 = 136446210;
    sub_2168F9704(&qword_27CAB7098, MEMORY[0x277D2A460]);
    v16 = sub_21700F784();
    v18 = v17;
    sub_2168F9654(v11);
    v19 = sub_2166A85FC(v16, v18, &v91);

    *(v12 + 4) = v19;
    _os_log_impl(&dword_216679000, v8, v9, "Playing station from %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    v4 = v14;
    v3 = v13;
    v1 = v90;
    OUTLINED_FUNCTION_6();
    v2 = v89;
    OUTLINED_FUNCTION_6();
  }

  else
  {

    sub_2168F9654(v11);
  }

  v21 = *(v0 + 392);
  v20 = *(v0 + 400);
  v22 = *(v0 + 384);
  (*(v21 + 16))(v20, *(v0 + 168), v22);
  v23 = (*(v21 + 88))(v20, v22);
  if (v23 == *MEMORY[0x277D2A400])
  {
    v24 = *(v0 + 376);
    (*(*(v0 + 392) + 96))(*(v0 + 400), *(v0 + 384));
    v25 = OUTLINED_FUNCTION_8();
    v26(v25);
    OUTLINED_FUNCTION_27_19();
    *(v24 + 120) = v2;
    *(v0 + 128) = v1;
    *(v0 + 136) = v3;
    *(v0 + 144) = v4;
    v27 = OUTLINED_FUNCTION_28_20();
    OUTLINED_FUNCTION_38_12(v27, v28, v29, v30, v31, v32, v33, v34, v87, v88, v89, v90);
    v35 = swift_task_alloc();
    *(v0 + 472) = v35;
    *v35 = v0;
    v35[1] = sub_2168F7D00;
    goto LABEL_10;
  }

  if (v23 == *MEMORY[0x277D2A418])
  {
    v36 = *(v0 + 352);
    (*(*(v0 + 392) + 96))(*(v0 + 400), *(v0 + 384));
    v37 = OUTLINED_FUNCTION_8();
    v38(v37);
    OUTLINED_FUNCTION_27_19();
    *(v36 + 88) = v2;
    *(v0 + 96) = v1;
    *(v0 + 104) = v3;
    *(v0 + 112) = v4;
    v39 = OUTLINED_FUNCTION_28_20();
    OUTLINED_FUNCTION_38_12(v39, v40, v41, v42, v43, v44, v45, v46, v87, v88, v89, v90);
    v47 = swift_task_alloc();
    *(v0 + 488) = v47;
    *v47 = v0;
    v47[1] = sub_2168F7F8C;
    goto LABEL_10;
  }

  if (v23 == *MEMORY[0x277D2A438] || v23 == *MEMORY[0x277D2A3C8] || v23 == *MEMORY[0x277D2A428] || v23 == *MEMORY[0x277D2A388] || v23 == *MEMORY[0x277D2A408] || v23 == *MEMORY[0x277D2A3B0] || v23 == *MEMORY[0x277D2A3B8] || v23 == *MEMORY[0x277D2A440] || v23 == *MEMORY[0x277D2A450] || v23 == *MEMORY[0x277D2A3C0] || v23 == *MEMORY[0x277D2A3D0])
  {
    goto LABEL_24;
  }

  if (v23 == *MEMORY[0x277D2A3F8])
  {
    v75 = *(v0 + 328);
    (*(*(v0 + 392) + 96))(*(v0 + 400), *(v0 + 384));
    v76 = OUTLINED_FUNCTION_8();
    v77(v76);
    OUTLINED_FUNCTION_27_19();
    *(v75 + 56) = v2;
    *(v0 + 64) = v1;
    *(v0 + 72) = v3;
    *(v0 + 80) = v4;
    v78 = OUTLINED_FUNCTION_28_20();
    OUTLINED_FUNCTION_38_12(v78, v79, v80, v81, v82, v83, v84, v85, v87, v88, v89, v90);
    v86 = swift_task_alloc();
    *(v0 + 504) = v86;
    *v86 = v0;
    v86[1] = sub_2168F8218;
LABEL_10:
    OUTLINED_FUNCTION_59();

    __asm { BRAA            X6, X16 }
  }

  if (v23 == *MEMORY[0x277D2A430] || v23 == *MEMORY[0x277D2A458] || v23 == *MEMORY[0x277D2A448] || v23 == *MEMORY[0x277D2A420] || v23 == *MEMORY[0x277D2A3D8] || v23 == *MEMORY[0x277D2A3E0])
  {
LABEL_24:
    v51 = *(v0 + 392);
    v50 = *(v0 + 400);
    v52 = *(v0 + 384);
  }

  else
  {
    v51 = *(v0 + 392);
    v50 = *(v0 + 400);
    v52 = *(v0 + 384);
    if (v23 == *MEMORY[0x277D2A410])
    {
      (*(v51 + 8))(*(v0 + 400), *(v0 + 384));
      sub_2168F96B0();
      v53 = swift_allocError();
      swift_willThrow();
LABEL_26:
      *(v0 + 152) = v53;
      v54 = v53;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0);
      if (swift_dynamicCast())
      {
        v55 = OUTLINED_FUNCTION_22_26();
        if (v56(v55) == *MEMORY[0x277D2A8C8])
        {
          OUTLINED_FUNCTION_9_35();
          v57 = OUTLINED_FUNCTION_21_22();
          v58(v57);
          v59 = OUTLINED_FUNCTION_5_33();
          v60(v59);
          v61 = sub_217007C84();
          v62 = sub_21700EDA4();
          if (OUTLINED_FUNCTION_9_3(v62))
          {
            v63 = OUTLINED_FUNCTION_43();
            OUTLINED_FUNCTION_36_5(v63);
            OUTLINED_FUNCTION_121(&dword_216679000, v64, v65, "Presenting dialog...");
            OUTLINED_FUNCTION_26_4();
          }

          OUTLINED_FUNCTION_38_0(&unk_217015B10);
          v66 = swift_task_alloc();
          v67 = OUTLINED_FUNCTION_25_17(v66);
          *v67 = v68;
          OUTLINED_FUNCTION_0_66(v67);
          OUTLINED_FUNCTION_59();

          __asm { BR              X3 }
        }

        OUTLINED_FUNCTION_43_13();
        OUTLINED_FUNCTION_47_12();
        OUTLINED_FUNCTION_8_32();
        v71 = OUTLINED_FUNCTION_18_20();
        v72(v71);
      }

      else
      {
        OUTLINED_FUNCTION_43_13();

        OUTLINED_FUNCTION_8_32();
      }

      OUTLINED_FUNCTION_2_42();

      OUTLINED_FUNCTION_45_14();

      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_59();

      __asm { BRAA            X1, X16 }
    }
  }

  sub_2168F96B0();
  v53 = swift_allocError();
  swift_willThrow();
  (*(v51 + 8))(v50, v52);
  goto LABEL_26;
}

uint64_t sub_2168F7D00()
{
  OUTLINED_FUNCTION_31();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_28();
  *v4 = v3;
  *v4 = *v1;
  v3[60] = v0;

  sub_21677A4C0(v3[15], v2[16], v2[17], v2[18]);
  v5 = v3[53];
  v6 = v3[54];
  if (v0)
  {
    v7 = sub_2168F8BC0;
  }

  else
  {
    v7 = sub_2168F7E58;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}