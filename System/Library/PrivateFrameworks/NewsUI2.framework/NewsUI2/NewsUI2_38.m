void sub_218AFF054()
{
  if (!qword_280EE80B0)
  {
    sub_219BE12B4();
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE80B0);
    }
  }
}

uint64_t sub_218AFF0AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EngagementPresentationFailure();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218AFF110(uint64_t a1)
{
  v2 = type metadata accessor for EngagementPresentationFailure();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_218AFF16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  sub_219BE2B04();
  if (qword_280E8D910 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  __swift_project_boxed_opaque_existential_1(a8, a8[3]);
  sub_2193C5240();
  v11 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a9;
  v12[4] = a10;

  v13 = sub_219BE2E54();
  sub_219BE2F74();
}

void sub_218AFF320(uint64_t a1@<X3>, void *a2@<X4>, void *a3@<X5>, unint64_t *a4@<X8>)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_38;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
LABEL_37:

LABEL_38:
    sub_218B007A4();
    swift_allocError();
    *v34 = 0;
    v34[1] = 0;
    swift_willThrow();
    return;
  }

  v9 = Strong;
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {

    goto LABEL_37;
  }

  v48 = a4;
  sub_219BE2184();
  v45 = v9;
  sub_219BE2184();
  sub_219BE2184();
  sub_218BAC84C(v62, v64, v53);
  sub_218BAC84C(v53, v61, v54);
  v60 = v53[0];
  sub_218B009F0(&v60, &qword_280E8ED70, &qword_280E8E800);
  v59 = v53[1];
  sub_218B008E0(&v59, sub_218B00868);
  v58 = v53[2];
  sub_218B008E0(&v58, sub_218B00940);
  v57 = v53[3];
  sub_218B009F0(&v57, &qword_280E8ED20, &qword_280E8E6A8);
  v10 = [objc_allocWithZone(MEMORY[0x277D30FC8]) initWithFeedPersonalizer_];
  v11 = [objc_msgSend(a3 configurationManager)];
  swift_unknownObjectRelease();
  if (v11)
  {
    v74 = v61[0];
    sub_218B009F0(&v74, &qword_280E8ED70, &qword_280E8E800);
    v75 = v61[1];
    sub_218B008E0(&v75, sub_218B00868);
    v76 = v61[2];
    sub_218B008E0(&v76, sub_218B00940);
    v77 = v61[3];
    sub_218B009F0(&v77, &qword_280E8ED20, &qword_280E8E6A8);
    [a2 prewarmScoreCache:v10 configuration:v11];
    swift_unknownObjectRelease();
    v12 = v54[0];
    sub_2186C6148(0, &qword_280E8E800);
    v13 = sub_219BF5904();
    v51 = [v10 scoreProfilesForFeedItems:v13 configurationSet:11];

    v46 = v12 >> 62;
    if (v12 >> 62)
    {
LABEL_58:
      v14 = sub_219BF7214();
      if (!v14)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v14)
      {
        goto LABEL_15;
      }
    }

    if (v14 >= 1)
    {

      v15 = 0;
      do
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x21CECE0F0](v15, v12);
        }

        else
        {
          v16 = *(v12 + 8 * v15 + 32);
        }

        v17 = v16;
        ++v15;
        v18 = [v51 objectForKey_];
        [v17 setScoreProfile_];
      }

      while (v14 != v15);

LABEL_15:
      if (qword_280E8D910 != -1)
      {
        swift_once();
      }

      sub_2186F20D4();
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_219C0D560;
      v70 = v62[0];
      if (v62[0] >> 62)
      {
        v20 = sub_219BF7214();
      }

      else
      {
        v20 = *((v62[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v21 = MEMORY[0x277D83B88];
      v22 = MEMORY[0x277D83C10];
      *(v19 + 56) = MEMORY[0x277D83B88];
      *(v19 + 64) = v22;
      *(v19 + 32) = v20;
      v23 = v63;
      v24 = sub_2186FC3BC();
      if (v23)
      {
        v25 = 0x6574656C706D6F63;
      }

      else
      {
        v25 = 0x656C706D6F636E69;
      }

      v26 = 0xE800000000000000;
      if ((v23 & 1) == 0)
      {
        v26 = 0xEA00000000006574;
      }

      v27 = MEMORY[0x277D837D0];
      *(v19 + 96) = MEMORY[0x277D837D0];
      *(v19 + 104) = v24;
      *(v19 + 72) = v25;
      *(v19 + 80) = v26;
      v66 = v64[0];
      if (v64[0] >> 62)
      {
        v50 = v12;
        v44 = v24;
        v28 = sub_219BF7214();
        v24 = v44;
        v12 = v50;
      }

      else
      {
        v28 = *((v64[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v19 + 136) = v21;
      *(v19 + 144) = v22;
      *(v19 + 112) = v28;
      if (v65)
      {
        v29 = 0x6574656C706D6F63;
      }

      else
      {
        v29 = 0x656C706D6F636E69;
      }

      v30 = 0xE800000000000000;
      if ((v65 & 1) == 0)
      {
        v30 = 0xEA00000000006574;
      }

      *(v19 + 176) = v27;
      *(v19 + 184) = v24;
      *(v19 + 152) = v29;
      *(v19 + 160) = v30;
      sub_219BF5CD4();
      if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v31 > -9.22337204e18)
      {
        v47 = v10;
        if (v31 < 9.22337204e18)
        {
          v32 = MEMORY[0x277D84A90];
          *(v19 + 216) = MEMORY[0x277D84A28];
          *(v19 + 224) = v32;
          *(v19 + 192) = v31;
          sub_218B009F0(&v66, &qword_280E8ED70, &qword_280E8E800);
          v67 = v64[1];
          sub_218B008E0(&v67, sub_218B00868);
          v68 = v64[2];
          sub_218B008E0(&v68, sub_218B00940);
          v69 = v64[3];
          sub_218B009F0(&v69, &qword_280E8ED20, &qword_280E8E6A8);
          sub_218B009F0(&v70, &qword_280E8ED70, &qword_280E8E800);
          v71 = v62[1];
          sub_218B008E0(&v71, sub_218B00868);
          v72 = v62[2];
          sub_218B008E0(&v72, sub_218B00940);
          v73 = v62[3];
          sub_218B009F0(&v73, &qword_280E8ED20, &qword_280E8E6A8);
          sub_219BF6214();
          sub_219BE5314();

          v52 = MEMORY[0x277D84F90];
          if (v46)
          {
            v33 = sub_219BF7214();
          }

          else
          {
            v33 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v21 = v48;
          if (v33)
          {
            v35 = 0;
            v36 = v12 & 0xC000000000000001;
            v10 = (v12 & 0xFFFFFFFFFFFFFF8);
            v49 = v12;
            do
            {
              if (v36)
              {
                v38 = MEMORY[0x21CECE0F0](v35, v12);
              }

              else
              {
                if (v35 >= v10[2])
                {
                  goto LABEL_57;
                }

                v38 = *(v12 + 8 * v35 + 32);
              }

              v39 = v38;
              v12 = v35 + 1;
              if (__OFADD__(v35, 1))
              {
                __break(1u);
LABEL_57:
                __break(1u);
                goto LABEL_58;
              }

              v40 = [v38 scoreProfile];
              if (v40)
              {
                v41 = v40;
              }

              else
              {
                sub_219BF73D4();
                sub_219BF7414();
                sub_219BF7424();
                sub_219BF73E4();
              }

              ++v35;
              v37 = v12 == v33;
              v12 = v49;
            }

            while (!v37);
            v42 = v52;
            v21 = v48;
            v10 = v47;
            v19 = MEMORY[0x277D84F90];
            if ((v52 & 0x8000000000000000) == 0)
            {
              goto LABEL_54;
            }
          }

          else
          {
            v42 = MEMORY[0x277D84F90];
            v19 = MEMORY[0x277D84F90];
            if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
            {
LABEL_54:
              if ((v42 & 0x4000000000000000) == 0)
              {
LABEL_55:

                v43 = v54[1];

                v56 = v54[2];
                sub_218B008E0(&v56, sub_218B00940);
                v55 = v54[3];
                sub_218B009F0(&v55, &qword_280E8ED20, &qword_280E8E6A8);
                *v21 = v12;
                v21[1] = v51;
                v21[2] = v43;
                v21[3] = v19;
                return;
              }
            }
          }

LABEL_65:
          sub_219BF7214();
          goto LABEL_55;
        }

LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      __break(1u);
      goto LABEL_64;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_218AFFC58(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = *(v7 + 16);
    v14 = v7 + 32;
    v66 = OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_contentConfigData;
    v15 = &unk_280E8D000;
    v59 = v7;
    while (v13 != v12)
    {
      if (v12 >= *(v7 + 16))
      {
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        swift_once();
        goto LABEL_62;
      }

      ++v12;
      if (!v10)
      {
        v64 = v14;
        v65 = v13;
        v16 = (v14 + 16 * v11);
        v18 = *v16;
        v17 = v16[1];
        v19 = v15[290];

        if (v19 != -1)
        {
          swift_once();
        }

        sub_2186F20D4();
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_219C09BA0;
        *(v20 + 56) = MEMORY[0x277D837D0];
        v63 = sub_2186FC3BC();
        *(v20 + 64) = v63;
        *(v20 + 32) = v18;
        *(v20 + 40) = v17;

        sub_219BF6214();
        sub_219BE5314();

        v21 = *(*(a3 + v66) + OBJC_IVAR____TtC7NewsUI215TodayConfigData_tags);
        if (!*(v21 + 16))
        {
          goto LABEL_39;
        }

        v61 = v18;
        v22 = sub_21870F700(v18, v17);
        if ((v23 & 1) == 0)
        {

LABEL_39:
          v45 = swift_allocObject();
          *(v45 + 16) = xmmword_219C09BA0;
          *(v45 + 56) = MEMORY[0x277D837D0];
          *(v45 + 64) = v63;
          *(v45 + 32) = v18;
          *(v45 + 40) = v17;

          sub_219BF6214();
          sub_219BE5314();

LABEL_40:

          v10 = 0;
LABEL_41:
          v11 = v12;
          goto LABEL_42;
        }

        v58 = v17;
        v10 = *(*(v21 + 56) + 8 * v22);
        swift_unknownObjectRetain();

        if (([v10 isLocal] & 1) == 0)
        {
          v46 = swift_allocObject();
          *(v46 + 16) = xmmword_219C09BA0;
          *(v46 + 56) = MEMORY[0x277D837D0];
          *(v46 + 64) = v63;
          *(v46 + 32) = v18;
          *(v46 + 40) = v58;

          sub_219BF6214();
          sub_219BE5314();

          swift_unknownObjectRelease();
          goto LABEL_40;
        }

        sub_219BE2184();
        v24 = v68;

        v70 = MEMORY[0x277D84F90];
        if (v68 >> 62)
        {
          v25 = sub_219BF7214();
          if (!v25)
          {
            goto LABEL_46;
          }

LABEL_13:
          v56 = a4;
          v57 = v5;
          v26 = 0;
          v60 = v9;
          v62 = v25;
          while (2)
          {
            if ((v68 & 0xC000000000000001) != 0)
            {
              v27 = MEMORY[0x21CECE0F0](v26, v24);
            }

            else
            {
              if (v26 >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_65;
              }

              v27 = *(v24 + 8 * v26 + 32);
            }

            v28 = v27;
            v29 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
              goto LABEL_64;
            }

            v30 = [v27 feedID];
            if (v30)
            {
              v31 = v30;
              v32 = sub_219BF5414();
              v34 = v33;

              sub_219BE2184();

              if (!*(v69 + 16))
              {

                goto LABEL_36;
              }

              v35 = sub_21870F700(v32, v34);
              v37 = v36;

              if (v37)
              {
                v38 = *(*(v69 + 56) + 8 * v35);

                v39 = [v38 channelID];

                if (v39)
                {
                  v40 = sub_219BF5414();
                  v42 = v41;

                  if (v40 == v61 && v42 == v58)
                  {

                    v9 = v60;
                  }

                  else
                  {
                    v44 = sub_219BF78F4();

                    v9 = v60;
                    if ((v44 & 1) == 0)
                    {

                      goto LABEL_36;
                    }
                  }

                  sub_219BF73D4();
                  sub_219BF7414();
                  sub_219BF7424();
                  sub_219BF73E4();
LABEL_36:
                  v24 = v68;
                  v25 = v62;
LABEL_15:
                  ++v26;
                  if (v29 == v25)
                  {
                    v47 = v70;
                    v5 = v57;
                    a4 = v56;
                    goto LABEL_47;
                  }

                  continue;
                }
              }

              else
              {
              }

              v9 = v60;
              goto LABEL_36;
            }

            break;
          }

          goto LABEL_15;
        }

        v25 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v25)
        {
          goto LABEL_13;
        }

LABEL_46:
        v47 = MEMORY[0x277D84F90];
LABEL_47:

        v48 = v47 < 0 || (v47 & 0x4000000000000000) != 0;
        if (v48)
        {
          if (sub_219BF7214())
          {
LABEL_52:
            v49 = swift_allocObject();
            *(v49 + 16) = xmmword_219C09EC0;
            if (v48)
            {
              v50 = sub_219BF7214();
            }

            else
            {
              v50 = *(v47 + 16);
            }

            v7 = v59;
            *(v49 + 56) = MEMORY[0x277D83B88];
            *(v49 + 64) = MEMORY[0x277D83C10];
            *(v49 + 32) = v50;
            *(v49 + 96) = MEMORY[0x277D837D0];
            *(v49 + 104) = v63;
            *(v49 + 72) = v61;
            *(v49 + 80) = v58;

            sub_219BF6214();
            sub_219BE5314();
            sub_218B007F8(0);

            goto LABEL_41;
          }
        }

        else if (*(v47 + 16))
        {
          goto LABEL_52;
        }

        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_219C09BA0;
        *(v51 + 56) = MEMORY[0x277D837D0];
        *(v51 + 64) = v63;
        *(v51 + 32) = v61;
        *(v51 + 40) = v58;

        sub_219BF6214();
        sub_219BE5314();
        sub_218B007F8(0);

        swift_unknownObjectRelease();

        v10 = 0;
        v11 = v12;
        v7 = v59;
LABEL_42:
        v14 = v64;
        v13 = v65;
        v15 = &unk_280E8D000;
      }
    }

    if (v10)
    {
      MEMORY[0x28223BE20](Strong);
      sub_219BE2B04();

      return swift_unknownObjectRelease();
    }

    if (v15[290] != -1)
    {
      goto LABEL_66;
    }

LABEL_62:
    sub_219BF61F4();
    sub_219BE5314();
    sub_218B007A4();
    v54 = swift_allocError();
    *v55 = xmmword_219C14A10;
    sub_219BE2B14();
  }

  else
  {
    sub_218B007A4();
    swift_allocError();
    *v53 = 0;
    v53[1] = 0;
    return swift_willThrow();
  }
}

uint64_t sub_218B005CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a5;
  *(v8 + 24) = a6;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_218B00710;
  *(v9 + 24) = v8;

  v10 = sub_219BE2E54();
  sub_219BE21A4();

  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t sub_218B006A8(void *a1, uint64_t (*a2)(void))
{
  if (*a1 >> 62)
  {
    v3 = a2;
    result = sub_219BF7214();
    a2 = v3;
    if (result < 101)
    {
      return result;
    }
  }

  else
  {
    result = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result < 101)
    {
      return result;
    }
  }

  return a2();
}

uint64_t sub_218B00718(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v6 = *(a1 + 32);
  return v2(v5);
}

unint64_t sub_218B007A4()
{
  result = qword_280ECC3D0[0];
  if (!qword_280ECC3D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280ECC3D0);
  }

  return result;
}

uint64_t sub_218B007F8(uint64_t result)
{
  if (result)
  {
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_218B00838@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
  swift_unknownObjectRetain();
}

void sub_218B00868()
{
  if (!qword_280E8FA90)
  {
    sub_2186C6148(255, &qword_280E8E760);
    v0 = sub_219BF52A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8FA90);
    }
  }
}

uint64_t sub_218B008E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_218B00940()
{
  if (!qword_280E8EA10)
  {
    sub_218B0099C();
    v0 = sub_219BF5DA4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8EA10);
    }
  }
}

unint64_t sub_218B0099C()
{
  result = qword_280E927C8;
  if (!qword_280E927C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E927C8);
  }

  return result;
}

uint64_t sub_218B009F0(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  sub_2187995D4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_7NewsUI220TodayFeedPoolServiceC12ForYouErrorsO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_218B00A64(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_218B00AB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_218B00B14(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

void sub_218B00B58()
{
  if (!qword_280E92458)
  {
    sub_218B00BC0();
    sub_218B00C14();
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E92458);
    }
  }
}

unint64_t sub_218B00BC0()
{
  result = qword_280EADC70;
  if (!qword_280EADC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EADC70);
  }

  return result;
}

unint64_t sub_218B00C14()
{
  result = qword_280EADC78;
  if (!qword_280EADC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EADC78);
  }

  return result;
}

uint64_t type metadata accessor for AffinityTagFeedGroupEmitter()
{
  result = qword_280EB96C0;
  if (!qword_280EB96C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218B00CC8()
{
  sub_218B00B58();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AffinityTagFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      sub_2186CFDE4(319, &qword_280E90510);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_218B00D80(uint64_t a1)
{
  v3 = type metadata accessor for AffinityTagFeedGroupEmitter();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE3204();
  v21 = type metadata accessor for AffinityTagFeedGroupEmitter;
  sub_218B03D64(v1, v6, type metadata accessor for AffinityTagFeedGroupEmitter);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v20 = v7 + v5;
  v8 = (v7 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  sub_218B03B48(v6, v9 + v7, type metadata accessor for AffinityTagFeedGroupEmitter);
  *(v9 + v8) = a1;

  v10 = sub_219BE2E54();
  sub_219BE3054();

  v11 = v19;
  sub_218B03D64(v19, v6, v21);
  v12 = swift_allocObject();
  sub_218B03B48(v6, v12 + v7, type metadata accessor for AffinityTagFeedGroupEmitter);
  *(v12 + v8) = a1;

  v13 = sub_219BE2E54();
  sub_218A59C84();
  sub_219BE2F64();

  sub_218B03D64(v11, v6, v21);
  v14 = swift_allocObject();
  sub_218B03B48(v6, v14 + v7, type metadata accessor for AffinityTagFeedGroupEmitter);
  v15 = sub_219BE2E54();
  v16 = sub_219BE3064();

  return v16;
}

uint64_t sub_218B01040@<X0>(unint64_t *a1@<X8>)
{
  sub_218B00B58();
  v4 = v3;
  v5 = swift_allocBox();
  result = (*(*(v4 - 8) + 16))(v6, v1, v4);
  *a1 = v5 | 0xA000000000000000;
  return result;
}

uint64_t sub_218B010BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for AffinityTagFeedGroupKnobs();
  a2[4] = sub_218B03D1C(&qword_280EBF9E0, type metadata accessor for AffinityTagFeedGroupKnobs);
  a2[5] = sub_218B03D1C(&qword_27CC0DFD0, type metadata accessor for AffinityTagFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_218B03D64(v2 + v4, boxed_opaque_existential_1, type metadata accessor for AffinityTagFeedGroupKnobs);
}

uint64_t sub_218B01180()
{
  sub_2189AD5C8();
  v1 = sub_219BEE964();
  sub_2191EDA0C(MEMORY[0x277D84F90]);
  return v1;
}

uint64_t sub_218B011F0()
{
  sub_218B00B58();

  return sub_219BEDCA4();
}

uint64_t sub_218B0121C@<X0>(uint64_t *a1@<X8>)
{
  sub_218B03CB8(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_218B00B58();

  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_218B03DCC(inited + 32, sub_2188317B0);
  sub_218B03CB8(0, &qword_280EE79A0, type metadata accessor for AffinityTagFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a1[3] = v5;
  a1[4] = sub_218B03E2C();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_218B013A0()
{
  sub_218B03D1C(&qword_280EB96D8, type metadata accessor for AffinityTagFeedGroupEmitter);

  return sub_219BE2324();
}

uint64_t sub_218B01560()
{
  sub_219BE3204();
  v0 = sub_219BE2E54();
  sub_218B03CB8(0, &unk_280E8F310, type metadata accessor for TagFeedCuration, MEMORY[0x277D83940]);
  sub_219BE2F64();

  v1 = sub_219BE2E54();
  v2 = sub_219BE2F64();

  return v2;
}

void sub_218B017A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_218B01824(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for AffinityTagFeedGroupEmitter();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TagFeedCuration(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  MEMORY[0x28223BE20](v11);
  if (*(a2 + 16))
  {
    v33 = *(v12 + 80);
    v40 = type metadata accessor for TagFeedCuration;
    v41 = v14;
    v15 = &v33 - v13;
    v42 = &v33 - v13;
    v16 = sub_218B03D64(a2 + ((v33 + 32) & ~v33), &v33 - v13, type metadata accessor for TagFeedCuration);
    MEMORY[0x28223BE20](v16);
    *(&v33 - 4) = v2;
    *(&v33 - 3) = a1;
    v37 = v2;
    *(&v33 - 2) = v15;
    sub_219BF2754();
    sub_219BE3204();
    v35 = type metadata accessor for AffinityTagFeedGroupEmitter;
    sub_218B03D64(v2, &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AffinityTagFeedGroupEmitter);
    v17 = *(v6 + 80);
    v18 = (v17 + 16) & ~v17;
    v36 = v17 | 7;
    v34 = v7 + 7;
    v19 = (v7 + 7 + v18) & 0xFFFFFFFFFFFFFFF8;
    v20 = swift_allocObject();
    v39 = type metadata accessor for AffinityTagFeedGroupEmitter;
    sub_218B03B48(v8, v20 + v18, type metadata accessor for AffinityTagFeedGroupEmitter);
    v38 = a1;
    *(v20 + v19) = a1;

    v21 = sub_219BE2E54();
    type metadata accessor for TagFeedGroup();
    sub_219BE2F74();

    *(swift_allocObject() + 16) = a2;

    v22 = sub_219BE2E54();
    sub_218A59C84();
    sub_219BE2F64();

    v23 = v41;
    sub_218B03D64(v42, v41, v40);
    sub_218B03D64(v37, v8, v35);
    v24 = (v33 + 16) & ~v33;
    v25 = (v24 + v10 + v17) & ~v17;
    v26 = (v34 + v25) & 0xFFFFFFFFFFFFFFF8;
    v27 = swift_allocObject();
    sub_218B03B48(v23, v27 + v24, type metadata accessor for TagFeedCuration);
    sub_218B03B48(v8, v27 + v25, v39);
    *(v27 + v26) = v38;
    *(v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8)) = a2;

    v28 = sub_219BE2E54();
    v29 = sub_219BE3054();

    sub_218B03DCC(v42, type metadata accessor for TagFeedCuration);
    return v29;
  }

  else
  {
    v31 = sub_219BEEDD4();
    sub_218B03D1C(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    (*(*(v31 - 8) + 104))(v32, *MEMORY[0x277D323C8], v31);
    sub_218B03CB8(0, &qword_280EE6C80, sub_218A59C84, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE2FF4();
  }
}

uint64_t sub_218B01D64()
{
  type metadata accessor for AffinityTagFeedGroupEmitter();
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  type metadata accessor for TagFeedGroup();
  sub_21877D2B0();
  return sub_219BEF194();
}

uint64_t sub_218B01EC0(uint64_t a1)
{
  if (*(*a1 + 16))
  {
    sub_2186F8318(0, &qword_280EE6CC8, &type metadata for AffinityTagFeedGroupEmitterCursor, MEMORY[0x277D6CF30]);
    swift_allocObject();

    return sub_219BE3014();
  }

  else
  {
    v2 = sub_219BEEDD4();
    sub_218B03D1C(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, *MEMORY[0x277D32428], v2);
    return swift_willThrow();
  }
}

void *sub_218B01FEC(uint64_t a1, uint64_t a2, void *a3)
{
  sub_219BEF164();
  if (!v3)
  {
    v15[4] = v11;
    v15[5] = v12;
    v15[6] = v13;
    v15[7] = v14;
    v15[0] = v7;
    v15[1] = v8;
    v15[2] = v9;
    v15[3] = v10;
    a3 = sub_218B02080(a2, v15, a3);
    sub_218A410EC(v15);
  }

  return a3;
}

uint64_t sub_218B02080(uint64_t a1, void *a2, void *a3)
{
  v105 = a2;
  v129 = a1;
  v4 = MEMORY[0x277D83D88];
  sub_218B03CB8(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v116 = &v86 - v6;
  sub_218B03CB8(0, &qword_280E90150, MEMORY[0x277D33EC8], v4);
  MEMORY[0x28223BE20](v7 - 8);
  v112 = &v86 - v8;
  sub_218B03CB8(0, &qword_280E91A70, sub_2189AD5C8, v4);
  MEMORY[0x28223BE20](v9 - 8);
  v111 = &v86 - v10;
  v115 = sub_219BF2AB4();
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v113 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BF1934();
  v127 = *(v12 - 8);
  v128 = v12;
  MEMORY[0x28223BE20](v12);
  v126 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_219BEF9C4();
  v102 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v103 = (&v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218B03CB8(0, &unk_280E90FA0, MEMORY[0x277D32C48], v4);
  MEMORY[0x28223BE20](v15 - 8);
  v101 = &v86 - v16;
  v97 = sub_219BEF564();
  v94 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v100 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_219BEFBD4();
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v96 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_219BF0BD4();
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v93 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B03CB8(0, &qword_280E90300, MEMORY[0x277D33AA8], v4);
  MEMORY[0x28223BE20](v20 - 8);
  v88 = &v86 - v21;
  v110 = sub_219BF2774();
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v125 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B03CB8(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v4);
  MEMORY[0x28223BE20](v23 - 8);
  v117 = &v86 - v24;
  v108 = sub_219BF2034();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v124 = &v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_219BEDC14();
  MEMORY[0x28223BE20](v26 - 8);
  v27 = type metadata accessor for CuratedTagFeedGroupConfigData();
  v28 = MEMORY[0x28223BE20](v27);
  v95 = &v86 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v86 - v30;
  v32 = sub_219BF35D4();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = (&v86 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v89 = type metadata accessor for TagFeedCuration(0);
  v36 = *(v89 + 28);
  sub_218A27A84();
  v118 = v37;
  v119 = v36;
  sub_219BEDD14();
  v92 = v27;
  LODWORD(v36) = v31[*(v27 + 52)];
  v120 = v31;
  sub_218B03DCC(v31, type metadata accessor for CuratedTagFeedGroupConfigData);
  v122 = v33;
  v123 = v32;
  v121 = v35;
  if (v36 == 1)
  {
    sub_219BF5D04();
    *v35 = v38;
    (*(v33 + 104))(v35, *MEMORY[0x277D33EC0], v32);
  }

  else
  {
    sub_219BEF084();
    sub_219BF35E4();
  }

  sub_2186F8318(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_219C146A0;
  *(v39 + 32) = *a3;
  v40 = sub_219BEC004();
  (*(*(v40 - 8) + 56))(v117, 1, 1, v40);
  swift_unknownObjectRetain();
  v41 = MEMORY[0x277D84F90];
  v87 = sub_219A95188(MEMORY[0x277D84F90]);
  sub_219A95188(v41);
  sub_219A951A0(v41);
  sub_219A951B8(v41);
  sub_219A952CC(v41);
  sub_219A952E4(v41);
  sub_219A953F8(v41);
  sub_219BF2024();
  v42 = v93;
  sub_219BEF134();
  v43 = *(v89 + 32);
  v89 = a3;
  v44 = a3 + v43;
  v117 = a3 + v43;
  v87 = type metadata accessor for CuratedTagFeedGroupKnobs();
  v132 = v87;
  v133 = sub_218B03D1C(&qword_280EC2410, type metadata accessor for CuratedTagFeedGroupKnobs);
  v45 = __swift_allocate_boxed_opaque_existential_1(&v131);
  sub_218B03D64(v44, v45, type metadata accessor for CuratedTagFeedGroupKnobs);
  v46 = v88;
  sub_219BF2AC4();
  v47 = sub_219BF2AD4();
  (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
  sub_218B03CB8(0, &unk_280E8B7B0, MEMORY[0x277D33FB8], MEMORY[0x277D84560]);
  v48 = sub_219BF3924();
  v49 = *(v48 - 8);
  v50 = *(v49 + 72);
  v51 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  v52 = swift_allocObject();
  v86 = xmmword_219C09EC0;
  *(v52 + 16) = xmmword_219C09EC0;
  v53 = v52 + v51;
  v54 = *(v49 + 104);
  v54(v53, *MEMORY[0x277D33FA8], v48);
  v54(v53 + v50, *MEMORY[0x277D33F90], v48);
  sub_2194B2A30(v52);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v90 + 104))(v96, *MEMORY[0x277D32950], v91);
  (*(v94 + 104))(v100, *MEMORY[0x277D32670], v97);
  v55 = sub_219BF02F4();
  (*(*(v55 - 8) + 56))(v101, 1, 1, v55);
  (*(v102 + 104))(v103, *MEMORY[0x277D32840], v104);

  sub_219BF2764();
  sub_219BEF134();
  sub_219BEF524();
  (*(v98 + 8))(v42, v99);
  v56 = v131;
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v57 = qword_280F61708;
  sub_2186F20D4();
  v58 = swift_allocObject();
  *(v58 + 16) = v86;
  sub_218B00B58();
  v59 = v106;
  v60 = sub_219BEDCA4();
  v62 = v61;
  *(v58 + 56) = MEMORY[0x277D837D0];
  *(v58 + 64) = sub_2186FC3BC();
  v63 = MEMORY[0x277D839B0];
  *(v58 + 32) = v60;
  *(v58 + 40) = v62;
  v64 = MEMORY[0x277D839F0];
  *(v58 + 96) = v63;
  *(v58 + 104) = v64;
  *(v58 + 72) = v56;
  sub_219BF6214();
  v105 = v57;
  sub_219BE5314();

  v65 = type metadata accessor for AffinityTagFeedGroupEmitter();
  sub_218718690(v59 + *(v65 + 24), &v131);
  v104 = v133;
  v106 = v132;
  v103 = __swift_project_boxed_opaque_existential_1(&v131, v132);
  v66 = v95;
  sub_219BEDD14();
  (*(v127 + 16))(v126, v66 + *(v92 + 20), v128);
  sub_218B03DCC(v66, type metadata accessor for CuratedTagFeedGroupConfigData);
  sub_2189AD5C8();
  v68 = v67;
  v69 = *(v67 - 8);
  v70 = v111;
  (*(v69 + 16))(v111, v117, v67);
  (*(v69 + 56))(v70, 0, 1, v68);
  sub_219BEF0B4();
  v117 = *(v134 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v71 = v120;
  sub_219BEDD14();

  sub_218B03DCC(v71, type metadata accessor for CuratedTagFeedGroupConfigData);
  v72 = v122;
  v73 = v112;
  v74 = v123;
  (*(v122 + 16))(v112, v121, v123);
  (*(v72 + 56))(v73, 0, 1, v74);
  v130 = 41;
  sub_218B017A4(0, &qword_280E90090, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D33F88]);
  swift_allocObject();

  v117 = sub_219BF38D4();
  if (v56)
  {
    sub_219BEF0B4();
    sub_218CB8CBC();

    sub_219BEF0B4();
    v75 = *(v134 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);
  }

  sub_219BF3914();
  swift_allocObject();
  sub_219BF3904();
  v76 = v120;
  sub_219BEDD14();
  sub_218E103B8();
  sub_218B03DCC(v76, type metadata accessor for CuratedTagFeedGroupConfigData);
  v77 = v109;
  v78 = v116;
  v79 = v125;
  v80 = v110;
  (*(v109 + 16))(v116, v125, v110);
  (*(v77 + 56))(v78, 0, 1, v80);
  *MEMORY[0x277D30BC0];
  v105;
  v81 = v113;
  sub_219BF2A84();
  v82 = v126;
  v83 = v124;
  v84 = sub_219BF2184();
  (*(v114 + 8))(v81, v115);
  (*(v127 + 8))(v82, v128);
  (*(v77 + 8))(v79, v80);
  (*(v107 + 8))(v83, v108);
  (*(v122 + 8))(v121, v123);
  __swift_destroy_boxed_opaque_existential_1(&v131);
  return v84;
}

uint64_t sub_218B03428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15[3] = a1;
  v17 = a2;
  sub_218B03CB8(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v15 - v3;
  v5 = sub_219BEF554();
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v15[0] = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v16 = sub_219BED8D4();
  v8 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B00B58();

  v11 = sub_219BEDCB4();
  v15[1] = v12;
  v15[2] = v11;
  sub_219BEDCC4();
  sub_219BEDCC4();
  type metadata accessor for AffinityTagFeedGroupEmitter();
  sub_2189AD5C8();
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  v13 = sub_219BEE5D4();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  sub_219BED834();
  (*(v8 + 32))(v17, v10, v16);
  type metadata accessor for TagFeedGroup();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_218B03740(uint64_t a1, uint64_t a2)
{
  sub_218A59C84();
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219AE8F00(a2);
  v8 = v7;
  if (*(v7 + 16))
  {
    sub_218ACC140();
    v10 = &v6[*(v9 + 48)];
    sub_218B03D64(a1, v6, type metadata accessor for TagFeedGroup);
    *(v10 + 3) = &type metadata for AffinityTagFeedGroupEmitterCursor;
    *v10 = v8;
  }

  else
  {

    sub_218B03D64(a1, v6, type metadata accessor for TagFeedGroup);
  }

  swift_storeEnumTagMultiPayload();
  sub_218B03CB8(0, &qword_280EE6C80, sub_218A59C84, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_218B038B4(uint64_t a1, id *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186F20D4();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_219C09EC0;
  v8 = [*a2 identifier];
  v9 = sub_219BF5414();
  v11 = v10;

  v12 = MEMORY[0x277D837D0];
  *(v7 + 56) = MEMORY[0x277D837D0];
  v13 = sub_2186FC3BC();
  *(v7 + 64) = v13;
  *(v7 + 32) = v9;
  *(v7 + 40) = v11;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  *(v7 + 96) = v12;
  *(v7 + 104) = v13;
  *(v7 + 72) = 0;
  *(v7 + 80) = 0xE000000000000000;
  sub_219BE5314();

  sub_219AE8F00(a5);
  v15 = sub_218B01824(a4, v14);

  return v15;
}

uint64_t sub_218B03B48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218B03BB0(uint64_t a1)
{
  v3 = *(type metadata accessor for TagFeedCuration(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for AffinityTagFeedGroupEmitter() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_218B038B4(a1, (v1 + v4), v1 + v7, *(v1 + v8), *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_218B03CB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218B03D1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218B03D64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218B03DCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_218B03E2C()
{
  result = qword_280EE79A8;
  if (!qword_280EE79A8)
  {
    sub_218B03CB8(255, &qword_280EE79A0, type metadata accessor for AffinityTagFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE79A8);
  }

  return result;
}

uint64_t sub_218B03ECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x734C525565736162 && a2 == 0xE800000000000000;
  if (v6 || (sub_219BF78F4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574497972657571 && a2 == 0xEE0073656D614E6DLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_219BF78F4();

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

uint64_t sub_218B03FB0(uint64_t a1)
{
  v2 = sub_2187690B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218B03FEC(uint64_t a1)
{
  v2 = sub_2187690B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218B04028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_219BDB954();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E5438(0, &unk_280EE9D00, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v57 - v9;
  v11 = sub_219BDB354();
  v63 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v58 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v57 - v14;
  sub_2186E5438(0, &unk_280EE9DB0, MEMORY[0x277CC8958]);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v57 - v20;
  v59 = a1;
  sub_219BDB264();
  sub_218B04724(v21);
  v62 = v15;
  sub_219BDB274();
  v22 = (*(v5 + 48))(v10, 1, v4);
  v61 = v4;
  if (v22 == 1)
  {
    v23 = v5;
    sub_2187BC38C(v10, &unk_280EE9D00, MEMORY[0x277CC9260]);
  }

  else
  {
    v24 = sub_219BDB804();
    v60 = v21;
    v25 = v7;
    v27 = v26;
    v23 = v5;
    v28 = (*(v5 + 8))(v10, v4);
    v29 = v57;
    v64[0] = v24;
    v64[1] = v27;
    MEMORY[0x28223BE20](v28);
    *(&v57 - 2) = v64;
    LOBYTE(v24) = sub_2186D128C(sub_2186D1338, (&v57 - 4), v30);
    v7 = v25;
    v21 = v60;

    if (v24)
    {
      sub_218B04A30(v21, v29);
      v32 = v62;
      v31 = v63;
      (*(v63 + 16))(v58, v62, v11);
      sub_219BDB244();
      sub_218B05294(v21, v19);
      if ((*(v31 + 48))(v19, 1, v11) == 1)
      {
        sub_2187BC38C(v19, &unk_280EE9DB0, MEMORY[0x277CC8958]);
        v33 = 0;
        v34 = 0;
      }

      else
      {
        v53 = sub_219BDB324();
        v34 = v54;
        (*(v31 + 8))(v19, v11);
        v33 = v53;
      }

      sub_218B04E50(v33, v34);

      v55 = v58;
      sub_219BDB334();
      sub_219BDB274();
      v56 = *(v31 + 8);
      v56(v55, v11);
      v56(v32, v11);
      return sub_2187BC38C(v21, &unk_280EE9DB0, MEMORY[0x277CC8958]);
    }
  }

  if (qword_27CC085F0 != -1)
  {
    swift_once();
  }

  v35 = sub_219BE5434();
  __swift_project_value_buffer(v35, qword_27CCD8B40);
  v36 = v23;
  v37 = *(v23 + 16);
  v38 = v61;
  v37(v7, v59, v61);
  v39 = sub_219BE5414();
  v40 = sub_219BF6214();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = v7;
    v43 = swift_slowAlloc();
    v64[0] = v43;
    *v41 = 136315138;
    v44 = sub_219BDB804();
    v59 = v11;
    v60 = v21;
    v45 = v44;
    v46 = a2;
    v48 = v47;
    (*(v36 + 8))(v42, v38);
    v49 = sub_2186D1058(v45, v48, v64);
    a2 = v46;

    *(v41 + 4) = v49;
    _os_log_impl(&dword_2186C1000, v39, v40, "FinanceURLSanitizer blocked reporting of %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v43);
    MEMORY[0x21CECF960](v43, -1, -1);
    MEMORY[0x21CECF960](v41, -1, -1);

    (*(v63 + 8))(v62, v59);
    v50 = MEMORY[0x277CC8958];
    v51 = v60;
  }

  else
  {

    (*(v36 + 8))(v7, v38);
    (*(v63 + 8))(v62, v11);
    v50 = MEMORY[0x277CC8958];
    v51 = v21;
  }

  sub_2187BC38C(v51, &unk_280EE9DB0, v50);
  return (*(v36 + 56))(a2, 1, 1, v38);
}

uint64_t sub_218B04724(uint64_t a1)
{
  sub_2186E5438(0, &unk_280EE9DB0, MEMORY[0x277CC8958]);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v25 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - v9;
  sub_219BDB344();
  sub_218B05294(a1, v10);
  v11 = sub_219BDB354();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  v14 = v13(v10, 1, v11);
  v26 = v12;
  if (v14 == 1)
  {
    sub_2187BC38C(v10, &unk_280EE9DB0, MEMORY[0x277CC8958]);
  }

  else
  {
    sub_219BDB2F4();
    (*(v12 + 8))(v10, v11);
  }

  sub_219BDB304();
  sub_218B05294(a1, v8);
  if (v13(v8, 1, v11) == 1)
  {
    sub_2187BC38C(v8, &unk_280EE9DB0, MEMORY[0x277CC8958]);
    v15 = 0;
    v16 = 0;
    v17 = v26;
  }

  else
  {
    v18 = sub_219BDB284();
    v20 = v19;
    v17 = v26;
    (*(v26 + 8))(v8, v11);
    v16 = v20;
    v15 = v18;
  }

  MEMORY[0x21CEB2030](v15, v16);
  sub_218B05294(a1, v5);
  if (v13(v5, 1, v11) == 1)
  {
    return sub_2187BC38C(v5, &unk_280EE9DB0, MEMORY[0x277CC8958]);
  }

  v22 = sub_219BDB2B4();
  v24 = v23;
  (*(v17 + 8))(v5, v11);
  return MEMORY[0x21CEB2060](v22, v24);
}

uint64_t sub_218B04A30(uint64_t a1, uint64_t a2)
{
  v27 = sub_219BDB224();
  v37 = *(v27 - 8);
  v4 = MEMORY[0x28223BE20](v27);
  v36 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - v6;
  sub_2186E5438(0, &unk_280EE9DB0, MEMORY[0x277CC8958]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - v9;
  sub_218B05294(a1, &v27 - v9);
  v11 = sub_219BDB354();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_2187BC38C(v10, &unk_280EE9DB0, MEMORY[0x277CC8958]);
    return 0;
  }

  v13 = sub_219BDB234();
  result = (*(v12 + 8))(v10, v11);
  if (!v13)
  {
    return 0;
  }

  v35 = *(v13 + 16);
  if (!v35)
  {
    v17 = MEMORY[0x277D84F90];
LABEL_16:

    if (*(v17 + 16))
    {
      return v17;
    }

    return 0;
  }

  v15 = 0;
  v16 = 0;
  v28 = (v37 + 8);
  v32 = (v37 + 32);
  v33 = v37 + 16;
  v17 = MEMORY[0x277D84F90];
  v18 = v27;
  v29 = a2;
  v30 = v7;
  v34 = v13;
  while (v15 < *(v13 + 16))
  {
    v38 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v19 = v13 + v38;
    v20 = *(v37 + 72);
    (*(v37 + 16))(v7, v19 + v20 * v15, v18);
    v21 = *(a2 + 24);
    v39[0] = sub_219BDB204();
    v39[1] = v22;
    MEMORY[0x28223BE20](v39[0]);
    *(&v27 - 2) = v39;
    LOBYTE(v21) = sub_2186D128C(sub_218B0537C, (&v27 - 4), v21);

    if (v21)
    {
      v31 = v16;
      v23 = *v32;
      (*v32)(v36, v7, v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_218C34CF0(0, *(v17 + 16) + 1, 1);
        v18 = v27;
        v17 = v40;
      }

      v26 = *(v17 + 16);
      v25 = *(v17 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_218C34CF0(v25 > 1, v26 + 1, 1);
        v18 = v27;
        v17 = v40;
      }

      *(v17 + 16) = v26 + 1;
      result = v23((v17 + v38 + v26 * v20), v36, v18);
      a2 = v29;
      v7 = v30;
      v16 = v31;
    }

    else
    {
      result = (*v28)(v7, v18);
    }

    ++v15;
    v13 = v34;
    if (v35 == v15)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_218B04E50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v32 = sub_219BDB224();
  v42 = *(v32 - 8);
  v6 = MEMORY[0x28223BE20](v32);
  v41 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - v8;
  v10 = sub_219BDB354();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return a1;
  }

  sub_219BDB344();

  sub_219BDB2E4();
  result = sub_219BDB234();
  if (!result)
  {
    (*(v11 + 8))(v13, v10);
    return 0;
  }

  v29 = v13;
  v30 = v11;
  v31 = v10;
  v40 = *(result + 16);
  if (!v40)
  {
LABEL_16:

    v27 = v29;
    v28 = sub_219BDB244();
    a1 = MEMORY[0x21CEB2070](v28);
    (*(v30 + 8))(v27, v31);
    return a1;
  }

  v15 = 0;
  v16 = 0;
  v33 = (v42 + 8);
  v37 = (v42 + 32);
  v38 = v42 + 16;
  v17 = MEMORY[0x277D84F90];
  v18 = v32;
  v34 = v3;
  v35 = v9;
  v39 = result;
  while (v15 < *(result + 16))
  {
    v43 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v19 = *(v42 + 72);
    (*(v42 + 16))(v9, result + v43 + v19 * v15, v18);
    v20 = v3;
    v21 = *(v3 + 24);
    v44[0] = sub_219BDB204();
    v44[1] = v22;
    MEMORY[0x28223BE20](v44[0]);
    *(&v29 - 2) = v44;
    LOBYTE(v21) = sub_2186D128C(sub_218B0537C, (&v29 - 4), v21);

    if (v21)
    {
      v36 = v16;
      v23 = *v37;
      (*v37)(v41, v9, v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_218C34CF0(0, *(v17 + 16) + 1, 1);
        v18 = v32;
        v17 = v45;
      }

      v26 = *(v17 + 16);
      v25 = *(v17 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_218C34CF0(v25 > 1, v26 + 1, 1);
        v18 = v32;
        v17 = v45;
      }

      *(v17 + 16) = v26 + 1;
      v23((v17 + v43 + v26 * v19), v41, v18);
      v3 = v34;
      v9 = v35;
      v16 = v36;
    }

    else
    {
      (*v33)(v9, v18);
      v3 = v20;
    }

    ++v15;
    result = v39;
    if (v40 == v15)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_218B0523C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_218B05294(uint64_t a1, uint64_t a2)
{
  sub_2186E5438(0, &unk_280EE9DB0, MEMORY[0x277CC8958]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_218B05328()
{
  result = qword_27CC0DFD8;
  if (!qword_27CC0DFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0DFD8);
  }

  return result;
}

uint64_t type metadata accessor for SearchMoreFeedConfigFetchResult()
{
  result = qword_27CC0DFE0;
  if (!qword_27CC0DFE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218B0540C()
{
  result = type metadata accessor for SearchMoreFeedContentConfig();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_218B05478(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_218B054C0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_218B05520(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v53 = a3;
  v54 = a2;
  v46 = a1;
  v52 = sub_219BE6DF4();
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v50 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B06124(0, &qword_280EE4B40, MEMORY[0x277D6DF88]);
  v49 = v5;
  v48 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v47 = &v42 - v6;
  sub_218A2D984(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B06124(0, &qword_280EE3760, MEMORY[0x277D6EC60]);
  v11 = v10;
  v57 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v42 - v12;
  sub_218B061E4();
  MEMORY[0x28223BE20](v14 - 8);
  sub_218950928();
  v56 = v15;
  v44 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v43 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v42 - v18;
  v20 = *v3;
  v59 = v3;
  sub_2189455A8(sub_218B062B0, &v58, v20);
  v22 = v21;
  sub_2197EBBA8(v61);
  v62 = 2;
  sub_218950B84();
  v24 = v23;
  v25 = sub_2186D5654(&unk_280EE5C80, sub_218950B84);
  v26 = sub_2186D5654(&unk_280EE5C90, sub_218950B84);
  MEMORY[0x21CEB9170](v22, v24, v25, v26);
  type metadata accessor for FollowingModel();
  sub_2187490E4();
  sub_2186D5654(&qword_280EDC630, type metadata accessor for FollowingModel);
  v27 = v19;
  v28 = v46;
  sub_219BE6924();
  v29 = *(v57 + 16);
  v45 = v13;
  v30 = v13;
  v31 = v44;
  v29(v30, v28, v11);
  v55 = v11;
  v32 = v56;
  sub_219BEB354();
  if ((*(v31 + 48))(v9, 1, v32) == 1)
  {
    sub_218B062D0(v9);
    sub_2186D5654(&qword_280EE5760, sub_218950928);
    sub_219BF5DF4();
    sub_219BF5E84();
    v33 = v45;
    if (v61[0] != v60)
    {
      sub_218B0632C();
      sub_219BEB324();
    }
  }

  else
  {
    v34 = v43;
    (*(v31 + 32))(v43, v9, v32);
    v35 = v45;
    sub_219BEB234();
    v36 = v34;
    v19 = v27;
    (*(v31 + 8))(v36, v32);
    v33 = v35;
  }

  v37 = v51;
  v38 = v50;
  v39 = v52;
  (*(v51 + 104))(v50, *MEMORY[0x277D6D868], v52);
  sub_218A7BAF8();
  v40 = v47;
  sub_219BE85E4();
  (*(v37 + 8))(v38, v39);
  v54(v40);
  (*(v48 + 8))(v40, v49);
  (*(v57 + 8))(v33, v55);
  return (*(v31 + 8))(v19, v56);
}

uint64_t sub_218B05C48(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for FollowingModel();
  MEMORY[0x28223BE20](v4);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *a1;
  v8 = sub_218B05D54(v7, a2);
  *v6 = sub_2189B8010(v7, *(a2 + 8), *(a2 + 16), v8 & 1);
  swift_storeEnumTagMultiPayload();
  sub_2186D5654(&qword_280EDC630, type metadata accessor for FollowingModel);
  return sub_219BE5FB4();
}

uint64_t sub_218B05D54(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF2CB4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_219BF2634();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR___TSEditorialItem_backingTag;
  swift_beginAccess();
  v13 = *(a1 + v12);
  if (v13)
  {
    v20 = v9;
    __swift_project_boxed_opaque_existential_1((a2 + 24), *(a2 + 48));
    *v7 = v13;
    (*(v5 + 104))(v7, *MEMORY[0x277D33B98], v4);
    swift_unknownObjectRetain_n();
    v9 = v20;
    sub_219BF4794();
    (*(v5 + 8))(v7, v4);
    v14 = sub_219BF2614();
    swift_unknownObjectRelease();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((a2 + 24), *(a2 + 48));
    v15 = (a1 + OBJC_IVAR___TSEditorialItem_identifier);
    swift_beginAccess();
    v16 = *v15;
    v17 = v15[1];
    *v7 = v16;
    v7[1] = v17;
    (*(v5 + 104))(v7, *MEMORY[0x277D33B80], v4);

    sub_219BF4794();
    (*(v5 + 8))(v7, v4);
    v14 = sub_219BF2614();
  }

  (*(v9 + 8))(v11, v8);
  return v14 & 1;
}

uint64_t sub_218B06048(uint64_t a1)
{
  v2 = sub_218B06380();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_218B06088()
{
  result = qword_280E998E8;
  if (!qword_280E998E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E998E8);
  }

  return result;
}

void sub_218B06124(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for FollowingDescriptor;
    v8[1] = type metadata accessor for FollowingModel();
    v8[2] = sub_2187490E4();
    v8[3] = sub_2186D5654(&qword_280EDC630, type metadata accessor for FollowingModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218B061E4()
{
  if (!qword_280EE7530)
  {
    sub_218950B84();
    sub_2186D5654(&unk_280EE5C80, sub_218950B84);
    sub_2186D5654(&unk_280EE5C90, sub_218950B84);
    v0 = sub_219BE2454();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE7530);
    }
  }
}

uint64_t sub_218B062D0(uint64_t a1)
{
  sub_218A2D984(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_218B0632C()
{
  result = qword_280ED1480;
  if (!qword_280ED1480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED1480);
  }

  return result;
}

unint64_t sub_218B06380()
{
  result = qword_280E998F0;
  if (!qword_280E998F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E998F0);
  }

  return result;
}

void sub_218B063D4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_219BF5D34();
  sub_2186C6148(0, &qword_27CC0DFF0);
  v10 = sub_219BF5904();
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a5;
  v12[4] = a6;
  v14[4] = sub_218B0677C;
  v14[5] = v12;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_218793E0C;
  v14[3] = &block_descriptor_22_0;
  v13 = _Block_copy(v14);

  [a2 removeDataOfTypes:v9 forDataRecords:v10 completionHandler:v13];
  _Block_release(v13);
}

uint64_t sub_218B06550(uint64_t a1, uint64_t (*a2)(void, void))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (qword_280EE9308 != -1)
    {
      swift_once();
    }

    type metadata accessor for DeleteWebDataStartupTask();
    sub_21879DD50(&qword_27CC0DFF8, v3, type metadata accessor for DeleteWebDataStartupTask);
    sub_219BDCA54();
  }

  return a2(0, 0);
}

uint64_t sub_218B0665C(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_2186C6148(0, &qword_27CC0DFF0);
  v2 = sub_219BF5924();

  v1(v2);
}

uint64_t sub_218B06728(uint64_t a1, char a2)
{
  if (a2)
  {
    return (*(v2 + 32))();
  }

  else
  {
    return (*(v2 + 16))();
  }
}

uint64_t static StreamingExpandLocation.== infix(_:_:)(uint64_t a1, uint64_t a2)
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

uint64_t sub_218B067CC(uint64_t a1, uint64_t a2)
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

uint64_t storeEnumTagSinglePayload for StreamingExpandLocation(uint64_t result, int a2, int a3)
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_218B06838(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_218B06854(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_218B068A4()
{
  v1 = *(*(v0 + 16) + 80);
  ObjectType = swift_getObjectType();
  v4 = sub_218B0A290(qword_280EC3020, v3, type metadata accessor for TagFeedViewerInteractor);
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_218B0699C;
  v6 = *(v0 + 16);

  return MEMORY[0x2821930C0](v6, v4, ObjectType, v1);
}

uint64_t sub_218B0699C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_218B06A90(uint64_t a1)
{
  v3 = *(v1 + 88);
  v4 = *(v1 + 96);
  v5 = *(a1 + 16);
  *(v1 + 88) = *a1;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (*(a1 + 41))
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v1 + 104);
  v10 = *(v1 + 112);
  v11 = *(v1 + 120);
  *(v1 + 104) = v5;
  *(v1 + 120) = v6;
  v12 = *(v1 + 128);
  *(v1 + 128) = v8 | v7;
  sub_218B0A0C8(v3, v4, v9, v10, v11, v12);
  if (swift_unknownObjectWeakLoadStrong())
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_218B08418(a1, v18);
      sub_218B09618();
      swift_unknownObjectRelease();
    }

    else
    {
      sub_218B08418(a1, v18);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    sub_218B08418(a1, v18);
  }

  v13 = sub_2199991DC(a1);
  v14 = v13;
  if (v13 >> 62)
  {
    if (!sub_219BF7214())
    {
      goto LABEL_20;
    }
  }

  else if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_20;
  }

  v15 = sub_218B084D8(v14, a1);
  if (swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_218B08768(v15, Strong);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_218B09618();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

LABEL_20:
  sub_218B06C78(a1, v14);
}

uint64_t sub_218B06C78(_OWORD *a1, uint64_t a2)
{
  sub_218A35748();
  sub_219BE3204();
  sub_2186C6148(0, &qword_280E8E3B0);
  v4 = sub_219BF66A4();
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  v6 = a1[1];
  *(v5 + 24) = *a1;
  *(v5 + 40) = v6;
  *(v5 + 50) = *(a1 + 26);

  sub_218B08418(a1, v10);
  sub_219BE2F94();

  v7 = sub_219BF66A4();
  sub_2186DEEA0(0, &qword_280E8B4E0);
  sub_219BE2F94();

  v8 = sub_219BF66A4();
  *(swift_allocObject() + 16) = a2;

  sub_219BE2FE4();
}

uint64_t sub_218B06EB0()
{
  v0 = sub_21999A0A8();
  v1 = v0;
  if (v0 >> 62)
  {
    Strong = sub_219BF7214();
    if (!Strong)
    {
      goto LABEL_5;
    }
  }

  else
  {
    Strong = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!Strong)
    {
      goto LABEL_5;
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_218B0986C(v1);
    Strong = swift_unknownObjectRelease();
  }

LABEL_5:
  MEMORY[0x28223BE20](Strong);
  sub_218A35748();
  sub_219BE3204();
  sub_2186C6148(0, &qword_280E8E3B0);
  v3 = sub_219BF66A4();
  *(swift_allocObject() + 16) = v1;
  sub_219BE2F94();
}

void sub_218B0705C(void *a1)
{
  v2 = v1;
  v84 = sub_219BDBD34();
  v4 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v82 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v77 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v77 - v10;
  MEMORY[0x28223BE20](v12);
  v83 = &v77 - v13;
  MEMORY[0x28223BE20](v14);
  v85 = &v77 - v15;
  v16 = sub_219BDB954();
  v17 = *(v16 - 8);
  *&v18 = MEMORY[0x28223BE20](v16).n128_u64[0];
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [a1 identifier];
  if (!v21)
  {
    sub_219BF5414();
    v21 = sub_219BF53D4();
  }

  v22 = [v21 fc_isValidTagID];

  if ((v22 & 1) != 0 || [a1 isPuzzleType])
  {
    v23 = *(v2 + 48);
    v24 = OBJC_IVAR___TSFeedViewContext_sourceURL;
    swift_beginAccess();
    if (!(*(v17 + 48))(v23 + v24, 1, v16))
    {
      (*(v17 + 16))(v20, v23 + v24, v16);
      sub_219BDB804();
      (*(v17 + 8))(v20, v16);
    }

    v25 = objc_allocWithZone(MEMORY[0x277CBEBC0]);
    v26 = sub_219BF53D4();

    v27 = [v25 initWithString_];

    if (v27)
    {
      if (![v27 nss_isSubscribeURL])
      {
        goto LABEL_32;
      }

      sub_219BDBD24();
      v28 = *MEMORY[0x277D30CC8];
      v79 = *(v2 + 64);
      v80 = v28;
      if ([v79 objectForKey_])
      {
        sub_219BF70B4();
        swift_unknownObjectRelease();
      }

      else
      {
        v87 = 0u;
        v88 = 0u;
      }

      v89[0] = v87;
      v89[1] = v88;
      if (*(&v88 + 1))
      {
        sub_218B0A2D8();
        if (swift_dynamicCast())
        {
          v29 = v86;
LABEL_17:
          v30 = [*(v2 + 56) appConfiguration];
          v31 = 0;
          if ([v30 respondsToSelector_])
          {
            [v30 tagSubscriptionRepromptDelay];
            v31 = v32;
          }

          swift_unknownObjectRelease();
          v33 = [a1 identifier];
          v34 = sub_219BF5414();
          v36 = v35;

          if (*(v29 + 16))
          {
            v37 = sub_21870F700(v34, v36);
            v39 = v38;

            if (v39)
            {
              v81 = v27;
              v40 = *(v29 + 56) + *(v4 + 72) * v37;
              v41 = *(v4 + 16);
              v42 = v4;
              v44 = v83;
              v43 = v84;
              v41(v83, v40, v84);
              v77 = v41;
              v41(v8, v44, v43);
              sub_219BDBBC4();
              LOBYTE(v41) = sub_219BDBC14();
              v78 = v42;
              v45 = *(v42 + 8);
              v45(v11, v43);
              if (v41)
              {

                if (qword_280EE5F50 != -1)
                {
                  swift_once();
                }

                v46 = sub_219BE5434();
                __swift_project_value_buffer(v46, qword_280F62598);
                v47 = v82;
                v48 = v83;
                v49 = v84;
                v77(v82, v83, v84);
                swift_unknownObjectRetain();
                v50 = sub_219BE5414();
                v51 = sub_219BF61D4();
                swift_unknownObjectRelease();
                if (os_log_type_enabled(v50, v51))
                {
                  v52 = swift_slowAlloc();
                  v80 = swift_slowAlloc();
                  *&v89[0] = v80;
                  *v52 = 136446722;
                  v53 = [a1 identifier];
                  v54 = v51;
                  v55 = v53;
                  v56 = sub_219BF5414();
                  v58 = v57;

                  v59 = sub_2186D1058(v56, v58, v89);

                  *(v52 + 4) = v59;
                  *(v52 + 12) = 2082;
                  sub_218B0A290(&qword_280EE9C60, 255, MEMORY[0x277CC9578]);
                  v60 = sub_219BF7894();
                  v62 = v61;
                  v45(v47, v49);
                  v63 = sub_2186D1058(v60, v62, v89);

                  *(v52 + 14) = v63;
                  *(v52 + 22) = 2050;
                  *(v52 + 24) = v31;
                  _os_log_impl(&dword_2186C1000, v50, v54, "Subscription prompt for tag=%{public}s suppressed due to recent prompt on %{public}s. subscriptionRepromptDelay=%{public}f", v52, 0x20u);
                  v64 = v80;
                  swift_arrayDestroy();
                  MEMORY[0x21CECF960](v64, -1, -1);
                  MEMORY[0x21CECF960](v52, -1, -1);

                  v65 = v83;
                }

                else
                {

                  v45(v47, v49);
                  v65 = v48;
                }

                v45(v65, v49);
                v45(v85, v49);
                return;
              }

              v45(v44, v43);
              v4 = v78;
              v27 = v81;
            }
          }

          else
          {
          }

          v66 = sub_219998BB0(a1);
          if (v66)
          {
            v67 = v66;
            v81 = v27;
            v68 = [a1 identifier];
            v69 = v4;
            v70 = sub_219BF5414();
            v72 = v71;

            v73 = v84;
            (*(v69 + 16))(v11, v85, v84);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v89[0] = v29;
            sub_21948C76C(v11, v70, v72, isUniquelyReferenced_nonNull_native);

            v75 = sub_219BF5204();

            [v79 setObject:v75 forKey:v80];

            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              __swift_project_boxed_opaque_existential_1((Strong + 48), *(Strong + 72));
              sub_21938E044(v67);

              (*(v69 + 8))(v85, v73);
              swift_unknownObjectRelease();
            }

            else
            {

              (*(v69 + 8))(v85, v73);
            }

            return;
          }

          (*(v4 + 8))(v85, v84);

LABEL_32:

          return;
        }
      }

      else
      {
        sub_218806FD0(v89);
      }

      v29 = sub_2194AF4E8(MEMORY[0x277D84F90]);
      goto LABEL_17;
    }
  }
}

uint64_t sub_218B079C8()
{
  if (qword_280EE5F80 != -1)
  {
    swift_once();
  }

  v1 = sub_219BE5434();
  __swift_project_value_buffer(v1, qword_280F625E0);
  v2 = sub_219BE5414();
  v3 = sub_219BF6214();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2186C1000, v2, v3, "TagFeedViewerInteractor: Authenticating on start to Game Center...", v4, 2u);
    MEMORY[0x21CECF960](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  v6 = *(v5 + 80);
  ObjectType = swift_getObjectType();
  v8 = swift_task_alloc();
  *(v0 + 24) = v8;
  *v8 = v0;
  v8[1] = sub_218B0A340;

  return MEMORY[0x2821930D0](ObjectType, v6);
}

uint64_t sub_218B07B30()
{
  sub_218B0847C();
  MEMORY[0x28223BE20](v0);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = off_282A94710;
  type metadata accessor for TagFeedViewerDataManager();
  v3();
  v4 = sub_219BF1B44();
  sub_218AB10D0(v2);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if ((v4 & 1) == 0)
    {
      sub_219998914();
    }

    sub_218B099F8();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_218B07C38(unint64_t *a1, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  v5 = *a1;
  if (a3 >> 62)
  {
    v9 = a3;
    v10 = sub_219BF7214();
    a3 = v9;
    if (v10)
    {
LABEL_3:
      result = sub_21941AFEC(a3, v5);
      if (result)
      {
        return result;
      }
    }
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v7 = sub_218B084D8(v5, a4);
  if (swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_218B08768(v7, Strong);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_218B07D10@<X0>(BOOL *a1@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  v3 = result;
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_218B09618();
      swift_unknownObjectRelease();
    }

    result = swift_unknownObjectRelease();
  }

  *a1 = v3 == 0;
  return result;
}

uint64_t sub_218B07D94(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_219BF1584();
  v20[0] = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B0847C();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186F20D4();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_219C09BA0;
  v21 = 0;
  v22 = 0xE000000000000000;
  v20[1] = a1;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  v13 = v21;
  v12 = v22;
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = sub_2186FC3BC();
  *(v11 + 32) = v13;
  *(v11 + 40) = v12;
  sub_219BE5314();

  if (a3 >> 62)
  {
    result = sub_219BF7214();
    if (result)
    {
      return result;
    }
  }

  else
  {
    result = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      return result;
    }
  }

  v15 = off_282A94710;
  type metadata accessor for TagFeedViewerDataManager();
  v15();
  v16 = v20[0];
  if ((*(v20[0] + 48))(v10, 1, v5) == 1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      if (qword_280ECFF68 != -1)
      {
        swift_once();
      }

      v17 = __swift_project_value_buffer(v5, qword_280F61E40);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        sub_218B09AC8(v17, Strong);
        swift_unknownObjectRelease();
      }

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    (*(v16 + 32))(v7, v10, v5);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v19 = swift_unknownObjectWeakLoadStrong();
      if (v19)
      {
        sub_218B09AC8(v7, v19);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    return (*(v16 + 8))(v7, v5);
  }

  return result;
}

uint64_t sub_218B08118(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v3 = *a1;
  if (a3 >> 62)
  {
    v5 = a3;
    v6 = sub_219BF7214();
    a3 = v5;
    if (v6)
    {
LABEL_3:
      result = sub_21941AFEC(a3, v3);
      if (result)
      {
        return result;
      }
    }
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_218B0986C(v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_218B081B4()
{
  sub_218774F78(v0 + 16);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_218B0A0C8(*(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128));

  return swift_deallocClassInstance();
}

BOOL sub_218B0824C()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v1 = sub_218B09FA4(Strong);
      swift_unknownObjectRelease();
    }

    else
    {
      v1 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    return 0;
  }

  return v1;
}

uint64_t sub_218B08348(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  if (a7)
  {

    swift_unknownObjectRelease();
    v12 = a4;
    v13 = a5;
    v14 = a6;
  }

  else
  {
    swift_unknownObjectRelease();

    v12 = a3;
    v13 = a4;
    v14 = a5;
  }

  return sub_218B083D0(v12, v13, v14);
}

uint64_t sub_218B083D0(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_218B083E8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_218B083E8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_218B0847C()
{
  if (!qword_280E907A0)
  {
    sub_2186F7720();
    v0 = sub_219BF1B54();
    if (!v1)
    {
      atomic_store(v0, &qword_280E907A0);
    }
  }
}

char *sub_218B084D8(unint64_t a1, _BYTE *a2)
{
  if (a1 >> 62)
  {
    v4 = sub_219BF7214();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v25 = MEMORY[0x277D84F90];
    sub_218C34D40(0, v4 & ~(v4 >> 63), 0);
    if (v4 < 0)
    {
      __break(1u);
LABEL_29:
      v5 = sub_2191F7A14(0, 1, 1, v5);
      goto LABEL_23;
    }

    v5 = v25;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = 0;
      do
      {
        v7 = MEMORY[0x21CECE0F0](v6, a1);
        v26 = v5;
        v9 = *(v5 + 2);
        v8 = *(v5 + 3);
        if (v9 >= v8 >> 1)
        {
          v11 = v7;
          sub_218C34D40((v8 > 1), v9 + 1, 1);
          v7 = v11;
          v5 = v26;
        }

        ++v6;
        *(v5 + 2) = v9 + 1;
        v10 = &v5[16 * v9];
        *(v10 + 4) = v7;
        v10[40] = 0;
      }

      while (v4 != v6);
    }

    else
    {
      v12 = (a1 + 32);
      do
      {
        v27 = v5;
        v14 = *(v5 + 2);
        v13 = *(v5 + 3);
        v15 = *v12;
        if (v14 >= v13 >> 1)
        {
          v17 = v15;
          sub_218C34D40((v13 > 1), v14 + 1, 1);
          v15 = v17;
          v5 = v27;
        }

        *(v5 + 2) = v14 + 1;
        v16 = &v5[16 * v14];
        *(v16 + 4) = v15;
        v16[40] = 0;
        ++v12;
        --v4;
      }

      while (v4);
    }
  }

  if (a2[41])
  {
    return v5;
  }

  a2 = *a2;
  v18 = [a2 currentIssueIDs];
  if (!v18)
  {
    return v5;
  }

  v19 = *(v5 + 2);
  if (v19)
  {
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v19 >= *(v5 + 3) >> 1)
    {
      v5 = sub_2191F7A14(isUniquelyReferenced_nonNull_native, v19 + 1, 1, v5);
    }

    sub_2194B2D58(1uLL, 1, 1, a2, 1);
    swift_unknownObjectRelease();
    return v5;
  }

  swift_unknownObjectRetain();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_23:
  v22 = *(v5 + 2);
  v21 = *(v5 + 3);
  if (v22 >= v21 >> 1)
  {
    v5 = sub_2191F7A14((v21 > 1), v22 + 1, 1, v5);
  }

  *(v5 + 2) = v22 + 1;
  v23 = &v5[16 * v22];
  *(v23 + 4) = a2;
  v23[40] = 1;
  return v5;
}

void sub_218B08768(uint64_t a1, uint64_t a2)
{
  v3 = a2 + qword_280EB6510;
  v4 = *(a2 + qword_280EB6510);
  v161 = *(a2 + qword_280EB6510 + 8);
  v5 = *(a2 + qword_280EB6510 + 25);
  if (v5 <= 1)
  {
    if (*(a2 + qword_280EB6510 + 25))
    {
      v151 = *(v3 + 16);
      v160 = *(v3 + 24);
      *(v3 + 8) = a1;
      *(v3 + 16) = 0;
      *(v3 + 24) = 512;
      sub_219BE7F04();
      v115 = sub_219BE7F14();

      v149 = v4;
      v115();
      v157 = *(a1 + 16);
      if (!v157)
      {
        goto LABEL_74;
      }

      v116 = 0;
      v117 = (a1 + 40);
      while (1)
      {
        v118 = *(v117 - 1);
        v119 = *v117;
        if (*v117)
        {
          v167 = 0x2D736575737369;
          v172 = 0xE700000000000000;
          v120 = [swift_unknownObjectRetain() identifier];
          v121 = sub_219BF5414();
          v123 = v122;

          MEMORY[0x21CECC330](v121, v123);
        }

        else
        {
          v124 = v118;
          v125 = [v124 alternativeFeedDescriptor];
          if (v125)
          {
            v126 = v125;
            v167 = 0x2D64656566;
            v172 = 0xE500000000000000;
            v127 = [v124 identifier];
            v128 = sub_219BF5414();
            v130 = v129;

            MEMORY[0x21CECC330](v128, v130);

            MEMORY[0x21CECC330](45, 0xE100000000000000);
            v131 = [v126 identifier];
            v132 = sub_219BF5414();
            v134 = v133;

            MEMORY[0x21CECC330](v132, v134);
          }

          else
          {
            v167 = 0x2D64656566;
            v172 = 0xE500000000000000;
            v135 = [v124 identifier];
            v136 = sub_219BF5414();
            v138 = v137;

            MEMORY[0x21CECC330](v136, v138);
          }
        }

        v139 = v167;
        v140 = v172;
        if (v160 == 255)
        {
          sub_218B09E7C(v118, v119);
        }

        else
        {
          if (v160)
          {
            v168 = 0x2D736575737369;
            v173 = 0xE700000000000000;
            v141 = [v161 identifier];
            v142 = sub_219BF5414();
            v144 = v143;

            MEMORY[0x21CECC330](v142, v144);
          }

          else
          {
            v168 = 0x2D64656566;
            v173 = 0xE500000000000000;
            MEMORY[0x21CECC330](v161, v151);
          }

          if (v139 == v168 && v140 == v173)
          {
            sub_218B09E7C(v118, v119);

LABEL_73:
            sub_219BE7E04();
LABEL_74:
            sub_219A25FA0();
            if (qword_280EE5DA0 != -1)
            {
              swift_once();
            }

            sub_219BE7EC4();
            sub_218B083D0(v161, v151, v160);

            goto LABEL_81;
          }

          v145 = sub_219BF78F4();
          sub_218B09E7C(v118, v119);

          if (v145)
          {
            goto LABEL_73;
          }
        }

        ++v116;
        v117 += 16;
        if (v157 == v116)
        {
          goto LABEL_74;
        }
      }
    }

    goto LABEL_8;
  }

  if (v5 == 2)
  {
LABEL_8:
    v9 = v4;
    v158 = sub_219A263E4();
    v11 = v10;
    v12 = *v3;
    v13 = *(v3 + 8);
    v14 = *(v3 + 16);
    *v3 = v4;
    *(v3 + 8) = a1;
    *(v3 + 16) = 0;
    v15 = *(v3 + 25);
    v16 = *(v3 + 24);
    *(v3 + 24) = 512;

    sub_218B09E88(v12, v13, v14, v16, v15);
    sub_219BE7F04();
    v17 = sub_219BE7F14();
    v17();
    sub_219A2887C();
    sub_219A25FA0();
    if (qword_280EE5DA0 != -1)
    {
      swift_once();
    }

    sub_219BE7EC4();
    sub_219A2D03C();
    sub_219A2D4B8();
    if (v11 == -1)
    {
      goto LABEL_81;
    }

    v18 = v11;
    v152 = *(a1 + 16);
    v19 = 0;
    if (!v152)
    {
LABEL_70:
      sub_219BE7E04();
      v146 = v158;
      v147 = v18;
      goto LABEL_80;
    }

    v20 = (a1 + 40);
    v21 = &selRef_boldSystemFontOfSize_;
    v154 = v11;
    while (1)
    {
      v22 = *(v20 - 1);
      v162 = *v20;
      if (*v20)
      {
        v164 = 0x2D736575737369;
        v169 = 0xE700000000000000;
        v23 = [swift_unknownObjectRetain() identifier];
      }

      else
      {
        v24 = v22;
        v25 = [v24 v21[232]];
        if (v25)
        {
          v26 = v25;
          v164 = 0x2D64656566;
          v169 = 0xE500000000000000;
          v27 = [v24 identifier];
          v28 = sub_219BF5414();
          v30 = v29;

          MEMORY[0x21CECC330](v28, v30);

          MEMORY[0x21CECC330](45, 0xE100000000000000);
          v31 = [v26 identifier];
          v32 = sub_219BF5414();
          v34 = v33;

          MEMORY[0x21CECC330](v32, v34);
          goto LABEL_19;
        }

        v164 = 0x2D64656566;
        v169 = 0xE500000000000000;
        v23 = [v24 identifier];
      }

      v35 = v23;
      v36 = sub_219BF5414();
      v38 = v37;

      MEMORY[0x21CECC330](v36, v38);
LABEL_19:

      if (v18)
      {
        v39 = [v158 identifier];
        v40 = sub_219BF5414();
        v42 = v41;

        MEMORY[0x21CECC330](v40, v42);

        v43 = 0x2D736575737369;
        v44 = 0xE700000000000000;
      }

      else
      {
        v45 = [v158 v21[232]];
        if (v45)
        {
          v46 = v45;
          v47 = [v158 identifier];
          v48 = sub_219BF5414();
          v50 = v49;

          MEMORY[0x21CECC330](v48, v50);

          MEMORY[0x21CECC330](45, 0xE100000000000000);
          v51 = [v46 identifier];
          v52 = sub_219BF5414();
          v54 = v53;

          MEMORY[0x21CECC330](v52, v54);
        }

        else
        {
          v55 = [v158 identifier];
          v56 = sub_219BF5414();
          v58 = v57;

          MEMORY[0x21CECC330](v56, v58);
        }

        v43 = 0x2D64656566;
        v44 = 0xE500000000000000;
        v21 = &selRef_boldSystemFontOfSize_;
      }

      if (v164 == v43 && v169 == v44)
      {

        sub_218B09E7C(v22, v162);
        v18 = v154;
        goto LABEL_70;
      }

      v59 = sub_219BF78F4();

      sub_218B09E7C(v22, v162);
      v18 = v154;
      if ((v59 & 1) == 0)
      {
        ++v19;
        v20 += 16;
        if (v152 != v19)
        {
          continue;
        }
      }

      goto LABEL_70;
    }
  }

  if (v5 == 3)
  {
    *(v3 + 16) = a1;
    *(v3 + 24) = 1024;
    sub_219BE7F04();
    v6 = sub_219BE7F14();

    v7 = v4;
    v8 = v161;
    v6();
    sub_219A25FA0();
    if (qword_280EE5DA0 != -1)
    {
      swift_once();
    }

    sub_219BE7EC4();

    goto LABEL_81;
  }

  v60 = v4;
  v61 = v161;
  v62 = sub_219A263E4();
  v159 = v63;
  v64 = *(v3 + 8);
  v153 = v62;
  v155 = *v3;
  v65 = *(v3 + 16);
  *v3 = v4;
  *(v3 + 8) = v161;
  *(v3 + 16) = a1;
  v66 = *(v3 + 25);
  v67 = *(v3 + 24);
  *(v3 + 24) = 1024;
  v68 = v60;
  v69 = v61;

  sub_218B09E88(v155, v64, v65, v67, v66);
  sub_219BE7F04();
  v70 = sub_219BE7F14();
  v70();
  sub_219A2887C();
  sub_219A25FA0();
  if (qword_280EE5DA0 != -1)
  {
    swift_once();
  }

  sub_219BE7EC4();
  sub_219A2D03C();
  sub_219A2D4B8();
  v71 = v159;
  if (v159 == -1)
  {

    goto LABEL_81;
  }

  v148 = v69;
  v150 = v68;
  v156 = *(a1 + 16);
  v72 = 0;
  if (!v156)
  {
    v74 = v153;
    goto LABEL_79;
  }

  v73 = (a1 + 40);
  v74 = v153;
  while (1)
  {
    v75 = *(v73 - 1);
    v163 = *v73;
    if (*v73)
    {
      v165 = 0x2D736575737369;
      v170 = 0xE700000000000000;
      v76 = [swift_unknownObjectRetain() identifier];
    }

    else
    {
      v77 = v75;
      v78 = [v77 alternativeFeedDescriptor];
      if (v78)
      {
        v79 = v78;
        v165 = 0x2D64656566;
        v170 = 0xE500000000000000;
        v80 = [v77 identifier];
        v81 = sub_219BF5414();
        v83 = v82;

        MEMORY[0x21CECC330](v81, v83);

        MEMORY[0x21CECC330](45, 0xE100000000000000);
        v84 = [v79 identifier];
        v85 = sub_219BF5414();
        v87 = v86;

        MEMORY[0x21CECC330](v85, v87);
        goto LABEL_41;
      }

      v165 = 0x2D64656566;
      v170 = 0xE500000000000000;
      v76 = [v77 identifier];
    }

    v88 = v76;
    v89 = sub_219BF5414();
    v91 = v90;

    MEMORY[0x21CECC330](v89, v91);
LABEL_41:

    v92 = v165;
    v93 = v170;
    if (v159)
    {
      v166 = 0x2D736575737369;
      v171 = 0xE700000000000000;
      v94 = [v74 identifier];
      v95 = sub_219BF5414();
      v97 = v96;

      MEMORY[0x21CECC330](v95, v97);
    }

    else
    {
      v98 = [v74 alternativeFeedDescriptor];
      if (v98)
      {
        v99 = v98;
        v166 = 0x2D64656566;
        v171 = 0xE500000000000000;
        v100 = [v74 identifier];
        v101 = sub_219BF5414();
        v103 = v102;

        MEMORY[0x21CECC330](v101, v103);

        MEMORY[0x21CECC330](45, 0xE100000000000000);
        v104 = [v99 identifier];
        v105 = sub_219BF5414();
        v107 = v106;

        v108 = v105;
        v74 = v153;
        MEMORY[0x21CECC330](v108, v107);
      }

      else
      {
        v166 = 0x2D64656566;
        v171 = 0xE500000000000000;
        v109 = [v74 identifier];
        v110 = sub_219BF5414();
        v112 = v111;

        v113 = v110;
        v74 = v153;
        MEMORY[0x21CECC330](v113, v112);
      }
    }

    if (v92 == v166 && v93 == v171)
    {
      break;
    }

    v114 = sub_219BF78F4();

    sub_218B09E7C(v75, v163);
    if ((v114 & 1) == 0)
    {
      ++v72;
      v73 += 16;
      if (v156 != v72)
      {
        continue;
      }
    }

    goto LABEL_78;
  }

  sub_218B09E7C(v75, v163);
LABEL_78:
  v71 = v159;
LABEL_79:
  sub_219BE7E04();

  v146 = v74;
  v147 = v71;
LABEL_80:
  sub_218B09F8C(v146, v147);
LABEL_81:
  sub_219A25D28();
}

uint64_t sub_218B09618()
{
  v0 = sub_219BE2864();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x277D6CD38];
  sub_21881CC24(0, &qword_280E8C090, MEMORY[0x277D6CD38], MEMORY[0x277D84560]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C09EC0;
  sub_219BE2854();
  sub_219BE2844();
  v7[1] = v5;
  sub_218B0A290(&qword_280EE73C0, 255, MEMORY[0x277D6CD38]);
  sub_21881CC24(0, &unk_280E8F5C0, v4, MEMORY[0x277D83940]);
  sub_21881CB9C();
  sub_219BF7164();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_219BE1D24();

  (*(v1 + 8))(v3, v0);
}

uint64_t sub_218B0986C(uint64_t a1)
{
  sub_21881CC24(0, qword_280EAE4D0, type metadata accessor for TagFeedViewerLinkPresentation, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    sub_2199F3AD8(a1, v4);
    v7 = type metadata accessor for TagFeedViewerLinkPresentation();
    (*(*(v7 - 8) + 56))(v4, 0, 1, v7);
    v8 = qword_280EB6508;
    swift_beginAccess();
    sub_218B0A170(v4, v6 + v8);
    swift_endAccess();
    sub_219A25FA0();
    sub_218B0A204(v4);
    sub_219A25FA0();
    if (qword_280EE5DA0 != -1)
    {
      swift_once();
    }

    sub_219BE7EC4();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_218B099F8()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if ([*(result + qword_280EB6460) useOfflineMode])
    {
      sub_219BE7EF4();
    }

    sub_219A25FA0();
    if (qword_280EE5DA0 != -1)
    {
      swift_once();
    }

    sub_219BE7EC4();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_218B09AC8(uint64_t a1, uint64_t a2)
{
  v16[1] = a2;
  v18 = a1;
  v17 = sub_219BF1584();
  v3 = *(v17 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v17);
  v5 = sub_219BE2864();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[2] = *(a2 + qword_280EB64A0);
  v9 = MEMORY[0x277D6CD38];
  sub_21881CC24(0, &qword_280E8C090, MEMORY[0x277D6CD38], MEMORY[0x277D84560]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_219C09EC0;
  sub_219BE2854();
  sub_219BE2844();
  v19 = v10;
  sub_218B0A290(&qword_280EE73C0, 255, MEMORY[0x277D6CD38]);
  sub_21881CC24(0, &unk_280E8F5C0, v9, MEMORY[0x277D83940]);
  sub_21881CB9C();
  sub_219BF7164();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = v17;
  (*(v3 + 16))(v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v18, v17);
  v13 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  (*(v3 + 32))(v14 + v13, v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12);

  sub_219BE1D24();

  (*(v6 + 8))(v8, v5);
}

void sub_218B09E10()
{
  sub_219BF1584();

  sub_219A2CC2C();
}

void sub_218B09E7C(void *a1, char a2)
{
  if (a2)
  {
    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_218B09E88(void *a1, void *a2, uint64_t a3, char a4, unsigned __int8 a5)
{
  if (a5 > 1u)
  {
    if (a5 == 2)
    {

LABEL_12:

      return;
    }

    if (a5 != 3)
    {
      if (a5 != 4)
      {
        return;
      }

      goto LABEL_12;
    }

    a1 = a2;
    goto LABEL_16;
  }

  if (!a5)
  {
LABEL_16:

    return;
  }

  if (a5 == 1)
  {

    sub_218B083D0(a2, a3, a4);
  }
}

void sub_218B09F8C(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_218B09E7C(a1, a2 & 1);
  }
}

BOOL sub_218B09FA4(char *a1)
{
  v2 = [*&a1[qword_280EB6510] backingTag];
  if ((([v2 isPuzzleHub] & 1) != 0 || objc_msgSend(v2, sel_isPuzzleType)) && (v3 = objc_msgSend(a1, sel_viewIfLoaded), v4 = objc_msgSend(v3, sel_window), v3, v4))
  {

    v5 = [a1 navigationController];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 topViewController];

      swift_unknownObjectRelease();
      if (v7)
      {

        return v7 == a1;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 1;
  }

  else
  {
    swift_unknownObjectRelease();
    return 0;
  }
}

void *sub_218B0A0C8(void *result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  if (HIBYTE(a6) != 255)
  {
    return sub_218B08348(result, a2, a3, a4, a5, a6, HIBYTE(a6) & 1);
  }

  return result;
}

uint64_t sub_218B0A0E8()
{
  v0 = off_282A94748[0];
  type metadata accessor for TagFeedViewerDataManager();
  return v0();
}

uint64_t sub_218B0A170(uint64_t a1, uint64_t a2)
{
  sub_21881CC24(0, qword_280EAE4D0, type metadata accessor for TagFeedViewerLinkPresentation, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_218B0A204(uint64_t a1)
{
  sub_21881CC24(0, qword_280EAE4D0, type metadata accessor for TagFeedViewerLinkPresentation, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218B0A290(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_218B0A2D8()
{
  if (!qword_280E8FC20)
  {
    sub_219BDBD34();
    v0 = sub_219BF52A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8FC20);
    }
  }
}

uint64_t sub_218B0A36C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = sub_219BF1934();
  v15 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v17 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B0A870(0, &qword_280E8C6E8, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B0A81C();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v15;
    v11 = v16;
    v18 = 1;
    sub_218933D7C(&qword_280E90808);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    (*(v12 + 32))(v11, v17, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218B0A5C0(void *a1)
{
  sub_218B0A870(0, &qword_27CC0E000, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B0A81C();
  sub_219BF7B44();
  v9[15] = 0;
  sub_218B0A8D4();
  sub_219BF7834();
  if (!v1)
  {
    v9[14] = 1;
    sub_219BF1934();
    sub_218933D7C(&qword_280E90810);
    sub_219BF7834();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_218B0A774(uint64_t a1)
{
  v2 = sub_218B0A81C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218B0A7B0(uint64_t a1)
{
  v2 = sub_218B0A81C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_218B0A81C()
{
  result = qword_280E948B8[0];
  if (!qword_280E948B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E948B8);
  }

  return result;
}

void sub_218B0A870(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218B0A81C();
    v7 = a3(a1, &type metadata for ArticleListAudioPlaylistFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218B0A8D4()
{
  result = qword_280EBC260;
  if (!qword_280EBC260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBC260);
  }

  return result;
}

unint64_t sub_218B0A93C()
{
  result = qword_27CC0E008;
  if (!qword_27CC0E008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E008);
  }

  return result;
}

unint64_t sub_218B0A994()
{
  result = qword_280E948A8;
  if (!qword_280E948A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E948A8);
  }

  return result;
}

unint64_t sub_218B0A9EC()
{
  result = qword_280E948B0;
  if (!qword_280E948B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E948B0);
  }

  return result;
}

void sub_218B0AA40()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    type metadata accessor for NotificationSettings();
    sub_219BE3204();
    v0 = sub_219BE2E54();
    type metadata accessor for UserNotificationsSettingsChangeHandler();
    sub_219BE2F94();
  }
}

void sub_218B0AB20(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 120);
  v5 = *(a2 + 128);
  v6 = *(v3 + OBJC_IVAR___TSNotificationSettings_authorizationStatus);
  *(a2 + 120) = v6;
  *(a2 + 128) = 0;
  if ((v5 & 1) == 0)
  {
    sub_218B0AB74(v4, v6);
  }
}

void sub_218B0AB74(unint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    if (qword_280EE5FC8 != -1)
    {
      swift_once();
    }

    v2 = sub_219BE5434();
    __swift_project_value_buffer(v2, qword_280F62670);
    oslog = sub_219BE5414();
    v3 = sub_219BF6214();
    if (!os_log_type_enabled(oslog, v3))
    {
      goto LABEL_32;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Authorization state change did not change. No routing necessary.";
    goto LABEL_31;
  }

  if (qword_280EE5FC8 != -1)
  {
    swift_once();
  }

  v8 = sub_219BE5434();
  __swift_project_value_buffer(v8, qword_280F62670);
  v9 = sub_219BE5414();
  v10 = sub_219BF6214();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = 0xED000064656E696DLL;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315394;
    if (a1)
    {
      if (a1 == 2)
      {
        v14 = 0x7A69726F68747561;
        v15 = 0xEA00000000006465;
      }

      else
      {
        if (a1 != 1)
        {
          goto LABEL_35;
        }

        v15 = 0xE600000000000000;
        v14 = 0x6465696E6564;
      }
    }

    else
    {
      v14 = 0x7265746544746F6ELL;
      v15 = 0xED000064656E696DLL;
    }

    v16 = sub_2186D1058(v14, v15, &v23);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    switch(a2)
    {
      case 0:
        v17 = 0x7265746544746F6ELL;
        goto LABEL_21;
      case 2:
        v17 = 0x7A69726F68747561;
        v11 = 0xEA00000000006465;
LABEL_21:
        v18 = sub_2186D1058(v17, v11, &v23);

        *(v12 + 14) = v18;
        _os_log_impl(&dword_2186C1000, v9, v10, "Processing authorization change from %s to %s", v12, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CECF960](v13, -1, -1);
        MEMORY[0x21CECF960](v12, -1, -1);
        goto LABEL_22;
      case 1:
        v11 = 0xE600000000000000;
        v17 = 0x6465696E6564;
        goto LABEL_21;
    }

LABEL_35:
    sub_219BF7974();
    __break(1u);
    return;
  }

LABEL_22:

  if (a1 > 1 || a2 != 2)
  {
    oslog = sub_219BE5414();
    v3 = sub_219BF6214();
    if (!os_log_type_enabled(oslog, v3))
    {
LABEL_32:

      return;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Authorization state change did not trigger a route";
LABEL_31:
    _os_log_impl(&dword_2186C1000, oslog, v3, v5, v4, 2u);
    MEMORY[0x21CECF960](v4, -1, -1);
    goto LABEL_32;
  }

  v19 = sub_219BE5414();
  v20 = sub_219BF6214();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_2186C1000, v19, v20, "Authorization state change, will auto enable notifications.", v21, 2u);
    MEMORY[0x21CECF960](v21, -1, -1);
  }

  sub_218B0AFA8();
}

uint64_t sub_218B0AFA8()
{
  v0 = sub_219BED174();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BED1D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186C6148(0, &qword_280E8E3B0);
  v8 = sub_219BF66A4();
  v9 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_218B0CFC4;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_24;
  v10 = _Block_copy(aBlock);

  sub_219BED1A4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2187571A4(&qword_280E927E0, 255, MEMORY[0x277D85198]);
  sub_21874E5F0(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_21874EB68();
  sub_219BF7164();
  MEMORY[0x21CECD460](0, v7, v3, v10);
  _Block_release(v10);

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_218B0B298()
{
  v0 = MEMORY[0x277D83D88];
  sub_21874E5F0(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v45 - v5;
  sub_21874E5F0(0, &qword_280E8FFE0, MEMORY[0x277D34098], v0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v45 - v8;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = *(result + 144);
    if (v12)
    {
      v13 = *(result + 136);

      sub_218B0BC9C(v13, v12);
    }

    v14 = *(v11 + 152);
    if (v14 != 2)
    {
      sub_218B0C178(v14 & 1);
    }

    sub_218B0C3D8();
    [*(v11 + 88) setEndOfAudioTrackNotificationsEnabled_];
    *(v11 + 136) = 0;
    *(v11 + 144) = 0;

    *(v11 + 152) = 2;
    if (v12)
    {
      v49 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (qword_280EE5FC8 != -1)
      {
        swift_once();
      }

      v46 = v2;
      v15 = sub_219BE5434();
      __swift_project_value_buffer(v15, qword_280F62670);
      v16 = sub_219BE5414();
      v17 = sub_219BF6214();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_2186C1000, v16, v17, "Routing to manage notifications screen.", v18, 2u);
        MEMORY[0x21CECF960](v18, -1, -1);
      }

      v19 = *(v11 + 64);
      type metadata accessor for FollowingNotificationsPrewarm();
      v20 = swift_allocBox();
      v22 = v21;
      v23 = sub_219BF3BD4();
      (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
      sub_218B0CFCC(v9, v22, &qword_280E8FFE0, MEMORY[0x277D34098]);
      swift_storeEnumTagMultiPayload();
      v51 = v20;
      v24 = v20 | 0x3000000000000004;
      v25 = *(v11 + 56);
      v26 = sub_219BDFA44();
      (*(*(v26 - 8) + 56))(v6, 1, 1, v26);
      v61 = 0;
      memset(v60, 0, sizeof(v60));
      v59 = 0;
      memset(v58, 0, sizeof(v58));
      v57 = v19;
      sub_2187B1634(v58, &v53, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      v50 = v19;
      if (v54)
      {
        sub_21875F93C(&v53, v55);
        v27 = qword_280ED32D0;

        v28 = v46;
        if (v27 != -1)
        {
          swift_once();
        }

        v29 = qword_280ED32E0;
        v30 = qword_280ED32E8;
        v45 = qword_280ED32D8;

        v48 = v29;
        v47 = v30;
        sub_2188202A8(v29);
        __swift_destroy_boxed_opaque_existential_1(v55);
      }

      else
      {

        sub_218744B10(&v53, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
        v28 = v46;
        if (qword_280ED32D0 != -1)
        {
          swift_once();
        }

        v31 = qword_280ED32E0;
        v32 = qword_280ED32E8;
        v45 = qword_280ED32D8;

        v48 = v31;
        v47 = v32;
        sub_2188202A8(v31);
      }

      v52 = v24;
      v54 = sub_219BDD274();
      v33 = v25;
      *&v53 = v25;
      v34 = MEMORY[0x277D2DED0];
      v35 = v49;
      sub_2187B1634(v6, v49, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_21874E5F0);
      sub_2187B1634(v60, v55, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
      v36 = (*(v28 + 80) + 24) & ~*(v28 + 80);
      v46 = v6;
      v37 = (v3 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
      v38 = (v37 + 47) & 0xFFFFFFFFFFFFFFF8;
      v39 = swift_allocObject();
      *(v39 + 16) = v33;
      sub_218B0CFCC(v35, v39 + v36, &qword_280EE8610, v34);
      v40 = v39 + v37;
      v41 = v55[1];
      *v40 = v55[0];
      *(v40 + 16) = v41;
      *(v40 + 32) = v56;
      v42 = (v39 + v38);
      v43 = (v39 + ((v38 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v42 = 0;
      v42[1] = 0;
      v44 = v48;
      *v43 = v45;
      v43[1] = v44;
      v43[2] = v47;
      swift_retain_n();

      sub_2188202A8(v44);
      sub_2186CF94C();
      sub_2187571A4(&qword_280EE5A90, 255, sub_2186CF94C);
      sub_219BEB464();

      sub_2187FABEC(v44);
      sub_218744B10(v58, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      sub_218744B10(v60, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
      sub_218744B10(v46, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_21874E5F0);

      sub_218744B10(&v53, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
    }
  }

  return result;
}

void sub_218B0BC9C(uint64_t a1, unint64_t a2)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v5 = *(v2 + 72);
  v6 = sub_219BF53D4();
  v7 = [v5 hasSubscriptionToTagID_];

  if (v7)
  {
    if (qword_280EE5FC8 != -1)
    {
      swift_once();
    }

    v8 = sub_219BE5434();
    __swift_project_value_buffer(v8, qword_280F62670);

    v9 = sub_219BE5414();
    v10 = sub_219BF6214();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v32[0] = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_2186D1058(a1, a2, v32);
      _os_log_impl(&dword_2186C1000, v9, v10, "Enabling notification state for %s after authorization change", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x21CECF960](v12, -1, -1);
      MEMORY[0x21CECF960](v11, -1, -1);
    }

    v13 = sub_219BF53D4();
    v32[0] = 0;
    v14 = [v5 setNotificationsEnabled:1 forTagID:v13 error:v32];

    v15 = v32[0];
    if (v14)
    {

      v16 = v15;
    }

    else
    {
      v21 = v32[0];
      v22 = sub_219BDB724();

      swift_willThrow();

      v23 = v22;
      v24 = sub_219BE5414();
      v25 = sub_219BF61F4();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v32[0] = v27;
        *v26 = 136315394;
        *(v26 + 4) = sub_2186D1058(a1, a2, v32);
        *(v26 + 12) = 2080;
        swift_getErrorValue();
        v28 = sub_219BF7A04();
        v30 = sub_2186D1058(v28, v29, v32);

        *(v26 + 14) = v30;
        _os_log_impl(&dword_2186C1000, v24, v25, "Failed enabling notifications for %s. Error=%s", v26, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CECF960](v27, -1, -1);
        MEMORY[0x21CECF960](v26, -1, -1);
      }

      else
      {
      }
    }
  }

  else
  {
    if (qword_280EE5FC8 != -1)
    {
      swift_once();
    }

    v17 = sub_219BE5434();
    __swift_project_value_buffer(v17, qword_280F62670);

    oslog = sub_219BE5414();
    v18 = sub_219BF6214();

    if (os_log_type_enabled(oslog, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v32[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_2186D1058(a1, a2, v32);
      _os_log_impl(&dword_2186C1000, oslog, v18, "Skipping enabling notification state for %s. User is not subscribed to channel", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x21CECF960](v20, -1, -1);
      MEMORY[0x21CECF960](v19, -1, -1);
    }

    else
    {
    }
  }
}

void sub_218B0C178(char a1)
{
  v3 = [*(v1 + 96) cachedSubscription];
  if (objc_getAssociatedObject(v3, v3 + 1))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13 = v11;
  v14 = v12;
  v4 = MEMORY[0x277D84F70];
  if (!*(&v12 + 1))
  {
    sub_218744B10(&v13, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
    goto LABEL_9;
  }

  sub_2186C6148(0, &qword_280E8DA20);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v5 = 0;
    v7 = 0;
    goto LABEL_10;
  }

  v5 = v10;
  v6 = [v10 integerValue];
  if (v6 == -1)
  {

    goto LABEL_21;
  }

  v7 = v6;
LABEL_10:
  if (objc_getAssociatedObject(v3, ~v7))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13 = v11;
  v14 = v12;
  if (*(&v12 + 1))
  {
    sub_2186C6148(0, &qword_280E8DA20);
    if (swift_dynamicCast())
    {
      v8 = v10;
      v9 = [v8 integerValue];

      if (((v9 ^ v7) & 1) == 0)
      {
        return;
      }

LABEL_21:
      [*(v1 + 88) setNewIssueNotificationsEnabled_];
      return;
    }
  }

  else
  {
    sub_218744B10(&v13, &qword_280E8B4F0, v4 + 8, MEMORY[0x277D83D88], sub_2186F8278);
  }

  if (v7)
  {
    goto LABEL_21;
  }
}

uint64_t sub_218B0C3D8()
{
  v1 = [objc_msgSend(*(v0 + 80) possiblyUnfetchedAppConfiguration)];
  if (!v1 || (v2 = v1, v3 = sub_219BF5924(), v2, v4 = sub_218B0C5E4(v3), , !v4))
  {

    v4 = MEMORY[0x277D84F90];
  }

  v5 = *(v0 + 104);
  v6 = swift_allocObject();
  swift_weakInit();
  sub_218E995E4(v4, v5, v6);
  swift_unknownObjectRelease();
}

uint64_t sub_218B0C4D8(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_219BF73F4();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_2186D1230(i, v5);
    sub_2186C6148(0, &qword_280E8E8A0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_219BF73D4();
    sub_219BF7414();
    sub_219BF7424();
    sub_219BF73E4();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_218B0C5E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  sub_21870B65C(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_2186D1230(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_21870B65C((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_218B0C6F8(unint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_15:
    sub_219BF7214();
    sub_219BF73F4();
    v2 = sub_219BF7214();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_219BF73F4();
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x21CECE0F0](v3, a1);
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          swift_unknownObjectRetain();
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_12;
          }
        }

        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          goto LABEL_13;
        }

        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
        ++v3;
      }

      while (v4 != v2);
    }
  }

  return v6;
}

void sub_218B0C86C(void *a1, char a2, uint64_t a3)
{
  if (a2)
  {
    if (qword_280EE5FC8 != -1)
    {
      swift_once();
    }

    v4 = sub_219BE5434();
    __swift_project_value_buffer(v4, qword_280F62670);
    v5 = a1;
    oslog = sub_219BE5414();
    v6 = sub_219BF61F4();
    sub_218B0D254(a1, 1);
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136315138;
      swift_getErrorValue();
      v9 = sub_219BF7A04();
      v11 = sub_2186D1058(v9, v10, &v15);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_2186C1000, oslog, v6, "Failed fetching tags notifications for presubscribedFeedIDs. Error=%s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x21CECF960](v8, -1, -1);
      MEMORY[0x21CECF960](v7, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v13 = swift_allocObject();
    *(v13 + 16) = a3;
    *(v13 + 24) = a1;
    sub_218B0D268(a1, 0);

    sub_219BE3494();
  }
}

void sub_218B0CA88(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a2 >> 62)
    {
      v5 = sub_219BF7214();
    }

    else
    {
      v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = MEMORY[0x277D84F90];
    if (v5)
    {
      v10 = MEMORY[0x277D84F90];
      sub_219BF73F4();
      if (v5 < 0)
      {
        __break(1u);
        return;
      }

      if ((a2 & 0xC000000000000001) != 0)
      {
        v7 = 0;
        do
        {
          v8 = v7 + 1;
          MEMORY[0x21CECE0F0]();
          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
          v7 = v8;
        }

        while (v5 != v8);
      }

      else
      {
        v9 = a2 + 32;
        do
        {
          v9 += 8;
          swift_unknownObjectRetain();
          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
          --v5;
        }

        while (v5);
      }

      v6 = v10;
    }

    v10 = 0;

    sub_218B0D140(v6, v4, &v10);
  }
}

void sub_218B0CC40(void *a1, uint64_t a2, uint64_t *a3)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = *(a2 + 72);
  if ([v5 hasSubscriptionToTag_])
  {
    v6 = [v4 identifier];
    v7 = sub_219BF5414();
    v9 = v8;

    sub_218B0BC9C(v7, v9);
  }

  else
  {
    v29[0] = *a3;
    [v5 addSubscriptionToTag:v4 notificationsEnabled:1 error:v29];
    v10 = v29[0];
    v11 = *a3;
    *a3 = v29[0];
    v12 = v10;

    if (v12)
    {
      if (qword_280EE5FC8 != -1)
      {
        swift_once();
      }

      v13 = sub_219BE5434();
      __swift_project_value_buffer(v13, qword_280F62670);
      v14 = v12;
      swift_unknownObjectRetain();
      v15 = sub_219BE5414();
      v16 = sub_219BF61F4();

      swift_unknownObjectRelease();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v29[0] = v18;
        *v17 = 136315394;
        v19 = [v4 identifier];
        v20 = sub_219BF5414();
        v22 = v21;

        v23 = sub_2186D1058(v20, v22, v29);

        *(v17 + 4) = v23;
        *(v17 + 12) = 2080;
        v24 = [v14 localizedDescription];
        v25 = sub_219BF5414();
        v27 = v26;

        v28 = sub_2186D1058(v25, v27, v29);

        *(v17 + 14) = v28;
        _os_log_impl(&dword_2186C1000, v15, v16, "Failed adding subscription to %s. Error=%s", v17, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CECF960](v18, -1, -1);
        MEMORY[0x21CECF960](v17, -1, -1);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_218B0CF30()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_218B0CF90()
{
  sub_218B0CF30();

  return swift_deallocClassInstance();
}

uint64_t sub_218B0CFCC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_21874E5F0(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_218B0D04C(void *a1)
{
  sub_21874E5F0(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2194DAC9C(a1, *(v1 + 16), v1 + v4, v1 + v5, *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

unint64_t sub_218B0D140(unint64_t result, uint64_t a2, uint64_t *a3)
{
  v5 = result;
  if (result >> 62)
  {
    goto LABEL_14;
  }

  v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
    do
    {
      v7 = 0;
      while ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x21CECE0F0](v7, v5);
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v11 = v8;
        sub_218B0CC40(&v11, a2, a3);
        result = swift_unknownObjectRelease();
        if (!v3)
        {
          ++v7;
          if (v9 != v6)
          {
            continue;
          }
        }

        return result;
      }

      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(v5 + 8 * v7 + 32);
      swift_unknownObjectRetain();
      v9 = v7 + 1;
      if (!__OFADD__(v7, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = sub_219BF7214();
      v6 = result;
    }

    while (result);
  }

  return result;
}

void sub_218B0D254(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

id sub_218B0D268(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_218B0D274@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x277CC9578];
  sub_2186DD0BC(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v22[-v8];
  v10 = v1[5];
  v11 = MEMORY[0x277D841D0];
  v12 = *(*v10 + *MEMORY[0x277D841D0] + 16);
  v13 = (*(*v10 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v10 + v13));
  sub_2187100D4(v10 + v12, v9, &qword_280EE9C40, v3);
  os_unfair_lock_unlock((v10 + v13));

  v14 = sub_219BDBD34();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    v16 = MEMORY[0x277CC9578];
    sub_218710220(v9, &qword_280EE9C40, MEMORY[0x277CC9578]);
    v17 = sub_218B0D558(v1, v6);
    v18 = v1[5];
    MEMORY[0x28223BE20](v17);
    *&v22[-16] = v6;
    v19 = *(*v18 + *v11 + 16);
    v20 = (*(*v18 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v18 + v20));
    sub_2187112B4(v18 + v19);
    os_unfair_lock_unlock((v18 + v20));

    return sub_21870EAE4(v6, a1, &qword_280EE9C40, v16);
  }

  else
  {
    (*(v15 + 32))(a1, v9, v14);
    return (*(v15 + 56))(a1, 0, 1, v14);
  }
}

uint64_t sub_218B0D558@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for OfflineFeedManifest(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DD0BC(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v28 - v8;
  v10 = sub_219BDBD34();
  v31 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BDB954();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v28 - v18;
  if (a1[7])
  {
    v28[1] = v6;
    v30 = a2;
    swift_getObjectType();
    v28[0] = a1;
    v20 = a1[2];
    v21 = a1[3];
    swift_unknownObjectRetain();
    sub_218711114(v20, v21);
    swift_unknownObjectRelease();
    (*(v13 + 32))(v19, v15, v12);
    sub_2187208C8();
    (*(v13 + 8))(v19, v12);
    v23 = *(v31 + 56);
    v23(v9, 0, 1, v10);
    v24 = *(v31 + 32);
    v31 += 32;
    v25 = v29;
    v24(v29, v9, v10);
    v26 = v30;
    v24(v30, v25, v10);
    return (v23)(v26, 0, 1, v10);
  }

  else
  {
    v22 = *(v31 + 56);

    return v22(a2, 1, 1, v10, v17);
  }
}

uint64_t sub_218B0D9C0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_219BDB954();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v1[5];
  v15 = a1;
  v9 = *(*v8 + *MEMORY[0x277D841D0] + 16);
  v10 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v8 + v10));
  sub_21871129C(v8 + v9);
  os_unfair_lock_unlock((v8 + v10));

  if (v2[7])
  {
    swift_getObjectType();
    v12 = v2[2];
    v11 = v2[3];
    swift_unknownObjectRetain();
    sub_218711114(v12, v11);
    swift_unknownObjectRelease();
    sub_218B0DBA8(a1, 0xD000000000000035, 0x8000000219CE8780);
    (*(v5 + 8))(v7, v4);
  }

  return sub_218710220(a1, &qword_280EE9C40, MEMORY[0x277CC9578]);
}

uint64_t sub_218B0DBA8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = sub_219BDB954();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_218B0E9F8(a1);
  if ((result & 0x80000000) != 0)
  {
    if (qword_280EE6070 != -1)
    {
      swift_once();
    }

    v12 = sub_219BE5434();
    __swift_project_value_buffer(v12, qword_280F62790);
    (*(v8 + 16))(v10, v3, v7);

    v13 = sub_219BE5414();
    v14 = sub_219BF61F4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = v29;
      *v15 = 136446722;
      HIDWORD(v28) = v14;
      v16 = sub_219BDB8F4();
      v18 = v17;
      (*(v8 + 8))(v10, v7);
      v19 = sub_2186D1058(v16, v18, &v30);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2082;
      *(v15 + 14) = sub_2186D1058(a2, a3, &v30);
      *(v15 + 22) = 1026;
      *(v15 + 24) = MEMORY[0x21CEC2930]();
      _os_log_impl(&dword_2186C1000, v13, BYTE4(v28), "Failed to set extended attribute, path=%{public}s, name=%{public}s, errno=%{public}d", v15, 0x1Cu);
      v20 = v29;
      swift_arrayDestroy();
      MEMORY[0x21CECF960](v20, -1, -1);
      MEMORY[0x21CECF960](v15, -1, -1);
    }

    else
    {

      v21 = (*(v8 + 8))(v10, v7);
    }

    v22 = MEMORY[0x21CEC2930](v21);
    v23 = MEMORY[0x21CEC2930]();
    result = strerror(v23);
    if (result)
    {
      v24 = sub_219BF55A4();
      v26 = v25;
      sub_218B0ED00();
      swift_allocError();
      *v27 = v22;
      v27[1] = v24;
      v27[2] = v26;
      return swift_willThrow();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_218B0DEB4(uint64_t a1)
{
  v27 = *v1;
  sub_2186DD0BC(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v23 - v4;
  v6 = sub_219BDBD34();
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x28223BE20](v6);
  v24 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDB954();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v1[6];
  v28 = a1;
  v29 = a1;
  v13 = *(*v12 + *MEMORY[0x277D841D0] + 16);
  v14 = (*(*v12 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v12 + v14));
  sub_21871129C(v12 + v13);
  os_unfair_lock_unlock((v12 + v14));

  if (v1[7])
  {
    swift_getObjectType();
    v15 = v1[2];
    v16 = v1[3];
    swift_unknownObjectRetain();
    sub_218711114(v15, v16);
    swift_unknownObjectRelease();
    sub_218B0DBA8(v28, 0xD000000000000035, 0x8000000219CE8740);
    (*(v9 + 8))(v11, v8);
  }

  if (v1[8])
  {
    sub_2187100D4(v28, v5, &qword_280EE9C40, MEMORY[0x277CC9578]);
    v18 = v25;
    v17 = v26;
    v19 = *(v25 + 48);
    if (v19(v5, 1, v26) == 1)
    {

      v20 = v24;
      sub_219BDBBB4();
      if (v19(v5, 1, v17) != 1)
      {
        sub_218710220(v5, &qword_280EE9C40, MEMORY[0x277CC9578]);
      }
    }

    else
    {
      v20 = v24;
      (*(v18 + 32))(v24, v5, v17);
    }

    sub_218720AB8(&unk_280EAF778, v21, type metadata accessor for PersistentOfflineFeedManifest);
    sub_219BDCA54();

    (*(v18 + 8))(v20, v17);
  }

  return sub_218710220(v28, &qword_280EE9C40, MEMORY[0x277CC9578]);
}

uint64_t sub_218B0E300(uint64_t a1)
{
  v3 = sub_219BDB954();
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x28223BE20](v3);
  v40 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BDB044();
  v43 = *(v5 - 8);
  v44 = v5;
  MEMORY[0x28223BE20](v5);
  v42 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DD0BC(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v37 - v8;
  v10 = *(v1 + 32);
  v45 = a1;
  v11 = *(*v10 + *MEMORY[0x277D841D0] + 16);
  v12 = (*(*v10 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v10 + v12));
  sub_218B0EEBC(v10 + v11);
  os_unfair_lock_unlock((v10 + v12));

  v13 = sub_219BDBD34();
  v14 = *(v13 - 8);
  v15 = *(v14 + 16);
  v15(v9, a1, v13);
  v16 = *(v14 + 56);
  v16(v9, 0, 1, v13);
  v17 = v41;
  sub_218B0D9C0(v9);
  v18 = type metadata accessor for OfflineFeedManifest(0);
  v15(v9, a1 + *(v18 + 20), v13);
  v19 = v17;
  v16(v9, 0, 1, v13);
  sub_218B0DEB4(v9);
  sub_219BDB084();
  swift_allocObject();
  sub_219BDB074();
  (*(v43 + 104))(v42, *MEMORY[0x277CC8778], v44);
  sub_219BDB054();
  sub_218720AB8(&qword_280ED0C18, 255, type metadata accessor for OfflineFeedManifest);
  v44 = a1;
  v20 = sub_219BDB064();
  v22 = v21;
  v23 = v40;
  if (v17[7])
  {
    swift_getObjectType();
    v24 = v17[2];
    v25 = v17[3];
    swift_unknownObjectRetain();
    sub_218711114(v24, v25);
    swift_unknownObjectRelease();
    sub_219BDBA14();
    (*(v38 + 8))(v23, v39);
    sub_2186C6190(v20, v22);
  }

  else
  {
    sub_218B0E9A4();
    v26 = swift_allocError();
    swift_willThrow();
    sub_2186C6190(v20, v22);

    if (qword_280EE6070 != -1)
    {
      swift_once();
    }

    v27 = sub_219BE5434();
    __swift_project_value_buffer(v27, qword_280F62790);

    v28 = v26;
    v29 = sub_219BE5414();
    v30 = sub_219BF61F4();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v46 = v33;
      *v31 = 136446466;
      *(v31 + 4) = sub_2186D1058(v19[2], v19[3], &v46);
      *(v31 + 12) = 2114;
      v34 = v26;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 14) = v35;
      *v32 = v35;
      _os_log_impl(&dword_2186C1000, v29, v30, "Failed to save offline manifest, name=%{public}s, error=%{public}@", v31, 0x16u);
      sub_218710220(v32, &qword_280E8D9F0, sub_2189666A0);
      MEMORY[0x21CECF960](v32, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x21CECF960](v33, -1, -1);
      MEMORY[0x21CECF960](v31, -1, -1);
    }

    else
    {
    }
  }

  return sub_218751310(v44, type metadata accessor for OfflineFeedManifest);
}

uint64_t sub_218B0E944()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_218B0E9A4()
{
  result = qword_27CC0E018;
  if (!qword_27CC0E018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E018);
  }

  return result;
}

uint64_t sub_218B0E9F8(uint64_t a1)
{
  value[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CC9578];
  sub_2186DD0BC(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = value - v4;
  v6 = sub_219BDBD34();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = value - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187100D4(a1, v5, &qword_280EE9C40, v2);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_218710220(v5, &qword_280EE9C40, MEMORY[0x277CC9578]);
    sub_219BDB8F4();
    v10 = sub_219BF54B4();

    v11 = sub_219BF54B4();
    v12 = removexattr((v10 + 32), (v11 + 32), 0);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    sub_219BDBA44();
    value[0] = v13;
    sub_219BDB8F4();
    v14 = sub_219BF54B4();

    v15 = sub_219BF54B4();
    v12 = setxattr((v14 + 32), (v15 + 32), value, 8uLL, 0, 0);
    (*(v7 + 8))(v9, v6);
  }

  return v12;
}

uint64_t __swift_deallocate_boxed_opaque_existential_0(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x21CECF960);
  }

  return result;
}

unint64_t sub_218B0ED00()
{
  result = qword_280EE9D50;
  if (!qword_280EE9D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE9D50);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation3URLV7NewsUI2E6Errors33_57F7D1A8DA59F9CA59F836A83730E315LLO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_218B0ED6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 24))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_218B0EDC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 3;
    }
  }

  return result;
}

void *sub_218B0EE20(void *result, int a2)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[2] = (a2 - 1);
  }

  return result;
}

unint64_t sub_218B0EE68()
{
  result = qword_27CC0E020;
  if (!qword_27CC0E020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E020);
  }

  return result;
}

uint64_t sub_218B0EED4(uint64_t a1, uint64_t a2)
{
  v66 = a1;
  v3 = sub_219BDBD34();
  v52 = *(v3 - 8);
  v53 = v3;
  MEMORY[0x28223BE20](v3);
  v51 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277D83D88];
  sub_218B0FEE4(0, &qword_27CC0E030, MEMORY[0x277D34240], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v43 = v40 - v7;
  sub_218B0FEE4(0, &qword_27CC0E038, MEMORY[0x277D2DFA0], v5);
  MEMORY[0x28223BE20](v8 - 8);
  v45 = v40 - v9;
  v49 = sub_219BDFC04();
  v59 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v40[0] = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_219BE0B04();
  v50 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v62 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_219BDB954();
  v41 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_219BDF464();
  v48 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v60 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BE0554();
  v46 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40[2] = a2;
  sub_219BF3174();
  sub_219BF31A4();
  sub_219BF31B4();
  sub_219BE0544();
  sub_218B0FEE4(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v65 = v18;
  v56 = sub_219BDCD44();
  v19 = *(v56 - 8);
  v20 = *(v19 + 80);
  v21 = (v20 + 32) & ~v20;
  v58 = *(v19 + 72);
  v54 = v20;
  v22 = swift_allocObject();
  v64 = xmmword_219C09BA0;
  *(v22 + 16) = xmmword_219C09BA0;
  v57 = *MEMORY[0x277CEAD18];
  v55 = *(v19 + 104);
  v55(v22 + v21);
  v40[1] = "bEmbedFailureTracker";
  sub_218B0FFB8(&qword_27CC0E040, MEMORY[0x277D2E5E0]);
  v44 = v17;
  v47 = v15;
  sub_219BDCCC4();

  sub_219BF3184();
  sub_219BDB804();
  (*(v41 + 8))(v13, v42);
  sub_219BDF454();
  v23 = swift_allocObject();
  *(v23 + 16) = v64;
  v24 = v57;
  v25 = v55;
  v26 = v56;
  (v55)(v23 + v21, v57, v56);
  sub_218B0FFB8(&qword_280EE87C0, MEMORY[0x277D2DAA8]);
  sub_219BDCCC4();

  sub_219BF3194();
  sub_219BE0AF4();
  v27 = swift_allocObject();
  *(v27 + 16) = v64;
  v25(v27 + v21, v24, v26);
  sub_218B0FFB8(&qword_27CC0E048, MEMORY[0x277D2EB18]);
  sub_219BDCCC4();

  v28 = v43;
  sub_219BF3164();
  v29 = sub_219BF3DF4();
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    sub_218B0FF48(v28, &qword_27CC0E030, MEMORY[0x277D34240]);
    v31 = v45;
    (*(v59 + 56))(v45, 1, 1, v49);
  }

  else
  {
    v32 = v45;
    sub_218B0F984(v45);
    v33 = v29;
    v31 = v32;
    (*(v30 + 8))(v28, v33);
    v34 = v49;
    if ((*(v59 + 48))(v32, 1, v49) != 1)
    {
      v35 = v59;
      v36 = v40[0];
      (*(v59 + 32))(v40[0], v31, v34);
      v37 = swift_allocObject();
      *(v37 + 16) = v64;
      (v55)(v37 + v21, v57, v56);
      sub_218B0FFB8(&qword_27CC0E058, MEMORY[0x277D2DFA0]);
      sub_219BDCCC4();

      (*(v35 + 8))(v36, v34);
      goto LABEL_6;
    }
  }

  sub_218B0FF48(v31, &qword_27CC0E038, MEMORY[0x277D2DFA0]);
LABEL_6:
  sub_219BE0734();
  v38 = v51;
  sub_219BDBD24();
  sub_218B0FFB8(&qword_27CC0E050, MEMORY[0x277D2E750]);
  sub_219BDCC34();
  (*(v52 + 8))(v38, v53);
  (*(v50 + 8))(v62, v63);
  (*(v48 + 8))(v60, v61);
  return (*(v46 + 8))(v44, v47);
}

uint64_t sub_218B0F984@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_219BDFC14();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BF3DF4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, v2, v8);
  v12 = (*(v9 + 88))(v11, v8);
  if (v12 == *MEMORY[0x277D34230])
  {
    (*(v9 + 96))(v11, v8);
    v13 = MEMORY[0x277D2DFD0];
LABEL_13:
    (*(v5 + 104))(v7, *v13, v4);
    sub_219BDFBF4();
    v14 = sub_219BDFC04();
    return (*(*(v14 - 8) + 56))(a1, 0, 1, v14);
  }

  if (v12 == *MEMORY[0x277D34210])
  {
    (*(v9 + 96))(v11, v8);
    v13 = MEMORY[0x277D2DFB0];
    goto LABEL_13;
  }

  if (v12 == *MEMORY[0x277D34218])
  {
    (*(v9 + 96))(v11, v8);
    v13 = MEMORY[0x277D2DFB8];
    goto LABEL_13;
  }

  if (v12 == *MEMORY[0x277D34208])
  {
    (*(v9 + 96))(v11, v8);
    v13 = MEMORY[0x277D2DFA8];
    goto LABEL_13;
  }

  if (v12 == *MEMORY[0x277D34220])
  {
    (*(v9 + 96))(v11, v8);
    v13 = MEMORY[0x277D2DFC0];
    goto LABEL_13;
  }

  if (v12 == *MEMORY[0x277D34228])
  {
    (*(v9 + 96))(v11, v8);
    v13 = MEMORY[0x277D2DFC8];
    goto LABEL_13;
  }

  v16 = *MEMORY[0x277D34238];
  v17 = v12;
  v18 = sub_219BDFC04();
  result = (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
  if (v17 != v16)
  {
    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

uint64_t sub_218B0FD38(uint64_t a1, uint64_t a2)
{
  v3 = sub_219BF31C4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  (*(v4 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v3);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  (*(v4 + 32))(v7 + v6, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  sub_219BDD154();
}

uint64_t sub_218B0FE74(uint64_t a1)
{
  v3 = *(sub_219BF31C4() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_218B0EED4(a1, v4);
}

void sub_218B0FEE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218B0FF48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_218B0FEE4(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218B0FFB8(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_218B10000()
{
  v1 = v0;
  v2 = type metadata accessor for FollowingLayoutModel();
  MEMORY[0x28223BE20](v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B10748(v1, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0uLL;
  switch(EnumCaseMultiPayload)
  {
    case 1:
    case 4:
    case 13:
      v8 = *(v4 + 3);
      v9 = v4 + 40;
      goto LABEL_11;
    case 2:
      sub_21874A314(0, qword_280ED1550, type metadata accessor for FollowingAudioModel);
      memcpy(v22, &v4[*(v15 + 48)], 0x1EAuLL);
      v16 = type metadata accessor for FollowingAudioModel;
      goto LABEL_16;
    case 3:
    case 6:
    case 7:
      memcpy(v22, v4 + 8, 0x1EAuLL);

      goto LABEL_17;
    case 5:
    case 18:
      v8 = *(v4 + 2);
      v9 = v4 + 32;
      goto LABEL_11;
    case 8:
    case 9:
    case 11:
    case 12:
    case 19:
      v21 = *(v4 + 24);
      v7 = *(v4 + 8);
      goto LABEL_3;
    case 10:

      sub_21874A384();
      v11 = *(v10 + 48);
      v12 = &v4[*(v10 + 64)];
      v13 = *(v12 + 1);
      v20 = *v12;
      v21 = v13;
      sub_218748D40();
      (*(*(v14 - 8) + 8))(&v4[v11], v14);
      return v20;
    case 14:
      v7 = *(v4 + 3);
      v21 = *(v4 + 4);
LABEL_3:
      v20 = v7;

      return v20;
    case 15:
      sub_21874A314(0, &qword_280EC85E0, type metadata accessor for FollowingMySportsModel);
      memcpy(v22, &v4[*(v18 + 48)], 0x1EAuLL);
      v16 = type metadata accessor for FollowingMySportsModel;
      goto LABEL_16;
    case 16:
      sub_21874A314(0, &qword_280EC5118, type metadata accessor for FollowingPuzzleHubModel);
      memcpy(v22, &v4[*(v19 + 48)], 0x1EAuLL);
      v16 = type metadata accessor for FollowingPuzzleHubModel;
LABEL_16:
      sub_218B10800(v4, v16);
      goto LABEL_17;
    case 17:
      v17 = *(v4 + 4);
      memcpy(v22, v4 + 64, 0x1EAuLL);

      goto LABEL_17;
    case 20:
      return result;
    default:
      v8 = *(v4 + 2);
      v9 = v4 + 24;
LABEL_11:
      memcpy(v22, v9, 0x1EAuLL);

LABEL_17:
      sub_218B107AC(v22);
      return v22[0];
  }
}

uint64_t sub_218B10324(uint64_t a1)
{
  v2 = sub_218749138(&qword_280ECEC18, type metadata accessor for FollowingLayoutModel);

  return MEMORY[0x2821D5688](a1, v2);
}

uint64_t sub_218B10390@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FollowingLayoutModel();
  MEMORY[0x28223BE20](v4);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_218B10748(v2, v6);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 4u:
    case 0xDu:
      v8 = *(v6 + 3);
      v9 = v6 + 40;
      goto LABEL_11;
    case 2u:
      sub_21874A314(0, qword_280ED1550, type metadata accessor for FollowingAudioModel);
      memcpy(v22, &v6[*(v16 + 48)], sizeof(v22));
      v11 = type metadata accessor for FollowingAudioModel;
      goto LABEL_14;
    case 3u:
    case 6u:
    case 7u:
      memcpy(v22, v6 + 8, sizeof(v22));

      goto LABEL_15;
    case 5u:
    case 0x12u:
      v8 = *(v6 + 2);
      v9 = v6 + 32;
      goto LABEL_11;
    case 8u:
    case 9u:
    case 0xBu:
    case 0xCu:
    case 0xEu:
    case 0x13u:
      sub_218B10800(v6, type metadata accessor for FollowingLayoutModel);
      goto LABEL_3;
    case 0xAu:

      sub_21874A384();
      v14 = *(v13 + 48);
      sub_218748D40();
      (*(*(v15 - 8) + 8))(&v6[v14], v15);
      goto LABEL_3;
    case 0xFu:
      sub_21874A314(0, &qword_280EC85E0, type metadata accessor for FollowingMySportsModel);
      memcpy(v22, &v6[*(v17 + 48)], sizeof(v22));
      v11 = type metadata accessor for FollowingMySportsModel;
      goto LABEL_14;
    case 0x10u:
      sub_21874A314(0, &qword_280EC5118, type metadata accessor for FollowingPuzzleHubModel);
      memcpy(v22, &v6[*(v10 + 48)], sizeof(v22));
      v11 = type metadata accessor for FollowingPuzzleHubModel;
LABEL_14:
      sub_218B10800(v6, v11);
      goto LABEL_15;
    case 0x11u:
      v12 = *(v6 + 4);
      memcpy(v22, v6 + 64, sizeof(v22));

      goto LABEL_15;
    case 0x14u:
LABEL_3:
      v7 = MEMORY[0x277D6DB18];
      goto LABEL_16;
    default:
      v8 = *(v6 + 2);
      v9 = v6 + 24;
LABEL_11:
      memcpy(v22, v9, sizeof(v22));

LABEL_15:
      memcpy(v23, v22, 0x1EAuLL);
      Width = CGRectGetWidth(*&v23[31]);
      sub_218B107AC(v23);
      *a1 = 0;
      *(a1 + 8) = -Width;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      v7 = MEMORY[0x277D6DB10];
LABEL_16:
      v19 = *v7;
      v20 = sub_219BE7684();
      return (*(*(v20 - 8) + 104))(a1, v19, v20);
  }
}

uint64_t sub_218B10748(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FollowingLayoutModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218B10800(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218B10860@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  sub_2186F687C();
  v5 = v4;
  v20 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v21 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B11100(0, &qword_280E8CDB0, MEMORY[0x277D844C8]);
  v8 = v7;
  v19 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - v9;
  v11 = type metadata accessor for EngagementTodayFeedGroup();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B11048();
  sub_219BF7B34();
  if (!v2)
  {
    v14 = v19;
    v15 = v20;
    sub_218B11164(&qword_280E922F8, sub_2186F687C);
    sub_219BF7734();
    (*(v14 + 8))(v10, v8);
    (*(v15 + 32))(v13, v21, v5);
    sub_218B1109C(v13, v18);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218B10B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6769666E6F63 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_219BF78F4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_218B10BA4(uint64_t a1)
{
  v2 = sub_218B11048();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218B10BE0(uint64_t a1)
{
  v2 = sub_218B11048();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218B10C34(void *a1)
{
  sub_218B11100(0, &qword_280E8C568, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B11048();
  sub_219BF7B44();
  sub_2186F687C();
  sub_218B11164(&unk_280E92300, sub_2186F687C);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_218B10DBC()
{
  sub_2186F687C();
  sub_219BEDD14();

  sub_219BEDD14();

  return 1;
}

uint64_t sub_218B10E78()
{
  sub_2186F687C();
  sub_219BEDD14();

  return v1;
}

uint64_t sub_218B10EC0(uint64_t a1)
{
  v2 = sub_218B11164(&qword_280EC21B8, type metadata accessor for EngagementTodayFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

unint64_t sub_218B11048()
{
  result = qword_280EC21D0;
  if (!qword_280EC21D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC21D0);
  }

  return result;
}

uint64_t sub_218B1109C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EngagementTodayFeedGroup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218B11100(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218B11048();
    v7 = a3(a1, &type metadata for EngagementTodayFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218B11164(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_218B111C0()
{
  result = qword_27CC0E060;
  if (!qword_27CC0E060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E060);
  }

  return result;
}

unint64_t sub_218B11218()
{
  result = qword_280EC21C0;
  if (!qword_280EC21C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC21C0);
  }

  return result;
}

unint64_t sub_218B11270()
{
  result = qword_280EC21C8;
  if (!qword_280EC21C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC21C8);
  }

  return result;
}

id sub_218B112D4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v14 = *(v1 + 24);
  sub_218718690(v1 + 48, a1 + 24);
  v4 = *(v1 + 120);
  v12 = *(v1 + 104);
  sub_218718690(v1 + 128, a1 + 88);
  sub_218718690(v1 + 168, a1 + 128);
  sub_218718690(v1 + 208, a1 + 168);
  sub_218718690(v1 + 248, a1 + 208);
  v5 = *(v1 + 288);
  v6 = *(v1 + 296);
  v7 = *(v1 + 304);
  v11 = *(v1 + 312);
  v13 = *(v1 + 88);
  sub_218718690(v1 + 328, a1 + 304);
  sub_218718690(v1 + 368, a1 + 344);
  v10 = *(v1 + 408);
  *a1 = v3;
  *(a1 + 8) = v14;
  *(a1 + 64) = v12;
  *(a1 + 80) = v4;
  *(a1 + 248) = v5;
  *(a1 + 256) = v6;
  *(a1 + 264) = v7;
  *(a1 + 272) = v11;
  *(a1 + 288) = v13;
  *(a1 + 384) = v10;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v8 = v6;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  return v10;
}

uint64_t sub_218B11438(uint64_t a1)
{
  v3 = *(v1 + 288);
  v4 = *(v1 + 40);
  v7 = *(v1 + 88);
  sub_218718690(v1 + 368, &v12);
  v9[0] = a1;
  v9[1] = v3;
  v10 = v7;
  v11 = v4;
  sub_218B130BC(v9, v8);
  sub_218AEEF84(0);
  swift_allocObject();
  sub_218B13118();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  v5 = sub_219BE6E64();
  sub_218B1316C(v9);
  return v5;
}

uint64_t sub_218B11514()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 288);
  v5 = *(v0 + 24);
  sub_218718690(v0 + 368, &v10);
  v7 = v5;
  v8 = v1;
  v9 = v2;
  sub_218B12CE8(&v7, v6);
  sub_218AEEF84(0);
  swift_allocObject();
  sub_218B12D44();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v3 = sub_219BE6E64();
  sub_218B12D98(&v7);
  return v3;
}

uint64_t sub_218B115D8(uint64_t a1, char a2)
{
  v5 = type metadata accessor for FollowingManageFamilySharingModifier();
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  v11 = [*(v2 + 120) appConfiguration];
  if ([v11 respondsToSelector_])
  {
    v12 = [v11 paidBundleConfig];
    swift_unknownObjectRelease();
    v13 = [v12 isFamilySharingSetupEnabled];
  }

  else
  {
    swift_unknownObjectRelease();
    v13 = 0;
  }

  sub_218B12DEC(a1, v10, sub_218A2D07C);
  sub_218718690(v2 + 368, &v10[v5[7]]);
  v10[v5[5]] = a2 & 1;
  v10[v5[6]] = v13;
  sub_218B12DEC(v10, v8, type metadata accessor for FollowingManageFamilySharingModifier);
  sub_218AEEF84(0);
  swift_allocObject();
  sub_2186D569C(&qword_27CC0E070, type metadata accessor for FollowingManageFamilySharingModifier);
  v14 = sub_219BE6E64();
  sub_218B12E54(v10, type metadata accessor for FollowingManageFamilySharingModifier);
  return v14;
}

uint64_t sub_218B117E4()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 128);
  __swift_destroy_boxed_opaque_existential_1(v0 + 168);
  __swift_destroy_boxed_opaque_existential_1(v0 + 208);
  __swift_destroy_boxed_opaque_existential_1(v0 + 248);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 328);
  __swift_destroy_boxed_opaque_existential_1(v0 + 368);

  return v0;
}

uint64_t sub_218B1188C()
{
  sub_218B117E4();

  return swift_deallocClassInstance();
}

uint64_t sub_218B11908()
{
  v1 = *v0;
  sub_218B112D4(v7);
  v4 = *(v1 + 24);
  v5 = *(v1 + 312);
  sub_218718690(v1 + 368, v9);
  v8 = v4;
  *&v9[40] = v5;
  sub_218A2D7B4(v7, v6);
  sub_218AEEF84(0);
  swift_allocObject();
  sub_218A2DB00();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v2 = sub_219BE6E64();
  sub_218B13350(v7);
  return v2;
}

uint64_t sub_218B119D8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v9 = *(*v3 + 88);
  sub_218718690(*v3 + 368, v12);
  v11 = v9;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;
  sub_218B131C0(&v11, v10);
  sub_218AEEF84(0);
  swift_allocObject();
  swift_unknownObjectRetain();
  sub_218B1321C(a1, a2, a3);
  sub_218B132A8();
  v7 = sub_219BE6E64();
  sub_218B132FC(&v11);
  return v7;
}

uint64_t sub_218B11AA4(uint64_t a1, unint64_t a2)
{
  v3 = *v2;
  v4 = sub_218E967B4(a2);
  v7 = *(v3 + 24);
  sub_218B112D4(&v11);
  sub_218718690(v3 + 368, &v12);
  v10 = v7;
  v9 = v4;
  sub_218B12AE0(&v9, v8);
  sub_218AEEF84(0);
  swift_allocObject();
  sub_218B12B3C();
  swift_unknownObjectRetain();
  v5 = sub_219BE6E64();
  sub_218B12B90(&v9);
  return v5;
}

uint64_t sub_218B11C30(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, uint64_t *), void (*a5)(void), uint64_t a6, void (*a7)(uint64_t *))
{
  sub_218718690(*v7 + 368, &v16);
  v15 = a1;
  a4(&v15, &v14);
  sub_218AEEF84(0);
  swift_allocObject();
  a5();

  v12 = sub_219BE6E64();
  a7(&v15);
  return v12;
}

uint64_t sub_218B11CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FollowingSubscriptionsMoveModifier();
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v17 - v11;
  v13 = *(v10 + 20);
  v14 = sub_219BDC104();
  (*(*(v14 - 8) + 16))(&v12[v13], a2, v14);
  *v12 = a1;
  *&v12[*(v6 + 24)] = a3;
  sub_218B12DEC(v12, v9, type metadata accessor for FollowingSubscriptionsMoveModifier);
  sub_218AEEF84(0);
  swift_allocObject();
  sub_2186D569C(&qword_27CC0E0A0, type metadata accessor for FollowingSubscriptionsMoveModifier);

  v15 = sub_219BE6E64();
  sub_218B12E54(v12, type metadata accessor for FollowingSubscriptionsMoveModifier);
  return v15;
}

uint64_t sub_218B11EC8()
{
  sub_218B112D4(v3);
  sub_218B12BE4(v3, &v2);
  sub_218AEEF84(0);
  swift_allocObject();
  sub_218B12C40();
  v0 = sub_219BE6E64();
  sub_218B12C94(v3);
  return v0;
}

uint64_t sub_218B11F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for FollowingShortcutsMoveModifier();
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  sub_218718690(*v3 + 48, &v15 - v11);
  sub_218B12DEC(a1, &v12[v7[5]], type metadata accessor for FollowingModel);
  *&v12[v7[6]] = a2;
  *&v12[v7[7]] = a3;
  sub_218B12DEC(v12, v10, type metadata accessor for FollowingShortcutsMoveModifier);
  sub_218AEEF84(0);
  swift_allocObject();
  sub_2186D569C(&qword_27CC0E088, type metadata accessor for FollowingShortcutsMoveModifier);

  v13 = sub_219BE6E64();
  sub_218B12E54(v12, type metadata accessor for FollowingShortcutsMoveModifier);
  return v13;
}

uint64_t sub_218B120EC()
{
  v1 = *v0;
  v2 = sub_218845E04();
  v5 = *(v1 + 24);
  sub_218B112D4(&v9);
  sub_218718690(v1 + 368, &v10);
  v8 = v5;
  v7 = v2;
  sub_218B12AE0(&v7, v6);
  sub_218AEEF84(0);
  swift_allocObject();
  sub_218B12B3C();
  swift_unknownObjectRetain();
  v3 = sub_219BE6E64();
  sub_218B12B90(&v7);
  return v3;
}

uint64_t sub_218B121C0(uint64_t a1)
{
  v5 = *(*v1 + 24);
  sub_218718690(*v1 + 368, &v9);
  v7 = a1;
  v8 = v5;
  sub_218B12A30(&v7, v6);
  sub_218AEEF84(0);
  swift_allocObject();
  sub_218B06380();
  swift_unknownObjectRetain();

  v3 = sub_219BE6E64();
  sub_218B12A8C(&v7);
  return v3;
}

uint64_t sub_218B1227C(void *a1)
{
  v6 = *(*v1 + 24);
  sub_218718690(*v1 + 368, &v10);
  v8 = a1;
  v9 = v6;
  sub_218B1292C(&v8, v7);
  sub_218AEEF84(0);
  swift_allocObject();
  sub_218B12988();
  swift_unknownObjectRetain();
  v3 = a1;
  v4 = sub_219BE6E64();
  sub_218B129DC(&v8);
  return v4;
}

uint64_t sub_218B123B4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_218AEEF84(0);
  swift_allocObject();
  a4();
  return sub_219BE6E64();
}

uint64_t sub_218B12420(char a1)
{
  sub_218718690(*v1 + 368, &v7);
  v6[0] = a1;
  sub_218B1272C(v6, &v5);
  sub_218AEEF84(0);
  swift_allocObject();
  sub_218A7BCB8();
  v3 = sub_219BE6E64();
  sub_218B12788(v6);
  return v3;
}

uint64_t sub_218B124D0()
{
  sub_218AEEF84(0);
  swift_allocObject();
  sub_218B126D8();

  return sub_219BE6E64();
}

uint64_t sub_218B12540()
{
  v1 = *v0;
  sub_218B112D4(v5);
  sub_218718690(v1 + 368, &v6);
  sub_218B125D4(v5, &v4);
  sub_218AEEF84(0);
  swift_allocObject();
  sub_218B12630();
  v2 = sub_219BE6E64();
  sub_218B12684(v5);
  return v2;
}

unint64_t sub_218B12630()
{
  result = qword_280E9DA48;
  if (!qword_280E9DA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9DA48);
  }

  return result;
}

unint64_t sub_218B126D8()
{
  result = qword_280EB8C10;
  if (!qword_280EB8C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB8C10);
  }

  return result;
}

unint64_t sub_218B127DC()
{
  result = qword_280E9D970;
  if (!qword_280E9D970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9D970);
  }

  return result;
}

unint64_t sub_218B12830()
{
  result = qword_27CC0E078;
  if (!qword_27CC0E078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E078);
  }

  return result;
}

unint64_t sub_218B12884()
{
  result = qword_280E95AE0;
  if (!qword_280E95AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E95AE0);
  }

  return result;
}

unint64_t sub_218B128D8()
{
  result = qword_280EA36C8;
  if (!qword_280EA36C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA36C8);
  }

  return result;
}

unint64_t sub_218B12988()
{
  result = qword_27CC0E080;
  if (!qword_27CC0E080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E080);
  }

  return result;
}

unint64_t sub_218B12B3C()
{
  result = qword_280E98480;
  if (!qword_280E98480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E98480);
  }

  return result;
}

unint64_t sub_218B12C40()
{
  result = qword_27CC0E090;
  if (!qword_27CC0E090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E090);
  }

  return result;
}

unint64_t sub_218B12D44()
{
  result = qword_280E9D8B8[0];
  if (!qword_280E9D8B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E9D8B8);
  }

  return result;
}

uint64_t sub_218B12DEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218B12E54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_218B12F10()
{
  result = qword_27CC0E0A8;
  if (!qword_27CC0E0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E0A8);
  }

  return result;
}

unint64_t sub_218B13014()
{
  result = qword_27CC0E0B0;
  if (!qword_27CC0E0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E0B0);
  }

  return result;
}

unint64_t sub_218B13118()
{
  result = qword_280E97450;
  if (!qword_280E97450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E97450);
  }

  return result;
}

uint64_t sub_218B1321C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 61;
  if ((a3 >> 61) > 2)
  {
    if ((v3 - 3) >= 2)
    {
      return result;
    }
  }

  else if (v3)
  {
    if (v3 != 1)
    {
      if (v3 != 2)
      {
        return result;
      }
    }
  }
}

unint64_t sub_218B132A8()
{
  result = qword_27CC0E0C0;
  if (!qword_27CC0E0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E0C0);
  }

  return result;
}

uint64_t type metadata accessor for SportsEventInfoTagFeedGroupConfigData()
{
  result = qword_280E98BD8;
  if (!qword_280E98BD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218B13418@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BF1934();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v18 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B13948(0, &qword_280E8C7C0, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B138F4();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v16;
    v11 = v17;
    v19 = 1;
    sub_218933D7C(&qword_280E90808);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    *v11 = 21;
    v13 = type metadata accessor for SportsEventInfoTagFeedGroupConfigData();
    (*(v12 + 32))(&v11[*(v13 + 20)], v18, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218B13680(void *a1)
{
  v3 = v1;
  sub_218B13948(0, &qword_27CC0E0C8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B138F4();
  sub_219BF7B44();
  v11[15] = *v3;
  v11[14] = 0;
  sub_218933D28();
  sub_219BF7834();
  if (!v2)
  {
    type metadata accessor for SportsEventInfoTagFeedGroupConfigData();
    v11[13] = 1;
    sub_219BF1934();
    sub_218933D7C(&qword_280E90810);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218B1384C(uint64_t a1)
{
  v2 = sub_218B138F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218B13888(uint64_t a1)
{
  v2 = sub_218B138F4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_218B138F4()
{
  result = qword_280E98C10[0];
  if (!qword_280E98C10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E98C10);
  }

  return result;
}

void sub_218B13948(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218B138F4();
    v7 = a3(a1, &type metadata for SportsEventInfoTagFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218B139C0()
{
  result = qword_27CC0E0D0;
  if (!qword_27CC0E0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E0D0);
  }

  return result;
}

unint64_t sub_218B13A18()
{
  result = qword_280E98C00;
  if (!qword_280E98C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E98C00);
  }

  return result;
}

unint64_t sub_218B13A70()
{
  result = qword_280E98C08;
  if (!qword_280E98C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E98C08);
  }

  return result;
}

uint64_t sub_218B13AC4()
{
  sub_219BEEFF4();
  sub_219BEEFE4();
  sub_218AF3D74(0);
  sub_219BEB2B4();
  if (v3)
  {
    sub_219BEDC74();
    swift_dynamicCast();
  }

  else
  {
    sub_218744B70(v2, sub_21880702C);
  }

  type metadata accessor for SearchFeedServiceConfig();
  sub_2186D7658(&qword_280EC37A0, type metadata accessor for SearchFeedServiceConfig);
  v0 = sub_219BEEFD4();

  return v0;
}

void *sub_218B13BE8(uint64_t a1)
{
  v96 = a1;
  v132 = sub_219BDE074();
  v125 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v131 = &v86 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_219BDEE04();
  v108 = *(v130 - 8);
  v2 = MEMORY[0x28223BE20](v130);
  v129 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v128 = &v86 - v4;
  v5 = sub_219BDE0A4();
  v6 = *(v5 - 8);
  v133 = v5;
  v134 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_219BEF974();
  v126 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v116 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SearchLayoutModel();
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v115 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v114 = &v86 - v13;
  sub_2189BE8AC();
  v15 = v14;
  v122 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B14CB8();
  v102 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_219BDE0E4();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v94 = (&v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v22 - 8);
  v95 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_219BF0F34();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v86 = &v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_219BDD424();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v91 = &v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B14D4C(0);
  v27 = v26;
  v121 = *(v26 - 8);
  v28 = MEMORY[0x28223BE20](v26);
  v101 = &v86 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v109 = &v86 - v30;
  sub_218B14DC0(0);
  v32 = v31;
  v103 = v31;
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v35 = &v86 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B14EA0();
  v37 = v36 - 8;
  MEMORY[0x28223BE20](v36);
  v39 = &v86 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = MEMORY[0x277D84F90];
  (*(v33 + 16))(v35, v127, v32);
  v40 = v27;
  sub_2186D7658(&qword_27CC0E100, sub_218B14DC0);
  sub_219BF56A4();
  v41 = *(v37 + 44);
  v42 = v39;
  v43 = v109;
  v44 = sub_2186D7658(&qword_27CC0E0F8, sub_218B14DC0);
  sub_219BF5E84();
  if (*(v42 + v41) == v135[0])
  {
LABEL_2:
    sub_218744B70(v42, sub_218B14EA0);
    v134 = v136;
    sub_2186EAB88();
    sub_219BF07B4();
    v45 = v86;
    sub_219BF07D4();
    v46 = sub_219BF0F14();
    (*(v87 + 8))(v45, v88);
    v47 = [v46 identifier];
    swift_unknownObjectRelease();
    sub_219BF5414();

    sub_219BF07B4();
    v48 = sub_219BDB954();
    v133 = *(*(v48 - 8) + 56);
    v49 = v95;
    v133(v95, 1, 1, v48);
    v50 = v91;
    sub_219BDD504();
    (*(v89 + 104))(v50, *MEMORY[0x277D2F930], v90);
    v51 = v94;
    *v94 = v134;
    (*(v92 + 104))(v51, *MEMORY[0x277D2FE60], v93);
    v52 = sub_219BDE944();
    swift_allocObject();
    v53 = sub_219BDE934();
    v135[3] = v52;
    v135[4] = MEMORY[0x277D30218];
    v135[0] = v53;
    v133(v49, 1, 1, v48);
    sub_219BDEA94();
    swift_allocObject();
    return sub_219BDEA54();
  }

  else
  {
    v100 = (v121 + 16);
    v113 = (v122 + 2);
    v112 = (v126 + 32);
    v111 = (v126 + 8);
    v127 = v108 + 16;
    LODWORD(v126) = *MEMORY[0x277D2FE18];
    v125 += 13;
    v124 = (v108 + 8);
    v123 = v134 + 32;
    v110 = (v122 + 1);
    v97 = (v121 + 8);
    v107 = v15;
    v106 = v17;
    v105 = v20;
    v104 = v40;
    v99 = v42;
    v98 = v41;
    v120 = v44;
    while (1)
    {
      v121 = sub_219BF5EC4();
      v122 = *v100;
      (v122)(v43);
      (v121)(v135, 0);
      sub_219BF5E94();
      (v122)(v101, v43, v40);
      sub_2186D7658(&qword_27CC0E108, sub_218B14D4C);
      sub_219BF56A4();
      v55 = *(v102 + 36);
      v56 = sub_2186D7658(&qword_27CC0E0E0, sub_218B14D4C);
      sub_219BF5E84();
      v57 = *&v20[v55];
      v122 = MEMORY[0x277D84F90];
      if (v57 != v135[0])
      {
        break;
      }

LABEL_4:
      sub_218744B70(v20, sub_218B14CB8);
      (*v97)(v43, v40);
      sub_2191ED5C4(v122);
      v42 = v99;
      sub_219BF5E84();
      if (*(v42 + v98) == v135[0])
      {
        goto LABEL_2;
      }
    }

    v122 = MEMORY[0x277D84F90];
    v119 = v55;
    v118 = v56;
    while (1)
    {
      v58 = sub_219BF5EC4();
      (*v113)(v17);
      v58(v135, 0);
      sub_219BF5E94();
      v59 = v114;
      sub_219BE75E4();
      v60 = v115;
      sub_218B14F34(v59, v115);
      v61 = v116;
      v62 = v60;
      v63 = v117;
      (*v112)(v116, v62, v117);
      v64 = sub_219BEF8D4();
      (*v111)(v61, v63);
      sub_218744B70(v59, type metadata accessor for SearchLayoutModel);
      v65 = *(v64 + 16);
      if (v65)
      {
        v135[0] = MEMORY[0x277D84F90];
        sub_218C345E8(0, v65, 0);
        v66 = v135[0];
        v67 = (*(v108 + 80) + 32) & ~*(v108 + 80);
        v121 = v64;
        v68 = v64 + v67;
        v69 = *(v108 + 72);
        v70 = *(v108 + 16);
        do
        {
          v71 = v128;
          v72 = v130;
          v70(v128, v68, v130);
          v70(v129, v71, v72);
          v73 = v131;
          sub_219BDD524();
          (*v125)(v73, v126, v132);
          sub_219BDE084();
          (*v124)(v71, v72);
          v135[0] = v66;
          v75 = *(v66 + 16);
          v74 = *(v66 + 24);
          if (v75 >= v74 >> 1)
          {
            sub_218C345E8(v74 > 1, v75 + 1, 1);
            v66 = v135[0];
          }

          *(v66 + 16) = v75 + 1;
          (*(v134 + 32))(v66 + ((*(v134 + 80) + 32) & ~*(v134 + 80)) + *(v134 + 72) * v75, v8, v133);
          v68 += v69;
          --v65;
        }

        while (v65);
        v17 = v106;
        v15 = v107;
        (*v110)(v106, v107);

        v20 = v105;
        v40 = v104;
        v43 = v109;
      }

      else
      {

        (*v110)(v17, v15);
        v66 = MEMORY[0x277D84F90];
      }

      v76 = *(v66 + 16);
      result = v122;
      v77 = v122[2];
      v78 = v77 + v76;
      if (__OFADD__(v77, v76))
      {
        break;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v79 = v122;
      if (!result || v78 > v122[3] >> 1)
      {
        if (v77 <= v78)
        {
          v80 = v77 + v76;
        }

        else
        {
          v80 = v77;
        }

        result = sub_2191F6DF0(result, v80, 1, v122);
        v79 = result;
      }

      v81 = v119;
      v82 = *(v66 + 16);
      v122 = v79;
      if (v82)
      {
        if ((v79[3] >> 1) - v79[2] < v76)
        {
          goto LABEL_30;
        }

        swift_arrayInitWithCopy();

        if (v76)
        {
          v83 = v122[2];
          v84 = __OFADD__(v83, v76);
          v85 = v83 + v76;
          if (v84)
          {
            goto LABEL_31;
          }

          v122[2] = v85;
        }
      }

      else
      {

        if (v76)
        {
          goto LABEL_29;
        }
      }

      sub_219BF5E84();
      if (*&v20[v81] == v135[0])
      {
        goto LABEL_4;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  return result;
}

void sub_218B14CB8()
{
  if (!qword_27CC0E0D8)
  {
    sub_218B14D4C(255);
    sub_2186D7658(&qword_27CC0E0E0, sub_218B14D4C);
    v0 = sub_219BF7494();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0E0D8);
    }
  }
}

unint64_t sub_218B14D6C()
{
  result = qword_280EAEF90[0];
  if (!qword_280EAEF90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EAEF90);
  }

  return result;
}

void sub_218B14DE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for SearchLayoutSectionDescriptor;
    v8[1] = type metadata accessor for SearchLayoutModel();
    v8[2] = sub_218B14D6C();
    v8[3] = sub_2186D7658(&qword_280ED5450, type metadata accessor for SearchLayoutModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218B14EA0()
{
  if (!qword_27CC0E0F0)
  {
    sub_218B14DC0(255);
    sub_2186D7658(&qword_27CC0E0F8, sub_218B14DC0);
    v0 = sub_219BF7494();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0E0F0);
    }
  }
}

uint64_t sub_218B14F34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchLayoutModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218B14F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v99 = a6;
  v98 = a5;
  v97 = a4;
  v96 = a3;
  v95 = a2;
  v94 = a1;
  v135 = sub_219BDE074();
  v128 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v134 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_219BDEE04();
  v112 = *(v133 - 8);
  v7 = MEMORY[0x28223BE20](v133);
  v132 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v131 = &v87 - v9;
  v10 = sub_219BDE0A4();
  v11 = *(v10 - 8);
  v136 = v10;
  v137 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_219BEF974();
  v129 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v120 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SearchLayoutModel();
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v119 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v118 = &v87 - v18;
  sub_2189BE8AC();
  v20 = v19;
  v125 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B14CB8();
  v104 = v23;
  MEMORY[0x28223BE20](v23);
  v25 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_219BDE0E4();
  v89 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v92 = (&v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v27 - 8);
  v93 = &v87 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_219BDD424();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v90 = &v87 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B14D4C(0);
  v31 = v30;
  v124 = *(v30 - 8);
  v32 = MEMORY[0x28223BE20](v30);
  v103 = &v87 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v35 = &v87 - v34;
  sub_218B14DC0(0);
  v37 = v36;
  v107 = v36;
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v40 = &v87 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B14EA0();
  v42 = v41 - 8;
  MEMORY[0x28223BE20](v41);
  v105 = &v87 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = MEMORY[0x277D84F90];
  (*(v38 + 16))(v40, v130, v37);
  v130 = sub_218B14DC0;
  sub_2186D7658(&qword_27CC0E100, sub_218B14DC0);
  v44 = v105;
  sub_219BF56A4();
  v45 = *(v42 + 44);
  v46 = v44;
  v47 = sub_2186D7658(&qword_27CC0E0F8, v130);
  sub_219BF5E84();
  if (*(v46 + v45) == v138[0])
  {
LABEL_2:
    sub_218744B70(v46, sub_218B14EA0);
    v48 = v139;
    v49 = sub_219BDB954();
    v50 = *(*(v49 - 8) + 56);
    v51 = v93;
    v50(v93, 1, 1, v49);

    v52 = v90;
    sub_219BDD504();
    (*(v87 + 104))(v52, *MEMORY[0x277D2F930], v88);
    v53 = v92;
    *v92 = v48;
    (*(v89 + 104))(v53, *MEMORY[0x277D2FE60], v91);
    v54 = sub_219BDE944();
    swift_allocObject();
    v55 = sub_219BDE934();
    v138[3] = v54;
    v138[4] = MEMORY[0x277D30218];
    v138[0] = v55;
    v50(v51, 1, 1, v49);
    sub_219BDEA94();
    swift_allocObject();
    return sub_219BDEA54();
  }

  else
  {
    v102 = (v124 + 16);
    v117 = (v125 + 16);
    v116 = (v129 + 32);
    v115 = (v129 + 8);
    v130 = (v112 + 16);
    LODWORD(v129) = *MEMORY[0x277D2FE18];
    v128 += 13;
    v127 = (v112 + 8);
    v126 = v137 + 32;
    v114 = (v125 + 8);
    v100 = (v124 + 8);
    v111 = v20;
    v110 = v22;
    v109 = v25;
    v108 = v31;
    v113 = v35;
    v101 = v45;
    v106 = v47;
    while (1)
    {
      v125 = sub_219BF5EC4();
      v57 = *v102;
      (*v102)(v35);
      (v125)(v138, 0);
      sub_219BF5E94();
      (v57)(v103, v35, v31);
      sub_2186D7658(&qword_27CC0E108, sub_218B14D4C);
      sub_219BF56A4();
      v58 = *(v104 + 36);
      v59 = sub_2186D7658(&qword_27CC0E0E0, sub_218B14D4C);
      sub_219BF5E84();
      v60 = MEMORY[0x277D84F90];
      if (*&v25[v58] != v138[0])
      {
        break;
      }

LABEL_4:
      sub_218744B70(v25, sub_218B14CB8);
      (*v100)(v35, v31);
      sub_2191ED5C4(v60);
      v46 = v105;
      sub_219BF5E84();
      if (*(v46 + v101) == v138[0])
      {
        goto LABEL_2;
      }
    }

    v123 = v58;
    v122 = v59;
    while (1)
    {
      v125 = v60;
      v61 = sub_219BF5EC4();
      (*v117)(v22);
      v61(v138, 0);
      sub_219BF5E94();
      v62 = v118;
      sub_219BE75E4();
      v63 = v119;
      sub_218B14F34(v62, v119);
      v64 = v120;
      v65 = v63;
      v66 = v121;
      (*v116)(v120, v65, v121);
      v67 = sub_219BEF8D4();
      (*v115)(v64, v66);
      sub_218744B70(v62, type metadata accessor for SearchLayoutModel);
      v68 = *(v67 + 16);
      if (v68)
      {
        v138[0] = MEMORY[0x277D84F90];
        sub_218C345E8(0, v68, 0);
        v69 = v138[0];
        v70 = (*(v112 + 80) + 32) & ~*(v112 + 80);
        v124 = v67;
        v71 = v67 + v70;
        v72 = *(v112 + 72);
        v73 = *(v112 + 16);
        do
        {
          v74 = v131;
          v75 = v133;
          v73(v131, v71, v133);
          v73(v132, v74, v75);
          v76 = v134;
          sub_219BDD524();
          (*v128)(v76, v129, v135);
          sub_219BDE084();
          (*v127)(v74, v75);
          v138[0] = v69;
          v78 = *(v69 + 16);
          v77 = *(v69 + 24);
          if (v78 >= v77 >> 1)
          {
            sub_218C345E8(v77 > 1, v78 + 1, 1);
            v69 = v138[0];
          }

          *(v69 + 16) = v78 + 1;
          (*(v137 + 32))(v69 + ((*(v137 + 80) + 32) & ~*(v137 + 80)) + *(v137 + 72) * v78, v13, v136);
          v71 += v72;
          --v68;
        }

        while (v68);
        v22 = v110;
        v20 = v111;
        (*v114)(v110, v111);

        v25 = v109;
        v31 = v108;
      }

      else
      {

        result = (*v114)(v22, v20);
        v69 = MEMORY[0x277D84F90];
      }

      v79 = *(v69 + 16);
      v60 = v125;
      v80 = *(v125 + 16);
      v81 = v80 + v79;
      if (__OFADD__(v80, v79))
      {
        break;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v81 > v60[3] >> 1)
      {
        if (v80 <= v81)
        {
          v82 = v80 + v79;
        }

        else
        {
          v82 = v80;
        }

        result = sub_2191F6DF0(result, v82, 1, v60);
        v60 = result;
      }

      v35 = v113;
      v83 = v123;
      if (*(v69 + 16))
      {
        if ((v60[3] >> 1) - v60[2] < v79)
        {
          goto LABEL_30;
        }

        swift_arrayInitWithCopy();

        if (v79)
        {
          v84 = v60[2];
          v85 = __OFADD__(v84, v79);
          v86 = v84 + v79;
          if (v85)
          {
            goto LABEL_31;
          }

          v60[2] = v86;
        }
      }

      else
      {

        if (v79)
        {
          goto LABEL_29;
        }
      }

      sub_219BF5E84();
      if (*&v25[v83] == v138[0])
      {
        goto LABEL_4;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  return result;
}

void *sub_218B15F58()
{
  v0 = sub_219BDDBF4();
  MEMORY[0x28223BE20](v0 - 8);
  v117 = &v77 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_219BDDEE4();
  v119 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v115 = &v77 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_219BDD374();
  v90 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v113 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDDF04();
  v5 = *(v4 - 8);
  v120 = v4;
  v121 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_219BEF974();
  v118 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v99 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SearchLayoutModel();
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v98 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v97 = &v77 - v12;
  sub_2189BE8AC();
  v14 = v13;
  v106 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B14CB8();
  v86 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_219BDDF14();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v80 = (&v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218B14D4C(0);
  v91 = v21;
  v104 = *(v21 - 8);
  v22 = MEMORY[0x28223BE20](v21);
  v85 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v77 - v24;
  sub_218B14DC0(0);
  v27 = v26;
  v87 = v26;
  v28 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v30 = &v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B14EA0();
  v32 = v31 - 8;
  MEMORY[0x28223BE20](v31);
  v34 = &v77 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = MEMORY[0x277D84F90];
  (*(v28 + 16))(v30, v122, v27);
  v35 = v25;
  sub_2186D7658(&qword_27CC0E100, sub_218B14DC0);
  sub_219BF56A4();
  v36 = *(v32 + 44);
  v37 = v91;
  v103 = sub_2186D7658(&qword_27CC0E0F8, sub_218B14DC0);
  sub_219BF5E84();
  if (*&v34[v36] == v123)
  {
LABEL_2:
    sub_218744B70(v34, sub_218B14EA0);
    v38 = v80;
    *v80 = v124;
    (*(v78 + 104))(v38, *MEMORY[0x277D2FDE8], v79);
    sub_219BDE904();
    swift_allocObject();
    return sub_219BDE8F4();
  }

  else
  {
    v84 = (v104 + 16);
    v96 = (v106 + 2);
    v95 = (v118 + 32);
    v94 = (v118 + 8);
    v111 = v90 + 16;
    v110 = *MEMORY[0x277D2FDD8];
    v108 = (v90 + 8);
    v109 = (v119 + 104);
    v107 = v121 + 32;
    v93 = (v106 + 1);
    v81 = (v104 + 8);
    v112 = v7;
    v89 = v14;
    v105 = v16;
    v88 = v19;
    v92 = v35;
    v83 = v34;
    v82 = v36;
    while (1)
    {
      v122 = sub_219BF5EC4();
      v40 = *v84;
      (*v84)(v35);
      v122(&v123, 0);
      sub_219BF5E94();
      (v40)(v85, v35, v37);
      sub_2186D7658(&qword_27CC0E108, sub_218B14D4C);
      sub_219BF56A4();
      v41 = *(v86 + 36);
      v42 = sub_2186D7658(&qword_27CC0E0E0, sub_218B14D4C);
      sub_219BF5E84();
      v43 = *&v19[v41];
      v106 = MEMORY[0x277D84F90];
      if (v43 != v123)
      {
        break;
      }

LABEL_4:
      sub_218744B70(v19, sub_218B14CB8);
      (*v81)(v35, v37);
      sub_2191ED60C(v106);
      v34 = v83;
      sub_219BF5E84();
      if (*&v34[v82] == v123)
      {
        goto LABEL_2;
      }
    }

    v106 = MEMORY[0x277D84F90];
    v102 = v41;
    v101 = v42;
    while (1)
    {
      v44 = sub_219BF5EC4();
      (*v96)(v16);
      v44(&v123, 0);
      sub_219BF5E94();
      v45 = v97;
      sub_219BE75E4();
      v46 = v98;
      sub_218B14F34(v45, v98);
      v47 = v99;
      v48 = v46;
      v49 = v100;
      (*v95)(v99, v48, v100);
      v50 = sub_219BEF8C4();
      (*v94)(v47, v49);
      sub_218744B70(v45, type metadata accessor for SearchLayoutModel);
      v51 = *(v50 + 16);
      if (v51)
      {
        v123 = MEMORY[0x277D84F90];
        sub_218C34638(0, v51, 0);
        v52 = v123;
        v53 = (*(v90 + 80) + 32) & ~*(v90 + 80);
        v104 = v50;
        v54 = v50 + v53;
        v55 = *(v90 + 72);
        v118 = *(v90 + 16);
        v119 = v55;
        do
        {
          v56 = v113;
          v57 = v114;
          (v118)(v113, v54, v114);
          sub_219BDD314();
          v122 = v58;
          v59 = sub_219BDD364();
          v60 = [v59 identifier];

          sub_219BF5414();
          sub_219BDD324();
          v61 = v115;
          v62 = v112;
          sub_219BDD3F4();
          (*v109)(v61, v110, v116);
          sub_219BDDEF4();
          (*v108)(v56, v57);
          v123 = v52;
          v64 = *(v52 + 16);
          v63 = *(v52 + 24);
          if (v64 >= v63 >> 1)
          {
            sub_218C34638(v63 > 1, v64 + 1, 1);
            v52 = v123;
          }

          *(v52 + 16) = v64 + 1;
          (*(v121 + 32))(v52 + ((*(v121 + 80) + 32) & ~*(v121 + 80)) + *(v121 + 72) * v64, v62, v120);
          v54 += v119;
          --v51;
        }

        while (v51);
        v65 = v89;
        (*v93)(v105);

        v19 = v88;
        v37 = v91;
      }

      else
      {

        v66 = v16;
        v65 = v14;
        (*v93)(v66, v14);
        v52 = MEMORY[0x277D84F90];
      }

      v67 = *(v52 + 16);
      result = v106;
      v68 = v106[2];
      v69 = v68 + v67;
      v70 = v102;
      if (__OFADD__(v68, v67))
      {
        break;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v71 = v106;
      if (!result || v69 > v106[3] >> 1)
      {
        if (v68 <= v69)
        {
          v72 = v68 + v67;
        }

        else
        {
          v72 = v68;
        }

        result = sub_2191F6E24(result, v72, 1, v106);
        v71 = result;
      }

      v35 = v92;
      v73 = *(v52 + 16);
      v106 = v71;
      if (v73)
      {
        if ((v71[3] >> 1) - v71[2] < v67)
        {
          goto LABEL_30;
        }

        v14 = v65;
        swift_arrayInitWithCopy();

        v16 = v105;
        if (v67)
        {
          v74 = v106[2];
          v75 = __OFADD__(v74, v67);
          v76 = v74 + v67;
          if (v75)
          {
            goto LABEL_31;
          }

          v106[2] = v76;
        }
      }

      else
      {

        v14 = v65;
        v16 = v105;
        if (v67)
        {
          goto LABEL_29;
        }
      }

      sub_219BF5E84();
      if (*&v19[v70] == v123)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for RecipesSearchFeedGroupEmitterCursor()
{
  result = qword_27CC0E110;
  if (!qword_27CC0E110)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218B16E44()
{
  sub_219BED8D4();
  if (v0 <= 0x3F)
  {
    sub_21879962C(319, &qword_280E8EB20, sub_218799788, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_21879962C(319, &qword_280EC6990, sub_218B16F50, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_218B16F50()
{
  result = qword_280EC69A0;
  if (!qword_280EC69A0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280EC69A0);
  }

  return result;
}

uint64_t sub_218B16FC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x277D83D88];
  sub_2187B8B2C(0, &qword_280E91B80, MEMORY[0x277D32028], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v24 - v6;
  sub_2187B8B2C(0, &qword_280EE9C40, MEMORY[0x277CC9578], v4);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  sub_2187B8B2C(0, qword_280ECF5E8, type metadata accessor for AudioFeedGroupConfig, v4);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v24 - v12;
  v14 = type metadata accessor for AudioFeedGroupConfig();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AudioFeedConfig();
  MEMORY[0x28223BE20](v18);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FA0FF4(v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_218B1A444(v13, qword_280ECF5E8, type metadata accessor for AudioFeedGroupConfig);
    v21 = MEMORY[0x277D84F90];
  }

  else
  {
    sub_218B1AC58(v13, v17, type metadata accessor for AudioFeedGroupConfig);
    sub_2187B8B2C(0, &unk_280E8BB30, type metadata accessor for AudioFeedGroupConfig, MEMORY[0x277D84560]);
    v22 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_219C09BA0;
    sub_218B1AC58(v17, v21 + v22, type metadata accessor for AudioFeedGroupConfig);
  }

  sub_218B1ABD8(a1, v10, &qword_280EE9C40, MEMORY[0x277CC9578]);
  sub_218B1ABD8(a1 + *(v18 + 28), v7, &qword_280E91B80, MEMORY[0x277D32028]);
  sub_218734714(v10, v21, v7, v20);
  sub_2189DEA14(v20, a2);
  return sub_218B1A51C(v20, type metadata accessor for AudioFeedConfig);
}

uint64_t sub_218B17390()
{
  v67 = *v0;
  v68 = v0;
  v1 = sub_219BDBD64();
  v65 = *(v1 - 8);
  v66 = v1;
  MEMORY[0x28223BE20](v1);
  v64 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_219BEE714();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187B8B2C(0, &qword_280E91B30, MEMORY[0x277D32150], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v53 - v8;
  v10 = sub_219BEE704();
  v58 = *(v10 - 8);
  v59 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BF0644();
  v54 = *(v13 - 8);
  v55 = v13;
  MEMORY[0x28223BE20](v13);
  v57 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BEE754();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v60 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for AudioFeedServiceContext();
  v61 = *(v56 - 8);
  v18 = MEMORY[0x28223BE20](v56);
  v62 = v19;
  v63 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v53 - v20;
  v22 = CACurrentMediaTime();
  if (qword_280EE6008 != -1)
  {
    swift_once();
  }

  v23 = sub_219BE5434();
  __swift_project_value_buffer(v23, qword_280F626E8);
  v24 = sub_219BE5414();
  v25 = sub_219BF6214();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v53 = v21;
    v27 = v12;
    v28 = v16;
    v29 = v15;
    v30 = v9;
    v31 = v6;
    v32 = v4;
    v33 = v3;
    v34 = v26;
    *v26 = 0;
    _os_log_impl(&dword_2186C1000, v24, v25, "Will micro-update offline feed", v26, 2u);
    v35 = v34;
    v3 = v33;
    v4 = v32;
    v6 = v31;
    v9 = v30;
    v15 = v29;
    v16 = v28;
    v12 = v27;
    v21 = v53;
    MEMORY[0x21CECF960](v35, -1, -1);
  }

  (*(v54 + 104))(v57, *MEMORY[0x277D32EF8], v55);
  (*(v58 + 104))(v12, *MEMORY[0x277D32110], v59);
  v36 = sub_219BEE734();
  (*(*(v36 - 8) + 56))(v9, 1, 1, v36);
  (*(v4 + 104))(v6, *MEMORY[0x277D32130], v3);
  v37 = v60;
  sub_219BEE744();
  (*(v16 + 16))(&v21[*(v56 + 28)], v37, v15);
  v38 = v64;
  sub_219BDBD54();
  v39 = sub_219BDBD44();
  v41 = v40;
  (*(v65 + 8))(v38, v66);
  *v21 = v39;
  *(v21 + 1) = v41;
  v42 = (*(v16 + 8))(v37, v15);
  *(v21 + 3) = MEMORY[0x277D84F90];
  v21[16] = 0;
  MEMORY[0x28223BE20](v42);
  *(&v53 - 2) = v68;
  *(&v53 - 1) = v21;
  type metadata accessor for AudioFeedServiceConfig();
  sub_219BE3204();
  v43 = sub_219BE2E54();
  sub_218B1A76C(0, &unk_280E91638, MEMORY[0x277D32580]);
  sub_219BE2F84();

  v44 = sub_219BE2E54();
  sub_218B19A94();
  sub_219BE2F84();

  v45 = v63;
  sub_218B1A4B4(v21, v63, type metadata accessor for AudioFeedServiceContext);
  v46 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v47 = swift_allocObject();
  sub_218B1AC58(v45, v47 + v46, type metadata accessor for AudioFeedServiceContext);
  v48 = sub_219BE2E54();
  type metadata accessor for OfflineFeedManifest(0);
  sub_219BE2F84();

  *(swift_allocObject() + 16) = v22;
  v49 = sub_219BE2E54();
  sub_219BE2F74();

  v50 = sub_219BE2E54();
  v51 = sub_219BE2FD4();

  sub_218B1A51C(v21, type metadata accessor for AudioFeedServiceContext);
  return v51;
}

uint64_t sub_218B17C4C(uint64_t a1, uint64_t a2)
{
  sub_218B1A76C(0, &qword_280E90A18, MEMORY[0x277D33098]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v10 - v6;
  v10[1] = *(a2 + 16);
  type metadata accessor for AudioFeedServiceConfig();
  sub_2186F6AA0(&unk_280EC8DD0, type metadata accessor for AudioFeedServiceConfig);

  sub_219BF0F44();
  sub_21871417C();
  sub_2186F6AA0(&qword_280E90B80, sub_21871417C);
  v8 = sub_219BEDF24();
  (*(v5 + 8))(v7, v4);

  return v8;
}

uint64_t sub_218B17E08(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (qword_280EE6008 != -1)
  {
    swift_once();
  }

  v4 = sub_219BE5434();
  v5 = __swift_project_value_buffer(v4, qword_280F626E8);
  v6 = sub_219BE5414();
  v7 = sub_219BF6214();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2186C1000, v6, v7, "Will process micro-updated groups", v8, 2u);
    MEMORY[0x21CECF960](v8, -1, -1);
  }

  v9 = *(a2 + 40);
  type metadata accessor for AudioFeedServiceConfig();
  sub_2186F6AA0(&unk_280EC8DD0, type metadata accessor for AudioFeedServiceConfig);

  v10 = sub_219BEF3B4();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_218B18AD0(v9);
  v12 = type metadata accessor for OfflineFeedManifest(0);
  v13 = swift_allocBox();
  v15 = v14;
  if (qword_280ED0C20 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v12, qword_280ED0C30);
  sub_218B1A4B4(v16, v15, type metadata accessor for OfflineFeedManifest);
  sub_218B19C54(v11, v13, v10, v5, sub_218B1A6F0, &unk_282A37A18, sub_218B1A724);

  *(swift_allocObject() + 16) = v3;

  v17 = sub_219BE2E54();
  sub_218B19A94();
  v18 = sub_219BE2F74();

  return v18;
}

uint64_t sub_218B180D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a2;
  v41 = a3;
  sub_2187B8B2C(0, qword_280EDCCA8, type metadata accessor for AudioFeedGroup, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v38 - v5;
  v7 = type metadata accessor for AudioFeedGroup();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v42 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B19A94();
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for OfflineFeedManifest(0);
  v39 = *(v43 - 8);
  v14 = *(v39 + 64);
  v15 = MEMORY[0x28223BE20](v43);
  v44 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - v16;
  sub_218B1A4B4(a1, v13, sub_218B19A94);
  v18 = &v13[*(v11 + 56)];
  v45 = v17;
  sub_218B1AC58(v18, v17, type metadata accessor for OfflineFeedManifest);
  if (qword_280EE6008 != -1)
  {
    swift_once();
  }

  v19 = sub_219BE5434();
  __swift_project_value_buffer(v19, qword_280F626E8);
  v20 = sub_219BE5414();
  v21 = sub_219BF6214();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_2186C1000, v20, v21, "Did process micro-updated groups", v22, 2u);
    MEMORY[0x21CECF960](v22, -1, -1);
  }

  sub_218BBBB50(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_218B1A444(v6, qword_280EDCCA8, type metadata accessor for AudioFeedGroup);
    if (qword_280ED0C20 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v43, qword_280ED0C30);
    sub_218B1A4B4(v23, v44, type metadata accessor for OfflineFeedManifest);
    sub_2187B8B2C(0, &qword_27CC20CF0, type metadata accessor for OfflineFeedManifest, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v24 = sub_219BE3014();

    v25 = type metadata accessor for OfflineFeedManifest;
    v26 = v45;
  }

  else
  {
    v27 = v42;
    sub_218B1AC58(v6, v42, type metadata accessor for AudioFeedGroup);
    v29 = v40;
    v28 = v41;
    v30 = sub_219BF0D14();
    v31 = MEMORY[0x28223BE20](v30);
    *(&v38 - 4) = v29;
    *(&v38 - 3) = v27;
    *(&v38 - 2) = v28;
    *(&v38 - 1) = v31;
    sub_219BE3204();
    v33 = v44;
    v32 = v45;
    sub_218B1A4B4(v45, v44, type metadata accessor for OfflineFeedManifest);
    v34 = (*(v39 + 80) + 16) & ~*(v39 + 80);
    v35 = swift_allocObject();
    sub_218B1AC58(v33, v35 + v34, type metadata accessor for OfflineFeedManifest);
    v36 = sub_219BE2E54();
    v24 = sub_219BE2F74();

    sub_218B1A51C(v32, type metadata accessor for OfflineFeedManifest);
    v25 = type metadata accessor for AudioFeedGroup;
    v26 = v27;
  }

  sub_218B1A51C(v26, v25);
  return v24;
}

uint64_t sub_218B186A4()
{
  sub_2186E6A1C();
  sub_2186F6AA0(&unk_280E90AA0, sub_2186E6A1C);

  v0 = sub_219BEDF64();

  return v0;
}

uint64_t sub_218B18774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_280EE6008 != -1)
  {
    swift_once();
  }

  v4 = sub_219BE5434();
  __swift_project_value_buffer(v4, qword_280F626E8);
  v5 = sub_219BE5414();
  v6 = sub_219BF6214();
  if (!os_log_type_enabled(v5, v6))
  {
    goto LABEL_8;
  }

  v7 = swift_slowAlloc();
  *v7 = 134349056;
  result = sub_219BF5CD4();
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v9 < 9.22337204e18)
  {
    *(v7 + 4) = v9;
    _os_log_impl(&dword_2186C1000, v5, v6, "Did micro-update offline feed, time=%{public}lldms", v7, 0xCu);
    MEMORY[0x21CECF960](v7, -1, -1);
LABEL_8:

    return sub_218B1A4B4(a1, a2, type metadata accessor for OfflineFeedManifest);
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_218B188EC(void *a1)
{
  if (qword_280EE6008 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_280F626E8);
  v3 = a1;
  oslog = sub_219BE5414();
  v4 = sub_219BF61F4();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    v7 = a1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_2186C1000, oslog, v4, "Failed to micro-update offline feed, error=%{public}@", v5, 0xCu);
    sub_218B1A444(v6, &qword_280E8D9F0, sub_2189666A0);
    MEMORY[0x21CECF960](v6, -1, -1);
    MEMORY[0x21CECF960](v5, -1, -1);
  }
}

uint64_t sub_218B18A54()
{

  return swift_deallocClassInstance();
}

uint64_t sub_218B18AD0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = 0;
  v4 = v2 >> 1;
  v5 = v2 - 1;
  v6 = 40 * v2 - 8;
  for (i = 4; ; i += 5)
  {
    if (v3 == v5)
    {
      goto LABEL_5;
    }

    v8 = v1[2];
    if (v3 >= v8)
    {
      break;
    }

    result = sub_218718690(&v1[i], v10);
    if (v5 >= v8)
    {
      goto LABEL_14;
    }

    sub_218718690(v1 + v6, v9);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_2194AB984(v1);
    }

    __swift_destroy_boxed_opaque_existential_1(&v1[i]);
    result = sub_2186CB1F0(v9, &v1[i]);
    if (v5 >= v1[2])
    {
      goto LABEL_15;
    }

    __swift_destroy_boxed_opaque_existential_1(v1 + v6);
    result = sub_2186CB1F0(v10, v1 + v6);
LABEL_5:
    ++v3;
    --v5;
    v6 -= 40;
    if (v4 == v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_218B18BEC(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v13 = a1;
    v14 = sub_219BF7214();
    if (v14)
    {
      v15 = v14;
      v1 = sub_2194B7E58(v14, 0);
      sub_218A3363C(v1 + 32, v15, v13);
      v17 = v16;

      if (v17 != v15)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = MEMORY[0x277D84F90];
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = sub_219BF7214();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x21CECE0F0]();
          v10 = MEMORY[0x21CECE0F0](v2 - (v6 - 3), v1);
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v6);
          v10 = *(v1 + 8 * v7 + 32);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_2194B7E54(v1);
          v11 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v11) = 0;
        }

        v12 = v1 & 0xFFFFFFFFFFFFFF8;
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v10;

        if ((v1 & 0x8000000000000000) != 0 || v11)
        {
          a1 = sub_2194B7E54(v1);
          v1 = a1;
          v12 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v12 + 16))
        {
          goto LABEL_34;
        }

        *(v12 + 8 * v7 + 32) = v9;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

uint64_t sub_218B18E00()
{
  sub_218B1AB18(0, &qword_280EE5840, MEMORY[0x277D6D710]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v33 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v34 = v28 - v6;
  sub_218954408();
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7);
  (*(v9 + 16))(v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v0, v8, v10);
  sub_2186F6AA0(&qword_280EE36E0, sub_218954408);
  v12 = sub_219BF5734();
  v13 = *(v12 + 16);
  result = (*(v9 + 8))(v0, v8);
  if (v13 < 2)
  {
    return v12;
  }

  v16 = 0;
  v17 = v13 >> 1;
  v18 = v13 - 1;
  v15 = v12;
  v28[1] = v3 + 16;
  v29 = v13 >> 1;
  v30 = (v3 + 40);
  v31 = v3;
  while (1)
  {
    if (v16 == v18)
    {
      goto LABEL_6;
    }

    v19 = *(v15 + 16);
    if (v16 >= v19)
    {
      break;
    }

    v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v20 = v15 + v32;
    v21 = *(v31 + 72);
    v22 = v21 * v16;
    v23 = v15;
    v24 = *(v31 + 16);
    result = v24(v34, v20 + v21 * v16, v2);
    if (v18 >= v19)
    {
      goto LABEL_15;
    }

    v25 = v21 * v18;
    v24(v33, v20 + v21 * v18, v2);
    v15 = v23;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_2194AB9AC(v23);
    }

    v26 = v15 + v32;
    v27 = *v30;
    result = (*v30)(v15 + v32 + v22, v33, v2);
    if (v18 >= *(v15 + 16))
    {
      goto LABEL_16;
    }

    result = v27(v26 + v25, v34, v2);
    v17 = v29;
LABEL_6:
    ++v16;
    --v18;
    if (v17 == v16)
    {
      return v15;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_218B19138()
{
  sub_2187EE034(0, &qword_280EE5930, MEMORY[0x277D6D710]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = MEMORY[0x28223BE20](v1);
  v32 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v33 = v27 - v6;
  sub_218951F54();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  (*(v9 + 16))(v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v0, v8);
  sub_2186F6AA0(&qword_280EE3620, sub_218951F54);
  v11 = sub_219BF5734();
  v12 = *(v11 + 16);
  result = (*(v9 + 8))(v0, v8);
  if (v12 < 2)
  {
    return v11;
  }

  v15 = 0;
  v16 = v12 >> 1;
  v17 = v12 - 1;
  v14 = v11;
  v27[1] = v3 + 16;
  v28 = v12 >> 1;
  v29 = (v3 + 40);
  v30 = v3;
  while (1)
  {
    if (v15 == v17)
    {
      goto LABEL_6;
    }

    v18 = *(v14 + 16);
    if (v15 >= v18)
    {
      break;
    }

    v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v19 = v14 + v31;
    v20 = *(v30 + 72);
    v21 = v20 * v15;
    v22 = v14;
    v23 = *(v30 + 16);
    result = v23(v33, v19 + v20 * v15, v2);
    if (v17 >= v18)
    {
      goto LABEL_15;
    }

    v24 = v20 * v17;
    v23(v32, v19 + v20 * v17, v2);
    v14 = v22;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_2194AB9C0(v22);
    }

    v25 = v14 + v31;
    v26 = *v29;
    result = (*v29)(v14 + v31 + v21, v32, v2);
    if (v17 >= *(v14 + 16))
    {
      goto LABEL_16;
    }

    result = v26(v25 + v24, v33, v2);
    v16 = v28;
LABEL_6:
    ++v15;
    --v17;
    if (v16 == v15)
    {
      return v14;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_218B19470()
{
  sub_2187293E4(0, &qword_280EE58C0, MEMORY[0x277D6D710]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = MEMORY[0x28223BE20](v1);
  v32 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v33 = v27 - v6;
  sub_21880B928();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  (*(v9 + 16))(v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v0, v8);
  sub_2186F6AA0(&qword_280EE3738, sub_21880B928);
  v11 = sub_219BF5734();
  v12 = *(v11 + 16);
  result = (*(v9 + 8))(v0, v8);
  if (v12 < 2)
  {
    return v11;
  }

  v15 = 0;
  v16 = v12 >> 1;
  v17 = v12 - 1;
  v14 = v11;
  v27[1] = v3 + 16;
  v28 = v12 >> 1;
  v29 = (v3 + 40);
  v30 = v3;
  while (1)
  {
    if (v15 == v17)
    {
      goto LABEL_6;
    }

    v18 = *(v14 + 16);
    if (v15 >= v18)
    {
      break;
    }

    v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v19 = v14 + v31;
    v20 = *(v30 + 72);
    v21 = v20 * v15;
    v22 = v14;
    v23 = *(v30 + 16);
    result = v23(v33, v19 + v20 * v15, v2);
    if (v17 >= v18)
    {
      goto LABEL_15;
    }

    v24 = v20 * v17;
    v23(v32, v19 + v20 * v17, v2);
    v14 = v22;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_2194AB9D4(v22);
    }

    v25 = v14 + v31;
    v26 = *v29;
    result = (*v29)(v14 + v31 + v21, v32, v2);
    if (v17 >= *(v14 + 16))
    {
      goto LABEL_16;
    }

    result = v26(v25 + v24, v33, v2);
    v16 = v28;
LABEL_6:
    ++v15;
    --v17;
    if (v16 == v15)
    {
      return v14;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_218B197A8(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v13 = a1;
    v14 = sub_219BF7214();
    if (v14)
    {
      v15 = v14;
      v1 = sub_2194B7E58(v14, 0);
      sub_218A32C24(v1 + 32, v15, v13);
      v17 = v16;

      if (v17 != v15)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = MEMORY[0x277D84F90];
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = sub_219BF7214();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x21CECE0F0]();
          v10 = MEMORY[0x21CECE0F0](v2 - (v6 - 3), v1);
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v6);
          v10 = *(v1 + 8 * v7 + 32);
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_2194B7E54(v1);
          v11 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v11) = 0;
        }

        v12 = v1 & 0xFFFFFFFFFFFFFF8;
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v10;
        a1 = swift_unknownObjectRelease();
        if ((v1 & 0x8000000000000000) != 0 || v11)
        {
          a1 = sub_2194B7E54(v1);
          v1 = a1;
          v12 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v12 + 16))
        {
          goto LABEL_34;
        }

        *(v12 + 8 * v7 + 32) = v9;
        a1 = swift_unknownObjectRelease();
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

void sub_218B199BC(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (!*(*v1 + 16))
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_2194AB984(v3);
    v4 = v3[2];
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_9:
    __break(1u);
    return;
  }

  v4 = v3[2];
  if (!v4)
  {
    goto LABEL_9;
  }

LABEL_4:
  v3[2] = v4 - 1;
  *v1 = v3;

  sub_2186CB1F0(&v3[5 * v4 - 1], a1);
}

void sub_218B19A94()
{
  if (!qword_27CC0E120)
  {
    sub_218B1A76C(255, &unk_280E91638, MEMORY[0x277D32580]);
    type metadata accessor for OfflineFeedManifest(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC0E120);
    }
  }
}

uint64_t sub_218B19C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a3;
  v28 = a7;
  v25 = a4;
  v26 = a6;
  v24[1] = a5;
  v9 = type metadata accessor for OfflineFeedManifest(0);
  MEMORY[0x28223BE20](v9);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BE5434();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = swift_projectBox();
  swift_beginAccess();
  sub_218B199BC(&v29);
  swift_endAccess();
  if (v30)
  {
    v16 = sub_2186CB1F0(&v29, v31);
    MEMORY[0x28223BE20](v16);
    v17 = v27;
    v24[-4] = v31;
    v24[-3] = v17;
    v24[0] = v9;
    v18 = v25;
    v24[-2] = v25;
    sub_219BE3204();
    (*(v13 + 16))(v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v18, v12);
    v19 = (*(v13 + 80) + 40) & ~*(v13 + 80);
    v20 = swift_allocObject();
    *(v20 + 2) = a2;
    *(v20 + 3) = a1;
    *(v20 + 4) = v17;
    (*(v13 + 32))(&v20[v19], v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);

    v21 = sub_219BE2E54();
    v22 = sub_219BE2F64();

    __swift_destroy_boxed_opaque_existential_1(v31);
    return v22;
  }

  else
  {
    sub_218B1A444(&v29, &qword_27CC0E128, sub_218B1A68C);
    swift_beginAccess();
    sub_218B1A4B4(v15, v11, type metadata accessor for OfflineFeedManifest);
    sub_2187B8B2C(0, &qword_27CC20CF0, type metadata accessor for OfflineFeedManifest, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }
}

uint64_t sub_218B19F68(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = a4(0);
  return sub_2194F90C4(a2, a3, v7, v9, v8);
}

uint64_t sub_218B19FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = a7;
  v28 = a8;
  v25 = a5;
  v26 = a6;
  v23 = a3;
  v24 = a4;
  v22 = a1;
  v9 = type metadata accessor for OfflineFeedManifest(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - v14;
  v16 = swift_projectBox();
  swift_beginAccess();
  sub_218B1AC58(v16, v13, type metadata accessor for OfflineFeedManifest);
  sub_2187B8B2C(0, &unk_280E8BB50, type metadata accessor for OfflineFeedManifest, MEMORY[0x277D84560]);
  v17 = *(v10 + 72);
  v18 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_219C09EC0;
  v20 = v19 + v18;
  sub_218B1A4B4(v13, v20, type metadata accessor for OfflineFeedManifest);
  sub_218B1A4B4(v22, v20 + v17, type metadata accessor for OfflineFeedManifest);
  OfflineFeedManifest.init(_:)(v19, v15);
  sub_218B1A51C(v13, type metadata accessor for OfflineFeedManifest);
  sub_218B1AC58(v15, v16, type metadata accessor for OfflineFeedManifest);
  swift_endAccess();
  return sub_218B19C54(v23, a2, v24, v25, v26, v27, v28);
}