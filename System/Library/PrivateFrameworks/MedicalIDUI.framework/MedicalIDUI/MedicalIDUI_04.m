uint64_t static MedicalIDSpokenLanguage.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_2588BDF98() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_2588BDF98() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_2588BDF98();
}

uint64_t MedicalIDSpokenLanguage.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MedicalIDSpokenLanguage.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MedicalIDSpokenLanguage.languageInCurrentLocale.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MedicalIDSpokenLanguage.languageInCurrentLocale.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t MedicalIDSpokenLanguage.languageInLanguageLocale.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t MedicalIDSpokenLanguage.languageInLanguageLocale.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t MedicalIDSpokenLanguage.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_2588BD908();
  sub_2588BD908();

  return sub_2588BD908();
}

uint64_t MedicalIDSpokenLanguage.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_2588BE038();
  sub_2588BD908();
  sub_2588BD908();
  sub_2588BD908();
  return sub_2588BE078();
}

uint64_t sub_2587F3498@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_2587F34A4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_2588BE038();
  sub_2588BD908();
  sub_2588BD908();
  sub_2588BD908();
  return sub_2588BE078();
}

uint64_t sub_2587F3528()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_2588BD908();
  sub_2588BD908();

  return sub_2588BD908();
}

uint64_t sub_2587F3594()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_2588BE038();
  sub_2588BD908();
  sub_2588BD908();
  sub_2588BD908();
  return sub_2588BE078();
}

uint64_t sub_2587F3614(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_2588BDF98() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_2588BDF98() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_2588BDF98();
}

unint64_t sub_2587F371C()
{
  result = qword_27F95E868;
  if (!qword_27F95E868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E868);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2587F3784(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2587F37CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t EditOrganDonationCellViewModel.__allocating_init(outOrganDonationStatus:hasStoredRegistrant:medicalIDDonorStatusProvider:organDonationRegistrationAvailable:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(v7 + 48);
  v16 = *(v7 + 52);
  v17 = swift_allocObject();
  v18 = *a1;
  v19 = a1[1];
  LOBYTE(a1) = *(a1 + 16);
  *(v17 + 16) = 0;
  *(v17 + 41) = 0;
  *(v17 + 65) = 3;
  sub_2588BBBC8();
  *(v17 + 24) = v18;
  *(v17 + 32) = v19;
  *(v17 + 40) = a1;
  v22 = v18;
  v23 = v19;
  v24 = a1;
  sub_2587F4F80();
  MEMORY[0x259C8C5A0](&v21);
  *(v17 + 64) = v21;
  *(v17 + 72) = a2;
  *(v17 + 80) = a3;
  *(v17 + 48) = a4;
  *(v17 + 56) = a5;
  *(v17 + 88) = a6;
  *(v17 + 96) = a7;
  return v17;
}

uint64_t sub_2587F3900@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2587F4FD0();
  sub_2588BBB98();

  *a2 = *(v3 + 64);
  return result;
}

void sub_2587F3978(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_2587F4560(&v3);
}

uint64_t sub_2587F39B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2587F4FD0();
  sub_2588BBB98();

  *a2 = *(v3 + 16);
  return result;
}

void (*sub_2587F3A50(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  *(a1 + 16) = *(v1 + 16);
  return sub_2587F3A7C;
}

void sub_2587F3A7C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 16);
  *(v2 + 16) = *(a1 + 16);
  if (v3)
  {
    swift_getKeyPath();
    *a1 = v2;
    sub_2587F4FD0();
    sub_2588BBB98();

    if ((*(v2 + 16) & 1) == 0)
    {
      v4 = *(a1 + 8);
      sub_2587F563C();
    }
  }
}

uint64_t sub_2587F3B04()
{
  swift_getKeyPath();
  sub_2587F4FD0();
  sub_2588BBB98();

  return *(v0 + 16);
}

void sub_2587F3B74(char a1)
{
  v2 = *(v1 + 16);
  if (v2 == (a1 & 1))
  {
    *(v1 + 16) = a1 & 1;
    if (v2)
    {
      swift_getKeyPath();
      sub_2587F4FD0();
      sub_2588BBB98();

      if ((*(v1 + 16) & 1) == 0)
      {
        sub_2587F563C();
      }
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2587F4FD0();
    sub_2588BBB88();
  }
}

void sub_2587F3CA8(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = a2;
  if (v2 == 1)
  {
    swift_getKeyPath();
    sub_2587F4FD0();
    sub_2588BBB98();

    if ((*(a1 + 16) & 1) == 0)
    {
      sub_2587F563C();
    }
  }
}

void (*sub_2587F3D3C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11MedicalIDUI30EditOrganDonationCellViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2587F4FD0();
  sub_2588BBB98();

  *v4 = v1;
  swift_getKeyPath();
  sub_2588BBBB8();

  v4[7] = sub_2587F3A50(v4);
  return sub_2587F3E44;
}

uint64_t sub_2587F3E50@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_2587F4FD0();
  sub_2588BBB98();

  *a1 = *(v1 + 41);
  return result;
}

uint64_t sub_2587F3EC8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2587F4FD0();
  sub_2588BBB98();

  *a2 = *(v3 + 41);
  return result;
}

uint64_t sub_2587F3F40(unsigned __int8 *a1)
{
  v2 = *a1;
  result = sub_2587B80A4(*(v1 + 41), *a1);
  if (result)
  {
    *(v1 + 41) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2587F4FD0();
    sub_2588BBB88();
  }

  return result;
}

uint64_t sub_2587F4024(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  swift_getKeyPath();
  sub_2587F4FD0();
  sub_2588BBB98();

  result = sub_2587B80A4(v3, *(v1 + 64));
  if ((result & 1) == 0)
  {
    swift_getKeyPath();
    sub_2588BBB98();

    v5 = *(v1 + 64);
    result = sub_2587B80A4(*(v2 + 41), *(v2 + 64));
    if (result)
    {
      *(v2 + 41) = v5;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_2588BBB88();
    }
  }

  return result;
}

void sub_2587F4180(unsigned __int8 *a1)
{
  v2 = *a1;
  swift_getKeyPath();
  sub_2587F4FD0();
  sub_2588BBB98();

  if ((sub_2587B80A4(*(v1 + 64), v2) & 1) == 0)
  {
    v3 = *(v1 + 24);
    v4 = *(v1 + 32);
    v5 = *(v1 + 40);
    swift_getKeyPath();

    sub_2588BBB98();

    v8 = *(v1 + 64);
    sub_2587F4F80();
    sub_2588BD438();

    swift_getKeyPath();
    sub_2588BBB98();

    if (*(v1 + 64) > 2u)
    {
    }

    else
    {
      v6 = sub_2588BDF98();

      if ((v6 & 1) == 0)
      {
        return;
      }
    }

    swift_getKeyPath();
    sub_2588BBB98();

    if (*(v1 + 41) > 2u)
    {
    }

    else
    {
      v7 = sub_2588BDF98();

      if ((v7 & 1) == 0)
      {
        sub_2587F5074();
      }
    }
  }
}

void (*sub_2587F4448(uint64_t a1))(_BYTE *a1, char a2)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 64);
  return sub_2587F4474;
}

void sub_2587F4474(_BYTE *a1, char a2)
{
  v2 = *a1;
  v3 = a1[8];
  v4 = *(*a1 + 64);
  if (a2)
  {
    v6 = a1[8];
    sub_2587F4024(&v6);
    *(v2 + 64) = v3;
    v7 = v4;
    v5 = &v7;
  }

  else
  {
    v8 = a1[8];
    sub_2587F4024(&v8);
    *(v2 + 64) = v3;
    v9 = v4;
    v5 = &v9;
  }

  sub_2587F4180(v5);
}

uint64_t sub_2587F44E8@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_2587F4FD0();
  sub_2588BBB98();

  *a1 = *(v1 + 64);
  return result;
}

void sub_2587F4560(unsigned __int8 *a1)
{
  v2 = *a1;
  if (sub_2587B80A4(*(v1 + 64), *a1))
  {
    v3 = *(v1 + 64);
    LOBYTE(v5) = v2;
    sub_2587F4024(&v5);
    *(v1 + 64) = v2;
    LOBYTE(v5) = v3;
    sub_2587F4180(&v5);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2587F4FD0();
    sub_2588BBB88();
  }
}

void (*sub_2587F4660(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11MedicalIDUI30EditOrganDonationCellViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2587F4FD0();
  sub_2588BBB98();

  *v4 = v1;
  swift_getKeyPath();
  sub_2588BBBB8();

  v4[7] = sub_2587F4448(v4);
  return sub_2587F4768;
}

uint64_t sub_2587F4774@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2587F4FD0();
  sub_2588BBB98();

  *a2 = *(v3 + 65);
  return result;
}

uint64_t sub_2587F47EC(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_2587F489C(&v4);
}

uint64_t sub_2587F4824@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_2587F4FD0();
  sub_2588BBB98();

  *a1 = *(v1 + 65);
  return result;
}

uint64_t sub_2587F489C(unsigned __int8 *a1)
{
  v2 = *a1;
  result = sub_2587F5F80(*(v1 + 65), *a1);
  if (result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2587F4FD0();
    sub_2588BBB88();
  }

  else
  {
    *(v1 + 65) = v2;
  }

  return result;
}

MedicalIDUI::EditOrganDonationCellViewModel::DonateLifeFlowState_optional __swiftcall EditOrganDonationCellViewModel.DonateLifeFlowState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2588BDF58();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t EditOrganDonationCellViewModel.DonateLifeFlowState.rawValue.getter()
{
  v1 = 0x7369676552646964;
  if (*v0 != 1)
  {
    v1 = 0x6552746F4E646964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E696F676E6FLL;
  }
}

uint64_t sub_2587F4A58(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7369676552646964;
  v4 = 0xEB00000000726574;
  if (v2 != 1)
  {
    v3 = 0x6552746F4E646964;
    v4 = 0xEE00726574736967;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x676E696F676E6FLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x7369676552646964;
  v8 = 0xEB00000000726574;
  if (*a2 != 1)
  {
    v7 = 0x6552746F4E646964;
    v8 = 0xEE00726574736967;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x676E696F676E6FLL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2588BDF98();
  }

  return v11 & 1;
}

uint64_t sub_2587F4B84()
{
  v1 = *v0;
  sub_2588BE038();
  sub_2588BD908();

  return sub_2588BE078();
}

uint64_t sub_2587F4C3C()
{
  *v0;
  *v0;
  sub_2588BD908();
}

uint64_t sub_2587F4CE0()
{
  v1 = *v0;
  sub_2588BE038();
  sub_2588BD908();

  return sub_2588BE078();
}

void sub_2587F4DA0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xEB00000000726574;
  v5 = 0x7369676552646964;
  if (v2 != 1)
  {
    v5 = 0x6552746F4E646964;
    v4 = 0xEE00726574736967;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x676E696F676E6FLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

id sub_2587F4E40(uint64_t a1)
{
  v1 = [objc_opt_self() medicalIDOrganDonorStatus_];

  return v1;
}

uint64_t EditOrganDonationCellViewModel.init(outOrganDonationStatus:hasStoredRegistrant:medicalIDDonorStatusProvider:organDonationRegistrationAvailable:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v15 = *a1;
  v16 = a1[1];
  v17 = *(a1 + 16);
  *(v8 + 16) = 0;
  *(v8 + 41) = 0;
  *(v8 + 65) = 3;
  sub_2588BBBC8();
  *(v8 + 24) = v15;
  *(v8 + 32) = v16;
  *(v8 + 40) = v17;
  v20 = v15;
  v21 = v16;
  v22 = v17;
  sub_2587F4F80();
  MEMORY[0x259C8C5A0](&v19);
  *(v8 + 64) = v19;
  *(v8 + 72) = a2;
  *(v8 + 80) = a3;
  *(v8 + 48) = a4;
  *(v8 + 56) = a5;
  *(v8 + 88) = a6;
  *(v8 + 96) = a7;
  return v8;
}

void sub_2587F4F80()
{
  if (!qword_27F95DD98)
  {
    v0 = sub_2588BD488();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95DD98);
    }
  }
}

unint64_t sub_2587F4FD0()
{
  result = qword_27F95E488;
  if (!qword_27F95E488)
  {
    type metadata accessor for EditOrganDonationCellViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E488);
  }

  return result;
}

uint64_t type metadata accessor for EditOrganDonationCellViewModel()
{
  result = qword_27F95E888;
  if (!qword_27F95E888)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2587F5074()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[11];
  v4 = v0[12];
  if (v3())
  {
    v5 = *(v1 + 80);
    if ((*(v1 + 72))())
    {

      sub_2587F5380();
    }

    else
    {
      if (sub_2587F5F80(*(v1 + 65), 0))
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        v15 = v1;
        sub_2587F4FD0();
        sub_2588BBB88();
      }

      else
      {
        *(v1 + 65) = 0;
      }

      sub_2587F3B74(1);
    }
  }

  else
  {
    if (qword_27F95D170 != -1)
    {
      swift_once();
    }

    v6 = sub_2588BBC98();
    __swift_project_value_buffer(v6, qword_27F969938);
    v7 = sub_2588BBC78();
    v8 = sub_2588BDBF8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315394;
      v11 = sub_2588BE0E8();
      v13 = sub_258790224(v11, v12, &v15);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_258790224(0xD00000000000001BLL, 0x80000002588C9C20, &v15);
      _os_log_impl(&dword_25878B000, v7, v8, "[%s] %s Organ donation registration is not available.", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C8DBE0](v10, -1, -1);
      MEMORY[0x259C8DBE0](v9, -1, -1);
    }

    swift_getKeyPath();
    v15 = v1;
    sub_2587F4FD0();
    sub_2588BBB98();

    LOBYTE(v15) = *(v1 + 41);
    sub_2587F4560(&v15);
  }
}

void sub_2587F5380()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[6];
  v4 = v0[7];
  v5 = v3(3);
  v6 = v5;
  if (!v5)
  {
    LOBYTE(v8) = 0;
    goto LABEL_5;
  }

  v7 = [v5 integerValue];
  if (v7 <= 2)
  {
    v8 = 0x30102u >> (8 * v7);
LABEL_5:
    LOBYTE(v22) = v8;
    sub_2587F4560(&v22);

    return;
  }

  if (qword_27F95D170 != -1)
  {
    swift_once();
  }

  v9 = sub_2588BBC98();
  __swift_project_value_buffer(v9, qword_27F969938);
  v10 = v6;
  v11 = sub_2588BBC78();
  v12 = sub_2588BDBD8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136315650;
    v15 = sub_2588BE0E8();
    v17 = sub_258790224(v15, v16, &v22);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_258790224(0xD000000000000023, 0x80000002588C9BF0, &v22);
    *(v13 + 22) = 2080;
    sub_2587F6450();
    v18 = v10;
    v19 = sub_2588BD8C8();
    v21 = sub_258790224(v19, v20, &v22);

    *(v13 + 24) = v21;
    _os_log_impl(&dword_25878B000, v11, v12, "[%s] %s Could not create organ donation status from %s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C8DBE0](v14, -1, -1);
    MEMORY[0x259C8DBE0](v13, -1, -1);
  }

  swift_getKeyPath();
  v22 = v1;
  sub_2587F4FD0();
  sub_2588BBB98();

  LOBYTE(v22) = *(v1 + 41);
  sub_2587F4560(&v22);
}

void sub_2587F563C()
{
  swift_getKeyPath();
  v4 = v0;
  sub_2587F4FD0();
  sub_2588BBB98();

  v1 = v0[65];
  if (v1 <= 1)
  {
    if (v0[65])
    {
      goto LABEL_3;
    }

LABEL_6:
    swift_getKeyPath();
    v4 = v0;
    sub_2588BBB98();

    if (v0[64] > 2u)
    {
    }

    else
    {
      v2 = sub_2588BDF98();

      if ((v2 & 1) == 0)
      {
LABEL_11:
        v1 = v0[65];
        if (v1 == 3)
        {
          goto LABEL_4;
        }

        goto LABEL_12;
      }
    }

    swift_getKeyPath();
    v4 = v0;
    sub_2588BBB98();

    LOBYTE(v4) = v0[41];
    sub_2587F4560(&v4);
    goto LABEL_11;
  }

  if (v1 == 2)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v1 == 3)
  {
LABEL_4:
    v0[65] = v1;
    return;
  }

LABEL_12:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  v4 = v0;
  sub_2588BBB88();
}

uint64_t sub_2587F5888()
{
  v1 = v0;
  v14 = MEMORY[0x277D84F90];
  sub_2587F06D4(0, 1, 1);
  v2 = v14;
  v4 = *(v14 + 16);
  v3 = *(v14 + 24);
  if (v4 >= v3 >> 1)
  {
    sub_2587F06D4((v3 > 1), v4 + 1, 1);
    v2 = v14;
  }

  *(v2 + 16) = v4 + 1;
  *(v2 + v4 + 32) = 0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2587F06D4(0, *(v2 + 16) + 1, 1);
    v2 = v14;
  }

  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  if (v6 >= v5 >> 1)
  {
    sub_2587F06D4((v5 > 1), v6 + 1, 1);
    v2 = v14;
  }

  *(v2 + 16) = v6 + 1;
  *(v2 + v6 + 32) = 1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2587F06D4(0, *(v2 + 16) + 1, 1);
  }

  v7 = v14;
  v9 = *(v14 + 16);
  v8 = *(v14 + 24);
  if (v9 >= v8 >> 1)
  {
    sub_2587F06D4((v8 > 1), v9 + 1, 1);
    v7 = v14;
  }

  *(v7 + 16) = v9 + 1;
  *(v7 + v9 + 32) = 2;
  v10 = *(v1 + 96);
  if ((*(v1 + 88))())
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2587F06D4(0, *(v7 + 16) + 1, 1);
      v7 = v14;
    }

    v12 = *(v7 + 16);
    v11 = *(v7 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_2587F06D4((v11 > 1), v12 + 1, 1);
      v7 = v14;
    }

    *(v7 + 16) = v12 + 1;
    *(v7 + v12 + 32) = 3;
  }

  return v7;
}

void sub_2587F5A6C(char a1)
{
  v3 = *(v1 + 65);
  if (a1)
  {
    if (sub_2587F5F80(v3, 1u))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v8 = v1;
      sub_2587F4FD0();
      sub_2588BBB88();
    }

    else
    {
      *(v1 + 65) = 1;
    }

    v5 = 3;
  }

  else
  {
    if (sub_2587F5F80(v3, 2u))
    {
      v6 = swift_getKeyPath();
      MEMORY[0x28223BE20](v6);
      v8 = v1;
      sub_2587F4FD0();
      sub_2588BBB88();
    }

    else
    {
      *(v1 + 65) = 2;
    }

    swift_getKeyPath();
    v8 = v1;
    sub_2587F4FD0();
    sub_2588BBB98();

    v5 = *(v1 + 41);
  }

  LOBYTE(v8) = v5;
  sub_2587F4560(&v8);
  if (*(v1 + 65) != 3)
  {
    v7 = swift_getKeyPath();
    MEMORY[0x28223BE20](v7);
    v8 = v1;
    sub_2587F4FD0();
    sub_2588BBB88();
  }
}

void sub_2587F5CFC()
{
  if (*(v0 + 16))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2587F4FD0();
    sub_2588BBB88();
  }

  else
  {
    *(v0 + 16) = 0;
  }
}

char *EditOrganDonationCellViewModel.deinit()
{
  v2 = *(v0 + 3);
  v1 = *(v0 + 4);

  v3 = *(v0 + 7);

  v4 = *(v0 + 10);

  v5 = *(v0 + 12);

  v6 = OBJC_IVAR____TtC11MedicalIDUI30EditOrganDonationCellViewModel___observationRegistrar;
  v7 = sub_2588BBBD8();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  return v0;
}

uint64_t EditOrganDonationCellViewModel.__deallocating_deinit()
{
  v2 = *(v0 + 3);
  v1 = *(v0 + 4);

  v3 = *(v0 + 7);

  v4 = *(v0 + 10);

  v5 = *(v0 + 12);

  v6 = OBJC_IVAR____TtC11MedicalIDUI30EditOrganDonationCellViewModel___observationRegistrar;
  v7 = sub_2588BBBD8();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_2587F5F20()
{
  v1 = *(v0 + 16);
  v3 = *(v1 + 64);
  v5 = *(v0 + 24);
  v2 = v5;
  sub_2587F4024(&v5);
  *(v1 + 64) = v2;
  v4 = v3;
  sub_2587F4180(&v4);
}

BOOL sub_2587F5F80(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a2 == 3 && a1 == 3;
  if (a1 != 3 && a2 != 3)
  {
    v3 = a1;
    if (a1)
    {
      if (a1 == 1)
      {
        v4 = 0x7369676552646964;
      }

      else
      {
        v4 = 0x6552746F4E646964;
      }

      if (v3 == 1)
      {
        v5 = 0xEB00000000726574;
      }

      else
      {
        v5 = 0xEE00726574736967;
      }

      v6 = a2;
      if (a2)
      {
LABEL_14:
        if (v6 == 1)
        {
          v7 = 0xEB00000000726574;
          if (v4 != 0x7369676552646964)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v7 = 0xEE00726574736967;
          if (v4 != 0x6552746F4E646964)
          {
            goto LABEL_23;
          }
        }

LABEL_21:
        if (v5 == v7)
        {
          v2 = 1;
LABEL_24:

          return (v2 & 1) == 0;
        }

LABEL_23:
        v2 = sub_2588BDF98();
        goto LABEL_24;
      }
    }

    else
    {
      v5 = 0xE700000000000000;
      v4 = 0x676E696F676E6FLL;
      v6 = a2;
      if (a2)
      {
        goto LABEL_14;
      }
    }

    v7 = 0xE700000000000000;
    if (v4 != 0x676E696F676E6FLL)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  return (v2 & 1) == 0;
}

unint64_t sub_2587F60FC()
{
  result = qword_27F95E878;
  if (!qword_27F95E878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E878);
  }

  return result;
}

unint64_t sub_2587F6154()
{
  result = qword_27F95E880;
  if (!qword_27F95E880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E880);
  }

  return result;
}

uint64_t sub_2587F61B0()
{
  result = sub_2588BBBD8();
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

void sub_2587F6450()
{
  if (!qword_27F95E750)
  {
    sub_2587AEC74();
    v0 = sub_2588BDCE8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E750);
    }
  }
}

uint64_t sub_2587F6500@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  *&v17[0] = v3;
  sub_2587FA228(&qword_27F95E8A0, type metadata accessor for ContactLabelEditViewModel);
  sub_2588BBB98();

  swift_beginAccess();
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[4];
  v17[2] = v3[3];
  v17[3] = v6;
  v7 = v3[5];
  v8 = v3[6];
  v9 = v3[8];
  v17[6] = v3[7];
  v17[7] = v9;
  v17[4] = v7;
  v17[5] = v8;
  v17[0] = v4;
  v17[1] = v5;
  v10 = v3[1];
  v11 = v3[2];
  v12 = v3[4];
  a2[2] = v3[3];
  a2[3] = v12;
  *a2 = v10;
  a2[1] = v11;
  v13 = v3[5];
  v14 = v3[6];
  a2[6] = v3[7];
  a2[7] = v9;
  a2[4] = v13;
  a2[5] = v14;
  return sub_2587914E8(v17, v16);
}

uint64_t sub_2587F660C(__int128 *a1, uint64_t *a2)
{
  v3 = a1[5];
  v10[4] = a1[4];
  v10[5] = v3;
  v4 = a1[7];
  v10[6] = a1[6];
  v10[7] = v4;
  v5 = a1[1];
  v10[0] = *a1;
  v10[1] = v5;
  v6 = a1[3];
  v10[2] = a1[2];
  v10[3] = v6;
  v7 = *a2;
  sub_2587914E8(v10, &v9);
  return sub_2587F6790(a1);
}

uint64_t sub_2587F6674@<X0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  *&v12[0] = v1;
  sub_2587FA228(&qword_27F95E8A0, type metadata accessor for ContactLabelEditViewModel);
  sub_2588BBB98();

  swift_beginAccess();
  v4 = v1[6];
  v15 = v1[5];
  v3 = v15;
  v16 = v4;
  v6 = v1[8];
  v17 = v1[7];
  v5 = v17;
  v18 = v6;
  v7 = v1[2];
  v12[0] = v1[1];
  v12[1] = v7;
  v9 = v1[4];
  v13 = v1[3];
  v8 = v13;
  v14 = v9;
  *a1 = v12[0];
  a1[1] = v7;
  a1[2] = v8;
  a1[3] = v9;
  a1[4] = v3;
  a1[5] = v4;
  a1[6] = v5;
  a1[7] = v6;
  return sub_2587914E8(v12, v11);
}

uint64_t sub_2587F6790(__int128 *a1)
{
  v2 = a1[5];
  v35 = a1[4];
  v36 = v2;
  v3 = a1[7];
  v37 = a1[6];
  v38 = v3;
  v4 = a1[1];
  v31 = *a1;
  v32 = v4;
  v5 = a1[3];
  v33 = a1[2];
  v34 = v5;
  swift_beginAccess();
  v6 = v1[6];
  v27 = v1[5];
  v28 = v6;
  v7 = v1[8];
  v29 = v1[7];
  v30 = v7;
  v8 = v1[2];
  v23 = v1[1];
  v24 = v8;
  v9 = v1[4];
  v25 = v1[3];
  v26 = v9;
  v22[4] = v35;
  v22[5] = v36;
  v22[6] = v37;
  v22[7] = v38;
  v22[0] = v31;
  v22[1] = v32;
  v22[2] = v33;
  v22[3] = v34;
  if (_s11MedicalIDUI0A18IDEmergencyContactV2eeoiySbAC_ACtFZ_0(&v23, v22))
  {
    v10 = v1[6];
    v27 = v1[5];
    v28 = v10;
    v11 = v1[8];
    v29 = v1[7];
    v30 = v11;
    v12 = v1[2];
    v23 = v1[1];
    v24 = v12;
    v13 = v1[4];
    v25 = v1[3];
    v26 = v13;
    v14 = v31;
    v15 = v32;
    v16 = v34;
    v1[3] = v33;
    v1[4] = v16;
    v1[1] = v14;
    v1[2] = v15;
    v17 = v35;
    v18 = v36;
    v19 = v38;
    v1[7] = v37;
    v1[8] = v19;
    v1[5] = v17;
    v1[6] = v18;
    return sub_2587C66FC(&v23);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *&v23 = v1;
    sub_2587FA228(&qword_27F95E8A0, type metadata accessor for ContactLabelEditViewModel);
    sub_2588BBB88();
    sub_2587C66FC(&v31);
  }
}

uint64_t sub_2587F6970(_OWORD *a1, __int128 *a2)
{
  swift_beginAccess();
  v4 = a1[6];
  v16[4] = a1[5];
  v16[5] = v4;
  v5 = a1[8];
  v16[6] = a1[7];
  v16[7] = v5;
  v6 = a1[2];
  v16[0] = a1[1];
  v16[1] = v6;
  v7 = a1[4];
  v16[2] = a1[3];
  v16[3] = v7;
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[3];
  a1[3] = a2[2];
  a1[4] = v10;
  a1[1] = v8;
  a1[2] = v9;
  v11 = a2[4];
  v12 = a2[5];
  v13 = a2[7];
  a1[7] = a2[6];
  a1[8] = v13;
  a1[5] = v11;
  a1[6] = v12;
  sub_2587914E8(a2, v15);
  return sub_2587C66FC(v16);
}

void (*sub_2587F6A20(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11MedicalIDUI25ContactLabelEditViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2587FA228(&qword_27F95E8A0, type metadata accessor for ContactLabelEditViewModel);
  sub_2588BBB98();

  *v4 = v1;
  swift_getKeyPath();
  sub_2588BBBB8();

  v4[7] = sub_2587C5B50();
  return sub_2587F6B58;
}

uint64_t sub_2587F6BB4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2587FA228(&qword_27F95E8A0, type metadata accessor for ContactLabelEditViewModel);
  sub_2588BBB98();

  result = swift_beginAccess();
  *a2 = *(v3 + 144);
  return result;
}

uint64_t sub_2587F6C98()
{
  swift_getKeyPath();
  sub_2587FA228(&qword_27F95E8A0, type metadata accessor for ContactLabelEditViewModel);
  sub_2588BBB98();

  swift_beginAccess();
  return *(v0 + 144);
}

uint64_t sub_2587F6D4C(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 144) == v2)
  {
    *(v1 + 144) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2587FA228(&qword_27F95E8A0, type metadata accessor for ContactLabelEditViewModel);
    sub_2588BBB88();
  }

  return result;
}

void (*sub_2587F6E70(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11MedicalIDUI25ContactLabelEditViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2587FA228(&qword_27F95E8A0, type metadata accessor for ContactLabelEditViewModel);
  sub_2588BBB98();

  *v4 = v1;
  swift_getKeyPath();
  sub_2588BBBB8();

  v4[7] = sub_2587F6B64();
  return sub_2587F6FA8;
}

uint64_t ContactLabelEditViewModel.__allocating_init(medicalIDEmergencyContact:)(_OWORD *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  *(v5 + 144) = 0;
  sub_2588BBBC8();
  v6 = a1[5];
  *(v5 + 80) = a1[4];
  *(v5 + 96) = v6;
  v7 = a1[7];
  *(v5 + 112) = a1[6];
  *(v5 + 128) = v7;
  v8 = a1[1];
  *(v5 + 16) = *a1;
  *(v5 + 32) = v8;
  v9 = a1[3];
  *(v5 + 48) = a1[2];
  *(v5 + 64) = v9;
  return v5;
}

uint64_t ContactLabelEditViewModel.init(medicalIDEmergencyContact:)(_OWORD *a1)
{
  *(v1 + 144) = 0;
  sub_2588BBBC8();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  v4 = a1[7];
  *(v1 + 112) = a1[6];
  *(v1 + 128) = v4;
  v5 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v5;
  v6 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v6;
  return v1;
}

uint64_t sub_2587F7078()
{
  v1 = v0;
  swift_getKeyPath();
  sub_2587FA228(&qword_27F95E8A0, type metadata accessor for ContactLabelEditViewModel);
  sub_2588BBB98();

  swift_beginAccess();
  v3 = v0[2];
  v2 = v0[3];
  swift_getKeyPath();

  sub_2588BBB98();

  v5 = v0[8];
  v4 = v0[9];
  swift_getKeyPath();

  sub_2588BBB98();

  if (v0[3])
  {
    v6 = v0[2];
    v7 = v0[3];
  }

  else
  {
    swift_getKeyPath();
    sub_2588BBB98();

    v7 = v0[9];
    if (!v7)
    {
LABEL_12:

LABEL_13:

      goto LABEL_14;
    }

    v6 = v1[8];
    v8 = v1[9];
    swift_bridgeObjectRetain_n();
  }

  swift_bridgeObjectRetain_n();

  if (!v2)
  {
    goto LABEL_12;
  }

  if (v6 == v3 && v7 == v2)
  {

    goto LABEL_14;
  }

  v9 = sub_2588BDF98();

  if ((v9 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_14:
  swift_getKeyPath();
  sub_2588BBB98();

  if (v1[3])
  {
    v10 = v1[2];
    v11 = v1[3];
  }

  else
  {
    swift_getKeyPath();
    sub_2588BBB98();

    v10 = v1[8];
    v12 = v1[9];
  }

  return v10;
}

uint64_t sub_2587F7348()
{
  v1 = v0;
  swift_getKeyPath();
  sub_2587FA228(&qword_27F95E8A0, type metadata accessor for ContactLabelEditViewModel);
  sub_2588BBB98();

  swift_beginAccess();
  if (v0[3])
  {
    v2 = v0[2];
    v3 = v1[3];
  }

  else
  {
    swift_getKeyPath();
    sub_2588BBB98();

    v2 = v0[8];
    v4 = v1[9];
  }

  return v2;
}

char *ContactLabelEditViewModel.deinit()
{
  v1 = *(v0 + 6);
  v8[4] = *(v0 + 5);
  v8[5] = v1;
  v2 = *(v0 + 8);
  v8[6] = *(v0 + 7);
  v8[7] = v2;
  v3 = *(v0 + 2);
  v8[0] = *(v0 + 1);
  v8[1] = v3;
  v4 = *(v0 + 4);
  v8[2] = *(v0 + 3);
  v8[3] = v4;
  sub_2587C66FC(v8);
  v5 = OBJC_IVAR____TtC11MedicalIDUI25ContactLabelEditViewModel___observationRegistrar;
  v6 = sub_2588BBBD8();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  return v0;
}

uint64_t ContactLabelEditViewModel.__deallocating_deinit()
{
  v1 = *(v0 + 6);
  v10[4] = *(v0 + 5);
  v10[5] = v1;
  v2 = *(v0 + 8);
  v10[6] = *(v0 + 7);
  v10[7] = v2;
  v3 = *(v0 + 2);
  v10[0] = *(v0 + 1);
  v10[1] = v3;
  v4 = *(v0 + 4);
  v10[2] = *(v0 + 3);
  v10[3] = v4;
  sub_2587C66FC(v10);
  v5 = OBJC_IVAR____TtC11MedicalIDUI25ContactLabelEditViewModel___observationRegistrar;
  v6 = sub_2588BBBD8();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_2587F75B4(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v3 = a1[3];
  v22[4] = a1[4];
  v22[5] = v2;
  v4 = a1[5];
  v5 = a1[7];
  v22[6] = a1[6];
  v22[7] = v5;
  v6 = a1[1];
  v22[0] = *a1;
  v22[1] = v6;
  v7 = a1[3];
  v9 = *a1;
  v8 = a1[1];
  v22[2] = a1[2];
  v22[3] = v7;
  v19 = a2[6];
  v20 = a2[7];
  v21 = a2[8];
  v15 = a2[2];
  v16 = a2[3];
  v17 = a2[4];
  v18 = a2[5];
  v13 = *a2;
  v14 = a2[1];
  v12 = a1[7];
  v10 = MEMORY[0x277CE11F8];
  sub_2587FAD0C(a2, v23, &qword_27F95E158, &type metadata for MedicalIDEmergencyContact, MEMORY[0x277CE11F8], sub_2587FAC5C);
  sub_2587914E8(v22, v23);
  sub_2587FAC5C(0, &qword_27F95E158, &type metadata for MedicalIDEmergencyContact, v10);
  sub_2588BD438();
  v23[6] = v19;
  v23[7] = v20;
  v23[8] = v21;
  v23[2] = v15;
  v23[3] = v16;
  v23[4] = v17;
  v23[5] = v18;
  v23[0] = v13;
  v23[1] = v14;
  return sub_2587FAE44(v23, &qword_27F95E158, &type metadata for MedicalIDEmergencyContact, v10, sub_2587FAC5C);
}

uint64_t sub_2587F771C@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v2 = type metadata accessor for ContactLabelEditView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v46 = v5;
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v6;
  sub_2587F9AFC(0);
  v8 = v7;
  v36[0] = v7;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587FA5B4();
  v13 = *(v12 - 8);
  v41 = v12;
  v42 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v47 = type metadata accessor for ContactLabelEditView;
  v48 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587FA768(v1, v6, type metadata accessor for ContactLabelEditView);
  v45 = *(v3 + 80);
  v16 = (v45 + 16) & ~v45;
  v17 = swift_allocObject();
  sub_2587FA7D0(v6, v17 + v16);
  v49 = v1;
  sub_2587F9CEC(0, &qword_27F95E8F0, sub_2587F9BC4, sub_2587E60D0);
  sub_2587FA454();
  sub_2588BD318();
  *&v11[*(v8 + 36)] = sub_2588BC8C8();
  v18 = *v1;
  v37 = v1[1];
  v38 = v18;
  v40 = v1;
  *&v58 = v18;
  *(&v58 + 1) = v37;
  sub_2587FAAF8(0, &qword_27F95E8D0, type metadata accessor for ContactLabelEditViewModel, MEMORY[0x277CE10B8]);
  v36[1] = v19;
  sub_2588BD2E8();
  v20 = v66;
  v21 = v67;
  swift_getKeyPath();
  v66 = v20;
  *&v67 = v21;
  sub_2587FAAF8(0, &qword_27F95E9B8, type metadata accessor for ContactLabelEditViewModel, MEMORY[0x277CE11F8]);
  sub_2588BD448();

  v22 = v44;
  sub_2587FA768(v1, v44, v47);
  v23 = swift_allocObject();
  sub_2587FA7D0(v22, v23 + v16);
  v39 = type metadata accessor for RelationshipPickerView();
  *&v35 = sub_2587FA688();
  *(&v35 + 1) = sub_2587FA228(&qword_27F95E9B0, type metadata accessor for RelationshipPickerView);
  v24 = v36[0];
  sub_2588BD068();

  sub_2587FACAC(v11, sub_2587F9AFC);
  *&v66 = v38;
  *(&v66 + 1) = v37;
  sub_2588BD2C8();
  v25 = v58;
  swift_getKeyPath();
  *&v66 = v25;
  sub_2587FA228(&qword_27F95E8A0, type metadata accessor for ContactLabelEditViewModel);
  sub_2588BBB98();

  swift_beginAccess();
  v26 = v25[6];
  v62 = v25[5];
  v63 = v26;
  v27 = v25[8];
  v64 = v25[7];
  v65 = v27;
  v28 = v25[2];
  v58 = v25[1];
  v59 = v28;
  v29 = v25[4];
  v60 = v25[3];
  v61 = v29;
  sub_2587914E8(&v58, &v66);

  v54 = v62;
  v55 = v63;
  v56 = v64;
  v57 = v65;
  v50 = v58;
  v51 = v59;
  v52 = v60;
  v53 = v61;
  v30 = v44;
  sub_2587FA768(v40, v44, v47);
  v31 = swift_allocObject();
  sub_2587FA7D0(v30, v31 + v16);
  *&v66 = v24;
  *(&v66 + 1) = v39;
  v67 = v35;
  swift_getOpaqueTypeConformance2();
  sub_2587913CC();
  v32 = v41;
  v33 = v48;
  sub_2588BD108();

  v70 = v54;
  v71 = v55;
  v72 = v56;
  v73 = v57;
  v66 = v50;
  v67 = v51;
  v68 = v52;
  v69 = v53;
  sub_2587C66FC(&v66);
  return (*(v42 + 8))(v33, v32);
}

uint64_t sub_2587F7D78(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  sub_2587FAAF8(0, &qword_27F95E8D0, type metadata accessor for ContactLabelEditViewModel, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  swift_beginAccess();
  if (*(v5 + 144) == 1)
  {
    *(v5 + 144) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2587FA228(&qword_27F95E8A0, type metadata accessor for ContactLabelEditViewModel);
    sub_2588BBB88();
  }
}

void sub_2587F7EFC(uint64_t a1@<X8>)
{
  v2 = sub_2588BC278();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587F9C98(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587F80E8(v10);
  sub_2588BC268();
  sub_2587FA270();
  sub_2587FA228(&qword_27F95E988, MEMORY[0x277CDDB18]);
  sub_2588BCE48();
  (*(v3 + 8))(v6, v2);
  sub_2587FACAC(v10, sub_2587F9C98);
  v11 = sub_2588BC8C8();
  sub_2587F9CEC(0, &qword_27F95E8F0, sub_2587F9BC4, sub_2587E60D0);
  *(a1 + *(v12 + 36)) = v11;
}

void sub_2587F80E8(uint64_t a1@<X8>)
{
  v2 = v1;
  v51 = a1;
  sub_2587FAB5C(0, &qword_27F95E9C0, MEMORY[0x277CE0330]);
  v49 = v3;
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v50 = (&v39 - v5);
  v46 = sub_2588BC978();
  v6 = *(v46 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v46);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587F9E14();
  v47 = v10;
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587F9D60();
  v42 = v14;
  v40 = *(v14 - 8);
  v15 = *(v40 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587F9CB8(0);
  v48 = v18;
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v41 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *v1;
  v44 = v1[1];
  v45 = v21;
  v56 = v21;
  v57 = v44;
  sub_2587FAAF8(0, &qword_27F95E8D0, type metadata accessor for ContactLabelEditViewModel, MEMORY[0x277CE10B8]);
  v43 = v22;
  sub_2588BD2C8();
  v23 = v54;
  swift_getKeyPath();
  v56 = v23;
  sub_2587FA228(&qword_27F95E8A0, type metadata accessor for ContactLabelEditViewModel);
  sub_2588BBB98();

  swift_beginAccess();
  v24 = v23[3];
  if (v24)
  {
    v25 = v23[2];
    v26 = v23[3];
  }

  else
  {
    swift_getKeyPath();
    v54 = v23;
    sub_2588BBB98();

    v25 = v23[8];
    v24 = v23[9];

    if (!v24)
    {
      v38 = v50;
      *v50 = 0xD000000000000051;
      v38[1] = 0x80000002588C9CB0;
      swift_storeEnumTagMultiPayload();
      sub_2587FA2F0();
      sub_2587FA400();
      sub_2588BC778();
      return;
    }
  }

  *v13 = sub_2588BC6F8();
  *(v13 + 1) = 0x4000000000000000;
  v13[16] = 0;
  sub_2587FABC4();
  sub_2587F8B24(v25, v24, v2, &v13[*(v27 + 44)]);
  sub_2588BC958();
  v28 = sub_2587FA228(&qword_27F95E968, sub_2587F9E14);
  v29 = v47;
  sub_2588BCF88();
  (*(v6 + 8))(v9, v46);
  sub_2587FADE4(v13, sub_2587F9E14);
  sub_2587FAC5C(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_2588C00B0;
  v54 = v45;
  v55 = v44;
  sub_2588BD2C8();
  v31 = v52;
  swift_getKeyPath();
  v54 = v31;
  sub_2588BBB98();

  swift_beginAccess();
  v33 = v31[16];
  v32 = v31[17];

  *(v30 + 32) = v33;
  *(v30 + 40) = v32;
  v34 = sub_2588BD9A8();

  v35 = HKUIJoinStringsForAutomationIdentifier();

  if (v35)
  {

    sub_2588BD8A8();

    v52 = v29;
    v53 = v28;
    swift_getOpaqueTypeConformance2();
    v37 = v41;
    v36 = v42;
    sub_2588BCFB8();

    (*(v40 + 8))(v17, v36);
    sub_258798A0C(v37, v50);
    swift_storeEnumTagMultiPayload();
    sub_2587FA2F0();
    sub_2587FA400();
    sub_2588BC778();
    sub_2587FACAC(v37, sub_2587F9CB8);
  }

  else
  {
    __break(1u);
  }
}

__n128 sub_2587F877C@<Q0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v12 = a1[4];
  v18 = *a1;
  sub_2587FAAF8(0, &qword_27F95E8D0, type metadata accessor for ContactLabelEditViewModel, MEMORY[0x277CE10B8]);
  swift_unknownObjectRetain();
  sub_2588BD2E8();
  swift_getKeyPath();
  sub_2587FAAF8(0, &qword_27F95E9B8, type metadata accessor for ContactLabelEditViewModel, MEMORY[0x277CE11F8]);
  sub_2588BD448();

  v27[6] = v24;
  v27[7] = v25;
  v27[8] = v26;
  v27[2] = v20;
  v27[3] = v21;
  v27[4] = v22;
  v27[5] = v23;
  v27[0] = v18;
  v27[1] = v19;

  swift_getKeyPath();
  v4 = MEMORY[0x277CE11F8];
  sub_2587FAC5C(0, &qword_27F95E158, &type metadata for MedicalIDEmergencyContact, MEMORY[0x277CE11F8]);
  sub_2588BD448();

  sub_2587FAE44(v27, &qword_27F95E158, &type metadata for MedicalIDEmergencyContact, v4, sub_2587FAC5C);
  sub_2588BD2C8();
  swift_getKeyPath();
  sub_2587FA228(&qword_27F95E8A0, type metadata accessor for ContactLabelEditViewModel);
  sub_2588BBB98();

  swift_beginAccess();
  v6 = *(v13 + 128);
  v5 = *(v13 + 136);

  v7 = type metadata accessor for RelationshipPickerView();
  v8 = v7[6];
  *(a2 + v8) = swift_getKeyPath();
  sub_2587FAAF8(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v9 = a2 + v7[8];
  sub_2587FAC5C(0, &qword_27F95D458, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  sub_2588BD2B8();
  *v9 = v13;
  *(v9 + 2) = v14;
  *a2 = v12;
  v10 = (a2 + v7[7]);
  result = v15;
  *v10 = v15;
  v10[1].n128_u64[0] = v16;
  v10[1].n128_u64[1] = v17;
  a2[1] = v6;
  a2[2] = v5;
  return result;
}

void sub_2587F8B24(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v62 = a4;
  sub_2587F9F84();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v63 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v64 = &v57 - v11;
  sub_2587FA08C(0, &qword_27F95E3B0, MEMORY[0x277CDE470]);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v65 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v66 = &v57 - v16;
  v68 = a1;
  v69 = a2;
  sub_25878F648();

  v17 = sub_2588BCDF8();
  v19 = v18;
  v21 = v20;
  sub_2588BCC08();
  v22 = sub_2588BCDD8();
  v24 = v23;
  v26 = v25;
  v28 = v27;

  sub_2587B1CF8(v17, v19, v21 & 1);

  v59 = v22;
  v68 = v22;
  v69 = v24;
  v58 = v24;
  v29 = v26 & 1;
  LOBYTE(v70) = v26 & 1;
  v60 = v28;
  v71 = v28;
  sub_2587FAC5C(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_2588BFF50;
  v31 = *a3;
  v32 = a3[1];
  v61 = a3;
  v74 = v31;
  v75 = v32;
  sub_2587FAAF8(0, &qword_27F95E8D0, type metadata accessor for ContactLabelEditViewModel, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  v33 = v67;
  swift_getKeyPath();
  v74 = v33;
  sub_2587FA228(&qword_27F95E8A0, type metadata accessor for ContactLabelEditViewModel);
  sub_2588BBB98();

  swift_beginAccess();
  v35 = *(v33 + 128);
  v34 = *(v33 + 136);

  *(v30 + 32) = v35;
  *(v30 + 40) = v34;
  *(v30 + 48) = 1701667150;
  *(v30 + 56) = 0xE400000000000000;
  v36 = sub_2588BD9A8();

  v37 = HKUIJoinStringsForAutomationIdentifier();

  if (v37)
  {
    sub_2588BD8A8();

    sub_2588BCFB8();

    sub_2587B1CF8(v59, v58, v29);

    v38 = v64;
    sub_2587F9134(v64);
    v68 = v31;
    v69 = v32;
    sub_2588BD2C8();
    v39 = v67;
    swift_getKeyPath();
    v68 = v39;
    sub_2588BBB98();

    swift_beginAccess();
    v40 = *(v39 + 128);
    v41 = *(v39 + 136);

    sub_2587F9578(v40, v41, &v68);

    v60 = v69;
    v61 = v68;
    v42 = v70;
    v43 = v71;
    v44 = v73;
    v59 = v72;
    v45 = MEMORY[0x277CDE470];
    v46 = v65;
    v47 = MEMORY[0x277CE0BD8];
    sub_2587FAD0C(v66, v65, &qword_27F95E3B0, MEMORY[0x277CDE470], MEMORY[0x277CE0BD8], sub_2587FA08C);
    v48 = v38;
    v49 = v63;
    sub_2587FA768(v48, v63, sub_2587F9F84);
    v50 = v46;
    v51 = v62;
    sub_2587FAD0C(v50, v62, &qword_27F95E3B0, v45, v47, sub_2587FA08C);
    sub_2587F9EA8();
    v53 = v52;
    sub_2587FA768(v49, v51 + *(v52 + 48), sub_2587F9F84);
    v54 = (v51 + *(v53 + 64));
    v56 = v60;
    v55 = v61;
    *v54 = v61;
    v54[1] = v56;
    v54[2] = v42;
    v54[3] = v43;
    v54[4] = v59;
    v54[5] = v44;
    sub_2587FAD80(v55, v56);
    sub_2587FADE4(v64, sub_2587F9F84);
    sub_2587FAE44(v66, &qword_27F95E3B0, v45, MEMORY[0x277CE0BD8], sub_2587FA08C);
    sub_2587FAEA4(v55, v56);
    sub_2587FADE4(v49, sub_2587F9F84);
    sub_2587FAE44(v65, &qword_27F95E3B0, v45, MEMORY[0x277CE0BD8], sub_2587FA08C);
  }

  else
  {
    __break(1u);
  }
}

void sub_2587F9134(uint64_t a1@<X8>)
{
  sub_2587FA08C(0, &qword_27F95E3B0, MEMORY[0x277CDE470]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v42 - v7;
  v9 = *v1;
  v10 = v1[1];
  v53 = *v1;
  v54 = v10;
  sub_2587FAAF8(0, &qword_27F95E8D0, type metadata accessor for ContactLabelEditViewModel, MEMORY[0x277CE10B8]);
  v49 = v11;
  sub_2588BD2C8();
  sub_2587F7078();
  v13 = v12;
  v15 = v14;

  if (!v15)
  {
    v41 = 1;
    goto LABEL_5;
  }

  v43 = v8;
  v44 = v5;
  v45 = v4;
  v46 = a1;
  v53 = v13;
  v54 = v15;
  sub_25878F648();
  swift_bridgeObjectRetain_n();
  v16 = sub_2588BCDF8();
  v18 = v17;
  v20 = v19;
  sub_2588BCBF8();
  v21 = sub_2588BCDD8();
  v47 = v9;
  v48 = v10;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  sub_2587B1CF8(v16, v18, v20 & 1);

  LODWORD(v53) = sub_2588BC8D8();
  v27 = sub_2588BCD98();
  v29 = v28;
  LOBYTE(v16) = v30;
  v32 = v31;
  sub_2587B1CF8(v22, v24, v26 & 1);

  v53 = v27;
  v54 = v29;
  v33 = v16 & 1;
  v55 = v16 & 1;
  v56 = v32;
  sub_2587FAC5C(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_2588BFF50;
  v50 = v47;
  v51 = v48;
  sub_2588BD2C8();
  v35 = v52;
  swift_getKeyPath();
  v50 = v35;
  sub_2587FA228(&qword_27F95E8A0, type metadata accessor for ContactLabelEditViewModel);
  sub_2588BBB98();

  swift_beginAccess();
  v37 = *(v35 + 128);
  v36 = *(v35 + 136);

  *(v34 + 32) = v37;
  *(v34 + 40) = v36;
  *(v34 + 48) = 0x7265626D754ELL;
  *(v34 + 56) = 0xE600000000000000;
  v38 = sub_2588BD9A8();

  v39 = HKUIJoinStringsForAutomationIdentifier();

  if (v39)
  {
    swift_bridgeObjectRelease_n();
    sub_2588BD8A8();

    v40 = v43;
    sub_2588BCFB8();

    sub_2587B1CF8(v27, v29, v33);

    a1 = v46;
    sub_2587FAF08(v40, v46);
    v41 = 0;
    v5 = v44;
    v4 = v45;
LABEL_5:
    (*(v5 + 56))(a1, v41, 1, v4);
    return;
  }

  __break(1u);
}

uint64_t sub_2587F9578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v12 = *v3;
  v13 = v3[1];
  sub_2587FAAF8(0, &qword_27F95E8D0, type metadata accessor for ContactLabelEditViewModel, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  swift_getKeyPath();
  sub_2587FA228(&qword_27F95E8A0, type metadata accessor for ContactLabelEditViewModel);
  sub_2588BBB98();

  swift_beginAccess();
  v8 = *(v14 + 96);
  v7 = *(v14 + 104);

  if (v7)
  {

    v10 = sub_2588BCBF8();
    KeyPath = swift_getKeyPath();
    result = sub_2588BC108();
  }

  else
  {
    v8 = 0;
    a1 = 0;
    a2 = 0;
    KeyPath = 0;
    v10 = 0;
  }

  *a3 = v8;
  a3[1] = v7;
  a3[2] = a1;
  a3[3] = a2;
  a3[4] = KeyPath;
  a3[5] = v10;
  return result;
}

uint64_t sub_2587F9730()
{
  result = sub_2588BBBD8();
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

void sub_2587F9968()
{
  sub_2587FAAF8(319, &qword_27F95E8D0, type metadata accessor for ContactLabelEditViewModel, MEMORY[0x277CE10B8]);
  if (v0 <= 0x3F)
  {
    sub_2587B2F78();
    if (v1 <= 0x3F)
    {
      sub_2587F9A7C();
      if (v2 <= 0x3F)
      {
        sub_2587FAAF8(319, &qword_27F95E8B8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_2587F9A7C()
{
  result = qword_27F95E8D8;
  if (!qword_27F95E8D8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F95E8D8);
  }

  return result;
}

void sub_2587F9B30()
{
  if (!qword_27F95E8E8)
  {
    sub_2587F9CEC(255, &qword_27F95E8F0, sub_2587F9BC4, sub_2587E60D0);
    sub_2587FA454();
    v0 = sub_2588BD348();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E8E8);
    }
  }
}

void sub_2587F9BC4()
{
  if (!qword_27F95E8F8)
  {
    sub_2587F9C98(255);
    sub_2588BC278();
    sub_2587FA270();
    sub_2587FA228(&qword_27F95E988, MEMORY[0x277CDDB18]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95E8F8);
    }
  }
}

void sub_2587F9CEC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_2588BC1E8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2587F9D60()
{
  if (!qword_27F95E910)
  {
    sub_2587F9E14();
    sub_2587FA228(&qword_27F95E968, sub_2587F9E14);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95E910);
    }
  }
}

void sub_2587F9E14()
{
  if (!qword_27F95E918)
  {
    sub_2587FAAF8(255, &qword_27F95E920, sub_2587F9EA8, MEMORY[0x277CE14B8]);
    sub_2587FA1A0();
    v0 = sub_2588BD408();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E918);
    }
  }
}

void sub_2587F9EA8()
{
  if (!qword_27F95E928)
  {
    sub_2587FA08C(255, &qword_27F95E3B0, MEMORY[0x277CDE470]);
    sub_2587F9F84();
    sub_2587FAAF8(255, &qword_27F95E938, sub_2587FA000, MEMORY[0x277D83D88]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F95E928);
    }
  }
}

void sub_2587F9F84()
{
  if (!qword_27F95E930)
  {
    sub_2587FA08C(255, &qword_27F95E3B0, MEMORY[0x277CDE470]);
    v0 = sub_2588BDCE8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E930);
    }
  }
}

void sub_2587FA000()
{
  if (!qword_27F95E940)
  {
    sub_2587FA08C(255, &qword_27F95E948, sub_2587B1964);
    sub_2587FA0F0();
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E940);
    }
  }
}

void sub_2587FA08C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2588BC1E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2587FA0F0()
{
  if (!qword_27F95E950)
  {
    sub_2587FA14C();
    v0 = sub_2588BC918();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E950);
    }
  }
}

unint64_t sub_2587FA14C()
{
  result = qword_27F95E958;
  if (!qword_27F95E958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E958);
  }

  return result;
}

unint64_t sub_2587FA1A0()
{
  result = qword_27F95E960;
  if (!qword_27F95E960)
  {
    sub_2587FAAF8(255, &qword_27F95E920, sub_2587F9EA8, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E960);
  }

  return result;
}

uint64_t sub_2587FA228(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2587FA270()
{
  result = qword_27F95E970;
  if (!qword_27F95E970)
  {
    sub_2587F9C98(255);
    sub_2587FA2F0();
    sub_2587FA400();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E970);
  }

  return result;
}

unint64_t sub_2587FA2F0()
{
  result = qword_27F95E978;
  if (!qword_27F95E978)
  {
    sub_2587F9CB8(255);
    sub_2587F9E14();
    sub_2587FA228(&qword_27F95E968, sub_2587F9E14);
    swift_getOpaqueTypeConformance2();
    sub_2587FA228(&qword_27F95D9D8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E978);
  }

  return result;
}

unint64_t sub_2587FA400()
{
  result = qword_27F95E980;
  if (!qword_27F95E980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E980);
  }

  return result;
}

unint64_t sub_2587FA454()
{
  result = qword_27F95E990;
  if (!qword_27F95E990)
  {
    sub_2587F9CEC(255, &qword_27F95E8F0, sub_2587F9BC4, sub_2587E60D0);
    sub_2587F9C98(255);
    sub_2588BC278();
    sub_2587FA270();
    sub_2587FA228(&qword_27F95E988, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    sub_2587FA228(&qword_27F95E628, sub_2587E60D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E990);
  }

  return result;
}

void sub_2587FA5B4()
{
  if (!qword_27F95E998)
  {
    sub_2587F9AFC(255);
    type metadata accessor for RelationshipPickerView();
    sub_2587FA688();
    sub_2587FA228(&qword_27F95E9B0, type metadata accessor for RelationshipPickerView);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95E998);
    }
  }
}

unint64_t sub_2587FA688()
{
  result = qword_27F95E9A0;
  if (!qword_27F95E9A0)
  {
    sub_2587F9AFC(255);
    sub_2587FA228(&qword_27F95E9A8, sub_2587F9B30);
    sub_2587FA228(&qword_27F95E628, sub_2587E60D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E9A0);
  }

  return result;
}

uint64_t sub_2587FA768(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2587FA7D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactLabelEditView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2587FA834()
{
  v1 = *(type metadata accessor for ContactLabelEditView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_2587F7D78(v2);
}

uint64_t objectdestroyTm_7()
{
  v1 = (type metadata accessor for ContactLabelEditView(0) - 8);
  v2 = *(*v1 + 64);
  v3 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));
  v4 = *v3;

  v5 = *(v3 + 1);

  v6 = *(v3 + 3);

  v7 = *(v3 + 4);
  swift_unknownObjectRelease();
  v8 = v1[9];
  sub_2587FAAF8(0, &qword_27F95E160, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_2588BC1C8();
    (*(*(v9 - 8) + 8))(&v3[v8], v9);
  }

  else
  {
    v10 = *&v3[v8];
  }

  return swift_deallocObject();
}

double sub_2587FA9F4@<D0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for ContactLabelEditView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  *&result = sub_2587F877C(v4, a1).n128_u64[0];
  return result;
}

uint64_t sub_2587FAA64(uint64_t a1, _OWORD *a2)
{
  v4 = *(type metadata accessor for ContactLabelEditView(0) - 8);
  v5 = a2[5];
  v6 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));
  v12[4] = a2[4];
  v12[5] = v5;
  v7 = a2[7];
  v12[6] = a2[6];
  v12[7] = v7;
  v8 = a2[1];
  v12[0] = *a2;
  v12[1] = v8;
  v9 = a2[3];
  v12[2] = a2[2];
  v12[3] = v9;
  v10 = *(v6 + 24);
  return (*(v6 + 16))(v12);
}

void sub_2587FAAF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2587FAB5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, ValueMetadata *))
{
  if (!*a2)
  {
    sub_2587F9CB8(255);
    v7 = a3(a1, v6, &type metadata for MedicalIDErrorView);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_2587FABC4()
{
  if (!qword_27F95E9C8)
  {
    sub_2587FAAF8(255, &qword_27F95E920, sub_2587F9EA8, MEMORY[0x277CE14B8]);
    v0 = sub_2588BC0B8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E9C8);
    }
  }
}

void sub_2587FAC5C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2587FACAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2587FAD0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_2587FAD80(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_2587FADE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2587FAE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_2587FAEA4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_2587FAF08(uint64_t a1, uint64_t a2)
{
  sub_2587FA08C(0, &qword_27F95E3B0, MEMORY[0x277CDE470]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2587FAF90()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 144) = v2;
  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void sub_2587FB03C()
{
  sub_2587FB424();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v0 + 32);
  v17 = *(v0 + 8);
  v8 = swift_allocObject();
  v9 = *(v0 + 16);
  *(v8 + 16) = *v0;
  *(v8 + 32) = v9;
  *(v8 + 48) = *(v0 + 32);
  v15 = v0;
  sub_2587FB4AC(&v17, v16);

  sub_2588BD318();
  sub_258790D88();
  v10 = swift_allocObject();
  v11 = v17;
  *(v10 + 16) = xmmword_2588BFF50;
  *(v10 + 32) = v11;
  *(v10 + 48) = 0x6E6F74747542;
  *(v10 + 56) = 0xE600000000000000;

  v12 = sub_2588BD9A8();

  v13 = HKUIJoinStringsForAutomationIdentifier();

  if (v13)
  {
    sub_2588BD8A8();

    sub_2587FB8A4(&qword_27F95E9D8, sub_2587FB424);
    sub_2588BCFB8();

    (*(v3 + 8))(v6, v2);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2587FB290@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v22 = a1[1];
  sub_2587FB508();
  sub_25878F648();
  v4 = sub_2588BCDF8();
  v6 = v5;
  v8 = v7;
  sub_2588BCBF8();
  v9 = sub_2588BCDD8();
  v11 = v10;
  v13 = v12;

  sub_2587B1CF8(v4, v6, v8 & 1);

  if (v22)
  {
    sub_2588BD158();
  }

  else
  {
    sub_2588BD178();
  }

  v14 = sub_2588BCD98();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_2587B1CF8(v9, v11, v13 & 1);

  *a2 = v14;
  *(a2 + 8) = v16;
  *(a2 + 16) = v18 & 1;
  *(a2 + 24) = v20;
  return result;
}

void sub_2587FB3E8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  sub_2587FB03C();
}

void sub_2587FB424()
{
  if (!qword_27F95E9D0)
  {
    v0 = sub_2588BD348();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E9D0);
    }
  }
}

uint64_t sub_2587FB47C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  return v1();
}

uint64_t sub_2587FB508()
{
  v0 = sub_2588BD858();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v2 = qword_27F95DA88;
  v3 = sub_2588BBAC8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v2;
  sub_2588BBAB8();
  return sub_2588BD8B8();
}

uint64_t sub_2587FB6BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2587FB704(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2587FB75C()
{
  result = qword_27F95E9E0;
  if (!qword_27F95E9E0)
  {
    sub_2587FB83C();
    sub_2587FB8A4(&qword_27F95E9D8, sub_2587FB424);
    sub_2587FB8A4(&qword_27F95D9D8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E9E0);
  }

  return result;
}

void sub_2587FB83C()
{
  if (!qword_27F95E9E8)
  {
    sub_2587FB424();
    sub_2588BCA98();
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E9E8);
    }
  }
}

uint64_t sub_2587FB8A4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2587FB900()
{
  result = qword_27F95E9F0;
  if (!qword_27F95E9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E9F0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11MedicalIDUI15BasicAlertModelVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2587FB998(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_2587FB9E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2587FBA5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a1;
  v24 = a2;
  v3 = v2[1];
  v4 = v2[3];
  v35 = v2[2];
  v36 = v4;
  v5 = v2[1];
  v33 = *v2;
  v34 = v5;
  v6 = v2[3];
  v28 = v35;
  v29 = v6;
  v37 = *(v2 + 8);
  v30 = *(v2 + 8);
  v27 = v3;
  v26 = v33;
  sub_2587FC3C4();
  MEMORY[0x259C8C5A0](&v31);
  v7 = v32;
  if (v32)
  {
    v8 = v31;

    sub_2587FC42C(v8, v7);
  }

  else
  {
    sub_2587FC42C(v31, 0);
    v8 = 0;
    v7 = 0xE000000000000000;
  }

  v23 = v7;
  v31 = v8;
  v32 = v7;
  sub_2588BDA78();
  sub_2587FC490(&v33, &v26);
  v9 = sub_2588BDA68();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  v12 = v36;
  *(v10 + 64) = v35;
  *(v10 + 80) = v12;
  *(v10 + 96) = v37;
  v13 = v34;
  *(v10 + 32) = v33;
  *(v10 + 48) = v13;
  sub_2587FC490(&v33, &v26);
  v14 = sub_2588BDA68();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v11;
  v16 = v36;
  *(v15 + 64) = v35;
  *(v15 + 80) = v16;
  *(v15 + 96) = v37;
  v17 = v34;
  *(v15 + 32) = v33;
  *(v15 + 48) = v17;
  v18 = sub_2588BD468();
  v22 = v21;
  v21[3] = v27;
  v19 = MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v19);
  sub_2587FC55C();
  sub_2587FC60C();
  sub_2587FC7CC(0, &qword_27F95D970);
  sub_2587FC940(&qword_27F95EA28, sub_2587FC55C);
  sub_25878F648();
  sub_2587FC818();
  sub_2587FC8C0();
  sub_2588BD038();
}

uint64_t sub_2587FBDEC(__int128 *a1)
{
  v6 = a1[2];
  v7 = a1[3];
  v8 = *(a1 + 8);
  v4 = *a1;
  v5 = a1[1];
  sub_2587FC3C4();
  MEMORY[0x259C8C5A0](&v9);
  v1 = v10;
  if (v10)
  {
    v2 = v9;

    sub_2587FC42C(v2, v1);
  }

  else
  {
    sub_2587FC42C(v9, 0);
  }

  sub_2587FC6E0(0, &qword_27F95EA18, type metadata accessor for BasicAlertModel.Action, MEMORY[0x277D83940]);
  sub_2588BB9F8();
  sub_2587FB424();
  sub_2587FC744();
  sub_2587FC940(&qword_27F95E9D8, sub_2587FB424);
  sub_2587FC940(&qword_27F95EA40, type metadata accessor for BasicAlertModel.Action);
  return sub_2588BD4C8();
}

uint64_t sub_2587FBFC4(uint64_t a1)
{
  v2 = type metadata accessor for BasicAlertModel.Action();
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  sub_2587FC6E0(0, &qword_27F95D9E0, MEMORY[0x277CDD650], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v16 - v8;
  v10 = *(v3 + 32);
  v11 = (a1 + *(v3 + 28));
  v12 = v11[1];
  v16[0] = *v11;
  v16[1] = v12;
  sub_2587B226C(a1 + v10, v9);
  sub_2587FCB20(a1, v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BasicAlertModel.Action);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  sub_2587B2B0C(v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  sub_25878F648();

  return sub_2588BD328();
}

uint64_t sub_2587FC19C@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v13 = a1[2];
  v14 = a1[3];
  v15 = *(a1 + 8);
  v11 = *a1;
  v12 = a1[1];
  sub_2587FC3C4();
  MEMORY[0x259C8C5A0](&v16);
  v3 = v17;
  if (!v17)
  {
    sub_2587FC42C(v16, 0);
    goto LABEL_5;
  }

  v4 = v18;
  v5 = v16;

  sub_2587FC42C(v5, v3);
  if (!v4)
  {
LABEL_5:
    result = 0;
    v7 = 0;
    v10 = 0;
    v8 = 0;
    goto LABEL_6;
  }

  sub_25878F648();
  result = sub_2588BCDF8();
  v10 = v9 & 1;
LABEL_6:
  *a2 = result;
  a2[1] = v7;
  a2[2] = v10;
  a2[3] = v8;
  return result;
}

void *sub_2587FC2A4@<X0>(__int128 *a1@<X2>, BOOL *a2@<X8>)
{
  v7 = a1[2];
  v8 = a1[3];
  v9 = *(a1 + 8);
  v5 = *a1;
  v6 = a1[1];
  sub_2587FC3C4();
  result = MEMORY[0x259C8C5A0](&v10);
  v4 = v11;
  if (v11)
  {
    result = sub_2587FC42C(v10, v11);
  }

  *a2 = v4 != 0;
  return result;
}

_BYTE *sub_2587FC324(_BYTE *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*result & 1) == 0)
  {
    v6 = *(a4 + 32);
    v7 = *(a4 + 48);
    v8 = *(a4 + 64);
    v4 = *a4;
    v5 = *(a4 + 16);
    sub_2587FC490(a4, v9);
    sub_2587FC3C4();
    sub_2588BD438();
    v9[2] = v6;
    v9[3] = v7;
    v10 = v8;
    v9[0] = v4;
    v9[1] = v5;
    return sub_2587FC9FC(v9);
  }

  return result;
}

void sub_2587FC3C4()
{
  if (!qword_27F95E9F8)
  {
    sub_2587FC7CC(255, &qword_27F95DC40);
    v0 = sub_2588BD488();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E9F8);
    }
  }
}

uint64_t sub_2587FC42C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void *sub_2587FC4C8@<X0>(BOOL *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_2587FC2A4((v1 + 32), a1);
}

uint64_t objectdestroyTm_8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  if (v0[7])
  {

    v4 = v0[9];

    v5 = v0[10];

    v6 = v0[12];
  }

  return swift_deallocObject();
}

void sub_2587FC55C()
{
  if (!qword_27F95EA00)
  {
    sub_2587FC5B8();
    v0 = sub_2588BC8B8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95EA00);
    }
  }
}

unint64_t sub_2587FC5B8()
{
  result = qword_27F95EA08;
  if (!qword_27F95EA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95EA08);
  }

  return result;
}

void sub_2587FC60C()
{
  if (!qword_27F95EA10)
  {
    sub_2587FC6E0(255, &qword_27F95EA18, type metadata accessor for BasicAlertModel.Action, MEMORY[0x277D83940]);
    sub_2588BB9F8();
    sub_2587FB424();
    sub_2587FC744();
    sub_2587B2C84();
    v0 = sub_2588BD4D8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95EA10);
    }
  }
}

void sub_2587FC6E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2587FC744()
{
  result = qword_27F95EA20;
  if (!qword_27F95EA20)
  {
    sub_2587FC6E0(255, &qword_27F95EA18, type metadata accessor for BasicAlertModel.Action, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95EA20);
  }

  return result;
}

void sub_2587FC7CC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2588BDCE8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_2587FC818()
{
  result = qword_27F95EA30;
  if (!qword_27F95EA30)
  {
    sub_2587FC60C();
    sub_2587FC940(&qword_27F95E9D8, sub_2587FB424);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95EA30);
  }

  return result;
}

unint64_t sub_2587FC8C0()
{
  result = qword_27F95EA38;
  if (!qword_27F95EA38)
  {
    sub_2587FC7CC(255, &qword_27F95D970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95EA38);
  }

  return result;
}

uint64_t sub_2587FC940(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2587FC988()
{
  v1 = type metadata accessor for BasicAlertModel.Action();
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = v0 + *(result + 36) + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  if (*v4)
  {
    v5 = *(v4 + 8);
    return (*v4)();
  }

  return result;
}

uint64_t sub_2587FC9FC(uint64_t a1)
{
  sub_2587FC3C4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2587FCA58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 48);
  v16 = *(a1 + 32);
  v17 = v6;
  v7 = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = v7;
  v8 = *(a1 + 48);
  v12 = v16;
  v13 = v8;
  v18 = *(a1 + 64);
  v14 = *(a1 + 64);
  v10 = v15[0];
  v11 = v5;
  sub_2587FCB20(v15, v19, sub_2587FC3C4);
  MEMORY[0x259C8C270](&v10, a2, &type metadata for BasicAlertModifier, a3);
  v19[2] = v12;
  v19[3] = v13;
  v20 = v14;
  v19[0] = v10;
  v19[1] = v11;
  return sub_2587FCB88(v19);
}

uint64_t sub_2587FCB20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

MedicalIDUI::MedicalIDEditingState_optional __swiftcall MedicalIDEditingState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2588BDF58();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t MedicalIDEditingState.rawValue.getter()
{
  v1 = 0x64656C62616E65;
  v2 = 0xD00000000000001BLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0)
  {
    v1 = 0xD00000000000001BLL;
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

unint64_t sub_2587FCCC4()
{
  result = qword_27F95EA48;
  if (!qword_27F95EA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95EA48);
  }

  return result;
}

uint64_t sub_2587FCD18()
{
  v1 = *v0;
  sub_2588BE038();
  sub_2588BD908();

  return sub_2588BE078();
}

uint64_t sub_2587FCDE4()
{
  *v0;
  *v0;
  *v0;
  sub_2588BD908();
}

uint64_t sub_2587FCE9C()
{
  v1 = *v0;
  sub_2588BE038();
  sub_2588BD908();

  return sub_2588BE078();
}

void sub_2587FCF70(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x64656C62616E65;
  v4 = 0xD00000000000001BLL;
  v5 = 0x80000002588C8B80;
  if (*v1 != 2)
  {
    v4 = 0xD000000000000013;
    v5 = 0x80000002588C8BA0;
  }

  if (*v1)
  {
    v3 = 0xD00000000000001BLL;
    v2 = 0x80000002588C8B60;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_2587FCFFC()
{
  result = qword_27F95EA50;
  if (!qword_27F95EA50)
  {
    sub_2587FD054();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95EA50);
  }

  return result;
}

void sub_2587FD054()
{
  if (!qword_27F95EA58)
  {
    v0 = sub_2588BDA08();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95EA58);
    }
  }
}

uint64_t getEnumTagSinglePayload for OrganDonationStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OrganDonationStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata accessor for NanoEmergencyContactAddNewView()
{
  result = qword_27F95EA60;
  if (!qword_27F95EA60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2587FD278()
{
  sub_2587B2F78();
  if (v0 <= 0x3F)
  {
    sub_2587FEFD4(319, &qword_27F95EA70, type metadata accessor for AddEmergencyContactFlowViewModel, MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_2587FEFD4(319, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
      if (v2 <= 0x3F)
      {
        sub_2587FF128(319, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_2587FEFD4(319, &qword_27F95DC90, type metadata accessor for MedicalIDDataManager, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_2587FD414@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v2 = type metadata accessor for NanoEmergencyContactAddNewView();
  v3 = v2 - 8;
  v46 = *(v2 - 8);
  v4 = *(v46 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v6;
  MEMORY[0x28223BE20](v5);
  v10 = &v39 - v9;
  sub_2587FE91C();
  v12 = *(v11 - 8);
  v48 = v11;
  v49 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v45 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587FEB98();
  v16 = *(v15 - 8);
  v50 = v15;
  v51 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v53 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587FE9CC();
  sub_2587FEB50(&qword_27F95EAA0, sub_2587FE9CC);
  sub_2588BC118();
  v19 = v1 + *(v3 + 36);
  v20 = *v19;
  v21 = *(v19 + 8);
  v58 = v20;
  v59 = v21;
  sub_2587FF128(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  v47 = v22;
  sub_2588BD2E8();
  v41 = v56;
  v42 = v1;
  v44 = v10;
  sub_2587FEC9C(v1, v10);
  v23 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v43 = v8;
  v24 = swift_allocObject();
  sub_2587FED00(v10, v24 + v23);
  sub_2587FEC9C(v1, v7);
  v25 = swift_allocObject();
  sub_2587FED00(v7, v25 + v23);
  v40 = type metadata accessor for RelationshipPickerView();
  v46 = sub_2587FEB50(&qword_27F95EAB0, sub_2587FE91C);
  v26 = sub_2587FEB50(&qword_27F95E9B0, type metadata accessor for RelationshipPickerView);
  v27 = v48;
  v28 = v45;
  sub_2588BD068();

  (*(v49 + 8))(v28, v27);
  v29 = v42;
  v30 = v42 + *(v3 + 40);
  v31 = *v30;
  v32 = *(v30 + 8);
  v58 = v31;
  v59 = v32;
  sub_2588BD2E8();
  v33 = v29;
  v34 = v44;
  sub_2587FEC9C(v33, v44);
  v35 = swift_allocObject();
  sub_2587FED00(v34, v35 + v23);
  v54 = v27;
  v55 = v40;
  v56 = v46;
  v57 = v26;
  swift_getOpaqueTypeConformance2();
  v36 = v50;
  v37 = v53;
  sub_2588BD068();

  return (*(v51 + 8))(v37, v36);
}

__n128 sub_2587FD9A4@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_2588BC608();
  v16 = 1;
  sub_2587FDA20(&v10);
  v3 = v11;
  v4 = v12;
  v5 = v13;
  v6 = v14;
  v7 = v15;
  result = v10;
  v9 = v16;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v9;
  *(a1 + 24) = result;
  *(a1 + 40) = v3;
  *(a1 + 48) = v4;
  *(a1 + 56) = v5;
  *(a1 + 64) = v6;
  *(a1 + 72) = v7;
  return result;
}

uint64_t sub_2587FDA20@<X0>(uint64_t a1@<X8>)
{
  sub_2588BC688();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v2 = qword_27F95DA88;
  v3 = sub_2588BCDE8();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_2588BD258();
  *a1 = v3;
  *(a1 + 8) = v5;
  v7 &= 1u;
  *(a1 + 16) = v7;
  *(a1 + 24) = v9;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v10;
  sub_2587A99B0(v3, v5, v7);

  sub_2587B1CF8(v3, v5, v7);
}

uint64_t sub_2587FDB68(uint64_t a1)
{
  v2 = type metadata accessor for NanoEmergencyContactAddNewView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587FEFD4(0, &qword_27F95D830, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v10 = sub_2588BDAA8();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_2587FEC9C(a1, v5);
  sub_2588BDA78();
  v11 = sub_2588BDA68();
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v11;
  *(v13 + 24) = v14;
  sub_2587FED00(v5, v13 + v12);
  sub_25885CB04(0, 0, v9, &unk_2588C2A80, v13);
}

uint64_t sub_2587FDD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[165] = a4;
  sub_2588BDA78();
  v4[166] = sub_2588BDA68();
  v6 = sub_2588BDA28();
  v4[167] = v6;
  v4[168] = v5;

  return MEMORY[0x2822009F8](sub_2587FDDE0, v6, v5);
}

uint64_t sub_2587FDDE0()
{
  v1 = *(v0 + 1320);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *(v0 + 1224) = v2;
  *(v0 + 1232) = v3;
  sub_2587FEFD4(0, &qword_27F95EA70, type metadata accessor for AddEmergencyContactFlowViewModel, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  v4 = *(v0 + 1256);
  swift_getKeyPath();
  *(v0 + 1264) = v4;
  sub_2587FEB50(&qword_27F95E380, type metadata accessor for AddEmergencyContactFlowViewModel);
  sub_2588BBB98();

  swift_beginAccess();
  v5 = *(v4 + 24);
  v6 = *(v4 + 40);
  v7 = *(v4 + 72);
  *(v0 + 176) = *(v4 + 56);
  *(v0 + 192) = v7;
  *(v0 + 144) = v5;
  *(v0 + 160) = v6;
  v8 = *(v4 + 88);
  v9 = *(v4 + 104);
  v10 = *(v4 + 136);
  *(v0 + 240) = *(v4 + 120);
  *(v0 + 256) = v10;
  *(v0 + 208) = v8;
  *(v0 + 224) = v9;
  sub_2587DEE04(v0 + 144, v0 + 272);

  v11 = *(v0 + 224);
  *(v0 + 80) = *(v0 + 208);
  *(v0 + 96) = v11;
  v12 = *(v0 + 256);
  *(v0 + 112) = *(v0 + 240);
  *(v0 + 128) = v12;
  v13 = *(v0 + 160);
  *(v0 + 16) = *(v0 + 144);
  *(v0 + 32) = v13;
  v14 = *(v0 + 192);
  *(v0 + 48) = *(v0 + 176);
  *(v0 + 64) = v14;
  if (sub_2587DF798(v0 + 16) == 1)
  {
    v15 = *(v0 + 1328);

LABEL_12:
    v51 = *(v0 + 8);

    return v51();
  }

  v16 = (v0 + 1040);
  v17 = (v0 + 1120);
  v18 = *(v0 + 64);
  *(v0 + 1072) = *(v0 + 48);
  *(v0 + 1088) = v18;
  *(v0 + 1104) = *(v0 + 80);
  v19 = *(v0 + 32);
  *(v0 + 1040) = *(v0 + 16);
  *(v0 + 1056) = v19;
  v52 = *(v0 + 104);
  v53 = *(v0 + 96);
  v20 = *(v0 + 128);
  *(v0 + 1120) = *(v0 + 112);
  *(v0 + 1136) = v20;
  *(v0 + 1240) = v2;
  *(v0 + 1248) = v3;
  sub_2588BD2C8();
  v21 = *(v0 + 1272);
  swift_getKeyPath();
  *(v0 + 1280) = v21;
  sub_2588BBB98();

  swift_beginAccess();
  v22 = *(v21 + 160);
  *(v0 + 1352) = v22;
  v23 = *(v21 + 168);
  *(v0 + 1360) = v23;

  if (!v23)
  {
    v47 = *(v0 + 1328);

    v48 = *(v0 + 1088);
    *(v0 + 432) = *(v0 + 1072);
    *(v0 + 448) = v48;
    *(v0 + 464) = *(v0 + 1104);
    v49 = *(v0 + 1056);
    *(v0 + 400) = *v16;
    *(v0 + 416) = v49;
    *(v0 + 480) = v53;
    *(v0 + 488) = v52;
    v50 = *(v0 + 1136);
    *(v0 + 496) = *v17;
    *(v0 + 512) = v50;
    sub_2587C66FC(v0 + 400);
    goto LABEL_12;
  }

  v24 = *(v0 + 1320);
  v25 = *(v0 + 104);

  v26 = *(type metadata accessor for NanoEmergencyContactAddNewView() + 24);
  sub_2587FEFD4(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
  sub_2588BD528();
  v27 = *(v0 + 1288);
  v28 = *(v0 + 1088);
  *(v0 + 560) = *(v0 + 1072);
  *(v0 + 576) = v28;
  *(v0 + 592) = *(v0 + 1104);
  v29 = *(v0 + 1056);
  *(v0 + 528) = *v16;
  *(v0 + 544) = v29;
  *(v0 + 608) = v22;
  *(v0 + 616) = v23;
  v30 = *(v0 + 1136);
  *(v0 + 624) = *v17;
  *(v0 + 640) = v30;
  swift_getKeyPath();
  *(v0 + 1296) = v27;
  sub_2587914E8(v0 + 528, v0 + 656);
  sub_2587FEB50(&qword_27F95DBD0, type metadata accessor for MedicalIDEditableEmergencyContactsModel);
  sub_2588BBB98();

  *(v0 + 1304) = v27;
  swift_getKeyPath();
  sub_2588BBBB8();

  swift_beginAccess();
  v31 = *(v27 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v27 + 16) = v31;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v31 = sub_2587F0300(0, *(v31 + 2) + 1, 1, v31);
    *(v27 + 16) = v31;
  }

  v34 = *(v31 + 2);
  v33 = *(v31 + 3);
  if (v34 >= v33 >> 1)
  {
    v31 = sub_2587F0300((v33 > 1), v34 + 1, 1, v31);
  }

  v35 = *(v0 + 1320);
  *(v31 + 2) = v34 + 1;
  v36 = &v31[128 * v34];
  v37 = *(v0 + 528);
  v38 = *(v0 + 544);
  v39 = *(v0 + 576);
  *(v36 + 4) = *(v0 + 560);
  *(v36 + 5) = v39;
  *(v36 + 2) = v37;
  *(v36 + 3) = v38;
  v40 = *(v0 + 592);
  v41 = *(v0 + 608);
  v42 = *(v0 + 640);
  *(v36 + 8) = *(v0 + 624);
  *(v36 + 9) = v42;
  *(v36 + 6) = v40;
  *(v36 + 7) = v41;
  *(v27 + 16) = v31;
  swift_endAccess();
  *(v0 + 1312) = v27;
  swift_getKeyPath();
  sub_2588BBBA8();

  v43 = v35[1];
  v54 = (*v35 + **v35);
  v44 = (*v35)[1];
  v45 = swift_task_alloc();
  *(v0 + 1368) = v45;
  *v45 = v0;
  v45[1] = sub_2587FE39C;

  return v54();
}

uint64_t sub_2587FE39C()
{
  v2 = *v1;
  v3 = *(*v1 + 1368);
  v8 = *v1;
  *(*v1 + 1376) = v0;

  v4 = *(v2 + 1344);
  v5 = *(v2 + 1336);
  if (v0)
  {
    v6 = sub_2587FE560;
  }

  else
  {
    v6 = sub_2587FE4B8;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_2587FE4B8()
{
  v1 = *(v0 + 1360);
  v2 = *(v0 + 1352);
  v3 = *(v0 + 1328);

  v4 = *(v0 + 1056);
  v5 = *(v0 + 1088);
  *(v0 + 944) = *(v0 + 1072);
  *(v0 + 960) = v5;
  *(v0 + 976) = *(v0 + 1104);
  *(v0 + 912) = *(v0 + 1040);
  *(v0 + 928) = v4;
  *(v0 + 992) = v2;
  *(v0 + 1000) = v1;
  v6 = *(v0 + 1136);
  *(v0 + 1008) = *(v0 + 1120);
  *(v0 + 1024) = v6;
  sub_2587C66FC(v0 + 912);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2587FE560()
{
  v1 = *(v0 + 1360);
  v2 = *(v0 + 1352);
  v3 = *(v0 + 1328);

  v4 = *(v0 + 1056);
  v5 = *(v0 + 1088);
  *(v0 + 816) = *(v0 + 1072);
  *(v0 + 832) = v5;
  *(v0 + 848) = *(v0 + 1104);
  *(v0 + 784) = *(v0 + 1040);
  *(v0 + 800) = v4;
  *(v0 + 864) = v2;
  *(v0 + 872) = v1;
  v6 = *(v0 + 1136);
  *(v0 + 880) = *(v0 + 1120);
  *(v0 + 896) = v6;
  sub_2587C66FC(v0 + 784);
  v7 = *(v0 + 8);
  v8 = *(v0 + 1376);

  return v7();
}

__n128 sub_2587FE608@<Q0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D12930]) init];
  v18 = *(a1 + 16);
  v19 = *(a1 + 24);
  sub_2587FEFD4(0, &qword_27F95EA70, type metadata accessor for AddEmergencyContactFlowViewModel, MEMORY[0x277CE10B8]);
  sub_2588BD2E8();
  swift_getKeyPath();
  sub_2587FEFD4(0, &qword_27F95EAB8, type metadata accessor for AddEmergencyContactFlowViewModel, MEMORY[0x277CE11F8]);
  sub_2588BD448();

  v5 = *(type metadata accessor for NanoEmergencyContactAddNewView() + 24);
  sub_2587FEFD4(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
  sub_2588BD528();
  v7 = *(v13 + 32);
  v6 = *(v13 + 40);

  v8 = type metadata accessor for RelationshipPickerView();
  v9 = v8[6];
  *(a2 + v9) = swift_getKeyPath();
  sub_2587FEFD4(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v10 = a2 + v8[8];
  sub_2587FF128(0, &qword_27F95D458, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  sub_2588BD2B8();
  *v10 = v13;
  *(v10 + 2) = v14;
  *a2 = v4;
  v11 = (a2 + v8[7]);
  result = v15;
  *v11 = v15;
  v11[1].n128_u64[0] = v16;
  v11[1].n128_u64[1] = v17;
  a2[1] = v7;
  a2[2] = v6;
  return result;
}

uint64_t sub_2587FE88C(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for NanoEmergencyContactAddNewView() + 28));
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_2587FF128(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  return sub_2588BD2D8();
}

void sub_2587FE91C()
{
  if (!qword_27F95EA78)
  {
    sub_2587FE9CC();
    sub_2587FEB50(&qword_27F95EAA0, sub_2587FE9CC);
    v0 = sub_2588BC128();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95EA78);
    }
  }
}

void sub_2587FE9CC()
{
  if (!qword_27F95EA80)
  {
    sub_2587FEFD4(255, &qword_27F95EA88, sub_2587FEA60, MEMORY[0x277CE14B8]);
    sub_2587FEAC8();
    v0 = sub_2588BD368();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95EA80);
    }
  }
}

void sub_2587FEA60()
{
  if (!qword_27F95EA90)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F95EA90);
    }
  }
}

unint64_t sub_2587FEAC8()
{
  result = qword_27F95EA98;
  if (!qword_27F95EA98)
  {
    sub_2587FEFD4(255, &qword_27F95EA88, sub_2587FEA60, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95EA98);
  }

  return result;
}

uint64_t sub_2587FEB50(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2587FEB98()
{
  if (!qword_27F95EAA8)
  {
    sub_2587FE91C();
    type metadata accessor for RelationshipPickerView();
    sub_2587FEB50(&qword_27F95EAB0, sub_2587FE91C);
    sub_2587FEB50(&qword_27F95E9B0, type metadata accessor for RelationshipPickerView);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95EAA8);
    }
  }
}

uint64_t sub_2587FEC9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NanoEmergencyContactAddNewView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2587FED00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NanoEmergencyContactAddNewView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_9()
{
  v1 = (type metadata accessor for NanoEmergencyContactAddNewView() - 8);
  v2 = *(*v1 + 64);
  v3 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));
  v4 = *(v3 + 1);

  v5 = *(v3 + 2);

  v6 = *(v3 + 3);

  v7 = v1[8];
  sub_2587FEFD4(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
  (*(*(v8 - 8) + 8))(&v3[v7], v8);
  v9 = *&v3[v1[9] + 8];

  v10 = *&v3[v1[10] + 8];

  v11 = *&v3[v1[11]];

  return swift_deallocObject();
}

double sub_2587FEED8@<D0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for NanoEmergencyContactAddNewView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  *&result = sub_2587FE608(v4, a1).n128_u64[0];
  return result;
}

uint64_t sub_2587FEF60(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for NanoEmergencyContactAddNewView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void sub_2587FEFD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2587FF038(uint64_t a1)
{
  v4 = *(type metadata accessor for NanoEmergencyContactAddNewView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2587AE310;

  return sub_2587FDD44(a1, v6, v7, v1 + v5);
}

void sub_2587FF128(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t type metadata accessor for NanoEmergencyContactsOverallEditView()
{
  result = qword_27F95EAC0;
  if (!qword_27F95EAC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2587FF1EC()
{
  sub_258800A64(319, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
  if (v0 <= 0x3F)
  {
    sub_258800A64(319, &qword_27F95DC90, type metadata accessor for MedicalIDDataManager, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2587FF2EC()
{
  v1 = sub_2588BC598();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for NanoEmergencyContactsOverallEditView() + 20));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_2588BDBE8();
    v9 = sub_2588BCB58();
    sub_2588BBC68();

    sub_2588BC588();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_2587FF43C@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v2 = type metadata accessor for NanoEmergencyContactAddNewView();
  v3 = *(v2 - 8);
  v64 = (v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8);
  v65 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v62 = (&v54 - v7);
  v8 = type metadata accessor for NanoEmergencyContactsOverallEditView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v58 = v11;
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NanoEmergencyContactEditSectionView();
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v63 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v67 = (&v54 - v18);
  v59 = type metadata accessor for NanoEmergencyContactsOverallEditView;
  v55 = v1;
  sub_258800914(v1, v12, type metadata accessor for NanoEmergencyContactsOverallEditView);
  v19 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v20 = swift_allocObject();
  sub_258800530(v12, v20 + v19);
  sub_258800A64(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
  v57 = v21;
  sub_2588BD528();
  v54 = *&v71[0];
  type metadata accessor for MedicalIDDataManager();
  v56 = sub_258800660(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
  v22 = sub_2588BBF58();
  v24 = v23;
  v25 = v67;
  *v67 = &unk_2588C2B60;
  v25[1] = v20;
  v26 = *(v14 + 28);
  v61 = type metadata accessor for MedicalIDEditableEmergencyContactsModel();
  v60 = sub_258800660(&qword_27F95DBD0, type metadata accessor for MedicalIDEditableEmergencyContactsModel);
  sub_2588BD548();
  v27 = v25 + *(v14 + 32);
  *v27 = v22;
  v27[8] = v24 & 1;
  sub_258800914(v55, v12, v59);
  v28 = swift_allocObject();
  sub_258800530(v12, v28 + v19);
  sub_2588BD528();
  v29 = sub_2588BBF58();
  LOBYTE(v14) = v30;
  v31 = v62;
  *v62 = &unk_2588C2B70;
  v31[1] = v28;
  v32 = type metadata accessor for AddEmergencyContactFlowViewModel();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  v35 = swift_allocObject();
  *(v35 + 16) = 2;
  sub_25880088C(v71);
  v36 = v71[5];
  *(v35 + 88) = v71[4];
  *(v35 + 104) = v36;
  v37 = v71[7];
  *(v35 + 120) = v71[6];
  *(v35 + 136) = v37;
  v38 = v71[1];
  *(v35 + 24) = v71[0];
  *(v35 + 40) = v38;
  v39 = v71[3];
  *(v35 + 56) = v71[2];
  *(v35 + 72) = v39;
  *(v35 + 152) = 0;
  *(v35 + 154) = 0;
  *(v35 + 160) = 0;
  *(v35 + 168) = 0;
  sub_2588BBBC8();
  v68 = v35;
  sub_2588BD2B8();
  v40 = v70;
  v31[2] = v69;
  v31[3] = v40;
  v41 = v64;
  v42 = v31 + v64[8];
  sub_2588BD548();
  v43 = v31 + v41[9];
  LOBYTE(v68) = 0;
  sub_2588BD2B8();
  v44 = v70;
  *v43 = v69;
  *(v43 + 1) = v44;
  v45 = v31 + v41[10];
  LOBYTE(v68) = 0;
  sub_2588BD2B8();
  v46 = v70;
  *v45 = v69;
  *(v45 + 1) = v46;
  v47 = v31 + v41[11];
  *v47 = v29;
  v47[8] = v14 & 1;
  v48 = v67;
  v49 = v63;
  sub_258800914(v67, v63, type metadata accessor for NanoEmergencyContactEditSectionView);
  v50 = v65;
  sub_258800914(v31, v65, type metadata accessor for NanoEmergencyContactAddNewView);
  v51 = v66;
  sub_258800914(v49, v66, type metadata accessor for NanoEmergencyContactEditSectionView);
  sub_2588008A4();
  sub_258800914(v50, v51 + *(v52 + 48), type metadata accessor for NanoEmergencyContactAddNewView);
  sub_25880097C(v31, type metadata accessor for NanoEmergencyContactAddNewView);
  sub_25880097C(v48, type metadata accessor for NanoEmergencyContactEditSectionView);
  sub_25880097C(v50, type metadata accessor for NanoEmergencyContactAddNewView);
  return sub_25880097C(v49, type metadata accessor for NanoEmergencyContactEditSectionView);
}

uint64_t sub_2587FFA58()
{
  v0[2] = sub_2588BDA78();
  v0[3] = sub_2588BDA68();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2587FFB04;

  return sub_2587FFC60();
}

uint64_t sub_2587FFB04()
{
  v2 = v0;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v10 = *v1;
  *(*v1 + 40) = v2;

  v7 = sub_2588BDA28();
  if (v2)
  {
    v8 = sub_258800AC8;
  }

  else
  {
    v8 = sub_258800ACC;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_2587FFC60()
{
  v1[12] = v0;
  sub_2587B63B8();
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v4 = *(*(type metadata accessor for MedicalIDData() - 8) + 64) + 15;
  v1[14] = swift_task_alloc();
  v5 = *(*(type metadata accessor for NanoEmergencyContactsOverallEditView() - 8) + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = sub_2588BDA78();
  v1[17] = sub_2588BDA68();
  v7 = sub_2588BDA28();
  v1[18] = v7;
  v1[19] = v6;

  return MEMORY[0x2822009F8](sub_2587FFD80, v7, v6);
}

uint64_t sub_2587FFD80()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[12];
  v0[20] = sub_2587FF2EC();
  sub_258800914(v3, v2, type metadata accessor for NanoEmergencyContactsOverallEditView);
  v0[21] = sub_2588BDA68();
  v5 = sub_2588BDA28();
  v0[22] = v5;
  v0[23] = v4;

  return MEMORY[0x2822009F8](sub_2587FFE40, v5, v4);
}

uint64_t sub_2587FFE40()
{
  v1 = v0[20];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[13];
  swift_getKeyPath();
  v0[8] = v1;
  sub_258800660(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
  sub_2588BBB98();

  v5 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__medicalIDData;
  swift_beginAccess();
  sub_258800914(v1 + v5, v4, sub_2587B63B8);
  LoadState<>.loadedValue.getter(v2);
  sub_25880097C(v4, sub_2587B63B8);
  sub_258800A64(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
  sub_2588BD528();
  v6 = v0[9];
  swift_getKeyPath();
  v0[10] = v6;
  sub_258800660(&qword_27F95DBD0, type metadata accessor for MedicalIDEditableEmergencyContactsModel);
  sub_2588BBB98();

  swift_beginAccess();
  v7 = *(v6 + 16);

  v8 = *(v2 + 16);

  *(v2 + 16) = v7;
  v9 = swift_task_alloc();
  v0[24] = v9;
  *v9 = v0;
  v9[1] = sub_2588000C0;
  v10 = v0[20];
  v11 = v0[14];

  return sub_258880280(v11, (v0 + 11));
}

uint64_t sub_2588000C0()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v8 = *v1;

  v4 = *(v2 + 176);
  v5 = *(v2 + 184);
  if (v0)
  {
    v6 = sub_25880030C;
  }

  else
  {
    v6 = sub_2588001D0;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_2588001D0()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[14];
  v3 = v0[15];

  sub_25880097C(v3, type metadata accessor for NanoEmergencyContactsOverallEditView);
  sub_25880097C(v4, type metadata accessor for MedicalIDData);
  v5 = v0[18];
  v6 = v0[19];

  return MEMORY[0x2822009F8](sub_258800280, v5, v6);
}

uint64_t sub_258800280()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[13];

  v5 = v0[1];

  return v5();
}

uint64_t sub_25880030C()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[14];
  v3 = v0[15];

  sub_25880097C(v3, type metadata accessor for NanoEmergencyContactsOverallEditView);
  sub_25880097C(v4, type metadata accessor for MedicalIDData);
  v0[25] = v0[11];
  v5 = v0[18];
  v6 = v0[19];

  return MEMORY[0x2822009F8](sub_2588003C4, v5, v6);
}

uint64_t sub_2588003C4()
{
  v1 = v0[25];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[13];

  sub_2587CE078();
  swift_allocError();
  *v6 = v1;

  v7 = v0[1];

  return v7();
}

uint64_t sub_258800480()
{
  v0[2] = sub_2588BDA78();
  v0[3] = sub_2588BDA68();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2587C9A98;

  return sub_2587FFC60();
}

uint64_t sub_258800530(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NanoEmergencyContactsOverallEditView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258800594()
{
  v1 = *(type metadata accessor for NanoEmergencyContactsOverallEditView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_2587AEAC8;

  return sub_2587FFA58();
}

uint64_t sub_258800660(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_10()
{
  v1 = (type metadata accessor for NanoEmergencyContactsOverallEditView() - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_258800A64(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = *(v3 + v1[7]);

  return swift_deallocObject();
}

uint64_t sub_2588007C0()
{
  v1 = *(type metadata accessor for NanoEmergencyContactsOverallEditView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_2587AE310;

  return sub_258800480();
}

double sub_25880088C(_OWORD *a1)
{
  result = 0.0;
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

void sub_2588008A4()
{
  if (!qword_27F95EAD0)
  {
    type metadata accessor for NanoEmergencyContactEditSectionView();
    type metadata accessor for NanoEmergencyContactAddNewView();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F95EAD0);
    }
  }
}

uint64_t sub_258800914(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25880097C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2588009DC()
{
  result = qword_27F95EAD8;
  if (!qword_27F95EAD8)
  {
    sub_258800A64(255, &qword_27F95EAE0, sub_2588008A4, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95EAD8);
  }

  return result;
}

void sub_258800A64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for NanoEmergencyContactEditSectionView()
{
  result = qword_27F95EAE8;
  if (!qword_27F95EAE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258800B44()
{
  sub_2587B2F78();
  if (v0 <= 0x3F)
  {
    sub_2588028C0(319, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
    if (v1 <= 0x3F)
    {
      sub_2588028C0(319, &qword_27F95DC90, type metadata accessor for MedicalIDDataManager, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_258800C5C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  v3 = type metadata accessor for NanoEmergencyContactEditSectionView();
  v4 = v3 - 8;
  v31 = *(v3 - 8);
  v30 = *(v31 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588028C0(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v30 - v11;
  sub_258801EB4();
  v33 = v13;
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v4 + 28);
  sub_2588BD538();
  swift_getKeyPath();
  sub_2588BD558();

  (*(v9 + 8))(v12, v8);
  v18 = v35;
  v19 = v36;
  v20 = v37;
  KeyPath = swift_getKeyPath();
  sub_2587D4E30(v18, v19, v20, KeyPath, sub_258801090, 0);
  sub_258802018(v2, v6);
  v22 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v23 = swift_allocObject();
  sub_25880207C(v6, v23 + v22);
  v24 = swift_allocObject();
  *(v24 + 16) = sub_2588020E0;
  *(v24 + 24) = v23;
  v25 = &v16[*(v33 + 36)];
  *v25 = sub_258802150;
  v25[1] = v24;
  sub_2588BD528();
  v26 = v35;
  swift_getKeyPath();
  v35 = v26;
  sub_258802158(&qword_27F95DBD0, type metadata accessor for MedicalIDEditableEmergencyContactsModel);
  sub_2588BBB98();

  swift_beginAccess();
  v27 = *(v26 + 16);

  v34 = v27;
  sub_258802018(v2, v6);
  v28 = swift_allocObject();
  sub_25880207C(v6, v28 + v22);
  sub_258802924(0, &qword_27F95E110, MEMORY[0x277D83940]);
  sub_25880232C();
  sub_258802454();
  sub_2588BD118();

  return sub_2588024E8(v16);
}

uint64_t sub_258801090(__int128 *a1)
{
  v8 = a1[6];
  v9 = a1[7];
  v10 = a1[8];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v2 = *a1;
  v3 = a1[1];
  type metadata accessor for ContactLabelEditView(0);
  sub_258802158(&qword_27F95E068, type metadata accessor for ContactLabelEditView);
  return sub_2588BD508();
}

uint64_t sub_258801150@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D12930]) init];
  v5 = *(type metadata accessor for ContactLabelEditView(0) + 28);
  *(a2 + v5) = swift_getKeyPath();
  sub_2588028C0(0, &qword_27F95E160, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v6 = a1[7];
  v25[6] = a1[6];
  v25[7] = v6;
  v25[8] = a1[8];
  v7 = a1[3];
  v25[2] = a1[2];
  v25[3] = v7;
  v8 = a1[5];
  v25[4] = a1[4];
  v25[5] = v8;
  v9 = a1[1];
  v25[0] = *a1;
  v25[1] = v9;
  sub_258802924(0, &qword_27F95E158, MEMORY[0x277CE11F8]);
  MEMORY[0x259C8C5A0](v24);
  v30 = v24[4];
  v31 = v24[5];
  v32 = v24[6];
  v33 = v24[7];
  v26 = v24[0];
  v27 = v24[1];
  v28 = v24[2];
  v29 = v24[3];
  v10 = type metadata accessor for ContactLabelEditViewModel(0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  *(v13 + 144) = 0;
  sub_2588BBBC8();
  v14 = v31;
  *(v13 + 80) = v30;
  *(v13 + 96) = v14;
  v15 = v33;
  *(v13 + 112) = v32;
  *(v13 + 128) = v15;
  v16 = v27;
  *(v13 + 16) = v26;
  *(v13 + 32) = v16;
  v17 = v29;
  *(v13 + 48) = v28;
  *(v13 + 64) = v17;
  *a2 = v13;
  a2[1] = 0;
  a2[4] = v4;
  v18 = swift_allocObject();
  v19 = a1[7];
  v18[7] = a1[6];
  v18[8] = v19;
  v18[9] = a1[8];
  v20 = a1[3];
  v18[3] = a1[2];
  v18[4] = v20;
  v21 = a1[5];
  v18[5] = a1[4];
  v18[6] = v21;
  v22 = a1[1];
  v18[1] = *a1;
  v18[2] = v22;
  a2[2] = sub_2587D7324;
  a2[3] = v18;
  return sub_2587D732C(a1, v25);
}

uint64_t sub_258801334(uint64_t a1, uint64_t a2)
{
  v18[0] = a2;
  v18[1] = a1;
  v2 = type metadata accessor for NanoEmergencyContactEditSectionView();
  v3 = v2 - 8;
  v19 = *(v2 - 8);
  v4 = *(v19 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588028C0(0, &qword_27F95D830, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v18 - v8;
  v10 = *(v3 + 28);
  sub_2588028C0(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
  sub_2588BD528();
  v11 = v20;
  swift_getKeyPath();
  v20 = v11;
  sub_258802158(&qword_27F95DBD0, type metadata accessor for MedicalIDEditableEmergencyContactsModel);
  sub_2588BBB98();

  v20 = v11;
  swift_getKeyPath();
  sub_2588BBBB8();

  swift_beginAccess();
  sub_258802924(0, &qword_27F95E110, MEMORY[0x277D83940]);
  sub_258802634(&qword_27F95E118);
  sub_258802634(&qword_27F95E120);
  sub_2588BDB68();
  swift_endAccess();
  v20 = v11;
  swift_getKeyPath();
  sub_2588BBBA8();

  v12 = sub_2588BDAA8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  sub_258802018(v18[0], v5);
  sub_2588BDA78();
  v13 = sub_2588BDA68();
  v14 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 16) = v13;
  *(v15 + 24) = v16;
  sub_25880207C(v5, v15 + v14);
  sub_25885CB04(0, 0, v9, &unk_2588C2CA8, v15);
}

uint64_t sub_2588016F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_2588BDA78();
  v4[3] = sub_2588BDA68();
  v6 = sub_2588BDA28();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_258801788, v6, v5);
}

uint64_t sub_258801788()
{
  v1 = *(v0 + 16);
  v2 = v1[1];
  v6 = (*v1 + **v1);
  v3 = (*v1)[1];
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_258801874;

  return v6();
}

uint64_t sub_258801874()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = v0;

  v5 = *(v2 + 40);
  v6 = *(v2 + 32);
  if (v0)
  {
    v7 = sub_2588019B0;
  }

  else
  {
    v7 = sub_2587C9BF4;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2588019B0()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_258801A14(uint64_t a1)
{
  v2 = type metadata accessor for NanoEmergencyContactEditSectionView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588028C0(0, &qword_27F95D830, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v10 = sub_2588BDAA8();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_258802018(a1, v5);
  sub_2588BDA78();
  v11 = sub_2588BDA68();
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v11;
  *(v13 + 24) = v14;
  sub_25880207C(v5, v13 + v12);
  sub_25885CB04(0, 0, v9, &unk_2588C2C98, v13);
}

uint64_t sub_258801BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_2588BDA78();
  v4[3] = sub_2588BDA68();
  v6 = sub_2588BDA28();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_258801C88, v6, v5);
}

uint64_t sub_258801C88()
{
  v1 = *(v0 + 16);
  v2 = v1[1];
  v6 = (*v1 + **v1);
  v3 = (*v1)[1];
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_258801D74;

  return v6();
}

uint64_t sub_258801D74()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = v0;

  v5 = *(v2 + 40);
  v6 = *(v2 + 32);
  if (v0)
  {
    v7 = sub_258802978;
  }

  else
  {
    v7 = sub_258800ACC;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

void sub_258801EB4()
{
  if (!qword_27F95EAF8)
  {
    sub_258801F1C();
    sub_2587D6558();
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95EAF8);
    }
  }
}

void sub_258801F1C()
{
  if (!qword_27F95EB00)
  {
    sub_2587D60F0();
    sub_258801FB4();
    sub_2587D6458();
    sub_258791374();
    v0 = sub_2588BD4D8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95EB00);
    }
  }
}

void sub_258801FB4()
{
  if (!qword_27F95E058)
  {
    type metadata accessor for ContactLabelEditView(255);
    v0 = sub_2588BD518();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E058);
    }
  }
}

uint64_t sub_258802018(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NanoEmergencyContactEditSectionView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25880207C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NanoEmergencyContactEditSectionView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2588020E0(uint64_t a1)
{
  v3 = *(type metadata accessor for NanoEmergencyContactEditSectionView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_258801334(a1, v4);
}

uint64_t sub_258802158(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_11()
{
  v1 = (type metadata accessor for NanoEmergencyContactEditSectionView() - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v4 = *(v3 + 8);

  v5 = v1[7];
  sub_2588028C0(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
  (*(*(v6 - 8) + 8))(v3 + v5, v6);
  v7 = *(v3 + v1[8]);

  return swift_deallocObject();
}

uint64_t sub_2588022CC()
{
  v1 = *(type metadata accessor for NanoEmergencyContactEditSectionView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_258801A14(v2);
}

unint64_t sub_25880232C()
{
  result = qword_27F95EB08;
  if (!qword_27F95EB08)
  {
    sub_258801EB4();
    sub_2588023DC();
    sub_258802158(&qword_27F95EB18, sub_2587D6558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95EB08);
  }

  return result;
}

unint64_t sub_2588023DC()
{
  result = qword_27F95EB10;
  if (!qword_27F95EB10)
  {
    sub_258801F1C();
    sub_2587D6388();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95EB10);
  }

  return result;
}

unint64_t sub_258802454()
{
  result = qword_27F95EB20;
  if (!qword_27F95EB20)
  {
    sub_258802924(255, &qword_27F95E110, MEMORY[0x277D83940]);
    sub_2587913CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95EB20);
  }

  return result;
}

uint64_t sub_2588024E8(uint64_t a1)
{
  sub_258801EB4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258802544(uint64_t a1)
{
  v4 = *(type metadata accessor for NanoEmergencyContactEditSectionView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2587AEAC8;

  return sub_258801BF0(a1, v6, v7, v1 + v5);
}

uint64_t sub_258802634(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_258802924(255, &qword_27F95E110, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_11Tm()
{
  v1 = (type metadata accessor for NanoEmergencyContactEditSectionView() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = *(v0 + v2 + 8);

  v6 = v1[7];
  sub_2588028C0(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
  (*(*(v7 - 8) + 8))(v0 + v2 + v6, v7);
  v8 = *(v0 + v2 + v1[8]);

  return swift_deallocObject();
}

uint64_t sub_2588027C8(uint64_t a1)
{
  v4 = *(type metadata accessor for NanoEmergencyContactEditSectionView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2587AE310;

  return sub_2588016F0(a1, v6, v7, v1 + v5);
}

void sub_2588028C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_258802924(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for MedicalIDEmergencyContact);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for NanoAllergyEditView()
{
  result = qword_27F95EB28;
  if (!qword_27F95EB28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2588029F0()
{
  result = type metadata accessor for MedicalIDMedicalInfoViewModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_258802A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 48);

  *(a1 + 40) = a2;
  *(a1 + 48) = a3;
  return result;
}

uint64_t sub_258802AC0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MedicalIDMedicalInfoViewModel();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258802C20(v2, v7);
  if (qword_27F95D0F0 != -1)
  {
    swift_once();
  }

  v8 = qword_27F969838;
  v9 = qword_27F969840;

  sub_25887BEA8(v7, v8, v9, v16);
  *(a1 + 24) = &type metadata for AllergyConfiguration;
  *(a1 + 32) = &off_2869C1778;
  v10 = swift_allocObject();
  *a1 = v10;
  v11 = v16[3];
  v10[3] = v16[2];
  v10[4] = v11;
  v12 = v16[5];
  v10[5] = v16[4];
  v10[6] = v12;
  v13 = v16[1];
  v10[1] = v16[0];
  v10[2] = v13;
  *(a1 + 40) = sub_258802A78;
  *(a1 + 48) = 0;
  type metadata accessor for MedicalIDDataManager();
  sub_258802C84();
  result = sub_2588BBF58();
  *(a1 + 56) = result;
  *(a1 + 64) = v15 & 1;
  return result;
}

uint64_t sub_258802C20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicalIDMedicalInfoViewModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_258802C84()
{
  result = qword_27F95D3A8;
  if (!qword_27F95D3A8)
  {
    type metadata accessor for MedicalIDDataManager();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D3A8);
  }

  return result;
}

unint64_t sub_258802CDC()
{
  result = qword_27F95EB38;
  if (!qword_27F95EB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95EB38);
  }

  return result;
}

uint64_t type metadata accessor for NanoConditionsEditView()
{
  result = qword_27F95EB40;
  if (!qword_27F95EB40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258802DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);

  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  return result;
}

uint64_t sub_258802E08@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MedicalIDMedicalInfoViewModel();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258802C20(v2, v7);
  if (qword_27F95D148 != -1)
  {
    swift_once();
  }

  v8 = qword_27F9698E8;
  v9 = qword_27F9698F0;

  sub_25887C284(v7, v8, v9, v16);
  *(a1 + 24) = &type metadata for ConditionsConfiguration;
  *(a1 + 32) = &off_2869C1840;
  v10 = swift_allocObject();
  *a1 = v10;
  v11 = v16[3];
  v10[3] = v16[2];
  v10[4] = v11;
  v12 = v16[5];
  v10[5] = v16[4];
  v10[6] = v12;
  v13 = v16[1];
  v10[1] = v16[0];
  v10[2] = v13;
  *(a1 + 40) = sub_258802DC0;
  *(a1 + 48) = 0;
  type metadata accessor for MedicalIDDataManager();
  sub_258802C84();
  result = sub_2588BBF58();
  *(a1 + 56) = result;
  *(a1 + 64) = v15 & 1;
  return result;
}

uint64_t type metadata accessor for NanoMedicationEditView()
{
  result = qword_27F95EB50;
  if (!qword_27F95EB50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258802FF8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MedicalIDMedicalInfoViewModel();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258802C20(v2, v7);
  if (qword_27F95D0F0 != -1)
  {
    swift_once();
  }

  v8 = qword_27F969838;
  v9 = qword_27F969840;

  sub_25887C604(v7, v8, v9, v16);
  *(a1 + 24) = &type metadata for MedicationsConfiguration;
  *(a1 + 32) = &off_2869C1908;
  v10 = swift_allocObject();
  *a1 = v10;
  v11 = v16[3];
  v10[3] = v16[2];
  v10[4] = v11;
  v12 = v16[5];
  v10[5] = v16[4];
  v10[6] = v12;
  v13 = v16[1];
  v10[1] = v16[0];
  v10[2] = v13;
  *(a1 + 40) = sub_2587DFD70;
  *(a1 + 48) = 0;
  type metadata accessor for MedicalIDDataManager();
  sub_258802C84();
  result = sub_2588BBF58();
  *(a1 + 56) = result;
  *(a1 + 64) = v15 & 1;
  return result;
}

uint64_t type metadata accessor for NanoNameEditView()
{
  result = qword_27F95EB60;
  if (!qword_27F95EB60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2588031CC()
{
  type metadata accessor for MedicalIDPersonalInfoViewModel();
  if (v0 <= 0x3F)
  {
    sub_258803250();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_258803250()
{
  if (!qword_27F95DC90)
  {
    type metadata accessor for MedicalIDDataManager();
    v0 = sub_2588BBF48();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95DC90);
    }
  }
}

uint64_t type metadata accessor for NanoNotesEditView()
{
  result = qword_27F95EB70;
  if (!qword_27F95EB70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258803354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 64);

  *(a1 + 56) = a2;
  *(a1 + 64) = a3;
  return result;
}

uint64_t sub_25880339C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MedicalIDMedicalInfoViewModel();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258802C20(v2, v7);
  if (qword_27F95D0F0 != -1)
  {
    swift_once();
  }

  v8 = qword_27F969838;
  v9 = qword_27F969840;

  sub_25887C984(v7, v8, v9, v16);
  *(a1 + 24) = &type metadata for NotesConfiguration;
  *(a1 + 32) = &off_2869C19D0;
  v10 = swift_allocObject();
  *a1 = v10;
  v11 = v16[3];
  v10[3] = v16[2];
  v10[4] = v11;
  v12 = v16[5];
  v10[5] = v16[4];
  v10[6] = v12;
  v13 = v16[1];
  v10[1] = v16[0];
  v10[2] = v13;
  *(a1 + 40) = sub_258803354;
  *(a1 + 48) = 0;
  type metadata accessor for MedicalIDDataManager();
  sub_258802C84();
  result = sub_2588BBF58();
  *(a1 + 56) = result;
  *(a1 + 64) = v15 & 1;
  return result;
}

uint64_t sub_2588034FC()
{
  v1 = sub_2588BC598();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for NanoOrganDonorEditView() + 24));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_2588BDBE8();
    v9 = sub_2588BCB58();
    sub_2588BBC68();

    sub_2588BC588();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_25880364C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NanoOrganDonorEditView();
  v5 = a2 + *(v4 + 24);
  type metadata accessor for MedicalIDDataManager();
  sub_258804C4C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
  *v5 = sub_2588BBF58();
  *(v5 + 8) = v6 & 1;
  sub_258804B84(a1, a2, type metadata accessor for MedicalIDPersonalInfoViewModel);
  v7 = *(a1 + *(type metadata accessor for MedicalIDData() + 80));
  if (v7)
  {
    v8 = [v7 integerValue];
    if (v8 <= 2)
    {
      v9 = 0x30102u >> (8 * v8);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  result = sub_258804BEC(a1, type metadata accessor for MedicalIDPersonalInfoViewModel);
  v11 = a2 + *(v4 + 20);
  *v11 = v9;
  *(v11 + 8) = 0;
  return result;
}

uint64_t sub_25880377C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NanoOrganDonorEditView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27F95D090 != -1)
  {
    swift_once();
  }

  v9 = qword_27F95EB80;
  v8 = *algn_27F95EB88;
  sub_258804B84(a1, &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for NanoOrganDonorEditView);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  sub_258804938(v7, v11 + v10);
  v12 = a1 + *(v4 + 20);
  v13 = *v12;
  v14 = *(v12 + 8);
  v20[8] = v13;
  v21 = v14;
  sub_258804670();

  sub_2588BD2E8();
  v15 = v22;
  v16 = v23;
  LOBYTE(v10) = v24;
  KeyPath = swift_getKeyPath();
  sub_2588046DC();
  *(a2 + *(v18 + 48)) = KeyPath;
  sub_2588049FC(0, &qword_27F95EBC0, sub_258804A60, MEMORY[0x277CDF458]);
  result = swift_storeEnumTagMultiPayload();
  *(a2 + 40) = v15;
  *(a2 + 48) = v16;
  *(a2 + 56) = v10;
  *a2 = v9;
  *(a2 + 8) = v8;
  *(a2 + 16) = &unk_2869BCFA0;
  *(a2 + 24) = sub_25880499C;
  *(a2 + 32) = v11;
  return result;
}

uint64_t sub_2588039A4(uint64_t a1)
{
  v2 = type metadata accessor for NanoOrganDonorEditView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588049FC(0, &qword_27F95D830, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v10 = sub_2588BDAA8();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_258804B84(a1, v5, type metadata accessor for NanoOrganDonorEditView);
  sub_2588BDA78();
  v11 = sub_2588BDA68();
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v11;
  *(v13 + 24) = v14;
  sub_258804938(v5, v13 + v12);
  sub_25885CB04(0, 0, v9, &unk_2588C2FD0, v13);
}

uint64_t sub_258803B94@<X0>(uint64_t *a1@<X8>)
{
  if (qword_27F95D090 != -1)
  {
    swift_once();
  }

  v3 = qword_27F95EB80;
  v2 = *algn_27F95EB88;

  v4 = MedicalIDPersonalInfoViewModel.localizedOrganDonationDescription()();
  if (v4.value._object)
  {
    countAndFlagsBits = v4.value._countAndFlagsBits;
    result = v4.value._object;
  }

  else
  {
    if (qword_27F95D0C0 != -1)
    {
      swift_once();
    }

    countAndFlagsBits = qword_27F9697D8;
  }

  *a1 = v3;
  a1[1] = v2;
  a1[2] = countAndFlagsBits;
  a1[3] = result;
  return result;
}

uint64_t sub_258803C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  sub_2587B63B8();
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v7 = type metadata accessor for MedicalIDData();
  v4[11] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v9 = type metadata accessor for NanoOrganDonorEditView();
  v4[13] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = sub_2588BDA78();
  v4[16] = sub_2588BDA68();
  v12 = sub_2588BDA28();
  v4[17] = v12;
  v4[18] = v11;

  return MEMORY[0x2822009F8](sub_258803D88, v12, v11);
}

uint64_t sub_258803D88()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[9];
  v0[19] = sub_2588034FC();
  sub_258804B84(v3, v2, type metadata accessor for NanoOrganDonorEditView);
  v0[20] = sub_2588BDA68();
  v5 = sub_2588BDA28();
  v0[21] = v5;
  v0[22] = v4;

  return MEMORY[0x2822009F8](sub_258803E48, v5, v4);
}

uint64_t sub_258803E48()
{
  v1 = *(v0 + 152);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 96);
  v5 = *(v0 + 80);
  swift_getKeyPath();
  *(v0 + 56) = v1;
  sub_258804C4C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
  sub_2588BBB98();

  v6 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__medicalIDData;
  swift_beginAccess();
  sub_258804B84(v1 + v6, v5, sub_2587B63B8);
  LoadState<>.loadedValue.getter(v4);
  sub_258804BEC(v5, sub_2587B63B8);
  v7 = (v2 + *(v3 + 20));
  v8 = *v7;
  v9 = *(v7 + 1);
  *(v0 + 40) = v8;
  *(v0 + 48) = v9;
  sub_258804670();
  sub_2588BD2C8();
  v10 = *(v0 + 200);
  if (*(v0 + 200) > 1u || *(v0 + 200))
  {
    sub_2587AEC74();
    v10 = sub_2588BDCC8();
  }

  v11 = *(v0 + 96);
  v12 = *(*(v0 + 88) + 80);

  *(v11 + v12) = v10;
  v13 = swift_task_alloc();
  *(v0 + 184) = v13;
  *v13 = v0;
  v13[1] = sub_258804060;
  v14 = *(v0 + 152);
  v15 = *(v0 + 96);

  return sub_258880280(v15, v0 + 64);
}

uint64_t sub_258804060()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v8 = *v1;

  v4 = *(v2 + 168);
  v5 = *(v2 + 176);
  if (v0)
  {
    v6 = sub_2588042B4;
  }

  else
  {
    v6 = sub_258804170;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_258804170()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[14];
  v4 = v0[12];

  sub_258804BEC(v4, type metadata accessor for MedicalIDData);
  sub_258804BEC(v3, type metadata accessor for NanoOrganDonorEditView);
  v5 = v0[17];
  v6 = v0[18];

  return MEMORY[0x2822009F8](sub_258804224, v5, v6);
}

uint64_t sub_258804224()
{
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[10];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2588042B4()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[14];
  v4 = v0[12];

  sub_258804BEC(v4, type metadata accessor for MedicalIDData);
  sub_258804BEC(v3, type metadata accessor for NanoOrganDonorEditView);
  v0[24] = v0[8];
  v5 = v0[17];
  v6 = v0[18];

  return MEMORY[0x2822009F8](sub_258804370, v5, v6);
}

uint64_t sub_258804370()
{
  v1 = v0[24];
  v2 = v0[16];
  v3 = v0[14];
  v4 = v0[12];
  v5 = v0[10];

  sub_2587CE078();
  swift_allocError();
  *v6 = v1;

  v7 = v0[1];

  return v7();
}

uint64_t sub_258804430()
{
  sub_2588046DC();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v6 = v0;
  sub_25880377C(v0, &v5[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  sub_258804794();
  sub_258804C4C(&qword_27F95EBB8, sub_2588046DC);
  return sub_2588BC118();
}

uint64_t type metadata accessor for NanoOrganDonorEditView()
{
  result = qword_27F95EB90;
  if (!qword_27F95EB90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2588045A4()
{
  type metadata accessor for MedicalIDPersonalInfoViewModel();
  if (v0 <= 0x3F)
  {
    sub_258804670();
    if (v1 <= 0x3F)
    {
      sub_2588049FC(319, &qword_27F95DC90, type metadata accessor for MedicalIDDataManager, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_258804670()
{
  if (!qword_27F95DC80)
  {
    v0 = sub_2588BD2F8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95DC80);
    }
  }
}

void sub_2588046DC()
{
  if (!qword_27F95EBA0)
  {
    sub_258804738();
    v0 = type metadata accessor for NanoPickerView();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95EBA0);
    }
  }
}

unint64_t sub_258804738()
{
  result = qword_27F95EBA8;
  if (!qword_27F95EBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95EBA8);
  }

  return result;
}

unint64_t sub_258804794()
{
  result = qword_27F95EBB0;
  if (!qword_27F95EBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95EBB0);
  }

  return result;
}

uint64_t sub_2588047E8()
{
  v0 = sub_2588BD858();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v2 = qword_27F95DA88;
  v3 = sub_2588BBAC8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v2;
  sub_2588BBAB8();
  result = sub_2588BD8B8();
  qword_27F95EB80 = result;
  *algn_27F95EB88 = v7;
  return result;
}

uint64_t sub_258804938(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NanoOrganDonorEditView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25880499C()
{
  v1 = *(type metadata accessor for NanoOrganDonorEditView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2588039A4(v2);
}

void sub_2588049FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_258804A94(uint64_t a1)
{
  v4 = *(type metadata accessor for NanoOrganDonorEditView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2587AE310;

  return sub_258803C60(a1, v6, v7, v1 + v5);
}

uint64_t sub_258804B84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258804BEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258804C4C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_258804C94()
{
  if (!qword_27F95EBD0)
  {
    sub_2588046DC();
    sub_258804794();
    sub_258804C4C(&qword_27F95EBB8, sub_2588046DC);
    v0 = sub_2588BC128();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95EBD0);
    }
  }
}

uint64_t sub_258804D4C()
{
  v1 = sub_2588BC598();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for NanoPregnancyEditView() + 28));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_2588BDBE8();
    v9 = sub_2588BCB58();
    sub_2588BBC68();

    sub_2588BC588();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_258804E9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a1;
  v23 = type metadata accessor for NanoPregnancyEditView();
  v25 = *(v23 + 24);
  sub_2587AFFC8(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = sub_2588BB9B8();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 56))(&v22 - v5, 1, 1, v6);
  MEMORY[0x28223BE20](v8);
  sub_258806FA4(&v22 - v5, &v22 - v5, sub_2587AFFC8);
  sub_2588BD2B8();
  v24 = sub_2587AFFC8;
  sub_25880700C(&v22 - v5, sub_2587AFFC8);
  v9 = v23;
  v10 = a2 + *(v23 + 28);
  type metadata accessor for MedicalIDDataManager();
  sub_25880706C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
  *v10 = sub_2588BBF58();
  *(v10 + 8) = v11 & 1;
  v12 = v26;
  sub_258806FA4(v26, a2, type metadata accessor for MedicalIDPregnancyViewModel);
  v13 = v12 + *(type metadata accessor for MedicalIDPregnancyViewModel() + 20);
  v14 = type metadata accessor for MedicalIDData();
  v15 = *(v14 + 56);
  MEMORY[0x28223BE20](v14);
  sub_258806FA4(v13 + v15, &v22 - v5, sub_2587AFFC8);
  LOBYTE(v7) = (*(v7 + 48))(&v22 - v5, 1, v6) != 1;
  v16 = v24;
  sub_25880700C(&v22 - v5, v24);
  v17 = a2 + *(v9 + 20);
  v27 = v7;
  v18 = sub_2588BD2B8();
  v19 = v29;
  *v17 = v28;
  *(v17 + 8) = v19;
  MEMORY[0x28223BE20](v18);
  v20 = sub_258806FA4(v13 + v15, &v22 - v5, sub_2587AFFC8);
  MEMORY[0x28223BE20](v20);
  sub_258806FA4(&v22 - v5, &v22 - v5, sub_2587AFFC8);
  sub_258806D88(0, &qword_27F95DC50, sub_2587AFFC8, MEMORY[0x277CE10B8]);
  sub_2588BD2D8();
  sub_25880700C(v26, type metadata accessor for MedicalIDPregnancyViewModel);
  return sub_25880700C(&v22 - v5, v16);
}

uint64_t type metadata accessor for NanoPregnancyEditView()
{
  result = qword_27F95EBD8;
  if (!qword_27F95EBD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2588052A0()
{
  type metadata accessor for MedicalIDPregnancyViewModel();
  if (v0 <= 0x3F)
  {
    sub_2587DC074();
    if (v1 <= 0x3F)
    {
      sub_258806D88(319, &qword_27F95DC50, sub_2587AFFC8, MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_258806D88(319, &qword_27F95DC90, type metadata accessor for MedicalIDDataManager, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2588053D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29[1] = a2;
  v3 = type metadata accessor for NanoPregnancyEditView();
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v3);
  v8 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v29 - v9;
  sub_258806C08();
  v12 = v11;
  v13 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258806FA4(a1, v15, type metadata accessor for MedicalIDPregnancyViewModel);
  sub_258806FA4(a1, v10, type metadata accessor for NanoPregnancyEditView);
  sub_258806FA4(a1, v8, type metadata accessor for NanoPregnancyEditView);
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  sub_258806DEC(v8, v17 + v16, type metadata accessor for NanoPregnancyEditView);
  v18 = a1 + *(v4 + 28);
  v19 = *v18;
  v20 = *(v18 + 8);
  v31 = v19;
  v32 = v20;
  sub_2587DC074();
  sub_2588BD2E8();
  v21 = v29[7];
  v22 = v29[8];
  LOBYTE(v16) = v30;
  v23 = *(v4 + 32);
  v24 = v12[12];
  sub_258806D88(0, &qword_27F95DC50, sub_2587AFFC8, MEMORY[0x277CE10B8]);
  sub_2588BD2E8();
  v25 = v12[9];
  v29[4] = v10;
  sub_258804794();
  sub_2588BC118();
  sub_25880700C(v10, type metadata accessor for NanoPregnancyEditView);
  v26 = &v15[v12[10]];
  *v26 = sub_258806D20;
  v26[1] = v17;
  v27 = &v15[v12[11]];
  *v27 = v21;
  *(v27 + 1) = v22;
  v27[16] = v16;
  if (qword_27F95D0D0 != -1)
  {
    swift_once();
  }

  sub_25880706C(&qword_27F95EC08, sub_258806C08);

  sub_2588BCF28();

  return sub_25880700C(v15, sub_258806C08);
}

uint64_t sub_25880576C(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for NanoPregnancyEditView() + 20));
  v2 = *v1;
  v3 = *(v1 + 1);
  v10[16] = v2;
  v11 = v3;
  sub_2587DC074();
  result = sub_2588BD2C8();
  if ((v10[15] & 1) == 0)
  {
    sub_2587AFFC8(0);
    v6 = *(*(v5 - 8) + 64);
    MEMORY[0x28223BE20](v5 - 8);
    v8 = &v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v9 = sub_2588BB9B8();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    sub_258805ECC(v8);
    return sub_25880700C(v8, sub_2587AFFC8);
  }

  return result;
}

uint64_t sub_25880588C@<X0>(uint64_t *a1@<X8>)
{
  if (qword_27F95D0D0 != -1)
  {
    swift_once();
  }

  v2 = unk_27F969800;
  v18 = qword_27F9697F8;
  sub_2587AFFC8(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2588BB9B8();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = sub_2588BE0A8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_2588BE088();
  v13 = MedicalIDPregnancyViewModel.gestationalAgeDescription(startDate:format:)(v6, v12);
  v15 = v14;
  (*(v9 + 8))(v12, v8);
  result = sub_25880700C(v6, sub_2587AFFC8);
  if (!v15)
  {
    if (qword_27F95D0B8 != -1)
    {
      swift_once();
    }

    v13 = qword_27F9697C8;
    v15 = qword_27F9697D0;
  }

  *a1 = v18;
  a1[1] = v2;
  a1[2] = v13;
  a1[3] = v15;
  return result;
}

uint64_t sub_258805AD0()
{
  v0 = sub_2588BB9B8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587AFFC8(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(type metadata accessor for NanoPregnancyEditView() + 24);
  sub_258806D88(0, &qword_27F95DC50, sub_2587AFFC8, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  if ((*(v1 + 48))(v8, 1, v0) == 1)
  {
    sub_25880700C(v8, sub_2587AFFC8);
    if (qword_27F95D0B8 != -1)
    {
      swift_once();
    }

    v10 = qword_27F9697C8;
  }

  else
  {
    (*(v1 + 32))(v4, v8, v0);
    v22 = sub_2588BB948();
    v23 = v21;
    v11 = *(v22 - 8);
    v12 = *(v11 + 64);
    MEMORY[0x28223BE20](v22);
    v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2588BB938();
    v15 = sub_2588BB928();
    v21[1] = v21;
    v16 = *(v15 - 8);
    v17 = *(v16 + 64);
    MEMORY[0x28223BE20](v15);
    v19 = v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2588BB918();
    v10 = sub_2588BB998();
    (*(v16 + 8))(v19, v15);
    (*(v11 + 8))(v14, v22);
    (*(v1 + 8))(v4, v0);
  }

  return v10;
}

uint64_t sub_258805E50@<X0>(uint64_t *a1@<X8>)
{
  if (qword_27F95D0E8 != -1)
  {
    swift_once();
  }

  v3 = qword_27F969828;
  v2 = unk_27F969830;

  result = sub_258805AD0();
  *a1 = v3;
  a1[1] = v2;
  a1[2] = result;
  a1[3] = v5;
  return result;
}

uint64_t sub_258805ECC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for NanoPregnancyEditView();
  v5 = v4 - 8;
  v25 = *(v4 - 8);
  v6 = *(v25 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258806D88(0, &qword_27F95D830, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v24 - v10;
  v12 = *(v5 + 32);
  sub_2587AFFC8(0);
  v24 = *(v13 - 8);
  v14 = *(v24 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_258806FA4(a1, &v24 - v15, sub_2587AFFC8);
  sub_258806D88(0, &qword_27F95DC50, sub_2587AFFC8, MEMORY[0x277CE10B8]);
  sub_2588BD2D8();
  v16 = sub_2588BDAA8();
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  v17 = sub_258806FA4(v2, v7, type metadata accessor for NanoPregnancyEditView);
  MEMORY[0x28223BE20](v17);
  sub_258806FA4(a1, &v24 - v15, sub_2587AFFC8);
  sub_2588BDA78();
  v18 = sub_2588BDA68();
  v19 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v20 = (v6 + *(v24 + 80) + v19) & ~*(v24 + 80);
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  *(v21 + 16) = v18;
  *(v21 + 24) = v22;
  sub_258806DEC(v7, v21 + v19, type metadata accessor for NanoPregnancyEditView);
  sub_258806DEC(&v24 - v15, v21 + v20, sub_2587AFFC8);
  sub_25885CB04(0, 0, v11, &unk_2588C3070, v21);
}

uint64_t sub_258806238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  sub_2587B63B8();
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[9] = swift_task_alloc();
  v8 = *(*(type metadata accessor for MedicalIDData() - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v9 = *(*(type metadata accessor for NanoPregnancyEditView() - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v5[12] = sub_2588BDA78();
  v5[13] = sub_2588BDA68();
  v11 = sub_2588BDA28();
  v5[14] = v11;
  v5[15] = v10;

  return MEMORY[0x2822009F8](sub_258806358, v11, v10);
}

uint64_t sub_258806358()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[7];
  v4 = v0[8];
  v0[16] = sub_258804D4C();
  sub_258806FA4(v3, v2, type metadata accessor for NanoPregnancyEditView);
  sub_2587AFFC8(0);
  v6 = *(*(v5 - 8) + 64) + 15;
  v7 = swift_task_alloc();
  v0[17] = v7;
  sub_258806FA4(v4, v7, sub_2587AFFC8);
  v0[18] = sub_2588BDA68();
  v9 = sub_2588BDA28();
  v0[19] = v9;
  v0[20] = v8;

  return MEMORY[0x2822009F8](sub_258806464, v9, v8);
}

uint64_t sub_258806464()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  swift_getKeyPath();
  v0[5] = v2;
  sub_25880706C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
  sub_2588BBB98();

  v6 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__medicalIDData;
  swift_beginAccess();
  sub_258806FA4(v2 + v6, v5, sub_2587B63B8);
  LoadState<>.loadedValue.getter(v4);
  sub_25880700C(v5, sub_2587B63B8);
  MedicalIDPregnancyViewModel.update(_:with:)(v4, v1);
  v7 = swift_task_alloc();
  v0[21] = v7;
  *v7 = v0;
  v7[1] = sub_258806608;
  v8 = v0[16];
  v9 = v0[10];

  return sub_258880280(v9, (v0 + 6));
}

uint64_t sub_258806608()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v8 = *v1;

  v4 = *(v2 + 152);
  v5 = *(v2 + 160);
  if (v0)
  {
    v6 = sub_25880687C;
  }

  else
  {
    v6 = sub_258806718;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_258806718()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v5 = v0[10];
  v4 = v0[11];

  sub_25880700C(v5, type metadata accessor for MedicalIDData);
  sub_25880700C(v2, sub_2587AFFC8);
  sub_25880700C(v4, type metadata accessor for NanoPregnancyEditView);

  v6 = v0[14];
  v7 = v0[15];

  return MEMORY[0x2822009F8](sub_2588067F0, v6, v7);
}

uint64_t sub_2588067F0()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[9];

  v5 = v0[1];

  return v5();
}

uint64_t sub_25880687C()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v5 = v0[10];
  v4 = v0[11];

  sub_25880700C(v5, type metadata accessor for MedicalIDData);
  sub_25880700C(v2, sub_2587AFFC8);
  sub_25880700C(v4, type metadata accessor for NanoPregnancyEditView);
  v0[22] = v0[6];

  v6 = v0[14];
  v7 = v0[15];

  return MEMORY[0x2822009F8](sub_25880695C, v6, v7);
}

uint64_t sub_25880695C()
{
  v1 = v0[22];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[9];

  sub_2587CE078();
  swift_allocError();
  *v6 = v1;

  v7 = v0[1];

  return v7();
}

uint64_t sub_258806A18()
{
  sub_258806B54();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v9 = v0;
  sub_2588053D0(v0, &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  sub_258804794();
  sub_258806C08();
  v5 = v4;
  v6 = sub_25880706C(&qword_27F95EC08, sub_258806C08);
  v10 = v5;
  v11 = v6;
  swift_getOpaqueTypeConformance2();
  return sub_2588BC118();
}

void sub_258806B54()
{
  if (!qword_27F95EBE8)
  {
    sub_258806C08();
    sub_25880706C(&qword_27F95EC08, sub_258806C08);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95EBE8);
    }
  }
}

void sub_258806C08()
{
  if (!qword_27F95EBF0)
  {
    sub_258806C9C();
    sub_25880706C(&qword_27F95EC00, sub_258806C9C);
    v0 = type metadata accessor for SharedPregnancyEditView();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95EBF0);
    }
  }
}

void sub_258806C9C()
{
  if (!qword_27F95EBF8)
  {
    sub_258804794();
    v0 = sub_2588BC128();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95EBF8);
    }
  }
}

uint64_t sub_258806D20()
{
  v1 = *(type metadata accessor for NanoPregnancyEditView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_25880576C(v2);
}

void sub_258806D88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_258806DEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_258806E54(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for NanoPregnancyEditView() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  sub_2587AFFC8(0);
  v9 = (v6 + v7 + *(*(v8 - 8) + 80)) & ~*(*(v8 - 8) + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2587AE310;

  return sub_258806238(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_258806FA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25880700C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25880706C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2588070B4()
{
  if (!qword_27F95EC18)
  {
    sub_258806B54();
    sub_258804794();
    sub_258806C08();
    sub_25880706C(&qword_27F95EC08, sub_258806C08);
    swift_getOpaqueTypeConformance2();
    v0 = sub_2588BC128();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95EC18);
    }
  }
}

uint64_t sub_25880719C()
{
  v1 = sub_2588BC598();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for NanoEditMedicalIDPrimaryLanguageView(0) + 20));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_2588BDBE8();
    v9 = sub_2588BCB58();
    sub_2588BBC68();

    sub_2588BC588();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

uint64_t NanoEditMedicalIDPrimaryLanguageView.body.getter()
{
  v1 = v0;
  v2 = type metadata accessor for NanoEditMedicalIDPrimaryLanguageView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = type metadata accessor for NanoEditMedicalIDPrimaryLanguageSelectionView(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = v0;
  v9 = (v0 + *(type metadata accessor for MedicalIDData() + 60));
  if (v9[1])
  {
    v10 = *v9;
    v11 = v9[1];
  }

  else
  {
    v10 = 0;
    v11 = 0xE000000000000000;
  }

  sub_25880B7B8(v1, &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for NanoEditMedicalIDPrimaryLanguageView);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  sub_25880B9E4(&v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v13 + v12, type metadata accessor for NanoEditMedicalIDPrimaryLanguageView);
  v14 = *(v5 + 28);
  *(v8 + v14) = swift_getKeyPath();
  sub_25880BE98(0, &qword_27F95EBC0, sub_258804A60, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  *v8 = sub_258808198;
  v8[1] = v13;
  v8[3] = v10;
  v8[4] = v11;
  v15 = type metadata accessor for MedicalIDSpokenLanguagePickerViewModel();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();

  v8[2] = MedicalIDSpokenLanguagePickerViewModel.init(primaryLanguageCode:)(v10, v11);
  sub_258804794();
  sub_25880C02C(&qword_27F95EC20, type metadata accessor for NanoEditMedicalIDPrimaryLanguageSelectionView);
  return sub_2588BC118();
}

void *sub_2588075AC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for NanoEditMedicalIDPrimaryLanguageView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MedicalIDData();
  v9 = a1;
  v10 = (a1 + *(v8 + 60));
  if (v10[1])
  {
    v11 = *v10;
    v12 = v10[1];
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  sub_25880B7B8(v9, &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NanoEditMedicalIDPrimaryLanguageView);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_25880B9E4(v7, v14 + v13, type metadata accessor for NanoEditMedicalIDPrimaryLanguageView);
  v15 = *(type metadata accessor for NanoEditMedicalIDPrimaryLanguageSelectionView(0) + 28);
  *(a2 + v15) = swift_getKeyPath();
  sub_25880BE98(0, &qword_27F95EBC0, sub_258804A60, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  *a2 = sub_25880C4DC;
  a2[1] = v14;
  a2[3] = v11;
  a2[4] = v12;
  v16 = type metadata accessor for MedicalIDSpokenLanguagePickerViewModel();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();

  result = MedicalIDSpokenLanguagePickerViewModel.init(primaryLanguageCode:)(v11, v12);
  a2[2] = result;
  return result;
}

uint64_t sub_2588077E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NanoEditMedicalIDPrimaryLanguageView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25880BE98(0, &qword_27F95D830, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v22 - v12;
  v14 = sub_2588BDAA8();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_25880B7B8(a3, v9, type metadata accessor for NanoEditMedicalIDPrimaryLanguageView);
  sub_2588BDA78();

  v15 = sub_2588BDA68();
  v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 16) = v15;
  *(v18 + 24) = v19;
  sub_25880B9E4(v9, v18 + v16, type metadata accessor for NanoEditMedicalIDPrimaryLanguageView);
  v20 = (v18 + v17);
  *v20 = a1;
  v20[1] = a2;
  sub_25885CB04(0, 0, v13, &unk_2588C32A0, v18);
}

uint64_t sub_258807A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  sub_2587B63B8();
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[10] = swift_task_alloc();
  v9 = type metadata accessor for MedicalIDData();
  v6[11] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v6[12] = swift_task_alloc();
  v6[13] = sub_2588BDA78();
  v6[14] = sub_2588BDA68();
  v12 = sub_2588BDA28();
  v6[15] = v12;
  v6[16] = v11;

  return MEMORY[0x2822009F8](sub_258807B14, v12, v11);
}

uint64_t sub_258807B14()
{
  v1 = v0[13];
  v2 = v0[7];
  v0[17] = sub_25880719C();
  v0[18] = sub_2588BDA68();
  v4 = sub_2588BDA28();
  v0[19] = v4;
  v0[20] = v3;

  return MEMORY[0x2822009F8](sub_258807BAC, v4, v3);
}

uint64_t sub_258807BAC()
{
  v1 = v0[17];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[8];
  swift_getKeyPath();
  v0[5] = v1;
  sub_25880C02C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
  sub_2588BBB98();

  v7 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__medicalIDData;
  swift_beginAccess();
  sub_25880B7B8(v1 + v7, v5, sub_2587B63B8);
  LoadState<>.loadedValue.getter(v2);
  sub_25880C074(v5, sub_2587B63B8);
  v8 = (v2 + *(v3 + 60));
  v9 = v8[1];

  *v8 = v6;
  v8[1] = v4;
  v10 = swift_task_alloc();
  v0[21] = v10;
  *v10 = v0;
  v10[1] = sub_258807D6C;
  v11 = v0[17];
  v12 = v0[12];

  return sub_258880280(v12, (v0 + 6));
}

uint64_t sub_258807D6C()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v8 = *v1;

  v4 = *(v2 + 152);
  v5 = *(v2 + 160);
  if (v0)
  {
    v6 = sub_258807F84;
  }

  else
  {
    v6 = sub_258807E7C;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_258807E7C()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[12];

  sub_25880C074(v3, type metadata accessor for MedicalIDData);
  v4 = v0[15];
  v5 = v0[16];

  return MEMORY[0x2822009F8](sub_258807F08, v4, v5);
}

uint64_t sub_258807F08()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[10];

  v4 = v0[1];

  return v4();
}

uint64_t sub_258807F84()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[12];

  sub_25880C074(v3, type metadata accessor for MedicalIDData);
  v0[22] = v0[6];
  v4 = v0[15];
  v5 = v0[16];

  return MEMORY[0x2822009F8](sub_258808018, v4, v5);
}

uint64_t sub_258808018()
{
  v1 = v0[22];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[10];

  sub_2587CE078();
  swift_allocError();
  *v5 = v1;

  v6 = v0[1];

  return v6();
}

uint64_t sub_2588080C4@<X0>(uint64_t *a1@<X8>)
{
  if (qword_27F95D0C8 != -1)
  {
    swift_once();
  }

  v3 = qword_27F9697E8;
  v2 = unk_27F9697F0;

  v4 = MedicalIDPersonalInfoViewModel.spokenLanguageDescription()();
  if (v4.value._object)
  {
    countAndFlagsBits = v4.value._countAndFlagsBits;
    result = v4.value._object;
  }

  else
  {
    if (qword_27F95D0C0 != -1)
    {
      swift_once();
    }

    countAndFlagsBits = qword_27F9697D8;
  }

  *a1 = v3;
  a1[1] = v2;
  a1[2] = countAndFlagsBits;
  a1[3] = result;
  return result;
}

uint64_t sub_25880819C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2588BC598();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25880BE98(0, &qword_27F95EBC0, sub_258804A60, MEMORY[0x277CDF458]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for NanoEditMedicalIDPrimaryLanguageSelectionView(0);
  sub_25880B950(v1 + *(v12 + 28), v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_25880B9E4(v11, a1, sub_258804A60);
  }

  v14 = *v11;
  sub_2588BDBE8();
  v15 = sub_2588BCB58();
  sub_2588BBC68();

  sub_2588BC588();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_258808394()
{
  v1 = type metadata accessor for NanoEditMedicalIDPrimaryLanguageSelectionView(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v6 = v0;
  sub_2588075AC(v0, &v5[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  sub_258804794();
  sub_25880C02C(&qword_27F95EC20, type metadata accessor for NanoEditMedicalIDPrimaryLanguageSelectionView);
  return sub_2588BC118();
}

uint64_t sub_258808494(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a2 + 16);
  swift_getKeyPath();
  sub_25880C02C(&qword_27F95DDA0, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel);
  sub_2588BBB98();

  swift_beginAccess();
  v5 = *(v4 + 32);
  if (v5)
  {
    if (v2 == *(v4 + 24) && v5 == v3)
    {
      v7 = 1;
    }

    else
    {
      v7 = sub_2588BDF98();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t NanoEditMedicalIDPrimaryLanguageSelectionView.body.getter()
{
  v1 = v0;
  sub_25880A9A4();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25880AD60();
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = v1;
  sub_25880AA54(0);
  sub_25880C02C(&qword_27F95EC78, sub_25880AA54);
  sub_2588BCD48();
  v14 = sub_25880C02C(&qword_27F95EC88, sub_25880A9A4);
  sub_2588BCFF8();
  (*(v4 + 8))(v7, v3);
  v17 = v1;
  sub_25880AE24(0);
  v19 = v3;
  v20 = v14;
  swift_getOpaqueTypeConformance2();
  sub_25880C02C(&qword_27F95ECF8, sub_25880AE24);
  sub_2588BD0B8();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_258808858@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v71 = a2;
  v70 = type metadata accessor for NanoMultipleSpokenLanguagesView(0);
  v3 = *(*(v70 - 1) + 64);
  MEMORY[0x28223BE20](v70);
  v69 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25880AC90();
  v6 = *(v5 - 8);
  v79 = v5;
  v80 = v6;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v78 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v75 = &v63 - v10;
  v11 = type metadata accessor for NanoEditMedicalIDPrimaryLanguageSelectionView(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  sub_25880AB64();
  v74 = v14;
  v73 = *(v14 - 8);
  v15 = v73[8];
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v63 - v19;
  v21 = sub_2588BD858();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v23 = qword_27F95DA88;
  v24 = sub_2588BBAC8();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = v23;
  sub_2588BBAB8();
  v68 = sub_2588BD8B8();
  v77 = v27;
  v82.id._countAndFlagsBits = sub_2588BD198();
  v76 = sub_2588BD418();
  v28 = *(a1 + 16);
  v82.id._countAndFlagsBits = sub_2587EF4B4();
  sub_25880B7B8(a1, &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NanoEditMedicalIDPrimaryLanguageSelectionView);
  v29 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v30 = swift_allocObject();
  sub_25880B9E4(&v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29, type metadata accessor for NanoEditMedicalIDPrimaryLanguageSelectionView);
  sub_25880B198(0, &qword_27F95EC50, &type metadata for MedicalIDSpokenLanguage, MEMORY[0x277D83940]);
  sub_25880AC14();
  sub_25880B33C();
  sub_25880B84C();
  sub_2588BD4C8();
  v31 = sub_2587EF4B4();
  MEMORY[0x28223BE20](v31);
  v62 = a1;
  v33 = *(sub_2587EE430(sub_25880BD04, (&v63 - 4), v32) + 16);

  if (v33 || (swift_getKeyPath(), v82.id._countAndFlagsBits = v28, sub_25880C02C(&qword_27F95DDA0, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel), sub_2588BBB98(), , swift_beginAccess(), (v38 = *(v28 + 32)) == 0))
  {
    v34 = v20;
    countAndFlagsBits = 0;
    v67 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v66 = 0;
  }

  else
  {
    v34 = v20;
    v39 = *(v28 + 24);
    v40 = *(v28 + 32);
    swift_bridgeObjectRetain_n();
    v41._countAndFlagsBits = v39;
    v41._object = v38;
    MedicalIDSpokenLanguage.init(id:)(&v82, v41);
    countAndFlagsBits = v82.languageInCurrentLocale._countAndFlagsBits;
    object = v82.languageInCurrentLocale._object;

    v43._countAndFlagsBits = v39;
    v43._object = v38;
    MedicalIDSpokenLanguage.init(id:)(&v81, v43);
    v35 = v81.languageInLanguageLocale._countAndFlagsBits;
    v44 = v81.languageInLanguageLocale._object;

    v67 = object;

    v36 = v44;

    v66 = nullsub_1;
    v37 = 1;
  }

  type metadata accessor for MedicalIDSpokenLanguagePickerViewModel();
  sub_25880C02C(&qword_27F95DDA0, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel);

  sub_2588BD548();
  sub_25880C02C(&qword_27F95EC70, type metadata accessor for NanoMultipleSpokenLanguagesView);
  v45 = v75;
  sub_2588BC118();
  v46 = v73[2];
  v64 = v18;
  v47 = v34;
  v65 = v34;
  v48 = v74;
  v46(v18, v47, v74);
  v70 = *(v80 + 16);
  v70(v78, v45, v79);
  v49 = v71;
  v50 = v77;
  *v71 = v68;
  v49[1] = v50;
  v49[2] = v76;
  sub_25880AA88();
  v52 = v51;
  v46(v49 + *(v51 + 48), v18, v48);
  v53 = (v49 + *(v52 + 64));
  v54 = countAndFlagsBits;
  v55 = v67;
  *v53 = countAndFlagsBits;
  v53[1] = v55;
  v53[2] = v35;
  v53[3] = v36;
  v56 = v66;
  v53[4] = v37;
  v53[5] = v56;
  v53[6] = 0;
  v57 = v79;
  v70(v49 + *(v52 + 80), v78, v79);

  sub_25880BD24(v54, v55);
  sub_25880BD74(v54, v55);
  v58 = *(v80 + 8);
  v80 += 8;
  v58(v75, v57);
  v59 = v73[1];
  v60 = v74;
  v59(v65, v74);
  v58(v78, v79);
  sub_25880BD74(v54, v55);
  v59(v64, v60);
}

uint64_t sub_2588091A0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for NanoEditMedicalIDPrimaryLanguageSelectionView(0);
  v19 = *(v6 - 8);
  v7 = *(v19 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = a1[2];
  v24 = a1[1];
  v25 = v8;
  v23 = *a1;
  v9 = *(&v24 + 1);
  v10 = *(&v8 + 1);
  v20 = v8;
  v21 = v24;
  v11 = *(a2 + 16);
  swift_getKeyPath();
  v22[0] = v11;
  sub_25880C02C(&qword_27F95DDA0, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel);

  sub_2588BBB98();

  swift_beginAccess();
  if (*(v11 + 32))
  {
    if (*(v11 + 24) == v23)
    {
      v12 = 1;
    }

    else
    {
      v12 = sub_2588BDF98();
    }
  }

  else
  {
    v12 = 0;
  }

  sub_25880B7B8(a2, &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NanoEditMedicalIDPrimaryLanguageSelectionView);
  v13 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v14 = swift_allocObject();
  sub_25880B9E4(&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for NanoEditMedicalIDPrimaryLanguageSelectionView);
  v15 = (v14 + ((v7 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  v16 = v24;
  *v15 = v23;
  v15[1] = v16;
  v15[2] = v25;
  v17 = v20;
  *a3 = v21;
  *(a3 + 8) = v9;
  *(a3 + 16) = v17;
  *(a3 + 24) = v10;
  *(a3 + 32) = v12 & 1;
  *(a3 + 40) = sub_25880BDC4;
  *(a3 + 48) = v14;
  return sub_25880B8CC(&v23, v22);
}

uint64_t sub_25880940C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v4 = *a2;
  v3 = a2[1];
  swift_beginAccess();
  v5 = *(v2 + 32);
  if (v5 && (*(v2 + 24) == v4 ? (v6 = v5 == v3) : (v6 = 0), v6 || (v7 = *(v2 + 32), (sub_2588BDF98() & 1) != 0)))
  {
    *(v2 + 24) = v4;
    *(v2 + 32) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25880C02C(&qword_27F95DDA0, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel);

    sub_2588BBB88();
  }
}

uint64_t sub_258809584@<X0>(uint64_t a1@<X8>)
{
  sub_2588BC688();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v2 = qword_27F95DA88;
  result = sub_2588BCDE8();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_258809664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  sub_25880AE58();
  v28 = v3;
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v25 = sub_25880B030;
  v26 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25880AF90(0, &qword_27F95ECB8, sub_25880B030, &qword_27F95ECF0, sub_25880B030);
  v27 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = sub_2588BC828();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  sub_25880AF90(0, &qword_27F95ECA0, sub_25880AF38, &qword_27F95ECB0, sub_25880AF38);
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  v18 = &v24 - v17;
  sub_2588BC7E8();
  v31 = a1;
  sub_25880AF38();
  sub_25880C02C(&qword_27F95ECB0, sub_25880AF38);
  sub_2588BBF88();
  sub_2588BC7D8();
  v30 = a1;
  sub_25880B030();
  sub_25880C02C(&qword_27F95ECF0, v25);
  sub_2588BBF88();
  v19 = *(v28 + 48);
  v20 = v26;
  (*(v15 + 16))(v26, v18, v14);
  v21 = &v20[v19];
  v22 = v27;
  (*(v7 + 16))(v21, v10, v27);
  sub_2588BC718();
  (*(v7 + 8))(v10, v22);
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_2588099F4(uint64_t a1)
{
  v2 = type metadata accessor for NanoEditMedicalIDPrimaryLanguageSelectionView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_25880B7B8(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NanoEditMedicalIDPrimaryLanguageSelectionView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_25880B9E4(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for NanoEditMedicalIDPrimaryLanguageSelectionView);
  return sub_2588BD318();
}

uint64_t sub_258809B48(uint64_t a1)
{
  v2 = sub_2588BC298();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_258804A60(0);
  v5 = v4;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  swift_getKeyPath();
  v15[1] = v9;
  sub_25880C02C(&qword_27F95DDA0, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel);
  sub_2588BBB98();

  result = swift_beginAccess();
  v11 = *(v9 + 32);
  if (v11)
  {
    v12 = *(v9 + 24);
    v14 = *a1;
    v13 = *(a1 + 8);

    v14(v12, v11);

    sub_25880819C(v8);
    MEMORY[0x259C8C5A0](v5);
    sub_2588BC288();
    sub_2588BD438();
    return sub_25880C074(v8, sub_258804A60);
  }

  return result;
}

uint64_t sub_258809D1C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2588BD258();
  *a1 = result;
  return result;
}

uint64_t sub_258809D5C(uint64_t a1)
{
  v2 = type metadata accessor for NanoEditMedicalIDPrimaryLanguageSelectionView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_25880B7B8(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NanoEditMedicalIDPrimaryLanguageSelectionView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_25880B9E4(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for NanoEditMedicalIDPrimaryLanguageSelectionView);
  sub_25880B0B8(0, &qword_27F95ECC8, sub_25880B11C);
  sub_25880B1E8();
  return sub_2588BD318();
}

uint64_t sub_258809EDC(void *a1)
{
  v2 = sub_2588BC298();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_258804A60(0);
  v5 = v4;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[2];
  v10 = a1[3];
  v11 = a1[4];

  sub_2587EEA60(v10, v11);
  sub_25880819C(v8);
  MEMORY[0x259C8C5A0](v5);
  sub_2588BC288();
  sub_2588BD438();
  return sub_25880C074(v8, sub_258804A60);
}

uint64_t sub_25880A014@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2588BD258();
  v3 = [objc_opt_self() secondaryLabelColor];
  v4 = sub_2588BD148();
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = result;
  a1[2] = v4;
  return result;
}

uint64_t sub_25880A090()
{
  v1 = v0;
  sub_25880A9A4();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25880AD60();
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = v1;
  sub_25880AA54(0);
  sub_25880C02C(&qword_27F95EC78, sub_25880AA54);
  sub_2588BCD48();
  v14 = sub_25880C02C(&qword_27F95EC88, sub_25880A9A4);
  sub_2588BCFF8();
  (*(v4 + 8))(v7, v3);
  v17 = v1;
  sub_25880AE24(0);
  v19 = v3;
  v20 = v14;
  swift_getOpaqueTypeConformance2();
  sub_25880C02C(&qword_27F95ECF8, sub_25880AE24);
  sub_2588BD0B8();
  return (*(v10 + 8))(v13, v9);
}

uint64_t NanoMultipleSpokenLanguagesView.body.getter()
{
  sub_25880AB64();
  sub_25880B2C4();
  return sub_2588BCD48();
}

uint64_t sub_25880A3B8(uint64_t a1)
{
  v2 = type metadata accessor for NanoMultipleSpokenLanguagesView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_25880BE98(0, &qword_27F95ED38, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel, MEMORY[0x277CE12F8]);
  sub_2588BD528();
  v5 = *(v10 + 16);

  v10 = v5;
  sub_25880B7B8(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NanoMultipleSpokenLanguagesView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_25880B9E4(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for NanoMultipleSpokenLanguagesView);
  sub_25880B198(0, &qword_27F95EC50, &type metadata for MedicalIDSpokenLanguage, MEMORY[0x277D83940]);
  sub_25880AC14();
  sub_25880B33C();
  sub_25880B84C();
  return sub_2588BD4C8();
}

uint64_t sub_25880A5B8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for NanoMultipleSpokenLanguagesView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = a1[2];
  v27 = a1[1];
  v28 = v9;
  v26 = *a1;
  v10 = *(&v27 + 1);
  v11 = *(&v9 + 1);
  v23 = v9;
  v24 = v27;
  sub_25880BE98(0, &qword_27F95ED38, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel, MEMORY[0x277CE12F8]);

  sub_2588BD528();
  v12 = v25[0];
  swift_getKeyPath();
  v25[0] = v12;
  sub_25880C02C(&qword_27F95DDA0, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel);
  sub_2588BBB98();

  swift_beginAccess();
  v13 = *(v12 + 24);
  v14 = *(v12 + 32);

  if (v14)
  {
    if (__PAIR128__(v14, v13) == v26)
    {
      v15 = 1;
    }

    else
    {
      v15 = sub_2588BDF98();
    }
  }

  else
  {
    v15 = 0;
  }

  sub_25880B7B8(a2, &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NanoMultipleSpokenLanguagesView);
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  sub_25880B9E4(&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for NanoMultipleSpokenLanguagesView);
  v18 = (v17 + ((v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  v19 = v27;
  *v18 = v26;
  v18[1] = v19;
  v18[2] = v28;
  v20 = v23;
  *a3 = v24;
  *(a3 + 8) = v10;
  *(a3 + 16) = v20;
  *(a3 + 24) = v11;
  *(a3 + 32) = v15 & 1;
  *(a3 + 40) = sub_25880B8A0;
  *(a3 + 48) = v17;
  return sub_25880B8CC(&v26, v25);
}

uint64_t sub_25880A884(uint64_t a1, uint64_t *a2)
{
  sub_25880BE98(0, &qword_27F95ED38, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel, MEMORY[0x277CE12F8]);
  sub_2588BD528();
  v4 = *a2;
  v3 = a2[1];

  sub_2587EEA60(v4, v3);
}

uint64_t sub_25880A91C()
{
  sub_25880AB64();
  sub_25880B2C4();
  return sub_2588BCD48();
}

void sub_25880A9A4()
{
  if (!qword_27F95EC28)
  {
    sub_25880AA54(255);
    sub_25880C02C(&qword_27F95EC78, sub_25880AA54);
    v0 = sub_2588BCD58();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95EC28);
    }
  }
}

void sub_25880AA88()
{
  if (!qword_27F95EC38)
  {
    sub_25880B0B8(255, &qword_27F95EC40, sub_2587CCF4C);
    sub_25880AB64();
    sub_25880B198(255, &qword_27F95EC60, &type metadata for LanguageCell, MEMORY[0x277D83D88]);
    sub_25880AC90();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_27F95EC38);
    }
  }
}

void sub_25880AB64()
{
  if (!qword_27F95EC48)
  {
    sub_25880B198(255, &qword_27F95EC50, &type metadata for MedicalIDSpokenLanguage, MEMORY[0x277D83940]);
    sub_25880AC14();
    v0 = sub_2588BD4D8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95EC48);
    }
  }
}

unint64_t sub_25880AC14()
{
  result = qword_27F95EC58;
  if (!qword_27F95EC58)
  {
    sub_25880B198(255, &qword_27F95EC50, &type metadata for MedicalIDSpokenLanguage, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95EC58);
  }

  return result;
}

void sub_25880AC90()
{
  if (!qword_27F95EC68)
  {
    type metadata accessor for NanoMultipleSpokenLanguagesView(255);
    sub_25880C02C(&qword_27F95EC70, type metadata accessor for NanoMultipleSpokenLanguagesView);
    v0 = sub_2588BC128();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95EC68);
    }
  }
}

void sub_25880AD60()
{
  if (!qword_27F95EC80)
  {
    sub_25880A9A4();
    sub_25880C02C(&qword_27F95EC88, sub_25880A9A4);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95EC80);
    }
  }
}

void sub_25880AE58()
{
  if (!qword_27F95EC98)
  {
    sub_25880AF90(255, &qword_27F95ECA0, sub_25880AF38, &qword_27F95ECB0, sub_25880AF38);
    sub_25880AF90(255, &qword_27F95ECB8, sub_25880B030, &qword_27F95ECF0, sub_25880B030);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F95EC98);
    }
  }
}

void sub_25880AF38()
{
  if (!qword_27F95ECA8)
  {
    v0 = sub_2588BD348();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95ECA8);
    }
  }
}

void sub_25880AF90(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_25880C02C(a4, a5);
    v8 = sub_2588BBF98();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_25880B030()
{
  if (!qword_27F95ECC0)
  {
    sub_25880B0B8(255, &qword_27F95ECC8, sub_25880B11C);
    sub_25880B1E8();
    v0 = sub_2588BD348();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95ECC0);
    }
  }
}

void sub_25880B0B8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2588BC1E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_25880B11C()
{
  if (!qword_27F95ECD0)
  {
    sub_25880B198(255, &qword_27F95ECD8, MEMORY[0x277CE0F78], MEMORY[0x277D83D88]);
    v0 = sub_2588BCA88();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95ECD0);
    }
  }
}

void sub_25880B198(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_25880B1E8()
{
  result = qword_27F95ECE0;
  if (!qword_27F95ECE0)
  {
    sub_25880B0B8(255, &qword_27F95ECC8, sub_25880B11C);
    sub_25880C02C(&qword_27F95ECE8, sub_25880B11C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95ECE0);
  }

  return result;
}

unint64_t sub_25880B2C4()
{
  result = qword_27F95ED00;
  if (!qword_27F95ED00)
  {
    sub_25880AB64();
    sub_25880B33C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95ED00);
  }

  return result;
}

unint64_t sub_25880B33C()
{
  result = qword_27F95ED08;
  if (!qword_27F95ED08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95ED08);
  }

  return result;
}

void sub_25880B40C()
{
  type metadata accessor for MedicalIDPersonalInfoViewModel();
  if (v0 <= 0x3F)
  {
    sub_25880BE98(319, &qword_27F95DC90, type metadata accessor for MedicalIDDataManager, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25880B4E8()
{
  sub_2587B2F78();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MedicalIDSpokenLanguagePickerViewModel();
    if (v1 <= 0x3F)
    {
      sub_25880BE98(319, &qword_27F95ED20, sub_258804A60, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25880B5E4()
{
  sub_25880BE98(319, &qword_27F95ED38, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel, MEMORY[0x277CE12F8]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_25880B680()
{
  if (!qword_27F95ED58)
  {
    type metadata accessor for NanoEditMedicalIDPrimaryLanguageSelectionView(255);
    sub_258804794();
    sub_25880C02C(&qword_27F95EC20, type metadata accessor for NanoEditMedicalIDPrimaryLanguageSelectionView);
    v0 = sub_2588BC128();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95ED58);
    }
  }
}

void sub_25880B738()
{
  if (!qword_27F95ED68)
  {
    sub_25880AB64();
    sub_25880B2C4();
    v0 = sub_2588BCD58();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95ED68);
    }
  }
}

uint64_t sub_25880B7B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_25880B84C()
{
  result = qword_27F95ED70;
  if (!qword_27F95ED70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95ED70);
  }

  return result;
}

uint64_t sub_25880B950(uint64_t a1, uint64_t a2)
{
  sub_25880BE98(0, &qword_27F95EBC0, sub_258804A60, MEMORY[0x277CDF458]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25880B9E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_39Tm()
{
  v1 = (type metadata accessor for NanoEditMedicalIDPrimaryLanguageSelectionView(0) - 8);
  v2 = *(*v1 + 64);
  v3 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));
  v4 = v3[1];

  v5 = v3[2];

  v6 = v3[4];

  v7 = v3 + v1[9];
  sub_25880BE98(0, &qword_27F95EBC0, sub_258804A60, MEMORY[0x277CDF458]);
  LODWORD(v3) = swift_getEnumCaseMultiPayload();
  v8 = *v7;

  if (v3 == 1)
  {
    v9 = *(v7 + 1);

    sub_258804A60(0);
    v11 = *(v10 + 32);
    v12 = sub_2588BC298();
    (*(*(v12 - 8) + 8))(&v7[v11], v12);
  }

  return swift_deallocObject();
}

uint64_t sub_25880BBCC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for NanoEditMedicalIDPrimaryLanguageSelectionView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_25880BC6C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t sub_25880BD24(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_25880BD74(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_25880BDF0(uint64_t (*a1)(void), uint64_t (*a2)(unint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v2 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a2(v2 + v4, v5);
}

void sub_25880BE98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_25880BEFC(uint64_t a1)
{
  v4 = *(type metadata accessor for NanoEditMedicalIDPrimaryLanguageView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2587AE310;

  return sub_258807A18(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_25880C02C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25880C074(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_12()
{
  v30 = type metadata accessor for NanoEditMedicalIDPrimaryLanguageView(0);
  v29 = *(*(v30 - 8) + 64);
  v1 = v0 + ((*(*(v30 - 8) + 80) + 16) & ~*(*(v30 - 8) + 80));
  v2 = *(v1 + 8);

  v3 = *(v1 + 16);

  v4 = *(v1 + 32);

  v5 = *(v1 + 48);

  v6 = *(v1 + 64);

  v7 = *(v1 + 80);

  v8 = type metadata accessor for MedicalIDData();
  v9 = v8[13];
  v10 = sub_2588BB9B8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (!v12(v1 + v9, 1, v10))
  {
    (*(v11 + 8))(v1 + v9, v10);
  }

  v13 = v8[14];
  if (!v12(v1 + v13, 1, v10))
  {
    (*(v11 + 8))(v1 + v13, v10);
  }

  v14 = *(v1 + v8[15] + 8);

  v15 = (v1 + v8[18]);
  v16 = v15[1];
  if (v16 >> 60 != 15)
  {
    sub_2587C2610(*v15, v16);
  }

  v17 = v8[19];
  v18 = sub_2588BB818();
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v1 + v17, 1, v18))
  {
    (*(v19 + 8))(v1 + v17, v18);
  }

  v20 = v8[21];
  if (!v12(v1 + v20, 1, v10))
  {
    (*(v11 + 8))(v1 + v20, v10);
  }

  v21 = type metadata accessor for MedicalIDPersonalInfoViewModel();
  v22 = v21[5];
  v23 = sub_2588BBB48();
  (*(*(v23 - 8) + 8))(v1 + v22, v23);
  v24 = v21[6];
  v25 = sub_2588BBAC8();
  (*(*(v25 - 8) + 8))(v1 + v24, v25);

  v26 = *(v1 + v21[9] + 8);

  v27 = *(v1 + *(v30 + 20));

  return swift_deallocObject();
}

uint64_t sub_25880C45C(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for NanoEditMedicalIDPrimaryLanguageView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2588077E8(a1, a2, v6);
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25880C510(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_25880C558(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_25880C5D0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  if (v3)
  {
    *&v34 = *a1;
    *(&v34 + 1) = v3;
    sub_25878F648();

    v4 = sub_2588BCDF8();
    v6 = v5;
    v8 = v7;
    sub_2588BCC08();
    v9 = sub_2588BCDD8();
    v20 = v10;
    v21 = v9;
    v12 = v11;
    v14 = v13;

    sub_2587B1CF8(v4, v6, v8 & 1);

    sub_2588BD5D8();
    sub_2588BC328();
    *&v25[54] = v30;
    *&v25[70] = v31;
    *&v25[6] = v27;
    *&v25[22] = v28;
    *&v25[86] = v32;
    *&v25[102] = v33;
    *&v25[38] = v29;
    *&v24[66] = *&v25[64];
    *&v24[82] = *&v25[80];
    *&v24[98] = *&v25[96];
    *&v24[2] = *v25;
    *&v24[18] = *&v25[16];
    *&v24[34] = *&v25[32];
    v26 = v14 & 1;
    *&v22 = v21;
    *(&v22 + 1) = v12;
    LOBYTE(v23) = v14 & 1;
    *(&v23 + 1) = v20;
    *v24 = 256;
    *&v24[112] = *(&v33 + 1);
    *&v24[50] = *&v25[48];
    nullsub_1(&v22);
    v40 = *&v24[64];
    v41 = *&v24[80];
    v42 = *&v24[96];
    v43 = *&v24[112];
    v36 = *v24;
    v37 = *&v24[16];
    v38 = *&v24[32];
    v39 = *&v24[48];
    v34 = v22;
    v35 = v23;
  }

  else
  {
    sub_25880CB1C(&v34);
  }

  v15 = v41;
  *(a2 + 96) = v40;
  *(a2 + 112) = v15;
  *(a2 + 128) = v42;
  *(a2 + 144) = v43;
  v16 = v37;
  *(a2 + 32) = v36;
  *(a2 + 48) = v16;
  v17 = v39;
  *(a2 + 64) = v38;
  *(a2 + 80) = v17;
  result = *&v34;
  v19 = v35;
  *a2 = v34;
  *(a2 + 16) = v19;
  return result;
}

uint64_t sub_25880C804()
{
  v2 = *v0;
  *v3 = v0[1];
  *&v3[9] = *(v0 + 25);
  sub_2588BCB68();
  sub_25880C89C();
  sub_25880C9AC();
  return sub_2588BBEE8();
}

void sub_25880C89C()
{
  if (!qword_27F95ED78)
  {
    sub_25880C8F4();
    v0 = sub_2588BDCE8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95ED78);
    }
  }
}

void sub_25880C8F4()
{
  if (!qword_27F95ED80)
  {
    sub_25880C954();
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95ED80);
    }
  }
}

void sub_25880C954()
{
  if (!qword_27F95ED88)
  {
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95ED88);
    }
  }
}

unint64_t sub_25880C9AC()
{
  result = qword_27F95ED90;
  if (!qword_27F95ED90)
  {
    sub_25880C89C();
    sub_25880CA24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95ED90);
  }

  return result;
}

unint64_t sub_25880CA24()
{
  result = qword_27F95ED98;
  if (!qword_27F95ED98)
  {
    sub_25880C8F4();
    sub_25880CAA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95ED98);
  }

  return result;
}

unint64_t sub_25880CAA4()
{
  result = qword_27F95EDA0;
  if (!qword_27F95EDA0)
  {
    sub_25880C954();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95EDA0);
  }

  return result;
}

double sub_25880CB1C(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_25880CB3C()
{
  result = qword_27F95EDA8;
  if (!qword_27F95EDA8)
  {
    sub_25880CB94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95EDA8);
  }

  return result;
}

void sub_25880CB94()
{
  if (!qword_27F95EDB0)
  {
    sub_25880C89C();
    sub_25880C9AC();
    v0 = sub_2588BBED8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95EDB0);
    }
  }
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25880CC1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_25880CC64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25880CCE4(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  (*(v2 + 24))(v1, v2);
  sub_25878F648();
  v3 = sub_2588BCDF8();
  v5 = v4;
  v7 = v6;
  sub_2588BCCC8();
  sub_2588BCDD8();

  sub_2587B1CF8(v3, v5, v7 & 1);

  sub_25880D7C4();
  sub_25880D894();
  sub_25880DC70(&qword_27F95EDF8, sub_25880D894);
  swift_getOpaqueTypeConformance2();
  return sub_2588BD4E8();
}

uint64_t sub_25880CEA4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  sub_25880DA24();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25880D894();
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[4] = a1;
  sub_25880D16C(a1, v6);
  sub_25880D9CC();
  sub_25880DC70(&qword_27F95EDF0, sub_25880D9CC);
  v13 = type metadata accessor for MedicalIDDataManager();
  v14 = sub_25880DAF4();
  v15 = sub_25880DC70(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
  v21 = &type metadata for NanoAddReplaceEditView;
  v22 = v13;
  v23 = v14;
  v24 = v15;
  swift_getOpaqueTypeConformance2();
  sub_2588BC118();
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v21 = (*(v17 + 8))(v16, v17);
  v22 = v18;
  sub_25880DC70(&qword_27F95EDF8, sub_25880D894);
  sub_25878F648();
  sub_2588BCF38();

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_25880D16C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v20 = sub_2588BC598();
  v3 = *(v20 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v20);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = (*(v8 + 32))(v7, v8);
  v11 = v10;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  type metadata accessor for MedicalIDDataManager();
  sub_25880DC70(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);

  v14 = sub_2588BBF58();
  v22 = v9;
  v23 = v11;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v27 = v15 & 1;
  v16 = *(a1 + 56);
  LOBYTE(v12) = *(a1 + 64);

  if ((v12 & 1) == 0)
  {
    sub_2588BDBE8();
    v17 = sub_2588BCB58();
    sub_2588BBC68();

    sub_2588BC588();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v20);
  }

  sub_25880DAF4();
  sub_2588BCE58();
}

uint64_t sub_25880D3B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2588BC6F8();
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  (*(v6 + 32))(v5, v6);
  if (!v7)
  {
    if (qword_27F95D0C0 != -1)
    {
      swift_once();
    }
  }

  sub_25878F648();
  result = sub_2588BCDF8();
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = result;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10 & 1;
  *(a2 + 48) = v11;
  return result;
}

uint64_t sub_25880D4B4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 16))(v4, v5);
  v8 = v7;
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  v11 = (*(v10 + 32))(v9, v10);
  if (v12)
  {
    v13 = v11;
    result = v12;
  }

  else
  {
    if (qword_27F95D0C0 != -1)
    {
      swift_once();
    }

    v13 = qword_27F9697D8;
  }

  *a2 = v6;
  a2[1] = v8;
  a2[2] = v13;
  a2[3] = result;
  return result;
}

uint64_t sub_25880D5AC()
{
  sub_25880D6DC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  sub_25880D75C();
  sub_25880DB48();
  sub_2588BCD48();
  sub_258804794();
  sub_25880DC70(&qword_27F95EE08, sub_25880D6DC);
  return sub_2588BC118();
}

void sub_25880D6DC()
{
  if (!qword_27F95EDB8)
  {
    sub_25880D75C();
    sub_25880DB48();
    v0 = sub_2588BCD58();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95EDB8);
    }
  }
}

void sub_25880D75C()
{
  if (!qword_27F95EDC0)
  {
    sub_25880D7C4();
    v0 = sub_2588BD518();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95EDC0);
    }
  }
}

void sub_25880D7C4()
{
  if (!qword_27F95EDC8)
  {
    sub_25880D894();
    sub_25880DC70(&qword_27F95EDF8, sub_25880D894);
    sub_25878F648();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95EDC8);
    }
  }
}

void sub_25880D894()
{
  if (!qword_27F95EDD0)
  {
    sub_25880D9CC();
    sub_25880DA24();
    sub_25880DC70(&qword_27F95EDF0, sub_25880D9CC);
    type metadata accessor for MedicalIDDataManager();
    sub_25880DAF4();
    sub_25880DC70(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
    swift_getOpaqueTypeConformance2();
    v0 = sub_2588BC128();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95EDD0);
    }
  }
}

void sub_25880D9CC()
{
  if (!qword_27F95EDD8)
  {
    v0 = sub_2588BD408();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95EDD8);
    }
  }
}

void sub_25880DA24()
{
  if (!qword_27F95EDE0)
  {
    type metadata accessor for MedicalIDDataManager();
    sub_25880DAF4();
    sub_25880DC70(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95EDE0);
    }
  }
}

unint64_t sub_25880DAF4()
{
  result = qword_27F95EDE8;
  if (!qword_27F95EDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95EDE8);
  }

  return result;
}

unint64_t sub_25880DB48()
{
  result = qword_27F95EE00;
  if (!qword_27F95EE00)
  {
    sub_25880D75C();
    sub_25880D894();
    sub_25880DC70(&qword_27F95EDF8, sub_25880D894);
    sub_25878F648();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95EE00);
  }

  return result;
}

uint64_t sub_25880DC70(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_25880DCB8()
{
  if (!qword_27F95EE18)
  {
    sub_25880D6DC();
    sub_258804794();
    sub_25880DC70(&qword_27F95EE08, sub_25880D6DC);
    v0 = sub_2588BC128();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95EE18);
    }
  }
}

uint64_t sub_25880DD9C@<X0>(uint64_t a1@<X8>)
{
  sub_25878F648();

  v2 = sub_2588BCDF8();
  v4 = v3;
  v6 = v5;
  sub_2588BCCC8();
  v7 = sub_2588BCDD8();
  v9 = v8;
  v11 = v10;

  sub_2587B1CF8(v2, v4, v6 & 1);

  v12 = [objc_opt_self() secondaryLabelColor];
  sub_2588BD148();
  v13 = sub_2588BCD88();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_2587B1CF8(v7, v9, v11 & 1);

  *a1 = v13;
  *(a1 + 8) = v15;
  *(a1 + 16) = v17 & 1;
  *(a1 + 24) = v19;
  *(a1 + 32) = 256;
  return result;
}

uint64_t sub_25880DEF0@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_25880DD9C(a1);
}