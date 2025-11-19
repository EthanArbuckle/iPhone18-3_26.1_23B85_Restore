uint64_t sub_1D7008E78()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 44) >> 13;
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      goto LABEL_8;
    }

    if (v2)
    {
      return 0x746C7561666564;
    }

    v10 = 0x2865736163;
    v5 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v5);

LABEL_13:
    MEMORY[0x1DA6F9910](41, 0xE100000000000000);
    return v10;
  }

  if (v3)
  {
LABEL_8:

    return v1;
  }

  v4 = *(v0 + 16);
  if (!(v4 >> 6))
  {
    v10 = 0x28746F6C73;
    MEMORY[0x1DA6F9910](v1, v2);
    goto LABEL_13;
  }

  if (v4 >> 6 == 1)
  {
    v10 = 0;
    MEMORY[0x1DA6F9910](0x286D657469, 0xE500000000000000);
    sub_1D609C9E4(v1, v2);
    goto LABEL_13;
  }

  if (!(v2 | v1) && v4 == 128)
  {
    return 0x70756F7267;
  }

  if (v1 == 1 && !v2 && v4 == 128)
  {
    return 0x656D656C70707573;
  }

  if (v1 == 2 && !v2 && v4 == 128)
  {
    return 0x656C797473;
  }

  if (v1 == 3 && !v2 && v4 == 128)
  {
    return 0x697461726F636564;
  }

  if (v1 == 4 && !v2 && v4 == 128)
  {
    return 0x7261696C69787561;
  }

  v7 = v4 == 128;
  v9 = v1 == 5 && v2 == 0;
  if (v9 && v7)
  {
    return 0x6E6F6974706FLL;
  }

  else
  {
    return 0x646E69426D657469;
  }
}

uint64_t sub_1D70090F8()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 22) >> 13;
  if (v4 <= 1)
  {
    if (!v4)
    {
      MEMORY[0x1DA6FC0B0](0);
      if (v3 >> 6)
      {
        if (v3 >> 6 == 1)
        {
          MEMORY[0x1DA6FC0B0](2);
          return FormatItemKind.hash(into:)();
        }

        if (v1 | v2 || v3 != 128)
        {
          if (v2 == 1 && !v1 && v3 == 128)
          {
            v9 = 3;
          }

          else if (v2 == 2 && !v1 && v3 == 128)
          {
            v9 = 4;
          }

          else if (v2 == 3 && !v1 && v3 == 128)
          {
            v9 = 5;
          }

          else if (v2 == 4 && !v1 && v3 == 128)
          {
            v9 = 6;
          }

          else if (v2 == 5 && !v1 && v3 == 128)
          {
            v9 = 7;
          }

          else
          {
            v9 = 8;
          }

          return MEMORY[0x1DA6FC0B0](v9);
        }

        goto LABEL_37;
      }
    }

    MEMORY[0x1DA6FC0B0](1);
    sub_1D72621EC();
    return sub_1D7264A2C();
  }

  v5 = v0[3];
  if (v4 == 2)
  {
    MEMORY[0x1DA6FC0B0](2);
    sub_1D7264A2C();
    if ((v1 & 1) == 0)
    {
      MEMORY[0x1DA6FC0B0](v2);
    }

    sub_1D7264A2C();
    if (!v5)
    {
      return sub_1D7264A2C();
    }

    sub_1D7264A2C();
  }

  else
  {
    if (v4 == 3)
    {
      v6 = v0[4];
      v7 = *(v0 + 10) | (*(v0 + 22) << 32);
      MEMORY[0x1DA6FC0B0](3);
      sub_1D72621EC();
      if ((v7 & 0x10000000000) == 0)
      {
        sub_1D7264A2C();
        if ((v3 & 0x100000000) != 0)
        {
          MEMORY[0x1DA6FC0B0](v3 != 0);
          if ((v5 & 0x100000000) != 0)
          {
LABEL_7:
            MEMORY[0x1DA6FC0B0](v5 != 0);
            if ((v6 & 0x100000000) != 0)
            {
LABEL_31:
              MEMORY[0x1DA6FC0B0](v6 != 0);
              if ((v7 & 0x100000000) == 0)
              {
                goto LABEL_40;
              }

              goto LABEL_35;
            }

LABEL_34:
            MEMORY[0x1DA6FC0B0](2);
            sub_1D7264A3C();
            if ((v7 & 0x100000000) == 0)
            {
LABEL_40:
              MEMORY[0x1DA6FC0B0](2);
              return sub_1D7264A3C();
            }

LABEL_35:
            if (v7)
            {
              v9 = 1;
              return MEMORY[0x1DA6FC0B0](v9);
            }

LABEL_37:
            v9 = 0;
            return MEMORY[0x1DA6FC0B0](v9);
          }
        }

        else
        {
          MEMORY[0x1DA6FC0B0](2);
          sub_1D7264A3C();
          if ((v5 & 0x100000000) != 0)
          {
            goto LABEL_7;
          }
        }

        MEMORY[0x1DA6FC0B0](2);
        sub_1D7264A3C();
        if ((v6 & 0x100000000) != 0)
        {
          goto LABEL_31;
        }

        goto LABEL_34;
      }

      return sub_1D7264A2C();
    }

    MEMORY[0x1DA6FC0B0](4);
  }

  return sub_1D72621EC();
}

uint64_t sub_1D7009444()
{
  sub_1D7264A0C();
  sub_1D70090F8();
  return sub_1D7264A5C();
}

uint64_t sub_1D70094AC()
{
  sub_1D7264A0C();
  sub_1D70090F8();
  return sub_1D7264A5C();
}

uint64_t sub_1D7009510(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 44);
  v74 = *(a1 + 40);
  v10 = v74 | (v9 << 32);
  v12 = *a2;
  v11 = *(a2 + 8);
  v13 = *(a2 + 16);
  v14 = *(a2 + 24);
  v15 = *(a2 + 32);
  v16 = *(a2 + 44);
  v17 = *(a2 + 40);
  v18 = v17 | (v16 << 32);
  v73[0] = v4;
  v73[1] = v5;
  v73[2] = v6;
  v73[3] = v7;
  v73[4] = v8;
  v75 = v9;
  v76 = v12;
  v77 = v11;
  v78 = v13;
  v79 = v14;
  v80 = v15;
  v82 = v16;
  v19 = v9 >> 13;
  v81 = v17;
  if (v9 >> 13 > 1)
  {
    if (v19 == 2)
    {
      if (((v18 >> 45) & 7) == 2)
      {
        if (v5)
        {
          if ((v11 & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        else if (v11 & 1 | (v4 != v12))
        {
          goto LABEL_32;
        }

        if (((v5 >> 8) & 1) != ((v11 & 0x100) == 0))
        {
          if (!v7)
          {
            sub_1D67084A4(v4, v5, v6, 0, v8, v74 | (v9 << 32));
            if (v14)
            {
              goto LABEL_33;
            }

            v32 = v12;
            v33 = v11;
            v34 = v13;
            v35 = 0;
            goto LABEL_19;
          }

          if (v14)
          {
            if (v6 != v13 || v7 != v14)
            {
              v48 = v4;
              v49 = v5;
              v61 = v8;
              v66 = v7;
              v53 = sub_1D72646CC();
              sub_1D67084A4(v48, v49, v6, v66, v61, v10);
              sub_1D67084A4(v12, v11, v13, v14, v15, v18);
              sub_1D7009B20(v73);
              if (v53)
              {
                goto LABEL_47;
              }

              goto LABEL_34;
            }

            v38 = v7;
            sub_1D67084A4(v4, v5, v6, v7, v8, v74 | (v9 << 32));
            v32 = v12;
            v33 = v11;
            v34 = v6;
            v35 = v38;
            goto LABEL_19;
          }
        }
      }
    }

    else
    {
      if (v19 == 3)
      {
        if (((v18 >> 45) & 7) == 3)
        {
          if (v4 == v12 && v5 == v11)
          {
            v20 = v4;
            v21 = v5;
            v22 = v7;
            v23 = v8;
            sub_1D67084A4(v4, v5, v6, v7, v8, v74 | (v9 << 32));
            sub_1D67084A4(v20, v21, v13, v14, v15, v18);
            sub_1D7009B20(v73);
          }

          else
          {
            v40 = v4;
            v41 = v5;
            v58 = v8;
            v63 = v7;
            v50 = sub_1D72646CC();
            v42 = v40;
            v43 = v41;
            v22 = v63;
            v23 = v58;
            sub_1D67084A4(v42, v43, v6, v63, v58, v10);
            sub_1D67084A4(v12, v11, v13, v14, v15, v18);
            sub_1D7009B20(v73);
            if ((v50 & 1) == 0)
            {
              goto LABEL_34;
            }
          }

          if ((v10 & 0x10000000000) == 0)
          {
            if ((v18 & 0x10000000000) == 0)
            {
              LOBYTE(v69[0]) = BYTE4(v13) & 1;
              LOBYTE(v67[0]) = BYTE4(v14) & 1;
              v72 = BYTE4(v15) & 1;
              v71 = BYTE4(v18) & 1;
              if (sub_1D70F5E18(v6 | ((HIDWORD(v6) & 1) << 32), v22 | ((HIDWORD(v22) & 1) << 32), v23 | ((HIDWORD(v23) & 1) << 32), v10 | ((HIDWORD(v10) & 1) << 32), v13 | ((HIDWORD(v13) & 1) << 32), v14 | ((BYTE4(v14) & 1) << 32), v15 | ((BYTE4(v15) & 1) << 32), v18 | ((BYTE4(v18) & 1) << 32)))
              {
                goto LABEL_47;
              }
            }

            goto LABEL_34;
          }

          if ((v18 & 0x10000000000) != 0)
          {
LABEL_47:
            v29 = 1;
            return v29 & 1;
          }

LABEL_34:
          v29 = 0;
          return v29 & 1;
        }

        goto LABEL_32;
      }

      if (((v18 >> 45) & 7) == 4)
      {
        if (v4 != v12 || v5 != v11)
        {
          v44 = v4;
          v45 = v5;
          v59 = v8;
          v64 = v7;
          v51 = sub_1D72646CC();
          sub_1D67084A4(v44, v45, v6, v64, v59, v10);
          sub_1D67084A4(v12, v11, v13, v14, v15, v18);
          sub_1D7009B20(v73);
          return v51 & 1;
        }

        v30 = v4;
        v31 = v5;
        sub_1D67084A4(v4, v5, v6, v7, v8, v74 | (v9 << 32));
        v32 = v30;
        v33 = v31;
        v34 = v13;
        v35 = v14;
LABEL_19:
        sub_1D67084A4(v32, v33, v34, v35, v15, v18);
        sub_1D7009B20(v73);
        v29 = 1;
        return v29 & 1;
      }
    }

LABEL_32:
    sub_1D67084A4(v4, v5, v6, v7, v8, v74 | (v9 << 32));
LABEL_33:
    sub_1D67084A4(v12, v11, v13, v14, v15, v18);
    sub_1D7009B20(v73);
    goto LABEL_34;
  }

  if (v19)
  {
    if (((v18 >> 45) & 7) == 1)
    {
      if (v4 == v12 && v5 == v11)
      {
        v36 = v4;
        v37 = v5;
        sub_1D67084A4(v4, v5, v6, v7, v8, v74 | (v9 << 32));
        sub_1D67084A4(v36, v37, v13, v14, v15, v18);
        sub_1D7009B20(v73);
        if (((v6 ^ v13) & 1) == 0)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v46 = v4;
        v47 = v5;
        v60 = v8;
        v65 = v7;
        v52 = sub_1D72646CC();
        sub_1D67084A4(v46, v47, v6, v65, v60, v10);
        sub_1D67084A4(v12, v11, v13, v14, v15, v18);
        sub_1D7009B20(v73);
        if ((v52 & 1) != 0 && ((v6 ^ v13) & 1) == 0)
        {
          goto LABEL_47;
        }
      }

      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (((v18 >> 45) & 7) != 0)
  {
    goto LABEL_32;
  }

  v69[0] = v4;
  v69[1] = v5;
  v70 = v6;
  v67[0] = v12;
  v67[1] = v11;
  v68 = v13;
  v24 = v15;
  v55 = v15;
  v56 = v4;
  v25 = v4;
  v26 = v5;
  v27 = v7;
  v57 = v8;
  v62 = v7;
  v54 = v17 | (v16 << 32);
  v28 = v8;
  sub_1D67084A4(v12, v11, v13, v14, v24, v54);
  sub_1D67084A4(v25, v26, v6, v27, v28, v10);
  sub_1D67084A4(v25, v26, v6, v27, v28, v10);
  sub_1D67084A4(v12, v11, v13, v14, v55, v54);
  v29 = sub_1D6A625BC(v69, v67);
  sub_1D7009B20(v73);
  sub_1D67084F4(v12, v11, v13, v14, v55, v54);
  sub_1D67084F4(v56, v26, v6, v62, v57, v10);
  return v29 & 1;
}

uint64_t sub_1D7009B20(uint64_t a1)
{
  sub_1D7009B7C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D7009B7C()
{
  if (!qword_1EC899458)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC899458);
    }
  }
}

unint64_t sub_1D7009BEC(uint64_t a1)
{
  result = sub_1D7009C14();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D7009C14()
{
  result = qword_1EC899460;
  if (!qword_1EC899460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899460);
  }

  return result;
}

unint64_t sub_1D7009C68(void *a1)
{
  a1[1] = sub_1D5C6AF90();
  a1[2] = sub_1D6703428();
  result = sub_1D7009CA0();
  a1[3] = result;
  return result;
}

unint64_t sub_1D7009CA0()
{
  result = qword_1EC899468;
  if (!qword_1EC899468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899468);
  }

  return result;
}

void sub_1D7009D30(uint64_t a1, double *a2, char *a3)
{
  v4 = v3;
  sub_1D5BB15A8(0, qword_1EDF34EF0, type metadata accessor for FeedItem, MEMORY[0x1E69E6720]);
  v204 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v205 = v10;
  v206 = &v203 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v214 = &v203 - v13;
  v229 = sub_1D725CCCC();
  v220 = *(v229 - 1);
  MEMORY[0x1EEE9AC00](v229, v14);
  v219 = &v203 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a2;
  v17 = a2[1];
  v18 = a2[3];
  v217 = a2[2];
  v218 = v16;
  v212 = v18;
  v213 = v17;
  v20 = a2[4];
  v19 = a2[5];
  v22 = a2[6];
  v21 = a2[7];
  v23 = *(a2 + 9);
  *&v224 = a2[8];
  *(&v224 + 1) = v23;
  v24 = *(a2 + 11);
  *&v225 = a2[10];
  *(&v225 + 1) = v24;
  v25 = *(a2 + 13);
  *&v226 = a2[12];
  *(&v226 + 1) = v25;
  v26 = *(a2 + 15);
  *&v227 = a2[14];
  *(&v227 + 1) = v26;
  v27 = a2[16];
  v28 = a2[17];
  v30 = a2[18];
  v29 = a2[19];
  v31 = *(a2 + 21);
  *&v228 = a2[20];
  *(&v228 + 1) = v31;
  v32 = a2[23];
  v215 = a2[22];
  v216 = v32;
  sub_1D5B68374(a1 + 160, v251);
  v33 = *&a3[OBJC_IVAR____TtC8NewsFeed16CoverChannelView_titleLabel];
  [v33 setNumberOfLines_];
  v34 = *&a3[OBJC_IVAR____TtC8NewsFeed16CoverChannelView_accessoryLabel];
  [v34 setNumberOfLines_];
  v231 = v33;
  *&v207 = v20;
  *(&v207 + 1) = v19;
  *&v208 = v22;
  *(&v208 + 1) = v21;
  v35 = v21;
  v36 = *(&v228 + 1);
  [v33 setFrame_];
  v222 = *&a3[OBJC_IVAR____TtC8NewsFeed16CoverChannelView_coverImage];
  *&v209 = v27;
  *(&v209 + 1) = v28;
  v37 = v27;
  v38 = *&v228;
  *&v210 = v30;
  *(&v210 + 1) = v29;
  v39 = v30;
  v40 = v29;
  v42 = v215;
  v41 = v216;
  [v222 setFrame_];
  v211 = v34;
  [v34 setFrame_];
  v43 = *&a3[OBJC_IVAR____TtC8NewsFeed16CoverChannelView_moreActionsButton];
  [v43 setFrame_];
  v44 = v41 == 0.0 && v42 == 0.0;
  v230 = v43;
  [v43 setHidden_];
  v45 = *&a3[OBJC_IVAR____TtC8NewsFeed16CoverChannelView_followButton];
  [v45 setFrame_];
  v46 = OBJC_IVAR____TtC8NewsFeed21CoverViewFollowSwitch_titleLabel;
  v47 = *&v45[OBJC_IVAR____TtC8NewsFeed21CoverViewFollowSwitch_titleLabel];
  [v45 bounds];
  [v47 setFrame_];

  v48 = *&v45[OBJC_IVAR____TtC8NewsFeed21CoverViewFollowSwitch_onTap];
  v49 = swift_allocObject();
  v223 = v4;
  swift_weakInit();
  sub_1D6EB3D34(a1, &v235);
  v50 = swift_allocObject();
  v51 = v248;
  *(v50 + 216) = v247;
  *(v50 + 232) = v51;
  *(v50 + 248) = v249;
  v52 = v244;
  *(v50 + 152) = v243;
  *(v50 + 168) = v52;
  v53 = v246;
  *(v50 + 184) = v245;
  *(v50 + 200) = v53;
  v54 = v240;
  *(v50 + 88) = v239;
  *(v50 + 104) = v54;
  v55 = v242;
  *(v50 + 120) = v241;
  *(v50 + 136) = v55;
  v56 = v236;
  *(v50 + 24) = v235;
  *(v50 + 40) = v56;
  v57 = v238;
  *(v50 + 56) = v237;
  *(v50 + 16) = v49;
  v58 = v250;
  *(v50 + 72) = v57;
  *(v50 + 264) = v58;
  *(v50 + 272) = v45;
  v59 = v48;
  v60 = v45;

  v221 = v46;
  v61 = *&v45[v46];
  v62 = v252;
  v63 = *(a1 + 72);
  v232 = a3;
  if (v63)
  {
    v65 = v217;
    v64 = v218;
    v203 = a1;
    v82 = __swift_project_boxed_opaque_existential_1(v251, v252);
    *(&v236 + 1) = v62;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v235);
    (*(*(v62 - 8) + 16))(boxed_opaque_existential_1, v82, v62);
    v84 = v61;
    v85 = sub_1D5BF9C38(&v235);
    __swift_destroy_boxed_opaque_existential_1(&v235);
    [v84 setAttributedText_];

    v86 = v219;
    (v220)[13](v219, *MEMORY[0x1E69D7630], v229);
    v71 = v60;
    CoverViewFollowSwitch.toggleState.setter(v86);
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v88 = [objc_opt_self() bundleForClass_];
    v89 = sub_1D725811C();
    v91 = v90;

    v80 = sub_1D5B858EC(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v93 = *(v80 + 2);
    v92 = *(v80 + 3);
    if (v93 >= v92 >> 1)
    {
      v80 = sub_1D5B858EC((v92 > 1), v93 + 1, 1, v80);
    }

    v81 = &off_1E84D3000;
    v229 = 0;
    *(v80 + 2) = v93 + 1;
    v94 = &v80[16 * v93];
    *(v94 + 4) = v89;
    *(v94 + 5) = v91;
    a1 = v203;
  }

  else
  {
    v65 = v217;
    v64 = v218;
    v66 = __swift_project_boxed_opaque_existential_1(v251, v252);
    *(&v236 + 1) = v62;
    v67 = __swift_allocate_boxed_opaque_existential_1(&v235);
    (*(*(v62 - 8) + 16))(v67, v66, v62);
    v68 = v61;
    v69 = sub_1D5BF9C38(&v235);
    __swift_destroy_boxed_opaque_existential_1(&v235);
    [v68 setAttributedText_];

    v70 = v219;
    (v220)[13](v219, *MEMORY[0x1E69D7638], v229);
    v71 = v60;
    CoverViewFollowSwitch.toggleState.setter(v70);
    type metadata accessor for Localized();
    v72 = swift_getObjCClassFromMetadata();
    v73 = [objc_opt_self() bundleForClass_];
    sub_1D725811C();

    v74 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v75 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);

    v76 = sub_1D726203C();

    *&v237 = sub_1D700BB58;
    *(&v237 + 1) = v74;
    *&v235 = MEMORY[0x1E69E9820];
    *(&v235 + 1) = 1107296256;
    *&v236 = sub_1D700BAF0;
    *(&v236 + 1) = &block_descriptor_124;
    v77 = _Block_copy(&v235);
    v78 = [v75 initWithName:v76 actionHandler:v77];

    _Block_release(v77);

    v229 = v78;
    v79 = v78;
    v80 = MEMORY[0x1E69E7CC0];
    v81 = &off_1E84D3000;
  }

  v95 = *&v221[v45];
  v96 = v81[222];
  v221 = v71;
  [v71 v96];
  [v95 ne_verticallyCenterCapInRect_];

  v97 = v252;
  v98 = __swift_project_boxed_opaque_existential_1(v251, v252);
  *(&v236 + 1) = v97;
  v99 = __swift_allocate_boxed_opaque_existential_1(&v235);
  (*(*(v97 - 8) + 16))(v99, v98, v97);
  v100 = sub_1D5BF9C38(&v235);
  __swift_destroy_boxed_opaque_existential_1(&v235);
  [v231 setAttributedText_];

  v101 = *(a1 + 184);
  v102 = *(a1 + 192);
  __swift_project_boxed_opaque_existential_1((a1 + 160), v101);
  v103 = (*(v102 + 64))(v101, v102);
  v104 = *(a1 + 184);
  v105 = *(a1 + 192);
  __swift_project_boxed_opaque_existential_1((a1 + 160), v104);
  v106 = (*(v105 + 40))(v104, v105);
  v107 = *(a1 + 184);
  v108 = *(a1 + 192);
  __swift_project_boxed_opaque_existential_1((a1 + 160), v107);
  v109 = (*(v108 + 56))(v107, v108);
  v110 = sub_1D726203C();
  v111 = [objc_opt_self() systemImageNamed_];

  if (!v111)
  {
    __break(1u);
    return;
  }

  v112 = [objc_opt_self() configurationWithPointSize:4 weight:v106 + v109 + v109];
  v113 = [v111 imageWithConfiguration_];

  v114 = [v113 imageWithTintColor:v103 renderingMode:1];
  v115 = v230;
  v220 = v114;
  [v230 setImage:v114 forState:0];
  [v115 setContentMode_];
  v116 = *(a1 + 32);
  v117 = v252;
  if (v116)
  {
    v118 = __swift_project_boxed_opaque_existential_1(v251, v252);
    *(&v236 + 1) = v117;
    v119 = __swift_allocate_boxed_opaque_existential_1(&v235);
    (*(*(v117 - 8) + 16))(v119, v118, v117);
    v120 = sub_1D5BF9C38(&v235);
    __swift_destroy_boxed_opaque_existential_1(&v235);
    v121 = v211;
    [v211 setAttributedText_];

    LOBYTE(v235) = v116;
    v122 = sub_1D6CAFB7C();
    v124 = v123;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v80 = sub_1D5B858EC(0, *(v80 + 2) + 1, 1, v80);
    }

    v126 = v212;
    v125 = v213;
    v127 = v222;
    v129 = *(v80 + 2);
    v128 = *(v80 + 3);
    if (v129 >= v128 >> 1)
    {
      v80 = sub_1D5B858EC((v128 > 1), v129 + 1, 1, v80);
    }

    *(v80 + 2) = v129 + 1;
    v130 = &v80[16 * v129];
    *(v130 + 4) = v122;
    *(v130 + 5) = v124;
    v131 = v232;
  }

  else
  {
    v132 = __swift_project_boxed_opaque_existential_1(v251, v252);
    *(&v236 + 1) = v117;
    v133 = __swift_allocate_boxed_opaque_existential_1(&v235);
    (*(*(v117 - 8) + 16))(v133, v132, v117);
    v134 = sub_1D5BF9C38(&v235);
    __swift_destroy_boxed_opaque_existential_1(&v235);
    v121 = v211;
    [v211 setAttributedText_];

    v131 = v232;
    [v232 setAccessibilityValue_];
    v126 = v212;
    v125 = v213;
    v127 = v222;
  }

  v135 = v252;
  v136 = v253;
  __swift_project_boxed_opaque_existential_1(v251, v252);
  (*(v136 + 112))(v127, v135, v136);
  v137 = v252;
  v138 = v253;
  __swift_project_boxed_opaque_existential_1(v251, v252);
  LOBYTE(v235) = v116;
  (*(v138 + 120))(v121, &v235, v137, v138);
  v139 = v252;
  v140 = v253;
  __swift_project_boxed_opaque_existential_1(v251, v252);
  (*(v140 + 128))(v221, v139, v140);
  sub_1D725FBBC();
  FeedTag.coverImage.getter(&v235);
  if (*(&v236 + 1))
  {
    sub_1D5B63F14(&v235, v234);
    sub_1D5B68374(v234, &v235);
    v141 = sub_1D725E0DC();
    swift_allocObject();
    v142 = sub_1D725E0BC();
    __swift_project_boxed_opaque_existential_1((v223 + 24), *(v223 + 48));
    v143 = MEMORY[0x1E69D7D98];
    *(&v236 + 1) = v141;
    *&v237 = MEMORY[0x1E69D7D98];
    *&v235 = v142;

    v144 = sub_1D725D0BC();
    __swift_destroy_boxed_opaque_existential_1(&v235);
    if (v144)
    {
      v145 = v144;
      v146 = v222;
      sub_1D725FBBC();
      *&v235 = v64;
      *(&v235 + 1) = v125;
      *&v236 = v65;
      *(&v236 + 1) = v126;
      v237 = v207;
      v238 = v208;
      v239 = v224;
      v240 = v225;
      v241 = v226;
      v242 = v227;
      v243 = v209;
      v244 = v210;
      v245 = v228;
      *&v246 = v42;
      *(&v246 + 1) = v41;
      v131 = v232;
      sub_1D700BE08(v145, v232, &v235);
      v147 = v252;
      v148 = v253;
      __swift_project_boxed_opaque_existential_1(v251, v252);
      (*(v148 + 112))(v146, v147, v148);

      v149 = v234;
    }

    else
    {
      *(&v236 + 1) = v141;
      *&v237 = v143;
      *&v235 = v142;
      v150 = swift_allocObject();
      v131 = v232;
      swift_unknownObjectWeakInit();
      v151 = swift_allocObject();
      swift_weakInit();
      sub_1D5B68374(v251, v233);
      v152 = swift_allocObject();
      *(v152 + 16) = v150;
      *(v152 + 24) = v151;
      *(v152 + 32) = v64;
      *(v152 + 40) = v125;
      *(v152 + 48) = v65;
      *(v152 + 56) = v126;
      v153 = *(&v207 + 1);
      *(v152 + 64) = v207;
      *(v152 + 72) = v153;
      v154 = *(&v208 + 1);
      *(v152 + 80) = v208;
      *(v152 + 88) = v154;
      v155 = *(&v224 + 1);
      *(v152 + 96) = v224;
      *(v152 + 104) = v155;
      v156 = *(&v225 + 1);
      *(v152 + 112) = v225;
      *(v152 + 120) = v156;
      v157 = *(&v226 + 1);
      *(v152 + 128) = v226;
      *(v152 + 136) = v157;
      v158 = *(&v227 + 1);
      *(v152 + 144) = v227;
      *(v152 + 152) = v158;
      v159 = *(&v209 + 1);
      *(v152 + 160) = v209;
      *(v152 + 168) = v159;
      v160 = *(&v210 + 1);
      *(v152 + 176) = v210;
      *(v152 + 184) = v160;
      v161 = *(&v228 + 1);
      *(v152 + 192) = v228;
      *(v152 + 200) = v161;
      *(v152 + 208) = v42;
      *(v152 + 216) = v41;
      sub_1D5B63F14(v233, v152 + 224);

      sub_1D725FB5C();

      __swift_destroy_boxed_opaque_existential_1(v234);

      v149 = &v235;
    }

    __swift_destroy_boxed_opaque_existential_1(v149);
  }

  else
  {
    sub_1D5EED418(&v235);
    sub_1D725FBBC();
  }

  v162 = sub_1D726203C();
  [v131 setAccessibilityIdentifier_];

  MEMORY[0x1EEE9AC00](v163, v164);
  sub_1D700BB90();
  sub_1D700BBEC(&qword_1EC899478, sub_1D700BB90);
  sub_1D72634BC();
  v165 = v232;
  [v232 setIsAccessibilityElement_];
  v166 = v252;
  v167 = __swift_project_boxed_opaque_existential_1(v251, v252);
  *(&v236 + 1) = v166;
  v168 = __swift_allocate_boxed_opaque_existential_1(&v235);
  (*(*(v166 - 8) + 16))(v168, v167, v166);
  sub_1D5BFDFA0(&v235);
  v170 = v169;

  __swift_destroy_boxed_opaque_existential_1(&v235);
  if (v170)
  {
    v171 = sub_1D726203C();
  }

  else
  {
    v171 = 0;
  }

  [v165 setAccessibilityLabel_];

  if (*(v80 + 2))
  {
    *&v235 = v80;
    sub_1D5BBE0A8();
    sub_1D700BBEC(&qword_1EDF3C840, sub_1D5BBE0A8);

    sub_1D7261F3C();

    v172 = sub_1D726203C();
  }

  else
  {
    v172 = 0;
  }

  v173 = MEMORY[0x1E69E7CC0];
  [v165 setAccessibilityValue_];

  if ([v230 isHidden])
  {
    v174 = 0;
  }

  else
  {
    type metadata accessor for Localized();
    v175 = swift_getObjCClassFromMetadata();
    v176 = [objc_opt_self() bundleForClass_];
    v165 = v232;
    sub_1D725811C();

    v177 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v178 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);

    v179 = sub_1D726203C();

    *&v237 = sub_1D700BC34;
    *(&v237 + 1) = v177;
    *&v235 = MEMORY[0x1E69E9820];
    *(&v235 + 1) = 1107296256;
    *&v236 = sub_1D700BAF0;
    *(&v236 + 1) = &block_descriptor_11_5;
    v180 = _Block_copy(&v235);
    v174 = [v178 initWithName:v179 actionHandler:v180];

    _Block_release(v180);

    v181 = v174;
  }

  sub_1D5BB15A8(0, &qword_1EC899480, sub_1D700BC64, MEMORY[0x1E69E6F90]);
  v182 = swift_allocObject();
  v183 = 0;
  *(v182 + 32) = v229;
  *(v182 + 40) = v174;
  *&v235 = v173;
  while (v183 != 2)
  {
    v184 = *(v182 + 8 * v183++ + 32);
    if (v184)
    {
      v185 = v184;
      MEMORY[0x1DA6F9CE0]();
      if (*((v235 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v235 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
        v165 = v232;
      }

      sub_1D726278C();
      v173 = v235;
    }
  }

  v232 = v174;
  swift_setDeallocating();
  sub_1D700BC64();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  if (v173 >> 62)
  {
    v189 = sub_1D7263BFC();
    v186 = v214;
    v187 = v223;
    if (v189)
    {
      goto LABEL_40;
    }

LABEL_42:

    [v165 setAccessibilityCustomActions_];
    goto LABEL_43;
  }

  v186 = v214;
  v187 = v223;
  if (!*((v173 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_42;
  }

LABEL_40:
  sub_1D5B5A498(0, &unk_1EDF04400);
  v188 = sub_1D726265C();

  [v165 setAccessibilityCustomActions_];

LABEL_43:
  v190 = *(v187 + 16);
  v191 = *a1;
  v192 = type metadata accessor for FeedItem(0);
  (*(*(v192 - 8) + 56))(v186, 1, 1, v192);
  if (*(v190 + 72) == 1)
  {
    sub_1D725A7EC();
    v193 = v235;
    v194 = v206;
    sub_1D6B47F90(v186, v206);
    v195 = (*(v204 + 80) + 16) & ~*(v204 + 80);
    v196 = swift_allocObject();
    sub_1D61CA3F8(v194, v196 + v195);
    sub_1D71AF2C8(v193, v191, sub_1D700BD58, v196, v64, v125, v65, v126);
  }

  else
  {
    sub_1D725A7CC();
    v197 = v235;
    if (v235)
    {
      [v235 setHidden_];
    }
  }

  sub_1D700BCCC(v186);
  v198 = v232;
  v199 = *(a1 + 48);
  *&v235 = *(a1 + 40);
  BYTE8(v235) = v199;
  sub_1D5B67740(0, &qword_1EDF19A18, qword_1EDF35078, &protocol descriptor for FeedItemViewLayoutDirectionAdjustable, MEMORY[0x1E69E6F90]);
  v200 = swift_allocObject();
  *(v200 + 16) = xmmword_1D7273AE0;
  *(v200 + 56) = sub_1D5B5A498(0, &qword_1EDF1A688);
  *(v200 + 64) = &off_1F51E42F8;
  v201 = v231;
  *(v200 + 32) = v231;
  v202 = v201;
  sub_1D5BFE5B8(&v235, v165, v200);

  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(v200 + 32);
  swift_deallocClassInstance();
  __swift_destroy_boxed_opaque_existential_1(v251);
}

uint64_t sub_1D700B5E8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D725E84C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    if (qword_1EDF3AB00 != -1)
    {
      swift_once();
    }

    v9[1] = *(a2 + 24);
    v10 = 256;
    (*(v4 + 104))(v7, *MEMORY[0x1E69D7FB8], v3);
    v11 = 0u;
    v12 = 0u;
    v13 = 1;
    swift_unknownObjectRetain();
    sub_1D725E82C();

    (*(v4 + 8))(v7, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1D700B7BC(void *a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = *(Strong + OBJC_IVAR____TtC8NewsFeed16CoverChannelView_coverImage);

    sub_1D725FB8C();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = v11;
      if (a1)
      {
        v13 = a4[9];
        v37 = a4[8];
        v38 = v13;
        v14 = a4[11];
        v39 = a4[10];
        v40 = v14;
        v15 = a4[5];
        v33 = a4[4];
        v34 = v15;
        v16 = a4[7];
        v35 = a4[6];
        v36 = v16;
        v17 = a4[1];
        v29 = *a4;
        v30 = v17;
        v18 = a4[3];
        v31 = a4[2];
        v32 = v18;
        v19 = a1;
        sub_1D700BE08(v19, v12, &v29);
        v20 = a5[3];
        v21 = a5[4];
        __swift_project_boxed_opaque_existential_1(a5, v20);
        v22 = *(v21 + 112);
        v23 = *&v12[OBJC_IVAR____TtC8NewsFeed16CoverChannelView_coverImage];
        v22(v23, v20, v21, v24, v25, v26, v27, v28, v29, *(&v29 + 1), v30, *(&v30 + 1), v31, *(&v31 + 1), v32, *(&v32 + 1), v33, *(&v33 + 1), v34, *(&v34 + 1), v35, *(&v35 + 1), v36, *(&v36 + 1));
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

id sub_1D700B974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  v4 = [v3 identifier];
  v5 = sub_1D726207C();
  v7 = v6;

  result = [v3 asChannel];
  v9 = result;
  if (result)
  {
    result = swift_unknownObjectRelease();
  }

  *(a2 + 16) = v5;
  *(a2 + 24) = v7;
  *(a2 + 32) = v9 != 0;
  *a2 = 6775156;
  *(a2 + 8) = 0xE300000000000000;
  return result;
}

BOOL sub_1D700BA1C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = Strong;
  if (Strong)
  {
    v8 = *(*(Strong + *a3) + *a4);
    MEMORY[0x1DA6F6CF0]();
  }

  return v7 != 0;
}

uint64_t sub_1D700BAA4()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1D700BAF0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

void sub_1D700BB90()
{
  if (!qword_1EC899470)
  {
    sub_1D6E42210();
    v0 = type metadata accessor for CellAutomation();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC899470);
    }
  }
}

uint64_t sub_1D700BBEC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D700BC64()
{
  if (!qword_1EC899488)
  {
    sub_1D5B5A498(255, &unk_1EDF04400);
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC899488);
    }
  }
}

uint64_t sub_1D700BCCC(uint64_t a1)
{
  sub_1D5BB15A8(0, qword_1EDF34EF0, type metadata accessor for FeedItem, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D700BD58@<X0>(uint64_t a1@<X8>)
{
  sub_1D5BB15A8(0, qword_1EDF34EF0, type metadata accessor for FeedItem, MEMORY[0x1E69E6720]);
  v4 = v1 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80));

  return sub_1D71B0070(v4, a1);
}

id sub_1D700BE08(void *a1, uint64_t a2, double *a3)
{
  v5 = a3[16];
  v6 = a3[17];
  v7 = a3[18];
  v8 = a3[19];
  v25.origin.x = v5;
  v25.origin.y = v6;
  v25.size.width = v7;
  v25.size.height = v8;
  Height = CGRectGetHeight(v25);
  v26.origin.x = v5;
  v26.origin.y = v6;
  v26.size.width = v7;
  v26.size.height = v8;
  v10 = Height / CGRectGetWidth(v26);
  [a1 size];
  v12 = v11;
  result = [a1 size];
  v15 = v12 / v14;
  if (v10 == v12 / v14 || v15 == 0.0)
  {
    return result;
  }

  if (v15 == 1.0)
  {
    v27.origin.x = v5;
    v27.origin.y = v6;
    v27.size.width = v7;
    v27.size.height = v8;
    Width = CGRectGetWidth(v27);
    v28.origin.x = v5;
    v28.origin.y = v6;
    v28.size.width = v7;
    v28.size.height = v8;
    v17 = CGRectGetWidth(v28);
  }

  else
  {
    [*(a2 + OBJC_IVAR____TtC8NewsFeed16CoverChannelView_coverImage) frame];
    v18 = v15 * CGRectGetHeight(v29);
    v30.origin.x = v5;
    v30.origin.y = v6;
    v30.size.width = v7;
    v30.size.height = v8;
    if (CGRectGetHeight(v30) >= v18)
    {
      v37.origin.x = v5;
      v37.origin.y = v6;
      v37.size.width = v7;
      v37.size.height = v8;
      Width = CGRectGetWidth(v37);
      goto LABEL_9;
    }

    v31.origin.x = v5;
    v31.origin.y = v6;
    v31.size.width = v7;
    v31.size.height = v8;
    Width = CGRectGetHeight(v31) / v15;
    v32.origin.x = v5;
    v32.origin.y = v6;
    v32.size.width = v7;
    v32.size.height = v8;
    v17 = CGRectGetHeight(v32);
  }

  v18 = v17;
LABEL_9:
  v33.origin.x = v5;
  v33.origin.y = v6;
  v33.size.width = v7;
  v33.size.height = v8;
  v19 = CGRectGetWidth(v33) - Width;
  v34.origin.x = v5;
  v34.origin.y = v6;
  v34.size.width = v7;
  v34.size.height = v8;
  v20 = CGRectGetHeight(v34) - v18;
  v21 = *(a2 + OBJC_IVAR____TtC8NewsFeed16CoverChannelView_coverImage);
  v35.origin.x = v5;
  v35.origin.y = v6;
  v35.size.width = v7;
  v35.size.height = v8;
  v22 = v19 * 0.5 + CGRectGetMinX(v35);
  v36.origin.x = v5;
  v36.origin.y = v6;
  v36.size.width = v7;
  v36.size.height = v8;
  v23 = v20 + CGRectGetMinY(v36);

  return [v21 setFrame_];
}

void sub_1D700C048(void *a1, char *a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v5 = *a2;
    v6 = sub_1D6D62820(5u);
    if (v7)
    {
      v8 = *(a3 + 56) + 16 * v6;
      if (*(v8 + 8) == 5)
      {
        v9 = *v8;
        v27 = v5;
        v10 = sub_1D70B50DC(&v27);
        v11 = objc_opt_self();
        v12 = v9;
        v26 = [v11 effectWithStyle_];
        v13 = [objc_opt_self() clearColor];
        sub_1D726349C();

        [a1 bounds];
        sub_1D726344C();
        [v12 setEffect_];
        v14 = [a1 layer];
        [v14 cornerRadius];
        v16 = v15;

        v17 = [a1 layer];
        v18 = [v17 cornerCurve];

        v19 = sub_1D726207C();
        v21 = v20;
        if (v19 == sub_1D726207C() && v21 == v22)
        {
          v23 = 1;
        }

        else
        {
          v23 = sub_1D72646CC();
        }

        v24 = [a1 layer];
        v25 = [v24 maskedCorners];

        [v12 _setCornerRadius_continuous_maskedCorners_];
      }
    }
  }
}

void sub_1D700C2C4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 144);
  v23[8] = *(a2 + 128);
  v23[9] = v5;
  v24 = *(a2 + 160);
  v6 = *(a2 + 80);
  v23[4] = *(a2 + 64);
  v23[5] = v6;
  v7 = *(a2 + 112);
  v23[6] = *(a2 + 96);
  v23[7] = v7;
  v8 = *(a2 + 16);
  v23[0] = *a2;
  v23[1] = v8;
  v9 = *(a2 + 48);
  v23[2] = *(a2 + 32);
  v23[3] = v9;
  v10 = sub_1D62B4E2C(v23);
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v11 = sub_1D5D04BC4(v23);
      v19 = *(v11 + 112);
      v20 = *(v11 + 128);
      v21 = *(v11 + 144);
      v22 = *(v11 + 160);
      v15 = *(v11 + 48);
      v16 = *(v11 + 64);
      v17 = *(v11 + 80);
      v18 = *(v11 + 96);
      v12 = *v11;
      v13 = *(v11 + 16);
      v14 = *(v11 + 32);
      sub_1D70EBD88(a1, &v12);
    }

    else if (sub_1D7261A3C())
    {
      *(&v13 + 1) = sub_1D725FC9C();
      *&v14 = MEMORY[0x1E69DBEA8];
      __swift_allocate_boxed_opaque_existential_1(&v12);
      sub_1D725FC8C();
      sub_1D72634CC();
    }
  }

  else
  {
    LOBYTE(v12) = *sub_1D5D04BC4(v23);
    sub_1D700C048(a1, &v12, a3);
  }
}

Swift::Void __swiftcall FormatProgressPieView.setUpPieView(options:)(NewsFeed::FormatProgressPieOptionsResolved *options)
{
  clockwise = options->clockwise;
  *(v1 + OBJC_IVAR____TtC8NewsFeed21FormatProgressPieView_radius) = options->radius;
  stepPercentage = options->stepPercentage;
  minPercentage = options->minPercentage;
  maxPercentage = options->maxPercentage;
  *(v1 + OBJC_IVAR____TtC8NewsFeed21FormatProgressPieView_clockwise) = clockwise;
  v6 = v1 + OBJC_IVAR____TtC8NewsFeed21FormatProgressPieView_stepPercentage;
  *v6 = stepPercentage;
  *(v6 + 8) = 0;
  *(v1 + OBJC_IVAR____TtC8NewsFeed21FormatProgressPieView_minPercentage) = minPercentage;
  *(v1 + OBJC_IVAR____TtC8NewsFeed21FormatProgressPieView_maxPercentage) = maxPercentage;
}

Swift::Void __swiftcall FormatProgressPieView.setProgressColors(backgroundColor:pieColor:)(UIColor backgroundColor, UIColor pieColor)
{
  v5 = *(v2 + OBJC_IVAR____TtC8NewsFeed21FormatProgressPieView_backgroundLayer);
  v6 = [(objc_class *)backgroundColor.super.isa CGColor];
  [v5 setFillColor_];

  v7 = *(v2 + OBJC_IVAR____TtC8NewsFeed21FormatProgressPieView_progressLayer);
  v8 = [(objc_class *)pieColor.super.isa CGColor];
  [v7 setFillColor_];
}

Swift::Void __swiftcall FormatProgressPieView.updatePieProgress(progress:)(Swift::Double progress)
{
  v2 = v1;
  Mutable = CGPathCreateMutable();
  [v1 bounds];
  sub_1D72632CC();
  [v1 bounds];
  CGRectGetWidth(v9);
  sub_1D7262F1C();
  v4 = CGPathCreateMutable();
  [v2 bounds];
  sub_1D72632CC();
  sub_1D7262F0C();
  [v2 bounds];
  sub_1D72632CC();
  sub_1D7262F1C();
  v7 = v4;
  sub_1D7262EFC();
  v5 = OBJC_IVAR____TtC8NewsFeed21FormatProgressPieView_backgroundLayer;
  [*&v2[OBJC_IVAR____TtC8NewsFeed21FormatProgressPieView_backgroundLayer] setFillRule_];
  [*&v2[v5] setPath_];
  v6 = *&v2[OBJC_IVAR____TtC8NewsFeed21FormatProgressPieView_progressLayer];
  [v6 setPath_];
}

uint64_t FormatProgressPieView.identifier.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC8NewsFeed21FormatProgressPieView_identifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t FormatProgressPieView.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8NewsFeed21FormatProgressPieView_identifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

char *sub_1D700C894(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC8NewsFeed21FormatProgressPieView_identifier];
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = OBJC_IVAR____TtC8NewsFeed21FormatProgressPieView_backgroundLayer;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  v12 = OBJC_IVAR____TtC8NewsFeed21FormatProgressPieView_progressLayer;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  *&v4[OBJC_IVAR____TtC8NewsFeed21FormatProgressPieView_radius] = 0;
  v4[OBJC_IVAR____TtC8NewsFeed21FormatProgressPieView_clockwise] = 0;
  v13 = &v4[OBJC_IVAR____TtC8NewsFeed21FormatProgressPieView_stepPercentage];
  *v13 = 0;
  v13[8] = 1;
  *&v4[OBJC_IVAR____TtC8NewsFeed21FormatProgressPieView_minPercentage] = 0;
  *&v4[OBJC_IVAR____TtC8NewsFeed21FormatProgressPieView_maxPercentage] = 0x3FF0000000000000;
  v14 = OBJC_IVAR____TtC8NewsFeed21FormatProgressPieView_layerDelegate;
  *&v4[v14] = [objc_allocWithZone(type metadata accessor for FormatProgressPieView.NonAnimatingLayerDelegate()) init];
  v22.receiver = v4;
  v22.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v22, sel_initWithFrame_, a1, a2, a3, a4);
  v16 = [v15 layer];
  v17 = OBJC_IVAR____TtC8NewsFeed21FormatProgressPieView_backgroundLayer;
  [v16 addSublayer_];

  v18 = [v15 layer];
  v19 = OBJC_IVAR____TtC8NewsFeed21FormatProgressPieView_progressLayer;
  [v18 addSublayer_];

  v20 = OBJC_IVAR____TtC8NewsFeed21FormatProgressPieView_layerDelegate;
  [*&v15[v17] setDelegate_];
  [*&v15[v19] setDelegate_];

  return v15;
}

Swift::Void __swiftcall FormatProgressPieView.layoutSubviews()()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  v1 = [v0 layer];
  v2 = [objc_opt_self() clearColor];
  v3 = [v2 CGColor];

  [v1 setBackgroundColor_];
}

id sub_1D700CCE0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FormatProgressPieView.NonAnimatingLayerDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id FormatProgressPieView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D700CDC0()
{
  v1 = (*v0 + OBJC_IVAR____TtC8NewsFeed21FormatProgressPieView_identifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

void sub_1D700CE64()
{
  v1 = (v0 + OBJC_IVAR____TtC8NewsFeed21FormatProgressPieView_identifier);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = OBJC_IVAR____TtC8NewsFeed21FormatProgressPieView_backgroundLayer;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  v3 = OBJC_IVAR____TtC8NewsFeed21FormatProgressPieView_progressLayer;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  *(v0 + OBJC_IVAR____TtC8NewsFeed21FormatProgressPieView_radius) = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed21FormatProgressPieView_clockwise) = 0;
  v4 = v0 + OBJC_IVAR____TtC8NewsFeed21FormatProgressPieView_stepPercentage;
  *v4 = 0;
  *(v4 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC8NewsFeed21FormatProgressPieView_minPercentage) = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed21FormatProgressPieView_maxPercentage) = 0x3FF0000000000000;
  v5 = OBJC_IVAR____TtC8NewsFeed21FormatProgressPieView_layerDelegate;
  *(v0 + v5) = [objc_allocWithZone(type metadata accessor for FormatProgressPieView.NonAnimatingLayerDelegate()) init];
  sub_1D726402C();
  __break(1u);
}

uint64_t FeedGroupPinning.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15[0] = a2;
  sub_1D700DEF0(0, &qword_1EDF03C88, sub_1D700D1C0, &type metadata for FeedGroupPinning.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D700D1C0();
  sub_1D7264B0C();
  if (!v2)
  {
    v10 = v6;
    v11 = v15[0];
    v17 = 0;
    sub_1D700D214();
    sub_1D726431C();
    v12 = v18;
    if (v18)
    {
      v16 = 1;
      sub_1D700D268();
      sub_1D726431C();
      (*(v10 + 8))(v9, v5);
      v13 = v15[1];
    }

    else
    {
      (*(v10 + 8))(v9, v5);
      v13 = 0;
    }

    *v11 = v13;
    *(v11 + 8) = v12 ^ 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D700D1C0()
{
  result = qword_1EDF150C0;
  if (!qword_1EDF150C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF150C0);
  }

  return result;
}

unint64_t sub_1D700D214()
{
  result = qword_1EDF150A0;
  if (!qword_1EDF150A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF150A0);
  }

  return result;
}

unint64_t sub_1D700D268()
{
  result = qword_1EC8994D8;
  if (!qword_1EC8994D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8994D8);
  }

  return result;
}

uint64_t FeedGroupPinning.encode(to:)(void *a1)
{
  sub_1D700DEF0(0, &qword_1EC8994E0, sub_1D700D1C0, &type metadata for FeedGroupPinning.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D700D1C0();
  sub_1D7264B5C();
  if (v10)
  {
    v14 = 0;
    sub_1D700D4B8();
LABEL_5:
    sub_1D726443C();
    return (*(v5 + 8))(v8, v4);
  }

  v18 = 1;
  v17 = 0;
  sub_1D700D4B8();
  v11 = v13;
  sub_1D726443C();
  if (!v11)
  {
    v16 = v9;
    v15 = 1;
    sub_1D700D50C();
    goto LABEL_5;
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D700D4B8()
{
  result = qword_1EC8994E8;
  if (!qword_1EC8994E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8994E8);
  }

  return result;
}

unint64_t sub_1D700D50C()
{
  result = qword_1EC8994F0;
  if (!qword_1EC8994F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8994F0);
  }

  return result;
}

uint64_t sub_1D700D56C@<X0>(char *a1@<X8>)
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

uint64_t sub_1D700D5D0(uint64_t a1)
{
  v2 = sub_1D700D1C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D700D60C(uint64_t a1)
{
  v2 = sub_1D700D1C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D700D648(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E6F697461727564;
  }

  else
  {
    v3 = 0x6465786966;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x6E6F697461727564;
  }

  else
  {
    v5 = 0x6465786966;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
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

uint64_t sub_1D700D6EC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D700D76C()
{
  sub_1D72621EC();
}

uint64_t sub_1D700D7D8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D700D860(uint64_t *a1@<X8>)
{
  v2 = 0x6465786966;
  if (*v1)
  {
    v2 = 0x6E6F697461727564;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

BOOL static FeedGroupPinning.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t FeedGroupPinning.description.getter()
{
  if (*(v0 + 8))
  {
    return 0x6465786946;
  }

  MEMORY[0x1DA6F9910](0x6E6F697461727544, 0xEA0000000000202CLL);
  sub_1D7262ABC();
  MEMORY[0x1DA6F9910](115, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D700DA5C()
{
  if (*(v0 + 8))
  {
    return 0x6465786946;
  }

  MEMORY[0x1DA6F9910](0x6E6F697461727544, 0xEA0000000000202CLL);
  sub_1D7262ABC();
  MEMORY[0x1DA6F9910](115, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D700DB08(uint64_t a1)
{
  v2 = sub_1D700DCEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D700DB44(uint64_t a1)
{
  v2 = sub_1D700DCEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeedGroupPinningDuration.encode(to:)(void *a1)
{
  sub_1D700DEF0(0, &qword_1EC8994F8, sub_1D700DCEC, &type metadata for FeedGroupPinningDuration.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D700DCEC();
  sub_1D7264B5C();
  sub_1D726441C();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D700DCEC()
{
  result = qword_1EC899500;
  if (!qword_1EC899500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899500);
  }

  return result;
}

uint64_t FeedGroupPinningDuration.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v15 = a2;
  sub_1D700DEF0(0, &qword_1EC899508, sub_1D700DCEC, &type metadata for FeedGroupPinningDuration.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D700DCEC();
  sub_1D7264B0C();
  if (!v2)
  {
    v10 = v15;
    sub_1D72642DC();
    v12 = v11;
    (*(v6 + 8))(v9, v5);
    *v10 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D700DEF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1D700DF70(void *a1)
{
  sub_1D700DEF0(0, &qword_1EC8994F8, sub_1D700DCEC, &type metadata for FeedGroupPinningDuration.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D700DCEC();
  sub_1D7264B5C();
  sub_1D726441C();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D700E130()
{
  result = qword_1EC899510;
  if (!qword_1EC899510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899510);
  }

  return result;
}

unint64_t sub_1D700E188()
{
  result = qword_1EC899518;
  if (!qword_1EC899518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899518);
  }

  return result;
}

unint64_t sub_1D700E1E0()
{
  result = qword_1EC899520;
  if (!qword_1EC899520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899520);
  }

  return result;
}

unint64_t sub_1D700E238()
{
  result = qword_1EC899528;
  if (!qword_1EC899528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899528);
  }

  return result;
}

unint64_t sub_1D700E290()
{
  result = qword_1EC899530;
  if (!qword_1EC899530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899530);
  }

  return result;
}

unint64_t sub_1D700E2E8()
{
  result = qword_1EDF150B0;
  if (!qword_1EDF150B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF150B0);
  }

  return result;
}

unint64_t sub_1D700E340()
{
  result = qword_1EDF150B8;
  if (!qword_1EDF150B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF150B8);
  }

  return result;
}

unint64_t sub_1D700E394()
{
  result = qword_1EDF150A8;
  if (!qword_1EDF150A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF150A8);
  }

  return result;
}

uint64_t sub_1D700E650()
{
  sub_1D7264C5C();
  sub_1D5BF4D9C();
  v0 = sub_1D7263A6C();

  return v0;
}

uint64_t sub_1D700E718()
{
  sub_1D7264C5C();
  sub_1D5BF4D9C();
  v0 = sub_1D7263A6C();

  return v0;
}

uint64_t sub_1D700E7F0()
{
  sub_1D7264C5C();
  sub_1D5BF4D9C();
  v0 = sub_1D7263A6C();

  return v0;
}

uint64_t sub_1D700E894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  *&v64 = a1;
  *&v66 = sub_1D725A36C();
  *&v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66, v5);
  *&v67 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D7259F5C();
  v69 = *(v7 - 8);
  v70 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v68 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for InternalErrorViewModel();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D725895C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for InternalErrorViewLayout.Context();
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = (&v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D725A9FC();
  if ((sub_1D725A9CC() & 1) == 0)
  {
    goto LABEL_5;
  }

  if (qword_1EDF3C318 != -1)
  {
    swift_once();
  }

  sub_1D700F938(&qword_1EDF33E18, _s13InternalErrorCMa);
  sub_1D725964C();
  if ((v72 & 1) == 0)
  {
    sub_1D725894C();
    v25 = sub_1D725893C();
    v27 = v26;
    (*(v15 + 8))(v18, v14);
    sub_1D700F8D0(v3 + OBJC_IVAR____TtCV8NewsFeed11GroupLayout13InternalError_model, v13, type metadata accessor for InternalErrorViewModel);
    v28 = *(v3 + OBJC_IVAR____TtCV8NewsFeed11GroupLayout13InternalError_key);

    v29 = v22;
    sub_1D6ED9840(v25, v27, v13, v28, v22);
    sub_1D7259F2C();
    v31 = v30;
    v33 = v32;
    sub_1D7259EAC();
    v34 = v68;
    v35 = sub_1D7259F4C();
    v37 = MEMORY[0x1EEE9AC00](v35, v36);
    *(&v54 - 2) = v34;
    *(&v54 - 1) = v22;
    (*(v65 + 104))(v67, *MEMORY[0x1E69D7378], v66, v37);
    sub_1D700F854();
    swift_allocObject();
    sub_1D725A4CC();
    sub_1D725A4DC();
    v38 = v87;
    v39 = v88;
    sub_1D6C6DB68();
    v40 = *(type metadata accessor for FeedItemSupplementaryAttributes() - 8);
    v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1D7273AE0;
    v43 = v42 + v41;
    sub_1D5BAA13C();
    v45 = v43 + *(v44 + 48);
    v66 = v75;
    v67 = v73;
    v59 = v76;
    v60 = v74;
    v64 = v79;
    v65 = v77;
    v57 = v80;
    v58 = v78;
    v62 = v83;
    v63 = v81;
    v55 = v84;
    v56 = v82;
    v61 = v85;
    v54 = v86;
    sub_1D700F8D0(v29, v43, type metadata accessor for InternalErrorViewLayout.Context);
    *v45 = v31;
    *(v45 + 8) = v33;
    v46 = v60;
    *(v45 + 16) = v67;
    *(v45 + 32) = v46;
    v47 = v59;
    *(v45 + 48) = v66;
    *(v45 + 64) = v47;
    v48 = v58;
    *(v45 + 80) = v65;
    *(v45 + 96) = v48;
    v49 = v57;
    *(v45 + 112) = v64;
    *(v45 + 128) = v49;
    v50 = v56;
    *(v45 + 144) = v63;
    *(v45 + 160) = v50;
    v51 = v55;
    *(v45 + 176) = v62;
    *(v45 + 192) = v51;
    v52 = v54;
    *(v45 + 208) = v61;
    *(v45 + 224) = v52;
    *(v45 + 240) = v38;
    *(v45 + 248) = v39;
    swift_storeEnumTagMultiPayload();
    *a2 = 1;
    *(a2 + 8) = v31;
    *(a2 + 16) = v33;
    *(a2 + 24) = v67;
    v71 = MEMORY[0x1E69E7CC0];
    sub_1D6B35D2C();
    sub_1D700F938(&qword_1EDF1B4C0, sub_1D6B35D2C);
    sub_1D5BDEFF8();
    v53 = sub_1D72623BC();

    *(a2 + 40) = v53;
    *(a2 + 48) = v42;
    (*(v69 + 8))(v34, v70);
    return sub_1D700F980(v29, type metadata accessor for InternalErrorViewLayout.Context);
  }

  else
  {
LABEL_5:
    *a2 = 0;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    v23 = MEMORY[0x1E69E7CC0];
    v72 = MEMORY[0x1E69E7CC0];
    sub_1D6B35D2C();
    sub_1D700F938(&qword_1EDF1B4C0, sub_1D6B35D2C);
    sub_1D5BDEFF8();
    result = sub_1D72623BC();
    *(a2 + 40) = result;
    *(a2 + 48) = v23;
  }

  return result;
}

uint64_t sub_1D700F0E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a3;
  v38 = a2;
  v39 = a1;
  v6 = sub_1D725895C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for GroupLayoutContext();
  v42 = *(v11 - 8);
  v43 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for GroupLayoutBindingContext();
  v15 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D700F8D0(a1, v3 + OBJC_IVAR____TtCV8NewsFeed11GroupLayout13InternalError_model, type metadata accessor for InternalErrorViewModel);
  v19 = type metadata accessor for InternalErrorGroupLayoutFactory();
  v20 = swift_allocObject();
  sub_1D700F8D0(a2, v18, type metadata accessor for GroupLayoutBindingContext);
  v21 = v35;
  sub_1D700F8D0(v35, v14, type metadata accessor for GroupLayoutContext);
  sub_1D725894C();
  v22 = sub_1D725893C();
  v36 = v23;
  v37 = v22;
  (*(v7 + 8))(v10, v6);
  v50[3] = v19;
  v50[4] = sub_1D700F938(&qword_1EDF1F808, type metadata accessor for InternalErrorGroupLayoutFactory);
  v50[0] = v20;
  type metadata accessor for GroupLayoutKey();
  v24 = swift_allocObject();
  v48 = sub_1D7264C5C();
  v49 = v25;
  v46 = 95;
  v47 = 0xE100000000000000;
  v44 = 45;
  v45 = 0xE100000000000000;
  sub_1D5BF4D9C();
  v26 = sub_1D7263A6C();
  v28 = v27;
  sub_1D700F980(v21, type metadata accessor for GroupLayoutContext);
  sub_1D700F980(v38, type metadata accessor for GroupLayoutBindingContext);
  sub_1D700F980(v39, type metadata accessor for InternalErrorViewModel);

  *(v24 + 16) = v26;
  *(v24 + 24) = v28;
  v29 = (v24 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
  v30 = v36;
  *v29 = v37;
  v29[1] = v30;
  sub_1D5B68374(v50, v24 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
  v31 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
  sub_1D5BDA89C(v18, v24 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, type metadata accessor for GroupLayoutBindingContext);
  (*(v15 + 56))(v24 + v31, 0, 1, v40);
  v32 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
  sub_1D5BDA89C(v14, v24 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
  (*(v42 + 56))(v24 + v32, 0, 1, v43);
  __swift_destroy_boxed_opaque_existential_1(v50);
  result = v41;
  *(v41 + OBJC_IVAR____TtCV8NewsFeed11GroupLayout13InternalError_key) = v24;
  return result;
}

uint64_t sub_1D700F574()
{
  sub_1D700F980(v0 + OBJC_IVAR____TtCV8NewsFeed11GroupLayout13InternalError_model, type metadata accessor for InternalErrorViewModel);

  return swift_deallocClassInstance();
}

uint64_t _s13InternalErrorCMa()
{
  result = qword_1EDF33E08;
  if (!qword_1EDF33E08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D700F650()
{
  result = type metadata accessor for InternalErrorViewModel();
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

uint64_t sub_1D700F710()
{
  sub_1D5C17350();
  swift_allocError();
  *v0 = 1;
  *(v0 + 8) = 0u;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 13;
  return swift_willThrow();
}

uint64_t sub_1D700F7C8(uint64_t a1)
{
  *(a1 + 8) = sub_1D700F938(&qword_1EDF1F810, type metadata accessor for InternalErrorGroupLayoutFactory);
  result = sub_1D700F938(&qword_1EDF1F818, type metadata accessor for InternalErrorGroupLayoutFactory);
  *(a1 + 16) = result;
  return result;
}

void sub_1D700F854()
{
  if (!qword_1EDF3BF40)
  {
    sub_1D6EDCFBC();
    sub_1D6EDD0A8();
    v0 = sub_1D725A4FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3BF40);
    }
  }
}

uint64_t sub_1D700F8D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D700F938(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D700F980(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D700F9E0@<X0>(void **a1@<X3>, char *a2@<X8>)
{
  v4 = *a1;
  v5 = *(v2 + OBJC_IVAR____TtC8NewsFeed28LikingCompleteCommandHandler_allLikedArticleIDs);

  v6 = [v4 identifier];
  v7 = sub_1D726207C();
  v9 = v8;

  LOBYTE(v6) = sub_1D5BE240C(v7, v9, v5);

  if (v6)
  {
    v11 = 0;
  }

  else
  {
    v12 = *(v2 + OBJC_IVAR____TtC8NewsFeed28LikingCompleteCommandHandler_allDislikedArticleIDs);

    v13 = [v4 identifier];
    v14 = sub_1D726207C();
    v16 = v15;

    LOBYTE(v13) = sub_1D5BE240C(v14, v16, v12);

    if (v13)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }
  }

  *a2 = v11;
  return result;
}

uint64_t sub_1D700FBAC(void *a1, uint64_t a2)
{
  result = sub_1D700FCA0(a2);
  if (result)
  {
    v5 = [a1 allLikedArticleIDs];
    v6 = sub_1D7262B0C();

    *(v2 + OBJC_IVAR____TtC8NewsFeed28LikingCompleteCommandHandler_allLikedArticleIDs) = v6;

    v7 = [a1 allDislikedArticleIDs];
    v8 = sub_1D7262B0C();

    *(v2 + OBJC_IVAR____TtC8NewsFeed28LikingCompleteCommandHandler_allDislikedArticleIDs) = v8;
  }

  return result;
}

uint64_t sub_1D700FCA0(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_10:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    result = [*(*(a1 + 56) + ((v9 << 9) | (8 * v10))) unsignedIntegerValue];
    if ((result & 0x20) != 0)
    {
      v11 = 1;
LABEL_13:

      return v11;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
      v11 = 0;
      goto LABEL_13;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D700FE14()
{
  v1 = OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasPriorityView_notchViews;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasPriorityView_priority;
  v4 = 3 - *(v0 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasPriorityView_priority);

  sub_1D701085C(v4, v2);
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v10 >> 1;
  if (v10 >> 1 != v8)
  {
    result = objc_opt_self();
    v13 = v11 - v8;
    if (v11 <= v8)
    {
      __break(1u);
      goto LABEL_11;
    }

    v14 = result;
    v15 = (v6 + 8 * v8);
    do
    {
      v16 = *v15++;
      v17 = v16;
      v18 = [v14 systemBlueColor];
      [v17 setBackgroundColor_];

      --v13;
    }

    while (v13);
  }

  swift_unknownObjectRelease();
  v19 = *(v0 + v1);
  v20 = 3 - *(v0 + v3);

  sub_1D70106AC(v20, v19);
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27 = v26 >> 1;
  if (v26 >> 1 == v24)
  {
    return swift_unknownObjectRelease();
  }

  result = objc_opt_self();
  v28 = v27 <= v24;
  v29 = v27 - v24;
  if (!v28)
  {
    v30 = result;
    v31 = (v22 + 8 * v24);
    do
    {
      v32 = *v31++;
      v33 = v32;
      v34 = [v30 separatorColor];
      [v33 setBackgroundColor_];

      --v29;
    }

    while (v29);
    return swift_unknownObjectRelease();
  }

LABEL_11:
  __break(1u);
  return result;
}

id sub_1D700FFF4(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasPriorityView_priority] = 0;
  *&v4[OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasPriorityView_notchViews] = MEMORY[0x1E69E7CC0];
  v22.receiver = v4;
  v22.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v22, sel_initWithFrame_, a1, a2, a3, a4);
  [v10 setClipsToBounds_];
  v11 = [v10 layer];
  [v11 setCornerRadius_];

  v12 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v13 = OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasPriorityView_notchViews;
  swift_beginAccess();
  v14 = v12;
  MEMORY[0x1DA6F9CE0]();
  if (*((*(v10 + v13) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v10 + v13) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D726272C();
  }

  sub_1D726278C();
  swift_endAccess();
  [v10 addSubview_];

  v15 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  swift_beginAccess();
  v16 = v15;
  MEMORY[0x1DA6F9CE0]();
  if (*((*(v10 + v13) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v10 + v13) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D726272C();
  }

  sub_1D726278C();
  swift_endAccess();
  [v10 addSubview_];

  v17 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  swift_beginAccess();
  v18 = v17;
  MEMORY[0x1DA6F9CE0]();
  if (*((*(v10 + v13) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v10 + v13) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D726272C();
  }

  sub_1D726278C();
  swift_endAccess();
  [v10 addSubview_];

  v19 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  swift_beginAccess();
  v20 = v19;
  MEMORY[0x1DA6F9CE0]();
  if (*((*(v10 + v13) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v10 + v13) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D726272C();
  }

  sub_1D726278C();
  swift_endAccess();
  [v10 addSubview_];

  return v10;
}

uint64_t sub_1D701044C()
{
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, sel_layoutSubviews);
  [v0 bounds];
  Width = CGRectGetWidth(v14);
  v2 = OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasPriorityView_notchViews;
  result = swift_beginAccess();
  v4 = *&v0[v2];
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_3;
  }

  result = sub_1D7263BFC();
  v5 = result;
  v4 = *&v0[v2];
  if (!(v4 >> 62))
  {
LABEL_3:
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!(v4 >> 62))
    {
      goto LABEL_4;
    }

LABEL_15:
    result = sub_1D7263BFC();
    v7 = result;
    if (!result)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = sub_1D7263BFC();
  v6 = result;
  v4 = *&v0[v2];
  if (v4 >> 62)
  {
    goto LABEL_15;
  }

LABEL_4:
  v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    return result;
  }

LABEL_5:
  if (v7 < 1)
  {
    __break(1u);
  }

  else
  {
    v8 = (Width - (v5 + -1.0)) / v6;

    v9 = 0;
    v10 = 0.0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1DA6FB460](v9, v4);
      }

      else
      {
        v11 = *(v4 + 8 * v9 + 32);
      }

      v12 = v11;
      ++v9;
      [v0 bounds];
      [v12 setFrame_];

      v10 = v8 + 1.0 + v10;
    }

    while (v7 != v9);
  }

  return result;
}

uint64_t sub_1D70106AC(uint64_t result, unint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
LABEL_30:
    v10 = result;
    v4 = sub_1D7263BFC();
    result = v10;
    v5 = -v4;
    if (!__OFSUB__(0, v4))
    {
      goto LABEL_4;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v2 = a2;
  v3 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_30;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5 = -v4;
  if (__OFSUB__(0, v4))
  {
    goto LABEL_32;
  }

LABEL_4:
  v6 = -result;
  if (v5 > 0 || v5 <= v6)
  {
    v7 = v4 - result;
    if (__OFADD__(v4, v6))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v4 < v7)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v4 < 0)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = 0;
    if (!v3)
    {
LABEL_8:
      result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_13;
    }
  }

  result = sub_1D7263BFC();
LABEL_13:
  if (result < v7)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v7 < 0)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v3)
  {
    result = sub_1D7263BFC();
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < v4)
  {
    goto LABEL_35;
  }

  if (v4 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if ((v2 & 0xC000000000000001) == 0 || v7 == v4)
  {

    if (!v3)
    {
      return v2 & 0xFFFFFFFFFFFFFF8;
    }

    goto LABEL_28;
  }

  if (v7 < v4)
  {
    sub_1D5E2B010();

    v8 = v7;
    do
    {
      v9 = v8 + 1;
      sub_1D7263DAC();
      v8 = v9;
    }

    while (v4 != v9);
    if (!v3)
    {
      return v2 & 0xFFFFFFFFFFFFFF8;
    }

LABEL_28:

    return sub_1D72640EC();
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1D701085C(uint64_t result, unint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
LABEL_23:
    v10 = result;
    v4 = sub_1D7263BFC();
    result = v10;
    v5 = -v4;
    if (!__OFSUB__(0, v4))
    {
      goto LABEL_4;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v2 = a2;
  v3 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_23;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5 = -v4;
  if (__OFSUB__(0, v4))
  {
    goto LABEL_25;
  }

LABEL_4:
  v6 = -result;
  if (v5 > 0 || v5 <= v6)
  {
    v7 = v4 - result;
    if (__OFADD__(v4, v6))
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (v7 < 0)
    {
LABEL_29:
      __break(1u);
      return result;
    }

    if (!v3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = 0;
    if (!v3)
    {
LABEL_7:
      result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_13;
    }
  }

  result = sub_1D7263BFC();
  if (result < 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  result = sub_1D7263BFC();
LABEL_13:
  if (result < v7)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if ((v2 & 0xC000000000000001) != 0 && v7)
  {
    sub_1D5E2B010();

    v8 = 0;
    do
    {
      v9 = v8 + 1;
      sub_1D7263DAC();
      v8 = v9;
    }

    while (v7 != v9);
    if (!v3)
    {
      return v2 & 0xFFFFFFFFFFFFFF8;
    }
  }

  else
  {

    if (!v3)
    {
      return v2 & 0xFFFFFFFFFFFFFF8;
    }
  }

  return sub_1D72640EC();
}

unint64_t sub_1D7010A00(uint64_t a1)
{
  result = sub_1D5B4A9B4();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D7010A5C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  (*(v6 + 24))(&v17, v5, v6);
  if (v17)
  {
    if (v17 == 1)
    {
      sub_1D725D68C();
      swift_getWitnessTable();
      v7 = sub_1D7262C8C();
      v8 = __OFSUB__(v7, 1);
      result = v7 - 1;
      if (v8)
      {
        __break(1u);
      }

      else
      {
        MEMORY[0x1DA6F0420](result, a2);
        v10 = sub_1D7258DBC();
        return (*(*(v10 - 8) + 56))(a3, 0, 1, v10);
      }

      return result;
    }

    v16 = sub_1D7258DBC();
    v12 = *(*(v16 - 8) + 56);
    v13 = v16;
    v14 = a3;
    v15 = 1;
  }

  else
  {
    MEMORY[0x1DA6F0420](0, a2);
    v11 = sub_1D7258DBC();
    v12 = *(*(v11 - 8) + 56);
    v13 = v11;
    v14 = a3;
    v15 = 0;
  }

  return v12(v14, v15, 1, v13);
}

uint64_t sub_1D7010C48@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = sub_1D726062C();
  v7 = v5[6];
  v14[0] = v5[5];
  v14[1] = v7;
  v8 = v5[8];
  v14[2] = v5[7];
  v14[3] = v8;
  type metadata accessor for FeedAdGroupDataProvider.FailureReason();
  swift_getWitnessTable();
  v9 = sub_1D7264ABC();
  MEMORY[0x1EEE9AC00](v9, v10);
  FeedAdGroupDataProvider.groupData(for:includeAdjacentGroups:)(a2, 0, (v14 - v11));
  sub_1D681D088(v9, v14, a3);
  return (*(*(v6 - 8) + 56))(a3, 0, 1, v6);
}

uint64_t sub_1D7010DE4@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  v8 = sub_1D726062C();
  v9 = v7[6];
  v27[0] = v7[5];
  v27[1] = v9;
  v10 = v7[8];
  v27[2] = v7[7];
  v27[3] = v10;
  type metadata accessor for FeedAdGroupDataProvider.FailureReason();
  swift_getWitnessTable();
  v11 = sub_1D7264ABC();
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v25[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v25[-v17];
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  (*(v20 + 24))(&v26, v19, v20);
  if (v26)
  {
    if (v26 != 1)
    {
      v23 = 1;
      return (*(*(v8 - 8) + 56))(a4, v23, 1, v8);
    }

    FeedAdGroupDataProvider.groupData(for:includeAdjacentGroups:)(a3, 0, v14);
    v21 = a4;
    v22 = v11;
  }

  else
  {
    FeedAdGroupDataProvider.groupData(before:)(a3, v18);
    v21 = a4;
    v22 = v11;
  }

  sub_1D681D088(v22, v27, v21);
  v23 = 0;
  return (*(*(v8 - 8) + 56))(a4, v23, 1, v8);
}

uint64_t sub_1D7011028@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  v8 = sub_1D726062C();
  v9 = v7[6];
  v27[0] = v7[5];
  v27[1] = v9;
  v10 = v7[8];
  v27[2] = v7[7];
  v27[3] = v10;
  type metadata accessor for FeedAdGroupDataProvider.FailureReason();
  swift_getWitnessTable();
  v11 = sub_1D7264ABC();
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v25[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v25[-v17];
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  (*(v20 + 24))(&v26, v19, v20);
  if (v26)
  {
    if (v26 != 1)
    {
      v23 = 1;
      return (*(*(v8 - 8) + 56))(a4, v23, 1, v8);
    }

    FeedAdGroupDataProvider.groupData(after:)(a3, v14);
    v21 = a4;
    v22 = v11;
  }

  else
  {
    FeedAdGroupDataProvider.groupData(for:includeAdjacentGroups:)(a3, 0, v18);
    v21 = a4;
    v22 = v11;
  }

  sub_1D681D088(v22, v27, v21);
  v23 = 0;
  return (*(*(v8 - 8) + 56))(a4, v23, 1, v8);
}

uint64_t sub_1D701126C(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v66 = a5;
  v62 = a3;
  v63 = a4;
  sub_1D5C1D4A4(0, &unk_1EDF3A9A8, MEMORY[0x1E69B4228]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v64 = &v57 - v9;
  sub_1D5C1D4A4(0, &qword_1EDF3AA28, MEMORY[0x1E69B3FD8]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v65 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v61 = &v57 - v15;
  v60 = sub_1D726062C();
  v67 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60, v16);
  v59 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v58 = &v57 - v20;
  v21 = sub_1D726068C();
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v23 = sub_1D72606AC();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v28 = a2[3];
  v29 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v28);
  (*(v29 + 8))(v28, v29);
  v30 = v67;
  sub_1D726069C();
  sub_1D7011CD4(&qword_1EDF3AA20, MEMORY[0x1E69B4028]);
  sub_1D72609FC();
  (*(v24 + 8))(v27, v23);
  v31 = v68;
  __swift_project_boxed_opaque_existential_1(v68, v68[3]);
  v32 = sub_1D7011CD4(&qword_1EDF3AA30, MEMORY[0x1E69B3FD8]);
  v33 = v60;
  sub_1D72609FC();
  v34 = v61;
  sub_1D70119C4(v63, v61);
  v35 = *(v30 + 48);
  v36 = v35(v34, 1, v33);
  v37 = MEMORY[0x1E69B4220];
  v57 = v32;
  if (v36 == 1)
  {
    sub_1D5C1D4F8(v34, &qword_1EDF3AA28, MEMORY[0x1E69B3FD8]);
    v38 = v64;
  }

  else
  {
    v39 = v58;
    (*(v30 + 32))(v58, v34, v33);
    v40 = v31[3];
    v63 = v31[4];
    v62 = __swift_project_boxed_opaque_existential_1(v31, v40);
    v41 = v33;
    v42 = *MEMORY[0x1E69B4210];
    v43 = sub_1D7260AEC();
    v38 = v64;
    (*(*(v43 - 8) + 104))(v64, v42, v43);
    v44 = *v37;
    v45 = sub_1D7260AFC();
    v46 = *(v45 - 8);
    v47 = v44;
    v33 = v41;
    v30 = v67;
    (*(v46 + 104))(v38, v47, v45);
    (*(v46 + 56))(v38, 0, 1, v45);
    sub_1D72609EC();
    sub_1D5C1D4F8(v38, &unk_1EDF3A9A8, MEMORY[0x1E69B4228]);
    (*(v30 + 8))(v39, v33);
  }

  v48 = v65;
  sub_1D70119C4(v66, v65);
  if (v35(v48, 1, v33) == 1)
  {
    return sub_1D5C1D4F8(v48, &qword_1EDF3AA28, MEMORY[0x1E69B3FD8]);
  }

  v50 = v59;
  (*(v30 + 32))(v59, v48, v33);
  __swift_project_boxed_opaque_existential_1(v68, v68[3]);
  v51 = v33;
  v52 = *MEMORY[0x1E69B4218];
  v53 = sub_1D7260AEC();
  (*(*(v53 - 8) + 104))(v38, v52, v53);
  v54 = *MEMORY[0x1E69B4220];
  v55 = sub_1D7260AFC();
  v56 = *(v55 - 8);
  (*(v56 + 104))(v38, v54, v55);
  (*(v56 + 56))(v38, 0, 1, v55);
  sub_1D72609EC();
  sub_1D5C1D4F8(v38, &unk_1EDF3A9A8, MEMORY[0x1E69B4228]);
  return (*(v30 + 8))(v50, v51);
}

uint64_t sub_1D70119C4(uint64_t a1, uint64_t a2)
{
  sub_1D5C1D4A4(0, &qword_1EDF3AA28, MEMORY[0x1E69B3FD8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7011A44(uint64_t a1, uint64_t a2)
{
  sub_1D5C1D4A4(0, &qword_1EDF3AA28, MEMORY[0x1E69B3FD8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7011AC4(void *a1)
{
  v3 = *(sub_1D726062C() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  sub_1D5C1D4A4(0, &qword_1EDF3AA28, MEMORY[0x1E69B3FD8]);
  v7 = *(*(v6 - 8) + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = v1 + ((*(*(v6 - 8) + 64) + v7 + v8) & ~v7);

  return sub_1D701126C(a1, (v1 + 16), (v1 + v4), v1 + v8, v9);
}

uint64_t sub_1D7011BE4()
{
  result = sub_1D725FACC();
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

uint64_t sub_1D7011CD4(unint64_t *a1, void (*a2)(uint64_t))
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

id FormatPuzzleTypeBinding.Text.text(from:config:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 56);
  v4 = *v2;
  if (*(v2 + 8) != 1)
  {
    if (*(a2 + 40))
    {
      v6 = *(a2 + 72);
      v7 = [v3 identifier];
      v8 = sub_1D726207C();
      v10 = v9;

      if (*(v6 + 16))
      {
        v11 = sub_1D5B69D90(v8, v10);
        v13 = v12;

        if ((v13 & 1) != 0 && (v4 & 0x8000000000000000) == 0)
        {
          v14 = *(*(v6 + 56) + 8 * v11);
          if (v14 >> 62)
          {
            result = sub_1D7263BFC();
            if (v4 < result)
            {
LABEL_11:
              if ((v14 & 0xC000000000000001) != 0)
              {

                v15 = MEMORY[0x1DA6FB460](v4, v14);
              }

              else
              {
                if (v4 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
                  return result;
                }

                v15 = *(v14 + 8 * v4 + 32);
              }

              v16 = [v15 name];

              v17 = sub_1D726207C();
              return v17;
            }
          }

          else
          {
            result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v4 < result)
            {
              goto LABEL_11;
            }
          }
        }
      }

      else
      {
      }
    }

    return 0;
  }

  if (!v4)
  {
    result = [v3 name];
    goto LABEL_16;
  }

  result = [v3 nameCompact];
  if (result)
  {
LABEL_16:
    v18 = result;
    v19 = sub_1D726207C();

    return v19;
  }

  return result;
}

uint64_t static FormatPuzzleTypeBinding.Text.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t FormatPuzzleTypeBinding.Text.CodingType.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1D72641CC();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t FormatPuzzleTypeBinding.Text.CodingType.rawValue.getter()
{
  v1 = 0x747865546B6E6172;
  if (*v0 != 1)
  {
    v1 = 0x706D6F43656D616ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1D7011FEC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x747865546B6E6172;
  if (v2 != 1)
  {
    v4 = 0x706D6F43656D616ELL;
    v3 = 0xEB00000000746361;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701667182;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x747865546B6E6172;
  if (*a2 != 1)
  {
    v8 = 0x706D6F43656D616ELL;
    v7 = 0xEB00000000746361;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701667182;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D70120F8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D701219C()
{
  sub_1D72621EC();
}

uint64_t sub_1D701222C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D70122D8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x747865546B6E6172;
  if (v2 != 1)
  {
    v5 = 0x706D6F43656D616ELL;
    v4 = 0xEB00000000746361;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701667182;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D7012428(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D7012464@<X0>(_BYTE *a1@<X0>, id *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = type metadata accessor for FormatInspectionItem(0);
  v10 = *(v9 - 8);
  v64 = v9;
  v65 = v10;
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = (v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v16 = MEMORY[0x1EEE9AC00](v14, v15).n128_u64[0];
  v18 = v60 - v17;
  if (!*a1)
  {
    v13 = a4;
    sub_1D67ED888();
    v25 = (*(v65 + 80) + 32) & ~*(v65 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1D7273AE0;
    sub_1D72596FC();
    sub_1D72596DC();
    if (qword_1EDF43B30 == -1)
    {
LABEL_8:
      sub_1D72596CC();

      v27 = v71;
      v71 = 0;
      v72 = v27;
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
      v28 = [a2[7] name];
      v29 = sub_1D726207C();
      v31 = v30;
      sub_1D5D09C48(&v71);

      v32 = HIBYTE(v31) & 0xF;
      if ((v31 & 0x2000000000000000) == 0)
      {
        v32 = v29 & 0xFFFFFFFFFFFFLL;
      }

      if (v32)
      {
        v33 = MEMORY[0x1E69E6158];
      }

      else
      {

        v29 = 0;
        v31 = 0;
        v33 = 0;
        v69 = 0;
      }

      v67 = v29;
      v68 = v31;
      v70 = v33;
      result = sub_1D711B30C(1701667150, 0xE400000000000000, &v67, (v26 + v25));
      *v13 = v26;
      return result;
    }

LABEL_40:
    swift_once();
    goto LABEL_8;
  }

  if (*a1 == 1)
  {
    if (*(a3 + 104))
    {
      v19 = *(a3 + 136);
      a2 = [a2[7] identifier];
      v20 = sub_1D726207C();
      v22 = v21;

      if (*(v19 + 16))
      {
        sub_1D5B69D90(v20, v22);
        a2 = v23;

        if (a2)
        {

LABEL_27:
          if (!(v24 >> 62))
          {
            v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);

LABEL_29:
            v46 = MEMORY[0x1E69E7CC0];
            if (v25)
            {
              v60[0] = a4;
              v60[1] = v4;
              v79 = MEMORY[0x1E69E7CC0];
              sub_1D6997AF0(0, v25, 0);
              v47 = sub_1D72596FC();
              v48 = 0;
              v46 = v79;
              v61 = v73;
              v62 = v47;
              v63 = v25;
              do
              {
                v49 = v18;
                v66 = v48;
                v67 = 0x786554206B6E6152;
                v68 = 0xEA00000000002074;
                v50 = sub_1D72644BC();
                MEMORY[0x1DA6F9910](v50);

                v51 = v67;
                v52 = v68;
                sub_1D72596DC();
                if (qword_1EDF43B30 != -1)
                {
                  swift_once();
                }

                sub_1D72596CC();

                v71 = 0;
                v72 = v67;
                v53 = v61;
                *v61 = v67;
                *(v53 + 2) = WORD2(v67);
                v74 = 0u;
                v75 = 0u;
                v76 = 0u;
                v77 = 0u;
                v78 = 0u;
                sub_1D5D09C48(&v71);

                v54 = v64;
                v55 = *(v64 + 24);
                v56 = type metadata accessor for FormatInspectionItem.Value(0);
                (*(*(v56 - 8) + 56))(v13 + v55, 1, 1, v56);
                *v13 = v51;
                v13[1] = v52;
                v13[2] = 0;
                v13[3] = 0;
                v57 = v13 + *(v54 + 28);
                *v57 = 0;
                *(v57 + 1) = 0;
                v57[16] = -1;
                v18 = v49;
                sub_1D613ADAC(v13, v49);
                v79 = v46;
                v59 = *(v46 + 16);
                v58 = *(v46 + 24);
                if (v59 >= v58 >> 1)
                {
                  sub_1D6997AF0(v58 > 1, v59 + 1, 1);
                  v46 = v79;
                }

                ++v48;
                *(v46 + 16) = v59 + 1;
                result = sub_1D613ADAC(v49, v46 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v59);
              }

              while (v63 != v48);
              a4 = v60[0];
            }

            *a4 = v46;
            return result;
          }

          v26 = v24;
          v25 = sub_1D7263BFC();

          if ((v25 & 0x8000000000000000) == 0)
          {
            goto LABEL_29;
          }

          __break(1u);
          goto LABEL_40;
        }
      }

      else
      {
      }
    }

    v24 = MEMORY[0x1E69E7CC0];
    goto LABEL_27;
  }

  sub_1D67ED888();
  v34 = (*(v65 + 80) + 32) & ~*(v65 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1D7273AE0;
  sub_1D72596FC();
  sub_1D72596DC();
  if (qword_1EDF43B30 != -1)
  {
    swift_once();
  }

  sub_1D72596CC();

  v36 = v71;
  v71 = 0;
  v72 = v36;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v37 = [a2[7] nameCompact];
  if (v37)
  {
    v38 = a4;
    v39 = v37;
    v40 = sub_1D726207C();
    v42 = v41;

    a4 = v38;
  }

  else
  {
    v40 = 0;
    v42 = 0xE000000000000000;
  }

  sub_1D5D09C48(&v71);
  v44 = HIBYTE(v42) & 0xF;
  if ((v42 & 0x2000000000000000) == 0)
  {
    v44 = v40 & 0xFFFFFFFFFFFFLL;
  }

  if (v44)
  {
    v45 = MEMORY[0x1E69E6158];
  }

  else
  {

    v40 = 0;
    v42 = 0;
    v45 = 0;
    v69 = 0;
  }

  v67 = v40;
  v68 = v42;
  v70 = v45;
  result = sub_1D711B30C(0x6D6F4320656D614ELL, 0xEC00000074636170, &v67, (v35 + v34));
  *a4 = v35;
  return result;
}

unint64_t sub_1D7012B28()
{
  result = qword_1EC8995D0;
  if (!qword_1EC8995D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8995D0);
  }

  return result;
}

unint64_t sub_1D7012B80()
{
  result = qword_1EC8995D8;
  if (!qword_1EC8995D8)
  {
    sub_1D7012BD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8995D8);
  }

  return result;
}

void sub_1D7012BD8()
{
  if (!qword_1EC8995E0)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8995E0);
    }
  }
}

unint64_t sub_1D7012C28(uint64_t a1)
{
  result = sub_1D7012C50();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D7012C50()
{
  result = qword_1EC8995E8;
  if (!qword_1EC8995E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8995E8);
  }

  return result;
}

unint64_t sub_1D7012CA4(void *a1)
{
  a1[1] = sub_1D665FE28();
  a1[2] = sub_1D6705070();
  result = sub_1D7012CDC();
  a1[3] = result;
  return result;
}

unint64_t sub_1D7012CDC()
{
  result = qword_1EC8995F0;
  if (!qword_1EC8995F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8995F0);
  }

  return result;
}

uint64_t sub_1D7012D50@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = 0;
  v5 = a1[6];
  v6 = a1[8];
  v32[7] = a1[7];
  v32[8] = v6;
  v7 = a1[2];
  v8 = a1[4];
  v9 = a1[5];
  v32[3] = a1[3];
  v32[4] = v8;
  v32[5] = v9;
  v32[6] = v5;
  v11 = *a1;
  v10 = a1[1];
  v33 = *(a1 + 18);
  v32[1] = v10;
  v32[2] = v7;
  v12 = a2[1];
  v31[0] = *a2;
  v31[1] = v12;
  v13 = a2[3];
  v31[2] = a2[2];
  v31[3] = v13;
  v32[0] = v11;
  v14 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v28 = byte_1F50F7598[v4 + 32];
    result = sub_1D7012464(&v28, v31, v32, v29);
    v16 = *&v29[0];
    v17 = *(*&v29[0] + 16);
    v18 = v14[2];
    v19 = v18 + v17;
    if (__OFADD__(v18, v17))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v19 <= v14[3] >> 1)
    {
      if (*(v16 + 16))
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (v18 <= v19)
      {
        v21 = v18 + v17;
      }

      else
      {
        v21 = v18;
      }

      v14 = sub_1D698BAE0(isUniquelyReferenced_nonNull_native, v21, 1, v14);
      if (*(v16 + 16))
      {
LABEL_13:
        v22 = (v14[3] >> 1) - v14[2];
        result = type metadata accessor for FormatInspectionItem(0);
        if (v22 < v17)
        {
          goto LABEL_20;
        }

        swift_arrayInitWithCopy();

        if (v17)
        {
          v23 = v14[2];
          v24 = __OFADD__(v23, v17);
          v25 = v23 + v17;
          if (v24)
          {
            goto LABEL_21;
          }

          v14[2] = v25;
        }

        goto LABEL_3;
      }
    }

    if (v17)
    {
      goto LABEL_19;
    }

LABEL_3:
    if (++v4 == 3)
    {
      v26 = sub_1D5F62998(v14);

      sub_1D6795150(0x5420656C7A7A7550, 0xEB00000000657079, 0, 0, v26, v29);

      v27 = v29[1];
      *a3 = v29[0];
      *(a3 + 16) = v27;
      *(a3 + 32) = v30;
      return result;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_1D7012F80()
{
  result = qword_1EDF27098;
  if (!qword_1EDF27098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27098);
  }

  return result;
}

uint64_t type metadata accessor for WebEmbedImageRequest()
{
  result = qword_1EDF29E88;
  if (!qword_1EDF29E88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7013048()
{
  sub_1D72585BC();
  if (v0 <= 0x3F)
  {
    sub_1D5B5A498(319, &unk_1EDF1AB30);
    if (v1 <= 0x3F)
    {
      sub_1D5B5A498(319, &unk_1EDF1AC20);
      if (v2 <= 0x3F)
      {
        sub_1D5B5A498(319, &qword_1EDF1A960);
        if (v3 <= 0x3F)
        {
          sub_1D5B4D72C(319);
          if (v4 <= 0x3F)
          {
            sub_1D5B5A498(319, &qword_1EDF1AA18);
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

unint64_t FormatLayeredMediaNode.visibility.getter@<X0>(unint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 88);
  *a1 = v3;
  return sub_1D5EB1500(v3);
}

uint64_t FormatLayeredMediaNode.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatLayeredMediaNode.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

unint64_t FormatLayeredMediaNode.size.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = v2;
  return sub_1D5C82CD8(v2);
}

uint64_t FormatLayeredMediaNode.adjustments.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 72) = a1;
}

uint64_t FormatLayeredMediaNode.zIndex.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 80) = a1;
  return result;
}

unint64_t FormatLayeredMediaNode.visibility.setter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 88);
  *(v1 + 88) = v2;
  return sub_1D5EB15C4(v3);
}

uint64_t FormatLayeredMediaNode.isUserInteractionEnabled.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 96) = a1;
  return result;
}

void FormatLayeredMediaNode.accessibilityRole.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  *a1 = *(v1 + 104);
  *(a1 + 8) = v2;
}

uint64_t FormatLayeredMediaNode.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 120) = a1;
}

uint64_t FormatLayeredMediaNode.flex.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[16];
  v3 = v1[17];
  v4 = v1[18];
  v5 = v1[19];
  v6 = v1[20];
  v7 = v1[21];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1D5EB1D80(v2, v3, v4, v5, v6);
}

uint64_t FormatLayeredMediaNode.__allocating_init(identifier:content:style:animation:size:resize:adjustments:zIndex:visibility:isUserInteractionEnabled:accessibilityRole:selectors:flex:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t *a10, char a11, uint64_t *a12, uint64_t a13, uint64_t a14)
{
  v20 = swift_allocObject();
  v21 = *a3;
  v22 = *a6;
  v23 = *a7;
  v24 = *a10;
  v29 = *a12;
  v25 = *(a12 + 8);
  v31 = *(a14 + 40);
  v32 = *(a14 + 32);
  swift_beginAccess();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  *(v20 + 32) = v21;
  *(v20 + 40) = a4;
  *(v20 + 48) = a5;
  *(v20 + 56) = v22;
  *(v20 + 64) = v23;
  swift_beginAccess();
  *(v20 + 72) = a8;
  swift_beginAccess();
  *(v20 + 80) = a9;
  swift_beginAccess();
  *(v20 + 88) = v24;
  swift_beginAccess();
  *(v20 + 96) = a11;
  *(v20 + 104) = v29;
  *(v20 + 112) = v25;
  swift_beginAccess();
  *(v20 + 120) = a13;
  v26 = *(a14 + 16);
  *(v20 + 128) = *a14;
  *(v20 + 144) = v26;
  *(v20 + 160) = v32;
  *(v20 + 168) = v31;
  return v20;
}

uint64_t FormatLayeredMediaNode.init(identifier:content:style:animation:size:resize:adjustments:zIndex:visibility:isUserInteractionEnabled:accessibilityRole:selectors:flex:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t *a10, char a11, uint64_t *a12, uint64_t a13, uint64_t a14)
{
  v19 = *a3;
  v20 = *a6;
  v21 = *a7;
  v24 = *a10;
  v27 = *a12;
  v26 = *(a12 + 8);
  v28 = *(a14 + 40);
  v29 = *(a14 + 32);
  swift_beginAccess();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = v19;
  *(v14 + 40) = a4;
  *(v14 + 48) = a5;
  *(v14 + 56) = v20;
  *(v14 + 64) = v21;
  swift_beginAccess();
  *(v14 + 72) = a8;
  swift_beginAccess();
  *(v14 + 80) = a9;
  swift_beginAccess();
  *(v14 + 88) = v24;
  swift_beginAccess();
  *(v14 + 96) = a11;
  *(v14 + 104) = v27;
  *(v14 + 112) = v26;
  swift_beginAccess();
  *(v14 + 120) = a13;
  v22 = *(a14 + 16);
  *(v14 + 128) = *a14;
  *(v14 + 144) = v22;
  *(v14 + 160) = v29;
  *(v14 + 168) = v28;
  return v14;
}

uint64_t FormatLayeredMediaNode.deinit()
{

  sub_1D5C92A8C(*(v0 + 56));

  sub_1D5EB15C4(*(v0 + 88));

  sub_1D5EB2398(*(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160));
  return v0;
}

uint64_t FormatLayeredMediaNode.__deallocating_deinit()
{
  FormatLayeredMediaNode.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7013A70(uint64_t a1)
{
  result = sub_1D7013C04(&qword_1EC8995F8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D7013AD8(void *a1)
{
  a1[1] = sub_1D7013C04(&qword_1EDF28720);
  a1[2] = sub_1D7013C04(&qword_1EDF0DAC0);
  result = sub_1D7013C04(&qword_1EC899600);
  a1[3] = result;
  return result;
}

uint64_t sub_1D7013B64@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D669D6CC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D7013BC0(uint64_t a1)
{
  result = sub_1D7013C04(&qword_1EC899608);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D7013C04(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatLayeredMediaNode();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D7013C44@<X0>(unint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v87 = a8;
  v92 = a7;
  v84 = a6;
  v82 = a5;
  v80 = a3;
  v90 = a9;
  v93 = a16;
  v91 = a15;
  v26 = a4;
  sub_1D6047B58();
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v86 = &v78 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v79 = &v78 - v32;
  v83 = type metadata accessor for FormatNodeStateData.Data();
  v81 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83, v33);
  v35 = &v78 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7259ECC();
  v37 = v36;
  v39 = v38;
  v88 = a1;
  sub_1D7259F1C();
  v41 = v40;
  LODWORD(v85) = a4;
  if (v26 == 2 || (a4 & 1) == 0)
  {
    v42 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v42 = &unk_1F5119D88;
  }

  v89 = a18;
  v100[3] = type metadata accessor for LayeredMediaLoader();
  v100[4] = &protocol witness table for LayeredMediaLoader;
  v100[0] = v80;
  v44 = a2[5];
  v43 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v44);
  v45 = *(v43 + 8);

  v46 = v45(v100, v42, v44, v43);

  v47 = sub_1D70143BC(v46, v82);
  v95 = v37;
  v96 = v39;
  v97 = a12;
  v98 = a13;
  v99 = v41;
  v48 = LayeredMediaViewModelRenderer.render(viewModel:options:)(v47, &v95);

  __swift_destroy_boxed_opaque_existential_1(v100);
  v49 = v92;
  *v35 = v84;
  *(v35 + 1) = v49;
  *(v35 + 2) = a14;
  *(v35 + 3) = v48;
  v35[32] = v85;
  v50 = v83;
  swift_storeEnumTagMultiPayload();
  v51 = v79;
  sub_1D6047CB4(v35, v79, type metadata accessor for FormatNodeStateData.Data);
  (*(v81 + 56))(v51, 0, 1, v50);
  v52 = v86;
  sub_1D6047CB4(v51, v86, sub_1D6047B58);
  swift_beginAccess();
  v87 = v48;
  swift_retain_n();
  v53 = v93;

  swift_bridgeObjectRetain_n();
  sub_1D6D60A18(v52, v91, v53);
  swift_endAccess();
  sub_1D6047D1C(v51, sub_1D6047B58);
  sub_1D6047D1C(v35, type metadata accessor for FormatNodeStateData.Data);
  v54 = v88;
  v55 = *(v88 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace);
  swift_beginAccess();
  v57 = *(a17 + 16);
  v56 = *(a17 + 24);
  v58 = *(v55 + 40);
  if (v58)
  {
    v95 = *(v55 + 32);
    v96 = v58;

    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    MEMORY[0x1DA6F9910](v57, v56);

    v86 = v95;
    v85 = v96;
    v57 = *(a17 + 16);
    v56 = *(a17 + 24);
    v59 = *(a17 + 64);
    if (!v59)
    {
      goto LABEL_11;
    }
  }

  else
  {

    v86 = v57;
    v85 = v56;
    v59 = *(a17 + 64);
    if (!v59)
    {
      goto LABEL_11;
    }
  }

  v60 = *(v59 + 16);
  swift_beginAccess();
  if (*(*(v60 + 16) + 16))
  {

    goto LABEL_12;
  }

LABEL_11:
  v60 = 0;
LABEL_12:
  swift_beginAccess();
  v61 = *(a17 + 80);
  swift_beginAccess();
  v94 = *(a17 + 88);
  v62 = v94;

  sub_1D5EB1500(v62);
  sub_1D615B4A8(v54, &v101);
  sub_1D5EB15C4(v94);
  v63 = v101;
  swift_beginAccess();
  v64 = *(a17 + 96);
  v65 = *(a17 + 104);
  v66 = *(a17 + 112);
  type metadata accessor for FormatLayeredMediaNodeLayoutAttributes();
  v67 = swift_allocObject();
  *(v67 + 16) = v91;
  v68 = v86;
  *(v67 + 24) = v93;
  *(v67 + 32) = v68;
  *(v67 + 40) = v85;
  *(v67 + 48) = v57;
  *(v67 + 56) = v56;
  *(v67 + 64) = a10;
  *(v67 + 72) = a11;
  *(v67 + 80) = a12;
  *(v67 + 88) = a13;
  *(v67 + 96) = v60;
  *(v67 + 104) = v61;
  *(v67 + 112) = v63;
  *(v67 + 120) = v64;
  *(v67 + 128) = v65;
  *(v67 + 136) = v66;
  v69 = v89;
  *(v67 + 144) = v89;
  if (v69)
  {
    sub_1D7014B30();
    inited = swift_initStackObject();
    v71 = inited;
    *(inited + 16) = xmmword_1D7273AE0;
    v72 = *(v69 + 64);
    if ((~v72 & 0xF000000000000007) != 0)
    {
      v75 = &protocol witness table for FormatBackground;
      v74 = &type metadata for FormatBackground;
      v73 = *(v69 + 64);
    }

    else
    {
      v73 = 0;
      v74 = 0;
      v75 = 0;
      *(inited + 40) = 0;
      *(inited + 48) = 0;
    }

    *(inited + 32) = v73;
    *(inited + 56) = v74;
    *(inited + 64) = v75;

    sub_1D5D04BD4(v72);
    v76 = sub_1D6E27AC0(v71);
    swift_setDeallocating();
    sub_1D60EEB74(v71 + 32);
  }

  else
  {

    v76 = MEMORY[0x1E69E7CD0];
  }

  result = swift_allocObject();
  *(v67 + 152) = v76;
  *(result + 16) = v67;
  *v90 = result | 0x6000000000000004;
  return result;
}

void *sub_1D70143BC(void *a1, uint64_t a2)
{
  v4 = sub_1D7261B9C();
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (&v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B5A498(0, &qword_1EDF1AA30);
  *v8 = sub_1D726308C();
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8018], v4);
  v9 = sub_1D7261BBC();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    v10 = LayeredMediaLayerProvider.syncLayers()();
    v17 = v10[2];
    if (v17)
    {
      v62 = a1;
      v63 = a2;
      v110 = MEMORY[0x1E69E7CC0];
      v18 = v10;
      sub_1D6997E60(0, v17, 0);
      v19 = v18;
      v20 = v17 - 1;
      v21 = v110;
      v22 = 4;
      for (i = v19; ; v19 = i)
      {
        v23 = *&v19[v22];
        v24 = *&v19[v22 + 2];
        v25 = *&v19[v22 + 6];
        v104 = *&v19[v22 + 4];
        v105 = v25;
        v102 = v23;
        v103 = v24;
        v26 = *&v19[v22 + 8];
        v27 = *&v19[v22 + 10];
        v28 = *&v19[v22 + 12];
        *(v108 + 9) = *(&v19[v22 + 13] + 1);
        v107 = v27;
        v108[0] = v28;
        v106 = v26;
        memmove(__dst, &v19[v22], 0x79uLL);
        if (sub_1D5ED9718(__dst) == 1)
        {
          v29 = sub_1D5D6EF44(__dst);
          v30 = objc_allocWithZone(MEMORY[0x1E69CE110]);
          v69 = v106;
          v70 = v107;
          v71[0] = v108[0];
          *(v71 + 9) = *(v108 + 9);
          v65 = v102;
          v66 = v103;
          v67 = v104;
          v68 = v105;
          v31 = sub_1D5D6EF44(&v65);
          v76 = v106;
          v77 = v107;
          v78[0] = v108[0];
          *(v78 + 9) = *(v108 + 9);
          v72 = v102;
          v73 = v103;
          v74 = v104;
          v75 = v105;
          v32 = sub_1D5D6EF44(&v72);
          sub_1D5ED9780(v32, &v79);
          sub_1D5ED9780(v31, &v79);
          v33 = [v30 init];
          sub_1D5ED98AC(0, &qword_1EDF17318, &qword_1EDF045A8);
          objc_allocWithZone(v34);
          v35 = v33;
          v36 = sub_1D725CB8C();
          sub_1D5ED97DC(&v102);
          v83 = v29[4];
          v84 = v29[5];
          v85[0] = v29[6];
          *(v85 + 9) = *(v29 + 105);
          v79 = *v29;
          v80 = v29[1];
          v81 = v29[2];
          v82 = v29[3];
          *&v86 = v36;
          *(&v86 + 1) = v35;
          v91 = v83;
          v92 = v84;
          v93[0] = v85[0];
          *(v93 + 9) = *(v85 + 9);
          v87 = v79;
          v88 = v80;
          v89 = v81;
          v90 = v82;
          sub_1D5ED9830(&v86);
        }

        else
        {
          v37 = sub_1D5D6EF44(__dst);
          v38 = objc_allocWithZone(MEMORY[0x1E69CE100]);
          v76 = v106;
          v77 = v107;
          v78[0] = v108[0];
          *(v78 + 9) = *(v108 + 9);
          v72 = v102;
          v73 = v103;
          v74 = v104;
          v75 = v105;
          v39 = sub_1D5D6EF44(&v72);
          v83 = v106;
          v84 = v107;
          v85[0] = v108[0];
          *(v85 + 9) = *(v108 + 9);
          v79 = v102;
          v80 = v103;
          v81 = v104;
          v82 = v105;
          v40 = sub_1D5D6EF44(&v79);
          sub_1D5ED9850(v40, &v65);
          sub_1D5ED9850(v39, &v65);
          v41 = [v38 init];
          sub_1D5ED98AC(0, &qword_1EDF17328, &qword_1EDF04638);
          objc_allocWithZone(v42);
          v43 = v41;
          v44 = sub_1D725CB8C();
          sub_1D5ED97DC(&v102);
          v69 = *(v37 + 64);
          v70 = *(v37 + 80);
          v71[0] = *(v37 + 96);
          LOBYTE(v71[1]) = *(v37 + 112);
          v65 = *v37;
          v66 = *(v37 + 16);
          v67 = *(v37 + 32);
          v68 = *(v37 + 48);
          *&v86 = v44;
          *(&v86 + 1) = v43;
          v91 = v69;
          v92 = v70;
          v93[0] = v71[0];
          LOBYTE(v93[1]) = v71[1];
          v87 = v65;
          v88 = v66;
          v89 = v67;
          v90 = v68;
          sub_1D5ED9904(&v86);
        }

        v100 = v92;
        v101[0] = v93[0];
        *(v101 + 9) = *(v93 + 9);
        v96 = v88;
        v97 = v89;
        v98 = v90;
        v99 = v91;
        v94 = v86;
        v95 = v87;
        v110 = v21;
        v46 = *(v21 + 16);
        v45 = *(v21 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_1D6997E60((v45 > 1), v46 + 1, 1);
          v21 = v110;
        }

        *(v21 + 16) = v46 + 1;
        v47 = (v21 + 144 * v46);
        v47[2] = v94;
        v48 = v95;
        v49 = v96;
        v50 = v98;
        v47[5] = v97;
        v47[6] = v50;
        v47[3] = v48;
        v47[4] = v49;
        v51 = v99;
        v52 = v100;
        v53 = v101[0];
        *(v47 + 153) = *(v101 + 9);
        v47[8] = v52;
        v47[9] = v53;
        v47[7] = v51;
        if (!v20)
        {
          break;
        }

        --v20;
        v22 += 16;
      }

      a1 = v62;
      a2 = v63;
    }

    else
    {

      v21 = MEMORY[0x1E69E7CC0];
    }

    v54 = a1[5];
    v55 = a1[6];
    __swift_project_boxed_opaque_existential_1(a1 + 2, v54);
    v56 = (*(v55 + 8))(v54, v55);
    v58 = v57;
  }

  else
  {
    __break(1u);
    swift_once();
    sub_1D7262EBC();
    sub_1D5BFB840(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1D7273AE0;
    *&v94 = 0;
    *(&v94 + 1) = 0xE000000000000000;
    *&v86 = v4;
    sub_1D5B49474(0, &qword_1EDF3C5D0);
    sub_1D7263F9C();
    v13 = *(&v94 + 1);
    v12 = v94;
    *(v11 + 56) = MEMORY[0x1E69E6158];
    *(v11 + 64) = sub_1D5B7E2C0();
    *(v11 + 32) = __PAIR128__(v13, v12);
    sub_1D725C30C();

    v14 = a1[5];
    v15 = a1[6];
    __swift_project_boxed_opaque_existential_1(a1 + 2, v14);
    v56 = (*(v15 + 8))(v14, v15);
    v58 = v16;

    v21 = MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for LayeredMediaViewModel();
  v59 = swift_allocObject();
  v59[2] = v56;
  v59[3] = v58;
  v59[4] = v21;
  v59[5] = a2;

  return v59;
}

void sub_1D7014B30()
{
  if (!qword_1EDF195B8)
  {
    sub_1D5BFB840(255, &qword_1EDF1C7D8, &qword_1EDF1C7E0, &protocol descriptor for FormatAuxiliaryViewRequirementProviding, MEMORY[0x1E69E6720]);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF195B8);
    }
  }
}

uint64_t IssueService.__allocating_init(issuesFetchOperationFactory:issueReadingHistory:)(__int128 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1D5B63F14(a1, v4 + 16);
  *(v4 + 56) = a2;
  return v4;
}

uint64_t sub_1D7014C08(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1D5B63B80();
    v4 = sub_1D726267C();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t IssueServiceType.fetchIssue(for:)()
{
  sub_1D7015838(0, &qword_1EDF178D8, sub_1D5B63B80, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BBAC();
}

void sub_1D7014D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1D5B90088();

  sub_1D725BDCC();
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = sub_1D5B7E910;
  v9[5] = v8;

  v10 = sub_1D725B92C();
  sub_1D725BA8C();

  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;

  v12 = sub_1D725B92C();
  sub_1D725BACC();
}

uint64_t sub_1D7014EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D5C3C480();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D7273AE0;
  *(v9 + 32) = a2;
  *(v9 + 40) = a3;
  v10 = *(a5 + 8);

  v11 = v10(v9, a4, a5);

  return v11;
}

void sub_1D7014F90(uint64_t *a1, void (*a2)(void), uint64_t a3, void (*a4)(void))
{
  v6 = *a1;
  if (*a1 >> 62)
  {
    if (sub_1D7263BFC())
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_1D7015928();
    v9 = swift_allocError();
    a2();

    return;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1DA6FB460](0, v6);
    goto LABEL_6;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v6 + 32);
LABEL_6:
    v8 = v7;
    a4();

    return;
  }

  __break(1u);
}

uint64_t IssueServiceType.cachedIssue(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D5C3C480();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D7273AE0;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  v9 = *(a4 + 16);

  v10 = v9(v8, a3, a4);

  if (!(v10 >> 62))
  {
    result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    return 0;
  }

  result = sub_1D7263BFC();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1DA6FB460](0, v10);
    goto LABEL_6;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v10 + 32);
LABEL_6:
    v13 = v12;

    return v13;
  }

  __break(1u);
  return result;
}

uint64_t IssueService.init(issuesFetchOperationFactory:issueReadingHistory:)(__int128 *a1, uint64_t a2)
{
  sub_1D5B63F14(a1, v2 + 16);
  *(v2 + 56) = a2;
  return v2;
}

uint64_t IssueService.fetchIssues(for:)()
{
  sub_1D7015838(0, &unk_1EDF17950, sub_1D5B90088, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BBAC();
}

uint64_t sub_1D701527C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = a5[5];
  v14 = a5[6];
  __swift_project_boxed_opaque_existential_1(a5 + 2, v13);
  v15 = *(v14 + 16);

  v16 = v15(a6, v13, v14);
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = sub_1D6F05050;
  v17[5] = v12;
  v20[4] = sub_1D701591C;
  v20[5] = v17;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 1107296256;
  v20[2] = sub_1D7014C08;
  v20[3] = &block_descriptor_12_2;
  v18 = _Block_copy(v20);

  [v16 setFetchCompletionHandler_];
  _Block_release(v18);
  sub_1D725AC4C();
  sub_1D725AC0C();
  if ([objc_opt_self() isMainThread])
  {
    sub_1D725AC2C();
  }

  else
  {
    [v16 start];
  }
}

void sub_1D701544C(uint64_t a1, id a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void))
{
  if (a2)
  {
    v6 = a2;
    v7 = a2;
    v8 = v6;
  }

  else
  {
    if (a1)
    {
      a5();
      return;
    }

    sub_1D7015928();
    v8 = swift_allocError();
    v6 = v8;
  }

  a3(v8);
}

uint64_t IssueService.cachedIssues(for:)(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v5 = (*(v4 + 16))(a1, v3, v4);
  v6 = [objc_opt_self() cachedOnlyCachePolicy];
  [v5 setCachePolicy_];

  v7 = swift_allocObject();
  *(v7 + 16) = MEMORY[0x1E69E7CC0];
  v8 = (v7 + 16);
  v12[4] = sub_1D701589C;
  v12[5] = v7;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1D7014C08;
  v12[3] = &block_descriptor_125;
  v9 = _Block_copy(v12);

  [v5 setFetchCompletionHandler_];
  _Block_release(v9);
  [v5 start];
  [v5 waitUntilFinishedWithTimeout_];

  swift_beginAccess();
  v10 = *v8;

  return v10;
}

uint64_t sub_1D70156AC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    swift_beginAccess();
    *(a3 + 16) = v3;
  }

  return result;
}

uint64_t IssueService.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t IssueService.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D701577C()
{
  sub_1D7015838(0, &unk_1EDF17950, sub_1D5B90088, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BBAC();
}

void sub_1D7015838(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D7015928()
{
  result = qword_1EC899610;
  if (!qword_1EC899610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899610);
  }

  return result;
}

unint64_t sub_1D70159D4()
{
  result = qword_1EC899618;
  if (!qword_1EC899618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899618);
  }

  return result;
}

uint64_t sub_1D7015A30(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1D7264A0C();
    sub_1D72621EC();
    v2 = sub_1D7264A5C();
    v3 = -1 << *(a1 + 32);
    v4 = v2 & ~v3;
    if ((*(a1 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
    {
      v5 = ~v3;
      while (1)
      {
        v6 = *(*(a1 + 48) + v4);
        if (v6 >= 4)
        {
          break;
        }

        v7 = sub_1D72646CC();

        if (v7)
        {
          goto LABEL_8;
        }

        v4 = (v4 + 1) & v5;
        if (((*(a1 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      goto LABEL_8;
    }
  }

LABEL_7:
  v8 = sub_1D62DC944(&unk_1F50F30F0);
  v9 = sub_1D5E22398(a1, v8);

  if (v9)
  {
LABEL_8:

    return sub_1D5CD85B0(&unk_1F50F3118);
  }
}

char *sub_1D7015C14(uint64_t a1, _BYTE *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7)
{
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = a7 * -0.5;
  if (*a2 == 1)
  {
    v14 = 0.0;
  }

  if (*a2)
  {
    v15 = v14;
  }

  else
  {
    v15 = a7 * 0.5;
  }

  if (v13)
  {
    v16 = v12;
  }

  else
  {
    v16 = 0.0;
  }

  v17 = *v7 == 4 || v13 == 0;
  v107 = v12;
  v108 = v13;
  v109 = *v7;
  if (v17)
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  else
  {
  }

  v19 = *(v18 + 16);
  v110 = v18;
  if (v19)
  {
    v20 = (v18 + 32);
    v21 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v24 = *v20++;
      v23 = v24;
      if (v24 > 1)
      {
        break;
      }

      if (v23)
      {
        v114.origin.x = a3;
        v114.origin.y = a4;
        v114.size.width = a5;
        v114.size.height = a6;
        v32 = v15 + v16 + CGRectGetMinX(v114);
        v115.origin.x = a3;
        v115.origin.y = a4;
        v115.size.width = a5;
        v115.size.height = a6;
        v33 = v15 + v16 + CGRectGetMinY(v115);
        v31 = [objc_opt_self() bezierPathWithArcCenter:0 radius:v32 startAngle:v33 endAngle:v16 clockwise:{4.71238898, 3.14159265}];
LABEL_27:
        v38 = v31;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_1D698FB50(0, *(v21 + 2) + 1, 1, v21);
        }

        v40 = *(v21 + 2);
        v39 = *(v21 + 3);
        if (v40 >= v39 >> 1)
        {
          v21 = sub_1D698FB50((v39 > 1), v40 + 1, 1, v21);
        }

        *(v21 + 2) = v40 + 1;
        v22 = &v21[40 * v40];
        *(v22 + 4) = v38;
        *(v22 + 5) = 0;
        *(v22 + 6) = 0;
        *(v22 + 7) = 0;
        v22[64] = 1;
      }

      if (!--v19)
      {
        goto LABEL_32;
      }
    }

    v25 = a3;
    v26 = a4;
    v27 = a5;
    v28 = a6;
    if (v23 == 2)
    {
      v34 = CGRectGetMaxX(*&v25) - v16 - v15;
      v116.origin.x = a3;
      v116.origin.y = a4;
      v116.size.width = a5;
      v116.size.height = a6;
      v35 = v15 + v16 + CGRectGetMinY(v116);
      v31 = [objc_opt_self() bezierPathWithArcCenter:0 radius:v34 startAngle:v35 endAngle:v16 clockwise:{0.0, 4.71238898}];
    }

    else if (v23 == 3)
    {
      v29 = v15 + v16 + CGRectGetMinX(*&v25);
      v113.origin.x = a3;
      v113.origin.y = a4;
      v113.size.width = a5;
      v113.size.height = a6;
      v30 = CGRectGetMaxY(v113) - v16 - v15;
      v31 = [objc_opt_self() bezierPathWithArcCenter:0 radius:v29 startAngle:v30 endAngle:v16 clockwise:{3.14159265, 1.57079633}];
    }

    else
    {
      v36 = CGRectGetMaxX(*&v25) - v16 - v15;
      v117.origin.x = a3;
      v117.origin.y = a4;
      v117.size.width = a5;
      v117.size.height = a6;
      v37 = CGRectGetMaxY(v117) - v16 - v15;
      v31 = [objc_opt_self() bezierPathWithArcCenter:0 radius:v36 startAngle:v37 endAngle:v16 clockwise:{1.57079633, 0.0}];
    }

    goto LABEL_27;
  }

  v21 = MEMORY[0x1E69E7CC0];
LABEL_32:
  v41 = v16 + v15;
  if (v109 <= 1)
  {
    if (!v109)
    {
      v47 = *(v110 + 16);
      v48 = (v110 + 32);
      v49 = (v110 + 32);
      while (v47)
      {
        if (*v49 <= 2u && *v49 && *v49 != 2)
        {

LABEL_115:
          v68 = v16 + v15;
LABEL_116:
          v126.origin.x = a3;
          v126.origin.y = a4;
          v126.size.width = a5;
          v126.size.height = a6;
          Width = CGRectGetWidth(v126);
          v95 = *(v110 + 16);
          while (v95)
          {
            v97 = *v48;
            if (v97 > 1 && v97 != 3 && v97 != 4)
            {

LABEL_139:

              if (swift_isUniquelyReferenced_nonNull_native())
              {
LABEL_140:
                v103 = *(v21 + 2);
                v102 = *(v21 + 3);
                if (v103 >= v102 >> 1)
                {
                  v21 = sub_1D698FB50((v102 > 1), v103 + 1, 1, v21);
                }

                *(v21 + 2) = v103 + 1;
                v84 = &v21[40 * v103];
                *(v84 + 4) = v68;
                *(v84 + 5) = v15;
                *(v84 + 6) = Width - v41;
                *(v84 + 7) = v15;
                goto LABEL_148;
              }

LABEL_125:
              v21 = sub_1D698FB50(0, *(v21 + 2) + 1, 1, v21);
              goto LABEL_140;
            }

            v96 = sub_1D72646CC();

            ++v48;
            --v95;
            if (v96)
            {
              goto LABEL_139;
            }
          }

          v41 = 0.0;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_140;
          }

          goto LABEL_125;
        }

        v50 = sub_1D72646CC();

        ++v49;
        --v47;
        if (v50)
        {
          goto LABEL_115;
        }
      }

      v68 = 0.0;
      goto LABEL_116;
    }

    v64 = *(v110 + 16);
    v65 = (v110 + 32);
    v66 = (v110 + 32);
    while (v64)
    {
      if (*v66 <= 2u && *v66 && *v66 != 2)
      {

LABEL_128:
        v69 = v16 + v15;
LABEL_129:
        v127.origin.x = a3;
        v127.origin.y = a4;
        v127.size.width = a5;
        v127.size.height = a6;
        Height = CGRectGetHeight(v127);
        v99 = *(v110 + 16);
        while (v99)
        {
          v101 = *v65;
          if (v101 > 2 && v101 != 4)
          {

LABEL_144:

            if (swift_isUniquelyReferenced_nonNull_native())
            {
LABEL_145:
              v105 = *(v21 + 2);
              v104 = *(v21 + 3);
              if (v105 >= v104 >> 1)
              {
                v21 = sub_1D698FB50((v104 > 1), v105 + 1, 1, v21);
              }

              *(v21 + 2) = v105 + 1;
              v84 = &v21[40 * v105];
              *(v84 + 4) = v15;
              *(v84 + 5) = v69;
              *(v84 + 6) = v15;
              *(v84 + 7) = Height - v41;
              goto LABEL_148;
            }

LABEL_136:
            v21 = sub_1D698FB50(0, *(v21 + 2) + 1, 1, v21);
            goto LABEL_145;
          }

          v100 = sub_1D72646CC();

          ++v65;
          --v99;
          if (v100)
          {
            goto LABEL_144;
          }
        }

        v41 = 0.0;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_145;
        }

        goto LABEL_136;
      }

      v67 = sub_1D72646CC();

      ++v66;
      --v64;
      if (v67)
      {
        goto LABEL_128;
      }
    }

    v69 = 0.0;
    goto LABEL_129;
  }

  if (v109 == 2)
  {
    v118.origin.x = a3;
    v118.origin.y = a4;
    v118.size.width = a5;
    v118.size.height = a6;
    v51 = CGRectGetWidth(v118);
    v52 = *(v110 + 16);
    v53 = (v110 + 32);
    v54 = (v110 + 32);
    while (v52)
    {
      v56 = *v54;
      if (v56 > 1 && v56 != 3 && v56 != 4)
      {

LABEL_86:
        v111 = v16 + v15;
LABEL_87:
        v121.origin.x = a3;
        v121.origin.y = a4;
        v121.size.width = a5;
        v121.size.height = a6;
        v75 = CGRectGetWidth(v121);
        v122.origin.x = a3;
        v122.origin.y = a4;
        v122.size.width = a5;
        v122.size.height = a6;
        v76 = CGRectGetHeight(v122);
        v77 = *(v110 + 16);
        while (v77)
        {
          v79 = *v53;
          if (v79 >= 4)
          {

LABEL_95:

            if (swift_isUniquelyReferenced_nonNull_native())
            {
LABEL_96:
              v81 = *(v21 + 2);
              v80 = *(v21 + 3);
              if (v81 >= v80 >> 1)
              {
                v21 = sub_1D698FB50((v80 > 1), v81 + 1, 1, v21);
              }

              v82 = v75 - v15;
              v83 = v76 - v41;
              *(v21 + 2) = v81 + 1;
              v84 = &v21[40 * v81];
              *(v84 + 4) = v51 - v15;
              v85 = v111;
              goto LABEL_112;
            }

LABEL_93:
            v21 = sub_1D698FB50(0, *(v21 + 2) + 1, 1, v21);
            goto LABEL_96;
          }

          v78 = sub_1D72646CC();

          ++v53;
          --v77;
          if (v78)
          {
            goto LABEL_95;
          }
        }

        v41 = 0.0;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_96;
        }

        goto LABEL_93;
      }

      v55 = sub_1D72646CC();

      ++v54;
      --v52;
      if (v55)
      {
        goto LABEL_86;
      }
    }

    v111 = 0.0;
    goto LABEL_87;
  }

  if (v109 == 3)
  {
    v42 = *(v110 + 16);
    v43 = (v110 + 32);
    v44 = (v110 + 32);
    while (1)
    {
      if (!v42)
      {
        v112 = 0.0;
        goto LABEL_101;
      }

      v46 = *v44;
      if (v46 > 2 && v46 != 4)
      {
        break;
      }

      v45 = sub_1D72646CC();

      ++v44;
      --v42;
      if (v45)
      {
        goto LABEL_100;
      }
    }

LABEL_100:
    v112 = v16 + v15;
LABEL_101:
    v123.origin.x = a3;
    v123.origin.y = a4;
    v123.size.width = a5;
    v123.size.height = a6;
    v86 = CGRectGetHeight(v123);
    v124.origin.x = a3;
    v124.origin.y = a4;
    v124.size.width = a5;
    v124.size.height = a6;
    v87 = CGRectGetWidth(v124);
    v88 = *(v110 + 16);
    while (1)
    {
      if (!v88)
      {
        v41 = 0.0;
        goto LABEL_107;
      }

      v90 = *v43;
      if (v90 >= 4)
      {
        break;
      }

      v89 = sub_1D72646CC();

      ++v43;
      --v88;
      if (v89)
      {
        goto LABEL_107;
      }
    }

LABEL_107:

    v125.origin.x = a3;
    v125.origin.y = a4;
    v125.size.width = a5;
    v125.size.height = a6;
    v91 = CGRectGetHeight(v125);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1D698FB50(0, *(v21 + 2) + 1, 1, v21);
    }

    v93 = *(v21 + 2);
    v92 = *(v21 + 3);
    if (v93 >= v92 >> 1)
    {
      v21 = sub_1D698FB50((v92 > 1), v93 + 1, 1, v21);
    }

    v85 = v86 - v15;
    v82 = v87 - v41;
    v83 = v91 - v15;
    *(v21 + 2) = v93 + 1;
    v84 = &v21[40 * v93];
    *(v84 + 4) = v112;
LABEL_112:
    *(v84 + 5) = v85;
    *(v84 + 6) = v82;
    *(v84 + 7) = v83;
LABEL_148:
    v84[64] = 0;
  }

  else
  {

    v119.origin.x = a3;
    v119.origin.y = a4;
    v119.size.width = a5;
    v119.size.height = a6;
    v57 = CGRectGetWidth(v119) - (v15 + v15);
    v120.origin.x = a3;
    v120.origin.y = a4;
    v120.size.width = a5;
    v120.size.height = a6;
    v58 = CGRectGetHeight(v120) - (v15 + v15);
    if (v108)
    {
      v59 = *(v108 + 16);
      if (v59)
      {
        v60 = 0;
        v61 = (v108 + 32);
        do
        {
          v62 = *v61++;
          v63 = qword_1D7382B88[v62];
          if ((v63 & ~v60) == 0)
          {
            v63 = 0;
          }

          v60 |= v63;
          --v59;
        }

        while (v59);
      }

      else
      {
        v60 = 0;
      }

      v70 = [objc_opt_self() bezierPathWithRoundedRect:v60 byRoundingCorners:v15 cornerRadii:{v15, v57, v58, v107, v107}];
    }

    else
    {
      v70 = [objc_opt_self() bezierPathWithRect_];
    }

    v71 = v70;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1D698FB50(0, *(v21 + 2) + 1, 1, v21);
    }

    v73 = *(v21 + 2);
    v72 = *(v21 + 3);
    if (v73 >= v72 >> 1)
    {
      v21 = sub_1D698FB50((v72 > 1), v73 + 1, 1, v21);
    }

    *(v21 + 2) = v73 + 1;
    v74 = &v21[40 * v73];
    *(v74 + 4) = v71;
    *(v74 + 5) = 0;
    *(v74 + 6) = 0;
    *(v74 + 7) = 0;
    v74[64] = 2;
  }

  return v21;
}

NewsFeed::FormatBorderEdge_optional __swiftcall FormatBorderEdge.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D7016B38()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D7016C08()
{
  sub_1D72621EC();
}

uint64_t sub_1D7016CC4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D7016D9C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7368564;
  v5 = 0xE800000000000000;
  v6 = 0x676E696C69617274;
  v7 = 0xE600000000000000;
  v8 = 0x6D6F74746F62;
  if (v2 != 3)
  {
    v8 = 7105633;
    v7 = 0xE300000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x676E696461656CLL;
    v3 = 0xE700000000000000;
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

uint64_t FormatBorderEdge.description.getter()
{
  v1 = *v0;
  v2 = 7368564;
  v3 = 0x676E696C69617274;
  v4 = 0x6D6F74746F62;
  if (v1 != 3)
  {
    v4 = 7105633;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x676E696461656CLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D7016F28()
{
  v1 = *v0;
  v2 = 7368564;
  v3 = 0x676E696C69617274;
  v4 = 0x6D6F74746F62;
  if (v1 != 3)
  {
    v4 = 7105633;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x676E696461656CLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

BOOL sub_1D7016FB8(char *a1, char *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return (_s8NewsFeed16FormatBorderEdgeO1loiySbAC_ACtFZ_0(&v4, &v5) & 1) == 0;
}

BOOL sub_1D7016FF8(char *a1, char *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return (_s8NewsFeed16FormatBorderEdgeO1loiySbAC_ACtFZ_0(&v5, &v4) & 1) == 0;
}

uint64_t sub_1D7017038(char *a1, char *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return _s8NewsFeed16FormatBorderEdgeO1loiySbAC_ACtFZ_0(&v4, &v5) & 1;
}

BOOL _s8NewsFeed16FormatBorderEdgeO4PathO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  if (*(a1 + 32))
  {
    if (v6 == 1)
    {
      if (v11 == 1)
      {
        sub_1D5F1574C();
        sub_1D6959FD8(*&v8, v7, v9, v10, 1u);
        sub_1D6959FD8(*&v3, v2, v5, v4, 1u);
        v12 = sub_1D726370C();
        sub_1D6959FF0(*&v3, v2, v5, v4, 1u);
        v13 = v8;
        v14 = v7;
        v15 = v9;
        v16 = v10;
        v17 = 1;
LABEL_16:
        sub_1D6959FF0(*&v13, v14, v15, v16, v17);
        return v12 & 1;
      }
    }

    else if (v11 == 2)
    {
      sub_1D5F1574C();
      sub_1D6959FD8(*&v8, v7, v9, v10, 2u);
      sub_1D6959FD8(*&v3, v2, v5, v4, 2u);
      v12 = sub_1D726370C();
      sub_1D6959FF0(*&v3, v2, v5, v4, 2u);
      v13 = v8;
      v14 = v7;
      v15 = v9;
      v16 = v10;
      v17 = 2;
      goto LABEL_16;
    }

    v20 = *&v3;
    goto LABEL_18;
  }

  if (*(a2 + 32))
  {
LABEL_18:
    sub_1D6959FD8(*&v8, v7, v9, v10, v11);
    sub_1D6959FF0(*&v3, v2, v5, v4, v6);
    sub_1D6959FF0(*&v8, v7, v9, v10, v11);
    return 0;
  }

  sub_1D6959FF0(*a1, v2, v5, v4, 0);
  sub_1D6959FF0(*&v8, v7, v9, v10, 0);
  result = 0;
  if (v3 == v8 && *&v2 == *&v7)
  {
    return *&v4 == *&v10 && *&v5 == *&v9;
  }

  return result;
}

uint64_t _s8NewsFeed16FormatBorderEdgeO1loiySbAC_ACtFZ_0(_BYTE *a1, _BYTE *a2)
{
  v2 = 7368564;
  v3 = *a1;
  v4 = *a2;
  if (v3 <= 1)
  {
    if (*a1)
    {
      v6 = 0x676E696461656CLL;
    }

    else
    {
      v6 = 7368564;
    }

    if (v3)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  else if (v3 == 2)
  {
    v5 = 0xE800000000000000;
    v6 = 0x676E696C69617274;
  }

  else if (v3 == 3)
  {
    v5 = 0xE600000000000000;
    v6 = 0x6D6F74746F62;
  }

  else
  {
    v5 = 0xE300000000000000;
    v6 = 7105633;
  }

  v7 = 0xE300000000000000;
  v8 = 0xE800000000000000;
  v9 = 0x676E696C69617274;
  v10 = 0xE600000000000000;
  v11 = 0x6D6F74746F62;
  if (v4 != 3)
  {
    v11 = 7105633;
    v10 = 0xE300000000000000;
  }

  if (v4 != 2)
  {
    v9 = v11;
    v8 = v10;
  }

  if (*a2)
  {
    v2 = 0x676E696461656CLL;
    v7 = 0xE700000000000000;
  }

  if (*a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v9;
  }

  if (*a2 <= 1u)
  {
    v13 = v7;
  }

  else
  {
    v13 = v8;
  }

  if (v6 == v12 && v5 == v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_1D72646CC();
  }

  return v14 & 1;
}

unint64_t sub_1D7017420(uint64_t a1)
{
  *(a1 + 8) = sub_1D7017450();
  result = sub_1D70174A4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D7017450()
{
  result = qword_1EC899620;
  if (!qword_1EC899620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899620);
  }

  return result;
}

unint64_t sub_1D70174A4()
{
  result = qword_1EDF11540;
  if (!qword_1EDF11540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11540);
  }

  return result;
}

unint64_t sub_1D70174F8(uint64_t a1)
{
  result = sub_1D7017520();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D7017520()
{
  result = qword_1EC899628;
  if (!qword_1EC899628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899628);
  }

  return result;
}

unint64_t sub_1D7017574(void *a1)
{
  a1[1] = sub_1D6703924();
  a1[2] = sub_1D5E1C384();
  result = sub_1D5CD89A4();
  a1[3] = result;
  return result;
}

uint64_t FeedItemRendererType.render(in:at:layoutAttributes:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = *a3;
  v8 = 1;
  v7 = v5;
  return (*(a5 + 72))(a1, a2, &v8, &v7, nullsub_1, 0, a4, a5);
}

void FeedItemRenderer.presentingViewController.setter(void *a1)
{
  sub_1D701B160();
}

void (*FeedItemRenderer.presentingViewController.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1D7017754;
}

void sub_1D7017754(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    v5 = *(v3 + 32);
    swift_endAccess();

    v6 = *(v5 + 88);
    ObjectType = swift_getObjectType();
    Strong = swift_unknownObjectWeakLoadStrong();
    (*(v6 + 16))(Strong, ObjectType, v6);
    v9 = *(v5 + 208);
    v10 = swift_getObjectType();
    v11 = swift_unknownObjectWeakLoadStrong();
    (*(v9 + 16))(v11, v10, v9);
  }

  free(v3);
}

uint64_t FeedItemRenderer.disableFormatLayoutViewCellDequeueing.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_1D7017908(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 440) = v1;
  }

  return result;
}

uint64_t FeedItemRenderer.render(in:at:options:layoutAttributes:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t *a4@<X3>, unint64_t *a5@<X8>)
{
  v33 = a5;
  v32 = sub_1D7258DBC();
  v9 = *(v32 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v32, v11);
  v12 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a3;
  v14 = *a4;
  v35 = v14;
  sub_1D5C093B0(a1, a2, &v35, &v36);
  v15 = v36;
  v16 = sub_1D5BE5B1C();
  v35 = v14;
  v31 = v13;
  v34 = v13;
  v17 = v16;
  sub_1D5BE437C(a1, a2, v17, &v35, &v34, nullsub_1, 0);

  v30 = v15;
  v36 = v15;
  v18 = sub_1D5BE5B1C();
  v29[1] = v19;
  v29[0] = swift_getObjectType();
  v35 = v18;
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = v32;
  (*(v9 + 16))(v12, a2, v32);
  v23 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v24 = v23 + v10;
  v25 = swift_allocObject();
  *(v25 + 16) = v20;
  *(v25 + 24) = v21;
  (*(v9 + 32))(v25 + v23, v12, v22);
  *(v25 + v24) = v31;
  v26 = v25 + (v24 & 0xFFFFFFFFFFFFFFF8);
  *(v26 + 8) = nullsub_1;
  *(v26 + 16) = 0;
  v27 = v18;

  sub_1D725C9BC();

  *v33 = v30;
  return result;
}

void sub_1D7017C24(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v44 = a7;
  v45 = a8;
  v12 = sub_1D7258DBC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v16 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v43 = a1;
    swift_beginAccess();
    v19 = swift_unknownObjectWeakLoadStrong();
    if (!v19)
    {
LABEL_9:

      return;
    }

    v20 = v19;
    sub_1D725C96C();
    if (v47)
    {
      if (swift_dynamicCast())
      {
        if (!*(v18 + 448))
        {

          goto LABEL_9;
        }

        v42 = v50;

        if ((sub_1D725F48C() & 1) == 0)
        {

          goto LABEL_9;
        }

        v40 = objc_opt_self();
        (*(v13 + 16))(&v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v12);
        v21 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v22 = (v14 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
        v36 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
        v37 = (v22 + 31) & 0xFFFFFFFFFFFFFFF8;
        v38 = (v37 + 23) & 0xFFFFFFFFFFFFFFF8;
        v35 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
        v23 = swift_allocObject();
        *(v23 + 16) = v18;
        *(v23 + 24) = v20;
        (*(v13 + 32))(v23 + v21, v16, v12);
        v25 = v42;
        v24 = v43;
        *(v23 + v22) = v43;
        v26 = v23 + v36;
        *v26 = v25;
        *(v26 + 8) = a6 & 1;
        v27 = (v23 + v37);
        v28 = v45;
        *v27 = v44;
        v27[1] = v28;
        *(v23 + v38) = v41;
        *(v23 + v35) = a2;
        v39 = v23;
        v29 = swift_allocObject();
        *(v29 + 16) = sub_1D701B39C;
        *(v29 + 24) = v23;
        v48 = sub_1D5DF8E8C;
        v49 = v29;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1D69C9704;
        v47 = &block_descriptor_126;
        v30 = _Block_copy(aBlock);

        v31 = a2;

        v32 = v20;
        v33 = v24;

        [v40 performWithoutAnimation_];

        _Block_release(v30);
        LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

        if (v23)
        {
          __break(1u);
          goto LABEL_9;
        }
      }

      else
      {
      }
    }

    else
    {

      sub_1D5B88E30(aBlock, sub_1D5BE1404);
    }
  }
}

id sub_1D701807C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v10 = a5;
  v9 = a6;
  return sub_1D5BE437C(a2, a3, a4, &v10, &v9, a7, a8);
}

void sub_1D7018198(uint64_t a1, void *a2)
{
  v3 = sub_1D7258DBC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_1D5BB0F34(0, &qword_1EC88B958, MEMORY[0x1E6969C28], MEMORY[0x1E69E6F90]);
    v10 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1D7273AE0;
    v12 = [a2 indexPath];
    sub_1D7258D6C();

    (*(v4 + 32))(v11 + v10, v7, v3);
    v13 = sub_1D726265C();

    [v9 reloadItemsAtIndexPaths_];
  }
}

uint64_t sub_1D7018354(void *a1, uint64_t a2, double *a3)
{
  v78 = a1;
  v77 = type metadata accessor for FeedItemDimmingType();
  MEMORY[0x1EEE9AC00](v77, v5);
  v7 = (&v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1D725DA6C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = (&v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *a3;
  v14 = a3[1];
  v16 = a3[3];
  v76 = a3[2];
  v15 = v76;
  memcpy(v84, a3 + 4, sizeof(v84));
  v17 = [objc_opt_self() clearColor];
  sub_1D726349C();

  sub_1D5BFDE94();
  v19 = v18;
  v20 = swift_allocBox();
  v22 = v21;
  v23 = *(v19 + 48);
  sub_1D725DA5C();
  v24 = swift_allocObject();
  *(v24 + 16) = 0x3FE0000000000000;
  *(v22 + v23) = v24;
  v25 = *(v9 + 104);
  v25(v22 + v23, *MEMORY[0x1E69D7AB8], v8);
  *v12 = v20;
  v25(v12, *MEMORY[0x1E69D7AD0], v8);
  v26 = v78;
  sub_1D725DBCC();
  v27 = v74;
  v28 = v74[22];
  ObjectType = swift_getObjectType();
  *&v81 = v13;
  *(&v81 + 1) = v14;
  *&v82 = v15;
  *(&v82 + 1) = v16;
  memcpy(v83, v84, sizeof(v83));
  v30 = v26;
  v31 = sub_1D725DBEC();
  (*(v28 + 8))(a2, &v81, v31, ObjectType, v28);

  [v26 bounds];
  v36 = UIEdgeInsetsInsetRect(v32, v33, v34, v35, 0.0, -5.0);
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = *(a2 + 320);
  v44 = *(a2 + 328);
  __swift_project_boxed_opaque_existential_1((a2 + 296), v43);
  v45 = (*(v44 + 64))(v43, v44);
  v46 = [objc_opt_self() effectWithRoundedRect:*MEMORY[0x1E69796E8] cornerRadius:v36 curve:{v38, v40, v42, v45}];
  v75 = v46;
  v47 = sub_1D725DBEC();
  [v46 setReferenceView_];

  [v46 setPosition_];
  [v30 setFocusEffect_];
  v48 = v27;
  v49 = v27[51];
  v50 = v27[52];
  __swift_project_boxed_opaque_existential_1(v27 + 48, v49);
  v51 = *(a2 + 104);
  v85[5] = *(a2 + 88);
  v85[6] = v51;
  v86[0] = *(a2 + 120);
  *(v86 + 9) = *(a2 + 129);
  v52 = *(a2 + 24);
  v53 = *(a2 + 56);
  v85[2] = *(a2 + 40);
  v85[3] = v53;
  v85[4] = *(a2 + 72);
  v85[0] = *(a2 + 8);
  v85[1] = v52;
  v54 = *(a2 + 88);
  v55 = *(a2 + 120);
  v7[6] = *(a2 + 104);
  v7[7] = v55;
  *(v7 + 121) = *(a2 + 129);
  v56 = *(a2 + 24);
  v57 = *(a2 + 56);
  v7[2] = *(a2 + 40);
  v7[3] = v57;
  v7[4] = *(a2 + 72);
  v7[5] = v54;
  *v7 = *(a2 + 8);
  v7[1] = v56;
  type metadata accessor for FeedItem(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v58 = *(v50 + 8);
  sub_1D5ECF2C4(v85, &v81);
  LOBYTE(v47) = v58(v7, v49, v50);
  sub_1D5B88E30(v7, type metadata accessor for FeedItemDimmingType);
  v59 = v48[31];
  v60 = v48[32];
  __swift_project_boxed_opaque_existential_1(v48 + 28, v59);
  v61 = *(a2 + 88);
  v62 = *(a2 + 120);
  v83[4] = *(a2 + 104);
  v83[5] = v62;
  *(&v83[5] + 9) = *(a2 + 129);
  v63 = *(a2 + 24);
  v64 = *(a2 + 56);
  v83[0] = *(a2 + 40);
  v83[1] = v64;
  v83[2] = *(a2 + 72);
  v83[3] = v61;
  v81 = *(a2 + 8);
  v82 = v63;
  v80[3] = &type metadata for FeedIssue;
  v80[4] = sub_1D5EE5AA4();
  v65 = swift_allocObject();
  v80[0] = v65;
  v66 = *(a2 + 88);
  v67 = *(a2 + 120);
  v65[7] = *(a2 + 104);
  v65[8] = v67;
  *(v65 + 137) = *(a2 + 129);
  v68 = *(a2 + 24);
  v69 = *(a2 + 56);
  v65[3] = *(a2 + 40);
  v65[4] = v69;
  v65[5] = *(a2 + 72);
  v65[6] = v66;
  v65[1] = *(a2 + 8);
  v65[2] = v68;
  v70 = *(v60 + 16);
  sub_1D5ECF2C4(&v81, &v79);
  v71 = type metadata accessor for CoverIssueView();
  v72 = sub_1D5C16C60(&qword_1EDF329B0, type metadata accessor for CoverIssueView);
  v70(v80, v78, v47 & 1, v71, v72, v59, v60, v13, v14, v76, v16);

  return __swift_destroy_boxed_opaque_existential_1(v80);
}

uint64_t sub_1D7018944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v48 = a2;
  v49 = type metadata accessor for FeedItemDimmingType();
  MEMORY[0x1EEE9AC00](v49, v7);
  v47 = (&v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1D725DA6C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = (&v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *a3;
  v15 = *(a3 + 8);
  v16 = *(a3 + 16);
  v17 = *(a3 + 24);
  v18 = *(a3 + 144);
  v68 = *(a3 + 128);
  v69 = v18;
  v19 = *(a3 + 176);
  v70 = *(a3 + 160);
  v71 = v19;
  v20 = *(a3 + 80);
  v64 = *(a3 + 64);
  v65 = v20;
  v21 = *(a3 + 112);
  v66 = *(a3 + 96);
  v67 = v21;
  v22 = *(a3 + 48);
  v62 = *(a3 + 32);
  v63 = v22;
  v23 = [objc_opt_self() clearColor];
  sub_1D726349C();

  sub_1D5BFDE94();
  v25 = v24;
  v26 = swift_allocBox();
  v28 = v27;
  v29 = *(v25 + 48);
  sub_1D725DA5C();
  v30 = swift_allocObject();
  *(v30 + 16) = 0x3FE0000000000000;
  *(v28 + v29) = v30;
  v31 = *(v10 + 104);
  v31(v28 + v29, *MEMORY[0x1E69D7AB8], v9);
  *v13 = v26;
  v31(v13, *MEMORY[0x1E69D7AD0], v9);
  v46 = a1;
  sub_1D725DBCC();
  v32 = v4[24];
  ObjectType = swift_getObjectType();
  *v50 = v14;
  *&v50[1] = v15;
  *&v50[2] = v16;
  v51 = *&v17;
  v58 = v68;
  v59 = v69;
  v60 = v70;
  v61 = v71;
  v54 = v64;
  v55 = v65;
  v56 = v66;
  v57 = v67;
  v52 = v62;
  v53 = v63;
  v34 = sub_1D725DBEC();
  v35 = v48;
  (*(v32 + 8))(v48, v50, v34, ObjectType, v32);

  v36 = v4[51];
  v37 = v4[52];
  __swift_project_boxed_opaque_existential_1(v4 + 48, v36);
  v38 = v47;
  *v47 = *(v35 + 24);
  swift_storeEnumTagMultiPayload();
  v39 = *(v37 + 8);
  swift_unknownObjectRetain();
  LOBYTE(v29) = v39(v38, v36, v37);
  sub_1D5B88E30(v38, type metadata accessor for FeedItemDimmingType);
  v40 = v4[31];
  v41 = v4[32];
  __swift_project_boxed_opaque_existential_1(v4 + 28, v40);
  v51 = &type metadata for FeedTag;
  *&v52 = sub_1D5EE5BA8();
  v50[0] = swift_allocObject();
  sub_1D5EE5AF8(v35 + 8, v50[0] + 16);
  v42 = *(v41 + 16);
  v43 = type metadata accessor for CoverChannelView();
  v44 = sub_1D5C16C60(&qword_1EDF30BF0, type metadata accessor for CoverChannelView);
  v42(v50, v46, v29 & 1, v43, v44, v40, v41, v14, v15, v16, v17);
  return __swift_destroy_boxed_opaque_existential_1(v50);
}

uint64_t sub_1D7018D44(void *a1, uint64_t a2, __int128 *a3)
{
  v4 = v3;
  v8 = type metadata accessor for FeedItemDimmingType();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a3[7];
  v45 = a3[6];
  v46 = v12;
  v47 = *(a3 + 16);
  v13 = a3[3];
  v41 = a3[2];
  v42 = v13;
  v14 = a3[5];
  v43 = a3[4];
  v44 = v14;
  v15 = *a3;
  v40 = a3[1];
  v39 = v15;
  v16 = *(a3 + 17);
  v17 = *(a3 + 18);
  v18 = *(a3 + 19);
  v19 = *(a3 + 20);
  v20 = [objc_opt_self() clearColor];
  sub_1D726349C();

  v21 = v4[36];
  v22 = v4[37];
  __swift_project_boxed_opaque_existential_1(v4 + 33, v21);
  v48 = v16;
  v49 = v17;
  v50 = v18;
  v51 = v19;
  v23 = sub_1D725DBEC();
  (*(v22 + 16))(a2 + 8, &v39, v23, v21, v22);

  v24 = [objc_allocWithZone(MEMORY[0x1E69DCA28]) init];
  v38 = a1;
  v25 = sub_1D725DBEC();
  [v24 setReferenceView_];

  [a1 setFocusEffect_];
  v26 = v4[51];
  v27 = v4[52];
  __swift_project_boxed_opaque_existential_1(v4 + 48, v26);
  v28 = a2;
  v29 = *(a2 + 16);
  *v11 = *(a2 + 8);
  v11[1] = v29;
  swift_storeEnumTagMultiPayload();
  v30 = *(v27 + 8);

  LOBYTE(v25) = v30(v11, v26, v27);
  sub_1D5B88E30(v11, type metadata accessor for FeedItemDimmingType);
  v31 = v4[31];
  v32 = v4[32];
  __swift_project_boxed_opaque_existential_1(v4 + 28, v31);
  *(&v40 + 1) = &type metadata for FeedCategory;
  *&v41 = sub_1D5F76D98();
  *&v39 = swift_allocObject();
  sub_1D5F76D3C(v28 + 8, v39 + 16);
  v33 = *(v32 + 16);
  v34 = type metadata accessor for CategoryView();
  v35 = sub_1D5C16C60(&qword_1EDF33BC8, type metadata accessor for CategoryView);
  v33(&v39, v38, v25 & 1, v34, v35, v31, v32, v16, v17, v18, v19);

  return __swift_destroy_boxed_opaque_existential_1(&v39);
}

void sub_1D7019074(void *a1, uint64_t a2, double *a3)
{
  v4 = v3;
  v8 = a3[4];
  v9 = a3[5];
  v10 = a3[6];
  v11 = a3[7];
  v12 = sub_1D725DBEC();
  __swift_project_boxed_opaque_existential_1(v4 + 43, v4[46]);
  type metadata accessor for FeedEngagementBanner();
  v30.origin.x = v8;
  v30.origin.y = v9;
  v30.size.width = v10;
  v30.size.height = v11;
  CGRectGetWidth(v30);
  v13 = sub_1D725C0BC();
  sub_1D71A6304(v13);
  v14 = OBJC_IVAR____TtC8NewsFeed20EngagementBannerView_engagementView;
  swift_beginAccess();
  v15 = *&v12[v14];
  *&v12[v14] = v13;
  v16 = v13;

  sub_1D71A63A4();
  v17 = v4[41];
  v18 = v4[42];
  __swift_project_boxed_opaque_existential_1(v4 + 38, v17);
  v19 = *(a3 + 1);
  v24 = *a3;
  v25 = v19;
  v26 = v8;
  v27 = v9;
  v28 = v10;
  v29 = v11;
  v20 = sub_1D725DBEC();
  (*(v18 + 8))(a2, &v24, v20, v17, v18);

  v21 = objc_allocWithZone(MEMORY[0x1E69DCA28]);
  v22 = [v21 init];
  v23 = sub_1D725DBEC();
  [v22 setReferenceView_];

  [a1 setFocusEffect_];
}

uint64_t sub_1D7019240(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v209 = a7;
  v216 = a6;
  v219 = a4;
  v202 = a3;
  v223 = a2;
  v222 = a1;
  v212 = type metadata accessor for FeedItemDimmingType();
  MEMORY[0x1EEE9AC00](v212, v8);
  v213 = &v198 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1E69E6720];
  sub_1D5BB0F34(0, qword_1EDF34EF0, type metadata accessor for FeedItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v210 = &v198 - v13;
  v214 = type metadata accessor for FormatItemNodeData();
  MEMORY[0x1EEE9AC00](v214, v14);
  v208 = &v198 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = type metadata accessor for FormatItemNodeLayoutContext();
  MEMORY[0x1EEE9AC00](v221, v16);
  v217 = (&v198 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D701B470();
  v19 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18, v20);
  v211 = &v198 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1E69D76B8];
  sub_1D5BB0F34(0, &qword_1EDF3B730, MEMORY[0x1E69D76B8], v10);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v207 = &v198 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v201 = &v198 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v198 - v31;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v198 - v35;
  v37 = sub_1D725CECC();
  v38 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v39);
  v200 = &v198 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41, v42);
  v44 = &v198 - v43;
  v220 = a5;

  v222 = v222;
  v45 = v36;
  v46 = v211;
  sub_1D725CE9C();
  sub_1D725DC1C();
  v47 = v38[2];
  v218 = v44;
  v206 = v38 + 2;
  v204 = v47;
  v47(v32, v44, v37);
  v48 = v38[7];
  v205 = (v38 + 7);
  v203 = v48;
  v48(v32, 0, 1, v37);
  v49 = *(v19 + 56);
  sub_1D701B568(v45, v46, &qword_1EDF3B730, v22);
  sub_1D701B568(v32, v46 + v49, &qword_1EDF3B730, v22);
  v215 = v38;
  v50 = v38[6];
  if (v50(v46, 1, v37) != 1)
  {
    v199 = v45;
    v55 = v201;
    sub_1D701B568(v46, v201, &qword_1EDF3B730, MEMORY[0x1E69D76B8]);
    if (v50(v46 + v49, 1, v37) != 1)
    {
      v124 = v215;
      v125 = v46 + v49;
      v126 = v200;
      (v215[4])(v200, v125, v37);
      sub_1D5C16C60(&qword_1EDF3B738, MEMORY[0x1E69D76B8]);
      v127 = sub_1D7261FBC();
      v128 = v124[1];
      v128(v126, v37);
      v129 = MEMORY[0x1E69D76B8];
      sub_1D701B5E8(v32, &qword_1EDF3B730, MEMORY[0x1E69D76B8]);
      sub_1D701B5E8(v199, &qword_1EDF3B730, v129);
      v128(v55, v37);
      sub_1D701B5E8(v46, &qword_1EDF3B730, v129);
      v53 = v220;
      v54 = v219;
      if ((v127 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_23;
    }

    v56 = MEMORY[0x1E69D76B8];
    sub_1D701B5E8(v32, &qword_1EDF3B730, MEMORY[0x1E69D76B8]);
    sub_1D701B5E8(v199, &qword_1EDF3B730, v56);
    (v215[1])(v55, v37);
    v53 = v220;
    v54 = v219;
LABEL_6:
    sub_1D5B88E30(v46, sub_1D701B470);
    goto LABEL_7;
  }

  v51 = MEMORY[0x1E69D76B8];
  sub_1D701B5E8(v32, &qword_1EDF3B730, MEMORY[0x1E69D76B8]);
  sub_1D701B5E8(v45, &qword_1EDF3B730, v51);
  v52 = v50(v46 + v49, 1, v37);
  v53 = v220;
  v54 = v219;
  if (v52 != 1)
  {
    goto LABEL_6;
  }

  sub_1D701B5E8(v46, &qword_1EDF3B730, MEMORY[0x1E69D76B8]);
LABEL_23:
  [v223 frame];
  v131 = v130;
  v133 = v132;
  v134 = *(v53 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes);
  swift_beginAccess();
  if (v131 == v134[4] && v133 == v134[5])
  {
    v135 = v224[26];
    ObjectType = swift_getObjectType();
    v137 = sub_1D725DBEC();
    v138 = v37;
    v139 = [v222 traitCollection];
    v140 = (*(v135 + 112))(v137, v54, v134, v139, v214, v221, &protocol witness table for FormatItemNodeLayoutContext, ObjectType, v135);

    v37 = v138;
    if (v140)
    {
      v141 = v54;
      v142 = v223;
      v143 = sub_1D725DBEC();
      (*(v135 + 104))(v141, v134, v143, v214, v221, &protocol witness table for FormatItemNodeLayoutContext, ObjectType, v135);

      (v215[1])(v218, v37);
      v144 = v224;
      sub_1D701A8BC(v222, v142, v53);
      sub_1D701B030();
      v145 = v144[51];
      v146 = v144[52];
      __swift_project_boxed_opaque_existential_1(v144 + 48, v145);
      v147 = OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_feedItem;
      v148 = v213;
      sub_1D5BFDCF8(v53 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_feedItem, v213, type metadata accessor for FeedItem);
      swift_storeEnumTagMultiPayload();
      v149 = (*(v146 + 8))(v148, v145, v146);
      sub_1D5B88E30(v148, type metadata accessor for FeedItemDimmingType);
      v150 = v144[31];
      v151 = v144[32];
      __swift_project_boxed_opaque_existential_1(v144 + 28, v150);
      *(&v231 + 1) = type metadata accessor for FeedItem(0);
      v232 = sub_1D5C16C60(&qword_1EDF34F30, type metadata accessor for FeedItem);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v230);
      sub_1D5BFDCF8(v53 + v147, boxed_opaque_existential_1, type metadata accessor for FeedItem);
      v153 = v134[2];
      v154 = v134[3];
      v155 = v134[4];
      v156 = v134[5];
      v157 = *(v151 + 16);
      v158 = type metadata accessor for FormatLayoutView();
      v159 = sub_1D5C16C60(&unk_1EDF30340, type metadata accessor for FormatLayoutView);
      v157(&v230, v142, v149 & 1, v158, v159, v150, v151, v153, v154, v155, v156);
      return __swift_destroy_boxed_opaque_existential_1(&v230);
    }
  }

LABEL_7:
  v57 = v207;
  v204(v207, v218, v37);
  v211 = v37;
  v203(v57, 0, 1, v37);
  v58 = v223;
  sub_1D725DC2C();
  sub_1D726345C();
  v59 = v224[32];
  __swift_project_boxed_opaque_existential_1(v224 + 28, v224[31]);
  v60 = *(v59 + 8);
  v61 = v53;
  v62 = type metadata accessor for FormatLayoutView();
  v63 = sub_1D5C16C60(&unk_1EDF30340, type metadata accessor for FormatLayoutView);
  v207 = v62;
  v64 = v62;
  v65 = v61;
  v206 = v63;
  v60(v58, v64);
  v66 = [objc_opt_self() clearColor];
  sub_1D726349C();

  sub_1D705DE9C(v58, v61);
  v228 = [v222 collectionViewLayout];
  sub_1D5B5A498(0, &qword_1EDF1A868);
  sub_1D701B504();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v232 = 0;
    v230 = 0u;
    v231 = 0u;
  }

  sub_1D701B568(&v230, &v228, &qword_1EDF3B470, sub_1D701B504);
  v67 = v221;
  if (v229)
  {
    __swift_project_boxed_opaque_existential_1(&v228, v229);
    sub_1D7258DAC();
    sub_1D725F55C();
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v75 = v74;
    __swift_destroy_boxed_opaque_existential_1(&v228);
  }

  else
  {
    sub_1D701B5E8(&v228, &qword_1EDF3B470, sub_1D701B504);
    v76 = (v54 + v67[9]);
    v69 = *v76;
    v71 = v76[1];
    v73 = v76[2];
    v75 = v76[3];
  }

  [v58 frame];
  v78 = v77;
  v80 = v79;
  v82 = v81;
  v84 = v83;
  v86 = *v54;
  v85 = v54[1];
  v87 = v54;
  v88 = v54[2];
  v89 = v54[3];
  v91 = v87[4];
  v90 = v87[5];
  v92 = v67[7];
  v93 = v58;
  v94 = v217;
  v204 = v92;
  sub_1D5BFDCF8(v92 + v87, v92 + v217, type metadata accessor for FeedItem);
  *v94 = v86;
  v94[1] = v85;
  v94[2] = v88;
  v94[3] = v89;
  v94[4] = v91;
  v94[5] = v90;
  v95 = (v94 + v67[8]);
  *v95 = v78;
  v95[1] = v80;
  v95[2] = v82;
  v95[3] = v84;
  v96 = (v94 + v67[9]);
  *v96 = v69;
  v96[1] = v71;
  v96[2] = v73;
  v96[3] = v75;
  v97 = v65;
  v98 = *(v65 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes);
  v99 = swift_beginAccess();
  v205 = &v198;
  MEMORY[0x1EEE9AC00](v99, v100);
  v101 = v224;
  *(&v198 - 8) = v224;
  *(&v198 - 7) = v94;
  *(&v198 - 6) = v97;
  *(&v198 - 5) = v93;
  v102 = v216;
  *(&v198 - 4) = v222;
  *(&v198 - 3) = v102;
  v103 = v209;
  v197 = v209;

  sub_1D725DBDC();
  v104 = v101[26];
  v105 = swift_getObjectType();
  v106 = *(*v98 + 136);
  v205 = v98;
  v107 = v98 + v106;
  v108 = v208;
  sub_1D5BFDCF8(v98 + v106, v208, type metadata accessor for FormatItemNodeData);
  v109 = sub_1D725DBEC();
  v110 = &v107[*(v214 + 32)];
  v111 = v110[1];
  v112 = v110[2];
  v225 = *v110;
  v226 = v111;
  v227 = v112;
  v113 = *(v104 + 96);
  sub_1D5EBC314(v225, v111);
  v113(v94, v108, v109, &v225, v216, v103, v221, &protocol witness table for FormatItemNodeLayoutContext, v105, v104);
  v114 = v220;

  sub_1D5EBC358(v225, v226);
  sub_1D5B88E30(v108, type metadata accessor for FormatItemNodeData);
  v115 = *(v114 + 32);
  if (v115)
  {
    v116 = v223;
    sub_1D726348C();
    v117 = (v115 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_focusParameters);
    v118 = *(v115 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_focusParameters + 32);
    if (v118 & 0xFF00) == 0x400 || (v118)
    {
      v117 = MEMORY[0x1E69DDCE0];
    }

    v119 = 0;
    v121 = *v117;
    v120 = v117[1];
    v122 = v219;
    if ((v118 & 0xFF00) != 0x400)
    {
      v123 = v118 >> 8;
      if (v123 != 3)
      {
        if (v123)
        {
          if (v123 == 1)
          {
            v119 = 1;
          }

          else
          {
            v119 = 2;
          }
        }

        else
        {
          v119 = v123;
        }
      }
    }
  }

  else
  {
    v116 = v223;
    sub_1D726348C();
    v119 = 0;
    v121 = *MEMORY[0x1E69DDCE0];
    v120 = *(MEMORY[0x1E69DDCE0] + 8);
    v122 = v219;
  }

  [v116 bounds];
  v164 = UIEdgeInsetsInsetRect(v160, v161, v162, v163, v121, v120);
  v166 = v165;
  v168 = v167;
  v170 = v169;
  v171 = sub_1D725DBBC();
  sub_1D725E3CC();
  v173 = v172;

  v174 = [objc_opt_self() effectWithRoundedRect:*MEMORY[0x1E69796E8] cornerRadius:v164 curve:{v166, v168, v170, v173}];
  v175 = sub_1D725DBEC();
  [v174 setReferenceView_];

  [v174 setPosition_];
  [v116 setFocusEffect_];
  v176 = sub_1D725DBEC();
  if (v115)
  {
    v177 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelContextMenu;
    swift_beginAccess();
    v178 = *(v115 + v177);
  }

  else
  {
    v178 = 0;
  }

  v179 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_shouldCancelContextMenu;
  swift_beginAccess();
  v176[v179] = v178 & 1;

  v180 = sub_1D725DBEC();
  if (v115)
  {
    v181 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelDrag;
    swift_beginAccess();
    v182 = *(v115 + v181);
  }

  else
  {
    v182 = 0;
  }

  v183 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_shouldCancelDrag;
  swift_beginAccess();
  v180[v183] = v182 & 1;

  v184 = sub_1D725DBEC();
  (v215[1])(v218, v211);
  v185 = v210;
  sub_1D5BFDCF8(v204 + v122, v210, type metadata accessor for FeedItem);
  v186 = type metadata accessor for FeedItem(0);
  (*(*(v186 - 8) + 56))(v185, 0, 1, v186);
  v187 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_feedItem;
  swift_beginAccess();
  sub_1D61CAC28(v185, v184 + v187);
  swift_endAccess();

  sub_1D5B88E30(v217, type metadata accessor for FormatItemNodeLayoutContext);
  sub_1D701B5E8(&v230, &qword_1EDF3B470, sub_1D701B504);
  v188 = v224;
  sub_1D701A8BC(v222, v116, v114);
  sub_1D701B030();
  v189 = v188[51];
  v190 = v188[52];
  __swift_project_boxed_opaque_existential_1(v188 + 48, v189);
  v191 = OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_feedItem;
  v192 = v213;
  sub_1D5BFDCF8(v114 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_feedItem, v213, type metadata accessor for FeedItem);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v189) = (*(v190 + 8))(v192, v189, v190);
  sub_1D5B88E30(v192, type metadata accessor for FeedItemDimmingType);
  v193 = v188[31];
  v194 = v188[32];
  __swift_project_boxed_opaque_existential_1(v188 + 28, v193);
  *(&v231 + 1) = v186;
  v232 = sub_1D5C16C60(&qword_1EDF34F30, type metadata accessor for FeedItem);
  v195 = __swift_allocate_boxed_opaque_existential_1(&v230);
  sub_1D5BFDCF8(v114 + v191, v195, type metadata accessor for FeedItem);
  (*(v194 + 16))(&v230, v116, v189 & 1, v207, v206, v193, v194, v205[2], v205[3], v205[4], v205[5]);
  return __swift_destroy_boxed_opaque_existential_1(&v230);
}

uint64_t sub_1D701A774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a1 + 208);
  ObjectType = swift_getObjectType();
  v12 = *(a3 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes);
  v13 = sub_1D725DBEC();
  v14 = [a5 traitCollection];
  v15 = *(*v12 + 136);
  v16 = type metadata accessor for FormatItemNodeData();
  v17 = (v12 + *(v16 + 32) + v15);
  v18 = v17[1];
  v19 = v17[2];
  v27 = *v17;
  v28 = v18;
  v29 = v19;
  v20 = *(v10 + 80);
  sub_1D5EBC314(v27, v18);
  v21 = type metadata accessor for FormatItemNodeLayoutContext();
  v20(a2, v12, v13, v14, &v27, a6, a7, v16, v21, &protocol witness table for FormatItemNodeLayoutContext, ObjectType, v10);

  v22 = v27;
  v23 = v28;

  return sub_1D5EBC358(v22, v23);
}

uint64_t sub_1D701A8BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1D725DBEC();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 2) = v5;
  *(v7 + 3) = v6;
  *(v7 + 4) = a3;
  v8 = &v4[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_onSizeInvalidation];
  v9 = *&v4[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_onSizeInvalidation];
  *v8 = sub_1D701B67C;
  v8[1] = v7;

  sub_1D5B74328(v9);
}

uint64_t sub_1D701A9D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1D725F54C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = *(result + 424);

    if (v10)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v12 = Strong;
        v13 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:300.0 damping:32.0 initialVelocity:{0.0, 0.0}];
        [v13 ts_settlingDuration];
        v15 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v13 timingParameters:v14];
        v17[1] = *(*(a3 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes) + 48);
        *v8 = v15;
        (*(v5 + 104))(v8, *MEMORY[0x1E69D8708], v4);

        v16 = v15;
        sub_1D725F42C();

        return (*(v5 + 8))(v8, v4);
      }

      else
      {
      }
    }
  }

  return result;
}

void sub_1D701AC3C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v20.origin.x = a1;
    v20.origin.y = a2;
    v20.size.width = a3;
    v20.size.height = a4;
    MaxY = CGRectGetMaxY(v20);
    v21.origin.x = a5;
    v21.origin.y = a6;
    v21.size.width = a7;
    v21.size.height = a8;
    if (MaxY - CGRectGetMinY(v21) > -14.0)
    {
      v19 = v17;
      [v19 contentInset];
      [v19 setContentInset_];
      [v19 contentOffset];
      [v19 setContentOffset_];
    }
  }
}

void sub_1D701AD64()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [v1 contentInset];
    [v1 setContentInset_];
  }
}

uint64_t FeedItemRenderer.deinit()
{
  MEMORY[0x1DA6FD660](v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 128);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 224);
  __swift_destroy_boxed_opaque_existential_1(v0 + 264);
  __swift_destroy_boxed_opaque_existential_1(v0 + 304);
  __swift_destroy_boxed_opaque_existential_1(v0 + 344);
  __swift_destroy_boxed_opaque_existential_1(v0 + 384);

  return v0;
}

uint64_t FeedItemRenderer.__deallocating_deinit()
{
  FeedItemRenderer.deinit();

  return swift_deallocClassInstance();
}

void sub_1D701AEC0(void *a1)
{
  sub_1D701B160();
}

void (*sub_1D701AEF8(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = FeedItemRenderer.presentingViewController.modify(v2);
  return sub_1D5FE8C5C;
}

uint64_t sub_1D701AF9C(char a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_1D701B030()
{
  v0 = sub_1D725DBEC();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = &v0[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_onKeyboardWillShow];
  v3 = *&v0[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_onKeyboardWillShow];
  *v2 = sub_1D701B66C;
  v2[1] = v1;

  sub_1D5B74328(v3);

  v4 = sub_1D725DBEC();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = &v4[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_onKeyboardWillHide];
  v7 = *&v4[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_onKeyboardWillHide];
  *v6 = sub_1D701B674;
  v6[1] = v5;

  sub_1D5B74328(v7);
}

uint64_t sub_1D701B160()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v1 = *(v0 + 88);
  ObjectType = swift_getObjectType();
  Strong = swift_unknownObjectWeakLoadStrong();
  (*(v1 + 16))(Strong, ObjectType, v1);
  v4 = *(v0 + 208);
  v5 = swift_getObjectType();
  v6 = swift_unknownObjectWeakLoadStrong();
  return (*(v4 + 16))(v6, v5, v4);
}

void sub_1D701B220(void *a1, void *a2)
{
  v5 = *(sub_1D7258DBC() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(v2 + v7);
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = v2 + (v7 & 0xFFFFFFFFFFFFFFF8);
  v12 = *(v11 + 8);
  v13 = *(v11 + 16);

  sub_1D7017C24(a1, a2, v9, v10, v2 + v6, v8, v12, v13);
}

id sub_1D701B39C()
{
  v1 = *(sub_1D7258DBC() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D701807C(*(v0 + 16), *(v0 + 24), v0 + v2, *(v0 + v3), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v3 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_1D701B470()
{
  if (!qword_1EDF3B728)
  {
    sub_1D5BB0F34(255, &qword_1EDF3B730, MEMORY[0x1E69D76B8], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF3B728);
    }
  }
}

unint64_t sub_1D701B504()
{
  result = qword_1EDF3B478;
  if (!qword_1EDF3B478)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF3B478);
  }

  return result;
}

uint64_t sub_1D701B568(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5BB0F34(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D701B5E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5BB0F34(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t FormatStateMachineActionEvent.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatStateMachineActionEvent.eventIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t static FormatStateMachineActionEvent.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1D72646CC(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1D72646CC();
    }
  }

  return result;
}

unint64_t sub_1D701B790(uint64_t a1)
{
  result = sub_1D701B7B8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D701B7B8()
{
  result = qword_1EC899630;
  if (!qword_1EC899630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899630);
  }

  return result;
}

unint64_t sub_1D701B80C(void *a1)
{
  a1[1] = sub_1D667D1A4();
  a1[2] = sub_1D67009C0();
  result = sub_1D701B844();
  a1[3] = result;
  return result;
}

unint64_t sub_1D701B844()
{
  result = qword_1EC899638;
  if (!qword_1EC899638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899638);
  }

  return result;
}

void *sub_1D701B8E8(uint64_t a1, __int128 *a2)
{
  v2 = a2[5];
  v59 = a2[4];
  v60 = v2;
  v3 = a2[7];
  v61 = a2[6];
  v62 = v3;
  v4 = a2[1];
  v55 = *a2;
  v56 = v4;
  v5 = a2[3];
  v57 = a2[2];
  v58 = v5;
  v6 = MEMORY[0x1E69E6F90];
  sub_1D5B56088(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7270C10;
  sub_1D5B56088(0, &qword_1EC880490, sub_1D5EA74B8, v6);
  sub_1D5EA74B8();
  v9 = *(*(v8 - 8) + 72);
  v10 = (*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80);
  v32 = 2 * v9;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D7270C10;
  v12 = (v11 + v10);
  v63[4] = v59;
  v63[5] = v60;
  v63[6] = v61;
  v63[7] = v62;
  v63[0] = v55;
  v63[1] = v56;
  v63[2] = v57;
  v63[3] = v58;
  v13 = 0;
  v14 = 0;
  if (sub_1D5DEA380(v63) != 1)
  {
    v14 = *(&v63[0] + 1);
    v13 = *&v63[0];
  }

  sub_1D711F844(0x696669746E656449, 0xEA00000000007265, v13, v14, v12);
  v15 = type metadata accessor for FormatInspectionItem(0);
  v16 = (*(v15 - 8) + 56);
  v33 = *v16;
  (*v16)(v12, 0, 1, v15);
  v47 = v59;
  v48 = v60;
  v49 = v61;
  v50 = v62;
  v43 = v55;
  v44 = v56;
  v45 = v57;
  v46 = v58;
  v17 = 0;
  v18 = 0;
  if (sub_1D5DEA380(&v43) != 1)
  {
    v18 = *(&v44 + 1);
    v17 = v44;
  }

  sub_1D711F844(1701667150, 0xE400000000000000, v17, v18, (v12 + v9));
  v33(v12 + v9, 0, 1, v15);
  sub_1D6795150(0x614D206574617453, 0xED0000656E696863, 0, 0, v11, v51);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(inited + 56) = &type metadata for FormatInspectionGroup;
  *(inited + 64) = &off_1F518B2C0;
  v19 = swift_allocObject();
  *(inited + 32) = v19;
  *(v19 + 48) = v52;
  v20 = v51[1];
  *(v19 + 16) = v51[0];
  *(v19 + 32) = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1D7279970;
  v22 = (v21 + v10);
  v39[4] = v59;
  v40 = v60;
  v41 = v61;
  v42 = v62;
  v39[0] = v55;
  v39[1] = v56;
  v39[2] = v57;
  v39[3] = v58;
  v23 = 0;
  v24 = 0;
  if (sub_1D5DEA380(v39) != 1)
  {
    v23 = *(&v40 + 1);
    v24 = v41;
  }

  sub_1D711F844(0x696669746E656449, 0xEA00000000007265, v23, v24, v22);
  v33(v22, 0, 1, v15);
  v36[4] = v59;
  v36[5] = v60;
  v37 = v61;
  v38 = v62;
  v36[0] = v55;
  v36[1] = v56;
  v36[2] = v57;
  v36[3] = v58;
  if (sub_1D5DEA380(v36) == 1)
  {
    v25 = 0;
  }

  else
  {
    v25 = *(&v37 + 1);
  }

  sub_1D712A758(0x617453206D6F7246, 0xEA00000000006574, v25, (v22 + v9));
  v33(v22 + v9, 0, 1, v15);
  v34[4] = v59;
  v34[5] = v60;
  v34[6] = v61;
  v35 = v62;
  v34[0] = v55;
  v34[1] = v56;
  v34[2] = v57;
  v34[3] = v58;
  if (sub_1D5DEA380(v34) == 1)
  {
    v26 = 0;
    v27 = 0;
  }

  else
  {
    v27 = *(&v35 + 1);
    v26 = v35;
  }

  sub_1D711F844(0x6574617453206F54, 0xE800000000000000, v26, v27, (v22 + v32));
  v33(v22 + v32, 0, 1, v15);
  sub_1D6795150(0x746E657645, 0xE500000000000000, 0, 0, v21, v53);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(inited + 96) = &type metadata for FormatInspectionGroup;
  *(inited + 104) = &off_1F518B2C0;
  v28 = swift_allocObject();
  *(inited + 72) = v28;
  *(v28 + 48) = v54;
  v29 = v53[1];
  *(v28 + 16) = v53[0];
  *(v28 + 32) = v29;
  v30 = sub_1D7073500(inited);
  swift_setDeallocating();
  sub_1D5E4F358(0);
  swift_arrayDestroy();
  return v30;
}

uint64_t sub_1D701BEC4(uint64_t a1)
{
  sub_1D7031448();
  v42 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v41 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5E3B6C0(0);
  v40 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (!v11)
  {
    return v12;
  }

  v33[1] = v1;
  v46 = MEMORY[0x1E69E7CC0];
  sub_1D699A5C0(0, v11, 0);
  v12 = v46;
  v45 = a1 + 64;
  result = sub_1D7263B7C();
  v14 = result;
  v15 = 0;
  v38 = v4 + 16;
  v39 = v4;
  v36 = a1;
  v37 = v4 + 8;
  v34 = a1 + 72;
  v35 = v11;
  while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
  {
    v18 = v14 >> 6;
    if ((*(v45 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
    {
      goto LABEL_21;
    }

    v19 = *(a1 + 36);
    v43 = v15;
    v44 = v19;
    v20 = v39;
    v21 = *(a1 + 56) + *(v39 + 72) * v14;
    v22 = v41;
    v23 = v42;
    (*(v39 + 16))(v41, v21, v42);
    swift_getKeyPath();
    swift_getAtKeyPath();

    (*(v20 + 8))(v22, v23);
    v46 = v12;
    v25 = *(v12 + 16);
    v24 = *(v12 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_1D699A5C0(v24 > 1, v25 + 1, 1);
      v12 = v46;
    }

    *(v12 + 16) = v25 + 1;
    result = sub_1D70313E0(v10, v12 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v25, sub_1D5E3B6C0);
    a1 = v36;
    v16 = 1 << *(v36 + 32);
    if (v14 >= v16)
    {
      goto LABEL_22;
    }

    v26 = *(v45 + 8 * v18);
    if ((v26 & (1 << v14)) == 0)
    {
      goto LABEL_23;
    }

    if (v44 != *(v36 + 36))
    {
      goto LABEL_24;
    }

    v27 = v26 & (-2 << (v14 & 0x3F));
    if (v27)
    {
      v16 = __clz(__rbit64(v27)) | v14 & 0x7FFFFFFFFFFFFFC0;
      v17 = v35;
    }

    else
    {
      v28 = v18 << 6;
      v29 = v18 + 1;
      v17 = v35;
      v30 = (v34 + 8 * v18);
      while (v29 < (v16 + 63) >> 6)
      {
        v32 = *v30++;
        v31 = v32;
        v28 += 64;
        ++v29;
        if (v32)
        {
          result = sub_1D5C25E1C(v14, v44, 0);
          v16 = __clz(__rbit64(v31)) + v28;
          goto LABEL_4;
        }
      }

      result = sub_1D5C25E1C(v14, v44, 0);
    }

LABEL_4:
    v15 = v43 + 1;
    v14 = v16;
    if (v43 + 1 == v17)
    {
      return v12;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1D701C278(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, v1, 0);
  v2 = v25;
  v4 = a1 + 64;
  result = sub_1D7263B7C();
  v6 = result;
  v7 = 0;
  v24 = *(a1 + 36);
  v22 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v10 = (*(a1 + 48) + 16 * v6);
    v11 = v10[1];
    v23 = *v10;
    v12 = *(v25 + 16);
    v13 = *(v25 + 24);

    if (v12 >= v13 >> 1)
    {
      result = sub_1D5BFC364((v13 > 1), v12 + 1, 1);
    }

    *(v25 + 16) = v12 + 1;
    v14 = v25 + 16 * v12;
    *(v14 + 32) = v23;
    *(v14 + 40) = v11;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v15 = *(a1 + 64 + 8 * v9);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 72 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_1D5C25E1C(v6, v24, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_1D5C25E1C(v6, v24, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v22)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1D701C4BC(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return result;
  }

  for (i = result + 48; ; i += 24)
  {
    v5 = *i;
    v6 = *(*i + 16);
    v7 = *a2;
    v8 = *(*a2 + 16);
    v9 = v8 + v6;
    if (__OFADD__(v8, v6))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && (v10 = *(v7 + 24) >> 1, v10 >= v9))
    {
      if (*(v5 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v8 <= v9)
      {
        v11 = v8 + v6;
      }

      else
      {
        v11 = v8;
      }

      result = sub_1D5B858EC(result, v11, 1, v7);
      v7 = result;
      v10 = *(result + 24) >> 1;
      if (*(v5 + 16))
      {
LABEL_14:
        if (v10 - *(v7 + 16) < v6)
        {
          goto LABEL_21;
        }

        swift_arrayInitWithCopy();

        if (v6)
        {
          v12 = *(v7 + 16);
          v13 = __OFADD__(v12, v6);
          v14 = v12 + v6;
          if (v13)
          {
            goto LABEL_22;
          }

          *(v7 + 16) = v14;
        }

        goto LABEL_4;
      }
    }

    if (v6)
    {
      goto LABEL_20;
    }

LABEL_4:
    *a2 = v7;
    if (!--v2)
    {
      return result;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

void sub_1D701C600(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D62FFD4C(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_1D702E410(v4);
  *a1 = v2;
}

uint64_t FeedClusteringService.createClusters(request:)(uint64_t a1)
{
  v3 = type metadata accessor for FeedClusteringRequest(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v6);
  v7 = sub_1D701C8D4(a1);
  sub_1D6F84BC8();
  sub_1D725BDCC();
  sub_1D702DE88(a1, &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FeedClusteringRequest);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  sub_1D70313E0(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for FeedClusteringRequest);
  *(v9 + ((v5 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1D6F84DCC;
  *(v10 + 24) = v9;

  v11 = v7;
  v12 = sub_1D725B92C();
  v13 = sub_1D725BA7C();

  return v13;
}

uint64_t FeedClusteringService.__allocating_init(cloudContext:allowlistProvider:personalizationService:topicClusteringJournalStorageService:tagService:)(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, __int128 *a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  sub_1D5B63F14(a3, v10 + 32);
  sub_1D5B63F14(a4, v10 + 72);
  sub_1D5B63F14(a5, v10 + 112);
  return v10;
}

id sub_1D701C8D4(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = [v3 personalizationTreatment];
  v5 = [v4 minClusterSizeIPhone];
  v6 = [v4 minClusterSizeIPad];
  v7 = [v4 maxClusterSizeIPhone];
  v8 = [v4 maxClusterSizeIPad];
  v9 = *(v1 + 16);
  v10 = [v9 deviceIsiPad];
  v11 = *(a1 + 32);
  result = [v9 pptContext];
  if (result)
  {
    v13 = [result isRunningPPT];
    swift_unknownObjectRelease();
    if ([v3 respondsToSelector_])
    {
      v14 = [v3 todayFeedEnabled];
    }

    else
    {
      v14 = 0;
    }

    LOBYTE(v16) = v14;
    v15 = [objc_opt_self() rulesWithTreatment:v4 deviceIsiPad:v10 limitUnpaidArticles:v11 enforcePublisherCap:v13 ^ 1 minClusterSizeiPhone:v5 maxClusterSizeiPhone:v7 minClusterSizeiPad:v6 maxClusterSizeiPad:v8 todayFeedEnabled:v16];

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D701CA60()
{
  sub_1D7031CFC();
  swift_allocObject();
  sub_1D725BBAC();
  sub_1D7031D6C();
  swift_allocObject();
  sub_1D725BBAC();
  v0 = sub_1D725BD9C();

  return v0;
}

uint64_t sub_1D701CB24()
{
  sub_1D703192C(0, &qword_1EDF17A70, &type metadata for FeedClusteringResult, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BBAC();
}

uint64_t sub_1D701CBCC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, id a6@<X5>, char *a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, unsigned __int8 a12, unsigned __int8 a13, uint64_t a14)
{
  v15 = v14;
  v800 = a11;
  v799 = a10;
  v797 = a8;
  v879 = a6;
  v880 = a4;
  v883 = a3;
  v801 = a2;
  v877 = a1;
  v798 = a9;
  sub_1D70310A8();
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v796 = &v728 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D703197C();
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v847 = &v728 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v788 = sub_1D725940C();
  v785 = *(v788 - 8);
  MEMORY[0x1EEE9AC00](v788, v24);
  v846 = &v728 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D70315E4();
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v845 = &v728 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7031B60(0);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v795 = &v728 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v793 = &v728 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v782 = &v728 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v778 = &v728 - v40;
  v41 = sub_1D72593FC();
  v874 = *(v41 - 8);
  v875 = v41;
  MEMORY[0x1EEE9AC00](v41, v42);
  v844 = &v728 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44, v45);
  v834 = &v728 - v46;
  MEMORY[0x1EEE9AC00](v47, v48);
  v831 = &v728 - v49;
  MEMORY[0x1EEE9AC00](v50, v51);
  v824 = &v728 - v52;
  sub_1D5E3B330(0);
  MEMORY[0x1EEE9AC00](v53 - 8, v54);
  v732 = &v728 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56, v57);
  v731 = &v728 - v58;
  MEMORY[0x1EEE9AC00](v59, v60);
  v730 = &v728 - v61;
  MEMORY[0x1EEE9AC00](v62, v63);
  v729 = &v728 - v64;
  sub_1D7031B94(0);
  MEMORY[0x1EEE9AC00](v65 - 8, v66);
  v794 = &v728 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v68, v69);
  v791 = &v728 - v70;
  MEMORY[0x1EEE9AC00](v71, v72);
  v780 = &v728 - v73;
  MEMORY[0x1EEE9AC00](v74, v75);
  v850 = (&v728 - v76);
  v873 = sub_1D725943C();
  v872 = *(v873 - 8);
  MEMORY[0x1EEE9AC00](v873, v77);
  v842 = &v728 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v79, v80);
  v833 = &v728 - v81;
  MEMORY[0x1EEE9AC00](v82, v83);
  v830 = &v728 - v84;
  MEMORY[0x1EEE9AC00](v85, v86);
  v823 = &v728 - v87;
  sub_1D7031244();
  MEMORY[0x1EEE9AC00](v88 - 8, v89);
  v843 = &v728 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5E3B6C0(0);
  MEMORY[0x1EEE9AC00](v91 - 8, v92);
  v878 = &v728 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v94, v95);
  v869 = &v728 - v96;
  MEMORY[0x1EEE9AC00](v97, v98);
  v868 = &v728 - v99;
  sub_1D5E3B6E0(0);
  MEMORY[0x1EEE9AC00](v100 - 8, v101);
  v849 = &v728 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v103, v104);
  v773 = &v728 - v105;
  MEMORY[0x1EEE9AC00](v106, v107);
  v771 = &v728 - v108;
  MEMORY[0x1EEE9AC00](v109, v110);
  v816 = &v728 - v111;
  MEMORY[0x1EEE9AC00](v112, v113);
  v764 = &v728 - v114;
  MEMORY[0x1EEE9AC00](v115, v116);
  v870 = &v728 - v117;
  MEMORY[0x1EEE9AC00](v118, v119);
  v848 = &v728 - v120;
  MEMORY[0x1EEE9AC00](v121, v122);
  v756 = &v728 - v123;
  MEMORY[0x1EEE9AC00](v124, v125);
  v808 = &v728 - v126;
  MEMORY[0x1EEE9AC00](v127, v128);
  v807 = &v728 - v129;
  MEMORY[0x1EEE9AC00](v130, v131);
  v803 = &v728 - v132;
  MEMORY[0x1EEE9AC00](v133, v134);
  v812 = &v728 - v135;
  MEMORY[0x1EEE9AC00](v136, v137);
  v805 = &v728 - v138;
  MEMORY[0x1EEE9AC00](v139, v140);
  v811 = &v728 - v141;
  MEMORY[0x1EEE9AC00](v142, v143);
  v815 = &v728 - v144;
  MEMORY[0x1EEE9AC00](v145, v146);
  v806 = &v728 - v147;
  MEMORY[0x1EEE9AC00](v148, v149);
  v735 = &v728 - v150;
  v876 = sub_1D72593CC();
  v841 = *(v876 - 8);
  MEMORY[0x1EEE9AC00](v876, v151);
  v840 = &v728 - ((v152 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v153, v154);
  v839 = &v728 - v155;
  MEMORY[0x1EEE9AC00](v156, v157);
  v838 = &v728 - v158;
  MEMORY[0x1EEE9AC00](v159, v160);
  v837 = &v728 - v161;
  MEMORY[0x1EEE9AC00](v162, v163);
  v836 = &v728 - v164;
  MEMORY[0x1EEE9AC00](v165, v166);
  v835 = &v728 - v167;
  MEMORY[0x1EEE9AC00](v168, v169);
  v790 = &v728 - v170;
  MEMORY[0x1EEE9AC00](v171, v172);
  v789 = &v728 - v173;
  MEMORY[0x1EEE9AC00](v174, v175);
  v787 = &v728 - v176;
  MEMORY[0x1EEE9AC00](v177, v178);
  v786 = &v728 - v179;
  MEMORY[0x1EEE9AC00](v180, v181);
  v832 = &v728 - v182;
  MEMORY[0x1EEE9AC00](v183, v184);
  v829 = &v728 - v185;
  MEMORY[0x1EEE9AC00](v186, v187);
  v828 = &v728 - v188;
  MEMORY[0x1EEE9AC00](v189, v190);
  v827 = &v728 - v191;
  MEMORY[0x1EEE9AC00](v192, v193);
  v826 = &v728 - v194;
  MEMORY[0x1EEE9AC00](v195, v196);
  v825 = &v728 - v197;
  MEMORY[0x1EEE9AC00](v198, v199);
  v871 = &v728 - v200;
  MEMORY[0x1EEE9AC00](v201, v202);
  v822 = &v728 - v203;
  MEMORY[0x1EEE9AC00](v204, v205);
  v821 = &v728 - v206;
  MEMORY[0x1EEE9AC00](v207, v208);
  v820 = &v728 - v209;
  MEMORY[0x1EEE9AC00](v210, v211);
  v819 = &v728 - v212;
  MEMORY[0x1EEE9AC00](v213, v214);
  v818 = &v728 - v215;
  MEMORY[0x1EEE9AC00](v216, v217);
  v817 = &v728 - v218;
  MEMORY[0x1EEE9AC00](v219, v220);
  v867 = &v728 - v221;
  MEMORY[0x1EEE9AC00](v222, v223);
  v866 = &v728 - v224;
  MEMORY[0x1EEE9AC00](v225, v226);
  v865 = &v728 - v227;
  MEMORY[0x1EEE9AC00](v228, v229);
  v864 = &v728 - v230;
  MEMORY[0x1EEE9AC00](v231, v232);
  v863 = &v728 - v233;
  MEMORY[0x1EEE9AC00](v234, v235);
  v862 = &v728 - v236;
  MEMORY[0x1EEE9AC00](v237, v238);
  v861 = &v728 - v239;
  MEMORY[0x1EEE9AC00](v240, v241);
  v860 = &v728 - v242;
  MEMORY[0x1EEE9AC00](v243, v244);
  v859 = &v728 - v245;
  MEMORY[0x1EEE9AC00](v246, v247);
  v858 = &v728 - v248;
  MEMORY[0x1EEE9AC00](v249, v250);
  v857 = &v728 - v251;
  MEMORY[0x1EEE9AC00](v252, v253);
  v856 = &v728 - v254;
  MEMORY[0x1EEE9AC00](v255, v256);
  v855 = &v728 - v257;
  MEMORY[0x1EEE9AC00](v258, v259);
  v854 = &v728 - v260;
  MEMORY[0x1EEE9AC00](v261, v262);
  v853 = &v728 - v263;
  MEMORY[0x1EEE9AC00](v264, v265);
  v852 = &v728 - v266;
  MEMORY[0x1EEE9AC00](v267, v268);
  v851 = &v728 - v269;
  sub_1D702DE54(0);
  MEMORY[0x1EEE9AC00](v270 - 8, v271);
  v792 = &v728 - ((v272 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v273, v274);
  v784 = &v728 - v275;
  MEMORY[0x1EEE9AC00](v276, v277);
  v781 = &v728 - v278;
  MEMORY[0x1EEE9AC00](v279, v280);
  v779 = &v728 - v281;
  MEMORY[0x1EEE9AC00](v282, v283);
  v777 = &v728 - v284;
  MEMORY[0x1EEE9AC00](v285, v286);
  v775 = &v728 - v287;
  MEMORY[0x1EEE9AC00](v288, v289);
  v774 = &v728 - v290;
  MEMORY[0x1EEE9AC00](v291, v292);
  v772 = &v728 - v293;
  MEMORY[0x1EEE9AC00](v294, v295);
  v770 = &v728 - v296;
  MEMORY[0x1EEE9AC00](v297, v298);
  v769 = &v728 - v299;
  MEMORY[0x1EEE9AC00](v300, v301);
  v768 = &v728 - v302;
  MEMORY[0x1EEE9AC00](v303, v304);
  v767 = &v728 - v305;
  MEMORY[0x1EEE9AC00](v306, v307);
  v766 = &v728 - v308;
  MEMORY[0x1EEE9AC00](v309, v310);
  v765 = &v728 - v311;
  MEMORY[0x1EEE9AC00](v312, v313);
  v763 = &v728 - v314;
  MEMORY[0x1EEE9AC00](v315, v316);
  v762 = &v728 - v317;
  MEMORY[0x1EEE9AC00](v318, v319);
  v761 = &v728 - v320;
  MEMORY[0x1EEE9AC00](v321, v322);
  v760 = &v728 - v323;
  MEMORY[0x1EEE9AC00](v324, v325);
  v758 = &v728 - v326;
  MEMORY[0x1EEE9AC00](v327, v328);
  v757 = &v728 - v329;
  MEMORY[0x1EEE9AC00](v330, v331);
  v759 = &v728 - v332;
  MEMORY[0x1EEE9AC00](v333, v334);
  v755 = &v728 - v335;
  MEMORY[0x1EEE9AC00](v336, v337);
  v754 = &v728 - v338;
  MEMORY[0x1EEE9AC00](v339, v340);
  v753 = &v728 - v341;
  MEMORY[0x1EEE9AC00](v342, v343);
  v752 = &v728 - v344;
  MEMORY[0x1EEE9AC00](v345, v346);
  v751 = &v728 - v347;
  MEMORY[0x1EEE9AC00](v348, v349);
  v750 = &v728 - v350;
  MEMORY[0x1EEE9AC00](v351, v352);
  v802 = &v728 - v353;
  MEMORY[0x1EEE9AC00](v354, v355);
  v749 = &v728 - v356;
  MEMORY[0x1EEE9AC00](v357, v358);
  v748 = &v728 - v359;
  MEMORY[0x1EEE9AC00](v360, v361);
  v747 = &v728 - v362;
  MEMORY[0x1EEE9AC00](v363, v364);
  v746 = &v728 - v365;
  MEMORY[0x1EEE9AC00](v366, v367);
  v745 = &v728 - v368;
  MEMORY[0x1EEE9AC00](v369, v370);
  v744 = &v728 - v371;
  MEMORY[0x1EEE9AC00](v372, v373);
  v804 = &v728 - v374;
  MEMORY[0x1EEE9AC00](v375, v376);
  v743 = &v728 - v377;
  MEMORY[0x1EEE9AC00](v378, v379);
  v742 = &v728 - v380;
  MEMORY[0x1EEE9AC00](v381, v382);
  v741 = &v728 - v383;
  MEMORY[0x1EEE9AC00](v384, v385);
  v740 = &v728 - v386;
  MEMORY[0x1EEE9AC00](v387, v388);
  v809 = &v728 - v389;
  MEMORY[0x1EEE9AC00](v390, v391);
  v739 = &v728 - v392;
  MEMORY[0x1EEE9AC00](v393, v394);
  v738 = &v728 - v395;
  MEMORY[0x1EEE9AC00](v396, v397);
  v737 = &v728 - v398;
  MEMORY[0x1EEE9AC00](v399, v400);
  v736 = &v728 - v401;
  MEMORY[0x1EEE9AC00](v402, v403);
  v405 = &v728 - v404;
  MEMORY[0x1EEE9AC00](v406, v407);
  v734 = &v728 - v408;
  MEMORY[0x1EEE9AC00](v409, v410);
  v733 = &v728 - v411;
  MEMORY[0x1EEE9AC00](v412, v413);
  v415 = &v728 - v414;
  MEMORY[0x1EEE9AC00](v416, v417);
  v419 = &v728 - v418;
  MEMORY[0x1EEE9AC00](v420, v421);
  v423 = &v728 - v422;
  MEMORY[0x1EEE9AC00](v424, v425);
  v427 = &v728 - v426;
  MEMORY[0x1EEE9AC00](v428, v429);
  v431 = &v728 - v430;
  *&v434 = MEMORY[0x1EEE9AC00](v432, v433).n128_u64[0];
  v436 = &v728 - v435;
  v776 = *a7;
  LODWORD(v881) = [*(v15 + 16) deviceIsiPad];
  v882 = a5;
  sub_1D702DE88(a5, v436, sub_1D702DE54);
  v437 = type metadata accessor for FeedClusteringOptions(0);
  v438 = *(v437 - 8);
  v885 = *(v438 + 48);
  v886 = v438 + 48;
  if (v885(v436, 1, v437) == 1)
  {
    sub_1D7031C2C(v436, sub_1D702DE54);
  }

  else
  {
    v439 = *v436;
    v440 = v436[8];
    sub_1D7031C2C(v436, type metadata accessor for FeedClusteringOptions);
    if ((v440 & 1) == 0)
    {
      v783 = v439;
      goto LABEL_8;
    }
  }

  v441 = &selRef_minClusterSizeIPad;
  if (!v881)
  {
    v441 = &selRef_minClusterSizeIPhone;
  }

  v783 = [v877 *v441];
LABEL_8:
  v442 = v815;
  sub_1D702DE88(v883, v431, sub_1D702DE54);
  v884 = v437;
  if (v885(v431, 1, v437) == 1)
  {
    sub_1D7031C2C(v431, sub_1D702DE54);
  }

  else
  {
    v810 = *v431;
    v443 = v431[8];
    sub_1D7031C2C(v431, type metadata accessor for FeedClusteringOptions);
    if ((v443 & 1) == 0)
    {
      v445 = v877;
      goto LABEL_16;
    }
  }

  if (v881)
  {
    v444 = &selRef_minClusterSizeIPadAutoFavorite;
  }

  else
  {
    v444 = &selRef_minClusterSizeIPhoneAutoFavorite;
  }

  v445 = v877;
  v810 = [v877 *v444];
LABEL_16:
  sub_1D702DE88(v880, v427, sub_1D702DE54);
  if (v885(v427, 1, v884) == 1)
  {
    sub_1D7031C2C(v427, sub_1D702DE54);
  }

  else
  {
    v813 = *v427;
    v446 = v427[8];
    sub_1D7031C2C(v427, type metadata accessor for FeedClusteringOptions);
    if ((v446 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  if (v881)
  {
    v447 = &selRef_minClusterSizeIPadAutoFavorite;
  }

  else
  {
    v447 = &selRef_minClusterSizeIPhoneAutoFavorite;
  }

  v813 = [v445 *v447];
LABEL_23:
  v448 = v876;
  v449 = v841;
  v450 = v405;
  sub_1D702DE88(v879, v423, sub_1D702DE54);
  if (v885(v423, 1, v884) == 1)
  {
    sub_1D7031C2C(v423, sub_1D702DE54);
  }

  else
  {
    v814 = *v423;
    v451 = v423[8];
    sub_1D7031C2C(v423, type metadata accessor for FeedClusteringOptions);
    if ((v451 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  v452 = &selRef_minMoreForYouSizeIPad;
  if (!v881)
  {
    v452 = &selRef_minMoreForYouSizeIPhone;
  }

  v814 = [v445 *v452];
LABEL_29:
  sub_1D702DE88(v882, v419, sub_1D702DE54);
  v453 = v884;
  if (v885(v419, 1, v884) == 1)
  {
    sub_1D7031C2C(v419, sub_1D702DE54);
    v454 = v735;
    (*(v449 + 56))(v735, 1, 1, v448);
  }

  else
  {
    v455 = v735;
    sub_1D702DE88(&v419[v453[5]], v735, sub_1D5E3B6E0);
    v456 = v419;
    v454 = v455;
    sub_1D7031C2C(v456, type metadata accessor for FeedClusteringOptions);
    v457 = *(v449 + 48);
    if (v457(v454, 1, v448) != 1)
    {
      (*(v449 + 32))(v851, v454, v448);
      v460 = v885;
      goto LABEL_35;
    }
  }

  sub_1D72593BC();
  v457 = *(v449 + 48);
  v458 = v457(v454, 1, v448) == 1;
  v459 = v454;
  v460 = v885;
  if (!v458)
  {
    sub_1D7031C2C(v459, sub_1D5E3B6E0);
  }

LABEL_35:
  sub_1D702DE88(v883, v415, sub_1D702DE54);
  if (v460(v415, 1, v453) == 1)
  {
    sub_1D7031C2C(v415, sub_1D702DE54);
    v461 = v806;
    (*(v449 + 56))(v806, 1, 1, v448);
  }

  else
  {
    v461 = v806;
    sub_1D702DE88(&v415[v453[5]], v806, sub_1D5E3B6E0);
    sub_1D7031C2C(v415, type metadata accessor for FeedClusteringOptions);
    if (v457(v461, 1, v448) != 1)
    {
      (*(v449 + 32))(v852, v461, v448);
      v463 = v880;
      goto LABEL_41;
    }
  }

  sub_1D72593BC();
  v462 = v457(v461, 1, v448);
  v463 = v880;
  if (v462 != 1)
  {
    sub_1D7031C2C(v461, sub_1D5E3B6E0);
  }

LABEL_41:
  v464 = v463;
  v465 = v733;
  sub_1D702DE88(v464, v733, sub_1D702DE54);
  v466 = v460(v465, 1, v453);
  v467 = v738;
  if (v466 == 1)
  {
    sub_1D7031C2C(v465, sub_1D702DE54);
    (*(v449 + 56))(v442, 1, 1, v448);
  }

  else
  {
    sub_1D702DE88(v465 + v453[5], v442, sub_1D5E3B6E0);
    sub_1D7031C2C(v465, type metadata accessor for FeedClusteringOptions);
    if (v457(v442, 1, v448) != 1)
    {
      (*(v449 + 32))(v853, v442, v448);
      goto LABEL_47;
    }
  }

  sub_1D72593BC();
  if (v457(v442, 1, v448) != 1)
  {
    sub_1D7031C2C(v442, sub_1D5E3B6E0);
  }

LABEL_47:
  v468 = v734;
  sub_1D702DE88(v882, v734, sub_1D702DE54);
  if (v460(v468, 1, v453) == 1)
  {
    sub_1D7031C2C(v468, sub_1D702DE54);
    v469 = v809;
  }

  else
  {
    v470 = (v468 + v453[6]);
    v815 = *v470;
    v471 = *(v470 + 8);
    sub_1D7031C2C(v468, type metadata accessor for FeedClusteringOptions);
    v469 = v809;
    if ((v471 & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  v472 = &selRef_maxClusterSizeIPad;
  if (!v881)
  {
    v472 = &selRef_maxClusterSizeIPhone;
  }

  v815 = [v445 *v472];
LABEL_53:
  sub_1D702DE88(v883, v450, sub_1D702DE54);
  if (v460(v450, 1, v453) == 1)
  {
    sub_1D7031C2C(v450, sub_1D702DE54);
  }

  else
  {
    v473 = v450 + v453[6];
    v806 = *v473;
    v474 = *(v473 + 8);
    sub_1D7031C2C(v450, type metadata accessor for FeedClusteringOptions);
    if ((v474 & 1) == 0)
    {
      goto LABEL_60;
    }
  }

  if (v881)
  {
    v475 = &selRef_maxClusterSizeIPadAutoFavorite;
  }

  else
  {
    v475 = &selRef_maxClusterSizeIPhoneAutoFavorite;
  }

  v806 = [v445 *v475];
LABEL_60:
  v476 = v736;
  sub_1D702DE88(v880, v736, sub_1D702DE54);
  v477 = v884;
  if (v885(v476, 1, v884) == 1)
  {
    sub_1D7031C2C(v476, sub_1D702DE54);
  }

  else
  {
    v478 = (v476 + v477[6]);
    v809 = *v478;
    v479 = *(v478 + 8);
    sub_1D7031C2C(v476, type metadata accessor for FeedClusteringOptions);
    if ((v479 & 1) == 0)
    {
      goto LABEL_67;
    }
  }

  if (v881)
  {
    v480 = &selRef_maxClusterSizeIPadAutoFavorite;
  }

  else
  {
    v480 = &selRef_maxClusterSizeIPhoneAutoFavorite;
  }

  v809 = [v445 *v480];
LABEL_67:
  v481 = v811;
  v482 = v737;
  sub_1D702DE88(v879, v737, sub_1D702DE54);
  v484 = v884;
  v483 = v885;
  if (v885(v482, 1, v884) == 1)
  {
    sub_1D7031C2C(v482, sub_1D702DE54);
    v485 = v812;
  }

  else
  {
    v486 = (v482 + v484[6]);
    v811 = *v486;
    v487 = v482;
    v488 = *(v486 + 8);
    sub_1D7031C2C(v487, type metadata accessor for FeedClusteringOptions);
    v458 = v488 == 1;
    v485 = v812;
    if (!v458)
    {
      goto LABEL_74;
    }
  }

  v489 = &selRef_maxMoreForYouSizeIPad;
  if (!v881)
  {
    v489 = &selRef_maxMoreForYouSizeIPhone;
  }

  v811 = [v445 *v489];
LABEL_74:
  sub_1D702DE88(v882, v467, sub_1D702DE54);
  if (v483(v467, 1, v484) == 1)
  {
    sub_1D7031C2C(v467, sub_1D702DE54);
    (*(v449 + 56))(v481, 1, 1, v448);
  }

  else
  {
    sub_1D702DE88(v467 + v484[7], v481, sub_1D5E3B6E0);
    sub_1D7031C2C(v467, type metadata accessor for FeedClusteringOptions);
    if (v457(v481, 1, v448) != 1)
    {
      (*(v449 + 32))(v854, v481, v448);
      goto LABEL_80;
    }
  }

  sub_1D72593BC();
  if (v457(v481, 1, v448) != 1)
  {
    sub_1D7031C2C(v481, sub_1D5E3B6E0);
  }

LABEL_80:
  v490 = v739;
  sub_1D702DE88(v883, v739, sub_1D702DE54);
  if (v483(v490, 1, v484) == 1)
  {
    sub_1D7031C2C(v490, sub_1D702DE54);
    v491 = v805;
    (*(v449 + 56))(v805, 1, 1, v448);
    v492 = v880;
  }

  else
  {
    v493 = v490 + v484[7];
    v494 = v457;
    v495 = v445;
    v496 = v490;
    v491 = v805;
    sub_1D702DE88(v493, v805, sub_1D5E3B6E0);
    v497 = v496;
    v445 = v495;
    v457 = v494;
    sub_1D7031C2C(v497, type metadata accessor for FeedClusteringOptions);
    v498 = v494(v491, 1, v448);
    v492 = v880;
    if (v498 != 1)
    {
      (*(v449 + 32))(v855, v491, v448);
      goto LABEL_86;
    }
  }

  sub_1D72593BC();
  if (v457(v491, 1, v448) != 1)
  {
    sub_1D7031C2C(v491, sub_1D5E3B6E0);
  }

LABEL_86:
  sub_1D702DE88(v492, v469, sub_1D702DE54);
  if (v483(v469, 1, v484) == 1)
  {
    sub_1D7031C2C(v469, sub_1D702DE54);
    (*(v449 + 56))(v485, 1, 1, v448);
    v499 = v804;
  }

  else
  {
    sub_1D702DE88(v469 + v484[7], v485, sub_1D5E3B6E0);
    sub_1D7031C2C(v469, type metadata accessor for FeedClusteringOptions);
    v500 = v457(v485, 1, v448);
    v499 = v804;
    if (v500 != 1)
    {
      (*(v449 + 32))(v856, v485, v448);
      goto LABEL_92;
    }
  }

  sub_1D72593BC();
  if (v457(v485, 1, v448) != 1)
  {
    sub_1D7031C2C(v485, sub_1D5E3B6E0);
  }

LABEL_92:
  v501 = v740;
  sub_1D702DE88(v882, v740, sub_1D702DE54);
  if (v483(v501, 1, v484) == 1)
  {
    sub_1D7031C2C(v501, sub_1D702DE54);
LABEL_96:
    v812 = [v445 maxEvergreenArticlesPerGroup];
    goto LABEL_97;
  }

  v502 = (v501 + v484[11]);
  v812 = *v502;
  v503 = *(v502 + 8);
  sub_1D7031C2C(v501, type metadata accessor for FeedClusteringOptions);
  v458 = v503 == 1;
  v483 = v885;
  if (v458)
  {
    goto LABEL_96;
  }

LABEL_97:
  v504 = v741;
  sub_1D702DE88(v883, v741, sub_1D702DE54);
  if (v483(v504, 1, v484) == 1)
  {
    sub_1D7031C2C(v504, sub_1D702DE54);
    v505 = v743;
LABEL_101:
    v804 = [v445 maxEvergreenArticlesPerGroup];
    goto LABEL_102;
  }

  v506 = (v504 + v484[11]);
  v804 = *v506;
  v507 = *(v506 + 8);
  sub_1D7031C2C(v504, type metadata accessor for FeedClusteringOptions);
  v458 = v507 == 1;
  v483 = v885;
  v505 = v743;
  if (v458)
  {
    goto LABEL_101;
  }

LABEL_102:
  v508 = v492;
  v509 = v742;
  sub_1D702DE88(v508, v742, sub_1D702DE54);
  if (v483(v509, 1, v484) == 1)
  {
    sub_1D7031C2C(v509, sub_1D702DE54);
    v510 = v807;
LABEL_106:
    v805 = [v445 maxEvergreenArticlesPerGroup];
    goto LABEL_107;
  }

  v511 = v509 + v484[11];
  v805 = *v511;
  v512 = *(v511 + 8);
  sub_1D7031C2C(v509, type metadata accessor for FeedClusteringOptions);
  v458 = v512 == 1;
  v483 = v885;
  v510 = v807;
  if (v458)
  {
    goto LABEL_106;
  }

LABEL_107:
  sub_1D702DE88(v879, v505, sub_1D702DE54);
  if (v483(v505, 1, v484) == 1)
  {
    sub_1D7031C2C(v505, sub_1D702DE54);
LABEL_111:
    v807 = [v445 maxEvergreenArticlesPerGroup];
    goto LABEL_112;
  }

  v513 = (v505 + v484[11]);
  v807 = *v513;
  v514 = *(v513 + 8);
  sub_1D7031C2C(v505, type metadata accessor for FeedClusteringOptions);
  v458 = v514 == 1;
  v483 = v885;
  if (v458)
  {
    goto LABEL_111;
  }

LABEL_112:
  v515 = v808;
  sub_1D702DE88(v882, v499, sub_1D702DE54);
  if (v483(v499, 1, v484) == 1)
  {
    sub_1D7031C2C(v499, sub_1D702DE54);
    v516 = v803;
    (*(v449 + 56))(v803, 1, 1, v448);
  }

  else
  {
    v516 = v803;
    sub_1D702DE88(v499 + v484[12], v803, sub_1D5E3B6E0);
    sub_1D7031C2C(v499, type metadata accessor for FeedClusteringOptions);
    if (v457(v516, 1, v448) != 1)
    {
      (*(v449 + 32))(v857, v516, v448);
      v518 = v745;
      goto LABEL_118;
    }
  }

  sub_1D72593BC();
  v517 = v457(v516, 1, v448);
  v518 = v745;
  if (v517 != 1)
  {
    sub_1D7031C2C(v516, sub_1D5E3B6E0);
  }

LABEL_118:
  v519 = v744;
  sub_1D702DE88(v883, v744, sub_1D702DE54);
  if (v483(v519, 1, v484) == 1)
  {
    sub_1D7031C2C(v519, sub_1D702DE54);
    (*(v449 + 56))(v510, 1, 1, v448);
    v520 = v749;
  }

  else
  {
    sub_1D702DE88(v519 + v484[12], v510, sub_1D5E3B6E0);
    sub_1D7031C2C(v519, type metadata accessor for FeedClusteringOptions);
    v521 = v457(v510, 1, v448);
    v520 = v749;
    if (v521 != 1)
    {
      (*(v449 + 32))(v858, v510, v448);
      goto LABEL_124;
    }
  }

  sub_1D72593BC();
  if (v457(v510, 1, v448) != 1)
  {
    sub_1D7031C2C(v510, sub_1D5E3B6E0);
  }

LABEL_124:
  sub_1D702DE88(v880, v518, sub_1D702DE54);
  if (v483(v518, 1, v484) == 1)
  {
    sub_1D7031C2C(v518, sub_1D702DE54);
    (*(v449 + 56))(v515, 1, 1, v448);
    v522 = v802;
  }

  else
  {
    sub_1D702DE88(v518 + v484[12], v515, sub_1D5E3B6E0);
    sub_1D7031C2C(v518, type metadata accessor for FeedClusteringOptions);
    v523 = v457(v515, 1, v448);
    v522 = v802;
    if (v523 != 1)
    {
      (*(v449 + 32))(v859, v515, v448);
      goto LABEL_130;
    }
  }

  sub_1D72593BC();
  if (v457(v515, 1, v448) != 1)
  {
    sub_1D7031C2C(v515, sub_1D5E3B6E0);
  }

LABEL_130:
  v524 = v746;
  sub_1D702DE88(v882, v746, sub_1D702DE54);
  if (v483(v524, 1, v484) == 1)
  {
    sub_1D7031C2C(v524, sub_1D702DE54);
  }

  else
  {
    v525 = (v524 + v484[9]);
    v808 = *v525;
    v526 = *(v525 + 8);
    sub_1D7031C2C(v524, type metadata accessor for FeedClusteringOptions);
    if (v526 != 1)
    {
      goto LABEL_137;
    }
  }

  if (v881)
  {
    v527 = &selRef_maxUnpaidArticlesIPad;
  }

  else
  {
    v527 = &selRef_maxUnpaidArticlesIPhone;
  }

  v808 = [v445 *v527];
LABEL_137:
  v528 = v747;
  sub_1D702DE88(v883, v747, sub_1D702DE54);
  v529 = v884;
  if (v885(v528, 1, v884) == 1)
  {
    sub_1D7031C2C(v528, sub_1D702DE54);
    v530 = v748;
  }

  else
  {
    v531 = (v528 + v529[9]);
    v802 = *v531;
    v532 = *(v531 + 8);
    sub_1D7031C2C(v528, type metadata accessor for FeedClusteringOptions);
    v530 = v748;
    if (v532 != 1)
    {
      goto LABEL_144;
    }
  }

  if (v881)
  {
    v533 = &selRef_maxUnpaidArticlesIPad;
  }

  else
  {
    v533 = &selRef_maxUnpaidArticlesIPhone;
  }

  v802 = [v445 *v533];
LABEL_144:
  sub_1D702DE88(v880, v530, sub_1D702DE54);
  v534 = v884;
  if (v885(v530, 1, v884) == 1)
  {
    sub_1D7031C2C(v530, sub_1D702DE54);
  }

  else
  {
    v535 = v530 + v534[9];
    v803 = *v535;
    v536 = *(v535 + 8);
    sub_1D7031C2C(v530, type metadata accessor for FeedClusteringOptions);
    if (v536 != 1)
    {
      goto LABEL_151;
    }
  }

  if (v881)
  {
    v537 = &selRef_maxUnpaidArticlesIPad;
  }

  else
  {
    v537 = &selRef_maxUnpaidArticlesIPhone;
  }

  v803 = [v445 *v537];
LABEL_151:
  sub_1D702DE88(v879, v520, sub_1D702DE54);
  v538 = v884;
  if (v885(v520, 1, v884) == 1)
  {
    sub_1D7031C2C(v520, sub_1D702DE54);
  }

  else
  {
    v539 = v520 + v538[9];
    v540 = *v539;
    v541 = *(v539 + 8);
    sub_1D7031C2C(v520, type metadata accessor for FeedClusteringOptions);
    if (v541 != 1)
    {
      goto LABEL_158;
    }
  }

  if (v881)
  {
    v542 = &selRef_maxUnpaidArticlesIPad;
  }

  else
  {
    v542 = &selRef_maxUnpaidArticlesIPhone;
  }

  v540 = [v445 *v542];
LABEL_158:
  v543 = v848;
  sub_1D702DE88(v882, v522, sub_1D702DE54);
  v545 = v884;
  v544 = v885;
  if (v885(v522, 1, v884) == 1)
  {
    sub_1D7031C2C(v522, sub_1D702DE54);
    v546 = v756;
    (*(v449 + 56))(v756, 1, 1, v448);
  }

  else
  {
    v546 = v756;
    sub_1D702DE88(v522 + v545[10], v756, sub_1D5E3B6E0);
    sub_1D7031C2C(v522, type metadata accessor for FeedClusteringOptions);
    if (v457(v546, 1, v448) != 1)
    {
      (*(v449 + 32))(v860, v546, v448);
      goto LABEL_164;
    }
  }

  sub_1D72593BC();
  if (v457(v546, 1, v448) != 1)
  {
    sub_1D7031C2C(v546, sub_1D5E3B6E0);
  }

LABEL_164:
  v547 = v750;
  sub_1D702DE88(v883, v750, sub_1D702DE54);
  if (v544(v547, 1, v545) == 1)
  {
    sub_1D7031C2C(v547, sub_1D702DE54);
    (*(v449 + 56))(v543, 1, 1, v448);
    v548 = v752;
  }

  else
  {
    sub_1D702DE88(v547 + v545[10], v543, sub_1D5E3B6E0);
    sub_1D7031C2C(v547, type metadata accessor for FeedClusteringOptions);
    v549 = v457(v543, 1, v448);
    v548 = v752;
    if (v549 != 1)
    {
      (*(v449 + 32))(v861, v543, v448);
      goto LABEL_170;
    }
  }

  sub_1D72593BC();
  if (v457(v543, 1, v448) != 1)
  {
    sub_1D7031C2C(v543, sub_1D5E3B6E0);
  }

LABEL_170:
  v550 = v751;
  sub_1D702DE88(v880, v751, sub_1D702DE54);
  if (v544(v550, 1, v545) == 1)
  {
    sub_1D7031C2C(v550, sub_1D702DE54);
    v551 = v870;
    (*(v449 + 56))(v870, 1, 1, v448);
  }

  else
  {
    v551 = v870;
    sub_1D702DE88(v550 + v545[10], v870, sub_1D5E3B6E0);
    sub_1D7031C2C(v550, type metadata accessor for FeedClusteringOptions);
    if (v457(v551, 1, v448) != 1)
    {
      (*(v449 + 32))(v862, v551, v448);
      goto LABEL_176;
    }
  }

  sub_1D72593BC();
  if (v457(v551, 1, v448) != 1)
  {
    sub_1D7031C2C(v551, sub_1D5E3B6E0);
  }

LABEL_176:
  sub_1D702DE88(v882, v548, sub_1D702DE54);
  if (v544(v548, 1, v545) == 1)
  {
    sub_1D7031C2C(v548, sub_1D702DE54);
    v552 = v759;
    v553 = v753;
  }

  else
  {
    v554 = v548 + v545[13];
    v870 = *v554;
    v555 = *(v554 + 8);
    sub_1D7031C2C(v548, type metadata accessor for FeedClusteringOptions);
    v552 = v759;
    v553 = v753;
    if (v555 != 1)
    {
      goto LABEL_183;
    }
  }

  if (v881)
  {
    v556 = &selRef_maxPublisherOccurrencesIPad;
  }

  else
  {
    v556 = &selRef_maxPublisherOccurrencesIPhone;
  }

  v870 = [v445 *v556];
LABEL_183:
  v759 = v540;
  sub_1D702DE88(v883, v553, sub_1D702DE54);
  v557 = v884;
  if (v885(v553, 1, v884) == 1)
  {
    sub_1D7031C2C(v553, sub_1D702DE54);
    v558 = v754;
  }

  else
  {
    v559 = v553 + v557[13];
    v560 = *v559;
    v561 = *(v559 + 8);
    sub_1D7031C2C(v553, type metadata accessor for FeedClusteringOptions);
    v558 = v754;
    if (v561 != 1)
    {
      goto LABEL_190;
    }
  }

  if (v881)
  {
    v562 = &selRef_maxPublisherOccurrencesIPad;
  }

  else
  {
    v562 = &selRef_maxPublisherOccurrencesIPhone;
  }

  v560 = [v445 *v562];
LABEL_190:
  sub_1D702DE88(v879, v558, sub_1D702DE54);
  v563 = v884;
  if (v885(v558, 1, v884) == 1)
  {
    sub_1D7031C2C(v558, sub_1D702DE54);
  }

  else
  {
    v564 = (v558 + v563[13]);
    v848 = *v564;
    v565 = *(v564 + 8);
    sub_1D7031C2C(v558, type metadata accessor for FeedClusteringOptions);
    if (v565 != 1)
    {
      goto LABEL_197;
    }
  }

  if (v881)
  {
    v566 = &selRef_maxPublisherOccurrencesIPad;
  }

  else
  {
    v566 = &selRef_maxPublisherOccurrencesIPhone;
  }

  v848 = [v445 *v566];
LABEL_197:
  v567 = v816;
  v568 = v755;
  sub_1D702DE88(v882, v755, sub_1D702DE54);
  v570 = v884;
  v569 = v885;
  v571 = v885(v568, 1, v884);
  v816 = v560;
  if (v571 == 1)
  {
    sub_1D7031C2C(v568, sub_1D702DE54);
    v572 = v764;
    (*(v449 + 56))(v764, 1, 1, v448);
  }

  else
  {
    v573 = v568 + v570[14];
    v574 = v568;
    v572 = v764;
    sub_1D702DE88(v573, v764, sub_1D5E3B6E0);
    v575 = v574;
    v560 = v816;
    sub_1D7031C2C(v575, type metadata accessor for FeedClusteringOptions);
    if (v457(v572, 1, v448) != 1)
    {
      (*(v449 + 32))(v863, v572, v448);
      goto LABEL_203;
    }
  }

  sub_1D72593BC();
  if (v457(v572, 1, v448) != 1)
  {
    sub_1D7031C2C(v572, sub_1D5E3B6E0);
  }

LABEL_203:
  sub_1D702DE88(v883, v552, sub_1D702DE54);
  if (v569(v552, 1, v570) == 1)
  {
    sub_1D7031C2C(v552, sub_1D702DE54);
    (*(v449 + 56))(v567, 1, 1, v448);
    v576 = v763;
  }

  else
  {
    sub_1D702DE88(v552 + v570[14], v567, sub_1D5E3B6E0);
    sub_1D7031C2C(v552, type metadata accessor for FeedClusteringOptions);
    v577 = v457(v567, 1, v448);
    v576 = v763;
    if (v577 != 1)
    {
      (*(v449 + 32))(v864, v567, v448);
      goto LABEL_209;
    }
  }

  sub_1D72593BC();
  if (v457(v567, 1, v448) != 1)
  {
    sub_1D7031C2C(v567, sub_1D5E3B6E0);
  }

LABEL_209:
  v578 = v757;
  sub_1D702DE88(v882, v757, sub_1D702DE54);
  if (v569(v578, 1, v570) == 1)
  {
    sub_1D7031C2C(v578, sub_1D702DE54);
    v579 = v761;
  }

  else
  {
    v580 = *(v578 + v570[15]);

    sub_1D7031C2C(v578, type metadata accessor for FeedClusteringOptions);
    v579 = v761;
    if (v580)
    {
      goto LABEL_213;
    }
  }

  v580 = sub_1D5C44DF4(MEMORY[0x1E69E7CC0]);

LABEL_213:
  v764 = v580;
  v581 = v758;
  sub_1D702DE88(v883, v758, sub_1D702DE54);
  if (v569(v581, 1, v570) == 1)
  {
    sub_1D7031C2C(v581, sub_1D702DE54);
  }

  else
  {
    v582 = *(v581 + v570[15]);

    sub_1D7031C2C(v581, type metadata accessor for FeedClusteringOptions);
    if (v582)
    {
      goto LABEL_217;
    }
  }

  v582 = sub_1D5C44DF4(MEMORY[0x1E69E7CC0]);

LABEL_217:
  v758 = v582;
  v583 = v760;
  sub_1D702DE88(v879, v760, sub_1D702DE54);
  if (v569(v583, 1, v570) == 1)
  {
    sub_1D7031C2C(v583, sub_1D702DE54);
  }

  else
  {
    v584 = *(v583 + v570[15]);

    sub_1D7031C2C(v583, type metadata accessor for FeedClusteringOptions);
    if (v584)
    {
      goto LABEL_221;
    }
  }

  v584 = sub_1D5C44DF4(MEMORY[0x1E69E7CC0]);

LABEL_221:
  sub_1D702DE88(v882, v579, sub_1D702DE54);
  if (v569(v579, 1, v570) == 1)
  {
    sub_1D7031C2C(v579, sub_1D702DE54);
    v585 = v870;
  }

  else
  {
    v586 = v579 + v570[16];
    v587 = v579;
    v588 = *v586;
    v589 = *(v586 + 8);
    sub_1D7031C2C(v587, type metadata accessor for FeedClusteringOptions);
    v458 = v589 == 0;
    v569 = v885;
    v585 = v870;
    if (v458)
    {
      v585 = v588;
    }
  }

  v763 = v585;
  v590 = v762;
  sub_1D702DE88(v883, v762, sub_1D702DE54);
  if (v569(v590, 1, v570) == 1)
  {
    sub_1D7031C2C(v590, sub_1D702DE54);
    v760 = v560;
  }

  else
  {
    v591 = v590 + v570[16];
    v592 = v590;
    v593 = *v591;
    v594 = *(v591 + 8);
    sub_1D7031C2C(v592, type metadata accessor for FeedClusteringOptions);
    v458 = v594 == 0;
    v569 = v885;
    if (v458)
    {
      v595 = v593;
    }

    else
    {
      v595 = v560;
    }

    v760 = v595;
  }

  sub_1D702DE88(v880, v576, sub_1D702DE54);
  v596 = v569(v576, 1, v570);
  v597 = v771;
  if (v596 == 1)
  {
    sub_1D7031C2C(v576, sub_1D702DE54);
    v598 = v870;
  }

  else
  {
    v599 = v576 + v570[16];
    v600 = *v599;
    v601 = *(v599 + 8);
    sub_1D7031C2C(v576, type metadata accessor for FeedClusteringOptions);
    v458 = v601 == 0;
    v569 = v885;
    v598 = v870;
    if (v458)
    {
      v598 = v600;
    }
  }

  v762 = v598;
  v602 = v765;
  sub_1D702DE88(v879, v765, sub_1D702DE54);
  if (v569(v602, 1, v570) == 1)
  {
    sub_1D7031C2C(v602, sub_1D702DE54);
    v603 = v848;
  }

  else
  {
    v604 = v602 + v570[16];
    v605 = *v604;
    v606 = *(v604 + 8);
    sub_1D7031C2C(v602, type metadata accessor for FeedClusteringOptions);
    v458 = v606 == 0;
    v569 = v885;
    v603 = v848;
    if (v458)
    {
      v603 = v605;
    }
  }

  v765 = v603;
  v607 = v849;
  v608 = v773;
  v609 = v766;
  sub_1D702DE88(v882, v766, sub_1D702DE54);
  v610 = v569(v609, 1, v570);
  v761 = v584;
  if (v610 == 1)
  {
    sub_1D7031C2C(v609, sub_1D702DE54);
    (*(v449 + 56))(v597, 1, 1, v448);
  }

  else
  {
    sub_1D702DE88(v609 + v570[17], v597, sub_1D5E3B6E0);
    sub_1D7031C2C(v609, type metadata accessor for FeedClusteringOptions);
    if (v457(v597, 1, v448) != 1)
    {
      (*(v449 + 32))(v865, v597, v448);
      v612 = v880;
      goto LABEL_248;
    }
  }

  sub_1D72593BC();
  v611 = v457(v597, 1, v448);
  v612 = v880;
  if (v611 != 1)
  {
    sub_1D7031C2C(v597, sub_1D5E3B6E0);
  }

LABEL_248:
  v613 = v767;
  sub_1D702DE88(v883, v767, sub_1D702DE54);
  if (v569(v613, 1, v570) == 1)
  {
    sub_1D7031C2C(v613, sub_1D702DE54);
    (*(v449 + 56))(v608, 1, 1, v448);
  }

  else
  {
    sub_1D702DE88(v613 + v570[17], v608, sub_1D5E3B6E0);
    sub_1D7031C2C(v613, type metadata accessor for FeedClusteringOptions);
    if (v457(v608, 1, v448) != 1)
    {
      (*(v449 + 32))(v866, v608, v448);
      goto LABEL_254;
    }
  }

  sub_1D72593BC();
  if (v457(v608, 1, v448) != 1)
  {
    sub_1D7031C2C(v608, sub_1D5E3B6E0);
  }

LABEL_254:
  v614 = v768;
  sub_1D702DE88(v612, v768, sub_1D702DE54);
  if (v569(v614, 1, v570) == 1)
  {
    sub_1D7031C2C(v614, sub_1D702DE54);
    (*(v449 + 56))(v607, 1, 1, v448);
    v615 = v824;
    v616 = v772;
  }

  else
  {
    sub_1D702DE88(v614 + v570[17], v607, sub_1D5E3B6E0);
    sub_1D7031C2C(v614, type metadata accessor for FeedClusteringOptions);
    v617 = v457(v607, 1, v448);
    v615 = v824;
    v616 = v772;
    if (v617 != 1)
    {
      (*(v449 + 32))(v867, v607, v448);
      goto LABEL_260;
    }
  }

  sub_1D72593BC();
  if ((*(v449 + 48))(v607, 1, v448) != 1)
  {
    sub_1D7031C2C(v607, sub_1D5E3B6E0);
  }

LABEL_260:
  v618 = v769;
  sub_1D702DE88(v882, v769, sub_1D702DE54);
  if (v569(v618, 1, v570) == 1)
  {
    sub_1D7031C2C(v618, sub_1D702DE54);
    v619 = sub_1D725935C();
    (*(*(v619 - 8) + 56))(v868, 1, 1, v619);
  }

  else
  {
    sub_1D702DE88(v618 + v570[20], v868, sub_1D5E3B6C0);
    sub_1D7031C2C(v618, type metadata accessor for FeedClusteringOptions);
  }

  v620 = v850;
  v621 = v770;
  sub_1D702DE88(v883, v770, sub_1D702DE54);
  if (v569(v621, 1, v570) == 1)
  {
    sub_1D7031C2C(v621, sub_1D702DE54);
    v622 = sub_1D725935C();
    (*(*(v622 - 8) + 56))(v869, 1, 1, v622);
  }

  else
  {
    sub_1D702DE88(v621 + v570[20], v869, sub_1D5E3B6C0);
    sub_1D7031C2C(v621, type metadata accessor for FeedClusteringOptions);
  }

  v623 = *(v449 + 16);
  v623(v817, v858, v448);
  v623(v818, v861, v448);
  v623(v819, v864, v448);
  v623(v820, v866, v448);
  v623(v821, v855, v448);
  v881 = v449 + 16;
  v850 = v623;
  v623(v822, v852, v448);
  sub_1D702DE88(v883, v616, sub_1D702DE54);
  if (v569(v616, 1, v570) == 1)
  {
    v624 = sub_1D702DE54;
    v625 = v616;
  }

  else
  {
    v626 = v729;
    sub_1D702DE88(v616 + v570[8], v729, sub_1D5E3B330);
    sub_1D7031C2C(v616, type metadata accessor for FeedClusteringOptions);
    v627 = type metadata accessor for FeedGroupBundleArticleQuotas();
    if ((*(*(v627 - 8) + 48))(v626, 1, v627) != 1)
    {
      v850(v871, v626 + *(v627 + 24), v448);

      sub_1D725941C();
      sub_1D7031C2C(v626, type metadata accessor for FeedGroupBundleArticleQuotas);
      v633 = v872;
      v634 = v873;
      v849 = *(v872 + 56);
      (v849)(v620, 0, 1, v873);
      (*(v633 + 32))(v823, v620, v634);
      v632 = v774;
      goto LABEL_273;
    }

    v624 = sub_1D5E3B330;
    v625 = v626;
  }

  sub_1D7031C2C(v625, v624);
  v628 = v872;
  v629 = v873;
  v849 = *(v872 + 56);
  v630 = (v849)(v620, 1, 1, v873);
  MEMORY[0x1DA6F0AC0](v630);
  v631 = (*(v628 + 48))(v620, 1, v629);
  v632 = v774;
  if (v631 != 1)
  {
    sub_1D7031C2C(v620, sub_1D7031B94);
  }

LABEL_273:
  sub_1D702DE88(v883, v632, sub_1D702DE54);
  if (v569(v632, 1, v570) == 1)
  {
    sub_1D7031C2C(v632, sub_1D702DE54);
    v636 = v874;
    v635 = v875;
    v637 = v778;
    v883 = *(v874 + 56);
    v883(v778, 1, 1, v875);
    sub_1D72593DC();
    if ((*(v636 + 48))(v637, 1, v635) != 1)
    {
      sub_1D7031C2C(v637, sub_1D7031B60);
    }
  }

  else
  {
    v638 = (v632 + v570[18]);
    sub_1D67113E8(*v638, v638[1], v638[2], v638[3], v638[4]);
    v639 = v778;
    sub_1D72593EC();
    sub_1D7031C2C(v632, type metadata accessor for FeedClusteringOptions);
    v641 = v874;
    v640 = v875;
    v883 = *(v874 + 56);
    v883(v639, 0, 1, v875);
    (*(v641 + 32))(v615, v639, v640);
  }

  v778 = a14;
  sub_1D702DE88(v869, v878, sub_1D5E3B6C0);
  sub_1D72592EC();
  sub_1D72592FC();
  sub_1D725930C();
  sub_1D72592DC();
  sub_1D72592AC();
  sub_1D72592BC();
  sub_1D725931C();
  sub_1D72592CC();
  sub_1D7031B18(&qword_1EDF18930, 255, MEMORY[0x1E69E3478]);
  sub_1D7031B18(&qword_1EDF18938, 255, MEMORY[0x1E69E3448]);
  sub_1D725937C();
  v642 = v876;
  v643 = v850;
  v850(v825, v859, v876);
  v643(v826, v862, v642);
  v821 = sub_1D5C44DF4(MEMORY[0x1E69E7CC0]);
  v643(v827, v867, v642);
  v643(v828, v856, v642);
  v643(v829, v853, v642);
  v644 = v880;
  v645 = v775;
  sub_1D702DE88(v880, v775, sub_1D702DE54);
  v646 = v884;
  if (v885(v645, 1, v884) == 1)
  {
    sub_1D7031C2C(v645, sub_1D702DE54);
    v647 = v831;
    v648 = v777;
  }

  else
  {
    v649 = v730;
    sub_1D702DE88(v645 + v646[8], v730, sub_1D5E3B330);
    sub_1D7031C2C(v645, type metadata accessor for FeedClusteringOptions);
    v650 = type metadata accessor for FeedGroupBundleArticleQuotas();
    v651 = (*(*(v650 - 8) + 48))(v649, 1, v650);
    v648 = v777;
    if (v651 != 1)
    {
      v850(v871, v649 + *(v650 + 24), v642);

      v658 = v780;
      sub_1D725941C();
      sub_1D7031C2C(v649, type metadata accessor for FeedGroupBundleArticleQuotas);
      v659 = v872;
      v660 = v873;
      (v849)(v658, 0, 1, v873);
      (*(v659 + 32))(v830, v658, v660);
      v647 = v831;
      v657 = v885;
      goto LABEL_284;
    }

    sub_1D7031C2C(v649, sub_1D5E3B330);
    v647 = v831;
  }

  v652 = v872;
  v653 = v780;
  v654 = v873;
  v655 = (v849)(v780, 1, 1, v873);
  MEMORY[0x1DA6F0AC0](v655);
  v656 = (*(v652 + 48))(v653, 1, v654);
  v657 = v885;
  if (v656 != 1)
  {
    sub_1D7031C2C(v653, sub_1D7031B94);
  }

LABEL_284:
  sub_1D702DE88(v644, v648, sub_1D702DE54);
  v661 = v884;
  if (v657(v648, 1, v884) == 1)
  {
    sub_1D7031C2C(v648, sub_1D702DE54);
    v663 = v874;
    v662 = v875;
    v664 = v782;
    v883(v782, 1, 1, v875);
    sub_1D72593DC();
    if ((*(v663 + 48))(v664, 1, v662) != 1)
    {
      sub_1D7031C2C(v664, sub_1D7031B60);
    }
  }

  else
  {
    v665 = (v648 + v661[18]);
    sub_1D67113E8(*v665, v665[1], v665[2], v665[3], v665[4]);
    v666 = v782;
    sub_1D72593EC();
    sub_1D7031C2C(v648, type metadata accessor for FeedClusteringOptions);
    v668 = v874;
    v667 = v875;
    v883(v666, 0, 1, v875);
    (*(v668 + 32))(v647, v666, v667);
  }

  v669 = sub_1D725935C();
  v670 = *(v669 - 8);
  v671 = *(v670 + 56);
  v824 = v669;
  v823 = v671;
  v822 = (v670 + 56);
  (v671)(v878, 1, 1);
  sub_1D72593BC();
  v880 = sub_1D72591EC();
  sub_1D72591FC();
  sub_1D725920C();
  sub_1D72591DC();
  sub_1D72591AC();
  sub_1D72591BC();
  sub_1D725921C();
  sub_1D72591CC();
  sub_1D7031B18(&qword_1EDF18958, 255, MEMORY[0x1E69E33D8]);
  sub_1D7031B18(&unk_1EDF18960, 255, MEMORY[0x1E69E33A8]);
  sub_1D725937C();
  v672 = v877;
  [v877 channelScoreWeight];
  v880 = v673;
  (*(v785 + 104))(v846, **(&unk_1E84D0A98 + v776), v788);
  v831 = sub_1D7023524(v778);
  [v672 managedTopicMultiplier];
  v830 = v674;
  [v672 managedWinnerTopicMultiplier];
  v829 = [v672 maxNumberOfTotalTopicAndChannelGroups];
  v675 = v779;
  sub_1D702DE88(v879, v779, sub_1D702DE54);
  v676 = v884;
  if (v885(v675, 1, v884) == 1)
  {
    sub_1D7031C2C(v675, sub_1D702DE54);
    v677 = v834;
    v678 = v791;
    v679 = v781;
  }

  else
  {
    v680 = v731;
    sub_1D702DE88(v675 + v676[8], v731, sub_1D5E3B330);
    sub_1D7031C2C(v675, type metadata accessor for FeedClusteringOptions);
    v681 = type metadata accessor for FeedGroupBundleArticleQuotas();
    v682 = (*(*(v681 - 8) + 48))(v680, 1, v681);
    v677 = v834;
    v679 = v781;
    if (v682 != 1)
    {
      v850(v871, v680 + *(v681 + 24), v876);

      v686 = v791;
      sub_1D725941C();
      sub_1D7031C2C(v680, type metadata accessor for FeedGroupBundleArticleQuotas);
      v687 = v872;
      v688 = v873;
      (v849)(v686, 0, 1, v873);
      v689 = v686;
      v676 = v884;
      (*(v687 + 32))(v833, v689, v688);
      goto LABEL_295;
    }

    sub_1D7031C2C(v680, sub_1D5E3B330);
    v678 = v791;
  }

  v683 = v872;
  v684 = v873;
  v685 = (v849)(v678, 1, 1, v873);
  MEMORY[0x1DA6F0AC0](v685);
  if ((*(v683 + 48))(v678, 1, v684) != 1)
  {
    sub_1D7031C2C(v678, sub_1D7031B94);
  }

LABEL_295:
  sub_1D702DE88(v879, v679, sub_1D702DE54);
  if (v885(v679, 1, v676) == 1)
  {
    sub_1D7031C2C(v679, sub_1D702DE54);
    v691 = v874;
    v690 = v875;
    v692 = v793;
    v883(v793, 1, 1, v875);
    sub_1D72593DC();
    if ((*(v691 + 48))(v692, 1, v690) != 1)
    {
      sub_1D7031C2C(v692, sub_1D7031B60);
    }
  }

  else
  {
    v693 = (v679 + v676[18]);
    sub_1D67113E8(*v693, v693[1], v693[2], v693[3], v693[4]);
    v694 = v793;
    sub_1D72593EC();
    sub_1D7031C2C(v679, type metadata accessor for FeedClusteringOptions);
    v696 = v874;
    v695 = v875;
    v883(v694, 0, 1, v875);
    (*(v696 + 32))(v677, v694, v695);
  }

  (v823)(v878, 1, 1, v824);
  sub_1D72593BC();
  sub_1D72593BC();
  sub_1D72593BC();
  sub_1D72593BC();
  sub_1D72593BC();
  sub_1D72593BC();
  v879 = sub_1D725926C();
  v828 = sub_1D725927C();
  v827 = sub_1D725928C();
  sub_1D725925C();
  sub_1D725922C();
  sub_1D725923C();
  sub_1D725929C();
  sub_1D725924C();
  sub_1D7031B18(&qword_1EDF18940, 255, MEMORY[0x1E69E3428]);
  sub_1D7031B18(&unk_1EDF18948, 255, MEMORY[0x1E69E33F8]);
  sub_1D725937C();
  v697 = v877;
  [v877 relatedTopicMultiplier];
  [v697 relatedTopicRatioFilter];
  v879 = [v697 thumbnailMinHammingDistance];
  [v697 topicAutofavoritedMultiplier];
  v698 = v876;
  v699 = v850;
  v850(v835, v857, v876);
  v699(v836, v860, v698);
  v699(v837, v863, v698);
  v699(v838, v865, v698);
  v699(v839, v854, v698);
  v699(v840, v851, v698);
  v700 = v882;
  v701 = v784;
  sub_1D702DE88(v882, v784, sub_1D702DE54);
  v702 = v884;
  if (v885(v701, 1, v884) == 1)
  {
    v703 = sub_1D702DE54;
    v704 = v701;
  }

  else
  {
    v705 = v732;
    sub_1D702DE88(v701 + v702[8], v732, sub_1D5E3B330);
    sub_1D7031C2C(v701, type metadata accessor for FeedClusteringOptions);
    v706 = type metadata accessor for FeedGroupBundleArticleQuotas();
    if ((*(*(v706 - 8) + 48))(v705, 1, v706) != 1)
    {
      v850(v871, v705 + *(v706 + 24), v698);

      v714 = v794;
      sub_1D725941C();
      sub_1D7031C2C(v705, type metadata accessor for FeedGroupBundleArticleQuotas);
      v715 = v872;
      v716 = v873;
      (v849)(v714, 0, 1, v873);
      (*(v715 + 32))(v842, v714, v716);
      v712 = v844;
      v713 = v884;
      goto LABEL_306;
    }

    v703 = sub_1D5E3B330;
    v704 = v705;
  }

  sub_1D7031C2C(v704, v703);
  v707 = v794;
  v708 = v872;
  v709 = v873;
  v710 = (v849)(v794, 1, 1, v873);
  MEMORY[0x1DA6F0AC0](v710);
  v711 = (*(v708 + 48))(v707, 1, v709);
  v712 = v844;
  v713 = v884;
  if (v711 != 1)
  {
    sub_1D7031C2C(v707, sub_1D7031B94);
  }

LABEL_306:
  LODWORD(v881) = a13;
  LODWORD(v873) = a12;
  v717 = v792;
  sub_1D702DE88(v700, v792, sub_1D702DE54);
  if (v885(v717, 1, v713) == 1)
  {
    sub_1D7031C2C(v717, sub_1D702DE54);
    v719 = v874;
    v718 = v875;
    v720 = v795;
    v883(v795, 1, 1, v875);
    sub_1D72593DC();
    if ((*(v719 + 48))(v720, 1, v718) != 1)
    {
      sub_1D7031C2C(v720, sub_1D7031B60);
    }
  }

  else
  {
    v721 = v795;
    sub_1D7023490();
    sub_1D7031C2C(v717, type metadata accessor for FeedClusteringOptions);
    v723 = v874;
    v722 = v875;
    v883(v721, 0, 1, v875);
    (*(v723 + 32))(v712, v721, v722);
  }

  sub_1D702DE88(v868, v878, sub_1D5E3B6C0);
  sub_1D725904C();
  sub_1D725905C();
  sub_1D725906C();
  sub_1D725903C();
  sub_1D725901C();
  sub_1D725902C();
  sub_1D725907C();
  sub_1D725908C();
  sub_1D7031B18(&unk_1EDF18988, 255, MEMORY[0x1E69E3328]);
  sub_1D7031B18(&qword_1EDF18980, 255, MEMORY[0x1E69E3338]);
  sub_1D725937C();
  v724 = v877;
  [v877 topicFavoritedMultiplier];
  [v724 topicGroupSizeMultiplier];
  [v724 topicGroupableMultiplier];
  [v724 topicScoreWeight];
  [v724 topicSpecificityMultiplier];
  sub_1D725909C();
  sub_1D7031C2C(v869, sub_1D5E3B6C0);
  sub_1D7031C2C(v868, sub_1D5E3B6C0);
  v725 = *(v841 + 8);
  v726 = v876;
  v725(v867, v876);
  v725(v866, v726);
  v725(v865, v726);
  v725(v864, v726);
  v725(v863, v726);
  v725(v862, v726);
  v725(v861, v726);
  v725(v860, v726);
  v725(v859, v726);
  v725(v858, v726);
  v725(v857, v726);
  v725(v856, v726);
  v725(v855, v726);
  v725(v854, v726);
  v725(v853, v726);
  v725(v852, v726);
  return (v725)(v851, v726);
}