uint64_t sub_24F2CB644()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 56);

  return v0;
}

uint64_t sub_24F2CB718()
{
  sub_24F2CB644();

  return swift_deallocClassInstance();
}

uint64_t sub_24F2CB790@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X3>, int a4@<W4>, void *a5@<X5>, uint64_t a6@<X8>)
{
  v100 = a5;
  *&v112 = a2;
  v103 = sub_24F91EAA8();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v101 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for CallProviderConversationHandleSet();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v99 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for Player(0);
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v96 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v109 = &v96 - v18;
  LODWORD(v19) = *a1;
  v20 = *(a1 + 2);
  v113 = *(a1 + 1);
  if (!v19)
  {
    v97 = v16;
    v98 = a4;
    v108 = a3;
    v111 = a6;
    v27 = sub_24F2C1B10();
    if (v28)
    {
      v23 = *v112;
      if (*(*v112 + 16))
      {
        v24 = sub_24E76D644(v27, v28);
        v30 = v29;

        if (v30)
        {
          goto LABEL_23;
        }
      }

      else
      {
      }
    }

    v23 = *(v112 + 8);
    v37 = sub_24F92B198();
    if (*(v23 + 16))
    {
      v24 = sub_24E76D644(v37, v38);
      v40 = v39;

      if (v40)
      {
        goto LABEL_23;
      }
    }

    else
    {
    }

    v23 = *(v112 + 16);
    v41 = sub_24F92B198();
    if (*(v23 + 16))
    {
      v24 = sub_24E76D644(v41, v42);
      v44 = v43;

      if (v44)
      {
        goto LABEL_23;
      }
    }

    else
    {
    }

    if (qword_27F211458 != -1)
    {
      swift_once();
    }

    v46 = sub_24F9220D8();
    __swift_project_value_buffer(v46, qword_27F39E958);

    v47 = sub_24F9220B8();
    v48 = sub_24F92BDB8();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *&v115 = v50;
      *v49 = 136380931;
      *(v49 + 4) = sub_24E7620D4(v113, v20, &v115);
      *(v49 + 12) = 2080;
      *(v49 + 14) = sub_24E7620D4(0x636972656E6567, 0xE700000000000000, &v115);
      _os_log_impl(&dword_24E5DD000, v47, v48, "Can't find contact for recent call handle %{private}s with type %s", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530542D0](v50, -1, -1);
      MEMORY[0x2530542D0](v49, -1, -1);
    }

    goto LABEL_30;
  }

  if (v19 != 1)
  {
    v97 = v16;
    v98 = a4;
    v108 = a3;
    v111 = a6;
    v23 = *(v112 + 8);
    v31 = sub_24F92B198();
    if (*(v23 + 16))
    {
      v24 = sub_24E76D644(v31, v32);
      v34 = v33;

      if ((v34 & 1) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_23;
    }

LABEL_14:

LABEL_30:
    v45 = MEMORY[0x277D84F90];
    goto LABEL_31;
  }

  v21 = sub_24F2C1B10();
  if (!v22)
  {
    v35 = type metadata accessor for SocialUser();
    return (*(*(v35 - 8) + 56))(a6, 1, 1, v35);
  }

  v97 = v16;
  v98 = a4;
  v108 = a3;
  v111 = a6;
  v23 = *v112;
  if (!*(*v112 + 16))
  {
    goto LABEL_14;
  }

  v24 = sub_24E76D644(v21, v22);
  v26 = v25;

  if ((v26 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_23:
  v45 = *(*(v23 + 56) + 8 * v24);

LABEL_31:
  v118 = MEMORY[0x277D84FA0];
  v51 = sub_24F2CC66C(v45);

  v110 = v6;
  if (v51 >> 62)
  {
    goto LABEL_59;
  }

  for (i = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
  {
    v53 = 0;
    v54 = v51 & 0xC000000000000001;
    v113 = v51 & 0xFFFFFFFFFFFFFF8;
    while (i != v53)
    {
      if (v54)
      {
        v55 = MEMORY[0x253052270](v53, v51);
      }

      else
      {
        if (v53 >= *(v113 + 16))
        {
          goto LABEL_56;
        }

        v55 = *(v51 + 8 * v53 + 32);
      }

      v19 = v55;
      if (__OFADD__(v53, 1))
      {
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v56 = [v55 identifier];
      v57 = sub_24F92B0D8();
      v20 = v58;

      LOBYTE(v56) = sub_24ED7C5F0(&v115, v57, v20);

      ++v53;
      if ((v56 & 1) == 0)
      {

        v75 = type metadata accessor for SocialUser();
        (*(*(v75 - 8) + 56))(v111, 1, 1, v75);
      }
    }

    v59 = *(v106 + 56);
    v105 = v106 + 56;
    v104 = v59;
    (v59)(v109, 1, 1, v107);
    v60 = 0;
    v61 = *(v112 + 32);
    *&v112 = v51;
    while (1)
    {
      if (v54)
      {
        v63 = MEMORY[0x253052270](v60, v51);
      }

      else
      {
        if (v60 >= *(v113 + 16))
        {
          goto LABEL_58;
        }

        v63 = *(v51 + 8 * v60 + 32);
      }

      v19 = v63;
      v51 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        break;
      }

      v64 = [v63 identifier];
      v20 = sub_24F92B0D8();
      v66 = v65;

      if (*(v61 + 16))
      {
        v20 = sub_24E76D644(v20, v66);
        v68 = v67;

        if (v68)
        {
          v69 = *(*(v61 + 56) + 8 * v20);
          if (*(v69 + 16))
          {
            v70 = v96;
            sub_24F2CC85C(v69 + ((*(v106 + 80) + 32) & ~*(v106 + 80)), v96, type metadata accessor for Player);

            v71 = v109;
            sub_24E601704(v109, &unk_27F23E1F0);
            sub_24F2CC924(v70, v71, type metadata accessor for Player);
            (v104)(v71, 0, 1, v107);
LABEL_54:
            v72 = v109;
            v73 = v97;
            sub_24E60169C(v109, v97, &unk_27F23E1F0);
            v74 = v108[1];
            v115 = *v108;
            v116 = v74;
            v117 = v108[2];
            sub_24F2CC824(v108, v114);
            SocialUser.init(player:contacts:callProviders:includeSocialProfiles:preferPlayerName:)(v73, &v115, 1, v98 & 1, v111);
            sub_24E601704(v72, &unk_27F23E1F0);
          }
        }
      }

      else
      {
      }

      ++v60;
      v62 = v51 == i;
      v51 = v112;
      if (v62)
      {
        goto LABEL_54;
      }
    }

LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    ;
  }

  v76 = v108;
  v77 = v108[1];
  v115 = *v108;
  v116 = v77;
  v117 = v108[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1D0);
  inited = swift_initStackObject();
  v112 = xmmword_24F93DE60;
  *(inited + 16) = xmmword_24F93DE60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213858);
  v79 = swift_allocObject();
  *(v79 + 16) = v112;
  *(v79 + 32) = v19;
  v80 = v113;
  *(v79 + 40) = v113;
  *(v79 + 48) = v20;

  sub_24F2CC824(v76, v114);
  sub_24F26E39C(v79, (inited + 32));
  v81 = v99;
  sub_24F4B6440(&v115, inited, 0, v99);

  v82 = [v100 callerNameForDisplay];
  v83 = sub_24F92B0D8();
  *&v112 = v84;

  v85 = 0xEB00000000726564;
  *&v115 = 0x6C6F686563616C70;
  *(&v115 + 1) = 0xEB00000000726564;
  v86 = v101;
  sub_24F91EA28();
  sub_24E600AEC();
  v87 = sub_24F92C578();
  v89 = v88;
  (*(v102 + 8))(v86, v103);
  if (v89)
  {
    v90 = v87;
  }

  else
  {
    v90 = 0x6C6F686563616C70;
  }

  if (v89)
  {
    v85 = v89;
  }

  *&v115 = 0x3A746361746E6F63;
  *(&v115 + 1) = 0xEA00000000002F2FLL;
  MEMORY[0x253050C20](v90, v85);

  v91 = v115;
  v92 = type metadata accessor for SocialUser();
  v93 = *(v92 + 36);
  v94 = v111;
  sub_24F2CC924(v81, v111 + v93, type metadata accessor for CallProviderConversationHandleSet);
  v104[7](v94 + v93, 0, 1, v105);
  *v94 = v80;
  *(v94 + 8) = v20;
  *(v94 + 16) = 0;
  *(v94 + 24) = 0;
  v95 = v112;
  *(v94 + 32) = v83;
  *(v94 + 40) = v95;
  *(v94 + 48) = 0;
  *(v94 + 56) = 0;
  *(v94 + 64) = v91;
  (*(*(v92 - 8) + 56))(v94, 0, 1, v92);
}

uint64_t sub_24F2CC3DC(unint64_t *a1)
{
  v3 = *a1;
  v4 = sub_24F2BE598(*a1);
  v6 = v4;
  if (v1)
  {
    return v6;
  }

  if (v5)
  {
    if (v3 >> 62)
    {
      return sub_24F92C738();
    }

    return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v27 = a1;
  v7 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v3 >> 62)
    {
      if (v7 == sub_24F92C738())
      {
        return v6;
      }
    }

    else if (v7 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v6;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x253052270](v7, v3);
      goto LABEL_16;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_41;
    }

    v9 = *(v3 + 8 * v7 + 32);
LABEL_16:
    v10 = v9;
    v11 = [v9 identifier];
    v12 = sub_24F92B0D8();
    v14 = v13;

    LOBYTE(v14) = sub_24ED7C5F0(&v26, v12, v14);

    if (v14)
    {
      if (v6 != v7)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x253052270](v6, v3);
          v16 = MEMORY[0x253052270](v7, v3);
        }

        else
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            goto LABEL_45;
          }

          v17 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v6 >= v17)
          {
            goto LABEL_46;
          }

          if (v7 >= v17)
          {
            goto LABEL_47;
          }

          v18 = *(v3 + 32 + 8 * v7);
          v15 = *(v3 + 32 + 8 * v6);
          v16 = v18;
        }

        v19 = v16;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
        {
          v3 = sub_24ECDE964(v3);
          v20 = (v3 >> 62) & 1;
        }

        else
        {
          LODWORD(v20) = 0;
        }

        v21 = v3 & 0xFFFFFFFFFFFFFF8;
        v22 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
        *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v19;

        if ((v3 & 0x8000000000000000) != 0 || v20)
        {
          v3 = sub_24ECDE964(v3);
          v21 = v3 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_38:
            __break(1u);
            return v6;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_38;
        }

        if (v7 >= *(v21 + 16))
        {
          goto LABEL_44;
        }

        v23 = v21 + 8 * v7;
        v24 = *(v23 + 32);
        *(v23 + 32) = v15;

        *v27 = v3;
      }

LABEL_8:
      v8 = __OFADD__(v6++, 1);
      if (v8)
      {
        goto LABEL_43;
      }
    }

    v8 = __OFADD__(v7++, 1);
    if (v8)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return sub_24F92C738();
}

uint64_t sub_24F2CC66C(unint64_t a1)
{
  v12 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_16:
    v2 = sub_24F92C738();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x253052270](v3, a1);
          v6 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_13:
            __break(1u);
            return v12;
          }
        }

        else
        {
          if (v3 >= *(v4 + 16))
          {
            __break(1u);
            goto LABEL_16;
          }

          v5 = *(a1 + 8 * v3 + 32);
          v6 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_13;
          }
        }

        v7 = v5;
        v8 = sub_24ED80060(&v11, v7);

        if (v8)
        {
          sub_24F92C948();
          sub_24F92C988();
          v4 = v10;
          sub_24F92C998();
          sub_24F92C958();
        }

        else
        {
        }

        ++v3;
        if (v6 == v2)
        {
          return v12;
        }
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_24F2CC85C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F2CC8C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F2CC924(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_24F2CC98C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v67 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E230);
  MEMORY[0x28223BE20](v7 - 8);
  v61 = v40 - v8;
  v9 = type metadata accessor for SocialUserGroup();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v63 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v53 = v40 - v13;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2138C0);
  v62 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v54 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v40 - v16;
  v18 = a3 >> 1;
  if (v18 != a2)
  {
    v46 = (a4 + 96);
    v40[2] = a4 + 144;
    v43 = (a4 + 136);
    v40[1] = a4 + 128;
    v42 = (a4 + 120);
    v40[0] = a4 + 112;
    v41 = (a4 + 104);
    v50 = (a4 + 152);
    v40[4] = a4 + 192;
    v45 = (a4 + 184);
    v49 = (a4 + 176);
    v40[3] = a4 + 168;
    v44 = (a4 + 160);
    v48 = (a4 + 200);
    v40[7] = a4 + 224;
    v47 = (a4 + 216);
    v40[6] = a4 + 208;
    v51 = v10;
    v57 = (v10 + 48);
    v58 = (v10 + 56);
    if (a2 <= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = a2;
    }

    v60 = v19;
    v20 = MEMORY[0x277D84F90];
    v52 = a4;
    v59 = v9;
    v56 = v18;
    v21 = v54;
    while (1)
    {
      if (v60 == a2)
      {
        __break(1u);
        return;
      }

      sub_24E60169C(v67 + *(v62 + 72) * a2, v17, &qword_27F2138C0);
      if (*(a4 + 80))
      {
LABEL_37:
        v34 = a4;
        sub_24E60169C(v17, v21, &qword_27F2138C0);
        v35 = v61;
        sub_24F2CC924(v21 + *(v55 + 48), v61, type metadata accessor for SocialUserGroup);
        (*v58)(v35, 0, 1, v9);
        sub_24F2CC8C4(v21, type metadata accessor for Score);
        goto LABEL_38;
      }

      v22 = *(a4 + 72);
      type metadata accessor for Score(0);
      sub_24F91F5C8();
      v24 = exp(v23 * 0.693147181 / *(a4 + 88));
      v25 = *v17;
      if (v25 > 2)
      {
        break;
      }

      v26 = v46;
      v9 = v59;
      if (*v17)
      {
        v26 = v41;
        if (v25 != 1)
        {
          v27 = &v64;
LABEL_20:
          v26 = *(v27 - 32);
        }
      }

LABEL_21:
      v28 = *v26;
      v29 = v17[1];
      if (v29 > 2)
      {
        v30 = v49;
        if (v29 != 3)
        {
          v30 = v45;
          if (v29 != 4)
          {
            v31 = &v68;
            goto LABEL_28;
          }
        }
      }

      else
      {
        v30 = v50;
        if (v17[1])
        {
          v30 = v44;
          if (v29 != 1)
          {
            v31 = &v67;
LABEL_28:
            v30 = *(v31 - 32);
          }
        }
      }

      if (v17[2] > 1u)
      {
        v32 = v47;
        if (v17[2] == 2)
        {
          goto LABEL_35;
        }

        v33 = &v70;
      }

      else
      {
        v32 = v48;
        if (!v17[2])
        {
          goto LABEL_35;
        }

        v33 = &v69;
      }

      v32 = *(v33 - 32);
LABEL_35:
      if (v24 * v28 * *v30 * *v32 >= v22)
      {
        goto LABEL_37;
      }

      v34 = a4;
      v35 = v61;
      (*v58)(v61, 1, 1, v9);
LABEL_38:
      sub_24E601704(v17, &qword_27F2138C0);
      if ((*v57)(v35, 1, v9) == 1)
      {
        sub_24E601704(v35, &unk_27F23E230);
        a4 = v34;
      }

      else
      {
        v36 = v35;
        v37 = v53;
        sub_24F2CC924(v36, v53, type metadata accessor for SocialUserGroup);
        sub_24F2CC924(v37, v63, type metadata accessor for SocialUserGroup);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_24E6181C8(0, v20[2] + 1, 1, v20);
        }

        v39 = v20[2];
        v38 = v20[3];
        if (v39 >= v38 >> 1)
        {
          v20 = sub_24E6181C8(v38 > 1, v39 + 1, 1, v20);
        }

        v20[2] = v39 + 1;
        sub_24F2CC924(v63, v20 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v39, type metadata accessor for SocialUserGroup);
        a4 = v52;
        v9 = v59;
      }

      if (v56 == ++a2)
      {
        return;
      }
    }

    if (*v17 > 4u)
    {
      v26 = v43;
      v9 = v59;
      if (v25 == 5)
      {
        goto LABEL_21;
      }

      v27 = &v66;
    }

    else
    {
      v26 = v42;
      v9 = v59;
      if (v25 == 3)
      {
        goto LABEL_21;
      }

      v27 = &v65;
    }

    goto LABEL_20;
  }
}

unint64_t sub_24F2CD020(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

unint64_t sub_24F2CD030(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

unint64_t sub_24F2CD040(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

void sub_24F2CD050(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, double *a5)
{
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2138C0);
  MEMORY[0x28223BE20](v139);
  v11 = v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v127 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = v127 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = v127 - v19;
  v136 = *(v21 + 72);
  if (*&v136 == 0.0)
  {
    __break(1u);
LABEL_175:
    __break(1u);
LABEL_176:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && *&v136 == NAN)
  {
    goto LABEL_175;
  }

  v22 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && *&v136 == NAN)
  {
    goto LABEL_176;
  }

  v23 = (a2 - a1) / v136;
  v151 = a1;
  v150 = a4;
  if (v23 >= v22 / v136)
  {
    v25 = a2;
    v26 = v22 / v136 * v136;
    if (a4 < v25 || v25 + v26 <= a4)
    {
      v27 = v25;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      v27 = v25;
      if (a4 != v25)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v68 = a4 + v26;
    if (v26 < 1)
    {
      v71 = v27;
      goto LABEL_172;
    }

    *&v69 = -v136;
    v147 = 0.693147181;
    *&v70 = a4 + v26;
    v71 = v27;
    v128 = a4;
    *&v148 = -v136;
    while (1)
    {
      v72 = v68;
      v73 = v71;
      v131 = v71 + *&v69;
      v127[0] = v68;
      v129 = v71;
      while (1)
      {
        if (v73 <= a1)
        {
          v151 = v73;
          v149 = v127[0];
          goto LABEL_173;
        }

        v74 = a3;
        v75 = *&v72;
        v146 = v70;
        v72 = *&v70 + *&v69;
        sub_24E60169C(*&v70 + *&v69, v14, &qword_27F2138C0);
        sub_24E60169C(v131, v11, &qword_27F2138C0);
        type metadata accessor for Score(0);
        sub_24F91F5C8();
        v77 = a5[11];
        v78 = exp(v76 * v147 / v77);
        v79 = a5[12];
        v80 = a5[13];
        v82 = a5[14];
        v81 = a5[15];
        v84 = a5[16];
        v83 = a5[17];
        v85 = a5[18];
        v86 = *v14;
        v137 = v79;
        if (v86 <= 2)
        {
          if (v86)
          {
            if (v86 == 1)
            {
              v79 = v80;
            }

            else
            {
              v79 = v82;
            }
          }
        }

        else if (v86 > 4)
        {
          v79 = v83;
          if (v86 != 5)
          {
            v79 = v85;
          }
        }

        else
        {
          v79 = v81;
          if (v86 != 3)
          {
            v79 = v84;
          }
        }

        v88 = a5[19];
        v87 = a5[20];
        v90 = a5[21];
        v89 = a5[22];
        v91 = a5[23];
        v92 = a5[24];
        v93 = v14[1];
        v145 = v77;
        if (v93 > 2)
        {
          v94 = v89;
          if (v93 != 3)
          {
            v94 = v91;
            if (v93 != 4)
            {
              v94 = v92;
            }
          }
        }

        else
        {
          v94 = v88;
          if (v93)
          {
            if (v93 == 1)
            {
              v94 = v87;
            }

            else
            {
              v94 = v90;
            }
          }
        }

        v96 = a5[25];
        v95 = a5[26];
        v98 = a5[27];
        v97 = a5[28];
        v99 = v14[2];
        v134 = v83;
        v130 = v85;
        v133 = v81;
        v132 = v84;
        *&v136 = v82;
        v135 = v80;
        v143 = v96;
        v144 = v92;
        v141 = v98;
        v142 = v91;
        v140 = v94;
        v100 = v79;
        v101 = v78;
        if (v99 > 1)
        {
          v96 = v98;
          if (v99 != 2)
          {
            v96 = v97;
          }
        }

        else if (v99)
        {
          v96 = v95;
        }

        v138 = v96;
        sub_24F91F5C8();
        v103 = exp(v102 * v147 / v145);
        v104 = *v11;
        if (v104 <= 2)
        {
          v112 = *&v136;
          if (v104 == 1)
          {
            v112 = v135;
          }

          if (*v11)
          {
            v110 = v112;
          }

          else
          {
            v110 = v137;
          }

          v105 = v148;
          v106 = v101;
          v107 = v100;
          v111 = v140;
          v108 = v142;
          v109 = v144;
          goto LABEL_134;
        }

        v105 = v148;
        v106 = v101;
        v107 = v100;
        v108 = v142;
        v109 = v144;
        if (*v11 <= 4u)
        {
          if (v104 == 3)
          {
            v110 = v133;
          }

          else
          {
            v110 = v132;
          }

          v111 = v140;
LABEL_134:
          v113 = v143;
          v114 = v141;
          v115 = v138;
          goto LABEL_135;
        }

        v110 = v134;
        v111 = v140;
        v114 = v141;
        v113 = v143;
        v115 = v138;
        if (v104 != 5)
        {
          v110 = v130;
        }

LABEL_135:
        v116 = v11[1];
        if (v116 == 4)
        {
          v117 = v108;
        }

        else
        {
          v117 = v109;
        }

        if (v116 == 3)
        {
          v117 = v89;
        }

        if (v116 == 1)
        {
          v118 = v87;
        }

        else
        {
          v118 = v90;
        }

        if (!v11[1])
        {
          v118 = v88;
        }

        if (v11[1] <= 2u)
        {
          v117 = v118;
        }

        v145 = v75;
        if (v11[2] == 2)
        {
          v119 = v114;
        }

        else
        {
          v119 = v97;
        }

        if (v11[2])
        {
          v120 = v95;
        }

        else
        {
          v120 = v113;
        }

        if (v11[2] <= 1u)
        {
          v119 = v120;
        }

        v121 = v14;
        v122 = v11;
        v123 = a3 + *&v105;
        v124 = v106 * v107 * v111 * v115;
        v125 = v103 * v110 * v117 * v119;
        v126 = v122;
        sub_24E601704(v122, &qword_27F2138C0);
        sub_24E601704(v121, &qword_27F2138C0);
        if (v125 < v124)
        {
          break;
        }

        a3 = v123;
        if (v74 < *&v146 || v123 >= *&v146)
        {
          swift_arrayInitWithTakeFrontToBack();
          v11 = v126;
        }

        else
        {
          v11 = v126;
          if (v74 != *&v146)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v70 = *&v72;
        v14 = v121;
        v69 = v148;
        v73 = v129;
        if (v72 <= v128)
        {
          v71 = v129;
          v68 = v72;
          goto LABEL_172;
        }
      }

      a3 = v123;
      v71 = v131;
      if (v74 < v129 || v123 >= v129)
      {
        swift_arrayInitWithTakeFrontToBack();
        v71 = v131;
        v11 = v126;
        v68 = *&v145;
      }

      else
      {
        v11 = v126;
        v68 = *&v145;
        if (v74 != v129)
        {
          swift_arrayInitWithTakeBackToFront();
          v71 = v131;
        }
      }

      v70 = v146;
      v14 = v121;
      v69 = v148;
      if (*&v146 <= v128)
      {
LABEL_172:
        v151 = v71;
        v149 = v68;
        goto LABEL_173;
      }
    }
  }

  v24 = v23 * v136;
  if (a4 < a1 || a1 + v24 <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a4 != a1)
  {
    swift_arrayInitWithTakeBackToFront();
  }

  v131 = a4 + v24;
  v149 = a4 + v24;
  if (v24 >= 1 && a2 < a3)
  {
    v148 = 0.693147181;
    v130 = *&a3;
    do
    {
      sub_24E60169C(a2, v20, &qword_27F2138C0);
      sub_24E60169C(a4, v17, &qword_27F2138C0);
      type metadata accessor for Score(0);
      sub_24F91F5C8();
      v144 = a5[11];
      v147 = exp(v29 * v148 / v144);
      v30 = a5[12];
      v31 = a5[13];
      v33 = a5[14];
      v32 = a5[15];
      v35 = a5[16];
      v34 = a5[17];
      v36 = a5[18];
      v37 = *v20;
      v138 = v30;
      if (v37 <= 2)
      {
        if (v37)
        {
          if (v37 == 1)
          {
            v30 = v31;
          }

          else
          {
            v30 = v33;
          }
        }
      }

      else if (v37 > 4)
      {
        v30 = v34;
        if (v37 != 5)
        {
          v30 = v36;
        }
      }

      else
      {
        v30 = v32;
        if (v37 != 3)
        {
          v30 = v35;
        }
      }

      v38 = a5[19];
      v39 = a5[20];
      v41 = a5[21];
      v40 = a5[22];
      v43 = a5[23];
      v42 = a5[24];
      v44 = v20[1];
      v145 = v38;
      if (v44 > 2)
      {
        v38 = v40;
        if (v44 != 3)
        {
          v38 = v43;
          if (v44 != 4)
          {
            v38 = v42;
          }
        }
      }

      else if (v44)
      {
        if (v44 == 1)
        {
          v38 = v39;
        }

        else
        {
          v38 = v41;
        }
      }

      v45 = a5[25];
      v46 = a5[26];
      v47 = a5[27];
      v48 = a5[28];
      v49 = v20[2];
      v146 = v30;
      v132 = v36;
      v135 = v34;
      v134 = v32;
      v133 = v35;
      v137 = v31;
      v142 = v47;
      v143 = v45;
      v50 = v40;
      if (v49 > 1)
      {
        v45 = v47;
        if (v49 != 2)
        {
          v45 = v48;
        }
      }

      else if (v49)
      {
        v45 = v46;
      }

      v140 = v45;
      v141 = v48;
      v51 = v46;
      sub_24F91F5C8();
      v53 = exp(v52 * v148 / v144);
      v54 = *v17;
      if (v54 <= 2)
      {
        v56 = v137;
        if (v54 != 1)
        {
          v56 = v33;
        }

        if (*v17)
        {
          v55 = v56;
        }

        else
        {
          v55 = v138;
        }
      }

      else
      {
        if (*v17 > 4u)
        {
          v55 = v135;
          v58 = v141;
          v57 = v142;
          if (v54 != 5)
          {
            v55 = v132;
          }

          goto LABEL_55;
        }

        if (v54 == 3)
        {
          v55 = v134;
        }

        else
        {
          v55 = v133;
        }
      }

      v58 = v141;
      v57 = v142;
LABEL_55:
      v59 = v17[1];
      if (v59 == 4)
      {
        v60 = v43;
      }

      else
      {
        v60 = v42;
      }

      if (v59 == 3)
      {
        v60 = v50;
      }

      if (v59 == 1)
      {
        v61 = v39;
      }

      else
      {
        v61 = v41;
      }

      if (!v17[1])
      {
        v61 = v145;
      }

      if (v17[1] <= 2u)
      {
        v60 = v61;
      }

      v62 = v136;
      if (v17[2] == 2)
      {
        v63 = v57;
      }

      else
      {
        v63 = v58;
      }

      v64 = v143;
      if (v17[2])
      {
        v64 = v51;
      }

      if (v17[2] <= 1u)
      {
        v63 = v64;
      }

      v65 = v147 * v146 * v38 * v140;
      v66 = v53 * v55 * v60 * v63;
      sub_24E601704(v17, &qword_27F2138C0);
      sub_24E601704(v20, &qword_27F2138C0);
      if (v66 >= v65)
      {
        v67 = *&v130;
        if (a1 < a4 || a1 >= a4 + v62)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v150 = a4 + v62;
        a4 += v62;
      }

      else
      {
        v67 = *&v130;
        if (a1 < a2 || a1 >= a2 + v62)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v62;
      }

      a1 += v62;
      v151 = a1;
    }

    while (a4 < v131 && a2 < v67);
  }

LABEL_173:
  sub_24F8FB020(&v151, &v150, &v149);
}

uint64_t sub_24F2CDB54(char **a1, unint64_t a2, uint64_t *a3, double *a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v26 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_16:
    v26 = sub_24E86164C(v26);
  }

  v21 = v6;
  *v6 = v26;
  v6 = (v26 + 16);
  v8 = *(v26 + 2);
  if (v8 < 2)
  {
LABEL_10:

    *v21 = v26;
    return 1;
  }

  else
  {
    v22 = (v26 + 16);
    while (1)
    {
      v9 = *a3;
      if (!*a3)
      {
        break;
      }

      v10 = &v26[16 * v8];
      v11 = *v10;
      v12 = &v6[2 * v8];
      v13 = *v12;
      v14 = v12[1];
      v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2138C0) - 8) + 72);
      v16 = v9 + v15 * v11;
      v6 = (v9 + v15 * v13);
      v17 = v9 + v15 * v14;

      sub_24F2CD050(v16, v6, v17, a2, a4);

      if (v5)
      {
        *v21 = v26;

        return 1;
      }

      if (v14 < v11)
      {
        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      v6 = (v26 + 16);
      v18 = *v22;
      if (v8 - 2 >= *v22)
      {
        goto LABEL_14;
      }

      *v10 = v11;
      *(v10 + 1) = v14;
      v19 = v18 - v8;
      if (v18 < v8)
      {
        goto LABEL_15;
      }

      v8 = v18 - 1;
      memmove(v12, v12 + 2, 16 * v19);
      *v22 = v8;
      if (v8 <= 1)
      {
        goto LABEL_10;
      }
    }

    *v21 = v26;
    __break(1u);
  }

  return result;
}

uint64_t sub_24F2CDD20(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, double *a5)
{
  v196 = a1;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2138C0);
  v201 = *(v226 - 8);
  MEMORY[0x28223BE20](v226);
  v198 = &v191 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v225 = &v191 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v191 - v12;
  MEMORY[0x28223BE20](v14);
  v229 = &v191 - v15;
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  v216 = &v191 - v18;
  MEMORY[0x28223BE20](v19);
  v193 = &v191 - v20;
  MEMORY[0x28223BE20](v21);
  v192 = &v191 - v23;
  v230 = MEMORY[0x277D84F90];
  v207 = a3;
  v24 = a3[1];
  if (v24 >= 1)
  {
    v215 = v22;
    swift_retain_n();
    v25 = 0;
    v205 = MEMORY[0x277D84F90];
    v228 = 0.693147181;
    v206 = a5;
    v195 = a4;
    v200 = v13;
LABEL_5:
    if (v25 + 1 >= v24)
    {
      v80 = v25 + 1;
      goto LABEL_85;
    }

    v209 = v24;
    v26 = *v207;
    v27 = *(v201 + 72);
    v28 = *v207 + *&v27 * (v25 + 1);
    v29 = v192;
    sub_24E60169C(v28, v192, &qword_27F2138C0);
    v30 = v193;
    sub_24E60169C(v26 + *&v27 * v25, v193, &qword_27F2138C0);
    v203 = sub_24F2C65AC(v29);
    v202 = sub_24F2C65AC(v30);
    sub_24E601704(v30, &qword_27F2138C0);
    sub_24E601704(v29, &qword_27F2138C0);
    v194 = v25;
    v31 = v25 + 2;
    v218 = v27;
    v32 = v26 + *&v27 * (v25 + 2);
    v33 = v206;
    while (1)
    {
      if (v209 == v31)
      {
        v80 = v209;
        goto LABEL_70;
      }

      v52 = v216;
      sub_24E60169C(v32, v216, &qword_27F2138C0);
      sub_24E60169C(v28, v215, &qword_27F2138C0);
      type metadata accessor for Score(0);
      sub_24F91F5C8();
      v227 = v33[11];
      v54 = exp(v53 * v228 / v227);
      v56 = v33[12];
      v55 = v33[13];
      v58 = v33[14];
      v57 = v33[15];
      v60 = v33[16];
      v59 = v33[17];
      v61 = v33[18];
      v62 = *v52;
      v217 = v56;
      if (v62 <= 2)
      {
        if (v62)
        {
          if (v62 == 1)
          {
            v56 = v55;
          }

          else
          {
            v56 = v58;
          }
        }
      }

      else if (v62 > 4)
      {
        v56 = v59;
        if (v62 != 5)
        {
          v56 = v61;
        }
      }

      else
      {
        v56 = v57;
        if (v62 != 3)
        {
          v56 = v60;
        }
      }

      v63 = v33[19];
      v64 = v33[20];
      v66 = v33[21];
      v65 = v33[22];
      v67 = v33[23];
      v68 = v33[24];
      v69 = v216[1];
      if (v69 > 2)
      {
        v70 = v33[22];
        if (v69 != 3)
        {
          v70 = v33[23];
          if (v69 != 4)
          {
            v70 = v33[24];
          }
        }
      }

      else
      {
        v70 = v33[19];
        if (v216[1])
        {
          if (v69 == 1)
          {
            v70 = v33[20];
          }

          else
          {
            v70 = v33[21];
          }
        }
      }

      v71 = v33[25];
      v72 = v33[26];
      v74 = v33[27];
      v73 = v33[28];
      v75 = v216[2];
      v212 = v59;
      v204 = v61;
      v211 = v57;
      v210 = v60;
      v214 = v55;
      v213 = v58;
      v223 = v71;
      v224 = v68;
      v221 = v74;
      v222 = v72;
      v220 = v67;
      v76 = v64;
      if (v75 > 1)
      {
        if (v75 != 2)
        {
          v74 = v73;
        }
      }

      else if (v75)
      {
        v74 = v72;
      }

      else
      {
        v74 = v71;
      }

      v219 = v74;
      sub_24F91F5C8();
      v78 = exp(v77 * v228 / v227);
      v79 = *v215;
      if (v79 <= 2)
      {
        v34 = v214;
        if (v79 != 1)
        {
          v34 = v213;
        }

        if (*v215)
        {
          v35 = v34;
        }

        else
        {
          v35 = v217;
        }

        v36 = v56;
        v37 = v76;
        v38 = v220;
        v39 = v224;
      }

      else
      {
        v36 = v56;
        v37 = v76;
        v38 = v220;
        v39 = v224;
        if (*v215 > 4u)
        {
          v35 = v212;
          v41 = v222;
          v40 = v223;
          v42 = v221;
          v43 = v219;
          if (v79 != 5)
          {
            v35 = v204;
          }

          goto LABEL_14;
        }

        if (v79 == 3)
        {
          v35 = v211;
        }

        else
        {
          v35 = v210;
        }
      }

      v41 = v222;
      v40 = v223;
      v42 = v221;
      v43 = v219;
LABEL_14:
      v44 = v215[1];
      if (v44 == 4)
      {
        v45 = v38;
      }

      else
      {
        v45 = v39;
      }

      if (v44 == 3)
      {
        v45 = v65;
      }

      if (v44 == 1)
      {
        v46 = v37;
      }

      else
      {
        v46 = v66;
      }

      if (!v215[1])
      {
        v46 = v63;
      }

      if (v215[1] <= 2u)
      {
        v45 = v46;
      }

      if (v215[2] == 2)
      {
        v47 = v42;
      }

      else
      {
        v47 = v73;
      }

      if (v215[2])
      {
        v48 = v41;
      }

      else
      {
        v48 = v40;
      }

      if (v215[2] <= 1u)
      {
        v47 = v48;
      }

      v49 = v202 < v203;
      v50 = v54 * v36 * v70 * v43;
      v51 = v78 * v35 * v45 * v47;
      sub_24E601704(v215, &qword_27F2138C0);
      sub_24E601704(v216, &qword_27F2138C0);
      ++v31;
      v32 += *&v218;
      v28 += *&v218;
      if (((v49 ^ (v51 >= v50)) & 1) == 0)
      {
        v80 = v31 - 1;
LABEL_70:
        a4 = v195;
        v25 = v194;
        if (v202 >= v203)
        {
          goto LABEL_83;
        }

        if (v80 < v194)
        {
          goto LABEL_219;
        }

        if (v194 >= v80)
        {
LABEL_83:
          a5 = v206;
        }

        else
        {
          v81 = *&v218 * (v80 - 1);
          v82 = v80 * *&v218;
          v83 = v80;
          v84 = v194;
          v85 = v194 * *&v218;
          do
          {
            if (v84 != --v80)
            {
              v86 = *v207;
              if (!*v207)
              {
                goto LABEL_224;
              }

              sub_24E6009C8(v86 + v85, v198, &qword_27F2138C0);
              if (v85 < v81 || v86 + v85 >= (v86 + v82))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v85 != v81)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_24E6009C8(v198, v86 + v81, &qword_27F2138C0);
            }

            ++v84;
            v81 -= *&v218;
            v82 -= *&v218;
            v85 += *&v218;
          }

          while (v84 < v80);
          a5 = v206;
          a4 = v195;
          v25 = v194;
          v80 = v83;
        }

LABEL_85:
        v87 = v207[1];
        if (v80 >= v87)
        {
          goto LABEL_148;
        }

        if (__OFSUB__(v80, v25))
        {
          goto LABEL_218;
        }

        if (v80 - v25 >= a4)
        {
          goto LABEL_148;
        }

        if (__OFADD__(v25, a4))
        {
          goto LABEL_220;
        }

        if (v25 + a4 < v87)
        {
          v87 = v25 + a4;
        }

        if (v87 < v25)
        {
LABEL_221:
          __break(1u);
LABEL_222:

          __break(1u);
LABEL_223:

          __break(1u);
LABEL_224:

          __break(1u);
          goto LABEL_225;
        }

        if (v80 == v87)
        {
          goto LABEL_148;
        }

        v199 = v87;
        v88 = *v207;
        v89 = a5[11];
        v224 = a5[12];
        v90 = a5[14];
        v221 = a5[13];
        v212 = v90;
        v91 = a5[16];
        v220 = a5[15];
        v211 = v91;
        v92 = a5[18];
        v219 = a5[17];
        v210 = v92;
        v93 = a5[20];
        v227 = a5[19];
        v223 = v93;
        v94 = a5[22];
        v214 = a5[21];
        v95 = a5[24];
        v222 = a5[23];
        v213 = v95;
        v96 = a5[25];
        v218 = a5[26];
        v97 = *(v201 + 72);
        v98 = v88 + v97 * (v80 - 1);
        v99 = a5;
        v100 = -v97;
        v194 = v25;
        *&v101 = v25 - v80;
        v102 = v88;
        v197 = v97;
        *&v103 = v88 + v80 * v97;
        v104 = v99[27];
        v217 = v99[28];
LABEL_95:
        v209 = v80;
        v202 = v103;
        v105 = *&v103;
        v203 = v101;
        v204 = *&v98;
        v106 = v98;
        while (2)
        {
          v107 = v229;
          sub_24E60169C(v105, v229, &qword_27F2138C0);
          sub_24E60169C(v106, v13, &qword_27F2138C0);
          type metadata accessor for Score(0);
          sub_24F91F5C8();
          v109 = exp(v108 * v228 / v89);
          v110 = *v107;
          if (v110 <= 2)
          {
            v111 = v224;
            if (!*v107)
            {
              goto LABEL_106;
            }

            v111 = v221;
            if (v110 == 1)
            {
              goto LABEL_106;
            }

            v112 = &v233;
          }

          else
          {
            if (*v107 <= 4u)
            {
              v111 = v220;
              if (v110 != 3)
              {
                v112 = &v232;
                break;
              }

LABEL_106:
              v113 = v229[1];
              if (v113 > 2)
              {
                v114 = v94;
                if (v113 != 3)
                {
                  v114 = v222;
                  if (v113 != 4)
                  {
                    v115 = &v234;
LABEL_113:
                    v114 = *(v115 - 32);
                  }
                }
              }

              else
              {
                v114 = v227;
                if (v229[1])
                {
                  v114 = v223;
                  if (v113 != 1)
                  {
                    v115 = &v235;
                    goto LABEL_113;
                  }
                }
              }

              if (v229[2] > 1u)
              {
                v116 = v104;
                if (v229[2] != 2)
                {
                  v116 = v217;
                }
              }

              else
              {
                v116 = v96;
                if (v229[2])
                {
                  v116 = v218;
                }
              }

              sub_24F91F5C8();
              v118 = exp(v117 * v228 / v89);
              v119 = *v13;
              if (v119 <= 2)
              {
                v120 = v224;
                if (!*v13)
                {
                  goto LABEL_129;
                }

                v120 = v221;
                if (v119 == 1)
                {
                  goto LABEL_129;
                }

                v121 = &v233;
              }

              else
              {
                if (*v13 <= 4u)
                {
                  v120 = v220;
                  if (v119 != 3)
                  {
                    v121 = &v232;
                    goto LABEL_128;
                  }

LABEL_129:
                  v122 = v13[1];
                  if (v122 > 2)
                  {
                    v123 = v94;
                    if (v122 != 3)
                    {
                      v123 = v222;
                      if (v122 != 4)
                      {
                        v124 = &v234;
LABEL_136:
                        v123 = *(v124 - 32);
                      }
                    }
                  }

                  else
                  {
                    v123 = v227;
                    if (v13[1])
                    {
                      v123 = v223;
                      if (v122 != 1)
                      {
                        v124 = &v235;
                        goto LABEL_136;
                      }
                    }
                  }

                  if (v13[2] > 1u)
                  {
                    v125 = v104;
                    if (v13[2] != 2)
                    {
                      v125 = v217;
                    }
                  }

                  else
                  {
                    v125 = v96;
                    if (v13[2])
                    {
                      v125 = v218;
                    }
                  }

                  v126 = v109 * v111 * v114 * v116;
                  v127 = v118 * v120 * v123 * v125;
                  sub_24E601704(v13, &qword_27F2138C0);
                  sub_24E601704(v229, &qword_27F2138C0);
                  if (v127 < v126)
                  {
                    if (!v102)
                    {
                      goto LABEL_222;
                    }

                    v128 = v225;
                    sub_24E6009C8(v105, v225, &qword_27F2138C0);
                    swift_arrayInitWithTakeFrontToBack();
                    sub_24E6009C8(v128, v106, &qword_27F2138C0);
                    v106 += v100;
                    v105 += v100;
                    if (!__CFADD__((*&v101)++, 1))
                    {
                      continue;
                    }
                  }

                  v80 = v209 + 1;
                  v98 = *&v204 + v197;
                  *&v101 = *&v203 - 1;
                  *&v103 = *&v202 + v197;
                  if (v209 + 1 != v199)
                  {
                    goto LABEL_95;
                  }

                  v25 = v194;
                  v80 = v199;
LABEL_148:
                  v130 = v205;
                  if (v80 < v25)
                  {
                    goto LABEL_217;
                  }

                  v199 = v80;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v130 = sub_24E615ED8(0, *(v130 + 2) + 1, 1, v130);
                  }

                  v132 = *(v130 + 2);
                  v131 = *(v130 + 3);
                  v133 = v132 + 1;
                  if (v132 >= v131 >> 1)
                  {
                    v130 = sub_24E615ED8((v131 > 1), v132 + 1, 1, v130);
                  }

                  *(v130 + 2) = v133;
                  v134 = v130 + 32;
                  v135 = &v130[16 * v132 + 32];
                  v136 = v199;
                  *v135 = v25;
                  *(v135 + 1) = v136;
                  v230 = v130;
                  v227 = *v196;
                  if (v227 != 0.0)
                  {
                    v205 = v130;
                    if (!v132)
                    {
LABEL_4:
                      v24 = v207[1];
                      v25 = v199;
                      a5 = v206;
                      a4 = v195;
                      if (v199 >= v24)
                      {
                        goto LABEL_199;
                      }

                      goto LABEL_5;
                    }

                    while (2)
                    {
                      v137 = v133 - 1;
                      if (v133 >= 4)
                      {
                        v142 = &v134[16 * v133];
                        v143 = *(v142 - 8);
                        v144 = *(v142 - 7);
                        v148 = __OFSUB__(v144, v143);
                        v145 = v144 - v143;
                        if (v148)
                        {
                          goto LABEL_206;
                        }

                        v147 = *(v142 - 6);
                        v146 = *(v142 - 5);
                        v148 = __OFSUB__(v146, v147);
                        v140 = v146 - v147;
                        v141 = v148;
                        if (v148)
                        {
                          goto LABEL_207;
                        }

                        v149 = &v130[16 * v133];
                        v151 = *v149;
                        v150 = *(v149 + 1);
                        v148 = __OFSUB__(v150, v151);
                        v152 = v150 - v151;
                        if (v148)
                        {
                          goto LABEL_209;
                        }

                        v148 = __OFADD__(v140, v152);
                        v153 = v140 + v152;
                        if (v148)
                        {
                          goto LABEL_212;
                        }

                        if (v153 >= v145)
                        {
                          v171 = &v134[16 * v137];
                          v173 = *v171;
                          v172 = *(v171 + 1);
                          v148 = __OFSUB__(v172, v173);
                          v174 = v172 - v173;
                          if (v148)
                          {
                            goto LABEL_216;
                          }

                          if (v140 < v174)
                          {
                            v137 = v133 - 2;
                          }
                        }

                        else
                        {
LABEL_168:
                          if (v141)
                          {
                            goto LABEL_208;
                          }

                          v154 = &v130[16 * v133];
                          v156 = *v154;
                          v155 = *(v154 + 1);
                          v157 = __OFSUB__(v155, v156);
                          v158 = v155 - v156;
                          v159 = v157;
                          if (v157)
                          {
                            goto LABEL_211;
                          }

                          v160 = &v134[16 * v137];
                          v162 = *v160;
                          v161 = *(v160 + 1);
                          v148 = __OFSUB__(v161, v162);
                          v163 = v161 - v162;
                          if (v148)
                          {
                            goto LABEL_214;
                          }

                          if (__OFADD__(v158, v163))
                          {
                            goto LABEL_215;
                          }

                          if (v158 + v163 < v140)
                          {
                            goto LABEL_182;
                          }

                          if (v140 < v163)
                          {
                            v137 = v133 - 2;
                          }
                        }
                      }

                      else
                      {
                        if (v133 == 3)
                        {
                          v138 = *(v130 + 4);
                          v139 = *(v130 + 5);
                          v148 = __OFSUB__(v139, v138);
                          v140 = v139 - v138;
                          v141 = v148;
                          goto LABEL_168;
                        }

                        v164 = &v130[16 * v133];
                        v166 = *v164;
                        v165 = *(v164 + 1);
                        v148 = __OFSUB__(v165, v166);
                        v158 = v165 - v166;
                        v159 = v148;
LABEL_182:
                        if (v159)
                        {
                          goto LABEL_210;
                        }

                        v167 = &v134[16 * v137];
                        v169 = *v167;
                        v168 = *(v167 + 1);
                        v148 = __OFSUB__(v168, v169);
                        v170 = v168 - v169;
                        if (v148)
                        {
                          goto LABEL_213;
                        }

                        if (v170 < v158)
                        {
                          goto LABEL_3;
                        }
                      }

                      if (v137 - 1 >= v133)
                      {
                        __break(1u);
LABEL_203:
                        __break(1u);
LABEL_204:
                        __break(1u);
LABEL_205:
                        __break(1u);
LABEL_206:
                        __break(1u);
LABEL_207:
                        __break(1u);
LABEL_208:
                        __break(1u);
LABEL_209:
                        __break(1u);
LABEL_210:
                        __break(1u);
LABEL_211:
                        __break(1u);
LABEL_212:
                        __break(1u);
LABEL_213:
                        __break(1u);
LABEL_214:
                        __break(1u);
LABEL_215:
                        __break(1u);
LABEL_216:
                        __break(1u);
LABEL_217:
                        __break(1u);
LABEL_218:
                        __break(1u);
LABEL_219:
                        __break(1u);
LABEL_220:
                        __break(1u);
                        goto LABEL_221;
                      }

                      v175 = *v207;
                      if (!*v207)
                      {
                        goto LABEL_223;
                      }

                      v176 = &v134[16 * v137 - 16];
                      v177 = *v176;
                      v178 = v137;
                      v179 = &v134[16 * v137];
                      v180 = *(v179 + 1);
                      v181 = *(v201 + 72);
                      v182 = v175 + v181 * *v176;
                      v183 = v175 + v181 * *v179;
                      v184 = v175 + v181 * v180;
                      v185 = v206;

                      v186 = v182;
                      v187 = v208;
                      sub_24F2CD050(v186, v183, v184, *&v227, v185);
                      v208 = v187;
                      if (v187)
                      {

                        v230 = v205;
                        goto LABEL_201;
                      }

                      if (v180 < v177)
                      {
                        goto LABEL_203;
                      }

                      v130 = v205;
                      v188 = *(v205 + 2);
                      if (v178 > v188)
                      {
                        goto LABEL_204;
                      }

                      *v176 = v177;
                      *(v176 + 1) = v180;
                      if (v178 >= v188)
                      {
                        goto LABEL_205;
                      }

                      v133 = v188 - 1;
                      memmove(v179, v179 + 16, 16 * (v188 - 1 - v178));
                      *(v130 + 2) = v188 - 1;
                      v13 = v200;
                      if (v188 <= 2)
                      {
LABEL_3:
                        v230 = v130;
                        goto LABEL_4;
                      }

                      continue;
                    }
                  }

LABEL_225:

                  __break(1u);
LABEL_226:

                  __break(1u);
                  return result;
                }

                v120 = v219;
                if (v119 == 5)
                {
                  goto LABEL_129;
                }

                v121 = &v231;
              }

LABEL_128:
              v120 = *(v121 - 32);
              goto LABEL_129;
            }

            v111 = v219;
            if (v110 == 5)
            {
              goto LABEL_106;
            }

            v112 = &v231;
          }

          break;
        }

        v111 = *(v112 - 32);
        goto LABEL_106;
      }
    }
  }

  swift_retain_n();
LABEL_199:
  v189 = *v196;
  if (!*v196)
  {
    goto LABEL_226;
  }

  sub_24F2CDB54(&v230, v189, v207, a5);

LABEL_201:
}

void sub_24F2CEDB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2138C0);
  MEMORY[0x28223BE20](v78);
  v77 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v55 - v12;
  MEMORY[0x28223BE20](v14);
  v17 = &v55 - v16;
  v57 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(a5 + 88);
    v74 = *(a5 + 96);
    v20 = *(a5 + 112);
    v71 = *(a5 + 104);
    v64 = v20;
    v21 = *(a5 + 128);
    v70 = *(a5 + 120);
    v63 = v21;
    v22 = *(a5 + 144);
    v69 = *(a5 + 136);
    v62 = v22;
    v23 = *(a5 + 160);
    v80 = *(a5 + 152);
    v73 = v23;
    v24 = *(a5 + 176);
    v66 = *(a5 + 168);
    v79 = v24;
    v25 = *(a5 + 192);
    v72 = *(a5 + 184);
    v65 = v25;
    v26 = *(v15 + 72);
    v27 = v18 + v26 * (a3 - 1);
    v75 = -v26;
    v76 = v18;
    v28 = *(a5 + 200);
    v68 = *(a5 + 208);
    v29 = a1 - a3;
    v56 = v26;
    v30 = v18 + v26 * a3;
    v31 = *(a5 + 216);
    v67 = *(a5 + 224);
LABEL_5:
    v61 = a3;
    v58 = v30;
    v32 = v30;
    v59 = v29;
    v60 = v27;
    while (1)
    {
      sub_24E60169C(v32, v17, &qword_27F2138C0);
      sub_24E60169C(v27, v13, &qword_27F2138C0);
      type metadata accessor for Score(0);
      sub_24F91F5C8();
      v34 = exp(v33 * 0.693147181 / v19);
      v35 = *v17;
      if (v35 > 2)
      {
        break;
      }

      v36 = v74;
      if (*v17)
      {
        v36 = v71;
        if (v35 != 1)
        {
          v37 = &v83;
LABEL_15:
          v36 = *(v37 - 32);
        }
      }

LABEL_16:
      v38 = v17[1];
      if (v38 > 2)
      {
        v39 = v79;
        if (v38 != 3)
        {
          v39 = v72;
          if (v38 != 4)
          {
            v40 = &v84;
            goto LABEL_23;
          }
        }
      }

      else
      {
        v39 = v80;
        if (v17[1])
        {
          v39 = v73;
          if (v38 != 1)
          {
            v40 = &v85;
LABEL_23:
            v39 = *(v40 - 32);
          }
        }
      }

      if (v17[2] > 1u)
      {
        v41 = v31;
        if (v17[2] != 2)
        {
          v41 = v67;
        }
      }

      else
      {
        v41 = v28;
        if (v17[2])
        {
          v41 = v68;
        }
      }

      sub_24F91F5C8();
      v43 = exp(v42 * 0.693147181 / v19);
      v44 = *v13;
      if (v44 > 2)
      {
        if (*v13 > 4u)
        {
          v45 = v69;
          if (v44 == 5)
          {
            goto LABEL_39;
          }

          v46 = &v81;
        }

        else
        {
          v45 = v70;
          if (v44 == 3)
          {
            goto LABEL_39;
          }

          v46 = &v82;
        }

        goto LABEL_38;
      }

      v45 = v74;
      if (*v13)
      {
        v45 = v71;
        if (v44 != 1)
        {
          v46 = &v83;
LABEL_38:
          v45 = *(v46 - 32);
        }
      }

LABEL_39:
      v47 = v13[1];
      if (v47 > 2)
      {
        v48 = v79;
        if (v47 != 3)
        {
          v48 = v72;
          if (v47 != 4)
          {
            v49 = &v84;
            goto LABEL_46;
          }
        }
      }

      else
      {
        v48 = v80;
        if (v13[1])
        {
          v48 = v73;
          if (v47 != 1)
          {
            v49 = &v85;
LABEL_46:
            v48 = *(v49 - 32);
          }
        }
      }

      if (v13[2] > 1u)
      {
        v50 = v31;
        if (v13[2] != 2)
        {
          v50 = v67;
        }
      }

      else
      {
        v50 = v28;
        if (v13[2])
        {
          v50 = v68;
        }
      }

      v51 = v34 * v36 * v39 * v41;
      v52 = v43 * v45 * v48 * v50;
      sub_24E601704(v13, &qword_27F2138C0);
      sub_24E601704(v17, &qword_27F2138C0);
      if (v52 >= v51)
      {
LABEL_4:
        a3 = v61 + 1;
        v27 = v60 + v56;
        v29 = v59 - 1;
        v30 = v58 + v56;
        if (v61 + 1 == v57)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v76)
      {
        __break(1u);
        return;
      }

      v53 = v77;
      sub_24E6009C8(v32, v77, &qword_27F2138C0);
      swift_arrayInitWithTakeFrontToBack();
      sub_24E6009C8(v53, v27, &qword_27F2138C0);
      v27 += v75;
      v32 += v75;
      if (__CFADD__(v29++, 1))
      {
        goto LABEL_4;
      }
    }

    if (*v17 > 4u)
    {
      v36 = v69;
      if (v35 == 5)
      {
        goto LABEL_16;
      }

      v37 = &v81;
    }

    else
    {
      v36 = v70;
      if (v35 == 3)
      {
        goto LABEL_16;
      }

      v37 = &v82;
    }

    goto LABEL_15;
  }
}

uint64_t sub_24F2CF2D8(uint64_t *a1, double *a2)
{
  v4 = a1[1];
  swift_retain_n();
  result = sub_24F92CD78();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2138C0);
        v8 = sub_24F92B618();
        *(v8 + 16) = v7;
      }

      v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2138C0) - 8);
      v10[0] = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v10[1] = v7;

      sub_24F2CDD20(v10, v11, a1, v6, a2);

      *(v8 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_24F2CEDB0(0, v4, 1, a1, a2);
  }
}

uint64_t sub_24F2CF474(void **a1, double *a2)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2138C0) - 8);
  v5 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_24E86182C(v5);
  }

  v6 = v5[2];
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v6;

  sub_24F2CF2D8(v8, a2);

  *a1 = v5;
}

uint64_t sub_24F2CF568(uint64_t a1, double *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 4;
  }

  result = *(a1 + 32);
  if (v2 != 1)
  {
    v5 = (a1 + 33);
    for (i = 1; ; ++i)
    {
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v9 = *v5++;
      v8 = v9;
      v10 = a2[25];
      v11 = a2[27];
      if (result == 2)
      {
        v12 = a2[27];
      }

      else
      {
        v12 = a2[28];
      }

      if (result)
      {
        v13 = a2[26];
      }

      else
      {
        v13 = a2[25];
      }

      if (result <= 1u)
      {
        v12 = v13;
      }

      if (v8 != 2)
      {
        v11 = a2[28];
      }

      if (v8)
      {
        v10 = a2[26];
      }

      if (v8 > 1)
      {
        v10 = v11;
      }

      if (v12 >= v10)
      {
        result = result;
      }

      else
      {
        result = v8;
      }

      if (v7 == v2)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24F2CF5F4()
{
  v0 = sub_24F91F648();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F91F8A8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91F888();
  sub_24F91F618();
  v8 = sub_24F91F868();
  (*(v1 + 8))(v3, v0);
  v9 = *(v5 + 8);
  v9(v7, v4);
  if (v8)
  {
    v10 = 0;
    v11 = 0;
    v12 = qword_27F2110A8;
    v13 = 1;
  }

  else
  {
    sub_24F91F888();
    v10 = sub_24F91F828();
    v9(v7, v4);
    v13 = 0;
    v12 = qword_27F2110A8;
    v11 = v10;
  }

  if (v12 != -1)
  {
    swift_once();
    v11 = v10;
  }

  v14 = qword_27F39E1E0;
  [qword_27F39E1E0 setDateStyle_];
  [v14 setTimeStyle_];
  [v14 setDoesRelativeDateFormatting_];
  if (qword_27F2110A8 != -1)
  {
    swift_once();
  }

  v15 = sub_24F91F578();
  v16 = [v14 stringFromDate_];

  v17 = sub_24F92B0D8();
  return v17;
}

uint64_t sub_24F2CF8B8()
{
  v14 = MEMORY[0x277D84FA0];
  v0 = objc_opt_self();
  v1 = [v0 hiddenAppBundleIdentifiers];
  v2 = sub_24F92BAA8();

  sub_24EAE4034(v3);
  sub_24EAE4034(v2);
  v4 = [v0 lockedAppBundleIdentifiers];
  v5 = sub_24F92BAA8();

  sub_24EAE4034(v6);
  sub_24EAE4034(v5);
  v7 = sub_24F92B098();
  v8 = sub_24F92B098();
  v9 = CFPreferencesCopyAppValue(v7, v8);

  if (v9)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_24F92B598();
    }

    swift_unknownObjectRelease();
  }

  v10 = sub_24F92B098();
  v11 = sub_24F92B098();
  v12 = CFPreferencesCopyAppValue(v10, v11);

  if (v12)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_24F92B598();
    }

    swift_unknownObjectRelease();
  }

  return v14;
}

uint64_t sub_24F2CFB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[27] = a7;
  v8[28] = v7;
  v8[25] = a5;
  v8[26] = a6;
  v8[23] = a3;
  v8[24] = a4;
  v8[21] = a1;
  v8[22] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();
  v9 = type metadata accessor for PlayActivity();
  v8[31] = v9;
  v8[32] = *(v9 - 8);
  v8[33] = swift_task_alloc();
  v10 = sub_24F91F648();
  v8[34] = v10;
  v8[35] = *(v10 - 8);
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();
  v8[38] = swift_task_alloc();
  v11 = type metadata accessor for Player(0);
  v8[39] = v11;
  v8[40] = *(v11 - 8);
  v8[41] = swift_task_alloc();
  v8[42] = swift_task_alloc();
  v8[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F2CFD1C, 0, 0);
}

uint64_t sub_24F2CFD1C()
{
  v79 = v0;
  *(v0 + 144) = MEMORY[0x277D84FA0];
  v1 = (v0 + 144);
  v2 = *(v0 + 168);
  if (v2 >> 62)
  {
    goto LABEL_48;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
  {
    v4 = 0;
    v70 = v2 & 0xFFFFFFFFFFFFFF8;
    v69 = *(v0 + 168) + 32;
    v76 = v1;
    v71 = i;
    while (1)
    {
      if (v73)
      {
        v5 = MEMORY[0x253052270](v4, *(v0 + 168));
      }

      else
      {
        if (v4 >= *(v70 + 16))
        {
          goto LABEL_47;
        }

        v5 = *(v69 + 8 * v4);
      }

      v2 = v5;
      if (__OFADD__(v4++, 1))
      {
        goto LABEL_46;
      }

      v7 = [v5 remoteParticipantHandles];
      if (v7)
      {
        break;
      }

LABEL_5:

      if (v4 == i)
      {
        goto LABEL_49;
      }
    }

    v8 = v7;
    v74 = v2;
    sub_24E69A5C4(0, &qword_27F23E1B0);
    v2 = sub_24ECFF898();
    v9 = sub_24F92BAA8();

    v75 = v4;
    if ((v9 & 0xC000000000000001) != 0)
    {
      sub_24F92C6F8();
      sub_24F92BAE8();
      v9 = *(v0 + 56);
      v10 = *(v0 + 64);
      v11 = *(v0 + 72);
      v12 = *(v0 + 80);
      v13 = *(v0 + 88);
    }

    else
    {
      v12 = 0;
      v14 = -1 << *(v9 + 32);
      v10 = v9 + 56;
      v11 = ~v14;
      v15 = -v14;
      if (v15 < 64)
      {
        v16 = ~(-1 << v15);
      }

      else
      {
        v16 = -1;
      }

      v13 = v16 & *(v9 + 56);
    }

    v17 = (v11 + 64) >> 6;
    if (v9 < 0)
    {
LABEL_28:
      v28 = sub_24F92C778();
      if (v28)
      {
        v1[2] = v28;
        swift_dynamicCast();
        v27 = v1[1];
        v0 = v12;
        v26 = v13;
        if (v27)
        {
          goto LABEL_30;
        }
      }

LABEL_4:
      sub_24E6586B4();
      i = v71;
      v0 = v72;
      v2 = v74;
      v4 = v75;
      goto LABEL_5;
    }

    while (1)
    {
      v24 = v12;
      v25 = v13;
      v0 = v12;
      if (!v13)
      {
        break;
      }

LABEL_26:
      v26 = (v25 - 1) & v25;
      v27 = *(*(v9 + 48) + ((v0 << 9) | (8 * __clz(__rbit64(v25)))));
      if (!v27)
      {
        goto LABEL_4;
      }

LABEL_30:
      v29 = [v27 type];
      v77 = v26;
      if (v29 > 1)
      {
        if (v29 == 2)
        {
          v40 = [v27 value];
          v41 = v40;
          v42 = v40;
          if (!v40)
          {
            sub_24F92B0D8();
            v42 = sub_24F92B098();

            sub_24F92B0D8();
            v41 = sub_24F92B098();
          }

          v43 = objc_opt_self();
          v44 = v40;
          v45 = [v43 countryCodeForNumber_];

          v39 = [v43 internationalizedUnformattedNumber:v41 countryCode:v45];
          if (!v39)
          {
            v49 = [v27 value];
            v50 = sub_24F92B0D8();
            v52 = v51;

            v22 = v50;
            v23 = v52;
            v1 = v76;
            goto LABEL_21;
          }

LABEL_43:
          sub_24F92B0D8();

          v46 = sub_24F92B198();
          v48 = v47;

          v22 = v46;
          v23 = v48;
          v1 = v76;
          goto LABEL_21;
        }

LABEL_20:
        v18 = [v27 value];
        v19 = sub_24F92B0D8();
        v21 = v20;

        v22 = v19;
        v23 = v21;
LABEL_21:
        v2 = v1;
        sub_24ED7C5F0(&v78, v22, v23);

        v12 = v0;
        v13 = v77;
        if (v9 < 0)
        {
          goto LABEL_28;
        }
      }

      else
      {
        if (v29 != 1)
        {
          goto LABEL_20;
        }

        v30 = [v27 value];
        v31 = sub_24F92B0D8();
        v33 = v32;

        sub_24ED7C5F0(&v78, v31, v33);

        v34 = [v27 value];
        v2 = v34;
        v35 = v34;
        if (!v34)
        {
          sub_24F92B0D8();
          v35 = sub_24F92B098();

          sub_24F92B0D8();
          v2 = sub_24F92B098();
        }

        v36 = objc_opt_self();
        v37 = v34;
        v38 = [v36 countryCodeForNumber_];

        v39 = [v36 internationalizedUnformattedNumber:v2 countryCode:v38];
        if (v39)
        {
          goto LABEL_43;
        }

        v12 = v0;
        v1 = v76;
        v13 = v77;
        if (v9 < 0)
        {
          goto LABEL_28;
        }
      }
    }

    while (1)
    {
      v0 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v0 >= v17)
      {
        goto LABEL_4;
      }

      v25 = *(v10 + 8 * v0);
      v24 = (v24 + 1);
      if (v25)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    ;
  }

LABEL_49:
  v53 = *(v0 + 200);
  v54 = *(v53 + 16);
  *(v0 + 352) = v54;
  if (v54)
  {
    v55 = *(v0 + 320);
    v56 = (*(v0 + 344) + *(*(v0 + 312) + 40));
    v57 = v53 + ((*(v55 + 80) + 32) & ~*(v55 + 80));
    v58 = *(v55 + 72);
    do
    {
      v59 = *(v0 + 344);
      sub_24F2CC85C(v57, v59, type metadata accessor for Player);
      v60 = *v56;
      v61 = v56[1];

      sub_24F2CC8C4(v59, type metadata accessor for Player);
      if (v61)
      {
        sub_24ED7C5F0(&v78, v60, v61);
      }

      v57 += v58;
      --v54;
    }

    while (v54);
  }

  sub_24F91F638();
  v62 = *(v0 + 144);
  v63 = *(v62 + 16);
  if (v63)
  {
    v64 = sub_24EAE678C(*(v62 + 16), 0);
    v65 = sub_24EAE7C84(&v78, v64 + 4, v63, v62);
    sub_24E6586B4();
    if (v65 == v63)
    {
      goto LABEL_58;
    }

    __break(1u);
  }

  v64 = MEMORY[0x277D84F90];
LABEL_58:
  *(v0 + 360) = v64;
  v66 = swift_task_alloc();
  *(v0 + 368) = v66;
  *v66 = v0;
  v66[1] = sub_24F2D0490;
  v67 = *(v0 + 200);

  return sub_24F2C1C08(v0 + 16, v64, v67);
}

uint64_t sub_24F2D0490()
{

  return MEMORY[0x2822009F8](sub_24F2D05A8, 0, 0);
}

uint64_t sub_24F2D05A8()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  *(v1 + 304) = *(v0 + 16);
  *(v1 + 320) = v3;
  *(v1 + 336) = v2;

  if (qword_27F211458 != -1)
  {
    goto LABEL_87;
  }

  while (1)
  {
    v4 = *(v0 + 296);
    v5 = *(v0 + 304);
    v6 = *(v0 + 272);
    v7 = *(v0 + 280);
    v8 = sub_24F9220D8();
    __swift_project_value_buffer(v8, qword_27F39E958);
    v145 = *(v7 + 16);
    v145(v4, v5, v6);
    v9 = sub_24F9220B8();
    v10 = sub_24F92BD98();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 296);
    v13 = *(v0 + 272);
    v14 = *(v0 + 280);
    if (v11)
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      sub_24F91F5C8();
      v17 = v16;
      v132 = *(v14 + 8);
      (v132)(v12, v13);
      *(v15 + 4) = -v17;
      _os_log_impl(&dword_24E5DD000, v9, v10, "Contact query phase: %fs", v15, 0xCu);
      MEMORY[0x2530542D0](v15, -1, -1);

      if (!*(v0 + 352))
      {
        break;
      }

      goto LABEL_6;
    }

    v132 = *(v14 + 8);
    (v132)(v12, v13);
    if (!*(v0 + 352))
    {
      break;
    }

LABEL_6:
    v18 = 0;
    v151 = *(v0 + 336);
    v19 = *(v0 + 320);
    v20 = *(v0 + 224);
    v21 = *(v0 + 200) + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v22 = *(v19 + 72);
    while (1)
    {
      v27 = *(v0 + 328);
      v26 = *(v0 + 336);
      sub_24F2CC85C(v21, v26, type metadata accessor for Player);
      v28 = *v26;
      v29 = *(v151 + 8);
      swift_beginAccess();
      sub_24F2CC924(v26, v27, type metadata accessor for Player);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = *(v20 + 288);
      v153 = v31;
      *(v20 + 288) = 0x8000000000000000;
      v32 = sub_24E76D644(v28, v29);
      v34 = v31[2];
      v35 = (v33 & 1) == 0;
      v36 = __OFADD__(v34, v35);
      v37 = v34 + v35;
      if (v36)
      {
        break;
      }

      v38 = v33;
      if (v31[3] < v37)
      {
        sub_24E8A216C(v37, isUniquelyReferenced_nonNull_native);
        v32 = sub_24E76D644(v28, v29);
        if ((v38 & 1) != (v39 & 1))
        {
LABEL_76:

          return sub_24F92CF88();
        }

LABEL_14:
        v40 = *(v0 + 328);
        if (v38)
        {
          goto LABEL_7;
        }

        goto LABEL_15;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_14;
      }

      v44 = v32;
      sub_24E8B2BCC();
      v32 = v44;
      v40 = *(v0 + 328);
      if (v38)
      {
LABEL_7:
        v23 = v32;

        v24 = v153;
        sub_24F2D45C4(v40, v153[7] + v23 * v22, type metadata accessor for Player);
        goto LABEL_8;
      }

LABEL_15:
      v24 = v153;
      v153[(v32 >> 6) + 8] |= 1 << v32;
      v41 = (v153[6] + 16 * v32);
      *v41 = v28;
      v41[1] = v29;
      sub_24F2CC924(v40, v153[7] + v32 * v22, type metadata accessor for Player);
      v42 = v153[2];
      v36 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (v36)
      {
        goto LABEL_83;
      }

      v153[2] = v43;
LABEL_8:
      ++v18;
      v25 = *(v0 + 352);
      *(v20 + 288) = v24;

      swift_endAccess();
      v21 += v22;
      if (v18 == v25)
      {
        goto LABEL_19;
      }
    }

LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    swift_once();
  }

LABEL_19:
  v45 = *(v0 + 280);
  v144 = *(v0 + 264);
  v47 = *(v0 + 208);
  v46 = *(v0 + 216);
  v48 = v47 + 64;
  v146 = *(v0 + 256);
  v128 = *(v0 + 248);
  v49 = -1 << *(v47 + 32);
  if (-v49 < 64)
  {
    v50 = ~(-1 << -v49);
  }

  else
  {
    v50 = -1;
  }

  v134 = v50 & *(v47 + 64);
  v136 = *(v0 + 280);
  v51 = v46 + 56;
  v148 = (v45 + 56);
  v149 = *(v0 + 224);
  v143 = (v45 + 48);
  v141 = (v45 + 32);
  v133 = (63 - v49) >> 6;

  v52 = 0;
  v53 = 0;
  v130 = v47;
  v131 = v46;
  v129 = v47 + 64;
  v54 = v133;
  v55 = v134;
  if (!v134)
  {
    goto LABEL_25;
  }

LABEL_29:
  while (2)
  {
    while (1)
    {
      v135 = (v55 - 1) & v55;
      v57 = __clz(__rbit64(v55)) | (v53 << 6);
      v58 = (*(v47 + 48) + 16 * v57);
      v59 = *v58;
      v152 = v58[1];
      v147 = *(*(v47 + 56) + 8 * v57);
      v150 = *v58;
      if (*(v46 + 16))
      {
        break;
      }

LABEL_38:
      v69 = v147;
      v142 = *(v147 + 16);
      if (v142)
      {
        v70 = 0;
        v139 = *(v128 + 20);
        v140 = *(v0 + 264);
        v137 = v51;
        v138 = v147 + ((*(v146 + 80) + 32) & ~*(v146 + 80));
        while (v70 < *(v69 + 16))
        {
          v73 = *(v0 + 264);
          v74 = *(v0 + 272);
          v75 = *(v0 + 240);
          sub_24F2CC85C(v138 + *(v146 + 72) * v70, v73, type metadata accessor for PlayActivity);
          v76 = *v73;
          v77 = *(v144 + 8);
          v145(v75, v140 + v139, v74);

          sub_24F2CC8C4(v73, type metadata accessor for PlayActivity);
          v78 = *v148;
          (*v148)(v75, 0, 1, v74);
          swift_beginAccess();
          sub_24E824448(v52);
          v79 = swift_isUniquelyReferenced_nonNull_native();
          v80 = *(v149 + 296);
          *(v149 + 296) = 0x8000000000000000;
          v82 = sub_24E76D644(v76, v77);
          v83 = v80[2];
          v84 = (v81 & 1) == 0;
          v85 = v83 + v84;
          if (__OFADD__(v83, v84))
          {
            goto LABEL_82;
          }

          v86 = v81;
          if (v80[3] >= v85)
          {
            if ((v79 & 1) == 0)
            {
              sub_24E8B2BB8();
            }
          }

          else
          {
            sub_24E8A2158(v85, v79);
            v87 = sub_24E76D644(v76, v77);
            if ((v86 & 1) != (v88 & 1))
            {
              goto LABEL_76;
            }

            v82 = v87;
          }

          *(v149 + 296) = v80;
          if (v86)
          {
          }

          else
          {
            v89 = sub_24E60DE58(MEMORY[0x277D84F90]);
            v80[(v82 >> 6) + 8] |= 1 << v82;
            v90 = (v80[6] + 16 * v82);
            *v90 = v76;
            v90[1] = v77;
            *(v80[7] + 8 * v82) = v89;
            v91 = v80[2];
            v36 = __OFADD__(v91, 1);
            v92 = v91 + 1;
            if (v36)
            {
              goto LABEL_84;
            }

            v80[2] = v92;
          }

          v93 = *(v0 + 272);
          v94 = *(v0 + 240);
          v95 = v80[7];
          if ((*v143)(v94, 1, v93) == 1)
          {
            sub_24E601704(v94, &unk_27F22EC30);
            v96 = sub_24E76D644(v150, v152);
            if (v97)
            {
              v98 = v96;
              v99 = swift_isUniquelyReferenced_nonNull_native();
              v100 = *(v95 + 8 * v82);
              *(v95 + 8 * v82) = 0x8000000000000000;
              if (!v99)
              {
                sub_24E8AE0F8();
              }

              v101 = *(v0 + 272);
              v102 = *(v0 + 232);

              (*(v136 + 32))(v102, *(v100 + 56) + *(v136 + 72) * v98, v101);
              sub_24EB52FA4(v98, v100);
              *(v95 + 8 * v82) = v100;

              v71 = 0;
            }

            else
            {
              v71 = 1;
            }

            v72 = *(v0 + 232);
            v78(v72, v71, 1, *(v0 + 272));
            sub_24E601704(v72, &unk_27F22EC30);
            v51 = v137;
            v69 = v147;
          }

          else
          {
            v103 = *v141;
            (*v141)(*(v0 + 288), v94, v93);
            v104 = swift_isUniquelyReferenced_nonNull_native();
            v105 = *(v95 + 8 * v82);
            *(v95 + 8 * v82) = 0x8000000000000000;
            v106 = sub_24E76D644(v150, v152);
            v108 = v105[2];
            v109 = (v107 & 1) == 0;
            v36 = __OFADD__(v108, v109);
            v110 = v108 + v109;
            if (v36)
            {
              goto LABEL_85;
            }

            v111 = v107;
            if (v105[3] >= v110)
            {
              v51 = v137;
              if ((v104 & 1) == 0)
              {
                v118 = v106;
                sub_24E8AE0F8();
                v106 = v118;
              }
            }

            else
            {
              sub_24E899B5C(v110, v104);
              v106 = sub_24E76D644(v150, v152);
              if ((v111 & 1) != (v112 & 1))
              {
                goto LABEL_76;
              }

              v51 = v137;
            }

            v113 = *(v0 + 288);
            v114 = *(v0 + 272);
            if (v111)
            {
              (*(v136 + 40))(v105[7] + *(v136 + 72) * v106, v113, v114);
            }

            else
            {
              v105[(v106 >> 6) + 8] |= 1 << v106;
              v115 = (v105[6] + 16 * v106);
              *v115 = v150;
              v115[1] = v152;
              v103(v105[7] + *(v136 + 72) * v106, v113, v114);
              v116 = v105[2];
              v36 = __OFADD__(v116, 1);
              v117 = v116 + 1;
              if (v36)
              {
                goto LABEL_86;
              }

              v105[2] = v117;
            }

            v69 = v147;
            *(v95 + 8 * v82) = v105;
          }

          ++v70;
          swift_endAccess();
          v52 = sub_24F2C4620;
          if (v142 == v70)
          {
            goto LABEL_70;
          }
        }

        goto LABEL_81;
      }

LABEL_70:

      v47 = v130;
      v46 = v131;
      v48 = v129;
      v54 = v133;
      v55 = v135;
      if (!v135)
      {
        goto LABEL_25;
      }
    }

    sub_24F92D068();

    sub_24F92B218();
    v60 = sub_24F92D0B8();
    v61 = v152;
    v62 = -1 << *(v46 + 32);
    v63 = v60 & ~v62;
    if (((*(v51 + ((v63 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v63) & 1) == 0)
    {
      goto LABEL_38;
    }

    v64 = v59;
    v65 = ~v62;
    while (1)
    {
      v66 = (*(v46 + 48) + 16 * v63);
      if (*v66 == v64 && v66[1] == v61)
      {
        break;
      }

      v68 = sub_24F92CE08();
      v64 = v150;
      v61 = v152;
      if (v68)
      {
        break;
      }

      v63 = (v63 + 1) & v65;
      if (((*(v51 + ((v63 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v63) & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    v54 = v133;
    v55 = v135;
    if (v135)
    {
      continue;
    }

    break;
  }

  while (1)
  {
LABEL_25:
    v56 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      __break(1u);
      goto LABEL_80;
    }

    if (v56 >= v54)
    {
      break;
    }

    v55 = *(v48 + 8 * v56);
    ++v53;
    if (v55)
    {
      v53 = v56;
      goto LABEL_29;
    }
  }

  v119 = *(v0 + 224);
  v121 = *(v0 + 200);
  v120 = *(v0 + 208);
  v123 = *(v0 + 184);
  v122 = *(v0 + 192);
  v125 = *(v0 + 168);
  v124 = *(v0 + 176);
  v132();

  v119[34] = v121;

  v119[35] = v120;

  v119[30] = v125;
  v119[31] = v124;
  v119[32] = v123;
  v119[33] = v122;

  sub_24E824448(v52);

  v126 = *(v0 + 8);

  return v126();
}

uint64_t sub_24F2D1230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[47] = a2;
  v3[48] = a3;
  v3[46] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213DB0);
  v3[49] = v4;
  v3[50] = *(v4 - 8);
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();
  v5 = type metadata accessor for SocialGameCallHistory.CallNode(0);
  v3[53] = v5;
  v3[54] = *(v5 - 8);
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();
  v6 = sub_24F91F648();
  v3[59] = v6;
  v3[60] = *(v6 - 8);
  v3[61] = swift_task_alloc();
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v3[68] = swift_task_alloc();
  v3[69] = swift_task_alloc();
  v3[70] = swift_task_alloc();
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  v3[73] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F2D1478, 0, 0);
}

unint64_t sub_24F2D1478()
{
  v430 = v0;
  v1 = v0;
  sub_24E60D910(MEMORY[0x277D84F90]);
  v2 = sub_24F45D828(&unk_2861C07A8);
  swift_arrayDestroy();
  if (qword_27F211458 != -1)
  {
    goto LABEL_245;
  }

  while (1)
  {
    v3 = v1[46];
    v4 = sub_24F9220D8();
    __swift_project_value_buffer(v4, qword_27F39E958);

    v5 = sub_24F9220B8();
    v6 = sub_24F92BDA8();

    v7 = os_log_type_enabled(v5, v6);
    v8 = MEMORY[0x277D84FA0];
    v423 = v1;
    if (v7)
    {
      v9 = v1[46];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v429[0] = v11;
      *v10 = 136446210;
      if (v9)
      {
        v12 = v3;
      }

      else
      {
        v12 = v8;
      }

      v1[45] = sub_24EAE3F00(v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
      sub_24E602068(&qword_27F23E240, &unk_27F2285F0);
      v13 = sub_24F92AF68();
      v15 = v14;

      v16 = sub_24E7620D4(v13, v15, v429);

      *(v10 + 4) = v16;
      _os_log_impl(&dword_24E5DD000, v5, v6, "Installed games: %{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x2530542D0](v11, -1, -1);
      MEMORY[0x2530542D0](v10, -1, -1);
    }

    v17 = v1[73];
    v18 = v1[72];
    v19 = v1[59];
    v20 = v1[60];
    v365 = BiomeLibrary();
    v364 = sub_24F92B098();
    sub_24F91F638();
    v370 = [objc_allocWithZone(MEMORY[0x277CF7D40]) init];
    v21 = [v370 callsWithPredicate:0 limit:0 offset:0 batchSize:0];
    sub_24E69A5C4(0, &unk_27F23E280);
    v22 = sub_24F92B5A8();

    v23 = sub_24EF1C364(v22);
    v25 = *(v20 + 16);
    v24 = v20 + 16;
    v406 = v25;
    v25(v18, v17, v19);

    v26 = sub_24F9220B8();
    v27 = sub_24F92BDA8();
    v28 = v23 >> 62;
    v384 = v2;
    v372 = v23 >> 62;
    if (os_log_type_enabled(v26, v27))
    {
      v29 = swift_slowAlloc();
      *v29 = 134218240;
      if (v28)
      {
        v359 = v29;
        v30 = sub_24F92C738();
        v29 = v359;
      }

      else
      {
        v30 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v31 = v1[72];
      v33 = v1[59];
      v32 = v1[60];
      *(v29 + 4) = v30;
      v34 = v29;

      *(v34 + 12) = 2048;
      sub_24F91F5C8();
      v36 = v35;
      v37 = v33;
      v38 = *(v32 + 8);
      v38(v31, v37);
      *(v34 + 14) = -v36;
      _os_log_impl(&dword_24E5DD000, v26, v27, "Queried %ld calls in %fs", v34, 0x16u);
      MEMORY[0x2530542D0](v34, -1, -1);

      v28 = v23 >> 62;
    }

    else
    {
      v39 = v1[72];
      v40 = v1[59];
      v41 = v1[60];

      v38 = *(v41 + 8);
      v38(v39, v40);
    }

    v2 = v28 ? sub_24F92C738() : *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v42 = &selRef_lockedAppBundleIdentifiers;
    v380 = v24;
    v398 = v38;
    v361 = v23;
    if (!v2)
    {
      break;
    }

    v43 = 0;
    v44 = v1[60];
    v416 = v23 + 32;
    v420 = v23 & 0xFFFFFFFFFFFFFF8;
    v424 = v23 & 0xC000000000000001;
    v374 = (v44 + 32);
    v410 = MEMORY[0x277D84F90];
    v394 = (v44 + 40);
    v45 = v1[54];
    v401 = v1[53];
    v413 = v2;
    while (1)
    {
      if (v424)
      {
        v46 = MEMORY[0x253052270](v43, v23);
      }

      else
      {
        if (v43 >= *(v420 + 16))
        {
          goto LABEL_238;
        }

        v46 = *(v416 + 8 * v43);
      }

      v47 = v46;
      v48 = __OFADD__(v43++, 1);
      if (v48)
      {
        goto LABEL_237;
      }

      v49 = [v46 date];
      if (!v49)
      {
        goto LABEL_17;
      }

      v50 = v49;
      sub_24F91F608();

      [v47 v42[489]];
      if (v51 > 0.0)
      {
        break;
      }

      v38(v1[71], v1[59]);
LABEL_17:

LABEL_18:
      if (v43 == v2)
      {
        goto LABEL_63;
      }
    }

    if ([v47 isJunk] & 1) != 0 || (objc_msgSend(v47, sel_callerIdIsBlocked) & 1) != 0 || (objc_msgSend(v47, sel_wasEmergencyCall))
    {
      goto LABEL_36;
    }

    if (qword_27F2110B0 != -1)
    {
      swift_once();
    }

    v52 = off_27F23E160;
    v53 = [v47 callStatus];
    if (!v52[2] || (v54 = v53, v55 = MEMORY[0x2530529D0](v52[5], v53, 4), v56 = -1 << *(v52 + 32), v57 = v55 & ~v56, ((*(v52 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v57) & 1) == 0))
    {
LABEL_36:
      v38(v1[71], v1[59]);

      v2 = v413;
      goto LABEL_18;
    }

    v58 = ~v56;
    while (*(v52[6] + 4 * v57) != v54)
    {
      v57 = (v57 + 1) & v58;
      if (((*(v52 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v57) & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    v360 = v45;
    v59 = v1[71];
    v60 = v42;
    v61 = v1[70];
    v62 = v1[59];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_24F941C80;
    *(v63 + 32) = v47;
    v64 = v62;
    v65 = v380;
    v406(v61, v59, v64);
    v368 = v47;
    [v368 v60 + 120];
    sub_24F91F568();
    swift_beginAccess();
    swift_beginAccess();
    v66 = v410;
    v2 = (v410 + 2);
    v67 = v410[2];
    if (!v67)
    {
LABEL_56:
      v96 = v406;
LABEL_57:
      v410 = v66;
      v119 = v1[70];
      v120 = v1[69];
      v121 = v1[59];
      v122 = v96;
      v123 = v1[55];
      swift_beginAccess();
      v122(v123, v119, v121);
      swift_beginAccess();
      v122(v123 + *(v401 + 20), v120, v121);
      *(v123 + *(v401 + 24)) = v63;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v410 = sub_24E618B6C(0, *v2 + 1, 1, v410);
      }

      v125 = v410[2];
      v124 = v410[3];
      if (v125 >= v124 >> 1)
      {
        v410 = sub_24E618B6C(v124 > 1, v125 + 1, 1, v410);
      }

      v126 = v1[71];
      v127 = v1[70];
      v128 = v1[69];
      v129 = v1[59];
      v130 = v1[55];

      v398(v126, v129);
      v410[2] = v125 + 1;
      sub_24F2CC924(v130, v410 + ((*(v360 + 80) + 32) & ~*(v360 + 80)) + *(v360 + 72) * v125, type metadata accessor for SocialGameCallHistory.CallNode);
      v131 = v128;
      v38 = v398;
      v398(v131, v129);
      v398(v127, v129);
      v45 = v360;
      v23 = v361;
      v42 = &selRef_lockedAppBundleIdentifiers;
      v2 = v413;
      goto LABEL_18;
    }

    v68 = (*(v360 + 80) + 32) & ~*(v360 + 80);
    v69 = *(v360 + 72);
    v385 = v69;
    v388 = v68;
    while (1)
    {
      v391 = v2;
      v70 = v65;
      v71 = v1[58];
      sub_24F2CC85C(v66 + v68 + (v67 - 1) * v69, v71, type metadata accessor for SocialGameCallHistory.CallNode);
      v72 = *(v401 + 20);
      sub_24F2D4580(&qword_27F2363D0);
      v382 = v71;
      v73 = sub_24F92AF78();
      v74 = v1[58];
      if (v73)
      {
        sub_24F2CC8C4(v1[58], type metadata accessor for SocialGameCallHistory.CallNode);
        v2 = v391;
        goto LABEL_56;
      }

      v377 = v72;
      v76 = v1[56];
      v75 = v1[57];

      sub_24F2CC85C(v74, v75, type metadata accessor for SocialGameCallHistory.CallNode);
      sub_24F2CC85C(v74, v76, type metadata accessor for SocialGameCallHistory.CallNode);
      v77 = sub_24F9220B8();
      v78 = sub_24F92BDA8();
      if (os_log_type_enabled(v77, v78))
      {
        v366 = v78;
        v80 = v1[56];
        v79 = v1[57];
        v81 = swift_slowAlloc();
        v362 = swift_slowAlloc();
        v429[0] = v362;
        *v81 = 136381443;
        sub_24F2D4580(&qword_27F229EE8);
        v82 = sub_24F92CD88();
        v84 = v83;
        sub_24F2CC8C4(v79, type metadata accessor for SocialGameCallHistory.CallNode);
        v85 = sub_24E7620D4(v82, v84, v429);
        v1 = v423;

        *(v81 + 4) = v85;
        *(v81 + 12) = 2081;
        v86 = sub_24F92CD88();
        v88 = v87;
        sub_24F2CC8C4(v80, type metadata accessor for SocialGameCallHistory.CallNode);
        v89 = sub_24E7620D4(v86, v88, v429);

        *(v81 + 14) = v89;
        *(v81 + 22) = 2081;
        v90 = sub_24F92CD88();
        v92 = sub_24E7620D4(v90, v91, v429);

        *(v81 + 24) = v92;
        *(v81 + 32) = 2081;
        v65 = v380;
        v93 = sub_24F92CD88();
        v95 = sub_24E7620D4(v93, v94, v429);

        *(v81 + 34) = v95;
        _os_log_impl(&dword_24E5DD000, v77, v366, "Merging [%{private}s -> %{private}s] with [%{private}s -> %{private}s]", v81, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x2530542D0](v362, -1, -1);
        MEMORY[0x2530542D0](v81, -1, -1);

        v96 = v406;
        v97 = v398;
      }

      else
      {
        v98 = v1[56];
        v99 = v1[57];

        sub_24F2CC8C4(v98, type metadata accessor for SocialGameCallHistory.CallNode);
        sub_24F2CC8C4(v99, type metadata accessor for SocialGameCallHistory.CallNode);
        v96 = v406;
        v97 = v398;
        v65 = v70;
      }

      v96(v1[67], v1[70], v1[59]);
      v100 = sub_24F92AF78();
      v101 = v1[68];
      v102 = v1[59];
      if (v100)
      {
        v103 = v1[58];
        v97(v1[67], v1[59]);
        v96(v101, v103, v102);
      }

      else
      {
        (*v374)(v1[68], v1[67], v1[59]);
      }

      v104 = v1[69];
      v105 = v1[65];
      v106 = v1[59];
      v107 = *v394;
      (*v394)(v1[70], v1[68], v106);
      v96(v105, v104, v106);
      v2 = v65;
      v108 = sub_24F92AF88();
      v109 = v1[66];
      v110 = v1[65];
      v111 = v1[59];
      if (v108)
      {
        v398(v110, v111);
        v96(v109, v382 + v377, v111);
      }

      else
      {
        (*v374)(v109, v110, v111);
      }

      v112 = v1[58];
      v107(v1[69], v1[66], v1[59]);
      v113 = *(v112 + *(v401 + 24));
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_24F941C80;
      *(inited + 32) = v368;
      v429[0] = v113;
      v115 = v368;

      sub_24EA0B104(inited);
      if (!*v391)
      {
        goto LABEL_242;
      }

      v63 = v429[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v66 = sub_24ECDE290(v66);
      }

      v2 = (v66 + 2);
      v116 = v66[2];
      if (!v116)
      {
        break;
      }

      v117 = v1[58];
      v118 = v116 - 1;
      sub_24F2CC8C4(v66 + v388 + (v116 - 1) * v385, type metadata accessor for SocialGameCallHistory.CallNode);
      v66[2] = v118;
      v68 = v388;
      sub_24F2CC8C4(v117, type metadata accessor for SocialGameCallHistory.CallNode);
      v69 = v385;
      v67 = v66[2];
      if (!v67)
      {
        goto LABEL_57;
      }
    }

LABEL_243:
    __break(1u);
LABEL_244:
    __break(1u);
LABEL_245:
    swift_once();
  }

  v410 = MEMORY[0x277D84F90];
LABEL_63:
  v132 = v1[63];
  v133 = v1[64];
  v134 = v1[59];
  sub_24F91F638();
  v406(v132, v133, v134);

  v135 = sub_24F9220B8();
  v136 = sub_24F92BDA8();
  if (os_log_type_enabled(v135, v136))
  {
    v137 = swift_slowAlloc();
    *v137 = 134218240;
    v138 = MEMORY[0x277D84FA0];
    if (v372)
    {
      v139 = sub_24F92C738();
    }

    else
    {
      v139 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v142 = v1[63];
    v143 = v1[59];
    *(v137 + 4) = v139;

    *(v137 + 12) = 2048;
    sub_24F91F5C8();
    v145 = v144;
    v398(v142, v143);
    *(v137 + 14) = -v145;
    _os_log_impl(&dword_24E5DD000, v135, v136, "Indexed %ld calls in %fs", v137, 0x16u);
    v146 = v137;
    v38 = v398;
    MEMORY[0x2530542D0](v146, -1, -1);
  }

  else
  {
    v138 = MEMORY[0x277D84FA0];
    v140 = v1[63];
    v141 = v1[59];

    v38(v140, v141);
  }

  v147 = v1[73];
  v395 = v1[61];
  v148 = v1[59];
  v389 = v1[62];
  v392 = v148;
  v149 = v1[47];
  v386 = v1[48];
  v402 = v1[46];
  v38(v1[64], v148);
  v38(v147, v148);
  v363 = swift_allocObject();
  v150 = MEMORY[0x277D84F90];
  *(v363 + 16) = sub_24E60DE30(MEMORY[0x277D84F90]);
  v421 = v363 + 16;
  v383 = swift_allocObject();
  *(v383 + 16) = v138;
  sub_24F91F638();
  v151 = swift_allocObject();
  *(v151 + 16) = 0;
  v152 = [objc_msgSend(v365 App)];
  swift_unknownObjectRelease();
  v399 = v152;
  v425 = [v152 publisherWithUseCase_];
  v153 = swift_allocObject();
  *(v153 + 16) = sub_24E60DE58(v150);
  v154 = swift_allocObject();
  *(v154 + 16) = 0;
  v155 = swift_allocObject();
  *(v155 + 16) = 0;
  *(v155 + 24) = 0;
  v1[6] = sub_24F2C027C;
  v1[7] = 0;
  v1[2] = MEMORY[0x277D85DD0];
  v1[3] = 1107296256;
  v1[4] = sub_24F2D4E50;
  v1[5] = &block_descriptor_80_0;
  v378 = _Block_copy(v1 + 2);
  v156 = swift_allocObject();
  v156[2] = v151;
  v156[3] = v149;
  v2 = v384;
  v156[4] = v386;
  v156[5] = v384;
  v156[6] = v155;
  v156[7] = v402;
  v156[8] = v153;
  v156[9] = v154;
  v156[10] = v410;
  v156[11] = v383;
  v156[12] = v363;
  v1[12] = sub_24F2D4B6C;
  v1[13] = v156;
  v1[8] = MEMORY[0x277D85DD0];
  v1[9] = 1107296256;
  v1[10] = sub_24F2D4E50;
  v1[11] = &block_descriptor_86_0;
  v157 = _Block_copy(v1 + 8);

  v158 = v151;

  v159 = [v425 sinkWithCompletion:v378 receiveInput:v157];
  _Block_release(v157);
  _Block_release(v378);

  v406(v395, v389, v392);

  v160 = sub_24F9220B8();
  v161 = sub_24F92BD98();
  v162 = os_log_type_enabled(v160, v161);
  v163 = v1[61];
  v164 = v1[62];
  v166 = v1[59];
  v165 = v1[60];
  if (v162)
  {
    v167 = swift_slowAlloc();
    *v167 = 134218240;
    swift_beginAccess();
    *(v167 + 4) = *(v158 + 16);

    *(v167 + 12) = 2048;
    sub_24F91F5C8();
    v169 = v168;
    v170 = *(v165 + 8);
    v170(v163, v166);
    *(v167 + 14) = -v169;
    _os_log_impl(&dword_24E5DD000, v160, v161, "Processed %ld event(s) in %fs", v167, 0x16u);
    MEMORY[0x2530542D0](v167, -1, -1);
  }

  else
  {

    v170 = *(v165 + 8);
    v170(v163, v166);
  }

  v170(v164, v166);
  v375 = v1[50];
  v376 = v170;
  v373 = v1[49];

  v390 = sub_24E60D910(MEMORY[0x277D84F90]);
  swift_beginAccess();
  v171 = *v421 + 64;
  v172 = -1 << *(*v421 + 32);
  if (-v172 < 64)
  {
    v173 = ~(-1 << -v172);
  }

  else
  {
    v173 = -1;
  }

  v396 = v173 & *(*v421 + 64);
  v371 = *v421;

  swift_beginAccess();
  v381 = 0;
  v174 = 0;
  v175 = (63 - v172) >> 6;
  v176 = v384 + 56;
  v177 = v383;
  v367 = v175;
  v369 = v171;
LABEL_78:
  v178 = v396;
  if (v396)
  {
    goto LABEL_83;
  }

  do
  {
    v179 = v174 + 1;
    if (__OFADD__(v174, 1))
    {
      __break(1u);
LABEL_236:
      __break(1u);
LABEL_237:
      __break(1u);
LABEL_238:
      __break(1u);
      goto LABEL_239;
    }

    if (v179 >= v175)
    {

      v321 = v390;
      v2 = v390 + 64;
      v322 = -1 << *(v390 + 32);
      if (-v322 < 64)
      {
        v323 = ~(-1 << -v322);
      }

      else
      {
        v323 = -1;
      }

      v324 = v323 & *(v390 + 64);
      v325 = (63 - v322) >> 6;

      v326 = 0;
      v327 = MEMORY[0x277D84FA0];
      v328 = MEMORY[0x277D84FA0];
LABEL_184:
      while (v324)
      {
LABEL_189:
        result = *(*(v321 + 56) + ((v326 << 9) | (8 * __clz(__rbit64(v324)))));
        if (result >> 62)
        {
          v415 = result;
          v331 = sub_24F92C738();
          result = v415;
        }

        else
        {
          v331 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v324 &= v324 - 1;
        if (v331)
        {
          v405 = v325;
          v422 = v331;
          if (v331 < 1)
          {
LABEL_248:
            __break(1u);
          }

          else
          {
            v332 = result & 0xC000000000000001;
            v408 = result + 32;
            v414 = result;

            v333 = 0;
            v409 = v332;
            while (1)
            {
LABEL_195:
              v335 = v327 & 0xFFFFFFFFFFFFFF8;
              if (v327 < 0)
              {
                v335 = v327;
              }

              v419 = v335;
              while (1)
              {
                while (1)
                {
                  v336 = v333;
                  v337 = v332 ? MEMORY[0x253052270](v333, v414) : *(v408 + 8 * v333);
                  v338 = v337;
                  v428 = v336 + 1;
                  if ((v327 & 0xC000000000000001) != 0)
                  {
                    break;
                  }

                  v341 = sub_24F92C3F8();
                  v342 = ~(-1 << *(v327 + 32));
                  for (i = v341 & v342; ; i = (i + 1) & v342)
                  {
                    if (((*(v327 + 56 + ((i >> 3) & 0xFFFFFFFFFFFFFF8)) >> i) & 1) == 0)
                    {
                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      v429[0] = v328;
                      sub_24ED87EAC(v338, i, isUniquelyReferenced_nonNull_native);
                      v333 = v428;
                      v328 = v429[0];
                      v327 = v429[0];
                      v1 = v423;
                      v321 = v390;
                      v332 = v409;
                      if (v428 == v422)
                      {
                        goto LABEL_225;
                      }

                      goto LABEL_195;
                    }

                    v344 = *(*(v327 + 48) + 8 * i);
                    v345 = sub_24F92C408();

                    if (v345)
                    {
                      break;
                    }
                  }

                  v1 = v423;
                  v333 = v428;
                  v321 = v390;
                  v332 = v409;
                  if (v428 == v422)
                  {
                    goto LABEL_225;
                  }
                }

                v339 = v337;

                v340 = sub_24F92C748();

                if (!v340)
                {
                  break;
                }

                v1[44] = v340;
                swift_dynamicCast();

                v333 = v428;
                v321 = v390;
                if (v428 == v422)
                {
                  goto LABEL_225;
                }
              }

              result = sub_24F92C738();
              if (__OFADD__(result, 1))
              {
                break;
              }

              v328 = sub_24ED8083C(v419, result + 1);
              v429[0] = v328;
              v346 = *(v328 + 16);
              if (*(v328 + 24) <= v346)
              {
                sub_24ED83118(v346 + 1);
                v328 = v429[0];
              }

              v347 = v339;
              result = sub_24F92C3F8();
              v348 = v328 + 56;
              v349 = -1 << *(v328 + 32);
              v350 = result & ~v349;
              v351 = v350 >> 6;
              if (((-1 << v350) & ~*(v328 + 56 + 8 * (v350 >> 6))) != 0)
              {
                v352 = __clz(__rbit64((-1 << v350) & ~*(v328 + 56 + 8 * (v350 >> 6)))) | v350 & 0x7FFFFFFFFFFFFFC0;
                v332 = v409;
                goto LABEL_224;
              }

              v353 = 0;
              v354 = (63 - v349) >> 6;
              v332 = v409;
              do
              {
                if (++v351 == v354 && (v353 & 1) != 0)
                {
                  __break(1u);
                  goto LABEL_248;
                }

                v355 = v351 == v354;
                if (v351 == v354)
                {
                  v351 = 0;
                }

                v353 |= v355;
                v356 = *(v348 + 8 * v351);
              }

              while (v356 == -1);
              v352 = __clz(__rbit64(~v356)) + (v351 << 6);
LABEL_224:
              *(v348 + ((v352 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v352;
              *(*(v328 + 48) + 8 * v352) = v347;
              ++*(v328 + 16);

              v327 = v328;
              v333 = v428;
              v321 = v390;
              if (v428 == v422)
              {
LABEL_225:

                v177 = v383;
                v325 = v405;
                goto LABEL_184;
              }
            }
          }

          __break(1u);
          return result;
        }
      }

      while (1)
      {
        v329 = v326 + 1;
        if (__OFADD__(v326, 1))
        {
          goto LABEL_236;
        }

        if (v329 >= v325)
        {
          break;
        }

        v324 = *(v2 + 8 * v329);
        ++v326;
        if (v324)
        {
          v326 = v329;
          goto LABEL_189;
        }
      }

      swift_unknownObjectRelease();

      swift_beginAccess();
      v357 = *(v177 + 16);

      sub_24E824448(v381);

      v358 = v1[1];

      return v358(v361, v357, v327, v321);
    }

    v178 = *(v171 + 8 * v179);
    ++v174;
  }

  while (!v178);
  v174 = v179;
LABEL_83:
  v397 = v178;
  v379 = v174;
  v180 = (v174 << 9) | (8 * __clz(__rbit64(v178)));
  v181 = *(*(v371 + 56) + v180);
  v182 = *(*(v371 + 48) + v180);
  swift_retain_n();
  v183 = v182;
  v407 = v181;

  v184 = sub_24F9220B8();
  v185 = sub_24F92BDA8();

  v400 = v183;
  if (os_log_type_enabled(v184, v185))
  {
    v186 = swift_slowAlloc();
    v187 = swift_slowAlloc();
    v429[0] = v187;
    *v186 = 136446722;
    v188 = [v183 uniqueId];
    v189 = sub_24F92B0D8();
    v191 = v190;

    v192 = sub_24E7620D4(v189, v191, v429);

    *(v186 + 4) = v192;
    *(v186 + 12) = 2082;
    v193 = [v183 serviceProvider];
    if (v193)
    {
      v194 = v193;
      v195 = sub_24F92B0D8();
      v197 = v196;
    }

    else
    {
      v197 = 0xE100000000000000;
      v195 = 45;
    }

    v198 = sub_24E7620D4(v195, v197, v429);

    *(v186 + 14) = v198;
    *(v186 + 22) = 2080;
    v199 = *(v383 + 16);

    v200 = sub_24F4D429C(v183, v199);

    if (v200)
    {
      v201 = 0xD000000000000016;
    }

    else
    {
      v201 = 0x52414C55474552;
    }

    if (v200)
    {
      v202 = 0x800000024FA72830;
    }

    else
    {
      v202 = 0xE700000000000000;
    }

    v203 = sub_24E7620D4(v201, v202, v429);

    *(v186 + 24) = v203;
    _os_log_impl(&dword_24E5DD000, v184, v185, "%{public}s (%{public}s): %s", v186, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2530542D0](v187, -1, -1);
    MEMORY[0x2530542D0](v186, -1, -1);

    v176 = v384 + 56;
  }

  else
  {
  }

  v396 = (v397 - 1) & v397;
  v204 = v407;
  v205 = v407 + 64;
  v206 = -1 << *(v407 + 32);
  if (-v206 < 64)
  {
    v207 = ~(-1 << -v206);
  }

  else
  {
    v207 = -1;
  }

  v208 = v207 & *(v407 + 64);
  v209 = (63 - v206) >> 6;

  v210 = v208;
  v211 = 0;
  v212 = 0;
  v213 = 0.0;
  v411 = v209;
LABEL_100:
  if (v210)
  {
    v214 = v210;
    goto LABEL_106;
  }

  while (1)
  {
    v215 = v212 + 1;
    if (__OFADD__(v212, 1))
    {
      break;
    }

    if (v215 >= v209)
    {

      v243 = *(v204 + 16);
      v48 = __OFSUB__(v243, v211);
      v244 = v243 - v211;
      if (v48)
      {
        goto LABEL_240;
      }

      if (v244 <= 1)
      {
        v244 = 1;
      }

      v245 = v213 / v244;
      v246 = -1 << *(v204 + 32);
      if (-v246 < 64)
      {
        v247 = ~(-1 << -v246);
      }

      else
      {
        v247 = -1;
      }

      v418 = v247 & *(v204 + 64);
      v248 = (63 - v246) >> 6;

      v249 = 0;
      v250 = 0.0;
      v404 = v248;
      while (2)
      {
        v251 = v418;
        if (!v418)
        {
          while (1)
          {
            v252 = v249 + 1;
            if (__OFADD__(v249, 1))
            {
              goto LABEL_231;
            }

            if (v252 >= v248)
            {

              [v400 duration];
              v177 = v383;
              v171 = v369;
              if (v316 < v250)
              {
                v317 = sub_24F9220B8();
                v318 = sub_24F92BDB8();
                if (os_log_type_enabled(v317, v318))
                {
                  v319 = swift_slowAlloc();
                  *v319 = 0;
                  _os_log_impl(&dword_24E5DD000, v317, v318, "Game call percentage is > 100", v319, 2u);
                  v320 = v319;
                  v171 = v369;
                  MEMORY[0x2530542D0](v320, -1, -1);
                }
              }

              v174 = v379;
              v175 = v367;
              goto LABEL_78;
            }

            v251 = *(v205 + 8 * v252);
            ++v249;
            if (v251)
            {
              v249 = v252;
              break;
            }
          }
        }

        v418 = (v251 - 1) & v251;
        v412 = v249;
        v253 = __clz(__rbit64(v251)) | (v249 << 6);
        v254 = (*(v204 + 48) + 16 * v253);
        v255 = *v254;
        v256 = *(*(v204 + 56) + 8 * v253);
        v427 = v254[1];
        if (*(v2 + 16))
        {
          sub_24F92D068();

          v257 = v256;

          sub_24F92B218();
          v258 = sub_24F92D0B8();
          v259 = v427;
          v260 = -1 << *(v2 + 32);
          v261 = v258 & ~v260;
          if ((*(v176 + ((v261 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v261))
          {
            v262 = ~v260;
            while (1)
            {
              v263 = (*(v2 + 48) + 16 * v261);
              if (*v263 == v255 && v263[1] == v259)
              {
                break;
              }

              v265 = sub_24F92CE08();
              v259 = v427;
              if (v265)
              {
                break;
              }

              v261 = (v261 + 1) & v262;
              if (((*(v176 + ((v261 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v261) & 1) == 0)
              {
                goto LABEL_150;
              }
            }

LABEL_135:
            v249 = v412;
            v205 = v407 + 64;
            v248 = v404;
            continue;
          }
        }

        else
        {

          v257 = v256;
        }

        break;
      }

LABEL_150:
      v393 = v255;
      v266 = *(v257 + 16);
      if (v266)
      {
        v267 = v257;
        v268 = v423[51];
        v269 = *(v373 + 36);
        v270 = v267 + ((*(v375 + 80) + 32) & ~*(v375 + 80));
        v271 = *(v375 + 72);
        v272 = 0.0;
        do
        {
          v273 = v423[59];
          v274 = v423[51];
          sub_24E60169C(v270, v274, &qword_27F213DB0);
          sub_24F91F558();
          v276 = v275;
          v376(v274, v273);
          v376(v268 + v269, v273);
          v272 = v272 + v276;
          v270 += v271;
          --v266;
        }

        while (v266);
      }

      else
      {
        v272 = 0.0;
      }

      v277 = v245 + v272;
      [v400 duration];
      v279 = v277 / v278;
      [v400 duration];
      if (v280 <= 0.0 || v279 <= 0.5)
      {

        v292 = v400;

        v293 = sub_24F9220B8();
        v294 = sub_24F92BDB8();

        v1 = v423;
        v2 = v384;
        v204 = v407;
        if (os_log_type_enabled(v293, v294))
        {
          v295 = swift_slowAlloc();
          v387 = swift_slowAlloc();
          v429[0] = v387;
          *v295 = 136446722;
          *(v295 + 4) = sub_24E7620D4(v393, v427, v429);
          *(v295 + 12) = 2082;
          v296 = [v292 uniqueId];
          v297 = sub_24F92B0D8();
          v299 = v298;

          v300 = sub_24E7620D4(v297, v299, v429);

          *(v295 + 14) = v300;
          *(v295 + 22) = 2048;
          *(v295 + 24) = v279 * 100.0;
          _os_log_impl(&dword_24E5DD000, v293, v294, "Not considering %{public}s for call %{public}s as percentage only %f%%", v295, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x2530542D0](v387, -1, -1);
          MEMORY[0x2530542D0](v295, -1, -1);
        }
      }

      else
      {
        sub_24E824448(v381);
        v281 = v390;
        v282 = swift_isUniquelyReferenced_nonNull_native();
        v429[0] = v390;
        v284 = sub_24E76D644(v393, v427);
        v285 = *(v390 + 16);
        v286 = (v283 & 1) == 0;
        v287 = v285 + v286;
        v1 = v423;
        v2 = v384;
        v204 = v407;
        if (__OFADD__(v285, v286))
        {
          goto LABEL_241;
        }

        v288 = v283;
        if (*(v390 + 24) >= v287)
        {
          if ((v282 & 1) == 0)
          {
            sub_24E8B2FB0();
            v281 = v429[0];
          }
        }

        else
        {
          sub_24E8A27A8(v287, v282);
          v289 = v429[0];
          v290 = sub_24E76D644(v393, v427);
          if ((v288 & 1) != (v291 & 1))
          {
            goto LABEL_232;
          }

          v284 = v290;
          v281 = v289;
        }

        if ((v288 & 1) == 0)
        {
          v281[(v284 >> 6) + 8] |= 1 << v284;
          v301 = (v281[6] + 16 * v284);
          *v301 = v393;
          v301[1] = v427;
          *(v281[7] + 8 * v284) = MEMORY[0x277D84F90];
          v302 = v281[2];
          v48 = __OFADD__(v302, 1);
          v303 = v302 + 1;
          if (v48)
          {
            goto LABEL_244;
          }

          v281[2] = v303;
        }

        v390 = v281;
        v304 = (v281[7] + 8 * v284);
        v305 = v400;
        MEMORY[0x253050F00]();
        if (*((*v304 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v304 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24F92B5E8();
        }

        sub_24F92B638();
        v381 = sub_24F2D4E44;
      }

      v250 = v250 + v277;
      v306 = v400;

      v307 = sub_24F9220B8();
      v308 = sub_24F92BDA8();

      if (os_log_type_enabled(v307, v308))
      {
        v309 = swift_slowAlloc();
        v310 = v1;
        v311 = v306;
        v312 = swift_slowAlloc();
        v429[0] = v312;
        *v309 = 136446978;
        v313 = sub_24E7620D4(v393, v427, v429);

        *(v309 + 4) = v313;
        *(v309 + 12) = 2050;
        *(v309 + 14) = v277;
        *(v309 + 22) = 2050;
        v314 = v311;
        v1 = v310;
        [v314 duration];
        *(v309 + 24) = v315;
        *(v309 + 32) = 2048;
        *(v309 + 34) = v279 * 100.0;
        _os_log_impl(&dword_24E5DD000, v307, v308, "\t%{public}s, %{public}f, %{public}f, %f%%", v309, 0x2Au);
        __swift_destroy_boxed_opaque_existential_1(v312);
        MEMORY[0x2530542D0](v312, -1, -1);
        MEMORY[0x2530542D0](v309, -1, -1);
      }

      else
      {
      }

      v176 = v384 + 56;
      goto LABEL_135;
    }

    v214 = *(v205 + 8 * v215);
    ++v212;
    if (v214)
    {
      v212 = v215;
LABEL_106:
      v210 = (v214 - 1) & v214;
      if (!*(v2 + 16))
      {
        goto LABEL_100;
      }

      v417 = (v214 - 1) & v214;
      v216 = __clz(__rbit64(v214)) | (v212 << 6);
      v217 = *(v204 + 56);
      v218 = (*(v204 + 48) + 16 * v216);
      v219 = v176;
      v221 = *v218;
      v220 = v218[1];
      v222 = *(v217 + 8 * v216);
      sub_24F92D068();

      sub_24F92B218();
      v223 = sub_24F92D0B8();
      v224 = -1 << *(v2 + 32);
      v225 = v223 & ~v224;
      if ((*(v219 + ((v225 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v225))
      {
        v226 = ~v224;
        while (1)
        {
          v227 = (*(v2 + 48) + 16 * v225);
          v228 = *v227 == v221 && v227[1] == v220;
          if (v228 || (sub_24F92CE08() & 1) != 0)
          {
            break;
          }

          v225 = (v225 + 1) & v226;
          if (((*(v384 + 56 + ((v225 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v225) & 1) == 0)
          {
            goto LABEL_99;
          }
        }

        v403 = v211;

        v229 = sub_24F9220B8();
        v230 = sub_24F92BDA8();

        if (os_log_type_enabled(v229, v230))
        {
          v231 = swift_slowAlloc();
          v232 = swift_slowAlloc();
          v429[0] = v232;
          *v231 = 136446210;
          v233 = sub_24E7620D4(v221, v220, v429);

          *(v231 + 4) = v233;
          _os_log_impl(&dword_24E5DD000, v229, v230, "Donating time range from %{public}s", v231, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v232);
          MEMORY[0x2530542D0](v232, -1, -1);
          MEMORY[0x2530542D0](v231, -1, -1);
        }

        else
        {
        }

        v209 = v411;
        v205 = v407 + 64;
        v234 = *(v222 + 16);
        if (v234)
        {
          v235 = v222;
          v236 = v1[52];
          v237 = *(v373 + 36);
          v238 = v235 + ((*(v375 + 80) + 32) & ~*(v375 + 80));
          v426 = *(v375 + 72);
          do
          {
            v239 = v423[59];
            v240 = v423[52];
            sub_24E60169C(v238, v240, &qword_27F213DB0);
            sub_24F91F558();
            v242 = v241;
            v376(v240, v239);
            v376(v236 + v237, v239);
            v213 = v213 + v242;
            v238 += v426;
            --v234;
          }

          while (v234);

          v1 = v423;
          v2 = v384;
          v209 = v411;
          v205 = v407 + 64;
        }

        else
        {
        }

        v204 = v407;
        v211 = v403 + 1;
        v210 = v417;
        v176 = v384 + 56;
        if (!__OFADD__(v403, 1))
        {
          goto LABEL_100;
        }

LABEL_239:
        __break(1u);
LABEL_240:
        __break(1u);
LABEL_241:
        __break(1u);
LABEL_242:
        __break(1u);
        goto LABEL_243;
      }

LABEL_99:

      v210 = v417;
      v176 = v384 + 56;
      v204 = v407;
      v209 = v411;
      v205 = v407 + 64;
      goto LABEL_100;
    }
  }

  __break(1u);
LABEL_231:
  __break(1u);
LABEL_232:

  return sub_24F92CF88();
}

uint64_t sub_24F2D3E6C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  sub_24E60D924(MEMORY[0x277D84F90]);

  sub_24E60D924(v4);

  sub_24E60D924(v4);

  sub_24E60D924(v4);

  sub_24E608B7C(v4);

  v99 = sub_24E60D924(v4);
  v98 = sub_24E60D924(v4);
  v100 = sub_24E60D924(v4);
  v5 = sub_24E60D924(v4);
  v6 = sub_24E608B7C(v4);
  v7 = 0;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  for (i = (v8 + 63) >> 6; v10; a2 = v93)
  {
LABEL_8:
    while (1)
    {
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v14 = (v7 << 9) | (8 * v13);
      v15 = *(*(a1 + 56) + v14);
      v16 = *(*(a1 + 48) + v14);

      v17 = [v16 type];
      if (v17 > 1)
      {
        break;
      }

      if (!v17)
      {
        v92 = v6;
        v93 = a2;
        v96 = v5;
        v41 = [v16 value];
        v42 = sub_24F92B0D8();
        v44 = v43;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v101 = v100;
        v86 = v42;
        v90 = v44;
        v46 = sub_24E76D644(v42, v44);
        v47 = v100[2];
        v48 = (v45 & 1) == 0;
        v49 = v47 + v48;
        if (__OFADD__(v47, v48))
        {
          goto LABEL_65;
        }

        if (v100[3] >= v49)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v5 = v96;
            if ((v45 & 1) == 0)
            {
LABEL_46:
              v66 = v100;
              v100[(v46 >> 6) + 8] |= 1 << v46;
              v67 = (v100[6] + 16 * v46);
              *v67 = v86;
              v67[1] = v90;
              *(v100[7] + 8 * v46) = v15;

              v68 = v100[2];
              v26 = __OFADD__(v68, 1);
              v69 = v68 + 1;
              if (v26)
              {
                goto LABEL_67;
              }

LABEL_51:
              v100 = v66;
LABEL_58:
              v66[2] = v69;
              goto LABEL_59;
            }

            goto LABEL_41;
          }

          v50 = v45;
          sub_24E8B2BA4();
        }

        else
        {
          v50 = v45;
          sub_24E8A2144(v49, isUniquelyReferenced_nonNull_native);
          v51 = sub_24E76D644(v86, v90);
          if ((v50 & 1) != (v52 & 1))
          {
            goto LABEL_71;
          }

          v46 = v51;
        }

        v53 = v50;
        v5 = v96;
        if ((v53 & 1) == 0)
        {
          goto LABEL_46;
        }

LABEL_41:

        v65 = v101;
        v100 = v101;
        goto LABEL_45;
      }

      if (v17 == 1)
      {
        v92 = v6;
        v93 = a2;
        v94 = v5;
        v18 = [v16 value];
        v19 = sub_24F92B0D8();
        v21 = v20;

        v80 = swift_isUniquelyReferenced_nonNull_native();
        v101 = v100;
        v84 = v19;
        v88 = v21;
        v22 = sub_24E76D644(v19, v21);
        v24 = v100[2];
        v25 = (v23 & 1) == 0;
        v26 = __OFADD__(v24, v25);
        v27 = v24 + v25;
        if (v26)
        {
          goto LABEL_66;
        }

        v28 = v23;
        if (v100[3] < v27)
        {
          sub_24E8A2144(v27, v80);
          v22 = sub_24E76D644(v19, v88);
          if ((v28 & 1) != (v29 & 1))
          {
            goto LABEL_71;
          }

          goto LABEL_34;
        }

        if (v80)
        {
LABEL_34:
          v5 = v94;
          if ((v28 & 1) == 0)
          {
            goto LABEL_50;
          }
        }

        else
        {
          v70 = v22;
          sub_24E8B2BA4();
          v22 = v70;
          v5 = v94;
          if ((v28 & 1) == 0)
          {
LABEL_50:
            v66 = v100;
            v100[(v22 >> 6) + 8] |= 1 << v22;
            v71 = (v100[6] + 16 * v22);
            *v71 = v84;
            v71[1] = v88;
            *(v100[7] + 8 * v22) = v15;

            v72 = v100[2];
            v26 = __OFADD__(v72, 1);
            v69 = v72 + 1;
            if (v26)
            {
              goto LABEL_68;
            }

            goto LABEL_51;
          }
        }

        v46 = v22;
        goto LABEL_41;
      }

LABEL_17:

      if (!v10)
      {
        goto LABEL_4;
      }
    }

    if (v17 == 2)
    {
      v92 = v6;
      v93 = a2;
      v97 = v5;
      v54 = [v16 value];
      v55 = sub_24F92B0D8();
      v57 = v56;

      v83 = swift_isUniquelyReferenced_nonNull_native();
      v87 = v55;
      v91 = v57;
      v58 = sub_24E76D644(v55, v57);
      v60 = v99[2];
      v61 = (v59 & 1) == 0;
      v26 = __OFADD__(v60, v61);
      v62 = v60 + v61;
      if (v26)
      {
        goto LABEL_64;
      }

      v63 = v59;
      if (v99[3] < v62)
      {
        sub_24E8A2144(v62, v83);
        v58 = sub_24E76D644(v55, v91);
        if ((v63 & 1) != (v64 & 1))
        {
          goto LABEL_71;
        }

        goto LABEL_43;
      }

      if (v83)
      {
LABEL_43:
        v5 = v97;
        if ((v63 & 1) == 0)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v76 = v58;
        sub_24E8B2BA4();
        v58 = v76;
        v5 = v97;
        if ((v63 & 1) == 0)
        {
LABEL_57:
          v66 = v99;
          v99[(v58 >> 6) + 8] |= 1 << v58;
          v77 = (v99[6] + 16 * v58);
          *v77 = v87;
          v77[1] = v91;
          *(v99[7] + 8 * v58) = v15;

          v78 = v99[2];
          v26 = __OFADD__(v78, 1);
          v69 = v78 + 1;
          if (v26)
          {
            goto LABEL_69;
          }

          goto LABEL_58;
        }
      }

      v46 = v58;

      v65 = v99;
      goto LABEL_45;
    }

    if (v17 != 3)
    {
      goto LABEL_17;
    }

    v92 = v6;
    v93 = a2;
    v95 = v5;
    v30 = [v16 value];
    v31 = sub_24F92B0D8();
    v33 = v32;

    v81 = swift_isUniquelyReferenced_nonNull_native();
    v85 = v31;
    v89 = v33;
    v34 = sub_24E76D644(v31, v33);
    v36 = v98[2];
    v37 = (v35 & 1) == 0;
    v26 = __OFADD__(v36, v37);
    v38 = v36 + v37;
    if (v26)
    {
      goto LABEL_63;
    }

    v39 = v35;
    if (v98[3] >= v38)
    {
      if ((v81 & 1) == 0)
      {
        v73 = v34;
        sub_24E8B2BA4();
        v34 = v73;
        v5 = v95;
        if ((v39 & 1) == 0)
        {
LABEL_53:
          v66 = v98;
          v98[(v34 >> 6) + 8] |= 1 << v34;
          v74 = (v98[6] + 16 * v34);
          *v74 = v85;
          v74[1] = v89;
          *(v98[7] + 8 * v34) = v15;

          v75 = v98[2];
          v26 = __OFADD__(v75, 1);
          v69 = v75 + 1;
          if (v26)
          {
            goto LABEL_70;
          }

          goto LABEL_58;
        }

        goto LABEL_38;
      }
    }

    else
    {
      sub_24E8A2144(v38, v81);
      v34 = sub_24E76D644(v31, v89);
      if ((v39 & 1) != (v40 & 1))
      {
        goto LABEL_71;
      }
    }

    v5 = v95;
    if ((v39 & 1) == 0)
    {
      goto LABEL_53;
    }

LABEL_38:
    v46 = v34;

    v65 = v98;
LABEL_45:
    *(v65[7] + 8 * v46) = v15;

LABEL_59:
    v6 = v92;
  }

LABEL_4:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= i)
    {

      *a2 = v99;
      a2[1] = v98;
      a2[2] = v100;
      a2[3] = v5;
      a2[4] = v6;
      return result;
    }

    v10 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v10)
    {
      v7 = v12;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  result = sub_24F92CF88();
  __break(1u);
  return result;
}

uint64_t sub_24F2D4580(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_24F91F648();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F2D45C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t block_copy_helper_138(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_24F2D4698(void *a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  if (a1)
  {
  }
}

uint64_t sub_24F2D4750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 252)
  {
    v4 = *(a1 + 2);
    if (v4 >= 4)
    {
      return v4 - 3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_24F91F648();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F2D4808(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 252)
  {
    *(result + 2) = a2 + 3;
  }

  else
  {
    v7 = sub_24F91F648();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24F2D48A8()
{
  result = sub_24F91F648();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24F2D4940()
{
  result = qword_27F23E268;
  if (!qword_27F23E268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E268);
  }

  return result;
}

unint64_t sub_24F2D4998()
{
  result = qword_27F23E270;
  if (!qword_27F23E270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E270);
  }

  return result;
}

unint64_t sub_24F2D49F0()
{
  result = qword_27F23E278;
  if (!qword_27F23E278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E278);
  }

  return result;
}

uint64_t sub_24F2D4A64()
{

  return swift_deallocObject();
}

uint64_t sub_24F2D4AAC()
{

  return swift_deallocObject();
}

uint64_t sub_24F2D4AE4()
{

  return swift_deallocObject();
}

uint64_t sub_24F2D4BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F91F648();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24F2D4C90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24F91F648();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_24F2D4D48()
{
  sub_24F91F648();
  if (v0 <= 0x3F)
  {
    sub_24F2D4DCC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24F2D4DCC()
{
  if (!qword_27F23E2B0)
  {
    sub_24E69A5C4(255, &unk_27F23E280);
    v0 = sub_24F92B6E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F23E2B0);
    }
  }
}

uint64_t EnvironmentValues.pageContext.getter()
{
  sub_24EC6BAC0();
  sub_24F924868();
  return v1;
}

void (*EnvironmentValues.pageContext.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 40) = sub_24EC6BAC0();
  sub_24F924868();
  *v4 = v4[1];
  return sub_24F2D4F64;
}

void sub_24F2D4F64(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v2[2] = v4;
  v2[3] = v3;
  if (a2)
  {

    sub_24F924878();
  }

  else
  {
    sub_24F924878();
  }

  free(v2);
}

uint64_t View.providePageContextMetrics()(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v15 = 0;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
  sub_24F926F28();
  v5 = v9;
  v6 = v10;
  v7 = v11;
  v9 = KeyPath;
  v10 = 0;
  LOBYTE(v11) = 0;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  MEMORY[0x25304C420](&v9, a1, &type metadata for ProvidePageContextModifier, a2);
}

uint64_t sub_24F2D50CC()
{
  sub_24F924038();
  sub_24F2D5130();
  return swift_getWitnessTable();
}

unint64_t sub_24F2D5130()
{
  result = qword_27F23E2B8;
  if (!qword_27F23E2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E2B8);
  }

  return result;
}

uint64_t sub_24F2D5184(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_24F2D51E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_24F2D527C(uint64_t a1)
{
  v1[12] = a1;
  v2 = sub_24F924848();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  sub_24F92B7F8();
  v1[16] = sub_24F92B7E8();
  v4 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F2D5370, v4, v3);
}

uint64_t sub_24F2D5370()
{
  v1 = *(v0 + 96);

  v2 = *(v1 + 16);
  *(v0 + 40) = *v1;
  *(v0 + 56) = v2;
  v3 = *(v0 + 40);
  if (v2 == 1)
  {
  }

  else
  {
    v6 = *(v0 + 112);
    v5 = *(v0 + 120);
    v7 = *(v0 + 104);

    sub_24F92BDC8();
    v8 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E601704(v0 + 40, &qword_27F224448);
    (*(v6 + 8))(v5, v7);
    v3 = *(v0 + 64);
    v4 = *(v0 + 72);
  }

  v9 = *(v0 + 96);
  v10 = *(v9 + 40);
  *(v0 + 16) = *(v9 + 24);
  *(v0 + 32) = v10;
  *(v0 + 80) = v3;
  *(v0 + 88) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E2E8);
  sub_24F926F48();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_24F2D54FC(uint64_t a1, __int128 *a2)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 24);
  v15 = *(a2 + 5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E2E8);
  sub_24F926F38();
  v7 = v13;
  if (v13)
  {
    v8 = v12;
  }

  else
  {
    v14 = *a2;
    LOBYTE(v15) = *(a2 + 16);
    v8 = v14;
    if (v15 == 1)
    {
      v7 = *(&v14 + 1);

      if (!v7)
      {
        return result;
      }
    }

    else
    {

      sub_24F92BDC8();
      v10 = sub_24F9257A8();
      sub_24F921FD8();

      sub_24F924838();
      swift_getAtKeyPath();
      sub_24E601704(&v14, &qword_27F224448);
      result = (*(v4 + 8))(v6, v3);
      v8 = v12;
      v7 = v13;
      if (!v13)
      {
        return result;
      }
    }
  }

  v12 = v8;
  v13 = v7;
  if (qword_27F210670 != -1)
  {
    swift_once();
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910);
  __swift_project_value_buffer(v11, qword_27F22E400);
  sub_24F929A98();
}

uint64_t sub_24F2D5738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a1;
  v16 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E2C0);
  MEMORY[0x28223BE20](v3);
  v5 = &v14 - v4;
  v6 = *(v2 + 5);
  v18 = *v2;
  v19 = *(v2 + 16);
  v21 = *(v2 + 24);
  v20 = v6;
  v7 = swift_allocObject();
  v8 = v2[1];
  *(v7 + 16) = *v2;
  *(v7 + 32) = v8;
  *(v7 + 48) = *(v2 + 4);
  *(v7 + 56) = v6;
  v9 = &v5[*(v3 + 36)];
  sub_24F923AD8();
  sub_24E60169C(&v18, v17, &qword_27F224448);
  sub_24E60169C(&v21, v17, &unk_27F23B740);
  sub_24E60169C(&v20, v17, &qword_27F23E2C8);
  sub_24F92B818();
  *v9 = &unk_24F9E02E0;
  *(v9 + 1) = v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E2D0);
  (*(*(v10 - 8) + 16))(v5, v15, v10);
  v11 = swift_allocObject();
  v12 = v2[1];
  *(v11 + 16) = *v2;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(v2 + 4);
  *(v11 + 56) = v6;
  sub_24E60169C(&v18, v17, &qword_27F224448);
  sub_24E60169C(&v21, v17, &unk_27F23B740);
  sub_24E60169C(&v20, v17, &qword_27F23E2C8);
  sub_24F2D5AA0();
  sub_24F925F38();

  return sub_24E601704(v5, &qword_27F23E2C0);
}

uint64_t sub_24F2D59B8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_24E614970;

  return sub_24F2D527C(v0 + 16);
}

uint64_t objectdestroyTm_61()
{
  sub_24E74C370(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

unint64_t sub_24F2D5AA0()
{
  result = qword_27F23E2D8;
  if (!qword_27F23E2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23E2C0);
    sub_24F2D5B2C();
    sub_24E6D8720();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E2D8);
  }

  return result;
}

unint64_t sub_24F2D5B2C()
{
  result = qword_27F23E2E0;
  if (!qword_27F23E2E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23E2D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E2E0);
  }

  return result;
}

uint64_t sub_24F2D5B90()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23E2C0);
  sub_24F2D5AA0();
  return swift_getOpaqueTypeConformance2();
}

__n128 PurchaseDecorationIntent.init(purchaseIntent:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0xD000000000000018;
  *(a2 + 8) = 0x800000024F9E02F0;
  v2 = *(a1 + 112);
  *(a2 + 112) = *(a1 + 96);
  *(a2 + 128) = v2;
  v3 = *(a1 + 144);
  *(a2 + 144) = *(a1 + 128);
  *(a2 + 160) = v3;
  v4 = *(a1 + 48);
  *(a2 + 48) = *(a1 + 32);
  *(a2 + 64) = v4;
  v5 = *(a1 + 80);
  *(a2 + 80) = *(a1 + 64);
  *(a2 + 96) = v5;
  result = *a1;
  v7 = *(a1 + 16);
  *(a2 + 16) = *a1;
  *(a2 + 32) = v7;
  return result;
}

uint64_t PurchaseDecorationIntent.kind.getter()
{
  v1 = *v0;

  return v1;
}

JSValue __swiftcall PurchaseDecorationIntent.makeValue(in:)(JSContext in)
{
  v2 = objc_opt_self();
  result.super.isa = [v2 valueWithNewObjectInContext_];
  if (result.super.isa)
  {
    isa = result.super.isa;
    sub_24EBA9E24();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730);
    v5 = [v2 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
    result.super.isa = swift_unknownObjectRelease();
    if (v5)
    {
      sub_24F92C328();
      return isa;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_24F2D5D6C()
{
  result = qword_27F23E2F0;
  if (!qword_27F23E2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E2F0);
  }

  return result;
}

__n128 PlatformSelectorViewLayout.init(metrics:style:descriptionLabel:accessoryImageView:)@<Q0>(void *__src@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 9);
  memcpy((a5 + 96), __src, 0x118uLL);
  *(a5 + 80) = v8;
  *(a5 + 88) = v9;
  *(a5 + 89) = v10;
  sub_24E612C80(a3, a5);
  result = *a4;
  v12 = *(a4 + 16);
  *(a5 + 40) = *a4;
  *(a5 + 56) = v12;
  *(a5 + 72) = *(a4 + 32);
  return result;
}

void PlatformSelectorViewLayout.style.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 89);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

uint64_t PlatformSelectorViewLayout.Metrics.AccessoryAlignment.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

uint64_t PlatformSelectorViewLayout.Metrics.badgeHorizontalPadding.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_24E612C80(a1, v1);
}

uint64_t PlatformSelectorViewLayout.Metrics.textSpaceWhenInline.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 40);

  return sub_24E612C80(a1, v1 + 40);
}

uint64_t PlatformSelectorViewLayout.Metrics.textSpaceWhenExclusiveLine.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 80);

  return sub_24E612C80(a1, v1 + 80);
}

uint64_t PlatformSelectorViewLayout.Metrics.badgeSpaceExclusiveLine.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 120);

  return sub_24E612C80(a1, v1 + 120);
}

uint64_t PlatformSelectorViewLayout.Metrics.accessoryHorizontalPadding.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 160);

  return sub_24E612C80(a1, v1 + 160);
}

void PlatformSelectorViewLayout.Metrics.accessoryContentInsets.setter(double a1, double a2, double a3, double a4)
{
  v4[25] = a1;
  v4[26] = a2;
  v4[27] = a3;
  v4[28] = a4;
}

uint64_t PlatformSelectorViewLayout.Metrics.bottomSpacer.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 240);

  return sub_24E612C80(a1, v1 + 240);
}

uint64_t PlatformSelectorViewLayout.Metrics.init(badgeHorizontalPadding:textSpaceWhenInline:textSpaceWhenExclusiveLine:badgeSpaceExclusiveLine:accessoryHorizontalPadding:accessoryContentInsets:accessoryAlignment:bottomSpacer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, char *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>, double a11@<D2>, double a12@<D3>)
{
  v31 = *a6;
  sub_24E615E00(a1, a8);
  v21 = sub_24F922628();
  v22 = MEMORY[0x277D22798];
  *(a8 + 64) = v21;
  *(a8 + 72) = v22;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a8 + 40));
  v24 = *(v21 - 8);
  v25 = *(v24 + 16);
  v25(boxed_opaque_existential_1, a2, v21);
  *(a8 + 104) = v21;
  *(a8 + 112) = v22;
  v26 = __swift_allocate_boxed_opaque_existential_1((a8 + 80));
  v25(v26, a3, v21);
  *(a8 + 144) = v21;
  *(a8 + 152) = v22;
  v27 = __swift_allocate_boxed_opaque_existential_1((a8 + 120));
  (*(v24 + 32))(v27, a4, v21);
  v28 = *(v24 + 8);
  v28(a3, v21);
  v28(a2, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_24E612C80(a5, a8 + 160);
  *(a8 + 200) = a9;
  *(a8 + 208) = a10;
  *(a8 + 216) = a11;
  *(a8 + 224) = a12;
  *(a8 + 232) = v31;

  return sub_24E612C80(a7, a8 + 240);
}

id static PlatformSelectorViewLayout.makeFullPlatformString(descriptiveText:badgeString:metrics:style:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_24F92CDB8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    v22 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v21 = sub_24F92B098();
    v18 = [v22 initWithString_];
    goto LABEL_6;
  }

  v43[0] = v12;
  v15 = *a5;
  v16 = *(a5 + 8);
  v17 = *(a5 + 9);
  v18 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  if (v17 != 1)
  {
    v23 = objc_allocWithZone(MEMORY[0x277CCA898]);

    v24 = sub_24F92B098();

    v25 = [v23 initWithString_];

    [v18 appendAttributedString_];
    if (v16)
    {
      return v18;
    }

    v26 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
    [v26 setHeadIndent_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221880);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93DE60;
    v28 = *MEMORY[0x277D74118];
    *(inited + 32) = *MEMORY[0x277D74118];
    v29 = inited + 32;
    *(inited + 64) = sub_24F2D6958();
    *(inited + 40) = v26;
    v30 = v28;
    v31 = v26;
LABEL_10:
    v40 = v31;
    sub_24E608940(inited);
    swift_setDeallocating();
    sub_24E601704(v29, &qword_27F221890);
    type metadata accessor for Key(0);
    sub_24EADDED4();
    v41 = sub_24F92AE28();

    [v18 addAttributes:v41 range:{0, objc_msgSend(v18, sel_length)}];

    return v18;
  }

  if (!(*&v15 | v16))
  {
    v43[10] = 10;
    v43[11] = 0xE100000000000000;
    MEMORY[0x253050C20](a1, a2);
    v32 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v33 = sub_24F92B098();

    v34 = [v32 initWithString_];

    [v18 appendAttributedString_];
    v35 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
    __swift_project_boxed_opaque_existential_1((a4 + 120), *(a4 + 144));
    sub_24E8ED7D8();
    sub_24F9223A8();
    v37 = v36;
    (*(v11 + 8))(v14, v43[0]);
    [v35 setParagraphSpacing_];
    [v35 setLineBreakMode_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221880);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93DE60;
    v38 = *MEMORY[0x277D74118];
    *(inited + 32) = *MEMORY[0x277D74118];
    v29 = inited + 32;
    *(inited + 64) = sub_24F2D6958();
    *(inited + 40) = v35;
    v39 = v38;
    v31 = v35;
    goto LABEL_10;
  }

  v19 = objc_allocWithZone(MEMORY[0x277CCA898]);

  v20 = sub_24F92B098();

  v21 = [v19 initWithString_];

  [v18 appendAttributedString_];
LABEL_6:

  return v18;
}

unint64_t sub_24F2D6958()
{
  result = qword_27F2254C8;
  if (!qword_27F2254C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F2254C8);
  }

  return result;
}

double PlatformSelectorViewLayout.measurements(fitting:in:)(void *a1, double a2)
{
  v3 = v2;
  v6 = sub_24F92CDB8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E94275C((v2 + 5), v20);
  if (!v21)
  {
    sub_24E601704(v20, &qword_27F229780);
    goto LABEL_5;
  }

  __swift_project_boxed_opaque_existential_1(v20, v21);
  sub_24F922298();
  v11 = v10;
  __swift_destroy_boxed_opaque_existential_1(v20);
  if (v11 <= 0.0)
  {
LABEL_5:
    v12 = MEMORY[0x277D839F8];
    v21 = MEMORY[0x277D839F8];
    v22 = MEMORY[0x277D22A30];
    v20[0] = 0;
    goto LABEL_6;
  }

  sub_24E615E00((v2 + 32), v20);
  v12 = v21;
LABEL_6:
  __swift_project_boxed_opaque_existential_1(v20, v12);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v13 = *(v7 + 8);
  v17[2] = v7 + 8;
  v19 = v13;
  v13(v9, v6);
  v14 = v3[3];
  v17[1] = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v14);
  v18 = v6;
  v15 = [a1 traitCollection];
  sub_24F92BF98();

  sub_24F922478();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_24F922288();
  __swift_project_boxed_opaque_existential_1(v3 + 17, v3[20]);
  sub_24F9223C8();
  __swift_project_boxed_opaque_existential_1(v3 + 42, v3[45]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v19(v9, v18);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return ceil(a2);
}

uint64_t BadgeDisplayStyle.numberOfLines(for:)(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 9);
  v5 = [a1 traitCollection];
  v6 = sub_24F92BF98();

  v7 = 2;
  if (v6)
  {
    v7 = 3;
  }

  if (v2 | v3)
  {
    v8 = v7;
  }

  else
  {
    v8 = v7 + 1;
  }

  if (v4 == 1)
  {
    return v8;
  }

  else
  {
    return v7;
  }
}

uint64_t PlatformSelectorViewLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v70 = a2;
  v13 = sub_24F92CDB8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E94275C(v6 + 40, v77);
  if (v78)
  {
    __swift_project_boxed_opaque_existential_1(v77, v78);
    sub_24F922298();
    v18 = v17;
    v65 = v19;
    __swift_destroy_boxed_opaque_existential_1(v77);
    if (v18 > 0.0)
    {
      sub_24E615E00(v6 + 256, v77);
      v20 = v78;
      goto LABEL_6;
    }
  }

  else
  {
    sub_24E601704(v77, &qword_27F229780);
    v65 = 0;
    v18 = 0.0;
  }

  v20 = MEMORY[0x277D839F8];
  v78 = MEMORY[0x277D839F8];
  v79 = MEMORY[0x277D22A30];
  v77[0] = 0;
LABEL_6:
  __swift_project_boxed_opaque_existential_1(v77, v20);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v22 = v21;
  v23 = *(v14 + 8);
  v66 = v16;
  v68 = v13;
  v67 = v14 + 8;
  v63 = v23;
  v23(v16, v13);
  v64 = v18;
  v72 = a5 - (v18 + v22);
  __swift_project_boxed_opaque_existential_1(v7, *(v7 + 24));
  v24 = [a1 traitCollection];
  sub_24F92BF98();

  sub_24F922478();
  __swift_project_boxed_opaque_existential_1(v7, *(v7 + 24));
  sub_24F922288();
  v26 = v25;
  v28 = v27;
  v71 = v29;
  v69 = v30;
  v80.origin.x = a3;
  v80.origin.y = a4;
  v80.size.width = a5;
  v80.size.height = a6;
  v31 = floor(CGRectGetMinX(v80));
  v81.origin.x = a3;
  v81.origin.y = a4;
  v81.size.width = a5;
  v81.size.height = a6;
  v32 = a3;
  v33 = a4;
  MinY = CGRectGetMinY(v81);
  __swift_project_boxed_opaque_existential_1((v7 + 136), *(v7 + 160));
  sub_24F9223C8();
  v36 = MinY + v35;
  v37 = v33;
  v38 = v32;
  v39 = floor(v36);
  v40 = v72;
  if (v26 < v72)
  {
    v40 = v26;
  }

  v41 = a5;
  v42 = ceil(v40);
  v43 = ceil(v28);
  v44 = a6;
  v45 = v37;
  __swift_project_boxed_opaque_existential_1(v7, *(v7 + 24));
  v72 = v31;
  v71 = v43;
  sub_24F92C1D8();
  sub_24F922228();
  sub_24E94275C(v7 + 40, &v73);
  if (v74)
  {
    sub_24E612C80(&v73, v75);
    v46 = *(v7 + 328);
    v69 = v39;
    v62 = v42;
    if (v46)
    {
      v82.origin.x = v38;
      v82.origin.y = v45;
      v82.size.width = v41;
      v82.size.height = v44;
      CGRectGetMaxX(v82);
      v47 = v38;
      v48 = v45;
      v49 = v41;
      v50 = v44;
      v51 = v68;
      v52 = v66;
      v53 = v63;
    }

    else
    {
      v54 = [a1 traitCollection];
      v55 = sub_24F92BF78();

      v51 = v68;
      v52 = v66;
      v53 = v63;
      if ((v55 & 1) != 0 && (v56 = [a1 traitCollection], v57 = sub_24F92BF98(), v56, (v57 & 1) == 0))
      {
        v84.origin.x = v72;
        v84.origin.y = v39;
        v84.size.width = v42;
        v84.size.height = v71;
        CGRectGetMaxX(v84);
        __swift_project_boxed_opaque_existential_1(v77, v78);
        sub_24E8ED7D8();
        sub_24F9223A8();
        v50 = v44;
        v53(v52, v51);
        v47 = v38;
        v48 = v45;
        v49 = v41;
      }

      else
      {
        v83.origin.x = v38;
        v83.origin.y = v45;
        v83.size.width = v41;
        v83.size.height = v44;
        CGRectGetMaxX(v83);
        v47 = v38;
        v48 = v45;
        v49 = v41;
        v50 = v44;
      }
    }

    v85.origin.x = v47;
    v85.origin.y = v48;
    v85.size.width = v49;
    v85.size.height = v50;
    CGRectGetMinY(v85);
    __swift_project_boxed_opaque_existential_1((v7 + 136), *(v7 + 160));
    sub_24E8ED7D8();
    sub_24F9223A8();
    v53(v52, v51);
    __swift_project_boxed_opaque_existential_1(v75, v76);
    sub_24F92C1D8();
    sub_24F922228();
    __swift_destroy_boxed_opaque_existential_1(v75);
    v39 = v69;
    v42 = v62;
  }

  else
  {
    sub_24E601704(&v73, &qword_27F229780);
  }

  v58 = v72;
  v86.origin.x = v72;
  v86.origin.y = v39;
  v86.size.width = v42;
  v59 = v71;
  v86.size.height = v71;
  CGRectGetMinX(v86);
  v87.origin.x = v58;
  v87.origin.y = v39;
  v87.size.width = v42;
  v87.size.height = v59;
  CGRectGetMinY(v87);
  sub_24E94275C(v7 + 40, v75);
  if (v76)
  {
    __swift_project_boxed_opaque_existential_1(v75, v76);
    sub_24F922218();
    CGRectGetMaxX(v88);
    __swift_destroy_boxed_opaque_existential_1(v75);
  }

  else
  {
    sub_24E601704(v75, &qword_27F229780);
    v89.origin.x = v58;
    v89.origin.y = v39;
    v89.size.width = v42;
    v89.size.height = v59;
    CGRectGetMaxX(v89);
  }

  v90.origin.x = v58;
  v90.origin.y = v39;
  v90.size.width = v42;
  v90.size.height = v59;
  CGRectGetHeight(v90);
  sub_24F922128();
  return __swift_destroy_boxed_opaque_existential_1(v77);
}

double sub_24F2D7570()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2297E0);
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E320);
  v1 = swift_allocObject();
  *(v1 + 16) = KeyPath;
  *&result = 1;
  *(v1 + 24) = xmmword_24F941C80;
  off_27F23E300 = v1;
  return result;
}

uint64_t static BadgeDisplayStyle.numberOfBadgesAllowedInline.getter@<X0>(void *a1@<X8>)
{
  if (qword_27F2110B8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = off_27F23E300;
}

void static BadgeDisplayStyle.style(forBadgeCount:pageTraits:indentForBadges:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if (qword_27F2110B8 != -1)
  {
    swift_once();
  }

  v14 = a2;
  (*(*off_27F23E300 + 104))(&v15, &v14);
  if (v15 >= a1)
  {
    v12 = [a2 traitCollection];
    v13 = sub_24F92BF98();

    if (v13)
    {
      v10 = 0;
      a3 = 1;
      v11 = 1;
    }

    else
    {
      v11 = 0;
      v10 = a4 & 1;
    }
  }

  else
  {
    a3 = 0;
    v10 = 0;
    v11 = 1;
  }

  *a5 = a3;
  *(a5 + 8) = v10;
  *(a5 + 9) = v11;
}

BOOL static BadgeDisplayStyle.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*(a1 + 9) == 1)
  {
    if (*&v2 | v3)
    {
      if (*(a2 + 9))
      {
        return (*&v4 | v5) != 0;
      }
    }

    else if (*(a2 + 9))
    {
      return (*&v4 | v5) == 0;
    }
  }

  else if ((*(a2 + 9) & 1) == 0)
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else if ((v5 & 1) == 0 && v2 == v4)
    {
      return 1;
    }
  }

  return 0;
}

BOOL sub_24F2D7814(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*(a1 + 9) == 1)
  {
    if (*&v2 | v3)
    {
      if (*(a2 + 9))
      {
        return (*&v4 | v5) != 0;
      }
    }

    else if (*(a2 + 9))
    {
      return (*&v4 | v5) == 0;
    }

    return 0;
  }

  if ((*(a2 + 9) & 1) == 0)
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else if ((v5 & 1) == 0 && v2 == v4)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_24F2D789C()
{
  result = qword_27F23E310;
  if (!qword_27F23E310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E310);
  }

  return result;
}

uint64_t sub_24F2D7908(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 280))
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

uint64_t sub_24F2D7950(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 280) = 1;
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

    *(result + 280) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BadgeDisplayStyle(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 10))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BadgeDisplayStyle(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 10) = v3;
  return result;
}

uint64_t sub_24F2D7A48(uint64_t a1)
{
  if (*(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24F2D7A64(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    *(result + 9) = 1;
  }

  else
  {
    *(result + 9) = 0;
  }

  return result;
}

__n128 sub_24F2D7AA8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t PaginatedPagePresenter.isPreparingNextPage.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))(v4);
  v2 = v5;
  if (v5 == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    sub_24E94E128(v4);
  }

  return v2;
}

double PaginatedPagePresenter.nextPage.getter@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  (*(a1 + 24))(v5);
  if (v7)
  {
    sub_24E612B0C(v5, a2);
  }

  else
  {

    result = *v5;
    v4 = v5[1];
    *a2 = v5[0];
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_24F2D7BA0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return PaginatedPagePresenter.isPreparingNextPage.getter(a1, WitnessTable);
}

BOOL sub_24F2D7BF4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return PaginatedPagePresenter.shouldPrepareNextPage.getter(a1, WitnessTable);
}

BOOL PaginatedPagePresenter.shouldPrepareNextPage.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))(&v5);
  if (v8)
  {
    sub_24E94E128(&v5);
    return 0;
  }

  else
  {

    v4[0] = v5;
    v4[1] = v6;
    v2 = *(&v6 + 1) != 0;
    sub_24E857CC8(v4);
  }

  return v2;
}

void sub_24F2D7D00()
{
  swift_getWitnessTable();

  PaginatedPagePresenter.prepareNextPage()();
}

uint64_t sub_24F2D7D54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return PaginatedPagePresenter.isPreparingNextPage.getter(a1, WitnessTable);
}

BOOL sub_24F2D7DA8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return PaginatedPagePresenter.shouldPrepareNextPage.getter(a1, WitnessTable);
}

void sub_24F2D7DFC()
{
  swift_getWitnessTable();

  PaginatedPagePresenter.prepareNextPage()();
}

uint64_t PageTabChangeAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v31 = a2;
  v26 = *v3;
  v30 = sub_24F9285B8();
  v34 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v27 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F928388();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  v32 = a1;
  sub_24F928398();
  v13 = sub_24F928348();
  v15 = v14;
  v16 = *(v7 + 8);
  v33 = v6;
  v16(v12, v6);
  if (v15)
  {
    v17 = (v29 + OBJC_IVAR____TtC12GameStoreKit19PageTabChangeAction_selectedTabId);
    *v17 = v13;
    v17[1] = v15;
    v18 = v32;
    (*(v7 + 16))(v9, v32, v33);
    v6 = v27;
    v20 = v30;
    v19 = v31;
    (*(v34 + 16))(v27, v31, v30);
    v21 = v28;
    v22 = Action.init(deserializing:using:)(v9, v6);
    if (!v21)
    {
      v6 = v22;
    }

    (*(v34 + 8))(v19, v20);
    v16(v18, v33);
  }

  else
  {
    v23 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    strcpy(v24, "selectedTabId");
    *(v24 + 7) = -4864;
    *(v24 + 2) = v26;
    (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D22530], v23);
    swift_willThrow();
    (*(v34 + 8))(v31, v30);
    v16(v32, v33);
    type metadata accessor for PageTabChangeAction();
    swift_deallocPartialClassInstance();
  }

  return v6;
}

uint64_t type metadata accessor for PageTabChangeAction()
{
  result = qword_27F23E330;
  if (!qword_27F23E330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PageTabChangeAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return v0;
}

uint64_t PageTabChangeAction.selectedTabId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit19PageTabChangeAction_selectedTabId);

  return v1;
}

uint64_t PageTabChangeAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return swift_deallocClassInstance();
}

id sub_24F2D85AC(void *a1, void *a2, char a3, uint64_t a4)
{
  v9 = sub_24F91E968();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v22 - v14;
  v16 = type metadata accessor for LegacyMediaAuthenticationProtocolHandler();
  v22.receiver = v4;
  v22.super_class = v16;
  result = objc_msgSendSuper2(&v22, sel_reconfigureNewRequest_originalTask_redirect_error_, a1, a2, a3 & 1, a4);
  if (a3)
  {
    result = [a2 originalRequest];
    if (result)
    {
      v18 = result;
      sub_24F91E908();

      (*(v10 + 32))(v15, v12, v9);
      sub_24F91E948();
      if (v19)
      {
        v20 = sub_24F92B098();

        v21 = sub_24F92B098();
        [a1 setValue:v20 forHTTPHeaderField:v21];
      }

      return (*(v10 + 8))(v15, v9);
    }
  }

  return result;
}

id sub_24F2D8874()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LegacyMediaAuthenticationProtocolHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_24F2D88CC(void *a1, void *a2, char a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_24F91E968();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = MEMORY[0x28223BE20](v15).n128_u64[0];
  v18 = &v24 - v17;
  v24.receiver = v5;
  v24.super_class = ObjectType;
  result = objc_msgSendSuper2(&v24, sel_reconfigureNewRequest_originalTask_redirect_error_, a1, a2, a3 & 1, a4, v16);
  if (a3)
  {
    result = [a2 originalRequest];
    if (result)
    {
      v20 = result;
      sub_24F91E908();

      (*(v12 + 32))(v18, v14, v11);
      sub_24F91E948();
      if (v21)
      {
        v22 = sub_24F92B098();

        v23 = sub_24F92B098();
        [a1 setValue:v22 forHTTPHeaderField:v23];
      }

      return (*(v12 + 8))(v18, v11);
    }
  }

  return result;
}

void (*NestedModelImpressionsRecording.startRecordingNestedImpressions(for:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(void)
{
  v8 = *(a4 + 16);

  v8(a2, a3, a4);
  v9 = (*(a4 + 56))(a1, a2, a3, a4);
  (*(a4 + 40))(v9);
  result = (*(a4 + 32))(a3, a4);
  if (result)
  {
    v11 = result;
    result();

    return sub_24E824448(v11);
  }

  return result;
}

uint64_t NestedModelImpressionsRecording.stopRecordingNestedImpressions(using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ImpressionsCalculator.removeAllElements()();
  (*(a3 + 16))(0, a2, a3);
  v5 = *(a3 + 40);

  return v5(0, 0, a2, a3);
}

BOOL sub_24F2D8E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = off_2861D2618;
  type metadata accessor for Restrictions();
  if (v6())
  {
    if (off_2861D2608() >= a3)
    {
      return 0;
    }

    v7 = ASKDeviceTypeGetCurrent();
    v8 = sub_24F92B0D8();
    v10 = v9;
    if (v8 == sub_24F92B0D8() && v10 == v11)
    {

      return 0;
    }

    v13 = sub_24F92CE08();

    if (v13)
    {
      return 0;
    }

    if (a2)
    {
      v15 = off_2861D2610();
      if (*(v15 + 16))
      {
        v16 = sub_24E76D644(a1, a2);
        if (v17)
        {
          v18 = *(*(v15 + 56) + 8 * v16);

          return v18 < a3;
        }
      }
    }
  }

  return 1;
}

uint64_t sub_24F2D8FF4()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F23E340);
  __swift_project_value_buffer(v4, qword_27F23E340);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

uint64_t sub_24F2D9148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 25);
  v10 = swift_task_alloc();
  *(v3 + 24) = v10;
  if (v9)
  {
    v11 = 256;
  }

  else
  {
    v11 = 0;
  }

  *v10 = v3;
  v10[1] = sub_24EA2DAEC;

  return sub_24F2D93E8(v5, v6, v7, v11 | v8, a3);
}

uint64_t sub_24F2D9238(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  type metadata accessor for Restrictions();
  sub_24F928FD8();
  sub_24F92A758();
  if (off_2861D2618() & 1) != 0 && ((off_2861D2628() & 1) == 0 || (a4 & 0x100) != 0) && ((a4 & 1) != 0 || !sub_24F2D8E44(a1, a2, a3)) || (sub_24F92BF18(), (v9))
  {

    return 0;
  }

  else
  {
    sub_24F92BF18();

    if (v9)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }
}

uint64_t sub_24F2D93E8(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5)
{
  *(v5 + 72) = a4;
  *(v5 + 40) = a3;
  *(v5 + 48) = a5;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  return MEMORY[0x2822009F8](sub_24F2D9410, 0, 0);
}

uint64_t sub_24F2D9410()
{
  sub_24F2D96B0();
  sub_24F928FD8();
  sub_24F92A758();
  v0[7] = v0[2];
  if (qword_27F2110C0 != -1)
  {
    swift_once();
  }

  v1 = sub_24F92AAE8();
  v2 = __swift_project_value_buffer(v1, qword_27F23E340);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_24F2D9520;

  return sub_24EB6124C(v2);
}

uint64_t sub_24F2D9520(char a1)
{
  *(*v1 + 74) = a1;

  return MEMORY[0x2822009F8](sub_24F2D9620, 0, 0);
}

uint64_t sub_24F2D9620()
{
  if (*(v0 + 74))
  {
    v1 = 0;
  }

  else
  {
    v1 = sub_24F2D9238(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 72) & 0x101);
  }

  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_24F2D96B0()
{
  result = qword_27F221568;
  if (!qword_27F221568)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F221568);
  }

  return result;
}

uint64_t AdamId.stringValue.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static AdamId.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24F92CE08();
  }
}

void AdamId.numberValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = HIBYTE(v2) & 0xF;
  v4 = v1 & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v5 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    if ((v2 & 0x1000000000000000) == 0)
    {
      if ((v2 & 0x2000000000000000) != 0)
      {
        v28[0] = v1;
        v28[1] = v2 & 0xFFFFFFFFFFFFFFLL;
        if (v1 == 43)
        {
          if (v3)
          {
            if (--v3)
            {
              v8 = 0;
              v18 = v28 + 1;
              while (1)
              {
                v19 = *v18 - 48;
                if (v19 > 9)
                {
                  break;
                }

                v20 = 10 * v8;
                if ((v8 * 10) >> 64 != (10 * v8) >> 63)
                {
                  break;
                }

                v8 = v20 + v19;
                if (__OFADD__(v20, v19))
                {
                  break;
                }

                ++v18;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_61;
          }

LABEL_70:
          __break(1u);
          return;
        }

        if (v1 != 45)
        {
          if (v3)
          {
            v8 = 0;
            v23 = v28;
            while (1)
            {
              v24 = *v23 - 48;
              if (v24 > 9)
              {
                break;
              }

              v25 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                break;
              }

              v8 = v25 + v24;
              if (__OFADD__(v25, v24))
              {
                break;
              }

              ++v23;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

        if (v3)
        {
          if (--v3)
          {
            v8 = 0;
            v12 = v28 + 1;
            while (1)
            {
              v13 = *v12 - 48;
              if (v13 > 9)
              {
                break;
              }

              v14 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                break;
              }

              v8 = v14 - v13;
              if (__OFSUB__(v14, v13))
              {
                break;
              }

              ++v12;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }
      }

      else
      {
        if ((v1 & 0x1000000000000000) != 0)
        {
          v6 = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v6 = sub_24F92C928();
        }

        v7 = *v6;
        if (v7 == 43)
        {
          if (v4 >= 1)
          {
            v3 = v4 - 1;
            if (v4 != 1)
            {
              v8 = 0;
              if (v6)
              {
                v15 = v6 + 1;
                while (1)
                {
                  v16 = *v15 - 48;
                  if (v16 > 9)
                  {
                    goto LABEL_61;
                  }

                  v17 = 10 * v8;
                  if ((v8 * 10) >> 64 != (10 * v8) >> 63)
                  {
                    goto LABEL_61;
                  }

                  v8 = v17 + v16;
                  if (__OFADD__(v17, v16))
                  {
                    goto LABEL_61;
                  }

                  ++v15;
                  if (!--v3)
                  {
                    goto LABEL_62;
                  }
                }
              }

              goto LABEL_53;
            }

            goto LABEL_61;
          }

          goto LABEL_69;
        }

        if (v7 != 45)
        {
          if (v4)
          {
            v8 = 0;
            if (v6)
            {
              while (1)
              {
                v21 = *v6 - 48;
                if (v21 > 9)
                {
                  goto LABEL_61;
                }

                v22 = 10 * v8;
                if ((v8 * 10) >> 64 != (10 * v8) >> 63)
                {
                  goto LABEL_61;
                }

                v8 = v22 + v21;
                if (__OFADD__(v22, v21))
                {
                  goto LABEL_61;
                }

                ++v6;
                if (!--v4)
                {
                  goto LABEL_53;
                }
              }
            }

            goto LABEL_53;
          }

LABEL_61:
          v8 = 0;
          LOBYTE(v3) = 1;
LABEL_62:
          v29 = v3;
          if (v3)
          {
            return;
          }

LABEL_65:
          [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
          return;
        }

        if (v4 >= 1)
        {
          v3 = v4 - 1;
          if (v4 != 1)
          {
            v8 = 0;
            if (v6)
            {
              v9 = v6 + 1;
              while (1)
              {
                v10 = *v9 - 48;
                if (v10 > 9)
                {
                  goto LABEL_61;
                }

                v11 = 10 * v8;
                if ((v8 * 10) >> 64 != (10 * v8) >> 63)
                {
                  goto LABEL_61;
                }

                v8 = v11 - v10;
                if (__OFSUB__(v11, v10))
                {
                  goto LABEL_61;
                }

                ++v9;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

LABEL_53:
            LOBYTE(v3) = 0;
            goto LABEL_62;
          }

          goto LABEL_61;
        }

        __break(1u);
      }

      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v8 = sub_24F2D9F3C(v1, v2, 10);
    v27 = v26;

    if ((v27 & 1) == 0)
    {
      goto LABEL_65;
    }
  }
}

GameStoreKit::AdamId __swiftcall AdamId.init(value:)(Swift::Int64 value)
{
  v2 = v1;
  v3 = sub_24F92CD88();
  *v2 = v3;
  v2[1] = v4;
  result.underlyingAdamID._object = v4;
  result.underlyingAdamID._countAndFlagsBits = v3;
  return result;
}

GameStoreKit::AdamId __swiftcall AdamId.init(value:)(NSNumber value)
{
  v3 = v1;
  v4 = [(objc_class *)value.super.super.isa stringValue];
  v5 = sub_24F92B0D8();
  v7 = v6;

  *v3 = v5;
  v3[1] = v7;
  result.underlyingAdamID._object = v9;
  result.underlyingAdamID._countAndFlagsBits = v8;
  return result;
}

uint64_t sub_24F2D9B30()
{
  result = sub_24F92CD88();
  qword_27F23E358 = result;
  qword_27F23E360 = v1;
  return result;
}

uint64_t static AdamId.invalidAdamId.getter@<X0>(void *a1@<X8>)
{
  if (qword_27F2110C8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_27F23E360;
  *a1 = qword_27F23E358;
  a1[1] = v2;
}

uint64_t AdamId.PreferenceKey.lookupName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AdamId.PreferenceKey.encode(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  a2[3] = MEMORY[0x277D837D0];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t AdamId.PreferenceKey.decode(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_24E643A9C(a1, v8);
  result = swift_dynamicCast();
  if (result)
  {
    v4 = v6;
    v5 = v7;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_24F2D9CD8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  a2[3] = MEMORY[0x277D837D0];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_24F2D9CF0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_24E643A9C(a1, v8);
  result = swift_dynamicCast();
  if (result)
  {
    v4 = v6;
    v5 = v7;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t AdamId.hashValue.getter()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t AdamId.description.getter()
{
  MEMORY[0x253050C20](*v0, v0[1]);
  MEMORY[0x253050C20](93, 0xE100000000000000);
  return 0x5B2064496D616441;
}

uint64_t sub_24F2D9E0C()
{
  MEMORY[0x253050C20](*v0, v0[1]);
  MEMORY[0x253050C20](93, 0xE100000000000000);
  return 0x5B2064496D616441;
}

unint64_t sub_24F2D9E6C()
{
  result = qword_27F23E368;
  if (!qword_27F23E368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E368);
  }

  return result;
}

unint64_t sub_24F2D9EC4()
{
  result = qword_27F23E370;
  if (!qword_27F23E370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E370);
  }

  return result;
}

unsigned __int8 *sub_24F2D9F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_24F92B3C8();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_24F914BE4();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_24F92C928();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_24F2DA4C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = sub_24F92B3C8();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_24F914BE4();
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_24F92C928();
      v7 = v69;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if (v29 != v29)
              {
                goto LABEL_126;
              }

              v30 = v27 + v28;
              v21 = __OFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        v15 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          v15 = 1;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_127;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            v37 = v34 * a3;
            if (v37 != v37)
            {
              goto LABEL_126;
            }

            v38 = v35 + v36;
            v21 = __OFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v34;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if (v19 != v19)
            {
              goto LABEL_126;
            }

            v20 = v16 + v17;
            v21 = __OFSUB__(v19, v20);
            v13 = v19 - v20;
            if (v21)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
        v15 = 0;
LABEL_127:

        LOBYTE(v70) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v41 = HIBYTE(v5) & 0xF;
  v70 = v6;
  v71 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        v15 = 1;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_127;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          v67 = v43 * a3;
          if (v67 != v67)
          {
            goto LABEL_126;
          }

          v68 = v65 + v66;
          v21 = __OFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_126;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        v15 = 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_127;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v43 * a3;
          if (v50 != v50)
          {
            goto LABEL_126;
          }

          v51 = v48 + v49;
          v21 = __OFSUB__(v50, v51);
          v43 = v50 - v51;
          if (v21)
          {
            goto LABEL_126;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      v15 = 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_127;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = v43 * a3;
        if (v59 != v59)
        {
          goto LABEL_126;
        }

        v60 = v57 + v58;
        v21 = __OFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_126;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_125:
      v15 = 0;
      v18 = v43;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}