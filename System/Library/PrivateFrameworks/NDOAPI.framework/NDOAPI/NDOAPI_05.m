uint64_t _s6NDOAPI39Com_Apple_Sse_Ocean_Ndo_Api_RequestMetaV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37AD8, &qword_22DECB040);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v37 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38758, &unk_22DECBA30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v37 - v15;
  v17 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v18 = v17[5];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_22;
    }

    if (*v19 != *v21 || v20 != v22)
    {
      v24 = v17;
      v25 = sub_22DEC50E4();
      v17 = v24;
      if ((v25 & 1) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  else if (v22)
  {
    goto LABEL_22;
  }

  v26 = v17[6];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  v30 = *(a2 + v26 + 8);
  if (v28)
  {
    if (!v30)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (*v27 != *v29)
    {
      LOBYTE(v30) = 1;
    }

    if (v30)
    {
      goto LABEL_22;
    }
  }

  v31 = v17[7];
  v32 = *(v13 + 48);
  sub_22DE63E20(a1 + v31, v16);
  sub_22DE63E20(a2 + v31, &v16[v32]);
  v33 = *(v5 + 48);
  if (v33(v16, 1, v4) == 1)
  {
    if (v33(&v16[v32], 1, v4) == 1)
    {
      sub_22DDEF284(v16, &qword_27DA37AD8, &qword_22DECB040);
LABEL_25:
      sub_22DEC48B4();
      sub_22DE67B8C(&qword_27DA37B30, MEMORY[0x277D216C8]);
      v34 = sub_22DEC4BF4();
      return v34 & 1;
    }

    goto LABEL_21;
  }

  sub_22DE63E20(v16, v12);
  if (v33(&v16[v32], 1, v4) == 1)
  {
    sub_22DE644CC(v12);
LABEL_21:
    sub_22DDEF284(v16, &qword_27DA38758, &unk_22DECBA30);
    goto LABEL_22;
  }

  sub_22DE62BD4(&v16[v32], v8);
  v36 = _s6NDOAPI34Com_Apple_Sse_Ocean_Ndo_Api_LocaleV2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_22DE644CC(v8);
  sub_22DE644CC(v12);
  sub_22DDEF284(v16, &qword_27DA37AD8, &qword_22DECB040);
  if (v36)
  {
    goto LABEL_25;
  }

LABEL_22:
  v34 = 0;
  return v34 & 1;
}

uint64_t _s6NDOAPI34Com_Apple_Sse_Ocean_Ndo_Api_LocaleV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
  v5 = v4[6];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = *v6 == *v8 && v7 == v9;
    if (!v10 && (sub_22DEC50E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (sub_22DE2F604(*a1, *a2))
  {
    v11 = v4[7];
    v12 = (a1 + v11);
    v13 = *(a1 + v11 + 8);
    v14 = (a2 + v11);
    v15 = v14[1];
    if (v13)
    {
      if (!v15)
      {
        return 0;
      }

      v16 = *v12 == *v14 && v13 == v15;
      if (!v16 && (sub_22DEC50E4() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v15)
    {
      return 0;
    }

    v17 = v4[8];
    v18 = (a1 + v17);
    v19 = *(a1 + v17 + 8);
    v20 = (a2 + v17);
    v21 = v20[1];
    if (v19)
    {
      if (!v21)
      {
        return 0;
      }

      v22 = *v18 == *v20 && v19 == v21;
      if (!v22 && (sub_22DEC50E4() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v21)
    {
      return 0;
    }

    v23 = v4[9];
    v24 = (a1 + v23);
    v25 = *(a1 + v23 + 8);
    v26 = (a2 + v23);
    v27 = v26[1];
    if (v25)
    {
      if (!v27 || (*v24 != *v26 || v25 != v27) && (sub_22DEC50E4() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v27)
    {
      return 0;
    }

    v28 = v4[10];
    v29 = (a1 + v28);
    v30 = *(a1 + v28 + 8);
    v31 = (a2 + v28);
    v32 = v31[1];
    if (v30)
    {
      if (v32 && (*v29 == *v31 && v30 == v32 || (sub_22DEC50E4() & 1) != 0))
      {
        goto LABEL_41;
      }
    }

    else if (!v32)
    {
LABEL_41:
      v33 = v4[5];
      sub_22DEC48B4();
      sub_22DE67B8C(&qword_27DA37B30, MEMORY[0x277D216C8]);
      return sub_22DEC4BF4() & 1;
    }
  }

  return 0;
}

uint64_t sub_22DE67B8C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22DE67BD8()
{
  result = qword_27DA38698;
  if (!qword_27DA38698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38698);
  }

  return result;
}

unint64_t sub_22DE67C30()
{
  result = qword_27DA386A0;
  if (!qword_27DA386A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA386A0);
  }

  return result;
}

unint64_t sub_22DE67C88()
{
  result = qword_27DA386A8;
  if (!qword_27DA386A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA386A8);
  }

  return result;
}

unint64_t sub_22DE67D10()
{
  result = qword_27DA386C0;
  if (!qword_27DA386C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA386C0);
  }

  return result;
}

unint64_t sub_22DE67D68()
{
  result = qword_27DA386C8;
  if (!qword_27DA386C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA386C8);
  }

  return result;
}

unint64_t sub_22DE67DC0()
{
  result = qword_27DA386D0;
  if (!qword_27DA386D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA386D0);
  }

  return result;
}

unint64_t sub_22DE67E48()
{
  result = qword_27DA386E8;
  if (!qword_27DA386E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA386E8);
  }

  return result;
}

unint64_t sub_22DE67EA0()
{
  result = qword_27DA386F0;
  if (!qword_27DA386F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA386F0);
  }

  return result;
}

unint64_t sub_22DE67EF8()
{
  result = qword_27DA386F8;
  if (!qword_27DA386F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA386F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Com_Apple_Sse_Ocean_Ndo_Api_RequestHeaders(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Com_Apple_Sse_Ocean_Ndo_Api_RequestHeaders(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for Com_Apple_Sse_Ocean_Ndo_Api_ResponseHeaders(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
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

uint64_t storeEnumTagSinglePayload for Com_Apple_Sse_Ocean_Ndo_Api_ResponseHeaders(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
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
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_22DE685B4()
{
  sub_22DE687C8(319, &qword_28145AD38, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_22DEC48B4();
    if (v1 <= 0x3F)
    {
      sub_22DE687C8(319, &qword_28145AD88, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22DE686CC()
{
  sub_22DEC48B4();
  if (v0 <= 0x3F)
  {
    sub_22DE687C8(319, &qword_28145AD88, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22DE687C8(319, &qword_28145AD00, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_22DE68818();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22DE687C8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_22DE68818()
{
  if (!qword_28145D538[0])
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(255);
    v0 = sub_22DEC4EB4();
    if (!v1)
    {
      atomic_store(v0, qword_28145D538);
    }
  }
}

void sub_22DE68898()
{
  sub_22DEC48B4();
  if (v0 <= 0x3F)
  {
    sub_22DE687C8(319, &qword_28145AD88, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22DE687C8(319, &qword_28145AD00, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_22DE6897C()
{
  result = qword_27DA38740;
  if (!qword_27DA38740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38740);
  }

  return result;
}

unint64_t sub_22DE689D0()
{
  result = qword_27DA38748;
  if (!qword_27DA38748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38748);
  }

  return result;
}

unint64_t sub_22DE68A24()
{
  result = qword_27DA38750;
  if (!qword_27DA38750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38750);
  }

  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCResponse.data.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37DD0, &qword_22DECBB20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse(0);
  sub_22DDF0028(v1 + *(v7 + 24), v6, &qword_27DA37DD0, &qword_22DECBB20);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22DE6B268(v6, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse);
  }

  *a1 = MEMORY[0x277D84F90];
  v10 = a1 + *(v8 + 20);
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22DDEF284(v6, &qword_27DA37DD0, &qword_22DECBB20);
  }

  return result;
}

NDOAPI::Com_Apple_Sse_Ocean_Ndo_Api_CCItemType_optional __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_CCItemType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x40302010005uLL >> (8 * rawValue);
  if (rawValue >= 6)
  {
    LOBYTE(v2) = 5;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_22DE68CB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE81C44();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCRequest.meta.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16 - v5;
  v7 = *(v1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest(0) + 20));
  v8 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CCRequestP33_2E671CB3414F520C2731BDA23B038D1C13_StorageClass__meta;
  swift_beginAccess();
  sub_22DDF0028(v7 + v8, v6, &qword_27DA37A38, &unk_22DEC6570);
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_22DE6B268(v6, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v11 = (a1 + v9[5]);
  *v11 = 0;
  v11[1] = 0;
  v12 = a1 + v9[6];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v9[7];
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
  (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_22DDEF284(v6, &qword_27DA37A38, &unk_22DEC6570);
  }

  return result;
}

uint64_t sub_22DE68EF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DE73990(a1, v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  v13 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = sub_22DE73744(v16);
    *(a2 + v13) = v16;
  }

  sub_22DE6B268(v12, v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CCRequestP33_2E671CB3414F520C2731BDA23B038D1C13_StorageClass__meta;
  swift_beginAccess();
  sub_22DDF0208(v7, v16 + v20, &qword_27DA37A38, &unk_22DEC6570);
  return swift_endAccess();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCRequest.meta.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = sub_22DE73744(v11);
    *(v2 + v8) = v11;
  }

  sub_22DE6B268(a1, v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  v15 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CCRequestP33_2E671CB3414F520C2731BDA23B038D1C13_StorageClass__meta;
  swift_beginAccess();
  sub_22DDF0208(v7, v11 + v16, &qword_27DA37A38, &unk_22DEC6570);
  return swift_endAccess();
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_CCRequest.meta.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CCRequestP33_2E671CB3414F520C2731BDA23B038D1C13_StorageClass__meta;
  swift_beginAccess();
  sub_22DDF0028(v16 + v17, v8, &qword_27DA37A38, &unk_22DEC6570);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v19 = (v14 + v9[5]);
    *v19 = 0;
    v19[1] = 0;
    v20 = v14 + v9[6];
    *v20 = 0;
    *(v20 + 8) = 1;
    v21 = v9[7];
    v22 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
    (*(*(v22 - 8) + 56))(v14 + v21, 1, 1, v22);
    if (v18(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA37A38, &unk_22DEC6570);
    }
  }

  else
  {
    sub_22DE6B268(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  }

  return sub_22DE69508;
}

void sub_22DE69508(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_22DE73990(*(v2 + 120), *(v2 + 112), type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = sub_22DE73744(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_22DE6B268(v14, v18, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CCRequestP33_2E671CB3414F520C2731BDA23B038D1C13_StorageClass__meta;
    swift_beginAccess();
    sub_22DDF0208(v18, v7 + v19, &qword_27DA37A38, &unk_22DEC6570);
    swift_endAccess();
    sub_22DE739F8(v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  }

  else
  {
    v20 = *(v2 + 72);
    v21 = *(v20 + v3);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v20 + v3);
    if ((v22 & 1) == 0)
    {
      v24 = *(v2 + 128);
      v25 = *(v2 + 72);
      v26 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = sub_22DE73744(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_22DE6B268(v13, v18, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CCRequestP33_2E671CB3414F520C2731BDA23B038D1C13_StorageClass__meta;
    swift_beginAccess();
    sub_22DDF0208(v18, v23 + v31, &qword_27DA37A38, &unk_22DEC6570);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCRequest.common.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A40, &unk_22DEC7330);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v19 - v5;
  v7 = *(v1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest(0) + 20));
  v8 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CCRequestP33_2E671CB3414F520C2731BDA23B038D1C13_StorageClass__common;
  swift_beginAccess();
  sub_22DDF0028(v7 + v8, v6, &qword_27DA37A40, &unk_22DEC7330);
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_22DE6B268(v6, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
  }

  v11 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 1) = v11;
  *(a1 + 2) = v11;
  *(a1 + 3) = v11;
  *(a1 + 4) = v11;
  v12 = &a1[v9[9]];
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v13 = v9[10];
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_UserData(0);
  (*(*(v14 - 8) + 56))(&a1[v13], 1, 1, v14);
  v15 = &a1[v9[11]];
  *v15 = 0;
  v15[8] = 1;
  v16 = &a1[v9[12]];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = &a1[v9[13]];
  *v17 = 0;
  *(v17 + 1) = 0;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_22DDEF284(v6, &qword_27DA37A40, &unk_22DEC7330);
  }

  return result;
}

uint64_t sub_22DE699C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A40, &unk_22DEC7330);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DE73990(a1, v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
  v13 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = sub_22DE73744(v16);
    *(a2 + v13) = v16;
  }

  sub_22DE6B268(v12, v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CCRequestP33_2E671CB3414F520C2731BDA23B038D1C13_StorageClass__common;
  swift_beginAccess();
  sub_22DDF0208(v7, v16 + v20, &qword_27DA37A40, &unk_22DEC7330);
  return swift_endAccess();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCRequest.common.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A40, &unk_22DEC7330);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = sub_22DE73744(v11);
    *(v2 + v8) = v11;
  }

  sub_22DE6B268(a1, v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
  v15 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CCRequestP33_2E671CB3414F520C2731BDA23B038D1C13_StorageClass__common;
  swift_beginAccess();
  sub_22DDF0208(v7, v11 + v16, &qword_27DA37A40, &unk_22DEC7330);
  return swift_endAccess();
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_CCRequest.common.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A40, &unk_22DEC7330) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CCRequestP33_2E671CB3414F520C2731BDA23B038D1C13_StorageClass__common;
  swift_beginAccess();
  sub_22DDF0028(v16 + v17, v8, &qword_27DA37A40, &unk_22DEC7330);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    v19 = MEMORY[0x277D84F90];
    *v14 = MEMORY[0x277D84F90];
    *(v14 + 1) = v19;
    *(v14 + 2) = v19;
    *(v14 + 3) = v19;
    *(v14 + 4) = v19;
    v20 = &v14[v9[9]];
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v21 = v9[10];
    v22 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_UserData(0);
    (*(*(v22 - 8) + 56))(&v14[v21], 1, 1, v22);
    v23 = &v14[v9[11]];
    *v23 = 0;
    v23[8] = 1;
    v24 = &v14[v9[12]];
    *v24 = 0;
    *(v24 + 1) = 0;
    v25 = &v14[v9[13]];
    *v25 = 0;
    *(v25 + 1) = 0;
    if (v18(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA37A40, &unk_22DEC7330);
    }
  }

  else
  {
    sub_22DE6B268(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
  }

  return sub_22DE69FF4;
}

void sub_22DE69FF4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_22DE73990(*(v2 + 120), *(v2 + 112), type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = sub_22DE73744(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_22DE6B268(v14, v18, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CCRequestP33_2E671CB3414F520C2731BDA23B038D1C13_StorageClass__common;
    swift_beginAccess();
    sub_22DDF0208(v18, v7 + v19, &qword_27DA37A40, &unk_22DEC7330);
    swift_endAccess();
    sub_22DE739F8(v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
  }

  else
  {
    v20 = *(v2 + 72);
    v21 = *(v20 + v3);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v20 + v3);
    if ((v22 & 1) == 0)
    {
      v24 = *(v2 + 128);
      v25 = *(v2 + 72);
      v26 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = sub_22DE73744(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_22DE6B268(v13, v18, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CCRequestP33_2E671CB3414F520C2731BDA23B038D1C13_StorageClass__common;
    swift_beginAccess();
    sub_22DDF0208(v18, v23 + v31, &qword_27DA37A40, &unk_22DEC7330);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

BOOL sub_22DE6A274(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  v13 = *(v4 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest(0) + 20));
  v14 = *a3;
  swift_beginAccess();
  sub_22DDF0028(v13 + v14, v12, a1, a2);
  v15 = a4(0);
  v16 = (*(*(v15 - 8) + 48))(v12, 1, v15) != 1;
  sub_22DDEF284(v12, a1, a2);
  return v16;
}

uint64_t sub_22DE6A3BC(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v24 - v12;
  v14 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest(0) + 20);
  v15 = *(v4 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v4 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest._StorageClass(0);
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    v17 = sub_22DE73744(v17);
    *(v9 + v14) = v17;
  }

  v21 = a3(0);
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  v22 = *a4;
  swift_beginAccess();
  sub_22DDF0208(v13, v17 + v22, a1, a2);
  return swift_endAccess();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCRequest.init()@<X0>(uint64_t a1@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v2 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest(0) + 20);
  if (qword_27DA37820 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_27DA38790;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCResponse.meta.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38088, &unk_22DEC8220);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse(0);
  sub_22DDF0028(v1 + *(v7 + 20), v6, &qword_27DA38088, &unk_22DEC8220);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22DE6B268(v6, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v10 = (a1 + v8[5]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a1 + v8[6]);
  *v11 = 0;
  v11[1] = 0;
  v12 = a1 + v8[7];
  *v12 = 0;
  *(v12 + 8) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22DDEF284(v6, &qword_27DA38088, &unk_22DEC8220);
  }

  return result;
}

uint64_t sub_22DE6A72C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38088, &unk_22DEC8220);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse(0);
  sub_22DDF0028(a1 + *(v8 + 20), v7, &qword_27DA38088, &unk_22DEC8220);
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_22DE6B268(v7, a2, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v11 = (a2 + v9[5]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a2 + v9[6]);
  *v12 = 0;
  v12[1] = 0;
  v13 = a2 + v9[7];
  *v13 = 0;
  *(v13 + 8) = 1;
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_22DDEF284(v7, &qword_27DA38088, &unk_22DEC8220);
  }

  return result;
}

uint64_t sub_22DE6A8B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DE73990(a1, v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  v9 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse(0) + 20);
  sub_22DDEF284(a2 + v9, &qword_27DA38088, &unk_22DEC8220);
  sub_22DE6B268(v8, a2 + v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCResponse.meta.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse(0) + 20);
  sub_22DDEF284(v1 + v3, &qword_27DA38088, &unk_22DEC8220);
  sub_22DE6B268(a1, v1 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_CCResponse.meta.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38088, &unk_22DEC8220) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse(0) + 20);
  *(v5 + 12) = v15;
  sub_22DDF0028(v1 + v15, v8, &qword_27DA38088, &unk_22DEC8220);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v17 = (v14 + v9[5]);
    *v17 = 0;
    v17[1] = 0;
    v18 = (v14 + v9[6]);
    *v18 = 0;
    v18[1] = 0;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 8) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA38088, &unk_22DEC8220);
    }
  }

  else
  {
    sub_22DE6B268(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  }

  return sub_22DE6ACD4;
}

void sub_22DE6ACD4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_22DE73990((*a1)[5], v4, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
    sub_22DDEF284(v9 + v3, &qword_27DA38088, &unk_22DEC8220);
    sub_22DE6B268(v4, v9 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_22DE739F8(v5, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  }

  else
  {
    sub_22DDEF284(v9 + v3, &qword_27DA38088, &unk_22DEC8220);
    sub_22DE6B268(v5, v9 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t sub_22DE6AEB4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37DD0, &qword_22DECBB20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse(0);
  sub_22DDF0028(a1 + *(v8 + 24), v7, &qword_27DA37DD0, &qword_22DECBB20);
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_22DE6B268(v7, a2, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse);
  }

  *a2 = MEMORY[0x277D84F90];
  v11 = a2 + *(v9 + 20);
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_22DDEF284(v7, &qword_27DA37DD0, &qword_22DECBB20);
  }

  return result;
}

uint64_t sub_22DE6B01C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DE73990(a1, v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse);
  v9 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse(0) + 24);
  sub_22DDEF284(a2 + v9, &qword_27DA37DD0, &qword_22DECBB20);
  sub_22DE6B268(v8, a2 + v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCResponse.data.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse(0) + 24);
  sub_22DDEF284(v1 + v3, &qword_27DA37DD0, &qword_22DECBB20);
  sub_22DE6B268(a1, v1 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse);
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v1 = a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse(0) + 20);
  return _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
}

uint64_t sub_22DE6B268(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_CCResponse.data.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37DD0, &qword_22DECBB20) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse(0) + 24);
  *(v5 + 12) = v15;
  sub_22DDF0028(v1 + v15, v8, &qword_27DA37DD0, &qword_22DECBB20);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    v17 = v14 + *(v9 + 20);
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA37DD0, &qword_22DECBB20);
    }
  }

  else
  {
    sub_22DE6B268(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse);
  }

  return sub_22DE6B50C;
}

void sub_22DE6B50C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_22DE73990((*a1)[5], v4, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse);
    sub_22DDEF284(v9 + v3, &qword_27DA37DD0, &qword_22DECBB20);
    sub_22DE6B268(v4, v9 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_22DE739F8(v5, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse);
  }

  else
  {
    sub_22DDEF284(v9 + v3, &qword_27DA37DD0, &qword_22DECBB20);
    sub_22DE6B268(v5, v9 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCResponse.init()@<X0>(uint64_t a1@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse(0);
  v3 = *(v2 + 20);
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = *(v2 + 24);
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1 + v5, 1, 1, v6);
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CCSection.header.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCSection.isExpandable.setter(char a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CCSection.isExpandable.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_22DE2CCE4;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCSection.expandThreshold.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection(0) + 32));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCSection.expandThreshold.setter(int a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CCSection.expandThreshold.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection(0) + 32);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_22DE5DDF0;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_CCSection.clearExpandThreshold()()
{
  v1 = v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCSection.items.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CCSection.expandLabel.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection(0) + 36);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE2D1BC;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CCSection.footer.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection(0) + 40);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

uint64_t sub_22DE6BE54@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_22DEC48B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22DE6BEF0(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_22DEC48B4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCSection.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection(0);
  v3 = a1 + v2[5];
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v5 = (a1 + v2[6]);
  *v5 = 0;
  v5[1] = 0;
  *(a1 + v2[7]) = 2;
  v6 = a1 + v2[8];
  *v6 = 0;
  v6[4] = 1;
  v7 = (a1 + v2[9]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a1 + v2[10]);
  *v8 = 0;
  v8[1] = 0;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCItem.type.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem(0);
  v4 = *(v1 + *(result + 24));
  if (v4 == 5)
  {
    LOBYTE(v4) = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCItem.type.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CCItem.type.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem(0) + 24);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 5)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_22DE2CCE4;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCItem.ccBannerData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F48, &qword_22DEC8170);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  sub_22DDF0028(v2, &v16 - v6, &qword_27DA37F48, &qword_22DEC8170);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_22DDEF284(v7, &qword_27DA37F48, &qword_22DEC8170);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_22DE6B268(v7, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData);
    }

    sub_22DE739F8(v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData(0);
  v10 = (a1 + v9[5]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a1 + v9[6]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a1 + v9[7]);
  *v12 = 0;
  v12[1] = 0;
  v13 = v9[8];
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  return (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData.init()@<X0>(uint64_t a1@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData(0);
  v3 = (a1 + v2[5]);
  *v3 = 0;
  v3[1] = 0;
  v4 = (a1 + v2[6]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (a1 + v2[7]);
  *v5 = 0;
  v5[1] = 0;
  v6 = v2[8];
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, 1, 1, v7);
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_CCItem.ccBannerData.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F48, &qword_22DEC8170) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData(0);
  v11 = *(*(v10 - 1) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 1) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  sub_22DDF0028(v2, v9, &qword_27DA37F48, &qword_22DEC8170);
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_22DDEF284(v9, &qword_27DA37F48, &qword_22DEC8170);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_22DE6B268(v9, v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData);
      return sub_22DE6C6E4;
    }

    sub_22DE739F8(v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v16 = (v13 + v10[5]);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v13 + v10[6]);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v13 + v10[7]);
  *v18 = 0;
  v18[1] = 0;
  v19 = v10[8];
  v20 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  (*(*(v20 - 8) + 56))(v13 + v19, 1, 1, v20);
  return sub_22DE6C6E4;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCItem.ccDeviceData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F48, &qword_22DEC8170);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  sub_22DDF0028(v2, &v19 - v6, &qword_27DA37F48, &qword_22DEC8170);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_22DDEF284(v7, &qword_27DA37F48, &qword_22DEC8170);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_22DE6B268(v7, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData);
    }

    sub_22DE739F8(v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0);
  v11 = (a1 + v10[5]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a1 + v10[6]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a1 + v10[7]);
  *v13 = 0;
  v13[1] = 0;
  v14 = (a1 + v10[8]);
  *v14 = 0;
  v14[1] = 0;
  v15 = (a1 + v10[9]);
  *v15 = 0;
  v15[1] = 0;
  v16 = (a1 + v10[10]);
  *v16 = 0;
  v16[1] = 0;
  v17 = v10[11];
  v18 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  return (*(*(v18 - 8) + 56))(a1 + v17, 1, 1, v18);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData.init()@<X0>(uint64_t a1@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0);
  v3 = (a1 + v2[5]);
  *v3 = 0;
  v3[1] = 0;
  v4 = (a1 + v2[6]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (a1 + v2[7]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a1 + v2[8]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a1 + v2[9]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a1 + v2[10]);
  *v8 = 0;
  v8[1] = 0;
  v9 = v2[11];
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a1 + v9, 1, 1, v10);
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_CCItem.ccDeviceData.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F48, &qword_22DEC8170) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0);
  v11 = *(*(v10 - 1) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 1) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  sub_22DDF0028(v2, v9, &qword_27DA37F48, &qword_22DEC8170);
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_22DDEF284(v9, &qword_27DA37F48, &qword_22DEC8170);
LABEL_15:
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v16 = (v13 + v10[5]);
    *v16 = 0;
    v16[1] = 0;
    v17 = (v13 + v10[6]);
    *v17 = 0;
    v17[1] = 0;
    v18 = (v13 + v10[7]);
    *v18 = 0;
    v18[1] = 0;
    v19 = (v13 + v10[8]);
    *v19 = 0;
    v19[1] = 0;
    v20 = (v13 + v10[9]);
    *v20 = 0;
    v20[1] = 0;
    v21 = (v13 + v10[10]);
    *v21 = 0;
    v21[1] = 0;
    v22 = v10[11];
    v23 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
    (*(*(v23 - 8) + 56))(v13 + v22, 1, 1, v23);
    return sub_22DE6CCA4;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_22DE739F8(v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
    goto LABEL_15;
  }

  sub_22DE6B268(v9, v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData);
  return sub_22DE6CCA4;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCItem.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F48, &qword_22DEC8170);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  sub_22DDF0028(v2, &v15 - v6, &qword_27DA37F48, &qword_22DEC8170);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_22DDEF284(v7, &qword_27DA37F48, &qword_22DEC8170);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_22DE6B268(v7, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    }

    sub_22DE739F8(v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v11 = (a1 + v10[5]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a1 + v10[6]);
  *v12 = 0;
  v12[1] = 0;
  v13 = v10[7];
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  return (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_CCItem.linkData.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F48, &qword_22DEC8170) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v11 = *(*(v10 - 1) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 1) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  sub_22DDF0028(v2, v9, &qword_27DA37F48, &qword_22DEC8170);
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_22DDEF284(v9, &qword_27DA37F48, &qword_22DEC8170);
LABEL_15:
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v16 = (v13 + v10[5]);
    *v16 = 0;
    v16[1] = 0;
    v17 = (v13 + v10[6]);
    *v17 = 0;
    v17[1] = 0;
    v18 = v10[7];
    v19 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
    (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
    return sub_22DE6D140;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_22DE739F8(v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
    goto LABEL_15;
  }

  sub_22DE6B268(v9, v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  return sub_22DE6D140;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCItem.ccPromoData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F48, &qword_22DEC8170);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  sub_22DDF0028(v2, &v18 - v6, &qword_27DA37F48, &qword_22DEC8170);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_22DDEF284(v7, &qword_27DA37F48, &qword_22DEC8170);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return sub_22DE6B268(v7, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData);
    }

    sub_22DE739F8(v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData(0);
  v11 = (a1 + v10[5]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a1 + v10[6]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a1 + v10[7]);
  *v13 = 0;
  v13[1] = 0;
  v14 = v10[8];
  v15 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  (*(*(v15 - 8) + 56))(a1 + v14, 1, 1, v15);
  v16 = v10[9];
  v17 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction(0);
  return (*(*(v17 - 8) + 56))(a1 + v16, 1, 1, v17);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData.init()@<X0>(uint64_t a1@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData(0);
  v3 = (a1 + v2[5]);
  *v3 = 0;
  v3[1] = 0;
  v4 = (a1 + v2[6]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (a1 + v2[7]);
  *v5 = 0;
  v5[1] = 0;
  v6 = v2[8];
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  (*(*(v7 - 8) + 56))(a1 + v6, 1, 1, v7);
  v8 = v2[9];
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a1 + v8, 1, 1, v9);
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_CCItem.ccPromoData.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F48, &qword_22DEC8170) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData(0);
  v11 = *(*(v10 - 1) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 1) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  sub_22DDF0028(v2, v9, &qword_27DA37F48, &qword_22DEC8170);
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_22DDEF284(v9, &qword_27DA37F48, &qword_22DEC8170);
LABEL_15:
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v16 = (v13 + v10[5]);
    *v16 = 0;
    v16[1] = 0;
    v17 = (v13 + v10[6]);
    *v17 = 0;
    v17[1] = 0;
    v18 = (v13 + v10[7]);
    *v18 = 0;
    v18[1] = 0;
    v19 = v10[8];
    v20 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
    (*(*(v20 - 8) + 56))(v13 + v19, 1, 1, v20);
    v21 = v10[9];
    v22 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction(0);
    (*(*(v22 - 8) + 56))(v13 + v21, 1, 1, v22);
    return sub_22DE6D770;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_22DE739F8(v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
    goto LABEL_15;
  }

  sub_22DE6B268(v9, v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData);
  return sub_22DE6D770;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCItem.ccTextData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F48, &qword_22DEC8170);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  sub_22DDF0028(v2, &v11 - v6, &qword_27DA37F48, &qword_22DEC8170);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_22DDEF284(v7, &qword_27DA37F48, &qword_22DEC8170);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return sub_22DE6B268(v7, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData);
    }

    sub_22DE739F8(v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData(0);
  v10 = (a1 + *(result + 20));
  *v10 = 0;
  v10[1] = 0;
  return result;
}

uint64_t sub_22DE6D928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F48, &qword_22DEC8170);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  sub_22DDF0028(a1, &v11 - v6, &qword_27DA37F48, &qword_22DEC8170);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_22DDEF284(v7, &qword_27DA37F48, &qword_22DEC8170);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return sub_22DE6B268(v7, a2, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData);
    }

    sub_22DE739F8(v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData(0);
  v10 = (a2 + *(result + 20));
  *v10 = 0;
  v10[1] = 0;
  return result;
}

uint64_t sub_22DE6DA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v11 = a5(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v17 - v13;
  sub_22DE73990(a1, &v17 - v13, a6);
  sub_22DDEF284(a2, &qword_27DA37F48, &qword_22DEC8170);
  sub_22DE6B268(v14, a2, a7);
  v15 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
}

uint64_t sub_22DE6DBCC(uint64_t a1, uint64_t (*a2)(void))
{
  sub_22DDEF284(v2, &qword_27DA37F48, &qword_22DEC8170);
  sub_22DE6B268(a1, v2, a2);
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(*(v5 - 8) + 56);

  return v6(v2, 0, 1, v5);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCTextData.init()@<X0>(uint64_t a1@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData(0);
  v3 = (a1 + *(result + 20));
  *v3 = 0;
  v3[1] = 0;
  return result;
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_CCItem.ccTextData.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F48, &qword_22DEC8170) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_22DDF0028(v1, v8, &qword_27DA37F48, &qword_22DEC8170);
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_22DDEF284(v8, &qword_27DA37F48, &qword_22DEC8170);
LABEL_15:
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v15 = (v12 + *(v9 + 20));
    *v15 = 0;
    v15[1] = 0;
    return sub_22DE6DEE0;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_22DE739F8(v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
    goto LABEL_15;
  }

  sub_22DE6B268(v8, v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData);
  return sub_22DE6DEE0;
}

void sub_22DE6DF24(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = *a1;
  v8 = (*a1)[4];
  v9 = (*a1)[5];
  v10 = (*a1)[2];
  v11 = (*a1)[3];
  v13 = **a1;
  v12 = (*a1)[1];
  if (a2)
  {
    sub_22DE73990((*a1)[3], v10, a5);
    sub_22DDEF284(v13, &qword_27DA37F48, &qword_22DEC8170);
    sub_22DE6B268(v10, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
    sub_22DE739F8(v11, a6);
  }

  else
  {
    sub_22DDEF284(**a1, &qword_27DA37F48, &qword_22DEC8170);
    sub_22DE6B268(v11, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
  }

  free(v11);
  free(v10);
  free(v12);

  free(v7);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCItem.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem(0);
  v4 = a1 + *(v3 + 20);
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  *(a1 + *(v3 + 24)) = 5;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CCTextData.text.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

uint64_t sub_22DE6E2F0(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_22DE6E34C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 20));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *a3 = v6;
  a3[1] = v7;
}

uint64_t sub_22DE6E3B4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *(a5(0) + 20));
  v8 = v7[1];

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t sub_22DE6E424(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 20));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData.logoURL.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

uint64_t sub_22DE6E568(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  v3 = v2[1];

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t sub_22DE6E5C0(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_22DE6E61C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 24));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *a3 = v6;
  a3[1] = v7;
}

uint64_t sub_22DE6E684(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *(a5(0) + 24));
  v8 = v7[1];

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t sub_22DE6E6F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 24));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData.title.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

uint64_t sub_22DE6E838(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  v3 = v2[1];

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData.subTitle.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData.link.modify(void *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData(0) + 32);
  *(v5 + 12) = v15;
  sub_22DDF0028(v1 + v15, v8, &qword_27DA37D88, &unk_22DEC8210);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v17 = (v14 + v9[5]);
    *v17 = 0;
    v17[1] = 0;
    v18 = (v14 + v9[6]);
    *v18 = 0;
    v18[1] = 0;
    v19 = v9[7];
    v20 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    if (v16(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA37D88, &unk_22DEC8210);
    }
  }

  else
  {
    sub_22DE6B268(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  }

  return sub_22DE81CA4;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CCBannerLink.label.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerLink(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCBannerLink.action.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerLink(0);
  sub_22DDF0028(v1 + *(v7 + 24), v6, &qword_27DA37D80, &unk_22DEC7960);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22DE6B268(v6, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  *(a1 + *(v8 + 20)) = 7;
  v10 = *(v8 + 24);
  v11 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22DDEF284(v6, &qword_27DA37D80, &unk_22DEC7960);
  }

  return result;
}

uint64_t sub_22DE6EF54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerLink(0);
  sub_22DDF0028(a1 + *(v8 + 24), v7, &qword_27DA37D80, &unk_22DEC7960);
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_22DE6B268(v7, a2, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  *(a2 + *(v9 + 20)) = 7;
  v11 = *(v9 + 24);
  v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData(0);
  (*(*(v12 - 8) + 56))(a2 + v11, 1, 1, v12);
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_22DDEF284(v7, &qword_27DA37D80, &unk_22DEC7960);
  }

  return result;
}

uint64_t sub_22DE6F0FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DE73990(a1, v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  v9 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerLink(0) + 24);
  sub_22DDEF284(a2 + v9, &qword_27DA37D80, &unk_22DEC7960);
  sub_22DE6B268(v8, a2 + v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCBannerLink.action.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerLink(0) + 24);
  sub_22DDEF284(v1 + v3, &qword_27DA37D80, &unk_22DEC7960);
  sub_22DE6B268(a1, v1 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_CCBannerLink.action.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerLink(0) + 24);
  *(v5 + 12) = v15;
  sub_22DDF0028(v1 + v15, v8, &qword_27DA37D80, &unk_22DEC7960);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    *(v14 + *(v9 + 20)) = 7;
    v17 = *(v9 + 24);
    v18 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    if (v16(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA37D80, &unk_22DEC7960);
    }
  }

  else
  {
    sub_22DE6B268(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  }

  return sub_22DE6F544;
}

void sub_22DE6F544(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_22DE73990((*a1)[5], v4, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
    sub_22DDEF284(v9 + v3, &qword_27DA37D80, &unk_22DEC7960);
    sub_22DE6B268(v4, v9 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_22DE739F8(v5, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  }

  else
  {
    sub_22DDEF284(v9 + v3, &qword_27DA37D80, &unk_22DEC7960);
    sub_22DE6B268(v5, v9 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL sub_22DE6F6E8(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0);
  sub_22DDF0028(v4 + *(v13 + 24), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  sub_22DDEF284(v12, a1, a2);
  return v15;
}

uint64_t sub_22DE6F820(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 24);
  sub_22DDEF284(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCBannerLink.init()@<X0>(uint64_t a1@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerLink(0);
  v3 = (a1 + *(v2 + 20));
  *v3 = 0;
  v3[1] = 0;
  v4 = *(v2 + 24);
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a1 + v4, 1, 1, v5);
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData.imageURL.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData.fallbackSymbol.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

uint64_t sub_22DE6FBDC(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_22DE6FC38@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 28));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *a3 = v6;
  a3[1] = v7;
}

uint64_t sub_22DE6FCA0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *(a5(0) + 28));
  v8 = v7[1];

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t sub_22DE6FD10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 28));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData.title.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

uint64_t sub_22DE6FE54(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));
  v3 = v2[1];

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData.subTitle.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0) + 32));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_22DE6FEE8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0) + 32));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_22DE6FF4C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0) + 32));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData.subTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0) + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData.subTitle.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0) + 32);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData.clearSubTitle()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0) + 32));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t sub_22DE70118(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 36));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_22DE70174@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 36));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *a3 = v6;
  a3[1] = v7;
}

uint64_t sub_22DE701DC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *(a5(0) + 36));
  v8 = v7[1];

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t sub_22DE7024C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 36));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData.ctaLabel.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0) + 36);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

uint64_t sub_22DE70390(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 36));
  v3 = v2[1];

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t sub_22DE703E8(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 40));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_22DE70444@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 40));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *a3 = v6;
  a3[1] = v7;
}

uint64_t sub_22DE704AC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *(a5(0) + 40));
  v8 = v7[1];

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t sub_22DE7051C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 40));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData.serialNumber.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0) + 40);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

uint64_t sub_22DE70660(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 40));
  v3 = v2[1];

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData.action.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0);
  sub_22DDF0028(v1 + *(v7 + 44), v6, &qword_27DA37D80, &unk_22DEC7960);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22DE6B268(v6, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  *(a1 + *(v8 + 20)) = 7;
  v10 = *(v8 + 24);
  v11 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22DDEF284(v6, &qword_27DA37D80, &unk_22DEC7960);
  }

  return result;
}

uint64_t sub_22DE70844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0);
  sub_22DDF0028(a1 + *(v8 + 44), v7, &qword_27DA37D80, &unk_22DEC7960);
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_22DE6B268(v7, a2, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  *(a2 + *(v9 + 20)) = 7;
  v11 = *(v9 + 24);
  v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData(0);
  (*(*(v12 - 8) + 56))(a2 + v11, 1, 1, v12);
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_22DDEF284(v7, &qword_27DA37D80, &unk_22DEC7960);
  }

  return result;
}

uint64_t sub_22DE709EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DE73990(a1, v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  v9 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0) + 44);
  sub_22DDEF284(a2 + v9, &qword_27DA37D80, &unk_22DEC7960);
  sub_22DE6B268(v8, a2 + v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData.action.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0) + 44);
  sub_22DDEF284(v1 + v3, &qword_27DA37D80, &unk_22DEC7960);
  sub_22DE6B268(a1, v1 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData.action.modify(void *a1))(uint64_t **, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0) + 44);
  *(v5 + 12) = v15;
  sub_22DDF0028(v1 + v15, v8, &qword_27DA37D80, &unk_22DEC7960);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    *(v14 + *(v9 + 20)) = 7;
    v17 = *(v9 + 24);
    v18 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    if (v16(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA37D80, &unk_22DEC7960);
    }
  }

  else
  {
    sub_22DE6B268(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  }

  return sub_22DE81CA0;
}

BOOL Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData.hasAction.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0);
  sub_22DDF0028(v0 + *(v5 + 44), v4, &qword_27DA37D80, &unk_22DEC7960);
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_22DDEF284(v4, &qword_27DA37D80, &unk_22DEC7960);
  return v7;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData.clearAction()()
{
  v1 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0) + 44);
  sub_22DDEF284(v0 + v1, &qword_27DA37D80, &unk_22DEC7960);
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData.logoURL.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData.title.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData.subTitle.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

uint64_t sub_22DE71364@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - v7;
  v9 = a1(0);
  sub_22DDF0028(v2 + *(v9 + 32), v8, &qword_27DA37D88, &unk_22DEC8210);
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v11 = *(*(v10 - 1) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return sub_22DE6B268(v8, a2, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v12 = (a2 + v10[5]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a2 + v10[6]);
  *v13 = 0;
  v13[1] = 0;
  v14 = v10[7];
  v15 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  (*(*(v15 - 8) + 56))(a2 + v14, 1, 1, v15);
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return sub_22DDEF284(v8, &qword_27DA37D88, &unk_22DEC8210);
  }

  return result;
}

uint64_t sub_22DE7151C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18 - v8;
  v10 = a2(0);
  sub_22DDF0028(a1 + *(v10 + 32), v9, &qword_27DA37D88, &unk_22DEC8210);
  v11 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v12 = *(*(v11 - 1) + 48);
  if (v12(v9, 1, v11) != 1)
  {
    return sub_22DE6B268(v9, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v13 = (a3 + v11[5]);
  *v13 = 0;
  v13[1] = 0;
  v14 = (a3 + v11[6]);
  *v14 = 0;
  v14[1] = 0;
  v15 = v11[7];
  v16 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  (*(*(v16 - 8) + 56))(a3 + v15, 1, 1, v16);
  result = (v12)(v9, 1, v11);
  if (result != 1)
  {
    return sub_22DDEF284(v9, &qword_27DA37D88, &unk_22DEC8210);
  }

  return result;
}

uint64_t sub_22DE716D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DE73990(a1, v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  v13 = *(a5(0) + 32);
  sub_22DDEF284(a2 + v13, &qword_27DA37D88, &unk_22DEC8210);
  sub_22DE6B268(v12, a2 + v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  return (*(v9 + 56))(a2 + v13, 0, 1, v8);
}

uint64_t sub_22DE7182C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 32);
  sub_22DDEF284(v2 + v4, &qword_27DA37D88, &unk_22DEC8210);
  sub_22DE6B268(a1, v2 + v4, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(v2 + v4, 0, 1, v5);
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData.link.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData(0) + 32);
  *(v5 + 12) = v15;
  sub_22DDF0028(v1 + v15, v8, &qword_27DA37D88, &unk_22DEC8210);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v17 = (v14 + v9[5]);
    *v17 = 0;
    v17[1] = 0;
    v18 = (v14 + v9[6]);
    *v18 = 0;
    v18[1] = 0;
    v19 = v9[7];
    v20 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    if (v16(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA37D88, &unk_22DEC8210);
    }
  }

  else
  {
    sub_22DE6B268(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  }

  return sub_22DE71B50;
}

void sub_22DE71B50(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_22DE73990((*a1)[5], v4, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    sub_22DDEF284(v9 + v3, &qword_27DA37D88, &unk_22DEC8210);
    sub_22DE6B268(v4, v9 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_22DE739F8(v5, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  }

  else
  {
    sub_22DDEF284(v9 + v3, &qword_27DA37D88, &unk_22DEC8210);
    sub_22DE6B268(v5, v9 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL sub_22DE71CD0(uint64_t (*a1)(void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  v7 = a1(0);
  sub_22DDF0028(v1 + *(v7 + 32), v6, &qword_27DA37D88, &unk_22DEC8210);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v9 = (*(*(v8 - 8) + 48))(v6, 1, v8) != 1;
  sub_22DDEF284(v6, &qword_27DA37D88, &unk_22DEC8210);
  return v9;
}

uint64_t sub_22DE71DEC(uint64_t (*a1)(void))
{
  v2 = *(a1(0) + 32);
  sub_22DDEF284(v1 + v2, &qword_27DA37D88, &unk_22DEC8210);
  v3 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(v1 + v2, 1, 1, v3);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData.dismissAction.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38898, &qword_22DECBB28);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData(0);
  sub_22DDF0028(v1 + *(v7 + 36), v6, &qword_27DA38898, &qword_22DECBB28);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22DE6B268(v6, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v10 = *(v8 + 20);
  v11 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22DDEF284(v6, &qword_27DA38898, &qword_22DECBB28);
  }

  return result;
}

uint64_t sub_22DE72018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38898, &qword_22DECBB28);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData(0);
  sub_22DDF0028(a1 + *(v8 + 36), v7, &qword_27DA38898, &qword_22DECBB28);
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_22DE6B268(v7, a2, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v11 = *(v9 + 20);
  v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  (*(*(v12 - 8) + 56))(a2 + v11, 1, 1, v12);
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_22DDEF284(v7, &qword_27DA38898, &qword_22DECBB28);
  }

  return result;
}

uint64_t sub_22DE721B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DE73990(a1, v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction);
  v9 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData(0) + 36);
  sub_22DDEF284(a2 + v9, &qword_27DA38898, &qword_22DECBB28);
  sub_22DE6B268(v8, a2 + v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData.dismissAction.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData(0) + 36);
  sub_22DDEF284(v1 + v3, &qword_27DA38898, &qword_22DECBB28);
  sub_22DE6B268(a1, v1 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction);
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction.init()@<X0>(uint64_t a1@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v2 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction(0) + 20);
  v3 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a1 + v2, 1, 1, v3);
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData.dismissAction.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38898, &qword_22DECBB28) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData(0) + 36);
  *(v5 + 12) = v15;
  sub_22DDF0028(v1 + v15, v8, &qword_27DA38898, &qword_22DECBB28);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v17 = *(v9 + 20);
    v18 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    if (v16(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA38898, &qword_22DECBB28);
    }
  }

  else
  {
    sub_22DE6B268(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction);
  }

  return sub_22DE7266C;
}

void sub_22DE7266C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_22DE73990((*a1)[5], v4, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction);
    sub_22DDEF284(v9 + v3, &qword_27DA38898, &qword_22DECBB28);
    sub_22DE6B268(v4, v9 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_22DE739F8(v5, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction);
  }

  else
  {
    sub_22DDEF284(v9 + v3, &qword_27DA38898, &qword_22DECBB28);
    sub_22DE6B268(v5, v9 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData.hasDismissAction.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38898, &qword_22DECBB28);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData(0);
  sub_22DDF0028(v0 + *(v5 + 36), v4, &qword_27DA38898, &qword_22DECBB28);
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_22DDEF284(v4, &qword_27DA38898, &qword_22DECBB28);
  return v7;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData.clearDismissAction()()
{
  v1 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData(0) + 36);
  sub_22DDEF284(v0 + v1, &qword_27DA38898, &qword_22DECBB28);
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction.action.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction(0);
  sub_22DDF0028(v1 + *(v7 + 20), v6, &qword_27DA37D80, &unk_22DEC7960);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22DE6B268(v6, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  *(a1 + *(v8 + 20)) = 7;
  v10 = *(v8 + 24);
  v11 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22DDEF284(v6, &qword_27DA37D80, &unk_22DEC7960);
  }

  return result;
}

uint64_t sub_22DE72B18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction(0);
  sub_22DDF0028(a1 + *(v8 + 20), v7, &qword_27DA37D80, &unk_22DEC7960);
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_22DE6B268(v7, a2, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  *(a2 + *(v9 + 20)) = 7;
  v11 = *(v9 + 24);
  v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData(0);
  (*(*(v12 - 8) + 56))(a2 + v11, 1, 1, v12);
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_22DDEF284(v7, &qword_27DA37D80, &unk_22DEC7960);
  }

  return result;
}

uint64_t sub_22DE72CC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DE73990(a1, v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  v9 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction(0) + 20);
  sub_22DDEF284(a2 + v9, &qword_27DA37D80, &unk_22DEC7960);
  sub_22DE6B268(v8, a2 + v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction.action.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction(0) + 20);
  sub_22DDEF284(v1 + v3, &qword_27DA37D80, &unk_22DEC7960);
  sub_22DE6B268(a1, v1 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction.action.modify(void *a1))(uint64_t **, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction(0) + 20);
  *(v5 + 12) = v15;
  sub_22DDF0028(v1 + v15, v8, &qword_27DA37D80, &unk_22DEC7960);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    *(v14 + *(v9 + 20)) = 7;
    v17 = *(v9 + 24);
    v18 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    if (v16(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA37D80, &unk_22DEC7960);
    }
  }

  else
  {
    sub_22DE6B268(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  }

  return sub_22DE81CA0;
}

BOOL sub_22DE73144(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0);
  sub_22DDF0028(v4 + *(v13 + 20), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  sub_22DDEF284(v12, a1, a2);
  return v15;
}

uint64_t sub_22DE7327C(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 20);
  sub_22DDEF284(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t sub_22DE73348()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA38760);
  __swift_project_value_buffer(v0, qword_27DA38760);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC7C40;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "CC_BANNER";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "CC_DEVICE";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "CC_PROMO";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "CC_LINK";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "CC_TEXT";
  *(v15 + 8) = 7;
  *(v15 + 16) = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t sub_22DE73678()
{
  v0 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CCRequestP33_2E671CB3414F520C2731BDA23B038D1C13_StorageClass__meta;
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CCRequestP33_2E671CB3414F520C2731BDA23B038D1C13_StorageClass__common;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  result = (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  qword_27DA38790 = v3;
  return result;
}

uint64_t sub_22DE73744(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A40, &unk_22DEC7330);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CCRequestP33_2E671CB3414F520C2731BDA23B038D1C13_StorageClass__meta;
  v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CCRequestP33_2E671CB3414F520C2731BDA23B038D1C13_StorageClass__common;
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  (*(*(v14 - 8) + 56))(v1 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CCRequestP33_2E671CB3414F520C2731BDA23B038D1C13_StorageClass__meta;
  swift_beginAccess();
  sub_22DDF0028(a1 + v15, v10, &qword_27DA37A38, &unk_22DEC6570);
  swift_beginAccess();
  sub_22DDF0208(v10, v1 + v11, &qword_27DA37A38, &unk_22DEC6570);
  swift_endAccess();
  v16 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CCRequestP33_2E671CB3414F520C2731BDA23B038D1C13_StorageClass__common;
  swift_beginAccess();
  sub_22DDF0028(a1 + v16, v6, &qword_27DA37A40, &unk_22DEC7330);

  swift_beginAccess();
  sub_22DDF0208(v6, v1 + v13, &qword_27DA37A40, &unk_22DEC7330);
  swift_endAccess();
  return v1;
}

uint64_t sub_22DE73990(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22DE739F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22DE73B58()
{
  sub_22DDEF284(v0 + OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CCRequestP33_2E671CB3414F520C2731BDA23B038D1C13_StorageClass__meta, &qword_27DA37A38, &unk_22DEC6570);
  sub_22DDEF284(v0 + OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CCRequestP33_2E671CB3414F520C2731BDA23B038D1C13_StorageClass__common, &qword_27DA37A40, &unk_22DEC7330);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCRequest.decodeMessage<A>(decoder:)()
{
  v1 = v0;
  v2 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = *(v0 + v2);
    v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    *(v1 + v2) = sub_22DE73744(v6);
  }

  return sub_22DE73C94();
}

uint64_t sub_22DE73C94()
{
  while (1)
  {
    result = sub_22DEC4954();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_22DE73D28();
    }

    else if (result == 2)
    {
      sub_22DE73E04();
    }
  }

  return result;
}

uint64_t sub_22DE73D28()
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  sub_22DE800BC(&qword_28145C748, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  sub_22DEC49E4();
  return swift_endAccess();
}

uint64_t sub_22DE73E04()
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  sub_22DE800BC(&qword_28145B690, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
  sub_22DEC49E4();
  return swift_endAccess();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest(0);
  result = sub_22DE73F4C(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE73F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_22DE73F9C(a1, a2, a3, a4);
  if (!v4)
  {
    return sub_22DE741C4(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_22DE73F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CCRequestP33_2E671CB3414F520C2731BDA23B038D1C13_StorageClass__meta;
  swift_beginAccess();
  sub_22DDF0028(a1 + v14, v8, &qword_27DA37A38, &unk_22DEC6570);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22DDEF284(v8, &qword_27DA37A38, &unk_22DEC6570);
  }

  sub_22DE6B268(v8, v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  sub_22DE800BC(&qword_28145C748, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  sub_22DEC4AD4();
  return sub_22DE739F8(v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
}

uint64_t sub_22DE741C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A40, &unk_22DEC7330);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CCRequestP33_2E671CB3414F520C2731BDA23B038D1C13_StorageClass__common;
  swift_beginAccess();
  sub_22DDF0028(a1 + v14, v8, &qword_27DA37A40, &unk_22DEC7330);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22DDEF284(v8, &qword_27DA37A40, &unk_22DEC7330);
  }

  sub_22DE6B268(v8, v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
  sub_22DE800BC(&qword_28145B690, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
  sub_22DEC4AD4();
  return sub_22DE739F8(v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
}

BOOL sub_22DE743F0(uint64_t a1, uint64_t a2)
{
  v60 = a2;
  v3 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  v56 = *(v3 - 8);
  v57 = v3;
  v4 = *(v56 + 64);
  MEMORY[0x28223BE20](v3);
  v51 = (&v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38360, &unk_22DECCF70);
  v6 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v58 = &v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A40, &unk_22DEC7330);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v52 = (&v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v55 = &v50 - v12;
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v53 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38368, &qword_22DECA2B0);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v50 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v59 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v50 - v26;
  v28 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CCRequestP33_2E671CB3414F520C2731BDA23B038D1C13_StorageClass__meta;
  swift_beginAccess();
  v29 = a1 + v28;
  v30 = v60;
  sub_22DDF0028(v29, v27, &qword_27DA37A38, &unk_22DEC6570);
  v31 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CCRequestP33_2E671CB3414F520C2731BDA23B038D1C13_StorageClass__meta;
  swift_beginAccess();
  v32 = *(v18 + 56);
  sub_22DDF0028(v27, v21, &qword_27DA37A38, &unk_22DEC6570);
  sub_22DDF0028(v30 + v31, &v21[v32], &qword_27DA37A38, &unk_22DEC6570);
  v33 = *(v14 + 48);
  if (v33(v21, 1, v13) != 1)
  {
    v35 = a1;
    v36 = v59;
    sub_22DDF0028(v21, v59, &qword_27DA37A38, &unk_22DEC6570);
    if (v33(&v21[v32], 1, v13) != 1)
    {
      v37 = v53;
      sub_22DE6B268(&v21[v32], v53, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);

      v38 = _s6NDOAPI39Com_Apple_Sse_Ocean_Ndo_Api_RequestMetaV2eeoiySbAC_ACtFZ_0(v36, v37);
      sub_22DE739F8(v37, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
      sub_22DDEF284(v27, &qword_27DA37A38, &unk_22DEC6570);
      v34 = v35;
      sub_22DE739F8(v36, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
      sub_22DDEF284(v21, &qword_27DA37A38, &unk_22DEC6570);
      if (v38)
      {
        goto LABEL_9;
      }

LABEL_7:

      return 0;
    }

    sub_22DDEF284(v27, &qword_27DA37A38, &unk_22DEC6570);
    sub_22DE739F8(v36, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
LABEL_6:
    sub_22DDEF284(v21, &qword_27DA38368, &qword_22DECA2B0);
    goto LABEL_7;
  }

  sub_22DDEF284(v27, &qword_27DA37A38, &unk_22DEC6570);
  v34 = a1;
  if (v33(&v21[v32], 1, v13) != 1)
  {
    goto LABEL_6;
  }

  sub_22DDEF284(v21, &qword_27DA37A38, &unk_22DEC6570);
LABEL_9:
  v39 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CCRequestP33_2E671CB3414F520C2731BDA23B038D1C13_StorageClass__common;
  swift_beginAccess();
  v40 = v55;
  sub_22DDF0028(v34 + v39, v55, &qword_27DA37A40, &unk_22DEC7330);
  v41 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CCRequestP33_2E671CB3414F520C2731BDA23B038D1C13_StorageClass__common;
  swift_beginAccess();
  v42 = *(v54 + 48);
  v43 = v58;
  sub_22DDF0028(v40, v58, &qword_27DA37A40, &unk_22DEC7330);
  sub_22DDF0028(v30 + v41, v43 + v42, &qword_27DA37A40, &unk_22DEC7330);
  v44 = v57;
  v45 = *(v56 + 48);
  if (v45(v43, 1, v57) == 1)
  {

    sub_22DDEF284(v40, &qword_27DA37A40, &unk_22DEC7330);
    if (v45(v43 + v42, 1, v44) == 1)
    {
      sub_22DDEF284(v43, &qword_27DA37A40, &unk_22DEC7330);
      return 1;
    }

    goto LABEL_14;
  }

  v46 = v52;
  sub_22DDF0028(v43, v52, &qword_27DA37A40, &unk_22DEC7330);
  if (v45(v43 + v42, 1, v44) == 1)
  {

    sub_22DDEF284(v40, &qword_27DA37A40, &unk_22DEC7330);
    sub_22DE739F8(v46, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
LABEL_14:
    sub_22DDEF284(v43, &qword_27DA38360, &unk_22DECCF70);
    return 0;
  }

  v48 = v51;
  sub_22DE6B268(v43 + v42, v51, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
  v49 = _s6NDOAPI45Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBodyV2eeoiySbAC_ACtFZ_0(v46, v48);

  sub_22DE739F8(v48, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
  sub_22DDEF284(v40, &qword_27DA37A40, &unk_22DEC7330);
  sub_22DE739F8(v46, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
  sub_22DDEF284(v43, &qword_27DA37A40, &unk_22DEC7330);
  return (v49 & 1) != 0;
}

uint64_t sub_22DE74BF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v4 = *(a1 + 20);
  if (qword_27DA37820 != -1)
  {
    swift_once();
  }

  *(a2 + v4) = qword_27DA38790;
}

uint64_t sub_22DE74CB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE800BC(&qword_27DA38B68, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE74D54(uint64_t a1)
{
  v2 = sub_22DE800BC(&qword_27DA38938, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE74DC0()
{
  sub_22DE800BC(&qword_27DA38938, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest);

  return sub_22DEC4A44();
}

uint64_t sub_22DE74E74(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_22DEC81D0;
  v10 = (v9 + v8);
  v11 = v9 + v8 + v6[14];
  *v10 = 1;
  *v11 = "meta";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x277D21870];
  v13 = sub_22DEC4AE4();
  v14 = *(*(v13 - 8) + 104);
  (v14)(v11, v12, v13);
  v15 = v10 + v7 + v6[14];
  *(v10 + v7) = 2;
  *v15 = a3;
  *(v15 + 1) = a4;
  v15[16] = 2;
  v14();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCResponse.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_22DEC4954();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_22DE750EC();
    }

    else if (result == 2)
    {
      sub_22DE751A0();
    }
  }

  return result;
}

uint64_t sub_22DE750EC()
{
  v0 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse(0) + 20);
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  sub_22DE800BC(&qword_28145C498, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  return sub_22DEC49E4();
}

uint64_t sub_22DE751A0()
{
  v0 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse(0) + 24);
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse(0);
  sub_22DE800BC(&qword_27DA37DC8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse);
  return sub_22DEC49E4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DE752C4(v3, a1, a2, a3);
  if (!v4)
  {
    sub_22DE754E0(v3, a1, a2, a3);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE752C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38088, &unk_22DEC8220);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse(0);
  sub_22DDF0028(a1 + *(v14 + 20), v8, &qword_27DA38088, &unk_22DEC8220);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22DDEF284(v8, &qword_27DA38088, &unk_22DEC8220);
  }

  sub_22DE6B268(v8, v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  sub_22DE800BC(&qword_28145C498, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  sub_22DEC4AD4();
  return sub_22DE739F8(v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
}

uint64_t sub_22DE754E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37DD0, &qword_22DECBB20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse(0);
  sub_22DDF0028(a1 + *(v14 + 24), v8, &qword_27DA37DD0, &qword_22DECBB20);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22DDEF284(v8, &qword_27DA37DD0, &qword_22DECBB20);
  }

  sub_22DE6B268(v8, v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse);
  sub_22DE800BC(&qword_27DA37DC8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse);
  sub_22DEC4AD4();
  return sub_22DE739F8(v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse);
}

uint64_t sub_22DE75748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_22DE75858(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE800BC(&qword_27DA38B60, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE758F8(uint64_t a1)
{
  v2 = sub_22DE800BC(&qword_27DA37DD8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE75964()
{
  sub_22DE800BC(&qword_27DA37DD8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse);

  return sub_22DEC4A44();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse.decodeMessage<A>(decoder:)()
{
  result = sub_22DEC4954();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection(0);
        sub_22DE800BC(&qword_27DA388B0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection);
        sub_22DEC49D4();
      }

      result = sub_22DEC4954();
    }
  }

  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection(0), sub_22DE800BC(&qword_27DA388B0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection), result = sub_22DEC4AC4(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse(0) + 20);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t static Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_22DE2F278(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse(0) + 20);
  sub_22DEC48B4();
  sub_22DE800BC(&qword_27DA37B30, MEMORY[0x277D216C8]);
  return sub_22DEC4BF4() & 1;
}

uint64_t sub_22DE75D40(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE800BC(&qword_27DA38B58, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE75DE0(uint64_t a1)
{
  v2 = sub_22DE800BC(&qword_27DA37DC8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE75E4C()
{
  sub_22DE800BC(&qword_27DA37DC8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse);

  return sub_22DEC4A44();
}

uint64_t sub_22DE75EC8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_22DE2F278(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_22DEC48B4();
  sub_22DE800BC(&qword_27DA37B30, MEMORY[0x277D216C8]);
  return sub_22DEC4BF4() & 1;
}

uint64_t sub_22DE75F8C()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA387C8);
  __swift_project_value_buffer(v0, qword_27DA387C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_22DECB020;
  v4 = v20 + v3;
  v5 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v5 = "header";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_22DEC4AE4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "is_expandable";
  *(v9 + 8) = 13;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x277D21888];
  v8();
  v11 = (v4 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "expand_threshold";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v8();
  v13 = (v4 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "items";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v8();
  v15 = (v4 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "expand_label";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v8();
  v17 = (v4 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "footer";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v8();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCSection.decodeMessage<A>(decoder:)()
{
  result = sub_22DEC4954();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 3)
      {
        switch(result)
        {
          case 4:
            type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem(0);
            sub_22DE800BC(&qword_27DA388C0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem);
            sub_22DEC49D4();
            break;
          case 5:
            v3 = v0;
            v8 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection(0) + 36);
            goto LABEL_5;
          case 6:
            v3 = v0;
            v6 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection(0) + 40);
            goto LABEL_5;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            v3 = v0;
            v4 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection(0) + 24);
LABEL_5:
            v0 = v3;
            sub_22DEC49C4();
            break;
          case 2:
            v7 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection(0) + 28);
            sub_22DEC4974();
            break;
          case 3:
            v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection(0) + 32);
            sub_22DEC4994();
            break;
        }
      }

      result = sub_22DEC4954();
    }
  }

  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCSection.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_22DE7A3B8(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection);
  if (!v4)
  {
    sub_22DE765E8(v3);
    sub_22DE76660(v3);
    v10 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem(0);
      sub_22DE800BC(&qword_27DA388C0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem);
      sub_22DEC4AC4();
    }

    sub_22DE7B750(v5, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection);
    sub_22DE7B7CC(v5, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection);
    v11 = v5 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection(0) + 20);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE765E8(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection(0);
  if (*(a1 + *(result + 28)) != 2)
  {
    return sub_22DEC4A64();
  }

  return result;
}

uint64_t sub_22DE76660(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection(0);
  v3 = (a1 + *(result + 32));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_22DEC4A84();
  }

  return result;
}

uint64_t sub_22DE76724@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v4 = a2 + a1[5];
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v6 = a1[7];
  v7 = (a2 + a1[6]);
  *v7 = 0;
  v7[1] = 0;
  *(a2 + v6) = 2;
  v8 = a1[9];
  v9 = a2 + a1[8];
  v9[4] = 1;
  *v9 = 0;
  v10 = (a2 + v8);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a2 + a1[10]);
  *v11 = 0;
  v11[1] = 0;
  return result;
}

uint64_t sub_22DE767E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE800BC(&qword_27DA38B50, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE76888(uint64_t a1)
{
  v2 = sub_22DE800BC(&qword_27DA388B0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE768F4()
{
  sub_22DE800BC(&qword_27DA388B0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection);

  return sub_22DEC4A44();
}

uint64_t sub_22DE76990()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA387E0);
  __swift_project_value_buffer(v0, qword_27DA387E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_22DECB020;
  v4 = v19 + v3 + v1[14];
  *(v19 + v3) = 1;
  *v4 = "type";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_22DEC4AE4();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v19 + v3 + v2 + v1[14];
  *(v19 + v3 + v2) = 2;
  *v8 = "cc_banner_data";
  *(v8 + 8) = 14;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x277D21888];
  v7();
  v10 = (v19 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "cc_device_data";
  *(v11 + 1) = 14;
  v11[16] = 2;
  v7();
  v12 = (v19 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "link_data";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v7();
  v14 = (v19 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "cc_promo_data";
  *(v15 + 1) = 13;
  v15[16] = 2;
  v7();
  v16 = (v19 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "cc_text_data";
  *(v17 + 1) = 12;
  v17[16] = 2;
  v7();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCItem.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_22DEC4954();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          sub_22DE77990(v5, a1, a2, a3);
          break;
        case 5:
          sub_22DE77F4C(v5, a1, a2, a3);
          break;
        case 6:
          sub_22DE78508(v5, a1, a2, a3);
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          sub_22DE76DB0();
          break;
        case 2:
          sub_22DE76E24(v5, a1, a2, a3);
          break;
        case 3:
          sub_22DE773D4(v5, a1, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_22DE76DB0()
{
  v0 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem(0) + 24);
  sub_22DE81C44();
  return sub_22DEC4984();
}

uint64_t sub_22DE76E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F48, &qword_22DEC8170);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38B78, &qword_22DECCF40);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_22DDF0028(a1, v14, &qword_27DA37F48, &qword_22DEC8170);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_22DDEF284(v14, &qword_27DA37F48, &qword_22DEC8170);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_22DE6B268(v14, v22, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
    sub_22DE6B268(v22, v20, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_22DE739F8(v20, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
      v33 = v48;
    }

    else
    {
      sub_22DDEF284(v28, &qword_27DA38B78, &qword_22DECCF40);
      v35 = v43;
      sub_22DE6B268(v20, v43, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData);
      sub_22DE6B268(v35, v28, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_22DE800BC(&qword_27DA389A8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData);
  v37 = v47;
  sub_22DEC49E4();
  if (v37)
  {
    return sub_22DDEF284(v28, &qword_27DA38B78, &qword_22DECCF40);
  }

  sub_22DDF0028(v28, v36, &qword_27DA38B78, &qword_22DECCF40);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_22DDEF284(v28, &qword_27DA38B78, &qword_22DECCF40);
    return sub_22DDEF284(v36, &qword_27DA38B78, &qword_22DECCF40);
  }

  else
  {
    v39 = v44;
    sub_22DE6B268(v36, v44, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData);
    if (v32 != 1)
    {
      sub_22DEC4964();
    }

    sub_22DDEF284(v28, &qword_27DA38B78, &qword_22DECCF40);
    v40 = v42;
    sub_22DDEF284(v42, &qword_27DA37F48, &qword_22DEC8170);
    sub_22DE6B268(v39, v40, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_22DE773D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F48, &qword_22DEC8170);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38B80, &qword_22DECCF48);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_22DDF0028(a1, v14, &qword_27DA37F48, &qword_22DEC8170);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_22DDEF284(v14, &qword_27DA37F48, &qword_22DEC8170);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_22DE6B268(v14, v22, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
    sub_22DE6B268(v22, v20, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22DDEF284(v28, &qword_27DA38B80, &qword_22DECCF48);
      v35 = v44;
      sub_22DE6B268(v20, v44, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData);
      sub_22DE6B268(v35, v28, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_22DE739F8(v20, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_22DE800BC(&qword_27DA389D8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData);
  v37 = v47;
  sub_22DEC49E4();
  if (v37)
  {
    return sub_22DDEF284(v28, &qword_27DA38B80, &qword_22DECCF48);
  }

  sub_22DDF0028(v28, v36, &qword_27DA38B80, &qword_22DECCF48);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_22DDEF284(v28, &qword_27DA38B80, &qword_22DECCF48);
    return sub_22DDEF284(v36, &qword_27DA38B80, &qword_22DECCF48);
  }

  else
  {
    v39 = v43;
    sub_22DE6B268(v36, v43, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData);
    if (v32 != 1)
    {
      sub_22DEC4964();
    }

    sub_22DDEF284(v28, &qword_27DA38B80, &qword_22DECCF48);
    v40 = v42;
    sub_22DDEF284(v42, &qword_27DA37F48, &qword_22DEC8170);
    sub_22DE6B268(v39, v40, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_22DE77990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F48, &qword_22DEC8170);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_22DDF0028(a1, v14, &qword_27DA37F48, &qword_22DEC8170);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_22DDEF284(v14, &qword_27DA37F48, &qword_22DEC8170);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_22DE6B268(v14, v22, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
    sub_22DE6B268(v22, v20, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22DDEF284(v28, &qword_27DA37D88, &unk_22DEC8210);
      v35 = v44;
      sub_22DE6B268(v20, v44, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
      sub_22DE6B268(v35, v28, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_22DE739F8(v20, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_22DE800BC(&qword_28145D7E0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  v37 = v47;
  sub_22DEC49E4();
  if (v37)
  {
    return sub_22DDEF284(v28, &qword_27DA37D88, &unk_22DEC8210);
  }

  sub_22DDF0028(v28, v36, &qword_27DA37D88, &unk_22DEC8210);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_22DDEF284(v28, &qword_27DA37D88, &unk_22DEC8210);
    return sub_22DDEF284(v36, &qword_27DA37D88, &unk_22DEC8210);
  }

  else
  {
    v39 = v43;
    sub_22DE6B268(v36, v43, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    if (v32 != 1)
    {
      sub_22DEC4964();
    }

    sub_22DDEF284(v28, &qword_27DA37D88, &unk_22DEC8210);
    v40 = v42;
    sub_22DDEF284(v42, &qword_27DA37F48, &qword_22DEC8170);
    sub_22DE6B268(v39, v40, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_22DE77F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F48, &qword_22DEC8170);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38B88, &qword_22DECCF50);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_22DDF0028(a1, v14, &qword_27DA37F48, &qword_22DEC8170);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_22DDEF284(v14, &qword_27DA37F48, &qword_22DEC8170);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_22DE6B268(v14, v22, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
    sub_22DE6B268(v22, v20, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_22DDEF284(v28, &qword_27DA38B88, &qword_22DECCF50);
      v35 = v44;
      sub_22DE6B268(v20, v44, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData);
      sub_22DE6B268(v35, v28, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_22DE739F8(v20, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_22DE800BC(&qword_27DA389F0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData);
  v37 = v47;
  sub_22DEC49E4();
  if (v37)
  {
    return sub_22DDEF284(v28, &qword_27DA38B88, &qword_22DECCF50);
  }

  sub_22DDF0028(v28, v36, &qword_27DA38B88, &qword_22DECCF50);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_22DDEF284(v28, &qword_27DA38B88, &qword_22DECCF50);
    return sub_22DDEF284(v36, &qword_27DA38B88, &qword_22DECCF50);
  }

  else
  {
    v39 = v43;
    sub_22DE6B268(v36, v43, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData);
    if (v32 != 1)
    {
      sub_22DEC4964();
    }

    sub_22DDEF284(v28, &qword_27DA38B88, &qword_22DECCF50);
    v40 = v42;
    sub_22DDEF284(v42, &qword_27DA37F48, &qword_22DEC8170);
    sub_22DE6B268(v39, v40, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_22DE78508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F48, &qword_22DEC8170);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38B90, &qword_22DECCF58);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_22DDF0028(a1, v14, &qword_27DA37F48, &qword_22DEC8170);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_22DDEF284(v14, &qword_27DA37F48, &qword_22DEC8170);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_22DE6B268(v14, v22, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
    sub_22DE6B268(v22, v20, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_22DDEF284(v28, &qword_27DA38B90, &qword_22DECCF58);
      v35 = v44;
      sub_22DE6B268(v20, v44, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData);
      sub_22DE6B268(v35, v28, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_22DE739F8(v20, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_22DE800BC(&qword_27DA38990, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData);
  v37 = v47;
  sub_22DEC49E4();
  if (v37)
  {
    return sub_22DDEF284(v28, &qword_27DA38B90, &qword_22DECCF58);
  }

  sub_22DDF0028(v28, v36, &qword_27DA38B90, &qword_22DECCF58);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_22DDEF284(v28, &qword_27DA38B90, &qword_22DECCF58);
    return sub_22DDEF284(v36, &qword_27DA38B90, &qword_22DECCF58);
  }

  else
  {
    v39 = v43;
    sub_22DE6B268(v36, v43, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData);
    if (v32 != 1)
    {
      sub_22DEC4964();
    }

    sub_22DDEF284(v28, &qword_27DA38B90, &qword_22DECCF58);
    v40 = v42;
    sub_22DDEF284(v42, &qword_27DA37F48, &qword_22DEC8170);
    sub_22DE6B268(v39, v40, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCItem.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F48, &qword_22DEC8170);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  result = sub_22DE78CDC(v3);
  if (!v4)
  {
    sub_22DDF0028(v3, v11, &qword_27DA37F48, &qword_22DEC8170);
    v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data(0);
    if ((*(*(v13 - 8) + 48))(v11, 1, v13) != 1)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          sub_22DE78F9C(v3, a1, a2, a3);
        }

        else
        {
          sub_22DE78D68(v3, a1, a2, a3);
        }
      }

      else if (EnumCaseMultiPayload == 2)
      {
        sub_22DE791D4(v3, a1, a2, a3);
      }

      else if (EnumCaseMultiPayload == 3)
      {
        sub_22DE7940C(v3, a1, a2, a3);
      }

      else
      {
        sub_22DE79644(v3, a1, a2, a3);
      }

      sub_22DE739F8(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
    }

    v15 = v3 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem(0) + 20);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE78CDC(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem(0);
  if (*(a1 + *(result + 24)) != 5)
  {
    v3 = *(a1 + *(result + 24));
    sub_22DE81C44();
    return sub_22DEC4A74();
  }

  return result;
}

uint64_t sub_22DE78D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F48, &qword_22DEC8170);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DDF0028(a1, v8, &qword_27DA37F48, &qword_22DEC8170);
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_22DDEF284(v8, &qword_27DA37F48, &qword_22DEC8170);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_22DE6B268(v8, v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData);
    sub_22DE800BC(&qword_27DA389A8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData);
    sub_22DEC4AD4();
    return sub_22DE739F8(v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData);
  }

  result = sub_22DE739F8(v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
  __break(1u);
  return result;
}

uint64_t sub_22DE78F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F48, &qword_22DEC8170);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DDF0028(a1, v8, &qword_27DA37F48, &qword_22DEC8170);
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_22DDEF284(v8, &qword_27DA37F48, &qword_22DEC8170);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22DE6B268(v8, v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData);
    sub_22DE800BC(&qword_27DA389D8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData);
    sub_22DEC4AD4();
    return sub_22DE739F8(v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData);
  }

  result = sub_22DE739F8(v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
  __break(1u);
  return result;
}

uint64_t sub_22DE791D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F48, &qword_22DEC8170);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DDF0028(a1, v8, &qword_27DA37F48, &qword_22DEC8170);
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_22DDEF284(v8, &qword_27DA37F48, &qword_22DEC8170);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_22DE6B268(v8, v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    sub_22DE800BC(&qword_28145D7E0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    sub_22DEC4AD4();
    return sub_22DE739F8(v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  }

  result = sub_22DE739F8(v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
  __break(1u);
  return result;
}

uint64_t sub_22DE7940C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F48, &qword_22DEC8170);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DDF0028(a1, v8, &qword_27DA37F48, &qword_22DEC8170);
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_22DDEF284(v8, &qword_27DA37F48, &qword_22DEC8170);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_22DE6B268(v8, v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData);
    sub_22DE800BC(&qword_27DA389F0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData);
    sub_22DEC4AD4();
    return sub_22DE739F8(v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData);
  }

  result = sub_22DE739F8(v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
  __break(1u);
  return result;
}

uint64_t sub_22DE79644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F48, &qword_22DEC8170);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DDF0028(a1, v8, &qword_27DA37F48, &qword_22DEC8170);
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_22DDEF284(v8, &qword_27DA37F48, &qword_22DEC8170);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_22DE6B268(v8, v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData);
    sub_22DE800BC(&qword_27DA38990, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData);
    sub_22DEC4AD4();
    return sub_22DE739F8(v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData);
  }

  result = sub_22DE739F8(v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
  __break(1u);
  return result;
}

uint64_t sub_22DE798C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a2 + *(a1 + 20);
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  *(a2 + *(a1 + 24)) = 5;
  return result;
}

uint64_t sub_22DE79990(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE800BC(&qword_27DA38B48, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE79A30(uint64_t a1)
{
  v2 = sub_22DE800BC(&qword_27DA388C0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE79A9C()
{
  sub_22DE800BC(&qword_27DA388C0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem);

  return sub_22DEC4A44();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCTextData.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_22DEC4954();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData(0) + 20);
      sub_22DEC49C4();
    }
  }

  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCTextData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DE7A334(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData);
  if (!v4)
  {
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE79D04(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE800BC(&qword_27DA38B40, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE79DA4(uint64_t a1)
{
  v2 = sub_22DE800BC(&qword_27DA38990, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE79E10()
{
  sub_22DE800BC(&qword_27DA38990, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData);

  return sub_22DEC4A44();
}

uint64_t sub_22DE79EAC()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA38810);
  __swift_project_value_buffer(v0, qword_27DA38810);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC7570;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 2;
  *v6 = "logo_url";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "title";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x277D21870];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "sub_title";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "link";
  *(v15 + 1) = 4;
  v15[16] = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_22DEC4954();
    if (v4 || (v11 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      if (result == 4)
      {
        v9 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData(0) + 28);
        goto LABEL_3;
      }

      if (result == 5)
      {
        sub_22DE7C138(a1, v5, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData);
      }
    }

    else if (result == 2)
    {
      v13 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData(0) + 20);
LABEL_3:
      v4 = 0;
      sub_22DEC49C4();
    }

    else if (result == 3)
    {
      v12 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData(0) + 24);
      goto LABEL_3;
    }
  }
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DE7A334(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData);
  if (!v4)
  {
    sub_22DE7A3B8(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData);
    sub_22DE7B654(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData);
    sub_22DE7C3BC(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData, 5);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE7A334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 20));
  if (v7[1])
  {
    v8 = *v7;
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE7A3B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 24));
  if (v7[1])
  {
    v8 = *v7;
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE7A484@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v4 = a1[6];
  v5 = (a2 + a1[5]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a2 + v4);
  *v6 = 0;
  v6[1] = 0;
  v7 = a1[7];
  v8 = a1[8];
  v9 = (a2 + v7);
  *v9 = 0;
  v9[1] = 0;
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a2 + v8, 1, 1, v10);
}

uint64_t sub_22DE7A564(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE800BC(&qword_27DA38B38, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE7A604(uint64_t a1)
{
  v2 = sub_22DE800BC(&qword_27DA389A8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE7A670()
{
  sub_22DE800BC(&qword_27DA389A8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData);

  return sub_22DEC4A44();
}

uint64_t sub_22DE7A70C()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA38828);
  __swift_project_value_buffer(v0, qword_27DA38828);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC81D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "label";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "action";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCBannerLink.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_22DEC4954();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v1 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerLink(0) + 20);
      sub_22DEC49C4();
    }

    else if (result == 2)
    {
      sub_22DE7A9A4();
    }
  }

  return result;
}

uint64_t sub_22DE7A9A4()
{
  v0 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerLink(0) + 24);
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  sub_22DE800BC(&qword_28145D410, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  return sub_22DEC49E4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCBannerLink.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DE7A334(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerLink);
  if (!v4)
  {
    sub_22DE7AAE0(v3, a1, a2, a3);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE7AAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerLink(0);
  sub_22DDF0028(a1 + *(v14 + 24), v8, &qword_27DA37D80, &unk_22DEC7960);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22DDEF284(v8, &qword_27DA37D80, &unk_22DEC7960);
  }

  sub_22DE6B268(v8, v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  sub_22DE800BC(&qword_28145D410, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  sub_22DEC4AD4();
  return sub_22DE739F8(v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
}

uint64_t sub_22DE7AD48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v4 = *(a1 + 20);
  v5 = *(a1 + 24);
  v6 = (a2 + v4);
  *v6 = 0;
  v6[1] = 0;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v5, 1, 1, v7);
}

uint64_t sub_22DE7AE14(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE800BC(&qword_27DA38B30, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerLink);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE7AEB4(uint64_t a1)
{
  v2 = sub_22DE800BC(&qword_27DA389C0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerLink);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE7AF20()
{
  sub_22DE800BC(&qword_27DA389C0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerLink);

  return sub_22DEC4A44();
}

uint64_t sub_22DE7AFBC()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA38840);
  __swift_project_value_buffer(v0, qword_27DA38840);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_22DEC81E0;
  v4 = v21 + v3 + v1[14];
  *(v21 + v3) = 1;
  *v4 = "image_url";
  *(v4 + 8) = 9;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21888];
  v6 = sub_22DEC4AE4();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v21 + v3 + v2 + v1[14];
  *(v21 + v3 + v2) = 2;
  *v8 = "fallback_symbol";
  *(v8 + 8) = 15;
  *(v8 + 16) = 2;
  v7();
  v9 = (v21 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "title";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v11 = *MEMORY[0x277D21870];
  v7();
  v12 = (v21 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "sub_title";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v7();
  v14 = (v21 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "cta_label";
  *(v15 + 1) = 9;
  v15[16] = 2;
  v7();
  v16 = (v21 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "serial_number";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v7();
  v18 = (v21 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "action";
  *(v19 + 1) = 6;
  v19[16] = 2;
  v7();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_22DEC4954();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result <= 3)
    {
      switch(result)
      {
        case 1:
          v1 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0) + 20);
          goto LABEL_3;
        case 2:
          v8 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0) + 24);
          goto LABEL_3;
        case 3:
          v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0) + 28);
          goto LABEL_3;
      }
    }

    else if (result > 5)
    {
      if (result == 6)
      {
        v7 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0) + 40);
        goto LABEL_3;
      }

      if (result == 7)
      {
        sub_22DE7B448();
      }
    }

    else
    {
      if (result == 4)
      {
        v6 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0) + 32);
      }

      else
      {
        v4 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0) + 36);
      }

LABEL_3:
      v0 = 0;
      sub_22DEC49C4();
    }
  }
}

uint64_t sub_22DE7B448()
{
  v0 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0) + 44);
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  sub_22DE800BC(&qword_28145D410, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  return sub_22DEC49E4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DE7A334(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData);
  if (!v4)
  {
    sub_22DE7A3B8(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData);
    sub_22DE7B654(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData);
    sub_22DE7B6D8(v3);
    sub_22DE7B750(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData);
    sub_22DE7B7CC(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData);
    sub_22DE7B848(v3, a1, a2, a3);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE7B654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 28));
  if (v7[1])
  {
    v8 = *v7;
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE7B6D8(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0);
  v3 = (a1 + *(result + 32));
  if (v3[1])
  {
    v4 = *v3;
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE7B750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 36));
  if (v7[1])
  {
    v8 = *v7;
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE7B7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 40));
  if (v7[1])
  {
    v8 = *v7;
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE7B848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0);
  sub_22DDF0028(a1 + *(v14 + 44), v8, &qword_27DA37D80, &unk_22DEC7960);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22DDEF284(v8, &qword_27DA37D80, &unk_22DEC7960);
  }

  sub_22DE6B268(v8, v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  sub_22DE800BC(&qword_28145D410, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  sub_22DEC4AD4();
  return sub_22DE739F8(v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
}

uint64_t sub_22DE7BAAC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v4 = a1[6];
  v5 = (a2 + a1[5]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a2 + v4);
  *v6 = 0;
  v6[1] = 0;
  v7 = a1[8];
  v8 = (a2 + a1[7]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a2 + v7);
  *v9 = 0;
  v9[1] = 0;
  v10 = a1[10];
  v11 = (a2 + a1[9]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a2 + v10);
  *v12 = 0;
  v12[1] = 0;
  v13 = a1[11];
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v15 = *(*(v14 - 8) + 56);

  return v15(a2 + v13, 1, 1, v14);
}

uint64_t sub_22DE7BBAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE800BC(&qword_27DA38B28, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE7BC4C(uint64_t a1)
{
  v2 = sub_22DE800BC(&qword_27DA389D8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE7BCB8()
{
  sub_22DE800BC(&qword_27DA389D8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData);

  return sub_22DEC4A44();
}

uint64_t sub_22DE7BD54()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA38858);
  __swift_project_value_buffer(v0, qword_27DA38858);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_22DEC7C40;
  v4 = v17 + v3;
  v5 = v17 + v3 + v1[14];
  *(v17 + v3) = 1;
  *v5 = "logo_url";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_22DEC4AE4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "title";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x277D21870];
  v8();
  v11 = (v4 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "sub_title";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v8();
  v13 = (v4 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "link";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v8();
  v15 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v15 = "dismiss_action";
  *(v15 + 8) = 14;
  *(v15 + 16) = 2;
  v8();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_22DEC4954();
    if (v4 || (v11 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        v13 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData(0) + 20);
LABEL_3:
        v4 = 0;
        sub_22DEC49C4();
      }

      else if (result == 2)
      {
        v12 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData(0) + 24);
        goto LABEL_3;
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          v9 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData(0) + 28);
          goto LABEL_3;
        case 4:
          sub_22DE7C138(a1, v5, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData);
          break;
        case 5:
          sub_22DE7C1F0();
          break;
      }
    }
  }
}

uint64_t sub_22DE7C138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *(a5(0) + 32);
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  sub_22DE800BC(&qword_28145D7E0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  return sub_22DEC49E4();
}

uint64_t sub_22DE7C1F0()
{
  v0 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData(0) + 36);
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction(0);
  sub_22DE800BC(&qword_27DA38A08, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction);
  return sub_22DEC49E4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DE7A334(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData);
  if (!v4)
  {
    sub_22DE7A3B8(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData);
    sub_22DE7B654(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData);
    sub_22DE7C3BC(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData, 4);
    sub_22DE7C5E0(v3, a1, a2, a3);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE7C3BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v19[2] = a6;
  v19[3] = a3;
  v19[5] = a4;
  v19[1] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v19 - v10;
  v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a5(0);
  sub_22DDF0028(a1 + *(v17 + 32), v11, &qword_27DA37D88, &unk_22DEC8210);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_22DDEF284(v11, &qword_27DA37D88, &unk_22DEC8210);
  }

  sub_22DE6B268(v11, v16, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  sub_22DE800BC(&qword_28145D7E0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  sub_22DEC4AD4();
  return sub_22DE739F8(v16, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
}

uint64_t sub_22DE7C5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38898, &qword_22DECBB28);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData(0);
  sub_22DDF0028(a1 + *(v14 + 36), v8, &qword_27DA38898, &qword_22DECBB28);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22DDEF284(v8, &qword_27DA38898, &qword_22DECBB28);
  }

  sub_22DE6B268(v8, v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction);
  sub_22DE800BC(&qword_27DA38A08, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction);
  sub_22DEC4AD4();
  return sub_22DE739F8(v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction);
}

uint64_t sub_22DE7C844@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v4 = a1[6];
  v5 = (a2 + a1[5]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a2 + v4);
  *v6 = 0;
  v6[1] = 0;
  v7 = a1[8];
  v8 = (a2 + a1[7]);
  *v8 = 0;
  v8[1] = 0;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  (*(*(v9 - 8) + 56))(a2 + v7, 1, 1, v9);
  v10 = a1[9];
  v11 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a2 + v10, 1, 1, v11);
}

uint64_t sub_22DE7C970(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE800BC(&qword_27DA38B20, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE7CA10(uint64_t a1)
{
  v2 = sub_22DE800BC(&qword_27DA389F0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE7CA7C()
{
  sub_22DE800BC(&qword_27DA389F0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData);

  return sub_22DEC4A44();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_22DEC4954();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_22DE7CBC8();
    }
  }

  return result;
}

uint64_t sub_22DE7CBC8()
{
  v0 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction(0) + 20);
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  sub_22DE800BC(&qword_28145D410, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  return sub_22DEC49E4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DE7CCD4(v3, a1, a2, a3);
  if (!v4)
  {
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE7CCD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction(0);
  sub_22DDF0028(a1 + *(v14 + 20), v8, &qword_27DA37D80, &unk_22DEC7960);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22DDEF284(v8, &qword_27DA37D80, &unk_22DEC7960);
  }

  sub_22DE6B268(v8, v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  sub_22DE800BC(&qword_28145D410, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  sub_22DEC4AD4();
  return sub_22DE739F8(v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
}

uint64_t sub_22DE7CF3C(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_22DEC5184();
  a1(0);
  sub_22DE800BC(a2, a3);
  sub_22DEC4BE4();
  return sub_22DEC51A4();
}

uint64_t sub_22DE7CFC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_22DE7D088(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE800BC(&qword_27DA38B18, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE7D128(uint64_t a1)
{
  v2 = sub_22DE800BC(&qword_27DA38A08, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE7D194()
{
  sub_22DE800BC(&qword_27DA38A08, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction);

  return sub_22DEC4A44();
}

uint64_t _s6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v70 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F30, &unk_22DECCF30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v70 - v15;
  v17 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0);
  v18 = v17[5];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_53;
    }

    if (*v19 != *v21 || v20 != v22)
    {
      v24 = v17;
      v25 = sub_22DEC50E4();
      v17 = v24;
      if ((v25 & 1) == 0)
      {
        goto LABEL_53;
      }
    }
  }

  else if (v22)
  {
    goto LABEL_53;
  }

  v26 = v17[6];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  v30 = v29[1];
  if (v28)
  {
    if (!v30)
    {
      goto LABEL_53;
    }

    if (*v27 != *v29 || v28 != v30)
    {
      v32 = v17;
      v33 = sub_22DEC50E4();
      v17 = v32;
      if ((v33 & 1) == 0)
      {
        goto LABEL_53;
      }
    }
  }

  else if (v30)
  {
    goto LABEL_53;
  }

  v34 = v17[7];
  v35 = (a1 + v34);
  v36 = *(a1 + v34 + 8);
  v37 = (a2 + v34);
  v38 = v37[1];
  if (v36)
  {
    if (!v38)
    {
      goto LABEL_53;
    }

    if (*v35 != *v37 || v36 != v38)
    {
      v39 = v17;
      v40 = sub_22DEC50E4();
      v17 = v39;
      if ((v40 & 1) == 0)
      {
        goto LABEL_53;
      }
    }
  }

  else if (v38)
  {
    goto LABEL_53;
  }

  v41 = v17[8];
  v42 = (a1 + v41);
  v43 = *(a1 + v41 + 8);
  v44 = (a2 + v41);
  v45 = v44[1];
  if (v43)
  {
    if (!v45)
    {
      goto LABEL_53;
    }

    if (*v42 != *v44 || v43 != v45)
    {
      v46 = v17;
      v47 = sub_22DEC50E4();
      v17 = v46;
      if ((v47 & 1) == 0)
      {
        goto LABEL_53;
      }
    }
  }

  else if (v45)
  {
    goto LABEL_53;
  }

  v48 = v17[9];
  v49 = (a1 + v48);
  v50 = *(a1 + v48 + 8);
  v51 = (a2 + v48);
  v52 = v51[1];
  if (v50)
  {
    if (!v52)
    {
      goto LABEL_53;
    }

    if (*v49 != *v51 || v50 != v52)
    {
      v53 = v17;
      v54 = sub_22DEC50E4();
      v17 = v53;
      if ((v54 & 1) == 0)
      {
        goto LABEL_53;
      }
    }
  }

  else if (v52)
  {
    goto LABEL_53;
  }

  v55 = v17[10];
  v56 = (a1 + v55);
  v57 = *(a1 + v55 + 8);
  v58 = (a2 + v55);
  v59 = v58[1];
  if (v57)
  {
    if (!v59)
    {
      goto LABEL_53;
    }

    if (*v56 != *v58 || v57 != v59)
    {
      v60 = v17;
      v61 = sub_22DEC50E4();
      v17 = v60;
      if ((v61 & 1) == 0)
      {
        goto LABEL_53;
      }
    }
  }

  else if (v59)
  {
    goto LABEL_53;
  }

  v62 = v17[11];
  v63 = *(v13 + 48);
  sub_22DDF0028(a1 + v62, v16, &qword_27DA37D80, &unk_22DEC7960);
  v64 = a2 + v62;
  v65 = v63;
  sub_22DDF0028(v64, &v16[v63], &qword_27DA37D80, &unk_22DEC7960);
  v66 = *(v5 + 48);
  if (v66(v16, 1, v4) == 1)
  {
    if (v66(&v16[v65], 1, v4) == 1)
    {
      sub_22DDEF284(v16, &qword_27DA37D80, &unk_22DEC7960);
LABEL_56:
      sub_22DEC48B4();
      sub_22DE800BC(&qword_27DA37B30, MEMORY[0x277D216C8]);
      v67 = sub_22DEC4BF4();
      return v67 & 1;
    }

    goto LABEL_52;
  }

  sub_22DDF0028(v16, v12, &qword_27DA37D80, &unk_22DEC7960);
  if (v66(&v16[v65], 1, v4) == 1)
  {
    sub_22DE739F8(v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
LABEL_52:
    sub_22DDEF284(v16, &qword_27DA37F30, &unk_22DECCF30);
    goto LABEL_53;
  }

  sub_22DE6B268(&v16[v65], v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  v69 = static Com_Apple_Sse_Ocean_Ndo_Api_CTAction.== infix(_:_:)(v12, v8);
  sub_22DE739F8(v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  sub_22DE739F8(v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  sub_22DDEF284(v16, &qword_27DA37D80, &unk_22DEC7960);
  if (v69)
  {
    goto LABEL_56;
  }

LABEL_53:
  v67 = 0;
  return v67 & 1;
}

uint64_t _s6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_CCBannerLinkV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F30, &unk_22DECCF30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v34 - v15;
  v17 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerLink(0);
  v18 = *(v17 + 20);
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_16;
    }

    if (*v19 != *v21 || v20 != v22)
    {
      v24 = v17;
      v25 = sub_22DEC50E4();
      v17 = v24;
      if ((v25 & 1) == 0)
      {
        goto LABEL_16;
      }
    }
  }

  else if (v22)
  {
    goto LABEL_16;
  }

  v26 = a1;
  v27 = a2;
  v28 = *(v17 + 24);
  v29 = *(v13 + 48);
  v34[1] = v26;
  sub_22DDF0028(v26 + v28, v16, &qword_27DA37D80, &unk_22DEC7960);
  sub_22DDF0028(v27 + v28, &v16[v29], &qword_27DA37D80, &unk_22DEC7960);
  v30 = *(v5 + 48);
  if (v30(v16, 1, v4) == 1)
  {
    if (v30(&v16[v29], 1, v4) == 1)
    {
      sub_22DDEF284(v16, &qword_27DA37D80, &unk_22DEC7960);
LABEL_19:
      sub_22DEC48B4();
      sub_22DE800BC(&qword_27DA37B30, MEMORY[0x277D216C8]);
      v31 = sub_22DEC4BF4();
      return v31 & 1;
    }

    goto LABEL_15;
  }

  sub_22DDF0028(v16, v12, &qword_27DA37D80, &unk_22DEC7960);
  if (v30(&v16[v29], 1, v4) == 1)
  {
    sub_22DE739F8(v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
LABEL_15:
    sub_22DDEF284(v16, &qword_27DA37F30, &unk_22DECCF30);
    goto LABEL_16;
  }

  sub_22DE6B268(&v16[v29], v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  v33 = static Com_Apple_Sse_Ocean_Ndo_Api_CTAction.== infix(_:_:)(v12, v8);
  sub_22DE739F8(v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  sub_22DE739F8(v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  sub_22DDEF284(v16, &qword_27DA37D80, &unk_22DEC7960);
  if (v33)
  {
    goto LABEL_19;
  }

LABEL_16:
  v31 = 0;
  return v31 & 1;
}

uint64_t _s6NDOAPI43Com_Apple_Sse_Ocean_Ndo_Api_CCDismissActionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v24[0] = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F30, &unk_22DECCF30);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v24 - v15;
  v17 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction(0) + 20);
  v18 = *(v13 + 56);
  v24[1] = a1;
  sub_22DDF0028(a1 + v17, v16, &qword_27DA37D80, &unk_22DEC7960);
  sub_22DDF0028(a2 + v17, &v16[v18], &qword_27DA37D80, &unk_22DEC7960);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_22DDEF284(v16, &qword_27DA37D80, &unk_22DEC7960);
LABEL_9:
      sub_22DEC48B4();
      sub_22DE800BC(&qword_27DA37B30, MEMORY[0x277D216C8]);
      v20 = sub_22DEC4BF4();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_22DDF0028(v16, v11, &qword_27DA37D80, &unk_22DEC7960);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_22DE739F8(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
LABEL_6:
    sub_22DDEF284(v16, &qword_27DA37F30, &unk_22DECCF30);
    goto LABEL_7;
  }

  v21 = v24[0];
  sub_22DE6B268(&v16[v18], v24[0], type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  v22 = static Com_Apple_Sse_Ocean_Ndo_Api_CTAction.== infix(_:_:)(v11, v21);
  sub_22DE739F8(v21, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  sub_22DE739F8(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  sub_22DDEF284(v16, &qword_27DA37D80, &unk_22DEC7960);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s6NDOAPI39Com_Apple_Sse_Ocean_Ndo_Api_CCPromoDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38898, &qword_22DECBB28);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v81 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38BA0, &unk_22DECCF80);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v81 - v15;
  v88 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v86 = *(v88 - 8);
  v17 = *(v86 + 64);
  MEMORY[0x28223BE20](v88);
  v85 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v87 = &v81 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38310, &unk_22DECA250);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v81 - v24;
  v26 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData(0);
  v27 = v26[5];
  v28 = (a1 + v27);
  v29 = *(a1 + v27 + 8);
  v30 = (a2 + v27);
  v31 = v30[1];
  if (v29)
  {
    if (!v31)
    {
      goto LABEL_36;
    }

    if (*v28 != *v30 || v29 != v31)
    {
      v84 = v25;
      v32 = v13;
      v33 = v5;
      v34 = v12;
      v35 = v4;
      v36 = a1;
      v37 = v16;
      v38 = a2;
      v39 = v8;
      v40 = v26;
      v41 = sub_22DEC50E4();
      v26 = v40;
      v8 = v39;
      a2 = v38;
      v16 = v37;
      a1 = v36;
      v4 = v35;
      v12 = v34;
      v5 = v33;
      v13 = v32;
      v25 = v84;
      if ((v41 & 1) == 0)
      {
        goto LABEL_36;
      }
    }
  }

  else if (v31)
  {
    goto LABEL_36;
  }

  v42 = v26[6];
  v43 = (a1 + v42);
  v44 = *(a1 + v42 + 8);
  v45 = (a2 + v42);
  v46 = v45[1];
  if (v44)
  {
    if (!v46)
    {
      goto LABEL_36;
    }

    if (*v43 != *v45 || v44 != v46)
    {
      v84 = v25;
      v47 = v13;
      v48 = v5;
      v49 = v12;
      v50 = v4;
      v51 = a1;
      v52 = v16;
      v53 = a2;
      v54 = v8;
      v55 = v26;
      v56 = sub_22DEC50E4();
      v26 = v55;
      v8 = v54;
      a2 = v53;
      v16 = v52;
      a1 = v51;
      v4 = v50;
      v12 = v49;
      v5 = v48;
      v13 = v47;
      v25 = v84;
      if ((v56 & 1) == 0)
      {
        goto LABEL_36;
      }
    }
  }

  else if (v46)
  {
    goto LABEL_36;
  }

  v57 = v26[7];
  v58 = (a1 + v57);
  v59 = *(a1 + v57 + 8);
  v60 = (a2 + v57);
  v61 = v60[1];
  if (v59)
  {
    if (!v61)
    {
      goto LABEL_36;
    }

    v83 = v8;
    if (*v58 != *v60 || v59 != v61)
    {
      v62 = v26;
      v63 = sub_22DEC50E4();
      v26 = v62;
      if ((v63 & 1) == 0)
      {
        goto LABEL_36;
      }
    }
  }

  else
  {
    v83 = v8;
    if (v61)
    {
      goto LABEL_36;
    }
  }

  v82 = v26;
  v64 = v26[8];
  v65 = *(v22 + 48);
  sub_22DDF0028(a1 + v64, v25, &qword_27DA37D88, &unk_22DEC8210);
  v84 = v65;
  sub_22DDF0028(a2 + v64, &v65[v25], &qword_27DA37D88, &unk_22DEC8210);
  v66 = v88;
  v86 = *(v86 + 48);
  if ((v86)(v25, 1, v88) != 1)
  {
    sub_22DDF0028(v25, v87, &qword_27DA37D88, &unk_22DEC8210);
    if ((v86)(&v84[v25], 1, v66) != 1)
    {
      v70 = v85;
      sub_22DE6B268(&v84[v25], v85, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
      v71 = v87;
      LODWORD(v86) = static Com_Apple_Sse_Ocean_Ndo_Api_CTLink.== infix(_:_:)(v87, v70);
      v88 = v13;
      sub_22DE739F8(v70, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
      v13 = v88;
      sub_22DE739F8(v71, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
      sub_22DDEF284(v25, &qword_27DA37D88, &unk_22DEC8210);
      if ((v86 & 1) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    }

    sub_22DE739F8(v87, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
LABEL_27:
    v67 = &qword_27DA38310;
    v68 = &unk_22DECA250;
    v69 = v25;
LABEL_35:
    sub_22DDEF284(v69, v67, v68);
    goto LABEL_36;
  }

  if ((v86)(&v84[v25], 1, v66) != 1)
  {
    goto LABEL_27;
  }

  sub_22DDEF284(v25, &qword_27DA37D88, &unk_22DEC8210);
LABEL_29:
  v72 = v12;
  v73 = v82[9];
  v74 = v16;
  v75 = *(v13 + 48);
  sub_22DDF0028(a1 + v73, v74, &qword_27DA38898, &qword_22DECBB28);
  sub_22DDF0028(a2 + v73, v74 + v75, &qword_27DA38898, &qword_22DECBB28);
  v76 = *(v5 + 48);
  if (v76(v74, 1, v4) == 1)
  {
    if (v76(v74 + v75, 1, v4) == 1)
    {
      sub_22DDEF284(v74, &qword_27DA38898, &qword_22DECBB28);
LABEL_39:
      sub_22DEC48B4();
      sub_22DE800BC(&qword_27DA37B30, MEMORY[0x277D216C8]);
      v77 = sub_22DEC4BF4();
      return v77 & 1;
    }

    goto LABEL_34;
  }

  sub_22DDF0028(v74, v72, &qword_27DA38898, &qword_22DECBB28);
  if (v76(v74 + v75, 1, v4) == 1)
  {
    sub_22DE739F8(v72, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction);
LABEL_34:
    v67 = &qword_27DA38BA0;
    v68 = &unk_22DECCF80;
    v69 = v74;
    goto LABEL_35;
  }

  v79 = v83;
  sub_22DE6B268(v74 + v75, v83, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction);
  v80 = _s6NDOAPI43Com_Apple_Sse_Ocean_Ndo_Api_CCDismissActionV2eeoiySbAC_ACtFZ_0(v72, v79);
  sub_22DE739F8(v79, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction);
  sub_22DE739F8(v72, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction);
  sub_22DDEF284(v74, &qword_27DA38898, &qword_22DECBB28);
  if (v80)
  {
    goto LABEL_39;
  }

LABEL_36:
  v77 = 0;
  return v77 & 1;
}

uint64_t _s6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_CCTextDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData(0) + 20);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = v7[1];
  if (v6)
  {
    if (v8)
    {
      v9 = *v5 == *v7 && v6 == v8;
      if (v9 || (sub_22DEC50E4() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!v8)
  {
LABEL_8:
    sub_22DEC48B4();
    sub_22DE800BC(&qword_27DA37B30, MEMORY[0x277D216C8]);
    return sub_22DEC4BF4() & 1;
  }

  return 0;
}

uint64_t _s6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_CCResponseV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v3 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse(0);
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = *(v48 + 64);
  MEMORY[0x28223BE20](v3);
  v44 = (&v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37DD0, &qword_22DECBB20);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = (&v43 - v8);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38B98, &unk_22DECCF60);
  v9 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v50 = &v43 - v10;
  v11 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38088, &unk_22DEC8220);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v43 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38350, &unk_22DED04F0);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v43 - v23;
  v46 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse(0);
  v25 = *(v46 + 20);
  v26 = *(v21 + 56);
  v51 = a1;
  sub_22DDF0028(a1 + v25, v24, &qword_27DA38088, &unk_22DEC8220);
  sub_22DDF0028(v52 + v25, &v24[v26], &qword_27DA38088, &unk_22DEC8220);
  v27 = *(v12 + 48);
  if (v27(v24, 1, v11) == 1)
  {
    if (v27(&v24[v26], 1, v11) == 1)
    {
      sub_22DDEF284(v24, &qword_27DA38088, &unk_22DEC8220);
      goto LABEL_8;
    }

LABEL_6:
    v28 = &qword_27DA38350;
    v29 = &unk_22DED04F0;
    v30 = v24;
LABEL_16:
    sub_22DDEF284(v30, v28, v29);
    goto LABEL_17;
  }

  sub_22DDF0028(v24, v19, &qword_27DA38088, &unk_22DEC8220);
  if (v27(&v24[v26], 1, v11) == 1)
  {
    sub_22DE739F8(v19, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
    goto LABEL_6;
  }

  sub_22DE6B268(&v24[v26], v15, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  v31 = _s6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_ResponseMetaV2eeoiySbAC_ACtFZ_0(v19, v15);
  sub_22DE739F8(v15, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  sub_22DE739F8(v19, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  sub_22DDEF284(v24, &qword_27DA38088, &unk_22DEC8220);
  if ((v31 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_8:
  v32 = *(v46 + 24);
  v33 = *(v47 + 48);
  v34 = v50;
  sub_22DDF0028(v51 + v32, v50, &qword_27DA37DD0, &qword_22DECBB20);
  sub_22DDF0028(v52 + v32, v34 + v33, &qword_27DA37DD0, &qword_22DECBB20);
  v35 = v49;
  v36 = *(v48 + 48);
  if (v36(v34, 1, v49) != 1)
  {
    v38 = v45;
    sub_22DDF0028(v34, v45, &qword_27DA37DD0, &qword_22DECBB20);
    if (v36(v34 + v33, 1, v35) == 1)
    {
      sub_22DE739F8(v38, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse);
      goto LABEL_14;
    }

    v40 = v34 + v33;
    v41 = v44;
    sub_22DE6B268(v40, v44, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse);
    if ((sub_22DE2F278(*v38, *v41) & 1) == 0)
    {
      sub_22DE739F8(v41, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse);
      sub_22DE739F8(v38, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse);
      v28 = &qword_27DA37DD0;
      v29 = &qword_22DECBB20;
      goto LABEL_15;
    }

    v42 = *(v35 + 20);
    sub_22DEC48B4();
    sub_22DE800BC(&qword_27DA37B30, MEMORY[0x277D216C8]);
    LOBYTE(v42) = sub_22DEC4BF4();
    sub_22DE739F8(v41, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse);
    sub_22DE739F8(v38, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse);
    sub_22DDEF284(v34, &qword_27DA37DD0, &qword_22DECBB20);
    if (v42)
    {
      goto LABEL_11;
    }

LABEL_17:
    v37 = 0;
    return v37 & 1;
  }

  if (v36(v34 + v33, 1, v35) != 1)
  {
LABEL_14:
    v28 = &qword_27DA38B98;
    v29 = &unk_22DECCF60;
LABEL_15:
    v30 = v34;
    goto LABEL_16;
  }

  sub_22DDEF284(v34, &qword_27DA37DD0, &qword_22DECBB20);
LABEL_11:
  sub_22DEC48B4();
  sub_22DE800BC(&qword_27DA37B30, MEMORY[0x277D216C8]);
  v37 = sub_22DEC4BF4();
  return v37 & 1;
}

uint64_t _s6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CCSectionV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection(0);
  v5 = v4[6];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_22DEC50E4();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[7];
  v14 = *(a1 + v13);
  v15 = *(a2 + v13);
  if (v14 == 2)
  {
    if (v15 != 2)
    {
      return 0;
    }
  }

  else if (v15 == 2 || ((v14 ^ v15) & 1) != 0)
  {
    return 0;
  }

  v16 = v4[8];
  v17 = (a1 + v16);
  v18 = *(a1 + v16 + 4);
  v19 = (a2 + v16);
  v20 = *(a2 + v16 + 4);
  if (v18)
  {
    if (!v20)
    {
      return 0;
    }
  }

  else
  {
    if (*v17 != *v19)
    {
      LOBYTE(v20) = 1;
    }

    if (v20)
    {
      return 0;
    }
  }

  v21 = v4;
  if (sub_22DE3196C(*a1, *a2))
  {
    v22 = v21;
    v23 = v21[9];
    v24 = (a1 + v23);
    v25 = *(a1 + v23 + 8);
    v26 = (a2 + v23);
    v27 = v26[1];
    if (v25)
    {
      if (!v27)
      {
        return 0;
      }

      if (*v24 != *v26 || v25 != v27)
      {
        v28 = sub_22DEC50E4();
        v22 = v21;
        if ((v28 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v27)
    {
      return 0;
    }

    v29 = v22[10];
    v30 = (a1 + v29);
    v31 = *(a1 + v29 + 8);
    v32 = (a2 + v29);
    v33 = v32[1];
    if (v31)
    {
      if (!v33)
      {
        return 0;
      }

      if (*v30 != *v32 || v31 != v33)
      {
        v34 = sub_22DEC50E4();
        v22 = v21;
        if ((v34 & 1) == 0)
        {
          return 0;
        }
      }

LABEL_34:
      v35 = v22[5];
      sub_22DEC48B4();
      sub_22DE800BC(&qword_27DA37B30, MEMORY[0x277D216C8]);
      return sub_22DEC4BF4() & 1;
    }

    if (!v33)
    {
      goto LABEL_34;
    }
  }

  return 0;
}

uint64_t _s6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CCRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {
    v7 = *(a1 + v4);

    v8 = sub_22DE743F0(v5, v6);

    if (!v8)
    {
      return 0;
    }
  }

  sub_22DEC48B4();
  sub_22DE800BC(&qword_27DA37B30, MEMORY[0x277D216C8]);
  return sub_22DEC4BF4() & 1;
}

uint64_t _s6NDOAPI34Com_Apple_Sse_Ocean_Ndo_Api_CCItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F48, &qword_22DEC8170);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F50, &unk_22DEC8178);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - v15;
  v17 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem(0);
  v18 = *(v17 + 24);
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);
  if (v19 == 5)
  {
    if (v20 != 5)
    {
      goto LABEL_11;
    }
  }

  else if (v19 != v20)
  {
    goto LABEL_11;
  }

  v28 = v17;
  v21 = *(v13 + 48);
  sub_22DDF0028(a1, v16, &qword_27DA37F48, &qword_22DEC8170);
  sub_22DDF0028(a2, &v16[v21], &qword_27DA37F48, &qword_22DEC8170);
  v22 = *(v5 + 48);
  if (v22(v16, 1, v4) == 1)
  {
    if (v22(&v16[v21], 1, v4) == 1)
    {
      sub_22DDEF284(v16, &qword_27DA37F48, &qword_22DEC8170);
LABEL_14:
      v26 = *(v28 + 20);
      sub_22DEC48B4();
      sub_22DE800BC(&qword_27DA37B30, MEMORY[0x277D216C8]);
      v23 = sub_22DEC4BF4();
      return v23 & 1;
    }

    goto LABEL_10;
  }

  sub_22DDF0028(v16, v12, &qword_27DA37F48, &qword_22DEC8170);
  if (v22(&v16[v21], 1, v4) == 1)
  {
    sub_22DE739F8(v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
LABEL_10:
    sub_22DDEF284(v16, &qword_27DA37F50, &unk_22DEC8178);
    goto LABEL_11;
  }

  sub_22DE6B268(&v16[v21], v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
  v25 = _s6NDOAPI34Com_Apple_Sse_Ocean_Ndo_Api_CCItemV10OneOf_DataO2eeoiySbAE_AEtFZ_0(v12, v8);
  sub_22DE739F8(v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
  sub_22DE739F8(v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
  sub_22DDEF284(v16, &qword_27DA37F48, &qword_22DEC8170);
  if (v25)
  {
    goto LABEL_14;
  }

LABEL_11:
  v23 = 0;
  return v23 & 1;
}

uint64_t _s6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_CCBannerDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v49 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38310, &unk_22DECA250);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v49 - v15;
  v17 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData(0);
  v18 = v17[5];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_32;
    }

    if (*v19 != *v21 || v20 != v22)
    {
      v24 = v17;
      v25 = sub_22DEC50E4();
      v17 = v24;
      if ((v25 & 1) == 0)
      {
        goto LABEL_32;
      }
    }
  }

  else if (v22)
  {
    goto LABEL_32;
  }

  v26 = v17[6];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  v30 = v29[1];
  if (v28)
  {
    if (!v30)
    {
      goto LABEL_32;
    }

    if (*v27 != *v29 || v28 != v30)
    {
      v32 = v17;
      v33 = sub_22DEC50E4();
      v17 = v32;
      if ((v33 & 1) == 0)
      {
        goto LABEL_32;
      }
    }
  }

  else if (v30)
  {
    goto LABEL_32;
  }

  v34 = v17[7];
  v35 = (a1 + v34);
  v36 = *(a1 + v34 + 8);
  v37 = (a2 + v34);
  v38 = v37[1];
  if (v36)
  {
    if (!v38)
    {
      goto LABEL_32;
    }

    if (*v35 != *v37 || v36 != v38)
    {
      v39 = v17;
      v40 = sub_22DEC50E4();
      v17 = v39;
      if ((v40 & 1) == 0)
      {
        goto LABEL_32;
      }
    }
  }

  else if (v38)
  {
    goto LABEL_32;
  }

  v41 = v17[8];
  v42 = *(v13 + 48);
  sub_22DDF0028(a1 + v41, v16, &qword_27DA37D88, &unk_22DEC8210);
  v43 = a2 + v41;
  v44 = v42;
  sub_22DDF0028(v43, &v16[v42], &qword_27DA37D88, &unk_22DEC8210);
  v45 = *(v5 + 48);
  if (v45(v16, 1, v4) == 1)
  {
    if (v45(&v16[v44], 1, v4) == 1)
    {
      sub_22DDEF284(v16, &qword_27DA37D88, &unk_22DEC8210);
LABEL_35:
      sub_22DEC48B4();
      sub_22DE800BC(&qword_27DA37B30, MEMORY[0x277D216C8]);
      v46 = sub_22DEC4BF4();
      return v46 & 1;
    }

    goto LABEL_31;
  }

  sub_22DDF0028(v16, v12, &qword_27DA37D88, &unk_22DEC8210);
  if (v45(&v16[v44], 1, v4) == 1)
  {
    sub_22DE739F8(v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
LABEL_31:
    sub_22DDEF284(v16, &qword_27DA38310, &unk_22DECA250);
    goto LABEL_32;
  }

  sub_22DE6B268(&v16[v44], v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  v48 = _s6NDOAPI34Com_Apple_Sse_Ocean_Ndo_Api_CTLinkV2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_22DE739F8(v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  sub_22DE739F8(v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  sub_22DDEF284(v16, &qword_27DA37D88, &unk_22DEC8210);
  if (v48)
  {
    goto LABEL_35;
  }

LABEL_32:
  v46 = 0;
  return v46 & 1;
}

uint64_t _s6NDOAPI34Com_Apple_Sse_Ocean_Ndo_Api_CCItemV10OneOf_DataO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v62 = a1;
  v63 = a2;
  v59 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData(0);
  v2 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v60 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v58 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v57 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v61 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v56 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v56 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v56 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v56 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38BA8, &qword_22DECCF90);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v37 = &v56 - v36;
  v38 = *(v35 + 56);
  sub_22DE73990(v62, &v56 - v36, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
  sub_22DE73990(v63, &v37[v38], type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_22DE73990(v37, v30, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v44 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData;
        v45 = v30;
        goto LABEL_24;
      }

      sub_22DE6B268(&v37[v38], v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData);
      v41 = _s6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceDataV2eeoiySbAC_ACtFZ_0(v30, v13);
      v47 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData;
      sub_22DE739F8(v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData);
      v42 = v30;
    }

    else
    {
      sub_22DE73990(v37, v32, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
      if (swift_getEnumCaseMultiPayload())
      {
        v44 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData;
        v45 = v32;
        goto LABEL_24;
      }

      sub_22DE6B268(&v37[v38], v17, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData);
      v41 = _s6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_CCBannerDataV2eeoiySbAC_ACtFZ_0(v32, v17);
      v47 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData;
      sub_22DE739F8(v17, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData);
      v42 = v32;
    }

LABEL_27:
    v43 = v47;
    goto LABEL_28;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_22DE73990(v37, v27, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v44 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink;
      v45 = v27;
      goto LABEL_24;
    }

    v46 = v57;
    sub_22DE6B268(&v37[v38], v57, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    v41 = _s6NDOAPI34Com_Apple_Sse_Ocean_Ndo_Api_CTLinkV2eeoiySbAC_ACtFZ_0(v27, v46);
    v47 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink;
    sub_22DE739F8(v46, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    v42 = v27;
    goto LABEL_27;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_22DE73990(v37, v24, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v40 = v58;
      sub_22DE6B268(&v37[v38], v58, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData);
      v41 = _s6NDOAPI39Com_Apple_Sse_Ocean_Ndo_Api_CCPromoDataV2eeoiySbAC_ACtFZ_0(v24, v40);
      sub_22DE739F8(v40, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData);
      v42 = v24;
      v43 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData;
LABEL_28:
      sub_22DE739F8(v42, v43);
      sub_22DE739F8(v37, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
      return v41 & 1;
    }

    v44 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData;
    v45 = v24;
    goto LABEL_24;
  }

  v48 = v61;
  sub_22DE73990(v37, v61, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v49 = v60;
    sub_22DE6B268(&v37[v38], v60, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData);
    v50 = *(v59 + 20);
    v51 = (v48 + v50);
    v52 = *(v48 + v50 + 8);
    v53 = (v49 + v50);
    v54 = v53[1];
    if (v52)
    {
      if (!v54 || (*v51 != *v53 || v52 != v54) && (sub_22DEC50E4() & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else if (v54)
    {
LABEL_33:
      sub_22DE739F8(v49, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData);
      sub_22DE739F8(v48, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData);
      sub_22DE739F8(v37, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
      goto LABEL_25;
    }

    sub_22DEC48B4();
    sub_22DE800BC(&qword_27DA37B30, MEMORY[0x277D216C8]);
    if (sub_22DEC4BF4())
    {
      sub_22DE739F8(v49, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData);
      sub_22DE739F8(v48, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData);
      sub_22DE739F8(v37, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
      v41 = 1;
      return v41 & 1;
    }

    goto LABEL_33;
  }

  v44 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData;
  v45 = v48;
LABEL_24:
  sub_22DE739F8(v45, v44);
  sub_22DDEF284(v37, &qword_27DA38BA8, &qword_22DECCF90);
LABEL_25:
  v41 = 0;
  return v41 & 1;
}

uint64_t sub_22DE800BC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22DE80108()
{
  result = qword_27DA38908;
  if (!qword_27DA38908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38908);
  }

  return result;
}

unint64_t sub_22DE80160()
{
  result = qword_27DA38910;
  if (!qword_27DA38910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38910);
  }

  return result;
}

unint64_t sub_22DE801B8()
{
  result = qword_27DA38918;
  if (!qword_27DA38918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38918);
  }

  return result;
}

unint64_t sub_22DE80210()
{
  result = qword_27DA38920;
  if (!qword_27DA38920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA38928, &qword_22DECBBE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38920);
  }

  return result;
}

uint64_t sub_22DE80F0C()
{
  result = sub_22DEC48B4();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_22DE80FB8()
{
  sub_22DEC48B4();
  if (v0 <= 0x3F)
  {
    sub_22DE810B4(319, qword_28145C448, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22DE810B4(319, &qword_27DA38A38, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22DE810B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22DE81140()
{
  sub_22DE810B4(319, &qword_27DA38A50, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_22DEC48B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22DE8121C()
{
  sub_22DE810B4(319, &qword_27DA38A68, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_22DEC48B4();
    if (v1 <= 0x3F)
    {
      sub_22DE33AAC(319, &qword_28145AD88);
      if (v2 <= 0x3F)
      {
        sub_22DE33AAC(319, &qword_28145AD28);
        if (v3 <= 0x3F)
        {
          sub_22DE33AAC(319, &qword_28145AD08);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_22DE8137C()
{
  sub_22DE810B4(319, &qword_27DA38A80, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_22DEC48B4();
    if (v1 <= 0x3F)
    {
      sub_22DE33AAC(319, &qword_27DA38A88);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22DE81458()
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

void sub_22DE81530()
{
  sub_22DEC48B4();
  if (v0 <= 0x3F)
  {
    sub_22DE33AAC(319, &qword_28145AD88);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22DE815EC()
{
  sub_22DEC48B4();
  if (v0 <= 0x3F)
  {
    sub_22DE33AAC(319, &qword_28145AD88);
    if (v1 <= 0x3F)
    {
      sub_22DE810B4(319, qword_28145D790, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22DE816F8()
{
  sub_22DEC48B4();
  if (v0 <= 0x3F)
  {
    sub_22DE33AAC(319, &qword_28145AD88);
    if (v1 <= 0x3F)
    {
      sub_22DE810B4(319, qword_28145D3C0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22DE817FC()
{
  sub_22DEC48B4();
  if (v0 <= 0x3F)
  {
    sub_22DE33AAC(319, &qword_28145AD88);
    if (v1 <= 0x3F)
    {
      sub_22DE810B4(319, qword_28145D3C0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22DE8190C()
{
  sub_22DEC48B4();
  if (v0 <= 0x3F)
  {
    sub_22DE33AAC(319, &qword_28145AD88);
    if (v1 <= 0x3F)
    {
      sub_22DE810B4(319, qword_28145D790, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_22DE810B4(319, &qword_27DA38AF0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22DE81A60()
{
  sub_22DEC48B4();
  if (v0 <= 0x3F)
  {
    sub_22DE810B4(319, qword_28145D3C0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22DE81B1C()
{
  sub_22DE810B4(319, qword_28145C6F8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_22DE810B4(319, qword_28145B628, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_22DE81C44()
{
  result = qword_27DA38B70;
  if (!qword_27DA38B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38B70);
  }

  return result;
}

unint64_t sub_22DE81CE0(uint64_t a1, char a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38BC0, &qword_22DECCF98);
      inited = swift_initStackObject();
      v3 = inited;
      *(inited + 16) = xmmword_22DEC5F50;
      *(inited + 32) = 0x72656D75736E6F63;
      v4 = inited + 32;
      v5 = 0xE800000000000000;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38BC0, &qword_22DECCF98);
      inited = swift_initStackObject();
      v3 = inited;
      *(inited + 16) = xmmword_22DEC5F50;
      *(inited + 32) = 7368801;
      v4 = inited + 32;
      v5 = 0xE300000000000000;
    }

    *(inited + 40) = v5;
    v6 = sub_22DEC4DE4();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38BC0, &qword_22DECCF98);
    v3 = swift_initStackObject();
    *(v3 + 16) = xmmword_22DEC5F50;
    *(v3 + 32) = 0x6173726576696E75;
    v4 = v3 + 32;
    *(v3 + 40) = 0xED00006B6E694C6CLL;
    v6 = sub_22DEC4D54();
  }

  *(v3 + 48) = v6;
  v7 = sub_22DE05C9C(v3);
  swift_setDeallocating();
  sub_22DE81E28(v4);
  return v7;
}

uint64_t sub_22DE81E28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38BC8, qword_22DECCFA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest.init()@<X0>(uint64_t a1@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v2 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest(0) + 20);
  if (qword_27DA37880 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_27DA38BE8;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest.common.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A40, &unk_22DEC7330);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = sub_22DE84CE8(v11);
    *(v2 + v8) = v11;
  }

  sub_22DE85040(a1, v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
  v15 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__common;
  swift_beginAccess();
  sub_22DDF0208(v7, v11 + v16, &qword_27DA37A40, &unk_22DEC7330);
  return swift_endAccess();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest.meta.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = sub_22DE84CE8(v11);
    *(v2 + v8) = v11;
  }

  sub_22DE85040(a1, v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  v15 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__meta;
  swift_beginAccess();
  sub_22DDF0208(v7, v11 + v16, &qword_27DA37A38, &unk_22DEC6570);
  return swift_endAccess();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = sub_22DE0501C(v2);
  v3 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0);
  v4 = a1 + v3[6];
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v6 = (a1 + v3[7]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a1 + v3[8]);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData.ulLinkCode.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0) + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData.ulLinkParams.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0) + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest.data.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A30, &qword_22DECCFC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = sub_22DE84CE8(v11);
    *(v2 + v8) = v11;
  }

  sub_22DE85040(a1, v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData);
  v15 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0);
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__data;
  swift_beginAccess();
  sub_22DDF0208(v7, v11 + v16, &qword_27DA37A30, &qword_22DECCFC0);
  return swift_endAccess();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest.meta.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16 - v5;
  v7 = *(v1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest(0) + 20));
  v8 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__meta;
  swift_beginAccess();
  sub_22DDF0028(v7 + v8, v6, &qword_27DA37A38, &unk_22DEC6570);
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_22DE85040(v6, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v11 = (a1 + v9[5]);
  *v11 = 0;
  v11[1] = 0;
  v12 = a1 + v9[6];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v9[7];
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
  (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_22DDEF284(v6, &qword_27DA37A38, &unk_22DEC6570);
  }

  return result;
}

uint64_t sub_22DE8264C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DE875F8(a1, v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  v13 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = sub_22DE84CE8(v16);
    *(a2 + v13) = v16;
  }

  sub_22DE85040(v12, v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__meta;
  swift_beginAccess();
  sub_22DDF0208(v7, v16 + v20, &qword_27DA37A38, &unk_22DEC6570);
  return swift_endAccess();
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest.meta.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__meta;
  swift_beginAccess();
  sub_22DDF0028(v16 + v17, v8, &qword_27DA37A38, &unk_22DEC6570);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v19 = (v14 + v9[5]);
    *v19 = 0;
    v19[1] = 0;
    v20 = v14 + v9[6];
    *v20 = 0;
    *(v20 + 8) = 1;
    v21 = v9[7];
    v22 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
    (*(*(v22 - 8) + 56))(v14 + v21, 1, 1, v22);
    if (v18(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA37A38, &unk_22DEC6570);
    }
  }

  else
  {
    sub_22DE85040(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  }

  return sub_22DE82AEC;
}

void sub_22DE82AEC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_22DE875F8(*(v2 + 120), *(v2 + 112), type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = sub_22DE84CE8(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_22DE85040(v14, v18, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__meta;
    swift_beginAccess();
    sub_22DDF0208(v18, v7 + v19, &qword_27DA37A38, &unk_22DEC6570);
    swift_endAccess();
    sub_22DE87660(v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  }

  else
  {
    v20 = *(v2 + 72);
    v21 = *(v20 + v3);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v20 + v3);
    if ((v22 & 1) == 0)
    {
      v24 = *(v2 + 128);
      v25 = *(v2 + 72);
      v26 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = sub_22DE84CE8(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_22DE85040(v13, v18, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__meta;
    swift_beginAccess();
    sub_22DDF0208(v18, v23 + v31, &qword_27DA37A38, &unk_22DEC6570);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest.common.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A40, &unk_22DEC7330);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v19 - v5;
  v7 = *(v1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest(0) + 20));
  v8 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__common;
  swift_beginAccess();
  sub_22DDF0028(v7 + v8, v6, &qword_27DA37A40, &unk_22DEC7330);
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_22DE85040(v6, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
  }

  v11 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 1) = v11;
  *(a1 + 2) = v11;
  *(a1 + 3) = v11;
  *(a1 + 4) = v11;
  v12 = &a1[v9[9]];
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v13 = v9[10];
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_UserData(0);
  (*(*(v14 - 8) + 56))(&a1[v13], 1, 1, v14);
  v15 = &a1[v9[11]];
  *v15 = 0;
  v15[8] = 1;
  v16 = &a1[v9[12]];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = &a1[v9[13]];
  *v17 = 0;
  *(v17 + 1) = 0;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_22DDEF284(v6, &qword_27DA37A40, &unk_22DEC7330);
  }

  return result;
}