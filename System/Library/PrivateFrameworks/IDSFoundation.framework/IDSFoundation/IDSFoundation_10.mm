uint64_t sub_1A7CFD06C@<X0>(unint64_t *a1@<X0>, char *a2@<X8>)
{
  sub_1A7CE05C0(*a1, &v5);
  result = v6;
  if (v6)
  {
    v4 = v5;
  }

  else
  {
    v4 = 1;
  }

  *a2 = v4;
  return result;
}

_OWORD *LinkEndpoint.idsCellularState.setter(_BYTE *a1)
{
  v2[0] = *a1;
  v3 = 1819043171;
  v4 = 0xE400000000000000;
  v5 = &type metadata for IDSLinkEndpointCellularState;
  return sub_1A7CC8D74(v2, &type metadata for IDSLinkEndpointCellularState);
}

_OWORD *(*LinkEndpoint.idsCellularState.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  sub_1A7CE05C0(*v1, v5);
  if (v5[2])
  {
    v3 = v5[0];
  }

  else
  {
    v3 = 1;
  }

  *(a1 + 8) = v3;
  return sub_1A7CFD180;
}

_OWORD *sub_1A7CFD180(uint64_t a1)
{
  v2[0] = *(a1 + 8);
  v3 = 1819043171;
  v4 = 0xE400000000000000;
  v5 = &type metadata for IDSLinkEndpointCellularState;
  return sub_1A7CC8D74(v2, &type metadata for IDSLinkEndpointCellularState);
}

uint64_t sub_1A7CFD1D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A7CFD21C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

void IDSToolResponse.print(to:style:)(void *a1, uint64_t a2)
{
  v5 = *v2;
  if (v2[2])
  {
    v8 = *a2;
    v9 = *(a2 + 8);
    IDSToolPacketLogResponse.print(to:style:)(a1);
  }

  else
  {
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = v5 + 56;
      do
      {
        if ((*(v7 + 48) & 0x800000000000000) != 0)
        {
          v8 = *a2;
          v9 = *(a2 + 8);
          LEToolP2PEngineResponseMessage.print(to:style:)(a1, &v8);
        }

        else
        {
          v8 = *a2;
          v9 = *(a2 + 8);
          LEToolRelayEngineResponseMessage.print(to:style:)(a1, &v8);
        }

        v7 += 88;
        --v6;
      }

      while (v6);
    }
  }
}

_BYTE *(*LEToolPrintStyle.includeName.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 2);
  return sub_1A7CFD3F4;
}

uint64_t sub_1A7CFD480(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (*a2 != -1)
  {
    v4 = a4;
    v5 = a3;
    result = swift_once();
    a3 = v5;
    a4 = v4;
  }

  *a4 = *a3;
  return result;
}

void *sub_1A7CFD4F8@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (*result != -1)
  {
    v3 = a2;
    v4 = a3;
    result = swift_once();
    a3 = v4;
    a2 = v3;
  }

  *a3 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for LEToolLinkPrintStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[8])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for LEToolLinkPrintStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t LinkDefinition.isPreferred.getter()
{
  v1 = *v0;
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_1A7CD0DFC(&type metadata for LinkDefinitionIsPreferred);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_1A7B0CD10(*(v1 + 56) + 32 * v2, v6);
  sub_1A7B1503C(v6, &v5);
  sub_1A7CC7FFC(&qword_1EB2B5040);
  return swift_dynamicCast() & v7;
}

_OWORD *LinkDefinition.isPreferred.setter(char a1)
{
  v3 = &type metadata for LinkDefinitionIsPreferred;
  v2[0] = a1;
  return sub_1A7CC8D74(v2, &type metadata for LinkDefinitionIsPreferred);
}

_OWORD *(*LinkDefinition.isPreferred.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  sub_1A7CE05CC(*v1, &v4);
  *(a1 + 8) = v4 & 1;
  return sub_1A7CFD744;
}

_OWORD *sub_1A7CFD744(uint64_t a1)
{
  v1 = *(a1 + 8);
  v4 = &type metadata for LinkDefinitionIsPreferred;
  v3[0] = v1;
  return sub_1A7CC8D74(v3, &type metadata for LinkDefinitionIsPreferred);
}

uint64_t IDSLinkQualityReportPacketsMeasurement.init(time:totalPacketsSent:totalPacketsReceived:totalBytesSent:totalBytesReceived:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  *a5 = a6;
  *(a5 + 8) = result;
  *(a5 + 16) = a2;
  *(a5 + 24) = a3;
  *(a5 + 32) = a4;
  return result;
}

unint64_t sub_1A7CFD898()
{
  v1 = *v0;
  v2 = 1701669236;
  v3 = 0xD000000000000012;
  if (v1 == 3)
  {
    v3 = 0x7479426C61746F74;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000014;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_1A7CFD944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A7CFDFAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A7CFD96C(uint64_t a1)
{
  v2 = sub_1A7CFDBE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7CFD9A8(uint64_t a1)
{
  v2 = sub_1A7CFDBE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IDSLinkQualityReportPacketsMeasurement.encode(to:)(void *a1)
{
  v4 = sub_1A7CC7FFC(&qword_1EB2B5608);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v11 - v7;
  v9 = v1[1];
  v11[1] = v1[2];
  v11[2] = v9;
  v11[0] = v1[3];
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7CFDBE8();
  sub_1A7E23260();
  v16 = 0;
  sub_1A7E23010();
  if (!v2)
  {
    v15 = 1;
    sub_1A7E23050();
    v14 = 2;
    sub_1A7E23050();
    v13 = 3;
    sub_1A7E23050();
    v12 = 4;
    sub_1A7E23050();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1A7CFDBE8()
{
  result = qword_1EB2B5610;
  if (!qword_1EB2B5610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5610);
  }

  return result;
}

uint64_t IDSLinkQualityReportPacketsMeasurement.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1A7CC7FFC(&qword_1EB2B5618);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v16 - v8;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7CFDBE8();
  sub_1A7E23250();
  if (!v2)
  {
    v23 = 0;
    sub_1A7E22F10();
    v11 = v10;
    v22 = 1;
    v12 = sub_1A7E22F50();
    v21 = 2;
    v13 = sub_1A7E22F50();
    v20 = 3;
    v18 = sub_1A7E22F50();
    v19 = 4;
    v17 = sub_1A7E22F50();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v12;
    a2[2] = v13;
    v15 = v17;
    a2[3] = v18;
    a2[4] = v15;
  }

  return sub_1A7B0CD6C(a1);
}

unint64_t sub_1A7CFDEA8()
{
  result = qword_1EB2B5620;
  if (!qword_1EB2B5620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5620);
  }

  return result;
}

unint64_t sub_1A7CFDF00()
{
  result = qword_1EB2B5628;
  if (!qword_1EB2B5628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5628);
  }

  return result;
}

unint64_t sub_1A7CFDF58()
{
  result = qword_1EB2B5630;
  if (!qword_1EB2B5630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5630);
  }

  return result;
}

uint64_t sub_1A7CFDFAC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701669236 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A7E230D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A7EAE470 == a2 || (sub_1A7E230D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A7EAE490 == a2 || (sub_1A7E230D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7479426C61746F74 && a2 == 0xEE00746E65537365 || (sub_1A7E230D0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A7EAE4B0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1A7E230D0();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t LinkEndpoint.isNAT64.getter()
{
  v1 = *v0;
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_1A7CD0DFC(&type metadata for IDSLinkEndpointIsNAT64);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_1A7B0CD10(*(v1 + 56) + 32 * v2, v6);
  sub_1A7B1503C(v6, &v5);
  sub_1A7CC7FFC(&qword_1EB2B5040);
  return swift_dynamicCast() & v7;
}

_OWORD *LinkEndpoint.isNAT64.setter(char a1)
{
  v3 = &type metadata for IDSLinkEndpointIsNAT64;
  v2[0] = a1;
  return sub_1A7CC8D74(v2, &type metadata for IDSLinkEndpointIsNAT64);
}

_OWORD *(*LinkEndpoint.isNAT64.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  sub_1A7CE0668(*v1, &v4);
  *(a1 + 8) = v4 & 1;
  return sub_1A7CFE2A4;
}

_OWORD *sub_1A7CFE2A4(uint64_t a1)
{
  v1 = *(a1 + 8);
  v4 = &type metadata for IDSLinkEndpointIsNAT64;
  v3[0] = v1;
  return sub_1A7CC8D74(v3, &type metadata for IDSLinkEndpointIsNAT64);
}

uint64_t sub_1A7CFE2F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v23 = MEMORY[0x1E69E7CC0];
  sub_1A7CCEB40(0, v1, 0);
  v2 = v23;
  v22 = a1 + 64;
  result = sub_1A7E22AD0();
  v5 = result;
  v6 = 0;
  v20 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v9 = v5 >> 6;
    if ((*(v22 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v10 = *(a1 + 36);
    v12 = *(v23 + 16);
    v11 = *(v23 + 24);
    v21 = *(*(a1 + 56) + 32 * v5);

    if (v12 >= v11 >> 1)
    {
      result = sub_1A7CCEB40((v11 > 1), v12 + 1, 1);
    }

    *(v23 + 16) = v12 + 1;
    *(v23 + 16 * v12 + 32) = v21;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v13 = *(v22 + 8 * v9);
    if ((v13 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v10 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v14 = v13 & (-2 << (v5 & 0x3F));
    if (v14)
    {
      v7 = __clz(__rbit64(v14)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v8 = v20;
    }

    else
    {
      v15 = v9 << 6;
      v16 = v9 + 1;
      v8 = v20;
      v17 = (a1 + 72 + 8 * v9);
      while (v16 < (v7 + 63) >> 6)
      {
        v19 = *v17++;
        v18 = v19;
        v15 += 64;
        ++v16;
        if (v19)
        {
          result = sub_1A7CD29F0(v5, v10, 0);
          v7 = __clz(__rbit64(v18)) + v15;
          goto LABEL_4;
        }
      }

      result = sub_1A7CD29F0(v5, v10, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v8)
    {
      return v2;
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

uint64_t sub_1A7CFE520()
{
  os_unfair_lock_lock((v0 + 40));
  sub_1A7CCBD20((v0 + 48), &v2);
  os_unfair_lock_unlock((v0 + 40));
  sub_1A7CC7FFC(&qword_1EB2B66D0);
  type metadata accessor for IDSSemiActiveLinkQualityMonitor();
  if (swift_dynamicCast())
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A7CFE5B4()
{
  v0 = sub_1A7E22060();
  sub_1A7CC7A10(v0, qword_1EB2B5638);
  sub_1A7B0CB00(v0, qword_1EB2B5638);
  return sub_1A7E22050();
}

uint64_t IDSLinksQualitySemiActiveMonitorTask.ProbingState.Input.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t IDSLinksQualitySemiActiveMonitorTask.ProbingState.Input.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

__n128 IDSLinksQualitySemiActiveMonitorTask.ProbingState.Input.score.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

__n128 IDSLinksQualitySemiActiveMonitorTask.ProbingState.Input.score.setter(__n128 *a1)
{
  result = *a1;
  v1[1] = *a1;
  return result;
}

uint64_t IDSLinksQualitySemiActiveMonitorTask.ProbingState.inputs.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t IDSLinksQualitySemiActiveMonitorTask.ProbingState.LinkToProbe.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t IDSLinksQualitySemiActiveMonitorTask.ProbingState.LinkToProbe.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void IDSLinksQualitySemiActiveMonitorTask.ProbingState.LinkToProbe.probingState.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t IDSLinksQualitySemiActiveMonitorTask.ProbingState.LinkToProbe.probingState.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t IDSLinksQualitySemiActiveMonitorTask.ProbingState.linksToProbe.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t IDSLinksQualitySemiActiveMonitorTask.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void IDSLinksQualitySemiActiveMonitorTask.probingState.getter(void *a1@<X8>)
{
  os_unfair_lock_lock((v1 + 32));
  v3 = *(v1 + 64);
  *a1 = *(v1 + 56);
  a1[1] = v3;

  os_unfair_lock_unlock((v1 + 32));
}

Swift::Void __swiftcall IDSLinksQualitySemiActiveMonitorTask.start()()
{
  os_unfair_lock_lock(v0 + 8);
  sub_1A7CFE980(&v0[10], v0);

  os_unfair_lock_unlock(v0 + 8);
}

uint64_t sub_1A7CFE980(uint64_t a1, uint64_t a2)
{
  v5 = sub_1A7CC7FFC(&unk_1EB2B61C0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v63 = &v48 - v7;
  v8 = sub_1A7E226D0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1A7E22060();
  v13 = *(v58 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v58, v15);
  v59 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v48 - v18;
  result = swift_weakLoadStrong();
  if (result)
  {
    v60 = result;
    v61 = v8;
    v55 = v9;
    v56 = a1;
    v57 = v2;
    v21 = *(a2 + 24);
    v51 = *(a2 + 16);
    v52 = v21;
    v22 = qword_1EB2B4740;

    if (v22 != -1)
    {
      swift_once();
    }

    v23 = v58;
    v24 = sub_1A7B0CB00(v58, qword_1EB2B5638);
    v54 = v13;
    v25 = *(v13 + 16);
    v26 = v19;
    v27 = v23;
    v25(v19, v24, v23);
    v48 = v25;
    v53 = swift_allocObject();
    swift_weakInit();

    v28 = v12;
    v50 = v12;
    sub_1A7E226B0();
    type metadata accessor for IDSLinksQualityRepeatingAsyncTask();
    v29 = swift_allocObject();
    v30 = v29 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_state;
    v31 = swift_weakInit();
    v62 = 0;
    *v30 = 0;
    *(v30 + 16) = 0;
    *(v30 + 8) = 0;
    sub_1A7CEB2D0(v31, v30 + 8);
    v32 = v26;
    v33 = v26;
    v49 = v26;
    v34 = v27;
    v25((v29 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_logger), v32, v27);
    v35 = (v29 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_name);
    v36 = v52;
    *v35 = v51;
    v35[1] = v36;
    v37 = v29 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_state;
    os_unfair_lock_lock((v29 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_state));
    swift_weakAssign();
    v38 = v55;
    v39 = v63;
    v40 = v28;
    v41 = v61;
    (*(v55 + 16))(v63, v40, v61);
    (*(v38 + 56))(v39, 0, 1, v41);
    v42 = swift_allocObject();
    swift_weakInit();
    v43 = v59;
    v48(v59, v33, v34);
    v44 = v54;
    v45 = (*(v54 + 80) + 56) & ~*(v54 + 80);
    v46 = swift_allocObject();
    *(v46 + 2) = 0;
    *(v46 + 3) = 0;
    *(v46 + 4) = v42;
    *(v46 + 5) = &unk_1A7E451B0;
    *(v46 + 6) = v53;
    (*(v44 + 32))(&v46[v45], v43, v34);

    *(v37 + 16) = sub_1A7D3F5DC(0, 0, v63, &unk_1A7E44050, v46);

    os_unfair_lock_unlock(v37);

    (*(v38 + 8))(v50, v61);
    (*(v44 + 8))(v49, v34);

    v47 = v56;

    *(v47 + 8) = v29;
  }

  return result;
}

uint64_t sub_1A7CFEE70(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A7CFEE90, 0, 0);
}

uint64_t sub_1A7CFEE90()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_1A7CE88C8;
    v3 = v0[5];

    return IDSLinksQualitySemiActiveMonitorTask.run(_:)(v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t IDSLinksQualitySemiActiveMonitorTask.run(_:)(uint64_t a1)
{
  v2[100] = v1;
  v2[99] = a1;
  sub_1A7CC7FFC(&qword_1EB2B4A80);
  v2[101] = swift_task_alloc();
  v2[102] = type metadata accessor for LinkState(0);
  v2[103] = swift_task_alloc();
  v2[104] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7CFF064, 0, 0);
}

void sub_1A7CFF064()
{
  v214 = v0;
  v199 = (v0 + 696);
  v198 = (v0 + 728);
  v196 = v0 + 744;
  v195 = (v0 + 752);
  v207 = (v0 + 768);
  v194 = (v0 + 776);
  v1 = *(v0 + 792);
  v2 = (*(*(v0 + 800) + 104))();
  os_unfair_lock_lock((v1 + 16));
  v3 = *(v1 + 24);

  os_unfair_lock_unlock((v1 + 16));
  v4 = v3 + 64;
  v5 = -1;
  v6 = -1 << *(v3 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v3 + 64);
  v8 = (63 - v6) >> 6;
  v203 = v3;

  v9 = 0;
  v200 = MEMORY[0x1E69E7CC0];
  v205 = v2;
  while (v7)
  {
LABEL_10:
    v11 = *(*(v203 + 56) + ((v9 << 9) | (8 * __clz(__rbit64(v7)))));

    os_unfair_lock_lock((v11 + 40));
    active = type metadata accessor for IDSSemiActiveLinkQualityMonitor();
    v13 = *(v11 + 48);
    if (*(v13 + 16) && (v14 = sub_1A7CD0DFC(active), (v15 & 1) != 0))
    {
      sub_1A7B0CD10(*(v13 + 56) + 32 * v14, v0 + 544);
    }

    else
    {
      *(v0 + 544) = 0u;
      *(v0 + 560) = 0u;
    }

    v7 &= v7 - 1;
    os_unfair_lock_unlock((v11 + 40));
    sub_1A7CC7FFC(&qword_1EB2B66D0);
    if ((swift_dynamicCast() & 1) != 0 && (v16 = *v207) != 0)
    {
      os_unfair_lock_lock((v11 + 40));
      v17 = sub_1A7CC7FFC(&qword_1EB2B4A88);
      v18 = *(v11 + 48);
      if (*(v18 + 16) && (v19 = sub_1A7CD0DFC(v17), (v20 & 1) != 0))
      {
        sub_1A7B0CD10(*(v18 + 56) + 32 * v19, v0 + 512);
      }

      else
      {
        *(v0 + 512) = 0u;
        *(v0 + 528) = 0u;
      }

      os_unfair_lock_unlock((v11 + 40));
      if (swift_dynamicCast())
      {
        v2 = v205;
        if (!*(v0 + 360))
        {
          goto LABEL_26;
        }

        sub_1A7B14FF0((v0 + 336), v0 + 296);
        os_unfair_lock_lock((v11 + 40));
        v21 = type metadata accessor for LinkStateComponent(0);
        v22 = v21;
        v23 = *(v11 + 48);
        if (*(v23 + 16) && (v24 = sub_1A7CD0DFC(v21), (v25 & 1) != 0))
        {
          sub_1A7B0CD10(*(v23 + 56) + 32 * v24, v0 + 480);
        }

        else
        {
          *(v0 + 480) = 0u;
          *(v0 + 496) = 0u;
        }

        v26 = *(v0 + 808);
        os_unfair_lock_unlock((v11 + 40));
        v27 = swift_dynamicCast();
        v28 = *(v22 - 8);
        (*(v28 + 56))(v26, v27 ^ 1u, 1, v22);
        v29 = (*(v28 + 48))(v26, 1, v22);
        v30 = *(v0 + 832);
        v31 = *(v0 + 808);
        if (v29)
        {
          sub_1A7CC9970(v31, &qword_1EB2B4A80);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          v32 = *(v0 + 824);
          v33 = *(v0 + 808);
          sub_1A7CD0EC4(v31, v32);
          sub_1A7CC9970(v33, &qword_1EB2B4A80);
          sub_1A7CD0F28(v32, v30);
        }

        v34 = *(v0 + 832);
        v2 = v205;
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v35 = sub_1A7E22CF0();
          (*(*(v35 - 8) + 8))(v34, v35);
          *(v0 + 128) = v11;
          *(v0 + 136) = v16;
          sub_1A7B14FF0((v0 + 296), v0 + 144);
          v36 = *(v0 + 144);
          v209 = *(v0 + 128);
          v210 = v36;
          v211 = *(v0 + 160);
          v212 = *(v0 + 176);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v200 = sub_1A7CCD24C(0, v200[2] + 1, 1, v200);
          }

          v38 = v200[2];
          v37 = v200[3];
          if (v38 >= v37 >> 1)
          {
            v200 = sub_1A7CCD24C((v37 > 1), v38 + 1, 1, v200);
          }

          v200[2] = v38 + 1;
          v39 = &v200[7 * v38];
          v40 = v209;
          v41 = v210;
          v42 = v211;
          v39[10] = v212;
          *(v39 + 3) = v41;
          *(v39 + 4) = v42;
          *(v39 + 2) = v40;
        }

        else
        {
          sub_1A7B0CD6C(v0 + 296);

          sub_1A7CD0E68(v34);
        }
      }

      else
      {
        *(v0 + 368) = 0;
        *(v0 + 336) = 0u;
        *(v0 + 352) = 0u;
        v2 = v205;
LABEL_26:

        sub_1A7CC9970(v0 + 336, &qword_1EB2B4A90);
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
      goto LABEL_188;
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  if (qword_1EB2B4740 == -1)
  {
    goto LABEL_39;
  }

LABEL_188:
  swift_once();
LABEL_39:
  v202 = sub_1A7E22060();
  sub_1A7B0CB00(v202, qword_1EB2B5638);
  v43 = v200;

  v44 = sub_1A7E22040();
  v45 = sub_1A7E228F0();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 134217984;
    *(v46 + 4) = v200[2];

    _os_log_impl(&dword_1A7AD9000, v44, v45, "Running Semi-Active monitor task for %ld links...", v46, 0xCu);
    MEMORY[0x1AC5654B0](v46, -1, -1);
  }

  else
  {
  }

  v193 = sub_1A7E23280();
  sub_1A7E23280();
  v192 = v47;
  v48 = sub_1A7E23280();
  sub_1A7E23280();
  v50 = v49 / 1.0e18 + v48;
  v204 = v200[2];
  if (v204)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      v51 = 0;
      v52 = (v200 + 4);
      v206 = v0;
      while (1)
      {
        if (v51 >= v43[2])
        {
          goto LABEL_176;
        }

        sub_1A7D01088(v52, v0 + 240);
        v54 = *(v0 + 240);
        v53 = *(v0 + 248);
        os_unfair_lock_lock((v54 + 40));
        v55 = *(v54 + 48);
        if (*(v55 + 16) && (v56 = sub_1A7CD0DFC(&type metadata for LinkProbingState), (v57 & 1) != 0))
        {
          sub_1A7B0CD10(*(v55 + 56) + 32 * v56, v0 + 448);
        }

        else
        {
          *(v0 + 448) = 0u;
          *(v0 + 464) = 0u;
        }

        os_unfair_lock_unlock((v54 + 40));
        sub_1A7CC7FFC(&qword_1EB2B66D0);
        if (swift_dynamicCast())
        {
          v58 = *v199;
        }

        else
        {
          LOBYTE(v58) = 2;
        }

        os_unfair_lock_lock((v53 + 40));
        if (qword_1EB2B4810 != -1)
        {
          swift_once();
        }

        v59 = (v58 != 2) & v58;
        sub_1A7B0CB00(v202, qword_1EB2B67A0);
        v60 = sub_1A7E22040();
        v61 = sub_1A7E228D0();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          *&v209 = v63;
          *v62 = 136315138;
          *(v206 + 842) = v59;
          v64 = sub_1A7E222F0();
          v66 = v51;
          v67 = v52;
          v68 = sub_1A7B0CB38(v64, v65, &v209);
          v43 = v200;

          *(v62 + 4) = v68;
          v52 = v67;
          v51 = v66;
          _os_log_impl(&dword_1A7AD9000, v60, v61, "update(probingState:time:): probing behavior: %s", v62, 0xCu);
          sub_1A7B0CD6C(v63);
          MEMORY[0x1AC5654B0](v63, -1, -1);
          MEMORY[0x1AC5654B0](v62, -1, -1);
        }

        *(v53 + 48) = v59;
        v2 = v205;
        v69 = sub_1A7D611D0(v205) || sub_1A7D61378(v205);
        v0 = v206;
        v70 = *(v53 + 72);
        if (*(v53 + 48) == 1)
        {
          v71 = *(v53 + 288);
          v72 = __CFADD__(v70, v71);
          v73 = v70 + v71;
          if (v72)
          {
            goto LABEL_178;
          }

          v74 = *(v53 + 256);
          v75 = *(v53 + 312);
          v72 = __CFADD__(v74, v75);
          v76 = v74 + v75;
          if (v72)
          {
            goto LABEL_180;
          }
        }

        else
        {
          v77 = *(v53 + 272);
          v72 = __CFADD__(v70, v77);
          v73 = v70 + v77;
          if (v72)
          {
            goto LABEL_179;
          }

          v78 = *(v53 + 256);
          v79 = *(v53 + 296);
          v72 = __CFADD__(v78, v79);
          v76 = v78 + v79;
          if (v72)
          {
            goto LABEL_181;
          }
        }

        if (v76 >= v73)
        {
          v80 = v73;
        }

        else
        {
          v80 = v76;
        }

        if ((v80 & 0x8000000000000000) != 0)
        {
          goto LABEL_177;
        }

        os_unfair_lock_unlock((v53 + 40));
        if (v69)
        {
          os_unfair_lock_lock((v53 + 16));
          v81 = *(v53 + 24);
          if (v81)
          {
            v82 = *(v53 + 32);
            v83 = swift_allocObject();
            *(v83 + 16) = v81;
            *(v83 + 24) = v82;
            v84 = swift_allocObject();
            *(v84 + 16) = sub_1A7D013D4;
            *(v84 + 24) = v83;
            v85 = swift_allocObject();
            *(v85 + 16) = sub_1A7D013D4;
            *(v85 + 24) = v83;
            *(v53 + 24) = sub_1A7D013D0;
            *(v53 + 32) = v85;

            os_unfair_lock_unlock((v53 + 16));
            os_unfair_lock_lock((v53 + 40));
            if (*(v53 + 321))
            {
              os_unfair_lock_unlock((v53 + 40));

              sub_1A7B15088(sub_1A7D013D0);
              goto LABEL_47;
            }

            v197 = v52;

            v86 = sub_1A7E22040();
            v87 = sub_1A7E228D0();

            if (os_log_type_enabled(v86, v87))
            {
              v88 = swift_slowAlloc();
              v89 = swift_slowAlloc();
              *&v209 = v89;
              *v88 = 136315138;
              *(v88 + 4) = sub_1A7B0CB38(*(v53 + 328), *(v53 + 336), &v209);
              _os_log_impl(&dword_1A7AD9000, v86, v87, "sendSyntheticStatsPacket: request packet on link %s", v88, 0xCu);
              sub_1A7B0CD6C(v89);
              v90 = v89;
              v43 = v200;
              MEMORY[0x1AC5654B0](v90, -1, -1);
              MEMORY[0x1AC5654B0](v88, -1, -1);
            }

            v52 = v197;
            *(v53 + 321) = 1;
            os_unfair_lock_unlock((v53 + 40));
            (*(v84 + 16))(0, 0xC000000000000000);
            sub_1A7B15088(sub_1A7D013D0);
          }

          else
          {
            os_unfair_lock_unlock((v53 + 16));
          }
        }

LABEL_47:
        ++v51;
        if (((v80 - v205) & ~((v80 - v205) >> 63)) / 1000000.0 < v50)
        {
          v50 = ((v80 - v205) & ~((v80 - v205) >> 63)) / 1000000.0;
        }

        sub_1A7B0CD6C(v206 + 256);
        v52 += 56;
        if (v204 == v51)
        {
          goto LABEL_83;
        }
      }
    }

    __break(1u);
LABEL_190:
    __break(1u);
LABEL_191:
    __break(1u);
    goto LABEL_192;
  }

LABEL_83:
  v91 = sub_1A7E22040();
  v92 = sub_1A7E228F0();
  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    *v93 = 0;
    _os_log_impl(&dword_1A7AD9000, v91, v92, "Updating link probing state...", v93, 2u);
    MEMORY[0x1AC5654B0](v93, -1, -1);
  }

  v94 = v43[2];
  if (v94)
  {
    v213 = MEMORY[0x1E69E7CC0];
    sub_1A7CCEB70(0, v94, 0);
    v208 = v213;
    v95 = (v43 + 4);
    do
    {
      sub_1A7D01088(v95, v0 + 16);
      sub_1A7D01088(v0 + 16, v0 + 184);
      v96 = *(v0 + 184);

      sub_1A7B14FF0((v0 + 200), v0 + 376);
      v97 = *(v0 + 400);
      v98 = *(v0 + 408);
      sub_1A7CC9878((v0 + 376), v97);
      (*(v98 + 8))(&v209, v96, v97, v98);
      v99 = v209;

      os_unfair_lock_lock((v96 + 40));
      v100 = *(v96 + 48);
      if (*(v100 + 16) && (v101 = sub_1A7CD0DFC(&type metadata for IDSLinkIsSelectedComponent), (v102 & 1) != 0))
      {
        sub_1A7B0CD10(*(v100 + 56) + 32 * v101, v0 + 416);
      }

      else
      {
        *(v0 + 416) = 0u;
        *(v0 + 432) = 0u;
      }

      os_unfair_lock_unlock((v96 + 40));

      sub_1A7CC9970(v0 + 16, &qword_1EB2B4CF0);
      sub_1A7CC7FFC(&qword_1EB2B66D0);
      v103 = swift_dynamicCast();
      v104 = *(v0 + 840);
      sub_1A7B0CD6C(v0 + 376);
      v105 = v208;
      v213 = v208;
      v107 = *(v208 + 16);
      v106 = *(v208 + 24);
      v108 = v107 + 1;
      if (v107 >= v106 >> 1)
      {
        sub_1A7CCEB70((v106 > 1), v107 + 1, 1);
        v105 = v213;
      }

      *(v105 + 16) = v108;
      v208 = v105;
      v109 = v105 + 32 * v107;
      *(v109 + 32) = v96;
      *(v109 + 40) = v99;
      *(v109 + 56) = v103 & v104;
      v95 += 56;
      --v94;
    }

    while (v94);
    v110 = MEMORY[0x1E69E7CC0];
LABEL_96:
    v213 = v110;
    sub_1A7CCE918(0, v108, 0);
    v111 = (v208 + 56);
    v110 = v213;
    do
    {
      v112 = *(v111 - 3);
      v113 = *v111;
      v114 = *(v111 - 1);
      *&v209 = 8237;
      *(&v209 + 1) = 0xE200000000000000;
      *(v0 + 712) = 0;
      *(v0 + 720) = 0xE000000000000000;
      *(v0 + 672) = v112;
      *(v0 + 680) = v114;
      v115 = v110;

      sub_1A7E22D30();
      MEMORY[0x1AC561C90](8250, 0xE200000000000000);
      if (v113)
      {
        v116 = 0x64657463656C6553;
      }

      else
      {
        v116 = 0x656C655320746F4ELL;
      }

      if (v113)
      {
        v117 = 0xE800000000000000;
      }

      else
      {
        v117 = 0xEC00000064657463;
      }

      MEMORY[0x1AC561C90](v116, v117);

      MEMORY[0x1AC561C90](*(v0 + 712), *(v0 + 720));

      v110 = v115;
      v118 = v209;
      v213 = v115;
      v119 = *(v115 + 16);
      v120 = *(v110 + 24);
      if (v119 >= v120 >> 1)
      {
        sub_1A7CCE918((v120 > 1), v119 + 1, 1);
        v110 = v213;
      }

      *(v110 + 16) = v119 + 1;
      *(v110 + 16 * v119 + 32) = v118;
      v111 += 32;
      --v108;
    }

    while (v108);
  }

  else
  {
    v110 = MEMORY[0x1E69E7CC0];
    v108 = *(MEMORY[0x1E69E7CC0] + 16);
    v208 = MEMORY[0x1E69E7CC0];
    if (v108)
    {
      goto LABEL_96;
    }
  }

  *v196 = v110;
  sub_1A7CC7FFC(&qword_1EB2B4AA0);
  sub_1A7CD0F8C();
  v121 = sub_1A7E221F0();
  v123 = v122;

  v124 = sub_1A7E22040();
  v125 = sub_1A7E228D0();

  if (os_log_type_enabled(v124, v125))
  {
    v126 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    *&v209 = v127;
    *v126 = 136315138;
    *(v126 + 4) = sub_1A7B0CB38(v121, v123, &v209);
    _os_log_impl(&dword_1A7AD9000, v124, v125, "Links Probing Input:\n%s", v126, 0xCu);
    sub_1A7B0CD6C(v127);
    MEMORY[0x1AC5654B0](v127, -1, -1);
    MEMORY[0x1AC5654B0](v126, -1, -1);
  }

  v2 = v205;
  v128 = *(v0 + 792);
  os_unfair_lock_lock((v128 + 200));
  sub_1A7CC95A0((v128 + 208), (v0 + 576));
  os_unfair_lock_unlock((v128 + 200));
  v129 = v200;
  lock = (v128 + 200);
  v191 = v128;
  sub_1A7CC7FFC(&qword_1EB2B66D0);
  type metadata accessor for LinksProbingController();
  if ((swift_dynamicCast() & 1) != 0 && *v195)
  {
    v130 = *(v0 + 800);
    v131 = LinksProbingController.update(linkEngine:links:time:)(*(v0 + 792), v208, v205);

    os_unfair_lock_lock(v130 + 8);
    sub_1A7D00A00(&v130[10], v208, v131);

    os_unfair_lock_unlock(v130 + 8);
  }

  else
  {
    v131 = 0;
  }

  v132 = v191;
  if (v204)
  {
    v195 = v131;
    if ((v205 & 0x8000000000000000) != 0)
    {
      goto LABEL_190;
    }

    v133 = 0;
    v134 = (v200 + 4);
    v196 = 136315138;
    while (2)
    {
      if (v133 >= v129[2])
      {
        goto LABEL_182;
      }

      v201 = v134;
      sub_1A7D01088(v134, v0 + 72);
      v135 = *(v0 + 72);
      v136 = *(v0 + 80);
      os_unfair_lock_lock((v135 + 40));
      v137 = *(v135 + 48);
      if (*(v137 + 16) && (v138 = sub_1A7CD0DFC(&type metadata for LinkProbingState), (v139 & 1) != 0))
      {
        sub_1A7B0CD10(*(v137 + 56) + 32 * v138, v0 + 608);
      }

      else
      {
        *(v0 + 608) = 0u;
        *(v0 + 624) = 0u;
      }

      os_unfair_lock_unlock((v135 + 40));
      if (swift_dynamicCast())
      {
        v140 = *v198;
      }

      else
      {
        LOBYTE(v140) = 2;
      }

      os_unfair_lock_lock((v136 + 40));
      if (qword_1EB2B4810 != -1)
      {
        swift_once();
      }

      v141 = (v140 != 2) & v140;
      v199 = sub_1A7B0CB00(v202, qword_1EB2B67A0);
      v142 = sub_1A7E22040();
      v143 = sub_1A7E228D0();
      if (os_log_type_enabled(v142, v143))
      {
        v144 = swift_slowAlloc();
        v145 = swift_slowAlloc();
        *&v209 = v145;
        *v144 = 136315138;
        *(v0 + 841) = v141;
        v146 = sub_1A7E222F0();
        v148 = sub_1A7B0CB38(v146, v147, &v209);

        *(v144 + 4) = v148;
        _os_log_impl(&dword_1A7AD9000, v142, v143, "update(probingState:time:): probing behavior: %s", v144, 0xCu);
        sub_1A7B0CD6C(v145);
        v149 = v145;
        v2 = v205;
        MEMORY[0x1AC5654B0](v149, -1, -1);
        MEMORY[0x1AC5654B0](v144, -1, -1);
      }

      *(v136 + 48) = v141;
      v150 = sub_1A7D611D0(v2) || sub_1A7D61378(v2);
      v151 = *(v136 + 72);
      if (*(v136 + 48) == 1)
      {
        v152 = *(v136 + 288);
        v72 = __CFADD__(v151, v152);
        v153 = v151 + v152;
        if (v72)
        {
          goto LABEL_184;
        }

        v154 = *(v136 + 256);
        v155 = *(v136 + 312);
        v72 = __CFADD__(v154, v155);
        v156 = v154 + v155;
        if (v72)
        {
          goto LABEL_187;
        }
      }

      else
      {
        v157 = *(v136 + 272);
        v72 = __CFADD__(v151, v157);
        v153 = v151 + v157;
        if (v72)
        {
          goto LABEL_185;
        }

        v158 = *(v136 + 256);
        v159 = *(v136 + 296);
        v72 = __CFADD__(v158, v159);
        v156 = v158 + v159;
        if (v72)
        {
          goto LABEL_186;
        }
      }

      if (v156 >= v153)
      {
        v160 = v153;
      }

      else
      {
        v160 = v156;
      }

      if ((v160 & 0x8000000000000000) != 0)
      {
        goto LABEL_183;
      }

      os_unfair_lock_unlock((v136 + 40));
      if (v150)
      {
        os_unfair_lock_lock((v136 + 16));
        v161 = *(v136 + 24);
        if (v161)
        {
          v162 = *(v136 + 32);
          v163 = swift_allocObject();
          *(v163 + 16) = v161;
          *(v163 + 24) = v162;
          v164 = swift_allocObject();
          *(v164 + 16) = sub_1A7D010F8;
          *(v164 + 24) = v163;
          v165 = swift_allocObject();
          *(v165 + 16) = sub_1A7D010F8;
          *(v165 + 24) = v163;
          *(v136 + 24) = sub_1A7D013D0;
          *(v136 + 32) = v165;

          os_unfair_lock_unlock((v136 + 16));
          os_unfair_lock_lock((v136 + 40));
          if (*(v136 + 321))
          {
            os_unfair_lock_unlock((v136 + 40));

            sub_1A7B15088(sub_1A7D010FC);
LABEL_118:
            ++v133;
            if (((v160 - v2) & ~((v160 - v2) >> 63)) / 1000000.0 < v50)
            {
              v50 = ((v160 - v2) & ~((v160 - v2) >> 63)) / 1000000.0;
            }

            sub_1A7B0CD6C(v0 + 88);
            v129 = v200;
            v134 = v201 + 56;
            if (v204 == v133)
            {

              v132 = v191;
              goto LABEL_156;
            }

            continue;
          }

          v166 = sub_1A7E22040();
          v167 = sub_1A7E228D0();

          if (os_log_type_enabled(v166, v167))
          {
            v168 = swift_slowAlloc();
            v169 = swift_slowAlloc();
            *&v209 = v169;
            *v168 = 136315138;
            *(v168 + 4) = sub_1A7B0CB38(*(v136 + 328), *(v136 + 336), &v209);
            _os_log_impl(&dword_1A7AD9000, v166, v167, "sendSyntheticStatsPacket: request packet on link %s", v168, 0xCu);
            sub_1A7B0CD6C(v169);
            v170 = v169;
            v2 = v205;
            MEMORY[0x1AC5654B0](v170, -1, -1);
            MEMORY[0x1AC5654B0](v168, -1, -1);
          }

          *(v136 + 321) = 1;
          os_unfair_lock_unlock((v136 + 40));
          (*(v164 + 16))(0, 0xC000000000000000);
          sub_1A7B15088(sub_1A7D010FC);

LABEL_117:

          goto LABEL_118;
        }

        os_unfair_lock_unlock((v136 + 16));
      }

      break;
    }

    goto LABEL_117;
  }

LABEL_156:

  os_unfair_lock_lock(lock);
  sub_1A7CC9448((v132 + 208), v171, (v0 + 640));
  os_unfair_lock_unlock(lock);
  type metadata accessor for IDSLinkSelectorPrimarySecondary();
  if (swift_dynamicCast())
  {
    v172 = *v194;
    if (*v194)
    {
      sub_1A7CC82B4(*(v0 + 792));
    }
  }

  v173 = v192;
  v174 = *(sub_1A7DBA3CC() + 16);

  os_unfair_lock_lock((v174 + 16));
  if (*(v174 + 40) == 1)
  {
    sub_1A7D86928();
  }

  v175 = v193;

  v177 = sub_1A7CFE2F8(v176);

  os_unfair_lock_unlock((v174 + 16));

  v178 = *(v177 + 16);
  if (v178)
  {
    v179 = v177 + 40;
    do
    {
      v180 = *(v179 - 8);
      *&v209 = *(v0 + 792);

      v180(&v209);

      v179 += 16;
      --v178;
    }

    while (v178);
  }

  v181 = sub_1A7E22040();
  v182 = sub_1A7E228F0();
  if (os_log_type_enabled(v181, v182))
  {
    v183 = swift_slowAlloc();
    *v183 = 134217984;
    *(v183 + 4) = v50;
    _os_log_impl(&dword_1A7AD9000, v181, v182, "Scheduling next for %f seconds...", v183, 0xCu);
    MEMORY[0x1AC5654B0](v183, -1, -1);
  }

  if (v50 > v173 / 1.0e18 + v175)
  {
    v184 = v50;
  }

  else
  {
    v184 = v173 / 1.0e18 + v175;
  }

  v185 = v184 * 1000000.0;
  if ((*&v185 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_191;
  }

  if (v185 <= -9.22337204e18)
  {
LABEL_192:
    __break(1u);
    goto LABEL_193;
  }

  if (v185 >= 9.22337204e18)
  {
LABEL_193:
    __break(1u);
    return;
  }

  v186 = (v185 >> 63) & 0xFFFFFF172B5AF000;
  v187 = 1000000000000 * v185;
  v188 = (v185 * 0xE8D4A51000uLL) >> 64;

  v189 = *(v0 + 8);

  v189(v187, v186 + v188);
}

uint64_t sub_1A7D00A00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = *(a2 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v37 = MEMORY[0x1E69E7CC0];
    sub_1A7CCEB20(0, v4, 0);
    v5 = v37;
    v7 = (a2 + 48);
    while (1)
    {
      v8 = *(v7 - 2);
      v9 = *(v7 - 1);
      v10 = *v7;
      v11 = *(v8 + 16);
      v12 = *(v8 + 24);

      os_unfair_lock_lock((v8 + 40));
      v13 = *(v8 + 48);
      if (*(v13 + 16) && (v14 = sub_1A7CD0DFC(&type metadata for IDSLinkIsSelectedComponent), (v15 & 1) != 0))
      {
        sub_1A7B0CD10(*(v13 + 56) + 32 * v14, v35);
      }

      else
      {
        memset(v35, 0, sizeof(v35));
      }

      os_unfair_lock_unlock((v8 + 40));
      sub_1A7CC7FFC(&qword_1EB2B66D0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v16 = v36;
      if (v36 == 2)
      {
        goto LABEL_11;
      }

LABEL_12:
      v37 = v5;
      v18 = *(v5 + 16);
      v17 = *(v5 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1A7CCEB20((v17 > 1), v18 + 1, 1);
        v5 = v37;
      }

      *(v5 + 16) = v18 + 1;
      v19 = v5 + 40 * v18;
      *(v19 + 32) = v11;
      *(v19 + 40) = v12;
      *(v19 + 48) = v9;
      *(v19 + 56) = v10;
      *(v19 + 64) = v16 & 1;
      v7 += 4;
      if (!--v4)
      {
        v20 = a1;
        v3 = a3;
        goto LABEL_17;
      }
    }

    v36 = 2;
LABEL_11:

    v16 = 0;
    goto LABEL_12;
  }

  v20 = a1;
LABEL_17:

  *(v20 + 16) = v5;
  v21 = *(v3 + 16);
  v22 = MEMORY[0x1E69E7CC0];
  if (v21)
  {
    *&v35[0] = MEMORY[0x1E69E7CC0];
    sub_1A7CCEB00(0, v21, 0);
    v22 = *&v35[0];
    v23 = (v3 + 48);
    do
    {
      v24 = *(v23 - 2);
      v25 = *(v23 - 8);
      v26 = *v23;
      v28 = *(v24 + 16);
      v27 = *(v24 + 24);
      *&v35[0] = v22;
      v30 = *(v22 + 16);
      v29 = *(v22 + 24);

      if (v30 >= v29 >> 1)
      {
        sub_1A7CCEB00((v29 > 1), v30 + 1, 1);
        v22 = *&v35[0];
      }

      v23 += 3;
      *(v22 + 16) = v30 + 1;
      v31 = v22 + 32 * v30;
      *(v31 + 32) = v28;
      *(v31 + 40) = v27;
      *(v31 + 48) = v25;
      *(v31 + 56) = v26;
      --v21;
    }

    while (v21);
    v20 = a1;
  }

  *(v20 + 24) = v22;
  return result;
}

uint64_t sub_1A7D00CA4()
{
  v1 = v0[2];
  os_unfair_lock_lock((v1 + 32));
  v2 = *(v1 + 48);
  v0[3] = v2;

  os_unfair_lock_unlock((v1 + 32));
  if (v2)
  {
    v3 = swift_task_alloc();
    v0[4] = v3;
    *v3 = v0;
    v3[1] = sub_1A7D00D8C;

    return IDSLinksQualityRepeatingAsyncTask.stop()();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1A7D00D8C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t IDSLinksQualitySemiActiveMonitorTask.deinit()
{

  sub_1A7D01164(v0 + 40);

  return v0;
}

uint64_t IDSLinksQualitySemiActiveMonitorTask.__deallocating_deinit()
{

  sub_1A7D01164(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_1A7D00F34()
{
  v1 = v0[2];
  os_unfair_lock_lock((v1 + 32));
  v2 = *(v1 + 48);
  v0[3] = v2;

  os_unfair_lock_unlock((v1 + 32));
  if (v2)
  {
    v3 = swift_task_alloc();
    v0[4] = v3;
    *v3 = v0;
    v3[1] = sub_1A7D013D8;

    return IDSLinksQualityRepeatingAsyncTask.stop()();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1A7D01050(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v4[0] = a1;
  v4[1] = a2;
  return a3(v4);
}

uint64_t sub_1A7D01088(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A7CC7FFC(&qword_1EB2B4CF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A7D0112C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[0] = a1;
  v5[1] = a2;
  return v3(v5);
}

__n128 sub_1A7D011E0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1A7D011F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1A7D0123C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A7D012A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A7D012E8(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1A7D01338(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A7CEB1BC;

  return sub_1A7CFEE70(a1, v1);
}

uint64_t sub_1A7D013F0(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3)
{
  sub_1A7CE8644(&v9);
  sub_1A7D0E0EC(a2, a3);
  v6 = v9;
  sub_1A7CE2B54(MEMORY[0x1E69E7CC0]);

  os_unfair_lock_lock(a1 + 50);
  v8[3] = &type metadata for IDSLinksQualityLinkCycleAssignmentsComponent;
  v8[0] = v6;

  sub_1A7CC8D74(v8, &type metadata for IDSLinksQualityLinkCycleAssignmentsComponent);
  os_unfair_lock_unlock(a1 + 50);
}

uint64_t sub_1A7D014A4(uint64_t a1, void *a2)
{
  sub_1A7CC7FFC(&qword_1EB2B4C00);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A7E418C0;
  v4 = a2[6];
  v5 = a2[7];
  v6 = a2[4];
  v7 = a2[5];
  type metadata accessor for IDSLinksQualityBasicStatsOngoingTask();
  swift_allocObject();

  v9 = sub_1A7CEA9C4(v8, v4, v5, v6, v7);

  *(v3 + 32) = v9;
  *(v3 + 40) = &protocol witness table for IDSLinksQualityBasicStatsOngoingTask;
  return v3;
}

uint64_t sub_1A7D01578()
{

  sub_1A7D018DC(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t sub_1A7D015F4(uint64_t a1)
{
  v3 = *(a1 + 56);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1A7D01714;
  *(v4 + 24) = v1;

  sub_1A7DA01FC(v5, sub_1A7D0171C, v4, v3);

  v6 = *(a1 + 40);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1A7D01724;
  *(v7 + 24) = v1;
  v8 = swift_allocObject();
  *(v8 + 16) = &unk_1A7E45260;
  *(v8 + 24) = v7;

  sub_1A7DA06A0(v9, &unk_1A7E4E210, v8, v6);
}

uint64_t sub_1A7D0172C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A7D017E0;

  return sub_1A7D9F084(a1, v4);
}

uint64_t sub_1A7D017E0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1A7D0191C()
{
  v0 = sub_1A7CC7FFC(&qword_1EB2B5678);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v7 - v2;
  v4 = sub_1A7E21F80();
  sub_1A7CC7A10(v4, qword_1EB2DC1F0);
  sub_1A7B0CB00(v4, qword_1EB2DC1F0);
  v5 = sub_1A7E21EF0();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  return sub_1A7E21F40();
}

uint64_t sub_1A7D01A54()
{
  v1[7] = v0;
  type metadata accessor for LEToolOptions();
  v1[8] = swift_task_alloc();
  type metadata accessor for LEToolRequestMessage(0);
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7D01B10, 0, 0);
}

uint64_t sub_1A7D01B10()
{
  type metadata accessor for LEToolRequest(0);
  swift_storeEnumTagMultiPayload();
  sub_1A7CC7FFC(&qword_1EB2B5690);
  sub_1A7E21DC0();
  v0[5] = &type metadata for CLIDefaultPrinter;
  v0[6] = &protocol witness table for CLIDefaultPrinter;
  v0[2] = sub_1A7D2B464;
  v0[3] = 0;
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_1A7D01C1C;
  v2 = v0[8];
  v3 = v0[9];

  return sub_1A7DE8A40(v3, v2, (v0 + 2));
}

uint64_t sub_1A7D01C1C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v2 + 88) = v0;

  sub_1A7D02B44(v4, type metadata accessor for LEToolOptions);
  sub_1A7D02B44(v3, type metadata accessor for LEToolRequestMessage);
  sub_1A7B0CD6C(v2 + 16);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A7D01DEC, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1A7D01DEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A7D01E58@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = sub_1A7CC7FFC(&qword_1EB2B5690);
  v22 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v20 - v5;
  v7 = sub_1A7CC7FFC(&qword_1EB2B56C8);
  v23 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v20 - v9;
  v11 = sub_1A7E21D90();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v13 = type metadata accessor for LEToolSorterInvertCommand();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A7E21D80();
  type metadata accessor for LEToolOptions();
  sub_1A7D02AA8(&qword_1EB2B56B0, type metadata accessor for LEToolOptions);
  sub_1A7E21DD0();
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D02AF0();
  v17 = v24;
  sub_1A7E23250();
  if (!v17)
  {
    v18 = v22;
    sub_1A7D02BA4();
    sub_1A7E22F30();
    (*(v23 + 8))(v10, v7);
    (*(v18 + 40))(v16, v6, v3);
    sub_1A7D02C08(v16, v21);
  }

  sub_1A7B0CD6C(a1);
  return sub_1A7D02B44(v16, type metadata accessor for LEToolSorterInvertCommand);
}

uint64_t sub_1A7D0218C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A7E230D0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A7D02214(uint64_t a1)
{
  v2 = sub_1A7D02AF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D02250(uint64_t a1)
{
  v2 = sub_1A7D02AF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7D0228C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A7CD22FC;

  return sub_1A7D01A54();
}

uint64_t sub_1A7D0233C()
{
  v0 = sub_1A7E21D90();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  sub_1A7E21D80();
  type metadata accessor for LEToolOptions();
  sub_1A7D02AA8(&qword_1EB2B56B0, type metadata accessor for LEToolOptions);
  return sub_1A7E21DD0();
}

uint64_t sub_1A7D02428()
{
  v0 = sub_1A7CC7FFC(&qword_1EB2B5678);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v10 - v2;
  v4 = sub_1A7E21F80();
  sub_1A7CC7A10(v4, qword_1EB2DC208);
  sub_1A7B0CB00(v4, qword_1EB2DC208);
  sub_1A7CC7FFC(&qword_1EB2B5680);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A7E418C0;
  v6 = type metadata accessor for LEToolSorterInvertCommand();
  v7 = sub_1A7D02AA8(&qword_1EB2B5688, type metadata accessor for LEToolSorterInvertCommand);
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  v8 = sub_1A7E21EF0();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  return sub_1A7E21F40();
}

uint64_t sub_1A7D025E4()
{
  sub_1A7D027B0();
  sub_1A7E21E90();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A7D02690@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1A7E21F80();
  v6 = sub_1A7B0CB00(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

unint64_t sub_1A7D02758()
{
  result = qword_1EB2B5660;
  if (!qword_1EB2B5660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5660);
  }

  return result;
}

unint64_t sub_1A7D027B0()
{
  result = qword_1EB2B5668;
  if (!qword_1EB2B5668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5668);
  }

  return result;
}

unint64_t sub_1A7D02808()
{
  result = qword_1EB2B5670;
  if (!qword_1EB2B5670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5670);
  }

  return result;
}

uint64_t type metadata accessor for LEToolSorterInvertCommand()
{
  result = qword_1EB2B5698;
  if (!qword_1EB2B5698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A7D028D0()
{
  sub_1A7D0293C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1A7D0293C()
{
  if (!qword_1EB2B56A8)
  {
    type metadata accessor for LEToolOptions();
    sub_1A7D02AA8(&qword_1EB2B56B0, type metadata accessor for LEToolOptions);
    v0 = sub_1A7E21DE0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB2B56A8);
    }
  }
}

uint64_t sub_1A7D02AA8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A7D02AF0()
{
  result = qword_1EB2B56D0;
  if (!qword_1EB2B56D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B56D0);
  }

  return result;
}

uint64_t sub_1A7D02B44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A7D02BA4()
{
  result = qword_1EB2B56D8;
  if (!qword_1EB2B56D8)
  {
    sub_1A7CC9830(&qword_1EB2B5690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B56D8);
  }

  return result;
}

uint64_t sub_1A7D02C08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LEToolSorterInvertCommand();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A7D02C80()
{
  result = qword_1EB2B56E0;
  if (!qword_1EB2B56E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B56E0);
  }

  return result;
}

unint64_t sub_1A7D02CD8()
{
  result = qword_1EB2B56E8;
  if (!qword_1EB2B56E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B56E8);
  }

  return result;
}

unint64_t sub_1A7D02D30()
{
  result = qword_1EB2B56F0;
  if (!qword_1EB2B56F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B56F0);
  }

  return result;
}

uint64_t sub_1A7D02D8C()
{
  v0 = sub_1A7E22060();
  sub_1A7CC7A10(v0, qword_1EB2B2D30);
  sub_1A7B0CB00(v0, qword_1EB2B2D30);
  return sub_1A7E22050();
}

uint64_t sub_1A7D02E14()
{
  v0 = sub_1A7E21850();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A7E21940();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v16 - v12;
  sub_1A7E218B0();
  v16[0] = 0xD00000000000001CLL;
  v16[1] = 0x80000001A7EADC30;
  (*(v1 + 104))(v4, *MEMORY[0x1E6968F70], v0);
  sub_1A7CC7DFC();
  sub_1A7E21920();
  (*(v1 + 8))(v4, v0);
  (*(v6 + 8))(v9, v5);
  type metadata accessor for IDSPacketLogManager();
  v14 = swift_allocObject();
  result = sub_1A7D03024(v13);
  qword_1EB2DC088 = v14;
  return result;
}

uint64_t sub_1A7D03024(uint64_t a1)
{
  v2 = v1;
  swift_defaultActor_initialize();
  sub_1A7CC7FFC(&qword_1EB2B56F8);
  sub_1A7CC7FFC(&qword_1EB2B5710);
  sub_1A7CF3788(&qword_1EB2B2970, &qword_1EB2B5710);
  sub_1A7E21D40();
  v4 = OBJC_IVAR____TtC13IDSFoundation19IDSPacketLogManager_directory;
  v5 = sub_1A7E21940();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v2 + v4, a1, v5);
  v7 = sub_1A7E22260();
  v8 = sub_1A7E22260();
  v9 = MEMORY[0x1AC562F80](v7, v8);

  if (v9)
  {
    sub_1A7E22AA0();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v26 = v24;
  v27 = v25;
  if (*(&v25 + 1))
  {
    if (swift_dynamicCast())
    {
      v10 = v23;
      goto LABEL_9;
    }
  }

  else
  {
    sub_1A7CC9970(&v26, &unk_1EB2B7C70);
  }

  v10 = 0x4122750000000000;
LABEL_9:
  *(v2 + OBJC_IVAR____TtC13IDSFoundation19IDSPacketLogManager_maximumAge) = v10;
  if (qword_1EB2B2D28 != -1)
  {
    swift_once();
  }

  v11 = sub_1A7E22060();
  sub_1A7B0CB00(v11, qword_1EB2B2D30);
  v12 = sub_1A7E22040();
  v13 = sub_1A7E228F0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = v10;
    _os_log_impl(&dword_1A7AD9000, v12, v13, "PacketLog maximum age: %f", v14, 0xCu);
    MEMORY[0x1AC5654B0](v14, -1, -1);
  }

  v15 = sub_1A7E22260();
  v16 = sub_1A7E22260();
  v17 = MEMORY[0x1AC562F80](v15, v16);

  if (v17)
  {
    sub_1A7E22AA0();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v26 = v24;
  v27 = v25;
  if (*(&v25 + 1))
  {
    if (swift_dynamicCast())
    {
      v18 = v23;
      goto LABEL_21;
    }
  }

  else
  {
    sub_1A7CC9970(&v26, &unk_1EB2B7C70);
  }

  v18 = 52428800;
LABEL_21:
  *(v2 + OBJC_IVAR____TtC13IDSFoundation19IDSPacketLogManager_maximumSize) = v18;
  v19 = sub_1A7E22040();
  v20 = sub_1A7E228F0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 134217984;
    *(v21 + 4) = v18;
    _os_log_impl(&dword_1A7AD9000, v19, v20, "PacketLog maximum size: %ld", v21, 0xCu);
    MEMORY[0x1AC5654B0](v21, -1, -1);
  }

  (*(v6 + 8))(a1, v5);
  return v2;
}

uint64_t sub_1A7D034C0()
{
  v1[19] = v0;
  sub_1A7CC7FFC(&qword_1EB2B5798);
  v1[20] = swift_task_alloc();
  v2 = sub_1A7E216F0();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v3 = sub_1A7E21940();
  v1[26] = v3;
  v1[27] = *(v3 - 8);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v4 = sub_1A7E21B00();
  v1[32] = v4;
  v1[33] = *(v4 - 8);
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7D036F8, v0, 0);
}

uint64_t sub_1A7D036F8()
{
  v156 = v0;
  v155[1] = *MEMORY[0x1E69E9840];
  v1 = v0[35];
  v2 = v0[32];
  v3 = v0[33];
  sub_1A7E21AF0();
  sub_1A7E21AE0();
  v4 = *(v3 + 8);
  v4(v1, v2);
  v134 = objc_opt_self();
  v5 = [v134 defaultManager];
  v6 = sub_1A7E218E0();
  sub_1A7CC7FFC(&qword_1EB2B5758);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1A7E455C0;
  v8 = *MEMORY[0x1E695DBB8];
  v9 = *MEMORY[0x1E695DA98];
  *(v7 + 32) = *MEMORY[0x1E695DBB8];
  *(v7 + 40) = v9;
  v10 = *MEMORY[0x1E695DB50];
  *(v7 + 48) = *MEMORY[0x1E695DB50];
  type metadata accessor for URLResourceKey(0);
  v150 = v8;
  v135 = v9;
  v136 = v10;
  v11 = sub_1A7E22520();

  v0[17] = 0;
  v12 = [v5 contentsOfDirectoryAtURL:v6 includingPropertiesForKeys:v11 options:0 error:v0 + 17];

  v137 = v0 + 17;
  v13 = v0[17];
  if (!v12)
  {
    v16 = v0[36];
    v17 = v0[32];
    v18 = v13;
    v13 = sub_1A7E217F0();

    swift_willThrow();
    v4(v16, v17);
    if (qword_1EB2B2D28 != -1)
    {
      goto LABEL_62;
    }

    goto LABEL_4;
  }

  v14 = sub_1A7E22530();
  v15 = v13;

  v155[0] = v14;

  sub_1A7D08A6C(v155);

  v149 = v155[0];
  v148 = v155[0][2];
  if (!v148)
  {
LABEL_55:
    v123 = v0[36];
    v124 = v0[32];

    v4(v123, v124);
    goto LABEL_57;
  }

  v27 = 0;
  v142 = 0;
  v143 = 0;
  v139 = 0;
  v140 = 0;
  v28 = v0[33];
  v29 = v0[27];
  v132 = v0[19];
  v145 = v155[0] + ((*(v29 + 80) + 32) & ~*(v29 + 80));
  v146 = v29;
  v131 = OBJC_IVAR____TtC13IDSFoundation19IDSPacketLogManager_maximumSize;
  v154 = (v29 + 8);
  v138 = (v0[22] + 8);
  v133 = (v28 + 48);
  v130 = (v28 + 32);
  v147 = v4;
  v144 = v0;
  while (v27 < v149[2])
  {
    v30 = *(v146 + 16);
    v30(v0[31], &v145[*(v146 + 72) * v27], v0[26]);
    if (qword_1EB2B2D28 != -1)
    {
      swift_once();
    }

    v31 = v0[30];
    v32 = v0[31];
    v33 = v0[26];
    v34 = sub_1A7E22060();
    sub_1A7B0CB00(v34, qword_1EB2B2D30);
    v30(v31, v32, v33);
    v35 = sub_1A7E22040();
    v36 = sub_1A7E228F0();
    v37 = os_log_type_enabled(v35, v36);
    v38 = v0[30];
    v39 = v0[26];
    v153 = v27;
    if (v37)
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v155[0] = v41;
      *v40 = 136315650;
      sub_1A7D0D444(&qword_1EB2B3058, MEMORY[0x1E6968FB0]);
      v42 = sub_1A7E23090();
      v44 = v43;
      v152 = *v154;
      (*v154)(v38, v39);
      v45 = sub_1A7B0CB38(v42, v44, v155);

      *(v40 + 4) = v45;
      *(v40 + 12) = 2048;
      *(v40 + 14) = v140;
      *(v40 + 22) = 1024;
      *(v40 + 24) = v139 & 1;
      _os_log_impl(&dword_1A7AD9000, v35, v36, "  evaluating %s (accumulated size: %ld; shouldDeleteRemainingFiles: %{BOOL}d)...", v40, 0x1Cu);
      sub_1A7B0CD6C(v41);
      MEMORY[0x1AC5654B0](v41, -1, -1);
      MEMORY[0x1AC5654B0](v40, -1, -1);

      v142 = v139;
      v143 = v140;
    }

    else
    {

      v152 = *v154;
      (*v154)(v38, v39);
    }

    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A7E418C0;
    *(inited + 32) = v150;
    v47 = v150;
    sub_1A7D0BFFC(inited);
    swift_setDeallocating();
    sub_1A7D0D3E8(inited + 32);
    sub_1A7E21880();
    v48 = v0[25];
    v49 = v0[21];

    v50 = sub_1A7E216C0();
    v51 = *v138;
    (*v138)(v48, v49);
    if (v50 == 2 || (v50 & 1) == 0)
    {
      v30(v0[29], v0[31], v0[26]);
      v13 = sub_1A7E22040();
      v54 = sub_1A7E228F0();
      v55 = os_log_type_enabled(v13, v54);
      v56 = v0[31];
      v57 = v0[29];
      v58 = v0[26];
      if (v55)
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v155[0] = v60;
        *v59 = 136315138;
        sub_1A7D0D444(&qword_1EB2B3058, MEMORY[0x1E6968FB0]);
        v61 = sub_1A7E23090();
        v63 = v62;
        (v152)(v57, v58);
        v64 = sub_1A7B0CB38(v61, v63, v155);

        *(v59 + 4) = v64;
        _os_log_impl(&dword_1A7AD9000, v13, v54, "  ... skipping %s because it is not a regular file", v59, 0xCu);
        sub_1A7B0CD6C(v60);
        MEMORY[0x1AC5654B0](v60, -1, -1);
        MEMORY[0x1AC5654B0](v59, -1, -1);
      }

      else
      {

        (v152)(v57, v58);
      }

      (v152)(v56, v58);
      v4 = v147;
      v65 = v153;
      v0 = v144;
      goto LABEL_21;
    }

    v52 = swift_initStackObject();
    *(v52 + 16) = xmmword_1A7E418C0;
    *(v52 + 32) = v136;
    v53 = v136;
    sub_1A7D0BFFC(v52);
    swift_setDeallocating();
    sub_1A7D0D3E8(v52 + 32);
    sub_1A7E21880();
    v66 = v0[24];
    v67 = v0[21];

    v13 = sub_1A7E216E0();
    v69 = v68;
    v51(v66, v67);
    if (v69)
    {
      v70 = 0;
    }

    else
    {
      v70 = v13;
    }

    v71 = __OFADD__(v143, v70);
    v143 += v70;
    if (v71)
    {
      goto LABEL_61;
    }

    v72 = swift_initStackObject();
    *(v72 + 16) = xmmword_1A7E418C0;
    *(v72 + 32) = v135;
    v73 = v135;
    sub_1A7D0BFFC(v72);
    swift_setDeallocating();
    sub_1A7D0D3E8(v72 + 32);
    sub_1A7E21880();
    v74 = v0[32];
    v75 = v0[23];
    v77 = v0[20];
    v76 = v0[21];

    sub_1A7E216D0();
    v51(v75, v76);
    v4 = v147;
    if ((*v133)(v77, 1, v74) == 1)
    {
      v78 = v0[32];
      v79 = v0[20];
      sub_1A7E21AF0();
      if ((*v133)(v79, 1, v78) != 1)
      {
        sub_1A7CC9970(v0[20], &qword_1EB2B5798);
      }
    }

    else
    {
      (*v130)(v0[34], v0[20], v0[32]);
    }

    if (*(v132 + v131) < v143)
    {
      v80 = sub_1A7E22040();
      v81 = sub_1A7E228F0();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        _os_log_impl(&dword_1A7AD9000, v80, v81, "  ... have reached maximum size", v82, 2u);
        MEMORY[0x1AC5654B0](v82, -1, -1);
      }

      if (sub_1A7E21AB0())
      {
LABEL_37:
        v83 = sub_1A7E22040();
        v84 = sub_1A7E228F0();
        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          *v85 = 0;
          _os_log_impl(&dword_1A7AD9000, v83, v84, "  ... have reached earliest allowed date", v85, 2u);
          MEMORY[0x1AC5654B0](v85, -1, -1);
        }
      }

      v139 = 1;
      goto LABEL_41;
    }

    if (sub_1A7E21AB0())
    {
      goto LABEL_37;
    }

    if ((v142 & 1) == 0)
    {
      v116 = sub_1A7E22040();
      v117 = sub_1A7E228F0();
      v118 = os_log_type_enabled(v116, v117);
      v119 = v0[34];
      v13 = v0[31];
      v120 = v0[32];
      v121 = v0[26];
      if (v118)
      {
        v122 = swift_slowAlloc();
        *v122 = 0;
        _os_log_impl(&dword_1A7AD9000, v116, v117, "  ... keeping file as it is neither too old nor too large", v122, 2u);
        MEMORY[0x1AC5654B0](v122, -1, -1);
      }

      v4 = v147;
      v147(v119, v120);
      (v152)(v13, v121);
      v142 = 0;
      goto LABEL_54;
    }

LABEL_41:
    v86 = sub_1A7E22040();
    v87 = sub_1A7E228F0();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&dword_1A7AD9000, v86, v87, "  ... removing file", v88, 2u);
      MEMORY[0x1AC5654B0](v88, -1, -1);
    }

    v89 = [v134 defaultManager];
    v90 = sub_1A7E218E0();
    v0[18] = 0;
    v91 = [v89 removeItemAtURL:v90 error:v137 + 1];

    v92 = v0[18];
    if (v91)
    {
      v13 = v0[34];
      v94 = v0[31];
      v93 = v0[32];
      v95 = v0[26];
      v96 = v92;
      v147(v13, v93);
      (v152)(v94, v95);
    }

    else
    {
      v97 = v0[31];
      v98 = v0[28];
      v99 = v0[26];
      v100 = v92;
      v13 = sub_1A7E217F0();

      swift_willThrow();
      v30(v98, v97, v99);
      v101 = v13;
      v102 = sub_1A7E22040();
      v103 = sub_1A7E228E0();

      v104 = os_log_type_enabled(v102, v103);
      v105 = v0[34];
      v106 = v0[32];
      v151 = v0[31];
      v107 = v0[28];
      v108 = v0[26];
      if (v104)
      {
        v109 = swift_slowAlloc();
        v127 = swift_slowAlloc();
        v128 = swift_slowAlloc();
        v155[0] = v128;
        *v109 = 136315394;
        sub_1A7D0D444(&qword_1EB2B3058, MEMORY[0x1E6968FB0]);
        v141 = v105;
        v110 = sub_1A7E23090();
        v129 = v106;
        v112 = v111;
        (v152)(v107, v108);
        v113 = sub_1A7B0CB38(v110, v112, v155);

        *(v109 + 4) = v113;
        *(v109 + 12) = 2112;
        v114 = v13;
        v115 = _swift_stdlib_bridgeErrorToNSError();
        *(v109 + 14) = v115;
        *v127 = v115;
        _os_log_impl(&dword_1A7AD9000, v102, v103, "  ... error removing packet log at %s: %@", v109, 0x16u);
        sub_1A7CC9970(v127, &qword_1EB2B57A0);
        MEMORY[0x1AC5654B0](v127, -1, -1);
        sub_1A7B0CD6C(v128);
        MEMORY[0x1AC5654B0](v128, -1, -1);
        MEMORY[0x1AC5654B0](v109, -1, -1);

        v147(v141, v129);
      }

      else
      {

        v13 = v152;
        (v152)(v107, v108);
        v147(v105, v106);
      }

      (v152)(v151, v108);
    }

    v142 = 1;
LABEL_54:
    v140 = v143;
    v65 = v153;
LABEL_21:
    v27 = v65 + 1;
    if (v148 == v27)
    {
      goto LABEL_55;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  swift_once();
LABEL_4:
  v19 = sub_1A7E22060();
  sub_1A7B0CB00(v19, qword_1EB2B2D30);
  v20 = v13;
  v21 = sub_1A7E22040();
  v22 = sub_1A7E228E0();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    v25 = v13;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 4) = v26;
    *v24 = v26;
    _os_log_impl(&dword_1A7AD9000, v21, v22, "Error cleaning packet logs: %@", v23, 0xCu);
    sub_1A7CC9970(v24, &qword_1EB2B57A0);
    MEMORY[0x1AC5654B0](v24, -1, -1);
    MEMORY[0x1AC5654B0](v23, -1, -1);
  }

  else
  {
  }

LABEL_57:

  v125 = v0[1];

  return v125();
}

uint64_t sub_1A7D04914(uint64_t a1, uint64_t a2)
{
  v42 = a1;
  v47 = a2;
  v2 = sub_1A7E216F0();
  v51 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v46 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v40 - v7;
  v9 = sub_1A7CC7FFC(&qword_1EB2B5798);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v50 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v40 - v14;
  v16 = sub_1A7E21B00();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v49 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v40 - v22;
  v45 = sub_1A7CC7FFC(&qword_1EB2B5758);
  inited = swift_initStackObject();
  v44 = xmmword_1A7E418C0;
  *(inited + 16) = xmmword_1A7E418C0;
  v25 = *MEMORY[0x1E695DA98];
  *(inited + 32) = *MEMORY[0x1E695DA98];
  v41 = v25;
  sub_1A7D0BFFC(inited);
  swift_setDeallocating();
  sub_1A7D0D3E8(inited + 32);
  v26 = v43;
  sub_1A7E21880();
  v52 = v23;
  v48 = v2;
  if (v26)
  {

    (*(v17 + 56))(v15, 1, 1, v16);
  }

  else
  {

    sub_1A7E216D0();
    (*(v51 + 8))(v8, v2);
    v27 = *(v17 + 48);
    if (v27(v15, 1, v16) != 1)
    {
      (*(v17 + 32))(v52, v15, v16);
      goto LABEL_7;
    }
  }

  sub_1A7E21AF0();
  v27 = *(v17 + 48);
  if (v27(v15, 1, v16) != 1)
  {
    sub_1A7CC9970(v15, &qword_1EB2B5798);
  }

LABEL_7:
  v28 = swift_initStackObject();
  *(v28 + 16) = v44;
  *(v28 + 32) = v41;
  v29 = v28 + 32;
  sub_1A7D0BFFC(v28);
  swift_setDeallocating();
  sub_1A7D0D3E8(v29);
  v30 = v46;
  sub_1A7E21880();
  v31 = v48;
  v32 = v51;

  v33 = v50;
  sub_1A7E216D0();
  (*(v32 + 8))(v30, v31);
  v34 = v27(v33, 1, v16);
  v35 = v49;
  if (v34 == 1)
  {
    sub_1A7E21AF0();
    if (v27(v33, 1, v16) != 1)
    {
      sub_1A7CC9970(v33, &qword_1EB2B5798);
    }
  }

  else
  {
    (*(v17 + 32))(v49, v33, v16);
  }

  v36 = v52;
  v37 = sub_1A7E21AB0();
  v38 = *(v17 + 8);
  v38(v35, v16);
  v38(v36, v16);
  return v37 & 1;
}

uint64_t sub_1A7D04E54@<X0>(uint64_t a1@<X8>)
{
  v131 = a1;
  v130 = sub_1A7CC7FFC(&qword_1EB2B5710);
  v132 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130, v1);
  v128 = &v115 - v2;
  v142 = sub_1A7CC7FFC(&qword_1EB2B5718);
  v129 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142, v3);
  v141 = &v115 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v139 = &v115 - v7;
  v123 = sub_1A7E21C70();
  v124 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123, v8);
  v119 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v120 = &v115 - v12;
  v13 = sub_1A7CC7FFC(&qword_1EB2B5720);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v118 = &v115 - v15;
  v125 = sub_1A7CC7FFC(&qword_1EB2B5728);
  v126 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125, v16);
  v121 = &v115 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v122 = &v115 - v20;
  v21 = sub_1A7CC7FFC(&qword_1EB2B5730);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v115 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v115 - v28;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v115 - v32;
  v140 = sub_1A7CC7FFC(&qword_1EB2B5738);
  v127 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140, v34);
  v36 = &v115 - v35;
  v144 = sub_1A7E21D00();
  v155 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144, v37);
  v116 = &v115 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v115 - v41;
  v153 = sub_1A7CC7FFC(&qword_1EB2B5740);
  v157 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153, v43);
  v117 = &v115 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45, v46);
  v154 = &v115 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v151 = &v115 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v138 = &v115 - v53;
  sub_1A7E21C60();
  v134 = v25;
  sub_1A7E21D30();
  v137 = MEMORY[0x1E69E9290];
  v54 = sub_1A7CF3788(&unk_1EB2B2980, &qword_1EB2B5730);
  MEMORY[0x1AC561520](v25, v21, v54);
  v55 = *(v22 + 8);
  v55(v25, v21);
  v133 = v29;
  sub_1A7E21C50();
  v55(v29, v21);
  v156 = v22 + 8;
  v56 = sub_1A7CC7FFC(&qword_1EB2B5748);
  v145 = v36;
  v152 = v33;
  v135 = v56;
  sub_1A7E21CE0();
  v55(v33, v21);
  v57 = *(v155 + 8);
  v155 += 8;
  v150 = v57;
  v58 = v144;
  v57(v42, v144);
  v59 = v151;
  MEMORY[0x1AC561560](v36, v56);
  v149 = sub_1A7CF3788(&qword_1EB2B3020, &qword_1EB2B5740);
  v60 = v153;
  MEMORY[0x1AC561520](v59, v153, v149);
  v61 = *(v157 + 8);
  v157 += 8;
  v148 = v61;
  v61(v59, v60);
  sub_1A7E21C60();
  v62 = v134;
  sub_1A7E21D30();
  v63 = v133;
  v64 = v21;
  v143 = v21;
  MEMORY[0x1AC561520](v62, v21, v54);
  v55(v62, v21);
  v65 = v152;
  v146 = v54;
  sub_1A7E21C50();
  v55(v63, v64);
  v147 = v55;
  v66 = v145;
  v67 = v135;
  sub_1A7E21CE0();
  v55(v65, v64);
  v115 = v42;
  v150(v42, v58);
  v68 = v154;
  MEMORY[0x1AC561560](v66, v67);
  v69 = v153;
  MEMORY[0x1AC561520](v68, v153, v149);
  v148(v68, v69);
  v160 = 45;
  v161 = 0xE100000000000000;
  v136 = sub_1A7D08A18();
  MEMORY[0x1AC561520](v162, &v160, MEMORY[0x1E69E6158], v136);
  sub_1A7E21C60();
  v70 = sub_1A7E21D20();
  v71 = v118;
  (*(*(v70 - 8) + 56))(v118, 1, 1, v70);
  v72 = v116;
  sub_1A7E21C60();
  v73 = v119;
  sub_1A7E21D10();
  v74 = sub_1A7D0D444(&qword_1EB2B3028, MEMORY[0x1E69E8250]);
  v75 = v120;
  v76 = v123;
  MEMORY[0x1AC561520](v73, v123, v74);
  v77 = *(v124 + 8);
  v77(v73, v76);
  v78 = v134;
  sub_1A7E21C50();
  v77(v75, v76);
  v79 = v133;
  v80 = MEMORY[0x1E69E67B0];
  v81 = v143;
  sub_1A7E21CF0();
  v82 = v81;
  v83 = v147;
  v147(v78, v82);
  v84 = v144;
  v150(v72, v144);
  sub_1A7CC9970(v71, &qword_1EB2B5720);
  v85 = v121;
  MEMORY[0x1AC561570](v79, v80);
  v86 = sub_1A7CF3788(&qword_1EB2B3018, &qword_1EB2B5728);
  v87 = v122;
  v88 = v125;
  MEMORY[0x1AC561520](v85, v125, v86);
  v89 = *(v126 + 8);
  v89(v85, v88);
  v90 = v152;
  sub_1A7E21C50();
  v89(v87, v88);
  v91 = v145;
  v92 = v135;
  v93 = v143;
  v94 = v115;
  sub_1A7E21CE0();
  v83(v90, v93);
  v95 = v150;
  v150(v94, v84);
  v96 = v117;
  MEMORY[0x1AC561560](v91, v92);
  v97 = v96;
  v98 = v96;
  v99 = v153;
  MEMORY[0x1AC561520](v97, v153, v149);
  v148(v98, v99);
  v158 = 0x676F6C702ELL;
  v159 = 0xE500000000000000;
  MEMORY[0x1AC561520](&v160, &v158, MEMORY[0x1E69E6158], v136);
  sub_1A7E21C50();
  sub_1A7E21C60();
  sub_1A7CC7FFC(&qword_1EB2B5750);
  sub_1A7CF3788(&qword_1EB2B2968, &qword_1EB2B5738);
  sub_1A7E21CC0();
  v100 = v144;
  v95(v94, v144);
  v101 = v162[0];
  v102 = v162[1];
  sub_1A7E21C60();
  v158 = v101;
  v159 = v102;
  v103 = v152;
  sub_1A7E21CD0();

  sub_1A7CF3788(&qword_1EB2B2978, &qword_1EB2B5718);
  v104 = v143;
  sub_1A7E21CC0();
  v147(v103, v104);
  v95(v94, v100);
  sub_1A7E21C60();
  sub_1A7CC7FFC(&qword_1EB2B56F8);
  v105 = v128;
  v106 = v153;
  sub_1A7E21CC0();
  v95(v94, v100);
  v107 = v160;
  v108 = v161;
  sub_1A7E21C60();
  v158 = v107;
  v159 = v108;
  v109 = v152;
  sub_1A7E21CD0();

  sub_1A7CF3788(&qword_1EB2B2970, &qword_1EB2B5710);
  v110 = v130;
  sub_1A7E21CC0();
  v147(v109, v104);
  v95(v94, v100);
  (*(v132 + 8))(v105, v110);
  v111 = *(v129 + 8);
  v112 = v142;
  v111(v141, v142);
  v111(v139, v112);
  (*(v127 + 8))(v145, v140);
  v113 = v148;
  v148(v154, v106);
  v113(v151, v106);
  return (v113)(v138, v106);
}

uint64_t sub_1A7D05EC0(uint64_t a1, void *a2)
{
  v270 = a2;
  v311 = *MEMORY[0x1E69E9840];
  v265 = sub_1A7E222E0();
  v252 = *(v265 - 8);
  MEMORY[0x1EEE9AC00](v265, v3);
  v264 = &v237 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v279 = &v237 - v7;
  v8 = sub_1A7CC7FFC(&qword_1EB2B5780);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v285 = &v237 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v284 = &v237 - v13;
  v289 = sub_1A7CC7FFC(&qword_1EB2B4B90);
  v272 = *(v289 - 8);
  MEMORY[0x1EEE9AC00](v289, v14);
  v254 = &v237 - v15;
  v16 = sub_1A7CC7FFC(&qword_1EB2B5788);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v255 = &v237 - v18;
  v266 = sub_1A7CC7FFC(&qword_1EB2B5790);
  *&v251 = *(v266 - 8);
  MEMORY[0x1EEE9AC00](v266, v19);
  v253 = &v237 - v20;
  v273 = sub_1A7E216F0();
  v274 = *(v273 - 8);
  MEMORY[0x1EEE9AC00](v273, v21);
  v290 = &v237 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1A7E21850();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v237 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1A7E21940();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v30);
  v269 = &v237 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v292 = &v237 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v291 = &v237 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v237 - v40;
  v42 = objc_opt_self();
  v43 = [v42 defaultManager];
  v295 = 0x65737365636F7270;
  v296 = 0xE900000000000064;
  v44 = *(v24 + 104);
  v260 = *MEMORY[0x1E6968F70];
  v259 = v24 + 104;
  v258 = v44;
  v44(v27);
  v271 = sub_1A7CC7DFC();
  v283 = a1;
  sub_1A7E21930();
  v45 = *(v24 + 8);
  v261 = v27;
  v263 = v23;
  v262 = v24 + 8;
  v257 = v45;
  v45(v27, v23);
  v46 = sub_1A7E218E0();
  v267 = v29;
  v47 = *(v29 + 8);
  v286 = v28;
  v288 = v29 + 8;
  v287 = v47;
  v47(v41, v28);
  v295 = 0;
  LODWORD(a1) = [v43 createDirectoryAtURL:v46 withIntermediateDirectories:1 attributes:0 error:&v295];

  if (!a1)
  {
    v130 = v295;
    sub_1A7E217F0();

    return swift_willThrow();
  }

  v48 = v295;
  v49 = sub_1A7CE3014(MEMORY[0x1E69E7CC0]);
  v50 = [v42 defaultManager];
  v51 = sub_1A7E218E0();
  v282 = sub_1A7CC7FFC(&qword_1EB2B5758);
  v52 = swift_allocObject();
  v281 = xmmword_1A7E418C0;
  *(v52 + 16) = xmmword_1A7E418C0;
  v53 = *MEMORY[0x1E695DBB8];
  *(v52 + 32) = *MEMORY[0x1E695DBB8];
  type metadata accessor for URLResourceKey(0);
  v280 = v53;
  v54 = sub_1A7E22520();

  v295 = 0;
  v55 = [v50 contentsOfDirectoryAtURL:v51 includingPropertiesForKeys:v54 options:0 error:&v295];

  v56 = v295;
  if (!v55)
  {
    v132 = v295;
    sub_1A7E217F0();

    swift_willThrow();
  }

  v268 = v49;
  v57 = v286;
  v58 = sub_1A7E22530();
  v59 = v56;

  v277 = *(v58 + 16);
  if (v277)
  {
    v60 = 0;
    v61 = v267;
    v62 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    v250 = OBJC_IVAR____TtC13IDSFoundation19IDSPacketLogManager_packetLogFilePattern;
    v276 = (v58 + v62);
    v278 = v267 + 16;
    ++v274;
    v249 = (v251 + 56);
    v248 = (v251 + 48);
    v247 = (v251 + 32);
    v246 = "Could not read log file at ";
    *&v251 = v251 + 8;
    v63 = v273;
    v64 = v291;
    v275 = v58;
    while (1)
    {
      if (v60 >= *(v58 + 16))
      {
        goto LABEL_88;
      }

      v65 = *(v61 + 16);
      (v65)(v64, v276 + *(v61 + 72) * v60, v57);
      v66 = swift_allocObject();
      *(v66 + 16) = v281;
      v67 = v280;
      *(v66 + 32) = v280;
      v68 = v67;
      sub_1A7D0BFFC(v66);
      swift_setDeallocating();
      sub_1A7D0D3E8(v66 + 32);
      swift_deallocClassInstance();
      v69 = v290;
      v70 = v293;
      sub_1A7E21880();
      v293 = v70;
      if (v70)
      {
        v287(v291, v57);
      }

      v71 = sub_1A7E216C0();
      v72 = v69;
      v73 = v71;
      v74 = v71;
      (*v274)(v72, v63);
      if (v74 != 2 && (v73 & 1) != 0)
      {
        break;
      }

      v64 = v291;
      v287(v291, v57);
LABEL_6:
      v58 = v275;
      if (v277 == ++v60)
      {
        goto LABEL_35;
      }
    }

    v75 = v270[3];
    v76 = v270[4];
    sub_1A7CC9878(v270, v75);
    v77 = sub_1A7CCC2B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v79 = *(v77 + 2);
    v78 = *(v77 + 3);
    if (v79 >= v78 >> 1)
    {
      v77 = sub_1A7CCC2B0((v78 > 1), v79 + 1, 1, v77);
    }

    *(v77 + 2) = v79 + 1;
    v80 = &v77[48 * v79];
    *(v80 + 4) = 0x676E696B63656843;
    *(v80 + 5) = 0xE900000000000020;
    *(v80 + 24) = 0;
    *(v80 + 7) = 0;
    *(v80 + 8) = 0;
    v80[72] = 2;
    v81 = sub_1A7E218C0();
    v85 = *(v77 + 2);
    v84 = *(v77 + 3);
    v86 = v84 >> 1;
    v87 = v85 + 1;
    if (v84 >> 1 <= v85)
    {
      v245 = v81;
      v128 = v82;
      v129 = sub_1A7CCC2B0((v84 > 1), v85 + 1, 1, v77);
      v82 = v128;
      v57 = v286;
      v77 = v129;
      v81 = v245;
      v84 = *(v77 + 3);
      v86 = v84 >> 1;
    }

    *(v77 + 2) = v87;
    v88 = &v77[48 * v85];
    *(v88 + 4) = v81;
    *(v88 + 5) = v82;
    *(v88 + 24) = 768;
    *(v88 + 7) = 0;
    *(v88 + 8) = 0;
    v88[72] = 2;
    v89 = v85 + 2;
    if (v86 < v89)
    {
      v77 = sub_1A7CCC2B0((v84 > 1), v89, 1, v77);
    }

    *(v77 + 2) = v89;
    v90 = &v77[48 * v87];
    *(v90 + 4) = 3026478;
    *(v90 + 5) = 0xE300000000000000;
    *(v90 + 24) = 0;
    *(v90 + 7) = 0;
    *(v90 + 8) = 0;
    v90[72] = 2;
    v295 = 0;
    v296 = 0;
    LOBYTE(v297) = 1;
    v298 = v77;
    v91 = &v295;
    v92 = v75;
    v93 = v76;
    CLIPrinter.print(_:)(*(&v83 - 3));

    v94 = v291;
    sub_1A7E218C0();
    sub_1A7CC7FFC(&qword_1EB2B5710);
    v95 = v255;
    v96 = v293;
    sub_1A7E21D50();
    if (v96)
    {

      v287(v94, v57);
      (*v249)(v95, 1, 1, v266);
      v293 = 0;
      v63 = v273;
      v64 = v94;
    }

    else
    {
      v293 = 0;

      v97 = v266;
      v98 = (*v248)(v95, 1, v266);
      v63 = v273;
      if (v98 != 1)
      {
        (*v247)(v253, v95, v97);
        sub_1A7CC9878(v270, v270[3]);
        v99._object = (v246 | 0x8000000000000000);
        v99._countAndFlagsBits = 0xD000000000000010;
        CLIPrinter.print(_:)(v99);
        sub_1A7E21D60();

        v239 = v299;
        v238 = v300;
        v100 = v302;
        v237 = v301;
        v101 = v304;
        v102 = v305;
        v103 = v306;
        v242 = v307;
        v241 = v308;
        v104 = v310;
        v240 = v309;
        v245 = v303;
        v105 = MEMORY[0x1AC561BF0]();
        v107 = *(v268 + 16);
        v244 = v101;
        v243 = v102;
        if (v107)
        {
          v108 = sub_1A7CD1248(v105, v106);
          v110 = v109;

          v111 = MEMORY[0x1E69E7CC0];
          if (v110)
          {
            v111 = *(*(v268 + 56) + 8 * v108);
          }
        }

        else
        {

          v111 = MEMORY[0x1E69E7CC0];
        }

        v239 = MEMORY[0x1AC561BF0](v239, v238, v237, v100);
        v113 = v112;

        v114 = MEMORY[0x1AC561BF0](v242, v241, v240, v104);
        v116 = v115;

        v117 = (v254 + *(v289 + 48));
        v118 = (v254 + *(v289 + 64));
        v65();
        *v117 = v239;
        v117[1] = v113;
        *v118 = v114;
        v118[1] = v116;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v111 = sub_1A7CCD4A8(0, v111[2] + 1, 1, v111);
        }

        v63 = v273;
        v119 = v245;
        v121 = v111[2];
        v120 = v111[3];
        v57 = v286;
        v122 = v266;
        if (v121 >= v120 >> 1)
        {
          v111 = sub_1A7CCD4A8(v120 > 1, v121 + 1, 1, v111);
        }

        v111[2] = v121 + 1;
        sub_1A7CE5028(v254, v111 + ((*(v272 + 80) + 32) & ~*(v272 + 80)) + *(v272 + 72) * v121, &qword_1EB2B4B90);
        v123 = MEMORY[0x1AC561BF0](v119, v244, v243, v103);
        v125 = v124;

        v126 = v268;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v295 = v126;
        sub_1A7DC4710(v111, v123, v125, isUniquelyReferenced_nonNull_native);

        v268 = v295;
        (*v251)(v253, v122);
        v64 = v291;
        v287(v291, v57);
        goto LABEL_22;
      }

      v64 = v291;
      v287(v291, v57);
    }

    sub_1A7CC9970(v95, &qword_1EB2B5788);
LABEL_22:
    v61 = v267;
    goto LABEL_6;
  }

  v61 = v267;
LABEL_35:

  v133 = *(v268 + 64);
  v254 = v268 + 64;
  v134 = 1 << *(v268 + 32);
  v135 = -1;
  if (v134 < 64)
  {
    v135 = ~(-1 << v134);
  }

  v267 = v135 & v133;
  v253 = ((v134 + 63) >> 6);
  v136 = v284;
  v277 = v284 + 8;
  *&v281 = v272 + 56;
  v280 = (v272 + 48);
  v276 = (v61 + 32);
  v275 = 0x80000001A7EAE7A0;
  v274 = 0x80000001A7EAE7C0;
  ++v252;
  v250 = "/[0-9a-fA-F\\-]+/";

  v137 = 0;
  v251 = xmmword_1A7E418D0;
  v138 = v283;
  v139 = v285;
  while (2)
  {
    v140 = v289;
    v141 = v292;
    v142 = v267;
    if (!v267)
    {
      v144 = v270;
      while (1)
      {
        v143 = v137 + 1;
        if (__OFADD__(v137, 1))
        {
          goto LABEL_87;
        }

        if (v143 >= v253)
        {
          break;
        }

        v142 = *(v254 + 8 * v143);
        ++v137;
        if (v142)
        {
          goto LABEL_44;
        }
      }
    }

    v143 = v137;
    v144 = v270;
LABEL_44:
    v267 = (v142 - 1) & v142;
    v266 = v143;
    v145 = __clz(__rbit64(v142)) | (v143 << 6);
    v146 = *(v268 + 56);
    v147 = (*(v268 + 48) + 16 * v145);
    v148 = v147[1];
    v255 = *v147;
    v149 = *(v146 + 8 * v145);
    v294 = MEMORY[0x1E69E7CC0];
    v150 = *(v149 + 16);
    v256 = v148;

    v273 = v149;

    v282 = 0;
    v151 = 0;
    v152 = 0;
    v278 = v150;
    while (1)
    {
      if (v152 == v150)
      {
        v156 = 1;
        v291 = v150;
      }

      else
      {
        if ((v152 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
        }

        if (v152 >= *(v273 + 16))
        {
          goto LABEL_86;
        }

        v157 = v136;
        v158 = v151;
        v159 = v141;
        v160 = v144;
        v161 = v57;
        v162 = v138;
        v163 = v152;
        sub_1A7D0D9B0(v273 + ((*(v272 + 80) + 32) & ~*(v272 + 80)) + *(v272 + 72) * v152, v139);
        v156 = 0;
        v291 = v163 + 1;
        v138 = v162;
        v57 = v161;
        v144 = v160;
        v141 = v159;
        v151 = v158;
        v136 = v157;
        v140 = v289;
      }

      (*v281)(v139, v156, 1, v140);
      sub_1A7CE5028(v139, v136, &qword_1EB2B5780);
      if ((*v280)(v136, 1, v140) == 1)
      {
        break;
      }

      v164 = (v136 + *(v140 + 48));
      v166 = *v164;
      v165 = v164[1];
      v282 = v166;
      v290 = v165;

      (*v276)(v141, v136, v57);
      v167 = v144[3];
      v168 = v144[4];
      sub_1A7CC9878(v144, v167);
      v169 = sub_1A7CCC2B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v171 = *(v169 + 2);
      v170 = *(v169 + 3);
      if (v171 >= v170 >> 1)
      {
        v169 = sub_1A7CCC2B0((v170 > 1), v171 + 1, 1, v169);
      }

      *(v169 + 2) = v171 + 1;
      v172 = &v169[48 * v171];
      v173 = v275;
      *(v172 + 4) = 0xD000000000000014;
      *(v172 + 5) = v173;
      *(v172 + 24) = 0;
      *(v172 + 7) = 0;
      *(v172 + 8) = 0;
      v172[72] = 2;
      v175 = sub_1A7E21840();
      v177 = v176;
      v179 = *(v169 + 2);
      v178 = *(v169 + 3);
      v180 = v178 >> 1;
      v181 = v179 + 1;
      if (v178 >> 1 <= v179)
      {
        v169 = sub_1A7CCC2B0((v178 > 1), v179 + 1, 1, v169);
        v178 = *(v169 + 3);
        v180 = v178 >> 1;
      }

      *(v169 + 2) = v181;
      v182 = &v169[48 * v179];
      *(v182 + 4) = v175;
      *(v182 + 5) = v177;
      *(v182 + 24) = 768;
      *(v182 + 7) = 0;
      *(v182 + 8) = 0;
      v182[72] = 2;
      v183 = v179 + 2;
      if (v180 < (v179 + 2))
      {
        v169 = sub_1A7CCC2B0((v178 > 1), v179 + 2, 1, v169);
      }

      v184 = v293;
      *(v169 + 2) = v183;
      v185 = &v169[48 * v181];
      *(v185 + 4) = 3026478;
      *(v185 + 5) = 0xE300000000000000;
      *(v185 + 24) = 0;
      *(v185 + 7) = 0;
      *(v185 + 8) = 0;
      v185[72] = 2;
      v295 = 0;
      v296 = 0;
      LOBYTE(v297) = 1;
      v298 = v169;
      v186 = &v295;
      v187 = v167;
      v188 = v168;
      CLIPrinter.print(_:)(*(&v174 - 3));

      sub_1A7E222D0();
      v141 = v292;
      v189 = sub_1A7E22250();
      if (v184)
      {

        v153 = v144[3];
        v154 = v144[4];
        sub_1A7CC9878(v144, v153);
        v295 = 0;
        v296 = 0xE000000000000000;
        sub_1A7E22B70();

        v295 = 0xD00000000000001BLL;
        v296 = v274;
        v155 = sub_1A7E21840();
        MEMORY[0x1AC561C90](v155);

        v297 = 256;
        v298 = 0;
        v299 = 0;
        LOBYTE(v300) = 2;
        CLIPrinter.print(_:)(&v295, v153, v154);

        v57 = v286;
        v287(v141, v286);
        v293 = 0;
      }

      else
      {
        v293 = 0;
        v295 = v189;
        v296 = v190;
        v191 = sub_1A7E22A40();

        v192 = *(v191 + 16);
        if (v192)
        {
          v295 = MEMORY[0x1E69E7CC0];
          sub_1A7CCE918(0, v192, 0);
          v193 = v295;
          v194 = (v191 + 56);
          do
          {
            v196 = *(v194 - 3);
            v195 = *(v194 - 2);
            v197 = *(v194 - 1);
            v198 = *v194;

            v199 = MEMORY[0x1AC561BF0](v196, v195, v197, v198);
            v201 = v200;

            v295 = v193;
            v203 = *(v193 + 2);
            v202 = *(v193 + 3);
            if (v203 >= v202 >> 1)
            {
              sub_1A7CCE918((v202 > 1), v203 + 1, 1);
              v193 = v295;
            }

            *(v193 + 2) = v203 + 1;
            v204 = &v193[16 * v203];
            *(v204 + 4) = v199;
            *(v204 + 5) = v201;
            v194 += 4;
            --v192;
          }

          while (v192);

          v144 = v270;
          v141 = v292;
        }

        else
        {

          v193 = MEMORY[0x1E69E7CC0];
        }

        sub_1A7DDEE7C(v193);
        v57 = v286;
        v287(v141, v286);
      }

      v138 = v283;
      v139 = v285;
      v136 = v284;
      v140 = v289;
      v151 = v290;
      v150 = v278;
      v152 = v291;
    }

    sub_1A7CC7FFC(&qword_1EB2B4B98);
    v205 = swift_allocObject();
    *(v205 + 16) = v251;
    *(v205 + 32) = 0x65737365636F7270;
    *(v205 + 40) = 0xE900000000000064;
    if (v151)
    {
      v206 = v282;
    }

    else
    {
      v206 = 0x6E776F6E6B6E75;
    }

    if (v151)
    {
      v207 = v151;
    }

    else
    {
      v207 = 0xE700000000000000;
    }

    v295 = 0;
    v296 = 0xE000000000000000;
    MEMORY[0x1AC561C90](v206, v207);

    MEMORY[0x1AC561C90](32, 0xE100000000000000);
    MEMORY[0x1AC561C90](v255, v256);

    MEMORY[0x1AC561C90](1735355438, 0xE400000000000000);
    v208 = v296;
    *(v205 + 48) = v295;
    *(v205 + 56) = v208;
    v209 = v261;
    v210 = v263;
    v258(v261, v260, v263);
    sub_1A7E21910();

    v257(v209, v210);
    v295 = v294;

    v211 = v293;
    sub_1A7D08B14(&v295);
    if (!v211)
    {

      sub_1A7CC7FFC(&qword_1EB2B4AA0);
      sub_1A7CF3788(&qword_1EB2B3088, &qword_1EB2B4AA0);
      v293 = sub_1A7E221F0();
      v213 = v212;

      v214 = v270[3];
      v215 = v270[4];
      sub_1A7CC9878(v270, v214);
      v216 = sub_1A7CCC2B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v218 = *(v216 + 2);
      v217 = *(v216 + 3);
      if (v218 >= v217 >> 1)
      {
        v216 = sub_1A7CCC2B0((v217 > 1), v218 + 1, 1, v216);
      }

      *(v216 + 2) = v218 + 1;
      v219 = &v216[48 * v218];
      *(v219 + 4) = 0x20676E6974697257;
      *(v219 + 5) = 0xEB00000000206F74;
      *(v219 + 24) = 0;
      *(v219 + 7) = 0;
      *(v219 + 8) = 0;
      v219[72] = 2;
      v220 = sub_1A7E21840();
      v224 = *(v216 + 2);
      v223 = *(v216 + 3);
      v225 = v223 >> 1;
      v226 = v224 + 1;
      if (v223 >> 1 <= v224)
      {
        v291 = v220;
        v235 = v221;
        v236 = sub_1A7CCC2B0((v223 > 1), v224 + 1, 1, v216);
        v221 = v235;
        v138 = v283;
        v216 = v236;
        v220 = v291;
        v223 = *(v216 + 3);
        v225 = v223 >> 1;
      }

      *(v216 + 2) = v226;
      v227 = &v216[48 * v224];
      *(v227 + 4) = v220;
      *(v227 + 5) = v221;
      *(v227 + 24) = 768;
      *(v227 + 7) = 0;
      *(v227 + 8) = 0;
      v227[72] = 2;
      v228 = v224 + 2;
      if (v225 < v228)
      {
        v216 = sub_1A7CCC2B0((v223 > 1), v228, 1, v216);
      }

      *(v216 + 2) = v228;
      v229 = &v216[48 * v226];
      *(v229 + 4) = 3026478;
      *(v229 + 5) = 0xE300000000000000;
      *(v229 + 24) = 0;
      *(v229 + 7) = 0;
      *(v229 + 8) = 0;
      v229[72] = 2;
      v295 = 0;
      v296 = 0;
      LOBYTE(v297) = 1;
      v298 = v216;
      v230 = &v295;
      v231 = v214;
      v232 = v215;
      CLIPrinter.print(_:)(*(&v222 - 3));

      v295 = v293;
      v296 = v213;
      v233 = v264;
      sub_1A7E222D0();
      v234 = v269;
      sub_1A7E22A20();
      v293 = 0;
      (*v252)(v233, v265);
      v57 = v286;
      v287(v234, v286);

      v137 = v266;
      v139 = v285;
      v136 = v284;
      continue;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A7D07E08()
{
  v1 = OBJC_IVAR____TtC13IDSFoundation19IDSPacketLogManager_directory;
  v2 = sub_1A7E21940();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13IDSFoundation19IDSPacketLogManager_packetLogFilePattern;
  v4 = sub_1A7CC7FFC(&qword_1EB2B5710);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1A7D07ECC()
{
  if (qword_1EB2B2DB0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1A7D07F28(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for IDSPacketLogManager();

  return MEMORY[0x1EEE6DBF0](v3, a2);
}

uint64_t sub_1A7D07F80()
{
  if (qword_1EB2B2DB0 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A7CD22FC;

  return sub_1A7D034C0();
}

uint64_t sub_1A7D082A0(const void *a1)
{
  v3 = sub_1A7E21850();
  v1[2] = v3;
  v1[3] = *(v3 - 8);
  v1[4] = swift_task_alloc();
  v4 = sub_1A7E21940();
  v1[5] = v4;
  v1[6] = *(v4 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = _Block_copy(a1);

  return MEMORY[0x1EEE6DFA0](sub_1A7D083D4, 0, 0);
}

uint64_t sub_1A7D083D4()
{
  if (qword_1EB2B2DB0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB2DC088;

  return MEMORY[0x1EEE6DFA0](sub_1A7D08468, v0, 0);
}

uint64_t sub_1A7D08468()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];
  sub_1A7E218D0();
  (*(v6 + 104))(v5, *MEMORY[0x1E6968F70], v7);
  sub_1A7CC7DFC();
  sub_1A7E21910();
  (*(v6 + 8))(v5, v7);
  v8 = *(v4 + 8);
  v8(v2, v3);
  sub_1A7D0C510(v1);
  v0[10] = 0;
  v9 = v0[8];
  v10 = v0[9];
  v11 = v0[5];
  sub_1A7E218F0();
  v8(v9, v11);
  if (v10)
  {
    v12 = v0[9];
    v13 = sub_1A7E22260();

    (v12)[2](v12, v13, 0);
    _Block_release(v12);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1A7D08674()
{
  v2 = v0[9];
  v1 = v0[10];
  if (v2)
  {
    v3 = sub_1A7E217E0();

    (v2)[2](v2, 0, v3);
    _Block_release(v2);
  }

  else
  {
  }

  v4 = v0[1];

  return v4();
}

IDSObjCPacketLogManager __swiftcall IDSObjCPacketLogManager.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t type metadata accessor for IDSPacketLogManager()
{
  result = qword_1EB2B3348;
  if (!qword_1EB2B3348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A7D08800()
{
  sub_1A7E21940();
  if (v0 <= 0x3F)
  {
    sub_1A7D088E8();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1A7D088E8()
{
  if (!qword_1EB2B30B0)
  {
    sub_1A7CC9830(&qword_1EB2B56F8);
    v0 = sub_1A7E21D70();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB2B30B0);
    }
  }
}

unint64_t type metadata accessor for IDSObjCPacketLogManager()
{
  result = qword_1EB2B5700;
  if (!qword_1EB2B5700)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB2B5700);
  }

  return result;
}

unint64_t sub_1A7D08A18()
{
  result = qword_1EB2B2960;
  if (!qword_1EB2B2960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B2960);
  }

  return result;
}

void sub_1A7D08A6C(void **a1)
{
  v2 = *(sub_1A7E21940() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1A7D6030C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1A7D08B80(v5);
  *a1 = v3;
}

uint64_t sub_1A7D08B14(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A7D60320(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1A7D08CAC(v5);
  *a1 = v2;
  return result;
}

void sub_1A7D08B80(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_1A7E23080();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1A7E21940();
        v6 = sub_1A7E22580();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1A7E21940() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1A7D09714(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1A7D08DA4(0, v2, 1, a1);
  }
}

uint64_t sub_1A7D08CAC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1A7E23080();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1A7E22580();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1A7D0B078(v7, v8, a1, v4);
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
    return sub_1A7D09644(0, v2, 1, a1);
  }

  return result;
}

void sub_1A7D08DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v73 = sub_1A7E216F0();
  v8 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73, v9);
  v87 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v86 = &v64 - v13;
  v14 = sub_1A7CC7FFC(&qword_1EB2B5798);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v85 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v84 = &v64 - v19;
  v91 = sub_1A7E21B00();
  v20 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91, v21);
  v94 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v93 = &v64 - v25;
  v26 = sub_1A7E21940();
  MEMORY[0x1EEE9AC00](v26, v27);
  v77 = &v64 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v97 = &v64 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v92 = &v64 - v35;
  v66 = a2;
  if (a3 != a2)
  {
    v36 = *a4;
    v38 = *(v34 + 16);
    v37 = v34 + 16;
    v82 = v38;
    v81 = *MEMORY[0x1E695DA98];
    v39 = *(v37 + 56);
    v88 = (v20 + 56);
    v72 = (v8 + 8);
    v96 = (v20 + 48);
    v71 = (v20 + 32);
    v80 = (v20 + 8);
    v78 = (v37 - 8);
    v83 = v37;
    v75 = (v37 + 16);
    v40 = (v36 + v39 * (a3 - 1));
    v74 = -v39;
    v41 = a1 - a3;
    v76 = v36;
    v65 = v39;
    v42 = v36 + v39 * a3;
    v90 = xmmword_1A7E418C0;
    v79 = v26;
LABEL_5:
    v70 = a3;
    v67 = v42;
    v68 = v41;
    v69 = v40;
    while (1)
    {
      v43 = v82;
      v82(v92, v42, v26);
      v43(v97, v40, v26);
      sub_1A7CC7FFC(&qword_1EB2B5758);
      inited = swift_initStackObject();
      *(inited + 16) = v90;
      v45 = v81;
      *(inited + 32) = v81;
      v89 = v45;
      sub_1A7D0BFFC(inited);
      swift_setDeallocating();
      sub_1A7D0D3E8(inited + 32);
      v46 = v86;
      v47 = v95;
      sub_1A7E21880();
      if (v47)
      {

        v48 = v84;
        v49 = v91;
        (*v88)(v84, 1, 1, v91);
      }

      else
      {

        v48 = v84;
        sub_1A7E216D0();
        (*v72)(v46, v73);
        v50 = *v96;
        v49 = v91;
        if ((*v96)(v48, 1, v91) != 1)
        {
          (*v71)(v93, v48, v49);
          goto LABEL_12;
        }
      }

      sub_1A7E21AF0();
      v50 = *v96;
      if ((*v96)(v48, 1, v49) != 1)
      {
        sub_1A7CC9970(v48, &qword_1EB2B5798);
      }

LABEL_12:
      v51 = swift_initStackObject();
      *(v51 + 16) = v90;
      *(v51 + 32) = v89;
      v52 = v51 + 32;
      sub_1A7D0BFFC(v51);
      swift_setDeallocating();
      sub_1A7D0D3E8(v52);
      v53 = v87;
      sub_1A7E21880();
      v95 = 0;

      v54 = v85;
      sub_1A7E216D0();
      (*v72)(v53, v73);
      v55 = v91;
      if (v50(v54, 1, v91) == 1)
      {
        sub_1A7E21AF0();
        if (v50(v54, 1, v55) != 1)
        {
          sub_1A7CC9970(v54, &qword_1EB2B5798);
        }
      }

      else
      {
        (*v71)(v94, v54, v55);
      }

      v56 = v93;
      v57 = v94;
      v58 = sub_1A7E21AB0();
      v59 = *v80;
      (*v80)(v57, v55);
      v59(v56, v55);
      v60 = *v78;
      v26 = v79;
      (*v78)(v97, v79);
      v60(v92, v26);
      if ((v58 & 1) == 0)
      {
LABEL_4:
        a3 = v70 + 1;
        v40 = &v69[v65];
        v41 = v68 - 1;
        v42 = v67 + v65;
        if (v70 + 1 == v66)
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

      v61 = *v75;
      v62 = v77;
      (*v75)(v77, v42, v26);
      swift_arrayInitWithTakeFrontToBack();
      v61(v40, v62, v26);
      v40 += v74;
      v42 += v74;
      if (__CFADD__(v41++, 1))
      {
        goto LABEL_4;
      }
    }
  }
}

uint64_t sub_1A7D09644(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      if (v13 || (result = sub_1A7E230D0(), (result & 1) == 0))
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

void sub_1A7D09714(unint64_t *a1, uint64_t a2, void **a3, uint64_t a4)
{
  v220 = a4;
  v221 = a1;
  v239 = sub_1A7E216F0();
  v5 = *(v239 - 8);
  MEMORY[0x1EEE9AC00](v239, v6);
  v245 = &v218 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v247 = &v218 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v228 = &v218 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v227 = &v218 - v16;
  v17 = sub_1A7CC7FFC(&qword_1EB2B5798);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v244 = &v218 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v246 = &v218 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v226 = &v218 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v225 = &v218 - v28;
  v29 = sub_1A7E21B00();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v31);
  v263 = &v218 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v34);
  v264 = &v218 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v234 = &v218 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v233 = &v218 - v41;
  v42 = sub_1A7E21940();
  v43 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v44);
  v224 = &v218 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46, v47);
  v240 = &v218 - v48;
  MEMORY[0x1EEE9AC00](v49, v50);
  MEMORY[0x1EEE9AC00](v51, v52);
  v267 = &v218 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v237 = &v218 - v56;
  MEMORY[0x1EEE9AC00](v57, v58);
  v235 = &v218 - v59;
  MEMORY[0x1EEE9AC00](v60, v61);
  v219 = &v218 - v62;
  MEMORY[0x1EEE9AC00](v63, v64);
  v218 = &v218 - v66;
  v67 = a3[1];
  v230 = a3;
  if (v67 < 1)
  {
    v69 = MEMORY[0x1E69E7CC0];
LABEL_142:
    v5 = *v221;
    if (!*v221)
    {
      goto LABEL_184;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = v230;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_178:
      v69 = sub_1A7CF0024(v69);
    }

    v270 = v69;
    v212 = *(v69 + 16);
    if (v212 >= 2)
    {
      while (*v42)
      {
        v213 = *(v69 + 16 * v212);
        v214 = *(v69 + 16 * (v212 - 1) + 40);
        v215 = v265;
        sub_1A7D0B654(*v42 + *(v43 + 72) * v213, *v42 + *(v43 + 72) * *(v69 + 16 * (v212 - 1) + 32), *v42 + *(v43 + 72) * v214, v5);
        v265 = v215;
        if (v215)
        {
          goto LABEL_154;
        }

        if (v214 < v213)
        {
          goto LABEL_171;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v69 = sub_1A7CF0024(v69);
        }

        if (v212 - 2 >= *(v69 + 16))
        {
          goto LABEL_172;
        }

        v216 = (v69 + 16 * v212);
        *v216 = v213;
        v216[1] = v214;
        v270 = v69;
        sub_1A7CEFF98(v212 - 1);
        v69 = v270;
        v212 = *(v270 + 16);
        if (v212 <= 1)
        {
          goto LABEL_154;
        }
      }

      goto LABEL_182;
    }

LABEL_154:

    return;
  }

  v243 = v65;
  v68 = 0;
  v253 = v43 + 16;
  v252 = (v43 + 8);
  v251 = *MEMORY[0x1E695DA98];
  v255 = (v30 + 56);
  v238 = (v5 + 8);
  v266 = (v30 + 48);
  v236 = (v30 + 32);
  v250 = (v30 + 8);
  v249 = (v43 + 32);
  v69 = MEMORY[0x1E69E7CC0];
  v232 = xmmword_1A7E418C0;
  v229 = v43;
  v256 = v29;
  v254 = v42;
  while (1)
  {
    v223 = v69;
    v248 = v68;
    if (v68 + 1 >= v67)
    {
      v87 = v68 + 1;
      v106 = v220;
      goto LABEL_36;
    }

    v231 = v67;
    v70 = *v230;
    v71 = *(v43 + 72);
    v72 = *(v43 + 16);
    v73 = v218;
    v262 = *v230 + v71 * (v68 + 1);
    (v72)(v218);
    v261 = v70;
    v74 = &v70[v71 * v68];
    v75 = v219;
    v258 = v72;
    (v72)(v219, v74, v42);
    v76 = v265;
    LODWORD(v259) = sub_1A7D04914(v73, v75);
    v265 = v76;
    if (v76)
    {
      v217 = *v252;
      (*v252)(v75, v42);
      v217(v73, v42);
      goto LABEL_154;
    }

    v5 = v252;
    v77 = *v252;
    (*v252)(v75, v42);
    v257 = v77;
    v77(v73, v42);
    v78 = v68 + 2;
    v79 = &v261[v71 * (v68 + 2)];
    v80 = v71;
    v260 = v71;
    v81 = v262;
    while (1)
    {
      v87 = v231;
      if (v231 == v78)
      {
        break;
      }

      v88 = v258;
      (v258)(v235, v79, v42);
      v262 = v81;
      (v88)(v237, v81, v42);
      v261 = sub_1A7CC7FFC(&qword_1EB2B5758);
      inited = swift_initStackObject();
      *(inited + 16) = v232;
      v90 = v251;
      *(inited + 32) = v251;
      v91 = v90;
      sub_1A7D0BFFC(inited);
      swift_setDeallocating();
      sub_1A7D0D3E8(inited + 32);
      v92 = v227;
      v93 = v265;
      sub_1A7E21880();
      if (v93)
      {

        v94 = v225;
        (*v255)(v225, 1, 1, v29);
        v95 = v29;
LABEL_13:
        sub_1A7E21AF0();
        v97 = *v266;
        if ((*v266)(v94, 1, v95) != 1)
        {
          sub_1A7CC9970(v94, &qword_1EB2B5798);
        }

        goto LABEL_16;
      }

      v96 = v225;
      sub_1A7E216D0();
      v94 = v96;
      (*v238)(v92, v239);
      v95 = v29;
      v97 = *v266;
      if ((*v266)(v94, 1, v95) == 1)
      {
        goto LABEL_13;
      }

      (*v236)(v233, v94, v95);
LABEL_16:
      v98 = swift_initStackObject();
      *(v98 + 16) = v232;
      *(v98 + 32) = v91;
      v99 = v98 + 32;
      sub_1A7D0BFFC(v98);
      swift_setDeallocating();
      sub_1A7D0D3E8(v99);
      v100 = v228;
      sub_1A7E21880();
      v265 = 0;

      v101 = v226;
      sub_1A7E216D0();
      v102 = v101;
      (*v238)(v100, v239);
      v103 = v101;
      v104 = v256;
      v105 = v97(v103, 1, v256);
      v42 = v254;
      if (v105 == 1)
      {
        sub_1A7E21AF0();
        if (v97(v102, 1, v104) != 1)
        {
          sub_1A7CC9970(v102, &qword_1EB2B5798);
        }

        v29 = v256;
      }

      else
      {
        (*v236)(v234, v102, v104);
        v29 = v104;
      }

      v82 = v234;
      v83 = v233;
      v84 = sub_1A7E21AB0();
      v85 = *v250;
      (*v250)(v82, v29);
      v85(v83, v29);
      v5 = v252;
      v86 = v257;
      v257(v237, v42);
      v86(v235, v42);
      ++v78;
      v80 = v260;
      v79 = &v260[v79];
      v81 = &v260[v262];
      if ((v259 ^ v84))
      {
        v87 = v78 - 1;
        break;
      }
    }

    v106 = v220;
    v43 = v229;
    v69 = v223;
    if ((v259 & 1) == 0)
    {
      goto LABEL_36;
    }

    if (v87 < v248)
    {
      goto LABEL_177;
    }

    if (v248 < v87)
    {
      v107 = v80 * (v87 - 1);
      v108 = v87 * v80;
      v231 = v87;
      v109 = v248;
      v110 = v248 * v80;
      do
      {
        if (v109 != --v87)
        {
          v112 = *v230;
          if (!*v230)
          {
            goto LABEL_181;
          }

          v5 = &v112[v110];
          v113 = *v249;
          (*v249)(v224, &v112[v110], v254);
          if (v110 < v107 || v5 >= &v112[v108])
          {
            v111 = v254;
            swift_arrayInitWithTakeFrontToBack();
          }

          else
          {
            v111 = v254;
            if (v110 != v107)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v113(&v112[v107], v224, v111);
          v29 = v256;
          v42 = v111;
          v69 = v223;
          v80 = v260;
        }

        ++v109;
        v107 -= v80;
        v108 -= v80;
        v110 += v80;
      }

      while (v109 < v87);
      v106 = v220;
      v43 = v229;
      v87 = v231;
    }

LABEL_36:
    v114 = v230[1];
    if (v87 >= v114)
    {
      goto LABEL_44;
    }

    if (__OFSUB__(v87, v248))
    {
      goto LABEL_174;
    }

    if (v87 - v248 >= v106)
    {
LABEL_44:
      v68 = v87;
      goto LABEL_45;
    }

    if (__OFADD__(v248, v106))
    {
      goto LABEL_175;
    }

    if (v248 + v106 < v114)
    {
      v114 = v248 + v106;
    }

    if (v114 < v248)
    {
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
      goto LABEL_178;
    }

    if (v87 == v114)
    {
      goto LABEL_44;
    }

    v222 = v114;
    v260 = *v230;
    v262 = sub_1A7CC7FFC(&qword_1EB2B5778);
    v242 = *(v43 + 72);
    v241 = *(v43 + 16);
    v161 = v243;
LABEL_97:
    v231 = v87;
    v162 = v87;
LABEL_98:
    v163 = v162 - 1;
    v164 = v260;
    v165 = v242;
    v258 = &v260[v242 * v162];
    v166 = v241;
    v241(v267);
    v259 = v163;
    v257 = &v164[v163 * v165];
    v166(v161);
    v167 = v251;
    v269 = v251;
    v42 = sub_1A7E22B20();
    v5 = v42 + 56;
    v168 = v269;
    v261 = v167;
    sub_1A7E22290();
    sub_1A7E23200();
    v43 = v168;
    sub_1A7E22350();
    v169 = sub_1A7E23240();

    v170 = -1 << *(v42 + 32);
    v69 = v169 & ~v170;
    v171 = v69 >> 6;
    v172 = *(v42 + 56 + 8 * (v69 >> 6));
    v173 = 1 << v69;
    if (((1 << v69) & v172) != 0)
    {
      v174 = ~v170;
      while (1)
      {
        v175 = sub_1A7E22290();
        v177 = v176;
        if (v175 == sub_1A7E22290() && v177 == v178)
        {

          goto LABEL_111;
        }

        v180 = sub_1A7E230D0();

        if (v180)
        {
          break;
        }

        v69 = (v69 + 1) & v174;
        v171 = v69 >> 6;
        v172 = *(v5 + 8 * (v69 >> 6));
        v173 = 1 << v69;
        if (((1 << v69) & v172) == 0)
        {
          v29 = v256;
          goto LABEL_107;
        }
      }

LABEL_111:
      v29 = v256;
    }

    else
    {
LABEL_107:
      *(v5 + 8 * v171) = v173 | v172;
      *(*(v42 + 48) + 8 * v69) = v43;
      v181 = *(v42 + 16);
      v129 = __OFADD__(v181, 1);
      v182 = v181 + 1;
      if (v129)
      {
        __break(1u);
        goto LABEL_156;
      }

      *(v42 + 16) = v182;
    }

    sub_1A7D0D3E8(&v269);
    v183 = v247;
    v184 = v265;
    sub_1A7E21880();
    v185 = v246;
    if (v184)
    {

      (*v255)(v185, 1, 1, v29);
LABEL_115:
      sub_1A7E21AF0();
      v43 = *v266;
      if ((*v266)(v185, 1, v29) != 1)
      {
        sub_1A7CC9970(v185, &qword_1EB2B5798);
      }
    }

    else
    {

      sub_1A7E216D0();
      (*v238)(v183, v239);
      v43 = *v266;
      if ((*v266)(v185, 1, v29) == 1)
      {
        goto LABEL_115;
      }

      (*v236)(v264, v185, v29);
    }

    v268 = v261;
    v42 = sub_1A7E22B20();
    v69 = v42 + 56;
    v186 = v268;
    sub_1A7E22290();
    sub_1A7E23200();
    v265 = v186;
    sub_1A7E22350();
    v187 = sub_1A7E23240();

    v188 = -1 << *(v42 + 32);
    v5 = v187 & ~v188;
    v189 = v5 >> 6;
    v190 = *(v42 + 56 + 8 * (v5 >> 6));
    v191 = 1 << v5;
    if (((1 << v5) & v190) == 0)
    {
      goto LABEL_127;
    }

    v261 = v43;
    v192 = ~v188;
    while (1)
    {
      v193 = sub_1A7E22290();
      v195 = v194;
      if (v193 == sub_1A7E22290() && v195 == v196)
      {

        goto LABEL_131;
      }

      v198 = sub_1A7E230D0();

      if (v198)
      {
        break;
      }

      v5 = (v5 + 1) & v192;
      v189 = v5 >> 6;
      v190 = *(v69 + 8 * (v5 >> 6));
      v191 = 1 << v5;
      if (((1 << v5) & v190) == 0)
      {
        v43 = v261;
LABEL_127:
        *(v69 + 8 * v189) = v191 | v190;
        *(*(v42 + 48) + 8 * v5) = v265;
        v199 = *(v42 + 16);
        v129 = __OFADD__(v199, 1);
        v200 = v199 + 1;
        v29 = v256;
        if (!v129)
        {
          *(v42 + 16) = v200;
          goto LABEL_132;
        }

LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
        goto LABEL_176;
      }
    }

LABEL_131:
    v29 = v256;
    v43 = v261;
LABEL_132:
    sub_1A7D0D3E8(&v268);
    v201 = v245;
    v161 = v243;
    sub_1A7E21880();
    v202 = v244;
    v265 = 0;

    sub_1A7E216D0();
    (*v238)(v201, v239);
    if ((v43)(v202, 1, v29) == 1)
    {
      v42 = v254;
      sub_1A7E21AF0();
      if ((v43)(v202, 1, v29) != 1)
      {
        sub_1A7CC9970(v202, &qword_1EB2B5798);
      }
    }

    else
    {
      (*v236)(v263, v202, v29);
      v42 = v254;
    }

    v203 = v263;
    v204 = v264;
    v205 = sub_1A7E21AB0();
    v43 = v250;
    v206 = *v250;
    (*v250)(v203, v29);
    v206(v204, v29);
    v207 = *v252;
    (*v252)(v161, v42);
    v207(v267, v42);
    if (v205)
    {
      break;
    }

LABEL_96:
    v87 = v231 + 1;
    if (v231 + 1 != v222)
    {
      goto LABEL_97;
    }

    v69 = v223;
    v68 = v222;
LABEL_45:
    v5 = v248;
    if (v68 < v248)
    {
      goto LABEL_173;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v69 = sub_1A7CCC08C(0, *(v69 + 16) + 1, 1, v69);
    }

    v116 = *(v69 + 16);
    v115 = *(v69 + 24);
    v117 = v116 + 1;
    if (v116 >= v115 >> 1)
    {
      v69 = sub_1A7CCC08C((v115 > 1), v116 + 1, 1, v69);
    }

    *(v69 + 16) = v117;
    v118 = v69 + 16 * v116;
    *(v118 + 32) = v5;
    *(v118 + 40) = v68;
    v5 = *v221;
    if (!*v221)
    {
      goto LABEL_183;
    }

    if (v116)
    {
      while (2)
      {
        v43 = v117 - 1;
        if (v117 >= 4)
        {
          v123 = v69 + 32 + 16 * v117;
          v124 = *(v123 - 64);
          v125 = *(v123 - 56);
          v129 = __OFSUB__(v125, v124);
          v126 = v125 - v124;
          if (v129)
          {
            goto LABEL_160;
          }

          v128 = *(v123 - 48);
          v127 = *(v123 - 40);
          v129 = __OFSUB__(v127, v128);
          v121 = v127 - v128;
          v122 = v129;
          if (v129)
          {
            goto LABEL_161;
          }

          v130 = (v69 + 16 * v117);
          v132 = *v130;
          v131 = v130[1];
          v129 = __OFSUB__(v131, v132);
          v133 = v131 - v132;
          if (v129)
          {
            goto LABEL_163;
          }

          v129 = __OFADD__(v121, v133);
          v134 = v121 + v133;
          if (v129)
          {
            goto LABEL_166;
          }

          if (v134 >= v126)
          {
            v152 = (v69 + 32 + 16 * v43);
            v154 = *v152;
            v153 = v152[1];
            v129 = __OFSUB__(v153, v154);
            v155 = v153 - v154;
            if (v129)
            {
              goto LABEL_170;
            }

            if (v121 < v155)
            {
              v43 = v117 - 2;
            }
          }

          else
          {
LABEL_65:
            if (v122)
            {
              goto LABEL_162;
            }

            v135 = (v69 + 16 * v117);
            v137 = *v135;
            v136 = v135[1];
            v138 = __OFSUB__(v136, v137);
            v139 = v136 - v137;
            v140 = v138;
            if (v138)
            {
              goto LABEL_165;
            }

            v141 = (v69 + 32 + 16 * v43);
            v143 = *v141;
            v142 = v141[1];
            v129 = __OFSUB__(v142, v143);
            v144 = v142 - v143;
            if (v129)
            {
              goto LABEL_168;
            }

            if (__OFADD__(v139, v144))
            {
              goto LABEL_169;
            }

            if (v139 + v144 < v121)
            {
              goto LABEL_79;
            }

            if (v121 < v144)
            {
              v43 = v117 - 2;
            }
          }
        }

        else
        {
          if (v117 == 3)
          {
            v119 = *(v69 + 32);
            v120 = *(v69 + 40);
            v129 = __OFSUB__(v120, v119);
            v121 = v120 - v119;
            v122 = v129;
            goto LABEL_65;
          }

          v145 = (v69 + 16 * v117);
          v147 = *v145;
          v146 = v145[1];
          v129 = __OFSUB__(v146, v147);
          v139 = v146 - v147;
          v140 = v129;
LABEL_79:
          if (v140)
          {
            goto LABEL_164;
          }

          v148 = v69 + 16 * v43;
          v150 = *(v148 + 32);
          v149 = *(v148 + 40);
          v129 = __OFSUB__(v149, v150);
          v151 = v149 - v150;
          if (v129)
          {
            goto LABEL_167;
          }

          if (v151 < v139)
          {
            break;
          }
        }

        v156 = v43 - 1;
        if (v43 - 1 >= v117)
        {
          goto LABEL_157;
        }

        if (!*v230)
        {
          goto LABEL_180;
        }

        v157 = *(v69 + 32 + 16 * v156);
        v158 = *(v69 + 32 + 16 * v43 + 8);
        v159 = v265;
        sub_1A7D0B654(*v230 + *(v229 + 72) * v157, *v230 + *(v229 + 72) * *(v69 + 32 + 16 * v43), *v230 + *(v229 + 72) * v158, v5);
        v265 = v159;
        if (v159)
        {
          goto LABEL_154;
        }

        if (v158 < v157)
        {
          goto LABEL_158;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v69 = sub_1A7CF0024(v69);
        }

        if (v156 >= *(v69 + 16))
        {
          goto LABEL_159;
        }

        v160 = v69 + 16 * v156;
        *(v160 + 32) = v157;
        *(v160 + 40) = v158;
        v270 = v69;
        sub_1A7CEFF98(v43);
        v69 = v270;
        v117 = *(v270 + 16);
        if (v117 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v67 = v230[1];
    v43 = v229;
    if (v68 >= v67)
    {
      goto LABEL_142;
    }
  }

  if (v260)
  {
    v208 = *v249;
    v209 = v240;
    (*v249)(v240, v258, v42);
    v210 = v257;
    swift_arrayInitWithTakeFrontToBack();
    v208(v210, v209, v42);
    v162 = v259;
    if (v259 == v248)
    {
      goto LABEL_96;
    }

    goto LABEL_98;
  }

  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
}

uint64_t sub_1A7D0B078(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
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
      result = sub_1A7CF0024(v8);
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
        sub_1A7D0BCF0((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
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
  v8 = MEMORY[0x1E69E7CC0];
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
        result = sub_1A7E230D0();
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
            result = sub_1A7E230D0();
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
      result = sub_1A7CCC08C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1A7CCC08C((v39 > 1), v40 + 1, 1, v8);
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
        sub_1A7D0BCF0((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1A7CF0024(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1A7CEFF98(v44);
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
    if (v37 || (result = sub_1A7E230D0(), (result & 1) == 0))
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

void sub_1A7D0B654(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v80 = a3;
  v9 = sub_1A7E21940();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v65 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  MEMORY[0x1EEE9AC00](&v65 - v18, v19);
  v23 = &v65 - v22;
  v76 = *(v24 + 72);
  if (!v76)
  {
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v76 == -1)
  {
    goto LABEL_66;
  }

  v25 = v80 - a2;
  if (v80 - a2 == 0x8000000000000000 && v76 == -1)
  {
    goto LABEL_67;
  }

  v26 = (a2 - a1) / v76;
  v83 = a1;
  v82 = a4;
  v78 = v9;
  if (v26 >= v25 / v76)
  {
    v74 = v21;
    v75 = v15;
    v28 = v25 / v76 * v76;
    if (a4 < a2 || a2 + v28 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v40 = a4 + v28;
    if (v28 >= 1)
    {
      v41 = v75;
      v42 = -v76;
      v71 = (v10 + 16);
      v72 = (v10 + 8);
      v43 = v40;
      v77 = a4;
      v68 = a1;
      v69 = -v76;
      do
      {
        v79 = v5;
        v66 = v40;
        v44 = a2;
        v45 = a2 + v42;
        v70 = v45;
        v73 = v44;
        while (1)
        {
          v48 = v80;
          if (v44 <= a1)
          {
            v83 = v44;
            v63 = v66;
LABEL_62:
            v81 = v63;
            goto LABEL_64;
          }

          v67 = v40;
          v76 = v43;
          v49 = v43 + v42;
          v50 = *v71;
          v51 = v78;
          (*v71)(v41, v43 + v42, v78);
          v52 = v45;
          v53 = v42;
          v54 = v74;
          v50(v74, v52, v51);
          v55 = v79;
          v56 = sub_1A7D04914(v41, v54);
          v79 = v55;
          if (v55)
          {
            v64 = *v72;
            (*v72)(v54, v51);
            v64(v41, v51);
            v83 = v73;
            v63 = v67;
            goto LABEL_62;
          }

          v57 = v56;
          v80 = v48 + v53;
          v58 = *v72;
          (*v72)(v54, v51);
          v58(v41, v51);
          if (v57)
          {
            break;
          }

          v40 = v49;
          v59 = v68;
          if (v48 < v76 || v80 >= v76)
          {
            swift_arrayInitWithTakeFrontToBack();
            v42 = v69;
            v45 = v70;
            v46 = v77;
          }

          else
          {
            v42 = v69;
            v45 = v70;
            v46 = v77;
            if (v48 != v76)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v43 = v49;
          v47 = v49 > v46;
          v41 = v75;
          a1 = v59;
          v44 = v73;
          if (!v47)
          {
            a2 = v73;
            goto LABEL_63;
          }
        }

        a1 = v68;
        if (v48 < v73 || v80 >= v73)
        {
          a2 = v70;
          swift_arrayInitWithTakeFrontToBack();
          v61 = v77;
          v5 = v79;
          v40 = v67;
          v42 = v69;
        }

        else
        {
          v60 = v48 == v73;
          v42 = v69;
          a2 = v70;
          v61 = v77;
          v5 = v79;
          v40 = v67;
          if (!v60)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v41 = v75;
        v43 = v76;
      }

      while (v76 > v61);
    }

LABEL_63:
    v83 = a2;
    v81 = v40;
  }

  else
  {
    v27 = v26 * v76;
    v75 = v20;
    if (a4 < a1 || a1 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v74 = a4 + v27;
    v81 = a4 + v27;
    if (v27 >= 1 && a2 < v80)
    {
      v30 = *(v10 + 16);
      v73 = v10 + 16;
      v71 = v30;
      v72 = (v10 + 8);
      while (1)
      {
        v31 = a2;
        v32 = a4;
        v33 = v71;
        (v71)(v23, a2, v9);
        v34 = v23;
        v35 = v75;
        v77 = v32;
        (v33)(v75, v32, v9);
        v36 = sub_1A7D04914(v34, v35);
        if (v5)
        {
          break;
        }

        v37 = v36;
        v79 = 0;
        v38 = *v72;
        (*v72)(v35, v9);
        v38(v34, v9);
        v23 = v34;
        if (v37)
        {
          v39 = v76;
          a2 = v31 + v76;
          if (a1 < v31 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v31)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a4 = v77;
        }

        else
        {
          v39 = v76;
          a4 = v77 + v76;
          a2 = v31;
          if (a1 < v77 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v77)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v82 = a4;
        }

        a1 += v39;
        v83 = a1;
        v5 = v79;
        if (a4 < v74)
        {
          v9 = v78;
          if (a2 < v80)
          {
            continue;
          }
        }

        goto LABEL_64;
      }

      v62 = *v72;
      (*v72)(v35, v9);
      v62(v34, v9);
    }
  }

LABEL_64:
  sub_1A7D0BF18(&v83, &v82, &v81);
}

uint64_t sub_1A7D0BCF0(char *__dst, char *__src, char *a3, char *a4)
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
      if (!v16 && (sub_1A7E230D0() & 1) != 0)
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
      if (!v21 && (sub_1A7E230D0() & 1) != 0)
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

uint64_t sub_1A7D0BF18(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_1A7E21940();
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

uint64_t sub_1A7D0BFFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A7CC7FFC(&qword_1EB2B5778);
    v3 = sub_1A7E22B20();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_1A7E22290();
      sub_1A7E23200();
      v27 = v7;
      sub_1A7E22350();
      v8 = sub_1A7E23240();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_1A7E22290();
        v18 = v17;
        if (v16 == sub_1A7E22290() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_1A7E230D0();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1A7D0C1F0(uint64_t a1)
{
  v2 = sub_1A7E21BA0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v39 = &v32 - v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    sub_1A7CC7FFC(&qword_1EB2B5760);
    v11 = sub_1A7E22B20();
    v12 = 0;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v37 = v14;
    v38 = v11 + 56;
    v15 = *(v13 + 64);
    v34 = v10;
    v35 = a1 + ((v15 + 32) & ~v15);
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    v33 = (v13 + 16);
    while (1)
    {
      v36 = v12;
      v37(v39, v35 + v16 * v12, v2);
      sub_1A7D0D444(&qword_1EB2B5768, MEMORY[0x1E6969AD0]);
      v18 = sub_1A7E221C0();
      v19 = ~(-1 << *(v11 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v13;
          v37(v6, *(v11 + 48) + v20 * v16, v2);
          sub_1A7D0D444(&qword_1EB2B5770, MEMORY[0x1E6969AD0]);
          v25 = sub_1A7E22240();
          v26 = *v17;
          (*v17)(v6, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v13 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v13 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v11 + 48) + v20 * v16, v27, v2);
        v29 = *(v11 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v11 + 16) = v31;
      }

      v12 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v11;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1A7D0C510(uint64_t a1)
{
  v2 = v1;
  v164 = *MEMORY[0x1E69E9840];
  v159 = sub_1A7E216F0();
  v4 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159, v5);
  v140 = &v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_1A7E21850();
  v160 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154, v7);
  v153 = &v126 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_1A7E21940();
  v161 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158, v9);
  v143 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v142 = &v126 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v141 = &v126 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v139 = &v126 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v151 = &v126 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v152 = &v126 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v126 - v28;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v126 - v32;
  v34 = objc_opt_self();
  v35 = [v34 defaultManager];
  v36 = sub_1A7E218E0();
  v162 = 0;
  v37 = [v35 createDirectoryAtURL:v36 withIntermediateDirectories:1 attributes:0 error:&v162];

  v38 = v162;
  if (v37 && (v144 = v4, v133 = a1, v39 = v162, v40 = [v34 defaultManager], sub_1A7E218B0(), v162 = 0xD00000000000001CLL, v163 = 0x80000001A7EADC30, v157 = 0x80000001A7EADC30, v41 = v160, v42 = *(v160 + 104), v43 = v153, v138 = *MEMORY[0x1E6968F70], v44 = v154, v137 = v160 + 104, v136 = v42, v42(v153), v135 = sub_1A7CC7DFC(), sub_1A7E21920(), v45 = *(v41 + 8), v160 = v41 + 8, v134 = v45, v45(v43, v44), v47 = v161 + 8, v46 = *(v161 + 8), v48 = v158, v46(v29, v158), v49 = sub_1A7E218E0(), v46(v33, v48), v162 = 0, LODWORD(v48) = objc_msgSend(v40, sel_createDirectoryAtURL_withIntermediateDirectories_attributes_error_, v49, 1, 0, &v162), v40, v49, v38 = v162, v48) && (v50 = v162, v51 = objc_msgSend(v34, sel_defaultManager), sub_1A7E218B0(), v162 = 0xD00000000000001CLL, v163 = v157, v53 = v153, v52 = v154, v136(v153, v138, v154), sub_1A7E21920(), v134(v53, v52), v54 = v158, v46(v29, v158), v55 = sub_1A7E218E0(), v155 = v46, v156 = v47, v46(v33, v54), v150 = sub_1A7CC7FFC(&qword_1EB2B5758), v56 = swift_allocObject(), v149 = xmmword_1A7E418C0, *(v56 + 16) = xmmword_1A7E418C0, v57 = *MEMORY[0x1E695DBB8], *(v56 + 32) = *MEMORY[0x1E695DBB8], type metadata accessor for URLResourceKey(0), v148 = v57, v58 = sub_1A7E22520(), , v162 = 0, v59 = objc_msgSend(v51, sel_contentsOfDirectoryAtURL_includingPropertiesForKeys_options_error_, v55, v58, 0, &v162), v51, v55, v58, v38 = v162, v59))
  {
    v60 = sub_1A7E22530();
    v61 = v38;

    v147 = *(v60 + 16);
    if (v147)
    {
      v63 = 0;
      v64 = v161;
      v145 = v60 + ((*(v64 + 80) + 32) & ~*(v64 + 80));
      v157 = v161 + 16;
      ++v144;
      *&v62 = 136315394;
      v130 = v62;
      v65 = v140;
      v66 = v158;
      v67 = v152;
      v146 = v60;
      while (1)
      {
        if (v63 >= *(v60 + 16))
        {
          __break(1u);
        }

        v68 = *(v64 + 16);
        v68(v67, v145 + *(v64 + 72) * v63, v66);
        inited = swift_initStackObject();
        *(inited + 16) = v149;
        v70 = v148;
        *(inited + 32) = v148;
        v71 = v70;
        sub_1A7D0BFFC(inited);
        swift_setDeallocating();
        sub_1A7D0D3E8(inited + 32);
        sub_1A7E21880();
        if (v2)
        {
          break;
        }

        v72 = sub_1A7E216C0();
        (*v144)(v65, v159);
        if (v72 == 2 || (v72 & 1) == 0)
        {
          v155(v67, v66);
        }

        else
        {
          v132 = 0;
          v162 = sub_1A7E218C0();
          v163 = v73;
          v75 = v153;
          v74 = v154;
          v136(v153, v138, v154);
          v76 = v151;
          sub_1A7E21930();
          v134(v75, v74);

          if (qword_1EB2B2D28 != -1)
          {
            swift_once();
          }

          v77 = sub_1A7E22060();
          v78 = sub_1A7B0CB00(v77, qword_1EB2B2D30);
          v79 = v139;
          v66 = v158;
          v68(v139, v152, v158);
          v80 = v141;
          v68(v141, v76, v66);
          v131 = v78;
          v81 = sub_1A7E22040();
          v82 = sub_1A7E228F0();
          if (os_log_type_enabled(v81, v82))
          {
            v83 = swift_slowAlloc();
            v127 = v83;
            v129 = swift_slowAlloc();
            v162 = v129;
            *v83 = v130;
            v84 = sub_1A7D0D444(&qword_1EB2B3058, MEMORY[0x1E6968FB0]);
            v128 = v82;
            v126 = v84;
            v85 = sub_1A7E23090();
            v87 = v86;
            v88 = v79;
            v89 = v155;
            v155(v88, v66);
            v90 = sub_1A7B0CB38(v85, v87, &v162);

            v91 = v127;
            *(v127 + 1) = v90;
            *(v91 + 6) = 2080;
            v92 = v141;
            v93 = sub_1A7E23090();
            v126 = v81;
            v94 = v93;
            v96 = v95;
            v89(v92, v66);
            v97 = sub_1A7B0CB38(v94, v96, &v162);

            *(v91 + 14) = v97;
            v98 = v126;
            _os_log_impl(&dword_1A7AD9000, v126, v128, "Converting packet log into plain text from %s -> %s", v91, 0x16u);
            v99 = v129;
            swift_arrayDestroy();
            MEMORY[0x1AC5654B0](v99, -1, -1);
            v65 = v140;
            MEMORY[0x1AC5654B0](v91, -1, -1);
          }

          else
          {

            v100 = v80;
            v101 = v155;
            v155(v100, v66);
            v101(v79, v66);
          }

          v102 = v142;
          v103 = v132;
          v104 = v151;
          v67 = v152;
          sub_1A7E09EB8(v152, v151);
          v2 = v103;
          v105 = v143;
          if (v103)
          {
            v68(v102, v67, v66);
            v68(v105, v104, v66);
            v106 = v104;
            v107 = sub_1A7E22040();
            v108 = sub_1A7E228E0();
            if (os_log_type_enabled(v107, v108))
            {
              v109 = swift_slowAlloc();
              LODWORD(v131) = v108;
              v110 = v109;
              v132 = swift_slowAlloc();
              v162 = v132;
              *v110 = v130;
              sub_1A7D0D444(&qword_1EB2B3058, MEMORY[0x1E6968FB0]);
              v129 = v107;
              v111 = sub_1A7E23090();
              v113 = v112;
              v114 = v155;
              v155(v142, v66);
              v115 = sub_1A7B0CB38(v111, v113, &v162);
              v67 = v152;

              *(v110 + 4) = v115;
              *(v110 + 12) = 2080;
              v116 = sub_1A7E23090();
              v118 = v117;
              v114(v143, v66);
              v119 = sub_1A7B0CB38(v116, v118, &v162);

              *(v110 + 14) = v119;
              v120 = v129;
              _os_log_impl(&dword_1A7AD9000, v129, v131, "Failed to convert packet log %s into plain text at destination %s", v110, 0x16u);
              v121 = v132;
              swift_arrayDestroy();
              MEMORY[0x1AC5654B0](v121, -1, -1);
              MEMORY[0x1AC5654B0](v110, -1, -1);

              v114(v151, v66);
              v114(v67, v66);
            }

            else
            {

              v123 = v155;
              v155(v105, v66);
              v123(v102, v66);
              v123(v106, v66);
              v123(v67, v66);
            }

            v2 = 0;
            v65 = v140;
          }

          else
          {
            v122 = v155;
            v155(v104, v66);
            v122(v67, v66);
          }
        }

        ++v63;
        v64 = v161;
        v60 = v146;
        if (v147 == v63)
        {
        }
      }

      v155(v67, v66);
    }
  }

  else
  {
    v124 = v38;
    sub_1A7E217F0();

    return swift_willThrow();
  }
}

uint64_t sub_1A7D0D3E8(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A7D0D444(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1A7D0D48C()
{
  v20[2] = *MEMORY[0x1E69E9840];
  v0 = sub_1A7E21850();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v20[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A7E21940();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v20[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v20[-1] - v12;
  v14 = [objc_opt_self() defaultManager];
  sub_1A7E218B0();
  v20[0] = 0xD00000000000001CLL;
  v20[1] = 0x80000001A7EADC30;
  (*(v1 + 104))(v4, *MEMORY[0x1E6968F70], v0);
  sub_1A7CC7DFC();
  sub_1A7E21920();
  (*(v1 + 8))(v4, v0);
  v15 = *(v6 + 8);
  v15(v9, v5);
  v16 = sub_1A7E218E0();
  v15(v13, v5);
  v20[0] = 0;
  LOBYTE(v0) = [v14 removeItemAtURL:v16 error:v20];

  if (v0)
  {
    return v20[0];
  }

  v18 = v20[0];
  sub_1A7E217F0();

  return swift_willThrow();
}

uint64_t sub_1A7D0D74C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A7CD2A2C;

  return sub_1A7D082A0(v2);
}

uint64_t sub_1A7D0D7F8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A7D0D838(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A7CD22FC;

  return sub_1A7DE518C(a1, v4, v5, v6);
}

uint64_t sub_1A7D0D904()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A7CD2A2C;

  return sub_1A7D07F64();
}

uint64_t sub_1A7D0D9B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A7CC7FFC(&qword_1EB2B4B90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A7D0DAA0()
{
  sub_1A7E23200();
  sub_1A7E221D0();
  return sub_1A7E23240();
}

uint64_t sub_1A7D0DAF4()
{
  sub_1A7E23200();
  sub_1A7D0DA90();
  return sub_1A7E23240();
}

uint64_t sub_1A7D0DB48()
{
  type metadata accessor for ContinuationsByID.HashableWrapper();
  sub_1A7CC9830(&qword_1EB2B57A8);
  sub_1A7E22630();
  swift_getWitnessTable();
  sub_1A7E22190();
  sub_1A7E21CB0();
  sub_1A7CFBFA0();
  return v0;
}

uint64_t sub_1A7D0DC34()
{
  sub_1A7D0DB48();

  return swift_deallocClassInstance();
}

uint64_t sub_1A7D0DCA0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A7D0DD10(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_1A7D0DE50(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

IDSFoundation::IDSLinksQualityLinkCycleAssignments __swiftcall IDSLinksQualityLinkCycleAssignments.init()()
{
  v1 = v0;
  result.linkInstanceIDByLinkID._rawValue = sub_1A7CE2B54(MEMORY[0x1E69E7CC0]);
  v1->linkInstanceIDByLinkID._rawValue = result.linkInstanceIDByLinkID._rawValue;
  return result;
}

Swift::Int_optional __swiftcall IDSLinksQualityLinkCycleAssignments.linkInstanceID(forLinkWithID:)(Swift::String forLinkWithID)
{
  v2 = *v1;
  if (*(v2 + 16) && (v3 = sub_1A7CD1248(forLinkWithID._countAndFlagsBits, forLinkWithID._object), (v4 & 1) != 0))
  {
    v5 = 0;
    v6 = *(*(v2 + 56) + 8 * v3);
  }

  else
  {
    v6 = 0;
    v5 = 1;
  }

  result.value = v6;
  result.is_nil = v5;
  return result;
}

unint64_t sub_1A7D0E0EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if (!*(v6 + 16) || (result = sub_1A7CD1248(a1, a2), (v8 & 1) == 0))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    *v3 = 0x8000000000000000;
    sub_1A7DC45AC(0, a1, a2, isUniquelyReferenced_nonNull_native);
    v12 = v15;

    v10 = 0;
    goto LABEL_6;
  }

  v9 = *(*(v6 + 56) + 8 * result);
  v10 = v9 + 1;
  if (!__OFADD__(v9, 1))
  {
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    *v3 = 0x8000000000000000;
    sub_1A7DC45AC(v10, a1, a2, v11);
    v12 = v14;

LABEL_6:
    *v3 = v12;
    return v10;
  }

  __break(1u);
  return result;
}

uint64_t IDSQuickRelayAllocateType.description.getter(uint64_t a1)
{
  if (a1 > 2)
  {
    if (a1 != 3)
    {
      if (a1 == 4)
      {
        return 0x696C412D7065654BLL;
      }

      return 0x6E776F6E6B6E55;
    }

    return 0x646572616853;
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return 1718379859;
      }

      return 0x6E776F6E6B6E55;
    }

    return 0x7961572D6F7754;
  }
}

uint64_t sub_1A7D0E290()
{
  v1 = *v0;
  if (*v0 > 2)
  {
    if (v1 != 3)
    {
      if (v1 == 4)
      {
        return 0x696C412D7065654BLL;
      }

      return 0x6E776F6E6B6E55;
    }

    return 0x646572616853;
  }

  else
  {
    if (v1 != 1)
    {
      if (v1 == 2)
      {
        return 1718379859;
      }

      return 0x6E776F6E6B6E55;
    }

    return 0x7961572D6F7754;
  }
}

uint64_t IDSQuickRelayAllocateType.cli.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result > 2)
  {
    if (result == 3)
    {
      v2 = 3;
      v3 = 0xE600000000000000;
      v4 = 0x646572616853;
      goto LABEL_11;
    }

    if (result == 4)
    {
      v2 = 2;
      v3 = 0xEA00000000006576;
      v4 = 0x696C412D7065654BLL;
      goto LABEL_11;
    }

LABEL_8:
    v2 = 1;
    v3 = 0xE700000000000000;
    v4 = 0x6E776F6E6B6E55;
    goto LABEL_11;
  }

  if (result == 1)
  {
    v2 = 4;
    v3 = 0xE700000000000000;
    v4 = 0x7961572D6F7754;
    goto LABEL_11;
  }

  if (result != 2)
  {
    goto LABEL_8;
  }

  v2 = 5;
  v3 = 0xE400000000000000;
  v4 = 1718379859;
LABEL_11:
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 2;
  *(a2 + 17) = v2;
  return result;
}

uint64_t sub_1A7D0E3F8(uint64_t a1, unint64_t a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a2 >> 62;
  v31 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v46 = MEMORY[0x1E69E7CC0];
    v32 = a2 >> 62;
    sub_1A7CCE918(0, v5 & ~(v5 >> 63), 0);
    v9 = v32;
    if (v32)
    {
      if (v32 == 2)
      {
        v10 = *(a1 + 16);
      }

      else
      {
        v10 = a1;
      }
    }

    else
    {
      v10 = 0;
    }

    v33 = v10;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v11 = 0;
    v8 = v46;
    v30 = &v34 + v10;
    do
    {
      if (v11 >= v5)
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

      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_41;
      }

      v13 = v33 + v11;
      if (v9 == 2)
      {
        if (v13 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v13 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v18 = sub_1A7E21630();
        if (!v18)
        {
          goto LABEL_51;
        }

        v15 = v18;
        v19 = sub_1A7E21660();
        v17 = v13 - v19;
        if (__OFSUB__(v13, v19))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v9 != 1)
        {
          if (v13 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v34 = a1;
          v35 = BYTE2(a1);
          v36 = BYTE3(a1);
          v37 = v31;
          v38 = BYTE5(a1);
          v39 = BYTE6(a1);
          v40 = HIBYTE(a1);
          v41 = a2;
          v42 = BYTE2(a2);
          v43 = BYTE3(a2);
          v44 = BYTE4(a2);
          v45 = BYTE5(a2);
          v20 = v30[v11];
          goto LABEL_36;
        }

        if (v13 < a1 || v13 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v14 = sub_1A7E21630();
        if (!v14)
        {
          goto LABEL_50;
        }

        v15 = v14;
        v16 = sub_1A7E21660();
        v17 = v13 - v16;
        if (__OFSUB__(v13, v16))
        {
          goto LABEL_46;
        }
      }

      v20 = *(v15 + v17);
      v9 = v32;
LABEL_36:
      sub_1A7CC7FFC(&qword_1EB2B57B0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1A7E418C0;
      *(v21 + 56) = MEMORY[0x1E69E7508];
      *(v21 + 64) = MEMORY[0x1E69E7558];
      *(v21 + 32) = v20;
      v22 = sub_1A7E222C0();
      v46 = v8;
      v25 = *(v8 + 16);
      v24 = *(v8 + 24);
      if (v25 >= v24 >> 1)
      {
        v29 = v22;
        v27 = v23;
        sub_1A7CCE918((v24 > 1), v25 + 1, 1);
        v9 = v32;
        v23 = v27;
        v22 = v29;
        v8 = v46;
      }

      *(v8 + 16) = v25 + 1;
      v26 = v8 + 16 * v25;
      *(v26 + 32) = v22;
      *(v26 + 40) = v23;
      ++v11;
    }

    while (v12 != v5);
  }

  return v8;
}

uint64_t sub_1A7D0E774(uint64_t a1, unint64_t a2)
{
  v2 = sub_1A7D0E3F8(a1, a2);
  v3 = v2;
  v4 = v2[2];
  if (v4)
  {
    v5 = v2[4];
    v6 = v2[5];

    MEMORY[0x1AC561C90](v5, v6);

    if (v4 != 1)
    {
      v8 = v3 + 7;
      v9 = 1;
      do
      {
        v11 = *(v8 - 1);
        v10 = *v8;

        if ((v9 & 1) == 0)
        {
          MEMORY[0x1AC561C90](58, 0xE100000000000000);
        }

        ++v9;
        MEMORY[0x1AC561C90](v11, v10);

        v8 += 2;
      }

      while (v4 != v9);
    }
  }

  return 0;
}

uint64_t CLIFormattable.description.getter(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v10[0] = 0;
  v4 = sub_1A7E22070();
  if (MEMORY[0x1AC561960](1, v4, v10))
  {
    v5 = 80;
  }

  else
  {
    v5 = WORD1(v10[0]);
  }

  (*(a2 + 16))(v10, v5, 0, 0, a1, a2);
  v6 = v11;
  v7 = v12;
  sub_1A7CC9878(v10, v11);
  (*(v7 + 24))(v6, v7);
  sub_1A7CC7FFC(&qword_1EB2B4AA0);
  sub_1A7CD0F8C();
  v8 = sub_1A7E221F0();

  sub_1A7B0CD6C(v10);
  return v8;
}

uint64_t CLIFormattable.indent(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  a5[3] = a3;
  a5[4] = a4;
  v10 = sub_1A7CC98BC(a5);
  (*(*(a3 - 8) + 16))(v10, v5, a3);
  a5[5] = a1;
  a5[6] = a2;
}

uint64_t IDSLinkCellularTuple.description.getter()
{
  v1 = v0[1];
  v2 = 0xE700000000000000;
  v3 = 0x6C6C65436E6F4ELL;
  if (*v0 != 1)
  {
    v3 = 7958081;
    v2 = 0xE300000000000000;
  }

  if (*v0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1819043139;
  }

  if (*v0)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  MEMORY[0x1AC561C90](v4, v5);

  MEMORY[0x1AC561C90](45, 0xE100000000000000);
  v6 = 0xE700000000000000;
  v7 = 0x6C6C65436E6F4ELL;
  if (v1 != 1)
  {
    v7 = 7958081;
    v6 = 0xE300000000000000;
  }

  if (v1)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1819043139;
  }

  if (v1)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE400000000000000;
  }

  MEMORY[0x1AC561C90](v8, v9);

  return 0;
}

uint64_t IDSLinkCellularState.description.getter()
{
  v1 = 0x6C6C65436E6F4ELL;
  if (*v0 != 1)
  {
    v1 = 7958081;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1819043139;
  }
}

uint64_t sub_1A7D0EBA8(uint64_t a1)
{
  v2 = sub_1A7D0F7EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D0EBE4(uint64_t a1)
{
  v2 = sub_1A7D0F7EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7D0EC20(uint64_t a1)
{
  v2 = sub_1A7D0F894();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D0EC5C(uint64_t a1)
{
  v2 = sub_1A7D0F894();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7D0EC98()
{
  v1 = 0x6C6C65636E6F6ELL;
  if (*v0 != 1)
  {
    v1 = 7958113;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1819043171;
  }
}

uint64_t sub_1A7D0ECE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A7D10854(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A7D0ED0C(uint64_t a1)
{
  v2 = sub_1A7D0F798();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D0ED48(uint64_t a1)
{
  v2 = sub_1A7D0F798();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7D0ED84(uint64_t a1)
{
  v2 = sub_1A7D0F840();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D0EDC0(uint64_t a1)
{
  v2 = sub_1A7D0F840();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IDSLinkCellularState.encode(to:)(void *a1)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B57B8);
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v28 = &v22 - v5;
  v6 = sub_1A7CC7FFC(&qword_1EB2B57C0);
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v25 = &v22 - v8;
  v9 = sub_1A7CC7FFC(&qword_1EB2B57C8);
  v23 = *(v9 - 8);
  v24 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v22 - v11;
  v13 = sub_1A7CC7FFC(&qword_1EB2B57D0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v22 - v16;
  v18 = *v1;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D0F798();
  sub_1A7E23260();
  if (v18)
  {
    if (v18 == 1)
    {
      v32 = 1;
      sub_1A7D0F840();
      v12 = v25;
      sub_1A7E22F80();
      v20 = v26;
      v19 = v27;
    }

    else
    {
      v33 = 2;
      sub_1A7D0F7EC();
      v12 = v28;
      sub_1A7E22F80();
      v20 = v29;
      v19 = v30;
    }
  }

  else
  {
    v31 = 0;
    sub_1A7D0F894();
    sub_1A7E22F80();
    v20 = v23;
    v19 = v24;
  }

  (*(v20 + 8))(v12, v19);
  return (*(v14 + 8))(v17, v13);
}

uint64_t IDSLinkCellularState.hashValue.getter()
{
  v1 = *v0;
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](v1);
  return sub_1A7E23240();
}

uint64_t IDSLinkCellularState.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v39 = a2;
  v3 = sub_1A7CC7FFC(&qword_1EB2B57F8);
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v38 = &v32 - v5;
  v37 = sub_1A7CC7FFC(&qword_1EB2B5800);
  v34 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v6);
  v8 = &v32 - v7;
  v9 = sub_1A7CC7FFC(&qword_1EB2B5808);
  v33 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v32 - v11;
  v13 = sub_1A7CC7FFC(&qword_1EB2B5810);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v32 - v16;
  v18 = a1[3];
  v41 = a1;
  sub_1A7CC9878(a1, v18);
  sub_1A7D0F798();
  v19 = v40;
  sub_1A7E23250();
  if (!v19)
  {
    v32 = v9;
    v40 = v14;
    v21 = v38;
    v20 = v39;
    v22 = sub_1A7E22F70();
    v23 = (2 * *(v22 + 16)) | 1;
    v42 = v22;
    v43 = v22 + 32;
    v44 = 0;
    v45 = v23;
    v24 = sub_1A7CDB540();
    if (v24 == 3 || v44 != v45 >> 1)
    {
      v26 = sub_1A7E22BD0();
      swift_allocError();
      v28 = v27;
      sub_1A7CC7FFC(&qword_1EB2B4EC8);
      *v28 = &type metadata for IDSLinkCellularState;
      sub_1A7E22E90();
      sub_1A7E22BC0();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
      swift_willThrow();
      (*(v40 + 8))(v17, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v46 = v24;
      if (v24)
      {
        if (v24 == 1)
        {
          v47 = 1;
          sub_1A7D0F840();
          sub_1A7E22E70();
          v25 = v40;
          (*(v34 + 8))(v8, v37);
          (*(v25 + 8))(v17, v13);
        }

        else
        {
          v47 = 2;
          sub_1A7D0F7EC();
          v30 = v21;
          sub_1A7E22E70();
          v31 = v40;
          (*(v35 + 8))(v30, v36);
          (*(v31 + 8))(v17, v13);
        }
      }

      else
      {
        v47 = 0;
        sub_1A7D0F894();
        sub_1A7E22E70();
        (*(v33 + 8))(v12, v32);
        (*(v40 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v20 = v46;
    }
  }

  return sub_1A7B0CD6C(v41);
}

uint64_t sub_1A7D0F74C()
{
  v1 = 0x6C6C65436E6F4ELL;
  if (*v0 != 1)
  {
    v1 = 7958081;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1819043139;
  }
}

unint64_t sub_1A7D0F798()
{
  result = qword_1EB2B57D8;
  if (!qword_1EB2B57D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B57D8);
  }

  return result;
}

unint64_t sub_1A7D0F7EC()
{
  result = qword_1EB2B57E0;
  if (!qword_1EB2B57E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B57E0);
  }

  return result;
}

unint64_t sub_1A7D0F840()
{
  result = qword_1EB2B57E8;
  if (!qword_1EB2B57E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B57E8);
  }

  return result;
}

unint64_t sub_1A7D0F894()
{
  result = qword_1EB2B57F0;
  if (!qword_1EB2B57F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B57F0);
  }

  return result;
}

Swift::Bool __swiftcall IDSLinkCellularTuple.matches(_:)(IDSFoundation::IDSLinkCellularTuple a1)
{
  v2 = **&a1.from;
  v3 = *v1;
  if (v2 != v3 && v2 != 2 && v3 != 2)
  {
    return 0;
  }

  v6 = *(*&a1.from + 1);
  v7 = v1[1];
  return v6 == v7 || v7 == 2 || v6 == 2;
}

uint64_t sub_1A7D0F97C()
{
  if (*v0)
  {
    return 28532;
  }

  else
  {
    return 1836020326;
  }
}

uint64_t sub_1A7D0F9A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1836020326 && a2 == 0xE400000000000000;
  if (v5 || (sub_1A7E230D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 28532 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A7E230D0();

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

uint64_t sub_1A7D0FA78(uint64_t a1)
{
  v2 = sub_1A7D0FCA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D0FAB4(uint64_t a1)
{
  v2 = sub_1A7D0FCA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IDSLinkCellularTuple.encode(to:)(void *a1)
{
  v4 = sub_1A7CC7FFC(&qword_1EB2B5818);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - v7;
  v9 = *v1;
  v12 = v1[1];
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D0FCA8();
  sub_1A7E23260();
  v16 = v9;
  v15 = 0;
  sub_1A7D0FCFC();
  sub_1A7E23030();
  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    sub_1A7E23030();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1A7D0FCA8()
{
  result = qword_1EB2B5820;
  if (!qword_1EB2B5820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5820);
  }

  return result;
}

unint64_t sub_1A7D0FCFC()
{
  result = qword_1EB2B5828;
  if (!qword_1EB2B5828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5828);
  }

  return result;
}

uint64_t IDSLinkCellularTuple.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x1AC562AF0](*v0);
  return MEMORY[0x1AC562AF0](v1);
}

uint64_t IDSLinkCellularTuple.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](v1);
  MEMORY[0x1AC562AF0](v2);
  return sub_1A7E23240();
}

uint64_t IDSLinkCellularTuple.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_1A7CC7FFC(&qword_1EB2B5830);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v13 - v8;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D0FCA8();
  sub_1A7E23250();
  if (!v2)
  {
    v16 = 0;
    sub_1A7D100C0();
    sub_1A7E22F30();
    v10 = v17;
    v14 = 1;
    sub_1A7E22F30();
    (*(v6 + 8))(v9, v5);
    v11 = v15;
    *a2 = v10;
    a2[1] = v11;
  }

  return sub_1A7B0CD6C(a1);
}

uint64_t sub_1A7D0FFC4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](v1);
  MEMORY[0x1AC562AF0](v2);
  return sub_1A7E23240();
}

uint64_t sub_1A7D10024()
{
  v1 = v0[1];
  MEMORY[0x1AC562AF0](*v0);
  return MEMORY[0x1AC562AF0](v1);
}

uint64_t sub_1A7D10064()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](v1);
  MEMORY[0x1AC562AF0](v2);
  return sub_1A7E23240();
}

unint64_t sub_1A7D100C0()
{
  result = qword_1EB2B5838;
  if (!qword_1EB2B5838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5838);
  }

  return result;
}

unint64_t sub_1A7D101B8()
{
  result = qword_1EB2B5840;
  if (!qword_1EB2B5840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5840);
  }

  return result;
}

unint64_t sub_1A7D10210()
{
  result = qword_1EB2B5848;
  if (!qword_1EB2B5848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5848);
  }

  return result;
}

uint64_t sub_1A7D10290(unsigned __int16 *a1, unsigned int a2)
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

_WORD *sub_1A7D10324(_WORD *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1A7D10438()
{
  result = qword_1EB2B5850;
  if (!qword_1EB2B5850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5850);
  }

  return result;
}

unint64_t sub_1A7D10490()
{
  result = qword_1EB2B5858;
  if (!qword_1EB2B5858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5858);
  }

  return result;
}

unint64_t sub_1A7D104E8()
{
  result = qword_1EB2B5860;
  if (!qword_1EB2B5860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5860);
  }

  return result;
}

unint64_t sub_1A7D10540()
{
  result = qword_1EB2B5868;
  if (!qword_1EB2B5868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5868);
  }

  return result;
}

unint64_t sub_1A7D10598()
{
  result = qword_1EB2B5870;
  if (!qword_1EB2B5870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5870);
  }

  return result;
}

unint64_t sub_1A7D105F0()
{
  result = qword_1EB2B5878;
  if (!qword_1EB2B5878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5878);
  }

  return result;
}

unint64_t sub_1A7D10648()
{
  result = qword_1EB2B5880;
  if (!qword_1EB2B5880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5880);
  }

  return result;
}

unint64_t sub_1A7D106A0()
{
  result = qword_1EB2B5888;
  if (!qword_1EB2B5888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5888);
  }

  return result;
}

unint64_t sub_1A7D106F8()
{
  result = qword_1EB2B5890;
  if (!qword_1EB2B5890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5890);
  }

  return result;
}

unint64_t sub_1A7D10750()
{
  result = qword_1EB2B5898;
  if (!qword_1EB2B5898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5898);
  }

  return result;
}

unint64_t sub_1A7D107A8()
{
  result = qword_1EB2B58A0;
  if (!qword_1EB2B58A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B58A0);
  }

  return result;
}

unint64_t sub_1A7D10800()
{
  result = qword_1EB2B58A8;
  if (!qword_1EB2B58A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B58A8);
  }

  return result;
}

uint64_t sub_1A7D10854(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1819043171 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A7E230D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6C65636E6F6ELL && a2 == 0xE700000000000000 || (sub_1A7E230D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7958113 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A7E230D0();

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

_OWORD *LinkDefinition.protocolStack.setter(uint64_t a1)
{
  v2[3] = &type metadata for LinkDefinitionProtocolStack;
  v2[0] = a1;
  return sub_1A7CC8D74(v2, &type metadata for LinkDefinitionProtocolStack);
}

uint64_t LinkDefinitionProtocolStack.uniqueID.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1A7CCE918(0, v2, 0);
    v3 = (v1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v7 = *(v13 + 16);
      v6 = *(v13 + 24);

      if (v7 >= v6 >> 1)
      {
        sub_1A7CCE918((v6 > 1), v7 + 1, 1);
      }

      *(v13 + 16) = v7 + 1;
      v8 = v13 + 16 * v7;
      *(v8 + 32) = v5;
      *(v8 + 40) = v4;
      v3 += 2;
      --v2;
    }

    while (v2);
  }

  sub_1A7CC7FFC(&qword_1EB2B4AA0);
  sub_1A7CD0F8C();
  v9 = sub_1A7E221F0();
  v11 = v10;

  MEMORY[0x1AC561C90](v9, v11);

  return 0x6C6F636F746F7270;
}

uint64_t LinkDefinition.protocolStack.getter()
{
  v1 = *v0;
  if (!*(v1 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = sub_1A7CD0DFC(&type metadata for LinkDefinitionProtocolStack);
  if ((v3 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1A7B0CD10(*(v1 + 56) + 32 * v2, v6);
  sub_1A7B1503C(v6, &v5);
  sub_1A7CC7FFC(&qword_1EB2B5040);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  result = v7;
  if (!v7)
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

_OWORD *(*LinkDefinition.protocolStack.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  sub_1A7CE0528(*v1, &v5);
  v3 = v5;
  if (!v5)
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  *a1 = v3;
  return sub_1A7D10C60;
}

_OWORD *sub_1A7D10C60(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v5 = &type metadata for LinkDefinitionProtocolStack;
    v4[0] = v2;

    sub_1A7CC8D74(v4, &type metadata for LinkDefinitionProtocolStack);
  }

  else
  {
    v5 = &type metadata for LinkDefinitionProtocolStack;
    v4[0] = v2;
    return sub_1A7CC8D74(v4, &type metadata for LinkDefinitionProtocolStack);
  }
}

uint64_t CLIFormattedText.lines.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1A7D10E30()
{
  v0 = sub_1A7CC7FFC(&qword_1EB2B5678);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v7 - v2;
  v4 = sub_1A7E21F80();
  sub_1A7CC7A10(v4, qword_1EB2DC220);
  sub_1A7B0CB00(v4, qword_1EB2DC220);
  v5 = sub_1A7E21EF0();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  return sub_1A7E21F40();
}

uint64_t sub_1A7D10F64()
{
  v1[7] = v0;
  type metadata accessor for LEToolOptions();
  v1[8] = swift_task_alloc();
  type metadata accessor for LEToolRequestMessage(0);
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7D11020, 0, 0);
}

uint64_t sub_1A7D11020()
{
  type metadata accessor for LEToolRequest(0);
  swift_storeEnumTagMultiPayload();
  sub_1A7CC7FFC(&qword_1EB2B5690);
  sub_1A7E21DC0();
  v0[5] = &type metadata for CLIDefaultPrinter;
  v0[6] = &protocol witness table for CLIDefaultPrinter;
  v0[2] = sub_1A7D2B464;
  v0[3] = 0;
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_1A7D1112C;
  v2 = v0[8];
  v3 = v0[9];

  return sub_1A7DE8A40(v3, v2, (v0 + 2));
}

uint64_t sub_1A7D1112C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v2 + 88) = v0;

  sub_1A7D11D8C(v4, type metadata accessor for LEToolOptions);
  sub_1A7D11D8C(v3, type metadata accessor for LEToolRequestMessage);
  sub_1A7B0CD6C(v2 + 16);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A7D01DEC, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1A7D112FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = sub_1A7CC7FFC(&qword_1EB2B5690);
  v22 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v20 - v5;
  v7 = sub_1A7CC7FFC(&qword_1EB2B58F0);
  v23 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v20 - v9;
  v11 = sub_1A7E21D90();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v13 = type metadata accessor for LEToolConnectorShow();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A7E21D80();
  type metadata accessor for LEToolOptions();
  sub_1A7D11CF0(&qword_1EB2B56B0, type metadata accessor for LEToolOptions);
  sub_1A7E21DD0();
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D11D38();
  v17 = v24;
  sub_1A7E23250();
  if (!v17)
  {
    v18 = v22;
    sub_1A7D02BA4();
    sub_1A7E22F30();
    (*(v23 + 8))(v10, v7);
    (*(v18 + 40))(v16, v6, v3);
    sub_1A7D11DEC(v16, v21);
  }

  sub_1A7B0CD6C(a1);
  return sub_1A7D11D8C(v16, type metadata accessor for LEToolConnectorShow);
}

uint64_t sub_1A7D11618(uint64_t a1)
{
  v2 = sub_1A7D11D38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D11654(uint64_t a1)
{
  v2 = sub_1A7D11D38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7D11690()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A7CD22FC;

  return sub_1A7D10F64();
}

uint64_t sub_1A7D11740()
{
  v0 = sub_1A7E21D90();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  sub_1A7E21D80();
  type metadata accessor for LEToolOptions();
  sub_1A7D11CF0(&qword_1EB2B56B0, type metadata accessor for LEToolOptions);
  return sub_1A7E21DD0();
}

uint64_t sub_1A7D1182C()
{
  v0 = sub_1A7CC7FFC(&qword_1EB2B5678);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v10 - v2;
  v4 = sub_1A7E21F80();
  sub_1A7CC7A10(v4, qword_1EB2DC238);
  sub_1A7B0CB00(v4, qword_1EB2DC238);
  sub_1A7CC7FFC(&qword_1EB2B5680);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A7E418C0;
  v6 = type metadata accessor for LEToolConnectorShow();
  v7 = sub_1A7D11CF0(&qword_1EB2B58C8, type metadata accessor for LEToolConnectorShow);
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  v8 = sub_1A7E21EF0();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  return sub_1A7E21F40();
}

uint64_t sub_1A7D119F0()
{
  sub_1A7D11AF8();
  sub_1A7E21E90();
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1A7D11AA0()
{
  result = qword_1EB2B58B0;
  if (!qword_1EB2B58B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B58B0);
  }

  return result;
}

unint64_t sub_1A7D11AF8()
{
  result = qword_1EB2B58B8;
  if (!qword_1EB2B58B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B58B8);
  }

  return result;
}

unint64_t sub_1A7D11B50()
{
  result = qword_1EB2B58C0;
  if (!qword_1EB2B58C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B58C0);
  }

  return result;
}

uint64_t type metadata accessor for LEToolConnectorShow()
{
  result = qword_1EB2B58D0;
  if (!qword_1EB2B58D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A7D11CF0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A7D11D38()
{
  result = qword_1EB2B58F8;
  if (!qword_1EB2B58F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B58F8);
  }

  return result;
}

uint64_t sub_1A7D11D8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A7D11DEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LEToolConnectorShow();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A7D11E64()
{
  result = qword_1EB2B5900;
  if (!qword_1EB2B5900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5900);
  }

  return result;
}

unint64_t sub_1A7D11EBC()
{
  result = qword_1EB2B5908;
  if (!qword_1EB2B5908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5908);
  }

  return result;
}

unint64_t sub_1A7D11F14()
{
  result = qword_1EB2B5910;
  if (!qword_1EB2B5910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5910);
  }

  return result;
}

uint64_t LinkEndpoint.interfaceAllowList.getter()
{
  v1 = *v0;
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_1A7CD0DFC(&type metadata for IDSLinkEndpointInterfaceAllowList);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_1A7B0CD10(*(v1 + 56) + 32 * v2, v6);
  sub_1A7B1503C(v6, &v5);
  sub_1A7CC7FFC(&qword_1EB2B5040);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  result = v7;
  if (v7 == 1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1A7D1203C()
{

  return swift_deallocClassInstance();
}

uint64_t IDSLinkEndpointRelayLinkID.uniqueIDSortableIdentifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t IDSLinkEndpointRelayLinkID.uniqueID.getter()
{
  strcpy(v2, "relayLinkID=");
  v0 = sub_1A7E23090();
  MEMORY[0x1AC561C90](v0);

  return v2[0];
}

uint64_t sub_1A7D12154()
{
  strcpy(v2, "relayLinkID=");
  v0 = sub_1A7E23090();
  MEMORY[0x1AC561C90](v0);

  return v2[0];
}

uint64_t LinkEndpoint.idsRelayLinkID.getter()
{
  v1 = *v0;
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_1A7CD0DFC(&type metadata for IDSLinkEndpointRelayLinkID);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_1A7B0CD10(*(v1 + 56) + 32 * v2, v7);
  sub_1A7B1503C(v7, &v6);
  sub_1A7CC7FFC(&qword_1EB2B5040);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  result = v9;
  if (v9)
  {
    v5 = v8;

    return v5;
  }

  return result;
}

uint64_t IDSLinksQualityRepeatingAsyncTask.stop()()
{
  v1[3] = v0;
  v2 = sub_1A7E22640();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7D12354, 0, 0);
}