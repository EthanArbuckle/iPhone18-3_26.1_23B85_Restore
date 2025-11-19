uint64_t sub_1B099045C(uint64_t a1)
{
  v10 = type metadata accessor for MailboxPersistenceHelper.DownloadResult();
  if (!(*(*(v10 - 8) + 48))(a1, 1))
  {
    v1 = sub_1B0E443C8();
    (*(*(v1 - 8) + 8))(a1);
    v8 = (a1 + *(type metadata accessor for InProgressMessageDownload.EMLX() + 20));
    v2 = *v8;

    v3 = v8[1];

    v4 = v8[2];

    v5 = v8[3];

    v6 = v8[4];

    MEMORY[0x1E69E5920](*(a1 + *(v10 + 20)));
  }

  return a1;
}

unint64_t sub_1B0990574()
{
  v2 = qword_1EB6DB1B8;
  if (!qword_1EB6DB1B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E32C0, &unk_1B0EA10C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB1B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B09905FC()
{
  v2 = qword_1EB6E32E8;
  if (!qword_1EB6E32E8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E32E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0990678()
{
  v2 = qword_1EB6DB208;
  if (!qword_1EB6DB208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E32F0, &qword_1B0EA10E8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB208);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0990700(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  sub_1B03B2000(v3, v4);
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  v6 = *(a1 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 24) = v6;
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 36) = *(a1 + 36);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 41) = *(a1 + 41);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 56) = *(a1 + 56);
  v7 = *(a1 + 64);
  MEMORY[0x1E69E5928](v7);
  result = a2;
  *(a2 + 64) = v7;
  return result;
}

void *sub_1B09907DC(void *a1)
{
  sub_1B0391D50(a1[1], a1[2]);
  v1 = a1[3];

  MEMORY[0x1E69E5920](a1[8]);
  return a1;
}

uint64_t sub_1B0990858(uint64_t a1)
{
  if (*(a1 + 16) != 1)
  {
    if (*(a1 + 8) > 1uLL)
    {
      v1 = *(a1 + 8);
    }

    v2 = *(a1 + 16);
  }

  return a1;
}

uint64_t sub_1B09908D4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  return sub_1B094633C(a1);
}

unint64_t sub_1B0990940()
{
  v2 = qword_1EB6DB218;
  if (!qword_1EB6DB218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E32F0, &qword_1B0EA10E8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB218);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B09909C8()
{
  v2 = qword_1EB6DB200;
  if (!qword_1EB6DB200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E32F0, &qword_1B0EA10E8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB200);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0990A50()
{
  v2 = qword_1EB6DB1D8;
  if (!qword_1EB6DB1D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3308, &qword_1B0EA1100);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB1D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0990B0C()
{
  v2 = qword_1EB6DB1E8;
  if (!qword_1EB6DB1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3308, &qword_1B0EA1100);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB1E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0990B94()
{
  v2 = qword_1EB6DB1D0;
  if (!qword_1EB6DB1D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3308, &qword_1B0EA1100);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB1D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0990C1C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  sub_1B03B2000(v3, v4);
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  v5 = *(a1 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 24) = v5;
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 36) = *(a1 + 36);
  v6 = *(a1 + 40);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 40) = v6;
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 88) = *(a1 + 88);
  v8 = *(a1 + 96);
  v9 = *(a1 + 104);

  *(a2 + 96) = v8;
  *(a2 + 104) = v9;
  v10 = *(a1 + 112);
  MEMORY[0x1E69E5928](v10);
  result = a2;
  *(a2 + 112) = v10;
  return result;
}

void *sub_1B0990D34(void *a1)
{
  sub_1B0391D50(a1[1], a1[2]);
  v1 = a1[3];

  v2 = a1[5];

  v3 = a1[13];

  MEMORY[0x1E69E5920](a1[14]);
  return a1;
}

unint64_t sub_1B0990DA0()
{
  v2 = qword_1EB6DBDA0;
  if (!qword_1EB6DBDA0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBDA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0990E78()
{
  v2 = qword_1EB6E3318;
  if (!qword_1EB6E3318)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6E3318);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B0990EDC()
{
  v2 = qword_1EB6E3320;
  if (!qword_1EB6E3320)
  {
    sub_1B0990E78();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3320);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0991014()
{
  v2 = qword_1EB6DB210;
  if (!qword_1EB6DB210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E32F0, &qword_1B0EA10E8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB210);
    return WitnessTable;
  }

  return v2;
}

uint64_t block_copy_helper_3801(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1B09911C8()
{
  v2 = qword_1EB6E3328;
  if (!qword_1EB6E3328)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3328);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0991278(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  sub_1B03B2000(v3, v4);
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  v6 = *(a1 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 24) = v6;
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 36) = *(a1 + 36);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 48) = *(a1 + 48);
  v8 = *(a1 + 56);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *(a2 + 56) = v8;
  return result;
}

unint64_t sub_1B099133C()
{
  v2 = qword_1EB6E3330;
  if (!qword_1EB6E3330)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3330);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B09913B8()
{
  v2 = qword_1EB6E3338;
  if (!qword_1EB6E3338)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3338);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B09914B4()
{
  v2 = qword_1EB6DB1E0;
  if (!qword_1EB6DB1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3308, &qword_1B0EA1100);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB1E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0991658()
{
  v2 = qword_1EB6DB340;
  if (!qword_1EB6DB340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3348, &qword_1B0EA1130);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB340);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B09916E0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  sub_1B03B2000(*a1, v4);
  result = a2;
  *a2 = v3;
  a2[1] = v4;
  return result;
}

unint64_t sub_1B09917BC()
{
  v2 = qword_1EB6DB1C8;
  if (!qword_1EB6DB1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E32C0, &unk_1B0EA10C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB1C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0991844()
{
  v2 = qword_1EB6DB1B0;
  if (!qword_1EB6DB1B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E32C0, &unk_1B0EA10C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB1B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B09918CC()
{
  v2 = qword_1EB6DCC50;
  if (!qword_1EB6DCC50)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DCC50);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0991998(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  v4 = *(a1 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *(a2 + 16) = v4;
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 28) = *(a1 + 28);
  *(a2 + 29) = *(a1 + 29);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = *(a1 + 40);
  return result;
}

uint64_t sub_1B0991A10(uint64_t a1)
{
  v1 = *(a1 + 16);

  v2 = *(a1 + 40);

  return a1;
}

unint64_t sub_1B0991A48()
{
  v2 = qword_1EB6E3370;
  if (!qword_1EB6E3370)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3370);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0991AC4()
{
  v2 = qword_1EB6DBEA8;
  if (!qword_1EB6DBEA8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBEA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0991B40()
{
  v2 = qword_1EB6E3378;
  if (!qword_1EB6E3378)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3378);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0991BBC()
{
  v2 = qword_1EB6DBE70;
  if (!qword_1EB6DBE70)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBE70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0991C38()
{
  v2 = qword_1EB6E3380;
  if (!qword_1EB6E3380)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3380);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0991CB4()
{
  v2 = qword_1EB6DBE88;
  if (!qword_1EB6DBE88)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBE88);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0991D44(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xF9)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 6) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 249;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 7;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1B0991EAC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xF9)
  {
    v5 = ((a3 + 6) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xF9)
  {
    v4 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 6;
    }
  }

  return result;
}

uint64_t sub_1B09920F8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 24)))
      {
        v3 = *(a1 + 24);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B0992210(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_1B0992408(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 24)))
      {
        v3 = *(a1 + 24);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B0992520(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 88) = 0;
    *(result + 96) = 0;
    *(result + 104) = 0;
    *(result + 112) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_1B0992730(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 64))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*(a1 + 24) < 0x100000000uLL)
      {
        v3 = *(a1 + 24);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B0992870(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_1B0992AA0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 16)))
      {
        v3 = *(a1 + 16);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B0992BB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_1B0992DA4(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFC)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 3) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 252;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 4;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1B0992F0C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFC)
  {
    v5 = ((a3 + 3) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFC)
  {
    v4 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_1B0993144()
{
  v2 = qword_1EB6DBE50;
  if (!qword_1EB6DBE50)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBE50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B09931D8()
{
  v2 = qword_1EB6DBE78;
  if (!qword_1EB6DBE78)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBE78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B099326C()
{
  v2 = qword_1EB6DBE80;
  if (!qword_1EB6DBE80)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBE80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0993300()
{
  v2 = qword_1EB6E3388;
  if (!qword_1EB6E3388)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3388);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0993394()
{
  v2 = qword_1EB6DBE60;
  if (!qword_1EB6DBE60)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBE60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0993428()
{
  v2 = qword_1EB6DBE68;
  if (!qword_1EB6DBE68)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBE68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B09934BC()
{
  v2 = qword_1EB6E3390;
  if (!qword_1EB6E3390)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3390);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0993550()
{
  v2 = qword_1EB6DBE98;
  if (!qword_1EB6DBE98)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBE98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B09935E4()
{
  v2 = qword_1EB6DBEA0;
  if (!qword_1EB6DBEA0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBEA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0993678()
{
  v2 = qword_1EB6E3398;
  if (!qword_1EB6E3398)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3398);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B099370C()
{
  v2 = qword_1EB6E33A0;
  if (!qword_1EB6E33A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E33A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B09937A0()
{
  v2 = qword_1EB6E33A8;
  if (!qword_1EB6E33A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E33A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0993834()
{
  v2 = qword_1EB6E33B0;
  if (!qword_1EB6E33B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E33B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B09938B0()
{
  v2 = qword_1EB6DB1F8;
  if (!qword_1EB6DB1F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E33C0, &qword_1B0EA1C88);
    sub_1B0993948();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB1F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0993948()
{
  v2 = qword_1EB6DBE90;
  if (!qword_1EB6DBE90)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBE90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B09939C4()
{
  v2 = qword_1EB6DB1F0;
  if (!qword_1EB6DB1F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E33C8, &qword_1B0EA1C90);
    sub_1B0993A5C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB1F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0993A5C()
{
  v2 = qword_1EB6DBE58;
  if (!qword_1EB6DBE58)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBE58);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B0993AD8(void *a1)
{
  v1 = a1[1];

  v2 = a1[2];

  v3 = a1[3];

  return a1;
}

uint64_t sub_1B0993B54()
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32E0, &qword_1B0EA10E0) - 8);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = (v10 + *(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for InProgressMessageDownload.Completed() - 8);
  v11 = (v9 + 16 + *(v6 + 80)) & ~*(v6 + 80);
  v7 = v11 + *(v6 + 64);
  v1 = _s6LoggerVMa_1();
  v2 = (v7 + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80);
  v3 = v0 + ((v2 + *(*(v1 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1B0938CE4(v0 + v10, *(v0 + v8), *(v0 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + v9), *(v0 + v9 + 8), (v0 + v11), v0 + v2, *v3, *(v3 + 8));
}

uint64_t block_copy_helper_5673(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1B0993DBC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0E443C8();
  (*(*(v2 - 8) + 32))(a2, a1);
  v3 = type metadata accessor for InProgressMessageDownload.EMLX();
  memcpy((a2 + *(v3 + 20)), (a1 + *(v3 + 20)), 0x28uLL);
  v4 = type metadata accessor for MailboxPersistenceHelper.DownloadResult();
  result = a2;
  *(a2 + *(v4 + 20)) = *(a1 + *(v4 + 20));
  *(a2 + *(v4 + 24)) = *(a1 + *(v4 + 24)) & 1;
  return result;
}

uint64_t sub_1B0993EC8(uint64_t a1)
{
  v1 = sub_1B0E443C8();
  (*(*(v1 - 8) + 8))(a1);
  v9 = (a1 + *(type metadata accessor for InProgressMessageDownload.EMLX() + 20));
  v2 = *v9;

  v3 = v9[1];

  v4 = v9[2];

  v5 = v9[3];

  v6 = v9[4];

  v7 = type metadata accessor for MailboxPersistenceHelper.DownloadResult();
  MEMORY[0x1E69E5920](*(a1 + *(v7 + 20)));
  return a1;
}

unint64_t sub_1B0993FE4()
{
  v58 = 0;
  v57 = 0;
  v56[1] = 0;
  v56[0] = 0;
  v42 = 0;
  v51 = 0;
  v50 = 0;
  v46 = sub_1B0E44468();
  v43 = *(v46 - 8);
  v45 = v43;
  v1 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v46 - 8);
  v47 = (&v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = v0;

  v44 = *(v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop);
  v3 = v44;
  v4 = v45;
  *v47 = v44;
  v5 = *MEMORY[0x1E69E8020];
  (*(v4 + 104))();
  v48 = sub_1B0E44488();
  (*(v45 + 8))(v47, v46);
  result = v48;
  if (v48)
  {

    v57 = 0;
    v36 = (v41 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_userVisibleMailboxes);
    v37 = &v55;
    swift_beginAccess();
    v38 = *v36;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_endAccess();
    v54 = v38;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E33E8, &qword_1B0EA1CB8);
    sub_1B03B08D4();
    sub_1B0E45798();
    for (i = v42; ; i = v22)
    {
      v33 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E33F0, &qword_1B0EA1CC0);
      sub_1B0E46518();
      v34 = v52;
      v35 = v53;
      if (!v52)
      {
        break;
      }

      v31 = v34;
      v32 = v35;
      v7 = v33;
      v26 = v35;
      v28 = v34;
      v50 = v34;
      v51 = v35;
      v24 = &v12;
      MEMORY[0x1EEE9AC00](&v12);
      *(&v12 - 2) = &v57;
      v25 = &v12;
      MEMORY[0x1EEE9AC00](&v12);
      v27 = &v12 - 4;
      *(&v12 - 2) = sub_1B09964A4;
      *(&v12 - 1) = v8;
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2B58, &qword_1B0EA1120);
      sub_1B09B4874(v28, v26, sub_1B09964AC, v27, v9, &v49);
      v29 = v7;
      v30 = v7;
      if (v7)
      {
        v14 = 0;

        v23 = v14;
      }

      else
      {
        v23 = 0;
      }

      v22 = v23;
    }

    sub_1B039E440(v56);
    if (v57)
    {
      return v33;
    }

    v10 = v33;
    v11 = MailboxName.inbox.unsafeMutableAddressor();
    v18 = *v11;
    v17 = v18;
    v19 = *(v11 + 2);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B09B21DC(v18, v19, sub_1B099645C, 0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7CA8]);
    v20 = v10;
    v21 = v10;
    if (v10)
    {
      v12 = v21;
      v13 = 0;

      return v13;
    }

    else
    {

      return v20;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0994540(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = sub_1B0829EAC();
  v7 = MailboxName.isInbox.getter(v6, v3);

  if (v7)
  {
    *a3 = 1;
  }

  return sub_1B09945D0();
}

uint64_t sub_1B09945D0()
{
  v301 = 0;
  v341 = 0;
  v340 = 0;
  v339 = 0;
  v338 = 0;
  v336 = 0;
  memset(v335, 0, sizeof(v335));
  v325 = 0;
  v324 = 0u;
  v323 = 0u;
  v300 = 0;
  v302 = sub_1B0E439A8();
  v303 = *(v302 - 8);
  v304 = v303;
  v1 = *(v303 + 64);
  MEMORY[0x1EEE9AC00](0);
  v305 = v127 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v306 = _s6LoggerVMa_1();
  v309 = *(*(v306 - 8) + 64);
  MEMORY[0x1EEE9AC00](v306 - 8);
  v311 = (v309 + 15) & 0xFFFFFFFFFFFFFFF0;
  v307 = v127 - v311;
  MEMORY[0x1EEE9AC00](v127 - v311);
  v308 = v127 - v311;
  MEMORY[0x1EEE9AC00](v3);
  v310 = v127 - v311;
  MEMORY[0x1EEE9AC00](v127 - v311);
  v312 = v127 - v311;
  v341 = v127 - v311;
  v340 = v0;
  v313 = *(v0 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_store);
  v4 = v313;
  v315 = [v313 library];
  v314 = v315;

  if (v315)
  {
    v298 = v314;
  }

  else
  {
    LODWORD(v126) = 0;
    v125 = 40;
    LOBYTE(v123) = 2;
    sub_1B0E465A8();
    __break(1u);
  }

  v210 = v298;
  v208 = *(v299 + 16);
  v5 = v208;
  v6 = sub_1B08725B0(v208);
  v7 = v305;
  v219 = v6;
  v209 = v6;

  v339 = v219;
  sub_1B074B69C(v299 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v312);
  v217 = *(v299 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_mailboxRowID);
  v338 = v217;
  (*(v304 + 16))(v7, v312, v302);
  sub_1B074B69C(v312, v310);
  sub_1B074B69C(v310, v308);
  sub_1B074E41C(v310, v307);
  v8 = (v308 + *(v306 + 20));
  v213 = *v8;
  v214 = *(v8 + 1);
  v215 = *(v8 + 1);
  v216 = *(v8 + 4);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B074B764(v308);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v212 = 36;
  v264 = 7;
  v9 = swift_allocObject();
  v10 = v214;
  v11 = v215;
  v12 = v216;
  v228 = v9;
  *(v9 + 16) = v213;
  *(v9 + 20) = v10;
  *(v9 + 24) = v11;
  *(v9 + 32) = v12;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v13 = swift_allocObject();
  v14 = v214;
  v15 = v215;
  v16 = v216;
  v211 = v13;
  *(v13 + 16) = v213;
  *(v13 + 20) = v14;
  *(v13 + 24) = v15;
  *(v13 + 32) = v16;

  v252 = 32;
  v263 = 32;
  v17 = swift_allocObject();
  v18 = v211;
  v240 = v17;
  *(v17 + 16) = sub_1B074E050;
  *(v17 + 24) = v18;
  sub_1B0394868();
  sub_1B0394868();

  v19 = swift_allocObject();
  v20 = v214;
  v21 = v215;
  v22 = v216;
  v23 = v19;
  v24 = v307;
  v249 = v23;
  *(v23 + 16) = v213;
  *(v23 + 20) = v20;
  *(v23 + 24) = v21;
  *(v23 + 32) = v22;
  sub_1B074B764(v24);
  v268 = 24;
  v218 = swift_allocObject();
  *(v218 + 16) = v217;

  v25 = swift_allocObject();
  v26 = v218;
  v255 = v25;
  *(v25 + 16) = sub_1B06BA324;
  *(v25 + 24) = v26;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v265 = swift_allocObject();
  *(v265 + 16) = v219;
  v297 = sub_1B0E43988();
  v220 = v297;
  v296 = sub_1B0E45908();
  v221 = v296;
  v259 = 17;
  v269 = swift_allocObject();
  v222 = v269;
  v231 = 16;
  *(v269 + 16) = 16;
  v270 = swift_allocObject();
  v223 = v270;
  v238 = 4;
  *(v270 + 16) = 4;
  v27 = swift_allocObject();
  v224 = v27;
  *(v27 + 16) = sub_1B0394C30;
  v234 = 0;
  *(v27 + 24) = 0;
  v28 = swift_allocObject();
  v29 = v224;
  v271 = v28;
  v225 = v28;
  *(v28 + 16) = sub_1B0394C24;
  *(v28 + 24) = v29;
  v272 = swift_allocObject();
  v226 = v272;
  v258 = 0;
  *(v272 + 16) = 0;
  v273 = swift_allocObject();
  v227 = v273;
  *(v273 + 16) = 1;
  v30 = swift_allocObject();
  v31 = v228;
  v229 = v30;
  *(v30 + 16) = sub_1B074DFFC;
  *(v30 + 24) = v31;
  v32 = swift_allocObject();
  v33 = v229;
  v274 = v32;
  v230 = v32;
  *(v32 + 16) = sub_1B039BA88;
  *(v32 + 24) = v33;
  v275 = swift_allocObject();
  v232 = v275;
  *(v275 + 16) = v231;
  v276 = swift_allocObject();
  v233 = v276;
  *(v276 + 16) = v238;
  v34 = swift_allocObject();
  v35 = v234;
  v235 = v34;
  *(v34 + 16) = sub_1B039BB94;
  *(v34 + 24) = v35;
  v36 = swift_allocObject();
  v37 = v235;
  v277 = v36;
  v236 = v36;
  *(v36 + 16) = sub_1B0394C24;
  *(v36 + 24) = v37;
  v278 = swift_allocObject();
  v237 = v278;
  *(v278 + 16) = v258;
  v279 = swift_allocObject();
  v239 = v279;
  *(v279 + 16) = v238;
  v38 = swift_allocObject();
  v39 = v240;
  v241 = v38;
  *(v38 + 16) = sub_1B039BBA0;
  *(v38 + 24) = v39;
  v40 = swift_allocObject();
  v41 = v241;
  v280 = v40;
  v242 = v40;
  *(v40 + 16) = sub_1B039BC08;
  *(v40 + 24) = v41;
  v281 = swift_allocObject();
  v243 = v281;
  *(v281 + 16) = 112;
  v282 = swift_allocObject();
  v244 = v282;
  v261 = 8;
  *(v282 + 16) = 8;
  v245 = swift_allocObject();
  *(v245 + 16) = 0x786F626C69616DLL;
  v42 = swift_allocObject();
  v43 = v245;
  v283 = v42;
  v246 = v42;
  *(v42 + 16) = sub_1B06BA324;
  *(v42 + 24) = v43;
  v284 = swift_allocObject();
  v247 = v284;
  *(v284 + 16) = 37;
  v285 = swift_allocObject();
  v248 = v285;
  *(v285 + 16) = v261;
  v44 = swift_allocObject();
  v45 = v249;
  v250 = v44;
  *(v44 + 16) = sub_1B074E0E4;
  *(v44 + 24) = v45;
  v46 = swift_allocObject();
  v47 = v250;
  v286 = v46;
  v251 = v46;
  *(v46 + 16) = sub_1B039BCF8;
  *(v46 + 24) = v47;
  v287 = swift_allocObject();
  v253 = v287;
  *(v287 + 16) = v252;
  v288 = swift_allocObject();
  v254 = v288;
  *(v288 + 16) = v261;
  v48 = swift_allocObject();
  v49 = v255;
  v256 = v48;
  *(v48 + 16) = sub_1B03FB1CC;
  *(v48 + 24) = v49;
  v50 = swift_allocObject();
  v51 = v256;
  v289 = v50;
  v257 = v50;
  *(v50 + 16) = sub_1B039BCF8;
  *(v50 + 24) = v51;
  v290 = swift_allocObject();
  v260 = v290;
  *(v290 + 16) = v258;
  v291 = swift_allocObject();
  v262 = v291;
  *(v291 + 16) = v261;
  v52 = swift_allocObject();
  v53 = v265;
  v266 = v52;
  *(v52 + 16) = sub_1B0999068;
  *(v52 + 24) = v53;
  v54 = swift_allocObject();
  v55 = v266;
  v294 = v54;
  v267 = v54;
  *(v54 + 16) = sub_1B03B0DF8;
  *(v54 + 24) = v55;
  v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v292 = sub_1B0E46A48();
  v293 = v56;

  v57 = v269;
  v58 = v293;
  *v293 = sub_1B0398F5C;
  v58[1] = v57;

  v59 = v270;
  v60 = v293;
  v293[2] = sub_1B0398F5C;
  v60[3] = v59;

  v61 = v271;
  v62 = v293;
  v293[4] = sub_1B0399178;
  v62[5] = v61;

  v63 = v272;
  v64 = v293;
  v293[6] = sub_1B0398F5C;
  v64[7] = v63;

  v65 = v273;
  v66 = v293;
  v293[8] = sub_1B0398F5C;
  v66[9] = v65;

  v67 = v274;
  v68 = v293;
  v293[10] = sub_1B039BA94;
  v68[11] = v67;

  v69 = v275;
  v70 = v293;
  v293[12] = sub_1B0398F5C;
  v70[13] = v69;

  v71 = v276;
  v72 = v293;
  v293[14] = sub_1B0398F5C;
  v72[15] = v71;

  v73 = v277;
  v74 = v293;
  v293[16] = sub_1B0399178;
  v74[17] = v73;

  v75 = v278;
  v76 = v293;
  v293[18] = sub_1B0398F5C;
  v76[19] = v75;

  v77 = v279;
  v78 = v293;
  v293[20] = sub_1B0398F5C;
  v78[21] = v77;

  v79 = v280;
  v80 = v293;
  v293[22] = sub_1B03991EC;
  v80[23] = v79;

  v81 = v281;
  v82 = v293;
  v293[24] = sub_1B0398F5C;
  v82[25] = v81;

  v83 = v282;
  v84 = v293;
  v293[26] = sub_1B0398F5C;
  v84[27] = v83;

  v85 = v283;
  v86 = v293;
  v293[28] = sub_1B03993BC;
  v86[29] = v85;

  v87 = v284;
  v88 = v293;
  v293[30] = sub_1B0398F5C;
  v88[31] = v87;

  v89 = v285;
  v90 = v293;
  v293[32] = sub_1B0398F5C;
  v90[33] = v89;

  v91 = v286;
  v92 = v293;
  v293[34] = sub_1B039BCEC;
  v92[35] = v91;

  v93 = v287;
  v94 = v293;
  v293[36] = sub_1B0398F5C;
  v94[37] = v93;

  v95 = v288;
  v96 = v293;
  v293[38] = sub_1B0398F5C;
  v96[39] = v95;

  v97 = v289;
  v98 = v293;
  v293[40] = sub_1B039BCEC;
  v98[41] = v97;

  v99 = v290;
  v100 = v293;
  v293[42] = sub_1B0398F5C;
  v100[43] = v99;

  v101 = v291;
  v102 = v293;
  v293[44] = sub_1B0398F5C;
  v102[45] = v101;

  v103 = v293;
  v104 = v294;
  v293[46] = sub_1B0399260;
  v103[47] = v104;
  sub_1B0394964();

  if (os_log_type_enabled(v297, v296))
  {
    v105 = v300;
    v202 = sub_1B0E45D78();
    v199 = v202;
    v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v203 = sub_1B03949A8(0);
    v201 = v203;
    v204 = sub_1B03949A8(2);
    v320[0] = v202;
    v319 = v203;
    v318 = v204;
    v205 = v320;
    sub_1B0394A48(3, v320);
    sub_1B0394A48(8, v205);
    v316 = sub_1B0398F5C;
    v317 = v222;
    sub_1B03949FC(&v316, v205, &v319, &v318);
    v206 = v105;
    v207 = v105;
    if (v105)
    {
      v197 = 0;

      __break(1u);
    }

    else
    {
      v316 = sub_1B0398F5C;
      v317 = v223;
      sub_1B03949FC(&v316, v320, &v319, &v318);
      v195 = 0;
      v196 = 0;
      v316 = sub_1B0399178;
      v317 = v225;
      sub_1B03949FC(&v316, v320, &v319, &v318);
      v193 = 0;
      v194 = 0;
      v316 = sub_1B0398F5C;
      v317 = v226;
      sub_1B03949FC(&v316, v320, &v319, &v318);
      v191 = 0;
      v192 = 0;
      v316 = sub_1B0398F5C;
      v317 = v227;
      sub_1B03949FC(&v316, v320, &v319, &v318);
      v189 = 0;
      v190 = 0;
      v316 = sub_1B039BA94;
      v317 = v230;
      sub_1B03949FC(&v316, v320, &v319, &v318);
      v187 = 0;
      v188 = 0;
      v316 = sub_1B0398F5C;
      v317 = v232;
      sub_1B03949FC(&v316, v320, &v319, &v318);
      v185 = 0;
      v186 = 0;
      v316 = sub_1B0398F5C;
      v317 = v233;
      sub_1B03949FC(&v316, v320, &v319, &v318);
      v183 = 0;
      v184 = 0;
      v316 = sub_1B0399178;
      v317 = v236;
      sub_1B03949FC(&v316, v320, &v319, &v318);
      v181 = 0;
      v182 = 0;
      v316 = sub_1B0398F5C;
      v317 = v237;
      sub_1B03949FC(&v316, v320, &v319, &v318);
      v179 = 0;
      v180 = 0;
      v316 = sub_1B0398F5C;
      v317 = v239;
      sub_1B03949FC(&v316, v320, &v319, &v318);
      v177 = 0;
      v178 = 0;
      v316 = sub_1B03991EC;
      v317 = v242;
      sub_1B03949FC(&v316, v320, &v319, &v318);
      v175 = 0;
      v176 = 0;
      v316 = sub_1B0398F5C;
      v317 = v243;
      sub_1B03949FC(&v316, v320, &v319, &v318);
      v173 = 0;
      v174 = 0;
      v316 = sub_1B0398F5C;
      v317 = v244;
      sub_1B03949FC(&v316, v320, &v319, &v318);
      v171 = 0;
      v172 = 0;
      v316 = sub_1B03993BC;
      v317 = v246;
      sub_1B03949FC(&v316, v320, &v319, &v318);
      v169 = 0;
      v170 = 0;
      v316 = sub_1B0398F5C;
      v317 = v247;
      sub_1B03949FC(&v316, v320, &v319, &v318);
      v167 = 0;
      v168 = 0;
      v316 = sub_1B0398F5C;
      v317 = v248;
      sub_1B03949FC(&v316, v320, &v319, &v318);
      v165 = 0;
      v166 = 0;
      v316 = sub_1B039BCEC;
      v317 = v251;
      sub_1B03949FC(&v316, v320, &v319, &v318);
      v163 = 0;
      v164 = 0;
      v316 = sub_1B0398F5C;
      v317 = v253;
      sub_1B03949FC(&v316, v320, &v319, &v318);
      v161 = 0;
      v162 = 0;
      v316 = sub_1B0398F5C;
      v317 = v254;
      sub_1B03949FC(&v316, v320, &v319, &v318);
      v159 = 0;
      v160 = 0;
      v316 = sub_1B039BCEC;
      v317 = v257;
      sub_1B03949FC(&v316, v320, &v319, &v318);
      v157 = 0;
      v158 = 0;
      v316 = sub_1B0398F5C;
      v317 = v260;
      sub_1B03949FC(&v316, v320, &v319, &v318);
      v155 = 0;
      v156 = 0;
      v316 = sub_1B0398F5C;
      v317 = v262;
      sub_1B03949FC(&v316, v320, &v319, &v318);
      v153 = 0;
      v154 = 0;
      v316 = sub_1B0399260;
      v317 = v267;
      sub_1B03949FC(&v316, v320, &v319, &v318);
      v151 = 0;
      v152 = 0;
      _os_log_impl(&dword_1B0389000, v220, v221, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] [%s] Dumping metadata for newest %ld messages:", v199, 0x3Fu);
      sub_1B03998A8(v201);
      sub_1B03998A8(v204);
      sub_1B0E45D58();

      v198 = v151;
    }
  }

  else
  {
    v106 = v300;

    v198 = v106;
  }

  v107 = v198;

  (*(v304 + 8))(v305, v302);
  v337 = EngineAndAccountLoggerID.init(engine:account:)(*(v312 + *(v306 + 20)), *(v312 + *(v306 + 20) + 4));
  v147 = v337;
  v148 = HIDWORD(v337);
  LOBYTE(v336) = v337;
  HIDWORD(v336) = HIDWORD(v337);
  v333 = v209;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E33F8, &qword_1B0EA1CC8);
  v108 = sub_1B0999070();
  MEMORY[0x1B2727080](&v334, v149, v108);
  v332 = v334;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3400, &qword_1B0EA1CD0);
  sub_1B0E465F8();
  for (i = v107; ; i = 0)
  {
    v141 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3408, &qword_1B0EA1CD8);
    sub_1B0E46608();
    v142 = v326;
    v143 = v327;
    v144 = v328;
    v145 = v329;
    v146 = v330;
    if (v331)
    {
      sub_1B039E440(v335);
      sub_1B074B764(v312);
    }

    v136 = v142;
    v137 = v143;
    v138 = v144;
    v139 = v145;
    v140 = v146;
    v109 = v141;
    v129 = v146;
    v132 = v145;
    v128 = v144;
    v127[2] = v143;
    v127[1] = v142;
    v325 = v142;
    *&v323 = v143;
    DWORD2(v323) = v144;
    v131 = BYTE4(v144) & 1;
    BYTE12(v323) = BYTE4(v144) & 1;
    LODWORD(v324) = v145;
    *(&v324 + 1) = v146;
    sub_1B09965BC();
    v321 = v110;
    v322 = v111;
    v130 = v127;
    MEMORY[0x1EEE9AC00](v127);
    v112 = v131;
    v113 = v132;
    v114 = v147;
    v133 = v127;
    v134 = &v127[-10];
    v127[-8] = v312;
    LOBYTE(v127[-7]) = v114;
    HIDWORD(v127[-7]) = v115;
    v127[-6] = v116;
    v127[-5] = v117;
    v123 = v118;
    v124 = v112;
    LODWORD(v125) = v113;
    v126 = v119;
    v120 = type metadata accessor for timeval();
    sub_1B0998F68(&v321, sub_1B09990F8, v134, v120, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v121);
    v135 = v109;
    if (v109)
    {
      break;
    }
  }

  result = 0;
  __break(1u);
  return result;
}

uint64_t sub_1B099640C@<X0>(uint64_t (*a1)(void)@<X2>, _BYTE *a2@<X8>)
{
  result = a1();
  *a2 = 0;
  return result;
}

uint64_t sub_1B09964F8(uint64_t a1, uint64_t a2)
{
  LODWORD(v3) = a2;
  BYTE4(v3) = BYTE4(a2) & 1;
  return v3;
}

uint64_t sub_1B0996530(uint64_t result)
{
  *(v1 + 8) = result;
  *(v1 + 12) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1B0996644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v193 = a1;
  v198 = a2;
  v204 = a4;
  v201 = sub_1B039BBE8;
  v205 = sub_1B0999458;
  v216 = sub_1B0394C30;
  v217 = sub_1B0394C24;
  v220 = sub_1B039BA2C;
  v222 = sub_1B039BA88;
  v224 = sub_1B039BB94;
  v225 = sub_1B0394C24;
  v227 = sub_1B039BBA0;
  v229 = sub_1B039BC08;
  v231 = sub_1B03FB774;
  v233 = sub_1B03B0DF8;
  v235 = sub_1B07AB020;
  v237 = sub_1B039BC08;
  v239 = sub_1B09994A4;
  v241 = sub_1B06BCD8C;
  v243 = sub_1B09994F0;
  v245 = sub_1B03B0DF8;
  v255 = sub_1B099953C;
  v249 = sub_1B0999698;
  v251 = sub_1B0394C24;
  v259 = sub_1B09996A4;
  v261 = sub_1B0398F5C;
  v263 = sub_1B0398F5C;
  v265 = sub_1B0399178;
  v267 = sub_1B0398F5C;
  v269 = sub_1B0398F5C;
  v271 = sub_1B039BA94;
  v273 = sub_1B0398F5C;
  v275 = sub_1B0398F5C;
  v277 = sub_1B0399178;
  v279 = sub_1B0398F5C;
  v281 = sub_1B0398F5C;
  v283 = sub_1B03991EC;
  v285 = sub_1B0398F5C;
  v287 = sub_1B0398F5C;
  v289 = sub_1B0399260;
  v291 = sub_1B0398F5C;
  v293 = sub_1B0398F5C;
  v295 = sub_1B03991EC;
  v297 = sub_1B0398F5C;
  v299 = sub_1B0398F5C;
  v301 = sub_1B03992D4;
  v303 = sub_1B0398F5C;
  v305 = sub_1B0398F5C;
  v307 = sub_1B0399260;
  v309 = sub_1B0398F5C;
  v311 = sub_1B0398F5C;
  v313 = sub_1B0399178;
  v315 = sub_1B0398F5C;
  v317 = sub_1B0398F5C;
  v320 = sub_1B099974C;
  v338 = 0;
  v337 = 0;
  v336 = 0;
  v335 = 0;
  v333 = 0u;
  v334 = 0u;
  v331 = 0;
  v332 = 0;
  v343 = a3;
  v199 = a3;
  v200 = HIDWORD(a3);
  v339 = a5;
  v340 = a6;
  v341 = a7;
  v342 = a8;
  v208 = a5;
  v209 = a6;
  v210 = BYTE4(a6);
  v212 = a7;
  v213 = a8;
  v190 = 0;
  v197 = sub_1B0E439A8();
  v195 = *(v197 - 8);
  v196 = v197 - 8;
  v191 = (*(v195 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v149 - v191;
  v192 = v149 - v191;
  v338 = v9;
  v337 = v10;
  LOBYTE(v336) = v11;
  HIDWORD(v336) = v12;
  v335 = v13;
  *&v333 = v14;
  DWORD2(v333) = v209;
  v219 = 1;
  v211 = 1;
  BYTE12(v333) = v210 & 1;
  LODWORD(v334) = v212;
  *(&v334 + 1) = v15;
  v194 = type metadata accessor for timeval();
  v16 = sub_1B0E44A48();
  v214 = MEMORY[0x1B2727230](v16);
  v215 = v17;
  v331 = v214;
  v332 = v17;
  (*(v195 + 16))(v8, v198, v197);
  v203 = 24;
  v257 = 7;
  v18 = swift_allocObject();
  v19 = v200;
  v221 = v18;
  *(v18 + 16) = v199;
  *(v18 + 20) = v19;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v20 = swift_allocObject();
  v21 = v200;
  v202 = v20;
  *(v20 + 16) = v199;
  *(v20 + 20) = v21;

  v256 = 32;
  v22 = swift_allocObject();
  v23 = v202;
  v228 = v22;
  *(v22 + 16) = v201;
  *(v22 + 24) = v23;
  sub_1B0394868();
  sub_1B0394868();

  v232 = swift_allocObject();
  *(v232 + 16) = v204;
  v207 = 48;
  v24 = swift_allocObject();
  v25 = v209;
  v26 = v210;
  v27 = v211;
  v28 = v212;
  v29 = v213;
  v206 = v24;
  *(v24 + 16) = v208;
  *(v24 + 24) = v25;
  *(v24 + 28) = v26 & 1 & v27;
  *(v24 + 32) = v28;
  *(v24 + 40) = v29;

  v30 = swift_allocObject();
  v31 = v206;
  v236 = v30;
  *(v30 + 16) = v205;
  *(v30 + 24) = v31;

  v32 = swift_allocObject();
  v33 = v209;
  v34 = v210;
  v35 = v211;
  v36 = v212;
  v37 = v213;
  v240 = v32;
  *(v32 + 16) = v208;
  *(v32 + 24) = v33;
  *(v32 + 28) = v34 & 1 & v35;
  *(v32 + 32) = v36;
  *(v32 + 40) = v37;
  v38 = swift_allocObject();
  v39 = v209;
  v40 = v210;
  v41 = v211;
  v42 = v212;
  v43 = v213;
  v244 = v38;
  *(v38 + 16) = v208;
  *(v38 + 24) = v39;
  *(v38 + 28) = v40 & 1 & v41;
  *(v38 + 32) = v42;
  *(v38 + 40) = v43;
  sub_1B07575C4();

  v44 = swift_allocObject();
  v45 = v215;
  v258 = v44;
  *(v44 + 16) = v214;
  *(v44 + 24) = v45;

  v324 = sub_1B0E43988();
  v325 = sub_1B0E45908();
  v253 = 17;
  v262 = swift_allocObject();
  v247 = 16;
  *(v262 + 16) = 16;
  v264 = swift_allocObject();
  v248 = 4;
  *(v264 + 16) = 4;
  v46 = swift_allocObject();
  v218 = v46;
  *(v46 + 16) = v216;
  *(v46 + 24) = 0;
  v47 = swift_allocObject();
  v48 = v218;
  v266 = v47;
  *(v47 + 16) = v217;
  *(v47 + 24) = v48;
  v268 = swift_allocObject();
  *(v268 + 16) = 0;
  v270 = swift_allocObject();
  *(v270 + 16) = v219;
  v49 = swift_allocObject();
  v50 = v221;
  v223 = v49;
  *(v49 + 16) = v220;
  *(v49 + 24) = v50;
  v51 = swift_allocObject();
  v52 = v223;
  v272 = v51;
  *(v51 + 16) = v222;
  *(v51 + 24) = v52;
  v274 = swift_allocObject();
  *(v274 + 16) = v247;
  v276 = swift_allocObject();
  *(v276 + 16) = v248;
  v53 = swift_allocObject();
  v226 = v53;
  *(v53 + 16) = v224;
  *(v53 + 24) = 0;
  v54 = swift_allocObject();
  v55 = v226;
  v278 = v54;
  *(v54 + 16) = v225;
  *(v54 + 24) = v55;
  v280 = swift_allocObject();
  *(v280 + 16) = 0;
  v282 = swift_allocObject();
  *(v282 + 16) = v248;
  v56 = swift_allocObject();
  v57 = v228;
  v230 = v56;
  *(v56 + 16) = v227;
  *(v56 + 24) = v57;
  v58 = swift_allocObject();
  v59 = v230;
  v284 = v58;
  *(v58 + 16) = v229;
  *(v58 + 24) = v59;
  v286 = swift_allocObject();
  *(v286 + 16) = 0;
  v288 = swift_allocObject();
  v254 = 8;
  *(v288 + 16) = 8;
  v60 = swift_allocObject();
  v61 = v232;
  v234 = v60;
  *(v60 + 16) = v231;
  *(v60 + 24) = v61;
  v62 = swift_allocObject();
  v63 = v234;
  v290 = v62;
  *(v62 + 16) = v233;
  *(v62 + 24) = v63;
  v292 = swift_allocObject();
  *(v292 + 16) = 0;
  v294 = swift_allocObject();
  *(v294 + 16) = v248;
  v64 = swift_allocObject();
  v65 = v236;
  v238 = v64;
  *(v64 + 16) = v235;
  *(v64 + 24) = v65;
  v66 = swift_allocObject();
  v67 = v238;
  v296 = v66;
  *(v66 + 16) = v237;
  *(v66 + 24) = v67;
  v298 = swift_allocObject();
  *(v298 + 16) = 0;
  v300 = swift_allocObject();
  *(v300 + 16) = v254;
  v68 = swift_allocObject();
  v69 = v240;
  v242 = v68;
  *(v68 + 16) = v239;
  *(v68 + 24) = v69;
  v70 = swift_allocObject();
  v71 = v242;
  v302 = v70;
  *(v70 + 16) = v241;
  *(v70 + 24) = v71;
  v304 = swift_allocObject();
  *(v304 + 16) = 0;
  v306 = swift_allocObject();
  *(v306 + 16) = v254;
  v72 = swift_allocObject();
  v73 = v244;
  v246 = v72;
  *(v72 + 16) = v243;
  *(v72 + 24) = v73;
  v74 = swift_allocObject();
  v75 = v246;
  v308 = v74;
  *(v74 + 16) = v245;
  *(v74 + 24) = v75;
  v310 = swift_allocObject();
  *(v310 + 16) = v247;
  v312 = swift_allocObject();
  *(v312 + 16) = v248;
  v76 = swift_allocObject();
  v77 = v258;
  v250 = v76;
  *(v76 + 16) = v255;
  *(v76 + 24) = v77;
  v78 = swift_allocObject();
  v79 = v250;
  v252 = v78;
  *(v78 + 16) = v249;
  *(v78 + 24) = v79;
  v80 = swift_allocObject();
  v81 = v252;
  v314 = v80;
  *(v80 + 16) = v251;
  *(v80 + 24) = v81;
  v316 = swift_allocObject();
  *(v316 + 16) = 50;
  v318 = swift_allocObject();
  *(v318 + 16) = v254;
  v82 = swift_allocObject();
  v83 = v258;
  v260 = v82;
  *(v82 + 16) = v255;
  *(v82 + 24) = v83;
  v84 = swift_allocObject();
  v85 = v260;
  v321 = v84;
  *(v84 + 16) = v259;
  *(v84 + 24) = v85;
  v323 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v319 = sub_1B0E46A48();
  v322 = v86;

  v87 = v262;
  v88 = v322;
  *v322 = v261;
  v88[1] = v87;

  v89 = v264;
  v90 = v322;
  v322[2] = v263;
  v90[3] = v89;

  v91 = v266;
  v92 = v322;
  v322[4] = v265;
  v92[5] = v91;

  v93 = v268;
  v94 = v322;
  v322[6] = v267;
  v94[7] = v93;

  v95 = v270;
  v96 = v322;
  v322[8] = v269;
  v96[9] = v95;

  v97 = v272;
  v98 = v322;
  v322[10] = v271;
  v98[11] = v97;

  v99 = v274;
  v100 = v322;
  v322[12] = v273;
  v100[13] = v99;

  v101 = v276;
  v102 = v322;
  v322[14] = v275;
  v102[15] = v101;

  v103 = v278;
  v104 = v322;
  v322[16] = v277;
  v104[17] = v103;

  v105 = v280;
  v106 = v322;
  v322[18] = v279;
  v106[19] = v105;

  v107 = v282;
  v108 = v322;
  v322[20] = v281;
  v108[21] = v107;

  v109 = v284;
  v110 = v322;
  v322[22] = v283;
  v110[23] = v109;

  v111 = v286;
  v112 = v322;
  v322[24] = v285;
  v112[25] = v111;

  v113 = v288;
  v114 = v322;
  v322[26] = v287;
  v114[27] = v113;

  v115 = v290;
  v116 = v322;
  v322[28] = v289;
  v116[29] = v115;

  v117 = v292;
  v118 = v322;
  v322[30] = v291;
  v118[31] = v117;

  v119 = v294;
  v120 = v322;
  v322[32] = v293;
  v120[33] = v119;

  v121 = v296;
  v122 = v322;
  v322[34] = v295;
  v122[35] = v121;

  v123 = v298;
  v124 = v322;
  v322[36] = v297;
  v124[37] = v123;

  v125 = v300;
  v126 = v322;
  v322[38] = v299;
  v126[39] = v125;

  v127 = v302;
  v128 = v322;
  v322[40] = v301;
  v128[41] = v127;

  v129 = v304;
  v130 = v322;
  v322[42] = v303;
  v130[43] = v129;

  v131 = v306;
  v132 = v322;
  v322[44] = v305;
  v132[45] = v131;

  v133 = v308;
  v134 = v322;
  v322[46] = v307;
  v134[47] = v133;

  v135 = v310;
  v136 = v322;
  v322[48] = v309;
  v136[49] = v135;

  v137 = v312;
  v138 = v322;
  v322[50] = v311;
  v138[51] = v137;

  v139 = v314;
  v140 = v322;
  v322[52] = v313;
  v140[53] = v139;

  v141 = v316;
  v142 = v322;
  v322[54] = v315;
  v142[55] = v141;

  v143 = v318;
  v144 = v322;
  v322[56] = v317;
  v144[57] = v143;

  v145 = v321;
  v146 = v322;
  v322[58] = v320;
  v146[59] = v145;
  sub_1B0394964();

  if (os_log_type_enabled(v324, v325))
  {
    v182 = sub_1B0E45D78();
    v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v181 = 0;
    v183 = sub_1B03949A8(0);
    v184 = sub_1B03949A8(v181);
    v185 = &v330;
    v330 = v182;
    v186 = &v329;
    v329 = v183;
    v187 = &v328;
    v328 = v184;
    sub_1B0394A48(2, &v330);
    sub_1B0394A48(10, v185);
    v147 = v189;
    v326 = v261;
    v327 = v262;
    sub_1B03949FC(&v326, v185, v186, v187);
    v188 = v147;
    if (v147)
    {

      __break(1u);
    }

    else
    {
      v326 = v263;
      v327 = v264;
      sub_1B03949FC(&v326, &v330, &v329, &v328);
      v178 = 0;
      v326 = v265;
      v327 = v266;
      sub_1B03949FC(&v326, &v330, &v329, &v328);
      v177 = 0;
      v326 = v267;
      v327 = v268;
      sub_1B03949FC(&v326, &v330, &v329, &v328);
      v176 = 0;
      v326 = v269;
      v327 = v270;
      sub_1B03949FC(&v326, &v330, &v329, &v328);
      v175 = 0;
      v326 = v271;
      v327 = v272;
      sub_1B03949FC(&v326, &v330, &v329, &v328);
      v174 = 0;
      v326 = v273;
      v327 = v274;
      sub_1B03949FC(&v326, &v330, &v329, &v328);
      v173 = 0;
      v326 = v275;
      v327 = v276;
      sub_1B03949FC(&v326, &v330, &v329, &v328);
      v172 = 0;
      v326 = v277;
      v327 = v278;
      sub_1B03949FC(&v326, &v330, &v329, &v328);
      v171 = 0;
      v326 = v279;
      v327 = v280;
      sub_1B03949FC(&v326, &v330, &v329, &v328);
      v170 = 0;
      v326 = v281;
      v327 = v282;
      sub_1B03949FC(&v326, &v330, &v329, &v328);
      v169 = 0;
      v326 = v283;
      v327 = v284;
      sub_1B03949FC(&v326, &v330, &v329, &v328);
      v168 = 0;
      v326 = v285;
      v327 = v286;
      sub_1B03949FC(&v326, &v330, &v329, &v328);
      v167 = 0;
      v326 = v287;
      v327 = v288;
      sub_1B03949FC(&v326, &v330, &v329, &v328);
      v166 = 0;
      v326 = v289;
      v327 = v290;
      sub_1B03949FC(&v326, &v330, &v329, &v328);
      v165 = 0;
      v326 = v291;
      v327 = v292;
      sub_1B03949FC(&v326, &v330, &v329, &v328);
      v164 = 0;
      v326 = v293;
      v327 = v294;
      sub_1B03949FC(&v326, &v330, &v329, &v328);
      v163 = 0;
      v326 = v295;
      v327 = v296;
      sub_1B03949FC(&v326, &v330, &v329, &v328);
      v162 = 0;
      v326 = v297;
      v327 = v298;
      sub_1B03949FC(&v326, &v330, &v329, &v328);
      v161 = 0;
      v326 = v299;
      v327 = v300;
      sub_1B03949FC(&v326, &v330, &v329, &v328);
      v160 = 0;
      v326 = v301;
      v327 = v302;
      sub_1B03949FC(&v326, &v330, &v329, &v328);
      v159 = 0;
      v326 = v303;
      v327 = v304;
      sub_1B03949FC(&v326, &v330, &v329, &v328);
      v158 = 0;
      v326 = v305;
      v327 = v306;
      sub_1B03949FC(&v326, &v330, &v329, &v328);
      v157 = 0;
      v326 = v307;
      v327 = v308;
      sub_1B03949FC(&v326, &v330, &v329, &v328);
      v156 = 0;
      v326 = v309;
      v327 = v310;
      sub_1B03949FC(&v326, &v330, &v329, &v328);
      v155 = 0;
      v326 = v311;
      v327 = v312;
      sub_1B03949FC(&v326, &v330, &v329, &v328);
      v154 = 0;
      v326 = v313;
      v327 = v314;
      sub_1B03949FC(&v326, &v330, &v329, &v328);
      v153 = 0;
      v326 = v315;
      v327 = v316;
      sub_1B03949FC(&v326, &v330, &v329, &v328);
      v152 = 0;
      v326 = v317;
      v327 = v318;
      sub_1B03949FC(&v326, &v330, &v329, &v328);
      v151 = 0;
      v326 = v320;
      v327 = v321;
      sub_1B03949FC(&v326, &v330, &v329, &v328);
      v150 = 0;
      _os_log_impl(&dword_1B0389000, v324, v325, "[%.*hhx-%.*X] #%ld: UID %u, global ID: %lld, size: %{iec-bytes}ld, dateReceived: %{timeval,public}.*P", v182, 0x4Bu);
      v149[1] = 0;
      sub_1B03998A8(v183);
      sub_1B03998A8(v184);
      sub_1B0E45D58();

      v179 = v150;
    }
  }

  else
  {

    v179 = v189;
  }

  v149[0] = v179;
  MEMORY[0x1E69E5920](v324);
  return (*(v195 + 8))(v192, v197);
}

uint64_t sub_1B0998EA8(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x100000000) != 0)
  {
    v2 = sub_1B041C1E8();
    static MessageIdentifier.max.getter(&type metadata for UID, v2);
  }

  else
  {
    return a2;
  }

  return v4;
}

uint64_t sub_1B0998F68(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = a2;
  v12 = a5;
  v13 = a8;
  v22 = a4;
  v21 = a5;
  v20 = a6;
  v14 = *(a5 - 8);
  v15 = a5 - 8;
  v16 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00]();
  v18 = &v11 - v16;
  result = v17(v9);
  v19 = v8;
  if (v8)
  {
    return (*(v14 + 32))(v13, v18, v12);
  }

  return result;
}

unint64_t sub_1B0999070()
{
  v2 = qword_1EB6DB2B8;
  if (!qword_1EB6DB2B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E33F8, &qword_1B0EA1CC8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB2B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B09990F8(uint64_t a1)
{
  LOBYTE(v4) = *(v1 + 24);
  HIDWORD(v4) = *(v1 + 28);
  LODWORD(v3) = *(v1 + 48);
  BYTE4(v3) = *(v1 + 52) & 1;
  return sub_1B0996644(a1, *(v1 + 16), v4, *(v1 + 32), *(v1 + 40), v3, *(v1 + 56), *(v1 + 64));
}

uint64_t sub_1B099918C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 32))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1B0999294(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    if (a3)
    {
      *(result + 32) = 1;
    }
  }

  else if (a3)
  {
    *(result + 32) = 0;
  }

  return result;
}

uint64_t sub_1B0999458()
{
  LODWORD(v2) = *(v0 + 24);
  BYTE4(v2) = *(v0 + 28) & 1;
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  return sub_1B0998EA8(*(v0 + 16), v2);
}

void sub_1B09994A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 28) & 1;
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  sub_1B09964D8();
}

uint64_t sub_1B09994F0()
{
  LODWORD(v2) = *(v0 + 24);
  BYTE4(v2) = *(v0 + 28) & 1;
  v3 = *(v0 + 40);
  return sub_1B0998F40(*(v0 + 16), v2, *(v0 + 32));
}

uint64_t sub_1B0999548(uint64_t (*a1)(void))
{
  v3 = a1();
  if (v3)
  {
    return v3;
  }

  sub_1B0E465A8();
  __break(1u);
  return v2;
}

uint64_t sub_1B0999604(uint64_t (*a1)(void))
{
  v4 = a1();
  if (!v4)
  {
    return 0;
  }

  if (!v1)
  {
    __break(1u);
  }

  return v1 - v4;
}

void *sub_1B09996B0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v7 = *MEMORY[0x1E69E9840];
  a4();
  v5 = *a1;
  sub_1B0E45E48();
  result = a1;
  *a1 = v5 + 8;
  *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0999758(unsigned int a1, uint64_t a2, int a3)
{
  v11 = a1;
  v15 = a2;
  v16 = a3;
  v27 = 0;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  v20 = 0;
  v12 = (*(*(_s18MailboxPersistenceVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = &v8[-v12];
  v17 = &v8[-v12];
  v27 = MEMORY[0x1EEE9AC00](v11);
  v25 = v4;
  v26 = v5;
  v24 = v6;
  v13 = v6 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxPersistence;
  v14 = &v21;
  swift_beginAccess();
  sub_1B03F4D78(v13, v3);
  swift_endAccess();
  sub_1B07BEBE4(v15, v16, &v22);
  sub_1B03F4F08(v17);
  v18 = v22;
  if (v23)
  {
    v9 = 0;
  }

  else
  {
    v10 = v18;
    v20 = v18;
    v19 = v18;
    v9 = sub_1B09999A8(v11, &v19);
  }

  return v9 & 1;
}

uint64_t sub_1B09998C8()
{
  sub_1B0E46A48();
  sub_1B099BB54();
  v2 = sub_1B0E45438();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3410, &qword_1B0EA1D08);
  result = sub_1B06C70B0(&v2, v0);
  qword_1EB6DBF60 = result;
  return result;
}

uint64_t *sub_1B0999948()
{
  if (qword_1EB6DBF58 != -1)
  {
    swift_once();
  }

  return &qword_1EB6DBF60;
}

uint64_t sub_1B09999A8(int a1, uint64_t *a2)
{
  v30 = 0;
  v29 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v31 = a1;
  v30 = *a2;
  v29 = v2;
  v3 = sub_1B03F4C20();
  v24 = v30;
  sub_1B0999B24(v3, v4, &v24, a1, &v25);
  v9 = v25;
  v10 = v26;
  v11 = v27;
  v12 = v28;
  v20 = v25;
  v21 = v26;
  v22 = v27;
  v23 = v28;
  v13 = *sub_1B0999948();

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v15 = v9;
  v16 = v10;
  v17 = v11;
  v18 = v12;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3410, &qword_1B0EA1D08);
  sub_1B03E1B3C(sub_1B0999C14, v14, v13, v5, MEMORY[0x1E69E6370]);

  v7 = v19;

  return v7 & 1;
}

uint64_t sub_1B0999B24@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v5 = *a3;
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = v5;
  *(a5 + 24) = a4;
  return result;
}

uint64_t sub_1B0999B3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B099BB54();
  v4 = sub_1B0E45528();

  result = v4;
  *a2 = v4 & 1;
  return result;
}

uint64_t sub_1B0999C14@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  return sub_1B0999B3C(a1, a2);
}

uint64_t sub_1B0999C80(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v4 = *(a1 + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *(a2 + 8) = v4;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = *(a1 + 24);
  return result;
}

id sub_1B0999CD8(uint64_t a1)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithLibraryMessage_];
  MEMORY[0x1E69E5920](a1);
  return v3;
}

uint64_t sub_1B0999D30(void *a1)
{
  v94 = a1;
  v117 = 0;
  v116 = 0;
  v112 = 0;
  v111 = 0;
  v110 = 0;
  v109 = 0;
  v89 = 0;
  v90 = sub_1B0E439A8();
  v91 = *(v90 - 8);
  v92 = v91;
  v2 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v93 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = v4;
  v117 = v1;
  v95 = v1;
  v5 = v4;
  sub_1B099A7C0(v94, v114);
  v6 = v114[1];
  v7 = v114[2];
  v8 = v115;
  v97 = &qword_1EB6E3000;
  v9 = &v95[OBJC_IVAR___MFNanoMailReplyWorkaround_message];
  *v9 = v114[0];
  *(v9 + 1) = v6;
  *(v9 + 2) = v7;
  *(v9 + 6) = v8;
  v113.receiver = v117;
  v113.super_class = MFNanoMailReplyWorkaround;
  v98 = objc_msgSendSuper2(&v113, sel_init);
  v96 = v98;
  v10 = v98;
  v117 = v98;
  v11 = &v98[v97[131]];
  v99 = *v11;
  v103 = *(v11 + 1);
  v100 = v103;
  v101 = *(v11 + 2);
  v102 = *(v11 + 6);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (!v103)
  {
    v84 = v89;
LABEL_11:

    return v96;
  }

  v85 = v99;
  v86 = v100;
  v87 = v101;
  v88 = v102;
  v12 = v89;
  v77 = v102;
  v80 = v101;
  v79 = v100;
  v76 = v99;
  v109 = v99;
  v110 = v100;
  v111 = v101;
  v112 = v102;
  v82 = *sub_1B0999948();
  v75 = v82;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v78 = v39;
  MEMORY[0x1EEE9AC00](v39);
  v13 = v79;
  v14 = v80;
  v81 = &v39[-6];
  v39[-4] = v15;
  v39[-3] = v13;
  v39[-2] = v14;
  LODWORD(v39[-1]) = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3410, &qword_1B0EA1D08);
  sub_1B03E1B3C(sub_1B099AC84, v81, v82, v17, MEMORY[0x1E69E7CA8] + 8);
  v83 = v12;
  if (!v12)
  {
    v18 = v93;

    sub_1B07B8E9C(v18);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v63 = 7;
    v19 = swift_allocObject();
    v20 = v79;
    v21 = v80;
    v22 = v77;
    v56 = v19;
    *(v19 + 16) = v76;
    *(v19 + 24) = v20;
    *(v19 + 32) = v21;
    *(v19 + 40) = v22;

    v62 = 32;
    v23 = swift_allocObject();
    v24 = v56;
    v64 = v23;
    *(v23 + 16) = sub_1B099ACB8;
    *(v23 + 24) = v24;

    v74 = sub_1B0E43988();
    v57 = v74;
    v73 = sub_1B0E45908();
    v58 = v73;
    v59 = 17;
    v67 = swift_allocObject();
    v60 = v67;
    *(v67 + 16) = 0;
    v68 = swift_allocObject();
    v61 = v68;
    *(v68 + 16) = 4;
    v25 = swift_allocObject();
    v26 = v64;
    v65 = v25;
    *(v25 + 16) = sub_1B07AB020;
    *(v25 + 24) = v26;
    v27 = swift_allocObject();
    v28 = v65;
    v71 = v27;
    v66 = v27;
    *(v27 + 16) = sub_1B039BC08;
    *(v27 + 24) = v28;
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v69 = sub_1B0E46A48();
    v70 = v29;

    v30 = v67;
    v31 = v70;
    *v70 = sub_1B0398F5C;
    v31[1] = v30;

    v32 = v68;
    v33 = v70;
    v70[2] = sub_1B0398F5C;
    v33[3] = v32;

    v34 = v70;
    v35 = v71;
    v70[4] = sub_1B03991EC;
    v34[5] = v35;
    sub_1B0394964();

    if (os_log_type_enabled(v74, v73))
    {
      v36 = v83;
      v50 = sub_1B0E45D78();
      v46 = v50;
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v48 = 0;
      v51 = sub_1B03949A8(0);
      v49 = v51;
      v52 = sub_1B03949A8(v48);
      v108 = v50;
      v107 = v51;
      v106 = v52;
      v53 = &v108;
      sub_1B0394A48(0, &v108);
      sub_1B0394A48(1, v53);
      v104 = sub_1B0398F5C;
      v105 = v60;
      sub_1B03949FC(&v104, v53, &v107, &v106);
      v54 = v36;
      v55 = v36;
      if (v36)
      {
        v44 = 0;

        __break(1u);
      }

      else
      {
        v104 = sub_1B0398F5C;
        v105 = v61;
        sub_1B03949FC(&v104, &v108, &v107, &v106);
        v42 = 0;
        v43 = 0;
        v104 = sub_1B03991EC;
        v105 = v66;
        sub_1B03949FC(&v104, &v108, &v107, &v106);
        v40 = 0;
        v41 = 0;
        _os_log_impl(&dword_1B0389000, v57, v58, "Nano mail “reply workaround” for %u -> active", v46, 8u);
        v39[1] = 0;
        sub_1B03998A8(v49);
        sub_1B03998A8(v52);
        sub_1B0E45D58();

        v45 = v40;
      }
    }

    else
    {
      v37 = v83;

      v45 = v37;
    }

    v39[0] = v45;

    (*(v92 + 8))(v93, v90);

    v84 = v39[0];
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B099A7C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v34 = 0;
  v32 = 0;
  v33 = 0;
  v29 = 0;
  v27 = 0;
  v35 = a1;
  MEMORY[0x1E69E5928](a1);
  if (a1)
  {
    v34 = a1;
    v2 = [a1 account];
    v21 = v2;
    if (v2)
    {
      v3 = [v2 identifier];
      v18 = v3;
      if (v3)
      {
        v14 = sub_1B0E44AD8();
        v15 = v4;
        MEMORY[0x1E69E5920](v18);
        v16 = v14;
        v17 = v15;
      }

      else
      {
        v16 = 0;
        v17 = 0;
      }

      MEMORY[0x1E69E5920](v21);
      v19 = v16;
      v20 = v17;
    }

    else
    {
      v19 = 0;
      v20 = 0;
    }

    if (v20)
    {
      v32 = v19;
      v33 = v20;
      v5 = [a1 mailbox];
      if (v5)
      {
        v13 = v5;
      }

      else
      {
        LOBYTE(v8) = 2;
        v9 = 95;
        LODWORD(v10) = 0;
        sub_1B0E465A8();
        __break(1u);
      }

      v11 = [v13 mailboxRowID];
      MEMORY[0x1E69E5920](v13);
      sub_1B0A22800(v11, &v30);
      v12 = v30;
      if ((v31 & 1) == 0)
      {
        v29 = v30;
        sub_1B07F1AFC();
        v6 = sub_1B0872E74();
        v28 = v6;
        if ((v6 & 0x100000000) == 0)
        {
          v27 = v6;
          v24 = v12;
          sub_1B0999B24(v19, v20, &v24, v6, v25);
          v36 = v25[0];
          v37 = v25[1];
          v38 = v25[2];
          v39 = v26;
          MEMORY[0x1E69E5920](a1);
          sub_1B0999C80(&v36, a2);
          MEMORY[0x1E69E5920](a1);
          return sub_1B03B1198(&v36);
        }
      }

      MEMORY[0x1E69E5920](a1);
    }

    else
    {
      MEMORY[0x1E69E5920](a1);
    }
  }

  result = MEMORY[0x1E69E5920](a1);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return result;
}

uint64_t sub_1B099ABB8()
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3410, &qword_1B0EA1D08);
  sub_1B0E454D8();
}

uint64_t sub_1B099AC84()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  return sub_1B099ABB8();
}

id sub_1B099AD18()
{
  v1 = [v2 initWithLibraryMessage_];
  MEMORY[0x1E69E5928](v1);
  MEMORY[0x1E69E5920](v1);
  return v1;
}

id sub_1B099ADA4()
{
  v100 = 0;
  v98 = 0;
  v97 = 0;
  v96 = 0;
  v95 = 0;
  v80 = 0;
  v81 = sub_1B0E439A8();
  v82 = *(v81 - 8);
  v83 = v82;
  v1 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v81 - 8);
  v84 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = v0;
  v85 = *(v0 + OBJC_IVAR___MFNanoMailReplyWorkaround_message);
  v89 = *(v0 + OBJC_IVAR___MFNanoMailReplyWorkaround_message + 8);
  v86 = v89;
  v87 = *(v0 + OBJC_IVAR___MFNanoMailReplyWorkaround_message + 16);
  v88 = *(v0 + OBJC_IVAR___MFNanoMailReplyWorkaround_message + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (!v89)
  {
    v74 = v80;
LABEL_11:
    v99.receiver = v79;
    v99.super_class = MFNanoMailReplyWorkaround;
    return objc_msgSendSuper2(&v99, sel_dealloc);
  }

  v75 = v85;
  v76 = v86;
  v77 = v87;
  v78 = v88;
  v54 = v88;
  v53 = v87;
  v52 = v86;
  v51 = v85;
  v95 = v85;
  v96 = v86;
  v97 = v87;
  v98 = v88;
  sub_1B07B8E9C(v84);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v62 = 7;
  v3 = swift_allocObject();
  v4 = v52;
  v5 = v53;
  v6 = v54;
  v55 = v3;
  *(v3 + 16) = v51;
  *(v3 + 24) = v4;
  *(v3 + 32) = v5;
  *(v3 + 40) = v6;

  v61 = 32;
  v7 = swift_allocObject();
  v8 = v55;
  v63 = v7;
  *(v7 + 16) = sub_1B099ACB8;
  *(v7 + 24) = v8;

  v73 = sub_1B0E43988();
  v56 = v73;
  v72 = sub_1B0E45908();
  v57 = v72;
  v58 = 17;
  v66 = swift_allocObject();
  v59 = v66;
  *(v66 + 16) = 0;
  v67 = swift_allocObject();
  v60 = v67;
  *(v67 + 16) = 4;
  v9 = swift_allocObject();
  v10 = v63;
  v64 = v9;
  *(v9 + 16) = sub_1B07AB020;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v64;
  v70 = v11;
  v65 = v11;
  *(v11 + 16) = sub_1B039BC08;
  *(v11 + 24) = v12;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v68 = sub_1B0E46A48();
  v69 = v13;

  v14 = v66;
  v15 = v69;
  *v69 = sub_1B0398F5C;
  v15[1] = v14;

  v16 = v67;
  v17 = v69;
  v69[2] = sub_1B0398F5C;
  v17[3] = v16;

  v18 = v69;
  v19 = v70;
  v69[4] = sub_1B03991EC;
  v18[5] = v19;
  sub_1B0394964();

  if (os_log_type_enabled(v73, v72))
  {
    v21 = v80;
    v45 = sub_1B0E45D78();
    v41 = v45;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v43 = 0;
    v46 = sub_1B03949A8(0);
    v44 = v46;
    v47 = sub_1B03949A8(v43);
    v94 = v45;
    v93 = v46;
    v92 = v47;
    v48 = &v94;
    sub_1B0394A48(0, &v94);
    sub_1B0394A48(1, v48);
    v90 = sub_1B0398F5C;
    v91 = v59;
    sub_1B03949FC(&v90, v48, &v93, &v92);
    v49 = v21;
    v50 = v21;
    if (v21)
    {
      v39 = 0;

      __break(1u);
    }

    else
    {
      v90 = sub_1B0398F5C;
      v91 = v60;
      sub_1B03949FC(&v90, &v94, &v93, &v92);
      v37 = 0;
      v38 = 0;
      v90 = sub_1B03991EC;
      v91 = v65;
      sub_1B03949FC(&v90, &v94, &v93, &v92);
      v35 = 0;
      v36 = 0;
      _os_log_impl(&dword_1B0389000, v56, v57, "Nano mail “reply workaround” for %u -> inactive", v41, 8u);
      v34 = 0;
      sub_1B03998A8(v44);
      sub_1B03998A8(v47);
      sub_1B0E45D58();

      v40 = v35;
    }
  }

  else
  {
    v22 = v80;

    v40 = v22;
  }

  v23 = v40;

  (*(v83 + 8))(v84, v81);
  v32 = *sub_1B0999948();
  v30[0] = v32;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v30[1] = v30;
  MEMORY[0x1EEE9AC00](v30);
  v24 = v52;
  v25 = v53;
  v31 = &v30[-6];
  v30[-4] = v26;
  v30[-3] = v24;
  v30[-2] = v25;
  LODWORD(v30[-1]) = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3410, &qword_1B0EA1D08);
  sub_1B03E1B3C(sub_1B099BFCC, v31, v32, v28, MEMORY[0x1E69E7CA8] + 8);
  v33 = v23;
  if (!v23)
  {

    v74 = v33;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B099B744()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3410, &qword_1B0EA1D08);
  sub_1B0E454E8();
}

BOOL sub_1B099B834(uint64_t *a1, uint64_t *a2)
{
  v16 = 0;
  v15 = 0;
  v8 = *a1;
  v11 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 6);
  v16 = a1;
  v9 = *a2;
  v10 = a2[1];
  v6 = a2[2];
  v7 = *(a2 + 6);
  v15 = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v12 = MEMORY[0x1B2726DE0](v8, v11, v9, v10);

  if (v12)
  {
    v14 = v4;
    v13 = v6;
    if (static MailboxRowID.== infix(_:_:)(&v14, &v13))
    {
      sub_1B0714E4C();
      return (sub_1B0E45ED8() & 1) != 0;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B099B994(uint64_t a1)
{
  v8 = 0;
  v9 = a1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 6);
  v8 = v1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v7[0] = v3;
  v7[1] = v4;
  sub_1B0E46C48();
  sub_1B03B1198(v7);
  sub_1B0417568();
  sub_1B0E46C48();
  sub_1B043CF70();
  return sub_1B0E46C48();
}

uint64_t sub_1B099BA88()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 6);
  sub_1B099BB54();
  return sub_1B0E46198();
}

unint64_t sub_1B099BB54()
{
  v2 = qword_1EB6DA860;
  if (!qword_1EB6DA860)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA860);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for MFNanoMailReplyWorkaround()
{
  v2 = qword_1EB6E3420;
  if (!qword_1EB6E3420)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6E3420);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B099BC34(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 28))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B099BD4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 28) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 28) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_1B099BF50()
{
  v2 = qword_1EB6DA858;
  if (!qword_1EB6DA858)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA858);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B099BFCC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  return sub_1B099B744();
}

unint64_t sub_1B099C000(void *a1, void *a2)
{
  v375 = a2;
  v374 = a1;
  v369 = 0;
  v406 = 0;
  v405 = 0;
  v404 = 0;
  v403 = 0;
  v354 = 0;
  v396 = 0;
  v395 = 0;
  v392 = 0;
  v391 = 0;
  v385 = 0;
  v355 = sub_1B0E439A8();
  v356 = *(v355 - 8);
  v357 = v356;
  v358 = *(v356 + 64);
  v3 = MEMORY[0x1EEE9AC00](0);
  v360 = (v358 + 15) & 0xFFFFFFFFFFFFFFF0;
  v359 = v137 - v360;
  MEMORY[0x1EEE9AC00](v3);
  v361 = v137 - v360;
  v362 = _s6LoggerVMa();
  v364 = *(*(v362 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v369);
  v366 = (v364 + 15) & 0xFFFFFFFFFFFFFFF0;
  v363 = v137 - v366;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v365 = v137 - v366;
  MEMORY[0x1EEE9AC00](v5);
  v367 = v137 - v366;
  v6 = _s18MailboxPersistenceVMa();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v368 = v137 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v370 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v369);
  v372 = (v370 + 15) & 0xFFFFFFFFFFFFFFF0;
  v371 = v137 - v372;
  MEMORY[0x1EEE9AC00](v9);
  v373 = v137 - v372;
  v376 = sub_1B0E42E68();
  v377 = *(v376 - 8);
  v378 = v377;
  v379 = *(v377 + 64);
  v10 = MEMORY[0x1EEE9AC00](v375);
  v381 = (v379 + 15) & 0xFFFFFFFFFFFFFFF0;
  v380 = v137 - v381;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v382 = v137 - v381;
  v406 = v137 - v381;
  v405 = v12;
  v404 = v11;
  v403 = v2;
  v383 = [v11 URL];
  if (v383)
  {
    v352 = v383;
    v351 = v383;
    sub_1B0E42DE8();
    (*(v378 + 32))(v373, v380, v376);
    (*(v378 + 56))(v373, 0, 1, v376);
  }

  else
  {
    (*(v378 + 56))(v373, 1, 1, v376);
  }

  if ((*(v378 + 48))(v373, 1, v376) == 1)
  {
    sub_1B06E3800(v373);
LABEL_27:
    v82 = v359;
    v176 = &OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger;
    sub_1B0394784(v353 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v363);
    (*(v357 + 16))(v82, v363, v355);
    sub_1B039480C(v363);

    sub_1B0394784(v353 + *v176, v365);
    v83 = (v365 + *(v362 + 20));
    v178 = *v83;
    v179 = *(v83 + 1);
    sub_1B039480C(v365);

    v177 = 24;
    v204 = 7;
    v84 = swift_allocObject();
    v85 = v179;
    v189 = v84;
    *(v84 + 16) = v178;
    *(v84 + 20) = v85;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v86 = swift_allocObject();
    v87 = v179;
    v180 = v86;
    *(v86 + 16) = v178;
    *(v86 + 20) = v87;

    v203 = 32;
    v88 = swift_allocObject();
    v89 = v180;
    v205 = v88;
    *(v88 + 16) = sub_1B039BBE8;
    *(v88 + 24) = v89;
    sub_1B0394868();
    sub_1B0394868();

    v224 = sub_1B0E43988();
    v181 = v224;
    v223 = sub_1B0E458E8();
    v182 = v223;
    v199 = 17;
    v208 = swift_allocObject();
    v183 = v208;
    v192 = 16;
    *(v208 + 16) = 16;
    v209 = swift_allocObject();
    v184 = v209;
    v201 = 4;
    *(v209 + 16) = 4;
    v90 = swift_allocObject();
    v185 = v90;
    *(v90 + 16) = sub_1B0394C30;
    v195 = 0;
    *(v90 + 24) = 0;
    v91 = swift_allocObject();
    v92 = v185;
    v210 = v91;
    v186 = v91;
    *(v91 + 16) = sub_1B0394C24;
    *(v91 + 24) = v92;
    v211 = swift_allocObject();
    v187 = v211;
    v198 = 0;
    *(v211 + 16) = 0;
    v212 = swift_allocObject();
    v188 = v212;
    *(v212 + 16) = 1;
    v93 = swift_allocObject();
    v94 = v189;
    v190 = v93;
    *(v93 + 16) = sub_1B039BA2C;
    *(v93 + 24) = v94;
    v95 = swift_allocObject();
    v96 = v190;
    v213 = v95;
    v191 = v95;
    *(v95 + 16) = sub_1B039BA88;
    *(v95 + 24) = v96;
    v214 = swift_allocObject();
    v193 = v214;
    *(v214 + 16) = v192;
    v215 = swift_allocObject();
    v194 = v215;
    *(v215 + 16) = v201;
    v97 = swift_allocObject();
    v98 = v195;
    v196 = v97;
    *(v97 + 16) = sub_1B039BB94;
    *(v97 + 24) = v98;
    v99 = swift_allocObject();
    v100 = v196;
    v216 = v99;
    v197 = v99;
    *(v99 + 16) = sub_1B0394C24;
    *(v99 + 24) = v100;
    v217 = swift_allocObject();
    v200 = v217;
    *(v217 + 16) = v198;
    v218 = swift_allocObject();
    v202 = v218;
    *(v218 + 16) = v201;
    v101 = swift_allocObject();
    v102 = v205;
    v206 = v101;
    *(v101 + 16) = sub_1B039BBA0;
    *(v101 + 24) = v102;
    v103 = swift_allocObject();
    v104 = v206;
    v221 = v103;
    v207 = v103;
    *(v103 + 16) = sub_1B039BC08;
    *(v103 + 24) = v104;
    v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v219 = sub_1B0E46A48();
    v220 = v105;

    v106 = v208;
    v107 = v220;
    *v220 = sub_1B0398F5C;
    v107[1] = v106;

    v108 = v209;
    v109 = v220;
    v220[2] = sub_1B0398F5C;
    v109[3] = v108;

    v110 = v210;
    v111 = v220;
    v220[4] = sub_1B0399178;
    v111[5] = v110;

    v112 = v211;
    v113 = v220;
    v220[6] = sub_1B0398F5C;
    v113[7] = v112;

    v114 = v212;
    v115 = v220;
    v220[8] = sub_1B0398F5C;
    v115[9] = v114;

    v116 = v213;
    v117 = v220;
    v220[10] = sub_1B039BA94;
    v117[11] = v116;

    v118 = v214;
    v119 = v220;
    v220[12] = sub_1B0398F5C;
    v119[13] = v118;

    v120 = v215;
    v121 = v220;
    v220[14] = sub_1B0398F5C;
    v121[15] = v120;

    v122 = v216;
    v123 = v220;
    v220[16] = sub_1B0399178;
    v123[17] = v122;

    v124 = v217;
    v125 = v220;
    v220[18] = sub_1B0398F5C;
    v125[19] = v124;

    v126 = v218;
    v127 = v220;
    v220[20] = sub_1B0398F5C;
    v127[21] = v126;

    v128 = v220;
    v129 = v221;
    v220[22] = sub_1B03991EC;
    v128[23] = v129;
    sub_1B0394964();

    if (os_log_type_enabled(v224, v223))
    {
      v130 = v354;
      v170 = sub_1B0E45D78();
      v166 = v170;
      v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v168 = 0;
      v171 = sub_1B03949A8(0);
      v169 = v171;
      v172 = sub_1B03949A8(v168);
      v402 = v170;
      v401 = v171;
      v400 = v172;
      v173 = &v402;
      sub_1B0394A48(0, &v402);
      sub_1B0394A48(4, v173);
      v398 = sub_1B0398F5C;
      v399 = v183;
      sub_1B03949FC(&v398, v173, &v401, &v400);
      v174 = v130;
      v175 = v130;
      if (v130)
      {
        v164 = 0;

        __break(1u);
      }

      else
      {
        v398 = sub_1B0398F5C;
        v399 = v184;
        sub_1B03949FC(&v398, &v402, &v401, &v400);
        v162 = 0;
        v163 = 0;
        v398 = sub_1B0399178;
        v399 = v186;
        sub_1B03949FC(&v398, &v402, &v401, &v400);
        v160 = 0;
        v161 = 0;
        v398 = sub_1B0398F5C;
        v399 = v187;
        sub_1B03949FC(&v398, &v402, &v401, &v400);
        v158 = 0;
        v159 = 0;
        v398 = sub_1B0398F5C;
        v399 = v188;
        sub_1B03949FC(&v398, &v402, &v401, &v400);
        v156 = 0;
        v157 = 0;
        v398 = sub_1B039BA94;
        v399 = v191;
        sub_1B03949FC(&v398, &v402, &v401, &v400);
        v154 = 0;
        v155 = 0;
        v398 = sub_1B0398F5C;
        v399 = v193;
        sub_1B03949FC(&v398, &v402, &v401, &v400);
        v152 = 0;
        v153 = 0;
        v398 = sub_1B0398F5C;
        v399 = v194;
        sub_1B03949FC(&v398, &v402, &v401, &v400);
        v150 = 0;
        v151 = 0;
        v398 = sub_1B0399178;
        v399 = v197;
        sub_1B03949FC(&v398, &v402, &v401, &v400);
        v148 = 0;
        v149 = 0;
        v398 = sub_1B0398F5C;
        v399 = v200;
        sub_1B03949FC(&v398, &v402, &v401, &v400);
        v146 = 0;
        v147 = 0;
        v398 = sub_1B0398F5C;
        v399 = v202;
        sub_1B03949FC(&v398, &v402, &v401, &v400);
        v144 = 0;
        v145 = 0;
        v398 = sub_1B03991EC;
        v399 = v207;
        sub_1B03949FC(&v398, &v402, &v401, &v400);
        v142 = 0;
        v143 = 0;
        _os_log_impl(&dword_1B0389000, v181, v182, "[%.*hhx-%.*X] Missing mailbox name for user-initiated search", v166, 0x17u);
        v141 = 0;
        sub_1B03998A8(v169);
        sub_1B03998A8(v172);
        sub_1B0E45D58();

        v165 = v142;
      }
    }

    else
    {
      v131 = v354;

      v165 = v131;
    }

    v140 = v165;

    (*(v357 + 8))(v359, v355);
    v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E36D0, &unk_1B0EA1DA0);
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v132);
    sub_1B09AE74C();
    v137[1] = 0;
    v138 = swift_allocError();
    v139 = _s11SearchStateV7ResultsCMa();
    v315 = sub_1B094DEE8(v138);
    v316 = v140;
    return v315;
  }

  v13 = v368;
  (*(v378 + 32))(v382, v373, v376);
  v346 = v353 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxPersistence;
  v347 = &v397;
  swift_beginAccess();
  sub_1B03F4D78(v346, v13);
  swift_endAccess();
  (*(v378 + 16))(v371, v382, v376);
  (*(v378 + 56))(v371, 0, 1, v376);
  v350 = sub_1B07BF5C8(v371);
  v348 = v350;
  v349 = v14;
  sub_1B06E3800(v371);
  sub_1B03F4F08(v368);
  if (!v350)
  {
    (*(v378 + 8))(v382, v376);
    goto LABEL_27;
  }

  v344 = v348;
  v345 = v349;
  v341 = v349;
  v342 = v348;
  v395 = v348;
  v396 = v349;
  MailboxRowID.init(_:)([v375 databaseID], &v393);
  v343 = v393;
  if (v394)
  {

    (*(v378 + 8))(v382, v376);
    goto LABEL_27;
  }

  v340 = v343;
  v331 = v343;
  v392 = v343;
  v337 = 0x1E7A9F000uLL;
  v332 = objc_opt_self();
  v333 = sub_1B08F5E90();
  v334 = v333;
  v15 = sub_1B0E46A48();
  v336 = v16;
  v335 = v15;
  v17 = v374;
  v18 = v336;
  v19 = v337;
  *v336 = v374;
  v338 = v18 + 1;
  v20 = *(v19 + 1376);
  v21 = [objc_opt_self() messageIsDeletedCriterion_];
  v339 = v21;
  if (v21)
  {
    v330 = v339;
  }

  else
  {
    LODWORD(v136) = 0;
    v135 = 30;
    LOBYTE(v134) = 2;
    sub_1B0E465A8();
    __break(1u);
  }

  v22 = v335;
  *v338 = v330;
  sub_1B0394964();
  v326 = v22;
  v327 = sub_1B0E451A8();

  v329 = [v332 andCompoundCriterionWithCriteria_];
  v328 = v329;

  if (v329)
  {
    v325 = v328;
  }

  else
  {
    LODWORD(v136) = 0;
    v135 = 31;
    LOBYTE(v134) = 2;
    sub_1B0E465A8();
    __break(1u);
  }

  v323 = v325;
  v391 = v325;
  v23 = v325;
  v324 = sub_1B0A3AA90(v323);
  if ((~v324 & 0xF000000000000007) == 0)
  {
    v31 = v361;
    v265 = &OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger;
    sub_1B0394784(v353 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v367);
    (*(v357 + 16))(v31, v367, v355);
    sub_1B039480C(v367);

    sub_1B0394784(v353 + *v265, v365);
    v32 = (v365 + *(v362 + 20));
    v267 = *v32;
    v268 = *(v32 + 1);
    sub_1B039480C(v365);

    v266 = 24;
    v293 = 7;
    v33 = swift_allocObject();
    v34 = v268;
    v278 = v33;
    *(v33 + 16) = v267;
    *(v33 + 20) = v34;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v35 = swift_allocObject();
    v36 = v268;
    v269 = v35;
    *(v35 + 16) = v267;
    *(v35 + 20) = v36;

    v292 = 32;
    v37 = swift_allocObject();
    v38 = v269;
    v294 = v37;
    *(v37 + 16) = sub_1B039BBE8;
    *(v37 + 24) = v38;
    sub_1B0394868();
    sub_1B0394868();

    v313 = sub_1B0E43988();
    v270 = v313;
    v312 = sub_1B0E458E8();
    v271 = v312;
    v288 = 17;
    v297 = swift_allocObject();
    v272 = v297;
    v281 = 16;
    *(v297 + 16) = 16;
    v298 = swift_allocObject();
    v273 = v298;
    v290 = 4;
    *(v298 + 16) = 4;
    v39 = swift_allocObject();
    v274 = v39;
    *(v39 + 16) = sub_1B0394C30;
    v284 = 0;
    *(v39 + 24) = 0;
    v40 = swift_allocObject();
    v41 = v274;
    v299 = v40;
    v275 = v40;
    *(v40 + 16) = sub_1B0394C24;
    *(v40 + 24) = v41;
    v300 = swift_allocObject();
    v276 = v300;
    v287 = 0;
    *(v300 + 16) = 0;
    v301 = swift_allocObject();
    v277 = v301;
    *(v301 + 16) = 1;
    v42 = swift_allocObject();
    v43 = v278;
    v279 = v42;
    *(v42 + 16) = sub_1B039BA2C;
    *(v42 + 24) = v43;
    v44 = swift_allocObject();
    v45 = v279;
    v302 = v44;
    v280 = v44;
    *(v44 + 16) = sub_1B039BA88;
    *(v44 + 24) = v45;
    v303 = swift_allocObject();
    v282 = v303;
    *(v303 + 16) = v281;
    v304 = swift_allocObject();
    v283 = v304;
    *(v304 + 16) = v290;
    v46 = swift_allocObject();
    v47 = v284;
    v285 = v46;
    *(v46 + 16) = sub_1B039BB94;
    *(v46 + 24) = v47;
    v48 = swift_allocObject();
    v49 = v285;
    v305 = v48;
    v286 = v48;
    *(v48 + 16) = sub_1B0394C24;
    *(v48 + 24) = v49;
    v306 = swift_allocObject();
    v289 = v306;
    *(v306 + 16) = v287;
    v307 = swift_allocObject();
    v291 = v307;
    *(v307 + 16) = v290;
    v50 = swift_allocObject();
    v51 = v294;
    v295 = v50;
    *(v50 + 16) = sub_1B039BBA0;
    *(v50 + 24) = v51;
    v52 = swift_allocObject();
    v53 = v295;
    v310 = v52;
    v296 = v52;
    *(v52 + 16) = sub_1B039BC08;
    *(v52 + 24) = v53;
    v311 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v308 = sub_1B0E46A48();
    v309 = v54;

    v55 = v297;
    v56 = v309;
    *v309 = sub_1B0398F5C;
    v56[1] = v55;

    v57 = v298;
    v58 = v309;
    v309[2] = sub_1B0398F5C;
    v58[3] = v57;

    v59 = v299;
    v60 = v309;
    v309[4] = sub_1B0399178;
    v60[5] = v59;

    v61 = v300;
    v62 = v309;
    v309[6] = sub_1B0398F5C;
    v62[7] = v61;

    v63 = v301;
    v64 = v309;
    v309[8] = sub_1B0398F5C;
    v64[9] = v63;

    v65 = v302;
    v66 = v309;
    v309[10] = sub_1B039BA94;
    v66[11] = v65;

    v67 = v303;
    v68 = v309;
    v309[12] = sub_1B0398F5C;
    v68[13] = v67;

    v69 = v304;
    v70 = v309;
    v309[14] = sub_1B0398F5C;
    v70[15] = v69;

    v71 = v305;
    v72 = v309;
    v309[16] = sub_1B0399178;
    v72[17] = v71;

    v73 = v306;
    v74 = v309;
    v309[18] = sub_1B0398F5C;
    v74[19] = v73;

    v75 = v307;
    v76 = v309;
    v309[20] = sub_1B0398F5C;
    v76[21] = v75;

    v77 = v309;
    v78 = v310;
    v309[22] = sub_1B03991EC;
    v77[23] = v78;
    sub_1B0394964();

    if (os_log_type_enabled(v313, v312))
    {
      v79 = v354;
      v259 = sub_1B0E45D78();
      v255 = v259;
      v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v257 = 0;
      v260 = sub_1B03949A8(0);
      v258 = v260;
      v261 = sub_1B03949A8(v257);
      v390 = v259;
      v389 = v260;
      v388 = v261;
      v262 = &v390;
      sub_1B0394A48(0, &v390);
      sub_1B0394A48(4, v262);
      v386 = sub_1B0398F5C;
      v387 = v272;
      sub_1B03949FC(&v386, v262, &v389, &v388);
      v263 = v79;
      v264 = v79;
      if (v79)
      {
        v253 = 0;

        __break(1u);
      }

      else
      {
        v386 = sub_1B0398F5C;
        v387 = v273;
        sub_1B03949FC(&v386, &v390, &v389, &v388);
        v251 = 0;
        v252 = 0;
        v386 = sub_1B0399178;
        v387 = v275;
        sub_1B03949FC(&v386, &v390, &v389, &v388);
        v249 = 0;
        v250 = 0;
        v386 = sub_1B0398F5C;
        v387 = v276;
        sub_1B03949FC(&v386, &v390, &v389, &v388);
        v247 = 0;
        v248 = 0;
        v386 = sub_1B0398F5C;
        v387 = v277;
        sub_1B03949FC(&v386, &v390, &v389, &v388);
        v245 = 0;
        v246 = 0;
        v386 = sub_1B039BA94;
        v387 = v280;
        sub_1B03949FC(&v386, &v390, &v389, &v388);
        v243 = 0;
        v244 = 0;
        v386 = sub_1B0398F5C;
        v387 = v282;
        sub_1B03949FC(&v386, &v390, &v389, &v388);
        v241 = 0;
        v242 = 0;
        v386 = sub_1B0398F5C;
        v387 = v283;
        sub_1B03949FC(&v386, &v390, &v389, &v388);
        v239 = 0;
        v240 = 0;
        v386 = sub_1B0399178;
        v387 = v286;
        sub_1B03949FC(&v386, &v390, &v389, &v388);
        v237 = 0;
        v238 = 0;
        v386 = sub_1B0398F5C;
        v387 = v289;
        sub_1B03949FC(&v386, &v390, &v389, &v388);
        v235 = 0;
        v236 = 0;
        v386 = sub_1B0398F5C;
        v387 = v291;
        sub_1B03949FC(&v386, &v390, &v389, &v388);
        v233 = 0;
        v234 = 0;
        v386 = sub_1B03991EC;
        v387 = v296;
        sub_1B03949FC(&v386, &v390, &v389, &v388);
        v231 = 0;
        v232 = 0;
        _os_log_impl(&dword_1B0389000, v270, v271, "[%.*hhx-%.*X] Unable to construct predicates for user-initiated search", v255, 0x17u);
        v230 = 0;
        sub_1B03998A8(v258);
        sub_1B03998A8(v261);
        sub_1B0E45D58();

        v254 = v231;
      }
    }

    else
    {
      v80 = v354;

      v254 = v80;
    }

    v229 = v254;

    (*(v357 + 8))(v361, v355);
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E36D0, &unk_1B0EA1DA0);
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v81);
    sub_1B09AE74C();
    v225 = 0;
    v226 = swift_allocError();
    v227 = _s11SearchStateV7ResultsCMa();
    v228 = sub_1B094DEE8(v226);

    (*(v378 + 8))(v382, v376);
    v315 = v228;
    v316 = v229;
    return v315;
  }

  v322 = v324;
  v24 = v354;
  v318 = v324;
  v385 = v324;
  v317 = *(v353 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workQueue);
  v25 = v317;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B09AE83C(v318);
  v319 = v137;
  MEMORY[0x1EEE9AC00](v137);
  v26 = v342;
  v27 = v341;
  v320 = &v137[-8];
  v137[-6] = v28;
  v137[-5] = v29;
  v134 = v26;
  LODWORD(v135) = v27;
  v136 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E36D0, &unk_1B0EA1DA0);
  sub_1B0E459D8();
  v321 = v24;
  if (!v24)
  {

    sub_1B09AEA14(v318);

    v314 = v384;
    sub_1B09AEA14(v318);

    (*(v378 + 8))(v382, v376);
    v315 = v314;
    v316 = v321;
    return v315;
  }

  result = sub_1B09AEA14(v318);
  __break(1u);
  return result;
}

unint64_t sub_1B099F21C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, unint64_t a5@<X4>, unint64_t *a6@<X8>)
{
  v21 = a6;
  v12 = a2;
  v18 = a3;
  v19 = a4;
  v14 = a5;
  v28 = 0;
  v27 = 0;
  v25 = 0;
  v16 = 0;
  v26 = 0;
  v24 = 0;
  v15 = _s11SearchStateV6SearchV4KindOMa();
  v13 = (*(*(v15 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v14);
  v20 = (&v12 - v13);
  v28 = a1;
  v27 = v8;
  v25 = v9;
  v26 = v10;
  v24 = v7;
  v17 = &v23;
  v23 = v8;
  sub_1B09AE83C(v7);
  *v20 = v14;
  swift_storeEnumTagMultiPayload();
  v22 = sub_1B099F358(v17, v18, v19, v20);
  sub_1B09AFA80(v20);
  result = v22;
  *v21 = v22;
  return result;
}

unint64_t sub_1B099F358(uint64_t a1, uint64_t a2, int a3, unint64_t *a4)
{
  v535 = a4;
  v534 = a3;
  v537 = a2;
  v536 = a1;
  v531 = 0;
  v569 = 0;
  v568 = 0;
  v567 = 0;
  v566 = 0;
  v565 = 0;
  v562 = 0;
  v561 = 0;
  v560 = 0;
  v559 = 0;
  v558 = 0;
  v570 = 0;
  v510 = 0;
  v551 = 0;
  v545 = 0;
  v511 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10) - 8);
  v512 = v511;
  v514 = *(v511 + 64);
  v513 = v514;
  v5 = MEMORY[0x1EEE9AC00](0);
  v516 = (v514 + 15) & 0xFFFFFFFFFFFFFFF0;
  v515 = &v209 - v516;
  MEMORY[0x1EEE9AC00](v5);
  v517 = &v209 - v516;
  v570 = &v209 - v516;
  v518 = sub_1B0E439A8();
  v519 = *(v518 - 8);
  v520 = v519;
  v521 = *(v519 + 64);
  v6 = MEMORY[0x1EEE9AC00](v531);
  v523 = (v521 + 15) & 0xFFFFFFFFFFFFFFF0;
  v522 = &v209 - v523;
  MEMORY[0x1EEE9AC00](v6);
  v524 = &v209 - v523;
  v525 = _s6LoggerVMa();
  v527 = *(*(v525 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v531);
  v529 = (v527 + 15) & 0xFFFFFFFFFFFFFFF0;
  v526 = &v209 - v529;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v528 = &v209 - v529;
  MEMORY[0x1EEE9AC00](v8);
  v530 = &v209 - v529;
  v532 = _s11SearchStateV6SearchV4KindOMa();
  v9 = *(*(v532 - 8) + 64);
  MEMORY[0x1EEE9AC00](v531);
  v533 = (&v209 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v542 = sub_1B0E44468();
  v538 = *(v542 - 8);
  v541 = v538;
  v11 = *(v538 + 64);
  v12 = MEMORY[0x1EEE9AC00](v536);
  v543 = (&v209 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v539 = *v12;
  v569 = v539;
  v567 = v14;
  v568 = v15;
  v566 = v16;
  v565 = v4;

  v540 = *(v4 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop);
  v17 = v540;
  v18 = v541;
  *v543 = v540;
  v19 = *MEMORY[0x1E69E8020];
  (*(v18 + 104))();
  v544 = sub_1B0E44488();
  (*(v541 + 8))(v543, v542);
  result = v544;
  if (v544)
  {

    v564 = v539;

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v504 = &v209;
    MEMORY[0x1EEE9AC00](&v209);
    v21 = v534;
    v22 = v535;
    v499 = &v209 - 6;
    *(&v209 - 4) = v23;
    *(&v209 - 3) = v24;
    *(&v209 - 4) = v21;
    *(&v209 - 1) = v22;
    v500 = &v563;
    swift_beginAccess();
    v505 = sub_1B09AB17C(v537, v534, &v564, v535, sub_1B09AEC28, v499);
    v506 = v25;
    v508 = v26;
    v501 = v505;
    v502 = v25;
    v507 = v26 & 1;
    v503 = v26;
    swift_endAccess();

    v560 = v505;
    v561 = v506;
    v562 = v507;
    if (v508)
    {
      v496 = v501;
      v497 = v502;
      v492 = v502;
      v491 = v501;
      v28 = v502;
      v559 = v491;
      v558 = v492;
      sub_1B09AEC3C(v535, v533);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v123 = v522;
        sub_1B074BA2C(v533, v517);
        v570 = v517;
        v270 = &OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger;
        sub_1B0394784(v509 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v526);
        (*(v520 + 16))(v123, v526, v518);
        sub_1B039480C(v526);

        sub_1B0394784(v509 + *v270, v528);
        v124 = (v528 + *(v525 + 20));
        v271 = *v124;
        v272 = *(v124 + 1);
        sub_1B039480C(v528);

        v302 = 24;
        v316 = 7;
        v125 = swift_allocObject();
        v126 = v272;
        v285 = v125;
        *(v125 + 16) = v271;
        *(v125 + 20) = v126;
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v127 = swift_allocObject();
        v128 = v272;
        v273 = v127;
        *(v127 + 16) = v271;
        *(v127 + 20) = v128;

        v315 = 32;
        v129 = swift_allocObject();
        v130 = v273;
        v298 = v129;
        *(v129 + 16) = sub_1B039BBE8;
        *(v129 + 24) = v130;
        sub_1B0394868();
        sub_1B0394868();

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v131 = swift_allocObject();
        v132 = v534;
        v274 = v131;
        *(v131 + 16) = v537;
        *(v131 + 24) = v132;

        v133 = swift_allocObject();
        v134 = v274;
        v308 = v133;
        *(v133 + 16) = sub_1B07C8FC0;
        *(v133 + 24) = v134;

        sub_1B03D08AC(v517, v515);
        v275 = (*(v512 + 80) + 16) & ~*(v512 + 80);
        v276 = swift_allocObject();
        sub_1B074BA2C(v515, v276 + v275);

        v135 = swift_allocObject();
        v136 = v276;
        v317 = v135;
        *(v135 + 16) = sub_1B09AED10;
        *(v135 + 24) = v136;

        v345 = sub_1B0E43988();
        v277 = v345;
        v344 = sub_1B0E45908();
        v278 = v344;
        v311 = 17;
        v320 = swift_allocObject();
        v279 = v320;
        v288 = 16;
        *(v320 + 16) = 16;
        v321 = swift_allocObject();
        v280 = v321;
        v296 = 4;
        *(v321 + 16) = 4;
        v137 = swift_allocObject();
        v281 = v137;
        *(v137 + 16) = sub_1B0394C30;
        v291 = 0;
        *(v137 + 24) = 0;
        v138 = swift_allocObject();
        v139 = v281;
        v322 = v138;
        v282 = v138;
        *(v138 + 16) = sub_1B0394C24;
        *(v138 + 24) = v139;
        v323 = swift_allocObject();
        v283 = v323;
        v294 = 0;
        *(v323 + 16) = 0;
        v324 = swift_allocObject();
        v284 = v324;
        *(v324 + 16) = 1;
        v140 = swift_allocObject();
        v141 = v285;
        v286 = v140;
        *(v140 + 16) = sub_1B039BA2C;
        *(v140 + 24) = v141;
        v142 = swift_allocObject();
        v143 = v286;
        v325 = v142;
        v287 = v142;
        *(v142 + 16) = sub_1B039BA88;
        *(v142 + 24) = v143;
        v326 = swift_allocObject();
        v289 = v326;
        *(v326 + 16) = v288;
        v327 = swift_allocObject();
        v290 = v327;
        *(v327 + 16) = v296;
        v144 = swift_allocObject();
        v145 = v291;
        v292 = v144;
        *(v144 + 16) = sub_1B039BB94;
        *(v144 + 24) = v145;
        v146 = swift_allocObject();
        v147 = v292;
        v328 = v146;
        v293 = v146;
        *(v146 + 16) = sub_1B0394C24;
        *(v146 + 24) = v147;
        v329 = swift_allocObject();
        v295 = v329;
        *(v329 + 16) = v294;
        v330 = swift_allocObject();
        v297 = v330;
        *(v330 + 16) = v296;
        v148 = swift_allocObject();
        v149 = v298;
        v299 = v148;
        *(v148 + 16) = sub_1B039BBA0;
        *(v148 + 24) = v149;
        v150 = swift_allocObject();
        v151 = v299;
        v331 = v150;
        v300 = v150;
        *(v150 + 16) = sub_1B039BC08;
        *(v150 + 24) = v151;
        v332 = swift_allocObject();
        v301 = v332;
        *(v332 + 16) = 112;
        v333 = swift_allocObject();
        v303 = v333;
        v313 = 8;
        *(v333 + 16) = 8;
        v304 = swift_allocObject();
        *(v304 + 16) = 0x786F626C69616DLL;
        v152 = swift_allocObject();
        v153 = v304;
        v334 = v152;
        v305 = v152;
        *(v152 + 16) = sub_1B06BA324;
        *(v152 + 24) = v153;
        v335 = swift_allocObject();
        v306 = v335;
        *(v335 + 16) = 37;
        v336 = swift_allocObject();
        v307 = v336;
        *(v336 + 16) = v313;
        v154 = swift_allocObject();
        v155 = v308;
        v309 = v154;
        *(v154 + 16) = sub_1B06E395C;
        *(v154 + 24) = v155;
        v156 = swift_allocObject();
        v157 = v309;
        v337 = v156;
        v310 = v156;
        *(v156 + 16) = sub_1B039BCF8;
        *(v156 + 24) = v157;
        v338 = swift_allocObject();
        v312 = v338;
        *(v338 + 16) = 34;
        v339 = swift_allocObject();
        v314 = v339;
        *(v339 + 16) = v313;
        v158 = swift_allocObject();
        v159 = v317;
        v318 = v158;
        *(v158 + 16) = sub_1B09AED90;
        *(v158 + 24) = v159;
        v160 = swift_allocObject();
        v161 = v318;
        v342 = v160;
        v319 = v160;
        *(v160 + 16) = sub_1B039BCF8;
        *(v160 + 24) = v161;
        v343 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v340 = sub_1B0E46A48();
        v341 = v162;

        v163 = v320;
        v164 = v341;
        *v341 = sub_1B0398F5C;
        v164[1] = v163;

        v165 = v321;
        v166 = v341;
        v341[2] = sub_1B0398F5C;
        v166[3] = v165;

        v167 = v322;
        v168 = v341;
        v341[4] = sub_1B0399178;
        v168[5] = v167;

        v169 = v323;
        v170 = v341;
        v341[6] = sub_1B0398F5C;
        v170[7] = v169;

        v171 = v324;
        v172 = v341;
        v341[8] = sub_1B0398F5C;
        v172[9] = v171;

        v173 = v325;
        v174 = v341;
        v341[10] = sub_1B039BA94;
        v174[11] = v173;

        v175 = v326;
        v176 = v341;
        v341[12] = sub_1B0398F5C;
        v176[13] = v175;

        v177 = v327;
        v178 = v341;
        v341[14] = sub_1B0398F5C;
        v178[15] = v177;

        v179 = v328;
        v180 = v341;
        v341[16] = sub_1B0399178;
        v180[17] = v179;

        v181 = v329;
        v182 = v341;
        v341[18] = sub_1B0398F5C;
        v182[19] = v181;

        v183 = v330;
        v184 = v341;
        v341[20] = sub_1B0398F5C;
        v184[21] = v183;

        v185 = v331;
        v186 = v341;
        v341[22] = sub_1B03991EC;
        v186[23] = v185;

        v187 = v332;
        v188 = v341;
        v341[24] = sub_1B0398F5C;
        v188[25] = v187;

        v189 = v333;
        v190 = v341;
        v341[26] = sub_1B0398F5C;
        v190[27] = v189;

        v191 = v334;
        v192 = v341;
        v341[28] = sub_1B03993BC;
        v192[29] = v191;

        v193 = v335;
        v194 = v341;
        v341[30] = sub_1B0398F5C;
        v194[31] = v193;

        v195 = v336;
        v196 = v341;
        v341[32] = sub_1B0398F5C;
        v196[33] = v195;

        v197 = v337;
        v198 = v341;
        v341[34] = sub_1B039BCEC;
        v198[35] = v197;

        v199 = v338;
        v200 = v341;
        v341[36] = sub_1B0398F5C;
        v200[37] = v199;

        v201 = v339;
        v202 = v341;
        v341[38] = sub_1B0398F5C;
        v202[39] = v201;

        v203 = v341;
        v204 = v342;
        v341[40] = sub_1B039BCEC;
        v203[41] = v204;
        sub_1B0394964();

        if (os_log_type_enabled(v345, v344))
        {
          v205 = v510;
          v264 = sub_1B0E45D78();
          v261 = v264;
          v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v265 = sub_1B03949A8(0);
          v263 = v265;
          v266 = sub_1B03949A8(2);
          v556 = v264;
          v555 = v265;
          v554 = v266;
          v267 = &v556;
          sub_1B0394A48(3, &v556);
          sub_1B0394A48(7, v267);
          v552 = sub_1B0398F5C;
          v553 = v279;
          sub_1B03949FC(&v552, v267, &v555, &v554);
          v268 = v205;
          v269 = v205;
          if (v205)
          {
            v259 = 0;

            __break(1u);
          }

          else
          {
            v552 = sub_1B0398F5C;
            v553 = v280;
            sub_1B03949FC(&v552, &v556, &v555, &v554);
            v257 = 0;
            v258 = 0;
            v552 = sub_1B0399178;
            v553 = v282;
            sub_1B03949FC(&v552, &v556, &v555, &v554);
            v255 = 0;
            v256 = 0;
            v552 = sub_1B0398F5C;
            v553 = v283;
            sub_1B03949FC(&v552, &v556, &v555, &v554);
            v253 = 0;
            v254 = 0;
            v552 = sub_1B0398F5C;
            v553 = v284;
            sub_1B03949FC(&v552, &v556, &v555, &v554);
            v251 = 0;
            v252 = 0;
            v552 = sub_1B039BA94;
            v553 = v287;
            sub_1B03949FC(&v552, &v556, &v555, &v554);
            v249 = 0;
            v250 = 0;
            v552 = sub_1B0398F5C;
            v553 = v289;
            sub_1B03949FC(&v552, &v556, &v555, &v554);
            v247 = 0;
            v248 = 0;
            v552 = sub_1B0398F5C;
            v553 = v290;
            sub_1B03949FC(&v552, &v556, &v555, &v554);
            v245 = 0;
            v246 = 0;
            v552 = sub_1B0399178;
            v553 = v293;
            sub_1B03949FC(&v552, &v556, &v555, &v554);
            v243 = 0;
            v244 = 0;
            v552 = sub_1B0398F5C;
            v553 = v295;
            sub_1B03949FC(&v552, &v556, &v555, &v554);
            v241 = 0;
            v242 = 0;
            v552 = sub_1B0398F5C;
            v553 = v297;
            sub_1B03949FC(&v552, &v556, &v555, &v554);
            v239 = 0;
            v240 = 0;
            v552 = sub_1B03991EC;
            v553 = v300;
            sub_1B03949FC(&v552, &v556, &v555, &v554);
            v237 = 0;
            v238 = 0;
            v552 = sub_1B0398F5C;
            v553 = v301;
            sub_1B03949FC(&v552, &v556, &v555, &v554);
            v235 = 0;
            v236 = 0;
            v552 = sub_1B0398F5C;
            v553 = v303;
            sub_1B03949FC(&v552, &v556, &v555, &v554);
            v233 = 0;
            v234 = 0;
            v552 = sub_1B03993BC;
            v553 = v305;
            sub_1B03949FC(&v552, &v556, &v555, &v554);
            v231 = 0;
            v232 = 0;
            v552 = sub_1B0398F5C;
            v553 = v306;
            sub_1B03949FC(&v552, &v556, &v555, &v554);
            v229 = 0;
            v230 = 0;
            v552 = sub_1B0398F5C;
            v553 = v307;
            sub_1B03949FC(&v552, &v556, &v555, &v554);
            v227 = 0;
            v228 = 0;
            v552 = sub_1B039BCEC;
            v553 = v310;
            sub_1B03949FC(&v552, &v556, &v555, &v554);
            v225 = 0;
            v226 = 0;
            v552 = sub_1B0398F5C;
            v553 = v312;
            sub_1B03949FC(&v552, &v556, &v555, &v554);
            v223 = 0;
            v224 = 0;
            v552 = sub_1B0398F5C;
            v553 = v314;
            sub_1B03949FC(&v552, &v556, &v555, &v554);
            v221 = 0;
            v222 = 0;
            v552 = sub_1B039BCEC;
            v553 = v319;
            sub_1B03949FC(&v552, &v556, &v555, &v554);
            v219 = 0;
            v220 = 0;
            _os_log_impl(&dword_1B0389000, v277, v278, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Requesting search download of UIDs: %{public}s", v261, 0x35u);
            sub_1B03998A8(v263);
            sub_1B03998A8(v266);
            sub_1B0E45D58();

            v260 = v219;
          }
        }

        else
        {
          v206 = v510;

          v260 = v206;
        }

        v218 = v260;

        (*(v520 + 8))(v522, v518);
        sub_1B03D09B8(v517);
        v347 = v218;
      }

      else
      {
        v29 = v524;
        v412 = *v533;
        v405 = v412;
        v551 = v412;
        v406 = &OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger;
        sub_1B0394784(v509 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v530);
        (*(v520 + 16))(v29, v530, v518);
        sub_1B039480C(v530);

        sub_1B0394784(v509 + *v406, v528);
        v30 = (v528 + *(v525 + 20));
        v407 = *v30;
        v408 = *(v30 + 1);
        sub_1B039480C(v528);

        v461 = 24;
        v457 = 7;
        v31 = swift_allocObject();
        v32 = v408;
        v421 = v31;
        *(v31 + 16) = v407;
        *(v31 + 20) = v32;
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v33 = swift_allocObject();
        v34 = v408;
        v409 = v33;
        *(v33 + 16) = v407;
        *(v33 + 20) = v34;

        v451 = 32;
        v456 = 32;
        v35 = swift_allocObject();
        v36 = v409;
        v432 = v35;
        *(v35 + 16) = sub_1B039BBE8;
        *(v35 + 24) = v36;
        sub_1B0394868();
        sub_1B0394868();

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v37 = swift_allocObject();
        v38 = v534;
        v410 = v37;
        *(v37 + 16) = v537;
        *(v37 + 24) = v38;

        v39 = swift_allocObject();
        v40 = v410;
        v441 = v39;
        *(v39 + 16) = sub_1B07C8FC0;
        *(v39 + 24) = v40;

        v411 = swift_allocObject();
        *(v411 + 16) = v491;

        v41 = swift_allocObject();
        v42 = v411;
        v448 = v41;
        *(v41 + 16) = sub_1B03F7AE0;
        *(v41 + 24) = v42;

        sub_1B09AE83C(v412);
        v458 = swift_allocObject();
        *(v458 + 16) = v412;
        v490 = sub_1B0E43988();
        v413 = v490;
        v489 = sub_1B0E45908();
        v414 = v489;
        v452 = 17;
        v462 = swift_allocObject();
        v415 = v462;
        v424 = 16;
        *(v462 + 16) = 16;
        v463 = swift_allocObject();
        v416 = v463;
        v446 = 4;
        *(v463 + 16) = 4;
        v43 = swift_allocObject();
        v417 = v43;
        *(v43 + 16) = sub_1B0394C30;
        v427 = 0;
        *(v43 + 24) = 0;
        v44 = swift_allocObject();
        v45 = v417;
        v464 = v44;
        v418 = v44;
        *(v44 + 16) = sub_1B0394C24;
        *(v44 + 24) = v45;
        v465 = swift_allocObject();
        v419 = v465;
        v444 = 0;
        *(v465 + 16) = 0;
        v466 = swift_allocObject();
        v420 = v466;
        *(v466 + 16) = 1;
        v46 = swift_allocObject();
        v47 = v421;
        v422 = v46;
        *(v46 + 16) = sub_1B039BA2C;
        *(v46 + 24) = v47;
        v48 = swift_allocObject();
        v49 = v422;
        v467 = v48;
        v423 = v48;
        *(v48 + 16) = sub_1B039BA88;
        *(v48 + 24) = v49;
        v468 = swift_allocObject();
        v425 = v468;
        *(v468 + 16) = v424;
        v469 = swift_allocObject();
        v426 = v469;
        *(v469 + 16) = v446;
        v50 = swift_allocObject();
        v51 = v427;
        v428 = v50;
        *(v50 + 16) = sub_1B039BB94;
        *(v50 + 24) = v51;
        v52 = swift_allocObject();
        v53 = v428;
        v470 = v52;
        v429 = v52;
        *(v52 + 16) = sub_1B0394C24;
        *(v52 + 24) = v53;
        v471 = swift_allocObject();
        v430 = v471;
        *(v471 + 16) = v444;
        v472 = swift_allocObject();
        v431 = v472;
        *(v472 + 16) = v446;
        v54 = swift_allocObject();
        v55 = v432;
        v433 = v54;
        *(v54 + 16) = sub_1B039BBA0;
        *(v54 + 24) = v55;
        v56 = swift_allocObject();
        v57 = v433;
        v473 = v56;
        v434 = v56;
        *(v56 + 16) = sub_1B039BC08;
        *(v56 + 24) = v57;
        v474 = swift_allocObject();
        v435 = v474;
        *(v474 + 16) = 112;
        v475 = swift_allocObject();
        v436 = v475;
        v454 = 8;
        *(v475 + 16) = 8;
        v437 = swift_allocObject();
        *(v437 + 16) = 0x786F626C69616DLL;
        v58 = swift_allocObject();
        v59 = v437;
        v476 = v58;
        v438 = v58;
        *(v58 + 16) = sub_1B06BA324;
        *(v58 + 24) = v59;
        v477 = swift_allocObject();
        v439 = v477;
        *(v477 + 16) = 37;
        v478 = swift_allocObject();
        v440 = v478;
        *(v478 + 16) = v454;
        v60 = swift_allocObject();
        v61 = v441;
        v442 = v60;
        *(v60 + 16) = sub_1B06E395C;
        *(v60 + 24) = v61;
        v62 = swift_allocObject();
        v63 = v442;
        v479 = v62;
        v443 = v62;
        *(v62 + 16) = sub_1B039BCF8;
        *(v62 + 24) = v63;
        v480 = swift_allocObject();
        v445 = v480;
        *(v480 + 16) = v444;
        v481 = swift_allocObject();
        v447 = v481;
        *(v481 + 16) = v446;
        v64 = swift_allocObject();
        v65 = v448;
        v449 = v64;
        *(v64 + 16) = sub_1B09AEDF0;
        *(v64 + 24) = v65;
        v66 = swift_allocObject();
        v67 = v449;
        v482 = v66;
        v450 = v66;
        *(v66 + 16) = sub_1B039BC08;
        *(v66 + 24) = v67;
        v483 = swift_allocObject();
        v453 = v483;
        *(v483 + 16) = v451;
        v484 = swift_allocObject();
        v455 = v484;
        *(v484 + 16) = v454;
        v68 = swift_allocObject();
        v69 = v458;
        v459 = v68;
        *(v68 + 16) = sub_1B09AEDFC;
        *(v68 + 24) = v69;
        v70 = swift_allocObject();
        v71 = v459;
        v487 = v70;
        v460 = v70;
        *(v70 + 16) = sub_1B039BCF8;
        *(v70 + 24) = v71;
        v488 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v485 = sub_1B0E46A48();
        v486 = v72;

        v73 = v462;
        v74 = v486;
        *v486 = sub_1B0398F5C;
        v74[1] = v73;

        v75 = v463;
        v76 = v486;
        v486[2] = sub_1B0398F5C;
        v76[3] = v75;

        v77 = v464;
        v78 = v486;
        v486[4] = sub_1B0399178;
        v78[5] = v77;

        v79 = v465;
        v80 = v486;
        v486[6] = sub_1B0398F5C;
        v80[7] = v79;

        v81 = v466;
        v82 = v486;
        v486[8] = sub_1B0398F5C;
        v82[9] = v81;

        v83 = v467;
        v84 = v486;
        v486[10] = sub_1B039BA94;
        v84[11] = v83;

        v85 = v468;
        v86 = v486;
        v486[12] = sub_1B0398F5C;
        v86[13] = v85;

        v87 = v469;
        v88 = v486;
        v486[14] = sub_1B0398F5C;
        v88[15] = v87;

        v89 = v470;
        v90 = v486;
        v486[16] = sub_1B0399178;
        v90[17] = v89;

        v91 = v471;
        v92 = v486;
        v486[18] = sub_1B0398F5C;
        v92[19] = v91;

        v93 = v472;
        v94 = v486;
        v486[20] = sub_1B0398F5C;
        v94[21] = v93;

        v95 = v473;
        v96 = v486;
        v486[22] = sub_1B03991EC;
        v96[23] = v95;

        v97 = v474;
        v98 = v486;
        v486[24] = sub_1B0398F5C;
        v98[25] = v97;

        v99 = v475;
        v100 = v486;
        v486[26] = sub_1B0398F5C;
        v100[27] = v99;

        v101 = v476;
        v102 = v486;
        v486[28] = sub_1B03993BC;
        v102[29] = v101;

        v103 = v477;
        v104 = v486;
        v486[30] = sub_1B0398F5C;
        v104[31] = v103;

        v105 = v478;
        v106 = v486;
        v486[32] = sub_1B0398F5C;
        v106[33] = v105;

        v107 = v479;
        v108 = v486;
        v486[34] = sub_1B039BCEC;
        v108[35] = v107;

        v109 = v480;
        v110 = v486;
        v486[36] = sub_1B0398F5C;
        v110[37] = v109;

        v111 = v481;
        v112 = v486;
        v486[38] = sub_1B0398F5C;
        v112[39] = v111;

        v113 = v482;
        v114 = v486;
        v486[40] = sub_1B03991EC;
        v114[41] = v113;

        v115 = v483;
        v116 = v486;
        v486[42] = sub_1B0398F5C;
        v116[43] = v115;

        v117 = v484;
        v118 = v486;
        v486[44] = sub_1B0398F5C;
        v118[45] = v117;

        v119 = v486;
        v120 = v487;
        v486[46] = sub_1B039BCEC;
        v119[47] = v120;
        sub_1B0394964();

        if (os_log_type_enabled(v490, v489))
        {
          v121 = v510;
          v399 = sub_1B0E45D78();
          v396 = v399;
          v397 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v400 = sub_1B03949A8(0);
          v398 = v400;
          v401 = sub_1B03949A8(2);
          v550 = v399;
          v549 = v400;
          v548 = v401;
          v402 = &v550;
          sub_1B0394A48(3, &v550);
          sub_1B0394A48(8, v402);
          v546 = sub_1B0398F5C;
          v547 = v415;
          sub_1B03949FC(&v546, v402, &v549, &v548);
          v403 = v121;
          v404 = v121;
          if (v121)
          {
            v394 = 0;

            __break(1u);
          }

          else
          {
            v546 = sub_1B0398F5C;
            v547 = v416;
            sub_1B03949FC(&v546, &v550, &v549, &v548);
            v392 = 0;
            v393 = 0;
            v546 = sub_1B0399178;
            v547 = v418;
            sub_1B03949FC(&v546, &v550, &v549, &v548);
            v390 = 0;
            v391 = 0;
            v546 = sub_1B0398F5C;
            v547 = v419;
            sub_1B03949FC(&v546, &v550, &v549, &v548);
            v388 = 0;
            v389 = 0;
            v546 = sub_1B0398F5C;
            v547 = v420;
            sub_1B03949FC(&v546, &v550, &v549, &v548);
            v386 = 0;
            v387 = 0;
            v546 = sub_1B039BA94;
            v547 = v423;
            sub_1B03949FC(&v546, &v550, &v549, &v548);
            v384 = 0;
            v385 = 0;
            v546 = sub_1B0398F5C;
            v547 = v425;
            sub_1B03949FC(&v546, &v550, &v549, &v548);
            v382 = 0;
            v383 = 0;
            v546 = sub_1B0398F5C;
            v547 = v426;
            sub_1B03949FC(&v546, &v550, &v549, &v548);
            v380 = 0;
            v381 = 0;
            v546 = sub_1B0399178;
            v547 = v429;
            sub_1B03949FC(&v546, &v550, &v549, &v548);
            v378 = 0;
            v379 = 0;
            v546 = sub_1B0398F5C;
            v547 = v430;
            sub_1B03949FC(&v546, &v550, &v549, &v548);
            v376 = 0;
            v377 = 0;
            v546 = sub_1B0398F5C;
            v547 = v431;
            sub_1B03949FC(&v546, &v550, &v549, &v548);
            v374 = 0;
            v375 = 0;
            v546 = sub_1B03991EC;
            v547 = v434;
            sub_1B03949FC(&v546, &v550, &v549, &v548);
            v372 = 0;
            v373 = 0;
            v546 = sub_1B0398F5C;
            v547 = v435;
            sub_1B03949FC(&v546, &v550, &v549, &v548);
            v370 = 0;
            v371 = 0;
            v546 = sub_1B0398F5C;
            v547 = v436;
            sub_1B03949FC(&v546, &v550, &v549, &v548);
            v368 = 0;
            v369 = 0;
            v546 = sub_1B03993BC;
            v547 = v438;
            sub_1B03949FC(&v546, &v550, &v549, &v548);
            v366 = 0;
            v367 = 0;
            v546 = sub_1B0398F5C;
            v547 = v439;
            sub_1B03949FC(&v546, &v550, &v549, &v548);
            v364 = 0;
            v365 = 0;
            v546 = sub_1B0398F5C;
            v547 = v440;
            sub_1B03949FC(&v546, &v550, &v549, &v548);
            v362 = 0;
            v363 = 0;
            v546 = sub_1B039BCEC;
            v547 = v443;
            sub_1B03949FC(&v546, &v550, &v549, &v548);
            v360 = 0;
            v361 = 0;
            v546 = sub_1B0398F5C;
            v547 = v445;
            sub_1B03949FC(&v546, &v550, &v549, &v548);
            v358 = 0;
            v359 = 0;
            v546 = sub_1B0398F5C;
            v547 = v447;
            sub_1B03949FC(&v546, &v550, &v549, &v548);
            v356 = 0;
            v357 = 0;
            v546 = sub_1B03991EC;
            v547 = v450;
            sub_1B03949FC(&v546, &v550, &v549, &v548);
            v354 = 0;
            v355 = 0;
            v546 = sub_1B0398F5C;
            v547 = v453;
            sub_1B03949FC(&v546, &v550, &v549, &v548);
            v352 = 0;
            v353 = 0;
            v546 = sub_1B0398F5C;
            v547 = v455;
            sub_1B03949FC(&v546, &v550, &v549, &v548);
            v350 = 0;
            v351 = 0;
            v546 = sub_1B039BCEC;
            v547 = v460;
            sub_1B03949FC(&v546, &v550, &v549, &v548);
            v348 = 0;
            v349 = 0;
            _os_log_impl(&dword_1B0389000, v413, v414, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Requesting search #%u: %s", v396, 0x3Bu);
            sub_1B03998A8(v398);
            sub_1B03998A8(v401);
            sub_1B0E45D58();

            v395 = v348;
          }
        }

        else
        {
          v122 = v510;

          v395 = v122;
        }

        v346 = v395;

        (*(v520 + 8))(v524, v518);
        sub_1B09AEA14(v405);
        v347 = v346;
      }

      v207 = v509;
      v217 = v347;
      v215 = swift_allocObject();
      v210 = v207 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_searches;
      v211 = &v557;
      swift_beginAccess();
      v212 = *v210;
      v213 = *(v210 + 8);
      v214 = *(v210 + 16);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      swift_endAccess();
      v208 = sub_1B09AB990(v212, v213, v214);
      *(v215 + 16) = v208;

      v216 = v215 | 0x9000000000000004;
      sub_1B039C1F8(v215 | 0x9000000000000004);

      sub_1B09AED9C(v501, v502, v503 & 1);
      v494 = v492;
      v495 = v217;
    }

    else
    {
      v498 = v501;
      v493 = v501;
      v27 = v501;
      v545 = v493;
      sub_1B09AED9C(v501, v502, v503 & 1);
      v494 = v493;
      v495 = v510;
    }

    return v494;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B09A3CC4(uint64_t a1, void *a2)
{
  v201 = a2;
  v200 = a1;
  v195 = 0;
  v225 = 0;
  v224 = 0;
  v223 = 0;
  v222 = 0;
  v184 = 0;
  v215 = 0;
  v214 = 0;
  v211 = 0;
  v185 = sub_1B0E439A8();
  v186 = *(v185 - 8);
  v187 = v186;
  v3 = *(v186 + 64);
  MEMORY[0x1EEE9AC00](0);
  v188 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = _s6LoggerVMa();
  v190 = *(*(v189 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v195);
  v192 = (v190 + 15) & 0xFFFFFFFFFFFFFFF0;
  v191 = &v74 - v192;
  MEMORY[0x1EEE9AC00](v5);
  v193 = &v74 - v192;
  v6 = _s18MailboxPersistenceVMa();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v194 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v195);
  v198 = (v196 + 15) & 0xFFFFFFFFFFFFFFF0;
  v197 = &v74 - v198;
  MEMORY[0x1EEE9AC00](v9);
  v199 = &v74 - v198;
  v202 = sub_1B0E42E68();
  v203 = *(v202 - 8);
  v204 = v203;
  v205 = *(v203 + 64);
  v10 = MEMORY[0x1EEE9AC00](v201);
  v207 = (v205 + 15) & 0xFFFFFFFFFFFFFFF0;
  v206 = &v74 - v207;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v208 = &v74 - v207;
  v225 = &v74 - v207;
  v224 = v12;
  v223 = v11;
  v222 = v2;
  v209 = [v11 URL];
  if (v209)
  {
    v182 = v209;
    v181 = v209;
    sub_1B0E42DE8();
    (*(v204 + 32))(v199, v206, v202);
    (*(v204 + 56))(v199, 0, 1, v202);
  }

  else
  {
    (*(v204 + 56))(v199, 1, 1, v202);
  }

  if ((*(v204 + 48))(v199, 1, v202) == 1)
  {
    sub_1B06E3800(v199);
LABEL_14:
    v22 = v188;
    v113 = &OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger;
    sub_1B0394784(v183 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v193);
    (*(v187 + 16))(v22, v193, v185);
    sub_1B039480C(v193);

    sub_1B0394784(v183 + *v113, v191);
    v23 = (v191 + *(v189 + 20));
    v115 = *v23;
    v116 = *(v23 + 1);
    sub_1B039480C(v191);

    v114 = 24;
    v141 = 7;
    v24 = swift_allocObject();
    v25 = v116;
    v126 = v24;
    *(v24 + 16) = v115;
    *(v24 + 20) = v25;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v26 = swift_allocObject();
    v27 = v116;
    v117 = v26;
    *(v26 + 16) = v115;
    *(v26 + 20) = v27;

    v140 = 32;
    v28 = swift_allocObject();
    v29 = v117;
    v142 = v28;
    *(v28 + 16) = sub_1B039BBE8;
    *(v28 + 24) = v29;
    sub_1B0394868();
    sub_1B0394868();

    v161 = sub_1B0E43988();
    v118 = v161;
    v160 = sub_1B0E458E8();
    v119 = v160;
    v136 = 17;
    v145 = swift_allocObject();
    v120 = v145;
    v129 = 16;
    *(v145 + 16) = 16;
    v146 = swift_allocObject();
    v121 = v146;
    v138 = 4;
    *(v146 + 16) = 4;
    v30 = swift_allocObject();
    v122 = v30;
    *(v30 + 16) = sub_1B0394C30;
    v132 = 0;
    *(v30 + 24) = 0;
    v31 = swift_allocObject();
    v32 = v122;
    v147 = v31;
    v123 = v31;
    *(v31 + 16) = sub_1B0394C24;
    *(v31 + 24) = v32;
    v148 = swift_allocObject();
    v124 = v148;
    v135 = 0;
    *(v148 + 16) = 0;
    v149 = swift_allocObject();
    v125 = v149;
    *(v149 + 16) = 1;
    v33 = swift_allocObject();
    v34 = v126;
    v127 = v33;
    *(v33 + 16) = sub_1B039BA2C;
    *(v33 + 24) = v34;
    v35 = swift_allocObject();
    v36 = v127;
    v150 = v35;
    v128 = v35;
    *(v35 + 16) = sub_1B039BA88;
    *(v35 + 24) = v36;
    v151 = swift_allocObject();
    v130 = v151;
    *(v151 + 16) = v129;
    v152 = swift_allocObject();
    v131 = v152;
    *(v152 + 16) = v138;
    v37 = swift_allocObject();
    v38 = v132;
    v133 = v37;
    *(v37 + 16) = sub_1B039BB94;
    *(v37 + 24) = v38;
    v39 = swift_allocObject();
    v40 = v133;
    v153 = v39;
    v134 = v39;
    *(v39 + 16) = sub_1B0394C24;
    *(v39 + 24) = v40;
    v154 = swift_allocObject();
    v137 = v154;
    *(v154 + 16) = v135;
    v155 = swift_allocObject();
    v139 = v155;
    *(v155 + 16) = v138;
    v41 = swift_allocObject();
    v42 = v142;
    v143 = v41;
    *(v41 + 16) = sub_1B039BBA0;
    *(v41 + 24) = v42;
    v43 = swift_allocObject();
    v44 = v143;
    v158 = v43;
    v144 = v43;
    *(v43 + 16) = sub_1B039BC08;
    *(v43 + 24) = v44;
    v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v156 = sub_1B0E46A48();
    v157 = v45;

    v46 = v145;
    v47 = v157;
    *v157 = sub_1B0398F5C;
    v47[1] = v46;

    v48 = v146;
    v49 = v157;
    v157[2] = sub_1B0398F5C;
    v49[3] = v48;

    v50 = v147;
    v51 = v157;
    v157[4] = sub_1B0399178;
    v51[5] = v50;

    v52 = v148;
    v53 = v157;
    v157[6] = sub_1B0398F5C;
    v53[7] = v52;

    v54 = v149;
    v55 = v157;
    v157[8] = sub_1B0398F5C;
    v55[9] = v54;

    v56 = v150;
    v57 = v157;
    v157[10] = sub_1B039BA94;
    v57[11] = v56;

    v58 = v151;
    v59 = v157;
    v157[12] = sub_1B0398F5C;
    v59[13] = v58;

    v60 = v152;
    v61 = v157;
    v157[14] = sub_1B0398F5C;
    v61[15] = v60;

    v62 = v153;
    v63 = v157;
    v157[16] = sub_1B0399178;
    v63[17] = v62;

    v64 = v154;
    v65 = v157;
    v157[18] = sub_1B0398F5C;
    v65[19] = v64;

    v66 = v155;
    v67 = v157;
    v157[20] = sub_1B0398F5C;
    v67[21] = v66;

    v68 = v157;
    v69 = v158;
    v157[22] = sub_1B03991EC;
    v68[23] = v69;
    sub_1B0394964();

    if (os_log_type_enabled(v161, v160))
    {
      v70 = v184;
      v107 = sub_1B0E45D78();
      v103 = v107;
      v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v105 = 0;
      v108 = sub_1B03949A8(0);
      v106 = v108;
      v109 = sub_1B03949A8(v105);
      v221 = v107;
      v220 = v108;
      v219 = v109;
      v110 = &v221;
      sub_1B0394A48(0, &v221);
      sub_1B0394A48(4, v110);
      v217 = sub_1B0398F5C;
      v218 = v120;
      sub_1B03949FC(&v217, v110, &v220, &v219);
      v111 = v70;
      v112 = v70;
      if (v70)
      {
        v101 = 0;

        __break(1u);
      }

      else
      {
        v217 = sub_1B0398F5C;
        v218 = v121;
        sub_1B03949FC(&v217, &v221, &v220, &v219);
        v99 = 0;
        v100 = 0;
        v217 = sub_1B0399178;
        v218 = v123;
        sub_1B03949FC(&v217, &v221, &v220, &v219);
        v97 = 0;
        v98 = 0;
        v217 = sub_1B0398F5C;
        v218 = v124;
        sub_1B03949FC(&v217, &v221, &v220, &v219);
        v95 = 0;
        v96 = 0;
        v217 = sub_1B0398F5C;
        v218 = v125;
        sub_1B03949FC(&v217, &v221, &v220, &v219);
        v93 = 0;
        v94 = 0;
        v217 = sub_1B039BA94;
        v218 = v128;
        sub_1B03949FC(&v217, &v221, &v220, &v219);
        v91 = 0;
        v92 = 0;
        v217 = sub_1B0398F5C;
        v218 = v130;
        sub_1B03949FC(&v217, &v221, &v220, &v219);
        v89 = 0;
        v90 = 0;
        v217 = sub_1B0398F5C;
        v218 = v131;
        sub_1B03949FC(&v217, &v221, &v220, &v219);
        v87 = 0;
        v88 = 0;
        v217 = sub_1B0399178;
        v218 = v134;
        sub_1B03949FC(&v217, &v221, &v220, &v219);
        v85 = 0;
        v86 = 0;
        v217 = sub_1B0398F5C;
        v218 = v137;
        sub_1B03949FC(&v217, &v221, &v220, &v219);
        v83 = 0;
        v84 = 0;
        v217 = sub_1B0398F5C;
        v218 = v139;
        sub_1B03949FC(&v217, &v221, &v220, &v219);
        v81 = 0;
        v82 = 0;
        v217 = sub_1B03991EC;
        v218 = v144;
        sub_1B03949FC(&v217, &v221, &v220, &v219);
        v79 = 0;
        v80 = 0;
        _os_log_impl(&dword_1B0389000, v118, v119, "[%.*hhx-%.*X] Missing mailbox name for user-initiated search download", v103, 0x17u);
        v78 = 0;
        sub_1B03998A8(v106);
        sub_1B03998A8(v109);
        sub_1B0E45D58();

        v102 = v79;
      }
    }

    else
    {
      v71 = v184;

      v102 = v71;
    }

    v77 = v102;

    (*(v187 + 8))(v188, v185);
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E36D0, &unk_1B0EA1DA0);
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v72);
    sub_1B09AE74C();
    v74 = 0;
    v75 = swift_allocError();
    v76 = _s11SearchStateV7ResultsCMa();
    v163 = sub_1B094DEE8(v75);
    v164 = v77;
    return v163;
  }

  v13 = v194;
  (*(v204 + 32))(v208, v199, v202);
  v176 = v183 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxPersistence;
  v177 = &v216;
  swift_beginAccess();
  sub_1B03F4D78(v176, v13);
  swift_endAccess();
  (*(v204 + 16))(v197, v208, v202);
  (*(v204 + 56))(v197, 0, 1, v202);
  v180 = sub_1B07BF5C8(v197);
  v178 = v180;
  v179 = v14;
  sub_1B06E3800(v197);
  sub_1B03F4F08(v194);
  if (!v180)
  {
    (*(v204 + 8))(v208, v202);
    goto LABEL_14;
  }

  v174 = v178;
  v175 = v179;
  v171 = v179;
  v172 = v178;
  v214 = v178;
  v215 = v179;
  MailboxRowID.init(_:)([v201 databaseID], &v212);
  v173 = v212;
  if (v213)
  {

    (*(v204 + 8))(v208, v202);
    goto LABEL_14;
  }

  v170 = v173;
  v15 = v184;
  v166 = v173;
  v211 = v173;
  v165 = *(v183 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workQueue);
  v16 = v165;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v167 = &v74;
  MEMORY[0x1EEE9AC00](&v74);
  v17 = v172;
  v18 = v171;
  v168 = &v74 - 8;
  *(&v74 - 6) = v19;
  *(&v74 - 5) = v20;
  *(&v74 - 4) = v17;
  *(&v74 - 6) = v18;
  *(&v74 - 2) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E36D0, &unk_1B0EA1DA0);
  sub_1B0E459D8();
  v169 = v15;
  if (!v15)
  {

    v162 = v210;

    (*(v204 + 8))(v208, v202);
    v163 = v162;
    v164 = v169;
    return v163;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B09A57E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, unint64_t *a6@<X8>)
{
  v20 = a6;
  v12[1] = a2;
  v17 = a3;
  v18 = a4;
  v13 = a5;
  v27 = 0;
  v26 = 0;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v15 = _s11SearchStateV6SearchV4KindOMa();
  v14 = (*(*(v15 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v13);
  v19 = (v12 - v14);
  v27 = a1;
  v26 = v8;
  v24 = v9;
  v25 = v10;
  v23 = v7;
  v16 = &v22;
  v22 = v8;
  sub_1B03D08AC(v7, v12 - v14);
  swift_storeEnumTagMultiPayload();
  v21 = sub_1B099F358(v16, v17, v18, v19);
  sub_1B09AFA80(v19);
  result = v21;
  *v20 = v21;
  return result;
}

BOOL sub_1B09A5984()
{
  v9 = 0;
  v8 = 0;
  v6 = _s11SearchStateV6SearchV4KindOMa();
  v5 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = (&v1 - v5);
  v9 = MEMORY[0x1EEE9AC00](v4);
  sub_1B09AEC3C(v9, (&v1 - v5));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B03D09B8(v7);
    return 0;
  }

  else
  {
    v1 = *v7;
    v8 = v1;
    v2 = SearchRequest.Predicate.requiresBody.getter(v1);
    sub_1B09AEA14(v1);
    return v2;
  }
}

uint64_t sub_1B09A5A84(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v818 = v1;
  v839 = v3;
  v841 = v4;
  v840 = v2;
  v819 = v3;
  v880 = 0;
  v830 = 0;
  v879 = 0;
  v878 = 0;
  v877 = 0;
  v820 = 0;
  v874 = 0;
  v873 = 0;
  v872 = 0;
  v858 = 0;
  v821 = sub_1B0E439A8();
  v822 = *(v821 - 8);
  v823 = v822;
  v826 = *(v822 + 64);
  v5 = MEMORY[0x1EEE9AC00](0);
  v828 = (v826 + 15) & 0xFFFFFFFFFFFFFFF0;
  v824 = &v330 - v828;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v825 = &v330 - v828;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v827 = &v330 - v828;
  MEMORY[0x1EEE9AC00](v7);
  v829 = &v330 - v828;
  v831 = _s6LoggerVMa();
  v835 = *(*(v831 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v830);
  v837 = (v835 + 15) & 0xFFFFFFFFFFFFFFF0;
  v832 = &v330 - v837;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v833 = &v330 - v837;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v834 = &v330 - v837;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v836 = &v330 - v837;
  MEMORY[0x1EEE9AC00](v11);
  v838 = &v330 - v837;
  v845 = sub_1B0E44468();
  v842 = *(v845 - 8);
  v844 = v842;
  v12 = *(v842 + 64);
  v13 = MEMORY[0x1EEE9AC00](v840);
  v846 = (&v330 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v879 = v13;
  v880 = v15;
  v878 = v16;
  v877 = v1;

  v843 = *(v1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop);
  v17 = v843;
  v18 = v844;
  *v846 = v843;
  v19 = *MEMORY[0x1E69E8020];
  (*(v18 + 104))();
  v847 = sub_1B0E44488();
  (*(v844 + 8))(v846, v845);
  result = v847;
  if (v847)
  {
    v21 = v820;

    v815 = &v330;
    v22 = MEMORY[0x1EEE9AC00](v840);
    *(&v330 - 16) = v23 & 1;
    sub_1B09B21DC(v22, v24, sub_1B09AEE3C, (&v330 - 4), &unk_1F26DC018, v875);
    v816 = v21;
    v817 = v21;
    if (v21)
    {
      v331 = 0;
      v332 = 0;

      v811 = v331;
      v812 = v331;
      v813 = 255;
      v814 = v332;
    }

    else
    {
      v811 = v875[0];
      v812 = v875[1];
      v813 = v876;
      v814 = 0;
    }

    v807 = v814;
    v808 = v813;
    v809 = v812;
    v810 = v811;
    v872 = v811;
    v873 = v812;
    v874 = v813;
    if (v813 == 0xFF)
    {
      v803 = v807;
    }

    else
    {
      v804 = v810;
      v805 = v809;
      v806 = v808;
      v801 = v806;
      *&v802 = v805;
      *(&v802 + 1) = v804;
      if (v806)
      {
        if (v801 == 1)
        {
          v257 = v824;
          v382 = &OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger;
          sub_1B0394784(v818 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v832);
          (*(v823 + 16))(v257, v832, v821);
          sub_1B039480C(v832);

          sub_1B0394784(v818 + *v382, v836);
          v258 = (v836 + *(v831 + 20));
          v383 = *v258;
          v384 = *(v258 + 1);
          sub_1B039480C(v836);

          v412 = 24;
          v421 = 7;
          v259 = swift_allocObject();
          v260 = v384;
          v395 = v259;
          *(v259 + 16) = v383;
          *(v259 + 20) = v260;
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          v261 = swift_allocObject();
          v262 = v384;
          v385 = v261;
          *(v261 + 16) = v383;
          *(v261 + 20) = v262;

          v420 = 32;
          v263 = swift_allocObject();
          v264 = v385;
          v408 = v263;
          *(v263 + 16) = sub_1B039BBE8;
          *(v263 + 24) = v264;
          sub_1B0394868();
          sub_1B0394868();

          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v265 = swift_allocObject();
          v266 = v841;
          v386 = v265;
          *(v265 + 16) = v840;
          *(v265 + 24) = v266;

          v267 = swift_allocObject();
          v268 = v386;
          v422 = v267;
          *(v267 + 16) = sub_1B07C8FC0;
          *(v267 + 24) = v268;

          v447 = sub_1B0E43988();
          v387 = v447;
          v446 = sub_1B0E45908();
          v388 = v446;
          v416 = 17;
          v425 = swift_allocObject();
          v389 = v425;
          v398 = 16;
          *(v425 + 16) = 16;
          v426 = swift_allocObject();
          v390 = v426;
          v406 = 4;
          *(v426 + 16) = 4;
          v269 = swift_allocObject();
          v391 = v269;
          *(v269 + 16) = sub_1B0394C30;
          v401 = 0;
          *(v269 + 24) = 0;
          v270 = swift_allocObject();
          v271 = v391;
          v427 = v270;
          v392 = v270;
          *(v270 + 16) = sub_1B0394C24;
          *(v270 + 24) = v271;
          v428 = swift_allocObject();
          v393 = v428;
          v404 = 0;
          *(v428 + 16) = 0;
          v429 = swift_allocObject();
          v394 = v429;
          *(v429 + 16) = 1;
          v272 = swift_allocObject();
          v273 = v395;
          v396 = v272;
          *(v272 + 16) = sub_1B039BA2C;
          *(v272 + 24) = v273;
          v274 = swift_allocObject();
          v275 = v396;
          v430 = v274;
          v397 = v274;
          *(v274 + 16) = sub_1B039BA88;
          *(v274 + 24) = v275;
          v431 = swift_allocObject();
          v399 = v431;
          *(v431 + 16) = v398;
          v432 = swift_allocObject();
          v400 = v432;
          *(v432 + 16) = v406;
          v276 = swift_allocObject();
          v277 = v401;
          v402 = v276;
          *(v276 + 16) = sub_1B039BB94;
          *(v276 + 24) = v277;
          v278 = swift_allocObject();
          v279 = v402;
          v433 = v278;
          v403 = v278;
          *(v278 + 16) = sub_1B0394C24;
          *(v278 + 24) = v279;
          v434 = swift_allocObject();
          v405 = v434;
          *(v434 + 16) = v404;
          v435 = swift_allocObject();
          v407 = v435;
          *(v435 + 16) = v406;
          v280 = swift_allocObject();
          v281 = v408;
          v409 = v280;
          *(v280 + 16) = sub_1B039BBA0;
          *(v280 + 24) = v281;
          v282 = swift_allocObject();
          v283 = v409;
          v436 = v282;
          v410 = v282;
          *(v282 + 16) = sub_1B039BC08;
          *(v282 + 24) = v283;
          v437 = swift_allocObject();
          v411 = v437;
          *(v437 + 16) = 112;
          v438 = swift_allocObject();
          v413 = v438;
          v418 = 8;
          *(v438 + 16) = 8;
          v414 = swift_allocObject();
          *(v414 + 16) = 0x786F626C69616DLL;
          v284 = swift_allocObject();
          v285 = v414;
          v439 = v284;
          v415 = v284;
          *(v284 + 16) = sub_1B06BA324;
          *(v284 + 24) = v285;
          v440 = swift_allocObject();
          v417 = v440;
          *(v440 + 16) = 37;
          v441 = swift_allocObject();
          v419 = v441;
          *(v441 + 16) = v418;
          v286 = swift_allocObject();
          v287 = v422;
          v423 = v286;
          *(v286 + 16) = sub_1B06E395C;
          *(v286 + 24) = v287;
          v288 = swift_allocObject();
          v289 = v423;
          v444 = v288;
          v424 = v288;
          *(v288 + 16) = sub_1B039BCF8;
          *(v288 + 24) = v289;
          v445 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
          v442 = sub_1B0E46A48();
          v443 = v290;

          v291 = v425;
          v292 = v443;
          *v443 = sub_1B0398F5C;
          v292[1] = v291;

          v293 = v426;
          v294 = v443;
          v443[2] = sub_1B0398F5C;
          v294[3] = v293;

          v295 = v427;
          v296 = v443;
          v443[4] = sub_1B0399178;
          v296[5] = v295;

          v297 = v428;
          v298 = v443;
          v443[6] = sub_1B0398F5C;
          v298[7] = v297;

          v299 = v429;
          v300 = v443;
          v443[8] = sub_1B0398F5C;
          v300[9] = v299;

          v301 = v430;
          v302 = v443;
          v443[10] = sub_1B039BA94;
          v302[11] = v301;

          v303 = v431;
          v304 = v443;
          v443[12] = sub_1B0398F5C;
          v304[13] = v303;

          v305 = v432;
          v306 = v443;
          v443[14] = sub_1B0398F5C;
          v306[15] = v305;

          v307 = v433;
          v308 = v443;
          v443[16] = sub_1B0399178;
          v308[17] = v307;

          v309 = v434;
          v310 = v443;
          v443[18] = sub_1B0398F5C;
          v310[19] = v309;

          v311 = v435;
          v312 = v443;
          v443[20] = sub_1B0398F5C;
          v312[21] = v311;

          v313 = v436;
          v314 = v443;
          v443[22] = sub_1B03991EC;
          v314[23] = v313;

          v315 = v437;
          v316 = v443;
          v443[24] = sub_1B0398F5C;
          v316[25] = v315;

          v317 = v438;
          v318 = v443;
          v443[26] = sub_1B0398F5C;
          v318[27] = v317;

          v319 = v439;
          v320 = v443;
          v443[28] = sub_1B03993BC;
          v320[29] = v319;

          v321 = v440;
          v322 = v443;
          v443[30] = sub_1B0398F5C;
          v322[31] = v321;

          v323 = v441;
          v324 = v443;
          v443[32] = sub_1B0398F5C;
          v324[33] = v323;

          v325 = v443;
          v326 = v444;
          v443[34] = sub_1B039BCEC;
          v325[35] = v326;
          sub_1B0394964();

          if (os_log_type_enabled(v447, v446))
          {
            v328 = v807;
            v376 = sub_1B0E45D78();
            v373 = v376;
            v374 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
            v377 = sub_1B03949A8(0);
            v375 = v377;
            v378 = sub_1B03949A8(1);
            v868 = v376;
            v867 = v377;
            v866 = v378;
            v379 = &v868;
            sub_1B0394A48(3, &v868);
            sub_1B0394A48(6, v379);
            v864 = sub_1B0398F5C;
            v865 = v389;
            sub_1B03949FC(&v864, v379, &v867, &v866);
            v380 = v328;
            v381 = v328;
            if (v328)
            {
              v371 = 0;

              __break(1u);
            }

            else
            {
              v864 = sub_1B0398F5C;
              v865 = v390;
              sub_1B03949FC(&v864, &v868, &v867, &v866);
              v369 = 0;
              v370 = 0;
              v864 = sub_1B0399178;
              v865 = v392;
              sub_1B03949FC(&v864, &v868, &v867, &v866);
              v367 = 0;
              v368 = 0;
              v864 = sub_1B0398F5C;
              v865 = v393;
              sub_1B03949FC(&v864, &v868, &v867, &v866);
              v365 = 0;
              v366 = 0;
              v864 = sub_1B0398F5C;
              v865 = v394;
              sub_1B03949FC(&v864, &v868, &v867, &v866);
              v363 = 0;
              v364 = 0;
              v864 = sub_1B039BA94;
              v865 = v397;
              sub_1B03949FC(&v864, &v868, &v867, &v866);
              v361 = 0;
              v362 = 0;
              v864 = sub_1B0398F5C;
              v865 = v399;
              sub_1B03949FC(&v864, &v868, &v867, &v866);
              v359 = 0;
              v360 = 0;
              v864 = sub_1B0398F5C;
              v865 = v400;
              sub_1B03949FC(&v864, &v868, &v867, &v866);
              v357 = 0;
              v358 = 0;
              v864 = sub_1B0399178;
              v865 = v403;
              sub_1B03949FC(&v864, &v868, &v867, &v866);
              v355 = 0;
              v356 = 0;
              v864 = sub_1B0398F5C;
              v865 = v405;
              sub_1B03949FC(&v864, &v868, &v867, &v866);
              v353 = 0;
              v354 = 0;
              v864 = sub_1B0398F5C;
              v865 = v407;
              sub_1B03949FC(&v864, &v868, &v867, &v866);
              v351 = 0;
              v352 = 0;
              v864 = sub_1B03991EC;
              v865 = v410;
              sub_1B03949FC(&v864, &v868, &v867, &v866);
              v349 = 0;
              v350 = 0;
              v864 = sub_1B0398F5C;
              v865 = v411;
              sub_1B03949FC(&v864, &v868, &v867, &v866);
              v347 = 0;
              v348 = 0;
              v864 = sub_1B0398F5C;
              v865 = v413;
              sub_1B03949FC(&v864, &v868, &v867, &v866);
              v345 = 0;
              v346 = 0;
              v864 = sub_1B03993BC;
              v865 = v415;
              sub_1B03949FC(&v864, &v868, &v867, &v866);
              v343 = 0;
              v344 = 0;
              v864 = sub_1B0398F5C;
              v865 = v417;
              sub_1B03949FC(&v864, &v868, &v867, &v866);
              v341 = 0;
              v342 = 0;
              v864 = sub_1B0398F5C;
              v865 = v419;
              sub_1B03949FC(&v864, &v868, &v867, &v866);
              v339 = 0;
              v340 = 0;
              v864 = sub_1B039BCEC;
              v865 = v424;
              sub_1B03949FC(&v864, &v868, &v867, &v866);
              v337 = 0;
              v338 = 0;
              _os_log_impl(&dword_1B0389000, v387, v388, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Requesting search: All messages in mailbox are indexed.", v373, 0x2Bu);
              sub_1B03998A8(v375);
              sub_1B03998A8(v378);
              sub_1B0E45D58();

              v372 = v337;
            }
          }

          else
          {
            v329 = v807;

            v372 = v329;
          }

          v336 = v372;

          (*(v823 + 8))(v824, v821);
          v803 = v336;
        }

        else if (v802 == 0)
        {
          v25 = v829;
          v734 = &OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger;
          sub_1B0394784(v818 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v838);
          (*(v823 + 16))(v25, v838, v821);
          sub_1B039480C(v838);

          sub_1B0394784(v818 + *v734, v836);
          v26 = (v836 + *(v831 + 20));
          v735 = *v26;
          v736 = *(v26 + 1);
          sub_1B039480C(v836);

          v764 = 24;
          v773 = 7;
          v27 = swift_allocObject();
          v28 = v736;
          v747 = v27;
          *(v27 + 16) = v735;
          *(v27 + 20) = v28;
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          v29 = swift_allocObject();
          v30 = v736;
          v737 = v29;
          *(v29 + 16) = v735;
          *(v29 + 20) = v30;

          v772 = 32;
          v31 = swift_allocObject();
          v32 = v737;
          v760 = v31;
          *(v31 + 16) = sub_1B039BBE8;
          *(v31 + 24) = v32;
          sub_1B0394868();
          sub_1B0394868();

          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v33 = swift_allocObject();
          v34 = v841;
          v738 = v33;
          *(v33 + 16) = v840;
          *(v33 + 24) = v34;

          v35 = swift_allocObject();
          v36 = v738;
          v774 = v35;
          *(v35 + 16) = sub_1B07C8FC0;
          *(v35 + 24) = v36;

          v799 = sub_1B0E43988();
          v739 = v799;
          v798 = sub_1B0E45908();
          v740 = v798;
          v768 = 17;
          v777 = swift_allocObject();
          v741 = v777;
          v750 = 16;
          *(v777 + 16) = 16;
          v778 = swift_allocObject();
          v742 = v778;
          v758 = 4;
          *(v778 + 16) = 4;
          v37 = swift_allocObject();
          v743 = v37;
          *(v37 + 16) = sub_1B0394C30;
          v753 = 0;
          *(v37 + 24) = 0;
          v38 = swift_allocObject();
          v39 = v743;
          v779 = v38;
          v744 = v38;
          *(v38 + 16) = sub_1B0394C24;
          *(v38 + 24) = v39;
          v780 = swift_allocObject();
          v745 = v780;
          v756 = 0;
          *(v780 + 16) = 0;
          v781 = swift_allocObject();
          v746 = v781;
          *(v781 + 16) = 1;
          v40 = swift_allocObject();
          v41 = v747;
          v748 = v40;
          *(v40 + 16) = sub_1B039BA2C;
          *(v40 + 24) = v41;
          v42 = swift_allocObject();
          v43 = v748;
          v782 = v42;
          v749 = v42;
          *(v42 + 16) = sub_1B039BA88;
          *(v42 + 24) = v43;
          v783 = swift_allocObject();
          v751 = v783;
          *(v783 + 16) = v750;
          v784 = swift_allocObject();
          v752 = v784;
          *(v784 + 16) = v758;
          v44 = swift_allocObject();
          v45 = v753;
          v754 = v44;
          *(v44 + 16) = sub_1B039BB94;
          *(v44 + 24) = v45;
          v46 = swift_allocObject();
          v47 = v754;
          v785 = v46;
          v755 = v46;
          *(v46 + 16) = sub_1B0394C24;
          *(v46 + 24) = v47;
          v786 = swift_allocObject();
          v757 = v786;
          *(v786 + 16) = v756;
          v787 = swift_allocObject();
          v759 = v787;
          *(v787 + 16) = v758;
          v48 = swift_allocObject();
          v49 = v760;
          v761 = v48;
          *(v48 + 16) = sub_1B039BBA0;
          *(v48 + 24) = v49;
          v50 = swift_allocObject();
          v51 = v761;
          v788 = v50;
          v762 = v50;
          *(v50 + 16) = sub_1B039BC08;
          *(v50 + 24) = v51;
          v789 = swift_allocObject();
          v763 = v789;
          *(v789 + 16) = 112;
          v790 = swift_allocObject();
          v765 = v790;
          v770 = 8;
          *(v790 + 16) = 8;
          v766 = swift_allocObject();
          *(v766 + 16) = 0x786F626C69616DLL;
          v52 = swift_allocObject();
          v53 = v766;
          v791 = v52;
          v767 = v52;
          *(v52 + 16) = sub_1B06BA324;
          *(v52 + 24) = v53;
          v792 = swift_allocObject();
          v769 = v792;
          *(v792 + 16) = 37;
          v793 = swift_allocObject();
          v771 = v793;
          *(v793 + 16) = v770;
          v54 = swift_allocObject();
          v55 = v774;
          v775 = v54;
          *(v54 + 16) = sub_1B06E395C;
          *(v54 + 24) = v55;
          v56 = swift_allocObject();
          v57 = v775;
          v796 = v56;
          v776 = v56;
          *(v56 + 16) = sub_1B039BCF8;
          *(v56 + 24) = v57;
          v797 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
          v794 = sub_1B0E46A48();
          v795 = v58;

          v59 = v777;
          v60 = v795;
          *v795 = sub_1B0398F5C;
          v60[1] = v59;

          v61 = v778;
          v62 = v795;
          v795[2] = sub_1B0398F5C;
          v62[3] = v61;

          v63 = v779;
          v64 = v795;
          v795[4] = sub_1B0399178;
          v64[5] = v63;

          v65 = v780;
          v66 = v795;
          v795[6] = sub_1B0398F5C;
          v66[7] = v65;

          v67 = v781;
          v68 = v795;
          v795[8] = sub_1B0398F5C;
          v68[9] = v67;

          v69 = v782;
          v70 = v795;
          v795[10] = sub_1B039BA94;
          v70[11] = v69;

          v71 = v783;
          v72 = v795;
          v795[12] = sub_1B0398F5C;
          v72[13] = v71;

          v73 = v784;
          v74 = v795;
          v795[14] = sub_1B0398F5C;
          v74[15] = v73;

          v75 = v785;
          v76 = v795;
          v795[16] = sub_1B0399178;
          v76[17] = v75;

          v77 = v786;
          v78 = v795;
          v795[18] = sub_1B0398F5C;
          v78[19] = v77;

          v79 = v787;
          v80 = v795;
          v795[20] = sub_1B0398F5C;
          v80[21] = v79;

          v81 = v788;
          v82 = v795;
          v795[22] = sub_1B03991EC;
          v82[23] = v81;

          v83 = v789;
          v84 = v795;
          v795[24] = sub_1B0398F5C;
          v84[25] = v83;

          v85 = v790;
          v86 = v795;
          v795[26] = sub_1B0398F5C;
          v86[27] = v85;

          v87 = v791;
          v88 = v795;
          v795[28] = sub_1B03993BC;
          v88[29] = v87;

          v89 = v792;
          v90 = v795;
          v795[30] = sub_1B0398F5C;
          v90[31] = v89;

          v91 = v793;
          v92 = v795;
          v795[32] = sub_1B0398F5C;
          v92[33] = v91;

          v93 = v795;
          v94 = v796;
          v795[34] = sub_1B039BCEC;
          v93[35] = v94;
          sub_1B0394964();

          if (os_log_type_enabled(v799, v798))
          {
            v95 = v807;
            v728 = sub_1B0E45D78();
            v725 = v728;
            v726 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
            v729 = sub_1B03949A8(0);
            v727 = v729;
            v730 = sub_1B03949A8(1);
            v852 = v728;
            v851 = v729;
            v850 = v730;
            v731 = &v852;
            sub_1B0394A48(3, &v852);
            sub_1B0394A48(6, v731);
            v848 = sub_1B0398F5C;
            v849 = v741;
            sub_1B03949FC(&v848, v731, &v851, &v850);
            v732 = v95;
            v733 = v95;
            if (v95)
            {
              v723 = 0;

              __break(1u);
            }

            else
            {
              v848 = sub_1B0398F5C;
              v849 = v742;
              sub_1B03949FC(&v848, &v852, &v851, &v850);
              v721 = 0;
              v722 = 0;
              v848 = sub_1B0399178;
              v849 = v744;
              sub_1B03949FC(&v848, &v852, &v851, &v850);
              v719 = 0;
              v720 = 0;
              v848 = sub_1B0398F5C;
              v849 = v745;
              sub_1B03949FC(&v848, &v852, &v851, &v850);
              v717 = 0;
              v718 = 0;
              v848 = sub_1B0398F5C;
              v849 = v746;
              sub_1B03949FC(&v848, &v852, &v851, &v850);
              v715 = 0;
              v716 = 0;
              v848 = sub_1B039BA94;
              v849 = v749;
              sub_1B03949FC(&v848, &v852, &v851, &v850);
              v713 = 0;
              v714 = 0;
              v848 = sub_1B0398F5C;
              v849 = v751;
              sub_1B03949FC(&v848, &v852, &v851, &v850);
              v711 = 0;
              v712 = 0;
              v848 = sub_1B0398F5C;
              v849 = v752;
              sub_1B03949FC(&v848, &v852, &v851, &v850);
              v709 = 0;
              v710 = 0;
              v848 = sub_1B0399178;
              v849 = v755;
              sub_1B03949FC(&v848, &v852, &v851, &v850);
              v707 = 0;
              v708 = 0;
              v848 = sub_1B0398F5C;
              v849 = v757;
              sub_1B03949FC(&v848, &v852, &v851, &v850);
              v705 = 0;
              v706 = 0;
              v848 = sub_1B0398F5C;
              v849 = v759;
              sub_1B03949FC(&v848, &v852, &v851, &v850);
              v703 = 0;
              v704 = 0;
              v848 = sub_1B03991EC;
              v849 = v762;
              sub_1B03949FC(&v848, &v852, &v851, &v850);
              v701 = 0;
              v702 = 0;
              v848 = sub_1B0398F5C;
              v849 = v763;
              sub_1B03949FC(&v848, &v852, &v851, &v850);
              v699 = 0;
              v700 = 0;
              v848 = sub_1B0398F5C;
              v849 = v765;
              sub_1B03949FC(&v848, &v852, &v851, &v850);
              v697 = 0;
              v698 = 0;
              v848 = sub_1B03993BC;
              v849 = v767;
              sub_1B03949FC(&v848, &v852, &v851, &v850);
              v695 = 0;
              v696 = 0;
              v848 = sub_1B0398F5C;
              v849 = v769;
              sub_1B03949FC(&v848, &v852, &v851, &v850);
              v693 = 0;
              v694 = 0;
              v848 = sub_1B0398F5C;
              v849 = v771;
              sub_1B03949FC(&v848, &v852, &v851, &v850);
              v691 = 0;
              v692 = 0;
              v848 = sub_1B039BCEC;
              v849 = v776;
              sub_1B03949FC(&v848, &v852, &v851, &v850);
              v689 = 0;
              v690 = 0;
              _os_log_impl(&dword_1B0389000, v739, v740, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Requesting search: no indexed messages in mailbox.", v725, 0x2Bu);
              sub_1B03998A8(v727);
              sub_1B03998A8(v730);
              sub_1B0E45D58();

              v724 = v689;
            }
          }

          else
          {
            v96 = v807;

            v724 = v96;
          }

          v688 = v724;

          (*(v823 + 8))(v829, v821);
          v803 = v688;
        }

        else
        {
          v184 = v825;
          v494 = &OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger;
          sub_1B0394784(v818 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v833);
          (*(v823 + 16))(v184, v833, v821);
          sub_1B039480C(v833);

          sub_1B0394784(v818 + *v494, v836);
          v185 = (v836 + *(v831 + 20));
          v495 = *v185;
          v496 = *(v185 + 1);
          sub_1B039480C(v836);

          v524 = 24;
          v533 = 7;
          v186 = swift_allocObject();
          v187 = v496;
          v507 = v186;
          *(v186 + 16) = v495;
          *(v186 + 20) = v187;
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          v188 = swift_allocObject();
          v189 = v496;
          v497 = v188;
          *(v188 + 16) = v495;
          *(v188 + 20) = v189;

          v532 = 32;
          v190 = swift_allocObject();
          v191 = v497;
          v520 = v190;
          *(v190 + 16) = sub_1B039BBE8;
          *(v190 + 24) = v191;
          sub_1B0394868();
          sub_1B0394868();

          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v192 = swift_allocObject();
          v193 = v841;
          v498 = v192;
          *(v192 + 16) = v840;
          *(v192 + 24) = v193;

          v194 = swift_allocObject();
          v195 = v498;
          v534 = v194;
          *(v194 + 16) = sub_1B07C8FC0;
          *(v194 + 24) = v195;

          v559 = sub_1B0E43988();
          v499 = v559;
          v558 = sub_1B0E45908();
          v500 = v558;
          v528 = 17;
          v537 = swift_allocObject();
          v501 = v537;
          v510 = 16;
          *(v537 + 16) = 16;
          v538 = swift_allocObject();
          v502 = v538;
          v518 = 4;
          *(v538 + 16) = 4;
          v196 = swift_allocObject();
          v503 = v196;
          *(v196 + 16) = sub_1B0394C30;
          v513 = 0;
          *(v196 + 24) = 0;
          v197 = swift_allocObject();
          v198 = v503;
          v539 = v197;
          v504 = v197;
          *(v197 + 16) = sub_1B0394C24;
          *(v197 + 24) = v198;
          v540 = swift_allocObject();
          v505 = v540;
          v516 = 0;
          *(v540 + 16) = 0;
          v541 = swift_allocObject();
          v506 = v541;
          *(v541 + 16) = 1;
          v199 = swift_allocObject();
          v200 = v507;
          v508 = v199;
          *(v199 + 16) = sub_1B039BA2C;
          *(v199 + 24) = v200;
          v201 = swift_allocObject();
          v202 = v508;
          v542 = v201;
          v509 = v201;
          *(v201 + 16) = sub_1B039BA88;
          *(v201 + 24) = v202;
          v543 = swift_allocObject();
          v511 = v543;
          *(v543 + 16) = v510;
          v544 = swift_allocObject();
          v512 = v544;
          *(v544 + 16) = v518;
          v203 = swift_allocObject();
          v204 = v513;
          v514 = v203;
          *(v203 + 16) = sub_1B039BB94;
          *(v203 + 24) = v204;
          v205 = swift_allocObject();
          v206 = v514;
          v545 = v205;
          v515 = v205;
          *(v205 + 16) = sub_1B0394C24;
          *(v205 + 24) = v206;
          v546 = swift_allocObject();
          v517 = v546;
          *(v546 + 16) = v516;
          v547 = swift_allocObject();
          v519 = v547;
          *(v547 + 16) = v518;
          v207 = swift_allocObject();
          v208 = v520;
          v521 = v207;
          *(v207 + 16) = sub_1B039BBA0;
          *(v207 + 24) = v208;
          v209 = swift_allocObject();
          v210 = v521;
          v548 = v209;
          v522 = v209;
          *(v209 + 16) = sub_1B039BC08;
          *(v209 + 24) = v210;
          v549 = swift_allocObject();
          v523 = v549;
          *(v549 + 16) = 112;
          v550 = swift_allocObject();
          v525 = v550;
          v530 = 8;
          *(v550 + 16) = 8;
          v526 = swift_allocObject();
          *(v526 + 16) = 0x786F626C69616DLL;
          v211 = swift_allocObject();
          v212 = v526;
          v551 = v211;
          v527 = v211;
          *(v211 + 16) = sub_1B06BA324;
          *(v211 + 24) = v212;
          v552 = swift_allocObject();
          v529 = v552;
          *(v552 + 16) = 37;
          v553 = swift_allocObject();
          v531 = v553;
          *(v553 + 16) = v530;
          v213 = swift_allocObject();
          v214 = v534;
          v535 = v213;
          *(v213 + 16) = sub_1B06E395C;
          *(v213 + 24) = v214;
          v215 = swift_allocObject();
          v216 = v535;
          v556 = v215;
          v536 = v215;
          *(v215 + 16) = sub_1B039BCF8;
          *(v215 + 24) = v216;
          v557 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
          v554 = sub_1B0E46A48();
          v555 = v217;

          v218 = v537;
          v219 = v555;
          *v555 = sub_1B0398F5C;
          v219[1] = v218;

          v220 = v538;
          v221 = v555;
          v555[2] = sub_1B0398F5C;
          v221[3] = v220;

          v222 = v539;
          v223 = v555;
          v555[4] = sub_1B0399178;
          v223[5] = v222;

          v224 = v540;
          v225 = v555;
          v555[6] = sub_1B0398F5C;
          v225[7] = v224;

          v226 = v541;
          v227 = v555;
          v555[8] = sub_1B0398F5C;
          v227[9] = v226;

          v228 = v542;
          v229 = v555;
          v555[10] = sub_1B039BA94;
          v229[11] = v228;

          v230 = v543;
          v231 = v555;
          v555[12] = sub_1B0398F5C;
          v231[13] = v230;

          v232 = v544;
          v233 = v555;
          v555[14] = sub_1B0398F5C;
          v233[15] = v232;

          v234 = v545;
          v235 = v555;
          v555[16] = sub_1B0399178;
          v235[17] = v234;

          v236 = v546;
          v237 = v555;
          v555[18] = sub_1B0398F5C;
          v237[19] = v236;

          v238 = v547;
          v239 = v555;
          v555[20] = sub_1B0398F5C;
          v239[21] = v238;

          v240 = v548;
          v241 = v555;
          v555[22] = sub_1B03991EC;
          v241[23] = v240;

          v242 = v549;
          v243 = v555;
          v555[24] = sub_1B0398F5C;
          v243[25] = v242;

          v244 = v550;
          v245 = v555;
          v555[26] = sub_1B0398F5C;
          v245[27] = v244;

          v246 = v551;
          v247 = v555;
          v555[28] = sub_1B03993BC;
          v247[29] = v246;

          v248 = v552;
          v249 = v555;
          v555[30] = sub_1B0398F5C;
          v249[31] = v248;

          v250 = v553;
          v251 = v555;
          v555[32] = sub_1B0398F5C;
          v251[33] = v250;

          v252 = v555;
          v253 = v556;
          v555[34] = sub_1B039BCEC;
          v252[35] = v253;
          sub_1B0394964();

          if (os_log_type_enabled(v559, v558))
          {
            v255 = v807;
            v488 = sub_1B0E45D78();
            v485 = v488;
            v486 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
            v489 = sub_1B03949A8(0);
            v487 = v489;
            v490 = sub_1B03949A8(1);
            v863 = v488;
            v862 = v489;
            v861 = v490;
            v491 = &v863;
            sub_1B0394A48(3, &v863);
            sub_1B0394A48(6, v491);
            v859 = sub_1B0398F5C;
            v860 = v501;
            sub_1B03949FC(&v859, v491, &v862, &v861);
            v492 = v255;
            v493 = v255;
            if (v255)
            {
              v483 = 0;

              __break(1u);
            }

            else
            {
              v859 = sub_1B0398F5C;
              v860 = v502;
              sub_1B03949FC(&v859, &v863, &v862, &v861);
              v481 = 0;
              v482 = 0;
              v859 = sub_1B0399178;
              v860 = v504;
              sub_1B03949FC(&v859, &v863, &v862, &v861);
              v479 = 0;
              v480 = 0;
              v859 = sub_1B0398F5C;
              v860 = v505;
              sub_1B03949FC(&v859, &v863, &v862, &v861);
              v477 = 0;
              v478 = 0;
              v859 = sub_1B0398F5C;
              v860 = v506;
              sub_1B03949FC(&v859, &v863, &v862, &v861);
              v475 = 0;
              v476 = 0;
              v859 = sub_1B039BA94;
              v860 = v509;
              sub_1B03949FC(&v859, &v863, &v862, &v861);
              v473 = 0;
              v474 = 0;
              v859 = sub_1B0398F5C;
              v860 = v511;
              sub_1B03949FC(&v859, &v863, &v862, &v861);
              v471 = 0;
              v472 = 0;
              v859 = sub_1B0398F5C;
              v860 = v512;
              sub_1B03949FC(&v859, &v863, &v862, &v861);
              v469 = 0;
              v470 = 0;
              v859 = sub_1B0399178;
              v860 = v515;
              sub_1B03949FC(&v859, &v863, &v862, &v861);
              v467 = 0;
              v468 = 0;
              v859 = sub_1B0398F5C;
              v860 = v517;
              sub_1B03949FC(&v859, &v863, &v862, &v861);
              v465 = 0;
              v466 = 0;
              v859 = sub_1B0398F5C;
              v860 = v519;
              sub_1B03949FC(&v859, &v863, &v862, &v861);
              v463 = 0;
              v464 = 0;
              v859 = sub_1B03991EC;
              v860 = v522;
              sub_1B03949FC(&v859, &v863, &v862, &v861);
              v461 = 0;
              v462 = 0;
              v859 = sub_1B0398F5C;
              v860 = v523;
              sub_1B03949FC(&v859, &v863, &v862, &v861);
              v459 = 0;
              v460 = 0;
              v859 = sub_1B0398F5C;
              v860 = v525;
              sub_1B03949FC(&v859, &v863, &v862, &v861);
              v457 = 0;
              v458 = 0;
              v859 = sub_1B03993BC;
              v860 = v527;
              sub_1B03949FC(&v859, &v863, &v862, &v861);
              v455 = 0;
              v456 = 0;
              v859 = sub_1B0398F5C;
              v860 = v529;
              sub_1B03949FC(&v859, &v863, &v862, &v861);
              v453 = 0;
              v454 = 0;
              v859 = sub_1B0398F5C;
              v860 = v531;
              sub_1B03949FC(&v859, &v863, &v862, &v861);
              v451 = 0;
              v452 = 0;
              v859 = sub_1B039BCEC;
              v860 = v536;
              sub_1B03949FC(&v859, &v863, &v862, &v861);
              v449 = 0;
              v450 = 0;
              _os_log_impl(&dword_1B0389000, v499, v500, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Requesting search: Mailbox is empty.", v485, 0x2Bu);
              sub_1B03998A8(v487);
              sub_1B03998A8(v490);
              sub_1B0E45D58();

              v484 = v449;
            }
          }

          else
          {
            v256 = v807;

            v484 = v256;
          }

          v448 = v484;

          (*(v823 + 8))(v825, v821);
          v803 = v448;
        }
      }

      else
      {
        v800 = *(&v802 + 1);
        v97 = v827;
        v617 = *(&v802 + 1);
        v858 = *(&v802 + 1);
        v612 = &OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger;
        sub_1B0394784(v818 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v834);
        (*(v823 + 16))(v97, v834, v821);
        sub_1B039480C(v834);

        sub_1B0394784(v818 + *v612, v836);
        v98 = (v836 + *(v831 + 20));
        v613 = *v98;
        v614 = *(v98 + 1);
        sub_1B039480C(v836);

        v644 = 24;
        v658 = 7;
        v99 = swift_allocObject();
        v100 = v614;
        v627 = v99;
        *(v99 + 16) = v613;
        *(v99 + 20) = v100;
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v101 = swift_allocObject();
        v102 = v614;
        v615 = v101;
        *(v101 + 16) = v613;
        *(v101 + 20) = v102;

        v657 = 32;
        v103 = swift_allocObject();
        v104 = v615;
        v640 = v103;
        *(v103 + 16) = sub_1B039BBE8;
        *(v103 + 24) = v104;
        sub_1B0394868();
        sub_1B0394868();

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v105 = swift_allocObject();
        v106 = v841;
        v616 = v105;
        *(v105 + 16) = v840;
        *(v105 + 24) = v106;

        v107 = swift_allocObject();
        v108 = v616;
        v650 = v107;
        *(v107 + 16) = sub_1B07C8FC0;
        *(v107 + 24) = v108;

        v109 = swift_allocObject();
        v110 = HIDWORD(v617);
        v618 = v109;
        *(v109 + 16) = v617;
        *(v109 + 20) = v110;

        v111 = swift_allocObject();
        v112 = v618;
        v659 = v111;
        *(v111 + 16) = sub_1B08731FC;
        *(v111 + 24) = v112;

        v687 = sub_1B0E43988();
        v619 = v687;
        v686 = sub_1B0E45908();
        v620 = v686;
        v653 = 17;
        v662 = swift_allocObject();
        v621 = v662;
        v630 = 16;
        *(v662 + 16) = 16;
        v663 = swift_allocObject();
        v622 = v663;
        v638 = 4;
        *(v663 + 16) = 4;
        v113 = swift_allocObject();
        v623 = v113;
        *(v113 + 16) = sub_1B0394C30;
        v633 = 0;
        *(v113 + 24) = 0;
        v114 = swift_allocObject();
        v115 = v623;
        v664 = v114;
        v624 = v114;
        *(v114 + 16) = sub_1B0394C24;
        *(v114 + 24) = v115;
        v665 = swift_allocObject();
        v625 = v665;
        v636 = 0;
        *(v665 + 16) = 0;
        v666 = swift_allocObject();
        v626 = v666;
        *(v666 + 16) = 1;
        v116 = swift_allocObject();
        v117 = v627;
        v628 = v116;
        *(v116 + 16) = sub_1B039BA2C;
        *(v116 + 24) = v117;
        v118 = swift_allocObject();
        v119 = v628;
        v667 = v118;
        v629 = v118;
        *(v118 + 16) = sub_1B039BA88;
        *(v118 + 24) = v119;
        v668 = swift_allocObject();
        v631 = v668;
        *(v668 + 16) = v630;
        v669 = swift_allocObject();
        v632 = v669;
        *(v669 + 16) = v638;
        v120 = swift_allocObject();
        v121 = v633;
        v634 = v120;
        *(v120 + 16) = sub_1B039BB94;
        *(v120 + 24) = v121;
        v122 = swift_allocObject();
        v123 = v634;
        v670 = v122;
        v635 = v122;
        *(v122 + 16) = sub_1B0394C24;
        *(v122 + 24) = v123;
        v671 = swift_allocObject();
        v637 = v671;
        *(v671 + 16) = v636;
        v672 = swift_allocObject();
        v639 = v672;
        *(v672 + 16) = v638;
        v124 = swift_allocObject();
        v125 = v640;
        v641 = v124;
        *(v124 + 16) = sub_1B039BBA0;
        *(v124 + 24) = v125;
        v126 = swift_allocObject();
        v127 = v641;
        v673 = v126;
        v642 = v126;
        *(v126 + 16) = sub_1B039BC08;
        *(v126 + 24) = v127;
        v674 = swift_allocObject();
        v643 = v674;
        *(v674 + 16) = 112;
        v675 = swift_allocObject();
        v645 = v675;
        v655 = 8;
        *(v675 + 16) = 8;
        v646 = swift_allocObject();
        *(v646 + 16) = 0x786F626C69616DLL;
        v128 = swift_allocObject();
        v129 = v646;
        v676 = v128;
        v647 = v128;
        *(v128 + 16) = sub_1B06BA324;
        *(v128 + 24) = v129;
        v677 = swift_allocObject();
        v648 = v677;
        *(v677 + 16) = 37;
        v678 = swift_allocObject();
        v649 = v678;
        *(v678 + 16) = v655;
        v130 = swift_allocObject();
        v131 = v650;
        v651 = v130;
        *(v130 + 16) = sub_1B06E395C;
        *(v130 + 24) = v131;
        v132 = swift_allocObject();
        v133 = v651;
        v679 = v132;
        v652 = v132;
        *(v132 + 16) = sub_1B039BCF8;
        *(v132 + 24) = v133;
        v680 = swift_allocObject();
        v654 = v680;
        *(v680 + 16) = 34;
        v681 = swift_allocObject();
        v656 = v681;
        *(v681 + 16) = v655;
        v134 = swift_allocObject();
        v135 = v659;
        v660 = v134;
        *(v134 + 16) = sub_1B0873228;
        *(v134 + 24) = v135;
        v136 = swift_allocObject();
        v137 = v660;
        v684 = v136;
        v661 = v136;
        *(v136 + 16) = sub_1B039BCF8;
        *(v136 + 24) = v137;
        v685 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v682 = sub_1B0E46A48();
        v683 = v138;

        v139 = v662;
        v140 = v683;
        *v683 = sub_1B0398F5C;
        v140[1] = v139;

        v141 = v663;
        v142 = v683;
        v683[2] = sub_1B0398F5C;
        v142[3] = v141;

        v143 = v664;
        v144 = v683;
        v683[4] = sub_1B0399178;
        v144[5] = v143;

        v145 = v665;
        v146 = v683;
        v683[6] = sub_1B0398F5C;
        v146[7] = v145;

        v147 = v666;
        v148 = v683;
        v683[8] = sub_1B0398F5C;
        v148[9] = v147;

        v149 = v667;
        v150 = v683;
        v683[10] = sub_1B039BA94;
        v150[11] = v149;

        v151 = v668;
        v152 = v683;
        v683[12] = sub_1B0398F5C;
        v152[13] = v151;

        v153 = v669;
        v154 = v683;
        v683[14] = sub_1B0398F5C;
        v154[15] = v153;

        v155 = v670;
        v156 = v683;
        v683[16] = sub_1B0399178;
        v156[17] = v155;

        v157 = v671;
        v158 = v683;
        v683[18] = sub_1B0398F5C;
        v158[19] = v157;

        v159 = v672;
        v160 = v683;
        v683[20] = sub_1B0398F5C;
        v160[21] = v159;

        v161 = v673;
        v162 = v683;
        v683[22] = sub_1B03991EC;
        v162[23] = v161;

        v163 = v674;
        v164 = v683;
        v683[24] = sub_1B0398F5C;
        v164[25] = v163;

        v165 = v675;
        v166 = v683;
        v683[26] = sub_1B0398F5C;
        v166[27] = v165;

        v167 = v676;
        v168 = v683;
        v683[28] = sub_1B03993BC;
        v168[29] = v167;

        v169 = v677;
        v170 = v683;
        v683[30] = sub_1B0398F5C;
        v170[31] = v169;

        v171 = v678;
        v172 = v683;
        v683[32] = sub_1B0398F5C;
        v172[33] = v171;

        v173 = v679;
        v174 = v683;
        v683[34] = sub_1B039BCEC;
        v174[35] = v173;

        v175 = v680;
        v176 = v683;
        v683[36] = sub_1B0398F5C;
        v176[37] = v175;

        v177 = v681;
        v178 = v683;
        v683[38] = sub_1B0398F5C;
        v178[39] = v177;

        v179 = v683;
        v180 = v684;
        v683[40] = sub_1B039BCEC;
        v179[41] = v180;
        sub_1B0394964();

        if (os_log_type_enabled(v687, v686))
        {
          v182 = v807;
          v606 = sub_1B0E45D78();
          v603 = v606;
          v604 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v607 = sub_1B03949A8(0);
          v605 = v607;
          v608 = sub_1B03949A8(2);
          v857 = v606;
          v856 = v607;
          v855 = v608;
          v609 = &v857;
          sub_1B0394A48(3, &v857);
          sub_1B0394A48(7, v609);
          v853 = sub_1B0398F5C;
          v854 = v621;
          sub_1B03949FC(&v853, v609, &v856, &v855);
          v610 = v182;
          v611 = v182;
          if (v182)
          {
            v601 = 0;

            __break(1u);
          }

          else
          {
            v853 = sub_1B0398F5C;
            v854 = v622;
            sub_1B03949FC(&v853, &v857, &v856, &v855);
            v599 = 0;
            v600 = 0;
            v853 = sub_1B0399178;
            v854 = v624;
            sub_1B03949FC(&v853, &v857, &v856, &v855);
            v597 = 0;
            v598 = 0;
            v853 = sub_1B0398F5C;
            v854 = v625;
            sub_1B03949FC(&v853, &v857, &v856, &v855);
            v595 = 0;
            v596 = 0;
            v853 = sub_1B0398F5C;
            v854 = v626;
            sub_1B03949FC(&v853, &v857, &v856, &v855);
            v593 = 0;
            v594 = 0;
            v853 = sub_1B039BA94;
            v854 = v629;
            sub_1B03949FC(&v853, &v857, &v856, &v855);
            v591 = 0;
            v592 = 0;
            v853 = sub_1B0398F5C;
            v854 = v631;
            sub_1B03949FC(&v853, &v857, &v856, &v855);
            v589 = 0;
            v590 = 0;
            v853 = sub_1B0398F5C;
            v854 = v632;
            sub_1B03949FC(&v853, &v857, &v856, &v855);
            v587 = 0;
            v588 = 0;
            v853 = sub_1B0399178;
            v854 = v635;
            sub_1B03949FC(&v853, &v857, &v856, &v855);
            v585 = 0;
            v586 = 0;
            v853 = sub_1B0398F5C;
            v854 = v637;
            sub_1B03949FC(&v853, &v857, &v856, &v855);
            v583 = 0;
            v584 = 0;
            v853 = sub_1B0398F5C;
            v854 = v639;
            sub_1B03949FC(&v853, &v857, &v856, &v855);
            v581 = 0;
            v582 = 0;
            v853 = sub_1B03991EC;
            v854 = v642;
            sub_1B03949FC(&v853, &v857, &v856, &v855);
            v579 = 0;
            v580 = 0;
            v853 = sub_1B0398F5C;
            v854 = v643;
            sub_1B03949FC(&v853, &v857, &v856, &v855);
            v577 = 0;
            v578 = 0;
            v853 = sub_1B0398F5C;
            v854 = v645;
            sub_1B03949FC(&v853, &v857, &v856, &v855);
            v575 = 0;
            v576 = 0;
            v853 = sub_1B03993BC;
            v854 = v647;
            sub_1B03949FC(&v853, &v857, &v856, &v855);
            v573 = 0;
            v574 = 0;
            v853 = sub_1B0398F5C;
            v854 = v648;
            sub_1B03949FC(&v853, &v857, &v856, &v855);
            v571 = 0;
            v572 = 0;
            v853 = sub_1B0398F5C;
            v854 = v649;
            sub_1B03949FC(&v853, &v857, &v856, &v855);
            v569 = 0;
            v570 = 0;
            v853 = sub_1B039BCEC;
            v854 = v652;
            sub_1B03949FC(&v853, &v857, &v856, &v855);
            v567 = 0;
            v568 = 0;
            v853 = sub_1B0398F5C;
            v854 = v654;
            sub_1B03949FC(&v853, &v857, &v856, &v855);
            v565 = 0;
            v566 = 0;
            v853 = sub_1B0398F5C;
            v854 = v656;
            sub_1B03949FC(&v853, &v857, &v856, &v855);
            v563 = 0;
            v564 = 0;
            v853 = sub_1B039BCEC;
            v854 = v661;
            sub_1B03949FC(&v853, &v857, &v856, &v855);
            v561 = 0;
            v562 = 0;
            _os_log_impl(&dword_1B0389000, v619, v620, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Requesting search: UID range %{public}s is indexed in mailbox.", v603, 0x35u);
            sub_1B03998A8(v605);
            sub_1B03998A8(v608);
            sub_1B0E45D58();

            v602 = v561;
          }
        }

        else
        {
          v183 = v807;

          v602 = v183;
        }

        v560 = v602;

        (*(v823 + 8))(v827, v821);
        v803 = v560;
      }
    }

    v869 = v810;
    v870 = v809;
    v871 = v808;
    if (v808 == 255)
    {
      v333 = 0;
      v334 = 0;
      v335 = 2;
    }

    else
    {
      v333 = v869;
      v334 = v870;
      v335 = v871;
    }

    return v333;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1B09AB17C(uint64_t a1, int a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v59 = a1;
  v60 = a2;
  v45 = a3;
  v61 = a4;
  v46 = a5;
  v47 = a6;
  v65 = sub_1B09AEEDC;
  v84 = 0;
  v83 = 0;
  v81 = 0;
  v82 = 0;
  v80 = 0;
  v79 = 0;
  v77 = 0;
  v78 = 0;
  v76 = 0;
  v71 = 0;
  v72 = 0;
  v73 = 0;
  v85 = 0;
  v70 = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v38 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v23 - v38;
  v85 = &v23 - v38;
  v43 = 0;
  v40 = _s11SearchStateV6SearchV4KindOMa();
  v41 = (*(*(v40 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v40);
  v42 = (&v23 - v41);
  v44 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3428, &qword_1B0EA1DB0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v43);
  v62 = &v23 - v44;
  v48 = _s11SearchStateV6SearchVMa();
  v49 = *(v48 - 8);
  v50 = v48 - 8;
  v51 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v59);
  v52 = &v23 - v51;
  v53 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v54 = (&v23 - v53);
  v84 = &v23 - v53;
  v55 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v56 = &v23 - v55;
  v83 = &v23 - v55;
  v81 = v12;
  v82 = v13;
  v57 = *v14;
  v80 = v57;
  v79 = v15;
  v77 = v16;
  v78 = v17;
  v76 = v6;
  v58 = *(v6 + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v75 = v58;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v63 = &v66;
  v67 = v59;
  v68 = v60;
  v69 = v61;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3430, &unk_1B0EA1DB8);
  sub_1B09AEF10();
  sub_1B0E44FB8();

  sub_1B039E440(&v75);
  if ((*(v49 + 48))(v62, 1, v48) == 1)
  {
    sub_1B09AEF98(v62);
    v29 = &v74;
    v74 = v57;
    v18 = static MonotonicTime.now()();
    v30 = sub_1B08C1F14(v29, v46, v47, v18);
    v31 = v19;
    v32 = v20;
    v71 = v30;
    v72 = v19;
    v73 = v20;
    sub_1B09AEC3C(v61, v42);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B074BA2C(v42, v39);
      v85 = v39;
      v21 = sub_1B09ABDE8();
      sub_1B09AD348(v21, v59, v60, v39, v30, v31, v32, v52);
      sub_1B09AF114(v52, v54);
      sub_1B03D09B8(v39);
    }

    else
    {
      v28 = *v42;
      v70 = v28;
      v27 = sub_1B09ABDE8();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B09AD058(v27, v59, v60, v28, v30, v31, v32, v52);
      sub_1B09AF114(v52, v54);
    }

    sub_1B09AF2FC(v54, v52);
    sub_1B0E452F8();
    v25 = *v54;
    v24 = *(v54 + *(v48 + 36));
    MEMORY[0x1E69E5928](v24);
    v26 = [v24 future];
    MEMORY[0x1E69E5920](v24);
    sub_1B09AF510(v54);
    v35 = v25;
    v36 = v26;
    v37 = 1;
  }

  else
  {
    sub_1B09AF114(v62, v56);
    v33 = *(v56 + *(v48 + 36));
    MEMORY[0x1E69E5928](v33);
    v34 = [v33 future];
    MEMORY[0x1E69E5920](v33);
    sub_1B09AF510(v56);
    v35 = v34;
    v36 = 0;
    v37 = 0;
  }

  return v35;
}

uint64_t sub_1B09AB94C(unint64_t a1)
{
  v2 = sub_1B0A3CFE8(a1);
  v3 = SearchRequest.Predicate.description.getter(v2);
  sub_1B09AEA14(v2);
  return v3;
}

uint64_t sub_1B09AB990(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v9[1] = a1;
  v9[2] = a2;
  v9[3] = a3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v9[0] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3430, &unk_1B0EA1DB8);
  v3 = sub_1B09AF658();
  v5 = sub_1B039CA88(sub_1B09ADA60, 0, v7, &type metadata for SearchRequest, MEMORY[0x1E69E73E0], v3, MEMORY[0x1E69E7410], v8);
  sub_1B039E440(v9);
  return v5;
}

uint64_t sub_1B09ABA80@<X0>(uint64_t a1@<X0>, char a2@<W2>, uint64_t a3@<X8>)
{
  v25 = *(a1 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_store);
  MEMORY[0x1E69E5928](v25);
  v26 = [v25 library];
  MEMORY[0x1E69E5920](v25);
  if (v26)
  {
    v21 = v26;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  v17 = sub_1B0A42D78();
  v18 = v3;
  v19 = *(a1 + 16);
  MEMORY[0x1E69E5928](v19);
  v20 = [v19 URLString];
  if (v20)
  {
    v13 = sub_1B0E44AD8();
    v14 = v4;
    MEMORY[0x1E69E5920](v20);
    v15 = v13;
    v16 = v14;
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  MEMORY[0x1E69E5920](v19);
  if (v16)
  {
    v11 = v15;
    v12 = v16;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  v8 = sub_1B08C2A60(v17, v18 & 1, a2 & 1, v11, v12);
  v9 = v5;
  v10 = v6;

  MEMORY[0x1E69E5920](v21);
  result = v8;
  *a3 = v8;
  *(a3 + 8) = v9;
  *(a3 + 16) = v10;
  return result;
}

uint64_t sub_1B09ABD5C()
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v3 = SearchRequest.ID.init()();
  LODWORD(v4) = v3;
  _s11SearchStateV6SearchVMa();
  v1 = sub_1B0E46A48();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v5 = v1;
  v2 = sub_1B08C1A04();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6 = v2;
  sub_1B09B00F0(&v4);
  return v3;
}

uint64_t sub_1B09ABDE8()
{
  v2 = *v0;
  sub_1B09ABE2C(v0);
  return v2;
}

uint64_t sub_1B09ABE2C(int *a1)
{
  result = SearchRequest.ID.next.getter(*a1);
  *a1 = result;
  return result;
}

uint64_t *sub_1B09ABE68(unsigned int a1, uint64_t a2)
{
  v27 = a1;
  v23 = a2;
  v31 = sub_1B09AF6E0;
  v19 = sub_1B0740480;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v40 = 0;
  v41 = 0;
  v39 = 0;
  v37 = 0;
  v38 = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v21 = (*(*(v20 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v9[-v21];
  v24 = _s11SearchStateV6SearchVMa();
  v25 = (*(*(v24 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v27);
  v26 = &v9[-v25];
  v47 = v3;
  v46 = v4;
  v45 = v2;
  v28 = *(v2 + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v42 = v28;
  v29 = &v32;
  v33 = v27;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3430, &unk_1B0EA1DB8);
  sub_1B09AF658();
  sub_1B0E456F8();
  result = sub_1B039E440(&v42);
  v17 = v43;
  v40 = v43;
  v41 = v44 & 1;
  if ((v44 & 1) == 0)
  {
    v16 = v17;
    v12 = v17;
    v39 = v17;
    v6 = *(v18 + 8);
    sub_1B0E453A8();
    v15 = *(v26 + 1);
    v10 = *(v26 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B09AF510(v26);
    v37 = v15;
    v38 = v10;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v11 = &v35;
    v35 = v15;
    v36 = v10;
    sub_1B0451F2C();
    sub_1B0E44738();
    sub_1B039E440(v11);
    v13 = &v34;
    v14 = sub_1B0E45398();
    v8 = v7 + *(v24 + 32);
    MessageIdentifierSet.formUnion(_:)(v22, v20);
    v14();
    sub_1B03D09B8(v22);
  }

  return result;
}

uint64_t sub_1B09AC254(uint64_t a1)
{
  v18 = a1;
  v11 = 0;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v28[1] = 0;
  v28[0] = 0;
  v24 = 0;
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v13 = v8 - v12;
  v14 = _s11SearchStateV6SearchVMa();
  v15 = *(v14 - 8);
  v16 = v15;
  v2 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = (v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = v17;
  v19 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3428, &qword_1B0EA1DB0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v18);
  v20 = v8 - v19;
  v30 = v4;
  v29 = v1;
  v21 = *(v1 + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v27 = v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3430, &unk_1B0EA1DB8);
  v22 = v23;
  sub_1B09AF658();
  sub_1B0E45798();
  for (i = v24; ; i = v10)
  {
    v10 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3438, &qword_1B0EA1DC8);
    sub_1B0E46518();
    if ((*(v16 + 48))(v20, 1, v14) == 1)
    {
      break;
    }

    sub_1B09AF114(v20, v17);
    v26 = *v17;
    sub_1B09AF848();
    if (sub_1B0E45528())
    {
      v9 = *(v17 + *(v14 + 36));
      v5 = v9;
      _s11SearchStateV7ResultsCMa();
      sub_1B03D08AC(v17 + *(v14 + 32), v13);
      v8[3] = sub_1B09AC630(v13);
      [v9 finishWithResult_];
    }

    sub_1B09AF510(v17);
  }

  v6 = v10;
  sub_1B039E440(v28);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v8[0] = v8;
  MEMORY[0x1EEE9AC00](v8);
  v8[1] = &v8[-4];
  v8[-2] = v18;
  v8[2] = sub_1B09AF738();
  sub_1B09AF7C0();
  sub_1B0E45898();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B09AC630(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  return sub_1B09AE3E0(a1);
}

uint64_t sub_1B09AC67C(int *a1)
{
  v2 = *a1;
  sub_1B09AF848();
  return sub_1B0E45528() & 1;
}

uint64_t sub_1B09AC6E8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  sub_1B09AFF6C(a1, a2, a3 & 1);
  sub_1B09AFF6C(a4, a5, a6 & 1);
  if ((a3 & 1) == 0)
  {
    if ((a6 & 1) == 0)
    {
      MEMORY[0x1E69E5928](a1);
      MEMORY[0x1E69E5928](a4);
      sub_1B08A67A0();
      if (sub_1B0E45CD8())
      {
        MEMORY[0x1E69E5920](a4);
        MEMORY[0x1E69E5920](a1);
        sub_1B09AED9C(a1, a2, a3 & 1);
        sub_1B09AED9C(a4, a5, a6 & 1);
        v7 = 1;
      }

      else
      {
        MEMORY[0x1E69E5920](a4);
        MEMORY[0x1E69E5920](a1);
        sub_1B09AED9C(a1, a2, a3 & 1);
        sub_1B09AED9C(a4, a5, a6 & 1);
        v7 = 0;
      }

      return v7 & 1;
    }

LABEL_13:
    sub_1B09AED9C(a1, a2, a3 & 1);
    sub_1B09AED9C(a4, a5, a6 & 1);
    v7 = 0;
    return v7 & 1;
  }

  if ((a6 & 1) == 0)
  {
    goto LABEL_13;
  }

  MEMORY[0x1E69E5928](a2);
  MEMORY[0x1E69E5928](a5);
  if (static SearchRequest.ID.__derived_struct_equals(_:_:)(a1, a4) && (sub_1B08A67A0(), (sub_1B0E45CD8() & 1) != 0))
  {
    MEMORY[0x1E69E5920](a5);
    MEMORY[0x1E69E5920](a2);
    sub_1B09AED9C(a1, a2, a3 & 1);
    sub_1B09AED9C(a4, a5, a6 & 1);
    v7 = 1;
  }

  else
  {
    MEMORY[0x1E69E5920](a5);
    MEMORY[0x1E69E5920](a2);
    sub_1B09AED9C(a1, a2, a3 & 1);
    sub_1B09AED9C(a4, a5, a6 & 1);
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1B09ACAD8(uint64_t a1, uint64_t a2, int a3, unint64_t *a4)
{
  v15 = a1;
  v19 = a2;
  v20 = a3;
  v14 = a4;
  v26 = 0;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v4 = _s11SearchStateV6SearchV4KindOMa();
  v16 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v17 = (&v11 - v16);
  v26 = v5;
  v24 = v6;
  v25 = v7;
  v23 = v8;
  v21 = *(v5 + 8);
  v18 = *(v5 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v22 = static MailboxName.== infix(_:_:)(v21, v18, v19, v20);

  if (v22)
  {
    v9 = _s11SearchStateV6SearchVMa();
    sub_1B09AEC3C((v15 + *(v9 + 24)), v17);
    v12 = sub_1B09ACC30(v17, v14);
    sub_1B09AFA80(v17);
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_1B09ACC30(uint64_t a1, unint64_t *a2)
{
  v20 = a1;
  v28 = a2;
  v37 = 0;
  v36 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v15 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v16 = &v11[-v15];
  v17 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v11[-v15]);
  v18 = &v11[-v17];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3450, &qword_1B0EA1F68);
  v19 = (*(*(v32 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v11[-v19];
  v33 = _s11SearchStateV6SearchV4KindOMa();
  v26 = *(*(v33 - 8) + 64);
  v21 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v20);
  v22 = &v11[-v21];
  v23 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v24 = &v11[-v23];
  v25 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v31 = &v11[-v25];
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v29 = &v11[-v27];
  v37 = v7;
  v36 = v8;
  sub_1B09AEC3C(v7, &v11[-v27]);
  sub_1B09AEC3C(v28, v31);
  v30 = *(v32 + 48);
  sub_1B09AF8C0(v29, v34);
  sub_1B09AF8C0(v31, &v34[v30]);
  v35 = *(v32 + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B09AEC3C(v34, v24);
    v14 = *v24;
    if (!swift_getEnumCaseMultiPayload())
    {
      v13 = *&v34[v35];
      if (static SearchRequest.Predicate.__derived_enum_equals(_:_:)(v14, v13))
      {
        sub_1B09AEA14(v13);
        sub_1B09AEA14(v14);
        sub_1B09AFA80(v34);
        v12 = 1;
      }

      else
      {
        sub_1B09AEA14(v13);
        sub_1B09AEA14(v14);
        sub_1B09AFA80(v34);
        v12 = 0;
      }

      return v12 & 1;
    }

    sub_1B09AEA14(v14);
LABEL_12:
    sub_1B09AFFC0(v34);
    v12 = 0;
    return v12 & 1;
  }

  sub_1B09AEC3C(v34, v22);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B03D09B8(v22);
    goto LABEL_12;
  }

  sub_1B074BA2C(v22, v18);
  sub_1B074BA2C(&v34[v35], v16);
  v9 = sub_1B041C1E8();
  if (static MessageIdentifierSetNonEmpty.__derived_struct_equals(_:_:)(v18, v16, &type metadata for UID, v9))
  {
    sub_1B03D09B8(v16);
    sub_1B03D09B8(v18);
    sub_1B09AFA80(v34);
    v12 = 1;
  }

  else
  {
    sub_1B03D09B8(v16);
    sub_1B03D09B8(v18);
    sub_1B09AFA80(v34);
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_1B09AD058@<X0>(int a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v41 = a8;
  v29 = a1;
  v43 = a2;
  v31 = a3;
  v42 = a4;
  v34 = a5;
  v35 = a6;
  v36 = a7;
  v52 = 0;
  v51 = 0;
  v49 = 0;
  v50 = 0;
  v48 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v27 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v38 = &v27 - v27;
  v39 = 0;
  v32 = _s11SearchStateV6SearchV4KindOMa();
  v28 = (*(*(v32 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v39);
  v33 = (&v27 - v28);
  v40 = _s11SearchStateV6SearchVMa();
  v30 = (*(*(v40 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v43);
  v44 = &v27 - v30;
  v52 = &v27 - v30;
  v51 = v10;
  v49 = v9;
  v50 = v11;
  v48 = v12;
  v45 = v13;
  v46 = v14;
  v47 = v15;
  *v44 = v10;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v16 = v42;
  v17 = v31;
  v18 = v44;
  *(v44 + 8) = v43;
  *(v18 + 16) = v17;
  sub_1B09AE83C(v16);
  *v33 = v42;
  swift_storeEnumTagMultiPayload();
  sub_1B09AF8C0(v33, (v44 + v40[6]));
  v19 = v35;
  v20 = v36;
  v21 = v44 + v40[7];
  *v21 = v34;
  *(v21 + 8) = v19;
  *(v21 + 16) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
  v37 = sub_1B0E46A48();
  sub_1B041C1E8();
  MessageIdentifierSet.init(arrayLiteral:)(v37, &type metadata for UID);
  sub_1B074BA2C(v38, v44 + v40[8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3360, &qword_1B0EA1150);
  _s11SearchStateV7ResultsCMa();
  v22 = sub_1B098C644();
  v23 = v41;
  v24 = v22;
  v25 = v44;
  *(v44 + v40[9]) = v24;
  sub_1B09AF2FC(v25, v23);
  sub_1B09AEA14(v42);

  return sub_1B09AF510(v44);
}

uint64_t sub_1B09AD348@<X0>(int a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v19 = a8;
  v20 = a1;
  v21 = a2;
  v22 = a3;
  v17 = a4;
  v24 = a5;
  v25 = a6;
  v26 = a7;
  v33 = 0;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v18 = _s11SearchStateV6SearchV4KindOMa();
  v16 = (*(*(v18 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v21);
  v23 = (&v16 - v16);
  v33 = v9;
  v31 = v8;
  v32 = v10;
  v30 = v11;
  v27 = v12;
  v28 = v13;
  v29 = v14;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03D08AC(v17, v23);
  swift_storeEnumTagMultiPayload();
  return sub_1B09AD788(v20, v21, v22, v23, v24, v25, v26, v19);
}

unint64_t *sub_1B09AD4D0(unint64_t *a1)
{
  v7 = a1;
  v5[1] = 0;
  v5[0] = (*(*(_s11SearchStateV6SearchV4KindOMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v6 = (v5 - v5[0]);
  sub_1B09AEC3C(v2, (v5 - v5[0]));
  v3 = _s11SearchStateV6SearchVMa();
  sub_1B09AF994(v6, (v1 + *(v3 + 24)));
  return sub_1B09AFA80(v7);
}

uint64_t sub_1B09AD578()
{
  v1 = (v0 + *(_s11SearchStateV6SearchVMa() + 28));
  result = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  return result;
}

uint64_t sub_1B09AD5A8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = _s11SearchStateV6SearchVMa();
  result = a1;
  v6 = v3 + *(v4 + 28);
  *v6 = a1;
  *(v6 + 8) = a2;
  *(v6 + 16) = a3;
  return result;
}

uint64_t sub_1B09AD634(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v7 = &v5 - v6;
  sub_1B03D08AC(v2, &v5 - v6);
  v3 = _s11SearchStateV6SearchVMa();
  sub_1B074F0FC(v7, v1 + *(v3 + 32));
  return sub_1B03D09B8(v8);
}

uint64_t sub_1B09AD6E4()
{
  v2 = *(v0 + *(_s11SearchStateV6SearchVMa() + 36));
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B09AD724(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v2 = (v1 + *(_s11SearchStateV6SearchVMa() + 36));
  v3 = *v2;
  *v2 = a1;
  MEMORY[0x1E69E5920](v3);
  return MEMORY[0x1E69E5920](a1);
}

uint64_t sub_1B09AD788@<X0>(int a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, unint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v42 = a8;
  v31 = a1;
  v44 = a2;
  v33 = a3;
  v43 = a4;
  v35 = a5;
  v36 = a6;
  v37 = a7;
  v53 = 0;
  v52 = 0;
  v50 = 0;
  v51 = 0;
  v49 = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v29 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v39 = &v28 - v29;
  v40 = 0;
  v30 = (*(*(_s11SearchStateV6SearchV4KindOMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v40);
  v34 = (&v28 - v30);
  v41 = _s11SearchStateV6SearchVMa();
  v32 = (*(*(v41 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v44);
  v45 = &v28 - v32;
  v53 = &v28 - v32;
  v52 = v10;
  v50 = v9;
  v51 = v11;
  v49 = v12;
  v46 = v13;
  v47 = v14;
  v48 = v15;
  *v45 = v10;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v16 = v43;
  v17 = v33;
  v18 = v34;
  v19 = v45;
  *(v45 + 8) = v44;
  *(v19 + 16) = v17;
  sub_1B09AEC3C(v16, v18);
  sub_1B09AF8C0(v34, (v45 + v41[6]));
  v20 = v36;
  v21 = v37;
  v22 = v45 + v41[7];
  *v22 = v35;
  *(v22 + 8) = v20;
  *(v22 + 16) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
  v38 = sub_1B0E46A48();
  sub_1B041C1E8();
  MessageIdentifierSet.init(arrayLiteral:)(v38, &type metadata for UID);
  sub_1B074BA2C(v39, v45 + v41[8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3360, &qword_1B0EA1150);
  _s11SearchStateV7ResultsCMa();
  v23 = sub_1B098C644();
  v24 = v42;
  v25 = v23;
  v26 = v45;
  *(v45 + v41[9]) = v25;
  sub_1B09AF2FC(v26, v24);
  sub_1B09AFA80(v43);

  return sub_1B09AF510(v45);
}

uint64_t sub_1B09ADA60@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v9 = a2;
  v6 = a1;
  v10 = 0;
  v7 = (*(*(_s11SearchStateV6SearchVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = &v6 - v7;
  v10 = MEMORY[0x1EEE9AC00](v6);
  sub_1B09AF2FC(v10, &v6 - v7);
  result = sub_1B09ADB10(v8);
  v3 = v9;
  *v9 = result;
  *(v3 + 1) = v4;
  *(v3 + 2) = v5;
  return result;
}

uint64_t sub_1B09ADB10(uint64_t a1)
{
  v45 = a1;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v50 = 0;
  v54 = 0;
  v49 = 0;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v41 = (*(*(v40 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v40);
  v42 = v16 - v41;
  v54 = v16 - v41;
  v43 = 0;
  v47 = _s11SearchStateV6SearchV4KindOMa();
  v44 = (*(*(v47 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v43);
  v48 = (v16 - v44);
  v50 = v1;
  v46 = _s11SearchStateV6SearchVMa();
  sub_1B09AEC3C((v45 + *(v46 + 24)), v48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B074BA2C(v48, v42);
    v54 = v42;
    v22 = *v45;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3440, &qword_1B0EA1DD0);
    v20 = sub_1B0E46A48();
    v18 = v11 + *(v19 + 48);
    sub_1B08A6A60(v45 + 1, v11);
    sub_1B03D08AC(v42, v18);
    v12 = v20;
    sub_1B0394964();
    v21 = v12;
    sub_1B0451F2C();
    v23 = sub_1B0E445D8();
    v26 = static SearchRequest.fetchMessages(id:messages:)(v22);
    v24 = v13;
    v25 = v14;

    sub_1B09AFB1C(v24, v25);
    LODWORD(v51) = v26;
    v52 = v24;
    v53 = v25;
    sub_1B03D09B8(v42);
    v37 = v26;
    v38 = v24;
    v39 = v25;
  }

  else
  {
    v33 = *v48;
    v49 = v33;
    v31 = *v45;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3448, &qword_1B0EA1DD8);
    v28 = sub_1B0E46A48();
    v27 = v2;
    sub_1B08A6A60(v45 + 1, v2);
    v3 = sub_1B09ADF40(*(v45 + *(v46 + 28)), *(v45 + *(v46 + 28) + 8), *(v45 + *(v46 + 28) + 16));
    v4 = v27;
    v5 = v3;
    v6 = v28;
    *(v27 + 16) = v5;
    *(v4 + 24) = v7;
    *(v4 + 32) = v8 & 1;
    sub_1B0394964();
    v30 = v6;
    sub_1B0451F2C();
    v32 = sub_1B0E445D8();
    sub_1B09AE83C(v33);
    v34 = SearchRequest.init(id:mailboxes:predicate:)(v31, v32, v33);
    v35 = v9;
    v36 = v10;
    sub_1B09AFB1C(v9, v10);
    LODWORD(v51) = v34;
    v52 = v35;
    v53 = v36;
    sub_1B09AEA14(v33);
    v37 = v34;
    v38 = v35;
    v39 = v36;
  }

  v16[1] = v39;
  v16[0] = v38;
  v17 = v37;
  sub_1B09AF510(v45);
  sub_1B09AFB6C(&v51);
  return v17;
}

void *sub_1B09ADF40(uint64_t a1, uint64_t a2, char a3)
{
  *&v23 = a1;
  *(&v23 + 1) = a2;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  if (a3)
  {
    if (a3 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
      v7 = sub_1B0E46A48();
      *v8 = v23;
      sub_1B0394964();
      v28.value = *(&v23 + 1);
      v28.is_nil = 0;
      v32 = SearchRequest.RangesToExclude.init(ranges:skipForMessageCount:)(v7, v28);
      rawValue = v32.ranges._rawValue;
      value = v32.skipForMessageCount.value;
      is_nil = v32.skipForMessageCount.is_nil;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v24 = rawValue;
      v25 = value;
      v26 = is_nil;
      v22 = rawValue;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
      v3 = sub_1B0E46A48();
      v4.value = 0;
      if (v23 == 0)
      {
        v4.is_nil = 1;
        v29 = SearchRequest.RangesToExclude.init(ranges:skipForMessageCount:)(v3, v4);
        skipForMessageCount_8 = v29.ranges._rawValue;
        v20 = v29.skipForMessageCount.value;
        v21 = v29.skipForMessageCount.is_nil;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v24 = skipForMessageCount_8;
        v25 = v20;
        v26 = v21;
        v22 = skipForMessageCount_8;
      }

      else
      {
        v4.is_nil = 0;
        v30 = SearchRequest.RangesToExclude.init(ranges:skipForMessageCount:)(v3, v4);
        v16 = v30.ranges._rawValue;
        v17 = v30.skipForMessageCount.value;
        v18 = v30.skipForMessageCount.is_nil;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v24 = v16;
        v25 = v17;
        v26 = v18;
        v22 = v16;
      }
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
    v5 = sub_1B0E46A48();
    *v6 = v23;
    sub_1B0394964();
    v27.value = 0;
    v27.is_nil = 1;
    v31 = SearchRequest.RangesToExclude.init(ranges:skipForMessageCount:)(v5, v27);
    v13 = v31.ranges._rawValue;
    v14 = v31.skipForMessageCount.value;
    v15 = v31.skipForMessageCount.is_nil;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v24 = v13;
    v25 = v14;
    v26 = v15;
    v22 = v13;
  }

  sub_1B039E440(&v24);
  return v22;
}

uint64_t sub_1B09AE2B4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtCVC7Message18PersistenceAdaptor11SearchState7Results_uids;
  swift_beginAccess();
  sub_1B03D08AC(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1B09AE310(uint64_t a1)
{
  v8 = a1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v5 = &v4 - v4;
  sub_1B03D08AC(v2, &v4 - v4);
  v6 = v1 + OBJC_IVAR____TtCVC7Message18PersistenceAdaptor11SearchState7Results_uids;
  v7 = &v9;
  swift_beginAccess();
  sub_1B074F0FC(v5, v6);
  swift_endAccess();
  return sub_1B03D09B8(v8);
}

uint64_t sub_1B09AE3E0(uint64_t a1)
{
  v5 = a1;
  v8 = 0;
  v7 = 0;
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = &v3 - v3;
  v8 = MEMORY[0x1EEE9AC00](v5);
  v7 = v1;
  sub_1B03D08AC(v8, &v3 - v3);
  sub_1B074BA2C(v4, v1 + OBJC_IVAR____TtCVC7Message18PersistenceAdaptor11SearchState7Results_uids);
  sub_1B03D09B8(v5);
  return v6;
}

uint64_t sub_1B09AE4E0()
{
  v0 = *sub_1B09AE4A4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  return swift_deallocClassInstance();
}

id sub_1B09AE544()
{
  v9 = 0;
  v8 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v4 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v6 = &v3 - v4;
  v9 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
  v5 = sub_1B0E46A48();
  sub_1B041C1E8();
  MessageIdentifierSet.init(arrayLiteral:)(v5, &type metadata for UID);
  v7 = sub_1B09AC630(v6);
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E36D0, &unk_1B0EA1DA0);
  return sub_1B0A47D18(v7);
}

uint64_t sub_1B09AE650(uint64_t a1)
{
  v6 = a1;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v6);
  v8 = &v5 - v7;
  v1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v10 = MessageIdentifierSet.debugDescription.getter(v2);
  v9 = v3;
  sub_1B03D09B8(v8);
  return v10;
}

unint64_t sub_1B09AE74C()
{
  v2 = qword_1EB6DBDB8;
  if (!qword_1EB6DBDB8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBDB8);
    return WitnessTable;
  }

  return v2;
}

uint64_t _s11SearchStateV7ResultsCMa()
{
  v1 = qword_1EB6DBEC8;
  if (!qword_1EB6DBEC8)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

unint64_t sub_1B09AE83C(unint64_t result)
{
  v1 = result >> 60;
  if (v1 < 0xC)
  {
  }

  return result;
}

unint64_t sub_1B09AEA14(unint64_t result)
{
  v1 = result >> 60;
  if (v1 < 0xC)
  {
  }

  return result;
}

uint64_t _s11SearchStateV6SearchV4KindOMa()
{
  v1 = qword_1EB6DBEE8;
  if (!qword_1EB6DBEE8)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1B09AEC28()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return sub_1B09A5910(*(v0 + 16), *(v0 + 24));
}

unint64_t *sub_1B09AEC3C(unint64_t *a1, unint64_t *a2)
{
  _s11SearchStateV6SearchV4KindOMa();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v4 = *a1;
    sub_1B09AE83C(*a1);
    *a2 = v4;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_1B09AED10@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_1B07404E0(v3, a1);
}

uint64_t sub_1B09AED9C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return MEMORY[0x1E69E5920](a2);
  }

  else
  {
    return MEMORY[0x1E69E5920](a1);
  }
}

uint64_t _s11SearchStateV6SearchVMa()
{
  v1 = qword_1EB6DBED8;
  if (!qword_1EB6DBED8)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

unint64_t sub_1B09AEF10()
{
  v2 = qword_1EB6DB230;
  if (!qword_1EB6DB230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3430, &unk_1B0EA1DB8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB230);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B09AEF98(uint64_t a1)
{
  v8 = _s11SearchStateV6SearchVMa();
  if (!(*(*(v8 - 1) + 48))(a1, 1))
  {
    v1 = *(a1 + 8);

    v6 = (a1 + v8[6]);
    _s11SearchStateV6SearchV4KindOMa();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
      (*(*(v2 - 8) + 8))(v6);
    }

    else
    {
      sub_1B09AEA14(*v6);
    }

    v5 = a1 + v8[8];
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
    (*(*(v3 - 8) + 8))(v5);
    MEMORY[0x1E69E5920](*(a1 + v8[9]));
  }

  return a1;
}

uint64_t sub_1B09AF114(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  v10 = _s11SearchStateV6SearchVMa();
  v11 = v10[6];
  v13 = _s11SearchStateV6SearchV4KindOMa();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
    (*(*(v2 - 8) + 32))();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a2 + v11), (a1 + v11), *(*(v13 - 8) + 64));
  }

  v3 = a2 + v10[7];
  v4 = a1 + v10[7];
  *v3 = *v4;
  *(v3 + 16) = *(v4 + 16);
  v8 = a2 + v10[8];
  v7 = a1 + v10[8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v5 - 8) + 32))(v8, v7);
  result = a2;
  *(a2 + v10[9]) = *(a1 + v10[9]);
  return result;
}

uint64_t sub_1B09AF2FC(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v12 = *(a1 + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 8) = v12;
  *(a2 + 16) = *(a1 + 16);
  v14 = _s11SearchStateV6SearchVMa();
  v15 = v14[6];
  _s11SearchStateV6SearchV4KindOMa();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
    (*(*(v2 - 8) + 16))();
  }

  else
  {
    v11 = *(a1 + v15);
    sub_1B09AE83C(v11);
    *(a2 + v15) = v11;
  }

  swift_storeEnumTagMultiPayload();
  v3 = a2 + v14[7];
  v4 = a1 + v14[7];
  *v3 = *v4;
  *(v3 + 16) = *(v4 + 16);
  v8 = a2 + v14[8];
  v7 = a1 + v14[8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v5 - 8) + 16))(v8, v7);
  v9 = v14[9];
  v10 = *(a1 + v9);
  MEMORY[0x1E69E5928](v10);
  result = a2;
  *(a2 + v9) = v10;
  return result;
}

uint64_t sub_1B09AF510(uint64_t a1)
{
  v1 = *(a1 + 8);

  v6 = _s11SearchStateV6SearchVMa();
  v7 = v6[6];
  _s11SearchStateV6SearchV4KindOMa();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
    (*(*(v2 - 8) + 8))(a1 + v7);
  }

  else
  {
    sub_1B09AEA14(*(a1 + v7));
  }

  v5 = a1 + v6[8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v3 - 8) + 8))(v5);
  MEMORY[0x1E69E5920](*(a1 + v6[9]));
  return a1;
}

unint64_t sub_1B09AF658()
{
  v2 = qword_1EB6DB228;
  if (!qword_1EB6DB228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3430, &unk_1B0EA1DB8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB228);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B09AF738()
{
  v2 = qword_1EB6DB238;
  if (!qword_1EB6DB238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3430, &unk_1B0EA1DB8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB238);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B09AF7C0()
{
  v2 = qword_1EB6DB220;
  if (!qword_1EB6DB220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3430, &unk_1B0EA1DB8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB220);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B09AF848()
{
  v2 = qword_1EB6DCC60;
  if (!qword_1EB6DCC60)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DCC60);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B09AF8C0(const void *a1, void *a2)
{
  v6 = _s11SearchStateV6SearchV4KindOMa();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
    (*(*(v2 - 8) + 32))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v6 - 8) + 64));
  }

  return a2;
}

unint64_t *sub_1B09AF994(unint64_t *a1, unint64_t *a2)
{
  if (a2 != a1)
  {
    sub_1B09AFA80(a2);
    v4 = _s11SearchStateV6SearchV4KindOMa();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
      (*(*(v2 - 8) + 32))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v4 - 8) + 64));
    }
  }

  return a2;
}

unint64_t *sub_1B09AFA80(unint64_t *a1)
{
  _s11SearchStateV6SearchV4KindOMa();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
    sub_1B09AEA14(*a1);
  }

  return a1;
}

unint64_t sub_1B09AFB1C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 4) != 0)
  {
    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return sub_1B09AE83C(a2);
}

unint64_t sub_1B09AFBA0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 4) != 0)
  {
  }

  return sub_1B09AEA14(a2);
}

unint64_t sub_1B09AFC88()
{
  v4 = _s11SearchStateV6SearchV4KindOMa();
  if (v0 <= 0x3F)
  {
    v4 = sub_1B043B29C();
    if (v1 <= 0x3F)
    {
      v4 = sub_1B09AFDBC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v4;
}

unint64_t sub_1B09AFDBC()
{
  v2 = qword_1EB6DA590;
  if (!qword_1EB6DA590)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DA590);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B09AFE20()
{
  v2 = sub_1B09AFEB4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_1B09AFEB4()
{
  v4 = qword_1EB6DE250[0];
  if (!qword_1EB6DE250[0])
  {
    sub_1B041C1E8();
    v3 = type metadata accessor for MessageIdentifierSetNonEmpty();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, qword_1EB6DE250);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1B09AFF6C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return MEMORY[0x1E69E5928](a2);
  }

  else
  {
    return MEMORY[0x1E69E5928](a1);
  }
}

unint64_t *sub_1B09AFFC0(unint64_t *a1)
{
  _s11SearchStateV6SearchV4KindOMa();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
    sub_1B09AEA14(*a1);
  }

  v4 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3450, &qword_1B0EA1F68) + 48));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
    (*(*(v2 - 8) + 8))(v4);
  }

  else
  {
    sub_1B09AEA14(*v4);
  }

  return a1;
}

uint64_t sub_1B09B00F0(uint64_t a1)
{
  v1 = *(a1 + 8);

  v2 = *(a1 + 16);

  return a1;
}

uint64_t sub_1B09B014C(uint64_t a1)
{
  v17 = a1;
  v15 = sub_1B09C1DF8;
  v29 = 0;
  v28 = 0;
  v16 = 0;
  v25 = 0;
  v22 = sub_1B0E44468();
  v20 = *(v22 - 8);
  v21 = v22 - 8;
  v18 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v17);
  v23 = (&v8 - v18);
  v29 = v2;
  v28 = v1;

  v19 = *(v1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop);
  MEMORY[0x1E69E5928](v19);
  v3 = v20;
  *v23 = v19;
  v4 = *MEMORY[0x1E69E8020];
  (*(v3 + 104))();
  v24 = sub_1B0E44488();
  (*(v20 + 8))(v23, v22);
  result = v24;
  if ((v24 & 1) == 0)
  {
    goto LABEL_7;
  }

  v12 = &v27;
  swift_beginAccess();
  v13 = *(v14 + 72);
  result = swift_endAccess();
  if (v13)
  {
    return result;
  }

  v6 = v16;
  v26 = v17;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3460, &qword_1B0EA1F70);
  v7 = sub_1B039D36C();
  result = sub_1B039CA88(v15, 0, v9, &type metadata for OpaqueMailboxID, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v10);
  v11 = result;
  if (v6)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v8 = v11;
  v25 = v11;
  sub_1B039A040(v11);
}

uint64_t sub_1B09B03B8()
{
  swift_beginAccess();
  v1 = sub_1B07C0878();
  swift_endAccess();
  return v1;
}

uint64_t sub_1B09B0434()
{
  v26 = 0;
  v24 = 0;
  v22 = 0;
  v19 = sub_1B0E44468();
  v17 = *(v19 - 8);
  v18 = v19 - 8;
  v15 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19);
  v20 = (&v5 - v15);
  v26 = v0;

  v16 = *(v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop);
  MEMORY[0x1E69E5928](v16);
  v1 = v17;
  *v20 = v16;
  v2 = *MEMORY[0x1E69E8020];
  (*(v1 + 104))();
  v21 = sub_1B0E44488();
  (*(v17 + 8))(v20, v19);
  result = v21;
  if (v21)
  {

    v11 = (v14 + OBJC_IVAR____TtC7Message18PersistenceAdaptor__allLocalMailboxActions);
    v12 = &v25;
    swift_beginAccess();
    v13 = *v11;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_endAccess();
    if (v13)
    {
      v10 = v13;
      v22 = v13;
      return v13;
    }

    else
    {
      v8 = sub_1B0A076B8();
      v24 = v8;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v6 = (v14 + OBJC_IVAR____TtC7Message18PersistenceAdaptor__allLocalMailboxActions);
      v7 = &v23;
      swift_beginAccess();
      v4 = *v6;
      *v6 = v8;

      swift_endAccess();
      return v8;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B09B0668()
{
  v139 = sub_1B039BBE8;
  v140 = sub_1B0394C30;
  v141 = sub_1B0394C24;
  v142 = sub_1B039BA2C;
  v143 = sub_1B039BA88;
  v144 = sub_1B039BB94;
  v145 = sub_1B0394C24;
  v146 = sub_1B039BBA0;
  v147 = sub_1B039BC08;
  v148 = sub_1B0A188B4;
  v149 = sub_1B06D5270;
  v150 = sub_1B0398F5C;
  v151 = sub_1B0398F5C;
  v152 = sub_1B0399178;
  v153 = sub_1B0398F5C;
  v154 = sub_1B0398F5C;
  v155 = sub_1B039BA94;
  v156 = sub_1B0398F5C;
  v157 = sub_1B0398F5C;
  v158 = sub_1B0399178;
  v159 = sub_1B0398F5C;
  v160 = sub_1B0398F5C;
  v161 = sub_1B03991EC;
  v162 = sub_1B0398F5C;
  v163 = sub_1B0398F5C;
  v164 = sub_1B06D527C;
  v195 = 0;
  v193 = 0;
  v165 = 0;
  v184 = 0;
  v171 = 0;
  v166 = sub_1B0E439A8();
  v167 = *(v166 - 8);
  v168 = v166 - 8;
  v169 = (*(v167 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v170 = v67 - v169;
  v172 = _s6LoggerVMa();
  v173 = (*(*(v172 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v171);
  v174 = v67 - v173;
  v175 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v176 = v67 - v175;
  v181 = sub_1B0E44468();
  v179 = *(v181 - 8);
  v180 = v181 - 8;
  v177 = (*(v179 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v181);
  v182 = (v67 - v177);
  v195 = v0;

  v178 = *(v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop);
  MEMORY[0x1E69E5928](v178);
  v3 = v179;
  *v182 = v178;
  v4 = *MEMORY[0x1E69E8020];
  (*(v3 + 104))();
  v183 = sub_1B0E44488();
  (*(v179 + 8))(v182, v181);
  result = v183;
  if (v183)
  {

    v135 = (v138 + OBJC_IVAR____TtC7Message18PersistenceAdaptor__allLocalMessageActions);
    v136 = &v194;
    swift_beginAccess();
    v137 = *v135;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_endAccess();
    if (v137)
    {
      v134 = v137;
      v184 = v137;
      return v137;
    }

    v131 = *(v138 + 112);
    MEMORY[0x1E69E5928](v131);
    v132 = [v131 messageActionsAfterActionID_];
    MEMORY[0x1E69E5920](v131);
    if (v132)
    {
      v130 = v132;
      v127 = v132;
      sub_1B0A07720();
      v128 = sub_1B0E451B8();
      MEMORY[0x1E69E5920](v127);
      v129 = v128;
    }

    else
    {
      v129 = 0;
    }

    v126 = v129;
    if (!v129)
    {
      v67[1] = 0;
      sub_1B0A07720();
      return sub_1B0E46A48();
    }

    v125 = v126;
    v124 = v126;
    v193 = v126;
    if (sub_1B0A00DA4())
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v118 = (v138 + OBJC_IVAR____TtC7Message18PersistenceAdaptor__allLocalMessageActions);
      v119 = &v186;
      v120 = 33;
      v121 = 0;
      swift_beginAccess();
      v6 = *v118;
      *v118 = v124;

      swift_endAccess();
      v122 = (v138 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_actionFetchCount);
      v123 = &v185;
      swift_beginAccess();
      *v122 = 0;
      swift_endAccess();
      return v124;
    }

    v116 = (v138 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_actionFetchCount);
    result = swift_beginAccess();
    v7 = __CFADD__(*v116, 1);
    v117 = *v116 + 1;
    v8 = v7;
    if ((v8 & 1) == 0)
    {
      *v116 = v117;
      swift_endAccess();
      v113 = (v138 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_actionFetchCount);
      v114 = &v192;
      swift_beginAccess();
      v115 = *v113;
      swift_endAccess();
      if (!(v115 % 0xA))
      {
        v9 = v170;
        v76 = &unk_1EB737000;
        sub_1B0394784(v138 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v176);
        (*(v167 + 16))(v9, v176, v166);
        sub_1B039480C(v176);

        sub_1B0394784(v138 + v76[314], v174);
        v10 = (v174 + *(v172 + 20));
        v78 = *v10;
        v79 = *(v10 + 1);
        sub_1B039480C(v174);

        v77 = 24;
        v91 = 7;
        v11 = swift_allocObject();
        v12 = v79;
        v82 = v11;
        *(v11 + 16) = v78;
        *(v11 + 20) = v12;
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v13 = swift_allocObject();
        v14 = v79;
        v80 = v13;
        *(v13 + 16) = v78;
        *(v13 + 20) = v14;

        v90 = 32;
        v15 = swift_allocObject();
        v16 = v80;
        v87 = v15;
        *(v15 + 16) = v139;
        *(v15 + 24) = v16;
        sub_1B0394868();
        sub_1B0394868();

        v111 = sub_1B0E43988();
        v112 = sub_1B0E45908();
        v89 = 17;
        v93 = swift_allocObject();
        v84 = 16;
        *(v93 + 16) = 16;
        v94 = swift_allocObject();
        v86 = 4;
        *(v94 + 16) = 4;
        v17 = swift_allocObject();
        v81 = v17;
        *(v17 + 16) = v140;
        *(v17 + 24) = 0;
        v18 = swift_allocObject();
        v19 = v81;
        v95 = v18;
        *(v18 + 16) = v141;
        *(v18 + 24) = v19;
        v96 = swift_allocObject();
        *(v96 + 16) = 0;
        v97 = swift_allocObject();
        *(v97 + 16) = 1;
        v20 = swift_allocObject();
        v21 = v82;
        v83 = v20;
        *(v20 + 16) = v142;
        *(v20 + 24) = v21;
        v22 = swift_allocObject();
        v23 = v83;
        v98 = v22;
        *(v22 + 16) = v143;
        *(v22 + 24) = v23;
        v99 = swift_allocObject();
        *(v99 + 16) = v84;
        v100 = swift_allocObject();
        *(v100 + 16) = v86;
        v24 = swift_allocObject();
        v85 = v24;
        *(v24 + 16) = v144;
        *(v24 + 24) = 0;
        v25 = swift_allocObject();
        v26 = v85;
        v101 = v25;
        *(v25 + 16) = v145;
        *(v25 + 24) = v26;
        v102 = swift_allocObject();
        *(v102 + 16) = 0;
        v103 = swift_allocObject();
        *(v103 + 16) = v86;
        v27 = swift_allocObject();
        v28 = v87;
        v88 = v27;
        *(v27 + 16) = v146;
        *(v27 + 24) = v28;
        v29 = swift_allocObject();
        v30 = v88;
        v104 = v29;
        *(v29 + 16) = v147;
        *(v29 + 24) = v30;
        v105 = swift_allocObject();
        *(v105 + 16) = 0;
        v106 = swift_allocObject();
        *(v106 + 16) = 8;
        v31 = swift_allocObject();
        v32 = v138;
        v92 = v31;
        *(v31 + 16) = v148;
        *(v31 + 24) = v32;
        v33 = swift_allocObject();
        v34 = v92;
        v108 = v33;
        *(v33 + 16) = v149;
        *(v33 + 24) = v34;
        v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v107 = sub_1B0E46A48();
        v109 = v35;

        v36 = v93;
        v37 = v109;
        *v109 = v150;
        v37[1] = v36;

        v38 = v94;
        v39 = v109;
        v109[2] = v151;
        v39[3] = v38;

        v40 = v95;
        v41 = v109;
        v109[4] = v152;
        v41[5] = v40;

        v42 = v96;
        v43 = v109;
        v109[6] = v153;
        v43[7] = v42;

        v44 = v97;
        v45 = v109;
        v109[8] = v154;
        v45[9] = v44;

        v46 = v98;
        v47 = v109;
        v109[10] = v155;
        v47[11] = v46;

        v48 = v99;
        v49 = v109;
        v109[12] = v156;
        v49[13] = v48;

        v50 = v100;
        v51 = v109;
        v109[14] = v157;
        v51[15] = v50;

        v52 = v101;
        v53 = v109;
        v109[16] = v158;
        v53[17] = v52;

        v54 = v102;
        v55 = v109;
        v109[18] = v159;
        v55[19] = v54;

        v56 = v103;
        v57 = v109;
        v109[20] = v160;
        v57[21] = v56;

        v58 = v104;
        v59 = v109;
        v109[22] = v161;
        v59[23] = v58;

        v60 = v105;
        v61 = v109;
        v109[24] = v162;
        v61[25] = v60;

        v62 = v106;
        v63 = v109;
        v109[26] = v163;
        v63[27] = v62;

        v64 = v108;
        v65 = v109;
        v109[28] = v164;
        v65[29] = v64;
        sub_1B0394964();

        if (os_log_type_enabled(v111, v112))
        {
          v66 = v165;
          v69 = sub_1B0E45D78();
          v67[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v68 = 0;
          v70 = sub_1B03949A8(0);
          v71 = sub_1B03949A8(v68);
          v72 = &v191;
          v191 = v69;
          v73 = &v190;
          v190 = v70;
          v74 = &v189;
          v189 = v71;
          sub_1B0394A48(0, &v191);
          sub_1B0394A48(5, v72);
          v187 = v150;
          v188 = v93;
          sub_1B03949FC(&v187, v72, v73, v74);
          v75 = v66;
          if (v66)
          {

            __break(1u);
          }

          else
          {
            v187 = v151;
            v188 = v94;
            sub_1B03949FC(&v187, &v191, &v190, &v189);
            v67[15] = 0;
            v187 = v152;
            v188 = v95;
            sub_1B03949FC(&v187, &v191, &v190, &v189);
            v67[14] = 0;
            v187 = v153;
            v188 = v96;
            sub_1B03949FC(&v187, &v191, &v190, &v189);
            v67[13] = 0;
            v187 = v154;
            v188 = v97;
            sub_1B03949FC(&v187, &v191, &v190, &v189);
            v67[12] = 0;
            v187 = v155;
            v188 = v98;
            sub_1B03949FC(&v187, &v191, &v190, &v189);
            v67[11] = 0;
            v187 = v156;
            v188 = v99;
            sub_1B03949FC(&v187, &v191, &v190, &v189);
            v67[10] = 0;
            v187 = v157;
            v188 = v100;
            sub_1B03949FC(&v187, &v191, &v190, &v189);
            v67[9] = 0;
            v187 = v158;
            v188 = v101;
            sub_1B03949FC(&v187, &v191, &v190, &v189);
            v67[8] = 0;
            v187 = v159;
            v188 = v102;
            sub_1B03949FC(&v187, &v191, &v190, &v189);
            v67[7] = 0;
            v187 = v160;
            v188 = v103;
            sub_1B03949FC(&v187, &v191, &v190, &v189);
            v67[6] = 0;
            v187 = v161;
            v188 = v104;
            sub_1B03949FC(&v187, &v191, &v190, &v189);
            v67[5] = 0;
            v187 = v162;
            v188 = v105;
            sub_1B03949FC(&v187, &v191, &v190, &v189);
            v67[4] = 0;
            v187 = v163;
            v188 = v106;
            sub_1B03949FC(&v187, &v191, &v190, &v189);
            v67[3] = 0;
            v187 = v164;
            v188 = v108;
            sub_1B03949FC(&v187, &v191, &v190, &v189);
            _os_log_impl(&dword_1B0389000, v111, v112, "[%.*hhx-%.*X] Re-fetched actions without cache %lu times.", v69, 0x21u);
            v67[2] = 0;
            sub_1B03998A8(v70);
            sub_1B03998A8(v71);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v111);
        (*(v167 + 8))(v170, v166);
      }

      return v124;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}