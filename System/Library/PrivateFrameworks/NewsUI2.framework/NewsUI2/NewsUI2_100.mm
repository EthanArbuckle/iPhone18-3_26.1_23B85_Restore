uint64_t sub_2191F1D64()
{
  v0 = sub_219BDBD34();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - v5;
  v7 = type metadata accessor for OfflineFeedManifest(0);
  __swift_allocate_value_buffer(v7, qword_280ED0C30);
  v8 = __swift_project_value_buffer(v7, qword_280ED0C30);
  sub_219BDBBB4();
  sub_219BDBBB4();
  v9 = *(v1 + 32);
  v9(v8, v6, v0);
  result = (v9)(v8 + v7[5], v4, v0);
  v11 = MEMORY[0x277D84F90];
  *(v8 + v7[6]) = MEMORY[0x277D84F90];
  *(v8 + v7[7]) = v11;
  *(v8 + v7[8]) = v11;
  *(v8 + v7[9]) = v11;
  *(v8 + v7[10]) = v11;
  *(v8 + v7[11]) = v11;
  *(v8 + v7[12]) = v11;
  return result;
}

uint64_t static OfflineFeedManifest.empty.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280ED0C20 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for OfflineFeedManifest(0);
  v3 = __swift_project_value_buffer(v2, qword_280ED0C30);
  return sub_218753520(v3, a1, type metadata accessor for OfflineFeedManifest);
}

uint64_t OfflineFeedManifest.Group.groupIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for OfflineFeedManifest.Group(0) + 24));

  return v1;
}

uint64_t OfflineFeedManifest.Group.kindIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for OfflineFeedManifest.Group(0) + 28));

  return v1;
}

uint64_t OfflineFeedManifest.Group.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  sub_2186DD9FC(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v53 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v56 = v48 - v6;
  v57 = sub_219BDBD34();
  v54 = *(v57 - 8);
  v7 = MEMORY[0x28223BE20](v57);
  v52 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v48 - v9;
  sub_218752C3C(0, &qword_27CC17220, sub_2191FC894, &type metadata for OfflineFeedManifest.Group.CodingKeys, MEMORY[0x277D844C8]);
  v12 = v11;
  v55 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v48 - v13;
  v15 = type metadata accessor for OfflineFeedManifest.Group(0);
  MEMORY[0x28223BE20](v15);
  v17 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_2191FC894();
  v19 = v58;
  sub_219BF7B34();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(v59);
  }

  v49 = v15;
  v50 = v10;
  v58 = v17;
  LOBYTE(v61) = 0;
  sub_2186EC7E8(&unk_280EE9C70, MEMORY[0x277CC9578]);
  v20 = v56;
  v21 = v57;
  v22 = v14;
  sub_219BF76E4();
  v23 = v12;
  v25 = v54;
  v48[0] = *(v54 + 48);
  v48[1] = v54 + 48;
  if ((v48[0])(v20, 1, v21) == 1)
  {
    v26 = v20;
    __swift_project_boxed_opaque_existential_1(v59, v59[3]);
    v27 = sub_219BF7B24();
    sub_2191F2C38(v27, v50);

    v30 = (v48[0])(v20, 1, v21);
    v22 = v14;
    v29 = v53;
    if (v30 != 1)
    {
      sub_2191F6698(v26, &qword_280EE9C40, MEMORY[0x277CC9578]);
    }

    v25 = v54;
    v28 = v50;
  }

  else
  {
    v28 = v50;
    (*(v25 + 32))(v50, v20, v21);
    v29 = v53;
  }

  v31 = *(v25 + 32);
  v31(v58, v28, v21);
  LOBYTE(v61) = 1;
  sub_219BF76E4();
  v56 = v22;
  v32 = v23;
  if ((v48[0])(v29, 1, v21) == 1)
  {
    __swift_project_boxed_opaque_existential_1(v59, v59[3]);
    v33 = sub_219BF7B24();
    sub_2191F2C38(v33, v52);

    v44 = v53;
    if ((v48[0])(v53, 1, v21) != 1)
    {
      sub_2191F6698(v44, &qword_280EE9C40, MEMORY[0x277CC9578]);
    }

    v34 = v52;
  }

  else
  {
    v34 = v52;
    v31(v52, v29, v21);
  }

  v35 = v49;
  v36 = v58;
  v31(&v58[v49[5]], v34, v21);
  LOBYTE(v61) = 2;
  v37 = v56;
  v38 = sub_219BF7694();
  if (v39)
  {
    v40 = v38;
  }

  else
  {
    v40 = 0;
  }

  v41 = 0xE000000000000000;
  if (v39)
  {
    v41 = v39;
  }

  v42 = &v36[v35[6]];
  *v42 = v40;
  v42[1] = v41;
  LOBYTE(v61) = 3;
  v43 = sub_219BF7694();
  v45 = &v36[v35[7]];
  *v45 = v43;
  v45[1] = v46;
  sub_2186D0CEC(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  v60 = 4;
  sub_218753310(&qword_280E8EDD0);
  sub_219BF7734();
  *&v36[v35[8]] = v61;
  v60 = 5;
  sub_219BF7734();
  *&v36[v35[9]] = v61;
  v60 = 6;
  sub_219BF7734();
  *&v36[v35[10]] = v61;
  v60 = 7;
  sub_219BF7734();
  *&v36[v35[11]] = v61;
  v60 = 8;
  sub_219BF7734();
  (*(v55 + 8))(v37, v32);
  v47 = v58;
  *&v58[v49[12]] = v61;
  sub_218753520(v47, v51, type metadata accessor for OfflineFeedManifest.Group);
  __swift_destroy_boxed_opaque_existential_1(v59);
  return sub_218753588(v47, type metadata accessor for OfflineFeedManifest.Group);
}

uint64_t sub_2191F2C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2186DD9FC(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v16 - v5;
  if (qword_280E8D468 != -1)
  {
    swift_once();
  }

  v7 = sub_219BF74C4();
  v8 = __swift_project_value_buffer(v7, qword_280F616C0);
  if (*(a1 + 16) && (v9 = sub_218751790(v8), (v10 & 1) != 0))
  {
    sub_2186D1230(*(a1 + 56) + 32 * v9, v16);
    sub_218751558(v16, v17);
    sub_2186D1230(v17, v16);
    v11 = sub_219BDBD34();
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v17);
      v12 = *(v11 - 8);
      (*(v12 + 56))(v6, 0, 1, v11);
      return (*(v12 + 32))(a2, v6, v11);
    }

    else
    {
      (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
      sub_2191F6698(v6, &qword_280EE9C40, MEMORY[0x277CC9578]);
      sub_2191FD490();
      sub_2186EC7E8(&qword_27CC17500, sub_2191FD490);
      swift_allocError();
      *v15 = 1;
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_1(v17);
    }
  }

  else
  {
    sub_2191FD490();
    sub_2186EC7E8(&qword_27CC17500, sub_2191FD490);
    swift_allocError();
    *v14 = 0;
    return swift_willThrow();
  }
}

uint64_t OfflineFeedManifest.Group.encode(to:)(void *a1)
{
  v3 = v1;
  sub_218752C3C(0, &qword_27CC17230, sub_2191FC894, &type metadata for OfflineFeedManifest.Group.CodingKeys, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2191FC894();
  sub_219BF7B44();
  LOBYTE(v12) = 0;
  sub_219BDBD34();
  sub_2186EC7E8(&qword_280EE9CA0, MEMORY[0x277CC9578]);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for OfflineFeedManifest.Group(0);
    LOBYTE(v12) = 1;
    sub_219BF7834();
    LOBYTE(v12) = 2;
    sub_219BF77F4();
    v12 = *(v3 + v10[7]);
    v13 = 3;
    sub_2186D0CEC(0, &qword_280E8F860, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    sub_21897A7C0();
    sub_219BF7834();
    *&v12 = *(v3 + v10[8]);
    v13 = 4;
    sub_2186D0CEC(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_218753310(&unk_280E8EE00);
    sub_219BF7834();
    *&v12 = *(v3 + v10[9]);
    v13 = 5;
    sub_219BF7834();
    *&v12 = *(v3 + v10[10]);
    v13 = 6;
    sub_219BF7834();
    *&v12 = *(v3 + v10[11]);
    v13 = 7;
    sub_219BF7834();
    *&v12 = *(v3 + v10[12]);
    v13 = 8;
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2191F337C(unsigned __int8 a1)
{
  v1 = 0x4164657461657263;
  v2 = 0x4449656C7A7A7570;
  v3 = 0x7472416F69647561;
  if (a1 != 7)
  {
    v3 = 0x4449657069636572;
  }

  if (a1 != 6)
  {
    v2 = v3;
  }

  v4 = 0x49656C6369747261;
  if (a1 != 4)
  {
    v4 = 0x7344496575737369;
  }

  if (a1 <= 5u)
  {
    v2 = v4;
  }

  v5 = 0x65644970756F7267;
  if (a1 != 2)
  {
    v5 = 0x6E656449646E696BLL;
  }

  if (a1)
  {
    v1 = 0x446873696C627570;
  }

  if (a1 > 1u)
  {
    v1 = v5;
  }

  if (a1 <= 3u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2191F3508@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2191FD08C();
  *a1 = result;
  return result;
}

uint64_t sub_2191F3538@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2191F337C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2191F3580@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2191FD08C();
  *a1 = result;
  return result;
}

uint64_t sub_2191F35A8(uint64_t a1)
{
  v2 = sub_2191FC894();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2191F35E4(uint64_t a1)
{
  v2 = sub_2191FC894();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t _s7NewsUI219OfflineFeedManifestV5GroupV9createdAt10Foundation4DateVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_219BDBD34();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2191F36D8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_219BDBD34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t OfflineFeedManifest.groups.getter()
{
  type metadata accessor for OfflineFeedManifest(0);
}

uint64_t OfflineFeedManifest.assetURLs.getter()
{
  type metadata accessor for OfflineFeedManifest(0);
}

uint64_t sub_2191F37DC(void (*a1)(void))
{
  a1(0);
}

uint64_t sub_2191F3830(void (*a1)(void))
{
  a1(0);
}

uint64_t sub_2191F3884(void (*a1)(void))
{
  a1(0);
}

uint64_t sub_2191F38D8(void (*a1)(void))
{
  a1(0);
}

uint64_t sub_2191F392C(void (*a1)(void))
{
  a1(0);
}

id OfflineFeedManifest.contentManifest.getter()
{
  type metadata accessor for OfflineFeedManifest(0);
  v0 = objc_allocWithZone(MEMORY[0x277D30F10]);
  sub_219BDB954();
  v1 = sub_219BF5904();
  v2 = sub_219BF5904();
  v3 = sub_219BF5904();
  v4 = sub_219BF5904();
  v5 = sub_219BF5904();
  v6 = [v0 initWithAssetURLs:v1 assetWrappingKeyIDs:v2 recordIDs:v3 avAssetIDs:v4 avAssetKeyIDs:v5];

  return v6;
}

char *OfflineFeedManifest.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for OfflineFeedManifest(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v142 = v137 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v143 = v137 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v144 = v137 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v145 = v137 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v146 = v137 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v137 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = v137 - v19;
  sub_219BDBD24();
  sub_219BDBD24();
  v21 = *(a1 + 16);
  v140 = v4;
  v141 = a2;
  v22 = *(v4 + 24);
  v148 = v21;
  v138 = v5;
  v139 = a1;
  if (!v21)
  {
    v39 = MEMORY[0x277D84F90];
    *(a2 + v22) = MEMORY[0x277D84F90];
LABEL_35:
    v150 = v39;
    sub_2186EBBE0(0);
    v51 = v50;
    v52 = sub_219BDB954();
    v53 = sub_2186EC7E8(&qword_280E8F6C0, sub_2186EBBE0);
    v54 = sub_2186EC7E8(&unk_280EE9D30, MEMORY[0x277CC9260]);
    v137[2] = v53;
    v137[3] = v51;
    v149 = v52;
    v137[1] = v54;
    v55 = sub_219BF56E4();
    v147 = 0;

    v56 = v140;
    *(v141 + v140[7]) = v55;
    v57 = v148;
    if (v148)
    {
      v58 = v56[8];
      v59 = v139 + ((*(v138 + 80) + 32) & ~*(v138 + 80));
      v60 = *(v138 + 72);
      v61 = MEMORY[0x277D84F90];
      while (1)
      {
        v62 = v146;
        sub_218753520(v59, v146, type metadata accessor for OfflineFeedManifest);
        v63 = *(v62 + v58);

        result = sub_218753588(v62, type metadata accessor for OfflineFeedManifest);
        v64 = *(v63 + 16);
        v65 = *(v61 + 2);
        v66 = v65 + v64;
        if (__OFADD__(v65, v64))
        {
          goto LABEL_129;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (result && v66 <= *(v61 + 3) >> 1)
        {
          if (!*(v63 + 16))
          {
            goto LABEL_37;
          }
        }

        else
        {
          if (v65 <= v66)
          {
            v67 = v65 + v64;
          }

          else
          {
            v67 = v65;
          }

          result = sub_2191F95C4(result, v67, 1, v61);
          v61 = result;
          if (!*(v63 + 16))
          {
LABEL_37:

            if (v64)
            {
              goto LABEL_130;
            }

            goto LABEL_38;
          }
        }

        if ((*(v61 + 3) >> 1) - *(v61 + 2) < v64)
        {
          goto LABEL_141;
        }

        swift_arrayInitWithCopy();

        if (v64)
        {
          v68 = *(v61 + 2);
          v35 = __OFADD__(v68, v64);
          v69 = v68 + v64;
          if (v35)
          {
            goto LABEL_148;
          }

          *(v61 + 2) = v69;
        }

LABEL_38:
        v59 += v60;
        if (!--v57)
        {
          goto LABEL_53;
        }
      }
    }

    v61 = MEMORY[0x277D84F90];
LABEL_53:
    v150 = v61;
    v70 = MEMORY[0x277CC9318];
    sub_2186D0CEC(0, &qword_280E8F6A8, MEMORY[0x277CC9318], MEMORY[0x277D83940]);
    sub_2191FC7DC(&qword_280E8F690, &qword_280E8F6A8, v70);
    sub_2191FC840();
    v71 = v147;
    v72 = sub_219BF56E4();
    v147 = v71;

    v73 = v140;
    *(v141 + v140[8]) = v72;
    v74 = MEMORY[0x277D84F90];
    v75 = v148;
    if (v148)
    {
      v76 = v73[9];
      v77 = v139 + ((*(v138 + 80) + 32) & ~*(v138 + 80));
      v78 = *(v138 + 72);
      v79 = MEMORY[0x277D84F90];
      while (1)
      {
        v80 = v145;
        sub_218753520(v77, v145, type metadata accessor for OfflineFeedManifest);
        v81 = *(v80 + v76);

        result = sub_218753588(v80, type metadata accessor for OfflineFeedManifest);
        v82 = *(v81 + 16);
        v83 = *(v79 + 2);
        v84 = v83 + v82;
        if (__OFADD__(v83, v82))
        {
          goto LABEL_131;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (result && v84 <= *(v79 + 3) >> 1)
        {
          if (!*(v81 + 16))
          {
            goto LABEL_55;
          }
        }

        else
        {
          if (v83 <= v84)
          {
            v85 = v83 + v82;
          }

          else
          {
            v85 = v83;
          }

          result = sub_218840D24(result, v85, 1, v79);
          v79 = result;
          if (!*(v81 + 16))
          {
LABEL_55:

            if (v82)
            {
              goto LABEL_132;
            }

            goto LABEL_56;
          }
        }

        if ((*(v79 + 3) >> 1) - *(v79 + 2) < v82)
        {
          goto LABEL_142;
        }

        swift_arrayInitWithCopy();

        if (v82)
        {
          v86 = *(v79 + 2);
          v35 = __OFADD__(v86, v82);
          v87 = v86 + v82;
          if (v35)
          {
            goto LABEL_149;
          }

          *(v79 + 2) = v87;
        }

LABEL_56:
        v77 += v78;
        if (!--v75)
        {
          goto LABEL_71;
        }
      }
    }

    v79 = MEMORY[0x277D84F90];
LABEL_71:
    v150 = v79;
    v88 = MEMORY[0x277D837D0];
    sub_2186D0CEC(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    v90 = v89;
    v91 = sub_2191FC7DC(&qword_280E8EDE0, &qword_280E8EE20, v88);
    v92 = v147;
    v93 = sub_219BF56E4();

    v95 = v140;
    v94 = v141;
    *(v141 + v140[9]) = v93;
    v96 = v148;
    if (v148)
    {
      v145 = v92;
      v146 = v91;
      v147 = v90;
      v97 = v95[10];
      v98 = v139 + ((*(v138 + 80) + 32) & ~*(v138 + 80));
      v99 = *(v138 + 72);
      v100 = MEMORY[0x277D84F90];
      v101 = v98;
      while (1)
      {
        v102 = v144;
        sub_218753520(v101, v144, type metadata accessor for OfflineFeedManifest);
        v103 = *(v102 + v97);

        result = sub_218753588(v102, type metadata accessor for OfflineFeedManifest);
        v104 = *(v103 + 16);
        v105 = *(v100 + 2);
        v106 = v105 + v104;
        if (__OFADD__(v105, v104))
        {
          goto LABEL_133;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (result && v106 <= *(v100 + 3) >> 1)
        {
          if (*(v103 + 16))
          {
            goto LABEL_84;
          }
        }

        else
        {
          if (v105 <= v106)
          {
            v107 = v105 + v104;
          }

          else
          {
            v107 = v105;
          }

          result = sub_218840D24(result, v107, 1, v100);
          v100 = result;
          if (*(v103 + 16))
          {
LABEL_84:
            if ((*(v100 + 3) >> 1) - *(v100 + 2) < v104)
            {
              goto LABEL_143;
            }

            swift_arrayInitWithCopy();

            if (v104)
            {
              v108 = *(v100 + 2);
              v35 = __OFADD__(v108, v104);
              v109 = v108 + v104;
              if (v35)
              {
                goto LABEL_150;
              }

              *(v100 + 2) = v109;
            }

            goto LABEL_74;
          }
        }

        if (v104)
        {
          goto LABEL_134;
        }

LABEL_74:
        v101 += v99;
        if (!--v96)
        {
          v150 = v100;
          v92 = v145;
          v110 = sub_219BF56E4();

          v111 = v140;
          *(v141 + v140[10]) = v110;
          v112 = v111[11];
          v74 = MEMORY[0x277D84F90];
          v113 = v148;
          while (1)
          {
            v114 = v143;
            sub_218753520(v98, v143, type metadata accessor for OfflineFeedManifest);
            v115 = *(v114 + v112);

            result = sub_218753588(v114, type metadata accessor for OfflineFeedManifest);
            v116 = *(v115 + 16);
            v117 = *(v74 + 2);
            v118 = v117 + v116;
            if (__OFADD__(v117, v116))
            {
              goto LABEL_135;
            }

            result = swift_isUniquelyReferenced_nonNull_native();
            if (result && v118 <= *(v74 + 3) >> 1)
            {
              if (*(v115 + 16))
              {
                goto LABEL_100;
              }
            }

            else
            {
              if (v117 <= v118)
              {
                v119 = v117 + v116;
              }

              else
              {
                v119 = v117;
              }

              result = sub_218840D24(result, v119, 1, v74);
              v74 = result;
              if (*(v115 + 16))
              {
LABEL_100:
                if ((*(v74 + 3) >> 1) - *(v74 + 2) < v116)
                {
                  goto LABEL_144;
                }

                swift_arrayInitWithCopy();

                if (v116)
                {
                  v120 = *(v74 + 2);
                  v35 = __OFADD__(v120, v116);
                  v121 = v120 + v116;
                  if (v35)
                  {
                    goto LABEL_151;
                  }

                  *(v74 + 2) = v121;
                }

                goto LABEL_90;
              }
            }

            if (v116)
            {
              goto LABEL_136;
            }

LABEL_90:
            v98 += v99;
            if (!--v113)
            {
              v95 = v140;
              v94 = v141;
              v96 = v148;
              goto LABEL_106;
            }
          }
        }
      }
    }

    v150 = v74;
    v122 = sub_219BF56E4();

    *(v94 + v95[10]) = v122;
LABEL_106:
    v150 = v74;
    v123 = sub_219BF56E4();
    v147 = v92;

    *(v94 + v95[11]) = v123;
    if (!v96)
    {
      v127 = MEMORY[0x277D84F90];
LABEL_124:

      v150 = v127;
      v136 = sub_219BF56E4();

      *(v141 + v140[12]) = v136;
      return result;
    }

    v124 = v95[12];
    v125 = v139 + ((*(v138 + 80) + 32) & ~*(v138 + 80));
    v126 = *(v138 + 72);
    v127 = MEMORY[0x277D84F90];
    while (1)
    {
      v128 = v142;
      sub_218753520(v125, v142, type metadata accessor for OfflineFeedManifest);
      v129 = *(v128 + v124);

      result = sub_218753588(v128, type metadata accessor for OfflineFeedManifest);
      v130 = *(v129 + 16);
      v131 = *(v127 + 2);
      v132 = v131 + v130;
      if (__OFADD__(v131, v130))
      {
        goto LABEL_137;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v132 <= *(v127 + 3) >> 1)
      {
        if (!*(v129 + 16))
        {
          goto LABEL_108;
        }
      }

      else
      {
        if (v131 <= v132)
        {
          v133 = v131 + v130;
        }

        else
        {
          v133 = v131;
        }

        result = sub_218737B64(result, v133, 1, v127, &unk_280E8C1A0, MEMORY[0x277CC9260], MEMORY[0x277CC9260]);
        v127 = result;
        if (!*(v129 + 16))
        {
LABEL_108:

          if (v130)
          {
            goto LABEL_138;
          }

          goto LABEL_109;
        }
      }

      if ((*(v127 + 3) >> 1) - *(v127 + 2) < v130)
      {
        goto LABEL_145;
      }

      swift_arrayInitWithCopy();

      if (v130)
      {
        v134 = *(v127 + 2);
        v35 = __OFADD__(v134, v130);
        v135 = v134 + v130;
        if (v35)
        {
          goto LABEL_152;
        }

        *(v127 + 2) = v135;
      }

LABEL_109:
      v125 += v126;
      if (!--v148)
      {
        goto LABEL_124;
      }
    }
  }

  v147 = v22;
  v23 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v149 = *(v5 + 72);
  v24 = MEMORY[0x277D84F90];
  v25 = v23;
  while (1)
  {
    sub_218753520(v25, v20, type metadata accessor for OfflineFeedManifest);
    v27 = *&v20[v147];

    result = sub_218753588(v20, type metadata accessor for OfflineFeedManifest);
    v28 = *(v27 + 16);
    v29 = v24[2];
    v30 = v29 + v28;
    if (__OFADD__(v29, v28))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v30 <= v24[3] >> 1)
    {
      if (*(v27 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v29 <= v30)
      {
        v32 = v29 + v28;
      }

      else
      {
        v32 = v29;
      }

      v24 = sub_218737B64(isUniquelyReferenced_nonNull_native, v32, 1, v24, &qword_280E8BB60, type metadata accessor for OfflineFeedManifest.Group, type metadata accessor for OfflineFeedManifest.Group);
      if (*(v27 + 16))
      {
LABEL_14:
        v33 = (v24[3] >> 1) - v24[2];
        result = type metadata accessor for OfflineFeedManifest.Group(0);
        if (v33 < v28)
        {
          goto LABEL_139;
        }

        swift_arrayInitWithCopy();

        if (v28)
        {
          v34 = v24[2];
          v35 = __OFADD__(v34, v28);
          v36 = v34 + v28;
          if (v35)
          {
            goto LABEL_146;
          }

          v24[2] = v36;
        }

        goto LABEL_4;
      }
    }

    if (v28)
    {
      goto LABEL_126;
    }

LABEL_4:
    v25 += v149;
    if (!--v21)
    {
      v37 = v140;
      *(v141 + v140[6]) = v24;
      v38 = v37[7];
      v39 = MEMORY[0x277D84F90];
      v40 = v148;
      while (1)
      {
        sub_218753520(v23, v18, type metadata accessor for OfflineFeedManifest);
        v41 = *&v18[v38];

        result = sub_218753588(v18, type metadata accessor for OfflineFeedManifest);
        v42 = *(v41 + 16);
        v43 = *(v39 + 2);
        v44 = v43 + v42;
        if (__OFADD__(v43, v42))
        {
          goto LABEL_127;
        }

        v45 = swift_isUniquelyReferenced_nonNull_native();
        if (v45 && v44 <= *(v39 + 3) >> 1)
        {
          if (!*(v41 + 16))
          {
            goto LABEL_19;
          }
        }

        else
        {
          if (v43 <= v44)
          {
            v46 = v43 + v42;
          }

          else
          {
            v46 = v43;
          }

          v39 = sub_218737B64(v45, v46, 1, v39, &unk_280E8C1A0, MEMORY[0x277CC9260], MEMORY[0x277CC9260]);
          if (!*(v41 + 16))
          {
LABEL_19:

            if (v42)
            {
              goto LABEL_128;
            }

            goto LABEL_20;
          }
        }

        v47 = (*(v39 + 3) >> 1) - *(v39 + 2);
        result = sub_219BDB954();
        if (v47 < v42)
        {
          goto LABEL_140;
        }

        swift_arrayInitWithCopy();

        if (v42)
        {
          v48 = *(v39 + 2);
          v35 = __OFADD__(v48, v42);
          v49 = v48 + v42;
          if (v35)
          {
            goto LABEL_147;
          }

          *(v39 + 2) = v49;
        }

LABEL_20:
        v23 += v149;
        if (!--v40)
        {
          goto LABEL_35;
        }
      }
    }
  }

  __break(1u);
LABEL_126:
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
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
  return result;
}

uint64_t OfflineFeedManifest.merging(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_219BDBD34();
  v74 = *(v5 - 8);
  v75 = v5;
  MEMORY[0x28223BE20](v5);
  v73 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v72 = &v61 - v8;
  sub_2186DD9FC(0, &qword_27CC17238, type metadata accessor for OfflineFeedManifest.Group, MEMORY[0x277D84220]);
  MEMORY[0x28223BE20](v9 - 8);
  v78 = (&v61 - v10);
  v11 = type metadata accessor for OfflineFeedManifest.Group(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for OfflineFeedManifest(0);
  v70 = a2;
  v71 = v15;
  v16 = *(v15 + 24);
  v69 = v2;
  v17 = *(v2 + v16);
  v76 = a1;
  v18 = *(a1 + v16);
  v80 = *(v18 + 16);
  if (!v80)
  {

    goto LABEL_27;
  }

  v77 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v79 = (v18 + v77);
  v19 = *(v12 + 72);

  v20 = 0;
  while (2)
  {
    sub_218753520(v79 + v19 * v20, v14, type metadata accessor for OfflineFeedManifest.Group);
    v21 = v17[2];
    if (!v21)
    {
      goto LABEL_7;
    }

    v22 = 0;
    v23 = -1;
    v24 = v77;
    while (1)
    {
      v25 = *(v11 + 28);
      v26 = &v14[v25];
      v27 = *&v14[v25 + 8];
      v28 = (v17 + v24 + v25 + 8);
      v29 = *v28;
      if (v27)
      {
        break;
      }

      if (!v29)
      {
        goto LABEL_19;
      }

LABEL_11:
      ++v22;
      v24 += v19;
      --v23;
      if (v21 == v22)
      {
        goto LABEL_7;
      }
    }

    if (!v29)
    {
      goto LABEL_11;
    }

    v30 = *v26 == *(v28 - 1) && v27 == v29;
    if (!v30 && (sub_219BF78F4() & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_19:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2194ABA74(v17);
      v17 = result;
    }

    v32 = v17[2];
    if (v32 <= v22)
    {
      __break(1u);
    }

    else
    {
      v33 = v17 + v24;
      sub_218753588(v33, type metadata accessor for OfflineFeedManifest.Group);
      if (v19 > 0 || v33 >= v33 + v19 + v19 * (v32 + v23))
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v19)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v17[2] = v32 - 1;
      sub_218753520(v14, v78, type metadata accessor for OfflineFeedManifest.Group);
      v82 = v17;
      if (v32 > v17[3] >> 1)
      {
        v17 = sub_218737B64(1uLL, v32, 1, v17, &qword_280E8BB60, type metadata accessor for OfflineFeedManifest.Group, type metadata accessor for OfflineFeedManifest.Group);
        v82 = v17;
      }

      sub_2194AB7B0(v22, v22, 1, v78);
LABEL_7:
      v20 = (v20 + 1);
      sub_218753588(v14, type metadata accessor for OfflineFeedManifest.Group);
      if (v20 != v80)
      {
        continue;
      }

LABEL_27:
      sub_2186EC7E8(&qword_280EE9C90, MEMORY[0x277CC9578]);
      v34 = v75;
      v35 = v76;
      v36 = v69;
      v37 = sub_219BF5334();
      v38 = *(v74 + 16);
      if (v37)
      {
        v39 = v35;
      }

      else
      {
        v39 = v36;
      }

      v38(v72, v39, v34);
      v40 = *(v71 + 20);
      v41 = v36 + v40;
      v42 = v35 + v40;
      if (sub_219BF5334())
      {
        v43 = v42;
      }

      else
      {
        v43 = v41;
      }

      v38(v73, v43, v34);
      v44 = v71;
      v81 = *(v36 + *(v71 + 28));

      v80 = MEMORY[0x277CC9260];
      v79 = MEMORY[0x277CC9260];
      v78 = MEMORY[0x277CC9260];
      sub_21872D364(v45, &unk_280E8C1A0, MEMORY[0x277CC9260], MEMORY[0x277CC9260], MEMORY[0x277CC9260]);
      sub_2186EBBE0(0);
      v68 = v46;
      v67 = sub_219BDB954();
      v66 = sub_2186EC7E8(&qword_280E8F6C0, sub_2186EBBE0);
      v65 = sub_2186EC7E8(&unk_280EE9D30, MEMORY[0x277CC9260]);
      v77 = sub_219BF56E4();

      v47 = v44;
      v81 = *(v36 + v44[8]);

      sub_2191EEF10(v48);
      v49 = MEMORY[0x277CC9318];
      v50 = MEMORY[0x277D83940];
      sub_2186D0CEC(0, &qword_280E8F6A8, MEMORY[0x277CC9318], MEMORY[0x277D83940]);
      sub_2191FC7DC(&qword_280E8F690, &qword_280E8F6A8, v49);
      sub_2191FC840();
      v64 = sub_219BF56E4();

      v81 = *(v36 + v44[9]);

      sub_2191ED3E8(v51);
      v52 = MEMORY[0x277D837D0];
      sub_2186D0CEC(0, &qword_280E8EE20, MEMORY[0x277D837D0], v50);
      sub_2191FC7DC(&qword_280E8EDE0, &qword_280E8EE20, v52);
      v63 = sub_219BF56E4();

      v81 = *(v36 + v47[10]);

      sub_2191ED3E8(v53);
      v62 = sub_219BF56E4();

      v81 = *(v36 + v47[11]);

      sub_2191ED3E8(v54);
      v61 = sub_219BF56E4();

      v81 = *(v36 + v47[12]);

      sub_21872D364(v55, &unk_280E8C1A0, v80, v79, v78);
      v56 = sub_219BF56E4();

      v57 = v75;
      v58 = *(v74 + 32);
      v59 = v70;
      v58(v70, v72, v75);
      result = (v58)(v59 + v47[5], v73, v57);
      *(v59 + v47[6]) = v17;
      *(v59 + v47[7]) = v77;
      v60 = v63;
      *(v59 + v47[8]) = v64;
      *(v59 + v47[9]) = v60;
      *(v59 + v47[10]) = v62;
      *(v59 + v47[11]) = v61;
      *(v59 + v47[12]) = v56;
    }

    return result;
  }
}

uint64_t OfflineFeedManifest.encode(to:)(void *a1)
{
  v3 = v1;
  sub_218752C3C(0, &qword_280E8C630, sub_218752CA4, &type metadata for OfflineFeedManifest.CodingKeys, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218752CA4();
  sub_219BF7B44();
  LOBYTE(v16) = 0;
  sub_219BDBD34();
  sub_2186EC7E8(&qword_280EE9CA0, MEMORY[0x277CC9578]);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for OfflineFeedManifest(0);
    LOBYTE(v16) = 1;
    sub_219BF7834();
    v16 = *(v3 + v10[6]);
    v15 = 2;
    sub_2186EBA94(0);
    sub_218752FB0(&unk_280E8F288, sub_2186EBA94, sub_2191FCA2C);
    sub_219BF7834();
    v16 = *(v3 + v10[7]);
    v15 = 3;
    sub_2186EBBE0(0);
    sub_218752FB0(&qword_280E8F6C8, sub_2186EBBE0, sub_2191FCA60);
    sub_219BF7834();
    v16 = *(v3 + v10[8]);
    v15 = 4;
    sub_2186D0CEC(0, &qword_280E8F6A8, MEMORY[0x277CC9318], MEMORY[0x277D83940]);
    sub_218753120(&unk_280E8F698, sub_218744514);
    sub_219BF7834();
    v16 = *(v3 + v10[9]);
    v15 = 5;
    sub_2186D0CEC(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    v12 = v11;
    v14[1] = sub_218753310(&unk_280E8EE00);
    v14[2] = v12;
    sub_219BF7834();
    v16 = *(v3 + v10[10]);
    v15 = 6;
    sub_219BF7834();
    v16 = *(v3 + v10[11]);
    v15 = 7;
    sub_219BF7834();
    v16 = *(v3 + v10[12]);
    v15 = 8;
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2191F58F0(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  v5 = *v3;
  sub_219BF7AA4();
  a3(v7, v5);
  return sub_219BF7AE4();
}

uint64_t sub_2191F5960(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_219BF7AA4();
  a4(v8, v6);
  return sub_219BF7AE4();
}

uint64_t sub_2191F59AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2191FD0D8();
  *a1 = result;
  return result;
}

unint64_t sub_2191F59DC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_218752DC4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2191F5A08@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2191FD0D8();
  *a1 = result;
  return result;
}

uint64_t sub_2191F5A30(uint64_t a1)
{
  v2 = sub_218752CA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2191F5A6C(uint64_t a1)
{
  v2 = sub_218752CA4();

  return MEMORY[0x2821FE720](a1, v2);
}

char *static OfflineFeedManifest.+ infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2186DD9FC(0, &unk_280E8BB50, type metadata accessor for OfflineFeedManifest, MEMORY[0x277D84560]);
  v6 = *(type metadata accessor for OfflineFeedManifest(0) - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_219C09EC0;
  v10 = v9 + v8;
  sub_218753520(a1, v10, type metadata accessor for OfflineFeedManifest);
  sub_218753520(a2, v10 + v7, type metadata accessor for OfflineFeedManifest);

  return OfflineFeedManifest.init(_:)(v9, a3);
}

uint64_t static OfflineFeedManifest.+ infix(_:_:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for OfflineFeedManifest(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  OfflineFeedManifest.init(_:)(a2, v9);
  sub_2186DD9FC(0, &unk_280E8BB50, type metadata accessor for OfflineFeedManifest, MEMORY[0x277D84560]);
  v10 = *(v7 + 72);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C09EC0;
  v13 = v12 + v11;
  sub_218753520(a1, v13, type metadata accessor for OfflineFeedManifest);
  sub_218753520(v9, v13 + v10, type metadata accessor for OfflineFeedManifest);
  OfflineFeedManifest.init(_:)(v12, a3);
  return sub_218753588(v9, type metadata accessor for OfflineFeedManifest);
}

char *static OfflineFeedManifest.+ infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2186DD9FC(0, &unk_280E8BB50, type metadata accessor for OfflineFeedManifest, MEMORY[0x277D84560]);
  v4 = *(type metadata accessor for OfflineFeedManifest(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_219C09BA0;
  sub_218753520(a1, v6 + v5, type metadata accessor for OfflineFeedManifest);

  sub_21872D364(v7, &unk_280E8BB50, type metadata accessor for OfflineFeedManifest, type metadata accessor for OfflineFeedManifest, type metadata accessor for OfflineFeedManifest);

  return OfflineFeedManifest.init(_:)(v6, a2);
}

uint64_t static OfflineFeedManifest.+= infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OfflineFeedManifest(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187544D0(a1, v7, type metadata accessor for OfflineFeedManifest);
  sub_2186DD9FC(0, &unk_280E8BB50, type metadata accessor for OfflineFeedManifest, MEMORY[0x277D84560]);
  v8 = *(v5 + 72);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_219C09EC0;
  v11 = v10 + v9;
  sub_218753520(v7, v11, type metadata accessor for OfflineFeedManifest);
  sub_218753520(a2, v11 + v8, type metadata accessor for OfflineFeedManifest);
  OfflineFeedManifest.init(_:)(v10, a1);
  return sub_218753588(v7, type metadata accessor for OfflineFeedManifest);
}

uint64_t static OfflineFeedManifest.+= infix(_:_:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for OfflineFeedManifest(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  sub_2187544D0(a1, &v16 - v9, type metadata accessor for OfflineFeedManifest);
  OfflineFeedManifest.init(_:)(a2, v8);
  sub_2186DD9FC(0, &unk_280E8BB50, type metadata accessor for OfflineFeedManifest, MEMORY[0x277D84560]);
  v11 = *(v5 + 72);
  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_219C09EC0;
  v14 = v13 + v12;
  sub_218753520(v10, v14, type metadata accessor for OfflineFeedManifest);
  sub_218753520(v8, v14 + v11, type metadata accessor for OfflineFeedManifest);
  OfflineFeedManifest.init(_:)(v13, a1);
  sub_218753588(v8, type metadata accessor for OfflineFeedManifest);
  return sub_218753588(v10, type metadata accessor for OfflineFeedManifest);
}

uint64_t OfflineFeedManifest.shortDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  sub_218C71780();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C655B0;
  *(inited + 32) = 0x7370756F7267;
  *(inited + 40) = 0xE600000000000000;
  v4 = type metadata accessor for OfflineFeedManifest(0);
  v5 = MEMORY[0x277D83B88];
  *(inited + 48) = *(*(v1 + v4[6]) + 16);
  *(inited + 72) = v5;
  strcpy((inited + 80), "rootArticleIDs");
  *(inited + 95) = -18;
  v6 = *(OfflineFeedManifest.rootArticleIDs.getter() + 2);

  *(inited + 96) = v6;
  *(inited + 120) = v5;
  strcpy((inited + 128), "rootIssueIDs");
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  v7 = *(OfflineFeedManifest.rootIssueIDs.getter() + 2);

  *(inited + 144) = v7;
  *(inited + 168) = v5;
  strcpy((inited + 176), "rootPuzzleIDs");
  *(inited + 190) = -4864;
  v8 = *(OfflineFeedManifest.rootPuzzleIDs.getter() + 2);

  *(inited + 192) = v8;
  *(inited + 216) = v5;
  *(inited + 224) = 0xD000000000000013;
  *(inited + 232) = 0x8000000219D10B30;
  v9 = *(OfflineFeedManifest.rootAudioArticleIDs.getter() + 2);

  *(inited + 240) = v9;
  *(inited + 264) = v5;
  *(inited + 272) = 0x4C52557465737361;
  *(inited + 280) = 0xE900000000000073;
  *(inited + 288) = *(*(v1 + v4[7]) + 16);
  *(inited + 312) = v5;
  *(inited + 320) = 0xD000000000000013;
  *(inited + 328) = 0x8000000219CD7E10;
  *(inited + 336) = *(*(v1 + v4[8]) + 16);
  *(inited + 360) = v5;
  *(inited + 368) = 0x444964726F636572;
  *(inited + 376) = 0xE900000000000073;
  *(inited + 384) = *(*(v1 + v4[9]) + 16);
  *(inited + 408) = v5;
  *(inited + 416) = 0x4974657373417661;
  *(inited + 424) = 0xEA00000000007344;
  *(inited + 432) = *(*(v1 + v4[10]) + 16);
  *(inited + 456) = v5;
  strcpy((inited + 464), "avAssetKeyIDs");
  *(inited + 478) = -4864;
  *(inited + 480) = *(*(v1 + v4[11]) + 16);
  *(inited + 504) = v5;
  strcpy((inited + 512), "avAssetKeyURIs");
  *(inited + 527) = -18;
  v10 = *(*(v1 + v4[12]) + 16);
  *(inited + 552) = v5;
  *(inited + 528) = v10;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_218C3F13C(0, &qword_280E8F6E0);
  swift_arrayDestroy();
  sub_2186DD9FC(0, &qword_280EE7A10, type metadata accessor for OfflineFeedManifest, MEMORY[0x277D6CC20]);
  a1[3] = v11;
  a1[4] = sub_2191FCB90();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_2191F65AC()
{
  sub_2186EC7E8(&qword_27CC174D0, type metadata accessor for OfflineFeedManifest);

  return sub_219BE2324();
}

uint64_t sub_2191F6618(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2186DD9FC(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2191F6698(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2186DD9FC(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_2191F67A4(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_2186DD9FC(0, &qword_280E8B588, sub_218788800, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_218788800();
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_2191F68F0(size_t result, int64_t a2, char a3, void *a4)
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

  sub_2191FD808();
  sub_2191FD898(0, &qword_27CC0FAE0, sub_218972EAC, sub_218972F00);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v13);
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
  sub_2191FD898(0, &qword_27CC0FAE0, sub_218972EAC, sub_218972F00);
  v16 = *(v15 - 8);
  if (v5)
  {
    if (v13 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v13 + v17 >= a4 + v17 + *(v16 + 72) * v8))
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

char *sub_2191F6B60(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186DD9FC(0, &unk_280E8B650, sub_218C82728, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_2191F6CE4(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &qword_280E8BB68, &type metadata for EditorialAttributes, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_2191F6ED4(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_2191FD23C();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_218C3F13C(0, &qword_280E8F700);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2191F7194(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_2186DD9FC(0, &qword_27CC172C0, sub_2191FD124, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2191FD124(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2191F72E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &qword_280E8B660, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_2191F7528(void *result, int64_t a2, char a3, void *a4, void (*a5)(void), unint64_t *a6)
{
  v8 = result;
  if (a3)
  {
    v9 = a4[3];
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = a4[2];
  if (v10 <= v11)
  {
    v12 = a4[2];
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    a5(0);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size_0(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 17;
    }

    v13[2] = v11;
    v13[3] = 2 * (v15 >> 4);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  if (v8)
  {
    if (v13 != a4 || v13 + 4 >= &a4[2 * v11 + 4])
    {
      memmove(v13 + 4, a4 + 4, 16 * v11);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2186C709C(0, a6);
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_2191F7698(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &qword_27CC17480, &type metadata for PuzzleSettingsGroup, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2191F7890(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &unk_27CC17270, MEMORY[0x277D849A8], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_2191F7A28(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_218C3DA24();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2186CF8E0(0, &qword_27CC0DB40, &qword_27CC110D0, MEMORY[0x277D6DBE8], MEMORY[0x277D83D88]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2191F7BD4(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_2186DD9FC(0, &unk_280E8B770, sub_218B6A62C, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_218B6A62C();
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2191F7D78(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_2186DD9FC(0, &unk_280E8B630, sub_218BADDF4, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_218BADDF4();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2191F7FC8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &qword_280E8B590, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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

char *sub_2191F8128(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &qword_280E8BAE8, &type metadata for MagazineFeedPoolIssue, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2191F82C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &qword_27CC172E0, &type metadata for FeedDescriptorReference, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_2191F86BC(size_t result, int64_t a2, char a3, void *a4)
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

  sub_2191FD778();
  sub_2191FD898(0, &qword_280E90E40, sub_2189699BC, sub_218969A10);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v13);
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
  sub_2191FD898(0, &qword_280E90E40, sub_2189699BC, sub_218969A10);
  v16 = *(v15 - 8);
  if (v5)
  {
    if (v13 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v13 + v17 >= a4 + v17 + *(v16 + 72) * v8))
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

char *sub_2191F8960(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &unk_27CC172F8, &type metadata for ChannelPickerSectionModel, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 344);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[344 * v8])
    {
      memmove(v12, v13, 344 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2191F8B4C(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_2186D0CEC(0, a5, a6, MEMORY[0x277D84560]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_0(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[24 * v10])
    {
      memmove(v14, v15, 24 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_2191F8C94(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_2186D0CEC(0, a5, a6, MEMORY[0x277D84560]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_0(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_2191F8DEC(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &qword_27CC17370, &type metadata for SearchResultItem, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 536);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[536 * v8])
    {
      memmove(v12, v13, 536 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2191F902C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &unk_280E8BA00, &type metadata for SportsTopicClusteringService.SportsFeedTagFeedCluster, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2191F9198(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &unk_280E8BB90, &type metadata for SportsTopicCluster, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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

char *sub_2191F9394(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_2186D0CEC(0, a5, a6, MEMORY[0x277D84560]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_0(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[24 * v10])
    {
      memmove(v14, v15, 24 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_2191F95C4(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &unk_27CC17518, MEMORY[0x277CC9318], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2191F9844(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &qword_27CC17508, &type metadata for RecipeCatalogFilterDurationItem, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2191F9AA0(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &qword_280E8BCB0, &type metadata for IssueModel, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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

char *sub_2191F9C88(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_2186D0CEC(0, a5, a6, MEMORY[0x277D84560]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_0(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 48);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[48 * v10])
    {
      memmove(v14, v15, 48 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_2191F9E70(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &qword_27CC0F2B0, &type metadata for FollowingTabGroupCompletionCoordinator, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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

void *sub_2191F9FF8(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_2186DD9FC(0, &qword_27CC0F558, sub_218C3F0C0, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_218C3F0C0();
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2191FA158(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_218C3FC70();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2186D0CEC(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2191FA44C(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_2186D0CEC(0, a5, a6, MEMORY[0x277D84560]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_0(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 1;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 5);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[32 * v10])
    {
      memmove(v15, v16, 32 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_2191FA5D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &unk_280E8BBE0, &type metadata for FeedLocalHeadline, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2191FA710(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &qword_280E8BA88, &type metadata for FollowingViewController.ActionModel, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2191FA8B4(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &qword_27CC0F408, &type metadata for MagazineGridModel.ItemModel, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[120 * v8])
    {
      memmove(v12, v13, 120 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_2191FAB28(size_t result, int64_t a2, char a3, void *a4)
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

  sub_2191FD5EC();
  sub_2191FD158(0, &qword_280E91D70, &qword_280E8E810, 0x277D312B0, MEMORY[0x277D31FA8]);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v13);
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
  sub_2191FD158(0, &qword_280E91D70, &qword_280E8E810, 0x277D312B0, MEMORY[0x277D31FA8]);
  v16 = *(v15 - 8);
  if (v5)
  {
    if (v13 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v13 + v17 >= a4 + v17 + *(v16 + 72) * v8))
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

char *sub_2191FAEE8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &qword_27CC17600, &type metadata for NewFollowTodayFeedGroupEmitterCursor.TagHeadlines, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2191FB00C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &qword_27CC173B0, &type metadata for MagazineGridModelActionMenuGroup, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_2191FB130(size_t result, int64_t a2, char a3, void *a4)
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

  sub_2191FD928();
  sub_218752C3C(0, &qword_27CC162E8, sub_218DB6840, &type metadata for MagazineCategoriesPickerModel, MEMORY[0x277D6D3F0]);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v13);
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
  sub_218752C3C(0, &qword_27CC162E8, sub_218DB6840, &type metadata for MagazineCategoriesPickerModel, MEMORY[0x277D6D3F0]);
  v16 = *(v15 - 8);
  if (v5)
  {
    if (v13 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v13 + v17 >= a4 + v17 + *(v16 + 72) * v8))
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

char *sub_2191FB36C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &qword_27CC173B8, &type metadata for MyMagazinesLayoutSectionDescriptor.Supplement, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 80 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_2191FB578(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &qword_27CC0FAB8, &type metadata for ContinuePlayingPuzzle, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 144);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[144 * v8])
    {
      memmove(v12, v13, 144 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2191FB6D4(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186DD9FC(0, &qword_27CC174A0, type metadata accessor for NDDownloadOptions, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_2191FB7FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &qword_27CC17458, &type metadata for TagHighlightsService.MockHighlightHeadline, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2191FB950(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6)
{
  v8 = result;
  if (a3)
  {
    v9 = a4[3];
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = a4[2];
  if (v10 <= v11)
  {
    v12 = a4[2];
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    sub_2191FD6A4(0, a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size_0(v13);
    v13[2] = v11;
    v13[3] = 2 * ((v14 - 32) / 24);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  if (v8)
  {
    if (v13 != a4 || v13 + 4 >= &a4[3 * v11 + 4])
    {
      memmove(v13 + 4, a4 + 4, 24 * v11);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2191FD6FC(0, a6);
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_2191FBAB8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &qword_27CC0F910, &type metadata for UserNotification.PuzzleStreakData.PuzzleStreak, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2191FBBF0(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &unk_27CC17470, &type metadata for SubscriberAdSegment, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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

char *sub_2191FBD5C(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_2186D0CEC(0, a5, a6, MEMORY[0x277D84560]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_0(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_2191FBE80(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &qword_27CC0F2D0, &type metadata for RecipeCatalogFilterSection, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2191FBFB8(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_2186DD9FC(0, &qword_27CC174D8, sub_2191FD3E4, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2191FD3E4();
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2191FC138(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_2186DD9FC(0, &unk_280E8B760, sub_218736660, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_218736660();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2191FC2AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &qword_280E8B9B8, &type metadata for HighlightsTagFeedGroupSection, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2191FC3E4(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_2186D0CEC(0, a5, a6, MEMORY[0x277D84560]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_0(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_2191FC570(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &unk_280E8BD10, &type metadata for MagazineFeedPoolFeedItem, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2191FC6A8(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_2186D0CEC(0, a5, a6, MEMORY[0x277D84560]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_0(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 40);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[40 * v10])
    {
      memmove(v14, v15, 40 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

uint64_t sub_2191FC7DC(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_2186D0CEC(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2191FC840()
{
  result = qword_280EE9CD8;
  if (!qword_280EE9CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE9CD8);
  }

  return result;
}

unint64_t sub_2191FC894()
{
  result = qword_27CC17228;
  if (!qword_27CC17228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC17228);
  }

  return result;
}

uint64_t _s7NewsUI219OfflineFeedManifestV5GroupV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_219BDBC94() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for OfflineFeedManifest.Group(0);
  if ((sub_219BDBC94() & 1) == 0)
  {
    return 0;
  }

  v5 = v4[6];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_219BF78F4() & 1) == 0)
  {
    return 0;
  }

  v10 = v4[7];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v13[1];
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }

    v15 = *v11 == *v13 && v12 == v14;
    if (!v15 && (sub_219BF78F4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  if ((sub_219417FCC(*(a1 + v4[8]), *(a2 + v4[8])) & 1) == 0 || (sub_219417FCC(*(a1 + v4[9]), *(a2 + v4[9])) & 1) == 0 || (sub_219417FCC(*(a1 + v4[10]), *(a2 + v4[10])) & 1) == 0 || (sub_219417FCC(*(a1 + v4[11]), *(a2 + v4[11])) & 1) == 0)
  {
    return 0;
  }

  v16 = v4[12];
  v17 = *(a1 + v16);
  v18 = *(a2 + v16);

  return sub_219417FCC(v17, v18);
}

uint64_t _s7NewsUI219OfflineFeedManifestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_219BDBC94() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for OfflineFeedManifest(0);
  if ((sub_219BDBC94() & 1) == 0 || (sub_219419860(*(a1 + v4[6]), *(a2 + v4[6])) & 1) == 0 || (sub_219419D18(*(a1 + v4[7]), *(a2 + v4[7])) & 1) == 0 || (sub_219419F58(*(a1 + v4[8]), *(a2 + v4[8])) & 1) == 0 || (sub_219417FCC(*(a1 + v4[9]), *(a2 + v4[9])) & 1) == 0 || (sub_219417FCC(*(a1 + v4[10]), *(a2 + v4[10])) & 1) == 0 || (sub_219417FCC(*(a1 + v4[11]), *(a2 + v4[11])) & 1) == 0)
  {
    return 0;
  }

  v5 = v4[12];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);

  return sub_219419D18(v6, v7);
}

unint64_t sub_2191FCB90()
{
  result = qword_280EE7A18;
  if (!qword_280EE7A18)
  {
    sub_2186DD9FC(255, &qword_280EE7A10, type metadata accessor for OfflineFeedManifest, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE7A18);
  }

  return result;
}

unint64_t sub_2191FCCAC()
{
  result = qword_27CC17248;
  if (!qword_27CC17248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC17248);
  }

  return result;
}

unint64_t sub_2191FCD04()
{
  result = qword_27CC17250;
  if (!qword_27CC17250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC17250);
  }

  return result;
}

unint64_t sub_2191FCD5C()
{
  result = qword_27CC17258;
  if (!qword_27CC17258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC17258);
  }

  return result;
}

unint64_t sub_2191FCDB4()
{
  result = qword_27CC17260;
  if (!qword_27CC17260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC17260);
  }

  return result;
}

void sub_2191FCE08()
{
  if (!qword_27CC17280)
  {
    sub_2186C709C(255, &unk_27CC17288);
    v0 = sub_219BF78A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC17280);
    }
  }
}

uint64_t sub_2191FCE74(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
  }

  else
  {
    v5 = a3;
    if (!(*v4 >> 62))
    {
      v8 = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = __OFADD__(v8, v7);
      result = v8 + v7;
      if (!v9)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  v14 = sub_219BF7214();
  v9 = __OFADD__(v14, v7);
  result = v14 + v7;
  if (v9)
  {
    goto LABEL_15;
  }

LABEL_4:
  result = sub_218861260();
  v11 = *v4;
  if (v6 == v5)
  {
    if (v7 <= 0)
    {
LABEL_11:
      *v4 = v11;
      return result;
    }

    __break(1u);
  }

  if ((*((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1) - *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) < v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_219BF4044();
  result = swift_arrayInitWithCopy();
  if (v7 <= 0)
  {
    goto LABEL_11;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v9 = __OFADD__(v12, v7);
  v13 = v12 + v7;
  if (!v9)
  {
    *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) = v13;
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_2191FCF78(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
  }

  else
  {
    v5 = a3;
    if (!(*v4 >> 62))
    {
      v8 = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = __OFADD__(v8, v7);
      result = v8 + v7;
      if (!v9)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  v14 = sub_219BF7214();
  v9 = __OFADD__(v14, v7);
  result = v14 + v7;
  if (v9)
  {
    goto LABEL_15;
  }

LABEL_4:
  result = sub_218861260(result, 1);
  v11 = *v4;
  if (v6 == v5)
  {
    if (v7 <= 0)
    {
LABEL_11:
      *v4 = v11;
      return result;
    }

    __break(1u);
  }

  if ((*((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1) - *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) < v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_2186C6148(0, &qword_280E8E480);
  result = swift_arrayInitWithCopy();
  if (v7 <= 0)
  {
    goto LABEL_11;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v9 = __OFADD__(v12, v7);
  v13 = v12 + v7;
  if (!v9)
  {
    *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) = v13;
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_2191FD08C()
{
  v0 = sub_219BF7614();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2191FD0D8()
{
  v0 = sub_219BF7614();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

void sub_2191FD158(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2186C6148(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2191FD23C()
{
  if (!qword_280E8B6B8)
  {
    sub_218C3F13C(255, &qword_280E8F700);
    v0 = sub_219BF78A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8B6B8);
    }
  }
}

void sub_2191FD2A4()
{
  if (!qword_27CC17328)
  {
    sub_2186C709C(255, &unk_27CC17330);
    v0 = sub_219BF78A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC17328);
    }
  }
}

uint64_t sub_2191FD344(uint64_t a1)
{
  sub_2191FD9B8(0, &qword_27CC173D0, sub_218B7E0BC, sub_2191FD310, MEMORY[0x277D84310]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2191FD3E4()
{
  if (!qword_27CC174E0)
  {
    sub_2186D6710(255, &qword_280E8E130);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC174E0);
    }
  }
}

void sub_2191FD490()
{
  if (!qword_27CC174F8)
  {
    v0 = _s6ErrorsOMa_0();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC174F8);
    }
  }
}

void sub_2191FD540()
{
  if (!qword_280EE5BD0)
  {
    sub_2191FD9B8(255, &qword_280EE5BB0, type metadata accessor for MagazineFeedModel, sub_2191FD208, MEMORY[0x277D6D3F0]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280EE5BD0);
    }
  }
}

void sub_2191FD5EC()
{
  if (!qword_280E8B8F8)
  {
    sub_2191FD158(255, &qword_280E91D70, &qword_280E8E810, 0x277D312B0, MEMORY[0x277D31FA8]);
    v0 = sub_219BF78A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8B8F8);
    }
  }
}

void sub_2191FD6A4(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_2191FD6FC(255, a3);
    v4 = sub_219BF78A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2191FD6FC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_2186D6710(255, &qword_280E8E680);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_2191FD778()
{
  if (!qword_27CC0FAA8)
  {
    sub_2191FD898(255, &qword_280E90E40, sub_2189699BC, sub_218969A10);
    v0 = sub_219BF78A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0FAA8);
    }
  }
}

void sub_2191FD808()
{
  if (!qword_27CC0FAD8)
  {
    sub_2191FD898(255, &qword_27CC0FAE0, sub_218972EAC, sub_218972F00);
    v0 = sub_219BF78A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0FAD8);
    }
  }
}

void sub_2191FD898(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_219BF0854();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2191FD928()
{
  if (!qword_27CC17640)
  {
    sub_218752C3C(255, &qword_27CC162E8, sub_218DB6840, &type metadata for MagazineCategoriesPickerModel, MEMORY[0x277D6D3F0]);
    v0 = sub_219BF78A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC17640);
    }
  }
}

void sub_2191FD9B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_2191FDA70@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v23 = a1;
  v3 = sub_219BE15B4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_219BDCD34();
  v7 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE9C04();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE9934();
  v14 = (*(v11 + 88))(v13, v10);
  if (v14 == *MEMORY[0x277D6E830])
  {
    v15 = *MEMORY[0x277D2D868];
    v16 = sub_219BDF074();
    return (*(*(v16 - 8) + 104))(a2, v15, v16);
  }

  else if (v14 == *MEMORY[0x277D6E840] || v14 == *MEMORY[0x277D6E848] || v14 == *MEMORY[0x277D6E838])
  {
    sub_219BDD184();
    sub_2192009BC(0, &unk_280E8C140, MEMORY[0x277CEAE60], MEMORY[0x277D84560]);
    sub_219BDD0A4();
    *(swift_allocObject() + 16) = xmmword_219C09BA0;
    (*(v4 + 104))(v6, *MEMORY[0x277D2F548], v3);
    sub_219BDD094();
    (*(v4 + 8))(v6, v3);
    v20 = sub_219BDCD14();

    (*(v7 + 8))(v9, v24);
    v21 = sub_219BDF074();
    if (v20)
    {
      v22 = MEMORY[0x277D2D820];
    }

    else
    {
      v22 = MEMORY[0x277D2D810];
    }

    return (*(*(v21 - 8) + 104))(a2, *v22, v21);
  }

  else
  {
    result = sub_219BF7514();
    __break(1u);
  }

  return result;
}

uint64_t sub_2191FDEB4(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v3 = sub_219BDBD34();
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_219BE1574();
  v6 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BE9C04();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - v14;
  v16 = sub_219BDF244();
  v32 = *(v16 - 8);
  v33 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE17A4();
  sub_219200A90(&qword_280EE7F30, MEMORY[0x277D2F910]);
  memset(v37, 0, sizeof(v37));
  v36 = a1;
  sub_219BDCCE4();
  sub_2192007A4(v37, sub_21880702C);
  sub_219BE8F44();
  (*(v10 + 32))(v13, v15, v9);
  v19 = (*(v10 + 88))(v13, v9);
  if (v19 == *MEMORY[0x277D6E830])
  {
    (*(v6 + 104))(v8, *MEMORY[0x277D2F428], v30);
  }

  else
  {
    v20 = *(v6 + 104);
    if (v19 == *MEMORY[0x277D6E840] || v19 == *MEMORY[0x277D6E848] || v19 == *MEMORY[0x277D6E838])
    {
      v20(v8, *MEMORY[0x277D2F420], v30);
    }

    else
    {
      v20(v8, *MEMORY[0x277D2F430], v30);
      (*(v10 + 8))(v13, v9);
    }
  }

  sub_219BDF234();
  sub_2192009BC(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v21 = sub_219BDCD44();
  v22 = *(v21 - 8);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_219C09BA0;
  (*(v22 + 104))(v24 + v23, *MEMORY[0x277CEAD18], v21);
  sub_219200A90(&qword_280EE8810, MEMORY[0x277D2D9A8]);
  v25 = v33;
  sub_219BDCCC4();

  (*(v32 + 8))(v18, v25);
  sub_219BDF524();
  sub_219BE8F64();
  sub_219200A90(&qword_280EE8760, MEMORY[0x277D2DB18]);
  sub_219BDCC64();
  v26 = v35;
  v27 = *(v34 + 8);
  v27(v5, v35);
  sub_219BE8F54();
  sub_219BDCC74();
  return (v27)(v5, v26);
}

uint64_t sub_2191FE4DC(uint64_t a1)
{
  sub_218985EAC();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SharedWithYouFeedModel(0);
  MEMORY[0x28223BE20](v7);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C40500();
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192008C8(0, &qword_27CC17688, MEMORY[0x277D6DA48]);
  sub_219BE7564();
  sub_219BE5FC4();
  (*(v12 + 8))(v14, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {

    sub_218EA89D8();
    v19 = &v9[*(v20 + 48)];
    return sub_2192007A4(v19, type metadata accessor for SharedWithYouFeedGapLocation);
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_218EA8964();
    v17 = *(v16 + 48);
    v18 = sub_219BF1584();
    (*(*(v18 - 8) + 8))(&v9[v17], v18);
    v19 = v9;
    return sub_2192007A4(v19, type metadata accessor for SharedWithYouFeedGapLocation);
  }

  (*(v4 + 32))(v6, v9, v3);
  sub_219BF07D4();
  sub_2191FE7C8(a1, v22[1]);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2191FE7C8(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v19 = a1;
  sub_2192008C8(0, &qword_27CC17688, MEMORY[0x277D6DA48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = v17 - v8;
  v10 = v2[8];
  v17[1] = v2[9];
  __swift_project_boxed_opaque_existential_1(v2 + 5, v10);
  v11 = [*(a2 + 16) identifier];
  sub_219BF5414();

  v12 = sub_219BF4774();

  (*(v6 + 16))(v9, v19, v5);
  v13 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v18;
  (*(v6 + 32))(v14 + v13, v9, v5);
  v15 = v14 + ((v7 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v15 = v2;
  *(v15 + 8) = v12 & 1;

  sub_219BDD154();
}

uint64_t sub_2191FE9CC()
{
  v0 = sub_219BDD0A4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for SharedWithYouFeedModel(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C40500();
  sub_219BE5FC4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_218EA8964();
      v9 = *(v8 + 48);
      v10 = sub_219BF1584();
      (*(*(v10 - 8) + 8))(&v6[v9], v10);
      v11 = type metadata accessor for SharedWithYouFeedGapLocation;
    }

    else
    {
      *v3 = 0x656E696C64616568;
      v3[1] = 0xE800000000000000;
      (*(v1 + 104))(v3, *MEMORY[0x277CEAE48], v0);
      sub_219BDD204();
      (*(v1 + 8))(v3, v0);
      v11 = type metadata accessor for SharedWithYouFeedModel;
    }

    v13 = v11;
    v14 = v6;
  }

  else
  {

    sub_218EA89D8();
    v13 = type metadata accessor for SharedWithYouFeedGapLocation;
    v14 = &v6[*(v12 + 48)];
  }

  return sub_2192007A4(v14, v13);
}

uint64_t sub_2191FEC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v148 = a5;
  v160 = a4;
  v165 = a3;
  v175 = a1;
  v131 = sub_219BDBD34();
  v130 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v129 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D83D88];
  sub_2192009BC(0, &unk_280EE8690, MEMORY[0x277D2DD28], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v128 = &v113 - v9;
  v156 = sub_219BDF754();
  v163 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v119 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_219BE0444();
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v116 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192009BC(0, &unk_27CC12F60, sub_218C40500, v7);
  MEMORY[0x28223BE20](v12 - 8);
  v121 = &v113 - v13;
  sub_218C40500();
  v162 = v14;
  v161 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v150 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192008C8(0, &qword_27CC104F8, MEMORY[0x277D6EC60]);
  v153 = v16;
  v152 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v149 = &v113 - v17;
  sub_218F93AE4(0);
  MEMORY[0x28223BE20](v18 - 8);
  v151 = &v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192008C8(0, &qword_27CC17660, MEMORY[0x277D6D710]);
  v155 = v20;
  v154 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v132 = &v113 - v21;
  v127 = sub_219BE09E4();
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v125 = &v113 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_219BDF104();
  v123 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v122 = &v113 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192009BC(0, &qword_280EE8330, MEMORY[0x277D2E738], v7);
  MEMORY[0x28223BE20](v24 - 8);
  v145 = &v113 - v25;
  v147 = sub_219BE0724();
  v146 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v120 = &v113 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_219BE1774();
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v113 = &v113 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_219BDF8A4();
  v143 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v142 = &v113 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_219BEFBD4();
  v137 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v136 = &v113 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_219BDF1A4();
  v140 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v139 = &v113 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_219BDFCE4();
  v134 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v133 = &v113 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_219BE0D44();
  v159 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v157 = &v113 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_219BDF0E4();
  v172 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v34 = &v113 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = *(a2 + 16);
  ObjectType = swift_getObjectType();
  sub_219BF67F4();
  sub_2192009BC(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v171 = v35;
  v36 = sub_219BDCD44();
  v37 = *(v36 - 8);
  v38 = *(v37 + 80);
  v39 = (v38 + 32) & ~v38;
  v173 = v39 + *(v37 + 72);
  v40 = swift_allocObject();
  v177 = xmmword_219C09BA0;
  *(v40 + 16) = xmmword_219C09BA0;
  v41 = *MEMORY[0x277CEAD18];
  v42 = *(v37 + 104);
  v42(v40 + v39, v41, v36);
  v174 = "thYouFeedTracker.swift";
  sub_219200A90(&qword_280EE88B0, MEMORY[0x277D2D8A8]);
  v43 = v170;
  sub_219BDCCC4();

  (*(v172 + 8))(v34, v43);
  v44 = v157;
  sub_219BF6834();
  v168 = v38;
  v45 = swift_allocObject();
  *(v45 + 16) = v177;
  v169 = v39;
  v170 = v36;
  v167 = v41;
  v172 = v37 + 104;
  v166 = v42;
  v42(v45 + v39, v41, v36);
  sub_219200A90(&qword_280EE8190, MEMORY[0x277D2ECA0]);
  v46 = v158;
  sub_219BDCCC4();

  (*(v159 + 8))(v44, v46);
  sub_2192008C8(0, &qword_27CC17688, MEMORY[0x277D6DA48]);
  v48 = v47;
  v49 = sub_219200A90(&qword_27CC17690, type metadata accessor for SharedWithYouFeedModel);
  v159 = v48;
  result = sub_219BE75B4();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v158 = v49;
  v51 = v133;
  sub_219BDFCD4();
  v52 = swift_allocObject();
  *(v52 + 16) = v177;
  v53 = v169;
  v54 = v166;
  v166(v52 + v169, v167, v170);
  sub_219200A90(&unk_280EE8590, MEMORY[0x277D2E058]);
  v55 = v135;
  sub_219BDCCC4();

  (*(v134 + 8))(v51, v55);
  v56 = v137;
  v57 = v136;
  v58 = v138;
  (*(v137 + 104))(v136, *MEMORY[0x277D329E0], v138);
  v59 = v139;
  sub_219BE02C4();
  (*(v56 + 8))(v57, v58);
  v60 = swift_allocObject();
  *(v60 + 16) = v177;
  v61 = v60 + v53;
  v62 = v167;
  v63 = v170;
  v54(v61, v167, v170);
  sub_219200A90(&unk_280EE8850, MEMORY[0x277D2D950]);
  v64 = v141;
  sub_219BDCCC4();

  (*(v140 + 8))(v59, v64);
  v65 = v142;
  sub_219BDF894();
  v66 = swift_allocObject();
  *(v66 + 16) = v177;
  v54(v66 + v169, v62, v63);
  sub_219200A90(&qword_280EE8640, MEMORY[0x277D2DE40]);
  v67 = v144;
  sub_219BDCCC4();

  (*(v143 + 8))(v65, v67);
  v68 = [v176 scoreProfile];
  v69 = v163;
  v70 = v162;
  v71 = v161;
  v72 = v147;
  v73 = v146;
  if (v68)
  {
    v74 = v68;
    if ([v68 hasShadowScores])
    {
      [v74 shadowTabiScore];
      [v74 shadowAgedPersonalizationScore];
      v75 = v113;
      sub_219BE1764();
      v76 = swift_allocObject();
      *(v76 + 16) = v177;
      v166(v76 + v169, v167, v170);
      sub_219200A90(&unk_280EE7F40, MEMORY[0x277D2F8F0]);
      v77 = v70;
      v78 = v115;
      sub_219BDCCC4();

      v79 = v75;
      v69 = v163;
      v80 = v78;
      v70 = v77;
      (*(v114 + 8))(v79, v80);
    }

    else
    {
    }
  }

  v81 = v145;
  sub_219BF6824();
  if ((*(v73 + 48))(v81, 1, v72) == 1)
  {
    sub_219200A20(v81, &qword_280EE8330, MEMORY[0x277D2E738]);
  }

  else
  {
    v82 = v120;
    (*(v73 + 32))(v120, v81, v72);
    v83 = swift_allocObject();
    *(v83 + 16) = v177;
    v166(v83 + v169, v167, v170);
    sub_219200A90(&unk_27CC0DC50, MEMORY[0x277D2E738]);
    sub_219BDCCC4();

    (*(v73 + 8))(v82, v72);
  }

  v84 = [v176 sourceChannel];
  if (v84)
  {
    v160 = *(v160 + 32);
    v85 = v122;
    v157 = v84;
    sub_219BE01F4();
    v86 = swift_allocObject();
    *(v86 + 16) = v177;
    v88 = v169;
    v87 = v170;
    v89 = v167;
    v166(v86 + v169, v167, v170);
    sub_219200A90(&unk_280EE8890, MEMORY[0x277D2D8B8]);
    v90 = v124;
    sub_219BDCCC4();
    v71 = v161;

    (*(v123 + 8))(v85, v90);
    v91 = v125;
    sub_219BE01E4();
    v69 = v163;
    v92 = swift_allocObject();
    *(v92 + 16) = v177;
    v166(v92 + v88, v89, v87);
    sub_219200A90(&qword_280EE8270, MEMORY[0x277D2E9C0]);
    v93 = v127;
    v70 = v162;
    sub_219BDCCC4();
    swift_unknownObjectRelease();

    (*(v126 + 8))(v91, v93);
  }

  v94 = v149;
  sub_219BE7594();
  v95 = v150;
  sub_219BE7564();
  sub_219BE5F84();
  (*(v71 + 8))(v95, v70);
  v96 = v151;
  v97 = v153;
  sub_219BEB244();
  v98 = v96;

  (*(v152 + 8))(v94, v97);
  v99 = v154;
  v100 = v155;
  if ((*(v154 + 48))(v98, 1, v155) != 1)
  {
    (*(v99 + 32))(v132, v98, v100);
    v102 = v121;
    sub_219BE7564();
    (*(v71 + 56))(v102, 0, 1, v70);
    v103 = sub_219BE6A34();
    result = sub_219200A20(v102, &unk_27CC12F60, sub_218C40500);
    v101 = v156;
    if (v103 >= 0xFFFFFFFF80000000)
    {
      if (v103 <= 0x7FFFFFFF)
      {
        v104 = v116;
        sub_219BE0434();
        v105 = swift_allocObject();
        *(v105 + 16) = v177;
        v166(v105 + v169, v167, v170);
        sub_219200A90(&unk_280EE8400, MEMORY[0x277D2E530]);
        v106 = v118;
        sub_219BDCCC4();

        (*(v117 + 8))(v104, v106);
        (*(v99 + 8))(v132, v100);
        goto LABEL_17;
      }

LABEL_24:
      __break(1u);
      return result;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_2192007A4(v98, sub_218F93AE4);
  v101 = v156;
LABEL_17:
  v107 = v128;
  sub_219BF6804();
  if ((*(v69 + 48))(v107, 1, v101) == 1)
  {
    sub_219200A20(v107, &unk_280EE8690, MEMORY[0x277D2DD28]);
  }

  else
  {
    v108 = v119;
    (*(v69 + 32))(v119, v107, v101);
    v109 = swift_allocObject();
    *(v109 + 16) = v177;
    v166(v109 + v169, v167, v170);
    sub_219200A90(&unk_280EE86A0, MEMORY[0x277D2DD28]);
    sub_219BDCCC4();

    (*(v69 + 8))(v108, v101);
  }

  sub_219BE0834();
  v110 = v129;
  sub_219BE75A4();
  sub_219200A90(&qword_280EE82C0, MEMORY[0x277D2E858]);
  sub_219BDCC64();
  v111 = *(v130 + 8);
  v112 = v131;
  v111(v110, v131);
  sub_219BE7574();
  v178[3] = sub_219BDF4D4();
  __swift_allocate_boxed_opaque_existential_1(v178);
  swift_unknownObjectRetain();
  sub_219BDF4C4();
  sub_219BDCC84();
  v111(v110, v112);
  return sub_2192007A4(v178, sub_21880702C);
}

uint64_t sub_2192007A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219200804(uint64_t a1)
{
  sub_2192008C8(0, &qword_27CC17688, MEMORY[0x277D6DA48]);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_2191FEC08(a1, v6, v1 + v5, v8, v9);
}

void sub_2192008C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for SharedWithYouFeedSectionDescriptor();
    v8[1] = type metadata accessor for SharedWithYouFeedModel(255);
    v8[2] = sub_219200A90(&qword_27CC0FB80, type metadata accessor for SharedWithYouFeedSectionDescriptor);
    v8[3] = sub_219200A90(&unk_27CC0B830, type metadata accessor for SharedWithYouFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2192009BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_219200A20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2192009BC(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_219200A90(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_219200B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 + 16);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a1;
  v10[5] = a2;
  v12[4] = sub_219201348;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_218C1CBB4;
  v12[3] = &block_descriptor_105;
  v11 = _Block_copy(v12);

  [v9 fetchConfigurationIfNeededWithCompletion_];
  _Block_release(v11);
}

void sub_219200C08(void *a1, void *a2, void (*a3)(void *), uint64_t a4, void (*a5)(char *), uint64_t a6)
{
  v55 = a6;
  v56 = a5;
  v57 = sub_219BE9884();
  v54 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v53 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE7D04();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BE7D14();
  v14 = *(v13 - 8);
  v63 = v13;
  v64 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if ([a1 respondsToSelector_])
    {
      v52 = [swift_unknownObjectRetain() launchPresentationConfig];
      v17 = [v52 presentationOperations];
      sub_2192013A8();
      v18 = sub_219BF5924();

      if (v18 >> 62)
      {
        goto LABEL_40;
      }

      for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
      {
        v62 = v12;
        v51 = a1;
        if (i < 1)
        {
          __break(1u);
          return;
        }

        v20 = 0;
        v21 = v18 & 0xC000000000000001;
        v58 = v64 + 32;
        v22 = MEMORY[0x277D84F90];
        v23 = &selRef_filteredReasons;
        v60 = i;
        v61 = v18;
        v59 = v18 & 0xC000000000000001;
        while (1)
        {
          if (v21)
          {
            v24 = MEMORY[0x21CECE0F0](v20, v18);
          }

          else
          {
            v24 = *(v18 + 8 * v20 + 32);
          }

          v12 = v24;
          v25 = [v24 v23[272]];
          if (!v25)
          {
            goto LABEL_8;
          }

          v26 = v25;
          v72 = sub_219BF5414();
          v28 = v27;

          v29 = [v12 operationUID];
          if (v29)
          {
            break;
          }

LABEL_8:

LABEL_9:
          if (i == ++v20)
          {

            a1 = v51;
            goto LABEL_42;
          }
        }

        v71 = v28;
        v30 = v29;
        v31 = sub_219BF5414();
        v70 = v32;

        v33 = [v12 requiredAppLaunchCount];
        v34 = [v12 maxPrecedingSameSessionPresentations];
        a1 = v34;
        if (v34)
        {
          v69 = [v34 integerValue];
        }

        else
        {
          v69 = 0;
        }

        v35 = [v12 maxPresentationAttempts];
        v36 = v35;
        if (v35)
        {
          v68 = [v35 integerValue];
        }

        else
        {
          v68 = 0;
        }

        v18 = [v12 endsPresentationSession];
        if (([v12 suppressOnLaunchConditions] & 0x8000000000000000) == 0)
        {
          v65 = v33;
          v66 = v31;
          v67 = v22;
          v37 = v16;
          sub_219BE7CF4();
          [v12 ignoreAfterSuccessfulPresentation];
          v38 = [v12 maxRetries];
          v39 = v38;
          if (v38)
          {
            [v38 integerValue];
          }

          v16 = v37;
          sub_219BE7CA4();
          v22 = v67;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = sub_2191FA334(0, v22[2] + 1, 1, v22);
          }

          v18 = v61;
          v21 = v59;
          v23 = &selRef_filteredReasons;
          v41 = v22[2];
          v40 = v22[3];
          if (v41 >= v40 >> 1)
          {
            v22 = sub_2191FA334(v40 > 1, v41 + 1, 1, v22);
          }

          v22[2] = v41 + 1;
          (*(v64 + 32))(v22 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v41, v16, v63);
          i = v60;
          goto LABEL_9;
        }

        __break(1u);
LABEL_40:
        ;
      }

LABEL_42:
      if ([a1 respondsToSelector_])
      {
        v47 = [a1 paidBundleConfig];
        [v47 appLaunchUpsellNewSessionBackgroundTimeInterval];
      }

      v48 = v52;
      [v52 configVersion];
      [v48 presentationRequirementTimeout];
      v49 = v53;
      sub_219BE9864();
      v56(v49);
      swift_unknownObjectRelease();

      (*(v54 + 8))(v49, v57);
    }

    else
    {
      sub_219201354();
      v44 = swift_allocError();
      *v45 = 1;
      swift_unknownObjectRetain();
      a3(v44);

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (a2)
    {
      v42 = a2;
      v43 = a2;
    }

    else
    {
      sub_219201354();
      v43 = swift_allocError();
      a2 = v43;
      *v46 = 0;
    }

    a3(v43);
  }
}

unint64_t sub_219201354()
{
  result = qword_27CC17698;
  if (!qword_27CC17698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC17698);
  }

  return result;
}

unint64_t sub_2192013A8()
{
  result = qword_280E8DF30;
  if (!qword_280E8DF30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8DF30);
  }

  return result;
}

unint64_t sub_219201408()
{
  result = qword_27CC176A8;
  if (!qword_27CC176A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC176A8);
  }

  return result;
}

uint64_t OfflineStatusBannerModule.createViewController()()
{
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  type metadata accessor for LegacyOfflineStatusBannerViewController();
  result = sub_219BE1E24();
  if (result)
  {
    v2 = result;
    sub_2192016F4(&qword_27CC176B0, type metadata accessor for LegacyOfflineStatusBannerViewController);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t OfflineStatusBannerModule.createOfflineBannerCoordinator()()
{
  v0 = sub_219BE1BF4();
  MEMORY[0x28223BE20](v0);
  sub_2192016F4(&qword_280EE7E70, MEMORY[0x277D6CA70]);
  sub_218709BC4(0, &qword_280E8F610, MEMORY[0x277D6CA70], MEMORY[0x277D83940]);
  sub_218711654();

  sub_219BF7164();
  sub_218709BC4(0, &qword_280EE7228, type metadata accessor for OfflineStatusBannerCoordinator, MEMORY[0x277D6CEE8]);
  swift_allocObject();
  return sub_219BE2D14();
}

uint64_t sub_21920168C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
  type metadata accessor for OfflineStatusBannerCoordinator();
  result = sub_219BE1E24();
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2192016F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21920175C()
{
  v0 = sub_219BE1BF4();
  MEMORY[0x28223BE20](v0);
  sub_2192016F4(&qword_280EE7E70, MEMORY[0x277D6CA70]);
  sub_218709BC4(0, &qword_280E8F610, MEMORY[0x277D6CA70], MEMORY[0x277D83940]);
  sub_218711654();

  sub_219BF7164();
  sub_218709BC4(0, &qword_280EE7228, type metadata accessor for OfflineStatusBannerCoordinator, MEMORY[0x277D6CEE8]);
  swift_allocObject();
  return sub_219BE2D14();
}

void sub_219201950()
{
  if (!qword_280E92220)
  {
    type metadata accessor for SportsBracketTagFeedGroupConfigData();
    sub_219205680(&unk_280E9C6E0, type metadata accessor for SportsBracketTagFeedGroupConfigData);
    sub_219205680(&qword_280E9C6F0, type metadata accessor for SportsBracketTagFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E92220);
    }
  }
}

uint64_t type metadata accessor for SportsBracketTagFeedGroupEmitter()
{
  result = qword_280EA4970;
  if (!qword_280EA4970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219201A7C()
{
  sub_219201950();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SportsBracketTagFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      sub_2186C709C(319, &qword_280E90510);
      if (v2 <= 0x3F)
      {
        sub_2186C709C(319, &unk_280E90250);
        if (v3 <= 0x3F)
        {
          sub_2186C709C(319, qword_280EBA370);
          if (v4 <= 0x3F)
          {
            sub_2186C709C(319, &qword_280EE9F20);
            if (v5 <= 0x3F)
            {
              sub_2186C709C(319, &qword_280E8FD40);
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

uint64_t sub_219201BF0(uint64_t a1)
{
  v3 = type metadata accessor for SportsBracketTagFeedGroupEmitter();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE3204();
  v26 = type metadata accessor for SportsBracketTagFeedGroupEmitter;
  sub_2192056C8(v1, v6, type metadata accessor for SportsBracketTagFeedGroupEmitter);
  v7 = *(v4 + 80);
  v25 = (v7 + 16) & ~v7;
  v28 = v25 + v5;
  v8 = (v25 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  sub_2192026D4(v6, v9 + ((v7 + 16) & ~v7));
  *(v9 + v8) = a1;

  v10 = sub_219BE2E54();
  sub_219BE3054();

  v11 = v27;
  sub_2192056C8(v27, v6, type metadata accessor for SportsBracketTagFeedGroupEmitter);
  v12 = swift_allocObject();
  v13 = v25;
  sub_2192026D4(v6, v12 + v25);
  *(v12 + v8) = a1;

  v14 = sub_219BE2E54();
  sub_219202A48();
  sub_219BE2F64();

  v15 = v11;
  v16 = v11;
  v17 = v26;
  sub_2192056C8(v15, v6, v26);
  v18 = swift_allocObject();
  sub_2192026D4(v6, v18 + v13);
  *(v18 + v8) = a1;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_219203B9C;
  *(v19 + 24) = v18;

  v20 = sub_219BE2E54();
  sub_218A59C84();
  sub_219BE2F74();

  sub_2192056C8(v16, v6, v17);
  v21 = swift_allocObject();
  sub_2192026D4(v6, v21 + v13);
  v22 = sub_219BE2E54();
  v23 = sub_219BE3064();

  return v23;
}

uint64_t sub_219201F64@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_219201950();
  v6 = v5;
  v7 = swift_allocBox();
  result = (*(*(v6 - 8) + 16))(v8, v2 + *(a1 + 20), v6);
  *a2 = v7 | 0x4000000000000004;
  return result;
}

uint64_t sub_219201FF4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 24);
  a2[3] = type metadata accessor for SportsBracketTagFeedGroupKnobs();
  a2[4] = sub_219205680(qword_280EAB258, type metadata accessor for SportsBracketTagFeedGroupKnobs);
  a2[5] = sub_219205680(&qword_27CC17700, type metadata accessor for SportsBracketTagFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_2192056C8(v2 + v4, boxed_opaque_existential_1, type metadata accessor for SportsBracketTagFeedGroupKnobs);
}

uint64_t sub_219202140@<X0>(uint64_t *a1@<X8>)
{
  sub_2186E49E0(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_219201950();

  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_218A426AC(inited + 32);
  sub_2186E49E0(0, &qword_27CC17708, type metadata accessor for SportsBracketTagFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a1[3] = v5;
  a1[4] = sub_219205730();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_2192022B8()
{
  sub_219205680(&unk_27CC176C8, type metadata accessor for SportsBracketTagFeedGroupEmitter);

  return sub_219BE2324();
}

uint64_t sub_2192024C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SportsBracketTagFeedGroupEmitter();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v15 = a2;
  v16 = a3;
  sub_219BF43B4();
  sub_219BE3204();
  sub_2192056C8(a2, &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for SportsBracketTagFeedGroupEmitter);
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  sub_2192026D4(&v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v9 + v8);
  *(v9 + ((v7 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;

  v10 = sub_219BE2E54();
  sub_2186E49E0(0, &unk_280E8EE50, MEMORY[0x277D34610], MEMORY[0x277D83940]);
  sub_219BE2F64();

  v11 = sub_219BE2E54();
  v12 = sub_219BE2F74();

  return v12;
}

uint64_t sub_2192026D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsBracketTagFeedGroupEmitter();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_219202738(uint64_t a1)
{
  v3 = *(type metadata accessor for SportsBracketTagFeedGroupEmitter() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_2192024C0(a1, v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_2192027D0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  if (!(*a1 >> 62))
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v10 = sub_219BEEDD4();
    sub_219205680(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277D323C8], v10);
    return swift_willThrow();
  }

  result = sub_219BF7214();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x21CECE0F0](0, v5);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v7 = *(v5 + 32);
  }

  sub_219202AB0(a3, v7);
  if (v3)
  {
  }

  *(swift_allocObject() + 16) = v5;

  v8 = sub_219BE2E54();
  sub_219202A48();
  v9 = sub_219BE2F74();

  return v9;
}

uint64_t sub_2192029B0(uint64_t *a1)
{
  v3 = *(type metadata accessor for SportsBracketTagFeedGroupEmitter() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_2192027D0(a1, v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_219202A48()
{
  if (!qword_27CC176E8)
  {
    sub_219BF1904();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC176E8);
    }
  }
}

uint64_t sub_219202AB0(uint64_t a1, uint64_t a2)
{
  v108 = a2;
  v3 = MEMORY[0x277D83D88];
  sub_2186E49E0(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v106 = &v78 - v5;
  sub_2186E49E0(0, &qword_280E90150, MEMORY[0x277D33EC8], v3);
  MEMORY[0x28223BE20](v6 - 8);
  v94 = &v78 - v7;
  sub_2186E49E0(0, &qword_280E91A70, sub_2189AD5C8, v3);
  MEMORY[0x28223BE20](v8 - 8);
  v93 = &v78 - v9;
  v10 = sub_219BF2AB4();
  v104 = *(v10 - 8);
  v105 = v10;
  MEMORY[0x28223BE20](v10);
  v103 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E49E0(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v3);
  MEMORY[0x28223BE20](v12 - 8);
  v88 = &v78 - v13;
  v14 = sub_219BF2034();
  v101 = *(v14 - 8);
  v102 = v14;
  MEMORY[0x28223BE20](v14);
  v100 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for SportsBracketTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v87);
  v111 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_219BF3E84();
  v107 = *(v81 - 8);
  v17 = v107;
  MEMORY[0x28223BE20](v81);
  v80 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E49E0(0, &unk_280E8FEF0, MEMORY[0x277D34350], v3);
  MEMORY[0x28223BE20](v19 - 8);
  v86 = (&v78 - v20);
  v85 = sub_219BF3484();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v83 = (&v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218CCFB5C();
  v23 = v22;
  v96 = *(v22 - 8);
  v24 = v96;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v110 = &v78 - v28;
  v29 = sub_219BF4EB4();
  v97 = *(v29 - 8);
  v98 = v29;
  MEMORY[0x28223BE20](v29);
  v31 = &v78 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = a1;
  sub_219BEF0B4();
  v32 = *(v115 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v33 = [v32 backingTag];

  v92 = v33;
  v34 = [v33 asSports];
  sub_219BF4E94();
  sub_219BF4BA4();
  v95 = v31;
  v113 = v31;
  sub_219BF4394();
  v35 = v112;
  sub_219BE32B4();
  v89 = v35;
  v36 = *(v24 + 8);
  v91 = v24 + 8;
  v90 = v36;
  v36(v27, v23);
  v37 = MEMORY[0x277D84560];
  sub_2186E49E0(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
  v38 = (*(v107 + 80) + 32) & ~*(v107 + 80);
  v79 = *(v17 + 72);
  v112 = swift_allocObject();
  v82 = xmmword_219C09BA0;
  *(v112 + 16) = xmmword_219C09BA0;
  sub_2186E49E0(0, &unk_280E8B7A0, MEMORY[0x277D34138], v37);
  v39 = sub_219BF3C84();
  v40 = *(v39 - 8);
  v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = v82;
  v43 = swift_allocObject();
  v44 = *(v96 + 16);
  v96 = v23;
  v44(v27, v110, v23);
  sub_219BF4BF4();
  swift_allocObject();
  *(v43 + 16) = sub_219BF4BB4();
  v45 = v83;
  *v83 = v43;
  v46 = v38;
  (*(v84 + 104))(v45, *MEMORY[0x277D33DF8], v85);
  sub_219BF1AC4();
  (*(v40 + 104))(v42 + v41, *MEMORY[0x277D34130], v39);
  v47 = v112;
  v48 = MEMORY[0x277D84F90];
  sub_218F0B984(MEMORY[0x277D84F90]);
  sub_218F0BA7C(v48);
  sub_218F0BB90(v48);
  v49 = v86;
  sub_219BF3E74();
  sub_219BF4BC4();
  v50 = sub_219BF41B4();
  v51 = *(v50 - 8);
  if ((*(v51 + 48))(v49, 1, v50) == 1)
  {
    sub_219205364(v49);
  }

  else
  {
    sub_219BF41A4();
    (*(v51 + 8))(v49, v50);
    v52 = MEMORY[0x277D84F90];
    sub_218F0B984(MEMORY[0x277D84F90]);
    sub_218F0BA7C(v52);
    sub_218F0BB90(v52);
    v53 = v80;
    sub_219BF3E74();
    v55 = v47[2];
    v54 = v47[3];
    v56 = v47;
    if (v55 >= v54 >> 1)
    {
      v56 = sub_2191F6E6C(v54 > 1, v55 + 1, 1, v47);
    }

    v112 = v56;
    *(v56 + 16) = v55 + 1;
    (*(v107 + 32))(v56 + v46 + v55 * v79, v53, v81);
  }

  v57 = type metadata accessor for SportsBracketTagFeedGroupEmitter();
  v58 = (v109 + *(v57 + 28));
  v59 = v58[3];
  v107 = v58[4];
  v108 = v59;
  v86 = __swift_project_boxed_opaque_existential_1(v58, v59);
  sub_219201950();
  sub_219BEDD14();
  v87 = *(v87 + 20);
  v60 = sub_219BEC004();
  (*(*(v60 - 8) + 56))(v88, 1, 1, v60);
  sub_219A95188(v48);
  sub_219A95188(v48);
  sub_219A951A0(v48);
  sub_219A951B8(v48);
  sub_219A952CC(v48);
  sub_219A952E4(v48);
  sub_219A953F8(v48);
  v61 = v100;
  sub_219BF2024();
  v62 = *(v57 + 24);
  sub_2189AD5C8();
  v64 = v63;
  v65 = *(v63 - 8);
  v66 = v93;
  (*(v65 + 16))(v93, v109 + v62, v63);
  (*(v65 + 56))(v66, 0, 1, v64);
  sub_219BEF0B4();
  v67 = *(v115 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v68 = sub_219BF35D4();
  (*(*(v68 - 8) + 56))(v94, 1, 1, v68);
  LOBYTE(v114) = 19;
  sub_2192053F0(0, &qword_280E90090, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  sub_219BEF0B4();
  sub_218CB8CBC();

  sub_219BEF0B4();
  v69 = *(v114 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  sub_219BF3914();
  swift_allocObject();
  sub_219BF3904();
  v70 = sub_219BF2774();
  (*(*(v70 - 8) + 56))(v106, 1, 1, v70);
  v71 = qword_280E8D7F8;
  *MEMORY[0x277D30BC0];
  if (v71 != -1)
  {
    swift_once();
  }

  qword_280F61708;
  v72 = v103;
  sub_219BF2A84();
  v73 = v87;
  v74 = v111;
  v75 = sub_219BF2194();
  swift_unknownObjectRelease();
  (*(v104 + 8))(v72, v105);
  (*(v101 + 8))(v61, v102);
  v90(v110, v96);
  v76 = sub_219BF1934();
  (*(*(v76 - 8) + 8))(&v74[v73], v76);
  (*(v97 + 8))(v95, v98);
  return v75;
}

uint64_t sub_219203A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_219202A48();
  v7 = *(v6 + 48);
  v8 = sub_219BF1904();
  (*(*(v8 - 8) + 16))(a3, a1, v8);
  *(a3 + v7) = a2;
}

uint64_t sub_219203AE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = sub_219ADB314(a2);
  if (v7)
  {
    v8 = v7;
    sub_218ACC140();
    v10 = (a4 + *(v9 + 48));
    sub_219203C50(a1, a3, a4);
    v10[3] = &type metadata for SportsBracketTagFeedGroupEmitterCursor;
    *v10 = v8;
  }

  else
  {
    sub_219203C50(a1, a3, a4);
  }

  sub_218A59C84();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_219203B9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for SportsBracketTagFeedGroupEmitter() - 8);
  v8 = *(v3 + ((*(v7 + 64) + ((*(v7 + 80) + 16) & ~*(v7 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_219203AE0(a1, a2, v8, a3);
}

uint64_t sub_219203C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a2;
  v24 = a3;
  sub_2186E49E0(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v23 = v20 - v5;
  v6 = sub_219BEF554();
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v20[1] = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_219BF1904();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_219BED8D4();
  v13 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, a1, v9);
  type metadata accessor for SportsBracketTagFeedGroupEmitter();
  sub_219201950();
  v16 = sub_219BEDCB4();
  v20[2] = v17;
  v20[3] = v16;
  sub_219BEDCC4();
  sub_219BEDCC4();
  sub_2189AD5C8();
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  v18 = sub_219BEE5D4();
  (*(*(v18 - 8) + 56))(v23, 1, 1, v18);
  sub_219BED854();
  (*(v13 + 32))(v24, v15, v21);
  type metadata accessor for TagFeedGroup();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_219204004(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_219202A48();
  return v3(a1, *(a1 + *(v4 + 48)));
}

uint64_t sub_219204064()
{
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  type metadata accessor for TagFeedGroup();
  sub_219205680(&qword_280EDE9C0, type metadata accessor for TagFeedGroup);
  return sub_219BEF194();
}

uint64_t sub_2192041C0()
{
  v1 = sub_219BF4CF4();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_219BF43B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219BEF0B4();
  v6 = *(v19 + 16);

  v7 = *(v6 + 32);

  v8 = [v7 backingTag];

  v9 = [v8 asSports];
  swift_unknownObjectRelease();
  if (v9)
  {
    v18[1] = v0;
    if (qword_280E8D7F8 != -1)
    {
      swift_once();
    }

    sub_2186F20D4();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_219C09BA0;
    v19 = 0;
    v20 = 0xE000000000000000;
    v21 = v9;
    sub_2186D85DC();
    sub_219BF7484();
    v12 = v19;
    v11 = v20;
    *(v10 + 56) = MEMORY[0x277D837D0];
    *(v10 + 64) = sub_2186FC3BC();
    *(v10 + 32) = v12;
    *(v10 + 40) = v11;
    sub_219BF6214();
    sub_219BE5314();

    sub_219BDC8D4();
    sub_219BDC8B4();
    sub_219BDC6B4();
    sub_219BDC8A4();

    if (v19 == 1)
    {
      sub_219BF6214();
      sub_219BE5314();
      swift_unknownObjectRetain();
      sub_219BF4CE4();
      sub_219BF49F4();
      swift_allocObject();
      *v5 = sub_219BF49D4();
      v13 = MEMORY[0x277D343F0];
    }

    else
    {
      sub_2186DEF40(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_219C146A0;
      *(v16 + 32) = v9;
      swift_unknownObjectRetain();
      sub_219BF4CE4();
      sub_219BF4CA4();
      v13 = MEMORY[0x277D34400];
    }

    (*(v3 + 104))(v5, *v13, v2);
    sub_2186E49E0(0, &qword_27CC176F8, MEMORY[0x277D34408], MEMORY[0x277D6CF30]);
    swift_allocObject();
    v14 = sub_219BE3014();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = sub_219BEEDD4();
    sub_219205680(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277D323A0], v14);
    swift_willThrow();
  }

  return v14;
}

uint64_t sub_219204680(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v25 = a2;
  v4 = sub_219BF0BD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SportsBracketTagFeedGroupEmitter();
  type metadata accessor for SportsBracketTagFeedGroupKnobs();
  sub_219BEF134();
  sub_219BEF524();
  v8 = *(v5 + 8);
  v8(v7, v4);
  v9 = v26;
  sub_219BEF134();
  sub_219BEF524();
  v8(v7, v4);
  v10 = v26;
  sub_219BEF0B4();
  v11 = *(v26 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C0B8C0;
  v13 = v25;
  v14 = *(sub_219BF43A4() + 16);

  v15 = MEMORY[0x277D83B88];
  v16 = MEMORY[0x277D83C10];
  *(v12 + 56) = MEMORY[0x277D83B88];
  *(v12 + 64) = v16;
  *(v12 + 32) = v14;
  *(v12 + 96) = v15;
  *(v12 + 104) = v16;
  *(v12 + 72) = v9;
  *(v12 + 136) = v15;
  *(v12 + 144) = v16;
  *(v12 + 112) = v10;
  sub_219BF6214();
  sub_219BE5314();

  MEMORY[0x28223BE20](v17);
  *(&v25 - 2) = v3;
  *(&v25 - 1) = v13;
  sub_219205570();
  sub_219BE3204();
  v18 = swift_allocObject();
  v18[2] = v11;
  v18[3] = v10;
  v18[4] = v9;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_2192055E0;
  *(v19 + 24) = v18;
  v20 = v11;
  v21 = sub_219BE2E54();
  sub_2186E49E0(0, &unk_280E8EE50, MEMORY[0x277D34610], MEMORY[0x277D83940]);
  sub_219BE2F74();

  v22 = sub_219BE2E54();
  v23 = sub_219BE2FD4();

  return v23;
}

uint64_t sub_219204A40(uint64_t a1)
{
  v2 = sub_219BF4684();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SportsBracketTagFeedGroupEmitter();
  __swift_project_boxed_opaque_existential_1((a1 + *(v6 + 44)), *(a1 + *(v6 + 44) + 24));
  (*(v3 + 104))(v5, *MEMORY[0x277D34490], v2);
  sub_219BF4C14();
  (*(v3 + 8))(v5, v2);
  swift_getObjectType();
  sub_219BF2F74();
  v7 = sub_219BE31C4();

  return v7;
}

uint64_t sub_219204BCC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, int64_t a5)
{
  v6 = v5;
  v11 = sub_219BF41E4();
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v43 = qword_280F61708;
  sub_2186F20D4();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C09EC0;
  v41 = a5;
  v42 = a1;
  if (v11 >> 62)
  {
    v13 = sub_219BF7214();
  }

  else
  {
    v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = MEMORY[0x277D83C10];
  *(v12 + 56) = MEMORY[0x277D83B88];
  *(v12 + 64) = v14;
  *(v12 + 32) = v13;
  v15 = [objc_msgSend(a3 backingTag];
  swift_unknownObjectRelease();
  v16 = sub_219BF5414();
  v18 = v17;

  *(v12 + 96) = MEMORY[0x277D837D0];
  *(v12 + 104) = sub_2186FC3BC();
  *(v12 + 72) = v16;
  *(v12 + 80) = v18;
  sub_219BF6214();
  sub_219BE5314();

  MEMORY[0x28223BE20](v19);
  v40[2] = v42;
  v40[3] = a3;
  v20 = sub_218DDFEC4(sub_219205664, v40, v11);

  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_219C09BA0;
  v22 = v20 >> 62;
  if (v20 >> 62)
  {
    v23 = sub_219BF7214();
  }

  else
  {
    v23 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v21 + 56) = MEMORY[0x277D83B88];
  *(v21 + 64) = MEMORY[0x277D83C10];
  *(v21 + 32) = v23;
  sub_219BF6214();
  sub_219BE5314();

  if (a4 < 0)
  {
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v22)
  {
    if ((v20 & 0x8000000000000000) != 0)
    {
      v6 = v20;
    }

    else
    {
      v6 = v20 & 0xFFFFFFFFFFFFFF8;
    }

    v11 = sub_219BF7214();
    if (sub_219BF7214() < 0)
    {
      goto LABEL_54;
    }

    if (v11 >= a4)
    {
      v26 = a4;
    }

    else
    {
      v26 = v11;
    }

    if (v11 < 0)
    {
      v26 = a4;
    }

    if (a4)
    {
      a3 = v26;
    }

    else
    {
      a3 = 0;
    }

    v24 = sub_219BF7214();
  }

  else
  {
    v24 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24 >= a4)
    {
      v25 = a4;
    }

    else
    {
      v25 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (a4)
    {
      a3 = v25;
    }

    else
    {
      a3 = 0;
    }
  }

  if (v24 < a3)
  {
    goto LABEL_52;
  }

  if ((v20 & 0xC000000000000001) != 0 && a3)
  {
    sub_219BF4BF4();

    v27 = 0;
    do
    {
      v28 = v27 + 1;
      sub_219BF7334();
      v27 = v28;
    }

    while (a3 != v28);
  }

  else
  {
  }

  if (v22)
  {
    a4 = sub_219BF7564();
    v11 = v29;
    v6 = v30;
    a3 = v31;
  }

  else
  {
    v6 = 0;
    a4 = v20 & 0xFFFFFFFFFFFFFF8;
    v11 = (v20 & 0xFFFFFFFFFFFFFF8) + 32;
    a3 = (2 * a3) | 1;
  }

  v32 = (a3 >> 1) - v6;
  v33 = v41;
  if (__OFSUB__(a3 >> 1, v6))
  {
    goto LABEL_53;
  }

  if (v32 < v41)
  {
    v34 = sub_219BEEDD4();
    sub_219205680(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    *v35 = v33;
    v35[1] = v32;
    (*(*(v34 - 8) + 104))(v35, *MEMORY[0x277D32400], v34);
    swift_willThrow();
    swift_unknownObjectRelease();
    return v34;
  }

  if ((a3 & 1) == 0)
  {
LABEL_42:
    sub_218B67334(a4, v11, v6, a3);
    v34 = v36;
    swift_unknownObjectRelease();
    return v34;
  }

  sub_219BF7934();
  swift_unknownObjectRetain_n();
  v37 = swift_dynamicCastClass();
  if (!v37)
  {
    swift_unknownObjectRelease();
    v37 = MEMORY[0x277D84F90];
  }

  v38 = *(v37 + 16);

  if (v38 != v32)
  {
LABEL_55:
    swift_unknownObjectRelease_n();
    goto LABEL_42;
  }

  v34 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v34)
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F90];
  }

  return v34;
}

uint64_t sub_2192050F8@<X0>(uint64_t *a1@<X0>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = sub_219BF6394();
  v7 = [a2 alternativeFeedDescriptor];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 feedConfiguration];
  }

  else
  {
    v9 = [a2 feedConfiguration];
  }

  v10 = sub_218CCD9A4(v6, v5, 0x72427374726F7073, 0xED000074656B6361, v9);
  result = swift_unknownObjectRelease();
  *a3 = v10;
  return result;
}

uint64_t sub_2192051D4()
{
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186F20D4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_219C09BA0;
  sub_2186C709C(0, &qword_280E8B580);
  sub_219BF7484();
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_2186FC3BC();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_219BE5314();
}

uint64_t sub_219205320@<X0>(uint64_t *a1@<X8>)
{
  result = sub_219BF4384();
  *a1 = result;
  return result;
}

uint64_t sub_219205364(uint64_t a1)
{
  sub_2186E49E0(0, &unk_280E8FEF0, MEMORY[0x277D34350], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2192053F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for TagFeedServiceConfig();
    v7 = sub_219205680(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_219205570()
{
  if (!qword_280E900E0)
  {
    sub_219BF3824();
    sub_219BF4264();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E900E0);
    }
  }
}

uint64_t sub_219205600@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 16);
  sub_219205570();
  result = v6(a1, a1 + *(v7 + 48));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_219205680(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2192056C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_219205730()
{
  result = qword_27CC17710;
  if (!qword_27CC17710)
  {
    sub_2186E49E0(255, &qword_27CC17708, type metadata accessor for SportsBracketTagFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC17710);
  }

  return result;
}

uint64_t sub_2192057B8(uint64_t a1)
{
  sub_218ED5B50();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BF2894();
  MEMORY[0x28223BE20](v5 - 8);
  sub_219BDEDF4();
  v16 = &type metadata for ContinueReadingThumbnailLayoutAttributes;
  v17 = sub_2192059D4();
  v6 = objc_opt_self();
  v7 = [v6 mainScreen];
  [v7 scale];

  v8 = [v6 mainScreen];
  v9 = [v8 traitCollection];

  sub_219BF2884();
  v10 = sub_219BE5AD4();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  v11 = sub_219BF3B04();
  v12 = sub_219BDEE04();
  (*(*(v12 - 8) + 8))(a1, v12);
  return v11;
}

unint64_t sub_2192059D4()
{
  result = qword_280E96598[0];
  if (!qword_280E96598[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E96598);
  }

  return result;
}

uint64_t type metadata accessor for FeaturedIssueMagazineFeedGroupConfigData()
{
  result = qword_280E96498;
  if (!qword_280E96498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219205A9C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_219BEF554();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x28223BE20](v3);
  v37 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for FeaturedIssueMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v40);
  v38 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_219BF1934();
  v36 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D15B24();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21920656C(0, &qword_280E8C728, MEMORY[0x277D844C8]);
  v44 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2192064B4();
  v15 = v14;
  v16 = v45;
  sub_219BF7B34();
  if (!v16)
  {
    v45 = v12;
    v35 = v7;
    v17 = v40;
    v18 = v41;
    v20 = v42;
    v19 = v43;
    v50 = 2;
    v21 = v15;
    v22 = sub_219BF76A4();
    v49 = 4;
    v34 = sub_219BF76A4();
    v48 = 3;
    sub_2192065D0(&unk_280E91390, MEMORY[0x277D32648]);
    sub_219BF76E4();
    v47 = 5;
    v33 = sub_219BF76A4();
    v46 = 1;
    sub_2192065D0(&qword_280E90808, MEMORY[0x277D33478]);
    sub_219BF7734();
    v45[1](v21, v44);
    v24 = v38;
    *v38 = 3;
    v25 = v22;
    v26 = v17;
    v24[v17[6]] = v25 & 1;
    v24[v17[8]] = (v34 == 2) | v34 & 1;
    v27 = *(v18 + 48);
    v28 = v27(v10, 1, v20);
    v29 = v10;
    if (v28 == 1)
    {
      v45 = v10;
      v30 = v37;
      (*(v18 + 104))(v37, *MEMORY[0x277D32630], v20);
      v31 = v19;
      if (v27(v45, 1, v20) != 1)
      {
        sub_218D15BD0(v45);
      }
    }

    else
    {
      v30 = v37;
      (*(v18 + 32))(v37, v29, v20);
      v31 = v19;
    }

    v32 = v38;
    (*(v18 + 32))(&v38[v26[7]], v30, v20);
    *(v32 + v26[9]) = v33 & 1;
    (*(v36 + 32))(v32 + v26[5], v35, v39);
    sub_219206508(v32, v31);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_219206044(void *a1)
{
  v3 = v1;
  sub_21920656C(0, &qword_280E8C1D0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2192064B4();
  sub_219BF7B44();
  v11[15] = *v3;
  v11[14] = 0;
  sub_218CD67F4();
  sub_219BF7834();
  if (!v2)
  {
    type metadata accessor for FeaturedIssueMagazineFeedGroupConfigData();
    v11[13] = 1;
    sub_219BF1934();
    sub_2192065D0(&qword_280E90810, MEMORY[0x277D33478]);
    sub_219BF7834();
    v11[12] = 2;
    sub_219BF7804();
    v11[11] = 3;
    sub_219BEF554();
    sub_2192065D0(&qword_280E913A0, MEMORY[0x277D32648]);
    sub_219BF7834();
    v11[10] = 4;
    sub_219BF7804();
    v11[9] = 5;
    sub_219BF7804();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_219206320()
{
  v1 = *v0;
  v2 = 1684957547;
  v3 = 0xD00000000000001BLL;
  if (v1 == 4)
  {
    v3 = 0xD000000000000017;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000016;
  }

  v4 = 0x746E65746E6F63;
  if (v1 != 1)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = v4;
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

uint64_t sub_2192063E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_219206730(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21920640C(uint64_t a1)
{
  v2 = sub_2192064B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219206448(uint64_t a1)
{
  v2 = sub_2192064B4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2192064B4()
{
  result = qword_280E964D0;
  if (!qword_280E964D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E964D0);
  }

  return result;
}

uint64_t sub_219206508(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeaturedIssueMagazineFeedGroupConfigData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21920656C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2192064B4();
    v7 = a3(a1, &type metadata for FeaturedIssueMagazineFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2192065D0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21920662C()
{
  result = qword_27CC17720;
  if (!qword_27CC17720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC17720);
  }

  return result;
}

unint64_t sub_219206684()
{
  result = qword_280E964C0;
  if (!qword_280E964C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E964C0);
  }

  return result;
}

unint64_t sub_2192066DC()
{
  result = qword_280E964C8;
  if (!qword_280E964C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E964C8);
  }

  return result;
}

uint64_t sub_219206730(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000219CD77A0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000219CD77C0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000219CD7500 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000219CD9420 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_219BF78F4();

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

uint64_t sub_219206930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = sub_219BE5134();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2192069F4, 0, 0);
}

uint64_t sub_2192069F4()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = (v0[3] + OBJC_IVAR____TtC7NewsUI234LiveActivityWebEmbedMessageHandler_liveActivityManager);
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 104))(v1, *MEMORY[0x277D34800], v3);
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_219206AF8;
  v8 = v0[7];
  v9 = v0[4];

  return MEMORY[0x282193EC0](v9, v8, v5, v6);
}

uint64_t sub_219206AF8()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = v2[7];
  v4 = v2[6];
  v5 = v2[5];
  if (v0)
  {
  }

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_219207A38, 0, 0);
}

uint64_t sub_219206C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = sub_219BE5134();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219206D54, 0, 0);
}

uint64_t sub_219206D54()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = (v0[3] + OBJC_IVAR____TtC7NewsUI234LiveActivityWebEmbedMessageHandler_liveActivityManager);
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 104))(v1, *MEMORY[0x277D34800], v3);
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_219206E58;
  v8 = v0[7];
  v9 = v0[4];

  return MEMORY[0x282193EB0](v9, v8, v5, v6);
}

uint64_t sub_219206E58()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = v2[7];
  v4 = v2[6];
  v5 = v2[5];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_219207A38;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_219206FF0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_219206FF0()
{
  **(v0 + 16) = *(v0 + 72) != 0;

  v1 = *(v0 + 8);

  return v1();
}

void sub_219207160(void *a1)
{
  sub_218760638();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE51D4();
  v58 = *(v6 - 8);
  v7 = *(v58 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v9 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v51 - v10;
  v12 = [a1 name];
  sub_219BF5414();

  v13 = sub_219BF7614();

  if (v13)
  {
    if (v13 != 1)
    {
      goto LABEL_16;
    }

    v57 = 1;
  }

  else
  {
    v57 = 0;
  }

  v14 = [a1 body];
  v15 = sub_219BF5214();

  v16 = sub_2187A1A2C(v15);

  if (v16)
  {
    if (*(v16 + 16) && (v56 = v1, v17 = sub_21870F700(25705, 0xE200000000000000), (v18 & 1) != 0))
    {
      sub_2186D1230(*(v16 + 56) + 32 * v17, v61);

      if (swift_dynamicCast())
      {
        v19 = v59;
        v55 = v60;
        if (qword_27CC08640 != -1)
        {
          swift_once();
        }

        v20 = sub_219BE5434();
        __swift_project_value_buffer(v20, qword_27CCD8BD0);
        swift_unknownObjectRetain();
        v21 = sub_219BE5414();
        v22 = sub_219BF6214();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v53 = v22;
          v24 = v23;
          v52 = swift_slowAlloc();
          v61[0] = v52;
          *v24 = 136446210;
          v25 = [a1 &selRef_removeObserver_];
          v54 = v19;
          sub_219BF5214();

          v26 = sub_219BF5224();
          v28 = v27;

          v29 = sub_2186D1058(v26, v28, v61);

          *(v24 + 4) = v29;
          _os_log_impl(&dword_2186C1000, v21, v53, "LiveActivityWebEmbedMessageHandler did receive message: %{public}s", v24, 0xCu);
          v30 = v52;
          __swift_destroy_boxed_opaque_existential_1(v52);
          MEMORY[0x21CECF960](v30, -1, -1);
          MEMORY[0x21CECF960](v24, -1, -1);
        }

        v31 = v56;
        sub_219BE51B4();
        v32 = sub_219BF5BF4();
        (*(*(v32 - 8) + 56))(v5, 1, 1, v32);
        v33 = v58 + 16;
        (*(v58 + 16))(v9, v11, v6);
        v34 = (*(v33 + 64) + 40) & ~*(v33 + 64);
        v35 = (v33 + 16);
        v36 = (v33 - 8);
        if (v57)
        {
          v37 = swift_allocObject();
          *(v37 + 2) = 0;
          *(v37 + 3) = 0;
          *(v37 + 4) = v31;
          (*v35)(&v37[v34], v9, v6);
          v38 = v31;
          v39 = &unk_219C660F0;
        }

        else
        {
          v37 = swift_allocObject();
          *(v37 + 2) = 0;
          *(v37 + 3) = 0;
          *(v37 + 4) = v31;
          (*v35)(&v37[v34], v9, v6);
          v50 = v31;
          v39 = &unk_219C66100;
        }

        sub_218AB42E8(0, 0, v5, v39, v37);

        (*v36)(v11, v6);
        return;
      }
    }

    else
    {
    }
  }

LABEL_16:
  if (qword_27CC08640 != -1)
  {
    swift_once();
  }

  v40 = sub_219BE5434();
  __swift_project_value_buffer(v40, qword_27CCD8BD0);
  swift_unknownObjectRetain();
  v41 = sub_219BE5414();
  v42 = sub_219BF61F4();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v61[0] = v44;
    *v43 = 136446210;
    v45 = [a1 body];
    sub_219BF5214();

    v46 = sub_219BF5224();
    v48 = v47;

    v49 = sub_2186D1058(v46, v48, v61);

    *(v43 + 4) = v49;
    _os_log_impl(&dword_2186C1000, v41, v42, "LiveActivityWebEmbedMessageHandler did receive invalid message: %{public}s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v44);
    MEMORY[0x21CECF960](v44, -1, -1);
    MEMORY[0x21CECF960](v43, -1, -1);
  }
}

uint64_t sub_219207848(uint64_t a1)
{
  v4 = *(sub_219BE51D4() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2187608D4;

  return sub_219206C90(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_219207940(uint64_t a1)
{
  v4 = *(sub_219BE51D4() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2187609C8;

  return sub_219206930(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_219207A3C()
{
  sub_219BEEFF4();
  sub_219BEEFE4();
  sub_2189BD538(0);
  sub_219BEB2B4();
  if (v3)
  {
    sub_219BEDC74();
    swift_dynamicCast();
  }

  else
  {
    sub_218806FD0(v2);
  }

  type metadata accessor for AudioHistoryFeedServiceConfig();
  sub_21872F678(&qword_280EB13F0, type metadata accessor for AudioHistoryFeedServiceConfig);
  v0 = sub_219BEEFD4();

  return v0;
}

uint64_t sub_219207B4C()
{
  sub_21920946C(0, &qword_280EE68E0, MEMORY[0x277D6CF38]);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - v1;
  v3 = sub_219BE3184();
  __swift_allocate_value_buffer(v3, qword_27CC17738);
  v4 = __swift_project_value_buffer(v3, qword_27CC17738);
  v5 = [objc_opt_self() mainBundle];
  sub_219BE3194();
  v6 = *(v3 - 8);
  result = (*(v6 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v6 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_219207C94(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v158 = a2;
  v159 = a4;
  v161 = a3;
  v160 = type metadata accessor for CuratedShortcut(0);
  v5 = MEMORY[0x28223BE20](v160);
  v157 = (v144 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v5);
  v147 = v144 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v146 = (v144 - v10);
  v11 = MEMORY[0x28223BE20](v9);
  v149 = v144 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v162 = (v144 - v14);
  v15 = MEMORY[0x28223BE20](v13);
  v154 = v144 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v150 = v144 - v18;
  MEMORY[0x28223BE20](v17);
  v152 = (v144 - v19);
  v20 = sub_219BE22B4();
  v145 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = v144 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21920946C(0, &qword_27CC17750, MEMORY[0x277D6CBF0]);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = v144 - v24;
  v153 = sub_219BE22F4();
  v151 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v148 = v144 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_219BDB954();
  v156 = *(v27 - 8);
  v28 = MEMORY[0x28223BE20](v27);
  v30 = v144 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v155 = v144 - v31;
  v32 = type metadata accessor for CuratedShortcut.Identifier(0);
  MEMORY[0x28223BE20](v32);
  v34 = (v144 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21993568C(v34);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    sub_2192093B4(v34, type metadata accessor for CuratedShortcut.Identifier);
LABEL_11:
    v45 = v159;
    v44 = v160;
    v47 = v161;
    v46 = v162;
    goto LABEL_12;
  }

  if ((EnumCaseMultiPayload - 2) < 4)
  {
    v37 = *v34;
    v36 = v34[1];
    if (sub_2188537B8(*v34, v36, v158))
    {
      if (qword_280EE5F18 != -1)
      {
        swift_once();
      }

      v38 = sub_219BE5434();
      __swift_project_value_buffer(v38, qword_280F62538);

      v39 = sub_219BE5414();
      v40 = sub_219BF6214();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v164 = v42;
        *v41 = 136315138;
        v43 = sub_2186D1058(v37, v36, &v164);

        *(v41 + 4) = v43;
        _os_log_impl(&dword_2186C1000, v39, v40, "Filtered out shortcut with blocked tag id=%s", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v42);
        MEMORY[0x21CECF960](v42, -1, -1);
        MEMORY[0x21CECF960](v41, -1, -1);
      }

      else
      {
      }

      return 0;
    }

    goto LABEL_11;
  }

  v108 = v155;
  v107 = v156;
  v109 = v34;
  v110 = v27;
  (*(v156 + 32))(v155, v109, v27);
  (*(v107 + 16))(v30, v108, v27);
  sub_219BE2624();
  swift_allocObject();
  v111 = sub_219BE2604();
  if (qword_280E92C18 != -1)
  {
    swift_once();
  }

  v112 = v163;
  sub_219BE2614();
  v47 = v161;
  v113 = v153;
  if (v112)
  {

    (*(v156 + 8))(v155, v110);
    (*(v151 + 56))(v25, 1, 1, v113);
    sub_219208F64(v25);
    v163 = 0;
LABEL_38:
    v45 = v159;
    v44 = v160;
    v46 = v162;
    goto LABEL_12;
  }

  v144[0] = v110;
  v144[1] = v111;
  v163 = 0;
  v128 = v151;
  (*(v151 + 56))(v25, 0, 1, v153);
  v129 = v113;
  v130 = v148;
  (*(v128 + 32))(v148, v25, v129);
  sub_219BE22D4();
  v131 = sub_219BE22C4();
  v133 = v132;
  (*(v145 + 8))(v22, v20);
  if (!v133)
  {

    (*(v128 + 8))(v130, v129);
    (*(v156 + 8))(v155, v144[0]);
    goto LABEL_38;
  }

  v134 = v128;
  v135 = sub_2188537B8(v131, v133, v158);
  v46 = v162;
  if (v135)
  {
    v136 = v131;
    v137 = v144[0];
    if (qword_280EE5F18 != -1)
    {
      swift_once();
    }

    v138 = sub_219BE5434();
    __swift_project_value_buffer(v138, qword_280F62538);

    v139 = sub_219BE5414();
    v140 = sub_219BF6214();

    if (os_log_type_enabled(v139, v140))
    {
      v141 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      v164 = v142;
      *v141 = 136315138;
      v143 = sub_2186D1058(v136, v133, &v164);

      *(v141 + 4) = v143;
      _os_log_impl(&dword_2186C1000, v139, v140, "Filtered out shortcut with blocked tag id=%s", v141, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v142);
      MEMORY[0x21CECF960](v142, -1, -1);
      MEMORY[0x21CECF960](v141, -1, -1);
    }

    else
    {
    }

    (*(v134 + 8))(v148, v153);
    (*(v156 + 8))(v155, v137);
    return 0;
  }

  (*(v128 + 8))(v148, v153);
  (*(v156 + 8))(v155, v144[0]);
  v45 = v159;
  v44 = v160;
LABEL_12:
  if (sub_2188537B8(*a1, a1[1], v47))
  {
    if (qword_280EE5F18 != -1)
    {
      swift_once();
    }

    v48 = sub_219BE5434();
    __swift_project_value_buffer(v48, qword_280F62538);
    v49 = v157;
    sub_219209350(a1, v157);

    v50 = sub_219BE5414();
    v51 = sub_219BF6214();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v164 = v53;
      *v52 = 136315394;
      v54 = *v49;
      v55 = v49[1];

      sub_2192093B4(v49, type metadata accessor for CuratedShortcut);
      v56 = sub_2186D1058(v54, v55, &v164);

      *(v52 + 4) = v56;
      *(v52 + 12) = 2080;
      v57 = sub_219BF5D54();
      v59 = sub_2186D1058(v57, v58, &v164);

      *(v52 + 14) = v59;
      _os_log_impl(&dword_2186C1000, v50, v51, "Filtered out shortcut with blocked category=%s, blockedCategoryIds=%s", v52, 0x16u);
      swift_arrayDestroy();
      v60 = v53;
LABEL_45:
      MEMORY[0x21CECF960](v60, -1, -1);
      MEMORY[0x21CECF960](v52, -1, -1);

      return 0;
    }

    v80 = v49;
LABEL_48:
    sub_2192093B4(v80, type metadata accessor for CuratedShortcut);
    return 0;
  }

  v61 = *(a1 + *(v44 + 24));
  if (*(v61 + 16))
  {

    v62 = *(sub_219209174(v61, v45, sub_219209B2C, sub_219209B2C) + 2);

    if (!v62)
    {
      if (qword_280EE5F18 != -1)
      {
        swift_once();
      }

      v114 = sub_219BE5434();
      __swift_project_value_buffer(v114, qword_280F62538);
      v46 = v146;
      sub_219209350(a1, v146);
      v66 = v147;
      sub_219209350(a1, v147);

      v50 = sub_219BE5414();
      v67 = sub_219BF6214();

      if (os_log_type_enabled(v50, v67))
      {
        v52 = swift_slowAlloc();
        v162 = swift_slowAlloc();
        v164 = v162;
        *v52 = 136315650;
        v115 = v46;
        v116 = *v46;
        v117 = v46[1];

        sub_2192093B4(v115, type metadata accessor for CuratedShortcut);
        v118 = sub_2186D1058(v116, v117, &v164);

        *(v52 + 4) = v118;
        *(v52 + 12) = 2080;
        v119 = sub_219BF5D54();
        v121 = v120;
        sub_2192093B4(v66, type metadata accessor for CuratedShortcut);
        v122 = sub_2186D1058(v119, v121, &v164);

        *(v52 + 14) = v122;
        *(v52 + 22) = 2080;
        v123 = sub_219BF5D54();
        v125 = sub_2186D1058(v123, v124, &v164);

        *(v52 + 24) = v125;
        v79 = "Filtered out shortcut with category=%s due to failing rule test for allowed segment set ids=%s, user segment set ids=%s";
        goto LABEL_44;
      }

LABEL_46:

      sub_2192093B4(v66, type metadata accessor for CuratedShortcut);
      v80 = v46;
      goto LABEL_48;
    }
  }

  v63 = *(a1 + *(v44 + 28));
  if (*(v63 + 16))
  {

    v64 = *(sub_219209174(v63, v45, sub_219209B2C, sub_219209B2C) + 2);

    if (v64)
    {
      if (qword_280EE5F18 != -1)
      {
        swift_once();
      }

      v65 = sub_219BE5434();
      __swift_project_value_buffer(v65, qword_280F62538);
      sub_219209350(a1, v46);
      v66 = v149;
      sub_219209350(a1, v149);

      v50 = sub_219BE5414();
      v67 = sub_219BF6214();

      if (os_log_type_enabled(v50, v67))
      {
        v52 = swift_slowAlloc();
        v162 = swift_slowAlloc();
        v164 = v162;
        *v52 = 136315650;
        v68 = v46;
        v69 = *v46;
        v70 = v46[1];

        sub_2192093B4(v68, type metadata accessor for CuratedShortcut);
        v71 = sub_2186D1058(v69, v70, &v164);

        *(v52 + 4) = v71;
        *(v52 + 12) = 2080;
        v72 = sub_219BF5D54();
        v74 = v73;
        sub_2192093B4(v66, type metadata accessor for CuratedShortcut);
        v75 = sub_2186D1058(v72, v74, &v164);

        *(v52 + 14) = v75;
        *(v52 + 22) = 2080;
        v76 = sub_219BF5D54();
        v78 = sub_2186D1058(v76, v77, &v164);

        *(v52 + 24) = v78;
        v79 = "Filtered out shortcut with category=%s due to failing rule test for blocked segment set ids=%s, user segment set ids=%s";
LABEL_44:
        _os_log_impl(&dword_2186C1000, v50, v67, v79, v52, 0x20u);
        v126 = v162;
        swift_arrayDestroy();
        v60 = v126;
        goto LABEL_45;
      }

      goto LABEL_46;
    }
  }

  if (qword_27CC082D8 != -1)
  {
    swift_once();
  }

  v81 = sub_219BE3184();
  __swift_project_value_buffer(v81, qword_27CC17738);
  sub_219209414();
  v82 = sub_219BF5334();
  v83 = v152;
  if (v82 & 1) != 0 || (sub_219BF5334())
  {
    if (qword_280EE5F18 != -1)
    {
      swift_once();
    }

    v84 = sub_219BE5434();
    __swift_project_value_buffer(v84, qword_280F62538);
    sub_219209350(a1, v83);
    v85 = v150;
    sub_219209350(a1, v150);
    v86 = v154;
    sub_219209350(a1, v154);
    v87 = sub_219BE5414();
    v88 = sub_219BF6214();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = v85;
      v90 = swift_slowAlloc();
      v162 = swift_slowAlloc();
      v164 = v162;
      *v90 = 136315906;
      LODWORD(v161) = v88;
      v91 = *v83;
      v92 = v83[1];

      sub_2192093B4(v83, type metadata accessor for CuratedShortcut);
      v93 = sub_2186D1058(v91, v92, &v164);

      *(v90 + 4) = v93;
      *(v90 + 12) = 2080;
      v94 = sub_219BE3134();
      v96 = v95;
      sub_2192093B4(v89, type metadata accessor for CuratedShortcut);
      v97 = sub_2186D1058(v94, v96, &v164);

      *(v90 + 14) = v97;
      *(v90 + 22) = 2080;
      v98 = v154;
      v99 = sub_219BE3134();
      v101 = v100;
      sub_2192093B4(v98, type metadata accessor for CuratedShortcut);
      v102 = sub_2186D1058(v99, v101, &v164);

      *(v90 + 24) = v102;
      *(v90 + 32) = 2080;
      v103 = sub_219BE3134();
      v105 = sub_2186D1058(v103, v104, &v164);

      *(v90 + 34) = v105;
      _os_log_impl(&dword_2186C1000, v87, v161, "Filtered out shortcut with category=%s, due to versioning check: minVersion%s, maxVersion=%s, appVersion=%s", v90, 0x2Au);
      v106 = v162;
      swift_arrayDestroy();
      MEMORY[0x21CECF960](v106, -1, -1);
      MEMORY[0x21CECF960](v90, -1, -1);

      return 0;
    }

    sub_2192093B4(v86, type metadata accessor for CuratedShortcut);
    sub_2192093B4(v85, type metadata accessor for CuratedShortcut);
    v80 = v83;
    goto LABEL_48;
  }

  return 1;
}