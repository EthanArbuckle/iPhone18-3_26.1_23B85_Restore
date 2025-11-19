uint64_t sub_25DD82A74()
{
  result = sub_25DD82170();
  if (!v0)
  {
    v2 = MEMORY[0x25F8A3180](result);

    return v2;
  }

  return result;
}

double sub_25DD82AC8()
{
  sub_25DD82170();
  if (!v1)
  {
    v3 = sub_25DD96E54();
    if (v4)
    {
      v5 = sub_25DD97194();
      swift_allocError();
      v7 = v6;
      v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2418, &qword_25DD99C20) + 48);
      *v7 = MEMORY[0x277D839F8];
      v9 = *v0;
      sub_25DD74F04();
      sub_25DD97174();
      (*(*(v5 - 8) + 104))(v7, *MEMORY[0x277D84160], v5);
      swift_willThrow();
    }

    else
    {
      return *&v3;
    }
  }

  return result;
}

float sub_25DD82BD4()
{
  sub_25DD82170();
  if (!v1)
  {
    v3 = COERCE_DOUBLE(sub_25DD96E54());
    if (v4)
    {
      v5 = sub_25DD97194();
      swift_allocError();
      v7 = v6;
      v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2418, &qword_25DD99C20) + 48);
      *v7 = MEMORY[0x277D83A90];
      v9 = *v0;
      sub_25DD74F04();
      sub_25DD97174();
      (*(*(v5 - 8) + 104))(v7, *MEMORY[0x277D84160], v5);
      swift_willThrow();
    }

    else
    {
      return v3;
    }
  }

  return result;
}

uint64_t sub_25DD82FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_25DD967C4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  if (swift_dynamicCastMetatype())
  {
    result = sub_25DD82844();
    if (!v4)
    {
      LOBYTE(v34[0]) = result & 1;
      return swift_dynamicCast();
    }

    return result;
  }

  if (swift_dynamicCastMetatype())
  {
    result = sub_25DD82170();
    if (!v4)
    {
      v11 = MEMORY[0x25F8A3180](result);
      v13 = v12;

      v34[0] = v11;
      v34[1] = v13;
      return swift_dynamicCast();
    }

    return result;
  }

  v14 = MEMORY[0x277D839F8];
  if (swift_dynamicCastMetatype())
  {
    result = sub_25DD82170();
    if (v4)
    {
      return result;
    }

    v15 = sub_25DD96E54();
    if ((v16 & 1) == 0)
    {
      v34[0] = v15;
      return swift_dynamicCast();
    }

    goto LABEL_15;
  }

  v14 = MEMORY[0x277D83A90];
  if (swift_dynamicCastMetatype())
  {
    result = sub_25DD82170();
    if (v4)
    {
      return result;
    }

    v17 = COERCE_DOUBLE(sub_25DD96E54());
    if ((v18 & 1) == 0)
    {
      v24 = v17;
      *v34 = v24;
      return swift_dynamicCast();
    }

LABEL_15:
    v19 = sub_25DD97194();
    swift_allocError();
    v21 = v20;
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2418, &qword_25DD99C20) + 48);
    *v21 = v14;
    v23 = *v3;
    sub_25DD74F04();
    sub_25DD97174();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D84160], v19);
    return swift_willThrow();
  }

  if (swift_dynamicCastMetatype())
  {
    result = sub_25DD826B8(sub_25DD809D8, MEMORY[0x277D83B88], sub_25DD7DC68);
    if (!v4)
    {
      v34[0] = result;
      return swift_dynamicCast();
    }
  }

  else if (swift_dynamicCastMetatype())
  {
    result = sub_25DD82228(sub_25DD7FC2C, MEMORY[0x277D84900], sub_25DD7CAF0);
    if (!v4)
    {
      LOBYTE(v34[0]) = result;
      return swift_dynamicCast();
    }
  }

  else if (swift_dynamicCastMetatype())
  {
    result = sub_25DD823A4(sub_25DD800CC, MEMORY[0x277D84958], sub_25DD7D0E8);
    if (!v4)
    {
      LOWORD(v34[0]) = result;
      return swift_dynamicCast();
    }
  }

  else if (swift_dynamicCastMetatype())
  {
    result = sub_25DD82520(sub_25DD8056C, MEMORY[0x277D849A8], sub_25DD7D6E0);
    if (!v4)
    {
      LODWORD(v34[0]) = result;
      return swift_dynamicCast();
    }
  }

  else
  {
    if (!swift_dynamicCastMetatype())
    {
      if (swift_dynamicCastMetatype())
      {
        result = sub_25DD826B8(sub_25DD81BD8, MEMORY[0x277D83E88], sub_25DD7F348);
        if (v4)
        {
          return result;
        }

        v34[0] = result;
      }

      else if (swift_dynamicCastMetatype())
      {
        result = sub_25DD82228(sub_25DD80E44, MEMORY[0x277D84B78], sub_25DD7E200);
        if (v4)
        {
          return result;
        }

        LOBYTE(v34[0]) = result;
      }

      else if (swift_dynamicCastMetatype())
      {
        result = sub_25DD823A4(sub_25DD812D8, MEMORY[0x277D84C58], sub_25DD7E7E0);
        if (v4)
        {
          return result;
        }

        LOWORD(v34[0]) = result;
      }

      else if (swift_dynamicCastMetatype())
      {
        result = sub_25DD82520(sub_25DD8176C, MEMORY[0x277D84CC0], sub_25DD7EDC0);
        if (v4)
        {
          return result;
        }

        LODWORD(v34[0]) = result;
      }

      else
      {
        if (!swift_dynamicCastMetatype())
        {
          if (swift_dynamicCastMetatype())
          {
            sub_25DD08A7C(*v3 + 48, v34);
            v25 = v35;
            v26 = v36;
            v37 = __swift_project_boxed_opaque_existential_1(v34, v35);
            v27 = sub_25DD82170();
            if (!v4)
            {
              v33 = MEMORY[0x25F8A3180](v27);
              v32 = v31;

              (*(v26 + 16))(v33, v32, v25, v26);

              swift_dynamicCast();
            }

            return __swift_destroy_boxed_opaque_existential_1(v34);
          }

          else
          {
            v28 = v3[1];
            MEMORY[0x28223BE20](0);
            *(&v33 - 6) = a2;
            *(&v33 - 5) = a3;
            *(&v33 - 4) = v29;
            *(&v33 - 3) = v30;
            *(&v33 - 2) = a1;
            return sub_25DD82054();
          }
        }

        result = sub_25DD826B8(sub_25DD81BD8, MEMORY[0x277D84D38], sub_25DD7F348);
        if (v4)
        {
          return result;
        }

        v34[0] = result;
      }

      return swift_dynamicCast();
    }

    result = sub_25DD826B8(sub_25DD809D8, MEMORY[0x277D84A28], sub_25DD7DC68);
    if (!v4)
    {
      v34[0] = result;
      return swift_dynamicCast();
    }
  }

  return result;
}

uint64_t sub_25DD8376C()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v6 = sub_25DD6F5BC();
  sub_25DD74D70(v6, v8, v9, v7 & 1);

  type metadata accessor for URIValueFromNodeDecoder();
  sub_25DD79678();

  sub_25DD96E64();
  return sub_25DD74E64();
}

uint64_t sub_25DD83824@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for URIValueFromNodeDecoder();
  a1[4] = sub_25DD79678();
  *a1 = v3;
}

BOOL sub_25DD838C8()
{
  v1 = v0[1];
  v2 = *v0;
  return v1 == sub_25DD75910();
}

uint64_t sub_25DD839A0()
{
  result = sub_25DD973B4();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_25DD839F0()
{
  result = sub_25DD973C4();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_25DD83A98()
{
  result = sub_25DD973F4();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_25DD83AE8()
{
  result = sub_25DD973D4();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_25DD83C28()
{
  result = sub_25DD97404();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_25DD83C78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = a3();
  if (v3)
  {
    return v5;
  }

  return result;
}

__n128 sub_25DD83CE0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  v4 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

uint64_t sub_25DD83CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_25DD739D0(a1, v5);
  sub_25DD91148(v5, a2);
  return sub_25DD73D9C(a1);
}

uint64_t sub_25DD83D3C(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v19 = a3;
  v12 = type metadata accessor for URIEncodedNode(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v18[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for URIValueToNodeEncoder(0);
  v16 = sub_25DD84740();
  sub_25DD84894(a1, a4, a5, v15);
  if (v6)
  {
  }

  else
  {
    sub_25DD83E7C(v7, v18);
    v16 = sub_25DD91164(v15, a2, v19);

    sub_25DD83ED8(v18);
    sub_25DD83F2C(v15);
  }

  return v16;
}

uint64_t sub_25DD83F2C(uint64_t a1)
{
  v2 = type metadata accessor for URIEncodedNode(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25DD83F88(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a3;
  v28 = a5;
  v26 = a2;
  v8 = type metadata accessor for URIEncodedNode(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25DD96F04();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v25 - v16;
  v18 = *(a4 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v17, a1, v12);
  if ((*(v18 + 48))(v17, 1, a4) == 1)
  {
    (*(v13 + 8))(v17, v12);
    return 0;
  }

  else
  {
    (*(v18 + 32))(v21, v17, a4);
    type metadata accessor for URIValueToNodeEncoder(0);
    sub_25DD84740();
    v23 = v30;
    sub_25DD84894(v21, a4, v28, v11);
    if (v23)
    {
      (*(v18 + 8))(v21, a4);
    }

    else
    {
      sub_25DD83E7C(v5, v29);
      v24 = sub_25DD91164(v11, v26, v27);

      sub_25DD83ED8(v29);
      sub_25DD83F2C(v11);
      (*(v18 + 8))(v21, a4);
      return v24;
    }
  }
}

uint64_t sub_25DD8428C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_25DD842D4(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_25DD84334()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);

  return v1;
}

uint64_t sub_25DD8437C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = *(v4 + 8);

  *v4 = a1;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3;
  *(v4 + 24) = a4 & 1;
  return result;
}

uint64_t sub_25DD844D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4 & 1;
  v8 = type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);
  return sub_25DD85CE0(a5, a6 + *(v8 + 20), type metadata accessor for URIEncodedNode);
}

uint64_t sub_25DD84530@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
  swift_beginAccess();
  return sub_25DD8459C(v1 + v3, a1, type metadata accessor for URIValueToNodeEncoder.CodingStackEntry);
}

uint64_t sub_25DD8459C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25DD84604(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
  swift_beginAccess();
  sub_25DD84678(a1, v1 + v3, type metadata accessor for URIValueToNodeEncoder.CodingStackEntry);
  return swift_endAccess();
}

uint64_t sub_25DD84678(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_25DD84740()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = MEMORY[0x277D84F90];
  sub_25DD6F5B0();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v3 + OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
  v13 = *(type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0) + 20);
  type metadata accessor for URIEncodedNode(0);
  swift_storeEnumTagMultiPayload();
  *v12 = v5;
  *(v12 + 8) = v7;
  *(v12 + 16) = v9;
  *(v12 + 24) = v11 & 1;
  return v3;
}

uint64_t sub_25DD847F4()
{
  *(v0 + 16) = MEMORY[0x277D84F90];
  sub_25DD6F5B0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0 + OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
  v10 = *(type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0) + 20);
  type metadata accessor for URIEncodedNode(0);
  swift_storeEnumTagMultiPayload();
  *v9 = v2;
  *(v9 + 8) = v4;
  *(v9 + 16) = v6;
  *(v9 + 24) = v8 & 1;
  return v0;
}

uint64_t sub_25DD84894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v57 = a3;
  v5 = v4;
  v8 = *v5;
  v55 = a4;
  v56 = v8;
  v59 = type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);
  v9 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v63 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2900, &unk_25DD9FE90);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v55 - v14;
  v16 = *(a2 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_25DD967C4();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, a1, a2);
  if (!swift_dynamicCast())
  {
    (*(v21 + 56))(v15, 1, 1, v20);
    sub_25DD84E28(v15);
    v61 = v56;
    v62 = sub_25DD84F38(&qword_27FCC2908, type metadata accessor for URIValueToNodeEncoder);
    v60[0] = v5;

    v28 = v58;
    sub_25DD96AA4();
    if (v28)
    {
      goto LABEL_5;
    }

LABEL_7:
    __swift_destroy_boxed_opaque_existential_1(v60);
    v41 = v5 + OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
    swift_beginAccess();
    v42 = v59;
    sub_25DD8459C(v41 + *(v59 + 20), v55, type metadata accessor for URIEncodedNode);
    swift_beginAccess();
    v43 = v5[2];
    v5[2] = MEMORY[0x277D84F90];

    sub_25DD6F5B0();
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v52 = *(v42 + 20);
    type metadata accessor for URIEncodedNode(0);
    v53 = v63;
    swift_storeEnumTagMultiPayload();
    *v53 = v45;
    *(v53 + 8) = v47;
    *(v53 + 16) = v49;
    *(v53 + 24) = v51 & 1;
    swift_beginAccess();
    sub_25DD84678(v53, v41, type metadata accessor for URIValueToNodeEncoder.CodingStackEntry);
    return swift_endAccess();
  }

  (*(v21 + 56))(v15, 0, 1, v20);
  (*(v21 + 32))(v24, v15, v20);

  v26 = nullsub_1(v25);
  v61 = &type metadata for URISingleValueEncodingContainer;
  v62 = sub_25DD84EE4();
  v60[0] = v26;
  __swift_mutable_project_boxed_opaque_existential_1(v60, &type metadata for URISingleValueEncodingContainer);
  sub_25DD84F38(&qword_27FCC2918, MEMORY[0x277CC9578]);
  v27 = v58;
  sub_25DD976C4();
  if (!v27)
  {
    (*(v21 + 8))(v24, v20);
    goto LABEL_7;
  }

  (*(v21 + 8))(v24, v20);
LABEL_5:
  __swift_destroy_boxed_opaque_existential_1(v60);
  swift_beginAccess();
  v29 = v5[2];
  v5[2] = MEMORY[0x277D84F90];

  sub_25DD6F5B0();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = *(v59 + 20);
  type metadata accessor for URIEncodedNode(0);
  v39 = v63;
  swift_storeEnumTagMultiPayload();
  *v39 = v31;
  *(v39 + 8) = v33;
  *(v39 + 16) = v35;
  *(v39 + 24) = v37 & 1;
  v40 = OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
  swift_beginAccess();
  sub_25DD84678(v39, v5 + v40, type metadata accessor for URIValueToNodeEncoder.CodingStackEntry);
  return swift_endAccess();
}

uint64_t sub_25DD84E28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2900, &unk_25DD9FE90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25DD84EE4()
{
  result = qword_27FCC2910;
  if (!qword_27FCC2910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2910);
  }

  return result;
}

uint64_t sub_25DD84F38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25DD84F80()
{
  v1 = *(v0 + 16);

  sub_25DD84FB0(v0 + OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry);
  return v0;
}

uint64_t sub_25DD84FB0(uint64_t a1)
{
  v2 = type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25DD8500C()
{
  v1 = v0[2];

  sub_25DD84FB0(v0 + OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_25DD85078(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v22 = a5;
  v23 = a1;
  v25 = a4;
  v24 = a3;
  v7 = type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  v15 = OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
  swift_beginAccess();
  sub_25DD8459C(v5 + v15, v14, type metadata accessor for URIValueToNodeEncoder.CodingStackEntry);
  swift_beginAccess();
  v16 = *(v5 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 16) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_25DD85B08(0, v16[2] + 1, 1, v16);
    *(v5 + 16) = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_25DD85B08(v18 > 1, v19 + 1, 1, v16);
  }

  v16[2] = v19 + 1;
  sub_25DD85CE0(v14, v16 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v19, type metadata accessor for URIValueToNodeEncoder.CodingStackEntry);
  *(v5 + 16) = v16;
  swift_endAccess();
  sub_25DD8459C(v22, &v12[*(v7 + 20)], type metadata accessor for URIEncodedNode);
  v20 = v24;
  *v12 = v23;
  *(v12 + 1) = a2;
  *(v12 + 2) = v20;
  v12[24] = v25 & 1;
  swift_beginAccess();

  sub_25DD84678(v12, v5 + v15, type metadata accessor for URIValueToNodeEncoder.CodingStackEntry);
  return swift_endAccess();
}

size_t sub_25DD852D4()
{
  v2 = v0;
  v3 = type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v22[-v9];
  v11 = OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
  swift_beginAccess();
  sub_25DD8459C(v2 + v11, v10, type metadata accessor for URIValueToNodeEncoder.CodingStackEntry);
  swift_beginAccess();
  v12 = *(v2 + 16);
  if (v12[2])
  {
    v13 = *(v2 + 16);
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v15 = v12[2];
      if (v15)
      {
        goto LABEL_4;
      }

LABEL_10:
      __break(1u);
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_25DD85F68(v12);
  v12 = result;
  v15 = *(result + 16);
  if (!v15)
  {
    goto LABEL_10;
  }

LABEL_4:
  v16 = v15 - 1;
  v17 = v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v16;
  v12[2] = v16;
  *(v2 + 16) = v12;
  sub_25DD85CE0(v17, v8, type metadata accessor for URIValueToNodeEncoder.CodingStackEntry);
  swift_endAccess();
  v18 = *(v3 + 20);
  v19 = *(v10 + 2);
  v20 = v10[24];
  *&v22[8] = *v10;
  v23 = v19;
  v24 = v20;
  v21 = *(v3 + 20);
  sub_25DD6F85C();
  sub_25DD70AC4(&v10[v18]);
  if (v1)
  {
    sub_25DD84FB0(v8);
    return sub_25DD84FB0(v10);
  }

  else
  {
    sub_25DD84FB0(v10);
    swift_beginAccess();
    sub_25DD84678(v8, v2 + v11, type metadata accessor for URIValueToNodeEncoder.CodingStackEntry);
    return swift_endAccess();
  }
}

uint64_t sub_25DD8552C()
{
  v1 = type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v6 = *(v0 + 16);
  v7 = *(v6 + 16);
  v8 = v7 != 0;
  v9 = MEMORY[0x277D84F90];
  v10 = MEMORY[0x277D84F90];
  if (v7 < 2)
  {
LABEL_9:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2860, &unk_25DD9F8F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25DD98100;
    v22 = v0 + OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
    swift_beginAccess();
    v23 = *(v22 + 8);
    v24 = *(v22 + 16);
    v25 = *(v22 + 24);
    *(inited + 32) = *v22;
    *(inited + 40) = v23;
    *(inited + 48) = v24;
    *(inited + 56) = v25;
    *&v42 = v10;

    sub_25DD85D48(inited);
    v26 = v42;
    v27 = *(v42 + 16);
    if (v27)
    {
      v45 = v9;
      sub_25DD765D4(0, v27, 0);
      v28 = v45;
      v41 = v26;
      v29 = (v26 + 56);
      do
      {
        v31 = *(v29 - 3);
        v30 = *(v29 - 2);
        v32 = *(v29 - 1);
        v33 = *v29;
        v45 = v28;
        v35 = *(v28 + 16);
        v34 = *(v28 + 24);

        if (v35 >= v34 >> 1)
        {
          sub_25DD765D4((v34 > 1), v35 + 1, 1);
          v28 = v45;
        }

        v43 = &type metadata for URICoderCodingKey;
        v44 = sub_25DD6F85C();
        v36 = swift_allocObject();
        *&v42 = v36;
        *(v36 + 16) = v31;
        *(v36 + 24) = v30;
        *(v36 + 32) = v32;
        *(v36 + 40) = v33;
        *(v28 + 16) = v35 + 1;
        sub_25DCFE2FC(&v42, v28 + 40 * v35 + 32);
        v29 += 32;
        --v27;
      }

      while (v27);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }

    return v28;
  }

  else
  {
    v38 = v0;
    *&v42 = MEMORY[0x277D84F90];
    v39 = v2;
    v11 = *(v2 + 80);

    result = sub_25DD85E3C(0, (v7 - v8) & ~((v7 - v8) >> 63), 0);
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      v37 = v6;
      v40 = v6 + ((v11 + 32) & ~v11);
      v10 = v42;
      v13 = v39;
      v41 = v7;
      while (v8 < v7)
      {
        sub_25DD8459C(v40 + *(v13 + 72) * v8, v5, type metadata accessor for URIValueToNodeEncoder.CodingStackEntry);
        v14 = *v5;
        v15 = *(v5 + 1);
        v16 = *(v5 + 2);
        v17 = v5[24];

        result = sub_25DD84FB0(v5);
        *&v42 = v10;
        v19 = *(v10 + 16);
        v18 = *(v10 + 24);
        if (v19 >= v18 >> 1)
        {
          result = sub_25DD85E3C((v18 > 1), v19 + 1, 1);
          v13 = v39;
          v10 = v42;
        }

        *(v10 + 16) = v19 + 1;
        v20 = v10 + 32 * v19;
        *(v20 + 32) = v14;
        *(v20 + 40) = v15;
        *(v20 + 48) = v16;
        *(v20 + 56) = v17;
        ++v8;
        v7 = v41;
        if (v41 == v8)
        {

          v0 = v38;
          v9 = MEMORY[0x277D84F90];
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25DD858CC()
{

  nullsub_1(v0);
  type metadata accessor for URIKeyedEncodingContainer();
  swift_getWitnessTable();
  return sub_25DD97344();
}

uint64_t sub_25DD85998@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t *a4@<X8>)
{

  v9 = a1(v8);
  a4[3] = a2;
  result = a3();
  a4[4] = result;
  *a4 = v9;
  return result;
}

uint64_t sub_25DD85AA4@<X0>(uint64_t (*a1)(uint64_t)@<X2>, uint64_t a2@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t *a4@<X8>)
{
  v9 = *v4;

  v11 = a1(v10);
  a4[3] = a2;
  result = a3();
  a4[4] = result;
  *a4 = v11;
  return result;
}

size_t sub_25DD85B08(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2930, &unk_25DDA0020);
  v10 = *(type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0) - 8);
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
  v15 = *(type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0) - 8);
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

uint64_t sub_25DD85CE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25DD85D48(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_25DD76488(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_25DD85E3C(char *a1, int64_t a2, char a3)
{
  result = sub_25DD85E5C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25DD85E5C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2860, &unk_25DD9F8F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

unint64_t sub_25DD85F7C()
{
  result = qword_27FCC2920;
  if (!qword_27FCC2920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2920);
  }

  return result;
}

unint64_t sub_25DD85FD4()
{
  result = qword_27FCC2928;
  if (!qword_27FCC2928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2928);
  }

  return result;
}

uint64_t sub_25DD86030()
{
  result = type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(319);
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

uint64_t sub_25DD860F8()
{
  result = type metadata accessor for URIEncodedNode(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25DD86184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for URIEncodedNode(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25DD87ED8(a1, v8);
  swift_storeEnumTagMultiPayload();
  v9 = a3 + OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
  swift_beginAccess();
  v10 = v9 + *(type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0) + 20);
  sub_25DD70AC4(v8);
  swift_endAccess();
  return sub_25DD87D78(v8, type metadata accessor for URIEncodedNode);
}

uint64_t sub_25DD862BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19[2] = a6;
  v19[1] = a4;
  v10 = *(a5 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for URIEncodedNode.Primitive(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v13, a1, a5);
  sub_25DD7869C();
  sub_25DD96A54();
  *v17 = v19[5];
  swift_storeEnumTagMultiPayload();
  sub_25DD86184(v17, a2, a3);
  return sub_25DD87D78(v17, type metadata accessor for URIEncodedNode.Primitive);
}

uint64_t sub_25DD8646C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v48 = a6;
  v46 = a3;
  v47 = a4;
  v45 = a2;
  v44 = type metadata accessor for URIEncodedNode.Primitive(0);
  v10 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v12 = &v41[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(a7 + 8);
  v14 = *(*(v13 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(*(AssociatedTypeWitness - 8) + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v18 = *(a5 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v43 = &v41[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20);
  v23 = &v41[-v22];
  (*(v18 + 16))(&v41[-v22], a1, a5);
  if ((sub_25DD97044() & 1) != 0 && sub_25DD97034() >= 65)
  {
    v49 = 0x8000000000000000;
    if (sub_25DD97044())
    {
      if (sub_25DD97034() < 64)
      {
LABEL_14:
        sub_25DD97024();
        goto LABEL_15;
      }
    }

    else
    {
      v42 = sub_25DD97044();
      v24 = sub_25DD97034();
      if ((v42 & 1) == 0)
      {
        if (v24 >= 64)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }

      if (v24 <= 64)
      {
        swift_getAssociatedConformanceWitness();
        sub_25DD978D4();
        v29 = v43;
        sub_25DD975B4();
        v30 = *(*(v13 + 32) + 8);
        v31 = sub_25DD96AE4();
        v32 = *(v18 + 8);
        v32(v29, a5);
        if (v31)
        {
          v32(v23, a5);
LABEL_20:
          sub_25DD87E84();
          swift_allocError();
          *v38 = 2;
          return swift_willThrow();
        }

        goto LABEL_14;
      }
    }

    sub_25DD7A8A8();
    v25 = v43;
    sub_25DD97014();
    v26 = *(*(v13 + 32) + 8);
    v27 = sub_25DD96AE4();
    v28 = *(v18 + 8);
    v28(v25, a5);
    if (v27)
    {
      goto LABEL_19;
    }
  }

LABEL_15:
  if (sub_25DD97034() <= 64 && (sub_25DD97034() != 64 || (sub_25DD97044() & 1) != 0))
  {
    goto LABEL_26;
  }

  v49 = 0x7FFFFFFFFFFFFFFFLL;
  v33 = sub_25DD97044();
  v34 = sub_25DD97034();
  if (v33)
  {
    if (v34 > 64)
    {
      goto LABEL_18;
    }

LABEL_25:
    sub_25DD97024();
    goto LABEL_26;
  }

  if (v34 <= 63)
  {
    goto LABEL_25;
  }

LABEL_18:
  sub_25DD7A8A8();
  v35 = v43;
  sub_25DD97014();
  v36 = *(*(v13 + 32) + 8);
  v37 = sub_25DD96AE4();
  v28 = *(v18 + 8);
  v28(v35, a5);
  if (v37)
  {
LABEL_19:
    v28(v23, a5);
    goto LABEL_20;
  }

LABEL_26:
  v40 = sub_25DD97024();
  (*(v18 + 8))(v23, a5);
  *v12 = v40;
  swift_storeEnumTagMultiPayload();
  sub_25DD86184(v12, v45, v46);
  return sub_25DD87D78(v12, type metadata accessor for URIEncodedNode.Primitive);
}

uint64_t sub_25DD869FC(char a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for URIEncodedNode.Primitive(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  *v10 = a1;
  swift_storeEnumTagMultiPayload();
  v12 = *(a3 + 16);
  v13 = *(a3 + 24);
  sub_25DD86184(v10, a2, v11);
  return sub_25DD87D78(v10, type metadata accessor for URIEncodedNode.Primitive);
}

uint64_t sub_25DD86AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for URIEncodedNode.Primitive(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *v4;
  *v12 = a1;
  v12[1] = a2;
  swift_storeEnumTagMultiPayload();
  v14 = *(a4 + 16);
  v15 = *(a4 + 24);

  sub_25DD86184(v12, a3, v13);
  return sub_25DD87D78(v12, type metadata accessor for URIEncodedNode.Primitive);
}

uint64_t sub_25DD86BD0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *v3;
  v9 = a3;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  sub_25DD7869C();
  return sub_25DD862BC(&v9, a1, v5, v6, MEMORY[0x277D839F8], v7);
}

uint64_t sub_25DD86C3C(uint64_t a1, uint64_t a2, float a3)
{
  v5 = *v3;
  v9 = a3;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  sub_25DD78768();
  return sub_25DD862BC(&v9, a1, v5, v6, MEMORY[0x277D83A90], v7);
}

uint64_t sub_25DD86E14(char a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v8 = *v5;
  v13 = a1;
  v9 = *(a3 + 16);
  v10 = *(a3 + 24);
  v11 = a4();
  return sub_25DD8646C(&v13, a2, v8, v9, a5, v10, v11);
}

uint64_t sub_25DD86EC0(__int16 a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v8 = *v5;
  v13 = a1;
  v9 = *(a3 + 16);
  v10 = *(a3 + 24);
  v11 = a4();
  return sub_25DD8646C(&v13, a2, v8, v9, a5, v10, v11);
}

uint64_t sub_25DD86F6C(int a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v8 = *v5;
  v13 = a1;
  v9 = *(a3 + 16);
  v10 = *(a3 + 24);
  v11 = a4();
  return sub_25DD8646C(&v13, a2, v8, v9, a5, v10, v11);
}

uint64_t sub_25DD87018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v8 = *v5;
  v13 = a1;
  v9 = *(a3 + 16);
  v10 = *(a3 + 24);
  v11 = a4();
  return sub_25DD8646C(&v13, a2, v8, v9, a5, v10, v11);
}

uint64_t sub_25DD87090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v69 = a5;
  v66 = type metadata accessor for URIEncodedNode(0);
  v11 = *(*(v66 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v66);
  v67 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = *(a3 + 16);
  v65 = *(v73 - 8);
  v14 = *(v65 + 64);
  MEMORY[0x28223BE20](v12);
  v63 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for URIEncodedNode.Primitive(0);
  v16 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v71 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_25DD967C4();
  v72 = *(v76 - 8);
  v18 = *(v72 + 64);
  v19 = MEMORY[0x28223BE20](v76);
  v70 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v62 - v22;
  v24 = *(a4 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  v27 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v24 + 16);
  v68 = a1;
  v28(v27, a1, a4);
  if (swift_dynamicCast())
  {
    sub_25DD86E14(v75[0], a2, a3, sub_25DD78BA4, MEMORY[0x277D84B78]);
    return (*(v24 + 8))(v27, a4);
  }

  v74 = a2;
  v62 = v6;
  if (swift_dynamicCast())
  {
    sub_25DD86E14(v75[0], v74, a3, sub_25DD78878, MEMORY[0x277D84900]);
    return (*(v24 + 8))(v27, a4);
  }

  v29 = a3;
  if (swift_dynamicCast())
  {
    v30 = v75[0];
    v31 = MEMORY[0x277D84C58];
    v32 = sub_25DD78CB0;
    v33 = v74;
LABEL_9:
    sub_25DD86EC0(v30, v33, v29, v32, v31);
    return (*(v24 + 8))(v27, a4);
  }

  v34 = swift_dynamicCast();
  v35 = v74;
  if (v34)
  {
    v30 = v75[0];
    v31 = MEMORY[0x277D84958];
    v32 = sub_25DD78900;
    v33 = v74;
    goto LABEL_9;
  }

  if (swift_dynamicCast())
  {
    v37 = v75[0];
    v38 = MEMORY[0x277D84CC0];
    v39 = sub_25DD78DBC;
LABEL_15:
    sub_25DD86F6C(v37, v35, v29, v39, v38);
    return (*(v24 + 8))(v27, a4);
  }

  if (swift_dynamicCast())
  {
    v37 = v75[0];
    v38 = MEMORY[0x277D849A8];
    v39 = sub_25DD78988;
    goto LABEL_15;
  }

  if (swift_dynamicCast())
  {
    v40 = v75[0];
    v41 = MEMORY[0x277D84D38];
    v42 = sub_25DD78EC8;
LABEL_24:
    sub_25DD87018(v40, v35, v29, v42, v41);
    return (*(v24 + 8))(v27, a4);
  }

  if (swift_dynamicCast())
  {
    v40 = v75[0];
    v41 = MEMORY[0x277D84A28];
    v42 = sub_25DD78A10;
    goto LABEL_24;
  }

  if (swift_dynamicCast())
  {
    v40 = v75[0];
    v41 = MEMORY[0x277D83B88];
    v42 = sub_25DD787F0;
    goto LABEL_24;
  }

  if (swift_dynamicCast())
  {
    v40 = v75[0];
    v41 = MEMORY[0x277D83E88];
    v42 = sub_25DD78A98;
    goto LABEL_24;
  }

  if (swift_dynamicCast())
  {
    sub_25DD86C3C(v35, v29, *v75);
  }

  else if (swift_dynamicCast())
  {
    sub_25DD86BD0(v35, v29, *v75);
  }

  else if (swift_dynamicCast())
  {
    sub_25DD86AD8(v75[0], v75[1], v35, v29);
  }

  else if (swift_dynamicCast())
  {
    sub_25DD869FC(v75[0], v35, v29);
  }

  else if (swift_dynamicCast())
  {
    v43 = v72;
    v44 = v70;
    v45 = v76;
    (*(v72 + 32))(v70, v23, v76);
    v46 = *v5;
    v47 = v71;
    (*(v43 + 16))(v71, v44, v45);
    swift_storeEnumTagMultiPayload();
    v48 = *(v29 + 24);
    sub_25DD86184(v47, v74, v46);
    sub_25DD87D78(v71, type metadata accessor for URIEncodedNode.Primitive);
    (*(v72 + 8))(v70, v76);
  }

  else
  {
    v49 = *v5;
    v50 = v63;
    v51 = v73;
    (*(v65 + 16))(v63, v74, v73);
    v52 = *(v29 + 24);
    v53 = sub_25DD6F510(v50, v51);
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v60 = v67;
    swift_storeEnumTagMultiPayload();
    sub_25DD85078(v53, v55, v57, v59 & 1, v60);

    sub_25DD87D78(v60, type metadata accessor for URIEncodedNode);
    v75[3] = type metadata accessor for URIValueToNodeEncoder(0);
    v75[4] = sub_25DD87DD8();
    v75[0] = v49;

    v61 = v62;
    sub_25DD96AA4();
    __swift_destroy_boxed_opaque_existential_1(v75);
    if (!v61)
    {
      sub_25DD852D4();
    }
  }

  return (*(v24 + 8))(v27, a4);
}

uint64_t sub_25DD87954@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for URIValueToNodeEncoder(0);
  a1[4] = sub_25DD87DD8();
  *a1 = v3;
}

uint64_t sub_25DD87D78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_25DD87DD8()
{
  result = qword_27FCC2908;
  if (!qword_27FCC2908)
  {
    type metadata accessor for URIValueToNodeEncoder(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2908);
  }

  return result;
}

uint64_t sub_25DD87E30()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_25DD87E84()
{
  result = qword_27FCC2938;
  if (!qword_27FCC2938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2938);
  }

  return result;
}

uint64_t sub_25DD87ED8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URIEncodedNode.Primitive(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25DD87F3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URIEncodedNode.Primitive(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1 < 0)
  {
    sub_25DD87E84();
    swift_allocError();
    *v11 = 2;
    return swift_willThrow();
  }

  else
  {
    *v7 = a1;
    swift_storeEnumTagMultiPayload();
    v8 = a2 + OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
    swift_beginAccess();
    v9 = v8 + *(type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0) + 20);
    sub_25DD70920(v7);
    swift_endAccess();
    return sub_25DD88150(v7);
  }
}

uint64_t sub_25DD88064(char a1, uint64_t a2)
{
  v4 = type metadata accessor for URIEncodedNode.Primitive(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v7 = a1;
  swift_storeEnumTagMultiPayload();
  v8 = a2 + OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
  swift_beginAccess();
  v9 = v8 + *(type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0) + 20);
  sub_25DD70920(v7);
  swift_endAccess();
  return sub_25DD88150(v7);
}

uint64_t sub_25DD88150(uint64_t a1)
{
  v2 = type metadata accessor for URIEncodedNode.Primitive(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25DD881AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URIEncodedNode.Primitive(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = a1;
  v7[1] = a2;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  v8 = *(type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0) + 20);

  sub_25DD70920(v7);
  swift_endAccess();
  return sub_25DD88150(v7);
}

uint64_t sub_25DD882AC(uint64_t a1, double a2)
{
  v4 = type metadata accessor for URIEncodedNode.Primitive(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = a2;
  swift_storeEnumTagMultiPayload();
  v8 = a1 + OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
  swift_beginAccess();
  v9 = v8 + *(type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0) + 20);
  sub_25DD70920(v7);
  swift_endAccess();
  return sub_25DD88150(v7);
}

uint64_t sub_25DD883A0(uint64_t a1, float a2)
{
  v4 = type metadata accessor for URIEncodedNode.Primitive(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = a2;
  swift_storeEnumTagMultiPayload();
  v8 = a1 + OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
  swift_beginAccess();
  v9 = v8 + *(type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0) + 20);
  sub_25DD70920(v7);
  swift_endAccess();
  return sub_25DD88150(v7);
}

uint64_t sub_25DD884B0(char a1, uint64_t a2)
{
  v4 = type metadata accessor for URIEncodedNode.Primitive(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = a1;
  swift_storeEnumTagMultiPayload();
  v8 = a2 + OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
  swift_beginAccess();
  v9 = v8 + *(type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0) + 20);
  sub_25DD70920(v7);
  swift_endAccess();
  return sub_25DD88150(v7);
}

uint64_t sub_25DD885A0(__int16 a1, uint64_t a2)
{
  v4 = type metadata accessor for URIEncodedNode.Primitive(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = a1;
  swift_storeEnumTagMultiPayload();
  v8 = a2 + OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
  swift_beginAccess();
  v9 = v8 + *(type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0) + 20);
  sub_25DD70920(v7);
  swift_endAccess();
  return sub_25DD88150(v7);
}

uint64_t sub_25DD88690(int a1, uint64_t a2)
{
  v4 = type metadata accessor for URIEncodedNode.Primitive(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = a1;
  swift_storeEnumTagMultiPayload();
  v8 = a2 + OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
  swift_beginAccess();
  v9 = v8 + *(type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0) + 20);
  sub_25DD70920(v7);
  swift_endAccess();
  return sub_25DD88150(v7);
}

uint64_t sub_25DD88780(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URIEncodedNode.Primitive(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = a1;
  swift_storeEnumTagMultiPayload();
  v8 = a2 + OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
  swift_beginAccess();
  v9 = v8 + *(type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0) + 20);
  sub_25DD70920(v7);
  swift_endAccess();
  return sub_25DD88150(v7);
}

uint64_t sub_25DD88884(unsigned __int8 a1, uint64_t a2)
{
  v4 = type metadata accessor for URIEncodedNode.Primitive(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = a1;
  swift_storeEnumTagMultiPayload();
  v8 = a2 + OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
  swift_beginAccess();
  v9 = v8 + *(type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0) + 20);
  sub_25DD70920(v7);
  swift_endAccess();
  return sub_25DD88150(v7);
}

uint64_t sub_25DD88974(unsigned __int16 a1, uint64_t a2)
{
  v4 = type metadata accessor for URIEncodedNode.Primitive(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = a1;
  swift_storeEnumTagMultiPayload();
  v8 = a2 + OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
  swift_beginAccess();
  v9 = v8 + *(type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0) + 20);
  sub_25DD70920(v7);
  swift_endAccess();
  return sub_25DD88150(v7);
}

uint64_t sub_25DD88A64(unsigned int a1, uint64_t a2)
{
  v4 = type metadata accessor for URIEncodedNode.Primitive(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = a1;
  swift_storeEnumTagMultiPayload();
  v8 = a2 + OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
  swift_beginAccess();
  v9 = v8 + *(type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0) + 20);
  sub_25DD70920(v7);
  swift_endAccess();
  return sub_25DD88150(v7);
}

uint64_t sub_25DD88B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v85[3] = a4;
  v98 = a2;
  v92 = sub_25DD967C4();
  v89 = *(v92 - 8);
  v6 = *(v89 + 64);
  v7 = MEMORY[0x28223BE20](v92);
  v88 = v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v90 = v85 - v9;
  v10 = type metadata accessor for URIEncodedNode.Primitive(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v87 = v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v86 = v85 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v91 = (v85 - v17);
  v18 = MEMORY[0x28223BE20](v16);
  v93 = v85 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v94 = v85 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v95 = (v85 - v23);
  v24 = MEMORY[0x28223BE20](v22);
  v96 = (v85 - v25);
  v26 = MEMORY[0x28223BE20](v24);
  v97 = (v85 - v27);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = (v85 - v29);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = (v85 - v32);
  v34 = MEMORY[0x28223BE20](v31);
  v36 = (v85 - v35);
  v37 = MEMORY[0x28223BE20](v34);
  v39 = (v85 - v38);
  v40 = MEMORY[0x28223BE20](v37);
  v42 = (v85 - v41);
  v43 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v45 = v85 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = v46;
  v47 = *(v46 + 16);
  v85[2] = a1;
  v47(v45, a1, a3);
  if (!swift_dynamicCast())
  {
    v85[1] = v10;
    v53 = v98;
    if (swift_dynamicCast())
    {
      v54 = a3;
      *v39 = SLOBYTE(v100);
      swift_storeEnumTagMultiPayload();
      v55 = v53 + OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
      swift_beginAccess();
      v56 = v55 + *(type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0) + 20);
      sub_25DD70920(v39);
      swift_endAccess();
      sub_25DD88150(v39);
      v49 = v54;
      return (*(v102 + 8))(v45, v49);
    }

    v49 = a3;
    if (swift_dynamicCast())
    {
      v57 = v45;
      *v36 = LOWORD(v100);
      swift_storeEnumTagMultiPayload();
      v58 = v53 + OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
      swift_beginAccess();
      v59 = v58 + *(type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0) + 20);
      sub_25DD70920(v36);
      swift_endAccess();
      v60 = v36;
LABEL_14:
      sub_25DD88150(v60);
      v45 = v57;
      return (*(v102 + 8))(v45, v49);
    }

    if (swift_dynamicCast())
    {
      v57 = v45;
      *v33 = SLOWORD(v100);
      swift_storeEnumTagMultiPayload();
      v61 = v53 + OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
      swift_beginAccess();
      v62 = v61 + *(type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0) + 20);
      sub_25DD70920(v33);
      swift_endAccess();
      v60 = v33;
      goto LABEL_14;
    }

    if (swift_dynamicCast())
    {
      v57 = v45;
      *v30 = LODWORD(v100);
      swift_storeEnumTagMultiPayload();
      v63 = v53 + OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
      swift_beginAccess();
      v64 = v63 + *(type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0) + 20);
      v65 = v30;
LABEL_13:
      sub_25DD70920(v65);
      swift_endAccess();
      v60 = v30;
      goto LABEL_14;
    }

    if (swift_dynamicCast())
    {
      v48 = v45;
      *&v67 = SLODWORD(v100);
      v68 = v97;
LABEL_18:
      *v68 = v67;
      swift_storeEnumTagMultiPayload();
      v69 = v53 + OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
      swift_beginAccess();
      v70 = v69 + *(type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0) + 20);
      sub_25DD70920(v68);
      swift_endAccess();
      v52 = v68;
      goto LABEL_3;
    }

    if (swift_dynamicCast())
    {
      goto LABEL_20;
    }

    if (swift_dynamicCast())
    {
      v48 = v45;
      v67 = v100;
      v68 = v96;
      goto LABEL_18;
    }

    if (swift_dynamicCast())
    {
      v57 = v45;
      v30 = v95;
      *v95 = v100;
      swift_storeEnumTagMultiPayload();
      v71 = v53 + OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
      swift_beginAccess();
      v72 = v71 + *(type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0) + 20);
      v65 = v30;
      goto LABEL_13;
    }

    if (swift_dynamicCast())
    {
LABEL_20:
      sub_25DD87F3C(v99[0], v53);
      return (*(v102 + 8))(v45, v49);
    }

    if (swift_dynamicCast())
    {
      v57 = v45;
      v73 = *&v100;
      v74 = v94;
    }

    else
    {
      if (!swift_dynamicCast())
      {
        if (swift_dynamicCast())
        {
          v57 = v45;
          v77 = v101;
          v74 = v91;
          *v91 = v100;
          *(v74 + 8) = v77;
        }

        else
        {
          if (!swift_dynamicCast())
          {
            v48 = v45;
            if (swift_dynamicCast())
            {
              v79 = v88;
              v78 = v89;
              v80 = v92;
              (*(v89 + 32))(v88, v90, v92);
              v81 = *(v78 + 16);
              v82 = v87;
              v81(v87, v79, v80);
              swift_storeEnumTagMultiPayload();
              v83 = v53 + OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
              swift_beginAccess();
              v84 = v83 + *(type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0) + 20);
              sub_25DD70920(v82);
              swift_endAccess();
              sub_25DD88150(v87);
              (*(v89 + 8))(v88, v92);
            }

            else
            {
              v99[3] = type metadata accessor for URIValueToNodeEncoder(0);
              v99[4] = sub_25DD87DD8();
              v99[0] = v53;

              sub_25DD96AA4();
              __swift_destroy_boxed_opaque_existential_1(v99);
            }

            goto LABEL_4;
          }

          v57 = v45;
          v74 = v86;
          *v86 = LOBYTE(v100);
        }

        goto LABEL_31;
      }

      v57 = v45;
      v73 = v100;
      v74 = v93;
    }

    *v74 = v73;
LABEL_31:
    swift_storeEnumTagMultiPayload();
    v75 = v53 + OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
    swift_beginAccess();
    v76 = v75 + *(type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0) + 20);
    sub_25DD70920(v74);
    swift_endAccess();
    v60 = v74;
    goto LABEL_14;
  }

  v48 = v45;
  v49 = a3;
  *v42 = LOBYTE(v100);
  swift_storeEnumTagMultiPayload();
  v50 = v98 + OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
  swift_beginAccess();
  v51 = v50 + *(type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0) + 20);
  sub_25DD70920(v42);
  swift_endAccess();
  v52 = v42;
LABEL_3:
  sub_25DD88150(v52);
LABEL_4:
  v45 = v48;
  return (*(v102 + 8))(v45, v49);
}

uint64_t sub_25DD89644(char a1)
{
  v3 = type metadata accessor for URIEncodedNode.Primitive(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  *v6 = a1;
  swift_storeEnumTagMultiPayload();
  v8 = v7 + OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
  swift_beginAccess();
  v9 = v8 + *(type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0) + 20);
  sub_25DD70920(v6);
  swift_endAccess();
  return sub_25DD88150(v6);
}

uint64_t sub_25DD89730(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for URIEncodedNode.Primitive(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *v2;
  *v8 = a1;
  v8[1] = a2;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  v10 = *(type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0) + 20);

  sub_25DD70920(v8);
  swift_endAccess();
  return sub_25DD88150(v8);
}

uint64_t sub_25DD89830(double a1)
{
  v3 = type metadata accessor for URIEncodedNode.Primitive(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *v1;
  *v6 = a1;
  swift_storeEnumTagMultiPayload();
  v8 = v7 + OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
  swift_beginAccess();
  v9 = v8 + *(type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0) + 20);
  sub_25DD70920(v6);
  swift_endAccess();
  return sub_25DD88150(v6);
}

uint64_t sub_25DD89924(float a1)
{
  v3 = type metadata accessor for URIEncodedNode.Primitive(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *v1;
  *v6 = a1;
  swift_storeEnumTagMultiPayload();
  v8 = v7 + OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
  swift_beginAccess();
  v9 = v8 + *(type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0) + 20);
  sub_25DD70920(v6);
  swift_endAccess();
  return sub_25DD88150(v6);
}

uint64_t sub_25DD89A34(char a1)
{
  v3 = type metadata accessor for URIEncodedNode.Primitive(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *v1;
  *v6 = a1;
  swift_storeEnumTagMultiPayload();
  v8 = v7 + OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
  swift_beginAccess();
  v9 = v8 + *(type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0) + 20);
  sub_25DD70920(v6);
  swift_endAccess();
  return sub_25DD88150(v6);
}

uint64_t sub_25DD89B24(__int16 a1)
{
  v3 = type metadata accessor for URIEncodedNode.Primitive(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *v1;
  *v6 = a1;
  swift_storeEnumTagMultiPayload();
  v8 = v7 + OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
  swift_beginAccess();
  v9 = v8 + *(type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0) + 20);
  sub_25DD70920(v6);
  swift_endAccess();
  return sub_25DD88150(v6);
}

uint64_t sub_25DD89C14(int a1)
{
  v3 = type metadata accessor for URIEncodedNode.Primitive(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *v1;
  *v6 = a1;
  swift_storeEnumTagMultiPayload();
  v8 = v7 + OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
  swift_beginAccess();
  v9 = v8 + *(type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0) + 20);
  sub_25DD70920(v6);
  swift_endAccess();
  return sub_25DD88150(v6);
}

uint64_t sub_25DD89D04(uint64_t a1)
{
  v3 = type metadata accessor for URIEncodedNode.Primitive(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *v1;
  *v6 = a1;
  swift_storeEnumTagMultiPayload();
  v8 = v7 + OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
  swift_beginAccess();
  v9 = v8 + *(type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0) + 20);
  sub_25DD70920(v6);
  swift_endAccess();
  return sub_25DD88150(v6);
}

uint64_t sub_25DD89E24(unsigned __int8 a1)
{
  v3 = type metadata accessor for URIEncodedNode.Primitive(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *v1;
  *v6 = a1;
  swift_storeEnumTagMultiPayload();
  v8 = v7 + OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
  swift_beginAccess();
  v9 = v8 + *(type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0) + 20);
  sub_25DD70920(v6);
  swift_endAccess();
  return sub_25DD88150(v6);
}

uint64_t sub_25DD89F14(unsigned __int16 a1)
{
  v3 = type metadata accessor for URIEncodedNode.Primitive(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *v1;
  *v6 = a1;
  swift_storeEnumTagMultiPayload();
  v8 = v7 + OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
  swift_beginAccess();
  v9 = v8 + *(type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0) + 20);
  sub_25DD70920(v6);
  swift_endAccess();
  return sub_25DD88150(v6);
}

uint64_t sub_25DD8A004(unsigned int a1)
{
  v3 = type metadata accessor for URIEncodedNode.Primitive(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *v1;
  *v6 = a1;
  swift_storeEnumTagMultiPayload();
  v8 = v7 + OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
  swift_beginAccess();
  v9 = v8 + *(type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0) + 20);
  sub_25DD70920(v6);
  swift_endAccess();
  return sub_25DD88150(v6);
}

uint64_t sub_25DD8A1A0(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0) + 20);

  sub_25DD7101C();
  swift_endAccess();

  return a1;
}

uint64_t sub_25DD8A234(uint64_t a1, double a2)
{
  v4 = type metadata accessor for URIEncodedNode(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URIEncodedNode.Primitive(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v11 = a2;
  swift_storeEnumTagMultiPayload();
  sub_25DD8B794(v11, v7, type metadata accessor for URIEncodedNode.Primitive);
  swift_storeEnumTagMultiPayload();
  v12 = a1 + OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
  swift_beginAccess();
  v13 = v12 + *(type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0) + 20);
  sub_25DD71160(v7);
  swift_endAccess();
  sub_25DD8B7FC(v7, type metadata accessor for URIEncodedNode);
  return sub_25DD8B7FC(v11, type metadata accessor for URIEncodedNode.Primitive);
}

uint64_t sub_25DD8A3DC(uint64_t a1, float a2)
{
  v4 = type metadata accessor for URIEncodedNode(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URIEncodedNode.Primitive(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v11 = a2;
  swift_storeEnumTagMultiPayload();
  sub_25DD8B794(v11, v7, type metadata accessor for URIEncodedNode.Primitive);
  swift_storeEnumTagMultiPayload();
  v12 = a1 + OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
  swift_beginAccess();
  v13 = v12 + *(type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0) + 20);
  sub_25DD71160(v7);
  swift_endAccess();
  sub_25DD8B7FC(v7, type metadata accessor for URIEncodedNode);
  return sub_25DD8B7FC(v11, type metadata accessor for URIEncodedNode.Primitive);
}

uint64_t sub_25DD8A588(char a1, uint64_t a2)
{
  v4 = type metadata accessor for URIEncodedNode(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URIEncodedNode.Primitive(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v11 = a1;
  swift_storeEnumTagMultiPayload();
  sub_25DD8B794(v11, v7, type metadata accessor for URIEncodedNode.Primitive);
  swift_storeEnumTagMultiPayload();
  v12 = a2 + OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
  swift_beginAccess();
  v13 = v12 + *(type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0) + 20);
  sub_25DD71160(v7);
  swift_endAccess();
  sub_25DD8B7FC(v7, type metadata accessor for URIEncodedNode);
  return sub_25DD8B7FC(v11, type metadata accessor for URIEncodedNode.Primitive);
}

uint64_t sub_25DD8A72C(__int16 a1, uint64_t a2)
{
  v4 = type metadata accessor for URIEncodedNode(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URIEncodedNode.Primitive(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v11 = a1;
  swift_storeEnumTagMultiPayload();
  sub_25DD8B794(v11, v7, type metadata accessor for URIEncodedNode.Primitive);
  swift_storeEnumTagMultiPayload();
  v12 = a2 + OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
  swift_beginAccess();
  v13 = v12 + *(type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0) + 20);
  sub_25DD71160(v7);
  swift_endAccess();
  sub_25DD8B7FC(v7, type metadata accessor for URIEncodedNode);
  return sub_25DD8B7FC(v11, type metadata accessor for URIEncodedNode.Primitive);
}

uint64_t sub_25DD8A8D0(int a1, uint64_t a2)
{
  v4 = type metadata accessor for URIEncodedNode(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URIEncodedNode.Primitive(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v11 = a1;
  swift_storeEnumTagMultiPayload();
  sub_25DD8B794(v11, v7, type metadata accessor for URIEncodedNode.Primitive);
  swift_storeEnumTagMultiPayload();
  v12 = a2 + OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
  swift_beginAccess();
  v13 = v12 + *(type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0) + 20);
  sub_25DD71160(v7);
  swift_endAccess();
  sub_25DD8B7FC(v7, type metadata accessor for URIEncodedNode);
  return sub_25DD8B7FC(v11, type metadata accessor for URIEncodedNode.Primitive);
}

uint64_t sub_25DD8AA74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URIEncodedNode(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URIEncodedNode.Primitive(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v11 = a1;
  swift_storeEnumTagMultiPayload();
  sub_25DD8B794(v11, v7, type metadata accessor for URIEncodedNode.Primitive);
  swift_storeEnumTagMultiPayload();
  v12 = a2 + OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
  swift_beginAccess();
  v13 = v12 + *(type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0) + 20);
  sub_25DD71160(v7);
  swift_endAccess();
  sub_25DD8B7FC(v7, type metadata accessor for URIEncodedNode);
  return sub_25DD8B7FC(v11, type metadata accessor for URIEncodedNode.Primitive);
}

uint64_t sub_25DD8AC14(unsigned __int8 a1, uint64_t a2)
{
  v4 = type metadata accessor for URIEncodedNode(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URIEncodedNode.Primitive(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v11 = a1;
  swift_storeEnumTagMultiPayload();
  sub_25DD8B794(v11, v7, type metadata accessor for URIEncodedNode.Primitive);
  swift_storeEnumTagMultiPayload();
  v12 = a2 + OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
  swift_beginAccess();
  v13 = v12 + *(type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0) + 20);
  sub_25DD71160(v7);
  swift_endAccess();
  sub_25DD8B7FC(v7, type metadata accessor for URIEncodedNode);
  return sub_25DD8B7FC(v11, type metadata accessor for URIEncodedNode.Primitive);
}

uint64_t sub_25DD8ADB8(unsigned __int16 a1, uint64_t a2)
{
  v4 = type metadata accessor for URIEncodedNode(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URIEncodedNode.Primitive(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v11 = a1;
  swift_storeEnumTagMultiPayload();
  sub_25DD8B794(v11, v7, type metadata accessor for URIEncodedNode.Primitive);
  swift_storeEnumTagMultiPayload();
  v12 = a2 + OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
  swift_beginAccess();
  v13 = v12 + *(type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0) + 20);
  sub_25DD71160(v7);
  swift_endAccess();
  sub_25DD8B7FC(v7, type metadata accessor for URIEncodedNode);
  return sub_25DD8B7FC(v11, type metadata accessor for URIEncodedNode.Primitive);
}

uint64_t sub_25DD8AF5C(unsigned int a1, uint64_t a2)
{
  v4 = type metadata accessor for URIEncodedNode(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URIEncodedNode.Primitive(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v11 = a1;
  swift_storeEnumTagMultiPayload();
  sub_25DD8B794(v11, v7, type metadata accessor for URIEncodedNode.Primitive);
  swift_storeEnumTagMultiPayload();
  v12 = a2 + OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
  swift_beginAccess();
  v13 = v12 + *(type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0) + 20);
  sub_25DD71160(v7);
  swift_endAccess();
  sub_25DD8B7FC(v7, type metadata accessor for URIEncodedNode);
  return sub_25DD8B7FC(v11, type metadata accessor for URIEncodedNode.Primitive);
}

uint64_t sub_25DD8B100(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URIEncodedNode(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URIEncodedNode.Primitive(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1 < 0)
  {
    sub_25DD87E84();
    swift_allocError();
    *v15 = 2;
    return swift_willThrow();
  }

  else
  {
    *v11 = a1;
    swift_storeEnumTagMultiPayload();
    sub_25DD8B794(v11, v7, type metadata accessor for URIEncodedNode.Primitive);
    swift_storeEnumTagMultiPayload();
    v12 = a2 + OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
    swift_beginAccess();
    v13 = v12 + *(type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0) + 20);
    sub_25DD71160(v7);
    swift_endAccess();
    sub_25DD8B7FC(v7, type metadata accessor for URIEncodedNode);
    return sub_25DD8B7FC(v11, type metadata accessor for URIEncodedNode.Primitive);
  }
}

uint64_t sub_25DD8B2DC(uint64_t a1)
{
  v2 = type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URIEncodedNode(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1 + OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
  swift_beginAccess();
  sub_25DD8B794(v10 + *(v2 + 20), v9, type metadata accessor for URIEncodedNode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = 0;
  if (EnumCaseMultiPayload == 3)
  {
    return v12;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v12 = *(*v9 + 16);

    return v12;
  }

  v14[1] = 0;
  v14[2] = 0xE000000000000000;
  sub_25DD97124();
  MEMORY[0x25F8A3200](0xD000000000000024, 0x800000025DDAB5B0);
  sub_25DD8B794(v10, v5, type metadata accessor for URIValueToNodeEncoder.CodingStackEntry);
  sub_25DD97224();
  sub_25DD8B7FC(v5, type metadata accessor for URIValueToNodeEncoder.CodingStackEntry);
  MEMORY[0x25F8A3200](46, 0xE100000000000000);
  result = sub_25DD97294();
  __break(1u);
  return result;
}

uint64_t sub_25DD8B558@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[3] = type metadata accessor for URIValueToNodeEncoder(0);
  a2[4] = sub_25DD87DD8();
  *a2 = a1;
}

uint64_t sub_25DD8B5A8()
{
  sub_25DD87E84();
  swift_allocError();
  *v0 = 0;
  return swift_willThrow();
}

uint64_t sub_25DD8B5F4(char a1, uint64_t a2)
{
  v4 = type metadata accessor for URIEncodedNode(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URIEncodedNode.Primitive(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v11 = a1;
  swift_storeEnumTagMultiPayload();
  sub_25DD8B794(v11, v7, type metadata accessor for URIEncodedNode.Primitive);
  swift_storeEnumTagMultiPayload();
  v12 = a2 + OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
  swift_beginAccess();
  v13 = v12 + *(type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0) + 20);
  sub_25DD71160(v7);
  swift_endAccess();
  sub_25DD8B7FC(v7, type metadata accessor for URIEncodedNode);
  return sub_25DD8B7FC(v11, type metadata accessor for URIEncodedNode.Primitive);
}

uint64_t sub_25DD8B794(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25DD8B7FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25DD8B85C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URIEncodedNode(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URIEncodedNode.Primitive(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v11 = a1;
  v11[1] = a2;
  swift_storeEnumTagMultiPayload();
  sub_25DD8B794(v11, v7, type metadata accessor for URIEncodedNode.Primitive);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  v12 = *(type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0) + 20);

  sub_25DD71160(v7);
  swift_endAccess();
  sub_25DD8B7FC(v7, type metadata accessor for URIEncodedNode);
  return sub_25DD8B7FC(v11, type metadata accessor for URIEncodedNode.Primitive);
}

uint64_t sub_25DD8BB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v51 = type metadata accessor for URIEncodedNode(0);
  v8 = *(*(v51 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v51);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v54 = &v47 - v12;
  v13 = type metadata accessor for URIEncodedNode.Primitive(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v53 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_25DD967C4();
  v55 = *(v57 - 8);
  v16 = *(v55 + 64);
  v17 = MEMORY[0x28223BE20](v57);
  v52 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v47 - v20;
  v22 = *(a3 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  v25 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v22 + 16);
  v49 = a1;
  v26(v25, a1, a3);
  if (swift_dynamicCast())
  {
    sub_25DD8AC14(v56[0], a2);
  }

  else
  {
    v47 = v4;
    v48 = a2;
    if (swift_dynamicCast())
    {
      sub_25DD8A588(v56[0], v48);
    }

    else
    {
      v27 = swift_dynamicCast();
      v28 = v48;
      if (v27)
      {
        sub_25DD8ADB8(v56[0], v48);
      }

      else if (swift_dynamicCast())
      {
        sub_25DD8A72C(v56[0], v28);
      }

      else if (swift_dynamicCast())
      {
        sub_25DD8AF5C(v56[0], v28);
      }

      else if (swift_dynamicCast())
      {
        sub_25DD8A8D0(v56[0], v28);
      }

      else
      {
        if (swift_dynamicCast())
        {
          goto LABEL_14;
        }

        if (swift_dynamicCast() || swift_dynamicCast())
        {
          sub_25DD8AA74(v56[0], v28);
          return (*(v22 + 8))(v25, a3);
        }

        if (swift_dynamicCast())
        {
LABEL_14:
          sub_25DD8B100(v56[0], v28);
        }

        else if (swift_dynamicCast())
        {
          sub_25DD8A3DC(v28, *v56);
        }

        else if (swift_dynamicCast())
        {
          sub_25DD8A234(v28, *v56);
        }

        else if (swift_dynamicCast())
        {
          sub_25DD8B85C(v56[0], v56[1]);
        }

        else if (swift_dynamicCast())
        {
          sub_25DD8B5F4(v56[0], v28);
        }

        else if (swift_dynamicCast())
        {
          v30 = v55;
          v31 = v52;
          v32 = v57;
          (*(v55 + 32))(v52, v21, v57);
          v33 = *(v30 + 16);
          v34 = v53;
          v33(v53, v31, v32);
          swift_storeEnumTagMultiPayload();
          v35 = v54;
          sub_25DD8B794(v34, v54, type metadata accessor for URIEncodedNode.Primitive);
          swift_storeEnumTagMultiPayload();
          v36 = v28 + OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
          swift_beginAccess();
          v37 = v36 + *(type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0) + 20);
          sub_25DD71160(v35);
          swift_endAccess();
          sub_25DD8B7FC(v54, type metadata accessor for URIEncodedNode);
          sub_25DD8B7FC(v53, type metadata accessor for URIEncodedNode.Primitive);
          (*(v55 + 8))(v52, v57);
        }

        else
        {

          sub_25DD8B2DC(v38);
          v39 = sub_25DD6F5BC();
          v41 = v40;
          v43 = v42;
          v45 = v44;
          swift_storeEnumTagMultiPayload();
          sub_25DD85078(v39, v41, v43, v45 & 1, v11);

          sub_25DD8B7FC(v11, type metadata accessor for URIEncodedNode);
          v56[3] = type metadata accessor for URIValueToNodeEncoder(0);
          v56[4] = sub_25DD87DD8();
          v56[0] = v28;
          v46 = v47;
          sub_25DD96AA4();
          __swift_destroy_boxed_opaque_existential_1(v56);
          if (!v46)
          {
            sub_25DD852D4();
          }
        }
      }
    }
  }

  return (*(v22 + 8))(v25, a3);
}

__n128 sub_25DD8C788@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *(a1 + 16);
  *a6 = *a1;
  *(a6 + 16) = v6;
  result = *(a1 + 32);
  *(a6 + 32) = result;
  *(a6 + 48) = a2;
  *(a6 + 56) = a3;
  *(a6 + 64) = a4;
  *(a6 + 72) = a5;
  return result;
}

uint64_t sub_25DD8C7A4(unint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v6 = a1[1];
  if ((a1[4] & 1) == 0)
  {
    if ((*(a2 + 32) & 1) == 0)
    {
      v9 = a1[2];
      v10 = a1[3];
      if (v9 != *(a2 + 16) || v10 != *(a2 + 24) || v5 >> 16 != *a2 >> 16 || v6 >> 16 != *(a2 + 8) >> 16)
      {
        return sub_25DD97364() & 1;
      }

      return 1;
    }

    return 0;
  }

  if ((*(a2 + 32) & 1) == 0)
  {
    return 0;
  }

  if (v5 == *a2 && v6 == *(a2 + 8))
  {
    return 1;
  }

  return sub_25DD975D4();
}

uint64_t sub_25DD8C85C()
{
  v2 = *v0;
  v1 = v0[1];
  if (v0[4])
  {
    MEMORY[0x25F8A3F90](1);

    return sub_25DD96B94();
  }

  else
  {
    v4 = *(v0 + 1);
    MEMORY[0x25F8A3F90](0);
    return sub_25DD96AC4();
  }
}

uint64_t sub_25DD8C908()
{
  sub_25DD97964();
  v2 = *v0;
  v1 = v0[1];
  if (v0[4])
  {
    MEMORY[0x25F8A3F90](1);
    sub_25DD96B94();
  }

  else
  {
    MEMORY[0x25F8A3F90](0);
    v4 = *(v0 + 1);
    sub_25DD96AC4();
  }

  return sub_25DD979A4();
}

uint64_t sub_25DD8C9AC()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_25DD97964();
  if (v5)
  {
    MEMORY[0x25F8A3F90](1);
    sub_25DD96B94();
  }

  else
  {
    MEMORY[0x25F8A3F90](0);
    sub_25DD96AC4();
  }

  return sub_25DD979A4();
}

uint64_t sub_25DD8CA54()
{
  v2 = *v0;
  v1 = v0[1];
  if (v0[4])
  {
    MEMORY[0x25F8A3F90](1);

    return sub_25DD96B94();
  }

  else
  {
    v5 = v0[2];
    v4 = v0[3];
    MEMORY[0x25F8A3F90](0);
    return sub_25DD96AC4();
  }
}

uint64_t sub_25DD8CB0C()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_25DD97964();
  if (v5)
  {
    MEMORY[0x25F8A3F90](1);
    sub_25DD96B94();
  }

  else
  {
    MEMORY[0x25F8A3F90](0);
    sub_25DD96AC4();
  }

  return sub_25DD979A4();
}

uint64_t sub_25DD8CBB0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 32);
  if ((*(a1 + 32) & 1) == 0)
  {
    if ((*(a2 + 32) & 1) == 0)
    {
      return sub_25DD73570(v4, v5, *(a1 + 16), *(a1 + 24), v6, v7, *(a2 + 16), *(a2 + 24));
    }

    return 0;
  }

  if ((*(a2 + 32) & 1) == 0)
  {
    return 0;
  }

  if (v4 == v6 && v5 == v7)
  {
    return 1;
  }

  v10 = *a2;
  v11 = *(a2 + 8);
  return sub_25DD975D4();
}

uint64_t sub_25DD8CC10@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v121 = a4;
  v6 = *(v5 + 48);
  v7 = *(v5 + 56);
  v9 = *(v5 + 64);
  v8 = *(v5 + 72);
  v109 = v6;
  v110 = v7;
  v111 = v9;
  v112 = v8;
  if (!*v5)
  {
    v94 = a5;

    v13 = sub_25DD2D928();
    v14 = *(v98 + 2);
    v102 = v9;
    v103 = v8;
    v107 = sub_25DD6F904(v14);
    v108 = v15;
    v105 = 32;
    v106 = 0xE100000000000000;
    sub_25DD07CBC();
    sub_25DD07E24();
    v16 = sub_25DD96FA4();
    v18 = v17;

    v100 = v16;
    v101 = v18;
    sub_25DD96FC4();

    v19 = sub_25DD96CA4();
    v21 = v20;
    v23 = v22;
    v25 = v24;

    result = sub_25DD735F0(v13, v19, v21, v23, v25, &v117);
    v27 = v117;
    v28 = v118;
    v29 = v119;
    v30 = v120;
LABEL_61:
    *v94 = v27;
    *(v94 + 8) = v28;
    *(v94 + 24) = v29;
    *(v94 + 32) = v30;
    return result;
  }

  if (*v5 == 1)
  {
    v94 = a5;
    v12 = v7 >> 14;

    if (v7 >> 14 == v6 >> 14)
    {
LABEL_46:

      v27 = 0;
      v29 = 0;
      v30 = 0;
      v28 = 0uLL;
    }

    else
    {
      v96 = a1 >> 16;
      while (1)
      {
        v34 = swift_allocObject();
        v35 = v6;
        if (v12 != v6 >> 14)
        {
          while (1)
          {
            v37 = sub_25DD96F44();
            v39 = v38;
            v40 = v37 == 61 && v38 == 0xE100000000000000;
            if (v40 || (v41 = v37, (sub_25DD975D4() & 1) != 0))
            {

              *(v34 + 16) = v35;
              v36 = 0;
              goto LABEL_26;
            }

            if (v41 == 38 && v39 == 0xE100000000000000)
            {
              break;
            }

            v43 = sub_25DD975D4();

            if ((v43 & 1) == 0)
            {
              v35 = sub_25DD96F24();
              if (v12 != v35 >> 14)
              {
                continue;
              }
            }

            goto LABEL_12;
          }
        }

LABEL_12:
        *(v34 + 16) = v35;
        v36 = 1;
LABEL_26:
        sub_25DD90AB0(v36, &v109, v6, v34, &v100);
        v44 = v100;
        v45 = v101;
        v46 = v102;
        v47 = v103;
        v48 = v104;

        if (v44)
        {

          sub_25DD90EE0();
          swift_allocError();
          *v68 = v45;
          *(v68 + 8) = v46;
          *(v68 + 16) = v47;
          *(v68 + 24) = v48;
          *(v68 + 32) = 0;
          return swift_willThrow();
        }

        v49 = *(v98 + 2);
        v100 = v45;
        v101 = v46;
        v102 = v47;
        v103 = v48;
        v107 = sub_25DD6F904(v49);
        v108 = v50;
        v105 = 32;
        v106 = 0xE100000000000000;
        sub_25DD07CBC();
        sub_25DD07E24();
        v51 = sub_25DD96FA4();
        v53 = v52;

        v100 = v51;
        v101 = v53;
        sub_25DD96FC4();

        v54 = sub_25DD96CA4();
        v56 = v55;
        v58 = v57;
        v60 = v59;

        if (v58 == a3 && v60 == v121 && v54 >> 16 == v96 && v56 >> 16 == a2 >> 16)
        {
          break;
        }

        if (sub_25DD97364())
        {
          goto LABEL_48;
        }

        v61 = v109;
        v62 = v110 >> 14;
        if (v110 >> 14 != v109 >> 14)
        {
          v63 = swift_allocObject();
          v64 = v61;
          while (sub_25DD96F44() != 38 || v65 != 0xE100000000000000)
          {
            v67 = sub_25DD975D4();

            if ((v67 & 1) == 0)
            {
              v64 = sub_25DD96F24();
              if (v62 != v64 >> 14)
              {
                continue;
              }
            }

            goto LABEL_9;
          }

LABEL_9:
          *(v63 + 16) = v64;
          sub_25DD90C3C(&v109, v61, v63);
        }

        v6 = v109;
        v12 = v110 >> 14;
        if (v110 >> 14 == v109 >> 14)
        {
          goto LABEL_46;
        }
      }

      v58 = a3;
LABEL_48:
      v97 = v49;
      v69 = v109;
      v121 = v110;
      v99 = v110 >> 14;
      if (v110 >> 14 == v109 >> 14)
      {
        v70 = 0;
        v121 = 7;
        v71 = 15;
        v72 = 0xE000000000000000;
      }

      else
      {
        v93 = swift_allocObject();
        v73 = v69;
        while (sub_25DD96F44() != 38 || v74 != 0xE100000000000000)
        {
          v76 = sub_25DD975D4();

          if ((v76 & 1) == 0)
          {
            v73 = sub_25DD96F24();
            if (v99 != v73 >> 14)
            {
              continue;
            }
          }

          goto LABEL_59;
        }

LABEL_59:
        *(v93 + 16) = v73;
        v71 = sub_25DD90C3C(&v109, v69, v93);
        v121 = v77;
        v70 = v78;
        v72 = v79;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2198, &unk_25DD9BED0);
      v80 = swift_allocObject();
      *(v80 + 16) = xmmword_25DD98100;
      *(v80 + 32) = v54;
      *(v80 + 40) = v56;
      *(v80 + 48) = v58;
      *(v80 + 56) = v60;
      v81 = nullsub_1(v80);
      v100 = v71;
      v101 = v121;
      v102 = v70;
      v103 = v72;
      v107 = sub_25DD6F904(v97);
      v108 = v82;
      v105 = 32;
      v106 = 0xE100000000000000;
      v83 = sub_25DD96FA4();
      v85 = v84;

      v100 = v83;
      v101 = v85;
      sub_25DD96FC4();

      v86 = sub_25DD96CA4();
      v88 = v87;
      v90 = v89;
      v92 = v91;

      result = sub_25DD735F0(v81, v86, v88, v90, v92, &v113);
      v27 = v113;
      v28 = v114;
      v29 = v115;
      v30 = v116;
    }

    goto LABEL_61;
  }

  v31 = *(v98 + 1);
  sub_25DD90EE0();
  swift_allocError();
  if (v31 == 1)
  {
    v33 = 0x800000025DDAB610;
    *v32 = 0xD00000000000003FLL;
  }

  else
  {
    v33 = 0x800000025DDAB5E0;
    *v32 = 0xD00000000000002CLL;
  }

  *(v32 + 8) = v33;
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = 1;
  return swift_willThrow();
}

void sub_25DD8D538(uint64_t a1@<X8>)
{
  v2 = a1;
  v3 = *v1;
  v4 = v1[1] >> 14;
  if (v4 == *v1 >> 14)
  {
    v5 = 0;
    v6 = 0xE000000000000000;
    v7 = 1;
    v8 = 7;
    v9 = 15;
  }

  else
  {
    v23 = swift_allocObject();
    v10 = v3;
    while (1)
    {
      v11 = v1[2];
      v12 = v1[3];
      v13 = sub_25DD96F44();
      v15 = v14;
      v16 = v13 == 44 && v14 == 0xE100000000000000;
      if (v16 || (v17 = v13, (sub_25DD975D4() & 1) != 0))
      {

        v20 = v23;
        *(v23 + 16) = v10;
        v21 = 0;
        goto LABEL_19;
      }

      if (v17 == 38 && v15 == 0xE100000000000000)
      {
        break;
      }

      v19 = sub_25DD975D4();

      if ((v19 & 1) == 0)
      {
        v10 = sub_25DD96F24();
        if (v4 != v10 >> 14)
        {
          continue;
        }
      }

      goto LABEL_18;
    }

LABEL_18:
    v20 = v23;
    *(v23 + 16) = v10;
    v21 = 1;
LABEL_19:
    sub_25DD90AB0(v21, v1, v3, v20, v25);
    v7 = v25[0];
    v22 = v26;
    v5 = v27;
    v6 = v28;
    v2 = a1;

    v8 = *(&v22 + 1);
    v9 = v22;
  }

  *v2 = v7;
  *(v2 + 8) = v9;
  *(v2 + 16) = v8;
  *(v2 + 24) = v5;
  *(v2 + 32) = v6;
}

uint64_t sub_25DD8D6E8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1] >> 14;
  if (v3 == *v1 >> 14)
  {
    return 15;
  }

  v13 = swift_allocObject();
  v6 = v2;
  while (1)
  {
    v7 = v1[2];
    v8 = v1[3];
    if (sub_25DD96F44() == a1 && v9 == 0xE100000000000000)
    {
      break;
    }

    v11 = sub_25DD975D4();

    if ((v11 & 1) == 0)
    {
      v6 = sub_25DD96F24();
      if (v3 != v6 >> 14)
      {
        continue;
      }
    }

    goto LABEL_12;
  }

LABEL_12:
  *(v13 + 16) = v6;
  v12 = sub_25DD90C3C(v1, v2, v13);

  return v12;
}

char *sub_25DD8D834(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 72);
  v7 = *(v4 + 48);
  v205 = v7;
  v8 = *(v4 + 56);
  v206 = v8;
  v207 = v6;
  if (!*v4)
  {
    v76 = v8;
    if ((v8 ^ v7) < 0x4000)
    {

      v9 = MEMORY[0x277D84F90];
      goto LABEL_159;
    }

    v197 = *(v4 + 2);

    v9 = MEMORY[0x277D84F90];
    v79 = v7;
    while (1)
    {
      v214 = v9;
      if (v76 >> 14 == v79 >> 14)
      {
        v80 = 0;
        v81 = 0xE000000000000000;
      }

      else
      {
        v82 = swift_allocObject();
        v83 = v79;
        while (sub_25DD96F44() != 44 || v84 != 0xE100000000000000)
        {
          v86 = sub_25DD975D4();

          if ((v86 & 1) == 0)
          {
            v83 = sub_25DD96F24();
            if (v76 >> 14 != v83 >> 14)
            {
              continue;
            }
          }

          goto LABEL_79;
        }

LABEL_79:
        *(v82 + 16) = v83;
        sub_25DD90C3C(&v205, v79, v82);
        v80 = v87;
        v81 = v88;
      }

      v89 = sub_25DD2D928();
      *&v198[16] = v80;
      v199 = v81;
      v203 = sub_25DD6F904(v197);
      v204 = v90;
      v201 = 32;
      v202 = 0xE100000000000000;
      sub_25DD07CBC();
      sub_25DD07E24();
      v91 = sub_25DD96FA4();
      v93 = v92;

      *v198 = v91;
      *&v198[8] = v93;
      sub_25DD96FC4();

      v94 = sub_25DD96CA4();
      v96 = v95;
      v98 = v97;
      v100 = v99;

      sub_25DD735F0(v89, v94, v96, v98, v100, v212);
      v9 = v214;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_25DD90DC0(0, *(v9 + 2) + 1, 1, v9);
      }

      v102 = *(v9 + 2);
      v101 = *(v9 + 3);
      if (v102 >= v101 >> 1)
      {
        v9 = sub_25DD90DC0((v101 > 1), v102 + 1, 1, v9);
      }

      *(v9 + 2) = v102 + 1;
      v103 = &v9[40 * v102];
      v104 = v213;
      v105 = v212[1];
      *(v103 + 2) = v212[0];
      *(v103 + 3) = v105;
      *(v103 + 8) = v104;
      v79 = v205;
      v76 = v206;
      if (!((v206 ^ v205) >> 14))
      {
        goto LABEL_159;
      }
    }
  }

  v9 = *(v4 + 1);
  if (*v4 == 1)
  {
    v195 = v4;
    v11 = v7;
    v12 = v7 >> 14;
    v13 = v8 >> 14;

    if (v9)
    {
      if (v12 != v13)
      {
        v188 = a2 >> 16;
        v9 = MEMORY[0x277D84F90];
        do
        {
          v214 = v9;
          while (1)
          {
            v190 = swift_allocObject();
            v14 = v11;
            if (v13 != v11 >> 14)
            {
              while (1)
              {
                v17 = sub_25DD96F44();
                v19 = v18;
                v20 = v17 == 61 && v18 == 0xE100000000000000;
                if (v20 || (v21 = v17, (sub_25DD975D4() & 1) != 0))
                {

                  v15 = v190;
                  *(v190 + 16) = v14;
                  v16 = 0;
                  goto LABEL_25;
                }

                if (v21 == 38 && v19 == 0xE100000000000000)
                {
                  break;
                }

                v23 = sub_25DD975D4();

                if ((v23 & 1) == 0)
                {
                  v14 = sub_25DD96F24();
                  if (v13 != v14 >> 14)
                  {
                    continue;
                  }
                }

                goto LABEL_11;
              }
            }

LABEL_11:
            v15 = v190;
            *(v190 + 16) = v14;
            v16 = 1;
LABEL_25:
            sub_25DD90AB0(v16, &v205, v11, v15, v198);
            v24 = v198[0];
            v25 = *&v198[8];
            v9 = v199;
            v26 = v200;

            if (v24)
            {

              sub_25DD90EE0();
              swift_allocError();
              *v179 = v25;
              *(v179 + 16) = v9;
              *(v179 + 24) = v26;
              goto LABEL_162;
            }

            v27 = *(v195 + 2);
            *v198 = v25;
            *&v198[16] = v9;
            v199 = v26;
            v203 = sub_25DD6F904(v27);
            v204 = v28;
            v201 = 32;
            v202 = 0xE100000000000000;
            sub_25DD07CBC();
            sub_25DD07E24();
            v29 = sub_25DD96FA4();
            v31 = v30;

            *v198 = v29;
            *&v198[8] = v31;
            sub_25DD96FC4();

            v32 = sub_25DD96CA4();
            v34 = v33;
            v36 = v35;
            v38 = v37;

            if (v36 == a3 && v38 == a4 && v32 >> 16 == a1 >> 16 && v34 >> 16 == v188)
            {
              break;
            }

            if (sub_25DD97364())
            {
              goto LABEL_42;
            }

            v39 = v205;
            v40 = v206 >> 14;
            if (v206 >> 14 != v205 >> 14)
            {
              v41 = swift_allocObject();
              v42 = v39;
              while (sub_25DD96F44() != 38 || v43 != 0xE100000000000000)
              {
                v45 = sub_25DD975D4();

                if ((v45 & 1) == 0)
                {
                  v42 = sub_25DD96F24();
                  if (v40 != v42 >> 14)
                  {
                    continue;
                  }
                }

                goto LABEL_8;
              }

LABEL_8:
              *(v41 + 16) = v42;
              sub_25DD90C3C(&v205, v39, v41);
            }

            v11 = v205;
            v13 = v206 >> 14;
            if (v206 >> 14 == v205 >> 14)
            {
              goto LABEL_158;
            }
          }

          v36 = a3;
LABEL_42:
          v184 = v32;
          v185 = v34;
          v186 = v27;
          v46 = v205;
          v191 = v206 >> 14;
          if (v206 >> 14 == v205 >> 14)
          {
            v47 = 0;
            v48 = 0xE000000000000000;
            v49 = 15;
            v50 = 7;
          }

          else
          {
            v181 = swift_allocObject();
            v51 = v46;
            while (sub_25DD96F44() != 38 || v52 != 0xE100000000000000)
            {
              v54 = sub_25DD975D4();

              if ((v54 & 1) == 0)
              {
                v51 = sub_25DD96F24();
                if (v191 != v51 >> 14)
                {
                  continue;
                }
              }

              goto LABEL_53;
            }

LABEL_53:
            *(v181 + 16) = v51;
            v49 = sub_25DD90C3C(&v205, v46, v181);
            v50 = v55;
            v47 = v56;
            v48 = v57;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2198, &unk_25DD9BED0);
          v58 = swift_allocObject();
          *(v58 + 16) = xmmword_25DD98100;
          *(v58 + 32) = v184;
          *(v58 + 40) = v185;
          *(v58 + 48) = v36;
          *(v58 + 56) = v38;
          v59 = nullsub_1(v58);
          *v198 = v49;
          *&v198[8] = v50;
          *&v198[16] = v47;
          v199 = v48;
          v203 = sub_25DD6F904(v186);
          v204 = v60;
          v201 = 32;
          v202 = 0xE100000000000000;
          v61 = sub_25DD96FA4();
          v63 = v62;

          *v198 = v61;
          *&v198[8] = v63;
          sub_25DD96FC4();

          v64 = sub_25DD90F34();
          v66 = v65;
          v68 = v67;
          v70 = v69;

          sub_25DD735F0(v59, v64, v66, v68, v70, v208);
          v9 = v214;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_25DD90DC0(0, *(v9 + 2) + 1, 1, v9);
          }

          v72 = *(v9 + 2);
          v71 = *(v9 + 3);
          if (v72 >= v71 >> 1)
          {
            v9 = sub_25DD90DC0((v71 > 1), v72 + 1, 1, v9);
          }

          *(v9 + 2) = v72 + 1;
          v73 = &v9[40 * v72];
          v74 = v209;
          v75 = v208[1];
          *(v73 + 2) = v208[0];
          *(v73 + 3) = v75;
          *(v73 + 8) = v74;
          v11 = v205;
          v13 = v206 >> 14;
        }

        while (v206 >> 14 != v205 >> 14);
        goto LABEL_159;
      }

LABEL_66:
      v9 = MEMORY[0x277D84F90];
      goto LABEL_159;
    }

    if (v12 == v13)
    {
      goto LABEL_66;
    }

    v189 = a2 >> 16;
    v9 = MEMORY[0x277D84F90];
LABEL_88:
    v214 = v9;
    v106 = v7;
    while (1)
    {
      v192 = swift_allocObject();
      v110 = v106;
      if (v13 == v106 >> 14)
      {
LABEL_93:
        v111 = v192;
        *(v192 + 16) = v110;
        v112 = 1;
        v113 = v106;
      }

      else
      {
        while (1)
        {
          v114 = v106;
          v115 = sub_25DD96F44();
          v117 = v116;
          v118 = v115 == 61 && v116 == 0xE100000000000000;
          if (v118 || (v119 = v115, (sub_25DD975D4() & 1) != 0))
          {

            v111 = v192;
            *(v192 + 16) = v110;
            v112 = 0;
            goto LABEL_109;
          }

          if (v119 == 38 && v117 == 0xE100000000000000)
          {
            break;
          }

          v121 = sub_25DD975D4();

          if (v121)
          {
            goto LABEL_108;
          }

          v106 = v114;
          v110 = sub_25DD96F24();
          if (v13 == v110 >> 14)
          {
            goto LABEL_93;
          }
        }

LABEL_108:
        v111 = v192;
        *(v192 + 16) = v110;
        v112 = 1;
LABEL_109:
        v113 = v114;
      }

      sub_25DD90AB0(v112, &v205, v113, v111, v198);
      v122 = v198[0];
      v123 = *&v198[8];
      v9 = v199;
      v124 = v200;

      if (v122)
      {

        sub_25DD90EE0();
        swift_allocError();
        *v179 = v123;
        *(v179 + 16) = v9;
        *(v179 + 24) = v124;
LABEL_162:
        *(v179 + 32) = 0;
        goto LABEL_163;
      }

      v125 = *(v195 + 2);
      *v198 = v123;
      *&v198[16] = v9;
      v199 = v124;
      v203 = sub_25DD6F904(v125);
      v204 = v126;
      v201 = 32;
      v202 = 0xE100000000000000;
      sub_25DD07CBC();
      sub_25DD07E24();
      v127 = sub_25DD96FA4();
      v129 = v128;

      *v198 = v127;
      *&v198[8] = v129;
      sub_25DD96FC4();

      v130 = sub_25DD96CA4();
      v132 = v131;
      v134 = v133;
      v136 = v135;

      if (v134 == a3 && v136 == a4 && v130 >> 16 == a1 >> 16 && v132 >> 16 == v189 || (sub_25DD97364() & 1) != 0)
      {
        v187 = v125;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2198, &unk_25DD9BED0);
        v107 = swift_allocObject();
        *(v107 + 16) = xmmword_25DD98100;
        *(v107 + 32) = v130;
        *(v107 + 40) = v132;
        *(v107 + 48) = v134;
        *(v107 + 56) = v136;
        nullsub_1(v107);
        v109 = v205;
        v108 = v206;
        if ((v206 ^ v205) >= 0x4000)
        {
          v9 = v214;
          while (1)
          {
            v214 = v9;
            if (v108 >> 14 == v109 >> 14)
            {
              v143 = 0;
              v144 = 0xE000000000000000;
              v145 = 1;
              v146 = 15;
              v147 = 7;
              v148 = v187;
            }

            else
            {
              v182 = swift_allocObject();
              v149 = v109;
              while (1)
              {
                v150 = v109;
                v151 = sub_25DD96F44();
                v153 = v152;
                v154 = v151 == 44 && v152 == 0xE100000000000000;
                if (v154 || (v155 = v151, (sub_25DD975D4() & 1) != 0))
                {

                  *(v182 + 16) = v149;
                  v159 = v182;
                  v160 = 0;
                  v161 = v150;
                  goto LABEL_144;
                }

                if (v155 == 38 && v153 == 0xE100000000000000)
                {
                  break;
                }

                v157 = sub_25DD975D4();

                if (v157)
                {
                  goto LABEL_146;
                }

                v109 = v150;
                v158 = sub_25DD96F24();
                v149 = v158;
                if (v108 >> 14 == v158 >> 14)
                {
                  *(v182 + 16) = v158;
                  v159 = v182;
                  v160 = 1;
                  v161 = v150;
LABEL_144:
                  sub_25DD90AB0(v160, &v205, v161, v159, v198);
                  v145 = v198[0];
                  v183 = *&v198[8];
                  v143 = v199;
                  v144 = v200;
                  v148 = v187;
                  goto LABEL_147;
                }
              }

LABEL_146:
              *(v182 + 16) = v149;
              sub_25DD90AB0(1, &v205, v150, v182, v198);
              v145 = v198[0];
              v183 = *&v198[8];
              v143 = v199;
              v144 = v200;
              v148 = v187;
LABEL_147:

              v147 = *(&v183 + 1);
              v146 = v183;
            }

            *v198 = v146;
            *&v198[8] = v147;
            *&v198[16] = v143;
            v199 = v144;
            v203 = sub_25DD6F904(v148);
            v204 = v162;
            v201 = 32;
            v202 = 0xE100000000000000;
            v163 = sub_25DD96FA4();
            v165 = v164;

            *v198 = v163;
            *&v198[8] = v165;
            sub_25DD96FC4();

            v166 = sub_25DD96CA4();
            v168 = v167;
            v170 = v169;
            v172 = v171;

            sub_25DD735F0(v173, v166, v168, v170, v172, v210);
            v9 = v214;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v9 = sub_25DD90DC0(0, *(v9 + 2) + 1, 1, v9);
            }

            v175 = *(v9 + 2);
            v174 = *(v9 + 3);
            if (v175 >= v174 >> 1)
            {
              v9 = sub_25DD90DC0((v174 > 1), v175 + 1, 1, v9);
            }

            *(v9 + 2) = v175 + 1;
            v176 = &v9[40 * v175];
            v177 = v210[0];
            v178 = v210[1];
            *(v176 + 8) = v211;
            *(v176 + 2) = v177;
            *(v176 + 3) = v178;
            if (v145)
            {
              break;
            }

            v109 = v205;
            v108 = v206;
            if (!((v206 ^ v205) >> 14))
            {

              goto LABEL_156;
            }
          }

          v109 = v205;
          v108 = v206;
LABEL_156:
          v13 = v108 >> 14;
          v7 = v109;
          if (v108 >> 14 == v109 >> 14)
          {
LABEL_159:

            return v9;
          }

          goto LABEL_88;
        }
      }

      else
      {

        v137 = v205;
        v138 = v206 >> 14;
        if (v206 >> 14 == v205 >> 14)
        {
          goto LABEL_91;
        }

        v193 = swift_allocObject();
        v139 = v137;
        while (sub_25DD96F44() != 38 || v140 != 0xE100000000000000)
        {
          v142 = sub_25DD975D4();

          if ((v142 & 1) == 0)
          {
            v139 = sub_25DD96F24();
            if (v138 != v139 >> 14)
            {
              continue;
            }
          }

          goto LABEL_126;
        }

LABEL_126:
        *(v193 + 16) = v139;
        sub_25DD90C3C(&v205, v137, v193);
      }

LABEL_91:
      v106 = v205;
      v13 = v206 >> 14;
      if (v206 >> 14 == v205 >> 14)
      {
LABEL_158:
        v9 = v214;
        goto LABEL_159;
      }
    }
  }

  sub_25DD90EE0();
  swift_allocError();
  if (v9)
  {
    v78 = 0x800000025DDAB650;
    *v77 = 0xD00000000000003BLL;
  }

  else
  {
    v78 = 0x800000025DDAB5E0;
    *v77 = 0xD00000000000002CLL;
  }

  *(v77 + 8) = v78;
  *(v77 + 16) = 0;
  *(v77 + 24) = 0;
  *(v77 + 32) = 1;
LABEL_163:
  swift_willThrow();
  return v9;
}

unint64_t sub_25DD8EB64(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 72);
  v7 = *(v4 + 48);
  v309 = v7;
  v8 = *(v4 + 56);
  v310 = v8;
  v311 = v6;
  v9 = *(v4 + 1);
  if (!*v4)
  {
    if (*(v4 + 1))
    {
      v68 = v8 >> 14;

      if (v68 == v7 >> 14)
      {
        a1 = MEMORY[0x277D84F90];

        return a1;
      }

      v126 = v7;
      a1 = MEMORY[0x277D84F90];
      while (1)
      {
        v322 = a1;
        v127 = swift_allocObject();
        v128 = v126;
        if (v68 == v126 >> 14)
        {
          goto LABEL_102;
        }

        while (1)
        {
          a1 = v311;
          v130 = sub_25DD96F44();
          v132 = v131;
          v133 = v130 == 61 && v131 == 0xE100000000000000;
          if (v133 || (v134 = v130, (sub_25DD975D4() & 1) != 0))
          {

            *(v127 + 16) = v128;
            v129 = 0;
            goto LABEL_116;
          }

          if (v134 == 44 && v132 == 0xE100000000000000)
          {
            break;
          }

          v136 = sub_25DD975D4();

          if ((v136 & 1) == 0)
          {
            v128 = sub_25DD96F24();
            if (v68 != v128 >> 14)
            {
              continue;
            }
          }

          goto LABEL_102;
        }

LABEL_102:
        *(v127 + 16) = v128;
        v129 = 1;
LABEL_116:
        sub_25DD90AB0(v129, &v309, v126, v127, v306);
        v137 = v306[0];
        v138 = *&v306[8];
        v139 = *&v306[16];
        v141 = v307;
        v140 = v308;

        if (v137)
        {
          break;
        }

        v142 = v309;
        v143 = v310 >> 14;
        if (v310 >> 14 == v309 >> 14)
        {
          v300 = 0;
          v303 = 0xE000000000000000;
          v295 = 15;
          v292 = 7;
        }

        else
        {
          v282 = v138;
          v287 = v140;
          v144 = swift_allocObject();
          v145 = v142;
          while (sub_25DD96F44() != 44 || v146 != 0xE100000000000000)
          {
            v148 = sub_25DD975D4();

            if ((v148 & 1) == 0)
            {
              v145 = sub_25DD96F24();
              if (v143 != v145 >> 14)
              {
                continue;
              }
            }

            goto LABEL_128;
          }

LABEL_128:
          *(v144 + 16) = v145;
          v149 = sub_25DD90C3C(&v309, v142, v144);
          v292 = v150;
          v295 = v149;
          v300 = v151;
          v303 = v152;

          v140 = v287;
          v138 = v282;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2198, &unk_25DD9BED0);
        v153 = swift_allocObject();
        *(v153 + 16) = xmmword_25DD98100;
        v154 = *(v304 + 2);
        *v306 = v138;
        *&v306[8] = v139;
        *&v306[16] = v141;
        v307 = v140;
        sub_25DD6F904(v154);
        sub_25DD07CBC();
        sub_25DD07E24();
        v155 = sub_25DD96FA4();
        v157 = v156;

        *v306 = v155;
        *&v306[8] = v157;
        sub_25DD96FC4();

        v158 = sub_25DD96CA4();
        v160 = v159;
        v162 = v161;
        v164 = v163;

        *(v153 + 32) = v158;
        *(v153 + 40) = v160;
        *(v153 + 48) = v162;
        *(v153 + 56) = v164;
        v165 = nullsub_1(v153);
        *v306 = v295;
        *&v306[8] = v292;
        *&v306[16] = v300;
        v307 = v303;
        sub_25DD6F904(v154);
        v166 = sub_25DD96FA4();
        v168 = v167;

        *v306 = v166;
        *&v306[8] = v168;
        sub_25DD96FC4();

        v169 = sub_25DD96CA4();
        v171 = v170;
        v173 = v172;
        v175 = v174;

        sub_25DD735F0(v165, v169, v171, v173, v175, v316);
        a1 = v322;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a1 = sub_25DD90DC0(0, *(a1 + 16) + 1, 1, a1);
        }

        v177 = *(a1 + 16);
        v176 = *(a1 + 24);
        if (v177 >= v176 >> 1)
        {
          a1 = sub_25DD90DC0((v176 > 1), v177 + 1, 1, a1);
        }

        *(a1 + 16) = v177 + 1;
        v178 = (a1 + 40 * v177);
        v179 = v317;
        v180 = v316[1];
        *(v178 + 2) = v316[0];
        *(v178 + 3) = v180;
        *(v178 + 8) = v179;
        v126 = v309;
        v68 = v310 >> 14;
        if (v310 >> 14 == v309 >> 14)
        {
          goto LABEL_211;
        }
      }

      sub_25DD90EE0();
      swift_allocError();
      *v275 = v138;
      *(v275 + 8) = v139;
      *(v275 + 16) = v141;
      *(v275 + 24) = v140;
      goto LABEL_216;
    }

    v72 = v8;
    if ((v8 ^ v7) >= 0x4000)
    {
      v181 = v7;
      v288 = *(v304 + 2);

      a1 = MEMORY[0x277D84F90];
      while (1)
      {
        v322 = a1;
        if (v72 >> 14 != v181 >> 14)
        {
          v182 = swift_allocObject();
          v183 = v181;
          while (sub_25DD96F44() != 44 || v184 != 0xE100000000000000)
          {
            v186 = sub_25DD975D4();

            if ((v186 & 1) == 0)
            {
              v183 = sub_25DD96F24();
              if (v72 >> 14 != v183 >> 14)
              {
                continue;
              }
            }

            goto LABEL_147;
          }

LABEL_147:
          *(v182 + 16) = v183;
          sub_25DD90C3C(&v309, v181, v182);
        }

        v187 = v309;
        v188 = v310 >> 14;
        if (v310 >> 14 == v309 >> 14)
        {
          sub_25DD96F54();
          v296 = v189;
          v305 = v190;
        }

        else
        {
          v191 = swift_allocObject();
          v192 = v187;
          while (sub_25DD96F44() != 44 || v193 != 0xE100000000000000)
          {
            v195 = sub_25DD975D4();

            if ((v195 & 1) == 0)
            {
              v192 = sub_25DD96F24();
              if (v188 != v192 >> 14)
              {
                continue;
              }
            }

            goto LABEL_159;
          }

LABEL_159:
          *(v191 + 16) = v192;
          sub_25DD90C3C(&v309, v187, v191);
          v296 = v196;
          v305 = v197;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2198, &unk_25DD9BED0);
        v198 = swift_allocObject();
        *(v198 + 16) = xmmword_25DD98100;
        sub_25DD6F904(v288);
        sub_25DD07CBC();
        sub_25DD07E24();
        sub_25DD96FA4();

        sub_25DD96FC4();

        v199 = sub_25DD96CA4();
        v201 = v200;
        v203 = v202;
        v205 = v204;

        *(v198 + 32) = v199;
        *(v198 + 40) = v201;
        *(v198 + 48) = v203;
        *(v198 + 56) = v205;
        v206 = nullsub_1(v198);
        *&v306[16] = v296;
        v307 = v305;
        sub_25DD6F904(v288);
        v207 = sub_25DD96FA4();
        v209 = v208;

        *v306 = v207;
        *&v306[8] = v209;
        sub_25DD96FC4();

        v210 = sub_25DD90F34();
        v212 = v211;
        v214 = v213;
        v216 = v215;

        sub_25DD735F0(v206, v210, v212, v214, v216, v318);
        a1 = v322;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a1 = sub_25DD90DC0(0, *(a1 + 16) + 1, 1, a1);
        }

        v218 = *(a1 + 16);
        v217 = *(a1 + 24);
        if (v218 >= v217 >> 1)
        {
          a1 = sub_25DD90DC0((v217 > 1), v218 + 1, 1, a1);
        }

        *(a1 + 16) = v218 + 1;
        v219 = (a1 + 40 * v218);
        v220 = v319;
        v221 = v318[1];
        *(v219 + 2) = v318[0];
        *(v219 + 3) = v221;
        *(v219 + 8) = v220;
        v181 = v309;
        v72 = v310;
        if (!((v310 ^ v309) >> 14))
        {
          goto LABEL_211;
        }
      }
    }

LABEL_52:
    a1 = MEMORY[0x277D84F90];
    goto LABEL_211;
  }

  if (*v4 == 1)
  {
    v11 = v7;
    v12 = v7 >> 14;
    v13 = v8 >> 14;

    if (!v9)
    {
      if (v12 == v13)
      {
        a1 = MEMORY[0x277D84F90];
      }

      else
      {
        v286 = a1 >> 16;
        v283 = a2 >> 16;
        a1 = MEMORY[0x277D84F90];
        while (2)
        {
          v322 = a1;
          while (1)
          {
            v74 = swift_allocObject();
            v75 = v11;
            if (v13 != v11 >> 14)
            {
              while (1)
              {
                v77 = sub_25DD96F44();
                v79 = v78;
                v80 = v77 == 61 && v78 == 0xE100000000000000;
                if (v80 || (v81 = v77, (sub_25DD975D4() & 1) != 0))
                {

                  *(v74 + 16) = v75;
                  v76 = 0;
                  goto LABEL_73;
                }

                if (v81 == 38 && v79 == 0xE100000000000000)
                {
                  break;
                }

                v83 = sub_25DD975D4();

                if ((v83 & 1) == 0)
                {
                  v75 = sub_25DD96F24();
                  if (v13 != v75 >> 14)
                  {
                    continue;
                  }
                }

                goto LABEL_59;
              }
            }

LABEL_59:
            *(v74 + 16) = v75;
            v76 = 1;
LABEL_73:
            sub_25DD90AB0(v76, &v309, v11, v74, v306);
            a1 = v306[0];
            v84 = *&v306[8];
            v85 = *&v306[16];
            v87 = v307;
            v86 = v308;

            if (a1)
            {

              sub_25DD90EE0();
              swift_allocError();
              *v275 = v84;
              *(v275 + 8) = v85;
              goto LABEL_215;
            }

            v88 = *(v304 + 2);
            *v306 = v84;
            *&v306[8] = v85;
            *&v306[16] = v87;
            v307 = v86;
            sub_25DD6F904(v88);
            sub_25DD07CBC();
            sub_25DD07E24();
            v89 = sub_25DD96FA4();
            v91 = v90;

            *v306 = v89;
            *&v306[8] = v91;
            sub_25DD96FC4();

            v92 = sub_25DD96CA4();
            v94 = v93;
            v96 = v95;
            v98 = v97;

            v291 = v94;
            v294 = v92;
            if (v96 == a3 && v98 == a4 && v92 >> 16 == v286 && v94 >> 16 == v283)
            {
              break;
            }

            if (sub_25DD97364())
            {
              goto LABEL_90;
            }

            v99 = v309;
            v100 = v310 >> 14;
            if (v310 >> 14 != v309 >> 14)
            {
              v101 = swift_allocObject();
              v102 = v99;
              while (sub_25DD96F44() != 38 || v103 != 0xE100000000000000)
              {
                v105 = sub_25DD975D4();

                if ((v105 & 1) == 0)
                {
                  v102 = sub_25DD96F24();
                  if (v100 != v102 >> 14)
                  {
                    continue;
                  }
                }

                goto LABEL_56;
              }

LABEL_56:
              *(v101 + 16) = v102;
              sub_25DD90C3C(&v309, v99, v101);
            }

            v11 = v309;
            v13 = v310 >> 14;
            if (v310 >> 14 == v309 >> 14)
            {
              a1 = v322;
              goto LABEL_211;
            }
          }

          v96 = a3;
LABEL_90:
          a1 = v322;
          v277 = v96;
          do
          {
            if ((v310 ^ v309) < 0x4000)
            {
              break;
            }

            v322 = a1;
            sub_25DD8D538(v306);
            v106 = *&v306[8];
            a1 = *&v306[16];
            v87 = v307;
            v86 = v308;
            if (v306[0])
            {

              sub_25DD90EE0();
              swift_allocError();
              *v275 = v106;
              *(v275 + 8) = a1;
              goto LABEL_215;
            }

            sub_25DD8D538(v306);
            v281 = v306[0];
            v279 = *&v306[8];
            v107 = v308;
            v278 = v307;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2198, &unk_25DD9BED0);
            v108 = swift_allocObject();
            *(v108 + 16) = xmmword_25DD999D0;
            *(v108 + 32) = v294;
            *(v108 + 40) = v291;
            *(v108 + 48) = v96;
            *(v108 + 56) = v98;
            *(v108 + 64) = v106;
            *(v108 + 72) = a1;
            *(v108 + 80) = v87;
            *(v108 + 88) = v86;
            v109 = v98;

            v110 = nullsub_1(v108);
            *v306 = v279;
            *&v306[16] = v278;
            v307 = v107;
            sub_25DD6F904(v88);
            v111 = sub_25DD96FA4();
            v113 = v112;

            *v306 = v111;
            *&v306[8] = v113;
            sub_25DD96FC4();

            v114 = sub_25DD96CA4();
            v116 = v115;
            v118 = v117;
            v120 = v119;

            sub_25DD735F0(v110, v114, v116, v118, v120, v314);
            a1 = v322;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              a1 = sub_25DD90DC0(0, *(a1 + 16) + 1, 1, a1);
            }

            v122 = *(a1 + 16);
            v121 = *(a1 + 24);
            v96 = v277;
            v98 = v109;
            if (v122 >= v121 >> 1)
            {
              a1 = sub_25DD90DC0((v121 > 1), v122 + 1, 1, a1);
            }

            *(a1 + 16) = v122 + 1;
            v123 = (a1 + 40 * v122);
            v124 = v314[0];
            v125 = v314[1];
            *(v123 + 8) = v315;
            *(v123 + 2) = v124;
            *(v123 + 3) = v125;
          }

          while (!v281);

          v11 = v309;
          v13 = v310 >> 14;
          if (v310 >> 14 != v309 >> 14)
          {
            continue;
          }

          break;
        }
      }

      goto LABEL_211;
    }

    if (v12 != v13)
    {
      a1 = MEMORY[0x277D84F90];
      while (1)
      {
        v322 = a1;
        v14 = swift_allocObject();
        v15 = v11;
        if (v13 != v11 >> 14)
        {
          while (1)
          {
            a1 = v311;
            v17 = sub_25DD96F44();
            v19 = v18;
            v20 = v17 == 61 && v18 == 0xE100000000000000;
            if (v20 || (v21 = v17, (sub_25DD975D4() & 1) != 0))
            {

              *(v14 + 16) = v15;
              v16 = 0;
              goto LABEL_21;
            }

            if (v21 == 38 && v19 == 0xE100000000000000)
            {
              break;
            }

            v23 = sub_25DD975D4();

            if ((v23 & 1) == 0)
            {
              v15 = sub_25DD96F24();
              if (v13 != v15 >> 14)
              {
                continue;
              }
            }

            goto LABEL_7;
          }
        }

LABEL_7:
        *(v14 + 16) = v15;
        v16 = 1;
LABEL_21:
        sub_25DD90AB0(v16, &v309, v11, v14, v306);
        v24 = v306[0];
        v25 = *&v306[8];
        v26 = *&v306[16];
        v28 = v307;
        v27 = v308;

        if (v24)
        {
          break;
        }

        v29 = v309;
        v30 = v310 >> 14;
        if (v310 >> 14 == v309 >> 14)
        {
          v299 = 0;
          v302 = 0xE000000000000000;
          v293 = 15;
          v290 = 7;
        }

        else
        {
          v280 = v25;
          v285 = v27;
          v31 = swift_allocObject();
          v32 = v29;
          while (sub_25DD96F44() != 38 || v33 != 0xE100000000000000)
          {
            v35 = sub_25DD975D4();

            if ((v35 & 1) == 0)
            {
              v32 = sub_25DD96F24();
              if (v30 != v32 >> 14)
              {
                continue;
              }
            }

            goto LABEL_33;
          }

LABEL_33:
          *(v31 + 16) = v32;
          v36 = sub_25DD90C3C(&v309, v29, v31);
          v290 = v37;
          v293 = v36;
          v299 = v38;
          v302 = v39;

          v27 = v285;
          v25 = v280;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2198, &unk_25DD9BED0);
        v40 = swift_allocObject();
        *(v40 + 16) = xmmword_25DD98100;
        v41 = *(v304 + 2);
        *v306 = v25;
        *&v306[8] = v26;
        *&v306[16] = v28;
        v307 = v27;
        sub_25DD6F904(v41);
        sub_25DD07CBC();
        sub_25DD07E24();
        v42 = sub_25DD96FA4();
        v44 = v43;

        *v306 = v42;
        *&v306[8] = v44;
        sub_25DD96FC4();

        v45 = sub_25DD96CA4();
        v47 = v46;
        v49 = v48;
        v51 = v50;

        *(v40 + 32) = v45;
        *(v40 + 40) = v47;
        *(v40 + 48) = v49;
        *(v40 + 56) = v51;
        v52 = nullsub_1(v40);
        *v306 = v293;
        *&v306[8] = v290;
        *&v306[16] = v299;
        v307 = v302;
        sub_25DD6F904(v41);
        v53 = sub_25DD96FA4();
        v55 = v54;

        *v306 = v53;
        *&v306[8] = v55;
        sub_25DD96FC4();

        v56 = sub_25DD96CA4();
        v58 = v57;
        v60 = v59;
        v62 = v61;

        sub_25DD735F0(v52, v56, v58, v60, v62, v312);
        a1 = v322;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a1 = sub_25DD90DC0(0, *(a1 + 16) + 1, 1, a1);
        }

        v64 = *(a1 + 16);
        v63 = *(a1 + 24);
        if (v64 >= v63 >> 1)
        {
          a1 = sub_25DD90DC0((v63 > 1), v64 + 1, 1, a1);
        }

        *(a1 + 16) = v64 + 1;
        v65 = (a1 + 40 * v64);
        v66 = v313;
        v67 = v312[1];
        *(v65 + 2) = v312[0];
        *(v65 + 3) = v67;
        *(v65 + 8) = v66;
        v11 = v309;
        v13 = v310 >> 14;
        if (v310 >> 14 == v309 >> 14)
        {
          goto LABEL_211;
        }
      }

      sub_25DD90EE0();
      swift_allocError();
      *v275 = v25;
      *(v275 + 8) = v26;
      *(v275 + 16) = v28;
      *(v275 + 24) = v27;
LABEL_216:
      *(v275 + 32) = 0;
      goto LABEL_217;
    }

    goto LABEL_52;
  }

  if (!*(v4 + 1))
  {
    sub_25DD90EE0();
    swift_allocError();
    *v73 = 0xD00000000000002CLL;
    *(v73 + 8) = 0x800000025DDAB5E0;
    *(v73 + 16) = 0;
    *(v73 + 24) = 0;
    *(v73 + 32) = 1;
LABEL_217:
    swift_willThrow();
    return a1;
  }

  v69 = v7;
  v71 = v8 >> 14;

  if (v71 == v7 >> 14)
  {
    a1 = MEMORY[0x277D84F90];
    goto LABEL_211;
  }

  v289 = a1;
  a1 = MEMORY[0x277D84F90];
  while (2)
  {
    v322 = a1;
    while (1)
    {
      v222 = swift_allocObject();
      v223 = v69;
      if (v71 != v69 >> 14)
      {
        while (1)
        {
          v225 = sub_25DD96F44();
          v227 = v226;
          v228 = v225 == 61 && v226 == 0xE100000000000000;
          if (v228 || (v229 = v225, (sub_25DD975D4() & 1) != 0))
          {

            *(v222 + 16) = v223;
            v224 = 0;
            goto LABEL_186;
          }

          if (v229 == 38 && v227 == 0xE100000000000000)
          {
            break;
          }

          v231 = sub_25DD975D4();

          if ((v231 & 1) == 0)
          {
            v223 = sub_25DD96F24();
            if (v71 != v223 >> 14)
            {
              continue;
            }
          }

          goto LABEL_172;
        }
      }

LABEL_172:
      *(v222 + 16) = v223;
      v224 = 1;
LABEL_186:
      sub_25DD90AB0(v224, &v309, v69, v222, v306);
      a1 = v306[0];
      v232 = *&v306[8];
      v233 = *&v306[16];
      v87 = v307;
      v86 = v308;

      if (a1)
      {

        sub_25DD90EE0();
        swift_allocError();
        *v275 = v232;
        *(v275 + 8) = v233;
LABEL_215:
        *(v275 + 16) = v87;
        *(v275 + 24) = v86;
        goto LABEL_216;
      }

      v297 = *(v304 + 2);
      sub_25DD6F904(v297);
      sub_25DD07CBC();
      sub_25DD07E24();
      sub_25DD96FA4();

      sub_25DD96FC4();

      v234 = sub_25DD96CA4();
      v236 = v235;
      v238 = v237;
      v240 = v239;

      *v306 = v234;
      *&v306[8] = v236;
      *&v306[16] = v238;
      v307 = v240;
      if (sub_25DD96FF4() & 1) != 0 && (sub_25DD96FF4())
      {
        break;
      }

LABEL_191:
      v254 = v309;
      v255 = v310 >> 14;
      if (v310 >> 14 != v309 >> 14)
      {
        v256 = swift_allocObject();
        v257 = v254;
        while (sub_25DD96F44() != 38 || v258 != 0xE100000000000000)
        {
          v260 = sub_25DD975D4();

          if ((v260 & 1) == 0)
          {
            v257 = sub_25DD96F24();
            if (v255 != v257 >> 14)
            {
              continue;
            }
          }

          goto LABEL_169;
        }

LABEL_169:
        *(v256 + 16) = v257;
        sub_25DD90C3C(&v309, v254, v256);
      }

      v69 = v309;
      v71 = v310 >> 14;
      if (v310 >> 14 == v309 >> 14)
      {
        a1 = v322;
        goto LABEL_211;
      }
    }

    v241 = sub_25DD8D6E8(91);
    v243 = v242;
    v245 = v244;
    v247 = v246;
    v248 = sub_25DD8D6E8(93);
    v250 = v249;
    v284 = v251;
    v253 = v252;
    if ((sub_25DD73570(v241, v243, v245, v247, v289, a2, a3, a4) & 1) == 0)
    {

      goto LABEL_191;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2198, &unk_25DD9BED0);
    v261 = swift_allocObject();
    *(v261 + 16) = xmmword_25DD999D0;
    *(v261 + 32) = v241;
    *(v261 + 40) = v243;
    *(v261 + 48) = v245;
    *(v261 + 56) = v247;
    *(v261 + 64) = v248;
    *(v261 + 72) = v250;
    *(v261 + 80) = v284;
    *(v261 + 88) = v253;
    v262 = nullsub_1(v261);
    sub_25DD8D6E8(38);
    sub_25DD6F904(v297);
    sub_25DD96FA4();

    sub_25DD96FC4();

    v263 = sub_25DD90F34();
    v265 = v264;
    v267 = v266;
    v269 = v268;

    sub_25DD735F0(v262, v263, v265, v267, v269, v320);
    a1 = v322;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_25DD90DC0(0, *(a1 + 16) + 1, 1, a1);
    }

    v271 = *(a1 + 16);
    v270 = *(a1 + 24);
    if (v271 >= v270 >> 1)
    {
      a1 = sub_25DD90DC0((v270 > 1), v271 + 1, 1, a1);
    }

    *(a1 + 16) = v271 + 1;
    v272 = (a1 + 40 * v271);
    v273 = v320[0];
    v274 = v320[1];
    *(v272 + 8) = v321;
    *(v272 + 2) = v273;
    *(v272 + 3) = v274;
    v69 = v309;
    v71 = v310 >> 14;
    if (v310 >> 14 != v309 >> 14)
    {
      continue;
    }

    break;
  }

LABEL_211:

  return a1;
}

unint64_t sub_25DD90AB0@<X0>(char a1@<W0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  v13 = a2[3];
  result = swift_beginAccess();
  if (*(a4 + 16) >> 14 < a3 >> 14)
  {
    __break(1u);
  }

  else
  {

    v15 = sub_25DD96F64();
    v34 = v16;
    v35 = v15;
    v18 = v17;
    v20 = v19;

    swift_beginAccess();
    v21 = a2[1] >> 14;
    if (v21 == *(a4 + 16) >> 14)
    {
      v22 = 0;
      v23 = 0xE000000000000000;
      v24 = 7;
      v25 = 15;
LABEL_6:
      v32 = a2[3];
      *a2 = v25;
      a2[1] = v24;
      a2[2] = v22;
      a2[3] = v23;

      *a5 = a1 & 1;
      *(a5 + 8) = v35;
      *(a5 + 16) = v34;
      *(a5 + 24) = v18;
      *(a5 + 32) = v20;
      return result;
    }

    v33 = a1;
    v26 = *a2;
    v27 = a2[2];
    v28 = a2[3];

    result = sub_25DD96F24();
    if (v21 >= result >> 14)
    {
      v25 = sub_25DD96F64();
      v24 = v29;
      v22 = v30;
      v23 = v31;

      a1 = v33;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_25DD90C3C(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  result = swift_beginAccess();
  if (*(a3 + 16) >> 14 < a2 >> 14)
  {
    __break(1u);
  }

  else
  {

    v11 = sub_25DD96F64();

    swift_beginAccess();
    v12 = a1[1] >> 14;
    if (v12 == *(a3 + 16) >> 14)
    {
      v13 = 0;
      v14 = 0xE000000000000000;
      v15 = 7;
      v16 = 15;
LABEL_6:
      v23 = a1[3];
      *a1 = v16;
      a1[1] = v15;
      a1[2] = v13;
      a1[3] = v14;

      return v11;
    }

    v24 = v11;
    v17 = *a1;
    v18 = a1[2];
    v19 = a1[3];

    result = sub_25DD96F24();
    if (v12 >= result >> 14)
    {
      v16 = sub_25DD96F64();
      v15 = v20;
      v13 = v21;
      v14 = v22;

      v11 = v24;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

char *sub_25DD90DC0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2950, &qword_25DDA06A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

unint64_t sub_25DD90EE0()
{
  result = qword_27FCC2940;
  if (!qword_27FCC2940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2940);
  }

  return result;
}

unint64_t sub_25DD90F74()
{
  result = qword_27FCC2948;
  if (!qword_27FCC2948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2948);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_25DD90FE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_25DD9102C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25DD9109C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_25DD910E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

__n128 sub_25DD91148@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0xE000000000000000;
  return result;
}

uint64_t sub_25DD91164(uint64_t a1, void *a2, unint64_t a3)
{
  sub_25DD911C4(a1, a2, a3);
  if (!v4)
  {
    v5 = *(v3 + 48);
    v6 = *(v3 + 56);
  }

  sub_25DD96C74();
  return v5;
}

uint64_t sub_25DD911C4(uint64_t a1, void *a2, unint64_t a3)
{
  v70 = a3;
  v69 = a2;
  v4 = type metadata accessor for URIEncodedNode.PrimitiveOrArrayOfPrimitives(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v72 = (&v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for URIEncodedNode.Primitive(0);
  v73 = *(v8 - 8);
  v9 = *(v73 + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v74 = (&v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v13 = &v67 - v12;
  v14 = type metadata accessor for URIEncodedNode(0);
  v83 = *(v14 - 8);
  v15 = *(v83 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v67 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v67 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v67 - v25;
  sub_25DD963D0(a1, &v67 - v25, type metadata accessor for URIEncodedNode);
  v75 = v14;
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result == 2)
    {
      v38 = *v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2968, &qword_25DDA0878);
      v39 = sub_25DD972A4();
      v40 = 0;
      v74 = v39;
      v75 = v38;
      v41 = 1 << *(v38 + 32);
      v42 = -1;
      if (v41 < 64)
      {
        v42 = ~(-1 << v41);
      }

      v43 = *(v38 + 64);
      v67 = v38 + 64;
      v68 = v5;
      v44 = v42 & v43;
      v45 = (v41 + 63) >> 6;
      v73 = v39 + 64;
      if ((v42 & v43) != 0)
      {
        while (1)
        {
          v46 = __clz(__rbit64(v44));
          v44 &= v44 - 1;
LABEL_26:
          v13 = v46 | (v40 << 6);
          v49 = (*(v75 + 48) + 16 * v13);
          v51 = *v49;
          v50 = v49[1];
          sub_25DD963D0(*(v75 + 56) + *(v83 + 72) * v13, v18, type metadata accessor for URIEncodedNode);

          v52 = v72;
          v53 = v76;
          sub_25DD924B0(v18, v72);
          v76 = v53;
          if (v53)
          {
            break;
          }

          v14 = v18;
          sub_25DD96370(v18, type metadata accessor for URIEncodedNode);
          v54 = v74;
          *(v73 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
          v55 = (v54[6] + 16 * v13);
          *v55 = v51;
          v55[1] = v50;
          sub_25DD947C4(v52, v54[7] + *(v68 + 72) * v13, type metadata accessor for URIEncodedNode.PrimitiveOrArrayOfPrimitives);
          v56 = v54[2];
          v57 = __OFADD__(v56, 1);
          v58 = v56 + 1;
          if (v57)
          {
            goto LABEL_52;
          }

          v54[2] = v58;
          v18 = v14;
          if (!v44)
          {
            goto LABEL_21;
          }
        }

        sub_25DD96370(v18, type metadata accessor for URIEncodedNode);
      }

      else
      {
LABEL_21:
        v47 = v40;
        while (1)
        {
          v40 = v47 + 1;
          if (__OFADD__(v47, 1))
          {
            __break(1u);
            goto LABEL_51;
          }

          if (v40 >= v45)
          {
            break;
          }

          v48 = *(v67 + 8 * v40);
          ++v47;
          if (v48)
          {
            v46 = __clz(__rbit64(v48));
            v44 = (v48 - 1) & v48;
            goto LABEL_26;
          }
        }

        sub_25DD93160(v74, v69, v70);
      }
    }
  }

  else
  {
    if (!result)
    {
      sub_25DD947C4(v26, v13, type metadata accessor for URIEncodedNode.Primitive);
      v14 = v71;
      if (!*v71)
      {
        goto LABEL_47;
      }

      if (*v71 != 1)
      {
        sub_25DD92300();
        swift_allocError();
        *v65 = xmmword_25DD9B590;
        swift_willThrow();
        return sub_25DD96370(v13, type metadata accessor for URIEncodedNode.Primitive);
      }

      v28 = HIBYTE(v70) & 0xF;
      if ((v70 & 0x2000000000000000) == 0)
      {
        v28 = v69 & 0xFFFFFFFFFFFFLL;
      }

      if (!v28)
      {
        v35 = 0;
        v37 = 0xE000000000000000;
LABEL_46:
        MEMORY[0x25F8A3200](v35, v37);

        MEMORY[0x25F8A3200](61, 0xE100000000000000);
LABEL_47:
        sub_25DD93A74(v13);

        return sub_25DD96370(v13, type metadata accessor for URIEncodedNode.Primitive);
      }

      v81 = v69;
      v82 = v70;
      if (qword_27FCCE2D0 == -1)
      {
LABEL_9:
        v29 = sub_25DD965E4();
        __swift_project_value_buffer(v29, qword_27FCCE2D8);
        sub_25DD07E24();
        v30 = sub_25DD96FB4();
        if (v31)
        {
          v32 = v30;
        }

        else
        {
          v32 = 0;
        }

        if (v31)
        {
          v33 = v31;
        }

        else
        {
          v33 = 0xE000000000000000;
        }

        v81 = v32;
        v82 = v33;
        v79 = 32;
        v80 = 0xE100000000000000;
        v77 = sub_25DD6F904(*(v14 + 2));
        v78 = v34;
        v35 = sub_25DD96FA4();
        v37 = v36;

        goto LABEL_46;
      }

LABEL_53:
      swift_once();
      goto LABEL_9;
    }

    v14 = *v26;
    v59 = *(*v26 + 16);
    if (v59)
    {
      v81 = MEMORY[0x277D84F90];
      sub_25DD947A4(0, v59, 0);
      v60 = 0;
      v13 = v81;
      v72 = (v14 + ((*(v83 + 80) + 32) & ~*(v83 + 80)));
      while (v60 < *(v14 + 16))
      {
        sub_25DD963D0(v72 + *(v83 + 72) * v60, v24, type metadata accessor for URIEncodedNode);
        sub_25DD963D0(v24, v21, type metadata accessor for URIEncodedNode);
        if (swift_getEnumCaseMultiPayload())
        {
          sub_25DD96370(v21, type metadata accessor for URIEncodedNode);
          sub_25DD92300();
          swift_allocError();
          *v66 = 0;
          v66[1] = 0;
          swift_willThrow();

          sub_25DD96370(v24, type metadata accessor for URIEncodedNode);
        }

        v61 = v74;
        sub_25DD947C4(v21, v74, type metadata accessor for URIEncodedNode.Primitive);
        sub_25DD96370(v24, type metadata accessor for URIEncodedNode);
        v81 = v13;
        v63 = *(v13 + 16);
        v62 = *(v13 + 24);
        if (v63 >= v62 >> 1)
        {
          sub_25DD947A4(v62 > 1, v63 + 1, 1);
          v61 = v74;
          v13 = v81;
        }

        ++v60;
        *(v13 + 16) = v63 + 1;
        sub_25DD947C4(v61, v13 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v63, type metadata accessor for URIEncodedNode.Primitive);
        if (v59 == v60)
        {

          goto LABEL_44;
        }
      }

LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v64 = *v26;

    v13 = MEMORY[0x277D84F90];
LABEL_44:
    sub_25DD929B0(v13, v69, v70);
  }

  return result;
}

uint64_t sub_25DD91A9C()
{
  v0 = sub_25DD965E4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  __swift_allocate_value_buffer(v6, qword_27FCCE298);
  __swift_project_value_buffer(v0, qword_27FCCE298);
  sub_25DD965B4();
  if (qword_27FCCE270 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v0, qword_27FCCE278);
  (*(v1 + 16))(v5, v9, v0);
  sub_25DD965D4();
  v10 = *(v1 + 8);
  v10(v5, v0);
  return (v10)(v8, v0);
}

uint64_t sub_25DD91C38(uint64_t a1, uint64_t *a2)
{
  v3 = sub_25DD965E4();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_25DD965A4();
}

uint64_t sub_25DD91C98()
{
  v0 = sub_25DD965E4();
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v14 - v7;
  __swift_allocate_value_buffer(v6, qword_27FCCE2D8);
  __swift_project_value_buffer(v0, qword_27FCCE2D8);
  if (qword_27FCCE290 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v0, qword_27FCCE298);
  v10 = v1[2];
  v10(v8, v9, v0);
  if (qword_27FCCE2B0 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v0, qword_27FCCE2B8);
  v10(v5, v11, v0);
  sub_25DD965D4();
  v12 = v1[1];
  v12(v5, v0);
  return (v12)(v8, v0);
}

unint64_t sub_25DD91E78(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 0:
      return 0xD000000000000032;
    case 1:
      return 0xD000000000000033;
    case 2:
      return 0xD000000000000042;
  }

  sub_25DD97124();

  MEMORY[0x25F8A3200](a1, a2);
  return 0xD000000000000026;
}

uint64_t sub_25DD91F54(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  switch(a2)
  {
    case 0:
      return !a4;
    case 1:
      return a4 == 1;
    case 2:
      return a4 == 2;
  }

  if (a4 < 3)
  {
    return 0;
  }

  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_25DD975D4();
  }
}

uint64_t sub_25DD91FC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  switch(a3)
  {
    case 0:
      v3 = 0;
      return MEMORY[0x25F8A3F90](v3);
    case 1:
      v3 = 1;
      return MEMORY[0x25F8A3F90](v3);
    case 2:
      v3 = 2;
      return MEMORY[0x25F8A3F90](v3);
  }

  MEMORY[0x25F8A3F90](3);

  return sub_25DD96B94();
}

uint64_t sub_25DD92054(uint64_t a1, uint64_t a2)
{
  sub_25DD97964();
  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 1;
    }

    else
    {
      if (a2 != 2)
      {
        MEMORY[0x25F8A3F90](3);
        sub_25DD96B94();
        return sub_25DD979A4();
      }

      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x25F8A3F90](v3);
  return sub_25DD979A4();
}

uint64_t sub_25DD920E8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25DD97964();
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 1;
    }

    else
    {
      if (v2 != 2)
      {
        MEMORY[0x25F8A3F90](3);
        sub_25DD96B94();
        return sub_25DD979A4();
      }

      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x25F8A3F90](v3);
  return sub_25DD979A4();
}

uint64_t sub_25DD92178()
{
  v1 = v0[1];
  switch(v1)
  {
    case 0:
      v2 = 0;
      return MEMORY[0x25F8A3F90](v2);
    case 1:
      v2 = 1;
      return MEMORY[0x25F8A3F90](v2);
    case 2:
      v2 = 2;
      return MEMORY[0x25F8A3F90](v2);
  }

  v4 = *v0;
  MEMORY[0x25F8A3F90](3);

  return sub_25DD96B94();
}

uint64_t sub_25DD92210()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25DD97964();
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 1;
    }

    else
    {
      if (v2 != 2)
      {
        MEMORY[0x25F8A3F90](3);
        sub_25DD96B94();
        return sub_25DD979A4();
      }

      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x25F8A3F90](v3);
  return sub_25DD979A4();
}

unint64_t sub_25DD922A0()
{
  result = qword_27FCC2958;
  if (!qword_27FCC2958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2958);
  }

  return result;
}

unint64_t sub_25DD92300()
{
  result = qword_27FCC2960;
  if (!qword_27FCC2960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2960);
  }

  return result;
}

uint64_t sub_25DD92354(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  switch(v3)
  {
    case 0:
      return !v4;
    case 1:
      return v4 == 1;
    case 2:
      return v4 == 2;
  }

  if (v4 < 3)
  {
    return 0;
  }

  if (*a1 == *a2 && v3 == v4)
  {
    return 1;
  }

  return sub_25DD975D4();
}

uint64_t get_enum_tag_for_layout_string_22OpenAPIRuntimeInternal13URISerializerV18SerializationErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25DD923F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25DD92450(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

size_t sub_25DD924B0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for URIEncodedNode(0);
  v44 = *(v4 - 8);
  v5 = *(v44 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v43 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v38 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v38 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v38 - v14;
  v16 = type metadata accessor for URIEncodedNode.Primitive(0);
  v42 = *(v16 - 8);
  v17 = *(v42 + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v38 - v21;
  sub_25DD963D0(a1, v15, type metadata accessor for URIEncodedNode);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_25DD947C4(v15, v22, type metadata accessor for URIEncodedNode.Primitive);
    sub_25DD947C4(v22, a2, type metadata accessor for URIEncodedNode.Primitive);
    type metadata accessor for URIEncodedNode.PrimitiveOrArrayOfPrimitives(0);
    return swift_storeEnumTagMultiPayload();
  }

  sub_25DD96370(v15, type metadata accessor for URIEncodedNode);
  sub_25DD963D0(a1, v13, type metadata accessor for URIEncodedNode);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_25DD96370(v13, type metadata accessor for URIEncodedNode);
    sub_25DD92300();
    swift_allocError();
    *v35 = 0;
    v35[1] = 0;
    return swift_willThrow();
  }

  v23 = *v13;
  v24 = *(*v13 + 16);
  if (!v24)
  {
    v36 = *v13;

    v27 = MEMORY[0x277D84F90];
LABEL_15:
    *a2 = v27;
    type metadata accessor for URIEncodedNode.PrimitiveOrArrayOfPrimitives(0);
    return swift_storeEnumTagMultiPayload();
  }

  v40 = v20;
  v45 = MEMORY[0x277D84F90];
  result = sub_25DD947A4(0, v24, 0);
  v26 = 0;
  v27 = v45;
  v41 = v23 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
  v39 = v23;
  while (v26 < *(v23 + 16))
  {
    sub_25DD963D0(v41 + *(v44 + 72) * v26, v10, type metadata accessor for URIEncodedNode);
    v28 = v43;
    sub_25DD963D0(v10, v43, type metadata accessor for URIEncodedNode);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_25DD96370(v28, type metadata accessor for URIEncodedNode);
      sub_25DD92300();
      swift_allocError();
      *v37 = 0;
      v37[1] = 0;
      swift_willThrow();

      sub_25DD96370(v10, type metadata accessor for URIEncodedNode);
    }

    v29 = v4;
    v30 = a2;
    v31 = v28;
    v32 = v40;
    sub_25DD947C4(v31, v40, type metadata accessor for URIEncodedNode.Primitive);
    sub_25DD96370(v10, type metadata accessor for URIEncodedNode);
    v45 = v27;
    v34 = *(v27 + 16);
    v33 = *(v27 + 24);
    if (v34 >= v33 >> 1)
    {
      sub_25DD947A4(v33 > 1, v34 + 1, 1);
      v27 = v45;
    }

    ++v26;
    *(v27 + 16) = v34 + 1;
    result = sub_25DD947C4(v32, v27 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v34, type metadata accessor for URIEncodedNode.Primitive);
    a2 = v30;
    v4 = v29;
    v23 = v39;
    if (v24 == v26)
    {

      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25DD929B0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v10 = type metadata accessor for URIEncodedNode.Primitive(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v65 - v14;
  v17 = *v6;
  v18 = v6[1];
  if (!*v6)
  {
    v21 = 0;
    v86 = 1;
    v79 = 44;
    v76 = v17;
    v22 = *(a1 + 16);
    if (v22)
    {
      goto LABEL_11;
    }

LABEL_24:
  }

  if (v17 != 1)
  {
    sub_25DD92300();
    swift_allocError();
    *v36 = xmmword_25DD9B570;
    return swift_willThrow();
  }

  v19 = 44;
  if (v6[1])
  {
    v19 = 38;
  }

  v79 = v19;
  v20 = 61;
  if (!v18)
  {
    v20 = 0;
  }

  v76 = v20;
  v86 = v18 ^ 1;
  if (v18)
  {
    v21 = 0xE100000000000000;
  }

  else
  {
    v21 = 0;
  }

  v22 = *(a1 + 16);
  if (!v22)
  {
    goto LABEL_24;
  }

LABEL_11:
  v67 = v22;
  v68 = v15;
  v70 = v21;
  v72 = a2;
  v74 = v11;
  v75 = &v65 - v14;
  if ((v17 != 1) | v18 & 1)
  {
    goto LABEL_28;
  }

  v23 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v23 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v23)
  {
    v32 = 0;
    v34 = 0xE000000000000000;
    goto LABEL_27;
  }

  v66 = a1;
  v24 = a3;
  a3 = v6;
  v84 = a2;
  v85 = v24;
  v25 = v24;
  if (qword_27FCCE2D0 != -1)
  {
    goto LABEL_72;
  }

  while (1)
  {
    v26 = sub_25DD965E4();
    __swift_project_value_buffer(v26, qword_27FCCE2D8);
    sub_25DD07E24();
    v27 = sub_25DD96FB4();
    v29 = v28 ? v27 : 0;
    v30 = v28 ? v28 : 0xE000000000000000;
    v84 = v29;
    v85 = v30;
    v82 = 32;
    v83 = 0xE100000000000000;
    v80 = sub_25DD6F904(*(a3 + 2));
    v81 = v31;
    v32 = sub_25DD96FA4();
    v34 = v33;
    v6 = a3;

    v21 = v70;
    a3 = v25;
    a1 = v66;
LABEL_27:
    MEMORY[0x25F8A3200](v32, v34);

    MEMORY[0x25F8A3200](61, 0xE100000000000000);
    v11 = v74;
    v16 = v75;
LABEL_28:
    v38 = sub_25DD93F2C(1uLL, a1);
    v78 = v39;
    v40 = a1;
    v25 = (v41 >> 1);
    v69 = a3;
    if (v37 == (v41 >> 1))
    {
      break;
    }

    v42 = v37;
    v43 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v43 = v72 & 0xFFFFFFFFFFFFLL;
    }

    v71 = v43;
    v66 = v40;

    v77 = v38;
    while (v42 < v25)
    {
      a3 = *(v11 + 72);
      sub_25DD963D0(v78 + a3 * v42, v16, type metadata accessor for URIEncodedNode.Primitive);
      if (v86)
      {
        sub_25DD93A74(v16);
        if (v5)
        {
          goto LABEL_69;
        }
      }

      else
      {
        if (v71)
        {
          v73 = v5;
          v84 = v72;
          v85 = v69;
          if (qword_27FCCE2D0 != -1)
          {
            swift_once();
          }

          v44 = sub_25DD965E4();
          __swift_project_value_buffer(v44, qword_27FCCE2D8);
          sub_25DD07E24();
          v45 = sub_25DD96FB4();
          if (v46)
          {
            v47 = v45;
          }

          else
          {
            v47 = 0;
          }

          if (v46)
          {
            v48 = v46;
          }

          else
          {
            v48 = 0xE000000000000000;
          }

          v84 = v47;
          v85 = v48;
          v82 = 32;
          v83 = 0xE100000000000000;
          v80 = sub_25DD6F904(v6[2]);
          v81 = v49;
          v50 = sub_25DD96FA4();
          v52 = v51;

          v5 = v73;
          v21 = v70;
        }

        else
        {
          v50 = 0;
          v52 = 0xE000000000000000;
        }

        MEMORY[0x25F8A3200](v50, v52);

        MEMORY[0x25F8A3200](v76, v21);
        v16 = v75;
        sub_25DD93A74(v75);
        if (v5)
        {

LABEL_69:

          swift_unknownObjectRelease();
          v64 = v16;
          return sub_25DD96370(v64, type metadata accessor for URIEncodedNode.Primitive);
        }

        v11 = v74;
      }

      ++v42;
      MEMORY[0x25F8A3200](v79, 0xE100000000000000);
      sub_25DD96370(v16, type metadata accessor for URIEncodedNode.Primitive);
      if (v25 == v42)
      {
        swift_unknownObjectRelease();

        v40 = v66;
        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_72:
    swift_once();
  }

  swift_unknownObjectRelease();

  a3 = *(v11 + 72);
LABEL_51:
  v53 = v68;
  sub_25DD963D0(v40 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + a3 * (v67 - 1), v68, type metadata accessor for URIEncodedNode.Primitive);
  if (v86)
  {
    sub_25DD93A74(v53);
  }

  else
  {
    v54 = HIBYTE(v69) & 0xF;
    if ((v69 & 0x2000000000000000) == 0)
    {
      v54 = v72 & 0xFFFFFFFFFFFFLL;
    }

    if (v54)
    {
      v84 = v72;
      v85 = v69;
      if (qword_27FCCE2D0 != -1)
      {
        swift_once();
      }

      v55 = sub_25DD965E4();
      __swift_project_value_buffer(v55, qword_27FCCE2D8);
      sub_25DD07E24();
      v56 = sub_25DD96FB4();
      if (v57)
      {
        v58 = v56;
      }

      else
      {
        v58 = 0;
      }

      if (v57)
      {
        v59 = v57;
      }

      else
      {
        v59 = 0xE000000000000000;
      }

      v84 = v58;
      v85 = v59;
      v82 = 32;
      v83 = 0xE100000000000000;
      v80 = sub_25DD6F904(v6[2]);
      v81 = v60;
      v61 = sub_25DD96FA4();
      v63 = v62;

      v21 = v70;
    }

    else
    {
      v61 = 0;
      v63 = 0xE000000000000000;
    }

    MEMORY[0x25F8A3200](v61, v63);

    MEMORY[0x25F8A3200](v76, v21);
    sub_25DD93A74(v53);
  }

  v64 = v53;
  return sub_25DD96370(v64, type metadata accessor for URIEncodedNode.Primitive);
}

uint64_t sub_25DD93160(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = v3;
  v85 = a3;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2978, &qword_25DDA0888);
  v8 = *(v94 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v94);
  v81 = (&v75 - v10);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2980, &qword_25DDA0890);
  v11 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v79 = (&v75 - v12);
  v13 = type metadata accessor for URIEncodedNode.PrimitiveOrArrayOfPrimitives(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v103 = &v75 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2988, &qword_25DDA0898);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v93 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v21);
  v25 = (&v75 - v24);
  v26 = *(a1 + 16);
  if (!v26)
  {
    return result;
  }

  v86 = a2;
  v27 = sub_25DD94CA8(v26, 0);
  v87 = v8;
  v28 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v29 = v27;
  v77 = v28;
  v30 = sub_25DD96030(&v99, v27 + v28, v26, a1);
  v91 = v101;
  v92 = v30;
  v90 = v102;

  sub_25DD07900();
  if (v92 != v26)
  {
    goto LABEL_47;
  }

  v99 = v29;
  sub_25DD94BF4(&v99);
  v31 = v4;
  if (v4)
  {
    MEMORY[0x25F8A43F0](v4);

    __break(1u);
    return result;
  }

  v32 = v99;
  v33 = *v5;
  v34 = v5[1];
  v35 = v86;
  v37 = v93;
  v36 = v94;
  LODWORD(v92) = v33;
  v82 = v99;
  if (!v33)
  {
    v76 = v17;
    v48 = v34 == 0;
    v49 = 61;
    if (v48)
    {
      v49 = 44;
    }

    v89 = v49;
    v90 = 44;
    goto LABEL_27;
  }

  if (v33 != 1)
  {
    if ((v34 & 1) == 0)
    {

      sub_25DD92300();
      swift_allocError();
      *v50 = 0xD000000000000038;
      v50[1] = 0x800000025DDAB790;
      return swift_willThrow();
    }

    v76 = v17;
LABEL_23:
    v89 = 61;
    v90 = 38;
    goto LABEL_27;
  }

  v76 = v17;
  if (v34)
  {
    goto LABEL_23;
  }

  v38 = HIBYTE(v85) & 0xF;
  if ((v85 & 0x2000000000000000) == 0)
  {
    v38 = v86 & 0xFFFFFFFFFFFFLL;
  }

  v75 = 0;
  if (v38)
  {
    v99 = v86;
    v100 = v85;
    if (qword_27FCCE2D0 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_48;
  }

  v45 = 0;
  v47 = 0xE000000000000000;
LABEL_26:
  MEMORY[0x25F8A3200](v45, v47);

  MEMORY[0x25F8A3200](61, 0xE100000000000000);
  v90 = 44;
  v89 = 44;
  v31 = v75;
  v35 = v86;
  v36 = v94;
  v32 = v82;
LABEL_27:
  v78 = sub_25DD93FC0(1uLL, v32);
  v83 = v51;
  v53 = v52;
  v55 = v54 >> 1;
  v91 = (v87 + 56);
  v56 = (v87 + 48);

  v84 = v53;
  v88 = v55;
  if (v53 == v55)
  {
LABEL_28:
    v57 = 1;
    v53 = v55;
    goto LABEL_32;
  }

  while (1)
  {
    if (v53 < v84 || v53 >= v55)
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      swift_once();
LABEL_11:
      v39 = sub_25DD965E4();
      __swift_project_value_buffer(v39, qword_27FCCE2D8);
      sub_25DD07E24();
      v40 = sub_25DD96FB4();
      if (v41)
      {
        v42 = v40;
      }

      else
      {
        v42 = 0;
      }

      v43 = 0xE000000000000000;
      if (v41)
      {
        v43 = v41;
      }

      v91 = v43;
      v99 = v42;
      v100 = v43;
      v97 = 32;
      v98 = 0xE100000000000000;
      v95 = sub_25DD6F904(v5[2]);
      v96 = v44;
      v45 = sub_25DD96FA4();
      v47 = v46;

      v37 = v93;
      goto LABEL_26;
    }

    sub_25DD96300(v83 + *(v87 + 72) * v53, v37);
    v57 = 0;
    ++v53;
LABEL_32:
    (*v91)(v37, v57, 1, v36);
    sub_25DD64520(v37, v25, &qword_27FCC2988, &qword_25DDA0898);
    if ((*v56)(v25, 1, v36) == 1)
    {
      break;
    }

    v58 = *v25;
    v59 = v25[1];
    v60 = v25 + *(v36 + 48);
    v61 = v103;
    sub_25DD947C4(v60, v103, type metadata accessor for URIEncodedNode.PrimitiveOrArrayOfPrimitives);
    if (v92 == 2)
    {
      v99 = v35;
      v100 = v85;

      MEMORY[0x25F8A3200](91, 0xE100000000000000);

      MEMORY[0x25F8A3200](v58, v59);
      v35 = v86;

      MEMORY[0x25F8A3200](93, 0xE100000000000000);
      v61 = v103;

      v58 = v99;
      v59 = v100;
    }

    v62 = v58;
    v63 = v90;
    sub_25DD94060(v61, v62, v59, v5, v89, v90);
    if (v31)
    {
      sub_25DD96370(v61, type metadata accessor for URIEncodedNode.PrimitiveOrArrayOfPrimitives);
      swift_unknownObjectRelease();

LABEL_43:
      swift_bridgeObjectRelease_n();
    }

    MEMORY[0x25F8A3200](v63, 0xE100000000000000);
    sub_25DD96370(v61, type metadata accessor for URIEncodedNode.PrimitiveOrArrayOfPrimitives);
    v37 = v93;
    v36 = v94;
    v55 = v88;
    if (v53 == v88)
    {
      goto LABEL_28;
    }
  }

  swift_unknownObjectRelease();
  v64 = v82[2];
  if (v64)
  {
    v65 = v81;
    sub_25DD96300(v82 + v77 + *(v87 + 72) * (v64 - 1), v81);

    v66 = v65[1];
    v67 = *(v36 + 48);
    v68 = v80;
    v69 = *(v80 + 48);
    v70 = v79;
    *v79 = *v65;
    v70[1] = v66;
    sub_25DD947C4(v65 + v67, v70 + v69, type metadata accessor for URIEncodedNode.PrimitiveOrArrayOfPrimitives);
    v71 = *v70;
    v72 = v70[1];
    v73 = v70 + *(v68 + 48);
    v74 = v76;
    sub_25DD947C4(v73, v76, type metadata accessor for URIEncodedNode.PrimitiveOrArrayOfPrimitives);
    if (v92 == 2)
    {
      v99 = v35;
      v100 = v85;

      MEMORY[0x25F8A3200](91, 0xE100000000000000);

      MEMORY[0x25F8A3200](v71, v72);

      MEMORY[0x25F8A3200](93, 0xE100000000000000);

      v71 = v99;
      v72 = v100;
    }

    sub_25DD94060(v74, v71, v72, v5, v89, v90);
    sub_25DD96370(v74, type metadata accessor for URIEncodedNode.PrimitiveOrArrayOfPrimitives);
    goto LABEL_43;
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_25DD93A74(uint64_t a1)
{
  v3 = v1;
  v5 = sub_25DD967C4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URIEncodedNode.Primitive(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25DD963D0(a1, v13, type metadata accessor for URIEncodedNode.Primitive);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      if (*v13)
      {
        v16 = 1702195828;
      }

      else
      {
        v16 = 0x65736C6166;
      }

      if (*v13)
      {
        v18 = 0xE400000000000000;
      }

      else
      {
        v18 = 0xE500000000000000;
      }

      goto LABEL_34;
    }

    v24 = *(v13 + 1);
    v51 = *v13;
    v52 = v24;
    if (qword_27FCCE2D0 != -1)
    {
      swift_once();
    }

    v25 = sub_25DD965E4();
    __swift_project_value_buffer(v25, qword_27FCCE2D8);
    sub_25DD07E24();
    v26 = sub_25DD96FB4();
    v28 = v27;

    if (v28)
    {
      v29 = v26;
    }

    else
    {
      v29 = 0;
    }

    if (v28)
    {
      v30 = v28;
    }

    else
    {
      v30 = 0xE000000000000000;
    }

    v51 = v29;
    v52 = v30;
    v47 = 32;
    v48[0] = 0xE100000000000000;
    v45 = sub_25DD6F904(*(v3 + 2));
    v46 = v31;
    v32 = sub_25DD96FA4();
    v18 = v33;
    goto LABEL_33;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v51 = *v13;
    sub_25DD7A8A8();
    v16 = sub_25DD97054();
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 3)
  {
    (*(v6 + 32))(v9, v13, v5);
    sub_25DD83E7C(v3, &v51);
    sub_25DD739D0(v3, &v47);
    v19 = v49;
    v20 = v50;
    __swift_project_boxed_opaque_existential_1(v48, v49);
    v21 = (*(v20 + 8))(v9, v19, v20);
    if (v2)
    {
      sub_25DD83ED8(&v51);
      (*(v6 + 8))(v9, v5);
      return __swift_destroy_boxed_opaque_existential_1(v48);
    }

    v34 = v21;
    v35 = v22;
    __swift_destroy_boxed_opaque_existential_1(v48);
    v45 = v34;
    v46 = v35;
    if (qword_27FCCE2D0 != -1)
    {
      swift_once();
    }

    v36 = sub_25DD965E4();
    __swift_project_value_buffer(v36, qword_27FCCE2D8);
    sub_25DD07E24();
    v37 = sub_25DD96FB4();
    v39 = v38;

    if (v39)
    {
      v40 = v37;
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

    v53 = v41;
    v45 = v40;
    v46 = v41;
    v44[3] = 32;
    v44[4] = 0xE100000000000000;
    v44[1] = sub_25DD6F904(SBYTE2(v51));
    v44[2] = v42;
    v32 = sub_25DD96FA4();
    v18 = v43;
    sub_25DD83ED8(&v51);
    (*(v6 + 8))(v9, v5);
LABEL_33:

    v16 = v32;
    goto LABEL_34;
  }

  v15 = *v13;
  v16 = sub_25DD96E44();
LABEL_13:
  v18 = v17;
LABEL_34:
  MEMORY[0x25F8A3200](v16, v18);
}

unint64_t sub_25DD93F2C(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    if ((v3 - result) >= 1 && v3 < result)
    {
      __break(1u);
    }

    v4 = *(type metadata accessor for URIEncodedNode.Primitive(0) - 8);
    v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    return a2;
  }

  return result;
}

unint64_t sub_25DD93FC0(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    if ((v3 - result) >= 1 && v3 < result)
    {
      __break(1u);
    }

    v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2978, &qword_25DDA0888) - 8);
    v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    return a2;
  }

  return result;
}

uint64_t sub_25DD94060(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v75 = a5;
  v76 = a6;
  v12 = type metadata accessor for URIEncodedNode.Primitive(0);
  v83 = *(v12 - 8);
  v13 = *(v83 + 8);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v69 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v65 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v65 - v19;
  v21 = type metadata accessor for URIEncodedNode.PrimitiveOrArrayOfPrimitives(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25DD963D0(a1, v24, type metadata accessor for URIEncodedNode.PrimitiveOrArrayOfPrimitives);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_25DD947C4(v24, v20, type metadata accessor for URIEncodedNode.Primitive);
    v41 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v41 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (!v41)
    {
      v48 = 0;
      v50 = 0xE000000000000000;
      v51 = v75;
LABEL_30:
      MEMORY[0x25F8A3200](v48, v50);

      MEMORY[0x25F8A3200](v51, 0xE100000000000000);
LABEL_51:
      sub_25DD93A74(v20);
      return sub_25DD96370(v20, type metadata accessor for URIEncodedNode.Primitive);
    }

    v83 = v20;
    v81 = a2;
    v82 = a3;
    if (qword_27FCCE2D0 == -1)
    {
LABEL_21:
      v42 = sub_25DD965E4();
      __swift_project_value_buffer(v42, qword_27FCCE2D8);
      sub_25DD07E24();
      v43 = sub_25DD96FB4();
      if (v44)
      {
        v45 = v43;
      }

      else
      {
        v45 = 0;
      }

      if (v44)
      {
        v46 = v44;
      }

      else
      {
        v46 = 0xE000000000000000;
      }

      v81 = v45;
      v82 = v46;
      v79 = 32;
      v80 = 0xE100000000000000;
      v77 = sub_25DD6F904(*(a4 + 2));
      v78 = v47;
      v48 = sub_25DD96FA4();
      v50 = v49;

      v51 = v75;
      v20 = v83;
      goto LABEL_30;
    }

LABEL_55:
    swift_once();
    goto LABEL_21;
  }

  v70 = a2;
  v25 = *v24;
  if (*(*v24 + 16))
  {
    v66 = *(*v24 + 16);
    v67 = sub_25DD93F2C(1uLL, v25);
    v68 = v25;
    v74 = v27;
    v29 = v28 >> 1;
    if (v26 == v28 >> 1)
    {

      v30 = v75;
LABEL_5:
      swift_unknownObjectRelease();
      if (v66 > *(v68 + 16))
      {
        __break(1u);
      }

      else
      {
        sub_25DD963D0(v68 + ((v83[80] + 32) & ~v83[80]) + *(v83 + 9) * (v66 - 1), v69, type metadata accessor for URIEncodedNode.Primitive);

        v31 = HIBYTE(a3) & 0xF;
        if ((a3 & 0x2000000000000000) == 0)
        {
          v31 = v70 & 0xFFFFFFFFFFFFLL;
        }

        if (!v31)
        {
          v38 = 0;
          v40 = 0xE000000000000000;
LABEL_50:
          MEMORY[0x25F8A3200](v38, v40);

          MEMORY[0x25F8A3200](v30, 0xE100000000000000);
          v20 = v69;
          goto LABEL_51;
        }

        v81 = v70;
        v82 = a3;
        if (qword_27FCCE2D0 == -1)
        {
LABEL_10:
          v32 = sub_25DD965E4();
          __swift_project_value_buffer(v32, qword_27FCCE2D8);
          sub_25DD07E24();
          v33 = sub_25DD96FB4();
          if (v34)
          {
            v35 = v33;
          }

          else
          {
            v35 = 0;
          }

          if (v34)
          {
            v36 = v34;
          }

          else
          {
            v36 = 0xE000000000000000;
          }

          v81 = v35;
          v82 = v36;
          v79 = 32;
          v80 = 0xE100000000000000;
          v77 = sub_25DD6F904(*(a4 + 2));
          v78 = v37;
          v38 = sub_25DD96FA4();
          v40 = v39;

          goto LABEL_50;
        }
      }

      swift_once();
      goto LABEL_10;
    }

    v53 = v26;
    v54 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v54 = v70 & 0xFFFFFFFFFFFFLL;
    }

    v73 = v54;

    v71 = v29;
    v72 = a3;
    v30 = v75;
    while (v53 < v29)
    {
      sub_25DD963D0(v74 + *(v83 + 9) * v53, v18, type metadata accessor for URIEncodedNode.Primitive);
      if (v73)
      {
        v81 = v70;
        v82 = a3;
        if (qword_27FCCE2D0 != -1)
        {
          swift_once();
        }

        v55 = sub_25DD965E4();
        __swift_project_value_buffer(v55, qword_27FCCE2D8);
        sub_25DD07E24();
        v56 = sub_25DD96FB4();
        if (v57)
        {
          v58 = v56;
        }

        else
        {
          v58 = 0;
        }

        if (v57)
        {
          v59 = v57;
        }

        else
        {
          v59 = 0xE000000000000000;
        }

        v81 = v58;
        v82 = v59;
        v79 = 32;
        v80 = 0xE100000000000000;
        v77 = sub_25DD6F904(*(a4 + 2));
        v78 = v60;
        v61 = sub_25DD96FA4();
        v63 = v62;

        v30 = v75;
      }

      else
      {
        v61 = 0;
        v63 = 0xE000000000000000;
      }

      MEMORY[0x25F8A3200](v61, v63);

      MEMORY[0x25F8A3200](v30, 0xE100000000000000);
      sub_25DD93A74(v18);
      if (v7)
      {
        sub_25DD96370(v18, type metadata accessor for URIEncodedNode.Primitive);
        swift_unknownObjectRelease();
      }

      ++v53;
      MEMORY[0x25F8A3200](v76, 0xE100000000000000);
      sub_25DD96370(v18, type metadata accessor for URIEncodedNode.Primitive);
      v29 = v71;
      a3 = v72;
      if (v71 == v53)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_55;
  }

  v52 = *v24;
}

size_t sub_25DD947A4(size_t a1, int64_t a2, char a3)
{
  result = sub_25DD94A1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_25DD947C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

size_t sub_25DD9482C(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCC2990, &unk_25DDA08A0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2978, &qword_25DDA0888) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2978, &qword_25DDA0888) - 8);
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

size_t sub_25DD94A1C(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2970, &qword_25DDA0880);
  v10 = *(type metadata accessor for URIEncodedNode.Primitive(0) - 8);
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
  v15 = *(type metadata accessor for URIEncodedNode.Primitive(0) - 8);
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

uint64_t sub_25DD94BF4(void **a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2978, &qword_25DDA0888) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_25DD96438(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_25DD94DB0(v6);
  *a1 = v3;
  return result;
}

size_t sub_25DD94CA8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCC2990, &unk_25DDA08A0);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2978, &qword_25DDA0888) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25DD94DB0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25DD97354();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2978, &qword_25DDA0888);
        v6 = sub_25DD96D64();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2978, &qword_25DDA0888) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_25DD9514C(v8, v9, a1, v4);
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
    return sub_25DD94EF4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25DD94EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2978, &qword_25DDA0888);
  v8 = *(*(v41 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v41);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = (&v29 - v13);
  result = MEMORY[0x28223BE20](v12);
  v18 = (&v29 - v17);
  v31 = a2;
  if (a3 != a2)
  {
    v19 = *(v16 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v36 = *a4;
    v30 = v19;
    v23 = v36 + v19 * a3;
LABEL_5:
    v34 = v20;
    v35 = a3;
    v32 = v23;
    v33 = v22;
    v24 = v22;
    while (1)
    {
      sub_25DD96300(v23, v18);
      sub_25DD96300(v20, v14);
      v25 = v18[1];
      v39 = *v18;
      v40 = v25;
      v26 = v14[1];
      v37 = *v14;
      v38 = v26;
      sub_25DD07E24();
      v27 = sub_25DD96FD4();
      sub_25DD9644C(v14);
      result = sub_25DD9644C(v18);
      if (v27 != -1)
      {
LABEL_4:
        a3 = v35 + 1;
        v20 = v34 + v30;
        v22 = v33 - 1;
        v23 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      sub_25DD64520(v23, v11, &qword_27FCC2978, &qword_25DDA0888);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_25DD64520(v11, v20, &qword_27FCC2978, &qword_25DDA0888);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v24++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25DD9514C(int64_t *a1, uint64_t a2, int64_t a3, unint64_t a4)
{
  v5 = v4;
  v108 = a1;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2978, &qword_25DDA0888);
  v113 = *(v118 - 8);
  v8 = *(v113 + 64);
  v9 = MEMORY[0x28223BE20](v118);
  v104 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v117 = &v103 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v119 = (&v103 - v14);
  result = MEMORY[0x28223BE20](v13);
  v17 = (&v103 - v16);
  v18 = *(a3 + 8);
  v115 = a3;
  if (v18 >= 1)
  {
    v105 = a4;
    v19 = 0;
    v20 = MEMORY[0x277D84F90];
    while (1)
    {
      v21 = v19;
      v22 = v19 + 1;
      if (v19 + 1 >= v18)
      {
        v30 = v19 + 1;
      }

      else
      {
        v116 = v18;
        v106 = v5;
        v23 = *a3;
        v24 = *(v113 + 72);
        v25 = *a3 + v24 * v22;
        sub_25DD96300(v25, v17);
        v26 = v119;
        sub_25DD96300(v23 + v24 * v21, v119);
        v27 = v17[1];
        v122 = *v17;
        v123 = v27;
        v28 = v26[1];
        v120 = *v26;
        v121 = v28;
        sub_25DD07E24();
        v112 = sub_25DD96FD4();
        sub_25DD9644C(v26);
        result = sub_25DD9644C(v17);
        v107 = v21;
        v29 = v21 + 2;
        v114 = v24;
        a4 = v23 + v24 * (v21 + 2);
        while (1)
        {
          v30 = v116;
          if (v116 == v29)
          {
            break;
          }

          v31 = v20;
          v32 = v112 == -1;
          sub_25DD96300(a4, v17);
          v33 = v119;
          sub_25DD96300(v25, v119);
          v34 = v17[1];
          v122 = *v17;
          v123 = v34;
          v35 = v33[1];
          v120 = *v33;
          v121 = v35;
          v36 = sub_25DD96FD4();
          sub_25DD9644C(v33);
          result = sub_25DD9644C(v17);
          v37 = v32 ^ (v36 != -1);
          v20 = v31;
          ++v29;
          a4 += v114;
          v25 += v114;
          if ((v37 & 1) == 0)
          {
            v30 = v29 - 1;
            break;
          }
        }

        a3 = v115;
        v21 = v107;
        if (v112 != -1)
        {
          goto LABEL_23;
        }

        if (v30 < v107)
        {
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
          return result;
        }

        if (v107 < v30)
        {
          v103 = v20;
          v38 = v30;
          v39 = v114 * (v30 - 1);
          v40 = v30 * v114;
          v116 = v30;
          v41 = v107;
          v42 = v107 * v114;
          v43 = v104;
          do
          {
            if (v41 != --v38)
            {
              a4 = *v115;
              if (!*v115)
              {
                goto LABEL_133;
              }

              sub_25DD64520(a4 + v42, v43, &qword_27FCC2978, &qword_25DDA0888);
              if (v42 < v39 || a4 + v42 >= a4 + v40)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v42 != v39)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_25DD64520(v43, a4 + v39, &qword_27FCC2978, &qword_25DDA0888);
            }

            ++v41;
            v39 -= v114;
            v40 -= v114;
            v42 += v114;
          }

          while (v41 < v38);
          v5 = v106;
          v21 = v107;
          a3 = v115;
          v30 = v116;
          v20 = v103;
        }

        else
        {
LABEL_23:
          v5 = v106;
        }
      }

      v44 = *(a3 + 8);
      if (v30 >= v44)
      {
        goto LABEL_33;
      }

      if (__OFSUB__(v30, v21))
      {
        goto LABEL_125;
      }

      if (v30 - v21 >= v105)
      {
        goto LABEL_33;
      }

      if (__OFADD__(v21, v105))
      {
        goto LABEL_126;
      }

      if (v21 + v105 >= v44)
      {
        v45 = *(a3 + 8);
      }

      else
      {
        v45 = v21 + v105;
      }

      if (v45 < v21)
      {
LABEL_127:
        __break(1u);
        goto LABEL_128;
      }

      if (v30 == v45)
      {
LABEL_33:
        v19 = v30;
        if (v30 < v21)
        {
          goto LABEL_124;
        }
      }

      else
      {
        v103 = v20;
        v106 = v5;
        v107 = v21;
        v90 = *a3;
        v91 = *(v113 + 72);
        v92 = *a3 + v91 * (v30 - 1);
        v93 = -v91;
        a3 = v21 - v30;
        v109 = v91;
        v110 = v45;
        v94 = v90 + v30 * v91;
        do
        {
          v116 = v30;
          v111 = v94;
          v112 = a3;
          v114 = v92;
          do
          {
            sub_25DD96300(v94, v17);
            v95 = v119;
            sub_25DD96300(v92, v119);
            v96 = v17[1];
            v122 = *v17;
            v123 = v96;
            v97 = v95[1];
            v120 = *v95;
            v121 = v97;
            sub_25DD07E24();
            a4 = sub_25DD96FD4();
            sub_25DD9644C(v95);
            result = sub_25DD9644C(v17);
            if (a4 != -1)
            {
              break;
            }

            if (!v90)
            {
              goto LABEL_130;
            }

            a4 = v117;
            sub_25DD64520(v94, v117, &qword_27FCC2978, &qword_25DDA0888);
            swift_arrayInitWithTakeFrontToBack();
            sub_25DD64520(a4, v92, &qword_27FCC2978, &qword_25DDA0888);
            v92 += v93;
            v94 += v93;
          }

          while (!__CFADD__(a3++, 1));
          v30 = v116 + 1;
          v19 = v110;
          v92 = v114 + v109;
          a3 = v112 - 1;
          v94 = v111 + v109;
        }

        while (v116 + 1 != v110);
        v5 = v106;
        v21 = v107;
        v20 = v103;
        if (v110 < v107)
        {
          goto LABEL_124;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_25DD050F0(0, *(v20 + 2) + 1, 1, v20);
        v20 = result;
      }

      a4 = *(v20 + 2);
      v46 = *(v20 + 3);
      v47 = a4 + 1;
      if (a4 >= v46 >> 1)
      {
        result = sub_25DD050F0((v46 > 1), a4 + 1, 1, v20);
        v20 = result;
      }

      *(v20 + 2) = v47;
      v48 = &v20[16 * a4];
      *(v48 + 4) = v21;
      *(v48 + 5) = v19;
      if (!*v108)
      {
        goto LABEL_134;
      }

      if (a4)
      {
        a3 = *v108;
        while (1)
        {
          v49 = v47 - 1;
          if (v47 >= 4)
          {
            break;
          }

          if (v47 == 3)
          {
            v50 = *(v20 + 4);
            v51 = *(v20 + 5);
            v60 = __OFSUB__(v51, v50);
            v52 = v51 - v50;
            v53 = v60;
LABEL_54:
            if (v53)
            {
              goto LABEL_113;
            }

            v66 = &v20[16 * v47];
            v68 = *v66;
            v67 = *(v66 + 1);
            v69 = __OFSUB__(v67, v68);
            v70 = v67 - v68;
            v71 = v69;
            if (v69)
            {
              goto LABEL_116;
            }

            v72 = &v20[16 * v49 + 32];
            v74 = *v72;
            v73 = *(v72 + 1);
            v60 = __OFSUB__(v73, v74);
            v75 = v73 - v74;
            if (v60)
            {
              goto LABEL_119;
            }

            if (__OFADD__(v70, v75))
            {
              goto LABEL_120;
            }

            if (v70 + v75 >= v52)
            {
              if (v52 < v75)
              {
                v49 = v47 - 2;
              }

              goto LABEL_75;
            }

            goto LABEL_68;
          }

          v76 = &v20[16 * v47];
          v78 = *v76;
          v77 = *(v76 + 1);
          v60 = __OFSUB__(v77, v78);
          v70 = v77 - v78;
          v71 = v60;
LABEL_68:
          if (v71)
          {
            goto LABEL_115;
          }

          v79 = &v20[16 * v49];
          v81 = *(v79 + 4);
          v80 = *(v79 + 5);
          v60 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v60)
          {
            goto LABEL_118;
          }

          if (v82 < v70)
          {
            goto LABEL_3;
          }

LABEL_75:
          a4 = v49 - 1;
          if (v49 - 1 >= v47)
          {
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
            goto LABEL_127;
          }

          if (!*v115)
          {
            goto LABEL_131;
          }

          v87 = *&v20[16 * a4 + 32];
          v88 = *&v20[16 * v49 + 40];
          sub_25DD95A70(*v115 + *(v113 + 72) * v87, *v115 + *(v113 + 72) * *&v20[16 * v49 + 32], *v115 + *(v113 + 72) * v88, a3);
          if (v5)
          {
          }

          if (v88 < v87)
          {
            goto LABEL_109;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = sub_25DD06A4C(v20);
          }

          if (a4 >= *(v20 + 2))
          {
            goto LABEL_110;
          }

          v89 = &v20[16 * a4];
          *(v89 + 4) = v87;
          *(v89 + 5) = v88;
          v124 = v20;
          result = sub_25DD069C0(v49);
          v20 = v124;
          v47 = *(v124 + 2);
          if (v47 <= 1)
          {
            goto LABEL_3;
          }
        }

        v54 = &v20[16 * v47 + 32];
        v55 = *(v54 - 64);
        v56 = *(v54 - 56);
        v60 = __OFSUB__(v56, v55);
        v57 = v56 - v55;
        if (v60)
        {
          goto LABEL_111;
        }

        v59 = *(v54 - 48);
        v58 = *(v54 - 40);
        v60 = __OFSUB__(v58, v59);
        v52 = v58 - v59;
        v53 = v60;
        if (v60)
        {
          goto LABEL_112;
        }

        v61 = &v20[16 * v47];
        v63 = *v61;
        v62 = *(v61 + 1);
        v60 = __OFSUB__(v62, v63);
        v64 = v62 - v63;
        if (v60)
        {
          goto LABEL_114;
        }

        v60 = __OFADD__(v52, v64);
        v65 = v52 + v64;
        if (v60)
        {
          goto LABEL_117;
        }

        if (v65 >= v57)
        {
          v83 = &v20[16 * v49 + 32];
          v85 = *v83;
          v84 = *(v83 + 1);
          v60 = __OFSUB__(v84, v85);
          v86 = v84 - v85;
          if (v60)
          {
            goto LABEL_121;
          }

          if (v52 < v86)
          {
            v49 = v47 - 2;
          }

          goto LABEL_75;
        }

        goto LABEL_54;
      }

LABEL_3:
      a3 = v115;
      v18 = v115[1];
      if (v19 >= v18)
      {
        goto LABEL_96;
      }
    }
  }

  v20 = MEMORY[0x277D84F90];
LABEL_96:
  a4 = *v108;
  if (!*v108)
  {
    goto LABEL_135;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_128:
    result = sub_25DD06A4C(v20);
    v20 = result;
  }

  v99 = v5;
  v124 = v20;
  v100 = *(v20 + 2);
  if (v100 >= 2)
  {
    while (1)
    {
      v101 = *a3;
      if (!*a3)
      {
        goto LABEL_132;
      }

      v5 = *&v20[16 * v100];
      a3 = *&v20[16 * v100 + 24];
      sub_25DD95A70(v101 + *(v113 + 72) * v5, v101 + *(v113 + 72) * *&v20[16 * v100 + 16], v101 + *(v113 + 72) * a3, a4);
      if (v99)
      {
      }

      if (a3 < v5)
      {
        goto LABEL_122;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_25DD06A4C(v20);
      }

      if (v100 - 2 >= *(v20 + 2))
      {
        goto LABEL_123;
      }

      v102 = &v20[16 * v100];
      *v102 = v5;
      *(v102 + 1) = a3;
      v124 = v20;
      result = sub_25DD069C0(v100 - 1);
      v20 = v124;
      v100 = *(v124 + 2);
      a3 = v115;
      if (v100 <= 1)
      {
      }
    }
  }
}

uint64_t sub_25DD95A70(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v46 = a4;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2978, &qword_25DDA0888);
  v7 = *(*(v47 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v47);
  v10 = (&v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v8);
  v13 = (&v41 - v12);
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_61;
  }

  v16 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v15 != -1)
  {
    v17 = (a2 - a1) / v15;
    v54 = a1;
    v18 = v46;
    v53 = v46;
    if (v17 < v16 / v15)
    {
      v19 = v17 * v15;
      if (v46 < a1 || a1 + v19 <= v46)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v46 == a1)
        {
          goto LABEL_17;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v18 = v46;
LABEL_17:
      v21 = v18 + v19;
      v52 = v18 + v19;
      if (v19 >= 1 && a2 < a3)
      {
        do
        {
          sub_25DD96300(a2, v13);
          sub_25DD96300(v18, v10);
          v23 = v13[1];
          v50 = *v13;
          v51 = v23;
          v24 = v10[1];
          v48 = *v10;
          v49 = v24;
          sub_25DD07E24();
          v25 = sub_25DD96FD4();
          sub_25DD9644C(v10);
          sub_25DD9644C(v13);
          if (v25 == -1)
          {
            if (a1 < a2 || a1 >= a2 + v15)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v15;
          }

          else
          {
            if (a1 < v18 || a1 >= v18 + v15)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v53 = v18 + v15;
            v18 += v15;
          }

          a1 += v15;
          v54 = a1;
        }

        while (v18 < v21 && a2 < a3);
      }

LABEL_59:
      sub_25DD95F40(&v54, &v53, &v52);
      return 1;
    }

    v20 = v16 / v15 * v15;
    v45 = v10;
    if (v46 < a2 || a2 + v20 <= v46)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (v46 == a2)
      {
LABEL_39:
        v26 = v18 + v20;
        if (v20 >= 1)
        {
          v27 = -v15;
          v28 = v18 + v20;
          v29 = a3;
          v42 = v27;
          v43 = a1;
          do
          {
            v41 = v26;
            v30 = a2 + v27;
            v44 = a2;
            while (1)
            {
              if (a2 <= a1)
              {
                v54 = a2;
                v52 = v41;
                goto LABEL_59;
              }

              v32 = v29;
              v33 = v29 + v27;
              v34 = v28 + v27;
              sub_25DD96300(v34, v13);
              v35 = v13;
              v36 = v45;
              sub_25DD96300(v30, v45);
              v37 = v35[1];
              v50 = *v35;
              v51 = v37;
              v38 = v36[1];
              v48 = *v36;
              v49 = v38;
              sub_25DD07E24();
              v39 = sub_25DD96FD4();
              v40 = v36;
              v13 = v35;
              sub_25DD9644C(v40);
              sub_25DD9644C(v35);
              if (v39 == -1)
              {
                break;
              }

              v26 = v34;
              v29 = v33;
              if (v32 < v28 || v33 >= v28)
              {
                swift_arrayInitWithTakeFrontToBack();
                a1 = v43;
              }

              else
              {
                a1 = v43;
                if (v32 != v28)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v28 = v34;
              v31 = v34 > v46;
              v27 = v42;
              a2 = v44;
              if (!v31)
              {
                goto LABEL_57;
              }
            }

            v29 = v33;
            if (v32 < v44 || v33 >= v44)
            {
              a2 = v30;
              swift_arrayInitWithTakeFrontToBack();
              v27 = v42;
              a1 = v43;
            }

            else
            {
              a2 = v30;
              v27 = v42;
              a1 = v43;
              if (v32 != v44)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }
          }

          while (v28 > v46);
        }

LABEL_57:
        v54 = a2;
        v52 = v26;
        goto LABEL_59;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v18 = v46;
    goto LABEL_39;
  }

LABEL_62:
  __break(1u);
  return result;
}

uint64_t sub_25DD95F40(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2978, &qword_25DDA0888);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_25DD96030(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2978, &qword_25DDA0888);
  v41 = *(v44 - 8);
  v8 = *(v41 + 64);
  v9 = MEMORY[0x28223BE20](v44);
  v43 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v42 = &v38 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  v45 = a2;
  if (!a2)
  {
LABEL_18:
    v23 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v13;
    a1[2] = ~v14;
    a1[3] = v23;
    a1[4] = v16;
    return a3;
  }

  if (!a3)
  {
    v23 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v38 = v14;
    v39 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v19 = 1;
    v40 = a3;
    while (v16)
    {
LABEL_14:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v17;
      v24 = v22 | (v17 << 6);
      v25 = *(a4 + 56);
      v26 = a4;
      v27 = (*(a4 + 48) + 16 * v24);
      v28 = *v27;
      v29 = v27[1];
      v30 = v25 + *(*(type metadata accessor for URIEncodedNode.PrimitiveOrArrayOfPrimitives(0) - 8) + 72) * v24;
      v31 = v43;
      sub_25DD963D0(v30, &v43[*(v44 + 48)], type metadata accessor for URIEncodedNode.PrimitiveOrArrayOfPrimitives);
      *v31 = v28;
      v31[1] = v29;
      v32 = v31;
      v33 = v42;
      sub_25DD64520(v32, v42, &qword_27FCC2978, &qword_25DDA0888);
      v34 = v33;
      v35 = v45;
      sub_25DD64520(v34, v45, &qword_27FCC2978, &qword_25DDA0888);
      a3 = v40;
      if (v19 == v40)
      {

        a1 = v39;
        a4 = v26;
        goto LABEL_23;
      }

      a1 = (v35 + *(v41 + 72));
      v45 = a1;

      result = v19;
      v36 = __OFADD__(v19++, 1);
      a4 = v26;
      v17 = v23;
      if (v36)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v17 = v21;
        goto LABEL_14;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v37 = v17 + 1;
    }

    else
    {
      v37 = v18;
    }

    v23 = v37 - 1;
    a3 = result;
    a1 = v39;
LABEL_23:
    v14 = v38;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_25DD96300(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2978, &qword_25DDA0888);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25DD96370(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25DD963D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25DD9644C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2978, &qword_25DDA0888);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}