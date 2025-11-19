void sub_244048238()
{
  if (!qword_27EDC46C8)
  {
    sub_2440D06D0();
    v0 = sub_2440D3630();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDC46C8);
    }
  }
}

uint64_t sub_2440482C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC46B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_244048338()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 144))(1);
  }

  return result;
}

void sub_2440483D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_244048428(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC46D8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v31 - v10);
  v35[0] = 10;
  v35[1] = 0xE100000000000000;
  v34 = v35;

  v13 = sub_2440478A4(0x7FFFFFFFFFFFFFFFLL, 1, sub_244048994, v33, a1, a2, v12);
  v14 = sub_2440D0990();
  MEMORY[0x28223BE20](v14);
  *(&v31 - 2) = v11;
  v15 = sub_244047244(sub_2440489EC, &(&v31)[-4], v13);

  v35[0] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC4B00);
  sub_243F5DD50(&qword_27EDC46E0, &unk_27EDC4B00);
  v16 = sub_2440D2F20();
  v18 = v17;

  v19 = sub_243F4DF28();
  sub_243F5F574(v19, v7, &qword_27EDC0A50);
  v20 = sub_2440D11E0();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v7, 1, v20) == 1)
  {

    sub_243F5EED4(v7, &qword_27EDC0A50);
  }

  else
  {

    v22 = sub_2440D11C0();
    v23 = sub_2440D3460();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v32 = v23;
      v25 = v24;
      v26 = swift_slowAlloc();
      v31 = v22;
      v27 = v26;
      v35[0] = v26;
      *v25 = 136315138;
      v28 = sub_243F4E6F8(v16, v18, v35);

      *(v25 + 4) = v28;
      v29 = v31;
      _os_log_impl(&dword_243F48000, v31, v32, "Proximity sensor event:\n%s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x245D58570](v27, -1, -1);
      MEMORY[0x245D58570](v25, -1, -1);
    }

    else
    {
    }

    (*(v21 + 8))(v7, v20);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_244048994(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2440D3A10() & 1;
  }
}

uint64_t sub_244048A10(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E41656369766564;
  v4 = 0xED00006472614364;
  if (v2 != 1)
  {
    v3 = 0x656369766564;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1702060386;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0x6E41656369766564;
  v8 = 0xED00006472614364;
  if (*a2 != 1)
  {
    v7 = 0x656369766564;
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1702060386;
  }

  if (*a2)
  {
    v10 = v8;
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
    v11 = sub_2440D3A10();
  }

  return v11 & 1;
}

uint64_t sub_244048B1C()
{
  sub_2440D3B20();
  sub_2440D30B0();

  return sub_2440D3B50();
}

uint64_t sub_244048BC0()
{
  sub_2440D30B0();
}

uint64_t sub_244048C50()
{
  sub_2440D3B20();
  sub_2440D30B0();

  return sub_2440D3B50();
}

uint64_t sub_244048CF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24404C018();
  *a1 = result;
  return result;
}

void sub_244048D20(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xED00006472614364;
  v5 = 0x6E41656369766564;
  if (v2 != 1)
  {
    v5 = 0x656369766564;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1702060386;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void *sub_244048D90()
{
  v1 = OBJC_IVAR____TtCV19ContactlessReaderUI32PhoneCardGlyphWhiteAnimationView11Coordinator_mica;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_244048DDC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV19ContactlessReaderUI32PhoneCardGlyphWhiteAnimationView11Coordinator_mica;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_244048EDC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV19ContactlessReaderUI32PhoneCardGlyphWhiteAnimationView11Coordinator_micaStates;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void *sub_244048F94()
{
  v1 = OBJC_IVAR____TtCV19ContactlessReaderUI32PhoneCardGlyphWhiteAnimationView11Coordinator_phoneLayer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_244048FE0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV19ContactlessReaderUI32PhoneCardGlyphWhiteAnimationView11Coordinator_phoneLayer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_244049098()
{
  v1 = OBJC_IVAR____TtCV19ContactlessReaderUI32PhoneCardGlyphWhiteAnimationView11Coordinator_loopTimer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_2440490E4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV19ContactlessReaderUI32PhoneCardGlyphWhiteAnimationView11Coordinator_loopTimer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_24404919C()
{
  v1 = OBJC_IVAR____TtCV19ContactlessReaderUI32PhoneCardGlyphWhiteAnimationView11Coordinator_loopElapse;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2440491E0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV19ContactlessReaderUI32PhoneCardGlyphWhiteAnimationView11Coordinator_loopElapse;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_244049290()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v1 - 8);
  v63 = &v54 - v2;
  v3 = sub_2440D05F0();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v58 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v59 = &v54 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v61 = &v54 - v10;
  MEMORY[0x28223BE20](v9);
  v60 = &v54 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1FE0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v54 - v17;
  MEMORY[0x28223BE20](v16);
  v64 = &v54 - v19;
  v57 = OBJC_IVAR____TtCV19ContactlessReaderUI32PhoneCardGlyphWhiteAnimationView11Coordinator_mica;
  *&v0[OBJC_IVAR____TtCV19ContactlessReaderUI32PhoneCardGlyphWhiteAnimationView11Coordinator_mica] = 0;
  v56 = OBJC_IVAR____TtCV19ContactlessReaderUI32PhoneCardGlyphWhiteAnimationView11Coordinator_micaStates;
  *&v0[OBJC_IVAR____TtCV19ContactlessReaderUI32PhoneCardGlyphWhiteAnimationView11Coordinator_micaStates] = 0;
  v55 = OBJC_IVAR____TtCV19ContactlessReaderUI32PhoneCardGlyphWhiteAnimationView11Coordinator_phoneLayer;
  *&v0[OBJC_IVAR____TtCV19ContactlessReaderUI32PhoneCardGlyphWhiteAnimationView11Coordinator_phoneLayer] = 0;
  *&v0[OBJC_IVAR____TtCV19ContactlessReaderUI32PhoneCardGlyphWhiteAnimationView11Coordinator_loopTimer] = 0;
  v20 = v0;
  *&v0[OBJC_IVAR____TtCV19ContactlessReaderUI32PhoneCardGlyphWhiteAnimationView11Coordinator_loopElapse] = 0;
  v62 = sub_244056A6C();
  v21 = *v62;
  v22 = sub_2440D2F80();
  v23 = sub_2440D2F80();
  v24 = [v21 URLForResource:v22 withExtension:v23];

  if (v24)
  {
    sub_2440D05C0();

    (*(v4 + 56))(v18, 0, 1, v3);
  }

  else
  {
    (*(v4 + 56))(v18, 1, 1, v3);
  }

  v25 = v64;
  sub_243FC8CA4(v18, v64);
  sub_243F5F574(v25, v15, &qword_27EDC1FE0);
  v26 = v20;
  if ((*(v4 + 48))(v15, 1, v3) != 1)
  {
    v27 = v60;
    (*(v4 + 32))(v60, v15, v3);
    sub_243F9B2E8(0, &qword_27EDC4740);
    v28 = v61;
    (*(v4 + 16))(v61, v27, v3);
    v29 = sub_2440D2FB0();
    v31 = sub_244049BC8(v28, v29, v30, 0);
    v32 = v57;
    swift_beginAccess();
    v33 = *&v26[v32];
    *&v26[v32] = v31;
    v34 = v31;

    if (v34)
    {
      v35 = [v34 availableStates];

      if (v35)
      {
        v36 = sub_2440D3220();
      }

      else
      {
        v36 = 0;
      }

      v37 = v56;
      swift_beginAccess();
      *&v26[v37] = v36;

      v38 = *&v26[v57];
      if (v38)
      {
        v39 = v38;
        v40 = sub_2440D2F80();
        [v39 transitionToStateWithName_];

        (*(v4 + 8))(v27, v3);
        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  sub_243F5EED4(v15, &qword_27EDC1FE0);
LABEL_12:
  if ((sub_243FC0F94() & 1) == 0)
  {
    sub_243FC137C();
  }

  v41 = *v62;
  v42 = sub_2440D2F80();

  v43 = sub_2440D2F80();
  v44 = [v41 URLForResource:v42 withExtension:v43];

  if (v44)
  {
    v45 = v59;
    sub_2440D05C0();

    sub_243F9B2E8(0, &qword_27EDC4740);
    v46 = v58;
    (*(v4 + 16))(v58, v45, v3);
    v47 = sub_2440D2FB0();
    v49 = sub_244049BC8(v46, v47, v48, 0);
    v50 = [v49 rootLayer];

    (*(v4 + 8))(v45, v3);
    sub_243F5EED4(v64, &qword_27EDC1FE0);
    v51 = v55;
    swift_beginAccess();
    v52 = *&v26[v51];
    *&v26[v51] = v50;
  }

  else
  {
    sub_243F5EED4(v64, &qword_27EDC1FE0);
  }

  v53 = type metadata accessor for PhoneCardGlyphWhiteAnimationView.Coordinator();
  v65.receiver = v26;
  v65.super_class = v53;
  objc_msgSendSuper2(&v65, sel_init);
}

id sub_244049BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = sub_2440D05A0();
  v7 = sub_2440D2F80();

  if (a4)
  {
    v8 = sub_2440D2EA0();
  }

  else
  {
    v8 = 0;
  }

  v17[0] = 0;
  v9 = [swift_getObjCClassFromMetadata() packageWithContentsOfURL:v6 type:v7 options:v8 error:v17];

  v10 = v17[0];
  if (v9)
  {
    v11 = sub_2440D05F0();
    v12 = *(*(v11 - 8) + 8);
    v13 = v10;
    v12(a1, v11);
  }

  else
  {
    v14 = v17[0];
    sub_2440D0550();

    swift_willThrow();
    v15 = sub_2440D05F0();
    (*(*(v15 - 8) + 8))(a1, v15);
  }

  return v9;
}

id sub_244049DB4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhoneCardGlyphWhiteAnimationView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_244049E54(void *a1, uint64_t a2, int a3)
{
  v97 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4748);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v93 - v8;
  v10 = sub_2440D1F70();
  m11 = v100.m11;
  v12 = MEMORY[0x277D85000];
  v13 = (*((*MEMORY[0x277D85000] & **&v100.m11) + 0xC0))(v10);

  [v13 invalidate];
  v96 = v5;
  sub_2440D1F70();
  v14 = v100.m11;
  (*((*v12 & **&v100.m11) + 0xC8))(0);

  LODWORD(v98) = a3;
  v95 = a2;
  if (a3 == 1)
  {
  }

  else
  {
    v15 = sub_2440D3A10();

    if ((v15 & 1) == 0)
    {
      sub_24404C1F8();
      v29 = MEMORY[0x277D85000];
      goto LABEL_7;
    }
  }

  v16 = v96;
  sub_2440D1F70();
  v17 = v100.m11;
  v18 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & **&v100.m11) + 0xE0))(0);

  v19 = sub_2440D1F70();
  v20 = v100.m11;
  v21 = (*((*v18 & **&v100.m11) + 0x78))(v19);

  if (v21)
  {
    v22 = sub_2440D2F80();
    [v21 transitionToStateWithName_];

    sub_2440D1F70();
    v23 = v99.m11;
    v24 = objc_opt_self();
    (*(v6 + 16))(v9, a2, v16);
    v25 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v26 = swift_allocObject();
    (*(v6 + 32))(v26 + v25, v9, v16);
    *(v26 + v25 + v7) = v98;
    *&v100.m21 = sub_24404C3AC;
    *&v100.m22 = v26;
    *&v100.m11 = MEMORY[0x277D85DD0];
    *&v100.m12 = 1107296256;
    *&v100.m13 = sub_243F81670;
    *&v100.m14 = &block_descriptor_27;
    v27 = _Block_copy(&v100);

    v28 = [v24 scheduledTimerWithTimeInterval:1 repeats:v27 block:0.5];
    _Block_release(v27);
    v29 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & **&v23) + 0xC8))(v28);

LABEL_7:
    v30 = &off_278E03000;
    v31 = [v97 layer];
    v32 = &selRef_closeUI;
    v33 = [v31 sublayers];

    if (v33)
    {
      v34 = sub_243F9B2E8(0, &qword_27EDC4750);
      v35 = sub_2440D3220();

      if (v35 >> 62)
      {
        goto LABEL_54;
      }

      if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_10;
      }

LABEL_55:
    }

    v38 = 0;
    v98 = 0;
    while (1)
    {
LABEL_64:
      v61 = [v97 *(v30 + 4032)];
      v62 = [v61 *(v32 + 1872)];

      v94 = v38;
      if (!v62)
      {
        v67 = 0;
        goto LABEL_113;
      }

      v63 = sub_243F9B2E8(0, &qword_27EDC4750);
      v64 = sub_2440D3220();

      if (v64 >> 62)
      {
LABEL_106:
        if (sub_2440D38E0())
        {
LABEL_67:
          if ((v64 & 0xC000000000000001) != 0)
          {
            v65 = MEMORY[0x245D57760](0, v64);
LABEL_70:
            v66 = v65;

            v67 = [v66 *(v32 + 1872)];

            if (!v67)
            {
              goto LABEL_113;
            }

            v64 = sub_2440D3220();

            if (v64 >> 62)
            {
              goto LABEL_110;
            }

            v29 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v29)
            {
              goto LABEL_73;
            }
          }

          else
          {
            if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v65 = *(v64 + 32);
              goto LABEL_70;
            }

            __break(1u);
LABEL_110:
            v29 = sub_2440D38E0();
            if (v29)
            {
LABEL_73:
              v93 = v63;
              v68 = 0;
              v97 = (v64 & 0xC000000000000001);
              v63 = v64 & 0xFFFFFFFFFFFFFF8;
              do
              {
                if (v97)
                {
                  v69 = MEMORY[0x245D57760](v68, v64);
                }

                else
                {
                  if (v68 >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_103;
                  }

                  v69 = *(v64 + 8 * v68 + 32);
                }

                v67 = v69;
                v70 = v68 + 1;
                if (__OFADD__(v68, 1))
                {
                  __break(1u);
LABEL_103:
                  __break(1u);
                  goto LABEL_104;
                }

                v71 = [v69 name];
                if (v71)
                {
                  v72 = v71;
                  v32 = sub_2440D2FB0();
                  v74 = v73;

                  if (v32 == 0x656E6F6870 && v74 == 0xE500000000000000)
                  {

LABEL_91:

                    v32 = &selRef_closeUI;
                    v77 = [v67 sublayers];
                    v29 = MEMORY[0x277D85000];
                    if (!v77)
                    {
                      goto LABEL_113;
                    }

                    v78 = v77;
                    v64 = sub_2440D3220();

                    if (v64 >> 62)
                    {
                      v63 = sub_2440D38E0();
                      if (!v63)
                      {
                        goto LABEL_112;
                      }
                    }

                    else
                    {
                      v63 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
                      if (!v63)
                      {
                        goto LABEL_112;
                      }
                    }

                    v32 = 0;
                    v29 = &selRef_closeUI;
                    while (1)
                    {
                      if ((v64 & 0xC000000000000001) != 0)
                      {
                        v79 = MEMORY[0x245D57760](v32, v64);
                      }

                      else
                      {
                        if (v32 >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
                        {
                          goto LABEL_105;
                        }

                        v79 = *(v64 + 8 * v32 + 32);
                      }

                      v80 = v79;
                      v81 = v32 + 1;
                      if (__OFADD__(v32, 1))
                      {
                        break;
                      }

                      [v79 removeFromSuperlayer];

                      ++v32;
                      if (v81 == v63)
                      {
                        goto LABEL_89;
                      }
                    }

LABEL_104:
                    __break(1u);
LABEL_105:
                    __break(1u);
                    goto LABEL_106;
                  }

                  v76 = sub_2440D3A10();

                  if (v76)
                  {
                    goto LABEL_91;
                  }
                }

                ++v68;
              }

              while (v70 != v29);
              v67 = 0;
LABEL_89:
              v29 = MEMORY[0x277D85000];
              v32 = 0x278E04000;
              goto LABEL_112;
            }
          }

          v67 = 0;
          v29 = MEMORY[0x277D85000];
          goto LABEL_112;
        }
      }

      else if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_67;
      }

      v67 = 0;
LABEL_112:

LABEL_113:
      v82 = sub_2440D1F70();
      v83 = v100.m11;
      v30 = (*((*v29 & **&v100.m11) + 0xA8))(v82);

      if (!v30)
      {

        return;
      }

      if (v67)
      {
        [v67 bounds];
        Height = CGRectGetHeight(v101);
      }

      else
      {
        Height = 1.0;
      }

      [v30 bounds];
      v85 = CGRectGetHeight(v102);
      [v67 addSublayer_];
      if (v67)
      {
        [v67 bounds];
        v86 = CGRectGetWidth(v103) * 0.5;
        [v30 position];
        [v30 setPosition_];
        [v67 bounds];
        CGRectGetHeight(v104);
      }

      else
      {
        [v30 position];
        [v30 setPosition_];
      }

      [v30 position];
      [v30 setPosition_];
      if (!v67)
      {

        goto LABEL_131;
      }

      v87 = [v67 *(v32 + 1872)];
      if (!v87)
      {
        goto LABEL_129;
      }

      v88 = v87;
      sub_243F9B2E8(0, &qword_27EDC4750);
      v89 = sub_2440D3220();

      if (v89 >> 62)
      {
        v92 = sub_2440D38E0();
        v34 = v98;
        if (!v92)
        {
LABEL_133:

          return;
        }
      }

      else
      {
        v34 = v98;
        if (!*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_133;
        }
      }

      if ((v89 & 0xC000000000000001) != 0)
      {
        v90 = MEMORY[0x245D57760](0, v89);
LABEL_128:
        v91 = v90;

        CATransform3DMakeScale(&v100, Height / v85, Height / v85, 1.0);
        CATransform3DRotate(&v99, &v100, 3.14159265, 0.0, 0.0, 1.0);
        [v91 setTransform_];

LABEL_129:
LABEL_131:

        return;
      }

      if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v90 = *(v89 + 32);
        goto LABEL_128;
      }

      __break(1u);
LABEL_136:
      v51 = sub_2440D38E0();
      if (v51)
      {
LABEL_35:
        v32 = 0;
        v35 = v34 & 0xC000000000000001;
        v94 = v51;
        while (1)
        {
          if (v35)
          {
            v52 = MEMORY[0x245D57760](v32, v34);
          }

          else
          {
            if (v32 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_58;
            }

            v52 = *(v34 + 8 * v32 + 32);
          }

          v53 = v52;
          v30 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            break;
          }

          v54 = [v52 name];
          if (v54)
          {
            v55 = v54;
            v56 = sub_2440D2FB0();
            v58 = v57;

            if (v56 == 0x6F72662D64726163 && v58 == 0xEA0000000000746ELL)
            {

              v29 = MEMORY[0x277D85000];
              goto LABEL_51;
            }

            v60 = sub_2440D3A10();

            v29 = MEMORY[0x277D85000];
            if (v60)
            {

LABEL_51:
              v38 = v53;
              CATransform3DMakeRotation(&v100, 3.14159265, 0.0, 0.0, 1.0);
              v99 = v100;
              [v38 setTransform_];

              goto LABEL_63;
            }
          }

          ++v32;
          v47 = v30 == v94;
          v30 = 0x278E03000;
          if (v47)
          {
            goto LABEL_137;
          }
        }

        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        v36 = MEMORY[0x245D57760](0, v35);
LABEL_13:
        v37 = v36;

        v38 = [v37 *(v32 + 1872)];

        if (!v38)
        {
          v98 = 0;
          continue;
        }

        v30 = sub_2440D3220();

        v94 = v34;
        if (v30 >> 62)
        {
LABEL_61:
          v32 = sub_2440D38E0();
          if (v32)
          {
LABEL_16:
            v29 = 0;
            v34 = v30 & 0xC000000000000001;
            v35 = v30 & 0xFFFFFFFFFFFFFF8;
            do
            {
              if (v34)
              {
                v39 = MEMORY[0x245D57760](v29, v30);
              }

              else
              {
                if (v29 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_53;
                }

                v39 = *(v30 + 8 * v29 + 32);
              }

              v40 = v39;
              v41 = v29 + 1;
              if (__OFADD__(v29, 1))
              {
                __break(1u);
LABEL_53:
                __break(1u);
LABEL_54:
                if (!sub_2440D38E0())
                {
                  goto LABEL_55;
                }

LABEL_10:
                if ((v35 & 0xC000000000000001) != 0)
                {
                  goto LABEL_59;
                }

                if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  v36 = *(v35 + 32);
                  goto LABEL_13;
                }

                __break(1u);
                goto LABEL_61;
              }

              v42 = [v39 name];
              if (v42)
              {
                v98 = v40;
                v43 = v42;
                v44 = sub_2440D2FB0();
                v46 = v45;

                v47 = v44 == 1685217635 && v46 == 0xE400000000000000;
                if (v47)
                {

                  v40 = v98;
LABEL_32:
                  v32 = &selRef_closeUI;
                  v49 = [v40 sublayers];
                  v29 = MEMORY[0x277D85000];
                  v30 = 0x278E03000;
                  if (!v49)
                  {
                    v38 = 0;
                    goto LABEL_64;
                  }

                  v50 = v49;
                  v34 = sub_2440D3220();

                  if (v34 >> 62)
                  {
                    goto LABEL_136;
                  }

                  v51 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (!v51)
                  {
                    goto LABEL_137;
                  }

                  goto LABEL_35;
                }

                v48 = sub_2440D3A10();

                v40 = v98;
                if (v48)
                {

                  goto LABEL_32;
                }
              }

              ++v29;
            }

            while (v41 != v32);
          }
        }

        else
        {
          v32 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v32)
          {
            goto LABEL_16;
          }
        }

        v38 = 0;
        v98 = 0;
        v29 = MEMORY[0x277D85000];
LABEL_63:
        v32 = &selRef_closeUI;
        v30 = &off_278E03000;
      }

      else
      {
LABEL_137:

        v38 = 0;
        v32 = 0x278E04000;
      }
    }
  }

  __break(1u);
}

id sub_24404AD5C@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for PhoneCardGlyphWhiteAnimationView.Coordinator()) init];
  *a1 = result;
  return result;
}

uint64_t sub_24404AD94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24404CD54();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_24404ADF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24404CD54();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_24404AE5C()
{
  sub_24404CD54();
  sub_2440D1CE0();
  __break(1u);
}

uint64_t sub_24404AE84@<X0>(int a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = a1;
  v38 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC47A0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v34 - v14;
  v41 = sub_2440D2680();
  v40 = sub_2440D1860();
  v39 = sub_2440D20B0();
  LOBYTE(v42) = v8;
  v43 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC47A8);
  sub_2440D2820();
  v37 = v49;
  LOBYTE(v42) = a3;
  v43 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC47B0);
  sub_2440D2820();
  v36 = v49;
  sub_2440D2B00();
  sub_2440D1560();
  v34 = v44;
  v35 = v42;
  v16 = v46;
  v17 = v47;
  v49 = v43;
  v48 = v45;
  sub_2440D2C40();
  v19 = v18;
  v21 = v20;
  v22 = v49;
  v23 = v48;
  *v15 = sub_2440D1C20();
  *(v15 + 1) = 0x4030000000000000;
  v15[16] = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC47B8);
  sub_24404B124(v38, a2, a3, a4, &v15[*(v24 + 44)]);
  sub_243F5F574(v15, v13, &qword_27EDC47A0);
  v25 = v40;
  *a5 = v41;
  *(a5 + 8) = v25;
  *(a5 + 16) = v39;
  LOBYTE(v25) = v36;
  *(a5 + 24) = v37;
  *(a5 + 25) = v25;
  v26 = v34;
  *(a5 + 32) = v35;
  *(a5 + 40) = v22;
  *(a5 + 48) = v26;
  *(a5 + 56) = v23;
  *(a5 + 64) = v16;
  *(a5 + 72) = v17;
  __asm { FMOV            V0.2D, #2.0 }

  *(a5 + 80) = _Q0;
  *(a5 + 96) = v19;
  *(a5 + 104) = v21;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC47C0);
  sub_243F5F574(v13, a5 + *(v32 + 64), &qword_27EDC47A0);

  sub_243F5EED4(v15, &qword_27EDC47A0);
  sub_243F5EED4(v13, &qword_27EDC47A0);
}

uint64_t sub_24404B124@<X0>(char a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v44 = a4;
  v43 = a3;
  v51 = a5;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC47C8);
  v50 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v46 = v39 - v7;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC47D0) - 8;
  v8 = MEMORY[0x28223BE20](v47);
  v49 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v45 = v39 - v10;
  v41 = sub_2440D1D90();
  v53 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC47D8);
  v13 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v15 = v39 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC47E0);
  v17 = v16 - 8;
  v18 = MEMORY[0x28223BE20](v16);
  v42 = v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v52 = v39 - v20;
  sub_2440D1B70();
  v54 = a1;
  v55 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC47A8);
  sub_2440D2840();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC47E8);
  sub_24404CB40();
  sub_24404CB94();
  sub_2440D2900();
  sub_2440D1D80();
  v39[1] = MEMORY[0x277CDF038];
  sub_243F5DD50(&qword_27EDC4800, &qword_27EDC47D8);
  v21 = v52;
  v22 = v40;
  v23 = v41;
  sub_2440D23A0();
  v24 = *(v53 + 8);
  v53 += 8;
  v39[0] = v24;
  v24(v12, v23);
  (*(v13 + 8))(v15, v22);
  v25 = sub_2440D20A0();
  v26 = v21 + *(v17 + 44);
  *v26 = v25;
  *(v26 + 8) = 0u;
  *(v26 + 24) = 0u;
  *(v26 + 40) = 1;
  sub_2440D1B70();
  v54 = v43;
  v55 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC47B0);
  sub_2440D2840();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4808);
  sub_24404CC58();
  sub_243F5DD50(&qword_27EDC4818, &qword_27EDC4808);
  v27 = v46;
  sub_2440D2900();
  sub_2440D1D80();
  sub_243F5DD50(&qword_27EDC4820, &qword_27EDC47C8);
  v28 = v45;
  v29 = v48;
  sub_2440D23A0();
  (v39[0])(v12, v23);
  (*(v50 + 8))(v27, v29);
  v30 = sub_2440D20A0();
  v31 = v28 + *(v47 + 44);
  *v31 = v30;
  *(v31 + 8) = 0u;
  *(v31 + 24) = 0u;
  *(v31 + 40) = 1;
  v32 = v52;
  v33 = v42;
  sub_243F5F574(v52, v42, &qword_27EDC47E0);
  v34 = v49;
  sub_243F5F574(v28, v49, &qword_27EDC47D0);
  v35 = v51;
  *v51 = 0;
  *(v35 + 8) = 1;
  v36 = v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4828);
  sub_243F5F574(v33, v36 + *(v37 + 48), &qword_27EDC47E0);
  sub_243F5F574(v34, v36 + *(v37 + 64), &qword_27EDC47D0);
  sub_243F5EED4(v28, &qword_27EDC47D0);
  sub_243F5EED4(v32, &qword_27EDC47E0);
  sub_243F5EED4(v34, &qword_27EDC47D0);
  return sub_243F5EED4(v33, &qword_27EDC47E0);
}

uint64_t sub_24404B818()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4768);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4840);
  sub_243F5DD50(&qword_27EDC4848, &qword_27EDC4768);
  sub_24404CB40();
  swift_getOpaqueTypeConformance2();
  sub_24404CCAC();
  return sub_2440D29C0();
}

uint64_t sub_24404B94C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_243F4EF64();
  result = sub_2440D2310();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;
  *(a2 + 33) = 1;
  return result;
}

uint64_t sub_24404BA04@<X0>(char *a1@<X8>)
{
  v31 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4830);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v5;
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v28 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v28 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v28 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v28 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v28 - v18;
  *v19 = xmmword_2440E22D0;
  v19[16] = 0;
  v20 = MEMORY[0x277D84F90];
  *(v19 + 3) = MEMORY[0x277D84F90];
  *(v19 + 16) = 256;
  *v17 = xmmword_2440E22E0;
  v17[16] = 0;
  *(v17 + 3) = v20;
  *(v17 + 16) = 257;
  *v14 = xmmword_2440E22F0;
  v14[16] = 0;
  *(v14 + 3) = v20;
  *(v14 + 16) = 258;
  v21 = *(v2 + 16);
  v30 = v11;
  v21(v11, &v28 - v18, v1);
  v21(v8, v17, v1);
  v21(v5, v14, v1);
  v22 = v31;
  v21(v31, v11, v1);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4838);
  v21(&v22[*(v23 + 48)], v8, v1);
  v24 = &v22[*(v23 + 64)];
  v25 = v29;
  v21(v24, v29, v1);
  v26 = *(v2 + 8);
  v26(v14, v1);
  v26(v17, v1);
  v26(v19, v1);
  v26(v25, v1);
  v26(v8, v1);
  return (v26)(v30, v1);
}

uint64_t sub_24404BD10@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 1);
  v4 = *(v1 + 3);
  v5 = v1[16];
  v6 = *v1;
  *a1 = sub_2440D2B00();
  a1[1] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4788);
  sub_24404AE84(v6, v3, v5, v4, a1 + *(v8 + 44));
  v9 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4790) + 36));
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4798) + 28);
  v11 = *MEMORY[0x277CDF3C0];
  v12 = sub_2440D1410();
  (*(*(v12 - 8) + 104))(v9 + v10, v11, v12);
  result = swift_getKeyPath();
  *v9 = result;
  return result;
}

uint64_t sub_24404BE14@<X0>(uint64_t a1@<X8>)
{
  sub_2440D2810();
  result = sub_2440D2810();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  return result;
}

uint64_t sub_24404BE94(uint64_t a1)
{
  v2 = sub_24404CD00();

  return MEMORY[0x28212D8F0](a1, v2);
}

uint64_t sub_24404BEE0(uint64_t a1)
{
  v2 = sub_24404CD00();

  return MEMORY[0x28212D8E0](a1, v2);
}

uint64_t sub_24404BF50(uint64_t a1)
{
  v2 = sub_2440D1410();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_2440D1960();
}

uint64_t sub_24404C018()
{
  v0 = sub_2440D3970();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

void sub_24404C088()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4748);
  v1 = sub_2440D1F70();
  v2 = (*((*MEMORY[0x277D85000] & **&v8.m11) + 0x78))(v1);

  if (v2)
  {
    v3 = v2;
    v4 = sub_2440D2F80();
    [v3 transitionToStateWithName_];

    v5 = [v3 rootLayer];
    if (v5)
    {
      v6 = v5;
      CATransform3DMakeScale(&v8, 1.0, -1.0, 1.0);
      [v6 setTransform_];
      v7 = [v0 layer];
      [v7 addSublayer_];

      v3 = v7;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_24404C1F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4748);
  v0 = sub_2440D1F70();
  v1 = (*((*MEMORY[0x277D85000] & *v3) + 0x78))(v0);

  if (v1)
  {
    v2 = sub_2440D2F80();

    [v1 transitionToStateWithName_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24404C314()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4748);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

void sub_24404C3AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4748);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4748);
  sub_2440D1F70();
  v0 = v18;
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v18) + 0xE8))(v17);
  if (__OFADD__(*v3, 1))
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  ++*v3;
  v2(v17, 0);

  v4 = sub_2440D1F70();
  v5 = v17[0];
  v6 = (*((*v1 & *v17[0]) + 0xD8))(v4);

  if (v6 > 9)
  {
    sub_2440D1F70();
    v7 = v17[0];
    (*((*v1 & *v17[0]) + 0xE0))(0);

    return;
  }

  v8 = sub_2440D1F70();
  v9 = v17[0];
  v10 = (*((*v1 & *v17[0]) + 0xD8))(v8);

  if (v10 > 8)
  {
    v11 = sub_2440D1F70();
    v12 = v17[0];
    v13 = (*((*v1 & *v17[0]) + 0x78))(v11);

    if (v13)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v14 = sub_2440D1F70();
  v15 = v17[0];
  v13 = (*((*v1 & *v17[0]) + 0x78))(v14);

  if (!v13)
  {
LABEL_12:
    __break(1u);
    return;
  }

LABEL_8:
  v16 = sub_2440D2F80();
  [v13 transitionToStateWithName_];
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24404C6AC()
{
  result = qword_27EDC4758;
  if (!qword_27EDC4758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4758);
  }

  return result;
}

unint64_t sub_24404C754()
{
  result = qword_27EDC4770;
  if (!qword_27EDC4770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4770);
  }

  return result;
}

unint64_t sub_24404C7AC()
{
  result = qword_27EDC4778;
  if (!qword_27EDC4778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4778);
  }

  return result;
}

unint64_t sub_24404C804()
{
  result = qword_27EDC4780;
  if (!qword_27EDC4780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4780);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhoneCardGlyphWhiteAnimationView(unsigned __int16 *a1, unsigned int a2)
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
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for PhoneCardGlyphWhiteAnimationView(_WORD *result, unsigned int a2, unsigned int a3)
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24404CA10()
{
  result = qword_27EDD03C0[0];
  if (!qword_27EDD03C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EDD03C0);
  }

  return result;
}

uint64_t sub_24404CA64(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_24404CAC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_24404CB40()
{
  result = qword_27EDC47F0;
  if (!qword_27EDC47F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC47F0);
  }

  return result;
}

unint64_t sub_24404CB94()
{
  result = qword_27EDC47F8;
  if (!qword_27EDC47F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC47E8);
    sub_24404CB40();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC47F8);
  }

  return result;
}

unint64_t sub_24404CC58()
{
  result = qword_27EDC4810;
  if (!qword_27EDC4810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4810);
  }

  return result;
}

unint64_t sub_24404CCAC()
{
  result = qword_27EDC4850;
  if (!qword_27EDC4850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4850);
  }

  return result;
}

unint64_t sub_24404CD00()
{
  result = qword_27EDC4858;
  if (!qword_27EDC4858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4858);
  }

  return result;
}

unint64_t sub_24404CD54()
{
  result = qword_27EDC4860;
  if (!qword_27EDC4860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4860);
  }

  return result;
}

unint64_t sub_24404CDAC()
{
  result = qword_27EDC4868;
  if (!qword_27EDC4868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4790);
    sub_243F5DD50(&qword_27EDC4870, &qword_27EDC4878);
    sub_243F5DD50(&qword_27EDC4880, &qword_27EDC4798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4868);
  }

  return result;
}

void sub_24404CE9C(void *a1)
{
  v2 = [a1 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = v2;
  [v2 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v28.origin.x = v5;
  v28.origin.y = v7;
  v28.size.width = v9;
  v28.size.height = v11;
  Width = CGRectGetWidth(v28);
  v13 = [a1 view];
  if (!v13)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v14 = v13;
  [v13 frame];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v29.origin.x = v16;
  v29.origin.y = v18;
  v29.size.width = v20;
  v29.size.height = v22;
  Height = CGRectGetHeight(v29);
  if (Height >= Width)
  {
    return;
  }

  v24 = Height;
  v25 = [a1 view];
  if (!v25)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v26 = v25;
  [v25 setFrame_];
}

double sub_24404D02C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC25C0);
  sub_2440D2820();
  return v1;
}

uint64_t sub_24404D0EC(uint64_t a1)
{
  v2 = (v1 + *(a1 + 68));
  v3 = *v2;
  v4 = v2[1];
  LOBYTE(v2) = *(v2 + 16);
  v8 = v3;
  v9 = v4;
  v10 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE8);
  MEMORY[0x245D56840](&v7, v5);
  return v7;
}

uint64_t sub_24404D15C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t (*a5)(uint64_t)@<X5>, uint64_t a6@<X7>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, uint64_t a10)
{
  v18 = type metadata accessor for CenteredText();
  v19 = (a7 + v18[16]);
  v20 = sub_2440D2810();
  *v19 = a6;
  v19[1] = a10;
  v21 = a4(v20);
  result = a5(v21);
  *(a7 + v18[14]) = a8;
  *(a7 + v18[15]) = a9;
  v23 = a7 + v18[17];
  *v23 = a1;
  *(v23 + 8) = a2;
  *(v23 + 16) = a3;
  return result;
}

uint64_t sub_24404D27C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v30 = a2;
  v28 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0940);
  sub_2440D1810();
  sub_2440D1810();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0220);
  sub_2440D1810();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0D40);
  sub_2440D1810();
  v26 = *(a1 + 24);
  sub_2440D1810();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0810);
  sub_2440D1810();
  sub_2440D1810();
  sub_2440D3630();
  swift_getTupleTypeMetadata2();
  sub_2440D2C00();
  WitnessTable = swift_getWitnessTable();
  v3 = sub_2440D28A0();
  v24 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &WitnessTable - v4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0930);
  v6 = sub_2440D1810();
  v27 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &WitnessTable - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4888);
  v9 = sub_2440D1810();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &WitnessTable - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v25 = &WitnessTable - v14;
  v31 = v28;
  v32 = v26;
  v33 = *(a1 + 32);
  v34 = v29;
  sub_2440D1B30();
  sub_2440D2890();
  v15 = swift_getWitnessTable();
  sub_2440D2450();
  (*(v24 + 8))(v5, v3);
  v39 = sub_24404D02C();
  v16 = sub_243F5DD50(&qword_27EDC0928, &qword_27EDC0930);
  v37 = v15;
  v38 = v16;
  v17 = swift_getWitnessTable();
  sub_24404EA7C();
  sub_2440D2600();
  (*(v27 + 8))(v8, v6);
  v18 = sub_243F5DD50(&qword_27EDC4898, &qword_27EDC4888);
  v35 = v17;
  v36 = v18;
  swift_getWitnessTable();
  v19 = *(v10 + 16);
  v20 = v25;
  v19(v25, v13, v9);
  v21 = *(v10 + 8);
  v21(v13, v9);
  v19(v30, v20, v9);
  return (v21)(v20, v9);
}

uint64_t sub_24404D7E4@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v111 = a5;
  v101 = a6;
  v102 = a3;
  v9 = sub_2440D1810();
  v85 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v82 = &v80 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0810);
  v108 = v9;
  v11 = sub_2440D1810();
  v87 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v84 = &v80 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0D40);
  v107 = v11;
  v13 = sub_2440D1810();
  v96 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v86 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v83 = &v80 - v16;
  v98 = v17;
  v18 = sub_2440D3630();
  v99 = *(v18 - 8);
  v100 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v106 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v97 = &v80 - v21;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0940);
  v22 = sub_2440D1810();
  v94 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v88 = &v80 - v23;
  v92 = sub_2440D1810();
  v95 = *(v92 - 1);
  MEMORY[0x28223BE20](v92);
  v90 = &v80 - v24;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0220);
  v93 = sub_2440D1810();
  v103 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v91 = &v80 - v25;
  v105 = sub_2440D1810();
  v110 = *(v105 - 8);
  v26 = MEMORY[0x28223BE20](v105);
  v104 = &v80 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v109 = &v80 - v28;
  sub_2440D2610();
  sub_2440D2100();
  v80 = a2;
  v128 = a2;
  v129 = v102;
  v130 = a4;
  v131 = v111;
  v29 = type metadata accessor for CenteredText();
  v89 = v29;
  v30 = sub_243F5DD50(&qword_27EDC0938, &qword_27EDC0940);
  v81 = a4;
  v127[14] = a4;
  v127[15] = v30;
  WitnessTable = swift_getWitnessTable();
  v32 = v90;
  v33 = v88;
  sub_2440D25A0();
  (*(v94 + 8))(v33, v22);
  LOBYTE(v128) = sub_24404D0EC(v29) & 1;
  v127[12] = WitnessTable;
  v127[13] = MEMORY[0x277CDF918];
  v34 = v92;
  v35 = swift_getWitnessTable();
  v36 = v91;
  sub_2440D2600();
  (*(v95 + 1))(v32, v34);
  v37 = sub_243F5DD50(&qword_27EDC0218, &qword_27EDC0220);
  v127[10] = v35;
  v127[11] = v37;
  v38 = v93;
  v39 = swift_getWitnessTable();
  v40 = v104;
  sub_2440D23F0();
  (*(v103 + 8))(v36, v38);
  v41 = sub_243F5DD50(&qword_27EDC0D38, &qword_27EDC0D40);
  v127[8] = v39;
  v127[9] = v41;
  v103 = v41;
  v42 = v105;
  v94 = swift_getWitnessTable();
  v43 = v110;
  v92 = *(v110 + 16);
  v93 = v110 + 16;
  (v92)(v109, v40, v42);
  v44 = v43;
  v45 = v89;
  v46 = *(v44 + 8);
  v110 = v44 + 8;
  v95 = v46;
  (v46)(v40, v42);
  if (sub_24404D0EC(v45))
  {
    v47 = v82;
    v48 = v102;
    v49 = v111;
    v50 = sub_2440D2590();
    v91 = &v80;
    MEMORY[0x28223BE20](v50);
    v51 = v81;
    *(&v80 - 6) = v80;
    *(&v80 - 5) = v48;
    *(&v80 - 4) = v51;
    *(&v80 - 3) = v49;
    *(&v80 - 2) = a1;
    sub_2440D2B00();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC48A0);
    v116 = v49;
    v117 = MEMORY[0x277CDF918];
    v52 = v108;
    v53 = swift_getWitnessTable();
    sub_243F5DD50(&qword_27EDC48A8, &qword_27EDC48A0);
    v54 = v84;
    sub_2440D2350();
    (*(v85 + 8))(v47, v52);
    v55 = sub_243F5DD50(&qword_27EDC0808, &qword_27EDC0810);
    v114 = v53;
    v115 = v55;
    v56 = v107;
    v57 = swift_getWitnessTable();
    v58 = v86;
    sub_2440D23F0();
    (*(v87 + 8))(v54, v56);
    v112 = v57;
    v113 = v103;
    v59 = v98;
    swift_getWitnessTable();
    v60 = v96;
    v61 = *(v96 + 16);
    v62 = v83;
    v61(v83, v58, v59);
    v63 = *(v60 + 8);
    v63(v58, v59);
    v61(v58, v62, v59);
    v63(v62, v59);
    v64 = v106;
    (*(v60 + 32))(v106, v58, v59);
    (*(v60 + 56))(v64, 0, 1, v59);
  }

  else
  {
    (*(v96 + 56))(v106, 1, 1, v98);
    v127[6] = v111;
    v127[7] = MEMORY[0x277CDF918];
    v65 = swift_getWitnessTable();
    v66 = sub_243F5DD50(&qword_27EDC0808, &qword_27EDC0810);
    v127[4] = v65;
    v127[5] = v66;
    v127[2] = swift_getWitnessTable();
    v127[3] = v103;
    swift_getWitnessTable();
  }

  v68 = v99;
  v67 = v100;
  v69 = *(v99 + 16);
  v70 = v97;
  v71 = v106;
  v69(v97, v106, v100);
  v102 = *(v68 + 8);
  (v102)(v71, v67);
  v72 = v104;
  v73 = v105;
  (v92)(v104, v109, v105);
  v128 = v72;
  v69(v71, v70, v67);
  v129 = v71;
  v127[0] = v73;
  v127[1] = v67;
  v125 = v94;
  v123 = v111;
  v124 = MEMORY[0x277CDF918];
  v74 = swift_getWitnessTable();
  v75 = sub_243F5DD50(&qword_27EDC0808, &qword_27EDC0810);
  v121 = v74;
  v122 = v75;
  v119 = swift_getWitnessTable();
  v120 = v103;
  v118 = swift_getWitnessTable();
  v126 = swift_getWitnessTable();
  sub_24404E8AC(&v128, 2uLL, v127);
  v76 = v70;
  v77 = v102;
  (v102)(v76, v67);
  v78 = v95;
  v95(v109, v73);
  (v77)(v71, v67);
  return v78(v72, v73);
}

uint64_t sub_24404E500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (**a6)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)@<X8>)
{
  v20 = a6;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v11 = type metadata accessor for CenteredText();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - v13;
  (*(v12 + 16))(&v19 - v13, a1, v11);
  v15 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a2;
  *(v16 + 3) = a3;
  *(v16 + 4) = a4;
  *(v16 + 5) = a5;
  result = (*(v12 + 32))(&v16[v15], v14, v11);
  v18 = v20;
  *v20 = sub_24404F548;
  v18[1] = v16;
  return result;
}

uint64_t sub_24404E660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v32 = a5;
  v33 = a6;
  v30 = a3;
  v31 = a4;
  v29 = a2;
  v34 = a1;
  v12 = sub_2440D1670();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a3;
  v36 = a4;
  v37 = a5;
  v38 = a6;
  v16 = type metadata accessor for CenteredText();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v27 - v19;
  v28 = sub_2440D2690();
  (*(v17 + 16))(v20, v29, v16);
  (*(v13 + 16))(v15, v34, v12);
  v21 = (*(v17 + 80) + 48) & ~*(v17 + 80);
  v22 = (v18 + *(v13 + 80) + v21) & ~*(v13 + 80);
  v23 = swift_allocObject();
  v24 = v31;
  *(v23 + 2) = v30;
  *(v23 + 3) = v24;
  v25 = v33;
  *(v23 + 4) = v32;
  *(v23 + 5) = v25;
  (*(v17 + 32))(&v23[v21], v20, v16);
  result = (*(v13 + 32))(&v23[v22], v15, v12);
  *a7 = v28;
  a7[1] = sub_24404F7E0;
  a7[2] = v23;
  a7[3] = 0;
  a7[4] = 0;
  return result;
}

uint64_t sub_24404E8AC(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_2440D2C10();
}

unint64_t sub_24404EA7C()
{
  result = qword_27EDC4890;
  if (!qword_27EDC4890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4890);
  }

  return result;
}

void sub_24404EB20()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_24404F100(319, &qword_27EDC2640, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_24404F100(319, &qword_27EDC0118, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24404EC2C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = *(*(v6 - 8) + 64) + 7;
  if (v10 >= a2)
  {
    goto LABEL_30;
  }

  v13 = ((((((((v12 + (v11 & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 17;
  v14 = (a2 - v10 + 255) >> 8;
  if (v13 <= 3)
  {
    v15 = v14 + 1;
  }

  else
  {
    v15 = 2;
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

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *&a1[v13];
      if (!*&a1[v13])
      {
        goto LABEL_30;
      }
    }

    else
    {
      v18 = *&a1[v13];
      if (!v18)
      {
        goto LABEL_30;
      }
    }
  }

  else if (!v17 || (v18 = a1[v13]) == 0)
  {
LABEL_30:
    if (v5 == v10)
    {
      return (*(v4 + 48))();
    }

    v22 = &a1[v11] & ~v9;
    if (v8 == v10)
    {
      return (*(v7 + 48))(v22, v8, v6);
    }

    v23 = *(((((((((v12 + v22) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v23 >= 0xFFFFFFFF)
    {
      LODWORD(v23) = -1;
    }

    return (v23 + 1);
  }

  v20 = (v18 - 1) << (8 * v13);
  if (v13 <= 3)
  {
    v21 = *a1;
  }

  else
  {
    v20 = 0;
    v21 = *a1;
  }

  return v10 + (v21 | v20) + 1;
}

void sub_24404EE3C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a4 + 24) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 64);
  v11 = *(v8 + 80);
  v12 = *(v8 + 64);
  if (v9 <= v7)
  {
    v13 = *(v6 + 84);
  }

  else
  {
    v13 = *(v8 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  v14 = v10 + v11;
  v15 = (v10 + v11) & ~v11;
  v16 = v12 + 7;
  v17 = ((((((((v12 + 7 + v15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v13 >= a3)
  {
    v21 = 0;
    if (v13 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v18 = (a3 - v13 + 255) >> 8;
    if (v17 <= 3)
    {
      v19 = v18 + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    if (v13 >= a2)
    {
LABEL_19:
      if (v21 > 1)
      {
        if (v21 != 2)
        {
          *&a1[v17] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *&a1[v17] = 0;
      }

      else if (v21)
      {
        a1[v17] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      if (!a2)
      {
        return;
      }

LABEL_34:
      if (v7 == v13)
      {
        v24 = *(v6 + 56);

        v24();
      }

      else
      {
        v25 = &a1[v14] & ~v11;
        if (v9 == v13)
        {
          v26 = *(v8 + 56);

          v26(v25);
        }

        else
        {
          v27 = (((((((v16 + v25) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
          if ((a2 & 0x80000000) != 0)
          {
            *(v27 + 16) = 0;
            *v27 = a2 & 0x7FFFFFFF;
            *(v27 + 8) = 0;
          }

          else
          {
            *(v27 + 8) = a2 - 1;
          }
        }
      }

      return;
    }
  }

  v22 = ~v13 + a2;
  bzero(a1, v17);
  if (v17 <= 3)
  {
    v23 = (v22 >> 8) + 1;
  }

  else
  {
    v23 = 1;
  }

  if (v17 <= 3)
  {
    *a1 = v22;
    if (v21 > 1)
    {
LABEL_29:
      if (v21 == 2)
      {
        *&a1[v17] = v23;
      }

      else
      {
        *&a1[v17] = v23;
      }

      return;
    }
  }

  else
  {
    *a1 = v22;
    if (v21 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v21)
  {
    a1[v17] = v23;
  }
}

void sub_24404F100(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_24404F150()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0940);
  sub_2440D1810();
  sub_2440D1810();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0220);
  sub_2440D1810();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0D40);
  sub_2440D1810();
  sub_2440D1810();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0810);
  sub_2440D1810();
  sub_2440D1810();
  sub_2440D3630();
  swift_getTupleTypeMetadata2();
  sub_2440D2C00();
  swift_getWitnessTable();
  sub_2440D28A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0930);
  sub_2440D1810();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4888);
  sub_2440D1810();
  swift_getWitnessTable();
  sub_243F5DD50(&qword_27EDC0928, &qword_27EDC0930);
  swift_getWitnessTable();
  sub_243F5DD50(&qword_27EDC4898, &qword_27EDC4888);
  return swift_getWitnessTable();
}

uint64_t sub_24404F3F0()
{
  v1 = *(v0 + 16);
  v5 = *(v0 + 24);
  v2 = (type metadata accessor for CenteredText() - 8);
  v3 = v0 + ((*(*v2 + 80) + 48) & ~*(*v2 + 80));
  (*(*(v1 - 8) + 8))(v3, v1);
  (*(*(v5 - 8) + 8))(v3 + v2[15]);

  return swift_deallocObject();
}

uint64_t sub_24404F548@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(type metadata accessor for CenteredText() - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_24404E660(a1, v10, v5, v6, v7, v8, a2);
}

uint64_t sub_24404F604()
{
  v1 = *(v0 + 16);
  v9 = *(v0 + 24);
  v2 = (type metadata accessor for CenteredText() - 8);
  v3 = (*(*v2 + 80) + 48) & ~*(*v2 + 80);
  v4 = *(*v2 + 64);
  v5 = sub_2440D1670();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(*(v1 - 8) + 8))(v0 + v3, v1);
  (*(*(v9 - 8) + 8))(v0 + v3 + v2[15]);

  (*(v6 + 8))(v0 + v7, v5);
  return swift_deallocObject();
}

uint64_t sub_24404F7E0()
{
  type metadata accessor for CenteredText();
  sub_2440D1670();
  sub_2440D1650();
  type metadata accessor for CenteredText();
  return sub_24404D08C();
}

uint64_t ProxCardSuppressor.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x277D54C30]) init];
  return v0;
}

uint64_t ProxCardSuppressor.init()()
{
  *(v0 + 16) = 0;
  v1 = [objc_allocWithZone(MEMORY[0x277D54C30]) init];
  v2 = *(v0 + 16);
  *(v0 + 16) = v1;

  return v0;
}

id *ProxCardSuppressor.deinit()
{
  (*(*v0 + 16))();

  return v0;
}

uint64_t ProxCardSuppressor.__deallocating_deinit()
{
  (*(*v0 + 16))();

  return swift_deallocClassInstance();
}

uint64_t sub_24404FA28()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_2440D3390();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v4;
  sub_243F54830(0, 0, v2, &unk_2440E28C0, v5);
}

uint64_t sub_24404FB48()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24404FB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  *(v4 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24404FC1C, 0, 0);
}

uint64_t sub_24404FC1C()
{
  v1 = *(v0 + 48);
  v2 = sub_243F4E038();
  sub_243F5F574(v2, v1, &qword_27EDC0A50);
  v3 = sub_2440D11E0();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    sub_243F5EED4(*(v0 + 48), &qword_27EDC0A50);
  }

  else
  {
    v5 = sub_2440D11C0();
    v6 = sub_2440D3490();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_243F48000, v5, v6, "ProxCard - Start suppression", v7, 2u);
      MEMORY[0x245D58570](v7, -1, -1);
    }

    v8 = *(v0 + 48);

    (*(v4 + 8))(v8, v3);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = *(Strong + 16);
    v11 = v10;

    if (v10)
    {
      v12 = sub_2440D2F80();
      [v11 activateAssertionWithIdentifier_];
    }
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_24404FE30()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24404FE70()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_243F5F610;

  return sub_24404FB80(v3, v4, v5, v2);
}

uint64_t sub_24404FF04()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0);
  result = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v8 - v3;
  v5 = *(v0 + 16);
  if (v5)
  {
    *(v0 + 16) = 0;
    v6 = sub_2440D3390();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v5;
    sub_243F54830(0, 0, v4, &unk_2440E28D0, v7);
  }

  return result;
}

uint64_t sub_24405000C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  *(v4 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2440500A8, 0, 0);
}

uint64_t sub_2440500A8()
{
  v1 = *(v0 + 24);
  v2 = sub_243F4E038();
  sub_243F5F574(v2, v1, &qword_27EDC0A50);
  v3 = sub_2440D11E0();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    sub_243F5EED4(*(v0 + 24), &qword_27EDC0A50);
  }

  else
  {
    v5 = sub_2440D11C0();
    v6 = sub_2440D3490();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_243F48000, v5, v6, "ProxCard - Stop suppression", v7, 2u);
      MEMORY[0x245D58570](v7, -1, -1);
    }

    v8 = *(v0 + 24);

    (*(v4 + 8))(v8, v3);
  }

  [*(v0 + 16) invalidate];

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_244050250()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_244050290()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_243F5DE2C;

  return sub_24405000C(v3, v4, v5, v2);
}

uint64_t sub_244050444()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_243F4DF68();
  sub_243F4DE64(v5, v4);
  v6 = sub_2440D11E0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_243F5EED4(v4, &qword_27EDC0A50);
  }

  else
  {
    v8 = sub_243F4E2F4();
    v9 = sub_243F4E2FC();
    sub_243F4E308(v8 & 1, v1, 0xD00000000000001CLL, 0x80000002440EDDC0, v9, v10);

    (*(v7 + 8))(v4, v6);
  }

  [objc_opt_self() sleepForTimeInterval_];
}

uint64_t sub_2440505D8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_243F4DF68();
  sub_243F4DE64(v5, v4);
  v6 = sub_2440D11E0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_243F5EED4(v4, &qword_27EDC0A50);
  }

  else
  {
    v8 = sub_243F4E2F4();
    v9 = sub_243F4E2FC();
    sub_243F4E308(v8 & 1, v1, 0x697070614D746567, 0xEC0000002928676ELL, v9, v10);

    (*(v7 + 8))(v4, v6);
  }
}

id sub_244050754(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_243F4DF68();
  sub_243F4DE64(v7, v6);
  v8 = sub_2440D11E0();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_243F5EED4(v6, &qword_27EDC0A50);
  }

  else
  {
    v17 = 0x20676E69646461;
    v18 = 0xE700000000000000;
    v19 = a1;
    v10 = sub_2440D39C0();
    MEMORY[0x245D57000](v10);

    v11 = v17;
    v12 = v18;
    v13 = sub_243F4E2F4();
    v14 = sub_243F4E2FC();
    sub_243F4E308(v13 & 1, v2, v11, v12, v14, v15);

    (*(v9 + 8))(v6, v8);
  }

  return [objc_opt_self() sleepForTimeInterval_];
}

id sub_24405093C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_243F4DF68();
  sub_243F4DE64(v4, v3);
  v5 = sub_2440D11E0();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    sub_243F5EED4(v3, &qword_27EDC0A50);
  }

  else
  {
    v7 = sub_243F4E2F4();
    v8 = sub_243F4E2FC();
    sub_243F4E308(v7 & 1, v0, 0xD000000000000011, 0x80000002440EDDE0, v8, v9);

    (*(v6 + 8))(v3, v5);
  }

  return [objc_opt_self() sleepForTimeInterval_];
}

uint64_t sub_244050ACC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_243F4DF68();
  sub_243F4DE64(v8, v7);
  v9 = sub_2440D11E0();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    result = sub_243F5EED4(v7, &qword_27EDC0A50);
  }

  else
  {
    v18 = "removeLastDigit()";
    v12 = sub_243F4E2F4();
    v17 = v2;
    v13 = v12;
    v14 = sub_243F4E2FC();
    sub_243F4E308(v13 & 1, v17, 0xD000000000000022, v18 | 0x8000000000000000, v14, v15);

    result = (*(v10 + 8))(v7, v9);
  }

  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    for (; a1; --a1)
    {
      if (a2)
      {
        result = a2(result);
      }
    }
  }

  return result;
}

uint64_t sub_244050C90()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v17 - v2;
  v4 = sub_243F4DF68();
  sub_243F4DE64(v4, v3);
  v5 = sub_2440D11E0();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    sub_243F5EED4(v3, &qword_27EDC0A50);
  }

  else
  {
    v7 = sub_243F4E2F4();
    v8 = sub_243F4E2FC();
    sub_243F4E308(v7 & 1, v0, 0x6C424E4950746567, 0xED000029286B636FLL, v8, v9);

    (*(v6 + 8))(v3, v5);
  }

  [objc_opt_self() sleepForTimeInterval_];
  v10 = sub_244050F68(0x6E69705F6B636F6DLL, 0xEF687361484B454BLL);
  v12 = v11;
  v13 = sub_24405864C();
  v17[1] = sub_24405865C(v13, v14, v10, v12);

  sub_243F5D81C(v10, v12);
  sub_244050F68(0xD000000000000012, 0x80000002440EDE30);
  sub_244050F68(0x6E69705F6B636F6DLL, 0xEF626F6C4279654BLL);
  sub_244050F68(0xD00000000000001DLL, 0x80000002440EDE50);
  sub_244050F68(0x7361635F6B636F6DLL, 0xE900000000000064);
  v15 = objc_allocWithZone(sub_2440D0FA0());
  return sub_2440D0F90();
}

uint64_t sub_244050F68(uint64_t a1, unint64_t a2)
{
  v43 = *MEMORY[0x277D85DE8];
  *&v40 = a1;
  *(&v40 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC48B0);
  if (swift_dynamicCast())
  {
    sub_243F9C80C(__src, &v41);
    __swift_project_boxed_opaque_existential_1(&v41, v42);
    sub_2440D0410();
    __src[0] = v40;
    __swift_destroy_boxed_opaque_existential_0(&v41);
    goto LABEL_63;
  }

  v39 = 0;
  memset(__src, 0, sizeof(__src));
  sub_243F5EED4(__src, &qword_27EDC48B8);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_2440D3870();
  }

  sub_244051A14(v4, v5, &v41);
  v6 = *(&v41 + 1);
  v7 = v41;
  if (*(&v41 + 1) >> 60 != 15)
  {
    __src[0] = v41;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_24405213C(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v10 = sub_244051ADC(sub_2440521DC);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_2440D0640();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v35 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v40 + 7) = 0;
  *&v40 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v34 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v36 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v37 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_243FE48E4(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_2440D3110();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_2440D3150();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v41 = v14;
      *(&v41 + 1) = v37;
      v31 = *(&v41 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v36;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_2440D3870();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_243FE48E4(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_2440D3120();
LABEL_52:
    *(&v40 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v41 = v40;
      *(&v41 + 6) = *(&v40 + 6);
      sub_2440D0650();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v34;
  if (v24)
  {
    *&v41 = v40;
    *(&v41 + 6) = *(&v40 + 6);
    sub_2440D0650();
    sub_243F5FF20(v35, v34);
    goto LABEL_62;
  }

LABEL_57:

  sub_243F5FF20(v35, v6);
LABEL_63:
  v32 = __src[0];
  sub_243F5FECC(*&__src[0], *(&__src[0] + 1));

  sub_243F5D81C(v32, *(&v32 + 1));
  return v32;
}

uint64_t sub_244051488()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_243F4DF68();
  sub_243F4DE64(v5, v4);
  v6 = sub_2440D11E0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_243F5EED4(v4, &qword_27EDC0A50);
    v8 = *(v1 + 24);
    if (v8)
    {
      return v8 ^ 1u;
    }

    goto LABEL_5;
  }

  v9 = sub_243F4E2F4();
  v10 = sub_243F4E2FC();
  sub_243F4E308(v9 & 1, v1, 0xD000000000000012, 0x80000002440EDE70, v10, v11);

  (*(v7 + 8))(v4, v6);
  v8 = *(v1 + 24);
  if ((v8 & 1) == 0)
  {
LABEL_5:
    [objc_opt_self() sleepForTimeInterval_];
    *(v1 + 24) = 1;
  }

  return v8 ^ 1u;
}

uint64_t sub_244051628()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_243F4DF68();
  sub_243F4DE64(v4, v3);
  v5 = sub_2440D11E0();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    return sub_243F5EED4(v3, &qword_27EDC0A50);
  }

  v8 = sub_243F4E2F4();
  v9 = sub_243F4E2FC();
  sub_243F4E308(v8 & 1, v0, 0xD000000000000015, 0x80000002440EDE90, v9, v10);

  return (*(v6 + 8))(v3, v5);
}

uint64_t sub_244051798()
{
  result = swift_allocObject();
  *(result + 16) = &unk_28577AAB8;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_244051A14@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_244052084(__src, &__src[a2]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_2440D0400();
      swift_allocObject();
      v8 = sub_2440D03B0();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_2440D0630();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

char *sub_244051ADC(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v18[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_243F5D81C(v6, v5);
      v18[0] = v6;
      LOWORD(v18[1]) = v5;
      BYTE2(v18[1]) = BYTE2(v5);
      BYTE3(v18[1]) = BYTE3(v5);
      BYTE4(v18[1]) = BYTE4(v5);
      BYTE5(v18[1]) = BYTE5(v5);
      BYTE6(v18[1]) = BYTE6(v5);
      result = a1(&v16, v18, v18 + BYTE6(v5));
      if (!v2)
      {
        result = v16;
      }

      v9 = LODWORD(v18[1]) | ((WORD2(v18[1]) | (BYTE6(v18[1]) << 16)) << 32);
      *v3 = v18[0];
      v3[1] = v9;
      return result;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_243F5D81C(v6, v5);
    *v3 = xmmword_2440E2920;
    sub_243F5D81C(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_2440D03C0() && __OFSUB__(v6, sub_2440D03F0()))
      {
LABEL_26:
        __break(1u);
      }

      sub_2440D0400();
      swift_allocObject();
      v13 = sub_2440D03A0();

      v11 = v13;
    }

    if (v12 >= v6)
    {

      v14 = sub_244051F80(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        return v14;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_243F5D81C(v6, v5);
    v16 = v6;
    v17 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_2440E2920;
    sub_243F5D81C(0, 0xC000000000000000);
    sub_2440D0600();
    result = sub_244051F80(*(v16 + 2), *(v16 + 3), a1);
    v10 = v17 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v16;
      v3[1] = v10;
      return result;
    }

    *v3 = v16;
LABEL_21:
    v3[1] = v10;
    return result;
  }

  memset(v18, 0, 15);
  result = a1(&v16, v18, v18);
  if (!v2)
  {
    return v16;
  }

  return result;
}

_BYTE *sub_244051E80@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_244052084(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_244052244(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_2440522C0(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_244051F14(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_244051F80(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_2440D03C0();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_2440D03F0();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_2440D03E0();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_244052034@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    result = sub_2440D3840();
    if ((v3 & 1) == 0)
    {
      *a2 = 0;
      a2[1] = 0xE000000000000000;
      a2[2] = 15;
      a2[3] = result;
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

uint64_t sub_244052084(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_24405213C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_2440D0400();
      swift_allocObject();
      sub_2440D03D0();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_2440D0630();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *sub_2440521DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_244051F14(sub_244052344, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_244052244(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_2440D0400();
  swift_allocObject();
  result = sub_2440D03B0();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2440D0630();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_2440522C0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_2440D0400();
  swift_allocObject();
  result = sub_2440D03B0();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_244052364()
{
  v1 = v0;
  v7 = MEMORY[0x277D84F90];
  v2 = *(v0 + OBJC_IVAR____TtC19ContactlessReaderUI14PINButtonModel_next);

  if (v2)
  {
    while (1)
    {

      MEMORY[0x245D57100](v3);
      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2440D3260();
      }

      result = sub_2440D32A0();
      v5 = *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI14PINButtonModel_next);
      if (!v5)
      {
        break;
      }

      v1 = v5;
      if (!*(v5 + OBJC_IVAR____TtC19ContactlessReaderUI14PINButtonModel_next))
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    MEMORY[0x245D57100](v6);
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2440D3260();
    }

    sub_2440D32A0();

    return v7;
  }

  return result;
}

uint64_t sub_2440524AC(__int16 a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_2440D06F0();
  type metadata accessor for PINButtonActionWrapper();
  v7 = swift_allocObject();
  *(v6 + OBJC_IVAR____TtC19ContactlessReaderUI14PINButtonModel_action) = v7;
  *(v7 + 16) = a1;
  *(v7 + 17) = HIBYTE(a1) & 1;
  v8 = v6 + OBJC_IVAR____TtC19ContactlessReaderUI14PINButtonModel_text;
  v9 = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 16) = v9;
  *(v8 + 32) = *(a2 + 32);
  *(v8 + 48) = *(a2 + 48);
  v10 = (v6 + OBJC_IVAR____TtC19ContactlessReaderUI14PINButtonModel_image);
  *v10 = 0u;
  v10[1] = 0u;
  v10[2] = 0u;
  *(v6 + OBJC_IVAR____TtC19ContactlessReaderUI14PINButtonModel_next) = a3;
  return v6;
}

uint64_t sub_244052574(__int16 a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 17) = HIBYTE(a1) & 1;
  return result;
}

uint64_t sub_2440525B0(__int16 a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v13 = *(a2 + 3);
  v7 = a2[5];
  v8 = swift_allocObject();
  sub_2440D06F0();
  type metadata accessor for PINButtonActionWrapper();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 17) = HIBYTE(a1) & 1;
  *(v8 + OBJC_IVAR____TtC19ContactlessReaderUI14PINButtonModel_action) = v9;
  v10 = v8 + OBJC_IVAR____TtC19ContactlessReaderUI14PINButtonModel_text;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0;
  v11 = v8 + OBJC_IVAR____TtC19ContactlessReaderUI14PINButtonModel_image;
  *v11 = v6;
  *(v11 + 8) = *(a2 + 1);
  *(v11 + 24) = v13;
  *(v11 + 40) = v7;
  *(v8 + OBJC_IVAR____TtC19ContactlessReaderUI14PINButtonModel_next) = a3;
  return v8;
}

uint64_t sub_24405269C()
{
  v1 = OBJC_IVAR____TtC19ContactlessReaderUI14PINButtonModel_id;
  v2 = sub_2440D0700();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_244052A34(v0 + OBJC_IVAR____TtC19ContactlessReaderUI14PINButtonModel_text);
  sub_244052A9C(*(v0 + OBJC_IVAR____TtC19ContactlessReaderUI14PINButtonModel_image), *(v0 + OBJC_IVAR____TtC19ContactlessReaderUI14PINButtonModel_image + 8));
  v3 = *(v0 + OBJC_IVAR____TtC19ContactlessReaderUI14PINButtonModel_next);
  *(v0 + OBJC_IVAR____TtC19ContactlessReaderUI14PINButtonModel_next) = 0;

  if (v3)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v4 = *(v3 + OBJC_IVAR____TtC19ContactlessReaderUI14PINButtonModel_next);
      swift_retain_n();

      v3 = v4;
    }

    while (v4);
  }

  return v0;
}

uint64_t sub_24405279C()
{
  sub_24405269C();

  return swift_deallocClassInstance();
}

uint64_t sub_2440527F4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC19ContactlessReaderUI14PINButtonModel_id;
  v5 = sub_2440D0700();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_2440528AC(__int16 a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  *(v1 + 17) = HIBYTE(a1) & 1;
  return result;
}

uint64_t sub_244052910@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = a5;
  *(a4 + 32) = a6;
  *(a4 + 40) = a7;
  return result;
}

uint64_t sub_244052924@<X0>(void *a1@<X8>)
{
  v2 = *sub_243FFADA0();

  result = sub_2440D21A0();
  *a1 = 0x6C2E6574656C6564;
  a1[1] = 0xEB00000000746665;
  a1[2] = v2;
  a1[3] = 0x3FEC8B4395810625;
  a1[4] = v4;
  a1[5] = 0x4014000000000000;
  return result;
}

uint64_t sub_2440529A4@<X0>(void *a1@<X8>)
{
  v2 = *sub_243FFAC60();

  result = sub_2440D21B0();
  *a1 = 0x72616D6B63656863;
  a1[1] = 0xE90000000000006BLL;
  a1[2] = v2;
  a1[3] = 0x3FEC8B4395810625;
  a1[4] = v4;
  a1[5] = 0;
  return result;
}

uint64_t sub_244052A34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3390);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_244052A9C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_244052AEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  sub_243F5D774(a5, v20);
  v12 = a5[3];
  v13 = a5[4];
  __swift_project_boxed_opaque_existential_1(a5, v12);
  v14 = (*(v13 + 16))(a1, a2, v12, v13);

  *(&v21 + 1) = v14;
  if (a4)
  {
    v15 = a5[3];
    v16 = a5[4];
    __swift_project_boxed_opaque_existential_1(a5, v15);
    v17 = (*(v16 + 16))(a3, a4, v15, v16);
  }

  else
  {
    v17 = 0;
  }

  v22 = v17;
  v18 = v20[1];
  *a6 = v20[0];
  *(a6 + 16) = v18;
  *(a6 + 32) = v21;
  *(a6 + 48) = v17;
  return __swift_destroy_boxed_opaque_existential_0(a5);
}

uint64_t sub_244052C0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_243F9C80C(a3, a4);
  *(a4 + 40) = a1;
  *(a4 + 48) = a2;
  return result;
}

uint64_t sub_244052C4C()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 32))(v0[5], v1, v2);
}

uint64_t sub_244052CA8()
{
  v1 = v0[6];
  if (v1)
  {
    v2 = v0[3];
    v3 = v0[4];
    __swift_project_boxed_opaque_existential_1(v0, v2);
    (*(v3 + 32))(v1, v2, v3);
    sub_243F4EF64();
    v4 = sub_2440D3690();
    v6 = v5;

    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      return v4;
    }
  }

  return 0;
}

unint64_t sub_244052DA8()
{
  result = qword_27EDC19E8;
  if (!qword_27EDC19E8)
  {
    sub_2440D0700();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC19E8);
  }

  return result;
}

uint64_t type metadata accessor for PINButtonModel()
{
  result = qword_27EDD05E0;
  if (!qword_27EDD05E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_244052E54()
{
  result = sub_2440D0700();
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

uint64_t getEnumTagSinglePayload for PINButtonModel.Action(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2 + 0xFFFF;
  if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      return v4;
    }

    v4 = *(a1 + 2);
    if (!*(a1 + 2))
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  if (v4 == 2)
  {
    v4 = a1[1];
    if (!a1[1])
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  v4 = *(a1 + 1);
  if (v4)
  {
    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  return v4;
}

_WORD *storeEnumTagSinglePayload for PINButtonModel.Action(_WORD *result, int a2, int a3)
{
  v3 = a3 + 0xFFFF;
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (!a3)
  {
    v5 = 0;
  }

  if (a2)
  {
    v6 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }
  }

  else if (v5 > 1)
  {
    if (v5 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v5)
  {
    *(result + 2) = 0;
  }

  return result;
}

uint64_t sub_244053034(unsigned __int8 *a1)
{
  if (a1[1])
  {
    return (*a1 | (a1[1] << 8)) - 255;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_244053054(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    result[1] = ((a2 - 1) >> 8) + 1;
  }

  else
  {
    result[1] = 0;
  }

  return result;
}

uint64_t sub_244053098(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_2440530E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24405313C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_244053148@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v57 = a2;
  v58 = a3;
  v4 = sub_2440D1AF0();
  v55 = *(v4 - 8);
  v56 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC48C0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v54 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC48C8);
  MEMORY[0x28223BE20](v11);
  v13 = &v54 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC48D0);
  MEMORY[0x28223BE20](v14);
  v16 = &v54 - v15;
  sub_2440D1ED0();
  v17 = sub_2440D2110();
  sub_2440D13D0();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC48D8) + 36)];
  *v26 = v17;
  *(v26 + 1) = v19;
  *(v26 + 2) = v21;
  *(v26 + 3) = v23;
  *(v26 + 4) = v25;
  v26[40] = 0;
  v27 = sub_2440D20A0();
  sub_2440D13D0();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC48E0) + 36)];
  *v36 = v27;
  *(v36 + 1) = v29;
  *(v36 + 2) = v31;
  *(v36 + 3) = v33;
  *(v36 + 4) = v35;
  v36[40] = 0;
  v37 = sub_2440D26A0();
  KeyPath = swift_getKeyPath();
  v39 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC48E8) + 36)];
  *v39 = KeyPath;
  v39[1] = v37;
  v40 = sub_2440D2660();
  v41 = sub_2440D20B0();
  v42 = &v10[*(v8 + 44)];
  *v42 = v40;
  v42[8] = v41;
  if ((v57 & 1) == 0)
  {

    sub_2440D3480();
    v43 = sub_2440D2070();
    sub_2440D11B0();

    sub_2440D1AE0();
    swift_getAtKeyPath();
    sub_24405313C(a1, 0);
    (*(v55 + 8))(v6, v56);
    LOBYTE(a1) = v59;
  }

  if (a1)
  {
    v44 = 1.0;
  }

  else
  {
    v44 = 0.5;
  }

  sub_243F681C8(v10, v13, &qword_27EDC48C0);
  *&v13[*(v11 + 36)] = v44;
  v45 = sub_2440D2150();
  v46 = swift_getKeyPath();
  sub_243F681C8(v13, v16, &qword_27EDC48C8);
  v47 = &v16[*(v14 + 36)];
  *v47 = v46;
  v47[1] = v45;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC48F0);
  v49 = v58;
  v50 = v58 + *(v48 + 36);
  v51 = *MEMORY[0x277CE0118];
  v52 = sub_2440D1B90();
  (*(*(v52 - 8) + 104))(v50, v51, v52);
  *(v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0E18) + 36)) = 256;
  return sub_243F681C8(v16, v49, &qword_27EDC48D0);
}

uint64_t sub_2440535C0@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v42 = a3;
  v40 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1B60);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v34[-v7];
  v9 = sub_2440D1AF0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v34[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_2440D1EC0();
  v37 = *(v13 - 8);
  v38 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v34[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC48F8);
  MEMORY[0x28223BE20](v36);
  v17 = &v34[-v16];
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4900);
  MEMORY[0x28223BE20](v39);
  v41 = &v34[-v18];
  sub_2440D1ED0();
  if ((a2 & 1) == 0)
  {

    sub_2440D3480();
    v19 = sub_2440D2070();
    v35 = a2;
    v20 = v19;
    sub_2440D11B0();

    LOBYTE(a2) = v35;
    sub_2440D1AE0();
    swift_getAtKeyPath();
    sub_24405313C(a1, 0);
    (*(v10 + 8))(v12, v9);
    if (v44)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if ((a1 & 1) == 0)
  {
LABEL_5:
    v42 = *sub_243FFAEE0();
  }

LABEL_6:
  v21 = v42;

  KeyPath = swift_getKeyPath();
  (*(v37 + 32))(v17, v15, v38);
  v23 = &v17[*(v36 + 36)];
  *v23 = KeyPath;
  v23[1] = v21;
  if ((a2 & 1) == 0)
  {

    sub_2440D3480();
    v24 = sub_2440D2070();
    sub_2440D11B0();

    sub_2440D1AE0();
    swift_getAtKeyPath();
    sub_24405313C(a1, 0);
    (*(v10 + 8))(v12, v9);
    LOBYTE(a1) = v43;
  }

  if (a1)
  {
    v25 = 1.0;
  }

  else
  {
    v25 = 0.5;
  }

  v26 = v41;
  sub_243F681C8(v17, v41, &qword_27EDC48F8);
  *&v26[*(v39 + 36)] = v25;
  v27 = sub_2440D2170();
  (*(*(v27 - 8) + 56))(v8, 1, 1, v27);
  v28 = sub_2440D21C0();
  sub_243F5EED4(v8, &qword_27EDC1B60);
  v29 = swift_getKeyPath();
  v30 = v26;
  v31 = v40;
  sub_243F681C8(v30, v40, &qword_27EDC4900);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4908);
  v33 = (v31 + *(result + 36));
  *v33 = v29;
  v33[1] = v28;
  return result;
}

uint64_t sub_244053AB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v39 = a2;
  v2 = sub_2440D1EC0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v36 - v7;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4910);
  MEMORY[0x28223BE20](v36);
  v10 = &v36 - v9;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4918) - 8;
  MEMORY[0x28223BE20](v37);
  v12 = &v36 - v11;
  *v10 = sub_2440D1B30();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v13 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4920) + 44)];
  sub_2440D1ED0();
  v41 = 1;
  v14 = *(v3 + 16);
  v14(v6, v8, v2);
  v40 = 1;
  v15 = v41;
  *v13 = 0;
  v13[8] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4928);
  v14(&v13[*(v16 + 48)], v6, v2);
  v17 = &v13[*(v16 + 64)];
  v18 = v40;
  *v17 = 0;
  v17[8] = v18;
  v19 = *(v3 + 8);
  v19(v8, v2);
  v19(v6, v2);
  v20 = sub_2440D2230();
  KeyPath = swift_getKeyPath();
  v22 = &v10[*(v36 + 36)];
  *v22 = KeyPath;
  v22[1] = v20;
  sub_2440D21B0();
  sub_244053ED0();
  sub_2440D2370();
  sub_243F5EED4(v10, &qword_27EDC4910);
  LOBYTE(v20) = sub_2440D20B0();
  v23 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4948) + 36)];
  *v23 = v20;
  *(v23 + 8) = 0u;
  *(v23 + 24) = 0u;
  v23[40] = 1;
  v24 = sub_2440D26A0();
  v25 = swift_getKeyPath();
  v26 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4950) + 36)];
  *v26 = v25;
  v26[1] = v24;
  v27 = *sub_243FFB21C();
  v28 = &v12[*(v37 + 44)];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4958);
  v30 = *(v29 + 52);
  v31 = *MEMORY[0x277CE0118];
  v32 = sub_2440D1B90();
  (*(*(v32 - 8) + 104))(v28 + v30, v31, v32);
  *v28 = v27;
  *(v28 + *(v29 + 56)) = 256;

  if (sub_2440D1EE0())
  {
    v33 = 0.5;
  }

  else
  {
    v33 = 1.0;
  }

  v34 = v39;
  sub_244053FB4(v12, v39);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4960);
  *(v34 + *(result + 36)) = v33;
  return result;
}

unint64_t sub_244053ED0()
{
  result = qword_27EDC4930;
  if (!qword_27EDC4930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4910);
    sub_243F5DD50(&qword_27EDC4938, &qword_27EDC4940);
    sub_243F5DD50(&qword_27EDC00A8, &qword_27EDC00B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4930);
  }

  return result;
}

uint64_t sub_244053FB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4918);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_244054084(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2440540CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_244054144()
{
  result = qword_27EDC4968;
  if (!qword_27EDC4968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC48F0);
    sub_2440541FC();
    sub_243F5DD50(&qword_27EDC0E38, &qword_27EDC0E18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4968);
  }

  return result;
}

unint64_t sub_2440541FC()
{
  result = qword_27EDC4970;
  if (!qword_27EDC4970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC48D0);
    sub_244054670(&qword_27EDC4978, &qword_27EDC48C8, &unk_2440E2AE8, sub_2440542E0);
    sub_243F5DD50(&qword_27EDC00A8, &qword_27EDC00B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4970);
  }

  return result;
}

unint64_t sub_2440542E0()
{
  result = qword_27EDC4980;
  if (!qword_27EDC4980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC48C0);
    sub_244054398();
    sub_243F5DD50(&qword_27EDC0720, &qword_27EDC0728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4980);
  }

  return result;
}

unint64_t sub_244054398()
{
  result = qword_27EDC4988;
  if (!qword_27EDC4988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC48E8);
    sub_2440544AC(&qword_27EDC4990, &qword_27EDC48E0, &unk_2440E2B00, sub_24405447C);
    sub_243F5DD50(&qword_27EDC00B8, &qword_27EDC00C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4988);
  }

  return result;
}

uint64_t sub_2440544AC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_244054530()
{
  result = qword_27EDC49A0;
  if (!qword_27EDC49A0)
  {
    sub_2440D1EC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC49A0);
  }

  return result;
}

unint64_t sub_24405458C()
{
  result = qword_27EDC49A8;
  if (!qword_27EDC49A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4908);
    sub_244054670(&qword_27EDC49B0, &qword_27EDC4900, &unk_2440E2B90, sub_2440546F4);
    sub_243F5DD50(&qword_27EDC00A8, &qword_27EDC00B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC49A8);
  }

  return result;
}

uint64_t sub_244054670(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2440546F4()
{
  result = qword_27EDC49B8;
  if (!qword_27EDC49B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC48F8);
    sub_244054530();
    sub_243F5DD50(&qword_27EDC00B8, &qword_27EDC00C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC49B8);
  }

  return result;
}

unint64_t sub_2440547F0()
{
  result = qword_27EDC49C8;
  if (!qword_27EDC49C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4918);
    sub_2440548A8();
    sub_243F5DD50(&qword_27EDC49E0, &qword_27EDC4958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC49C8);
  }

  return result;
}

unint64_t sub_2440548A8()
{
  result = qword_27EDC49D0;
  if (!qword_27EDC49D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4950);
    sub_244054960();
    sub_243F5DD50(&qword_27EDC00B8, &qword_27EDC00C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC49D0);
  }

  return result;
}

unint64_t sub_244054960()
{
  result = qword_27EDC49D8;
  if (!qword_27EDC49D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4948);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4910);
    sub_244053ED0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC49D8);
  }

  return result;
}

uint64_t sub_244054A28@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC49E8);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC49F0);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC49F8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4A00);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4A08);
  MEMORY[0x28223BE20](v17);
  v19 = &v32 - v18;
  sub_2440D2AA0();
  *&v6[*(v4 + 64)] = 256;
  sub_2440D2B00();
  sub_2440D18E0();
  sub_243F681C8(v6, v9, &qword_27EDC49E8);
  v20 = &v9[*(v7 + 36)];
  v21 = v41;
  *(v20 + 4) = v40;
  *(v20 + 5) = v21;
  *(v20 + 6) = v42;
  v22 = v37;
  *v20 = v36;
  *(v20 + 1) = v22;
  v23 = v39;
  *(v20 + 2) = v38;
  *(v20 + 3) = v23;
  sub_244054EA8();
  sub_2440D2480();
  sub_243F5EED4(v9, &qword_27EDC49F0);
  LOBYTE(v9) = sub_2440D20B0();
  sub_243F681C8(v12, v16, &qword_27EDC49F8);
  v16[*(v14 + 44)] = v9;
  v44 = *(v2 + 40);
  v34 = *(v2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8);
  sub_2440D2820();
  v24 = v43;
  sub_243F681C8(v16, v19, &qword_27EDC4A00);
  *&v19[*(v17 + 36)] = v24;
  v26 = *(v2 + 8);
  v27 = *(v2 + 16);
  *&v34 = *v2;
  v25 = v34;
  *(&v34 + 1) = v26;
  v35 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE8);
  MEMORY[0x245D56840](&v43, v28);
  v33 = v43;
  v43 = v25;
  v29 = swift_allocObject();
  v30 = *(v2 + 16);
  *(v29 + 16) = *v2;
  *(v29 + 32) = v30;
  *(v29 + 48) = *(v2 + 32);
  *(v29 + 64) = *(v2 + 48);
  sub_243F91DD4(&v43, &v34);

  sub_243F5F574(&v44, &v34, &qword_27EDC01A8);
  sub_244055220();
  sub_2440D25D0();

  return sub_243F5EED4(v19, &qword_27EDC4A08);
}

unint64_t sub_244054EA8()
{
  result = qword_27EDC4A10;
  if (!qword_27EDC4A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC49F0);
    sub_244054F34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4A10);
  }

  return result;
}

unint64_t sub_244054F34()
{
  result = qword_27EDC4A18;
  if (!qword_27EDC4A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC49E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4A18);
  }

  return result;
}

uint64_t sub_244054F98(_BYTE *a1, _BYTE *a2, uint64_t *a3)
{
  v6 = sub_2440D1F90();
  v7 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (*a1)
  {
    if ((*a2 & 1) == 0)
    {
      v11 = result;
      v12 = sub_2440D2BD0();
      MEMORY[0x28223BE20](v12);
      *(&v16 - 2) = a3;
      v19 = *a3;
      v18 = *(a3 + 5);
      v13 = swift_allocObject();
      v14 = *(a3 + 1);
      *(v13 + 16) = *a3;
      *(v13 + 32) = v14;
      *(v13 + 48) = *(a3 + 2);
      *(v13 + 64) = a3[6];
      sub_243F91DD4(&v19, v17);

      sub_243F5F574(&v18, v17, &qword_27EDC01A8);
      sub_2440D1F80();
      sub_2440D16D0();

      return (*(v7 + 8))(v10, v11);
    }
  }

  else if (*a2)
  {
    v15 = sub_2440D2B70();
    MEMORY[0x28223BE20](v15);
    *(&v16 - 2) = a3;
    sub_2440D16E0();
  }

  return result;
}

unint64_t sub_244055220()
{
  result = qword_27EDC4A20;
  if (!qword_27EDC4A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4A08);
    sub_2440552AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4A20);
  }

  return result;
}

unint64_t sub_2440552AC()
{
  result = qword_27EDC4A28;
  if (!qword_27EDC4A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4A00);
    sub_244055338();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4A28);
  }

  return result;
}

unint64_t sub_244055338()
{
  result = qword_27EDC4A30;
  if (!qword_27EDC4A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC49F8);
    sub_244054EA8();
    sub_2440150CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4A30);
  }

  return result;
}

double sub_2440553C4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_2440D2810();
  result = v13;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  *(a6 + 40) = v13;
  *(a6 + 48) = v14;
  return result;
}

uint64_t sub_244055474()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4A08);
  sub_244055220();
  return swift_getOpaqueTypeConformance2();
}

uint64_t objectdestroyTm_23()
{

  return swift_deallocObject();
}

uint64_t sub_244055588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2440555C4(a1, a3);
  result = type metadata accessor for TransactionContext(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_2440555C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1A38);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_244055654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for TapContext(0);
  v8 = *(v7 + 20);
  v9 = sub_2440D0BD0();
  result = (*(*(v9 - 8) + 32))(&a4[v8], a2, v9);
  a4[*(v7 + 24)] = a3;
  return result;
}

uint64_t sub_2440556E4()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_244055730(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_244055784()
{
  swift_beginAccess();
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_2440557D0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

id sub_244055874()
{
  swift_beginAccess();
  v1 = *(v0 + 64);

  return v1;
}

void sub_2440558B8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  *(v1 + 64) = a1;
}

uint64_t sub_244055950()
{
  swift_beginAccess();
  v1 = *(v0 + 72);

  return v1;
}

uint64_t sub_24405599C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
}

uint64_t sub_244055A74(char a1)
{
  result = swift_beginAccess();
  *(v1 + 88) = a1;
  return result;
}

uint64_t sub_244055B38(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 96) = a1;
  return result;
}

uint64_t sub_244055BFC(char a1)
{
  result = swift_beginAccess();
  *(v1 + 104) = a1;
  return result;
}

uint64_t sub_244055CA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4AE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_244055D80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_243F5F574(v2 + v4, a2, &qword_27EDC4AE0);
}

uint64_t sub_244055DF0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  sub_244055CA4(a1, v2 + v4);
  return swift_endAccess();
}

uint64_t sub_244055EAC()
{
  v1 = OBJC_IVAR____TtC19ContactlessReaderUI10PINContext_allowPINBypass;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_244055EF0(char a1)
{
  v3 = OBJC_IVAR____TtC19ContactlessReaderUI10PINContext_allowPINBypass;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_244055FA0()
{
  v1 = OBJC_IVAR____TtC19ContactlessReaderUI10PINContext_initialOrientationInverted;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_244055FE4(char a1)
{
  v3 = OBJC_IVAR____TtC19ContactlessReaderUI10PINContext_initialOrientationInverted;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_244056094(void *a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v25 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4AE0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v25 - v10;
  v12 = swift_allocObject();
  v13 = OBJC_IVAR____TtC19ContactlessReaderUI10PINContext_customerLocale;
  v14 = sub_2440D08A0();
  v15 = *(*(v14 - 8) + 56);
  v15(v12 + v13, 1, 1, v14);
  v15(v12 + OBJC_IVAR____TtC19ContactlessReaderUI10PINContext_cardPreferredLocale, 1, 1, v14);
  *(v12 + 32) = sub_2440D0D40();
  *(v12 + 40) = v16;
  *(v12 + OBJC_IVAR____TtC19ContactlessReaderUI10PINContext_privacyLock) = sub_2440D0CC0() & 1;
  *(v12 + OBJC_IVAR____TtC19ContactlessReaderUI10PINContext_issuerPIN) = a4;
  *(v12 + 104) = a5;
  *(v12 + 48) = sub_2440D0CE0();
  *(v12 + 56) = v17;
  *(v12 + 96) = sub_2440D0CB0();
  *(v12 + 64) = sub_2440D0D30();
  *(v12 + 72) = sub_2440D0CD0();
  *(v12 + 80) = v18;
  *(v12 + 88) = sub_2440D0D00() & 1;
  v19 = v25;
  *(v12 + 16) = a2;
  *(v12 + 24) = v19;
  *(v12 + OBJC_IVAR____TtC19ContactlessReaderUI10PINContext_allowPINBypass) = sub_2440D0CF0() & 1;
  *(v12 + OBJC_IVAR____TtC19ContactlessReaderUI10PINContext_initialOrientationInverted) = 0;
  sub_2440D0D10();
  if (v20)
  {
    sub_2440D0710();
    v15(v11, 0, 1, v14);
    v21 = OBJC_IVAR____TtC19ContactlessReaderUI10PINContext_customerLocale;
    swift_beginAccess();
    sub_244055CA4(v11, v12 + v21);
    swift_endAccess();
  }

  sub_2440D0D20();
  if (v22)
  {
    sub_2440D0710();

    v15(v11, 0, 1, v14);
    v23 = OBJC_IVAR____TtC19ContactlessReaderUI10PINContext_cardPreferredLocale;
    swift_beginAccess();
    sub_244055CA4(v11, v12 + v23);
    swift_endAccess();
  }

  else
  {
  }

  return v12;
}

uint64_t sub_24405630C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4AE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_244056374()
{

  sub_24405630C(v0 + OBJC_IVAR____TtC19ContactlessReaderUI10PINContext_customerLocale);
  sub_24405630C(v0 + OBJC_IVAR____TtC19ContactlessReaderUI10PINContext_cardPreferredLocale);

  return swift_deallocClassInstance();
}

uint64_t sub_244056424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1A38);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_24405650C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1A38);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_2440565D0()
{
  sub_24405668C(319, &qword_27EDC4A38, type metadata accessor for TapContext);
  if (v0 <= 0x3F)
  {
    sub_24405668C(319, &qword_27EDC4A40, type metadata accessor for PINContext);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24405668C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2440D3630();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_244056714(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2440D0BD0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_2440567D4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2440D0BD0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_244056878()
{
  result = sub_2440D0E80();
  if (v1 <= 0x3F)
  {
    result = sub_2440D0BD0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_24405690C()
{
  sub_24405668C(319, &qword_27EDC4A48, MEMORY[0x277CC9788]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2440569FC()
{
  sub_2440D1110();
  v0 = sub_2440D2F80();

  v1 = [objc_opt_self() bundleWithIdentifier_];

  if (v1)
  {
    qword_27EDC6598 = v1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t *sub_244056A6C()
{
  if (qword_27EDD0840 != -1)
  {
    swift_once();
  }

  return &qword_27EDC6598;
}

uint64_t sub_244056B34()
{
  v0 = sub_2440D05F0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2440D0560();
  __swift_allocate_value_buffer(v4, qword_27EDC65A0);
  v5 = __swift_project_value_buffer(v4, qword_27EDC65A0);
  if (qword_27EDD0840 != -1)
  {
    swift_once();
  }

  v6 = qword_27EDC6598;
  v7 = [v6 bundleURL];

  sub_2440D05C0();
  (*(v1 + 32))(v5, v3, v0);
  return (*(*(v4 - 8) + 104))(v5, *MEMORY[0x277CC9118], v4);
}

uint64_t sub_244056CD4(uint64_t a1, uint64_t a2)
{
  v58 = a1;
  v59 = a2;
  v60[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2440D0430();
  MEMORY[0x28223BE20](v2);
  v56 = v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2440D0480();
  v57 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v55 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2440D0560();
  v51 = *(v6 - 8);
  v52 = v6;
  MEMORY[0x28223BE20](v6);
  v50 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2440D08A0();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_2440D2F60();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_2440D0570();
  v53 = *(v10 - 8);
  v54 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v47 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = v46 - v13;
  v15 = sub_2440D0460();
  v48 = *(v15 - 8);
  v49 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v46 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC27D0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2440DCF60;
  v22 = *MEMORY[0x277CBCF88];
  *(v21 + 32) = *MEMORY[0x277CBCF88];
  v23 = objc_allocWithZone(MEMORY[0x277CBDAB8]);
  v24 = v22;
  v25 = [v23 init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4AC0);
  v26 = sub_2440D3210();

  v60[0] = 0;
  v27 = [v25 _ios_meContactWithKeysToFetch_error_];

  if (v27)
  {
    v46[0] = v4;
    v46[1] = v2;
    v28 = v60[0];
    v29 = [v27 termsOfAddress];

    sub_244059690();
    sub_2440D3220();

    v30 = sub_244057434();

    sub_2440D0450();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4AD0);
    v31 = sub_2440D0490();
    v32 = *(v31 - 8);
    v33 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_2440D5CF0;
    *(v34 + v33) = v30;
    (*(v32 + 104))(v34 + v33, *MEMORY[0x277CC8C80], v31);
    sub_2440D0440();

    sub_2440D2F70();
    sub_2440D0800();
    if (qword_27EDD0848 != -1)
    {
      swift_once();
    }

    v35 = v52;
    v36 = __swift_project_value_buffer(v52, qword_27EDC65A0);
    (*(v51 + 16))(v50, v36, v35);
    sub_2440D0580();
    v38 = v53;
    v37 = v54;
    (*(v53 + 16))(v47, v14, v54);
    v39 = v48;
    v40 = v49;
    (*(v48 + 16))(v18, v20, v49);
    v41 = v55;
    sub_2440D0470();
    sub_2440D0420();
    sub_244059B84(&qword_27EDC4AD8, MEMORY[0x277CC8B30]);
    v42 = sub_2440D31A0();
    (*(v57 + 8))(v41, v46[0]);
    (*(v38 + 8))(v14, v37);
    (*(v39 + 8))(v20, v40);
  }

  else
  {
    v43 = v60[0];
    v44 = sub_2440D0550();

    swift_willThrow();
    return sub_2440579C8(0, v58);
  }

  return v42;
}

size_t sub_244057434()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4BB0);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v1);
  v52 = (&v50 - v5);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v50 - v7;
  MEMORY[0x28223BE20](v6);
  v54 = &v50 - v9;
  v10 = sub_2440D0350();
  v55 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v16 = &v50 - v15;
  if (v14 >> 62)
  {
    v47 = v8;
    v48 = v14;
    v49 = sub_2440D38E0();
    v14 = v48;
    v8 = v47;
    v17 = v49;
  }

  else
  {
    v17 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x277D84F90];
  if (v17)
  {
    v53 = v8;
    v51 = v3;
    v19 = v14;
    v57 = MEMORY[0x277D84F90];
    result = sub_2440591F4(0, v17 & ~(v17 >> 63), 0);
    if (v17 < 0)
    {
      __break(1u);
    }

    else
    {
      v56 = v57;
      v20 = v19;
      if ((v19 & 0xC000000000000001) == 0)
      {
        v33 = (v19 + 32);
        v53 = *(v55 + 56);
        v54 = (v55 + 56);
        v50 = (v55 + 48);
        v34 = (v55 + 32);
        v35 = v13;
        while (1)
        {
          v36 = v17;
          v37 = *v33;
          v38 = v52;
          v53(v52, 1, 1, v10);
          sub_244059B84(&qword_27EDC4BB8, MEMORY[0x277CC8930]);
          v39 = v37;
          sub_2440D3960();
          v40 = v51;
          sub_243F5F574(v38, v51, &qword_27EDC4BB0);
          result = (*v50)(v40, 1, v10);
          if (result == 1)
          {
            break;
          }

          sub_243F5EED4(v38, &qword_27EDC4BB0);
          v41 = *v34;
          (*v34)(v35, v40, v10);

          v42 = v56;
          v57 = v56;
          v43 = v35;
          v45 = *(v56 + 16);
          v44 = *(v56 + 24);
          if (v45 >= v44 >> 1)
          {
            sub_2440591F4(v44 > 1, v45 + 1, 1);
            v42 = v57;
          }

          *(v42 + 16) = v45 + 1;
          v46 = (*(v55 + 80) + 32) & ~*(v55 + 80);
          v56 = v42;
          v41(v42 + v46 + *(v55 + 72) * v45, v43, v10);
          ++v33;
          v17 = v36 - 1;
          v35 = v43;
          if (v36 == 1)
          {
            return v56;
          }
        }

        goto LABEL_22;
      }

      v50 = v16;
      v21 = 0;
      v51 = (v55 + 48);
      v52 = (v55 + 56);
      v22 = (v55 + 32);
      while (1)
      {
        v23 = v17;
        v24 = v20;
        MEMORY[0x245D57760](v21);
        v25 = v54;
        (*v52)(v54, 1, 1, v10);
        sub_244059B84(&qword_27EDC4BB8, MEMORY[0x277CC8930]);
        sub_2440D3960();
        v26 = v53;
        sub_243F5F574(v25, v53, &qword_27EDC4BB0);
        result = (*v51)(v26, 1, v10);
        if (result == 1)
        {
          break;
        }

        sub_243F5EED4(v25, &qword_27EDC4BB0);
        v27 = *v22;
        v28 = v50;
        (*v22)(v50, v26, v10);
        swift_unknownObjectRelease();
        v29 = v56;
        v57 = v56;
        v31 = *(v56 + 16);
        v30 = *(v56 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_2440591F4(v30 > 1, v31 + 1, 1);
          v29 = v57;
        }

        ++v21;
        *(v29 + 16) = v31 + 1;
        v32 = (*(v55 + 80) + 32) & ~*(v55 + 80);
        v56 = v29;
        v27(v29 + v32 + *(v55 + 72) * v31, v28, v10);
        v17 = v23;
        v20 = v24;
        if (v23 == v21)
        {
          return v56;
        }
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  return result;
}

uint64_t sub_2440579C8(char a1, uint64_t a2)
{
  v38 = a2;
  v42 = sub_2440D0560();
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v39 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2440D0570();
  v43 = *(v4 - 8);
  v44 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v37 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - v7;
  v45 = sub_2440D08A0();
  v9 = *(v45 - 8);
  v10 = MEMORY[0x28223BE20](v45);
  v36 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - v12;
  v14 = sub_2440D2F60();
  v41 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;

  sub_2440D2F70();
  if (a1)
  {
    v20 = sub_243FA9620();
    swift_beginAccess();
    v21 = (**v20 + 328);
    v38 = v9;
    v22 = v8;
    v23 = *v21;

    v23(v24);
    v8 = v22;
    v9 = v38;
  }

  else
  {
    sub_2440D0800();
  }

  v25 = v13;
  v26 = v41;
  (*(v41 + 16))(v17, v19, v14);
  (*(v9 + 16))(v36, v13, v45);
  v27 = v9;
  v28 = v25;
  v29 = v14;
  if (qword_27EDD0848 != -1)
  {
    swift_once();
  }

  v30 = v42;
  v31 = __swift_project_value_buffer(v42, qword_27EDC65A0);
  (*(v40 + 16))(v39, v31, v30);
  sub_2440D0580();
  v32 = v43;
  v33 = v44;
  (*(v43 + 16))(v37, v8, v44);
  v34 = sub_2440D3030();
  (*(v32 + 8))(v8, v33);
  (*(v27 + 8))(v28, v45);
  (*(v26 + 8))(v19, v29);
  return v34;
}

uint64_t sub_244057E7C(char a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4AE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  sub_2440579C8(a1 & 1, a3);
  sub_2440D0790();
  v8 = sub_2440D08A0();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);

  v9 = sub_2440D2FE0();

  sub_243F5EED4(v7, &qword_27EDC4AE0);
  return v9;
}

id sub_244057FBC(char a1)
{
  v2 = sub_2440D0760();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2440D08A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v10 = sub_243FA9620();
    swift_beginAccess();
    v11 = (**v10 + 328);
    v26 = v7;
    v12 = *v11;

    v12(v13);
    v7 = v26;
  }

  else
  {
    sub_2440D0800();
  }

  (*(v3 + 104))(v5, *MEMORY[0x277CC9670], v2);
  v14 = sub_2440D0730();
  v16 = v15;
  (*(v3 + 8))(v5, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4AE8);
  inited = swift_initStackObject();
  v18 = *MEMORY[0x277D764F8];
  *(inited + 32) = *MEMORY[0x277D764F8];
  *(inited + 16) = xmmword_2440D5CF0;
  *(inited + 64) = MEMORY[0x277D837D0];
  *(inited + 40) = v14;
  *(inited + 48) = v16;
  v19 = v18;
  sub_244059A48(inited);
  swift_setDeallocating();
  sub_243F5EED4(inited + 32, &qword_27EDC4AF0);
  v20 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v21 = sub_2440D2F80();
  type metadata accessor for Key(0);
  sub_244059B84(&qword_27EDC4AF8, type metadata accessor for Key);
  v22 = sub_2440D2EA0();

  v23 = [v20 initWithString:v21 attributes:v22];

  (*(v7 + 8))(v9, v6);
  return v23;
}

uint64_t sub_244058330(uint64_t a1)
{
  sub_2440D32F0();
  v2 = sub_2440D2E90();
  result = sub_2440D32B0();
  if (a1)
  {
    v4 = result;
    v5 = result >= 0;
    if (a1 > 0)
    {
      v5 = result < 1;
    }

    if (v5)
    {
      return v2;
    }

    result = 0;
    while (1)
    {
      v6 = __OFADD__(result, a1) ? ((result + a1) >> 63) ^ 0x8000000000000000 : result + a1;
      if (__OFADD__(result, a1))
      {
        break;
      }

      if (result + a1 < result)
      {
        goto LABEL_16;
      }

      sub_2440D3310();
      sub_2440D36D0();
      swift_getWitnessTable();
      sub_2440D3300();
      sub_2440D32F0();
      sub_2440D32C0();
      v7 = v4 >= v6;
      if (a1 > 0)
      {
        v7 = v6 >= v4;
      }

      result = v6;
      if (v7)
      {
        return v2;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_244058490()
{
  sub_243F4EF64();
  sub_2440D3690();

  sub_2440D3690();

  while ((sub_2440D30C0() & 3) != 0)
  {
    sub_2440D31B0();
    sub_2440D30F0();
  }

  v0 = sub_2440D0620();
  v2 = v1;
  sub_243F802C0(v0, v1);

  if (v2 >> 60 != 15)
  {
    sub_243F5FF20(v0, v2);
  }

  return v0;
}

uint64_t sub_24405865C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{

  sub_2440596DC(a3, a4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC4B00);
  sub_244059BCC();
  v6 = sub_2440D2F20();

  return v6;
}

void sub_244058714(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
  sub_243F5FECC(a2, a3);
  v11 = sub_244059C30();
  sub_243F5D81C(a2, a3);
  if (v11)
  {
    if (!a1)
    {
      swift_getMetatypeMetadata();
      sub_2440D3040();
    }

    sub_2440D34D0();

    [v11 finishDecoding];
  }

  else
  {
    v12 = *(*(a4 - 8) + 56);

    v12(a5, 1, 1, a4);
  }
}

uint64_t sub_244058890()
{
  type metadata accessor for Code(0);
  sub_244059B84(&unk_27EDC4B10, type metadata accessor for Code);
  if (sub_2440D04B0())
  {
    return 0x65636E6143707061;
  }

  if (sub_2440D04B0())
  {
    return 0xD000000000000014;
  }

  if (sub_2440D04B0())
  {
    return 0x797274656D6F6962;
  }

  if (sub_2440D04B0())
  {
    return 0xD000000000000014;
  }

  if (sub_2440D04B0())
  {
    return 0xD000000000000013;
  }

  if (sub_2440D04B0())
  {
    return 0x4364696C61766E69;
  }

  if (sub_2440D04B0())
  {
    return 0x7265746E49746F6ELL;
  }

  if (sub_2440D04B0())
  {
    return 0x65646F6373736170;
  }

  if (sub_2440D04B0())
  {
    return 0x61436D6574737973;
  }

  if (sub_2440D04B0())
  {
    return 0x636E614372657375;
  }

  if (sub_2440D04B0())
  {
    return 0x6C6C614672657375;
  }

  return 0;
}

id sub_244058BC0(id result, double a2, double a3)
{
  v4 = *(result + 2);
  if (!v4)
  {
    __break(1u);
    goto LABEL_23;
  }

  v6 = *(result + 4);
  v7 = *(result + 5);
  v52 = v6;
  v53 = v7;
  if (v4 == 1)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v8 = *(result + 6);
  v9 = *(result + 7);
  v10 = (1.0 - a3) * v8;
  v11 = v7 * a3;
  v12 = (1.0 - a3) * v9;
  v54 = v6 * a3 + v10;
  v55 = v11 + v12;
  v56 = v8;
  v57 = v9;
  if (v4 < 3)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  v13 = *(result + 8);
  v14 = *(result + 9);
  v58 = v10 + v13 * a3;
  v59 = v12 + v14 * a3;
  v60 = v13;
  v61 = v14;
  v15 = 72;
  v47 = a2;
  do
  {
    v16 = *&v51[v15 - 24];
    v18 = *&v51[v15 - 16];
    v17 = *&v51[v15 - 8];
    v19 = *&v51[v15];
    v20 = v18 - *&v51[v15 - 32];
    v21 = v16 - v6;
    v22 = atan2(v20, v16 - v6);
    v23 = v18 - v19;
    v24 = v16 - v17;
    v25 = v22 - atan2(v23, v24);
    v26 = v25 + 6.28318531;
    if (v25 >= 0.0)
    {
      v26 = v25;
    }

    v50 = v26;
    v27 = fabs(tan(v26 * 0.5));
    v28 = a2 / v27;
    v29 = sqrt(v21 * v21 + v20 * v20);
    v30 = sqrt(v24 * v24 + v23 * v23);
    if (v30 >= v29)
    {
      v31 = v29;
    }

    else
    {
      v31 = v30;
    }

    if (v31 < v28)
    {
      v28 = v31;
    }

    v49 = v27 * v28;
    v32 = sqrt(v28 * v28 + v49 * v49);
    v33 = v16 - v21 * v28 / v29;
    v34 = v18 - v20 * v28 / v29;
    v35 = v16 - v24 * v28 / v30;
    v36 = v18 - v23 * v28 / v30;
    v37 = v16 + v16 - v33 - v35;
    v38 = v18 + v18 - v34 - v36;
    v39 = sqrt(v37 * v37 + v38 * v38);
    v40 = v16 - v32 * v37 / v39;
    v41 = v18 - v32 * v38 / v39;
    v42 = atan2(v34 - v41, v33 - v40);
    if (v42 < 0.0)
    {
      v42 = v42 + 6.28318531;
    }

    v48 = v42;
    v43 = atan2(v36 - v41, v35 - v40);
    if (v43 >= 0.0)
    {
      v44 = v43;
    }

    else
    {
      v44 = v43 + 6.28318531;
    }

    if (v15 == 72)
    {
      v45 = &selRef_moveToPoint_;
    }

    else
    {
      v45 = &selRef_addLineToPoint_;
    }

    [v3 *v45];
    v46 = v44;
    a2 = v47;
    result = [v3 addArcWithCenter:v50 < 3.14159265 radius:v40 startAngle:v41 endAngle:v49 clockwise:{v48, v46}];
    v15 += 16;
    v6 = v16;
  }

  while (v15 != 120);
  return result;
}

char *sub_244058E70(char *result, double a2)
{
  v3 = *(result + 2);
  if (v3)
  {
    v4 = result + 32;
    v5 = (result + 40);
    v6 = 1;
    v7 = *(result + 2);
    do
    {
      v8 = *v5;
      if (--v7)
      {
        v9 = v6;
      }

      else
      {
        v9 = 0;
      }

      v10 = &v4[16 * v9];
      v12 = *v10;
      v11 = v10[1];
      v13 = &v4[16 * ((v6 + 1) % v3)];
      v14 = *v13;
      v15 = v13[1];
      v16 = v11 - v8;
      v17 = v12 - *(v5 - 1);
      v18 = atan2(v11 - v8, v17);
      v19 = v11 - v15;
      v20 = v12 - v14;
      v21 = v18 - atan2(v19, v12 - v14);
      v22 = v21 + 6.28318531;
      if (v21 >= 0.0)
      {
        v22 = v21;
      }

      v45 = v22;
      v23 = fabs(tan(v22 * 0.5));
      v24 = a2 / v23;
      v25 = sqrt(v17 * v17 + v16 * v16);
      v26 = sqrt(v20 * v20 + v19 * v19);
      if (v26 >= v25)
      {
        v27 = v25;
      }

      else
      {
        v27 = v26;
      }

      if (v27 < v24)
      {
        v24 = v27;
      }

      v44 = v23 * v24;
      v28 = sqrt(v24 * v24 + v44 * v44);
      v29 = v12 - v17 * v24 / v25;
      v30 = v11 - v16 * v24 / v25;
      v31 = v12 - v20 * v24 / v26;
      v32 = v11 - v19 * v24 / v26;
      v33 = v12 + v12 - v29 - v31;
      v34 = v11 + v11 - v30 - v32;
      v35 = sqrt(v33 * v33 + v34 * v34);
      v36 = v12 - v28 * v33 / v35;
      v37 = v11 - v28 * v34 / v35;
      v38 = atan2(v30 - v37, v29 - v36);
      if (v38 >= 0.0)
      {
        v39 = v38;
      }

      else
      {
        v39 = v38 + 6.28318531;
      }

      v40 = atan2(v32 - v37, v31 - v36);
      if (v40 >= 0.0)
      {
        v41 = v40;
      }

      else
      {
        v41 = v40 + 6.28318531;
      }

      if (v6 == 1)
      {
        v42 = &selRef_moveToPoint_;
      }

      else
      {
        v42 = &selRef_addLineToPoint_;
      }

      [v2 *v42];
      [v2 addArcWithCenter:v45 < 3.14159265 radius:v36 startAngle:v37 endAngle:v44 clockwise:{v39, v41}];
      v5 += 2;
      ++v6;
    }

    while (v7);

    return [v2 closePath];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_244059118(uint64_t a1)
{
  v2 = sub_244059B84(&qword_27EDC4AF8, type metadata accessor for Key);
  v3 = sub_244059B84(&unk_27EDC4B98, type metadata accessor for Key);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

char *sub_2440591D4(char *a1, int64_t a2, char a3)
{
  result = sub_244059214(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2440591F4(size_t a1, int64_t a2, char a3)
{
  result = sub_244059320(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_244059214(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0160);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

size_t sub_244059320(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC4BC0);
  v10 = *(sub_2440D0350() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
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
  v15 = *(sub_2440D0350() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
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

unint64_t sub_2440594F8(uint64_t a1)
{
  sub_2440D2FB0();
  sub_2440D3B20();
  sub_2440D30B0();
  v2 = sub_2440D3B50();

  return sub_24405958C(a1, v2);
}

unint64_t sub_24405958C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_2440D2FB0();
      v8 = v7;
      if (v6 == sub_2440D2FB0() && v8 == v9)
      {
        break;
      }

      v11 = sub_2440D3A10();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_244059690()
{
  result = qword_27EDC4AC8;
  if (!qword_27EDC4AC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EDC4AC8);
  }

  return result;
}

uint64_t sub_2440596DC(uint64_t a1, unint64_t a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = a2 >> 62;
  v28 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      v4 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v3 != 2)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v4 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v4 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v7 = MEMORY[0x277D84F90];
  if (v4)
  {
    v45 = MEMORY[0x277D84F90];
    sub_2440591D4(0, v4 & ~(v4 >> 63), 0);
    v8 = a1;
    if (v3)
    {
      if (v3 == 2)
      {
        v9 = *(a1 + 16);
      }

      else
      {
        v9 = a1;
      }
    }

    else
    {
      v9 = 0;
    }

    v32 = v9;
    if (v4 < 0)
    {
      goto LABEL_48;
    }

    v10 = 0;
    v7 = v45;
    v27 = &v33 + v9;
    v30 = v4;
    v31 = v3;
    do
    {
      if (v10 >= v4)
      {
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
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_41;
      }

      v12 = v32 + v10;
      if (v3 == 2)
      {
        if (v12 < *(v8 + 16))
        {
          goto LABEL_43;
        }

        if (v12 >= *(v8 + 24))
        {
          goto LABEL_45;
        }

        v17 = sub_2440D03C0();
        if (!v17)
        {
          goto LABEL_51;
        }

        v14 = v17;
        v18 = sub_2440D03F0();
        v16 = v12 - v18;
        if (__OFSUB__(v12, v18))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v3 != 1)
        {
          if (v12 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v33 = v8;
          v34 = BYTE2(v8);
          v35 = BYTE3(v8);
          v36 = v28;
          v37 = BYTE5(v8);
          v38 = BYTE6(v8);
          v39 = HIBYTE(v8);
          v40 = a2;
          v41 = BYTE2(a2);
          v42 = BYTE3(a2);
          v43 = BYTE4(a2);
          v44 = BYTE5(a2);
          v19 = v27[v10];
          goto LABEL_36;
        }

        if (v12 < a1 || v12 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v13 = sub_2440D03C0();
        if (!v13)
        {
          goto LABEL_50;
        }

        v14 = v13;
        v15 = sub_2440D03F0();
        v16 = v12 - v15;
        if (__OFSUB__(v12, v15))
        {
          goto LABEL_46;
        }
      }

      v19 = *(v14 + v16);
      v8 = a1;
LABEL_36:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC38B0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_2440D5CF0;
      *(v20 + 56) = MEMORY[0x277D84B78];
      *(v20 + 64) = MEMORY[0x277D84BC0];
      *(v20 + 32) = v19;
      v21 = sub_2440D3000();
      v23 = v22;
      v45 = v7;
      v3 = *(v7 + 16);
      v24 = *(v7 + 24);
      if (v3 >= v24 >> 1)
      {
        sub_2440591D4((v24 > 1), v3 + 1, 1);
        v8 = a1;
        v7 = v45;
      }

      *(v7 + 16) = v3 + 1;
      v25 = v7 + 16 * v3;
      *(v25 + 32) = v21;
      *(v25 + 40) = v23;
      ++v10;
      v4 = v30;
      LODWORD(v3) = v31;
    }

    while (v11 != v30);
  }

  return v7;
}

unint64_t sub_244059A48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4BA8);
    v3 = sub_2440D3910();
    v4 = a1 + 32;

    while (1)
    {
      sub_243F5F574(v4, &v11, &qword_27EDC4AF0);
      v5 = v11;
      result = sub_2440594F8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_243F734CC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_244059B84(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_244059BCC()
{
  result = qword_27EDC46E0;
  if (!qword_27EDC46E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EDC4B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC46E0);
  }

  return result;
}

id sub_244059C30()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = sub_2440D0670();
  v6[0] = 0;
  v2 = [v0 initForReadingFromData:v1 error:v6];

  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_2440D0550();

    swift_willThrow();
  }

  return v2;
}

unint64_t sub_244059CF4()
{
  result = qword_27EDC4B20;
  if (!qword_27EDC4B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4B20);
  }

  return result;
}

uint64_t sub_244059E30(char a1, char a2)
{
  if (a2 == 2)
  {
    if (a1)
    {
      return 0x64656B63656863;
    }

    else
    {
      return 0x43746E656D796170;
    }
  }

  else
  {
    v2 = 0x6C616974696E69;
    if ((a1 & 1) == 0)
    {
      v2 = 0x49746E656D796170;
    }

    v3 = 1702060386;
    v4 = 0x42746E656D796170;
    if (a1)
    {
      v4 = 1702060386;
    }

    else
    {
      v3 = 0x42746E656D796170;
    }

    if (!a2)
    {
      v3 = v4;
    }

    if (a2 == 1)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_244059F30(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0x49746E656D796170;
  v5 = 0xEE006C616974696ELL;
  if (a1 != 5)
  {
    v4 = 0x43746E656D796170;
    v5 = 0xEE0064656B636568;
  }

  v6 = 0xE700000000000000;
  v7 = 0x676E6964616F6CLL;
  if (a1 != 3)
  {
    v7 = 0x42746E656D796170;
    v6 = 0xEB00000000657361;
  }

  if (a1 <= 4u)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0x6C616974696E69;
  if (a1 != 1)
  {
    v8 = 0x64656B63656863;
  }

  if (a1)
  {
    v3 = 0xE700000000000000;
  }

  else
  {
    v8 = 1702060386;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      v11 = 0xE700000000000000;
      if (a2 == 1)
      {
        if (v9 != 0x6C616974696E69)
        {
          goto LABEL_39;
        }
      }

      else if (v9 != 0x64656B63656863)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v11 = 0xE400000000000000;
      if (v9 != 1702060386)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0x49746E656D796170;
      v13 = 0x6C616974696ELL;
    }

    else
    {
      v12 = 0x43746E656D796170;
      v13 = 0x64656B636568;
    }

    v11 = v13 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
    if (v9 != v12)
    {
      goto LABEL_39;
    }
  }

  else if (a2 == 3)
  {
    v11 = 0xE700000000000000;
    if (v9 != 0x676E6964616F6CLL)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v11 = 0xEB00000000657361;
    if (v9 != 0x42746E656D796170)
    {
      goto LABEL_39;
    }
  }

  if (v10 != v11)
  {
LABEL_39:
    v14 = sub_2440D3A10();
    goto LABEL_40;
  }

  v14 = 1;
LABEL_40:

  return v14 & 1;
}

uint64_t sub_24405A194()
{
  sub_2440D30B0();
}

uint64_t sub_24405A2C4()
{
  sub_2440D3B20();
  sub_2440D30B0();

  return sub_2440D3B50();
}

uint64_t sub_24405A400@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24405C0D4();
  *a1 = result;
  return result;
}

void sub_24405A444(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1702060386;
  v5 = 0xEE006C616974696ELL;
  v6 = 0x49746E656D796170;
  if (v2 != 5)
  {
    v6 = 0x43746E656D796170;
    v5 = 0xEE0064656B636568;
  }

  v7 = 0xE700000000000000;
  v8 = 0x676E6964616F6CLL;
  if (v2 != 3)
  {
    v8 = 0x42746E656D796170;
    v7 = 0xEB00000000657361;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x6C616974696E69;
  if (v2 != 1)
  {
    v9 = 0x64656B63656863;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

void *sub_24405A53C()
{
  v1 = OBJC_IVAR____TtCV19ContactlessReaderUI29ContactlessGlyphAnimationView11Coordinator_mica;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_24405A588(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV19ContactlessReaderUI29ContactlessGlyphAnimationView11Coordinator_mica;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_24405A688(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV19ContactlessReaderUI29ContactlessGlyphAnimationView11Coordinator_micaStates;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_24405A740()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v1 - 8);
  v45 = &v42 - v2;
  v3 = sub_2440D05F0();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v46 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v47 = &v42 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1FE0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v42 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v42 - v15;
  v44 = OBJC_IVAR____TtCV19ContactlessReaderUI29ContactlessGlyphAnimationView11Coordinator_mica;
  *&v0[OBJC_IVAR____TtCV19ContactlessReaderUI29ContactlessGlyphAnimationView11Coordinator_mica] = 0;
  v48 = v0;
  v43 = OBJC_IVAR____TtCV19ContactlessReaderUI29ContactlessGlyphAnimationView11Coordinator_micaStates;
  *&v0[OBJC_IVAR____TtCV19ContactlessReaderUI29ContactlessGlyphAnimationView11Coordinator_micaStates] = 0;
  v17 = *sub_244056A6C();
  v18 = sub_2440D2F80();
  v19 = sub_2440D2F80();
  v20 = [v17 URLForResource:v18 withExtension:v19];

  if (v20)
  {
    sub_2440D05C0();

    (*(v4 + 56))(v14, 0, 1, v3);
  }

  else
  {
    (*(v4 + 56))(v14, 1, 1, v3);
  }

  v21 = v3;
  v22 = v4;
  sub_243FC8CA4(v14, v16);
  sub_243F5F574(v16, v11, &qword_27EDC1FE0);
  v23 = (*(v4 + 48))(v11, 1, v21);
  v24 = v48;
  if (v23 == 1)
  {
    sub_243F5EED4(v16, &qword_27EDC1FE0);
    v25 = v11;
LABEL_12:
    sub_243F5EED4(v25, &qword_27EDC1FE0);
    v41 = type metadata accessor for ContactlessGlyphAnimationView.Coordinator();
    v49.receiver = v24;
    v49.super_class = v41;
    objc_msgSendSuper2(&v49, sel_init);
    return;
  }

  v26 = *(v4 + 32);
  v27 = v47;
  v26(v47, v11, v21);
  sub_24405C144();
  v28 = v46;
  (*(v22 + 16))(v46, v27, v21);
  v29 = sub_2440D2FB0();
  v31 = sub_244049BC8(v28, v29, v30, 0);
  v32 = v44;
  swift_beginAccess();
  v33 = *&v24[v32];
  *&v24[v32] = v31;
  v34 = v31;

  if (v34)
  {
    v35 = [v34 availableStates];

    if (v35)
    {
      v36 = sub_2440D3220();
    }

    else
    {
      v36 = 0;
    }

    v37 = v43;
    swift_beginAccess();
    *&v24[v37] = v36;

    v38 = *&v24[v32];
    if (v38)
    {
      v39 = v38;
      v40 = sub_2440D2F80();
      [v39 transitionToStateWithName_];

      (*(v22 + 8))(v27, v21);
      v25 = v16;
      goto LABEL_12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_24405AE7C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContactlessGlyphAnimationView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_24405AF0C()
{
  v1 = *v0;
  v2 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4CA0);
  v3 = sub_2440D1F70();
  v4 = (*((*MEMORY[0x277D85000] & *v6) + 0x60))(v3);

  if (v4)
  {
    sub_244059E30(v2, v1);
    v5 = sub_2440D2F80();

    [v4 transitionToStateWithName_];
  }

  else
  {
    __break(1u);
  }
}

id sub_24405AFE8@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for ContactlessGlyphAnimationView.Coordinator()) init];
  *a1 = result;
  return result;
}

uint64_t sub_24405B020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24405C998();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_24405B084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24405C998();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_24405B0E8()
{
  sub_24405C998();
  sub_2440D1CE0();
  __break(1u);
}

uint64_t sub_24405B110@<X0>(int a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v39 = a2;
  v8 = a1;
  v38 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4CD8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v34 - v14;
  v42 = sub_2440D2680();
  v41 = sub_2440D1860();
  v40 = sub_2440D20B0();
  LOBYTE(v45) = v8;
  v46 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC13D8);
  sub_2440D2820();
  v37 = v44;
  LOBYTE(v45) = a3;
  v46 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0);
  sub_2440D2820();
  v16 = v44;
  sub_2440D2B00();
  sub_2440D1560();
  v35 = v47;
  v36 = v45;
  v17 = v50;
  v34 = v49;
  v44 = v46;
  v43 = v48;
  sub_2440D2C40();
  v19 = v18;
  v21 = v20;
  v22 = v44;
  v23 = v43;
  *v15 = sub_2440D1C20();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4CE0);
  sub_24405B3BC(v38, v39, a3, a4, &v15[*(v24 + 44)]);
  sub_243F5F574(v15, v13, &qword_27EDC4CD8);
  v25 = v41;
  *a5 = v42;
  *(a5 + 8) = v25;
  *(a5 + 16) = v40;
  *(a5 + 24) = v37;
  *(a5 + 25) = (v16 & 1) == 0;
  v26 = v35;
  *(a5 + 32) = v36;
  *(a5 + 40) = v22;
  *(a5 + 48) = v26;
  *(a5 + 56) = v23;
  *(a5 + 64) = v34;
  *(a5 + 72) = v17;
  __asm { FMOV            V0.2D, #2.0 }

  *(a5 + 80) = _Q0;
  *(a5 + 96) = v19;
  *(a5 + 104) = v21;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4CE8);
  sub_243F5F574(v13, a5 + *(v32 + 64), &qword_27EDC4CD8);

  sub_243F5EED4(v15, &qword_27EDC4CD8);
  sub_243F5EED4(v13, &qword_27EDC4CD8);
}

uint64_t sub_24405B3BC@<X0>(int a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v46 = a2;
  v45 = a1;
  v58 = a5;
  v7 = sub_2440D1D90();
  v8 = *(v7 - 8);
  v56 = v7;
  v57 = v8;
  MEMORY[0x28223BE20](v7);
  v51 = &v44[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4CF0);
  v55 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v49 = &v44[-v10];
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4CF8) - 8;
  v11 = MEMORY[0x28223BE20](v52);
  v54 = &v44[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v60 = &v44[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4D00);
  MEMORY[0x28223BE20](v14);
  v16 = &v44[-v15];
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4D08);
  v48 = *(v50 - 8);
  v17 = MEMORY[0x28223BE20](v50);
  v47 = &v44[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v59 = &v44[-v19];
  sub_2440D1B70();
  v63 = a3;
  v64 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0);
  sub_2440D2840();
  sub_2440D2920();
  v20 = sub_2440D20A0();
  v21 = &v16[*(v14 + 36)];
  *v21 = v20;
  *(v21 + 8) = 0u;
  *(v21 + 24) = 0u;
  v21[40] = 1;
  LOBYTE(v61) = a3;
  v62 = a4;
  sub_2440D2820();
  LOBYTE(v61) = v63;
  v22 = swift_allocObject();
  v23 = v45;
  *(v22 + 16) = v45;
  v24 = v46;
  *(v22 + 24) = v46;
  *(v22 + 32) = a3;
  *(v22 + 40) = a4;
  sub_24405C720();

  v25 = v59;
  sub_2440D25D0();

  sub_243F5EED4(v16, &qword_27EDC4D00);
  sub_2440D1B70();
  v63 = v23;
  v64 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC13D8);
  sub_2440D2840();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4D20);
  sub_24405C7D8();
  sub_24405C82C();
  v26 = v49;
  sub_2440D2900();
  v27 = v51;
  sub_2440D1D80();
  sub_243F5DD50(&qword_27EDC4D38, &qword_27EDC4CF0);
  v28 = v60;
  v29 = v53;
  v30 = v56;
  sub_2440D23A0();
  (*(v57 + 8))(v27, v30);
  (*(v55 + 8))(v26, v29);
  v31 = sub_2440D20A0();
  v32 = &v28[*(v52 + 44)];
  *v32 = v31;
  *(v32 + 8) = 0u;
  *(v32 + 24) = 0u;
  v32[40] = 1;
  v33 = v47;
  v34 = v48;
  v35 = *(v48 + 16);
  v36 = v25;
  v37 = v50;
  v35(v47, v36, v50);
  v38 = v54;
  sub_243F5F574(v28, v54, &qword_27EDC4CF8);
  v39 = v58;
  *v58 = 0;
  *(v39 + 8) = 1;
  v40 = v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4D40);
  v35(v40 + *(v41 + 48), v33, v37);
  sub_243F5F574(v38, v40 + *(v41 + 64), &qword_27EDC4CF8);
  sub_243F5EED4(v60, &qword_27EDC4CF8);
  v42 = *(v34 + 8);
  v42(v59, v37);
  sub_243F5EED4(v38, &qword_27EDC4CF8);
  return (v42)(v33, v37);
}

uint64_t sub_24405BA80()
{
  v0 = 0;
  v1 = MEMORY[0x277D84F90];
  do
  {
    v4 = byte_28577B070[v0 + 32];
    v5 = sub_2440D3170();

    if ((v5 & 1) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_24405BFC0(0, *(v1 + 16) + 1, 1);
      }

      v3 = *(v1 + 16);
      v2 = *(v1 + 24);
      if (v3 >= v2 >> 1)
      {
        sub_24405BFC0((v2 > 1), v3 + 1, 1);
      }

      *(v1 + 16) = v3 + 1;
      *(v1 + v3 + 32) = v4;
    }

    ++v0;
  }

  while (v0 != 7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4CB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4D48);
  sub_243F5DD50(&qword_27EDC4D50, &qword_27EDC4CB8);
  sub_24405C7D8();
  swift_getOpaqueTypeConformance2();
  sub_24405C8F0();
  return sub_2440D29C0();
}

char *sub_24405BD64@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *&aPaymentbpaymen[8 * v2 + 24];
  *a2 = *&aBase_3[8 * v2];
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;
  *(a2 + 24) = MEMORY[0x277D84F90];
  *(a2 + 32) = v2;
  *(a2 + 33) = 1;
  return result;
}

uint64_t sub_24405BDA4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 1);
  v4 = v1[16];
  v5 = *(v1 + 3);
  v6 = *v1;
  *a1 = sub_2440D2B00();
  a1[1] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4CC8);
  sub_24405B110(v6, v3, v4, v5, a1 + *(v8 + 44));
  v9 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4CD0) + 36));
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4798) + 28);
  v11 = *MEMORY[0x277CDF3C0];
  v12 = sub_2440D1410();
  (*(*(v12 - 8) + 104))(v9 + v10, v11, v12);
  result = swift_getKeyPath();
  *v9 = result;
  return result;
}

uint64_t sub_24405BEA8@<X0>(uint64_t a1@<X8>)
{
  sub_2440D2810();
  result = sub_2440D2810();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  return result;
}

uint64_t sub_24405BF28(uint64_t a1)
{
  v2 = sub_24405C944();

  return MEMORY[0x28212D8F0](a1, v2);
}

uint64_t sub_24405BF74(uint64_t a1)
{
  v2 = sub_24405C944();

  return MEMORY[0x28212D8E0](a1, v2);
}

char *sub_24405BFC0(char *a1, int64_t a2, char a3)
{
  result = sub_24405BFE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24405BFE0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4D60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

uint64_t sub_24405C0D4()
{
  v0 = sub_2440D3970();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_24405C144()
{
  result = qword_27EDC4740;
  if (!qword_27EDC4740)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EDC4740);
  }

  return result;
}

void sub_24405C190()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4CA0);
  v1 = sub_2440D1F70();
  v2 = (*((*MEMORY[0x277D85000] & **&v11.m11) + 0x60))(v1);

  if (v2)
  {
    v3 = v2;
    v4 = sub_2440D2F80();
    [v3 transitionToStateWithName_];

    v5 = v3;
    v6 = [v5 rootLayer];
    v7 = v5;
    if (v6)
    {
      v8 = v6;
      CATransform3DMakeScale(&v11, 1.0, -1.0, 1.0);
      [v8 setTransform_];
      v7 = [v0 layer];
      [v7 addSublayer_];
    }

    v9 = v0;
    v10 = sub_2440D2F80();
    [v9 setAccessibilityIdentifier_];
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_24405C358()
{
  result = qword_27EDC4CA8;
  if (!qword_27EDC4CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4CA8);
  }

  return result;
}

unint64_t sub_24405C3FC()
{
  result = qword_27EDC4CC0;
  if (!qword_27EDC4CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4CC0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContactlessGlyphAnimationView(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
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

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContactlessGlyphAnimationView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
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
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24405C5F4()
{
  result = qword_27EDD12D0[0];
  if (!qword_27EDD12D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EDD12D0);
  }

  return result;
}

uint64_t sub_24405C674()
{

  return swift_deallocObject();
}

unint64_t sub_24405C720()
{
  result = qword_27EDC4D10;
  if (!qword_27EDC4D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4D00);
    sub_243F5DD50(&qword_27EDC4D18, &qword_27EDC1150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4D10);
  }

  return result;
}

unint64_t sub_24405C7D8()
{
  result = qword_27EDC4D28;
  if (!qword_27EDC4D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4D28);
  }

  return result;
}

unint64_t sub_24405C82C()
{
  result = qword_27EDC4D30;
  if (!qword_27EDC4D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4D20);
    sub_24405C7D8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4D30);
  }

  return result;
}

unint64_t sub_24405C8F0()
{
  result = qword_27EDC4D58;
  if (!qword_27EDC4D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4D58);
  }

  return result;
}

unint64_t sub_24405C944()
{
  result = qword_27EDC4D68;
  if (!qword_27EDC4D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4D68);
  }

  return result;
}

unint64_t sub_24405C998()
{
  result = qword_27EDC4D70;
  if (!qword_27EDC4D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4D70);
  }

  return result;
}

unint64_t sub_24405C9F0()
{
  result = qword_27EDC4D78;
  if (!qword_27EDC4D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4CD0);
    sub_243F5DD50(&qword_27EDC4D80, &qword_27EDC4D88);
    sub_243F5DD50(&qword_27EDC4880, &qword_27EDC4798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4D78);
  }

  return result;
}

uint64_t sub_24405CAD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v13 = *(*(a6 - 8) + 32);
  v13(a7, a1, a6);
  v14 = type metadata accessor for Transition();
  result = (v13)(a7 + v14[9], a2, a6);
  *(a7 + v14[10]) = a3;
  v16 = (a7 + v14[11]);
  *v16 = a4;
  v16[1] = a5;
  return result;
}

uint64_t sub_24405CBC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v14 = *(a7 - 8);
  v15 = *(v14 + 16);
  v15(a8, a1, a7);
  v16 = type metadata accessor for Transition();
  v15(a8 + v16[9], a2, a7);
  sub_24405D1CC(a6, a6);
  v17 = *(a6 - 8);
  swift_allocObject();
  v18 = sub_2440D3240();
  (*(v17 + 32))(v19, a3, a6);
  sub_2440D32F0();
  v20 = *(v14 + 8);
  v20(a2, a7);
  result = (v20)(a1, a7);
  *(a8 + v16[10]) = v18;
  v22 = (a8 + v16[11]);
  *v22 = a4;
  v22[1] = a5;
  return result;
}

uint64_t sub_24405CD98(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_24405CF94(*a1);
  v5 = v4;
  if (v3 == sub_24405CF94(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2440D3A10();
  }

  return v8 & 1;
}

uint64_t sub_24405CE20()
{
  v1 = *v0;
  sub_2440D3B20();
  sub_24405CF94(v1);
  sub_2440D30B0();

  return sub_2440D3B50();
}

uint64_t sub_24405CE84()
{
  sub_24405CF94(*v0);
  sub_2440D30B0();
}

uint64_t sub_24405CED8()
{
  v1 = *v0;
  sub_2440D3B20();
  sub_24405CF94(v1);
  sub_2440D30B0();

  return sub_2440D3B50();
}

uint64_t sub_24405CF38@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24405D240();
  *a1 = result;
  return result;
}

unint64_t sub_24405CF68@<X0>(unint64_t *a1@<X8>)
{
  result = sub_24405CF94(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_24405CF94(char a1)
{
  result = 0x68636E75616CLL;
  switch(a1)
  {
    case 1:
      result = 0x676E697472617473;
      break;
    case 2:
      result = 0x7964616572;
      break;
    case 3:
      result = 0x676E6964616572;
      break;
    case 4:
      result = 0x676E696E6E616373;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x796C6E4F7271;
      break;
    case 7:
      result = 0x41676E6974696177;
      break;
    case 8:
      result = 0x73736563637573;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0x6F727245776F6873;
      break;
    case 11:
      result = 0x6F727245776F6873;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0x7261655463666ELL;
      break;
    case 14:
      result = 0x6E6946726F727265;
      break;
    case 15:
      result = 0x656C6C65636E6163;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24405D1CC(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC27D0);
  }

  else
  {

    return sub_2440D39D0();
  }
}

uint64_t sub_24405D240()
{
  v0 = sub_2440D3970();

  if (v0 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_24405D290()
{
  result = qword_27EDC4D90;
  if (!qword_27EDC4D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4D90);
  }

  return result;
}

void sub_24405D2F0()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_2440D32F0();
    if (v1 <= 0x3F)
    {
      sub_24405D6D0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24405D394(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(v4 + 80);
  v9 = v6 + v8;
  v10 = v6 + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v11 = ((((v10 + (v9 & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v12 = a2 - v7;
  v13 = v11 & 0xFFFFFFF8;
  if ((v11 & 0xFFFFFFF8) != 0)
  {
    v14 = 2;
  }

  else
  {
    v14 = v12 + 1;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *(a1 + v11);
      if (!v17)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v17 = *(a1 + v11);
      if (!v17)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v16 || (v17 = *(a1 + v11)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v20 = *((v10 + ((a1 + v9) & ~v8)) & 0xFFFFFFFFFFFFFFF8);
    if (v20 >= 0xFFFFFFFF)
    {
      LODWORD(v20) = -1;
    }

    return (v20 + 1);
  }

  v19 = v17 - 1;
  if (v13)
  {
    v19 = 0;
    LODWORD(v13) = *a1;
  }

  return v7 + (v13 | v19) + 1;
}

_BYTE *sub_24405D4F0(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 24) - 8) + 64);
  v9 = *(v5 + 80);
  v10 = v8 + v9;
  v11 = (v8 + v9) & ~v9;
  v12 = v8 + 7;
  v13 = ((((v12 + v11) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v17 = 0;
    v18 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v14 = a3 - v7;
    if (((((v12 + v11) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 2;
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

    v18 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v17 > 1)
      {
        if (v17 != 2)
        {
          *&result[v13] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v13] = 0;
      }

      else if (v17)
      {
        result[v13] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v23 = ((v12 + (&result[v10] & ~v9)) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v24 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v24 = a2 - 1;
        }

        *v23 = v24;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  if (v13)
  {
    v19 = 1;
  }

  else
  {
    v19 = v18;
  }

  if (v13)
  {
    v20 = ~v7 + a2;
    v21 = result;
    bzero(result, v13);
    result = v21;
    *v21 = v20;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      *&result[v13] = v19;
    }

    else
    {
      *&result[v13] = v19;
    }
  }

  else if (v17)
  {
    result[v13] = v19;
  }

  return result;
}

void sub_24405D6D0()
{
  if (!qword_27EDC4D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4DA0);
    v0 = sub_2440D3630();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDC4D98);
    }
  }
}

uint64_t getEnumTagSinglePayload for TransactionUIState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TransactionUIState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IdentityUIState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IdentityUIState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_24405D9D4()
{
  type metadata accessor for TapViewModel();
  v0 = sub_244094744();
  return sub_24409478C(v0);
}

uint64_t type metadata accessor for TapView()
{
  result = qword_27EDD1870;
  if (!qword_27EDD1870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24405DA50@<X0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v2 = type metadata accessor for TapView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4DB8);
  v61 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v72 = &v60 - v5;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4DC0);
  v63 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v73 = &v60 - v6;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4DC8);
  v65 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v75 = &v60 - v7;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4DD0);
  v67 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v74 = &v60 - v8;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4DD8);
  v69 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v76 = &v60 - v9;
  sub_2440601C0(v1, &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v86 = *(v3 + 80);
  v10 = (v86 + 16) & ~v86;
  v84 = v4;
  v11 = swift_allocObject();
  v85 = type metadata accessor for TapView;
  sub_244066E4C(&v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for TapView);
  v12 = sub_2440D1860();
  v13 = sub_2440D20D0();
  v89 = sub_244060228;
  v90 = v11;
  v91 = v12;
  LOBYTE(v92) = v13;
  v14 = *(v1 + 8);
  v78 = *v1;
  v71 = v14;
  v81 = *(v1 + 16);
  v87 = type metadata accessor for TapViewModel();
  v79 = sub_2440678A4(&qword_27EDC4DA8, type metadata accessor for TapViewModel);
  v15 = *sub_2440D1490();
  LOBYTE(v12) = (*(v15 + 856))();

  LOBYTE(v88) = v12 & 1;
  v83 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2440601C0(v1, v83);
  v77 = v10;
  v16 = swift_allocObject();
  v17 = v85;
  sub_244066E4C(&v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v10, v85);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4DE0);
  v18 = sub_244064248();
  sub_2440D25D0();

  v19 = *sub_2440D1490();
  LOBYTE(v12) = (*(v19 + 376))();

  LOBYTE(v88) = v12 & 1;
  v20 = v1;
  v82 = v1;
  v21 = v83;
  sub_2440601C0(v1, v83);
  v22 = v77;
  v23 = swift_allocObject();
  sub_244066E4C(v21, v23 + v22, v17);
  v89 = v80;
  v90 = MEMORY[0x277D839B0];
  v91 = v18;
  v92 = MEMORY[0x277D839C8];
  v80 = MEMORY[0x277CE0E30];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = v60;
  v26 = v72;
  sub_2440D25D0();

  (*(v61 + 8))(v26, v25);
  v27 = *sub_2440D1490();
  LOBYTE(v12) = (*(v27 + 616))();

  LOBYTE(v88) = v12;
  v28 = v83;
  sub_2440601C0(v20, v83);
  v29 = v77;
  v30 = swift_allocObject();
  v31 = v85;
  sub_244066E4C(v28, v30 + v29, v85);
  v89 = v25;
  v90 = MEMORY[0x277D839B0];
  v91 = OpaqueTypeConformance2;
  v92 = MEMORY[0x277D839C8];
  v61 = swift_getOpaqueTypeConformance2();
  v72 = sub_24401B0B0();
  v32 = v62;
  v33 = v73;
  sub_2440D25D0();

  (*(v63 + 8))(v33, v32);
  v34 = *sub_2440D1490();
  v35 = (*(v34 + 712))();

  v88 = v35;
  v36 = v83;
  sub_2440601C0(v82, v83);
  v37 = v77;
  v38 = swift_allocObject();
  sub_244066E4C(v36, v38 + v37, v31);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC4B00);
  v89 = v32;
  v90 = &type metadata for ParticlesState;
  v91 = v61;
  v92 = v72;
  v39 = swift_getOpaqueTypeConformance2();
  v73 = sub_244064780();
  v40 = v64;
  v41 = v75;
  sub_2440D25D0();

  (*(v65 + 8))(v41, v40);
  v42 = *sub_2440D1490();
  LOBYTE(v35) = (*(v42 + 424))();

  LOBYTE(v88) = v35 & 1;
  v43 = v83;
  sub_2440601C0(v82, v83);
  v44 = swift_allocObject();
  sub_244066E4C(v43, v44 + v37, v85);
  v89 = v40;
  v90 = v63;
  v91 = v39;
  v92 = v73;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = v66;
  v47 = v74;
  sub_2440D25D0();

  (*(v67 + 8))(v47, v46);
  v48 = *sub_2440D1490();
  LOBYTE(v35) = (*(v48 + 808))();

  LOBYTE(v88) = v35;
  v49 = v82;
  sub_2440601C0(v82, v43);
  v50 = swift_allocObject();
  v51 = v85;
  sub_244066E4C(v43, v50 + v37, v85);
  v89 = v46;
  v90 = MEMORY[0x277D839B0];
  v91 = v45;
  v92 = MEMORY[0x277D839C8];
  swift_getOpaqueTypeConformance2();
  sub_243FFD4A8();
  v52 = v70;
  v53 = v68;
  v54 = v76;
  sub_2440D25D0();

  (*(v69 + 8))(v54, v53);
  sub_2440601C0(v49, v43);
  v55 = swift_allocObject();
  sub_244066E4C(v43, v55 + v37, v51);
  v56 = (v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4E08) + 36));
  *v56 = 0;
  v56[1] = 0;
  v56[2] = sub_244064A98;
  v56[3] = v55;
  sub_2440601C0(v49, v43);
  v57 = swift_allocObject();
  sub_244066E4C(v43, v57 + v37, v51);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4E10);
  v59 = (v52 + *(result + 36));
  *v59 = sub_2440651BC;
  v59[1] = v57;
  v59[2] = 0;
  v59[3] = 0;
  return result;
}

uint64_t sub_24405E784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v220 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4E88);
  v201 = *(v5 - 8);
  v202 = v5;
  MEMORY[0x28223BE20](v5);
  v193 = &v164 - v6;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4E90);
  v7 = MEMORY[0x28223BE20](v190);
  v192 = &v164 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v191 = (&v164 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4E98);
  v216 = *(v10 - 8);
  v217 = v10;
  MEMORY[0x28223BE20](v10);
  v200 = &v164 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4EA0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v219 = &v164 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v218 = &v164 - v15;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4EA8);
  MEMORY[0x28223BE20](v207);
  v206 = (&v164 - v16);
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4EB0);
  MEMORY[0x28223BE20](v208);
  v210 = &v164 - v17;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4EB8);
  MEMORY[0x28223BE20](v209);
  v213 = &v164 - v18;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4EC0);
  v19 = MEMORY[0x28223BE20](v212);
  v215 = &v164 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v211 = &v164 - v22;
  MEMORY[0x28223BE20](v21);
  v226 = &v164 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4EC8);
  v204 = *(v24 - 8);
  v205 = v24;
  MEMORY[0x28223BE20](v24);
  v197 = (&v164 - v25);
  v26 = sub_2440D1B10();
  v184 = *(v26 - 8);
  v185 = v26;
  v27 = MEMORY[0x28223BE20](v26);
  v182 = &v164 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v183 = &v164 - v29;
  v30 = sub_2440D1670();
  v166 = *(v30 - 8);
  v167 = v30;
  MEMORY[0x28223BE20](v30);
  v165 = &v164 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for ParticlesView();
  MEMORY[0x28223BE20](v32 - 8);
  v171 = &v164 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC36E0);
  MEMORY[0x28223BE20](v168);
  v177 = &v164 - v34;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC36E8);
  MEMORY[0x28223BE20](v175);
  v176 = &v164 - v35;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC36F0);
  MEMORY[0x28223BE20](v173);
  v174 = &v164 - v36;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC36F8);
  MEMORY[0x28223BE20](v172);
  v170 = &v164 - v37;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3700);
  MEMORY[0x28223BE20](v169);
  v179 = &v164 - v38;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3708);
  MEMORY[0x28223BE20](v181);
  v180 = &v164 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3710);
  v194 = *(v40 - 8);
  v195 = v40;
  MEMORY[0x28223BE20](v40);
  v178 = &v164 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3718);
  v43 = MEMORY[0x28223BE20](v42 - 8);
  v196 = &v164 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v203 = &v164 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4ED0);
  v47 = MEMORY[0x28223BE20](v46 - 8);
  v214 = &v164 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v227 = &v164 - v49;
  v50 = type metadata accessor for TapView();
  v51 = *(v50 - 8);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50 - 8);
  sub_2440D1650();
  v54 = v53 / 10.0 * 3.0;
  v224 = a1;
  sub_2440D1650();
  v56 = v55 / 3.0 * 0.5;
  v57 = sub_244070850();
  if (*v57 < v56)
  {
    v56 = *v57;
  }

  sub_2440D1640();
  v59 = v58;
  v60 = a2;
  v61 = *(a2 + 8);
  v229 = *a2;
  v228 = v61;
  v62 = *(a2 + 16);
  v63 = type metadata accessor for TapViewModel();
  v64 = sub_2440678A4(&qword_27EDC4DA8, type metadata accessor for TapViewModel);
  v223 = v62;
  v222 = v63;
  sub_2440D14A0();
  swift_getKeyPath();
  v221 = v64;
  sub_2440D1740();

  v65 = v246;
  LOBYTE(v63) = v247;
  sub_2440601C0(v60, &v164 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = *(v51 + 80);
  v67 = (v66 + 16) & ~v66;
  v188 = v52;
  v186 = v66;
  v68 = swift_allocObject();
  v187 = v67;
  v189 = &v164 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_244066E4C(v189, v68 + v67, type metadata accessor for TapView);
  sub_243F676A0();
  sub_2440553C4(v65, *(&v65 + 1), v63, sub_244066CAC, v68, &v235);
  v69 = *(v60 + 72);
  v225 = v60;
  v70 = *(v60 + 80);
  v199 = v69;
  LOBYTE(v246) = v69;
  v198 = v70;
  *(&v246 + 1) = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0);
  sub_2440D2820();
  v71 = 1;
  if (v239 == 1)
  {
    v72 = v56 + v59 + v56 + v59;
    sub_2440D1650();
    v74 = v73 * 0.915;
    v75 = v225;
    v76 = *(v225 + 184);
    LOBYTE(v239) = *(v225 + 176);
    *(&v239 + 1) = v76;
    sub_2440D2840();
    v164 = *(&v246 + 1);
    v77 = v246;
    v78 = v247;
    v79 = *(v75 + 120);
    LOBYTE(v246) = *(v75 + 112);
    *(&v246 + 1) = v79;
    sub_2440D2820();
    v80 = 1;
    v81 = v203;
    if (v239 == 1)
    {
      sub_2440D14A0();
      swift_getKeyPath();
      sub_2440D1740();

      v82 = v246;
      v83 = *(v166 + 16);
      v166 = v77;
      v84 = v247;
      v85 = v78;
      v86 = v165;
      v83(v165, v224, v167);
      v87 = v171;
      v81 = v203;
      v88 = v86;
      v78 = v85;
      sub_244021204(v82, *(&v82 + 1), v84, v88, 1, v171, v56);
      sub_2440D2B00();
      sub_2440D18E0();
      v89 = v177;
      sub_244066E4C(v87, v177, type metadata accessor for ParticlesView);
      v90 = (v89 + *(v168 + 36));
      v91 = v244;
      v90[4] = v243;
      v90[5] = v91;
      v90[6] = v245;
      v92 = v240;
      *v90 = v239;
      v90[1] = v92;
      v93 = v242;
      v90[2] = v241;
      v90[3] = v93;
      sub_2440D2C40();
      v95 = v94;
      v97 = v96;
      v98 = v176;
      sub_243F681C8(v89, v176, &qword_27EDC36E0);
      v99 = (v98 + *(v175 + 36));
      *v99 = 0x400921FB54442D18;
      v99[1] = v95;
      v99[2] = v97;
      LOBYTE(v89) = sub_2440D20B0();
      v100 = v174;
      sub_243F681C8(v98, v174, &qword_27EDC36E8);
      *(v100 + *(v173 + 36)) = v89;
      v101 = sub_2440D2690();
      LOBYTE(v98) = sub_2440D20B0();
      v102 = v100;
      v103 = v170;
      sub_243F681C8(v102, v170, &qword_27EDC36F0);
      v104 = v103 + *(v172 + 36);
      *v104 = v101;
      *(v104 + 8) = v98;
      v105 = v179;
      sub_243F681C8(v103, v179, &qword_27EDC36F8);
      *(v105 + *(v169 + 36)) = 0x4000000000000000;
      v106 = v183;
      sub_2440D1B00();
      v108 = v184;
      v107 = v185;
      (*(v184 + 16))(v182, v106, v185);
      sub_2440678A4(&qword_27EDC0148, MEMORY[0x277CE0068]);
      v109 = sub_2440D1610();
      (*(v108 + 8))(v106, v107);
      v110 = v105;
      v77 = v166;
      v111 = v180;
      sub_243F681C8(v110, v180, &qword_27EDC3700);
      *(v111 + *(v181 + 36)) = v109;
      sub_24401DE30();
      v112 = v178;
      sub_2440D2480();
      sub_243F5EED4(v111, &qword_27EDC3708);
      sub_243F681C8(v112, v81, &qword_27EDC3710);
      v80 = 0;
    }

    (*(v194 + 56))(v81, v80, 1, v195);
    v113 = v196;
    sub_243F5F574(v81, v196, &qword_27EDC3718);
    v114 = v197;
    *v197 = v72;
    *(v114 + 8) = v74;
    v115 = v164;
    *(v114 + 16) = v77;
    *(v114 + 24) = v115;
    *(v114 + 32) = v78;
    *(v114 + 40) = 0x3FF0000000000000;
    v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4F00);
    sub_243F5F574(v113, v114 + *(v116 + 48), &qword_27EDC3718);

    sub_243F5EED4(v81, &qword_27EDC3718);
    sub_243F5EED4(v113, &qword_27EDC3718);

    sub_243F681C8(v114, v227, &qword_27EDC4EC8);
    v71 = 0;
  }

  (*(v204 + 56))(v227, v71, 1, v205);
  v117 = sub_2440D1C20();
  v118 = v206;
  *v206 = v117;
  *(v118 + 8) = 0;
  *(v118 + 16) = 0;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4ED8);
  v120 = v225;
  sub_2440603F4(v225, v224, v118 + *(v119 + 44), v56, v54);
  v121 = sub_2440CBE68();
  swift_beginAccess();
  v122 = *v121;

  v123 = *sub_2440D1490();
  v124 = (*(v123 + 808))();

  v125 = v118 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4EE0) + 36);
  *v125 = v122;
  *(v125 + 8) = v124;
  v126 = sub_2440D2BE0();
  v127 = *(v120 + 64);
  LOBYTE(v246) = *(v120 + 56);
  *(&v246 + 1) = v127;
  sub_2440D2820();
  LOBYTE(v121) = v260[0];
  v128 = v118 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4EE8) + 36);
  *v128 = v126;
  *(v128 + 8) = v121;
  *(v118 + *(v207 + 36)) = 0x4008000000000000;
  sub_2440D2B00();
  sub_2440D18E0();
  v129 = v210;
  sub_243F681C8(v118, v210, &qword_27EDC4EA8);
  v130 = (v129 + *(v208 + 36));
  v131 = v251;
  v130[4] = v250;
  v130[5] = v131;
  v130[6] = v252;
  v132 = v247;
  *v130 = v246;
  v130[1] = v132;
  v133 = v249;
  v130[2] = v248;
  v130[3] = v133;
  LOBYTE(v121) = sub_2440D20A0();
  sub_2440707FC();
  sub_2440D13D0();
  v135 = v134;
  v137 = v136;
  v139 = v138;
  v141 = v140;
  v142 = v213;
  sub_243F681C8(v129, v213, &qword_27EDC4EB0);
  v143 = v142 + *(v209 + 36);
  *v143 = v121;
  *(v143 + 8) = v135;
  *(v143 + 16) = v137;
  *(v143 + 24) = v139;
  *(v143 + 32) = v141;
  *(v143 + 40) = 0;
  v144 = *sub_2440D1490();
  (*(v144 + 760))(v253);

  if (v253[5])
  {
    sub_243F5EED4(v253, &qword_27EDBFF68);
    v145 = 0;
  }

  else
  {
    v146 = *sub_2440D1490();
    v145 = (*(v146 + 664))();
  }

  v147 = v211;
  sub_243F681C8(v142, v211, &qword_27EDC4EB8);
  *(v147 + *(v212 + 36)) = v145 & 1;
  sub_243F681C8(v147, v226, &qword_27EDC4EC0);
  v148 = *sub_2440D1490();
  (*(v148 + 760))(v254);

  if (v256)
  {
    v260[0] = v254[0];
    v260[1] = v254[1];
    v261 = v255;
    v262 = v256;
    v263 = v257;
    v264 = v258;
    v265 = v259;
    LOBYTE(v232[0]) = v199;
    *(&v232[0] + 1) = v198;
    sub_2440D2820();
    if (LOBYTE(v230[0]) == 1)
    {
      sub_2440D20B0();
      sub_2440D2680();
      sub_2440D26B0();

      swift_getKeyPath();
      v149 = sub_2440D1C20();
      v150 = v191;
      *v191 = v149;
      v150[1] = 0;
      *(v150 + 16) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2C80);
      sub_244063D68(v260);
    }

    sub_243F5EED4(v254, &qword_27EDBFF68);
    v152 = v218;
    v153 = v200;
    (*(v201 + 56))(v200, 1, 1, v202);
    sub_243F681C8(v153, v152, &qword_27EDC4E98);
    v151 = 0;
  }

  else
  {
    v151 = 1;
    v152 = v218;
  }

  (*(v216 + 56))(v152, v151, 1, v217);
  v154 = v214;
  sub_243F5F574(v227, v214, &qword_27EDC4ED0);
  v155 = v226;
  v156 = v215;
  sub_243F5F574(v226, v215, &qword_27EDC4EC0);
  v157 = v219;
  sub_243F5F574(v152, v219, &qword_27EDC4EA0);
  v158 = v236;
  v230[0] = v235;
  v230[1] = v236;
  v230[2] = v237;
  v159 = v237;
  v231 = v238;
  v160 = v220;
  *v220 = v235;
  v160[1] = v158;
  v161 = v231;
  v160[2] = v159;
  v160[3] = v161;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4EF0);
  sub_243F5F574(v154, v160 + v162[12], &qword_27EDC4ED0);
  sub_243F5F574(v156, v160 + v162[16], &qword_27EDC4EC0);
  sub_243F5F574(v157, v160 + v162[20], &qword_27EDC4EA0);
  sub_243F5F574(v230, v232, &qword_27EDC3770);
  sub_243F5EED4(v152, &qword_27EDC4EA0);
  sub_243F5EED4(v155, &qword_27EDC4EC0);
  sub_243F5EED4(v227, &qword_27EDC4ED0);
  sub_243F5EED4(v157, &qword_27EDC4EA0);
  sub_243F5EED4(v156, &qword_27EDC4EC0);
  sub_243F5EED4(v154, &qword_27EDC4ED0);
  v232[0] = v235;
  v232[1] = v236;
  v232[2] = v237;
  v233 = v238;
  v234 = 0;
  return sub_243F5EED4(v232, &qword_27EDC3770);
}