uint64_t sub_1D7BDCAD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D7BDCB18(uint64_t result, int a2, int a3)
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

unint64_t sub_1D7BDCB88()
{
  result = qword_1EC9E65E8;
  if (!qword_1EC9E65E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E65E8);
  }

  return result;
}

unint64_t sub_1D7BDCBE0()
{
  result = qword_1EC9E65F0;
  if (!qword_1EC9E65F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E65F0);
  }

  return result;
}

unint64_t sub_1D7BDCC38()
{
  result = qword_1EC9E65F8;
  if (!qword_1EC9E65F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E65F8);
  }

  return result;
}

unint64_t sub_1D7BDCC90()
{
  result = qword_1EC9E6600;
  if (!qword_1EC9E6600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E6600);
  }

  return result;
}

void sub_1D7BDCCE4()
{
  if (!qword_1EC9E6608)
  {
    type metadata accessor for CGRect(255);
    sub_1D7BDC8A0(&qword_1EC9E6610, type metadata accessor for CGRect);
    v0 = sub_1D7D2875C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E6608);
    }
  }
}

unint64_t sub_1D7BDCD78()
{
  result = qword_1EC9E6620;
  if (!qword_1EC9E6620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E6620);
  }

  return result;
}

void sub_1D7BDCDCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D7BDCE64()
{
  if (!qword_1EC9E6648)
  {
    v0 = sub_1D7D307BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E6648);
    }
  }
}

uint64_t sub_1D7BDCEB4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D7BDCE64();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D7BDCF20()
{
  result = qword_1EC9E6658;
  if (!qword_1EC9E6658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E6658);
  }

  return result;
}

void sub_1D7BDCF74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1D7BDCFDC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D7BDCDCC(255, &qword_1EC9E6630, type metadata accessor for TableOfContentsHeaderViewLayout.LayoutAttributes, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D7BDD0AC()
{
  result = qword_1EC9E6688;
  if (!qword_1EC9E6688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E6688);
  }

  return result;
}

unint64_t sub_1D7BDD114()
{
  result = qword_1EC9E6690;
  if (!qword_1EC9E6690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E6690);
  }

  return result;
}

unint64_t sub_1D7BDD16C()
{
  result = qword_1EC9E6698;
  if (!qword_1EC9E6698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E6698);
  }

  return result;
}

unint64_t sub_1D7BDD1C4()
{
  result = qword_1EC9E66A0;
  if (!qword_1EC9E66A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E66A0);
  }

  return result;
}

uint64_t sub_1D7BDD220()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_1D7BDD28C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v99 = a5;
  v101 = a4;
  v8 = sub_1D7D29C6C();
  v103 = *(v8 - 8);
  v104 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1D7D29C7C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v105 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v106 = &v95 - v18;
  v19 = *(a1 + 16);
  sub_1D79DA880(a2, v114);
  v20 = *(a1 + *(type metadata accessor for ArticleViewerArticlePage(0) + 32));
  v21 = MEMORY[0x1E69B5738];
  if (v20 >= 2)
  {
    v22 = v20;
    goto LABEL_6;
  }

  if ([v19 respondsToSelector_])
  {
    v22 = [v19 parentIssue];
    if (v22)
    {
LABEL_6:
      if (([v19 respondsToSelector_] & 1) == 0 || objc_msgSend(v19, sel_role) != 2)
      {

        goto LABEL_13;
      }

      v98 = v19;
      sub_1D7B21EA8(0, &qword_1EC9E4DB8, MEMORY[0x1E69B5790]);
      v23 = *(v13 + 72);
      v24 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v25 = swift_allocObject();
      v97 = xmmword_1D7D3B4E0;
      *(v25 + 16) = xmmword_1D7D3B4E0;
      v26 = v25 + v24;
      v27 = *v21;
      v28 = *(v13 + 104);
      v28(v26, v27, v12);
      v29 = *MEMORY[0x1E69B5748];
      v96 = v28;
      v28(v26 + v23, v29, v12);
      v30 = sub_1D7BDE13C(v25);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v113 = v30;
      v31 = v107[4];
      v32 = [v22 sourceChannel];
      v100 = v31;
      v33 = [v31 purchaseProvider];
      v34 = swift_unknownObjectRetain();
      v102 = v32;
      v35 = [v34 tagType];
      v101 = v13 + 104;
      if (v35 == 3)
      {
        v36 = [v102 asSection];
        if (!v36 || (v37 = [v36 parentID], swift_unknownObjectRelease(), !v37))
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          goto LABEL_22;
        }
      }

      else
      {
        v37 = [v102 identifier];
      }

      v52 = sub_1D7D3034C();
      v54 = v53;

      v55 = [v33 purchasedTagIDs];
      v56 = sub_1D7D309AC();

      LOBYTE(v52) = sub_1D7D053C8(v52, v54, v56);

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      if (v52)
      {
        swift_unknownObjectRelease();
        goto LABEL_59;
      }

LABEL_22:
      v57 = v22;
      v58 = v13;
      v59 = [objc_msgSend(v100 bundleSubscriptionProvider)];
      swift_unknownObjectRelease();
      if (objc_getAssociatedObject(v59, v59 + 1))
      {
        sub_1D7D3138C();
        swift_unknownObjectRelease();
      }

      else
      {
        v109 = 0u;
        v110 = 0u;
      }

      v111 = v109;
      v112 = v110;
      if (*(&v110 + 1))
      {
        sub_1D7992EFC(0, &qword_1EE0BECA0);
        if (swift_dynamicCast())
        {
          v74 = v108;
          v75 = [v108 integerValue];
          if (v75 == -1)
          {

            goto LABEL_55;
          }

          v76 = v75;
LABEL_44:
          if (objc_getAssociatedObject(v59, ~v76))
          {
            sub_1D7D3138C();
            swift_unknownObjectRelease();
          }

          else
          {
            v109 = 0u;
            v110 = 0u;
          }

          v111 = v109;
          v112 = v110;
          if (*(&v110 + 1))
          {
            sub_1D7992EFC(0, &qword_1EE0BECA0);
            if (swift_dynamicCast())
            {
              v77 = v108;
              v78 = [v77 integerValue];

              if ((v78 ^ v76))
              {
LABEL_55:
                v79 = [objc_msgSend(v100 bundleSubscriptionProvider)];
                swift_unknownObjectRelease();
                v80 = [v102 identifier];
                if (!v80)
                {
                  sub_1D7D3034C();
                  v80 = sub_1D7D3031C();
                }

                v81 = [v79 containsTagID_];

                swift_unknownObjectRelease();
                v13 = v58;
                v22 = v57;
                if (v81)
                {
                  goto LABEL_59;
                }

                goto LABEL_58;
              }

LABEL_53:
              swift_unknownObjectRelease();
              v13 = v58;
              v22 = v57;
LABEL_58:
              if ([v22 isPaid])
              {
LABEL_60:
                sub_1D7D29C8C();
                sub_1D7B21EA8(0, &qword_1EC9E4DC0, MEMORY[0x1E69B57C8]);
                v84 = sub_1D7D2C33C();
                v85 = *(v84 - 8);
                v86 = *(v85 + 72);
                v87 = (*(v85 + 80) + 32) & ~*(v85 + 80);
                v88 = swift_allocObject();
                *(v88 + 16) = v97;
                v89 = v88 + v87;
                v90 = *(v85 + 104);
                v90(v89, *MEMORY[0x1E69B57C0], v84);
                v90(v89 + v86, *MEMORY[0x1E69B57B8], v84);
                *v11 = v22;
                v11[1] = v88;
                v11[2] = v98;
                v92 = v103;
                v91 = v104;
                (*(v103 + 104))(v11, *MEMORY[0x1E69B5718], v104);
                v93 = v113;
                v94 = v22;
                swift_unknownObjectRetain();
                MEMORY[0x1DA7076C0](v11, v93);
                (*(v92 + 8))(v11, v91);
                if (sub_1D7D29C4C())
                {
                  sub_1D7D29C2C();
                }

                else
                {
                }

                sub_1D7992EFC(0, &qword_1EE0BED30);
                v72 = sub_1D7D3106C();

                goto LABEL_36;
              }

LABEL_59:
              v82 = v105;
              v96(v105, *MEMORY[0x1E69B5740], v12);
              v83 = v106;
              sub_1D7B3DEA4(v106, v82);
              (*(v13 + 8))(v83, v12);
              goto LABEL_60;
            }
          }

          else
          {
            sub_1D79F0014(&v111);
          }

          if (v76)
          {
            goto LABEL_55;
          }

          goto LABEL_53;
        }
      }

      else
      {
        sub_1D79F0014(&v111);
      }

      v74 = 0;
      v76 = 0;
      goto LABEL_44;
    }
  }

LABEL_13:
  v100 = a3;
  v38 = v19;
  sub_1D7B21EA8(0, &qword_1EC9E4DB8, MEMORY[0x1E69B5790]);
  v39 = *(v13 + 72);
  v40 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1D7D54310;
  v42 = v41 + v40;
  v43 = *MEMORY[0x1E69B5758];
  v102 = v13;
  v44 = *(v13 + 104);
  v44(v42, v43, v12);
  v44(v42 + v39, *v21, v12);
  v44(v42 + 2 * v39, *MEMORY[0x1E69B5788], v12);
  v44(v42 + 3 * v39, *MEMORY[0x1E69B5730], v12);
  v44(v42 + 4 * v39, *MEMORY[0x1E69B5740], v12);
  v44(v42 + 5 * v39, *MEMORY[0x1E69B5770], v12);
  v44(v42 + 6 * v39, *MEMORY[0x1E69B5760], v12);
  v45 = sub_1D7BDE13C(v41);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *&v111 = v45;
  if (v116)
  {
    goto LABEL_26;
  }

  v46.n128_f64[0] = v115;
  if (v115 < 540.0)
  {
    v47 = [objc_opt_self() mainBundle];
    v48 = [v47 bundleIdentifier];

    if (!v48)
    {
      goto LABEL_26;
    }

    v49 = sub_1D7D3034C();
    v51 = v50;

    if (v49 == 0xD000000000000010 && 0x80000001D7D6D9F0 == v51)
    {
    }

    else
    {
      v60 = sub_1D7D3197C();

      if ((v60 & 1) == 0)
      {
        goto LABEL_26;
      }
    }
  }

  v61 = v105;
  (v44)(v105, *MEMORY[0x1E69B5768], v12, v46);
  v62 = v106;
  sub_1D7B3DEA4(v106, v61);
  (*(v102 + 1))(v62, v12);
LABEL_26:
  if (v115 < 768.0)
  {
    if ([v38 respondsToSelector_] & 1) == 0 || (objc_msgSend(v38, sel_role), (sub_1D7D30BCC()))
    {
      v63 = v105;
      v44(v105, *MEMORY[0x1E69B5778], v12);
      v64 = v106;
      sub_1D7B3DEA4(v106, v63);
      (*(v102 + 1))(v64, v12);
    }
  }

  __swift_project_boxed_opaque_existential_1(v107 + 5, v107[8]);
  if (sub_1D7D2F9AC())
  {
    v65 = v105;
    v44(v105, *MEMORY[0x1E69B5750], v12);
    v66 = v106;
    sub_1D7B3DEA4(v106, v65);
    (*(v102 + 1))(v66, v12);
  }

  sub_1D7D29C8C();
  v67 = v100;
  v68 = v101;
  *v11 = v38;
  v11[1] = v67;
  v11[3] = 0;
  v11[4] = 0;
  v11[2] = v68;
  v70 = v103;
  v69 = v104;
  (*(v103 + 104))(v11, *MEMORY[0x1E69B5728], v104);
  v71 = v111;

  swift_unknownObjectRetain();
  MEMORY[0x1DA7076C0](v11, v71);
  (*(v70 + 8))(v11, v69);
  if (sub_1D7D29C4C())
  {
    sub_1D7D29C2C();
  }

  else
  {
  }

  sub_1D7992EFC(0, &qword_1EE0BED30);
  v72 = sub_1D7D3106C();
LABEL_36:
  sub_1D79DA8DC(v114);
  return v72;
}

uint64_t sub_1D7BDE0A4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1DA70E420](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1D7B3DC5C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1D7BDE13C(uint64_t a1)
{
  v2 = sub_1D7D29C7C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  v12 = sub_1D7BDE2A8();
  result = MEMORY[0x1DA70E420](v11, v2, v12);
  v20 = result;
  if (v11)
  {
    v16 = *(v3 + 16);
    v14 = v3 + 16;
    v15 = v16;
    v17 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v18 = *(v14 + 56);
    do
    {
      v15(v6, v17, v2);
      sub_1D7B3DEA4(v10, v6);
      (*(v14 - 8))(v10, v2);
      v17 += v18;
      --v11;
    }

    while (v11);
    return v20;
  }

  return result;
}

unint64_t sub_1D7BDE2A8()
{
  result = qword_1EC9E5248;
  if (!qword_1EC9E5248)
  {
    sub_1D7D29C7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E5248);
  }

  return result;
}

id ArticleNavigationAction.scrollPosition.getter()
{
  v1 = type metadata accessor for ArticleNavigationAction();
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7BDE460(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v7 = objc_allocWithZone(MEMORY[0x1E69CE020]);
      v8 = sub_1D7D3031C();

      v9 = [v7 initWithComponentIdentifier:v8 canvasWidth:0.0 relativePageOffset:0.0];

      return v9;
    }

    if (EnumCaseMultiPayload == 1)
    {
      return *v4;
    }

    sub_1D79961C4();
    (*(*(v10 - 8) + 8))(v4, v10);
  }

  return 0;
}

uint64_t sub_1D7BDE460(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleNavigationAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s12NewsArticles23ArticleNavigationActionO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1D79961C4();
  v5 = v4;
  v42 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ArticleNavigationAction();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = (&v41 - v15);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = (&v41 - v19);
  sub_1D7BDE8F8();
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = &v24[*(v25 + 56)];
  sub_1D7BDE460(a1, v24);
  sub_1D7BDE460(a2, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1D7BDE460(v24, v16);
      v36 = *v16;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v37 = *v26;
        sub_1D7992EFC(0, &qword_1EE0BEC90);
        LOBYTE(v33) = sub_1D7D311DC();

        v29 = type metadata accessor for ArticleNavigationAction;
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    sub_1D7BDE460(v24, v20);
    v31 = *v20;
    v30 = v20[1];
    if (swift_getEnumCaseMultiPayload())
    {

      goto LABEL_17;
    }

    if (v31 == *v26 && v30 == v26[1])
    {

      LOBYTE(v33) = 1;
    }

    else
    {
      v40 = sub_1D7D3197C();

      v33 = v40 << 31 >> 31;
    }

    v29 = type metadata accessor for ArticleNavigationAction;
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v28 = swift_getEnumCaseMultiPayload();
        v29 = type metadata accessor for ArticleNavigationAction;
        if (v28 == 3)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v35 = swift_getEnumCaseMultiPayload();
        v29 = type metadata accessor for ArticleNavigationAction;
        if (v35 == 4)
        {
LABEL_12:
          LOBYTE(v33) = 1;
          goto LABEL_18;
        }
      }

LABEL_17:
      LOBYTE(v33) = 0;
      v29 = sub_1D7BDE8F8;
      goto LABEL_18;
    }

    sub_1D7BDE460(v24, v12);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      (*(v42 + 8))(v12, v5);
      goto LABEL_17;
    }

    v32 = v42;
    (*(v42 + 32))(v8, v26, v5);
    sub_1D799621C();
    LOBYTE(v33) = sub_1D7D2F4CC();
    v34 = *(v32 + 8);
    v34(v8, v5);
    v34(v12, v5);
    v29 = type metadata accessor for ArticleNavigationAction;
  }

LABEL_18:
  sub_1D7BDE95C(v24, v29);
  return v33 & 1;
}

void sub_1D7BDE8F8()
{
  if (!qword_1EE0C7148)
  {
    type metadata accessor for ArticleNavigationAction();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0C7148);
    }
  }
}

uint64_t sub_1D7BDE95C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t TableOfContentsModule.createViewController(for:actionHandler:)(void *a1, uint64_t a2)
{
  v5 = [a1 identifier];
  sub_1D7D3034C();

  v6 = sub_1D7D28A1C();

  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  sub_1D798F168(0, qword_1EE0CE218);
  result = sub_1D7D28D2C();
  if (v21)
  {
    sub_1D799D69C(&v20, v22);
    v8 = v23;
    v9 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    v10 = [a1 identifier];
    v11 = sub_1D7D3034C();
    v13 = v12;

    *&v17 = v11;
    *(&v17 + 1) = v13;
    v18 = 0;
    v19 = 1;
    (*(v9 + 8))(&v20, &v17, v8, v9);
    sub_1D7BDEC18(v17, *(&v17 + 1), v18, v19);
    __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
    type metadata accessor for TableOfContentsViewController();
    sub_1D799CC84(&v20, &v17);
    sub_1D799CC84(a2, v16);
    v14 = swift_allocObject();
    sub_1D799D69C(&v17, v14 + 16);
    sub_1D799D69C(v16, v14 + 56);
    *(v14 + 96) = v6;

    v15 = sub_1D7D28CFC();

    if (v15)
    {
      __swift_destroy_boxed_opaque_existential_1(&v20);

      __swift_destroy_boxed_opaque_existential_1(v22);
      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D7BDEC18(void *a1, id a2, uint64_t a3, char a4)
{
  switch(a4)
  {
    case 2:

      goto LABEL_9;
    case 1:

LABEL_9:

      return;
    case 0:

      break;
  }
}

uint64_t sub_1D7BDEC90(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798F168(0, &qword_1EC9E2A88);
  sub_1D7D28BFC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798F168(0, &qword_1EC9E3A38);
  sub_1D7D28BFC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  return sub_1D7D28BEC();
}

uint64_t TableOfContentsModule.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return v0;
}

uint64_t TableOfContentsModule.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1D7BDEE7C()
{
  v1 = [*(v0 + 24) cachedSubscription];
  if (objc_getAssociatedObject(v1, v1 + 1))
  {
    sub_1D7D3138C();
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
    sub_1D7BDFA64(&v11, sub_1D79F0070);
    goto LABEL_9;
  }

  sub_1D79A4870();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v2 = 0;
    v3 = 0;
    goto LABEL_10;
  }

  v2 = v8;
  v3 = [v8 integerValue];
  if (v3 == -1)
  {
    goto LABEL_17;
  }

LABEL_10:
  if (objc_getAssociatedObject(v1, ~v3))
  {
    sub_1D7D3138C();
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
    sub_1D7BDFA64(&v11, sub_1D79F0070);
    goto LABEL_17;
  }

  sub_1D79A4870();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:

    v6 = -40;
    return (v6 ^ v3) & 1;
  }

  v4 = v8;
  v5 = [v4 integerValue];

  v6 = v5 - 40;
  return (v6 ^ v3) & 1;
}

uint64_t sub_1D7BDF054()
{
  v1 = v0;
  swift_getObjectType();
  sub_1D7D2C41C();
  swift_allocObject();
  swift_weakInit();
  sub_1D79961C4();
  sub_1D7D2A77C();

  __swift_project_boxed_opaque_existential_1(v8, v9);
  sub_1D7D28AEC();
  __swift_destroy_boxed_opaque_existential_1(v8);
  sub_1D7D2C40C();
  swift_allocObject();
  swift_weakInit();
  sub_1D7D2A77C();

  __swift_project_boxed_opaque_existential_1(v8, v9);
  sub_1D7D28AEC();
  __swift_destroy_boxed_opaque_existential_1(v8);
  v2 = *(v0 + 40);
  v3 = swift_allocObject();
  swift_weakInit();
  v10 = sub_1D7BDF948;
  v11 = v3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1D7BD5E84;
  v9 = &block_descriptor_28;
  v4 = _Block_copy(v8);
  v5 = v2;

  v6 = [v5 observe_];
  _Block_release(v4);

  [v6 disposeOn_];
  return swift_unknownObjectRelease();
}

double sub_1D7BDF2D4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *(v2 + 64);
  v5 = *(v4 + 16);
  v6 = (v4 + 32);
  do
  {
    if (!v5)
    {
      result = 0.0;
      *a2 = 0u;
      a2[1] = 0u;
      return result;
    }

    v7 = *v6++;
    --v5;
  }

  while (v7 != a1);
  if ([*(v2 + 16) showMessage_])
  {
    sub_1D7D3138C();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  result = *&v9;
  *a2 = v9;
  a2[1] = v10;
  return result;
}

uint64_t sub_1D7BDF370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D7BDF968(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    sub_1D7BDFA00(a1, v9);
    sub_1D79961C4();
    v13 = v12;
    v14 = *(v12 - 8);
    if ((*(v14 + 48))(v9, 1, v12) == 1)
    {

      return sub_1D7BDFA64(v9, sub_1D7BDF968);
    }

    sub_1D7D2F4BC();
    v15 = *&v27[0];
    (*(v14 + 8))(v9, v13);
    v16 = [v15 articleID];
    swift_unknownObjectRelease();
    if (v16)
    {
      v17 = sub_1D7D3034C();
      v19 = v18;

      v20 = [*(v11 + 32) articleID];
      if (!v20)
      {
      }

      v21 = v20;
      v22 = sub_1D7D3034C();
      v24 = v23;

      if (v17 == v22 && v19 == v24)
      {

LABEL_11:
        sub_1D7BDF2D4(a4, v27);

        return sub_1D7BDFA64(v27, sub_1D79F0070);
      }

      v25 = sub_1D7D3197C();

      if (v25)
      {
        goto LABEL_11;
      }
    }
  }

  return result;
}

void sub_1D7BDF5E8(_BYTE *a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (!a1 || (a1[OBJC_IVAR___NAPlayableArticleInfo_paused] & 1) != 0)
    {
      goto LABEL_14;
    }

    v5 = Strong[6];
    v4 = Strong[7];
    v6 = Strong[5];

    v7 = a1;
    v8 = [v6 value];
    if (v8)
    {
      v10 = *&v8[OBJC_IVAR___NAPlayableArticleInfo_articleId];
      v9 = *&v8[OBJC_IVAR___NAPlayableArticleInfo_articleId + 8];
      v11 = v8;

      v3[6] = v10;
      v3[7] = v9;
    }

    if (v4)
    {
      if (sub_1D7BDEE7C())
      {
        v12 = [v3[4] articleID];
        if (v12)
        {
          v13 = v12;
          v14 = sub_1D7D3034C();
          v16 = v15;

          if (v5 == v14 && v4 == v16)
          {

            return;
          }

          v17 = sub_1D7D3197C();

          if (v17)
          {
            goto LABEL_13;
          }
        }

        else
        {
        }

        v19 = v3[6];
        v18 = v3[7];
        v20 = v3[4];

        v21 = [v20 articleID];
        if (!v21)
        {
          if (!v18)
          {
            goto LABEL_29;
          }

          goto LABEL_25;
        }

        v22 = v21;
        v23 = sub_1D7D3034C();
        v25 = v24;

        if (v18)
        {
          if (v25)
          {
            if (v19 == v23 && v18 == v25)
            {

LABEL_29:
              sub_1D7BDF2D4(1, v27);

              sub_1D7BDFA64(v27, sub_1D79F0070);
              return;
            }

            v26 = sub_1D7D3197C();

            if (v26)
            {
              goto LABEL_29;
            }

            goto LABEL_13;
          }

LABEL_25:

          return;
        }

        if (!v25)
        {
          goto LABEL_29;
        }
      }
    }

LABEL_13:

LABEL_14:
  }
}

uint64_t sub_1D7BDF884()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1D7BDF99C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7BDFA00(uint64_t a1, uint64_t a2)
{
  sub_1D7BDF968(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7BDFA64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D7BDFAC4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D799CC84(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for ModalArticleViewerModule();
    v7 = swift_allocObject();
    v7[8] = 0;
    v7[9] = 0;
    result = sub_1D799D69C(v8, (v7 + 2));
    v7[7] = v5;
    a2[3] = v6;
    a2[4] = &protocol witness table for ModalArticleViewerModule;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7BDFB78@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EC9E66D0);
  result = sub_1D7D28D2C();
  if (v19)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, &qword_1EE0CED78);
    result = sub_1D7D28D2C();
    if (v17)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
      v6 = MEMORY[0x1EEE9AC00](v5, v5);
      v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v9 + 16))(v8, v6);
      v10 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
      v11 = MEMORY[0x1EEE9AC00](v10, v10);
      v13 = &v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v14 + 16))(v13, v11);
      v15 = sub_1D7BE1654(*v8, *v13);
      __swift_destroy_boxed_opaque_existential_1(v16);
      __swift_destroy_boxed_opaque_existential_1(v18);
      result = type metadata accessor for BrandBarRenderer();
      a2[3] = result;
      a2[4] = &off_1F52AFBD0;
      *a2 = v15;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7BDFDE8(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ModalArticleViewerRouter();
  result = sub_1D7D28D1C();
  if (result)
  {
    swift_unknownObjectWeakAssign();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7BDFE68()
{
  v0 = sub_1D7D2932C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModalArticleViewerViewController();
  sub_1D7D291DC();

  sub_1D7D291EC();

  type metadata accessor for ModalArticleViewerRouter();
  sub_1D7D291DC();
  v5 = *MEMORY[0x1E69D6AB8];
  v6 = *(v1 + 104);
  v6(v4, v5, v0);
  sub_1D7D28ADC();

  v7 = *(v1 + 8);
  v7(v4, v0);
  sub_1D798C468(0, &qword_1EC9E66B0);
  sub_1D7D291EC();

  sub_1D798C468(0, &qword_1EC9E66B8);
  sub_1D7D291EC();

  sub_1D798C468(0, &unk_1EC9E66C0);
  sub_1D7D291EC();

  sub_1D798C468(0, qword_1EE0C0958);
  sub_1D7D291EC();

  type metadata accessor for BrandBarAnimationFactory();
  sub_1D7D291DC();
  v6(v4, v5, v0);
  sub_1D7D28ADC();

  v7(v4, v0);
  sub_1D798C468(0, &unk_1EC9E66D0);
  sub_1D7D291EC();

  type metadata accessor for RecipeChromeArticleViewerFeatureProvider();
  sub_1D7D291DC();

  type metadata accessor for ModalArticleViewerStyler();
  sub_1D7D291DC();

  type metadata accessor for ModalArticleViewerAudioActionHandler();
  sub_1D7D291DC();

  sub_1D798C468(0, &unk_1EE0C07A0);
  sub_1D7D291EC();
}

uint64_t sub_1D7BE02E4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E66B0);
  result = sub_1D7D28D2C();
  if (!v61)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D79ED47C();
  result = sub_1D7D28CDC();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EC9E66D0);
  result = sub_1D7D28D2C();
  if (!v60)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0CE970);
  result = sub_1D7D28D2C();
  if (!v58)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v45 = v62;
  v46 = v3;
  v47 = v61;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for BrandBarAnimationFactory();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v4 = result;
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v59, v60);
  v44 = &v41;
  v6 = MEMORY[0x1EEE9AC00](v5, v5);
  v8 = (&v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8, v6);
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v57, v58);
  v43 = &v41;
  v11 = MEMORY[0x1EEE9AC00](v10, v10);
  v13 = (&v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, v11);
  v15 = *v8;
  v16 = *v13;
  v17 = type metadata accessor for BrandBarConfigManager();
  v55 = v17;
  v56 = &off_1F529EEB0;
  v54[0] = v15;
  v18 = type metadata accessor for BrandBarRenderer();
  v52 = v18;
  v53 = &off_1F52AFBD0;
  v51[0] = v16;
  v19 = type metadata accessor for ModalArticleViewerViewController();
  v20 = objc_allocWithZone(v19);
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v54, v55);
  v42 = &v41;
  v22 = MEMORY[0x1EEE9AC00](v21, v21);
  v24 = (&v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24, v22);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(v51, v52);
  v41 = &v41;
  v27 = MEMORY[0x1EEE9AC00](v26, v26);
  v29 = (&v41 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v29, v27);
  v31 = *v24;
  v32 = *v29;
  v50[3] = v17;
  v50[4] = &off_1F529EEB0;
  v49[4] = &off_1F52AFBD0;
  v50[0] = v31;
  v49[3] = v18;
  v49[0] = v32;
  *&v20[OBJC_IVAR____TtC12NewsArticles32ModalArticleViewerViewController_brandbar] = 0;
  v33 = &v20[OBJC_IVAR____TtC12NewsArticles32ModalArticleViewerViewController_eventHandler];
  v34 = v46;
  v35 = v45;
  *v33 = v47;
  *(v33 + 1) = v35;
  *&v20[OBJC_IVAR____TtC12NewsArticles32ModalArticleViewerViewController_content] = v34;
  sub_1D799CC84(v50, &v20[OBJC_IVAR____TtC12NewsArticles32ModalArticleViewerViewController_brandBarConfigManager]);
  *&v20[OBJC_IVAR____TtC12NewsArticles32ModalArticleViewerViewController_brandBarAnimationFactory] = v4;
  sub_1D799CC84(v49, &v20[OBJC_IVAR____TtC12NewsArticles32ModalArticleViewerViewController_brandBarRenderer]);
  v48.receiver = v20;
  v48.super_class = v19;

  v36 = v34;
  swift_unknownObjectRetain();
  v37 = objc_msgSendSuper2(&v48, sel_initWithNibName_bundle_, 0, 0, v41, v42, v43, v44);
  *(*&v37[OBJC_IVAR____TtC12NewsArticles32ModalArticleViewerViewController_eventHandler] + 24) = &off_1F52A3950;
  swift_unknownObjectWeakAssign();
  v38 = v37;
  v39 = [v38 sheetPresentationController];
  if (v39)
  {
    v40 = v39;
    [v39 setPrefersGrabberVisible_];
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();

    v40 = v38;
  }

  __swift_destroy_boxed_opaque_existential_1(v49);
  __swift_destroy_boxed_opaque_existential_1(v50);
  __swift_destroy_boxed_opaque_existential_1(v51);
  __swift_destroy_boxed_opaque_existential_1(v54);
  __swift_destroy_boxed_opaque_existential_1(v57);
  __swift_destroy_boxed_opaque_existential_1(v59);
  return v38;
}

uint64_t sub_1D7BE0920@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v8 = sub_1D7A51764(MEMORY[0x1E69E7CC0]);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBB50);
  result = sub_1D7D28D2C();
  if (v6)
  {
    sub_1D799D69C(&v5, v7);
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    if ((sub_1D7D2F94C() & 1) == 0)
    {
LABEL_5:
      *a2 = v8;
      return __swift_destroy_boxed_opaque_existential_1(v7);
    }

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    type metadata accessor for RecipeChromeArticleViewerFeatureProvider();
    result = sub_1D7D28D1C();
    if (result)
    {
      sub_1D7BD5EF0(result, 2, &v8);

      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7BE0A48(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, qword_1EE0CF990);
    result = sub_1D7D28D2C();
    if (v6)
    {
      type metadata accessor for ModalArticleViewerRouter();
      v4 = swift_allocObject();
      swift_unknownObjectWeakInit();
      *(v4 + 24) = v3;
      sub_1D799D69C(&v5, v4 + 32);
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7BE0B3C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E66B8);
  result = sub_1D7D28D2C();
  v5 = v27;
  if (!v27)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = v28;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = type metadata accessor for ModalArticleViewerRouter();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v25 = v7;
  v26 = &off_1F52B2580;
  *&v24 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EC9E66C0);
  result = sub_1D7D28D2C();
  if (!v23)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EC9E66D0);
  result = sub_1D7D28D2C();
  if (v21)
  {
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
    v9 = MEMORY[0x1EEE9AC00](v8, v8);
    v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v12 + 16))(v11, v9);
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v14 = MEMORY[0x1EEE9AC00](v13, v13);
    v16 = &v20[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v17 + 16))(v16, v14);
    v18 = sub_1D7BE1880(v5, v6, &v24, *v11, *v16);
    __swift_destroy_boxed_opaque_existential_1(v20);
    result = __swift_destroy_boxed_opaque_existential_1(v22);
    *a2 = v18;
    a2[1] = &off_1F52A1210;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D7BE0E30@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ModalArticleViewerInteractor();
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  result = swift_unknownObjectWeakInit();
  *a1 = v2;
  a1[1] = &off_1F529E308;
  return result;
}

uint64_t sub_1D7BE0E84@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for ModalArticleViewerTracker();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_1F529CE28;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7BE0F2C()
{
  type metadata accessor for BrandBarAnimationFactory();
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  return v0;
}

void *sub_1D7BE0F70@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &unk_1EE0BEE60);
  result = sub_1D7D28D1C();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, &qword_1EC9E66E0);
    result = sub_1D7D28D2C();
    if (v7)
    {
      v6 = type metadata accessor for BrandBarConfigManager();
      result = swift_allocObject();
      result[2] = v5;
      result[3] = v7;
      result[4] = v8;
      a2[3] = v6;
      a2[4] = &off_1F529EEB0;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7BE1074(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BEDA0);
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBB50);
  result = sub_1D7D28D2C();
  if (!v25)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0CCD20);
  result = sub_1D7D28D2C();
  if (!v23)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BEEC0);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0C0240);
  result = sub_1D7D28D2C();
  if (v21)
  {
    v5 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
    v6 = MEMORY[0x1EEE9AC00](v5, v5);
    v8 = (v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8, v6);
    v10 = *v8;
    v11 = type metadata accessor for RecipeArticleViewButtonFactory();
    v19[3] = v11;
    v19[4] = &off_1F52B2448;
    v19[0] = v10;
    type metadata accessor for RecipeChromeArticleViewerFeatureProvider();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v11);
    v14 = MEMORY[0x1EEE9AC00](v13, v13);
    v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = *v16;
    *(v12 + 80) = v11;
    *(v12 + 88) = &off_1F52B2448;
    *(v12 + 56) = v18;
    *(v12 + 160) = 0;
    *(v12 + 104) = v3;
    sub_1D799D69C(&v24, v12 + 16);
    *(v12 + 96) = v4;
    *(v12 + 112) = 0;
    sub_1D799D69C(&v20, v12 + 120);
    __swift_destroy_boxed_opaque_existential_1(v19);
    __swift_destroy_boxed_opaque_existential_1(v22);
    return v12;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1D7BE13EC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0CE570);
  result = sub_1D7D28D2C();
  if (v7)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, &qword_1EE0CBB50);
    result = sub_1D7D28D2C();
    if (v5)
    {
      type metadata accessor for ModalArticleViewerStyler();
      v3 = swift_allocObject();
      sub_1D799D69C(&v6, v3 + 16);
      sub_1D799D69C(&v4, v3 + 56);
      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7BE14EC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0C7460);
  result = sub_1D7D28D2C();
  if (v9)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v3 = type metadata accessor for ModalArticleViewerRouter();
    result = sub_1D7D28D1C();
    if (result)
    {
      v6 = v3;
      v7 = &off_1F52B2580;
      *&v5 = result;
      type metadata accessor for ModalArticleViewerAudioActionHandler();
      v4 = swift_allocObject();
      sub_1D799D69C(&v8, v4 + 16);
      sub_1D799D69C(&v5, v4 + 56);
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7BE1604@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

uint64_t sub_1D7BE1654(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = type metadata accessor for BrandBarConfigManager();
  v23[3] = v5;
  v23[4] = &off_1F529EEB0;
  v23[0] = a1;
  v21 = v4;
  v22 = &off_1F529F9F0;
  v20[0] = a2;
  type metadata accessor for BrandBarRenderer();
  v6 = swift_allocObject();
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v23, v5);
  v8 = MEMORY[0x1EEE9AC00](v7, v7);
  v10 = (v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10, v8);
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
  v13 = MEMORY[0x1EEE9AC00](v12, v12);
  v15 = (v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15, v13);
  v17 = *v10;
  v18 = *v15;
  *(v6 + 96) = v5;
  *(v6 + 104) = &off_1F529EEB0;
  *(v6 + 136) = v4;
  *(v6 + 144) = &off_1F529F9F0;
  *(v6 + 112) = v18;
  *(v6 + 16) = xmmword_1D7D55740;
  *(v6 + 32) = xmmword_1D7D55750;
  *(v6 + 48) = xmmword_1D7D55760;
  *(v6 + 64) = 0x403C000000000000;
  *(v6 + 72) = v17;
  __swift_destroy_boxed_opaque_existential_1(v20);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return v6;
}

void *sub_1D7BE1880(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a5;
  v11 = type metadata accessor for ModalArticleViewerTracker();
  v36[3] = v11;
  v36[4] = &off_1F529CE28;
  v36[0] = a4;
  v34 = v10;
  v35 = &off_1F529EEB0;
  v33[0] = a5;
  type metadata accessor for ModalArticleViewerEventHandler();
  v12 = swift_allocObject();
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v36, v11);
  v14 = MEMORY[0x1EEE9AC00](v13, v13);
  v16 = (&v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16, v14);
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
  v19 = MEMORY[0x1EEE9AC00](v18, v18);
  v21 = (&v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21, v19);
  v23 = *v16;
  v24 = *v21;
  v31 = v11;
  v32 = &off_1F529CE28;
  v29 = &off_1F529EEB0;
  *&v30 = v23;
  v28 = v10;
  *&v27 = v24;
  v12[3] = 0;
  swift_unknownObjectWeakInit();
  v12[4] = a1;
  v12[5] = a2;
  sub_1D799D69C(a3, (v12 + 6));
  sub_1D799D69C(&v30, (v12 + 11));
  sub_1D799D69C(&v27, (v12 + 16));
  *(a1 + 24) = &off_1F52A1208;
  swift_unknownObjectWeakAssign();
  __swift_destroy_boxed_opaque_existential_1(v33);
  __swift_destroy_boxed_opaque_existential_1(v36);
  return v12;
}

uint64_t WebViewSession.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t WebViewSession.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebViewSession() + 20);
  v4 = sub_1D7D2833C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for WebViewSession()
{
  result = qword_1EC9E66F0;
  if (!qword_1EC9E66F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WebViewSession.trigger.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for WebViewSession();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t WebViewSession.Trigger.hashValue.getter()
{
  v1 = *v0;
  sub_1D7D31A8C();
  MEMORY[0x1DA70F500](v1);
  return sub_1D7D31ABC();
}

unint64_t sub_1D7BE1CB0()
{
  result = qword_1EC9E66E8;
  if (!qword_1EC9E66E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E66E8);
  }

  return result;
}

uint64_t sub_1D7BE1D2C()
{
  result = sub_1D7D2833C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void Array<A>.fixSpacing(spaceWidth:)(double a1)
{
  v3 = *v1;
  sub_1D7BE22D8(*v1, a1);
  if ((v4 & 1) == 0)
  {
    return;
  }

  v5 = v3 >> 62;
  if (v3 >> 62)
  {
    goto LABEL_93;
  }

  v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
LABEL_15:
    if (v5)
    {
      v7 = sub_1D7D3167C();
    }

    else
    {
      v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    goto LABEL_23;
  }

LABEL_4:
  v7 = 0;
  while (1)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1DA70EF00](v7, v3);
    }

    else
    {
      if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_87;
      }

      v8 = *(v3 + 8 * v7 + 32);
    }

    v9 = v8;
    if (![v8 isSystemItem])
    {

      goto LABEL_13;
    }

    v10 = [v9 systemItem];

    if (v10 == 6)
    {
      break;
    }

LABEL_13:
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_86;
    }

    ++v7;
    if (v11 == v6)
    {
      goto LABEL_15;
    }
  }

  v12 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    goto LABEL_103;
  }

  if (v5)
  {
    if (v12 != sub_1D7D3167C())
    {
      goto LABEL_48;
    }
  }

  else if (v12 != *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_48:
    v5 = v7 + 5;
    while (1)
    {
      v24 = v5 - 4;
      if ((v3 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x1DA70EF00](v5 - 4, v3);
      }

      else
      {
        if ((v24 & 0x8000000000000000) != 0)
        {
          goto LABEL_88;
        }

        if (v24 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_89;
        }

        v25 = *(v3 + 8 * v5);
      }

      v26 = v25;
      if (![v25 isSystemItem])
      {
        break;
      }

      v27 = [v26 systemItem];

      if (v27 != 6)
      {
        if (v24 == v7)
        {
LABEL_74:
          if (__OFADD__(v7++, 1))
          {
            goto LABEL_91;
          }

          goto LABEL_75;
        }

LABEL_58:
        if ((v3 & 0xC000000000000001) != 0)
        {
          v28 = MEMORY[0x1DA70EF00](v7, v3);
          v29 = MEMORY[0x1DA70EF00](v5 - 4, v3);
        }

        else
        {
          if (v7 < 0)
          {
            goto LABEL_100;
          }

          v30 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v7 >= v30)
          {
            goto LABEL_101;
          }

          if (v24 >= v30)
          {
            goto LABEL_102;
          }

          v31 = *(v3 + 8 * v5);
          v28 = *(v3 + 8 * v7 + 32);
          v29 = v31;
        }

        v32 = v29;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
        {
          v3 = sub_1D7BE2AE0(v3);
          v33 = (v3 >> 62) & 1;
        }

        else
        {
          LODWORD(v33) = 0;
        }

        v34 = v3 & 0xFFFFFFFFFFFFFF8;
        v35 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20);
        *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v32;

        if ((v3 & 0x8000000000000000) != 0 || v33)
        {
          v3 = sub_1D7BE2AE0(v3);
          v34 = v3 & 0xFFFFFFFFFFFFFF8;
          if ((v24 & 0x8000000000000000) != 0)
          {
LABEL_83:
            __break(1u);
LABEL_84:
            __break(1u);
LABEL_85:
            __break(1u);
LABEL_86:
            __break(1u);
LABEL_87:
            __break(1u);
LABEL_88:
            __break(1u);
LABEL_89:
            __break(1u);
LABEL_90:
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            v6 = sub_1D7D3167C();
            if (!v6)
            {
              goto LABEL_15;
            }

            goto LABEL_4;
          }
        }

        else if ((v24 & 0x8000000000000000) != 0)
        {
          goto LABEL_83;
        }

        if (v24 >= *(v34 + 16))
        {
          goto LABEL_92;
        }

        v36 = *(v34 + 8 * v5);
        *(v34 + 8 * v5) = v28;

        *v1 = v3;
        goto LABEL_74;
      }

LABEL_75:
      v38 = v5 - 3;
      if (__OFADD__(v24, 1))
      {
        goto LABEL_90;
      }

      if (v3 >> 62)
      {
        v39 = sub_1D7D3167C();
      }

      else
      {
        v39 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      ++v5;
      if (v38 == v39)
      {
        goto LABEL_23;
      }
    }

    if (v24 == v7)
    {
      goto LABEL_74;
    }

    goto LABEL_58;
  }

LABEL_23:
  if (!(v3 >> 62))
  {
    v13 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13 >= v7)
    {
      goto LABEL_25;
    }

LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v13 = sub_1D7D3167C();
  if (v13 < v7)
  {
    goto LABEL_96;
  }

LABEL_25:
  sub_1D7B088D4(v7, v13);
  v3 = *v1;
  if (*v1 >> 62)
  {
LABEL_97:
    v40 = sub_1D7D3167C();
    v15 = v40 - 1;
    if (__OFSUB__(v40, 1))
    {
      goto LABEL_99;
    }

LABEL_27:
    if (v15 < 1)
    {
      return;
    }

    sub_1D7D2A94C();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v17 = 0;
    for (i = 0x4000000000000000; ; --i)
    {
      v19 = [objc_allocWithZone(ObjCClassFromMetadata) initWithBarButtonSystemItem:6 target:0 action:0];
      [v19 setWidth_];
      if (!i)
      {
        goto LABEL_84;
      }

      v5 = v3 >> 62;
      if (v3 >> 62)
      {
        if (sub_1D7D3167C() <= v17)
        {
          goto LABEL_85;
        }

        if (sub_1D7D3167C() <= v17)
        {
          goto LABEL_104;
        }

        v23 = sub_1D7D3167C();
        v21 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
LABEL_46:
          __break(1u);
          return;
        }
      }

      else
      {
        v20 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v20 <= v17)
        {
          goto LABEL_85;
        }

        v21 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_46;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *v1 = v3;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v5)
        {
          if (v21 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_31;
          }

          goto LABEL_30;
        }
      }

      else if (!v5)
      {
        goto LABEL_30;
      }

      sub_1D7D3167C();
LABEL_30:
      v3 = sub_1D7D314AC();
      *v1 = v3;
LABEL_31:
      sub_1D7BE364C(v17 + 1, v17 + 1, 1, v19);

      *v1 = v3;
      v17 += 2;
      if (!--v15)
      {
        return;
      }
    }
  }

  v14 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v15 = v14 - 1;
  if (!__OFSUB__(v14, 1))
  {
    goto LABEL_27;
  }

LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
}

void sub_1D7BE22D8(unint64_t a1, double a2)
{
  v4 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7D3167C())
  {
    v6 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1DA70EF00](v6, a1);
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if ([v7 isSystemItem] && objc_msgSend(v8, sel_systemItem) == 6)
      {
        [v8 width];
        v11 = v10;

        if (v11 != a2)
        {
          return;
        }
      }

      else
      {
      }

      ++v6;
      if (v9 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_18:
  if (v4)
  {
    v12 = sub_1D7D3167C();
  }

  else
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = v12 - 1;
  if (__OFSUB__(v12, 1))
  {
    goto LABEL_69;
  }

  if (v13 >= 1)
  {
    v14 = 0;
    v15 = a1 & 0xC000000000000001;
    v16 = (a1 + 40);
    while ((v13 & ~(v13 >> 63)) != v14)
    {
      if (v15)
      {
        v19 = MEMORY[0x1DA70EF00](v14, a1);
      }

      else
      {
        if (v14 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_67;
        }

        v19 = *(v16 - 1);
      }

      v4 = v19;
      v20 = v14 + 1;
      v21 = [v19 isSystemItem];

      if (v21)
      {
        v22 = v15 ? MEMORY[0x1DA70EF00](v14, a1) : *(v16 - 1);
        v23 = v22;
        v4 = [v22 systemItem];

        if (v4 == 6)
        {
          if (v15)
          {
            v24 = MEMORY[0x1DA70EF00](v20, a1);
          }

          else
          {
            if (v20 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_68;
            }

            v24 = *v16;
          }

          v25 = v24;
          v4 = [v24 isSystemItem];

          if (v4)
          {
            v17 = v15 ? MEMORY[0x1DA70EF00](v20, a1) : *v16;
            v18 = v17;
            v4 = [v17 systemItem];

            if (v4 == 6)
            {
              return;
            }
          }
        }
      }

      ++v16;
      v14 = v20;
      if (v13 == v20)
      {
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    v26 = MEMORY[0x1DA70EF00](0, a1);
    goto LABEL_48;
  }

LABEL_44:
  if (!i)
  {
    return;
  }

  v4 = (a1 & 0xC000000000000001);
  if ((a1 & 0xC000000000000001) != 0)
  {
    goto LABEL_70;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v26 = *(a1 + 32);
LABEL_48:
  v27 = v26;
  v28 = [v26 isSystemItem];

  if (v28)
  {
    v29 = v4 ? MEMORY[0x1DA70EF00](0, a1) : *(a1 + 32);
    v30 = v29;
    v31 = [v29 systemItem];

    if (v31 == 6)
    {
      return;
    }
  }

  v32 = __OFSUB__(i, 1);
  v33 = i - 1;
  if (v32)
  {
    goto LABEL_72;
  }

  if (v4)
  {
    v34 = MEMORY[0x1DA70EF00](v33, a1);
    goto LABEL_60;
  }

  if ((v33 & 0x8000000000000000) != 0)
  {
    goto LABEL_73;
  }

  if (v33 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_74:
    __break(1u);
    return;
  }

  v34 = *(a1 + 8 * v33 + 32);
LABEL_60:
  v35 = v34;
  v36 = [v34 isSystemItem];

  if (v36)
  {
    if (v4)
    {
      v37 = MEMORY[0x1DA70EF00](v33, a1);
    }

    else
    {
      v37 = *(a1 + 8 * v33 + 32);
    }

    v38 = v37;
    [v37 systemItem];
  }
}

uint64_t sub_1D7BE26C0(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1D7D3167C();
LABEL_9:
  result = sub_1D7D314AC();
  *v1 = result;
  return result;
}

unint64_t sub_1D7BE2760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for ArticleViewerPage(0);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_22;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      return result;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_15:
  if (a3 >= 1 && v17 >= 1)
  {
    result = sub_1D79F93E8(a4, v15);
    if (v12 < v17)
    {
      goto LABEL_25;
    }
  }

  return sub_1D7BE3794(a4);
}

unint64_t sub_1D7BE28D4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *v4;
  v10 = v9 + 32 + 48 * result;
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v12)
  {
    v13 = *(v9 + 16);
    v11 = __OFSUB__(v13, a2);
    v14 = v13 - a2;
    if (!v11)
    {
      result = v10 + 48 * a3;
      v15 = (v9 + 32 + 48 * a2);
      v16 = 48 * v14;
      v17 = &v15[48 * v14];
      if (result != v15 || result >= v17)
      {
        result = memmove(result, v15, v16);
      }

      v19 = *(v9 + 16);
      v11 = __OFADD__(v19, v12);
      v20 = v19 + v12;
      if (!v11)
      {
        *(v9 + 16) = v20;
        goto LABEL_13;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_13:
  if (a3 >= 1)
  {
    result = sub_1D7B990D4(a4, v10);
    if (a3 != 1)
    {
      goto LABEL_22;
    }
  }

  return sub_1D7BE3C94(a4);
}

uint64_t sub_1D7BE29D4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    if (result)
    {
      sub_1D7992EFC(0, &qword_1EE0BF050);
      return swift_arrayInitWithCopy();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7BE2A4C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  if (a2 == a3)
  {
    if (result)
    {
      a5(0);
      return swift_arrayInitWithCopy();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7BE2AE0(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1D7D3167C();
  }

  return sub_1D7D314AC();
}

uint64_t sub_1D7BE2B44(uint64_t a1, uint64_t (*a2)(void *, uint64_t), uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = sub_1D7BE2BAC(a1, a4);
  v6 = v5[2];

  return a2(v5 + 4, v6);
}

void *sub_1D7BE2BAC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (a1 < 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v4, MEMORY[0x1E69E7CC0]);
  if (AssociatedObject)
  {
    v6 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v4);
    v7 = objc_getAssociatedObject(v4, MEMORY[0x1E69E7CC0]);
    if (v7)
    {
      v6 = v7;
      swift_retain_n();
    }

    else
    {
      v6 = a2(a1);

      objc_setAssociatedObject(v4, MEMORY[0x1E69E7CC0], v6, 1);
    }

    objc_sync_exit(v4);
  }

  return v6;
}

unint64_t sub_1D7BE2C70(unint64_t result, _BYTE *a2, uint64_t a3, const void *a4)
{
  v5 = &a2[-result];
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  v8 = a2;
  v9 = *v4;
  v10 = (v9 + 32 + 104 * result);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, v8);
  v14 = v13 - v8;
  if (v11)
  {
    goto LABEL_19;
  }

  result = v10 + 104 * a3;
  a2 = (v9 + 32 + 104 * v8);
  v15 = 104 * v14;
  v16 = &a2[104 * v14];
  if (result != a2 || result >= v16)
  {
    result = memmove(result, a2, v15);
  }

  v18 = *(v9 + 16);
  v11 = __OFADD__(v18, v12);
  v19 = v18 + v12;
  if (v11)
  {
    goto LABEL_20;
  }

  *(v9 + 16) = v19;
LABEL_13:
  if (a3 <= 0)
  {
    return result;
  }

  memmove(v10, a4, 0x61uLL);
  a2 = v20;
  result = a4;
  if (a3 != 1)
  {
LABEL_21:
    result = sub_1D7BE3C20(result, a2);
    __break(1u);
    return result;
  }

  return sub_1D7BE3C20(a4, v20);
}

unint64_t sub_1D7BE2D78(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_20;
  }

  v9 = *v4;
  v10 = v9 + 32 + 104 * result;
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, a2);
  v14 = v13 - a2;
  if (v11)
  {
    goto LABEL_21;
  }

  result = v10 + 104 * a3;
  v15 = (v9 + 32 + 104 * a2);
  v16 = 104 * v14;
  v17 = &v15[104 * v14];
  if (result != v15 || result >= v17)
  {
    result = memmove(result, v15, v16);
  }

  v19 = *(v9 + 16);
  v11 = __OFADD__(v19, v12);
  v20 = v19 + v12;
  if (v11)
  {
    goto LABEL_22;
  }

  *(v9 + 16) = v20;
LABEL_13:
  if (a3 < 1)
  {
    return result;
  }

  if (*(a4 + 16) != a3)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  return swift_arrayInitWithCopy();
}

unint64_t sub_1D7BE2E98(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 48 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 48 * a3;
  v13 = (v7 + 32 + 48 * a2);
  if (result != v13 || result >= v13 + 48 * v12)
  {
    result = memmove(result, v13, 48 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1D7BE2F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for AdComponentIntegrator.Item();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

char *sub_1D7BE30B8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_1D7AD5570();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_1D7D3167C();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_1D7D3167C();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

void sub_1D7BE31D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = a4;
  v8 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_1D7B0820C();
  v13 = swift_arrayDestroy();
  v16 = __OFSUB__(v8, v11);
  v11 = v8 - v11;
  if (v16)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    v17 = v5[2];
    v18 = v17 - v7;
    if (!__OFSUB__(v17, v7))
    {
      goto LABEL_6;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_25:
  v21 = sub_1D7D3167C();
  v18 = v21 - v7;
  if (__OFSUB__(v21, v7))
  {
    goto LABEL_27;
  }

LABEL_6:
  v19 = (v6 + 8 * v8);
  v14 = &v9[v7];
  if (v19 != v14 || v19 >= &v14[8 * v18])
  {
    memmove(v19, v14, 8 * v18);
  }

  if (v10)
  {
    v13 = sub_1D7D3167C();
  }

  else
  {
    v13 = v5[2];
  }

  if (__OFADD__(v13, v11))
  {
    goto LABEL_28;
  }

  v5[2] = v13 + v11;
LABEL_17:
  if (v8 < 1)
  {
    return;
  }

  MEMORY[0x1EEE9AC00](v13, v14);
  v15 = v22;
  v22[2] = v8;
  v22[3] = v6;
  if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
LABEL_29:
    sub_1D7BE2B44(v4, sub_1D7BE3D4C, v15, sub_1D7B10FB8);
    return;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) == v8)
  {
    swift_arrayInitWithCopy();
  }

  else
  {
    __break(1u);
  }
}

void sub_1D7BE3380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = a4;
  v8 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_1D7992EFC(0, &qword_1EE0BF050);
  v13 = swift_arrayDestroy();
  v16 = __OFSUB__(v8, v11);
  v11 = v8 - v11;
  if (v16)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    v17 = v5[2];
    v18 = v17 - v7;
    if (!__OFSUB__(v17, v7))
    {
      goto LABEL_6;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_25:
  v21 = sub_1D7D3167C();
  v18 = v21 - v7;
  if (__OFSUB__(v21, v7))
  {
    goto LABEL_27;
  }

LABEL_6:
  v19 = (v6 + 8 * v8);
  v14 = &v9[v7];
  if (v19 != v14 || v19 >= &v14[8 * v18])
  {
    memmove(v19, v14, 8 * v18);
  }

  if (v10)
  {
    v13 = sub_1D7D3167C();
  }

  else
  {
    v13 = v5[2];
  }

  if (__OFADD__(v13, v11))
  {
    goto LABEL_28;
  }

  v5[2] = v13 + v11;
LABEL_17:
  if (v8 < 1)
  {
    return;
  }

  MEMORY[0x1EEE9AC00](v13, v14);
  v15 = v22;
  v22[2] = v8;
  v22[3] = v6;
  if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
LABEL_29:
    sub_1D7BE2B44(v4, sub_1D7BE3778, v15, sub_1D79B53DC);
    return;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) == v8)
  {
    swift_arrayInitWithCopy();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D7BE353C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_1D7992EFC(0, &qword_1EE0BF050);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1D7D3167C();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1D7D3167C();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

char *sub_1D7BE364C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_1D7992EFC(0, &qword_1EE0BF050);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_1D7D3167C();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_1D7D3167C();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_1D7BE3794(uint64_t a1)
{
  sub_1D7BE37F0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D7BE37F0()
{
  if (!qword_1EE0BAF58)
  {
    type metadata accessor for ArticleViewerPage(255);
    v0 = sub_1D7D3152C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BAF58);
    }
  }
}

unint64_t sub_1D7BE3848(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 1104 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 1104 * a3;
  v13 = (v7 + 32 + 1104 * a2);
  if (result != v13 || result >= v13 + 1104 * v12)
  {
    result = memmove(result, v13, 1104 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

void sub_1D7BE3920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = a4;
  v8 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for EndOfArticleHeadlineModel();
  v13 = swift_arrayDestroy();
  v16 = __OFSUB__(v8, v11);
  v11 = v8 - v11;
  if (v16)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    v17 = v5[2];
    v18 = v17 - v7;
    if (!__OFSUB__(v17, v7))
    {
      goto LABEL_6;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_25:
  v21 = sub_1D7D3167C();
  v18 = v21 - v7;
  if (__OFSUB__(v21, v7))
  {
    goto LABEL_27;
  }

LABEL_6:
  v19 = (v6 + 8 * v8);
  v14 = &v9[v7];
  if (v19 != v14 || v19 >= &v14[8 * v18])
  {
    memmove(v19, v14, 8 * v18);
  }

  if (v10)
  {
    v13 = sub_1D7D3167C();
  }

  else
  {
    v13 = v5[2];
  }

  if (__OFADD__(v13, v11))
  {
    goto LABEL_28;
  }

  v5[2] = v13 + v11;
LABEL_17:
  if (v8 < 1)
  {
    return;
  }

  MEMORY[0x1EEE9AC00](v13, v14);
  v15 = v22;
  v22[2] = v8;
  v22[3] = v6;
  if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
LABEL_29:
    sub_1D7BE2B44(v4, sub_1D7BE3BF0, v15, sub_1D7B10FB8);
    return;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) == v8)
  {
    swift_arrayInitWithCopy();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1D7BE3ACC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_20;
  }

  v9 = *v4;
  v10 = v9 + 32 + 112 * result;
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, a2);
  v14 = v13 - a2;
  if (v11)
  {
    goto LABEL_21;
  }

  result = v10 + 112 * a3;
  v15 = (v9 + 32 + 112 * a2);
  if (result != v15 || result >= v15 + 112 * v14)
  {
    result = memmove(result, v15, 112 * v14);
  }

  v17 = *(v9 + 16);
  v11 = __OFADD__(v17, v12);
  v18 = v17 + v12;
  if (v11)
  {
    goto LABEL_22;
  }

  *(v9 + 16) = v18;
LABEL_13:
  if (a3 < 1)
  {
    return result;
  }

  if (*(a4 + 16) != a3)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  return swift_arrayInitWithCopy();
}

uint64_t sub_1D7BE3C20(uint64_t a1, uint64_t a2)
{
  sub_1D7BE3D00(0, &qword_1EE0BEC20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7BE3C94(uint64_t a1)
{
  sub_1D7BE3D00(0, &qword_1EE0BEC18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D7BE3D00(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D7D3152C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void *sub_1D7BE3D84(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = *(sub_1D7D2F80C() - 8);
  v7 = a3 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v20 = *(v6 + 72);
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    result = a1(&v22, v7);
    if (v3)
    {

      return v8;
    }

    v10 = v22;
    v11 = *(v22 + 16);
    v12 = v8[2];
    v13 = v12 + v11;
    if (__OFADD__(v12, v11))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v13 <= v8[3] >> 1)
    {
      if (*(v10 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v12 <= v13)
      {
        v15 = v12 + v11;
      }

      else
      {
        v15 = v12;
      }

      v8 = sub_1D79E4270(isUniquelyReferenced_nonNull_native, v15, 1, v8);
      if (*(v10 + 16))
      {
LABEL_15:
        v16 = (v8[3] >> 1) - v8[2];
        result = type metadata accessor for EndOfRecipeModel();
        if (v16 < v11)
        {
          goto LABEL_24;
        }

        swift_arrayInitWithCopy();

        if (v11)
        {
          v17 = v8[2];
          v18 = __OFADD__(v17, v11);
          v19 = v17 + v11;
          if (v18)
          {
            goto LABEL_25;
          }

          v8[2] = v19;
        }

        goto LABEL_4;
      }
    }

    if (v11)
    {
      goto LABEL_23;
    }

LABEL_4:
    v7 += v20;
    if (!--v4)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1D7BE3F8C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v150 = a3;
  v147 = a2;
  v148 = a4;
  v142 = a1;
  v4 = type metadata accessor for RelatedRecipesEndOfRecipeFeedGroup();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v141 = &v131 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RelatedArticlesEndOfRecipeFeedGroup();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = type metadata accessor for EndOfRecipeModel();
  v136 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153, v11);
  v151 = &v131 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v131 - v15;
  sub_1D7A060E8();
  v152 = v17;
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v132 = &v131 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v133 = &v131 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v131 - v26;
  sub_1D7A06270();
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v135 = &v131 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v134 = &v131 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v131 - v36;
  v38 = sub_1D7D2F05C();
  v145 = *(v38 - 8);
  v146 = v38;
  MEMORY[0x1EEE9AC00](v38, v39);
  v143 = &v131 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for EndOfRecipeSectionDescriptor();
  MEMORY[0x1EEE9AC00](v149, v41);
  v139 = &v131 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43, v44);
  v140 = &v131 - v45;
  MEMORY[0x1EEE9AC00](v46, v47);
  v137 = &v131 - v48;
  MEMORY[0x1EEE9AC00](v49, v50);
  v138 = &v131 - v51;
  MEMORY[0x1EEE9AC00](v52, v53);
  v55 = &v131 - v54;
  MEMORY[0x1EEE9AC00](v56, v57);
  v59 = &v131 - v58;
  v60 = type metadata accessor for RecipeTopicsEndOfRecipeFeedGroup();
  MEMORY[0x1EEE9AC00](v60 - 8, v61);
  v63 = &v131 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for EndOfRecipeFeedGroup();
  MEMORY[0x1EEE9AC00](v64, v65);
  v67 = &v131 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7BE5130(v142, v67, type metadata accessor for EndOfRecipeFeedGroup);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v141 = v27;
    v142 = v37;
    sub_1D7B398A8(v67, v63, type metadata accessor for RecipeTopicsEndOfRecipeFeedGroup);
    sub_1D7BE5130(v63, v59, type metadata accessor for RecipeTopicsEndOfRecipeFeedGroup);
    swift_storeEnumTagMultiPayload();
    v86 = v143;
    v87 = *(v144 + 2);
    v144 = v63;
    _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV13formatContent0aG006FormatJ0V8ResolvedVvg_0();
    v88 = EndOfRecipeSectionDescriptor.identifier.getter();
    v90 = v89;
    v91 = sub_1D7D2F04C();
    MEMORY[0x1EEE9AC00](v91, v92);
    *(&v131 - 6) = v147;
    *(&v131 - 5) = v87;
    *(&v131 - 4) = v150;
    *(&v131 - 3) = v88;
    *(&v131 - 2) = v90;
    v93 = sub_1D7BE3D84(sub_1D7BE521C, (&v131 - 8), v91);

    (v145[1])(v86, v146);
    sub_1D7BE5130(v59, v55, type metadata accessor for EndOfRecipeSectionDescriptor);
    v94 = v93[2];
    if (v94)
    {
      v146 = v55;
      v147 = v59;
      v154 = MEMORY[0x1E69E7CC0];
      sub_1D7A5BEFC(0, v94, 0);
      v95 = v154;
      v96 = *(v136 + 80);
      v145 = v93;
      v97 = v93 + ((v96 + 32) & ~v96);
      v150 = *(v136 + 72);
      v98 = v151;
      v99 = v141;
      do
      {
        sub_1D7BE5130(v97, v16, type metadata accessor for EndOfRecipeModel);
        sub_1D7BE5130(v16, v98, type metadata accessor for EndOfRecipeModel);
        sub_1D7BE50E8(&qword_1EE0CA100, type metadata accessor for EndOfRecipeModel);
        sub_1D7D29EDC();
        sub_1D7BE51BC(v16, type metadata accessor for EndOfRecipeModel);
        v154 = v95;
        v101 = *(v95 + 16);
        v100 = *(v95 + 24);
        if (v101 >= v100 >> 1)
        {
          sub_1D7A5BEFC(v100 > 1, v101 + 1, 1);
          v95 = v154;
        }

        *(v95 + 16) = v101 + 1;
        (*(v18 + 32))(v95 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v101, v99, v152);
        v97 += v150;
        --v94;
      }

      while (v94);

      v59 = v147;
    }

    else
    {

      v95 = MEMORY[0x1E69E7CC0];
    }

    v124 = sub_1D7BE50E8(&qword_1EC9E2018, sub_1D7A060E8);
    v125 = sub_1D7BE50E8(&qword_1EC9E2020, sub_1D7A060E8);
    MEMORY[0x1DA706A80](v95, v152, v124, v125);
    sub_1D7BE50E8(&unk_1EE0C4B98, type metadata accessor for EndOfRecipeSectionDescriptor);
    sub_1D7BE50E8(&qword_1EE0CA100, type metadata accessor for EndOfRecipeModel);
    sub_1D7D2A42C();
    sub_1D7BE51BC(v59, type metadata accessor for EndOfRecipeSectionDescriptor);
    v123 = type metadata accessor for RecipeTopicsEndOfRecipeFeedGroup;
    goto LABEL_25;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1D7B398A8(v67, v10, type metadata accessor for RelatedArticlesEndOfRecipeFeedGroup);
    v69 = v138;
    sub_1D7BE5130(v10, v138, type metadata accessor for RelatedArticlesEndOfRecipeFeedGroup);
    swift_storeEnumTagMultiPayload();
    v70 = v143;
    v71 = *(v144 + 2);
    v144 = v10;
    _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV13formatContent0aG006FormatJ0V8ResolvedVvg_0();
    v72 = EndOfRecipeSectionDescriptor.identifier.getter();
    v74 = v73;
    v75 = sub_1D7D2F04C();
    MEMORY[0x1EEE9AC00](v75, v76);
    *(&v131 - 6) = v147;
    *(&v131 - 5) = v71;
    *(&v131 - 4) = v150;
    *(&v131 - 3) = v72;
    *(&v131 - 2) = v74;
    v77 = sub_1D7BE3D84(sub_1D7BE521C, (&v131 - 8), v75);

    (v145[1])(v70, v146);
    sub_1D7BE5130(v69, v137, type metadata accessor for EndOfRecipeSectionDescriptor);
    v78 = *(v77 + 2);
    if (v78)
    {
      v154 = MEMORY[0x1E69E7CC0];
      sub_1D7A5BEFC(0, v78, 0);
      v79 = v154;
      v80 = *(v136 + 80);
      v147 = v77;
      v81 = &v77[(v80 + 32) & ~v80];
      v150 = *(v136 + 72);
      v82 = v151;
      v83 = v133;
      do
      {
        sub_1D7BE5130(v81, v16, type metadata accessor for EndOfRecipeModel);
        sub_1D7BE5130(v16, v82, type metadata accessor for EndOfRecipeModel);
        sub_1D7BE50E8(&qword_1EE0CA100, type metadata accessor for EndOfRecipeModel);
        sub_1D7D29EDC();
        sub_1D7BE51BC(v16, type metadata accessor for EndOfRecipeModel);
        v154 = v79;
        v85 = *(v79 + 16);
        v84 = *(v79 + 24);
        if (v85 >= v84 >> 1)
        {
          sub_1D7A5BEFC(v84 > 1, v85 + 1, 1);
          v79 = v154;
        }

        *(v79 + 16) = v85 + 1;
        (*(v18 + 32))(v79 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v85, v83, v152);
        v81 += v150;
        --v78;
      }

      while (v78);
    }

    else
    {

      v79 = MEMORY[0x1E69E7CC0];
    }

    v121 = sub_1D7BE50E8(&qword_1EC9E2018, sub_1D7A060E8);
    v122 = sub_1D7BE50E8(&qword_1EC9E2020, sub_1D7A060E8);
    MEMORY[0x1DA706A80](v79, v152, v121, v122);
    sub_1D7BE50E8(&unk_1EE0C4B98, type metadata accessor for EndOfRecipeSectionDescriptor);
    sub_1D7BE50E8(&qword_1EE0CA100, type metadata accessor for EndOfRecipeModel);
    sub_1D7D2A42C();
    sub_1D7BE51BC(v138, type metadata accessor for EndOfRecipeSectionDescriptor);
    v123 = type metadata accessor for RelatedArticlesEndOfRecipeFeedGroup;
LABEL_25:
    v126 = v123;
    v127 = v144;
    return sub_1D7BE51BC(v127, v126);
  }

  v102 = v141;
  sub_1D7B398A8(v67, v141, type metadata accessor for RelatedRecipesEndOfRecipeFeedGroup);
  v103 = v140;
  sub_1D7BE5130(v102, v140, type metadata accessor for RelatedRecipesEndOfRecipeFeedGroup);
  swift_storeEnumTagMultiPayload();
  v104 = v143;
  v105 = *(v144 + 2);
  _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV13formatContent0aG006FormatJ0V8ResolvedVvg_0();
  v106 = EndOfRecipeSectionDescriptor.identifier.getter();
  v108 = v107;
  v109 = sub_1D7D2F04C();
  MEMORY[0x1EEE9AC00](v109, v110);
  *(&v131 - 6) = v147;
  *(&v131 - 5) = v105;
  *(&v131 - 4) = v150;
  *(&v131 - 3) = v106;
  *(&v131 - 2) = v108;
  v111 = sub_1D7BE3D84(sub_1D7BE50D0, (&v131 - 8), v109);

  (v145[1])(v104, v146);
  sub_1D7BE5130(v103, v139, type metadata accessor for EndOfRecipeSectionDescriptor);
  v112 = v111[2];
  if (v112)
  {
    v154 = MEMORY[0x1E69E7CC0];
    sub_1D7A5BEFC(0, v112, 0);
    v113 = v154;
    v114 = *(v136 + 80);
    v150 = v111;
    v115 = v111 + ((v114 + 32) & ~v114);
    v116 = *(v136 + 72);
    v117 = v132;
    do
    {
      sub_1D7BE5130(v115, v16, type metadata accessor for EndOfRecipeModel);
      sub_1D7BE5130(v16, v151, type metadata accessor for EndOfRecipeModel);
      sub_1D7BE50E8(&qword_1EE0CA100, type metadata accessor for EndOfRecipeModel);
      sub_1D7D29EDC();
      sub_1D7BE51BC(v16, type metadata accessor for EndOfRecipeModel);
      v154 = v113;
      v118 = v117;
      v120 = *(v113 + 16);
      v119 = *(v113 + 24);
      if (v120 >= v119 >> 1)
      {
        sub_1D7A5BEFC(v119 > 1, v120 + 1, 1);
        v113 = v154;
      }

      *(v113 + 16) = v120 + 1;
      (*(v18 + 32))(v113 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v120, v118, v152);
      v115 += v116;
      --v112;
      v117 = v118;
    }

    while (v112);
  }

  else
  {

    v113 = MEMORY[0x1E69E7CC0];
  }

  v128 = sub_1D7BE50E8(&qword_1EC9E2018, sub_1D7A060E8);
  v129 = sub_1D7BE50E8(&qword_1EC9E2020, sub_1D7A060E8);
  MEMORY[0x1DA706A80](v113, v152, v128, v129);
  sub_1D7BE50E8(&unk_1EE0C4B98, type metadata accessor for EndOfRecipeSectionDescriptor);
  sub_1D7BE50E8(&qword_1EE0CA100, type metadata accessor for EndOfRecipeModel);
  sub_1D7D2A42C();
  sub_1D7BE51BC(v140, type metadata accessor for EndOfRecipeSectionDescriptor);
  v126 = type metadata accessor for RelatedRecipesEndOfRecipeFeedGroup;
  v127 = v141;
  return sub_1D7BE51BC(v127, v126);
}

uint64_t sub_1D7BE50E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D7BE5130(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7BE51BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D7BE5254(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D7BE5290(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D7BE52DC(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t AsyncArticle.init(identifier:routeURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a1;
  a4[3] = a2;
  a4[4] = a1;
  a4[5] = a2;
  v6 = type metadata accessor for AsyncArticle();
  sub_1D7BE5DCC(a3, a4 + *(v6 + 28), sub_1D7998DF0);
  return swift_bridgeObjectRetain_n();
}

uint64_t AsyncArticle.init(article:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_1D7998DF0();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v23 = a1[6];
  v24 = v8;
  v11 = a1[7];

  v12 = [v10 articleID];
  v13 = sub_1D7D3034C();
  v15 = v14;

  v16 = [v10 routeURL];
  if (v16)
  {
    v17 = v16;
    sub_1D7D281EC();

    v18 = sub_1D7D2824C();
    (*(*(v18 - 8) + 56))(v7, 0, 1, v18);
  }

  else
  {
    v19 = sub_1D7D2824C();
    (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
  }

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  v20 = v23;
  *a2 = v24;
  a2[1] = v9;
  a2[2] = v13;
  a2[3] = v15;
  a2[4] = v20;
  a2[5] = v11;
  v21 = type metadata accessor for AsyncArticle();
  return sub_1D7BE5DCC(v7, a2 + *(v21 + 28), sub_1D7998DF0);
}

uint64_t sub_1D7BE556C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AsyncArticle();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7998DF0();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ArticleViewerBlueprint.ArticleItem.Model(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7BE5D64(a1, v15, type metadata accessor for ArticleViewerBlueprint.ArticleItem.Model);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D7BE5E34(a1, type metadata accessor for ArticleViewerBlueprint.ArticleItem);
    sub_1D7BE5DCC(v15, v7, type metadata accessor for AsyncArticle);
    v16 = *v7;
    v35 = *(v7 + 1);
    v36 = v16;
    v17 = *(v7 + 4);
    v18 = *(v7 + 5);
    result = sub_1D7BE5DCC(&v7[*(v4 + 28)], a2 + *(v4 + 28), sub_1D7998DF0);
    v20 = v35;
    *a2 = v36;
    *(a2 + 16) = v20;
    *(a2 + 32) = v17;
    *(a2 + 40) = v18;
  }

  else
  {
    v21 = v15[1];
    *&v36 = *v15;
    v22 = v15[2];
    v24 = v15[5];
    v23 = v15[6];
    v34[0] = v15[3];
    v34[1] = v24;
    *&v35 = v23;
    v25 = v15[7];

    v26 = [v22 articleID];
    v27 = sub_1D7D3034C();
    v29 = v28;

    v30 = [v22 routeURL];
    if (v30)
    {
      v31 = v30;
      sub_1D7D281EC();

      v32 = 0;
    }

    else
    {
      v32 = 1;
    }

    sub_1D7BE5E34(a1, type metadata accessor for ArticleViewerBlueprint.ArticleItem);
    v33 = sub_1D7D2824C();
    (*(*(v33 - 8) + 56))(v11, v32, 1, v33);

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    *a2 = v36;
    *(a2 + 8) = v21;
    *(a2 + 16) = v27;
    *(a2 + 24) = v29;
    *(a2 + 32) = v35;
    *(a2 + 40) = v25;
    return sub_1D7BE5DCC(v11, a2 + *(v4 + 28), sub_1D7998DF0);
  }

  return result;
}

uint64_t AsyncArticle.init(identifier:articleIdentifier:feedItemIdentifier:routeURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  v10 = type metadata accessor for AsyncArticle();
  return sub_1D7BE5DCC(a7, a8 + *(v10 + 28), sub_1D7998DF0);
}

uint64_t AsyncArticle.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AsyncArticle.articleIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AsyncArticle.feedItemIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

BOOL _s12NewsArticles12AsyncArticleV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1D7D2824C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7998DF0();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A6031C();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1D7D3197C() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_1D7D3197C() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_1D7D3197C() & 1) == 0)
  {
    return 0;
  }

  v18 = *(type metadata accessor for AsyncArticle() + 28);
  v19 = *(v14 + 48);
  sub_1D7BE5D64(a1 + v18, v17, sub_1D7998DF0);
  sub_1D7BE5D64(a2 + v18, &v17[v19], sub_1D7998DF0);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) == 1)
  {
    if (v20(&v17[v19], 1, v4) == 1)
    {
      sub_1D7BE5E34(v17, sub_1D7998DF0);
      return 1;
    }

    goto LABEL_15;
  }

  sub_1D7BE5D64(v17, v12, sub_1D7998DF0);
  if (v20(&v17[v19], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_15:
    sub_1D7BE5E34(v17, sub_1D7A6031C);
    return 0;
  }

  (*(v5 + 32))(v8, &v17[v19], v4);
  sub_1D7BE5E94();
  v22 = sub_1D7D3030C();
  v23 = *(v5 + 8);
  v23(v8, v4);
  v23(v12, v4);
  sub_1D7BE5E34(v17, sub_1D7998DF0);
  return (v22 & 1) != 0;
}

uint64_t sub_1D7BE5D64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7BE5DCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7BE5E34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D7BE5E94()
{
  result = qword_1EC9E2E50;
  if (!qword_1EC9E2E50)
  {
    sub_1D7D2824C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E2E50);
  }

  return result;
}

id sub_1D7BE5EEC(uint64_t a1, id a2)
{
  [a2 adjustedContentInset];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v31 = v10;
  [a2 contentOffset];
  v12 = v11;
  [a2 contentSize];
  v30 = v13;
  [a2 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  UIEdgeInsetsInsetRect(v14, v16, v18, v20, v5, v7, v9, v31);
  v23 = v22 * 0.95;
  v24 = v12 - v22 * 0.95;
  v25 = v12 + v23;
  if (a1 != 4)
  {
    v25 = v12;
  }

  if (a1 == 3)
  {
    v26 = v24;
  }

  else
  {
    v26 = v25;
  }

  v33.origin.x = v15;
  v33.origin.y = v17;
  v33.size.width = v19;
  v33.size.height = v21;
  v27 = v5 + v9 + v30 - CGRectGetHeight(v33);
  if (v26 < -v5)
  {
    v28 = -v5;
  }

  else
  {
    v28 = v26;
  }

  if (v27 < v28)
  {
    v28 = v27;
  }

  return [a2 setContentOffset:1 animated:{0.0, v28}];
}

uint64_t sub_1D7BE604C()
{
  v0 = sub_1D7D2EFAC();
  __swift_allocate_value_buffer(v0, qword_1EC9E6700);
  __swift_project_value_buffer(v0, qword_1EC9E6700);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_1D7D2811C();

  v4 = [v2 bundleForClass_];
  sub_1D7D2811C();

  sub_1D7BE6D34();
  v5 = sub_1D7D2EF9C();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D7D3B4D0;
  (*(v6 + 104))(v8 + v7, *MEMORY[0x1E69B60F0], v5);
  return sub_1D7D2EF6C();
}

uint64_t sub_1D7BE62C8()
{
  v0 = sub_1D7D2EFAC();
  __swift_allocate_value_buffer(v0, qword_1EC9E6718);
  __swift_project_value_buffer(v0, qword_1EC9E6718);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_1D7D2811C();

  v4 = [v2 bundleForClass_];
  sub_1D7D2811C();

  return sub_1D7D2EF6C();
}

uint64_t sub_1D7BE6498()
{
  v0 = sub_1D7D2EFAC();
  __swift_allocate_value_buffer(v0, qword_1EC9E6730);
  __swift_project_value_buffer(v0, qword_1EC9E6730);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_1D7D2811C();

  v4 = [v2 bundleForClass_];
  sub_1D7D2811C();

  sub_1D7BE6D34();
  v5 = sub_1D7D2EF9C();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D7D3B4D0;
  (*(v6 + 104))(v8 + v7, *MEMORY[0x1E69B60F0], v5);
  return sub_1D7D2EF6C();
}

uint64_t sub_1D7BE6710()
{
  v0 = sub_1D7D2EFAC();
  __swift_allocate_value_buffer(v0, qword_1EC9E6748);
  __swift_project_value_buffer(v0, qword_1EC9E6748);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_1D7D2811C();

  v4 = [v2 bundleForClass_];
  sub_1D7D2811C();

  return sub_1D7D2EF6C();
}

uint64_t sub_1D7BE68E0()
{
  v0 = sub_1D7D2EFAC();
  __swift_allocate_value_buffer(v0, qword_1EC9E6760);
  __swift_project_value_buffer(v0, qword_1EC9E6760);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_1D7D2811C();

  v4 = [v2 bundleForClass_];
  sub_1D7D2811C();

  return sub_1D7D2EF6C();
}

uint64_t sub_1D7BE6AB4()
{
  v0 = sub_1D7D2EFAC();
  __swift_allocate_value_buffer(v0, qword_1EC9E6778);
  __swift_project_value_buffer(v0, qword_1EC9E6778);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_1D7D2811C();

  v4 = [v2 bundleForClass_];
  sub_1D7D2811C();

  return sub_1D7D2EF6C();
}

void sub_1D7BE6D34()
{
  if (!qword_1EE0BAE20)
  {
    sub_1D7D2EF9C();
    v0 = sub_1D7D3191C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BAE20);
    }
  }
}

uint64_t ArticleGroupData.init(context:feedKind:backfillHeadlines:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = *(a1 + 16);
  v10 = sub_1D7D2EB7C();
  v11 = *(v10 - 8);
  result = (*(v11 + 88))(a2, v10);
  if (result == *MEMORY[0x1E69B5F60] || result == *MEMORY[0x1E69B5F20] || result == *MEMORY[0x1E69B5EA0])
  {
    v9 |= 0x8000000000000000;
  }

  else
  {

    result = (*(v11 + 8))(a2, v10);
    a3 = 0;
  }

  *a4 = v7;
  a4[1] = v8;
  a4[2] = v9;
  a4[3] = a3;
  return result;
}

uint64_t ArticleGroupDataContext.init(formatGroup:eoaOverride:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1D7D2F05C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v21 - v13;
  v15 = *a2;
  _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV13formatContent0aG006FormatJ0V8ResolvedVvg_0();
  v16 = sub_1D7D2F03C();
  v17 = *(v7 + 8);
  v17(v14, v6);
  _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV13formatContent0aG006FormatJ0V8ResolvedVvg_0();
  v18 = sub_1D7D2F02C();
  v19 = sub_1D7D2DE2C();
  (*(*(v19 - 8) + 8))(a1, v19);
  result = (v17)(v10, v6);
  *a3 = v16;
  *(a3 + 8) = v18;
  *(a3 + 16) = v15;
  return result;
}

uint64_t ArticleGroupData.headlines.getter()
{
  v1 = *v0;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
  return v1;
}

uint64_t ArticleGroupData.eoaOverride.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();

  *a1 = v3 & 1;
  return result;
}

uint64_t ArticleGroupData.tag.getter()
{
  v1 = *(v0 + 8);
  swift_unknownObjectRetain();

  return v1;
}

uint64_t ArticleGroupDataContext.init(headlines:tag:eoaOverride:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  return result;
}

uint64_t sub_1D7BE7134(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 1;
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

uint64_t sub_1D7BE7184(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * -a2;
      *(result + 24) = 0;
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D7BE71F0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1D7BE72BC()
{
  swift_getObjectType();
  sub_1D7D294BC();
  v0 = sub_1D7D28C3C();
  sub_1D7D293CC();
}

uint64_t sub_1D7BE736C(void *a1)
{
  sub_1D799CC84(a1 + *((*MEMORY[0x1E69E7D40] & *a1) + 0x68), v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 16))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t sub_1D7BE7410(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x1E69E7D40] & *a2;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (swift_unknownObjectWeakLoadStrong())
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = v4;
      v10 = v5;
      v11 = v6;
      v12 = v2;
      v7 = off_1F52A2968;
      type metadata accessor for TableOfContentsViewController();
      v7();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v9 = v4;
  v10 = v5;
  v11 = v6;
  v9 = (*(*(v3 + 88) + 40))(&v9, *(v3 + 80));
  sub_1D7A09AF8();
  sub_1D7BE8110(&qword_1EC9E6818, sub_1D7A09AF8);
  sub_1D7D2A70C();
}

uint64_t sub_1D7BE7658(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v40 = a2;
  v41 = a1;
  v4 = sub_1D7D2986C();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v37 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D799912C(0, &qword_1EE0CB770, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v35 = v34 - v9;
  sub_1D799912C(0, &unk_1EE0CBE90, MEMORY[0x1E69B6B80]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = v34 - v12;
  v14 = sub_1D7D2973C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D7D298AC();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1D7D2963C();
  v24 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v25);
  v27 = v34 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1D7BE7B44(v3);
  v34[1] = v29;
  v34[2] = v28;
  (*(v20 + 104))(v23, *MEMORY[0x1E69B6BC8], v19);
  (*(v15 + 104))(v18, *MEMORY[0x1E69B6B20], v14);
  v30 = sub_1D7D2980C();
  (*(*(v30 - 8) + 56))(v13, 1, 1, v30);
  v31 = sub_1D7D2824C();
  (*(*(v31 - 8) + 56))(v35, 1, 1, v31);
  (*(v38 + 104))(v37, *MEMORY[0x1E69B6B98], v39);

  sub_1D7D2961C();
  if (swift_unknownObjectWeakLoadStrong())
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v32 = off_1F52A2960;
      type metadata accessor for TableOfContentsViewController();
      v32();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  return (*(v24 + 8))(v27, v36);
}

id sub_1D7BE7B44(void *a1)
{
  result = [*(a1 + *((*MEMORY[0x1E69E7D40] & *a1) + 0x80)) configuration];
  if (result)
  {
    v2 = result;
    if ([result respondsToSelector_])
    {
      v3 = [v2 paidBundleConfig];
      swift_unknownObjectRelease();
      v4 = [v3 offeredBundlePurchaseIDs];
      if (v4)
      {
        v5 = v4;
        v6 = sub_1D7D3063C();

        if (*(v6 + 16))
        {
          v7 = *(v6 + 32);

          return v7;
        }
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7BE7C68()
{
  v1 = v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x88);
  result = swift_beginAccess();
  if (*(v1 + 24))
  {
    sub_1D799CC84(v1, v5);
    v3 = v6;
    v4 = v7;
    __swift_project_boxed_opaque_existential_1(v5, v6);
    (*(v4 + 32))(v3, v4);
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return result;
}

uint64_t sub_1D7BE7D1C()
{
  v1 = v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x88);
  result = swift_beginAccess();
  if (*(v1 + 24))
  {
    sub_1D799CC84(v1, v5);
    v3 = v6;
    v4 = v7;
    __swift_project_boxed_opaque_existential_1(v5, v6);
    (*(v4 + 40))(v3, v4);
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return result;
}

uint64_t sub_1D7BE7DD0()
{
  (*(*((*MEMORY[0x1E69E7D40] & *v0) + 0x58) + 48))(*((*MEMORY[0x1E69E7D40] & *v0) + 0x50));
  sub_1D7A09AF8();
  sub_1D7BE8110(&qword_1EC9E6818, sub_1D7A09AF8);
  sub_1D7D2A70C();
}

uint64_t sub_1D7BE7F2C(char *a1)
{
  v2 = *a1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40];
  sub_1D79C92AC(&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x60)]);
  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v3 & *a1) + 0x68)]);

  (*(*(*((v4 & v2) + 0x50) - 8) + 8))(&a1[*((*v3 & *a1) + 0x78)]);
  swift_unknownObjectRelease();
  v5 = &a1[*((*v3 & *a1) + 0x88)];

  return sub_1D7BE81C0(v5);
}

uint64_t sub_1D7BE8090(uint64_t a1, uint64_t a2)
{
  sub_1D7BE8158(a1, a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1D7BE8110(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D7BE81C0(uint64_t a1)
{
  sub_1D799912C(0, &qword_1EC9E6820, sub_1D7BE8238);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D7BE8238()
{
  result = qword_1EC9E6828;
  if (!qword_1EC9E6828)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC9E6828);
  }

  return result;
}

uint64_t sub_1D7BE8358(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t RecipeCoordinatorContainer.resolve(for:)()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 6);
  sub_1D7A66CD8(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 6);
  return v3;
}

uint64_t RecipeCoordinatorContainer.__allocating_init()()
{
  v0 = swift_allocObject();
  sub_1D79A6B14();
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  *(v1 + 16) = MEMORY[0x1E69E7CC8];
  *(v0 + 16) = v1;
  return v0;
}

void RecipeCoordinatorContainer.set(coordinator:for:)()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_1D7BE8628((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_1D7BE8528(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a1;
  sub_1D7B960E4(a4, a2, a3, isUniquelyReferenced_nonNull_native);

  *a1 = v10;
  return result;
}

uint64_t sub_1D7BE85BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*(*a1 + 16))
  {
    sub_1D7A18FFC(a2, a3);
    if (v5)
    {
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    result = 0;
  }

  *a4 = result;
  return result;
}

uint64_t RecipeCoordinatorContainer.remove(for:)()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_1D7BE8768((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));
  return v3;
}

unint64_t sub_1D7BE86B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = sub_1D7A18FFC(a2, a3);
  if (v7)
  {
    v8 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *a1;
    v12 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D7B98154();
      v10 = v12;
    }

    v11 = *(*(v10 + 56) + 8 * v8);
    result = sub_1D7B9A108(v8, v10);
    *a1 = v10;
  }

  else
  {
    v11 = 0;
  }

  *a4 = v11;
  return result;
}

uint64_t RecipeCoordinatorContainer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t WeakRecipeCoordinator.coordinator.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*WeakRecipeCoordinator.coordinator.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1D7B905DC;
}

uint64_t WeakRecipeCoordinator.__allocating_init(coordinator:tracker:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  *(v5 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v5 + 32) = a3;
  return v5;
}

uint64_t WeakRecipeCoordinator.init(coordinator:tracker:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  *(v3 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v3 + 32) = a3;
  return v3;
}

uint64_t WeakRecipeCoordinator.tracker.getter()
{
  v1 = v0;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    v4 = (*(v2 + 88))(ObjectType, v2);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1EE0BB3B8 != -1)
    {
      swift_once();
    }

    v5 = sub_1D7D29AFC();
    __swift_project_value_buffer(v5, qword_1EE0DE460);
    v6 = sub_1D7D29ADC();
    v7 = sub_1D7D30C4C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1D7987000, v6, v7, "Failed to resolve coordinator tracker", v8, 2u);
      MEMORY[0x1DA7102E0](v8, -1, -1);
    }

    v4 = *(v1 + 32);
  }

  return v4;
}

uint64_t WeakRecipeCoordinator.configure(using:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(a1, ObjectType, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t WeakRecipeCoordinator.startSession(viewSession:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 24))(a1, ObjectType, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall WeakRecipeCoordinator.endViewSession()()
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v1 + 16))(ObjectType, v1);
    swift_unknownObjectRelease();
  }
}

uint64_t WeakRecipeCoordinator.cancelSession(viewSession:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 48))(a1, ObjectType, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t WeakRecipeCoordinator.resumeSession(viewSession:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 32))(a1, ObjectType, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t WeakRecipeCoordinator.resignSession(viewSession:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 40))(a1, ObjectType, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t WeakRecipeCoordinator.pushViewData(for:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 56))(a1, ObjectType, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t WeakRecipeCoordinator.addToGroceryListStarted(for:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 64))(a1, ObjectType, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t WeakRecipeCoordinator.addToGroceryListFinished(for:placement:result:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 72))(a1, a2, a3, ObjectType, v8);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t WeakRecipeCoordinator.openGroceryList(for:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 80))(a1, ObjectType, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t WeakRecipeCoordinator.deinit()
{
  sub_1D79C92AC(v0 + 16);

  return v0;
}

uint64_t WeakRecipeCoordinator.__deallocating_deinit()
{
  sub_1D79C92AC(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1D7BE90F4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(a1, ObjectType, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D7BE9178()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v2 + 16))(ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D7BE91E8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 24))(a1, ObjectType, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D7BE926C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 32))(a1, ObjectType, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D7BE92F0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 40))(a1, ObjectType, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D7BE9374(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 48))(a1, ObjectType, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D7BE93F8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 56))(a1, ObjectType, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D7BE947C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 64))(a1, ObjectType, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D7BE9500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 72))(a1, a2, a3, ObjectType, v8);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D7BE959C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 80))(a1, ObjectType, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_1D7BE967C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v36 = sub_1D7D2F3FC();
  v5 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D7D2F44C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ReportConcernDetailLayoutModel();
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A2B30C();
  sub_1D7D2ABBC();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D7A9B7DC();
    v18 = a4;
    v19 = sub_1D7D30AFC();
    v20 = [v19 textLabel];
    if (v20)
    {
      v21 = v20;
      v22 = sub_1D7D3031C();

      [v21 setText_];
    }

    else
    {
    }

    v28 = [v19 textLabel];
    if (v28)
    {
      v29 = v28;
      [v28 setNumberOfLines_];
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      if (sub_1D7A13A00(v18))
      {
        [v19 setAccessoryType_];
        swift_unknownObjectRelease();
LABEL_13:
        sub_1D7BA4110();
        v31 = *(v30 + 48);
        [v19 setSelectionStyle_];
        v32 = sub_1D7D2B15C();
        (*(*(v32 - 8) + 8))(&v17[v31], v32);
        return v19;
      }

      swift_unknownObjectRelease();
    }

    [v19 setAccessoryType_];
    goto LABEL_13;
  }

  swift_unknownObjectRelease();
  sub_1D7A2AED8();
  v24 = *(v23 + 64);
  v25 = *(v10 + 32);
  v26 = &v17[*(v23 + 48)];
  v35 = v9;
  v25(v13, v26, v9);
  (*(v5 + 32))(v8, &v17[v24], v36);
  sub_1D7A9B894();
  v19 = sub_1D7D30AFC();
  swift_getObjectType();
  v27 = sub_1D7D2A00C();
  sub_1D7D2FB0C();

  [v19 setSelectionStyle_];
  (*(v5 + 8))(v8, v36);
  (*(v10 + 8))(v13, v35);
  return v19;
}

void *sub_1D7BE9B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  result = sub_1D7BE967C(a1, a2, *a3, a4);
  *a5 = result;
  return result;
}

uint64_t sub_1D7BE9B68(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1D7BE9C94()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_viewDidLoad);
  v1 = *&v0[OBJC_IVAR____TtC12NewsArticles20ArticleFooterPaywall_paywallViewController];
  [v0 addChildViewController_];
  result = [v0 view];
  if (result)
  {
    v3 = result;
    result = [v1 view];
    if (result)
    {
      v4 = result;
      [v3 addSubview_];

      return [v1 didMoveToParentViewController_];
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1D7BE9E78(id a1)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_1D7AA16D0();
    v3 = sub_1D7D3062C();
  }

  [a1 setLeftBarButtonItems_];

  v4 = *(v1 + 24);
  if (v4)
  {
    sub_1D7AA16D0();
    v4 = sub_1D7D3062C();
  }

  [a1 setRightBarButtonItems_];

  [a1 setAdditionalOverflowItems_];
  v5 = *(v1 + 40);

  return [a1 setHidesBackButton_];
}

uint64_t sub_1D7BE9F44()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D7BE9FB0(void *a1)
{
  v3 = [a1 leftBarButtonItems];
  if (v3)
  {
    v4 = v3;
    sub_1D7AA16D0();
    v5 = sub_1D7D3063C();
  }

  else
  {
    v5 = 0;
  }

  *(v1 + 16) = v5;
  v6 = [a1 rightBarButtonItems];
  if (v6)
  {
    v7 = v6;
    sub_1D7AA16D0();
    v8 = sub_1D7D3063C();
  }

  else
  {
    v8 = 0;
  }

  *(v1 + 24) = v8;
  *(v1 + 32) = [a1 additionalOverflowItems];
  *(v1 + 40) = [a1 hidesBackButton];
  sub_1D7AA16D0();
  v9 = sub_1D7D3062C();
  [a1 setLeftBarButtonItems_];

  v10 = sub_1D7D3062C();
  [a1 setRightBarButtonItems_];

  [a1 setAdditionalOverflowItems_];
  [a1 setHidesBackButton_];
  return v1;
}

uint64_t sub_1D7BEA13C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656C7069746C756DLL;
  }

  else
  {
    v3 = 0x656C676E6973;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x656C7069746C756DLL;
  }

  else
  {
    v5 = 0x656C676E6973;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
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
    v8 = sub_1D7D3197C();
  }

  return v8 & 1;
}

uint64_t sub_1D7BEA1E0()
{
  sub_1D7D31A8C();
  sub_1D7D303FC();

  return sub_1D7D31ABC();
}

uint64_t sub_1D7BEA260()
{
  sub_1D7D303FC();
}

uint64_t sub_1D7BEA2CC()
{
  sub_1D7D31A8C();
  sub_1D7D303FC();

  return sub_1D7D31ABC();
}

uint64_t sub_1D7BEA348@<X0>(char *a1@<X8>)
{
  v2 = sub_1D7D316EC();

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

void sub_1D7BEA3A8(uint64_t *a1@<X8>)
{
  v2 = 0x656C676E6973;
  if (*v1)
  {
    v2 = 0x656C7069746C756DLL;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D7BEA3E4()
{
  if (*v0)
  {
    return 0x656C7069746C756DLL;
  }

  else
  {
    return 0x656C676E6973;
  }
}

uint64_t sub_1D7BEA41C@<X0>(char *a1@<X8>)
{
  v2 = sub_1D7D316EC();

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

uint64_t sub_1D7BEA480(uint64_t a1)
{
  v2 = sub_1D7BEAAE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7BEA4BC(uint64_t a1)
{
  v2 = sub_1D7BEAAE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D7BEA4F8(void *a1, uint64_t a2, char a3)
{
  sub_1D7BEAA8C();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7BEAAE8();
  sub_1D7D31B1C();
  v15 = a2;
  if (a3)
  {
    v14 = 1;
    sub_1D7BEA9E0();
    sub_1D7BEAB84(&qword_1EC9E6870, sub_1D7BEA9E0, sub_1D7BEAB3C);
  }

  else
  {
    v14 = 0;
    sub_1D7BEA8F4();
    sub_1D7BEAB3C();
  }

  sub_1D7D318BC();
  return (*(v8 + 8))(v11, v7);
}

void *sub_1D7BEA6BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D7BEA710(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

void *sub_1D7BEA710(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D31AEC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    sub_1D7BEA8F4();
    sub_1D7BEA944();
    sub_1D7D3199C();
    v3 = v5;
    __swift_destroy_boxed_opaque_existential_1(v6);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

void sub_1D7BEA8F4()
{
  if (!qword_1EE0BF358)
  {
    v0 = sub_1D7D307BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BF358);
    }
  }
}

unint64_t sub_1D7BEA98C()
{
  result = qword_1EE0C5CA0;
  if (!qword_1EE0C5CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5CA0);
  }

  return result;
}

void sub_1D7BEA9E0()
{
  if (!qword_1EC9E6858)
  {
    sub_1D7BEA8F4();
    v0 = sub_1D7D307BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E6858);
    }
  }
}

unint64_t sub_1D7BEAA38()
{
  result = qword_1EC9E6868;
  if (!qword_1EC9E6868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E6868);
  }

  return result;
}

void sub_1D7BEAA8C()
{
  if (!qword_1EE0BEAD0)
  {
    sub_1D7BEAAE8();
    v0 = sub_1D7D318DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BEAD0);
    }
  }
}

unint64_t sub_1D7BEAAE8()
{
  result = qword_1EE0C5CF8;
  if (!qword_1EE0C5CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5CF8);
  }

  return result;
}

uint64_t sub_1D7BEAB84(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D7BEAC18()
{
  result = qword_1EC9E6878;
  if (!qword_1EC9E6878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E6878);
  }

  return result;
}

unint64_t sub_1D7BEAC70()
{
  result = qword_1EE0C5CE8;
  if (!qword_1EE0C5CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5CE8);
  }

  return result;
}

unint64_t sub_1D7BEACC8()
{
  result = qword_1EE0C5CF0;
  if (!qword_1EE0C5CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5CF0);
  }

  return result;
}

id ReportConcernCommand.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void sub_1D7BEAE1C(char a1, void *a2, id a3, uint64_t a4)
{
  if ((a1 & 1) == 0)
  {
    if (a2)
    {
      swift_getErrorValue();
      v10 = a2;
      if (sub_1D7AC5C2C(v13, v14))
      {
        if (!a3)
        {
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        [a3 command:a4 didFinishWithStatus:1];
      }

      else
      {
        swift_getErrorValue();
        if (sub_1D7AC5B34(v11, v12))
        {
          if (!a3)
          {
LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

          [a3 command:a4 didFinishWithStatus:2];
        }

        else
        {
          if (!a3)
          {
LABEL_23:
            __break(1u);
            return;
          }

          [a3 command:a4 didFinishWithStatus:3];
        }
      }

      return;
    }

    if (a3)
    {
      v4 = a3;
      v5 = a4;
      v6 = 3;
      goto LABEL_10;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!a3)
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v5 = a4;
  v6 = 0;
LABEL_10:

  [v4 command:v5 didFinishWithStatus:v6];
}

void sub_1D7BEAF80(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

id ReportConcernCommand.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ReportConcernCommand.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id _s12NewsArticles20ReportConcernCommandC7execute4with8delegate16qualityOfServiceySo14FCCloudContextCSg_So17FCCommandDelegate_pSgSo09NSQualityjK0VtF_0(void *a1, uint64_t a2)
{
  v46 = a2;
  v48 = a1;
  v45 = sub_1D7D2DB4C();
  v44 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45, v3);
  v43 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D7D27F8C();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v7 = sub_1D7D2839C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *&v2[OBJC_IVAR____TtC12NewsArticles20ReportConcernCommand_concern + 8];
  *&v54 = *&v2[OBJC_IVAR____TtC12NewsArticles20ReportConcernCommand_concern];
  v13 = *&v2[OBJC_IVAR____TtC12NewsArticles20ReportConcernCommand_concern + 24];
  *&v53 = *&v2[OBJC_IVAR____TtC12NewsArticles20ReportConcernCommand_concern + 16];
  v14 = *&v2[OBJC_IVAR____TtC12NewsArticles20ReportConcernCommand_selectedSubConcern + 8];
  v52 = *&v2[OBJC_IVAR____TtC12NewsArticles20ReportConcernCommand_selectedSubConcern];
  v15 = *&v2[OBJC_IVAR____TtC12NewsArticles20ReportConcernCommand_selectedSubConcern + 24];
  v51 = *&v2[OBJC_IVAR____TtC12NewsArticles20ReportConcernCommand_selectedSubConcern + 16];
  v47 = v2;
  v16 = *&v2[OBJC_IVAR____TtC12NewsArticles20ReportConcernCommand_headline];
  *(&v54 + 1) = v12;

  *(&v53 + 1) = v13;

  v55 = v14;

  v17 = [v16 articleID];
  v50 = sub_1D7D3034C();
  v49 = v18;

  v19 = [objc_opt_self() sharedAccount];
  v20 = [v19 endpointConnectionClientID];

  if (v20)
  {
    v21 = sub_1D7D3034C();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0xE000000000000000;
  }

  sub_1D7D2838C();
  v24 = sub_1D7D2837C();
  v26 = v25;
  (*(v8 + 8))(v11, v7);
  sub_1D7D27FCC();
  swift_allocObject();
  sub_1D7D27FBC();
  sub_1D7D27F7C();
  sub_1D7D27F9C();
  sub_1D7BEB8C0();
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1D7D3B4D0;
  v28 = v55;
  *(v27 + 32) = v52;
  *(v27 + 40) = v28;
  *(v27 + 48) = v51;
  *(v27 + 56) = v15;
  v63[0] = v54;
  v63[1] = v53;
  *&v64 = v27;
  *(&v64 + 1) = v50;
  *&v65 = v49;
  *(&v65 + 1) = v21;
  *&v66 = v23;
  *(&v66 + 1) = v21;
  *&v67 = v23;
  *(&v67 + 1) = v24;
  v68 = v26;
  v60 = v66;
  v61 = v67;
  v62 = v26;
  aBlock = v54;
  v57 = v53;
  v59 = v65;
  v58 = v64;
  sub_1D7BEB910();
  swift_bridgeObjectRetain_n();

  v30 = sub_1D7D27FAC();
  result = v48;
  if (v48)
  {
    v32 = v29;
    result = [v48 endpointConnection];
    if (result)
    {
      v33 = result;

      sub_1D7A208D4(v63);
      v34 = sub_1D7D2826C();
      sub_1D7AE6C50();
      v35 = v44;
      v36 = v43;
      v37 = v45;
      (*(v44 + 104))(v43, *MEMORY[0x1E69E7F80], v45);
      v38 = sub_1D7D30E4C();
      (*(v35 + 8))(v36, v37);
      v39 = swift_allocObject();
      v40 = v47;
      *(v39 + 16) = v46;
      *(v39 + 24) = v40;
      *&v58 = sub_1D7BEB964;
      *(&v58 + 1) = v39;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v57 = sub_1D7BEAF80;
      *(&v57 + 1) = &block_descriptor_29;
      v41 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();
      v42 = v40;

      [v33 reportConcernV2:v34 callbackQueue:v38 completion:v41];
      _Block_release(v41);

      sub_1D79EA2E4(v30, v32);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D7BEB8C0()
{
  if (!qword_1EC9E68A0)
  {
    v0 = sub_1D7D3191C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E68A0);
    }
  }
}

unint64_t sub_1D7BEB910()
{
  result = qword_1EC9E68A8;
  if (!qword_1EC9E68A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E68A8);
  }

  return result;
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D7BEB984(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D7D2EC6C();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v25[2] = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D7D2E53C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7BEC258();
  v27 = *(v12 - 8);
  v28 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v26 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v25 - v17;
  sub_1D799CC84(v2 + 80, v31);
  (*(v8 + 16))(v11, a1, v7);
  swift_getObjectType();
  sub_1D7D2E5AC();
  sub_1D799CC84(v2 + 120, v30);
  sub_1D799CC84(v2 + 160, v29);
  v19 = *(v2 + 200);
  v25[1] = type metadata accessor for EndOfArticleModel();
  sub_1D7BEC3A0();
  sub_1D7BEC3F4();
  sub_1D7AE9A64();
  sub_1D7A2B104();
  sub_1D7BEC634(&unk_1EE0C9830, type metadata accessor for EndOfArticleModel);
  sub_1D7BEC634(&unk_1EE0C9820, type metadata accessor for EndOfArticleModel);
  sub_1D7BEC634(&unk_1EE0C97F0, type metadata accessor for EndOfArticleModel);
  v20 = v19;
  sub_1D7D2EA7C();
  v21 = v27;
  v22 = v28;
  (*(v27 + 16))(v26, v18, v28);
  sub_1D7BEC448();
  swift_allocObject();
  sub_1D7BEC634(&unk_1EE0BF818, sub_1D7BEC258);
  v23 = sub_1D7D2A69C();
  (*(v21 + 8))(v18, v22);
  return v23;
}

uint64_t sub_1D7BEBD28(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D7D2EC6C();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v24[1] = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D7D2D5DC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7BEC500();
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v15);
  v25 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v21 = v24 - v20;
  (*(v8 + 16))(v11, a1, v7, v19);
  swift_getObjectType();
  sub_1D7D2E5AC();
  sub_1D799CC84(v2 + 160, v26);
  v24[0] = type metadata accessor for EndOfArticleModel();
  sub_1D7BEC3A0();
  sub_1D7BEC3F4();
  sub_1D7A2B104();
  sub_1D7BEC634(&unk_1EE0C9830, type metadata accessor for EndOfArticleModel);
  sub_1D7BEC634(&unk_1EE0C9820, type metadata accessor for EndOfArticleModel);
  sub_1D7BEC634(&unk_1EE0C97F0, type metadata accessor for EndOfArticleModel);
  sub_1D7D2EA9C();
  (*(v14 + 16))(v25, v21, v13);
  sub_1D7BEC448();
  swift_allocObject();
  sub_1D7BEC634(&qword_1EC9E6928, sub_1D7BEC500);
  v22 = sub_1D7D2A69C();
  (*(v14 + 8))(v21, v13);
  return v22;
}

uint64_t sub_1D7BEC094()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 80);
  __swift_destroy_boxed_opaque_existential_1(v0 + 120);
  __swift_destroy_boxed_opaque_existential_1(v0 + 160);

  return swift_deallocClassInstance();
}

uint64_t sub_1D7BEC168(uint64_t a1)
{
  v3 = *(*v1 + 16);
  sub_1D799CC84(*v1 + 24, &v9);
  v8[0] = a1;
  v8[1] = v3;
  sub_1D7BEC67C(v8, &v7);
  sub_1D7BEC448();
  swift_allocObject();
  sub_1D7BEC6D8();
  v4 = v3;

  v5 = sub_1D7D2A69C();
  sub_1D7BEC72C(v8);
  return v5;
}

void sub_1D7BEC258()
{
  if (!qword_1EE0BF810)
  {
    type metadata accessor for EndOfArticleModel();
    sub_1D7BEC3A0();
    sub_1D7BEC3F4();
    sub_1D7AE9A64();
    sub_1D7A2B104();
    sub_1D7BEC634(&unk_1EE0C9830, type metadata accessor for EndOfArticleModel);
    sub_1D7BEC634(&unk_1EE0C9820, type metadata accessor for EndOfArticleModel);
    sub_1D7BEC634(&unk_1EE0C97F0, type metadata accessor for EndOfArticleModel);
    v0 = sub_1D7D2EA8C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BF810);
    }
  }
}

unint64_t sub_1D7BEC3A0()
{
  result = qword_1EE0C4850;
  if (!qword_1EE0C4850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C4850);
  }

  return result;
}

unint64_t sub_1D7BEC3F4()
{
  result = qword_1EE0C4848;
  if (!qword_1EE0C4848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C4848);
  }

  return result;
}

void sub_1D7BEC448()
{
  if (!qword_1EE0C0028)
  {
    type metadata accessor for EndOfArticleModel();
    sub_1D7A2B104();
    sub_1D7BEC634(&unk_1EE0C97F0, type metadata accessor for EndOfArticleModel);
    v0 = sub_1D7D2A6AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0C0028);
    }
  }
}

void sub_1D7BEC500()
{
  if (!qword_1EC9E6920)
  {
    type metadata accessor for EndOfArticleModel();
    sub_1D7BEC3A0();
    sub_1D7BEC3F4();
    sub_1D7A2B104();
    sub_1D7BEC634(&unk_1EE0C9830, type metadata accessor for EndOfArticleModel);
    sub_1D7BEC634(&unk_1EE0C9820, type metadata accessor for EndOfArticleModel);
    sub_1D7BEC634(&unk_1EE0C97F0, type metadata accessor for EndOfArticleModel);
    v0 = sub_1D7D2EAAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E6920);
    }
  }
}

uint64_t sub_1D7BEC634(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D7BEC6D8()
{
  result = qword_1EE0C1950;
  if (!qword_1EE0C1950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C1950);
  }

  return result;
}

uint64_t type metadata accessor for EndOfRecipeFeedGapLocation()
{
  result = qword_1EC9E6930;
  if (!qword_1EC9E6930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7BEC7CC()
{
  sub_1D7BEC840();
  if (v0 <= 0x3F)
  {
    sub_1D7B2DC64();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D7BEC840()
{
  if (!qword_1EC9E6940)
  {
    sub_1D79A9404();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9E6940);
    }
  }
}

uint64_t sub_1D7BEC8B0(uint64_t a1, uint64_t a2)
{
  sub_1D7B2DC64();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v24 - v12;
  sub_1D7BECB00();
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 + 56);
  sub_1D7BECB64(a1, v17);
  sub_1D7BECB64(a2, &v17[v19]);
  type metadata accessor for EndOfRecipeFeedGapLocation();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D7BECBC8(v17);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1D7BECBC8(&v17[v19]);
      v21 = 1;
      return v21 & 1;
    }

LABEL_7:
    sub_1D7BECBC8(&v17[v19]);
    v21 = 0;
    return v21 & 1;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v6 + 8))(v17, v5);
    goto LABEL_7;
  }

  v20 = *(v6 + 32);
  v20(v13, v17, v5);
  v20(v9, &v17[v19], v5);
  type metadata accessor for EndOfRecipeFeedServiceConfig();
  sub_1D79E7160();
  v21 = sub_1D7D2ED5C();
  v22 = *(v6 + 8);
  v22(v9, v5);
  v22(v13, v5);
  return v21 & 1;
}

void sub_1D7BECB00()
{
  if (!qword_1EC9E6948)
  {
    type metadata accessor for EndOfRecipeFeedGapLocation();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9E6948);
    }
  }
}

uint64_t sub_1D7BECB64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EndOfRecipeFeedGapLocation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7BECBC8(uint64_t a1)
{
  v2 = type metadata accessor for EndOfRecipeFeedGapLocation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D7BECC24(uint64_t a1)
{
  v3 = sub_1D7D2DB0C();
  v4 = v1[5];
  v5 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v4);
  if (v3)
  {
    v9 = [objc_opt_self() clearColor];
  }

  else
  {
    v6 = v1[5];
    v7 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v6);
    v8 = (*(v7 + 16))(v6, v7);
    v9 = sub_1D7D3116C();
  }

  (*(v5 + 48))(a1, v9, v4, v5);
}

uint64_t sub_1D7BECD4C@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for EndOfRecipeFeedServiceConfig();
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D2E5FC();
  sub_1D799CC84(&v6[*(v3 + 44)], v13);
  sub_1D7BECE88(v6);
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  v7 = sub_1D7D2F94C();
  __swift_destroy_boxed_opaque_existential_1(v13);
  if (v7)
  {
    v8 = MEMORY[0x1E69B5CB0];
  }

  else
  {
    *a1 = 0xD00000000000001BLL;
    a1[1] = 0x80000001D7D78010;
    v8 = MEMORY[0x1E69B5CB8];
  }

  v9 = *v8;
  v10 = sub_1D7D2E94C();
  return (*(*(v10 - 8) + 104))(a1, v9, v10);
}

uint64_t sub_1D7BECE88(uint64_t a1)
{
  v2 = type metadata accessor for EndOfRecipeFeedServiceConfig();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7BECEF8()
{
  swift_getObjectType();
  v1 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
  *&v0[OBJC_IVAR____TtC12NewsArticles25RecipeArticleChromeButton_blurEffect] = v1;
  v33.receiver = v0;
  v33.super_class = type metadata accessor for RecipeArticleChromeButton();
  v2 = objc_msgSendSuper2(&v33, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v3 = OBJC_IVAR____TtC12NewsArticles25RecipeArticleChromeButton_blurEffect;
  v4 = *&v2[OBJC_IVAR____TtC12NewsArticles25RecipeArticleChromeButton_blurEffect];
  v5 = v2;
  [v4 setUserInteractionEnabled_];
  [*&v2[v3] setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = *&v2[v3];
  v7 = v5;
  [v7 insertSubview:v6 atIndex:0];
  v8 = objc_opt_self();
  sub_1D79EB1FC();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D7D4E7B0;
  v10 = [*&v2[v3] topAnchor];
  v11 = [v7 topAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v9 + 32) = v12;
  v13 = [*&v2[v3] leadingAnchor];
  v14 = [v7 leadingAnchor];

  v15 = [v13 constraintEqualToAnchor_];
  *(v9 + 40) = v15;
  v16 = [*&v2[v3] trailingAnchor];
  v17 = [v7 trailingAnchor];

  v18 = [v16 constraintEqualToAnchor_];
  *(v9 + 48) = v18;
  v19 = [*&v2[v3] bottomAnchor];
  v20 = [v7 bottomAnchor];

  v21 = [v19 constraintEqualToAnchor_];
  *(v9 + 56) = v21;
  sub_1D79F3BA0();
  v22 = sub_1D7D3062C();

  [v8 activateConstraints_];

  sub_1D79F3C54();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1D7D3B4D0;
  v24 = sub_1D7D2C9EC();
  v25 = MEMORY[0x1E69DC0F8];
  *(v23 + 32) = v24;
  *(v23 + 40) = v25;
  sub_1D7D310EC();
  swift_unknownObjectRelease();

  v26 = *&v2[v3];
  v27 = objc_opt_self();
  v28 = v26;
  v29 = [v27 currentTraitCollection];
  v30 = [v29 userInterfaceStyle];
  if (v30 >= 3)
  {
    type metadata accessor for UIUserInterfaceStyle(0);
    result = sub_1D7D319FC();
    __break(1u);
  }

  else
  {
    v31 = [objc_opt_self() effectWithStyle_];

    [v28 setEffect_];
    return v7;
  }

  return result;
}

id sub_1D7BED3A0()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for RecipeArticleChromeButton();
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  [v0 bounds];
  v1 = CGRectGetHeight(v7) * 0.5;
  v2 = [v0 layer];
  [v2 setCornerRadius_];

  v3 = OBJC_IVAR____TtC12NewsArticles25RecipeArticleChromeButton_blurEffect;
  v4 = [*&v0[OBJC_IVAR____TtC12NewsArticles25RecipeArticleChromeButton_blurEffect] layer];
  [v4 setCornerRadius_];

  return [*&v0[v3] setClipsToBounds_];
}

id sub_1D7BED4FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecipeArticleChromeButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D7BED568(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC12NewsArticles25RecipeArticleChromeButton_blurEffect];
  v3 = [a1 traitCollection];
  v4 = [v3 userInterfaceStyle];
  if (v4 >= 3)
  {
    type metadata accessor for UIUserInterfaceStyle(0);
    sub_1D7D319FC();
    __break(1u);
  }

  else
  {
    v5 = [objc_opt_self() effectWithStyle_];

    [v2 setEffect_];
  }
}

uint64_t sub_1D7BED690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v35 = a3;
  v34 = a2;
  sub_1D7BEDFA8(0, &qword_1EC9E6958, type metadata accessor for RecipeTopicsEndOfRecipeFeedGroupKnobs);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v34 - v8;
  sub_1D7BEDFA8(0, &qword_1EC9E6960, type metadata accessor for RelatedRecipesEndOfRecipeFeedGroupKnobs);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v34 - v12;
  sub_1D7BEDFA8(0, &qword_1EC9E6968, type metadata accessor for RelatedArticlesEndOfRecipeFeedGroupKnobs);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v34 - v16;
  sub_1D7BEDFA8(0, &qword_1EC9E6970, type metadata accessor for EndOfRecipeFeedGroupKnobs);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v34 - v20;
  v22 = type metadata accessor for EndOfRecipeFeedGroupKnobs();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v34 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7BEDFFC(a1, v21);
  v27 = *(v23 + 48);
  if (v27(v21, 1, v22) == 1)
  {
    v28 = type metadata accessor for RelatedArticlesEndOfRecipeFeedGroupKnobs();
    (*(*(v28 - 8) + 56))(v17, 1, 1, v28);
    v29 = type metadata accessor for RelatedRecipesEndOfRecipeFeedGroupKnobs();
    (*(*(v29 - 8) + 56))(v13, 1, 1, v29);
    v30 = type metadata accessor for RecipeTopicsEndOfRecipeFeedGroupKnobs();
    (*(*(v30 - 8) + 56))(v9, 1, 1, v30);
    sub_1D7CDC3B0(v17, v13, v9, v26);
    sub_1D7BEE07C(a1);
    if (v27(v21, 1, v22) != 1)
    {
      sub_1D7BEE07C(v21);
    }
  }

  else
  {
    sub_1D7BEE07C(a1);
    sub_1D7BEE0F4(v21, v26);
  }

  v31 = type metadata accessor for EndOfRecipeFeedKnobsConfig();
  result = sub_1D7BEE0F4(v26, a4 + *(v31 + 20));
  v33 = v34 & ~(v34 >> 63);
  if (v35)
  {
    v33 = 0x7FFFFFFFFFFFFFFFLL;
  }

  *a4 = v33;
  return result;
}

uint64_t sub_1D7BEDA4C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v16 = a2;
  sub_1D7BEDFA8(0, &qword_1EC9E6970, type metadata accessor for EndOfRecipeFeedGroupKnobs);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v15 - v6;
  sub_1D7BEE1AC(0, &qword_1EC9E6978, MEMORY[0x1E69E6F48]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v15 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7BEE158();
  sub_1D7D31AFC();
  if (!v2)
  {
    type metadata accessor for EndOfRecipeFeedGroupKnobs();
    v20 = 0;
    sub_1D7BEE210(&qword_1EC9E6988);
    sub_1D7D3173C();
    v19 = 1;
    sub_1D7D3173C();
    sub_1D7BED690(v7, v17, v18, v16);
    (*(v10 + 8))(v13, v9);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D7BEDC7C(void *a1)
{
  sub_1D7BEE1AC(0, &qword_1EC9E6990, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7BEE158();
  sub_1D7D31B1C();
  type metadata accessor for EndOfRecipeFeedKnobsConfig();
  v10[15] = 0;
  type metadata accessor for EndOfRecipeFeedGroupKnobs();
  sub_1D7BEE210(&qword_1EC9E6998);
  sub_1D7D318BC();
  if (!v1)
  {
    v10[14] = 1;
    sub_1D7D318AC();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D7BEDE28@<X0>(char *a1@<X8>)
{
  v2 = sub_1D7D316EC();

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

uint64_t sub_1D7BEDE88@<X0>(char *a1@<X8>)
{
  v2 = sub_1D7D316EC();

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

uint64_t sub_1D7BEDEEC(uint64_t a1)
{
  v2 = sub_1D7BEE158();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7BEDF28(uint64_t a1)
{
  v2 = sub_1D7BEE158();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D7BEDFA8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D7D3130C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D7BEDFFC(uint64_t a1, uint64_t a2)
{
  sub_1D7BEDFA8(0, &qword_1EC9E6970, type metadata accessor for EndOfRecipeFeedGroupKnobs);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7BEE07C(uint64_t a1)
{
  sub_1D7BEDFA8(0, &qword_1EC9E6970, type metadata accessor for EndOfRecipeFeedGroupKnobs);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7BEE0F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EndOfRecipeFeedGroupKnobs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D7BEE158()
{
  result = qword_1EC9E6980;
  if (!qword_1EC9E6980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E6980);
  }

  return result;
}

void sub_1D7BEE1AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7BEE158();
    v7 = a3(a1, &type metadata for EndOfRecipeFeedKnobsConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D7BEE210(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EndOfRecipeFeedGroupKnobs();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D7BEE254(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EndOfRecipeFeedGroupKnobs();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D7BEE2CC()
{
  result = qword_1EC9E69A0;
  if (!qword_1EC9E69A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E69A0);
  }

  return result;
}

unint64_t sub_1D7BEE324()
{
  result = qword_1EC9E69A8;
  if (!qword_1EC9E69A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E69A8);
  }

  return result;
}

unint64_t sub_1D7BEE37C()
{
  result = qword_1EC9E69B0;
  if (!qword_1EC9E69B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E69B0);
  }

  return result;
}

uint64_t sub_1D7BEE3D0@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Router();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_1F52B5B60;
  *a1 = result;
  return result;
}

void sub_1D7BEE418(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7992EFC(0, &qword_1EE0BF0D0);
  v3 = sub_1D7D28D1C();
  if (v3)
  {
    v4 = v3;
    v5 = type metadata accessor for ReadingListObserver();
    v6 = objc_allocWithZone(v5);
    v7 = OBJC_IVAR____TtC12NewsArticles19ReadingListObserver_onSaveObservers;
    *&v6[v7] = sub_1D7A50D64(MEMORY[0x1E69E7CC0]);
    *&v6[OBJC_IVAR____TtC12NewsArticles19ReadingListObserver_readingList] = v4;
    v10.receiver = v6;
    v10.super_class = v5;
    v8 = v4;
    v9 = objc_msgSendSuper2(&v10, sel_init);
    [v8 addObserver_];

    a2[3] = v5;
    a2[4] = &off_1F529E3E0;
    *a2 = v9;
  }

  else
  {
    __break(1u);
  }
}

BOOL sub_1D7BEE524(void *a1)
{
  v2 = v1;
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  if (sub_1D7D2F99C())
  {
    return 1;
  }

  v4 = &off_1E84EC000;
  v5 = [a1 sourceChannel];
  if (!v5)
  {
LABEL_10:
    if ([a1 respondsToSelector_])
    {
      [a1 role];
      if ((sub_1D7D30BAC() & 1) == 0)
      {
        return 0;
      }
    }

    v10 = *(v2 + 56);
    v11 = [a1 isPaid];
    if ([a1 respondsToSelector_])
    {
      v12 = [a1 isBundlePaid];
    }

    else
    {
      v12 = 0;
    }

    v13 = [a1 v4[335]];
    if (v13)
    {
      v14 = [v13 identifier];
      swift_unknownObjectRelease();
      v15 = sub_1D7D3034C();
      v17 = v16;

      if (v11)
      {
LABEL_17:
        v18 = [v10 purchaseProvider];
        if (!v17)
        {
          swift_unknownObjectRelease();
          if (!v12)
          {
            goto LABEL_49;
          }

LABEL_26:
          if (!v17)
          {
            return 0;
          }

          v22 = [objc_msgSend(v10 bundleSubscriptionProvider)];
          swift_unknownObjectRelease();
          if (objc_getAssociatedObject(v22, v22 + 1))
          {
            sub_1D7D3138C();
            swift_unknownObjectRelease();
          }

          else
          {
            v48 = 0u;
            v49 = 0u;
          }

          v50 = v48;
          v51 = v49;
          if (*(&v49 + 1))
          {
            sub_1D79A4870();
            if (swift_dynamicCast())
            {
              v29 = v47;
              v30 = [v47 integerValue];
              if (v30 == -1)
              {

                goto LABEL_68;
              }

              v31 = v30;
LABEL_40:
              if (objc_getAssociatedObject(v22, ~v31))
              {
                sub_1D7D3138C();
                swift_unknownObjectRelease();
              }

              else
              {
                v48 = 0u;
                v49 = 0u;
              }

              v50 = v48;
              v51 = v49;
              if (*(&v49 + 1))
              {
                sub_1D79A4870();
                if (swift_dynamicCast())
                {
                  v32 = v47;
                  v33 = [v32 integerValue];

                  if ((v33 ^ v31))
                  {
LABEL_68:
                    v39 = [objc_msgSend(v10 bundleSubscriptionProvider)];
                    swift_unknownObjectRelease();
                    v40 = [v39 bundleChannelIDs];

                    v41 = sub_1D7D3031C();
                    LOBYTE(v39) = [v40 containsObject_];

                    return (v39 & 1) != 0;
                  }

LABEL_49:

                  return 0;
                }
              }

              else
              {
                sub_1D79F0014(&v50);
              }

              if (v31)
              {
                goto LABEL_68;
              }

              goto LABEL_49;
            }
          }

          else
          {
            sub_1D79F0014(&v50);
          }

          v29 = 0;
          v31 = 0;
          goto LABEL_40;
        }

        v19 = [v18 purchasedTagIDs];
        v20 = sub_1D7D309AC();

        LOBYTE(v19) = sub_1D7D053C8(v15, v17, v20);

        swift_unknownObjectRelease();
        if ((v19 & 1) == 0)
        {
          if (!v12)
          {
            goto LABEL_49;
          }

          goto LABEL_26;
        }

LABEL_23:

        return 1;
      }
    }

    else
    {
      v15 = 0;
      v17 = 0;
      if (v11)
      {
        goto LABEL_17;
      }
    }

    if (v12)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  v6 = v5;
  if (([a1 respondsToSelector_] & 1) == 0 || objc_msgSend(a1, sel_role) != 2)
  {
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v46 = *(v2 + 56);
  v7 = [v46 purchaseProvider];
  if ([swift_unknownObjectRetain() tagType] == 3)
  {
    v8 = [v6 asSection];
    if (!v8 || (v9 = [v8 parentID], swift_unknownObjectRelease(), !v9))
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_31;
    }
  }

  else
  {
    v9 = [v6 identifier];
  }

  v23 = sub_1D7D3034C();
  v25 = v24;

  v26 = [v7 purchasedTagIDs];
  v27 = sub_1D7D309AC();

  LOBYTE(v26) = sub_1D7D053C8(v23, v25, v27);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  if (v26)
  {
LABEL_74:
    swift_unknownObjectRelease();
    v4 = &off_1E84EC000;
    goto LABEL_10;
  }

LABEL_31:
  v28 = [objc_msgSend(v46 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v28, v28 + 1))
  {
    sub_1D7D3138C();
    swift_unknownObjectRelease();
  }

  else
  {
    v48 = 0u;
    v49 = 0u;
  }

  v50 = v48;
  v51 = v49;
  if (!*(&v49 + 1))
  {
    sub_1D79F0014(&v50);
    goto LABEL_56;
  }

  sub_1D79A4870();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_56:
    v34 = 0;
    v36 = 0;
    goto LABEL_57;
  }

  v34 = v47;
  v35 = [v47 integerValue];
  if (v35 == -1)
  {

    goto LABEL_71;
  }

  v36 = v35;
LABEL_57:
  if (objc_getAssociatedObject(v28, ~v36))
  {
    sub_1D7D3138C();
    swift_unknownObjectRelease();
  }

  else
  {
    v48 = 0u;
    v49 = 0u;
  }

  v50 = v48;
  v51 = v49;
  if (*(&v49 + 1))
  {
    sub_1D79A4870();
    if (swift_dynamicCast())
    {
      v37 = v47;
      v38 = [v37 integerValue];

      if (((v38 ^ v36) & 1) == 0)
      {
        goto LABEL_75;
      }

      goto LABEL_71;
    }
  }

  else
  {
    sub_1D79F0014(&v50);
  }

  if (v36)
  {
LABEL_71:
    v42 = [objc_msgSend(v46 bundleSubscriptionProvider)];
    swift_unknownObjectRelease();
    v43 = [v6 identifier];
    if (!v43)
    {
      sub_1D7D3034C();
      v43 = sub_1D7D3031C();
    }

    v44 = [v42 containsTagID_];

    if ((v44 & 1) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

LABEL_75:
  v45 = [v6 isSandbox];
  swift_unknownObjectRelease();
  return v45;
}

uint64_t sub_1D7BEEDC8(uint64_t a1)
{
  v3 = type metadata accessor for RecipeModuleContext();
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = (&v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for RecipeRouteModel();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = (&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D79D7DA4(a1, v40);
  v37 = v40[4];
  v38 = v40[5];
  v39 = v41;
  v33 = v40[0];
  v34 = v40[1];
  v36 = v40[3];
  v35 = v40[2];
  sub_1D79AC454();
  v12 = v10 + *(v11 + 48);
  v13 = v36;
  v32 = v34;
  *v10 = v34;
  v14 = *(&v33 + 1);
  v15 = v33;
  if (v13)
  {
    v31 = v33;
    v16 = v35;
    if (v35)
    {
      *v12 = *(&v34 + 1);
      *(v12 + 8) = v16;
      *(v12 + 3) = v13;
      v12[32] = 1;
      v17 = *(type metadata accessor for RecipeRouteContext() + 20);
      v18 = type metadata accessor for ArticleRouteModel();
      (*(*(v18 - 8) + 56))(&v12[v17], 1, 1, v18);
    }

    else
    {
      *v12 = *(&v35 + 1);
      *(v12 + 1) = v13;
      v21 = type metadata accessor for RecipeRouteContext();
      *(v12 + 2) = 0;
      *(v12 + 3) = 0;
      v12[32] = 0;
      v22 = *(v21 + 20);
      v23 = type metadata accessor for ArticleRouteModel();
      (*(*(v23 - 8) + 56))(&v12[v22], 1, 1, v23);
    }

    v15 = v31;
  }

  else
  {
    *v12 = 0u;
    *(v12 + 1) = 0u;
    v12[32] = 2;
    v19 = *(type metadata accessor for RecipeRouteContext() + 20);
    v20 = type metadata accessor for ArticleRouteModel();
    (*(*(v20 - 8) + 56))(&v12[v19], 1, 1, v20);
  }

  swift_storeEnumTagMultiPayload();
  sub_1D7BEF150(v10, v6 + *(v3 + 20));
  v24 = *(&v36 + 1);
  *v6 = v15;
  v6[1] = v14;
  *(v6 + *(v3 + 24)) = v24;
  v25 = v1[5];
  v26 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v25);
  v27 = *(v26 + 16);

  v28 = v32;

  v29 = v27(v6, v25, v26);
  sub_1D7BEF1B4(v6, type metadata accessor for RecipeModuleContext);
  sub_1D7BEF1B4(v10, type metadata accessor for RecipeRouteModel);
  sub_1D7A4A624(&v33);
  return v29;
}

uint64_t sub_1D7BEF150(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeRouteModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7BEF1B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t RecipeRouteModel.feedItemIdentifier.getter()
{
  v1 = type metadata accessor for RecipeRouteContext();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v43 - v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v43 - v11;
  v13 = type metadata accessor for RecipeRouteModel();
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = (&v43 - v19);
  sub_1D7BEFEB8(v0, &v43 - v19, type metadata accessor for RecipeRouteModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      sub_1D7AD8D2C();
      v39 = v38;
      v40 = swift_projectBox();
      v41 = sub_1D7BEFEB8(v40 + *(v39 + 48), v16, type metadata accessor for RecipeRouteModel);
      v23 = RecipeRouteModel.feedItemIdentifier.getter(v41);
      sub_1D7BEF61C(v16, type metadata accessor for RecipeRouteModel);

      return v23;
    }

    sub_1D79AC548();
    sub_1D7ABB264(v20 + *(v28 + 64), v4);
    v23 = *v4;
    v29 = *(v4 + 1);
    v30 = *(v4 + 2);
    v31 = *(v4 + 3);
    v32 = v4[32];
    sub_1D7A822E4(*v4, v29, v30, v31, v4[32]);
    sub_1D7BEF61C(v4, type metadata accessor for RecipeRouteContext);
    if (v32)
    {
      if (v32 == 1)
      {

        sub_1D7A82348(v23, v29, v30, v31, 1);
        return v30;
      }

      return 0;
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {

      sub_1D79AC454();
      sub_1D7ABB264(v20 + *(v33 + 48), v12);
      v23 = *v12;
      v34 = *(v12 + 1);
      v35 = *(v12 + 2);
      v36 = *(v12 + 3);
      v37 = v12[32];
      sub_1D7A822E4(*v12, v34, v35, v36, v12[32]);
      sub_1D7BEF61C(v12, type metadata accessor for RecipeRouteContext);
      if (!v37)
      {
        return v23;
      }

      if (v37 == 1)
      {

        sub_1D7A82348(v23, v34, v35, v36, 1);
        return v35;
      }

      return 0;
    }

    sub_1D79AC1E8();
    sub_1D7ABB264(v20 + *(v22 + 48), v8);
    v23 = *v8;
    v24 = *(v8 + 1);
    v25 = *(v8 + 2);
    v26 = *(v8 + 3);
    v27 = v8[32];
    sub_1D7A822E4(*v8, v24, v25, v26, v8[32]);
    sub_1D7BEF61C(v8, type metadata accessor for RecipeRouteContext);
    if (v27)
    {
      if (v27 == 1)
      {

        sub_1D7A82348(v23, v24, v25, v26, 1);
        return v25;
      }

      return 0;
    }
  }

  return v23;
}

uint64_t type metadata accessor for RecipeRouteModel()
{
  result = qword_1EE0C9F90;
  if (!qword_1EE0C9F90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7BEF61C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t RecipeRouteModel.identifier.getter()
{
  v1 = type metadata accessor for RecipeRouteModel();
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = (&v23 - v7);
  sub_1D7BEFEB8(v0, &v23 - v7, type metadata accessor for RecipeRouteModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      sub_1D7AD8D2C();
      v19 = v18;
      v20 = swift_projectBox();
      v21 = sub_1D7BEFEB8(v20 + *(v19 + 48), v4, type metadata accessor for RecipeRouteModel);
      v10 = RecipeRouteModel.identifier.getter(v21);
      sub_1D7BEF61C(v4, type metadata accessor for RecipeRouteModel);

      return v10;
    }

    v10 = *v8;

    sub_1D79AC548();
    v12 = *(v13 + 64);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v14 = *v8;
      sub_1D79AC454();
      v16 = *(v15 + 48);
      v17 = [v14 identifier];
      v10 = sub_1D7D3034C();

      sub_1D7BEF61C(v8 + v16, type metadata accessor for RecipeRouteContext);
      return v10;
    }

    v10 = *v8;
    sub_1D79AC1E8();
    v12 = *(v11 + 48);
  }

  sub_1D7BEF61C(v8 + v12, type metadata accessor for RecipeRouteContext);
  return v10;
}

__n128 sub_1D7BEF87C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for RecipeRouteContext();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v54 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v54 - v18;
  v20 = type metadata accessor for RecipeRouteModel();
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = (&v54 - v26);
  sub_1D7BEFEB8(v4, &v54 - v26, type metadata accessor for RecipeRouteModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      sub_1D7AD8D2C();
      v48 = v47;
      v49 = swift_projectBox();
      sub_1D7BEFEB8(v49 + *(v48 + 48), v23, type metadata accessor for RecipeRouteModel);
      sub_1D7BEF87C(a1, a2);
      sub_1D7BEF61C(v23, type metadata accessor for RecipeRouteModel);

      return result;
    }

    v35 = *v27;
    v36 = v27[1];
    v37 = v27[2];
    sub_1D79AC548();
    sub_1D7ABB264(v27 + *(v38 + 64), v11);
    v39 = v11[32];
    if (v11[32])
    {
      v40 = 0uLL;
      v54 = 0u;
      if (v39 != 1)
      {
LABEL_19:
        v55 = v40;

        sub_1D7BEF61C(v11, type metadata accessor for RecipeRouteContext);
        v52 = v37 & 0xFFFFFFFFFFFFFF8 | 0x8000000000000000;
        *a3 = a1;
        *(a3 + 8) = a2;
        *(a3 + 16) = v35;
        *(a3 + 24) = v36;
        result.n128_u64[0] = v54;
        v53 = v55;
        *(a3 + 32) = v54;
        *(a3 + 48) = v53;
        goto LABEL_20;
      }

      v41 = *v11;
      v54 = *(v11 + 1);
      v55 = v41;
    }

    else
    {
      v54 = *v11;
      v55 = 0u;
    }

    v40 = v55;
    goto LABEL_19;
  }

  if (!EnumCaseMultiPayload)
  {
    v29 = *v27;
    v30 = v27[1];
    sub_1D79AC1E8();
    sub_1D7ABB264(v27 + *(v31 + 48), v15);
    v32 = v15[32];
    if (v15[32])
    {
      v33 = 0uLL;
      v54 = 0u;
      if (v32 != 1)
      {
LABEL_16:
        v55 = v33;

        sub_1D7BEF61C(v15, type metadata accessor for RecipeRouteContext);
        *a3 = a1;
        *(a3 + 8) = a2;
        *(a3 + 16) = v29;
        *(a3 + 24) = v30;
        result.n128_u64[0] = v54;
        v51 = v55;
        *(a3 + 32) = v54;
        *(a3 + 48) = v51;
        v52 = 0x4000000000000000;
LABEL_20:
        *(a3 + 64) = v52;
        return result;
      }

      v34 = *v15;
      v54 = *(v15 + 1);
      v55 = v34;
    }

    else
    {
      v54 = *v15;
      v55 = 0u;
    }

    v33 = v55;
    goto LABEL_16;
  }

  v42 = *v27;
  sub_1D79AC454();
  sub_1D7ABB264(v27 + *(v43 + 48), v19);
  v44 = v19[32];
  if (!v19[32])
  {
    v54 = *v19;
    v55 = 0u;
    goto LABEL_22;
  }

  v45 = 0uLL;
  v54 = 0u;
  if (v44 == 1)
  {
    v46 = *v19;
    v54 = *(v19 + 1);
    v55 = v46;

LABEL_22:

    v45 = v55;
  }

  v55 = v45;

  sub_1D7BEF61C(v19, type metadata accessor for RecipeRouteContext);
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = v42;
  result = v55;
  *(a3 + 40) = v54;
  *(a3 + 24) = result;
  *(a3 + 64) = 0;
  return result;
}

uint64_t RecipeRouteModel.fallbackArticleRoute.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RecipeRouteContext();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RecipeRouteModel();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (&v25 - v14);
  sub_1D7BEFEB8(v2, &v25 - v14, type metadata accessor for RecipeRouteModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {

      sub_1D79AC454();
    }

    else
    {

      sub_1D79AC1E8();
    }

    v19 = *(v17 + 48);
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload == 2)
  {

    sub_1D79AC548();
    v19 = *(v18 + 64);
LABEL_8:
    sub_1D7ABB264(v15 + v19, v7);
    sub_1D7BEFEB8(&v7[*(v4 + 20)], a1, sub_1D79AC334);
    return sub_1D7BEF61C(v7, type metadata accessor for RecipeRouteContext);
  }

  sub_1D7AD8D2C();
  v22 = v21;
  v23 = swift_projectBox();
  v24 = sub_1D7BEFEB8(v23 + *(v22 + 48), v11, type metadata accessor for RecipeRouteModel);
  RecipeRouteModel.fallbackArticleRoute.getter(v24);
  sub_1D7BEF61C(v11, type metadata accessor for RecipeRouteModel);
}

uint64_t sub_1D7BEFEB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t RecipeRouteModel.context.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RecipeRouteModel();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v21 - v10);
  sub_1D7BEFEB8(v2, &v21 - v10, type metadata accessor for RecipeRouteModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {

      sub_1D79AC454();
    }

    else
    {

      sub_1D79AC1E8();
    }

    v15 = *(v13 + 48);
    return sub_1D7ABB264(v11 + v15, a1);
  }

  if (EnumCaseMultiPayload == 2)
  {

    sub_1D79AC548();
    v15 = *(v14 + 64);
    return sub_1D7ABB264(v11 + v15, a1);
  }

  sub_1D7AD8D2C();
  v18 = v17;
  v19 = swift_projectBox();
  v20 = sub_1D7BEFEB8(v19 + *(v18 + 48), v7, type metadata accessor for RecipeRouteModel);
  RecipeRouteModel.context.getter(v20);
  sub_1D7BEF61C(v7, type metadata accessor for RecipeRouteModel);
}

id sub_1D7BF00C8()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_unknownObjectRetain();
    result = [v1 view];
    if (result)
    {
      v2 = result;
      v3 = [result safeAreaLayoutGuide];

      [v3 layoutFrame];
      sub_1D7D127E0();

      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1D7BF0338()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v49 = sub_1D7D2C82C();
  v3 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49, v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D7D2C83C();
  v41 = *(v7 - 8);
  v8 = v41;
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = (&v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50.receiver = v1;
  v50.super_class = ObjectType;
  objc_msgSendSuper2(&v50, sel_viewDidLoad, v10);
  v48 = v1;
  v45 = *&v1[OBJC_IVAR____TtC12NewsArticles35InterstitialAdPreviewViewController_coverViewManager];
  sub_1D7D2A57C();
  v13 = sub_1D7D2B7FC();
  v14 = sub_1D7D2B7DC();
  v15 = MEMORY[0x1E69D8270];
  v12[3] = v13;
  v12[4] = v15;
  *v12 = v14;
  v16 = *MEMORY[0x1E69D8818];
  v47 = *(v8 + 104);
  v47(v12, v16, v7);
  v46 = *MEMORY[0x1E69D8848];
  v44 = *(v3 + 104);
  v17 = v49;
  v44(v6);
  sub_1D7D2A56C();
  v18 = *(v3 + 8);
  v42 = v3 + 8;
  v43 = v18;
  v18(v6, v17);
  v19 = *(v41 + 8);
  v19(v12, v7);
  v20 = sub_1D7D2B7DC();
  v12[3] = v13;
  v12[4] = MEMORY[0x1E69D8270];
  *v12 = v20;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v40 = objc_opt_self();
  v41 = ObjCClassFromMetadata;
  v22 = [v40 bundleForClass_];
  v23 = sub_1D7D2811C();
  v25 = v24;

  v12[5] = v23;
  v12[6] = v25;
  v47(v12, *MEMORY[0x1E69D8820], v7);
  v26 = v49;
  (v44)(v6, v46, v49);
  sub_1D7D2A56C();
  v27 = v6;
  v28 = v48;
  v43(v27, v26);
  v19(v12, v7);
  v29 = [v28 traitCollection];
  v30 = [v28 view];
  if (v30)
  {
    v31 = v30;

    v32 = [objc_opt_self() whiteColor];
    [v31 setBackgroundColor_];

    v33 = sub_1D7D30D8C();
    v34 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v28 action:sel_done];
    [v33 setRightBarButtonItem_];

    v35 = sub_1D7D30D8C();
    v36 = [v40 bundleForClass_];
    sub_1D7D2811C();

    v37 = sub_1D7D3031C();

    [v35 setTitle_];

    v38 = [v28 navigationController];
    if (v38)
    {
      v39 = v38;
      [v38 setToolbarHidden:0 animated:0];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1D7BF09C0(uint64_t a1)
{
  v2 = v1;
  v8.receiver = v2;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_traitCollectionDidChange_, a1);
  sub_1D7D2A55C();
  v4 = [v2 traitCollection];
  v5 = [v2 view];
  if (v5)
  {
    v6 = v5;

    v7 = [objc_opt_self() whiteColor];
    [v6 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1D7BF0B34()
{
  result = qword_1EC9E69E0;
  if (!qword_1EC9E69E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E69E0);
  }

  return result;
}

void sub_1D7BF0B88(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for InterstitialAdModel();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&v2[OBJC_IVAR____TtC12NewsArticles35InterstitialAdPreviewViewController_interstitialModule + 24];
  v9 = *&v2[OBJC_IVAR____TtC12NewsArticles35InterstitialAdPreviewViewController_interstitialModule + 32];
  __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC12NewsArticles35InterstitialAdPreviewViewController_interstitialModule], v8);
  sub_1D7BF0F58(a1, v7);
  swift_storeEnumTagMultiPayload();
  v10 = (*(v9 + 8))(v7, 0, v8, v9);
  sub_1D7BF0FBC(v7);
  [v2 addChildViewController_];
  v11 = [v2 view];
  if (v11)
  {
    v12 = v11;
    v13 = [v10 view];
    if (v13)
    {
      v14 = v13;
      [v12 addSubview_];

      [v10 didMoveToParentViewController_];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1D7BF0D0C(uint64_t a1)
{
  v2 = sub_1D7D2C82C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D7D2C83C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = (v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v11 = 0xD000000000000016;
  v11[1] = 0x80000001D7D78200;
  v17 = 0;
  v18 = 0xE000000000000000;
  v16[1] = a1;
  sub_1D79AC5C4();
  sub_1D7D315DC();
  v12 = v18;
  v11[7] = v17;
  v11[8] = v12;
  v13 = sub_1D7D29CAC();
  v14 = MEMORY[0x1E69D75D0];
  v11[5] = v13;
  v11[6] = v14;
  __swift_allocate_boxed_opaque_existential_1(v11 + 2);
  sub_1D7D29C9C();
  (*(v8 + 104))(v11, *MEMORY[0x1E69D8838], v7);
  (*(v3 + 104))(v6, *MEMORY[0x1E69D8848], v2);
  sub_1D7D2A56C();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D7BF0F58(uint64_t a1, uint64_t a2)
{
  sub_1D799A5AC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7BF0FBC(uint64_t a1)
{
  v2 = type metadata accessor for InterstitialAdModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_12NewsArticles29SubscribePostPurchaseBehaviorO19SupplementaryActionO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D7BF1048(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 2)
  {
    return (v3 - 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D7BF10A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1D7BF1100(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

id sub_1D7BF1140()
{
  v1 = sub_1D7D296EC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler____lazy_storage___purchasingSpinnerViewController;
  v7 = *(v0 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler____lazy_storage___purchasingSpinnerViewController);
  if (v7)
  {
    v8 = *(v0 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler____lazy_storage___purchasingSpinnerViewController);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_purchasingSpinnerViewControllerFactory), *(v0 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_purchasingSpinnerViewControllerFactory + 24));
    (*(v2 + 104))(v5, *MEMORY[0x1E69B6AD0], v1);
    v9 = v0;
    v10 = sub_1D7D2994C();
    (*(v2 + 8))(v5, v1);
    v11 = *(v9 + v6);
    *(v9 + v6) = v10;
    v8 = v10;

    v7 = 0;
  }

  v12 = v7;
  return v8;
}

id sub_1D7BF1450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    if (qword_1EC9DFD78 != -1)
    {
      swift_once();
    }

    v13 = sub_1D7D29AFC();
    __swift_project_value_buffer(v13, qword_1ECA0BB00);
    v14 = sub_1D7D29ADC();
    v15 = sub_1D7D30C6C();
    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_18;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = "handleSubscribeAction invoked with nil inAppPurchaseIdKey";
    goto LABEL_17;
  }

  result = [*(a3 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_configurationManager) configuration];
  if (result)
  {
    v6 = result;
    if ([result respondsToSelector_])
    {
      v7 = [v6 paidBundleConfig];
      swift_unknownObjectRelease();
      v8 = [v7 offeredBundlePurchaseIDsMap];

      if (v8)
      {
        v9 = sub_1D7D3028C();

        if (*(v9 + 16))
        {
          v10 = sub_1D7A18FFC(a1, a2);
          if (v11)
          {
            v12 = *(*(v9 + 56) + 16 * v10);

            return v12;
          }
        }

        return 0;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    if (qword_1EC9DFD78 != -1)
    {
      swift_once();
    }

    v18 = sub_1D7D29AFC();
    __swift_project_value_buffer(v18, qword_1ECA0BB00);
    v14 = sub_1D7D29ADC();
    v15 = sub_1D7D30C6C();
    if (!os_log_type_enabled(v14, v15))
    {
LABEL_18:

      return 0;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = "handleSubscribeAction invoked but there is no offeredBundlePurchaseIDsMap configured";
LABEL_17:
    _os_log_impl(&dword_1D7987000, v14, v15, v17, v16, 2u);
    MEMORY[0x1DA7102E0](v16, -1, -1);
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7BF16D8(uint64_t a1, void *a2, char *a3)
{
  v6 = MEMORY[0x1E69B6C30];
  sub_1D7999180(0, &qword_1EE0C0188, MEMORY[0x1E69B6C30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v24 - v13;
  sub_1D7BFA4B0(a1, &v24 - v13, &qword_1EE0C0188, v6);
  v15 = sub_1D7D299EC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (v17(v14, 1, v15) == 1)
  {
    sub_1D7BFA530(v14, &qword_1EE0C0188, MEMORY[0x1E69B6C30], MEMORY[0x1E69E6720], sub_1D7999180);
  }

  else
  {
    v18 = sub_1D7D2997C();
    (*(v16 + 8))(v14, v15);
    if (v18)
    {
      v19 = [a2 carrierServicesBundleSubscriptionButtonConfigurationsByType];
      if (!v19)
      {
        return 0;
      }

      goto LABEL_15;
    }
  }

  sub_1D7BFA4B0(a1, v10, &qword_1EE0C0188, MEMORY[0x1E69B6C30]);
  if (v17(v10, 1, v15) == 1)
  {
    sub_1D7BFA530(v10, &qword_1EE0C0188, MEMORY[0x1E69B6C30], MEMORY[0x1E69E6720], sub_1D7999180);
  }

  else
  {
    v20 = sub_1D7D2995C();
    (*(v16 + 8))(v10, v15);
    if (v20)
    {
      v19 = [a2 bundleViaOfferSubscriptionButtonConfigurationsByType];
      if (!v19)
      {
        return 0;
      }

      goto LABEL_15;
    }
  }

  if (v17(a3, 1, v15) != 1)
  {
    v19 = [a2 servicesBundleSubscriptionButtonConfigurationsByType];
    if (!v19)
    {
      return 0;
    }

LABEL_15:
    v22 = v19;
    sub_1D7992EFC(0, &qword_1EE0BECA0);
    sub_1D7992EFC(0, &qword_1EC9E6A70);
    sub_1D7BFA728();
    v21 = sub_1D7D3028C();

    return v21;
  }

  v19 = [a2 subscriptionButtonConfigurationsByType];
  if (v19)
  {
    goto LABEL_15;
  }

  return 0;
}

uint64_t sub_1D7BF1A68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a3;
  v43 = a2;
  v4 = MEMORY[0x1E69B6C30];
  sub_1D7999180(0, &qword_1EE0C0188, MEMORY[0x1E69B6C30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v40 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v40 - v15;
  v17 = sub_1D7D299EC();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v42 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v40 - v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v40 - v27;
  sub_1D7BFA4B0(a1, v16, &qword_1EE0C0188, v4);
  v29 = *(v18 + 48);
  if (v29(v16, 1, v17) != 1)
  {
    (*(v18 + 32))(v28, v16, v17);
    if (sub_1D7D2997C())
    {
      (*(v18 + 8))(v28, v17);
      return 3;
    }

    if ((sub_1D7D2995C() & 1) == 0)
    {
      (*(v18 + 8))(v28, v17);
      return 2;
    }

    __swift_project_boxed_opaque_existential_1((v41 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_paidBundleViaOfferFeatureAvailability), *(v41 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_paidBundleViaOfferFeatureAvailability + 24));
    if ((sub_1D7D2993C() & 1) == 0)
    {
      if (qword_1EC9DFD68 != -1)
      {
        swift_once();
      }

      v36 = sub_1D7D29AFC();
      __swift_project_value_buffer(v36, qword_1ECA0BAD0);
      v37 = sub_1D7D29ADC();
      v38 = sub_1D7D30C6C();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_1D7987000, v37, v38, "handleSubscribeAction: paidBundleViaOffer subscription deeplink feature is disabled. Returning regular News+ bundle.", v39, 2u);
        MEMORY[0x1DA7102E0](v39, -1, -1);
      }

      (*(v18 + 8))(v28, v17);
      return 1;
    }

    (*(v18 + 8))(v28, v17);
    return 4;
  }

  v30 = MEMORY[0x1E69B6C30];
  sub_1D7BFA530(v16, &qword_1EE0C0188, MEMORY[0x1E69B6C30], MEMORY[0x1E69E6720], sub_1D7999180);
  v31 = v43;
  sub_1D7BFA4B0(v43, v12, &qword_1EE0C0188, v30);
  if (v29(v12, 1, v17) == 1)
  {
    sub_1D7BFA530(v12, &qword_1EE0C0188, MEMORY[0x1E69B6C30], MEMORY[0x1E69E6720], sub_1D7999180);
  }

  else
  {
    (*(v18 + 32))(v24, v12, v17);
    v33 = sub_1D7D2996C();
    (*(v18 + 8))(v24, v17);
    if ((v33 & 1) == 0)
    {
      return 5;
    }
  }

  sub_1D7BFA4B0(v31, v8, &qword_1EE0C0188, MEMORY[0x1E69B6C30]);
  if (v29(v8, 1, v17) != 1)
  {
    v34 = v42;
    (*(v18 + 32))(v42, v8, v17);
    v35 = sub_1D7D2995C();
    (*(v18 + 8))(v34, v17);
    if ((v35 & 1) == 0)
    {
      return 1;
    }

    return 4;
  }

  sub_1D7BFA530(v8, &qword_1EE0C0188, MEMORY[0x1E69B6C30], MEMORY[0x1E69E6720], sub_1D7999180);
  return 1;
}

uint64_t sub_1D7BF2168(uint64_t a1)
{
  if ([*(a1 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_networkReachability) isNetworkReachable])
  {
    v1 = sub_1D7BF1140();
    v2 = sub_1D7BF2270();

    return v2;
  }

  else
  {
    v4 = sub_1D7D296FC();
    sub_1D7BFA590(&qword_1EC9E6A60, MEMORY[0x1E69B6B08]);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x1E69B6AF8], v4);
    return swift_willThrow();
  }
}

uint64_t sub_1D7BF2270()
{
  v1 = [objc_opt_self() sharedAccount];
  v2 = [v1 activeiTunesAccount];

  if (v2 && (v3 = [v2 isAuthenticated], v3))
  {
    v5 = [*&v0[OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_bundleSubscriptionManager] cachedSubscription];
    [v5 isSubscribed];

    sub_1D7BFA678(0, &qword_1EC9E2D08, MEMORY[0x1E69E6370], MEMORY[0x1E69D6B18]);
    swift_allocObject();
    v6 = sub_1D7D2940C();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v3, v4);
    sub_1D7D294BC();
    v7 = swift_allocObject();
    *(v7 + 16) = v0;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1D7BFA5F4;
    *(v8 + 24) = v7;
    v9 = v0;
    v10 = sub_1D7D2934C();
    v6 = sub_1D7D2939C();
  }

  return v6;
}

unint64_t *sub_1D7BF247C(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v38 = a5;
  v35 = a2;
  v8 = sub_1D7D295BC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7999180(0, &qword_1EC9E6A58, MEMORY[0x1E69B6A68], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = v34 - v19;
  if (*a1)
  {
    v21 = sub_1D7D296FC();
    sub_1D7BFA590(&qword_1EC9E6A60, MEMORY[0x1E69B6B08]);
    swift_allocError();
    (*(*(v21 - 1) + 104))(v22, *MEMORY[0x1E69B6AE8], v21);
    swift_willThrow();
    return v21;
  }

  sub_1D7BF29A8(a4, (v34 - v19));
  sub_1D7BFA4B0(v20, v16, &qword_1EC9E6A58, MEMORY[0x1E69B6A68]);
  if ((*(v9 + 48))(v16, 1, v8) == 1)
  {
    v21 = &qword_1EC9E6A58;
    v23 = MEMORY[0x1E69B6A68];
    v24 = MEMORY[0x1E69E6720];
    sub_1D7BFA530(v16, &qword_1EC9E6A58, MEMORY[0x1E69B6A68], MEMORY[0x1E69E6720], sub_1D7999180);
    v25 = sub_1D7D296FC();
    sub_1D7BFA590(&qword_1EC9E6A60, MEMORY[0x1E69B6B08]);
    swift_allocError();
    (*(*(v25 - 8) + 104))(v26, *MEMORY[0x1E69B6AE0], v25);
    swift_willThrow();
    sub_1D7BFA530(v20, &qword_1EC9E6A58, v23, v24, sub_1D7999180);
    return v21;
  }

  v34[1] = a3;
  (*(v9 + 32))(v12, v16, v8);
  sub_1D799CC84(v35 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_purchaseStarter, v36);
  v27 = v37;
  v35 = __swift_project_boxed_opaque_existential_1(v36, v37);
  result = [v38 view];
  if (result)
  {
    v29 = result;
    v30 = [result window];

    if (v30)
    {
      v31 = [v30 windowScene];

      if (v31)
      {
        v32 = [v31 _sceneIdentifier];
        v38 = v27;
        v33 = v32;

        sub_1D7D3034C();
      }
    }

    v21 = sub_1D7D2975C();

    (*(v9 + 8))(v12, v8);
    sub_1D7BFA530(v20, &qword_1EC9E6A58, MEMORY[0x1E69B6A68], MEMORY[0x1E69E6720], sub_1D7999180);
    __swift_destroy_boxed_opaque_existential_1(v36);
    return v21;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7BF29A8@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  sub_1D7999180(0, &qword_1EE0C0188, MEMORY[0x1E69B6C30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v23 - v6;
  v8 = sub_1D7D2962C();
  if (v8 > 5)
  {
    result = sub_1D7D3160C();
    __break(1u);
  }

  else if (((1 << v8) & 0x34) != 0)
  {
    sub_1D7BFA4B0(a1, v7, &qword_1EE0C0188, MEMORY[0x1E69B6C30]);
    v9 = sub_1D7D299EC();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v7, 1, v9) == 1)
    {
      sub_1D7BFA530(v7, &qword_1EE0C0188, MEMORY[0x1E69B6C30], MEMORY[0x1E69E6720], sub_1D7999180);
      v11 = 0;
    }

    else
    {
      v11 = sub_1D7D299CC();
      (*(v10 + 8))(v7, v9);
    }

    *a2 = v11;
    v17 = *MEMORY[0x1E69B6A58];
    v18 = sub_1D7D295BC();
    v19 = *(v18 - 8);
    (*(v19 + 104))(a2, v17, v18);
    return (*(v19 + 56))(a2, 0, 1, v18);
  }

  else
  {
    if (((1 << v8) & 9) != 0)
    {
      if (qword_1EE0CAF08 != -1)
      {
        swift_once();
      }

      sub_1D7D30C6C();
      sub_1D7D29AAC();
      v12 = sub_1D7D295BC();
      v13 = *(*(v12 - 8) + 56);
      v14 = v12;
      v15 = a2;
      v16 = 1;
    }

    else
    {
      v21 = *MEMORY[0x1E69B6A60];
      v22 = sub_1D7D295BC();
      v24 = *(v22 - 8);
      (*(v24 + 104))(a2, v21, v22);
      v13 = *(v24 + 56);
      v15 = a2;
      v16 = 0;
      v14 = v22;
    }

    return v13(v15, v16, 1, v14);
  }

  return result;
}

void sub_1D7BF2DDC(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  a2[OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_postPurchaseRoutingInProgress] = 1;
  v13 = sub_1D7BF1140();
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = a2;
  v14[6] = a6;
  v14[7] = a7;
  v19[4] = sub_1D7BFA334;
  v19[5] = v14;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1107296256;
  v19[2] = sub_1D79FE25C;
  v19[3] = &block_descriptor_54;
  v15 = _Block_copy(v19);

  v16 = a2;
  v17 = a6;
  v18 = a7;

  [v13 dismissViewControllerAnimated:1 completion:v15];
  _Block_release(v15);
}

void sub_1D7BF2F1C(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v10 = a1(1);
  if (v10 == 1 && a3 == 3)
  {
    sub_1D7BF2FF8(a5, a6, 3);
  }

  else if (!v10)
  {
    *(swift_allocObject() + 16) = a4;
    v12 = a4;
    sub_1D7D28B6C();
  }
}

void sub_1D7BF2FF8(void *a1, void *a2, uint64_t a3)
{
  v35 = a3;
  v36 = a2;
  v37 = a1;
  v4 = MEMORY[0x1E69B6B80];
  sub_1D7999180(0, &unk_1EE0CBE90, MEMORY[0x1E69B6B80], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v35 - v7;
  v9 = sub_1D7D2980C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v13 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v35 - v16;
  v18 = &v3[OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_actionModel];
  swift_beginAccess();
  v19 = type metadata accessor for SubscribeActionModel();
  sub_1D7BFA4B0(&v18[*(v19 + 36)], v8, &unk_1EE0CBE90, v4);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    v23 = *(v10 + 32);
    v23(v17, v8, v9);
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v10 + 16))(v13, v17, v9);
    v25 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = v24;
    v23((v26 + v25), v13, v9);
    v42 = sub_1D7BFA37C;
    v43 = v26;
    aBlock = MEMORY[0x1E69E9820];
    v39 = 1107296256;
    v40 = sub_1D79FE25C;
    v41 = &block_descriptor_82;
    v27 = _Block_copy(&aBlock);

    [v37 dismissViewControllerAnimated:1 completion:v27];
    _Block_release(v27);
    (*(v10 + 8))(v17, v9);
    return;
  }

  v20 = v37;
  sub_1D7BFA530(v8, &unk_1EE0CBE90, MEMORY[0x1E69B6B80], MEMORY[0x1E69E6720], sub_1D7999180);
  if (v18[8] == 1)
  {
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = sub_1D7BFA374;
    v43 = v21;
    aBlock = MEMORY[0x1E69E9820];
    v39 = 1107296256;
    v40 = sub_1D79FE25C;
    v41 = &block_descriptor_75;
    v22 = _Block_copy(&aBlock);
LABEL_7:

    [v20 dismissViewControllerAnimated:1 completion:{v22, v35}];
LABEL_8:
    _Block_release(v22);
    return;
  }

  v28 = v36;
  v29 = [v36 postPurchaseActionType];
  if (v29 == 1)
  {
    v30 = swift_allocObject();
    *(v30 + 16) = v28;
    *(v30 + 24) = v3;
    v42 = sub_1D7BFA364;
    v43 = v30;
    aBlock = MEMORY[0x1E69E9820];
    v39 = 1107296256;
    v40 = sub_1D79FE25C;
    v41 = &block_descriptor_63;
    v22 = _Block_copy(&aBlock);
    v31 = v3;
    v32 = v28;
    goto LABEL_7;
  }

  if (v29)
  {
    sub_1D7D3160C();
    __break(1u);
    return;
  }

  if (v35 == 3)
  {
    v33 = swift_allocObject();
    *(v33 + 16) = v3;
    v42 = sub_1D7BFA36C;
    v43 = v33;
    aBlock = MEMORY[0x1E69E9820];
    v39 = 1107296256;
    v40 = sub_1D79FE25C;
    v41 = &block_descriptor_69;
    v22 = _Block_copy(&aBlock);
    v34 = v3;

    [v20 dismissViewControllerAnimated:1 completion:{v22, v35}];
    goto LABEL_8;
  }
}

void sub_1D7BF35C4(void *a1, void *a2, void (*a3)(void, double), uint64_t a4, void *a5, void *a6)
{
  v56 = a6;
  v54 = a5;
  sub_1D7999180(0, &unk_1EC9E6A20, MEMORY[0x1E69B6B08], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v49 - v11;
  v13 = sub_1D7D296FC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  v53 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v49 - v19;
  v23 = MEMORY[0x1EEE9AC00](v21, v22);
  v25 = &v49 - v24;
  a3(0, v23);
  aBlock = a1;
  v26 = a1;
  sub_1D798F168(0, &qword_1EE0BE7E0);
  v27 = swift_dynamicCast();
  v28 = *(v14 + 56);
  if (v27)
  {
    v55 = a2;
    v28(v12, 0, 1, v13);
    v50 = *(v14 + 32);
    v50(v25, v12, v13);
    v29 = *(v14 + 16);
    v29(v20, v25, v13);
    v30 = (*(v14 + 88))(v20, v13);
    v31 = *MEMORY[0x1E69B6AE8];
    v51 = *(v14 + 8);
    v52 = v14 + 8;
    v51(v20, v13);
    if (v30 == v31)
    {
      v32 = v55;
      v33 = sub_1D7BF1140();
      v34 = v33;
      if (v54 == 3)
      {
        [v33 dismissViewControllerAnimated:0 completion:0];

        v35 = swift_allocObject();
        *(v35 + 16) = v32;
        v61 = sub_1D7BFA2D4;
        v62 = v35;
        aBlock = MEMORY[0x1E69E9820];
        v58 = 1107296256;
        v59 = sub_1D79FE25C;
        v60 = &block_descriptor_45;
        v36 = _Block_copy(&aBlock);
        v37 = v32;

        [v56 dismissViewControllerAnimated:1 completion:v36];
        _Block_release(v36);
      }

      else
      {
        [v33 dismissViewControllerAnimated:1 completion:0];
      }
    }

    else
    {
      v54 = sub_1D7BF1140();
      v39 = v53;
      v29(v53, v25, v13);
      v40 = (*(v14 + 80) + 16) & ~*(v14 + 80);
      v41 = (v15 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
      v42 = swift_allocObject();
      v50((v42 + v40), v39, v13);
      v43 = v55;
      v44 = v56;
      *(v42 + v41) = v56;
      *(v42 + ((v41 + 15) & 0xFFFFFFFFFFFFFFF8)) = v43;
      v61 = sub_1D7BFA224;
      v62 = v42;
      aBlock = MEMORY[0x1E69E9820];
      v58 = 1107296256;
      v59 = sub_1D79FE25C;
      v60 = &block_descriptor_30;
      v45 = _Block_copy(&aBlock);
      v46 = v44;
      v47 = v43;

      v48 = v54;
      [v54 dismissViewControllerAnimated:1 completion:v45];
      _Block_release(v45);
    }

    v51(v25, v13);
  }

  else
  {
    v28(v12, 1, 1, v13);
    sub_1D7BFA530(v12, &unk_1EC9E6A20, MEMORY[0x1E69B6B08], MEMORY[0x1E69E6720], sub_1D7999180);
    v38 = sub_1D7BF1140();
    [v38 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_1D7BF3B18(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1D7D296FC();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v15[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v10, a1, v5, v8);
  v11 = (*(v6 + 88))(v10, v5);
  if (v11 == *MEMORY[0x1E69B6AD8])
  {
    v16 = sub_1D7D298CC();
    v17 = sub_1D7BFA590(&unk_1EC9E6A48, MEMORY[0x1E69B6BE8]);
    __swift_allocate_boxed_opaque_existential_1(v15);
    sub_1D7D298BC();
LABEL_7:
    sub_1D7D2C18C();
    swift_allocObject();
    sub_1D7D2C13C();
    goto LABEL_8;
  }

  if (v11 == *MEMORY[0x1E69B6AF0])
  {
    v16 = sub_1D7D297DC();
    v17 = sub_1D7BFA590(&qword_1EC9E6A40, MEMORY[0x1E69B6B60]);
    __swift_allocate_boxed_opaque_existential_1(v15);
    sub_1D7D297CC();
    goto LABEL_7;
  }

  if (v11 == *MEMORY[0x1E69B6B00])
  {
    v16 = sub_1D7D2988C();
    v17 = sub_1D7BFA590(&qword_1EC9E6A38, MEMORY[0x1E69B6BA8]);
    __swift_allocate_boxed_opaque_existential_1(v15);
    sub_1D7D2987C();
    goto LABEL_7;
  }

  if (v11 != *MEMORY[0x1E69B6AF8])
  {
    return (*(v6 + 8))(v10, v5);
  }

  v16 = sub_1D7D2959C();
  v17 = sub_1D7BFA590(&qword_1EC9E6A30, MEMORY[0x1E69B6A48]);
  __swift_allocate_boxed_opaque_existential_1(v15);
  sub_1D7D2958C();
  sub_1D7D2C18C();
  swift_allocObject();
  sub_1D7D2C13C();
  *(swift_allocObject() + 16) = a3;
  v13 = a3;
  sub_1D7D2C16C();

LABEL_8:
  sub_1D7D2C14C();
}

uint64_t sub_1D7BF3E80()
{
  sub_1D7BFA678(0, &qword_1EE0BB3C0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D7D2946C();
}

uint64_t sub_1D7BF3F0C()
{
  sub_1D7BFA678(0, &qword_1EC9E2D08, MEMORY[0x1E69E6370], MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D7D2946C();
}

void sub_1D7BF3F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = objc_opt_self();

  v12 = [v11 sharedAccount];
  v13 = [v12 activeiTunesAccount];

  if (v13 && ([v13 ams_isLocalAccount] & 1) == 0)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = [objc_allocWithZone(MEMORY[0x1E698C7B0]) init];
  [v15 setIgnoreAccountConversion_];
  v16 = sub_1D7D3031C();
  [v15 setDebugReason_];

  v17 = [objc_allocWithZone(MEMORY[0x1E698CC58]) initWithAccount:v14 presentingViewController:a5 options:v15];
  v18 = [v17 performAuthentication];
  v19 = swift_allocObject();
  v19[2] = a3;
  v19[3] = a4;
  v19[4] = sub_1D7AAA024;
  v19[5] = v10;
  v21[4] = sub_1D7BFA6C8;
  v21[5] = v19;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 1107296256;
  v21[2] = sub_1D7BF44E4;
  v21[3] = &block_descriptor_132;
  v20 = _Block_copy(v21);

  [v18 addFinishBlock_];
  _Block_release(v20);
}