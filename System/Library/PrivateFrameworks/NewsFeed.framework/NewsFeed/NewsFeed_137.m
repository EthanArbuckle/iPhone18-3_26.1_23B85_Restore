uint64_t sub_1D67D9480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D5BF4D9C();
  v4 = sub_1D7263ACC();
  if (v4[2] != 2 || (v5 = v4[8], v6 = v4[9], v8 = v4[10], v7 = v4[11], , , !((v6 ^ v5) >> 14)))
  {

    goto LABEL_10;
  }

  v9 = sub_1D67D82CC(v5, v6, v8, v7, 10);
  if ((v10 & 0x100) != 0)
  {
    v11 = sub_1D68C0700(v5, v6, v8, v7, 10);
    v14 = v13;

    if ((v14 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    v19 = a3;

    MEMORY[0x1DA6F9910](12335, 0xE200000000000000);
    return v19;
  }

  v11 = v9;
  v12 = v10;

  if (v12)
  {
    goto LABEL_10;
  }

LABEL_7:
  v19 = a3;

  result = MEMORY[0x1DA6F9910](47, 0xE100000000000000);
  if (!__OFADD__(v11, 1))
  {
    v16 = sub_1D72644BC();
    v18 = v17;

    MEMORY[0x1DA6F9910](v16, v18);

    return v19;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D67D9630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 88);
  if (v4 && *(v4 + 16) && (v5 = sub_1D5B69D90(a2, a3), (v6 & 1) != 0))
  {
    v7 = (*(v4 + 56) + 16 * v5);
    v8 = *v7;
    v9 = v7[1];

    v10 = sub_1D67D9480(v8, v9, a2);

    return v10;
  }

  else
  {

    MEMORY[0x1DA6F9910](12335, 0xE200000000000000);
    return a2;
  }
}

uint64_t sub_1D67D96E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 96);
  if (v4 && *(v4 + 16) && (v5 = sub_1D5B69D90(a2, a3), (v6 & 1) != 0))
  {
    v7 = (*(v4 + 56) + 16 * v5);
    v8 = *v7;
    v9 = v7[1];

    v10 = sub_1D67D9480(v8, v9, a2);

    return v10;
  }

  else
  {

    MEMORY[0x1DA6F9910](12335, 0xE200000000000000);
    return a2;
  }
}

uint64_t sub_1D67D97A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D67D9814(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 25))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 24);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D67D985C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t HeadlineViewRendererPipelineProcessor.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  return v0;
}

uint64_t HeadlineViewRendererPipelineProcessor.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);

  return swift_deallocClassInstance();
}

uint64_t sub_1D67D9990@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7)
{
  v24 = a3;
  v25 = a2;
  v26 = a5;
  v23 = a6;
  v9 = sub_1D725DDFC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v23 - v12;
  v14 = sub_1D7258DBC();
  v15 = *(v14 - 8);
  *&v17 = MEMORY[0x1EEE9AC00](v14, v16).n128_u64[0];
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [*a1 indexPath];
  sub_1D7258D6C();

  v27 = v24;
  v28 = a4;
  v29 = v23;
  v30 = a7;
  sub_1D725D34C();
  sub_1D725D35C();
  (*(v15 + 8))(v19, v14);
  v21 = v26;
  sub_1D725DDEC();
  (*(v10 + 8))(v13, v9);
  return (*(*(a4 - 8) + 56))(v21, 0, 1, a4);
}

uint64_t (*sub_1D67D9C18(uint64_t a1, uint64_t a2, void (**a3)(char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11))()
{
  v120 = a8;
  v118 = a6;
  v117 = a5;
  v116 = a4;
  v126 = a3;
  v124 = a2;
  v119 = a1;
  v12 = sub_1D7261B5C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v115 = &v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v129 = &v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v128 = &v111 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v127 = &v111 - v24;
  v114 = v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v132 = &v111 - v28;
  v121 = type metadata accessor for ImageRequestOptions();
  MEMORY[0x1EEE9AC00](v121, v29);
  v131 = (&v111 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = sub_1D725D58C();
  v125 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v32);
  v122 = (&v111 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v111 - v36;
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v111 - v40;
  v42 = sub_1D725EB5C();
  v43 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v44);
  v46 = &v111 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47, v48);
  v50 = &v111 - v49;
  if ([objc_opt_self() isMainThread])
  {
    return nullsub_1;
  }

  v112 = v13;
  v113 = v12;
  sub_1D725E20C();
  (*(v43 + 104))(v46, *MEMORY[0x1E69D81B0], v42);
  v51 = sub_1D725EB4C();
  v52 = *(v43 + 8);
  v52(v46, v42);
  v52(v50, v42);
  if ((v51 & 1) == 0)
  {
    return nullsub_1;
  }

  sub_1D725E13C();
  v53 = sub_1D725D56C();
  v54 = *(v125 + 8);
  v54(v41, v31);
  if ((v53 & 1) == 0)
  {
    return nullsub_1;
  }

  sub_1D725E13C();
  sub_1D725D57C();
  v125 = v55;
  v111 = v56;
  v54(v41, v31);
  sub_1D725E13C();
  sub_1D725D54C();
  v54(v37, v31);
  v57 = v122;
  sub_1D725E13C();
  sub_1D725D53C();
  v59 = v58;
  v61 = v60;
  v54(v57, v31);
  v109 = v59;
  v110 = v61;
  v62 = sub_1D725E9BC();
  if (!v62)
  {
    return nullsub_1;
  }

  v63 = v62;
  v140 = MEMORY[0x1E69E7CC0];
  v64 = v62 & 0xFFFFFFFFFFFFFF8;
  if (v62 >> 62)
  {
    goto LABEL_51;
  }

  for (i = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D7263BFC())
  {
    v66 = v127;
    if (!i)
    {
      break;
    }

    v67 = 0;
    while (1)
    {
      if ((v63 & 0xC000000000000001) != 0)
      {
        v68 = MEMORY[0x1DA6FB460](v67, v63);
      }

      else
      {
        if (v67 >= *(v64 + 16))
        {
          goto LABEL_50;
        }

        v68 = *(v63 + 8 * v67 + 32);
      }

      v69 = v68;
      v70 = v67 + 1;
      if (__OFADD__(v67, 1))
      {
        break;
      }

      v71 = [v68 representedElementKind];
      if (v71)
      {
        v72 = v71;
      }

      else
      {
        sub_1D7263E9C();
        sub_1D7263EDC();
        v66 = v127;
        sub_1D7263EEC();
        sub_1D7263EAC();
      }

      ++v67;
      if (v70 == i)
      {
        v73 = v140;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    ;
  }

  v73 = MEMORY[0x1E69E7CC0];
LABEL_20:

  v140 = v73;
  MEMORY[0x1EEE9AC00](v74, v75);
  v76 = v117;
  *(&v111 - 10) = v116;
  *(&v111 - 9) = v76;
  *(&v111 - 8) = v118;
  *(&v111 - 7) = a7;
  *(&v111 - 6) = v120;
  *(&v111 - 5) = a9;
  *(&v111 - 4) = a10;
  *(&v111 - 3) = a11;
  v109 = v119;
  sub_1D67DAC6C();
  sub_1D67DACC4();
  v77 = sub_1D726242C();

  v78 = CACurrentMediaTime();
  if (qword_1EDF1BB50 != -1)
  {
    swift_once();
  }

  v79 = qword_1EDFFC828;
  sub_1D7262EAC();
  v120 = v79;
  sub_1D725C30C();
  sub_1D725E15C();
  v81 = v80;
  v82 = sub_1D725E1AC();
  v83 = *(v121 + 24);
  v84 = sub_1D725CB5C();
  v85 = v131;
  (*(*(v84 - 8) + 56))(v131 + v83, 1, 1, v84);
  *v85 = v81;
  v85[1] = v82;
  v122 = dispatch_group_create();
  if (!sub_1D726279C())
  {
LABEL_47:

    v104 = v115;
    sub_1D7261B3C();
    v105 = v122;
    sub_1D726301C();
    (*(v112 + 8))(v104, v113);
    v106 = CACurrentMediaTime();
    sub_1D7262EAC();
    sub_1D5C16694(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v107 = swift_allocObject();
    *(v107 + 16) = xmmword_1D7273AE0;
    v108 = MEMORY[0x1E69E6438];
    *(v107 + 56) = MEMORY[0x1E69E63B0];
    *(v107 + 64) = v108;
    *(v107 + 32) = (v106 - v78) * 1000.0;
    sub_1D725C30C();

    sub_1D6081448(v131);
    return nullsub_1;
  }

  v86 = 0;
  v87 = (v130 + 16);
  v125 = v130 + 32;
  v126 = (v130 + 8);
  v124 = v77;
  while (1)
  {
    v88 = sub_1D726277C();
    sub_1D726271C();
    if (v88)
    {
      v89 = *(v130 + 16);
      v89(v132, (v77 + ((*(v130 + 80) + 32) & ~*(v130 + 80)) + *(v130 + 72) * v86), a7);
      v90 = v86 + 1;
      if (__OFADD__(v86, 1))
      {
        goto LABEL_46;
      }

      goto LABEL_28;
    }

    result = sub_1D7263DBC();
    if (v114 != 8)
    {
      break;
    }

    v140 = result;
    v89 = *v87;
    (*v87)(v132, &v140, a7);
    swift_unknownObjectRelease();
    v90 = v86 + 1;
    if (__OFADD__(v86, 1))
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

LABEL_28:
    (*v125)(v66, v132, a7);
    v89(v128, v66, a7);
    sub_1D5B49474(0, &qword_1EDF1FE30);
    if (swift_dynamicCast())
    {
      sub_1D5B63F14(&v137, &v140);
      v91 = v141;
      v92 = v142;
      __swift_project_boxed_opaque_existential_1(&v140, v141);
      (*(v92 + 8))(&v137, v131, v91, v92);
      sub_1D5BFED1C(&v137, &v133);
      if (v134)
      {
        sub_1D5B63F14(&v133, v135);
        __swift_project_boxed_opaque_existential_1(v135, v136);
        if (ProcessedImageRequestType.isDownloaded.getter())
        {
          v93 = v87;
          v94 = v122;
          dispatch_group_enter(v122);
          __swift_project_boxed_opaque_existential_1(v123 + 2, v123[5]);
          *(swift_allocObject() + 16) = v94;
          v95 = v94;
          v87 = v93;
          sub_1D725D0AC();
          v66 = v127;
        }

        sub_1D5BFB7D0(&v137, &qword_1EDF3B4D0, &qword_1EDF3B4D8, MEMORY[0x1E69D8160]);
        __swift_destroy_boxed_opaque_existential_1(v135);
      }

      else
      {
        v96 = MEMORY[0x1E69D8160];
        sub_1D5BFB7D0(&v137, &qword_1EDF3B4D0, &qword_1EDF3B4D8, MEMORY[0x1E69D8160]);
        sub_1D5BFB7D0(&v133, &qword_1EDF3B4D0, &qword_1EDF3B4D8, v96);
      }

      __swift_destroy_boxed_opaque_existential_1(&v140);
    }

    else
    {
      v139 = 0;
      v137 = 0u;
      v138 = 0u;
      sub_1D5BFB7D0(&v137, &qword_1EDF1FE28, &qword_1EDF1FE30, &protocol descriptor for ThumbnailImageRequestProviding);
    }

    v89(v129, v66, a7);
    sub_1D5B49474(0, qword_1EDF1DC08);
    if (swift_dynamicCast())
    {
      sub_1D5B63F14(&v137, &v140);
      v97 = v141;
      v98 = v142;
      __swift_project_boxed_opaque_existential_1(&v140, v141);
      (*(v98 + 8))(&v137, v131, v97, v98);
      sub_1D5BFED1C(&v137, &v133);
      if (v134)
      {
        sub_1D5B63F14(&v133, v135);
        __swift_project_boxed_opaque_existential_1(v135, v136);
        v99 = ProcessedImageRequestType.isDownloaded.getter();
        v77 = v124;
        if (v99)
        {
          v100 = v122;
          dispatch_group_enter(v122);
          __swift_project_boxed_opaque_existential_1(v123 + 7, v123[10]);
          *(swift_allocObject() + 16) = v100;
          v101 = v100;
          sub_1D725D0AC();
          v66 = v127;
        }

        sub_1D5BFB7D0(&v137, &qword_1EDF3B4D0, &qword_1EDF3B4D8, MEMORY[0x1E69D8160]);
        (*v126)(v66, a7);
        __swift_destroy_boxed_opaque_existential_1(v135);
      }

      else
      {
        v102 = MEMORY[0x1E69D8160];
        sub_1D5BFB7D0(&v137, &qword_1EDF3B4D0, &qword_1EDF3B4D8, MEMORY[0x1E69D8160]);
        (*v126)(v66, a7);
        sub_1D5BFB7D0(&v133, &qword_1EDF3B4D0, &qword_1EDF3B4D8, v102);
        v77 = v124;
      }

      __swift_destroy_boxed_opaque_existential_1(&v140);
    }

    else
    {
      (*v126)(v66, a7);
      v139 = 0;
      v137 = 0u;
      v138 = 0u;
      sub_1D5BFB7D0(&v137, &qword_1EDF1DC00, qword_1EDF1DC08, &protocol descriptor for PublisherLogoImageRequestProviding);
      v77 = v124;
    }

    ++v86;
    if (v90 == sub_1D726279C())
    {
      goto LABEL_47;
    }
  }

  __break(1u);
  return result;
}

void sub_1D67DAC6C()
{
  if (!qword_1EC8832A0)
  {
    sub_1D725C9AC();
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8832A0);
    }
  }
}

unint64_t sub_1D67DACC4()
{
  result = qword_1EC88BC68;
  if (!qword_1EC88BC68)
  {
    sub_1D67DAC6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BC68);
  }

  return result;
}

id sub_1D67DAD28(uint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for FeedRecipe();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *v1;
  if (v13 <= 1)
  {
    if (*v1)
    {
      sub_1D6B7C1C8(*(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), &v18);
      if (!v2)
      {
        LOBYTE(v17[0]) = v32;
        *(v17 + 1) = v33;
        v3 = [objc_msgSend(v18 sourceChannel];
        swift_unknownObjectRelease();
        sub_1D5ECF320(v16);
      }
    }

    else
    {
      sub_1D6B7C374(*(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), v12);
      if (!v2)
      {
        v14 = [v12[5] sourceChannel];
        if (v14)
        {
          v3 = [v14 theme];
          swift_unknownObjectRelease();
        }

        else
        {
          v3 = 0;
        }

        sub_1D5D5119C(v12, type metadata accessor for FeedHeadline);
      }
    }
  }

  else if (v13 == 2)
  {
    sub_1D6B7C06C(*(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), &v18);
    if (!v2)
    {
      v3 = [v19 theme];
      sub_1D5EE5B54(&v18);
    }
  }

  else if (v13 == 3)
  {
    sub_1D6B7BCEC(*(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), &v18);
    if (!v2)
    {
      v3 = [objc_msgSend(v24 puzzleType)];
      swift_unknownObjectRelease();
      sub_1D5F2DF58(&v18);
    }
  }

  else
  {
    sub_1D6B7B210(*(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), v8);
    if (!v2)
    {
      v3 = [objc_msgSend(v8[7] sourceChannel)];
      swift_unknownObjectRelease();
      sub_1D5D5119C(v8, type metadata accessor for FeedRecipe);
    }
  }

  return v3;
}

uint64_t FormatPublisherLogoSizeBinding.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D67DB124()
{
  result = qword_1EC88BC70;
  if (!qword_1EC88BC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BC70);
  }

  return result;
}

unint64_t sub_1D67DB178(uint64_t a1)
{
  result = sub_1D67DB1A0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D67DB1A0()
{
  result = qword_1EC88BC78;
  if (!qword_1EC88BC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BC78);
  }

  return result;
}

unint64_t sub_1D67DB1F4(void *a1)
{
  a1[1] = sub_1D5CBF854();
  a1[2] = sub_1D66ADE58();
  result = sub_1D67DB124();
  a1[3] = result;
  return result;
}

uint64_t sub_1D67DB254@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D5C2FF94(0, &qword_1EDF3C650, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (!v2)
  {
    sub_1D67DBB44();
    v15 = 0uLL;
    sub_1D726431C();
    if (v14)
    {
      v15 = xmmword_1D7279980;
      sub_1D67DBB98();
      sub_1D726431C();
      (*(v7 + 8))(v10, v6);
      v12 = 0;
      v13 = 0;
    }

    else
    {
      v14 = xmmword_1D7279980;
      sub_1D67DBBEC();
      sub_1D726431C();
      (*(v7 + 8))(v10, v6);
      v12 = v15;
      v13 = *(&v15 + 1);
    }

    *a2 = v12;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D67DB4A4(void *a1)
{
  sub_1D5C2FF94(0, &qword_1EDF02770, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v12 - v8;
  v10 = v1[1];
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B5C();
  if (v10)
  {
    LOBYTE(v12) = 0;
    sub_1D67DBC40();
    v13 = 0uLL;
    sub_1D726443C();
    if (!v2)
    {
      LOBYTE(v13) = v14;
      *(&v13 + 1) = v10;
      v12 = xmmword_1D7279980;
      sub_1D67DBCE8();
LABEL_6:
      sub_1D726443C();
    }
  }

  else
  {
    LOBYTE(v12) = 1;
    sub_1D67DBC40();
    v13 = 0uLL;
    sub_1D726443C();
    if (!v2)
    {
      v13 = xmmword_1D7279980;
      sub_1D67DBC94();
      goto LABEL_6;
    }
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D67DB6C0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1970169197;
  }

  else
  {
    v3 = 0x6C65694674786574;
  }

  if (v2)
  {
    v4 = 0xE900000000000064;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1970169197;
  }

  else
  {
    v5 = 0x6C65694674786574;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE900000000000064;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D67DB764()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D67DB7E4()
{
  sub_1D72621EC();
}

uint64_t sub_1D67DB850()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D67DB8CC@<X0>(char *a1@<X8>)
{
  v2 = sub_1D72641CC();

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

void sub_1D67DB92C(uint64_t *a1@<X8>)
{
  v2 = 1970169197;
  if (!*v1)
  {
    v2 = 0x6C65694674786574;
  }

  v3 = 0xE900000000000064;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D67DBA4C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = a2[1];
  if (v2)
  {
    if (v3)
    {
      v4 = *a2;
      v5 = *a1;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      if (sub_1D6DD57C4(v5, v4))
      {
        v6 = sub_1D6340220(v2, v3);
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        if (v6)
        {
          return 1;
        }
      }

      else
      {
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
      }

      return 0;
    }

LABEL_9:

    return 0;
  }

  if (v3)
  {
    goto LABEL_9;
  }

  swift_bridgeObjectRelease_n();
  return 1;
}

unint64_t sub_1D67DBB44()
{
  result = qword_1EC88BC80;
  if (!qword_1EC88BC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BC80);
  }

  return result;
}

unint64_t sub_1D67DBB98()
{
  result = qword_1EC88BC88;
  if (!qword_1EC88BC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BC88);
  }

  return result;
}

unint64_t sub_1D67DBBEC()
{
  result = qword_1EC88BC90;
  if (!qword_1EC88BC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BC90);
  }

  return result;
}

unint64_t sub_1D67DBC40()
{
  result = qword_1EC88BC98;
  if (!qword_1EC88BC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BC98);
  }

  return result;
}

unint64_t sub_1D67DBC94()
{
  result = qword_1EC88BCA0;
  if (!qword_1EC88BCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BCA0);
  }

  return result;
}

unint64_t sub_1D67DBCE8()
{
  result = qword_1EC88BCA8;
  if (!qword_1EC88BCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BCA8);
  }

  return result;
}

unint64_t sub_1D67DBD50()
{
  result = qword_1EC88BCB0;
  if (!qword_1EC88BCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BCB0);
  }

  return result;
}

unint64_t sub_1D67DBDA4()
{
  result = qword_1EC88BCB8;
  if (!qword_1EC88BCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BCB8);
  }

  return result;
}

id sub_1D67DBDF8()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

char *sub_1D67DBE30(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC8NewsFeed27DebugFormatEditorStatusView_onErrorTap;
  sub_1D5BFDBB4();
  v5 = v4;
  *&v1[v3] = [objc_allocWithZone(v4) init];
  v6 = OBJC_IVAR____TtC8NewsFeed27DebugFormatEditorStatusView_errorButton;
  v7 = objc_opt_self();
  *&v1[v6] = [v7 buttonWithType_];
  v8 = OBJC_IVAR____TtC8NewsFeed27DebugFormatEditorStatusView_onServerTap;
  *&v1[v8] = [objc_allocWithZone(v5) init];
  v9 = OBJC_IVAR____TtC8NewsFeed27DebugFormatEditorStatusView_serverButton;
  *&v1[v9] = [v7 buttonWithType_];
  *&v1[OBJC_IVAR____TtC8NewsFeed27DebugFormatEditorStatusView_maxWidth] = 0;
  v10 = OBJC_IVAR____TtC8NewsFeed27DebugFormatEditorStatusView_statusLabel;
  *&v1[v10] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v11 = OBJC_IVAR____TtC8NewsFeed27DebugFormatEditorStatusView_progressView;
  *&v1[v11] = [objc_allocWithZone(MEMORY[0x1E69DCE48]) initWithFrame_];
  v12 = OBJC_IVAR____TtC8NewsFeed27DebugFormatEditorStatusView_serverReloadQueueLabel;
  *&v1[v12] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v13 = OBJC_IVAR____TtC8NewsFeed27DebugFormatEditorStatusView_statusLabelBranchIcon;
  sub_1D67DD4FC();
  *&v1[v13] = v14;
  *&v1[OBJC_IVAR____TtC8NewsFeed27DebugFormatEditorStatusView_editor] = a1;
  v63.receiver = v1;
  v63.super_class = ObjectType;

  v15 = objc_msgSendSuper2(&v63, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v16 = sub_1D7261A3C();
  v17 = objc_opt_self();
  v18 = &selRef_tertiarySystemBackgroundColor;
  if (v16)
  {
    v18 = &selRef_clearColor;
  }

  v19 = [v17 *v18];
  [v15 setBackgroundColor_];

  [v15 setClipsToBounds_];
  v20 = [v15 layer];

  v21 = sub_1D7261A3C();
  v22 = 4.0;
  if (v21)
  {
    v22 = 0.0;
  }

  [v20 setCornerRadius_];

  [v15 addSubview_];
  v23 = OBJC_IVAR____TtC8NewsFeed27DebugFormatEditorStatusView_errorButton;
  v24 = *&v15[OBJC_IVAR____TtC8NewsFeed27DebugFormatEditorStatusView_errorButton];
  v25 = objc_opt_self();
  v26 = v24;
  v27 = [v25 secondaryLabelColor];
  [v26 setTintColor_];

  v28 = *&v15[v23];
  v29 = sub_1D726203C();
  v30 = objc_opt_self();
  v31 = [v30 systemImageNamed_];

  [v28 setImage:v31 forState:0];
  [*&v15[v23] setPointerInteractionEnabled_];
  [v15 addSubview_];
  v32 = *&v15[v23];
  v33 = *&v15[OBJC_IVAR____TtC8NewsFeed27DebugFormatEditorStatusView_onErrorTap];
  v34 = v32;
  sub_1D725F67C();

  v35 = OBJC_IVAR____TtC8NewsFeed27DebugFormatEditorStatusView_serverButton;
  v36 = *&v15[OBJC_IVAR____TtC8NewsFeed27DebugFormatEditorStatusView_serverButton];
  v37 = [v25 secondaryLabelColor];
  [v36 setTintColor_];

  v38 = *&v15[v35];
  v39 = sub_1D726203C();
  v40 = [v30 systemImageNamed_];

  [v38 setImage:v40 forState:0];
  [*&v15[v35] setPointerInteractionEnabled_];
  [v15 addSubview_];
  v41 = *&v15[v35];
  v42 = *&v15[OBJC_IVAR____TtC8NewsFeed27DebugFormatEditorStatusView_onServerTap];
  v43 = v41;
  sub_1D725F67C();

  v44 = OBJC_IVAR____TtC8NewsFeed27DebugFormatEditorStatusView_serverReloadQueueLabel;
  [*&v15[OBJC_IVAR____TtC8NewsFeed27DebugFormatEditorStatusView_serverReloadQueueLabel] setUserInteractionEnabled_];
  v45 = *&v15[v44];
  v46 = objc_opt_self();
  v47 = v45;
  v48 = [v46 systemFontOfSize_];
  [v47 setFont_];

  v49 = *&v15[v44];
  v50 = [v25 whiteColor];
  [v49 setTextColor_];

  v51 = *&v15[v44];
  v52 = [v25 systemBlueColor];
  [v51 setBackgroundColor_];

  [*&v15[v44] setFrame_];
  v53 = [*&v15[v44] layer];
  [v53 setCornerRadius_];

  v54 = [*&v15[v44] layer];
  [v54 setCornerCurve_];

  v55 = [*&v15[v44] layer];
  [v55 setMasksToBounds_];

  [*&v15[v44] setTextAlignment_];
  [*&v15[v44] setAdjustsFontSizeToFitWidth_];
  [v15 addSubview_];
  v56 = OBJC_IVAR____TtC8NewsFeed27DebugFormatEditorStatusView_progressView;
  [*&v15[OBJC_IVAR____TtC8NewsFeed27DebugFormatEditorStatusView_progressView] setProgress_];
  v57 = *&v15[v56];
  v58 = [v25 systemBlueColor];
  [v57 setProgressTintColor_];

  v59 = *&v15[v56];
  v60 = [v25 clearColor];
  [v59 setTrackTintColor_];

  [v15 addSubview_];

  sub_1D725B33C();

  sub_1D725B2EC();

  sub_1D725B33C();

  sub_1D725B2EC();

  sub_1D725B33C();

  sub_1D725B2EC();

  sub_1D725B33C();

  sub_1D725B35C();

  sub_1D725B33C();

  sub_1D725B35C();

  sub_1D725B33C();

  sub_1D725B2EC();

  sub_1D725974C();

  sub_1D725971C();

  return v15;
}

void sub_1D67DC830()
{
  v1 = v0;
  v2 = type metadata accessor for DebugFormatFileDirectoryMetadata(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D67DD848(0, &unk_1EC8858E0, type metadata accessor for DebugFormatFileDirectoryMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v46 - v9;
  v11 = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];

  sub_1D725B31C();

  v12 = (*(v3 + 48))(v10, 1, v2);
  v13 = MEMORY[0x1E69DB648];
  if (v12)
  {
    sub_1D67DD7BC(v10);
  }

  else
  {
    sub_1D67DD8AC(v10, v6);
    sub_1D67DD7BC(v10);
    v14 = &v6[*(v2 + 32)];
    v16 = *v14;
    v15 = *(v14 + 1);

    sub_1D67DD910(v6);
    if (v15)
    {
      [v11 appendAttributedString_];
      v47 = 32;
      v48 = 0xE100000000000000;
      MEMORY[0x1DA6F9910](v16, v15);

      MEMORY[0x1DA6F9910](2128928, 0xE300000000000000);
      v46 = v47;
      sub_1D67DD848(0, &qword_1EDF194E0, sub_1D5C09DD4, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D7270C10;
      v18 = *v13;
      *(inited + 32) = *v13;
      v19 = objc_opt_self();
      v20 = *MEMORY[0x1E69DB980];
      v21 = v18;
      v22 = [v19 systemFontOfSize:11.0 weight:v20];
      v23 = sub_1D5B5A498(0, &qword_1EDF1A720);
      *(inited + 40) = v22;
      v24 = *MEMORY[0x1E69DB650];
      *(inited + 64) = v23;
      *(inited + 72) = v24;
      v25 = objc_opt_self();
      v26 = v24;
      v27 = [v25 secondaryLabelColor];
      *(inited + 104) = sub_1D5B5A498(0, qword_1EDF1A6A0);
      *(inited + 80) = v27;
      sub_1D5C09CEC(inited);
      swift_setDeallocating();
      sub_1D5C09DD4();
      swift_arrayDestroy();
      v28 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v29 = sub_1D726203C();

      type metadata accessor for Key(0);
      sub_1D5C09E68();
      v30 = sub_1D7261D2C();
      v13 = MEMORY[0x1E69DB648];

      v31 = [v28 initWithString:v29 attributes:v30];

      [v11 appendAttributedString_];
    }
  }

  sub_1D725B31C();

  sub_1D67DD848(0, &qword_1EDF194E0, sub_1D5C09DD4, MEMORY[0x1E69E6F90]);
  v32 = swift_initStackObject();
  *(v32 + 16) = xmmword_1D7270C10;
  v33 = *v13;
  *(v32 + 32) = *v13;
  v34 = objc_opt_self();
  v35 = v33;
  v36 = [v34 systemFontOfSize_];
  v37 = sub_1D5B5A498(0, &qword_1EDF1A720);
  *(v32 + 40) = v36;
  v38 = *MEMORY[0x1E69DB650];
  *(v32 + 64) = v37;
  *(v32 + 72) = v38;
  v39 = objc_opt_self();
  v40 = v38;
  v41 = [v39 secondaryLabelColor];
  *(v32 + 104) = sub_1D5B5A498(0, qword_1EDF1A6A0);
  *(v32 + 80) = v41;
  sub_1D5C09CEC(v32);
  swift_setDeallocating();
  sub_1D5C09DD4();
  swift_arrayDestroy();
  v42 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v43 = sub_1D726203C();

  type metadata accessor for Key(0);
  sub_1D5C09E68();
  v44 = sub_1D7261D2C();

  v45 = [v42 initWithString:v43 attributes:v44];

  [v11 appendAttributedString_];
  [*(v1 + OBJC_IVAR____TtC8NewsFeed27DebugFormatEditorStatusView_statusLabel) setAttributedText_];
}

void sub_1D67DCE94(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + OBJC_IVAR____TtC8NewsFeed27DebugFormatEditorStatusView_errorButton);
  v4 = objc_opt_self();
  v5 = [v4 secondaryLabelColor];
  [v3 setTintColor_];

  v6 = *(sub_1D6BF6C58(v2) + 16);

  if (v6)
  {
    v7 = [v4 systemYellowColor];
    [v3 setTintColor_];
  }

  v8 = *(sub_1D6BF6F14(v2) + 16);

  if (v8)
  {
    v9 = [v4 systemRedColor];
    [v3 setTintColor_];
  }
}

void sub_1D67DCFC8(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *(a1 + OBJC_IVAR____TtC8NewsFeed27DebugFormatEditorStatusView_serverButton);
  v5 = objc_opt_self();
  if (v3)
  {
    v6 = &selRef_systemBlueColor;
  }

  else
  {
    v6 = &selRef_systemRedColor;
  }

  v7 = [v5 *v6];
  [v4 setTintColor_];

  v8 = *(a1 + OBJC_IVAR____TtC8NewsFeed27DebugFormatEditorStatusView_serverReloadQueueLabel);
  v9 = [objc_opt_self() *v6];
  [v8 setBackgroundColor_];
}

void sub_1D67DD0B0(uint64_t a1, void *a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC8NewsFeed27DebugFormatEditorStatusView_serverReloadQueueLabel);
  [v2 setHidden_];
  sub_1D72644BC();
  v3 = sub_1D726203C();

  [v2 setText_];
}

void sub_1D67DD190()
{
  v20.receiver = v0;
  v20.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v20, sel_layoutSubviews);
  if (sub_1D7261A3C())
  {
    v1 = 8.0;
  }

  else
  {
    v1 = 0.0;
  }

  v2 = *&v0[OBJC_IVAR____TtC8NewsFeed27DebugFormatEditorStatusView_serverButton];
  [v0 bounds];
  Width = CGRectGetWidth(v21);
  [v0 bounds];
  v4 = Width - CGRectGetHeight(v22) - v1;
  [v0 bounds];
  Height = CGRectGetHeight(v23);
  [v0 bounds];
  [v2 setFrame_];
  v6 = *&v0[OBJC_IVAR____TtC8NewsFeed27DebugFormatEditorStatusView_errorButton];
  [v2 frame];
  MinX = CGRectGetMinX(v25);
  [v0 bounds];
  v8 = MinX - CGRectGetHeight(v26);
  [v0 bounds];
  v9 = CGRectGetHeight(v27);
  [v0 bounds];
  [v6 setFrame_];
  v10 = *&v0[OBJC_IVAR____TtC8NewsFeed27DebugFormatEditorStatusView_statusLabel];
  [v0 bounds];
  [v0 bounds];
  CGRectGetHeight(v29);
  sub_1D72632AC();
  [v10 setFrame_];
  v12 = *&v0[OBJC_IVAR____TtC8NewsFeed27DebugFormatEditorStatusView_progressView];
  [v0 bounds];
  v13 = CGRectGetHeight(v30) + -3.0;
  [v0 bounds];
  [v12 setFrame_];
  v14 = *&v0[OBJC_IVAR____TtC8NewsFeed27DebugFormatEditorStatusView_serverReloadQueueLabel];
  [v2 frame];
  MaxX = CGRectGetMaxX(v32);
  [v14 frame];
  v16 = MaxX - CGRectGetWidth(v33);
  [v2 frame];
  MinY = CGRectGetMinY(v34);
  [v14 frame];
  v18 = CGRectGetWidth(v35);
  [v14 frame];
  [v14 setFrame_];
  v19 = [v14 layer];
  [v14 frame];
  [v19 setCornerRadius_];
}

void sub_1D67DD4FC()
{
  v0 = sub_1D726203C();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    sub_1D5B5A498(0, &qword_1EDF1A7E0);
    v2 = [objc_opt_self() textAttachmentWithImage_];

    v3 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
    v4 = *MEMORY[0x1E69DB650];
    v5 = [objc_opt_self() secondaryLabelColor];
    [v3 addAttribute:v4 value:v5 range:{0, 1}];

    v6 = *MEMORY[0x1E69DB648];
    v7 = [objc_opt_self() systemFontOfSize:11.0 weight:*MEMORY[0x1E69DB980]];
    [v3 addAttribute:v6 value:v7 range:{0, 1}];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D67DD7BC(uint64_t a1)
{
  sub_1D67DD848(0, &unk_1EC8858E0, type metadata accessor for DebugFormatFileDirectoryMetadata, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D67DD848(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D67DD8AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugFormatFileDirectoryMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D67DD910(uint64_t a1)
{
  v2 = type metadata accessor for DebugFormatFileDirectoryMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D67DD96C()
{
  v1 = OBJC_IVAR____TtC8NewsFeed27DebugFormatEditorStatusView_onErrorTap;
  sub_1D5BFDBB4();
  v3 = v2;
  *(v0 + v1) = [objc_allocWithZone(v2) init];
  v4 = OBJC_IVAR____TtC8NewsFeed27DebugFormatEditorStatusView_errorButton;
  v5 = objc_opt_self();
  *(v0 + v4) = [v5 buttonWithType_];
  v6 = OBJC_IVAR____TtC8NewsFeed27DebugFormatEditorStatusView_onServerTap;
  *(v0 + v6) = [objc_allocWithZone(v3) init];
  v7 = OBJC_IVAR____TtC8NewsFeed27DebugFormatEditorStatusView_serverButton;
  *(v0 + v7) = [v5 buttonWithType_];
  *(v0 + OBJC_IVAR____TtC8NewsFeed27DebugFormatEditorStatusView_maxWidth) = 0;
  v8 = OBJC_IVAR____TtC8NewsFeed27DebugFormatEditorStatusView_statusLabel;
  *(v0 + v8) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v9 = OBJC_IVAR____TtC8NewsFeed27DebugFormatEditorStatusView_progressView;
  *(v0 + v9) = [objc_allocWithZone(MEMORY[0x1E69DCE48]) initWithFrame_];
  v10 = OBJC_IVAR____TtC8NewsFeed27DebugFormatEditorStatusView_serverReloadQueueLabel;
  *(v0 + v10) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v11 = OBJC_IVAR____TtC8NewsFeed27DebugFormatEditorStatusView_statusLabelBranchIcon;
  sub_1D67DD4FC();
  *(v0 + v11) = v12;
  sub_1D726402C();
  __break(1u);
}

void sub_1D67DDB1C(__int128 *a1)
{
  v2 = v1;
  v3 = a1[5];
  v34 = a1[4];
  v35 = v3;
  v4 = a1[7];
  v36 = a1[6];
  v37 = v4;
  v5 = a1[1];
  v30 = *a1;
  v31 = v5;
  v6 = a1[3];
  v32 = a1[2];
  v33 = v6;
  v7 = [v1 subviews];
  sub_1D5B5A498(0, &qword_1EDF1A710);
  v8 = sub_1D726267C();

  if (v8 >> 62)
  {
    v9 = sub_1D7263BFC();
    if (!v9)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      goto LABEL_10;
    }
  }

  if (v9 < 1)
  {
LABEL_18:
    __break(1u);
    return;
  }

  for (i = 0; i != v9; ++i)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1DA6FB460](i, v8);
    }

    else
    {
      v11 = *(v8 + 8 * i + 32);
    }

    v12 = v11;
    [v11 removeFromSuperview];
  }

LABEL_10:

  v26[4] = v34;
  v27 = v35;
  v28 = v36;
  v29 = v37;
  v26[0] = v30;
  v26[1] = v31;
  v26[2] = v32;
  v26[3] = v33;
  if (sub_1D5DEA380(v26) != 1)
  {
    v13 = v27;
    v14 = *(v27 + 16);
    if (v14)
    {
      v15 = *&v2[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceBreakpointView_breakpointSize];
      sub_1D67DEA6C(&v30, &v23);

      for (j = (v13 + 56); ; j += 4)
      {
        v17 = *(j - 1);
        if (__OFSUB__(v17, 1))
        {
          break;
        }

        v18 = *j;
        v19 = *(j - 2);
        v20 = v15 * (v17 - 1);
        *&v23 = *(j - 3);
        *(&v23 + 1) = v19;
        v24 = v17;
        v25 = v18;
        objc_allocWithZone(type metadata accessor for DebugFormatDebuggerSourceBreakpointIndicatorView());

        v22 = sub_1D67DDED4(v21, &v23, 0.0, v20, v15, v15);
        [v2 addSubview_];

        if (!--v14)
        {
          sub_1D67A436C(&v30);

          return;
        }
      }

      __break(1u);
      goto LABEL_18;
    }
  }
}

char *sub_1D67DDED4(uint64_t a1, __int128 *a2, double a3, double a4, double a5, double a6)
{
  ObjectType = swift_getObjectType();
  v14 = MEMORY[0x1E69E7CA8];
  sub_1D67DEAF4(0, &qword_1EDF3B460, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D8768]);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = (&v34 - v19);
  v34 = *a2;
  v22 = *(a2 + 2);
  v21 = *(a2 + 3);
  v23 = OBJC_IVAR____TtC8NewsFeed48DebugFormatDebuggerSourceBreakpointIndicatorView_onTap;
  sub_1D67DEAF4(0, &qword_1EDF3B450, v14 + 8, MEMORY[0x1E69D8770]);
  *&v6[v23] = [objc_allocWithZone(v24) init];
  *&v6[OBJC_IVAR____TtC8NewsFeed48DebugFormatDebuggerSourceBreakpointIndicatorView_editor] = a1;
  v25 = &v6[OBJC_IVAR____TtC8NewsFeed48DebugFormatDebuggerSourceBreakpointIndicatorView_sourceMap];
  *v25 = v34;
  *(v25 + 2) = v22;
  *(v25 + 3) = v21;
  v35.receiver = v6;
  v35.super_class = ObjectType;

  v26 = objc_msgSendSuper2(&v35, sel_initWithFrame_, a3, a4, a5, a6);

  sub_1D725B33C();

  sub_1D725B2EC();

  v27 = OBJC_IVAR____TtC8NewsFeed48DebugFormatDebuggerSourceBreakpointIndicatorView_onTap;
  v28 = *&v26[OBJC_IVAR____TtC8NewsFeed48DebugFormatDebuggerSourceBreakpointIndicatorView_onTap];
  *v20 = 1;
  (*(v17 + 104))(v20, *MEMORY[0x1E69D8758], v16);
  v29 = v28;

  (*(v17 + 8))(v20, v16);
  v30 = *&v26[v27];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = v30;

  v32 = [objc_allocWithZone(MEMORY[0x1E69DCDB0]) initWithDelegate_];

  [v26 addInteraction_];

  return v26;
}

void sub_1D67DE234(uint64_t a1)
{
  v3 = [v1 layer];
  [v1 bounds];
  [v3 setCornerRadius_];

  v4 = [v1 layer];
  [v4 setBorderWidth_];

  LOBYTE(a1) = sub_1D67DE758(a1);
  v5 = objc_opt_self();
  v6 = v5;
  v7 = &selRef_clearColor;
  if (a1)
  {
    v7 = &selRef_systemBlueColor;
    v8 = &selRef_systemBlueColor;
  }

  else
  {
    v8 = &selRef_secondaryLabelColor;
  }

  v9 = [v5 *v7];
  [v1 setBackgroundColor_];

  v10 = [v1 layer];
  v11 = [v6 *v8];
  v12 = [v11 CGColor];

  [v10 setBorderColor_];
}

uint64_t sub_1D67DE3C8()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;

    sub_1D725B31C();

    v31 = v32;
    if (sub_1D67DE758(v32))
    {
      v3 = *(v32 + 2);
      v4 = OBJC_IVAR____TtC8NewsFeed48DebugFormatDebuggerSourceBreakpointIndicatorView_sourceMap;

      v29 = v2;
      if (!v3)
      {
        v8 = MEMORY[0x1E69E7CC0];
        goto LABEL_33;
      }

      v5 = 0;
      v6 = &v2[v4];
      v7 = v32 + 56;
      v8 = MEMORY[0x1E69E7CC0];
      v9 = v32;
      v28 = v32 + 56;
      while (1)
      {
        v30 = v8;
        v10 = &v7[32 * v5];
        v11 = v5;
        while (1)
        {
          if (v11 >= *(v9 + 2))
          {
            __break(1u);
            goto LABEL_37;
          }

          v13 = *(v10 - 3);
          v14 = *(v10 - 2);
          v0 = *(v10 - 1);
          v15 = *v10;
          v17 = *(v6 + 2);
          v16 = *(v6 + 3);
          if (v13 == *v6 && v14 == *(v6 + 1))
          {
            break;
          }

          v19 = sub_1D72646CC();
          v9 = v31;
          if ((v19 & 1) == 0 || v0 != v17 || v15 != v16)
          {
            goto LABEL_20;
          }

LABEL_11:
          ++v11;
          v10 += 32;
          if (v3 == v11)
          {
            v8 = v30;
            goto LABEL_33;
          }
        }

        if (v0 == v17 && v15 == v16)
        {
          goto LABEL_11;
        }

LABEL_20:

        v8 = v30;
        v32 = v30;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D6999648(0, *(v30 + 2) + 1, 1);
          v8 = v32;
        }

        v21 = *(v8 + 2);
        v20 = *(v8 + 3);
        v22 = v21 + 1;
        if (v21 >= v20 >> 1)
        {
          sub_1D6999648((v20 > 1), v21 + 1, 1);
          v22 = v21 + 1;
          v8 = v32;
        }

        v5 = v11 + 1;
        *(v8 + 2) = v22;
        v23 = &v8[32 * v21];
        *(v23 + 4) = v13;
        *(v23 + 5) = v14;
        *(v23 + 6) = v0;
        *(v23 + 7) = v15;
        v7 = v28;
        v9 = v31;
        if (v3 - 1 == v11)
        {
LABEL_33:

          v32 = v8;

          sub_1D725B32C();
        }
      }
    }

    v0 = v2;
    v3 = *&v2[OBJC_IVAR____TtC8NewsFeed48DebugFormatDebuggerSourceBreakpointIndicatorView_sourceMap];
    v10 = *&v2[OBJC_IVAR____TtC8NewsFeed48DebugFormatDebuggerSourceBreakpointIndicatorView_sourceMap + 8];
    v6 = *&v2[OBJC_IVAR____TtC8NewsFeed48DebugFormatDebuggerSourceBreakpointIndicatorView_sourceMap + 16];
    v11 = *&v2[OBJC_IVAR____TtC8NewsFeed48DebugFormatDebuggerSourceBreakpointIndicatorView_sourceMap + 24];

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v24 = v32;
    }

    else
    {
LABEL_37:
      v24 = sub_1D6994DB4(0, *(v31 + 2) + 1, 1, v31);
    }

    v26 = *(v24 + 2);
    v25 = *(v24 + 3);
    if (v26 >= v25 >> 1)
    {
      v24 = sub_1D6994DB4((v25 > 1), v26 + 1, 1, v24);
    }

    *(v24 + 2) = v26 + 1;
    v27 = &v24[32 * v26];
    *(v27 + 4) = v3;
    *(v27 + 5) = v10;
    *(v27 + 6) = v6;
    *(v27 + 7) = v11;
    v32 = v24;

    sub_1D67DEB4C(&v32);

    sub_1D725B32C();
  }

  return result;
}

uint64_t sub_1D67DE758(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = v1 + OBJC_IVAR____TtC8NewsFeed48DebugFormatDebuggerSourceBreakpointIndicatorView_sourceMap;
  v4 = *(v1 + OBJC_IVAR____TtC8NewsFeed48DebugFormatDebuggerSourceBreakpointIndicatorView_sourceMap);
  v5 = *(v1 + OBJC_IVAR____TtC8NewsFeed48DebugFormatDebuggerSourceBreakpointIndicatorView_sourceMap + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  for (i = (a1 + 56); ; i += 4)
  {
    v10 = *(i - 1);
    v9 = *i;
    v11 = *(i - 3) == v4 && *(i - 2) == v5;
    if (v11 || (sub_1D72646CC()) && v10 == v6 && v9 == v7)
    {
      break;
    }

    if (!--v2)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_1D67DE8C0(void *a1, CGFloat a2, CGFloat a3, double a4, double a5)
{
  v9 = a1;
  [v9 bounds];
  v17.origin.x = UIEdgeInsetsInsetRect(v10, v11, v12, v13, a4, a5);
  v16.x = a2;
  v16.y = a3;
  v14 = CGRectContainsPoint(v17, v16);

  return v14;
}

uint64_t sub_1D67DEA6C(uint64_t a1, uint64_t a2)
{
  sub_1D67DEAF4(0, &qword_1EC88DD40, &type metadata for DebugFormatFileSource, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D67DEAF4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D67DEB4C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D62FFCFC(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1D67DEBB8(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1D67DEBB8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D726449C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1D726276C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1D67DEDEC(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1D67DECB0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D67DECB0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v22 = *a4;
    v4 = (*a4 + 32 * a3 - 32);
    v5 = result - a3;
LABEL_5:
    v19 = v4;
    v20 = a3;
    v6 = (v22 + 32 * a3);
    v7 = *v6;
    v8 = v6[1];
    v9 = v6[2];
    v10 = v6[3];
    v18 = v5;
    while (1)
    {
      v12 = v4[2];
      v11 = v4[3];
      v13 = v7 == *v4 && v8 == v4[1];
      if (v13 || (v21 = v4[3], result = sub_1D72646CC(), v11 = v21, (result & 1) != 0))
      {
        v14 = v9 < v12;
        if (v9 == v12)
        {
          v14 = v10 < v11;
        }

        if (!v14)
        {
LABEL_4:
          a3 = v20 + 1;
          v4 = v19 + 4;
          v5 = v18 - 1;
          if (v20 + 1 == a2)
          {
            return result;
          }

          goto LABEL_5;
        }
      }

      else
      {
        result = sub_1D72646CC();
        if ((result & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      if (!v22)
      {
        break;
      }

      v7 = v4[4];
      v8 = v4[5];
      v9 = v4[6];
      v10 = v4[7];
      v15 = *(v4 + 1);
      *(v4 + 2) = *v4;
      *(v4 + 3) = v15;
      *v4 = v7;
      v4[1] = v8;
      v4[2] = v9;
      v4[3] = v10;
      v4 -= 4;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D67DEDEC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v111 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_115:
    v7 = *v111;
    if (!*v111)
    {
      goto LABEL_153;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_147:
      result = sub_1D62FF50C(v8);
      v8 = result;
    }

    v105 = *(v8 + 2);
    if (v105 >= 2)
    {
      while (*a3)
      {
        v106 = v8;
        v8 = (v105 - 1);
        v107 = *&v106[16 * v105];
        v108 = *&v106[16 * v105 + 24];
        sub_1D67DF56C((*a3 + 32 * v107), (*a3 + 32 * *&v106[16 * v105 + 16]), (*a3 + 32 * v108), v7);
        if (v5)
        {
        }

        if (v108 < v107)
        {
          goto LABEL_140;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v106 = sub_1D62FF50C(v106);
        }

        if (v105 - 2 >= *(v106 + 2))
        {
          goto LABEL_141;
        }

        v109 = &v106[16 * v105];
        *v109 = v107;
        *(v109 + 1) = v108;
        result = sub_1D62FF480(v105 - 1);
        v8 = v106;
        v105 = *(v106 + 2);
        if (v105 <= 1)
        {
        }
      }

      goto LABEL_151;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    v122 = v8;
    if (v7 < v6)
    {
      v10 = *a3;
      v119 = v7;
      v11 = (*a3 + 32 * v7);
      v12 = *v11;
      v13 = v11[1];
      v14 = v9;
      v15 = v11[2];
      v16 = v11[3];
      v112 = v14;
      v17 = (*a3 + 32 * v14);
      v7 = v17[2];
      v18 = v17[3];
      v19 = v12 == *v17 && v13 == v17[1];
      v115 = v6;
      if (v19 || (result = sub_1D72646CC(), v6 = v115, (result & 1) != 0))
      {
        v20 = v15 < v7;
        if (v15 == v7)
        {
          v20 = v16 < v18;
        }

        v125 = v20;
      }

      else
      {
        result = sub_1D72646CC();
        v6 = v115;
        v125 = result;
      }

      v21 = 0;
      v22 = v112 + 2;
      v23 = v10 + 32 * v112 + 48;
      v24 = v119;
      v8 = v122;
      do
      {
        v26 = v22;
        v27 = v24;
        v28 = v21;
        if (v22 >= v6)
        {
          break;
        }

        v30 = *(v23 + 32);
        v29 = *(v23 + 40);
        v7 = *v23;
        v31 = *(v23 + 8);
        v32 = *(v23 + 16) == *(v23 - 16) && *(v23 + 24) == *(v23 - 8);
        if (v32 || (v127 = v22, v117 = *(v23 + 8), v120 = *(v23 + 40), v33 = sub_1D72646CC(), v31 = v117, v29 = v120, v26 = v127, v6 = v115, (v33 & 1) != 0))
        {
          v25 = v29 < v31;
          result = v30 == v7 ? v25 : v30 < v7;
        }

        else
        {
          result = sub_1D72646CC();
          v26 = v127;
          v6 = v115;
        }

        v8 = v122;
        v22 = (v26 + 1);
        v23 += 32;
        v24 = v27 + 1;
        v21 = v28 + 32;
      }

      while (((v125 ^ result) & 1) == 0);
      if (v125)
      {
        v9 = v112;
        if (v26 < v112)
        {
          goto LABEL_144;
        }

        if (v112 < v26)
        {
          v34 = 0;
          v35 = v112;
          do
          {
            if (v35 != v27)
            {
              if (!*a3)
              {
                goto LABEL_150;
              }

              v36 = *a3 + 32 * v112;
              v37 = (v36 + v34);
              v38 = v36 + v28;
              v39 = *v37;
              v40 = v37[1];
              v41 = *(v37 + 1);
              v42 = *(v38 + 48);
              *v37 = *(v38 + 32);
              *(v37 + 1) = v42;
              *(v38 + 32) = v39;
              *(v38 + 40) = v40;
              *(v38 + 48) = v41;
            }

            ++v35;
            v28 -= 32;
            v34 += 32;
            v55 = v35 < v27--;
          }

          while (v55);
        }

        v7 = v26;
      }

      else
      {
        v7 = v26;
        v9 = v112;
      }
    }

    v43 = a3[1];
    if (v7 < v43)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_143;
      }

      if (v7 - v9 < a4)
      {
        v44 = (v9 + a4);
        if (__OFADD__(v9, a4))
        {
          goto LABEL_145;
        }

        if (v44 >= v43)
        {
          v44 = a3[1];
        }

        if (v44 < v9)
        {
LABEL_146:
          __break(1u);
          goto LABEL_147;
        }

        if (v7 != v44)
        {
          break;
        }
      }
    }

LABEL_64:
    if (v7 < v9)
    {
      goto LABEL_142;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D698BA94(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v59 = *(v8 + 2);
    v58 = *(v8 + 3);
    v60 = v59 + 1;
    if (v59 >= v58 >> 1)
    {
      result = sub_1D698BA94((v58 > 1), v59 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v60;
    v61 = &v8[16 * v59];
    *(v61 + 4) = v9;
    *(v61 + 5) = v7;
    v62 = *v111;
    if (!*v111)
    {
      goto LABEL_152;
    }

    if (v59)
    {
      while (1)
      {
        v63 = v60 - 1;
        if (v60 >= 4)
        {
          break;
        }

        if (v60 == 3)
        {
          v64 = *(v8 + 4);
          v65 = *(v8 + 5);
          v74 = __OFSUB__(v65, v64);
          v66 = v65 - v64;
          v67 = v74;
LABEL_84:
          if (v67)
          {
            goto LABEL_131;
          }

          v80 = &v8[16 * v60];
          v82 = *v80;
          v81 = *(v80 + 1);
          v83 = __OFSUB__(v81, v82);
          v84 = v81 - v82;
          v85 = v83;
          if (v83)
          {
            goto LABEL_134;
          }

          v86 = &v8[16 * v63 + 32];
          v88 = *v86;
          v87 = *(v86 + 1);
          v74 = __OFSUB__(v87, v88);
          v89 = v87 - v88;
          if (v74)
          {
            goto LABEL_137;
          }

          if (__OFADD__(v84, v89))
          {
            goto LABEL_138;
          }

          if (v84 + v89 >= v66)
          {
            if (v66 < v89)
            {
              v63 = v60 - 2;
            }

            goto LABEL_105;
          }

          goto LABEL_98;
        }

        v90 = &v8[16 * v60];
        v92 = *v90;
        v91 = *(v90 + 1);
        v74 = __OFSUB__(v91, v92);
        v84 = v91 - v92;
        v85 = v74;
LABEL_98:
        if (v85)
        {
          goto LABEL_133;
        }

        v93 = &v8[16 * v63];
        v95 = *(v93 + 4);
        v94 = *(v93 + 5);
        v74 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v74)
        {
          goto LABEL_136;
        }

        if (v96 < v84)
        {
          goto LABEL_3;
        }

LABEL_105:
        v101 = v63 - 1;
        if (v63 - 1 >= v60)
        {
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
          goto LABEL_146;
        }

        if (!*a3)
        {
          goto LABEL_149;
        }

        v102 = *&v8[16 * v101 + 32];
        v103 = *&v8[16 * v63 + 40];
        sub_1D67DF56C((*a3 + 32 * v102), (*a3 + 32 * *&v8[16 * v63 + 32]), (*a3 + 32 * v103), v62);
        if (v5)
        {
        }

        if (v103 < v102)
        {
          goto LABEL_127;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D62FF50C(v8);
        }

        if (v101 >= *(v8 + 2))
        {
          goto LABEL_128;
        }

        v104 = &v8[16 * v101];
        *(v104 + 4) = v102;
        *(v104 + 5) = v103;
        result = sub_1D62FF480(v63);
        v60 = *(v8 + 2);
        if (v60 <= 1)
        {
          goto LABEL_3;
        }
      }

      v68 = &v8[16 * v60 + 32];
      v69 = *(v68 - 64);
      v70 = *(v68 - 56);
      v74 = __OFSUB__(v70, v69);
      v71 = v70 - v69;
      if (v74)
      {
        goto LABEL_129;
      }

      v73 = *(v68 - 48);
      v72 = *(v68 - 40);
      v74 = __OFSUB__(v72, v73);
      v66 = v72 - v73;
      v67 = v74;
      if (v74)
      {
        goto LABEL_130;
      }

      v75 = &v8[16 * v60];
      v77 = *v75;
      v76 = *(v75 + 1);
      v74 = __OFSUB__(v76, v77);
      v78 = v76 - v77;
      if (v74)
      {
        goto LABEL_132;
      }

      v74 = __OFADD__(v66, v78);
      v79 = v66 + v78;
      if (v74)
      {
        goto LABEL_135;
      }

      if (v79 >= v71)
      {
        v97 = &v8[16 * v63 + 32];
        v99 = *v97;
        v98 = *(v97 + 1);
        v74 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v74)
        {
          goto LABEL_139;
        }

        if (v66 < v100)
        {
          v63 = v60 - 2;
        }

        goto LABEL_105;
      }

      goto LABEL_84;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_115;
    }
  }

  v124 = v5;
  v128 = *a3;
  v45 = (*a3 + 32 * v7 - 32);
  v113 = v9;
  v114 = v44;
  v46 = v9 - v7;
LABEL_48:
  v118 = v45;
  v121 = v7;
  v47 = (v128 + 32 * v7);
  v48 = *v47;
  v49 = v47[1];
  v51 = v47[2];
  v50 = v47[3];
  v116 = v46;
  while (1)
  {
    v53 = v45[2];
    v52 = v45[3];
    v54 = v48 == *v45 && v49 == v45[1];
    if (v54 || (v126 = v45[3], result = sub_1D72646CC(), v52 = v126, (result & 1) != 0))
    {
      v55 = v51 < v53;
      if (v51 == v53)
      {
        v55 = v50 < v52;
      }

      if (!v55)
      {
LABEL_47:
        v7 = (v121 + 1);
        v45 = v118 + 4;
        v46 = v116 - 1;
        if (v121 + 1 != v114)
        {
          goto LABEL_48;
        }

        v7 = v114;
        v5 = v124;
        v8 = v122;
        v9 = v113;
        goto LABEL_64;
      }
    }

    else
    {
      result = sub_1D72646CC();
      if ((result & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    if (!v128)
    {
      break;
    }

    v48 = v45[4];
    v49 = v45[5];
    v51 = v45[6];
    v50 = v45[7];
    v56 = *(v45 + 1);
    *(v45 + 2) = *v45;
    *(v45 + 3) = v56;
    *v45 = v48;
    v45[1] = v49;
    v45[2] = v51;
    v45[3] = v50;
    v45 -= 4;
    if (__CFADD__(v46++, 1))
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
  return result;
}

uint64_t sub_1D67DF56C(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = __dst;
  v5 = __src;
  v6 = __dst - __src;
  v7 = __dst - __src + 31;
  if (__dst - __src >= 0)
  {
    v7 = __dst - __src;
  }

  v8 = v7 >> 5;
  v9 = a3 - __dst;
  v10 = a3 - __dst + 31;
  if (a3 - __dst >= 0)
  {
    v10 = a3 - __dst;
  }

  v11 = v10 >> 5;
  v51 = a4;
  v48 = a3;
  if (v8 >= v10 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v11] <= a4)
    {
      memmove(a4, __dst, 32 * v11);
      a3 = v48;
      a4 = v51;
    }

    v12 = &a4[32 * v11];
    if (v9 < 32 || v4 <= v5)
    {
LABEL_56:
      v23 = v4;
      goto LABEL_57;
    }

    v50 = v5;
    while (1)
    {
      v24 = 0;
      v25 = v12;
      v42 = v4 - 32;
      v49 = a3;
      v43 = v4;
      v44 = v12;
      while (1)
      {
        v26 = &v25[v24];
        v27 = &v25[v24 - 32];
        v28 = *&v25[v24 - 16];
        v29 = *&v25[v24 - 8];
        v31 = *(v4 - 2);
        v30 = *(v4 - 1);
        if (*v27 == *(v4 - 4) && *&v25[v24 - 24] == *(v4 - 3))
        {
          break;
        }

        v45 = *(v4 - 2);
        v47 = *&v25[v24 - 16];
        v33 = *(v4 - 1);
        v34 = sub_1D72646CC();
        v31 = v45;
        v28 = v47;
        v30 = v33;
        v4 = v43;
        v25 = v44;
        a3 = v49;
        a4 = v51;
        if (v34)
        {
          break;
        }

        v36 = sub_1D72646CC();
        v25 = v44;
        a3 = v49;
        a4 = v51;
        if (v36)
        {
          goto LABEL_51;
        }

LABEL_49:
        v37 = &a3[v24];
        if (&a3[v24] != v26)
        {
          v38 = *(v27 + 16);
          *(v37 - 2) = *v27;
          *(v37 - 1) = v38;
        }

        v24 -= 32;
        v12 = &v25[v24];
        if (&v25[v24] <= a4)
        {
          goto LABEL_56;
        }
      }

      v35 = v28 < v31;
      if (v28 == v31)
      {
        v35 = v29 < v30;
      }

      if (!v35)
      {
        goto LABEL_49;
      }

LABEL_51:
      v39 = &a3[v24];
      a3 = &a3[v24 - 32];
      v23 = v42;
      if (v39 != v4)
      {
        v40 = *(v42 + 1);
        *a3 = *v42;
        *(a3 + 1) = v40;
      }

      v12 = &v25[v24];
      if (&v25[v24] > a4)
      {
        v4 = v42;
        if (v42 > v50)
        {
          continue;
        }
      }

      v12 = &v25[v24];
      goto LABEL_57;
    }
  }

  if (a4 != __src || &__src[32 * v8] <= a4)
  {
    memmove(a4, __src, 32 * v8);
    a3 = v48;
    a4 = v51;
  }

  v12 = &a4[32 * v8];
  if (v6 >= 32 && v4 < a3)
  {
    v46 = &a4[32 * v8];
    do
    {
      v14 = *(v4 + 2);
      v13 = *(v4 + 3);
      v16 = *(a4 + 2);
      v15 = *(a4 + 3);
      v17 = *v4 == *a4 && *(v4 + 1) == *(a4 + 1);
      if (v17 || (v52 = a4, v18 = sub_1D72646CC(), v12 = v46, a3 = v48, a4 = v52, (v18 & 1) != 0))
      {
        v19 = v14 < v16;
        if (v14 == v16)
        {
          v19 = v13 < v15;
        }

        if (!v19)
        {
LABEL_25:
          v20 = a4;
          v17 = v5 == a4;
          a4 += 32;
          if (v17)
          {
            goto LABEL_27;
          }

LABEL_26:
          v22 = *(v20 + 1);
          *v5 = *v20;
          *(v5 + 1) = v22;
          goto LABEL_27;
        }
      }

      else
      {
        v21 = sub_1D72646CC();
        v12 = v46;
        a3 = v48;
        a4 = v52;
        if ((v21 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      v20 = v4;
      v17 = v5 == v4;
      v4 += 32;
      if (!v17)
      {
        goto LABEL_26;
      }

LABEL_27:
      v5 += 32;
    }

    while (a4 < v12 && v4 < a3);
  }

  v23 = v5;
LABEL_57:
  if (v23 != a4 || v23 >= &a4[(v12 - a4 + (v12 - a4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v23, a4, 32 * ((v12 - a4) / 32));
  }

  return 1;
}

uint64_t sub_1D67DF8B4()
{
  v1 = v0;
  sub_1D67DFB48();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = (&v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1D725FD5C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = (&v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = [objc_allocWithZone(MEMORY[0x1E69DD070]) initWithView_];
  [v1 bounds];
  v16 = UIEdgeInsetsInsetRect(v12, v13, v14, v15, -8.0, -8.0);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [v1 superview];
  [v1 convertRect:v23 toView:{v16, v18, v20, v22}];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  sub_1D5B5A498(0, &qword_1EC88BDB8);
  *v10 = v11;
  (*(v7 + 104))(v10, *MEMORY[0x1E69DBF98], v6);
  *v5 = v25;
  v5[1] = v27;
  v5[2] = v29;
  v5[3] = v31;
  v5[4] = 0x4010000000000000;
  v32 = *MEMORY[0x1E69DBED0];
  v33 = sub_1D725FCAC();
  v34 = *(v33 - 8);
  (*(v34 + 104))(v5, v32, v33);
  (*(v34 + 56))(v5, 0, 1, v33);
  return sub_1D7262EEC();
}

void sub_1D67DFB48()
{
  if (!qword_1EC88BDB0)
  {
    sub_1D725FCAC();
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88BDB0);
    }
  }
}

uint64_t sub_1D67DFBA4(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v4 = sub_1D7261B9C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (&v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D67E0350();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FormatPluginData();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  refreshed = type metadata accessor for FormatRefreshBlueprintModifier();
  MEMORY[0x1EEE9AC00](refreshed, v18);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = (&v31 - v23);
  sub_1D5B68374(v2 + 16, v33);
  sub_1D67E03A8(a1, v16, type metadata accessor for FormatPluginData);
  sub_1D67E03A8(v32, v12, sub_1D67E0350);
  *v24 = 0x68736572666552;
  v24[1] = 0xE700000000000000;
  sub_1D5B68374(v33, (v24 + 2));
  sub_1D67E03A8(v16, v24 + *(refreshed + 28), type metadata accessor for FormatPluginData);
  sub_1D67E03A8(v12, v24 + *(refreshed + 32), sub_1D67E0350);
  sub_1D5B5DA7C();
  *v8 = sub_1D726308C();
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4);
  v25 = sub_1D7261BBC();
  result = (*(v5 + 8))(v8, v4);
  if (v25)
  {
    v27 = FormatContent.Resolved.slotItems.getter();
    MEMORY[0x1EEE9AC00](v27, v28);
    *(&v31 - 2) = v33;
    *(&v31 - 1) = v16;
    v29 = sub_1D719594C(sub_1D5E2B874, (&v31 - 4), v27);

    sub_1D67E0410(v12, sub_1D67E0350);
    v24[7] = v29;
    sub_1D67E0410(v16, type metadata accessor for FormatPluginData);
    __swift_destroy_boxed_opaque_existential_1(v33);
    sub_1D67E03A8(v24, v20, type metadata accessor for FormatRefreshBlueprintModifier);
    sub_1D6088BCC(0);
    swift_allocObject();
    sub_1D5B85EB8(&qword_1EDF09BF8, type metadata accessor for FormatRefreshBlueprintModifier);
    v30 = sub_1D725D87C();
    sub_1D67E0410(v24, type metadata accessor for FormatRefreshBlueprintModifier);
    return v30;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D67E0064(uint64_t a1)
{
  v3 = type metadata accessor for FormatPluginData();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5B68374(*v1 + 16, v9);
  sub_1D67E03A8(a1, v6, type metadata accessor for FormatPluginData);
  sub_1D5E2B05C(v9, v6, v10);
  sub_1D67E0470(v10, v9);
  sub_1D6088BCC(0);
  swift_allocObject();
  sub_1D67E04CC();
  v7 = sub_1D725D87C();
  sub_1D67E0520(v10);
  return v7;
}

uint64_t sub_1D67E0188(uint64_t a1)
{
  v3 = type metadata accessor for FormatReloadRequest(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = type metadata accessor for FormatReloadBlueprintModifier(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v18[-v13 - 8];
  sub_1D5B68374(*v1 + 16, v18);
  sub_1D67E03A8(a1, v6, type metadata accessor for FormatReloadRequest);
  sub_1D6838568(v18, v6, v14);
  sub_1D67E03A8(v14, v10, type metadata accessor for FormatReloadBlueprintModifier);
  sub_1D6088BCC(0);
  swift_allocObject();
  sub_1D5B85EB8(&qword_1EC88BDC0, type metadata accessor for FormatReloadBlueprintModifier);
  v15 = sub_1D725D87C();
  sub_1D67E0410(v14, type metadata accessor for FormatReloadBlueprintModifier);
  return v15;
}

void sub_1D67E0350()
{
  if (!qword_1EDF170E8)
  {
    sub_1D725DB8C();
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF170E8);
    }
  }
}

uint64_t sub_1D67E03A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D67E0410(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D67E04CC()
{
  result = qword_1EDF09C28;
  if (!qword_1EDF09C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09C28);
  }

  return result;
}

uint64_t sub_1D67E0574(void *a1, unsigned __int8 a2)
{
  result = sub_1D725814C();
  if (a2 - 6 >= 0xC)
  {
    if (a2 > 2u)
    {
      if (a2 != 3)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        [a1 pointSize];
        if (a2 == 4)
        {
          v7 = v6 * -0.125;
        }

        else
        {
          v7 = v6 / 3.0;
        }

        v10 = *&v7;
        v11 = 0;
        sub_1D7257EDC();
        sub_1D67E156C(&qword_1EDF3C418, MEMORY[0x1E69DBE88]);
        v8 = sub_1D725812C();
        sub_1D62DE3AC();
        sub_1D62DE79C();
        sub_1D725830C();
        v8(v9, 0);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v10 = 1;
      v11 = 0;
      sub_1D7257EDC();
      sub_1D67E156C(&qword_1EDF3C418, MEMORY[0x1E69DBE88]);
      v5 = sub_1D725812C();
      sub_1D62DE3AC();
      sub_1D62DE6D8();
    }

    else
    {
      if (a2 < 2u)
      {
        return result;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v10 = 1;
      v11 = 0;
      sub_1D7257EDC();
      sub_1D67E156C(&qword_1EDF3C418, MEMORY[0x1E69DBE88]);
      v5 = sub_1D725812C();
      sub_1D62DE3AC();
      sub_1D62DE614();
    }

    sub_1D725830C();
    v5(v9, 0);
  }

  return result;
}

uint64_t sub_1D67E085C(char a1)
{
  result = 1684828002;
  switch(a1)
  {
    case 1:
      result = 0x63696C617469;
      break;
    case 2:
      result = 0x6E696C7265646E75;
      break;
    case 3:
      result = 0x6874656B69727473;
      break;
    case 4:
      result = 0x7069726373627573;
      break;
    case 5:
      result = 0x7263737265707573;
      break;
    case 6:
      result = 1701080931;
      break;
    case 7:
      result = 1802398060;
      break;
    case 8:
      result = 0x31676E6964616568;
      break;
    case 9:
      result = 0x32676E6964616568;
      break;
    case 10:
      result = 0x33676E6964616568;
      break;
    case 11:
      result = 0x34676E6964616568;
      break;
    case 12:
      result = 0x35676E6964616568;
      break;
    case 13:
      result = 0x36676E6964616568;
      break;
    case 14:
      result = 0x7061726761726170;
      break;
    case 15:
      result = 1851879539;
      break;
    case 16:
      result = 6648432;
      break;
    case 17:
      result = 0x6567616D69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D67E0A1C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D67E1604();
  *a1 = result;
  return result;
}

uint64_t sub_1D67E0A4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D67E085C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D67E0B38()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D67E085C(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D67E0B9C()
{
  sub_1D67E085C(*v0);
  sub_1D72621EC();
}

uint64_t sub_1D67E0BF0()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D67E085C(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D67E0C50(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1D67E085C(*a1);
  v5 = v4;
  if (v3 == sub_1D67E085C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D67E0CD8()
{
  v0 = sub_1D726210C();
  v2 = v1;
  v3 = v0 == 98 && v1 == 0xE100000000000000;
  if (v3 || (v4 = v0, (sub_1D72646CC() & 1) != 0) || (v4 == 0x676E6F727473 ? (v5 = v2 == 0xE600000000000000) : (v5 = 0), v5 || (sub_1D72646CC() & 1) != 0))
  {

    return 0;
  }

  else if (v4 == 28005 && v2 == 0xE200000000000000 || (sub_1D72646CC() & 1) != 0 || v4 == 105 && v2 == 0xE100000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (v4 == 112 && v2 == 0xE100000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 14;
  }

  else if (v4 == 7103844 && v2 == 0xE300000000000000 || (sub_1D72646CC() & 1) != 0 || v4 == 115 && v2 == 0xE100000000000000 || (sub_1D72646CC() & 1) != 0 || v4 == 0x656B69727473 && v2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (v4 == 117 && v2 == 0xE100000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (v4 == 97 && v2 == 0xE100000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 7;
  }

  else if (v4 == 6452595 && v2 == 0xE300000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (v4 == 7370099 && v2 == 0xE300000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (v4 == 12648 && v2 == 0xE200000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 8;
  }

  else if (v4 == 12904 && v2 == 0xE200000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 9;
  }

  else if (v4 == 13160 && v2 == 0xE200000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 10;
  }

  else if (v4 == 13416 && v2 == 0xE200000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 11;
  }

  else if (v4 == 13672 && v2 == 0xE200000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 12;
  }

  else if (v4 == 13928 && v2 == 0xE200000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 13;
  }

  else if (v4 == 1701080931 && v2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (v4 == 1851879539 && v2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 15;
  }

  else if (v4 == 6648432 && v2 == 0xE300000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 16;
  }

  else if (v4 == 6778217 && v2 == 0xE300000000000000)
  {

    return 17;
  }

  else
  {
    v7 = sub_1D72646CC();

    if (v7)
    {
      return 17;
    }

    else
    {
      return 18;
    }
  }
}

uint64_t sub_1D67E1378()
{
  v0 = sub_1D726210C();
  v2 = v1;
  v3 = v0 == 1819112552 && v1 == 0xE400000000000000;
  if (v3 || (v4 = v0, (sub_1D72646CC() & 1) != 0))
  {

    return 0;
  }

  else
  {
    v6 = v4 == 2036625250 && v2 == 0xE400000000000000;
    if (v6 || (sub_1D72646CC() & 1) != 0)
    {

      return 1;
    }

    else if (v4 == 29282 && v2 == 0xE200000000000000)
    {

      return 2;
    }

    else
    {
      v7 = sub_1D72646CC();

      if (v7)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

unint64_t sub_1D67E14D0()
{
  result = qword_1EDF08308;
  if (!qword_1EDF08308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF08308);
  }

  return result;
}

uint64_t sub_1D67E156C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D67E15B4()
{
  if (!qword_1EC88BDD0)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88BDD0);
    }
  }
}

uint64_t sub_1D67E1604()
{
  v0 = sub_1D72648CC();

  if (v0 >= 0x12)
  {
    return 18;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D67E1658()
{
  result = qword_1EDF08300;
  if (!qword_1EDF08300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF08300);
  }

  return result;
}

uint64_t sub_1D67E16B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x1E69E85F0];
  sub_1D5B7B480(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = v27 - v12;
  sub_1D5B7573C(a3, v27 - v12, &qword_1EDF1ADB0, v9);
  v14 = sub_1D726294C();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_1D5B794C8(v13, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);
  }

  else
  {
    sub_1D726293C();
    (*(v15 + 8))(v13, v14);
  }

  v17 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1D726285C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1D726211C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t BundleSubscriptionDetectionManager.timestamp.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC8NewsFeed34BundleSubscriptionDetectionManager_detectionProvider);
  swift_beginAccess();
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  (*(v3 + 8))(v2, v3);
  return swift_endAccess();
}

id BundleSubscriptionDetectionManager.__allocating_init(detectionProvider:configurationManager:bundleSubscriptionManager:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_1D5B791F4(a1, a2, a3);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v8;
}

id BundleSubscriptionDetectionManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BundleSubscriptionDetectionManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D67E1BAC()
{
  v1 = (*v0 + OBJC_IVAR____TtC8NewsFeed34BundleSubscriptionDetectionManager_detectionProvider);
  swift_beginAccess();
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  (*(v3 + 8))(v2, v3);
  return swift_endAccess();
}

uint64_t BundleSubscriptionDetectionManager.remove(observer:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D7261B9C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B5DA7C();
  *v8 = sub_1D726308C();
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4);
  v9 = sub_1D7261BBC();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    v9 = OBJC_IVAR____TtC8NewsFeed34BundleSubscriptionDetectionManager_observers;
    swift_beginAccess();
    v4 = *(v2 + v9);
    v17 = MEMORY[0x1E69E7CC0];
    if (!(v4 >> 62))
    {
      v10 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  else
  {
LABEL_22:
    __break(1u);
  }

  v10 = sub_1D7263BFC();
LABEL_4:

  if (v10)
  {
    v15 = v9;
    v16 = v2;
    v2 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA6FB460](v2, v4);
        v11 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_17:
          __break(1u);
LABEL_18:
          v2 = v16;
          v13 = v17;
          v9 = v15;
          goto LABEL_20;
        }
      }

      else
      {
        if (v2 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_22;
        }

        v11 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          goto LABEL_17;
        }
      }

      if (!swift_unknownObjectWeakLoadStrong() || (swift_unknownObjectRelease(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0) && (v9 = Strong, swift_unknownObjectRelease(), v9 == a1))
      {
      }

      else
      {
        v9 = &v17;
        sub_1D7263E9C();
        sub_1D7263EDC();
        sub_1D7263EEC();
        sub_1D7263EAC();
      }

      ++v2;
      if (v11 == v10)
      {
        goto LABEL_18;
      }
    }
  }

  v13 = MEMORY[0x1E69E7CC0];
LABEL_20:

  *(v2 + v9) = v13;
}

uint64_t sub_1D67E1EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1D67E1F1C, 0, 0);
}

uint64_t sub_1D67E1F1C()
{
  sub_1D5B7F5CC(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t BundleSubscriptionDetectionManager.bundleSubscriptionDidChange(_:previousBundleSubscription:)(void *a1)
{
  v3 = MEMORY[0x1E69E85F0];
  sub_1D5B7B480(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = sub_1D726294C();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v1;
  v9[5] = a1;
  v10 = v1;
  v11 = a1;
  sub_1D67E16B0(0, 0, v7, &unk_1D72EEAA8, v9);

  return sub_1D5B794C8(v7, &qword_1EDF1ADB0, v3);
}

uint64_t sub_1D67E20D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1D67E2DC0, 0, 0);
}

uint64_t sub_1D67E227C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x1E69E85F0];
  sub_1D5B7B480(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v16 - v9;
  v11 = sub_1D726294C();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v3;
  v12[5] = a1;
  v13 = v3;
  v14 = a1;
  sub_1D67E16B0(0, 0, v10, a3, v12);

  return sub_1D5B794C8(v10, &qword_1EDF1ADB0, v6);
}

uint64_t sub_1D67E23D4(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = MEMORY[0x1E69E85F0];
  sub_1D5B7B480(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v19 - v11;
  v13 = sub_1D726294C();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a1;
  v14[5] = a3;
  v15 = a3;
  v16 = a1;
  v17 = v15;
  sub_1D67E16B0(0, 0, v12, a5, v14);

  return sub_1D5B794C8(v12, &qword_1EDF1ADB0, v8);
}

uint64_t sub_1D67E2534(char *a1)
{
  sub_1D5B7B480(0, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v28 = &v25 - v4;
  v5 = sub_1D7261B9C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = swift_projectBox();
  sub_1D5B5DA7C();
  *v9 = sub_1D726308C();
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8020], v5);
  v10 = sub_1D7261BBC();
  v12 = *(v6 + 8);
  v11 = v6 + 8;
  v12(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    result = sub_1D7263BFC();
    v15 = result;
    if (!result)
    {
      return result;
    }

    goto LABEL_4;
  }

  v13 = OBJC_IVAR____TtC8NewsFeed34BundleSubscriptionDetectionManager_observers;
  result = swift_beginAccess();
  v11 = *&a1[v13];
  if (v11 >> 62)
  {
    goto LABEL_16;
  }

  v15 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
    return result;
  }

LABEL_4:
  if (v15 < 1)
  {
    __break(1u);
  }

  else
  {
    v27 = a1;
    v30 = v11 & 0xC000000000000001;

    swift_beginAccess();
    v16 = 0;
    v26 = v15;
    do
    {
      if (v30)
      {
        v17 = MEMORY[0x1DA6FB460](v16, v11);
      }

      else
      {
        v17 = *(v11 + 8 * v16 + 32);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v18 = *(v17 + 24);
        ObjectType = swift_getObjectType();
        v32[3] = type metadata accessor for BundleSubscriptionDetectionManager();
        v32[4] = &protocol witness table for BundleSubscriptionDetectionManager;
        v19 = v11;
        v20 = v27;
        v21 = v28;
        v32[0] = v27;
        v22 = MEMORY[0x1E6969530];
        sub_1D5B7573C(v29, v28, &qword_1EDF45B00, MEMORY[0x1E6969530]);
        v23 = *(v18 + 8);
        v24 = v20;
        v11 = v19;
        v15 = v26;
        v23(v32, v21, ObjectType, v18);

        swift_unknownObjectRelease();
        sub_1D5B794C8(v21, &qword_1EDF45B00, v22);
        __swift_destroy_boxed_opaque_existential_1(v32);
      }

      else
      {
      }

      ++v16;
    }

    while (v15 != v16);
  }

  return result;
}

uint64_t sub_1D67E2868(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(a1, a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D67E28F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D5B64680;

  return sub_1D67E1EFC(a1, v4, v5, v7, v6);
}

uint64_t sub_1D67E29B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D5B64680;

  return sub_1D67E20D8(a1, v4, v5, v7, v6);
}

uint64_t sub_1D67E2A74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D5B64680;

  return sub_1D67E20D8(a1, v4, v5, v7, v6);
}

uint64_t sub_1D67E2BC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D5B64684;

  return sub_1D67E1EFC(a1, v4, v5, v7, v6);
}

uint64_t sub_1D67E2C80(uint64_t a1, uint64_t a2)
{
  sub_1D5B7B480(0, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D67E2D08(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D5B64684;

  return sub_1D5B64588(a1, v4);
}

uint64_t FeedScoringContext.configurationSet.getter()
{
  v1 = *v0;
  if (v1 >> 13 > 2)
  {
    return 0;
  }

  if (v1 >> 13 == 1)
  {
    return qword_1D72EF7F0[v1];
  }

  return FeedHeadlineScoringContext.configurationSet.getter();
}

id FeedScoringContext.scoringConfiguration(treatment:)(id result)
{
  v2 = *v1;
  v3 = v2 >> 13;
  if (v2 >> 13 <= 1)
  {
LABEL_6:
    if (!v3)
    {
      return FeedHeadlineScoringContext.scoringConfiguration(treatment:)(result);
    }

    goto LABEL_10;
  }

  if (v3 == 2)
  {
    return FeedHeadlineScoringContext.scoringConfiguration(treatment:)(result);
  }

  if (v3 == 3)
  {
    result = [result defaultRecipeScoringConfig];
    if (result)
    {
      return result;
    }

    __break(1u);
    goto LABEL_6;
  }

  result = [result defaultScoringConfig];
  if (result)
  {
    return result;
  }

  __break(1u);
LABEL_10:
  if (v2)
  {
    if (v2 != 1)
    {
      goto LABEL_16;
    }

    result = [result curatedIssuesScoringConfig];
    if (result)
    {
      return result;
    }

    __break(1u);
  }

  result = [result defaultScoringConfig];
  if (result)
  {
    return result;
  }

  __break(1u);
LABEL_16:
  result = [result magazineFeedIssueScoringConfig];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id FeedHeadlineScoringContext.scoringConfiguration(treatment:)(id result)
{
  switch(*v1)
  {
    case 1:
      goto LABEL_40;
    case 2:
      goto LABEL_32;
    case 3:
      goto LABEL_36;
    case 4:
      goto LABEL_22;
    case 5:
      goto LABEL_48;
    case 6:
      goto LABEL_54;
    case 7:
      goto LABEL_38;
    case 8:
      goto LABEL_60;
    case 9:
      goto LABEL_26;
    case 0xA:
      goto LABEL_58;
    case 0xB:
      goto LABEL_20;
    case 0xC:
      goto LABEL_24;
    case 0xD:
      goto LABEL_52;
    case 0xE:
      goto LABEL_16;
    case 0xF:
      goto LABEL_34;
    case 0x10:
      goto LABEL_14;
    case 0x11:
      goto LABEL_44;
    case 0x12:
      goto LABEL_56;
    case 0x13:
      goto LABEL_68;
    case 0x14:
      goto LABEL_46;
    case 0x15:
      goto LABEL_50;
    case 0x16:
      goto LABEL_66;
    case 0x17:
      goto LABEL_70;
    case 0x18:
      goto LABEL_30;
    case 0x19:
      goto LABEL_28;
    case 0x1A:
      goto LABEL_76;
    case 0x1B:
      goto LABEL_10;
    case 0x1C:
      goto LABEL_72;
    case 0x1D:
      goto LABEL_74;
    case 0x1E:
      goto LABEL_62;
    case 0x1F:
      goto LABEL_42;
    case 0x20:
      goto LABEL_64;
    case 0x21:
      goto LABEL_18;
    case 0x22:
      goto LABEL_12;
    case 0x23:
      goto LABEL_6;
    case 0x24:
      goto LABEL_8;
    case 0x25:
      goto LABEL_4;
    default:
      result = [result defaultScoringConfig];
      if (result)
      {
        return result;
      }

      __break(1u);
LABEL_4:
      result = [result foodForYouScoringConfig];
      if (!result)
      {
        __break(1u);
LABEL_6:
        result = [result todayWidgetScoringConfig];
        if (!result)
        {
          __break(1u);
LABEL_8:
          result = [result tagWidgetScoringConfig];
          if (!result)
          {
            __break(1u);
LABEL_10:
            result = [result localSectionGroupScoringConfig];
            if (!result)
            {
              __break(1u);
LABEL_12:
              result = [result affinityGroupScoringConfig];
              if (!result)
              {
                __break(1u);
LABEL_14:
                result = [result mySportsGroupScoringConfig];
                if (!result)
                {
                  __break(1u);
LABEL_16:
                  result = [result newspaperMagazineFeedScoringConfig];
                  if (!result)
                  {
                    __break(1u);
LABEL_18:
                    result = [result sportsEventTopicGroupScoringConfig];
                    if (!result)
                    {
                      __break(1u);
LABEL_20:
                      result = [result latestStoriesScoringConfig];
                      if (!result)
                      {
                        __break(1u);
LABEL_22:
                        result = [result articleRecirculationSecondaryScoringConfig];
                        if (!result)
                        {
                          __break(1u);
LABEL_24:
                          result = [result localNewsScoringConfig];
                          if (!result)
                          {
                            __break(1u);
LABEL_26:
                            result = [result forYouScoringConfig];
                            if (!result)
                            {
                              __break(1u);
LABEL_28:
                              result = [result newspaperTodayFeedScoringConfig];
                              if (!result)
                              {
                                __break(1u);
LABEL_30:
                                result = [result highlightsGroupScoringConfig];
                                if (!result)
                                {
                                  __break(1u);
LABEL_32:
                                  result = [result audioFeedScoringConfig];
                                  if (!result)
                                  {
                                    __break(1u);
LABEL_34:
                                    result = [result topicFeedScoringConfig];
                                    if (!result)
                                    {
                                      __break(1u);
LABEL_36:
                                      result = [result articleRecirculationPrimaryScoringConfig];
                                      if (!result)
                                      {
                                        __break(1u);
LABEL_38:
                                        result = [result bestOfBundleScoringConfig];
                                        if (!result)
                                        {
                                          __break(1u);
LABEL_40:
                                          result = [result legacyAudioFeedScoringConfig];
                                          if (!result)
                                          {
                                            __break(1u);
LABEL_42:
                                            result = [result tagRecentStoriesScoringConfig];
                                            if (!result)
                                            {
                                              __break(1u);
LABEL_44:
                                              result = [result mySportsGroupForYouScoringConfig];
                                              if (!result)
                                              {
                                                __break(1u);
LABEL_46:
                                                result = [result introToSportsGroupScoringConfig];
                                                if (!result)
                                                {
                                                  __break(1u);
LABEL_48:
                                                  result = [result articleRecirculationTertiaryScoringConfig];
                                                  if (!result)
                                                  {
                                                    __break(1u);
LABEL_50:
                                                    result = [result introToSportsGroupForYouScoringConfig];
                                                    if (!result)
                                                    {
                                                      __break(1u);
LABEL_52:
                                                      result = [result magazineFeedArticleScoringConfig];
                                                      if (!result)
                                                      {
                                                        __break(1u);
LABEL_54:
                                                        result = [result articleRecirculationQuaternaryScoringConfig];
                                                        if (!result)
                                                        {
                                                          __break(1u);
LABEL_56:
                                                          result = [result mySportsTopicsScoringConfig];
                                                          if (!result)
                                                          {
                                                            __break(1u);
LABEL_58:
                                                            result = [result greatStoriesYouMissedScoringConfig];
                                                            if (!result)
                                                            {
                                                              __break(1u);
LABEL_60:
                                                              result = [result curatedScoringConfig];
                                                              if (!result)
                                                              {
                                                                __break(1u);
LABEL_62:
                                                                result = [result tagForYouGroupScoringConfig];
                                                                if (!result)
                                                                {
                                                                  __break(1u);
LABEL_64:
                                                                  result = [result tagDateRangeScoringConfig];
                                                                  if (!result)
                                                                  {
                                                                    __break(1u);
LABEL_66:
                                                                    result = [result articleListTagFeedGroupScoringConfig];
                                                                    if (!result)
                                                                    {
                                                                      __break(1u);
LABEL_68:
                                                                      result = [result sportsTopStoriesScoringConfig];
                                                                      if (!result)
                                                                      {
                                                                        __break(1u);
LABEL_70:
                                                                        result = [result tagFeedScoringConfig];
                                                                        if (!result)
                                                                        {
                                                                          __break(1u);
LABEL_72:
                                                                          result = [result newspaperSectionGroupScoringConfig];
                                                                          if (!result)
                                                                          {
                                                                            __break(1u);
LABEL_74:
                                                                            result = [result sportsEventArticlesGroupScoringConfig];
                                                                            if (!result)
                                                                            {
                                                                              __break(1u);
LABEL_76:
                                                                              result = [result moreForYouScoringConfig];
                                                                              if (!result)
                                                                              {
                                                                                __break(1u);
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
            }
          }
        }
      }

      return result;
  }
}

id sub_1D67E3420(id result, uint64_t (*a2)(void), SEL *a3, SEL *a4, SEL *a5)
{
  v6 = *v5;
  v7 = v6 >> 13;
  if (v6 >> 13 <= 1)
  {
LABEL_6:
    if (!v7)
    {
      return a2();
    }

    goto LABEL_10;
  }

  if (v7 == 2)
  {
    return a2();
  }

  if (v7 == 3)
  {
    result = [result *a3];
    if (result)
    {
      return result;
    }

    __break(1u);
    goto LABEL_6;
  }

  result = [result *a3];
  if (result)
  {
    return result;
  }

  __break(1u);
LABEL_10:
  if (v6)
  {
    if (v6 != 1)
    {
      goto LABEL_16;
    }

    result = [result *a4];
    if (result)
    {
      return result;
    }

    __break(1u);
  }

  result = [result *a3];
  if (result)
  {
    return result;
  }

  __break(1u);
LABEL_16:
  result = [result *a5];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id FeedHeadlineScoringContext.topicsConfiguration(treatment:)(id result)
{
  switch(*v1)
  {
    case 1:
      goto LABEL_40;
    case 2:
      goto LABEL_32;
    case 3:
      goto LABEL_36;
    case 4:
      goto LABEL_22;
    case 5:
      goto LABEL_48;
    case 6:
      goto LABEL_54;
    case 7:
      goto LABEL_38;
    case 8:
      goto LABEL_60;
    case 9:
      goto LABEL_26;
    case 0xA:
      goto LABEL_58;
    case 0xB:
      goto LABEL_20;
    case 0xC:
      goto LABEL_24;
    case 0xD:
      goto LABEL_52;
    case 0xE:
      goto LABEL_16;
    case 0xF:
      goto LABEL_34;
    case 0x10:
      goto LABEL_14;
    case 0x11:
      goto LABEL_44;
    case 0x12:
      goto LABEL_56;
    case 0x13:
      goto LABEL_68;
    case 0x14:
      goto LABEL_46;
    case 0x15:
      goto LABEL_50;
    case 0x16:
      goto LABEL_66;
    case 0x17:
      goto LABEL_70;
    case 0x18:
      goto LABEL_30;
    case 0x19:
      goto LABEL_28;
    case 0x1A:
      goto LABEL_76;
    case 0x1B:
      goto LABEL_10;
    case 0x1C:
      goto LABEL_72;
    case 0x1D:
      goto LABEL_74;
    case 0x1E:
      goto LABEL_62;
    case 0x1F:
      goto LABEL_42;
    case 0x20:
      goto LABEL_64;
    case 0x21:
      goto LABEL_18;
    case 0x22:
      goto LABEL_12;
    case 0x23:
      goto LABEL_6;
    case 0x24:
      goto LABEL_8;
    case 0x25:
      goto LABEL_4;
    default:
      result = [result defaultTopicsConfig];
      if (result)
      {
        return result;
      }

      __break(1u);
LABEL_4:
      result = [result foodForYouTopicsConfig];
      if (!result)
      {
        __break(1u);
LABEL_6:
        result = [result todayWidgetTopicsConfig];
        if (!result)
        {
          __break(1u);
LABEL_8:
          result = [result tagWidgetTopicsConfig];
          if (!result)
          {
            __break(1u);
LABEL_10:
            result = [result localSectionGroupTopicsConfig];
            if (!result)
            {
              __break(1u);
LABEL_12:
              result = [result affinityGroupTopicsConfig];
              if (!result)
              {
                __break(1u);
LABEL_14:
                result = [result mySportsGroupTopicsConfig];
                if (!result)
                {
                  __break(1u);
LABEL_16:
                  result = [result newspaperMagazineFeedTopicsConfig];
                  if (!result)
                  {
                    __break(1u);
LABEL_18:
                    result = [result sportsEventTopicGroupTopicsConfig];
                    if (!result)
                    {
                      __break(1u);
LABEL_20:
                      result = [result latestStoriesTopicsConfig];
                      if (!result)
                      {
                        __break(1u);
LABEL_22:
                        result = [result articleRecirculationSecondaryTopicsConfig];
                        if (!result)
                        {
                          __break(1u);
LABEL_24:
                          result = [result localNewsTopicsConfig];
                          if (!result)
                          {
                            __break(1u);
LABEL_26:
                            result = [result forYouTopicsConfig];
                            if (!result)
                            {
                              __break(1u);
LABEL_28:
                              result = [result newspaperTodayFeedTopicsConfig];
                              if (!result)
                              {
                                __break(1u);
LABEL_30:
                                result = [result highlightsGroupTopicsConfig];
                                if (!result)
                                {
                                  __break(1u);
LABEL_32:
                                  result = [result audioFeedTopicsConfig];
                                  if (!result)
                                  {
                                    __break(1u);
LABEL_34:
                                    result = [result topicFeedTopicsConfig];
                                    if (!result)
                                    {
                                      __break(1u);
LABEL_36:
                                      result = [result articleRecirculationPrimaryTopicsConfig];
                                      if (!result)
                                      {
                                        __break(1u);
LABEL_38:
                                        result = [result bestOfBundleTopicsConfig];
                                        if (!result)
                                        {
                                          __break(1u);
LABEL_40:
                                          result = [result legacyAudioFeedTopicsConfig];
                                          if (!result)
                                          {
                                            __break(1u);
LABEL_42:
                                            result = [result tagRecentStoriesTopicsConfig];
                                            if (!result)
                                            {
                                              __break(1u);
LABEL_44:
                                              result = [result mySportsGroupForYouTopicsConfig];
                                              if (!result)
                                              {
                                                __break(1u);
LABEL_46:
                                                result = [result introToSportsGroupTopicsConfig];
                                                if (!result)
                                                {
                                                  __break(1u);
LABEL_48:
                                                  result = [result articleRecirculationTertiaryTopicsConfig];
                                                  if (!result)
                                                  {
                                                    __break(1u);
LABEL_50:
                                                    result = [result introToSportsGroupForYouTopicsConfig];
                                                    if (!result)
                                                    {
                                                      __break(1u);
LABEL_52:
                                                      result = [result magazineFeedArticleTopicsConfig];
                                                      if (!result)
                                                      {
                                                        __break(1u);
LABEL_54:
                                                        result = [result articleRecirculationQuaternaryTopicsConfig];
                                                        if (!result)
                                                        {
                                                          __break(1u);
LABEL_56:
                                                          result = [result mySportsTopicsTopicsConfig];
                                                          if (!result)
                                                          {
                                                            __break(1u);
LABEL_58:
                                                            result = [result greatStoriesYouMissedTopicsConfig];
                                                            if (!result)
                                                            {
                                                              __break(1u);
LABEL_60:
                                                              result = [result curatedTopicsConfig];
                                                              if (!result)
                                                              {
                                                                __break(1u);
LABEL_62:
                                                                result = [result tagForYouGroupTopicsConfig];
                                                                if (!result)
                                                                {
                                                                  __break(1u);
LABEL_64:
                                                                  result = [result tagDateRangeTopicsConfig];
                                                                  if (!result)
                                                                  {
                                                                    __break(1u);
LABEL_66:
                                                                    result = [result articleListTagFeedGroupTopicsConfig];
                                                                    if (!result)
                                                                    {
                                                                      __break(1u);
LABEL_68:
                                                                      result = [result sportsTopStoriesTopicsConfig];
                                                                      if (!result)
                                                                      {
                                                                        __break(1u);
LABEL_70:
                                                                        result = [result tagFeedTopicsConfig];
                                                                        if (!result)
                                                                        {
                                                                          __break(1u);
LABEL_72:
                                                                          result = [result newspaperSectionGroupTopicsConfig];
                                                                          if (!result)
                                                                          {
                                                                            __break(1u);
LABEL_74:
                                                                            result = [result sportsEventArticlesGroupTopicsConfig];
                                                                            if (!result)
                                                                            {
                                                                              __break(1u);
LABEL_76:
                                                                              result = [result moreForYouTopicsConfig];
                                                                              if (!result)
                                                                              {
                                                                                __break(1u);
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
            }
          }
        }
      }

      return result;
  }
}

id FeedHeadlineScoringContext.ontologyLevelConfiguration(treatment:)(id result)
{
  switch(*v1)
  {
    case 1:
      goto LABEL_40;
    case 2:
      goto LABEL_32;
    case 3:
      goto LABEL_36;
    case 4:
      goto LABEL_22;
    case 5:
      goto LABEL_48;
    case 6:
      goto LABEL_54;
    case 7:
      goto LABEL_38;
    case 8:
      goto LABEL_60;
    case 9:
      goto LABEL_26;
    case 0xA:
      goto LABEL_58;
    case 0xB:
      goto LABEL_20;
    case 0xC:
      goto LABEL_24;
    case 0xD:
      goto LABEL_52;
    case 0xE:
      goto LABEL_16;
    case 0xF:
      goto LABEL_34;
    case 0x10:
      goto LABEL_14;
    case 0x11:
      goto LABEL_44;
    case 0x12:
      goto LABEL_56;
    case 0x13:
      goto LABEL_68;
    case 0x14:
      goto LABEL_46;
    case 0x15:
      goto LABEL_50;
    case 0x16:
      goto LABEL_66;
    case 0x17:
      goto LABEL_70;
    case 0x18:
      goto LABEL_30;
    case 0x19:
      goto LABEL_28;
    case 0x1A:
      goto LABEL_76;
    case 0x1B:
      goto LABEL_10;
    case 0x1C:
      goto LABEL_72;
    case 0x1D:
      goto LABEL_74;
    case 0x1E:
      goto LABEL_62;
    case 0x1F:
      goto LABEL_42;
    case 0x20:
      goto LABEL_64;
    case 0x21:
      goto LABEL_18;
    case 0x22:
      goto LABEL_12;
    case 0x23:
      goto LABEL_6;
    case 0x24:
      goto LABEL_8;
    case 0x25:
      goto LABEL_4;
    default:
      result = [result defaultOntologyLevelConfig];
      if (result)
      {
        return result;
      }

      __break(1u);
LABEL_4:
      result = [result foodForYouOntologyLevelConfig];
      if (!result)
      {
        __break(1u);
LABEL_6:
        result = [result todayWidgetOntologyLevelConfig];
        if (!result)
        {
          __break(1u);
LABEL_8:
          result = [result tagWidgetOntologyLevelConfig];
          if (!result)
          {
            __break(1u);
LABEL_10:
            result = [result localSectionGroupOntologyLevelConfig];
            if (!result)
            {
              __break(1u);
LABEL_12:
              result = [result affinityGroupOntologyLevelConfig];
              if (!result)
              {
                __break(1u);
LABEL_14:
                result = [result mySportsGroupOntologyLevelConfig];
                if (!result)
                {
                  __break(1u);
LABEL_16:
                  result = [result newspaperMagazineFeedOntologyLevelConfig];
                  if (!result)
                  {
                    __break(1u);
LABEL_18:
                    result = [result sportsEventTopicGroupOntologyLevelConfig];
                    if (!result)
                    {
                      __break(1u);
LABEL_20:
                      result = [result latestStoriesOntologyLevelConfig];
                      if (!result)
                      {
                        __break(1u);
LABEL_22:
                        result = [result articleRecirculationSecondaryOntologyLevelConfig];
                        if (!result)
                        {
                          __break(1u);
LABEL_24:
                          result = [result localNewsOntologyLevelConfig];
                          if (!result)
                          {
                            __break(1u);
LABEL_26:
                            result = [result forYouOntologyLevelConfig];
                            if (!result)
                            {
                              __break(1u);
LABEL_28:
                              result = [result newspaperTodayFeedOntologyLevelConfig];
                              if (!result)
                              {
                                __break(1u);
LABEL_30:
                                result = [result highlightsGroupOntologyLevelConfig];
                                if (!result)
                                {
                                  __break(1u);
LABEL_32:
                                  result = [result audioFeedOntologyLevelConfig];
                                  if (!result)
                                  {
                                    __break(1u);
LABEL_34:
                                    result = [result topicFeedOntologyLevelConfig];
                                    if (!result)
                                    {
                                      __break(1u);
LABEL_36:
                                      result = [result articleRecirculationPrimaryOntologyLevelConfig];
                                      if (!result)
                                      {
                                        __break(1u);
LABEL_38:
                                        result = [result bestOfBundleOntologyLevelConfig];
                                        if (!result)
                                        {
                                          __break(1u);
LABEL_40:
                                          result = [result legacyAudioFeedOntologyLevelConfig];
                                          if (!result)
                                          {
                                            __break(1u);
LABEL_42:
                                            result = [result tagRecentStoriesOntologyLevelConfig];
                                            if (!result)
                                            {
                                              __break(1u);
LABEL_44:
                                              result = [result mySportsGroupForYouOntologyLevelConfig];
                                              if (!result)
                                              {
                                                __break(1u);
LABEL_46:
                                                result = [result introToSportsGroupOntologyLevelConfig];
                                                if (!result)
                                                {
                                                  __break(1u);
LABEL_48:
                                                  result = [result articleRecirculationTertiaryOntologyLevelConfig];
                                                  if (!result)
                                                  {
                                                    __break(1u);
LABEL_50:
                                                    result = [result introToSportsGroupForYouOntologyLevelConfig];
                                                    if (!result)
                                                    {
                                                      __break(1u);
LABEL_52:
                                                      result = [result magazineFeedArticleOntologyLevelConfig];
                                                      if (!result)
                                                      {
                                                        __break(1u);
LABEL_54:
                                                        result = [result articleRecirculationQuaternaryOntologyLevelConfig];
                                                        if (!result)
                                                        {
                                                          __break(1u);
LABEL_56:
                                                          result = [result mySportsTopicsOntologyLevelConfig];
                                                          if (!result)
                                                          {
                                                            __break(1u);
LABEL_58:
                                                            result = [result greatStoriesYouMissedOntologyLevelConfig];
                                                            if (!result)
                                                            {
                                                              __break(1u);
LABEL_60:
                                                              result = [result curatedOntologyLevelConfig];
                                                              if (!result)
                                                              {
                                                                __break(1u);
LABEL_62:
                                                                result = [result tagForYouGroupOntologyLevelConfig];
                                                                if (!result)
                                                                {
                                                                  __break(1u);
LABEL_64:
                                                                  result = [result tagDateRangeOntologyLevelConfig];
                                                                  if (!result)
                                                                  {
                                                                    __break(1u);
LABEL_66:
                                                                    result = [result articleListTagFeedGroupOntologyLevelConfig];
                                                                    if (!result)
                                                                    {
                                                                      __break(1u);
LABEL_68:
                                                                      result = [result sportsTopStoriesOntologyLevelConfig];
                                                                      if (!result)
                                                                      {
                                                                        __break(1u);
LABEL_70:
                                                                        result = [result tagFeedOntologyLevelConfig];
                                                                        if (!result)
                                                                        {
                                                                          __break(1u);
LABEL_72:
                                                                          result = [result newspaperSectionGroupOntologyLevelConfig];
                                                                          if (!result)
                                                                          {
                                                                            __break(1u);
LABEL_74:
                                                                            result = [result sportsEventArticlesGroupOntologyLevelConfig];
                                                                            if (!result)
                                                                            {
                                                                              __break(1u);
LABEL_76:
                                                                              result = [result moreForYouOntologyLevelConfig];
                                                                              if (!result)
                                                                              {
                                                                                __break(1u);
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
            }
          }
        }
      }

      return result;
  }
}

id sub_1D67E3E44(id result, SEL *a2, SEL *a3, SEL *a4)
{
  if (*v4)
  {
    if (*v4 != 1)
    {
      goto LABEL_7;
    }

    result = [result *a3];
    if (result)
    {
      return result;
    }

    __break(1u);
  }

  result = [result *a2];
  if (result)
  {
    return result;
  }

  __break(1u);
LABEL_7:
  result = [result *a4];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_1D67E3EBC(void *a1, SEL *a2)
{
  result = [a1 *a2];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id FeedHeadlineScoringContext.shadowScoringConfiguration(treatment:)(id result)
{
  switch(*v1)
  {
    case 1:
      goto LABEL_40;
    case 2:
      goto LABEL_32;
    case 3:
      goto LABEL_36;
    case 4:
      goto LABEL_22;
    case 5:
      goto LABEL_48;
    case 6:
      goto LABEL_54;
    case 7:
      goto LABEL_38;
    case 8:
      goto LABEL_60;
    case 9:
      goto LABEL_26;
    case 0xA:
      goto LABEL_58;
    case 0xB:
      goto LABEL_20;
    case 0xC:
      goto LABEL_24;
    case 0xD:
      goto LABEL_52;
    case 0xE:
      goto LABEL_16;
    case 0xF:
      goto LABEL_34;
    case 0x10:
      goto LABEL_14;
    case 0x11:
      goto LABEL_44;
    case 0x12:
      goto LABEL_56;
    case 0x13:
      goto LABEL_68;
    case 0x14:
      goto LABEL_46;
    case 0x15:
      goto LABEL_50;
    case 0x16:
      goto LABEL_66;
    case 0x17:
      goto LABEL_70;
    case 0x18:
      goto LABEL_30;
    case 0x19:
      goto LABEL_28;
    case 0x1A:
      goto LABEL_76;
    case 0x1B:
      goto LABEL_10;
    case 0x1C:
      goto LABEL_72;
    case 0x1D:
      goto LABEL_74;
    case 0x1E:
      goto LABEL_62;
    case 0x1F:
      goto LABEL_42;
    case 0x20:
      goto LABEL_64;
    case 0x21:
      goto LABEL_18;
    case 0x22:
      goto LABEL_12;
    case 0x23:
      goto LABEL_6;
    case 0x24:
      goto LABEL_8;
    case 0x25:
      goto LABEL_4;
    default:
      result = [result shadowDefaultScoringConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_4:
      result = [result shadowFoodForYouScoringConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_6:
      result = [result shadowTodayWidgetScoringConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_8:
      result = [result shadowTagWidgetScoringConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_10:
      result = [result shadowLocalSectionGroupScoringConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_12:
      result = [result shadowAffinityGroupScoringConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_14:
      result = [result shadowMySportsGroupScoringConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_16:
      result = [result shadowNewspaperMagazineFeedScoringConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_18:
      result = [result shadowSportsEventTopicGroupScoringConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_20:
      result = [result shadowLatestStoriesScoringConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_22:
      result = [result shadowArticleRecirculationSecondaryScoringConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_24:
      result = [result shadowLocalNewsScoringConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_26:
      result = [result shadowForYouScoringConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_28:
      result = [result shadowNewspaperTodayFeedScoringConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_30:
      result = [result shadowHighlightsGroupScoringConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_32:
      result = [result shadowAudioFeedScoringConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_34:
      result = [result shadowTopicFeedScoringConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_36:
      result = [result shadowArticleRecirculationPrimaryScoringConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_38:
      result = [result shadowBestOfBundleScoringConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_40:
      result = [result shadowLegacyAudioFeedScoringConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_42:
      result = [result shadowTagRecentStoriesScoringConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_44:
      result = [result shadowMySportsGroupForYouScoringConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_46:
      result = [result shadowIntroToSportsGroupScoringConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_48:
      result = [result shadowArticleRecirculationTertiaryScoringConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_50:
      result = [result shadowIntroToSportsGroupForYouScoringConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_52:
      result = [result shadowMagazineFeedArticleScoringConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_54:
      result = [result shadowArticleRecirculationQuaternaryScoringConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_56:
      result = [result shadowMySportsTopicsScoringConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_58:
      result = [result shadowGreatStoriesYouMissedScoringConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_60:
      result = [result shadowCuratedScoringConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_62:
      result = [result shadowTagForYouGroupScoringConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_64:
      result = [result shadowTagDateRangeScoringConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_66:
      result = [result shadowArticleListTagFeedGroupScoringConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_68:
      result = [result shadowSportsTopStoriesScoringConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_70:
      result = [result shadowTagFeedScoringConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_72:
      result = [result shadowNewspaperSectionGroupScoringConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_74:
      result = [result shadowSportsEventArticlesGroupScoringConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_76:
      result = [result shadowMoreForYouScoringConfig];
      if (result)
      {
LABEL_77:
        v2 = result;
        v3 = sub_1D7261D3C();

        return v3;
      }

      else
      {
        __break(1u);
      }

      return result;
  }
}

id FeedScoringContext.shadowTopicsConfiguration(treatment:)(id result)
{
  v2 = *v1;
  v3 = v2 >> 13;
  if (v2 >> 13 <= 1)
  {
LABEL_6:
    if (!v3)
    {
      return FeedHeadlineScoringContext.shadowTopicsConfiguration(treatment:)(result);
    }

    goto LABEL_10;
  }

  if (v3 == 2)
  {
    return FeedHeadlineScoringContext.shadowTopicsConfiguration(treatment:)(result);
  }

  if (v3 == 3)
  {
    result = [result shadowDefaultTopicsConfig];
    if (result)
    {
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_6;
  }

  result = [result shadowDefaultTopicsConfig];
  if (result)
  {
    goto LABEL_17;
  }

  __break(1u);
LABEL_10:
  if (!v2)
  {
    goto LABEL_14;
  }

  if (v2 != 1)
  {
    goto LABEL_16;
  }

  result = [result shadowCuratedIssuesTopicsConfig];
  if (result)
  {
LABEL_17:
    v4 = result;
    v5 = sub_1D726267C();

    return v5;
  }

  __break(1u);
LABEL_14:
  result = [result shadowDefaultTopicsConfig];
  if (result)
  {
    goto LABEL_17;
  }

  __break(1u);
LABEL_16:
  result = [result shadowMagazineFeedIssueTopicsConfig];
  if (result)
  {
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

id FeedHeadlineScoringContext.shadowTopicsConfiguration(treatment:)(id result)
{
  switch(*v1)
  {
    case 1:
      goto LABEL_40;
    case 2:
      goto LABEL_32;
    case 3:
      goto LABEL_36;
    case 4:
      goto LABEL_22;
    case 5:
      goto LABEL_48;
    case 6:
      goto LABEL_54;
    case 7:
      goto LABEL_38;
    case 8:
      goto LABEL_60;
    case 9:
      goto LABEL_26;
    case 0xA:
      goto LABEL_58;
    case 0xB:
      goto LABEL_20;
    case 0xC:
      goto LABEL_24;
    case 0xD:
      goto LABEL_52;
    case 0xE:
      goto LABEL_16;
    case 0xF:
      goto LABEL_34;
    case 0x10:
      goto LABEL_14;
    case 0x11:
      goto LABEL_44;
    case 0x12:
      goto LABEL_56;
    case 0x13:
      goto LABEL_68;
    case 0x14:
      goto LABEL_46;
    case 0x15:
      goto LABEL_50;
    case 0x16:
      goto LABEL_66;
    case 0x17:
      goto LABEL_70;
    case 0x18:
      goto LABEL_30;
    case 0x19:
      goto LABEL_28;
    case 0x1A:
      goto LABEL_76;
    case 0x1B:
      goto LABEL_10;
    case 0x1C:
      goto LABEL_72;
    case 0x1D:
      goto LABEL_74;
    case 0x1E:
      goto LABEL_62;
    case 0x1F:
      goto LABEL_42;
    case 0x20:
      goto LABEL_64;
    case 0x21:
      goto LABEL_18;
    case 0x22:
      goto LABEL_12;
    case 0x23:
      goto LABEL_6;
    case 0x24:
      goto LABEL_8;
    case 0x25:
      goto LABEL_4;
    default:
      result = [result shadowDefaultTopicsConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_4:
      result = [result shadowFoodForYouTopicsConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_6:
      result = [result shadowTodayWidgetTopicsConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_8:
      result = [result shadowTagWidgetTopicsConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_10:
      result = [result shadowLocalSectionGroupTopicsConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_12:
      result = [result shadowAffinityGroupTopicsConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_14:
      result = [result shadowMySportsGroupTopicsConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_16:
      result = [result shadowNewspaperMagazineFeedTopicsConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_18:
      result = [result shadowSportsEventTopicGroupTopicsConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_20:
      result = [result shadowLatestStoriesTopicsConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_22:
      result = [result shadowArticleRecirculationSecondaryTopicsConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_24:
      result = [result shadowLocalNewsTopicsConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_26:
      result = [result shadowForYouTopicsConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_28:
      result = [result shadowNewspaperTodayFeedTopicsConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_30:
      result = [result shadowHighlightsGroupTopicsConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_32:
      result = [result shadowAudioFeedTopicsConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_34:
      result = [result shadowTopicFeedTopicsConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_36:
      result = [result shadowArticleRecirculationPrimaryTopicsConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_38:
      result = [result shadowBestOfBundleTopicsConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_40:
      result = [result shadowLegacyAudioFeedTopicsConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_42:
      result = [result shadowTagRecentStoriesTopicsConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_44:
      result = [result shadowMySportsGroupForYouTopicsConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_46:
      result = [result shadowIntroToSportsGroupTopicsConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_48:
      result = [result shadowArticleRecirculationTertiaryTopicsConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_50:
      result = [result shadowIntroToSportsGroupForYouTopicsConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_52:
      result = [result shadowMagazineFeedArticleTopicsConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_54:
      result = [result shadowArticleRecirculationQuaternaryTopicsConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_56:
      result = [result shadowMySportsTopicsTopicsConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_58:
      result = [result shadowGreatStoriesYouMissedTopicsConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_60:
      result = [result shadowCuratedTopicsConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_62:
      result = [result shadowTagForYouGroupTopicsConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_64:
      result = [result shadowTagDateRangeTopicsConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_66:
      result = [result shadowArticleListTagFeedGroupTopicsConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_68:
      result = [result shadowSportsTopStoriesTopicsConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_70:
      result = [result shadowTagFeedTopicsConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_72:
      result = [result shadowNewspaperSectionGroupTopicsConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_74:
      result = [result shadowSportsEventArticlesGroupTopicsConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_76:
      result = [result shadowMoreForYouTopicsConfig];
      if (result)
      {
LABEL_77:
        v2 = result;
        v3 = sub_1D726267C();

        return v3;
      }

      else
      {
        __break(1u);
      }

      return result;
  }
}

id FeedIssueScoringContext.shadowTopicsConfiguration(treatment:)(id result)
{
  if (*v1)
  {
    if (*v1 != 1)
    {
      goto LABEL_7;
    }

    result = [result shadowCuratedIssuesTopicsConfig];
    if (result)
    {
LABEL_8:
      v2 = result;
      v3 = sub_1D726267C();

      return v3;
    }

    __break(1u);
  }

  result = [result shadowDefaultTopicsConfig];
  if (result)
  {
    goto LABEL_8;
  }

  __break(1u);
LABEL_7:
  result = [result shadowMagazineFeedIssueTopicsConfig];
  if (result)
  {
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

id FeedRecipeScoringContext.shadowTopicsConfiguration(treatment:)(void *a1)
{
  result = [a1 shadowDefaultTopicsConfig];
  if (result)
  {
    v2 = result;
    v3 = sub_1D726267C();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D67E4AA4(id result, uint64_t (*a2)(void), SEL *a3, SEL *a4, SEL *a5)
{
  v6 = *v5;
  v7 = v6 >> 13;
  if (v6 >> 13 <= 1)
  {
LABEL_6:
    if (!v7)
    {
      return a2();
    }

    goto LABEL_10;
  }

  if (v7 == 2)
  {
    return a2();
  }

  if (v7 == 3)
  {
    result = [result *a3];
    if (result)
    {
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_6;
  }

  result = [result *a3];
  if (result)
  {
    goto LABEL_17;
  }

  __break(1u);
LABEL_10:
  if (!v6)
  {
    goto LABEL_14;
  }

  if (v6 != 1)
  {
    goto LABEL_16;
  }

  result = [result *a4];
  if (result)
  {
LABEL_17:
    v8 = result;
    v9 = sub_1D7261D3C();

    return v9;
  }

  __break(1u);
LABEL_14:
  result = [result *a3];
  if (result)
  {
    goto LABEL_17;
  }

  __break(1u);
LABEL_16:
  result = [result *a5];
  if (result)
  {
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

id FeedHeadlineScoringContext.shadowOntologyLevelConfiguration(treatment:)(id result)
{
  switch(*v1)
  {
    case 1:
      goto LABEL_40;
    case 2:
      goto LABEL_32;
    case 3:
      goto LABEL_36;
    case 4:
      goto LABEL_22;
    case 5:
      goto LABEL_48;
    case 6:
      goto LABEL_54;
    case 7:
      goto LABEL_38;
    case 8:
      goto LABEL_60;
    case 9:
      goto LABEL_26;
    case 0xA:
      goto LABEL_58;
    case 0xB:
      goto LABEL_20;
    case 0xC:
      goto LABEL_24;
    case 0xD:
      goto LABEL_52;
    case 0xE:
      goto LABEL_16;
    case 0xF:
      goto LABEL_34;
    case 0x10:
      goto LABEL_14;
    case 0x11:
      goto LABEL_44;
    case 0x12:
      goto LABEL_56;
    case 0x13:
      goto LABEL_68;
    case 0x14:
      goto LABEL_46;
    case 0x15:
      goto LABEL_50;
    case 0x16:
      goto LABEL_66;
    case 0x17:
      goto LABEL_70;
    case 0x18:
      goto LABEL_30;
    case 0x19:
      goto LABEL_28;
    case 0x1A:
      goto LABEL_76;
    case 0x1B:
      goto LABEL_10;
    case 0x1C:
      goto LABEL_72;
    case 0x1D:
      goto LABEL_74;
    case 0x1E:
      goto LABEL_62;
    case 0x1F:
      goto LABEL_42;
    case 0x20:
      goto LABEL_64;
    case 0x21:
      goto LABEL_18;
    case 0x22:
      goto LABEL_12;
    case 0x23:
      goto LABEL_6;
    case 0x24:
      goto LABEL_8;
    case 0x25:
      goto LABEL_4;
    default:
      result = [result shadowDefaultOntologyLevelConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_4:
      result = [result shadowFoodForYouOntologyLevelConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_6:
      result = [result shadowTodayWidgetOntologyLevelConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_8:
      result = [result shadowTagWidgetOntologyLevelConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_10:
      result = [result shadowLocalSectionGroupOntologyLevelConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_12:
      result = [result shadowAffinityGroupOntologyLevelConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_14:
      result = [result shadowMySportsGroupOntologyLevelConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_16:
      result = [result shadowNewspaperMagazineFeedOntologyLevelConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_18:
      result = [result shadowSportsEventTopicGroupOntologyLevelConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_20:
      result = [result shadowLatestStoriesOntologyLevelConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_22:
      result = [result shadowArticleRecirculationSecondaryOntologyLevelConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_24:
      result = [result shadowLocalNewsOntologyLevelConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_26:
      result = [result shadowForYouOntologyLevelConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_28:
      result = [result shadowNewspaperTodayFeedOntologyLevelConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_30:
      result = [result shadowHighlightsGroupOntologyLevelConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_32:
      result = [result shadowAudioFeedOntologyLevelConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_34:
      result = [result shadowTopicFeedOntologyLevelConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_36:
      result = [result shadowArticleRecirculationPrimaryOntologyLevelConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_38:
      result = [result shadowBestOfBundleOntologyLevelConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_40:
      result = [result shadowLegacyAudioFeedOntologyLevelConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_42:
      result = [result shadowTagRecentStoriesOntologyLevelConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_44:
      result = [result shadowMySportsGroupForYouOntologyLevelConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_46:
      result = [result shadowIntroToSportsGroupOntologyLevelConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_48:
      result = [result shadowArticleRecirculationTertiaryOntologyLevelConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_50:
      result = [result shadowIntroToSportsGroupForYouOntologyLevelConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_52:
      result = [result shadowMagazineFeedArticleOntologyLevelConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_54:
      result = [result shadowArticleRecirculationQuaternaryOntologyLevelConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_56:
      result = [result shadowMySportsTopicsOntologyLevelConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_58:
      result = [result shadowGreatStoriesYouMissedOntologyLevelConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_60:
      result = [result shadowCuratedOntologyLevelConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_62:
      result = [result shadowTagForYouGroupOntologyLevelConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_64:
      result = [result shadowTagDateRangeOntologyLevelConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_66:
      result = [result shadowArticleListTagFeedGroupOntologyLevelConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_68:
      result = [result shadowSportsTopStoriesOntologyLevelConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_70:
      result = [result shadowTagFeedOntologyLevelConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_72:
      result = [result shadowNewspaperSectionGroupOntologyLevelConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_74:
      result = [result shadowSportsEventArticlesGroupOntologyLevelConfig];
      if (result)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_76:
      result = [result shadowMoreForYouOntologyLevelConfig];
      if (result)
      {
LABEL_77:
        v2 = result;
        v3 = sub_1D7261D3C();

        return v3;
      }

      else
      {
        __break(1u);
      }

      return result;
  }
}

id sub_1D67E5078(id result, SEL *a2, SEL *a3, SEL *a4)
{
  if (*v4)
  {
    if (*v4 != 1)
    {
      goto LABEL_7;
    }

    result = [result *a3];
    if (result)
    {
LABEL_8:
      v5 = result;
      v6 = sub_1D7261D3C();

      return v6;
    }

    __break(1u);
  }

  result = [result *a2];
  if (result)
  {
    goto LABEL_8;
  }

  __break(1u);
LABEL_7:
  result = [result *a4];
  if (result)
  {
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

id sub_1D67E5128(void *a1, SEL *a2)
{
  result = [a1 *a2];
  if (result)
  {
    v3 = result;
    v4 = sub_1D7261D3C();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t FeedScoringContext.description.getter()
{
  v1 = 0x6E776F6E6B6E55;
  v2 = *v0;
  v3 = v2 >> 13;
  if (v2 >> 13 <= 1)
  {
    if (v3)
    {
      v12 = 0xE700000000000000;
      v14 = 0x28206575737349;
      v13 = *v0;
      if (*v0)
      {
        if (v13 == 1)
        {
          v1 = 0x64657461727543;
        }

        else
        {
          v1 = 0x656E697A6167614DLL;
        }

        if (v13 == 1)
        {
          v12 = 0xE700000000000000;
        }

        else
        {
          v12 = 0xED00006465654620;
        }
      }

      MEMORY[0x1DA6F9910](v1, v12);
    }

    else
    {
      v14 = 0x656E696C64616548;
      v5 = FeedHeadlineScoringContext.description.getter();
      MEMORY[0x1DA6F9910](v5);
    }

    MEMORY[0x1DA6F9910](41, 0xE100000000000000);
    return v14;
  }

  if (v3 == 2)
  {
    v6 = (v2 >> 8) & 0x1F;
    sub_1D7263D4C();

    v14 = 0x656E696C64616548;
    v7 = FeedHeadlineScoringContext.description.getter();
    MEMORY[0x1DA6F9910](v7);

    MEMORY[0x1DA6F9910](0x6575737349202C29, 0xEA00000000002820);
    v8 = 0xE700000000000000;
    v9 = 0x64657461727543;
    if (v6 != 1)
    {
      v9 = 0x656E697A6167614DLL;
      v8 = 0xED00006465654620;
    }

    if (v6)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0x6E776F6E6B6E55;
    }

    if (v6)
    {
      v11 = v8;
    }

    else
    {
      v11 = 0xE700000000000000;
    }

    MEMORY[0x1DA6F9910](v10, v11);

    return v14;
  }

  if (v3 == 3)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6E776F6E6B6E55;
  }
}

unint64_t FeedHeadlineScoringContext.description.getter()
{
  result = 0x6E776F6E6B6E55;
  switch(*v0)
  {
    case 1:
      return 0xD000000000000011;
    case 2:
      v3 = 0x206F69647541;
      return v3 & 0xFFFFFFFFFFFFLL | 0x6546000000000000;
    case 3:
      return 0xD000000000000023;
    case 4:
      return 0xD000000000000025;
    case 5:
      return 0xD000000000000024;
    case 6:
      return 0xD000000000000026;
    case 7:
    case 0xB:
      return 0xD000000000000014;
    case 8:
      return 0x64657461727543;
    case 9:
      return 0x20756F5920726F46;
    case 0xA:
      return 0xD00000000000001ELL;
    case 0xC:
      return 0xD000000000000010;
    case 0xD:
      return 0x656E697A6167614DLL;
    case 0xE:
    case 0x15:
      v2 = 13;
      goto LABEL_34;
    case 0xF:
      v3 = 0x206369706F54;
      return v3 & 0xFFFFFFFFFFFFLL | 0x6546000000000000;
    case 0x10:
      return 0x74726F705320794DLL;
    case 0x11:
    case 0x1C:
    case 0x22:
      return 0xD000000000000017;
    case 0x12:
      return 0xD000000000000010;
    case 0x13:
    case 0x1A:
      return 0xD000000000000012;
    case 0x14:
      v2 = 5;
      goto LABEL_34;
    case 0x16:
    case 0x1D:
      v2 = 11;
      goto LABEL_34;
    case 0x17:
      return 0x6465654620676154;
    case 0x18:
      return 0xD000000000000010;
    case 0x19:
      v2 = 10;
LABEL_34:
      result = v2 | 0xD000000000000010;
      break;
    case 0x1B:
      result = 0xD000000000000013;
      break;
    case 0x1E:
      result = 0xD000000000000016;
      break;
    case 0x1F:
      result = 0x5320746E65636552;
      break;
    case 0x20:
      result = 0xD000000000000010;
      break;
    case 0x21:
      result = 0xD000000000000018;
      break;
    case 0x23:
      result = 0x6957207961646F54;
      break;
    case 0x24:
      result = 0x6764695720676154;
      break;
    case 0x25:
      result = 0x726F4620646F6F46;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t FeedIssueScoringContext.description.getter()
{
  v1 = 0x64657461727543;
  if (*v0 != 1)
  {
    v1 = 0x656E697A6167614DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E55;
  }
}

uint64_t FeedScoringContext.init(from:)@<X0>(void *a1@<X0>, _WORD *a2@<X8>)
{
  v17 = a2;
  sub_1D67E8FC0(0, &qword_1EC88BE08, sub_1D67E8158, &type metadata for FeedScoringContext.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D67E8158();
  sub_1D7264B0C();
  if (!v2)
  {
    v10 = a1;
    v11 = v17;
    v25 = 0;
    sub_1D67E81AC();
    sub_1D726431C();
    v13 = v6;
    if (v26 <= 1u)
    {
      v16 = v11;
      a1 = v10;
      if (v26)
      {
        v18 = 1;
        sub_1D67E82FC();
        sub_1D726431C();
        (*(v13 + 8))(v9, v5);
        *v16 = v19;
      }

      else
      {
        (*(v13 + 8))(v9, v5);
        *v16 = 0x8000;
      }
    }

    else
    {
      v14 = v11;
      if (v26 == 2)
      {
        a1 = v10;
        v20 = 1;
        sub_1D67E82A8();
        sub_1D726431C();
        (*(v13 + 8))(v9, v5);
        *v14 = v21 | 0x2000;
      }

      else
      {
        if (v26 == 3)
        {
          v22 = 1;
          sub_1D67E8254();
          sub_1D726431C();
          (*(v13 + 8))(v9, v5);
          v15 = v23 | 0x4000;
        }

        else
        {
          v24 = 1;
          sub_1D67E8200();
          sub_1D726431C();
          (*(v13 + 8))(v9, v5);
          v15 = 24576;
        }

        a1 = v10;
        *v14 = v15;
      }
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FeedScoringContext.encode(to:)(void *a1)
{
  sub_1D67E8FC0(0, &qword_1EC88BE40, sub_1D67E8158, &type metadata for FeedScoringContext.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v13 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v12 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D67E8158();
  sub_1D7264B5C();
  v10 = v9 >> 13;
  if (v9 >> 13 <= 1)
  {
    if (v10)
    {
      LOBYTE(v14) = 2;
      v15 = 0;
      sub_1D67E8350();
      sub_1D726443C();
      if (!v2)
      {
        LOBYTE(v14) = v9;
        v15 = 1;
        sub_1D67E844C();
        goto LABEL_14;
      }
    }

    else
    {
      LOBYTE(v14) = 1;
      v15 = 0;
      sub_1D67E8350();
      sub_1D726443C();
      if (!v2)
      {
        LOBYTE(v14) = v9;
        v15 = 1;
        sub_1D67E84A0();
        goto LABEL_14;
      }
    }
  }

  else if (v10 == 2)
  {
    LOBYTE(v14) = 3;
    v15 = 0;
    sub_1D67E8350();
    sub_1D726443C();
    if (!v2)
    {
      v14 = v9 & 0x1FFF;
      v15 = 1;
      sub_1D67E83F8();
      goto LABEL_14;
    }
  }

  else
  {
    if (v10 != 3)
    {
      LOBYTE(v14) = 0;
      v15 = 0;
      sub_1D67E8350();
      goto LABEL_14;
    }

    LOBYTE(v14) = 4;
    v15 = 0;
    sub_1D67E8350();
    sub_1D726443C();
    if (!v2)
    {
      LOBYTE(v14) = 1;
      sub_1D67E83A4();
LABEL_14:
      sub_1D726443C();
    }
  }

  return (*(v13 + 8))(v8, v5);
}

uint64_t sub_1D67E5F3C(void *a1)
{
  sub_1D67E8FC0(0, &qword_1EC88BEF0, sub_1D67E8F6C, &type metadata for FeedScoringContext.FeedItemScoringContext.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v12 - v7;
  v9 = *v1;
  v13 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D67E8F6C();
  sub_1D7264B5C();
  v17 = v9;
  v16 = 0;
  sub_1D67E84A0();
  v10 = v12[1];
  sub_1D726443C();
  if (!v10)
  {
    v15 = v13;
    v14 = 1;
    sub_1D67E844C();
    sub_1D726443C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D67E6108@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v16 = a2;
  sub_1D67E8FC0(0, &qword_1EC88BEE0, sub_1D67E8F6C, &type metadata for FeedScoringContext.FeedItemScoringContext.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D67E8F6C();
  sub_1D7264B0C();
  if (!v2)
  {
    v10 = v6;
    v11 = v16;
    v19 = 0;
    sub_1D67E82FC();
    sub_1D726431C();
    v12 = v20;
    v17 = 1;
    sub_1D67E82A8();
    sub_1D726431C();
    (*(v10 + 8))(v9, v5);
    v14 = v18;
    *v11 = v12;
    v11[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D67E6318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D72646CC();

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

uint64_t sub_1D67E63F4(uint64_t a1)
{
  v2 = sub_1D67E8158();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D67E6430(uint64_t a1)
{
  v2 = sub_1D67E8158();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D67E6478()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D67E654C()
{
  sub_1D72621EC();
}

uint64_t sub_1D67E660C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D67E66DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D67E9028();
  *a1 = result;
  return result;
}

void sub_1D67E670C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE500000000000000;
  v6 = 0x6575737369;
  v7 = 0xE400000000000000;
  v8 = 1835365481;
  if (v2 != 3)
  {
    v8 = 0x657069636572;
    v7 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x656E696C64616568;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1D67E684C()
{
  if (*v0)
  {
    return 0x6575737369;
  }

  else
  {
    return 0x656E696C64616568;
  }
}

uint64_t sub_1D67E6884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656E696C64616568 && a2 == 0xE800000000000000;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6575737369 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D72646CC();

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

uint64_t sub_1D67E695C(uint64_t a1)
{
  v2 = sub_1D67E8F6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D67E6998(uint64_t a1)
{
  v2 = sub_1D67E8F6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeedItemScoringContext.configurationSet.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

id sub_1D67E6A84(id result, SEL *a2, SEL *a3)
{
  if (*v3)
  {
    result = [result *a3];
    if (result)
    {
      return result;
    }

    __break(1u);
  }

  result = [result *a2];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t FeedItemScoringContext.description.getter()
{
  if (*v0)
  {
    return 0x656E697A6167614DLL;
  }

  else
  {
    return 0x6E776F6E6B6E55;
  }
}

uint64_t FeedItemScoringContext.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

uint64_t sub_1D67E6BA4()
{
  if (*v0)
  {
    return 0x656E697A6167614DLL;
  }

  else
  {
    return 0x6E776F6E6B6E55;
  }
}

NewsFeed::FeedHeadlineScoringContext_optional __swiftcall FeedHeadlineScoringContext.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72648CC();

  v5 = 0;
  v6 = 20;
  switch(v3)
  {
    case 0:
      goto LABEL_34;
    case 1:
      v5 = 1;
      goto LABEL_34;
    case 2:
      v5 = 2;
      goto LABEL_34;
    case 3:
      v5 = 3;
      goto LABEL_34;
    case 4:
      v5 = 4;
      goto LABEL_34;
    case 5:
      v5 = 5;
      goto LABEL_34;
    case 6:
      v5 = 6;
      goto LABEL_34;
    case 7:
      v5 = 7;
      goto LABEL_34;
    case 8:
      v5 = 8;
      goto LABEL_34;
    case 9:
      v5 = 9;
      goto LABEL_34;
    case 10:
      v5 = 10;
      goto LABEL_34;
    case 11:
      v5 = 11;
      goto LABEL_34;
    case 12:
      v5 = 12;
      goto LABEL_34;
    case 13:
      v5 = 13;
      goto LABEL_34;
    case 14:
      v5 = 14;
      goto LABEL_34;
    case 15:
      v5 = 15;
      goto LABEL_34;
    case 16:
      v5 = 16;
      goto LABEL_34;
    case 17:
      v5 = 17;
      goto LABEL_34;
    case 18:
      v5 = 18;
      goto LABEL_34;
    case 19:
      v5 = 19;
LABEL_34:
      v6 = v5;
      break;
    case 20:
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    case 35:
      v6 = 35;
      break;
    case 36:
      v6 = 36;
      break;
    case 37:
      v6 = 37;
      break;
    default:
      v6 = 38;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t FeedHeadlineScoringContext.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      return 0x754179636167656CLL;
    case 2:
      v2 = 0x466F69647561;
      return v2 & 0xFFFFFFFFFFFFLL | 0x6565000000000000;
    case 3:
      return 0xD000000000000020;
    case 4:
      return 0xD000000000000022;
    case 5:
      return 0xD000000000000021;
    case 6:
      return 0xD000000000000023;
    case 7:
    case 0x1B:
      return 0xD000000000000011;
    case 8:
      return 0x64657461727563;
    case 9:
      return 0x7247756F59726F66;
    case 0xA:
    case 0xE:
      v3 = 10;
      goto LABEL_34;
    case 0xB:
    case 0x14:
      return 0xD000000000000012;
    case 0xC:
      return 0x77654E6C61636F6CLL;
    case 0xD:
      return 0x656E697A6167616DLL;
    case 0xF:
      v2 = 0x466369706F74;
      return v2 & 0xFFFFFFFFFFFFLL | 0x6565000000000000;
    case 0x10:
      return 0x7374726F7053796DLL;
    case 0x11:
      return 0xD000000000000013;
    case 0x12:
      return 0x7374726F7053796DLL;
    case 0x13:
      return 0xD000000000000010;
    case 0x15:
    case 0x1D:
      return 0xD000000000000018;
    case 0x16:
    case 0x19:
      return 0xD000000000000017;
    case 0x17:
      return 0x64656546676174;
    case 0x18:
      return 0x6867696C68676968;
    case 0x1A:
      return 0x59726F4665726F6DLL;
    case 0x1C:
    case 0x21:
      v3 = 5;
LABEL_34:
      result = v3 | 0xD000000000000010;
      break;
    case 0x1E:
      result = 0x6F59726F46676174;
      break;
    case 0x1F:
      result = 0xD000000000000010;
      break;
    case 0x20:
      result = 0x5265746144676174;
      break;
    case 0x22:
      result = 0x7974696E69666661;
      break;
    case 0x23:
      result = 0x6469577961646F74;
      break;
    case 0x24:
      result = 0x6567646957676174;
      break;
    case 0x25:
      result = 0x59726F46646F6F66;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D67E71D4()
{
  sub_1D7264A0C();
  FeedHeadlineScoringContext.rawValue.getter();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D67E723C()
{
  FeedHeadlineScoringContext.rawValue.getter();
  sub_1D72621EC();
}

uint64_t sub_1D67E72A0()
{
  sub_1D7264A0C();
  FeedHeadlineScoringContext.rawValue.getter();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D67E7310@<X0>(unint64_t *a1@<X8>)
{
  result = FeedHeadlineScoringContext.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D67E7338()
{
  v0 = FeedHeadlineScoringContext.rawValue.getter();
  v2 = v1;
  if (v0 == FeedHeadlineScoringContext.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D72646CC();
  }

  return v5 & 1;
}

NewsFeed::FeedIssueScoringContext_optional __swiftcall FeedIssueScoringContext.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FeedIssueScoringContext.rawValue.getter()
{
  v1 = 0x64657461727563;
  if (*v0 != 1)
  {
    v1 = 0x656E697A6167616DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_1D67E7548()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D67E75F4()
{
  sub_1D72621EC();
}

uint64_t sub_1D67E768C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D67E7740(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x64657461727563;
  if (v2 != 1)
  {
    v5 = 0x656E697A6167616DLL;
    v4 = 0xEC00000064656546;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D67E77A8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x64657461727563;
  if (v2 != 1)
  {
    v5 = 0x656E697A6167616DLL;
    v4 = 0xEC00000064656546;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0x64657461727563;
  if (*a2 != 1)
  {
    v8 = 0x656E697A6167616DLL;
    v3 = 0xEC00000064656546;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D67E7968()
{
  v1 = 0x64657461727543;
  if (*v0 != 1)
  {
    v1 = 0x656E697A6167614DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E55;
  }
}

uint64_t FeedRecipeScoringContext.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D72641CC();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D67E7A40()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D67E7AAC()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D67E7AFC@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D72641CC();

  *a1 = v2 != 0;
  return result;
}

uint64_t FeedGroupingEligibility.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t FeedScoringContext.groupingEligibilty(for:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v4 = 0;
  v5 = *v2 >> 13;
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      result = [result foodGroupingAvailability];
      v4 = result & 2;
      if (result)
      {
        v4 = 1;
      }
    }
  }

  else if (v5 - 1 >= 2)
  {
    result = [result groupingEligibility];
    if (result >= 4)
    {
      v4 = 0;
    }

    else
    {
      v4 = result;
    }
  }

  *a2 = v4;
  return result;
}

id FeedScoringContext.groupingEligibilty(for:)@<X0>(id result@<X0>, char *a2@<X8>)
{
  v4 = 0;
  v5 = *v2 >> 13;
  if (v5 > 2)
  {
    if (v5 != 3)
    {
      goto LABEL_13;
    }

    v6 = &selRef_isEligibleForFoodGroupingIfFavorited;
    v7 = &selRef_isEligibleForFoodGroupingIfAutofavorited;
    v8 = &selRef_isEligibleForFoodGrouping;
  }

  else
  {
    if (v5 - 1 < 2)
    {
      goto LABEL_13;
    }

    v6 = &selRef_isEligibleForGroupingIfFavorited;
    v7 = &selRef_isEligibleForGroupingIfAutofavorited;
    v8 = &selRef_isEligibleForGrouping;
  }

  v9 = result;
  v10 = [result *v8];
  v11 = [v9 *v7];
  result = [v9 *v6];
  if (result)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  if (v11)
  {
    v4 = 3;
  }

  if (v10)
  {
    v4 = 1;
  }

LABEL_13:
  *a2 = v4;
  return result;
}

uint64_t _s8NewsFeed0B14ScoringContextO2eeoiySbAC_ACtFZ_0(_WORD *a1, _WORD *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 13;
  if (v2 >> 13 <= 1)
  {
    if (!v4)
    {
      if (v3 < 0x2000)
      {
        v5 = FeedHeadlineScoringContext.rawValue.getter();
        v7 = v6;
        if (v5 == FeedHeadlineScoringContext.rawValue.getter() && v7 == v8)
        {
          v9 = 1;
        }

        else
        {
          v9 = sub_1D72646CC();
        }

        return v9 & 1;
      }

      goto LABEL_25;
    }

    if ((v3 & 0xE000) != 0x2000)
    {
      goto LABEL_25;
    }

    v14 = *a2;
    v15 = *a1;
    if (*a1)
    {
      if (v15 == 1)
      {
        v16 = 0x64657461727563;
      }

      else
      {
        v16 = 0x656E697A6167616DLL;
      }

      if (v15 == 1)
      {
        v17 = 0xE700000000000000;
      }

      else
      {
        v17 = 0xEC00000064656546;
      }
    }

    else
    {
      v17 = 0xE700000000000000;
      v16 = 0x6E776F6E6B6E75;
    }

    v22 = 0xE700000000000000;
    v28 = 0x64657461727563;
    if (v14 != 1)
    {
      v28 = 0x656E697A6167616DLL;
      v22 = 0xEC00000064656546;
    }

    v26 = v14 == 0;
    if (*a2)
    {
      v27 = v28;
    }

    else
    {
      v27 = 0x6E776F6E6B6E75;
    }
  }

  else
  {
    if (v4 != 2)
    {
      if (v4 == 3)
      {
        if ((v3 & 0xE000) != 0x6000)
        {
          goto LABEL_25;
        }

LABEL_16:
        v9 = 1;
        return v9 & 1;
      }

      if (v3 == 0x8000)
      {
        goto LABEL_16;
      }

LABEL_25:
      v9 = 0;
      return v9 & 1;
    }

    if ((v3 & 0xE000) != 0x4000)
    {
      goto LABEL_25;
    }

    v10 = FeedHeadlineScoringContext.rawValue.getter();
    v12 = v11;
    if (v10 == FeedHeadlineScoringContext.rawValue.getter() && v12 == v13)
    {
    }

    else
    {
      v19 = sub_1D72646CC();

      v9 = 0;
      if ((v19 & 1) == 0)
      {
        return v9 & 1;
      }
    }

    v20 = (v2 >> 8) & 0x1F;
    v21 = (v3 >> 8) & 0x1F;
    v22 = 0xE700000000000000;
    v23 = 0xE700000000000000;
    v24 = 0x64657461727563;
    if (v20 != 1)
    {
      v24 = 0x656E697A6167616DLL;
      v23 = 0xEC00000064656546;
    }

    if (v20)
    {
      v16 = v24;
    }

    else
    {
      v16 = 0x6E776F6E6B6E75;
    }

    if (v20)
    {
      v17 = v23;
    }

    else
    {
      v17 = 0xE700000000000000;
    }

    v25 = 0x64657461727563;
    if (v21 != 1)
    {
      v25 = 0x656E697A6167616DLL;
      v22 = 0xEC00000064656546;
    }

    v26 = v21 == 0;
    if (v21)
    {
      v27 = v25;
    }

    else
    {
      v27 = 0x6E776F6E6B6E75;
    }
  }

  if (v26)
  {
    v29 = 0xE700000000000000;
  }

  else
  {
    v29 = v22;
  }

  if (v16 == v27 && v17 == v29)
  {

    v9 = 1;
    return v9 & 1;
  }

  v30 = sub_1D72646CC();

  return v30 & 1;
}

unint64_t sub_1D67E8158()
{
  result = qword_1EC88BE10;
  if (!qword_1EC88BE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BE10);
  }

  return result;
}

unint64_t sub_1D67E81AC()
{
  result = qword_1EC88BE18;
  if (!qword_1EC88BE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BE18);
  }

  return result;
}

unint64_t sub_1D67E8200()
{
  result = qword_1EC88BE20;
  if (!qword_1EC88BE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BE20);
  }

  return result;
}

unint64_t sub_1D67E8254()
{
  result = qword_1EC88BE28;
  if (!qword_1EC88BE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BE28);
  }

  return result;
}

unint64_t sub_1D67E82A8()
{
  result = qword_1EC88BE30;
  if (!qword_1EC88BE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BE30);
  }

  return result;
}

unint64_t sub_1D67E82FC()
{
  result = qword_1EC88BE38;
  if (!qword_1EC88BE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BE38);
  }

  return result;
}

unint64_t sub_1D67E8350()
{
  result = qword_1EC88BE48;
  if (!qword_1EC88BE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BE48);
  }

  return result;
}

unint64_t sub_1D67E83A4()
{
  result = qword_1EC88BE50;
  if (!qword_1EC88BE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BE50);
  }

  return result;
}

unint64_t sub_1D67E83F8()
{
  result = qword_1EC88BE58;
  if (!qword_1EC88BE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BE58);
  }

  return result;
}

unint64_t sub_1D67E844C()
{
  result = qword_1EC88BE60;
  if (!qword_1EC88BE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BE60);
  }

  return result;
}

unint64_t sub_1D67E84A0()
{
  result = qword_1EC88BE68;
  if (!qword_1EC88BE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BE68);
  }

  return result;
}

unint64_t sub_1D67E84F8()
{
  result = qword_1EC88BE70;
  if (!qword_1EC88BE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BE70);
  }

  return result;
}

unint64_t sub_1D67E854C(uint64_t a1)
{
  result = sub_1D67E8574();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D67E8574()
{
  result = qword_1EC88BE78;
  if (!qword_1EC88BE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BE78);
  }

  return result;
}

unint64_t sub_1D67E85CC()
{
  result = qword_1EC88BE80;
  if (!qword_1EC88BE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BE80);
  }

  return result;
}

unint64_t sub_1D67E8620(uint64_t a1)
{
  result = sub_1D67E8648();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D67E8648()
{
  result = qword_1EC88BE88;
  if (!qword_1EC88BE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BE88);
  }

  return result;
}

unint64_t sub_1D67E86A0()
{
  result = qword_1EC88BE90;
  if (!qword_1EC88BE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BE90);
  }

  return result;
}

unint64_t sub_1D67E86F4(uint64_t a1)
{
  result = sub_1D67E871C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D67E871C()
{
  result = qword_1EC88BE98;
  if (!qword_1EC88BE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BE98);
  }

  return result;
}

unint64_t sub_1D67E8774()
{
  result = qword_1EC88BEA0;
  if (!qword_1EC88BEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BEA0);
  }

  return result;
}

unint64_t sub_1D67E87C8(uint64_t a1)
{
  result = sub_1D67E87F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D67E87F0()
{
  result = qword_1EC88BEA8;
  if (!qword_1EC88BEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BEA8);
  }

  return result;
}

unint64_t sub_1D67E8848()
{
  result = qword_1EC88BEB0;
  if (!qword_1EC88BEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BEB0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FeedScoringContext(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 65284 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65284 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65284;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65284;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65284;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 13) | (8 * (HIBYTE(*a1) & 0x1C | (*a1 >> 6)))) ^ 0xFF;
  if (v6 >= 0xFB)
  {
    v6 = -1;
  }

  return v6 + 1;
}

_WORD *storeEnumTagSinglePayload for FeedScoringContext(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65284 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65284 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 16) + 1;
    *result = a2 - 252;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = (32 * (-a2 & 0xE0) - (a2 << 13)) & 0xFF3F | (((-a2 >> 3) & 3) << 6);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D67E8A0C(unsigned __int16 *a1)
{
  v1 = *a1;
  v2 = v1;
  v3 = v1 >> 13;
  v4 = (v1 & 0x3F | (((v1 >> 8) & 3) << 6)) + 4;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

_WORD *sub_1D67E8A44(_WORD *result, unsigned int a2)
{
  if (a2 < 4)
  {
    *result = *result & 0x33F | (a2 << 13);
  }

  else
  {
    *result = (4 * (a2 - 4)) & 0x300 | (a2 - 4) & 0x3F | 0x8000;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FeedHeadlineScoringContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDB)
  {
    goto LABEL_17;
  }

  if (a2 + 37 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 37) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 37;
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

      return (*a1 | (v4 << 8)) - 37;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 37;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x26;
  v8 = v6 - 38;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FeedHeadlineScoringContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 37 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 37) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDB)
  {
    v4 = 0;
  }

  if (a2 > 0xDA)
  {
    v5 = ((a2 - 219) >> 8) + 1;
    *result = a2 + 37;
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
    *result = a2 + 37;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t dispatch thunk of FeedGroupingContextType.groupingEligibilty(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 8))();
}

{
  return (*(a3 + 16))();
}

uint64_t getEnumTagSinglePayload for FeedScoringContext.FeedItemScoringContext(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FeedScoringContext.FeedItemScoringContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D67E8DBC()
{
  result = qword_1EC88BEB8;
  if (!qword_1EC88BEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BEB8);
  }

  return result;
}

unint64_t sub_1D67E8E14()
{
  result = qword_1EC88BEC0;
  if (!qword_1EC88BEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BEC0);
  }

  return result;
}

unint64_t sub_1D67E8E6C()
{
  result = qword_1EC88BEC8;
  if (!qword_1EC88BEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BEC8);
  }

  return result;
}

unint64_t sub_1D67E8EC4()
{
  result = qword_1EC88BED0;
  if (!qword_1EC88BED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BED0);
  }

  return result;
}

unint64_t sub_1D67E8F18()
{
  result = qword_1EC88BED8;
  if (!qword_1EC88BED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BED8);
  }

  return result;
}

unint64_t sub_1D67E8F6C()
{
  result = qword_1EC88BEE8;
  if (!qword_1EC88BEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BEE8);
  }

  return result;
}

void sub_1D67E8FC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1D67E9028()
{
  v0 = sub_1D72641CC();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D67E9074()
{
  result = qword_1EC88BEF8;
  if (!qword_1EC88BEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BEF8);
  }

  return result;
}

unint64_t sub_1D67E90C8()
{
  result = qword_1EC88BF00;
  if (!qword_1EC88BF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BF00);
  }

  return result;
}

unint64_t sub_1D67E911C()
{
  result = qword_1EC88BF08;
  if (!qword_1EC88BF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BF08);
  }

  return result;
}

unint64_t sub_1D67E9184()
{
  result = qword_1EC88BF10;
  if (!qword_1EC88BF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BF10);
  }

  return result;
}

unint64_t sub_1D67E91DC()
{
  result = qword_1EC88BF18;
  if (!qword_1EC88BF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BF18);
  }

  return result;
}

unint64_t sub_1D67E9234()
{
  result = qword_1EC88BF20;
  if (!qword_1EC88BF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BF20);
  }

  return result;
}

uint64_t FormatSupplementaryNodePinEdge.rawValue.getter()
{
  if (*v0)
  {
    return 0x676E696C69617274;
  }

  else
  {
    return 0x676E696461656CLL;
  }
}

NewsFeed::FormatSupplementaryNodePinEdge_optional __swiftcall FormatSupplementaryNodePinEdge.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D67E9328(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x676E696C69617274;
  }

  else
  {
    v3 = 0x676E696461656CLL;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x676E696C69617274;
  }

  else
  {
    v5 = 0x676E696461656CLL;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
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
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

unint64_t sub_1D67E93D4()
{
  result = qword_1EDF09B28;
  if (!qword_1EDF09B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09B28);
  }

  return result;
}

uint64_t sub_1D67E9428()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D67E94AC()
{
  sub_1D72621EC();
}

uint64_t sub_1D67E951C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D67E959C@<X0>(char *a1@<X8>)
{
  v2 = sub_1D72641CC();

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

void sub_1D67E95FC(uint64_t *a1@<X8>)
{
  v2 = 0x676E696461656CLL;
  if (*v1)
  {
    v2 = 0x676E696C69617274;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1D67E963C(uint64_t a1)
{
  *(a1 + 8) = sub_1D67E966C();
  result = sub_1D67E96C0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D67E966C()
{
  result = qword_1EC88BF28;
  if (!qword_1EC88BF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BF28);
  }

  return result;
}

unint64_t sub_1D67E96C0()
{
  result = qword_1EDF09B20;
  if (!qword_1EDF09B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09B20);
  }

  return result;
}

unint64_t sub_1D67E9714(uint64_t a1)
{
  result = sub_1D6666E5C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D67E973C(void *a1)
{
  a1[1] = sub_1D67E9774();
  a1[2] = sub_1D67E97C8();
  result = sub_1D67E93D4();
  a1[3] = result;
  return result;
}

unint64_t sub_1D67E9774()
{
  result = qword_1EDF09B18;
  if (!qword_1EDF09B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09B18);
  }

  return result;
}

unint64_t sub_1D67E97C8()
{
  result = qword_1EDF09B30;
  if (!qword_1EDF09B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09B30);
  }

  return result;
}

uint64_t PaidBundleConfigManager.__allocating_init(configurationManager:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

id PaidBundleConfigManager.currentConfiguration.getter()
{
  v1 = [*(v0 + 16) possiblyUnfetchedAppConfiguration];
  result = [v1 respondsToSelector_];
  if (result)
  {
    v3 = [v1 paidBundleConfig];
    swift_unknownObjectRelease();
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PaidBundleConfigManager.fetchConfiguration()()
{
  sub_1D5C483D4();
  sub_1D725BDCC();
  v0 = sub_1D725B92C();
  sub_1D67E9A7C();
  v1 = sub_1D725BA7C();

  return v1;
}

{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](sub_1D67E9AE8, 0, 0);
}

uint64_t sub_1D67E99F4(id *a1)
{
  v1 = *a1;
  result = [*a1 respondsToSelector_];
  if (result)
  {
    [v1 paidBundleConfig];
    sub_1D67EA154();
    swift_allocObject();
    return sub_1D725BB1C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1D67E9A7C()
{
  result = qword_1EDF04410;
  if (!qword_1EDF04410)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDF04410);
  }

  return result;
}

uint64_t sub_1D67E9AE8()
{
  ObjectType = swift_getObjectType();
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1D67E9B94;

  return FCNewsAppConfigurationManager.fetchConfiguration(cachedOnly:)(0, ObjectType);
}

uint64_t sub_1D67E9B94(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 32) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D67E9CC8, 0, 0);
  }
}

uint64_t sub_1D67E9CC8()
{
  if ([*(v0 + 32) respondsToSelector_])
  {
    v1 = [*(v0 + 32) paidBundleConfig];
    swift_unknownObjectRelease();
    v2 = *(v0 + 8);

    return v2(v1);
  }

  else
  {
    sub_1D67E9DE0();
    swift_allocError();
    *v4 = 1;
    swift_willThrow();
    swift_unknownObjectRelease();
    v5 = *(v0 + 8);

    return v5();
  }
}

unint64_t sub_1D67E9DE0()
{
  result = qword_1EC88BF30;
  if (!qword_1EC88BF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BF30);
  }

  return result;
}

uint64_t sub_1D67E9E54()
{
  sub_1D5C483D4();
  sub_1D725BDCC();
  v0 = sub_1D725B92C();
  sub_1D67E9A7C();
  v1 = sub_1D725BA7C();

  return v1;
}

uint64_t sub_1D67E9EF0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D5BAF844;

  return PaidBundleConfigManager.fetchConfiguration()();
}

uint64_t dispatch thunk of PaidBundleConfigManagerType.fetchConfiguration()(uint64_t a1, uint64_t a2)
{
  return (*(a2 + 16))();
}

{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D5E97EA8;

  return v7(a1, a2);
}

unint64_t sub_1D67EA100()
{
  result = qword_1EC88BF38;
  if (!qword_1EC88BF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BF38);
  }

  return result;
}

void sub_1D67EA154()
{
  if (!qword_1EDF178E0)
  {
    sub_1D67E9A7C();
    v0 = sub_1D725BC0C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF178E0);
    }
  }
}

unint64_t sub_1D67EA1C8()
{
  v1 = *(v0 + 48);
  if (v1 > 5)
  {
    if (v1 == 7)
    {
      v6 = 0xD000000000000017;
    }

    else
    {
      v6 = 0xD000000000000012;
    }

    if (v1 == 6)
    {
      v6 = 0xD000000000000017;
    }

    if (*(v0 + 48) <= 8u)
    {
      return v6;
    }

    else
    {
      return 0xD000000000000014;
    }
  }

  else
  {
    v2 = 0x726F66736E617274;
    v3 = 0xD000000000000011;
    v4 = 0xD000000000000015;
    if (v1 != 4)
    {
      v4 = 0xD000000000000017;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    if (*(v0 + 48))
    {
      v2 = 0xD000000000000011;
    }

    if (*(v0 + 48) <= 2u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

unint64_t sub_1D67EA354@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  if (*(v1 + 48) > 5u)
  {
    goto LABEL_13;
  }

  if (*(v1 + 48) < 4u)
  {
    if (v4)
    {
      *(a1 + 24) = MEMORY[0x1E69E7DE0];
      v11 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();
      v12 = v11();
      v13 = sub_1D5E02AFC(v12, v4);

      if (!v2)
      {
        goto LABEL_19;
      }

      return __swift_deallocate_boxed_opaque_existential_0(a1);
    }

    goto LABEL_17;
  }

  if (*(v1 + 48) != 4)
  {
LABEL_13:
    if (v4)
    {
      *(a1 + 24) = MEMORY[0x1E69E7DE0];
      v14 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();
      v15 = v14();
      v16 = sub_1D5E02AFC(v15, v4);
      if (!v2)
      {
        v13 = v16;

LABEL_19:
        *a1 = v13;
        return result;
      }

      return __swift_deallocate_boxed_opaque_existential_0(a1);
    }

LABEL_17:
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  if (!v4)
  {
    goto LABEL_17;
  }

  v5 = *(v1 + 8);
  v6 = off_1F51AF338[0];
  type metadata accessor for FormatNodeContext();

  v7 = v6();
  v8 = sub_1D5E02AFC(v7, v4);
  if (v2)
  {

    return sub_1D5CDE22C(v4);
  }

  else
  {
    v9 = v8;

    v10 = v6();
    v17 = sub_1D5E02AFC(v10, v5);

    sub_1D5CDE22C(v4);
    v18 = [objc_opt_self() valueWithCGSize_];
    result = sub_1D67ED83C();
    *(a1 + 24) = result;
    *a1 = v18;
  }

  return result;
}

unint64_t sub_1D67EA620@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 8);
  if (*(v1 + 48) > 5u)
  {
    goto LABEL_13;
  }

  if (*(v1 + 48) < 4u)
  {
    if (v4)
    {
      *(a1 + 24) = MEMORY[0x1E69E7DE0];
      v12 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();
      v13 = v12();
      v14 = sub_1D5E02AFC(v13, v4);

      if (!v2)
      {
        goto LABEL_19;
      }

      return __swift_deallocate_boxed_opaque_existential_0(a1);
    }

    goto LABEL_17;
  }

  if (*(v1 + 48) != 4)
  {
LABEL_13:
    if (v4)
    {
      *(a1 + 24) = MEMORY[0x1E69E7DE0];
      v15 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();
      v16 = v15();
      v17 = sub_1D5E02AFC(v16, v4);
      if (!v2)
      {
        v14 = v17;

LABEL_19:
        *a1 = v14;
        return result;
      }

      return __swift_deallocate_boxed_opaque_existential_0(a1);
    }

LABEL_17:
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  v5 = *(v1 + 16);
  if (!v5)
  {
    goto LABEL_17;
  }

  v6 = *(v1 + 24);
  v7 = off_1F51AF338[0];
  type metadata accessor for FormatNodeContext();

  v8 = v7();
  v9 = sub_1D5E02AFC(v8, v5);
  if (v2)
  {

    return sub_1D5CDE22C(v5);
  }

  else
  {
    v10 = v9;

    v11 = v7();
    v18 = sub_1D5E02AFC(v11, v6);

    sub_1D5CDE22C(v5);
    v19 = [objc_opt_self() valueWithCGSize_];
    result = sub_1D67ED83C();
    *(a1 + 24) = result;
    *a1 = v19;
  }

  return result;
}