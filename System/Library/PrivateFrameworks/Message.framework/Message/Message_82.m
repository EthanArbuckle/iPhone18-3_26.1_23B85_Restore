ValueMetadata *type metadata accessor for Credentials()
{
  return &type metadata for Credentials;
}

{
  return &type metadata for Credentials;
}

IMAP2Persistence::DownloadPass_optional __swiftcall DownloadPass.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_1B0E467E8();

  if (v1 == 1)
  {
    v2.value = IMAP2Persistence_DownloadPass_second;
  }

  else
  {
    v2.value = IMAP2Persistence_DownloadPass_unknownDefault;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t DownloadPass.rawValue.getter(char a1)
{
  if (a1)
  {
    return 6581810;
  }

  else
  {
    return 7631665;
  }
}

uint64_t sub_1B0CC1AFC(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 6581810;
  }

  else
  {
    v2 = 7631665;
  }

  if (*a2)
  {
    v3 = 6581810;
  }

  else
  {
    v3 = 7631665;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1B0E46A78();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

unint64_t sub_1B0CC1B78()
{
  result = qword_1EB6E6118;
  if (!qword_1EB6E6118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6118);
  }

  return result;
}

uint64_t sub_1B0CC1BCC()
{
  v1 = *v0;
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0E46CB8();
}

uint64_t sub_1B0CC1C34()
{
  *v0;
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1B0CC1C80()
{
  v1 = *v0;
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0E46CB8();
}

uint64_t sub_1B0CC1CE4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B0E467E8();

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

void sub_1B0CC1D44(uint64_t *a1@<X8>)
{
  v2 = 7631665;
  if (*v1)
  {
    v2 = 6581810;
  }

  *a1 = v2;
  a1[1] = 0xE300000000000000;
}

unint64_t sub_1B0CC1D70()
{
  result = qword_1EB6E6120;
  if (!qword_1EB6E6120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E6128, &qword_1B0EE2370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6120);
  }

  return result;
}

uint64_t DownloadRequest.mailbox.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

uint64_t DownloadRequest.mailbox.setter(uint64_t a1, int a2)
{
  v5 = *(v2 + 8);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t DownloadRequest.message.getter()
{
  v1 = *(v0 + 24);
  sub_1B03B2000(v1, *(v0 + 32));
  return v1;
}

uint64_t DownloadRequest.message.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B0391D50(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t DownloadRequest.kind.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t DownloadRequest.init(id:mailbox:message:kind:qos:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t static DownloadRequest.Kind.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      return static SectionSpecifier.Part.__derived_struct_equals(_:_:)(a1, a2);
    }

    return 0;
  }

  return !a2;
}

BOOL sub_1B0CC2018(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s16IMAP2Persistence15DownloadRequestV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v7);
}

uint64_t sub_1B0CC2074(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    if (v3)
    {
      return static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v2, v3);
    }

    return 0;
  }

  return !v3;
}

uint64_t DownloadRequest.QoS.hashValue.getter(unsigned __int8 a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1);
  return sub_1B0E46CB8();
}

uint64_t static DownloadRequest.QoS.current()()
{
  HIDWORD(v0) = qos_class_self() - 9;
  LODWORD(v0) = HIDWORD(v0);
  v1 = 0x4020302010200uLL >> (8 * (v0 >> 2));
  if ((v0 >> 2) >= 7)
  {
    return 2;
  }

  else
  {
    return v1;
  }
}

IMAP2Persistence::DownloadRequest::QoS_optional __swiftcall DownloadRequest.QoS.init(_:)(qos_class_t a1)
{
  HIDWORD(v1) = a1 - 9;
  LODWORD(v1) = a1 - 9;
  v2 = 0x4050302010500uLL >> (8 * (v1 >> 2));
  if ((v1 >> 2) >= 7)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t DownloadRequest.ID.hashValue.getter()
{
  sub_1B0E46C28();
  sub_1B0E46C88();
  return sub_1B0E46CB8();
}

BOOL _s16IMAP2Persistence15DownloadRequestV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || (*(a1 + 16) | (*(a1 + 16) << 32)) != (*(a2 + 16) | (*(a2 + 16) << 32)))
  {
    return 0;
  }

  if (sub_1B04520BC(*(a1 + 8), *(a2 + 8)) & 1) != 0 && (sub_1B0AB8858(*(a1 + 24), *(a1 + 32), *(a2 + 24), *(a2 + 32)))
  {
    v4 = *(a1 + 40);
    v5 = *(a2 + 40);
    if (v4)
    {
      if (v5)
      {
        v6 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v4);
        v7 = a2;
        v8 = a1;
        if (v6)
        {
          return *(v8 + 48) == *(v7 + 48);
        }
      }
    }

    else
    {
      v8 = a1;
      v7 = a2;
      if (!v5)
      {
        return *(v8 + 48) == *(v7 + 48);
      }
    }
  }

  return 0;
}

unint64_t sub_1B0CC2418()
{
  result = qword_1EB6E6130;
  if (!qword_1EB6E6130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6130);
  }

  return result;
}

unint64_t sub_1B0CC2470()
{
  result = qword_1EB6DCC40;
  if (!qword_1EB6DCC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCC40);
  }

  return result;
}

uint64_t sub_1B0CC24C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1B0CC250C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0CC256C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0CC25BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

BOOL sub_1B0CC2784(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | *a1;
  if (a1[2])
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (a2[1])
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 | *a2;
  if (a2[2])
  {
    v7 = 0x10000;
  }

  else
  {
    v7 = 0;
  }

  return sub_1B0392830(v3 | v4, *(a1 + 1), a1[16], *(a1 + 3), v6 | v7, *(a2 + 1), a2[16], *(a2 + 3));
}

uint64_t Environment.AppState.hashValue.getter(char a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1 & 1);
  return sub_1B0E46CB8();
}

uint64_t Environment.AppState.description.getter(char a1)
{
  if (a1)
  {
    return 0x756F72676B636162;
  }

  else
  {
    return 0x656C6269736976;
  }
}

uint64_t sub_1B0CC28C0()
{
  if (*v0)
  {
    result = 0x756F72676B636162;
  }

  else
  {
    result = 0x656C6269736976;
  }

  *v0;
  return result;
}

uint64_t Environment.Power.description.getter(char a1)
{
  if (!a1)
  {
    return 0x7265776F50776F6CLL;
  }

  if (a1 == 1)
  {
    return 0x7265747461426E6FLL;
  }

  return 0x4964656767756C70;
}

uint64_t sub_1B0CC2968()
{
  v1 = 0x7265747461426E6FLL;
  if (*v0 != 1)
  {
    v1 = 0x4964656767756C70;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7265776F50776F6CLL;
  }
}

unint64_t Environment.AvailableFileSystemSpace.description.getter(unsigned __int8 a1)
{
  v1 = 7827308;
  v2 = 0x746E61646E756261;
  if (a1 == 2)
  {
    v2 = 0xD00000000000001DLL;
  }

  if (a1)
  {
    v1 = 0xD000000000000022;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1B0CC2A74()
{
  v1 = 7827308;
  v2 = 0x746E61646E756261;
  if (*v0 == 2)
  {
    v2 = 0xD00000000000001DLL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000022;
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

uint64_t Environment.capturedValue.getter@<X0>(int a1@<W0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  v8 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v9 = 0x7265747461426E6FLL;
    }

    else
    {
      v9 = 0x4964656767756C70;
    }

    if (v8 == 1)
    {
      v10 = 0xE900000000000079;
    }

    else
    {
      v10 = 0xE90000000000006ELL;
    }
  }

  else
  {
    v10 = 0xE800000000000000;
    v9 = 0x7265776F50776F6CLL;
  }

  MEMORY[0x1B2726E80](v9, v10);

  if ((a1 & 0x100) != 0)
  {
    v11 = 0x756F72676B636162;
  }

  else
  {
    v11 = 0x656C6269736976;
  }

  v12 = 0xE700000000000000;
  if ((a1 & 0x100) != 0)
  {
    v13 = 0xEC0000006465646ELL;
  }

  else
  {
    v13 = 0xE700000000000000;
  }

  MEMORY[0x1B2726E80](v11, v13);

  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 == 3)
      {
        v12 = 0xE800000000000000;
        result = 0x6C61636974697263;
        goto LABEL_25;
      }

      goto LABEL_22;
    }

    result = 0x73756F69726573;
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE400000000000000;
        result = 1919508838;
        goto LABEL_25;
      }

LABEL_22:
      result = sub_1B0E469C8();
      v12 = v15;
      goto LABEL_25;
    }

    result = 0x6C616E696D6F6ELL;
  }

LABEL_25:
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      v17 = 0xD00000000000001DLL;
      v16 = 0x80000001B0F2F040;
    }

    else
    {
      v16 = 0xE800000000000000;
      v17 = 0x746E61646E756261;
    }
  }

  else
  {
    v16 = 0xE300000000000000;
    if (a3)
    {
      v17 = 0xD000000000000022;
    }

    else
    {
      v17 = 7827308;
    }

    if (a3)
    {
      v16 = 0x80000001B0F2F060;
    }
  }

  *a4 = 0;
  *(a4 + 8) = 0xE000000000000000;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0xE000000000000000;
  *(a4 + 32) = BYTE2(a1) & 1;
  *(a4 + 40) = result;
  *(a4 + 48) = v12;
  *(a4 + 56) = v17;
  *(a4 + 64) = v16;
  return result;
}

uint64_t sub_1B0CC2D40()
{
  v1 = *v0;
  v2 = 0x7265776F70;
  v3 = 0x64656B636F4C7369;
  v4 = 0x536C616D72656874;
  if (v1 != 3)
  {
    v4 = 0xD000000000000018;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6574617453707061;
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

uint64_t sub_1B0CC2DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B0CC3430(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B0CC2E0C()
{
  sub_1B0CC307C();

  return sub_1B0E46F28();
}

uint64_t sub_1B0CC2E48()
{
  sub_1B0CC307C();

  return sub_1B0E46F38();
}

uint64_t Environment.CapturedValue.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6138, &qword_1B0EE2710);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0CC307C();
  sub_1B0E46D48();
  v11 = *v3;
  v12 = v3[1];
  v21[15] = 0;
  sub_1B0E46928();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v21[14] = 1;
  sub_1B0E46928();
  v15 = *(v3 + 32);
  v21[13] = 2;
  sub_1B0E46938();
  v16 = v3[5];
  v17 = v3[6];
  v21[12] = 3;
  sub_1B0E46928();
  v19 = v3[7];
  v20 = v3[8];
  v21[11] = 4;
  sub_1B0E46928();
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1B0CC307C()
{
  result = qword_1EB6DCCE8;
  if (!qword_1EB6DCCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCCE8);
  }

  return result;
}

unint64_t sub_1B0CC30D4()
{
  result = qword_1EB6E6140;
  if (!qword_1EB6E6140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6140);
  }

  return result;
}

unint64_t sub_1B0CC312C()
{
  result = qword_1EB6E6148;
  if (!qword_1EB6E6148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E6150, &qword_1B0EE27A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6148);
  }

  return result;
}

unint64_t sub_1B0CC3194()
{
  result = qword_1EB6E6158;
  if (!qword_1EB6E6158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6158);
  }

  return result;
}

unint64_t sub_1B0CC31EC()
{
  result = qword_1EB6E6160;
  if (!qword_1EB6E6160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6160);
  }

  return result;
}

uint64_t sub_1B0CC3240(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 32))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B0CC3284(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1B0CC332C()
{
  result = qword_1EB6E6168;
  if (!qword_1EB6E6168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6168);
  }

  return result;
}

unint64_t sub_1B0CC3384()
{
  result = qword_1EB6DCCD8;
  if (!qword_1EB6DCCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCCD8);
  }

  return result;
}

unint64_t sub_1B0CC33DC()
{
  result = qword_1EB6DCCE0;
  if (!qword_1EB6DCCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCCE0);
  }

  return result;
}

uint64_t sub_1B0CC3430(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265776F70 && a2 == 0xE500000000000000;
  if (v4 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617453707061 && a2 == 0xE800000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656B636F4C7369 && a2 == 0xE800000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x536C616D72656874 && a2 == 0xEC00000065746174 || (sub_1B0E46A78() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001B0F2F0B0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B0E46A78();

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

uint64_t FlagsChange.flags.getter(uint64_t a1, uint64_t a2)
{
  v2 = 0x100000000;
  if ((a2 & 1) == 0)
  {
    v2 = 0;
  }

  *(&v3 + 1) = a2;
  *&v3 = a1;
  return (v3 >> 32) & 0xFF000001010101 | v2 | (a2 << 32) & 0xFF00010000000000;
}

uint64_t FlagsChange.flags.setter(uint64_t result, uint64_t a2, __int16 a3)
{
  *(v3 + 4) = result;
  *(v3 + 12) = a2;
  *(v3 + 20) = a3;
  return result;
}

uint64_t FlagsChange.changeIDs.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t static FlagsChange.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v22) = HIDWORD(a2);
  *(&v22 + 4) = a3;
  v8 = *(&v22 + 1);
  *v23 = HIDWORD(a6);
  *&v23[4] = a7;
  if (a5 != a1)
  {
    return 0;
  }

  v11 = *&v23[1];
  v12 = (a2 & 1) != 0 ? 0x100000000 : 0;
  *(&v13 + 1) = a2;
  *&v13 = a1;
  v14 = (v13 >> 32) & 0x1010101 | v12;
  LOBYTE(v20) = BYTE4(a2) & 1;
  *(&v20 + 1) = v8;
  BYTE9(v20) = BYTE5(a3);
  v15 = v20;
  v16 = WORD4(v20);
  v17 = (a6 & 1) != 0 ? 0x100000000 : 0;
  *(&v18 + 1) = a6;
  *&v18 = a5;
  LOBYTE(v21) = BYTE4(a6) & 1;
  *(&v21 + 1) = v11;
  BYTE9(v21) = BYTE5(a7);
  if ((sub_1B0CC99DC(v14 | (a2 << 32) & 0xFF00010000000000, v15, v16, (v18 >> 32) & 0x1010101 | v17 | (a6 << 32) & 0xFF00010000000000, v21, WORD4(v21)) & 1) == 0)
  {
    return 0;
  }

  return sub_1B0BE9028(a4, a8);
}

uint64_t sub_1B0CC3848(uint64_t a1, uint64_t a2)
{
  if (*a2 != *a1)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  v4 = *(a2 + 12);
  v5 = *(a2 + 9);
  v6 = *(a2 + 8);
  v7 = *(a2 + 7);
  v8 = *(a2 + 6);
  v9 = *(a2 + 5);
  v10 = *(a2 + 4);
  v11 = *(a1 + 12);
  v12 = *(a1 + 9);
  v13 = *(a1 + 8);
  v14 = *(a1 + 7);
  v15 = *(a2 + 10);
  v16 = *(a1 + 21);
  v17 = *(a1 + 13);
  v18 = *(a1 + 10);
  v19 = *(a1 + 4) & 1;
  v20 = *(a2 + 21);
  v21 = *(a2 + 13);
  v22 = (*(a1 + 5) & 1) != 0 ? 256 : 0;
  v23 = (*(a1 + 6) & 1) == 0;
  v24 = *(a1 + 11);
  v25 = *(a2 + 11);
  v26 = v23 ? 0 : 0x10000;
  v27 = (v14 & 1) != 0 ? 0x1000000 : 0;
  v28 = (v13 & 1) != 0 ? 0x100000000 : 0;
  v29 = (v12 & 1) != 0 ? 0x10000000000 : 0;
  v30 = v19 | (v18 << 48) | v22 | v26 | v27 | v28 | v29 | (v24 << 56);
  LOBYTE(v40) = v11 & 1;
  *(&v40 + 1) = v17;
  BYTE9(v40) = v16;
  v31 = v40;
  v32 = WORD4(v40);
  v33 = v10 & 1;
  v34 = (v9 & 1) != 0 ? 256 : 0;
  v35 = (v8 & 1) != 0 ? 0x10000 : 0;
  v36 = (v7 & 1) != 0 ? 0x1000000 : 0;
  v37 = (v6 & 1) != 0 ? 0x100000000 : 0;
  v38 = (v5 & 1) != 0 ? 0x10000000000 : 0;
  LOBYTE(v41) = v4 & 1;
  *(&v41 + 1) = v21;
  BYTE9(v41) = v20;
  if ((sub_1B0CC99DC(v30, v31, v32, v33 | (v15 << 48) | v34 | v35 | v36 | v37 | v38 | (v25 << 56), v41, WORD4(v41)) & 1) == 0)
  {
    return 0;
  }

  return sub_1B0BE9028(v2, v3);
}

uint64_t MailboxToRename.mailbox.setter(uint64_t a1, int a2)
{
  v5 = *v2;

  *v2 = a1;
  *(v2 + 2) = a2;
  return result;
}

uint64_t MailboxToRename.newName.setter(uint64_t a1, int a2)
{
  v5 = *(v2 + 16);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t MailboxToRename.hashValue.getter(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a2 | (a2 << 32));
  MEMORY[0x1B2728D70](a4 | (a4 << 32));
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CC3BC4()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v1 | (v1 << 32));
  MEMORY[0x1B2728D70](v2 | (v2 << 32));
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CC3C24()
{
  v1 = *(v0 + 24);
  MEMORY[0x1B2728D70](*(v0 + 8) | (*(v0 + 8) << 32));
  return MEMORY[0x1B2728D70](v1 | (v1 << 32));
}

uint64_t sub_1B0CC3C68()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v1 | (v1 << 32));
  MEMORY[0x1B2728D70](v2 | (v2 << 32));
  return sub_1B0E46CB8();
}

BOOL _s16IMAP2Persistence15MailboxToRenameV23__derived_struct_equalsySbAC_ACtFZ_0(_BOOL8 result, int a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  if (a2 != a6)
  {
    return 0;
  }

  v8 = *(result + 16);
  if (v8 != *(a5 + 16))
  {
    return 0;
  }

  if (v8)
  {
    v9 = result == a5;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    return a4 == a8 && (sub_1B04520BC(a3, a7) & 1) != 0;
  }

  v10 = (result + 32);
  v11 = (a5 + 32);
  while (v8)
  {
    if (*v10 != *v11)
    {
      return 0;
    }

    ++v10;
    ++v11;
    if (!--v8)
    {
      return a4 == a8 && (sub_1B04520BC(a3, a7) & 1) != 0;
    }
  }

  __break(1u);
  return result;
}

void _s16IMAP2Persistence5EventO6UpdateO21__derived_enum_equalsySbAE_AEtFZ_0(unint64_t a1, unint64_t a2)
{
  v221 = a2;
  v217 = sub_1B0E43108();
  v215 = *(v217 - 8);
  v3 = *(v215 + 64);
  MEMORY[0x1EEE9AC00](v217);
  v212 = &v189 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1720, &qword_1B0E99908);
  v5 = *(*(v214 - 8) + 64);
  MEMORY[0x1EEE9AC00](v214);
  v216 = &v189 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v213 = &v189 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v218 = &v189 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v219 = &v189 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v189 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v220 = &v189 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v189 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v189 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v189 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v189 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v189 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v189 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v189 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v189 - v43;
  switch((a1 >> 59) & 0x1E | (a1 >> 2) & 1)
  {
    case 1uLL:
      if (((v221 >> 59) & 0x1E | (v221 >> 2) & 1) == 1 && *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10) == *((v221 & 0xFFFFFFFFFFFFFFBLL) + 0x10))
      {
        v129 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v130 = *((v221 & 0xFFFFFFFFFFFFFFBLL) + 0x18);

        sub_1B0CCAE6C(v129, v130);
      }

      return;
    case 2uLL:
      if (((v221 >> 59) & 0x1E | (v221 >> 2) & 1) != 2 || *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10) != *((v221 & 0xFFFFFFFFFFFFFFBLL) + 0x10))
      {
        return;
      }

      v79 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v80 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v81 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      v82 = *((v221 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v83 = *((v221 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v84 = *((v221 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      switch(v79)
      {
        case 2:
          if (v82 != 2)
          {
            return;
          }

          break;
        case 3:
          if (v82 != 3)
          {
            return;
          }

          break;
        case 4:
          if (v82 != 4)
          {
            return;
          }

          break;
        default:
          if (v82 - 2) < 3 || ((v82 ^ v79))
          {
            return;
          }

          break;
      }

      if (v80 && v83)
      {
        sub_1B03DDD84(v80, v83);
      }

      return;
    case 3uLL:
      if (((v221 >> 59) & 0x1E | (v221 >> 2) & 1) == 3 && *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10) == *((v221 & 0xFFFFFFFFFFFFFFBLL) + 0x10))
      {
        v124 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x14) ^ *((v221 & 0xFFFFFFFFFFFFFFBLL) + 0x14) ^ 1;
      }

      return;
    case 4uLL:
      if (((v221 >> 59) & 0x1E | (v221 >> 2) & 1) == 4)
      {
        v62 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v63 = *((v221 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

        sub_1B0CCCB7C(v62, v63);
      }

      return;
    case 5uLL:
      if (((v221 >> 59) & 0x1E | (v221 >> 2) & 1) == 5)
      {
        v143 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v144 = *((v221 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        if (sub_1B03DDD84(*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10), *((v221 & 0xFFFFFFFFFFFFFFBLL) + 0x10)))
        {
          sub_1B0CCDE80(v143, v144);
        }
      }

      return;
    case 6uLL:
      if (((v221 >> 59) & 0x1E | (v221 >> 2) & 1) == 6 && *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) == *((v221 & 0xFFFFFFFFFFFFFFBLL) + 0x18))
      {
        _s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10), *((v221 & 0xFFFFFFFFFFFFFFBLL) + 0x10));
      }

      return;
    case 7uLL:
      v125 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v223[0] = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v223[1] = v125;
      v126 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x40);
      v223[2] = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      v223[3] = v126;
      if (((v221 >> 59) & 0x1E | (v221 >> 2) & 1) == 7)
      {
        v127 = *((v221 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v224[0] = *((v221 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v224[1] = v127;
        v128 = *((v221 & 0xFFFFFFFFFFFFFFBLL) + 0x40);
        v224[2] = *((v221 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
        v224[3] = v128;
        sub_1B0A1C2CC(v224, v222);
        static PushRegistrationInfo.__derived_struct_equals(_:_:)(v223, v224);
        sub_1B0A1C37C(v224);
      }

      return;
    case 8uLL:
      if (((v221 >> 59) & 0x1E | (v221 >> 2) & 1) == 8 && *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) == *((v221 & 0xFFFFFFFFFFFFFFBLL) + 0x18))
      {
        v171 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v172 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x24);
        v173 = *((v221 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v174 = *((v221 & 0xFFFFFFFFFFFFFFBLL) + 0x24);
        _s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10), *((v221 & 0xFFFFFFFFFFFFFFBLL) + 0x10));
      }

      return;
    case 9uLL:
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3630, &unk_1B0EC2AE0);
      v71 = swift_projectBox();
      if (((v221 >> 59) & 0x1E | (v221 >> 2) & 1) == 9)
      {
        v72 = *(v70 + 64);
        v219 = *(v71 + v72);
        v73 = v71[1];
        v220 = *v71;
        v74 = *(v70 + 48);
        v75 = v71;
        v76 = swift_projectBox();
        v78 = *v76;
        v77 = v76[1];
        v221 = *(v76 + v72);
        sub_1B03B5C80(v75 + v74, v44, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        sub_1B03B5C80(v76 + v74, v41, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        if (v73 != v77 || (_s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(v220, v78) & 1) == 0)
        {
          v180 = &unk_1EB6E1AF0;
          v181 = &unk_1B0E9AF40;
          sub_1B0398EFC(v41, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          v177 = v44;
          goto LABEL_147;
        }

        sub_1B03D06F8();
        sub_1B0E46E08();
        sub_1B0398EFC(v41, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        sub_1B0398EFC(v44, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      }

      return;
    case 0xAuLL:
      v162 = swift_projectBox();
      if (((v221 >> 59) & 0x1E | (v221 >> 2) & 1) == 0xA)
      {
        v163 = v162[1];
        v218 = *v162;
        v219 = v163;
        v164 = v162;
        v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3628, &unk_1B0EA2080);
        v166 = *(v165 + 48);
        v167 = *(v165 + 64);
        v168 = swift_projectBox();
        v169 = v168[1];
        v221 = *v168;
        sub_1B03B5C80(v164 + v166, v38, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        sub_1B03B5C80(v164 + v167, v220, &unk_1EB6E26C0, &unk_1B0E9DE10);
        sub_1B03B5C80(v168 + v166, v35, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        sub_1B03B5C80(v168 + v167, v17, &unk_1EB6E26C0, &unk_1B0E9DE10);
        if (v219 != v169 || (_s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(v218, v221) & 1) == 0 || (sub_1B03D06F8(), (sub_1B0E46E08() & 1) == 0))
        {
          sub_1B0398EFC(v17, &unk_1EB6E26C0, &unk_1B0E9DE10);
          sub_1B0398EFC(v35, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          sub_1B0398EFC(v220, &unk_1EB6E26C0, &unk_1B0E9DE10);
          v177 = v38;
          v178 = &unk_1EB6E1AF0;
          v179 = &unk_1B0E9AF40;
          goto LABEL_148;
        }

        v170 = v220;
        sub_1B0E46E08();
        sub_1B0398EFC(v17, &unk_1EB6E26C0, &unk_1B0E9DE10);
        sub_1B0398EFC(v35, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        sub_1B0398EFC(v170, &unk_1EB6E26C0, &unk_1B0E9DE10);
        sub_1B0398EFC(v38, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      }

      return;
    case 0xBuLL:
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35F0, &unk_1B0EA2050);
      v54 = swift_projectBox();
      if (((v221 >> 59) & 0x1E | (v221 >> 2) & 1) == 0xB)
      {
        v55 = *(v53 + 64);
        v219 = *(v54 + v55);
        v56 = v54[1];
        v220 = *v54;
        v57 = *(v53 + 48);
        v58 = v54;
        v59 = swift_projectBox();
        v61 = *v59;
        v60 = v59[1];
        v221 = *(v59 + v55);
        sub_1B03B5C80(v58 + v57, v32, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        sub_1B03B5C80(v59 + v57, v29, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        if (v56 != v60 || (_s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(v220, v61) & 1) == 0)
        {
          sub_1B0398EFC(v29, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          v177 = v32;
          v178 = &unk_1EB6E1AF0;
          v179 = &unk_1B0E9AF40;
          goto LABEL_148;
        }

        sub_1B03D06F8();
        sub_1B0E46E08();
        sub_1B0398EFC(v29, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        sub_1B0398EFC(v32, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      }

      return;
    case 0xCuLL:
      if (((v221 >> 59) & 0x1E | (v221 >> 2) & 1) != 0xC)
      {
        return;
      }

      if (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) != *((v221 & 0xFFFFFFFFFFFFFFBLL) + 0x18))
      {
        return;
      }

      v64 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v65 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      v66 = *((v221 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v67 = *((v221 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      if ((_s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10), *((v221 & 0xFFFFFFFFFFFFFFBLL) + 0x10)) & 1) == 0)
      {
        return;
      }

      if (v64)
      {
        v68 = 6581810;
      }

      else
      {
        v68 = 7631665;
      }

      if (v66)
      {
        v69 = 6581810;
      }

      else
      {
        v69 = 7631665;
      }

      if (v68 == v69)
      {
        swift_bridgeObjectRelease_n();
      }

      else
      {
        v183 = sub_1B0E46A78();
        swift_bridgeObjectRelease_n();
        if ((v183 & 1) == 0)
        {
          return;
        }
      }

      sub_1B0CCCE50(v65, v67);
      return;
    case 0xDuLL:
      if (((v221 >> 59) & 0x1E | (v221 >> 2) & 1) != 0xD)
      {
        return;
      }

      if ((*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) | (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) << 32)) != (*((v221 & 0xFFFFFFFFFFFFFFBLL) + 0x18) | (*((v221 & 0xFFFFFFFFFFFFFFBLL) + 0x18) << 32)))
      {
        return;
      }

      v147 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v148 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x1C);
      v149 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v150 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      v151 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      v152 = *((v221 & 0xFFFFFFFFFFFFFFBLL) + 0x1C);
      v153 = *((v221 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v154 = *((v221 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      v155 = *((v221 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      if ((sub_1B04520BC(v147, *((v221 & 0xFFFFFFFFFFFFFFBLL) + 0x10)) & 1) == 0)
      {
        return;
      }

      if (v148)
      {
        v156 = 6581810;
      }

      else
      {
        v156 = 7631665;
      }

      if (v152)
      {
        v157 = 6581810;
      }

      else
      {
        v157 = 7631665;
      }

      if (v156 == v157)
      {
        swift_bridgeObjectRelease_n();
        if (v153 != v149)
        {
          return;
        }

        goto LABEL_165;
      }

      v184 = sub_1B0E46A78();
      swift_bridgeObjectRelease_n();
      if ((v184 & 1) != 0 && v153 == v149)
      {
LABEL_165:
        sub_1B0CCCF10(v150, v154);
        return;
      }

      return;
    case 0xEuLL:
      if (((v221 >> 59) & 0x1E | (v221 >> 2) & 1) == 0xE && (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) | (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) << 32)) == (*((v221 & 0xFFFFFFFFFFFFFFBLL) + 0x18) | (*((v221 & 0xFFFFFFFFFFFFFFBLL) + 0x18) << 32)))
      {
        v49 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v50 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
        v51 = *((v221 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v52 = *((v221 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
        if (sub_1B04520BC(*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10), *((v221 & 0xFFFFFFFFFFFFFFBLL) + 0x10)))
        {
          sub_1B0CCCFC8(v49, v51);
        }
      }

      return;
    case 0xFuLL:
      v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35E0, &unk_1B0EE3170);
      v86 = swift_projectBox();
      if (((v221 >> 59) & 0x1E | (v221 >> 2) & 1) != 0xF)
      {
        return;
      }

      v87 = *v86;
      v88 = *(v86 + 24);
      v210 = *(v86 + 16);
      v209 = v88;
      v192 = *(v86 + 32);
      v191 = *(v86 + 33);
      v198 = *(v86 + 34);
      v201 = *(v86 + 35);
      v202 = *(v86 + 36);
      v204 = *(v86 + 37);
      v205 = *(v86 + 38);
      v207 = *(v86 + 39);
      v208 = *(v86 + 40);
      v89 = *(v85 + 96);
      v90 = *(v86 + v89 + 8);
      v190 = *(v86 + v89);
      v189 = v90;
      v91 = *(v86 + 8);
      v92 = *(v85 + 80);
      v93 = v86;
      v94 = swift_projectBox();
      v95 = *v94;
      v96 = *(v94 + 8);
      v97 = *(v94 + 24);
      v211 = *(v94 + 16);
      v194 = *(v94 + 32);
      v193 = *(v94 + 33);
      v195 = *(v94 + 34);
      v196 = *(v94 + 35);
      v197 = *(v94 + 36);
      v199 = *(v94 + 37);
      v200 = *(v94 + 38);
      v203 = *(v94 + 39);
      v206 = *(v94 + 40);
      v98 = *(v94 + v89 + 8);
      v220 = *(v94 + v89);
      v221 = v98;
      v99 = v93 + v92;
      v100 = v219;
      sub_1B03B5C80(v99, v219, &unk_1EB6E2990, &qword_1B0E9B060);
      v101 = v94 + v92;
      v102 = v218;
      sub_1B03B5C80(v101, v218, &unk_1EB6E2990, &qword_1B0E9B060);
      if ((v91 | (v91 << 32)) != (v96 | (v96 << 32)) || (sub_1B04520BC(v87, v95) & 1) == 0)
      {
        goto LABEL_146;
      }

      v103 = v211;
      v104 = v97;
      sub_1B03B2000(v211, v97);
      v105 = v220;
      v106 = v221;
      sub_1B03B2000(v220, v221);
      if ((sub_1B0AB8858(v210, v209, v103, v97) & 1) == 0)
      {
        goto LABEL_144;
      }

      v107 = 256;
      if (v191)
      {
        v108 = 256;
      }

      else
      {
        v108 = 0;
      }

      if (v198)
      {
        v109 = 0x10000;
      }

      else
      {
        v109 = 0;
      }

      if (v201)
      {
        v110 = 0x1000000;
      }

      else
      {
        v110 = 0;
      }

      if (v202)
      {
        v111 = 0x100000000;
      }

      else
      {
        v111 = 0;
      }

      if (v204)
      {
        v112 = 0x10000000000;
      }

      else
      {
        v112 = 0;
      }

      v113 = v192 & 1 | (v205 << 48) | v108 | v109 | v110 | v111 | v112 | (v207 << 56);
      if ((v193 & 1) == 0)
      {
        v107 = 0;
      }

      v114 = (v195 & 1) != 0 ? 0x10000 : 0;
      v115 = (v196 & 1) != 0 ? 0x1000000 : 0;
      v116 = (v197 & 1) != 0 ? 0x100000000 : 0;
      v117 = (v199 & 1) != 0 ? 0x10000000000 : 0;
      if ((sub_1B0CC9968(v113, v208 & 1, v194 & 1 | (v200 << 48) | v107 | v114 | v115 | v116 | v117 | (v203 << 56), v206 & 1) & 1) == 0)
      {
LABEL_144:
        v182 = v105;
LABEL_145:
        sub_1B0391D50(v182, v106);
        sub_1B0391D50(v103, v104);
LABEL_146:
        v180 = &unk_1EB6E2990;
        v181 = &qword_1B0E9B060;
        sub_1B0398EFC(v102, &unk_1EB6E2990, &qword_1B0E9B060);
        v177 = v100;
        goto LABEL_147;
      }

      v118 = *(v214 + 48);
      v119 = v216;
      sub_1B03B5C80(v100, v216, &unk_1EB6E2990, &qword_1B0E9B060);
      sub_1B03B5C80(v102, v119 + v118, &unk_1EB6E2990, &qword_1B0E9B060);
      v120 = v215;
      v121 = *(v215 + 48);
      v122 = v217;
      if (v121(v119, 1, v217) == 1)
      {
        if (v121(v119 + v118, 1, v122) == 1)
        {
          sub_1B0398EFC(v119, &unk_1EB6E2990, &qword_1B0E9B060);
          v106 = v221;
          v123 = v220;
          goto LABEL_172;
        }

        sub_1B0391D50(v220, v221);
        sub_1B0391D50(v103, v104);
        goto LABEL_170;
      }

      v185 = v213;
      sub_1B03B5C80(v119, v213, &unk_1EB6E2990, &qword_1B0E9B060);
      if (v121(v119 + v118, 1, v122) == 1)
      {
        sub_1B0391D50(v220, v221);
        sub_1B0391D50(v211, v104);
        (*(v120 + 8))(v185, v122);
LABEL_170:
        sub_1B0398EFC(v119, &qword_1EB6E1720, &qword_1B0E99908);
        goto LABEL_146;
      }

      v186 = v212;
      (*(v120 + 32))(v212, v119 + v118, v122);
      sub_1B06BC63C();
      v187 = sub_1B0E44A28();
      v188 = *(v120 + 8);
      v188(v186, v122);
      v188(v185, v122);
      sub_1B0398EFC(v119, &unk_1EB6E2990, &qword_1B0E9B060);
      v103 = v211;
      v106 = v221;
      v123 = v220;
      if ((v187 & 1) == 0)
      {
        v182 = v220;
        goto LABEL_145;
      }

LABEL_172:
      sub_1B0AB8858(v190, v189, v123, v106);
      sub_1B0391D50(v123, v106);
      sub_1B0391D50(v103, v104);
      v138 = &unk_1EB6E2990;
      v139 = &qword_1B0E9B060;
      sub_1B0398EFC(v102, &unk_1EB6E2990, &qword_1B0E9B060);
      v140 = v100;
LABEL_98:
      sub_1B0398EFC(v140, v138, v139);
      return;
    case 0x10uLL:
      if (((v221 >> 59) & 0x1E | (v221 >> 2) & 1) == 0x10 && *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) == *((v221 & 0xFFFFFFFFFFFFFFBLL) + 0x18))
      {
        v45 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v46 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
        v47 = *((v221 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v48 = *((v221 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
        if (_s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10), *((v221 & 0xFFFFFFFFFFFFFFBLL) + 0x10)))
        {
          sub_1B0CCD6F8(v45, v47);
        }
      }

      return;
    case 0x11uLL:
      v131 = swift_projectBox();
      if (((v221 >> 59) & 0x1E | (v221 >> 2) & 1) != 0x11)
      {
        return;
      }

      v132 = v131[1];
      v220 = *v131;
      v133 = v131;
      v134 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35A8, &unk_1B0ECD730) + 48);
      v135 = swift_projectBox();
      v137 = *v135;
      v136 = v135[1];
      sub_1B03B5C80(v133 + v134, v26, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B03B5C80(v135 + v134, v23, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      if (v132 == v136 && (_s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(v220, v137) & 1) != 0)
      {
        sub_1B03D06F8();
        sub_1B0E46E08();
        v138 = &unk_1EB6E1AF0;
        v139 = &unk_1B0E9AF40;
        sub_1B0398EFC(v23, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v140 = v26;
        goto LABEL_98;
      }

      v180 = &unk_1EB6E1AF0;
      v181 = &unk_1B0E9AF40;
      sub_1B0398EFC(v23, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v177 = v26;
LABEL_147:
      v178 = v180;
      v179 = v181;
LABEL_148:
      sub_1B0398EFC(v177, v178, v179);
      return;
    case 0x12uLL:
      if (((v221 >> 59) & 0x1E | (v221 >> 2) & 1) == 0x12 && (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) | (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) << 32)) == (*((v221 & 0xFFFFFFFFFFFFFFBLL) + 0x18) | (*((v221 & 0xFFFFFFFFFFFFFFBLL) + 0x18) << 32)))
      {
        v158 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v159 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
        v160 = *((v221 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v161 = *((v221 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
        if (sub_1B04520BC(*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10), *((v221 & 0xFFFFFFFFFFFFFFBLL) + 0x10)))
        {
          sub_1B0CCD8D8(v158, v160);
        }
      }

      return;
    case 0x13uLL:
      if (((v221 >> 59) & 0x1E | (v221 >> 2) & 1) != 0x13)
      {
        return;
      }

      v175 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v176 = *((v221 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0B63A04(v175, v176);
      goto LABEL_139;
    case 0x14uLL:
      if (((v221 >> 59) & 0x1E | (v221 >> 2) & 1) != 0x14)
      {
        return;
      }

      v141 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v142 = *((v221 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0B63AFC(v141, v142);
LABEL_139:

      return;
    case 0x15uLL:
      if (((v221 >> 59) & 0x1E | (v221 >> 2) & 1) == 0x15 && (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) | (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) << 32)) == (*((v221 & 0xFFFFFFFFFFFFFFBLL) + 0x18) | (*((v221 & 0xFFFFFFFFFFFFFFBLL) + 0x18) << 32)))
      {
        v145 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v146 = *((v221 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        if (sub_1B04520BC(*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10), *((v221 & 0xFFFFFFFFFFFFFFBLL) + 0x10)))
        {

          sub_1B03D3304(v145, v146);
        }
      }

      return;
    case 0x16uLL:
      return;
    default:
      if (!((v221 >> 59) & 0x1E | (v221 >> 2) & 1) && *(a1 + 16) == *(v221 + 16) && ((*(a1 + 17) ^ *(v221 + 17)) & 1) == 0 && ((*(a1 + 18) ^ *(v221 + 18)) & 1) == 0 && *(a1 + 24) == *(v221 + 24) && *(a1 + 32) == *(v221 + 32))
      {
        *(a1 + 40);
        *(v221 + 40);
      }

      return;
  }
}

unint64_t sub_1B0CC56BC()
{
  result = qword_1EB6E6170;
  if (!qword_1EB6E6170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6170);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16IMAP2Persistence5EventO6UpdateO(void *a1)
{
  if (*a1 >> 60 <= 0xAuLL)
  {
    return (*a1 >> 59) & 0x1E | (*a1 >> 2) & 1;
  }

  else
  {
    return (*a1 >> 3) + 22;
  }
}

uint64_t sub_1B0CC5754(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x6A && *(a1 + 8))
  {
    return (*a1 + 106);
  }

  v3 = ((((*a1 >> 57) & 0x78 | *a1 & 7) >> 2) & 0xFFFFFF9F | (32 * (*a1 & 3))) ^ 0x7F;
  if (v3 >= 0x69)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B0CC57B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x69)
  {
    *result = a2 - 106;
    if (a3 >= 0x6A)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x6A)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 5) & 3 | (4 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_1B0CC5814(unint64_t *result, uint64_t a2)
{
  if (a2 < 0x16)
  {
    *result = ((a2 << 59) | (4 * a2)) & 0xF000000000000007 | *result & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    *result = (8 * (a2 - 22)) | 0xB000000000000000;
  }

  return result;
}

uint64_t sub_1B0CC5870(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 28))
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

uint64_t sub_1B0CC58B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 28) = 1;
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

    *(result + 28) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static FlagsWithModifications.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  *&v11 = a2;
  WORD4(v11) = a3;
  v6 = *(&v11 + 1);
  *&v11 = a5;
  BYTE8(v11) = a6;
  v7 = *(&v11 + 1);
  LOBYTE(v11) = a2 & 1;
  *(&v11 + 1) = v6;
  v8 = v11;
  v9 = WORD4(v11);
  LOBYTE(v11) = a5 & 1;
  *(&v11 + 1) = v7;
  BYTE9(v11) = HIBYTE(a6);
  return sub_1B0CC99DC(a1 & 0xFFFF010101010101, v8, v9, a4 & 0xFFFF010101010101, v11, WORD4(v11));
}

uint64_t Flags.hash(into:)(uint64_t a1, unint64_t a2)
{
  v2 = BYTE6(a2);
  v3 = HIBYTE(a2);
  sub_1B0E46C68();
  sub_1B0E46C68();
  sub_1B0E46C68();
  sub_1B0E46C68();
  sub_1B0E46C68();
  sub_1B0E46C68();
  MEMORY[0x1B2728D70](v2);
  MEMORY[0x1B2728D70](v3);
  return sub_1B0E46C68();
}

uint64_t Flags.hashValue.getter(uint64_t a1)
{
  sub_1B0E46C28();
  Flags.hash(into:)(v3, a1 & 0xFFFF010101010101);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CC5CFC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  sub_1B0E46C28();
  v10 = 256;
  if ((v2 & 1) == 0)
  {
    v10 = 0;
  }

  v11 = 0x10000;
  if ((v3 & 1) == 0)
  {
    v11 = 0;
  }

  v12 = 0x1000000;
  if ((v4 & 1) == 0)
  {
    v12 = 0;
  }

  v13 = 0x100000000;
  if ((v5 & 1) == 0)
  {
    v13 = 0;
  }

  v14 = 0x10000000000;
  if ((v6 & 1) == 0)
  {
    v14 = 0;
  }

  Flags.hash(into:)(v16, v1 & 1 | (v7 << 48) | v10 | v11 | v12 | v13 | v14 | (v8 << 56));
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CC5DE0(uint64_t a1)
{
  v2 = 256;
  if ((v1[1] & 1) == 0)
  {
    v2 = 0;
  }

  v3 = 0x10000;
  if ((v1[2] & 1) == 0)
  {
    v3 = 0;
  }

  v4 = 0x1000000;
  if ((v1[3] & 1) == 0)
  {
    v4 = 0;
  }

  v5 = 0x100000000;
  if ((v1[4] & 1) == 0)
  {
    v5 = 0;
  }

  v6 = 0x10000000000;
  if ((v1[5] & 1) == 0)
  {
    v6 = 0;
  }

  v7 = v1[8];
  return Flags.hash(into:)(a1, *v1 & 1 | (v1[6] << 48) | v2 | v3 | v4 | v5 | v6 | (v1[7] << 56));
}

uint64_t sub_1B0CC5E68()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  sub_1B0E46C28();
  v10 = 256;
  if ((v2 & 1) == 0)
  {
    v10 = 0;
  }

  v11 = 0x10000;
  if ((v3 & 1) == 0)
  {
    v11 = 0;
  }

  v12 = 0x1000000;
  if ((v4 & 1) == 0)
  {
    v12 = 0;
  }

  v13 = 0x100000000;
  if ((v5 & 1) == 0)
  {
    v13 = 0;
  }

  v14 = 0x10000000000;
  if ((v6 & 1) == 0)
  {
    v14 = 0;
  }

  Flags.hash(into:)(v16, v1 & 1 | (v7 << 48) | v10 | v11 | v12 | v13 | v14 | (v8 << 56));
  return sub_1B0E46CB8();
}

unint64_t sub_1B0CC5F48(_BYTE *a1, _BYTE *a2)
{
  v3 = 256;
  if (a1[1])
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  v5 = 0x10000;
  if (a1[2])
  {
    v6 = 0x10000;
  }

  else
  {
    v6 = 0;
  }

  v7 = 0x1000000;
  if (a1[3])
  {
    v8 = 0x1000000;
  }

  else
  {
    v8 = 0;
  }

  v9 = 0x100000000;
  if (a1[4])
  {
    v10 = 0x100000000;
  }

  else
  {
    v10 = 0;
  }

  v11 = 0x10000000000;
  if (a1[5])
  {
    v12 = 0x10000000000;
  }

  else
  {
    v12 = 0;
  }

  v13 = *a1 & 1 | (a1[6] << 48) | v4 | v6 | v8 | v10 | v12 | (a1[7] << 56);
  if ((a2[1] & 1) == 0)
  {
    v3 = 0;
  }

  if ((a2[2] & 1) == 0)
  {
    v5 = 0;
  }

  if ((a2[3] & 1) == 0)
  {
    v7 = 0;
  }

  if ((a2[4] & 1) == 0)
  {
    v9 = 0;
  }

  if ((a2[5] & 1) == 0)
  {
    v11 = 0;
  }

  v14 = *a2 & 1 | (a2[6] << 48) | v3 | v5 | v7 | v9 | v11 | (a2[7] << 56);
  v15 = a2[8];
  v16 = a1[8] & 1;
  v17 = *a1 & 1 | (a1[6] << 48) | v4 | v6 | v8 | v10 | v12 | (a1[7] << 56);

  return sub_1B0CC9968(v17, v16, v14, v15 & 1);
}

uint64_t Flags.description.getter(unint64_t a1)
{
  v1 = HIWORD(a1);
  v39 = HIBYTE(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6178, &qword_1B0EE31E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B0EC42E0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x646165726E75;
  *(inited + 48) = 0xE600000000000000;
  v3 = inited + 48;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x646574656C6564;
  *(inited + 72) = 0xE700000000000000;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x6465726577736E61;
  *(inited + 96) = 0xE800000000000000;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x7466617264;
  *(inited + 120) = 0xE500000000000000;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x6564726177726F66;
  *(inited + 144) = 0xE900000000000064;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x7463657269646572;
  *(inited + 168) = 0xEA00000000006465;
  v4 = 0;
  *(inited + 176) = swift_getKeyPath();
  strcpy((inited + 184), "iCloudCleanup");
  *(inited + 198) = -4864;
  v5 = MEMORY[0x1E69E7CC0];
  do
  {
    v38 = v5;
    v6 = 7;
    if (v4 > 7)
    {
      v6 = v4;
    }

    v5 = -v6;
    v7 = (v3 + 24 * v4++);
    while (1)
    {
      if (&v5[v4] == 1)
      {
        __break(1u);
LABEL_71:
        v5 = sub_1B0AFF0E8(0, *(v5 + 2) + 1, 1, v5);
LABEL_17:
        v14 = v39;
        v16 = *(v5 + 2);
        v15 = *(v5 + 3);
        v17 = v16 + 1;
        if (v16 >= v15 >> 1)
        {
          v5 = sub_1B0AFF0E8((v15 > 1), v16 + 1, 1, v5);
        }

        v18 = 0xE400000000000000;
        v19 = 1802401130;
        goto LABEL_33;
      }

      v9 = *(v7 - 1);
      v8 = *v7;
      v10 = *(v7 - 2);

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      swift_getAtKeyPath();

      if (v40)
      {
        break;
      }

      ++v4;
      v7 += 3;
      if (v4 == 8)
      {
        v5 = v38;
        goto LABEL_14;
      }
    }

    v5 = v38;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1B0AFF0E8(0, *(v38 + 2) + 1, 1, v38);
    }

    v12 = *(v5 + 2);
    v11 = *(v5 + 3);
    if (v12 >= v11 >> 1)
    {
      v5 = sub_1B0AFF0E8((v11 > 1), v12 + 1, 1, v5);
    }

    *(v5 + 2) = v12 + 1;
    v13 = &v5[16 * v12];
    *(v13 + 4) = v9;
    *(v13 + 5) = v8;
    v3 = inited + 48;
  }

  while (v4 != 7);
LABEL_14:

  if (!v1)
  {
    v14 = v39;
    if (v39 <= 3)
    {
      goto LABEL_34;
    }

LABEL_21:
    if (v14 > 5)
    {
      if (v14 == 6)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1B0AFF0E8(0, *(v5 + 2) + 1, 1, v5);
        }

        v21 = *(v5 + 2);
        v28 = *(v5 + 3);
        v22 = v21 + 1;
        if (v21 >= v28 >> 1)
        {
          v5 = sub_1B0AFF0E8((v28 > 1), v21 + 1, 1, v5);
        }

        v23 = 0xE600000000000000;
        v24 = 0x656C70727570;
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1B0AFF0E8(0, *(v5 + 2) + 1, 1, v5);
        }

        v21 = *(v5 + 2);
        v31 = *(v5 + 3);
        v22 = v21 + 1;
        if (v21 >= v31 >> 1)
        {
          v5 = sub_1B0AFF0E8((v31 > 1), v21 + 1, 1, v5);
        }

        v23 = 0xE400000000000000;
        v24 = 2036429415;
      }
    }

    else if (v14 == 4)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1B0AFF0E8(0, *(v5 + 2) + 1, 1, v5);
      }

      v21 = *(v5 + 2);
      v20 = *(v5 + 3);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v5 = sub_1B0AFF0E8((v20 > 1), v21 + 1, 1, v5);
      }

      v23 = 0xE500000000000000;
      v24 = 0x6E65657267;
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1B0AFF0E8(0, *(v5 + 2) + 1, 1, v5);
      }

      v21 = *(v5 + 2);
      v30 = *(v5 + 3);
      v22 = v21 + 1;
      if (v21 >= v30 >> 1)
      {
        v5 = sub_1B0AFF0E8((v30 > 1), v21 + 1, 1, v5);
      }

      v23 = 0xE400000000000000;
      v24 = 1702194274;
    }

    goto LABEL_68;
  }

  if (v1 == 1)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_17;
    }

    goto LABEL_71;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1B0AFF0E8(0, *(v5 + 2) + 1, 1, v5);
  }

  v14 = v39;
  v16 = *(v5 + 2);
  v25 = *(v5 + 3);
  v17 = v16 + 1;
  if (v16 >= v25 >> 1)
  {
    v5 = sub_1B0AFF0E8((v25 > 1), v16 + 1, 1, v5);
  }

  v18 = 0xE700000000000000;
  v19 = 0x6B6E754A746F6ELL;
LABEL_33:
  *(v5 + 2) = v17;
  v26 = &v5[16 * v16];
  *(v26 + 4) = v19;
  *(v26 + 5) = v18;
  if (v14 > 3)
  {
    goto LABEL_21;
  }

LABEL_34:
  if (v14 > 1)
  {
    if (v14 == 2)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1B0AFF0E8(0, *(v5 + 2) + 1, 1, v5);
      }

      v21 = *(v5 + 2);
      v29 = *(v5 + 3);
      v22 = v21 + 1;
      if (v21 >= v29 >> 1)
      {
        v5 = sub_1B0AFF0E8((v29 > 1), v21 + 1, 1, v5);
      }

      v23 = 0xE600000000000000;
      v24 = 0x65676E61726FLL;
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1B0AFF0E8(0, *(v5 + 2) + 1, 1, v5);
      }

      v21 = *(v5 + 2);
      v32 = *(v5 + 3);
      v22 = v21 + 1;
      if (v21 >= v32 >> 1)
      {
        v5 = sub_1B0AFF0E8((v32 > 1), v21 + 1, 1, v5);
      }

      v23 = 0xE600000000000000;
      v24 = 0x776F6C6C6579;
    }
  }

  else
  {
    if (!v14)
    {
      goto LABEL_69;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1B0AFF0E8(0, *(v5 + 2) + 1, 1, v5);
    }

    v21 = *(v5 + 2);
    v27 = *(v5 + 3);
    v22 = v21 + 1;
    if (v21 >= v27 >> 1)
    {
      v5 = sub_1B0AFF0E8((v27 > 1), v21 + 1, 1, v5);
    }

    v23 = 0xE300000000000000;
    v24 = 6579570;
  }

LABEL_68:
  *(v5 + 2) = v22;
  v33 = &v5[16 * v21];
  *(v33 + 4) = v24;
  *(v33 + 5) = v23;
LABEL_69:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B039E3F8(&qword_1EB6DB070, &qword_1EB6E2A70, &qword_1B0E9B5F0);
  v34 = sub_1B0E448E8();
  v36 = v35;

  MEMORY[0x1B2726E80](v34, v36);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  MEMORY[0x1B2726E80](41, 0xE100000000000000);

  return 0x287367616C46;
}

uint64_t sub_1B0CC6850()
{
  v1 = 256;
  if ((v0[1] & 1) == 0)
  {
    v1 = 0;
  }

  v2 = 0x10000;
  if ((v0[2] & 1) == 0)
  {
    v2 = 0;
  }

  v3 = 0x1000000;
  if ((v0[3] & 1) == 0)
  {
    v3 = 0;
  }

  v4 = 0x100000000;
  if ((v0[4] & 1) == 0)
  {
    v4 = 0;
  }

  v5 = 0x10000000000;
  if ((v0[5] & 1) == 0)
  {
    v5 = 0;
  }

  v6 = v0[8];
  return Flags.description.getter(*v0 & 1 | (v0[6] << 48) | v1 | v2 | v3 | v4 | v5 | (v0[7] << 56));
}

uint64_t FlagsWithModifications.flags.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2;
  return result;
}

uint64_t FlagsWithModifications.originalFlags.getter(uint64_t a1, uint64_t a2, char a3)
{
  *&v4 = a2;
  BYTE8(v4) = a3;
  return *(&v4 + 1);
}

uint64_t FlagsWithModifications.hasLocalChanges.getter(unint64_t a1, unint64_t a2, __int16 a3)
{
  *v5 = a2;
  v5[8] = a3;
  if (BYTE1(a2) == 2)
  {
    LOBYTE(v3) = a1 != 2;
  }

  else if (a1 == 2 || (((a2 >> 8) ^ a1) & 1) != 0)
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = (*&v5[1] >> 8) & 1 ^ (a1 >> 8) & 1 | (*&v5[1] >> 16) & 1 ^ (a1 >> 16) & 1 | (*&v5[1] >> 24) & 1 ^ (a1 >> 24) & 1 | v5[5] & 1 ^ BYTE4(a1) & 1 | (*&v5[1] >> 40) & 1 ^ (a1 >> 40) & 1 | ((*&v5[1] ^ a1) >> 48 != 0) | a2 ^ ((a3 & 0x100) >> 8);
  }

  return v3 & 1;
}

uint64_t FlagsWithModifications.locallyModified.getter(unint64_t a1, uint64_t a2, __int16 a3)
{
  *v10 = a2;
  *&v10[8] = a3;
  v3 = *&v10[1];
  *v10 = MEMORY[0x1E69E7CD0];
  if (v3 == 2)
  {

    return sub_1B0CC9AD0(&unk_1F27268C8);
  }

  else
  {
    v6 = a2;
    v8 = v3 ^ a1;
    if ((v3 ^ a1))
    {
      sub_1B0CC90CC(&v9, 0);
    }

    if (((v3 & 0x100) == 0) == ((a1 >> 8) & 1))
    {
      sub_1B0CC90CC(&v9, 1);
    }

    if (((v3 & 0x10000) == 0) == ((a1 >> 16) & 1))
    {
      sub_1B0CC90CC(&v9, 2);
    }

    if (((v3 & 0x1000000) == 0) == ((a1 >> 24) & 1))
    {
      sub_1B0CC90CC(&v9, 3);
    }

    if (((v3 & 0x100000000) == 0) == (BYTE4(a1) & 1))
    {
      sub_1B0CC90CC(&v9, 4);
    }

    if (((v3 & 0x10000000000) == 0) == ((a1 >> 40) & 1))
    {
      sub_1B0CC90CC(&v9, 5);
    }

    if ((v8 & 0xFF000000000000) != 0)
    {
      sub_1B0CC90CC(&v9, 6);
    }

    if (HIBYTE(v8))
    {
      sub_1B0CC90CC(&v9, 7);
    }

    if ((v6 & 1) != (a3 & 0x100) >> 8)
    {
      sub_1B0CC90CC(&v9, 8);
    }

    return *v10;
  }
}

uint64_t FlagsWithModifications.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *v6 = a3;
  v6[8] = a4;
  Flags.hash(into:)(a1, a2 & 0xFFFF010101010101);
  if (v6[1] == 2)
  {
    return sub_1B0E46C68();
  }

  sub_1B0E46C68();

  return Flags.hash(into:)(a1, *&v6[1] & 0xFFFF010101010101);
}

uint64_t FlagsWithModifications.hashValue.getter(uint64_t a1, uint64_t a2, __int16 a3)
{
  *v6 = a2;
  *&v6[8] = a3;
  v4 = *&v6[1];
  sub_1B0E46C28();
  Flags.hash(into:)(v6, a1 & 0xFFFF010101010101);
  sub_1B0E46C68();
  if (v4 != 2)
  {
    Flags.hash(into:)(v6, v4 & 0xFFFF010101010101);
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0CC6D14()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[9];
  v22 = v0[10];
  v23 = v0[11];
  v24 = v0[12];
  v25 = v0[13];
  v26 = v0[14];
  v27 = v0[15];
  v28 = v0[16];
  v29 = v0[17];
  v9 = v0[7];
  v10 = v0[8];
  sub_1B0E46C28();
  v11 = 256;
  if ((v2 & 1) == 0)
  {
    v11 = 0;
  }

  v12 = 0x10000;
  if ((v3 & 1) == 0)
  {
    v12 = 0;
  }

  v13 = 0x1000000;
  if ((v4 & 1) == 0)
  {
    v13 = 0;
  }

  if (v5)
  {
    v14 = 0x100000000;
  }

  else
  {
    v14 = 0;
  }

  if (v6)
  {
    v15 = 0x10000000000;
  }

  else
  {
    v15 = 0;
  }

  Flags.hash(into:)(v30, v1 & 1 | (v7 << 48) | v11 | v12 | v13 | v14 | v15 | (v9 << 56));
  if (v8 == 2)
  {
    sub_1B0E46C68();
  }

  else
  {
    sub_1B0E46C68();
    v16 = 256;
    if ((v22 & 1) == 0)
    {
      v16 = 0;
    }

    v17 = 0x10000;
    if ((v23 & 1) == 0)
    {
      v17 = 0;
    }

    v18 = 0x1000000;
    if ((v24 & 1) == 0)
    {
      v18 = 0;
    }

    if (v25)
    {
      v19 = 0x100000000;
    }

    else
    {
      v19 = 0;
    }

    if (v26)
    {
      v20 = 0x10000000000;
    }

    else
    {
      v20 = 0;
    }

    Flags.hash(into:)(v30, v8 & 1 | (v27 << 48) | v16 | v17 | v18 | v19 | v20 | (v28 << 56));
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0CC6ECC(uint64_t a1)
{
  v3 = v1[9];
  v4 = v1[10];
  v5 = v1[11];
  v6 = v1[12];
  v7 = v1[13];
  v8 = v1[14];
  v21 = v1[15];
  v22 = v1[16];
  v23 = v1[17];
  v9 = 256;
  if ((v1[1] & 1) == 0)
  {
    v9 = 0;
  }

  v10 = 0x10000;
  if ((v1[2] & 1) == 0)
  {
    v10 = 0;
  }

  v11 = 0x1000000;
  if ((v1[3] & 1) == 0)
  {
    v11 = 0;
  }

  if (v1[4])
  {
    v12 = 0x100000000;
  }

  else
  {
    v12 = 0;
  }

  if (v1[5])
  {
    v13 = 0x10000000000;
  }

  else
  {
    v13 = 0;
  }

  v14 = v1[8];
  Flags.hash(into:)(a1, *v1 & 1 | (v1[6] << 48) | v9 | v10 | v11 | v12 | v13 | (v1[7] << 56));
  if (v3 == 2)
  {
    return sub_1B0E46C68();
  }

  sub_1B0E46C68();
  v16 = 256;
  if ((v4 & 1) == 0)
  {
    v16 = 0;
  }

  v17 = 0x10000;
  if ((v5 & 1) == 0)
  {
    v17 = 0;
  }

  v18 = 0x1000000;
  if ((v6 & 1) == 0)
  {
    v18 = 0;
  }

  if (v7)
  {
    v19 = 0x100000000;
  }

  else
  {
    v19 = 0;
  }

  if (v8)
  {
    v20 = 0x10000000000;
  }

  else
  {
    v20 = 0;
  }

  return Flags.hash(into:)(a1, v3 & 1 | (v21 << 48) | v16 | v17 | v18 | v19 | v20 | (v22 << 56));
}

uint64_t sub_1B0CC7084()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[9];
  v22 = v0[10];
  v23 = v0[11];
  v24 = v0[12];
  v25 = v0[13];
  v26 = v0[14];
  v27 = v0[15];
  v28 = v0[16];
  v29 = v0[17];
  v9 = v0[7];
  v10 = v0[8];
  sub_1B0E46C28();
  v11 = 256;
  if ((v2 & 1) == 0)
  {
    v11 = 0;
  }

  v12 = 0x10000;
  if ((v3 & 1) == 0)
  {
    v12 = 0;
  }

  v13 = 0x1000000;
  if ((v4 & 1) == 0)
  {
    v13 = 0;
  }

  if (v5)
  {
    v14 = 0x100000000;
  }

  else
  {
    v14 = 0;
  }

  if (v6)
  {
    v15 = 0x10000000000;
  }

  else
  {
    v15 = 0;
  }

  Flags.hash(into:)(v30, v1 & 1 | (v7 << 48) | v11 | v12 | v13 | v14 | v15 | (v9 << 56));
  if (v8 == 2)
  {
    sub_1B0E46C68();
  }

  else
  {
    sub_1B0E46C68();
    v16 = 256;
    if ((v22 & 1) == 0)
    {
      v16 = 0;
    }

    v17 = 0x10000;
    if ((v23 & 1) == 0)
    {
      v17 = 0;
    }

    v18 = 0x1000000;
    if ((v24 & 1) == 0)
    {
      v18 = 0;
    }

    if (v25)
    {
      v19 = 0x100000000;
    }

    else
    {
      v19 = 0;
    }

    if (v26)
    {
      v20 = 0x10000000000;
    }

    else
    {
      v20 = 0;
    }

    Flags.hash(into:)(v30, v8 & 1 | (v27 << 48) | v16 | v17 | v18 | v19 | v20 | (v28 << 56));
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0CC7238(char *a1, char *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[8];
  v11 = *(a1 + 9);
  v12 = a1[17];
  v13 = *a2;
  v14 = a2[1];
  v15 = a2[2];
  v16 = a2[3];
  v17 = a2[4];
  v18 = a2[5];
  v19 = a2[6];
  v20 = a2[8];
  v21 = *(a2 + 9);
  v22 = a2[17];
  v23 = a1[7];
  v24 = a2[7];
  v25 = v3 & 1;
  v26 = (v4 & 1) == 0;
  v27 = 256;
  if (v26)
  {
    v28 = 0;
  }

  else
  {
    v28 = 256;
  }

  v26 = (v5 & 1) == 0;
  v29 = 0x10000;
  if (v26)
  {
    v30 = 0;
  }

  else
  {
    v30 = 0x10000;
  }

  v26 = (v6 & 1) == 0;
  v31 = 0x1000000;
  if (v26)
  {
    v32 = 0;
  }

  else
  {
    v32 = 0x1000000;
  }

  v26 = (v7 & 1) == 0;
  v33 = 0x100000000;
  if (v26)
  {
    v34 = 0;
  }

  else
  {
    v34 = 0x100000000;
  }

  v26 = (v8 & 1) == 0;
  v35 = 0x10000000000;
  if (v26)
  {
    v36 = 0;
  }

  else
  {
    v36 = 0x10000000000;
  }

  v37 = v25 | (v9 << 48) | v28 | v30 | v32 | v34 | v36 | (v23 << 56);
  LOBYTE(v41) = v10 & 1;
  *(&v41 + 1) = v11;
  BYTE9(v41) = v12;
  v38 = v41;
  v39 = WORD4(v41);
  if ((v14 & 1) == 0)
  {
    v27 = 0;
  }

  if ((v15 & 1) == 0)
  {
    v29 = 0;
  }

  if ((v16 & 1) == 0)
  {
    v31 = 0;
  }

  if ((v17 & 1) == 0)
  {
    v33 = 0;
  }

  if ((v18 & 1) == 0)
  {
    v35 = 0;
  }

  v42[0] = v20 & 1;
  *&v42[1] = v21;
  v42[9] = v22;

  return sub_1B0CC99DC(v37, v38, v39, v13 & 1 | (v19 << 48) | v27 | v29 | v31 | v33 | v35 | (v24 << 56), *v42, *&v42[8]);
}

char *FlagsWithModifications.description.getter(uint64_t a1, char *a2, __int16 a3)
{
  v11 = a2;
  LOWORD(v12) = a3;
  LOBYTE(v11) = a2 & 1;
  v4 = FlagsWithModifications.locallyModified.getter(a1 & 0xFFFF010101010101, v11, a3);
  v5 = sub_1B0CC75AC(v4);

  v11 = v5;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0C2A0EC(&v11);

  if (*(v11 + 2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    sub_1B039E3F8(&qword_1EB6DB070, &qword_1EB6E2A70, &qword_1B0E9B5F0);
    v6 = sub_1B0E448E8();
    v8 = v7;
  }

  else
  {

    v8 = 0xE400000000000000;
    v6 = 1701736302;
  }

  v11 = 0;
  v12 = 0xE000000000000000;
  sub_1B0E46298();

  v11 = 0xD000000000000013;
  v12 = 0x80000001B0F2F0D0;
  v9 = Flags.description.getter(a1 & 0xFFFF010101010101);
  MEMORY[0x1B2726E80](v9);

  MEMORY[0x1B2726E80](0x696669646F6D202CLL, 0xEC000000203A6465);
  MEMORY[0x1B2726E80](v6, v8);

  MEMORY[0x1B2726E80](41, 0xE100000000000000);
  return v11;
}

uint64_t sub_1B0CC75AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v29 = MEMORY[0x1E69E7CC0];
  v28 = *(a1 + 16);
  sub_1B041D32C(0, v1, 0);
  v2 = v29;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_1B0E460B8();
  v7 = v28;
  v8 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_38;
    }

    v12 = *(*(a1 + 48) + result);
    if (v12 <= 3)
    {
      if (*(*(a1 + 48) + result) > 1u)
      {
        if (v12 == 2)
        {
          v13 = 0xE800000000000000;
          v14 = 0x6465726577736E61;
        }

        else
        {
          v13 = 0xE500000000000000;
          v14 = 0x7466617264;
        }
      }

      else if (*(*(a1 + 48) + result))
      {
        v13 = 0xE700000000000000;
        v14 = 0x646574656C6564;
      }

      else
      {
        v13 = 0xE600000000000000;
        v14 = 0x646165726E75;
      }
    }

    else if (*(*(a1 + 48) + result) <= 5u)
    {
      if (v12 == 4)
      {
        v13 = 0xE900000000000064;
        v14 = 0x6564726177726F66;
      }

      else
      {
        v13 = 0xEA00000000006465;
        v14 = 0x7463657269646572;
      }
    }

    else if (v12 == 6)
    {
      v13 = 0xE400000000000000;
      v14 = 1802401130;
    }

    else if (v12 == 7)
    {
      v13 = 0xE500000000000000;
      v14 = 0x6C6562616CLL;
    }

    else
    {
      v14 = 0x6C4364756F6C4369;
      v13 = 0xED000070756E6165;
    }

    v15 = *(a1 + 36);
    v17 = *(v29 + 16);
    v16 = *(v29 + 24);
    if (v17 >= v16 >> 1)
    {
      v26 = *(a1 + 36);
      v27 = result;
      sub_1B041D32C((v16 > 1), v17 + 1, 1);
      v7 = v28;
      v15 = v26;
      result = v27;
    }

    *(v29 + 16) = v17 + 1;
    v18 = v29 + 16 * v17;
    *(v18 + 32) = v14;
    *(v18 + 40) = v13;
    v9 = 1 << *(a1 + 32);
    if (result >= v9)
    {
      goto LABEL_39;
    }

    v4 = a1 + 56;
    v19 = *(a1 + 56 + 8 * v10);
    if ((v19 & v11) == 0)
    {
      goto LABEL_40;
    }

    if (v15 != *(a1 + 36))
    {
      goto LABEL_41;
    }

    v20 = v19 & (-2 << (result & 0x3F));
    if (v20)
    {
      v9 = __clz(__rbit64(v20)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v10 << 6;
      v22 = v10 + 1;
      v23 = (a1 + 64 + 8 * v10);
      while (v22 < (v9 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          sub_1B0425168(result, v15, 0);
          v7 = v28;
          v9 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      sub_1B0425168(result, v15, 0);
      v7 = v28;
    }

LABEL_4:
    ++v8;
    result = v9;
    if (v8 == v7)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

char *sub_1B0CC78E0()
{
  v1 = *(v0 + 8);
  v2 = 256;
  if ((*(v0 + 1) & 1) == 0)
  {
    v2 = 0;
  }

  v3 = 0x10000;
  if ((*(v0 + 2) & 1) == 0)
  {
    v3 = 0;
  }

  v4 = 0x1000000;
  if ((*(v0 + 3) & 1) == 0)
  {
    v4 = 0;
  }

  v5 = 0x100000000;
  if ((*(v0 + 4) & 1) == 0)
  {
    v5 = 0;
  }

  v6 = 0x10000000000;
  if ((*(v0 + 5) & 1) == 0)
  {
    v6 = 0;
  }

  *&v8[1] = *(v0 + 9);
  v8[9] = *(v0 + 17);
  return FlagsWithModifications.description.getter(*v0 & 1 | (*(v0 + 6) << 48) | v2 | v3 | v4 | v5 | v6 | (*(v0 + 7) << 56), *v8, *&v8[8]);
}

BOOL static FlagsUpdate.Label.__derived_enum_equals(_:_:)(char a1, char a2)
{
  if (a1 == 8)
  {
    return a2 == 8;
  }

  if (a2 == 8)
  {
    return 0;
  }

  return a1 == a2;
}

uint64_t FlagsUpdate.Label.hash(into:)(uint64_t a1, unsigned __int8 a2)
{
  if (a2 == 8)
  {
    v2 = 0;
  }

  else
  {
    MEMORY[0x1B2728D70](1);
    v2 = a2;
  }

  return MEMORY[0x1B2728D70](v2);
}

uint64_t FlagsUpdate.Label.hashValue.getter(unsigned __int8 a1)
{
  v2 = a1;
  sub_1B0E46C28();
  v3 = 0;
  if (v2 != 8)
  {
    MEMORY[0x1B2728D70](1);
    v3 = a1;
  }

  MEMORY[0x1B2728D70](v3);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CC7C3C()
{
  v1 = *v0;
  sub_1B0E46C28();
  v2 = 0;
  if (v1 != 8)
  {
    MEMORY[0x1B2728D70](1);
    v2 = v1;
  }

  MEMORY[0x1B2728D70](v2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CC7C9C()
{
  v1 = *v0;
  if (v1 == 8)
  {
    v1 = 0;
  }

  else
  {
    MEMORY[0x1B2728D70](1);
  }

  return MEMORY[0x1B2728D70](v1);
}

uint64_t sub_1B0CC7CE4()
{
  v1 = *v0;
  sub_1B0E46C28();
  if (v1 == 8)
  {
    v1 = 0;
  }

  else
  {
    MEMORY[0x1B2728D70](1);
  }

  MEMORY[0x1B2728D70](v1);
  return sub_1B0E46CB8();
}

BOOL sub_1B0CC7D44(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 8)
  {
    return v3 == 8;
  }

  if (v3 == 8)
  {
    return 0;
  }

  return v2 == v3;
}

unint64_t FlagsUpdate.init(unread:deleted:answered:draft:forwarded:redirected:junk:label:iCloudCleanup:)(char a1, char a2, char a3, char a4, unsigned __int8 a5, unsigned __int8 a6, unsigned __int8 a7, uint64_t a8)
{
  v8 = 256;
  if ((a2 & 1) == 0)
  {
    v8 = 0;
  }

  v9 = v8 & 0xFFFFFFFFFFFFFFFELL | a1 & 1;
  v10 = 0x10000;
  if ((a3 & 1) == 0)
  {
    v10 = 0;
  }

  v11 = 0x1000000;
  if ((a4 & 1) == 0)
  {
    v11 = 0;
  }

  return v9 | v10 | v11 | (a5 << 32) | (a6 << 40) | (a7 << 48) | (a8 << 56);
}

uint64_t FlagsUpdate.hash(into:)(uint64_t a1, unint64_t a2, char a3)
{
  sub_1B0E46C68();
  sub_1B0E46C68();
  sub_1B0E46C68();
  sub_1B0E46C68();
  if ((a2 & 0xFF00000000) != 0x200000000)
  {
    sub_1B0E46C68();
  }

  sub_1B0E46C68();
  if ((a2 & 0xFF0000000000) != 0x20000000000)
  {
    sub_1B0E46C68();
  }

  v5 = HIBYTE(a2);
  sub_1B0E46C68();
  if ((a2 & 0xFF000000000000) == 0x3000000000000)
  {
    sub_1B0E46C68();
    if (v5 != 8)
    {
LABEL_7:
      MEMORY[0x1B2728D70](1);
      goto LABEL_10;
    }
  }

  else
  {
    sub_1B0E46C68();
    MEMORY[0x1B2728D70](BYTE6(a2));
    if (v5 != 8)
    {
      goto LABEL_7;
    }
  }

  v5 = 0;
LABEL_10:
  MEMORY[0x1B2728D70](v5);
  if (a3 != 2)
  {
    sub_1B0E46C68();
  }

  return sub_1B0E46C68();
}

uint64_t FlagsUpdate.hashValue.getter(uint64_t a1, char a2)
{
  sub_1B0E46C28();
  FlagsUpdate.hash(into:)(v5, a1 & 0xFFFFFFFF01010101, a2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CC7F58()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  sub_1B0E46C28();
  v10 = 256;
  if ((v2 & 1) == 0)
  {
    v10 = 0;
  }

  v11 = 0x10000;
  if ((v3 & 1) == 0)
  {
    v11 = 0;
  }

  v12 = 0x1000000;
  if ((v4 & 1) == 0)
  {
    v12 = 0;
  }

  FlagsUpdate.hash(into:)(v14, (v5 << 32) | (v6 << 40) | (v7 << 48) | v1 & 1 | v10 | v11 | v12 | (v8 << 56), v9);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CC8024(uint64_t a1)
{
  v2 = 256;
  if ((v1[1] & 1) == 0)
  {
    v2 = 0;
  }

  v3 = 0x10000;
  if ((v1[2] & 1) == 0)
  {
    v3 = 0;
  }

  v4 = 0x1000000;
  if ((v1[3] & 1) == 0)
  {
    v4 = 0;
  }

  return FlagsUpdate.hash(into:)(a1, (v1[4] << 32) | (v1[5] << 40) | (v1[6] << 48) | *v1 & 1 | v2 | v3 | v4 | (v1[7] << 56), v1[8]);
}

uint64_t sub_1B0CC8090()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  sub_1B0E46C28();
  v10 = 256;
  if ((v2 & 1) == 0)
  {
    v10 = 0;
  }

  v11 = 0x10000;
  if ((v3 & 1) == 0)
  {
    v11 = 0;
  }

  v12 = 0x1000000;
  if ((v4 & 1) == 0)
  {
    v12 = 0;
  }

  FlagsUpdate.hash(into:)(v14, (v5 << 32) | (v6 << 40) | (v7 << 48) | v1 & 1 | v10 | v11 | v12 | (v8 << 56), v9);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CC8158(_BYTE *a1, _BYTE *a2)
{
  v3 = 256;
  if (a1[1])
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  v5 = 0x10000;
  if (a1[2])
  {
    v6 = 0x10000;
  }

  else
  {
    v6 = 0;
  }

  v7 = 0x1000000;
  if (a1[3])
  {
    v8 = 0x1000000;
  }

  else
  {
    v8 = 0;
  }

  v9 = (a1[4] << 32) | (a1[5] << 40) | (a1[6] << 48) | *a1 & 1 | v4 | v6 | v8 | (a1[7] << 56);
  if ((a2[1] & 1) == 0)
  {
    v3 = 0;
  }

  if ((a2[2] & 1) == 0)
  {
    v5 = 0;
  }

  if ((a2[3] & 1) == 0)
  {
    v7 = 0;
  }

  v10 = (a2[4] << 32) | (a2[5] << 40) | (a2[6] << 48) | *a2 & 1 | v3 | v5 | v7 | (a2[7] << 56);
  v11 = a2[8];
  v12 = a1[8];
  v13 = (a1[4] << 32) | (a1[5] << 40) | (a1[6] << 48) | *a1 & 1 | v4 | v6 | v8 | (a1[7] << 56);

  return sub_1B0CC9810(v9, v12, v10, v11);
}

uint64_t Flags.init(_:)(uint64_t a1)
{
  v1 = a1 & 0xFF000000000000;
  if ((a1 & 0xFF000000000000) == 0x3000000000000)
  {
    v1 = 0;
  }

  v2 = a1 & 0xFF00000000000000;
  if ((a1 & 0xFF00000000000000) == 0x800000000000000)
  {
    v2 = 0x100000000000000;
  }

  return v1 | a1 & 0x10100000000 | v2 | a1 & 0x1010101;
}

unint64_t FlagsWithModifications.update(with:)(unint64_t result, char a2)
{
  v3 = *(v2 + 9);
  if (v3 != 2)
  {
    v4 = v3 & 1;
    v5 = result & 1;
    if (*v2 == v4)
    {
      *v2 = v5;
    }

    v2[9] = v5;
    v3 = *(v2 + 9);
    if (v3 != 2)
    {
      v6 = v2[1] ^ (v3 >> 8) & 1;
      v7 = (result >> 8) & 1;
      if ((v6 & 1) == 0)
      {
        v2[1] = v7;
      }

      v2[10] = v7;
      v3 = *(v2 + 9);
      if (v3 != 2)
      {
        if (((v2[2] ^ (v3 >> 16) & 1) & 1) == 0)
        {
          v2[2] = BYTE2(result) & 1;
        }

        v2[11] = BYTE2(result) & 1;
        v3 = *(v2 + 9);
        if (v3 != 2)
        {
          v8 = v2[3] ^ (v3 >> 24) & 1;
          v9 = BYTE3(result) & 1;
          if ((v8 & 1) == 0)
          {
            v2[3] = v9;
          }

          v2[12] = v9;
          v3 = *(v2 + 9);
        }
      }
    }
  }

  if ((result & 0xFF00000000) != 0x200000000 && v3 != 2)
  {
    if (((v2[4] ^ BYTE4(v3) & 1) & 1) == 0)
    {
      v2[4] = BYTE4(result) & 1;
    }

    v2[13] = BYTE4(result) & 1;
    v3 = *(v2 + 9);
  }

  if ((result & 0xFF0000000000) != 0x20000000000 && v3 != 2)
  {
    v10 = v2[5] ^ (v3 >> 40) & 1;
    v11 = (result >> 40) & 1;
    if ((v10 & 1) == 0)
    {
      v2[5] = v11;
    }

    v2[14] = v11;
    v3 = *(v2 + 9);
  }

  v12 = HIBYTE(result);
  if (BYTE6(result) != 3 && v3 != 2)
  {
    if (v2[6] == BYTE6(v3))
    {
      v2[6] = BYTE6(result);
    }

    v2[15] = BYTE6(result);
    v3 = *(v2 + 9);
  }

  if (v12 == 8)
  {
    if (v3 != 2 && !HIBYTE(v3))
    {
      if (v2[7] <= 1u)
      {
        LOBYTE(v12) = 1;
      }

      else
      {
        LOBYTE(v12) = v2[7];
      }

      if (v2[7])
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }
  }

  else if (v3 != 2)
  {
    if (v2[7] != HIBYTE(v3))
    {
LABEL_40:
      v2[16] = v12;
      goto LABEL_41;
    }

LABEL_39:
    v2[7] = v12;
    goto LABEL_40;
  }

LABEL_41:
  if (a2 != 2 && v2[9] != 2)
  {
    v13 = a2 & 1;
    if (v2[8] == v2[17])
    {
      v2[8] = v13;
    }

    v2[17] = v13;
  }

  return result;
}

void *sub_1B0CC8554()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E61E0, &qword_1B0EE36F8);
  v2 = *v0;
  v3 = sub_1B0E461F8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_1B0CC8694()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E61C8, &qword_1B0EE36E8);
  v2 = *v0;
  v3 = sub_1B0E461F8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
        result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_1B0CC87E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E61E0, &qword_1B0EE36F8);
  result = sub_1B0E46208();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v17);
      result = sub_1B0E46CB8();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1B0CC8A04(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E61C8, &qword_1B0EE36E8);
  result = sub_1B0E46208();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_1B0E46C28();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      SectionSpecifier.Part.hash(into:)(v27, v17);
      result = sub_1B0E46CB8();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1B0CC8C2C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E61E0, &qword_1B0EE36F8);
  result = sub_1B0E46208();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v18);
      result = sub_1B0E46CB8();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1B0CC8E7C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E61C8, &qword_1B0EE36E8);
  result = sub_1B0E46208();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_1B0E46C28();
      SectionSpecifier.Part.hash(into:)(v29, v18);
      result = sub_1B0E46CB8();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1B0CC90CC(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a2);
  v7 = sub_1B0E46CB8();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_1B0CC9304(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1B0CC91C4(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  sub_1B0E46C28();
  SectionSpecifier.Part.hash(into:)(v19, a2);
  v8 = sub_1B0E46CB8();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v14 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v13, a2);

      if (v14)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    *a1 = *(*(v6 + 48) + 8 * v10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return 0;
  }

  else
  {
LABEL_5:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19[0] = *v3;
    v17 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0CC9450(v17, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v19[0];
    *a1 = a2;
    return 1;
  }
}

uint64_t sub_1B0CC9304(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B0CC8C2C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1B0CC8554();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1B0CC87E4(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v4);
  result = sub_1B0E46CB8();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B0E46B98();
  __break(1u);
  return result;
}

uint64_t sub_1B0CC9450(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B0CC8E7C(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1B0CC8694();
      goto LABEL_12;
    }

    sub_1B0CC8A04(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_1B0E46C28();
  SectionSpecifier.Part.hash(into:)(v20, v6);
  result = sub_1B0E46CB8();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = *(*(v9 + 48) + 8 * a2);
      v14 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v15 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v14, v6);

      if (v15)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v16 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v16 + 48) + 8 * a2) = v6;
  v17 = *(v16 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v16 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B0E46B98();
  __break(1u);
  return result;
}

void *sub_1B0CC95C0(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E61D0, &qword_1B0EE36F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E61D8, &qword_1B0EE4750);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0CC96F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E61C0, &qword_1B0EE36E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1B0CC9810(unint64_t a1, int a2, unint64_t a3, int a4)
{
  v4 = 0;
  if (((a1 >> 8) & 1) != ((a3 >> 8) & 1) || ((a1 ^ a3) & 1) != 0 || ((a1 >> 16) & 1) != ((a3 >> 16) & 1) || ((a1 >> 24) & 1) != ((a3 >> 24) & 1))
  {
    return v4;
  }

  if ((a1 & 0xFF00000000) == 0x200000000)
  {
    if (BYTE4(a3) != 2)
    {
      return 0;
    }
  }

  else
  {
    v4 = 0;
    if (BYTE4(a3) == 2 || ((((a1 & 0x100000000) == 0) ^ HIDWORD(a3)) & 1) == 0)
    {
      return v4;
    }
  }

  if ((a1 & 0xFF0000000000) == 0x20000000000)
  {
    if (BYTE5(a3) != 2)
    {
      return 0;
    }
  }

  else
  {
    v4 = 0;
    if (BYTE5(a3) == 2 || ((((a1 & 0x10000000000) == 0) ^ (a3 >> 40)) & 1) == 0)
    {
      return v4;
    }
  }

  if ((a1 & 0xFF000000000000) == 0x3000000000000)
  {
    if (BYTE6(a3) != 3)
    {
      return 0;
    }
  }

  else
  {
    v4 = 0;
    if (BYTE6(a3) == 3 || ((a1 ^ a3) & 0xFF000000000000) != 0)
    {
      return v4;
    }
  }

  v5 = HIBYTE(a3);
  if (HIBYTE(a1) == 8)
  {
    if (v5 != 8)
    {
      return 0;
    }

    goto LABEL_24;
  }

  if (HIBYTE(a1) == v5)
  {
LABEL_24:
    if (a2 == 2)
    {
      if (a4 != 2)
      {
        return 0;
      }
    }

    else if (a4 == 2 || ((a4 ^ a2) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  return 0;
}

uint64_t sub_1B0CC99DC(unint64_t a1, uint64_t a2, unsigned int a3, unint64_t a4, uint64_t a5, unsigned int a6)
{
  result = 0;
  *&v9 = a2;
  BYTE8(v9) = a3;
  v8 = *(&v9 + 1);
  *v10 = a5;
  v10[8] = a6;
  if (((a1 ^ a4) & 1) == 0 && ((a1 >> 8) & 1) == ((a4 >> 8) & 1) && ((a1 >> 16) & 1) == ((a4 >> 16) & 1) && ((a1 >> 24) & 1) == ((a4 >> 24) & 1) && (BYTE4(a1) & 1) == (BYTE4(a4) & 1) && ((a1 >> 40) & 1) == ((a4 >> 40) & 1) && !((a1 ^ a4) >> 48) && ((a2 ^ a5) & 1) == 0)
  {
    if (v8 == 2)
    {
      if (BYTE1(a5) != 2)
      {
        return 0;
      }
    }

    else if (BYTE1(a5) == 2 || (sub_1B0CC9968(v8 & 0xFFFF010101010101, (a3 >> 8) & 1, *&v10[1] & 0xFFFF010101010101, (a6 >> 8) & 1) & 1) == 0)
    {
      return 0;
    }

    return 1;
  }

  return result;
}

uint64_t sub_1B0CC9AD0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1B0CCA270();
  result = MEMORY[0x1B2727570](v2, &type metadata for FlagKind, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_1B0CC90CC(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_1B0CC9B48()
{
  result = qword_1EB6E6180;
  if (!qword_1EB6E6180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6180);
  }

  return result;
}

unint64_t sub_1B0CC9BA0()
{
  result = qword_1EB6E6188;
  if (!qword_1EB6E6188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6188);
  }

  return result;
}

unint64_t sub_1B0CC9BF8()
{
  result = qword_1EB6E6190;
  if (!qword_1EB6E6190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6190);
  }

  return result;
}

unint64_t sub_1B0CC9C50()
{
  result = qword_1EB6E6198;
  if (!qword_1EB6E6198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6198);
  }

  return result;
}

unint64_t sub_1B0CC9CA8()
{
  result = qword_1EB6E61A0;
  if (!qword_1EB6E61A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E61A0);
  }

  return result;
}

unint64_t sub_1B0CC9D00()
{
  result = qword_1EB6E61A8;
  if (!qword_1EB6E61A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E61A8);
  }

  return result;
}

unint64_t sub_1B0CC9D58()
{
  result = qword_1EB6DC960;
  if (!qword_1EB6DC960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC960);
  }

  return result;
}

uint64_t __swift_memcpy9_1(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

__n128 __swift_memcpy18_1(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for FlagsWithModifications(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[18])
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

uint64_t storeEnumTagSinglePayload for FlagsWithModifications(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1B0CC9EF0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[9])
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

uint64_t sub_1B0CC9F44(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FlagsUpdate.Label(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_20;
  }

  v2 = a2 + 8;
  if (a2 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
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
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 8;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 8;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 8;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 8;
  v9 = v7 - 8;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FlagsUpdate.Label(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 8;
  if (a3 + 8 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF8)
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1B0CCA0EC(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 8)
  {
    return v1 - 7;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1B0CCA100(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 7;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MailboxAttribute(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MailboxAttribute(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B0CCA270()
{
  result = qword_1EB6DC968;
  if (!qword_1EB6DC968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC968);
  }

  return result;
}

uint64_t MessageHeader.data.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B0E443C8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MessageHeader.data.setter(uint64_t a1)
{
  v3 = sub_1B0E443C8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t MessageHeader.init(data:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B0E443C8();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_1B0CCA4D8()
{
  result = sub_1B0E443C8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t MailboxOfInterest.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

uint64_t MailboxOfInterest.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = *v2;

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MailboxOfInterest.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

uint64_t MailboxOfInterest.name.setter(uint64_t a1, int a2)
{
  v5 = *(v2 + 16);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void MailboxOfInterest.metadata.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 36);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  *a1 = *(v1 + 32);
  *(a1 + 4) = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
}

__n128 MailboxOfInterest.metadata.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v3;
  *(v1 + 64) = *(a1 + 32);
  return result;
}

unint64_t MailboxOfInterest.localModification.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  sub_1B07C9330(v1);
  return v1;
}

unint64_t MailboxOfInterest.localModification.setter(uint64_t a1, int a2)
{
  v5 = *(v2 + 80);
  result = sub_1B07C936C(*(v2 + 72));
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t MailboxOfInterest.latestLocalChange.setter(uint64_t result)
{
  *(v1 + 84) = result;
  *(v1 + 88) = BYTE4(result) & 1;
  return result;
}

uint64_t MailboxOfInterest.init(id:name:uidValidity:fetchedWindow:highestModificationSequenceValue:localModification:latestLocalChange:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, int a12, int a13, int a14, char a15)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 36) = BYTE4(a5) & 1;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7 & 1;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10 & 1;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
  *(a9 + 84) = a14;
  *(a9 + 88) = a15 & 1;
  return result;
}

uint64_t sub_1B0CCA82C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v7[3] = v2;
  v8[0] = a1[4];
  *(v8 + 9) = *(a1 + 73);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v9[3] = v4;
  v10[0] = a2[4];
  *(v10 + 9) = *(a2 + 73);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return _s16IMAP2Persistence17MailboxOfInterestV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v9) & 1;
}

uint64_t MailboxOfInterest.uidValidity.setter(uint64_t result)
{
  *(v1 + 32) = result;
  *(v1 + 36) = BYTE4(result) & 1;
  return result;
}

uint64_t *(*MailboxOfInterest.uidValidity.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 32);
  *(a1 + 12) = *(v1 + 36);
  return sub_1B0CCA8DC;
}

uint64_t *sub_1B0CCA8DC(uint64_t *result)
{
  v1 = *result;
  v2 = *(result + 12);
  *(v1 + 32) = *(result + 2);
  *(v1 + 36) = v2;
  return result;
}

uint64_t MailboxOfInterest.highestModificationSequenceValue.getter()
{
  result = *(v0 + 56);
  v2 = *(v0 + 64) & 1;
  return result;
}

uint64_t MailboxOfInterest.highestModificationSequenceValue.setter(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

uint64_t (*MailboxOfInterest.highestModificationSequenceValue.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 64);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
  return sub_1B0CCA948;
}

uint64_t sub_1B0CCA948(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 8);
  *(v1 + 56) = *result;
  *(v1 + 64) = v2;
  return result;
}

uint64_t MailboxOfInterest.hashValue.getter()
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](*(v0 + 24) | (*(v0 + 24) << 32));
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CCA9D8()
{
  v1 = *(v0 + 24);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v1 | (v1 << 32));
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CCAA50()
{
  v1 = *(v0 + 24);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v1 | (v1 << 32));
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CCAA94@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

unint64_t sub_1B0CCAAA4()
{
  result = qword_1EB6E61E8;
  if (!qword_1EB6E61E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E61E8);
  }

  return result;
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1B0CCAB20(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_1B0CCAB68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0CCABD0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 12))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1B0CCAC2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1B0CCAC80(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_1B0CCACB0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v23 = (v7 - 1) & v7;
LABEL_13:
      v13 = *(*(result + 48) + 8 * (v10 | (v3 << 6)));
      v14 = *(a2 + 40);
      sub_1B0E46C28();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      SectionSpecifier.Part.hash(into:)(v24, v13);
      v15 = sub_1B0E46CB8();
      v16 = -1 << *(a2 + 32);
      v17 = v15 & ~v16;
      if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        break;
      }

      v18 = ~v16;
      while (1)
      {
        v19 = *(*(a2 + 48) + 8 * v17);
        v20 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v21 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v20);

        if (v21)
        {
          break;
        }

        v17 = (v17 + 1) & v18;
        if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      result = v22;
      v7 = v23;
      if (!v23)
      {
        goto LABEL_8;
      }
    }

LABEL_21:

    return 0;
  }

LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v23 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_1B0CCAE6C(uint64_t a1, uint64_t a2)
{
  v182 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    for (i = v2 - 1; ; --i)
    {
      v6 = v3[3];
      v176 = v3[2];
      v177 = v6;
      v7 = v3[1];
      v174 = *v3;
      v175 = v7;
      v8 = v4[2];
      v9 = v4[3];
      v10 = *v4;
      *v180 = v4[1];
      *&v180[16] = v8;
      v11 = v4[4];
      *&v180[32] = v9;
      v181 = v11;
      v178 = v3[4];
      v179 = v10;
      v12 = *(&v175 + 1);
      v13 = v175;
      v14 = *(&v177 + 1);
      v15 = (*(&v178 + 1) >> 59) & 6 | ((*(&v177 + 1) & 0x2000000000000000) != 0);
      if (v15 <= 1)
      {
        break;
      }

      if (v15 == 2)
      {
        if (((*(&v181 + 1) >> 59) & 6 | ((*&v180[40] & 0x2000000000000000) != 0)) != 2)
        {
          goto LABEL_380;
        }

        v26 = v179;
        v27 = *(&v174 + 1) >> 62;
        v28 = *(&v179 + 1) >> 62;
        if (*(&v174 + 1) >> 62 == 3)
        {
          v29 = 0;
          if (v174 == __PAIR128__(0xC000000000000000, 0) && *(&v179 + 1) >> 62 == 3)
          {
            v29 = 0;
            if (v179 == __PAIR128__(0xC000000000000000, 0))
            {
              goto LABEL_378;
            }
          }

LABEL_80:
          if (v28 <= 1)
          {
            goto LABEL_81;
          }

LABEL_40:
          if (v28 != 2)
          {
            if (v29)
            {
              goto LABEL_380;
            }

            goto LABEL_378;
          }

          v37 = *(v179 + 16);
          v36 = *(v179 + 24);
          v38 = __OFSUB__(v36, v37);
          v39 = v36 - v37;
          if (v38)
          {
            goto LABEL_386;
          }
        }

        else
        {
          if (v27 > 1)
          {
            if (v27 == 2)
            {
              v48 = *(v174 + 16);
              v47 = *(v174 + 24);
              v38 = __OFSUB__(v47, v48);
              v29 = v47 - v48;
              if (v38)
              {
                goto LABEL_400;
              }

              goto LABEL_80;
            }

            v29 = 0;
            if (v28 <= 1)
            {
              goto LABEL_81;
            }

            goto LABEL_40;
          }

          if (v27)
          {
            LODWORD(v29) = DWORD1(v174) - v174;
            if (__OFSUB__(DWORD1(v174), v174))
            {
              goto LABEL_402;
            }

            v29 = v29;
            goto LABEL_80;
          }

          v29 = BYTE14(v174);
          if (v28 > 1)
          {
            goto LABEL_40;
          }

LABEL_81:
          if (v28)
          {
            LODWORD(v39) = DWORD1(v179) - v179;
            if (__OFSUB__(DWORD1(v179), v179))
            {
              goto LABEL_383;
            }

            v39 = v39;
          }

          else
          {
            v39 = BYTE14(v179);
          }
        }

        if (v29 != v39)
        {
          goto LABEL_380;
        }

        if (v29 < 1)
        {
          goto LABEL_378;
        }

        if (v27 > 1)
        {
          v171 = i;
          if (v27 == 2)
          {
            v55 = *(v174 + 16);
            v54 = *(v174 + 24);
            sub_1B069506C(&v179, v173);
            sub_1B069506C(&v174, v173);
            v56 = sub_1B0E42A98();
            if (v56)
            {
              v57 = sub_1B0E42AC8();
              if (__OFSUB__(v55, v57))
              {
                goto LABEL_425;
              }

              v56 += v55 - v57;
            }

            if (__OFSUB__(v54, v55))
            {
              goto LABEL_418;
            }

            goto LABEL_147;
          }

          memset(v172, 0, 14);
          sub_1B069506C(&v179, v173);
          sub_1B069506C(&v174, v173);
          sub_1B0AE2440(v172, v26, *(&v26 + 1), v173);
          sub_1B070BB30(&v179);
          sub_1B070BB30(&v174);
          v71 = v173[0];
        }

        else
        {
          if (!v27)
          {
            v53 = i;
            v172[0] = v174;
            LODWORD(v172[1]) = DWORD2(v174);
            WORD2(v172[1]) = WORD6(v174);
            sub_1B069506C(&v179, v173);
            sub_1B069506C(&v174, v173);
            sub_1B0AE2440(v172, v26, *(&v26 + 1), v173);
            sub_1B070BB30(&v179);
            sub_1B070BB30(&v174);
            i = v53;
            if ((v173[0] & 1) == 0)
            {
              goto LABEL_380;
            }

            goto LABEL_378;
          }

          v171 = i;
          v69 = v174;
          if (v174 >> 32 < v174)
          {
            goto LABEL_415;
          }

          sub_1B069506C(&v179, v173);
          sub_1B069506C(&v174, v173);
          v56 = sub_1B0E42A98();
          if (v56)
          {
            v70 = sub_1B0E42AC8();
            if (__OFSUB__(v69, v70))
            {
              goto LABEL_430;
            }

            v56 += v69 - v70;
          }

LABEL_147:
          sub_1B0E42AB8();
          sub_1B0AE2440(v56, v26, *(&v26 + 1), v173);
          sub_1B070BB30(&v179);
          sub_1B070BB30(&v174);
          v71 = v173[0];
        }

        i = v171;
        if ((v71 & 1) == 0)
        {
          goto LABEL_380;
        }

        goto LABEL_378;
      }

      if (v15 == 3)
      {
        if (((*(&v181 + 1) >> 59) & 6 | ((*&v180[40] & 0x2000000000000000) != 0)) != 3)
        {
          goto LABEL_380;
        }

        v16 = *(&v175 + 1);
        v17 = i;
        v18 = *v180;
        v19 = *&v180[8];
        if (v174 != v179 && (sub_1B0E46A78() & 1) == 0)
        {
          goto LABEL_380;
        }

        if (v13 == v18 && v16 == v19)
        {
          i = v17;
        }

        else
        {
          v46 = sub_1B0E46A78();
          i = v17;
          if ((v46 & 1) == 0)
          {
            goto LABEL_380;
          }
        }
      }

      else
      {
        if (((*(&v181 + 1) >> 59) & 6 | ((*&v180[40] & 0x2000000000000000) != 0)) != 4)
        {
          goto LABEL_380;
        }

        if (*(&v181 + 1) != 0x2000000000000000)
        {
          goto LABEL_380;
        }

        v30 = vorrq_s8(*&v180[8], *&v180[24]);
        if (*&vorr_s8(*v30.i8, *&vextq_s8(v30, v30, 8uLL)) | v181 | *v180 | *(&v179 + 1) | v179 | *&v180[40])
        {
          goto LABEL_380;
        }
      }

LABEL_378:
      if (!i)
      {
        goto LABEL_380;
      }

      v4 += 5;
      v3 += 5;
    }

    v170 = i;
    if (!v15)
    {
      if ((*(&v181 + 1) >> 59) & 6 | ((*&v180[40] & 0x2000000000000000) != 0))
      {
        goto LABEL_380;
      }

      v20 = v179;
      v21 = *v180;
      v22 = *&v180[8];
      v23 = *(&v174 + 1) >> 62;
      v24 = *(&v179 + 1) >> 62;
      if (*(&v174 + 1) >> 62 == 3)
      {
        v25 = 0;
        if (v174 == __PAIR128__(0xC000000000000000, 0) && *(&v179 + 1) >> 62 == 3)
        {
          v25 = 0;
          if (v179 == __PAIR128__(0xC000000000000000, 0))
          {
LABEL_112:
            sub_1B069506C(&v179, v173);
            sub_1B069506C(&v174, v173);
            goto LABEL_160;
          }
        }
      }

      else if (v23 > 1)
      {
        if (v23 != 2)
        {
          v25 = 0;
          if (v24 <= 1)
          {
LABEL_103:
            if (v24)
            {
              LODWORD(v42) = DWORD1(v179) - v179;
              if (__OFSUB__(DWORD1(v179), v179))
              {
                __break(1u);
LABEL_383:
                __break(1u);
LABEL_384:
                __break(1u);
LABEL_385:
                __break(1u);
LABEL_386:
                __break(1u);
LABEL_387:
                __break(1u);
LABEL_388:
                __break(1u);
LABEL_389:
                __break(1u);
LABEL_390:
                __break(1u);
LABEL_391:
                __break(1u);
LABEL_392:
                __break(1u);
LABEL_393:
                __break(1u);
LABEL_394:
                __break(1u);
LABEL_395:
                __break(1u);
LABEL_396:
                __break(1u);
LABEL_397:
                __break(1u);
LABEL_398:
                __break(1u);
LABEL_399:
                __break(1u);
LABEL_400:
                __break(1u);
LABEL_401:
                __break(1u);
LABEL_402:
                __break(1u);
LABEL_403:
                __break(1u);
LABEL_404:
                __break(1u);
LABEL_405:
                __break(1u);
LABEL_406:
                __break(1u);
LABEL_407:
                __break(1u);
LABEL_408:
                __break(1u);
LABEL_409:
                __break(1u);
LABEL_410:
                __break(1u);
LABEL_411:
                __break(1u);
LABEL_412:
                __break(1u);
LABEL_413:
                __break(1u);
LABEL_414:
                __break(1u);
LABEL_415:
                __break(1u);
LABEL_416:
                __break(1u);
LABEL_417:
                __break(1u);
LABEL_418:
                __break(1u);
LABEL_419:
                __break(1u);
LABEL_420:
                __break(1u);
LABEL_421:
                __break(1u);
LABEL_422:
                __break(1u);
LABEL_423:
                __break(1u);
LABEL_424:
                __break(1u);
LABEL_425:
                __break(1u);
LABEL_426:
                __break(1u);
LABEL_427:
                __break(1u);
LABEL_428:
                __break(1u);
LABEL_429:
                __break(1u);
LABEL_430:
                __break(1u);
              }

              v42 = v42;
            }

            else
            {
              v42 = BYTE14(v179);
            }

            goto LABEL_107;
          }

LABEL_47:
          if (v24 != 2)
          {
            if (v25)
            {
              goto LABEL_380;
            }

            goto LABEL_112;
          }

          v41 = *(v179 + 16);
          v40 = *(v179 + 24);
          v38 = __OFSUB__(v40, v41);
          v42 = v40 - v41;
          if (v38)
          {
            goto LABEL_387;
          }

LABEL_107:
          if (v25 != v42)
          {
            goto LABEL_380;
          }

          if (v25 < 1)
          {
            goto LABEL_112;
          }

          if (v23 > 1)
          {
            if (v23 != 2)
            {
              memset(v172, 0, 14);
              sub_1B069506C(&v179, v173);
              sub_1B069506C(&v174, v173);
              sub_1B0AE2440(v172, v20, *(&v20 + 1), v173);
              if ((v173[0] & 1) == 0)
              {
                goto LABEL_381;
              }

LABEL_160:
              v75 = v12 >> 62;
              v76 = v22 >> 62;
              if (v12 >> 62 == 3)
              {
                v77 = 0;
                if (!v13 && v12 == 0xC000000000000000 && v22 >> 62 == 3)
                {
                  v77 = 0;
                  if (!v21 && v22 == 0xC000000000000000)
                  {
                    goto LABEL_365;
                  }
                }
              }

              else if (v75 > 1)
              {
                if (v75 != 2)
                {
                  v77 = 0;
                  if (v76 <= 1)
                  {
LABEL_181:
                    if (v76)
                    {
                      LODWORD(v80) = HIDWORD(v21) - v21;
                      if (__OFSUB__(HIDWORD(v21), v21))
                      {
                        goto LABEL_389;
                      }

                      v80 = v80;
                    }

                    else
                    {
                      v80 = BYTE6(v22);
                    }

LABEL_185:
                    if (v77 != v80)
                    {
                      goto LABEL_381;
                    }

                    if (v77 < 1)
                    {
                      goto LABEL_365;
                    }

                    if (v75 > 1)
                    {
                      if (v75 == 2)
                      {
                        v83 = v21;
                        v85 = *(v13 + 16);
                        v86 = *(v13 + 24);
LABEL_242:
                        sub_1B03B2000(v83, v22);
                        sub_1B03B2000(v83, v22);
                        sub_1B03B2000(v83, v22);
                        v103 = sub_1B0AB87A0(v85, v86, v12 & 0x3FFFFFFFFFFFFFFFLL, v83, v22);
                        sub_1B0391D50(v83, v22);
                        sub_1B070BB30(&v179);
                        sub_1B070BB30(&v174);
                        sub_1B0391D50(v83, v22);
                        v104 = v83;
                        v105 = v22;
                        goto LABEL_373;
                      }

                      *&v173[6] = 0;
                      *v173 = 0;
                      sub_1B03B2000(v21, v22);
                      sub_1B03B2000(v21, v22);
                      sub_1B0AE2440(v173, v21, v22, v172);
                      sub_1B070BB30(&v179);
                      sub_1B070BB30(&v174);
                      sub_1B0391D50(v21, v22);
                      v84 = v21;
                    }

                    else
                    {
                      v83 = v21;
                      if (v75)
                      {
                        v85 = v13;
                        v86 = v13 >> 32;
                        if (v86 < v85)
                        {
                          goto LABEL_421;
                        }

                        goto LABEL_242;
                      }

                      *v173 = v13;
                      *&v173[8] = v12;
                      v173[10] = BYTE2(v12);
                      v173[11] = BYTE3(v12);
                      v173[12] = BYTE4(v12);
                      v173[13] = BYTE5(v12);
                      sub_1B03B2000(v21, v22);
                      sub_1B03B2000(v21, v22);
                      sub_1B0AE2440(v173, v21, v22, v172);
                      sub_1B070BB30(&v179);
                      sub_1B070BB30(&v174);
                      sub_1B0391D50(v21, v22);
                      v84 = v21;
                    }

                    v106 = v22;
                    goto LABEL_377;
                  }

LABEL_170:
                  if (v76 != 2)
                  {
                    goto LABEL_347;
                  }

                  v79 = *(v21 + 16);
                  v78 = *(v21 + 24);
                  v38 = __OFSUB__(v78, v79);
                  v80 = v78 - v79;
                  if (v38)
                  {
                    goto LABEL_390;
                  }

                  goto LABEL_185;
                }

                v82 = *(v13 + 16);
                v81 = *(v13 + 24);
                v38 = __OFSUB__(v81, v82);
                v77 = v81 - v82;
                if (v38)
                {
                  goto LABEL_405;
                }
              }

              else
              {
                if (!v75)
                {
                  v77 = BYTE6(v12);
                  if (v76 <= 1)
                  {
                    goto LABEL_181;
                  }

                  goto LABEL_170;
                }

                LODWORD(v77) = HIDWORD(v13) - v13;
                if (__OFSUB__(HIDWORD(v13), v13))
                {
                  goto LABEL_404;
                }

                v77 = v77;
              }

              if (v76 <= 1)
              {
                goto LABEL_181;
              }

              goto LABEL_170;
            }

            v165 = *&v180[8];
            v168 = *v180;
            v59 = *(v174 + 16);
            v163 = *(v174 + 24);
            sub_1B069506C(&v179, v173);
            sub_1B069506C(&v174, v173);
            v60 = sub_1B0E42A98();
            if (v60)
            {
              v61 = sub_1B0E42AC8();
              if (__OFSUB__(v59, v61))
              {
                goto LABEL_426;
              }

              v60 += v59 - v61;
            }

            if (__OFSUB__(v163, v59))
            {
              goto LABEL_419;
            }

            sub_1B0E42AB8();
            sub_1B0AE2440(v60, v20, *(&v20 + 1), v173);
            v58 = v173[0];
          }

          else
          {
            v168 = *v180;
            if (!v23)
            {
              v172[0] = v174;
              LODWORD(v172[1]) = DWORD2(v174);
              WORD2(v172[1]) = WORD6(v174);
              sub_1B069506C(&v179, v173);
              sub_1B069506C(&v174, v173);
              sub_1B0AE2440(v172, v20, *(&v20 + 1), v173);
              v58 = v173[0];
              goto LABEL_157;
            }

            v165 = *&v180[8];
            v152 = *(&v175 + 1);
            v72 = v174;
            if (v174 >> 32 < v174)
            {
              goto LABEL_416;
            }

            sub_1B069506C(&v179, v173);
            sub_1B069506C(&v174, v173);
            v73 = sub_1B0E42A98();
            if (v73)
            {
              v74 = sub_1B0E42AC8();
              if (__OFSUB__(v72, v74))
              {
                goto LABEL_429;
              }

              v73 += v72 - v74;
            }

            v12 = v152;
            sub_1B0E42AB8();
            sub_1B0AE2440(v73, v20, *(&v20 + 1), v173);
            v58 = v173[0];
          }

          v22 = v165;
LABEL_157:
          v21 = v168;
          if ((v58 & 1) == 0)
          {
            goto LABEL_381;
          }

          goto LABEL_160;
        }

        v50 = *(v174 + 16);
        v49 = *(v174 + 24);
        v38 = __OFSUB__(v49, v50);
        v25 = v49 - v50;
        if (v38)
        {
          goto LABEL_398;
        }
      }

      else
      {
        if (!v23)
        {
          v25 = BYTE14(v174);
          if (v24 <= 1)
          {
            goto LABEL_103;
          }

          goto LABEL_47;
        }

        LODWORD(v25) = DWORD1(v174) - v174;
        if (__OFSUB__(DWORD1(v174), v174))
        {
          goto LABEL_399;
        }

        v25 = v25;
      }

      if (v24 <= 1)
      {
        goto LABEL_103;
      }

      goto LABEL_47;
    }

    v31 = *&v180[40];
    v156 = *(&v181 + 1);
    if (((*(&v181 + 1) >> 59) & 6 | ((*&v180[40] & 0x2000000000000000) != 0)) != 1)
    {
      goto LABEL_380;
    }

    v157 = v177;
    v158 = *(&v178 + 1);
    v32 = *&v180[8];
    v162 = *(&v176 + 1);
    v164 = *v180;
    v160 = v176;
    v161 = *&v180[16];
    v167 = *&v180[24];
    v33 = *(&v174 + 1) >> 62;
    v34 = *(&v179 + 1) >> 62;
    v159 = *&v180[32];
    v154 = v178;
    v155 = v181;
    if (*(&v174 + 1) >> 62 == 3)
    {
      v35 = 0;
      if (v174 == __PAIR128__(0xC000000000000000, 0) && *(&v179 + 1) >> 62 == 3)
      {
        v35 = 0;
        if (v179 == __PAIR128__(0xC000000000000000, 0))
        {
LABEL_131:
          sub_1B069506C(&v179, v173);
          sub_1B069506C(&v174, v173);
          v65 = v31;
          goto LABEL_202;
        }
      }
    }

    else if (v33 > 1)
    {
      if (v33 != 2)
      {
        v35 = 0;
        if (v34 <= 1)
        {
LABEL_122:
          if (v34)
          {
            LODWORD(v45) = DWORD1(v179) - v179;
            if (__OFSUB__(DWORD1(v179), v179))
            {
              goto LABEL_385;
            }

            v45 = v45;
          }

          else
          {
            v45 = BYTE14(v179);
          }

          goto LABEL_126;
        }

LABEL_54:
        if (v34 != 2)
        {
          if (v35)
          {
            goto LABEL_380;
          }

          goto LABEL_131;
        }

        v44 = *(v179 + 16);
        v43 = *(v179 + 24);
        v38 = __OFSUB__(v43, v44);
        v45 = v43 - v44;
        if (v38)
        {
          goto LABEL_384;
        }

LABEL_126:
        if (v35 != v45)
        {
          goto LABEL_380;
        }

        if (v35 < 1)
        {
          goto LABEL_131;
        }

        if (v33 > 1)
        {
          v149 = v179;
          if (v33 != 2)
          {
            memset(v172, 0, 14);
            sub_1B069506C(&v179, v173);
            sub_1B069506C(&v174, v173);
            sub_1B0AE2440(v172, v149, *(&v149 + 1), v173);
            v65 = v31;
            if ((v173[0] & 1) == 0)
            {
              goto LABEL_381;
            }

LABEL_202:
            v89 = v12 >> 62;
            v90 = v32 >> 62;
            if (v12 >> 62 == 3)
            {
              v91 = 0;
              v92 = v167;
              if (!v13 && v12 == 0xC000000000000000 && v32 >> 62 == 3)
              {
                v91 = 0;
                if (!v164 && v32 == 0xC000000000000000)
                {
                  goto LABEL_235;
                }
              }
            }

            else
            {
              v92 = v167;
              if (v89 > 1)
              {
                if (v89 != 2)
                {
                  v91 = 0;
                  if (v90 <= 1)
                  {
LABEL_225:
                    if (v90)
                    {
                      LODWORD(v95) = HIDWORD(v164) - v164;
                      if (__OFSUB__(HIDWORD(v164), v164))
                      {
                        goto LABEL_388;
                      }

                      v95 = v95;
                    }

                    else
                    {
                      v95 = BYTE6(v32);
                    }

LABEL_229:
                    if (v91 != v95)
                    {
                      goto LABEL_381;
                    }

                    if (v91 >= 1)
                    {
                      if (v89 > 1)
                      {
                        if (v89 == 2)
                        {
                          v101 = *(v13 + 24);
                          v153 = *(v13 + 16);
                          sub_1B03B2000(v164, v32);
                          sub_1B03B2000(v164, v32);
                          sub_1B03B2000(v164, v32);
                          v102 = sub_1B0AB87A0(v153, v101, v12 & 0x3FFFFFFFFFFFFFFFLL, v164, v32);
                          sub_1B0391D50(v164, v32);
                          sub_1B0391D50(v164, v32);
                          sub_1B0391D50(v164, v32);
                          v98 = v159;
                          v92 = v167;
                          v99 = v162;
                          if ((v102 & 1) == 0)
                          {
                            goto LABEL_381;
                          }
                        }

                        else
                        {
                          *&v173[6] = 0;
                          *v173 = 0;
                          sub_1B03B2000(v164, v32);
                          sub_1B03B2000(v164, v32);
                          sub_1B0AE2440(v173, v164, v32, v172);
                          sub_1B0391D50(v164, v32);
                          sub_1B0391D50(v164, v32);
                          v98 = v159;
                          v99 = v162;
                          if ((v172[0] & 1) == 0)
                          {
                            goto LABEL_381;
                          }
                        }
                      }

                      else
                      {
                        v100 = v32;
                        if (v89)
                        {
                          v107 = v13;
                          v108 = v13 >> 32;
                          if (v13 >> 32 < v13)
                          {
                            goto LABEL_420;
                          }

                          v109 = v100;
                          sub_1B03B2000(v164, v100);
                          sub_1B03B2000(v164, v109);
                          sub_1B03B2000(v164, v109);
                          v110 = sub_1B0AB87A0(v107, v108, v12 & 0x3FFFFFFFFFFFFFFFLL, v164, v109);
                          sub_1B0391D50(v164, v109);
                          sub_1B0391D50(v164, v109);
                          sub_1B0391D50(v164, v109);
                          v98 = v159;
                          v92 = v167;
                          v99 = v162;
                          if ((v110 & 1) == 0)
                          {
                            goto LABEL_381;
                          }
                        }

                        else
                        {
                          *v173 = v13;
                          *&v173[8] = v12;
                          v173[10] = BYTE2(v12);
                          v173[11] = BYTE3(v12);
                          v173[12] = BYTE4(v12);
                          v173[13] = BYTE5(v12);
                          sub_1B03B2000(v164, v32);
                          sub_1B03B2000(v164, v32);
                          sub_1B0AE2440(v173, v164, v32, v172);
                          sub_1B0391D50(v164, v32);
                          sub_1B0391D50(v164, v32);
                          v98 = v159;
                          v99 = v162;
                          if ((v172[0] & 1) == 0)
                          {
                            goto LABEL_381;
                          }
                        }
                      }

LABEL_249:
                      v111 = v99 >> 62;
                      v112 = v92 >> 62;
                      if (v99 >> 62 == 3)
                      {
                        v113 = 0;
                        if (!v160 && v99 == 0xC000000000000000 && v92 >> 62 == 3)
                        {
                          v113 = 0;
                          if (!v161 && v92 == 0xC000000000000000)
                          {
                            goto LABEL_291;
                          }
                        }
                      }

                      else if (v111 > 1)
                      {
                        if (v111 != 2)
                        {
                          v113 = 0;
                          if (v112 <= 1)
                          {
LABEL_272:
                            if (v112)
                            {
                              LODWORD(v116) = HIDWORD(v161) - v161;
                              if (__OFSUB__(HIDWORD(v161), v161))
                              {
                                goto LABEL_392;
                              }

                              v116 = v116;
                            }

                            else
                            {
                              v116 = BYTE6(v92);
                            }

                            goto LABEL_276;
                          }

LABEL_259:
                          if (v112 != 2)
                          {
                            if (v113)
                            {
                              goto LABEL_381;
                            }

                            goto LABEL_291;
                          }

                          v115 = *(v161 + 16);
                          v114 = *(v161 + 24);
                          v38 = __OFSUB__(v114, v115);
                          v116 = v114 - v115;
                          if (v38)
                          {
                            goto LABEL_393;
                          }

LABEL_276:
                          if (v113 != v116)
                          {
                            goto LABEL_381;
                          }

                          if (v113 < 1)
                          {
                            goto LABEL_291;
                          }

                          if (v111 > 1)
                          {
                            if (v111 == 2)
                            {
                              v120 = v99;
                              v166 = *(v160 + 24);
                              v169 = *(v160 + 16);
                              sub_1B03B2000(v161, v92);
                              sub_1B03B2000(v161, v92);
                              sub_1B03B2000(v161, v92);
                              LOBYTE(v120) = sub_1B0AB87A0(v169, v166, v120 & 0x3FFFFFFFFFFFFFFFLL, v161, v92);
                              sub_1B0391D50(v161, v92);
                              sub_1B0391D50(v161, v92);
                              sub_1B0391D50(v161, v92);
                              if ((v120 & 1) == 0)
                              {
                                goto LABEL_381;
                              }

                              goto LABEL_291;
                            }

                            *&v173[6] = 0;
                            *v173 = 0;
                            sub_1B03B2000(v161, v92);
                            sub_1B03B2000(v161, v92);
                            sub_1B0AE2440(v173, v161, v92, v172);
                            sub_1B0391D50(v161, v92);
                            v119 = v161;
                          }

                          else
                          {
                            if (v111)
                            {
                              if (v160 >> 32 < v160)
                              {
                                goto LABEL_422;
                              }

                              sub_1B03B2000(v161, v92);
                              sub_1B03B2000(v161, v92);
                              sub_1B03B2000(v161, v92);
                              v121 = sub_1B0AB87A0(v160, v160 >> 32, v162 & 0x3FFFFFFFFFFFFFFFLL, v161, v92);
                              sub_1B0391D50(v161, v92);
                              sub_1B0391D50(v161, v92);
                              sub_1B0391D50(v161, v92);
                              if ((v121 & 1) == 0)
                              {
LABEL_381:
                                sub_1B070BB30(&v179);
                                sub_1B070BB30(&v174);
                                goto LABEL_380;
                              }

LABEL_291:
                              v122 = v14 >> 62;
                              v123 = v65 >> 62;
                              if (v14 >> 62 == 3)
                              {
                                v124 = 0;
                                if (!v157 && (v14 & 0xDFFFFFFFFFFFFFFFLL) == 0xC000000000000000 && v65 >> 62 == 3)
                                {
                                  v124 = 0;
                                  if (!v98 && (v65 & 0xDFFFFFFFFFFFFFFFLL) == 0xC000000000000000)
                                  {
                                    goto LABEL_324;
                                  }
                                }
                              }

                              else if (v122 > 1)
                              {
                                if (v122 != 2)
                                {
                                  v124 = 0;
                                  if (v123 <= 1)
                                  {
LABEL_314:
                                    if (v123)
                                    {
                                      LODWORD(v127) = HIDWORD(v98) - v98;
                                      if (__OFSUB__(HIDWORD(v98), v98))
                                      {
                                        goto LABEL_394;
                                      }

                                      v127 = v127;
                                    }

                                    else
                                    {
                                      v127 = BYTE6(v65);
                                    }

                                    goto LABEL_318;
                                  }

LABEL_301:
                                  if (v123 != 2)
                                  {
                                    v130 = v154;
                                    v131 = v155;
                                    v132 = v156;
                                    if (v124)
                                    {
                                      goto LABEL_381;
                                    }

                                    goto LABEL_333;
                                  }

                                  v126 = *(v98 + 16);
                                  v125 = *(v98 + 24);
                                  v38 = __OFSUB__(v125, v126);
                                  v127 = v125 - v126;
                                  if (v38)
                                  {
                                    goto LABEL_395;
                                  }

LABEL_318:
                                  if (v124 != v127)
                                  {
                                    goto LABEL_381;
                                  }

                                  if (v124 >= 1)
                                  {
                                    if (v122 > 1)
                                    {
                                      if (v122 != 2)
                                      {
                                        *&v173[6] = 0;
                                        *v173 = 0;
                                        sub_1B03B2000(v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
                                        sub_1B03B2000(v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
                                        sub_1B0AE2440(v173, v98, v65 & 0xDFFFFFFFFFFFFFFFLL, v172);
                                        sub_1B0391D50(v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
                                        sub_1B0391D50(v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
                                        v130 = v154;
                                        v131 = v155;
                                        v132 = v156;
                                        if ((v172[0] & 1) == 0)
                                        {
                                          goto LABEL_381;
                                        }

LABEL_333:
                                        v136 = v132 & 0xCFFFFFFFFFFFFFFFLL;
                                        v137 = v158 >> 62;
                                        v138 = v132 >> 62;
                                        if (v158 >> 62 == 3)
                                        {
                                          v77 = 0;
                                          if (!v130 && (v158 & 0xCFFFFFFFFFFFFFFFLL) == 0xC000000000000000 && v132 >> 62 == 3)
                                          {
                                            v77 = 0;
                                            if (!v131 && v136 == 0xC000000000000000)
                                            {
                                              goto LABEL_365;
                                            }
                                          }
                                        }

                                        else if (v137 > 1)
                                        {
                                          if (v137 != 2)
                                          {
                                            v77 = 0;
                                            if (v138 <= 1)
                                            {
LABEL_356:
                                              if (v138)
                                              {
                                                LODWORD(v141) = HIDWORD(v131) - v131;
                                                if (__OFSUB__(HIDWORD(v131), v131))
                                                {
                                                  goto LABEL_396;
                                                }

                                                v141 = v141;
                                              }

                                              else
                                              {
                                                v141 = BYTE6(v132);
                                              }

LABEL_360:
                                              if (v77 != v141)
                                              {
                                                goto LABEL_381;
                                              }

                                              if (v77 < 1)
                                              {
                                                goto LABEL_365;
                                              }

                                              if (v137 > 1)
                                              {
                                                if (v137 == 2)
                                                {
                                                  v144 = *(v130 + 16);
                                                  v145 = *(v130 + 24);
                                                  sub_1B03B2000(v131, v132 & 0xCFFFFFFFFFFFFFFFLL);
                                                  sub_1B03B2000(v131, v136);
                                                  sub_1B03B2000(v131, v136);
                                                  v146 = v158 & 0xFFFFFFFFFFFFFFFLL;
                                                  goto LABEL_372;
                                                }

                                                *&v173[6] = 0;
                                                *v173 = 0;
                                                sub_1B03B2000(v131, v132 & 0xCFFFFFFFFFFFFFFFLL);
                                                sub_1B03B2000(v131, v136);
                                              }

                                              else
                                              {
                                                if (v137)
                                                {
                                                  v144 = v130;
                                                  v145 = v130 >> 32;
                                                  if (v130 >> 32 < v130)
                                                  {
                                                    goto LABEL_424;
                                                  }

                                                  sub_1B03B2000(v131, v132 & 0xCFFFFFFFFFFFFFFFLL);
                                                  sub_1B03B2000(v131, v136);
                                                  sub_1B03B2000(v131, v136);
                                                  v146 = v158 & 0xFFFFFFFFFFFFFFFLL;
LABEL_372:
                                                  v103 = sub_1B0AB87A0(v144, v145, v146, v131, v136);
                                                  sub_1B0391D50(v131, v136);
                                                  sub_1B070BB30(&v179);
                                                  sub_1B070BB30(&v174);
                                                  sub_1B0391D50(v131, v136);
                                                  v104 = v131;
                                                  v105 = v136;
LABEL_373:
                                                  sub_1B0391D50(v104, v105);
                                                  i = v170;
                                                  if ((v103 & 1) == 0)
                                                  {
                                                    goto LABEL_380;
                                                  }

                                                  goto LABEL_378;
                                                }

                                                *v173 = v130;
                                                *&v173[8] = v158;
                                                *&v173[10] = *(&v158 + 2);
                                                sub_1B03B2000(v131, v132 & 0xCFFFFFFFFFFFFFFFLL);
                                                sub_1B03B2000(v131, v136);
                                              }

                                              sub_1B0AE2440(v173, v131, v136, v172);
                                              sub_1B070BB30(&v179);
                                              sub_1B070BB30(&v174);
                                              sub_1B0391D50(v131, v136);
                                              v84 = v131;
                                              v106 = v136;
LABEL_377:
                                              sub_1B0391D50(v84, v106);
                                              i = v170;
                                              if ((v172[0] & 1) == 0)
                                              {
                                                goto LABEL_380;
                                              }

                                              goto LABEL_378;
                                            }

LABEL_343:
                                            if (v138 != 2)
                                            {
LABEL_347:
                                              if (v77)
                                              {
                                                goto LABEL_381;
                                              }

LABEL_365:
                                              sub_1B070BB30(&v179);
                                              sub_1B070BB30(&v174);
                                              i = v170;
                                              goto LABEL_378;
                                            }

                                            v140 = *(v131 + 16);
                                            v139 = *(v131 + 24);
                                            v38 = __OFSUB__(v139, v140);
                                            v141 = v139 - v140;
                                            if (v38)
                                            {
                                              goto LABEL_397;
                                            }

                                            goto LABEL_360;
                                          }

                                          v143 = *(v130 + 16);
                                          v142 = *(v130 + 24);
                                          v38 = __OFSUB__(v142, v143);
                                          v77 = v142 - v143;
                                          if (v38)
                                          {
                                            goto LABEL_412;
                                          }
                                        }

                                        else
                                        {
                                          if (!v137)
                                          {
                                            v77 = BYTE6(v158);
                                            if (v138 <= 1)
                                            {
                                              goto LABEL_356;
                                            }

                                            goto LABEL_343;
                                          }

                                          LODWORD(v77) = HIDWORD(v130) - v130;
                                          if (__OFSUB__(HIDWORD(v130), v130))
                                          {
                                            goto LABEL_413;
                                          }

                                          v77 = v77;
                                        }

                                        if (v138 <= 1)
                                        {
                                          goto LABEL_356;
                                        }

                                        goto LABEL_343;
                                      }

                                      v133 = *(v157 + 16);
                                      v134 = *(v157 + 24);
                                    }

                                    else
                                    {
                                      if (!v122)
                                      {
                                        *v173 = v157;
                                        *&v173[8] = v14;
                                        v173[10] = BYTE2(v14);
                                        v173[11] = BYTE3(v14);
                                        v173[12] = BYTE4(v14);
                                        v173[13] = BYTE5(v14);
                                        sub_1B03B2000(v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
                                        sub_1B03B2000(v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
                                        sub_1B0AE2440(v173, v98, v65 & 0xDFFFFFFFFFFFFFFFLL, v172);
                                        sub_1B0391D50(v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
                                        sub_1B0391D50(v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
                                        v130 = v154;
                                        v131 = v155;
                                        v132 = v156;
                                        if ((v172[0] & 1) == 0)
                                        {
                                          goto LABEL_381;
                                        }

                                        goto LABEL_333;
                                      }

                                      v133 = v157;
                                      v134 = v157 >> 32;
                                      if (v157 >> 32 < v157)
                                      {
                                        goto LABEL_423;
                                      }
                                    }

                                    sub_1B03B2000(v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
                                    sub_1B03B2000(v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
                                    sub_1B03B2000(v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
                                    v135 = sub_1B0AB87A0(v133, v134, v14 & 0x1FFFFFFFFFFFFFFFLL, v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
                                    sub_1B0391D50(v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
                                    sub_1B0391D50(v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
                                    sub_1B0391D50(v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
                                    v130 = v154;
                                    v131 = v155;
                                    v132 = v156;
                                    if ((v135 & 1) == 0)
                                    {
                                      goto LABEL_381;
                                    }

                                    goto LABEL_333;
                                  }

LABEL_324:
                                  v130 = v154;
                                  v131 = v155;
                                  v132 = v156;
                                  goto LABEL_333;
                                }

                                v129 = *(v157 + 16);
                                v128 = *(v157 + 24);
                                v38 = __OFSUB__(v128, v129);
                                v124 = v128 - v129;
                                if (v38)
                                {
                                  goto LABEL_410;
                                }
                              }

                              else
                              {
                                if (!v122)
                                {
                                  v124 = BYTE6(v14);
                                  if (v123 <= 1)
                                  {
                                    goto LABEL_314;
                                  }

                                  goto LABEL_301;
                                }

                                LODWORD(v124) = HIDWORD(v157) - v157;
                                if (__OFSUB__(HIDWORD(v157), v157))
                                {
                                  goto LABEL_411;
                                }

                                v124 = v124;
                              }

                              if (v123 <= 1)
                              {
                                goto LABEL_314;
                              }

                              goto LABEL_301;
                            }

                            *v173 = v160;
                            *&v173[8] = v99;
                            v173[10] = BYTE2(v99);
                            v173[11] = BYTE3(v99);
                            v173[12] = BYTE4(v99);
                            v173[13] = BYTE5(v99);
                            sub_1B03B2000(v161, v92);
                            sub_1B03B2000(v161, v92);
                            sub_1B0AE2440(v173, v161, v92, v172);
                            sub_1B0391D50(v161, v92);
                            v119 = v161;
                          }

                          sub_1B0391D50(v119, v92);
                          if ((v172[0] & 1) == 0)
                          {
                            goto LABEL_381;
                          }

                          goto LABEL_291;
                        }

                        v118 = *(v160 + 16);
                        v117 = *(v160 + 24);
                        v38 = __OFSUB__(v117, v118);
                        v113 = v117 - v118;
                        if (v38)
                        {
                          goto LABEL_409;
                        }
                      }

                      else
                      {
                        if (!v111)
                        {
                          v113 = BYTE6(v99);
                          if (v112 <= 1)
                          {
                            goto LABEL_272;
                          }

                          goto LABEL_259;
                        }

                        LODWORD(v113) = HIDWORD(v160) - v160;
                        if (__OFSUB__(HIDWORD(v160), v160))
                        {
                          goto LABEL_408;
                        }

                        v113 = v113;
                      }

                      if (v112 <= 1)
                      {
                        goto LABEL_272;
                      }

                      goto LABEL_259;
                    }

LABEL_235:
                    v98 = v159;
                    v99 = v162;
                    goto LABEL_249;
                  }

LABEL_212:
                  if (v90 != 2)
                  {
                    v98 = v159;
                    v99 = v162;
                    if (v91)
                    {
                      goto LABEL_381;
                    }

                    goto LABEL_249;
                  }

                  v94 = *(v164 + 16);
                  v93 = *(v164 + 24);
                  v38 = __OFSUB__(v93, v94);
                  v95 = v93 - v94;
                  if (v38)
                  {
                    goto LABEL_391;
                  }

                  goto LABEL_229;
                }

                v97 = *(v13 + 16);
                v96 = *(v13 + 24);
                v38 = __OFSUB__(v96, v97);
                v91 = v96 - v97;
                if (v38)
                {
                  goto LABEL_406;
                }
              }

              else
              {
                if (!v89)
                {
                  v91 = BYTE6(v12);
                  if (v90 <= 1)
                  {
                    goto LABEL_225;
                  }

                  goto LABEL_212;
                }

                LODWORD(v91) = HIDWORD(v13) - v13;
                if (__OFSUB__(HIDWORD(v13), v13))
                {
                  goto LABEL_407;
                }

                v91 = v91;
              }
            }

            if (v90 <= 1)
            {
              goto LABEL_225;
            }

            goto LABEL_212;
          }

          v150 = *&v180[8];
          v151 = *(&v175 + 1);
          v66 = *(v174 + 16);
          v148 = *(v174 + 24);
          sub_1B069506C(&v179, v173);
          sub_1B069506C(&v174, v173);
          v67 = sub_1B0E42A98();
          if (v67)
          {
            v68 = sub_1B0E42AC8();
            if (__OFSUB__(v66, v68))
            {
              goto LABEL_427;
            }

            v67 += v66 - v68;
          }

          if (__OFSUB__(v148, v66))
          {
            goto LABEL_417;
          }
        }

        else
        {
          v150 = *&v180[8];
          if (!v33)
          {
            v172[0] = v174;
            LODWORD(v172[1]) = DWORD2(v174);
            WORD2(v172[1]) = WORD6(v174);
            v62 = *(&v179 + 1);
            v63 = v179;
            sub_1B069506C(&v179, v173);
            sub_1B069506C(&v174, v173);
            sub_1B0AE2440(v172, v63, v62, v173);
            v64 = v173[0];
            goto LABEL_199;
          }

          v149 = v179;
          v151 = *(&v175 + 1);
          v87 = v174;
          if (v174 >> 32 < v174)
          {
            goto LABEL_414;
          }

          sub_1B069506C(&v179, v173);
          sub_1B069506C(&v174, v173);
          v67 = sub_1B0E42A98();
          if (v67)
          {
            v88 = sub_1B0E42AC8();
            if (__OFSUB__(v87, v88))
            {
              goto LABEL_428;
            }

            v67 += v87 - v88;
          }
        }

        sub_1B0E42AB8();
        sub_1B0AE2440(v67, v149, *(&v149 + 1), v173);
        v64 = v173[0];
        v12 = v151;
LABEL_199:
        v65 = v31;
        v32 = v150;
        if ((v64 & 1) == 0)
        {
          goto LABEL_381;
        }

        goto LABEL_202;
      }

      v52 = *(v174 + 16);
      v51 = *(v174 + 24);
      v38 = __OFSUB__(v51, v52);
      v35 = v51 - v52;
      if (v38)
      {
        goto LABEL_401;
      }
    }

    else
    {
      if (!v33)
      {
        v35 = BYTE14(v174);
        if (v34 <= 1)
        {
          goto LABEL_122;
        }

        goto LABEL_54;
      }

      LODWORD(v35) = DWORD1(v174) - v174;
      if (__OFSUB__(DWORD1(v174), v174))
      {
        goto LABEL_403;
      }

      v35 = v35;
    }

    if (v34 <= 1)
    {
      goto LABEL_122;
    }

    goto LABEL_54;
  }

LABEL_380:
  v147 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B0CCCB7C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && result != a2)
  {
    v3 = 0;
    v4 = result + 32;
    v5 = a2 + 32;
    v44 = a2 + 32;
    v45 = result + 32;
    while (1)
    {
      if (v3 == v2)
      {
        __break(1u);
        __break(1u);
LABEL_69:
        __break(1u);
        return result;
      }

      v6 = v4 + 96 * v3;
      v7 = (v5 + 96 * v3);
      if (*(v6 + 8) != v7[1])
      {
        return 0;
      }

      v8 = *v6;
      v9 = *v7;
      v10 = *(*v6 + 16);
      if (v10 != *(*v7 + 16))
      {
        return 0;
      }

      v11 = *(v6 + 16);
      v12 = *(v6 + 24);
      v13 = *(v6 + 32);
      v14 = *(v6 + 36);
      v15 = *(v6 + 40);
      v16 = *(v6 + 48);
      v17 = *(v6 + 56);
      v18 = *(v6 + 64);
      v19 = *(v6 + 72);
      result = *(v6 + 80);
      v20 = *(v6 + 84);
      v21 = *(v6 + 88);
      v22 = v7[2];
      v23 = *(v7 + 6);
      v24 = *(v7 + 8);
      v25 = *(v7 + 36);
      v26 = v7[5];
      v27 = *(v7 + 48);
      v28 = v7[7];
      v29 = *(v7 + 64);
      v30 = v7[9];
      v31 = *(v7 + 20);
      v46 = *(v7 + 21);
      v32 = *(v7 + 88);
      if (v10)
      {
        if (v8 != v9)
        {
          break;
        }
      }

LABEL_13:
      if ((v12 | (v12 << 32)) != (v23 | (v23 << 32)))
      {
        return 0;
      }

      v35 = *(v11 + 16);
      if (v35 != *(v22 + 16))
      {
        return 0;
      }

      if (v35 && v11 != v22)
      {
        v36 = (v11 + 32);
        v37 = (v22 + 32);
        while (*v36 == *v37)
        {
          ++v36;
          ++v37;
          if (!--v35)
          {
            goto LABEL_20;
          }
        }

        return 0;
      }

LABEL_20:
      if (v14)
      {
        if (!v25)
        {
          return 0;
        }
      }

      else
      {
        if (v13 == v24)
        {
          v38 = v25;
        }

        else
        {
          v38 = 1;
        }

        if (v38)
        {
          return 0;
        }
      }

      if (v16)
      {
        if (!v27)
        {
          return 0;
        }
      }

      else
      {
        if (v26 == v15)
        {
          v39 = v27;
        }

        else
        {
          v39 = 1;
        }

        if (v39)
        {
          return 0;
        }
      }

      if (v18)
      {
        if ((v29 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v29)
        {
          return 0;
        }

        if ((v28 | v17) < 0)
        {
          goto LABEL_69;
        }

        if (v28 != v17)
        {
          return 0;
        }
      }

      if (v19)
      {
        if (v19 == 1)
        {
          if (v30 != 1)
          {
            return 0;
          }
        }

        else if (v19 == 2)
        {
          if (v30 != 2)
          {
            return 0;
          }
        }

        else
        {
          if (v30 < 3)
          {
            return 0;
          }

          if ((result | (result << 32)) != (v31 | (v31 << 32)))
          {
            return 0;
          }

          v40 = *(v19 + 16);
          if (v40 != *(v30 + 16))
          {
            return 0;
          }

          if (v40 && v19 != v30)
          {
            v41 = (v19 + 32);
            v42 = (v30 + 32);
            while (*v41 == *v42)
            {
              ++v41;
              ++v42;
              if (!--v40)
              {
                goto LABEL_57;
              }
            }

            return 0;
          }
        }
      }

      else if (v30)
      {
        return 0;
      }

LABEL_57:
      if (v21)
      {
        v5 = v44;
        v4 = v45;
        if (!v32)
        {
          return 0;
        }
      }

      else
      {
        if (v20 == v46)
        {
          v43 = v32;
        }

        else
        {
          v43 = 1;
        }

        v5 = v44;
        v4 = v45;
        if (v43)
        {
          return 0;
        }
      }

      ++v3;
      result = 1;
      if (v3 == v2)
      {
        return result;
      }
    }

    v33 = (v8 + 32);
    v34 = (v9 + 32);
    while (*v33 == *v34)
    {
      ++v33;
      ++v34;
      if (!--v10)
      {
        goto LABEL_13;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1B0CCCE50(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  if (*(a2 + 32) != *(a1 + 32))
  {
    return 0;
  }

  v3 = 0;
  do
  {
    if (*(a1 + v3 + 48) == 1)
    {
      if (!*(a2 + v3 + 48))
      {
        return 0;
      }
    }

    else if ((*(a2 + v3 + 48) & 1) != 0 || *(a1 + v3 + 40) != *(a2 + v3 + 40))
    {
      return 0;
    }

    if ((*(a1 + v3 + 49) ^ *(a2 + v3 + 49)))
    {
      break;
    }

    if (!--v2)
    {
      return 1;
    }

    v4 = a1 + v3;
    v5 = a2 + v3;
    v3 += 24;
  }

  while (*(v5 + 56) == *(v4 + 56));
  return 0;
}

uint64_t sub_1B0CCCF10(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v6 = *v3++;
        v5 = v6;
        v7 = *v4++;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v8 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v5);

        if ((v8 & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void sub_1B0CCCFC8(uint64_t a1, uint64_t a2)
{
  __s2[2] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16) || !v2 || a1 == a2)
  {
LABEL_114:
    v59 = *MEMORY[0x1E69E9840];
    return;
  }

  v3 = 0;
  v4 = (a1 + 40);
  v5 = (a2 + 40);
  while (1)
  {
    v7 = *(v4 - 1);
    v6 = *v4;
    v8 = *(v5 - 1);
    v9 = *v5;
    v10 = *v4 >> 62;
    v11 = *v5 >> 62;
    if (v10 == 3)
    {
      if (v7)
      {
        v12 = 0;
      }

      else
      {
        v12 = v6 == 0xC000000000000000;
      }

      v13 = 0;
      v14 = v12 && *v5 >> 62 == 3;
      if (v14 && !v8 && v9 == 0xC000000000000000)
      {
        goto LABEL_6;
      }

LABEL_28:
      if (v11 <= 1)
      {
        goto LABEL_29;
      }

      goto LABEL_22;
    }

    if (v10 > 1)
    {
      if (v10 == 2)
      {
        v20 = *(v7 + 16);
        v19 = *(v7 + 24);
        v17 = __OFSUB__(v19, v20);
        v13 = v19 - v20;
        if (v17)
        {
          goto LABEL_117;
        }

        goto LABEL_28;
      }

      v13 = 0;
      if (v11 <= 1)
      {
        goto LABEL_29;
      }
    }

    else if (v10)
    {
      LODWORD(v13) = HIDWORD(v7) - v7;
      if (__OFSUB__(HIDWORD(v7), v7))
      {
        goto LABEL_118;
      }

      v13 = v13;
      if (v11 <= 1)
      {
LABEL_29:
        if (v11)
        {
          LODWORD(v18) = HIDWORD(v8) - v8;
          if (__OFSUB__(HIDWORD(v8), v8))
          {
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
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
          }

          v18 = v18;
        }

        else
        {
          v18 = BYTE6(v9);
        }

        goto LABEL_33;
      }
    }

    else
    {
      v13 = BYTE6(v6);
      if (v11 <= 1)
      {
        goto LABEL_29;
      }
    }

LABEL_22:
    if (v11 != 2)
    {
      if (v13)
      {
        goto LABEL_114;
      }

      goto LABEL_6;
    }

    v16 = *(v8 + 16);
    v15 = *(v8 + 24);
    v17 = __OFSUB__(v15, v16);
    v18 = v15 - v16;
    if (v17)
    {
      goto LABEL_116;
    }

LABEL_33:
    if (v13 != v18)
    {
      goto LABEL_114;
    }

    if (v13 < 1)
    {
      goto LABEL_6;
    }

    if (v10 <= 1)
    {
      v65 = *(v5 - 1);
      if (!v10)
      {
        __s2[0] = *(v4 - 1);
        LOWORD(__s2[1]) = v6;
        BYTE2(__s2[1]) = BYTE2(v6);
        BYTE3(__s2[1]) = BYTE3(v6);
        BYTE4(__s2[1]) = BYTE4(v6);
        BYTE5(__s2[1]) = BYTE5(v6);
        sub_1B03B2000(v7, v6);
        sub_1B03B2000(v65, v9);
        sub_1B0AE2440(__s2, v65, v9, &v66);
        v21 = v65;
        goto LABEL_52;
      }

      v63 = v3;
      v26 = v7;
      if (v7 > v7 >> 32)
      {
        goto LABEL_119;
      }

      v64 = *(v4 - 1);
      sub_1B03B2000(v7, v6);
      sub_1B03B2000(v65, v9);
      v27 = sub_1B0E42A98();
      if (v27)
      {
        v28 = v27;
        v29 = sub_1B0E42AC8();
        if (__OFSUB__(v26, v29))
        {
          goto LABEL_121;
        }

        __s1a = (v26 - v29 + v28);
      }

      else
      {
        __s1a = 0;
      }

      sub_1B0E42AB8();
      v30 = v64;
      if (v11 == 2)
      {
        v47 = *(v65 + 16);
        v48 = *(v65 + 24);
        v36 = sub_1B0E42A98();
        if (v36)
        {
          v49 = sub_1B0E42AC8();
          if (__OFSUB__(v47, v49))
          {
            goto LABEL_128;
          }

          v36 += v47 - v49;
        }

        v17 = __OFSUB__(v48, v47);
        v50 = v48 - v47;
        if (v17)
        {
          goto LABEL_125;
        }

        v51 = sub_1B0E42AB8();
        if (v51 >= v50)
        {
          v39 = v50;
        }

        else
        {
          v39 = v51;
        }

        v40 = __s1a;
        v3 = v63;
        if (!__s1a)
        {
          goto LABEL_136;
        }

        if (!v36)
        {
          goto LABEL_135;
        }
      }

      else
      {
        v12 = v11 == 1;
        v31 = v65;
        if (!v12)
        {
          v46 = __s1a;
          __s2[0] = v65;
          LOWORD(__s2[1]) = v9;
          BYTE2(__s2[1]) = BYTE2(v9);
          BYTE3(__s2[1]) = BYTE3(v9);
          BYTE4(__s2[1]) = BYTE4(v9);
          BYTE5(__s2[1]) = BYTE5(v9);
          if (!__s1a)
          {
            goto LABEL_130;
          }

LABEL_94:
          v52 = memcmp(v46, __s2, BYTE6(v9));
          sub_1B0391D50(v31, v9);
          sub_1B0391D50(v30, v6);
          if (v52)
          {
            goto LABEL_114;
          }

          goto LABEL_6;
        }

        if (v65 >> 32 < v65)
        {
          goto LABEL_124;
        }

        v36 = sub_1B0E42A98();
        if (v36)
        {
          v37 = sub_1B0E42AC8();
          if (__OFSUB__(v65, v37))
          {
            goto LABEL_129;
          }

          v36 += v65 - v37;
        }

        v38 = sub_1B0E42AB8();
        if (v38 >= (v65 >> 32) - v65)
        {
          v39 = (v65 >> 32) - v65;
        }

        else
        {
          v39 = v38;
        }

        v40 = __s1a;
        if (!__s1a)
        {
          goto LABEL_138;
        }

        if (!v36)
        {
          goto LABEL_137;
        }
      }

      goto LABEL_102;
    }

    if (v10 != 2)
    {
      memset(__s2, 0, 14);
      sub_1B03B2000(v7, v6);
      sub_1B03B2000(v8, v9);
      sub_1B0AE2440(__s2, v8, v9, &v66);
      v21 = v8;
LABEL_52:
      sub_1B0391D50(v21, v9);
      sub_1B0391D50(v7, v6);
      if (!v66)
      {
        goto LABEL_114;
      }

      goto LABEL_6;
    }

    v62 = v3;
    v64 = *(v4 - 1);
    v22 = *(v7 + 16);
    sub_1B03B2000(v7, v6);
    v65 = v8;
    sub_1B03B2000(v8, v9);
    v23 = sub_1B0E42A98();
    if (v23)
    {
      v24 = v23;
      v25 = sub_1B0E42AC8();
      if (__OFSUB__(v22, v25))
      {
        goto LABEL_120;
      }

      __s1 = (v22 - v25 + v24);
    }

    else
    {
      __s1 = 0;
    }

    sub_1B0E42AB8();
    v30 = v64;
    if (v11 != 2)
    {
      break;
    }

    v41 = *(v8 + 16);
    v42 = *(v8 + 24);
    v43 = sub_1B0E42A98();
    if (v43)
    {
      v3 = v43;
      v44 = sub_1B0E42AC8();
      if (__OFSUB__(v41, v44))
      {
        goto LABEL_126;
      }

      v36 = v3 + v41 - v44;
      v17 = __OFSUB__(v42, v41);
      v45 = v42 - v41;
      if (v17)
      {
        goto LABEL_123;
      }
    }

    else
    {
      v36 = 0;
      v17 = __OFSUB__(v42, v41);
      v45 = v42 - v41;
      if (v17)
      {
        goto LABEL_123;
      }
    }

    v53 = sub_1B0E42AB8();
    if (v53 >= v45)
    {
      v39 = v45;
    }

    else
    {
      v39 = v53;
    }

    v40 = __s1;
    if (!__s1)
    {
      goto LABEL_134;
    }

    v3 = v62;
    if (!v36)
    {
      goto LABEL_133;
    }

LABEL_102:
    if (v40 == v36)
    {
      goto LABEL_111;
    }

    v54 = v39;
    v55 = v36;
LABEL_113:
    v58 = memcmp(v40, v55, v54);
    sub_1B0391D50(v65, v9);
    sub_1B0391D50(v64, v6);
    if (v58)
    {
      goto LABEL_114;
    }

LABEL_6:
    v4 += 2;
    v5 += 2;
    if (!--v2)
    {
      goto LABEL_114;
    }
  }

  v12 = v11 == 1;
  v31 = v8;
  if (v12)
  {
    if (v8 >> 32 < v8)
    {
      goto LABEL_122;
    }

    v32 = sub_1B0E42A98();
    if (v32)
    {
      v33 = v32;
      v34 = sub_1B0E42AC8();
      if (__OFSUB__(v8, v34))
      {
        goto LABEL_127;
      }

      v35 = (v8 - v34 + v33);
    }

    else
    {
      v35 = 0;
    }

    v3 = v62;
    v56 = sub_1B0E42AB8();
    if (v56 >= (v8 >> 32) - v8)
    {
      v57 = (v8 >> 32) - v8;
    }

    else
    {
      v57 = v56;
    }

    v40 = __s1;
    if (!__s1)
    {
      goto LABEL_132;
    }

    if (!v35)
    {
      goto LABEL_131;
    }

    if (__s1 == v35)
    {
LABEL_111:
      sub_1B0391D50(v65, v9);
      sub_1B0391D50(v64, v6);
      goto LABEL_6;
    }

    v54 = v57;
    v55 = v35;
    goto LABEL_113;
  }

  v46 = __s1;
  __s2[0] = v8;
  LOWORD(__s2[1]) = v9;
  BYTE2(__s2[1]) = BYTE2(v9);
  BYTE3(__s2[1]) = BYTE3(v9);
  BYTE4(__s2[1]) = BYTE4(v9);
  BYTE5(__s2[1]) = BYTE5(v9);
  if (__s1)
  {
    goto LABEL_94;
  }

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
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);

  __break(1u);
}

uint64_t sub_1B0CCD6F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  for (i = 0; ; i += 32)
  {
    result = 0;
    v7 = a1 + i;
    v8 = a2 + i;
    if (*(a2 + i + 32) != *(a1 + i + 32) || ((*(v7 + 36) ^ *(v8 + 36)) & 1) != 0 || ((*(v7 + 37) ^ *(v8 + 37)) & 1) != 0 || ((*(v7 + 38) ^ *(v8 + 38)) & 1) != 0 || ((*(v7 + 39) ^ *(v8 + 39)) & 1) != 0 || ((*(v7 + 40) ^ *(v8 + 40)) & 1) != 0 || ((*(v7 + 41) ^ *(v8 + 41)) & 1) != 0 || *(v7 + 42) != *(v8 + 42) || *(v7 + 43) != *(v8 + 43) || ((*(v7 + 44) ^ *(v8 + 44)) & 1) != 0)
    {
      break;
    }

    v9 = *(v7 + 45);
    v10 = *(v8 + 45);
    if (v9 == 2)
    {
      if (v10 != 2)
      {
        return 0;
      }
    }

    else
    {
      if (v10 == 2)
      {
        return 0;
      }

      result = 0;
      v11 = v9 ^ v10;
      if ((v9 ^ v10))
      {
        return result;
      }

      v12 = (v10 & 0x100) == 0;
      v13 = (v10 & 0x10000) == 0;
      v14 = (v10 & 0x1000000) == 0;
      v15 = (v10 & 0x100000000) == 0;
      v16 = (v10 & 0x10000000000) == 0;
      if (((v9 >> 8) & 1) == v12 || ((v9 >> 16) & 1) == v13 || ((v9 >> 24) & 1) == v14 || (BYTE4(v9) & 1) == v15 || ((v9 >> 40) & 1) == v16 || HIWORD(v11))
      {
        return result;
      }

      if ((*(v7 + 53) ^ *(v8 + 53)))
      {
        return 0;
      }
    }

    if ((sub_1B03B6298(*(v7 + 56), *(v8 + 56)) & 1) == 0)
    {
      return 0;
    }

    if (!--v2)
    {
      return 1;
    }
  }

  return result;
}

void sub_1B0CCD8D8(uint64_t a1, uint64_t a2)
{
  v44[3] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = 0;
    v4 = 0;
    v5 = a1 + 32;
    v6 = a2 + 32;
    while (1)
    {
      if (v3 == v2)
      {
        goto LABEL_69;
      }

      v7 = (v5 + 40 * v3);
      v8 = (v6 + 40 * v3);
      if (*v7 != *v8)
      {
        goto LABEL_67;
      }

      if (*(v8 + 1) != *(v7 + 1))
      {
        goto LABEL_67;
      }

      if ((*(v7 + 4) | (*(v7 + 4) << 32)) != (*(v8 + 4) | (*(v8 + 4) << 32)))
      {
        goto LABEL_67;
      }

      v9 = *(v7 + 1);
      v10 = *(v8 + 1);
      v11 = *(v9 + 16);
      if (v11 != *(v10 + 16))
      {
        goto LABEL_67;
      }

      v13 = *(v7 + 3);
      v12 = *(v7 + 4);
      v14 = *(v8 + 3);
      v15 = *(v8 + 4);
      if (v11)
      {
        v16 = v9 == v10;
      }

      else
      {
        v16 = 1;
      }

      if (!v16)
      {
        v17 = (v9 + 32);
        v18 = (v10 + 32);
        while (v11)
        {
          if (*v17 != *v18)
          {
            goto LABEL_67;
          }

          ++v17;
          ++v18;
          if (!--v11)
          {
            goto LABEL_21;
          }
        }

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
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
      }

LABEL_21:
      v19 = v12 >> 62;
      v20 = v15 >> 62;
      if (v12 >> 62 == 3)
      {
        break;
      }

      if (v19 > 1)
      {
        if (v19 == 2)
        {
          v27 = *(v13 + 16);
          v26 = *(v13 + 24);
          v24 = __OFSUB__(v26, v27);
          v21 = v26 - v27;
          if (v24)
          {
            goto LABEL_73;
          }

          goto LABEL_37;
        }

        v21 = 0;
        if (v20 <= 1)
        {
          goto LABEL_38;
        }
      }

      else if (v19)
      {
        LODWORD(v21) = HIDWORD(v13) - v13;
        if (__OFSUB__(HIDWORD(v13), v13))
        {
          goto LABEL_72;
        }

        v21 = v21;
        if (v20 <= 1)
        {
LABEL_38:
          if (v20)
          {
            LODWORD(v25) = HIDWORD(v14) - v14;
            if (__OFSUB__(HIDWORD(v14), v14))
            {
              goto LABEL_71;
            }

            v25 = v25;
          }

          else
          {
            v25 = BYTE6(v15);
          }

          goto LABEL_42;
        }
      }

      else
      {
        v21 = BYTE6(v12);
        if (v20 <= 1)
        {
          goto LABEL_38;
        }
      }

LABEL_31:
      if (v20 != 2)
      {
        if (v21)
        {
          goto LABEL_67;
        }

        goto LABEL_7;
      }

      v23 = *(v14 + 16);
      v22 = *(v14 + 24);
      v24 = __OFSUB__(v22, v23);
      v25 = v22 - v23;
      if (v24)
      {
        goto LABEL_70;
      }

LABEL_42:
      if (v21 != v25)
      {
        goto LABEL_67;
      }

      if (v21 < 1)
      {
        goto LABEL_7;
      }

      v42 = v5;
      if (v19 > 1)
      {
        v40 = v14;
        if (v19 == 2)
        {
          v38 = v4;
          v39 = v6;
          v30 = *(v13 + 16);
          v37 = *(v13 + 24);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B03B2000(v13, v12);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B03B2000(v40, v15);
          v31 = sub_1B0E42A98();
          if (v31)
          {
            v32 = sub_1B0E42AC8();
            if (__OFSUB__(v30, v32))
            {
              goto LABEL_76;
            }

            v31 += v30 - v32;
          }

          if (__OFSUB__(v37, v30))
          {
            goto LABEL_75;
          }

          sub_1B0E42AB8();
          v33 = v40;
          v4 = v38;
          sub_1B0AE2440(v31, v40, v15, v44);
          goto LABEL_63;
        }

        memset(v44, 0, 14);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B03B2000(v13, v12);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B03B2000(v40, v15);
        sub_1B0AE2440(v44, v40, v15, &v43);

        sub_1B0391D50(v40, v15);

        sub_1B0391D50(v13, v12);
        v29 = v43;
      }

      else
      {
        v39 = v6;
        if (v19)
        {
          v41 = v14;
          if (v13 >> 32 < v13)
          {
            goto LABEL_74;
          }

          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B03B2000(v13, v12);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B03B2000(v41, v15);
          v34 = sub_1B0E42A98();
          if (v34)
          {
            v35 = sub_1B0E42AC8();
            if (__OFSUB__(v13, v35))
            {
              goto LABEL_77;
            }

            v34 += v13 - v35;
          }

          sub_1B0E42AB8();
          v33 = v41;
          sub_1B0AE2440(v34, v41, v15, v44);
LABEL_63:

          sub_1B0391D50(v33, v15);

          sub_1B0391D50(v13, v12);
          v5 = v42;
          v6 = v39;
          if ((v44[0] & 1) == 0)
          {
            goto LABEL_67;
          }

          goto LABEL_7;
        }

        v44[0] = v13;
        LOWORD(v44[1]) = v12;
        BYTE2(v44[1]) = BYTE2(v12);
        BYTE3(v44[1]) = BYTE3(v12);
        BYTE4(v44[1]) = BYTE4(v12);
        BYTE5(v44[1]) = BYTE5(v12);
        v28 = v14;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B03B2000(v13, v12);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B03B2000(v28, v15);
        sub_1B0AE2440(v44, v28, v15, &v43);

        sub_1B0391D50(v28, v15);

        sub_1B0391D50(v13, v12);
        v29 = v43;
        v6 = v39;
      }

      v5 = v42;
      if (!v29)
      {
        goto LABEL_67;
      }

LABEL_7:
      if (++v3 == v2)
      {
        goto LABEL_67;
      }
    }

    v21 = 0;
    if (!v13 && v12 == 0xC000000000000000 && v15 >> 62 == 3)
    {
      v21 = 0;
      if (!v14 && v15 == 0xC000000000000000)
      {
        goto LABEL_7;
      }
    }

LABEL_37:
    if (v20 <= 1)
    {
      goto LABEL_38;
    }

    goto LABEL_31;
  }

LABEL_67:
  v36 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B0CCDE80(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = a1 + 32;
  result = 1;
  while (v3 != v2)
  {
    v6 = (v4 + 16 * v3);
    v7 = (a2 + 32 + 16 * v3);
    if (v6[1] != v7[1])
    {
      return 0;
    }

    v8 = *v6;
    v9 = *v7;
    v10 = *(*v6 + 16);
    if (v10 != *(v9 + 16))
    {
      return 0;
    }

    if (v10)
    {
      v11 = v8 == v9;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      v12 = (v8 + 32);
      v13 = (v9 + 32);
      while (v10)
      {
        if (*v12 != *v13)
        {
          return 0;
        }

        ++v12;
        ++v13;
        if (!--v10)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
      break;
    }

LABEL_5:
    if (++v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0CCDF48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageMetadata.UnparsedHeader(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v57 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E26A0, &qword_1B0EA2DF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v59 = &v52 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E61F8, &qword_1B0EE39A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v52 - v13;
  v58 = type metadata accessor for MessageMetadata(0);
  v15 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v52 - v20;
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
LABEL_54:
    v50 = 0;
    return v50 & 1;
  }

  if (v22 && a1 != a2)
  {
    v55 = v11;
    v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v24 = a1 + v23;
    v25 = a2 + v23;
    v53 = *(v19 + 72);
    v54 = (v5 + 48);
    v26 = v58;
    while (1)
    {
      sub_1B087363C(v24, v21);
      v56 = v24;
      sub_1B087363C(v25, v17);
      if (*v17 != *v21 || *(v21 + 1) != *(v17 + 1) || v21[16] != v17[16] || ((v21[17] ^ v17[17]) & 1) != 0 || ((v21[18] ^ v17[18]) & 1) != 0 || ((v21[19] ^ v17[19]) & 1) != 0)
      {
        break;
      }

      v27 = v21[20];
      v28 = v21[21];
      v29 = v21[22];
      v30 = v21[23];
      v31 = v21[24];
      v32 = v17[20];
      v33 = v17[21];
      v34 = v17[22];
      v35 = v17[23];
      v36 = v17[24];
      if (v27 == 2)
      {
        if (v32 != 2)
        {
          break;
        }
      }

      else if (v32 == 2 || ((v32 ^ v27) & 1) != 0)
      {
        break;
      }

      if (v28 == 2)
      {
        if (v33 != 2)
        {
          break;
        }
      }

      else if (v33 == 2 || ((v33 ^ v28) & 1) != 0)
      {
        break;
      }

      if (v29 == 3)
      {
        if (v34 != 3)
        {
          break;
        }
      }

      else if (v34 == 3 || v29 != v34)
      {
        break;
      }

      if (v30 == 8)
      {
        if (v35 != 8)
        {
          break;
        }
      }

      else if (v35 == 8 || v30 != v35)
      {
        break;
      }

      if (v31 == 2)
      {
        if (v36 != 2)
        {
          break;
        }
      }

      else if (v36 == 2 || ((v36 ^ v31) & 1) != 0)
      {
        break;
      }

      v37 = *(v21 + 4);
      v38 = *(v17 + 4);
      if (v37)
      {
        if (!v38)
        {
          break;
        }

        v39 = *(v17 + 4);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v40 = sub_1B0AFDF14(v37, v38);

        if ((v40 & 1) == 0)
        {
          break;
        }
      }

      else if (v38)
      {
        break;
      }

      v41 = v26[8];
      v42 = *(v55 + 48);
      sub_1B08768B8(&v21[v41], v14);
      sub_1B08768B8(&v17[v41], &v14[v42]);
      v43 = *v54;
      if ((*v54)(v14, 1, v4) == 1)
      {
        if (v43(&v14[v42], 1, v4) != 1)
        {
          goto LABEL_52;
        }

        sub_1B0398EFC(v14, &qword_1EB6E26A0, &qword_1B0EA2DF0);
      }

      else
      {
        sub_1B08768B8(v14, v59);
        if (v43(&v14[v42], 1, v4) == 1)
        {
          sub_1B0CCEC68(v59, type metadata accessor for MessageMetadata.UnparsedHeader);
LABEL_52:
          sub_1B0398EFC(v14, &qword_1EB6E61F8, &qword_1B0EE39A0);
          break;
        }

        v44 = v59;
        v45 = v4;
        v46 = v57;
        sub_1B075CC98(&v14[v42], v57);
        v47 = static MessageData.BodyData.== infix(_:_:)(v44, v46);
        v48 = v46;
        v4 = v45;
        v26 = v58;
        sub_1B0CCEC68(v48, type metadata accessor for MessageMetadata.UnparsedHeader);
        sub_1B0CCEC68(v44, type metadata accessor for MessageMetadata.UnparsedHeader);
        sub_1B0398EFC(v14, &qword_1EB6E26A0, &qword_1B0EA2DF0);
        if ((v47 & 1) == 0)
        {
          break;
        }
      }

      if (*&v21[v26[9]] != *&v17[v26[9]])
      {
        break;
      }

      v49 = v21[v26[10]] ^ v17[v26[10]];
      sub_1B0CCEC68(v17, type metadata accessor for MessageMetadata);
      sub_1B0CCEC68(v21, type metadata accessor for MessageMetadata);
      if ((v49 & 1) == 0)
      {
        v25 += v53;
        v24 = v56 + v53;
        if (--v22)
        {
          continue;
        }
      }

      v50 = v49 ^ 1;
      return v50 & 1;
    }

    sub_1B0CCEC68(v17, type metadata accessor for MessageMetadata);
    sub_1B0CCEC68(v21, type metadata accessor for MessageMetadata);
    goto LABEL_54;
  }

  v50 = 1;
  return v50 & 1;
}