uint64_t type metadata accessor for FMIPDevice()
{
  result = qword_281515D98;
  if (!qword_281515D98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A67742C()
{
  sub_24A677858(319, &qword_27EF5D8F0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_24A677858(319, &qword_27EF5EAF8, &type metadata for FMIPSafeLocation, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_24A677858(319, &qword_27EF5F308, &type metadata for FMIPAudioChannel, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_24A6778A8();
        if (v3 <= 0x3F)
        {
          sub_24A677858(319, &qword_27EF5EAE8, &type metadata for FMIPLocation, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_24A677858(319, &qword_27EF5EAE0, &type metadata for FMIPAddress, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_24A67791C(319, qword_281514E68, type metadata accessor for FMIPPlaySoundMetadata);
              if (v6 <= 0x3F)
              {
                sub_24A67791C(319, qword_281514D50, type metadata accessor for FMIPDeviceLostModeMetadata);
                if (v7 <= 0x3F)
                {
                  sub_24A67791C(319, qword_281515308, type metadata accessor for FMIPLockMetadata);
                  if (v8 <= 0x3F)
                  {
                    sub_24A67791C(319, qword_281515260, type metadata accessor for FMIPEraseMetadata);
                    if (v9 <= 0x3F)
                    {
                      sub_24A67791C(319, qword_281514410, type metadata accessor for FMIPItemGroup);
                      if (v10 <= 0x3F)
                      {
                        sub_24A67791C(319, &qword_281515DB8, MEMORY[0x277CC9578]);
                        if (v11 <= 0x3F)
                        {
                          swift_cvw_initStructMetadataWithLayoutString();
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_24A6777B8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_24A677808(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_24A677858(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_24A6778A8()
{
  if (!qword_27EF5F310)
  {
    sub_24A6CCDC0(&qword_27EF5F278, &qword_24A83DF18);
    v0 = sub_24A82D634();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF5F310);
    }
  }
}

void sub_24A67791C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24A82D634();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for FMIPPlaySoundMetadata()
{
  result = qword_281514EA8;
  if (!qword_281514EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A6779BC()
{
  sub_24A82CA34();
  if (v0 <= 0x3F)
  {
    sub_24A677A54();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24A677A54()
{
  if (!qword_27EF5D8F0)
  {
    v0 = sub_24A82D634();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF5D8F0);
    }
  }
}

uint64_t type metadata accessor for FMIPDeviceLostModeMetadata()
{
  result = qword_281514DA0;
  if (!qword_281514DA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A677AF0()
{
  result = sub_24A82CA34();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for FMIPLockMetadata()
{
  result = qword_281515338;
  if (!qword_281515338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A677BD8()
{
  result = sub_24A82CA34();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for FMIPEraseMetadata()
{
  result = qword_2815152A0;
  if (!qword_2815152A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A677CA0()
{
  result = sub_24A82CA34();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for FMIPItemGroup()
{
  result = qword_281514460;
  if (!qword_281514460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A677D7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_24A677DE0()
{
  sub_24A677D7C(319, &qword_27EF5DCB0, type metadata accessor for FMIPItem, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_24A6788BC(319, &qword_27EF5DCB8, &qword_27EF5DAA8, &qword_24A835338, &qword_27EF5DCC0);
    if (v1 <= 0x3F)
    {
      sub_24A6788BC(319, &qword_27EF5DCC8, &qword_27EF5DA28, &qword_24A8415A0, &qword_27EF5DCA8);
      if (v2 <= 0x3F)
      {
        sub_24A678AB8();
        if (v3 <= 0x3F)
        {
          sub_24A677D7C(319, qword_281513DF8, type metadata accessor for FMIPItemLostModeMetadata, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_24A677D7C(319, &qword_27EF5DCD8, MEMORY[0x277CC95F0], MEMORY[0x277D83940]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t type metadata accessor for FMIPItem()
{
  result = qword_281512DD0;
  if (!qword_281512DD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A678028()
{
  type metadata accessor for FMIPItemUpdateContext(319);
  if (v0 <= 0x3F)
  {
    sub_24A6784A8(319, &qword_27EF5EAE0, &type metadata for FMIPAddress, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_24A6784A8(319, &qword_27EF5EAE8, &type metadata for FMIPLocation, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_24A6784A8(319, &qword_27EF5D8F0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_24A6784F8();
          if (v4 <= 0x3F)
          {
            sub_24A6784A8(319, &qword_27EF5EAF0, &type metadata for FMIPPartInfo, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_24A6784A8(319, &qword_27EF5EAF8, &type metadata for FMIPSafeLocation, MEMORY[0x277D83940]);
              if (v6 <= 0x3F)
              {
                type metadata accessor for FMIPProductType();
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_24A67826C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A6782A4()
{
  result = type metadata accessor for FMIPItemUpdateType(319);
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_24A82CA34();
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

void sub_24A678390()
{
  sub_24A678404();
  if (v0 <= 0x3F)
  {
    sub_24A678478();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_24A678404()
{
  if (!qword_27EF5ECE0)
  {
    sub_24A82CAA4();
    sub_24A82CA34();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27EF5ECE0);
    }
  }
}

ValueMetadata *sub_24A678478()
{
  result = qword_27EF5ECE8;
  if (!qword_27EF5ECE8)
  {
    result = &type metadata for FMIPLocationType;
    atomic_store(&type metadata for FMIPLocationType, &qword_27EF5ECE8);
  }

  return result;
}

void sub_24A6784A8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_24A6784F8()
{
  if (!qword_281513DF8[0])
  {
    type metadata accessor for FMIPItemLostModeMetadata();
    v0 = sub_24A82D634();
    if (!v1)
    {
      atomic_store(v0, qword_281513DF8);
    }
  }
}

uint64_t type metadata accessor for FMIPItemLostModeMetadata()
{
  result = qword_281513E30;
  if (!qword_281513E30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A67859C()
{
  result = sub_24A82CA34();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_24A678618()
{
  sub_24A679334(319, &qword_27EF5D3E0, sub_24A6786D8);
  if (v0 <= 0x3F)
  {
    sub_24A678780();
    if (v1 <= 0x3F)
    {
      sub_24A679334(319, &qword_27EF5D3F8, sub_24A678728);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_24A6786D8()
{
  if (!qword_27EF5D3E8)
  {
    v0 = sub_24A82D634();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF5D3E8);
    }
  }
}

void sub_24A678728()
{
  if (!qword_281513098[0])
  {
    type metadata accessor for FMIPHawkeyeProductInformation();
    v0 = sub_24A82D634();
    if (!v1)
    {
      atomic_store(v0, qword_281513098);
    }
  }
}

ValueMetadata *sub_24A678780()
{
  result = qword_27EF5D3F0;
  if (!qword_27EF5D3F0)
  {
    result = &type metadata for FMIPZeusProductInformation;
    atomic_store(&type metadata for FMIPZeusProductInformation, &qword_27EF5D3F0);
  }

  return result;
}

uint64_t type metadata accessor for FMIPHawkeyeProductInformation()
{
  result = qword_2815130F8;
  if (!qword_2815130F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A6787FC()
{
  sub_24A677A54();
  if (v0 <= 0x3F)
  {
    sub_24A82C8B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24A6788BC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_24A6CCDC0(a3, a4);
    sub_24A678A64(a5, a3, a4);
    v9 = sub_24A82D434();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_24A67898C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24A6789D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24A678A1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24A678A64(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_24A6CCDC0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_24A678AB8()
{
  if (!qword_27EF5DCD0)
  {
    type metadata accessor for FMIPItemPairingState();
    v0 = sub_24A82CF24();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF5DCD0);
    }
  }
}

uint64_t type metadata accessor for FMIPItemPairingState()
{
  result = qword_27EF5DBB0;
  if (!qword_27EF5DBB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A678B6C()
{
  sub_24A678BC4();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_24A678BC4()
{
  if (!qword_27EF5DBC0)
  {
    v0 = sub_24A82CAA4();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF5DBC0);
    }
  }
}

uint64_t type metadata accessor for FMIPUnknownItem()
{
  result = qword_27EF5E5E0;
  if (!qword_27EF5E5E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A678C58()
{
  sub_24A82CAA4();
  if (v0 <= 0x3F)
  {
    sub_24A6777B8(319, &qword_27EF5D8F0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_24A6777B8(319, &qword_27EF5E5F0, &type metadata for FMIPLocation, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for FMIPProductType();
        if (v3 <= 0x3F)
        {
          sub_24A678DC4();
          if (v4 <= 0x3F)
          {
            sub_24A679108();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_24A678DC4()
{
  if (!qword_27EF5E5F8)
  {
    type metadata accessor for FMIPUnknownItemUTMetadata();
    v0 = sub_24A82D634();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF5E5F8);
    }
  }
}

uint64_t type metadata accessor for FMIPUnknownItemUTMetadata()
{
  result = qword_27EF5D8E0;
  if (!qword_27EF5D8E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A678E68()
{
  sub_24A677A54();
  if (v0 <= 0x3F)
  {
    sub_24A678EEC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24A678EEC()
{
  if (!qword_27EF5D8F8)
  {
    type metadata accessor for FMIPUnknownItemProductMetadata();
    v0 = sub_24A82D634();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF5D8F8);
    }
  }
}

uint64_t type metadata accessor for FMIPUnknownItemProductMetadata()
{
  result = qword_27EF5ECA0;
  if (!qword_27EF5ECA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A678F90()
{
  sub_24A677808(319, &qword_27EF5D8F0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_24A677808(319, &qword_27EF5ECB0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_24A677808(319, &qword_27EF5ECB8, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_24A6790B0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24A6790B0()
{
  if (!qword_281514678)
  {
    sub_24A82C8B4();
    v0 = sub_24A82D634();
    if (!v1)
    {
      atomic_store(v0, &qword_281514678);
    }
  }
}

void sub_24A679108()
{
  if (!qword_27EF5E600)
  {
    sub_24A679170(255, &qword_27EF5DF78, 0x277D496E0);
    v0 = sub_24A82D634();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF5E600);
    }
  }
}

uint64_t sub_24A679170(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t type metadata accessor for FMIPSeparationLocation()
{
  result = qword_27EF5FA40;
  if (!qword_27EF5FA40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A679204()
{
  sub_24A679298();
  if (v0 <= 0x3F)
  {
    sub_24A679380();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24A679298()
{
  if (!qword_27EF5EAE0)
  {
    v0 = sub_24A82D634();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF5EAE0);
    }
  }
}

uint64_t type metadata accessor for FMIPProductType()
{
  result = qword_281514308;
  if (!qword_281514308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A679334(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24A679380()
{
  if (!qword_281515DB8)
  {
    sub_24A82CA34();
    v0 = sub_24A82D634();
    if (!v1)
    {
      atomic_store(v0, &qword_281515DB8);
    }
  }
}

double sub_24A6793F8()
{
  *&result = 6;
  xmmword_27EF5CB68 = xmmword_24A82FD70;
  return result;
}

uint64_t sub_24A6794FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24A679544(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_24A6CCDC0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24A67959C()
{
  result = qword_27EF5D458;
  if (!qword_27EF5D458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D458);
  }

  return result;
}

unint64_t sub_24A6795F0(uint64_t a1)
{
  *(a1 + 8) = sub_24A679620();
  result = sub_24A679674();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_24A679620()
{
  result = qword_27EF5F9F0;
  if (!qword_27EF5F9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F9F0);
  }

  return result;
}

unint64_t sub_24A679674()
{
  result = qword_27EF5F9F8;
  if (!qword_27EF5F9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F9F8);
  }

  return result;
}

unint64_t sub_24A6796CC()
{
  result = qword_27EF5FA00;
  if (!qword_27EF5FA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5FA00);
  }

  return result;
}

uint64_t sub_24A679720()
{
  v0 = sub_24A82CDC4();
  sub_24A67976C(v0, qword_281518F88);
  sub_24A6797D0(v0, qword_281518F88);
  return sub_24A82CDB4();
}

uint64_t *sub_24A67976C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_24A6797D0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t FMIPItemImageCache.init(converter:)()
{
  v0 = sub_24A6794F8();

  return v0;
}

unint64_t sub_24A67988C()
{
  result = qword_27EF5F550;
  if (!qword_27EF5F550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F550);
  }

  return result;
}

unint64_t sub_24A6798E0(uint64_t a1)
{
  *(a1 + 8) = sub_24A679910();
  result = sub_24A679964();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_24A679910()
{
  result = qword_27EF5D9F0;
  if (!qword_27EF5D9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D9F0);
  }

  return result;
}

unint64_t sub_24A679964()
{
  result = qword_27EF5D9F8;
  if (!qword_27EF5D9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D9F8);
  }

  return result;
}

unint64_t sub_24A6799BC()
{
  result = qword_27EF5DA00;
  if (!qword_27EF5DA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DA00);
  }

  return result;
}

uint64_t type metadata accessor for FMIPManagerConfiguration()
{
  result = qword_281513D80;
  if (!qword_281513D80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A679A5C()
{
  result = sub_24A82CAE4();
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

uint64_t sub_24A679B24()
{
  if (qword_281513588 != -1)
  {
    swift_once();
  }

  v1 = *(qword_281518F48 + 16);
  v2 = *(qword_281518F48 + 24);
  swift_bridgeObjectRetain_n();

  MEMORY[0x24C21C9E0](0x7365686361432FLL, 0xE700000000000000);

  MEMORY[0x24C21C9E0](0xD00000000000001BLL, 0x800000024A8474B0);

  qword_281518F70 = v1;
  *algn_281518F78 = v2;
  return result;
}

uint64_t sub_24A679C18()
{
  type metadata accessor for FMSystemDirectoryUtilities();
  v0 = swift_allocObject();
  v1 = swift_slowAlloc();
  started = sysdir_start_search_path_enumeration_private();
  MEMORY[0x24C21E340](started, v1);
  v3 = sub_24A82D0E4();
  v5 = v4;
  result = MEMORY[0x24C21E1D0](v1, -1, -1);
  *(v0 + 16) = v3;
  *(v0 + 24) = v5;
  qword_281518F48 = v0;
  return result;
}

uint64_t FMIPManagerConfiguration.preferredLocale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_preferredLocale;
  v4 = sub_24A82CAE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FMIPManagerConfiguration.__allocating_init(enabledSubsystems:preferredLocale:authenticationUIProvider:snapshotHandlers:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a4;
  v7 = sub_24A82CAE4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *a1;
  (*(v8 + 16))(v11, a2, v7);
  if (qword_281513D90 != -1)
  {
    swift_once();
  }

  v12 = qword_281513D98;
  v13 = *(qword_281513D98 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_cacheDirectory);
  v14 = *(qword_281513D98 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_cacheDirectory + 8);
  v15 = *(v8 + 8);

  v15(a2, v7);
  v17 = *(v12 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_interactionControllerProvider);
  v16 = *(v12 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_interactionControllerProvider + 8);
  v18 = type metadata accessor for FMIPManagerConfiguration();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v21 = swift_allocObject();
  (*(v8 + 32))(v21 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_preferredLocale, v11, v7);
  v22 = (v21 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_cacheDirectory);
  *v22 = v13;
  v22[1] = v14;
  v23 = (v21 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_interactionControllerProvider);
  *v23 = v17;
  v23[1] = v16;
  v24 = v21 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_authenticationUIProvider;
  *(v24 + 32) = *(a3 + 32);
  v25 = *(a3 + 16);
  *v24 = *a3;
  *(v24 + 16) = v25;
  v26 = v29;
  *(v21 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_enabledSubsystems) = v28;
  *(v21 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_snapshotHandlers) = v26;

  return v21;
}

uint64_t type metadata accessor for FMIPManager()
{
  result = qword_281515C58;
  if (!qword_281515C58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A679F94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24A679FDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24A67A024(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24A67A06C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24A67A0B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24A67A0FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24A67A144()
{
  v0 = sub_24A67CBF4(&unk_285DBE488);
  result = swift_arrayDestroy();
  qword_27EF5DEE8 = v0;
  return result;
}

uint64_t sub_24A67A190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_24A82DCC4();
  sub_24A82D094();
  v7 = sub_24A82DD24();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_24A82DC04() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void sub_24A67A288()
{
  v1 = v0;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A82CDC4();
  sub_24A6797D0(v2, qword_281518F88);
  v3 = sub_24A82CD94();
  v4 = sub_24A82D504();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24A675000, v3, v4, "FMIPGarbageCollector: verifyingAccount...", v5, 2u);
    MEMORY[0x24C21E1D0](v5, -1, -1);
  }

  v6 = *(v1 + 16);
  v7 = [v6 aa_primaryAppleAccount];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 aa_personID];
    if (v9)
    {
      v10 = v9;
      v11 = sub_24A82CFC4();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    v60 = v6;
    v61 = v1;
    if (qword_27EF5CC20 != -1)
    {
      swift_once();
    }

    v17 = qword_27EF78F40;
    ObjectType = swift_getObjectType();
    v59 = v17;
    v62 = (*(v17 + 8))(ObjectType, v17);
    v19 = v18;
    v20 = v8;
    v21 = sub_24A82CD94();
    v22 = sub_24A82D504();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = v11;
      v25 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = v20;
      *v25 = v8;
      v26 = v20;
      _os_log_impl(&dword_24A675000, v21, v22, "FMIPGarbageCollector: account %@", v23, 0xCu);
      sub_24A67CDA4(v25);
      v27 = v25;
      v11 = v24;
      MEMORY[0x24C21E1D0](v27, -1, -1);
      MEMORY[0x24C21E1D0](v23, -1, -1);
    }

    v63 = v20;

    v28 = sub_24A82CD94();
    v29 = sub_24A82D504();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v64 = v57;
      *v30 = 136315394;

      sub_24A6BBA94(&qword_27EF5D248, &unk_24A834970);
      v31 = sub_24A82D024();
      v33 = sub_24A68761C(v31, v32, &v64);

      *(v30 + 4) = v33;
      *(v30 + 12) = 2080;

      v34 = sub_24A82D024();
      v36 = sub_24A68761C(v34, v35, &v64);

      *(v30 + 14) = v36;
      _os_log_impl(&dword_24A675000, v28, v29, "FMIPGarbageCollector: verifyingAccount new: %s previous: %s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C21E1D0](v57, -1, -1);
      MEMORY[0x24C21E1D0](v30, -1, -1);
    }

    if (v13)
    {
      if (!v19)
      {
        goto LABEL_28;
      }

      if (v11 == v62 && v13 == v19)
      {

        goto LABEL_31;
      }

      v37 = sub_24A82DC04();

      if ((v37 & 1) == 0)
      {
LABEL_28:
        v38 = sub_24A82CD94();
        v39 = sub_24A82D504();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 0;
          _os_log_impl(&dword_24A675000, v38, v39, "FMIPGarbageCollector: purging cache because person id are not matching.", v40, 2u);
          MEMORY[0x24C21E1D0](v40, -1, -1);
        }

        sub_24A78EDD0();
      }
    }

    else if (v19)
    {

      goto LABEL_28;
    }

LABEL_31:
    v41 = v63;
    v42 = [v63 aa_fmipAccount];
    v43 = [v60 credentialForAccount_];
    v44 = v43;
    if (v43 && (v45 = [v43 credentialItemForKey_]) != 0)
    {

      if (v42 && (v46 = [v42 identifier]) != 0)
      {
        v47 = v46;
        v48 = sub_24A82CFC4();
        v50 = v49;

        v41 = v63;
      }

      else
      {
        v48 = 0;
        v50 = 0;
      }

      v56 = *(v61 + 40);
      *(v61 + 32) = v48;
      *(v61 + 40) = v50;

      (*(v59 + 16))(v11, v13, ObjectType);
    }

    else
    {

      v51 = sub_24A82CD94();
      v52 = sub_24A82D504();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_24A675000, v51, v52, "FMIPGarbageCollector: purging cache because the token is missing", v53, 2u);
        v54 = v53;
        v41 = v63;
        MEMORY[0x24C21E1D0](v54, -1, -1);
      }

      v55 = *(v61 + 40);
      *(v61 + 32) = 0;
      *(v61 + 40) = 0;

      sub_24A78EDD0();
    }

    return;
  }

  v14 = sub_24A82CD94();
  v15 = sub_24A82D4E4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_24A675000, v14, v15, "FMIPGarbageCollector: error retrieving primary account", v16, 2u);
    MEMORY[0x24C21E1D0](v16, -1, -1);
  }

  sub_24A78EDD0();
}

uint64_t sub_24A67A9AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24A67AA5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 50) = 0;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 51) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 51) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

double static FMIPBeaconSharingLimits.default.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_27EF5CB60 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&xmmword_27EF5CB68;
  *a1 = xmmword_27EF5CB68;
  return result;
}

uint64_t FMIPDeviceImageCache.init(converter:)()
{
  v0 = sub_24A6794F8();

  return v0;
}

void *sub_24A67ABB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v30 = a1;
  v31 = a2;
  v29 = *v2;
  v28 = sub_24A82D554();
  v4 = *(v28 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v28);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A82D534();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = sub_24A82CE54();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v2[2] = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  v27 = sub_24A67B054();
  sub_24A82CE44();
  v32 = MEMORY[0x277D84F90];
  sub_24A6794FC(&qword_2815146D0, MEMORY[0x277D85230]);
  sub_24A6BBA94(&unk_27EF5EF50, &unk_24A836510);
  sub_24A679544(&qword_2815146E0, &unk_27EF5EF50, &unk_24A836510);
  sub_24A82D6B4();
  (*(v4 + 104))(v7, *MEMORY[0x277D85260], v28);
  v2[3] = sub_24A82D594();
  v12 = v29;
  v13 = v29[10];
  v14 = v29[13];
  v15 = v29[11];
  v16 = *(swift_getAssociatedConformanceWitness() + 16);
  v3[4] = sub_24A82CEC4();
  v17 = v12[12];
  sub_24A6CCDC0(&qword_27EF5CF40, &unk_24A836A70);
  sub_24A82DD44();
  swift_getFunctionTypeMetadata1();
  sub_24A82D314();
  v3[5] = sub_24A82CEB4();
  v3[6] = sub_24A82CEB4();
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v18 = sub_24A82CDC4();
  sub_24A6797D0(v18, qword_281518F88);
  v19 = sub_24A82CD94();
  v20 = sub_24A82D504();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_24A675000, v19, v20, "FMImageCache: initialized", v21, 2u);
    MEMORY[0x24C21E1D0](v21, -1, -1);
  }

  v22 = v31;
  v3[7] = v30;
  v3[8] = v22;
  v23 = v3[2];

  [v23 setQualityOfService_];
  v24 = v3[2];
  v25 = sub_24A82CF94();

  [v24 setName_];

  [v3[2] setMaxConcurrentOperationCount_];
  return v3;
}

unint64_t sub_24A67B054()
{
  result = qword_2815146C0;
  if (!qword_2815146C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2815146C0);
  }

  return result;
}

uint64_t static FMIPManagerConfiguration.default.getter()
{
  if (qword_281513D90 != -1)
  {
    swift_once();
  }
}

uint64_t sub_24A67B0FC()
{
  v0 = sub_24A82CAE4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A82CAC4();
  if (qword_281514350 != -1)
  {
    swift_once();
  }

  v6 = qword_281518F70;
  v5 = *algn_281518F78;
  v7 = type metadata accessor for FMIPManagerConfiguration();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  (*(v1 + 32))(v10 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_preferredLocale, v4, v0);
  v11 = (v10 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_cacheDirectory);
  *v11 = v6;
  v11[1] = v5;
  v12 = (v10 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_interactionControllerProvider);
  *v12 = sub_24A695B98;
  v12[1] = 0;
  v13 = v10 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_authenticationUIProvider;
  *(v13 + 32) = 0;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v10 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_enabledSubsystems) = 3;
  *(v10 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_snapshotHandlers) = 0;
  qword_281513D98 = v10;
}

void sub_24A67B2AC()
{
  v0 = sub_24A82CAA4();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_24A67B484(319, &qword_281515DB8, MEMORY[0x277CC9578]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_24A67B484(319, qword_281515CC8, type metadata accessor for FMIPDevice);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_24A67B484(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24A82D634();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t FMIPManager.init(configuration:ownerSession:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v128 = a2;
  v130 = a1;
  v4 = sub_24A6BBA94(&qword_27EF5CF08, &qword_24A830D80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v127 = v118 - v6;
  v7 = sub_24A6BBA94(&qword_27EF5E930, &unk_24A8343F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v125 = v118 - v9;
  v122 = sub_24A82D554();
  v10 = *(v122 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v122);
  v13 = v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_24A82D534();
  v14 = *(*(v126 - 8) + 64);
  MEMORY[0x28223BE20](v126);
  v15 = sub_24A82CE54();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  sub_24A82CA94();
  *(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_siriDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v118[0] = OBJC_IVAR____TtC8FMIPCore11FMIPManager_refreshingController;
  *(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_refreshingController) = 0;
  v17 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataQueue;
  v121 = sub_24A679170(0, &qword_2815146C0, 0x277D85C78);
  sub_24A82CE34();
  sub_24A82D524();
  v129 = *MEMORY[0x277D85260];
  v123 = *(v10 + 104);
  v123(v13);
  v118[3] = v10 + 104;
  v18 = v13;
  v19 = sub_24A82D594();
  v124 = v17;
  *(v2 + v17) = v19;
  v120 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_unknownItemQueue;
  v119 = ".fmipcore.fmipmanager.data";
  sub_24A82CE34();
  *&v134 = MEMORY[0x277D84F90];
  v118[2] = sub_24A679FDC(&qword_2815146D0, MEMORY[0x277D85230]);
  v118[1] = sub_24A6BBA94(&unk_27EF5EF50, &unk_24A836510);
  sub_24A679544(&qword_2815146E0, &unk_27EF5EF50, &unk_24A836510);
  sub_24A82D6B4();
  v20 = v122;
  v21 = v123;
  (v123)(v18, v129, v122);
  *(v2 + v120) = sub_24A82D594();
  v120 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegateQueue;
  v119 = "nager.unknownItemQueue";
  sub_24A82CE34();
  *&v134 = MEMORY[0x277D84F90];
  sub_24A82D6B4();
  (v21)(v18, v129, v20);
  *(v2 + v120) = sub_24A82D594();
  v121 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_actionsController;
  *(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_actionsController) = 0;
  *(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_snapshotDevicesResponseReceived) = 0;
  v126 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_itemActionsController;
  *(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_itemActionsController) = 0;
  *(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_snapshotItemsResponseReceived) = 0;
  *(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_snapshotItemsLocatedResponseReceived) = 0;
  v22 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_stopRefreshTimestamp;
  v23 = sub_24A82CA34();
  (*(*(v23 - 8) + 56))(v3 + v22, 1, 1, v23);
  *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_isUpdatingSingleDevices) = 0;
  *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_isRefreshingItems) = 0;
  *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_isRefreshingDevices) = 0;
  *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_isUTAppAlertDisabled) = 0;
  v24 = [objc_opt_self() sharedInstance];
  v25 = [v24 isInternalBuild];

  v26 = 0;
  if (v25)
  {
    v27 = [objc_opt_self() standardUserDefaults];
    v28 = sub_24A82CF94();
    v26 = [v27 BOOLForKey_];
  }

  *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_useRealtimeForItems) = v26;
  v29 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_selectedDevice;
  v30 = type metadata accessor for FMIPDevice();
  (*(*(v30 - 8) + 56))(v3 + v29, 1, 1, v30);
  *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_itemCounts) = 0;
  *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_initializedSubsystems) = 0;
  v31 = v130;
  *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_configuration) = v130;
  v32 = objc_allocWithZone(MEMORY[0x277D49698]);

  v33 = [v32 init];
  *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_ownerSession) = v33;
  v34 = *(v31 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_snapshotHandlers);
  if (v34)
  {
    v35 = *(v34 + 64) != 0;
    if (*(v34 + 32))
    {
      v36 = 1;
      v129 = 1;
      goto LABEL_8;
    }
  }

  else
  {
    v35 = 0;
  }

  v36 = 0;
  v129 = v35;
LABEL_8:
  v37 = qword_27EF5CBB8;
  v123 = v33;
  if (v37 != -1)
  {
    swift_once();
  }

  v38 = qword_27EF5DEE8;
  v39 = [objc_opt_self() mainBundle];
  v40 = [v39 bundleIdentifier];

  if (v40)
  {
    v41 = sub_24A82CFC4();
    v43 = v42;
  }

  else
  {
    v41 = 0;
    v43 = 0xE000000000000000;
  }

  v44 = sub_24A67A190(v41, v43, v38);

  v45 = v129;
  v46 = v129 ^ 1;
  *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_isDevicesSnapshotMode) = v36;
  *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_isItemsSnapshotMode) = v35;
  type metadata accessor for FMIPGarbageCollector();
  swift_allocObject();
  *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_garbageCollector) = sub_24A67CA04();
  v47 = v130;
  v48 = *(v130 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_cacheDirectory);
  v49 = *(v130 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_cacheDirectory + 8);
  v122 = OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_enabledSubsystems;
  *&v134 = *(v130 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_enabledSubsystems);
  v50 = OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_preferredLocale;
  v51 = sub_24A82CAE4();
  v52 = *(v51 - 8);
  v53 = v47 + v50;
  v54 = v125;
  (*(v52 + 16))(v125, v53, v51);
  (*(v52 + 56))(v54, 0, 1, v51);
  v55 = *(v3 + v124);
  v56 = type metadata accessor for FMIPDataManager();
  v57 = *(v56 + 48);
  v58 = *(v56 + 52);
  swift_allocObject();

  v59 = sub_24A67CF18(v48, v49, &v134, v54, v44 & v46, v45, v55);
  *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager) = v59;
  type metadata accessor for FMIPBeaconSharingController();
  swift_allocObject();

  *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_beaconSharingController) = sub_24A695148();
  type metadata accessor for FMLocationShifter();
  swift_allocObject();
  *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_locationShifter) = FMLocationShifter.init()();
  *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_locationController) = [objc_allocWithZone(type metadata accessor for FMIPLocationController()) init];
  v60 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_authenticationUIProvider;
  v61 = sub_24A67E964(v47 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_authenticationUIProvider, v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_authenticationUIProvider, &qword_27EF5D608, &qword_24A837E90);
  v62 = *(v47 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_interactionControllerProvider + 8);
  (*(v47 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_interactionControllerProvider))(&v134, v61);
  v63 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_interactionController;
  sub_24A696E80(&v134, v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_interactionController);
  v64 = v123;
  sub_24A696E98(&v135);
  v65 = type metadata accessor for FMIPBeaconRefreshingController(0);
  v66 = *(v65 + 48);
  v67 = *(v65 + 52);
  swift_allocObject();
  *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_beaconRefreshingController) = sub_24A6972BC(v64, &v135);
  type metadata accessor for FMIPSafeLocationRefreshingController();
  v68 = swift_allocObject();
  v69 = v64;
  *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_safeLocationRefreshingController) = sub_24A697EF4(v69, v68);
  swift_beginAccess();
  sub_24A698230(v3 + v63, &v134);
  type metadata accessor for FMIPURLHandler();
  swift_allocObject();
  *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_urlHandler) = sub_24A6982B8(&v134);
  if (*(v47 + v122))
  {
    sub_24A698230(v3 + v63, &v134);
    sub_24A67E964(v3 + v60, v133, &qword_27EF5D608, &qword_24A837E90);
    type metadata accessor for FMIPDeviceActionsController();
    memset(v131, 0, sizeof(v131));
    v132 = 0;
    swift_allocObject();
    v70 = sub_24A6983D8(v69, &v134, v133, v131);
    v71 = *(v3 + v121);
    *(v3 + v121) = v70;

    sub_24A698230(v3 + v63, &v134);
    v72 = type metadata accessor for FMAPSConnectionHandler();
    if (qword_27EF5CC20 != -1)
    {
      swift_once();
    }

    v73 = qword_27EF78F30;
    v74 = *algn_27EF78F38;
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    v76 = sub_24A6987EC(0xD00000000000001ELL, 0x800000024A846B70, v73, 0, 0, v72, ObjectType, v74);
    v77 = type metadata accessor for FMIPRefreshingController();
    v78 = *(v77 + 48);
    v79 = *(v77 + 52);
    swift_allocObject();
    v80 = sub_24A6991A4(&v134, v76);
    v81 = *(v3 + v118[0]);
    *(v3 + v118[0]) = v80;
  }

  type metadata accessor for FMIPItemActionsController();
  swift_allocObject();
  v82 = v69;

  v83 = sub_24A699828(v82, v59);
  v84 = *(v3 + v126);
  *(v3 + v126) = v83;

  type metadata accessor for FMIPDeviceConnectionStateProvider();
  v85 = swift_allocObject();
  *(v85 + 16) = 0;
  *(v85 + 32) = 0;
  swift_unknownObjectWeakInit();
  sub_24A69A02C();
  *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_connectionStateProvider) = v85;
  *(v85 + 32) = &off_285DC5EB8;
  swift_unknownObjectWeakAssign();
  if ((v129 & 1) == 0)
  {
    v86 = *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_connectionStateProvider);

    sub_24A69A1CC();
  }

  *(v59 + 40) = &off_285DC5E58;
  swift_unknownObjectWeakAssign();

  v126 = v59;
  sub_24A69A398();

  *(*(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_locationController) + OBJC_IVAR____TtC8FMIPCore22FMIPLocationController_delegate + 8) = &off_285DC5E80;
  swift_unknownObjectWeakAssign();
  v87 = v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_interactionController;
  swift_beginAccess();
  v88 = *(v87 + 24);
  v89 = *(v87 + 32);
  sub_24A69A6C4(v87, v88);
  v90 = *(v89 + 16);

  v90(v91, &off_285DC5E38, v88, v89);
  swift_endAccess();
  v92 = *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_refreshingController);
  if (v92)
  {
    *(v92 + 40) = &off_285DC5D78;
    swift_unknownObjectWeakAssign();
  }

  *(*(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_beaconRefreshingController) + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_delegate + 8) = &off_285DC5DB8;
  swift_unknownObjectWeakAssign();
  *(*(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_safeLocationRefreshingController) + 24) = &off_285DC5E28;
  swift_unknownObjectWeakAssign();
  *(*(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_garbageCollector) + 56) = &off_285DC5E90;
  swift_unknownObjectWeakAssign();
  v93 = sub_24A82D354();
  v94 = v127;
  (*(*(v93 - 8) + 56))(v127, 1, 1, v93);
  v95 = swift_allocObject();
  v95[2] = 0;
  v95[3] = 0;
  v95[4] = v3;
  v95[5] = v3;
  swift_retain_n();
  sub_24A7382F4(0, 0, v94, &unk_24A836D88, v95);

  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v96 = sub_24A82CDC4();
  sub_24A6797D0(v96, qword_281518F88);

  v97 = sub_24A82CD94();
  v98 = sub_24A82D504();

  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    *&v134 = v100;
    *v99 = 136315394;
    v101 = sub_24A82CA54();
    v103 = sub_24A695068(0xCuLL, v101, v102);
    v105 = v104;
    v107 = v106;
    v127 = v82;
    v109 = v108;

    v110 = MEMORY[0x24C21C960](v103, v105, v107, v109);
    v112 = v111;

    v113 = sub_24A68761C(v110, v112, &v134);

    *(v99 + 4) = v113;
    *(v99 + 12) = 2080;
    if (v129)
    {
      v114 = 0x70616E7320736120;
    }

    else
    {
      v114 = 0;
    }

    if (v129)
    {
      v115 = 0xEC000000746F6873;
    }

    else
    {
      v115 = 0xE000000000000000;
    }

    v116 = sub_24A68761C(v114, v115, &v134);

    *(v99 + 14) = v116;
    _os_log_impl(&dword_24A675000, v97, v98, "FMIPManager<%s>.init%s", v99, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C21E1D0](v100, -1, -1);
    MEMORY[0x24C21E1D0](v99, -1, -1);
  }

  else
  {
  }

  return v3;
}

uint64_t sub_24A67C6F8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A67C754(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_24A6BBA94(&qword_27EF5D5F8, &qword_24A83DE60);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[28];
LABEL_13:
    v16 = *(v10 + 56);

    return v16(v5 + v11, a2, a2, v9);
  }

  v12 = sub_24A6BBA94(&unk_27EF5E0A0, &unk_24A8367D0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[29];
    goto LABEL_13;
  }

  v13 = sub_24A6BBA94(&qword_27EF5DE50, &qword_24A83DE40);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[30];
    goto LABEL_13;
  }

  v14 = sub_24A6BBA94(&qword_27EF5DE48, &unk_24A8367C0);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[31];
    goto LABEL_13;
  }

  v15 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[32];
    goto LABEL_13;
  }

  v17 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
  v18 = *(*(v17 - 8) + 56);
  v19 = v5 + a4[39];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_24A67CA04()
{
  v1 = v0;
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
  *(v0 + 24) = 0;
  *(v0 + 56) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  swift_unknownObjectWeakInit();
  sub_24A6BBA94(&qword_27EF5DAB8, &qword_24A836A80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24A8327A0;
  if (qword_281514350 != -1)
  {
    v11 = v2;
    swift_once();
    v2 = v11;
  }

  v3 = *algn_281518F78;
  *(v2 + 32) = qword_281518F70;
  *(v2 + 40) = v3;
  *(v1 + 64) = v2;
  v4 = qword_281515DC8;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = sub_24A82CDC4();
  sub_24A6797D0(v5, qword_281518F88);
  v6 = sub_24A82CD94();
  v7 = sub_24A82D504();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_24A675000, v6, v7, "FMIPGarbageCollector: initialized", v8, 2u);
    MEMORY[0x24C21E1D0](v8, -1, -1);
  }

  sub_24A67A288();
  v9 = [objc_opt_self() defaultCenter];
  [v9 addObserver:v1 selector:sel_scheduleAccountVerificationWithNotification_ name:*MEMORY[0x277CB8B78] object:0];

  return v1;
}

uint64_t sub_24A67CBF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_24A6BBA94(&qword_27EF5DD48, &qword_24A836128);
    v3 = sub_24A82D814();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_24A82DCC4();

      sub_24A82D094();
      result = sub_24A82DD24();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_24A82DC04();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_24A67CD5C()
{
  type metadata accessor for FMPreferencesUtilStoring();
  result = swift_allocObject();
  qword_27EF78F30 = result;
  *algn_27EF78F38 = &off_285DCAB40;
  qword_27EF78F40 = &off_285DCAB20;
  return result;
}

uint64_t sub_24A67CDA4(uint64_t a1)
{
  v2 = sub_24A6BBA94(&qword_27EF5D010, &qword_24A830E30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24A67CE0C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_24A67F098(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_24A82D8B4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_24A67CF18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, int a5, int a6, void *a7)
{
  v8 = v7;
  v185 = a7;
  v184 = a6;
  LODWORD(v179) = a5;
  v182 = a4;
  v183 = a2;
  v181 = a1;
  v10 = sub_24A6BBA94(&qword_27EF5E930, &unk_24A8343F0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v176 = v166 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v175 = v166 - v14;
  v15 = sub_24A6BBA94(&qword_27EF5E1D0, &qword_24A8377E8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v174 = v166 - v17;
  v18 = sub_24A6BBA94(&qword_27EF5E160, &qword_24A8377A8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v173 = v166 - v20;
  v21 = sub_24A6BBA94(&qword_27EF5E1A8, &qword_24A8377D0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v172 = v166 - v23;
  v24 = sub_24A6BBA94(&qword_27EF5E238, &qword_24A837830);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v171 = v166 - v26;
  v27 = sub_24A6BBA94(&qword_27EF5E250, &qword_24A837840);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v170 = v166 - v29;
  v30 = sub_24A6BBA94(&qword_27EF5E210, &qword_24A837818);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v33 = v166 - v32;
  v177 = sub_24A6BBA94(&qword_27EF5E218, &qword_24A837820);
  v34 = *(v177 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v177);
  v37 = v166 - v36;
  v38 = sub_24A82CAA4();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  v42 = v166 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *a3;
  *(v8 + 40) = 0;
  swift_unknownObjectWeakInit();
  sub_24A82CA94();
  v44 = sub_24A82CA54();
  v46 = v45;
  (*(v39 + 8))(v42, v38);
  v47 = v185;
  *(v8 + 48) = v44;
  *(v8 + 56) = v46;
  v48 = MEMORY[0x277D84F90];
  *(v8 + 64) = 0;
  *(v8 + 88) = 0u;
  *(v8 + 104) = 0u;
  *(v8 + 120) = 0u;
  *(v8 + 136) = 0u;
  *(v8 + 152) = 0u;
  *(v8 + 168) = 0;
  *(v8 + 176) = v48;
  v49 = MEMORY[0x277D84F98];
  *(v8 + 184) = MEMORY[0x277D84F98];
  *(v8 + 192) = v49;
  *(v8 + 200) = v49;
  *(v8 + 208) = v49;
  *(v8 + 216) = v49;
  *(v8 + 224) = v49;
  *(v8 + 232) = v49;
  *(v8 + 240) = v48;
  *(v8 + 248) = v49;
  *(v8 + 256) = v49;
  *(v8 + 264) = v49;
  *(v8 + 272) = v49;
  *(v8 + 280) = v48;
  *(v8 + 288) = v48;
  *(v8 + 296) = v48;
  *(v8 + 304) = v49;
  *(v8 + 328) = 0u;
  *(v8 + 344) = 0u;
  *(v8 + 312) = 0u;
  v180 = v43;
  *(v8 + 16) = v43;
  LOBYTE(v49) = v179;
  *(v8 + 24) = v179;
  *(v8 + 25) = v184;
  *(v8 + 72) = v47;
  *(v8 + 80) = v48;
  if (v49)
  {
    v50 = v47;
    sub_24A67E2F8(0xD000000000000012, 0x800000024A847430, 0x6174614450494D46, 0xEF726567616E614DLL, v37);
    sub_24A67E964(v37, v33, &qword_27EF5E218, &qword_24A837820);
    v51 = v177;
    (*(v34 + 56))(v33, 0, 1, v177);
    v52 = sub_24A6BBA94(&qword_27EF5E2B0, &qword_24A837858);
    v53 = *(v52 + 48);
    v54 = *(v52 + 52);
    swift_allocObject();
    v55 = v183;

    v56 = v181;
    v57 = sub_24A67EBB4(v181, v55, 0x2E73656369766544, 0xEC00000061746164, v33, &qword_27EF5E210, &qword_24A837818);
    v58 = *(v8 + 328);
    *(v8 + 328) = v57;

    v166[0] = "FMIPDataManagerKey";
    v178 = sub_24A82CC84();
    v59 = *(v178 - 8);
    v179 = *(v59 + 16);
    v166[1] = v59 + 16;
    v60 = v170;
    v179(v170, v37, v178);
    v61 = *(v51 + 44);
    v62 = sub_24A6BBA94(&qword_27EF5E258, &qword_24A837848);
    v63 = *(v62 + 44);
    v64 = sub_24A82CCB4();
    v65 = *(v64 - 8);
    v66 = *(v65 + 16);
    v177 = v65 + 16;
    v167 = v61;
    v169 = v64;
    v66(v60 + v63, &v37[v61], v64);
    v168 = v66;
    (*(*(v62 - 8) + 56))(v60, 0, 1, v62);
    v67 = sub_24A6BBA94(&qword_27EF5E2B8, &qword_24A837860);
    v68 = *(v67 + 48);
    v69 = *(v67 + 52);
    swift_allocObject();

    v70 = sub_24A67EBB4(v56, v55, 0xD000000000000012, v166[0] | 0x8000000000000000, v60, &qword_27EF5E250, &qword_24A837840);
    v71 = *(v8 + 336);
    *(v8 + 336) = v70;

    v72 = v171;
    v179(v171, v37, v178);
    v73 = sub_24A6BBA94(&qword_27EF5E240, &qword_24A837838);
    v66(v72 + *(v73 + 44), &v37[v61], v64);
    (*(*(v73 - 8) + 56))(v72, 0, 1, v73);
    v74 = sub_24A6BBA94(&qword_27EF5E2C0, &qword_24A837868);
    v75 = *(v74 + 48);
    v76 = *(v74 + 52);
    swift_allocObject();

    v77 = sub_24A67EBB4(v56, v55, 0x61642E72656E774FLL, 0xEA00000000006174, v72, &qword_27EF5E238, &qword_24A837830);
    v78 = *(v8 + 344);
    *(v8 + 344) = v77;

    v79 = v172;
    v80 = v179;
    v179(v172, v37, v178);
    v81 = sub_24A6BBA94(&unk_27EF5E1B0, &unk_24A8377D8);
    v83 = v167;
    v82 = v168;
    v168(v79 + *(v81 + 44), &v37[v167], v169);
    (*(*(v81 - 8) + 56))(v79, 0, 1, v81);
    v84 = sub_24A6BBA94(&qword_27EF5E2C8, &qword_24A837870);
    v85 = *(v84 + 48);
    v86 = *(v84 + 52);
    swift_allocObject();
    v87 = v37;
    v88 = v183;

    v89 = sub_24A67EBB4(v181, v88, 0x61642E736D657449, 0xEA00000000006174, v79, &qword_27EF5E1A8, &qword_24A8377D0);
    v90 = *(v8 + 312);
    *(v8 + 312) = v89;

    v91 = v173;
    v92 = v87;
    v93 = v87;
    v94 = v178;
    v80(v173, v93, v178);
    v95 = sub_24A6BBA94(&qword_27EF5E168, &unk_24A8377B0);
    v96 = v92 + v83;
    v97 = v169;
    v82(v91 + *(v95 + 44), v96, v169);
    (*(*(v95 - 8) + 56))(v91, 0, 1, v95);
    v98 = sub_24A6BBA94(&qword_27EF5E2D0, &qword_24A837878);
    v99 = *(v98 + 48);
    v100 = *(v98 + 52);
    swift_allocObject();
    v101 = v183;

    v102 = v181;
    v103 = sub_24A67EBB4(v181, v101, 0x756F72476D657449, 0xEF617461642E7370, v91, &qword_27EF5E160, &qword_24A8377A8);
    v104 = *(v8 + 320);
    *(v8 + 320) = v103;

    v105 = v174;
    v179(v174, v92, v94);
    v106 = sub_24A6BBA94(&qword_27EF5E1D8, &qword_24A8377F0);
    v168(v105 + *(v106 + 44), v92 + v167, v97);
    (*(*(v106 - 8) + 56))(v105, 0, 1, v106);
    v107 = sub_24A6BBA94(&unk_27EF5E2D8, &unk_24A837880);
    v108 = *(v107 + 48);
    v109 = *(v107 + 52);
    swift_allocObject();
    v110 = sub_24A67EBB4(v102, v101, 0xD000000000000012, 0x800000024A847470, v105, &qword_27EF5E1D0, &qword_24A8377E8);
    sub_24A67F378(v92, &qword_27EF5E218, &qword_24A837820);
  }

  else
  {
    v111 = v47;

    v112 = *(v8 + 312);
    *(v8 + 312) = 0;

    v113 = *(v8 + 320);
    *(v8 + 320) = 0;

    v114 = *(v8 + 328);
    *(v8 + 328) = 0;

    v115 = *(v8 + 336);
    *(v8 + 336) = 0;

    v116 = *(v8 + 344);
    *(v8 + 344) = 0;

    v110 = 0;
  }

  v117 = *(v8 + 352);
  *(v8 + 352) = v110;

  v118 = v182;
  sub_24A67E964(v182, v8 + OBJC_IVAR____TtC8FMIPCore15FMIPDataManager_preferredLocale, &qword_27EF5E930, &unk_24A8343F0);
  if (v184)
  {
    *(v8 + OBJC_IVAR____TtC8FMIPCore15FMIPDataManager_geocodingCache) = 0;
  }

  else
  {
    v119 = v175;
    sub_24A67E964(v118, v175, &qword_27EF5E930, &unk_24A8343F0);
    v120 = type metadata accessor for FMIPReverseGeocodingCache();
    v121 = *(v120 + 48);
    v122 = *(v120 + 52);
    *(swift_allocObject() + qword_27EF78FC8 + 8) = 0;
    swift_unknownObjectWeakInit();
    v123 = v176;
    sub_24A67E964(v119, v176, &qword_27EF5E930, &unk_24A8343F0);
    v124 = sub_24A67F608(v123);
    sub_24A67F378(v119, &qword_27EF5E930, &unk_24A8343F0);
    *(v8 + OBJC_IVAR____TtC8FMIPCore15FMIPDataManager_geocodingCache) = v124;
    *(v124 + qword_27EF78FC8 + 8) = &off_285DC7268;
    swift_unknownObjectWeakAssign();
  }

  v187[0] = v180;
  if ((sub_24A67FC78(v187) & 1) == 0)
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v147 = sub_24A82CDC4();
    sub_24A6797D0(v147, qword_281518F88);

    v126 = sub_24A82CD94();
    v148 = sub_24A82D504();

    if (os_log_type_enabled(v126, v148))
    {
      v149 = swift_slowAlloc();
      v150 = swift_slowAlloc();
      v187[0] = v150;
      *v149 = 136315138;
      v151 = *(v8 + 48);
      v152 = *(v8 + 56);

      v153 = sub_24A695068(0xCuLL, v151, v152);
      v155 = v154;
      v157 = v156;
      v159 = v158;

      v160 = MEMORY[0x24C21C960](v153, v155, v157, v159);
      v162 = v161;

      v163 = sub_24A68761C(v160, v162, v187);

      *(v149 + 4) = v163;
      _os_log_impl(&dword_24A675000, v126, v148, "FMIPDataManager<%s>.init", v149, 0xCu);
      sub_24A6876E8(v150);
      MEMORY[0x24C21E1D0](v150, -1, -1);
      v146 = v149;
      goto LABEL_16;
    }

LABEL_17:

    v164 = v118;
    goto LABEL_18;
  }

  *(v8 + 64) = 1;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v125 = sub_24A82CDC4();
  sub_24A6797D0(v125, qword_281518F88);

  v126 = sub_24A82CD94();
  v127 = sub_24A82D504();

  if (!os_log_type_enabled(v126, v127))
  {
    goto LABEL_17;
  }

  v128 = swift_slowAlloc();
  v129 = swift_slowAlloc();
  v187[0] = v129;
  *v128 = 136315394;
  v130 = *(v8 + 48);
  v131 = *(v8 + 56);

  v132 = sub_24A695068(0xCuLL, v130, v131);
  v134 = v133;
  v136 = v135;
  v138 = v137;

  v139 = MEMORY[0x24C21C960](v132, v134, v136, v138);
  v141 = v140;

  v142 = sub_24A68761C(v139, v141, v187);

  *(v128 + 4) = v142;
  *(v128 + 12) = 2080;
  v186 = v180;
  v143 = sub_24A82D024();
  v145 = sub_24A68761C(v143, v144, v187);

  *(v128 + 14) = v145;
  _os_log_impl(&dword_24A675000, v126, v127, "FMIPDataManager<%s>.init with valid cache for subsystems: %s", v128, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x24C21E1D0](v129, -1, -1);
  v146 = v128;
LABEL_16:
  MEMORY[0x24C21E1D0](v146, -1, -1);

  v164 = v182;
LABEL_18:
  sub_24A67F378(v164, &qword_27EF5E930, &unk_24A8343F0);
  return v8;
}

uint64_t sub_24A67DF2C@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2[2];
  v3 = a2[3];
  v5 = a2[4];
  return FMDiskIO.KeyPair.init(from:)(a1, a3);
}

void *sub_24A67DF6C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for FMIPSafeLocationType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
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
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMIPSafeLocationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_24A67E0F0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_24A67E168(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_24A67E1C4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_24A82CF94();
  }

  else
  {
    v2 = 0;
  }

  v3 = objc_opt_self();
  v4 = sub_24A82CF94();
  v5 = sub_24A82CF94();
  [v3 setString:v2 forKey:v4 inDomain:v5];
}

uint64_t type metadata accessor for FMIPDataManager()
{
  result = qword_281514320;
  if (!qword_281514320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A67E2F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v39 = a5;
  v9 = sub_24A82C524();
  v38 = *(v9 - 8);
  v10 = *(v38 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24A6BBA94(&qword_27EF5E218, &qword_24A837820);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v37 - v18;
  v37[1] = a1;
  v37[2] = a2;
  v37[3] = a3;
  v37[4] = a4;
  v20 = sub_24A82C544();
  v22 = v21;
  if (v21 >> 60 == 15)
  {
    sub_24A6BBA94(&qword_27EF5E2F8, &unk_24A837890);
    sub_24A68795C(&qword_27EF5E300, &qword_27EF5E2F8, &unk_24A837890);
    v23 = swift_allocError();
    swift_willThrow();
    sub_24A82CC74();
    v28 = &v17[*(v13 + 44)];
    sub_24A82CCA4();
    v29 = sub_24A82C754();
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    sub_24A82C744();
    sub_24A68795C(&qword_27EF5E2E8, &qword_27EF5E218, &qword_24A837820);
    v32 = sub_24A82C734();
    v34 = v33;

    v40 = v32;
    v41 = v34;
    v35 = v38;
    (*(v38 + 104))(v12, *MEMORY[0x277D08A30], v9);
    sub_24A770D64();
    sub_24A82C534();
    (*(v35 + 8))(v12, v9);

    sub_24A67E0F0(v32, v34);
    v19 = v17;
  }

  else
  {
    v24 = v20;
    v25 = sub_24A82C724();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    sub_24A82C714();
    sub_24A68795C(&qword_27EF5E308, &qword_27EF5E218, &qword_24A837820);
    sub_24A82C704();
    sub_24A67E8E8(v24, v22);
  }

  return sub_24A67E8FC(v19, v39, &qword_27EF5E218, &qword_24A837820);
}

uint64_t sub_24A67E858(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24A67E8A0(char a1)
{
  if (a1)
  {
    return 0x697274656D6D7973;
  }

  else
  {
    return 0x4B65746176697270;
  }
}

uint64_t sub_24A67E8E8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24A67E0F0(a1, a2);
  }

  return a1;
}

uint64_t sub_24A67E8FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_24A6BBA94(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_24A67E964(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_24A6BBA94(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_24A67E9E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_24A82CC84();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_24A82CCB4();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 44);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_24A67EAF4(void *a1)
{
  v1 = a1[10];
  v2 = a1[11];
  v3 = a1[12];
  type metadata accessor for FMDiskIO.KeyPair();
  result = sub_24A82D634();
  if (v5 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *sub_24A67EBB4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v34 = a6;
  v35 = a7;
  v8 = v7;
  v32 = a3;
  v33 = a5;
  v29 = a4;
  v30 = a1;
  v31 = a2;
  v28 = sub_24A82D554();
  v9 = *(v28 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v28);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24A82D534();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v15 = sub_24A82CE54();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = sub_24A67B054();
  v27[1] = "SafeLocations.data";
  v27[2] = v17;
  sub_24A82CE24();
  v36 = MEMORY[0x277D84F90];
  sub_24A67F008(&qword_2815146D0, MEMORY[0x277D85230]);
  sub_24A6BBA94(&unk_27EF5EF50, &unk_24A836510);
  sub_24A68795C(&qword_2815146E0, &unk_27EF5EF50, &unk_24A836510);
  sub_24A82D6B4();
  (*(v9 + 104))(v12, *MEMORY[0x277D85260], v28);
  v7[2] = sub_24A82D594();
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v18 = sub_24A82CDC4();
  sub_24A6797D0(v18, qword_281518F88);
  v19 = v29;

  v20 = sub_24A82CD94();
  v21 = sub_24A82D504();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v36 = v23;
    *v22 = 136315138;
    v24 = v32;
    *(v22 + 4) = sub_24A68761C(v32, v19, &v36);
    _os_log_impl(&dword_24A675000, v20, v21, "FMDiskIO: init with file name: %s", v22, 0xCu);
    sub_24A6876E8(v23);
    MEMORY[0x24C21E1D0](v23, -1, -1);
    MEMORY[0x24C21E1D0](v22, -1, -1);
  }

  else
  {

    v24 = v32;
  }

  v25 = v31;
  v8[3] = v30;
  v8[4] = v25;
  v8[5] = v24;
  v8[6] = v19;
  sub_24A67E8FC(v33, v8 + *(*v8 + 128), v34, v35);
  return v8;
}

uint64_t sub_24A67EF7C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_24A82CAA4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24A67EFC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24A67F008(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24A67F050(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24A67F098(uint64_t a1, unint64_t a2)
{
  v4 = sub_24A67F158(a1, a2);
  sub_24A67F28C(&unk_285DBD640);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

void *sub_24A67F0E4(uint64_t a1, uint64_t a2)
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

  sub_24A6BBA94(&qword_27EF5D5A8, &unk_24A8334E0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_24A67F158(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_24A67F0E4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_24A82D8B4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_24A82D0F4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24A67F0E4(v10, 0);
        result = sub_24A82D824();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_24A67F28C(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_24A692508(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_24A67F378(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_24A6BBA94(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for FMIPReverseGeocodingCache()
{
  result = qword_27EF5F618;
  if (!qword_27EF5F618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24A67F478(uint64_t a1)
{
  result = sub_24A67F4A0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24A67F4A0()
{
  result = qword_27EF5F610;
  if (!qword_27EF5F610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F610);
  }

  return result;
}

void sub_24A67F50C()
{
  v0 = sub_24A82CA34();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_24A687858();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_initClassMetadata2();
    }
  }
}

uint64_t *sub_24A67F608(uint64_t a1)
{
  v2 = v1;
  v31 = a1;
  v3 = sub_24A82D554();
  v29 = *(v3 - 8);
  v30 = v3;
  v4 = *(v29 + 64);
  MEMORY[0x28223BE20](v3);
  v28 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[0] = sub_24A82D534();
  v6 = *(*(v27[0] - 8) + 64);
  MEMORY[0x28223BE20](v27[0]);
  v27[1] = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A82CE54();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_24A82CA04();
  v10 = MEMORY[0x277D84F98];
  *(v1 + qword_27EF5EFA8) = MEMORY[0x277D84F98];
  *(v1 + qword_27EF5EFB0) = v10;
  *(v1 + qword_27EF5EFB8) = v10;
  *(v1 + qword_27EF5EFC0) = 0;
  if (qword_27EF5CB88 != -1)
  {
    swift_once();
  }

  v11 = sub_24A82CDC4();
  sub_24A6797D0(v11, qword_27EF78C00);

  v12 = sub_24A82CD94();
  v13 = sub_24A82D504();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136315138;
    v16 = *v2;
    v17 = sub_24A82DDB4();
    v19 = sub_24A68761C(v17, v18, &v32);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_24A675000, v12, v13, "%s: initialized", v14, 0xCu);
    sub_24A6876E8(v15);
    MEMORY[0x24C21E1D0](v15, -1, -1);
    MEMORY[0x24C21E1D0](v14, -1, -1);
  }

  v20 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_24A82D854();
  MEMORY[0x24C21C9E0](0xD000000000000022, 0x800000024A849680);
  v21 = *v2;
  v22 = sub_24A82DDB4();
  MEMORY[0x24C21C9E0](v22);

  MEMORY[0x24C21C9E0](0x6974617265706F2ELL, 0xEF65756575516E6FLL);
  v23 = sub_24A82CF94();

  [v20 setName_];

  [v20 setMaxConcurrentOperationCount_];
  sub_24A67B054();
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_24A82D854();

  v32 = 0xD000000000000022;
  v33 = 0x800000024A849680;
  v24 = sub_24A82DDB4();
  MEMORY[0x24C21C9E0](v24);

  MEMORY[0x24C21C9E0](0x737365636F72702ELL, 0xED00006575657551);
  sub_24A82CE44();
  v32 = MEMORY[0x277D84F90];
  sub_24A67A024(&qword_2815146D0, MEMORY[0x277D85230]);
  sub_24A6BBA94(&unk_27EF5EF50, &unk_24A836510);
  sub_24A679544(&qword_2815146E0, &unk_27EF5EF50, &unk_24A836510);
  sub_24A82D6B4();
  (*(v29 + 104))(v28, *MEMORY[0x277D85260], v30);
  v25 = sub_24A82D594();
  *(v2 + qword_27EF5EFC8) = v20;
  sub_24A67FC08(v31, v2 + qword_27EF78F28);
  *(v2 + qword_27EF5EFD0) = v25;
  return v2;
}

uint64_t sub_24A67FB84()
{
  v0 = sub_24A82CDC4();
  sub_24A67976C(v0, qword_27EF78C00);
  sub_24A6797D0(v0, qword_27EF78C00);
  return sub_24A82CDA4();
}

uint64_t sub_24A67FC08(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&qword_27EF5E930, &unk_24A8343F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A67FC78(uint64_t *a1)
{
  if (*(v1 + 24) != 1)
  {
    return 0;
  }

  v2 = v1;
  v3 = *a1;
  if (*a1)
  {
    if (!*(v1 + 328))
    {
      return 0;
    }

    v11 = *(v1 + 328);

    v12 = sub_24A680224();

    if (!v12)
    {
      return 0;
    }

    LOBYTE(v56) = 16;
    v13 = sub_24A68F088(v12, &v56);

    swift_beginAccess();
    v14 = *(v2 + 80);
    *(v2 + 80) = v13;

    v15 = *(v2 + 344);
    if (v15)
    {
      v61 = 0;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v56 = 0u;
      v16 = *(v15 + 16);
      v17 = swift_allocObject();
      *(v17 + 16) = v15;
      *(v17 + 24) = &v56;
      v18 = swift_allocObject();
      *(v18 + 16) = sub_24A692624;
      *(v18 + 24) = v17;
      *&v52 = sub_24A680674;
      *(&v52 + 1) = v18;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v51 = sub_24A6805E4;
      *(&v51 + 1) = &unk_285DC7688;
      v19 = _Block_copy(&aBlock);
      swift_retain_n();

      dispatch_sync(v16, v19);

      _Block_release(v19);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
        return result;
      }

      v22 = *(&v56 + 1);
      if (*(&v56 + 1))
      {
        v23 = *(v2 + 136);
        v52 = *(v2 + 120);
        v53 = v23;
        v54 = *(v2 + 152);
        v24 = *(v2 + 104);
        aBlock = *(v2 + 88);
        v51 = v24;
        v25 = v57;
        *(v2 + 120) = v58;
        v26 = v60;
        *(v2 + 136) = v59;
        *(v2 + 152) = v26;
        v55 = *(v2 + 168);
        *(v2 + 88) = v56;
        *(v2 + 96) = v22;
        *(v2 + 168) = v61;
        *(v2 + 104) = v25;
        sub_24A67F378(&aBlock, &qword_27EF5DEF8, &unk_24A836D40);
      }
    }

    if (*(v2 + 336))
    {
      v27 = *(v2 + 336);

      v28 = sub_24A693F60();

      if (v28)
      {
        v29 = *(v2 + 176);
        *(v2 + 176) = v28;
      }
    }
  }

  if ((v3 & 2) != 0)
  {
    if (*(v2 + 312))
    {
      v4 = *(v2 + 312);

      v5 = sub_24A694E90();

      if (v5)
      {
        LOBYTE(v56) = 16;
        v6 = sub_24A76768C(v5, &v56);

        swift_beginAccess();
        v7 = *(v2 + 280);
        *(v2 + 280) = v6;

        sub_24A75691C(v6);

        goto LABEL_7;
      }
    }

    return 0;
  }

LABEL_7:
  if ((v3 & 3) != 0)
  {
    if (*(v2 + 320))
    {
      v8 = *(v2 + 320);

      v9 = sub_24A765D84();
      if (v9)
      {
        v10 = v9;
      }

      else
      {
        v10 = MEMORY[0x277D84F90];
        sub_24A761CE4(MEMORY[0x277D84F90], &unk_285DC7468, sub_24A76F27C, &unk_285DC7480);
      }

      v30 = *(v2 + 288);
      *(v2 + 288) = v10;
    }

    if (*(v2 + 352))
    {
      v31 = qword_27EF5CBE8;
      v32 = *(v2 + 352);

      if (v31 != -1)
      {
        swift_once();
      }

      v56 = xmmword_27EF5DFB0;
      v57 = *&qword_27EF5DFC0;
      v33 = qword_27EF5DFD0;
      *&v58 = qword_27EF5DFD0;
      v35 = *(&xmmword_27EF5DFB0 + 1);
      v34 = xmmword_27EF5DFB0;
      v37 = unk_27EF5DFC8;
      v36 = qword_27EF5DFC0;

      sub_24A765C04(&aBlock);
      v38 = aBlock;
      if (aBlock)
      {
        v48 = *(&v51 + 1);
        v49 = v52;
        v40 = *(&aBlock + 1);
        v39 = v51;

        v34 = v38;
        v35 = v40;
        v36 = v39;
        v37 = v48;
        v33 = v49;
      }

      else
      {
        sub_24A76187C(&v56);
      }

      v41 = *(v2 + 240);
      *(v2 + 240) = v34;

      v42 = *(v2 + 248);
      *(v2 + 248) = v35;

      v43 = *(v2 + 256);
      *(v2 + 256) = v36;

      v44 = *(v2 + 264);
      *(v2 + 264) = v37;

      v45 = *(v2 + 272);
      *(v2 + 272) = v33;
    }

    v46 = *(v2 + 240);

    sub_24A757884(v47);
  }

  return 1;
}

uint64_t sub_24A6801E8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A680224()
{
  v1 = v0;
  v8 = 0;
  v2 = *(v0 + 16);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = &v8;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_24A68060C;
  *(v4 + 24) = v3;
  aBlock[4] = sub_24A680674;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A6805E4;
  aBlock[3] = &unk_285DC7778;
  v5 = _Block_copy(aBlock);

  dispatch_sync(v2, v5);
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if ((v2 & 1) == 0)
  {
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_24A680394(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A6803A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A6803B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A6803C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A6803D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A6803E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A6803F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A680404(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A680414(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A680424(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A680434(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A680444(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A680454(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A680464(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A680474(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A680484(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A680494(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A6804A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A6804B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A6804C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A6804D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A6804E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A6804F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A680504(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A680514(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A680524(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A680534(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A680544(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A680554(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A680564(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A680574(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A680584(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A680594(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A6805A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A6805B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A6805C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A6805D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A680678()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_24A6806D0(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void (*a9)(void))
{
  v112 = a8;
  v111 = a7;
  v109 = a2;
  v113 = a9;
  v107 = sub_24A82CC54();
  v106 = *(v107 - 8);
  v14 = *(v106 + 64);
  MEMORY[0x28223BE20](v107);
  v105 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24A82CCD4();
  v108 = *(v16 - 8);
  v17 = *(v108 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = a3;
  v119 = a4;
  v20 = sub_24A6BBA94(a3, a4);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v116 = &v96 - v22;
  v122 = a5;
  v114 = a6;
  v117 = sub_24A6BBA94(a5, a6);
  v115 = *(v117 - 8);
  v23 = *(v115 + 64);
  MEMORY[0x28223BE20](v117);
  v25 = &v96 - v24;
  v123 = sub_24A82C8B4();
  v26 = *(v123 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v123);
  v29 = &v96 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v120 = v25;
  v121 = v19;
  v110 = v16;
  v30 = sub_24A82CDC4();
  v124 = sub_24A6797D0(v30, qword_281518F88);
  v31 = sub_24A82CD94();
  v32 = sub_24A82D504();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_24A675000, v31, v32, "FMDiskIO: read from disk", v33, 2u);
    MEMORY[0x24C21E1D0](v33, -1, -1);
  }

  v34 = [objc_opt_self() defaultManager];
  v36 = a1[3];
  v35 = a1[4];
  v37 = a1[5];
  v38 = a1[6];
  v126 = v36;
  v127 = v35;

  MEMORY[0x24C21C9E0](v37, v38);
  v39 = sub_24A82CF94();

  v40 = [v34 fileExistsAtPath_];

  if (v40)
  {
    v104 = a1;
    v126 = v36;
    v127 = v35;

    MEMORY[0x24C21C9E0](v37, v38);
    sub_24A82C824();

    v48 = sub_24A82C8C4();
    v50 = v49;
    v100 = v38;
    v101 = 0;
    (*(v26 + 8))(v29, v123);

    sub_24A681458(v48, v50);
    v51 = sub_24A82CD94();
    v52 = sub_24A82D504();

    sub_24A67E0F0(v48, v50);
    v53 = os_log_type_enabled(v51, v52);
    v98 = v36;
    v97 = v35;
    v103 = v50;
    v99 = v37;
    v102 = v48;
    if (v53)
    {
      v54 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v125 = v123;
      v126 = v36;
      *v54 = 136315394;
      v127 = v35;

      MEMORY[0x24C21C9E0](v37, v100);
      v55 = sub_24A68761C(v126, v127, &v125);

      *(v54 + 4) = v55;
      *(v54 + 12) = 2080;
      v56 = sub_24A82C8D4();
      v58 = sub_24A68761C(v56, v57, &v125);

      *(v54 + 14) = v58;
      _os_log_impl(&dword_24A675000, v51, v52, "FMDiskIO: file: %s data: %s", v54, 0x16u);
      v59 = v123;
      swift_arrayDestroy();
      MEMORY[0x24C21E1D0](v59, -1, -1);
      MEMORY[0x24C21E1D0](v54, -1, -1);
    }

    v60 = v122;
    v61 = sub_24A82C724();
    v62 = *(v61 + 48);
    v63 = *(v61 + 52);
    swift_allocObject();
    sub_24A82C714();
    v64 = v116;
    v66 = v118;
    v65 = v119;
    sub_24A67E964(v104 + *(*v104 + 128), v116, v118, v119);
    v67 = v117;
    v68 = (*(v115 + 48))(v64, 1, v117) == 1;
    v69 = v120;
    v70 = v121;
    v71 = v64;
    if (v68)
    {
      sub_24A67F378(v64, v66, v65);
      sub_24A6BBA94(v111, v112);
      v113();
      v75 = v102;
      v72 = v103;
      v76 = v101;
      sub_24A82C704();
      if (v76)
      {

        goto LABEL_23;
      }

      sub_24A67E0F0(v75, v72);
    }

    else
    {
      v73 = v114;
      sub_24A67E8FC(v71, v120, v60, v114);
      sub_24A67F008(&unk_27EF5E280, MEMORY[0x277D08F20]);
      v74 = v110;
      v75 = v102;
      v76 = v101;
      sub_24A82C704();
      if (v76)
      {
        sub_24A67F378(v69, v60, v73);

LABEL_23:

        v85 = v76;
        v86 = sub_24A82CD94();
        v87 = sub_24A82D4E4();

        v88 = os_log_type_enabled(v86, v87);
        v89 = v99;
        if (v88)
        {
          v90 = swift_slowAlloc();
          v91 = swift_slowAlloc();
          v125 = v91;
          *v90 = 136315394;
          swift_getErrorValue();
          v92 = sub_24A82DC74();
          v94 = sub_24A68761C(v92, v93, &v125);

          *(v90 + 4) = v94;
          *(v90 + 12) = 2080;
          v126 = v98;
          v127 = v97;

          MEMORY[0x24C21C9E0](v89, v100);
          v95 = sub_24A68761C(v126, v127, &v125);

          *(v90 + 14) = v95;
          _os_log_impl(&dword_24A675000, v86, v87, "FMDiskIO: Could not decode the disk archive: %s, %s", v90, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x24C21E1D0](v91, -1, -1);
          MEMORY[0x24C21E1D0](v90, -1, -1);
          sub_24A67E0F0(v75, v103);
        }

        else
        {
          sub_24A67E0F0(v75, v103);
        }

        return;
      }

      v78 = *(v67 + 44);
      v79 = v105;
      sub_24A82CC64();
      v80 = v79;
      v81 = sub_24A82CCC4();
      v83 = v82;
      (*(v106 + 8))(v80, v107);
      sub_24A6BBA94(v111, v112);
      v113();
      sub_24A82C704();
      v84 = (v108 + 8);

      sub_24A67E0F0(v81, v83);
      sub_24A67E0F0(v75, v103);
      (*v84)(v70, v74);
      sub_24A67F378(v69, v60, v114);
    }

    v77 = *v109;
    *v109 = v126;

    return;
  }

  v41 = v35;
  v42 = v37;

  v124 = sub_24A82CD94();
  v43 = sub_24A82D4E4();

  if (os_log_type_enabled(v124, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v125 = v45;
    v126 = v36;
    *v44 = 136315138;
    v127 = v41;

    MEMORY[0x24C21C9E0](v42, v38);
    v46 = sub_24A68761C(v126, v127, &v125);

    *(v44 + 4) = v46;
    _os_log_impl(&dword_24A675000, v124, v43, "FMDiskIO: Disk archive does not exist at: %s", v44, 0xCu);
    sub_24A6876E8(v45);
    MEMORY[0x24C21E1D0](v45, -1, -1);
    MEMORY[0x24C21E1D0](v44, -1, -1);
  }

  else
  {
    v47 = v124;
  }
}

uint64_t sub_24A681458(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_24A6814C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A82CC84();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_24A82CCB4();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 44);

    return v11(v12, a2, v10);
  }
}

unint64_t sub_24A6815B0()
{
  result = qword_281512BC0;
  if (!qword_281512BC0)
  {
    sub_24A6CCDC0(&unk_27EF5E220, &unk_24A8343D0);
    sub_24A681668(&unk_281514630, 255, type metadata accessor for FMIPDevice);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281512BC0);
  }

  return result;
}

uint64_t sub_24A681668(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t FMIPDevice.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v245 = a2;
  v3 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v244 = &v184 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v243 = &v184 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v242 = &v184 - v10;
  MEMORY[0x28223BE20](v9);
  v241 = (&v184 - v11);
  v12 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v246 = &v184 - v14;
  v15 = sub_24A6BBA94(&qword_27EF5DE48, &unk_24A8367C0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v247 = &v184 - v17;
  v18 = sub_24A6BBA94(&qword_27EF5DE50, &qword_24A83DE40);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v248 = &v184 - v20;
  v21 = sub_24A6BBA94(&unk_27EF5E0A0, &unk_24A8367D0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v249 = &v184 - v23;
  v24 = sub_24A6BBA94(&qword_27EF5D5F8, &qword_24A83DE60);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v250 = &v184 - v26;
  v27 = sub_24A6BBA94(&qword_27EF5F268, &qword_24A83DF08);
  v251 = *(v27 - 8);
  v28 = *(v251 + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v184 - v29;
  v31 = type metadata accessor for FMIPDevice();
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v184 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(v33 + 140);
  v35[v36] = 1;
  v37 = a1[3];
  v38 = a1[4];
  v253 = a1;
  sub_24A67DF6C(a1, v37);
  sub_24A683980();
  v39 = v252;
  sub_24A82DD64();
  if (!v39)
  {
    v239 = v31;
    v240 = v36;
    v252 = v35;
    v40 = v251;
    LOBYTE(v256[0]) = 14;
    v41 = v30;
    v42 = sub_24A82DA44();
    v44 = v43;
    v237 = v42;
    LOBYTE(v256[0]) = 4;
    v45 = sub_24A82DA44();
    v47 = v46;
    v236 = v45;
    LOBYTE(v256[0]) = 39;
    v48 = sub_24A82DA44();
    v50 = v49;
    v235 = v48;
    LOBYTE(v256[0]) = 12;
    v234 = sub_24A82DA44();
    v238 = v51;
    LOBYTE(v256[0]) = 38;
    v232 = sub_24A82DA44();
    v233 = v52;
    LOBYTE(v256[0]) = 46;
    v229 = sub_24A82DA44();
    v230 = v54;
    LOBYTE(v256[0]) = 10;
    v228 = sub_24A82DA44();
    v231 = v55;
    LOBYTE(v256[0]) = 9;
    v226 = sub_24A82DA44();
    v227 = v56;
    LOBYTE(v256[0]) = 36;
    v219 = sub_24A82DA44();
    v221 = v57;
    LOBYTE(v256[0]) = 41;
    v218 = sub_24A82DA44();
    v222 = v58;
    LOBYTE(v256[0]) = 37;
    v217 = sub_24A82DA44();
    v223 = v59;
    LOBYTE(v256[0]) = 11;
    v216 = sub_24A82DA44();
    v224 = v60;
    LOBYTE(v256[0]) = 2;
    sub_24A82DA64();
    v62 = v61;
    LOBYTE(v256[0]) = 3;
    v220 = sub_24A82DA44();
    v225 = v63;
    LOBYTE(v256[0]) = 40;
    v215 = sub_24A82DA74();
    LOBYTE(v256[0]) = 33;
    v210 = sub_24A82DA74();
    LOBYTE(v256[0]) = 32;
    v64 = sub_24A82DA94();
    v209 = 0;
    v205 = v64;
    LOBYTE(v256[0]) = 30;
    v65 = sub_24A82DA94();
    v211 = 0;
    v206 = v65;
    LOBYTE(v256[0]) = 48;
    v66 = sub_24A82DA94();
    v212 = 0;
    v207 = v66;
    LOBYTE(v256[0]) = 53;
    v67 = sub_24A82DA94();
    v213 = 0;
    v208 = v67;
    LOBYTE(v256[0]) = 51;
    v214 = sub_24A82DA74();
    LOBYTE(v256[0]) = 8;
    v204 = sub_24A82DA54();
    LOBYTE(v256[0]) = 5;
    v203 = sub_24A82DA54();
    v201 = v44;
    v202 = v50;
    LOBYTE(v256[0]) = 7;
    v68 = v27;
    v69 = v41;
    v200 = sub_24A82DA54();
    sub_24A6BBA94(&qword_27EF5F270, &qword_24A83DF10);
    LOBYTE(v255[0]) = 1;
    sub_24A7E04BC();
    sub_24A82DA84();
    v255[0] = v256[0];

    sub_24A68432C(v255);

    v195 = v255[0];
    sub_24A6BBA94(&qword_27EF5F278, &qword_24A83DF18);
    LOBYTE(v255[0]) = 47;
    sub_24A7E0540();
    sub_24A82DA84();
    v194 = v256[0];
    LOBYTE(v255[0]) = 29;
    sub_24A687EF0();
    sub_24A82DA84();
    v197 = v256[1];
    v70 = 256;
    if (!BYTE1(v256[0]))
    {
      v70 = 0;
    }

    v71 = v70 | LOBYTE(v256[0]);
    v72 = 0x10000;
    if (!BYTE2(v256[0]))
    {
      v72 = 0;
    }

    v188 = v71 | v72 | (BYTE3(v256[0]) << 24);
    v189 = v256[2];
    v257 = 6;
    sub_24A82DA84();
    v196 = v262;
    v73 = 256;
    if (!v259)
    {
      v73 = 0;
    }

    v74 = v73 | v258;
    v75 = 0x10000;
    if (!v260)
    {
      v75 = 0;
    }

    v190 = v74 | v75 | (v261 << 24);
    v191 = v263;
    v254[295] = 0;
    sub_24A684C3C();
    sub_24A82DA84();
    memcpy(v254, v255, 0x120uLL);
    nullsub_1(v254);
    memcpy(v256, v254, sizeof(v256));
    v254[0] = 13;
    sub_24A68545C();
    sub_24A82DA84();
    v198 = 0;
    v187 = v255[0];
    v76 = type metadata accessor for FMIPPlaySoundMetadata();
    LOBYTE(v255[0]) = 45;
    sub_24A7E0BD0(&qword_281513F60, type metadata accessor for FMIPPlaySoundMetadata);
    sub_24A82DA84();
    (*(*(v76 - 8) + 56))(v250, 0, 1, v76);
    v77 = type metadata accessor for FMIPDeviceLostModeMetadata();
    LOBYTE(v255[0]) = 31;
    sub_24A7E0BD0(&qword_281513598, type metadata accessor for FMIPDeviceLostModeMetadata);
    sub_24A82DA84();
    (*(*(v77 - 8) + 56))(v249, 0, 1, v77);
    v78 = type metadata accessor for FMIPLockMetadata();
    LOBYTE(v255[0]) = 42;
    sub_24A7E0BD0(&qword_281514158, type metadata accessor for FMIPLockMetadata);
    sub_24A82DA84();
    (*(*(v78 - 8) + 56))(v248, 0, 1, v78);
    v79 = type metadata accessor for FMIPEraseMetadata();
    LOBYTE(v255[0]) = 43;
    sub_24A7E0BD0(&qword_281514128, type metadata accessor for FMIPEraseMetadata);
    sub_24A82DA84();
    (*(*(v79 - 8) + 56))(v247, 0, 1, v79);
    sub_24A6BBA94(&qword_27EF5DFF0, &qword_24A839E00);
    v254[0] = 44;
    sub_24A7A84CC();
    sub_24A82DA84();
    v193 = v255[0];
    v254[0] = 54;
    sub_24A689878();
    sub_24A82DA84();
    v186 = LOBYTE(v255[0]);
    v254[0] = 55;
    sub_24A68ADE8();
    sub_24A82DA84();
    v185 = LOBYTE(v255[0]);
    LOBYTE(v255[0]) = 56;
    v192 = sub_24A82DA44();
    v199 = v80;
    v81 = type metadata accessor for FMIPItemGroup();
    LOBYTE(v255[0]) = 49;
    sub_24A7E0BD0(&qword_27EF5E2A8, type metadata accessor for FMIPItemGroup);
    sub_24A82DA84();
    (*(*(v81 - 8) + 56))(v246, 0, 1, v81);
    if (v225)
    {
      v82._countAndFlagsBits = v220;
      v82._object = v225;
      FMIPBatteryStatus.init(rawValue:)(v82);
      v83 = LOBYTE(v255[0]);
      if (LOBYTE(v255[0]) == 4)
      {
        v83 = 0;
      }

      LODWORD(v225) = v83;
    }

    else
    {
      LODWORD(v225) = 0;
    }

    v84 = sub_24A82D9C4();

    if (v84 >= 3)
    {
      v85 = 1;
    }

    else
    {
      v85 = v84;
    }

    LOBYTE(v255[0]) = 28;
    v86 = sub_24A82DA54();
    LOBYTE(v255[0]) = 20;
    LODWORD(v230) = sub_24A82DA54();
    LOBYTE(v255[0]) = 15;
    LODWORD(v229) = sub_24A82DA54();
    LOBYTE(v255[0]) = 21;
    LODWORD(v220) = sub_24A82DA54();
    LOBYTE(v255[0]) = 19;
    v87 = sub_24A82DA54();
    v88 = v86 & 1;
    if (v230)
    {
      v88 = v86 & 1 | 2;
    }

    if (v229)
    {
      v88 |= 4uLL;
    }

    if (v220)
    {
      v88 |= 8uLL;
    }

    if (v87)
    {
      v88 |= 0x20uLL;
    }

    v230 = v88;
    LOBYTE(v255[0]) = 52;
    v89 = sub_24A82DA54();
    v90 = v230;
    if (v89)
    {
      v90 = v230 | 0x20000;
    }

    v230 = v90;
    LOBYTE(v255[0]) = 57;
    v91 = sub_24A82DA54();
    v92 = v230;
    if (v91)
    {
      v92 = v230 | 0x40000;
    }

    v230 = v92;
    LOBYTE(v255[0]) = 17;
    v93 = sub_24A82DA54();
    v94 = v230;
    if (v93)
    {
      v94 = v230 | 0x10;
    }

    v230 = v94;
    LOBYTE(v255[0]) = 23;
    v95 = sub_24A82DA54();
    LOBYTE(v255[0]) = 24;
    LODWORD(v229) = sub_24A82DA14();
    LOBYTE(v255[0]) = 25;
    LODWORD(v220) = sub_24A82DA14();
    LOBYTE(v255[0]) = 26;
    v96 = sub_24A82DA14();
    v97 = v230 | 0x40;
    if ((v95 & 1) == 0)
    {
      v97 = v230;
    }

    v98 = v97 | 0x2000;
    if ((v229 & 1) == 0)
    {
      v98 = v97;
    }

    if (v229 == 2)
    {
      v99 = v97;
    }

    else
    {
      v99 = v98;
    }

    v100 = v99 | 0x4000;
    if ((v220 & 1) == 0)
    {
      v100 = v99;
    }

    if (v220 == 2)
    {
      v101 = v99;
    }

    else
    {
      v101 = v100;
    }

    v102 = v101 | 0x8000;
    if ((v96 & 1) == 0)
    {
      v102 = v101;
    }

    if (v96 != 2)
    {
      v101 = v102;
    }

    v230 = v101;
    if (v202 && (v235 != 0x72656E776FLL || v202 != 0xE500000000000000))
    {
      v103 = sub_24A82DC04();
      v104 = v230;
      if ((v103 & 1) == 0)
      {
        v104 = v230 | 0x80;
      }

      v230 = v104;
    }

    LOBYTE(v255[0]) = 18;
    v105 = sub_24A82DA54();
    LOBYTE(v255[0]) = 22;
    LODWORD(v229) = sub_24A82DA54();
    LOBYTE(v255[0]) = 27;
    v106 = sub_24A82DA54();
    v107 = v230 | 0x100;
    if ((v105 & 1) == 0)
    {
      v107 = v230;
    }

    if (v229)
    {
      v107 |= 0x200uLL;
    }

    if (v106)
    {
      v107 |= 0x400uLL;
    }

    v230 = v107;
    if ((v107 & 0x20000) != 0)
    {
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v108 = sub_24A82CDC4();
      sub_24A6797D0(v108, qword_281518F88);
      v109 = sub_24A82CD94();
      v110 = sub_24A82D504();
      if (os_log_type_enabled(v109, v110))
      {
        v111 = swift_slowAlloc();
        *v111 = 0;
        v112 = v110;
        v113 = v111;
        _os_log_impl(&dword_24A675000, v109, v112, "FMIPDevice: Device in pending remove, remove should not be enabled", v111, 2u);
        MEMORY[0x24C21E1D0](v113, -1, -1);
      }

      v229 = 0;
    }

    else
    {
      v229 = 64;
    }

    v114 = HIBYTE(v233) & 0xF;
    if ((v233 & 0x2000000000000000) == 0)
    {
      v114 = v232 & 0xFFFFFFFFFFFFLL;
    }

    if (!v114 && (v230 & 0x200) != 0)
    {

      type metadata accessor for FMLocalize();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v116 = [objc_opt_self() bundleForClass_];
      v232 = sub_24A82C6F4();
      v233 = v117;
    }

    if (v47)
    {
      v118 = HIBYTE(v47) & 0xF;
      if ((v47 & 0x2000000000000000) == 0)
      {
        v118 = v236 & 0xFFFFFFFFFFFFLL;
      }

      if (!v118)
      {

        v236 = 0;
        v47 = 0;
      }
    }

    v119 = v252;
    v120 = v201;
    v121 = v202;
    *v252 = v237;
    v119[1] = v120;
    v122 = v235;
    v119[2] = v236;
    v119[3] = v47;
    v123 = 0x72656E776FLL;
    if (v121)
    {
      v123 = v122;
    }

    v124 = 0xE500000000000000;
    if (v121)
    {
      v124 = v121;
    }

    v119[4] = v123;
    v119[5] = v124;
    v125 = v238;
    v119[6] = v234;
    v119[7] = v125;
    v126 = v233;
    v119[8] = v232;
    v119[9] = v126;
    *(v119 + 80) = v85;
    v127 = v231;
    v119[11] = v228;
    v119[12] = v127;
    v128 = v227;
    v119[13] = v226;
    v119[14] = v128;
    v129 = v221;
    v119[15] = v219;
    v119[16] = v129;
    v130 = v224;
    v131 = v216;
    if (!v224)
    {
      v131 = 0;
    }

    v132 = 0xE000000000000000;
    if (!v224)
    {
      v130 = 0xE000000000000000;
    }

    v119[21] = v131;
    v119[22] = v130;
    v133 = v222;
    v134 = v218;
    if (!v222)
    {
      v134 = 0;
      v133 = 0xE000000000000000;
    }

    v119[17] = v134;
    v119[18] = v133;
    v135 = v217;
    if (v223)
    {
      v132 = v223;
    }

    else
    {
      v135 = 0;
    }

    v119[19] = v135;
    v119[20] = v132;
    v119[23] = v62;
    *(v119 + 192) = v225;
    v136 = v209;
    v137 = v210;
    v119[25] = v215;
    v119[26] = v137;
    if (v136)
    {
      v138 = sub_24A82CA34();
      (*(*(v138 - 8) + 56))(v241, 1, 1, v138);
    }

    else
    {
      v139 = objc_opt_self();

      v140 = [v139 fm:v205 dateFromEpoch:?];
      v141 = v241;
      sub_24A82C9F4();

      v142 = sub_24A82CA34();
      (*(*(v142 - 8) + 56))(v141, 0, 1, v142);
    }

    sub_24A68C87C(v241, v252 + v239[39]);
    if (v211)
    {
      v143 = 1;
    }

    else
    {
      v144 = [objc_opt_self() fm:v206 dateFromEpoch:?];
      sub_24A82C9F4();

      v143 = 0;
    }

    v145 = sub_24A82CA34();
    v146 = *(*(v145 - 8) + 56);
    LODWORD(v238) = 1;
    v147 = v242;
    v241 = v146;
    (v146)(v242, v143, 1, v145);
    sub_24A68C87C(v147, v252 + v239[40]);
    if (!v212)
    {
      v148 = [objc_opt_self() fm:v207 dateFromEpoch:?];
      sub_24A82C9F4();

      LODWORD(v238) = 0;
    }

    v149 = 1;
    v150 = v243;
    (v241)(v243, v238, 1, v145);
    sub_24A68C87C(v150, v252 + v239[41]);
    if (!v213)
    {
      v151 = [objc_opt_self() fm:v208 dateFromEpoch:?];
      sub_24A82C9F4();

      v149 = 0;
    }

    v152 = v244;
    (v241)(v244, v149, 1, v145);
    v153 = v239;
    v154 = v252;
    sub_24A68C87C(v152, v252 + v239[42]);
    *(v154 + v153[38]) = v214;
    *(v154 + v153[43]) = v204 & 1;
    *(v154 + v153[44]) = v203 & 1;
    *(v154 + v153[45]) = v200 & 1;
    v154[27] = v230;
    v155 = MEMORY[0x277D84F90];
    v156 = v195;
    if (!v195)
    {
      v156 = MEMORY[0x277D84F90];
    }

    v154[29] = v156;
    v154[31] = v194;
    if (qword_27EF5CBC8 != -1)
    {
      swift_once();
    }

    if (byte_27EF5DEF1)
    {
      v188 = 0;
      v189 = 0;
      v157 = 0;
    }

    else
    {
      v158 = v197;
      v159 = v197;
      v157 = v158;
    }

    v160 = v252;
    v252[32] = v188;
    v160[33] = v157;
    v160[34] = v189;
    memcpy(v160 + 38, v256, 0x120uLL);
    v161 = v187;
    if (v198)
    {
      v161 = v229;
    }

    v160[30] = v161;
    v162 = v239;
    sub_24A67E964(v250, v160 + v239[28], &qword_27EF5D5F8, &qword_24A83DE60);
    sub_24A67E964(v249, v160 + v162[29], &unk_27EF5E0A0, &unk_24A8367D0);
    sub_24A67E964(v248, v160 + v162[30], &qword_27EF5DE50, &qword_24A83DE40);
    sub_24A67E964(v247, v160 + v162[31], &qword_27EF5DE48, &unk_24A8367C0);
    v163 = v193;
    if (!v193)
    {
      v163 = v155;
    }

    v160[28] = v163;
    v164 = v186;
    if (v186 == 7)
    {
      v164 = 0;
    }

    *(v160 + v162[34]) = v164;
    v165 = v185;
    if (v185 == 5)
    {
      v165 = 0;
    }

    *(v160 + v162[36]) = v165;
    v166 = (v160 + v162[37]);
    v167 = v199;
    *v166 = v192;
    v166[1] = v167;
    if (qword_27EF5CBD0 != -1)
    {
      swift_once();
    }

    if (byte_27EF5DEF2 == 1)
    {
      sub_24A7DD610(v237, v201, v255);

      v168 = v255[1];
      v169 = 256;
      if (!BYTE1(v255[0]))
      {
        v169 = 0;
      }

      v170 = v169 | LOBYTE(v255[0]);
      v171 = 0x10000;
      if (!BYTE2(v255[0]))
      {
        v171 = 0;
      }

      v190 = v170 | v171 | (BYTE3(v255[0]) << 24);
      v191 = v255[2];
    }

    else
    {

      v172 = v196;
      v173 = v196;
      v168 = v172;
    }

    v174 = v252;
    v252[35] = v190;
    v174[36] = v168;
    v174[37] = v191;
    sub_24A67E964(v246, v174 + v239[32], &unk_27EF5E0B0, &qword_24A8338B0);
    LOBYTE(v255[0]) = 50;
    *(v252 + v239[33]) = sub_24A82DA54() & 1;
    v254[0] = 58;
    sub_24A68CD84();
    sub_24A82DA34();
    if (LOBYTE(v255[0]) != 2)
    {
      *(v252 + v240) = v255[0] & 1;
    }

    v244 = FMIPDevice.debugDescription.getter();
    v176 = v175;
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v177 = sub_24A82CDC4();
    sub_24A6797D0(v177, qword_281518F88);

    v178 = sub_24A82CD94();
    v179 = sub_24A82D4C4();

    LODWORD(v243) = v179;
    if (os_log_type_enabled(v178, v179))
    {
      v180 = swift_slowAlloc();
      v242 = swift_slowAlloc();
      v255[0] = v242;
      *v180 = 136315138;
      v181 = sub_24A68761C(v244, v176, v255);

      *(v180 + 4) = v181;
      v182 = v180;
      _os_log_impl(&dword_24A675000, v178, v243, "FMIPDevice: initialized %s", v180, 0xCu);
      v183 = v242;
      sub_24A6876E8(v242);
      MEMORY[0x24C21E1D0](v183, -1, -1);
      MEMORY[0x24C21E1D0](v182, -1, -1);
    }

    else
    {
    }

    sub_24A67F378(v246, &unk_27EF5E0B0, &qword_24A8338B0);
    sub_24A67F378(v247, &qword_27EF5DE48, &unk_24A8367C0);
    sub_24A67F378(v248, &qword_27EF5DE50, &qword_24A83DE40);
    sub_24A67F378(v249, &unk_27EF5E0A0, &unk_24A8367D0);
    sub_24A67F378(v250, &qword_27EF5D5F8, &qword_24A83DE60);
    (*(v40 + 8))(v69, v68);
    sub_24A7E11A4(v252, v245, type metadata accessor for FMIPDevice);
  }

  return sub_24A6876E8(v253);
}

unint64_t sub_24A6838D4()
{
  result = qword_281514648;
  if (!qword_281514648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514648);
  }

  return result;
}

unint64_t sub_24A68392C()
{
  result = qword_281514650;
  if (!qword_281514650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514650);
  }

  return result;
}

unint64_t sub_24A683980()
{
  result = qword_281514658;
  if (!qword_281514658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514658);
  }

  return result;
}

unint64_t sub_24A6839DC(char a1)
{
  result = 0x73736572646461;
  switch(a1)
  {
    case 1:
      return 0x6168436F69647561;
    case 2:
      return 0x4C79726574746162;
    case 3:
      return 0x5379726574746162;
    case 4:
      return 0x444955556162;
    case 5:
      return 0x65646F4D74736F6CLL;
    case 6:
    case 53:
    case 55:
      return 0xD000000000000014;
    case 7:
      return 0x656B61576B726164;
    case 8:
      return 0xD000000000000010;
    case 9:
      return 0x6C43656369766564;
    case 10:
      return 0x6F43656369766564;
    case 11:
    case 12:
      return 0xD000000000000011;
    case 13:
      return 0x7365727574616566;
    case 14:
      return 25705;
    case 15:
      return 0xD000000000000010;
    case 16:
      return 0x72616853796C6D66;
    case 17:
      return 0x697461636F4C7369;
    case 18:
      return 0x6E6F697461636F6CLL;
    case 19:
      return 0x6E6F697461636F6CLL;
    case 20:
      return 0x65646F4D74736F6CLL;
    case 21:
      return 0x7265776F50776F6CLL;
    case 22:
      return 0x63614D7369;
    case 23:
      return 0x646E756F46636F6CLL;
    case 24:
      return 6584174;
    case 25:
      return 6579059;
    case 26:
      return 0x6957656369766564;
    case 27:
      v4 = 1936287860;
      return v4 | 0x6976654400000000;
    case 28:
      return 0x72506E4965706977;
    case 29:
      return 0x6E6F697461636F6CLL;
    case 30:
      return 0x695464656B636F6CLL;
    case 31:
      v4 = 1953722220;
      return v4 | 0x6976654400000000;
    case 32:
      return 0x656D695474736F6CLL;
    case 33:
      return 0x684367734D78616DLL;
    case 34:
      return 6779757;
    case 35:
      return 1735615853;
    case 36:
      return 0x6F4D656369766564;
    case 37:
      return 0xD000000000000010;
    case 38:
      return 1701667182;
    case 39:
      return 0x6449737270;
    case 40:
      return 0x65646F6373736170;
    case 41:
      return 0x6369766544776172;
    case 42:
      return 0x6F4C65746F6D6572;
    case 43:
      return 0x695765746F6D6572;
    case 44:
      return 0x61636F4C65666173;
    case 45:
      return 6581875;
    case 46:
      return 0x7453656369766564;
    case 47:
      return 0x676E696B63617274;
    case 48:
      return 0x6D69546465706977;
    case 49:
      return 0x756F72476D657469;
    case 50:
      v3 = 5;
      goto LABEL_8;
    case 51:
      return 0x6574617453326D72;
    case 52:
      return 0x52676E69646E6570;
    case 54:
      return 0x79546E6F63616562;
    case 56:
      v3 = 9;
LABEL_8:
      result = v3 | 0xD000000000000010;
      break;
    case 57:
      result = 0x6552726961706572;
      break;
    case 58:
      result = 0x6174537373617262;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for FMIPDevice.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 58 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 58) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xC6)
  {
    v4 = 0;
  }

  if (a2 > 0xC5)
  {
    v5 = ((a2 - 198) >> 8) + 1;
    *result = a2 + 58;
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
    *result = a2 + 58;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMIPDevice.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xC6)
  {
    goto LABEL_17;
  }

  if (a2 + 58 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 58) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 58;
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

      return (*a1 | (v4 << 8)) - 58;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 58;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x3B;
  v8 = v6 - 59;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_24A68426C(uint64_t a1)
{
  v2 = sub_24A683980();

  return MEMORY[0x2821FE718](a1, v2);
}

unint64_t sub_24A6842C4()
{
  result = qword_281514260;
  if (!qword_281514260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514260);
  }

  return result;
}

uint64_t sub_24A68432C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24A684318(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_24A6844B4(v5);
  *a1 = v2;
  return result;
}

char *sub_24A684398(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A6BBA94(&qword_27EF5DA68, &qword_24A8352F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_24A6844B4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_24A82DB74();
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
        v5 = sub_24A82D2A4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_24A7DF860(v7, v8, a1, v4);
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
    return sub_24A68EAB8(0, v2, 1, a1);
  }

  return result;
}

uint64_t FMIPLocation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v4 = sub_24A82CA34();
  v63 = *(v4 - 8);
  v5 = *(v63 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A6BBA94(&qword_27EF5E7C8, &qword_24A838E30);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v55 - v11;
  v14 = a1[3];
  v13 = a1[4];
  v65 = a1;
  sub_24A67DF6C(a1, v14);
  sub_24A688018();
  sub_24A82DD64();
  if (!v2)
  {
    v61 = v4;
    v62 = v7;
    v15 = v64;
    v16 = v9;
    LOBYTE(v66[0]) = 5;
    v17 = v12;
    v18 = sub_24A82DA54();
    LOBYTE(v66[0]) = 3;
    v19 = sub_24A82DA54();
    LOBYTE(v66[0]) = 4;
    v20 = sub_24A82DA54();
    LOBYTE(v66[0]) = 9;
    v22 = sub_24A82DA44();
    v60 = v23;
    LOBYTE(v66[0]) = 1;
    sub_24A82DA64();
    v25 = v24;
    LOBYTE(v66[0]) = 0;
    sub_24A82DA64();
    v27 = v26;
    LOBYTE(v66[0]) = 6;
    sub_24A82DA64();
    v29 = v28;
    LOBYTE(v66[0]) = 8;
    sub_24A82DA64();
    v58 = v22;
    v59 = v30;
    LOBYTE(v66[0]) = 2;
    sub_24A82DA64();
    v32 = v31;
    LOBYTE(v66[0]) = 11;
    v57 = v8;
    v33 = v17;
    sub_24A82DA64();
    v35 = v34;
    LOBYTE(v66[0]) = 10;
    v36 = sub_24A82DA94();
    v37 = [objc_opt_self() fm:v36 dateFromEpoch:?];
    sub_24A82C9F4();

    v56 = objc_allocWithZone(MEMORY[0x277CE41F8]);
    v38 = sub_24A82C994();
    v56 = [v56 initWithCoordinate:v38 altitude:v29 horizontalAccuracy:*&v59 verticalAccuracy:v27 course:v32 speed:v35 timestamp:{-1.0, -1.0}];

    v39._countAndFlagsBits = v58;
    v39._object = v60;
    FMIPLocationType.init(rawValue:)(v39);
    v40 = LOBYTE(v66[0]);
    if (LOBYTE(v66[0]) == 20)
    {
      v40 = 0;
    }

    LODWORD(v60) = v40;
    v41 = v18 & 1;
    v69 = v41;
    v68 = v19 & 1;
    v67 = v20 & 1;
    if (qword_27EF5CBF8 != -1)
    {
      swift_once();
    }

    v42 = qword_27EF5E7B8;
    if (qword_27EF5E7B8)
    {
      v59 = qword_27EF5E7B8;
    }

    else
    {
      v59 = v56;
      v42 = 0;
    }

    LOBYTE(v66[0]) = v41;
    BYTE1(v66[0]) = v19 & 1;
    BYTE2(v66[0]) = v20 & 1;
    BYTE3(v66[0]) = v60;
    v66[1] = v59;
    v66[2] = v25;
    v43 = v42;
    v58 = FMIPLocation.debugDescription.getter();
    v45 = v44;
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v46 = sub_24A82CDC4();
    sub_24A6797D0(v46, qword_281518F88);

    v47 = sub_24A82CD94();
    v48 = sub_24A82D4C4();

    v49 = v48;
    if (os_log_type_enabled(v47, v48))
    {
      v50 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v66[0] = v55;
      *v50 = 136380675;
      v51 = sub_24A68761C(v58, v45, v66);

      *(v50 + 4) = v51;
      _os_log_impl(&dword_24A675000, v47, v49, "FMIPLocation: initialized %{private}s", v50, 0xCu);
      v52 = v55;
      sub_24A6876E8(v55);
      MEMORY[0x24C21E1D0](v52, -1, -1);
      MEMORY[0x24C21E1D0](v50, -1, -1);
    }

    else
    {
    }

    (*(v63 + 8))(v62, v61);
    (*(v16 + 8))(v33, v57);
    v53 = v68;
    v54 = v67;
    *v15 = v69;
    *(v15 + 1) = v53;
    *(v15 + 2) = v54;
    *(v15 + 3) = v60;
    *(v15 + 8) = v59;
    *(v15 + 16) = v25;
  }

  return sub_24A6876E8(v65);
}

unint64_t sub_24A684C3C()
{
  result = qword_2815145E0;
  if (!qword_2815145E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815145E0);
  }

  return result;
}

uint64_t FMIPAddress.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_24A6BBA94(&qword_27EF5DB28, &qword_24A8356D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v65 - v8;
  v10 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A685408();
  sub_24A82DD64();
  if (v2)
  {
    v11 = a1;
  }

  else
  {
    LOBYTE(v100) = 0;
    v12 = sub_24A82DA44();
    v98 = a1;
    v95 = v13;
    v96 = v12;
    sub_24A6BBA94(&qword_27EF5D9D0, &qword_24A835090);
    v99 = 1;
    sub_24A7029A8(&qword_27EF5DB30);
    sub_24A82DA84();
    v94 = v100;
    LOBYTE(v100) = 2;
    v14 = sub_24A82DA44();
    v92 = v15;
    v93 = v14;
    LOBYTE(v100) = 3;
    v16 = sub_24A82DA44();
    v90 = v17;
    v91 = v16;
    LOBYTE(v100) = 4;
    v18 = sub_24A82DA44();
    v88 = v19;
    v89 = v18;
    LOBYTE(v100) = 5;
    v20 = sub_24A82DA44();
    v86 = v21;
    v87 = v20;
    LOBYTE(v100) = 6;
    v22 = sub_24A82DA44();
    v84 = v23;
    v85 = v22;
    LOBYTE(v100) = 7;
    v24 = sub_24A82DA44();
    v82 = v25;
    v83 = v24;
    LOBYTE(v100) = 8;
    v26 = sub_24A82DA44();
    v80 = v27;
    v81 = v26;
    LOBYTE(v100) = 9;
    v28 = sub_24A82DA44();
    v78 = v29;
    v79 = v28;
    LOBYTE(v100) = 10;
    v30 = sub_24A82DA44();
    v76 = v31;
    v77 = v30;
    v99 = 11;
    sub_24A82DA84();
    v75 = v100;
    LOBYTE(v100) = 12;
    v32 = sub_24A82DA44();
    v73 = v33;
    v74 = v32;
    LOBYTE(v100) = 13;
    v34 = sub_24A82DA44();
    v71 = v35;
    v72 = v34;
    LOBYTE(v100) = 14;
    v36 = sub_24A82DA44();
    v69 = v37;
    v70 = v36;
    LOBYTE(v100) = 15;
    v38 = sub_24A82DA44();
    v67 = v39;
    v68 = v38;
    LOBYTE(v100) = 16;
    v40 = sub_24A82DA44();
    v97 = v6;
    v42 = v41;
    v66 = v40;
    LOBYTE(v100) = 17;
    v43 = sub_24A82DA44();
    v45 = v44;
    LOBYTE(v100) = 18;
    v46 = sub_24A82DA44();
    v48 = v47;
    (*(v97 + 8))(v9, v5);
    v49 = v95;
    *a2 = v96;
    a2[1] = v49;
    v50 = v93;
    a2[2] = v94;
    a2[3] = v50;
    v51 = v91;
    a2[4] = v92;
    a2[5] = v51;
    v52 = v89;
    a2[6] = v90;
    a2[7] = v52;
    v53 = v87;
    a2[8] = v88;
    a2[9] = v53;
    v54 = v85;
    a2[10] = v86;
    a2[11] = v54;
    v55 = v83;
    a2[12] = v84;
    a2[13] = v55;
    v56 = v81;
    a2[14] = v82;
    a2[15] = v56;
    v57 = v79;
    a2[16] = v80;
    a2[17] = v57;
    v58 = v77;
    a2[18] = v78;
    a2[19] = v58;
    v59 = v75;
    a2[20] = v76;
    a2[21] = v59;
    v60 = v73;
    a2[22] = v74;
    a2[23] = v60;
    v61 = v71;
    a2[24] = v72;
    a2[25] = v61;
    v62 = v69;
    a2[26] = v70;
    a2[27] = v62;
    v63 = v67;
    a2[28] = v68;
    a2[29] = v63;
    a2[30] = v66;
    a2[31] = v42;
    a2[32] = v43;
    a2[33] = v45;
    a2[34] = v46;
    a2[35] = v48;
    v11 = v98;
  }

  return sub_24A6876E8(v11);
}

unint64_t sub_24A6853B4()
{
  result = qword_2815145F0;
  if (!qword_2815145F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815145F0);
  }

  return result;
}

unint64_t sub_24A685408()
{
  result = qword_281514600;
  if (!qword_281514600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514600);
  }

  return result;
}

unint64_t sub_24A68545C()
{
  result = qword_2815144E8;
  if (!qword_2815144E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815144E8);
  }

  return result;
}

uint64_t FMIPFeatures.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_24A6BBA94(&qword_27EF5ED98, &qword_24A83C1C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v43 - v8;
  v10 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A685F08();
  sub_24A82DD64();
  if (!v2)
  {
    LOBYTE(v70) = 0;
    v11 = sub_24A82DA54();
    LOBYTE(v70) = 1;
    v12 = sub_24A82DA54();
    LOBYTE(v70) = 2;
    v13 = sub_24A82DA54();
    LOBYTE(v70) = 3;
    LODWORD(v69) = sub_24A82DA54();
    LOBYTE(v70) = 4;
    LODWORD(v68) = sub_24A82DA54();
    LOBYTE(v70) = 5;
    v67 = sub_24A82DA54();
    LOBYTE(v70) = 6;
    LODWORD(v66) = sub_24A82DA54();
    LOBYTE(v70) = 7;
    v64 = sub_24A82DA54();
    v65 = a2;
    LOBYTE(v70) = 8;
    v63 = sub_24A82DA54();
    LOBYTE(v70) = 9;
    v62 = sub_24A82DA54();
    LOBYTE(v70) = 10;
    v61 = sub_24A82DA54();
    LOBYTE(v70) = 11;
    v60 = sub_24A82DA54();
    LOBYTE(v70) = 12;
    v59 = sub_24A82DA54();
    LOBYTE(v70) = 13;
    v58 = sub_24A82DA54();
    LOBYTE(v70) = 14;
    v57 = sub_24A82DA54();
    LOBYTE(v70) = 15;
    v56 = sub_24A82DA14();
    LOBYTE(v70) = 16;
    v55 = sub_24A82DA14();
    LOBYTE(v70) = 17;
    v54 = sub_24A82DA14();
    LOBYTE(v70) = 18;
    v53 = sub_24A82DA14();
    LOBYTE(v70) = 19;
    v52 = sub_24A82DA14();
    LOBYTE(v70) = 20;
    v51 = sub_24A82DA14();
    LOBYTE(v70) = 21;
    v50 = sub_24A82DA14();
    LOBYTE(v70) = 22;
    v49 = sub_24A82DA14();
    LOBYTE(v70) = 23;
    v48 = sub_24A82DA14();
    LOBYTE(v70) = 24;
    v47 = sub_24A82DA14();
    LOBYTE(v70) = 25;
    v46 = sub_24A82DA14();
    LOBYTE(v70) = 26;
    v45 = sub_24A82DA14();
    LOBYTE(v70) = 27;
    v44 = sub_24A82DA14();
    LOBYTE(v70) = 28;
    v43 = sub_24A82DA14();
    LOBYTE(v70) = 29;
    v15 = sub_24A82DA14();
    v16 = v11 & 1 | 2;
    if ((v12 & 1) == 0)
    {
      v16 = v11 & 1;
    }

    v17 = v16 | 4;
    if ((v13 & 1) == 0)
    {
      v17 = v16;
    }

    if (v69)
    {
      v17 |= 8uLL;
    }

    if (v68)
    {
      v17 |= 0x10uLL;
    }

    if (v67)
    {
      v17 |= 0x20uLL;
    }

    if (v66)
    {
      v17 |= 0x40uLL;
    }

    v18 = v17 | 0x80;
    if ((v64 & 1) == 0)
    {
      v18 = v17;
    }

    if (v63)
    {
      v18 |= 0x100uLL;
    }

    if (v62)
    {
      v18 |= 0x200uLL;
    }

    if (v61)
    {
      v18 |= 0x400uLL;
    }

    if (v60)
    {
      v18 |= 0x800uLL;
    }

    if (v59)
    {
      v18 |= 0x1000uLL;
    }

    if (v58)
    {
      v18 |= 0x2000uLL;
    }

    if (v57)
    {
      v18 |= 0x4000uLL;
    }

    v19 = v18 | 0x8000;
    if ((v56 & 1) == 0)
    {
      v19 = v18;
    }

    if (v56 != 2)
    {
      v18 = v19;
    }

    v20 = v18 | 0x10000;
    if ((v55 & 1) == 0)
    {
      v20 = v18;
    }

    if (v55 != 2)
    {
      v18 = v20;
    }

    v21 = v18 | 0x20000;
    if ((v54 & 1) == 0)
    {
      v21 = v18;
    }

    if (v54 != 2)
    {
      v18 = v21;
    }

    v22 = v18 | 0x40000;
    if ((v53 & 1) == 0)
    {
      v22 = v18;
    }

    if (v53 != 2)
    {
      v18 = v22;
    }

    v23 = v18 | 0x80000;
    if ((v52 & 1) == 0)
    {
      v23 = v18;
    }

    if (v52 != 2)
    {
      v18 = v23;
    }

    v24 = v18 | 0x100000;
    if ((v51 & 1) == 0)
    {
      v24 = v18;
    }

    if (v51 != 2)
    {
      v18 = v24;
    }

    v25 = v18 | 0x200000;
    if ((v50 & 1) == 0)
    {
      v25 = v18;
    }

    if (v50 != 2)
    {
      v18 = v25;
    }

    v26 = v18 | 0x2000000;
    if ((v49 & 1) == 0)
    {
      v26 = v18;
    }

    if (v49 != 2)
    {
      v18 = v26;
    }

    v27 = v18 | 0x4000000;
    if ((v48 & 1) == 0)
    {
      v27 = v18;
    }

    if (v48 != 2)
    {
      v18 = v27;
    }

    v28 = v18 | 0x400000;
    if ((v47 & 1) == 0)
    {
      v28 = v18;
    }

    if (v47 != 2)
    {
      v18 = v28;
    }

    v29 = v18 | 0x800000;
    if ((v46 & 1) == 0)
    {
      v29 = v18;
    }

    if (v46 != 2)
    {
      v18 = v29;
    }

    v30 = v18 | 0x1000000;
    if ((v45 & 1) == 0)
    {
      v30 = v18;
    }

    if (v45 != 2)
    {
      v18 = v30;
    }

    v31 = v18 | 0x8000000;
    if ((v44 & 1) == 0)
    {
      v31 = v18;
    }

    if (v44 != 2)
    {
      v18 = v31;
    }

    v32 = v18 | 0x10000000;
    if ((v43 & 1) == 0)
    {
      v32 = v18;
    }

    if (v43 != 2)
    {
      v18 = v32;
    }

    v33 = v18 | 0x20000000;
    if ((v15 & 1) == 0)
    {
      v33 = v18;
    }

    if (v15 != 2)
    {
      v18 = v33;
    }

    v69 = v18;
    v70 = v18;
    v68 = FMIPFeatures.debugDescription.getter();
    v35 = v34;
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v36 = sub_24A82CDC4();
    sub_24A6797D0(v36, qword_281518F88);

    v37 = sub_24A82CD94();
    v38 = sub_24A82D4C4();

    v67 = v38;
    v39 = v37;
    if (os_log_type_enabled(v37, v38))
    {
      v40 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v70 = v66;
      *v40 = 136315138;
      v41 = sub_24A68761C(v68, v35, &v70);

      *(v40 + 4) = v41;
      _os_log_impl(&dword_24A675000, v39, v67, "FMIPFeature: initialized %s", v40, 0xCu);
      v42 = v66;
      sub_24A6876E8(v66);
      MEMORY[0x24C21E1D0](v42, -1, -1);
      MEMORY[0x24C21E1D0](v40, -1, -1);
    }

    else
    {
    }

    (*(v6 + 8))(v9, v5);
    *v65 = v69;
  }

  return sub_24A6876E8(a1);
}

unint64_t sub_24A685E60()
{
  result = qword_2815144F8;
  if (!qword_2815144F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815144F8);
  }

  return result;
}

unint64_t sub_24A685EB4()
{
  result = qword_281514500;
  if (!qword_281514500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514500);
  }

  return result;
}

unint64_t sub_24A685F08()
{
  result = qword_281514508;
  if (!qword_281514508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514508);
  }

  return result;
}

unint64_t FMIPFeatures.debugDescription.getter()
{
  v1 = *v0;
  sub_24A82D854();

  v2 = sub_24A82DB84();
  MEMORY[0x24C21C9E0](v2);

  MEMORY[0x24C21C9E0](62, 0xE100000000000000);
  return 0xD000000000000019;
}

unsigned __int8 *FMIPPlaySoundMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a2;
  v3 = sub_24A82CA34();
  v104 = *(v3 - 8);
  v105 = v3;
  v4 = *(v104 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A6BBA94(&qword_27EF5FA08, &qword_24A8427B8);
  v106 = *(v7 - 8);
  v8 = *(v106 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v90 - v9;
  v11 = type metadata accessor for FMIPPlaySoundMetadata();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A686AA4();
  v16 = v107;
  sub_24A82DD64();
  if (v16)
  {
    v21 = a1;
    return sub_24A6876E8(v21);
  }

  v100 = v11;
  v101 = v14;
  v102 = v6;
  v107 = a1;
  v17 = v106;
  LOBYTE(v108[0]) = 0;
  v18 = sub_24A82DA94();
  LOBYTE(v108[0]) = 1;
  v19 = sub_24A82DA44();
  v20 = v17;
  v23 = v22;
  v24 = v19;
  v25 = [objc_opt_self() fm:v18 dateFromEpoch:?];
  sub_24A82C9F4();

  LOBYTE(v108[0]) = 2;
  v99 = v10;
  v91 = sub_24A82DA44();
  v98 = v26;
  v27 = v104;
  LOBYTE(v108[0]) = 3;
  v96 = sub_24A82DA44();
  v97 = v28;
  LOBYTE(v108[0]) = 4;
  v94 = sub_24A82DA44();
  v95 = v29;
  LOBYTE(v108[0]) = 5;
  result = sub_24A82DA44();
  v32 = v31;
  v33 = HIBYTE(v23) & 0xF;
  v34 = v24 & 0xFFFFFFFFFFFFLL;
  if ((v23 & 0x2000000000000000) != 0)
  {
    v35 = HIBYTE(v23) & 0xF;
  }

  else
  {
    v35 = v24 & 0xFFFFFFFFFFFFLL;
  }

  v92 = result;
  v93 = v32;
  if (!v35)
  {

    v57 = 1;
    v58 = v105;
    goto LABEL_74;
  }

  if ((v23 & 0x1000000000000000) != 0)
  {
    v109 = 0;
    v38 = sub_24A6D9830(v24, v23, 10);
    v60 = v59;

    if ((v60 & 1) == 0)
    {
      v20 = v17;
      v27 = v104;
      v36 = v101;
      goto LABEL_76;
    }

    v57 = 1;
    v27 = v104;
    v58 = v105;
    v20 = v17;
LABEL_74:
    v36 = v101;
    goto LABEL_80;
  }

  if ((v23 & 0x2000000000000000) == 0)
  {
    v36 = v101;
    if ((v24 & 0x1000000000000000) != 0)
    {
      result = ((v23 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_24A82D8B4();
    }

    v37 = *result;
    if (v37 == 43)
    {
      if (v34 >= 1)
      {
        v33 = v34 - 1;
        if (v34 != 1)
        {
          if (result)
          {
            v38 = 0;
            v45 = result + 1;
            while (1)
            {
              v46 = *v45 - 48;
              if (v46 > 9)
              {
                goto LABEL_68;
              }

              v47 = 10 * v38;
              if ((v38 * 10) >> 64 != (10 * v38) >> 63)
              {
                goto LABEL_68;
              }

              v38 = v47 + v46;
              if (__OFADD__(v47, v46))
              {
                goto LABEL_68;
              }

              ++v45;
              if (!--v33)
              {
                goto LABEL_69;
              }
            }
          }

          goto LABEL_59;
        }

        goto LABEL_68;
      }

      goto LABEL_117;
    }

    if (v37 != 45)
    {
      if (v34)
      {
        if (result)
        {
          v38 = 0;
          while (1)
          {
            v51 = *result - 48;
            if (v51 > 9)
            {
              goto LABEL_68;
            }

            v52 = 10 * v38;
            if ((v38 * 10) >> 64 != (10 * v38) >> 63)
            {
              goto LABEL_68;
            }

            v38 = v52 + v51;
            if (__OFADD__(v52, v51))
            {
              goto LABEL_68;
            }

            ++result;
            if (!--v34)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_59;
      }

LABEL_68:
      v38 = 0;
      LOBYTE(v33) = 1;
      goto LABEL_69;
    }

    if (v34 >= 1)
    {
      v33 = v34 - 1;
      if (v34 != 1)
      {
        if (result)
        {
          v38 = 0;
          v39 = result + 1;
          while (1)
          {
            v40 = *v39 - 48;
            if (v40 > 9)
            {
              goto LABEL_68;
            }

            v41 = 10 * v38;
            if ((v38 * 10) >> 64 != (10 * v38) >> 63)
            {
              goto LABEL_68;
            }

            v38 = v41 - v40;
            if (__OFSUB__(v41, v40))
            {
              goto LABEL_68;
            }

            ++v39;
            if (!--v33)
            {
              goto LABEL_69;
            }
          }
        }

LABEL_59:
        v38 = 0;
LABEL_60:
        LOBYTE(v33) = 0;
LABEL_69:
        v109 = v33;
        v56 = v33;

        if (v56)
        {
          v57 = 1;
LABEL_79:
          v58 = v105;
LABEL_80:
          v61 = v100;
          (*(v27 + 16))(&v36[v100[5]], v102, v58);
          *v36 = v57;
          v62 = v98;
          v63 = v93;
          if (v98)
          {
            v64 = HIBYTE(v98) & 0xF;
            if ((v98 & 0x2000000000000000) == 0)
            {
              v64 = v91 & 0xFFFFFFFFFFFFLL;
            }

            if (v64)
            {
              v65 = &v36[v61[6]];
              *v65 = v91;
              v65[1] = v62;
              goto LABEL_87;
            }
          }

          v66 = &v36[v61[6]];
          *v66 = 0;
          *(v66 + 1) = 0;
LABEL_87:
          v67 = v97;
          if (v97)
          {
            v68 = HIBYTE(v97) & 0xF;
            if ((v97 & 0x2000000000000000) == 0)
            {
              v68 = v96 & 0xFFFFFFFFFFFFLL;
            }

            if (v68)
            {
              v69 = &v36[v61[7]];
              *v69 = v96;
              v69[1] = v67;
              goto LABEL_94;
            }
          }

          v70 = &v36[v61[7]];
          *v70 = 0;
          *(v70 + 1) = 0;
LABEL_94:
          v71 = v95;
          if (v95)
          {
            v72 = HIBYTE(v95) & 0xF;
            if ((v95 & 0x2000000000000000) == 0)
            {
              v72 = v94 & 0xFFFFFFFFFFFFLL;
            }

            if (v72)
            {
              v73 = &v36[v61[8]];
              *v73 = v94;
              v73[1] = v71;
              goto LABEL_101;
            }
          }

          v74 = &v36[v61[8]];
          *v74 = 0;
          *(v74 + 1) = 0;
LABEL_101:
          if (v63)
          {
            v75 = HIBYTE(v63) & 0xF;
            if ((v63 & 0x2000000000000000) == 0)
            {
              v75 = v92 & 0xFFFFFFFFFFFFLL;
            }

            if (v75)
            {
              v76 = &v36[v61[9]];
              *v76 = v92;
              *(v76 + 1) = v63;
LABEL_108:
              v106 = FMIPPlaySoundMetadata.debugDescription.getter();
              v79 = v78;
              if (qword_281515DC8 != -1)
              {
                swift_once();
              }

              v80 = sub_24A82CDC4();
              sub_24A6797D0(v80, qword_281518F88);

              v81 = sub_24A82CD94();
              v82 = sub_24A82D4C4();

              if (os_log_type_enabled(v81, v82))
              {
                v83 = swift_slowAlloc();
                v84 = swift_slowAlloc();
                v104 = v7;
                v85 = v82;
                v86 = v84;
                v108[0] = v84;
                *v83 = 136315138;
                v87 = sub_24A68761C(v106, v79, v108);

                *(v83 + 4) = v87;
                _os_log_impl(&dword_24A675000, v81, v85, "FMIPPlaySoundMetadata: initialized %s", v83, 0xCu);
                sub_24A6876E8(v86);
                MEMORY[0x24C21E1D0](v86, -1, -1);
                v88 = v83;
                v36 = v101;
                MEMORY[0x24C21E1D0](v88, -1, -1);

                (*(v27 + 8))(v102, v105);
                (*(v20 + 8))(v99, v104);
              }

              else
              {

                (*(v27 + 8))(v102, v58);
                (*(v20 + 8))(v99, v7);
              }

              v89 = v107;
              sub_24A68E2A8(v36, v103);
              v21 = v89;
              return sub_24A6876E8(v21);
            }
          }

          v77 = &v36[v61[9]];
          *v77 = 0;
          *(v77 + 1) = 0;
          goto LABEL_108;
        }

LABEL_76:
        FMIPActionStatus.init(rawValue:)(v38);
        if (LOBYTE(v108[0]) == 18)
        {
          v57 = 1;
        }

        else
        {
          v57 = v108[0];
        }

        goto LABEL_79;
      }

      goto LABEL_68;
    }

    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  v108[0] = v24;
  v108[1] = v23 & 0xFFFFFFFFFFFFFFLL;
  v36 = v101;
  if (v24 != 43)
  {
    if (v24 != 45)
    {
      if (v33)
      {
        v38 = 0;
        v53 = v108;
        while (1)
        {
          v54 = *v53 - 48;
          if (v54 > 9)
          {
            break;
          }

          v55 = 10 * v38;
          if ((v38 * 10) >> 64 != (10 * v38) >> 63)
          {
            break;
          }

          v38 = v55 + v54;
          if (__OFADD__(v55, v54))
          {
            break;
          }

          v53 = (v53 + 1);
          if (!--v33)
          {
            goto LABEL_69;
          }
        }
      }

      goto LABEL_68;
    }

    if (v33)
    {
      if (--v33)
      {
        v38 = 0;
        v42 = v108 + 1;
        while (1)
        {
          v43 = *v42 - 48;
          if (v43 > 9)
          {
            break;
          }

          v44 = 10 * v38;
          if ((v38 * 10) >> 64 != (10 * v38) >> 63)
          {
            break;
          }

          v38 = v44 - v43;
          if (__OFSUB__(v44, v43))
          {
            break;
          }

          ++v42;
          if (!--v33)
          {
            goto LABEL_69;
          }
        }
      }

      goto LABEL_68;
    }

    goto LABEL_116;
  }

  if (v33)
  {
    if (--v33)
    {
      v38 = 0;
      v48 = v108 + 1;
      while (1)
      {
        v49 = *v48 - 48;
        if (v49 > 9)
        {
          break;
        }

        v50 = 10 * v38;
        if ((v38 * 10) >> 64 != (10 * v38) >> 63)
        {
          break;
        }

        v38 = v50 + v49;
        if (__OFADD__(v50, v49))
        {
          break;
        }

        ++v48;
        if (!--v33)
        {
          goto LABEL_69;
        }
      }
    }

    goto LABEL_68;
  }

LABEL_118:
  __break(1u);
  return result;
}

unint64_t sub_24A6869F8()
{
  result = qword_281513F70;
  if (!qword_281513F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281513F70);
  }

  return result;
}

unint64_t sub_24A686A50()
{
  result = qword_281513F78;
  if (!qword_281513F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281513F78);
  }

  return result;
}

unint64_t sub_24A686AA4()
{
  result = qword_281513F80[0];
  if (!qword_281513F80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281513F80);
  }

  return result;
}

uint64_t sub_24A686B0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24A82CA34();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

unsigned __int8 *FMIPDeviceLostModeMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v3 = sub_24A82CA34();
  v92 = *(v3 - 8);
  v4 = *(v92 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A6BBA94(&qword_27EF5EE98, &qword_24A83CCE0);
  v93 = *(v7 - 8);
  v8 = *(v93 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v74 - v9;
  v11 = type metadata accessor for FMIPDeviceLostModeMetadata();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v95 = a1;
  sub_24A67DF6C(a1, v15);
  sub_24A6882B0();
  v17 = v94;
  sub_24A82DD64();
  if (v17)
  {
    return sub_24A6876E8(v95);
  }

  v88 = v11;
  v89 = v14;
  v90 = v6;
  v94 = v3;
  v18 = v93;
  LOBYTE(v96[0]) = 8;
  v19 = sub_24A82DA94();
  LOBYTE(v96[0]) = 4;
  v20 = sub_24A82DA44();
  v22 = v21;
  v23 = v20;
  v24 = [objc_opt_self() fm:v19 dateFromEpoch:?];
  sub_24A82C9F4();

  LOBYTE(v96[0]) = 6;
  v25 = sub_24A82DA44();
  v85 = v23;
  v86 = v27;
  v28 = v25;
  v87 = v22;
  LOBYTE(v96[0]) = 1;
  v83 = sub_24A82DA44();
  v84 = v29;
  LOBYTE(v96[0]) = 2;
  v30 = sub_24A82DA04();
  if (v31)
  {
    v32 = v30;
  }

  else
  {
    v32 = 0;
  }

  v33 = 0xE000000000000000;
  if (v31)
  {
    v33 = v31;
  }

  v81 = v32;
  v82 = v33;
  LOBYTE(v96[0]) = 0;
  v98 = sub_24A82DA54();
  LOBYTE(v96[0]) = 3;
  v80 = sub_24A82DA54();
  LOBYTE(v96[0]) = 5;
  v78 = sub_24A82DA54();
  v79 = v28;
  LOBYTE(v96[0]) = 7;
  result = sub_24A82DA54();
  v75 = v10;
  v76 = v7;
  v77 = result;
  v34 = HIBYTE(v87) & 0xF;
  v35 = v85 & 0xFFFFFFFFFFFFLL;
  if ((v87 & 0x2000000000000000) != 0)
  {
    v36 = HIBYTE(v87) & 0xF;
  }

  else
  {
    v36 = v85 & 0xFFFFFFFFFFFFLL;
  }

  if (!v36)
  {

    goto LABEL_71;
  }

  if ((v87 & 0x1000000000000000) != 0)
  {
    v97 = 0;
    v38 = sub_24A6D9830(v85, v87, 10);
    v59 = v58;

    if (v59)
    {
      goto LABEL_71;
    }

    goto LABEL_74;
  }

  if ((v87 & 0x2000000000000000) == 0)
  {
    if ((v85 & 0x1000000000000000) != 0)
    {
      result = ((v87 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_24A82D8B4();
    }

    v37 = *result;
    if (v37 == 43)
    {
      if (v35 >= 1)
      {
        v34 = v35 - 1;
        if (v35 != 1)
        {
          v38 = 0;
          if (result)
          {
            v45 = result + 1;
            while (1)
            {
              v46 = *v45 - 48;
              if (v46 > 9)
              {
                goto LABEL_69;
              }

              v47 = 10 * v38;
              if ((v38 * 10) >> 64 != (10 * v38) >> 63)
              {
                goto LABEL_69;
              }

              v38 = v47 + v46;
              if (__OFADD__(v47, v46))
              {
                goto LABEL_69;
              }

              ++v45;
              if (!--v34)
              {
                goto LABEL_70;
              }
            }
          }

          goto LABEL_61;
        }

        goto LABEL_69;
      }

      goto LABEL_86;
    }

    if (v37 != 45)
    {
      if (v35)
      {
        v38 = 0;
        if (result)
        {
          while (1)
          {
            v51 = *result - 48;
            if (v51 > 9)
            {
              goto LABEL_69;
            }

            v52 = 10 * v38;
            if ((v38 * 10) >> 64 != (10 * v38) >> 63)
            {
              goto LABEL_69;
            }

            v38 = v52 + v51;
            if (__OFADD__(v52, v51))
            {
              goto LABEL_69;
            }

            ++result;
            if (!--v35)
            {
              goto LABEL_61;
            }
          }
        }

        goto LABEL_61;
      }

LABEL_69:
      v38 = 0;
      LOBYTE(v34) = 1;
LABEL_70:
      v97 = v34;
      v56 = v34;

      if (v56)
      {
LABEL_71:
        v57 = 1;
LABEL_77:
        v60 = v89;
        *v89 = v78 & 1;
        v60[1] = v98 & 1;
        v60[2] = v80 & 1;
        v60[3] = v77 & 1;
        v61 = v86;
        *(v60 + 5) = v79;
        *(v60 + 6) = v61;
        v62 = v84;
        *(v60 + 1) = v83;
        *(v60 + 2) = v62;
        v63 = v82;
        *(v60 + 3) = v81;
        *(v60 + 4) = v63;
        (*(v92 + 16))(&v60[*(v88 + 48)], v90, v94);
        v60[56] = v57;
        v64 = FMIPDeviceLostModeMetadata.debugDescription.getter();
        v66 = v65;
        if (qword_281515DC8 != -1)
        {
          swift_once();
        }

        v67 = sub_24A82CDC4();
        sub_24A6797D0(v67, qword_281518F88);

        v68 = sub_24A82CD94();
        v69 = sub_24A82D4C4();

        v70 = v69;
        if (os_log_type_enabled(v68, v69))
        {
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v96[0] = v72;
          *v71 = 136315138;
          v73 = sub_24A68761C(v64, v66, v96);

          *(v71 + 4) = v73;
          _os_log_impl(&dword_24A675000, v68, v70, "FMIPDeviceLostModeMetadata: initialized %s", v71, 0xCu);
          sub_24A6876E8(v72);
          MEMORY[0x24C21E1D0](v72, -1, -1);
          MEMORY[0x24C21E1D0](v71, -1, -1);
        }

        else
        {
        }

        (*(v92 + 8))(v90, v94);
        (*(v18 + 8))(v75, v76);
        sub_24A68EEF4(v89, v91);
        return sub_24A6876E8(v95);
      }

LABEL_74:
      FMIPActionStatus.init(rawValue:)(v38);
      if (LOBYTE(v96[0]) == 18)
      {
        v57 = 1;
      }

      else
      {
        v57 = v96[0];
      }

      goto LABEL_77;
    }

    if (v35 >= 1)
    {
      v34 = v35 - 1;
      if (v35 != 1)
      {
        v38 = 0;
        if (result)
        {
          v39 = result + 1;
          while (1)
          {
            v40 = *v39 - 48;
            if (v40 > 9)
            {
              goto LABEL_69;
            }

            v41 = 10 * v38;
            if ((v38 * 10) >> 64 != (10 * v38) >> 63)
            {
              goto LABEL_69;
            }

            v38 = v41 - v40;
            if (__OFSUB__(v41, v40))
            {
              goto LABEL_69;
            }

            ++v39;
            if (!--v34)
            {
              goto LABEL_70;
            }
          }
        }

LABEL_61:
        LOBYTE(v34) = 0;
        goto LABEL_70;
      }

      goto LABEL_69;
    }

    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v96[0] = v85;
  v96[1] = v87 & 0xFFFFFFFFFFFFFFLL;
  if (v85 != 43)
  {
    if (v85 != 45)
    {
      if (v34)
      {
        v38 = 0;
        v53 = v96;
        while (1)
        {
          v54 = *v53 - 48;
          if (v54 > 9)
          {
            break;
          }

          v55 = 10 * v38;
          if ((v38 * 10) >> 64 != (10 * v38) >> 63)
          {
            break;
          }

          v38 = v55 + v54;
          if (__OFADD__(v55, v54))
          {
            break;
          }

          v53 = (v53 + 1);
          if (!--v34)
          {
            goto LABEL_70;
          }
        }
      }

      goto LABEL_69;
    }

    if (v34)
    {
      if (--v34)
      {
        v38 = 0;
        v42 = v96 + 1;
        while (1)
        {
          v43 = *v42 - 48;
          if (v43 > 9)
          {
            break;
          }

          v44 = 10 * v38;
          if ((v38 * 10) >> 64 != (10 * v38) >> 63)
          {
            break;
          }

          v38 = v44 - v43;
          if (__OFSUB__(v44, v43))
          {
            break;
          }

          ++v42;
          if (!--v34)
          {
            goto LABEL_70;
          }
        }
      }

      goto LABEL_69;
    }

    goto LABEL_85;
  }

  if (v34)
  {
    if (--v34)
    {
      v38 = 0;
      v48 = v96 + 1;
      while (1)
      {
        v49 = *v48 - 48;
        if (v49 > 9)
        {
          break;
        }

        v50 = 10 * v38;
        if ((v38 * 10) >> 64 != (10 * v38) >> 63)
        {
          break;
        }

        v38 = v50 + v49;
        if (__OFADD__(v50, v49))
        {
          break;
        }

        ++v48;
        if (!--v34)
        {
          goto LABEL_70;
        }
      }
    }

    goto LABEL_69;
  }

LABEL_87:
  __break(1u);
  return result;
}

uint64_t sub_24A68754C()
{
  v0 = objc_opt_self();
  v1 = sub_24A82CF94();
  v2 = sub_24A82CF94();
  v3 = [v0 stringForKey:v1 inDomain:v2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_24A82CFC4();

  return v4;
}

uint64_t sub_24A68761C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24A67CE0C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_24A67E168(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_24A6876E8(v11);
  return v7;
}

uint64_t sub_24A6876E8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_24A687738()
{
  sub_24A687858();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_24A687858()
{
  if (!qword_281514660)
  {
    sub_24A82CAE4();
    v0 = sub_24A82D634();
    if (!v1)
    {
      atomic_store(v0, &qword_281514660);
    }
  }
}

uint64_t sub_24A6878D8()
{
  result = sub_24A82CC84();
  if (v1 <= 0x3F)
  {
    result = sub_24A82CCB4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24A68795C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_24A6CCDC0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t FMDiskIO.KeyPair.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v36 = sub_24A82CCB4();
  v31 = *(v36 - 8);
  v3 = *(v31 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_24A82CC84();
  v34 = *(v39 - 8);
  v5 = *(v34 + 64);
  MEMORY[0x28223BE20](v39);
  v37 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FMDiskIO.KeyPair.CodingKeys();
  swift_getWitnessTable();
  v40 = sub_24A82DAB4();
  v33 = *(v40 - 8);
  v7 = *(v33 + 64);
  MEMORY[0x28223BE20](v40);
  v9 = &v28 - v8;
  v10 = type metadata accessor for FMDiskIO.KeyPair();
  v30 = *(v10 - 8);
  v11 = *(v30 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  v14 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  v38 = v9;
  v15 = v41;
  sub_24A82DD64();
  if (v15)
  {
    return sub_24A6876E8(a1);
  }

  v16 = v13;
  v41 = v10;
  v18 = v33;
  v17 = v34;
  v19 = v35;
  v20 = v36;
  v43 = 0;
  sub_24A67E858(&qword_27EF5FA78, MEMORY[0x277D08EF0]);
  v22 = v37;
  v21 = v38;
  sub_24A82DA84();
  v23 = *(v17 + 32);
  v29 = v16;
  v23(v16, v22, v39);
  v42 = 1;
  sub_24A67E858(qword_27EF5FA80, MEMORY[0x277D08F08]);
  sub_24A82DA84();
  (*(v18 + 8))(v21, v40);
  v24 = v41;
  v25 = v29;
  (*(v31 + 32))(&v29[*(v41 + 44)], v19, v20);
  v26 = v30;
  (*(v30 + 16))(v32, v25, v24);
  sub_24A6876E8(a1);
  return (*(v26 + 8))(v25, v24);
}

uint64_t sub_24A687E88(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_24A67E8A0(*v1);
}

unint64_t sub_24A687E9C()
{
  result = qword_281513F48;
  if (!qword_281513F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281513F48);
  }

  return result;
}

unint64_t sub_24A687EF0()
{
  result = qword_2815144C0;
  if (!qword_2815144C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815144C0);
  }

  return result;
}

unint64_t sub_24A687F6C()
{
  result = qword_2815144D0;
  if (!qword_2815144D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815144D0);
  }

  return result;
}

unint64_t sub_24A687FC4()
{
  result = qword_2815144D8;
  if (!qword_2815144D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815144D8);
  }

  return result;
}

unint64_t sub_24A688018()
{
  result = qword_2815144E0;
  if (!qword_2815144E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815144E0);
  }

  return result;
}

double sub_24A68808C(_OWORD *a1)
{
  result = 0.0;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

unint64_t sub_24A6880E4()
{
  result = qword_2815145F8;
  if (!qword_2815145F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815145F8);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for FMIPFeatures.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE3)
  {
    v4 = 0;
  }

  if (a2 > 0xE2)
  {
    v5 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
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
    *result = a2 + 29;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24A688204()
{
  result = qword_2815135A8;
  if (!qword_2815135A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815135A8);
  }

  return result;
}

unint64_t sub_24A68825C()
{
  result = qword_2815135B0;
  if (!qword_2815135B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815135B0);
  }

  return result;
}

unint64_t sub_24A6882B0()
{
  result = qword_2815135B8[0];
  if (!qword_2815135B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2815135B8);
  }

  return result;
}

uint64_t sub_24A688318(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_24A82CA34();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void FMIPLockMetadata.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v76 = sub_24A82CA34();
  v74 = *(v76 - 8);
  v3 = *(v74 + 64);
  MEMORY[0x28223BE20](v76);
  v5 = v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A6BBA94(&qword_27EF5DB80, &qword_24A835AC0);
  v75 = *(v6 - 8);
  v7 = *(v75 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v69 - v8;
  v10 = type metadata accessor for FMIPLockMetadata();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A688C74();
  v15 = v77;
  sub_24A82DD64();
  if (v15)
  {
    sub_24A6876E8(a1);
    return;
  }

  v70 = v10;
  v71 = v13;
  v72 = v5;
  v77 = a1;
  v17 = v75;
  v16 = v76;
  LOBYTE(v78[0]) = 0;
  v18 = sub_24A82DA94();
  LOBYTE(v78[0]) = 1;
  v19 = sub_24A82DA44();
  v20 = v17;
  v69[1] = 0;
  v21 = v19;
  v69[0] = v9;
  v23 = v22;
  v24 = [objc_opt_self() fm:v18 dateFromEpoch:?];
  v25 = v72;
  sub_24A82C9F4();

  v26 = HIBYTE(v23) & 0xF;
  v27 = v21 & 0xFFFFFFFFFFFFLL;
  if ((v23 & 0x2000000000000000) != 0)
  {
    v28 = HIBYTE(v23) & 0xF;
  }

  else
  {
    v28 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (v28)
  {
    v29 = v74;
    if ((v23 & 0x1000000000000000) != 0)
    {
      v79 = 0;
      v35 = sub_24A6D9830(v21, v23, 10);
      v57 = v56;

      if (v57)
      {
        v54 = 1;
        v30 = v16;
        v20 = v17;
        v29 = v74;
        v31 = v71;
        v33 = v72;
        goto LABEL_74;
      }

      v30 = v16;
      v20 = v17;
      v29 = v74;
      v31 = v71;
      v33 = v72;
LABEL_71:
      FMIPActionStatus.init(rawValue:)(v35);
      if (LOBYTE(v78[0]) == 18)
      {
        v54 = 1;
      }

      else
      {
        v54 = v78[0];
      }

      goto LABEL_74;
    }

    v30 = v16;
    if ((v23 & 0x2000000000000000) != 0)
    {
      v78[0] = v21;
      v78[1] = v23 & 0xFFFFFFFFFFFFFFLL;
      v31 = v71;
      if (v21 == 43)
      {
        if (v26)
        {
          v33 = v25;
          if (--v26)
          {
            v35 = 0;
            v45 = v78 + 1;
            while (1)
            {
              v46 = *v45 - 48;
              if (v46 > 9)
              {
                break;
              }

              v47 = 10 * v35;
              if ((v35 * 10) >> 64 != (10 * v35) >> 63)
              {
                break;
              }

              v35 = v47 + v46;
              if (__OFADD__(v47, v46))
              {
                break;
              }

              ++v45;
              if (!--v26)
              {
                goto LABEL_65;
              }
            }
          }

          goto LABEL_64;
        }

LABEL_85:
        __break(1u);
        return;
      }

      v33 = v25;
      if (v21 != 45)
      {
        if (v26)
        {
          v35 = 0;
          v50 = v78;
          while (1)
          {
            v51 = *v50 - 48;
            if (v51 > 9)
            {
              break;
            }

            v52 = 10 * v35;
            if ((v35 * 10) >> 64 != (10 * v35) >> 63)
            {
              break;
            }

            v35 = v52 + v51;
            if (__OFADD__(v52, v51))
            {
              break;
            }

            v50 = (v50 + 1);
            if (!--v26)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_64;
      }

      if (v26)
      {
        if (--v26)
        {
          v35 = 0;
          v39 = v78 + 1;
          while (1)
          {
            v40 = *v39 - 48;
            if (v40 > 9)
            {
              break;
            }

            v41 = 10 * v35;
            if ((v35 * 10) >> 64 != (10 * v35) >> 63)
            {
              break;
            }

            v35 = v41 - v40;
            if (__OFSUB__(v41, v40))
            {
              break;
            }

            ++v39;
            if (!--v26)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_64;
      }
    }

    else
    {
      v31 = v71;
      if ((v21 & 0x1000000000000000) != 0)
      {
        v32 = ((v23 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v32 = sub_24A82D8B4();
      }

      v33 = v25;
      v34 = *v32;
      if (v34 == 43)
      {
        if (v27 >= 1)
        {
          v26 = v27 - 1;
          if (v27 != 1)
          {
            v35 = 0;
            if (v32)
            {
              v42 = v32 + 1;
              while (1)
              {
                v43 = *v42 - 48;
                if (v43 > 9)
                {
                  goto LABEL_64;
                }

                v44 = 10 * v35;
                if ((v35 * 10) >> 64 != (10 * v35) >> 63)
                {
                  goto LABEL_64;
                }

                v35 = v44 + v43;
                if (__OFADD__(v44, v43))
                {
                  goto LABEL_64;
                }

                ++v42;
                if (!--v26)
                {
                  goto LABEL_65;
                }
              }
            }

            goto LABEL_56;
          }

          goto LABEL_64;
        }

        goto LABEL_84;
      }

      if (v34 != 45)
      {
        if (v27)
        {
          v35 = 0;
          if (v32)
          {
            while (1)
            {
              v48 = *v32 - 48;
              if (v48 > 9)
              {
                goto LABEL_64;
              }

              v49 = 10 * v35;
              if ((v35 * 10) >> 64 != (10 * v35) >> 63)
              {
                goto LABEL_64;
              }

              v35 = v49 + v48;
              if (__OFADD__(v49, v48))
              {
                goto LABEL_64;
              }

              ++v32;
              if (!--v27)
              {
                goto LABEL_56;
              }
            }
          }

          goto LABEL_56;
        }

LABEL_64:
        v35 = 0;
        LOBYTE(v26) = 1;
LABEL_65:
        v79 = v26;
        v53 = v26;

        if (v53)
        {
          v54 = 1;
LABEL_74:
          v55 = v70;
          goto LABEL_75;
        }

        goto LABEL_71;
      }

      if (v27 >= 1)
      {
        v26 = v27 - 1;
        if (v27 != 1)
        {
          v35 = 0;
          if (v32)
          {
            v36 = v32 + 1;
            while (1)
            {
              v37 = *v36 - 48;
              if (v37 > 9)
              {
                goto LABEL_64;
              }

              v38 = 10 * v35;
              if ((v35 * 10) >> 64 != (10 * v35) >> 63)
              {
                goto LABEL_64;
              }

              v35 = v38 - v37;
              if (__OFSUB__(v38, v37))
              {
                goto LABEL_64;
              }

              ++v36;
              if (!--v26)
              {
                goto LABEL_65;
              }
            }
          }

LABEL_56:
          LOBYTE(v26) = 0;
          goto LABEL_65;
        }

        goto LABEL_64;
      }

      __break(1u);
    }

    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v54 = 1;
  v30 = v16;
  v29 = v74;
  v55 = v70;
  v31 = v71;
  v33 = v25;
LABEL_75:
  (*(v29 + 16))(&v31[*(v55 + 20)], v33, v30);
  *v31 = v54;
  v75 = FMIPLockMetadata.debugDescription.getter();
  v59 = v58;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v60 = sub_24A82CDC4();
  sub_24A6797D0(v60, qword_281518F88);

  v61 = sub_24A82CD94();
  v62 = sub_24A82D4C4();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v78[0] = v64;
    *v63 = 136315138;
    v65 = v62;
    v66 = sub_24A68761C(v75, v59, v78);

    *(v63 + 4) = v66;
    _os_log_impl(&dword_24A675000, v61, v65, "FMIPLockMetadata: initialized %s", v63, 0xCu);
    sub_24A6876E8(v64);
    v67 = v64;
    v31 = v71;
    MEMORY[0x24C21E1D0](v67, -1, -1);
    MEMORY[0x24C21E1D0](v63, -1, -1);

    (*(v29 + 8))(v72, v76);
  }

  else
  {

    (*(v29 + 8))(v33, v30);
  }

  (*(v20 + 8))(v69[0], v6);
  v68 = v77;
  sub_24A70455C(v31, v73);
  sub_24A6876E8(v68);
}

unint64_t sub_24A688BC8()
{
  result = qword_281514168;
  if (!qword_281514168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514168);
  }

  return result;
}

unint64_t sub_24A688C20()
{
  result = qword_281514170;
  if (!qword_281514170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514170);
  }

  return result;
}

unint64_t sub_24A688C74()
{
  result = qword_281514178[0];
  if (!qword_281514178[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281514178);
  }

  return result;
}

_BYTE *sub_24A688CDC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 238)
  {
    *result = a2 + 17;
  }

  else
  {
    v7 = sub_24A82CA34();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t FMIPEraseMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v3 = sub_24A82CA34();
  v4 = *(v3 - 8);
  v81 = v3;
  v82 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A6BBA94(&qword_27EF5D590, &qword_24A833290);
  v83 = *(v8 - 8);
  v9 = *(v83 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v73 - v10;
  v12 = type metadata accessor for FMIPEraseMetadata();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A6896EC();
  v17 = v84;
  sub_24A82DD64();
  if (v17)
  {
    return sub_24A6876E8(a1);
  }

  v78 = v12;
  v79 = v15;
  v84 = v7;
  LOBYTE(v85[0]) = 2;
  v18 = sub_24A82DA94();
  LOBYTE(v85[0]) = 3;
  v19 = sub_24A82DA44();
  v21 = v20;
  v22 = [objc_opt_self() fm:v18 dateFromEpoch:?];
  v23 = v84;
  sub_24A82C9F4();

  LOBYTE(v85[0]) = 0;
  v76 = sub_24A82DA44();
  v77 = v24;
  LOBYTE(v85[0]) = 1;
  v74 = sub_24A82DA44();
  v75 = v25;
  LOBYTE(v85[0]) = 4;
  result = sub_24A82DA54();
  v27 = (HIBYTE(v21) & 0xF);
  v28 = v19 & 0xFFFFFFFFFFFFLL;
  if ((v21 & 0x2000000000000000) != 0)
  {
    v29 = HIBYTE(v21) & 0xF;
  }

  else
  {
    v29 = v19 & 0xFFFFFFFFFFFFLL;
  }

  v87 = result;
  if (!v29)
  {

    v52 = 1;
    goto LABEL_74;
  }

  if ((v21 & 0x1000000000000000) != 0)
  {
    v86 = 0;
    v32 = sub_24A6D9830(v19, v21, 10);
    v54 = v53;

    if (v54)
    {
      v52 = 1;
      v23 = v84;
      goto LABEL_74;
    }

    v23 = v84;
    goto LABEL_71;
  }

  if ((v21 & 0x2000000000000000) == 0)
  {
    if ((v19 & 0x1000000000000000) != 0)
    {
      v27 = ((v21 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_24A82D8B4();
      v27 = result;
    }

    v30 = *v27;
    if (v30 == 43)
    {
      if (v28 >= 1)
      {
        v39 = v28 - 1;
        if (v28 != 1)
        {
          v32 = 0;
          if (!v27)
          {
            goto LABEL_65;
          }

          v40 = v27 + 1;
          while (1)
          {
            v41 = *v40 - 48;
            if (v41 > 9)
            {
              break;
            }

            v42 = 10 * v32;
            if ((v32 * 10) >> 64 != (10 * v32) >> 63)
            {
              break;
            }

            v32 = v42 + v41;
            if (__OFADD__(v42, v41))
            {
              break;
            }

            ++v40;
            if (!--v39)
            {
LABEL_56:
              LOBYTE(v27) = 0;
              goto LABEL_65;
            }
          }
        }

        goto LABEL_64;
      }

      goto LABEL_83;
    }

    if (v30 == 45)
    {
      if (v28 >= 1)
      {
        v31 = v28 - 1;
        if (v28 != 1)
        {
          v32 = 0;
          if (!v27)
          {
            goto LABEL_65;
          }

          v33 = v27 + 1;
          while (1)
          {
            v34 = *v33 - 48;
            if (v34 > 9)
            {
              break;
            }

            v35 = 10 * v32;
            if ((v32 * 10) >> 64 != (10 * v32) >> 63)
            {
              break;
            }

            v32 = v35 - v34;
            if (__OFSUB__(v35, v34))
            {
              break;
            }

            ++v33;
            if (!--v31)
            {
              goto LABEL_56;
            }
          }
        }

        goto LABEL_64;
      }

      __break(1u);
      goto LABEL_82;
    }

    if (v28)
    {
      v32 = 0;
      if (!v27)
      {
        goto LABEL_65;
      }

      while (1)
      {
        v46 = *v27 - 48;
        if (v46 > 9)
        {
          break;
        }

        v47 = 10 * v32;
        if ((v32 * 10) >> 64 != (10 * v32) >> 63)
        {
          break;
        }

        v32 = v47 + v46;
        if (__OFADD__(v47, v46))
        {
          break;
        }

        ++v27;
        if (!--v28)
        {
          goto LABEL_56;
        }
      }
    }

    goto LABEL_64;
  }

  v85[0] = v19;
  v85[1] = v21 & 0xFFFFFFFFFFFFFFLL;
  if (v19 != 43)
  {
    if (v19 == 45)
    {
      if (!v27)
      {
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      if (--v27)
      {
        v32 = 0;
        v36 = v85 + 1;
        while (1)
        {
          v37 = *v36 - 48;
          if (v37 > 9)
          {
            break;
          }

          v38 = 10 * v32;
          if ((v32 * 10) >> 64 != (10 * v32) >> 63)
          {
            break;
          }

          v32 = v38 - v37;
          if (__OFSUB__(v38, v37))
          {
            break;
          }

          ++v36;
          if (!--v27)
          {
            goto LABEL_65;
          }
        }
      }
    }

    else if (v27)
    {
      v32 = 0;
      v48 = v85;
      while (1)
      {
        v49 = *v48 - 48;
        if (v49 > 9)
        {
          break;
        }

        v50 = 10 * v32;
        if ((v32 * 10) >> 64 != (10 * v32) >> 63)
        {
          break;
        }

        v32 = v50 + v49;
        if (__OFADD__(v50, v49))
        {
          break;
        }

        v48 = (v48 + 1);
        if (!--v27)
        {
          goto LABEL_65;
        }
      }
    }

LABEL_64:
    v32 = 0;
    LOBYTE(v27) = 1;
LABEL_65:
    v86 = v27;
    v51 = v27;

    if (v51)
    {
      v52 = 1;
LABEL_74:
      v55 = v77;
      v56 = v78;
      v57 = v75;
      v58 = v74;
      v59 = v79;
      v60 = &v79[v78[7]];
      *v60 = v76;
      v60[1] = v55;
      v61 = &v59[v56[6]];
      *v61 = v58;
      v61[1] = v57;
      v62 = v23;
      v63 = v81;
      (*(v82 + 16))(&v59[v56[5]], v62, v81);
      *v59 = v52;
      v59[v56[8]] = v87 & 1;
      v77 = FMIPEraseMetadata.debugDescription.getter();
      v65 = v64;
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v66 = sub_24A82CDC4();
      sub_24A6797D0(v66, qword_281518F88);

      v67 = sub_24A82CD94();
      v68 = sub_24A82D4C4();

      LODWORD(v78) = v68;
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v85[0] = v70;
        *v69 = 136315138;
        v71 = v67;
        v72 = sub_24A68761C(v77, v65, v85);

        *(v69 + 4) = v72;
        _os_log_impl(&dword_24A675000, v71, v78, "FMIPEraseMetadata: initialized %s", v69, 0xCu);
        sub_24A6876E8(v70);
        MEMORY[0x24C21E1D0](v70, -1, -1);
        v59 = v79;
        MEMORY[0x24C21E1D0](v69, -1, -1);

        (*(v82 + 8))(v84, v81);
      }

      else
      {

        (*(v82 + 8))(v84, v63);
      }

      (*(v83 + 8))(v11, v8);
      sub_24A6D9DBC(v59, v80);
      return sub_24A6876E8(a1);
    }

LABEL_71:
    FMIPActionStatus.init(rawValue:)(v32);
    if (LOBYTE(v85[0]) == 18)
    {
      v52 = 1;
    }

    else
    {
      v52 = v85[0];
    }

    goto LABEL_74;
  }

  if (v27)
  {
    if (--v27)
    {
      v32 = 0;
      v43 = v85 + 1;
      while (1)
      {
        v44 = *v43 - 48;
        if (v44 > 9)
        {
          break;
        }

        v45 = 10 * v32;
        if ((v32 * 10) >> 64 != (10 * v32) >> 63)
        {
          break;
        }

        v32 = v45 + v44;
        if (__OFADD__(v45, v44))
        {
          break;
        }

        ++v43;
        if (!--v27)
        {
          goto LABEL_65;
        }
      }
    }

    goto LABEL_64;
  }

LABEL_84:
  __break(1u);
  return result;
}

unint64_t sub_24A689640()
{
  result = qword_281514138;
  if (!qword_281514138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514138);
  }

  return result;
}

unint64_t sub_24A689698()
{
  result = qword_281514140;
  if (!qword_281514140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514140);
  }

  return result;
}

unint64_t sub_24A6896EC()
{
  result = qword_281514148;
  if (!qword_281514148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514148);
  }

  return result;
}

uint64_t sub_24A689754(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24A82CA34();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

unint64_t sub_24A689824()
{
  result = qword_27EF5E000;
  if (!qword_27EF5E000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E000);
  }

  return result;
}

unint64_t sub_24A689878()
{
  result = qword_27EF5F280;
  if (!qword_27EF5F280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F280);
  }

  return result;
}

uint64_t FMIPBeaconType.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v79 = a2;
  v3 = sub_24A6BBA94(&qword_27EF5F218, &qword_24A83DEC0);
  v74 = *(v3 - 8);
  v75 = v3;
  v4 = *(v74 + 64);
  MEMORY[0x28223BE20](v3);
  v78 = &v59[-v5];
  v6 = sub_24A6BBA94(&qword_27EF5F220, &qword_24A83DEC8);
  v72 = *(v6 - 8);
  v73 = v6;
  v7 = *(v72 + 64);
  MEMORY[0x28223BE20](v6);
  v81 = &v59[-v8];
  v9 = sub_24A6BBA94(&qword_27EF5F228, &qword_24A83DED0);
  v10 = *(v9 - 8);
  v70 = v9;
  v71 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v77 = &v59[-v12];
  v13 = sub_24A6BBA94(&qword_27EF5F230, &qword_24A83DED8);
  v14 = *(v13 - 8);
  v68 = v13;
  v69 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v76 = &v59[-v16];
  v17 = sub_24A6BBA94(&qword_27EF5F238, &qword_24A83DEE0);
  v66 = *(v17 - 8);
  v67 = v17;
  v18 = *(v66 + 64);
  MEMORY[0x28223BE20](v17);
  v80 = &v59[-v19];
  v20 = sub_24A6BBA94(&qword_27EF5F240, &qword_24A83DEE8);
  v64 = *(v20 - 8);
  v65 = v20;
  v21 = *(v64 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v59[-v22];
  v24 = sub_24A6BBA94(&qword_27EF5F248, &qword_24A83DEF0);
  v63 = *(v24 - 8);
  v25 = *(v63 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v59[-v26];
  v28 = sub_24A6BBA94(&qword_27EF5F250, &qword_24A83DEF8);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v59[-v31];
  v33 = a1[3];
  v34 = a1[4];
  v82 = a1;
  sub_24A67DF6C(a1, v33);
  sub_24A68A874();
  v35 = v83;
  sub_24A82DD64();
  if (!v35)
  {
    v61 = v24;
    v36 = v80;
    v37 = v81;
    v62 = v29;
    v83 = v28;
    v38 = sub_24A82DAA4();
    if (*(v38 + 16) == 1)
    {
      v39 = *(v38 + 32);
      if (v39 != 7)
      {
        v60 = *(v38 + 32);
        if (v39 > 2)
        {
          if (v39 > 4)
          {
            v40 = v39 == 5;
            v41 = v79;
            v51 = v83;
            if (v40)
            {
              v89 = 5;
              sub_24A7E02C4();
              sub_24A82D9D4();
              v56 = v62;
              (*(v72 + 8))(v37, v73);
            }

            else
            {
              v90 = 6;
              sub_24A7E0270();
              v55 = v78;
              sub_24A82D9D4();
              v56 = v62;
              (*(v74 + 8))(v55, v75);
            }

            (*(v56 + 8))(v32, v51);
          }

          else
          {
            v40 = v39 == 3;
            v41 = v79;
            v42 = v83;
            if (v40)
            {
              v87 = 3;
              sub_24A7E036C();
              v43 = v76;
              sub_24A82D9D4();
              v54 = v62;
              (*(v69 + 8))(v43, v68);
            }

            else
            {
              v88 = 4;
              sub_24A7E0318();
              v53 = v77;
              sub_24A82D9D4();
              v54 = v62;
              (*(v71 + 8))(v53, v70);
            }

            (*(v54 + 8))(v32, v42);
          }

          swift_unknownObjectRelease();
          v57 = v82;
          goto LABEL_25;
        }

        if (v39)
        {
          if (v39 == 1)
          {
            v85 = 1;
            sub_24A7E0414();
            v49 = v32;
            v50 = v83;
            sub_24A82D9D4();
            (*(v64 + 8))(v23, v65);
            (*(v62 + 8))(v49, v50);
LABEL_21:
            swift_unknownObjectRelease();
            v57 = v82;
            v41 = v79;
LABEL_25:
            *v41 = v60;
            return sub_24A6876E8(v57);
          }

          v86 = 2;
          sub_24A7E03C0();
          v52 = v83;
          sub_24A82D9D4();
          (*(v66 + 8))(v36, v67);
        }

        else
        {
          v84 = 0;
          sub_24A68ABEC();
          v52 = v83;
          sub_24A82D9D4();
          (*(v63 + 8))(v27, v61);
        }

        (*(v62 + 8))(v32, v52);
        goto LABEL_21;
      }
    }

    v44 = sub_24A82D8A4();
    swift_allocError();
    v46 = v45;
    v47 = *(sub_24A6BBA94(&qword_27EF5F258, &qword_24A83DF00) + 48);
    *v46 = &type metadata for FMIPBeaconType;
    v48 = v83;
    sub_24A82D9E4();
    sub_24A82D894();
    (*(*(v44 - 8) + 104))(v46, *MEMORY[0x277D84160], v44);
    swift_willThrow();
    (*(v62 + 8))(v32, v48);
    swift_unknownObjectRelease();
  }

  v57 = v82;
  return sub_24A6876E8(v57);
}

unint64_t sub_24A68A288()
{
  result = qword_27EF5F390;
  if (!qword_27EF5F390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F390);
  }

  return result;
}

unint64_t sub_24A68A2E0()
{
  result = qword_27EF5F398;
  if (!qword_27EF5F398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F398);
  }

  return result;
}

unint64_t sub_24A68A348()
{
  result = qword_27EF5F380;
  if (!qword_27EF5F380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F380);
  }

  return result;
}

unint64_t sub_24A68A3A0()
{
  result = qword_27EF5F388;
  if (!qword_27EF5F388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F388);
  }

  return result;
}

unint64_t sub_24A68A408()
{
  result = qword_27EF5F370;
  if (!qword_27EF5F370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F370);
  }

  return result;
}

unint64_t sub_24A68A460()
{
  result = qword_27EF5F378;
  if (!qword_27EF5F378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F378);
  }

  return result;
}

unint64_t sub_24A68A4C8()
{
  result = qword_27EF5F360;
  if (!qword_27EF5F360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F360);
  }

  return result;
}

unint64_t sub_24A68A520()
{
  result = qword_27EF5F368;
  if (!qword_27EF5F368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F368);
  }

  return result;
}

unint64_t sub_24A68A588()
{
  result = qword_27EF5F350;
  if (!qword_27EF5F350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F350);
  }

  return result;
}

unint64_t sub_24A68A5E0()
{
  result = qword_27EF5F358;
  if (!qword_27EF5F358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F358);
  }

  return result;
}

unint64_t sub_24A68A648()
{
  result = qword_27EF5F340;
  if (!qword_27EF5F340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F340);
  }

  return result;
}

unint64_t sub_24A68A6A0()
{
  result = qword_27EF5F348;
  if (!qword_27EF5F348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F348);
  }

  return result;
}

unint64_t sub_24A68A708()
{
  result = qword_27EF5F330;
  if (!qword_27EF5F330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F330);
  }

  return result;
}

unint64_t sub_24A68A760()
{
  result = qword_27EF5F338;
  if (!qword_27EF5F338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F338);
  }

  return result;
}

unint64_t sub_24A68A7C8()
{
  result = qword_27EF5F3A0;
  if (!qword_27EF5F3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F3A0);
  }

  return result;
}

unint64_t sub_24A68A820()
{
  result = qword_27EF5F3A8;
  if (!qword_27EF5F3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F3A8);
  }

  return result;
}

unint64_t sub_24A68A874()
{
  result = qword_27EF5F1D8;
  if (!qword_27EF5F1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F1D8);
  }

  return result;
}

uint64_t sub_24A68A8C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A68A8F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A68A8F0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_24A82DC04() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x63616542666C6573 && a2 == 0xED0000676E696E6FLL || (sub_24A82DC04() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6169727564 && a2 == 0xE600000000000000 || (sub_24A82DC04() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xE900000000000079 || (sub_24A82DC04() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701602664 && a2 == 0xE400000000000000 || (sub_24A82DC04() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E69466C61636F6CLL && a2 == 0xED0000656C626164 || (sub_24A82DC04() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4D6C617574726976 && a2 == 0xEF65636976654465)
  {

    return 6;
  }

  else
  {
    v6 = sub_24A82DC04();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t getEnumTagSinglePayload for FMIPItemBatteryStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_24A68ABEC()
{
  result = qword_27EF5F210;
  if (!qword_27EF5F210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F210);
  }

  return result;
}

uint64_t sub_24A68AC40()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 0x6E69466C61636F6CLL;
  if (v1 != 5)
  {
    v3 = 0x4D6C617574726976;
  }

  v4 = 0x726F737365636361;
  if (v1 != 3)
  {
    v4 = 1701602664;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x63616542666C6573;
  if (v1 != 1)
  {
    v5 = 0x6E6169727564;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t storeEnumTagSinglePayload for FMIPItemBatteryStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}