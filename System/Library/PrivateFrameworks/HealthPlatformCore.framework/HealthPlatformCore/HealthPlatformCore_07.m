void sub_2287AB4E0()
{
  if (!qword_280DE0628)
  {
    sub_2287AB418(255);
    sub_228770F78();
    sub_2287ADE00(&qword_280DE0220, sub_2287AB418);
    v0 = sub_2287CAB50();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE0628);
    }
  }
}

void sub_2287AB58C()
{
  v1 = *(sub_2287C9810() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_2287CA970() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_2287A485C(v0 + v2, v0 + v5);
}

uint64_t sub_2287AB684()
{
  v1 = *(sub_2287C9810() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_2287CA970() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(v0 + v6);
  v8 = *(v0 + (v6 & 0xFFFFFFFFFFFFFFF8) + 8);

  return sub_2287A4BAC(v0 + v2, v0 + v5, v7, v8);
}

void sub_2287AB780(uint64_t a1)
{
  v90 = sub_2287CAA50();
  v89 = *(v90 - 8);
  v2 = *(v89 + 64);
  v3 = MEMORY[0x28223BE20](v90);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v87 - v5;
  MEMORY[0x28223BE20](v4);
  v88 = &v87 - v7;
  sub_2287AC4D0(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2287C9700();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v104 = &v87 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v97 = &v87 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v87 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v87 - v25;
  v91 = [objc_opt_self() defaultManager];
  sub_2287C9F10();
  sub_2287C9EF0();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_2287ADF4C(v11, sub_2287AC4D0);
    sub_2287CAA20();
    v27 = sub_2287CAA40();
    v28 = sub_2287CB600();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_2286FF000, v27, v28, "[Contact Photo] Could not access Health app group container directory", v29, 2u);
      MEMORY[0x22AABFD90](v29, -1, -1);
    }

    (*(v89 + 8))(v6, v90);
  }

  else
  {
    v99 = v13;
    v100 = *(v13 + 32);
    v101 = v13 + 32;
    v100(v26, v11, v12);
    v30 = *(a1 + 16);
    v31 = MEMORY[0x277D84F90];
    v105 = v12;
    if (v30)
    {
      v96 = v24;
      v32 = v26;
      v107[0] = MEMORY[0x277D84F90];
      sub_2287042D4(0, v30, 0);
      v31 = v107[0];
      v33 = (a1 + 32);
      do
      {
        v34 = *v33++;
        v35 = v34;
        v36 = sub_2287C9C40();
        v38 = v37;

        v107[0] = v31;
        v40 = *(v31 + 16);
        v39 = *(v31 + 24);
        if (v40 >= v39 >> 1)
        {
          sub_2287042D4((v39 > 1), v40 + 1, 1);
          v31 = v107[0];
        }

        *(v31 + 16) = v40 + 1;
        v41 = v31 + 16 * v40;
        *(v41 + 32) = v36;
        *(v41 + 40) = v38;
        --v30;
      }

      while (v30);
      v12 = v105;
      v26 = v32;
      v24 = v96;
    }

    v42 = sub_22872A9BC(v31);

    v43 = sub_2287CB5C0();
    v87 = v26;
    v106 = 0;
    v95 = *(v43 + 16);
    if (v95)
    {
      v44 = 0;
      v92 = v99 + 16;
      v98 = v99 + 8;
      v45 = v42 + 56;
      v46 = MEMORY[0x277D84F90];
      v94 = v17;
      v96 = v24;
      v93 = v43;
      while (v44 < *(v43 + 16))
      {
        v47 = v99;
        v103 = (*(v47 + 80) + 32) & ~*(v47 + 80);
        v102 = *(v99 + 72);
        (*(v99 + 16))(v24, v43 + v103 + v102 * v44, v12);
        v48 = v97;
        sub_2287C96B0();
        v49 = sub_2287C9690();
        v50 = v12;
        v51 = v49;
        v53 = v52;
        v54 = *(v47 + 8);
        v54(v48, v50);
        if (*(v42 + 16) && (v55 = *(v42 + 40), sub_2287CBD80(), sub_2287CB290(), v56 = sub_2287CBDB0(), v57 = -1 << *(v42 + 32), v58 = v56 & ~v57, ((*(v45 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) != 0))
        {
          v59 = ~v57;
          while (1)
          {
            v60 = (*(v42 + 48) + 16 * v58);
            v61 = *v60 == v51 && v60[1] == v53;
            if (v61 || (sub_2287CBD00() & 1) != 0)
            {
              break;
            }

            v58 = (v58 + 1) & v59;
            if (((*(v45 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) == 0)
            {
              goto LABEL_25;
            }
          }

          v24 = v96;
          v12 = v105;
          v54(v96, v105);
        }

        else
        {
LABEL_25:

          v24 = v96;
          v100(v104, v96, v105);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v108 = v46;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_2287132EC(0, v46[2] + 1, 1);
            v46 = v108;
          }

          v64 = v46[2];
          v63 = v46[3];
          if (v64 >= v63 >> 1)
          {
            sub_2287132EC(v63 > 1, v64 + 1, 1);
            v46 = v108;
          }

          v46[2] = v64 + 1;
          v12 = v105;
          v100(v46 + v103 + v64 * v102, v104, v105);
        }

        ++v44;
        v17 = v94;
        v43 = v93;
        if (v44 == v95)
        {
          goto LABEL_31;
        }
      }

LABEL_43:
      __break(1u);
    }

    else
    {
      v46 = MEMORY[0x277D84F90];
LABEL_31:

      v65 = v91;
      v66 = v99;
      v67 = v46[2];
      if (v67)
      {
        v68 = 0;
        v69 = (v99 + 8);
        while (1)
        {
          if (v68 >= v46[2])
          {
            __break(1u);
            goto LABEL_43;
          }

          (*(v66 + 16))(v17, v46 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v68, v12);
          v70 = v106;
          sub_2287A89E4(v17, v65);
          v106 = v70;
          if (v70)
          {
            break;
          }

          ++v68;
          v71 = *v69;
          (*v69)(v17, v12);
          if (v67 == v68)
          {
            v71(v87, v12);

            return;
          }
        }

        v72 = v17;
        v73 = *v69;
        (*v69)(v72, v12);

        v74 = v88;
        sub_2287CAA20();
        v75 = v106;
        v76 = v106;
        v77 = sub_2287CAA40();
        v78 = sub_2287CB5F0();

        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v107[0] = v80;
          *v79 = 136380675;
          v108 = v75;
          v81 = v75;
          sub_22874A0A4();
          v82 = sub_2287CB270();
          v84 = sub_2287031D8(v82, v83, v107);

          *(v79 + 4) = v84;
          _os_log_impl(&dword_2286FF000, v77, v78, "[Contact Photo] Could not remove profile image url. %{private}s", v79, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v80);
          MEMORY[0x22AABFD90](v80, -1, -1);
          MEMORY[0x22AABFD90](v79, -1, -1);

          (*(v89 + 8))(v74, v90);
          v85 = v87;
          v86 = v105;
        }

        else
        {

          (*(v89 + 8))(v74, v90);
          v85 = v87;
          v86 = v12;
        }

        v73(v85, v86);
      }

      else
      {
        (*(v99 + 8))(v87, v12);
      }
    }
  }
}

uint64_t sub_2287AC2B4(void **a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_2287A8D40(a1);
}

uint64_t type metadata accessor for FeedItemGeneratorPipelineManager()
{
  result = qword_280DE24E0;
  if (!qword_280DE24E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2287AC3F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_228703004(255, &qword_280DE3870, 0x277CCD7C8);
    v7 = sub_228703004(255, &qword_280DE1990, 0x277CCD4D8);
    v8 = sub_2287AB250();
    v9 = a3(a1, v6, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2287AC49C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_2287AAD6C(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

void sub_2287AC504()
{
  if (!qword_280DE02F0)
  {
    sub_2287AC684(255, &qword_280DE0128, MEMORY[0x277CBCD88]);
    sub_2287AC584();
    v0 = sub_2287CAC30();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE02F0);
    }
  }
}

unint64_t sub_2287AC584()
{
  result = qword_280DE0130;
  if (!qword_280DE0130)
  {
    sub_2287AC684(255, &qword_280DE0128, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE0130);
  }

  return result;
}

void sub_2287AC600()
{
  if (!qword_280DDFFA8)
  {
    sub_2287AC684(255, &qword_280DE0128, MEMORY[0x277CBCD88]);
    v0 = sub_2287CB450();
    if (!v1)
    {
      atomic_store(v0, &qword_280DDFFA8);
    }
  }
}

void sub_2287AC684(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_2287AC6F0()
{
  result = qword_27D850E88;
  if (!qword_27D850E88)
  {
    sub_2287AC684(255, &qword_27D850E80, MEMORY[0x277CBCEA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850E88);
  }

  return result;
}

uint64_t sub_2287AC764(char a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1 & 1;
  return v2(&v5);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2287AC7C4()
{
  if (!qword_280DE03F8)
  {
    sub_2287AC8AC(255);
    sub_2287AC9E4();
    sub_2287ADE00(&qword_280DE0170, sub_2287AC8AC);
    sub_2287ADE00(&qword_280DE0198, sub_2287AC9E4);
    v0 = sub_2287CABC0();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE03F8);
    }
  }
}

void sub_2287AC8E0()
{
  if (!qword_280DDFED8)
  {
    sub_2287AC97C(255, &qword_280DDFEE0, &qword_280DDFEE8, 0x277CCDA70, MEMORY[0x277D83D88]);
    sub_2287AC4D0(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DDFED8);
    }
  }
}

void sub_2287AC97C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_228703004(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2287AC9E4()
{
  if (!qword_280DE0190)
  {
    sub_2287AC97C(255, &qword_280DDFF88, &qword_280DDFEE8, 0x277CCDA70, MEMORY[0x277D83940]);
    sub_22874A0A4();
    v0 = sub_2287CACD0();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE0190);
    }
  }
}

uint64_t sub_2287ACAA0(char *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  sub_2287AC8E0();
  return v4(v5, &a1[*(v6 + 48)]);
}

uint64_t sub_2287ACAEC(unint64_t a1, uint64_t a2)
{
  v77 = a2;
  sub_2287AD500(0);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287AD534();
  v72 = *(v9 - 8);
  v73 = v9;
  v10 = *(v72 + 64);
  MEMORY[0x28223BE20](v9);
  v70 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287AD664();
  v74 = *(v12 - 8);
  v75 = v12;
  v13 = *(v74 + 64);
  MEMORY[0x28223BE20](v12);
  v71 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287AD71C();
  v81 = v15;
  v79 = *(v15 - 8);
  v16 = *(v79 + 64);
  MEMORY[0x28223BE20](v15);
  v76 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287AD8B8();
  v84 = v18;
  v82 = *(v18 - 8);
  v19 = *(v82 + 64);
  MEMORY[0x28223BE20](v18);
  v78 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287AD9A4();
  v85 = v21;
  v83 = *(v21 - 8);
  v22 = *(v83 + 64);
  MEMORY[0x28223BE20](v21);
  v80 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2287CAA50();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v86 = &v67 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v67 - v29;
  sub_2287CA9D0();

  v31 = sub_2287CAA40();
  v32 = sub_2287CB610();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v67 = v25;
    v34 = v33;
    v35 = swift_slowAlloc();
    v68 = v5;
    v69 = v8;
    v36 = v4;
    v37 = v35;
    v87 = v35;
    *v34 = 136380675;
    v38 = sub_228703004(0, &qword_280DDFEE8, 0x277CCDA70);
    v39 = MEMORY[0x22AABEA80](a1, v38);
    v41 = v24;
    v42 = sub_2287031D8(v39, v40, &v87);

    *(v34 + 4) = v42;
    v24 = v41;
    _os_log_impl(&dword_2286FF000, v31, v32, "[Contact Photo] Processing shared summary entries: %{private}s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    v43 = v37;
    v4 = v36;
    v5 = v68;
    v8 = v69;
    MEMORY[0x22AABFD90](v43, -1, -1);
    v44 = v34;
    v25 = v67;
    MEMORY[0x22AABFD90](v44, -1, -1);
  }

  v45 = *(v25 + 8);
  v45(v30, v24);
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_11:
    sub_2287AC8E0();
    sub_22874A0A4();
    sub_2287CADC0();
    sub_2287ADE00(&qword_280DE0070, sub_2287AD500);
    v58 = sub_2287CAF40();
    (*(v5 + 8))(v8, v4);
    return v58;
  }

  if (!sub_2287CB920())
  {
    goto LABEL_11;
  }

LABEL_5:
  v46 = [objc_opt_self() authorizationStatusForEntityType_];
  if (v46 == 3)
  {
    v87 = a1;
    sub_2287AC97C(0, &qword_280DDFF88, &qword_280DDFEE8, 0x277CCDA70, MEMORY[0x277D83940]);
    sub_2287AD5E0();
    v47 = v70;
    sub_2287CB2F0();
    sub_22874A0A4();
    v48 = v71;
    v49 = v73;
    sub_2287CABF0();
    v50 = (*(v72 + 8))(v47, v49);
    MEMORY[0x28223BE20](v50);
    *(&v67 - 2) = v77;
    sub_2287AD80C();
    v51 = v76;
    v52 = v75;
    sub_2287CAC00();
    (*(v74 + 8))(v48, v52);
    sub_2287AC8E0();
    sub_2287AC8AC(0);
    sub_2287ADE00(&unk_280DE0348, sub_2287AD71C);
    sub_2287ADE00(&qword_280DE0170, sub_2287AC8AC);
    v53 = v78;
    v54 = v81;
    sub_2287CAFE0();
    (*(v79 + 8))(v51, v54);
    sub_2287ADE00(&qword_280DE0418, sub_2287AD8B8);
    v55 = v80;
    v56 = v84;
    sub_2287CAF90();
    (*(v82 + 8))(v53, v56);
    sub_2287ADE00(&qword_27D850E98, sub_2287AD9A4);
    v57 = v85;
    v58 = sub_2287CAF40();
    (*(v83 + 8))(v55, v57);
  }

  else
  {
    v59 = v46;
    v60 = v4;
    sub_2287CA9D0();
    v61 = sub_2287CAA40();
    v62 = sub_2287CB5F0();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = v24;
      v64 = swift_slowAlloc();
      *v64 = 134217984;
      *(v64 + 4) = v59;
      _os_log_impl(&dword_2286FF000, v61, v62, "[Contact Photo] Contacts access not authorized. Current CNAuthorizationStatus: %ld", v64, 0xCu);
      v65 = v64;
      v24 = v63;
      MEMORY[0x22AABFD90](v65, -1, -1);
    }

    v45(v86, v24);
    sub_2287AC8E0();
    sub_22874A0A4();
    sub_2287CADC0();
    sub_2287ADE00(&qword_280DE0070, sub_2287AD500);
    v58 = sub_2287CAF40();
    (*(v5 + 8))(v8, v60);
  }

  return v58;
}

void sub_2287AD534()
{
  if (!qword_280DE0358)
  {
    sub_2287AC97C(255, &qword_280DDFF88, &qword_280DDFEE8, 0x277CCDA70, MEMORY[0x277D83940]);
    sub_2287AD5E0();
    v0 = sub_2287CAC10();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE0358);
    }
  }
}

unint64_t sub_2287AD5E0()
{
  result = qword_280DDFF80;
  if (!qword_280DDFF80)
  {
    sub_2287AC97C(255, &qword_280DDFF88, &qword_280DDFEE8, 0x277CCDA70, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DDFF80);
  }

  return result;
}

void sub_2287AD664()
{
  if (!qword_280DE0368)
  {
    sub_2287AC97C(255, &qword_280DDFF88, &qword_280DDFEE8, 0x277CCDA70, MEMORY[0x277D83940]);
    sub_22874A0A4();
    sub_2287AD5E0();
    v0 = sub_2287CAC10();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE0368);
    }
  }
}

void sub_2287AD71C()
{
  if (!qword_280DE0340)
  {
    sub_2287AD7D8(255);
    sub_22874A0A4();
    sub_2287ADE00(&unk_280DDFF68, sub_2287AD7D8);
    v0 = sub_2287CAC10();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE0340);
    }
  }
}

void sub_2287AD80C()
{
  if (!qword_280DDFED0)
  {
    sub_228703004(255, &qword_280DDFEE8, 0x277CCDA70);
    sub_2287AC97C(255, &qword_280DDFE98, &qword_280DDFEA0, 0x277CBDA58, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DDFED0);
    }
  }
}

void sub_2287AD8B8()
{
  if (!qword_280DE0410)
  {
    sub_2287AC8AC(255);
    sub_2287AD71C();
    sub_2287ADE00(&qword_280DE0170, sub_2287AC8AC);
    sub_2287ADE00(&unk_280DE0348, sub_2287AD71C);
    v0 = sub_2287CABC0();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE0410);
    }
  }
}

void sub_2287AD9A4()
{
  if (!qword_280DE0530)
  {
    sub_2287AD8B8();
    sub_2287AC8AC(255);
    sub_2287ADE00(&qword_280DE0418, sub_2287AD8B8);
    sub_2287ADE00(&qword_280DE0170, sub_2287AC8AC);
    v0 = sub_2287CAB60();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE0530);
    }
  }
}

void sub_2287ADACC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = sub_22874A0A4();
    v9 = a4(a1, v7, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2287ADB48()
{
  if (!qword_27D850EC0)
  {
    sub_2287ADA98(255);
    sub_2287AC8AC(255);
    sub_2287ADE00(&qword_27D850EB0, sub_2287ADA98);
    sub_2287ADE00(&qword_280DE0170, sub_2287AC8AC);
    v0 = sub_2287CAB60();
    if (!v1)
    {
      atomic_store(v0, &qword_27D850EC0);
    }
  }
}

unint64_t sub_2287ADC58()
{
  result = qword_27D850ED0;
  if (!qword_27D850ED0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D850ED0);
  }

  return result;
}

uint64_t sub_2287ADCC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2287ADD50()
{
  v1 = *(v0 + 24);
  v2 = *(*(*(v0 + 16) - 8) + 80);
  return sub_2287A2FE4();
}

void sub_2287ADD8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2287ADE00(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2287ADE68(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_2287C9810();
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_2287ADEE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2287ADF4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ModelTrainingEvent.init(feedItemURL:eventKind:isPositive:date:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a2;
  v10 = sub_2287C9700();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v11 = type metadata accessor for ModelTrainingEvent();
  *(a5 + v11[5]) = v9;
  *(a5 + v11[6]) = a3;
  v12 = v11[7];
  v13 = sub_2287C97C0();
  v14 = *(*(v13 - 8) + 32);

  return v14(a5 + v12, a4, v13);
}

uint64_t type metadata accessor for ModelTrainingEvent()
{
  result = qword_280DE3A88;
  if (!qword_280DE3A88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ModelTrainingEvent.EventKind.rawValue.getter()
{
  if (*v0)
  {
    result = 0x6C6C657764;
  }

  else
  {
    result = 7364980;
  }

  *v0;
  return result;
}

HealthPlatformCore::ModelTrainingEvent::EventKind_optional __swiftcall ModelTrainingEvent.EventKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2287CBC10();

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

uint64_t sub_2287AE174@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2287CBC10();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_2287AE1D4(uint64_t *a1@<X8>)
{
  v2 = 7364980;
  if (*v1)
  {
    v2 = 0x6C6C657764;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2287AE2B8()
{
  v1 = *v0;
  sub_2287CBD80();
  sub_2287CB290();

  return sub_2287CBDB0();
}

uint64_t sub_2287AE330()
{
  *v0;
  sub_2287CB290();
}

uint64_t sub_2287AE394()
{
  v1 = *v0;
  sub_2287CBD80();
  sub_2287CB290();

  return sub_2287CBDB0();
}

uint64_t sub_2287AE408(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6C6C657764;
  }

  else
  {
    v4 = 7364980;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x6C6C657764;
  }

  else
  {
    v6 = 7364980;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2287CBD00();
  }

  return v9 & 1;
}

uint64_t ModelTrainingEvent.feedItemURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2287C9700();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ModelTrainingEvent.eventKind.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ModelTrainingEvent();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t ModelTrainingEvent.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ModelTrainingEvent() + 28);
  v4 = sub_2287C97C0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_2287AE5E4()
{
  v1 = 0x6D65744964656566;
  v2 = 0x697469736F507369;
  if (*v0 != 2)
  {
    v2 = 1702125924;
  }

  if (*v0)
  {
    v1 = 0x6E694B746E657665;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2287AE668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2287AFC2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2287AE69C(uint64_t a1)
{
  v2 = sub_2287AF6B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2287AE6D8(uint64_t a1)
{
  v2 = sub_2287AF6B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ModelTrainingEvent.encode(to:)(void *a1)
{
  v3 = v1;
  sub_2287AF760(0, &qword_280DE1270, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v16[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2287AF6B8();
  sub_2287CBE30();
  v16[15] = 0;
  sub_2287C9700();
  sub_2287AF8B8(&qword_280DE17F8, MEMORY[0x277CC9260]);
  sub_2287CBC90();
  if (!v2)
  {
    v12 = type metadata accessor for ModelTrainingEvent();
    v16[14] = *(v3 + v12[5]);
    v16[13] = 1;
    sub_2287AF70C();
    sub_2287CBC90();
    v13 = *(v3 + v12[6]);
    v16[12] = 2;
    sub_2287CBC80();
    v14 = v12[7];
    v16[11] = 3;
    sub_2287C97C0();
    sub_2287AF8B8(&qword_280DE17E0, MEMORY[0x277CC9578]);
    sub_2287CBC90();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t ModelTrainingEvent.hash(into:)()
{
  sub_2287C9700();
  sub_2287AF8B8(&qword_280DE17F0, MEMORY[0x277CC9260]);
  sub_2287CB1C0();
  v1 = type metadata accessor for ModelTrainingEvent();
  *(v0 + v1[5]);
  *(v0 + v1[5]);
  sub_2287CB290();

  v2 = *(v0 + v1[6]);
  sub_2287CBDA0();
  v3 = v1[7];
  sub_2287C97C0();
  sub_2287AF8B8(&qword_280DE17D8, MEMORY[0x277CC9578]);
  return sub_2287CB1C0();
}

uint64_t ModelTrainingEvent.hashValue.getter()
{
  sub_2287CBD80();
  sub_2287C9700();
  sub_2287AF8B8(&qword_280DE17F0, MEMORY[0x277CC9260]);
  sub_2287CB1C0();
  v1 = type metadata accessor for ModelTrainingEvent();
  *(v0 + v1[5]);
  *(v0 + v1[5]);
  sub_2287CB290();

  v2 = *(v0 + v1[6]);
  sub_2287CBDA0();
  v3 = v1[7];
  sub_2287C97C0();
  sub_2287AF8B8(&qword_280DE17D8, MEMORY[0x277CC9578]);
  sub_2287CB1C0();
  return sub_2287CBDB0();
}

uint64_t ModelTrainingEvent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v32 = sub_2287C97C0();
  v30 = *(v32 - 8);
  v3 = *(v30 + 64);
  MEMORY[0x28223BE20](v32);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2287C9700();
  v33 = *(v6 - 8);
  v7 = *(v33 + 64);
  MEMORY[0x28223BE20](v6);
  v36 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287AF760(0, &qword_280DE18A0, MEMORY[0x277D844C8]);
  v34 = *(v9 - 8);
  v35 = v9;
  v10 = *(v34 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - v11;
  v13 = type metadata accessor for ModelTrainingEvent();
  v14 = *(*(v13 - 1) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2287AF6B8();
  v37 = v12;
  v18 = v38;
  sub_2287CBE20();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v38 = v5;
  v19 = v33;
  v43 = 0;
  sub_2287AF8B8(&qword_280DE34B8, MEMORY[0x277CC9260]);
  sub_2287CBC70();
  v20 = *(v19 + 32);
  v21 = v16;
  v20(v16, v36, v6);
  v41 = 1;
  sub_2287AF7C4();
  sub_2287CBC70();
  v16[v13[5]] = v42;
  v40 = 2;
  v22 = sub_2287CBC60();
  v23 = a1;
  v24 = v34;
  v21[v13[6]] = v22 & 1;
  v39 = 3;
  sub_2287AF8B8(&qword_280DE34B0, MEMORY[0x277CC9578]);
  v36 = v21;
  v25 = v38;
  v26 = v32;
  sub_2287CBC70();
  (*(v24 + 8))(v37, v35);
  v27 = v36;
  (*(v30 + 32))(&v36[v13[7]], v25, v26);
  sub_228798D5C(v27, v31);
  __swift_destroy_boxed_opaque_existential_0(v23);
  return sub_228798DC0(v27);
}

uint64_t sub_2287AF144(uint64_t a1, int *a2)
{
  sub_2287C9700();
  sub_2287AF8B8(&qword_280DE17F0, MEMORY[0x277CC9260]);
  sub_2287CB1C0();
  *(v2 + a2[5]);
  *(v2 + a2[5]);
  sub_2287CB290();

  v4 = *(v2 + a2[6]);
  sub_2287CBDA0();
  v5 = a2[7];
  sub_2287C97C0();
  sub_2287AF8B8(&qword_280DE17D8, MEMORY[0x277CC9578]);
  return sub_2287CB1C0();
}

uint64_t sub_2287AF278(uint64_t a1, int *a2)
{
  sub_2287CBD80();
  sub_2287C9700();
  sub_2287AF8B8(&qword_280DE17F0, MEMORY[0x277CC9260]);
  sub_2287CB1C0();
  *(v2 + a2[5]);
  *(v2 + a2[5]);
  sub_2287CB290();

  v4 = *(v2 + a2[6]);
  sub_2287CBDA0();
  v5 = a2[7];
  sub_2287C97C0();
  sub_2287AF8B8(&qword_280DE17D8, MEMORY[0x277CC9578]);
  sub_2287CB1C0();
  return sub_2287CBDB0();
}

uint64_t ModelTrainingEvent.debugDescription.getter()
{
  v8[8] = 0;
  sub_2287CBA20();
  MEMORY[0x22AABE980](0x6D65744964656546, 0xEA0000000000203ALL);
  v1 = sub_2287C9670();
  MEMORY[0x22AABE980](v1);

  MEMORY[0x22AABE980](0x4B746E657665203BLL, 0xED0000203A646E69);
  v2 = type metadata accessor for ModelTrainingEvent();
  *v8 = *(v0 + v2[5]);
  sub_2287CBB30();
  MEMORY[0x22AABE980](0x69736F507369203BLL, 0xEE00203A65766974);
  if (*(v0 + v2[6]))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v0 + v2[6]))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x22AABE980](v3, v4);

  MEMORY[0x22AABE980](0x203A65746164203BLL, 0xE800000000000000);
  v5 = v2[7];
  sub_2287C97C0();
  sub_2287AF8B8(&qword_280DE3978, MEMORY[0x277CC9578]);
  v6 = sub_2287CBCC0();
  MEMORY[0x22AABE980](v6);

  return *&v8[1];
}

uint64_t _s18HealthPlatformCore18ModelTrainingEventV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_2287C96E0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ModelTrainingEvent();
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6)
  {
    v8 = 0x6C6C657764;
  }

  else
  {
    v8 = 7364980;
  }

  if (v6)
  {
    v9 = 0xE500000000000000;
  }

  else
  {
    v9 = 0xE300000000000000;
  }

  if (v7)
  {
    v10 = 0x6C6C657764;
  }

  else
  {
    v10 = 7364980;
  }

  if (v7)
  {
    v11 = 0xE500000000000000;
  }

  else
  {
    v11 = 0xE300000000000000;
  }

  if (v8 == v10 && v9 == v11)
  {
  }

  else
  {
    v13 = sub_2287CBD00();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + v4[6]) != *(a2 + v4[6]))
  {
    return 0;
  }

  v15 = v4[7];

  return MEMORY[0x28211DA98](a1 + v15, a2 + v15);
}

unint64_t sub_2287AF6B8()
{
  result = qword_280DE3940;
  if (!qword_280DE3940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE3940);
  }

  return result;
}

unint64_t sub_2287AF70C()
{
  result = qword_280DE16A0;
  if (!qword_280DE16A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE16A0);
  }

  return result;
}

void sub_2287AF760(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2287AF6B8();
    v7 = a3(a1, &type metadata for ModelTrainingEvent.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2287AF7C4()
{
  result = qword_280DE2E40;
  if (!qword_280DE2E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE2E40);
  }

  return result;
}

unint64_t sub_2287AF81C()
{
  result = qword_27D850ED8;
  if (!qword_27D850ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850ED8);
  }

  return result;
}

uint64_t sub_2287AF8B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2287AF928()
{
  result = sub_2287C9700();
  if (v1 <= 0x3F)
  {
    result = sub_2287C97C0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ModelTrainingEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ModelTrainingEvent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2287AFB28()
{
  result = qword_27D850EE0;
  if (!qword_27D850EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850EE0);
  }

  return result;
}

unint64_t sub_2287AFB80()
{
  result = qword_280DE3930;
  if (!qword_280DE3930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE3930);
  }

  return result;
}

unint64_t sub_2287AFBD8()
{
  result = qword_280DE3938;
  if (!qword_280DE3938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE3938);
  }

  return result;
}

uint64_t sub_2287AFC2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D65744964656566 && a2 == 0xEB000000004C5255;
  if (v4 || (sub_2287CBD00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E694B746E657665 && a2 == 0xE900000000000064 || (sub_2287CBD00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x697469736F507369 && a2 == 0xEA00000000006576 || (sub_2287CBD00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_2287CBD00();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_2287AFDA4()
{
  result = qword_280DE3948;
  if (!qword_280DE3948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE3948);
  }

  return result;
}

void sub_2287AFDF8(uint64_t a1)
{
  v1 = a1;
  v35 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_2287CB920();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v42 = MEMORY[0x277D84F90];
    sub_2287042D4(0, v2 & ~(v2 >> 63), 0);
    v37 = v42;
    if (v35)
    {
      v3 = sub_2287CB8C0();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      v3 = sub_2287CB890();
      v4 = *(v1 + 36);
    }

    v39 = v3;
    v40 = v4;
    v41 = v35 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v33 = v1 + 56;
      v32 = v1 + 64;
      v34 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v9 = v39;
        v10 = v41;
        v36 = v40;
        v11 = v1;
        sub_2287BFFF0(v39, v40, v41, v1);
        v13 = v12;
        v14 = [v12 identifier];
        v15 = sub_2287CB220();
        v17 = v16;

        v18 = v37;
        v42 = v37;
        v20 = *(v37 + 16);
        v19 = *(v37 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_2287042D4((v19 > 1), v20 + 1, 1);
          v18 = v42;
        }

        *(v18 + 16) = v20 + 1;
        v21 = v18 + 16 * v20;
        *(v21 + 32) = v15;
        *(v21 + 40) = v17;
        v37 = v18;
        if (v35)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          v1 = v11;
          if (sub_2287CB8E0())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v34;
          sub_2287B6650(0, &qword_27D850BA0, MEMORY[0x277D83B18]);
          v7 = sub_2287CB4A0();
          sub_2287CB980();
          v7(v38, 0);
          if (v6 == v34)
          {
LABEL_32:
            sub_228717DF8(v39, v40, v41);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v11;
          v22 = 1 << *(v11 + 32);
          if (v9 >= v22)
          {
            goto LABEL_36;
          }

          v23 = v9 >> 6;
          v24 = *(v33 + 8 * (v9 >> 6));
          if (((v24 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v11 + 36) != v36)
          {
            goto LABEL_38;
          }

          v25 = v24 & (-2 << (v9 & 0x3F));
          if (v25)
          {
            v22 = __clz(__rbit64(v25)) | v9 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v26 = v23 << 6;
            v27 = v23 + 1;
            v28 = (v32 + 8 * v23);
            while (v27 < (v22 + 63) >> 6)
            {
              v30 = *v28++;
              v29 = v30;
              v26 += 64;
              ++v27;
              if (v30)
              {
                sub_228717DF8(v9, v36, 0);
                v22 = __clz(__rbit64(v29)) + v26;
                goto LABEL_31;
              }
            }

            sub_228717DF8(v9, v36, 0);
          }

LABEL_31:
          v31 = *(v11 + 36);
          v39 = v22;
          v40 = v31;
          v41 = 0;
          v2 = v34;
          if (v6 == v34)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_2287B016C()
{
  sub_2287010E4(v0 + 64, v3);
  sub_22870D3A8(0, &qword_280DE0F78);
  type metadata accessor for SummaryTabRelevanceEngineCoordinator();
  if (swift_dynamicCast())
  {
    return v2;
  }

  v3[0] = 0;
  v3[1] = 0xE000000000000000;
  sub_2287CBA20();
  MEMORY[0x22AABE980](0xD00000000000001CLL, 0x80000002287D3320);
  sub_2287CBB30();
  result = sub_2287CBB90();
  __break(1u);
  return result;
}

uint64_t SummaryTabFeedPopulationManager.__allocating_init(healthExperienceStore:healthStore:)(uint64_t *a1, uint64_t a2)
{
  v37 = a2;
  sub_2287063C8(0, &unk_280DE3AA0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v36 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - v7;
  v9 = sub_2287C9700();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  sub_2287010E4(a1, v43);
  v39 = a1;
  sub_2287010E4(a1, v42);
  v17 = v16;
  v35 = type metadata accessor for SummaryTabRelevanceEngineCoordinator();
  static SummaryTabRelevanceEngineCoordinator.defaultModelURL.getter();
  if (qword_280DE0D70 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v9, qword_280DE0D78);
  v19 = *(v10 + 16);
  v19(v8, v18, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  sub_2287010E4(v42, v41);
  v34 = v10;
  if (qword_280DE0D98 != -1)
  {
    swift_once();
  }

  v33 = " doesn't have an identifier";
  v20 = qword_280DE0DA0;
  v21 = type metadata accessor for FeedItemREElementDataSource();
  v22 = objc_allocWithZone(v21);
  sub_2287010E4(v41, &v22[OBJC_IVAR____TtC18HealthPlatformCore27FeedItemREElementDataSource_store]);
  *&v22[OBJC_IVAR____TtC18HealthPlatformCore27FeedItemREElementDataSource_sourceProfiles] = v20;
  v40.receiver = v22;
  v40.super_class = v21;

  v23 = objc_msgSendSuper2(&v40, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v41);
  sub_228703640(0, &qword_280DE1268, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2287CCC50;
  *(v24 + 32) = v23;
  v19(v14, v17, v9);
  v25 = MEMORY[0x277CC9260];
  v26 = v36;
  sub_2287B6840(v8, v36, &unk_280DE3AA0, MEMORY[0x277CC9260]);
  v27 = v35;
  v28 = objc_allocWithZone(v35);
  v29 = SummaryTabRelevanceEngineCoordinator.init(dataSources:engineName:modelURL:pretrainedModelURL:)(v24, 0xD000000000000016, v33 | 0x8000000000000000, v14, v26);
  sub_2287B656C(v8, &unk_280DE3AA0, v25);
  (*(v34 + 8))(v17, v9);
  __swift_destroy_boxed_opaque_existential_0(v42);
  v42[3] = v27;
  v42[4] = &protocol witness table for SummaryTabRelevanceEngineCoordinator;
  v42[0] = v29;
  v30 = (*(v38 + 128))(v43, v37, v42);
  __swift_destroy_boxed_opaque_existential_0(v39);
  return v30;
}

uint64_t *SummaryTabFeedPopulationManager.__allocating_init(healthExperienceStore:healthStore:relevanceEngineCoordinator:)(uint64_t *a1, void *a2, uint64_t *a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();
  return SummaryTabFeedPopulationManager.init(healthExperienceStore:healthStore:relevanceEngineCoordinator:)(a1, a2, a3);
}

uint64_t *SummaryTabFeedPopulationManager.init(healthExperienceStore:healthStore:relevanceEngineCoordinator:)(uint64_t *a1, void *a2, uint64_t *a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC18HealthPlatformCore31SummaryTabFeedPopulationManager____lazy_storage___pertinentChangeDomain;
  v9 = sub_2287CA1F0();
  (*(*(v9 - 8) + 56))(v4 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtC18HealthPlatformCore31SummaryTabFeedPopulationManager_trainingAnalyticsCache;
  v26[0] = MEMORY[0x277D84F90];
  sub_2287063C8(0, &unk_280DE3778, sub_2287B0914, MEMORY[0x277D121D8]);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *(v4 + v10) = sub_2287CA690();
  sub_2287010E4(a1, v26);
  sub_2287010E4(a3, v23);
  v14 = v24;
  v15 = v25;
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
  v17 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19);
  v21 = sub_2287C658C(v26, a2, v19, v4, v14, v15);
  __swift_destroy_boxed_opaque_existential_0(a3);
  __swift_destroy_boxed_opaque_existential_0(a1);
  __swift_destroy_boxed_opaque_existential_0(v23);
  return v21;
}

void sub_2287B0948(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  v7 = sub_2287C99F0();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = v3;
  v8[4] = a1;
  v8[5] = a2;
  v11[4] = sub_2287B6238;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_228712EA8;
  v11[3] = &block_descriptor_12;
  v9 = _Block_copy(v11);
  v10 = v7;

  [v10 performBlock_];
  _Block_release(v9);
}

uint64_t sub_2287B0A70(uint64_t a1, id *a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v6 = sub_2287CB080();
  v30 = *(v6 - 8);
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2287CB0E0();
  v28 = *(v10 - 8);
  v29 = v10;
  v11 = *(v28 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2287CB090();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [a2[7] profileIdentifier];
  v20 = NSManagedObjectContext.doesFeedEligibleForDisplayExist(kind:associatedProfileIdentifier:)(2, v19);

  if (v20)
  {
    sub_228703004(0, &qword_280DE39D0, 0x277D85C78);
    (*(v15 + 104))(v18, *MEMORY[0x277D851B0], v14);
    v21 = sub_2287CB6E0();
    (*(v15 + 8))(v18, v14);
    v22 = swift_allocObject();
    *(v22 + 16) = v31;
    *(v22 + 24) = a4;
    aBlock[4] = sub_2287B6948;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_228712EA8;
    aBlock[3] = &block_descriptor_53;
    v23 = _Block_copy(aBlock);

    sub_2287CB0A0();
    v32 = MEMORY[0x277D84F90];
    sub_2287B6A3C(&qword_280DE3A28, MEMORY[0x277D85198]);
    sub_2287063C8(0, &qword_280DE3A10, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_22873AA14();
    sub_2287CB880();
    MEMORY[0x22AABED90](0, v13, v9, v23);
    _Block_release(v23);

    (*(v30 + 8))(v9, v6);
    (*(v28 + 8))(v13, v29);
  }

  else
  {
    v25 = swift_allocObject();
    *(v25 + 16) = v31;
    *(v25 + 24) = a4;
    v26 = *(*a2 + 17);

    v26(&unk_283BC0508, sub_2287B691C, v25);
  }
}

uint64_t sub_2287B0EFC(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v53 = a4;
  v54 = a5;
  v61 = a1;
  v62 = a2;
  v7 = *v5;
  v8 = sub_2287CAA50();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v16 = &v52 - v14;
  v55 = a3;
  v17 = *(a3 + 16);
  if (v17)
  {
    v18 = (v55 + 32);
    v65 = (v13 + 8);
    *&v15 = 136315394;
    v56 = v15;
    v59 = v8;
    v60 = v7;
    v57 = &v52 - v14;
    v58 = v12;
    do
    {
      v19 = *v18;
      v64 = v18 + 1;
      sub_2287CA9E0();
      v20 = sub_2287CAA40();
      v21 = sub_2287CB610();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v66 = v23;
        *v22 = v56;
        v24 = sub_2287CBE60();
        v26 = sub_2287031D8(v24, v25, &v66);

        *(v22 + 4) = v26;
        *(v22 + 12) = 2082;
        v27 = _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
        v29 = sub_2287031D8(v27, v28, &v66);
        v8 = v59;

        *(v22 + 14) = v29;
        v7 = v60;
        _os_log_impl(&dword_2286FF000, v20, v21, "******** [%s] populating feed: %{public}s *******", v22, 0x16u);
        swift_arrayDestroy();
        v30 = v23;
        v12 = v58;
        MEMORY[0x22AABFD90](v30, -1, -1);
        MEMORY[0x22AABFD90](v22, -1, -1);
      }

      v31 = *v65;
      (*v65)(v16, v8);
      v32 = v63[11];
      v33 = v63[12];
      __swift_project_boxed_opaque_existential_1(v63 + 8, v32);
      v34 = RelevanceEngineCoordinator.sortedElements(for:)(v19, v32, v33);
      sub_228784F20(v19, v34, v61, v62);

      sub_2287CA9E0();
      v35 = sub_2287CAA40();
      v36 = sub_2287CB610();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v66 = v38;
        *v37 = v56;
        v39 = sub_2287CBE60();
        v41 = sub_2287031D8(v39, v40, &v66);

        *(v37 + 4) = v41;
        v7 = v60;
        *(v37 + 12) = 2082;
        v42 = _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
        v44 = sub_2287031D8(v42, v43, &v66);

        *(v37 + 14) = v44;
        v8 = v59;
        _os_log_impl(&dword_2286FF000, v35, v36, "******** [%s] feed population finished for %{public}s *******", v37, 0x16u);
        swift_arrayDestroy();
        v45 = v38;
        v12 = v58;
        MEMORY[0x22AABFD90](v45, -1, -1);
        MEMORY[0x22AABFD90](v37, -1, -1);
      }

      v31(v12, v8);
      --v17;
      v16 = v57;
      v18 = v64;
    }

    while (v17);
  }

  v46 = v63[11];
  v47 = v63[12];
  __swift_project_boxed_opaque_existential_1(v63 + 8, v46);
  v48 = swift_allocObject();
  v49 = v54;
  v50 = v53;
  v48[2] = v55;
  v48[3] = v50;
  v48[4] = v49;
  v48[5] = v7;

  RelevanceEngineCoordinator.saveModelToDisk(completion:)(sub_2287B625C, v48, v46, v47);
}

uint64_t sub_2287B138C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v7 = sub_2287CAA50();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA9E0();

  v12 = sub_2287CAA40();
  v13 = sub_2287CB610();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v28 = v7;
    v15 = v14;
    v16 = swift_slowAlloc();
    v30 = v16;
    *v15 = 136315394;
    v17 = sub_2287CBE60();
    v19 = sub_2287031D8(v17, v18, &v30);
    v29 = a4;
    v20 = a3;
    v21 = v19;

    *(v15 + 4) = v21;
    *(v15 + 12) = 2082;
    v22 = MEMORY[0x22AABEA80](a2, MEMORY[0x277D121B8]);
    v24 = sub_2287031D8(v22, v23, &v30);
    a3 = v20;

    *(v15 + 14) = v24;
    _os_log_impl(&dword_2286FF000, v12, v13, "[%s] Saved model and updated novelty counts after populating feeds %{public}s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v16, -1, -1);
    MEMORY[0x22AABFD90](v15, -1, -1);

    v25 = (*(v8 + 8))(v11, v28);
  }

  else
  {

    v25 = (*(v8 + 8))(v11, v7);
  }

  return a3(v25);
}

uint64_t sub_2287B15C8@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x277D12000];
  sub_2287063C8(0, &qword_280DE17B8, MEMORY[0x277D12000], MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v15[-v9];
  v11 = OBJC_IVAR____TtC18HealthPlatformCore31SummaryTabFeedPopulationManager____lazy_storage___pertinentChangeDomain;
  swift_beginAccess();
  sub_2287B6840(v1 + v11, v10, &qword_280DE17B8, v3);
  v12 = sub_2287CA1F0();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    return (*(v13 + 32))(a1, v10, v12);
  }

  sub_2287B656C(v10, &qword_280DE17B8, MEMORY[0x277D12000]);
  sub_2287B17E8(v1);
  (*(v13 + 16))(v8, a1, v12);
  (*(v13 + 56))(v8, 0, 1, v12);
  swift_beginAccess();
  sub_22871EA0C(v8, v1 + v11);
  return swift_endAccess();
}

uint64_t sub_2287B17E8(uint64_t a1)
{
  v1 = (*(*a1 + 248))();
  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_18:

    if (qword_280DE0D98 != -1)
    {
      goto LABEL_26;
    }

    goto LABEL_19;
  }

  v3 = (v1 + 32);
  v4 = MEMORY[0x277D84F90];
  while (1)
  {
    v5 = *v3++;
    v6 = sub_2287CA5B0();
    v7 = *(v6 + 16);
    v8 = v4[2];
    v9 = v8 + v7;
    if (__OFADD__(v8, v7))
    {
      break;
    }

    v10 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v9 <= v4[3] >> 1)
    {
      if (*(v10 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v8 <= v9)
      {
        v12 = v8 + v7;
      }

      else
      {
        v12 = v8;
      }

      v4 = sub_22872300C(isUniquelyReferenced_nonNull_native, v12, 1, v4);
      if (*(v10 + 16))
      {
LABEL_14:
        v13 = (v4[3] >> 1) - v4[2];
        v14 = *(sub_2287C9B20() - 8);
        if (v13 < v7)
        {
          goto LABEL_24;
        }

        v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
        v16 = *(v14 + 72);
        swift_arrayInitWithCopy();

        if (v7)
        {
          v17 = v4[2];
          v18 = __OFADD__(v17, v7);
          v19 = v17 + v7;
          if (v18)
          {
            goto LABEL_25;
          }

          v4[2] = v19;
        }

        goto LABEL_4;
      }
    }

    if (v7)
    {
      goto LABEL_23;
    }

LABEL_4:
    if (!--v2)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  swift_once();
LABEL_19:

  return sub_2287CA160();
}

void *sub_2287B19E8()
{
  v0 = sub_2287CA5C0();
  v1 = sub_22872A948(v0);

  v2 = sub_2287CA5F0();
  v3 = sub_22872A948(v2);

  v4 = sub_2287B54E4(v3, v1, sub_2287B5758, sub_2287B5758);

  v5 = v4[2];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = sub_228723A48(v4[2], 0);
  v7 = sub_228729E78(&v9, v6 + 32, v5, v4);
  sub_22870B3D4();
  if (v7 != v5)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v6;
}

uint64_t sub_2287B1AD4()
{
  v0 = sub_2287CA1F0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2287CA1D0())
  {
    v5 = 0;
  }

  else
  {
    sub_2287B15C8(v4);
    v5 = sub_2287CA1E0();
    (*(v1 + 8))(v4, v0);
  }

  return v5 & 1;
}

uint64_t sub_2287B1BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v48 = a3;
  v49 = a4;
  v46 = a2;
  v47 = a1;
  v6 = *v4;
  v7 = sub_2287CB080();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2287CB0E0();
  v51 = *(v12 - 8);
  v52 = v12;
  v13 = *(v51 + 64);
  MEMORY[0x28223BE20](v12);
  v50 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2287CAA50();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA9E0();
  v20 = sub_2287CAA40();
  v21 = sub_2287CB610();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v45 = v8;
    v23 = v22;
    v24 = swift_slowAlloc();
    v44 = v11;
    v25 = v24;
    *&v55[0] = v24;
    *v23 = 136315138;
    aBlock[0] = v6;
    swift_getMetatypeMetadata();
    v26 = sub_2287CB250();
    v43 = v6;
    v28 = sub_2287031D8(v26, v27, v55);
    v42 = v15;
    v29 = v7;
    v30 = v28;

    *(v23 + 4) = v30;
    v7 = v29;
    _os_log_impl(&dword_2286FF000, v20, v21, "[%s]: Enqueuing submitTraining", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    v31 = v25;
    v11 = v44;
    MEMORY[0x22AABFD90](v31, -1, -1);
    v32 = v23;
    v8 = v45;
    MEMORY[0x22AABFD90](v32, -1, -1);

    v33 = v43;
    (*(v16 + 8))(v19, v42);
  }

  else
  {

    (*(v16 + 8))(v19, v15);
    v33 = v6;
  }

  v34 = v5[13];
  sub_2287010E4(v46, v55);
  v35 = swift_allocObject();
  v36 = v47;
  v35[2] = v5;
  v35[3] = v36;
  sub_22871AC0C(v55, (v35 + 4));
  v38 = v48;
  v37 = v49;
  v35[9] = v48;
  v35[10] = v37;
  v35[11] = v33;
  aBlock[4] = sub_2287B6268;
  aBlock[5] = v35;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228712EA8;
  aBlock[3] = &block_descriptor_9;
  v39 = _Block_copy(aBlock);

  sub_228714B08(v38);
  v40 = v50;
  sub_2287CB0A0();
  v53 = MEMORY[0x277D84F90];
  sub_2287B6A3C(&qword_280DE3A28, MEMORY[0x277D85198]);
  sub_2287063C8(0, &qword_280DE3A10, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_22873AA14();
  sub_2287CB880();
  MEMORY[0x22AABED90](0, v40, v11, v39);
  _Block_release(v39);
  (*(v8 + 8))(v11, v7);
  (*(v51 + 8))(v40, v52);
}

uint64_t sub_2287B20CC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_2287CAA50();
  v41 = *(v12 - 8);
  v13 = *(v41 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA9E0();
  v16 = sub_2287CAA40();
  v17 = sub_2287CB610();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v39 = v12;
    v19 = v18;
    v38 = swift_slowAlloc();
    v42[0] = v38;
    v42[1] = a6;
    *v19 = 136315138;
    swift_getMetatypeMetadata();
    v20 = sub_2287CB250();
    v40 = a1;
    v22 = sub_2287031D8(v20, v21, v42);
    v37 = a6;
    v23 = a4;
    v24 = a5;
    v25 = a2;
    v26 = a3;
    v27 = v22;
    a1 = v40;

    *(v19 + 4) = v27;
    a3 = v26;
    a2 = v25;
    a5 = v24;
    a4 = v23;
    _os_log_impl(&dword_2286FF000, v16, v17, "[%s]: submitTraining dequeued and executing", v19, 0xCu);
    v28 = v38;
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x22AABFD90](v28, -1, -1);
    MEMORY[0x22AABFD90](v19, -1, -1);

    v29 = v37;
    v30 = (*(v41 + 8))(v15, v39);
  }

  else
  {

    v30 = (*(v41 + 8))(v15, v12);
    v29 = a6;
  }

  v31 = *(a1 + OBJC_IVAR____TtC18HealthPlatformCore31SummaryTabFeedPopulationManager_trainingAnalyticsCache);
  MEMORY[0x28223BE20](v30);
  *(&v36 - 2) = a2;

  sub_2287CA670();

  v32 = a1[11];
  v33 = a1[12];
  __swift_project_boxed_opaque_existential_1(a1 + 8, v32);
  v34 = swift_allocObject();
  v34[2] = a4;
  v34[3] = a5;
  v34[4] = v29;
  sub_228714B08(a4);
  RelevanceEngineCoordinator.submitTraining(trainingEvents:store:completion:)(a2, a3, sub_2287B6834, v34, v32, v33);
}

uint64_t sub_2287B23D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2287CB080();
  v51 = *(v6 - 8);
  v7 = *(v51 + 64);
  MEMORY[0x28223BE20](v6);
  v49 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_2287CB0E0();
  v48 = *(v50 - 8);
  v9 = *(v48 + 64);
  MEMORY[0x28223BE20](v50);
  v47 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2287CB090();
  v46 = *(v11 - 8);
  v12 = *(v46 + 64);
  MEMORY[0x28223BE20](v11);
  v45 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2287CAA50();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA9E0();
  v19 = sub_2287CAA40();
  v20 = sub_2287CB610();
  if (!os_log_type_enabled(v19, v20))
  {

    result = (*(v15 + 8))(v18, v14);
    if (!a1)
    {
      return result;
    }

    goto LABEL_5;
  }

  v21 = swift_slowAlloc();
  v43 = v11;
  v22 = v21;
  v23 = swift_slowAlloc();
  v44 = v6;
  v24 = v23;
  v52 = v23;
  aBlock[0] = a3;
  *v22 = 136315138;
  swift_getMetatypeMetadata();
  v25 = sub_2287CB250();
  v27 = sub_2287031D8(v25, v26, &v52);
  v42 = v14;
  v28 = a1;
  v29 = a2;
  v30 = v27;

  *(v22 + 4) = v30;
  a2 = v29;
  a1 = v28;
  _os_log_impl(&dword_2286FF000, v19, v20, "[%s]: submitTraining finished", v22, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v24);
  v31 = v24;
  v6 = v44;
  MEMORY[0x22AABFD90](v31, -1, -1);
  v32 = v22;
  v11 = v43;
  MEMORY[0x22AABFD90](v32, -1, -1);

  result = (*(v15 + 8))(v18, v42);
  if (v28)
  {
LABEL_5:
    sub_228703004(0, &qword_280DE39D0, 0x277D85C78);
    v35 = v45;
    v34 = v46;
    (*(v46 + 104))(v45, *MEMORY[0x277D851B0], v11);

    v36 = sub_2287CB6E0();
    (*(v34 + 8))(v35, v11);
    v37 = swift_allocObject();
    *(v37 + 16) = a1;
    *(v37 + 24) = a2;
    aBlock[4] = sub_22877E1B8;
    aBlock[5] = v37;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_228712EA8;
    aBlock[3] = &block_descriptor_44;
    v38 = _Block_copy(aBlock);

    v39 = v47;
    sub_2287CB0A0();
    v52 = MEMORY[0x277D84F90];
    sub_2287B6A3C(&qword_280DE3A28, MEMORY[0x277D85198]);
    sub_2287063C8(0, &qword_280DE3A10, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_22873AA14();
    v40 = v49;
    sub_2287CB880();
    MEMORY[0x22AABED90](0, v39, v40, v38);
    _Block_release(v38);

    sub_228714BC0(a1);
    (*(v51 + 8))(v40, v6);
    (*(v48 + 8))(v39, v50);
  }

  return result;
}

uint64_t sub_2287B2964()
{
  sub_2287B656C(v0 + OBJC_IVAR____TtC18HealthPlatformCore31SummaryTabFeedPopulationManager____lazy_storage___pertinentChangeDomain, &qword_280DE17B8, MEMORY[0x277D12000]);
  v1 = *(v0 + OBJC_IVAR____TtC18HealthPlatformCore31SummaryTabFeedPopulationManager_trainingAnalyticsCache);
}

uint64_t SummaryTabFeedPopulationManager.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  sub_2287B656C(v0 + OBJC_IVAR____TtC18HealthPlatformCore31SummaryTabFeedPopulationManager____lazy_storage___pertinentChangeDomain, &qword_280DE17B8, MEMORY[0x277D12000]);
  v3 = *(v0 + OBJC_IVAR____TtC18HealthPlatformCore31SummaryTabFeedPopulationManager_trainingAnalyticsCache);

  return v0;
}

uint64_t SummaryTabFeedPopulationManager.__deallocating_deinit()
{
  SummaryTabFeedPopulationManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t SummaryTabFeedPopulationManager.collectDiagnosticLogs(_:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = MEMORY[0x277D84F90];
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = v2;
  v6[4] = a1;
  v6[5] = a2;

  sub_2287B3500(sub_2287B627C, v6);
}

uint64_t sub_2287B2BD8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v59 = a4;
  v60 = a5;
  v8 = sub_2287CAA50();
  v57 = *(v8 - 8);
  v58 = v8;
  v9 = *(v57 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v56 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v55 - v12;
  v14 = sub_2287C9700();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v55 - v20;
  sub_2287B63C0();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = (&v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2287B66EC(a1, v25);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = *v25;
    sub_2287CA9E0();
    v27 = v26;
    v28 = sub_2287CAA40();
    v29 = sub_2287CB5F0();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v61[0] = v31;
      *v30 = 136315138;
      v61[3] = v26;
      v32 = v26;
      sub_22870D3A8(0, &qword_280DE35A0);
      v33 = sub_2287CB250();
      v35 = sub_2287031D8(v33, v34, v61);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_2286FF000, v28, v29, "Unable to get database diagnostics: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x22AABFD90](v31, -1, -1);
      MEMORY[0x22AABFD90](v30, -1, -1);
    }

    else
    {
    }

    v43 = v57;
    v42 = v58;
    (*(v57 + 8))(v13, v58);
  }

  else
  {
    v55 = a3;
    v36 = *(v15 + 32);
    v36(v21, v25, v14);
    (*(v15 + 16))(v19, v21, v14);
    swift_beginAccess();
    v37 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v37;
    if (isUniquelyReferenced_nonNull_native)
    {
      v39 = a2;
    }

    else
    {
      v37 = sub_22872386C(0, *(v37 + 2) + 1, 1, v37);
      v39 = a2;
      *(a2 + 16) = v37;
    }

    v41 = *(v37 + 2);
    v40 = *(v37 + 3);
    if (v41 >= v40 >> 1)
    {
      v37 = sub_22872386C(v40 > 1, v41 + 1, 1, v37);
    }

    *(v37 + 2) = v41 + 1;
    v36(&v37[((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v41], v19, v14);
    a2 = v39;
    *(v39 + 16) = v37;
    (*(v15 + 8))(v21, v14);
    a3 = v55;
    v43 = v57;
    v42 = v58;
  }

  v44 = v56;
  sub_2287CA9E0();
  v45 = sub_2287CAA40();
  v46 = sub_2287CB610();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_2286FF000, v45, v46, "Database logs collected. Now collecting RelevanceEngine logs", v47, 2u);
    MEMORY[0x22AABFD90](v47, -1, -1);
  }

  (*(v43 + 8))(v44, v42);
  v48 = a3[11];
  v49 = a3[12];
  __swift_project_boxed_opaque_existential_1(a3 + 8, v48);
  v50 = sub_2287CA5C0();
  v51 = swift_allocObject();
  v51[2] = a3;
  v51[3] = a2;
  v52 = v60;
  v51[4] = v59;
  v51[5] = v52;
  v53 = *(v49 + 24);

  v53(v50, sub_2287B6798, v51, v48, v49);
}

uint64_t sub_2287B3164(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[11];
  v8 = a1[12];
  __swift_project_boxed_opaque_existential_1(a1 + 8, v7);
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;

  RelevanceEngineCoordinator.collectDiagnosticLogs(completion:)(sub_2287B67F8, v9, v7, v8);
}

uint64_t sub_2287B3224(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v30[1] = a4;
  v31 = a3;
  v6 = sub_2287C9700();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2287CAA50();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA9E0();
  v16 = sub_2287CAA40();
  v17 = sub_2287CB610();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v30[0] = a2;
    v19 = v10;
    v20 = v6;
    v21 = a1;
    v22 = v18;
    *v18 = 0;
    _os_log_impl(&dword_2286FF000, v16, v17, "RelevanceEngine logs collected", v18, 2u);
    v23 = v22;
    a1 = v21;
    v6 = v20;
    v10 = v19;
    a2 = v30[0];
    MEMORY[0x22AABFD90](v23, -1, -1);
  }

  (*(v12 + 8))(v15, v11);
  (*(v7 + 16))(v10, a1, v6);
  swift_beginAccess();
  v24 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v24 = sub_22872386C(0, v24[2] + 1, 1, v24);
    *(a2 + 16) = v24;
  }

  v27 = v24[2];
  v26 = v24[3];
  if (v27 >= v26 >> 1)
  {
    v24 = sub_22872386C(v26 > 1, v27 + 1, 1, v24);
  }

  v24[2] = v27 + 1;
  (*(v7 + 32))(v24 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v27, v10, v6);
  *(a2 + 16) = v24;

  v31(v28);
}

void sub_2287B3500(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [*(v2 + 56) profileIdentifier];
  v7 = *(v2 + 48);
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  v8 = sub_2287C99F0();
  v9 = swift_allocObject();
  v9[2] = v6;
  v9[3] = v3;
  v9[4] = a1;
  v9[5] = a2;
  v12[4] = sub_2287B63B4;
  v12[5] = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_228712EA8;
  v12[3] = &block_descriptor_29;
  v10 = _Block_copy(v12);
  v11 = v6;

  [v8 performBlock_];

  _Block_release(v10);
}

uint64_t sub_2287B3650(void *a1, void *a2, void (*a3)(uint64_t), uint64_t a4)
{
  v127 = a4;
  v128 = a3;
  sub_2287B63C0();
  v126 = v6;
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v129 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_2287CB240();
  v122 = *(v123 - 8);
  v9 = *(v122 + 64);
  MEMORY[0x28223BE20](v123);
  v121 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_2287C9700();
  v131 = *(v125 - 8);
  v11 = *(v131 + 64);
  v12 = MEMORY[0x28223BE20](v125);
  v120 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v124 = &v113 - v14;
  v119 = sub_2287C98A0();
  v118 = *(v119 - 8);
  v15 = *(v118 + 64);
  MEMORY[0x28223BE20](v119);
  v117 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287063C8(0, &qword_280DE33C8, MEMORY[0x277D12030], MEMORY[0x277D83D88]);
  v142 = v17;
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v141 = &v113 - v19;
  v144 = sub_2287C97C0();
  v130 = *(v144 - 8);
  v20 = *(v130 + 64);
  MEMORY[0x28223BE20](v144);
  v143 = &v113 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = 0;
  v150 = 0xE000000000000000;
  sub_2287CBA20();

  v149 = 0xD000000000000016;
  v150 = 0x80000002287D3340;
  v145 = a1;
  v22 = [a1 description];
  v23 = sub_2287CB220();
  v25 = v24;

  MEMORY[0x22AABE980](v23, v25);

  MEMORY[0x22AABE980](0xA0A2A2A2A203ALL, 0xE700000000000000);
  v26 = sub_2287CA5D0();
  v27 = *(v26 + 16);
  if (v27)
  {
    sub_2287CA640();
    v139 = "No feed of kind ";
    v140 = 0x80000002287D3360;
    v28 = 32;
    do
    {
      v30 = *(v26 + v28);
      v31 = a2[6];
      __swift_project_boxed_opaque_existential_1(a2 + 2, a2[5]);
      v32 = sub_2287C99F0();
      v33 = sub_2287CA630();
      v34 = sub_2287CA300();

      if (v34)
      {
        v147 = sub_2287CA590();
        v148 = v35;

        MEMORY[0x22AABE980](10, 0xE100000000000000);

        MEMORY[0x22AABE980](v147, v148);
      }

      else
      {
        v147 = 0;
        v148 = 0xE000000000000000;
        sub_2287CBA20();

        v147 = 0xD000000000000010;
        v148 = v140;
        v29 = sub_2287CA5A0();
        MEMORY[0x22AABE980](v29);

        MEMORY[0x22AABE980](0xD000000000000015, v139 | 0x8000000000000000);
        MEMORY[0x22AABE980](v147, v148);
      }

      ++v28;
      --v27;
    }

    while (v27);
  }

  sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
  sub_22870558C();
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_2287CCFE0;
  *(v36 + 56) = MEMORY[0x277D837D0];
  *(v36 + 64) = sub_2287043F8();
  *(v36 + 32) = 0x7463655364656566;
  *(v36 + 40) = 0xEB000000006E6F69;
  v37 = sub_2287CB550();
  sub_2287CA800();
  v38 = MEMORY[0x277D84560];
  sub_228703640(0, &qword_280DE3850, MEMORY[0x277D11E90], MEMORY[0x277D84560]);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_2287CCFF0;
  v40 = v145;
  *(v39 + 32) = v145;
  *(v39 + 40) = 0;
  v41 = v40;
  v42 = MEMORY[0x22AABDEC0](v39);

  v44 = MEMORY[0x22AABDDF0](v43);
  sub_228703640(0, &qword_280DE1268, MEMORY[0x277D84F68] + 8, v38);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_2287CCFD0;
  *(v45 + 32) = v37;
  *(v45 + 40) = v42;
  v114 = v37;
  v46 = v42;
  v47 = sub_2287CB390();

  v48 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v44 setPredicate_];
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_2287CCC50;
  v50 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v51 = sub_2287CB210();
  v52 = [v50 initWithKey:v51 ascending:1];

  *(v49 + 32) = v52;
  sub_228703004(0, &qword_280DE3878, 0x277CCAC98);
  v53 = sub_2287CB390();

  [v44 setSortDescriptors_];

  v54 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, a2[5]);
  v55 = sub_2287C99F0();
  v116 = v44;
  v56 = sub_2287CB7B0();
  v115 = v46;
  v57 = v56;

  v147 = 0;
  v148 = 0xE000000000000000;
  sub_2287CBA20();
  MEMORY[0x22AABE980](0xD000000000000011, 0x80000002287D3400);
  v58 = v131;
  if (v57 >> 62)
  {
    v59 = sub_2287CB920();
  }

  else
  {
    v59 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v146 = v59;
  v60 = sub_2287CBCC0();
  MEMORY[0x22AABE980](v60);

  MEMORY[0x22AABE980](0xD00000000000002BLL, 0x80000002287D3420);
  MEMORY[0x22AABE980](v147, v148);

  if (!(v57 >> 62))
  {
    v62 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v62)
    {
      goto LABEL_11;
    }

LABEL_25:

LABEL_26:
    v97 = objc_opt_self();
    v98 = v143;
    sub_2287C97B0();
    v99 = sub_2287C9770();
    (*(v130 + 8))(v98, v144);
    v100 = v117;
    sub_2287C9890();
    v101 = sub_2287C9880();
    (*(v118 + 8))(v100, v119);
    v102 = [v97 stringFromDate:v99 timeZone:v101 formatOptions:1907];

    v103 = sub_2287CB220();
    v105 = v104;

    v147 = 0;
    v148 = 0xE000000000000000;
    sub_2287CBA20();
    MEMORY[0x22AABE980](0xD000000000000022, 0x80000002287D33D0);
    MEMORY[0x22AABE980](v103, v105);

    MEMORY[0x22AABE980](0x636972747365722ELL, 0xEF7478742E646574);
    sub_2287C9F10();
    v106 = v120;
    sub_2287C9EE0();
    v107 = v124;
    sub_2287C96D0();

    v108 = *(v58 + 8);
    v109 = v58;
    v110 = v125;
    v108(v106, v125);
    v147 = v149;
    v148 = v150;
    v111 = v121;
    sub_2287CB230();
    sub_22873E0A0();
    sub_2287CB850();
    (*(v122 + 8))(v111, v123);

    v112 = v129;
    (*(v109 + 16))(v129, v107, v110);
    swift_storeEnumTagMultiPayload();
    v128(v112);

    sub_2287B6440(v112);
    return (v108)(v107, v110);
  }

  result = sub_2287CB920();
  v62 = result;
  if (!result)
  {
    goto LABEL_25;
  }

LABEL_11:
  if (v62 >= 1)
  {
    v63 = 0;
    v139 = "not picked for a feed:***\n\n";
    v140 = v57 & 0xC000000000000001;
    v137 = ",\nsourceProfile: ";
    v138 = "FeedItem uniqueIdentifier: ";
    v135 = ",\nhideInDiscover: ";
    v136 = "\ndateSubmitted: ";
    v133 = ",\nassociatedHKTypes: [";
    v134 = ",\nrelevantDateInterval: ";
    v132 = (v130 + 8);
    v145 = v57;
    do
    {
      if (v140)
      {
        v64 = MEMORY[0x22AABF120](v63, v57);
      }

      else
      {
        v64 = *(v57 + 8 * v63 + 32);
      }

      v65 = v64;
      ++v63;
      v147 = 0;
      v148 = 0xE000000000000000;
      sub_2287CBA20();
      MEMORY[0x22AABE980](0xD00000000000001BLL, v139 | 0x8000000000000000);
      v66 = [v65 uniqueIdentifier];
      v67 = sub_2287CB220();
      v69 = v68;

      MEMORY[0x22AABE980](v67, v69);

      MEMORY[0x22AABE980](0xD000000000000011, v138 | 0x8000000000000000);
      v146 = sub_2287CA790();
      v70 = MEMORY[0x277D83B48];
      sub_2287B6A84(0, &qword_280DDFF40, MEMORY[0x277D11E78], sub_2287B649C, MEMORY[0x277D83B48]);
      sub_2287B64D0();
      v71 = sub_2287CB4F0();

      v72 = sub_2287C9C70();
      v74 = v73;

      MEMORY[0x22AABE980](v72, v74);

      MEMORY[0x22AABE980](0xD000000000000010, v137 | 0x8000000000000000);
      v75 = [v65 dateSubmitted];
      v76 = v143;
      sub_2287C97A0();

      sub_2287B6A3C(&qword_280DE3978, MEMORY[0x277CC9578]);
      v77 = v144;
      v78 = sub_2287CBCC0();
      MEMORY[0x22AABE980](v78);

      (*v132)(v76, v77);
      MEMORY[0x22AABE980](0xD000000000000012, v136 | 0x8000000000000000);
      v79 = [v65 hideInDiscover];
      v80 = v79 == 0;
      if (v79)
      {
        v81 = 1702195828;
      }

      else
      {
        v81 = 0x65736C6166;
      }

      if (v80)
      {
        v82 = 0xE500000000000000;
      }

      else
      {
        v82 = 0xE400000000000000;
      }

      MEMORY[0x22AABE980](v81, v82);

      MEMORY[0x22AABE980](0x724F74726F730A2CLL, 0xED0000203A726564);
      v146 = [v65 sortOrder];
      v83 = sub_2287CBCC0();
      MEMORY[0x22AABE980](v83);

      MEMORY[0x22AABE980](0xD000000000000018, v135 | 0x8000000000000000);
      v84 = v141;
      sub_2287CA7A0();
      v85 = sub_2287CB810();
      v87 = v86;
      sub_2287B656C(v84, &qword_280DE33C8, MEMORY[0x277D12030]);
      MEMORY[0x22AABE980](v85, v87);

      MEMORY[0x22AABE980](0xD000000000000016, v134 | 0x8000000000000000);
      v88 = sub_2287CA750();
      sub_2287AFDF8(v88);
      v90 = v89;

      v146 = v90;
      sub_228703640(0, &qword_280DE3A00, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
      sub_228714B18();
      v91 = sub_2287CB1D0();
      v93 = v92;

      MEMORY[0x22AABE980](v91, v93);

      MEMORY[0x22AABE980](0xD000000000000018, v133 | 0x8000000000000000);
      v146 = sub_2287CA770();
      sub_2287B6B04(0, &qword_280DDFF30, v70);
      sub_2287B65DC();
      sub_22873E0A0();
      v94 = sub_2287CB340();
      v96 = v95;

      MEMORY[0x22AABE980](v94, v96);

      MEMORY[0x22AABE980](11357, 0xE200000000000000);
      MEMORY[0x22AABE980](v147, v148);

      v57 = v145;
    }

    while (v62 != v63);

    v58 = v131;
    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t sub_2287B490C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_2287B68C0();
  result = sub_2287CB9F0();
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
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    v17 = *(v9 + 40);
    sub_2287CBD80();
    _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
    sub_2287CB290();

    result = sub_2287CBDB0();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + v21) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

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
      v10 = (v15 - 1) & v15;
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

uint64_t sub_2287B4B24(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_2287B6B04(0, &qword_280DE35C8, MEMORY[0x277D84098]);
  result = sub_2287CB9F0();
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
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_2287CBD80();

    sub_2287CB290();
    result = sub_2287CBDB0();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
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
      v10 = (v15 - 1) & v15;
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

uint64_t sub_2287B4D58(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_2287C9B20();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_2287B6A84(0, &qword_280DE18F0, MEMORY[0x277D11E28], sub_2287B6A08, MEMORY[0x277D84098]);
  result = sub_2287CB9F0();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_2287B6A08();
    result = sub_2287CB1B0();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2287B5088(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_2287B6650(0, &qword_280DE18E8, MEMORY[0x277D84098]);
  result = sub_2287CB9F0();
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
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(v9 + 40);
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_2287CB7E0();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 8 * v21) = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

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
      v10 = (v15 - 1) & v15;
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

uint64_t sub_2287B528C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_2287B6974();
  result = sub_2287CB9F0();
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
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(v9 + 40);
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_2287CB7E0();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 8 * v21) = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

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
      v10 = (v15 - 1) & v15;
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

void *sub_2287B5474(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  return sub_2287B54E4(a1, a2, sub_2287B5BB0, sub_2287B5BB0);
}

void *sub_2287B54E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v17[1] = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v17 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v11);
    v13 = a3(v17 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v10, a2, a1);
  }

  else
  {
    v16 = swift_slowAlloc();

    v13 = sub_2287B56C0(v16, v10, a2, a1, a4);

    MEMORY[0x22AABFD90](v16, -1, -1);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

void *sub_2287B56C0(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a5(result, a2, a3, a4);

    return v10;
  }

  return result;
}

uint64_t sub_2287B5758(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a3;
  v53 = result;
  v60 = a4;
  if (a4[2] >= *(a3 + 16))
  {
    v29 = 0;
    v30 = a3 + 56;
    v31 = 1 << *(a3 + 32);
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    else
    {
      v32 = -1;
    }

    v56 = 0;
    v58 = v32 & *(a3 + 56);
    v51 = (v31 + 63) >> 6;
    v33 = a4 + 7;
LABEL_28:
    while (v58)
    {
      v34 = __clz(__rbit64(v58));
      v58 &= v58 - 1;
      v35 = v34 | (v29 << 6);
      v4 = a3;
LABEL_35:
      v55 = v35;
      v38 = *(*(v4 + 48) + v35);
      v39 = a4[5];
      sub_2287CBD80();
      _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
      sub_2287CB290();

      result = sub_2287CBDB0();
      a4 = v60;
      v40 = ~(-1 << *(v60 + 32));
      v41 = result & v40;
      if ((*(v33 + (((result & v40) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v40)))
      {
        while (1)
        {
          v42 = *(a4[6] + v41);
          v43 = _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
          v45 = v44;
          if (v43 == _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0() && v45 == v46)
          {
            break;
          }

          v48 = sub_2287CBD00();

          if (v48)
          {
            goto LABEL_44;
          }

          v41 = (v41 + 1) & v40;
          a4 = v60;
          if (((*(v33 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

LABEL_44:
        *(v53 + ((v55 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v55;
        a4 = v60;
        if (__OFADD__(v56, 1))
        {
          goto LABEL_49;
        }

        ++v56;
      }
    }

    v36 = v29;
    v4 = a3;
    while (1)
    {
      v29 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v29 >= v51)
      {
LABEL_46:

        return sub_2287B490C(v53, a2, v56, v4);
      }

      v37 = *(v30 + 8 * v29);
      ++v36;
      if (v37)
      {
        v58 = (v37 - 1) & v37;
        v35 = __clz(__rbit64(v37)) | (v29 << 6);
        goto LABEL_35;
      }
    }
  }

  else
  {
    v5 = 0;
    v8 = a4[7];
    v6 = a4 + 7;
    v7 = v8;
    v9 = 1 << *(v6 - 24);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v54 = v10 & v7;
    v56 = 0;
    v49 = (v9 + 63) >> 6;
    v50 = v6;
    v57 = a3 + 56;
LABEL_6:
    while (v54)
    {
      v11 = __clz(__rbit64(v54));
      v54 &= v54 - 1;
      v12 = v11 | (v5 << 6);
      v13 = v60;
LABEL_13:
      v16 = *(v13[6] + v12);
      v17 = *(v4 + 40);
      sub_2287CBD80();
      _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
      sub_2287CB290();

      result = sub_2287CBDB0();
      v18 = ~(-1 << *(v4 + 32));
      v19 = result & v18;
      v20 = (result & v18) >> 6;
      v21 = 1 << (result & v18);
      if ((v21 & *(v57 + 8 * v20)) != 0)
      {
        while (1)
        {
          v22 = *(*(v4 + 48) + v19);
          v23 = _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
          v25 = v24;
          if (v23 == _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0() && v25 == v26)
          {
            break;
          }

          v28 = sub_2287CBD00();

          if (v28)
          {
            goto LABEL_22;
          }

          v19 = (v19 + 1) & v18;
          v20 = v19 >> 6;
          v4 = a3;
          v21 = 1 << v19;
          if (((1 << v19) & *(v57 + 8 * (v19 >> 6))) == 0)
          {
            goto LABEL_6;
          }
        }

LABEL_22:
        v53[v20] |= v21;
        v4 = a3;
        if (__OFADD__(v56, 1))
        {
          goto LABEL_50;
        }

        ++v56;
      }
    }

    v14 = v5;
    v13 = v60;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v49)
      {
        goto LABEL_46;
      }

      v15 = v50[v5];
      ++v14;
      if (v15)
      {
        v54 = (v15 - 1) & v15;
        v12 = __clz(__rbit64(v15)) | (v5 << 6);
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_2287B5BB0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v65 = a2;
  v69 = a1;
  v6 = sub_2287C9B20();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v78 = (v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v64 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v79 = (v64 - v15);
  result = MEMORY[0x28223BE20](v14);
  v68 = v64 - v17;
  v18 = *(a3 + 16);
  v19 = *(a4 + 16);
  v80 = v7 + 16;
  v76 = a4;
  v77 = a3;
  v72 = v7;
  if (v19 >= v18)
  {
    v44 = 0;
    v45 = *(a3 + 56);
    v67 = a3 + 56;
    v46 = 1 << *(a3 + 32);
    if (v46 < 64)
    {
      v47 = ~(-1 << v46);
    }

    else
    {
      v47 = -1;
    }

    v48 = v47 & v45;
    v49 = (v46 + 63) >> 6;
    v75 = a4 + 56;
    v79 = (v7 + 8);
    j = v49;
    v71 = 0;
    if (v48)
    {
      goto LABEL_30;
    }

LABEL_31:
    v51 = v44;
    while (1)
    {
      v44 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        break;
      }

      if (v44 >= v49)
      {
LABEL_44:

        return sub_2287B4D58(v69, v65, v71, a3);
      }

      v52 = *(v67 + 8 * v44);
      ++v51;
      if (v52)
      {
        v50 = __clz(__rbit64(v52));
        for (i = ((v52 - 1) & v52); ; i = ((v48 - 1) & v48))
        {
          v53 = v50 | (v44 << 6);
          v54 = *(a3 + 48);
          v55 = *(v7 + 72);
          v73 = v53;
          v56 = *(v7 + 16);
          v56(v78, v54 + v55 * v53, v6);
          v57 = *(a4 + 40);
          sub_2287B6A08();
          v58 = sub_2287CB1B0();
          v59 = -1 << *(a4 + 32);
          v60 = v58 & ~v59;
          if ((*(v75 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60))
          {
            v68 = (v79 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v61 = ~v59;
            while (1)
            {
              v56(v13, *(v76 + 48) + v60 * v55, v6);
              sub_2287B6A3C(&qword_280DE3428, MEMORY[0x277D11E28]);
              v62 = sub_2287CB200();
              v63 = *v79;
              (*v79)(v13, v6);
              if (v62)
              {
                break;
              }

              v60 = (v60 + 1) & v61;
              if (((*(v75 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60) & 1) == 0)
              {
                a4 = v76;
                goto LABEL_42;
              }
            }

            result = (v63)(v78, v6);
            v7 = v72;
            *(v69 + ((v73 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v73;
            v49 = j;
            v28 = __OFADD__(v71++, 1);
            a4 = v76;
            a3 = v77;
            v48 = i;
            if (v28)
            {
              goto LABEL_47;
            }

            if (!i)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v63 = *v79;
LABEL_42:
            result = (v63)(v78, v6);
            a3 = v77;
            v7 = v72;
            v49 = j;
            v48 = i;
            if (!i)
            {
              goto LABEL_31;
            }
          }

LABEL_30:
          v50 = __clz(__rbit64(v48));
        }
      }
    }

    __break(1u);
  }

  else
  {
    v71 = 0;
    v20 = a4;
    v21 = 0;
    v23 = v20 + 56;
    v22 = *(v20 + 56);
    v64[0] = v23;
    v24 = 1 << *(v23 - 24);
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v26 = v25 & v22;
    v27 = (v24 + 63) >> 6;
    v66 = v7 + 32;
    v67 = v27;
    v73 = a3 + 56;
    v78 = (v7 + 8);
    if (v26)
    {
      goto LABEL_9;
    }

LABEL_10:
    v30 = v21;
    while (1)
    {
      v21 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v21 >= v27)
      {
        goto LABEL_44;
      }

      v31 = *(v64[0] + 8 * v21);
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        for (j = (v31 - 1) & v31; ; j = (v26 - 1) & v26)
        {
          v32 = *(v7 + 72);
          v33 = *(v76 + 48) + v32 * (v29 | (v21 << 6));
          v34 = v68;
          i = *(v7 + 16);
          v75 = v32;
          i(v68, v33, v6);
          (*(v7 + 32))(v79, v34, v6);
          v35 = *(a3 + 40);
          sub_2287B6A08();
          v36 = sub_2287CB1B0();
          v37 = -1 << *(a3 + 32);
          v38 = v36 & ~v37;
          v39 = v38 >> 6;
          v40 = 1 << v38;
          if (((1 << v38) & *(v73 + 8 * (v38 >> 6))) != 0)
          {
            v64[1] = v78 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v41 = ~v37;
            while (1)
            {
              i(v13, *(v77 + 48) + v38 * v75, v6);
              sub_2287B6A3C(&qword_280DE3428, MEMORY[0x277D11E28]);
              v42 = sub_2287CB200();
              v43 = *v78;
              (*v78)(v13, v6);
              if (v42)
              {
                break;
              }

              v38 = (v38 + 1) & v41;
              v39 = v38 >> 6;
              v40 = 1 << v38;
              if (((1 << v38) & *(v73 + 8 * (v38 >> 6))) == 0)
              {
                a3 = v77;
                goto LABEL_21;
              }
            }

            result = (v43)(v79, v6);
            v26 = j;
            v69[v39] |= v40;
            v7 = v72;
            v28 = __OFADD__(v71++, 1);
            a3 = v77;
            v27 = v67;
            if (v28)
            {
              goto LABEL_48;
            }

            if (!v26)
            {
              goto LABEL_10;
            }
          }

          else
          {
            v43 = *v78;
LABEL_21:
            result = (v43)(v79, v6);
            v7 = v72;
            v27 = v67;
            v26 = j;
            if (!j)
            {
              goto LABEL_10;
            }
          }

LABEL_9:
          v29 = __clz(__rbit64(v26));
        }
      }
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_2287B63C0()
{
  if (!qword_27D850EE8)
  {
    sub_2287C9700();
    sub_22870D3A8(255, &qword_280DE35A0);
    v0 = sub_2287CBE10();
    if (!v1)
    {
      atomic_store(v0, &qword_27D850EE8);
    }
  }
}

uint64_t sub_2287B6440(uint64_t a1)
{
  sub_2287B63C0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2287B64D0()
{
  result = qword_280DDFF38;
  if (!qword_280DDFF38)
  {
    sub_2287B6A84(255, &qword_280DDFF40, MEMORY[0x277D11E78], sub_2287B649C, MEMORY[0x277D83B48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DDFF38);
  }

  return result;
}

uint64_t sub_2287B656C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2287063C8(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_2287B65DC()
{
  result = qword_27D850EF0;
  if (!qword_27D850EF0)
  {
    sub_2287B6B04(255, &qword_280DDFF30, MEMORY[0x277D83B48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850EF0);
  }

  return result;
}

void sub_2287B6650(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_228703004(255, &qword_280DE3638, 0x277CCD720);
    v7 = sub_22872C220(&qword_280DE3630, &qword_280DE3638, 0x277CCD720);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2287B66EC(uint64_t a1, uint64_t a2)
{
  sub_2287B63C0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_14Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_2Tm(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 16));
  v4 = *(v2 + 32);

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

uint64_t sub_2287B6804()
{
  v1 = *(v0 + 16);

  return sub_22870E5FC(v2);
}

uint64_t sub_2287B6840(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2287063C8(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_2287B68C0()
{
  if (!qword_280DDFE80)
  {
    sub_22872C4EC();
    v0 = sub_2287CBA00();
    if (!v1)
    {
      atomic_store(v0, &qword_280DDFE80);
    }
  }
}

uint64_t sub_2287B691C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(1);
}

uint64_t sub_2287B6948()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0);
}

void sub_2287B6974()
{
  if (!qword_280DE18E0)
  {
    sub_228703004(255, &qword_280DE3870, 0x277CCD7C8);
    sub_22872C220(&qword_280DE1970, &qword_280DE3870, 0x277CCD7C8);
    v0 = sub_2287CBA00();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE18E0);
    }
  }
}

uint64_t sub_2287B6A3C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2287B6A84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_2287B6B04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2287B6B84()
{
  sub_2287CA140();
  sub_2287CA100();
  v0 = sub_2287CB210();

  v1 = [objc_opt_self() featureWithName:v0 featureType:1];

  qword_280DE63B0 = v1;
}

void sub_2287B6C04()
{
  if (qword_280DE37E8 != -1)
  {
    swift_once();
  }

  v0 = qword_280DE63B0;
  v1 = *(sub_2287C9F30() + 16);

  sub_228795C5C(v1);
  v3 = v2;

  qword_280DE63B8 = v3;
}

uint64_t HealthExperienceStoreFeedItemContext.fetchPluginStorage(havingUniqueIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v22 = *v3;
  sub_228740FBC();
  sub_22870558C();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2287CE0A0;
  v8 = MEMORY[0x277D837D0];
  *(v7 + 56) = MEMORY[0x277D837D0];
  v9 = sub_2287043F8();
  *(v7 + 64) = v9;
  strcpy((v7 + 32), "plugin.package");
  *(v7 + 47) = -18;
  v10 = *(v3 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo + 32);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo), *(v3 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo + 24));
  v11 = sub_2287C9A70();
  *(v7 + 96) = v8;
  *(v7 + 104) = v9;
  *(v7 + 72) = v11;
  *(v7 + 80) = v12;
  *(v7 + 136) = v8;
  *(v7 + 144) = v9;
  *(v7 + 112) = 0xD000000000000010;
  *(v7 + 120) = 0x80000002287CFCA0;
  *(v7 + 176) = v8;
  *(v7 + 184) = v9;
  *(v7 + 152) = a1;
  *(v7 + 160) = a2;

  v13 = sub_2287CB550();
  v14 = sub_2287C9C00();
  (*(*(v14 - 8) + 56))(a3, 1, 1, v14);
  v15 = *(v3 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_storageContext);
  v16 = swift_allocObject();
  v16[2] = v4;
  v16[3] = v13;
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = a3;
  v16[7] = v22;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_2287B73A8;
  *(v17 + 24) = v16;
  aBlock[4] = sub_22877E1B8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228742C10;
  aBlock[3] = &block_descriptor_13;
  v18 = _Block_copy(aBlock);

  v19 = v13;

  [v15 performBlockAndWait_];

  _Block_release(v18);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if (v19)
  {
    __break(1u);
  }

  return result;
}

uint64_t HealthExperienceStoreFeedItemContext.fetchAllPluginStorage()()
{
  sub_228740FBC();
  sub_22870558C();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2287CCFF0;
  v2 = MEMORY[0x277D837D0];
  *(v1 + 56) = MEMORY[0x277D837D0];
  v3 = sub_2287043F8();
  *(v1 + 64) = v3;
  strcpy((v1 + 32), "plugin.package");
  *(v1 + 47) = -18;
  v4 = *(v0 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo), *(v0 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo + 24));
  v5 = sub_2287C9A70();
  *(v1 + 96) = v2;
  *(v1 + 104) = v3;
  *(v1 + 72) = v5;
  *(v1 + 80) = v6;
  v7 = sub_2287CB550();
  v8 = sub_2287B73D0(v7);

  return v8;
}

uint64_t sub_2287B7094(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_2287CAA50();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287B791C();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287C9A60();
  v20 = *(a1 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_storageContext);
  if (sub_2287CA300())
  {
    sub_2287C9C10();
    v21 = sub_2287C9C00();
    (*(*(v21 - 8) + 56))(v19, 0, 1, v21);
    return sub_2287B7974(v19, a5);
  }

  else
  {
    sub_2287CA9D0();

    v23 = sub_2287CAA40();
    v24 = sub_2287CB610();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v34 = a3;
      v26 = v25;
      v35 = swift_slowAlloc();
      v36[0] = v35;
      *v26 = 136446722;
      v36[1] = a6;
      swift_getMetatypeMetadata();
      v27 = sub_2287CB250();
      v29 = sub_2287031D8(v27, v28, v36);

      *(v26 + 4) = v29;
      *(v26 + 12) = 2082;
      v30 = HealthExperienceStoreFeedItemContext.description.getter();
      v32 = sub_2287031D8(v30, v31, v36);

      *(v26 + 14) = v32;
      *(v26 + 22) = 2082;
      *(v26 + 24) = sub_2287031D8(v34, a4, v36);
      _os_log_impl(&dword_2286FF000, v23, v24, "[%{public}s]: No plugin storage found in context %{public}s, identifier %{public}s", v26, 0x20u);
      v33 = v35;
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v33, -1, -1);
      MEMORY[0x22AABFD90](v26, -1, -1);
    }

    return (*(v12 + 8))(v15, v11);
  }
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2287B73D0(uint64_t a1)
{
  v2 = v1;
  sub_2287C9A60();
  v4 = sub_2287C9A40();
  [v4 setPredicate_];
  v13 = MEMORY[0x277D84F90];
  v5 = *(v1 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_storageContext);
  v6 = swift_allocObject();
  v6[2] = &v13;
  v6[3] = v2;
  v6[4] = v4;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_2287B7910;
  *(v7 + 24) = v6;
  aBlock[4] = sub_2287B79DC;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228742C10;
  aBlock[3] = &block_descriptor_13;
  v8 = _Block_copy(aBlock);

  v9 = v4;

  [v5 performBlockAndWait_];

  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {
    v11 = v13;

    return v11;
  }

  return result;
}

uint64_t sub_2287B7590(void *a1, uint64_t a2)
{
  v4 = sub_2287C9C00();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  v12 = *(a2 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_storageContext);
  sub_2287C9A60();
  v13 = sub_2287CB7B0();
  v14 = v13;
  if (!(v13 >> 62))
  {
    v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_16:

    v16 = MEMORY[0x277D84F90];
LABEL_17:
    v24 = *a1;
    *a1 = v16;
  }

  v15 = sub_2287CB920();
  if (!v15)
  {
    goto LABEL_16;
  }

LABEL_3:
  v29 = MEMORY[0x277D84F90];
  sub_2287136AC(0, v15 & ~(v15 >> 63), 0);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v27 = a1;
    v16 = v29;
    if ((v14 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v15; ++i)
      {
        MEMORY[0x22AABF120](i, v14);
        sub_2287C9C10();
        v29 = v16;
        v19 = *(v16 + 16);
        v18 = *(v16 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_2287136AC(v18 > 1, v19 + 1, 1);
          v16 = v29;
        }

        *(v16 + 16) = v19 + 1;
        (*(v5 + 32))(v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v19, v11, v4);
      }
    }

    else
    {
      v20 = 32;
      do
      {
        v21 = *(v14 + v20);
        sub_2287C9C10();
        v29 = v16;
        v23 = *(v16 + 16);
        v22 = *(v16 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_2287136AC(v22 > 1, v23 + 1, 1);
          v16 = v29;
        }

        *(v16 + 16) = v23 + 1;
        (*(v5 + 32))(v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v23, v9, v4);
        v20 += 8;
        --v15;
      }

      while (v15);
    }

    a1 = v27;
    goto LABEL_17;
  }

  __break(1u);
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_2287CBA20();
  MEMORY[0x22AABE980](0xD00000000000002ALL, 0x80000002287D35A0);
  v28 = v15;
  sub_22870D3A8(0, &qword_280DE35A0);
  sub_2287CBB30();
  result = sub_2287CBB90();
  __break(1u);
  return result;
}

void sub_2287B791C()
{
  if (!qword_280DE3420)
  {
    sub_2287C9C00();
    v0 = sub_2287CB820();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE3420);
    }
  }
}

uint64_t sub_2287B7974(uint64_t a1, uint64_t a2)
{
  sub_2287B791C();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t GenerationOperationToGeneratorPipelineAdaptor.__allocating_init(queue:pluginInfo:domain:context:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  *(v11 + OBJC_IVAR____TtC18HealthPlatformCore45GenerationOperationToGeneratorPipelineAdaptor_queue) = a1;
  v12 = OBJC_IVAR____TtC18HealthPlatformCore45GenerationOperationToGeneratorPipelineAdaptor_domain;
  v13 = sub_2287C9E70();
  (*(*(v13 - 8) + 32))(v11 + v12, a3, v13);
  v14 = OBJC_IVAR____TtC18HealthPlatformCore45GenerationOperationToGeneratorPipelineAdaptor_context;
  v15 = sub_2287C9ED0();
  (*(*(v15 - 8) + 32))(v11 + v14, a4, v15);
  sub_22871AC0C(a2, v11 + OBJC_IVAR____TtC18HealthPlatformCore45GenerationOperationToGeneratorPipelineAdaptor_pluginInfo);
  return v11;
}

uint64_t GenerationOperationToGeneratorPipelineAdaptor.domain.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthPlatformCore45GenerationOperationToGeneratorPipelineAdaptor_domain;
  v4 = sub_2287C9E70();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_2287B7B58()
{
  v1 = sub_2287C9E70();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  sub_2287B7FA8();
  v17 = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = OBJC_IVAR____TtC18HealthPlatformCore45GenerationOperationToGeneratorPipelineAdaptor_domain;
  sub_2287C9E80();
  sub_2287010E4(v0 + OBJC_IVAR____TtC18HealthPlatformCore45GenerationOperationToGeneratorPipelineAdaptor_pluginInfo, &v19);
  v20 = *(v0 + OBJC_IVAR____TtC18HealthPlatformCore45GenerationOperationToGeneratorPipelineAdaptor_queue);
  v10 = v20;
  (*(v2 + 16))(&v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v0 + v9, v1);
  v11 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v12 = swift_allocObject();
  (*(v2 + 32))(v12 + v11, &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v1);
  sub_2287B8014();
  sub_228718330();
  v13 = v10;
  sub_2287CAF70();

  sub_228718384(v18);
  sub_2287B80F8();
  v14 = v17;
  v15 = sub_2287CAF40();
  (*(v5 + 8))(v8, v14);
  return v15;
}

uint64_t sub_2287B7DC8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_2287C9E70();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = *a1;
  (*(v10 + 16))(&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  v11 = sub_2287C9CE0();
  v12 = MEMORY[0x277D11EA0];
  a3[3] = v11;
  a3[4] = v12;
  __swift_allocate_boxed_opaque_existential_0(a3);

  return sub_2287C9CC0();
}

uint64_t GenerationOperationToGeneratorPipelineAdaptor.init(queue:pluginInfo:domain:context:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + OBJC_IVAR____TtC18HealthPlatformCore45GenerationOperationToGeneratorPipelineAdaptor_queue) = a1;
  v8 = OBJC_IVAR____TtC18HealthPlatformCore45GenerationOperationToGeneratorPipelineAdaptor_domain;
  v9 = sub_2287C9E70();
  (*(*(v9 - 8) + 32))(v4 + v8, a3, v9);
  v10 = OBJC_IVAR____TtC18HealthPlatformCore45GenerationOperationToGeneratorPipelineAdaptor_context;
  v11 = sub_2287C9ED0();
  (*(*(v11 - 8) + 32))(v4 + v10, a4, v11);
  sub_22871AC0C(a2, v4 + OBJC_IVAR____TtC18HealthPlatformCore45GenerationOperationToGeneratorPipelineAdaptor_pluginInfo);
  return v4;
}

void sub_2287B7FA8()
{
  if (!qword_280DE0660)
  {
    sub_2287B8014();
    sub_228718330();
    v0 = sub_2287CAB50();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE0660);
    }
  }
}

unint64_t sub_2287B8014()
{
  result = qword_280DE3358;
  if (!qword_280DE3358)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280DE3358);
  }

  return result;
}

uint64_t sub_2287B8078@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_2287C9E70() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2287B7DC8(a1, v6, a2);
}

unint64_t sub_2287B80F8()
{
  result = qword_280DE0668;
  if (!qword_280DE0668)
  {
    sub_2287B7FA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE0668);
  }

  return result;
}

uint64_t GenerationOperationToGeneratorPipelineAdaptor.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthPlatformCore45GenerationOperationToGeneratorPipelineAdaptor_domain;
  v2 = sub_2287C9E70();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC18HealthPlatformCore45GenerationOperationToGeneratorPipelineAdaptor_pluginInfo));
  v3 = OBJC_IVAR____TtC18HealthPlatformCore45GenerationOperationToGeneratorPipelineAdaptor_context;
  v4 = sub_2287C9ED0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t GenerationOperationToGeneratorPipelineAdaptor.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18HealthPlatformCore45GenerationOperationToGeneratorPipelineAdaptor_domain;
  v2 = sub_2287C9E70();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC18HealthPlatformCore45GenerationOperationToGeneratorPipelineAdaptor_pluginInfo));
  v3 = OBJC_IVAR____TtC18HealthPlatformCore45GenerationOperationToGeneratorPipelineAdaptor_context;
  v4 = sub_2287C9ED0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2287B8330@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18HealthPlatformCore45GenerationOperationToGeneratorPipelineAdaptor_domain;
  v5 = sub_2287C9E70();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t type metadata accessor for GenerationOperationToGeneratorPipelineAdaptor()
{
  result = qword_280DE08A0;
  if (!qword_280DE08A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2287B8400()
{
  result = sub_2287C9E70();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_2287C9ED0();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void *ProfileDashboardsFeedPopulationListener.__allocating_init<A>(sourceProfilePublisher:healthExperienceStore:submissionScheduler:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_allocObject();
  v10 = sub_2287BC348(a1, a2, a3, a4, a5);
  v11 = type metadata accessor for FeedPopulationListenerSchedulerConfiguration();
  (*(*(v11 - 8) + 8))(a3, v11);
  return v10;
}

void *ProfileDashboardsFeedPopulationListener.init<A>(sourceProfilePublisher:healthExperienceStore:submissionScheduler:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_2287BC348(a1, a2, a3, a4, a5);
  v7 = type metadata accessor for FeedPopulationListenerSchedulerConfiguration();
  (*(*(v7 - 8) + 8))(a3, v7);
  return v6;
}

uint64_t sub_2287B8664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  static FeedPopulationListenerSupport.makeThrottledFeedItemSubmissionPublisher<A>(config:)(a1, a3, a4, &protocol witness table for ProfileDashboardsFeedPopulationListener, a5);
  swift_allocObject();
  swift_weakInit();
  sub_2287BCA54();
  sub_2287BC758(&qword_280DE0280, sub_2287BCA54);
  v5 = sub_2287CB050();

  return v5;
}

uint64_t sub_2287B875C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 88);
    v4 = result;

    sub_2287C9A90();

    sub_2287BA040(a1);
    v5 = *(v4 + 88);

    sub_2287C9AA0();
  }

  return result;
}

uint64_t sub_2287B87F8@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = 0;
  v4 = *result;
  v5 = *(*result + 16);
  v6 = *result + 32;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v5 == v3)
    {
      *a2 = v7;
      return result;
    }

    if (v3 >= *(v4 + 16))
    {
      break;
    }

    v8 = *(v6 + 8 * v3++);
    if (v8)
    {
      v9 = v8;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2287134A0(0, *(v7 + 16) + 1, 1);
      }

      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        result = sub_2287134A0((v10 > 1), v11 + 1, 1);
      }

      *(v7 + 16) = v11 + 1;
      *(v7 + 8 * v11 + 32) = v8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2287B88F0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2287CAA50();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = *(result + 88);

    sub_2287C9A90();

    sub_2287CA9E0();

    v14 = sub_2287CAA40();
    v15 = sub_2287CB610();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v26 = v5;
      v17 = v16;
      v18 = swift_slowAlloc();
      v27[0] = v18;
      *v17 = 136315394;
      v27[4] = a3;
      swift_getMetatypeMetadata();
      v19 = sub_2287CB250();
      v21 = sub_2287031D8(v19, v20, v27);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      v22 = MEMORY[0x22AABEA80](v10, MEMORY[0x277D11E90]);
      v24 = sub_2287031D8(v22, v23, v27);

      *(v17 + 14) = v24;
      _os_log_impl(&dword_2286FF000, v14, v15, "[%s]: Received new source profiles, creating new feed population managers for %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v18, -1, -1);
      MEMORY[0x22AABFD90](v17, -1, -1);

      (*(v6 + 8))(v9, v26);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
    }

    sub_2287B98D4(v10);
    v25 = *(v12 + 88);

    sub_2287C9AA0();
  }

  return result;
}

void sub_2287B8B88()
{
  if (!v0[8])
  {
    v1 = v0[9];
    if (v1)
    {
      v2 = v0[10];

      v4 = v1(v3);
      sub_228714BC0(v1);
      v5 = v0[8];
    }

    else
    {
      v4 = 0;
    }

    v0[8] = v4;
  }
}

uint64_t sub_2287B8C20()
{
  v1 = *(v0 + 64);
  *(v0 + 64) = 0;
}

void sub_2287B8C2C()
{
  v1 = v0;
  v2 = *(v0 + 88);
  sub_2287C9A90();
  swift_beginAccess();
  v3 = *(v1 + 96);

  sub_2287C9AA0();
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v30 = v3;

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (v7)
  {
    v31 = v10;
LABEL_11:
    v12 = __clz(__rbit64(v7)) | (v9 << 6);
    v13 = *(*(v30 + 48) + 8 * v12);
    v14 = (*(v30 + 56) + 16 * v12);
    v16 = *v14;
    v15 = v14[1];
    ObjectType = swift_getObjectType();
    v18 = *(v15 + 24);
    v19 = v13;
    swift_unknownObjectRetain();
    v20 = v18(ObjectType, v15);
    swift_unknownObjectRelease();

    v21 = *(v20 + 16);
    v10 = v31;
    v22 = *(v31 + 2);
    v23 = v22 + v21;
    if (__OFADD__(v22, v21))
    {
      goto LABEL_25;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v23 > *(v31 + 3) >> 1)
    {
      if (v22 <= v23)
      {
        v25 = v22 + v21;
      }

      else
      {
        v25 = v22;
      }

      v10 = sub_2287238A0(isUniquelyReferenced_nonNull_native, v25, 1, v31);
    }

    v7 &= v7 - 1;
    if (*(v20 + 16))
    {
      v26 = *(v10 + 2);
      if ((*(v10 + 3) >> 1) - v26 < v21)
      {
        goto LABEL_27;
      }

      memcpy(&v10[v26 + 32], (v20 + 32), v21);

      if (v21)
      {
        v27 = *(v10 + 2);
        v28 = __OFADD__(v27, v21);
        v29 = v27 + v21;
        if (v28)
        {
          goto LABEL_28;
        }

        *(v10 + 2) = v29;
      }
    }

    else
    {

      if (v21)
      {
        goto LABEL_26;
      }
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v11);
    ++v9;
    if (v7)
    {
      v31 = v10;
      v9 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t sub_2287B8E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v32 = a1;
  v33 = a3;
  v30 = *v3;
  v31 = a2;
  v5 = sub_2287CB080();
  v35 = *(v5 - 8);
  v6 = *(v35 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_2287CB0E0();
  v9 = *(v34 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v34);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2287CB090();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v3[11];
  sub_2287C9A90();
  swift_beginAccess();
  v19 = v4[12];

  sub_2287C9AA0();
  v20 = *(v19 + 16);
  if (!v20)
  {
    goto LABEL_4;
  }

  v21 = sub_228723C14(*(v19 + 16), 0);
  v22 = sub_22872A394(aBlock, v21 + 2, v20, v19);
  sub_22870B3D4();
  if (v22 != v20)
  {
    __break(1u);
LABEL_4:

    v21 = MEMORY[0x277D84F90];
  }

  sub_228703004(0, &qword_280DE39D0, 0x277D85C78);
  (*(v14 + 104))(v17, *MEMORY[0x277D851B0], v13);
  v23 = sub_2287CB6E0();
  (*(v14 + 8))(v17, v13);
  v24 = swift_allocObject();
  v25 = v31;
  v26 = v32;
  v24[2] = v21;
  v24[3] = v26;
  v27 = v33;
  v24[4] = v25;
  v24[5] = v27;
  v24[6] = v30;
  aBlock[4] = sub_2287BC730;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228712EA8;
  aBlock[3] = &block_descriptor_14;
  v28 = _Block_copy(aBlock);

  sub_2287CB0A0();
  v36 = MEMORY[0x277D84F90];
  sub_2287BC758(&qword_280DE3A28, MEMORY[0x277D85198]);
  sub_2287723C0(0);
  sub_2287BC758(&qword_280DE3A08, sub_2287723C0);
  sub_2287CB880();
  MEMORY[0x22AABED90](0, v12, v8, v28);
  _Block_release(v28);

  (*(v35 + 8))(v8, v5);
  (*(v9 + 8))(v12, v34);
}

void sub_2287B92D0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v65 = a5;
  v58[1] = a4;
  v59 = a3;
  v64 = sub_2287C9810();
  v7 = *(v64 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v64);
  v63 = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_2287CAA50();
  v60 = *(v70 - 8);
  v10 = *(v60 + 64);
  v11 = MEMORY[0x28223BE20](v70);
  v58[0] = v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = v58 - v13;
  v71 = dispatch_group_create();
  v16 = *(a1 + 16);
  if (v16)
  {
    v69 = (v60 + 8);
    v62 = (v7 + 8);
    v17 = (a1 + 40);
    *&v15 = 136315650;
    v61 = v15;
    v72 = v14;
    do
    {
      v46 = *(v17 - 1);
      v34 = *v17;
      swift_unknownObjectRetain();
      sub_2287CA9E0();
      swift_unknownObjectRetain();

      v47 = sub_2287CAA40();
      v48 = sub_2287CB610();

      swift_unknownObjectRelease();
      if (os_log_type_enabled(v47, v48))
      {
        v18 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v73 = v68;
        *v18 = v61;
        v74 = v65;
        swift_getMetatypeMetadata();
        v19 = sub_2287CB250();
        v67 = v47;
        v21 = sub_2287031D8(v19, v20, &v73);

        *(v18 + 4) = v21;
        *(v18 + 12) = 2080;
        ObjectType = swift_getObjectType();
        v23 = (*(v34 + 16))(ObjectType, v34);
        v24 = [v23 profileIdentifier];

        v25 = [v24 identifier];
        v26 = v63;
        sub_2287C97F0();

        sub_2287BC758(&qword_280DE3468, MEMORY[0x277CC95F0]);
        v66 = v48;
        v27 = v34;
        v28 = a2;
        v29 = v64;
        v30 = sub_2287CBCC0();
        v32 = v31;
        v33 = v29;
        a2 = v28;
        v34 = v27;
        (*v62)(v26, v33);
        v35 = sub_2287031D8(v30, v32, &v73);

        *(v18 + 14) = v35;
        *(v18 + 22) = 2080;
        v36 = MEMORY[0x22AABEA80](a2, MEMORY[0x277D121B8]);
        v38 = sub_2287031D8(v36, v37, &v73);

        *(v18 + 24) = v38;
        v39 = v67;
        _os_log_impl(&dword_2286FF000, v67, v66, "[%s]: Sending population request to populationManager for profile %s and kinds: %s", v18, 0x20u);
        v40 = v68;
        swift_arrayDestroy();
        MEMORY[0x22AABFD90](v40, -1, -1);
        MEMORY[0x22AABFD90](v18, -1, -1);

        (*v69)(v72, v70);
      }

      else
      {

        (*v69)(v14, v70);
      }

      v41 = v71;
      dispatch_group_enter(v71);
      v42 = swift_getObjectType();
      v43 = swift_allocObject();
      *(v43 + 16) = v41;
      v44 = *(v34 + 40);
      v45 = v41;
      v44(a2, sub_22879F5AC, v43, v42, v34);
      swift_unknownObjectRelease();

      v17 += 2;
      --v16;
      v14 = v72;
    }

    while (v16);
  }

  sub_2287CB660();
  v49 = v58[0];
  sub_2287CAA20();
  v50 = sub_2287CAA40();
  v51 = sub_2287CB610();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v73 = v53;
    *v52 = 136315138;
    v74 = v65;
    swift_getMetatypeMetadata();
    v54 = sub_2287CB250();
    v56 = sub_2287031D8(v54, v55, &v73);

    *(v52 + 4) = v56;
    _os_log_impl(&dword_2286FF000, v50, v51, "[%s]: All population complete!", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v53);
    MEMORY[0x22AABFD90](v53, -1, -1);
    MEMORY[0x22AABFD90](v52, -1, -1);
  }

  v57 = (*(v60 + 8))(v49, v70);
  v59(v57);
}

uint64_t sub_2287B98D4(uint64_t a1)
{
  v2 = v1;
  v94 = *v2;
  v4 = sub_2287CAA50();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v91 = &v90 - v10;
  swift_beginAccess();
  v12 = v2[12];
  v2[12] = MEMORY[0x277D84F98];
  v13 = *(a1 + 16);
  if (!v13)
  {
  }

  v14 = (a1 + 32);
  v98 = (v5 + 8);
  *&v11 = 136315394;
  v92 = v11;
  v93 = v4;
  v99 = v9;
  v96 = v12;
  while (1)
  {
    v17 = *v14;
    v100 = v14 + 1;
    v18 = *(v12 + 16);
    v19 = v17;
    if (v18)
    {
      v20 = sub_228756C9C(v17);
      if (v21)
      {
        v95 = *(*(v12 + 56) + 16 * v20);
        v97 = v95;
        swift_unknownObjectRetain();
        v22 = v91;
        sub_2287CA9E0();
        v23 = v19;
        v24 = sub_2287CAA40();
        v25 = sub_2287CB610();

        v26 = os_log_type_enabled(v24, v25);
        v90 = v23;
        if (v26)
        {
          v27 = v23;
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v101 = v29;
          *v28 = v92;
          v102 = v94;
          swift_getMetatypeMetadata();
          v30 = sub_2287CB250();
          v32 = sub_2287031D8(v30, v31, &v101);

          *(v28 + 4) = v32;
          *(v28 + 12) = 2080;
          v33 = v27;
          v34 = sub_2287C9C50();
          v36 = v35;

          v37 = v34;
          v4 = v93;
          v38 = sub_2287031D8(v37, v36, &v101);
          v12 = v96;

          *(v28 + 14) = v38;
          v9 = v99;
          _os_log_impl(&dword_2286FF000, v24, v25, "[%s]: Reusing existing population manager for sourceProfile %s", v28, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AABFD90](v29, -1, -1);
          MEMORY[0x22AABFD90](v28, -1, -1);

          (*v98)(v91, v4);
        }

        else
        {

          (*v98)(v22, v4);
        }

        swift_beginAccess();
        swift_unknownObjectRetain();
        v72 = v2[12];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v101 = v2[12];
        v74 = v101;
        v2[12] = 0x8000000000000000;
        v75 = sub_228756C9C(v17);
        v77 = *(v74 + 16);
        v78 = (v76 & 1) == 0;
        v64 = __OFADD__(v77, v78);
        v79 = v77 + v78;
        if (v64)
        {
          goto LABEL_38;
        }

        v80 = v76;
        if (*(v74 + 24) >= v79)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v86 = v75;
            sub_2287BC1DC();
            v75 = v86;
            v82 = v101;
            if (v80)
            {
              goto LABEL_28;
            }

            goto LABEL_32;
          }
        }

        else
        {
          sub_2287BB5E4(v79, isUniquelyReferenced_nonNull_native);
          v75 = sub_228756C9C(v17);
          if ((v80 & 1) != (v81 & 1))
          {
            goto LABEL_40;
          }
        }

        v82 = v101;
        if (v80)
        {
LABEL_28:
          v83 = v82[7];
          v84 = *(v83 + 16 * v75);
          *(v83 + 16 * v75) = v95;

          swift_unknownObjectRelease();
LABEL_34:
          v2[12] = v82;
          swift_endAccess();
          swift_unknownObjectRelease();
          goto LABEL_5;
        }

LABEL_32:
        v82[(v75 >> 6) + 8] |= 1 << v75;
        *(v82[6] + 8 * v75) = v17;
        *(v82[7] + 16 * v75) = v95;
        v87 = v82[2];
        v64 = __OFADD__(v87, 1);
        v88 = v87 + 1;
        if (v64)
        {
          goto LABEL_39;
        }

        v82[2] = v88;
        goto LABEL_34;
      }
    }

    sub_2287CA9E0();
    v39 = v19;
    v40 = sub_2287CAA40();
    v41 = sub_2287CB610();

    v42 = os_log_type_enabled(v40, v41);
    v97 = v39;
    if (v42)
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v101 = v44;
      *v43 = v92;
      v102 = v94;
      swift_getMetatypeMetadata();
      v45 = sub_2287CB250();
      v47 = sub_2287031D8(v45, v46, &v101);

      *(v43 + 4) = v47;
      *(v43 + 12) = 2080;
      v48 = v39;
      v49 = sub_2287C9C50();
      v51 = v50;

      v52 = v49;
      v4 = v93;
      v53 = sub_2287031D8(v52, v51, &v101);

      *(v43 + 14) = v53;
      _os_log_impl(&dword_2286FF000, v40, v41, "[%s]: Creating new population manager for sourceProfile %s", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v44, -1, -1);
      MEMORY[0x22AABFD90](v43, -1, -1);

      (*v98)(v99, v4);
    }

    else
    {

      (*v98)(v9, v4);
    }

    v54 = (*(*v2 + 288))(v17);
    v56 = v55;
    swift_beginAccess();
    v57 = v2[12];
    v58 = swift_isUniquelyReferenced_nonNull_native();
    v101 = v2[12];
    v59 = v101;
    v2[12] = 0x8000000000000000;
    v60 = sub_228756C9C(v17);
    v62 = *(v59 + 16);
    v63 = (v61 & 1) == 0;
    v64 = __OFADD__(v62, v63);
    v65 = v62 + v63;
    if (v64)
    {
      break;
    }

    v66 = v61;
    if (*(v59 + 24) < v65)
    {
      sub_2287BB5E4(v65, v58);
      v60 = sub_228756C9C(v17);
      if ((v66 & 1) != (v67 & 1))
      {
        goto LABEL_40;
      }

LABEL_18:
      v68 = v101;
      if ((v66 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_3;
    }

    if (v58)
    {
      goto LABEL_18;
    }

    v85 = v60;
    sub_2287BC1DC();
    v60 = v85;
    v68 = v101;
    if ((v66 & 1) == 0)
    {
LABEL_19:
      v68[(v60 >> 6) + 8] |= 1 << v60;
      *(v68[6] + 8 * v60) = v17;
      v69 = (v68[7] + 16 * v60);
      *v69 = v54;
      v69[1] = v56;
      v70 = v68[2];
      v64 = __OFADD__(v70, 1);
      v71 = v70 + 1;
      if (v64)
      {
        goto LABEL_37;
      }

      v68[2] = v71;
      goto LABEL_4;
    }

LABEL_3:
    v15 = (v68[7] + 16 * v60);
    v16 = *v15;
    *v15 = v54;
    v15[1] = v56;

    swift_unknownObjectRelease();
LABEL_4:
    v2[12] = v68;
    swift_endAccess();
    v9 = v99;
    v12 = v96;
LABEL_5:
    --v13;
    v14 = v100;
    if (!v13)
    {
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  result = sub_2287CBD30();
  __break(1u);
  return result;
}

uint64_t sub_2287BA040(uint64_t a1)
{
  v2 = v1;
  v57 = *v2;
  v62 = sub_2287CAA50();
  v4 = *(v62 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v62);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a1;
  v8 = sub_2287CA1A0();
  v10 = v8 + 56;
  v9 = *(v8 + 56);
  v63 = v8;
  v64 = v2 + 12;
  v11 = 1 << *(v8 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v9;
  result = swift_beginAccess();
  v15 = 0;
  v16 = (v11 + 63) >> 6;
  v61 = (v4 + 8);
  *&v17 = 136315650;
  v56 = v17;
  v58 = v2;
  v55 = v7;
  while (v13)
  {
    v18 = v15;
LABEL_10:
    v19 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v20 = *(*(v63 + 48) + ((v18 << 9) | (8 * v19)));
    v21 = *v64;
    v22 = *(*v64 + 16);
    v23 = v20;
    if (v22)
    {

      v24 = sub_228756C9C(v20);
      if ((v25 & 1) == 0)
      {

        goto LABEL_14;
      }

      v26 = (*(v21 + 56) + 16 * v24);
      v27 = v7;
      v28 = *v26;
      v29 = v26[1];
      swift_unknownObjectRetain();

      ObjectType = swift_getObjectType();
      v31 = *(v29 + 48);
      v32 = v29;
      v7 = v27;
      v31(v54, ObjectType, v32);

      result = swift_unknownObjectRelease();
      v15 = v18;
    }

    else
    {
LABEL_14:
      sub_2287CAA20();
      v33 = v7;
      v34 = v23;

      v35 = sub_2287CAA40();
      v36 = sub_2287CB5F0();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v59 = v36;
        v38 = v37;
        v60 = swift_slowAlloc();
        v65[0] = v60;
        *v38 = v56;
        v65[4] = v57;
        swift_getMetatypeMetadata();
        v39 = sub_2287CB250();
        v40 = v35;
        v42 = sub_2287031D8(v39, v41, v65);

        *(v38 + 4) = v42;
        *(v38 + 12) = 2080;
        v43 = v34;
        v44 = sub_2287C9C50();
        v46 = v45;

        v47 = sub_2287031D8(v44, v46, v65);

        *(v38 + 14) = v47;
        *(v38 + 22) = 2080;
        v48 = *v64;
        sub_2287BC8BC();
        sub_22872C350();

        v49 = sub_2287CB150();
        v51 = v50;

        v52 = sub_2287031D8(v49, v51, v65);

        *(v38 + 24) = v52;
        _os_log_impl(&dword_2286FF000, v40, v59, "[%s]: Population manager missing for sourceProfile %s: populationManagers %s", v38, 0x20u);
        v53 = v60;
        swift_arrayDestroy();
        MEMORY[0x22AABFD90](v53, -1, -1);
        MEMORY[0x22AABFD90](v38, -1, -1);

        v7 = v55;
        result = (*v61)(v55, v62);
        v15 = v18;
      }

      else
      {

        result = (*v61)(v33, v62);
        v15 = v18;
        v7 = v33;
      }
    }
  }

  while (1)
  {
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v18 >= v16)
    {
    }

    v13 = *(v10 + 8 * v18);
    ++v15;
    if (v13)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2287BA4B0(uint64_t a1)
{
  if (a1)
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    [v3 setProfileIdentifier_];
    [v3 resume];
    sub_2287010E4(v1 + 16, &v16);
    v4 = type metadata accessor for ProfileDashboardFeedPopulationManager();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    v7 = swift_allocObject();
    v8 = OBJC_IVAR____TtC18HealthPlatformCore37ProfileDashboardFeedPopulationManager____lazy_storage___pertinentChangeDomain;
    v9 = sub_2287CA1F0();
    (*(*(v9 - 8) + 56))(v7 + v8, 1, 1, v9);
    sub_2287010E4(&v16, v15);
    type metadata accessor for ProfileDashboardRelevanceEngineCoordinator();
    swift_allocObject();
    v10 = v3;
    v11 = sub_2287542EC(v15, v10, 0, 0);

    sub_2287010E4(&v16, v15);
    v12 = sub_22871DC94(v15, v10, v11, v7);
    __swift_destroy_boxed_opaque_existential_0(&v16);
    return v12;
  }

  else
  {
    sub_2287CBA20();
    MEMORY[0x22AABE980](0xD000000000000040, 0x80000002287D3680);
    v14 = sub_2287C9C50();
    MEMORY[0x22AABE980](v14);

    result = sub_2287CBB90();
    __break(1u);
  }

  return result;
}

uint64_t *ProfileDashboardsFeedPopulationListener.deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  v3 = v0[10];
  sub_228714BC0(v0[9]);
  v4 = v0[11];

  v5 = v0[12];

  return v0;
}

uint64_t ProfileDashboardsFeedPopulationListener.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  v3 = v0[10];
  sub_228714BC0(v0[9]);
  v4 = v0[11];

  v5 = v0[12];

  return swift_deallocClassInstance();
}

uint64_t sub_2287BA768()
{
  v1 = *(*v0 + 64);
  *(*v0 + 64) = 0;
}

uint64_t sub_2287BA778(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2287BCABC();
  result = sub_2287CBBD0();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      v25 = *(v8 + 40);
      result = sub_2287CB7E0();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_2287BAA24(uint64_t a1, int a2, unint64_t *a3, uint64_t (*a4)(uint64_t), unint64_t *a5)
{
  v9 = v5;
  sub_2287BCC7C(0, a3, a4, type metadata accessor for GeneratorPipelineManagerWrapper);
  v58 = *(v12 - 8);
  v13 = *(v58 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v64 = &v53 - v14;
  v15 = sub_2287C9810();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v60 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v9;
  if (*(*v9 + 24) > a1)
  {
    v20 = *(*v9 + 24);
  }

  v65 = a3;
  v66 = a4;
  v21 = a4;
  v22 = v19;
  sub_2287BCCE0(0, a5, a3, v21);
  v59 = a2;
  result = sub_2287CBBD0();
  v24 = result;
  if (*(v22 + 16))
  {
    v63 = v15;
    v54 = v9;
    v25 = 0;
    v26 = (v22 + 64);
    v27 = 1 << *(v22 + 32);
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v29 = v28 & *(v22 + 64);
    v30 = v16;
    v31 = (v27 + 63) >> 6;
    v55 = (v30 + 16);
    v56 = v30;
    v61 = (v30 + 32);
    v32 = result + 64;
    v57 = v22;
    v33 = v60;
    while (v29)
    {
      v35 = __clz(__rbit64(v29));
      v29 &= v29 - 1;
LABEL_17:
      v38 = v35 | (v25 << 6);
      v39 = *(v22 + 48);
      v62 = *(v30 + 72);
      v40 = v39 + v62 * v38;
      if (v59)
      {
        (*v61)(v33, v40, v63);
        v41 = *(v22 + 56);
        v42 = *(v58 + 72);
        sub_2287BCE30(v41 + v42 * v38, v64, v65, v66);
      }

      else
      {
        (*v55)(v33, v40, v63);
        v43 = *(v22 + 56);
        v42 = *(v58 + 72);
        sub_2287BCDB0(v43 + v42 * v38, v64, v65, v66);
      }

      v44 = *(v24 + 40);
      sub_2287BC758(&qword_280DE3970, MEMORY[0x277CC95F0]);
      result = sub_2287CB1B0();
      v45 = -1 << *(v24 + 32);
      v46 = result & ~v45;
      v47 = v46 >> 6;
      if (((-1 << v46) & ~*(v32 + 8 * (v46 >> 6))) == 0)
      {
        v48 = 0;
        v49 = (63 - v45) >> 6;
        v33 = v60;
        while (++v47 != v49 || (v48 & 1) == 0)
        {
          v50 = v47 == v49;
          if (v47 == v49)
          {
            v47 = 0;
          }

          v48 |= v50;
          v51 = *(v32 + 8 * v47);
          if (v51 != -1)
          {
            v34 = __clz(__rbit64(~v51)) + (v47 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v34 = __clz(__rbit64((-1 << v46) & ~*(v32 + 8 * (v46 >> 6)))) | v46 & 0x7FFFFFFFFFFFFFC0;
      v33 = v60;
LABEL_9:
      *(v32 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
      (*v61)((*(v24 + 48) + v62 * v34), v33, v63);
      result = sub_2287BCE30(v64, *(v24 + 56) + v42 * v34, v65, v66);
      ++*(v24 + 16);
      v30 = v56;
      v22 = v57;
    }

    v36 = v25;
    while (1)
    {
      v25 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v25 >= v31)
      {
        break;
      }

      v37 = v26[v25];
      ++v36;
      if (v37)
      {
        v35 = __clz(__rbit64(v37));
        v29 = (v37 - 1) & v37;
        goto LABEL_17;
      }
    }

    if ((v59 & 1) == 0)
    {

      v9 = v54;
      goto LABEL_36;
    }

    v52 = 1 << *(v22 + 32);
    v9 = v54;
    if (v52 >= 64)
    {
      bzero(v26, ((v52 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v26 = -1 << v52;
    }

    *(v22 + 16) = 0;
  }

LABEL_36:
  *v9 = v24;
  return result;
}

uint64_t sub_2287BAECC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_22877F07C();
  v39 = a2;
  result = sub_2287CBBD0();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_2287CBD80();
      sub_2287CB290();
      result = sub_2287CBDB0();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2287BB164(uint64_t a1, int a2)
{
  v3 = v2;
  sub_228771868();
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2287C9810();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  sub_2287BCBD0();
  v48 = a2;
  result = sub_2287CBBD0();
  v16 = result;
  if (*(v13 + 16))
  {
    v43 = v3;
    v17 = 0;
    v18 = (v13 + 64);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 64);
    v22 = (v19 + 63) >> 6;
    v44 = (v10 + 16);
    v45 = v10;
    v49 = (v10 + 32);
    v23 = result + 64;
    v46 = v13;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = v25 | (v17 << 6);
      v29 = *(v13 + 48);
      v50 = *(v10 + 72);
      v30 = v29 + v50 * v28;
      if (v48)
      {
        (*v49)(v51, v30, v9);
        v31 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_2287720CC(v31 + v32 * v28, v52);
      }

      else
      {
        (*v44)(v51, v30, v9);
        v33 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_2287720B4(v33 + v32 * v28, v52);
      }

      v34 = *(v16 + 40);
      sub_2287BC758(&qword_280DE3970, MEMORY[0x277CC95F0]);
      result = sub_2287CB1B0();
      v35 = -1 << *(v16 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v23 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v49)((*(v16 + 48) + v50 * v24), v51, v9);
      result = sub_2287720CC(v52, *(v16 + 56) + v32 * v24);
      ++*(v16 + 16);
      v10 = v45;
      v13 = v46;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v18, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_2287BB5E4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2287BC91C();
  result = sub_2287CBBD0();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v33 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {
        v22 = v21;
        swift_unknownObjectRetain();
      }

      v23 = *(v8 + 40);
      sub_2287CBD80();
      sub_2287C9C90();
      result = sub_2287CBDB0();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v33;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

id sub_2287BB86C()
{
  v1 = v0;
  sub_2287BCABC();
  v2 = *v0;
  v3 = sub_2287CBBC0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_2287BBA10(unint64_t *a1, uint64_t (*a2)(uint64_t), unint64_t *a3)
{
  v7 = v3;
  sub_2287BCC7C(0, a1, a2, type metadata accessor for GeneratorPipelineManagerWrapper);
  v49 = *(v8 - 8);
  v9 = *(v49 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v48 = &v39 - v10;
  v47 = sub_2287C9810();
  v53 = *(v47 - 8);
  v11 = *(v53 + 64);
  MEMORY[0x28223BE20](v47);
  v46 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a1;
  v51 = a2;
  sub_2287BCCE0(0, a3, a1, a2);
  v13 = *v3;
  v14 = sub_2287CBBC0();
  v15 = v14;
  if (*(v13 + 16))
  {
    result = (v14 + 64);
    v17 = (v13 + 64);
    v18 = ((1 << *(v15 + 32)) + 63) >> 6;
    v40 = v3;
    v41 = v13 + 64;
    if (v15 != v13 || result >= &v17[8 * v18])
    {
      result = memmove(result, v17, 8 * v18);
    }

    v19 = 0;
    v20 = *(v13 + 16);
    v52 = v15;
    *(v15 + 16) = v20;
    v21 = 1 << *(v13 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(v13 + 64);
    v24 = (v21 + 63) >> 6;
    v42 = v53 + 32;
    v43 = v53 + 16;
    v44 = v24;
    v45 = v13;
    v25 = v47;
    v26 = v50;
    v27 = v51;
    if (v23)
    {
      do
      {
        v28 = __clz(__rbit64(v23));
        v54 = (v23 - 1) & v23;
LABEL_14:
        v31 = v28 | (v19 << 6);
        v32 = v53;
        v33 = *(v53 + 72) * v31;
        v34 = v46;
        (*(v53 + 16))(v46, *(v13 + 48) + v33, v25);
        v35 = v48;
        v36 = *(v49 + 72) * v31;
        sub_2287BCDB0(*(v13 + 56) + v36, v48, v26, v27);
        v37 = v52;
        (*(v32 + 32))(*(v52 + 48) + v33, v34, v25);
        v38 = *(v37 + 56);
        v13 = v45;
        result = sub_2287BCE30(v35, v38 + v36, v26, v27);
        v24 = v44;
        v23 = v54;
      }

      while (v54);
    }

    v29 = v19;
    while (1)
    {
      v19 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v19 >= v24)
      {

        v7 = v40;
        v15 = v52;
        goto LABEL_18;
      }

      v30 = *(v41 + 8 * v19);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v54 = (v30 - 1) & v30;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v7 = v15;
  }

  return result;
}

id sub_2287BBD5C()
{
  v1 = v0;
  sub_22877F07C();
  v2 = *v0;
  v3 = sub_2287CBBC0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_2287BBEBC()
{
  v1 = v0;
  sub_228771868();
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_2287C9810();
  v39 = *(v36 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287BCBD0();
  v7 = *v0;
  v8 = sub_2287CBBC0();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v40 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    v19 = v35;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v41 = (v17 - 1) & v17;
LABEL_14:
        v23 = v20 | (v13 << 6);
        v24 = v39;
        v25 = *(v39 + 72) * v23;
        v26 = v36;
        (*(v39 + 16))(v19, *(v7 + 48) + v25, v36);
        v27 = v37;
        v28 = *(v38 + 72) * v23;
        sub_2287720B4(*(v7 + 56) + v28, v37);
        v29 = v40;
        (*(v24 + 32))(*(v40 + 48) + v25, v19, v26);
        result = sub_2287720CC(v27, *(v29 + 56) + v28);
        v17 = v41;
      }

      while (v41);
    }

    v21 = v13;
    v9 = v40;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v31;
        goto LABEL_18;
      }

      v22 = *(v32 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v41 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_2287BC1DC()
{
  v1 = v0;
  sub_2287BC91C();
  v2 = *v0;
  v3 = sub_2287CBBC0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 16 * v17) = v19;
        v20 = v18;
        result = swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_2287BC348(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v42 = a2;
  v39 = *v5;
  v40 = a1;
  sub_2287693F0();
  v12 = *(v11 - 8);
  v43 = v11;
  v44 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v41 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FeedPopulationListenerSchedulerConfiguration();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = sub_2287C9AC0();
  *(v5 + 7) = 0u;
  *(v5 + 9) = 0u;
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v23 = sub_2287C9AB0();
  v24 = MEMORY[0x277D84F98];
  v5[11] = v23;
  v5[12] = v24;
  sub_2287010E4(a2, (v5 + 2));
  (*(v16 + 16))(v19, a3, v15);
  v25 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v26 = (v17 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 16) = a4;
  *(v27 + 24) = a5;
  (*(v16 + 32))(v27 + v25, v19, v15);
  *(v27 + v26) = v6;
  v28 = v39;
  *(v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8)) = v39;
  v29 = v6[9];
  v30 = v6[10];
  v6[9] = sub_2287BC988;
  v6[10] = v27;

  sub_228714BC0(v29);
  v45 = v40;
  sub_2287BCB58(0, &qword_280DE1AE0, &qword_280DE1A28, MEMORY[0x277D11E90], MEMORY[0x277CBCD88]);
  sub_22873E054(0, &qword_280DE1A28);
  sub_22873A408();
  v31 = v41;
  sub_2287CAF70();
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v32;
  *(v33 + 24) = v28;
  sub_2287BC758(&qword_280DE05F0, sub_2287693F0);
  v34 = v43;
  v35 = sub_2287CB050();

  __swift_destroy_boxed_opaque_existential_0(v42);
  (*(v44 + 8))(v31, v34);
  v36 = v6[7];
  v6[7] = v35;

  return v6;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2287BC758(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2287BC8BC()
{
  result = qword_280DE1038[0];
  if (!qword_280DE1038[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_280DE1038);
  }

  return result;
}

void sub_2287BC91C()
{
  if (!qword_280DDFE60)
  {
    sub_2287BC8BC();
    sub_22872C350();
    v0 = sub_2287CBC00();
    if (!v1)
    {
      atomic_store(v0, &qword_280DDFE60);
    }
  }
}

uint64_t sub_2287BC988()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for FeedPopulationListenerSchedulerConfiguration() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v5);
  v7 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_2287B8664(v0 + v4, v6, v7, v1, v2);
}

void sub_2287BCA54()
{
  if (!qword_280DE0278)
  {
    sub_2287CA1F0();
    v0 = sub_2287CACD0();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE0278);
    }
  }
}

void sub_2287BCABC()
{
  if (!qword_280DE18A8)
  {
    sub_228703004(255, &qword_280DE3870, 0x277CCD7C8);
    sub_228703004(255, &qword_280DE1990, 0x277CCD4D8);
    sub_2287AB250();
    v0 = sub_2287CBC00();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE18A8);
    }
  }
}

void sub_2287BCB58(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_22873E054(255, a3);
    v9 = a5(a1, v8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2287BCBD0()
{
  if (!qword_280DE18D0)
  {
    sub_2287C9810();
    sub_228771868();
    sub_2287BC758(&qword_280DE3970, MEMORY[0x277CC95F0]);
    v0 = sub_2287CBC00();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE18D0);
    }
  }
}

void sub_2287BCC7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2287BCCE0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_2287C9810();
    sub_2287BCC7C(255, a3, a4, type metadata accessor for GeneratorPipelineManagerWrapper);
    sub_2287BC758(&qword_280DE3970, MEMORY[0x277CC95F0]);
    v7 = sub_2287CBC00();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2287BCDB0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2287BCC7C(0, a3, a4, type metadata accessor for GeneratorPipelineManagerWrapper);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2287BCE30(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2287BCC7C(0, a3, a4, type metadata accessor for GeneratorPipelineManagerWrapper);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_2287BCEB0(uint64_t a1)
{
  v29 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_2287CB920();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v35 = MEMORY[0x277D84F90];
    sub_228713500(0, v2 & ~(v2 >> 63), 0);
    v30 = v35;
    if (v29)
    {
      v3 = sub_2287CB8C0();
    }

    else
    {
      v5 = -1 << *(a1 + 32);
      v3 = sub_2287CB890();
      v4 = *(a1 + 36);
    }

    v32 = v3;
    v33 = v4;
    v34 = v29 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v28 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v9 = v32;
        v10 = v33;
        v11 = v34;
        sub_2287C0020(v32, v33, v34, a1, sub_22871BB78);
        v13 = v12;
        v14 = [v12 code];

        v15 = v30;
        v35 = v30;
        v17 = *(v30 + 16);
        v16 = *(v30 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_228713500((v16 > 1), v17 + 1, 1);
          v15 = v35;
        }

        *(v15 + 16) = v17 + 1;
        *(v15 + 8 * v17 + 32) = v14;
        v30 = v15;
        if (v29)
        {
          if (!v11)
          {
            goto LABEL_40;
          }

          if (sub_2287CB8E0())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v28;
          sub_22871BAE4();
          v7 = sub_2287CB4A0();
          sub_2287CB980();
          v7(v31, 0);
          if (v6 == v28)
          {
LABEL_32:
            sub_228717DF8(v32, v33, v34);
            return;
          }
        }

        else
        {
          if (v11)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v18 = 1 << *(a1 + 32);
          if (v9 >= v18)
          {
            goto LABEL_36;
          }

          v19 = v9 >> 6;
          v20 = *(a1 + 56 + 8 * (v9 >> 6));
          if (((v20 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(a1 + 36) != v10)
          {
            goto LABEL_38;
          }

          v21 = v20 & (-2 << (v9 & 0x3F));
          if (v21)
          {
            v18 = __clz(__rbit64(v21)) | v9 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v22 = v19 << 6;
            v23 = v19 + 1;
            v24 = (a1 + 64 + 8 * v19);
            while (v23 < (v18 + 63) >> 6)
            {
              v26 = *v24++;
              v25 = v26;
              v22 += 64;
              ++v23;
              if (v26)
              {
                sub_228717DF8(v9, v10, 0);
                v18 = __clz(__rbit64(v25)) + v22;
                goto LABEL_31;
              }
            }

            sub_228717DF8(v9, v10, 0);
          }

LABEL_31:
          v27 = *(a1 + 36);
          v32 = v18;
          v33 = v27;
          v34 = 0;
          v2 = v28;
          if (v6 == v28)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

HealthPlatformCore::AppSessionAnalyticsEvent::DemographicAnalytics __swiftcall AppSessionAnalyticsEvent.DemographicAnalytics.init()()
{
  v1 = v0;
  result.hasPairedWatch.super.super.isa = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v1->hasPairedWatch.super.super.isa = result.hasPairedWatch.super.super.isa;
  return result;
}

HealthPlatformCore::AppSessionAnalyticsEvent::ImproveHealthAnalytics __swiftcall AppSessionAnalyticsEvent.ImproveHealthAnalytics.init()()
{
  v1 = v0;
  result.isImproveHealthAndActivityAllowed.super.super.isa = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v1->isImproveHealthAndActivityAllowed.super.super.isa = result.isImproveHealthAndActivityAllowed.super.super.isa;
  return result;
}

uint64_t sub_2287BD2DC(uint64_t a1, void (*a2)(uint64_t))
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  a2(a1);
  return v7;
}

void AppSessionAnalyticsEvent.HighlightsFeedPresentationAnalytics.init(ageOfFeed:feedItemsGeneratedTypes:feedItemsShownTypes:feedType:minutesElapsed:spinnerDisplayed:)(char a1@<W1>, unint64_t a2@<X2>, unint64_t a3@<X3>, char a4@<W6>, char a5@<W7>, void *a6@<X8>)
{
  v8 = 0x277CCA000uLL;
  v9 = &unk_278607000;
  if (a1)
  {
    v40 = 0;
    if ((a4 & 1) == 0)
    {
LABEL_3:
      sub_22877E7CC();
      v10 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v11 = v10;
      goto LABEL_6;
    }
  }

  else
  {
    sub_22877E7CC();
    v40 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v12 = v40;
    if ((a4 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_6:
  if (a2 >> 62)
  {
    v13 = sub_2287CB920();
  }

  else
  {
    v13 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_22877E7CC();
  v38 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v39 = v10;
  if (v13)
  {
    v44 = MEMORY[0x277D84F90];
    sub_2287042D4(0, v13 & ~(v13 >> 63), 0);
    if (v13 < 0)
    {
      __break(1u);
      goto LABEL_37;
    }

    v14 = 0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x22AABF120](v14, a2);
      }

      else
      {
        v15 = *(a2 + 8 * v14 + 32);
      }

      v16 = (*(*v15 + 120))();
      v18 = v17;

      v20 = *(v44 + 16);
      v19 = *(v44 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_2287042D4((v19 > 1), v20 + 1, 1);
      }

      ++v14;
      *(v44 + 16) = v20 + 1;
      v21 = v44 + 16 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v18;
    }

    while (v13 != v14);

    v8 = 0x277CCA000;
    v9 = &unk_278607000;
  }

  else
  {
  }

  v22 = sub_2287CA870();

  if (a3 >> 62)
  {
    v23 = sub_2287CB920();
  }

  else
  {
    v23 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v23 >= 9)
  {
    v24 = 9;
  }

  else
  {
    v24 = v23;
  }

  v37 = [objc_allocWithZone(*(v8 + 2992)) v9[113]];
  if (!v23)
  {
LABEL_33:

    v34 = sub_2287CA870();

    _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
    v35 = sub_2287CB210();

    v36 = [objc_allocWithZone(*(v8 + 2992)) initWithBool_];

    *a6 = v40;
    a6[1] = v38;
    a6[2] = v22;
    a6[3] = v37;
    a6[4] = v34;
    a6[5] = v35;
    a6[6] = v39;
    a6[7] = v36;
    return;
  }

  v45 = MEMORY[0x277D84F90];
  sub_2287042D4(0, v23 & ~(v23 >> 63), 0);
  if ((v23 & 0x8000000000000000) == 0)
  {
    v25 = 0;
    v26 = a3;
    do
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x22AABF120](v25, v26);
      }

      else
      {
        v27 = *(v26 + 8 * v25 + 32);
      }

      v28 = sub_2287BF470();
      v30 = v29;

      v32 = *(v45 + 16);
      v31 = *(v45 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_2287042D4((v31 > 1), v32 + 1, 1);
      }

      ++v25;
      *(v45 + 16) = v32 + 1;
      v33 = v45 + 16 * v32;
      *(v33 + 32) = v28;
      *(v33 + 40) = v30;
      v26 = a3;
    }

    while (v23 != v25);
    goto LABEL_33;
  }

LABEL_37:
  __break(1u);
}

void AppSessionAnalyticsEvent.ModelAnalytics.init(relevanceEngineMetrics:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *MEMORY[0x277D444D8];
  v5 = sub_2287CB220();
  if (*(a1 + 16))
  {
    v7 = sub_22870304C(v5, v6);
    v9 = v8;

    if (v9)
    {
      v10 = *(*(a1 + 56) + 8 * v7);
      v11 = v10;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v10 = 0;
LABEL_6:
  sub_2287BFF9C();
  v12 = sub_2287CA840();

  v13 = *MEMORY[0x277D444E8];
  v14 = sub_2287CB220();
  if (*(a1 + 16))
  {
    v16 = sub_22870304C(v14, v15);
    v18 = v17;

    if (v18)
    {
      v19 = *(*(a1 + 56) + 8 * v16);
      v20 = v19;
      goto LABEL_11;
    }
  }

  else
  {
  }

  v19 = 0;
LABEL_11:
  v21 = sub_2287CA840();

  v22 = *MEMORY[0x277D444D0];
  v23 = sub_2287CB220();
  if (*(a1 + 16))
  {
    v25 = sub_22870304C(v23, v24);
    v27 = v26;

    if (v27)
    {
      v28 = *(*(a1 + 56) + 8 * v25);
      v29 = v28;
      goto LABEL_16;
    }
  }

  else
  {
  }

  v28 = 0;
LABEL_16:
  v30 = sub_2287CA840();

  v31 = *MEMORY[0x277D444E0];
  v32 = sub_2287CB220();
  if (*(a1 + 16))
  {
    v34 = sub_22870304C(v32, v33);
    v36 = v35;

    if (v36)
    {
      v37 = *(*(a1 + 56) + 8 * v34);
      v38 = v37;
      goto LABEL_21;
    }
  }

  else
  {
  }

  v37 = 0;
LABEL_21:
  v39 = sub_2287CA840();

  v40 = *MEMORY[0x277D444F0];
  v41 = sub_2287CB220();
  if (!*(a1 + 16))
  {

    goto LABEL_25;
  }

  v43 = sub_22870304C(v41, v42);
  v45 = v44;

  if ((v45 & 1) == 0)
  {
LABEL_25:

    v46 = 0;
    goto LABEL_26;
  }

  v46 = *(*(a1 + 56) + 8 * v43);
  v47 = v46;

LABEL_26:
  v48 = sub_2287CA840();

  *a2 = v12;
  a2[1] = v21;
  a2[2] = v30;
  a2[3] = v39;
  a2[4] = v48;
}

uint64_t AppSessionAnalyticsEvent.HighlightsFeedInteractionAnalytics.InteractedFeedItem.__allocating_init(feedItem:modelTrainingEvent:)(void *a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  sub_228798D5C(a2, v7 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent34HighlightsFeedInteractionAnalytics18InteractedFeedItem_modelTrainingEvent);
  v8 = [a1 sectionSortOrder];
  *(v7 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent34HighlightsFeedInteractionAnalytics18InteractedFeedItem_rank) = v8;
  AppSessionAnalyticsEvent.HighlightsFeedPresentationAnalytics.GeneratedFeedItem.init(feedItem:)(a1);
  sub_2287C04B0(a2, type metadata accessor for ModelTrainingEvent);
  return v7;
}

uint64_t AppSessionAnalyticsEvent.HighlightsFeedInteractionAnalytics.init(averageProbabilityOfPositiveInteractionForThisSession:interactedFeedItems:)@<X0>(unint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  sub_2287C0308();
  v4 = sub_2287CA850();
  v5 = a1;
  v6 = v4;
  if (!(v5 >> 62))
  {
    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_22:

LABEL_23:
    v27 = sub_2287CA870();

    *a2 = v6;
    a2[1] = v27;
    return result;
  }

  v25 = v5;
  v26 = sub_2287CB920();
  v5 = v25;
  v7 = v26;
  if (!v26)
  {
    goto LABEL_22;
  }

LABEL_3:
  v8 = v5;
  v33 = MEMORY[0x277D84F90];
  result = sub_2287042D4(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v28 = v6;
    v10 = 0;
    v11 = v8;
    v29 = a2;
    v12 = v7;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x22AABF120](v10, v11);
      }

      else
      {
        v13 = *(v11 + 8 * v10 + 32);
      }

      sub_2287BE6B0();
      v30 = *(v13 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent34HighlightsFeedInteractionAnalytics18InteractedFeedItem_rank);
      v14 = sub_2287CBCC0();
      MEMORY[0x22AABE980](v14);

      MEMORY[0x22AABE980](8236, 0xE200000000000000);
      v15 = v13 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent34HighlightsFeedInteractionAnalytics18InteractedFeedItem_modelTrainingEvent;
      v16 = type metadata accessor for ModelTrainingEvent();
      v17 = *(v16 + 20);
      if (*(v15 + *(v16 + 24)))
      {
        v18 = 0x6576697469736F70;
      }

      else
      {
        v18 = 0x657669746167656ELL;
      }

      if (*(v15 + v17))
      {
        v19 = 0x6C6C657764;
      }

      else
      {
        v19 = 7364980;
      }

      if (*(v15 + v17))
      {
        v20 = 0xE500000000000000;
      }

      else
      {
        v20 = 0xE300000000000000;
      }

      MEMORY[0x22AABE980](v19, v20);

      MEMORY[0x22AABE980](95, 0xE100000000000000);
      MEMORY[0x22AABE980](v18, 0xE800000000000000);

      MEMORY[0x22AABE980](0, 0xE000000000000000);

      v31 = sub_2287CB2E0();
      v32 = v21;
      sub_2287CB2A0();

      v23 = *(v33 + 16);
      v22 = *(v33 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_2287042D4((v22 > 1), v23 + 1, 1);
      }

      ++v10;
      *(v33 + 16) = v23 + 1;
      v24 = v33 + 16 * v23;
      *(v24 + 32) = v31;
      *(v24 + 40) = v32;
      v11 = v8;
    }

    while (v12 != v10);

    a2 = v29;
    v6 = v28;
    goto LABEL_23;
  }

  __break(1u);
  return result;
}

id AppSessionAnalyticsEvent.ModelAnalytics.averageModelPrediction.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *AppSessionAnalyticsEvent.ModelAnalytics.averageModelEntropy.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void *AppSessionAnalyticsEvent.ModelAnalytics.cumulativeAverageProbabilityOfPositiveInteraction.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void *AppSessionAnalyticsEvent.ModelAnalytics.modelTotalTrainingEvents.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void *AppSessionAnalyticsEvent.ModelAnalytics.normalizedAverageModelEntropy.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t AppSessionAnalyticsEvent.ModelAnalytics.init(averageModelPrediction:averageModelEntropy:cumulativeAverageProbabilityOfPositiveInteraction:modelTotalTrainingEvents:normalizedAverageModelEntropy:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

id AppSessionAnalyticsEvent.HighlightsFeedPresentationAnalytics.ageOfFeed.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *AppSessionAnalyticsEvent.HighlightsFeedPresentationAnalytics.minutesElapsed.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

uint64_t AppSessionAnalyticsEvent.HighlightsFeedPresentationAnalytics.init(ageOfFeed:feedItemsGeneratedCount:feedItemsGeneratedTypes:feedItemsShownCount:feedItemsShownTypes:feedType:minutesElapsed:spinnerDisplayed:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t AppSessionAnalyticsEvent.HighlightsFeedPresentationAnalytics.GeneratedFeedItem.__allocating_init(dataTypes:dataVisualizationKind:timeScope:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  sub_2287C03C8(a2, v9 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics17GeneratedFeedItem_dataVisualizationKind, &qword_280DE3398, MEMORY[0x277D12080]);
  sub_2287C03C8(a3, v9 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics17GeneratedFeedItem_timeScope, &qword_280DE3400, MEMORY[0x277D11F48]);
  return v9;
}

uint64_t AppSessionAnalyticsEvent.HighlightsFeedPresentationAnalytics.GeneratedFeedItem.init(dataTypes:dataVisualizationKind:timeScope:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  sub_2287C03C8(a2, v3 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics17GeneratedFeedItem_dataVisualizationKind, &qword_280DE3398, MEMORY[0x277D12080]);
  sub_2287C03C8(a3, v3 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics17GeneratedFeedItem_timeScope, &qword_280DE3400, MEMORY[0x277D11F48]);
  return v3;
}

uint64_t AppSessionAnalyticsEvent.HighlightsFeedPresentationAnalytics.GeneratedFeedItem.init(feedItem:)(void *a1)
{
  v2 = v1;
  sub_2287C0510(0, &qword_280DE33D8, MEMORY[0x277D11FF8]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v32[-v6];
  sub_2287C0510(0, &qword_280DE3400, MEMORY[0x277D11F48]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v32[-v10];
  sub_2287C0510(0, &qword_280DE3370, MEMORY[0x277D12198]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v32[-v14];
  sub_2287C0510(0, &qword_280DE3398, MEMORY[0x277D12080]);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v32[-v18];
  v20 = sub_2287CA750();
  sub_2287BCEB0(v20);
  v22 = v21;

  *(v1 + 16) = v22;
  v23 = sub_2287CA500();
  sub_2287CA700();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v15, 1, v23) == 1)
  {
    sub_2287C0454(v15, &qword_280DE3370, MEMORY[0x277D12198]);
    v25 = 1;
  }

  else
  {
    sub_2287CA4F0();
    (*(v24 + 8))(v15, v23);
    v25 = 0;
  }

  v26 = sub_2287CA2E0();
  (*(*(v26 - 8) + 56))(v19, v25, 1, v26);
  sub_2287C03C8(v19, v2 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics17GeneratedFeedItem_dataVisualizationKind, &qword_280DE3398, MEMORY[0x277D12080]);
  v27 = sub_2287CA140();
  sub_2287CA700();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v7, 1, v27) == 1)
  {

    sub_2287C0454(v7, &qword_280DE33D8, MEMORY[0x277D11FF8]);
    v29 = 1;
  }

  else
  {
    sub_2287CA130();

    (*(v28 + 8))(v7, v27);
    v29 = 0;
  }

  v30 = sub_2287C9F50();
  (*(*(v30 - 8) + 56))(v11, v29, 1, v30);
  sub_2287C03C8(v11, v2 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics17GeneratedFeedItem_timeScope, &qword_280DE3400, MEMORY[0x277D11F48]);
  return v2;
}

uint64_t sub_2287BE6B0()
{
  v1 = v0;
  v2 = *v0;
  sub_2287C0510(0, &qword_280DE3400, MEMORY[0x277D11F48]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v37 - v5;
  sub_2287C0510(0, &qword_280DE3398, MEMORY[0x277D12080]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v37 - v9;
  v39 = 0;
  v40 = 0xE000000000000000;
  v11 = v0[2];
  v12 = *(v11 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    *&v37 = MEMORY[0x277D84F90];
    sub_2287132AC(0, v12, 0);
    v13 = v37;
    v14 = (v11 + 32);
    v15 = *(v37 + 16);
    do
    {
      v17 = *v14++;
      v16 = v17;
      *&v37 = v13;
      v18 = *(v13 + 24);
      if (v15 >= v18 >> 1)
      {
        sub_2287132AC((v18 > 1), v15 + 1, 1);
        v13 = v37;
      }

      *(v13 + 16) = v15 + 1;
      *(v13 + 8 * v15++ + 32) = v16;
      --v12;
    }

    while (v12);
  }

  v19 = MEMORY[0x22AABEA80](v13, MEMORY[0x277D83B88]);
  v21 = v20;

  MEMORY[0x22AABE980](v19, v21);

  MEMORY[0x22AABE980](8236, 0xE200000000000000);
  sub_2287C035C(v1 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics17GeneratedFeedItem_dataVisualizationKind, v10, &qword_280DE3398, MEMORY[0x277D12080]);
  v22 = sub_2287CA2E0();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v10, 1, v22) == 1)
  {
    sub_2287C0454(v10, &qword_280DE3398, MEMORY[0x277D12080]);
    v37 = 0u;
    v38 = 0u;
  }

  else
  {
    v24 = sub_2287CA2D0();
    *(&v38 + 1) = MEMORY[0x277D837D0];
    *&v37 = v24;
    *(&v37 + 1) = v25;
    (*(v23 + 8))(v10, v22);
  }

  sub_2287C0564(qword_280DE2B80, type metadata accessor for AppSessionAnalyticsEvent.HighlightsFeedPresentationAnalytics.GeneratedFeedItem);
  v26 = sub_2287CA860();
  v28 = v27;
  sub_2287C04B0(&v37, sub_2287108F0);
  MEMORY[0x22AABE980](v26, v28);

  MEMORY[0x22AABE980](8236, 0xE200000000000000);
  sub_2287C035C(v1 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics17GeneratedFeedItem_timeScope, v6, &qword_280DE3400, MEMORY[0x277D11F48]);
  v29 = sub_2287C9F50();
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v6, 1, v29) == 1)
  {
    sub_2287C0454(v6, &qword_280DE3400, MEMORY[0x277D11F48]);
    v37 = 0u;
    v38 = 0u;
  }

  else
  {
    v31 = sub_2287C9F40();
    *(&v38 + 1) = MEMORY[0x277D837D0];
    *&v37 = v31;
    *(&v37 + 1) = v32;
    (*(v30 + 8))(v6, v29);
  }

  v33 = sub_2287CA860();
  v35 = v34;
  sub_2287C04B0(&v37, sub_2287108F0);
  MEMORY[0x22AABE980](v33, v35);

  return v39;
}

uint64_t AppSessionAnalyticsEvent.HighlightsFeedPresentationAnalytics.GeneratedFeedItem.deinit()
{
  v1 = *(v0 + 16);

  sub_2287C0454(v0 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics17GeneratedFeedItem_dataVisualizationKind, &qword_280DE3398, MEMORY[0x277D12080]);
  sub_2287C0454(v0 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics17GeneratedFeedItem_timeScope, &qword_280DE3400, MEMORY[0x277D11F48]);
  return v0;
}

uint64_t AppSessionAnalyticsEvent.HighlightsFeedPresentationAnalytics.GeneratedFeedItem.__deallocating_deinit()
{
  v1 = v0[2];

  sub_2287C0454(v0 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics17GeneratedFeedItem_dataVisualizationKind, &qword_280DE3398, MEMORY[0x277D12080]);
  sub_2287C0454(v0 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics17GeneratedFeedItem_timeScope, &qword_280DE3400, MEMORY[0x277D11F48]);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t AppSessionAnalyticsEvent.HighlightsFeedPresentationAnalytics.ShownFeedItem.magnitude.getter()
{
  result = *(v0 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics13ShownFeedItem_magnitude);
  v2 = *(v0 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics13ShownFeedItem_magnitude + 8);
  return result;
}

uint64_t AppSessionAnalyticsEvent.HighlightsFeedPresentationAnalytics.ShownFeedItem.completeness.getter()
{
  result = *(v0 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics13ShownFeedItem_completeness);
  v2 = *(v0 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics13ShownFeedItem_completeness + 8);
  return result;
}

uint64_t AppSessionAnalyticsEvent.HighlightsFeedPresentationAnalytics.ShownFeedItem.__allocating_init(dataTypes:dataVisualizationKind:timeScope:rank:magnitude:completeness:prominence:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8, uint64_t a9)
{
  v18 = *(v9 + 48);
  v19 = *(v9 + 52);
  v20 = swift_allocObject();
  *(v20 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics13ShownFeedItem_rank) = a4;
  v21 = v20 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics13ShownFeedItem_magnitude;
  *v21 = a5;
  *(v21 + 8) = a6 & 1;
  v22 = v20 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics13ShownFeedItem_completeness;
  *v22 = a7;
  *(v22 + 8) = a8 & 1;
  sub_2287C03C8(a9, v20 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics13ShownFeedItem_prominence, &qword_280DE33E0, MEMORY[0x277D11FA8]);
  *(v20 + 16) = a1;
  sub_2287C03C8(a2, v20 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics17GeneratedFeedItem_dataVisualizationKind, &qword_280DE3398, MEMORY[0x277D12080]);
  sub_2287C03C8(a3, v20 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics17GeneratedFeedItem_timeScope, &qword_280DE3400, MEMORY[0x277D11F48]);
  return v20;
}

uint64_t AppSessionAnalyticsEvent.HighlightsFeedPresentationAnalytics.ShownFeedItem.init(dataTypes:dataVisualizationKind:timeScope:rank:magnitude:completeness:prominence:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8, uint64_t a9)
{
  *(v9 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics13ShownFeedItem_rank) = a4;
  v13 = v9 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics13ShownFeedItem_magnitude;
  *v13 = a5;
  *(v13 + 8) = a6 & 1;
  v14 = v9 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics13ShownFeedItem_completeness;
  *v14 = a7;
  *(v14 + 8) = a8 & 1;
  sub_2287C03C8(a9, v9 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics13ShownFeedItem_prominence, &qword_280DE33E0, MEMORY[0x277D11FA8]);
  *(v9 + 16) = a1;
  sub_2287C03C8(a2, v9 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics17GeneratedFeedItem_dataVisualizationKind, &qword_280DE3398, MEMORY[0x277D12080]);
  sub_2287C03C8(a3, v9 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics17GeneratedFeedItem_timeScope, &qword_280DE3400, MEMORY[0x277D11F48]);
  return v9;
}

uint64_t AppSessionAnalyticsEvent.HighlightsFeedPresentationAnalytics.ShownFeedItem.init(feedItem:)(void *a1)
{
  v2 = v1;
  sub_2287C0510(0, &qword_280DE33D0, MEMORY[0x277D12028]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v38 - v6;
  sub_2287C0510(0, &qword_280DE33E0, MEMORY[0x277D11FA8]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v38 - v10;
  sub_2287C0510(0, &qword_280DE3378, MEMORY[0x277D12160]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v38 - v14;
  sub_2287C0510(0, &qword_280DE3380, MEMORY[0x277D12128]);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v38 - v18;
  v20 = [a1 sectionSortOrder];
  *(v1 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics13ShownFeedItem_rank) = v20;
  v21 = sub_2287CA3E0();
  sub_2287CA700();
  v22 = *(v21 - 8);
  v23 = (*(v22 + 48))(v19, 1, v21);
  if (v23 == 1)
  {
    sub_2287C0454(v19, &qword_280DE3380, MEMORY[0x277D12128]);
    v24 = 0;
  }

  else
  {
    sub_2287CA3D0();
    v24 = v25;
    (*(v22 + 8))(v19, v21);
  }

  v26 = v1 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics13ShownFeedItem_magnitude;
  *v26 = v24;
  *(v26 + 8) = v23 == 1;
  v27 = sub_2287CA4A0();
  sub_2287CA700();
  v28 = *(v27 - 8);
  v29 = (*(v28 + 48))(v15, 1, v27);
  if (v29 == 1)
  {
    sub_2287C0454(v15, &qword_280DE3378, MEMORY[0x277D12160]);
    v30 = 0;
  }

  else
  {
    sub_2287CA490();
    v30 = v31;
    (*(v28 + 8))(v15, v27);
  }

  v32 = v1 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics13ShownFeedItem_completeness;
  *v32 = v30;
  *(v32 + 8) = v29 == 1;
  v33 = sub_2287CA210();
  sub_2287CA700();
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v7, 1, v33) == 1)
  {
    sub_2287C0454(v7, &qword_280DE33D0, MEMORY[0x277D12028]);
    v35 = 1;
  }

  else
  {
    sub_2287CA200();
    (*(v34 + 8))(v7, v33);
    v35 = 0;
  }

  v36 = sub_2287CA050();
  (*(*(v36 - 8) + 56))(v11, v35, 1, v36);
  sub_2287C03C8(v11, v2 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics13ShownFeedItem_prominence, &qword_280DE33E0, MEMORY[0x277D11FA8]);
  AppSessionAnalyticsEvent.HighlightsFeedPresentationAnalytics.GeneratedFeedItem.init(feedItem:)(a1);
  return v2;
}

uint64_t sub_2287BF470()
{
  v1 = *v0;
  sub_2287C0510(0, &qword_280DE33E0, MEMORY[0x277D11FA8]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v28 - v4;
  v6 = sub_2287BE6B0();
  v8 = v7;
  *&v28 = 0;
  *(&v28 + 1) = 0xE000000000000000;
  sub_2287CBA20();

  *&v30 = 8236;
  *(&v30 + 1) = 0xE200000000000000;
  *&v28 = *(v0 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics13ShownFeedItem_rank);
  v9 = sub_2287CBCC0();
  MEMORY[0x22AABE980](v9);

  MEMORY[0x22AABE980](8236, 0xE200000000000000);
  if (*(v0 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics13ShownFeedItem_magnitude + 8))
  {
    v10 = 0;
    *(&v28 + 1) = 0;
    *&v29 = 0;
    v11 = 0;
  }

  else
  {
    v11 = *(v0 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics13ShownFeedItem_magnitude);
    v10 = MEMORY[0x277D839F8];
  }

  *&v28 = v11;
  *(&v29 + 1) = v10;
  sub_2287C0564(&qword_280DE2C80, type metadata accessor for AppSessionAnalyticsEvent.HighlightsFeedPresentationAnalytics.ShownFeedItem);
  v12 = sub_2287CA860();
  v14 = v13;
  sub_2287C04B0(&v28, sub_2287108F0);
  MEMORY[0x22AABE980](v12, v14);

  MEMORY[0x22AABE980](8236, 0xE200000000000000);
  if (*(v0 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics13ShownFeedItem_completeness + 8))
  {
    v15 = 0;
    *(&v28 + 1) = 0;
    *&v29 = 0;
    v16 = 0;
  }

  else
  {
    v16 = *(v0 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics13ShownFeedItem_completeness);
    v15 = MEMORY[0x277D839F8];
  }

  *&v28 = v16;
  *(&v29 + 1) = v15;
  v17 = sub_2287CA860();
  v19 = v18;
  sub_2287C04B0(&v28, sub_2287108F0);
  MEMORY[0x22AABE980](v17, v19);

  MEMORY[0x22AABE980](8236, 0xE200000000000000);
  sub_2287C035C(v0 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics13ShownFeedItem_prominence, v5, &qword_280DE33E0, MEMORY[0x277D11FA8]);
  v20 = sub_2287CA050();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v5, 1, v20) == 1)
  {
    sub_2287C0454(v5, &qword_280DE33E0, MEMORY[0x277D11FA8]);
    v28 = 0u;
    v29 = 0u;
  }

  else
  {
    *(&v29 + 1) = v20;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v28);
    (*(v21 + 32))(boxed_opaque_existential_0, v5, v20);
  }

  v23 = sub_2287CA860();
  v25 = v24;
  sub_2287C04B0(&v28, sub_2287108F0);
  MEMORY[0x22AABE980](v23, v25);

  v28 = v30;
  *&v30 = v6;
  *(&v30 + 1) = v8;
  *&v30 = sub_2287CB2E0();
  *(&v30 + 1) = v26;
  sub_2287CB2A0();

  return v30;
}

uint64_t AppSessionAnalyticsEvent.HighlightsFeedPresentationAnalytics.ShownFeedItem.deinit()
{
  v1 = *(v0 + 16);

  sub_2287C0454(v0 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics17GeneratedFeedItem_dataVisualizationKind, &qword_280DE3398, MEMORY[0x277D12080]);
  sub_2287C0454(v0 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics17GeneratedFeedItem_timeScope, &qword_280DE3400, MEMORY[0x277D11F48]);
  sub_2287C0454(v0 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics13ShownFeedItem_prominence, &qword_280DE33E0, MEMORY[0x277D11FA8]);
  return v0;
}

uint64_t AppSessionAnalyticsEvent.HighlightsFeedPresentationAnalytics.ShownFeedItem.__deallocating_deinit()
{
  v1 = v0[2];

  sub_2287C0454(v0 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics17GeneratedFeedItem_dataVisualizationKind, &qword_280DE3398, MEMORY[0x277D12080]);
  sub_2287C0454(v0 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics17GeneratedFeedItem_timeScope, &qword_280DE3400, MEMORY[0x277D11F48]);
  sub_2287C0454(v0 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics13ShownFeedItem_prominence, &qword_280DE33E0, MEMORY[0x277D11FA8]);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

id AppSessionAnalyticsEvent.HighlightsFeedInteractionAnalytics.averageProbabilityOfPositiveInteractionForThisSession.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t AppSessionAnalyticsEvent.HighlightsFeedInteractionAnalytics.init(averageProbabilityOfPositiveInteractionForThisSession:feedItemsInteractionKind:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t AppSessionAnalyticsEvent.HighlightsFeedInteractionAnalytics.InteractedFeedItem.init(feedItem:modelTrainingEvent:)(void *a1, uint64_t a2)
{
  sub_228798D5C(a2, v2 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent34HighlightsFeedInteractionAnalytics18InteractedFeedItem_modelTrainingEvent);
  v5 = [a1 sectionSortOrder];
  *(v2 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent34HighlightsFeedInteractionAnalytics18InteractedFeedItem_rank) = v5;
  AppSessionAnalyticsEvent.HighlightsFeedPresentationAnalytics.GeneratedFeedItem.init(feedItem:)(a1);
  sub_2287C04B0(a2, type metadata accessor for ModelTrainingEvent);
  return v2;
}

uint64_t sub_2287BFC04()
{
  sub_2287BE6B0();
  v4 = *(v0 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent34HighlightsFeedInteractionAnalytics18InteractedFeedItem_rank);
  v1 = sub_2287CBCC0();
  MEMORY[0x22AABE980](v1);

  MEMORY[0x22AABE980](8236, 0xE200000000000000);
  v2 = sub_2287C022C(v0 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent34HighlightsFeedInteractionAnalytics18InteractedFeedItem_modelTrainingEvent);
  MEMORY[0x22AABE980](v2);

  v5 = sub_2287CB2E0();
  sub_2287CB2A0();

  return v5;
}

uint64_t AppSessionAnalyticsEvent.HighlightsFeedInteractionAnalytics.InteractedFeedItem.deinit()
{
  v1 = *(v0 + 16);

  sub_2287C0454(v0 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics17GeneratedFeedItem_dataVisualizationKind, &qword_280DE3398, MEMORY[0x277D12080]);
  sub_2287C0454(v0 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics17GeneratedFeedItem_timeScope, &qword_280DE3400, MEMORY[0x277D11F48]);
  sub_2287C04B0(v0 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent34HighlightsFeedInteractionAnalytics18InteractedFeedItem_modelTrainingEvent, type metadata accessor for ModelTrainingEvent);
  return v0;
}

uint64_t AppSessionAnalyticsEvent.HighlightsFeedInteractionAnalytics.InteractedFeedItem.__deallocating_deinit()
{
  v1 = v0[2];

  sub_2287C0454(v0 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics17GeneratedFeedItem_dataVisualizationKind, &qword_280DE3398, MEMORY[0x277D12080]);
  sub_2287C0454(v0 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics17GeneratedFeedItem_timeScope, &qword_280DE3400, MEMORY[0x277D11F48]);
  sub_2287C04B0(v0 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent34HighlightsFeedInteractionAnalytics18InteractedFeedItem_modelTrainingEvent, type metadata accessor for ModelTrainingEvent);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_2287BFF9C()
{
  result = qword_280DE2A98;
  if (!qword_280DE2A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE2A98);
  }

  return result;
}

void sub_2287C0020(unint64_t a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(void))
{
  v8 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v9 = a4;
      }

      else
      {
        v9 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x22AABF010](a1, a2, v9);
      a5(0);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    a5(0);
    if (sub_2287CB900() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_2287CB910();
    swift_dynamicCast();
    v5 = v18;
    v10 = *(a4 + 40);
    v11 = sub_2287CB7E0();
    v12 = -1 << *(a4 + 32);
    v8 = v11 & ~v12;
    if ((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
    {
      v13 = ~v12;
      do
      {
        v14 = *(*(a4 + 48) + 8 * v8);
        v15 = sub_2287CB7F0();

        if (v15)
        {
          goto LABEL_19;
        }

        v8 = (v8 + 1) & v13;
      }

      while (((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
    }

    __break(1u);
  }

  if ((v8 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v8)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v8 >> 6) + 56) >> v8) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v16 = *(*(a4 + 48) + 8 * v8);

  v17 = v16;
}

uint64_t sub_2287C022C(uint64_t a1)
{
  v2 = type metadata accessor for ModelTrainingEvent();
  v3 = *(v2 + 20);
  if (*(a1 + *(v2 + 24)))
  {
    v4 = 0x6576697469736F70;
  }

  else
  {
    v4 = 0x657669746167656ELL;
  }

  if (*(a1 + v3))
  {
    v5 = 0x6C6C657764;
  }

  else
  {
    v5 = 7364980;
  }

  if (*(a1 + v3))
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  MEMORY[0x22AABE980](v5, v6);

  MEMORY[0x22AABE980](95, 0xE100000000000000);
  MEMORY[0x22AABE980](v4, 0xE800000000000000);

  return 0;
}

unint64_t sub_2287C0308()
{
  result = qword_280DE2C90;
  if (!qword_280DE2C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE2C90);
  }

  return result;
}

uint64_t sub_2287C035C(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_2287C0510(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2287C03C8(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_2287C0510(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2287C0454(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2287C0510(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2287C04B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2287C0510(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2287CB820();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2287C0564(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for AppSessionAnalyticsEvent(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AppSessionAnalyticsEvent(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_2287C06AC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2287C0708(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2287C0788(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2287C07D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2287C0838()
{
  sub_2287C0510(319, &qword_280DE3398, MEMORY[0x277D12080]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_2287C0510(319, &qword_280DE3400, MEMORY[0x277D11F48]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_2287C09B4()
{
  sub_2287C0510(319, &qword_280DE33E0, MEMORY[0x277D11FA8]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2287C0AF0()
{
  result = type metadata accessor for ModelTrainingEvent();
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

uint64_t sub_2287C0BD4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2287C0C1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18HealthPlatformCore24AppSessionAnalyticsEventV7FailureO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2287C0C80(uint64_t *a1, unsigned int a2)
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

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2287C0CD4(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_2287C0D30(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t *BaseFeedPopulationManager.init(healthExperienceStore:healthStore:relevanceEngineCoordinator:)(uint64_t *a1, void *a2, uint64_t *a3)
{
  v7 = a3[3];
  v8 = a3[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v7);
  v10 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  v14 = sub_2287C658C(a1, a2, v12, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_0(a3);
  return v14;
}

uint64_t BaseFeedPopulationManager.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  return v0;
}

uint64_t sub_2287C0EF4()
{
  v1 = *(v0 + 112);

  sub_2287CACF0();
}

uint64_t sub_2287C0F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v57 = a2;
  v58 = a3;
  v65 = *v3;
  v6 = sub_2287CB080();
  v63 = *(v6 - 8);
  v64 = v6;
  v7 = *(v63 + 64);
  MEMORY[0x28223BE20](v6);
  v62 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2287CB0E0();
  v60 = *(v9 - 8);
  v61 = v9;
  v10 = *(v60 + 64);
  MEMORY[0x28223BE20](v9);
  v59 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2287C9810();
  v53 = *(v12 - 8);
  v13 = *(v53 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_2287CAA50();
  v16 = *(v54 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v54);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
  v55 = sub_2287C99F0();
  sub_2287CA9E0();

  v21 = sub_2287CAA40();
  v22 = sub_2287CB610();
  v56 = a1;

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v66 = v52;
    *v23 = 136315650;
    aBlock[0] = v65;
    swift_getMetatypeMetadata();
    v24 = sub_2287CB250();
    v26 = sub_2287031D8(v24, v25, &v66);

    *(v23 + 4) = v26;
    *(v23 + 12) = 2080;
    v27 = [v3[7] profileIdentifier];
    v28 = [v27 identifier];

    sub_2287C97F0();
    sub_2287C71F8(&qword_280DE3468, MEMORY[0x277CC95F0]);
    v29 = sub_2287CBCC0();
    v31 = v30;
    (*(v53 + 8))(v15, v12);
    v32 = sub_2287031D8(v29, v31, &v66);

    *(v23 + 14) = v32;
    *(v23 + 22) = 2080;
    v33 = v56;
    v34 = MEMORY[0x22AABEA80](v56, MEMORY[0x277D121B8]);
    v36 = sub_2287031D8(v34, v35, &v66);

    *(v23 + 24) = v36;
    _os_log_impl(&dword_2286FF000, v21, v22, "[%s]_%s: Enqueuing deleteFeed of kinds: %s", v23, 0x20u);
    v37 = v52;
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v37, -1, -1);
    MEMORY[0x22AABFD90](v23, -1, -1);

    (*(v16 + 8))(v19, v54);
    v38 = v33;
  }

  else
  {

    (*(v16 + 8))(v19, v54);
    v38 = v56;
  }

  v39 = v4[13];
  v40 = swift_allocObject();
  v40[2] = v4;
  v40[3] = v38;
  v41 = v55;
  v42 = v57;
  v43 = v58;
  v40[4] = v55;
  v40[5] = v42;
  v44 = v65;
  v40[6] = v43;
  v40[7] = v44;
  aBlock[4] = sub_2287C7164;
  aBlock[5] = v40;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228712EA8;
  aBlock[3] = &block_descriptor_15;
  v45 = _Block_copy(aBlock);

  v46 = v41;

  v47 = v59;
  sub_2287CB0A0();
  v66 = MEMORY[0x277D84F90];
  sub_2287C71F8(&qword_280DE3A28, MEMORY[0x277D85198]);
  v48 = MEMORY[0x277D85198];
  sub_2287C7474(0, &qword_280DE3A10, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_2287C7194(&qword_280DE3A08, &qword_280DE3A10, v48);
  v49 = v62;
  v50 = v64;
  sub_2287CB880();
  MEMORY[0x22AABED90](0, v47, v49, v45);
  _Block_release(v45);

  (*(v63 + 8))(v49, v50);
  (*(v60 + 8))(v47, v61);
}

uint64_t FeedPopulationManaging<>.handleUpdatedFeedItems(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_2287C9810();
  v155 = *(v7 - 8);
  v156 = v7;
  v8 = *(v155 + 64);
  MEMORY[0x28223BE20](v7);
  v154 = &v147[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v160 = sub_2287CA1F0();
  v10 = *(v160 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v160);
  v14 = &v147[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v147[-v15];
  v17 = sub_2287CAA50();
  v158 = *(v17 - 8);
  v159 = v17;
  v18 = *(v158 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v147[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v147[-v23];
  v25 = MEMORY[0x28223BE20](v22);
  v153 = &v147[-v26];
  MEMORY[0x28223BE20](v25);
  v28 = &v147[-v27];
  v29 = *(a3 + 64);
  v161 = v3;
  v157 = a2;
  v30 = (v10 + 16);
  if (v29(a1, a2, a3))
  {
    sub_2287CA9E0();
    (*v30)(v16, a1, v160);
    swift_retain_n();
    v31 = sub_2287CAA40();
    v32 = sub_2287CB610();
    v33 = os_log_type_enabled(v31, v32);
    v34 = a1;
    v152 = v24;
    if (v33)
    {
      v35 = swift_slowAlloc();
      LODWORD(v150) = v32;
      v36 = v35;
      v151 = swift_slowAlloc();
      v163 = v151;
      *v36 = 136446722;
      v162 = v157;
      swift_getMetatypeMetadata();
      v37 = sub_2287CB250();
      v149 = v31;
      v39 = sub_2287031D8(v37, v38, &v163);

      *(v36 + 4) = v39;
      *(v36 + 12) = 2080;
      v40 = [*(v161 + 56) profileIdentifier];
      v41 = [v40 identifier];

      v42 = v154;
      sub_2287C97F0();

      sub_2287C71F8(&qword_280DE3468, MEMORY[0x277CC95F0]);
      v43 = v156;
      v44 = a3;
      v45 = sub_2287CBCC0();
      v47 = v46;

      v48 = v43;
      v34 = a1;
      (*(v155 + 8))(v42, v48);
      v49 = v45;
      a3 = v44;
      v50 = sub_2287031D8(v49, v47, &v163);

      *(v36 + 14) = v50;
      *(v36 + 22) = 2080;
      sub_2287C71F8(&qword_280DE11B0, MEMORY[0x277D12000]);
      v51 = v160;
      v52 = sub_2287CBCC0();
      v54 = v53;
      (*(v10 + 8))(v16, v51);
      v55 = v157;
      v56 = sub_2287031D8(v52, v54, &v163);

      *(v36 + 24) = v56;
      v57 = v149;
      _os_log_impl(&dword_2286FF000, v149, v150, "[%{public}s]_%s: received notice of change domain: %s", v36, 0x20u);
      v58 = v151;
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v58, -1, -1);
      MEMORY[0x22AABFD90](v36, -1, -1);

      v59 = *(v158 + 8);
      (v59)(v28, v159);
    }

    else
    {

      (*(v10 + 8))(v16, v160);
      v59 = *(v158 + 8);
      (v59)(v28, v159);
      v55 = v157;
    }

    v82 = *(a3 + 32);
    v160 = a3;
    v83 = v82(v55, a3);
    MEMORY[0x28223BE20](v83);
    *&v147[-16] = v34;
    v85 = sub_2287C2594(sub_2287C7240, &v147[-32], v84);
    v86 = v153;
    sub_2287CA9E0();
    swift_retain_n();

    v87 = sub_2287CAA40();
    v88 = sub_2287CB610();

    v89 = v55;
    if (os_log_type_enabled(v87, v88))
    {
      v90 = swift_slowAlloc();
      v151 = v59;
      v91 = v90;
      v92 = swift_slowAlloc();
      v162 = v89;
      v163 = v92;
      *v91 = 136446722;
      swift_getMetatypeMetadata();
      v93 = sub_2287CB250();
      v95 = sub_2287031D8(v93, v94, &v163);

      *(v91 + 4) = v95;
      *(v91 + 12) = 2080;
      v96 = [*(v161 + 56) profileIdentifier];
      v97 = [v96 identifier];

      v98 = v85;
      v99 = v154;
      sub_2287C97F0();

      sub_2287C71F8(&qword_280DE3468, MEMORY[0x277CC95F0]);
      v100 = v156;
      v101 = sub_2287CBCC0();
      v103 = v102;

      v104 = v99;
      v85 = v98;
      (*(v155 + 8))(v104, v100);
      v105 = sub_2287031D8(v101, v103, &v163);

      *(v91 + 14) = v105;
      *(v91 + 22) = 2080;
      v106 = MEMORY[0x22AABEA80](v98, MEMORY[0x277D121B8]);
      v108 = sub_2287031D8(v106, v107, &v163);

      *(v91 + 24) = v108;
      v89 = v157;
      _os_log_impl(&dword_2286FF000, v87, v88, "[%{public}s]_%s: Mapped contentKinds to these FeedKinds: %s", v91, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v92, -1, -1);
      v109 = v91;
      v59 = v151;
      MEMORY[0x22AABFD90](v109, -1, -1);

      v110 = v153;
    }

    else
    {

      v110 = v86;
    }

    (v59)(v110, v159);
    v112 = v152;
    if (*(v85 + 16))
    {
      sub_2287CA9E0();
      swift_retain_n();
      v113 = sub_2287CAA40();
      v114 = sub_2287CB610();
      if (os_log_type_enabled(v113, v114))
      {
        v115 = swift_slowAlloc();
        v151 = v59;
        v116 = v115;
        v150 = swift_slowAlloc();
        v162 = v89;
        v163 = v150;
        *v116 = 136446978;
        swift_getMetatypeMetadata();
        v117 = sub_2287CB250();
        v149 = v113;
        v119 = sub_2287031D8(v117, v118, &v163);

        *(v116 + 4) = v119;
        *(v116 + 12) = 2080;
        v148 = v114;
        v120 = v161;
        v121 = *(v161 + 56);
        v122 = [v121 profileIdentifier];
        v123 = [v122 identifier];

        v153 = v85;
        v124 = v154;
        sub_2287C97F0();

        sub_2287C71F8(&qword_280DE3468, MEMORY[0x277CC95F0]);
        v125 = v156;
        v126 = sub_2287CBCC0();
        v128 = v127;

        v129 = *(v155 + 8);
        v129(v124, v125);
        v130 = sub_2287031D8(v126, v128, &v163);

        *(v116 + 14) = v130;
        *(v116 + 22) = 2080;
        v131 = [v121 profileIdentifier];
        v132 = [v131 identifier];

        sub_2287C97F0();

        v133 = sub_2287CBCC0();
        v135 = v134;

        v136 = v124;
        v85 = v153;
        v129(v136, v125);
        v89 = v157;
        v137 = sub_2287031D8(v133, v135, &v163);

        *(v116 + 24) = v137;
        *(v116 + 32) = 2082;
        v162 = v120;

        v138 = sub_2287CB250();
        v140 = sub_2287031D8(v138, v139, &v163);

        *(v116 + 34) = v140;
        v141 = v149;
        _os_log_impl(&dword_2286FF000, v149, v148, "[%{public}s]_%s: Beginning repopulation of live feeds for profile %s; %{public}s", v116, 0x2Au);
        v142 = v150;
        swift_arrayDestroy();
        MEMORY[0x22AABFD90](v142, -1, -1);
        MEMORY[0x22AABFD90](v116, -1, -1);

        (v151)(v152, v159);
      }

      else
      {

        (v59)(v112, v159);
      }

      v143 = swift_allocObject();
      v144 = v160;
      v145 = v161;
      v143[2] = v89;
      v143[3] = v144;
      v143[4] = v145;
      v146 = *(*v145 + 136);

      v146(v85, sub_2287C7260, v143);
    }
  }

  else
  {
    sub_2287CA9E0();
    (*v30)(v14, a1, v160);
    swift_retain_n();
    v60 = sub_2287CAA40();
    v61 = sub_2287CB5D0();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v153 = swift_slowAlloc();
      v163 = v153;
      *v62 = 136446722;
      v162 = v157;
      swift_getMetatypeMetadata();
      v63 = sub_2287CB250();
      LODWORD(v157) = v61;
      v65 = sub_2287031D8(v63, v64, &v163);

      *(v62 + 4) = v65;
      *(v62 + 12) = 2080;
      v66 = [*(v161 + 56) profileIdentifier];
      v67 = [v66 identifier];

      v68 = v154;
      sub_2287C97F0();

      sub_2287C71F8(&qword_280DE3468, MEMORY[0x277CC95F0]);
      v69 = v156;
      v70 = sub_2287CBCC0();
      v152 = v60;
      v71 = v70;
      v73 = v72;

      (*(v155 + 8))(v68, v69);
      v74 = sub_2287031D8(v71, v73, &v163);

      *(v62 + 14) = v74;
      *(v62 + 22) = 2080;
      sub_2287C71F8(&qword_280DE11B0, MEMORY[0x277D12000]);
      v75 = v160;
      v76 = sub_2287CBCC0();
      v78 = v77;
      (*(v10 + 8))(v14, v75);
      v79 = sub_2287031D8(v76, v78, &v163);

      *(v62 + 24) = v79;
      v80 = v152;
      _os_log_impl(&dword_2286FF000, v152, v157, "[%{public}s]_%s: change domain does not contain pertinent changes; ignoring: %s", v62, 0x20u);
      v81 = v153;
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v81, -1, -1);
      MEMORY[0x22AABFD90](v62, -1, -1);
    }

    else
    {

      (*(v10 + 8))(v14, v160);
    }

    return (*(v158 + 8))(v21, v159);
  }
}

uint64_t sub_2287C2594(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v12 = *(a3 + 16);
    v13 = result;
    while (v7 < *(a3 + 16))
    {
      v11 = *(a3 + v7 + 32);
      v14 = v11;
      result = v6(&v14);
      if (v3)
      {

        goto LABEL_15;
      }

      if (result)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v15 = v8;
        if ((result & 1) == 0)
        {
          result = sub_2287132CC(0, *(v8 + 16) + 1, 1);
          v8 = v15;
        }

        v10 = *(v8 + 16);
        v9 = *(v8 + 24);
        if (v10 >= v9 >> 1)
        {
          result = sub_2287132CC((v9 > 1), v10 + 1, 1);
          v8 = v15;
        }

        *(v8 + 16) = v10 + 1;
        *(v8 + v10 + 32) = v11;
        v5 = v12;
        v6 = v13;
      }

      if (v5 == ++v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
LABEL_15:

    return v8;
  }

  return result;
}

uint64_t *BaseFeedPopulationManager.__allocating_init(healthExperienceStore:healthStore:relevanceEngineCoordinator:)(uint64_t *a1, void *a2, uint64_t *a3)
{
  v6 = swift_allocObject();
  v7 = a3[3];
  v8 = a3[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v7);
  v10 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  v14 = sub_2287C658C(a1, a2, v12, v6, v7, v8);
  __swift_destroy_boxed_opaque_existential_0(a3);
  return v14;
}

uint64_t sub_2287C282C@<X0>(NSObject **a1@<X0>, NSObject **a2@<X1>, void *a3@<X2>, NSObject *a4@<X3>, NSObject **a5@<X8>)
{
  v10 = sub_2287C9810();
  v68 = *(v10 - 8);
  v11 = *(v68 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2287CAA50();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v22 = *a2;
  v21 = a2[1];
  v23 = a2[2];
  if (*a1)
  {
    v63 = a4;
    v65 = v10;
    v66 = v17;
    v67 = v16;
    v69 = v21;
    v24 = a1[2];
    v70 = a1[1];

    sub_2287CA9E0();
    v25 = a3;

    v26 = sub_2287CAA40();
    v27 = sub_2287CB610();

    v64 = v27;
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v62 = a5;
      v29 = v28;
      v61 = swift_slowAlloc();
      v71 = v61;
      *v29 = 136315906;
      v72 = v63;
      swift_getMetatypeMetadata();
      v30 = sub_2287CB250();
      v32 = sub_2287031D8(v30, v31, &v71);
      v63 = v26;
      v33 = v32;

      *(v29 + 4) = v33;
      *(v29 + 12) = 2080;
      v34 = [v25 profileIdentifier];
      v35 = [v34 identifier];

      sub_2287C97F0();
      sub_2287C71F8(&qword_280DE3468, MEMORY[0x277CC95F0]);
      v36 = v65;
      v37 = sub_2287CBCC0();
      v39 = v38;
      (*(v68 + 8))(v13, v36);
      v40 = sub_2287031D8(v37, v39, &v71);

      *(v29 + 14) = v40;
      *(v29 + 22) = 2080;
      v72 = v20;
      v73 = v70;
      v74 = v24;

      v41 = sub_2287CB250();
      v43 = sub_2287031D8(v41, v42, &v71);

      *(v29 + 24) = v43;
      *(v29 + 32) = 2080;
      v72 = v22;
      v73 = v69;
      v74 = v23;

      v44 = sub_2287CB250();
      v46 = sub_2287031D8(v44, v45, &v71);

      *(v29 + 34) = v46;
      v26 = v63;
      _os_log_impl(&dword_2286FF000, v63, v64, "[%s]_%s: Consolidating requests to populate %s with %s", v29, 0x2Au);
      v47 = v61;
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v47, -1, -1);
      v48 = v29;
      a5 = v62;
      MEMORY[0x22AABFD90](v48, -1, -1);
    }

    (*(v66 + 8))(v19, v67);
    v49 = v70;

    v51 = sub_22872A948(v50);

    v53 = sub_22872A948(v52);

    v54 = sub_2287C4DC0(v53, v51);
    v55 = v54;
    v56 = *(v54 + 16);
    if (v56)
    {
      v57 = sub_228723A48(*(v54 + 16), 0);
      v58 = sub_228729E78(&v72, v57 + 32, v56, v55);
      sub_22870B3D4();
      if (v58 != v56)
      {
        __break(1u);
        goto LABEL_7;
      }
    }

    else
    {

      v57 = MEMORY[0x277D84F90];
    }

    v60 = swift_allocObject();
    v60[2].isa = v20;
    v60[3].isa = v49;
    v60[4].isa = v24;
    v60[5].isa = v22;
    v60[6].isa = v69;
    v60[7].isa = v23;
    *a5 = v57;
    a5[1] = sub_2287C7894;
    a5[2] = v60;
  }

LABEL_7:
  *a5 = v22;
  a5[1] = v21;
  a5[2] = v23;
}

uint64_t sub_2287C2DC0@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, void, void)@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v60 = a6;
  v53 = a4;
  v56 = a3;
  v66 = MEMORY[0x277D85AD8];
  v67 = a7;
  sub_2287C7474(0, qword_280DE07D8, MEMORY[0x277D85AD8], MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v63 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v62 = &v52 - v14;
  v15 = sub_2287C9B60();
  v58 = *(v15 - 8);
  v59 = v15;
  v16 = *(v58 + 64);
  MEMORY[0x28223BE20](v15);
  v57 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287C74D8();
  v19 = *(v18 - 8);
  v64 = v18;
  v65 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v61 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_2287C9810();
  v22 = *(v55 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v55);
  v25 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a1;
  v54 = a1[1];
  v27 = v54;
  v28 = a1[2];
  v29 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v30 = sub_2287C99F0();
  sub_2287010E4(v56, &v70);
  v31 = swift_allocObject();
  sub_228706AD4(&v70, (v31 + 2));
  v31[7] = v26;
  v31[8] = v27;
  v31[9] = v28;
  v31[10] = v30;
  v31[11] = v53;
  v31[12] = a5;
  v31[13] = v60;
  v56 = MEMORY[0x277CBCEA8];
  sub_2287C758C(0, &qword_280DE0048, MEMORY[0x277CBCEA8]);
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();

  v60 = v30;

  v35 = a5;
  v36 = sub_2287CADF0();
  *&v70 = 0;
  *(&v70 + 1) = 0xE000000000000000;
  sub_2287CBA20();

  v68 = 0x3A656C69666F7270;
  v69 = 0xE900000000000020;
  v37 = [v35 profileIdentifier];
  v38 = [v37 identifier];

  sub_2287C97F0();
  sub_2287C71F8(&qword_280DE3468, MEMORY[0x277CC95F0]);
  v39 = v55;
  v40 = sub_2287CBCC0();
  MEMORY[0x22AABE980](v40);

  (*(v22 + 8))(v25, v39);
  MEMORY[0x22AABE980](0x3A73646E696B202CLL, 0xE900000000000020);
  *&v70 = v26;
  *(&v70 + 1) = v54;
  v71 = v28;

  v41 = sub_2287CB250();
  MEMORY[0x22AABE980](v41);

  v43 = v57;
  v42 = v58;
  v44 = v59;
  (*(v58 + 104))(v57, *MEMORY[0x277D11E68], v59);
  sub_2287C9B50();
  (*(v42 + 8))(v43, v44);
  v45 = sub_2287CA970();
  v46 = v62;
  (*(*(v45 - 8) + 56))(v62, 1, 1, v45);
  *&v70 = v36;
  sub_22873C718(v46, v63);
  sub_2287C7430(&unk_280DE0050, &qword_280DE0048, v56);

  v47 = v61;
  sub_2287CAAE0();
  sub_2287C7634(v46, qword_280DE07D8, v66);
  sub_2287C71F8(&qword_280DE0740, sub_2287C74D8);
  v48 = v64;
  v49 = sub_2287CAF40();
  (*(v65 + 8))(v47, v48);
  *&v70 = v49;
  v50 = MEMORY[0x277CBCD88];
  sub_2287C758C(0, &qword_280DE01B0, MEMORY[0x277CBCD88]);
  sub_2287C7430(&qword_280DE01B8, &qword_280DE01B0, v50);
  sub_2287CAEE0();
}

uint64_t sub_2287C34C4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, void *a9, uint64_t a10)
{
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  v18 = a3[3];
  v19 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v18);
  v20 = swift_allocObject();
  v20[2] = a7;
  v20[3] = a8;
  v20[4] = a9;
  v20[5] = a4;
  v20[6] = a5;
  v20[7] = a6;
  v20[8] = sub_2287C76A4;
  v20[9] = v17;
  v20[10] = a10;
  v25 = *(v19 + 24);

  v21 = a7;

  v22 = a9;

  v25(a4, sub_2287C76E4, v20, v18, v19);
}

void sub_2287C3620(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = a5;
  v17[6] = a6;
  v17[7] = a7;
  v17[8] = a8;
  v17[9] = a1;
  v17[10] = a9;
  v21[4] = sub_2287C76FC;
  v21[5] = v17;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 1107296256;
  v21[2] = sub_228712EA8;
  v21[3] = &block_descriptor_49;
  v18 = _Block_copy(v21);

  v19 = a3;

  v20 = a1;

  [v20 performBlock_];
  _Block_release(v18);
}

uint64_t sub_2287C3768(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v92 = a6;
  v93 = a7;
  v94 = a5;
  v95 = a3;
  v90 = a4;
  v91 = a2;
  v88 = a8;
  v89 = a9;
  v83 = sub_2287CB080();
  v87 = *(v83 - 8);
  v9 = *(v87 + 64);
  MEMORY[0x28223BE20](v83);
  v86 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2287CB0E0();
  v85 = *(v11 - 8);
  v12 = *(v85 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2287CB090();
  v84 = *(v15 - 8);
  v16 = *(v84 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2287C9810();
  v82 = *(v19 - 8);
  v20 = *(v82 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2287CAA50();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    v30 = swift_allocObject();
    v31 = v88;
    v32 = v90;
    v33 = v91;
    v30[2] = v88;
    v30[3] = v33;
    v35 = v94;
    v34 = v95;
    v30[4] = v95;
    v30[5] = v32;
    v36 = v92;
    v37 = v93;
    v30[6] = v35;
    v30[7] = v36;
    v38 = v89;
    v30[8] = v37;
    v30[9] = v38;
    v39 = *(*v29 + 168);
    v40 = v31;
    v41 = v33;

    v39(v40, v41, v34, sub_2287C7754, v30);
  }

  else
  {
    v76 = v22;
    v77 = v24;
    v78 = v23;
    v79 = v18;
    v80 = v15;
    v81 = v14;
    v88 = v11;
    v42 = v27;
    sub_2287CAA20();
    v43 = v91;
    v44 = sub_2287CAA40();
    v45 = sub_2287CB5F0();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v96 = v47;
      *v46 = 136315394;
      aBlock[0] = v89;
      swift_getMetatypeMetadata();
      v48 = sub_2287CB250();
      v50 = sub_2287031D8(v48, v49, &v96);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2080;
      v51 = [v43 profileIdentifier];
      v52 = [v51 identifier];

      v53 = v76;
      sub_2287C97F0();

      sub_2287C71F8(&qword_280DE3468, MEMORY[0x277CC95F0]);
      v54 = sub_2287CBCC0();
      v56 = v55;
      (*(v82 + 8))(v53, v19);
      v57 = sub_2287031D8(v54, v56, &v96);

      *(v46 + 14) = v57;
      _os_log_impl(&dword_2286FF000, v44, v45, "[%s]_%s: Self deallocated during picking", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v47, -1, -1);
      MEMORY[0x22AABFD90](v46, -1, -1);
    }

    (*(v77 + 8))(v42, v78);
    v58 = v83;
    v59 = v86;
    v61 = v94;
    v60 = v95;
    v62 = v92;
    v63 = v93;
    v64 = v90;
    v65 = v80;
    v66 = v84;
    v67 = swift_allocObject();
    v67[2] = v60;
    v67[3] = v64;
    v67[4] = v61;
    v67[5] = v62;
    v67[6] = v63;
    sub_22870FDE4();
    v68 = v79;
    (*(v66 + 104))(v79, *MEMORY[0x277D851B0], v65);

    v69 = sub_2287CB6E0();
    (*(v66 + 8))(v68, v65);
    v70 = swift_allocObject();
    *(v70 + 16) = sub_2287C78F4;
    *(v70 + 24) = v67;
    aBlock[4] = sub_2287763C4;
    aBlock[5] = v70;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_228712EA8;
    aBlock[3] = &block_descriptor_59;
    v71 = _Block_copy(aBlock);

    v72 = v81;
    sub_2287CB0A0();
    v96 = MEMORY[0x277D84F90];
    sub_2287C71F8(&qword_280DE3A28, MEMORY[0x277D85198]);
    v73 = MEMORY[0x277D85198];
    sub_2287C7474(0, &qword_280DE3A10, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_2287C7194(&qword_280DE3A08, &qword_280DE3A10, v73);
    sub_2287CB880();
    MEMORY[0x22AABED90](0, v72, v59, v71);
    _Block_release(v71);

    (*(v87 + 8))(v59, v58);
    (*(v85 + 8))(v72, v88);
  }
}

void sub_2287C3FF8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = a5;
  v16[7] = a6;
  v16[8] = a7;
  v16[9] = a8;
  v20[4] = sub_2287C77C4;
  v20[5] = v16;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 1107296256;
  v20[2] = sub_228712EA8;
  v20[3] = &block_descriptor_68_0;
  v17 = _Block_copy(v20);
  v18 = a1;
  v19 = a2;

  [v18 performBlock_];
  _Block_release(v17);
}

uint64_t sub_2287C4128(void *a1, void *a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t a1), uint64_t a6, uint64_t a7, NSObject *a8)
{
  v84 = a7;
  v90 = a4;
  v91 = a3;
  v98[1] = *MEMORY[0x277D85DE8];
  v13 = sub_2287C9810();
  v79 = *(v13 - 8);
  v14 = *(v79 + 64);
  MEMORY[0x28223BE20](v13);
  v78 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2287CAA50();
  v80 = *(v16 - 8);
  v81 = v16;
  v17 = *(v80 + 64);
  MEMORY[0x28223BE20](v16);
  v83 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2287CB080();
  v88 = *(v19 - 8);
  v89 = v19;
  v20 = *(v88 + 64);
  MEMORY[0x28223BE20](v19);
  v87 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2287CB0E0();
  v85 = *(v22 - 8);
  v86 = v22;
  v23 = *(v85 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_2287CB090();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v72 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock = 0;
  if ([a1 save_])
  {
    v31 = aBlock;
LABEL_6:
    v51 = v91;
    goto LABEL_7;
  }

  v75 = a8;
  v76 = v13;
  v77 = a6;
  v32 = aBlock;
  v82 = a5;
  v33 = v32;
  v34 = sub_2287C9640();

  swift_willThrow();
  a5 = v82;
  sub_2287CAA20();
  v35 = a2;

  v36 = v34;
  v37 = sub_2287CAA40();
  v38 = sub_2287CB5F0();

  v74 = v38;
  if (!os_log_type_enabled(v37, v38))
  {

    (*(v80 + 8))(v83, v81);
    a6 = v77;
    goto LABEL_6;
  }

  v39 = swift_slowAlloc();
  v73 = swift_slowAlloc();
  v98[0] = v73;
  *v39 = 136315906;
  aBlock = v75;
  swift_getMetatypeMetadata();
  v40 = sub_2287CB250();
  v75 = v37;
  v42 = sub_2287031D8(v40, v41, v98);

  *(v39 + 4) = v42;
  *(v39 + 12) = 2080;
  v43 = [v35 profileIdentifier];
  v44 = [v43 identifier];

  v45 = v78;
  sub_2287C97F0();

  sub_2287C71F8(&qword_280DE3468, MEMORY[0x277CC95F0]);
  v46 = v76;
  v47 = sub_2287CBCC0();
  v49 = v48;
  (*(v79 + 8))(v45, v46);
  v50 = sub_2287031D8(v47, v49, v98);

  *(v39 + 14) = v50;
  *(v39 + 22) = 2080;
  v51 = v91;
  aBlock = v91;
  v93 = v90;
  v94 = v82;

  v52 = sub_2287CB250();
  v54 = sub_2287031D8(v52, v53, v98);

  *(v39 + 24) = v54;
  *(v39 + 32) = 2080;
  aBlock = v34;
  v55 = v34;
  sub_22874A0A4();
  v56 = sub_2287CB250();
  v58 = sub_2287031D8(v56, v57, v98);

  *(v39 + 34) = v58;
  v59 = v75;
  _os_log_impl(&dword_2286FF000, v75, v74, "[%s]_%s: Unable to save after picking feeds of kinds %s: %s", v39, 0x2Au);
  v60 = v73;
  swift_arrayDestroy();
  MEMORY[0x22AABFD90](v60, -1, -1);
  v61 = v39;
  a5 = v82;
  MEMORY[0x22AABFD90](v61, -1, -1);

  (*(v80 + 8))(v83, v81);
  a6 = v77;
LABEL_7:
  v62 = swift_allocObject();
  v63 = v90;
  v62[2] = v51;
  v62[3] = v63;
  v62[4] = a5;
  v62[5] = a6;
  v62[6] = v84;
  sub_22870FDE4();
  (*(v27 + 104))(v30, *MEMORY[0x277D851B0], v26);

  v64 = sub_2287CB6E0();
  (*(v27 + 8))(v30, v26);
  v65 = swift_allocObject();
  *(v65 + 16) = sub_2287C7840;
  *(v65 + 24) = v62;
  v96 = sub_2287763C4;
  v97 = v65;
  aBlock = MEMORY[0x277D85DD0];
  v93 = 1107296256;
  v94 = sub_228712EA8;
  v95 = &block_descriptor_78;
  v66 = _Block_copy(&aBlock);

  sub_2287CB0A0();
  v98[0] = MEMORY[0x277D84F90];
  sub_2287C71F8(&qword_280DE3A28, MEMORY[0x277D85198]);
  v67 = MEMORY[0x277D85198];
  sub_2287C7474(0, &qword_280DE3A10, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_2287C7194(&qword_280DE3A08, &qword_280DE3A10, v67);
  v68 = v87;
  v69 = v89;
  sub_2287CB880();
  MEMORY[0x22AABED90](0, v25, v68, v66);
  _Block_release(v66);

  (*(v88 + 8))(v68, v69);
  (*(v85 + 8))(v25, v86);

  v71 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2287C4A2C(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = sub_2287C9810();
  v40 = *(v6 - 8);
  v7 = *(v40 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_2287CAA50();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v36[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *a1;
  sub_2287CA9E0();
  v16 = a2;

  v17 = sub_2287CAA40();
  v18 = sub_2287CB610();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v39 = v10;
    v20 = v19;
    v38 = swift_slowAlloc();
    v41[0] = v38;
    v41[1] = a3;
    *v20 = 136315650;
    swift_getMetatypeMetadata();
    v21 = sub_2287CB250();
    v23 = sub_2287031D8(v21, v22, v41);
    v37 = v18;
    v24 = v23;

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    v25 = [v16 profileIdentifier];
    v26 = [v25 identifier];

    sub_2287C97F0();
    sub_2287C71F8(&qword_280DE3468, MEMORY[0x277CC95F0]);
    v27 = sub_2287CBCC0();
    v29 = v28;
    (*(v40 + 8))(v9, v6);
    v30 = sub_2287031D8(v27, v29, v41);

    *(v20 + 14) = v30;
    *(v20 + 22) = 2080;
    v31 = MEMORY[0x22AABEA80](v15, MEMORY[0x277D121B8]);
    v33 = sub_2287031D8(v31, v32, v41);

    *(v20 + 24) = v33;
    _os_log_impl(&dword_2286FF000, v17, v37, "[%s]_%s: Population complete for kinds %s", v20, 0x20u);
    v34 = v38;
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v34, -1, -1);
    MEMORY[0x22AABFD90](v20, -1, -1);

    return (*(v11 + 8))(v14, v39);
  }

  else
  {

    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_2287C4DC0(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_228723F40(&v11, *(*(v2 + 48) + (v10 | (v9 << 6)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2287C4EC4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v51 = a4;
  v53 = a3;
  v10 = sub_2287C9810();
  v49 = *(v10 - 8);
  v11 = *(v49 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v45[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v50 = sub_2287CAA50();
  v14 = *(v50 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v50);
  v17 = &v45[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2287CA9E0();

  v18 = sub_2287CAA40();
  v19 = sub_2287CB610();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v52 = a6;
    v21 = v20;
    v22 = swift_slowAlloc();
    v47 = v22;
    *v21 = 136315650;
    v54 = v22;
    aBlock[0] = v52;
    swift_getMetatypeMetadata();
    v23 = sub_2287CB250();
    v46 = v19;
    v25 = sub_2287031D8(v23, v24, &v54);
    v48 = a5;
    v26 = v25;

    *(v21 + 4) = v26;
    *(v21 + 12) = 2080;
    v27 = [*(a1 + 56) profileIdentifier];
    v28 = [v27 identifier];

    sub_2287C97F0();
    sub_2287C71F8(&qword_280DE3468, MEMORY[0x277CC95F0]);
    v29 = sub_2287CBCC0();
    v31 = v30;
    (*(v49 + 8))(v13, v10);
    v32 = sub_2287031D8(v29, v31, &v54);
    a5 = v48;

    *(v21 + 14) = v32;
    *(v21 + 22) = 2080;
    v33 = MEMORY[0x22AABEA80](a2, MEMORY[0x277D121B8]);
    v35 = sub_2287031D8(v33, v34, &v54);

    *(v21 + 24) = v35;
    _os_log_impl(&dword_2286FF000, v18, v46, "[%s]_%s: Deleting feeds of kinds: %s", v21, 0x20u);
    v36 = v47;
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v36, -1, -1);
    v37 = v21;
    a6 = v52;
    MEMORY[0x22AABFD90](v37, -1, -1);
  }

  (*(v14 + 8))(v17, v50);
  v38 = swift_allocObject();
  v39 = v53;
  v38[2] = a2;
  v38[3] = v39;
  v40 = v51;
  v38[4] = a1;
  v38[5] = v40;
  v38[6] = a5;
  v38[7] = a6;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_2287C73B0;
  *(v41 + 24) = v38;
  aBlock[4] = sub_22877E1B8;
  aBlock[5] = v41;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228742C10;
  aBlock[3] = &block_descriptor_16;
  v42 = _Block_copy(aBlock);

  v43 = v39;

  [v43 performBlockAndWait_];
  _Block_release(v42);
  LOBYTE(v42) = swift_isEscapingClosureAtFileLocation();

  if (v42)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2287C53A8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v78 = a6;
  v96 = a5;
  v89 = a4;
  v98[1] = *MEMORY[0x277D85DE8];
  v81 = sub_2287C9810();
  v80 = *(v81 - 8);
  v9 = *(v80 + 64);
  MEMORY[0x28223BE20](v81);
  v79 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_2287CAA50();
  v84 = *(v85 - 8);
  v11 = *(v84 + 64);
  MEMORY[0x28223BE20](v85);
  v83 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2287CB080();
  v94 = *(v13 - 8);
  v95 = v13;
  v14 = *(v94 + 64);
  MEMORY[0x28223BE20](v13);
  v92 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_2287CB0E0();
  v91 = *(v93 - 8);
  v16 = *(v91 + 64);
  MEMORY[0x28223BE20](v93);
  v90 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2287CB090();
  v87 = *(v18 - 8);
  v88 = v18;
  v19 = *(v87 + 64);
  MEMORY[0x28223BE20](v18);
  v86 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x277D84F90];
  aBlock[0] = MEMORY[0x277D84F90];
  v22 = *(a1 + 16);
  v82 = a3;
  if (v22)
  {
    sub_2287CA640();
    v23 = *(a3 + 56);
    v24 = (a1 + 32);
    do
    {
      v25 = *v24++;
      v26 = [v23 profileIdentifier];
      v27 = sub_2287CA630();

      v28 = sub_2287CA300();
      if (v28)
      {
        MEMORY[0x22AABEA50]();
        if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v29 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_2287CB3E0();
        }

        sub_2287CB420();
        v21 = aBlock[0];
      }

      --v22;
    }

    while (v22);
  }

  if (v21 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2287CB920())
  {
    v31 = 0;
    while (1)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x22AABF120](v31, v21);
      }

      else
      {
        if (v31 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v32 = *(v21 + 8 * v31 + 32);
      }

      v33 = v32;
      v34 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      [a2 deleteObject_];

      ++v31;
      if (v34 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_21:

  aBlock[0] = 0;
  if ([a2 save_])
  {
    v35 = aBlock[0];
    v37 = v95;
    v36 = v96;
  }

  else
  {
    v38 = aBlock[0];
    v39 = sub_2287C9640();

    swift_willThrow();
    v40 = v83;
    sub_2287CA9E0();
    v41 = v82;

    v42 = v39;
    v43 = sub_2287CAA40();
    v44 = sub_2287CB5F0();

    v45 = os_log_type_enabled(v43, v44);
    v37 = v95;
    v36 = v96;
    if (v45)
    {
      v46 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v98[0] = v77;
      *v46 = 136315650;
      aBlock[0] = v78;
      swift_getMetatypeMetadata();
      v47 = sub_2287CB250();
      v49 = sub_2287031D8(v47, v48, v98);
      LODWORD(v78) = v44;
      v50 = v49;

      *(v46 + 4) = v50;
      *(v46 + 12) = 2080;
      v51 = [*(v41 + 56) profileIdentifier];
      v52 = [v51 identifier];

      v53 = v79;
      sub_2287C97F0();

      sub_2287C71F8(&qword_280DE3468, MEMORY[0x277CC95F0]);
      v54 = v81;
      v55 = sub_2287CBCC0();
      v57 = v56;
      (*(v80 + 8))(v53, v54);
      v58 = sub_2287031D8(v55, v57, v98);

      *(v46 + 14) = v58;
      *(v46 + 22) = 2080;
      aBlock[0] = v39;
      v59 = v39;
      sub_22874A0A4();
      v60 = sub_2287CB250();
      v62 = sub_2287031D8(v60, v61, v98);

      *(v46 + 24) = v62;
      _os_log_impl(&dword_2286FF000, v43, v78, "[%s]_%s: Failed to save MOC with error: %s", v46, 0x20u);
      v63 = v77;
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v63, -1, -1);
      MEMORY[0x22AABFD90](v46, -1, -1);
    }

    else
    {
    }

    (*(v84 + 8))(v40, v85);
  }

  v65 = v88;
  v64 = v89;
  v66 = MEMORY[0x277D84F90];
  sub_22870FDE4();
  v68 = v86;
  v67 = v87;
  (*(v87 + 104))(v86, *MEMORY[0x277D851B0], v65);

  v69 = sub_2287CB6E0();
  (*(v67 + 8))(v68, v65);
  v70 = swift_allocObject();
  v70[2] = v64;
  v70[3] = v36;
  aBlock[4] = sub_22873FB9C;
  aBlock[5] = v70;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228712EA8;
  aBlock[3] = &block_descriptor_22_1;
  v71 = _Block_copy(aBlock);

  v72 = v90;
  sub_2287CB0A0();
  v98[0] = v66;
  sub_2287C71F8(&qword_280DE3A28, MEMORY[0x277D85198]);
  v73 = MEMORY[0x277D85198];
  sub_2287C7474(0, &qword_280DE3A10, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_2287C7194(&qword_280DE3A08, &qword_280DE3A10, v73);
  v74 = v92;
  sub_2287CB880();
  MEMORY[0x22AABED90](0, v72, v74, v71);
  _Block_release(v71);

  (*(v94 + 8))(v74, v37);
  (*(v91 + 8))(v72, v93);

  v76 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t BaseFeedPopulationManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  return swift_deallocClassInstance();
}

BOOL sub_2287C5DC4(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = sub_2287CA180();
  v3 = sub_2287CA5B0();
  v4 = sub_2287C62B0(v3, v2);

  return (v4 & 1) == 0;
}

uint64_t sub_2287C5E30(id *a1, id *a2)
{
  v4 = sub_2287C9810();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2287CAA50();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA9E0();
  swift_retain_n();
  v14 = sub_2287CAA40();
  v15 = sub_2287CB610();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v47 = v5;
    v17 = v16;
    v45 = swift_slowAlloc();
    v48 = a2;
    v49 = v45;
    *v17 = 136446978;
    swift_getMetatypeMetadata();
    v18 = sub_2287CB250();
    v46 = v9;
    v20 = sub_2287031D8(v18, v19, &v49);
    v43 = v14;
    v21 = v20;

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    v44 = v10;
    v41[0] = a1[7];
    v22 = [v41[0] profileIdentifier];
    v23 = [v22 identifier];

    sub_2287C97F0();

    sub_2287C71F8(&qword_280DE3468, MEMORY[0x277CC95F0]);
    v24 = sub_2287CBCC0();
    v42 = v15;
    v26 = v25;

    v41[1] = a2;
    v27 = *(v47 + 8);
    v47 += 8;
    v27(v8, v4);
    v28 = sub_2287031D8(v24, v26, &v49);

    *(v17 + 14) = v28;
    *(v17 + 22) = 2080;
    v29 = [v41[0] profileIdentifier];
    v30 = [v29 identifier];

    sub_2287C97F0();

    v31 = sub_2287CBCC0();
    v33 = v32;

    v27(v8, v4);
    v34 = sub_2287031D8(v31, v33, &v49);

    *(v17 + 24) = v34;
    *(v17 + 32) = 2082;
    v48 = a1;

    v35 = sub_2287CB250();
    v37 = sub_2287031D8(v35, v36, &v49);

    *(v17 + 34) = v37;
    v38 = v43;
    _os_log_impl(&dword_2286FF000, v43, v42, "[%{public}s]_%s: Live feeds for profile %s repopulated after save detected; %{public}s", v17, 0x2Au);
    v39 = v45;
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v39, -1, -1);
    MEMORY[0x22AABFD90](v17, -1, -1);

    return (*(v44 + 8))(v13, v46);
  }

  else
  {

    return (*(v10 + 8))(v13, v9);
  }
}

uint64_t sub_2287C62B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2287C9B20();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v25 - v10;
  if (!*(a2 + 16))
  {
    return 1;
  }

  v25 = *(a1 + 16);
  if (!v25)
  {
    return 1;
  }

  v12 = a2;
  v13 = 0;
  v15 = *(v9 + 16);
  v14 = v9 + 16;
  v26 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
  v29 = *(v14 + 56);
  v30 = v15;
  v28 = v12 + 56;
  v16 = (v14 - 8);
  while (1)
  {
    v27 = v13;
    v30(v11, v26 + v29 * v13, v4);
    if (*(v12 + 16))
    {
      v17 = *(v12 + 40);
      sub_2287C71F8(&qword_280DE3430, MEMORY[0x277D11E28]);
      v18 = sub_2287CB1B0();
      v19 = -1 << *(v12 + 32);
      v20 = v18 & ~v19;
      if ((*(v28 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
      {
        break;
      }
    }

LABEL_4:
    v13 = v27 + 1;
    (*v16)(v11, v4);
    if (v13 == v25)
    {
      return 1;
    }
  }

  v21 = ~v19;
  while (1)
  {
    v30(v8, *(v12 + 48) + v20 * v29, v4);
    sub_2287C71F8(&qword_280DE3428, MEMORY[0x277D11E28]);
    v22 = sub_2287CB200();
    v23 = *v16;
    (*v16)(v8, v4);
    if (v22)
    {
      break;
    }

    v20 = (v20 + 1) & v21;
    if (((*(v28 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  v23(v11, v4);
  return 0;
}

uint64_t *sub_2287C658C(uint64_t *a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v98 = a1;
  v83 = *a4;
  v12 = sub_2287CAA50();
  v96 = *(v12 - 8);
  v97 = v12;
  v13 = *(v96 + 64);
  MEMORY[0x28223BE20](v12);
  v84 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = MEMORY[0x277D85248];
  sub_2287C7474(0, &qword_280DE3628, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v85 = &v77 - v17;
  sub_22871EB04();
  v89 = v18;
  v90 = *(v18 - 8);
  v19 = *(v90 + 64);
  MEMORY[0x28223BE20](v18);
  v86 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22871ECE0();
  v92 = v21;
  v93 = *(v21 - 8);
  v22 = *(v93 + 64);
  MEMORY[0x28223BE20](v21);
  v87 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22871ED74();
  v25 = *(v24 - 8);
  v94 = v24;
  v95 = v25;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v91 = &v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_2287CB6B0();
  v81 = *(v82 - 8);
  v28 = *(v81 + 64);
  MEMORY[0x28223BE20](v82);
  v78 = &v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_2287CB670();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v32 = sub_2287CB0E0();
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v101[3] = a5;
  v101[4] = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v101);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_0, a3, a5);
  sub_22871EBD0();
  v79 = v35;
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  a4[14] = sub_2287CAD00();
  a4[15] = 0;
  sub_2287010E4(a1, (a4 + 2));
  a4[7] = a2;
  v77 = sub_22870FDE4();
  v38 = a2;
  v80 = v38;
  *&v100[0] = sub_2287CBE60();
  *(&v100[0] + 1) = v39;
  MEMORY[0x22AABE980](0x656C69666F72705FLL, 0xE90000000000002DLL);
  v40 = [v38 profileIdentifier];
  v41 = [v40 description];
  v42 = sub_2287CB220();
  v44 = v43;

  MEMORY[0x22AABE980](v42, v44);

  sub_2287CB0A0();
  *&v100[0] = MEMORY[0x277D84F90];
  sub_2287C71F8(&qword_280DE39D8, MEMORY[0x277D85230]);
  v45 = MEMORY[0x277D85230];
  sub_2287C7474(0, &qword_280DE39F0, MEMORY[0x277D85230], MEMORY[0x277D83940]);
  sub_2287C7194(&qword_280DE39E8, &qword_280DE39F0, v45);
  sub_2287CB880();
  (*(v81 + 104))(v78, *MEMORY[0x277D85260], v82);
  v46 = sub_2287CB6D0();
  a4[13] = v46;
  sub_2287010E4(v101, (a4 + 8));
  *&v100[0] = a4[14];
  *&v99[0] = v46;
  v47 = sub_2287CB680();
  v48 = v85;
  (*(*(v47 - 8) + 56))(v85, 1, 1, v47);
  sub_2287C71F8(&qword_280DE0120, sub_22871EBD0);
  sub_2287C71F8(&qword_280DE3620, sub_22870FDE4);
  v49 = v46;

  v50 = v86;
  sub_2287CAFF0();
  sub_2287C7634(v48, &qword_280DE3628, v88);

  v51 = swift_allocObject();
  v52 = v80;
  v53 = v83;
  *(v51 + 16) = v80;
  *(v51 + 24) = v53;
  sub_2287C71F8(&qword_280DE02C8, sub_22871EB04);
  v54 = v52;
  v55 = v87;
  v56 = v89;
  sub_2287CAF10();

  (*(v90 + 8))(v50, v56);
  v57 = swift_allocObject();
  swift_weakInit();
  sub_2287010E4(v98, v100);
  sub_2287010E4(v101, v99);
  v58 = swift_allocObject();
  sub_228706AD4(v100, (v58 + 2));
  sub_228706AD4(v99, (v58 + 7));
  v58[12] = v57;
  v58[13] = v54;
  v58[14] = v53;
  sub_22871EE60();
  sub_2287C71F8(&qword_280DE06A0, sub_22871ECE0);
  sub_2287C71F8(&qword_280DE0690, sub_22871EE60);
  v59 = v54;
  v60 = v91;
  v61 = v92;
  sub_2287CB070();

  (*(v93 + 8))(v55, v61);
  v62 = swift_allocObject();
  *(v62 + 16) = v59;
  *(v62 + 24) = v53;
  sub_2287C71F8(&unk_280DE03E8, sub_22871ED74);
  v63 = v59;
  v64 = v94;
  v65 = sub_2287CB050();

  (*(v95 + 8))(v60, v64);
  v66 = a4[15];
  a4[15] = v65;

  v67 = v84;
  sub_2287CA9E0();

  v68 = v67;
  v69 = sub_2287CAA40();
  v70 = sub_2287CB610();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    *&v100[0] = v72;
    *v71 = 136446210;
    *&v99[0] = a4;
    type metadata accessor for BaseFeedPopulationManager();

    v73 = sub_2287CB250();
    v75 = sub_2287031D8(v73, v74, v100);

    *(v71 + 4) = v75;
    _os_log_impl(&dword_2286FF000, v69, v70, "Ready: %{public}s", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v72);
    MEMORY[0x22AABFD90](v72, -1, -1);
    MEMORY[0x22AABFD90](v71, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_0(v98);
  (*(v96 + 8))(v68, v97);
  __swift_destroy_boxed_opaque_existential_0(v101);
  return a4;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2287C7194(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2287C7474(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2287C71F8(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2287C7318(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2287C7360(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2287C73E0()
{
  if (!qword_280DDFFE8)
  {
    v0 = sub_2287CB450();
    if (!v1)
    {
      atomic_store(v0, &qword_280DDFFE8);
    }
  }
}

uint64_t sub_2287C7430(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  result = *a1;
  if (!result)
  {
    sub_2287C758C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2287C7474(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2287C74D8()
{
  if (!qword_280DE0738)
  {
    v0 = MEMORY[0x277CBCEA8];
    sub_2287C758C(255, &qword_280DE0048, MEMORY[0x277CBCEA8]);
    sub_2287C7430(&unk_280DE0050, &qword_280DE0048, v0);
    v1 = sub_2287CAAD0();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE0738);
    }
  }
}

void sub_2287C758C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_2287C73E0();
    v7 = a3(a1, v6, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2287C7634(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2287C7474(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2287C76A4(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1;
  v7 = a2 & 1;
  return v3(&v6);
}

uint64_t objectdestroy_61Tm()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t objectdestroy_51Tm()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2287C7844()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  (*(v0 + 24))();
  return v3(v1, 0);
}

uint64_t sub_2287C7894()
{
  v1 = *(v0 + 32);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = (*(v0 + 24))();
  return v3(v4);
}

uint64_t InteractiveGeneratorToPipelineAdaptor.__allocating_init(queue:pluginInfo:domain:context:commitImmediately:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, int a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  InteractiveGeneratorToPipelineAdaptor.init(queue:pluginInfo:domain:context:commitImmediately:)(a1, a2, a3, a4, a5);
  return v13;
}

uint64_t InteractiveGeneratorToPipelineAdaptor.domain.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthPlatformCore37InteractiveGeneratorToPipelineAdaptor_domain;
  v4 = sub_2287C9E70();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_2287C7A08(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthPlatformCore37InteractiveGeneratorToPipelineAdaptor_publisher;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_2287C7A70()
{
  v1 = OBJC_IVAR____TtC18HealthPlatformCore37InteractiveGeneratorToPipelineAdaptor_publisher;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_2287C7AB8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthPlatformCore37InteractiveGeneratorToPipelineAdaptor_publisher;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *InteractiveGeneratorToPipelineAdaptor.init(queue:pluginInfo:domain:context:commitImmediately:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v70 = a5;
  v81 = a2;
  v82 = a1;
  v71 = *v5;
  v10 = sub_2287CAA50();
  v77 = *(v10 - 8);
  v78 = v10;
  v11 = *(v77 + 64);
  MEMORY[0x28223BE20](v10);
  v75 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287C913C();
  v68 = v13;
  v67 = *(v13 - 8);
  v14 = *(v67 + 64);
  MEMORY[0x28223BE20](v13);
  v66 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2287C9ED0();
  v80 = *(v16 - 8);
  v17 = v80;
  v18 = *(v80 + 64);
  MEMORY[0x28223BE20](v16);
  v69 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2287C9E70();
  v79 = *(v20 - 8);
  v21 = *(v79 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + OBJC_IVAR____TtC18HealthPlatformCore37InteractiveGeneratorToPipelineAdaptor_finishObservation) = 0;
  *(v6 + OBJC_IVAR____TtC18HealthPlatformCore37InteractiveGeneratorToPipelineAdaptor_queue) = a1;
  v25 = *(v24 + 16);
  v83 = v6;
  v25(v6 + OBJC_IVAR____TtC18HealthPlatformCore37InteractiveGeneratorToPipelineAdaptor_domain, a3, v20);
  v26 = *(v17 + 16);
  v26(v6 + OBJC_IVAR____TtC18HealthPlatformCore37InteractiveGeneratorToPipelineAdaptor_context, a4, v16);
  sub_2287010E4(v81, &v85);
  v76 = a3;
  v27 = a3;
  v28 = v80;
  v25(v23, v27, v20);
  v29 = v69;
  v74 = a4;
  (v26)(v69);
  v30 = type metadata accessor for GenerationOperationToGeneratorAdaptor();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  v33 = swift_allocObject();
  *(v33 + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_queue) = v82;
  v34 = *(v79 + 32);
  v72 = v20;
  v35 = v20;
  v36 = v70;
  v34(v33 + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_domain, v23, v35);
  (*(v28 + 32))(v33 + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_context, v29, v16);
  sub_22871AC0C(&v85, v33 + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_pluginInfo);
  *(v83 + OBJC_IVAR____TtC18HealthPlatformCore37InteractiveGeneratorToPipelineAdaptor_adaptor) = v33;
  v73 = v16;
  if (v36)
  {
    v37 = v82;

    v39 = v71;
    v40 = sub_2287C83CC(v38);
  }

  else
  {
    v26(v29, v33 + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_context, v16);
    v41 = v82;
    sub_2287C9E80();
    (*(v28 + 8))(v29, v16);
    sub_2287010E4(v33 + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_pluginInfo, &v88);
    v89 = *(v33 + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_queue);
    v42 = v89;
    sub_228718330();
    v43 = v42;
    v44 = sub_2287CAF40();
    sub_228718384(&v85);
    *&v85 = v44;
    sub_2287C91F8();
    sub_22870D3A8(0, &qword_280DE3358);
    sub_2287C94A8(&qword_280DE1AB8, sub_2287C91F8);

    v45 = v66;
    sub_2287CAF70();

    sub_2287C94A8(&qword_280DE1C48, sub_2287C913C);
    v46 = v68;
    v40 = sub_2287CAF40();
    (*(v67 + 8))(v45, v46);
    v39 = v71;
  }

  *(v83 + OBJC_IVAR____TtC18HealthPlatformCore37InteractiveGeneratorToPipelineAdaptor_publisher) = v40;
  v47 = v75;
  sub_2287CA9D0();

  v48 = sub_2287CAA40();
  v49 = sub_2287CB610();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v84 = v51;
    *&v85 = v39;
    *v50 = 136446722;
    swift_getMetatypeMetadata();
    v52 = sub_2287CB250();
    v54 = sub_2287031D8(v52, v53, &v84);

    *(v50 + 4) = v54;
    *(v50 + 12) = 2082;
    sub_2287010E4(*(v83 + OBJC_IVAR____TtC18HealthPlatformCore37InteractiveGeneratorToPipelineAdaptor_adaptor) + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_pluginInfo, &v85);
    v55 = v87;
    __swift_project_boxed_opaque_existential_1(&v85, v86);
    v56 = *(v55 + 8);
    v57 = sub_2287C9A70();
    v59 = v58;
    __swift_destroy_boxed_opaque_existential_0(&v85);
    v60 = sub_2287031D8(v57, v59, &v84);

    *(v50 + 14) = v60;
    *(v50 + 22) = 2082;
    if (v36)
    {
      v61 = 1702195828;
    }

    else
    {
      v61 = 0x65736C6166;
    }

    if (v36)
    {
      v62 = 0xE400000000000000;
    }

    else
    {
      v62 = 0xE500000000000000;
    }

    v63 = sub_2287031D8(v61, v62, &v84);

    *(v50 + 24) = v63;
    _os_log_impl(&dword_2286FF000, v48, v49, "[%{public}s]: Initialized for plugin %{public}s with commitImmediately=%{public}s", v50, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v51, -1, -1);
    MEMORY[0x22AABFD90](v50, -1, -1);
  }

  (*(v80 + 8))(v74, v73);
  (*(v79 + 8))(v76, v72);
  __swift_destroy_boxed_opaque_existential_0(v81);
  (*(v77 + 8))(v47, v78);
  return v83;
}

uint64_t sub_2287C83CC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2287C9ED0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287C913C();
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = &v22[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1 + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_context, v4);
  sub_2287C9E80();
  (*(v5 + 8))(v8, v4);
  sub_2287010E4(a1 + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_pluginInfo, &v23);
  v24 = *(a1 + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_queue);
  v15 = v24;
  sub_228718330();
  v16 = v15;
  v17 = sub_2287CAF40();
  sub_228718384(v22);
  v22[0] = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = v2;
  sub_2287C91F8();
  sub_22870D3A8(0, &qword_280DE3358);
  sub_2287C94A8(&qword_280DE1AB8, sub_2287C91F8);

  sub_2287CAF70();

  sub_2287C94A8(&qword_280DE1C48, sub_2287C913C);
  v19 = sub_2287CAF40();
  (*(v11 + 8))(v14, v10);
  return v19;
}

uint64_t sub_2287C86D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v40 = a4;
  v39 = sub_2287CAA50();
  v7 = *(v39 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v39);
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - v10;
  v12 = sub_2287C9ED0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  (*(v13 + 16))(v16, a2 + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_context, v12);
  sub_2287C9E80();
  (*(v13 + 8))(v16, v12);
  __swift_project_boxed_opaque_existential_1(v42, v42[3]);
  sub_2287C9DD0();
  __swift_destroy_boxed_opaque_existential_0(v42);
  sub_2287CA9D0();
  swift_bridgeObjectRetain_n();

  v18 = sub_2287CAA40();
  v19 = sub_2287CB610();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v41[0] = v38;
    *v20 = 136446978;
    v42[0] = a3;
    swift_getMetatypeMetadata();
    v21 = sub_2287CB250();
    v23 = sub_2287031D8(v21, v22, v41);

    *(v20 + 4) = v23;
    *(v20 + 12) = 2050;
    v24 = *(v17 + 16);

    *(v20 + 14) = v24;

    *(v20 + 22) = 2082;
    v25 = *(a2 + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_pluginInfo + 32);
    __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_pluginInfo), *(a2 + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_pluginInfo + 24));
    v26 = *(v25 + 8);
    v27 = sub_2287C9A70();
    v29 = sub_2287031D8(v27, v28, v41);

    *(v20 + 24) = v29;
    *(v20 + 32) = 2080;
    v30 = MEMORY[0x22AABEA80](v17, MEMORY[0x277D120A0]);
    v32 = sub_2287031D8(v30, v31, v41);

    *(v20 + 34) = v32;
    _os_log_impl(&dword_2286FF000, v18, v19, "[%{public}s]: %{public}ld changes for plugin %{public}s have been committed immediately; emitting empty generator. Changes: %s", v20, 0x2Au);
    v33 = v38;
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v33, -1, -1);
    MEMORY[0x22AABFD90](v20, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  (*(v7 + 8))(v11, v39);
  v34 = sub_2287C9CE0();
  v35 = MEMORY[0x277D11EA0];
  v36 = v40;
  v40[3] = v34;
  v36[4] = v35;
  __swift_allocate_boxed_opaque_existential_0(v36);
  return sub_2287C9CB0();
}

uint64_t sub_2287C8C44@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_2287C9E70();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287C9450();
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = *a1;
  sub_22870C530();

  sub_2287CADB0();
  sub_2287C94A8(qword_280DE12A8, sub_2287C9450);
  sub_2287CAF40();
  (*(v13 + 8))(v16, v12);
  v17 = OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_domain;
  swift_beginAccess();
  (*(v7 + 16))(v10, a2 + v17, v6);
  v18 = sub_2287C9CE0();
  v19 = MEMORY[0x277D11EA0];
  a3[3] = v18;
  a3[4] = v19;
  __swift_allocate_boxed_opaque_existential_0(a3);
  return sub_2287C9CD0();
}

uint64_t InteractiveGeneratorToPipelineAdaptor.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthPlatformCore37InteractiveGeneratorToPipelineAdaptor_domain;
  v2 = sub_2287C9E70();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC18HealthPlatformCore37InteractiveGeneratorToPipelineAdaptor_context;
  v4 = sub_2287C9ED0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC18HealthPlatformCore37InteractiveGeneratorToPipelineAdaptor_publisher);

  v6 = *(v0 + OBJC_IVAR____TtC18HealthPlatformCore37InteractiveGeneratorToPipelineAdaptor_adaptor);

  return v0;
}

uint64_t InteractiveGeneratorToPipelineAdaptor.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18HealthPlatformCore37InteractiveGeneratorToPipelineAdaptor_domain;
  v2 = sub_2287C9E70();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC18HealthPlatformCore37InteractiveGeneratorToPipelineAdaptor_context;
  v4 = sub_2287C9ED0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC18HealthPlatformCore37InteractiveGeneratorToPipelineAdaptor_publisher);

  v6 = *(v0 + OBJC_IVAR____TtC18HealthPlatformCore37InteractiveGeneratorToPipelineAdaptor_adaptor);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2287C9074()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC18HealthPlatformCore37InteractiveGeneratorToPipelineAdaptor_publisher;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_2287C90C0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18HealthPlatformCore37InteractiveGeneratorToPipelineAdaptor_domain;
  v5 = sub_2287C9E70();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_2287C913C()
{
  if (!qword_280DE1C40)
  {
    sub_2287C91F8();
    sub_22870D3A8(255, &qword_280DE3358);
    sub_2287C94A8(&qword_280DE1AB8, sub_2287C91F8);
    v0 = sub_2287CAB50();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE1C40);
    }
  }
}

void sub_2287C91F8()
{
  if (!qword_280DE1AB0)
  {
    sub_22870C530();
    v0 = sub_2287CACD0();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE1AB0);
    }
  }
}

uint64_t type metadata accessor for InteractiveGeneratorToPipelineAdaptor()
{
  result = qword_280DE20A0;
  if (!qword_280DE20A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2287C92BC()
{
  result = sub_2287C9E70();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_2287C9ED0();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_2287C9450()
{
  if (!qword_280DE12A0)
  {
    sub_22870C530();
    v0 = sub_2287CADA0();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE12A0);
    }
  }
}

uint64_t sub_2287C94A8(unint64_t *a1, void (*a2)(uint64_t))
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