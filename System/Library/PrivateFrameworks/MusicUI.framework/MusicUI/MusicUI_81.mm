uint64_t sub_216F24C70()
{
  v0 = OUTLINED_FUNCTION_8_1();
  type metadata accessor for AnyPageRequestBody(v0);
  v1 = OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_216F24CA8()
{
  OUTLINED_FUNCTION_8_1();
  type metadata accessor for BaseURLRequest();
  v0 = OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_216F24CE0()
{
  v0 = OUTLINED_FUNCTION_8_1();
  type metadata accessor for AnyReplayYearRequest(v0);
  v1 = OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_216F24D18()
{
  v0 = OUTLINED_FUNCTION_8_1();
  type metadata accessor for AnyReplayPageRequest(v0);
  v1 = OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_216F24D74(void *a1)
{
  if (*a1 != -1)
  {
    swift_once();
  }
}

uint64_t sub_216F24DC0()
{
  v0 = OUTLINED_FUNCTION_8_1();
  type metadata accessor for AccessoryButton.OneOf_BaseAccessoryButton(v0);
  v1 = OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void sub_216F24EA0()
{
  OUTLINED_FUNCTION_49();
  v30 = v0;
  v28 = v1;
  v3 = v2;
  v5 = v4;
  v29 = v6(0);
  OUTLINED_FUNCTION_6_131();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_9_113();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  v14 = *(v5 + 16);
  if (v14 == *(v3 + 16) && v14 && v5 != v3)
  {
    OUTLINED_FUNCTION_8_119();
    v16 = v5 + v15;
    v17 = v3 + v15;
    v19 = *(v18 + 72);
    while (1)
    {
      sub_216F27A34();
      sub_216F27A34();
      v20 = *(v29 + 20);
      v21 = *&v13[v20];
      v22 = *(v10 + v20);
      if (v21 != v22)
      {

        v23 = v28(v21, v22);

        if ((v23 & 1) == 0)
        {
          break;
        }
      }

      sub_217007884();
      OUTLINED_FUNCTION_0_263();
      sub_216F25550(&qword_27CACE018, v24);
      if ((sub_21700E494() & 1) == 0)
      {
        break;
      }

      v25 = v30;
      sub_216F279DC(v10, v30);
      sub_216F279DC(v13, v25);
      v17 += v19;
      v16 += v19;
      if (!--v14)
      {
        goto LABEL_11;
      }
    }

    v26 = v30;
    sub_216F279DC(v10, v30);
    sub_216F279DC(v13, v26);
  }

LABEL_11:
  OUTLINED_FUNCTION_26();
}

unint64_t sub_216F250B8()
{
  result = qword_27CACE028;
  if (!qword_27CACE028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACE028);
  }

  return result;
}

unint64_t sub_216F25110()
{
  result = qword_27CACE030;
  if (!qword_27CACE030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACE030);
  }

  return result;
}

unint64_t sub_216F25168()
{
  result = qword_27CACE038;
  if (!qword_27CACE038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACE040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACE038);
  }

  return result;
}

unint64_t sub_216F251D0()
{
  result = qword_27CACE048;
  if (!qword_27CACE048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACE048);
  }

  return result;
}

uint64_t sub_216F2536C()
{
  sub_216F254F0(319, &qword_280E29E40, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v1 = sub_217007884();
    if (v3 <= 0x3F)
    {
      sub_216F254F0(319, &qword_280E29DB8, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
      v1 = v4;
      if (v5 <= 0x3F)
      {
        sub_216F254F0(319, &qword_280E2A070, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        v1 = v6;
        if (v7 <= 0x3F)
        {
          sub_216F254F0(319, &qword_27CACE070, &type metadata for AttributedDateRange.Style, MEMORY[0x277D83D88]);
          if (v9 > 0x3F)
          {
            return v8;
          }

          else
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

void sub_216F254F0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_216F25550(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_216F25598()
{
  result = qword_27CACE080;
  if (!qword_27CACE080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACE080);
  }

  return result;
}

void sub_216F255EC()
{
  OUTLINED_FUNCTION_49();
  v4 = OUTLINED_FUNCTION_22_64();
  v5 = type metadata accessor for AnyAction.OneOf_BaseAction(v4);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v108 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC33D0);
  OUTLINED_FUNCTION_36(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_79_0();
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE088);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_105();
  v110 = v12;
  v13 = OUTLINED_FUNCTION_4_1();
  v115 = type metadata accessor for AnyAction(v13);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7();
  v112 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98);
  OUTLINED_FUNCTION_36(v17);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_105();
  v113 = v19;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE090);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_105();
  v116 = v21;
  v22 = OUTLINED_FUNCTION_4_1();
  v23 = type metadata accessor for Link(v22);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_7();
  v27 = v26 - v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7C88);
  OUTLINED_FUNCTION_36(v28);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_105();
  v118 = v30;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE098);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v31);
  v33 = &v104 - v32;
  v121 = type metadata accessor for Section.Header.ContainerPlayableItemsHeader.Button(0);
  OUTLINED_FUNCTION_6_131();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_9_113();
  v37 = v35 - v36;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_23_63();
  v39 = *(v3 + 16);
  if (v39 == *(v0 + 16) && v39 && v3 != v0)
  {
    v104 = v1;
    v105 = v5;
    OUTLINED_FUNCTION_8_119();
    v41 = v3 + v40;
    v42 = v0 + v40;
    v44 = *(v43 + 72);
    v106 = v27;
    v107 = v44;
    v111 = v23;
    while (1)
    {
      v117 = v41;
      sub_216F27A34();
      if (!v39)
      {
        break;
      }

      v119 = v39;
      sub_216F27A34();
      v45 = *(v121 + 20);
      v46 = *(v120 + 48);
      sub_2168282D4(v2 + v45, v33, &qword_27CAC7C88);
      v47 = v37 + v45;
      v48 = v111;
      sub_2168282D4(v47, &v33[v46], &qword_27CAC7C88);
      OUTLINED_FUNCTION_24_1(v33);
      if (v51)
      {
        OUTLINED_FUNCTION_24_1(&v33[v46]);
        if (!v51)
        {
          goto LABEL_65;
        }

        sub_216697664(v33, &qword_27CAC7C88);
        v49 = v119;
      }

      else
      {
        v50 = v118;
        sub_2168282D4(v33, v118, &qword_27CAC7C88);
        OUTLINED_FUNCTION_24_1(&v33[v46]);
        if (v51)
        {
          sub_216F279DC(v50, type metadata accessor for Link);
LABEL_65:
          sub_216697664(v33, &qword_27CACE098);
          goto LABEL_73;
        }

        sub_216F27988();
        OUTLINED_FUNCTION_48_29();
        v54 = *(v27 + v53 + 8);
        if (v55)
        {
          if (!v54)
          {
            goto LABEL_72;
          }

          OUTLINED_FUNCTION_5_78(v52);
          v58 = v51 && v56 == v57;
          if (!v58 && (sub_21700F7D4() & 1) == 0)
          {
            goto LABEL_72;
          }
        }

        else if (v54)
        {
          goto LABEL_72;
        }

        OUTLINED_FUNCTION_48_29();
        v61 = *(v27 + v60 + 8);
        if (v62)
        {
          if (!v61)
          {
            goto LABEL_72;
          }

          OUTLINED_FUNCTION_5_78(v59);
          v65 = v51 && v63 == v64;
          if (!v65 && (sub_21700F7D4() & 1) == 0)
          {
            goto LABEL_72;
          }
        }

        else if (v61)
        {
          goto LABEL_72;
        }

        v66 = *(v48 + 28);
        v67 = *(v114 + 48);
        v68 = v50 + v66;
        v69 = v27;
        v70 = v116;
        sub_2168282D4(v68, v116, &qword_27CABFF98);
        sub_2168282D4(v69 + v66, v70 + v67, &qword_27CABFF98);
        v71 = v115;
        OUTLINED_FUNCTION_31_2(v70, 1, v115);
        if (v51)
        {
          OUTLINED_FUNCTION_31_2(v70 + v67, 1, v71);
          if (!v51)
          {
            goto LABEL_67;
          }

          sub_216697664(v70, &qword_27CABFF98);
          v27 = v106;
        }

        else
        {
          v72 = v113;
          sub_2168282D4(v70, v113, &qword_27CABFF98);
          OUTLINED_FUNCTION_31_2(v70 + v67, 1, v71);
          if (v73)
          {
            sub_216F279DC(v72, type metadata accessor for AnyAction);
LABEL_67:
            v102 = &qword_27CACE090;
            v103 = v70;
            goto LABEL_71;
          }

          v74 = v112;
          sub_216F27988();
          v75 = v110;
          v76 = *(v109 + 48);
          sub_2168282D4(v72, v110, &qword_27CAC33D0);
          sub_2168282D4(v74, v75 + v76, &qword_27CAC33D0);
          OUTLINED_FUNCTION_31_2(v75, 1, v105);
          if (v51)
          {
            OUTLINED_FUNCTION_24_1(v75 + v76);
            v77 = v75;
            if (!v51)
            {
              goto LABEL_69;
            }

            sub_216697664(v75, &qword_27CAC33D0);
            v78 = v113;
          }

          else
          {
            v79 = v104;
            sub_2168282D4(v75, v104, &qword_27CAC33D0);
            OUTLINED_FUNCTION_24_1(v75 + v76);
            if (v80)
            {
              sub_216F279DC(v79, type metadata accessor for AnyAction.OneOf_BaseAction);
              v77 = v75;
LABEL_69:
              sub_216697664(v77, &qword_27CACE088);
              v78 = v113;
LABEL_70:
              sub_216F279DC(v112, type metadata accessor for AnyAction);
              sub_216F279DC(v78, type metadata accessor for AnyAction);
              v102 = &qword_27CABFF98;
              v103 = v116;
LABEL_71:
              sub_216697664(v103, v102);
              v27 = v106;
              v50 = v118;
LABEL_72:
              sub_216F279DC(v27, type metadata accessor for Link);
              sub_216F279DC(v50, type metadata accessor for Link);
              sub_216697664(v33, &qword_27CAC7C88);
LABEL_73:
              sub_216F279DC(v37, type metadata accessor for Section.Header.ContainerPlayableItemsHeader.Button);
              sub_216F279DC(v2, type metadata accessor for Section.Header.ContainerPlayableItemsHeader.Button);
              goto LABEL_74;
            }

            v81 = v108;
            sub_216F27988();
            v82 = OUTLINED_FUNCTION_784();
            v84 = sub_216F7F0B0(v82, v83);
            sub_216F279DC(v81, type metadata accessor for AnyAction.OneOf_BaseAction);
            sub_216F279DC(v79, type metadata accessor for AnyAction.OneOf_BaseAction);
            sub_216697664(v75, &qword_27CAC33D0);
            v78 = v113;
            if ((v84 & 1) == 0)
            {
              goto LABEL_70;
            }
          }

          v85 = *(v115 + 20);
          v86 = sub_217007884();
          OUTLINED_FUNCTION_0_263();
          sub_216F25550(&qword_27CACE018, v87);
          v88 = v112;
          sub_21700E494();
          OUTLINED_FUNCTION_18_75();
          sub_216F279DC(v88, v89);
          sub_216F279DC(v78, v85);
          sub_216697664(v116, &qword_27CABFF98);
          v27 = v106;
          v50 = v118;
          if ((v86 & 1) == 0)
          {
            goto LABEL_72;
          }
        }

        sub_217007884();
        OUTLINED_FUNCTION_0_263();
        sub_216F25550(&qword_27CACE018, v90);
        v91 = sub_21700E494();
        sub_216F279DC(v27, type metadata accessor for Link);
        v92 = OUTLINED_FUNCTION_784();
        sub_216F279DC(v92, v93);
        sub_216697664(v33, &qword_27CAC7C88);
        v49 = v119;
        if ((v91 & 1) == 0)
        {
          goto LABEL_73;
        }
      }

      v94 = *(v121 + 24);
      v95 = (v2 + v94);
      v96 = *(v2 + v94 + 9);
      v97 = (v37 + v94);
      if (v96)
      {
        if ((*(v97 + 9) & 1) == 0)
        {
          goto LABEL_73;
        }
      }

      else
      {
        if (*(v97 + 9))
        {
          goto LABEL_73;
        }

        v98 = *v95;
        v99 = *v97;
        if (v97[1])
        {
          switch(v99)
          {
            case 1:
              if (v98 != 1)
              {
                goto LABEL_73;
              }

              goto LABEL_54;
            case 2:
              if (v98 != 2)
              {
                goto LABEL_73;
              }

              goto LABEL_54;
            case 3:
              if (v98 != 3)
              {
                goto LABEL_73;
              }

              goto LABEL_54;
            default:
              if (v98)
              {
                goto LABEL_73;
              }

              goto LABEL_54;
          }
        }

        if (v98 != v99)
        {
          goto LABEL_73;
        }
      }

LABEL_54:
      sub_217007884();
      OUTLINED_FUNCTION_0_263();
      sub_216F25550(&qword_27CACE018, v100);
      OUTLINED_FUNCTION_92_0();
      v101 = sub_21700E494();
      sub_216F279DC(v37, type metadata accessor for Section.Header.ContainerPlayableItemsHeader.Button);
      sub_216F279DC(v2, type metadata accessor for Section.Header.ContainerPlayableItemsHeader.Button);
      if (v101)
      {
        v39 = v49 - 1;
        v42 += v107;
        v41 = v117 + v107;
        if (v49 != 1)
        {
          continue;
        }
      }

      goto LABEL_74;
    }

    __break(1u);
  }

  else
  {
LABEL_74:
    OUTLINED_FUNCTION_32_41();
    OUTLINED_FUNCTION_26();
  }
}

void sub_216F261E0()
{
  OUTLINED_FUNCTION_49();
  v4 = OUTLINED_FUNCTION_22_64();
  v5 = type metadata accessor for SectionEventTrigger(v4);
  OUTLINED_FUNCTION_6_131();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_9_113();
  OUTLINED_FUNCTION_38_43();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_23_63();
  v8 = *(v3 + 16);
  if (v8 == *(v0 + 16) && v8 && v3 != v0)
  {
    v9 = 0;
    OUTLINED_FUNCTION_8_119();
    while (1)
    {
      sub_216F27A34();
      if (v9 == v8)
      {
        break;
      }

      sub_216F27A34();
      if ((sub_216F26594(*v2, *v1) & 1) == 0 || (v10 = v2[1], v11 = v1[1], v12 = *(v10 + 16), v12 != *(v11 + 16)))
      {
LABEL_38:
        sub_216F279DC(v1, type metadata accessor for SectionEventTrigger);
        v26 = OUTLINED_FUNCTION_92_0();
        sub_216F279DC(v26, v27);
        goto LABEL_39;
      }

      if (v12)
      {
        v13 = v10 == v11;
      }

      else
      {
        v13 = 1;
      }

      if (!v13)
      {
        v14 = (v10 + 40);
        v15 = (v11 + 40);
        while (v12)
        {
          v16 = *(v14 - 1) == *(v15 - 1) && *v14 == *v15;
          if (!v16 && (sub_21700F7D4() & 1) == 0)
          {
            goto LABEL_38;
          }

          v14 += 2;
          v15 += 2;
          if (!--v12)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
        break;
      }

LABEL_20:
      v17 = *(v5 + 28);
      v18 = (v2 + v17);
      v19 = *(v2 + v17 + 9);
      v20 = v1 + v17;
      v21 = *(v1 + v17 + 9);
      if (v19)
      {
        if ((v21 & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (v21)
        {
          goto LABEL_38;
        }

        v22 = *v18;
        v23 = *v20;
        if (v20[8])
        {
          if (v23)
          {
            if (v23 == 1)
            {
              if (v22 != 1)
              {
                goto LABEL_38;
              }
            }

            else if (v22 != 2)
            {
              goto LABEL_38;
            }
          }

          else if (v22)
          {
            goto LABEL_38;
          }
        }

        else if (v22 != v23)
        {
          goto LABEL_38;
        }
      }

      sub_217007884();
      OUTLINED_FUNCTION_0_263();
      sub_216F25550(&qword_27CACE018, v24);
      v25 = sub_21700E494();
      sub_216F279DC(v1, type metadata accessor for SectionEventTrigger);
      sub_216F279DC(v2, type metadata accessor for SectionEventTrigger);
      if ((v25 & 1) != 0 && ++v9 != v8)
      {
        continue;
      }

      goto LABEL_39;
    }

    __break(1u);
  }

  else
  {
LABEL_39:
    OUTLINED_FUNCTION_32_41();
    OUTLINED_FUNCTION_26();
  }
}

uint64_t sub_216F26594(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    for (i = (a2 + 40); ; i += 16)
    {
      v6 = *v3;
      v3 += 2;
      v5 = v6;
      v7 = *(i - 1);
      if (*i == 1)
      {
        switch(v7)
        {
          case 4:
            if (v5 != 4)
            {
              return 0;
            }

            goto LABEL_8;
          case 5:
            if (v5 != 5)
            {
              return 0;
            }

            goto LABEL_8;
          case 6:
            if (v5 != 6)
            {
              return 0;
            }

            goto LABEL_8;
          case 7:
            if (v5 != 7)
            {
              return 0;
            }

            goto LABEL_8;
          case 8:
            if (v5 != 8)
            {
              return 0;
            }

            goto LABEL_8;
          case 9:
            if (v5 != 9)
            {
              return 0;
            }

            goto LABEL_8;
          case 10:
            if (v5 != 10)
            {
              return 0;
            }

            goto LABEL_8;
          case 11:
            if (v5 != 11)
            {
              return 0;
            }

            goto LABEL_8;
          case 12:
            if (v5 != 12)
            {
              return 0;
            }

            goto LABEL_8;
          case 13:
            if (v5 != 13)
            {
              return 0;
            }

            goto LABEL_8;
          case 14:
            if (v5 != 14)
            {
              return 0;
            }

            goto LABEL_8;
          case 15:
            if (v5 != 15)
            {
              return 0;
            }

            goto LABEL_8;
          case 16:
            if (v5 != 16)
            {
              return 0;
            }

            goto LABEL_8;
          case 17:
            if (v5 != 17)
            {
              return 0;
            }

            goto LABEL_8;
          case 18:
            if (v5 != 18)
            {
              return 0;
            }

            goto LABEL_8;
          case 19:
            if (v5 != 19)
            {
              return 0;
            }

            goto LABEL_8;
          default:
            break;
        }
      }

      if (v5 != v7)
      {
        break;
      }

LABEL_8:
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

void sub_216F26730()
{
  OUTLINED_FUNCTION_49();
  v4 = OUTLINED_FUNCTION_22_64();
  v5 = type metadata accessor for VideoArtwork.Dictionary.Item.VideoFile(v4);
  OUTLINED_FUNCTION_6_131();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_9_113();
  OUTLINED_FUNCTION_38_43();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_23_63();
  v8 = *(v3 + 16);
  if (v8 == *(v0 + 16) && v8 && v3 != v0)
  {
    OUTLINED_FUNCTION_8_119();
    v10 = v3 + v9;
    v11 = v0 + v9;
    v13 = *(v12 + 72);
    while (1)
    {
      OUTLINED_FUNCTION_109();
      sub_216F27A34();
      sub_216F27A34();
      v14 = *(v5 + 20);
      v15 = *(v1 + v14 + 8);
      if (*(v2 + v14 + 8))
      {
        if (!v15 || ((OUTLINED_FUNCTION_5_78(v2 + v14), v18) ? (v18 = v16 == v17) : (v18 = 0), !v18 && (sub_21700F7D4() & 1) == 0))
        {
LABEL_30:
          sub_216F279DC(v1, type metadata accessor for VideoArtwork.Dictionary.Item.VideoFile);
          v30 = OUTLINED_FUNCTION_92_0();
          sub_216F279DC(v30, v31);
          break;
        }
      }

      else if (v15)
      {
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_26_54();
      if (v20)
      {
        if (!v19)
        {
          goto LABEL_30;
        }
      }

      else
      {
        OUTLINED_FUNCTION_25_56();
        if (v21)
        {
          goto LABEL_30;
        }
      }

      OUTLINED_FUNCTION_26_54();
      if (v23)
      {
        if (!v22)
        {
          goto LABEL_30;
        }
      }

      else
      {
        OUTLINED_FUNCTION_25_56();
        if (v24)
        {
          goto LABEL_30;
        }
      }

      OUTLINED_FUNCTION_26_54();
      if (v26)
      {
        if (!v25)
        {
          goto LABEL_30;
        }
      }

      else
      {
        OUTLINED_FUNCTION_25_56();
        if (v27)
        {
          goto LABEL_30;
        }
      }

      sub_217007884();
      OUTLINED_FUNCTION_0_263();
      sub_216F25550(&qword_27CACE018, v28);
      v29 = OUTLINED_FUNCTION_58_20();
      sub_216F279DC(v1, type metadata accessor for VideoArtwork.Dictionary.Item.VideoFile);
      sub_216F279DC(v2, type metadata accessor for VideoArtwork.Dictionary.Item.VideoFile);
      if (v29)
      {
        v11 += v13;
        v10 += v13;
        if (--v8)
        {
          continue;
        }
      }

      break;
    }
  }

  OUTLINED_FUNCTION_32_41();
  OUTLINED_FUNCTION_26();
}

void sub_216F269D0()
{
  OUTLINED_FUNCTION_49();
  v2 = v1;
  v103 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v96 = type metadata accessor for AnyAction.OneOf_BaseAction(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC33D0);
  OUTLINED_FUNCTION_36(v14);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_79_0();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE088);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_105();
  v97 = v18;
  v19 = OUTLINED_FUNCTION_4_1();
  v98 = type metadata accessor for AnyAction(v19);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_7();
  v99 = v22 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98);
  OUTLINED_FUNCTION_36(v23);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_105();
  v100 = v25;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE090);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_105();
  v95 = v27;
  v28 = OUTLINED_FUNCTION_4_1();
  v105 = v5(v28);
  OUTLINED_FUNCTION_6_131();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_9_113();
  v32 = v30 - v31;
  MEMORY[0x28223BE20](v33);
  v104 = &v88 - v34;
  v35 = *(v9 + 16);
  if (v35 != *(v7 + 16) || !v35 || v9 == v7)
  {
    goto LABEL_47;
  }

  v91 = v32;
  v92 = v16;
  v89 = v13;
  v90 = v0;
  OUTLINED_FUNCTION_8_119();
  v37 = v9 + v36;
  v38 = v7 + v36;
  v93 = *(v39 + 72);
  v94 = v2;
  v40 = v98;
  v41 = v95;
  v42 = v104;
  while (1)
  {
    v102 = v37;
    sub_216F27A34();
    sub_216F27A34();
    OUTLINED_FUNCTION_48_29();
    v45 = *(v32 + v44 + 8);
    if (v46)
    {
      if (!v45)
      {
        goto LABEL_46;
      }

      v47 = v40;
      OUTLINED_FUNCTION_5_78(v43);
      v50 = v50 && v48 == v49;
      if (!v50 && (sub_21700F7D4() & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v47 = v40;
      if (v45)
      {
        goto LABEL_46;
      }
    }

    OUTLINED_FUNCTION_48_29();
    v53 = *(v32 + v52 + 8);
    if (v54)
    {
      if (!v53)
      {
        goto LABEL_46;
      }

      OUTLINED_FUNCTION_5_78(v51);
      v57 = v50 && v55 == v56;
      if (!v57 && (sub_21700F7D4() & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    else if (v53)
    {
      goto LABEL_46;
    }

    v58 = *(v105 + 28);
    v59 = *(v101 + 48);
    sub_2168282D4(&v42[v58], v41, &qword_27CABFF98);
    sub_2168282D4(v32 + v58, v41 + v59, &qword_27CABFF98);
    OUTLINED_FUNCTION_31_2(v41, 1, v47);
    if (!v50)
    {
      break;
    }

    v60 = OUTLINED_FUNCTION_50_25();
    OUTLINED_FUNCTION_31_2(v60, v61, v47);
    v2 = v94;
    v42 = v104;
    if (!v50)
    {
      goto LABEL_42;
    }

    sub_216697664(v41, &qword_27CABFF98);
LABEL_37:
    sub_217007884();
    OUTLINED_FUNCTION_0_263();
    sub_216F25550(&qword_27CACE018, v82);
    v83 = sub_21700E494();
    sub_216F279DC(v32, v2);
    v84 = OUTLINED_FUNCTION_784();
    sub_216F279DC(v84, v85);
    if (v83)
    {
      v40 = v47;
      v38 += v93;
      v37 = v102 + v93;
      if (--v35)
      {
        continue;
      }
    }

    goto LABEL_47;
  }

  v62 = v100;
  sub_2168282D4(v41, v100, &qword_27CABFF98);
  v63 = OUTLINED_FUNCTION_50_25();
  OUTLINED_FUNCTION_31_2(v63, v64, v47);
  if (v65)
  {
    sub_216F279DC(v62, type metadata accessor for AnyAction);
    v2 = v94;
LABEL_42:
    sub_216697664(v41, &qword_27CACE090);
    goto LABEL_46;
  }

  v66 = v99;
  sub_216F27988();
  v67 = *(v92 + 48);
  v68 = v97;
  sub_2168282D4(v62, v97, &qword_27CAC33D0);
  sub_2168282D4(v66, v68 + v67, &qword_27CAC33D0);
  OUTLINED_FUNCTION_31_2(v68, 1, v96);
  if (v50)
  {
    OUTLINED_FUNCTION_24_1(v68 + v67);
    if (!v50)
    {
      goto LABEL_44;
    }

    sub_216697664(v68, &qword_27CAC33D0);
    v32 = v91;
    v69 = v99;
    goto LABEL_36;
  }

  v70 = v90;
  sub_2168282D4(v68, v90, &qword_27CAC33D0);
  OUTLINED_FUNCTION_24_1(v68 + v67);
  if (!v71)
  {
    v72 = v89;
    sub_216F27988();
    v73 = sub_216F7F0B0(v70, v72);
    v74 = v72;
    v41 = v95;
    sub_216F279DC(v74, type metadata accessor for AnyAction.OneOf_BaseAction);
    v75 = OUTLINED_FUNCTION_784();
    sub_216F279DC(v75, v76);
    sub_216697664(v97, &qword_27CAC33D0);
    v40 = v98;
    v69 = v99;
    v32 = v91;
    if ((v73 & 1) == 0)
    {
      goto LABEL_45;
    }

LABEL_36:
    v77 = *(v40 + 20);
    v78 = sub_217007884();
    OUTLINED_FUNCTION_0_263();
    sub_216F25550(&qword_27CACE018, v79);
    v80 = v100;
    sub_21700E494();
    OUTLINED_FUNCTION_18_75();
    sub_216F279DC(v69, v81);
    v47 = v98;
    sub_216F279DC(v80, v77);
    sub_216697664(v41, &qword_27CABFF98);
    v2 = v94;
    v42 = v104;
    if ((v78 & 1) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_37;
  }

  sub_216F279DC(v70, type metadata accessor for AnyAction.OneOf_BaseAction);
LABEL_44:
  sub_216697664(v68, &qword_27CACE088);
  v32 = v91;
  v69 = v99;
LABEL_45:
  sub_216F279DC(v69, type metadata accessor for AnyAction);
  sub_216F279DC(v100, type metadata accessor for AnyAction);
  sub_216697664(v41, &qword_27CABFF98);
  v2 = v94;
LABEL_46:
  sub_216F279DC(v32, v2);
  v86 = OUTLINED_FUNCTION_784();
  sub_216F279DC(v86, v87);
LABEL_47:
  OUTLINED_FUNCTION_32_41();
  OUTLINED_FUNCTION_26();
}

void sub_216F27140()
{
  OUTLINED_FUNCTION_49();
  v4 = OUTLINED_FUNCTION_22_64();
  v5 = type metadata accessor for Section(v4);
  OUTLINED_FUNCTION_6_131();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_9_113();
  OUTLINED_FUNCTION_38_43();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_23_63();
  v8 = *(v3 + 16);
  if (v8 == *(v0 + 16) && v8 && v3 != v0)
  {
    OUTLINED_FUNCTION_8_119();
    v10 = v3 + v9;
    v11 = v0 + v9;
    v13 = *(v12 + 72);
    while (1)
    {
      OUTLINED_FUNCTION_109();
      sub_216F27A34();
      sub_216F27A34();
      if (*(v2 + *(v5 + 20)) != *(v1 + *(v5 + 20)))
      {

        sub_216F992B4();
        v15 = v14;

        if ((v15 & 1) == 0)
        {
          break;
        }
      }

      sub_217007884();
      OUTLINED_FUNCTION_0_263();
      sub_216F25550(&qword_27CACE018, v16);
      v17 = OUTLINED_FUNCTION_58_20();
      sub_216F279DC(v1, type metadata accessor for Section);
      sub_216F279DC(v2, type metadata accessor for Section);
      if (v17)
      {
        v11 += v13;
        v10 += v13;
        if (--v8)
        {
          continue;
        }
      }

      goto LABEL_12;
    }

    sub_216F279DC(v1, type metadata accessor for Section);
    v18 = OUTLINED_FUNCTION_92_0();
    sub_216F279DC(v18, v19);
  }

LABEL_12:
  OUTLINED_FUNCTION_32_41();
  OUTLINED_FUNCTION_26();
}

void sub_216F27354()
{
  OUTLINED_FUNCTION_49();
  v2 = v1;
  v4 = v3;
  v51 = type metadata accessor for AccessoryButton.OneOf_BaseAccessoryButton(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v46 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8F18);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_105();
  v50 = v10;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0A0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_79_0();
  v48 = type metadata accessor for AccessoryButton(0);
  OUTLINED_FUNCTION_6_131();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_9_113();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v46 - v17;
  v19 = *(v4 + 16);
  if (v19 == *(v2 + 16) && v19 && v4 != v2)
  {
    OUTLINED_FUNCTION_8_119();
    v21 = v4 + v20;
    v22 = v2 + v20;
    v47 = *(v23 + 72);
    v24 = v50;
    while (1)
    {
      sub_216F27A34();
      sub_216F27A34();
      sub_2168282D4(v18, v0, &qword_27CAB8F18);
      OUTLINED_FUNCTION_615();
      sub_2168282D4(v25, v26, v27);
      OUTLINED_FUNCTION_31_2(v0, 1, v51);
      if (v35)
      {
        v28 = OUTLINED_FUNCTION_50_25();
        OUTLINED_FUNCTION_31_2(v28, v29, v51);
        if (!v35)
        {
          OUTLINED_FUNCTION_19_66();
          sub_216F279DC(v15, v42);
          v43 = v18;
          v44 = v24;
LABEL_17:
          sub_216F279DC(v43, v44);
          sub_216697664(v0, &qword_27CACE0A0);
          break;
        }

        sub_216697664(v0, &qword_27CAB8F18);
      }

      else
      {
        OUTLINED_FUNCTION_615();
        sub_2168282D4(v30, v31, v32);
        v33 = OUTLINED_FUNCTION_50_25();
        OUTLINED_FUNCTION_31_2(v33, v34, v51);
        if (v35)
        {
          sub_216F279DC(v15, type metadata accessor for AccessoryButton);
          sub_216F279DC(v18, type metadata accessor for AccessoryButton);
          v44 = type metadata accessor for AccessoryButton.OneOf_BaseAccessoryButton;
          v43 = v24;
          goto LABEL_17;
        }

        v36 = v46;
        sub_216F27988();
        sub_216FFEEF0();
        v38 = v37;
        v39 = v36;
        v24 = v50;
        sub_216F279DC(v39, type metadata accessor for AccessoryButton.OneOf_BaseAccessoryButton);
        sub_216F279DC(v24, type metadata accessor for AccessoryButton.OneOf_BaseAccessoryButton);
        sub_216697664(v0, &qword_27CAB8F18);
        if ((v38 & 1) == 0)
        {
          OUTLINED_FUNCTION_19_66();
          sub_216F279DC(v15, v45);
          sub_216F279DC(v18, v24);
          break;
        }
      }

      sub_217007884();
      OUTLINED_FUNCTION_0_263();
      sub_216F25550(&qword_27CACE018, v40);
      v41 = sub_21700E494();
      sub_216F279DC(v15, type metadata accessor for AccessoryButton);
      sub_216F279DC(v18, type metadata accessor for AccessoryButton);
      if (v41)
      {
        v22 += v47;
        v21 += v47;
        if (--v19)
        {
          continue;
        }
      }

      break;
    }
  }

  OUTLINED_FUNCTION_32_41();
  OUTLINED_FUNCTION_26();
}

void sub_216F27810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_49();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30(0) - 8;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_9_113();
  MEMORY[0x28223BE20](v32);
  v34 = &a9 - v33;
  v35 = *(v29 + 16);
  if (v35 == *(v27 + 16) && v35 && v29 != v27)
  {
    OUTLINED_FUNCTION_8_119();
    v37 = v29 + v36;
    v38 = v27 + v36;
    v40 = *(v39 + 72);
    do
    {
      sub_216F27A34();
      sub_216F27A34();
      v41 = OUTLINED_FUNCTION_109();
      v42 = v25(v41);
      v43 = OUTLINED_FUNCTION_92_0();
      sub_216F279DC(v43, v44);
      sub_216F279DC(v34, v23);
      if ((v42 & 1) == 0)
      {
        break;
      }

      v38 += v40;
      v37 += v40;
      --v35;
    }

    while (v35);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_216F27988()
{
  v1 = OUTLINED_FUNCTION_102();
  v2(v1);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();
  v4(v3);
  return v0;
}

uint64_t sub_216F279DC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216F27A34()
{
  v1 = OUTLINED_FUNCTION_102();
  v2(v1);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();
  v4(v3);
  return v0;
}

uint64_t sub_216F27AB4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_217007884();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_216F27B1C(uint64_t a1)
{
  v3 = sub_217007884();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_216F27BA4()
{
  v0 = sub_217007B44();
  __swift_allocate_value_buffer(v0, qword_27CB22B30);
  __swift_project_value_buffer(v0, qword_27CB22B30);
  return sub_217007B34();
}

uint64_t sub_216F27BF0()
{
  if (qword_27CACDB70 != -1)
  {
    OUTLINED_FUNCTION_0_264();
  }

  v0 = sub_217007B44();

  return __swift_project_value_buffer(v0, qword_27CB22B30);
}

uint64_t sub_216F27C44@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CACDB70 != -1)
  {
    OUTLINED_FUNCTION_0_264();
  }

  v2 = sub_217007B44();
  v3 = __swift_project_value_buffer(v2, qword_27CB22B30);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_216F27CDC()
{
  do
  {
    result = sub_217007914();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t sub_216F27D38()
{
  sub_217007884();
  sub_216F281F0(&qword_27CACE018, MEMORY[0x277D216C8]);
  return sub_21700E494() & 1;
}

uint64_t sub_216F27DC0()
{
  sub_21700F8F4();
  type metadata accessor for Empty();
  sub_216F281F0(&qword_27CACE0B8, type metadata accessor for Empty);
  sub_21700E434();
  return sub_21700F944();
}

uint64_t sub_216F27E60(uint64_t a1, uint64_t a2)
{
  v4 = sub_216F281F0(&qword_27CACE0D0, type metadata accessor for Empty);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_216F27EDC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_216F27BF0();
  v3 = sub_217007B44();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v2, v3);
}

uint64_t sub_216F27F4C(uint64_t a1)
{
  v2 = sub_216F281F0(&qword_27CAB79F8, type metadata accessor for Empty);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_216F27FBC()
{
  sub_216F281F0(&qword_27CAB79F8, type metadata accessor for Empty);

  return sub_217007A34();
}

uint64_t sub_216F28184()
{
  result = sub_217007884();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_216F281F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216F28238()
{
  OUTLINED_FUNCTION_19_67();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_17_2();
  if (!*(v2 + 24))
  {
    OUTLINED_FUNCTION_138_0();
  }

  sub_21700DF14();
  return OUTLINED_FUNCTION_8();
}

uint64_t sub_216F282B0()
{
  OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_51_16();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_39_33();
    v6 = OUTLINED_FUNCTION_18();
    v7 = sub_216F2E22C(v6);
    OUTLINED_FUNCTION_97_0(v7);
  }

  OUTLINED_FUNCTION_139();
  *(v5 + 16) = v2;
  *(v5 + 24) = v0;
}

void (*sub_216F2833C())(void **a1, char a2)
{
  v2 = OUTLINED_FUNCTION_136();
  v3 = __swift_coroFrameAllocStub(v2);
  *v0 = v3;
  v3[5] = v1;
  OUTLINED_FUNCTION_16_80();
  OUTLINED_FUNCTION_17_2();
  if (*(v1 + 24))
  {
    v4 = *(v1 + 16);
    v5 = *(v1 + 24);
  }

  else
  {
    OUTLINED_FUNCTION_101();
  }

  v3[3] = v4;
  v3[4] = v5;
  sub_21700DF14();
  return sub_216F283C8;
}

BOOL sub_216F283E0()
{
  OUTLINED_FUNCTION_19_67();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_17_2();
  return *(v2 + 24) != 0;
}

uint64_t sub_216F28424()
{
  v1 = *(type metadata accessor for PosterLockup(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_39_33();
    v3 = sub_216F2E22C(v3);
    *(v0 + v1) = v3;
  }

  OUTLINED_FUNCTION_139();
  v3[2] = 0;
  v3[3] = 0;
}

uint64_t sub_216F2849C()
{
  OUTLINED_FUNCTION_19_67();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_17_2();
  if (!*(v2 + 40))
  {
    OUTLINED_FUNCTION_138_0();
  }

  sub_21700DF14();
  return OUTLINED_FUNCTION_8();
}

uint64_t sub_216F284F4()
{
  OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_51_16();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_39_33();
    v6 = OUTLINED_FUNCTION_18();
    v7 = sub_216F2E22C(v6);
    OUTLINED_FUNCTION_97_0(v7);
  }

  OUTLINED_FUNCTION_139();
  *(v5 + 32) = v2;
  *(v5 + 40) = v0;
}

void (*sub_216F28560())(void **a1, char a2)
{
  v2 = OUTLINED_FUNCTION_136();
  v3 = __swift_coroFrameAllocStub(v2);
  *v0 = v3;
  v3[5] = v1;
  OUTLINED_FUNCTION_16_80();
  OUTLINED_FUNCTION_17_2();
  if (*(v1 + 40))
  {
    v4 = *(v1 + 32);
    v5 = *(v1 + 40);
  }

  else
  {
    OUTLINED_FUNCTION_101();
  }

  v3[3] = v4;
  v3[4] = v5;
  sub_21700DF14();
  return sub_216F285EC;
}

BOOL sub_216F28604()
{
  OUTLINED_FUNCTION_19_67();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_17_2();
  return *(v2 + 40) != 0;
}

uint64_t sub_216F28648()
{
  v1 = *(type metadata accessor for PosterLockup(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_39_33();
    v3 = sub_216F2E22C(v3);
    *(v0 + v1) = v3;
  }

  OUTLINED_FUNCTION_139();
  v3[4] = 0;
  v3[5] = 0;
}

uint64_t sub_216F286C0()
{
  v1 = OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_36(v1);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_40_33(v3);
  OUTLINED_FUNCTION_76_14();
  OUTLINED_FUNCTION_77_0();
  type metadata accessor for PosterLockup.Kind(0);
  OUTLINED_FUNCTION_7_6();
  if (v4)
  {
    type metadata accessor for PosterLockup.Kind.OneOf_Kind(0);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
    OUTLINED_FUNCTION_122_8();
    sub_217007874();
    result = OUTLINED_FUNCTION_7_6();
    if (!v4)
    {
      return sub_216697664(v0, &qword_27CACE0E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_27_58();
    OUTLINED_FUNCTION_92_0();
    return sub_216F2EA30();
  }

  return result;
}

uint64_t sub_216F287AC()
{
  v0 = OUTLINED_FUNCTION_8_1();
  type metadata accessor for PosterLockup.Kind.OneOf_Kind(v0);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  type metadata accessor for PosterLockup.Kind(0);
  OUTLINED_FUNCTION_157_1();
  return sub_217007874();
}

uint64_t sub_216F287F0()
{
  OUTLINED_FUNCTION_125();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0E0);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_13_3();
  if ((OUTLINED_FUNCTION_51_16() & 1) == 0)
  {
    OUTLINED_FUNCTION_39_33();
    v2 = OUTLINED_FUNCTION_18();
    v3 = sub_216F2E22C(v2);
    OUTLINED_FUNCTION_97_0(v3);
  }

  OUTLINED_FUNCTION_27_58();
  OUTLINED_FUNCTION_159_2();
  v4 = type metadata accessor for PosterLockup.Kind(0);
  OUTLINED_FUNCTION_57_1(v4);
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_95_0();
  sub_216F2EB2C();
  return swift_endAccess();
}

void sub_216F288C0()
{
  OUTLINED_FUNCTION_49();
  v2 = OUTLINED_FUNCTION_124();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_47_0(v3);
  v4 = OUTLINED_FUNCTION_119();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_36(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_46(v7);
  type metadata accessor for PosterLockup.Kind(v8);
  OUTLINED_FUNCTION_34();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_120_1(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_16_80();
  OUTLINED_FUNCTION_54_2();
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_6_3();
  if (v12)
  {
    type metadata accessor for PosterLockup.Kind.OneOf_Kind(0);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    OUTLINED_FUNCTION_119_8();
    sub_217007874();
    OUTLINED_FUNCTION_6_3();
    if (!v12)
    {
      sub_216697664(v0, &qword_27CACE0E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_98();
    sub_216F2EA30();
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_216F28AAC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98);
  OUTLINED_FUNCTION_36(v1);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_40_33(v3);
  OUTLINED_FUNCTION_17_2();
  OUTLINED_FUNCTION_82_2();
  sub_2166A6EA4();
  type metadata accessor for AnyAction(0);
  OUTLINED_FUNCTION_7_6();
  if (v4)
  {
    type metadata accessor for AnyAction.OneOf_BaseAction(0);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
    OUTLINED_FUNCTION_122_8();
    sub_217007874();
    result = OUTLINED_FUNCTION_7_6();
    if (!v4)
    {
      return sub_216697664(v0, &qword_27CABFF98);
    }
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    return sub_216F2EA30();
  }

  return result;
}

uint64_t sub_216F28BC4()
{
  OUTLINED_FUNCTION_125();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_13_3();
  if ((OUTLINED_FUNCTION_51_16() & 1) == 0)
  {
    OUTLINED_FUNCTION_39_33();
    v2 = OUTLINED_FUNCTION_18();
    v3 = sub_216F2E22C(v2);
    OUTLINED_FUNCTION_97_0(v3);
  }

  OUTLINED_FUNCTION_12_94();
  OUTLINED_FUNCTION_159_2();
  v4 = type metadata accessor for AnyAction(0);
  OUTLINED_FUNCTION_57_1(v4);
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_95_0();
  sub_216F2EB2C();
  return swift_endAccess();
}

void sub_216F28C94()
{
  OUTLINED_FUNCTION_49();
  v2 = OUTLINED_FUNCTION_124();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_47_0(v3);
  v4 = OUTLINED_FUNCTION_119();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_36(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_46(v7);
  type metadata accessor for AnyAction(v8);
  OUTLINED_FUNCTION_34();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_120_1(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_16_80();
  OUTLINED_FUNCTION_54_2();
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_6_3();
  if (v12)
  {
    type metadata accessor for AnyAction.OneOf_BaseAction(0);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    OUTLINED_FUNCTION_119_8();
    sub_217007874();
    OUTLINED_FUNCTION_6_3();
    if (!v12)
    {
      sub_216697664(v0, &qword_27CABFF98);
    }
  }

  else
  {
    OUTLINED_FUNCTION_98();
    sub_216F2EA30();
  }

  OUTLINED_FUNCTION_26();
}

void sub_216F28E14()
{
  OUTLINED_FUNCTION_75_6();
  v2 = v1;
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 32);
  if (v6)
  {
    OUTLINED_FUNCTION_109();
    sub_216F2EA84();
    v2(v3);
    sub_216F2EAD8();
  }

  else
  {
    v1(*(*v0 + 48));
  }

  free(v4);
  free(v3);
  free(v5);
  OUTLINED_FUNCTION_65_2();

  free(v7);
}

uint64_t sub_216F28EE8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_76();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v6);
  OUTLINED_FUNCTION_36(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  OUTLINED_FUNCTION_16_80();
  OUTLINED_FUNCTION_17_2();
  sub_2166A6EA4();
  a4(0);
  v11 = OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_31_2(v11, v12, v13);
  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  sub_216697664(v10, v4);
  return v15;
}

void sub_216F28FE4()
{
  OUTLINED_FUNCTION_75_6();
  v2 = v1;
  OUTLINED_FUNCTION_76();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_67_0();
  v6 = *(type metadata accessor for PosterLockup(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_39_33();
    v7 = OUTLINED_FUNCTION_18();
    *(v0 + v6) = sub_216F2E22C(v7);
  }

  v2(0);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  swift_beginAccess();
  sub_216F2EB2C();
  swift_endAccess();
  OUTLINED_FUNCTION_65_2();
}

uint64_t sub_216F290E0()
{
  OUTLINED_FUNCTION_125();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_13_3();
  if ((OUTLINED_FUNCTION_51_16() & 1) == 0)
  {
    OUTLINED_FUNCTION_39_33();
    v2 = OUTLINED_FUNCTION_18();
    v3 = sub_216F2E22C(v2);
    OUTLINED_FUNCTION_97_0(v3);
  }

  OUTLINED_FUNCTION_12_94();
  OUTLINED_FUNCTION_159_2();
  v4 = type metadata accessor for AnyAction(0);
  OUTLINED_FUNCTION_57_1(v4);
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_95_0();
  sub_216F2EB2C();
  return swift_endAccess();
}

void sub_216F291B0()
{
  OUTLINED_FUNCTION_49();
  v2 = OUTLINED_FUNCTION_124();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_47_0(v3);
  v4 = OUTLINED_FUNCTION_119();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_36(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_46(v7);
  type metadata accessor for AnyAction(v8);
  OUTLINED_FUNCTION_34();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_120_1(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_16_80();
  OUTLINED_FUNCTION_54_2();
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_6_3();
  if (v12)
  {
    type metadata accessor for AnyAction.OneOf_BaseAction(0);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    OUTLINED_FUNCTION_119_8();
    sub_217007874();
    OUTLINED_FUNCTION_6_3();
    if (!v12)
    {
      sub_216697664(v0, &qword_27CABFF98);
    }
  }

  else
  {
    OUTLINED_FUNCTION_98();
    sub_216F2EA30();
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_216F29390()
{
  v1 = OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_36(v1);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_40_33(v3);
  OUTLINED_FUNCTION_76_14();
  OUTLINED_FUNCTION_77_0();
  v4 = type metadata accessor for Artwork(0);
  OUTLINED_FUNCTION_7_6();
  if (v5)
  {
    sub_217007874();
    type metadata accessor for Artwork.ArtworkDictionary(0);
    v6 = OUTLINED_FUNCTION_17_1();
    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
    OUTLINED_FUNCTION_30_3(*(v4 + 24));
    result = OUTLINED_FUNCTION_7_6();
    if (!v5)
    {
      return sub_216697664(v0, &qword_27CACE100);
    }
  }

  else
  {
    OUTLINED_FUNCTION_32_42();
    OUTLINED_FUNCTION_92_0();
    return sub_216F2EA30();
  }

  return result;
}

uint64_t sub_216F29480()
{
  OUTLINED_FUNCTION_125();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE100);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_13_3();
  if ((OUTLINED_FUNCTION_51_16() & 1) == 0)
  {
    OUTLINED_FUNCTION_39_33();
    v2 = OUTLINED_FUNCTION_18();
    v3 = sub_216F2E22C(v2);
    OUTLINED_FUNCTION_97_0(v3);
  }

  OUTLINED_FUNCTION_32_42();
  OUTLINED_FUNCTION_159_2();
  v4 = type metadata accessor for Artwork(0);
  OUTLINED_FUNCTION_57_1(v4);
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_95_0();
  sub_216F2EB2C();
  return swift_endAccess();
}

void sub_216F29550()
{
  OUTLINED_FUNCTION_49();
  v2 = OUTLINED_FUNCTION_124();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_47_0(v3);
  v4 = OUTLINED_FUNCTION_119();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_36(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_46(v7);
  type metadata accessor for Artwork(v8);
  OUTLINED_FUNCTION_34();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_120_1(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_16_80();
  OUTLINED_FUNCTION_54_2();
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_6_3();
  if (v12)
  {
    sub_217007874();
    type metadata accessor for Artwork.ArtworkDictionary(0);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    OUTLINED_FUNCTION_78_15();
    OUTLINED_FUNCTION_6_3();
    if (!v12)
    {
      sub_216697664(v0, &qword_27CACE100);
    }
  }

  else
  {
    OUTLINED_FUNCTION_98();
    sub_216F2EA30();
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_216F29738()
{
  v1 = OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_36(v1);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_40_33(v3);
  OUTLINED_FUNCTION_76_14();
  OUTLINED_FUNCTION_77_0();
  v4 = type metadata accessor for VideoArtwork(0);
  OUTLINED_FUNCTION_7_6();
  if (v5)
  {
    sub_217007874();
    type metadata accessor for VideoArtwork.Dictionary(0);
    v6 = OUTLINED_FUNCTION_17_1();
    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
    OUTLINED_FUNCTION_30_3(*(v4 + 24));
    result = OUTLINED_FUNCTION_7_6();
    if (!v5)
    {
      return sub_216697664(v0, &qword_27CACE110);
    }
  }

  else
  {
    OUTLINED_FUNCTION_31_55();
    OUTLINED_FUNCTION_92_0();
    return sub_216F2EA30();
  }

  return result;
}

uint64_t sub_216F29828()
{
  OUTLINED_FUNCTION_125();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE110);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_13_3();
  if ((OUTLINED_FUNCTION_51_16() & 1) == 0)
  {
    OUTLINED_FUNCTION_39_33();
    v2 = OUTLINED_FUNCTION_18();
    v3 = sub_216F2E22C(v2);
    OUTLINED_FUNCTION_97_0(v3);
  }

  OUTLINED_FUNCTION_31_55();
  OUTLINED_FUNCTION_159_2();
  v4 = type metadata accessor for VideoArtwork(0);
  OUTLINED_FUNCTION_57_1(v4);
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_95_0();
  sub_216F2EB2C();
  return swift_endAccess();
}

void sub_216F298F8()
{
  OUTLINED_FUNCTION_49();
  v2 = OUTLINED_FUNCTION_124();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_47_0(v3);
  v4 = OUTLINED_FUNCTION_119();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_36(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_46(v7);
  type metadata accessor for VideoArtwork(v8);
  OUTLINED_FUNCTION_34();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_120_1(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_16_80();
  OUTLINED_FUNCTION_54_2();
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_6_3();
  if (v12)
  {
    sub_217007874();
    type metadata accessor for VideoArtwork.Dictionary(0);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    OUTLINED_FUNCTION_78_15();
    OUTLINED_FUNCTION_6_3();
    if (!v12)
    {
      sub_216697664(v0, &qword_27CACE110);
    }
  }

  else
  {
    OUTLINED_FUNCTION_98();
    sub_216F2EA30();
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_216F29AE0()
{
  v1 = OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_36(v1);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_40_33(v3);
  OUTLINED_FUNCTION_76_14();
  OUTLINED_FUNCTION_77_0();
  v4 = type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_7_6();
  if (v5)
  {
    sub_217007874();
    type metadata accessor for ContentDescriptor.ContentKind(0);
    v6 = OUTLINED_FUNCTION_17_1();
    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
    type metadata accessor for ContentIdentifiers(0);
    v10 = OUTLINED_FUNCTION_17_1();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
    OUTLINED_FUNCTION_30_3(*(v4 + 28));
    result = OUTLINED_FUNCTION_7_6();
    if (!v5)
    {
      return sub_216697664(v0, &qword_27CACE120);
    }
  }

  else
  {
    OUTLINED_FUNCTION_30_56();
    OUTLINED_FUNCTION_92_0();
    return sub_216F2EA30();
  }

  return result;
}

uint64_t sub_216F29BE4()
{
  OUTLINED_FUNCTION_125();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE120);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_13_3();
  if ((OUTLINED_FUNCTION_51_16() & 1) == 0)
  {
    OUTLINED_FUNCTION_39_33();
    v2 = OUTLINED_FUNCTION_18();
    v3 = sub_216F2E22C(v2);
    OUTLINED_FUNCTION_97_0(v3);
  }

  OUTLINED_FUNCTION_30_56();
  OUTLINED_FUNCTION_159_2();
  v4 = type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_57_1(v4);
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_95_0();
  sub_216F2EB2C();
  return swift_endAccess();
}

void sub_216F29CB4()
{
  OUTLINED_FUNCTION_49();
  v2 = OUTLINED_FUNCTION_124();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_47_0(v3);
  v4 = OUTLINED_FUNCTION_119();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_36(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_46(v7);
  v9 = type metadata accessor for ContentDescriptor(v8);
  OUTLINED_FUNCTION_34();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_120_1(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_16_80();
  OUTLINED_FUNCTION_54_2();
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_6_3();
  if (v13)
  {
    sub_217007874();
    type metadata accessor for ContentDescriptor.ContentKind(0);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    type metadata accessor for ContentIdentifiers(0);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    OUTLINED_FUNCTION_94_1(*(v9 + 28));
    OUTLINED_FUNCTION_6_3();
    if (!v13)
    {
      sub_216697664(v0, &qword_27CACE120);
    }
  }

  else
  {
    OUTLINED_FUNCTION_98();
    sub_216F2EA30();
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_216F29EBC()
{
  OUTLINED_FUNCTION_19_67();
  OUTLINED_FUNCTION_68();
  if (v0[4])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_216F29F04()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_31_0();
  v4 = *(type metadata accessor for PosterLockup(v3) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_39_33();
    v7 = OUTLINED_FUNCTION_18();
    v6 = sub_216F2E22C(v7);
    *(v2 + v4) = v6;
  }

  v8 = v6 + OBJC_IVAR____TtCV18SwiftMusicProtocol12PosterLockupP33_EC915D655E10ABA6A59995832062211413_StorageClass__numberOfSocialBadges;
  result = OUTLINED_FUNCTION_147();
  *v8 = v0;
  *(v8 + 4) = 0;
  return result;
}

uint64_t sub_216F29F84(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x58uLL);
  *a1 = v3;
  v3[9] = v1;
  OUTLINED_FUNCTION_19_67();
  *(v3 + 21) = v4;
  v5 = *(v1 + v4) + OBJC_IVAR____TtCV18SwiftMusicProtocol12PosterLockupP33_EC915D655E10ABA6A59995832062211413_StorageClass__numberOfSocialBadges;
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_17_2();
  v6 = *v5;
  if (*(v5 + 4))
  {
    v6 = 0;
  }

  *(v3 + 20) = v6;
  return OUTLINED_FUNCTION_103();
}

void sub_216F2A010(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = *(v1 + 84);
    v8 = *(v1 + 72);
    OUTLINED_FUNCTION_39_33();
    v9 = OUTLINED_FUNCTION_18();
    v6 = sub_216F2E22C(v9);
    *(v8 + v7) = v6;
  }

  v10 = v6 + OBJC_IVAR____TtCV18SwiftMusicProtocol12PosterLockupP33_EC915D655E10ABA6A59995832062211413_StorageClass__numberOfSocialBadges;
  OUTLINED_FUNCTION_147();
  *v10 = v2;
  *(v10 + 4) = 0;

  free(v1);
}

BOOL sub_216F2A0C4()
{
  OUTLINED_FUNCTION_19_67();
  OUTLINED_FUNCTION_68();
  return (*(v0 + 4) & 1) == 0;
}

uint64_t sub_216F2A108()
{
  v1 = v0;
  v2 = *(type metadata accessor for PosterLockup(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_39_33();
    v5 = OUTLINED_FUNCTION_18();
    v4 = sub_216F2E22C(v5);
    *(v1 + v2) = v4;
  }

  v6 = v4 + OBJC_IVAR____TtCV18SwiftMusicProtocol12PosterLockupP33_EC915D655E10ABA6A59995832062211413_StorageClass__numberOfSocialBadges;
  result = OUTLINED_FUNCTION_147();
  *v6 = 0;
  *(v6 + 4) = 1;
  return result;
}

uint64_t sub_216F2A18C()
{
  OUTLINED_FUNCTION_19_67();
  OUTLINED_FUNCTION_68();
  if (!*(v0 + 8))
  {
    OUTLINED_FUNCTION_138_0();
  }

  sub_21700DF14();
  return OUTLINED_FUNCTION_8();
}

uint64_t sub_216F2A1E4()
{
  OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_51_16();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_39_33();
    v6 = OUTLINED_FUNCTION_18();
    v7 = sub_216F2E22C(v6);
    OUTLINED_FUNCTION_97_0(v7);
  }

  v8 = (v5 + OBJC_IVAR____TtCV18SwiftMusicProtocol12PosterLockupP33_EC915D655E10ABA6A59995832062211413_StorageClass__accessibilityLabel);
  OUTLINED_FUNCTION_147();
  *v8 = v2;
  v8[1] = v0;
}

void (*sub_216F2A260())(void **a1, char a2)
{
  v2 = OUTLINED_FUNCTION_136();
  v3 = __swift_coroFrameAllocStub(v2);
  *v0 = v3;
  v3[5] = v1;
  OUTLINED_FUNCTION_19_67();
  v5 = (*(v1 + v4) + OBJC_IVAR____TtCV18SwiftMusicProtocol12PosterLockupP33_EC915D655E10ABA6A59995832062211413_StorageClass__accessibilityLabel);
  OUTLINED_FUNCTION_17_2();
  if (v5[1])
  {
    v6 = *v5;
    v7 = v5[1];
  }

  else
  {
    OUTLINED_FUNCTION_101();
  }

  v3[3] = v6;
  v3[4] = v7;
  sub_21700DF14();
  return sub_216F2A2FC;
}

void sub_216F2A314(void **a1, char a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  if (a2)
  {
    sub_21700DF14();
    v5 = OUTLINED_FUNCTION_109();
    a3(v5);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_109();
    a3(v6);
  }

  free(v4);
}

BOOL sub_216F2A398()
{
  OUTLINED_FUNCTION_19_67();
  OUTLINED_FUNCTION_68();
  return *(v0 + 8) != 0;
}

uint64_t sub_216F2A3DC()
{
  v1 = v0;
  v2 = *(type metadata accessor for PosterLockup(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_39_33();
    v5 = OUTLINED_FUNCTION_18();
    v4 = sub_216F2E22C(v5);
    *(v1 + v2) = v4;
  }

  v6 = (v4 + OBJC_IVAR____TtCV18SwiftMusicProtocol12PosterLockupP33_EC915D655E10ABA6A59995832062211413_StorageClass__accessibilityLabel);
  OUTLINED_FUNCTION_147();
  *v6 = 0;
  v6[1] = 0;
}

uint64_t sub_216F2A460@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_40_33(v5);
  OUTLINED_FUNCTION_76_14();
  OUTLINED_FUNCTION_77_0();
  v6 = type metadata accessor for AccessoryBadge();
  OUTLINED_FUNCTION_7_6();
  if (v7)
  {
    sub_217007874();
    OUTLINED_FUNCTION_30_3(*(v6 + 20));
    OUTLINED_FUNCTION_40_1(a1 + *(v6 + 24));
    result = OUTLINED_FUNCTION_7_6();
    if (!v7)
    {
      return sub_216697664(v1, &qword_27CACE140);
    }
  }

  else
  {
    OUTLINED_FUNCTION_29_56();
    OUTLINED_FUNCTION_92_0();
    return sub_216F2EA30();
  }

  return result;
}

uint64_t sub_216F2A548()
{
  OUTLINED_FUNCTION_125();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE140);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_13_3();
  if ((OUTLINED_FUNCTION_51_16() & 1) == 0)
  {
    OUTLINED_FUNCTION_39_33();
    v2 = OUTLINED_FUNCTION_18();
    v3 = sub_216F2E22C(v2);
    OUTLINED_FUNCTION_97_0(v3);
  }

  OUTLINED_FUNCTION_29_56();
  OUTLINED_FUNCTION_159_2();
  v4 = type metadata accessor for AccessoryBadge();
  OUTLINED_FUNCTION_57_1(v4);
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_95_0();
  sub_216F2EB2C();
  return swift_endAccess();
}

void sub_216F2A618()
{
  OUTLINED_FUNCTION_49();
  v2 = OUTLINED_FUNCTION_124();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_47_0(v3);
  v4 = OUTLINED_FUNCTION_119();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_36(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_46(v7);
  v8 = type metadata accessor for AccessoryBadge();
  OUTLINED_FUNCTION_34();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_120_1(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_16_80();
  OUTLINED_FUNCTION_54_2();
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_6_3();
  if (v13)
  {
    sub_217007874();
    OUTLINED_FUNCTION_94_1(*(v8 + 20));
    OUTLINED_FUNCTION_40_1(v12 + *(v8 + 24));
    OUTLINED_FUNCTION_6_3();
    if (!v13)
    {
      sub_216697664(v0, &qword_27CACE140);
    }
  }

  else
  {
    OUTLINED_FUNCTION_98();
    sub_216F2EA30();
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_216F2A850()
{
  v1 = OUTLINED_FUNCTION_22_4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_58();
  type metadata accessor for PosterLockup.Kind.OneOf_Kind(0);
  OUTLINED_FUNCTION_12_4(v0);
  if (v4)
  {
    sub_216697664(v0, &qword_27CABCBC8);
LABEL_6:
    sub_217007874();
    type metadata accessor for PosterLockup.Kind.TallArtwork(0);
    v6 = OUTLINED_FUNCTION_153_1();
    type metadata accessor for PosterLockup.Kind.TallArtwork.Top(v6);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
    type metadata accessor for PosterLockup.Kind.TallArtwork.Bottom(0);
    v11 = OUTLINED_FUNCTION_17_1();
    return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  }

  OUTLINED_FUNCTION_7_4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_216F2EAD8();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_28_49();
  OUTLINED_FUNCTION_38();
  return sub_216F2EA30();
}

uint64_t sub_216F2A978()
{
  sub_217007874();
  type metadata accessor for PosterLockup.Kind.TallArtwork(0);
  v0 = OUTLINED_FUNCTION_153_1();
  type metadata accessor for PosterLockup.Kind.TallArtwork.Top(v0);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  type metadata accessor for PosterLockup.Kind.TallArtwork.Bottom(0);
  v5 = OUTLINED_FUNCTION_17_1();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void sub_216F2AA04()
{
  OUTLINED_FUNCTION_75_6();
  v1 = OUTLINED_FUNCTION_112();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_74(v2);
  v3 = OUTLINED_FUNCTION_54_3();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_36(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v0[1] = v6;
  type metadata accessor for PosterLockup.Kind.TallArtwork(0);
  OUTLINED_FUNCTION_34();
  v8 = *(v7 + 64);
  v0[2] = __swift_coroFrameAllocStub(v8);
  v0[3] = __swift_coroFrameAllocStub(v8);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_142_2();
  v9 = type metadata accessor for PosterLockup.Kind.OneOf_Kind(0);
  v0[4] = v9;
  v10 = OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_31_2(v10, v11, v9);
  if (v12)
  {
    sub_216697664(v6, &qword_27CABCBC8);
  }

  else
  {
    OUTLINED_FUNCTION_22_4();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      OUTLINED_FUNCTION_28_49();
      OUTLINED_FUNCTION_25_19();
      sub_216F2EA30();
      goto LABEL_8;
    }

    sub_216F2EAD8();
  }

  sub_217007874();
  type metadata accessor for PosterLockup.Kind.TallArtwork.Top(0);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  type metadata accessor for PosterLockup.Kind.TallArtwork.Bottom(0);
  OUTLINED_FUNCTION_151_2();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
LABEL_8:
  OUTLINED_FUNCTION_65_2();
}

uint64_t sub_216F2ABD8()
{
  v1 = OUTLINED_FUNCTION_22_4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_58();
  type metadata accessor for PosterLockup.Kind.OneOf_Kind(0);
  OUTLINED_FUNCTION_12_4(v0);
  if (v4)
  {
    sub_216697664(v0, &qword_27CABCBC8);
  }

  else
  {
    OUTLINED_FUNCTION_7_4();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_26_55();
      OUTLINED_FUNCTION_38();
      return sub_216F2EA30();
    }

    sub_216F2EAD8();
  }

  sub_217007874();
  type metadata accessor for PosterLockup.Kind.SquareArtwork(0);
  type metadata accessor for PosterLockup.Kind.SquareArtwork.Chin(0);
  v7 = OUTLINED_FUNCTION_17_1();
  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t sub_216F2ACE4()
{
  sub_217007874();
  type metadata accessor for PosterLockup.Kind.SquareArtwork(0);
  type metadata accessor for PosterLockup.Kind.SquareArtwork.Chin(0);
  v0 = OUTLINED_FUNCTION_17_1();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_216F2AD4C()
{
  sub_216697664(v0, &qword_27CABCBC8);
  OUTLINED_FUNCTION_25_19();
  sub_216F2EA30();
  v1 = type metadata accessor for PosterLockup.Kind.OneOf_Kind(0);
  OUTLINED_FUNCTION_7_4();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_41();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
}

void sub_216F2ADD4()
{
  OUTLINED_FUNCTION_75_6();
  v1 = OUTLINED_FUNCTION_112();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_74(v2);
  v3 = OUTLINED_FUNCTION_54_3();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_36(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v0[1] = v6;
  type metadata accessor for PosterLockup.Kind.SquareArtwork(0);
  OUTLINED_FUNCTION_34();
  v8 = *(v7 + 64);
  v0[2] = __swift_coroFrameAllocStub(v8);
  v0[3] = __swift_coroFrameAllocStub(v8);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_142_2();
  v9 = type metadata accessor for PosterLockup.Kind.OneOf_Kind(0);
  v0[4] = v9;
  v10 = OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_31_2(v10, v11, v9);
  if (v12)
  {
    sub_216697664(v6, &qword_27CABCBC8);
LABEL_7:
    sub_217007874();
    type metadata accessor for PosterLockup.Kind.SquareArtwork.Chin(0);
    OUTLINED_FUNCTION_151_2();
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_22_4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_216F2EAD8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_26_55();
  OUTLINED_FUNCTION_25_19();
  sub_216F2EA30();
LABEL_8:
  OUTLINED_FUNCTION_65_2();
}

void sub_216F2AF8C()
{
  OUTLINED_FUNCTION_49();
  v1 = (*v0)[3];
  v2 = (*v0)[4];
  v3 = (*v0)[1];
  v4 = (*v0)[2];
  v5 = **v0;
  if (v6)
  {
    sub_216F2EA84();
    sub_216697664(v5, &qword_27CABCBC8);
    sub_216F2EA30();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v2);
    sub_216F2EAD8();
  }

  else
  {
    sub_216697664(**v0, &qword_27CABCBC8);
    sub_216F2EA30();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v2);
  }

  free(v1);
  free(v4);
  free(v3);
  OUTLINED_FUNCTION_26();

  free(v13);
}

uint64_t sub_216F2B0E4()
{
  v0 = OUTLINED_FUNCTION_31_0();
  type metadata accessor for PosterLockup.Kind(v0);
  return OUTLINED_FUNCTION_177();
}

void sub_216F2B124()
{
  OUTLINED_FUNCTION_49();
  v1 = type metadata accessor for PosterLockup.Kind.SquareArtwork(0);
  v2 = OUTLINED_FUNCTION_36(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7();
  v3 = type metadata accessor for PosterLockup.Kind.TallArtwork(0);
  v4 = OUTLINED_FUNCTION_36(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  type metadata accessor for PosterLockup.Kind.OneOf_Kind(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE150);
  OUTLINED_FUNCTION_36(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_13_3();
  sub_216F2EA84();
  sub_216F2EA84();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_83_14();
    sub_216F2EA84();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_26_55();
      sub_216F2EA30();
      OUTLINED_FUNCTION_25_19();
      sub_216F2B864();
      sub_216F2EAD8();
LABEL_7:
      sub_216F2EAD8();
      OUTLINED_FUNCTION_25_57();
      sub_216F2EAD8();
      goto LABEL_8;
    }
  }

  else
  {
    OUTLINED_FUNCTION_83_14();
    sub_216F2EA84();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_28_49();
      sub_216F2EA30();
      OUTLINED_FUNCTION_98();
      sub_216F2B3DC();
      sub_216F2EAD8();
      goto LABEL_7;
    }
  }

  sub_216F2EAD8();
  sub_216697664(v0, &qword_27CACE150);
LABEL_8:
  OUTLINED_FUNCTION_26();
}

void sub_216F2B3DC()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v33 = type metadata accessor for PosterLockup.Kind.TallArtwork.Bottom(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_6_0();
  v31[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCBD0);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_105();
  v31[2] = v6;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE158);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_105();
  v34 = v8;
  v9 = OUTLINED_FUNCTION_4_1();
  type metadata accessor for PosterLockup.Kind.TallArtwork.Top(v9);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  v11 = OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_36(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_13_3();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE160) - 8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v16 = v31 - v15;
  v31[3] = type metadata accessor for PosterLockup.Kind.TallArtwork(0);
  v17 = *(v13 + 56);
  v35 = v1;
  sub_2166A6EA4();
  sub_2166A6EA4();
  OUTLINED_FUNCTION_5_3(v16);
  if (v18)
  {
    OUTLINED_FUNCTION_5_3(&v16[v17]);
    if (v18)
    {
      sub_216697664(v16, &qword_27CABCBD8);
      goto LABEL_11;
    }

LABEL_9:
    v19 = &qword_27CACE160;
    v20 = v16;
LABEL_20:
    sub_216697664(v20, v19);
    goto LABEL_21;
  }

  sub_2166A6EA4();
  OUTLINED_FUNCTION_5_3(&v16[v17]);
  if (v18)
  {
    OUTLINED_FUNCTION_93_12();
    sub_216F2EAD8();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_5_148();
  sub_216F2EA30();
  v21 = sub_216F348BC();
  sub_216F2EAD8();
  OUTLINED_FUNCTION_116();
  sub_216F2EAD8();
  sub_216697664(v16, &qword_27CABCBD8);
  if ((v21 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v22 = *(v32 + 48);
  v23 = v34;
  sub_2166A6EA4();
  sub_2166A6EA4();
  v24 = OUTLINED_FUNCTION_19_2();
  v25 = v33;
  OUTLINED_FUNCTION_31_2(v24, v26, v33);
  if (v18)
  {
    OUTLINED_FUNCTION_31_2(v23 + v22, 1, v25);
    if (v18)
    {
      sub_216697664(v23, &qword_27CABCBD0);
LABEL_23:
      sub_217007884();
      OUTLINED_FUNCTION_0_265();
      sub_216F36BDC(v29, v30);
      sub_21700E494();
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  sub_2166A6EA4();
  OUTLINED_FUNCTION_31_2(v23 + v22, 1, v25);
  if (v27)
  {
    OUTLINED_FUNCTION_92_10();
    sub_216F2EAD8();
LABEL_19:
    v19 = &qword_27CACE158;
    v20 = v23;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_4_156();
  sub_216F2EA30();
  OUTLINED_FUNCTION_98();
  v28 = sub_216F35708();
  sub_216F2EAD8();
  sub_216F2EAD8();
  sub_216697664(v23, &qword_27CABCBD0);
  if (v28)
  {
    goto LABEL_23;
  }

LABEL_21:
  OUTLINED_FUNCTION_26();
}

void sub_216F2B864()
{
  OUTLINED_FUNCTION_49();
  v1 = OUTLINED_FUNCTION_102();
  v2 = type metadata accessor for PosterLockup.Kind.SquareArtwork.Chin(v1);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  v4 = OUTLINED_FUNCTION_54_3();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_36(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_67_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE168) - 8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_17_0();
  type metadata accessor for PosterLockup.Kind.SquareArtwork(v9);
  v10 = *(v7 + 56);
  OUTLINED_FUNCTION_142_2();
  OUTLINED_FUNCTION_142_2();
  v11 = OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_31_2(v11, v12, v2);
  if (v13)
  {
    OUTLINED_FUNCTION_31_2(v0 + v10, 1, v2);
    if (v13)
    {
      sub_216697664(v0, &qword_27CABCBE8);
LABEL_12:
      sub_217007884();
      OUTLINED_FUNCTION_0_265();
      sub_216F36BDC(v15, v16);
      OUTLINED_FUNCTION_38();
      sub_21700E494();
      goto LABEL_13;
    }

LABEL_9:
    sub_216697664(v0, &qword_27CACE168);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_22_4();
  sub_2166A6EA4();
  OUTLINED_FUNCTION_31_2(v0 + v10, 1, v2);
  if (v13)
  {
    OUTLINED_FUNCTION_90_11();
    sub_216F2EAD8();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_3_182();
  sub_216F2EA30();
  OUTLINED_FUNCTION_98();
  v14 = sub_216F36A6C();
  sub_216F2EAD8();
  sub_216F2EAD8();
  sub_216697664(v0, &qword_27CABCBE8);
  if (v14)
  {
    goto LABEL_12;
  }

LABEL_13:
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216F2BAC0@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_17_0();
  type metadata accessor for PosterLockup.Kind.TallArtwork(v5);
  OUTLINED_FUNCTION_84_15();
  v6 = type metadata accessor for PosterLockup.Kind.TallArtwork.Top(0);
  OUTLINED_FUNCTION_7_6();
  if (v7)
  {
    sub_217007874();
    OUTLINED_FUNCTION_30_3(v6[5]);
    OUTLINED_FUNCTION_30_3(v6[6]);
    OUTLINED_FUNCTION_137_4(v6[7]);
    OUTLINED_FUNCTION_40_1(a1 + v6[8]);
    result = OUTLINED_FUNCTION_7_6();
    if (!v7)
    {
      return sub_216697664(v1, &qword_27CABCBD8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_148();
    OUTLINED_FUNCTION_92_0();
    return sub_216F2EA30();
  }

  return result;
}

void sub_216F2BBB0(uint64_t a1@<X8>)
{
  sub_217007874();
  OUTLINED_FUNCTION_127_2();
  OUTLINED_FUNCTION_30_3(v2);
  OUTLINED_FUNCTION_30_3(*(v3 + 24));
  OUTLINED_FUNCTION_137_4(*(v4 + 28));
  OUTLINED_FUNCTION_40_1(a1 + *(v5 + 32));
}

uint64_t sub_216F2BBF8()
{
  v1 = OUTLINED_FUNCTION_31_0();
  v2 = type metadata accessor for PosterLockup.Kind.TallArtwork(v1);
  sub_216697664(v0 + *(v2 + 20), &qword_27CABCBD8);
  OUTLINED_FUNCTION_5_148();
  OUTLINED_FUNCTION_95_0();
  sub_216F2EA30();
  type metadata accessor for PosterLockup.Kind.TallArtwork.Top(0);
  OUTLINED_FUNCTION_151_2();
  OUTLINED_FUNCTION_41();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void sub_216F2BC6C()
{
  OUTLINED_FUNCTION_75_6();
  v2 = OUTLINED_FUNCTION_136();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_74(v3);
  v4 = OUTLINED_FUNCTION_54_3();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_36(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_140_2(v7);
  v9 = type metadata accessor for PosterLockup.Kind.TallArtwork.Top(v8);
  *(v1 + 16) = v9;
  OUTLINED_FUNCTION_34();
  v11 = *(v10 + 64);
  *(v1 + 24) = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_149_0(v12);
  v14 = type metadata accessor for PosterLockup.Kind.TallArtwork(v13);
  OUTLINED_FUNCTION_104_8(*(v14 + 20));
  OUTLINED_FUNCTION_6_3();
  if (v15)
  {
    sub_217007874();
    OUTLINED_FUNCTION_94_1(v9[5]);
    OUTLINED_FUNCTION_78_15();
    *(v11 + v9[7]) = 2;
    OUTLINED_FUNCTION_40_1(v11 + v9[8]);
    OUTLINED_FUNCTION_6_3();
    if (!v15)
    {
      sub_216697664(v0, &qword_27CABCBD8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_148();
    OUTLINED_FUNCTION_98();
    sub_216F2EA30();
  }

  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_65_2();
}

void sub_216F2BDA0()
{
  OUTLINED_FUNCTION_75_6();
  OUTLINED_FUNCTION_73_0();
  if (v5)
  {
    OUTLINED_FUNCTION_25_19();
    sub_216F2EA84();
    sub_216697664(v4 + v3, &qword_27CABCBD8);
    OUTLINED_FUNCTION_5_148();
    sub_216F2EA30();
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_93_12();
    sub_216F2EAD8();
  }

  else
  {
    sub_216697664(v4 + v3, &qword_27CABCBD8);
    OUTLINED_FUNCTION_5_148();
    sub_216F2EA30();
    OUTLINED_FUNCTION_64();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_65_2();

  free(v6);
}

uint64_t sub_216F2BEFC@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_17_0();
  type metadata accessor for PosterLockup.Kind.TallArtwork(v5);
  OUTLINED_FUNCTION_84_15();
  v6 = type metadata accessor for PosterLockup.Kind.TallArtwork.Bottom(0);
  OUTLINED_FUNCTION_7_6();
  if (v7)
  {
    *a1 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_122_8();
    sub_217007874();
    OUTLINED_FUNCTION_30_3(v6[6]);
    OUTLINED_FUNCTION_30_3(v6[7]);
    OUTLINED_FUNCTION_137_4(v6[8]);
    OUTLINED_FUNCTION_144_4(a1 + v6[9]);
    *(a1 + v6[10]) = v8;
    result = OUTLINED_FUNCTION_7_6();
    if (!v7)
    {
      return sub_216697664(v1, &qword_27CABCBD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_156();
    OUTLINED_FUNCTION_92_0();
    return sub_216F2EA30();
  }

  return result;
}

void sub_216F2C000(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for PosterLockup.Kind.TallArtwork.Bottom(0);
  OUTLINED_FUNCTION_157_1();
  sub_217007874();
  OUTLINED_FUNCTION_30_3(v2[6]);
  OUTLINED_FUNCTION_30_3(v2[7]);
  OUTLINED_FUNCTION_137_4(v2[8]);
  OUTLINED_FUNCTION_144_4(a1 + v2[9]);
  *(a1 + v2[10]) = v3;
}

uint64_t sub_216F2C06C()
{
  v1 = OUTLINED_FUNCTION_31_0();
  v2 = type metadata accessor for PosterLockup.Kind.TallArtwork(v1);
  sub_216697664(v0 + *(v2 + 24), &qword_27CABCBD0);
  OUTLINED_FUNCTION_4_156();
  OUTLINED_FUNCTION_95_0();
  sub_216F2EA30();
  type metadata accessor for PosterLockup.Kind.TallArtwork.Bottom(0);
  OUTLINED_FUNCTION_151_2();
  OUTLINED_FUNCTION_41();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void sub_216F2C0E0()
{
  OUTLINED_FUNCTION_75_6();
  v2 = OUTLINED_FUNCTION_136();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_74(v3);
  v4 = OUTLINED_FUNCTION_54_3();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_36(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_140_2(v7);
  v9 = type metadata accessor for PosterLockup.Kind.TallArtwork.Bottom(v8);
  *(v1 + 16) = v9;
  OUTLINED_FUNCTION_34();
  v11 = *(v10 + 64);
  *(v1 + 24) = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_149_0(v12);
  v14 = type metadata accessor for PosterLockup.Kind.TallArtwork(v13);
  OUTLINED_FUNCTION_104_8(*(v14 + 24));
  OUTLINED_FUNCTION_6_3();
  if (v15)
  {
    *v11 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_119_8();
    sub_217007874();
    OUTLINED_FUNCTION_78_15();
    OUTLINED_FUNCTION_94_1(v9[7]);
    *(v11 + v9[8]) = 2;
    OUTLINED_FUNCTION_144_4(v11 + v9[9]);
    *(v11 + v9[10]) = v16;
    OUTLINED_FUNCTION_6_3();
    if (!v15)
    {
      sub_216697664(v0, &qword_27CABCBD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_156();
    OUTLINED_FUNCTION_98();
    sub_216F2EA30();
  }

  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_65_2();
}

void sub_216F2C228()
{
  OUTLINED_FUNCTION_75_6();
  OUTLINED_FUNCTION_73_0();
  if (v5)
  {
    OUTLINED_FUNCTION_25_19();
    sub_216F2EA84();
    sub_216697664(v4 + v3, &qword_27CABCBD0);
    OUTLINED_FUNCTION_4_156();
    sub_216F2EA30();
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_92_10();
    sub_216F2EAD8();
  }

  else
  {
    sub_216697664(v4 + v3, &qword_27CABCBD0);
    OUTLINED_FUNCTION_4_156();
    sub_216F2EA30();
    OUTLINED_FUNCTION_64();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_65_2();

  free(v6);
}

uint64_t sub_216F2C30C()
{
  v0 = OUTLINED_FUNCTION_116();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(v0);
  OUTLINED_FUNCTION_36(v1);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_17_0();
  type metadata accessor for PosterLockup.Kind.TallArtwork(v3);
  sub_2166A6EA4();
  type metadata accessor for PosterLockup.Kind.TallArtwork.Bottom(0);
  v4 = OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_31_2(v4, v5, v6);
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = OUTLINED_FUNCTION_92_0();
  sub_216697664(v9, v10);
  return v8;
}

uint64_t sub_216F2C3B8()
{
  v1 = type metadata accessor for PosterLockup.Kind.TallArtwork(0);
  sub_216697664(v0 + *(v1 + 24), &qword_27CABCBD0);
  type metadata accessor for PosterLockup.Kind.TallArtwork.Bottom(0);
  OUTLINED_FUNCTION_38_2();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_216F2C41C()
{
  OUTLINED_FUNCTION_127_2();
  if (!*(v0 + v1 + 8))
  {
    OUTLINED_FUNCTION_138_0();
  }

  sub_21700DF14();
  return OUTLINED_FUNCTION_8();
}

uint64_t sub_216F2C460()
{
  v3 = OUTLINED_FUNCTION_37_0();
  v4 = (v1 + *(type metadata accessor for PosterLockup.Kind.TallArtwork.Top(v3) + 20));

  *v4 = v2;
  v4[1] = v0;
  return result;
}

uint64_t sub_216F2C4A0()
{
  v0 = OUTLINED_FUNCTION_112();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_36_47(v1);
  v3 = type metadata accessor for PosterLockup.Kind.TallArtwork.Top(v2);
  if (OUTLINED_FUNCTION_59_1(*(v3 + 20)))
  {
    OUTLINED_FUNCTION_135();
  }

  else
  {
    OUTLINED_FUNCTION_101();
  }

  OUTLINED_FUNCTION_134(v4, v5);
  sub_21700DF14();
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_216F2C530()
{
  OUTLINED_FUNCTION_127_2();
  v2 = (v0 + v1);

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t sub_216F2C590()
{
  v0 = OUTLINED_FUNCTION_112();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_36_47(v1);
  v3 = type metadata accessor for PosterLockup.Kind.TallArtwork.Top(v2);
  if (OUTLINED_FUNCTION_59_1(*(v3 + 24)))
  {
    OUTLINED_FUNCTION_135();
  }

  else
  {
    OUTLINED_FUNCTION_101();
  }

  OUTLINED_FUNCTION_134(v4, v5);
  sub_21700DF14();
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_216F2C664()
{
  v2 = OUTLINED_FUNCTION_31_0();
  result = type metadata accessor for PosterLockup.Kind.TallArtwork.Top(v2);
  *(v1 + *(result + 28)) = v0;
  return result;
}

uint64_t (*sub_216F2C690(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_102_1(a1);
  v2 = type metadata accessor for PosterLockup.Kind.TallArtwork.Top(v1);
  OUTLINED_FUNCTION_42_36(*(v2 + 28));
  return sub_216F2C6D4;
}

uint64_t sub_216F2C730()
{
  OUTLINED_FUNCTION_158_1();
  OUTLINED_FUNCTION_12_1();
  if (v1)
  {
    return v0;
  }

  else
  {
    return 0;
  }
}

uint64_t (*sub_216F2C78C(uint64_t a1))(uint64_t result)
{
  v2 = OUTLINED_FUNCTION_146_3(a1);
  *(v1 + 12) = *(type metadata accessor for PosterLockup.Kind.TallArtwork.Top(v2) + 32);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_42_1(v3);
  return sub_216F22598;
}

void sub_216F2C844(uint64_t a1@<X8>)
{
  sub_216F2C818();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void sub_216F2C888(uint64_t a1@<X8>)
{
  sub_216F2C818();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

uint64_t sub_216F2C8CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21691E4C0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_216F2C958()
{
  v1 = OUTLINED_FUNCTION_58_16();
  if (!*(v0 + *(v2(v1) + 24) + 8))
  {
    OUTLINED_FUNCTION_138_0();
  }

  sub_21700DF14();
  return OUTLINED_FUNCTION_8();
}

uint64_t sub_216F2C9C0()
{
  v3 = OUTLINED_FUNCTION_37_0();
  v5 = (v1 + *(v4(v3) + 24));

  *v5 = v2;
  v5[1] = v0;
  return result;
}

uint64_t sub_216F2CA04()
{
  v0 = OUTLINED_FUNCTION_112();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_36_47(v1);
  v3 = type metadata accessor for PosterLockup.Kind.TallArtwork.Bottom(v2);
  if (OUTLINED_FUNCTION_59_1(*(v3 + 24)))
  {
    OUTLINED_FUNCTION_135();
  }

  else
  {
    OUTLINED_FUNCTION_101();
  }

  OUTLINED_FUNCTION_134(v4, v5);
  sub_21700DF14();
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_216F2CAB4()
{
  v1 = OUTLINED_FUNCTION_58_16();
  v3 = (v0 + *(v2(v1) + 24));

  *v3 = 0;
  v3[1] = 0;
  return result;
}

uint64_t sub_216F2CB20()
{
  v0 = OUTLINED_FUNCTION_112();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_36_47(v1);
  v3 = type metadata accessor for PosterLockup.Kind.TallArtwork.Bottom(v2);
  if (OUTLINED_FUNCTION_59_1(*(v3 + 28)))
  {
    OUTLINED_FUNCTION_135();
  }

  else
  {
    OUTLINED_FUNCTION_101();
  }

  OUTLINED_FUNCTION_134(v4, v5);
  sub_21700DF14();
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_216F2CBF4()
{
  v2 = OUTLINED_FUNCTION_31_0();
  result = type metadata accessor for PosterLockup.Kind.TallArtwork.Bottom(v2);
  *(v1 + *(result + 32)) = v0;
  return result;
}

uint64_t (*sub_216F2CC20(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_102_1(a1);
  v2 = type metadata accessor for PosterLockup.Kind.TallArtwork.Bottom(v1);
  OUTLINED_FUNCTION_42_36(*(v2 + 32));
  return sub_216F38D7C;
}

uint64_t (*sub_216F2CCDC(uint64_t a1))(uint64_t result)
{
  v2 = OUTLINED_FUNCTION_146_3(a1);
  *(v1 + 12) = *(type metadata accessor for PosterLockup.Kind.TallArtwork.Bottom(v2) + 36);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_42_1(v3);
  return sub_216F27AAC;
}

uint64_t sub_216F2CD8C()
{
  v2 = OUTLINED_FUNCTION_31_0();
  result = type metadata accessor for PosterLockup.Kind.TallArtwork.Bottom(v2);
  *(v1 + *(result + 40)) = v0;
  return result;
}

uint64_t (*sub_216F2CDB8(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_102_1(a1);
  v2 = type metadata accessor for PosterLockup.Kind.TallArtwork.Bottom(v1);
  OUTLINED_FUNCTION_42_36(*(v2 + 40));
  return sub_216F38D7C;
}

uint64_t sub_216F2CE5C()
{
  v0 = OUTLINED_FUNCTION_8_1();
  v1(v0);
  OUTLINED_FUNCTION_153_1();
  sub_217007884();
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_126_3();

  return v3(v2);
}

uint64_t sub_216F2CEE4()
{
  v3 = OUTLINED_FUNCTION_31_0();
  v4(v3);
  OUTLINED_FUNCTION_153_1();
  sub_217007884();
  OUTLINED_FUNCTION_34();
  v6 = *(v5 + 40);

  return v6(v1 + v2, v0);
}

uint64_t sub_216F2CF54()
{
  v0 = OUTLINED_FUNCTION_31_0();
  type metadata accessor for PosterLockup.Kind.TallArtwork.Bottom(v0);
  return OUTLINED_FUNCTION_177();
}

uint64_t sub_216F2CF94@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_17_0();
  type metadata accessor for PosterLockup.Kind.SquareArtwork(v5);
  OUTLINED_FUNCTION_84_15();
  v6 = type metadata accessor for PosterLockup.Kind.SquareArtwork.Chin(0);
  OUTLINED_FUNCTION_7_6();
  if (v7)
  {
    *a1 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_122_8();
    sub_217007874();
    OUTLINED_FUNCTION_30_3(v6[6]);
    OUTLINED_FUNCTION_30_3(v6[7]);
    OUTLINED_FUNCTION_137_4(v6[8]);
    OUTLINED_FUNCTION_40_1(a1 + v6[9]);
    result = OUTLINED_FUNCTION_7_6();
    if (!v7)
    {
      return sub_216697664(v1, &qword_27CABCBE8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_182();
    OUTLINED_FUNCTION_92_0();
    return sub_216F2EA30();
  }

  return result;
}

void sub_216F2D090(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for PosterLockup.Kind.SquareArtwork.Chin(0);
  OUTLINED_FUNCTION_157_1();
  sub_217007874();
  OUTLINED_FUNCTION_30_3(v2[6]);
  OUTLINED_FUNCTION_30_3(v2[7]);
  OUTLINED_FUNCTION_137_4(v2[8]);
  OUTLINED_FUNCTION_40_1(a1 + v2[9]);
}

uint64_t sub_216F2D0F4()
{
  v1 = OUTLINED_FUNCTION_31_0();
  v2 = type metadata accessor for PosterLockup.Kind.SquareArtwork(v1);
  sub_216697664(v0 + *(v2 + 20), &qword_27CABCBE8);
  OUTLINED_FUNCTION_3_182();
  OUTLINED_FUNCTION_95_0();
  sub_216F2EA30();
  type metadata accessor for PosterLockup.Kind.SquareArtwork.Chin(0);
  OUTLINED_FUNCTION_151_2();
  OUTLINED_FUNCTION_41();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void sub_216F2D168()
{
  OUTLINED_FUNCTION_75_6();
  v2 = OUTLINED_FUNCTION_136();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_74(v3);
  v4 = OUTLINED_FUNCTION_54_3();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_36(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_140_2(v7);
  v9 = type metadata accessor for PosterLockup.Kind.SquareArtwork.Chin(v8);
  *(v1 + 16) = v9;
  OUTLINED_FUNCTION_34();
  v11 = *(v10 + 64);
  *(v1 + 24) = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_149_0(v12);
  v14 = type metadata accessor for PosterLockup.Kind.SquareArtwork(v13);
  OUTLINED_FUNCTION_104_8(*(v14 + 20));
  OUTLINED_FUNCTION_6_3();
  if (v15)
  {
    *v11 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_119_8();
    sub_217007874();
    OUTLINED_FUNCTION_78_15();
    OUTLINED_FUNCTION_94_1(v9[7]);
    *(v11 + v9[8]) = 2;
    OUTLINED_FUNCTION_40_1(v11 + v9[9]);
    OUTLINED_FUNCTION_6_3();
    if (!v15)
    {
      sub_216697664(v0, &qword_27CABCBE8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_182();
    OUTLINED_FUNCTION_98();
    sub_216F2EA30();
  }

  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_65_2();
}

void sub_216F2D2A8()
{
  OUTLINED_FUNCTION_75_6();
  OUTLINED_FUNCTION_73_0();
  if (v5)
  {
    OUTLINED_FUNCTION_25_19();
    sub_216F2EA84();
    sub_216697664(v4 + v3, &qword_27CABCBE8);
    OUTLINED_FUNCTION_3_182();
    sub_216F2EA30();
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_90_11();
    sub_216F2EAD8();
  }

  else
  {
    sub_216697664(v4 + v3, &qword_27CABCBE8);
    OUTLINED_FUNCTION_3_182();
    sub_216F2EA30();
    OUTLINED_FUNCTION_64();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_65_2();

  free(v6);
}

uint64_t sub_216F2D3C8()
{
  OUTLINED_FUNCTION_141();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  v5 = MEMORY[0x28223BE20](v4);
  v1(0, v5);
  OUTLINED_FUNCTION_615();
  sub_2166A6EA4();
  v0(0);
  v6 = OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_31_2(v6, v7, v8);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  OUTLINED_FUNCTION_47_2();
  sub_216697664(v11, v12);
  return v10;
}

uint64_t sub_216F2D4BC()
{
  OUTLINED_FUNCTION_141();
  v3 = OUTLINED_FUNCTION_58_16();
  v5 = v4(v3);
  sub_216697664(v1 + *(v5 + 20), v2);
  v0(0);
  OUTLINED_FUNCTION_38_2();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_216F2D534()
{
  OUTLINED_FUNCTION_8_1();
  sub_217007884();
  OUTLINED_FUNCTION_34();
  v0 = OUTLINED_FUNCTION_8();

  return v1(v0);
}

uint64_t sub_216F2D58C()
{
  OUTLINED_FUNCTION_31_0();
  sub_217007884();
  OUTLINED_FUNCTION_34();
  v0 = OUTLINED_FUNCTION_38();

  return v1(v0);
}

uint64_t sub_216F2D614()
{
  v0 = OUTLINED_FUNCTION_112();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_36_47(v1);
  v3 = type metadata accessor for PosterLockup.Kind.SquareArtwork.Chin(v2);
  if (OUTLINED_FUNCTION_59_1(*(v3 + 24)))
  {
    OUTLINED_FUNCTION_135();
  }

  else
  {
    OUTLINED_FUNCTION_101();
  }

  OUTLINED_FUNCTION_134(v4, v5);
  sub_21700DF14();
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_216F2D6DC()
{
  v1 = OUTLINED_FUNCTION_58_16();
  if (!*(v0 + *(v2(v1) + 28) + 8))
  {
    OUTLINED_FUNCTION_138_0();
  }

  sub_21700DF14();
  return OUTLINED_FUNCTION_8();
}

uint64_t sub_216F2D744()
{
  v3 = OUTLINED_FUNCTION_37_0();
  v5 = (v1 + *(v4(v3) + 28));

  *v5 = v2;
  v5[1] = v0;
  return result;
}

uint64_t sub_216F2D788()
{
  v0 = OUTLINED_FUNCTION_112();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_36_47(v1);
  v3 = type metadata accessor for PosterLockup.Kind.SquareArtwork.Chin(v2);
  if (OUTLINED_FUNCTION_59_1(*(v3 + 28)))
  {
    OUTLINED_FUNCTION_135();
  }

  else
  {
    OUTLINED_FUNCTION_101();
  }

  OUTLINED_FUNCTION_134(v4, v5);
  sub_21700DF14();
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_216F2D838()
{
  v1 = OUTLINED_FUNCTION_58_16();
  v3 = (v0 + *(v2(v1) + 28));

  *v3 = 0;
  v3[1] = 0;
  return result;
}

uint64_t sub_216F2D898()
{
  v2 = OUTLINED_FUNCTION_31_0();
  result = type metadata accessor for PosterLockup.Kind.SquareArtwork.Chin(v2);
  *(v1 + *(result + 32)) = v0;
  return result;
}

uint64_t (*sub_216F2D8C4(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_102_1(a1);
  v2 = type metadata accessor for PosterLockup.Kind.SquareArtwork.Chin(v1);
  OUTLINED_FUNCTION_42_36(*(v2 + 32));
  return sub_216F38D7C;
}

uint64_t sub_216F2D968()
{
  v0 = OUTLINED_FUNCTION_58_16();
  v1(v0);
  OUTLINED_FUNCTION_12_1();
  if (v3)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t (*sub_216F2D9F4(uint64_t a1))(uint64_t result)
{
  v2 = OUTLINED_FUNCTION_146_3(a1);
  *(v1 + 12) = *(type metadata accessor for PosterLockup.Kind.SquareArtwork.Chin(v2) + 36);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_42_1(v3);
  return sub_216F27AAC;
}

void sub_216F2DA80()
{
  v1 = OUTLINED_FUNCTION_58_16();
  v3 = v2(v1);
  OUTLINED_FUNCTION_40_1(v0 + *(v3 + 36));
}

uint64_t sub_216F2DADC()
{
  v0 = OUTLINED_FUNCTION_31_0();
  type metadata accessor for PosterLockup.Kind.SquareArtwork.Chin(v0);
  return OUTLINED_FUNCTION_177();
}

uint64_t sub_216F2DB1C@<X0>(uint64_t a1@<X8>)
{
  sub_217007874();
  v2 = *(type metadata accessor for PosterLockup(0) + 20);
  if (qword_27CACDB80 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_27CACE0D8;
}

uint64_t sub_216F2DBC8()
{
  v0 = OUTLINED_FUNCTION_31_0();
  type metadata accessor for PosterLockupCollection(v0);
  return OUTLINED_FUNCTION_177();
}

uint64_t sub_216F2DC08@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for PosterLockupCollection(0);
  OUTLINED_FUNCTION_157_1();
  return sub_217007874();
}

uint64_t sub_216F2DC50()
{
  v0 = sub_217007B44();
  __swift_allocate_value_buffer(v0, qword_27CB22B48);
  __swift_project_value_buffer(v0, qword_27CB22B48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0A8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_217072BE0;
  v4 = v29 + v3;
  v5 = v29 + v3 + v1[14];
  *(v29 + v3) = 1;
  *v5 = "id";
  *(v5 + 8) = 2;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_217007B14();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "heading";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "kind";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "play_action";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "segue";
  *(v15 + 1) = 5;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "artwork";
  *(v17 + 1) = 7;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "video_artwork";
  *(v19 + 1) = 13;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "content_descriptor";
  *(v21 + 1) = 18;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "number_of_social_badges";
  *(v23 + 1) = 23;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "accessibility_label";
  *(v25 + 1) = 19;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "top_leading_badge";
  *(v27 + 1) = 17;
  v27[16] = 2;
  v8();
  return sub_217007B24();
}

uint64_t sub_216F2E0AC()
{
  OUTLINED_FUNCTION_39_33();
  result = sub_216F2E0DC();
  qword_27CACE0D8 = result;
  return result;
}

uint64_t sub_216F2E0DC()
{
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  v1 = OBJC_IVAR____TtCV18SwiftMusicProtocol12PosterLockupP33_EC915D655E10ABA6A59995832062211413_StorageClass__kind;
  v2 = type metadata accessor for PosterLockup.Kind(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV18SwiftMusicProtocol12PosterLockupP33_EC915D655E10ABA6A59995832062211413_StorageClass__playAction;
  v4 = type metadata accessor for AnyAction(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol12PosterLockupP33_EC915D655E10ABA6A59995832062211413_StorageClass__segue, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV18SwiftMusicProtocol12PosterLockupP33_EC915D655E10ABA6A59995832062211413_StorageClass__artwork;
  v6 = type metadata accessor for Artwork(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV18SwiftMusicProtocol12PosterLockupP33_EC915D655E10ABA6A59995832062211413_StorageClass__videoArtwork;
  v8 = type metadata accessor for VideoArtwork(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV18SwiftMusicProtocol12PosterLockupP33_EC915D655E10ABA6A59995832062211413_StorageClass__contentDescriptor;
  v10 = type metadata accessor for ContentDescriptor(0);
  __swift_storeEnumTagSinglePayload(v0 + v9, 1, 1, v10);
  v11 = v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol12PosterLockupP33_EC915D655E10ABA6A59995832062211413_StorageClass__numberOfSocialBadges;
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = (v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol12PosterLockupP33_EC915D655E10ABA6A59995832062211413_StorageClass__accessibilityLabel);
  *v12 = 0;
  v12[1] = 0;
  v13 = OBJC_IVAR____TtCV18SwiftMusicProtocol12PosterLockupP33_EC915D655E10ABA6A59995832062211413_StorageClass__topLeadingBadge;
  v14 = type metadata accessor for AccessoryBadge();
  __swift_storeEnumTagSinglePayload(v0 + v13, 1, 1, v14);
  return v0;
}

uint64_t sub_216F2E22C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE140);
  MEMORY[0x28223BE20](v3 - 8);
  v44 = v38 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE120);
  MEMORY[0x28223BE20](v5 - 8);
  v43 = v38 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE110);
  MEMORY[0x28223BE20](v7 - 8);
  v42 = v38 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE100);
  MEMORY[0x28223BE20](v9 - 8);
  v40 = v38 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98);
  MEMORY[0x28223BE20](v11 - 8);
  v38[1] = v38 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0E0);
  MEMORY[0x28223BE20](v13 - 8);
  *(v1 + 32) = 0u;
  *(v1 + 16) = 0u;
  v14 = OBJC_IVAR____TtCV18SwiftMusicProtocol12PosterLockupP33_EC915D655E10ABA6A59995832062211413_StorageClass__kind;
  v15 = type metadata accessor for PosterLockup.Kind(0);
  __swift_storeEnumTagSinglePayload(v1 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV18SwiftMusicProtocol12PosterLockupP33_EC915D655E10ABA6A59995832062211413_StorageClass__playAction;
  v38[2] = OBJC_IVAR____TtCV18SwiftMusicProtocol12PosterLockupP33_EC915D655E10ABA6A59995832062211413_StorageClass__playAction;
  v17 = type metadata accessor for AnyAction(0);
  __swift_storeEnumTagSinglePayload(v1 + v16, 1, 1, v17);
  v38[3] = OBJC_IVAR____TtCV18SwiftMusicProtocol12PosterLockupP33_EC915D655E10ABA6A59995832062211413_StorageClass__segue;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV18SwiftMusicProtocol12PosterLockupP33_EC915D655E10ABA6A59995832062211413_StorageClass__segue, 1, 1, v17);
  v18 = OBJC_IVAR____TtCV18SwiftMusicProtocol12PosterLockupP33_EC915D655E10ABA6A59995832062211413_StorageClass__artwork;
  v38[4] = OBJC_IVAR____TtCV18SwiftMusicProtocol12PosterLockupP33_EC915D655E10ABA6A59995832062211413_StorageClass__artwork;
  v19 = type metadata accessor for Artwork(0);
  __swift_storeEnumTagSinglePayload(v1 + v18, 1, 1, v19);
  v20 = OBJC_IVAR____TtCV18SwiftMusicProtocol12PosterLockupP33_EC915D655E10ABA6A59995832062211413_StorageClass__videoArtwork;
  v38[5] = OBJC_IVAR____TtCV18SwiftMusicProtocol12PosterLockupP33_EC915D655E10ABA6A59995832062211413_StorageClass__videoArtwork;
  v21 = type metadata accessor for VideoArtwork(0);
  __swift_storeEnumTagSinglePayload(v1 + v20, 1, 1, v21);
  v22 = OBJC_IVAR____TtCV18SwiftMusicProtocol12PosterLockupP33_EC915D655E10ABA6A59995832062211413_StorageClass__contentDescriptor;
  v38[6] = OBJC_IVAR____TtCV18SwiftMusicProtocol12PosterLockupP33_EC915D655E10ABA6A59995832062211413_StorageClass__contentDescriptor;
  v23 = type metadata accessor for ContentDescriptor(0);
  __swift_storeEnumTagSinglePayload(v1 + v22, 1, 1, v23);
  v24 = v1 + OBJC_IVAR____TtCV18SwiftMusicProtocol12PosterLockupP33_EC915D655E10ABA6A59995832062211413_StorageClass__numberOfSocialBadges;
  v39 = v1 + OBJC_IVAR____TtCV18SwiftMusicProtocol12PosterLockupP33_EC915D655E10ABA6A59995832062211413_StorageClass__numberOfSocialBadges;
  *v24 = 0;
  *(v24 + 4) = 1;
  v25 = (v1 + OBJC_IVAR____TtCV18SwiftMusicProtocol12PosterLockupP33_EC915D655E10ABA6A59995832062211413_StorageClass__accessibilityLabel);
  *v25 = 0;
  v25[1] = 0;
  v26 = OBJC_IVAR____TtCV18SwiftMusicProtocol12PosterLockupP33_EC915D655E10ABA6A59995832062211413_StorageClass__topLeadingBadge;
  v41 = OBJC_IVAR____TtCV18SwiftMusicProtocol12PosterLockupP33_EC915D655E10ABA6A59995832062211413_StorageClass__topLeadingBadge;
  v27 = type metadata accessor for AccessoryBadge();
  __swift_storeEnumTagSinglePayload(v1 + v26, 1, 1, v27);
  swift_beginAccess();
  v29 = a1[2];
  v28 = a1[3];
  swift_beginAccess();
  *(v1 + 16) = v29;
  *(v1 + 24) = v28;
  swift_beginAccess();
  v31 = a1[4];
  v30 = a1[5];
  swift_beginAccess();
  *(v1 + 32) = v31;
  *(v1 + 40) = v30;
  swift_beginAccess();
  sub_2166A6EA4();
  swift_beginAccess();
  sub_21700DF14();
  sub_21700DF14();
  sub_216F2EB2C();
  swift_endAccess();
  swift_beginAccess();
  sub_2166A6EA4();
  swift_beginAccess();
  sub_216F2EB2C();
  swift_endAccess();
  swift_beginAccess();
  sub_2166A6EA4();
  swift_beginAccess();
  sub_216F2EB2C();
  swift_endAccess();
  swift_beginAccess();
  sub_2166A6EA4();
  swift_beginAccess();
  sub_216F2EB2C();
  swift_endAccess();
  swift_beginAccess();
  sub_2166A6EA4();
  swift_beginAccess();
  sub_216F2EB2C();
  swift_endAccess();
  swift_beginAccess();
  sub_2166A6EA4();
  swift_beginAccess();
  sub_216F2EB2C();
  swift_endAccess();
  v32 = a1 + OBJC_IVAR____TtCV18SwiftMusicProtocol12PosterLockupP33_EC915D655E10ABA6A59995832062211413_StorageClass__numberOfSocialBadges;
  swift_beginAccess();
  LODWORD(v30) = *v32;
  LOBYTE(v32) = v32[4];
  v33 = v39;
  swift_beginAccess();
  *v33 = v30;
  *(v33 + 4) = v32;
  v34 = (a1 + OBJC_IVAR____TtCV18SwiftMusicProtocol12PosterLockupP33_EC915D655E10ABA6A59995832062211413_StorageClass__accessibilityLabel);
  swift_beginAccess();
  v36 = *v34;
  v35 = v34[1];
  swift_beginAccess();
  *v25 = v36;
  v25[1] = v35;
  sub_21700DF14();

  swift_beginAccess();
  sub_2166A6EA4();

  swift_beginAccess();
  sub_216F2EB2C();
  swift_endAccess();
  return v1;
}

uint64_t sub_216F2EA30()
{
  v1 = OUTLINED_FUNCTION_102();
  v2(v1);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();
  v4(v3);
  return v0;
}

uint64_t sub_216F2EA84()
{
  v1 = OUTLINED_FUNCTION_102();
  v2(v1);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();
  v4(v3);
  return v0;
}

uint64_t sub_216F2EAD8()
{
  v1 = OUTLINED_FUNCTION_31_0();
  v2(v1);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_216F2EB2C()
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_216F2EC24()
{

  sub_216697664(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol12PosterLockupP33_EC915D655E10ABA6A59995832062211413_StorageClass__kind, &qword_27CACE0E0);
  sub_216697664(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol12PosterLockupP33_EC915D655E10ABA6A59995832062211413_StorageClass__playAction, &qword_27CABFF98);
  sub_216697664(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol12PosterLockupP33_EC915D655E10ABA6A59995832062211413_StorageClass__segue, &qword_27CABFF98);
  sub_216697664(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol12PosterLockupP33_EC915D655E10ABA6A59995832062211413_StorageClass__artwork, &qword_27CACE100);
  sub_216697664(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol12PosterLockupP33_EC915D655E10ABA6A59995832062211413_StorageClass__videoArtwork, &qword_27CACE110);
  sub_216697664(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol12PosterLockupP33_EC915D655E10ABA6A59995832062211413_StorageClass__contentDescriptor, &qword_27CACE120);

  sub_216697664(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol12PosterLockupP33_EC915D655E10ABA6A59995832062211413_StorageClass__topLeadingBadge, &qword_27CACE140);
  return v0;
}

uint64_t sub_216F2ED50()
{
  v0 = sub_216F2EC24();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_216F2EDA4()
{
  OUTLINED_FUNCTION_82_16();
  v1 = *(type metadata accessor for PosterLockup(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for PosterLockup._StorageClass(0);
    swift_allocObject();
    v2 = OUTLINED_FUNCTION_18();
    *(v0 + v1) = sub_216F2E22C(v2);
  }

  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_37_48();
  return sub_216F2EE34();
}

uint64_t sub_216F2EE34()
{
  while (1)
  {
    result = sub_217007914();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_216F2EFD8();
        break;
      case 2:
        sub_216F2F05C();
        break;
      case 3:
        sub_216F2F0E0();
        break;
      case 4:
        sub_216F2F1BC();
        break;
      case 5:
        sub_216F2F298();
        break;
      case 6:
        sub_216F2F374();
        break;
      case 7:
        sub_216F2F450();
        break;
      case 8:
        sub_216F2F52C();
        break;
      case 9:
        sub_216F2F608();
        break;
      case 10:
        sub_216F2F694();
        break;
      case 11:
        sub_216F2F720();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_216F2EFD8()
{
  swift_beginAccess();
  sub_2170079A4();
  return swift_endAccess();
}

uint64_t sub_216F2F05C()
{
  swift_beginAccess();
  sub_2170079A4();
  return swift_endAccess();
}

uint64_t sub_216F2F0E0()
{
  swift_beginAccess();
  type metadata accessor for PosterLockup.Kind(0);
  sub_216F36BDC(&qword_27CABCBB0, type metadata accessor for PosterLockup.Kind);
  sub_2170079D4();
  return swift_endAccess();
}

uint64_t sub_216F2F1BC()
{
  swift_beginAccess();
  type metadata accessor for AnyAction(0);
  sub_216F36BDC(&qword_27CACE3E8, type metadata accessor for AnyAction);
  sub_2170079D4();
  return swift_endAccess();
}

uint64_t sub_216F2F298()
{
  swift_beginAccess();
  type metadata accessor for AnyAction(0);
  sub_216F36BDC(&qword_27CACE3E8, type metadata accessor for AnyAction);
  sub_2170079D4();
  return swift_endAccess();
}

uint64_t sub_216F2F374()
{
  swift_beginAccess();
  type metadata accessor for Artwork(0);
  sub_216F36BDC(qword_27CAC77F0, type metadata accessor for Artwork);
  sub_2170079D4();
  return swift_endAccess();
}

uint64_t sub_216F2F450()
{
  swift_beginAccess();
  type metadata accessor for VideoArtwork(0);
  sub_216F36BDC(&qword_27CAC9C78, type metadata accessor for VideoArtwork);
  sub_2170079D4();
  return swift_endAccess();
}

uint64_t sub_216F2F52C()
{
  swift_beginAccess();
  type metadata accessor for ContentDescriptor(0);
  sub_216F36BDC(&qword_27CACE3E0, type metadata accessor for ContentDescriptor);
  sub_2170079D4();
  return swift_endAccess();
}

uint64_t sub_216F2F608()
{
  swift_beginAccess();
  sub_217007964();
  return swift_endAccess();
}

uint64_t sub_216F2F694()
{
  swift_beginAccess();
  sub_2170079A4();
  return swift_endAccess();
}

uint64_t sub_216F2F720()
{
  swift_beginAccess();
  type metadata accessor for AccessoryBadge();
  sub_216F36BDC(&qword_27CAC43B8, type metadata accessor for AccessoryBadge);
  sub_2170079D4();
  return swift_endAccess();
}

uint64_t sub_216F2F7FC()
{
  OUTLINED_FUNCTION_107_2();
  type metadata accessor for PosterLockup(0);
  OUTLINED_FUNCTION_47_2();
  result = sub_216F2F858(v2, v3, v4, v0);
  if (!v1)
  {
    OUTLINED_FUNCTION_109();
    return sub_217007864();
  }

  return result;
}

uint64_t sub_216F2F858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_216F2F980(a1);
  if (!v4)
  {
    sub_216F2FA1C(a1);
    sub_216F2FAB8(a1, a2, a3, a4);
    sub_216F2FCAC(a1, a2, a3, a4);
    sub_216F2FEA0(a1, a2, a3, a4);
    sub_216F30094(a1, a2, a3, a4);
    sub_216F30288(a1, a2, a3, a4);
    sub_216F3047C(a1, a2, a3, a4);
    sub_216F30670(a1);
    sub_216F306FC(a1);
    return sub_216F307A0(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_216F2F980(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 24))
  {
    sub_21700DF14();
    sub_217007AD4();
  }

  return result;
}

uint64_t sub_216F2FA1C(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 40))
  {
    sub_21700DF14();
    sub_217007AD4();
  }

  return result;
}

uint64_t sub_216F2FAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for PosterLockup.Kind(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_216697664(v6, &qword_27CACE0E0);
  }

  sub_216F2EA30();
  sub_216F36BDC(&qword_27CABCBB0, type metadata accessor for PosterLockup.Kind);
  sub_217007B04();
  return sub_216F2EAD8();
}

uint64_t sub_216F2FCAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AnyAction(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_216697664(v6, &qword_27CABFF98);
  }

  sub_216F2EA30();
  sub_216F36BDC(&qword_27CACE3E8, type metadata accessor for AnyAction);
  sub_217007B04();
  return sub_216F2EAD8();
}

uint64_t sub_216F2FEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AnyAction(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_216697664(v6, &qword_27CABFF98);
  }

  sub_216F2EA30();
  sub_216F36BDC(&qword_27CACE3E8, type metadata accessor for AnyAction);
  sub_217007B04();
  return sub_216F2EAD8();
}

uint64_t sub_216F30094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE100);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for Artwork(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_216697664(v6, &qword_27CACE100);
  }

  sub_216F2EA30();
  sub_216F36BDC(qword_27CAC77F0, type metadata accessor for Artwork);
  sub_217007B04();
  return sub_216F2EAD8();
}

uint64_t sub_216F30288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE110);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for VideoArtwork(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_216697664(v6, &qword_27CACE110);
  }

  sub_216F2EA30();
  sub_216F36BDC(&qword_27CAC9C78, type metadata accessor for VideoArtwork);
  sub_217007B04();
  return sub_216F2EAD8();
}

uint64_t sub_216F3047C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE120);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for ContentDescriptor(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_216697664(v6, &qword_27CACE120);
  }

  sub_216F2EA30();
  sub_216F36BDC(&qword_27CACE3E0, type metadata accessor for ContentDescriptor);
  sub_217007B04();
  return sub_216F2EAD8();
}

uint64_t sub_216F30670(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtCV18SwiftMusicProtocol12PosterLockupP33_EC915D655E10ABA6A59995832062211413_StorageClass__numberOfSocialBadges;
  result = swift_beginAccess();
  if ((*(v1 + 4) & 1) == 0)
  {
    return sub_217007A94();
  }

  return result;
}

uint64_t sub_216F306FC(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtCV18SwiftMusicProtocol12PosterLockupP33_EC915D655E10ABA6A59995832062211413_StorageClass__accessibilityLabel;
  result = swift_beginAccess();
  if (*(v1 + 8))
  {
    sub_21700DF14();
    sub_217007AD4();
  }

  return result;
}

uint64_t sub_216F307A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE140);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AccessoryBadge();
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_216697664(v6, &qword_27CACE140);
  }

  sub_216F2EA30();
  sub_216F36BDC(&qword_27CAC43B8, type metadata accessor for AccessoryBadge);
  sub_217007B04();
  return sub_216F2EAD8();
}

uint64_t sub_216F30994()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_19_67();
  if (*(v1 + v2) != *(v0 + v2))
  {

    sub_216F30A5C();
    v4 = v3;

    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  sub_217007884();
  OUTLINED_FUNCTION_0_265();
  sub_216F36BDC(v5, v6);
  OUTLINED_FUNCTION_38();
  return sub_21700E494() & 1;
}

void sub_216F30A5C()
{
  OUTLINED_FUNCTION_49();
  v2 = v1;
  v4 = v3;
  v176 = type metadata accessor for AccessoryBadge();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_0();
  v173 = v6;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE3B8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v9 = &v170 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE140);
  v11 = OUTLINED_FUNCTION_36(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  v175 = v12;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_47_1();
  v177 = v14;
  v15 = OUTLINED_FUNCTION_4_1();
  v182 = type metadata accessor for ContentDescriptor(v15);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_0();
  v178 = v17;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE3C0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_105();
  v183 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE120);
  v21 = OUTLINED_FUNCTION_36(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_0();
  v179 = v22;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_47_1();
  v186 = v24;
  v25 = OUTLINED_FUNCTION_4_1();
  v188 = type metadata accessor for VideoArtwork(v25);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_6_0();
  v180 = v27;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE3C8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_105();
  v189 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE110);
  v31 = OUTLINED_FUNCTION_36(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_1_0();
  v184 = v32;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_47_1();
  v191 = v34;
  v35 = OUTLINED_FUNCTION_4_1();
  v193 = type metadata accessor for Artwork(v35);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_6_0();
  v185 = v37;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE3D0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_105();
  v194 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE100);
  v41 = OUTLINED_FUNCTION_36(v40);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_1_0();
  v190 = v42;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_47_1();
  v202 = v44;
  v45 = OUTLINED_FUNCTION_4_1();
  v204 = type metadata accessor for AnyAction(v45);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_6_0();
  v196 = v47;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE090);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_1_0();
  v197 = v49;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_47_1();
  v200 = v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98);
  v53 = OUTLINED_FUNCTION_36(v52);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_1_0();
  v195 = v54;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v55);
  v203 = &v170 - v56;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v57);
  v198 = &v170 - v58;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_47_1();
  v205 = v60;
  v61 = OUTLINED_FUNCTION_4_1();
  v62 = type metadata accessor for PosterLockup.Kind(v61);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_6_0();
  v199 = v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE3D8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v66);
  v68 = &v170 - v67;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0E0);
  v70 = OUTLINED_FUNCTION_36(v69);
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v71);
  v73 = &v170 - v72;
  OUTLINED_FUNCTION_17_2();
  v206 = v4;
  v74 = *(v4 + 16);
  v75 = *(v4 + 24);
  OUTLINED_FUNCTION_17_2();
  v76 = v2[3];
  if (!v75)
  {
    if (v76)
    {
      goto LABEL_81;
    }

LABEL_10:
    v78 = v206;
    OUTLINED_FUNCTION_17_2();
    v79 = *(v78 + 32);
    v80 = *(v78 + 40);
    OUTLINED_FUNCTION_17_2();
    v81 = v2[5];
    if (v80)
    {
      if (!v81)
      {
        goto LABEL_81;
      }

      if (v79 != v2[4] || v80 != v81)
      {
        OUTLINED_FUNCTION_90();
        if ((sub_21700F7D4() & 1) == 0)
        {
          goto LABEL_81;
        }
      }
    }

    else if (v81)
    {
      goto LABEL_81;
    }

    v171 = v9;
    v172 = v2;
    v83 = v206;
    OUTLINED_FUNCTION_17_2();
    sub_2166A6EA4();
    OUTLINED_FUNCTION_17_2();
    v84 = *(v65 + 48);
    sub_2166A6EA4();
    v85 = v172;
    sub_2166A6EA4();
    OUTLINED_FUNCTION_31_2(v68, 1, v62);
    if (v77)
    {

      sub_216697664(v73, &qword_27CACE0E0);
      OUTLINED_FUNCTION_31_2(&v68[v84], 1, v62);
      if (v77)
      {
        sub_216697664(v68, &qword_27CACE0E0);
        goto LABEL_29;
      }
    }

    else
    {
      OUTLINED_FUNCTION_44_21();
      sub_2166A6EA4();
      OUTLINED_FUNCTION_31_2(&v68[v84], 1, v62);
      if (!v86)
      {
        OUTLINED_FUNCTION_27_58();
        v89 = v199;
        sub_216F2EA30();
        v83 = v206;

        sub_216F3322C(v0, v89, v90, v91, v92, v93, v94, v95, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181);
        v97 = v96;
        sub_216F2EAD8();
        sub_216697664(v73, &qword_27CACE0E0);
        OUTLINED_FUNCTION_22_4();
        sub_216F2EAD8();
        sub_216697664(v68, &qword_27CACE0E0);
        if ((v97 & 1) == 0)
        {
          goto LABEL_80;
        }

LABEL_29:
        OUTLINED_FUNCTION_17_2();
        v98 = v205;
        OUTLINED_FUNCTION_49_2();
        sub_2166A6EA4();
        OUTLINED_FUNCTION_17_2();
        v99 = v200;
        v100 = v201;
        v101 = *(v201 + 48);
        OUTLINED_FUNCTION_49_2();
        sub_2166A6EA4();
        OUTLINED_FUNCTION_45_35();
        v102 = v99;
        sub_2166A6EA4();
        v103 = OUTLINED_FUNCTION_19_2();
        OUTLINED_FUNCTION_31_2(v103, v104, v204);
        if (v77)
        {
          sub_216697664(v98, &qword_27CABFF98);
          OUTLINED_FUNCTION_5_3(v99 + v101);
          v105 = v202;
          v106 = v203;
          if (v77)
          {
            sub_216697664(v102, &qword_27CABFF98);
LABEL_39:
            OUTLINED_FUNCTION_17_2();
            OUTLINED_FUNCTION_49_2();
            sub_2166A6EA4();
            OUTLINED_FUNCTION_17_2();
            v110 = *(v100 + 48);
            v111 = v106;
            v112 = v197;
            OUTLINED_FUNCTION_49_2();
            sub_2166A6EA4();
            v113 = v204;
            sub_2166A6EA4();
            OUTLINED_FUNCTION_31_2(v112, 1, v113);
            if (v77)
            {
              sub_216697664(v111, &qword_27CABFF98);
              OUTLINED_FUNCTION_31_2(v112 + v110, 1, v113);
              if (v77)
              {
                sub_216697664(v112, &qword_27CABFF98);
                goto LABEL_49;
              }
            }

            else
            {
              sub_2166A6EA4();
              OUTLINED_FUNCTION_31_2(v112 + v110, 1, v113);
              if (!v114)
              {
                OUTLINED_FUNCTION_12_94();
                sub_216F2EA30();
                OUTLINED_FUNCTION_44_21();
                v115 = sub_216F82038();
                sub_216F2EAD8();
                OUTLINED_FUNCTION_82_2();
                sub_216697664(v116, v117);
                sub_216F2EAD8();
                OUTLINED_FUNCTION_82_2();
                sub_216697664(v118, v119);
                if ((v115 & 1) == 0)
                {
                  goto LABEL_80;
                }

LABEL_49:
                OUTLINED_FUNCTION_17_2();
                OUTLINED_FUNCTION_49_2();
                sub_2166A6EA4();
                OUTLINED_FUNCTION_17_2();
                v120 = *(v192 + 48);
                v121 = v105;
                v122 = v194;
                OUTLINED_FUNCTION_49_2();
                sub_2166A6EA4();
                OUTLINED_FUNCTION_45_35();
                sub_2166A6EA4();
                v123 = OUTLINED_FUNCTION_19_2();
                OUTLINED_FUNCTION_31_2(v123, v124, v193);
                if (v77)
                {
                  sub_216697664(v121, &qword_27CACE100);
                  OUTLINED_FUNCTION_12_4(v122 + v120);
                  if (v77)
                  {
                    sub_216697664(v122, &qword_27CACE100);
LABEL_59:
                    OUTLINED_FUNCTION_17_2();
                    v129 = v191;
                    OUTLINED_FUNCTION_49_2();
                    sub_2166A6EA4();
                    OUTLINED_FUNCTION_17_2();
                    v130 = *(v187 + 48);
                    v122 = v189;
                    OUTLINED_FUNCTION_49_2();
                    sub_2166A6EA4();
                    OUTLINED_FUNCTION_45_35();
                    sub_2166A6EA4();
                    v131 = OUTLINED_FUNCTION_19_2();
                    OUTLINED_FUNCTION_31_2(v131, v132, v188);
                    if (v77)
                    {
                      sub_216697664(v129, &qword_27CACE110);
                      OUTLINED_FUNCTION_12_4(v122 + v130);
                      if (v77)
                      {
                        sub_216697664(v122, &qword_27CACE110);
LABEL_69:
                        OUTLINED_FUNCTION_17_2();
                        OUTLINED_FUNCTION_49_2();
                        sub_2166A6EA4();
                        OUTLINED_FUNCTION_17_2();
                        v140 = *(v181 + 48);
                        v122 = v183;
                        OUTLINED_FUNCTION_49_2();
                        sub_2166A6EA4();
                        OUTLINED_FUNCTION_45_35();
                        sub_2166A6EA4();
                        v141 = OUTLINED_FUNCTION_19_2();
                        OUTLINED_FUNCTION_31_2(v141, v142, v182);
                        if (v77)
                        {
                          sub_216697664(v186, &qword_27CACE120);
                          OUTLINED_FUNCTION_12_4(v122 + v140);
                          if (v77)
                          {
                            sub_216697664(v122, &qword_27CACE120);
LABEL_83:
                            v150 = (v83 + OBJC_IVAR____TtCV18SwiftMusicProtocol12PosterLockupP33_EC915D655E10ABA6A59995832062211413_StorageClass__numberOfSocialBadges);
                            OUTLINED_FUNCTION_17_2();
                            v151 = *v150;
                            v152 = *(v150 + 4);
                            v153 = v85 + OBJC_IVAR____TtCV18SwiftMusicProtocol12PosterLockupP33_EC915D655E10ABA6A59995832062211413_StorageClass__numberOfSocialBadges;
                            OUTLINED_FUNCTION_17_2();
                            if (v152)
                            {
                              if ((*(v153 + 4) & 1) == 0)
                              {
                                goto LABEL_80;
                              }
                            }

                            else if ((*(v153 + 4) & 1) != 0 || v151 != *v153)
                            {
                              goto LABEL_80;
                            }

                            v154 = (v83 + OBJC_IVAR____TtCV18SwiftMusicProtocol12PosterLockupP33_EC915D655E10ABA6A59995832062211413_StorageClass__accessibilityLabel);
                            OUTLINED_FUNCTION_17_2();
                            v155 = *v154;
                            v156 = v154[1];
                            v157 = (v85 + OBJC_IVAR____TtCV18SwiftMusicProtocol12PosterLockupP33_EC915D655E10ABA6A59995832062211413_StorageClass__accessibilityLabel);
                            OUTLINED_FUNCTION_17_2();
                            v158 = v157[1];
                            if (v156)
                            {
                              if (v158)
                              {
                                v159 = v155 == *v157 && v156 == v158;
                                if (v159 || (OUTLINED_FUNCTION_7_4(), (sub_21700F7D4() & 1) != 0))
                                {
LABEL_97:
                                  OUTLINED_FUNCTION_17_2();
                                  OUTLINED_FUNCTION_49_2();
                                  sub_2166A6EA4();
                                  OUTLINED_FUNCTION_17_2();
                                  v160 = *(v174 + 48);
                                  v161 = v171;
                                  OUTLINED_FUNCTION_49_2();
                                  sub_2166A6EA4();
                                  OUTLINED_FUNCTION_45_35();
                                  sub_2166A6EA4();
                                  v162 = OUTLINED_FUNCTION_19_2();
                                  OUTLINED_FUNCTION_31_2(v162, v163, v176);
                                  if (v77)
                                  {

                                    sub_216697664(v177, &qword_27CACE140);
                                    OUTLINED_FUNCTION_5_3(v161 + v160);
                                    if (v77)
                                    {
                                      sub_216697664(v171, &qword_27CACE140);
                                      goto LABEL_81;
                                    }
                                  }

                                  else
                                  {
                                    sub_2166A6EA4();
                                    OUTLINED_FUNCTION_5_3(v161 + v160);
                                    if (!v164)
                                    {
                                      OUTLINED_FUNCTION_29_56();
                                      v165 = v173;
                                      sub_216F2EA30();
                                      sub_216FC42BC(v175, v165);

                                      sub_216F2EAD8();
                                      OUTLINED_FUNCTION_82_2();
                                      sub_216697664(v166, v167);
                                      sub_216F2EAD8();
                                      OUTLINED_FUNCTION_82_2();
                                      sub_216697664(v168, v169);
                                      goto LABEL_81;
                                    }

                                    sub_216697664(v177, &qword_27CACE140);
                                    sub_216F2EAD8();
                                  }

                                  sub_216697664(v171, &qword_27CACE3B8);
                                  goto LABEL_81;
                                }
                              }
                            }

                            else if (!v158)
                            {
                              goto LABEL_97;
                            }

LABEL_80:

                            goto LABEL_81;
                          }
                        }

                        else
                        {
                          sub_2166A6EA4();
                          OUTLINED_FUNCTION_12_4(v122 + v140);
                          if (!v143)
                          {
                            OUTLINED_FUNCTION_30_56();
                            sub_216F2EA30();
                            OUTLINED_FUNCTION_44_21();
                            sub_216FE1ABC();
                            v145 = v144;
                            sub_216F2EAD8();
                            OUTLINED_FUNCTION_82_2();
                            sub_216697664(v146, v147);
                            sub_216F2EAD8();
                            OUTLINED_FUNCTION_82_2();
                            sub_216697664(v148, v149);
                            if ((v145 & 1) == 0)
                            {
                              goto LABEL_80;
                            }

                            goto LABEL_83;
                          }

                          sub_216697664(v186, &qword_27CACE120);
                          sub_216F2EAD8();
                        }

                        v87 = &qword_27CACE3C0;
                        goto LABEL_78;
                      }
                    }

                    else
                    {
                      sub_2166A6EA4();
                      OUTLINED_FUNCTION_12_4(v122 + v130);
                      if (!v133)
                      {
                        OUTLINED_FUNCTION_31_55();
                        sub_216F2EA30();
                        OUTLINED_FUNCTION_44_21();
                        sub_216F6FA84();
                        v135 = v134;
                        sub_216F2EAD8();
                        OUTLINED_FUNCTION_82_2();
                        sub_216697664(v136, v137);
                        sub_216F2EAD8();
                        OUTLINED_FUNCTION_82_2();
                        sub_216697664(v138, v139);
                        if ((v135 & 1) == 0)
                        {
                          goto LABEL_80;
                        }

                        goto LABEL_69;
                      }

                      sub_216697664(v191, &qword_27CACE110);
                      sub_216F2EAD8();
                    }

                    v87 = &qword_27CACE3C8;
LABEL_78:
                    v88 = v122;
                    goto LABEL_79;
                  }
                }

                else
                {
                  sub_2166A6EA4();
                  OUTLINED_FUNCTION_12_4(v122 + v120);
                  if (!v125)
                  {
                    OUTLINED_FUNCTION_32_42();
                    sub_216F2EA30();
                    v126 = OUTLINED_FUNCTION_109();
                    v128 = sub_216F848D8(v126, v127);
                    sub_216F2EAD8();
                    sub_216697664(v202, &qword_27CACE100);
                    OUTLINED_FUNCTION_98();
                    sub_216F2EAD8();
                    sub_216697664(v122, &qword_27CACE100);
                    if ((v128 & 1) == 0)
                    {
                      goto LABEL_80;
                    }

                    goto LABEL_59;
                  }

                  sub_216697664(v202, &qword_27CACE100);
                  sub_216F2EAD8();
                }

                v87 = &qword_27CACE3D0;
                goto LABEL_78;
              }

              sub_216697664(v203, &qword_27CABFF98);
              OUTLINED_FUNCTION_87_13();
              sub_216F2EAD8();
            }

            v87 = &qword_27CACE090;
            v88 = v112;
LABEL_79:
            sub_216697664(v88, v87);
            goto LABEL_80;
          }
        }

        else
        {
          sub_2166A6EA4();
          OUTLINED_FUNCTION_5_3(v99 + v101);
          v108 = v202;
          v106 = v203;
          if (!v107)
          {
            OUTLINED_FUNCTION_12_94();
            sub_216F2EA30();
            OUTLINED_FUNCTION_109();
            LODWORD(v199) = sub_216F82038();
            sub_216F2EAD8();
            sub_216697664(v205, &qword_27CABFF98);
            OUTLINED_FUNCTION_98();
            sub_216F2EAD8();
            v109 = v99;
            v105 = v108;
            sub_216697664(v109, &qword_27CABFF98);
            if ((v199 & 1) == 0)
            {
              goto LABEL_80;
            }

            goto LABEL_39;
          }

          sub_216697664(v205, &qword_27CABFF98);
          OUTLINED_FUNCTION_87_13();
          sub_216F2EAD8();
        }

        v87 = &qword_27CACE090;
        v88 = v102;
        goto LABEL_79;
      }

      sub_216697664(v73, &qword_27CACE0E0);
      sub_216F2EAD8();
    }

    v87 = &qword_27CACE3D8;
    v88 = v68;
    goto LABEL_79;
  }

  if (v76)
  {
    v77 = v74 == v2[2] && v75 == v76;
    if (v77)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_90();
    if (sub_21700F7D4())
    {
      goto LABEL_10;
    }
  }

LABEL_81:
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216F31EB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_216F36BDC(&qword_27CACE3A0, type metadata accessor for PosterLockup);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_216F31F44(uint64_t a1)
{
  v2 = sub_216F36BDC(&qword_27CABCBB8, type metadata accessor for PosterLockup);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_216F31FB4()
{
  sub_216F36BDC(&qword_27CABCBB8, type metadata accessor for PosterLockup);

  return sub_217007A34();
}

uint64_t sub_216F3205C()
{
  v0 = sub_217007B44();
  __swift_allocate_value_buffer(v0, qword_27CB22B60);
  __swift_project_value_buffer(v0, qword_27CB22B60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0A8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_217013D90;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 101;
  *v6 = "tall_artwork";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_217007B14();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 102;
  *v10 = "square_artwork";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_217007B24();
}

uint64_t sub_216F32278()
{
  OUTLINED_FUNCTION_21_3();
  while (1)
  {
    OUTLINED_FUNCTION_109();
    result = sub_217007914();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 102)
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_615();
      sub_216F327DC(v7, v8, v9, v10);
    }

    else if (result == 101)
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_615();
      sub_216F322E4(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_216F322E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for PosterLockup.Kind.TallArtwork(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCBC8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for PosterLockup.Kind.OneOf_Kind(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE3A8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_2166A6EA4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_216697664(v10, &qword_27CABCBC8);
  }

  else
  {
    sub_216F2EA30();
    sub_216F2EA30();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_216F2EAD8();
    }

    else
    {
      sub_216697664(v18, &qword_27CACE3A8);
      sub_216F2EA30();
      sub_216F2EA30();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }
  }

  sub_216F36BDC(&qword_27CABCBA8, type metadata accessor for PosterLockup.Kind.TallArtwork);
  v19 = v29;
  sub_2170079D4();
  if (v19)
  {
    v20 = v18;
    return sub_216697664(v20, &qword_27CACE3A8);
  }

  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_216697664(v18, &qword_27CACE3A8);
    v20 = v15;
    return sub_216697664(v20, &qword_27CACE3A8);
  }

  sub_216F2EA30();
  if (EnumTagSinglePayload != 1)
  {
    sub_217007924();
  }

  v22 = v27;
  sub_216697664(v18, &qword_27CACE3A8);
  v23 = v25;
  sub_216697664(v25, &qword_27CABCBC8);
  sub_216F2EA30();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_216F327DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for PosterLockup.Kind.SquareArtwork(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCBC8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for PosterLockup.Kind.OneOf_Kind(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE3B0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_2166A6EA4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_216697664(v10, &qword_27CABCBC8);
  }

  else
  {
    sub_216F2EA30();
    sub_216F2EA30();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_216697664(v18, &qword_27CACE3B0);
      sub_216F2EA30();
      sub_216F2EA30();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_216F2EAD8();
    }
  }

  sub_216F36BDC(&qword_27CABCB88, type metadata accessor for PosterLockup.Kind.SquareArtwork);
  v19 = v29;
  sub_2170079D4();
  if (v19)
  {
    v20 = v18;
    return sub_216697664(v20, &qword_27CACE3B0);
  }

  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_216697664(v18, &qword_27CACE3B0);
    v20 = v15;
    return sub_216697664(v20, &qword_27CACE3B0);
  }

  sub_216F2EA30();
  if (EnumTagSinglePayload != 1)
  {
    sub_217007924();
  }

  v22 = v27;
  sub_216697664(v18, &qword_27CACE3B0);
  v23 = v25;
  sub_216697664(v25, &qword_27CABCBC8);
  sub_216F2EA30();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_216F32CD4()
{
  OUTLINED_FUNCTION_82_16();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCBC8);
  OUTLINED_FUNCTION_36(v1);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  v4 = &v15 - v3;
  sub_2166A6EA4();
  v5 = type metadata accessor for PosterLockup.Kind.OneOf_Kind(0);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_54_3();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_37_48();
    sub_216F33018(v6, v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_37_48();
    sub_216F32E04(v10, v11, v12, v13);
  }

  OUTLINED_FUNCTION_25_57();
  result = sub_216F2EAD8();
  if (!v0)
  {
LABEL_6:
    type metadata accessor for PosterLockup.Kind(0);
    OUTLINED_FUNCTION_47_2();
    return sub_217007864();
  }

  return result;
}

uint64_t sub_216F32E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCBC8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for PosterLockup.Kind.TallArtwork(0);
  MEMORY[0x28223BE20](v7);
  sub_2166A6EA4();
  v8 = type metadata accessor for PosterLockup.Kind.OneOf_Kind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_216697664(v6, &qword_27CABCBC8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_216F2EA30();
      sub_216F36BDC(&qword_27CABCBA8, type metadata accessor for PosterLockup.Kind.TallArtwork);
      sub_217007B04();
      return sub_216F2EAD8();
    }

    result = sub_216F2EAD8();
  }

  __break(1u);
  return result;
}

uint64_t sub_216F33018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCBC8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for PosterLockup.Kind.SquareArtwork(0);
  MEMORY[0x28223BE20](v7);
  sub_2166A6EA4();
  v8 = type metadata accessor for PosterLockup.Kind.OneOf_Kind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_216697664(v6, &qword_27CABCBC8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_216F2EA30();
      sub_216F36BDC(&qword_27CABCB88, type metadata accessor for PosterLockup.Kind.SquareArtwork);
      sub_217007B04();
      return sub_216F2EAD8();
    }

    result = sub_216F2EAD8();
  }

  __break(1u);
  return result;
}

void sub_216F3322C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_49();
  a19 = v20;
  a20 = v21;
  v22 = OUTLINED_FUNCTION_102();
  v23 = type metadata accessor for PosterLockup.Kind.OneOf_Kind(v22);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_7();
  v25 = OUTLINED_FUNCTION_54_3();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(v25);
  OUTLINED_FUNCTION_36(v26);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_67_0();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE178);
  OUTLINED_FUNCTION_36(v28);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v29);
  v31 = &a9 - v30;
  v33 = *(v32 + 56);
  OUTLINED_FUNCTION_142_2();
  OUTLINED_FUNCTION_142_2();
  v34 = OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_31_2(v34, v35, v23);
  if (v36)
  {
    OUTLINED_FUNCTION_31_2(&v31[v33], 1, v23);
    if (v36)
    {
      sub_216697664(v31, &qword_27CABCBC8);
LABEL_12:
      type metadata accessor for PosterLockup.Kind(0);
      sub_217007884();
      OUTLINED_FUNCTION_0_265();
      sub_216F36BDC(v39, v40);
      OUTLINED_FUNCTION_67_2();
      goto LABEL_13;
    }

LABEL_9:
    sub_216697664(v31, &qword_27CACE178);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_22_4();
  sub_2166A6EA4();
  OUTLINED_FUNCTION_31_2(&v31[v33], 1, v23);
  if (v36)
  {
    OUTLINED_FUNCTION_25_57();
    sub_216F2EAD8();
    goto LABEL_9;
  }

  sub_216F2EA30();
  OUTLINED_FUNCTION_98();
  sub_216F2B124();
  v38 = v37;
  sub_216F2EAD8();
  sub_216F2EAD8();
  sub_216697664(v31, &qword_27CABCBC8);
  if (v38)
  {
    goto LABEL_12;
  }

LABEL_13:
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216F33504(uint64_t a1, uint64_t a2)
{
  v4 = sub_216F36BDC(&qword_27CACE398, type metadata accessor for PosterLockup.Kind);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_216F33598(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  sub_217007B44();
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();

  return v4(v3);
}

uint64_t sub_216F33600(uint64_t a1)
{
  v2 = sub_216F36BDC(&qword_27CABCBB0, type metadata accessor for PosterLockup.Kind);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_216F33670()
{
  sub_216F36BDC(&qword_27CABCBB0, type metadata accessor for PosterLockup.Kind);

  return sub_217007A34();
}

uint64_t *sub_216F3371C()
{
  if (qword_27CACDB90 != -1)
  {
    OUTLINED_FUNCTION_106_4();
  }

  return &qword_27CB22B78;
}

uint64_t sub_216F3377C()
{
  v0 = sub_217007B44();
  __swift_allocate_value_buffer(v0, qword_27CB22B88);
  __swift_project_value_buffer(v0, qword_27CB22B88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0A8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_217013D90;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "top";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_217007B14();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bottom";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_217007B24();
}

uint64_t sub_216F33994()
{
  OUTLINED_FUNCTION_21_3();
  while (1)
  {
    OUTLINED_FUNCTION_109();
    result = sub_217007914();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_7_2();
      sub_216F33AAC();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_7_2();
      sub_216F339F8();
    }
  }

  return result;
}

uint64_t sub_216F339F8()
{
  type metadata accessor for PosterLockup.Kind.TallArtwork(0);
  type metadata accessor for PosterLockup.Kind.TallArtwork.Top(0);
  sub_216F36BDC(&qword_27CABCBA0, type metadata accessor for PosterLockup.Kind.TallArtwork.Top);
  return sub_2170079D4();
}

uint64_t sub_216F33AAC()
{
  type metadata accessor for PosterLockup.Kind.TallArtwork(0);
  type metadata accessor for PosterLockup.Kind.TallArtwork.Bottom(0);
  sub_216F36BDC(&qword_27CABCB90, type metadata accessor for PosterLockup.Kind.TallArtwork.Bottom);
  return sub_2170079D4();
}

uint64_t sub_216F33B60()
{
  OUTLINED_FUNCTION_107_2();
  v1 = OUTLINED_FUNCTION_22_2();
  result = sub_216F33BAC(v1, v2, v3, v4);
  if (!v0)
  {
    v6 = OUTLINED_FUNCTION_22_2();
    sub_216F33D8C(v6, v7, v8, v9);
    OUTLINED_FUNCTION_109();
    return sub_217007864();
  }

  return result;
}

uint64_t sub_216F33BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCBD8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for PosterLockup.Kind.TallArtwork.Top(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for PosterLockup.Kind.TallArtwork(0);
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_216697664(v6, &qword_27CABCBD8);
  }

  sub_216F2EA30();
  sub_216F36BDC(&qword_27CABCBA0, type metadata accessor for PosterLockup.Kind.TallArtwork.Top);
  sub_217007B04();
  return sub_216F2EAD8();
}

uint64_t sub_216F33D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCBD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for PosterLockup.Kind.TallArtwork.Bottom(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for PosterLockup.Kind.TallArtwork(0);
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_216697664(v6, &qword_27CABCBD0);
  }

  sub_216F2EA30();
  sub_216F36BDC(&qword_27CABCB90, type metadata accessor for PosterLockup.Kind.TallArtwork.Bottom);
  sub_217007B04();
  return sub_216F2EAD8();
}

uint64_t sub_216F3400C(uint64_t a1, uint64_t a2)
{
  v4 = sub_216F36BDC(&qword_27CACE390, type metadata accessor for PosterLockup.Kind.TallArtwork);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_216F340A0(uint64_t a1)
{
  v2 = sub_216F36BDC(&qword_27CABCBA8, type metadata accessor for PosterLockup.Kind.TallArtwork);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_216F34110()
{
  sub_216F36BDC(&qword_27CABCBA8, type metadata accessor for PosterLockup.Kind.TallArtwork);

  return sub_217007A34();
}

uint64_t *sub_216F341AC()
{
  if (qword_27CACDBA0 != -1)
  {
    swift_once();
  }

  return &qword_27CB22BA0;
}

uint64_t sub_216F3421C()
{
  v0 = sub_217007B44();
  __swift_allocate_value_buffer(v0, qword_27CB22BB0);
  __swift_project_value_buffer(v0, qword_27CB22BB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0A8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_217018C90;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_217007B14();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "subtitle";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "show_legibility_gradient";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "title_text_style";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  return sub_217007B24();
}

uint64_t sub_216F344BC()
{
  OUTLINED_FUNCTION_21_3();
  while (1)
  {
    OUTLINED_FUNCTION_109();
    result = sub_217007914();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_7_2();
        sub_216F34570();
        break;
      case 2:
        OUTLINED_FUNCTION_7_2();
        sub_216F35428();
        break;
      case 3:
        OUTLINED_FUNCTION_7_2();
        sub_216F345D4();
        break;
      case 4:
        OUTLINED_FUNCTION_7_2();
        sub_216F34638();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_216F34638()
{
  type metadata accessor for PosterLockup.Kind.TallArtwork.Top(0);
  sub_21691E4C0();
  return sub_217007954();
}

uint64_t sub_216F346AC()
{
  OUTLINED_FUNCTION_107_2();
  v1 = OUTLINED_FUNCTION_22_2();
  result = sub_216F34728(v1);
  if (!v0)
  {
    v3 = OUTLINED_FUNCTION_22_2();
    sub_216F35614(v3, v4, v5, v6, v7);
    v8 = OUTLINED_FUNCTION_22_2();
    sub_216F347A0(v8);
    v9 = OUTLINED_FUNCTION_22_2();
    sub_216F34818(v9);
    OUTLINED_FUNCTION_109();
    return sub_217007864();
  }

  return result;
}

uint64_t sub_216F34728(uint64_t a1)
{
  result = type metadata accessor for PosterLockup.Kind.TallArtwork.Top(0);
  if (*(a1 + *(result + 20) + 8))
  {
    return sub_217007AD4();
  }

  return result;
}

uint64_t sub_216F347A0(uint64_t a1)
{
  result = type metadata accessor for PosterLockup.Kind.TallArtwork.Top(0);
  if (*(a1 + *(result + 28)) != 2)
  {
    return sub_217007A74();
  }

  return result;
}

uint64_t sub_216F34818(uint64_t a1)
{
  result = type metadata accessor for PosterLockup.Kind.TallArtwork.Top(0);
  if ((*(a1 + *(result + 32) + 9) & 1) == 0)
  {
    sub_21691E4C0();
    return sub_217007A84();
  }

  return result;
}

uint64_t sub_216F348BC()
{
  v2 = OUTLINED_FUNCTION_102();
  v3 = type metadata accessor for PosterLockup.Kind.TallArtwork.Top(v2);
  OUTLINED_FUNCTION_24();
  if (v6)
  {
    if (!v4)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5_78(v5);
    v9 = v9 && v7 == v8;
    if (!v9 && (sub_21700F7D4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  OUTLINED_FUNCTION_24();
  if (v12)
  {
    if (!v10)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5_78(v11);
    v15 = v9 && v13 == v14;
    if (!v15 && (sub_21700F7D4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  OUTLINED_FUNCTION_103_9();
  if (v9)
  {
    if (v16 != 2)
    {
      return 0;
    }
  }

  else if (v16 == 2 || ((v17 ^ v16) & 1) != 0)
  {
    return 0;
  }

  v18 = *(v3 + 32);
  v19 = (v1 + v18);
  v20 = *(v1 + v18 + 9);
  v21 = (v0 + v18);
  v22 = *(v0 + v18 + 9);
  if (v20)
  {
    if (v22)
    {
LABEL_27:
      sub_217007884();
      OUTLINED_FUNCTION_0_265();
      sub_216F36BDC(v23, v24);
      OUTLINED_FUNCTION_38();
      return sub_21700E494() & 1;
    }
  }

  else if ((v22 & 1) == 0)
  {
    v26 = *v19;
    v27 = *v21;
    if (v21[1])
    {
      if (v27)
      {
        if (v27 == 1)
        {
          if (v26 == 1)
          {
            goto LABEL_27;
          }
        }

        else if (v26 == 2)
        {
          goto LABEL_27;
        }
      }

      else if (!v26)
      {
        goto LABEL_27;
      }
    }

    else if (v26 == v27)
    {
      goto LABEL_27;
    }
  }

  return 0;
}

uint64_t sub_216F34ACC(uint64_t a1, uint64_t a2)
{
  v4 = sub_216F36BDC(&qword_27CACE388, type metadata accessor for PosterLockup.Kind.TallArtwork.Top);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_216F34B60(uint64_t a1)
{
  v2 = sub_216F36BDC(&qword_27CABCBA0, type metadata accessor for PosterLockup.Kind.TallArtwork.Top);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_216F34BD0()
{
  sub_216F36BDC(&qword_27CABCBA0, type metadata accessor for PosterLockup.Kind.TallArtwork.Top);

  return sub_217007A34();
}

uint64_t sub_216F34C50()
{
  v0 = sub_217007B44();
  __swift_allocate_value_buffer(v0, qword_27CB22BC8);
  __swift_project_value_buffer(v0, qword_27CB22BC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0A8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_217015230;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "TITLE_TEXT_STYLE_UNKNOWN";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_217007B14();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "TITLE_TEXT_STYLE_DEFAULT";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "TITLE_TEXT_STYLE_PROMINENT";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v9();
  return sub_217007B24();
}

uint64_t sub_216F34EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  OUTLINED_FUNCTION_82_16();
  if (qword_27CACDB90 != -1)
  {
    OUTLINED_FUNCTION_106_4();
  }

  v9 = qword_27CB22B78;
  v10 = qword_27CB22B80;
  swift_bridgeObjectRetain_n();
  v7 = OUTLINED_FUNCTION_109();
  MEMORY[0x21CE9F490](v7);

  *a4 = v9;
  *a5 = v10;
  return result;
}

uint64_t *sub_216F34F7C()
{
  if (qword_27CACDBB8 != -1)
  {
    swift_once();
  }

  return &qword_27CB22BE0;
}

uint64_t sub_216F34FEC()
{
  v0 = sub_217007B44();
  __swift_allocate_value_buffer(v0, qword_27CB22BF0);
  __swift_project_value_buffer(v0, qword_27CB22BF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0A8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_217015220;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_217007B14();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "subtitle_links";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "description_text";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "show_explicit_badge";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "text_alignment";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "show_legibility_gradient";
  *(v18 + 1) = 24;
  v18[16] = 2;
  v9();
  return sub_217007B24();
}

uint64_t sub_216F35308()
{
  OUTLINED_FUNCTION_21_3();
  while (1)
  {
    OUTLINED_FUNCTION_109();
    result = sub_217007914();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_7_2();
        sub_216F35428();
        break;
      case 2:
        OUTLINED_FUNCTION_89_14();
        v3 = OUTLINED_FUNCTION_7_2();
        sub_216F3711C(v3, v4, v5, v6, v7);
        break;
      case 3:
        OUTLINED_FUNCTION_2_190();
        OUTLINED_FUNCTION_7_2();
        sub_216F366F0();
        break;
      case 4:
        OUTLINED_FUNCTION_2_190();
        OUTLINED_FUNCTION_7_2();
        sub_216F36740();
        break;
      case 5:
        OUTLINED_FUNCTION_2_190();
        OUTLINED_FUNCTION_7_2();
        sub_216F36790();
        break;
      case 6:
        OUTLINED_FUNCTION_7_2();
        sub_216F35478();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_216F35428()
{
  v0 = OUTLINED_FUNCTION_10_0();
  v1(v0);
  OUTLINED_FUNCTION_47_2();
  return sub_2170079A4();
}

uint64_t sub_216F354DC()
{
  OUTLINED_FUNCTION_82_16();
  OUTLINED_FUNCTION_615();
  result = sub_216F35614(v2, v3, v4, v5, v6);
  if (!v1)
  {
    if (*(*v0 + 16))
    {
      type metadata accessor for Link(0);
      OUTLINED_FUNCTION_88_10();
      sub_216F36BDC(v8, v9);
      OUTLINED_FUNCTION_86_1();
      OUTLINED_FUNCTION_108_1();
    }

    OUTLINED_FUNCTION_2_190();
    OUTLINED_FUNCTION_4_0();
    sub_216F36914();
    OUTLINED_FUNCTION_2_190();
    OUTLINED_FUNCTION_4_0();
    sub_216F36974();
    OUTLINED_FUNCTION_2_190();
    OUTLINED_FUNCTION_4_0();
    sub_216F369D8();
    v10 = OUTLINED_FUNCTION_4_0();
    sub_216F35690(v10);
    type metadata accessor for PosterLockup.Kind.TallArtwork.Bottom(0);
    OUTLINED_FUNCTION_47_2();
    return sub_217007864();
  }

  return result;
}

uint64_t sub_216F35614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 24) + 8))
  {
    OUTLINED_FUNCTION_150_2();
    return sub_217007AD4();
  }

  return result;
}

uint64_t sub_216F35690(uint64_t a1)
{
  result = type metadata accessor for PosterLockup.Kind.TallArtwork.Bottom(0);
  if (*(a1 + *(result + 40)) != 2)
  {
    return sub_217007A74();
  }

  return result;
}

uint64_t sub_216F35708()
{
  v2 = OUTLINED_FUNCTION_102();
  v3 = type metadata accessor for PosterLockup.Kind.TallArtwork.Bottom(v2);
  OUTLINED_FUNCTION_24();
  if (v6)
  {
    if (!v4)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5_78(v5);
    v9 = v9 && v7 == v8;
    if (!v9 && (sub_21700F7D4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  sub_216F26500();
  if (v10)
  {
    OUTLINED_FUNCTION_24();
    if (v13)
    {
      if (!v11)
      {
        return 0;
      }

      OUTLINED_FUNCTION_5_78(v12);
      v16 = v9 && v14 == v15;
      if (!v16 && (sub_21700F7D4() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v11)
    {
      return 0;
    }

    OUTLINED_FUNCTION_103_9();
    if (v9)
    {
      if (v17 != 2)
      {
        return 0;
      }
    }

    else if (v17 == 2 || ((v18 ^ v17) & 1) != 0)
    {
      return 0;
    }

    v19 = *(v3 + 36);
    v20 = (v1 + v19);
    v21 = *(v1 + v19 + 9);
    v22 = (v0 + v19);
    if (v21)
    {
      if ((*(v22 + 9) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(v22 + 9))
      {
        return 0;
      }

      v25 = *v20;
      v26 = *v22;
      if (v22[1])
      {
        switch(v26)
        {
          case 1:
            if (v25 != 1)
            {
              return 0;
            }

            goto LABEL_28;
          case 2:
            if (v25 != 2)
            {
              return 0;
            }

            goto LABEL_28;
          case 3:
            if (v25 != 3)
            {
              return 0;
            }

            goto LABEL_28;
          default:
            if (!v25)
            {
              goto LABEL_28;
            }

            return 0;
        }
      }

      if (v25 != v26)
      {
        return 0;
      }
    }

LABEL_28:
    OUTLINED_FUNCTION_103_9();
    if (v9)
    {
      if (v23 == 2)
      {
LABEL_39:
        sub_217007884();
        OUTLINED_FUNCTION_0_265();
        sub_216F36BDC(v27, v28);
        return OUTLINED_FUNCTION_67_2() & 1;
      }
    }

    else if (v23 != 2 && ((v24 ^ v23) & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  return 0;
}

uint64_t sub_216F35960(uint64_t a1, uint64_t a2)
{
  v4 = sub_216F36BDC(&qword_27CACE380, type metadata accessor for PosterLockup.Kind.TallArtwork.Bottom);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_216F359F4(uint64_t a1)
{
  v2 = sub_216F36BDC(&qword_27CABCB90, type metadata accessor for PosterLockup.Kind.TallArtwork.Bottom);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_216F35A64()
{
  sub_216F36BDC(&qword_27CABCB90, type metadata accessor for PosterLockup.Kind.TallArtwork.Bottom);

  return sub_217007A34();
}

uint64_t sub_216F35B14(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x21CE9F490](a2, a3);
  *a4 = 0xD000000000000011;
  *a5 = 0x8000000217090E20;
  return result;
}

uint64_t *sub_216F35B80()
{
  if (qword_27CACDBC8 != -1)
  {
    swift_once();
  }

  return &qword_27CB22C08;
}

uint64_t sub_216F35C60()
{
  OUTLINED_FUNCTION_21_3();
  while (1)
  {
    OUTLINED_FUNCTION_109();
    result = sub_217007914();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_7_2();
      sub_216F35CAC();
    }
  }

  return result;
}

uint64_t sub_216F35CAC()
{
  type metadata accessor for PosterLockup.Kind.SquareArtwork(0);
  type metadata accessor for PosterLockup.Kind.SquareArtwork.Chin(0);
  sub_216F36BDC(&qword_27CACE248, type metadata accessor for PosterLockup.Kind.SquareArtwork.Chin);
  return sub_2170079D4();
}

uint64_t sub_216F35D60()
{
  OUTLINED_FUNCTION_107_2();
  v1 = OUTLINED_FUNCTION_22_2();
  result = sub_216F35DA0(v1, v2, v3, v4);
  if (!v0)
  {
    OUTLINED_FUNCTION_109();
    return sub_217007864();
  }

  return result;
}

uint64_t sub_216F35DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCBE8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for PosterLockup.Kind.SquareArtwork.Chin(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for PosterLockup.Kind.SquareArtwork(0);
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_216697664(v6, &qword_27CABCBE8);
  }

  sub_216F2EA30();
  sub_216F36BDC(&qword_27CACE248, type metadata accessor for PosterLockup.Kind.SquareArtwork.Chin);
  sub_217007B04();
  return sub_216F2EAD8();
}

uint64_t sub_216F36020(uint64_t a1, uint64_t a2)
{
  v4 = sub_216F36BDC(&qword_27CACE378, type metadata accessor for PosterLockup.Kind.SquareArtwork);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_216F360B4(uint64_t a1)
{
  v2 = sub_216F36BDC(&qword_27CABCB88, type metadata accessor for PosterLockup.Kind.SquareArtwork);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_216F36124()
{
  sub_216F36BDC(&qword_27CABCB88, type metadata accessor for PosterLockup.Kind.SquareArtwork);

  return sub_217007A34();
}

uint64_t sub_216F361A4()
{
  if (qword_27CACDBC8 != -1)
  {
    swift_once();
  }

  v1 = qword_27CB22C08;
  v2 = qword_27CB22C10;
  swift_bridgeObjectRetain_n();
  MEMORY[0x21CE9F490](0x6E6968432ELL, 0xE500000000000000);

  qword_27CB22C30 = v1;
  *algn_27CB22C38 = v2;
  return result;
}

uint64_t *sub_216F36244()
{
  if (qword_27CACDBD8 != -1)
  {
    swift_once();
  }

  return &qword_27CB22C30;
}

uint64_t sub_216F362B4(void *a1)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  sub_21700DF14();
  return OUTLINED_FUNCTION_38();
}

uint64_t sub_216F36304()
{
  v0 = sub_217007B44();
  __swift_allocate_value_buffer(v0, qword_27CB22C40);
  __swift_project_value_buffer(v0, qword_27CB22C40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0A8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_217015240;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_217007B14();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "subtitle_links";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "description_text";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "show_explicit_badge";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "text_alignment";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v9();
  return sub_217007B24();
}

uint64_t sub_216F365E0()
{
  OUTLINED_FUNCTION_21_3();
  while (1)
  {
    OUTLINED_FUNCTION_109();
    result = sub_217007914();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_7_2();
        sub_216F35428();
        break;
      case 2:
        OUTLINED_FUNCTION_89_14();
        v3 = OUTLINED_FUNCTION_7_2();
        sub_216F3711C(v3, v4, v5, v6, v7);
        break;
      case 3:
        OUTLINED_FUNCTION_1_227();
        OUTLINED_FUNCTION_7_2();
        sub_216F366F0();
        break;
      case 4:
        OUTLINED_FUNCTION_1_227();
        OUTLINED_FUNCTION_7_2();
        sub_216F36740();
        break;
      case 5:
        OUTLINED_FUNCTION_1_227();
        OUTLINED_FUNCTION_7_2();
        sub_216F36790();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_216F366F0()
{
  v0 = OUTLINED_FUNCTION_10_0();
  v1(v0);
  OUTLINED_FUNCTION_47_2();
  return sub_2170079A4();
}

uint64_t sub_216F36740()
{
  v0 = OUTLINED_FUNCTION_10_0();
  v1(v0);
  OUTLINED_FUNCTION_47_2();
  return sub_217007944();
}

uint64_t sub_216F36790()
{
  v0 = OUTLINED_FUNCTION_10_0();
  v1(v0);
  sub_21697E438();
  OUTLINED_FUNCTION_150_2();
  return sub_217007954();
}

uint64_t sub_216F367EC()
{
  OUTLINED_FUNCTION_82_16();
  OUTLINED_FUNCTION_615();
  result = sub_216F35614(v2, v3, v4, v5, v6);
  if (!v1)
  {
    if (*(*v0 + 16))
    {
      type metadata accessor for Link(0);
      OUTLINED_FUNCTION_88_10();
      sub_216F36BDC(v8, v9);
      OUTLINED_FUNCTION_86_1();
      OUTLINED_FUNCTION_108_1();
    }

    OUTLINED_FUNCTION_1_227();
    OUTLINED_FUNCTION_4_0();
    sub_216F36914();
    OUTLINED_FUNCTION_1_227();
    OUTLINED_FUNCTION_4_0();
    sub_216F36974();
    OUTLINED_FUNCTION_1_227();
    OUTLINED_FUNCTION_4_0();
    sub_216F369D8();
    type metadata accessor for PosterLockup.Kind.SquareArtwork.Chin(0);
    OUTLINED_FUNCTION_47_2();
    return sub_217007864();
  }

  return result;
}

uint64_t sub_216F36914()
{
  v1 = OUTLINED_FUNCTION_10_0();
  result = v2(v1);
  if (*(v0 + *(result + 28) + 8))
  {
    OUTLINED_FUNCTION_150_2();
    return sub_217007AD4();
  }

  return result;
}

uint64_t sub_216F36974()
{
  v1 = OUTLINED_FUNCTION_10_0();
  result = v2(v1);
  if (*(v0 + *(result + 32)) != 2)
  {
    OUTLINED_FUNCTION_615();
    return sub_217007A74();
  }

  return result;
}

uint64_t sub_216F369D8()
{
  v1 = OUTLINED_FUNCTION_10_0();
  result = v2(v1);
  if ((*(v0 + *(result + 36) + 9) & 1) == 0)
  {
    sub_21697E438();
    return sub_217007A84();
  }

  return result;
}

uint64_t sub_216F36A6C()
{
  v2 = OUTLINED_FUNCTION_102();
  v3 = type metadata accessor for PosterLockup.Kind.SquareArtwork.Chin(v2);
  OUTLINED_FUNCTION_24();
  if (v6)
  {
    if (!v4)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5_78(v5);
    v9 = v9 && v7 == v8;
    if (!v9 && (sub_21700F7D4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  sub_216F26500();
  if (v10)
  {
    OUTLINED_FUNCTION_24();
    if (v13)
    {
      if (!v11)
      {
        return 0;
      }

      OUTLINED_FUNCTION_5_78(v12);
      v16 = v9 && v14 == v15;
      if (!v16 && (sub_21700F7D4() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v11)
    {
      return 0;
    }

    OUTLINED_FUNCTION_103_9();
    if (!v9)
    {
      if (v17 == 2 || ((v18 ^ v17) & 1) != 0)
      {
        return 0;
      }

LABEL_26:
      v19 = *(v3 + 36);
      v20 = v1 + v19;
      v21 = *(v1 + v19 + 9);
      v22 = v0 + v19;
      if (v21)
      {
        if ((*(v22 + 9) & 1) == 0)
        {
          return 0;
        }
      }

      else if ((*(v22 + 9) & 1) != 0 || !sub_216F27A88(*v20, *(v20 + 8) & 1, *v22))
      {
        return 0;
      }

      sub_217007884();
      OUTLINED_FUNCTION_0_265();
      sub_216F36BDC(v23, v24);
      return OUTLINED_FUNCTION_67_2() & 1;
    }

    if (v17 == 2)
    {
      goto LABEL_26;
    }
  }

  return 0;
}

uint64_t sub_216F36BDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216F36C94(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  sub_21700DF14();
  return OUTLINED_FUNCTION_38();
}

uint64_t sub_216F36D04(uint64_t a1, uint64_t a2)
{
  v4 = sub_216F36BDC(&qword_27CACE370, type metadata accessor for PosterLockup.Kind.SquareArtwork.Chin);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_216F36D98(uint64_t a1)
{
  v2 = sub_216F36BDC(&qword_27CACE248, type metadata accessor for PosterLockup.Kind.SquareArtwork.Chin);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_216F36E08()
{
  sub_216F36BDC(&qword_27CACE248, type metadata accessor for PosterLockup.Kind.SquareArtwork.Chin);

  return sub_217007A34();
}

void sub_216F36ED0()
{
  OUTLINED_FUNCTION_75_6();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_217007B44();
  __swift_allocate_value_buffer(v8, v7);
  __swift_project_value_buffer(v8, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0A8);
  v9 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0B0) - 8);
  v10 = (*(*v9 + 80) + 32) & ~*(*v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_217013DA0;
  v12 = v11 + v10 + v9[14];
  *(v11 + v10) = 1;
  *v12 = v5;
  *(v12 + 8) = v3;
  *(v12 + 16) = 2;
  v13 = *v1;
  sub_217007B14();
  OUTLINED_FUNCTION_34();
  (*(v14 + 104))(v12, v13);
  sub_217007B24();
  OUTLINED_FUNCTION_65_2();
}

uint64_t sub_216F37080()
{
  OUTLINED_FUNCTION_21_3();
  while (1)
  {
    OUTLINED_FUNCTION_109();
    result = sub_217007914();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_7_2();
      sub_216F3711C(v3, v4, v5, v6, v7);
    }
  }

  return result;
}

uint64_t sub_216F3711C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  a5(0);
  v5 = OUTLINED_FUNCTION_25_19();
  sub_216F36BDC(v5, v6);
  return sub_2170079C4();
}

uint64_t sub_216F371B4()
{
  OUTLINED_FUNCTION_82_16();
  if (!*(*v0 + 16) || (type metadata accessor for PosterLockup(0), sub_216F36BDC(&qword_27CABCBB8, type metadata accessor for PosterLockup), OUTLINED_FUNCTION_86_1(), result = OUTLINED_FUNCTION_108_1(), !v1))
  {
    type metadata accessor for PosterLockupCollection(0);
    OUTLINED_FUNCTION_47_2();
    return sub_217007864();
  }

  return result;
}

uint64_t sub_216F37280()
{
  OUTLINED_FUNCTION_92();
  sub_216F24DF8();
  if ((v0 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for PosterLockupCollection(0);
  sub_217007884();
  OUTLINED_FUNCTION_0_265();
  sub_216F36BDC(v1, v2);
  return OUTLINED_FUNCTION_67_2() & 1;
}

uint64_t sub_216F3734C()
{
  OUTLINED_FUNCTION_141();
  v3 = v2;
  sub_21700F8F4();
  v3(0);
  sub_216F36BDC(v1, v0);
  sub_21700E434();
  return sub_21700F944();
}

uint64_t sub_216F373D0()
{
  OUTLINED_FUNCTION_153_1();
  sub_217007884();
  OUTLINED_FUNCTION_34();
  v0 = OUTLINED_FUNCTION_126_3();

  return v1(v0);
}

uint64_t sub_216F37434(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  sub_217007884();
  OUTLINED_FUNCTION_34();
  v6 = *(v5 + 40);

  return v6(v2 + v4, a1);
}

uint64_t sub_216F374D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_216F36BDC(&qword_27CACE368, type metadata accessor for PosterLockupCollection);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_216F37564(uint64_t a1)
{
  v2 = sub_216F36BDC(&qword_27CACE260, type metadata accessor for PosterLockupCollection);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_216F375D4()
{
  sub_216F36BDC(&qword_27CACE260, type metadata accessor for PosterLockupCollection);

  return sub_217007A34();
}

unint64_t sub_216F37658()
{
  result = qword_27CACE1B8;
  if (!qword_27CACE1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACE1B8);
  }

  return result;
}

unint64_t sub_216F376B0()
{
  result = qword_27CACE1C0;
  if (!qword_27CACE1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACE1C0);
  }

  return result;
}

unint64_t sub_216F37708()
{
  result = qword_27CACE1C8;
  if (!qword_27CACE1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACE1D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACE1C8);
  }

  return result;
}

unint64_t sub_216F37770()
{
  result = qword_27CACE1D8;
  if (!qword_27CACE1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACE1D8);
  }

  return result;
}

uint64_t sub_216F380EC()
{
  result = sub_217007884();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PosterLockup._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_216F381CC()
{
  result = type metadata accessor for PosterLockup.Kind.TallArtwork(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PosterLockup.Kind.SquareArtwork(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_216F38268()
{
  sub_217007884();
  if (v0 <= 0x3F)
  {
    sub_216F38364(319, &qword_27CACE2B8, type metadata accessor for PosterLockup.Kind.TallArtwork.Top, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_216F38364(319, &qword_27CACE2C0, type metadata accessor for PosterLockup.Kind.TallArtwork.Bottom, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_216F38364(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_216F383F0()
{
  sub_217007884();
  if (v0 <= 0x3F)
  {
    sub_216688560(319, &qword_280E2A070);
    if (v1 <= 0x3F)
    {
      sub_216688560(319, &qword_280E29DE0);
      if (v2 <= 0x3F)
      {
        sub_216688560(319, &qword_27CACE2D8);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_216F3850C()
{
  sub_216F38364(319, &qword_280E2A038, type metadata accessor for Link, MEMORY[0x277D83940]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v1 = sub_217007884();
    if (v3 <= 0x3F)
    {
      sub_216688560(319, &qword_280E2A070);
      v1 = v4;
      if (v5 <= 0x3F)
      {
        sub_216688560(319, &qword_280E29DE0);
        v1 = v6;
        if (v7 <= 0x3F)
        {
          sub_216688560(319, &qword_27CACE2F0);
          if (v9 > 0x3F)
          {
            return v8;
          }

          else
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

void sub_216F38680()
{
  sub_217007884();
  if (v0 <= 0x3F)
  {
    sub_216F38364(319, &qword_27CACE308, type metadata accessor for PosterLockup.Kind.SquareArtwork.Chin, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_216F3875C()
{
  sub_216F38364(319, &qword_280E2A038, type metadata accessor for Link, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_217007884();
    if (v1 <= 0x3F)
    {
      sub_216688560(319, &qword_280E2A070);
      if (v2 <= 0x3F)
      {
        sub_216688560(319, &qword_280E29DE0);
        if (v3 <= 0x3F)
        {
          sub_216688560(319, &qword_27CACE2F0);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_53Tm(uint64_t a1, uint64_t a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_11_1();
    return (v2 + 1);
  }

  else
  {
    sub_217007884();
    v5 = OUTLINED_FUNCTION_20_44();

    return __swift_getEnumTagSinglePayload(v5, a2, v6);
  }
}

void __swift_store_extra_inhabitant_index_54Tm()
{
  OUTLINED_FUNCTION_92();
  if (v2 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    sub_217007884();
    OUTLINED_FUNCTION_20_44();
    OUTLINED_FUNCTION_32_4();

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

void sub_216F389D4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  sub_216F38364(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    sub_217007884();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_216F38A6C()
{
  sub_216F38364(319, &qword_27CACE348, type metadata accessor for PosterLockup.Kind, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_216F38364(319, qword_280E48698, type metadata accessor for AnyAction, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_216F38364(319, &qword_27CACE350, type metadata accessor for Artwork, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_216F38364(319, &qword_27CACE358, type metadata accessor for VideoArtwork, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_216F38364(319, qword_280E49D78, type metadata accessor for ContentDescriptor, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_216F38364(319, &qword_27CACE360, type metadata accessor for AccessoryBadge, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

uint64_t OUTLINED_FUNCTION_106_4()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_159_2()
{

  return sub_216F2EA30();
}

uint64_t sub_216F38ED4()
{
  OUTLINED_FUNCTION_9_114();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  if (!*(v2 + 24))
  {
    OUTLINED_FUNCTION_138_0();
  }

  sub_21700DF14();
  return OUTLINED_FUNCTION_8();
}

uint64_t sub_216F38F50()
{
  OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_31_56();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_17_76();
    v6 = OUTLINED_FUNCTION_18();
    v7 = sub_216F3D2E4(v6);
    OUTLINED_FUNCTION_97_0(v7);
  }

  OUTLINED_FUNCTION_139();
  *(v5 + 16) = v2;
  *(v5 + 24) = v0;
}

void (*sub_216F38FDC())(void **a1, char a2)
{
  v2 = OUTLINED_FUNCTION_136();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_54_0(v3) + 40) = v0;
  OUTLINED_FUNCTION_9_114();
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  if (*(v5 + 24))
  {
    v6 = *(v5 + 16);
    v7 = *(v5 + 24);
  }

  else
  {
    OUTLINED_FUNCTION_101();
  }

  *(v1 + 24) = v6;
  *(v1 + 32) = v7;
  sub_21700DF14();
  return sub_216F3906C;
}

BOOL sub_216F39084()
{
  OUTLINED_FUNCTION_9_114();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  return OUTLINED_FUNCTION_93_1(*(v2 + 24));
}

uint64_t sub_216F390C8()
{
  v2 = OUTLINED_FUNCTION_26_56();
  v3 = *(v0 + v1);
  if ((v2 & 1) == 0)
  {
    OUTLINED_FUNCTION_17_76();
    v4 = OUTLINED_FUNCTION_107_10();
    OUTLINED_FUNCTION_95(v4);
  }

  OUTLINED_FUNCTION_139();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
}

uint64_t sub_216F39120()
{
  OUTLINED_FUNCTION_9_114();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  if (!*(v2 + 40))
  {
    OUTLINED_FUNCTION_138_0();
  }

  sub_21700DF14();
  return OUTLINED_FUNCTION_8();
}

uint64_t sub_216F3917C()
{
  OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_31_56();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_17_76();
    v6 = OUTLINED_FUNCTION_18();
    v7 = sub_216F3D2E4(v6);
    OUTLINED_FUNCTION_97_0(v7);
  }

  OUTLINED_FUNCTION_139();
  *(v5 + 32) = v2;
  *(v5 + 40) = v0;
}

void (*sub_216F391E8())(void **a1, char a2)
{
  v2 = OUTLINED_FUNCTION_136();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_54_0(v3) + 40) = v0;
  OUTLINED_FUNCTION_9_114();
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  if (*(v5 + 40))
  {
    v6 = *(v5 + 32);
    v7 = *(v5 + 40);
  }

  else
  {
    OUTLINED_FUNCTION_101();
  }

  *(v1 + 24) = v6;
  *(v1 + 32) = v7;
  sub_21700DF14();
  return sub_216F39278;
}

BOOL sub_216F39290()
{
  OUTLINED_FUNCTION_9_114();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  return OUTLINED_FUNCTION_93_1(*(v2 + 40));
}

uint64_t sub_216F392D4()
{
  v2 = OUTLINED_FUNCTION_26_56();
  v3 = *(v0 + v1);
  if ((v2 & 1) == 0)
  {
    OUTLINED_FUNCTION_17_76();
    v4 = OUTLINED_FUNCTION_107_10();
    OUTLINED_FUNCTION_95(v4);
  }

  OUTLINED_FUNCTION_139();
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
}

uint64_t sub_216F3932C()
{
  OUTLINED_FUNCTION_9_114();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  if (!*(v2 + 56))
  {
    OUTLINED_FUNCTION_138_0();
  }

  sub_21700DF14();
  return OUTLINED_FUNCTION_8();
}

uint64_t sub_216F39388()
{
  OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_31_56();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_17_76();
    v6 = OUTLINED_FUNCTION_18();
    v7 = sub_216F3D2E4(v6);
    OUTLINED_FUNCTION_97_0(v7);
  }

  OUTLINED_FUNCTION_139();
  *(v5 + 48) = v2;
  *(v5 + 56) = v0;
}

void (*sub_216F393F4())(void **a1, char a2)
{
  v2 = OUTLINED_FUNCTION_136();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_54_0(v3) + 40) = v0;
  OUTLINED_FUNCTION_9_114();
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  if (*(v5 + 56))
  {
    v6 = *(v5 + 48);
    v7 = *(v5 + 56);
  }

  else
  {
    OUTLINED_FUNCTION_101();
  }

  *(v1 + 24) = v6;
  *(v1 + 32) = v7;
  sub_21700DF14();
  return sub_216F39484;
}

BOOL sub_216F3949C()
{
  OUTLINED_FUNCTION_9_114();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  return OUTLINED_FUNCTION_93_1(*(v2 + 56));
}

uint64_t sub_216F394E0()
{
  v2 = OUTLINED_FUNCTION_26_56();
  v3 = *(v0 + v1);
  if ((v2 & 1) == 0)
  {
    OUTLINED_FUNCTION_17_76();
    v4 = OUTLINED_FUNCTION_107_10();
    OUTLINED_FUNCTION_95(v4);
  }

  OUTLINED_FUNCTION_139();
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
}

uint64_t sub_216F39538@<X0>(void *a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_9_114();
  v7 = *(v1 + v6);
  v8 = OBJC_IVAR____TtCV18SwiftMusicProtocol16HorizontalLockupP33_E2B9F5A1F5E2118EDE0FCDB33F3F892913_StorageClass__headline;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_48_30(v7 + v8);
  type metadata accessor for AttributedDateRange();
  OUTLINED_FUNCTION_7_6();
  if (v9)
  {
    sub_216F22BEC(a1);
    result = OUTLINED_FUNCTION_7_6();
    if (!v9)
    {
      return sub_216697664(v2, &qword_27CACE3F8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_14_89();
    return OUTLINED_FUNCTION_78_16();
  }

  return result;
}

uint64_t sub_216F3961C()
{
  OUTLINED_FUNCTION_125();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE3F8);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_13_3();
  if ((OUTLINED_FUNCTION_31_56() & 1) == 0)
  {
    OUTLINED_FUNCTION_17_76();
    v2 = OUTLINED_FUNCTION_18();
    v3 = sub_216F3D2E4(v2);
    OUTLINED_FUNCTION_97_0(v3);
  }

  OUTLINED_FUNCTION_14_89();
  OUTLINED_FUNCTION_92_11();
  v4 = type metadata accessor for AttributedDateRange();
  OUTLINED_FUNCTION_57_1(v4);
  v5 = OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_91_2(v5, v6, &qword_27CACE3F8);
  return swift_endAccess();
}

void sub_216F396E8()
{
  OUTLINED_FUNCTION_49();
  v2 = OUTLINED_FUNCTION_124();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_47_0(v3);
  v4 = OUTLINED_FUNCTION_119();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_36(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_46(v7);
  v8 = type metadata accessor for AttributedDateRange();
  OUTLINED_FUNCTION_34();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_120_1(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_9_114();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_6_3();
  if (v13)
  {
    *v12 = MEMORY[0x277D84F90];
    sub_217007874();
    v14 = v12 + v8[6];
    *v14 = 0;
    v14[8] = 1;
    v15 = v12 + v8[7];
    *v15 = 0;
    v15[8] = 1;
    OUTLINED_FUNCTION_94_1(v8[8]);
    OUTLINED_FUNCTION_94_1(v8[9]);
    OUTLINED_FUNCTION_40_1(v12 + v8[10]);
    v16 = v12 + v8[11];
    *v16 = 0;
    *(v16 + 4) = v17;
    OUTLINED_FUNCTION_94_1(v8[12]);
    OUTLINED_FUNCTION_6_3();
    if (!v13)
    {
      sub_216697664(v0, &qword_27CACE3F8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_98();
    sub_216F3DB18();
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_216F39940()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_54_0(v2) + 88) = v0;
  OUTLINED_FUNCTION_9_114();
  *(v1 + 84) = v3;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_50_1();
  return OUTLINED_FUNCTION_103();
}

uint64_t sub_216F399E4@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_9_114();
  v7 = *(v1 + v6);
  v8 = OBJC_IVAR____TtCV18SwiftMusicProtocol16HorizontalLockupP33_E2B9F5A1F5E2118EDE0FCDB33F3F892913_StorageClass__contentDescriptor;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_48_30(v7 + v8);
  v9 = type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_7_6();
  if (v10)
  {
    sub_217007874();
    v11 = type metadata accessor for ContentDescriptor.ContentKind(0);
    OUTLINED_FUNCTION_15_74(v11);
    v12 = type metadata accessor for ContentIdentifiers(0);
    OUTLINED_FUNCTION_15_74(v12);
    v13 = (a1 + *(v9 + 28));
    *v13 = 0;
    v13[1] = 0;
    result = OUTLINED_FUNCTION_7_6();
    if (!v10)
    {
      return sub_216697664(v2, &qword_27CACE120);
    }
  }

  else
  {
    OUTLINED_FUNCTION_16_81();
    return OUTLINED_FUNCTION_78_16();
  }

  return result;
}

uint64_t sub_216F39AF4()
{
  OUTLINED_FUNCTION_125();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE120);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_13_3();
  if ((OUTLINED_FUNCTION_31_56() & 1) == 0)
  {
    OUTLINED_FUNCTION_17_76();
    v2 = OUTLINED_FUNCTION_18();
    v3 = sub_216F3D2E4(v2);
    OUTLINED_FUNCTION_97_0(v3);
  }

  OUTLINED_FUNCTION_16_81();
  OUTLINED_FUNCTION_92_11();
  v4 = type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_57_1(v4);
  v5 = OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_91_2(v5, v6, &qword_27CACE120);
  return swift_endAccess();
}

void sub_216F39BC0()
{
  OUTLINED_FUNCTION_49();
  v2 = OUTLINED_FUNCTION_124();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_47_0(v3);
  v4 = OUTLINED_FUNCTION_119();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_36(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_46(v7);
  v9 = type metadata accessor for ContentDescriptor(v8);
  OUTLINED_FUNCTION_34();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_120_1(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_9_114();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_6_3();
  if (v13)
  {
    sub_217007874();
    v14 = type metadata accessor for ContentDescriptor.ContentKind(0);
    OUTLINED_FUNCTION_60(v14);
    v15 = type metadata accessor for ContentIdentifiers(0);
    OUTLINED_FUNCTION_60(v15);
    OUTLINED_FUNCTION_94_1(*(v9 + 28));
    OUTLINED_FUNCTION_6_3();
    if (!v13)
    {
      sub_216697664(v0, &qword_27CACE120);
    }
  }

  else
  {
    OUTLINED_FUNCTION_98();
    sub_216F3DB18();
  }

  OUTLINED_FUNCTION_26();
}

void sub_216F39D60()
{
  OUTLINED_FUNCTION_75_6();
  v2 = v1;
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 32);
  if (v6)
  {
    OUTLINED_FUNCTION_109();
    sub_216F3DB6C();
    v2(v3);
    sub_216F3DBC0();
  }

  else
  {
    v1(*(*v0 + 48));
  }

  free(v4);
  free(v3);
  free(v5);
  OUTLINED_FUNCTION_65_2();

  free(v7);
}

uint64_t sub_216F39E34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_76();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v8);
  OUTLINED_FUNCTION_36(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  OUTLINED_FUNCTION_9_114();
  v14 = *(v4 + v13);
  v15 = *a3;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  sub_216683A80(v14 + v15, v12, v5);
  v16 = a4(0);
  OUTLINED_FUNCTION_31_2(v12, 1, v16);
  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  sub_216697664(v12, v5);
  return v18;
}

void sub_216F39F3C()
{
  OUTLINED_FUNCTION_75_6();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_76();
  v6 = v0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v7);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  v12 = *(type metadata accessor for HorizontalLockup(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v0 + v12);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_17_76();
    v15 = OUTLINED_FUNCTION_18();
    v14 = sub_216F3D2E4(v15);
    *(v6 + v12) = v14;
  }

  v16 = v5(0);
  OUTLINED_FUNCTION_88(v11, v17, v18, v16);
  v19 = *v3;
  swift_beginAccess();
  sub_2166861C8(v11, v14 + v19, v1);
  swift_endAccess();
  OUTLINED_FUNCTION_65_2();
}

uint64_t sub_216F3A03C()
{
  OUTLINED_FUNCTION_125();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_13_3();
  if ((OUTLINED_FUNCTION_31_56() & 1) == 0)
  {
    OUTLINED_FUNCTION_17_76();
    v2 = OUTLINED_FUNCTION_18();
    v3 = sub_216F3D2E4(v2);
    OUTLINED_FUNCTION_97_0(v3);
  }

  OUTLINED_FUNCTION_2_191();
  OUTLINED_FUNCTION_92_11();
  v4 = type metadata accessor for AnyAction(0);
  OUTLINED_FUNCTION_57_1(v4);
  v5 = OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_91_2(v5, v6, &qword_27CABFF98);
  return swift_endAccess();
}

void sub_216F3A108()
{
  OUTLINED_FUNCTION_49();
  v2 = OUTLINED_FUNCTION_124();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_47_0(v3);
  v4 = OUTLINED_FUNCTION_119();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_36(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_46(v7);
  type metadata accessor for AnyAction(v8);
  OUTLINED_FUNCTION_34();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_120_1(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_9_114();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_6_3();
  if (v13)
  {
    v14 = type metadata accessor for AnyAction.OneOf_BaseAction(0);
    OUTLINED_FUNCTION_88(v12, v15, v16, v14);
    sub_217007874();
    OUTLINED_FUNCTION_6_3();
    if (!v13)
    {
      sub_216697664(v0, &qword_27CABFF98);
    }
  }

  else
  {
    OUTLINED_FUNCTION_98();
    sub_216F3DB18();
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_216F3A304@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_9_114();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_82_2();
  sub_216683A80(v5, v6, v7);
  type metadata accessor for AnyAction(0);
  OUTLINED_FUNCTION_7_6();
  if (!v8)
  {
    return OUTLINED_FUNCTION_78_16();
  }

  v9 = type metadata accessor for AnyAction.OneOf_BaseAction(0);
  OUTLINED_FUNCTION_88(a1, v10, v11, v9);
  sub_217007874();
  result = OUTLINED_FUNCTION_7_6();
  if (!v8)
  {
    return sub_216697664(v1, &qword_27CABFF98);
  }

  return result;
}

uint64_t sub_216F3A420()
{
  OUTLINED_FUNCTION_125();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_13_3();
  if ((OUTLINED_FUNCTION_31_56() & 1) == 0)
  {
    OUTLINED_FUNCTION_17_76();
    v2 = OUTLINED_FUNCTION_18();
    v3 = sub_216F3D2E4(v2);
    OUTLINED_FUNCTION_97_0(v3);
  }

  OUTLINED_FUNCTION_2_191();
  OUTLINED_FUNCTION_92_11();
  v4 = type metadata accessor for AnyAction(0);
  OUTLINED_FUNCTION_57_1(v4);
  v5 = OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_91_2(v5, v6, &qword_27CABFF98);
  return swift_endAccess();
}

void sub_216F3A4EC()
{
  OUTLINED_FUNCTION_49();
  v2 = OUTLINED_FUNCTION_124();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_47_0(v3);
  v4 = OUTLINED_FUNCTION_119();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_36(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_46(v7);
  type metadata accessor for AnyAction(v8);
  OUTLINED_FUNCTION_34();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_120_1(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_9_114();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_6_3();
  if (v13)
  {
    v14 = type metadata accessor for AnyAction.OneOf_BaseAction(0);
    OUTLINED_FUNCTION_88(v12, v15, v16, v14);
    sub_217007874();
    OUTLINED_FUNCTION_6_3();
    if (!v13)
    {
      sub_216697664(v0, &qword_27CABFF98);
    }
  }

  else
  {
    OUTLINED_FUNCTION_98();
    sub_216F3DB18();
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_216F3A6DC()
{
  OUTLINED_FUNCTION_9_114();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtCV18SwiftMusicProtocol16HorizontalLockupP33_E2B9F5A1F5E2118EDE0FCDB33F3F892913_StorageClass__showExplicitBadge;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  return *(v2 + v3) & 1;
}

uint64_t sub_216F3A728()
{
  v3 = OUTLINED_FUNCTION_109_9();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_17_76();
    v5 = OUTLINED_FUNCTION_18();
    v6 = sub_216F3D2E4(v5);
    OUTLINED_FUNCTION_102_0(v6);
  }

  v7 = OBJC_IVAR____TtCV18SwiftMusicProtocol16HorizontalLockupP33_E2B9F5A1F5E2118EDE0FCDB33F3F892913_StorageClass__showExplicitBadge;
  result = OUTLINED_FUNCTION_139();
  *(v4 + v7) = v0 & 1;
  return result;
}

uint64_t sub_216F3A788()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_54_0(v2) + 72) = v0;
  OUTLINED_FUNCTION_9_114();
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV18SwiftMusicProtocol16HorizontalLockupP33_E2B9F5A1F5E2118EDE0FCDB33F3F892913_StorageClass__showExplicitBadge;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  *(v1 + 84) = *(v4 + v5) & 1;
  return OUTLINED_FUNCTION_103();
}

void sub_216F3A80C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v3 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = *(v1 + 80);
    v8 = *(v1 + 72);
    OUTLINED_FUNCTION_17_76();
    v9 = OUTLINED_FUNCTION_18();
    v6 = sub_216F3D2E4(v9);
    *(v8 + v7) = v6;
  }

  v10 = OBJC_IVAR____TtCV18SwiftMusicProtocol16HorizontalLockupP33_E2B9F5A1F5E2118EDE0FCDB33F3F892913_StorageClass__showExplicitBadge;
  OUTLINED_FUNCTION_147();
  *(v6 + v10) = v4;

  free(v1);
}

BOOL sub_216F3A8B4()
{
  OUTLINED_FUNCTION_9_114();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtCV18SwiftMusicProtocol16HorizontalLockupP33_E2B9F5A1F5E2118EDE0FCDB33F3F892913_StorageClass__showExplicitBadge;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  return *(v2 + v3) != 2;
}

uint64_t sub_216F3A904()
{
  v2 = OUTLINED_FUNCTION_26_56();
  v3 = *(v0 + v1);
  if ((v2 & 1) == 0)
  {
    OUTLINED_FUNCTION_17_76();
    v4 = OUTLINED_FUNCTION_107_10();
    OUTLINED_FUNCTION_95(v4);
  }

  v5 = OBJC_IVAR____TtCV18SwiftMusicProtocol16HorizontalLockupP33_E2B9F5A1F5E2118EDE0FCDB33F3F892913_StorageClass__showExplicitBadge;
  result = OUTLINED_FUNCTION_139();
  *(v3 + v5) = 2;
  return result;
}

uint64_t sub_216F3A960()
{
  OUTLINED_FUNCTION_9_114();
  OUTLINED_FUNCTION_68();
  if (v0[4])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_216F3A9A8()
{
  v3 = OUTLINED_FUNCTION_109_9();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_17_76();
    v5 = OUTLINED_FUNCTION_18();
    v6 = sub_216F3D2E4(v5);
    OUTLINED_FUNCTION_102_0(v6);
  }

  result = OUTLINED_FUNCTION_49_31();
  *v4 = v0;
  *(v4 + 4) = 0;
  return result;
}

uint64_t sub_216F3AA04()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_54_0(v2) + 72) = v0;
  OUTLINED_FUNCTION_9_114();
  *(v1 + 84) = v3;
  v4 = *(v0 + v3) + OBJC_IVAR____TtCV18SwiftMusicProtocol16HorizontalLockupP33_E2B9F5A1F5E2118EDE0FCDB33F3F892913_StorageClass__numberOfSocialBadges;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v5 = *v4;
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  *(v1 + 80) = v5;
  return OUTLINED_FUNCTION_103();
}

void sub_216F3AA94(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = *(v1 + 84);
    v8 = *(v1 + 72);
    OUTLINED_FUNCTION_17_76();
    v9 = OUTLINED_FUNCTION_18();
    v6 = sub_216F3D2E4(v9);
    *(v8 + v7) = v6;
  }

  v10 = v6 + OBJC_IVAR____TtCV18SwiftMusicProtocol16HorizontalLockupP33_E2B9F5A1F5E2118EDE0FCDB33F3F892913_StorageClass__numberOfSocialBadges;
  OUTLINED_FUNCTION_147();
  *v10 = v2;
  *(v10 + 4) = 0;

  free(v1);
}

BOOL sub_216F3AB48()
{
  OUTLINED_FUNCTION_9_114();
  OUTLINED_FUNCTION_68();
  return (*(v0 + 4) & 1) == 0;
}

uint64_t sub_216F3AB8C()
{
  v1 = v0;
  v2 = *(type metadata accessor for HorizontalLockup(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_17_76();
    v5 = OUTLINED_FUNCTION_18();
    v4 = sub_216F3D2E4(v5);
    *(v1 + v2) = v4;
  }

  v6 = v4 + OBJC_IVAR____TtCV18SwiftMusicProtocol16HorizontalLockupP33_E2B9F5A1F5E2118EDE0FCDB33F3F892913_StorageClass__numberOfSocialBadges;
  result = OUTLINED_FUNCTION_147();
  *v6 = 0;
  *(v6 + 4) = 1;
  return result;
}

uint64_t sub_216F3AC10@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_9_114();
  v7 = *(v1 + v6);
  v8 = OBJC_IVAR____TtCV18SwiftMusicProtocol16HorizontalLockupP33_E2B9F5A1F5E2118EDE0FCDB33F3F892913_StorageClass__artwork;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_48_30(v7 + v8);
  v9 = type metadata accessor for Artwork(0);
  OUTLINED_FUNCTION_7_6();
  if (v10)
  {
    sub_217007874();
    v11 = type metadata accessor for Artwork.ArtworkDictionary(0);
    OUTLINED_FUNCTION_15_74(v11);
    v12 = (a1 + *(v9 + 24));
    *v12 = 0;
    v12[1] = 0;
    result = OUTLINED_FUNCTION_7_6();
    if (!v10)
    {
      return sub_216697664(v2, &qword_27CACE100);
    }
  }

  else
  {
    OUTLINED_FUNCTION_15_79();
    return OUTLINED_FUNCTION_78_16();
  }

  return result;
}

uint64_t sub_216F3AD10()
{
  OUTLINED_FUNCTION_125();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE100);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_13_3();
  if ((OUTLINED_FUNCTION_31_56() & 1) == 0)
  {
    OUTLINED_FUNCTION_17_76();
    v2 = OUTLINED_FUNCTION_18();
    v3 = sub_216F3D2E4(v2);
    OUTLINED_FUNCTION_97_0(v3);
  }

  OUTLINED_FUNCTION_15_79();
  OUTLINED_FUNCTION_92_11();
  v4 = type metadata accessor for Artwork(0);
  OUTLINED_FUNCTION_57_1(v4);
  v5 = OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_91_2(v5, v6, &qword_27CACE100);
  return swift_endAccess();
}

void sub_216F3ADDC()
{
  OUTLINED_FUNCTION_49();
  v2 = OUTLINED_FUNCTION_124();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_47_0(v3);
  v4 = OUTLINED_FUNCTION_119();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_36(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_46(v7);
  v9 = type metadata accessor for Artwork(v8);
  OUTLINED_FUNCTION_34();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_120_1(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_9_114();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_6_3();
  if (v13)
  {
    sub_217007874();
    v14 = type metadata accessor for Artwork.ArtworkDictionary(0);
    OUTLINED_FUNCTION_60(v14);
    OUTLINED_FUNCTION_94_1(*(v9 + 24));
    OUTLINED_FUNCTION_6_3();
    if (!v13)
    {
      sub_216697664(v0, &qword_27CACE100);
    }
  }

  else
  {
    OUTLINED_FUNCTION_98();
    sub_216F3DB18();
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_216F3AFD8(_BYTE *a1)
{
  OUTLINED_FUNCTION_9_114();
  OUTLINED_FUNCTION_19_7();
  if (a1[9])
  {
    return 0;
  }

  else
  {
    return *a1;
  }
}

uint64_t sub_216F3B030(uint64_t a1, char a2)
{
  v4 = v3;
  v6 = OUTLINED_FUNCTION_31_0();
  v7 = *(type metadata accessor for HorizontalLockup(v6) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v3 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_17_76();
    v10 = OUTLINED_FUNCTION_18();
    v9 = sub_216F3D2E4(v10);
    *(v4 + v7) = v9;
  }

  result = OUTLINED_FUNCTION_49_31();
  *v9 = v2;
  *(v9 + 8) = a2 & 1;
  *(v9 + 9) = 0;
  return result;
}

uint64_t sub_216F3B0B8()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_54_0(v2) + 88) = v0;
  OUTLINED_FUNCTION_9_114();
  *(v1 + 84) = v3;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_50_1();
  return OUTLINED_FUNCTION_103();
}

void sub_216F3B144()
{
  OUTLINED_FUNCTION_75_6();
  v1 = v0;
  v3 = *v2;
  v4 = *(*v2 + 72);
  v5 = *(*v2 + 84);
  v6 = *(*v2 + 88);
  v7 = *(*v2 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v3 + 84);
    v11 = *(v3 + 88);
    OUTLINED_FUNCTION_17_76();
    v12 = OUTLINED_FUNCTION_18();
    v9 = sub_216F3D2E4(v12);
    *(v11 + v10) = v9;
  }

  v13 = v9 + *v1;
  OUTLINED_FUNCTION_147();
  *v13 = v4;
  *(v13 + 8) = v7;
  *(v13 + 9) = 0;
  OUTLINED_FUNCTION_65_2();

  free(v14);
}

BOOL sub_216F3B20C(uint64_t a1)
{
  OUTLINED_FUNCTION_9_114();
  OUTLINED_FUNCTION_19_7();
  return (*(a1 + 9) & 1) == 0;
}

uint64_t sub_216F3B254(void *a1)
{
  v4 = OUTLINED_FUNCTION_26_56();
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_17_76();
    v6 = OUTLINED_FUNCTION_18();
    v7 = sub_216F3D2E4(v6);
    OUTLINED_FUNCTION_102_0(v7);
  }

  v8 = v5 + *a1;
  result = OUTLINED_FUNCTION_147();
  *v8 = 0;
  *(v8 + 8) = 256;
  return result;
}

void (*sub_216F3B2D8())(void **a1, char a2)
{
  v2 = OUTLINED_FUNCTION_136();
  v3 = __swift_coroFrameAllocStub(v2);
  *v0 = v3;
  v3[5] = v1;
  OUTLINED_FUNCTION_9_114();
  v5 = (*(v1 + v4) + OBJC_IVAR____TtCV18SwiftMusicProtocol16HorizontalLockupP33_E2B9F5A1F5E2118EDE0FCDB33F3F892913_StorageClass__liveBadgeLabel);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  if (v5[1])
  {
    v6 = *v5;
    v7 = v5[1];
  }

  else
  {
    OUTLINED_FUNCTION_101();
  }

  v3[3] = v6;
  v3[4] = v7;
  sub_21700DF14();
  return sub_216F3B374;
}

uint64_t sub_216F3B3B0(uint64_t a1)
{
  OUTLINED_FUNCTION_9_114();
  OUTLINED_FUNCTION_19_7();
  if (!*(a1 + 8))
  {
    OUTLINED_FUNCTION_138_0();
  }

  sub_21700DF14();
  return OUTLINED_FUNCTION_8();
}

uint64_t sub_216F3B40C()
{
  v3 = v1;
  OUTLINED_FUNCTION_76();
  v4 = *(type metadata accessor for HorizontalLockup(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_17_76();
    v7 = OUTLINED_FUNCTION_18();
    v6 = sub_216F3D2E4(v7);
    *(v3 + v4) = v6;
  }

  OUTLINED_FUNCTION_49_31();
  *v6 = v2;
  v6[1] = v0;
}

void (*sub_216F3B490())(void **a1, char a2)
{
  v2 = OUTLINED_FUNCTION_136();
  v3 = __swift_coroFrameAllocStub(v2);
  *v0 = v3;
  v3[5] = v1;
  OUTLINED_FUNCTION_9_114();
  v5 = (*(v1 + v4) + OBJC_IVAR____TtCV18SwiftMusicProtocol16HorizontalLockupP33_E2B9F5A1F5E2118EDE0FCDB33F3F892913_StorageClass__accessibilityLabel);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  if (v5[1])
  {
    v6 = *v5;
    v7 = v5[1];
  }

  else
  {
    OUTLINED_FUNCTION_101();
  }

  v3[3] = v6;
  v3[4] = v7;
  sub_21700DF14();
  return sub_216F3B52C;
}

BOOL sub_216F3B550(uint64_t a1)
{
  OUTLINED_FUNCTION_9_114();
  OUTLINED_FUNCTION_19_7();
  return OUTLINED_FUNCTION_93_1(*(a1 + 8));
}

uint64_t sub_216F3B594(void *a1)
{
  v4 = OUTLINED_FUNCTION_26_56();
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_17_76();
    v6 = OUTLINED_FUNCTION_18();
    v7 = sub_216F3D2E4(v6);
    OUTLINED_FUNCTION_102_0(v7);
  }

  v8 = (v5 + *a1);
  OUTLINED_FUNCTION_147();
  *v8 = 0;
  v8[1] = 0;
}

void (*sub_216F3B618())(void **a1, char a2)
{
  v2 = OUTLINED_FUNCTION_136();
  v3 = __swift_coroFrameAllocStub(v2);
  *v0 = v3;
  v3[5] = v1;
  OUTLINED_FUNCTION_9_114();
  v5 = (*(v1 + v4) + OBJC_IVAR____TtCV18SwiftMusicProtocol16HorizontalLockupP33_E2B9F5A1F5E2118EDE0FCDB33F3F892913_StorageClass__rankingText);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  if (v5[1])
  {
    v6 = *v5;
    v7 = v5[1];
  }

  else
  {
    OUTLINED_FUNCTION_101();
  }

  v3[3] = v6;
  v3[4] = v7;
  sub_21700DF14();
  return sub_216F3B6B4;
}

void sub_216F3B6CC(void **a1, char a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  if (a2)
  {
    sub_21700DF14();
    v5 = OUTLINED_FUNCTION_109();
    a3(v5);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_109();
    a3(v6);
  }

  free(v4);
}

uint64_t sub_216F3B768()
{
  sub_217007884();
  OUTLINED_FUNCTION_34();
  v0 = OUTLINED_FUNCTION_8();

  return v1(v0);
}

uint64_t sub_216F3B834(uint64_t a1, uint64_t a2)
{
  v4 = sub_216788020();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_216F3B88C@<X0>(uint64_t a1@<X8>)
{
  sub_217007874();
  v2 = *(type metadata accessor for HorizontalLockup(0) + 20);
  if (qword_27CACDBF8 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_27CACE3F0;
}

uint64_t sub_216F3B908()
{
  OUTLINED_FUNCTION_68_17();
  OUTLINED_FUNCTION_41_14();
  if (v1)
  {
    return v0;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_216F3B930(uint64_t a1, char a2)
{
  v3 = a2 & 1;
  result = OUTLINED_FUNCTION_68_17();
  *v5 = a1;
  *(v5 + 8) = v3;
  *(v5 + 9) = 0;
  return result;
}

uint64_t (*sub_216F3B96C(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  *(a1 + 12) = *(type metadata accessor for HorizontalLockupCollection(0) + 28);
  OUTLINED_FUNCTION_41_14();
  if (!v6)
  {
    v4 = 0;
  }

  *a1 = v4;
  *(a1 + 8) = (v3 | v5) & 1;
  return sub_216F226B0;
}

uint64_t sub_216F3BAD8@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_17_0();
  v7 = type metadata accessor for HorizontalLockupCollection(v6);
  OUTLINED_FUNCTION_48_30(v1 + *(v7 + 20));
  OUTLINED_FUNCTION_108_9();
  OUTLINED_FUNCTION_7_6();
  if (v8)
  {
    sub_216697664(v2, &qword_27CAC6580);
LABEL_6:
    sub_217007874();
    result = type metadata accessor for Presentation.StackedShelf(0);
    v11 = a1 + *(result + 20);
    *v11 = 0;
    *(v11 + 4) = 1;
    return result;
  }

  OUTLINED_FUNCTION_45_0();
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_0_266();
    sub_216F3DBC0();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_13_87();
  return OUTLINED_FUNCTION_78_16();
}

void sub_216F3BBE4()
{
  OUTLINED_FUNCTION_75_6();
  v2 = OUTLINED_FUNCTION_136();
  v3 = __swift_coroFrameAllocStub(v2);
  *v0 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6580);
  OUTLINED_FUNCTION_36(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Presentation.StackedShelf(0);
  OUTLINED_FUNCTION_34();
  v9 = *(v8 + 64);
  v3[2] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[3] = v10;
  OUTLINED_FUNCTION_32_43();
  *(v3 + 10) = v11;
  sub_216683A80(v1 + v11, v6, &qword_27CAC6580);
  v3[4] = type metadata accessor for HorizontalLockupCollection.OneOf_Presentation(0);
  OUTLINED_FUNCTION_5_3(v6);
  if (v12)
  {
    sub_216697664(v6, &qword_27CAC6580);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_13_87();
      sub_216F3DB18();
      goto LABEL_7;
    }

    sub_216F3DBC0();
  }

  sub_217007874();
  v14 = &v10[*(v7 + 20)];
  *v14 = 0;
  v14[4] = 1;
LABEL_7:
  OUTLINED_FUNCTION_65_2();
}

uint64_t sub_216F3BDA0()
{
  v2 = OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_17_0();
  v5 = type metadata accessor for HorizontalLockupCollection(v4);
  OUTLINED_FUNCTION_48_30(v0 + *(v5 + 20));
  OUTLINED_FUNCTION_108_9();
  OUTLINED_FUNCTION_7_6();
  if (v6)
  {
    sub_216697664(v1, &qword_27CAC6580);
  }

  else
  {
    OUTLINED_FUNCTION_45_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_12_95();
      return OUTLINED_FUNCTION_78_16();
    }

    OUTLINED_FUNCTION_0_266();
    sub_216F3DBC0();
  }

  return sub_217007874();
}

void sub_216F3BE94()
{
  OUTLINED_FUNCTION_75_6();
  v2 = OUTLINED_FUNCTION_136();
  v3 = __swift_coroFrameAllocStub(v2);
  *v0 = v3;
  *v3 = v1;
  v4 = OUTLINED_FUNCTION_119();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_36(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v3[1] = v7;
  v8 = type metadata accessor for Presentation.Grid(0);
  OUTLINED_FUNCTION_36(v8);
  v10 = *(v9 + 64);
  v3[2] = __swift_coroFrameAllocStub(v10);
  v3[3] = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_32_43();
  OUTLINED_FUNCTION_86_12(v11);
  v3[4] = type metadata accessor for HorizontalLockupCollection.OneOf_Presentation(0);
  OUTLINED_FUNCTION_5_3(v7);
  if (v12)
  {
    sub_216697664(v7, &qword_27CAC6580);
LABEL_7:
    sub_217007874();
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_216F3DBC0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_12_95();
  OUTLINED_FUNCTION_82();
  sub_216F3DB18();
LABEL_8:
  OUTLINED_FUNCTION_65_2();
}

uint64_t sub_216F3C020()
{
  v2 = OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_17_0();
  v5 = type metadata accessor for HorizontalLockupCollection(v4);
  OUTLINED_FUNCTION_48_30(v0 + *(v5 + 20));
  OUTLINED_FUNCTION_108_9();
  OUTLINED_FUNCTION_7_6();
  if (v6)
  {
    sub_216697664(v1, &qword_27CAC6580);
  }

  else
  {
    OUTLINED_FUNCTION_45_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_11_95();
      return OUTLINED_FUNCTION_78_16();
    }

    OUTLINED_FUNCTION_0_266();
    sub_216F3DBC0();
  }

  return sub_217007874();
}

uint64_t sub_216F3C114(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for HorizontalLockupCollection(0) + 20);
  sub_216697664(v2 + v4, &qword_27CAC6580);
  sub_216F3DB18();
  OUTLINED_FUNCTION_108_9();
  swift_storeEnumTagMultiPayload();

  return __swift_storeEnumTagSinglePayload(v2 + v4, 0, 1, a2);
}

void sub_216F3C1B4()
{
  OUTLINED_FUNCTION_75_6();
  v2 = OUTLINED_FUNCTION_136();
  v3 = __swift_coroFrameAllocStub(v2);
  *v0 = v3;
  *v3 = v1;
  v4 = OUTLINED_FUNCTION_119();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_36(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v3[1] = v7;
  v8 = type metadata accessor for Presentation.Single(0);
  OUTLINED_FUNCTION_36(v8);
  v10 = *(v9 + 64);
  v3[2] = __swift_coroFrameAllocStub(v10);
  v3[3] = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_32_43();
  OUTLINED_FUNCTION_86_12(v11);
  v3[4] = type metadata accessor for HorizontalLockupCollection.OneOf_Presentation(0);
  OUTLINED_FUNCTION_5_3(v7);
  if (v12)
  {
    sub_216697664(v7, &qword_27CAC6580);
LABEL_7:
    sub_217007874();
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    sub_216F3DBC0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_11_95();
  OUTLINED_FUNCTION_82();
  sub_216F3DB18();
LABEL_8:
  OUTLINED_FUNCTION_65_2();
}

void sub_216F3C340()
{
  OUTLINED_FUNCTION_49();
  v1 = (*v0)[3];
  v2 = *(*v0 + 10);
  v3 = (*v0)[1];
  v4 = (*v0)[2];
  v5 = **v0;
  if (v6)
  {
    OUTLINED_FUNCTION_45_0();
    sub_216F3DB6C();
    sub_216697664(v5 + v2, &qword_27CAC6580);
    sub_216F3DB18();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_105_10();
    sub_216F3DBC0();
  }

  else
  {
    sub_216697664(v5 + v2, &qword_27CAC6580);
    sub_216F3DB18();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_105_10();
  }

  free(v1);
  free(v4);
  free(v3);
  OUTLINED_FUNCTION_26();

  free(v7);
}

uint64_t sub_216F3C450@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HorizontalLockupCollection(0) + 24);
  sub_217007884();
  OUTLINED_FUNCTION_34();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t sub_216F3C4C4()
{
  v2 = OUTLINED_FUNCTION_31_0();
  v3 = *(type metadata accessor for HorizontalLockupCollection(v2) + 24);
  sub_217007884();
  OUTLINED_FUNCTION_34();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

uint64_t (*sub_216F3C534())(void, void, void)
{
  v0 = OUTLINED_FUNCTION_31_0();
  type metadata accessor for HorizontalLockupCollection(v0);
  return nullsub_1;
}

void sub_216F3C578()
{
  OUTLINED_FUNCTION_49();
  v36[3] = v1;
  v2 = type metadata accessor for Presentation.Single(0);
  v3 = OUTLINED_FUNCTION_36(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  v36[2] = v5 - v4;
  v6 = OUTLINED_FUNCTION_4_1();
  v7 = type metadata accessor for Presentation.Grid(v6);
  v8 = OUTLINED_FUNCTION_36(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v36[1] = v10 - v9;
  v11 = OUTLINED_FUNCTION_4_1();
  v12 = type metadata accessor for Presentation.StackedShelf(v11);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  v16 = v15 - v14;
  type metadata accessor for HorizontalLockupCollection.OneOf_Presentation(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v19);
  v21 = v36 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE460);
  OUTLINED_FUNCTION_36(v22);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_13_3();
  sub_216F3DB6C();
  sub_216F3DB6C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_4_157();
    sub_216F3DB6C();
    if (swift_getEnumCaseMultiPayload())
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_13_87();
    sub_216F3DB18();
    v29 = *(v12 + 20);
    v30 = &v21[v29];
    v31 = v21[v29 + 4];
    v32 = (v16 + v29);
    v33 = *(v16 + v29 + 4);
    if (v31)
    {
      if (!v33)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (*v30 != *v32)
      {
        LOBYTE(v33) = 1;
      }

      if (v33)
      {
        goto LABEL_19;
      }
    }

    sub_217007884();
    OUTLINED_FUNCTION_1_228();
    sub_216F40BB0(v34, v35);
    sub_21700E494();
LABEL_19:
    OUTLINED_FUNCTION_44_32();
    sub_216F3DBC0();
    sub_216F3DBC0();
    OUTLINED_FUNCTION_0_266();
    sub_216F3DBC0();
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_4_157();
    sub_216F3DB6C();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      OUTLINED_FUNCTION_11_95();
      sub_216F3DB18();
      sub_217007884();
      OUTLINED_FUNCTION_1_228();
      sub_216F40BB0(v27, v28);
      OUTLINED_FUNCTION_27_0();
      sub_21700E494();
      sub_216F3DBC0();
      goto LABEL_9;
    }

LABEL_10:
    sub_216F3DBC0();
    sub_216697664(v0, &qword_27CACE460);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_4_157();
  sub_216F3DB6C();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_12_95();
  sub_216F3DB18();
  sub_217007884();
  OUTLINED_FUNCTION_1_228();
  sub_216F40BB0(v25, v26);
  sub_21700E494();
  sub_216F3DBC0();
LABEL_9:
  sub_216F3DBC0();
  OUTLINED_FUNCTION_0_266();
  sub_216F3DBC0();
LABEL_11:
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216F3CB18(uint64_t a1, uint64_t a2)
{
  v4 = sub_216F43EEC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

void sub_216F3CB70(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for HorizontalLockupCollection(0);
  v3 = *(v2 + 20);
  v4 = type metadata accessor for HorizontalLockupCollection.OneOf_Presentation(0);
  OUTLINED_FUNCTION_88(a1 + v3, v5, v6, v4);
  sub_217007874();
  OUTLINED_FUNCTION_40_1(a1 + *(v2 + 28));
}

uint64_t sub_216F3CC08()
{
  v0 = sub_217007B44();
  __swift_allocate_value_buffer(v0, qword_27CB22C70);
  __swift_project_value_buffer(v0, qword_27CB22C70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0A8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_217073A40;
  v4 = v36 + v3 + v1[14];
  *(v36 + v3) = 1;
  *v4 = "id";
  *(v4 + 8) = 2;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_217007B14();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v36 + v3 + v2 + v1[14];
  *(v36 + v3 + v2) = 2;
  *v8 = "title";
  *(v8 + 8) = 5;
  *(v8 + 16) = 2;
  v7();
  v9 = (v36 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "subtitle";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v7();
  v11 = (v36 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "headline";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v7();
  v13 = (v36 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "headline_color";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v7();
  v15 = (v36 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "content_descriptor";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v7();
  v17 = (v36 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "play_action";
  *(v18 + 1) = 11;
  v18[16] = 2;
  v7();
  v19 = (v36 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "segue";
  *(v20 + 1) = 5;
  v20[16] = 2;
  v7();
  v21 = (v36 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "show_explicit_badge";
  *(v22 + 1) = 19;
  v22[16] = 2;
  v7();
  v23 = (v36 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "number_of_social_badges";
  *(v24 + 1) = 23;
  v24[16] = 2;
  v7();
  v25 = (v36 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "artwork";
  *(v26 + 1) = 7;
  v26[16] = 2;
  v7();
  v27 = (v36 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "artwork_treatment";
  *(v28 + 1) = 17;
  v28[16] = 2;
  v7();
  v29 = (v36 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "live_badge_label";
  *(v30 + 1) = 16;
  v30[16] = 2;
  v7();
  v31 = (v36 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "accessibility_label";
  *(v32 + 1) = 19;
  v32[16] = 2;
  v7();
  v33 = (v36 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "ranking_text";
  *(v34 + 1) = 12;
  v34[16] = 2;
  v7();
  return sub_217007B24();
}