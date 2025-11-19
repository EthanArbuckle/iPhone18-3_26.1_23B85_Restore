unint64_t static MTR.Cluster.RVCOperationalState.toOperationalErrorStateType(from:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (result > 0xFF)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v7 = v2;
  v8 = v3;
  result = MTR.Cluster.RVCOperationalState.OperationalErrorStateType.init(rawValue:)(result, &v6);
  v5 = v6;
  if (v6 == 12)
  {
    v5 = 5;
  }

  *a2 = v5;
  return result;
}

double _s23HomeKitDaemonFoundation3MTRO7ClusterO19RVCOperationalStateV14attributePaths8endpointSayAC9AttributeO4PathVGAC8EndpointO2IDV_tFZ_0(__int16 *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D1E8, &qword_2531E1490);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2531E8020;
  *(v2 + 32) = v1;
  *(v2 + 36) = 0x300000061;
  *(v2 + 44) = v1;
  *(v2 + 48) = 0x400000061;
  *(v2 + 56) = v1;
  *&result = 0x500000061;
  *(v2 + 60) = 0x500000061;
  return result;
}

unint64_t sub_2531C4524()
{
  result = qword_27F58DE98;
  if (!qword_27F58DE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DE98);
  }

  return result;
}

unint64_t sub_2531C457C()
{
  result = qword_27F58DEA0;
  if (!qword_27F58DEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DEA0);
  }

  return result;
}

unint64_t sub_2531C45D4()
{
  result = qword_27F58DEA8;
  if (!qword_27F58DEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DEA8);
  }

  return result;
}

uint64_t sub_2531C4628(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_2531C4684(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t _s19RVCOperationalStateV25OperationalErrorStateTypeOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s19RVCOperationalStateV25OperationalErrorStateTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2531C4848()
{
  result = qword_27F58DEB0;
  if (!qword_27F58DEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DEB0);
  }

  return result;
}

unint64_t sub_2531C489C()
{
  result = qword_27F58DEB8;
  if (!qword_27F58DEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DEB8);
  }

  return result;
}

uint64_t sub_2531C48F0(uint64_t *a1, unsigned __int16 *a2)
{
  v2 = sub_25318B1A0(*a2 | 0x6100000000, 3u, *a1, a1[1]);
  v11 = v2;
  if (v2 >> 62)
  {
    v12 = sub_2531DAD44();
    if (v12)
    {
      goto LABEL_6;
    }

LABEL_40:
    v14 = MEMORY[0x277D84F90];
LABEL_41:

    v31 = sub_2531C2F54(v14);

    return v31;
  }

  v12 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_40;
  }

LABEL_6:
  v13 = 0;
  v14 = MEMORY[0x277D84F90];
  v15 = 0x279719000uLL;
  while (1)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x259BFEA20](v13, v11);
    }

    else
    {
      if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_36;
      }

      v16 = *(v11 + 8 * v13 + 32);
    }

    v17 = v16;
    v18 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    v19 = [v16 operationalStateID];
    v20 = [v19 unsignedIntegerValue];

    if ((v20 & 0x8000000000000000) != 0)
    {
      goto LABEL_37;
    }

    if (v20 > 0xFF)
    {
      goto LABEL_38;
    }

    if (v20 <= 0x3Fu)
    {
      if (v20 < 4u)
      {
        goto LABEL_15;
      }

LABEL_30:
      LOBYTE(v20) = 3;
      goto LABEL_15;
    }

    if (v20 == 66)
    {
      LOBYTE(v20) = 6;
      goto LABEL_15;
    }

    if (v20 != 65)
    {
      if (v20 == 64)
      {
        LOBYTE(v20) = 4;
        goto LABEL_15;
      }

      goto LABEL_30;
    }

    LOBYTE(v20) = 5;
LABEL_15:
    v21 = [v17 *(v15 + 4056)];
    if (v21 && (v21, (v22 = [v17 *(v15 + 4056)]) != 0))
    {
      v23 = v22;
      v24 = sub_2531DA6D4();
      v26 = v25;
    }

    else
    {

      v24 = 0;
      v26 = 0;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_25316A748(0, *(v14 + 2) + 1, 1, v14);
    }

    v28 = *(v14 + 2);
    v27 = *(v14 + 3);
    if (v28 >= v27 >> 1)
    {
      v14 = sub_25316A748((v27 > 1), v28 + 1, 1, v14);
    }

    *(v14 + 2) = v28 + 1;
    v29 = &v14[24 * v28];
    v29[32] = v20;
    *(v29 + 5) = v24;
    *(v29 + 6) = v26;
    ++v13;
    v15 = 0x279719000;
    if (v18 == v12)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  swift_once();
  v3 = sub_2531DA274();
  __swift_project_value_buffer(v3, qword_27F59A2A8);
  v4 = v14;
  v5 = sub_2531DA254();
  v6 = sub_2531DAA84();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v14;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_253166000, v5, v6, "Error parsing operational state read response: %@", v7, 0xCu);
    sub_25316FD44(v8);
    MEMORY[0x259BFFA80](v8, -1, -1);
    MEMORY[0x259BFFA80](v7, -1, -1);
  }

  else
  {
  }

  return 0;
}

_WORD *MTR.Command.Path.init(_:_:_:)@<X0>(_WORD *result@<X0>, int *a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  v5 = *a3;
  *a4 = *result;
  *(a4 + 4) = v4;
  *(a4 + 8) = v5;
  return result;
}

uint64_t MTR.Command.ID.description.getter()
{
  v1 = *v0;
  sub_2531DABC4();

  strcpy(v4, "Command.ID(0x");
  sub_253169338();
  v2 = sub_2531DA7A4();
  MEMORY[0x259BFE570](v2);

  MEMORY[0x259BFE570](41, 0xE100000000000000);
  return v4[0];
}

_WORD *MTR.Command.Path.init(_:_:commandID:)@<X0>(_WORD *result@<X0>, int *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  *a4 = *result;
  *(a4 + 4) = v4;
  *(a4 + 8) = a3;
  return result;
}

_WORD *MTR.Command.Path.init(_:clusterID:commandID:)@<X0>(_WORD *result@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 4) = a2;
  *(a4 + 8) = a3;
  return result;
}

uint64_t MTR.Command.Path.hash(into:)()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *v0;
  sub_2531DB424();
  sub_2531DB434();
  return sub_2531DB434();
}

uint64_t MTR.Command.Path.hashValue.getter()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *v0;
  sub_2531DB3F4();
  sub_2531DB424();
  sub_2531DB434();
  sub_2531DB434();
  return sub_2531DB454();
}

unint64_t sub_2531C4FF8()
{
  result = qword_27F58DEC0;
  if (!qword_27F58DEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DEC0);
  }

  return result;
}

unint64_t sub_2531C5050()
{
  result = qword_27F58DEC8;
  if (!qword_27F58DEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DEC8);
  }

  return result;
}

unint64_t sub_2531C50D4()
{
  result = qword_27F58DED0;
  if (!qword_27F58DED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DED0);
  }

  return result;
}

uint64_t Data.dispatchData.getter(uint64_t a1, unint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_16:
      result = sub_2531DA5D4();
      v8 = *MEMORY[0x277D85DE8];
      return result;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    a1 = sub_2531DA044();
    if (a1)
    {
      a1 = sub_2531DA074();
      if (__OFSUB__(v3, a1))
      {
        goto LABEL_18;
      }
    }

    if (!__OFSUB__(v4, v3))
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  else if (!v2)
  {
    goto LABEL_16;
  }

  v5 = a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (sub_2531DA044() && __OFSUB__(v5, sub_2531DA074()))
  {
LABEL_19:
    __break(1u);
  }

LABEL_13:
  sub_2531DA064();
  v6 = *MEMORY[0x277D85DE8];

  return sub_2531DA5D4();
}

uint64_t UUIDStringKey.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2531DA204();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t UUIDStringKey.uuid.setter(uint64_t a1)
{
  v3 = sub_2531DA204();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t UUIDStringKey.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2531DA204();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t UUIDStringKey.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DC68, &qword_2531E72A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = sub_2531DA204();
  v26 = *(v8 - 8);
  v9 = *(v26 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUIDStringKey();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2531DB4A4();
  if (!v2)
  {
    v22 = v15;
    v23 = v11;
    v17 = v26;
    __swift_project_boxed_opaque_existential_1(v25, v25[3]);
    sub_2531DB164();
    sub_2531DA1B4();

    if ((*(v17 + 48))(v7, 1, v8) == 1)
    {
      sub_2531B1730(v7);
      sub_2531C5754();
      swift_allocError();
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v25);
    }

    else
    {
      v19 = *(v17 + 32);
      v20 = v23;
      v19(v23, v7, v8);
      v21 = v22;
      v19(v22, v20, v8);
      __swift_destroy_boxed_opaque_existential_1(v25);
      sub_2531C57A8(v21, v24);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for UUIDStringKey()
{
  result = qword_27F58DEF8;
  if (!qword_27F58DEF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2531C5754()
{
  result = qword_27F58DED8;
  if (!qword_27F58DED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DED8);
  }

  return result;
}

uint64_t sub_2531C57A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUIDStringKey();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t UUIDStringKey.encode(to:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2531DB4C4();
  sub_2531DA1C4();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2531DB194();

  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t UUIDStringKey.hash(into:)()
{
  sub_2531DA204();
  sub_2531C668C(&qword_27F58D708, MEMORY[0x277CC95F0]);

  return sub_2531DA694();
}

uint64_t UUIDStringKey.hashValue.getter()
{
  sub_2531DB3F4();
  sub_2531DA204();
  sub_2531C668C(&qword_27F58D708, MEMORY[0x277CC95F0]);
  sub_2531DA694();
  return sub_2531DB454();
}

uint64_t sub_2531C5A24()
{
  sub_2531DB3F4();
  sub_2531DA204();
  sub_2531C668C(&qword_27F58D708, MEMORY[0x277CC95F0]);
  sub_2531DA694();
  return sub_2531DB454();
}

uint64_t sub_2531C5AAC()
{
  sub_2531DA204();
  sub_2531C668C(&qword_27F58D708, MEMORY[0x277CC95F0]);

  return sub_2531DA694();
}

uint64_t sub_2531C5B30()
{
  sub_2531DB3F4();
  sub_2531DA204();
  sub_2531C668C(&qword_27F58D708, MEMORY[0x277CC95F0]);
  sub_2531DA694();
  return sub_2531DB454();
}

uint64_t sub_2531C5BCC(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2531DB4C4();
  sub_2531DA1C4();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2531DB194();

  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t Dictionary<>.init(wrappingKeys:)(uint64_t a1, uint64_t a2)
{
  v11 = a1;
  v10 = a2;
  v8[2] = a2;
  v8[3] = sub_2531C5E50;
  v8[4] = &v9;
  sub_2531DA204();
  sub_2531C668C(&qword_27F58D708, MEMORY[0x277CC95F0]);
  v2 = sub_2531DA654();
  type metadata accessor for UUIDStringKey();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v6 = sub_25316C670(sub_2531C5E54, v8, v2, TupleTypeMetadata2, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v5);

  v11 = v6;
  sub_2531DA934();
  sub_2531C668C(&qword_27F58DEE0, type metadata accessor for UUIDStringKey);
  swift_getWitnessTable();
  return sub_2531DA644();
}

uint64_t sub_2531C5E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  return sub_2531C6118(a1, *(v2 + 24), MEMORY[0x277CC95F0], type metadata accessor for UUIDStringKey, a2);
}

uint64_t Dictionary<>.unwrappedKeys.getter(uint64_t a1, uint64_t a2)
{
  v10 = a1;
  v9 = a2;
  v7[2] = a2;
  v7[3] = sub_2531C6990;
  v7[4] = &v8;
  type metadata accessor for UUIDStringKey();
  sub_2531C668C(&qword_27F58DEE0, type metadata accessor for UUIDStringKey);
  v2 = sub_2531DA654();
  sub_2531DA204();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_25316C670(sub_2531C61DC, v7, v2, TupleTypeMetadata2, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v5);
  sub_2531DA934();
  sub_2531C668C(&qword_27F58D708, MEMORY[0x277CC95F0]);
  swift_getWitnessTable();
  return sub_2531DA644();
}

uint64_t sub_2531C605C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 16);
  v10 = sub_2531DA204();
  (*(*(v10 - 8) + 16))(a1, a3, v10);
  v11 = *(*(v9 - 8) + 16);

  return v11(a2, a4, v9);
}

uint64_t sub_2531C6118@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, void (*a3)(uint64_t)@<X5>, void (*a4)(uint64_t)@<X6>, uint64_t a5@<X8>)
{
  a3(255);
  v9 = *(swift_getTupleTypeMetadata2() + 48);
  a4(255);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a5, a5 + *(TupleTypeMetadata2 + 48), a1, a1 + v9);
}

uint64_t sub_2531C61DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  return sub_2531C6118(a1, *(v2 + 24), type metadata accessor for UUIDStringKey, MEMORY[0x277CC95F0], a2);
}

uint64_t sub_2531C6228()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_2531C6258@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  return result;
}

uint64_t sub_2531C626C()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

void sub_2531C6278(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
}

uint64_t sub_2531C6288(uint64_t a1)
{
  v2 = sub_2531C6370();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2531C62C4(uint64_t a1)
{
  v2 = sub_2531C6370();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UUIDStringKey.codingKey.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2531DA1C4();
  v4 = v3;
  a1[3] = &type metadata for UUIDStringKey.CodingKeyProxy;
  a1[4] = sub_2531C6370();
  result = swift_allocObject();
  *a1 = result;
  *(result + 16) = v2;
  *(result + 24) = v4;
  *(result + 32) = 0;
  *(result + 40) = 1;
  return result;
}

unint64_t sub_2531C6370()
{
  result = qword_27F58DEE8;
  if (!qword_27F58DEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DEE8);
  }

  return result;
}

uint64_t UUIDStringKey.init<A>(codingKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DC68, &qword_2531E72A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v24 - v7;
  v9 = sub_2531DA204();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUIDStringKey();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2531DB4F4();
  sub_2531DA1B4();

  (*(*(a2 - 8) + 8))(a1, a2);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_2531B1730(v8);
    v19 = 1;
    v20 = v25;
  }

  else
  {
    v21 = *(v10 + 32);
    v21(v13, v8, v9);
    v21(v18, v13, v9);
    v22 = v25;
    sub_2531C57A8(v18, v25);
    v19 = 0;
    v20 = v22;
  }

  return (*(v15 + 56))(v20, v19, 1, v14);
}

uint64_t sub_2531C668C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2531C66D4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2531DA1C4();
  v4 = v3;
  a1[3] = &type metadata for UUIDStringKey.CodingKeyProxy;
  a1[4] = sub_2531C6370();
  result = swift_allocObject();
  *a1 = result;
  *(result + 16) = v2;
  *(result + 24) = v4;
  *(result + 32) = 0;
  *(result + 40) = 1;
  return result;
}

uint64_t sub_2531C6770()
{
  result = sub_2531DA204();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2531C67DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_2531C6824(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2531C688C()
{
  result = qword_27F58DF08;
  if (!qword_27F58DF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DF08);
  }

  return result;
}

unint64_t sub_2531C68E4()
{
  result = qword_27F58DF10;
  if (!qword_27F58DF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DF10);
  }

  return result;
}

unint64_t sub_2531C693C()
{
  result = qword_27F58DF18;
  if (!qword_27F58DF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DF18);
  }

  return result;
}

uint64_t sub_2531C69B0()
{
  sub_2531DB3F4();
  MEMORY[0x259BFF230](1);
  return sub_2531DB454();
}

uint64_t sub_2531C6A1C()
{
  sub_2531DB3F4();
  MEMORY[0x259BFF230](1);
  return sub_2531DB454();
}

uint64_t HomeInstall.Endpoint.ServerSecurity.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_2531DAD94();

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

uint64_t HomeInstall.Endpoint.ServerSecurity.rawValue.getter()
{
  if (*v0)
  {
    return 0x6B73702D736C74;
  }

  else
  {
    return 0x2B32656B617073;
  }
}

unint64_t sub_2531C6BC8()
{
  result = qword_27F58DF20;
  if (!qword_27F58DF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DF20);
  }

  return result;
}

uint64_t sub_2531C6C1C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6B73702D736C74;
  }

  else
  {
    v2 = 0x2B32656B617073;
  }

  if (*a2)
  {
    v3 = 0x6B73702D736C74;
  }

  else
  {
    v3 = 0x2B32656B617073;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2531DB144();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

unint64_t sub_2531C6CA8()
{
  result = qword_27F58DF28;
  if (!qword_27F58DF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DF28);
  }

  return result;
}

uint64_t sub_2531C6CFC()
{
  v1 = *v0;
  sub_2531DB3F4();
  sub_2531DA734();

  return sub_2531DB454();
}

uint64_t sub_2531C6D74()
{
  *v0;
  sub_2531DA734();
}

uint64_t sub_2531C6DD0()
{
  v1 = *v0;
  sub_2531DB3F4();
  sub_2531DA734();

  return sub_2531DB454();
}

uint64_t sub_2531C6E44@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2531DAD94();

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

void sub_2531C6EA4(uint64_t *a1@<X8>)
{
  v2 = 0x2B32656B617073;
  if (*v1)
  {
    v2 = 0x6B73702D736C74;
  }

  *a1 = v2;
  a1[1] = 0xE700000000000000;
}

unint64_t sub_2531C6FBC()
{
  result = qword_27F58DF30;
  if (!qword_27F58DF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DF30);
  }

  return result;
}

unint64_t sub_2531C7010()
{
  result = qword_27F58DF38;
  if (!qword_27F58DF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DF38);
  }

  return result;
}

uint64_t HTTPFields.loggingDescription.getter()
{
  v1 = v0;
  v2 = sub_2531DA554();
  v49 = *(v2 - 1);
  v3 = *(v49 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v48 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - v6;
  v8 = sub_2531DA584();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2531DA284();
  v14 = sub_2531C75B4(&qword_27F58DF40, MEMORY[0x277CD8A80]);
  v15 = sub_2531DAA34();
  v16 = MEMORY[0x277D84F90];
  if (v15)
  {
    v17 = v15;
    v53 = MEMORY[0x277D84F90];
    sub_2531B4574(0, v15 & ~(v15 >> 63), 0);
    v50 = v53;
    sub_2531DAA24();
    if ((v17 & 0x8000000000000000) == 0)
    {
      v43 = v17;
      v44 = v14;
      v18 = 0;
      v19 = v9;
      v20 = (v9 + 16);
      v21 = (v49 + 8);
      v40 = (v19 + 8);
      v46 = v2;
      v47 = v1;
      v41 = (v49 + 8);
      v42 = v20;
      v45 = v13;
      while (!__OFADD__(v18, 1))
      {
        v49 = v18 + 1;
        v22 = sub_2531DAA54();
        (*v42)(v12);
        (v22)(&v51, 0);
        sub_2531DA564();
        v23 = v48;
        sub_2531DA534();
        LOBYTE(v22) = sub_2531DA544();
        v24 = *v21;
        (*v21)(v23, v2);
        v24(v7, v2);
        sub_2531DA564();
        sub_2531C75B4(&qword_27F58DF48, MEMORY[0x277CD9000]);
        v51 = sub_2531DAF34();
        v52 = v25;
        v24(v7, v2);
        if (v22)
        {
          v26 = 0x544341444552203ALL;
          v27 = 0xEB000000000A4445;
        }

        else
        {
          MEMORY[0x259BFE570](8250, 0xE200000000000000);
          v28 = sub_2531DA574();
          MEMORY[0x259BFE570](v28);

          v26 = 10;
          v27 = 0xE100000000000000;
        }

        MEMORY[0x259BFE570](v26, v27);
        v30 = v51;
        v29 = v52;
        v31 = v12;
        v32 = v12;
        v33 = v8;
        (*v40)(v32, v8);
        v34 = v50;
        v53 = v50;
        v36 = *(v50 + 16);
        v35 = *(v50 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_2531B4574((v35 > 1), v36 + 1, 1);
          v34 = v53;
        }

        *(v34 + 16) = v36 + 1;
        v50 = v34;
        v37 = v34 + 16 * v36;
        *(v37 + 32) = v30;
        *(v37 + 40) = v29;
        sub_2531DAA44();
        ++v18;
        v2 = v46;
        v8 = v33;
        v12 = v31;
        v21 = v41;
        if (v49 == v43)
        {
          v16 = v50;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_12:
    v51 = v16;

    sub_2531C75FC(&v51);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D458, &qword_2531E2A28);
    sub_25318A2D8();
    v38 = sub_2531DA6A4();

    return v38;
  }

  return result;
}

uint64_t sub_2531C75B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2531C75FC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2531C80E8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_2531C7668(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_2531C7668(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2531DAF24();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_2531DA8E4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2531C7830(v7, v8, a1, v4);
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
    return sub_2531C7760(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2531C7760(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_2531DB144(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2531C7830(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_2531C80C0(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_2531C7E0C((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_2531DB144();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_2531DB144();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_25316A1C4(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_25316A1C4((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_2531C7E0C((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2531C80C0(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_2531C8034(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_2531DB144(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_2531C7E0C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_2531DB144() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_2531DB144() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_2531C8034(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2531C80C0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t NWConnectionReceived.data.getter()
{
  v1 = *v0;
  sub_2531AC91C(*v0, *(v0 + 8));
  return v1;
}

uint64_t NWConnectionReceived.data.setter(uint64_t a1, uint64_t a2)
{
  result = sub_2531AC968(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t NWConnectionReceived.contentContext.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t NWConnectionReceived.init(data:contentContext:isComplete:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  result = sub_2531AC968(0, 0xF000000000000000);
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t static NWAsyncConnection.wrapping<A>(connection:on:logger:requestID:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x2822009F8](sub_2531C8294, 0, 0);
}

uint64_t sub_2531C8294()
{
  v1 = v0;
  v2 = *(v0 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DF50, &qword_2531E8A58);
  v3 = swift_allocObject();
  *(v0 + 80) = v3;
  v15 = *(v0 + 56);
  swift_defaultActor_initialize();
  *(v3 + 112) = sub_2531B5608(MEMORY[0x277D84F90]);
  *(v3 + 120) = 0;
  *(v3 + 128) = -1;
  v4 = swift_task_alloc();
  v1[11] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v15;

  v5 = swift_task_alloc();
  v1[12] = v5;
  *v5 = v1;
  v5[1] = sub_2531C83E0;
  v6 = v1[9];
  v9 = v1[2];
  v8 = v1 + 2;
  v7 = v9;
  v10 = v8[3];
  v11 = v8[4];
  v12 = v8[1];
  v13 = v8[2];

  return sub_2531C86F8(v7, v12, v13, v10, v11, v3, v8, &unk_2531E8A68);
}

uint64_t sub_2531C83E0()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 80);
  v6 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_2531C857C;
  }

  else
  {
    v4 = sub_2531C8510;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2531C8510()
{
  v1 = v0[10];
  v2 = v0[11];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2531C857C()
{
  v1 = v0[10];
  v2 = v0[11];

  v3 = v0[1];
  v4 = v0[13];

  return v3();
}

uint64_t sub_2531C85E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v12 = (a5 + *a5);
  v9 = a5[1];
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_253170628;

  return v12(a1, a2, a3);
}

uint64_t sub_2531C86F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = v35;
  v8[13] = v36;
  v8[10] = a8;
  v8[11] = v34;
  v8[8] = a6;
  v8[9] = a7;
  v8[6] = a4;
  v8[7] = a5;
  v8[4] = a2;
  v8[5] = a3;
  v8[3] = a1;
  if (v35 == 1)
  {
    TupleTypeMetadata = *(v36 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v10 = swift_task_alloc();
    if (v35)
    {
      v11 = 0;
      v12 = v36 & 0xFFFFFFFFFFFFFFFELL;
      if (v35 < 4)
      {
        goto LABEL_9;
      }

      if (v10 - v12 < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v35 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = (v10 + 16);
      v15 = v35 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v11 != v35)
      {
LABEL_9:
        v17 = v35 - v11;
        v18 = 8 * v11;
        v19 = (v10 + 8 * v11);
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19++ = v21;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v8[14] = TupleTypeMetadata;
  v22 = *(TupleTypeMetadata - 8);
  v8[15] = v22;
  v23 = *(v22 + 64) + 15;
  v8[16] = swift_task_alloc();
  v24 = type metadata accessor for NWAsyncConnection.Inbound(0);
  v8[17] = v24;
  v25 = *(*(v24 - 8) + 64) + 15;
  v8[18] = swift_task_alloc();
  v26 = sub_2531DA204();
  v8[19] = v26;
  v27 = *(v26 - 8);
  v8[20] = v27;
  v28 = *(v27 + 64) + 15;
  v8[21] = swift_task_alloc();
  v29 = sub_2531DA274();
  v8[22] = v29;
  v30 = *(v29 - 8);
  v8[23] = v30;
  v31 = *(v30 + 64) + 15;
  v8[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2531C897C, 0, 0);
}

uint64_t sub_2531C897C()
{
  v43 = v0;
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[19];
  v4 = v0[20];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[4];
  v8 = *(v0[23] + 16);
  v8(v1, v0[6], v0[22]);
  (*(v4 + 16))(v2, v6, v3);
  v9 = type metadata accessor for NWConnectionWrapper(0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();

  v13 = sub_2531CFC84(v12, v5, v1, v2);
  v0[25] = v13;

  v0[26] = OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logger;

  v14 = sub_2531DA254();
  v15 = sub_2531DAA74();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v42 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_253196608(*(v13 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix), *(v13 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix + 8), &v42);
    _os_log_impl(&dword_253166000, v14, v15, "%s start", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x259BFFA80](v17, -1, -1);
    MEMORY[0x259BFFA80](v16, -1, -1);
  }

  v18 = v0[22];
  v20 = v0[17];
  v19 = v0[18];
  v21 = v0[12];
  v22 = v0[5];
  v23 = v0[6];
  v24 = *(v13 + 16);
  sub_2531DA364();
  v8(v19 + *(v20 + 20), v23, v18);
  v25 = *(v20 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DF98, &qword_2531E8D90);
  v26 = swift_allocObject();
  *(v26 + 20) = 0;
  *(v26 + 16) = 0;
  *(v19 + v25) = v26;
  *v19 = v13;
  v0[2] = v13;
  v27 = swift_task_alloc();
  v0[27] = v27;
  if (v21)
  {
    v28 = 0;
    v29 = v0[13] & 0xFFFFFFFFFFFFFFFELL;
    v30 = 32;
    do
    {
      v33 = v0[12];
      if (v33 == 1)
      {
        v31 = 0;
      }

      else
      {
        v31 = *(v0[14] + v30);
      }

      v32 = v0[16] + v31;
      (*(*(*(v29 + 8 * v28) - 8) + 16))(v32, *(v0[9] + 8 * v28));
      *(v27 + 8 * v28++) = v32;
      v30 += 16;
    }

    while (v28 != v33);
  }

  v34 = v0[10];

  v41 = (v34 + *v34);
  v35 = v34[1];
  v36 = swift_task_alloc();
  v0[28] = v36;
  *v36 = v0;
  v36[1] = sub_2531C8D28;
  v37 = v0[18];
  v38 = v0[11];
  v39 = v0[3];

  return (v41)(v39, v37, v0 + 2, v27);
}

uint64_t sub_2531C8D28()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v6 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v4 = sub_2531C8FF4;
  }

  else
  {
    (*(v2[15] + 8))(v2[16], v2[14]);
    v4 = sub_2531C8E54;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2531C8E54()
{
  v17 = v0;
  v2 = v0[25];
  v1 = v0[26];
  sub_2531CB5BC(v0[18]);

  v3 = sub_2531DA254();
  v4 = sub_2531DAA94();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[25];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_253196608(*(v5 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix), *(v5 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix + 8), &v16);
    _os_log_impl(&dword_253166000, v3, v4, "%s cancel", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x259BFFA80](v7, -1, -1);
    MEMORY[0x259BFFA80](v6, -1, -1);
  }

  v8 = v0[27];
  v9 = v0[24];
  v10 = v0[21];
  v11 = v0[18];
  v12 = v0[16];
  v13 = *(v0[25] + 16);
  sub_2531DA374();

  v14 = v0[1];

  return v14();
}

uint64_t sub_2531C8FF4()
{
  v21 = v0;
  v1 = v0[25];
  v2 = v0[26];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];
  sub_2531CB5BC(v0[18]);
  (*(v4 + 8))(v3, v5);

  v6 = sub_2531DA254();
  v7 = sub_2531DAA94();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[25];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_253196608(*(v8 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix), *(v8 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix + 8), &v20);
    _os_log_impl(&dword_253166000, v6, v7, "%s cancel", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x259BFFA80](v10, -1, -1);
    MEMORY[0x259BFFA80](v9, -1, -1);
  }

  v11 = v0[27];
  v12 = v0[24];
  v13 = v0[21];
  v14 = v0[18];
  v15 = v0[16];
  v16 = *(v0[25] + 16);
  sub_2531DA374();

  v17 = v0[1];
  v18 = v0[29];

  return v17();
}

uint64_t NWAsyncConnection.connect<A>(parameters:endpoint:activity:on:logger:requestID:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = v14;
  v8[11] = v15;
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v9 = sub_2531DA2B4();
  v8[12] = v9;
  v10 = *(v9 - 8);
  v8[13] = v10;
  v11 = *(v10 + 64) + 15;
  v8[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2531C928C, 0, 0);
}

uint64_t sub_2531C928C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 80);
  v3 = *(v0 + 24);
  v14 = *(v0 + 64);
  v15 = *(v0 + 48);
  (*(*(v0 + 104) + 16))(*(v0 + 112), *(v0 + 32), *(v0 + 96));
  v4 = sub_2531DA394();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();

  v7 = sub_2531DA334();
  *(v0 + 120) = v7;
  v8 = swift_task_alloc();
  *(v0 + 128) = v8;
  *(v8 + 16) = v1;
  *(v8 + 24) = v7;
  *(v8 + 32) = v15;
  *(v8 + 48) = v14;
  *(v8 + 64) = v2;
  v9 = swift_task_alloc();
  *(v0 + 136) = v9;
  *v9 = v0;
  v9[1] = sub_2531C93D4;
  v10 = *(v0 + 88);
  v11 = *(v0 + 40);
  v12 = *(v0 + 16);

  return sub_2531C96BC(v12, v11, &unk_2531E8A88, v8);
}

uint64_t sub_2531C93D4()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v7 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_2531C955C;
  }

  else
  {
    v5 = *(v2 + 128);

    v4 = sub_2531C94F0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2531C94F0()
{
  v2 = v0[14];
  v1 = v0[15];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2531C955C()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];

  v4 = v0[1];
  v5 = v0[18];

  return v4();
}

uint64_t sub_2531C95D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_253170628;

  return static NWAsyncConnection.wrapping<A>(connection:on:logger:requestID:_:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_2531C96BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_2531DA294();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2531C9784, 0, 0);
}

uint64_t sub_2531C9784()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  sub_2531DA2F4();
  v9 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_2531C9884;
  v6 = v0[5];
  v7 = v0[2];

  return v9(v7);
}

uint64_t sub_2531C9884()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_2531C9A58;
  }

  else
  {
    v3 = sub_2531C9998;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2531C9998()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[3];
  (*(v2 + 104))(v1, *MEMORY[0x277CD8AC8], v3);
  sub_2531DA2A4();
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_2531C9A58()
{
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  v5 = v0[3];
  (*(v3 + 104))(v2, *MEMORY[0x277CD8AC0], v4);
  sub_2531DA2A4();
  (*(v3 + 8))(v2, v4);
  swift_willThrow();

  v6 = v0[1];
  v7 = v0[11];

  return v6();
}

uint64_t NWAsyncConnection.connect<A>(parameters:endpoint:on:logger:requestID:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v14;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  v9 = sub_2531DA2B4();
  v8[11] = v9;
  v10 = *(v9 - 8);
  v8[12] = v10;
  v11 = *(v10 + 64) + 15;
  v8[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2531C9C00, 0, 0);
}

uint64_t sub_2531C9C00()
{
  v1 = v0[3];
  (*(v0[12] + 16))(v0[13], v0[4], v0[11]);
  v2 = sub_2531DA394();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();

  v5 = sub_2531DA334();
  v0[14] = v5;
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_2531C9D04;
  v7 = v0[9];
  v8 = v0[10];
  v9 = v0[7];
  v10 = v0[8];
  v11 = v0[5];
  v12 = v0[6];
  v13 = v0[2];

  return static NWAsyncConnection.wrapping<A>(connection:on:logger:requestID:_:)(v13, v5, v11, v12, v9, v10, v7, v8);
}

uint64_t sub_2531C9D04()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_2531C9E84;
  }

  else
  {
    v3 = sub_2531C9E18;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2531C9E18()
{
  v2 = v0[13];
  v1 = v0[14];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2531C9E84()
{
  v2 = v0[13];
  v1 = v0[14];

  v3 = v0[1];
  v4 = v0[16];

  return v3();
}

uint64_t NWAsyncConnection.Outbound.write(content:contentContext:isComplete:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 72) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = *v4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v6;
  return MEMORY[0x2822009F8](sub_2531C9F1C, 0, 0);
}

uint64_t sub_2531C9F1C()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v10 = *(v0 + 16);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v10;
  *(v4 + 40) = v3;
  *(v4 + 48) = v1;
  v5 = *(MEMORY[0x277D85A10] + 4);
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_2531CA034;
  v7 = *(v0 + 40);
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200830](v6, &unk_2531E8AA8, v4, sub_2531CAE88, v7, 0, 0, v8);
}

uint64_t sub_2531CA034()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_2531867B8;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_2531CA150;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t NWAsyncConnection.Inbound.makeAsyncIterator()@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for NWAsyncConnection.Inbound(0);
  v4 = *&v1[*(v3 + 24)];
  os_unfair_lock_lock((v4 + 20));
  if (*(v4 + 16) == 1)
  {
    result = sub_2531DAD34();
    __break(1u);
  }

  else
  {
    *(v4 + 16) = 1;
    os_unfair_lock_unlock((v4 + 20));
    v5 = *v1;
    v6 = *(v3 + 20);
    v7 = type metadata accessor for NWAsyncConnection.Inbound.AsyncIterator(0);
    v8 = v7[5];
    v9 = sub_2531DA274();
    (*(*(v9 - 8) + 16))(&a1[v8], &v1[v6], v9);
    *&a1[v7[6]] = 0;
    a1[v7[7]] = 0;
    *a1 = v5;
  }

  return result;
}

uint64_t NWAsyncConnection.Inbound.AsyncIterator.next()(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_2531DA274();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2531CA36C, 0, 0);
}

uint64_t sub_2531CA36C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 56);
  v5 = type metadata accessor for NWAsyncConnection.Inbound.AsyncIterator(0);
  v6 = *(v5 + 20);
  v31 = *(v3 + 16);
  v32 = v4;
  v31(v1, v4 + v6, v2);
  v7 = sub_2531DA254();
  v8 = sub_2531DAA74();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_253166000, v7, v8, "Waiting for data on NW connection", v9, 2u);
    MEMORY[0x259BFFA80](v9, -1, -1);
  }

  v10 = *(v0 + 88);
  v11 = *(v0 + 64);
  v12 = *(v0 + 72);
  v13 = *(v0 + 56);

  v14 = *(v12 + 8);
  v14(v10, v11);
  v15 = *(v5 + 28);
  *(v0 + 44) = v15;
  if (*(v13 + v15) == 1)
  {
    v31(*(v0 + 80), v32 + v6, *(v0 + 64));
    v16 = sub_2531DA254();
    v17 = sub_2531DAA84();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_253166000, v16, v17, "Continuing iteration on NW connection that previously completed", v18, 2u);
      MEMORY[0x259BFFA80](v18, -1, -1);
    }

    v20 = *(v0 + 72);
    v19 = *(v0 + 80);
    v21 = *(v0 + 64);
    v22 = *(v0 + 48);

    v14(v19, v21);
    *v22 = 0;
    v22[1] = 0;
    v24 = *(v0 + 80);
    v23 = *(v0 + 88);
    v25 = *(v0 + 48);
    *(v25 + 16) = 1;
    *(v25 + 24) = 0;

    v26 = *(v0 + 8);

    return v26();
  }

  else
  {
    v28 = **(v0 + 56);
    v29 = *(MEMORY[0x277D85A10] + 4);
    v30 = swift_task_alloc();
    *(v0 + 96) = v30;
    *v30 = v0;
    v30[1] = sub_2531CA664;

    return MEMORY[0x282200830](v0 + 16, &unk_2531E8AB8, v28, sub_2531CAFA4, v28, 0, 0, &type metadata for NWConnectionReceived);
  }
}

uint64_t sub_2531CA664()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_2531CA81C;
  }

  else
  {
    v3 = sub_2531CA778;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2531CA778()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  if (v4 == 1)
  {
    *(*(v0 + 56) + *(v0 + 44)) = 1;
  }

  **(v0 + 48) = v2;
  v6 = *(v0 + 80);
  v5 = *(v0 + 88);
  v7 = *(v0 + 48);
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_2531CA81C()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[13];

  return v3();
}

uint64_t sub_2531CA888(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_253170160;

  return NWAsyncConnection.Inbound.AsyncIterator.next()(a1);
}

uint64_t sub_2531CA920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a2;
  v6 = swift_task_alloc();
  v4[6] = v6;
  *v6 = v4;
  v6[1] = sub_2531CA9C0;

  return NWAsyncConnection.Inbound.AsyncIterator.next()(a1);
}

uint64_t sub_2531CA9C0()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {
    if (v3[3])
    {
      v4 = v3[4];
      swift_getObjectType();
      v5 = sub_2531DA944();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    return MEMORY[0x2822009F8](sub_2531CAB30, v5, v7);
  }

  else
  {
    v8 = v3[1];

    return v8();
  }
}

uint64_t sub_2531CAB30()
{
  v1 = v0[7];
  v2 = v0[5];
  v0[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D758, &qword_2531E4FB0);
  swift_willThrowTypedImpl();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_2531CABD0@<X0>(char *a1@<X8>)
{
  NWAsyncConnection.Inbound.makeAsyncIterator()(a1);

  return sub_2531CB5BC(v1);
}

uint64_t sub_2531CABFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = v4[2];
  v11 = v4[3];
  v12 = v4[4];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_253170160;

  return sub_2531C85E8(a1, a2, a3, a4, v11);
}

uint64_t sub_2531CACE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_253170628;

  return sub_2531C95D4(a1, v5, v6, v7, v8, v9, v10, v4);
}

uint64_t sub_2531CADC0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_253170628;

  return sub_2531CD4C0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2531CAED0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2531CAF08(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_253170628;

  return sub_2531CE2C4(a1, v1);
}

uint64_t sub_2531CB054(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2531CB09C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_2531CB0F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

void sub_2531CB250()
{
  type metadata accessor for NWConnectionWrapper(319);
  if (v0 <= 0x3F)
  {
    sub_2531DA274();
    if (v1 <= 0x3F)
    {
      sub_2531CB2EC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2531CB2EC()
{
  if (!qword_27F58DF78)
  {
    v0 = sub_2531DA244();
    if (!v1)
    {
      atomic_store(v0, &qword_27F58DF78);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2531DA274();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_indexTm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2531DA274();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2531CB4B4()
{
  type metadata accessor for NWConnectionWrapper(319);
  if (v0 <= 0x3F)
  {
    sub_2531DA274();
    if (v1 <= 0x3F)
    {
      sub_2531CB558();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2531CB558()
{
  if (!qword_27F58DF90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F58D758, &qword_2531E4FB0);
    v0 = sub_2531DAAF4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F58DF90);
    }
  }
}

uint64_t sub_2531CB5BC(uint64_t a1)
{
  v2 = type metadata accessor for NWAsyncConnection.Inbound(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2531CB618(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D888, &unk_2531E5090);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v56 - v6;
  v8 = sub_2531DA204();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D890, &unk_2531E8E90);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v56 - v18;
  swift_beginAccess();
  if (*(v1 + 128) == 255)
  {
    v66 = v12;
    swift_beginAccess();
    v57 = v1;
    v20 = *(v1 + 112);
    v21 = *(v20 + 64);
    v59 = v20 + 64;
    v22 = 1 << *(v20 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v9;
    v25 = v23 & v21;
    v58 = (v22 + 63) >> 6;
    v62 = v4 + 16;
    v63 = v24 + 16;
    v61 = v24 + 32;
    v26 = (v4 + 32);
    v70 = v4;
    v71 = v20;
    v67 = v24;
    v72 = (v24 + 8);
    v73 = (v4 + 8);

    v27 = 0;
    v28 = v8;
    v74 = v8;
    v68 = v7;
    v69 = v3;
    v29 = v17;
    v30 = v26;
    v64 = v19;
    v65 = v29;
    v60 = v26;
    v75 = a1;
    if (v25)
    {
      while (1)
      {
        v31 = v27;
LABEL_13:
        v34 = __clz(__rbit64(v25));
        v25 &= v25 - 1;
        v35 = v34 | (v31 << 6);
        v36 = v71;
        v38 = v66;
        v37 = v67;
        (*(v67 + 16))(v66, *(v71 + 48) + *(v67 + 72) * v35, v28);
        v39 = *(v36 + 56);
        v40 = v28;
        v3 = v69;
        v41 = v70;
        v7 = v68;
        (*(v70 + 16))(v68, v39 + *(v70 + 72) * v35, v69);
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D898, &qword_2531E50A0);
        v43 = *(v42 + 48);
        v44 = *(v37 + 32);
        v29 = v65;
        v44(v65, v38, v40);
        v30 = v60;
        (*(v41 + 32))(v29 + v43, v7, v3);
        (*(*(v42 - 8) + 56))(v29, 0, 1, v42);
        v33 = v31;
        v19 = v64;
LABEL_14:
        sub_2531D0274(v29, v19, &qword_27F58D890, &unk_2531E8E90);
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D898, &qword_2531E50A0);
        v46 = (*(*(v45 - 8) + 48))(v19, 1, v45);
        v47 = v75;
        if (v46 == 1)
        {
          break;
        }

        (*v30)(v7, &v19[*(v45 + 48)], v3);
        v76 = v47;
        v48 = v47;
        sub_2531DA964();
        (*v73)(v7, v3);
        v28 = v74;
        (*v72)(v19, v74);
        v27 = v33;
        if (!v25)
        {
          goto LABEL_6;
        }
      }

      v50 = sub_2531B5608(MEMORY[0x277D84F90]);
      v51 = v57;
      v52 = *(v57 + 112);
      *(v57 + 112) = v50;

      v53 = *(v51 + 120);
      *(v51 + 120) = v47;
      v54 = *(v51 + 128);
      *(v51 + 128) = 1;
      v55 = v47;
      sub_2531886A8(v53, v54);
    }

    else
    {
LABEL_6:
      if (v58 <= v27 + 1)
      {
        v32 = v27 + 1;
      }

      else
      {
        v32 = v58;
      }

      v33 = v32 - 1;
      while (1)
      {
        v31 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v31 >= v58)
        {
          v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D898, &qword_2531E50A0);
          (*(*(v49 - 8) + 56))(v29, 1, 1, v49);
          v25 = 0;
          goto LABEL_14;
        }

        v25 = *(v59 + 8 * v31);
        ++v27;
        if (v25)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_2531CBBC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_2531CBBE8, a4, 0);
}

uint64_t sub_2531CBBE8()
{
  v1 = *(v0 + 16);
  sub_2531CB618(*(v0 + 24));
  v2 = *(v0 + 8);

  return v2();
}

void sub_2531CBC48(uint64_t a1)
{
  v2 = type metadata accessor for NWConnectionWrapper.State(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v172 = &v169 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F58D800, &qword_2531E4FD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v173 = (&v169 - v7);
  v8 = sub_2531DA4F4();
  v9 = *(v8 - 8);
  v180 = v8;
  v181 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v174 = &v169 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58E030, &qword_2531E8E58);
  v12 = *(*(v178 - 8) + 64);
  MEMORY[0x28223BE20](v178);
  v182 = &v169 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58E038, &qword_2531E8E60);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v177 = &v169 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58E040, &unk_2531E8E68);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v175 = &v169 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v179 = &v169 - v22;
  MEMORY[0x28223BE20](v21);
  v184 = &v169 - v23;
  v24 = sub_2531DA524();
  v187 = *(v24 - 8);
  v25 = *(v187 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v169 = &v169 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v176 = &v169 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v183 = (&v169 - v31);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v169 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = (&v169 - v35);
  v37 = sub_2531DA354();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  v40 = MEMORY[0x28223BE20](v37);
  v170 = &v169 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v171 = &v169 - v43;
  MEMORY[0x28223BE20](v42);
  v45 = &v169 - v44;
  v46 = *(v38 + 16);
  v46(&v169 - v44, a1, v37);
  v47 = (*(v38 + 88))(v45, v37);
  v48 = *MEMORY[0x277CD8DE8];
  v185 = v24;
  if (v47 == v48)
  {
    (*(v38 + 96))(v45, v37);
    v49 = v187;
    (*(v187 + 32))(v36, v45, v24);
    v50 = OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logger;
    v51 = *(v49 + 16);
    v51(v34, v36, v24);
    v52 = v186;

    v176 = v50;
    v53 = sub_2531DA254();
    v54 = sub_2531DAA84();

    v55 = v36;
    if (os_log_type_enabled(v53, v54))
    {
      v56 = swift_slowAlloc();
      v173 = swift_slowAlloc();
      v183 = swift_slowAlloc();
      v188[0] = v183;
      *v56 = 136315394;
      *(v56 + 4) = sub_253196608(*(v52 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix), *(v52 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix + 8), v188);
      *(v56 + 12) = 2112;
      sub_2531D022C(&qword_27F58E010, MEMORY[0x277CD8FC0]);
      swift_allocError();
      v51(v57, v34, v24);
      v58 = _swift_stdlib_bridgeErrorToNSError();
      v59 = *(v187 + 8);
      v59(v34, v24);
      *(v56 + 14) = v58;
      v60 = v173;
      *v173 = v58;
      _os_log_impl(&dword_253166000, v53, v54, "%s state changed to waiting error=%@", v56, 0x16u);
      sub_2531AC3F8(v60, &qword_27F58D2E8, &unk_2531E8370);
      MEMORY[0x259BFFA80](v60, -1, -1);
      v61 = v183;
      __swift_destroy_boxed_opaque_existential_1(v183);
      MEMORY[0x259BFFA80](v61, -1, -1);
      MEMORY[0x259BFFA80](v56, -1, -1);
    }

    else
    {

      v59 = *(v187 + 8);
      v59(v34, v24);
    }

    v79 = (v52 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_stateLock);
    os_unfair_lock_lock((v52 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_stateLock));
    v80 = v79 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DFD8, &qword_2531E8DF8) + 28);
    v183 = v55;
    sub_2531CF174(v80, v55, v52, v188);
    os_unfair_lock_unlock(v79);
    v81 = v184;
    if (LOBYTE(v188[0]) != 1)
    {
      goto LABEL_39;
    }

    v82 = v177;
    v173 = *(v52 + 16);
    sub_2531DA2D4();
    v83 = sub_2531DA514();
    v84 = *(v83 - 8);
    if ((*(v84 + 48))(v82, 1, v83) == 1)
    {
      sub_2531AC3F8(v82, &qword_27F58E038, &qword_2531E8E60);
      v85 = 1;
    }

    else
    {
      sub_2531DA504();
      (*(v84 + 8))(v82, v83);
      v85 = 0;
    }

    v98 = v181;
    v97 = v182;
    v99 = *(v181 + 56);
    v100 = v180;
    v99(v81, v85, 1, v180);
    v101 = v179;
    (*(v98 + 104))(v179, *MEMORY[0x277CD8F68], v100);
    v99(v101, 0, 1, v100);
    v102 = *(v178 + 48);
    sub_2531B5834(v81, v97, &qword_27F58E040, &unk_2531E8E68);
    v103 = v100;
    sub_2531B5834(v101, v97 + v102, &qword_27F58E040, &unk_2531E8E68);
    v104 = *(v98 + 48);
    if (v104(v97, 1, v100) == 1)
    {
      sub_2531AC3F8(v101, &qword_27F58E040, &unk_2531E8E68);
      v105 = v182;
      sub_2531AC3F8(v81, &qword_27F58E040, &unk_2531E8E68);
      if (v104(v105 + v102, 1, v100) == 1)
      {
        sub_2531AC3F8(v105, &qword_27F58E040, &unk_2531E8E68);
        v106 = v186;
LABEL_36:

        v126 = sub_2531DA254();
        v127 = sub_2531DAA94();

        if (os_log_type_enabled(v126, v127))
        {
          v128 = swift_slowAlloc();
          v129 = swift_slowAlloc();
          v188[0] = v129;
          *v128 = 136315138;
          *(v128 + 4) = sub_253196608(*(v106 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix), *(v106 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix + 8), v188);
          _os_log_impl(&dword_253166000, v126, v127, "%s cancel", v128, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v129);
          MEMORY[0x259BFFA80](v129, -1, -1);
          MEMORY[0x259BFFA80](v128, -1, -1);
        }

        sub_2531DA374();
        sub_2531DA324();
        goto LABEL_39;
      }
    }

    else
    {
      v108 = v175;
      sub_2531B5834(v97, v175, &qword_27F58E040, &unk_2531E8E68);
      if (v104(v97 + v102, 1, v100) != 1)
      {
        v121 = v181;
        v122 = v97 + v102;
        v123 = v174;
        (*(v181 + 32))(v174, v122, v100);
        sub_2531D022C(&qword_27F58E048, MEMORY[0x277CD8F80]);
        v124 = sub_2531DA6B4();
        v125 = *(v121 + 8);
        v125(v123, v103);
        sub_2531AC3F8(v101, &qword_27F58E040, &unk_2531E8E68);
        sub_2531AC3F8(v81, &qword_27F58E040, &unk_2531E8E68);
        v125(v175, v103);
        sub_2531AC3F8(v97, &qword_27F58E040, &unk_2531E8E68);
        v106 = v186;
        if (v124)
        {
          goto LABEL_36;
        }

LABEL_39:
        v59(v183, v185);
        return;
      }

      sub_2531AC3F8(v101, &qword_27F58E040, &unk_2531E8E68);
      v105 = v182;
      sub_2531AC3F8(v81, &qword_27F58E040, &unk_2531E8E68);
      (*(v181 + 8))(v108, v100);
    }

    sub_2531AC3F8(v105, &qword_27F58E030, &qword_2531E8E58);
    goto LABEL_39;
  }

  if (v47 == *MEMORY[0x277CD8DE0])
  {
    (*(v38 + 96))(v45, v37);
    v62 = v187;
    v63 = v183;
    v64 = v185;
    (*(v187 + 32))(v183, v45, v185);
    v65 = OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logger;
    v66 = *(v62 + 16);
    v67 = v176;
    v66(v176, v63, v64);
    v68 = v186;

    v69 = sub_2531DA254();
    v70 = sub_2531DAA84();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v184 = v65;
      v72 = v71;
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v188[0] = v74;
      *v72 = 136315394;
      *(v72 + 4) = sub_253196608(*(v186 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix), *(v186 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix + 8), v188);
      *(v72 + 12) = 2112;
      sub_2531D022C(&qword_27F58E010, MEMORY[0x277CD8FC0]);
      swift_allocError();
      v66(v75, v67, v185);
      v76 = _swift_stdlib_bridgeErrorToNSError();
      v77 = *(v62 + 8);
      v77(v67, v185);
      *(v72 + 14) = v76;
      *v73 = v76;
      v64 = v185;
      _os_log_impl(&dword_253166000, v69, v70, "%s state changed to failed error=%@", v72, 0x16u);
      sub_2531AC3F8(v73, &qword_27F58D2E8, &unk_2531E8370);
      v78 = v73;
      v68 = v186;
      MEMORY[0x259BFFA80](v78, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v74);
      MEMORY[0x259BFFA80](v74, -1, -1);
      MEMORY[0x259BFFA80](v72, -1, -1);
    }

    else
    {

      v77 = *(v62 + 8);
      v77(v67, v64);
    }

    v92 = sub_2531DA254();
    v93 = sub_2531DAA94();

    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v188[0] = v95;
      *v94 = 136315138;
      *(v94 + 4) = sub_253196608(*(v68 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix), *(v68 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix + 8), v188);
      _os_log_impl(&dword_253166000, v92, v93, "%s cancel", v94, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v95);
      MEMORY[0x259BFFA80](v95, -1, -1);
      MEMORY[0x259BFFA80](v94, -1, -1);
    }

    v96 = *(v68 + 16);
    sub_2531DA374();
    sub_2531DA324();
    v77(v183, v64);
    return;
  }

  if (v47 == *MEMORY[0x277CD8DD8])
  {
    v86 = v186;

    v87 = sub_2531DA254();
    v88 = sub_2531DAA74();

    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v188[0] = v90;
      *v89 = 136315138;
      *(v89 + 4) = sub_253196608(*(v86 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix), *(v86 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix + 8), v188);
      v91 = "%s state changed to setup";
LABEL_25:
      _os_log_impl(&dword_253166000, v87, v88, v91, v89, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v90);
      MEMORY[0x259BFFA80](v90, -1, -1);
      MEMORY[0x259BFFA80](v89, -1, -1);
      goto LABEL_26;
    }

    goto LABEL_26;
  }

  if (v47 == *MEMORY[0x277CD8DF8])
  {
    v107 = v186;

    v87 = sub_2531DA254();
    v88 = sub_2531DAA74();

    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v188[0] = v90;
      *v89 = 136315138;
      *(v89 + 4) = sub_253196608(*(v107 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix), *(v107 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix + 8), v188);
      v91 = "%s state changed to preparing";
      goto LABEL_25;
    }

LABEL_26:

    return;
  }

  if (v47 != *MEMORY[0x277CD8DD0])
  {
    if (v47 != *MEMORY[0x277CD8DF0])
    {
      v143 = v171;
      v46(v171, a1, v37);
      v144 = v186;

      v145 = sub_2531DA254();
      v146 = sub_2531DAA84();

      if (os_log_type_enabled(v145, v146))
      {
        v147 = swift_slowAlloc();
        LODWORD(v185) = v146;
        v148 = v147;
        v187 = swift_slowAlloc();
        v188[0] = v187;
        *v148 = 136315394;
        *(v148 + 4) = sub_253196608(*(v144 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix), *(v144 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix + 8), v188);
        *(v148 + 12) = 2082;
        v46(v170, v143, v37);
        v149 = sub_2531DA6F4();
        v150 = v143;
        v151 = v149;
        v153 = v152;
        v154 = *(v38 + 8);
        v154(v150, v37);
        v155 = sub_253196608(v151, v153, v188);

        *(v148 + 14) = v155;
        _os_log_impl(&dword_253166000, v145, v185, "%s state change to unexpected state=%{public}s", v148, 0x16u);
        v156 = v187;
        swift_arrayDestroy();
        MEMORY[0x259BFFA80](v156, -1, -1);
        MEMORY[0x259BFFA80](v148, -1, -1);
      }

      else
      {

        v154 = *(v38 + 8);
        v154(v143, v37);
      }

      v154(v45, v37);
      return;
    }

    v130 = v186;

    v131 = sub_2531DA254();
    v132 = sub_2531DAA74();

    if (os_log_type_enabled(v131, v132))
    {
      v133 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v188[0] = v134;
      *v133 = 136315138;
      *(v133 + 4) = sub_253196608(*(v130 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix), *(v130 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix + 8), v188);
      _os_log_impl(&dword_253166000, v131, v132, "%s state changed to cancelled", v133, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v134);
      MEMORY[0x259BFFA80](v134, -1, -1);
      MEMORY[0x259BFFA80](v133, -1, -1);
    }

    v135 = v185;
    v136 = v187;
    v137 = (v130 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_stateLock);
    os_unfair_lock_lock((v130 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_stateLock));
    v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DFD8, &qword_2531E8DF8);
    v139 = v172;
    sub_2531CFAE4(v137 + *(v138 + 28), v172);
    v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DFE0, &qword_2531E8E00);
    v141 = (*(*(v140 - 8) + 48))(v139, 2, v140);
    if (v141)
    {
      if (v141 != 1)
      {
        os_unfair_lock_unlock(v137);
LABEL_56:
        v167 = *(v130 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_readyEvent);
        if (!v167)
        {
          return;
        }

        v168 = sub_2531DA9B4();
        v118 = v173;
        (*(*(v168 - 8) + 56))(v173, 1, 1, v168);
        v119 = swift_allocObject();
        v119[2] = 0;
        v119[3] = 0;
        v119[4] = v167;

        v120 = &unk_2531E5000;
        goto LABEL_58;
      }

      sub_2531DA994();
      sub_2531D022C(&qword_27F58D8A0, MEMORY[0x277D85678]);
      v142 = swift_allocError();
      sub_2531DA5F4();
    }

    else
    {
      v157 = *(v136 + 32);
      v158 = v169;
      v157(v169, v139, v135);
      sub_2531D022C(&qword_27F58E010, MEMORY[0x277CD8FC0]);
      v142 = swift_allocError();
      v157(v159, v158, v135);
    }

    os_unfair_lock_unlock(v137);
    if (v142)
    {
      v160 = *(v130 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_readyEvent);
      if (!v160)
      {

        return;
      }

      v161 = sub_2531DA9B4();
      v162 = v173;
      (*(*(v161 - 8) + 56))(v173, 1, 1, v161);
      v163 = swift_allocObject();
      v163[2] = 0;
      v163[3] = 0;
      v163[4] = v160;
      v163[5] = v142;

      v164 = &unk_2531E8E80;
      v165 = v162;
      v166 = v163;
LABEL_59:
      sub_253187030(0, 0, v165, v164, v166);

      return;
    }

    goto LABEL_56;
  }

  v109 = v186;

  v110 = sub_2531DA254();
  v111 = sub_2531DAA74();

  if (os_log_type_enabled(v110, v111))
  {
    v112 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    v188[0] = v113;
    *v112 = 136315138;
    *(v112 + 4) = sub_253196608(*(v109 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix), *(v109 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix + 8), v188);
    _os_log_impl(&dword_253166000, v110, v111, "%s state changed to ready", v112, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v113);
    MEMORY[0x259BFFA80](v113, -1, -1);
    MEMORY[0x259BFFA80](v112, -1, -1);
  }

  v114 = (v109 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_stateLock);
  os_unfair_lock_lock((v109 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_stateLock));
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DFD8, &qword_2531E8DF8);
  sub_2531CF4EC(v114 + *(v115 + 28), v109);
  os_unfair_lock_unlock(v114);
  v116 = *(v109 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_readyEvent);
  if (v116)
  {
    v117 = sub_2531DA9B4();
    v118 = v173;
    (*(*(v117 - 8) + 56))(v173, 1, 1, v117);
    v119 = swift_allocObject();
    v119[2] = 0;
    v119[3] = 0;
    v119[4] = v116;

    v120 = &unk_2531E8E88;
LABEL_58:
    v164 = v120;
    v165 = v118;
    v166 = v119;
    goto LABEL_59;
  }
}

uint64_t sub_2531CD4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 80) = a6;
  *(v6 + 32) = a4;
  *(v6 + 40) = a5;
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  return MEMORY[0x2822009F8](sub_2531CD4E8, 0, 0);
}

uint64_t sub_2531CD4E8()
{
  v42 = v0;
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  *(v0 + 48) = OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logger;
  sub_2531AC91C(v3, v1);

  v5 = sub_2531DA254();
  v6 = sub_2531DAA74();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 32);
  if (v7)
  {
    v9 = *(v0 + 16);
    v10 = -1;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v41 = v12;
    *v11 = 136315906;
    v13 = sub_253196608(*(v9 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix), *(v9 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix + 8), &v41);
    *(v11 + 4) = v13;
    *(v11 + 12) = 2048;
    v20 = *(v0 + 32);
    if (v8 >> 60 == 15)
    {
LABEL_3:
      v21 = *(v0 + 80);
      v22 = *(v0 + 40);
      v23 = *(v0 + 24);
      *(v11 + 14) = v10;
      sub_2531AC968(v23, v20);
      *(v11 + 22) = 2080;
      v24 = sub_2531DA304();
      v26 = sub_253196608(v24, v25, &v41);

      *(v11 + 24) = v26;
      *(v11 + 32) = 1024;
      *(v11 + 34) = v21;
      _os_log_impl(&dword_253166000, v5, v6, "%s send content.count=%ld context=%s isComplete=%{BOOL}d", v11, 0x26u);
      swift_arrayDestroy();
      MEMORY[0x259BFFA80](v12, -1, -1);
      MEMORY[0x259BFFA80](v11, -1, -1);
      goto LABEL_5;
    }

    v32 = v20 >> 62;
    if ((v20 >> 62) > 1)
    {
      if (v32 != 2)
      {
        v10 = 0;
        goto LABEL_3;
      }

      v33 = *(*(v0 + 24) + 16);
      v34 = *(*(v0 + 24) + 24);
      v10 = v34 - v33;
      if (!__OFSUB__(v34, v33))
      {
        goto LABEL_3;
      }

      __break(1u);
    }

    else if (!v32)
    {
      v10 = BYTE6(v20);
      goto LABEL_3;
    }

    v35 = *(v0 + 24);
    v36 = *(v0 + 28);
    v37 = __OFSUB__(v36, v35);
    v38 = v36 - v35;
    if (v37)
    {
      __break(1u);
      return MEMORY[0x2822008A0](v13, v20, v14, v15, v16, v17, v18, v19);
    }

    v10 = v38;
    goto LABEL_3;
  }

  sub_2531AC968(*(v0 + 24), *(v0 + 32));
LABEL_5:

  v27 = *(v0 + 80);
  v29 = *(v0 + 32);
  v28 = *(v0 + 40);
  v40 = *(v0 + 16);
  v30 = swift_task_alloc();
  *(v0 + 56) = v30;
  *(v30 + 16) = v40;
  *(v30 + 32) = v29;
  *(v30 + 40) = v28;
  *(v30 + 48) = v27;
  v31 = *(MEMORY[0x277D85A40] + 4);
  v13 = swift_task_alloc();
  *(v0 + 64) = v13;
  *v13 = v0;
  v13[1] = sub_2531CD7DC;
  v17 = sub_2531CFBF4;
  v16 = 0x80000002531DD9C0;
  v19 = MEMORY[0x277D84F78] + 8;
  v20 = 0;
  v14 = 0;
  v15 = 0xD000000000000029;
  v18 = v30;

  return MEMORY[0x2822008A0](v13, v20, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_2531CD7DC()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_2531CDA40;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_2531CD8F8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2531CD8F8()
{
  v11 = v0;
  v1 = v0[6];
  v2 = v0[2];

  v3 = sub_2531DA254();
  v4 = sub_2531DAA74();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_253196608(*(v5 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix), *(v5 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix + 8), &v10);
    _os_log_impl(&dword_253166000, v3, v4, "%s send finished", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x259BFFA80](v7, -1, -1);
    MEMORY[0x259BFFA80](v6, -1, -1);
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_2531CDA40()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_2531CDAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v22 = a6;
  v21[3] = a4;
  v21[4] = a5;
  v21[2] = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D888, &unk_2531E5090);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v21 - v11;
  v13 = sub_2531DA314();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = (v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21[1] = *(a2 + 16);
  (*(v9 + 16))(v12, a1, v8);
  v18 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  (*(v9 + 32))(v19 + v18, v12, v8);
  *v17 = sub_2531CFC04;
  v17[1] = v19;
  (*(v14 + 104))(v17, *MEMORY[0x277CD8DB0], v13);

  sub_2531DA344();
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_2531CDCD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NWConnectionWrapper.State(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v53 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58E008, &unk_2531E8E20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v46 - v11;
  v13 = sub_2531DA524();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v54 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v46 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v46 - v21;
  sub_2531B5834(a1, v12, &qword_27F58E008, &unk_2531E8E20);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_2531AC3F8(v12, &qword_27F58E008, &unk_2531E8E20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D888, &unk_2531E5090);
    return sub_2531DA974();
  }

  else
  {
    v52 = a3;
    v49 = *(v14 + 32);
    v49(v22, v12, v13);
    v24 = v22;
    v25 = *(v14 + 16);
    v50 = v24;
    v25(v20);

    v26 = sub_2531DA254();
    v27 = sub_2531DAA84();

    v28 = os_log_type_enabled(v26, v27);
    v51 = v25;
    if (v28)
    {
      v29 = swift_slowAlloc();
      v48 = v14 + 32;
      v30 = v29;
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v55 = v47;
      *v30 = 136315394;
      *(v30 + 4) = sub_253196608(*(a2 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix), *(a2 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix + 8), &v55);
      *(v30 + 12) = 2112;
      sub_2531D022C(&qword_27F58E010, MEMORY[0x277CD8FC0]);
      swift_allocError();
      (v25)(v31, v20, v13);
      v32 = _swift_stdlib_bridgeErrorToNSError();
      v33 = *(v14 + 8);
      v33(v20, v13);
      *(v30 + 14) = v32;
      v34 = v46;
      *v46 = v32;
      _os_log_impl(&dword_253166000, v26, v27, "%s send failed error=%@", v30, 0x16u);
      sub_2531AC3F8(v34, &qword_27F58D2E8, &unk_2531E8370);
      MEMORY[0x259BFFA80](v34, -1, -1);
      v35 = v47;
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x259BFFA80](v35, -1, -1);
      MEMORY[0x259BFFA80](v30, -1, -1);
    }

    else
    {

      v33 = *(v14 + 8);
      v33(v20, v13);
    }

    v36 = v54;
    v37 = (a2 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_stateLock);
    os_unfair_lock_lock((a2 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_stateLock));
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DFD8, &qword_2531E8DF8);
    v39 = v53;
    sub_2531CFAE4(v37 + *(v38 + 28), v53);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DFE0, &qword_2531E8E00);
    v41 = (*(*(v40 - 8) + 48))(v39, 2, v40);
    v42 = v50;
    if (v41)
    {
      v43 = v51;
      (v51)(v36, v50, v13);
    }

    else
    {
      v49(v36, v39, v13);
      v43 = v51;
    }

    os_unfair_lock_unlock(v37);
    sub_2531D022C(&qword_27F58E010, MEMORY[0x277CD8FC0]);
    v44 = swift_allocError();
    v43(v45, v36, v13);
    v55 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D888, &unk_2531E5090);
    sub_2531DA964();
    v33(v36, v13);
    return (v33)(v42, v13);
  }
}

uint64_t sub_2531CE2C4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(type metadata accessor for NWConnectionWrapper.State(0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = sub_2531DA524();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58E000, &qword_2531E8E18);
  v2[9] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58E008, &unk_2531E8E20) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2531CE454, 0, 0);
}

uint64_t sub_2531CE454()
{
  v14 = v0;
  v1 = v0[3];
  v0[15] = OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logger;

  v2 = sub_2531DA254();
  v3 = sub_2531DAA74();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[3];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_253196608(*(v4 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix), *(v4 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix + 8), &v13);
    _os_log_impl(&dword_253166000, v2, v3, "%s receive", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x259BFFA80](v6, -1, -1);
    MEMORY[0x259BFFA80](v5, -1, -1);
  }

  v7 = *(MEMORY[0x277D859E0] + 4);
  v8 = swift_task_alloc();
  v0[16] = v8;
  *v8 = v0;
  v8[1] = sub_2531CE610;
  v10 = v0[9];
  v9 = v0[10];
  v11 = v0[3];

  return MEMORY[0x2822007B8](v9, 0, 0, 0x29287478656ELL, 0xE600000000000000, sub_2531CFADC, v11, v10);
}

uint64_t sub_2531CE610()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2531CE70C, 0, 0);
}

uint64_t sub_2531CE70C()
{
  v70 = v0;
  v1 = v0[14];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[3];
  v5 = *v3;
  v6 = *(v3 + 8);
  v67 = *(v3 + 16);
  v65 = *(v3 + 24);
  sub_2531D0274(v3 + *(v0[9] + 80), v1, &qword_27F58E008, &unk_2531E8E20);
  sub_2531B5834(v1, v2, &qword_27F58E008, &unk_2531E8E20);

  sub_2531AC91C(v5, v6);
  v7 = sub_2531DA254();
  v8 = sub_2531DAA74();

  v68 = v5;
  v66 = v6;
  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[3];
    v10 = -1;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v69 = v13;
    *v11 = 136315906;
    result = sub_253196608(*(v9 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix), *(v9 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix + 8), &v69);
    *(v11 + 4) = result;
    *(v11 + 12) = 2048;
    if (v6 >> 60 == 15)
    {
LABEL_3:
      v62 = v13;
      v16 = v0[12];
      v15 = v0[13];
      v17 = v5;
      v18 = v6;
      v20 = v0[5];
      v19 = v0[6];
      *(v11 + 14) = v10;
      sub_2531AC968(v17, v18);
      *(v11 + 22) = 1024;
      *(v11 + 24) = v65;
      *(v11 + 28) = 2112;
      sub_2531B5834(v15, v16, &qword_27F58E008, &unk_2531E8E20);
      v21 = (*(v19 + 48))(v16, 1, v20);
      v23 = v0[12];
      v22 = v0[13];
      if (v21 == 1)
      {
        sub_2531AC3F8(v0[12], &qword_27F58E008, &unk_2531E8E20);
        sub_2531AC3F8(v22, &qword_27F58E008, &unk_2531E8E20);
        v24 = 0;
      }

      else
      {
        v28 = v0[5];
        v27 = v0[6];
        sub_2531D022C(&qword_27F58E010, MEMORY[0x277CD8FC0]);
        swift_allocError();
        (*(v27 + 32))(v29, v23, v28);
        v24 = _swift_stdlib_bridgeErrorToNSError();
        sub_2531AC3F8(v22, &qword_27F58E008, &unk_2531E8E20);
      }

      *(v11 + 30) = v24;
      *v12 = v24;
      _os_log_impl(&dword_253166000, v7, v8, "%s receive finished data.count=%ld isComplete=%{BOOL}d error=%@", v11, 0x26u);
      sub_2531AC3F8(v12, &qword_27F58D2E8, &unk_2531E8370);
      MEMORY[0x259BFFA80](v12, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v62);
      MEMORY[0x259BFFA80](v62, -1, -1);
      MEMORY[0x259BFFA80](v11, -1, -1);

      v6 = v66;
      goto LABEL_11;
    }

    v26 = v6 >> 62;
    if ((v6 >> 62) > 1)
    {
      if (v26 != 2)
      {
        v10 = 0;
        goto LABEL_3;
      }

      v57 = *(v5 + 16);
      v56 = *(v5 + 24);
      v10 = v56 - v57;
      if (!__OFSUB__(v56, v57))
      {
        goto LABEL_3;
      }

      __break(1u);
    }

    else if (!v26)
    {
      v10 = BYTE6(v6);
      goto LABEL_3;
    }

    if (__OFSUB__(HIDWORD(v5), v5))
    {
      __break(1u);
      return result;
    }

    v10 = HIDWORD(v5) - v5;
    goto LABEL_3;
  }

  v25 = v0[13];
  sub_2531AC968(v5, v6);

  sub_2531AC3F8(v25, &qword_27F58E008, &unk_2531E8E20);
LABEL_11:
  v30 = v0[11];
  v31 = v0[5];
  v32 = v0[6];
  sub_2531B5834(v0[14], v30, &qword_27F58E008, &unk_2531E8E20);
  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {
    v33 = v0[13];
    v35 = v0[11];
    v34 = v0[12];
    v36 = v0[10];
    v58 = v0[8];
    v60 = v0[7];
    v63 = v0[4];
    v37 = v0[2];
    sub_2531AC3F8(v0[14], &qword_27F58E008, &unk_2531E8E20);
    sub_2531AC3F8(v35, &qword_27F58E008, &unk_2531E8E20);
    sub_2531AC968(0, 0xF000000000000000);
    *v37 = v68;
    *(v37 + 8) = v6;
    *(v37 + 16) = v67;
    *(v37 + 24) = v65;

    v38 = v0[1];
  }

  else
  {
    v40 = v0 + 4;
    v39 = v0[4];
    v41 = v0[3];
    v42 = *(v0[6] + 32);
    v42(v0[8], v0[11], v0[5]);
    v43 = (v41 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_stateLock);
    os_unfair_lock_lock(v43);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DFD8, &qword_2531E8DF8);
    sub_2531CFAE4(v43 + *(v44 + 28), v39);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DFE0, &qword_2531E8E00);
    v46 = (*(*(v45 - 8) + 48))(v39, 2, v45);
    v47 = v0[6];
    if (v46)
    {
      v42 = *(v47 + 16);
      v40 = v0 + 8;
    }

    v48 = *v40;
    v49 = v0[13];
    v50 = v0[14];
    v59 = v0[12];
    v61 = v0[11];
    v64 = v0[10];
    v51 = v0[7];
    v52 = v0[8];
    v53 = v0[5];
    v42(v51, v48, v53);
    os_unfair_lock_unlock(v43);
    sub_2531D022C(&qword_27F58E010, MEMORY[0x277CD8FC0]);
    swift_allocError();
    (*(v47 + 16))(v54, v51, v53);
    swift_willThrow();

    sub_2531AC968(v68, v66);
    v55 = *(v47 + 8);
    v55(v51, v53);
    v55(v52, v53);
    sub_2531AC3F8(v50, &qword_27F58E008, &unk_2531E8E20);

    v38 = v0[1];
  }

  return v38();
}

uint64_t sub_2531CEE04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58E018, &qword_2531E8E30);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v9 = *(a2 + 16);
  (*(v5 + 16))(&v13 - v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  sub_2531DA384();
}

uint64_t sub_2531CEF58(uint64_t a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58E000, &qword_2531E8E18);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v17 - v13;
  v15 = *(v12 + 88);
  *v14 = a1;
  *(v14 + 1) = a2;
  *(v14 + 2) = a3;
  v14[24] = a4;
  sub_2531B5834(a5, &v14[v15], &qword_27F58E008, &unk_2531E8E20);
  sub_2531AC91C(a1, a2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58E018, &qword_2531E8E30);
  return sub_2531DA974();
}

uint64_t sub_2531CF060(uint64_t a1, const char *a2)
{

  v4 = sub_2531DA254();
  v5 = sub_2531DAA94();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_253196608(*(a1 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix), *(a1 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix + 8), &v10);
    _os_log_impl(&dword_253166000, v4, v5, a2, v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x259BFFA80](v7, -1, -1);
    MEMORY[0x259BFFA80](v6, -1, -1);
  }

  v8 = *(a1 + 16);
  return sub_2531DA2E4();
}

void sub_2531CF174(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = type metadata accessor for NWConnectionWrapper.State(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2531CFAE4(a1, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DFE0, &qword_2531E8E00);
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 2, v12);
  if (v14)
  {
    if (v14 == 1)
    {
      sub_2531CFA80(a1);
      v15 = sub_2531DA524();
      (*(*(v15 - 8) + 16))(a1, a2, v15);
      (*(v13 + 56))(a1, 0, 2, v12);
      *a4 = 1;
    }

    else
    {

      v21 = sub_2531DA254();
      v22 = sub_2531DAA84();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v26 = v24;
        *v23 = 136315138;
        *(v23 + 4) = sub_253196608(*(a3 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix), *(a3 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix + 8), &v26);
        _os_log_impl(&dword_253166000, v21, v22, "%s Unexpected transition from 'connected' -> 'waiting' state? Ignoring.", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v24);
        MEMORY[0x259BFFA80](v24, -1, -1);
        MEMORY[0x259BFFA80](v23, -1, -1);
      }

      *a4 = 0;
    }
  }

  else
  {

    v16 = sub_2531DA254();
    v17 = sub_2531DAA84();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_253196608(*(a3 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix), *(a3 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix + 8), &v26);
      _os_log_impl(&dword_253166000, v16, v17, "%s Unexpected transition from 'waiting' -> 'waiting' state again? Ignoring.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x259BFFA80](v19, -1, -1);
      MEMORY[0x259BFFA80](v18, -1, -1);
    }

    *a4 = 1;
    v20 = sub_2531DA524();
    (*(*(v20 - 8) + 8))(v11, v20);
  }
}

void sub_2531CF4EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NWConnectionWrapper.State(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2531CFAE4(a1, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DFE0, &qword_2531E8E00);
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v7, 2, v8);
  if (!v10)
  {
    sub_2531CFA80(a1);
    v11 = sub_2531DA524();
    (*(*(v11 - 8) + 8))(v7, v11);
    goto LABEL_5;
  }

  if (v10 == 1)
  {
    sub_2531CFA80(a1);
LABEL_5:
    (*(v9 + 56))(a1, 2, 2, v8);
    return;
  }

  v12 = sub_2531DA254();
  v13 = sub_2531DAA84();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v17 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_253196608(*(a2 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix), *(a2 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix + 8), &v17);
    _os_log_impl(&dword_253166000, v12, v13, "%s Unexpected transition from 'ready' -> 'connected' state? Ignoring.", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x259BFFA80](v15, -1, -1);
    MEMORY[0x259BFFA80](v14, -1, -1);
  }
}

uint64_t sub_2531CF734()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logger;
  v3 = sub_2531DA274();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *&v0[OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix + 8];

  v5 = *&v0[OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_readyEvent];

  v6 = &v0[OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_stateLock];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DFD8, &qword_2531E8DF8);
  sub_2531CFA80(&v6[*(v7 + 28)]);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_2531CF850()
{
  v0 = sub_2531DA274();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_2531CF940();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_2531CF940()
{
  if (!qword_27F58DFD0)
  {
    type metadata accessor for NWConnectionWrapper.State(255);
    v0 = sub_2531DA224();
    if (!v1)
    {
      atomic_store(v0, &qword_27F58DFD0);
    }
  }
}

uint64_t sub_2531CF9E0()
{
  sub_2531CFA38();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_2531CFA38()
{
  if (!qword_27F58DFF8)
  {
    v0 = sub_2531DA524();
    if (!v1)
    {
      atomic_store(v0, &qword_27F58DFF8);
    }
  }
}

uint64_t sub_2531CFA80(uint64_t a1)
{
  v2 = type metadata accessor for NWConnectionWrapper.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2531CFAE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NWConnectionWrapper.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2531CFB48(uint64_t a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58E018, &qword_2531E8E30) - 8) + 80);

  return sub_2531CEF58(a1, a2, a3, a4, a5);
}

uint64_t sub_2531CFC04(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D888, &unk_2531E5090) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_2531CDCD8(a1, v4, v5);
}

uint64_t sub_2531CFC84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v39 = a2;
  v9 = type metadata accessor for NWConnectionWrapper.State(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (v5 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_stateLock);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DFE0, &qword_2531E8E00);
  (*(*(v14 - 8) + 56))(v12, 1, 2, v14);
  *v13 = 0;
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DFD8, &qword_2531E8DF8) + 28);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58E020, &unk_2531E8E48);
  bzero(v13 + v15, *(*(v16 - 8) + 64));
  sub_2531D00C4(v12, v13 + v15);
  *(v5 + 16) = a1;
  v17 = OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logger;
  v18 = sub_2531DA274();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v5 + v17, a3, v18);
  v41[0] = 0;
  v41[1] = 0xE000000000000000;

  sub_2531DABC4();

  strcpy(v41, "[NWConnection:");
  HIBYTE(v41[1]) = -18;
  v20 = sub_2531DA204();
  sub_2531D022C(&qword_27F58E028, MEMORY[0x277CC95F0]);
  v21 = sub_2531DAF34();
  MEMORY[0x259BFE570](v21);

  MEMORY[0x259BFE570](46, 0xE100000000000000);
  v40 = sub_2531DA2C4();
  v22 = sub_2531DAF34();
  MEMORY[0x259BFE570](v22);

  MEMORY[0x259BFE570](93, 0xE100000000000000);
  v23 = v41[1];
  v24 = (v5 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix);
  *v24 = v41[0];
  v24[1] = v23;

  v25 = sub_2531DA254();
  v26 = sub_2531DAA74();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v37 = a3;
    v38 = a4;
    v29 = v28;
    v41[0] = v28;
    *v27 = 136315138;
    v30 = v18;
    v31 = *v24;
    v32 = v24[1];

    v33 = sub_253196608(v31, v32, v41);

    *(v27 + 4) = v33;
    v18 = v30;
    _os_log_impl(&dword_253166000, v25, v26, "%s wrap", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    v34 = v29;
    a3 = v37;
    a4 = v38;
    MEMORY[0x259BFFA80](v34, -1, -1);
    MEMORY[0x259BFFA80](v27, -1, -1);
  }

  *(v5 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_readyEvent) = v39;
  v35 = *(v5 + 16);

  swift_retain_n();
  sub_2531DA324();

  (*(*(v20 - 8) + 8))(a4, v20);
  (*(v19 + 8))(a3, v18);
  return v5;
}

uint64_t sub_2531D00C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NWConnectionWrapper.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2531D012C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_253170160;

  return sub_2531CBBC8(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_13Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2531D022C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2531D0274(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t _s7Network12NWParametersC23HomeKitDaemonFoundationE30makeClientConnectionParametersyAcD23SPAKE2PlusConfigurationVFZ_0(__int128 *a1)
{
  v12 = *a1;
  v13 = a1[1];
  v14 = a1[2];
  v15 = a1[3];
  v1 = sub_2531DA464();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = sub_2531DA454();
  sub_2531DA444();
  sub_2531DA424();
  sub_2531DA494();
  nw_swift_tls_record_create_options();
  v5 = MEMORY[0x259BFE2F0]();
  swift_unknownObjectRelease();
  if (v5)
  {
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = v6;
      v8 = SPAKE2PlusConfiguration.makeClientIdentity()();
      v9 = sub_2531DA474();
      sec_protocol_options_set_local_identity(v9, v8);
      swift_unknownObjectRelease();
      sub_2531DA414();

      v10 = MEMORY[0x259BFE230](v7, v4);
      sub_2531DA3A4();
      sub_2531DA3E4();
      nw_parameters_set_indefinite();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return v10;
    }
  }

  result = sub_2531DAD34();
  __break(1u);
  return result;
}

uint64_t _s7Network12NWParametersC23HomeKitDaemonFoundationE28makeServerListenerParametersyAcD23SPAKE2PlusConfigurationVFZ_0(__int128 *a1)
{
  v12 = *a1;
  v13 = a1[1];
  v14 = a1[2];
  v15 = a1[3];
  v1 = sub_2531DA464();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = sub_2531DA454();
  sub_2531DA434();
  sub_2531DA494();
  nw_swift_tls_record_create_options();
  v5 = MEMORY[0x259BFE2F0]();
  swift_unknownObjectRelease();
  if (v5)
  {
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = v6;
      v8 = SPAKE2PlusConfiguration.makeServerIdentity()();
      v9 = sub_2531DA474();
      sec_protocol_options_set_local_identity(v9, v8);
      swift_unknownObjectRelease();
      sub_2531DA414();

      v10 = MEMORY[0x259BFE230](v7, v4);
      sub_2531DA3D4();

      swift_unknownObjectRelease();
      return v10;
    }
  }

  result = sub_2531DAD34();
  __break(1u);
  return result;
}

uint64_t _s7Network12NWParametersC23HomeKitDaemonFoundationE30makeClientConnectionParametersyAcD19TLSPSKConfigurationVFZ_0(uint64_t *a1)
{
  v44[2] = *MEMORY[0x277D85DE8];
  v2 = sub_2531DA5E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v43 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - v7;
  v9 = *a1;
  v10 = a1[1];
  v12 = a1[2];
  v11 = a1[3];
  v13 = sub_2531DA464();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_2531DA454();
  sub_2531DA434();
  sub_2531DA444();
  sub_2531DA424();
  v17 = sub_2531DA494();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = sub_2531DA484();
  v21 = sub_2531DA474();
  v22 = v11 >> 62;
  v42 = v21;
  if ((v11 >> 62) > 1)
  {
    if (v22 != 2)
    {
      memset(v44, 0, 14);
      goto LABEL_14;
    }

    v40 = v2;
    v23 = *(v12 + 16);
    v39 = *(v12 + 24);
    v24 = sub_2531DA044();
    v41 = v3;
    if (v24 && __OFSUB__(v23, sub_2531DA074()))
    {
      goto LABEL_35;
    }

    if (!__OFSUB__(v39, v23))
    {
      sub_2531DA064();
      sub_2531DA5D4();
      v2 = v40;
      v3 = v41;
      goto LABEL_15;
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (!v22)
  {
    v44[0] = v12;
    LOWORD(v44[1]) = v11;
    BYTE2(v44[1]) = BYTE2(v11);
    BYTE3(v44[1]) = BYTE3(v11);
    BYTE4(v44[1]) = BYTE4(v11);
    BYTE5(v44[1]) = BYTE5(v11);
LABEL_14:
    sub_2531DA5D4();
    goto LABEL_15;
  }

  v40 = v2;
  v41 = v3;
  if (v12 >> 32 < v12)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (sub_2531DA044() && __OFSUB__(v12, sub_2531DA074()))
  {
    goto LABEL_37;
  }

  v3 = v41;
  sub_2531DA064();
  sub_2531DA5D4();
  v2 = v40;
LABEL_15:
  v25 = sub_2531DA5C4();
  v28 = *(v3 + 8);
  v27 = v3 + 8;
  v26 = v28;
  v28(v8, v2);
  v29 = v10 >> 62;
  if ((v10 >> 62) <= 1)
  {
    if (!v29)
    {
      v44[0] = v9;
      LOWORD(v44[1]) = v10;
      BYTE2(v44[1]) = BYTE2(v10);
      BYTE3(v44[1]) = BYTE3(v10);
      BYTE4(v44[1]) = BYTE4(v10);
      BYTE5(v44[1]) = BYTE5(v10);
LABEL_28:
      v33 = v43;
      goto LABEL_29;
    }

    v41 = v27;
    if (v9 >> 32 >= v9)
    {
      if (!sub_2531DA044() || !__OFSUB__(v9, sub_2531DA074()))
      {
        sub_2531DA064();
        v33 = v43;
LABEL_29:
        sub_2531DA5D4();
        goto LABEL_30;
      }

LABEL_38:
      __break(1u);
    }

    goto LABEL_33;
  }

  if (v29 != 2)
  {
    memset(v44, 0, 14);
    goto LABEL_28;
  }

  v40 = v2;
  v31 = *(v9 + 16);
  v30 = *(v9 + 24);
  v32 = sub_2531DA044();
  v41 = v27;
  if (v32 && __OFSUB__(v31, sub_2531DA074()))
  {
    goto LABEL_36;
  }

  if (__OFSUB__(v30, v31))
  {
    goto LABEL_34;
  }

  sub_2531DA064();
  v33 = v43;
  sub_2531DA5D4();
  v2 = v40;
LABEL_30:
  v34 = sub_2531DA5C4();
  v26(v33, v2);
  sec_protocol_options_add_pre_shared_key(v42, v25, v34);

  swift_unknownObjectRelease();
  v35 = sub_2531DA474();
  sec_protocol_options_set_min_tls_protocol_version(v35, tls_protocol_version_TLSv12);
  swift_unknownObjectRelease();
  sub_2531DA414();

  v36 = MEMORY[0x259BFE230](v20, v16);
  sub_2531DA3A4();

  v37 = *MEMORY[0x277D85DE8];
  return v36;
}

uint64_t _s7Network12NWParametersC23HomeKitDaemonFoundationE28makeServerListenerParametersyAcD19TLSPSKConfigurationVFZ_0(uint64_t *a1)
{
  v42[2] = *MEMORY[0x277D85DE8];
  v2 = sub_2531DA5E4();
  v3 = *(v2 - 8);
  v40 = v2;
  v41 = v3;
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v37 - v8;
  v10 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  v12 = a1[3];
  v14 = sub_2531DA464();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = sub_2531DA454();
  sub_2531DA434();
  v18 = sub_2531DA494();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = sub_2531DA484();
  v22 = sub_2531DA474();
  v23 = v12 >> 62;
  v39 = v22;
  if ((v12 >> 62) > 1)
  {
    if (v23 != 2)
    {
      memset(v42, 0, 14);
      goto LABEL_14;
    }

    v38 = v17;
    v24 = *(v13 + 16);
    v25 = *(v13 + 24);
    if (sub_2531DA044() && __OFSUB__(v24, sub_2531DA074()))
    {
      goto LABEL_35;
    }

    if (!__OFSUB__(v25, v24))
    {
      sub_2531DA064();
      sub_2531DA5D4();
      v17 = v38;
      goto LABEL_15;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v23)
  {
    v38 = v17;
    if (v13 >> 32 >= v13)
    {
      if (sub_2531DA044() && __OFSUB__(v13, sub_2531DA074()))
      {
        goto LABEL_37;
      }

      v17 = v38;
      sub_2531DA064();
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_33;
  }

  v42[0] = v13;
  LOWORD(v42[1]) = v12;
  BYTE2(v42[1]) = BYTE2(v12);
  BYTE3(v42[1]) = BYTE3(v12);
  BYTE4(v42[1]) = BYTE4(v12);
  BYTE5(v42[1]) = BYTE5(v12);
LABEL_14:
  sub_2531DA5D4();
LABEL_15:
  v26 = sub_2531DA5C4();
  v27 = v40;
  v28 = v41 + 8;
  v29 = *(v41 + 8);
  v29(v9, v40);
  v30 = v11 >> 62;
  v41 = v28;
  if ((v11 >> 62) > 1)
  {
    if (v30 != 2)
    {
      memset(v42, 0, 14);
      goto LABEL_30;
    }

    v31 = *(v10 + 16);
    v10 = *(v10 + 24);
    if (sub_2531DA044() && __OFSUB__(v31, sub_2531DA074()))
    {
      goto LABEL_36;
    }

    if (!__OFSUB__(v10, v31))
    {
      goto LABEL_28;
    }

    __break(1u);
  }

  else if (!v30)
  {
    v42[0] = v10;
    LOWORD(v42[1]) = v11;
    BYTE2(v42[1]) = BYTE2(v11);
    BYTE3(v42[1]) = BYTE3(v11);
    BYTE4(v42[1]) = BYTE4(v11);
    BYTE5(v42[1]) = BYTE5(v11);
LABEL_30:
    sub_2531DA5D4();
    goto LABEL_31;
  }

  v38 = v17;
  if (v10 >> 32 < v10)
  {
    goto LABEL_34;
  }

  if (sub_2531DA044() && __OFSUB__(v10, sub_2531DA074()))
  {
LABEL_38:
    __break(1u);
  }

  v17 = v38;
LABEL_28:
  sub_2531DA064();
  sub_2531DA5D4();
  v27 = v40;
LABEL_31:
  v32 = sub_2531DA5C4();
  v29(v7, v27);
  sec_protocol_options_add_pre_shared_key(v39, v26, v32);

  swift_unknownObjectRelease();
  v33 = sub_2531DA474();
  sec_protocol_options_set_min_tls_protocol_version(v33, tls_protocol_version_TLSv12);
  swift_unknownObjectRelease();
  sub_2531DA414();

  v34 = MEMORY[0x259BFE230](v21, v17);
  sub_2531DA3D4();

  v35 = *MEMORY[0x277D85DE8];
  return v34;
}

uint64_t SPAKE2PlusConfiguration.makeClientIdentity()()
{
  v57[2] = *MEMORY[0x277D85DE8];
  v1 = sub_2531DA5E4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v55 = &v50 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v50 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v50 - v12;
  v14 = *v0;
  v15 = v0[1];
  v16 = v0[2];
  v17 = v0[3];
  v18 = v0[4];
  v54 = v0[5];
  v19 = v0[6];
  v56 = v0[7];
  v20 = v15 >> 62;
  v51 = v19;
  v52 = v18;
  if ((v15 >> 62) > 1)
  {
    if (v20 != 2)
    {
      memset(v57, 0, 14);
      goto LABEL_14;
    }

    v50 = v2;
    v53 = v1;
    v21 = *(v14 + 16);
    v22 = *(v14 + 24);
    if (sub_2531DA044() && __OFSUB__(v21, sub_2531DA074()))
    {
      goto LABEL_67;
    }

    if (!__OFSUB__(v22, v21))
    {
      sub_2531DA064();
      sub_2531DA5D4();
      v1 = v53;
      v2 = v50;
      goto LABEL_15;
    }

LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (!v20)
  {
    v57[0] = v14;
    LOWORD(v57[1]) = v15;
    BYTE2(v57[1]) = BYTE2(v15);
    BYTE3(v57[1]) = BYTE3(v15);
    BYTE4(v57[1]) = BYTE4(v15);
    BYTE5(v57[1]) = BYTE5(v15);
LABEL_14:
    sub_2531DA5D4();
    goto LABEL_15;
  }

  v50 = v6;
  v23 = v2;
  v53 = v1;
  v24 = v14;
  if (v14 >> 32 < v14)
  {
    __break(1u);
    goto LABEL_61;
  }

  if (sub_2531DA044() && __OFSUB__(v24, sub_2531DA074()))
  {
    goto LABEL_69;
  }

  v2 = v23;
  sub_2531DA064();
  sub_2531DA5D4();
  v1 = v53;
  v6 = v50;
LABEL_15:
  v25 = sub_2531DA5C4();
  v26 = *(v2 + 1);
  v26(v13, v1);
  v27 = v17 >> 62;
  v53 = v25;
  if ((v17 >> 62) <= 1)
  {
    if (!v27)
    {
      v57[0] = v16;
      LOWORD(v57[1]) = v17;
      BYTE2(v57[1]) = BYTE2(v17);
      BYTE3(v57[1]) = BYTE3(v17);
      BYTE4(v57[1]) = BYTE4(v17);
      BYTE5(v57[1]) = BYTE5(v17);
      goto LABEL_29;
    }

    goto LABEL_24;
  }

  if (v27 == 2)
  {
    v29 = *(v16 + 16);
    v28 = *(v16 + 24);
    if (sub_2531DA044() && __OFSUB__(v29, sub_2531DA074()))
    {
      goto LABEL_68;
    }

    v30 = __OFSUB__(v28, v29);
    v16 = v28 - v29;
    if (!v30)
    {
      goto LABEL_27;
    }

    __break(1u);
LABEL_24:
    if (v16 >> 32 >= v16)
    {
      if (sub_2531DA044() && __OFSUB__(v16, sub_2531DA074()))
      {
        goto LABEL_71;
      }

LABEL_27:
      sub_2531DA064();
      goto LABEL_29;
    }

LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  memset(v57, 0, 14);
LABEL_29:
  sub_2531DA5D4();
  v31 = sub_2531DA5C4();
  v26(v11, v1);
  v32 = v55;
  v33 = v54 >> 62;
  if ((v54 >> 62) > 1)
  {
    if (v33 != 2)
    {
      memset(v57, 0, 14);
      goto LABEL_42;
    }

    v50 = v31;
    v34 = *(v52 + 16);
    v35 = *(v52 + 24);
    if (sub_2531DA044() && __OFSUB__(v34, sub_2531DA074()))
    {
      goto LABEL_70;
    }

    if (!__OFSUB__(v35, v34))
    {
      sub_2531DA064();
      sub_2531DA5D4();
      v31 = v50;
      goto LABEL_43;
    }

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
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  if (!v33)
  {
    v57[0] = v52;
    LODWORD(v57[1]) = v54;
    WORD2(v57[1]) = WORD2(v54);
LABEL_42:
    sub_2531DA5D4();
    goto LABEL_43;
  }

  v50 = v26;
  v36 = v31;
  v37 = v52;
  if (v52 >> 32 < v52)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (sub_2531DA044() && __OFSUB__(v37, sub_2531DA074()))
  {
    goto LABEL_73;
  }

  v31 = v36;
  sub_2531DA064();
  sub_2531DA5D4();
  v26 = v50;
LABEL_43:
  v38 = sub_2531DA5C4();
  v26(v32, v1);
  v39 = v56 >> 62;
  if ((v56 >> 62) > 1)
  {
    if (v39 != 2)
    {
      memset(v57, 0, 14);
      goto LABEL_57;
    }

    v50 = v31;
    v40 = v6;
    v41 = *(v51 + 16);
    v42 = *(v51 + 24);
    if (sub_2531DA044() && __OFSUB__(v41, sub_2531DA074()))
    {
      goto LABEL_72;
    }

    if (!__OFSUB__(v42, v41))
    {
      sub_2531DA064();
      v6 = v40;
LABEL_55:
      sub_2531DA5D4();
      v31 = v50;
      goto LABEL_58;
    }

    goto LABEL_66;
  }

  if (v39)
  {
    v43 = v6;
    v44 = v51;
    if (v51 >> 32 >= v51)
    {
      v50 = v31;
      if (!sub_2531DA044() || !__OFSUB__(v44, sub_2531DA074()))
      {
        v6 = v43;
        sub_2531DA064();
        goto LABEL_55;
      }

LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
    }

    goto LABEL_65;
  }

  v57[0] = v51;
  LODWORD(v57[1]) = v56;
  WORD2(v57[1]) = WORD2(v56);
LABEL_57:
  sub_2531DA5D4();
LABEL_58:
  v45 = sub_2531DA5C4();
  v26(v6, v1);
  v46 = v53;
  client_SPAKE2PLUSV1_identity = sec_identity_create_client_SPAKE2PLUSV1_identity();

  if (!client_SPAKE2PLUSV1_identity)
  {
    goto LABEL_75;
  }

  v48 = *MEMORY[0x277D85DE8];
  return client_SPAKE2PLUSV1_identity;
}

uint64_t SPAKE2PlusConfiguration.makeServerIdentity()()
{
  v89[2] = *MEMORY[0x277D85DE8];
  v1 = sub_2531DA5E4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v79 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v82 = &v71 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v76 = &v71 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v80 = &v71 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v71 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v71 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v71 - v19;
  v21 = *v0;
  v22 = v0[1];
  v23 = v0[3];
  v85 = v0[2];
  v86 = v23;
  v24 = v0[5];
  v83 = v0[4];
  v84 = v24;
  v25 = v0[6];
  v81 = v0[7];
  v26 = v22 >> 62;
  v87 = v18;
  v78 = v22 >> 62;
  v73 = v25;
  if ((v22 >> 62) > 1)
  {
    if (v26 != 2)
    {
      memset(v89, 0, 14);
      goto LABEL_15;
    }

    v27 = *(v21 + 16);
    v28 = *(v21 + 24);
    if (sub_2531DA044() && __OFSUB__(v27, sub_2531DA074()))
    {
      goto LABEL_119;
    }

    if (!__OFSUB__(v28, v27))
    {
LABEL_13:
      sub_2531DA064();
      sub_2531DA5D4();
      v1 = v87;
      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    if (v21 >> 32 < v21)
    {
      __break(1u);
      goto LABEL_109;
    }

    if (sub_2531DA044() && __OFSUB__(v21, sub_2531DA074()))
    {
      goto LABEL_121;
    }

    goto LABEL_13;
  }

  if (v26)
  {
    goto LABEL_10;
  }

  v89[0] = v21;
  LOWORD(v89[1]) = v22;
  BYTE2(v89[1]) = BYTE2(v22);
  BYTE3(v89[1]) = BYTE3(v22);
  BYTE4(v89[1]) = BYTE4(v22);
  BYTE5(v89[1]) = BYTE5(v22);
LABEL_15:
  sub_2531DA5D4();
LABEL_16:
  v29 = sub_2531DA5C4();
  v30 = *(v2 + 8);
  v88 = v2 + 8;
  v30(v20, v1);
  v31 = v86 >> 62;
  v75 = v86 >> 62;
  v77 = v29;
  if ((v86 >> 62) > 1)
  {
    v32 = v84;
    if (v31 != 2)
    {
      memset(v89, 0, 14);
      goto LABEL_30;
    }

    v33 = *(v85 + 16);
    v34 = *(v85 + 24);
    if (sub_2531DA044() && __OFSUB__(v33, sub_2531DA074()))
    {
      goto LABEL_120;
    }

    if (!__OFSUB__(v34, v33))
    {
LABEL_28:
      sub_2531DA064();
      sub_2531DA5D4();
      v1 = v87;
      goto LABEL_31;
    }

    __break(1u);
    goto LABEL_25;
  }

  v32 = v84;
  if (v31)
  {
LABEL_25:
    v35 = v85;
    if (v85 >> 32 >= v85)
    {
      if (sub_2531DA044() && __OFSUB__(v35, sub_2531DA074()))
      {
        goto LABEL_123;
      }

      goto LABEL_28;
    }

LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v89[0] = v85;
  LODWORD(v89[1]) = v86;
  WORD2(v89[1]) = WORD2(v86);
LABEL_30:
  sub_2531DA5D4();
LABEL_31:
  v36 = sub_2531DA5C4();
  v30(v17, v1);
  v37 = v32 >> 62;
  v74 = v32 >> 62;
  if ((v32 >> 62) > 1)
  {
    if (v37 != 2)
    {
      memset(v89, 0, 14);
      goto LABEL_45;
    }

    v38 = *(v83 + 16);
    v39 = *(v83 + 24);
    if (sub_2531DA044() && __OFSUB__(v38, sub_2531DA074()))
    {
      goto LABEL_122;
    }

    if (!__OFSUB__(v39, v38))
    {
LABEL_43:
      sub_2531DA064();
      sub_2531DA5D4();
      v1 = v87;
      goto LABEL_46;
    }

    __break(1u);
    goto LABEL_40;
  }

  if (v37)
  {
LABEL_40:
    v40 = v83;
    if (v83 >> 32 >= v83)
    {
      if (sub_2531DA044() && __OFSUB__(v40, sub_2531DA074()))
      {
        goto LABEL_125;
      }

      goto LABEL_43;
    }

LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v89[0] = v83;
  LOWORD(v89[1]) = v32;
  BYTE2(v89[1]) = BYTE2(v32);
  BYTE3(v89[1]) = BYTE3(v32);
  BYTE4(v89[1]) = BYTE4(v32);
  BYTE5(v89[1]) = BYTE5(v32);
LABEL_45:
  sub_2531DA5D4();
LABEL_46:
  v41 = sub_2531DA5C4();
  v30(v14, v1);
  v42 = v81 >> 62;
  if ((v81 >> 62) > 1)
  {
    if (v42 != 2)
    {
      memset(v89, 0, 14);
      v43 = v80;
      goto LABEL_59;
    }

    v72 = v36;
    v44 = *(v73 + 16);
    v45 = *(v73 + 24);
    if (sub_2531DA044() && __OFSUB__(v44, sub_2531DA074()))
    {
      goto LABEL_124;
    }

    if (!__OFSUB__(v45, v44))
    {
      sub_2531DA064();
      v43 = v80;
      sub_2531DA5D4();
      v1 = v87;
      v36 = v72;
      goto LABEL_60;
    }

LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  v43 = v80;
  if (!v42)
  {
    v89[0] = v73;
    LODWORD(v89[1]) = v81;
    WORD2(v89[1]) = WORD2(v81);
LABEL_59:
    sub_2531DA5D4();
    goto LABEL_60;
  }

  v46 = v73;
  if (v73 >> 32 < v73)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v73 = v21;
  if (sub_2531DA044() && __OFSUB__(v46, sub_2531DA074()))
  {
    goto LABEL_127;
  }

  sub_2531DA064();
  v43 = v80;
  sub_2531DA5D4();
  v1 = v87;
  v21 = v73;
LABEL_60:
  v47 = sub_2531DA5C4();
  v30(v43, v1);
  v48 = v77;
  client_SPAKE2PLUSV1_identity = sec_identity_create_client_SPAKE2PLUSV1_identity();

  if (!client_SPAKE2PLUSV1_identity)
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v50 = sec_identity_copy_SPAKE2PLUSV1_server_password_verifier();
  if (!v50)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  v51 = v50;
  v52 = sec_identity_copy_SPAKE2PLUSV1_registration_record();
  if (!v52)
  {
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
  }

  v53 = v52;
  if (v78 > 1)
  {
    if (v78 != 2)
    {
      memset(v89, 0, 14);
      goto LABEL_76;
    }

    v55 = *(v21 + 16);
    v54 = *(v21 + 24);
    if (sub_2531DA044() && __OFSUB__(v55, sub_2531DA074()))
    {
      goto LABEL_126;
    }

    if (!__OFSUB__(v54, v55))
    {
      sub_2531DA064();
      v56 = v76;
      sub_2531DA5D4();
      v1 = v87;
      goto LABEL_78;
    }

LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  if (v78)
  {
    if (v21 >> 32 >= v21)
    {
      if (sub_2531DA044() && __OFSUB__(v21, sub_2531DA074()))
      {
        goto LABEL_129;
      }

      v1 = v87;
      sub_2531DA064();
      v56 = v76;
      goto LABEL_77;
    }

    goto LABEL_113;
  }

  v89[0] = v21;
  LOWORD(v89[1]) = v22;
  BYTE2(v89[1]) = BYTE2(v22);
  BYTE3(v89[1]) = BYTE3(v22);
  BYTE4(v89[1]) = BYTE4(v22);
  BYTE5(v89[1]) = BYTE5(v22);
LABEL_76:
  v56 = v76;
LABEL_77:
  sub_2531DA5D4();
LABEL_78:
  v57 = sub_2531DA5C4();
  v30(v56, v1);
  v58 = v82;
  if (v75 > 1)
  {
    if (v75 != 2)
    {
      memset(v89, 0, 14);
      goto LABEL_91;
    }

    v81 = v57;
    v59 = *(v85 + 16);
    v60 = *(v85 + 24);
    if (sub_2531DA044() && __OFSUB__(v59, sub_2531DA074()))
    {
      goto LABEL_128;
    }

    if (!__OFSUB__(v60, v59))
    {
      sub_2531DA064();
      v58 = v82;
      sub_2531DA5D4();
      v1 = v87;
      v57 = v81;
      goto LABEL_92;
    }

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
    goto LABEL_133;
  }

  if (!v75)
  {
    v89[0] = v85;
    LODWORD(v89[1]) = v86;
    WORD2(v89[1]) = WORD2(v86);
LABEL_91:
    sub_2531DA5D4();
    goto LABEL_92;
  }

  v61 = v85;
  if (v85 >> 32 < v85)
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v85 = client_SPAKE2PLUSV1_identity;
  if (sub_2531DA044() && __OFSUB__(v61, sub_2531DA074()))
  {
    goto LABEL_131;
  }

  v1 = v87;
  sub_2531DA064();
  v58 = v82;
  sub_2531DA5D4();
LABEL_92:
  v62 = sub_2531DA5C4();
  v30(v58, v1);
  if (v74 > 1)
  {
    if (v74 != 2)
    {
      memset(v89, 0, 14);
      v63 = v79;
      goto LABEL_105;
    }

    v64 = *(v83 + 16);
    v65 = *(v83 + 24);
    if (sub_2531DA044() && __OFSUB__(v64, sub_2531DA074()))
    {
      goto LABEL_130;
    }

    if (!__OFSUB__(v65, v64))
    {
      sub_2531DA064();
      v63 = v79;
      sub_2531DA5D4();
      v1 = v87;
      goto LABEL_106;
    }

    goto LABEL_118;
  }

  v63 = v79;
  if (v74)
  {
    v66 = v83;
    if (v83 >> 32 >= v83)
    {
      if (!sub_2531DA044() || !__OFSUB__(v66, sub_2531DA074()))
      {
        v1 = v87;
        sub_2531DA064();
        v63 = v79;
        goto LABEL_105;
      }

      goto LABEL_132;
    }

    goto LABEL_117;
  }

  v89[0] = v83;
  LOWORD(v89[1]) = v32;
  BYTE2(v89[1]) = BYTE2(v32);
  BYTE3(v89[1]) = BYTE3(v32);
  BYTE4(v89[1]) = BYTE4(v32);
  BYTE5(v89[1]) = BYTE5(v32);
LABEL_105:
  sub_2531DA5D4();
LABEL_106:
  v67 = sub_2531DA5C4();
  v30(v63, v1);
  server_SPAKE2PLUSV1_identity = sec_identity_create_server_SPAKE2PLUSV1_identity();

  if (!server_SPAKE2PLUSV1_identity)
  {
    goto LABEL_136;
  }

  swift_unknownObjectRelease();

  v69 = *MEMORY[0x277D85DE8];
  return server_SPAKE2PLUSV1_identity;
}

uint64_t SPAKE2PlusConfiguration.context.getter()
{
  v1 = *v0;
  sub_25316D050(*v0, *(v0 + 8));
  return v1;
}

uint64_t SPAKE2PlusConfiguration.context.setter(uint64_t a1, uint64_t a2)
{
  result = sub_25316D308(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t SPAKE2PlusConfiguration.clientIdentity.getter()
{
  v1 = *(v0 + 16);
  sub_25316D050(v1, *(v0 + 24));
  return v1;
}

uint64_t SPAKE2PlusConfiguration.clientIdentity.setter(uint64_t a1, uint64_t a2)
{
  result = sub_25316D308(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t SPAKE2PlusConfiguration.serverIdentity.getter()
{
  v1 = *(v0 + 32);
  sub_25316D050(v1, *(v0 + 40));
  return v1;
}

uint64_t SPAKE2PlusConfiguration.serverIdentity.setter(uint64_t a1, uint64_t a2)
{
  result = sub_25316D308(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t SPAKE2PlusConfiguration.password.getter()
{
  v1 = *(v0 + 48);
  sub_25316D050(v1, *(v0 + 56));
  return v1;
}

uint64_t SPAKE2PlusConfiguration.password.setter(uint64_t a1, uint64_t a2)
{
  result = sub_25316D308(*(v2 + 48), *(v2 + 56));
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t SPAKE2PlusConfiguration.init(context:clientIdentity:serverIdentity:password:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
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

uint64_t SPAKE2PlusConfiguration.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  sub_2531DA164();
  sub_2531DA164();
  sub_2531DA164();

  return sub_2531DA164();
}

uint64_t SPAKE2PlusConfiguration.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  sub_2531DB3F4();
  sub_2531DA164();
  sub_2531DA164();
  sub_2531DA164();
  sub_2531DA164();
  return sub_2531DB454();
}

uint64_t sub_2531D2B04()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  sub_2531DB3F4();
  sub_2531DA164();
  sub_2531DA164();
  sub_2531DA164();
  sub_2531DA164();
  return sub_2531DB454();
}

uint64_t sub_2531D2BA4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  sub_2531DA164();
  sub_2531DA164();
  sub_2531DA164();

  return sub_2531DA164();
}

uint64_t sub_2531D2C2C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  sub_2531DB3F4();
  sub_2531DA164();
  sub_2531DA164();
  sub_2531DA164();
  sub_2531DA164();
  return sub_2531DB454();
}

uint64_t _s23HomeKitDaemonFoundation23SPAKE2PlusConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v13 = a1[7];
  v14 = a1[6];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v11 = a2[7];
  if ((sub_25317DEF0(*a1, a1[1], *a2, a2[1]) & 1) == 0 || (sub_25317DEF0(v2, v3, v6, v7) & 1) == 0 || (sub_25317DEF0(v4, v5, v8, v9) & 1) == 0)
  {
    return 0;
  }

  return sub_25317DEF0(v14, v13, v10, v11);
}

unint64_t sub_2531D2DB8()
{
  result = qword_27F58E050;
  if (!qword_27F58E050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58E050);
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

uint64_t sub_2531D2E20(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 64))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2531D2E74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t String.authorityComponents.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58E058, &qword_2531E9118);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v16 - v6;
  v8 = sub_2531DA104();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = 0x2F2F3A70747468;
  v16[1] = 0xE700000000000000;
  MEMORY[0x259BFE570](a1, a2);
  sub_2531DA0F4();

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_2531D30E8(v7);
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v13 = sub_2531DA0D4();
    if (v14)
    {
      a1 = v13;
    }

    else
    {
    }

    sub_2531DA0E4();
    (*(v9 + 8))(v12, v8);
  }

  return a1;
}

uint64_t sub_2531D30E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58E058, &qword_2531E9118);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TLSPSKConfiguration.identity.getter()
{
  v1 = *v0;
  sub_25316D050(*v0, *(v0 + 8));
  return v1;
}

uint64_t TLSPSKConfiguration.identity.setter(uint64_t a1, uint64_t a2)
{
  result = sub_25316D308(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t TLSPSKConfiguration.password.getter()
{
  v1 = *(v0 + 16);
  sub_25316D050(v1, *(v0 + 24));
  return v1;
}

uint64_t TLSPSKConfiguration.password.setter(uint64_t a1, uint64_t a2)
{
  result = sub_25316D308(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t TLSPSKConfiguration.init(identity:password:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t static TLSPSKConfiguration.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if ((sub_25317DEF0(*a1, a1[1], *a2, a2[1]) & 1) == 0)
  {
    return 0;
  }

  return sub_25317DEF0(v2, v3, v4, v5);
}

uint64_t TLSPSKConfiguration.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_2531DA164();

  return sub_2531DA164();
}

uint64_t TLSPSKConfiguration.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_2531DB3F4();
  sub_2531DA164();
  sub_2531DA164();
  return sub_2531DB454();
}

uint64_t sub_2531D33A4()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_2531DB3F4();
  sub_2531DA164();
  sub_2531DA164();
  return sub_2531DB454();
}

uint64_t sub_2531D340C()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_2531DA164();

  return sub_2531DA164();
}

uint64_t sub_2531D345C()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_2531DB3F4();
  sub_2531DA164();
  sub_2531DA164();
  return sub_2531DB454();
}

uint64_t sub_2531D34C0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if ((sub_25317DEF0(*a1, a1[1], *a2, a2[1]) & 1) == 0)
  {
    return 0;
  }

  return sub_25317DEF0(v2, v3, v4, v5);
}

double static TLSPSKConfiguration.makeTLSConfigurationForHomeInstall(password:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{

  v6 = sub_2531D358C(a1, a2);
  result = 0.0;
  *a3 = xmmword_2531E9130;
  *(a3 + 16) = v6;
  *(a3 + 24) = v8;
  return result;
}

uint64_t sub_2531D358C(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58E068, &qword_2531E92C8);
  if (swift_dynamicCast())
  {
    sub_253168604(__src, &v42);
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    sub_2531DA094();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_1(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  sub_2531D4294(__src);
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
    v4 = sub_2531DAC54();
  }

  sub_2531D3A9C(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
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
  *&__src[0] = sub_2531D43B4(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v10 = sub_2531D3B64(sub_2531D4454);
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
        sub_2531DA134();
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

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_2531D40BC(v16, v14, v15);
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
      v8 = sub_2531DA754();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_2531DA784();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_2531DAC54();
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

    v16 = sub_2531D40BC(v16, v14, v15);
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

    v16 = sub_2531DA764();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      sub_2531DA144();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    sub_2531DA144();
    sub_2531AC968(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  sub_2531AC968(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_25316D050(*&__src[0], *(&__src[0] + 1));

  sub_25316D308(v32, *(&v32 + 1));
  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

uint64_t sub_2531D3A9C@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_2531D42FC(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_2531DA084();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_2531DA034();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_2531DA124();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_2531D3B64(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_25316D308(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_25316D308(v6, v5);
    *v3 = xmmword_2531E9130;
    sub_25316D308(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_2531DA044() && __OFSUB__(v6, sub_2531DA074()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_2531DA084();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_2531DA024();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_2531D4008(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_25316D308(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_2531E9130;
    sub_25316D308(0, 0xC000000000000000);
    sub_2531DA114();
    result = sub_2531D4008(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_2531D3F08@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
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
    result = sub_2531D42FC(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_2531D44BC(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_2531D4538(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_2531D3F9C(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
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

char *sub_2531D4008(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_2531DA044();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_2531DA074();
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

  v12 = sub_2531DA064();
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

uint64_t sub_2531D40BC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2531DA794();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x259BFE5A0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_2531D4138@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_2531DABD4();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
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

unint64_t sub_2531D418C()
{
  result = qword_27F58E060;
  if (!qword_27F58E060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58E060);
  }

  return result;
}

uint64_t sub_2531D41E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2531D4234(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_2531D4294(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58E070, &unk_2531E92D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2531D42FC(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
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
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2531D43B4(uint64_t result)
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
      v2 = sub_2531DA084();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_2531DA054();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_2531DA124();
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

void *sub_2531D4454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_2531D3F9C(sub_2531D45BC, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_2531D44BC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_2531DA084();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_2531DA034();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2531DA124();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_2531D4538(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_2531DA084();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_2531DA034();
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

uint64_t HomeInstall.SocketEncryption.serverNetworkParameters.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 32))
  {
    if (*(v0 + 32) == 1)
    {
      v5 = v0 + 16;
      v3 = *(v0 + 16);
      v4 = *(v5 + 8);
      v6 = sub_2531D358C(0xD000000000000013, 0x80000002531DDAF0);
      v8 = v7;

      v9 = sub_2531D358C(v3, v4);
      v11 = v10;

      *&v25 = v6;
      *(&v25 + 1) = v8;
      v26 = xmmword_2531E9130;
      *&v27 = v9;
      *(&v27 + 1) = v11;
      *&v28 = sub_2531D358C(v1, v2);
      *(&v28 + 1) = v12;
      v13 = _s7Network12NWParametersC23HomeKitDaemonFoundationE28makeServerListenerParametersyAcD23SPAKE2PlusConfigurationVFZ_0(&v25);
      v29 = v25;
      v30 = v26;
      v31 = v27;
      v32 = v28;
      sub_2531D5008(&v29);
    }

    else
    {
      sub_2531DA414();
      v13 = sub_2531DA3F4();
    }
  }

  else
  {
    v14 = *(v0 + 8);

    v29 = xmmword_2531E9130;
    *&v30 = sub_2531D358C(v1, v2);
    *(&v30 + 1) = v15;
    v13 = _s7Network12NWParametersC23HomeKitDaemonFoundationE28makeServerListenerParametersyAcD19TLSPSKConfigurationVFZ_0(&v29);
    v16 = v30;
    sub_25316D308(v29, *(&v29 + 1));
    sub_25316D308(v16, *(&v16 + 1));
  }

  sub_2531DA4B4();

  v17 = sub_2531DA4A4();
  v18 = sub_2531DA3C4();

  v19 = &v29;
  v21 = sub_2531DA3B4();
  if (!(*v20 >> 62))
  {
    goto LABEL_7;
  }

  if (*v20 < 0)
  {
    v24 = *v20;
  }

  if (sub_2531DAD44() < 0)
  {
    __break(1u);
  }

  else
  {
LABEL_7:
    sub_2531D5180(0, 0, v17, MEMORY[0x277CD8EE8]);

    v21(&v29, 0);

    sub_2531DA4E4();
    v18 = sub_2531DA4D4();
    sub_2531DA3C4();

    v19 = sub_2531DA3B4();
    if (!(*v22 >> 62))
    {
LABEL_8:
      sub_2531D5180(0, 0, v18, MEMORY[0x277CD8EE8]);

      (v19)(&v29, 0);

      sub_2531DA3E4();
      nw_parameters_set_server_mode();
      swift_unknownObjectRelease();
      sub_2531DA3E4();

      nw_parameters_set_attach_protocol_listener();
      swift_unknownObjectRelease();

      return v13;
    }
  }

  result = sub_2531DAD44();
  if ((result & 0x8000000000000000) == 0)
  {
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t HomeInstall.SocketEncryption.clientNetworkParameters.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 32))
  {
    if (*(v0 + 32) == 1)
    {
      v5 = v0 + 16;
      v3 = *(v0 + 16);
      v4 = *(v5 + 8);
      v6 = sub_2531D358C(0xD000000000000013, 0x80000002531DDAF0);
      v8 = v7;

      v9 = sub_2531D358C(v3, v4);
      v11 = v10;

      *&v25 = v6;
      *(&v25 + 1) = v8;
      v26 = xmmword_2531E9130;
      *&v27 = v9;
      *(&v27 + 1) = v11;
      *&v28 = sub_2531D358C(v1, v2);
      *(&v28 + 1) = v12;
      v13 = _s7Network12NWParametersC23HomeKitDaemonFoundationE30makeClientConnectionParametersyAcD23SPAKE2PlusConfigurationVFZ_0(&v25);
      v29 = v25;
      v30 = v26;
      v31 = v27;
      v32 = v28;
      sub_2531D5008(&v29);
    }

    else
    {
      sub_2531DA414();
      v13 = sub_2531DA3F4();
    }
  }

  else
  {
    v14 = *(v0 + 8);

    v29 = xmmword_2531E9130;
    *&v30 = sub_2531D358C(v1, v2);
    *(&v30 + 1) = v15;
    v13 = _s7Network12NWParametersC23HomeKitDaemonFoundationE30makeClientConnectionParametersyAcD19TLSPSKConfigurationVFZ_0(&v29);
    v16 = v30;
    sub_25316D308(v29, *(&v29 + 1));
    sub_25316D308(v16, *(&v16 + 1));
  }

  sub_2531DA4B4();

  v17 = sub_2531DA4A4();
  v18 = sub_2531DA3C4();

  v19 = &v29;
  v21 = sub_2531DA3B4();
  if (!(*v20 >> 62))
  {
    goto LABEL_7;
  }

  if (*v20 < 0)
  {
    v24 = *v20;
  }

  if (sub_2531DAD44() < 0)
  {
    __break(1u);
  }

  else
  {
LABEL_7:
    sub_2531D5180(0, 0, v17, MEMORY[0x277CD8EE8]);

    v21(&v29, 0);

    sub_2531DA4E4();
    v18 = sub_2531DA4D4();
    sub_2531DA3C4();

    v19 = sub_2531DA3B4();
    if (!(*v22 >> 62))
    {
LABEL_8:
      sub_2531D5180(0, 0, v18, MEMORY[0x277CD8EE8]);

      (v19)(&v29, 0);

      return v13;
    }
  }

  result = sub_2531DAD44();
  if ((result & 0x8000000000000000) == 0)
  {
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_2531D4BD4(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_2531DAD44();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_2531DAC04();
  *v1 = result;
  return result;
}

uint64_t _s23HomeKitDaemonFoundation0A7InstallO16SocketEncryptionO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  if (!*(a1 + 32))
  {
    if (!*(a2 + 32))
    {
      v19 = *a1;
      if (v3 == v8 && v2 == v7)
      {
        sub_2531D5340(v19, v2, v10, v9, 0);
        sub_2531D5340(v3, v2, v5, v4, 0);
        sub_2531D53A4(v3, v2, v5, v4, 0);
        v14 = v3;
        v15 = v2;
        v16 = v10;
        v17 = v9;
        v18 = 0;
        goto LABEL_28;
      }

      v21 = sub_2531DB144();
      sub_2531D5340(v8, v7, v10, v9, 0);
      sub_2531D5340(v3, v2, v5, v4, 0);
      sub_2531D53A4(v3, v2, v5, v4, 0);
      v22 = v8;
      v23 = v7;
      v24 = v10;
      v25 = v9;
      v26 = 0;
LABEL_25:
      sub_2531D53A4(v22, v23, v24, v25, v26);
      return v21 & 1;
    }

    goto LABEL_22;
  }

  if (v6 != 1)
  {
    if (v11 == 2 && (v7 | v8 | v10 | v9) == 0)
    {
      sub_2531D53A4(*a1, v2, v5, v4, 2);
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 2;
      goto LABEL_28;
    }

    goto LABEL_22;
  }

  if (v11 != 1)
  {
LABEL_22:
    sub_2531D5340(*a2, *(a2 + 8), v10, v9, v11);
    sub_2531D5340(v3, v2, v5, v4, v6);
    sub_2531D53A4(v3, v2, v5, v4, v6);
    v28 = v8;
    v29 = v7;
    v30 = v10;
    v31 = v9;
    v32 = v11;
LABEL_23:
    sub_2531D53A4(v28, v29, v30, v31, v32);
    return 0;
  }

  if (v3 != v8 || v2 != v7)
  {
    v13 = *a1;
    if ((sub_2531DB144() & 1) == 0)
    {
      sub_2531D5340(v8, v7, v10, v9, 1);
      sub_2531D5340(v3, v2, v5, v4, 1);
      sub_2531D53A4(v3, v2, v5, v4, 1);
      v28 = v8;
      v29 = v7;
      v30 = v10;
      v31 = v9;
      v32 = 1;
      goto LABEL_23;
    }
  }

  if (v5 != v10 || v4 != v9)
  {
    v21 = sub_2531DB144();
    sub_2531D5340(v8, v7, v10, v9, 1);
    sub_2531D5340(v3, v2, v5, v4, 1);
    sub_2531D53A4(v3, v2, v5, v4, 1);
    v22 = v8;
    v23 = v7;
    v24 = v10;
    v25 = v9;
    v26 = 1;
    goto LABEL_25;
  }

  sub_2531D5340(v8, v7, v5, v4, 1);
  sub_2531D5340(v3, v2, v5, v4, 1);
  sub_2531D53A4(v3, v2, v5, v4, 1);
  v14 = v8;
  v15 = v7;
  v16 = v5;
  v17 = v4;
  v18 = 1;
LABEL_28:
  sub_2531D53A4(v14, v15, v16, v17, v18);
  return 1;
}

uint64_t sub_2531D505C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void))
{
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v9 = a4;
  v5 = a3;
  v8 = a2;
  v13 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v10 = v6 + 4;
  v7 = &v6[a1 + 4];
  a5(0);
  result = swift_arrayDestroy();
  v15 = __OFSUB__(v5, v12);
  v12 = v5 - v12;
  if (v15)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v12)
  {
    v11 = v13 >> 62;
    if (!(v13 >> 62))
    {
      result = v6[2];
      v16 = result - v8;
      if (!__OFSUB__(result, v8))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_2531DAD44();
    v16 = result - v8;
    if (!__OFSUB__(result, v8))
    {
LABEL_6:
      v17 = &v7[v5];
      v18 = &v10[v8];
      if (v17 != v18 || v17 >= &v18[8 * v16])
      {
        memmove(v17, v18, 8 * v16);
      }

      if (v11)
      {
        result = sub_2531DAD44();
      }

      else
      {
        result = v6[2];
      }

      if (!__OFADD__(result, v12))
      {
        v6[2] = result + v12;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v5 > 0)
  {
    *v7 = v9;

    if (v5 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_2531D5180(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a4;
    v6 = a3;
    v7 = a2;
    v8 = a1;
    v9 = *v5;
    v10 = *v5 >> 62;
    if (!v10)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_2531DAD44();
  if (result < v7)
  {
    goto LABEL_13;
  }

LABEL_4:
  v12 = v7 - v8;
  if (__OFSUB__(v7, v8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = 1 - v12;
  if (__OFSUB__(1, v12))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v10)
  {
    v14 = sub_2531DAD44();
  }

  else
  {
    v14 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = __OFADD__(v14, v13);
  result = v14 + v13;
  if (!v15)
  {
    sub_2531D4BD4(result);
    return sub_2531D505C(v8, v7, 1, v6, v4);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_23HomeKitDaemonFoundation0A7InstallO16SocketEncryptionO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t sub_2531D5284(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2531D52CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_2531D5314(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_2531D5340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return result;
    }
  }
}

uint64_t sub_2531D53A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return result;
    }
  }
}

uint64_t static HomeInstall.jsonEncoder.getter()
{
  v0 = sub_2531D9FE4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2531DA014();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = sub_2531DA004();
  (*(v1 + 104))(v4, *MEMORY[0x277CC8778], v0);
  sub_2531D9FF4();
  return v8;
}

uint64_t static HomeInstall.jsonDecoder.getter()
{
  v0 = sub_2531D9FA4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2531D9FD4();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = sub_2531D9FC4();
  (*(v1 + 104))(v4, *MEMORY[0x277CC86D0], v0);
  sub_2531D9FB4();
  return v8;
}

double static SPAKE2PlusConfiguration.makeConfigurationForHomeInstall(password:serverIdentity:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_2531D358C(0xD000000000000013, 0x80000002531DDAF0);
  v12 = v11;

  v13 = sub_2531D358C(a3, a4);
  v15 = v14;

  v16 = sub_2531D358C(a1, a2);
  *a5 = v10;
  *(a5 + 8) = v12;
  result = 0.0;
  *(a5 + 16) = xmmword_2531E9130;
  *(a5 + 32) = v13;
  *(a5 + 40) = v15;
  *(a5 + 48) = v16;
  *(a5 + 56) = v18;
  return result;
}

uint64_t static MTR.Cluster.BasicInformation.readName(device:endpoint:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2531D99F0;

  return (sub_2531D8930)(a1, a2);
}

uint64_t static MTR.Cluster.BasicInformation.readModel(device:endpoint:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2531D99F0;

  return (sub_2531D8B80)(a1, a2);
}

uint64_t static MTR.Cluster.BasicInformation.readManufacturer(device:endpoint:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2531D58C4;

  return (sub_2531D8CBC)(a1, a2);
}

uint64_t sub_2531D58C4(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t static MTR.Cluster.BasicInformation.readFirmwareVersion(device:endpoint:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2531D99F0;

  return (sub_2531D8DF8)(a1, a2);
}

uint64_t static MTR.Cluster.BasicInformation.readFirmwareVersionNumber(device:endpoint:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2531D5B3C;

  return (sub_2531D8F34)(a1, a2);
}

uint64_t sub_2531D5B3C(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t static MTR.Cluster.BasicInformation.readSerialNumber(device:endpoint:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2531D99F0;

  return (sub_2531D91A0)(a1, a2);
}

uint64_t static MTR.Cluster.BasicInformation.readRequiredAttributes(device:endpoint:)(uint64_t a1, uint64_t a2, _WORD *a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 56) = *a3;
  return MEMORY[0x2822009F8](sub_2531D5D18, 0, 0);
}

uint64_t sub_2531D5D18()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58E078, &qword_2531E9488);
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = *(MEMORY[0x277D859B8] + 4);
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  v6[1] = sub_2531D5E28;
  v7 = *(v0 + 16);

  return MEMORY[0x282200740](v7, v3);
}

uint64_t sub_2531D5E28()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2531D5F64, 0, 0);
  }

  else
  {
    v4 = v3[4];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_2531D5F64()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_2531D5FC8(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  *(v4 + 106) = a4;
  *(v4 + 944) = a3;
  *(v4 + 936) = a2;
  *(v4 + 928) = a1;
  v5 = sub_2531DA274();
  *(v4 + 952) = v5;
  v6 = *(v5 - 8);
  *(v4 + 960) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 968) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58E088, &unk_2531E95C8);
  *(v4 + 976) = v8;
  v9 = *(v8 - 8);
  *(v4 + 984) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 992) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27F58D800, &qword_2531E4FD0) - 8) + 64) + 15;
  *(v4 + 1000) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2531D6134, 0, 0);
}

uint64_t sub_2531D6134()
{
  v1 = *(v0 + 1000);
  v19 = *(v0 + 992);
  v2 = *(v0 + 106);
  v3 = *(v0 + 944);
  v4 = *(v0 + 936);
  *(v0 + 204) = 1;
  v5 = sub_2531DA9B4();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  sub_25316B6E4(v3, v0 + 680);
  v7 = swift_allocObject();
  *(v7 + 16) = 0u;
  sub_253168604((v0 + 680), v7 + 32);
  *(v7 + 72) = v2;
  sub_2531D6F9C(v1, &unk_2531E95E0, v7);
  sub_2531AC3F8(v1, qword_27F58D800, &qword_2531E4FD0);
  v6(v1, 1, 1, v5);
  sub_25316B6E4(v3, v0 + 720);
  v8 = swift_allocObject();
  *(v8 + 16) = 0u;
  sub_253168604((v0 + 720), v8 + 32);
  *(v8 + 72) = v2;
  sub_2531D6F9C(v1, &unk_2531E95F0, v8);
  sub_2531AC3F8(v1, qword_27F58D800, &qword_2531E4FD0);
  v6(v1, 1, 1, v5);
  sub_25316B6E4(v3, v0 + 760);
  v9 = swift_allocObject();
  *(v9 + 16) = 0u;
  sub_253168604((v0 + 760), v9 + 32);
  *(v9 + 72) = v2;
  sub_2531D6F9C(v1, &unk_2531E9600, v9);
  sub_2531AC3F8(v1, qword_27F58D800, &qword_2531E4FD0);
  v6(v1, 1, 1, v5);
  sub_25316B6E4(v3, v0 + 800);
  v10 = swift_allocObject();
  *(v10 + 16) = 0u;
  sub_253168604((v0 + 800), v10 + 32);
  *(v10 + 72) = v2;
  sub_2531D6F9C(v1, &unk_2531E9610, v10);
  sub_2531AC3F8(v1, qword_27F58D800, &qword_2531E4FD0);
  v6(v1, 1, 1, v5);
  sub_25316B6E4(v3, v0 + 840);
  v11 = swift_allocObject();
  *(v11 + 16) = 0u;
  sub_253168604((v0 + 840), v11 + 32);
  *(v11 + 72) = v2;
  sub_2531D6F9C(v1, &unk_2531E9620, v11);
  sub_2531AC3F8(v1, qword_27F58D800, &qword_2531E4FD0);
  v6(v1, 1, 1, v5);
  sub_25316B6E4(v3, v0 + 880);
  v12 = swift_allocObject();
  *(v12 + 16) = 0u;
  sub_253168604((v0 + 880), v12 + 32);
  *(v12 + 72) = v2;
  sub_2531D6F9C(v1, &unk_2531E9630, v12);
  sub_2531AC3F8(v1, qword_27F58D800, &qword_2531E4FD0);
  v13 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58E078, &qword_2531E9488);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D758, &qword_2531E4FB0);
  sub_2531DA9C4();
  *(v0 + 105) = 1;
  *(v0 + 108) = 0;
  *(v0 + 1008) = 0u;
  *(v0 + 1024) = 0u;
  *(v0 + 1040) = 0u;
  *(v0 + 1056) = 0u;
  *(v0 + 1072) = 0u;
  v14 = *(MEMORY[0x277D85828] + 4);
  v15 = swift_task_alloc();
  *(v0 + 1088) = v15;
  *v15 = v0;
  v15[1] = sub_2531D660C;
  v16 = *(v0 + 992);
  v17 = *(v0 + 976);

  return MEMORY[0x2822004E8](v0 + 16, 0, 0, v17, v0 + 920);
}

uint64_t sub_2531D660C()
{
  v2 = *v1;
  v3 = *(*v1 + 1088);
  v11 = *v1;

  if (v0)
  {
    v4 = *(v2 + 1040);
    v5 = *(v2 + 1008);
    *(v2 + 592) = *(v2 + 1024);
    *(v2 + 608) = v4;
    v6 = *(v2 + 1072);
    *(v2 + 624) = *(v2 + 1056);
    *(v2 + 640) = v6;
    v7 = *(v2 + 105);
    v8 = *(v2 + 108);
    *(v2 + 204) = v7;
    *(v2 + 656) = v8;
    *(v2 + 660) = v7;
    *(v2 + 664) = v5;
    sub_2531D99B4(v2 + 592);
    v9 = sub_2531D6C7C;
  }

  else
  {
    v9 = sub_2531D6758;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2531D6758()
{
  *(v0 + 185) = *(v0 + 89);
  v1 = *(v0 + 64);
  *(v0 + 144) = *(v0 + 48);
  *(v0 + 160) = v1;
  *(v0 + 176) = *(v0 + 80);
  v2 = *(v0 + 32);
  *(v0 + 112) = *(v0 + 16);
  *(v0 + 128) = v2;
  v3 = *(v0 + 200);
  if (v3 != 255)
  {
    v4 = *(v0 + 112);
    if (v3)
    {
      v5 = *(v0 + 968);
      sub_2531DA264();
      v6 = *(v0 + 160);
      *(v0 + 240) = *(v0 + 144);
      *(v0 + 256) = v6;
      *(v0 + 272) = *(v0 + 176);
      *(v0 + 281) = *(v0 + 185);
      v7 = *(v0 + 128);
      *(v0 + 208) = *(v0 + 112);
      *(v0 + 224) = v7;
      sub_2531B5834(v0 + 208, v0 + 304, &qword_27F58E078, &qword_2531E9488);
      v8 = sub_2531DA254();
      v9 = sub_2531DAA84();
      sub_2531AC3F8(v0 + 112, &qword_27F58E090, &qword_2531E9640);
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        *v10 = 138412290;
        v12 = *(v0 + 160);
        *(v0 + 432) = *(v0 + 144);
        *(v0 + 448) = v12;
        *(v0 + 464) = *(v0 + 176);
        *(v0 + 473) = *(v0 + 185);
        v13 = *(v0 + 128);
        *(v0 + 400) = *(v0 + 112);
        *(v0 + 416) = v13;
        sub_2531B5834(v0 + 400, v0 + 496, &qword_27F58E078, &qword_2531E9488);
        v14 = _swift_stdlib_bridgeErrorToNSError();
        *(v10 + 4) = v14;
        *v11 = v14;
        _os_log_impl(&dword_253166000, v8, v9, "Task Failed with error %@", v10, 0xCu);
        sub_2531AC3F8(v11, &qword_27F58D2E8, &unk_2531E8370);
        MEMORY[0x259BFFA80](v11, -1, -1);
        MEMORY[0x259BFFA80](v10, -1, -1);
      }

      sub_2531AC3F8(v0 + 112, &qword_27F58E090, &qword_2531E9640);
      (*(*(v0 + 960) + 8))(*(v0 + 968), *(v0 + 952));
LABEL_24:
      v43 = *(MEMORY[0x277D85828] + 4);
      v44 = swift_task_alloc();
      *(v0 + 1088) = v44;
      *v44 = v0;
      v44[1] = sub_2531D660C;
      v45 = *(v0 + 992);
      v46 = *(v0 + 976);

      return MEMORY[0x2822004E8](v0 + 16, 0, 0, v46, v0 + 920);
    }

    v54 = *(v0 + 112);
    v28 = *(v0 + 192);
    v48 = *(v0 + 184);
    v29 = *(v0 + 176);
    v30 = *(v0 + 168);
    v50 = *(v0 + 160);
    v32 = *(v0 + 144);
    v31 = *(v0 + 152);
    v33 = *(v0 + 136);
    v52 = *(v0 + 128);
    v34 = *(v0 + 120);
    v35 = *(v0 + 180);
    v36 = *(v0 + 1032);
    if (v34)
    {
      v37 = *(v0 + 120);

      v36 = v34;
      v38 = *(v0 + 1048);
      if (v33)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v54 = *(v0 + 1024);
      v38 = *(v0 + 1048);
      if (v33)
      {
LABEL_11:

        v38 = v33;
        v39 = *(v0 + 1064);
        if (v31)
        {
          goto LABEL_12;
        }

        goto LABEL_16;
      }
    }

    v52 = *(v0 + 1040);
    v39 = *(v0 + 1064);
    if (v31)
    {
LABEL_12:

      v39 = v31;
      v40 = *(v0 + 1080);
      if (v30)
      {
LABEL_13:

        v40 = v30;
LABEL_18:
        if (v35)
        {
          v29 = *(v0 + 108);
        }

        v41 = v35 & *(v0 + 105);
        if (v28)
        {
          v42 = *(v0 + 1016);

          sub_2531AC3F8(v0 + 112, &qword_27F58E090, &qword_2531E9640);
          *(v0 + 1016) = v28;
          *(v0 + 1008) = v48;
        }

        else
        {
          sub_2531AC3F8(v0 + 112, &qword_27F58E090, &qword_2531E9640);
        }

        *(v0 + 105) = v41 & 1;
        *(v0 + 108) = v29;
        *(v0 + 1080) = v40;
        *(v0 + 1072) = v50;
        *(v0 + 1064) = v39;
        *(v0 + 1056) = v32;
        *(v0 + 1048) = v38;
        *(v0 + 1040) = v52;
        *(v0 + 1032) = v36;
        *(v0 + 1024) = v54;
        goto LABEL_24;
      }

LABEL_17:
      v50 = *(v0 + 1072);
      goto LABEL_18;
    }

LABEL_16:
    v32 = *(v0 + 1056);
    v40 = *(v0 + 1080);
    if (v30)
    {
      goto LABEL_13;
    }

    goto LABEL_17;
  }

  v15 = *(v0 + 108);
  v16 = *(v0 + 1016);
  v17 = *(v0 + 1008);
  v18 = *(v0 + 1000);
  v19 = *(v0 + 992);
  v20 = *(v0 + 984);
  v21 = *(v0 + 976);
  v22 = *(v0 + 968);
  v23 = *(v0 + 928);
  *(v0 + 204) = *(v0 + 105);
  v51 = *(v0 + 1056);
  v53 = *(v0 + 1024);
  v24 = *(v0 + 1072);
  v47 = v24;
  v49 = *(v0 + 1040);
  (*(v20 + 8))(v19, v21);
  v25 = *(v0 + 204);
  *v23 = v53;
  *(v23 + 16) = v49;
  *(v23 + 32) = v51;
  *(v23 + 48) = v47;
  *(v23 + 64) = v15;
  *(v23 + 68) = v25;
  *(v23 + 72) = v17;
  *(v23 + 80) = v16;

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_2531D6C7C()
{
  v1 = v0[125];
  v2 = v0[121];
  (*(v0[123] + 8))(v0[124], v0[122]);
  v3 = v0[115];

  v4 = v0[1];

  return v4();
}

uint64_t MTR.Cluster.BasicInformation.Information.init(name:model:manufacturer:firmwareVersion:firmwareVersionNumber:serialNumber:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, int a10, char a11, uint64_t a12, uint64_t a13)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 68) = a11 & 1;
  *(a9 + 72) = a12;
  *(a9 + 80) = a13;
  return result;
}

uint64_t sub_2531D6D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  *(v5 + 58) = a5;
  *(v5 + 16) = a1;
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = v5;
  v7[1] = sub_2531D6E08;

  return sub_2531D8930(a4, (v5 + 58));
}

uint64_t sub_2531D6E08(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 24);
  v8 = *v3;
  *(*v3 + 32) = v2;

  if (v2)
  {
    v9 = sub_2531D99E8;
  }

  else
  {
    *(v6 + 40) = a2;
    *(v6 + 48) = a1;
    v9 = sub_2531D6F3C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2531D6F3C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  *(v0 + 64) = 0;
  *(v3 + 8) = v2;
  *(v3 + 64) = 0;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 68) = 1;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  LOBYTE(v2) = *(v0 + 64);
  v4 = *(v0 + 16);
  *v4 = v1;
  *(v4 + 88) = v2;
  return (*(v0 + 8))();
}

uint64_t sub_2531D6F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F58D800, &qword_2531E4FD0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v20 - v9;
  sub_2531B5834(a1, v20 - v9, qword_27F58D800, &qword_2531E4FD0);
  v11 = sub_2531DA9B4();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_2531AC3F8(v10, qword_27F58D800, &qword_2531E4FD0);
    if (*(a3 + 16))
    {
LABEL_3:
      v13 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v14 = sub_2531DA944();
      v16 = v15;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_2531DA9A4();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
  v16 = 0;
LABEL_6:
  v17 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58E078, &qword_2531E9488);
  v18 = (v16 | v14);
  if (v16 | v14)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v14;
    v21[3] = v16;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v17;
  swift_task_create();
}

uint64_t sub_2531D7198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  *(v5 + 58) = a5;
  *(v5 + 16) = a1;
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = v5;
  v7[1] = sub_2531D7254;

  return sub_2531D8B80(a4, (v5 + 58));
}

uint64_t sub_2531D7254(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 24);
  v8 = *v3;
  *(*v3 + 32) = v2;

  if (v2)
  {
    v9 = sub_2531D73EC;
  }

  else
  {
    *(v6 + 40) = a2;
    *(v6 + 48) = a1;
    v9 = sub_2531D7388;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2531D7388()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  *(v0 + 64) = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  *(v3 + 64) = 0;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 68) = 1;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  LOBYTE(v1) = *(v0 + 64);
  v4 = *(v0 + 16);
  *v4 = *(v0 + 32);
  *(v4 + 88) = v1;
  return (*(v0 + 8))();
}

uint64_t sub_2531D73EC()
{
  *(v0 + 56) = 1;
  v1 = *(v0 + 16);
  *v1 = *(v0 + 32);
  *(v1 + 88) = 1;
  return (*(v0 + 8))();
}

uint64_t sub_2531D741C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  *(v5 + 58) = a5;
  *(v5 + 16) = a1;
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = v5;
  v7[1] = sub_2531D74D8;

  return sub_2531D8CBC(a4, (v5 + 58));
}

uint64_t sub_2531D74D8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 24);
  v8 = *v3;
  *(*v3 + 32) = v2;

  if (v2)
  {
    v9 = sub_2531D99E8;
  }

  else
  {
    *(v6 + 40) = a2;
    *(v6 + 48) = a1;
    v9 = sub_2531D760C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2531D760C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  *(v0 + 64) = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = v1;
  *(v3 + 64) = 0;
  *(v3 + 40) = v2;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 68) = 1;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  LOBYTE(v1) = *(v0 + 64);
  v4 = *(v0 + 16);
  *v4 = *(v0 + 32);
  *(v4 + 88) = v1;
  return (*(v0 + 8))();
}

uint64_t sub_2531D7670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  *(v5 + 58) = a5;
  *(v5 + 16) = a1;
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = v5;
  v7[1] = sub_2531D772C;

  return sub_2531D8DF8(a4, (v5 + 58));
}

uint64_t sub_2531D772C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 24);
  v8 = *v3;
  *(*v3 + 32) = v2;

  if (v2)
  {
    v9 = sub_2531D99E8;
  }

  else
  {
    *(v6 + 40) = a2;
    *(v6 + 48) = a1;
    v9 = sub_2531D7860;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2531D7860()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  *(v0 + 64) = 0;
  *(v3 + 8) = 0u;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0;
  *(v3 + 48) = v1;
  *(v3 + 56) = v2;
  *(v3 + 64) = 0;
  *(v3 + 68) = 1;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  LOBYTE(v1) = *(v0 + 64);
  v4 = *(v0 + 16);
  *v4 = *(v0 + 32);
  *(v4 + 88) = v1;
  return (*(v0 + 8))();
}

uint64_t sub_2531D78C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  *(v5 + 42) = a5;
  *(v5 + 16) = a1;
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = v5;
  v7[1] = sub_2531D7984;

  return sub_2531D8F34(a4, (v5 + 42));
}

uint64_t sub_2531D7984(int a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;
  *(*v2 + 32) = v1;

  if (v1)
  {
    v7 = sub_2531D7B10;
  }

  else
  {
    *(v4 + 44) = a1;
    v7 = sub_2531D7AAC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2531D7AAC()
{
  v1 = *(v0 + 44);
  v2 = *(v0 + 16);
  *(v0 + 48) = 0;
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0;
  *(v2 + 64) = v1;
  *(v2 + 68) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  LOBYTE(v1) = *(v0 + 48);
  v3 = *(v0 + 16);
  *v3 = *(v0 + 32);
  *(v3 + 88) = v1;
  return (*(v0 + 8))();
}

uint64_t sub_2531D7B10()
{
  *(v0 + 40) = 1;
  v1 = *(v0 + 16);
  *v1 = *(v0 + 32);
  *(v1 + 88) = 1;
  return (*(v0 + 8))();
}

uint64_t sub_2531D7B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  *(v5 + 58) = a5;
  *(v5 + 16) = a1;
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = v5;
  v7[1] = sub_2531D7BFC;

  return sub_2531D91A0(a4, (v5 + 58));
}

uint64_t sub_2531D7BFC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 24);
  v8 = *v3;
  *(*v3 + 32) = v2;

  if (v2)
  {
    v9 = sub_2531D99E8;
  }

  else
  {
    *(v6 + 40) = a2;
    *(v6 + 48) = a1;
    v9 = sub_2531D7D30;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2531D7D30()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  *(v0 + 64) = 0;
  *(v3 + 8) = 0u;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 52) = 0u;
  *(v3 + 68) = 1;
  *(v3 + 72) = v1;
  *(v3 + 80) = v2;
  LOBYTE(v1) = *(v0 + 64);
  v4 = *(v0 + 16);
  *v4 = *(v0 + 32);
  *(v4 + 88) = v1;
  return (*(v0 + 8))();
}

uint64_t MTR.Cluster.BasicInformation.Information.merge(with:)(uint64_t result)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  v4 = *(result + 24);
  v23 = v2;
  v24 = *(result + 32);
  v5 = *(result + 40);
  v6 = *(result + 48);
  v7 = *(result + 56);
  v8 = *(result + 64);
  v9 = *(result + 68);
  v11 = *(result + 72);
  v10 = *(result + 80);
  if (v3)
  {
    v21 = *(result + 48);
    v22 = *(result + 80);
    v12 = *result;
    v13 = *(result + 68);
    v14 = *(result + 64);
    v15 = *(result + 72);
    v16 = *(v1 + 8);

    v11 = v15;
    v8 = v14;
    v9 = v13;

    *v1 = v12;
    *(v1 + 8) = v3;
    v6 = v21;
    v10 = v22;
  }

  if (v4)
  {
    v17 = *(v1 + 24);

    *(v1 + 16) = v23;
    *(v1 + 24) = v4;
  }

  if (v5)
  {
    v18 = *(v1 + 40);

    *(v1 + 32) = v24;
    *(v1 + 40) = v5;
  }

  if (v7)
  {
    v19 = *(v1 + 56);

    *(v1 + 48) = v6;
    *(v1 + 56) = v7;
  }

  if ((v9 & 1) == 0)
  {
    *(v1 + 64) = v8;
    *(v1 + 68) = 0;
  }

  if (v10)
  {
    v20 = *(v1 + 80);

    *(v1 + 72) = v11;
    *(v1 + 80) = v10;
  }

  return result;
}

uint64_t MTR.Cluster.BasicInformation.Information.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MTR.Cluster.BasicInformation.Information.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MTR.Cluster.BasicInformation.Information.model.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MTR.Cluster.BasicInformation.Information.model.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t MTR.Cluster.BasicInformation.Information.manufacturer.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t MTR.Cluster.BasicInformation.Information.manufacturer.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t MTR.Cluster.BasicInformation.Information.firmwareVersion.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t MTR.Cluster.BasicInformation.Information.firmwareVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t MTR.Cluster.BasicInformation.Information.firmwareVersionNumber.setter(uint64_t result)
{
  *(v1 + 64) = result;
  *(v1 + 68) = BYTE4(result) & 1;
  return result;
}

uint64_t MTR.Cluster.BasicInformation.Information.serialNumber.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t MTR.Cluster.BasicInformation.Information.serialNumber.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t MTR.Cluster.BasicInformation.Information.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 56);
  v20 = *(v0 + 48);
  v21 = *(v0 + 68);
  v22 = *(v0 + 64);
  v8 = *(v0 + 80);
  v23 = *(v0 + 72);

  sub_2531DABC4();
  MEMORY[0x259BFE570](0xD000000000000017, 0x80000002531DDB10);
  if (v1)
  {
    v9 = v2;
  }

  else
  {
    v9 = 45;
  }

  if (!v1)
  {
    v1 = 0xE100000000000000;
  }

  MEMORY[0x259BFE570](v9, v1);

  MEMORY[0x259BFE570](0x3A6C65646F6D202CLL, 0xE900000000000020);
  if (v3)
  {
    v10 = v4;
  }

  else
  {
    v10 = 45;
  }

  if (v3)
  {
    v11 = v3;
  }

  else
  {
    v11 = 0xE100000000000000;
  }

  MEMORY[0x259BFE570](v10, v11);

  MEMORY[0x259BFE570](0xD000000000000010, 0x80000002531DDB30);
  if (v5)
  {
    v12 = v6;
  }

  else
  {
    v12 = 45;
  }

  if (v5)
  {
    v13 = v5;
  }

  else
  {
    v13 = 0xE100000000000000;
  }

  MEMORY[0x259BFE570](v12, v13);

  MEMORY[0x259BFE570](0xD000000000000013, 0x80000002531DDB50);
  if (v7)
  {
    v14 = v20;
  }

  else
  {
    v14 = 45;
  }

  if (v7)
  {
    v15 = v7;
  }

  else
  {
    v15 = 0xE100000000000000;
  }

  MEMORY[0x259BFE570](v14, v15);

  MEMORY[0x259BFE570](47, 0xE100000000000000);
  v16 = sub_2531DAF34();
  MEMORY[0x259BFE570](v16);

  MEMORY[0x259BFE570](0xD000000000000010, 0x80000002531DDB70);
  if (v8)
  {
    v17 = v23;
  }

  else
  {
    v17 = 45;
  }

  if (v8)
  {
    v18 = v8;
  }

  else
  {
    v18 = 0xE100000000000000;
  }

  MEMORY[0x259BFE570](v17, v18);

  MEMORY[0x259BFE570](41, 0xE100000000000000);
  return 0;
}

uint64_t MTR.Cluster.BasicInformation.Information.hash(into:)()
{
  v1 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[5];
  v5 = v0[7];
  v10 = *(v0 + 16);
  v6 = *(v0 + 68);
  v7 = v0[10];
  v11 = v0[6];
  v12 = v0[9];
  if (v0[1])
  {
    v8 = *v0;
    sub_2531DB414();
    sub_2531DA734();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_2531DB414();
    if (v3)
    {
LABEL_3:
      sub_2531DB414();
      sub_2531DA734();
      if (v4)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  sub_2531DB414();
  if (v4)
  {
LABEL_4:
    sub_2531DB414();
    sub_2531DA734();
    if (v5)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  sub_2531DB414();
  if (v5)
  {
LABEL_5:
    sub_2531DB414();
    sub_2531DA734();
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_14:
    sub_2531DB414();
    sub_2531DB434();
    if (v7)
    {
      goto LABEL_7;
    }

    return sub_2531DB414();
  }

LABEL_13:
  sub_2531DB414();
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_6:
  sub_2531DB414();
  if (!v7)
  {
    return sub_2531DB414();
  }

LABEL_7:
  sub_2531DB414();

  return sub_2531DA734();
}

uint64_t MTR.Cluster.BasicInformation.Information.hashValue.getter()
{
  sub_2531DB3F4();
  MTR.Cluster.BasicInformation.Information.hash(into:)();
  return sub_2531DB454();
}

uint64_t sub_2531D8600()
{
  sub_2531DB3F4();
  MTR.Cluster.BasicInformation.Information.hash(into:)();
  return sub_2531DB454();
}

uint64_t sub_2531D8644()
{
  sub_2531DB3F4();
  MTR.Cluster.BasicInformation.Information.hash(into:)();
  return sub_2531DB454();
}

BOOL _s23HomeKitDaemonFoundation3MTRO7ClusterO16BasicInformationO0H0V2eeoiySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a1 + 68);
  v12 = *(a1 + 72);
  v13 = *(a1 + 80);
  v14 = *(a2 + 8);
  v15 = *(a2 + 16);
  v17 = *(a2 + 24);
  v16 = *(a2 + 32);
  v19 = *(a2 + 40);
  v18 = *(a2 + 48);
  v20 = *(a2 + 56);
  v21 = *(a2 + 64);
  v22 = *(a2 + 68);
  v24 = *(a2 + 72);
  v23 = *(a2 + 80);
  if (v3)
  {
    if (!v14)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v14)
    {
      v59 = *(a2 + 32);
      v61 = *(a2 + 40);
      v56 = *(a2 + 68);
      v53 = *(a1 + 68);
      v51 = *(a1 + 64);
      v49 = *(a2 + 80);
      v50 = *(a2 + 72);
      v47 = *(a2 + 16);
      v48 = *(a1 + 80);
      v25 = *(a1 + 72);
      v63 = *(a1 + 48);
      v26 = *(a1 + 56);
      v27 = *(a2 + 56);
      v28 = *(a2 + 48);
      v29 = *(a1 + 40);
      v30 = *(a1 + 32);
      v31 = *(a1 + 16);
      v32 = sub_2531DB144();
      v4 = v31;
      v16 = v59;
      v19 = v61;
      v5 = v30;
      v8 = v29;
      v18 = v28;
      v20 = v27;
      v9 = v26;
      v7 = v63;
      v12 = v25;
      v15 = v47;
      v13 = v48;
      v23 = v49;
      v24 = v50;
      v10 = v51;
      v11 = v53;
      v22 = v56;
      if ((v32 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v14)
  {
    return 0;
  }

  if (v6)
  {
    if (!v17)
    {
      return 0;
    }

    if (v4 != v15 || v6 != v17)
    {
      v57 = v20;
      v60 = v16;
      v52 = v8;
      v54 = v12;
      v62 = v19;
      v64 = v7;
      v33 = v9;
      v34 = v18;
      v35 = v5;
      v36 = sub_2531DB144();
      v16 = v60;
      v19 = v62;
      v5 = v35;
      v8 = v52;
      v12 = v54;
      v18 = v34;
      v20 = v57;
      v9 = v33;
      v7 = v64;
      if ((v36 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  if (v8)
  {
    if (!v19)
    {
      return 0;
    }

    if (v5 != v16 || v8 != v19)
    {
      v58 = v22;
      v55 = v12;
      v37 = v7;
      v38 = v9;
      v39 = v20;
      v40 = v18;
      v41 = sub_2531DB144();
      v18 = v40;
      v20 = v39;
      v9 = v38;
      v7 = v37;
      v12 = v55;
      v22 = v58;
      if ((v41 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v19)
  {
    return 0;
  }

  if (v9)
  {
    if (!v20)
    {
      return 0;
    }

    if (v7 != v18 || v9 != v20)
    {
      v42 = v22;
      v43 = v12;
      v44 = sub_2531DB144();
      v12 = v43;
      v22 = v42;
      if ((v44 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v20)
  {
    return 0;
  }

  if (v11)
  {
    if (!v22)
    {
      return 0;
    }
  }

  else
  {
    if (v10 == v21)
    {
      v45 = v22;
    }

    else
    {
      v45 = 1;
    }

    if (v45)
    {
      return 0;
    }
  }

  if (v13)
  {
    return v23 && (v12 == v24 && v13 == v23 || (sub_2531DB144() & 1) != 0);
  }

  return !v23;
}

uint64_t sub_2531D8930(uint64_t a1, _WORD *a2)
{
  *(v2 + 56) = a1;
  *(v2 + 92) = *a2;
  return MEMORY[0x2822009F8](sub_2531D8958, 0, 0);
}

uint64_t sub_2531D8958()
{
  v1 = *(v0 + 92);
  v2 = *(v0 + 56);
  v4 = v2[3];
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v4);
  *(v0 + 80) = v1;
  *(v0 + 16) = xmmword_2531E2770;
  *(v0 + 84) = 0x500000028;
  *(v0 + 32) = 10;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_2531D8A6C;
  v6 = MEMORY[0x277D837D0];
  v7 = MEMORY[0x277D83808];
  v8 = MEMORY[0x277D837D0];

  return MTR.Device.readAttributeValue<A>(from:of:polling:)(v0 + 40, v0 + 80, v6, v0 + 16, v4, v8, v3, v7);
}

uint64_t sub_2531D8A6C()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_2531D99E4;
  }

  else
  {
    v3 = sub_2531D99EC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2531D8B80(uint64_t a1, _WORD *a2)
{
  *(v2 + 56) = a1;
  *(v2 + 92) = *a2;
  return MEMORY[0x2822009F8](sub_2531D8BA8, 0, 0);
}

uint64_t sub_2531D8BA8()
{
  v1 = *(v0 + 92);
  v2 = *(v0 + 56);
  v4 = v2[3];
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v4);
  *(v0 + 80) = v1;
  *(v0 + 16) = xmmword_2531E2770;
  *(v0 + 84) = 0x300000028;
  *(v0 + 32) = 10;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_2531D8A6C;
  v6 = MEMORY[0x277D837D0];
  v7 = MEMORY[0x277D83808];
  v8 = MEMORY[0x277D837D0];

  return MTR.Device.readAttributeValue<A>(from:of:polling:)(v0 + 40, v0 + 80, v6, v0 + 16, v4, v8, v3, v7);
}

uint64_t sub_2531D8CBC(uint64_t a1, _WORD *a2)
{
  *(v2 + 56) = a1;
  *(v2 + 92) = *a2;
  return MEMORY[0x2822009F8](sub_2531D8CE4, 0, 0);
}

uint64_t sub_2531D8CE4()
{
  v1 = *(v0 + 92);
  v2 = *(v0 + 56);
  v4 = v2[3];
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v4);
  *(v0 + 80) = v1;
  *(v0 + 16) = xmmword_2531E2770;
  *(v0 + 84) = 0x100000028;
  *(v0 + 32) = 10;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_25317508C;
  v6 = MEMORY[0x277D837D0];
  v7 = MEMORY[0x277D83808];
  v8 = MEMORY[0x277D837D0];

  return MTR.Device.readAttributeValue<A>(from:of:polling:)(v0 + 40, v0 + 80, v6, v0 + 16, v4, v8, v3, v7);
}

uint64_t sub_2531D8DF8(uint64_t a1, _WORD *a2)
{
  *(v2 + 56) = a1;
  *(v2 + 92) = *a2;
  return MEMORY[0x2822009F8](sub_2531D8E20, 0, 0);
}

uint64_t sub_2531D8E20()
{
  v1 = *(v0 + 92);
  v2 = *(v0 + 56);
  v4 = v2[3];
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v4);
  *(v0 + 80) = v1;
  *(v0 + 16) = xmmword_2531E2770;
  *(v0 + 84) = 0xA00000028;
  *(v0 + 32) = 10;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_2531D8A6C;
  v6 = MEMORY[0x277D837D0];
  v7 = MEMORY[0x277D83808];
  v8 = MEMORY[0x277D837D0];

  return MTR.Device.readAttributeValue<A>(from:of:polling:)(v0 + 40, v0 + 80, v6, v0 + 16, v4, v8, v3, v7);
}

uint64_t sub_2531D8F34(uint64_t a1, _WORD *a2)
{
  *(v2 + 40) = a1;
  *(v2 + 80) = *a2;
  return MEMORY[0x2822009F8](sub_2531D8F5C, 0, 0);
}

uint64_t sub_2531D8F5C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 40);
  v4 = v2[3];
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v4);
  *(v0 + 64) = v1;
  *(v0 + 16) = xmmword_2531E2770;
  *(v0 + 68) = 0x900000028;
  *(v0 + 32) = 10;
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_2531D9070;
  v6 = MEMORY[0x277D84CC0];
  v7 = MEMORY[0x277D84CF0];
  v8 = MEMORY[0x277D84CC0];

  return MTR.Device.readAttributeValue<A>(from:of:polling:)(v0 + 76, v0 + 64, v6, v0 + 16, v4, v8, v3, v7);
}

uint64_t sub_2531D9070()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_2531748A0;
  }

  else
  {
    v3 = sub_2531D9184;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2531D91A0(uint64_t a1, _WORD *a2)
{
  *(v2 + 56) = a1;
  *(v2 + 92) = *a2;
  return MEMORY[0x2822009F8](sub_2531D91C8, 0, 0);
}

uint64_t sub_2531D91C8()
{
  v1 = *(v0 + 92);
  v2 = *(v0 + 56);
  v4 = v2[3];
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v4);
  *(v0 + 80) = v1;
  *(v0 + 16) = xmmword_2531E2770;
  *(v0 + 84) = 0xF00000028;
  *(v0 + 32) = 10;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_2531D8A6C;
  v6 = MEMORY[0x277D837D0];
  v7 = MEMORY[0x277D83808];
  v8 = MEMORY[0x277D837D0];

  return MTR.Device.readAttributeValue<A>(from:of:polling:)(v0 + 40, v0 + 80, v6, v0 + 16, v4, v8, v3, v7);
}

uint64_t sub_2531D92DC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_253170628;

  return sub_2531D5FC8(a1, a2, v6, v7);
}

unint64_t sub_2531D9398()
{
  result = qword_27F58E080;
  if (!qword_27F58E080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58E080);
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2531D9420(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 88))
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

uint64_t sub_2531D947C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2531D94F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 72);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_253170628;

  return sub_2531D6D4C(a1, v4, v5, v1 + 32, v6);
}

uint64_t sub_2531D95B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 72);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_253170160;

  return sub_2531D7198(a1, v4, v5, v1 + 32, v6);
}

uint64_t sub_2531D9674(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 72);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_253170628;

  return sub_2531D741C(a1, v4, v5, v1 + 32, v6);
}

uint64_t sub_2531D9734(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 72);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_253170628;

  return sub_2531D7670(a1, v4, v5, v1 + 32, v6);
}

uint64_t sub_2531D97F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 72);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_253170628;

  return sub_2531D78C8(a1, v4, v5, v1 + 32, v6);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 74, 7);
}

uint64_t sub_2531D98F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 72);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_253170628;

  return sub_2531D7B40(a1, v4, v5, v1 + 32, v6);
}

uint64_t sub_2531D9A14()
{
  v0 = sub_2531DA274();
  __swift_allocate_value_buffer(v0, qword_27F59A2A8);
  __swift_project_value_buffer(v0, qword_27F59A2A8);
  v1 = *MEMORY[0x277D0F1A8];
  sub_2531DA6D4();
  return sub_2531DA264();
}

void static MTR.accessGrant(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 subjectID];
  if (v4)
  {
    v5 = v4;
    MTR.Node.ID.init(rawValue:)([v4 unsignedLongLongValue], &v10);
    v6 = v10;
    v7 = v11;
    v8 = [a1 grantedPrivilege];

    v9 = v7 | (v8 << 8);
  }

  else
  {
    v6 = [a1 grantedPrivilege];
    v9 = 128;
  }

  *a2 = v6;
  *(a2 + 8) = v9;
}

uint64_t MTR.AccessGrant.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1)
    {
      MEMORY[0x259BFF230](1);
      sub_2531DB424();
    }

    else
    {
      MEMORY[0x259BFF230](2);
    }
  }

  else
  {
    MEMORY[0x259BFF230](0);
    if (v2 <= 2u)
    {
      if (v2)
      {
        if (v2 == 1)
        {
          v1 = v1 | 0xFFFFFFFE00000000;
        }

        else
        {
          v6 = v1 | 0xFF00;
          if (BYTE2(v1) != 1)
          {
            v6 = 0;
          }

          if (BYTE2(v1))
          {
            v7 = v6;
          }

          else
          {
            v7 = v1;
          }

          v1 = *&v7 | 0xFFFFFFFFFFFF0000;
        }
      }
    }

    else
    {
      if (v2 == 5)
      {
        v3 = v1;
      }

      else
      {
        v3 = 0;
      }

      v4 = v1 | 0xFFFFFFFB00000000;
      if (v2 != 3)
      {
        v4 = v1 | 0xFFFFFFFD00000000;
      }

      if (v2 <= 4u)
      {
        v1 = v4;
      }

      else
      {
        v1 = v3;
      }
    }

    MEMORY[0x259BFF270](v1);
  }

  return sub_2531DB414();
}

uint64_t MTR.AccessGrant.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 4);
  sub_2531DB3F4();
  MTR.AccessGrant.hash(into:)();
  return sub_2531DB454();
}

uint64_t sub_2531D9CB0()
{
  v2 = *v0;
  v3 = *(v0 + 4);
  sub_2531DB3F4();
  MTR.AccessGrant.hash(into:)();
  return sub_2531DB454();
}

uint64_t sub_2531D9D08()
{
  v2 = *v0;
  v3 = *(v0 + 4);
  sub_2531DB3F4();
  MTR.AccessGrant.hash(into:)();
  return sub_2531DB454();
}

BOOL _s23HomeKitDaemonFoundation3MTRO11AccessGrantO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = *(a2 + 8);
  if (v4 >> 6)
  {
    if (v4 >> 6 == 1)
    {
      if ((v6 & 0xC0) != 0x40)
      {
        return 0;
      }

      v7 = v3;
      v8 = *a2;
      v9 = v3 | 0xFF00;
      if (BYTE2(v3) != 1)
      {
        v9 = 0;
      }

      if (BYTE2(v3))
      {
        v7 = v9;
      }

      if (BYTE2(v5))
      {
        if (BYTE2(v5) != 1)
        {
          if (!v7)
          {
            return BYTE3(v3) == BYTE3(v5);
          }

          return 0;
        }

        v8 |= 0xFF00u;
      }

      if (v7 == v8)
      {
        return BYTE3(v3) == BYTE3(v5);
      }

      return 0;
    }

    return (v6 & 0xC0) == 0x80 && v3 == v5;
  }

  else
  {
    if ((v6 & 0xC0) != 0)
    {
      return 0;
    }

    return sub_253198C54(v3, v4, v5, v6) && (v6 ^ v4) < 0x100;
  }
}

unint64_t sub_2531D9E50()
{
  result = qword_27F58E098;
  if (!qword_27F58E098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58E098);
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t _s11AccessGrantOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1E && *(a1 + 10))
  {
    return (*a1 + 30);
  }

  v3 = ((*(a1 + 8) >> 1) & 0x1C | (*(a1 + 8) >> 6)) ^ 0x1F;
  if (v3 >= 0x1D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t _s11AccessGrantOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1D)
  {
    *(result + 8) = 0;
    *result = a2 - 30;
    if (a3 >= 0x1E)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1E)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 8 * ((((-a2 >> 2) & 7) - 8 * a2) & 0x1F);
    }
  }

  return result;
}