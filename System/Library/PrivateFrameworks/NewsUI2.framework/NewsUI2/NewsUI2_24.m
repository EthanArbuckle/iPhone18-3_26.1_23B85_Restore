uint64_t sub_218977CB8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_218977D00(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v3);
  return MEMORY[0x21CEC9610](a2, *MEMORY[0x277D30B50], v3, v4);
}

void sub_218977D64(unint64_t *a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v34 = a3;
  v3 = *a1;
  if (*a1 >> 62)
  {
LABEL_27:
    v4 = sub_219BF7214();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v38 = v3 & 0xFFFFFFFFFFFFFF8;
      v39 = v3 & 0xC000000000000001;
      v6 = MEMORY[0x277D84F98];
      v36 = v4;
      v37 = v3;
      do
      {
        if (v39)
        {
          v7 = MEMORY[0x21CECE0F0](v5, v3);
          v8 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (v5 >= *(v38 + 16))
          {
            goto LABEL_24;
          }

          v7 = *(v3 + 8 * v5 + 32);
          swift_unknownObjectRetain();
          v8 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }
        }

        v40 = v8;
        v9 = [v7 articleID];
        v10 = sub_219BF5414();
        v12 = v11;

        swift_unknownObjectRetain();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41[0] = v6;
        v3 = v6;
        v15 = sub_21870F700(v10, v12);
        v16 = v6[2];
        v17 = (v14 & 1) == 0;
        v18 = v16 + v17;
        if (__OFADD__(v16, v17))
        {
          goto LABEL_25;
        }

        v19 = v14;
        if (v6[3] >= v18)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v14)
            {
              goto LABEL_4;
            }
          }

          else
          {
            v3 = v41;
            sub_2194902C8();
            if (v19)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_21947DE18(v18, isUniquelyReferenced_nonNull_native);
          v3 = v41[0];
          v20 = sub_21870F700(v10, v12);
          if ((v19 & 1) != (v21 & 1))
          {
LABEL_42:
            sub_219BF79A4();
            __break(1u);
            return;
          }

          v15 = v20;
          if (v19)
          {
LABEL_4:

            v6 = v41[0];
            *(*(v41[0] + 56) + 8 * v15) = v7;
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            goto LABEL_5;
          }
        }

        v6 = v41[0];
        *(v41[0] + 8 * (v15 >> 6) + 64) |= 1 << v15;
        v22 = (v6[6] + 16 * v15);
        *v22 = v10;
        v22[1] = v12;
        *(v6[7] + 8 * v15) = v7;
        swift_unknownObjectRelease();
        v23 = v6[2];
        v24 = __OFADD__(v23, 1);
        v25 = v23 + 1;
        if (v24)
        {
          goto LABEL_26;
        }

        v6[2] = v25;
LABEL_5:
        ++v5;
        v3 = v37;
      }

      while (v40 != v36);
    }
  }

  sub_21872C32C();
  sub_219BE2D84();

  sub_2186C66AC();
  v26 = sub_219BF6F74();
  sub_219BF6214();
  v27 = MEMORY[0x277D84F90];
  sub_219BE5314();

  v42 = v27;
  v28 = *(a2 + 16);
  if (v28)
  {
    v29 = 0;
    do
    {
      v30 = (a2 + 40 + 16 * v29);
      v31 = v29;
      while (1)
      {
        if (v31 >= v28)
        {
          __break(1u);
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

        v29 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_41;
        }

        v32 = *v30;
        v41[0] = *(v30 - 1);
        v41[1] = v32;

        sub_219BE2DD4();

        if (v41[2])
        {
          break;
        }

        ++v31;
        v30 += 2;
        if (v29 == v28)
        {
          goto LABEL_39;
        }
      }

      MEMORY[0x21CECC690](v33);
      if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_219BF5A14();
      }

      sub_219BF5A54();
      v27 = v42;
    }

    while (v29 != v28);
  }

LABEL_39:
  *v34 = v27;
}

void sub_218978128(void *a1@<X1>, uint64_t *a2@<X8>)
{
  sub_218731D50();
  v4 = sub_219BF5904();
  v5 = [a1 transformHeadlines_];

  v6 = sub_219BF5924();
  *a2 = v6;
}

void sub_2189781C0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23[1] = a2;
  v24 = sub_219BDFAF4();
  v23[0] = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21897853C();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BDCC14();
  MEMORY[0x28223BE20](v13);
  (*(v15 + 16))(v23 - v14, a1, v13);
  if (swift_dynamicCast())
  {
    (*(v10 + 8))(v12, v9);
    v16 = sub_219BDCC04();
    v17 = sub_219BDD084();
    v19 = v18;

    if (!v3)
    {
      sub_2189785D0(&qword_27CC0B628, MEMORY[0x277D2DF40]);
      v20 = v24;
      sub_219BE1974();
      sub_2186C6190(v17, v19);
      (*(v23[0] + 32))(a3, v7, v20);
      v21 = type metadata accessor for EngagementEvent();
      swift_storeEnumTagMultiPayload();
      (*(*(v21 - 8) + 56))(a3, 0, 1, v21);
    }
  }

  else
  {
    v22 = type metadata accessor for EngagementEvent();
    (*(*(v22 - 8) + 56))(a3, 1, 1, v22);
  }
}

void sub_21897853C()
{
  if (!qword_280EE8FC0)
  {
    sub_219BDFB04();
    sub_2189785D0(&qword_280EE85F0, MEMORY[0x277D2DF50]);
    v0 = sub_219BDCC14();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE8FC0);
    }
  }
}

uint64_t sub_2189785D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2189787AC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_218978870(void *a1)
{
  sub_21897AC04(0, &qword_27CC0B670, sub_21897ABB0, &type metadata for LegacyAudioConfigArticle.Overrides.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21897ABB0();
  sub_219BF7B44();
  v12 = 0;
  sub_219BF7794();
  if (!v1)
  {
    type metadata accessor for LegacyAudioConfigArticle.Overrides(0);
    v11 = 1;
    sub_219BDB954();
    sub_21897AA8C(&unk_280EE9D40, MEMORY[0x277CC9260]);
    sub_219BF77E4();
    v10 = 2;
    sub_219BF7794();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_218978A8C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  sub_2186DCFB0(0, &unk_280EE9D00, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v23 - v4;
  sub_21897AC04(0, &qword_27CC0B660, sub_21897ABB0, &type metadata for LegacyAudioConfigArticle.Overrides.CodingKeys, MEMORY[0x277D844C8]);
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v23 - v7;
  v9 = type metadata accessor for LegacyAudioConfigArticle.Overrides(0);
  MEMORY[0x28223BE20](v9);
  v11 = (v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21897ABB0();
  v12 = v27;
  sub_219BF7B34();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v9;
  v14 = v25;
  v15 = v26;
  v30 = 0;
  *v11 = sub_219BF7694();
  v11[1] = v16;
  v27 = v11;
  v23[1] = v16;
  sub_219BDB954();
  v29 = 1;
  sub_21897AA8C(&unk_280EE9D10, MEMORY[0x277CC9260]);
  sub_219BF76E4();
  sub_21897A698(v5, v27 + *(v13 + 20), &unk_280EE9D00, MEMORY[0x277CC9260]);
  v28 = 2;
  v17 = sub_219BF7694();
  v19 = v18;
  (*(v14 + 8))(v8, v15);
  v20 = v27;
  v21 = (v27 + *(v13 + 24));
  *v21 = v17;
  v21[1] = v19;
  sub_21897A758(v20, v24, type metadata accessor for LegacyAudioConfigArticle.Overrides);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_21897A5D4(v20, type metadata accessor for LegacyAudioConfigArticle.Overrides);
}

unint64_t sub_218978E9C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x49656C6369747261;
    v6 = 0x6465727574616566;
    if (a1 != 2)
    {
      v6 = 0xD000000000000015;
    }

    if (a1)
    {
      v5 = 0x726F737365636361;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x656C746974;
    v2 = 0x6C72556567616D69;
    if (a1 != 7)
    {
      v2 = 0x4479616C70736964;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6172476567616D69;
    if (a1 != 4)
    {
      v3 = 0xD000000000000012;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_218978FEC()
{
  v1 = 0x6C72556567616D69;
  if (*v0 != 1)
  {
    v1 = 0x4479616C70736964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_21897904C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21897AE9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_218979074(uint64_t a1)
{
  v2 = sub_21897ABB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2189790B0(uint64_t a1)
{
  v2 = sub_21897ABB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218979124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21897AFB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21897914C(uint64_t a1)
{
  v2 = sub_21897A520();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218979188(uint64_t a1)
{
  v2 = sub_21897A520();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2189791C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  sub_2186DCFB0(0, &qword_280EE5188, MEMORY[0x277D6D9E0]);
  MEMORY[0x28223BE20](v3 - 8);
  v56 = &v53 - v4;
  sub_2186DCFB0(0, &qword_280EE9C40, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v5 - 8);
  v57 = &v53 - v6;
  sub_2186DCFB0(0, &unk_280EE9D00, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v7 - 8);
  v59 = &v53 - v8;
  v9 = type metadata accessor for LegacyAudioConfigArticle.Overrides(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21897AC04(0, &qword_280E8CDA0, sub_21897A520, &type metadata for LegacyAudioConfigArticle.CodingKeys, MEMORY[0x277D844C8]);
  v60 = v12;
  v58 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v53 - v13;
  v15 = type metadata accessor for LegacyAudioConfigArticle(0);
  MEMORY[0x28223BE20](v15);
  v17 = (&v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = a1[3];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_21897A520();
  v61 = v14;
  v19 = v62;
  sub_219BF7B34();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(v63);
  }

  v20 = v11;
  v21 = v9;
  v23 = v58;
  v22 = v59;
  v24 = v15;
  LOBYTE(v64) = 0;
  v25 = v60;
  *v17 = sub_219BF76F4();
  v17[1] = v27;
  LOBYTE(v64) = 2;
  v28 = v23;
  v17[2] = sub_219BF7694();
  v17[3] = v29;
  LOBYTE(v64) = 6;
  v30 = sub_219BF7694();
  v62 = 0;
  v32 = v31;
  v54 = v30;
  sub_219BDB954();
  LOBYTE(v64) = 7;
  sub_21897AA8C(&unk_280EE9D10, MEMORY[0x277CC9260]);
  v33 = v62;
  sub_219BF76E4();
  if (v33)
  {
    v62 = v33;
    (*(v28 + 8))(v61, v25);

    v34 = 0;
    v35 = 0;
    v36 = 0;
  }

  else
  {
    LOBYTE(v64) = 8;
    v37 = sub_219BF7694();
    v62 = 0;
    v38 = v20;
    *v20 = v54;
    v20[1] = v32;
    v40 = v39;
    v41 = v20 + *(v21 + 20);
    v42 = v37;
    sub_21897A698(v22, v41, &unk_280EE9D00, MEMORY[0x277CC9260]);
    v43 = (v38 + *(v21 + 24));
    *v43 = v42;
    v43[1] = v40;
    sub_21897A634(v38, v17 + v24[6]);
    sub_219BDBD34();
    LOBYTE(v64) = 3;
    sub_21897AA8C(&unk_280EE9C70, MEMORY[0x277CC9578]);
    v44 = v57;
    v45 = v62;
    sub_219BF76E4();
    v62 = v45;
    if (v45)
    {
      (*(v28 + 8))(v61, v25);
      v35 = 0;
      v36 = 0;
      v34 = 1;
    }

    else
    {
      sub_21897A698(v44, v17 + v24[7], &qword_280EE9C40, MEMORY[0x277CC9578]);
      sub_219BE7434();
      LOBYTE(v64) = 4;
      sub_21897AA8C(&qword_280EE5190, MEMORY[0x277D6D9E0]);
      v46 = v56;
      v47 = v62;
      sub_219BF76E4();
      v62 = v47;
      if (v47)
      {
        (*(v28 + 8))(v61, v25);
        v36 = 0;
        v34 = 1;
        v35 = 1;
      }

      else
      {
        sub_21897A698(v46, v17 + v24[8], &qword_280EE5188, MEMORY[0x277D6D9E0]);
        v68 = 5;
        sub_21897A704();
        v48 = v62;
        sub_219BF76E4();
        v49 = (v28 + 8);
        v62 = v48;
        if (!v48)
        {
          (*v49)(v61, v25);
          v50 = (v17 + v24[9]);
          v51 = v67[0];
          v50[2] = v66;
          v50[3] = v51;
          *(v50 + 57) = *(v67 + 9);
          v52 = v65;
          *v50 = v64;
          v50[1] = v52;
          sub_21897A758(v17, v55, type metadata accessor for LegacyAudioConfigArticle);
          __swift_destroy_boxed_opaque_existential_1(v63);
          return sub_21897A5D4(v17, type metadata accessor for LegacyAudioConfigArticle);
        }

        (*v49)(v61, v25);
        v34 = 1;
        v35 = 1;
        v36 = 1;
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v63);

  if (v34)
  {
    result = sub_21897A5D4(v17 + v24[6], type metadata accessor for LegacyAudioConfigArticle.Overrides);
    if ((v35 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_11:
    result = sub_21897A574(v17 + v24[7], &qword_280EE9C40, MEMORY[0x277CC9578], sub_2186DCFB0);
    if ((v36 & 1) == 0)
    {
      return result;
    }

    return sub_21897A574(v17 + v24[8], &qword_280EE5188, MEMORY[0x277D6D9E0], sub_2186DCFB0);
  }

  if (v35)
  {
    goto LABEL_11;
  }

LABEL_8:
  if (!v36)
  {
    return result;
  }

  return sub_21897A574(v17 + v24[8], &qword_280EE5188, MEMORY[0x277D6D9E0], sub_2186DCFB0);
}

uint64_t sub_218979A60(void *a1)
{
  v3 = v1;
  sub_21897AC04(0, &qword_27CC0B630, sub_21897A520, &type metadata for LegacyAudioConfigArticle.CodingKeys, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v19 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21897A520();
  sub_219BF7B44();
  LOBYTE(v27[0]) = 0;
  sub_219BF77F4();
  if (!v2)
  {
    v27[0] = *(v3 + 16);
    LOBYTE(v23) = 2;
    sub_2186DEEA0(0, &qword_280E8F860);
    sub_21897A7C0();
    sub_219BF7834();
    v10 = type metadata accessor for LegacyAudioConfigArticle(0);
    v31 = (v3 + *(v10 + 24));
    v27[0] = *v31;
    LOBYTE(v23) = 6;
    sub_219BF7834();
    v19[0] = v10;
    v11 = type metadata accessor for LegacyAudioConfigArticle.Overrides(0);
    v19[1] = *(v11 + 20);
    LOBYTE(v27[0]) = 7;
    sub_2186DCFB0(0, &unk_280EE9D00, MEMORY[0x277CC9260]);
    sub_21897A840();
    sub_219BF7834();
    v27[0] = *(v31 + *(v11 + 24));
    LOBYTE(v23) = 8;
    sub_219BF7834();
    v12 = v19[0];
    LOBYTE(v27[0]) = 3;
    sub_2186DCFB0(0, &qword_280EE9C40, MEMORY[0x277CC9578]);
    sub_21897A904();
    sub_219BF7834();
    v30 = 4;
    sub_2186DCFB0(0, &qword_280EE5188, MEMORY[0x277D6D9E0]);
    sub_21897A9C8();
    sub_219BF7834();
    v13 = (v3 + *(v12 + 36));
    v14 = v13[1];
    v15 = v13[3];
    v28 = v13[2];
    *v29 = v15;
    *&v29[9] = *(v13 + 57);
    v16 = v13[1];
    v27[0] = *v13;
    v27[1] = v16;
    v17 = v13[3];
    v25 = v28;
    v26[0] = v17;
    *(v26 + 9) = *(v13 + 57);
    v23 = v27[0];
    v24 = v14;
    v22 = 5;
    sub_21897A464(v27, v20, &qword_280EB40F0, &type metadata for LegacyAudioFeedConfiguration.NotificationConfig, sub_2186DEEA0);
    sub_2186DEEA0(0, &qword_280EB40F0);
    sub_21897AAD4();
    sub_219BF7834();
    v20[2] = v25;
    *v21 = v26[0];
    *&v21[9] = *(v26 + 9);
    v20[1] = v24;
    v20[0] = v23;
    sub_21897A574(v20, &qword_280EB40F0, &type metadata for LegacyAudioFeedConfiguration.NotificationConfig, sub_2186DEEA0);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218979F60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_219BDB954();
  v32 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DCFB0(0, &unk_280EE9D00, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v30 - v9;
  v11 = type metadata accessor for LegacyAudioConfigArticle(0);
  v12 = (v2 + v11[6]);
  v13 = v12[1];
  v34 = *v12;
  v14 = *(v2 + 24);
  v33 = *(v2 + 16);
  sub_21897A464(a1, &v35, &unk_280E90220, sub_21897A400, sub_2186DCFB0);
  if (v36)
  {
    sub_2186CB1F0(&v35, &v37);
    v15 = type metadata accessor for LegacyAudioConfigArticle.Overrides(0);
    sub_21897A464(v12 + *(v15 + 20), v10, &unk_280EE9D00, MEMORY[0x277CC9260], sub_2186DCFB0);
    if ((*(v32 + 48))(v10, 1, v5) == 1)
    {
      *(a2 + 64) = 0;
      *(a2 + 32) = 0u;
      *(a2 + 48) = 0u;
    }

    else
    {
      v16 = v32;
      (*(v32 + 32))(v7, v10, v5);
      v30[1] = v39;
      __swift_project_boxed_opaque_existential_1(&v37, *(&v38 + 1));
      v31 = v14;

      v17 = sub_219BF2FB4();
      *(a2 + 56) = sub_21897A4D4();
      *(a2 + 64) = sub_21897AA8C(&qword_280E8E780, sub_21897A4D4);
      *(a2 + 32) = v17;
      v14 = v31;
      (*(v16 + 8))(v7, v5);
    }

    __swift_destroy_boxed_opaque_existential_1(&v37);
  }

  else
  {

    sub_21897A574(&v35, &unk_280E90220, sub_21897A400, sub_2186DCFB0);
    *(a2 + 64) = 0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
  }

  v18 = type metadata accessor for AudioFeedTrack.Configurables(0);
  v19 = v18[7];
  v20 = sub_219BDBD34();
  (*(*(v20 - 8) + 56))(a2 + v19, 1, 1, v20);
  v21 = (v2 + v11[9]);
  v22 = v21[3];
  v39 = v21[2];
  v40[0] = v22;
  *(v40 + 9) = *(v21 + 57);
  v23 = v21[1];
  v37 = *v21;
  v38 = v23;
  sub_21897A464(v2 + v11[8], a2 + v18[9], &qword_280EE5188, MEMORY[0x277D6D9E0], sub_2186DCFB0);
  *&v24 = v34;
  *(&v24 + 1) = v13;
  *&v25 = v33;
  *(&v25 + 1) = v14;
  *a2 = v24;
  *(a2 + 16) = v25;
  v26 = (a2 + v18[8]);
  *(v26 + 57) = *(v40 + 9);
  v27 = v40[0];
  v26[2] = v39;
  v26[3] = v27;
  v28 = v38;
  *v26 = v37;
  v26[1] = v28;
  return sub_21897A464(&v37, &v35, &qword_280EB40F0, &type metadata for LegacyAudioFeedConfiguration.NotificationConfig, sub_2186DEEA0);
}

unint64_t sub_21897A400()
{
  result = qword_280E90230;
  if (!qword_280E90230)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280E90230);
  }

  return result;
}

uint64_t sub_21897A464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

unint64_t sub_21897A4D4()
{
  result = qword_280E8E770;
  if (!qword_280E8E770)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8E770);
  }

  return result;
}

unint64_t sub_21897A520()
{
  result = qword_280EC1808[0];
  if (!qword_280EC1808[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EC1808);
  }

  return result;
}

uint64_t sub_21897A574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a4(0);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_21897A5D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21897A634(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyAudioConfigArticle.Overrides(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21897A698(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_2186DCFB0(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_21897A704()
{
  result = qword_280EB40F8;
  if (!qword_280EB40F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB40F8);
  }

  return result;
}

uint64_t sub_21897A758(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21897A7C0()
{
  result = qword_280E8F850;
  if (!qword_280E8F850)
  {
    sub_2186DEEA0(255, &qword_280E8F860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8F850);
  }

  return result;
}

unint64_t sub_21897A840()
{
  result = qword_27CC0B638;
  if (!qword_27CC0B638)
  {
    sub_2186DCFB0(255, &unk_280EE9D00, MEMORY[0x277CC9260]);
    sub_21897AA8C(&unk_280EE9D40, MEMORY[0x277CC9260]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B638);
  }

  return result;
}

unint64_t sub_21897A904()
{
  result = qword_280EE9C28;
  if (!qword_280EE9C28)
  {
    sub_2186DCFB0(255, &qword_280EE9C40, MEMORY[0x277CC9578]);
    sub_21897AA8C(&qword_280EE9CA0, MEMORY[0x277CC9578]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE9C28);
  }

  return result;
}

unint64_t sub_21897A9C8()
{
  result = qword_27CC0B640;
  if (!qword_27CC0B640)
  {
    sub_2186DCFB0(255, &qword_280EE5188, MEMORY[0x277D6D9E0]);
    sub_21897AA8C(&qword_27CC0B648, MEMORY[0x277D6D9E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B640);
  }

  return result;
}

uint64_t sub_21897AA8C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21897AAD4()
{
  result = qword_27CC0B650;
  if (!qword_27CC0B650)
  {
    sub_2186DEEA0(255, &qword_280EB40F0);
    sub_21897AB5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B650);
  }

  return result;
}

unint64_t sub_21897AB5C()
{
  result = qword_27CC0B658;
  if (!qword_27CC0B658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B658);
  }

  return result;
}

unint64_t sub_21897ABB0()
{
  result = qword_27CC0B668;
  if (!qword_27CC0B668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B668);
  }

  return result;
}

void sub_21897AC04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_21897AC90()
{
  result = qword_27CC0B678;
  if (!qword_27CC0B678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B678);
  }

  return result;
}

unint64_t sub_21897ACE8()
{
  result = qword_27CC0B680;
  if (!qword_27CC0B680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B680);
  }

  return result;
}

unint64_t sub_21897AD40()
{
  result = qword_27CC0B688;
  if (!qword_27CC0B688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B688);
  }

  return result;
}

unint64_t sub_21897AD98()
{
  result = qword_27CC0B690;
  if (!qword_27CC0B690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B690);
  }

  return result;
}

unint64_t sub_21897ADF0()
{
  result = qword_280EC17F8;
  if (!qword_280EC17F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC17F8);
  }

  return result;
}

unint64_t sub_21897AE48()
{
  result = qword_280EC1800;
  if (!qword_280EC1800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC1800);
  }

  return result;
}

uint64_t sub_21897AE9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C72556567616D69 && a2 == 0xE800000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4479616C70736964 && a2 == 0xEB00000000657461)
  {

    return 2;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_21897AFB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49656C6369747261 && a2 == 0xE900000000000044;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xED00007478655479 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6465727574616566 && a2 == 0xEC000000656D614ELL || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000219CDB9B0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6172476567616D69 && a2 == 0xED0000746E656964 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000219CDB9D0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6C72556567616D69 && a2 == 0xE800000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x4479616C70736964 && a2 == 0xEB00000000657461)
  {

    return 8;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_21897B2D4(uint64_t a1, uint64_t a2, char *a3, char *a4)
{
  v83 = a3;
  v84 = a4;
  v82 = a1;
  v4 = type metadata accessor for MagazineGridItemModel();
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v80 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v81 = &v78 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v78 - v9;
  v11 = sub_219BEF2A4();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v17 = &v78 - v16;
  v18 = sub_219BEF974();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for MagazineGridLayoutModel();
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21897BF58();
  sub_219BE75E4();
  v85 = v19;
  v86 = v18;
  v25 = v18;
  v26 = v12;
  v27 = v87;
  (*(v19 + 32))(v21, v24, v25);
  swift_getObjectType();
  v84 = v21;
  sub_219BEED04();
  v28 = *(v26 + 16);
  v83 = v17;
  v28(v15, v17, v11);
  v29 = (*(v26 + 88))(v15, v11);
  if (v29 != *MEMORY[0x277D32528])
  {
    if (v29 != *MEMORY[0x277D32530])
    {
      v71 = v83;
      v40 = sub_219BEF294();
      v72 = *(v26 + 8);
      v72(v71, v11);
      (*(v85 + 8))(v84, v86);
      v72(v15, v11);
      return v40;
    }

    v53 = v11;
    (*(v26 + 96))(v15, v11);
    v54 = *v15;
    sub_21897BFEC();
    v55 = v80;
    sub_219BE5FC4();
    v56 = sub_218EF6CE0();
    sub_21897C080(v55);
    if (v56)
    {
      sub_219BE5FC4();
      v57 = sub_218EF7908();
      sub_21897C080(v10);
      if (v57)
      {
        v58 = v54;
        v59 = sub_219BE7314();
        v60 = sub_219BF1D84();

        [v60 setShowsMenuAsPrimaryAction_];
        v61 = sub_219BE7314();
        v62 = sub_219BF1D84();

        sub_21897C0DC();
        v63 = sub_219BF6BF4();
        [v62 setMenu_];

        v64 = sub_219BE7314();
        v65 = sub_219BF1D84();

        v66 = sub_219BE5984();
        [v65 setActivityItemsConfiguration_];

        v67 = sub_219BE7314();
        v68 = sub_219BF1D84();

        v69 = swift_allocObject();
        swift_weakInit();
        v70 = swift_allocObject();
        *(v70 + 16) = v69;
        *(v70 + 24) = v56;

        sub_219BF2CC4();
        v40 = v58;

        (*(v26 + 8))(v83, v53);
        (*(v85 + 8))(v84, v86);

        return v40;
      }
    }

    v40 = v54;
    v75 = sub_219BE7314();
    v76 = sub_219BF1D84();

    [v76 setHidden_];
    (*(v26 + 8))(v83, v53);
LABEL_14:
    (*(v85 + 8))(v84, v86);
    return v40;
  }

  v30 = *(v26 + 96);
  v80 = v11;
  v30(v15, v11);
  v79 = *v15;
  v31 = sub_219BE7314();
  v32 = *(v27 + 40);
  ObjectType = swift_getObjectType();
  sub_21897BFEC();
  sub_219BE5FC4();
  v34 = sub_218EF6AC8();
  v36 = v35;
  sub_21897C080(v10);
  (*(v32 + 32))(v34, v36, ObjectType, v32);

  sub_21897C144(qword_280EDE170, type metadata accessor for IssueDownload);
  sub_219BF19C4();

  v37 = v81;
  sub_219BE5FC4();
  v38 = sub_218EF6CE0();
  sub_21897C080(v37);
  if (!v38)
  {
LABEL_11:
    v40 = v79;
    v73 = sub_219BE7314();
    v74 = sub_219BF19B4();

    [v74 setHidden_];
    (*(v26 + 8))(v83, v80);
    goto LABEL_14;
  }

  sub_219BE5FC4();
  v39 = sub_218EF7908();
  sub_21897C080(v10);
  if ((v39 & 1) == 0)
  {

    goto LABEL_11;
  }

  v40 = v79;
  v41 = sub_219BE7314();
  v42 = sub_219BF19B4();

  [v42 setShowsMenuAsPrimaryAction_];
  v43 = sub_219BE7314();
  v44 = sub_219BF19B4();

  sub_21897C0DC();
  v45 = sub_219BF6BF4();
  [v44 setMenu_];

  v46 = sub_219BE7314();
  v47 = sub_219BF19B4();

  v48 = sub_219BE5984();
  [v47 setActivityItemsConfiguration_];

  v49 = sub_219BE7314();
  v50 = sub_219BF19B4();

  v51 = swift_allocObject();
  swift_weakInit();
  v52 = swift_allocObject();
  *(v52 + 16) = v51;
  *(v52 + 24) = v38;

  sub_219BF2CC4();

  (*(v26 + 8))(v83, v80);
  (*(v85 + 8))(v84, v86);

  return v40;
}

uint64_t sub_21897BBEC(void *a1)
{
  v2 = sub_219BE89F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = Strong;
  (*(v3 + 104))(v5, *MEMORY[0x277D6E0F8], v2);
  v8 = *(v7 + 64);
  v12[3] = sub_219BDD274();
  v12[4] = sub_21897C144(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
  v12[0] = v8;
  v13 = 0u;
  v14 = 0u;
  v15 = 1;
  sub_219BE8314();
  swift_allocObject();

  v9 = a1;
  sub_219BE82F4();
  swift_unknownObjectRetain();
  v10 = sub_219BE5994();

  swift_unknownObjectRelease();
  return v10;
}

uint64_t sub_21897BDDC()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_21897BF28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X2>, char *a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_21897B2D4(a1, a2, *a3, a4);
  *a5 = result;
  return result;
}

void sub_21897BF58()
{
  if (!qword_27CC0F3E0)
  {
    type metadata accessor for MagazineGridLayoutModel();
    sub_21897C144(&unk_27CC0AE80, type metadata accessor for MagazineGridLayoutModel);
    v0 = sub_219BE75F4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0F3E0);
    }
  }
}

void sub_21897BFEC()
{
  if (!qword_27CC0FA80)
  {
    type metadata accessor for MagazineGridItemModel();
    sub_21897C144(&unk_27CC0B810, type metadata accessor for MagazineGridItemModel);
    v0 = sub_219BE5FE4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0FA80);
    }
  }
}

uint64_t sub_21897C080(uint64_t a1)
{
  v2 = type metadata accessor for MagazineGridItemModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21897C0DC()
{
  result = qword_280E8DAF0;
  if (!qword_280E8DAF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8DAF0);
  }

  return result;
}

uint64_t sub_21897C144(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21897C1B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = sub_219BF1934();
  v15 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v17 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21897C7F4(0, &qword_27CC0B698, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21897C7A0();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v15;
    v11 = v16;
    v18 = 0;
    sub_218933D7C(&qword_280E90808);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    *(v11 + *(type metadata accessor for RecipesSearchMoreFeedGroupConfigData() + 20)) = 1;
    (*(v12 + 32))(v11, v17, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21897C41C(void *a1)
{
  v3 = v1;
  sub_21897C7F4(0, &qword_27CC0B6A8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21897C7A0();
  sub_219BF7B44();
  v11[15] = 0;
  sub_219BF1934();
  sub_218933D7C(&qword_280E90810);
  sub_219BF7834();
  if (!v2)
  {
    v11[14] = *(v3 + *(type metadata accessor for RecipesSearchMoreFeedGroupConfigData() + 20));
    v11[13] = 1;
    sub_21897C858();
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_21897C5E8()
{
  if (*v0)
  {
    return 1684957547;
  }

  else
  {
    return 0x746E65746E6F63;
  }
}

uint64_t sub_21897C61C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v6 || (sub_219BF78F4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000)
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

uint64_t sub_21897C6F8(uint64_t a1)
{
  v2 = sub_21897C7A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21897C734(uint64_t a1)
{
  v2 = sub_21897C7A0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_21897C7A0()
{
  result = qword_27CC0B6A0;
  if (!qword_27CC0B6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B6A0);
  }

  return result;
}

void sub_21897C7F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21897C7A0();
    v7 = a3(a1, &type metadata for RecipesSearchMoreFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_21897C858()
{
  result = qword_27CC0B6B0;
  if (!qword_27CC0B6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B6B0);
  }

  return result;
}

unint64_t sub_21897C8C0()
{
  result = qword_27CC0B6B8;
  if (!qword_27CC0B6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B6B8);
  }

  return result;
}

unint64_t sub_21897C918()
{
  result = qword_27CC0B6C0;
  if (!qword_27CC0B6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B6C0);
  }

  return result;
}

unint64_t sub_21897C970()
{
  result = qword_27CC0B6C8;
  if (!qword_27CC0B6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B6C8);
  }

  return result;
}

uint64_t sub_21897C9C4()
{
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_21897CB4C();
  sub_2187C5110();
  sub_219BEA794();
  sub_219BE1E14();

  if (v9)
  {
    sub_2186CB1F0(&v8, v10);
    v2 = v11;
    v3 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v4 = (*(v3 + 8))(v2, v3);
    if ((sub_219BED0C4() & 1) == 0)
    {
      sub_219BE9D54();
      [objc_allocWithZone(sub_219BE79B4()) initWithRootViewController_];
      v5 = sub_219BE9CE4();
      v6 = sub_219BEA784();
      v7 = v5;
      v6();

      v4 = v7;
    }

    __swift_destroy_boxed_opaque_existential_1(v10);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_21897CB4C()
{
  result = qword_280EBC300;
  if (!qword_280EBC300)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280EBC300);
  }

  return result;
}

uint64_t sub_21897CBB0()
{
  v1 = [*(v0 + 24) appConfiguration];
  if (([v1 respondsToSelector_] & 1) != 0 && (v2 = objc_msgSend(v1, sel_audioPlaylistFeedConfigurationResourceId)) != 0)
  {
    v3 = v2;
    sub_219BF5414();

    MEMORY[0x28223BE20](v4);
    sub_2186E9518();
    sub_219BE3204();

    v5 = sub_219BE2E54();
    type metadata accessor for AudioPlaylistFeedConfigFetchResult();
    sub_219BE2F84();

    v6 = sub_219BE2E54();
    v7 = sub_219BE2FD4();
    swift_unknownObjectRelease();

    return v7;
  }

  else
  {
    sub_21897D938();
    swift_allocError();
    *v9 = 0;
    sub_21897DA74(0, &qword_280EE6CB0, type metadata accessor for AudioPlaylistFeedConfigFetchResult, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v10 = sub_219BE2FF4();
    swift_unknownObjectRelease();
    return v10;
  }
}

uint64_t sub_21897CDF0(uint64_t a1)
{
  sub_21897DA74(0, &qword_280EE7E80, MEMORY[0x277D6CA50], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v11 - v3);
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  sub_219BF5CE4();
  *v4 = v5;
  v6 = *MEMORY[0x277D6CA48];
  v7 = sub_219BE1B34();
  v8 = *(v7 - 8);
  (*(v8 + 104))(v4, v6, v7);
  (*(v8 + 56))(v4, 0, 1, v7);
  v9 = sub_219BF2944();
  sub_21897DAD8(v4);
  return v9;
}

char *sub_21897CF8C(void **a1, unint64_t a2)
{
  v36 = a2;
  v34 = type metadata accessor for AudioPlaylistFeedConfigFetchResult();
  MEMORY[0x28223BE20](v34);
  v35 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - v6;
  v8 = type metadata accessor for AudioPlaylistFeedContentConfig();
  MEMORY[0x28223BE20](v8);
  v37 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDB954();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = MEMORY[0x28223BE20](v14).n128_u64[0];
  v17 = &v31 - v16;
  v18 = *a1;
  v19 = [v18 fileURL];
  if (v19)
  {
    v20 = v19;
    sub_219BDB8B4();

    (*(v11 + 32))(v17, v13, v10);
    v21 = sub_219BDB974();
    if (!v2)
    {
      v32 = v7;
      v24 = v22;
      v25 = v21;
      sub_21897D87C();
      v33 = v25;
      v36 = v24;
      sub_219BE1974();
      v27 = v37;
      v28 = v32;
      sub_21897D9AC(v37, v32, type metadata accessor for AudioPlaylistFeedContentConfig);
      v29 = v35;
      *(v28 + *(v34 + 20)) = v18;
      sub_21897D9AC(v28, v29, type metadata accessor for AudioPlaylistFeedConfigFetchResult);
      sub_21897DA74(0, &qword_280EE6CB0, type metadata accessor for AudioPlaylistFeedConfigFetchResult, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v30 = v18;
      v7 = sub_219BE3014();
      sub_2186C6190(v33, v36);
      sub_21897DA14(v28, type metadata accessor for AudioPlaylistFeedConfigFetchResult);
      sub_21897DA14(v27, type metadata accessor for AudioPlaylistFeedContentConfig);
    }

    (*(v11 + 8))(v17, v10);
  }

  else
  {
    sub_21897D938();
    swift_allocError();
    *v23 = 1;
    swift_willThrow();
  }

  return v7;
}

uint64_t sub_21897D36C()
{
  if (qword_280E8D930 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186F20D4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_219C09BA0;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_2186FC3BC();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_219BE5314();
}

uint64_t sub_21897D498()
{
  v0 = [objc_opt_self() sharedSession];
  v1 = sub_219BE2E24();

  return v1;
}

uint64_t sub_21897D504@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AudioPlaylistFeedContentConfig();
  MEMORY[0x28223BE20](v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21897D87C();
  result = sub_219BE1974();
  if (!v1)
  {
    sub_21897D8D4(v5, a1);
    result = type metadata accessor for AudioPlaylistFeedConfigFetchResult();
    *(a1 + *(result + 20)) = 0;
  }

  return result;
}

uint64_t sub_21897D5EC()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_21897D658(uint64_t a1)
{
  v2 = sub_219BDB954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_219BDAF64();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v3 + 16))(v5, a1, v2, v8);
  sub_219BDAF44();
  v15 = v10;
  sub_219BE3204();
  v11 = sub_219BE2E54();
  type metadata accessor for AudioPlaylistFeedConfigFetchResult();
  v12 = sub_219BE2F94();

  (*(v7 + 8))(v10, v6);
  return v12;
}

unint64_t sub_21897D87C()
{
  result = qword_280EAD670;
  if (!qword_280EAD670)
  {
    type metadata accessor for AudioPlaylistFeedContentConfig();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAD670);
  }

  return result;
}

uint64_t sub_21897D8D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioPlaylistFeedContentConfig();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21897D938()
{
  result = qword_27CC0B6D8;
  if (!qword_27CC0B6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B6D8);
  }

  return result;
}

uint64_t sub_21897D9AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21897DA14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21897DA74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21897DAD8(uint64_t a1)
{
  sub_21897DA74(0, &qword_280EE7E80, MEMORY[0x277D6CA50], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21897DB78()
{
  result = qword_27CC0B6E8;
  if (!qword_27CC0B6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B6E8);
  }

  return result;
}

uint64_t type metadata accessor for RecipeBoxFailedBlueprintModifier()
{
  result = qword_27CC0B6F0;
  if (!qword_27CC0B6F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21897DC40()
{
  result = type metadata accessor for RecipeBoxFailedData();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21897DCAC(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v95 = a3;
  v96 = a2;
  v5 = sub_219BE6DF4();
  v89 = *(v5 - 8);
  v90 = v5;
  MEMORY[0x28223BE20](v5);
  v88 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21897EC98(0, &qword_27CC0B708, MEMORY[0x277D6DF88]);
  v8 = *(v7 - 8);
  v91 = v7;
  v92 = v8;
  MEMORY[0x28223BE20](v7);
  v94 = (&v66 - v9);
  sub_21897EB38();
  MEMORY[0x28223BE20](v10 - 8);
  v77 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for RecipeBoxModel(0);
  MEMORY[0x28223BE20](v87);
  v74 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for RecipeBoxSectionDescriptor();
  MEMORY[0x28223BE20](v86);
  v75 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_219BF0644();
  v69 = *(v70 - 8);
  v14 = MEMORY[0x28223BE20](v70);
  v80 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v81 = &v66 - v16;
  v79 = type metadata accessor for RecipeBoxGapLocation(0);
  MEMORY[0x28223BE20](v79);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21879991C();
  v83 = *(v19 - 8);
  v84 = v19;
  MEMORY[0x28223BE20](v19);
  v82 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21897EC98(0, &qword_27CC0B150, MEMORY[0x277D6EC60]);
  v22 = v21;
  v93 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v66 - v23;
  sub_21897ED8C(0);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v66 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953B70();
  v29 = v28;
  v30 = *(v28 - 8);
  v31 = MEMORY[0x28223BE20](v28);
  v73 = &v66 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v34 = &v66 - v33;
  sub_219BEB244();
  if ((*(v30 + 48))(v27, 1, v29) == 1)
  {
    sub_21897EE78(v27, sub_21897ED8C);
    sub_21897EDC0();
    v35 = swift_allocError();
    v36 = v94;
    *v94 = v35;
    v37 = v91;
    v38 = v92;
    (*(v92 + 104))(v36, *MEMORY[0x277D6DF68], v91);
    v96(v36);
    return (*(v38 + 8))(v36, v37);
  }

  v76 = v30;
  (*(v30 + 32))(v34, v27, v29);
  (*(v93 + 16))(v24, a1, v22);
  v40 = *(type metadata accessor for RecipeBoxFailedData() + 20);
  v67 = v3;
  sub_21897EE14(v3 + v40, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v68 = a1;
  v85 = v24;
  v78 = v29;
  v72 = v22;
  v71 = v34;
  if (EnumCaseMultiPayload != 1)
  {
    sub_21897EE78(v18, type metadata accessor for RecipeBoxGapLocation);
    goto LABEL_8;
  }

  (*(v83 + 32))(v82, v18, v84);
  sub_219BF0F74();
  v42 = v69;
  v43 = v70;
  (*(v69 + 104))(v80, *MEMORY[0x277D32EF8], v70);
  sub_218799A6C(&qword_280E90ED0, MEMORY[0x277D32F00]);
  sub_219BF5874();
  sub_219BF5874();
  if (v99 != v97 || v100 != v98)
  {
    v60 = sub_219BF78F4();
    v61 = *(v42 + 8);
    v61(v80, v43);
    v61(v81, v43);

    if (v60)
    {
      goto LABEL_12;
    }

    (*(v83 + 8))(v82, v84);
LABEL_8:
    swift_storeEnumTagMultiPayload();
    sub_21897EED8(0, &qword_27CC0B738, sub_21897EC04, MEMORY[0x277D84560]);
    sub_21897EC04();
    v46 = v45;
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_219C09BA0;
    sub_218799AB4();
    v49 = *(v48 + 48);
    v50 = v67 + v40;
    v51 = v74;
    sub_21897EE14(v50, v74);
    v52 = v76;
    if (qword_27CC08478 != -1)
    {
      swift_once();
    }

    v53 = sub_219BF1584();
    v54 = __swift_project_value_buffer(v53, qword_27CCD88F8);
    (*(*(v53 - 8) + 16))(v51 + v49, v54, v53);
    swift_storeEnumTagMultiPayload();
    sub_218799A6C(&qword_280EDBED0, type metadata accessor for RecipeBoxModel);
    sub_219BE5FB4();
    v55 = sub_218799A6C(&qword_27CC0B718, sub_21897EC04);
    v56 = sub_218799A6C(&qword_27CC0B720, sub_21897EC04);
    MEMORY[0x21CEB9150](v47, v46, v55, v56);
    sub_218799A6C(qword_280EBA6F0, type metadata accessor for RecipeBoxSectionDescriptor);
    v57 = v73;
    sub_219BE6924();
    sub_219BEB234();
    (*(v52 + 8))(v57, v78);
    v58 = v92;
    v59 = v94;
    goto LABEL_13;
  }

  v44 = *(v42 + 8);
  v44(v80, v43);
  v44(v81, v43);

LABEL_12:
  sub_219BE6944();
  sub_219BEB214();

  (*(v83 + 8))(v82, v84);
  v58 = v92;
  v59 = v94;
LABEL_13:
  v62 = v88;
  v63 = v89;
  v64 = v90;
  (*(v89 + 104))(v88, *MEMORY[0x277D6D868], v90);
  sub_218799A6C(qword_280EBA6F0, type metadata accessor for RecipeBoxSectionDescriptor);
  sub_218799A6C(&qword_280EDBED0, type metadata accessor for RecipeBoxModel);
  sub_218799A6C(&qword_27CC0B740, type metadata accessor for RecipeBoxSectionDescriptor);
  v65 = v85;
  sub_219BE85E4();
  (*(v63 + 8))(v62, v64);
  v96(v59);
  (*(v58 + 8))(v59, v91);
  (*(v93 + 8))(v65, v72);
  return (*(v76 + 8))(v71, v78);
}

uint64_t sub_21897E9F4(uint64_t a1)
{
  v2 = sub_218799A6C(&qword_27CC0B748, type metadata accessor for RecipeBoxFailedBlueprintModifier);

  return MEMORY[0x2821D4040](a1, v2);
}

void sub_21897EB38()
{
  if (!qword_27CC0B710)
  {
    sub_21897EC04();
    sub_218799A6C(&qword_27CC0B718, sub_21897EC04);
    sub_218799A6C(&qword_27CC0B720, sub_21897EC04);
    v0 = sub_219BE2454();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0B710);
    }
  }
}

void sub_21897EC04()
{
  if (!qword_27CC0FA60)
  {
    type metadata accessor for RecipeBoxModel(255);
    sub_218799A6C(&qword_280EDBED0, type metadata accessor for RecipeBoxModel);
    v0 = sub_219BE5FE4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0FA60);
    }
  }
}

void sub_21897EC98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for RecipeBoxSectionDescriptor();
    v8[1] = type metadata accessor for RecipeBoxModel(255);
    v8[2] = sub_218799A6C(qword_280EBA6F0, type metadata accessor for RecipeBoxSectionDescriptor);
    v8[3] = sub_218799A6C(&qword_280EDBED0, type metadata accessor for RecipeBoxModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_21897EDC0()
{
  result = qword_27CC0B730;
  if (!qword_27CC0B730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B730);
  }

  return result;
}

uint64_t sub_21897EE14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeBoxGapLocation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21897EE78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21897EED8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_21897EF50()
{
  result = qword_27CC0B750;
  if (!qword_27CC0B750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B750);
  }

  return result;
}

uint64_t sub_21897EFB4()
{
  v1 = v0[1];
  v2 = sub_21897F850(*v0, type metadata accessor for AudioPlaylistFeedLayoutSectionDescriptor.Header, type metadata accessor for AudioPlaylistFeedLayoutSectionDescriptor.Header);
  v3 = sub_21897F850(v1, type metadata accessor for AudioPlaylistFeedLayoutSectionDescriptor.Footer, type metadata accessor for AudioPlaylistFeedLayoutSectionDescriptor.Footer);
  sub_2191ED57C(v3);
  return v2;
}

uint64_t sub_21897F04C(uint64_t a1)
{
  v2 = sub_21897FC58();

  return MEMORY[0x2821D5BC0](a1, v2);
}

uint64_t sub_21897F088(uint64_t a1)
{
  v2 = sub_21897F120();

  return MEMORY[0x2821D5688](a1, v2);
}

unint64_t sub_21897F0C8()
{
  result = qword_27CC0F6D0;
  if (!qword_27CC0F6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0F6D0);
  }

  return result;
}

unint64_t sub_21897F120()
{
  result = qword_27CC0B758;
  if (!qword_27CC0B758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B758);
  }

  return result;
}

uint64_t sub_21897F174(uint64_t a1)
{
  v2 = type metadata accessor for AudioPlaylistFeedLayoutSectionDescriptor.Decoration(0);
  v67 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AudioPlaylistFeedLayoutSectionDescriptor.Footer(0);
  v58 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AudioPlaylistFeedLayoutSectionDescriptor.Header(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BE9834();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *MEMORY[0x277D6E758];
  v60 = *(v13 + 104);
  v61 = v13 + 104;
  v60(v15, v16, v12);
  v17 = sub_219BEE054();
  v19 = *(v13 + 8);
  v18 = v13 + 8;
  v62 = v15;
  v59 = v19;
  v19(v15, v12);
  v20 = *(v17 + 16);
  v21 = MEMORY[0x277D84F90];
  v63 = v4;
  v64 = a1;
  if (v20)
  {
    v55 = v18;
    v56 = v12;
    v57 = v7;
    v68 = MEMORY[0x277D84F90];
    sub_218C34220(0, v20, 0);
    v22 = v17;
    v23 = v68;
    v66 = sub_219BF00D4();
    v24 = *(v66 - 8);
    v65 = *(v24 + 16);
    v25 = v22 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v26 = *(v24 + 72);
    do
    {
      v65(v11, v25, v66);
      v68 = v23;
      v28 = *(v23 + 16);
      v27 = *(v23 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_218C34220(v27 > 1, v28 + 1, 1);
        v23 = v68;
      }

      *(v23 + 16) = v28 + 1;
      sub_21897FCCC(v11, v23 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v28, type metadata accessor for AudioPlaylistFeedLayoutSectionDescriptor.Header);
      v25 += v26;
      --v20;
    }

    while (v20);

    v4 = v63;
    a1 = v64;
    v12 = v56;
    v7 = v57;
    v21 = MEMORY[0x277D84F90];
  }

  else
  {

    v23 = MEMORY[0x277D84F90];
  }

  v29 = v62;
  v60(v62, *MEMORY[0x277D6E750], v12);
  v30 = sub_219BEE054();
  v31 = v29;
  v32 = v30;
  v59(v31, v12);
  v33 = *(v32 + 16);
  if (v33)
  {
    v68 = v21;
    sub_218C341D0(0, v33, 0);
    v34 = v68;
    v66 = sub_219BF00D4();
    v35 = *(v66 - 8);
    v65 = *(v35 + 16);
    v36 = *(v35 + 80);
    v62 = v32;
    v37 = v32 + ((v36 + 32) & ~v36);
    v38 = *(v35 + 72);
    v39 = v58;
    do
    {
      v65(v7, v37, v66);
      v68 = v34;
      v40 = v7;
      v42 = *(v34 + 16);
      v41 = *(v34 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_218C341D0(v41 > 1, v42 + 1, 1);
        v39 = v58;
        v34 = v68;
      }

      *(v34 + 16) = v42 + 1;
      sub_21897FCCC(v40, v34 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v42, type metadata accessor for AudioPlaylistFeedLayoutSectionDescriptor.Footer);
      v37 += v38;
      --v33;
      v7 = v40;
    }

    while (v33);

    v4 = v63;
    a1 = v64;
    v21 = MEMORY[0x277D84F90];
  }

  else
  {
  }

  v43 = sub_219BEE044();
  v44 = *(v43 + 16);
  if (v44)
  {
    v68 = v21;
    sub_218C34180(0, v44, 0);
    v45 = v68;
    v66 = sub_219BEE914();
    v46 = *(v66 - 8);
    v65 = *(v46 + 16);
    v47 = *(v46 + 80);
    v62 = v43;
    v48 = v43 + ((v47 + 32) & ~v47);
    v49 = *(v46 + 72);
    do
    {
      v65(v4, v48, v66);
      v68 = v45;
      v51 = *(v45 + 16);
      v50 = *(v45 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_218C34180(v50 > 1, v51 + 1, 1);
        v45 = v68;
      }

      *(v45 + 16) = v51 + 1;
      sub_21897FCCC(v4, v45 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v51, type metadata accessor for AudioPlaylistFeedLayoutSectionDescriptor.Decoration);
      v48 += v49;
      --v44;
    }

    while (v44);
    v52 = sub_219BEE074();
    (*(*(v52 - 8) + 8))(v64, v52);
  }

  else
  {

    v53 = sub_219BEE074();
    (*(*(v53 - 8) + 8))(a1, v53);
  }

  return v23;
}

uint64_t sub_21897F850(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v29 = a3;
  v4 = a2(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v28 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - v8;
  v10 = sub_219BF00D4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v33 = MEMORY[0x277D84F90];
    sub_218C34270(0, v14, 0);
    v15 = v33;
    v16 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v17 = *(v5 + 72);
    v26 = (v11 + 32);
    v27 = v17;
    v18 = (v11 + 16);
    v19 = (v11 + 8);
    do
    {
      v20 = v29;
      sub_21897FB90(v16, v9, v29);
      v21 = v28;
      sub_21897FB90(v9, v28, v20);
      (*v26)(v13, v21, v10);
      sub_21897FBF8(v9, v20);
      v33 = v15;
      v23 = *(v15 + 16);
      v22 = *(v15 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_218C34270((v22 > 1), v23 + 1, 1);
      }

      v31 = v10;
      v32 = sub_21897FB18();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v30);
      (*v18)(boxed_opaque_existential_1, v13, v10);
      v15 = v33;
      *(v33 + 16) = v23 + 1;
      sub_2186CB1F0(&v30, v15 + 40 * v23 + 32);
      (*v19)(v13, v10);
      v16 += v27;
      --v14;
    }

    while (v14);
  }

  return v15;
}

unint64_t sub_21897FB18()
{
  result = qword_280E91018;
  if (!qword_280E91018)
  {
    sub_219BF00D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E91018);
  }

  return result;
}

uint64_t sub_21897FB90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21897FBF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21897FC58()
{
  result = qword_27CC0B760;
  if (!qword_27CC0B760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B760);
  }

  return result;
}

uint64_t sub_21897FCCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21897FD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t sub_21897FDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = a5(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, a2, a3, v8);
}

uint64_t sub_21897FE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v6 <= 0x3F)
  {
    v7 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v7 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t sub_21897FF14(uint64_t *a1, int a2)
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

uint64_t sub_21897FF5C(uint64_t result, int a2, int a3)
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

BOOL sub_21897FFC0(void *a1)
{
  v2 = [a1 sourceChannelID];
  result = 0;
  if (v2)
  {
    v3 = v2;
    v4 = [v1 hasMutedSubscriptionForTagID_];

    if (v4)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_218980024(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v24 = a4;
  v26 = sub_219BDC104();
  v5 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BE9834();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189513F4();
  sub_219BE8184();
  sub_218980668(&v27, v29);
  sub_218980668(v29, v30);
  v25 = v31;
  v21 = v33;
  v22 = v34;
  v23 = v32;
  v12 = v35;
  v28[2] = v38;
  v28[3] = v39;
  v28[4] = v40;
  v28[5] = v41;
  v28[0] = v36;
  v28[1] = v37;
  sub_2189806C4();
  (*(v9 + 104))(v11, *MEMORY[0x277D6E758], v8);
  sub_219BE9614();
  v13 = sub_219BF6424();
  (*(v5 + 8))(v7, v26);
  (*(v9 + 8))(v11, v8);
  v14 = sub_219BE8204();
  v15 = [a3 traitCollection];
  sub_218CD629C(v23, v21, v22, v12, v28, v14, v15);

  v16 = sub_219BE8204();
  v17 = *&v16[OBJC_IVAR____TtC7NewsUI226SearchHomeSectionTitleView_actionButton];

  v18 = sub_219BE5CF4();
  swift_allocObject();
  swift_weakInit();

  return v13;
}

uint64_t sub_218980358()
{
  sub_218760638();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = *(Strong + OBJC_IVAR____TtC7NewsUI224SearchHomeViewController_eventHandler);
      v6 = sub_219BF5BF4();
      (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
      v7 = swift_allocObject();
      v7[2] = 0;
      v7[3] = 0;
      v7[4] = v5;
      swift_unknownObjectRetain();
      sub_218AB3D80(0, 0, v2, &unk_219C0CDD8, v7);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_2189804C0()
{
  sub_218774F78(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_21898052C()
{
  v0 = sub_219BE9834();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189806C4();
  (*(v1 + 104))(v3, *MEMORY[0x277D6E758], v0);
  sub_219BF6444();
  return (*(v1 + 8))(v3, v0);
}

void sub_2189806C4()
{
  if (!qword_280EE4D68)
  {
    type metadata accessor for SearchHomeSectionTitleView();
    sub_218980728();
    v0 = sub_219BE8224();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE4D68);
    }
  }
}

unint64_t sub_218980728()
{
  result = qword_280EBA438;
  if (!qword_280EBA438)
  {
    type metadata accessor for SearchHomeSectionTitleView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBA438);
  }

  return result;
}

uint64_t sub_218980788(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2187608D4;

  return sub_21937D6EC(a1, v4, v5, v6);
}

uint64_t ChannelPickerElementModel.sectionId.getter()
{
  v1 = type metadata accessor for ChannelPickerEngagementModel();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = (&v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for ChannelPickerElementModel();
  MEMORY[0x28223BE20](v4);
  v6 = (&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218980A74(v0, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v13 = v6[9];
      *v30 = v6[8];
      *&v30[16] = v13;
      v31 = v6[10];
      v14 = v6[5];
      v27 = v6[4];
      *v28 = v14;
      v15 = v6[7];
      *&v28[16] = v6[6];
      v29 = v15;
      v16 = v6[1];
      v23 = *v6;
      v24 = v16;
      v17 = v6[3];
      v25 = v6[2];
      v26 = v17;
      v12 = v31;

      sub_218980B3C(&v23);
    }

    else
    {
      sub_218980AD8(v6, v3);
      v12 = *v3;

      sub_218980D88(v3, type metadata accessor for ChannelPickerEngagementModel);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v18 = v6[7];
    *&v28[16] = v6[6];
    v29 = v18;
    *v30 = v6[8];
    *&v30[9] = *(v6 + 137);
    v19 = v6[3];
    v25 = v6[2];
    v26 = v19;
    v20 = v6[5];
    v27 = v6[4];
    *v28 = v20;
    v21 = v6[1];
    v23 = *v6;
    v24 = v21;
    v12 = *&v30[8];

    sub_218980B90(&v23);
  }

  else
  {
    v8 = *(v6 + 89);
    v9 = v6[5];
    v27 = v6[4];
    *v28 = v9;
    *&v28[9] = v8;
    v10 = v6[1];
    v23 = *v6;
    v24 = v10;
    v11 = v6[3];
    v25 = v6[2];
    v26 = v11;
    v12 = *&v28[8];

    sub_218980BE4(&v23);
  }

  return v12;
}

uint64_t type metadata accessor for ChannelPickerElementModel()
{
  result = qword_27CC0B7C0;
  if (!qword_27CC0B7C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218980A74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChannelPickerElementModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218980AD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChannelPickerEngagementModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ChannelPickerElementModel.dataType.getter@<X0>(BOOL *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ChannelPickerElementModel();
  MEMORY[0x28223BE20](v4);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218980A74(v2, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    *a1 = EnumCaseMultiPayload != 2;
    return sub_218980D88(v6, type metadata accessor for ChannelPickerElementModel);
  }

  else if (EnumCaseMultiPayload)
  {
    v13 = v6[7];
    *&v22[16] = v6[6];
    v23 = v13;
    *v24 = v6[8];
    *&v24[9] = *(v6 + 137);
    v14 = v6[3];
    v19 = v6[2];
    v20 = v14;
    v15 = v6[5];
    v21 = v6[4];
    *v22 = v15;
    v16 = v6[1];
    v17 = *v6;
    v18 = v16;
    result = sub_218980B90(&v17);
    *a1 = v24[24];
  }

  else
  {
    *&v22[9] = *(v6 + 89);
    v8 = v6[5];
    v21 = v6[4];
    *v22 = v8;
    v9 = v6[1];
    v17 = *v6;
    v18 = v9;
    v10 = v6[3];
    v19 = v6[2];
    v20 = v10;
    v11 = v22[24];
    result = sub_218980BE4(&v17);
    *a1 = v11;
  }

  return result;
}

uint64_t sub_218980D88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ChannelPickerElementModel.identifier.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ChannelPickerEngagementModel();
  MEMORY[0x28223BE20](v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ChannelPickerElementModel();
  MEMORY[0x28223BE20](v5);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218980A74(v1, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v14 = v7[9];
      *v31 = v7[8];
      *&v31[16] = v14;
      v32 = v7[10];
      v15 = v7[5];
      v28 = v7[4];
      *v29 = v15;
      v16 = v7[7];
      *&v29[16] = v7[6];
      v30 = v16;
      v17 = v7[1];
      v24 = *v7;
      v25 = v17;
      v18 = v7[3];
      v26 = v7[2];
      v27 = v18;
      v13 = v17;

      sub_218980B3C(&v24);
    }

    else
    {
      sub_218980AD8(v7, v4);
      v13 = sub_219BE3554();
      sub_218980D88(v4, type metadata accessor for ChannelPickerEngagementModel);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v19 = v7[7];
    *&v29[16] = v7[6];
    v30 = v19;
    *v31 = v7[8];
    *&v31[9] = *(v7 + 137);
    v20 = v7[3];
    v26 = v7[2];
    v27 = v20;
    v21 = v7[5];
    v28 = v7[4];
    *v29 = v21;
    v22 = v7[1];
    v24 = *v7;
    v25 = v22;
    v13 = v24;

    sub_218980B90(&v24);
  }

  else
  {
    v9 = v7[5];
    v28 = v7[4];
    *v29 = v9;
    *&v29[9] = *(v7 + 89);
    v10 = v7[1];
    v24 = *v7;
    v25 = v10;
    v11 = v7[3];
    v26 = v7[2];
    v27 = v11;
    v12 = [*(*__swift_project_boxed_opaque_existential_1(&v24 *(&v25 + 1)) + 16)];
    v13 = sub_219BF5414();

    sub_218980BE4(&v24);
  }

  return v13;
}

uint64_t ChannelPickerElementModel.hash(into:)()
{
  ChannelPickerElementModel.identifier.getter();
  v0 = ChannelPickerElementModel.sectionId.getter();
  v2 = v1;

  MEMORY[0x21CECC330](v0, v2);

  sub_219BF5524();
}

uint64_t ChannelPickerElementModel.hashValue.getter()
{
  sub_219BF7AA4();
  ChannelPickerElementModel.identifier.getter();
  v0 = ChannelPickerElementModel.sectionId.getter();
  v2 = v1;

  MEMORY[0x21CECC330](v0, v2);

  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218981168()
{
  sub_219BF7AA4();
  ChannelPickerElementModel.identifier.getter();
  v0 = ChannelPickerElementModel.sectionId.getter();
  v2 = v1;

  MEMORY[0x21CECC330](v0, v2);

  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_21898120C()
{
  ChannelPickerElementModel.identifier.getter();
  v0 = ChannelPickerElementModel.sectionId.getter();
  v2 = v1;

  MEMORY[0x21CECC330](v0, v2);

  sub_219BF5524();
}

uint64_t sub_2189812AC()
{
  sub_219BF7AA4();
  ChannelPickerElementModel.identifier.getter();
  v0 = ChannelPickerElementModel.sectionId.getter();
  v2 = v1;

  MEMORY[0x21CECC330](v0, v2);

  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_21898134C()
{
  v0 = ChannelPickerElementModel.identifier.getter();
  v2 = v1;
  if (v0 == ChannelPickerElementModel.identifier.getter() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_219BF78F4();
  }

  return v4 & 1;
}

uint64_t static ChannelPickerElementModel.== infix(_:_:)()
{
  v0 = ChannelPickerElementModel.identifier.getter();
  v2 = v1;
  if (v0 == ChannelPickerElementModel.identifier.getter() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_219BF78F4();
  }

  return v4 & 1;
}

uint64_t sub_218981504@<X0>(unsigned int *a1@<X0>, uint64_t (*a2)(void)@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = type metadata accessor for ChannelPickerElementModel();
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218980A74(v8, v12);
  if (swift_getEnumCaseMultiPayload() - 1 >= 2)
  {
    v16 = *a1;
    v17 = a2(0);
    (*(*(v17 - 8) + 104))(a4, v16, v17);
    return sub_218980D88(v12, type metadata accessor for ChannelPickerElementModel);
  }

  else
  {
    sub_218980D88(v12, type metadata accessor for ChannelPickerElementModel);
    v13 = *a3;
    v14 = a2(0);
    return (*(*(v14 - 8) + 104))(a4, v13, v14);
  }
}

uint64_t sub_218981788(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ChannelPickerElementModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2189817F4@<X0>(unsigned int *a1@<X2>, uint64_t (*a2)(void)@<X3>, unsigned int *a3@<X4>, uint64_t a4@<X8>)
{
  v9 = MEMORY[0x28223BE20](v4);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218980A74(v9, v11);
  if (swift_getEnumCaseMultiPayload() - 1 >= 2)
  {
    v15 = *a1;
    v16 = a2(0);
    (*(*(v16 - 8) + 104))(a4, v15, v16);
    return sub_218980D88(v11, type metadata accessor for ChannelPickerElementModel);
  }

  else
  {
    sub_218980D88(v11, type metadata accessor for ChannelPickerElementModel);
    v12 = *a3;
    v13 = a2(0);
    return (*(*(v13 - 8) + 104))(a4, v12, v13);
  }
}

uint64_t sub_218981960()
{
  result = type metadata accessor for ChannelPickerEngagementModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2189819E0()
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

uint64_t sub_218981AEC()
{
  v1 = *v0;
  if (swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *(swift_allocObject() + 16) = Strong;
      swift_unknownObjectRetain();
      sub_219BE3494();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  sub_219BF5054();
  sub_218981CD4();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = sub_219BF1AE4();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = sub_219A10570();
      [v4 setEnabled_];
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = *(v1 + 80);
  v6[3] = *(v1 + 88);
  v6[4] = v5;
}

uint64_t sub_218981CD4()
{
  if (qword_280E8D930 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  v0 = CACurrentMediaTime();
  sub_219BE3204();
  sub_2187D9028();
  v1 = sub_219BF66A4();
  sub_219BE95D4();
  sub_219BE2F84();

  v2 = sub_219BF66A4();
  *(swift_allocObject() + 16) = v0;
  sub_219BE2F94();

  v3 = sub_219BF66A4();
  *(swift_allocObject() + 16) = v0;
  sub_219BE2FE4();
}

uint64_t sub_218981F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_218954264();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189864D8();
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_218986854(a1, v14, sub_2189864D8);
    v16 = sub_219BF1584();
    if ((*(*(v16 - 8) + 48))(v14, 1, v16) == 1)
    {
      v24 = a3;
      v25 = a1;
      sub_219BE6EC4();
      v29 = v26;
      sub_2189860B4();
      sub_218985F8C(&qword_280EE5440, sub_2189860B4);
      sub_219BE7B94();

      sub_218985F8C(&qword_280EE3640, sub_218954264);
      sub_219BF5DF4();
      sub_219BF5E84();
      (*(v9 + 8))(v11, v8);
      if (v28 == v27)
      {
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_218981CD4();
        }
      }

      else
      {
        v17 = v24;
        v29 = (*(a4 + 72))(v24, a4);
        v18 = swift_allocObject();
        swift_beginAccess();
        swift_weakLoadStrong();
        swift_weakInit();

        v19 = swift_allocObject();
        v19[2] = v17;
        v19[3] = a4;
        v19[4] = v18;
        sub_2189863C8();
        sub_218985F8C(&qword_280EE5630, sub_2189863C8);

        sub_219BE6EF4();
      }
    }

    else
    {
      sub_2189867CC(v14, sub_2189864D8);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        v20 = off_282A97B00[0];
        type metadata accessor for HistoryFeedViewController();
        v20();
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v21 = sub_219BF1B14();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v22 = sub_219A10570();
        [v22 setEnabled_];
        swift_unknownObjectRelease();
      }

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_21898242C(uint64_t a1)
{
  v2 = sub_219BE85F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(v3 + 16))(v5, a1, v2);
    if ((*(v3 + 88))(v5, v2) == *MEMORY[0x277D6DFA0])
    {
      (*(v3 + 8))(v5, v2);
      if (swift_unknownObjectWeakLoadStrong())
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          *(swift_allocObject() + 16) = Strong;
          swift_unknownObjectRetain();
          sub_219BE3494();
          swift_unknownObjectRelease();
        }

        return swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {

      return (*(v3 + 8))(v5, v2);
    }
  }

  return result;
}

uint64_t sub_21898261C()
{
  v1 = *v0;
  sub_219BE6EC4();
  v2 = sub_2189829B0(&qword_280EE5440, sub_2189860B4);

  if ((v2 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *(swift_allocObject() + 16) = Strong;
      swift_unknownObjectRetain();
      sub_219BE3494();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = *(v1 + 80);
  *(v5 + 24) = *(v1 + 88);
  *(v5 + 32) = v4;
  *(v5 + 40) = HIBYTE(v2) & 1;

  sub_219BE6F24();
}

uint64_t sub_2189829B0(unint64_t *a1, void (*a2)(uint64_t))
{
  v18[1] = *v2;
  v5 = sub_219BE61B4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v18 - v10;
  v20 = v2;
  sub_218985F8C(a1, a2);
  sub_219BE7B64();
  v12 = *MEMORY[0x277D6D518];
  v13 = *(v6 + 104);
  v13(v9, v12, v5);
  v19 = sub_219BE61A4();
  v14 = *(v6 + 8);
  v14(v9, v5);
  v14(v11, v5);
  sub_219BE7B64();
  v13(v9, v12, v5);
  v15 = sub_219BE61A4();
  v14(v9, v5);
  v14(v11, v5);
  if (v15)
  {
    v16 = 256;
  }

  else
  {
    v16 = 0;
  }

  return v16 & 0xFFFFFFFE | v19 & 1;
}

uint64_t sub_218982BD8(uint64_t a1, uint64_t a2, char a3)
{
  sub_218954264();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((a3 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
    {

      sub_219BE6EC4();
      v10[3] = v10[4];
      sub_2189860B4();
      sub_218985F8C(&qword_280EE5440, sub_2189860B4);
      sub_219BE7B94();

      sub_218985F8C(&qword_280EE3640, sub_218954264);
      sub_219BF5DF4();
      sub_219BF5E84();
      (*(v6 + 8))(v8, v5);
      type metadata accessor for HistoryFeedInteractor();
      sub_218EC0D98();
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_218982E1C(void *a1)
{
  v58 = *v1;
  v54 = type metadata accessor for HistoryFeedExpandRequest();
  MEMORY[0x28223BE20](v54);
  v61 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for HistoryFeedModel(0);
  MEMORY[0x28223BE20](v62);
  v63 = (&v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for HistoryFeedGapLocation(0);
  v55 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v56 = v7;
  v57 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v60 = &v50 - v8;
  sub_218985DB4(0, &unk_280EE5BE0, sub_218985E18, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v50 - v10;
  sub_218985E18();
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v64 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954264();
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v1;
  sub_219BE6EC4();
  v66 = *&v65[0];
  sub_2189860B4();
  sub_218985F8C(&qword_280EE5440, sub_2189860B4);
  sub_219BE7B94();
  v21 = v17;

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE1D74();
  sub_219BEB1C4();

  v22 = v14;
  if ((*(v14 + 48))(v11, 1, v13) == 1)
  {
    sub_218986F94(v11, &unk_280EE5BE0, sub_218985E18);
    v23 = a1[3];
    v24 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v23);
    MEMORY[0x21CEC0B20](0, v23, v24);
    return (*(v18 + 8))(v20, v21);
  }

  else
  {
    v51 = a1;
    v52 = v18;
    v53 = v20;
    v26 = v64;
    v27 = v13;
    (*(v14 + 32))(v64, v11, v13);
    v28 = v63;
    sub_219BE5FC4();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_2189867CC(v28, type metadata accessor for HistoryFeedModel);
      v29 = v51[3];
      v30 = v51[4];
      __swift_project_boxed_opaque_existential_1(v51, v29);
      MEMORY[0x21CEC0B20](0, v29, v30);
      (*(v14 + 8))(v26, v27);
      return (*(v52 + 8))(v53, v21);
    }

    else
    {
      v62 = v27;
      v32 = *v28;
      v31 = *(v28 + 1);
      sub_218986048();
      v34 = *(v33 + 48);
      v50 = type metadata accessor for HistoryFeedGapLocation;
      v35 = v28 + v34;
      v36 = v60;
      sub_2189868BC(v35, v60, type metadata accessor for HistoryFeedGapLocation);
      v37 = *(v54 + 20);
      v63 = type metadata accessor for HistoryFeedGapLocation;
      v38 = v61;
      v39 = sub_218986854(v36, v61 + v37, type metadata accessor for HistoryFeedGapLocation);
      *v38 = v32;
      *(v38 + 8) = v31;
      MEMORY[0x28223BE20](v39);
      *(&v50 - 2) = v59;
      *(&v50 - 1) = v38;
      sub_219BE3204();
      sub_2187D9028();
      v40 = sub_219BF66A4();
      sub_219BE95D4();
      v41 = v58;
      sub_219BE2F84();

      v42 = sub_219BF66A4();
      v43 = v51;
      sub_218718690(v51, v65);
      v44 = swift_allocObject();
      v54 = v21;
      sub_2186CB1F0(v65, v44 + 16);
      sub_219BE2F94();

      v45 = sub_219BF66A4();
      sub_218718690(v43, v65);
      v46 = v60;
      v47 = v57;
      sub_218986854(v60, v57, v63);
      v48 = (*(v55 + 80) + 72) & ~*(v55 + 80);
      v49 = swift_allocObject();
      *(v49 + 16) = *(v41 + 80);
      *(v49 + 24) = *(v41 + 88);
      sub_2186CB1F0(v65, v49 + 32);
      sub_2189868BC(v47, v49 + v48, v50);
      sub_219BE2FE4();

      sub_2189867CC(v46, type metadata accessor for HistoryFeedGapLocation);
      (*(v22 + 8))(v64, v62);
      (*(v52 + 8))(v53, v54);
      return sub_2189867CC(v61, type metadata accessor for HistoryFeedExpandRequest);
    }
  }
}

uint64_t sub_218983624(void *a1, uint64_t a2)
{
  (*(*(*a2 + 88) + 48))(*a1, a1[1], a1[2], *(*a2 + 80));
  sub_2189863C8();
  sub_218985F8C(&qword_280EE5630, sub_2189863C8);
  v2 = sub_219BE6E84();

  return v2;
}

uint64_t sub_21898372C(uint64_t a1, uint64_t *a2, void *a3)
{
  v11[2] = a1;
  v4 = *a2;
  sub_218954264();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_219BE6EC4();
    v11[5] = v11[7];
    sub_2189860B4();
    v11[1] = v4;
    sub_218985F8C(&qword_280EE5440, sub_2189860B4);
    sub_219BE7B94();

    sub_218985F8C(&qword_280EE3640, sub_218954264);
    sub_219BF5DF4();
    sub_219BF5E84();
    (*(v7 + 8))(v9, v6);
    type metadata accessor for HistoryFeedInteractor();
    sub_218EC0D98();
    swift_unknownObjectRelease();
  }

  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  return sub_219BE9D74();
}

uint64_t sub_218983988(void *a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = *a2;
  v8 = type metadata accessor for HistoryFeedFailedData();
  MEMORY[0x28223BE20](v8);
  v10 = (v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (sub_219BE81D4())
  {
    v11 = a3[3];
    v12 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v11);
    return MEMORY[0x21CEC0B20](0, v11, v12);
  }

  else
  {
    v27 = a4;
    v28 = v7;
    if (qword_280E8D930 != -1)
    {
      swift_once();
    }

    v26 = qword_280F617D8;
    v25[1] = sub_219BF61F4();
    sub_2186F20D4();
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_219C09EC0;
    *&v29[0] = 0;
    *(&v29[0] + 1) = 0xE000000000000000;
    sub_2186CFDE4(0, &unk_280EE3DF0);
    sub_219BF7484();
    v15 = v29[0];
    v16 = MEMORY[0x277D837D0];
    *(v14 + 56) = MEMORY[0x277D837D0];
    v17 = sub_2186FC3BC();
    *(v14 + 64) = v17;
    *(v14 + 32) = v15;
    *&v29[0] = 0;
    *(&v29[0] + 1) = 0xE000000000000000;
    v30 = a1;
    sub_2186CFDE4(0, &qword_280E8B580);
    sub_219BF7484();
    v18 = v29[0];
    *(v14 + 96) = v16;
    *(v14 + 104) = v17;
    *(v14 + 72) = v18;
    sub_219BE5314();

    __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    v19 = sub_219BE1D74();
    v21 = v20;
    sub_218986854(v27, v10 + *(v8 + 20), type metadata accessor for HistoryFeedGapLocation);
    *v10 = v19;
    v10[1] = v21;
    v22 = (*(*(v28 + 88) + 80))(v10, *(v28 + 80));
    sub_2189867CC(v10, type metadata accessor for HistoryFeedFailedData);
    v30 = v22;
    sub_218718690(a3, v29);
    v23 = swift_allocObject();
    sub_2186CB1F0(v29, v23 + 16);
    *(v23 + 56) = a1;
    v24 = a1;
    sub_2189863C8();
    sub_218985F8C(&qword_280EE5630, sub_2189863C8);
    sub_219BE6EF4();
  }
}

uint64_t sub_218983D34(uint64_t a1, char a2, uint64_t a3)
{
  v20 = a3;
  sub_218985DB4(0, &qword_27CC0B7D8, type metadata accessor for HistoryFeedRouteModel, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - v6;
  v8 = type metadata accessor for HistoryFeedRouteModel();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BDE294();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x277D2FEF8];
  if ((a2 & 1) == 0)
  {
    v16 = MEMORY[0x277D2FF08];
  }

  (*(v13 + 104))(v15, *v16, v12);
  sub_218984050(a1, v15, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    (*(v13 + 8))(v15, v12);
    return sub_218986F94(v7, &qword_27CC0B7D8, type metadata accessor for HistoryFeedRouteModel);
  }

  else
  {
    sub_2189868BC(v7, v11, type metadata accessor for HistoryFeedRouteModel);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      __swift_project_boxed_opaque_existential_1((Strong + 48), *(Strong + 72));
      sub_2190944C4(v11, v20);
      sub_2189867CC(v11, type metadata accessor for HistoryFeedRouteModel);
      (*(v13 + 8))(v15, v12);
      return swift_unknownObjectRelease();
    }

    else
    {
      sub_2189867CC(v11, type metadata accessor for HistoryFeedRouteModel);
      return (*(v13 + 8))(v15, v12);
    }
  }
}

uint64_t sub_218984050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v56 = a2;
  v59 = a3;
  v54 = *v4;
  v6 = sub_219BDE744();
  v57 = *(v6 - 8);
  v58 = v6;
  MEMORY[0x28223BE20](v6);
  v55 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BF0634();
  v51 = *(v8 - 8);
  v52 = v8;
  MEMORY[0x28223BE20](v8);
  v53 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D83D88];
  sub_218985DB4(0, &unk_280EE8AA0, MEMORY[0x277D30260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v48 = &v45 - v12;
  sub_218985DB4(0, &unk_280EE8C40, MEMORY[0x277D30018], v10);
  MEMORY[0x28223BE20](v13 - 8);
  v46 = &v45 - v14;
  sub_218985E18();
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_219BDE7A4();
  v49 = *(v20 - 8);
  v50 = v20;
  MEMORY[0x28223BE20](v20);
  v47 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218985EAC();
  v23 = v22;
  v24 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v26 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for HistoryFeedModel(0);
  MEMORY[0x28223BE20](v27);
  v29 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE5FC4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v45 = v24;
      v37 = *(v24 + 32);
      v38 = v23;
      v37(v26, v29, v23);
      (*(v17 + 16))(v19, a1, v16);
      sub_219BF07D4();
      swift_unknownObjectRetain();

      v39 = sub_219BDE4D4();
      (*(*(v39 - 8) + 56))(v46, 1, 1, v39);
      v40 = sub_219BDEA34();
      (*(*(v40 - 8) + 56))(v48, 1, 1, v40);
      (*(v51 + 104))(v53, *MEMORY[0x277D32EC0], v52);
      sub_218985F8C(&qword_280ED8650, type metadata accessor for HistoryFeedModel);
      v41 = v47;
      sub_219BDE794();
      swift_getWitnessTable();
      v42 = v55;
      sub_219BDEB64();
      sub_219BDE734();
      sub_219BDEC64();

      v36 = v59;
      sub_219BDE724();
      (*(v57 + 8))(v42, v58);
      (*(v49 + 8))(v41, v50);
      (*(v45 + 8))(v26, v38);
      v35 = 0;
      goto LABEL_7;
    }

    sub_218985FD4();
    v32 = *(v31 + 48);
    v33 = sub_219BF1584();
    (*(*(v33 - 8) + 8))(&v29[v32], v33);
  }

  else
  {

    sub_218986048();
    v29 += *(v34 + 48);
  }

  sub_2189867CC(v29, type metadata accessor for HistoryFeedGapLocation);
  v35 = 1;
  v36 = v59;
LABEL_7:
  v43 = type metadata accessor for HistoryFeedRouteModel();
  return (*(*(v43 - 8) + 56))(v36, v35, 1, v43);
}

uint64_t sub_218984790(void *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(*a2 + 88);
  v6 = *(*a2 + 80);
  (*(v5 + 40))(*a1, v2, v4, v6, v5);
  sub_2189863C8();
  sub_218985F8C(&qword_280EE5630, sub_2189863C8);
  sub_219BE6E84();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = v5;
  v7[4] = v3;
  v7[5] = v2;
  v7[6] = v4;

  v8 = sub_219BE2E54();
  sub_219BE95D4();
  v9 = sub_219BE2F74();

  return v9;
}

uint64_t sub_218984938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for HistoryFeedServiceConfig();
  sub_218985F8C(&qword_280EC18D0, type metadata accessor for HistoryFeedServiceConfig);
  if ((sub_219BEF394() & 1) != 0 && (v4 = *(sub_219BEF3E4() + 16), , !v4))
  {
    type metadata accessor for HistoryFeedInteractor.Errors();
    swift_getWitnessTable();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    v5 = sub_219BE95D4();
    return (*(*(v5 - 8) + 16))(a2, a1, v5);
  }
}

uint64_t sub_218984A8C()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *(swift_allocObject() + 16) = Strong;
      swift_unknownObjectRetain();
      sub_219BE3494();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  if (qword_280E8D930 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_219C09BA0;
  sub_219BF5CD4();
  v2 = MEMORY[0x277D83A80];
  *(v1 + 56) = MEMORY[0x277D839F8];
  *(v1 + 64) = v2;
  *(v1 + 32) = v3;
  sub_219BF6214();
  sub_219BE5314();
}

uint64_t sub_218984BEC(void *a1)
{
  if (qword_280E8D930 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186F20D4();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C09EC0;
  sub_219BF5CD4();
  v3 = MEMORY[0x277D83A80];
  *(v2 + 56) = MEMORY[0x277D839F8];
  *(v2 + 64) = v3;
  *(v2 + 32) = v4;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  *(v2 + 96) = MEMORY[0x277D837D0];
  *(v2 + 104) = sub_2186FC3BC();
  *(v2 + 72) = 0;
  *(v2 + 80) = 0xE000000000000000;
  sub_219BE5314();

  return sub_218984D58(a1);
}

uint64_t sub_218984D58(void *a1)
{
  v2 = sub_219BF1584();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = v24 - v7;
  sub_2189864D8();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[1] = a1;
  v12 = a1;
  sub_2186CFDE4(0, &qword_280E8B580);
  type metadata accessor for HistoryFeedInteractor.Errors();
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    sub_219BF1B74();
    if ((*(v3 + 48))(v11, 1, v2) == 1)
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        if (qword_27CC086C0 != -1)
        {
          swift_once();
        }

        v14 = __swift_project_value_buffer(v2, qword_27CCD8D68);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v16 = Strong;
          (*(v3 + 16))(v8, v14, v2);
          v17 = (*(v3 + 80) + 24) & ~*(v3 + 80);
          v18 = swift_allocObject();
          *(v18 + 16) = v16;
          (*(v3 + 32))(v18 + v17, v8, v2);
          swift_unknownObjectRetain();
          sub_219BE3494();

          swift_unknownObjectRelease();
        }

        return swift_unknownObjectRelease();
      }
    }

    else
    {
      v19 = *(v3 + 32);
      v19(v6, v11, v2);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v20 = swift_unknownObjectWeakLoadStrong();
        if (v20)
        {
          v21 = v20;
          (*(v3 + 16))(v8, v6, v2);
          v22 = (*(v3 + 80) + 24) & ~*(v3 + 80);
          v23 = swift_allocObject();
          *(v23 + 16) = v21;
          v19((v23 + v22), v8, v2);
          swift_unknownObjectRetain();
          sub_219BE3494();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      return (*(v3 + 8))(v6, v2);
    }
  }

  return result;
}

uint64_t *sub_218985144()
{
  v1 = *v0;
  sub_218774F78((v0 + 2));

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_218985290()
{
  sub_218985144();

  return swift_deallocClassInstance();
}

uint64_t sub_218985300(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_21898535C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a3;
  v24 = a4;
  v25 = a1;
  v26 = a2;
  v27 = *v5;
  refreshed = type metadata accessor for HistoryFeedRefreshRequest();
  MEMORY[0x28223BE20](refreshed);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218954264();
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE6EC4();
  v28 = v29;
  sub_2189860B4();
  sub_218985F8C(&qword_280EE5440, sub_2189860B4);
  sub_219BE7B94();

  v15 = sub_2195CF9D4();
  (*(v12 + 8))(v14, v11);
  if ((~v15 & 0xF000000000000007) != 0)
  {
    type metadata accessor for HistoryFeedServiceConfig();
    sub_218985F8C(&qword_280EC18D0, type metadata accessor for HistoryFeedServiceConfig);
    v17 = v23;

    v18 = v24;

    v19 = sub_219BEE7A4();
    *v9 = v17;
    v9[1] = v18;
    v9[2] = a5;
    MEMORY[0x28223BE20](v19);
    v20 = v26;
    *(&v22 - 4) = v25;
    *(&v22 - 3) = v20;
    *(&v22 - 2) = v9;
    type metadata accessor for HistoryFeedRefreshResult();
    sub_219BE3204();
    sub_2187D9028();
    v21 = sub_219BF66A4();
    *(swift_allocObject() + 16) = a5;

    sub_219BE2F94();
    sub_21885AB78(v15);

    return sub_2189867CC(v9, type metadata accessor for HistoryFeedRefreshRequest);
  }

  else
  {
    if (qword_280E8D930 != -1)
    {
      swift_once();
    }

    sub_219BF61F4();
    sub_219BE5314();
    return sub_218981CD4();
  }
}

uint64_t sub_218985748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  refreshed = type metadata accessor for HistoryFeedRefreshRequest();
  v6 = *(refreshed - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](refreshed - 8);
  v8 = CACurrentMediaTime();
  if (qword_280E8D930 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  v9 = sub_219BE5314();
  MEMORY[0x28223BE20](v9);
  v15[-2] = a1;
  v15[-1] = a3;
  sub_218985DB4(0, &qword_280E8EC00, sub_218731D50, MEMORY[0x277D83940]);
  sub_219BE3204();
  sub_218986854(a3, v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HistoryFeedRefreshRequest);
  v10 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  sub_2189868BC(v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for HistoryFeedRefreshRequest);
  v12 = sub_219BE2E54();
  type metadata accessor for HistoryFeedRefreshResult();
  v13 = sub_219BE2F64();

  return v13;
}

uint64_t sub_2189859BC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  sub_219BDEC34();
  v6 = *(v5 + 88);
  v7 = *(v5 + 80);
  (*(v6 + 56))(a1, v7, v6);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v6;
  v9[4] = v8;
  v9[5] = a3;
  sub_2189863C8();
  sub_218985F8C(&qword_280EE5630, sub_2189863C8);

  sub_219BE6EF4();
}

uint64_t sub_218985B70(uint64_t a1)
{
  v2 = sub_219BE85F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(v3 + 16))(v5, a1, v2);
    v7 = (*(v3 + 88))(v5, v2);
    v8 = *MEMORY[0x277D6DF98];
    (*(v3 + 8))(v5, v2);
    if (v7 == v8)
    {
      sub_218981CD4();
    }

    else if (swift_unknownObjectWeakLoadStrong())
    {
      type metadata accessor for HistoryFeedInteractor();

      sub_218EC0D98();
      swift_unknownObjectRelease();
    }

    sub_219BDEC84();
  }

  return result;
}

void sub_218985DB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_218985E18()
{
  if (!qword_280EE5BF0)
  {
    type metadata accessor for HistoryFeedModel(255);
    sub_218985F8C(&qword_280ED8650, type metadata accessor for HistoryFeedModel);
    v0 = sub_219BE5FE4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5BF0);
    }
  }
}

void sub_218985EAC()
{
  if (!qword_280E90E50)
  {
    type metadata accessor for HeadlineModel(255);
    sub_218985F8C(&qword_280EDE358, type metadata accessor for HeadlineModel);
    sub_218985F8C(&qword_280EDE360, type metadata accessor for HeadlineModel);
    v0 = sub_219BF0854();
    if (!v1)
    {
      atomic_store(v0, &qword_280E90E50);
    }
  }
}

uint64_t sub_218985F8C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_218985FD4()
{
  if (!qword_280EC83B8[0])
  {
    type metadata accessor for HistoryFeedGapLocation(255);
    sub_219BF1584();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_280EC83B8);
    }
  }
}

void sub_218986048()
{
  if (!qword_280E8F9B0)
  {
    type metadata accessor for HistoryFeedGapLocation(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8F9B0);
    }
  }
}

void sub_2189860B4()
{
  if (!qword_280EE5430)
  {
    type metadata accessor for HistoryFeedSectionDescriptor();
    type metadata accessor for HistoryFeedModel(255);
    sub_218985F8C(&qword_280EB4200, type metadata accessor for HistoryFeedSectionDescriptor);
    sub_218985F8C(&qword_280ED8650, type metadata accessor for HistoryFeedModel);
    v0 = sub_219BE6FA4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5430);
    }
  }
}

void sub_218986218()
{
  if (!qword_280E909F0)
  {
    type metadata accessor for HistoryFeedServiceConfig();
    sub_218985F8C(&qword_280EC18D0, type metadata accessor for HistoryFeedServiceConfig);
    v0 = sub_219BF0F94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E909F0);
    }
  }
}

uint64_t sub_2189862AC(void *a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for HistoryFeedGapLocation(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 72) & ~*(v5 + 80));

  return sub_218983988(a1, a2, (v2 + 32), v6);
}

uint64_t type metadata accessor for HistoryFeedFailedData()
{
  result = qword_27CC0B8C0;
  if (!qword_27CC0B8C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2189863C8()
{
  if (!qword_280EE5628)
  {
    type metadata accessor for HistoryFeedSectionDescriptor();
    type metadata accessor for HistoryFeedModel(255);
    sub_218985F8C(&qword_280EB4200, type metadata accessor for HistoryFeedSectionDescriptor);
    sub_218985F8C(&qword_280ED8650, type metadata accessor for HistoryFeedModel);
    v0 = sub_219BE6E74();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5628);
    }
  }
}

void sub_2189864D8()
{
  if (!qword_280E90770)
  {
    sub_2186F16B4();
    v0 = sub_219BF1B54();
    if (!v1)
    {
      atomic_store(v0, &qword_280E90770);
    }
  }
}

uint64_t sub_218986548()
{
  v0 = off_282A928B8;
  type metadata accessor for HistoryFeedDataManager();
  return v0();
}

uint64_t sub_218986614()
{
  sub_219BF1584();

  return sub_219A118B4();
}

uint64_t sub_21898669C(uint64_t a1)
{
  (*(*(*v1 + 88) + 64))(a1, *(*v1 + 80));
  sub_2189863C8();
  sub_218985F8C(&qword_280EE5630, sub_2189863C8);
  sub_219BE6EF4();
}

uint64_t sub_2189867CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218986854(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2189868BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_218986994(uint64_t a1)
{
  sub_219BE8664();
  v2 = sub_219BE7BC4();

  v3 = [v2 indexPathsForVisibleItems];

  sub_219BDC104();
  v4 = sub_219BF5924();

  LOBYTE(v3) = sub_2190890C0(a1, v4);

  if ((v3 & 1) == 0)
  {
    sub_219BE8664();
    v5 = sub_219BE7BC4();

    v6 = sub_219BDC094();
    [v5 scrollToItemAtIndexPath:v6 atScrollPosition:2 animated:0];
  }
}

uint64_t sub_218986AB4(uint64_t a1, uint64_t a2, char a3)
{
  v36 = a1;
  v5 = MEMORY[0x277D83D88];
  sub_218985DB4(0, &unk_280EE9BB0, MEMORY[0x277CC9AF8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v31 - v7;
  v9 = sub_219BDC104();
  v35 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v34 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218985DB4(0, &unk_280EE5BE0, sub_218985E18, v5);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v31 - v12;
  sub_218985E18();
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954264();
  v20 = v19;
  result = MEMORY[0x28223BE20](v19);
  v24 = &v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 1) == 0)
  {
    v32 = v9;
    v33 = v22;
    v31 = v3;
    sub_219BDEC74();
    sub_219BDEDC4();
    sub_219BEB1C4();

    if ((*(v16 + 48))(v13, 1, v15) == 1)
    {
      (*(v33 + 8))(v24, v20);
      v25 = &unk_280EE5BE0;
      v26 = sub_218985E18;
      v27 = v13;
      return sub_218986F94(v27, v25, v26);
    }

    (*(v16 + 32))(v18, v13, v15);
    sub_219BEB2F4();
    v28 = v35;
    v29 = v32;
    if ((*(v35 + 48))(v8, 1, v32) == 1)
    {
      (*(v16 + 8))(v18, v15);
      (*(v33 + 8))(v24, v20);
      v25 = &unk_280EE9BB0;
      v26 = MEMORY[0x277CC9AF8];
      v27 = v8;
      return sub_218986F94(v27, v25, v26);
    }

    v30 = v34;
    (*(v28 + 32))(v34, v8, v29);
    if (sub_219BDEC24())
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_218986994(v30);
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }

      (*(v28 + 8))(v30, v32);
    }

    else
    {
      (*(v28 + 8))(v30, v29);
    }

    (*(v16 + 8))(v18, v15);
    return (*(v33 + 8))(v24, v20);
  }

  return result;
}

uint64_t sub_218986F94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_218985DB4(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_218987004()
{
  if (!qword_27CC0B7E0)
  {
    type metadata accessor for AudioPlaylistFeedSectionDescriptor();
    type metadata accessor for AudioPlaylistFeedModel();
    sub_218985F8C(&unk_27CC11BE0, type metadata accessor for AudioPlaylistFeedSectionDescriptor);
    sub_218985F8C(&unk_27CC0B7F0, type metadata accessor for AudioPlaylistFeedModel);
    v0 = sub_219BE6FA4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0B7E0);
    }
  }
}

void sub_2189870F0()
{
  if (!qword_27CC0B800)
  {
    type metadata accessor for MagazineGridItemModel();
    sub_21895164C();
    sub_218985F8C(&unk_27CC0B810, type metadata accessor for MagazineGridItemModel);
    v0 = sub_219BE6FA4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0B800);
    }
  }
}

void sub_2189871A8()
{
  if (!qword_280EE5500)
  {
    type metadata accessor for SearchSectionDescriptor();
    type metadata accessor for SearchModel(255);
    sub_218985F8C(qword_280EC3630, type metadata accessor for SearchSectionDescriptor);
    sub_218985F8C(&qword_280EDF480, type metadata accessor for SearchModel);
    v0 = sub_219BE6FA4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5500);
    }
  }
}

void sub_218987294()
{
  if (!qword_27CC0B820)
  {
    type metadata accessor for SharedWithYouFeedSectionDescriptor();
    type metadata accessor for SharedWithYouFeedModel(255);
    sub_218985F8C(&qword_27CC0FB80, type metadata accessor for SharedWithYouFeedSectionDescriptor);
    sub_218985F8C(&unk_27CC0B830, type metadata accessor for SharedWithYouFeedModel);
    v0 = sub_219BE6FA4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0B820);
    }
  }
}

void sub_218987380()
{
  if (!qword_27CC0B840)
  {
    type metadata accessor for SportsManagementSectionDescriptor();
    type metadata accessor for SportsManagementModel();
    sub_218985F8C(&qword_27CC0F9E0, type metadata accessor for SportsManagementSectionDescriptor);
    sub_218985F8C(&qword_27CC0AF90, type metadata accessor for SportsManagementModel);
    v0 = sub_219BE6FA4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0B840);
    }
  }
}

void sub_21898746C()
{
  if (!qword_280EE54B0)
  {
    type metadata accessor for AudioFeedSectionDescriptor();
    type metadata accessor for AudioFeedModel(255);
    sub_218985F8C(&qword_280EBC460, type metadata accessor for AudioFeedSectionDescriptor);
    sub_218985F8C(&qword_280EDCBF0, type metadata accessor for AudioFeedModel);
    v0 = sub_219BE6FA4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE54B0);
    }
  }
}

void sub_218987558()
{
  if (!qword_27CC0B850)
  {
    type metadata accessor for SportsManagementDetailSectionDescriptor();
    type metadata accessor for SportsManagementDetailModel();
    sub_218985F8C(&qword_27CC17040, type metadata accessor for SportsManagementDetailSectionDescriptor);
    sub_218985F8C(&qword_27CC0B040, type metadata accessor for SportsManagementDetailModel);
    v0 = sub_219BE6FA4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0B850);
    }
  }
}

void sub_218987644()
{
  if (!qword_280EE54E0)
  {
    type metadata accessor for TagFeedModel(255);
    sub_2186F7410();
    sub_218985F8C(&unk_280EDE820, type metadata accessor for TagFeedModel);
    v0 = sub_219BE6FA4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE54E0);
    }
  }
}

void sub_2189876FC()
{
  if (!qword_27CC0B860)
  {
    type metadata accessor for MagazineCatalogSectionDescriptor(255);
    type metadata accessor for MagazineCatalogModel();
    sub_218985F8C(&unk_27CC0AE10, type metadata accessor for MagazineCatalogSectionDescriptor);
    sub_218985F8C(&qword_27CC0B870, type metadata accessor for MagazineCatalogModel);
    v0 = sub_219BE6FA4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0B860);
    }
  }
}

void sub_2189877E8()
{
  if (!qword_27CC0B880)
  {
    type metadata accessor for SearchMoreSectionDescriptor();
    type metadata accessor for SearchMoreModel(255);
    sub_218985F8C(&unk_27CC17410, type metadata accessor for SearchMoreSectionDescriptor);
    sub_218985F8C(&qword_27CC0B890, type metadata accessor for SearchMoreModel);
    v0 = sub_219BE6FA4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0B880);
    }
  }
}

void sub_2189878D4()
{
  if (!qword_280EE5470)
  {
    type metadata accessor for SavedFeedSectionDescriptor();
    type metadata accessor for SavedFeedModel(255);
    sub_218985F8C(&qword_280EBA5A0, type metadata accessor for SavedFeedSectionDescriptor);
    sub_218985F8C(&unk_280EDBC60, type metadata accessor for SavedFeedModel);
    v0 = sub_219BE6FA4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5470);
    }
  }
}

void sub_2189879C0()
{
  if (!qword_27CC0B8A0)
  {
    type metadata accessor for AudioHistoryFeedSectionDescriptor();
    type metadata accessor for AudioHistoryFeedModel();
    sub_218985F8C(&unk_27CC0DC20, type metadata accessor for AudioHistoryFeedSectionDescriptor);
    sub_218985F8C(&unk_27CC0B8B0, type metadata accessor for AudioHistoryFeedModel);
    v0 = sub_219BE6FA4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0B8A0);
    }
  }
}

uint64_t sub_218987ADC()
{
  result = type metadata accessor for HistoryFeedGapLocation(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_218987B80(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_218987BC8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t _s7NewsUI218MagazineSectionTagV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_219BF78F4();
  }
}

uint64_t sub_218987D38(uint64_t a1)
{
  v2 = sub_218987DB4(&unk_27CC0B8D8);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_218987DB4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PaywallTagFeedGroup();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_218987DF8(unint64_t a1)
{
  v4 = v1;
  v5 = a1;
  if (a1 >> 62)
  {
LABEL_82:
    v6 = sub_219BF7214();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    goto LABEL_12;
  }

  v53 = MEMORY[0x277D84F90];
  v8 = &v53;
  sub_21870B65C(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v7 = v53;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x21CECE0F0](v9, v5);
      }

      else
      {
        v10 = *(v5 + 8 * v9 + 32);
        swift_unknownObjectRetain();
      }

      v11 = [v10 identifier];
      v12 = sub_219BF5414();
      v14 = v13;
      swift_unknownObjectRelease();

      v53 = v7;
      v3 = *(v7 + 16);
      v15 = *(v7 + 24);
      if (v3 >= v15 >> 1)
      {
        sub_21870B65C((v15 > 1), v3 + 1, 1);
        v7 = v53;
      }

      ++v9;
      *(v7 + 16) = v3 + 1;
      v16 = v7 + 16 * v3;
      *(v16 + 32) = v12;
      *(v16 + 40) = v14;
    }

    while (v6 != v9);
LABEL_12:
    v17 = sub_218845F78(v7);

    v18 = *(v4 + 24);

    v20 = sub_2194796A0(v19, v17);
    v6 = *(v4 + 16);
    v50 = v18;
    v21 = v6 & 0xFFFFFFFFFFFFFF8;
    if (v6 >> 62)
    {
      v51 = sub_219BF7214();
    }

    else
    {
      v51 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v2 = 0;
    v22 = v6 & 0xC000000000000001;
    v52 = v6 + 32;
    v23 = v20 + 56;
    v4 = v6 & 0xC000000000000001;
    while (1)
    {
      if (v2 == v51)
      {

        return 0;
      }

      if (v22)
      {
        v3 = MEMORY[0x21CECE0F0](v2, v6);
      }

      else
      {
        if (v2 >= *(v21 + 16))
        {
          __break(1u);
LABEL_81:
          __break(1u);
          goto LABEL_82;
        }

        v3 = *(v52 + 8 * v2);
      }

      v8 = v3 + OBJC_IVAR____TtCC7NewsUI237SuggestionTodayFeedGroupEmitterCursor10Suggestion_cluster;
      v25 = sub_219BEEF34();
      v27 = v26;
      if (!*(v20 + 16))
      {
        break;
      }

      v28 = v25;
      sub_219BF7AA4();
      sub_219BF5524();
      v29 = sub_219BF7AE4();
      v30 = -1 << *(v20 + 32);
      v8 = v29 & ~v30;
      if (((*(v23 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        break;
      }

      v5 = ~v30;
      while (1)
      {
        v31 = (*(v20 + 48) + 16 * v8);
        v32 = *v31 == v28 && v31[1] == v27;
        if (v32 || (sub_219BF78F4() & 1) != 0)
        {
          break;
        }

        v8 = (v8 + 1) & v5;
        if (((*(v23 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      v24 = __OFADD__(v2++, 1);
      v22 = v6 & 0xC000000000000001;
      v21 = v6 & 0xFFFFFFFFFFFFFF8;
      if (v24)
      {
        goto LABEL_81;
      }
    }

LABEL_31:

    if (v4)
    {
      v8 = MEMORY[0x21CECE0F0](v2, v6);
      v35 = v6 >> 62;
      v3 = v6 & 0xFFFFFFFFFFFFFF8;
      v36 = v2 + 1;
      if (!__OFADD__(v2, 1))
      {
        goto LABEL_33;
      }
    }

    else
    {
      v35 = v6 >> 62;
      v3 = v6 & 0xFFFFFFFFFFFFFF8;
      if (v2 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_91;
      }

      v8 = *(v52 + 8 * v2);

      v36 = v2 + 1;
      if (!__OFADD__(v2, 1))
      {
LABEL_33:
        if (v36 < 0)
        {
          __break(1u);
        }

        else
        {
          if (v35)
          {
            v37 = sub_219BF7214();
          }

          else
          {
            v37 = *(v3 + 16);
          }

          if (v37 >= v36)
          {
            v38 = v36;
          }

          else
          {
            v38 = v37;
          }

          if (v37 < 0)
          {
            v38 = v36;
          }

          if (v36)
          {
            v2 = v38;
          }

          else
          {
            v2 = 0;
          }

          if (v37 >= v2)
          {
            if (!v35)
            {
              v39 = *(v3 + 16);
              if (v39 < v2)
              {
                goto LABEL_86;
              }

LABEL_51:
              if (v39 < v37)
              {
LABEL_87:
                __break(1u);
                goto LABEL_88;
              }

              if (v37 < 0)
              {
LABEL_88:
                __break(1u);
                goto LABEL_89;
              }

              if (!v4 || v2 == v37)
              {

                if (!v35)
                {
LABEL_59:
                  v33 = v3 + 32;
                  v34 = (2 * v37) | 1;
                  goto LABEL_62;
                }
              }

              else
              {
                if (v2 >= v37)
                {
                  goto LABEL_90;
                }

                type metadata accessor for SuggestionTodayFeedGroupEmitterCursor.Suggestion();

                v40 = v2;
                do
                {
                  v41 = v40 + 1;
                  sub_219BF7334();
                  v40 = v41;
                }

                while (v37 != v41);
                if (!v35)
                {
                  goto LABEL_59;
                }
              }

              v3 = sub_219BF7564();
              v2 = v42;
LABEL_62:
              v20 = v34 >> 1;
              if (v2 == v34 >> 1)
              {
                swift_unknownObjectRelease();
                return v8;
              }

              if ((v34 & 1) == 0)
              {
                goto LABEL_65;
              }

              goto LABEL_70;
            }

            if (sub_219BF7214() >= v2)
            {
              v39 = sub_219BF7214();
              goto LABEL_51;
            }

LABEL_86:
            __break(1u);
            goto LABEL_87;
          }
        }

        __break(1u);
        goto LABEL_86;
      }
    }

    __break(1u);
LABEL_70:
    v5 = v34;
    v6 = v33;
    sub_219BF7934();
    swift_unknownObjectRetain_n();
    v46 = swift_dynamicCastClass();
    if (!v46)
    {
      swift_unknownObjectRelease();
      v46 = MEMORY[0x277D84F90];
    }

    v47 = *(v46 + 16);

    if (!__OFSUB__(v20, v2))
    {
      if (v47 != v20 - v2)
      {
        goto LABEL_93;
      }

      v44 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      v45 = v50;
      if (!v44)
      {
        v44 = MEMORY[0x277D84F90];
        goto LABEL_76;
      }

      goto LABEL_77;
    }

    goto LABEL_92;
  }

LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  swift_unknownObjectRelease();
  v33 = v6;
  v34 = v5;
LABEL_65:
  sub_218B665A8(v3, v33, v2, v34);
  v44 = v43;
  v45 = v50;
LABEL_76:
  swift_unknownObjectRelease();
LABEL_77:
  v48 = swift_allocObject();
  *(v48 + 16) = v44;
  *(v48 + 24) = v45;

  return v8;
}

uint64_t sub_2189883B4()
{
  v1 = OBJC_IVAR____TtCC7NewsUI237SuggestionTodayFeedGroupEmitterCursor10Suggestion_cluster;
  v2 = sub_219BEEF54();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_218988470()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SuggestionTodayFeedGroupEmitterCursor.Suggestion()
{
  result = qword_280E989D0;
  if (!qword_280E989D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218988528()
{
  result = sub_219BEEF54();
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

double sub_2189885C8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, char *a5@<X8>)
{
  v10 = sub_219BEEA84();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for HistoryFeedContentConfig();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189889CC(a1, v16);
  v17 = *(a1 + *(type metadata accessor for HistoryFeedConfigFetchResult() + 20));
  (*(v11 + 104))(v13, *MEMORY[0x277D32220], v10);
  *a5 = a2;
  *(a5 + 1) = a3;
  v18 = type metadata accessor for HistoryFeedServiceConfig();
  sub_2189889CC(v16, &a5[v18[5]]);
  *&a5[v18[6]] = v17;
  *&a5[v18[7]] = a4;
  (*(v11 + 16))(&a5[v18[8]], v13, v10);
  v19 = v17;
  swift_unknownObjectRetain();

  v20 = [a4 autoRefreshMinimumInterval];
  (*(v11 + 8))(v13, v10);
  sub_218988A30(v16);
  result = v20;
  *&a5[v18[9]] = v20;
  return result;
}

uint64_t sub_2189887D0()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_21898881C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = [*(*v1 + 32) appConfiguration];
  type metadata accessor for HistoryFeedConfigFetchResult();
  sub_219BE3204();
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v3;
  v5[4] = v4;

  swift_unknownObjectRetain();
  v6 = sub_219BE2E54();
  type metadata accessor for HistoryFeedServiceConfig();
  v7 = sub_219BE2F74();
  swift_unknownObjectRelease();

  return v7;
}

uint64_t sub_2189889CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HistoryFeedContentConfig();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218988A30(uint64_t a1)
{
  v2 = type metadata accessor for HistoryFeedContentConfig();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218988A8C()
{
  sub_2186E530C(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12 - v2;
  v4 = sub_219BDB954();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280EE9820 != -1)
  {
    swift_once();
  }

  if (sub_219BDC834())
  {
    if (qword_27CC080F8 != -1)
    {
      swift_once();
    }

    sub_218780C98(&qword_27CC0B8E8, v8, type metadata accessor for HistoryFeedServiceConfigFetcher);
    sub_219BDC7D4();
    sub_219BDB914();

    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_218838478(v3);
      sub_218988DF4();
      swift_allocError();
      sub_2186E530C(0, &unk_280EE6D18, type metadata accessor for HistoryFeedConfigFetchResult, MEMORY[0x277D6CF30]);
      swift_allocObject();
      return sub_219BE2FF4();
    }

    else
    {
      (*(v5 + 32))(v7, v3, v4);
      __swift_project_boxed_opaque_existential_1((v0 + 40), *(v0 + 64));
      v10 = off_282A41630;
      type metadata accessor for HistoryFeedConfigManager();
      v11 = v10(v7);
      (*(v5 + 8))(v7, v4);
      return v11;
    }
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v0 + 40), *(v0 + 64));
    return sub_218CB4504();
  }
}

unint64_t sub_218988DF4()
{
  result = qword_27CC0B8F0;
  if (!qword_27CC0B8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B8F0);
  }

  return result;
}

unint64_t sub_218988E5C()
{
  result = qword_27CC0B900;
  if (!qword_27CC0B900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B900);
  }

  return result;
}

uint64_t sub_218988EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218954408();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = sub_21975990C(a3);
  v11 = sub_218845F78(v10);

  v20 = v11;
  v12 = sub_218C0B8A0(a2, sub_21898BAEC);

  v19 = v12;
  sub_21898BB10(0);
  sub_219BE3204();

  (*(v8 + 16))(&v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v7);
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  (*(v8 + 32))(v14 + v13, &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], v7);

  v15 = sub_219BE2E54();
  v16 = sub_219BE2F74();

  return v16;
}

uint64_t sub_2189890CC(uint64_t a1, void (*a2)(char *))
{
  sub_21898B9B8(0, &qword_280EE4B20, MEMORY[0x277D6DF88]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  sub_21898BA78();
  v10 = *(v9 + 48);
  sub_218954408();
  (*(*(v11 - 8) + 16))(v8, a1, v11);
  v12 = *MEMORY[0x277D6D850];
  v13 = sub_219BE6DF4();
  (*(*(v13 - 8) + 104))(&v8[v10], v12, v13);
  (*(v6 + 104))(v8, *MEMORY[0x277D6DF48], v5);
  a2(v8);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_218989284(void *a1, void (*a2)(char *))
{
  sub_21898B9B8(0, &qword_280EE4B20, MEMORY[0x277D6DF88]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  *(&v11 - v7) = a1;
  (*(v6 + 104))(&v11 - v7, *MEMORY[0x277D6DF68], v5);
  v9 = a1;
  a2(v8);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2189893A8()
{
  sub_218830000(0, &qword_280EE7028, MEMORY[0x277D6D310], MEMORY[0x277D6CF30]);

  v0 = sub_219BE2E54();
  sub_21898C1B8();
  sub_2186CC104(&qword_280E8FC68, sub_21898C1B8);
  v1 = sub_219BE2F34();

  return v1;
}

uint64_t sub_218989498@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  sub_21898BB10(0);
  sub_2186CC104(&qword_280E8F520, sub_21898BB10);
  sub_2186CC104(&unk_280EE5DD0, MEMORY[0x277D6D310]);
  v8 = sub_219BF56C4();
  sub_218989660(a3, v8, a1, a2, a4);

  v9 = sub_219759E94();
  sub_219BEEFF4();
  sub_219BEEFE4();
  type metadata accessor for TagFeedServiceConfig();
  sub_2186CC104(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
  v10 = sub_219BEEFC4();

  if (v10)
  {
    sub_219BEDC74();
  }

  sub_218954408();
  sub_219BEB2C4();
  return sub_21885AB78(v9);
}

uint64_t sub_218989660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v90 = a3;
  v85 = a2;
  v81 = a5;
  v87 = type metadata accessor for TagFeedBlueprintCollapsedSection(0);
  v101 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v83 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TagFeedSectionGapDescriptor(0);
  MEMORY[0x28223BE20](v8 - 8);
  v82 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BBC4(0);
  MEMORY[0x28223BE20](v10 - 8);
  v96 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954350();
  v104 = v12;
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v95 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v89 = &v76 - v17;
  MEMORY[0x28223BE20](v16);
  v98 = &v76 - v18;
  sub_21898BBF8();
  v97 = v19;
  MEMORY[0x28223BE20](v19);
  v103 = (&v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218954408();
  v22 = v21;
  v23 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v25 = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BC64(0);
  v27 = v26 - 8;
  MEMORY[0x28223BE20](v26);
  v29 = &v76 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BCA0(0);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v33 = &v76 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v35 = &v76 - v34;
  sub_21898BCDC();
  MEMORY[0x28223BE20](v36 - 8);
  v80 = &v76 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_219BEB1B4();
  v78 = v38;
  (*(v23 + 16))(v35, a1, v22);
  v77 = v35;
  sub_21898C004(v35, v33, sub_21898BCA0);
  (*(v23 + 32))(v25, v33, v22);
  sub_2186CC104(&qword_280EE36E0, sub_218954408);
  sub_219BF56A4();
  v94 = *(v27 + 44);
  *&v29[v94] = 0;
  sub_21898BDA8(0, &qword_280E8D490, &unk_280EE36D0, MEMORY[0x277D6EC70], MEMORY[0x277D84310]);
  v40 = *(v39 + 36);
  v41 = sub_2186CC104(&unk_280EE36D0, sub_218954408);
  sub_219BF5E84();
  if (*&v29[v40] != v105[0])
  {
    v45 = 0;
    v99 = a4;
    v100 = (v13 + 16);
    v102 = (v13 + 32);
    v84 = a4 + 56;
    v92 = (v13 + 56);
    v86 = (v101 + 6);
    v88 = v13;
    v91 = (v13 + 48);
    v101 = MEMORY[0x277D84F90];
    v93 = v41;
    while (1)
    {
      v46 = sub_219BF5EC4();
      v47 = *v100;
      v48 = v98;
      v49 = v104;
      (*v100)(v98);
      v46(v105, 0);
      v50 = v40;
      v51 = v22;
      sub_219BF5E94();
      v52 = *(v97 + 48);
      v53 = v102;
      v54 = v103;
      *v103 = v45;
      v55 = *v53;
      result = (*v53)(v54 + v52, v48, v49);
      v56 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        __break(1u);
        return result;
      }

      *&v29[v94] = v56;
      sub_219BE6934();
      if (!((v105[0] >> 58) & 0x3C | (LODWORD(v105[0]) >> 1) & 3))
      {
        v64 = swift_projectBox();
        if ((*v86)(v64, 1, v87) == 1)
        {
          v66 = v103;
          v65 = v104;
          v67 = v103 + v52;
          v63 = v96;
          (v47)(v96, v67, v104);
          (*v92)(v63, 0, 1, v65);
          v57 = v66;
        }

        else
        {
          v69 = v82;
          sub_21898C004(v64, v82, type metadata accessor for TagFeedSectionGapDescriptor);
          v70 = v69;
          v71 = v83;
          sub_21898BE40(v70, v83);
          v63 = v96;
          sub_21898A1D8(v71, v90, v96);
          sub_21898C100(v71, type metadata accessor for TagFeedBlueprintCollapsedSection);
          v65 = v104;
          (*v92)(v63, 0, 1, v104);

          v57 = v103;
        }

        goto LABEL_21;
      }

      v57 = v103;
      if (!v99)
      {
        goto LABEL_18;
      }

      if (*(v99 + 16))
      {
        v58 = sub_219BF7A94();
        v59 = -1 << *(v99 + 32);
        v60 = v58 & ~v59;
        if ((*(v84 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60))
        {
          break;
        }
      }

LABEL_15:
      v62 = v57 + v52;
      v63 = v96;
      sub_21898A6E0(v62, v90, v96);
LABEL_19:
      v65 = v104;
      (*v92)(v63, 0, 1, v104);
LABEL_21:
      sub_21898C100(v57, sub_21898BBF8);
      if ((*v91)(v63, 1, v65) == 1)
      {
        sub_21898C100(v63, sub_21898BBC4);
        v22 = v51;
        v40 = v50;
      }

      else
      {
        v72 = v89;
        v55(v89, v63, v65);
        v55(v95, v72, v65);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v101 = sub_2191F6770(0, v101[2] + 1, 1, v101);
        }

        v22 = v51;
        v74 = v101[2];
        v73 = v101[3];
        v40 = v50;
        if (v74 >= v73 >> 1)
        {
          v101 = sub_2191F6770(v73 > 1, v74 + 1, 1, v101);
        }

        v75 = v101;
        v101[2] = v74 + 1;
        v55(&v75[((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v74], v95, v65);
      }

      sub_219BF5E84();
      v45 = v56;
      if (*&v29[v40] == v105[0])
      {
        goto LABEL_3;
      }
    }

    v61 = ~v59;
    while (*(*(v99 + 48) + 8 * v60) != v45)
    {
      v60 = (v60 + 1) & v61;
      if (((*(v84 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

LABEL_18:
    v68 = v57 + v52;
    v63 = v96;
    sub_21898AFB0(v68, v85, v96);
    goto LABEL_19;
  }

  v101 = MEMORY[0x277D84F90];
LABEL_3:
  sub_21898C100(v29, sub_21898BC64);
  sub_21898C100(v77, sub_21898BCA0);
  v42 = sub_2186CC104(&qword_280EE5870, sub_218954350);
  v43 = sub_2186CC104(&qword_280EE5880, sub_218954350);
  MEMORY[0x21CEB9170](v101, v104, v42, v43);
  type metadata accessor for TagFeedModel(0);
  sub_2186F7410();
  sub_2186CC104(&unk_280EDE820, type metadata accessor for TagFeedModel);
  return sub_219BEB1A4();
}

uint64_t sub_21898A1D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a2;
  v40 = a3;
  sub_21898BEA4();
  MEMORY[0x28223BE20](v4 - 8);
  v39 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for TagFeedModel(0);
  MEMORY[0x28223BE20](v38);
  v36 = (&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_219BDBD64();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TagFeedBlueprintCollapsedSection(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);

  v16 = sub_218C40680(v15);
  sub_218954350();
  (*(*(v17 - 8) + 16))(v14, a1, v17);
  sub_219BDBD54();
  v18 = sub_219BDBD44();
  v20 = v19;
  (*(v8 + 8))(v10, v7);
  v41 = v16;
  v21 = sub_218C0B8A0(v37, sub_21898C2A4);

  v22 = &v14[*(v11 + 20)];
  *v22 = v18;
  v22[1] = v20;
  *&v14[*(v11 + 24)] = v21;
  type metadata accessor for TagFeedSectionGapDescriptor(0);
  v23 = swift_allocBox();
  v25 = v24;
  sub_21898C004(v14, v24, type metadata accessor for TagFeedBlueprintCollapsedSection);
  (*(v12 + 56))(v25, 0, 1, v11);
  v44 = v23;
  sub_218830000(0, &qword_280E8BFE8, sub_21898BF70, MEMORY[0x277D84560]);
  sub_21898BF70();
  v27 = v26;
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_219C09BA0;
  v42 = sub_219BE6944();
  v43 = v29;
  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  MEMORY[0x21CECC330](v18, v20);
  v30 = v43;
  v31 = v36;
  *v36 = v42;
  v31[1] = v30;
  swift_storeEnumTagMultiPayload();
  sub_2186CC104(&unk_280EDE820, type metadata accessor for TagFeedModel);
  sub_219BE5FB4();
  v32 = sub_2186CC104(&qword_280EE5CE8, sub_21898BF70);
  v33 = sub_2186CC104(&unk_280EE5CF0, sub_21898BF70);
  MEMORY[0x21CEB9150](v28, v27, v32, v33);
  sub_2186F7410();
  sub_219BE6924();
  return sub_21898C100(v14, type metadata accessor for TagFeedBlueprintCollapsedSection);
}

uint64_t sub_21898A6E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v73 = a2;
  v77 = a3;
  sub_21898BEA4();
  MEMORY[0x28223BE20](v4 - 8);
  v76 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_219BDBD64();
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v66 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TagFeedBlueprintCollapsedSection(0);
  v71 = *(v7 - 8);
  v72 = v7;
  MEMORY[0x28223BE20](v7);
  v75 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for TagFeedModel(0);
  v9 = MEMORY[0x28223BE20](v79);
  v74 = (&v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v12 = &v61 - v11;
  sub_21898BF70();
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954350();
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898C06C();
  v24 = v23 - 8;
  MEMORY[0x28223BE20](v23);
  v26 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v20 + 16);
  v70 = a1;
  v65 = v20 + 16;
  v64 = v27;
  v27(v22, a1, v19);
  sub_2186CC104(&unk_280EE5860, sub_218954350);
  sub_219BF56A4();
  v28 = *(v24 + 44);
  sub_2186CC104(&unk_280EE5850, sub_218954350);
  sub_219BF5E84();
  v29 = *&v26[v28];
  v68 = v15;
  if (v29 == v81)
  {
    v78 = MEMORY[0x277D84F90];
  }

  else
  {
    v49 = v15;
    v50 = (v15 + 16);
    v51 = (v49 + 8);
    v78 = MEMORY[0x277D84F90];
    do
    {
      v52 = sub_219BF5EC4();
      (*v50)(v17);
      v52(&v81, 0);
      sub_219BF5E94();
      sub_219BE5FC4();
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v63 = sub_219BE5B24();
        v62 = v53;

        (*v51)(v17, v14);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v78 = sub_218840D24(0, *(v78 + 2) + 1, 1, v78);
        }

        v55 = *(v78 + 2);
        v54 = *(v78 + 3);
        v56 = v55 + 1;
        if (v55 >= v54 >> 1)
        {
          v61 = v55 + 1;
          v60 = sub_218840D24((v54 > 1), v55 + 1, 1, v78);
          v56 = v61;
          v78 = v60;
        }

        v57 = v78;
        *(v78 + 2) = v56;
        v58 = &v57[16 * v55];
        v59 = v62;
        *(v58 + 4) = v63;
        *(v58 + 5) = v59;
      }

      else
      {
        (*v51)(v17, v14);
        sub_21898C100(v12, type metadata accessor for TagFeedModel);
      }

      sub_219BF5E84();
    }

    while (*&v26[v28] != v81);
  }

  sub_21898C100(v26, sub_21898C06C);
  v30 = v75;
  v64(v75, v70, v19);
  v31 = v66;
  sub_219BDBD54();
  v32 = sub_219BDBD44();
  v34 = v33;
  v35 = (*(v67 + 8))(v31, v69);
  MEMORY[0x28223BE20](v35);
  *(&v61 - 2) = v78;
  v36 = sub_218C0B8A0(v73, sub_21898C160);

  v37 = v72;
  v38 = (v30 + *(v72 + 20));
  *v38 = v32;
  v38[1] = v34;
  *(v30 + *(v37 + 24)) = v36;
  type metadata accessor for TagFeedSectionGapDescriptor(0);
  v39 = swift_allocBox();
  v41 = v40;
  sub_21898C004(v30, v40, type metadata accessor for TagFeedBlueprintCollapsedSection);
  (*(v71 + 56))(v41, 0, 1, v37);
  v80 = v39;
  sub_218830000(0, &qword_280E8BFE8, sub_21898BF70, MEMORY[0x277D84560]);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_219C09BA0;
  v81 = sub_219BE6944();
  v82 = v43;
  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  MEMORY[0x21CECC330](v32, v34);
  v44 = v82;
  v45 = v74;
  *v74 = v81;
  v45[1] = v44;
  swift_storeEnumTagMultiPayload();
  sub_2186CC104(&unk_280EDE820, type metadata accessor for TagFeedModel);
  sub_219BE5FB4();
  v46 = sub_2186CC104(&qword_280EE5CE8, sub_21898BF70);
  v47 = sub_2186CC104(&unk_280EE5CF0, sub_21898BF70);
  MEMORY[0x21CEB9150](v42, v14, v46, v47);
  sub_2186F7410();
  sub_219BE6924();
  return sub_21898C100(v30, type metadata accessor for TagFeedBlueprintCollapsedSection);
}

uint64_t sub_21898AFB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v36[1] = a3;
  v4 = type metadata accessor for TagFeedModel(0);
  v5 = MEMORY[0x28223BE20](v4);
  v38 = (v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v8 = v36 - v7;
  sub_21898BF70();
  v10 = v9;
  v45 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v47 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v46 = v36 - v13;
  sub_21898BEA4();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954350();
  v18 = v17;
  sub_219BE6934();
  v50 = v51;
  v19 = sub_2186CC104(&unk_280EE5850, sub_218954350);
  v20 = sub_219BF5E44();
  v21 = MEMORY[0x277D84F90];
  if (v20)
  {
    v22 = v20;
    v49 = MEMORY[0x277D84F90];
    sub_218C342A8(0, v20 & ~(v20 >> 63), 0);
    v21 = v49;
    v43 = v19;
    v44 = v18;
    result = sub_219BF5DF4();
    if ((v22 & 0x8000000000000000) == 0)
    {
      v36[0] = v16;
      v42 = (v45 + 16);
      v37 = (v45 + 8);
      v24 = (v45 + 32);
      v39 = a1;
      v40 = v8;
      while (1)
      {
        v25 = sub_219BF5EC4();
        (*v42)(v47);
        v25(v48, 0);
        sub_219BE5FC4();
        if (swift_getEnumCaseMultiPayload() != 5)
        {
          break;
        }

        v26 = sub_219BE5B24();
        v28 = v41;
        if (!*(v41 + 16))
        {

          goto LABEL_11;
        }

        v29 = sub_21870F700(v26, v27);
        v31 = v30;

        if ((v31 & 1) == 0)
        {

LABEL_11:
          v8 = v40;
LABEL_12:
          (*v24)(v46, v47, v10);
          goto LABEL_13;
        }

        *v38 = *(*(v28 + 56) + 8 * v29);
        swift_storeEnumTagMultiPayload();
        sub_2186CC104(&unk_280EDE820, type metadata accessor for TagFeedModel);
        swift_retain_n();
        sub_219BE5FB4();

        (*v37)(v47, v10);
        v8 = v40;
LABEL_13:
        v49 = v21;
        v33 = *(v21 + 16);
        v32 = *(v21 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_218C342A8(v32 > 1, v33 + 1, 1);
          v21 = v49;
        }

        *(v21 + 16) = v33 + 1;
        (*(v45 + 32))(v21 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v33, v46, v10);
        sub_219BF5E94();
        if (!--v22)
        {
          goto LABEL_16;
        }
      }

      sub_21898C100(v8, type metadata accessor for TagFeedModel);
      goto LABEL_12;
    }

    __break(1u);
  }

  else
  {
LABEL_16:
    v34 = sub_2186CC104(&qword_280EE5CE8, sub_21898BF70);
    v35 = sub_2186CC104(&unk_280EE5CF0, sub_21898BF70);
    MEMORY[0x21CEB9170](v21, v10, v34, v35);
    sub_2186F7410();
    sub_2186CC104(&unk_280EDE820, type metadata accessor for TagFeedModel);
    return sub_219BE6924();
  }

  return result;
}

uint64_t sub_21898B564()
{
  sub_218830000(0, &qword_280E8BDD0, MEMORY[0x277D6DE60], MEMORY[0x277D84560]);
  v0 = sub_219BE81C4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C0D560;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x277D6DE38], v0);
  v6(v5 + v2, *MEMORY[0x277D6DE48], v0);
  v6(v5 + 2 * v2, *MEMORY[0x277D6DE50], v0);
  v6(v5 + 3 * v2, *MEMORY[0x277D6DE30], v0);
  v6(v5 + 4 * v2, *MEMORY[0x277D6DE58], v0);
  v7 = sub_218847E58(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v7;
}

void sub_21898B740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218954408();
  sub_219BE3204();
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  v6 = sub_219BE2E54();
  sub_219BE2F74();

  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;

  v8 = sub_219BE2E54();
  sub_219BE2FD4();
}

uint64_t sub_21898B884(uint64_t a1)
{
  v2 = sub_21898C250();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_21898B8C4()
{
  result = qword_27CC0B910;
  if (!qword_27CC0B910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B910);
  }

  return result;
}

void sub_21898B9B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TagFeedSectionDescriptor;
    v8[1] = type metadata accessor for TagFeedModel(255);
    v8[2] = sub_2186F7410();
    v8[3] = sub_2186CC104(&unk_280EDE820, type metadata accessor for TagFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_21898BA78()
{
  if (!qword_27CC0B918)
  {
    sub_218954408();
    sub_219BE6DF4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC0B918);
    }
  }
}

void sub_21898BBF8()
{
  if (!qword_280E8E978)
  {
    sub_218954350();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8E978);
    }
  }
}

void sub_21898BCDC()
{
  if (!qword_280EE74A0)
  {
    sub_218954350();
    sub_2186CC104(&qword_280EE5870, sub_218954350);
    sub_2186CC104(&qword_280EE5880, sub_218954350);
    v0 = sub_219BE2454();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE74A0);
    }
  }
}

void sub_21898BDA8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_218954408();
    v10 = v9;
    v11 = sub_2186CC104(a3, sub_218954408);
    v12 = a5(a1, v10, v11);
    if (!v13)
    {
      atomic_store(v12, a2);
    }
  }
}

uint64_t sub_21898BE40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TagFeedBlueprintCollapsedSection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21898BEA4()
{
  if (!qword_280EE7560)
  {
    sub_21898BF70();
    sub_2186CC104(&qword_280EE5CE8, sub_21898BF70);
    sub_2186CC104(&unk_280EE5CF0, sub_21898BF70);
    v0 = sub_219BE2454();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE7560);
    }
  }
}

void sub_21898BF70()
{
  if (!qword_280EE5CE0)
  {
    type metadata accessor for TagFeedModel(255);
    sub_2186CC104(&unk_280EDE820, type metadata accessor for TagFeedModel);
    v0 = sub_219BE5FE4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5CE0);
    }
  }
}

uint64_t sub_21898C004(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_21898C06C()
{
  if (!qword_280E8D4F0)
  {
    sub_218954350();
    sub_2186CC104(&unk_280EE5850, sub_218954350);
    v0 = sub_219BF7494();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8D4F0);
    }
  }
}

uint64_t sub_21898C100(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21898C160(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v6[0] = a1;
  v6[1] = a2;
  v5[2] = v6;
  return sub_2186D128C(sub_2186D1338, v5, v3) & 1;
}

void sub_21898C1B8()
{
  if (!qword_280E8FC60)
  {
    sub_218830000(255, &qword_280EE7028, MEMORY[0x277D6D310], MEMORY[0x277D6CF30]);
    v0 = sub_219BF5294();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8FC60);
    }
  }
}

unint64_t sub_21898C250()
{
  result = qword_27CC0B920;
  if (!qword_27CC0B920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B920);
  }

  return result;
}

uint64_t sub_21898C310()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI220MainTabBarController_styler);
  swift_unknownObjectRelease();
}

id sub_21898C380()
{
  ObjectType = swift_getObjectType();

  sub_219BE58F4();

  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_21898C4F0(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC7NewsUI220MainTabBarController_eventHandler + 8);
    v4 = Strong;
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    (*(v3 + 40))(v1, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;

    sub_219BE5914();
  }

  return result;
}

void sub_21898C688()
{
  v0 = sub_219BF5904();
  v6 = [objc_opt_self() presenterForPrivacyUnifiedAboutWithIdentifiers_];

  if (v6)
  {
    v1 = objc_opt_self();
    v2 = v6;
    v3 = [v1 sharedApplication];
    v4 = [v3 key_window];

    v5 = [v4 rootViewController];
    [v2 setPresentingViewController_];
  }

  [v6 present];
}

uint64_t sub_21898C8E8(uint64_t a1, void *a2)
{
  v3 = v2;
  v14.receiver = v3;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, sel_tabBarController_didSelectViewController_, a1, a2);
  v12 = a2;
  sub_218805E54();
  sub_2186CFDE4(0, &unk_280EE7DD8);
  v6 = a2;
  if (swift_dynamicCast())
  {
    sub_2186CB1F0(v10, v13);
    v7 = *&v3[OBJC_IVAR____TtC7NewsUI220MainTabBarController_eventHandler + 8];
    swift_getObjectType();
    __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    v8 = sub_219BE1D74();
    (*(v7 + 32))(v8);

    sub_219BE5914();
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    return sub_2187B1C64(v10, &qword_280EE7DD0, &unk_280EE7DD8);
  }
}

void sub_21898CADC(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;

    [a1 bounds];
    Width = CGRectGetWidth(v9);
    sub_218DACDEC(a2, a1, Width);

    v7 = *&v5[OBJC_IVAR____TtC7NewsUI220MainTabBarController_followingEngagementView];
    *&v5[OBJC_IVAR____TtC7NewsUI220MainTabBarController_followingEngagementView] = a1;

    v8 = a1;
  }
}

uint64_t sub_21898CB94()
{

  sub_219BE2734();

  return v1;
}

uint64_t sub_21898CBE0(uint64_t a1)
{
  v2 = v1;
  if (qword_280EE60A0 != -1)
  {
    swift_once();
  }

  v4 = sub_219BE5434();
  __swift_project_value_buffer(v4, qword_280F627F0);

  v5 = sub_219BE5414();
  v6 = sub_219BF6214();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v7 = 136315138;
    sub_219BF7314();

    v27 = 0xD000000000000025;
    v28 = 0x8000000219CDBF40;
    v9 = sub_219A910C0();
    MEMORY[0x21CECC330](v9);

    MEMORY[0x21CECC330](41, 0xE100000000000000);
    v10 = sub_2186D1058(0xD000000000000025, 0x8000000219CDBF40, &v26);

    *(v7 + 4) = v10;
    _os_log_impl(&dword_2186C1000, v5, v6, "Did create engagement model=%s, in floating tab bar controller", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x21CECF960](v8, -1, -1);
    MEMORY[0x21CECF960](v7, -1, -1);
  }

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = type metadata accessor for MainTabBarEngagementViewContentConfiguration();
  v13 = swift_allocObject();
  v13[3] = v11;
  v13[4] = a1;
  v13[2] = sub_21898D74C;
  v14 = *&v2[OBJC_IVAR____TtC7NewsUI220MainTabBarController_followingEngagementView];
  if (v14)
  {

    v15 = v14;
    v16 = sub_219BE5414();
    v17 = sub_219BF6214();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2186C1000, v16, v17, "Updating existing engagement view content configuration", v18, 2u);
      MEMORY[0x21CECF960](v18, -1, -1);
    }

    v19 = OBJC_IVAR____TtC7NewsUI224MainTabBarEngagementView_contentConfiguration;
    *&v15[OBJC_IVAR____TtC7NewsUI224MainTabBarEngagementView_contentConfiguration] = v13;

    v20 = [v2 _uip_sidebar];
    v21 = *&v15[v19];
    v29 = v12;
    v30 = sub_21898D6F4();
    v27 = v21;

    sub_219BF6A24();
  }

  else
  {

    v22 = sub_219BE5414();
    v23 = sub_219BF6214();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_2186C1000, v22, v23, "Configuring floating tab bar controller header content configuration for displaying engagement view", v24, 2u);
      MEMORY[0x21CECF960](v24, -1, -1);
    }

    v20 = [v2 _uip_sidebar];
    v29 = v12;
    v30 = sub_21898D6F4();
    v27 = v13;

    sub_219BF6A24();
  }
}

void sub_21898CFC0()
{
  v1 = *&v0[OBJC_IVAR____TtC7NewsUI220MainTabBarController_followingEngagementView];
  if (v1)
  {
    v2 = v0;
    v3 = qword_280EE60A0;
    v4 = v1;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = sub_219BE5434();
    __swift_project_value_buffer(v5, qword_280F627F0);
    v6 = sub_219BE5414();
    v7 = sub_219BF6214();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2186C1000, v6, v7, "Updated engagement view model triggering render pass in floating tab bar controller", v8, 2u);
      MEMORY[0x21CECF960](v8, -1, -1);
    }

    v9 = *(*&v4[OBJC_IVAR____TtC7NewsUI224MainTabBarEngagementView_contentConfiguration] + 32);

    [v4 bounds];
    Width = CGRectGetWidth(v16);
    sub_218DACDEC(v9, v4, Width);

    oslog = [v2 _uip_sidebar];
    type metadata accessor for MainTabBarEngagementViewContentConfiguration();
    sub_21898D6F4();

    sub_219BF6A24();
  }

  else
  {
    if (qword_280EE60A0 != -1)
    {
      swift_once();
    }

    v11 = sub_219BE5434();
    __swift_project_value_buffer(v11, qword_280F627F0);
    oslog = sub_219BE5414();
    v12 = sub_219BF61F4();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2186C1000, oslog, v12, "Trying to update the floating tab bar engagement view but the view is nil unexpectedly", v13, 2u);
      MEMORY[0x21CECF960](v13, -1, -1);
    }
  }
}

void sub_21898D22C(void *a1)
{
  if (a1)
  {
    v2 = v1;
    v9 = a1;
    if ([v9 style] == 2)
    {
      if (qword_280EE60A0 != -1)
      {
        swift_once();
      }

      v3 = sub_219BE5434();
      __swift_project_value_buffer(v3, qword_280F627F0);
      v4 = sub_219BE5414();
      v5 = sub_219BF6214();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        MEMORY[0x21CECF960](v6, -1, -1);
      }

      v7 = [v2 _uip_sidebar];
      sub_219BF6A24();

      v8 = *&v2[OBJC_IVAR____TtC7NewsUI220MainTabBarController_followingEngagementView];
      *&v2[OBJC_IVAR____TtC7NewsUI220MainTabBarController_followingEngagementView] = 0;
    }

    else
    {
      v8 = v9;
    }
  }
}

void sub_21898D3A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BE3514();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BE3774();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280EE60A0 != -1)
  {
    swift_once();
  }

  v12 = sub_219BE5434();
  __swift_project_value_buffer(v12, qword_280F627F0);
  (*(v9 + 16))(v11, a1, v8);
  (*(v5 + 16))(v7, a2, v4);
  v13 = sub_219BE5414();
  v14 = sub_219BF61F4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v15 = 136315394;
    v16 = sub_219BE3764();
    v26 = v4;
    v18 = v17;
    (*(v9 + 8))(v11, v8);
    v19 = sub_2186D1058(v16, v18, &v28);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v20 = sub_219BE34B4();
    v22 = v21;
    (*(v5 + 8))(v7, v26);
    v23 = sub_2186D1058(v20, v22, &v28);

    *(v15 + 14) = v23;
    v24 = v27;
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v24, -1, -1);
    MEMORY[0x21CECF960](v15, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v8);
  }
}

unint64_t sub_21898D6F4()
{
  result = qword_27CC0B928;
  if (!qword_27CC0B928)
  {
    type metadata accessor for MainTabBarEngagementViewContentConfiguration();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B928);
  }

  return result;
}

uint64_t sub_21898D75C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BED8D4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898DF6C(0, &qword_280E8CCB8, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for IntroToSportsTodayFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21898DEB4();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_21898DFD0(&unk_280E92630, MEMORY[0x277D31C50]);
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_21898DF08(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21898DA08(uint64_t a1)
{
  v2 = sub_21898DEB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21898DA44(uint64_t a1)
{
  v2 = sub_21898DEB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21898DAC0(void *a1)
{
  sub_21898DF6C(0, &qword_280E8C4A8, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21898DEB4();
  sub_219BF7B44();
  sub_219BED8D4();
  sub_21898DFD0(&qword_280E92640, MEMORY[0x277D31C50]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_21898DD20(uint64_t a1)
{
  result = sub_21898DFD0(&qword_280EB8638, type metadata accessor for IntroToSportsTodayFeedGroup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21898DD78(uint64_t a1)
{
  v2 = sub_21898DFD0(&qword_280EB8668, type metadata accessor for IntroToSportsTodayFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_21898DE08(void *a1)
{
  a1[1] = sub_21898DFD0(&qword_280EB8668, type metadata accessor for IntroToSportsTodayFeedGroup);
  a1[2] = sub_21898DFD0(&qword_280EB8640, type metadata accessor for IntroToSportsTodayFeedGroup);
  result = sub_21898DFD0(&qword_280EB8650, type metadata accessor for IntroToSportsTodayFeedGroup);
  a1[3] = result;
  return result;
}

unint64_t sub_21898DEB4()
{
  result = qword_280EB8680;
  if (!qword_280EB8680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB8680);
  }

  return result;
}

uint64_t sub_21898DF08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntroToSportsTodayFeedGroup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21898DF6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21898DEB4();
    v7 = a3(a1, &type metadata for IntroToSportsTodayFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_21898DFD0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21898E02C()
{
  result = qword_27CC0B930;
  if (!qword_27CC0B930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B930);
  }

  return result;
}

unint64_t sub_21898E084()
{
  result = qword_280EB8670;
  if (!qword_280EB8670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB8670);
  }

  return result;
}

unint64_t sub_21898E0DC()
{
  result = qword_280EB8678;
  if (!qword_280EB8678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB8678);
  }

  return result;
}

uint64_t sub_21898E158@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = sub_219BF1934();
  v14 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v16 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898E698(0, &qword_280E8C800, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21898E644();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v14;
    v11 = v15;
    sub_218933D7C(&qword_280E90808);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    (*(v12 + 32))(v11, v16, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21898E3B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
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

uint64_t sub_21898E440(uint64_t a1)
{
  v2 = sub_21898E644();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21898E47C(uint64_t a1)
{
  v2 = sub_21898E644();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21898E4D0(void *a1)
{
  sub_21898E698(0, &qword_280E8C228, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21898E644();
  sub_219BF7B44();
  sub_219BF1934();
  sub_218933D7C(&qword_280E90810);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_21898E644()
{
  result = qword_280E99718[0];
  if (!qword_280E99718[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E99718);
  }

  return result;
}

void sub_21898E698(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21898E644();
    v7 = a3(a1, &type metadata for LatestStoriesTodayFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_21898E710()
{
  result = qword_27CC0B938;
  if (!qword_27CC0B938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B938);
  }

  return result;
}

unint64_t sub_21898E768()
{
  result = qword_280E99708;
  if (!qword_280E99708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E99708);
  }

  return result;
}

unint64_t sub_21898E7C0()
{
  result = qword_280E99710;
  if (!qword_280E99710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E99710);
  }

  return result;
}

void sub_21898E814(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 identifier];
  v4 = sub_219BF5414();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t get_enum_tag_for_layout_string_7NewsUI29ColorPairVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
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

uint64_t get_enum_tag_for_layout_string_7NewsUI226ChannelPickerCategoryModelVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21898E8BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 337))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 34);
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

uint64_t sub_21898E908(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 328) = 0;
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
    *(result + 336) = 0;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 337) = 1;
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
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = -a2 << 16;
      *(result + 56) = 0u;
      *(result + 72) = 0u;
      *(result + 88) = 0u;
      *(result + 104) = 0u;
      *(result + 120) = 0u;
      *(result + 136) = 0u;
      *(result + 152) = 0u;
      *(result + 168) = 0u;
      *(result + 184) = 0u;
      *(result + 200) = 0u;
      *(result + 216) = 0u;
      *(result + 232) = 0u;
      *(result + 248) = 0u;
      v3 = (result + 321);
      *(result + 40) = 0u;
      result += 40;
      *(result + 224) = 0u;
      *(result + 240) = 0u;
      *(result + 256) = 0u;
      *(result + 272) = 0u;
      *v3 = 0u;
      return result;
    }

    *(result + 337) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_21898E9F8(void *result, uint64_t a2)
{
  v2 = result[10] & 1;
  v3 = result[12] & 1;
  v4 = result[14] & 1;
  v5 = result[18] & 1 | (a2 << 63);
  result[4] = *(result + 16);
  result[10] = v2;
  result[12] = v3;
  result[14] = v4;
  result[18] = v5;
  return result;
}

uint64_t sub_21898EA48()
{
  memcpy(__dst, v0, 0x151uLL);
  v1 = sub_21898EAD4(__dst);
  v2 = sub_21892DE88(__dst);
  if (v1 == 1)
  {
    v3 = 1684632167;
  }

  else
  {
    v3 = 1953720684;
  }

  if (*(v2 + 48))
  {
    v3 = *(v2 + 40);
  }

  return v3;
}

uint64_t BridgedNewsActivityData.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___TSNewsActivityData_identifier);

  return v1;
}

id BridgedNewsActivityData.__allocating_init(activity:identifier:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_219BF53D4();

  sub_21870AD58();
  v5 = sub_219BF5904();
  v6 = [v3 initWithActivity:a1 identifier:v4 object:0 traits:v5];

  return v6;
}

id BridgedNewsActivityData.init(activity:identifier:)(uint64_t a1)
{
  v3 = sub_219BF53D4();

  sub_21870AD58();
  v4 = sub_219BF5904();
  v5 = [v1 initWithActivity:a1 identifier:v3 object:0 traits:v4];

  return v5;
}

id BridgedNewsActivityData.__allocating_init(activity:identifier:object:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR___TSNewsActivityData_activity] = a1;
  v10 = &v9[OBJC_IVAR___TSNewsActivityData_identifier];
  *v10 = a2;
  *(v10 + 1) = a3;
  *&v9[OBJC_IVAR___TSNewsActivityData_object] = a4;
  *&v9[OBJC_IVAR___TSNewsActivityData_traits] = MEMORY[0x277D84F90];
  v12.receiver = v9;
  v12.super_class = v4;
  return objc_msgSendSuper2(&v12, sel_init);
}

id BridgedNewsActivityData.init(activity:identifier:object:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR___TSNewsActivityData_activity] = a1;
  v10 = &v4[OBJC_IVAR___TSNewsActivityData_identifier];
  *v10 = a2;
  *(v10 + 1) = a3;
  *&v4[OBJC_IVAR___TSNewsActivityData_object] = a4;
  *&v4[OBJC_IVAR___TSNewsActivityData_traits] = MEMORY[0x277D84F90];
  v12.receiver = v4;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

id BridgedNewsActivityData.__allocating_init(activity:identifier:object:traits:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  *&v11[OBJC_IVAR___TSNewsActivityData_activity] = a1;
  v12 = &v11[OBJC_IVAR___TSNewsActivityData_identifier];
  *v12 = a2;
  *(v12 + 1) = a3;
  *&v11[OBJC_IVAR___TSNewsActivityData_object] = a4;
  *&v11[OBJC_IVAR___TSNewsActivityData_traits] = a5;
  v14.receiver = v11;
  v14.super_class = v5;
  return objc_msgSendSuper2(&v14, sel_init);
}

id BridgedNewsActivityData.init(activity:identifier:object:traits:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR___TSNewsActivityData_activity] = a1;
  v12 = &v5[OBJC_IVAR___TSNewsActivityData_identifier];
  *v12 = a2;
  *(v12 + 1) = a3;
  *&v5[OBJC_IVAR___TSNewsActivityData_object] = a4;
  *&v5[OBJC_IVAR___TSNewsActivityData_traits] = a5;
  v14.receiver = v5;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, sel_init);
}

unint64_t static BridgedNewsActivityData.convertToArticleTrait(trait:)(unint64_t result)
{
  if (result >= 4)
  {
    result = sub_219BF7974();
    __break(1u);
  }

  return result;
}

id BridgedNewsActivityData.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedNewsActivityData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t BridgedNewsActivityData.description.getter()
{
  sub_219BF7314();
  MEMORY[0x21CECC330](0xD000000000000016, 0x8000000219CDC040);
  v1 = BridgedNewsActivity2.description.getter(*(v0 + OBJC_IVAR___TSNewsActivityData_activity));
  MEMORY[0x21CECC330](v1);

  MEMORY[0x21CECC330](0x69746E656469202CLL, 0xED00003D72656966);
  MEMORY[0x21CECC330](*(v0 + OBJC_IVAR___TSNewsActivityData_identifier), *(v0 + OBJC_IVAR___TSNewsActivityData_identifier + 8));
  MEMORY[0x21CECC330](0x7463656A626F202CLL, 0xE90000000000003DLL);
  sub_2189906F0(0, &qword_27CC0B960, MEMORY[0x277D84F68] + 8, MEMORY[0x277D83D88]);
  swift_unknownObjectRetain();
  v2 = sub_219BF5484();
  MEMORY[0x21CECC330](v2);

  MEMORY[0x21CECC330](41, 0xE100000000000000);
  return 0;
}

uint64_t BridgedNewsActivityData.convertToNewsActivity2()@<X0>(void *a1@<X8>)
{
  v137 = a1;
  v2 = v1;
  v134 = sub_219BDB954();
  v131 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v124 = &v123 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDE924();
  v128 = *(v4 - 8);
  v129 = v4;
  MEMORY[0x28223BE20](v4);
  v125 = &v123 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218990578(0, &unk_280EE8E70, MEMORY[0x277D2F9F0]);
  MEMORY[0x28223BE20](v6 - 8);
  v133 = (&v123 - v7);
  sub_218990578(0, &qword_280EE6350, MEMORY[0x277D35078]);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v126 = &v123 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v132 = &v123 - v11;
  sub_218990578(0, &qword_280EE8AE0, MEMORY[0x277D30210]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v123 - v13;
  v136 = type metadata accessor for CampaignRouteModel();
  v15 = MEMORY[0x28223BE20](v136);
  v135 = &v123 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v130 = &v123 - v17;
  v18 = sub_219BDE294();
  v127 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v123 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218990578(0, &unk_280EE9D00, MEMORY[0x277CC9260]);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = &v123 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v123 - v25;
  v27 = sub_219BDD534();
  v28 = *(v27 - 8);
  result = MEMORY[0x28223BE20](v27);
  v31 = &v123 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v2 + OBJC_IVAR___TSNewsActivityData_activity);
  if (v32 > 5)
  {
    if (v32 > 8)
    {
      if (v32 == 9)
      {
        if (!*(v2 + OBJC_IVAR___TSNewsActivityData_object))
        {
          goto LABEL_53;
        }

        type metadata accessor for BridgedNewsActivitySender();
        swift_unknownObjectRetain();
        v65 = swift_dynamicCastClass();
        if (!v65)
        {
          swift_unknownObjectRelease();
          type metadata accessor for FeedViewContext();
          swift_unknownObjectRetain();
          v112 = swift_dynamicCastClass();
          if (v112)
          {
            v113 = v112;
            v114 = swift_allocObject();
            v115 = *(v2 + OBJC_IVAR___TSNewsActivityData_identifier + 8);
            *(v114 + 16) = *(v2 + OBJC_IVAR___TSNewsActivityData_identifier);
            *(v114 + 24) = v115;
            v116 = MEMORY[0x277D84F90];
            *(v114 + 32) = v113;
            *(v114 + 40) = v116;
            *(v114 + 48) = 1;
            *v137 = v114 | 0xC000000000000002;
          }

LABEL_52:
          swift_unknownObjectRelease();
          goto LABEL_53;
        }

        v66 = v65;
        v67 = swift_allocObject();
        v69 = *(v2 + OBJC_IVAR___TSNewsActivityData_identifier);
        v68 = *(v2 + OBJC_IVAR___TSNewsActivityData_identifier + 8);
        v70 = *(v66 + OBJC_IVAR___TSNewsActivitySender_viewController);

        v71 = v70;
        result = swift_unknownObjectRelease();
        *(v67 + 16) = v69;
        *(v67 + 24) = v68;
        v72 = MEMORY[0x277D84F90];
        *(v67 + 32) = v71;
        *(v67 + 40) = v72;
        *(v67 + 48) = 2;
        v49 = v67 | 0xC000000000000002;
LABEL_44:
        *v137 = v49;
        return result;
      }

      if (v32 == 10)
      {
        v49 = 0xF000000000000040;
        goto LABEL_44;
      }

      if (v32 != 11)
      {
        goto LABEL_54;
      }

      sub_219BDB914();
      v84 = v131;
      v85 = v134;
      if ((*(v131 + 48))(v24, 1, v134) == 1)
      {
        sub_2187BC2D0(v24, &unk_280EE9D00, MEMORY[0x277CC9260]);
        goto LABEL_53;
      }

      v102 = *(v84 + 32);
      v103 = v124;
      v102(v124, v24, v85);
      type metadata accessor for WebLinkViewControllerType(0);
      v79 = swift_allocBox();
      v102(v104, v103, v85);
      result = swift_storeEnumTagMultiPayload();
      v83 = 0xB000000000000000;
    }

    else
    {
      if (v32 == 6)
      {
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = 0;
        *(result + 32) = -1;
        v49 = result | 0x6000000000000006;
        goto LABEL_44;
      }

      if (v32 == 7)
      {
        v49 = 0xF000000000000028;
        goto LABEL_44;
      }

      type metadata accessor for FollowingNotificationsPrewarm();
      v79 = swift_allocBox();
      v81 = v80;
      v82 = sub_219BF3BD4();
      (*(*(v82 - 8) + 56))(v81, 1, 1, v82);
      result = swift_storeEnumTagMultiPayload();
      v83 = 0x3000000000000004;
    }

    v49 = v79 | v83;
    goto LABEL_44;
  }

  if (v32 > 2)
  {
    if (v32 != 3)
    {
      if (v32 == 4)
      {
        result = swift_allocObject();
        v49 = result | 0x4000000000000002;
        *(result + 16) = 0u;
        *(result + 32) = 0u;
      }

      else
      {
        v49 = 0xF000000000000018;
      }

      goto LABEL_44;
    }

    if (!*(v2 + OBJC_IVAR___TSNewsActivityData_object))
    {
      goto LABEL_53;
    }

    type metadata accessor for BridgedNewsActivitySender();
    swift_unknownObjectRetain();
    v59 = swift_dynamicCastClass();
    if (!v59)
    {
      swift_unknownObjectRelease();
      type metadata accessor for FeedViewContext();
      swift_unknownObjectRetain();
      v105 = swift_dynamicCastClass();
      if (v105)
      {
        v106 = v105;
        v108 = *(v2 + OBJC_IVAR___TSNewsActivityData_identifier);
        v107 = *(v2 + OBJC_IVAR___TSNewsActivityData_identifier + 8);
        v109 = swift_allocObject();
        *(v109 + 16) = v108;
        *(v109 + 24) = v107;
        v110 = MEMORY[0x277D84F90];
        *(v109 + 32) = v106;
        *(v109 + 40) = v110;
        *(v109 + 48) = 1;
        *(v109 + 56) = 0u;
        *(v109 + 72) = 0u;
        *(v109 + 88) = 0;
        *(v109 + 96) = -1;
        v111 = v109 | 0x2000000000000006;
LABEL_51:
        *v137 = v111;
      }

      goto LABEL_52;
    }

    v61 = *(v2 + OBJC_IVAR___TSNewsActivityData_identifier);
    v60 = *(v2 + OBJC_IVAR___TSNewsActivityData_identifier + 8);
    v62 = *(v59 + OBJC_IVAR___TSNewsActivitySender_viewController);

    v63 = v62;
    swift_unknownObjectRelease();
    result = swift_allocObject();
    *(result + 16) = v61;
    *(result + 24) = v60;
    v64 = MEMORY[0x277D84F90];
    *(result + 32) = v63;
    *(result + 40) = v64;
    *(result + 48) = 2;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0;
    *(result + 96) = -1;
    v58 = result | 0x2000000000000004;
    goto LABEL_23;
  }

  if (!v32)
  {
    v133 = *(v131 + 56);
    v133(v26, 1, 1, v134);

    sub_219BDD514();
    sub_2187B2C48();
    v51 = v50;
    v52 = swift_allocBox();
    v54 = v53;
    v135 = *(v51 + 48);
    v136 = v52;
    sub_2187B2DA0();
    v56 = *(v55 + 48);
    v133(v26, 1, 1, v134);
    v57 = v127;
    v127[13](v20, *MEMORY[0x277D2FF08], v18);
    sub_219BDD894();
    (v57[1])(v20, v18);
    sub_2187BC2D0(v26, &unk_280EE9D00, MEMORY[0x277CC9260]);
    *(v54 + v56) = MEMORY[0x277D84F90];
    result = (*(v28 + 8))(v31, v27);
    *&v135[v54] = &unk_282A21C00;
    v58 = v136;
LABEL_23:
    v49 = v58 | 2;
    goto LABEL_44;
  }

  if (v32 != 1)
  {
    if (v32 == 2)
    {
      if (*(v2 + OBJC_IVAR___TSNewsActivityData_object))
      {
        type metadata accessor for BridgedNewsActivitySender();
        swift_unknownObjectRetain();
        v73 = swift_dynamicCastClass();
        if (v73)
        {
          v75 = *(v2 + OBJC_IVAR___TSNewsActivityData_identifier);
          v74 = *(v2 + OBJC_IVAR___TSNewsActivityData_identifier + 8);
          v76 = *(v73 + OBJC_IVAR___TSNewsActivitySender_viewController);

          v77 = v76;
          swift_unknownObjectRelease();
          result = swift_allocObject();
          *(result + 16) = v75;
          *(result + 24) = v74;
          v78 = MEMORY[0x277D84F90];
          *(result + 32) = v77;
          *(result + 40) = v78;
          *(result + 48) = 2;
          *(result + 56) = 0u;
          *(result + 72) = 0u;
          *(result + 88) = 0;
          *(result + 96) = -1;
          v49 = result | 0x2000000000000004;
          goto LABEL_44;
        }

        swift_unknownObjectRelease();
        type metadata accessor for FeedViewContext();
        swift_unknownObjectRetain();
        v117 = swift_dynamicCastClass();
        if (v117)
        {
          v118 = v117;
          v120 = *(v2 + OBJC_IVAR___TSNewsActivityData_identifier);
          v119 = *(v2 + OBJC_IVAR___TSNewsActivityData_identifier + 8);
          v121 = swift_allocObject();
          *(v121 + 16) = v120;
          *(v121 + 24) = v119;
          v122 = MEMORY[0x277D84F90];
          *(v121 + 32) = v118;
          *(v121 + 40) = v122;
          *(v121 + 48) = 1;
          *(v121 + 56) = 0u;
          *(v121 + 72) = 0u;
          *(v121 + 88) = 0;
          *(v121 + 96) = -1;
          v111 = v121 | 0x2000000000000004;
          goto LABEL_51;
        }

        goto LABEL_52;
      }

LABEL_53:
      sub_2189905CC();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_54:
    v138 = *(v2 + OBJC_IVAR___TSNewsActivityData_activity);
    result = sub_219BF7974();
    __break(1u);
    return result;
  }

  v33 = *(v2 + OBJC_IVAR___TSNewsActivityData_identifier);
  v34 = *(v2 + OBJC_IVAR___TSNewsActivityData_identifier + 8);
  v35 = v128;
  v36 = v129;
  (*(v128 + 56))(v14, 1, 1, v129);
  v37 = sub_219BE4394();
  v38 = *(v37 - 8);
  v39 = *(v38 + 56);
  v134 = v37;
  v131 = v38 + 56;
  v127 = v39;
  (v39)(v132, 1, 1);
  v40 = sub_219BDD4D4();
  (*(*(v40 - 8) + 56))(v133, 1, 1, v40);
  v41 = v135;
  v42 = &v135[v136[14]];
  *(v42 + 1) = 0;
  swift_unknownObjectWeakInit();
  *v41 = v33;
  v41[1] = v34;
  v124 = v34;
  v43 = *(v35 + 48);
  if (v43(v14, 1, v36) == 1)
  {
    v44 = *MEMORY[0x277D301F8];
    v45 = sub_219BDE914();
    v46 = v125;
    (*(*(v45 - 8) + 104))(v125, v44, v45);
    (*(v35 + 104))(v46, *MEMORY[0x277D30200], v36);
    v47 = v43(v14, 1, v36);

    v48 = v35;
    if (v47 != 1)
    {
      sub_2187BC2D0(v14, &qword_280EE8AE0, MEMORY[0x277D30210]);
    }
  }

  else
  {
    v46 = v125;
    (*(v35 + 32))(v125, v14, v36);

    v48 = v35;
  }

  v87 = v135;
  v86 = v136;
  (*(v48 + 32))(&v135[v136[5]], v46, v36);
  v88 = &v87[v86[6]];
  *v88 = 0;
  *(v88 + 1) = 0;
  v89 = &v87[v86[7]];
  *v89 = 0;
  *(v89 + 1) = 0;
  *&v87[v86[8]] = MEMORY[0x277D84F90];
  *&v87[v86[9]] = 0;
  v87[v86[11]] = 0;
  *(v42 + 1) = 0;
  swift_unknownObjectWeakAssign();
  v90 = *(v38 + 48);
  v91 = v132;
  v92 = v134;
  if (v90(v132, 1, v134) == 1)
  {
    v93 = *MEMORY[0x277D34D80];
    v94 = sub_219BE3D74();
    v95 = v126;
    (*(*(v94 - 8) + 104))(v126, v93, v94);
    (*(v38 + 104))(v95, *MEMORY[0x277D35068], v92);
    if (v90(v91, 1, v92) != 1)
    {
      sub_2187BC2D0(v91, &qword_280EE6350, MEMORY[0x277D35078]);
    }
  }

  else
  {
    v95 = v126;
    (*(v38 + 32))(v126, v91, v92);
  }

  (v127)(v95, 0, 1, v92);
  v97 = v135;
  v96 = v136;
  sub_218990620(v95, &v135[v136[10]], &qword_280EE6350, MEMORY[0x277D35078]);
  v97[v96[13]] = 0;
  sub_218990620(v133, &v97[v96[12]], &unk_280EE8E70, MEMORY[0x277D2F9F0]);
  v98 = v97;
  v99 = v130;
  sub_21899068C(v98, v130);
  v100 = swift_allocBox();
  result = sub_21899068C(v99, v101);
  *v137 = v100 | 0x1000000000000006;
  return result;
}

void sub_218990578(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_2189905CC()
{
  result = qword_27CC0B968;
  if (!qword_27CC0B968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B968);
  }

  return result;
}

uint64_t sub_218990620(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_218990578(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_21899068C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CampaignRouteModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2189906F0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_218990794()
{
  result = qword_27CC0B970;
  if (!qword_27CC0B970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B970);
  }

  return result;
}

unint64_t sub_2189907F0()
{
  result = qword_280ED2268;
  if (!qword_280ED2268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED2268);
  }

  return result;
}

unint64_t sub_218990848()
{
  result = qword_280ED2260;
  if (!qword_280ED2260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED2260);
  }

  return result;
}

uint64_t sub_21899089C()
{
  v0 = type metadata accessor for FoodTodayFeedGroup();
  MEMORY[0x28223BE20](v0 - 8);
  v80 = &v64 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for ChannelPickerTodayFeedGroup();
  MEMORY[0x28223BE20](v2 - 8);
  v79 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SavedStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v4 - 8);
  v78 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ChannelTodayFeedGroup();
  MEMORY[0x28223BE20](v6 - 8);
  v77 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ShortcutsTodayFeedGroup();
  MEMORY[0x28223BE20](v8 - 8);
  v76 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IntroToSportsTodayFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v75 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MySportsTodayFeedGroup();
  MEMORY[0x28223BE20](v12 - 8);
  v74 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for EngagementTodayFeedGroup();
  MEMORY[0x28223BE20](v14 - 8);
  v73 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for SharedWithYouTodayFeedGroup();
  MEMORY[0x28223BE20](v72);
  v71 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SeenContentMarkTodayFeedGroup();
  MEMORY[0x28223BE20](v17 - 8);
  v70 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SuggestionTodayFeedGroup();
  MEMORY[0x28223BE20](v19 - 8);
  v69 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for SpotlightTodayFeedGroup();
  MEMORY[0x28223BE20](v21 - 8);
  v68 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for SubscriptionTodayFeedGroup();
  MEMORY[0x28223BE20](v23 - 8);
  v67 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for NewFollowTodayFeedGroup();
  MEMORY[0x28223BE20](v25 - 8);
  v66 = &v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for MagazineFeedGroup();
  MEMORY[0x28223BE20](v27 - 8);
  v65 = &v64 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for TopicTodayFeedGroup();
  MEMORY[0x28223BE20](v29 - 8);
  v64 = &v64 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for MoreForYouTodayFeedGroup();
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v64 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for LatestStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v34 - 8);
  v36 = &v64 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for MissedStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v37 - 8);
  v39 = &v64 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for ForYouTodayFeedGroup();
  MEMORY[0x28223BE20](v40 - 8);
  v42 = &v64 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for TrendingTodayFeedGroup();
  MEMORY[0x28223BE20](v43 - 8);
  v45 = &v64 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for LocalNewsTodayFeedGroup();
  MEMORY[0x28223BE20](v46 - 8);
  v48 = &v64 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for NewspaperTodayFeedGroup();
  MEMORY[0x28223BE20](v49 - 8);
  v51 = &v64 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for CuratedTodayFeedGroup();
  MEMORY[0x28223BE20](v52 - 8);
  v54 = &v64 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for TodayFeedGroup();
  MEMORY[0x28223BE20](v55);
  v57 = &v64 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187C7E1C(v81, v57);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2187C58F8(v57, v51, type metadata accessor for NewspaperTodayFeedGroup);
      v58 = sub_219BED794();
      v61 = type metadata accessor for NewspaperTodayFeedGroup;
      v62 = v51;
      goto LABEL_29;
    case 2u:
      sub_2187C58F8(v57, v48, type metadata accessor for LocalNewsTodayFeedGroup);
      v58 = sub_219BED794();
      v61 = type metadata accessor for LocalNewsTodayFeedGroup;
      v62 = v48;
      goto LABEL_29;
    case 3u:
      sub_2187C58F8(v57, v45, type metadata accessor for TrendingTodayFeedGroup);
      v58 = sub_219BED794();
      v61 = type metadata accessor for TrendingTodayFeedGroup;
      v62 = v45;
      goto LABEL_29;
    case 4u:
      sub_2187C58F8(v57, v42, type metadata accessor for ForYouTodayFeedGroup);
      v58 = sub_219BED794();
      v61 = type metadata accessor for ForYouTodayFeedGroup;
      v62 = v42;
      goto LABEL_29;
    case 5u:
      sub_2187C58F8(v57, v39, type metadata accessor for MissedStoriesTodayFeedGroup);
      v58 = sub_219BED794();
      v61 = type metadata accessor for MissedStoriesTodayFeedGroup;
      v62 = v39;
      goto LABEL_29;
    case 6u:
      sub_2187C58F8(v57, v36, type metadata accessor for LatestStoriesTodayFeedGroup);
      v58 = sub_219BED794();
      v61 = type metadata accessor for LatestStoriesTodayFeedGroup;
      v62 = v36;
      goto LABEL_29;
    case 7u:
      sub_2187C58F8(v57, v33, type metadata accessor for MoreForYouTodayFeedGroup);
      v58 = sub_219BED794();
      v60 = type metadata accessor for MoreForYouTodayFeedGroup;
      goto LABEL_14;
    case 8u:
      v54 = v64;
      sub_2187C58F8(v57, v64, type metadata accessor for TopicTodayFeedGroup);
      v58 = sub_219BED794();
      v59 = type metadata accessor for TopicTodayFeedGroup;
      goto LABEL_28;
    case 9u:
      v54 = v65;
      sub_2187C58F8(v57, v65, type metadata accessor for MagazineFeedGroup);
      v58 = sub_218CD71B4();
      v59 = type metadata accessor for MagazineFeedGroup;
      goto LABEL_28;
    case 0xAu:
      v54 = v66;
      sub_2187C58F8(v57, v66, type metadata accessor for NewFollowTodayFeedGroup);
      v58 = sub_219BED794();
      v59 = type metadata accessor for NewFollowTodayFeedGroup;
      goto LABEL_28;
    case 0xBu:
      v54 = v67;
      sub_2187C58F8(v57, v67, type metadata accessor for SubscriptionTodayFeedGroup);
      v58 = sub_219BED794();
      v59 = type metadata accessor for SubscriptionTodayFeedGroup;
      goto LABEL_28;
    case 0xCu:
      sub_2187C8338(v57, type metadata accessor for TodayFeedGroup);
      return 0;
    case 0xDu:
      v54 = v68;
      sub_2187C58F8(v57, v68, type metadata accessor for SpotlightTodayFeedGroup);
      v58 = sub_219BED794();
      v59 = type metadata accessor for SpotlightTodayFeedGroup;
      goto LABEL_28;
    case 0xEu:
      v54 = v69;
      sub_2187C58F8(v57, v69, type metadata accessor for SuggestionTodayFeedGroup);
      v58 = sub_219BED794();
      v59 = type metadata accessor for SuggestionTodayFeedGroup;
      goto LABEL_28;
    case 0xFu:
      v54 = v70;
      sub_2187C58F8(v57, v70, type metadata accessor for SeenContentMarkTodayFeedGroup);
      v58 = sub_219BED794();
      v59 = type metadata accessor for SeenContentMarkTodayFeedGroup;
      goto LABEL_28;
    case 0x10u:
      v33 = v71;
      sub_2187C58F8(v57, v71, type metadata accessor for SharedWithYouTodayFeedGroup);
      v58 = sub_219BED794();
      v60 = type metadata accessor for SharedWithYouTodayFeedGroup;
LABEL_14:
      v61 = v60;
      v62 = v33;
      goto LABEL_29;
    case 0x11u:
      v54 = v73;
      sub_2187C58F8(v57, v73, type metadata accessor for EngagementTodayFeedGroup);
      sub_2186F687C();
      v58 = sub_219BEDCB4();
      v59 = type metadata accessor for EngagementTodayFeedGroup;
      goto LABEL_28;
    case 0x12u:
      v54 = v74;
      sub_2187C58F8(v57, v74, type metadata accessor for MySportsTodayFeedGroup);
      v58 = sub_219BED794();
      v59 = type metadata accessor for MySportsTodayFeedGroup;
      goto LABEL_28;
    case 0x13u:
      v54 = v75;
      sub_2187C58F8(v57, v75, type metadata accessor for IntroToSportsTodayFeedGroup);
      v58 = sub_219BED794();
      v59 = type metadata accessor for IntroToSportsTodayFeedGroup;
      goto LABEL_28;
    case 0x14u:
      v54 = v76;
      sub_2187C58F8(v57, v76, type metadata accessor for ShortcutsTodayFeedGroup);
      v58 = sub_219BED794();
      v59 = type metadata accessor for ShortcutsTodayFeedGroup;
      goto LABEL_28;
    case 0x15u:
      v54 = v77;
      sub_2187C58F8(v57, v77, type metadata accessor for ChannelTodayFeedGroup);
      v58 = sub_219BED794();
      v59 = type metadata accessor for ChannelTodayFeedGroup;
      goto LABEL_28;
    case 0x16u:
      v54 = v78;
      sub_2187C58F8(v57, v78, type metadata accessor for SavedStoriesTodayFeedGroup);
      v58 = sub_219BED794();
      v59 = type metadata accessor for SavedStoriesTodayFeedGroup;
      goto LABEL_28;
    case 0x17u:
      v54 = v79;
      sub_2187C58F8(v57, v79, type metadata accessor for ChannelPickerTodayFeedGroup);
      v58 = sub_219BED794();
      v59 = type metadata accessor for ChannelPickerTodayFeedGroup;
      goto LABEL_28;
    case 0x18u:
      v54 = v80;
      sub_2187C58F8(v57, v80, type metadata accessor for FoodTodayFeedGroup);
      v58 = sub_219BED794();
      v59 = type metadata accessor for FoodTodayFeedGroup;
      goto LABEL_28;
    default:
      sub_2187C58F8(v57, v54, type metadata accessor for CuratedTodayFeedGroup);
      v58 = sub_219BED794();
      v59 = type metadata accessor for CuratedTodayFeedGroup;
LABEL_28:
      v61 = v59;
      v62 = v54;
LABEL_29:
      sub_2187C8338(v62, v61);
      return v58;
  }
}

uint64_t sub_2189916F4@<X0>(uint64_t a1@<X8>)
{
  v88 = a1;
  v1 = type metadata accessor for FoodTodayFeedGroup();
  MEMORY[0x28223BE20](v1 - 8);
  v87 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ChannelPickerTodayFeedGroup();
  MEMORY[0x28223BE20](v3 - 8);
  v86 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SavedStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v5 - 8);
  v85 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ChannelTodayFeedGroup();
  MEMORY[0x28223BE20](v7 - 8);
  v84 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ShortcutsTodayFeedGroup();
  MEMORY[0x28223BE20](v9 - 8);
  v83 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for IntroToSportsTodayFeedGroup();
  MEMORY[0x28223BE20](v11 - 8);
  v82 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MySportsTodayFeedGroup();
  MEMORY[0x28223BE20](v13 - 8);
  v81 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for SharedWithYouTodayFeedGroup();
  MEMORY[0x28223BE20](v80);
  v79 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SeenContentMarkTodayFeedGroup();
  MEMORY[0x28223BE20](v16 - 8);
  v78 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SuggestionTodayFeedGroup();
  MEMORY[0x28223BE20](v18 - 8);
  v77 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for SpotlightTodayFeedGroup();
  MEMORY[0x28223BE20](v20 - 8);
  v76 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_219BED544();
  v74 = *(v22 - 8);
  v75 = v22;
  MEMORY[0x28223BE20](v22);
  v73 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for SubscriptionTodayFeedGroup();
  MEMORY[0x28223BE20](v24 - 8);
  v72 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for NewFollowTodayFeedGroup();
  MEMORY[0x28223BE20](v26 - 8);
  v71 = &v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for MagazineFeedGroup();
  MEMORY[0x28223BE20](v28 - 8);
  v70 = &v69 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for TopicTodayFeedGroup();
  MEMORY[0x28223BE20](v30 - 8);
  v69 = &v69 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for MoreForYouTodayFeedGroup();
  MEMORY[0x28223BE20](v32 - 8);
  v34 = &v69 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for LatestStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v35 - 8);
  v37 = &v69 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for MissedStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v38 - 8);
  v40 = &v69 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for ForYouTodayFeedGroup();
  MEMORY[0x28223BE20](v41 - 8);
  v43 = &v69 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for TrendingTodayFeedGroup();
  MEMORY[0x28223BE20](v44 - 8);
  v46 = &v69 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for LocalNewsTodayFeedGroup();
  MEMORY[0x28223BE20](v47 - 8);
  v49 = &v69 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for NewspaperTodayFeedGroup();
  MEMORY[0x28223BE20](v50 - 8);
  v52 = &v69 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for CuratedTodayFeedGroup();
  MEMORY[0x28223BE20](v53 - 8);
  v55 = &v69 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for TodayFeedGroup();
  MEMORY[0x28223BE20](v56);
  v58 = &v69 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187C7E1C(v89, v58);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2187C58F8(v58, v52, type metadata accessor for NewspaperTodayFeedGroup);
      sub_219BED7A4();
      v61 = type metadata accessor for NewspaperTodayFeedGroup;
      v62 = v52;
      return sub_2187C8338(v62, v61);
    case 2u:
      sub_2187C58F8(v58, v49, type metadata accessor for LocalNewsTodayFeedGroup);
      sub_219BED7A4();
      v61 = type metadata accessor for LocalNewsTodayFeedGroup;
      v62 = v49;
      return sub_2187C8338(v62, v61);
    case 3u:
      sub_2187C58F8(v58, v46, type metadata accessor for TrendingTodayFeedGroup);
      sub_219BED7A4();
      v61 = type metadata accessor for TrendingTodayFeedGroup;
      v62 = v46;
      return sub_2187C8338(v62, v61);
    case 4u:
      sub_2187C58F8(v58, v43, type metadata accessor for ForYouTodayFeedGroup);
      sub_219BED7A4();
      v61 = type metadata accessor for ForYouTodayFeedGroup;
      v62 = v43;
      return sub_2187C8338(v62, v61);
    case 5u:
      sub_2187C58F8(v58, v40, type metadata accessor for MissedStoriesTodayFeedGroup);
      sub_219BED7A4();
      v61 = type metadata accessor for MissedStoriesTodayFeedGroup;
      v62 = v40;
      return sub_2187C8338(v62, v61);
    case 6u:
      sub_2187C58F8(v58, v37, type metadata accessor for LatestStoriesTodayFeedGroup);
      sub_219BED7A4();
      v61 = type metadata accessor for LatestStoriesTodayFeedGroup;
      v62 = v37;
      return sub_2187C8338(v62, v61);
    case 7u:
      sub_2187C58F8(v58, v34, type metadata accessor for MoreForYouTodayFeedGroup);
      sub_219BED7A4();
      v61 = type metadata accessor for MoreForYouTodayFeedGroup;
      v62 = v34;
      return sub_2187C8338(v62, v61);
    case 8u:
      v55 = v69;
      sub_2187C58F8(v58, v69, type metadata accessor for TopicTodayFeedGroup);
      sub_219BED7A4();
      v59 = type metadata accessor for TopicTodayFeedGroup;
      goto LABEL_27;
    case 9u:
      v55 = v70;
      sub_2187C58F8(v58, v70, type metadata accessor for MagazineFeedGroup);
      sub_218CD7A48(v88);
      v59 = type metadata accessor for MagazineFeedGroup;
      goto LABEL_27;
    case 0xAu:
      v55 = v71;
      sub_2187C58F8(v58, v71, type metadata accessor for NewFollowTodayFeedGroup);
      sub_219BED7A4();
      v59 = type metadata accessor for NewFollowTodayFeedGroup;
      goto LABEL_27;
    case 0xBu:
      v55 = v72;
      sub_2187C58F8(v58, v72, type metadata accessor for SubscriptionTodayFeedGroup);
      sub_219BED7A4();
      v59 = type metadata accessor for SubscriptionTodayFeedGroup;
      goto LABEL_27;
    case 0xCu:
      v63 = v73;
      v64 = v74;
      v65 = v75;
      (*(v74 + 32))(v73, v58, v75);
      sub_219BED4D4();
      return (*(v64 + 8))(v63, v65);
    case 0xDu:
      v55 = v76;
      sub_2187C58F8(v58, v76, type metadata accessor for SpotlightTodayFeedGroup);
      sub_219BED7A4();
      v59 = type metadata accessor for SpotlightTodayFeedGroup;
      goto LABEL_27;
    case 0xEu:
      v55 = v77;
      sub_2187C58F8(v58, v77, type metadata accessor for SuggestionTodayFeedGroup);
      sub_219BED7A4();
      v59 = type metadata accessor for SuggestionTodayFeedGroup;
      goto LABEL_27;
    case 0xFu:
      v55 = v78;
      sub_2187C58F8(v58, v78, type metadata accessor for SeenContentMarkTodayFeedGroup);
      sub_219BED7A4();
      v59 = type metadata accessor for SeenContentMarkTodayFeedGroup;
      goto LABEL_27;
    case 0x10u:
      v60 = v79;
      sub_2187C58F8(v58, v79, type metadata accessor for SharedWithYouTodayFeedGroup);
      sub_219BED7A4();
      v61 = type metadata accessor for SharedWithYouTodayFeedGroup;
      v62 = v60;
      return sub_2187C8338(v62, v61);
    case 0x11u:
      sub_2187C8338(v58, type metadata accessor for TodayFeedGroup);
      v67 = *MEMORY[0x277D32628];
      v68 = sub_219BEF554();
      return (*(*(v68 - 8) + 104))(v88, v67, v68);
    case 0x12u:
      v55 = v81;
      sub_2187C58F8(v58, v81, type metadata accessor for MySportsTodayFeedGroup);
      sub_219BED7A4();
      v59 = type metadata accessor for MySportsTodayFeedGroup;
      goto LABEL_27;
    case 0x13u:
      v55 = v82;
      sub_2187C58F8(v58, v82, type metadata accessor for IntroToSportsTodayFeedGroup);
      sub_219BED7A4();
      v59 = type metadata accessor for IntroToSportsTodayFeedGroup;
      goto LABEL_27;
    case 0x14u:
      v55 = v83;
      sub_2187C58F8(v58, v83, type metadata accessor for ShortcutsTodayFeedGroup);
      sub_219BED7A4();
      v59 = type metadata accessor for ShortcutsTodayFeedGroup;
      goto LABEL_27;
    case 0x15u:
      v55 = v84;
      sub_2187C58F8(v58, v84, type metadata accessor for ChannelTodayFeedGroup);
      sub_219BED7A4();
      v59 = type metadata accessor for ChannelTodayFeedGroup;
      goto LABEL_27;
    case 0x16u:
      v55 = v85;
      sub_2187C58F8(v58, v85, type metadata accessor for SavedStoriesTodayFeedGroup);
      sub_219BED7A4();
      v59 = type metadata accessor for SavedStoriesTodayFeedGroup;
      goto LABEL_27;
    case 0x17u:
      v55 = v86;
      sub_2187C58F8(v58, v86, type metadata accessor for ChannelPickerTodayFeedGroup);
      sub_219BED7A4();
      v59 = type metadata accessor for ChannelPickerTodayFeedGroup;
      goto LABEL_27;
    case 0x18u:
      v55 = v87;
      sub_2187C58F8(v58, v87, type metadata accessor for FoodTodayFeedGroup);
      sub_219BED7A4();
      v59 = type metadata accessor for FoodTodayFeedGroup;
      goto LABEL_27;
    default:
      sub_2187C58F8(v58, v55, type metadata accessor for CuratedTodayFeedGroup);
      sub_219BED7A4();
      v59 = type metadata accessor for CuratedTodayFeedGroup;
LABEL_27:
      v61 = v59;
      v62 = v55;
      return sub_2187C8338(v62, v61);
  }
}

double sub_218992560()
{
  v0 = type metadata accessor for FoodTodayFeedGroup();
  MEMORY[0x28223BE20](v0 - 8);
  v109 = &v90 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for ChannelPickerTodayFeedGroup();
  MEMORY[0x28223BE20](v2 - 8);
  v108 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SavedStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v4 - 8);
  v107 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ChannelTodayFeedGroup();
  MEMORY[0x28223BE20](v6 - 8);
  v106 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ShortcutsTodayFeedGroup();
  MEMORY[0x28223BE20](v8 - 8);
  v105 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IntroToSportsTodayFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v104 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MySportsTodayFeedGroup();
  MEMORY[0x28223BE20](v12 - 8);
  v103 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for SharedWithYouTodayFeedGroup();
  MEMORY[0x28223BE20](v102);
  v101 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SeenContentMarkTodayFeedGroup();
  MEMORY[0x28223BE20](v15 - 8);
  v100 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SuggestionTodayFeedGroup();
  MEMORY[0x28223BE20](v17 - 8);
  v99 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SpotlightTodayFeedGroup();
  MEMORY[0x28223BE20](v19 - 8);
  v98 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_219BED544();
  v96 = *(v21 - 8);
  v97 = v21;
  MEMORY[0x28223BE20](v21);
  v95 = &v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for SubscriptionTodayFeedGroup();
  MEMORY[0x28223BE20](v23 - 8);
  v94 = &v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for NewFollowTodayFeedGroup();
  MEMORY[0x28223BE20](v25 - 8);
  v93 = &v90 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for MagazineFeedGroup();
  MEMORY[0x28223BE20](v27 - 8);
  v92 = &v90 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for TopicTodayFeedGroup();
  MEMORY[0x28223BE20](v29 - 8);
  v91 = &v90 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for MoreForYouTodayFeedGroup();
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v90 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for LatestStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v34 - 8);
  v36 = &v90 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for MissedStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v37 - 8);
  v39 = &v90 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for ForYouTodayFeedGroup();
  MEMORY[0x28223BE20](v40 - 8);
  v42 = &v90 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for TrendingTodayFeedGroup();
  MEMORY[0x28223BE20](v43 - 8);
  v45 = &v90 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for LocalNewsTodayFeedGroup();
  MEMORY[0x28223BE20](v46 - 8);
  v48 = &v90 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for NewspaperTodayFeedGroup();
  MEMORY[0x28223BE20](v49 - 8);
  v51 = &v90 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for CuratedTodayFeedGroup();
  MEMORY[0x28223BE20](v52 - 8);
  v54 = &v90 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for TodayFeedGroup();
  MEMORY[0x28223BE20](v55);
  v57 = &v90 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187C7E1C(v110, v57);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2187C58F8(v57, v51, type metadata accessor for NewspaperTodayFeedGroup);
      sub_219BED7B4();
      v59 = v77;
      v66 = type metadata accessor for NewspaperTodayFeedGroup;
      v67 = v51;
      goto LABEL_29;
    case 2u:
      sub_2187C58F8(v57, v48, type metadata accessor for LocalNewsTodayFeedGroup);
      sub_219BED7B4();
      v59 = v73;
      v66 = type metadata accessor for LocalNewsTodayFeedGroup;
      v67 = v48;
      goto LABEL_29;
    case 3u:
      sub_2187C58F8(v57, v45, type metadata accessor for TrendingTodayFeedGroup);
      sub_219BED7B4();
      v59 = v75;
      v66 = type metadata accessor for TrendingTodayFeedGroup;
      v67 = v45;
      goto LABEL_29;
    case 4u:
      sub_2187C58F8(v57, v42, type metadata accessor for ForYouTodayFeedGroup);
      sub_219BED7B4();
      v59 = v65;
      v66 = type metadata accessor for ForYouTodayFeedGroup;
      v67 = v42;
      goto LABEL_29;
    case 5u:
      sub_2187C58F8(v57, v39, type metadata accessor for MissedStoriesTodayFeedGroup);
      sub_219BED7B4();
      v59 = v79;
      v66 = type metadata accessor for MissedStoriesTodayFeedGroup;
      v67 = v39;
      goto LABEL_29;
    case 6u:
      sub_2187C58F8(v57, v36, type metadata accessor for LatestStoriesTodayFeedGroup);
      sub_219BED7B4();
      v59 = v82;
      v66 = type metadata accessor for LatestStoriesTodayFeedGroup;
      v67 = v36;
      goto LABEL_29;
    case 7u:
      sub_2187C58F8(v57, v33, type metadata accessor for MoreForYouTodayFeedGroup);
      sub_219BED7B4();
      v59 = v76;
      v62 = type metadata accessor for MoreForYouTodayFeedGroup;
      goto LABEL_14;
    case 8u:
      v54 = v91;
      sub_2187C58F8(v57, v91, type metadata accessor for TopicTodayFeedGroup);
      sub_219BED7B4();
      v59 = v85;
      v60 = type metadata accessor for TopicTodayFeedGroup;
      goto LABEL_28;
    case 9u:
      v54 = v92;
      sub_2187C58F8(v57, v92, type metadata accessor for MagazineFeedGroup);
      v59 = sub_218CD82B8();
      v60 = type metadata accessor for MagazineFeedGroup;
      goto LABEL_28;
    case 0xAu:
      v54 = v93;
      sub_2187C58F8(v57, v93, type metadata accessor for NewFollowTodayFeedGroup);
      sub_219BED7B4();
      v59 = v84;
      v60 = type metadata accessor for NewFollowTodayFeedGroup;
      goto LABEL_28;
    case 0xBu:
      v54 = v94;
      sub_2187C58F8(v57, v94, type metadata accessor for SubscriptionTodayFeedGroup);
      sub_219BED7B4();
      v59 = v64;
      v60 = type metadata accessor for SubscriptionTodayFeedGroup;
      goto LABEL_28;
    case 0xCu:
      v68 = v95;
      v69 = v96;
      v70 = v97;
      (*(v96 + 32))(v95, v57, v97);
      sub_219BED4E4();
      v59 = v71;
      (*(v69 + 8))(v68, v70);
      return v59;
    case 0xDu:
      v54 = v98;
      sub_2187C58F8(v57, v98, type metadata accessor for SpotlightTodayFeedGroup);
      sub_219BED7B4();
      v59 = v81;
      v60 = type metadata accessor for SpotlightTodayFeedGroup;
      goto LABEL_28;
    case 0xEu:
      v54 = v99;
      sub_2187C58F8(v57, v99, type metadata accessor for SuggestionTodayFeedGroup);
      sub_219BED7B4();
      v59 = v63;
      v60 = type metadata accessor for SuggestionTodayFeedGroup;
      goto LABEL_28;
    case 0xFu:
      v54 = v100;
      sub_2187C58F8(v57, v100, type metadata accessor for SeenContentMarkTodayFeedGroup);
      sub_219BED7B4();
      v59 = v74;
      v60 = type metadata accessor for SeenContentMarkTodayFeedGroup;
      goto LABEL_28;
    case 0x10u:
      v33 = v101;
      sub_2187C58F8(v57, v101, type metadata accessor for SharedWithYouTodayFeedGroup);
      sub_219BED7B4();
      v59 = v61;
      v62 = type metadata accessor for SharedWithYouTodayFeedGroup;
LABEL_14:
      v66 = v62;
      v67 = v33;
      goto LABEL_29;
    case 0x11u:
      sub_2187C8338(v57, type metadata accessor for TodayFeedGroup);
      return 1.0;
    case 0x12u:
      v54 = v103;
      sub_2187C58F8(v57, v103, type metadata accessor for MySportsTodayFeedGroup);
      sub_219BED7B4();
      v59 = v83;
      v60 = type metadata accessor for MySportsTodayFeedGroup;
      goto LABEL_28;
    case 0x13u:
      v54 = v104;
      sub_2187C58F8(v57, v104, type metadata accessor for IntroToSportsTodayFeedGroup);
      sub_219BED7B4();
      v59 = v87;
      v60 = type metadata accessor for IntroToSportsTodayFeedGroup;
      goto LABEL_28;
    case 0x14u:
      v54 = v105;
      sub_2187C58F8(v57, v105, type metadata accessor for ShortcutsTodayFeedGroup);
      sub_219BED7B4();
      v59 = v78;
      v60 = type metadata accessor for ShortcutsTodayFeedGroup;
      goto LABEL_28;
    case 0x15u:
      v54 = v106;
      sub_2187C58F8(v57, v106, type metadata accessor for ChannelTodayFeedGroup);
      sub_219BED7B4();
      v59 = v80;
      v60 = type metadata accessor for ChannelTodayFeedGroup;
      goto LABEL_28;
    case 0x16u:
      v54 = v107;
      sub_2187C58F8(v57, v107, type metadata accessor for SavedStoriesTodayFeedGroup);
      sub_219BED7B4();
      v59 = v86;
      v60 = type metadata accessor for SavedStoriesTodayFeedGroup;
      goto LABEL_28;
    case 0x17u:
      v54 = v108;
      sub_2187C58F8(v57, v108, type metadata accessor for ChannelPickerTodayFeedGroup);
      sub_219BED7B4();
      v59 = v88;
      v60 = type metadata accessor for ChannelPickerTodayFeedGroup;
      goto LABEL_28;
    case 0x18u:
      v54 = v109;
      sub_2187C58F8(v57, v109, type metadata accessor for FoodTodayFeedGroup);
      sub_219BED7B4();
      v59 = v72;
      v60 = type metadata accessor for FoodTodayFeedGroup;
      goto LABEL_28;
    default:
      sub_2187C58F8(v57, v54, type metadata accessor for CuratedTodayFeedGroup);
      sub_219BED7B4();
      v59 = v58;
      v60 = type metadata accessor for CuratedTodayFeedGroup;
LABEL_28:
      v66 = v60;
      v67 = v54;
LABEL_29:
      sub_2187C8338(v67, v66);
      return v59;
  }
}

double sub_218993394(double (*a1)(uint64_t), double (*a2)(uint64_t), double (*a3)(uint64_t, uint64_t))
{
  v117 = a2;
  v118 = a3;
  v119 = a1;
  v3 = type metadata accessor for FoodTodayFeedGroup();
  MEMORY[0x28223BE20](v3 - 8);
  v116 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ChannelPickerTodayFeedGroup();
  MEMORY[0x28223BE20](v5 - 8);
  v115 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SavedStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v7 - 8);
  v114 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ChannelTodayFeedGroup();
  MEMORY[0x28223BE20](v9 - 8);
  v113 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ShortcutsTodayFeedGroup();
  MEMORY[0x28223BE20](v11 - 8);
  v112 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for IntroToSportsTodayFeedGroup();
  MEMORY[0x28223BE20](v13 - 8);
  v111 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MySportsTodayFeedGroup();
  MEMORY[0x28223BE20](v15 - 8);
  v110 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for EngagementTodayFeedGroup();
  MEMORY[0x28223BE20](v109);
  v108 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for SharedWithYouTodayFeedGroup();
  MEMORY[0x28223BE20](v107);
  v106 = &v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SeenContentMarkTodayFeedGroup();
  MEMORY[0x28223BE20](v19 - 8);
  v105 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for SuggestionTodayFeedGroup();
  MEMORY[0x28223BE20](v21 - 8);
  v104 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for SpotlightTodayFeedGroup();
  MEMORY[0x28223BE20](v23 - 8);
  v101 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_219BED544();
  v102 = *(v25 - 8);
  v103 = v25;
  MEMORY[0x28223BE20](v25);
  v100 = &v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for SubscriptionTodayFeedGroup();
  MEMORY[0x28223BE20](v27 - 8);
  v99 = &v96 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for NewFollowTodayFeedGroup();
  MEMORY[0x28223BE20](v29 - 8);
  v98 = &v96 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for MagazineFeedGroup();
  MEMORY[0x28223BE20](v31 - 8);
  v97 = &v96 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for TopicTodayFeedGroup();
  MEMORY[0x28223BE20](v33 - 8);
  v96 = &v96 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for MoreForYouTodayFeedGroup();
  MEMORY[0x28223BE20](v35 - 8);
  v37 = &v96 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for LatestStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v38 - 8);
  v40 = &v96 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for MissedStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v41 - 8);
  v43 = &v96 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for ForYouTodayFeedGroup();
  MEMORY[0x28223BE20](v44 - 8);
  v46 = &v96 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for TrendingTodayFeedGroup();
  MEMORY[0x28223BE20](v47 - 8);
  v49 = &v96 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for LocalNewsTodayFeedGroup();
  MEMORY[0x28223BE20](v50 - 8);
  v52 = &v96 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for NewspaperTodayFeedGroup();
  MEMORY[0x28223BE20](v53 - 8);
  v55 = &v96 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for CuratedTodayFeedGroup();
  MEMORY[0x28223BE20](v56 - 8);
  v58 = &v96 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for TodayFeedGroup();
  MEMORY[0x28223BE20](v59);
  v61 = &v96 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187C7E1C(v120, v61);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v82 = sub_2187C58F8(v61, v55, type metadata accessor for NewspaperTodayFeedGroup);
      v63 = v119(v82);
      v70 = type metadata accessor for NewspaperTodayFeedGroup;
      v71 = v55;
      goto LABEL_29;
    case 2u:
      v78 = sub_2187C58F8(v61, v52, type metadata accessor for LocalNewsTodayFeedGroup);
      v63 = v119(v78);
      v70 = type metadata accessor for LocalNewsTodayFeedGroup;
      v71 = v52;
      goto LABEL_29;
    case 3u:
      v80 = sub_2187C58F8(v61, v49, type metadata accessor for TrendingTodayFeedGroup);
      v63 = v119(v80);
      v66 = type metadata accessor for TrendingTodayFeedGroup;
      goto LABEL_13;
    case 4u:
      v69 = sub_2187C58F8(v61, v46, type metadata accessor for ForYouTodayFeedGroup);
      v63 = v119(v69);
      v70 = type metadata accessor for ForYouTodayFeedGroup;
      v71 = v46;
      goto LABEL_29;
    case 5u:
      v85 = sub_2187C58F8(v61, v43, type metadata accessor for MissedStoriesTodayFeedGroup);
      v63 = v119(v85);
      v70 = type metadata accessor for MissedStoriesTodayFeedGroup;
      v71 = v43;
      goto LABEL_29;
    case 6u:
      v88 = sub_2187C58F8(v61, v40, type metadata accessor for LatestStoriesTodayFeedGroup);
      v63 = v119(v88);
      v70 = type metadata accessor for LatestStoriesTodayFeedGroup;
      v71 = v40;
      goto LABEL_29;
    case 7u:
      v81 = sub_2187C58F8(v61, v37, type metadata accessor for MoreForYouTodayFeedGroup);
      v63 = v119(v81);
      v70 = type metadata accessor for MoreForYouTodayFeedGroup;
      v71 = v37;
      goto LABEL_29;
    case 8u:
      v58 = v96;
      v91 = sub_2187C58F8(v61, v96, type metadata accessor for TopicTodayFeedGroup);
      v63 = v119(v91);
      v64 = type metadata accessor for TopicTodayFeedGroup;
      goto LABEL_28;
    case 9u:
      v58 = v97;
      v76 = sub_2187C58F8(v61, v97, type metadata accessor for MagazineFeedGroup);
      v63 = v117(v76);
      v64 = type metadata accessor for MagazineFeedGroup;
      goto LABEL_28;
    case 0xAu:
      v58 = v98;
      v90 = sub_2187C58F8(v61, v98, type metadata accessor for NewFollowTodayFeedGroup);
      v63 = v119(v90);
      v64 = type metadata accessor for NewFollowTodayFeedGroup;
      goto LABEL_28;
    case 0xBu:
      v58 = v99;
      v68 = sub_2187C58F8(v61, v99, type metadata accessor for SubscriptionTodayFeedGroup);
      v63 = v119(v68);
      v64 = type metadata accessor for SubscriptionTodayFeedGroup;
      goto LABEL_28;
    case 0xCu:
      v73 = v102;
      v72 = v103;
      v74 = v100;
      (*(v102 + 32))(v100, v61, v103);
      v75 = sub_2187733B4(&unk_27CC1C570, MEMORY[0x277D31BA8]);
      v63 = v118(v72, v75);
      (*(v73 + 8))(v74, v72);
      return v63;
    case 0xDu:
      v58 = v101;
      v87 = sub_2187C58F8(v61, v101, type metadata accessor for SpotlightTodayFeedGroup);
      v63 = v119(v87);
      v64 = type metadata accessor for SpotlightTodayFeedGroup;
      goto LABEL_28;
    case 0xEu:
      v58 = v104;
      v67 = sub_2187C58F8(v61, v104, type metadata accessor for SuggestionTodayFeedGroup);
      v63 = v119(v67);
      v64 = type metadata accessor for SuggestionTodayFeedGroup;
      goto LABEL_28;
    case 0xFu:
      v58 = v105;
      v79 = sub_2187C58F8(v61, v105, type metadata accessor for SeenContentMarkTodayFeedGroup);
      v63 = v119(v79);
      v64 = type metadata accessor for SeenContentMarkTodayFeedGroup;
      goto LABEL_28;
    case 0x10u:
      v49 = v106;
      v65 = sub_2187C58F8(v61, v106, type metadata accessor for SharedWithYouTodayFeedGroup);
      v63 = v119(v65);
      v66 = type metadata accessor for SharedWithYouTodayFeedGroup;
LABEL_13:
      v70 = v66;
      v71 = v49;
      goto LABEL_29;
    case 0x11u:
      v58 = v108;
      sub_2187C58F8(v61, v108, type metadata accessor for EngagementTodayFeedGroup);
      v83 = sub_2187733B4(&qword_280EC21B8, type metadata accessor for EngagementTodayFeedGroup);
      v63 = v118(v109, v83);
      v64 = type metadata accessor for EngagementTodayFeedGroup;
      goto LABEL_28;
    case 0x12u:
      v58 = v110;
      v89 = sub_2187C58F8(v61, v110, type metadata accessor for MySportsTodayFeedGroup);
      v63 = v119(v89);
      v64 = type metadata accessor for MySportsTodayFeedGroup;
      goto LABEL_28;
    case 0x13u:
      v58 = v111;
      v93 = sub_2187C58F8(v61, v111, type metadata accessor for IntroToSportsTodayFeedGroup);
      v63 = v119(v93);
      v64 = type metadata accessor for IntroToSportsTodayFeedGroup;
      goto LABEL_28;
    case 0x14u:
      v58 = v112;
      v84 = sub_2187C58F8(v61, v112, type metadata accessor for ShortcutsTodayFeedGroup);
      v63 = v119(v84);
      v64 = type metadata accessor for ShortcutsTodayFeedGroup;
      goto LABEL_28;
    case 0x15u:
      v58 = v113;
      v86 = sub_2187C58F8(v61, v113, type metadata accessor for ChannelTodayFeedGroup);
      v63 = v119(v86);
      v64 = type metadata accessor for ChannelTodayFeedGroup;
      goto LABEL_28;
    case 0x16u:
      v58 = v114;
      v92 = sub_2187C58F8(v61, v114, type metadata accessor for SavedStoriesTodayFeedGroup);
      v63 = v119(v92);
      v64 = type metadata accessor for SavedStoriesTodayFeedGroup;
      goto LABEL_28;
    case 0x17u:
      v58 = v115;
      v94 = sub_2187C58F8(v61, v115, type metadata accessor for ChannelPickerTodayFeedGroup);
      v63 = v119(v94);
      v64 = type metadata accessor for ChannelPickerTodayFeedGroup;
      goto LABEL_28;
    case 0x18u:
      v58 = v116;
      v77 = sub_2187C58F8(v61, v116, type metadata accessor for FoodTodayFeedGroup);
      v63 = v119(v77);
      v64 = type metadata accessor for FoodTodayFeedGroup;
      goto LABEL_28;
    default:
      v62 = sub_2187C58F8(v61, v58, type metadata accessor for CuratedTodayFeedGroup);
      v63 = v119(v62);
      v64 = type metadata accessor for CuratedTodayFeedGroup;
LABEL_28:
      v70 = v64;
      v71 = v58;
LABEL_29:
      sub_2187C8338(v71, v70);
      return v63;
  }
}

uint64_t sub_2189943F8(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t))
{
  v118 = a2;
  v123 = a1;
  v2 = type metadata accessor for FoodTodayFeedGroup();
  MEMORY[0x28223BE20](v2 - 8);
  v119 = &v104 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ChannelPickerTodayFeedGroup();
  MEMORY[0x28223BE20](v4 - 8);
  v117 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ChannelTodayFeedGroup();
  MEMORY[0x28223BE20](v6 - 8);
  v116 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for IntroToSportsTodayFeedGroup();
  MEMORY[0x28223BE20](v8 - 8);
  v115 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MySportsTodayFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v114 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for SharedWithYouTodayFeedGroup();
  MEMORY[0x28223BE20](v112);
  v113 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SeenContentMarkTodayFeedGroup();
  MEMORY[0x28223BE20](v13 - 8);
  v111 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SuggestionTodayFeedGroup();
  MEMORY[0x28223BE20](v15 - 8);
  v110 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SpotlightTodayFeedGroup();
  MEMORY[0x28223BE20](v17 - 8);
  v109 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SubscriptionTodayFeedGroup();
  MEMORY[0x28223BE20](v19 - 8);
  v108 = &v104 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for NewFollowTodayFeedGroup();
  MEMORY[0x28223BE20](v21 - 8);
  v107 = &v104 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for MagazineFeedGroup();
  MEMORY[0x28223BE20](v23 - 8);
  v106 = &v104 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for TopicTodayFeedGroup();
  MEMORY[0x28223BE20](v25 - 8);
  v105 = &v104 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for MoreForYouTodayFeedGroup();
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v104 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for LatestStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v104 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for MissedStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v33 - 8);
  v35 = &v104 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for ForYouTodayFeedGroup();
  MEMORY[0x28223BE20](v36 - 8);
  v38 = &v104 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for TrendingTodayFeedGroup();
  MEMORY[0x28223BE20](v39 - 8);
  v41 = &v104 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for LocalNewsTodayFeedGroup();
  MEMORY[0x28223BE20](v42 - 8);
  v44 = &v104 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for NewspaperTodayFeedGroup();
  MEMORY[0x28223BE20](v45 - 8);
  v47 = &v104 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_219BF1904();
  v49 = *(v48 - 8);
  v121 = v48;
  v122 = v49;
  MEMORY[0x28223BE20](v48);
  v120 = &v104 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for CuratedTodayFeedGroup();
  MEMORY[0x28223BE20](v51 - 8);
  v53 = &v104 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for TodayFeedGroup();
  MEMORY[0x28223BE20](v54);
  v56 = &v104 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187C7E1C(v124, v56);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2187C58F8(v56, v47, type metadata accessor for NewspaperTodayFeedGroup);
      v79 = v120;
      v80 = sub_219BED874();
      v57 = v123(v80);
      (*(v122 + 8))(v79, v121);
      v65 = type metadata accessor for NewspaperTodayFeedGroup;
      v66 = v47;
      break;
    case 2u:
      sub_2187C58F8(v56, v44, type metadata accessor for LocalNewsTodayFeedGroup);
      v69 = v120;
      v70 = sub_219BED874();
      v57 = v123(v70);
      (*(v122 + 8))(v69, v121);
      v60 = type metadata accessor for LocalNewsTodayFeedGroup;
      goto LABEL_25;
    case 3u:
      sub_2187C58F8(v56, v41, type metadata accessor for TrendingTodayFeedGroup);
      v73 = v120;
      v74 = sub_219BED874();
      v57 = v123(v74);
      (*(v122 + 8))(v73, v121);
      v65 = type metadata accessor for TrendingTodayFeedGroup;
      v66 = v41;
      break;
    case 4u:
      sub_2187C58F8(v56, v38, type metadata accessor for ForYouTodayFeedGroup);
      v63 = v120;
      v64 = sub_219BED874();
      v57 = v123(v64);
      (*(v122 + 8))(v63, v121);
      v65 = type metadata accessor for ForYouTodayFeedGroup;
      v66 = v38;
      break;
    case 5u:
      sub_2187C58F8(v56, v35, type metadata accessor for MissedStoriesTodayFeedGroup);
      v83 = v120;
      v84 = sub_219BED874();
      v57 = v123(v84);
      (*(v122 + 8))(v83, v121);
      v65 = type metadata accessor for MissedStoriesTodayFeedGroup;
      v66 = v35;
      break;
    case 6u:
      sub_2187C58F8(v56, v32, type metadata accessor for LatestStoriesTodayFeedGroup);
      v85 = v120;
      v86 = sub_219BED874();
      v57 = v123(v86);
      (*(v122 + 8))(v85, v121);
      v65 = type metadata accessor for LatestStoriesTodayFeedGroup;
      v66 = v32;
      break;
    case 7u:
      sub_2187C58F8(v56, v29, type metadata accessor for MoreForYouTodayFeedGroup);
      v75 = v120;
      v76 = sub_219BED874();
      v57 = v123(v76);
      (*(v122 + 8))(v75, v121);
      v68 = type metadata accessor for MoreForYouTodayFeedGroup;
      goto LABEL_11;
    case 8u:
      v44 = v105;
      sub_2187C58F8(v56, v105, type metadata accessor for TopicTodayFeedGroup);
      v91 = v120;
      v92 = sub_219BED874();
      v57 = v123(v92);
      (*(v122 + 8))(v91, v121);
      v60 = type metadata accessor for TopicTodayFeedGroup;
      goto LABEL_25;
    case 9u:
      v29 = v106;
      v67 = sub_2187C58F8(v56, v106, type metadata accessor for MagazineFeedGroup);
      v57 = v118(v67);
      v68 = type metadata accessor for MagazineFeedGroup;
LABEL_11:
      v65 = v68;
      v66 = v29;
      break;
    case 0xAu:
      v44 = v107;
      sub_2187C58F8(v56, v107, type metadata accessor for NewFollowTodayFeedGroup);
      v89 = v120;
      v90 = sub_219BED874();
      v57 = v123(v90);
      (*(v122 + 8))(v89, v121);
      v60 = type metadata accessor for NewFollowTodayFeedGroup;
      goto LABEL_25;
    case 0xBu:
      v44 = v108;
      sub_2187C58F8(v56, v108, type metadata accessor for SubscriptionTodayFeedGroup);
      v61 = v120;
      v62 = sub_219BED874();
      v57 = v123(v62);
      (*(v122 + 8))(v61, v121);
      v60 = type metadata accessor for SubscriptionTodayFeedGroup;
      goto LABEL_25;
    case 0xCu:
    case 0x11u:
    case 0x14u:
    case 0x16u:
      sub_2187C8338(v56, type metadata accessor for TodayFeedGroup);
      return MEMORY[0x277D84F90];
    case 0xDu:
      v44 = v109;
      sub_2187C58F8(v56, v109, type metadata accessor for SpotlightTodayFeedGroup);
      v58 = v120;
      v59 = sub_219BED874();
      v57 = v123(v59);
      (*(v122 + 8))(v58, v121);
      v60 = type metadata accessor for SpotlightTodayFeedGroup;
      goto LABEL_25;
    case 0xEu:
      v44 = v110;
      sub_2187C58F8(v56, v110, type metadata accessor for SuggestionTodayFeedGroup);
      v81 = v120;
      v82 = sub_219BED874();
      v57 = v123(v82);
      (*(v122 + 8))(v81, v121);
      v60 = type metadata accessor for SuggestionTodayFeedGroup;
      goto LABEL_25;
    case 0xFu:
      v44 = v111;
      sub_2187C58F8(v56, v111, type metadata accessor for SeenContentMarkTodayFeedGroup);
      v95 = v120;
      v96 = sub_219BED874();
      v57 = v123(v96);
      (*(v122 + 8))(v95, v121);
      v60 = type metadata accessor for SeenContentMarkTodayFeedGroup;
      goto LABEL_25;
    case 0x10u:
      v44 = v113;
      sub_2187C58F8(v56, v113, type metadata accessor for SharedWithYouTodayFeedGroup);
      v99 = v120;
      v100 = sub_219BED874();
      v57 = v123(v100);
      (*(v122 + 8))(v99, v121);
      v60 = type metadata accessor for SharedWithYouTodayFeedGroup;
      goto LABEL_25;
    case 0x12u:
      v44 = v114;
      sub_2187C58F8(v56, v114, type metadata accessor for MySportsTodayFeedGroup);
      v87 = v120;
      v88 = sub_219BED874();
      v57 = v123(v88);
      (*(v122 + 8))(v87, v121);
      v60 = type metadata accessor for MySportsTodayFeedGroup;
      goto LABEL_25;
    case 0x13u:
      v44 = v115;
      sub_2187C58F8(v56, v115, type metadata accessor for IntroToSportsTodayFeedGroup);
      v93 = v120;
      v94 = sub_219BED874();
      v57 = v123(v94);
      (*(v122 + 8))(v93, v121);
      v60 = type metadata accessor for IntroToSportsTodayFeedGroup;
      goto LABEL_25;
    case 0x15u:
      v44 = v116;
      sub_2187C58F8(v56, v116, type metadata accessor for ChannelTodayFeedGroup);
      v97 = v120;
      v98 = sub_219BED874();
      v57 = v123(v98);
      (*(v122 + 8))(v97, v121);
      v60 = type metadata accessor for ChannelTodayFeedGroup;
      goto LABEL_25;
    case 0x17u:
      v44 = v117;
      sub_2187C58F8(v56, v117, type metadata accessor for ChannelPickerTodayFeedGroup);
      v101 = v120;
      v102 = sub_219BED874();
      v57 = v123(v102);
      (*(v122 + 8))(v101, v121);
      v60 = type metadata accessor for ChannelPickerTodayFeedGroup;
      goto LABEL_25;
    case 0x18u:
      v44 = v119;
      sub_2187C58F8(v56, v119, type metadata accessor for FoodTodayFeedGroup);
      v71 = v120;
      v72 = sub_219BED874();
      v57 = v123(v72);
      (*(v122 + 8))(v71, v121);
      v60 = type metadata accessor for FoodTodayFeedGroup;
LABEL_25:
      v65 = v60;
      v66 = v44;
      break;
    default:
      sub_2187C58F8(v56, v53, type metadata accessor for CuratedTodayFeedGroup);
      v77 = v120;
      v78 = sub_219BED874();
      v57 = v123(v78);
      (*(v122 + 8))(v77, v121);
      v65 = type metadata accessor for CuratedTodayFeedGroup;
      v66 = v53;
      break;
  }

  sub_2187C8338(v66, v65);
  return v57;
}

uint64_t sub_2189954C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MagazineFeedGroup();
  MEMORY[0x28223BE20](v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TodayFeedGroup();
  MEMORY[0x28223BE20](v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187C7E1C(v2, v9);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 3u:
    case 7u:
    case 8u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xDu:
    case 0xEu:
    case 0xFu:
    case 0x10u:
    case 0x11u:
    case 0x14u:
    case 0x15u:
    case 0x16u:
    case 0x17u:
      sub_2187C8338(v9, type metadata accessor for TodayFeedGroup);
      v10 = MEMORY[0x277D329E0];
LABEL_3:
      v11 = *v10;
      v12 = sub_219BEFBD4();
      (*(*(v12 - 8) + 104))(a1, v11, v12);
      v13 = MEMORY[0x277D320E8];
LABEL_4:
      v14 = *v13;
      v15 = sub_219BEE6F4();
      return (*(*(v15 - 8) + 104))(a1, v14, v15);
    case 2u:
      v17 = MEMORY[0x277D32928];
      goto LABEL_15;
    case 4u:
      v17 = MEMORY[0x277D32940];
      goto LABEL_15;
    case 5u:
      v17 = MEMORY[0x277D329D0];
      goto LABEL_15;
    case 6u:
      v17 = MEMORY[0x277D329A0];
      goto LABEL_15;
    case 9u:
      sub_2187C58F8(v9, v6, type metadata accessor for MagazineFeedGroup);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
        case 9u:
        case 0xAu:
        case 0xCu:
          sub_2187C8338(v6, type metadata accessor for MagazineFeedGroup);
          v10 = MEMORY[0x277D32930];
          goto LABEL_3;
        case 2u:
        case 6u:
        case 8u:
          sub_2187C8338(v6, type metadata accessor for MagazineFeedGroup);
          v25 = *MEMORY[0x277D32660];
          v26 = sub_219BEF564();
          (*(*(v26 - 8) + 104))(a1, v25, v26);
          v13 = MEMORY[0x277D320D0];
          goto LABEL_4;
        case 3u:
          sub_21899DCD4();
          v33 = *(v32 + 48);
          v34 = *MEMORY[0x277D32930];
          v35 = sub_219BEFBD4();
          (*(*(v35 - 8) + 104))(a1, v34, v35);
          v36 = *MEMORY[0x277D32660];
          v37 = sub_219BEF564();
          (*(*(v37 - 8) + 104))(a1 + v33, v36, v37);
          v29 = MEMORY[0x277D320C8];
          break;
        case 5u:
          v27 = *MEMORY[0x277D32670];
          v28 = sub_219BEF564();
          (*(*(v28 - 8) + 104))(a1, v27, v28);
          v29 = MEMORY[0x277D320D0];
          break;
        case 0xBu:
          v30 = *MEMORY[0x277D32988];
          v31 = sub_219BEFBD4();
          (*(*(v31 - 8) + 104))(a1, v30, v31);
          v29 = MEMORY[0x277D320E8];
          break;
        default:
          sub_2187C8338(v6, type metadata accessor for MagazineFeedGroup);
          v13 = MEMORY[0x277D320E0];
          goto LABEL_4;
      }

      v38 = *v29;
      v39 = sub_219BEE6F4();
      (*(*(v39 - 8) + 104))(a1, v38, v39);
      v23 = type metadata accessor for MagazineFeedGroup;
      v24 = v6;
      return sub_2187C8338(v24, v23);
    case 0x12u:
      v17 = MEMORY[0x277D32958];
      goto LABEL_15;
    case 0x13u:
      v17 = MEMORY[0x277D32998];
      goto LABEL_15;
    case 0x18u:
      v18 = MEMORY[0x277D320E0];
      goto LABEL_16;
    default:
      v17 = MEMORY[0x277D329D8];
LABEL_15:
      v19 = *v17;
      v20 = sub_219BEFBD4();
      (*(*(v20 - 8) + 104))(a1, v19, v20);
      v18 = MEMORY[0x277D320E8];
LABEL_16:
      v21 = *v18;
      v22 = sub_219BEE6F4();
      (*(*(v22 - 8) + 104))(a1, v21, v22);
      v23 = type metadata accessor for TodayFeedGroup;
      v24 = v9;
      return sub_2187C8338(v24, v23);
  }
}

unint64_t sub_218995A38()
{
  v0 = type metadata accessor for FoodTodayFeedGroup();
  MEMORY[0x28223BE20](v0 - 8);
  v86 = &v67 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for ChannelPickerTodayFeedGroup();
  MEMORY[0x28223BE20](v2 - 8);
  v85 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SavedStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v4 - 8);
  v84 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ChannelTodayFeedGroup();
  MEMORY[0x28223BE20](v6 - 8);
  v83 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ShortcutsTodayFeedGroup();
  MEMORY[0x28223BE20](v8 - 8);
  v82 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IntroToSportsTodayFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v81 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MySportsTodayFeedGroup();
  MEMORY[0x28223BE20](v12 - 8);
  v80 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for SharedWithYouTodayFeedGroup();
  MEMORY[0x28223BE20](v79);
  v78 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LatestStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v15 - 8);
  v77 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MissedStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v17 - 8);
  v76 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SeenContentMarkTodayFeedGroup();
  MEMORY[0x28223BE20](v19 - 8);
  v75 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for SuggestionTodayFeedGroup();
  MEMORY[0x28223BE20](v21 - 8);
  v74 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for SpotlightTodayFeedGroup();
  MEMORY[0x28223BE20](v23 - 8);
  v73 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_219BED544();
  v71 = *(v25 - 8);
  v72 = v25;
  MEMORY[0x28223BE20](v25);
  v70 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for SubscriptionTodayFeedGroup();
  MEMORY[0x28223BE20](v27 - 8);
  v69 = &v67 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for NewFollowTodayFeedGroup();
  MEMORY[0x28223BE20](v29 - 8);
  v68 = &v67 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for MagazineFeedGroup();
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v67 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for TopicTodayFeedGroup();
  MEMORY[0x28223BE20](v34 - 8);
  v36 = &v67 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for MoreForYouTodayFeedGroup();
  MEMORY[0x28223BE20](v37 - 8);
  v39 = &v67 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for ForYouTodayFeedGroup();
  MEMORY[0x28223BE20](v40 - 8);
  v42 = &v67 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for TrendingTodayFeedGroup();
  MEMORY[0x28223BE20](v43 - 8);
  v45 = &v67 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for LocalNewsTodayFeedGroup();
  MEMORY[0x28223BE20](v46 - 8);
  v48 = &v67 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for NewspaperTodayFeedGroup();
  MEMORY[0x28223BE20](v49 - 8);
  v51 = &v67 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for CuratedTodayFeedGroup();
  MEMORY[0x28223BE20](v52 - 8);
  v54 = &v67 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for TodayFeedGroup();
  MEMORY[0x28223BE20](v55);
  v57 = &v67 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187C7E1C(v87, v57);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2187C58F8(v57, v51, type metadata accessor for NewspaperTodayFeedGroup);
      v58 = sub_219BED804();
      v61 = type metadata accessor for NewspaperTodayFeedGroup;
      v62 = v51;
      goto LABEL_28;
    case 2u:
      sub_2187C58F8(v57, v48, type metadata accessor for LocalNewsTodayFeedGroup);
      v58 = sub_219BED804();
      v61 = type metadata accessor for LocalNewsTodayFeedGroup;
      v62 = v48;
      goto LABEL_28;
    case 3u:
      sub_2187C58F8(v57, v45, type metadata accessor for TrendingTodayFeedGroup);
      v58 = sub_219BED804();
      v61 = type metadata accessor for TrendingTodayFeedGroup;
      v62 = v45;
      goto LABEL_28;
    case 4u:
      sub_2187C58F8(v57, v42, type metadata accessor for ForYouTodayFeedGroup);
      v58 = sub_219BED804();
      v61 = type metadata accessor for ForYouTodayFeedGroup;
      v62 = v42;
      goto LABEL_28;
    case 5u:
      v54 = v76;
      sub_2187C58F8(v57, v76, type metadata accessor for MissedStoriesTodayFeedGroup);
      v58 = sub_219BED804();
      v59 = type metadata accessor for MissedStoriesTodayFeedGroup;
      goto LABEL_27;
    case 6u:
      v54 = v77;
      sub_2187C58F8(v57, v77, type metadata accessor for LatestStoriesTodayFeedGroup);
      v58 = sub_219BED804();
      v59 = type metadata accessor for LatestStoriesTodayFeedGroup;
      goto LABEL_27;
    case 7u:
      sub_2187C58F8(v57, v39, type metadata accessor for MoreForYouTodayFeedGroup);
      v58 = sub_219BED804();
      v61 = type metadata accessor for MoreForYouTodayFeedGroup;
      v62 = v39;
      goto LABEL_28;
    case 8u:
      sub_2187C58F8(v57, v36, type metadata accessor for TopicTodayFeedGroup);
      v58 = sub_219BED804();
      v61 = type metadata accessor for TopicTodayFeedGroup;
      v62 = v36;
      goto LABEL_28;
    case 9u:
      sub_2187C58F8(v57, v33, type metadata accessor for MagazineFeedGroup);
      v58 = sub_218CDB32C();
      v61 = type metadata accessor for MagazineFeedGroup;
      v62 = v33;
      goto LABEL_28;
    case 0xAu:
      v54 = v68;
      sub_2187C58F8(v57, v68, type metadata accessor for NewFollowTodayFeedGroup);
      v58 = sub_219BED804();
      v59 = type metadata accessor for NewFollowTodayFeedGroup;
      goto LABEL_27;
    case 0xBu:
      v54 = v69;
      sub_2187C58F8(v57, v69, type metadata accessor for SubscriptionTodayFeedGroup);
      v58 = sub_219BED804();
      v59 = type metadata accessor for SubscriptionTodayFeedGroup;
      goto LABEL_27;
    case 0xCu:
      v63 = v70;
      v64 = v71;
      v65 = v72;
      (*(v71 + 32))(v70, v57, v72);
      v58 = sub_219BED504();
      (*(v64 + 8))(v63, v65);
      return v58;
    case 0xDu:
      v54 = v73;
      sub_2187C58F8(v57, v73, type metadata accessor for SpotlightTodayFeedGroup);
      v58 = sub_219BED804();
      v59 = type metadata accessor for SpotlightTodayFeedGroup;
      goto LABEL_27;
    case 0xEu:
      v54 = v74;
      sub_2187C58F8(v57, v74, type metadata accessor for SuggestionTodayFeedGroup);
      v58 = sub_219BED804();
      v59 = type metadata accessor for SuggestionTodayFeedGroup;
      goto LABEL_27;
    case 0xFu:
      v54 = v75;
      sub_2187C58F8(v57, v75, type metadata accessor for SeenContentMarkTodayFeedGroup);
      v58 = sub_219BED804();
      v59 = type metadata accessor for SeenContentMarkTodayFeedGroup;
      goto LABEL_27;
    case 0x10u:
      v60 = v78;
      sub_2187C58F8(v57, v78, type metadata accessor for SharedWithYouTodayFeedGroup);
      v58 = sub_219BED804();
      v61 = type metadata accessor for SharedWithYouTodayFeedGroup;
      v62 = v60;
      goto LABEL_28;
    case 0x11u:
      sub_2187C8338(v57, type metadata accessor for TodayFeedGroup);
      return sub_2194AE6E8(MEMORY[0x277D84F90]);
    case 0x12u:
      v54 = v80;
      sub_2187C58F8(v57, v80, type metadata accessor for MySportsTodayFeedGroup);
      v58 = sub_219BED804();
      v59 = type metadata accessor for MySportsTodayFeedGroup;
      goto LABEL_27;
    case 0x13u:
      v54 = v81;
      sub_2187C58F8(v57, v81, type metadata accessor for IntroToSportsTodayFeedGroup);
      v58 = sub_219BED804();
      v59 = type metadata accessor for IntroToSportsTodayFeedGroup;
      goto LABEL_27;
    case 0x14u:
      v54 = v82;
      sub_2187C58F8(v57, v82, type metadata accessor for ShortcutsTodayFeedGroup);
      v58 = sub_219BED804();
      v59 = type metadata accessor for ShortcutsTodayFeedGroup;
      goto LABEL_27;
    case 0x15u:
      v54 = v83;
      sub_2187C58F8(v57, v83, type metadata accessor for ChannelTodayFeedGroup);
      v58 = sub_219BED804();
      v59 = type metadata accessor for ChannelTodayFeedGroup;
      goto LABEL_27;
    case 0x16u:
      v54 = v84;
      sub_2187C58F8(v57, v84, type metadata accessor for SavedStoriesTodayFeedGroup);
      v58 = sub_219BED804();
      v59 = type metadata accessor for SavedStoriesTodayFeedGroup;
      goto LABEL_27;
    case 0x17u:
      v54 = v85;
      sub_2187C58F8(v57, v85, type metadata accessor for ChannelPickerTodayFeedGroup);
      v58 = sub_219BED804();
      v59 = type metadata accessor for ChannelPickerTodayFeedGroup;
      goto LABEL_27;
    case 0x18u:
      v54 = v86;
      sub_2187C58F8(v57, v86, type metadata accessor for FoodTodayFeedGroup);
      v58 = sub_219BED804();
      v59 = type metadata accessor for FoodTodayFeedGroup;
      goto LABEL_27;
    default:
      sub_2187C58F8(v57, v54, type metadata accessor for CuratedTodayFeedGroup);
      v58 = sub_219BED804();
      v59 = type metadata accessor for CuratedTodayFeedGroup;
LABEL_27:
      v61 = v59;
      v62 = v54;
LABEL_28:
      sub_2187C8338(v62, v61);
      return v58;
  }
}

uint64_t sub_218996870@<X0>(uint64_t a1@<X8>)
{
  v92 = a1;
  v1 = type metadata accessor for FoodTodayFeedGroup();
  MEMORY[0x28223BE20](v1 - 8);
  v90 = &v73 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ChannelPickerTodayFeedGroup();
  MEMORY[0x28223BE20](v3 - 8);
  v89 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SavedStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v5 - 8);
  v88 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ChannelTodayFeedGroup();
  MEMORY[0x28223BE20](v7 - 8);
  v87 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ShortcutsTodayFeedGroup();
  MEMORY[0x28223BE20](v9 - 8);
  v86 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for IntroToSportsTodayFeedGroup();
  MEMORY[0x28223BE20](v11 - 8);
  v85 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MySportsTodayFeedGroup();
  MEMORY[0x28223BE20](v13 - 8);
  v84 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for SharedWithYouTodayFeedGroup();
  MEMORY[0x28223BE20](v83);
  v82 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21899DD44(0, &qword_280E91C18, MEMORY[0x277D31FF0]);
  MEMORY[0x28223BE20](v16 - 8);
  v91 = &v73 - v17;
  v18 = type metadata accessor for SuggestionTodayFeedGroup();
  MEMORY[0x28223BE20](v18 - 8);
  v81 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for SpotlightTodayFeedGroup();
  MEMORY[0x28223BE20](v20 - 8);
  v80 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_219BED544();
  v78 = *(v22 - 8);
  v79 = v22;
  MEMORY[0x28223BE20](v22);
  v77 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for SubscriptionTodayFeedGroup();
  MEMORY[0x28223BE20](v24 - 8);
  v76 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for NewFollowTodayFeedGroup();
  MEMORY[0x28223BE20](v26 - 8);
  v75 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for MagazineFeedGroup();
  MEMORY[0x28223BE20](v28 - 8);
  v74 = &v73 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for TopicTodayFeedGroup();
  MEMORY[0x28223BE20](v30 - 8);
  v73 = &v73 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for MoreForYouTodayFeedGroup();
  MEMORY[0x28223BE20](v32 - 8);
  v34 = &v73 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for LatestStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v35 - 8);
  v37 = &v73 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for MissedStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v38 - 8);
  v40 = &v73 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for ForYouTodayFeedGroup();
  MEMORY[0x28223BE20](v41 - 8);
  v43 = &v73 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for TrendingTodayFeedGroup();
  MEMORY[0x28223BE20](v44 - 8);
  v46 = &v73 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for LocalNewsTodayFeedGroup();
  MEMORY[0x28223BE20](v47 - 8);
  v49 = &v73 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for NewspaperTodayFeedGroup();
  MEMORY[0x28223BE20](v50 - 8);
  v52 = &v73 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for CuratedTodayFeedGroup();
  MEMORY[0x28223BE20](v53 - 8);
  v55 = &v73 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for TodayFeedGroup();
  MEMORY[0x28223BE20](v56);
  v58 = &v73 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187C7E1C(v93, v58);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2187C58F8(v58, v52, type metadata accessor for NewspaperTodayFeedGroup);
      sub_219BED8C4();
      v72 = type metadata accessor for NewspaperTodayFeedGroup;
      goto LABEL_15;
    case 2u:
      sub_2187C58F8(v58, v49, type metadata accessor for LocalNewsTodayFeedGroup);
      sub_219BED8C4();
      v67 = type metadata accessor for LocalNewsTodayFeedGroup;
      v68 = v49;
      return sub_2187C8338(v68, v67);
    case 3u:
      sub_2187C58F8(v58, v46, type metadata accessor for TrendingTodayFeedGroup);
      sub_219BED8C4();
      v67 = type metadata accessor for TrendingTodayFeedGroup;
      v68 = v46;
      return sub_2187C8338(v68, v67);
    case 4u:
      sub_2187C58F8(v58, v43, type metadata accessor for ForYouTodayFeedGroup);
      sub_219BED8C4();
      v67 = type metadata accessor for ForYouTodayFeedGroup;
      v68 = v43;
      return sub_2187C8338(v68, v67);
    case 5u:
      sub_2187C58F8(v58, v40, type metadata accessor for MissedStoriesTodayFeedGroup);
      sub_219BED8C4();
      v67 = type metadata accessor for MissedStoriesTodayFeedGroup;
      v68 = v40;
      return sub_2187C8338(v68, v67);
    case 6u:
      sub_2187C58F8(v58, v37, type metadata accessor for LatestStoriesTodayFeedGroup);
      sub_219BED8C4();
      v67 = type metadata accessor for LatestStoriesTodayFeedGroup;
      v68 = v37;
      return sub_2187C8338(v68, v67);
    case 7u:
      sub_2187C58F8(v58, v34, type metadata accessor for MoreForYouTodayFeedGroup);
      sub_219BED8C4();
      v67 = type metadata accessor for MoreForYouTodayFeedGroup;
      v68 = v34;
      return sub_2187C8338(v68, v67);
    case 8u:
      v55 = v73;
      sub_2187C58F8(v58, v73, type metadata accessor for TopicTodayFeedGroup);
      sub_219BED8C4();
      v66 = type metadata accessor for TopicTodayFeedGroup;
      goto LABEL_27;
    case 9u:
      v55 = v74;
      sub_2187C58F8(v58, v74, type metadata accessor for MagazineFeedGroup);
      sub_218CDB9F4(v92);
      v66 = type metadata accessor for MagazineFeedGroup;
      goto LABEL_27;
    case 0xAu:
      v55 = v75;
      sub_2187C58F8(v58, v75, type metadata accessor for NewFollowTodayFeedGroup);
      sub_219BED8C4();
      v66 = type metadata accessor for NewFollowTodayFeedGroup;
      goto LABEL_27;
    case 0xBu:
      v55 = v76;
      sub_2187C58F8(v58, v76, type metadata accessor for SubscriptionTodayFeedGroup);
      sub_219BED8C4();
      v66 = type metadata accessor for SubscriptionTodayFeedGroup;
      goto LABEL_27;
    case 0xCu:
      v69 = v77;
      v70 = v78;
      v71 = v79;
      (*(v78 + 32))(v77, v58, v79);
      sub_219BED534();
      return (*(v70 + 8))(v69, v71);
    case 0xDu:
      v55 = v80;
      sub_2187C58F8(v58, v80, type metadata accessor for SpotlightTodayFeedGroup);
      sub_219BED8C4();
      v66 = type metadata accessor for SpotlightTodayFeedGroup;
      goto LABEL_27;
    case 0xEu:
      v55 = v81;
      sub_2187C58F8(v58, v81, type metadata accessor for SuggestionTodayFeedGroup);
      sub_219BED8C4();
      v66 = type metadata accessor for SuggestionTodayFeedGroup;
      goto LABEL_27;
    case 0xFu:
    case 0x11u:
      sub_2187C8338(v58, type metadata accessor for TodayFeedGroup);
      v59 = v91;
      sub_219BEFA94();
      v60 = *MEMORY[0x277D31FE8];
      v61 = sub_219BEE3E4();
      v62 = *(v61 - 8);
      (*(v62 + 104))(v59, v60, v61);
      (*(v62 + 56))(v59, 0, 1, v61);
      v63 = v92;
      sub_219BEE5C4();
      v64 = sub_219BEE5D4();
      return (*(*(v64 - 8) + 56))(v63, 0, 1, v64);
    case 0x10u:
      v52 = v82;
      sub_2187C58F8(v58, v82, type metadata accessor for SharedWithYouTodayFeedGroup);
      sub_219BED8C4();
      v72 = type metadata accessor for SharedWithYouTodayFeedGroup;
LABEL_15:
      v67 = v72;
      v68 = v52;
      return sub_2187C8338(v68, v67);
    case 0x12u:
      v55 = v84;
      sub_2187C58F8(v58, v84, type metadata accessor for MySportsTodayFeedGroup);
      sub_219BED8C4();
      v66 = type metadata accessor for MySportsTodayFeedGroup;
      goto LABEL_27;
    case 0x13u:
      v55 = v85;
      sub_2187C58F8(v58, v85, type metadata accessor for IntroToSportsTodayFeedGroup);
      sub_219BED8C4();
      v66 = type metadata accessor for IntroToSportsTodayFeedGroup;
      goto LABEL_27;
    case 0x14u:
      v55 = v86;
      sub_2187C58F8(v58, v86, type metadata accessor for ShortcutsTodayFeedGroup);
      sub_219BED8C4();
      v66 = type metadata accessor for ShortcutsTodayFeedGroup;
      goto LABEL_27;
    case 0x15u:
      v55 = v87;
      sub_2187C58F8(v58, v87, type metadata accessor for ChannelTodayFeedGroup);
      sub_219BED8C4();
      v66 = type metadata accessor for ChannelTodayFeedGroup;
      goto LABEL_27;
    case 0x16u:
      v55 = v88;
      sub_2187C58F8(v58, v88, type metadata accessor for SavedStoriesTodayFeedGroup);
      sub_219BED8C4();
      v66 = type metadata accessor for SavedStoriesTodayFeedGroup;
      goto LABEL_27;
    case 0x17u:
      v55 = v89;
      sub_2187C58F8(v58, v89, type metadata accessor for ChannelPickerTodayFeedGroup);
      sub_219BED8C4();
      v66 = type metadata accessor for ChannelPickerTodayFeedGroup;
      goto LABEL_27;
    case 0x18u:
      v55 = v90;
      sub_2187C58F8(v58, v90, type metadata accessor for FoodTodayFeedGroup);
      sub_219BED8C4();
      v66 = type metadata accessor for FoodTodayFeedGroup;
      goto LABEL_27;
    default:
      sub_2187C58F8(v58, v55, type metadata accessor for CuratedTodayFeedGroup);
      sub_219BED8C4();
      v66 = type metadata accessor for CuratedTodayFeedGroup;
LABEL_27:
      v67 = v66;
      v68 = v55;
      return sub_2187C8338(v68, v67);
  }
}