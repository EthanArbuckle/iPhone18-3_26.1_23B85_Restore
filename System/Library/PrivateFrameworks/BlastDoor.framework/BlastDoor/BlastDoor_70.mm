uint64_t sub_214628C84()
{
  v1 = *(v0 + *(type metadata accessor for IDSNearbySessionMessage.GroupMessage.Initialization(0) + 20));
}

uint64_t sub_214628CD8(uint64_t a1)
{
  v3 = *(type metadata accessor for IDSNearbySessionMessage.GroupMessage.Initialization(0) + 20);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_214628D80@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved(0) + 20));
  v4 = v3[3];
  v11 = v3[2];
  v12[0] = v4;
  *(v12 + 9) = *(v3 + 57);
  v5 = *(v12 + 9);
  v6 = v3[1];
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  a1[2] = v11;
  a1[3] = v4;
  *(a1 + 57) = v5;
  *a1 = v7;
  a1[1] = v6;
  return sub_21430DEC4(v10, &v9);
}

__n128 sub_214628E08(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved(0) + 20));
  v4 = v3[3];
  v8[2] = v3[2];
  v9[0] = v4;
  *(v9 + 9) = *(v3 + 57);
  v5 = v3[1];
  v8[0] = *v3;
  v8[1] = v5;
  sub_21430DF20(v8);
  v6 = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = v6;
  *(v3 + 57) = *(a1 + 57);
  result = *(a1 + 16);
  *v3 = *a1;
  v3[1] = result;
  return result;
}

uint64_t sub_214628F2C(char a1)
{
  result = type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberLeft(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t sub_214628FA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *v2;
  v7 = *(v2 + 8);
  v12 = *(v3 + 32);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 24);

    *(v3 + 16) = a1;
    *(v3 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2146290EC(void *a1))()
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_2143CE940;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_214629188(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143CE9DC;
}

uint64_t sub_214629220(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v11 = *(v3 + 72);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 56), *(v3 + 64));

    *(v3 + 56) = a1;
    *(v3 + 64) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_214629364(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(v1 + 56);
  *(v3 + 24) = v5;
  v6 = *(v1 + 64);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_2144F652C;
  }

  return result;
}

void (*sub_21462943C(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  *v4 = *(v1 + 40);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2144F65D0;
}

unint64_t sub_2146294E0()
{
  result = qword_27C916FF8;
  if (!qword_27C916FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916FF8);
  }

  return result;
}

unint64_t sub_214629590()
{
  result = qword_27C917000;
  if (!qword_27C917000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917000);
  }

  return result;
}

unint64_t sub_214629698()
{
  result = qword_27C917008;
  if (!qword_27C917008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917008);
  }

  return result;
}

unint64_t sub_214629774()
{
  result = qword_27C917010;
  if (!qword_27C917010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917010);
  }

  return result;
}

uint64_t sub_2146297F4(uint64_t a1)
{
  *(a1 + 8) = sub_214629878(&qword_27C90A4C0, type metadata accessor for IDSNearbySessionMessage.GroupMessage.Initialization);
  result = sub_214629878(&qword_27C90A500, type metadata accessor for IDSNearbySessionMessage.GroupMessage.Initialization);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214629878(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2146298C0(uint64_t a1)
{
  *(a1 + 8) = sub_214629878(&qword_27C90A4D0, type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved);
  result = sub_214629878(&qword_27C90A510, type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214629944(uint64_t a1)
{
  *(a1 + 8) = sub_214629878(&qword_27C90A4E0, type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberLeft);
  result = sub_214629878(&qword_27C90A520, type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberLeft);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2146299F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214629A30(uint64_t a1)
{
  *(a1 + 8) = sub_214629878(&qword_27C9080F0, type metadata accessor for IDSNearbySessionMessage.GroupMessage);
  result = sub_214629878(&qword_27C908150, type metadata accessor for IDSNearbySessionMessage.GroupMessage);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214629AB4(uint64_t a1)
{
  *(a1 + 8) = sub_214629878(&qword_27C90CA38, type metadata accessor for IDSNearbySessionMessage);
  result = sub_214629878(&qword_27C90C958, type metadata accessor for IDSNearbySessionMessage);
  *(a1 + 16) = result;
  return result;
}

void sub_214629B60()
{
  sub_21462A29C(319, &qword_27C917028, &type metadata for IDSNearbySessionMessage.ConnectionRequest, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_21462A29C(319, &qword_27C917030, &type metadata for IDSNearbySessionMessage.ConnectionResponse, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_21462A29C(319, &qword_27C917038, &type metadata for IDSNearbySessionMessage.JoinRequest, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_21462A29C(319, &qword_27C917040, &type metadata for IDSNearbySessionMessage.JoinResponse, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_21462A168(319, &qword_27C917048, type metadata accessor for IDSNearbySessionMessage.GroupMessage);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_214629CF8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 153))
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

uint64_t sub_214629D40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 153) = 1;
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

    *(result + 153) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy114_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 56);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_214629E14(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 114))
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

uint64_t sub_214629E5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 114) = 1;
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

    *(result + 114) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor23IDSNearbySessionMessageV12JoinResponseV15ApprovalContentVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_214629EE4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_214629F2C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_214629FA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_214629FE8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_21462A068()
{
  sub_21462A168(319, &qword_27C917060, type metadata accessor for IDSNearbySessionMessage.GroupMessage.Initialization);
  if (v0 <= 0x3F)
  {
    sub_21462A168(319, &qword_27C917068, type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved);
    if (v1 <= 0x3F)
    {
      sub_21462A168(319, &qword_27C917070, type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberLeft);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21462A168(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2146D9D38();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21462A1F4()
{
  sub_2146D8B88();
  if (v0 <= 0x3F)
  {
    sub_21462A29C(319, &qword_27C917088, &type metadata for IDSNearbySessionMessage.GroupMessage.Member, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21462A29C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_index_120Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8B88();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_121Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2146D8B88();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21462A4C8()
{
  result = sub_2146D8B88();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_21462A5FC()
{
  result = qword_27C9170B0;
  if (!qword_27C9170B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9170B0);
  }

  return result;
}

unint64_t sub_21462A654()
{
  result = qword_27C9170B8;
  if (!qword_27C9170B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9170B8);
  }

  return result;
}

unint64_t sub_21462A6AC()
{
  result = qword_27C9170C0;
  if (!qword_27C9170C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9170C0);
  }

  return result;
}

unint64_t sub_21462A704()
{
  result = qword_27C9170C8;
  if (!qword_27C9170C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9170C8);
  }

  return result;
}

unint64_t sub_21462A75C()
{
  result = qword_27C9170D0;
  if (!qword_27C9170D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9170D0);
  }

  return result;
}

unint64_t sub_21462A7B4()
{
  result = qword_27C9170D8;
  if (!qword_27C9170D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9170D8);
  }

  return result;
}

unint64_t sub_21462A80C()
{
  result = qword_27C9170E0;
  if (!qword_27C9170E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9170E0);
  }

  return result;
}

unint64_t sub_21462A864()
{
  result = qword_27C9170E8;
  if (!qword_27C9170E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9170E8);
  }

  return result;
}

unint64_t sub_21462A8BC()
{
  result = qword_27C9170F0;
  if (!qword_27C9170F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9170F0);
  }

  return result;
}

unint64_t sub_21462A914()
{
  result = qword_27C9170F8;
  if (!qword_27C9170F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9170F8);
  }

  return result;
}

unint64_t sub_21462A96C()
{
  result = qword_27C917100;
  if (!qword_27C917100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917100);
  }

  return result;
}

unint64_t sub_21462A9C4()
{
  result = qword_27C917108;
  if (!qword_27C917108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917108);
  }

  return result;
}

unint64_t sub_21462AA1C()
{
  result = qword_27C917110;
  if (!qword_27C917110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917110);
  }

  return result;
}

unint64_t sub_21462AA74()
{
  result = qword_27C917118;
  if (!qword_27C917118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917118);
  }

  return result;
}

unint64_t sub_21462AACC()
{
  result = qword_27C917120;
  if (!qword_27C917120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917120);
  }

  return result;
}

unint64_t sub_21462AB24()
{
  result = qword_27C917128;
  if (!qword_27C917128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917128);
  }

  return result;
}

unint64_t sub_21462AB7C()
{
  result = qword_27C917130;
  if (!qword_27C917130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917130);
  }

  return result;
}

unint64_t sub_21462ABD4()
{
  result = qword_27C917138;
  if (!qword_27C917138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917138);
  }

  return result;
}

unint64_t sub_21462AC2C()
{
  result = qword_27C917140;
  if (!qword_27C917140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917140);
  }

  return result;
}

unint64_t sub_21462AC84()
{
  result = qword_27C917148;
  if (!qword_27C917148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917148);
  }

  return result;
}

unint64_t sub_21462ACDC()
{
  result = qword_27C917150;
  if (!qword_27C917150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917150);
  }

  return result;
}

unint64_t sub_21462AD34()
{
  result = qword_27C917158;
  if (!qword_27C917158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917158);
  }

  return result;
}

unint64_t sub_21462AD8C()
{
  result = qword_27C917160;
  if (!qword_27C917160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917160);
  }

  return result;
}

unint64_t sub_21462ADE4()
{
  result = qword_27C917168;
  if (!qword_27C917168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917168);
  }

  return result;
}

unint64_t sub_21462AE3C()
{
  result = qword_27C917170;
  if (!qword_27C917170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917170);
  }

  return result;
}

uint64_t sub_21462AE90(uint64_t *a1, __int128 *a2, char a3)
{
  v3 = *a1;
  v8 = *a2;
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7 = a3;
  return v4(&v8, &v7) & 1;
}

uint64_t sub_21462AEE4(uint64_t *a1, uint64_t a2, unint64_t *a3)
{
  v3 = a1[1];
  if (v3 >> 60 == 15)
  {
    v4 = 1;
  }

  else
  {
    v5 = *a3;
    v10[0] = *a1;
    v6 = v10[0];
    v10[1] = v3;
    MEMORY[0x28223BE20](a1);
    v8[2] = v10;
    v9 = 2;
    sub_21402D9F8(v10[0], v3);
    v4 = sub_2140479E4(sub_214047400, v8, v5);
    sub_213FDC6BC(v6, v3);
  }

  return v4 & 1;
}

uint64_t sub_21462AFF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696C616974696E69 && a2 == 0xEA0000000000657ALL;
  if (v4 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64417265626D656DLL && a2 == 0xEB00000000646564 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65527265626D656DLL && a2 == 0xED00006465766F6DLL || (sub_2146DA6A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x654C7265626D656DLL && a2 == 0xEA00000000007466)
  {

    return 3;
  }

  else
  {
    v6 = sub_2146DA6A8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_21462B170()
{
  result = qword_27C917178;
  if (!qword_27C917178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917178);
  }

  return result;
}

uint64_t sub_21462B1FC(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 16);
  if (!v5)
  {
    v5 = sub_2146D9B88();
    if (qword_280B35360 != -1)
    {
      goto LABEL_62;
    }

    goto LABEL_53;
  }

  v6 = a4;
  v8 = (a2 >> 62);
  v9 = __OFSUB__(HIDWORD(a1), a1);
  v47 = v9;
  v46 = HIDWORD(a1) - a1;
  v49 = BYTE6(a2);
  v10 = 32;
  v11 = a2;
  v44 = a2 >> 62;
  while (1)
  {
    v17 = *(a5 + v10);
    v18 = *(v17 + 16);
    v19 = v6 + v18;
    if (__OFADD__(v6, v18))
    {
      break;
    }

    if (v8 <= 1)
    {
      v20 = v49;
      if (v8)
      {
        v20 = v46;
        if (v47)
        {
          goto LABEL_58;
        }
      }

LABEL_15:
      if (v20 < v19)
      {
        goto LABEL_18;
      }

      goto LABEL_6;
    }

    if (v8 == 2)
    {
      v22 = *(a1 + 16);
      v21 = *(a1 + 24);
      v23 = __OFSUB__(v21, v22);
      v20 = v21 - v22;
      if (v23)
      {
        goto LABEL_59;
      }

      goto LABEL_15;
    }

    if (v19 >= 1)
    {
LABEL_18:
      v24 = sub_2146D9B88();
      if (qword_280B35360 != -1)
      {
        swift_once();
      }

      v25 = qword_280B35410;
      if (!os_log_type_enabled(qword_280B35410, v24))
      {
        goto LABEL_7;
      }

      sub_21402D9F8(a1, v11);
      sub_21402D9F8(a1, v11);

      v26 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v54 = v48;
      *v26 = 136446722;

      v27 = 0xED00007874612E65;
      v28 = 0x6C7070612E6D6F63;
      switch(a3)
      {
        case 1:
          v28 = 0x612E63696C627570;
          v27 = 0xEB00000000696376;
          break;
        case 2:
          v28 = 0x682E63696C627570;
          v27 = 0xEB00000000636965;
          break;
        case 3:
          v27 = 0xEB00000000316673;
          goto LABEL_39;
        case 4:
          v28 = 0x6D2E63696C627570;
          v27 = 0xEB00000000316669;
          break;
        case 5:
          v27 = 0xEB00000000666976;
          v28 = 0x612E63696C627570;
          break;
        case 6:
          v28 = 0x612E63696C627570;
          v27 = 0xEB00000000736976;
          break;
        case 7:
          v27 = 0xEB00000000666965;
          v28 = 0x682E63696C627570;
          break;
        case 8:
          v28 = 0xD000000000000010;
          v27 = 0x8000000214788090;
          break;
        case 9:
          v28 = 0x6A2E63696C627570;
          v27 = 0xEF7478652D676570;
          break;
        case 10:
          v27 = 0xEA00000000006F70;
LABEL_39:
          v28 = 0x6D2E63696C627570;
          break;
        case 11:
          v28 = 0x6A2E63696C627570;
          v27 = 0xEB00000000676570;
          break;
        case 12:
          v27 = 0xEA0000000000676ELL;
          v28 = 0x702E63696C627570;
          break;
        case 13:
          v28 = 0x772E63696C627570;
          v27 = 0xEB00000000706265;
          break;
        case 14:
          v28 = 0x742E63696C627570;
          v27 = 0xEB00000000666669;
          break;
        case 15:
          v27 = 0xEA0000000000706DLL;
          v28 = 0x622E63696C627570;
          break;
        case 16:
          v28 = 0x672E63696C627570;
          v27 = 0xEA00000000006669;
          break;
        case 17:
          v28 = 0xD000000000000019;
          v27 = 0x8000000214788110;
          break;
        case 18:
          v28 = 0xD000000000000018;
          v27 = 0x8000000214788130;
          break;
        case 19:
          v27 = 0xE700000000000000;
          v28 = 0x6E776F6E6B6E55;
          break;
        default:
          break;
      }

      v29 = sub_2144AEA38(v28, v27, &v54);

      *(v26 + 4) = v29;
      *(v26 + 12) = 2050;
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v35 = *(a1 + 16);
          v34 = *(a1 + 24);
          sub_213FB54FC(a1, a2);
          v23 = __OFSUB__(v34, v35);
          v32 = v34 - v35;
          if (v23)
          {
            goto LABEL_60;
          }

          v8 = v25;
          v31 = v24;
          v6 = a4;
          v33 = a2;
          goto LABEL_51;
        }

        v8 = v25;
        v31 = v24;
        v32 = 0;
        v6 = a4;
      }

      else
      {
        v30 = v8;
        v8 = v25;
        v31 = v24;
        v32 = v49;
        v6 = a4;
        if (v30)
        {
          v33 = a2;
          sub_213FB54FC(a1, a2);
          v32 = v46;
          if (v47)
          {
            goto LABEL_61;
          }

          goto LABEL_51;
        }
      }

      v33 = a2;
      sub_213FB54FC(a1, a2);
LABEL_51:
      *(v26 + 14) = v32;
      sub_213FB54FC(a1, v33);
      *(v26 + 22) = 2050;
      *(v26 + 24) = v19;
      _os_log_impl(&dword_213FAF000, v8, v31, "%{public}s header validation failed because the data count was %{public}ld and we expected it to be >= %{public}ld", v26, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x216056AC0](v48, -1, -1);
      MEMORY[0x216056AC0](v26, -1, -1);
      v11 = v33;
      LODWORD(v8) = v44;
      goto LABEL_7;
    }

LABEL_6:
    sub_21402D9F8(a1, v11);

    sub_21462C008(v19, a1, v11, v53);
    sub_2143BD2CC(v6, v53[0], v53[1], &v54);
    v12 = v54;
    v13 = v55;
    v14 = sub_21462C150(v17, v54, v55);
    v15 = v12;
    v16 = v13;
    v6 = a4;
    v11 = a2;
    sub_213FB54FC(v15, v16);

    if (v14)
    {
      return 1;
    }

LABEL_7:
    v10 += 8;
    if (!--v5)
    {
      return 0;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  swift_once();
LABEL_53:
  v36 = qword_280B35410;
  if (os_log_type_enabled(qword_280B35410, v5))
  {

    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v54 = v38;
    *v37 = 136446210;
    LOBYTE(v53[0]) = a3;
    v39 = ImageHeader.rawValue.getter();
    v41 = v40;

    v42 = sub_2144AEA38(v39, v41, &v54);

    *(v37 + 4) = v42;
    _os_log_impl(&dword_213FAF000, v36, v5, "%{public}s header validation failed because neither headerBytes was empty", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x216056AC0](v38, -1, -1);
    MEMORY[0x216056AC0](v37, -1, -1);
  }

  return 0;
}

uint64_t sub_21462B924(uint64_t a1, unint64_t a2, char a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  if (!v4)
  {
    LOBYTE(v7) = sub_2146D9B88();
    if (qword_280B35360 != -1)
    {
      goto LABEL_60;
    }

    goto LABEL_52;
  }

  v5 = a2;
  v7 = a2 >> 62;
  v8 = __OFSUB__(HIDWORD(a1), a1);
  v39 = v8;
  v38 = HIDWORD(a1) - a1;
  v41 = BYTE6(a2);
  for (i = 32; ; i += 8)
  {
    v14 = *(a4 + i);
    v15 = *(v14 + 16);
    if (v7 <= 1)
    {
      v16 = v41;
      if (v7)
      {
        v16 = v38;
        if (v39)
        {
          goto LABEL_57;
        }
      }

LABEL_14:
      if (v16 < v15)
      {
        goto LABEL_17;
      }

      goto LABEL_6;
    }

    if (v7 == 2)
    {
      break;
    }

    if (v15)
    {
LABEL_17:
      v20 = sub_2146D9B88();
      if (qword_280B35360 != -1)
      {
        swift_once();
      }

      v21 = qword_280B35410;
      if (!os_log_type_enabled(qword_280B35410, v20))
      {
        goto LABEL_7;
      }

      sub_21402D9F8(a1, v5);
      sub_21402D9F8(a1, v5);

      v22 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v45 = v40;
      *v22 = 136446722;

      v23 = 0xED00007874612E65;
      v24 = 0x6C7070612E6D6F63;
      switch(a3)
      {
        case 1:
          v24 = 0x612E63696C627570;
          v23 = 0xEB00000000696376;
          break;
        case 2:
          v24 = 0x682E63696C627570;
          v23 = 0xEB00000000636965;
          break;
        case 3:
          v23 = 0xEB00000000316673;
          goto LABEL_38;
        case 4:
          v24 = 0x6D2E63696C627570;
          v23 = 0xEB00000000316669;
          break;
        case 5:
          v23 = 0xEB00000000666976;
          v24 = 0x612E63696C627570;
          break;
        case 6:
          v24 = 0x612E63696C627570;
          v23 = 0xEB00000000736976;
          break;
        case 7:
          v23 = 0xEB00000000666965;
          v24 = 0x682E63696C627570;
          break;
        case 8:
          v24 = 0xD000000000000010;
          v23 = 0x8000000214788090;
          break;
        case 9:
          v24 = 0x6A2E63696C627570;
          v23 = 0xEF7478652D676570;
          break;
        case 10:
          v23 = 0xEA00000000006F70;
LABEL_38:
          v24 = 0x6D2E63696C627570;
          break;
        case 11:
          v24 = 0x6A2E63696C627570;
          v23 = 0xEB00000000676570;
          break;
        case 12:
          v23 = 0xEA0000000000676ELL;
          v24 = 0x702E63696C627570;
          break;
        case 13:
          v24 = 0x772E63696C627570;
          v23 = 0xEB00000000706265;
          break;
        case 14:
          v24 = 0x742E63696C627570;
          v23 = 0xEB00000000666669;
          break;
        case 15:
          v23 = 0xEA0000000000706DLL;
          v24 = 0x622E63696C627570;
          break;
        case 16:
          v24 = 0x672E63696C627570;
          v23 = 0xEA00000000006669;
          break;
        case 17:
          v24 = 0xD000000000000019;
          v23 = 0x8000000214788110;
          break;
        case 18:
          v24 = 0xD000000000000018;
          v23 = 0x8000000214788130;
          break;
        case 19:
          v23 = 0xE700000000000000;
          v24 = 0x6E776F6E6B6E55;
          break;
        default:
          break;
      }

      v25 = sub_2144AEA38(v24, v23, &v45);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2050;
      if (v7 > 1)
      {
        if (v7 != 2)
        {
          v26 = 0;
          v5 = a2;
          goto LABEL_49;
        }

        v28 = *(a1 + 16);
        v27 = *(a1 + 24);
        sub_213FB54FC(a1, a2);
        v19 = __OFSUB__(v27, v28);
        v26 = v27 - v28;
        if (v19)
        {
          goto LABEL_59;
        }

        v5 = a2;
      }

      else
      {
        v26 = v41;
        v5 = a2;
        if (v7)
        {
          sub_213FB54FC(a1, a2);
          v26 = v38;
          if (v39)
          {
            goto LABEL_58;
          }

          goto LABEL_50;
        }

LABEL_49:
        sub_213FB54FC(a1, v5);
      }

LABEL_50:
      *(v22 + 14) = v26;
      sub_213FB54FC(a1, v5);
      *(v22 + 22) = 2050;
      *(v22 + 24) = v15;
      _os_log_impl(&dword_213FAF000, v21, v20, "%{public}s header validation failed because the data count was %{public}ld and we expected it to be >= %{public}ld", v22, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x216056AC0](v40, -1, -1);
      MEMORY[0x216056AC0](v22, -1, -1);
      goto LABEL_7;
    }

LABEL_6:
    sub_21402D9F8(a1, v5);

    sub_21462C008(v15, a1, v5, v44);
    sub_2143BD2CC(0, v44[0], v44[1], &v45);
    v10 = v45;
    v11 = v46;
    v12 = sub_21462C150(v14, v45, v46);
    v13 = v11;
    v5 = a2;
    sub_213FB54FC(v10, v13);

    if (v12)
    {
      return 1;
    }

LABEL_7:
    if (!--v4)
    {
      return 0;
    }
  }

  v18 = *(a1 + 16);
  v17 = *(a1 + 24);
  v19 = __OFSUB__(v17, v18);
  v16 = v17 - v18;
  if (!v19)
  {
    goto LABEL_14;
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  swift_once();
LABEL_52:
  v29 = qword_280B35410;
  if (os_log_type_enabled(qword_280B35410, v7))
  {

    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v45 = v31;
    *v30 = 136446210;
    LOBYTE(v44[0]) = a3;
    v32 = ImageHeader.rawValue.getter();
    v34 = v33;

    v35 = sub_2144AEA38(v32, v34, &v45);

    *(v30 + 4) = v35;
    _os_log_impl(&dword_213FAF000, v29, v7, "%{public}s header validation failed because neither headerBytes was empty", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x216056AC0](v31, -1, -1);
    MEMORY[0x216056AC0](v30, -1, -1);
  }

  return 0;
}

uint64_t sub_21462C008@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = sub_2143BDD00(v10, v9, a2, a3);
  if (v6 && v11 < v6)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    result = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = sub_2143BDC9C(v10, v6, a2, a3);
  result = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    result = a2;
  }

LABEL_27:
  if (v12 >= result)
  {
LABEL_28:
    v13 = sub_2146D8A18();
    v15 = v14;
    result = sub_213FB54FC(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_21462C150(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_2146D8A88();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a3 >> 62 == 2)
  {
    v11 = *(a2 + 16);
  }

  sub_21402D9F8(a2, a3);
  sub_2146D8A98();
  v12 = *(a1 + 16);
  sub_21462C2D4();
  sub_2146D9DA8();
  if (v12)
  {
    v13 = (a1 + 32);
    while (1)
    {
      v14 = 0;
      if (v18)
      {
        break;
      }

      v15 = *v13++;
      if (v17[14] != v15)
      {
        break;
      }

      sub_2146D9DA8();
      if (!--v12)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v14 = v18;
  }

  (*(v7 + 8))(v10, v6);
  return v14;
}

unint64_t sub_21462C2D4()
{
  result = qword_27C917180;
  if (!qword_27C917180)
  {
    sub_2146D8A88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917180);
  }

  return result;
}

uint64_t sub_21462C368@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for RepositionStickerCommand() + 20);
  memcpy(__dst, (v1 + v3), 0x139uLL);
  memcpy(a1, (v1 + v3), 0x139uLL);
  return sub_2142E371C(__dst, &v5);
}

uint64_t type metadata accessor for RepositionStickerCommand()
{
  result = qword_280B301B0;
  if (!qword_280B301B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_21462C41C(const void *a1)
{
  v3 = *(type metadata accessor for RepositionStickerCommand() + 20);
  memcpy(v5, (v1 + v3), 0x139uLL);
  sub_2142E34C8(v5);
  return memcpy((v1 + v3), a1, 0x139uLL);
}

uint64_t sub_21462C4C8()
{
  v1 = (v0 + *(type metadata accessor for RepositionStickerCommand() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_21462C508(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RepositionStickerCommand() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_21462C598(uint64_t a1)
{
  *(a1 + 8) = sub_21462C600(&qword_27C917188);
  result = sub_21462C600(&qword_27C917190);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21462C600(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RepositionStickerCommand();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21462C66C()
{
  result = type metadata accessor for Metadata();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21462C6F0@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if ((result + 1) < 3)
  {
    v2 = result + 1;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_21462C718()
{
  result = qword_27C917198;
  if (!qword_27C917198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917198);
  }

  return result;
}

uint64_t sub_21462C87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21462C8D8()
{
  result = qword_27C9171A0;
  if (!qword_27C9171A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9171A0);
  }

  return result;
}

unint64_t sub_21462C92C(uint64_t a1)
{
  *(a1 + 8) = sub_2142FFB1C();
  result = sub_2142FFCCC();
  *(a1 + 16) = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor16MBDRichCardMediaVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21462C97C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 409))
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

uint64_t sub_21462C9C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 408) = 0;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 409) = 1;
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

    *(result + 409) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21462CA80@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 200;
  *(v5 + 24) = 0;
  *(v4 + 16) = sub_21438F518;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214032610;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

unint64_t sub_21462CBCC@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 2000;
  *(v5 + 24) = 0;
  *(v4 + 16) = sub_21406418C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_21403254C;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

uint64_t SMSMessage.spamCategory.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t SMSMessage.spamCategory.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t SMSMessage.carrierNameSupportsReportJunk.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SMSMessage.carrierNameSupportsReportJunk.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t SMSMessage.version.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t SMSMessage.version.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t SMSMessage.recipients.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

uint64_t SMSMessage.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SMSMessage() + 40);

  return sub_2144716D8(v3, a1);
}

uint64_t type metadata accessor for SMSMessage()
{
  result = qword_280B30B10;
  if (!qword_280B30B10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SMSMessage.date.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SMSMessage() + 40);

  return sub_2140924F0(a1, v3);
}

uint64_t SMSMessage.sender.getter()
{
  v1 = (v0 + *(type metadata accessor for SMSMessage() + 44));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SMSMessage.sender.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SMSMessage() + 44));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SMSMessage.iMessageCapability.getter()
{
  v1 = (v0 + *(type metadata accessor for SMSMessage() + 48));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t SMSMessage.iMessageCapability.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for SMSMessage();
  v6 = v2 + *(result + 48);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t SMSMessage.serviceCenter.getter()
{
  v1 = (v0 + *(type metadata accessor for SMSMessage() + 52));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SMSMessage.serviceCenter.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SMSMessage() + 52));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SMSMessage.originatedDeviceNumber.getter()
{
  v1 = (v0 + *(type metadata accessor for SMSMessage() + 56));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SMSMessage.originatedDeviceNumber.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SMSMessage() + 56));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SMSMessage.originatedDeviceEmail.getter()
{
  v1 = (v0 + *(type metadata accessor for SMSMessage() + 60));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SMSMessage.originatedDeviceEmail.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SMSMessage() + 60));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SMSMessage.originatedDeviceSIM.getter()
{
  v1 = (v0 + *(type metadata accessor for SMSMessage() + 64));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SMSMessage.originatedDeviceSIM.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SMSMessage() + 64));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SMSMessage.subject.getter()
{
  v1 = (v0 + *(type metadata accessor for SMSMessage() + 68));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SMSMessage.subject.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SMSMessage() + 68));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SMSMessage.contentType.getter()
{
  v1 = (v0 + *(type metadata accessor for SMSMessage() + 72));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SMSMessage.contentType.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SMSMessage() + 72));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SMSMessage.replaceMessage.getter()
{
  v1 = (v0 + *(type metadata accessor for SMSMessage() + 76));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t SMSMessage.replaceMessage.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for SMSMessage();
  v6 = v2 + *(result + 76);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t SMSMessage.countryCode.getter()
{
  v1 = (v0 + *(type metadata accessor for SMSMessage() + 80));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SMSMessage.countryCode.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SMSMessage() + 80));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SMSMessage.GUID.getter()
{
  v1 = (v0 + *(type metadata accessor for SMSMessage() + 84));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SMSMessage.GUID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SMSMessage() + 84));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SMSMessage.fallbackHash.getter()
{
  v1 = (v0 + *(type metadata accessor for SMSMessage() + 88));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SMSMessage.fallbackHash.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SMSMessage() + 88));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SMSMessage.items.getter()
{
  v1 = *(v0 + *(type metadata accessor for SMSMessage() + 92));
}

uint64_t SMSMessage.items.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SMSMessage() + 92);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t SMSMessage.trackMessage.setter(char a1)
{
  result = type metadata accessor for SMSMessage();
  *(v1 + *(result + 96)) = a1;
  return result;
}

uint64_t SMSMessage.sendEnabled.setter(char a1)
{
  result = type metadata accessor for SMSMessage();
  *(v1 + *(result + 100)) = a1;
  return result;
}

uint64_t SMSMessage.foundAppleGUID.setter(char a1)
{
  result = type metadata accessor for SMSMessage();
  *(v1 + *(result + 104)) = a1;
  return result;
}

uint64_t SMSMessage.groupID.getter()
{
  v1 = (v0 + *(type metadata accessor for SMSMessage() + 108));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SMSMessage.groupID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SMSMessage() + 108));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SMSMessage.originalGroupID.getter()
{
  v1 = (v0 + *(type metadata accessor for SMSMessage() + 112));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SMSMessage.originalGroupID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SMSMessage() + 112));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SMSMessage.displayName.getter()
{
  v1 = (v0 + *(type metadata accessor for SMSMessage() + 116));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SMSMessage.displayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SMSMessage() + 116));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SMSMessage.originatedDeviceUniqueID.getter()
{
  v1 = (v0 + *(type metadata accessor for SMSMessage() + 120));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SMSMessage.originatedDeviceUniqueID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SMSMessage() + 120));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SMSMessage.smsFilteringSettings.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SMSMessage() + 124));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_213FDC9D0(v4, v5);
}

__n128 SMSMessage.smsFilteringSettings.setter(__n128 *a1)
{
  v6 = *a1;
  v2 = a1[1].n128_i64[0];
  v3 = (v1 + *(type metadata accessor for SMSMessage() + 124));
  v4 = v3[2];
  sub_213FDC6D0(*v3, v3[1]);
  result = v6;
  *v3 = v6;
  v3[2] = v2;
  return result;
}

BlastDoor::SMSMessage::SMSType_optional __swiftcall SMSMessage.SMSType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

BlastDoor::SMSMessage::FilterSubCategoryType_optional __swiftcall SMSMessage.FilterSubCategoryType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 13;
  if (rawValue < 0xD)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t SMSMessage.SMSFilteringSettings.filterExtensionName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SMSMessage.SMSFilteringSettings.filterExtensionName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SMSMessage.debugDescription.getter()
{
  sub_2146D9EF8();
  MEMORY[0x2160545D0](60, 0xE100000000000000);
  MEMORY[0x2160545D0](0x617373654D534D53, 0xEA00000000006567);
  MEMORY[0x2160545D0](0x534D4D2F534D5320, 0xEA0000000000203ALL);
  v4 = *(v0 + 48);
  sub_2146D9FE8();
  MEMORY[0x2160545D0](0x203A4449554720, 0xE700000000000000);
  v1 = (v0 + *(type metadata accessor for SMSMessage() + 84));
  v5 = *v1;
  v6 = v1[1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  v2 = sub_2146D9608();
  MEMORY[0x2160545D0](v2);

  MEMORY[0x2160545D0](15913, 0xE200000000000000);
  return 0;
}

unint64_t sub_21462E438()
{
  result = qword_27C9171A8;
  if (!qword_27C9171A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9171A8);
  }

  return result;
}

unint64_t sub_21462E4BC()
{
  result = qword_27C9171B0;
  if (!qword_27C9171B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9171B0);
  }

  return result;
}

uint64_t sub_21462E53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21462E5A4(uint64_t a1)
{
  *(a1 + 8) = sub_21462E60C(&qword_280B30B20);
  result = sub_21462E60C(&qword_280B30B28);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21462E60C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SMSMessage();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_21462E67C()
{
  sub_21462E910(319, &qword_280B34BC8, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_21462E910(319, &qword_280B34BE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_21462E8AC();
      if (v2 <= 0x3F)
      {
        sub_21409320C();
        if (v3 <= 0x3F)
        {
          sub_21462E910(319, &qword_280B2E3D8, &type metadata for SMSCTPart, MEMORY[0x277D83940]);
          if (v4 <= 0x3F)
          {
            sub_21462E910(319, &qword_280B34BD8, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_21462E910(319, &qword_280B2FC40, &type metadata for SMSMessage.SMSFilteringSettings, MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
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

void sub_21462E8AC()
{
  if (!qword_280B2E3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C904F20, &qword_2146EE8A0);
    v0 = sub_2146D9D38();
    if (!v1)
    {
      atomic_store(v0, &qword_280B2E3C0);
    }
  }
}

void sub_21462E910(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_21462E990()
{
  result = qword_27C9171B8;
  if (!qword_27C9171B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9171B8);
  }

  return result;
}

unint64_t sub_21462E9E4()
{
  result = qword_280B30B30;
  if (!qword_280B30B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B30B30);
  }

  return result;
}

void sub_21462EA3C(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
  v8 = sub_21404A62C();
  if (!v3)
  {
    v20 = v8;
    [v20 _enableStrictSecureDecodingMode];
    [v20 setDecodingFailurePolicy_];
    v21 = type metadata accessor for _BlastDoorCKShareParticipant();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v23 = sub_2146D9588();
    [v20 setClass:ObjCClassFromMetadata forClassName:v23];

    sub_21404A8B8(0, &unk_27C9131C0, off_278175128);
    v24 = swift_getObjCClassFromMetadata();
    v25 = sub_2146D9588();
    [v20 setClass:v24 forClassName:v25];

    type metadata accessor for _BlastDoorCKUserIdentity();
    v26 = swift_getObjCClassFromMetadata();
    v27 = sub_2146D9588();
    [v20 setClass:v26 forClassName:v27];

    type metadata accessor for _BlastDoorCKRecordID();
    v28 = swift_getObjCClassFromMetadata();
    v29 = sub_2146D9588();
    [v20 setClass:v28 forClassName:v29];

    type metadata accessor for _BlastDoorCKRecordZoneID();
    v30 = swift_getObjCClassFromMetadata();
    v31 = sub_2146D9588();
    [v20 setClass:v30 forClassName:v31];

    type metadata accessor for _BlastDoorCKUserIdentityLookupInfo();
    v32 = swift_getObjCClassFromMetadata();
    v33 = sub_2146D9588();
    [v20 setClass:v32 forClassName:v33];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913160, &unk_21473D7C0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_2146EA710;
    *(v34 + 32) = v21;
    v35 = *MEMORY[0x277CCA308];
    sub_2146D95B8();
    sub_2146D9D08();

    if (v42[3])
    {
      if (swift_dynamicCast())
      {
        sub_21462F86C(v43, a3);
LABEL_10:

        sub_213FB54FC(a1, a2);
        return;
      }
    }

    else
    {
      sub_213FB2DF4(v42, &qword_27C913170, &qword_2146EAB20);
    }

    v39 = sub_2146D9F58();
    swift_allocError();
    v41 = v40;
    sub_2146D9F28();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D84168], v39);
    swift_willThrow();
    goto LABEL_10;
  }

  v43 = v3;
  v9 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C917FA0, &qword_2146ED5E0);
  sub_21404A8B8(0, &qword_27C9131B0, 0x277CCA9B8);
  if (swift_dynamicCast())
  {

    sub_21404A6EC();
    swift_allocError();
    v11 = v10;
    v12 = v42[4];
    v13 = [v12 domain];
    v14 = sub_2146D95B8();
    v16 = v15;

    MEMORY[0x2160545D0](v14, v16);

    *v11 = 0xD000000000000014;
    v11[1] = 0x800000021478AAD0;
    v42[0] = [v12 code];
    v17 = sub_2146DA428();
    v19 = v18;

    v11[2] = v17;
    v11[3] = v19;
    v11[4] = 0xD000000000000012;
    v11[5] = 0x80000002147A5E50;
    swift_willThrow();
    sub_213FB54FC(a1, a2);
  }

  else
  {

    sub_21404A6EC();
    swift_allocError();
    v37 = v36;
    v38 = v3;
    sub_214689A34(v3, 0xD000000000000012, 0x80000002147A5E50, v37);
    swift_willThrow();
    sub_213FB54FC(a1, a2);
  }
}

uint64_t sub_21462F008()
{
  v2 = v1;
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041D8, &qword_2146ED5C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v84 - v6;
  v8 = type metadata accessor for CloudKitSharingToken();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CloudKitShareParticipant(0);
  sub_213FB2E54(v3 + v13[19], v7, &qword_27C9041D8, &qword_2146ED5C0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_213FB2DF4(v7, &qword_27C9041D8, &qword_2146ED5C0);
    v14 = 0;
  }

  else
  {
    sub_21404A900(v7, v12);
    v14 = sub_2145A8204();
    sub_2146382D0(v12, type metadata accessor for CloudKitSharingToken);
    if (v1)
    {
      return v13;
    }
  }

  if (v3[3])
  {
    v15 = v3[2];
    v16 = v3[3];

    v17 = sub_2146D9588();

    v18 = v3[8];
    if (!v18)
    {
LABEL_8:
      v99 = v14;
      v22 = v3 + v13[6];
      v23 = sub_21463084C();
      v24 = *(v3 + v13[8]);
      v25 = v13[10];
      v26 = *(v3 + v13[9]);
      v91 = *(v3 + v13[7]);
      v92 = v26;
      v27 = *(v3 + v25);
      v28 = v13[12];
      v93 = *(v3 + v13[11]);
      v94 = v24;
      v29 = *(v3 + v28);
      v96 = v27;
      v97 = v29;
      v30 = v13[14];
      v95 = *(v3 + v13[13]);
      v98 = *(v3 + v30);
      v31 = (v3 + v13[15]);
      if (v31[1] >> 60 == 15)
      {
        v32 = 0;
      }

      else
      {
        v33 = *v31;
        v32 = sub_2146D8A38();
      }

      v34 = (v3 + v13[16]);
      if (v34[1] >> 60 == 15)
      {
        v35 = 0;
      }

      else
      {
        v36 = *v34;
        v35 = sub_2146D8A38();
      }

      v37 = *(v3 + v13[18]);
      v89 = *(v3 + v13[17]);
      v90 = v37;
      v38 = (v3 + v13[20]);
      v39 = v38[1] >> 60;
      v101 = v2;
      if (v39 == 15)
      {
        v86 = 0;
      }

      else
      {
        v40 = *v38;
        v86 = sub_2146D8A38();
      }

      v41 = v13[22];
      v85 = *(v3 + v13[21]);
      v42 = *(v3 + v13[23]);
      v87 = *(v3 + v41);
      v88 = v42;
      v84 = type metadata accessor for _BlastDoorCKShareParticipant();
      v43 = objc_allocWithZone(v84);
      v44 = OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_inviterID;
      *&v43[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_inviterID] = 0;
      v45 = OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_protectionInfo;
      *&v43[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_protectionInfo] = 0;
      v46 = OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_encryptedPersonalInfo;
      *&v43[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_encryptedPersonalInfo] = 0;
      v47 = OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_invitationToken;
      *&v43[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_invitationToken] = 0;
      v48 = OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_protectionInfoPublicKey;
      *&v43[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_protectionInfoPublicKey] = 0;
      v49 = &v43[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_ParticipantIDKey];
      strcpy(&v43[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_ParticipantIDKey], "ParticipantID");
      *(v49 + 7) = -4864;
      v50 = &v43[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_InviterIDKey];
      *v50 = 0x4972657469766E49;
      *(v50 + 1) = 0xE900000000000044;
      v51 = &v43[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_UserIdentityKey];
      strcpy(&v43[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_UserIdentityKey], "UserIdentity");
      v51[13] = 0;
      *(v51 + 7) = -5120;
      v52 = &v43[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_IsCurrentUserKey];
      strcpy(&v43[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_IsCurrentUserKey], "IsCurrentUser");
      *(v52 + 7) = -4864;
      v53 = &v43[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_IsOrgAdminUserKey];
      strcpy(&v43[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_IsOrgAdminUserKey], "IsOrgAdminUser");
      v53[15] = -18;
      v54 = &v43[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_AcceptanceStatusKey];
      *v54 = 0xD000000000000010;
      *(v54 + 1) = 0x80000002147A5D50;
      v55 = &v43[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_RoleKey];
      *v55 = 1701869908;
      *(v55 + 1) = 0xE400000000000000;
      v56 = &v43[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_PermissionKey];
      *v56 = 0x697373696D726550;
      *(v56 + 1) = 0xEA00000000006E6FLL;
      v57 = &v43[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_OriginalParticipantRoleKey];
      *v57 = 0xD000000000000017;
      *(v57 + 1) = 0x80000002147A5D70;
      v58 = &v43[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_OriginalAcceptanceStatusKey];
      *v58 = 0xD000000000000018;
      *(v58 + 1) = 0x80000002147A5D90;
      v59 = &v43[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_OriginalPermissionKey];
      *v59 = 0xD000000000000012;
      *(v59 + 1) = 0x80000002147A5DB0;
      v60 = &v43[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_ProtectionInfoKey];
      strcpy(&v43[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_ProtectionInfoKey], "ProtectionInfo");
      v60[15] = -18;
      v61 = &v43[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_EncryptedPersonalInfoKey];
      *v61 = 0xD000000000000015;
      *(v61 + 1) = 0x80000002147A5BE0;
      v62 = &v43[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_CreatedInProcessKey];
      *v62 = 0xD000000000000010;
      *(v62 + 1) = 0x80000002147A5DD0;
      v63 = &v43[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_AcceptedInProcessKey];
      *v63 = 0xD000000000000011;
      *(v63 + 1) = 0x80000002147A5DF0;
      v64 = &v43[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_DeviceToDeviceShareInvitationTokenKey];
      *v64 = 0x6974617469766E49;
      *(v64 + 1) = 0xEF6E656B6F546E6FLL;
      v65 = &v43[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_ProtectionInfoPublicIdentityKey];
      *v65 = 0xD000000000000017;
      *(v65 + 1) = 0x80000002147A5E10;
      v66 = &v43[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_WantsNewInvitationTokenKey];
      *v66 = 0xD000000000000017;
      *(v66 + 1) = 0x80000002147943A0;
      v67 = &v43[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_MutableInvitationTokenStatus];
      *v67 = 0xD00000000000001CLL;
      *(v67 + 1) = 0x80000002147A5E30;
      v68 = &v43[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_IsAnonymousInvitedParticipant];
      *v68 = 0xD00000000000001DLL;
      *(v68 + 1) = 0x80000002147943C0;
      *&v43[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_participantID] = v17;
      *&v43[v44] = v18;
      *&v43[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_userIdentity] = v23;
      v43[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_isCurrentUser] = v91;
      v43[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_isOrgAdminUser] = v94;
      v43[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_role] = v92;
      v43[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_acceptanceStatus] = v96;
      v43[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_permission] = v93;
      v43[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_originalParticipantRole] = v97;
      v43[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_originalAcceptanceStatus] = v95;
      v43[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_originalPermission] = v98;
      *&v43[v45] = v32;
      v69 = *&v43[v46];
      *&v43[v46] = v35;
      v70 = v17;
      v71 = v18;
      v72 = v23;
      v73 = v32;
      v74 = v35;

      v75 = v90;
      v43[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_createdInProcess] = v89;
      v43[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_acceptedInProcess] = v75;
      v76 = *&v43[v47];
      v77 = v99;
      *&v43[v47] = v99;
      v78 = v77;

      v79 = *&v43[v48];
      v80 = v86;
      *&v43[v48] = v86;
      v81 = v80;

      v43[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_wantsNewInvitationToken] = v85;
      v82 = v88;
      v43[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_isAnonymousInvitedParticipant] = v87;
      v43[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_invitationTokenStatus] = v82;
      v100.receiver = v43;
      v100.super_class = v84;
      v13 = objc_msgSendSuper2(&v100, sel_init);

      return v13;
    }

    if (v18 != 1)
    {
      v19 = v3[7];
      v20 = v3[8];

      v21 = sub_2146D9588();
      sub_213FDC6D0(v19, v18);
      v18 = v21;
      goto LABEL_8;
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

void sub_21462F86C(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for CloudKitUserIdentity(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041D8, &qword_2146ED5C0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v104 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v81 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v81 - v16;
  v18 = type metadata accessor for CloudKitSharingToken();
  v19 = *(*(v18 - 8) + 56);
  v19(v17, 1, 1, v18);
  v20 = *&a1[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_invitationToken];
  if (v20)
  {
    sub_2145A8530(v20, v15);
    if (v2)
    {
      sub_213FB2DF4(v17, &qword_27C9041D8, &qword_2146ED5C0);

      return;
    }

    sub_213FB2DF4(v17, &qword_27C9041D8, &qword_2146ED5C0);
    v19(v15, 0, 1, v18);
    sub_21408AC04(v15, v17, &qword_27C9041D8, &qword_2146ED5C0);
  }

  v21 = *&a1[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_participantID];
  v22 = sub_2146D95B8();
  v24 = v23;
  if (*&a1[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_inviterID])
  {
    v25 = sub_2146D95B8();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  sub_214630348(*&a1[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_userIdentity], v8);
  if (v2)
  {
    sub_213FB2DF4(v17, &qword_27C9041D8, &qword_2146ED5C0);

    return;
  }

  v102 = v24;
  v103 = v8;
  LODWORD(v98) = a1[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_isCurrentUser];
  LODWORD(v97) = a1[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_isOrgAdminUser];
  LODWORD(v96) = a1[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_role];
  LODWORD(v95) = a1[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_acceptanceStatus];
  v111 = a1[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_permission];
  v94 = a1[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_originalParticipantRole];
  v93 = a1[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_originalAcceptanceStatus];
  v92 = a1[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_originalPermission];
  v28 = *&a1[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_protectionInfo];
  if (v28)
  {
    v29 = v28;
    v91 = sub_2146D8A58();
    v90 = v30;
  }

  else
  {
    v91 = 0;
    v90 = 0xF000000000000000;
  }

  v31 = *&a1[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_encryptedPersonalInfo];
  if (v31)
  {
    v32 = v31;
    v89 = sub_2146D8A58();
    v88 = v33;
  }

  else
  {
    v89 = 0;
    v88 = 0xF000000000000000;
  }

  v87 = a1[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_createdInProcess];
  v86 = a1[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_acceptedInProcess];
  sub_213FB2E54(v17, v104, &qword_27C9041D8, &qword_2146ED5C0);
  v34 = *&a1[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_protectionInfoPublicKey];
  v99 = v17;
  v100 = v22;
  v101 = v27;
  v82 = v25;
  if (v34)
  {
    v35 = v34;
    v85 = sub_2146D8A58();
    v84 = v36;
  }

  else
  {
    v85 = 0;
    v84 = 0xF000000000000000;
  }

  v83 = a1[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_wantsNewInvitationToken];
  v37 = a1[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_isAnonymousInvitedParticipant];
  v38 = a1[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_invitationTokenStatus];
  v39 = type metadata accessor for CloudKitShareParticipant(0);
  sub_2144F6638(v103, a2 + v39[6]);
  sub_213FB2E54(v104, a2 + v39[19], &qword_27C9041D8, &qword_2146ED5C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v41 = swift_allocObject();
  *(v41 + 16) = sub_21405980C;
  *(v41 + 24) = 0;
  *(inited + 32) = v41;
  sub_214042B80(inited, &v107);
  v42 = v108;
  v43 = v109;
  LOBYTE(inited) = v110;
  sub_2144F5110(v105);
  *a2 = v107;
  v44 = v105[1];
  *(a2 + 40) = v105[0];
  v45 = v106;
  *(a2 + 16) = v42;
  *(a2 + 24) = v43;
  *(a2 + 32) = inited;
  *(a2 + 56) = v44;
  *(a2 + 72) = v45;
  *(a2 + v39[7]) = v98;
  *(a2 + v39[8]) = v97;
  *(a2 + v39[9]) = v96;
  *(a2 + v39[10]) = v95;
  *(a2 + v39[11]) = v111;
  *(a2 + v39[12]) = v94;
  *(a2 + v39[13]) = v93;
  *(a2 + v39[14]) = v92;
  v46 = (a2 + v39[15]);
  v47 = v90;
  *v46 = v91;
  v46[1] = v47;
  v48 = (a2 + v39[16]);
  v49 = v88;
  *v48 = v89;
  v48[1] = v49;
  *(a2 + v39[17]) = v87;
  *(a2 + v39[18]) = v86;
  v50 = (a2 + v39[20]);
  v51 = v84;
  *v50 = v85;
  v50[1] = v51;
  *(a2 + v39[21]) = v83;
  *(a2 + v39[22]) = v37;
  *(a2 + v39[23]) = v38;
  v53 = *a2;
  v52 = *(a2 + 8);
  v54 = *(a2 + 24);
  v96 = *(a2 + 16);
  LODWORD(v51) = *(a2 + 32);
  *&v105[0] = v100;
  *(&v105[0] + 1) = v102;
  LODWORD(v98) = v51;
  v112 = v51;
  *&v107 = 0xD000000000000026;
  *(&v107 + 1) = 0x800000021478D9B0;
  v108 = 0xD00000000000001CLL;
  v109 = 0x800000021478A360;

  v97 = v53;
  v55 = v53(v105, &v112, &v107);
  v56 = v101;
  if ((v55 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v67 = 0xD000000000000026;
    v67[1] = 0x800000021478D9B0;
    v67[2] = 0xD00000000000001CLL;
    v67[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(v104, &qword_27C9041D8, &qword_2146ED5C0);
    sub_2146382D0(v103, type metadata accessor for CloudKitUserIdentity);
    sub_213FB2DF4(v99, &qword_27C9041D8, &qword_2146ED5C0);
    v68 = *(a2 + 8);
    v69 = *(a2 + 24);

    *a2 = v97;
    *(a2 + 8) = v52;
    *(a2 + 16) = v96;
    *(a2 + 24) = v54;
    *(a2 + 32) = v98;
LABEL_22:
    sub_2146382D0(a2, type metadata accessor for CloudKitShareParticipant);
    return;
  }

  v57 = *(a2 + 8);
  v95 = 0x800000021478A360;
  v58 = *(a2 + 24);

  *a2 = v97;
  *(a2 + 8) = v52;
  v59 = v102;
  *(a2 + 16) = v100;
  *(a2 + 24) = v59;
  *(a2 + 32) = v98;
  v61 = *(a2 + 40);
  v60 = *(a2 + 48);
  v62 = *(a2 + 56);
  v63 = *(a2 + 64);
  LODWORD(v59) = *(a2 + 72);
  v64 = v82;
  *&v105[0] = v82;
  *(&v105[0] + 1) = v56;
  v65 = v95;
  LODWORD(v100) = v59;
  v112 = v59;
  *&v107 = 0xD000000000000022;
  *(&v107 + 1) = 0x800000021478D9E0;
  v108 = 0xD00000000000001CLL;
  v109 = v95;

  v98 = v62;
  v97 = v63;
  sub_213FDC9D0(v62, v63);
  v96 = v60;
  v102 = v61;
  v66 = v61(v105, &v112, &v107);
  v70 = v101;
  if ((v66 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v75 = 0xD000000000000022;
    v75[1] = 0x800000021478D9E0;
    v75[2] = 0xD00000000000001CLL;
    v75[3] = v65;
    swift_willThrow();

    sub_213FB2DF4(v104, &qword_27C9041D8, &qword_2146ED5C0);
    sub_2146382D0(v103, type metadata accessor for CloudKitUserIdentity);
    sub_213FB2DF4(v99, &qword_27C9041D8, &qword_2146ED5C0);
    v76 = *(a2 + 48);
    v77 = *(a2 + 56);
    v78 = *(a2 + 64);

    sub_213FDC6D0(v77, v78);
    v79 = v96;
    *(a2 + 40) = v102;
    *(a2 + 48) = v79;
    v80 = v97;
    *(a2 + 56) = v98;
    *(a2 + 64) = v80;
    *(a2 + 72) = v100;
    goto LABEL_22;
  }

  sub_213FDC6D0(v98, v97);

  sub_213FB2DF4(v104, &qword_27C9041D8, &qword_2146ED5C0);
  sub_2146382D0(v103, type metadata accessor for CloudKitUserIdentity);
  sub_213FB2DF4(v99, &qword_27C9041D8, &qword_2146ED5C0);
  v71 = *(a2 + 48);
  v72 = *(a2 + 56);
  v73 = *(a2 + 64);

  sub_213FDC6D0(v72, v73);
  v74 = v96;
  *(a2 + 40) = v102;
  *(a2 + 48) = v74;
  *(a2 + 56) = v64;
  *(a2 + 64) = v70;
  *(a2 + 72) = v100;
}

void sub_214630348(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917510, &unk_214757860);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v43 - v7;
  sub_214638330(v64);
  v9 = *&a1[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_userRecordID];
  if (v9)
  {
    sub_214630EF0(v9, v51);
    if (v2)
    {

      return;
    }

    v50[8] = v51[8];
    v50[9] = v51[9];
    *&v50[10] = v52;
    v50[4] = v51[4];
    v50[5] = v51[5];
    v50[6] = v51[6];
    v50[7] = v51[7];
    v50[0] = v51[0];
    v50[1] = v51[1];
    v50[2] = v51[2];
    v50[3] = v51[3];
    nullsub_1(v50);
    v61 = v50[8];
    v62 = v50[9];
    v63 = *&v50[10];
    v57 = v50[4];
    v58 = v50[5];
    v60 = v50[7];
    v59 = v50[6];
    v53 = v50[0];
    v54 = v50[1];
    v11 = v50[2];
    v10 = v50[3];
  }

  else
  {
    v61 = v64[8];
    v62 = v64[9];
    v63 = v65;
    v57 = v64[4];
    v58 = v64[5];
    v60 = v64[7];
    v59 = v64[6];
    v53 = v64[0];
    v54 = v64[1];
    v11 = v64[2];
    v10 = v64[3];
  }

  v56 = v10;
  v55 = v11;
  sub_214638350(v51);
  v12 = *&a1[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_lookupInfo];
  if (v12)
  {
    sub_21463178C(v12, v49);
    if (v2)
    {
      sub_213FB2DF4(&v53, &qword_27C917500, &qword_2146F42A8);

      return;
    }

    memcpy(v48, v49, sizeof(v48));
    nullsub_1(v48);
    v13 = v48;
  }

  else
  {
    v13 = v51;
  }

  memcpy(v50, v13, sizeof(v50));
  if (*&a1[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_nameComponents])
  {
    sub_2146D87F8();
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = sub_2146D8808();
  (*(*(v15 - 8) + 56))(v8, v14, 1, v15);
  v16 = *&a1[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_contactIdentifiers];
  v48[0] = 0;
  v17 = v16;
  sub_213FB2E54(&v53, v49, &qword_27C917500, &qword_2146F42A8);
  sub_213FB2E54(v50, v49, &qword_27C917520, &qword_2146F42B0);
  sub_2146D98F8();
  v18 = v48[0];
  if (v48[0])
  {

    v19 = *&a1[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_publicSharingKey];
    if (v19)
    {
      v20 = v19;
      v66 = sub_2146D8A58();
      v47 = v21;
    }

    else
    {
      v66 = 0;
      v47 = 0xF000000000000000;
    }

    v22 = *&a1[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_outOfNetworkPrivateKey];
    if (v22)
    {
      v23 = v22;
      v24 = sub_2146D8A58();
      v45 = v25;
      v46 = v24;
    }

    else
    {
      v45 = 0xF000000000000000;
      v46 = 0;
    }

    v26 = a1[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_isCached];
    v43 = a1[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_hasICloudAccount];
    v44 = v26;
    v27 = *&a1[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_encryptedPersonalInfo];
    if (v27)
    {
      v28 = v27;
      v27 = sub_2146D8A58();
      v30 = v29;
      sub_213FB2DF4(&v53, &qword_27C917500, &qword_2146F42A8);
      sub_213FB2DF4(v50, &qword_27C917520, &qword_2146F42B0);
    }

    else
    {
      sub_213FB2DF4(v50, &qword_27C917520, &qword_2146F42B0);
      sub_213FB2DF4(&v53, &qword_27C917500, &qword_2146F42A8);
      v30 = 0xF000000000000000;
    }

    v31 = *&a1[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_publicKeyVersion];

    v32 = v62;
    *(a2 + 128) = v61;
    *(a2 + 144) = v32;
    *(a2 + 160) = v63;
    v33 = v58;
    *(a2 + 64) = v57;
    *(a2 + 80) = v33;
    v34 = v60;
    *(a2 + 96) = v59;
    *(a2 + 112) = v34;
    v35 = v54;
    *a2 = v53;
    *(a2 + 16) = v35;
    v36 = v56;
    *(a2 + 32) = v55;
    *(a2 + 48) = v36;
    v37 = type metadata accessor for CloudKitUserIdentity(0);
    sub_21408AC04(v8, a2 + v37[5], &qword_27C917510, &unk_214757860);
    memcpy((a2 + v37[6]), v50, 0x110uLL);
    *(a2 + v37[7]) = v18;
    v38 = (a2 + v37[8]);
    v39 = v46;
    v40 = v47;
    *v38 = v66;
    v38[1] = v40;
    v41 = (a2 + v37[9]);
    *v41 = v39;
    v41[1] = v45;
    LOBYTE(v39) = v43;
    *(a2 + v37[10]) = v44;
    *(a2 + v37[11]) = v39;
    v42 = (a2 + v37[12]);
    *v42 = v27;
    v42[1] = v30;
    *(a2 + v37[13]) = v31;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21463084C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917510, &unk_214757860);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v73 - v4;
  v6 = v0[9];
  v94 = v0[8];
  v95 = v6;
  v96 = *(v0 + 20);
  v7 = v0[5];
  v90 = v0[4];
  v91 = v7;
  v8 = v0[7];
  v92 = v0[6];
  v93 = v8;
  v9 = v0[1];
  v86 = *v0;
  v87 = v9;
  v10 = v0[3];
  v88 = v0[2];
  v89 = v10;
  if (get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(&v86) == 1)
  {
    v11 = 0;
  }

  else
  {
    v85[8] = v94;
    v85[9] = v95;
    *&v85[10] = v96;
    v85[4] = v90;
    v85[5] = v91;
    v85[6] = v92;
    v85[7] = v93;
    v85[0] = v86;
    v85[1] = v87;
    v85[2] = v88;
    v85[3] = v89;
    v11 = sub_214631EAC();
  }

  v12 = type metadata accessor for CloudKitUserIdentity(0);
  memcpy(v85, v0 + v12[6], sizeof(v85));
  enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0 = get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(v85);
  v14 = 0;
  if (enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0 != 1)
  {
    memcpy(v83, v85, sizeof(v83));
    v14 = sub_214632150();
  }

  v82 = v14;
  sub_213FB2E54(v0 + v12[5], v5, &qword_27C917510, &unk_214757860);
  v15 = sub_2146D8808();
  v16 = *(v15 - 8);
  result = (*(v16 + 48))(v5, 1, v15);
  v18 = 0;
  if (result != 1)
  {
    v18 = sub_2146D87E8();
    result = (*(v16 + 8))(v5, v15);
  }

  v19 = *(v0 + v12[7]);
  v83[0] = MEMORY[0x277D84F90];
  v20 = *(v19 + 16);
  if (v20)
  {
    v81 = v18;
    v21 = v11;
    v22 = 0;
    v23 = (v19 + 40);
    while (v22 < *(v19 + 16))
    {
      v25 = *(v23 - 1);
      v24 = *v23;

      sub_2146D9588();

      MEMORY[0x2160547D0](v26);
      if (*((v83[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v83[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v80 = *((v83[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2146D9938();
      }

      ++v22;
      result = sub_2146D9958();
      v23 += 2;
      if (v20 == v22)
      {
        v11 = v21;
        v18 = v81;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
    sub_21404A8B8(0, &unk_27C9174A0, 0x277CCACA8);
    v27 = sub_2146D98E8();

    v28 = 0;
    v29 = (v1 + v12[8]);
    if (v29[1] >> 60 != 15)
    {
      v30 = *v29;
      v28 = sub_2146D8A38();
    }

    v31 = (v1 + v12[9]);
    v32 = v31[1] >> 60;
    v80 = v28;
    if (v32 == 15)
    {
      v78 = 0;
    }

    else
    {
      v33 = *v31;
      v78 = sub_2146D8A38();
    }

    v34 = *(v1 + v12[10]);
    v35 = *(v1 + v12[11]);
    v36 = (v1 + v12[12]);
    v37 = v36[1] >> 60;
    v81 = v27;
    v79 = v35;
    v77 = v34;
    if (v37 == 15)
    {
      v75 = 0;
    }

    else
    {
      v38 = *v36;
      v75 = sub_2146D8A38();
    }

    v76 = *(v1 + v12[13]);
    v74 = type metadata accessor for _BlastDoorCKUserIdentity();
    v39 = objc_allocWithZone(v74);
    v40 = OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_userRecordID;
    *&v39[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_userRecordID] = 0;
    v41 = OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_nameComponents;
    *&v39[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_nameComponents] = 0;
    v42 = OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_lookupInfo;
    *&v39[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_lookupInfo] = 0;
    v43 = OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_publicSharingKey;
    *&v39[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_publicSharingKey] = 0;
    v44 = OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_outOfNetworkPrivateKey;
    *&v39[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_outOfNetworkPrivateKey] = 0;
    v45 = OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_encryptedPersonalInfo;
    *&v39[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_encryptedPersonalInfo] = 0;
    v46 = &v39[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_UserRecordIDKey];
    strcpy(&v39[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_UserRecordIDKey], "UserRecordID");
    v46[13] = 0;
    *(v46 + 7) = -5120;
    v47 = &v39[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_NameComponentsKey];
    strcpy(&v39[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_NameComponentsKey], "NameComponents");
    v47[15] = -18;
    v48 = &v39[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_LookupInfoKey];
    *v48 = 0x6E4970756B6F6F4CLL;
    *(v48 + 1) = 0xEA00000000006F66;
    v49 = &v39[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_ContactIdentifiersKey];
    *v49 = 0xD000000000000012;
    *(v49 + 1) = 0x80000002147A5CA0;
    v50 = &v39[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_ProtectionDataKey];
    strcpy(&v39[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_ProtectionDataKey], "ProtectionData");
    v50[15] = -18;
    v51 = &v39[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_OONProtectionDataKey];
    *v51 = 0xD000000000000011;
    *(v51 + 1) = 0x80000002147A5CC0;
    v52 = &v39[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_IsCachedKey];
    *v52 = 0x6465686361437349;
    *(v52 + 1) = 0xE800000000000000;
    v53 = &v39[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_HasICloudAccountKey];
    *v53 = 0xD000000000000010;
    *(v53 + 1) = 0x80000002147A5CE0;
    v54 = &v39[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_EncryptedPersonalInfoKey];
    *v54 = 0xD000000000000015;
    *(v54 + 1) = 0x80000002147A5BE0;
    v55 = &v39[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_PublicKeyVersionKey];
    *v55 = 0xD000000000000010;
    *(v55 + 1) = 0x80000002147A5D00;
    *&v39[v40] = v11;
    *&v39[v41] = v18;
    v56 = *&v39[v42];
    v57 = v82;
    *&v39[v42] = v82;
    v58 = v11;
    v59 = v18;
    v60 = v57;

    v62 = v80;
    v61 = v81;
    *&v39[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_contactIdentifiers] = v81;
    v63 = *&v39[v43];
    *&v39[v43] = v62;
    v64 = v61;
    v65 = v62;

    v66 = *&v39[v44];
    v67 = v78;
    *&v39[v44] = v78;
    v68 = v67;

    v39[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_isCached] = v77;
    v39[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_hasICloudAccount] = v79;
    v69 = *&v39[v45];
    v70 = v75;
    *&v39[v45] = v75;
    v71 = v70;

    *&v39[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_publicKeyVersion] = v76;
    v84.receiver = v39;
    v84.super_class = v74;
    v72 = objc_msgSendSuper2(&v84, sel_init);

    return v72;
  }

  return result;
}

uint64_t sub_214630EF0@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *&a1[OBJC_IVAR____TtC9BlastDoor20_BlastDoorCKRecordID_recordName];
  v4 = sub_2146D95B8();
  v6 = v5;
  v49 = a1;
  v7 = *&a1[OBJC_IVAR____TtC9BlastDoor20_BlastDoorCKRecordID_zoneID];
  v8 = *(v7 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKRecordZoneID_zoneName);
  v9 = sub_2146D95B8();
  v62 = v10;
  v11 = *(v7 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKRecordZoneID_ownerName);
  v12 = sub_2146D95B8();
  v61 = v13;
  v44 = v12;
  v45 = v9;
  if (*(v7 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKRecordZoneID_anonymousCKUserID))
  {
    v43 = sub_2146D95B8();
    v59 = v14;
  }

  else
  {
    v43 = 0;
    v59 = 0;
  }

  v58 = *(v7 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKRecordZoneID_databaseScope);
  sub_2144F57F0(&v69);
  v16 = v69;
  v15 = v70;
  v17 = v72;
  v46 = v71;
  v18 = v73;
  sub_2144F5948(&v98);
  v67 = v98;
  v107 = v99;
  v47 = v100;
  v66 = v101;
  v68 = v102;
  sub_2144F5AA0(v96);
  v63 = v96[0];
  v64 = v96[1];
  v48 = v96[2];
  v65 = v96[3];
  v55 = v97;
  sub_2144F5BB4(v94);
  v56 = v94[0];
  v60 = v94[2];
  v50 = v94[3];
  v51 = v94[1];
  v57 = v95;
  v98 = v4;
  v99 = v6;
  v54 = v18;
  LOBYTE(v96[0]) = v18;
  v69 = 0xD00000000000001BLL;
  v70 = 0x800000021478DA70;
  v71 = 0xD00000000000001CLL;
  v72 = 0x800000021478A360;

  v19 = v52;
  v53 = v16;
  v20 = v16(&v98, v96, &v69);
  if (v19)
  {
    goto LABEL_8;
  }

  v40 = v4;
  v41 = v6;
  if ((v20 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v24 = 0xD00000000000001BLL;
    v24[1] = 0x800000021478DA70;
    v24[2] = 0xD00000000000001CLL;
    v24[3] = 0x800000021478A360;
    swift_willThrow();

LABEL_8:

    v25 = v56;
    v21 = v15;
    v23 = v50;

    v26 = v46;
    v27 = v47;
    v28 = v57;
    v29 = v51;
    v30 = v55;
    v31 = v48;
    v32 = v66;
LABEL_9:
    v69 = v53;
    v70 = v21;
    v71 = v26;
    v72 = v17;
    v73 = v54;
    *v74 = v106[0];
    *&v74[3] = *(v106 + 3);
    v75 = v67;
    v76 = v107;
    v77 = v27;
    v78 = v32;
    v79 = v68;
    *v80 = *v105;
    *&v80[3] = *&v105[3];
    v81 = v63;
    v82 = v64;
    v83 = v31;
    v84 = v65;
    v85 = v30;
    *&v86[3] = *&v104[3];
    *v86 = *v104;
    v87 = v25;
    v88 = v29;
    v89 = v60;
    v90 = v23;
    v91 = v28;
    *v92 = v103[0];
    *&v92[3] = *(v103 + 3);
    v93 = v58;
    return sub_2142EAEA4(&v69);
  }

  v21 = v15;

  v98 = v45;
  v99 = v62;
  LOBYTE(v96[0]) = v68;
  v69 = 0xD000000000000019;
  v70 = 0x800000021478DA90;
  v71 = 0xD00000000000001CLL;
  v72 = 0x800000021478A360;

  v22 = v67(&v98, v96, &v69);
  v23 = v50;
  v29 = v51;
  if ((v22 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v35 = 0xD000000000000019;
    v35[1] = 0x800000021478DA90;
    v35[2] = 0xD00000000000001CLL;
    v35[3] = 0x800000021478A360;
    swift_willThrow();

    v25 = v56;
    v30 = v55;
    v32 = v66;

    v26 = v40;
    v17 = v41;
    v28 = v57;
    v27 = v47;
    v31 = v48;
    goto LABEL_9;
  }

  v98 = v44;
  v99 = v61;
  v30 = v55;
  LOBYTE(v96[0]) = v55;
  v69 = 0xD00000000000001ALL;
  v70 = 0x800000021478DAB0;
  v71 = 0xD00000000000001CLL;
  v72 = 0x800000021478A360;

  v34 = v63(&v98, v96, &v69);
  if ((v34 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v37 = 0xD00000000000001ALL;
    v37[1] = 0x800000021478DAB0;
    v37[2] = 0xD00000000000001CLL;
    v37[3] = 0x800000021478A360;
    swift_willThrow();

    v25 = v56;

    v26 = v40;
    v17 = v41;
    v27 = v45;
    v32 = v62;
    v28 = v57;
    v31 = v48;
    goto LABEL_9;
  }

  v98 = v43;
  v99 = v59;
  v28 = v57;
  LOBYTE(v96[0]) = v57;
  v69 = 0xD000000000000022;
  v70 = 0x800000021478DAD0;
  v71 = 0xD00000000000001CLL;
  v72 = 0x800000021478A360;

  sub_213FDC9D0(v60, v50);
  v36 = v56(&v98, v96, &v69);
  v25 = v56;
  if ((v36 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v39 = 0xD000000000000022;
    v39[1] = 0x800000021478DAD0;
    v39[2] = 0xD00000000000001CLL;
    v39[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6D0(v60, v50);
    v26 = v40;
    v17 = v41;
    v31 = v44;
    v27 = v45;
    v32 = v62;
    v65 = v61;
    goto LABEL_9;
  }

  sub_213FDC6D0(v60, v50);

  result = sub_213FDC6D0(v60, v50);
  *a2 = v53;
  *(a2 + 8) = v15;
  *(a2 + 16) = v40;
  *(a2 + 24) = v41;
  *(a2 + 32) = v54;
  *(a2 + 33) = v106[0];
  *(a2 + 36) = *(v106 + 3);
  v38 = v107;
  *(a2 + 40) = v67;
  *(a2 + 48) = v38;
  *(a2 + 56) = v45;
  *(a2 + 64) = v62;
  *(a2 + 72) = v68;
  *(a2 + 73) = *v105;
  *(a2 + 76) = *&v105[3];
  *(a2 + 80) = v63;
  *(a2 + 88) = v64;
  *(a2 + 96) = v44;
  *(a2 + 104) = v61;
  *(a2 + 112) = v55;
  *(a2 + 116) = *&v104[3];
  *(a2 + 113) = *v104;
  *(a2 + 120) = v56;
  *(a2 + 128) = v51;
  *(a2 + 136) = v43;
  *(a2 + 144) = v59;
  *(a2 + 152) = v57;
  *(a2 + 156) = *(v103 + 3);
  *(a2 + 153) = v103[0];
  *(a2 + 160) = v58;
  return result;
}

void sub_21463178C(char *a1@<X0>, uint64_t a2@<X8>)
{
  sub_214638330(v87);
  v5 = *&a1[OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_userRecordID];
  if (v5)
  {
    sub_214630EF0(v5, &v59);
    if (v2)
    {

      return;
    }

    v56 = *&v63[64];
    v57 = *&v63[80];
    v58 = *&v63[96];
    v52 = *v63;
    v53 = *&v63[16];
    v54 = *&v63[32];
    v55 = *&v63[48];
    v48 = v59;
    v49 = v60;
    v50 = v61;
    v51 = v62;
    nullsub_1(&v48);
    v84 = v56;
    v85 = v57;
    v86 = v58;
    v80 = v52;
    v81 = v53;
    v82 = v54;
    v83 = v55;
    v76 = v48;
    v77 = v49;
    v7 = v50;
    v6 = v51;
  }

  else
  {
    v84 = v87[8];
    v85 = v87[9];
    v86 = v88;
    v80 = v87[4];
    v81 = v87[5];
    v82 = v87[6];
    v83 = v87[7];
    v76 = v87[0];
    v77 = v87[1];
    v7 = v87[2];
    v6 = v87[3];
  }

  v78 = v7;
  v79 = v6;
  if (*&a1[OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_emailAddress])
  {
    v9 = sub_2146D95B8();
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v47 = v8;
  v10 = *&a1[OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_phoneNumber];
  v35 = a2;
  if (v10)
  {
    v10 = sub_2146D95B8();
  }

  else
  {
    v11 = 0;
  }

  v36 = v10;
  v42 = a1[OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_shouldReportMissingIdentity];
  v12 = *&a1[OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_encryptedPersonalInfo];
  v43 = v11;
  sub_213FB2E54(&v76, &v59, &qword_27C917500, &qword_2146F42A8);
  if (v12)
  {
    v13 = v12;
    v12 = sub_2146D8A58();
    v15 = v14;
  }

  else
  {
    v15 = 0xF000000000000000;
  }

  v40 = v15;
  v41 = v12;
  sub_213FDCA18(v12, v15);
  sub_2144F5508(&v59);
  v16 = v59;
  v17 = *(&v60 + 1);
  v18 = v60;
  v19 = v61;
  sub_2144F553C(&v48);
  *&v73[119] = v83;
  *&v73[135] = v84;
  *&v73[151] = v85;
  *&v73[55] = v79;
  *&v73[71] = v80;
  *&v73[87] = v81;
  *&v73[103] = v82;
  *&v73[7] = v76;
  *&v73[23] = v77;
  v37 = *(&v48 + 1);
  v46 = v49;
  v44 = v48;
  v45 = *(&v49 + 1);
  v38 = v50;
  v39 = v19;
  *&v73[167] = v86;
  *&v73[39] = v78;
  *&v48 = v9;
  *(&v48 + 1) = v47;
  v72 = v19;
  *&v59 = 0xD00000000000002BLL;
  *(&v59 + 1) = 0x800000021478DA10;
  *&v60 = 0xD00000000000001CLL;
  *(&v60 + 1) = 0x800000021478A360;
  v89 = 0x800000021478A360;

  sub_213FDC9D0(v18, v17);
  v20 = (v16)(&v48, &v72, &v59);
  if (v2)
  {

    sub_213FB2DF4(&v76, &qword_27C917500, &qword_2146F42A8);
LABEL_20:

    v28 = v40;
    v22 = *(&v16 + 1);
    sub_213FDC6BC(v41, v40);

    sub_213FDC6D0(v18, v17);
    v24 = v38;
    v23 = v37;
LABEL_21:
    *&v59 = v16;
    *(&v59 + 1) = v22;
    *&v60 = v18;
    *(&v60 + 1) = v17;
    LOBYTE(v61) = v39;
    *(&v61 + 1) = *v75;
    DWORD1(v61) = *&v75[3];
    *(&v61 + 1) = v44;
    *&v62 = v23;
    *(&v62 + 1) = v46;
    *v63 = v45;
    v63[8] = v24;
    *&v63[41] = *&v73[32];
    *&v63[25] = *&v73[16];
    *&v63[9] = *v73;
    v64 = *&v73[96];
    *&v63[89] = *&v73[80];
    *&v63[73] = *&v73[64];
    *&v63[57] = *&v73[48];
    *&v67[15] = *&v73[159];
    *v67 = *&v73[144];
    v66 = *&v73[128];
    v65 = *&v73[112];
    v68 = v42;
    *v69 = v74[0];
    *&v69[3] = *(v74 + 3);
    v70 = *(&v16 + 1);
    v71 = v28;
    sub_2142EADA0(&v59);
    return;
  }

  if ((v20 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v26 = 0xD00000000000002BLL;
    v26[1] = 0x800000021478DA10;
    v27 = v89;
    v26[2] = 0xD00000000000001CLL;
    v26[3] = v27;
    swift_willThrow();

    sub_213FB2DF4(&v76, &qword_27C917500, &qword_2146F42A8);
    goto LABEL_20;
  }

  sub_213FDC6D0(v18, v17);
  v21 = v89;

  v22 = *(&v16 + 1);

  sub_213FDC6D0(v18, v17);
  v23 = v37;
  *&v48 = v36;
  *(&v48 + 1) = v43;
  v24 = v38;
  v72 = v38;
  *&v59 = 0xD00000000000002ALL;
  *(&v59 + 1) = 0x800000021478DA40;
  *&v60 = 0xD00000000000001CLL;
  *(&v60 + 1) = v21;

  sub_213FDC9D0(v46, v45);
  v25 = v44(&v48, &v72, &v59);
  if ((v25 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v34 = 0xD00000000000002ALL;
    v34[1] = 0x800000021478DA40;
    v34[2] = 0xD00000000000001CLL;
    v34[3] = v89;
    swift_willThrow();

    sub_213FB2DF4(&v76, &qword_27C917500, &qword_2146F42A8);

    v28 = v40;
    sub_213FDC6BC(v41, v40);

    sub_213FDC6D0(v46, v45);
    v18 = v9;
    v17 = v47;
    goto LABEL_21;
  }

  sub_213FDC6D0(v46, v45);

  sub_213FB2DF4(&v76, &qword_27C917500, &qword_2146F42A8);

  sub_213FDC6BC(v41, v40);

  sub_213FDC6D0(v46, v45);
  v29 = *&v73[96];
  *(v35 + 185) = *&v73[112];
  v30 = *&v73[144];
  *(v35 + 201) = *&v73[128];
  *(v35 + 217) = v30;
  *(v35 + 232) = *&v73[159];
  v31 = *&v73[32];
  *(v35 + 121) = *&v73[48];
  v32 = *&v73[80];
  *(v35 + 137) = *&v73[64];
  *(v35 + 153) = v32;
  *(v35 + 169) = v29;
  v33 = *&v73[16];
  *(v35 + 73) = *v73;
  *(v35 + 89) = v33;
  *v35 = v16;
  *(v35 + 16) = v9;
  *(v35 + 24) = v47;
  *(v35 + 32) = v39;
  *(v35 + 40) = v44;
  *(v35 + 48) = v37;
  *(v35 + 56) = v36;
  *(v35 + 64) = v43;
  *(v35 + 72) = v38;
  *(v35 + 105) = v31;
  *(v35 + 248) = v42;
  *(v35 + 256) = v41;
  *(v35 + 264) = v40;
}

id sub_214631EAC()
{
  if (!v0[8])
  {
    goto LABEL_8;
  }

  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[12];
  v4 = v0[13];
  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[20];
  v8 = v0[7];

  v9 = sub_2146D9588();

  if (!v4)
  {
    goto LABEL_8;
  }

  v10 = sub_2146D9588();

  if (v5)
  {
    if (v5 == 1)
    {
      goto LABEL_8;
    }

    v11 = sub_2146D9588();
    sub_213FDC6D0(v6, v5);
    v5 = v11;
  }

  v12 = type metadata accessor for _BlastDoorCKRecordZoneID();
  v13 = objc_allocWithZone(v12);
  v14 = OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKRecordZoneID_anonymousCKUserID;
  *&v13[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKRecordZoneID_anonymousCKUserID] = 0;
  v15 = &v13[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKRecordZoneID_ZoneNameKey];
  *v15 = 0x656D614E656E6F5ALL;
  *(v15 + 1) = 0xE800000000000000;
  v16 = &v13[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKRecordZoneID_OwnerNameKey];
  *v16 = 0x6D614E72656E776FLL;
  *(v16 + 1) = 0xE900000000000065;
  v17 = &v13[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKRecordZoneID_AnonymousCKUserIDKey];
  *v17 = 0xD000000000000011;
  *(v17 + 1) = 0x80000002147944C0;
  v18 = &v13[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKRecordZoneID_DatabaseScopeKey];
  *v18 = 0xD000000000000010;
  *(v18 + 1) = 0x80000002147A5C30;
  *&v13[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKRecordZoneID_zoneName] = v9;
  *&v13[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKRecordZoneID_ownerName] = v10;
  *&v13[v14] = v5;
  *&v13[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKRecordZoneID_databaseScope] = v7;
  v28.receiver = v13;
  v28.super_class = v12;
  v19 = objc_msgSendSuper2(&v28, sel_init);
  if (v1)
  {
    v20 = v19;

    v21 = sub_2146D9588();

    v22 = type metadata accessor for _BlastDoorCKRecordID();
    v23 = objc_allocWithZone(v22);
    v24 = &v23[OBJC_IVAR____TtC9BlastDoor20_BlastDoorCKRecordID_RecordNameKey];
    *v24 = 0x614E64726F636552;
    *(v24 + 1) = 0xEA0000000000656DLL;
    v25 = &v23[OBJC_IVAR____TtC9BlastDoor20_BlastDoorCKRecordID_ZoneIDKey];
    *v25 = 0x4449656E6F5ALL;
    *(v25 + 1) = 0xE600000000000000;
    *&v23[OBJC_IVAR____TtC9BlastDoor20_BlastDoorCKRecordID_recordName] = v21;
    *&v23[OBJC_IVAR____TtC9BlastDoor20_BlastDoorCKRecordID_zoneID] = v20;
    v27.receiver = v23;
    v27.super_class = v22;
    return objc_msgSendSuper2(&v27, sel_init);
  }

LABEL_8:
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214632150()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 224);
  v37[8] = *(v0 + 208);
  v37[9] = v5;
  v38 = *(v0 + 240);
  v6 = *(v0 + 160);
  v37[4] = *(v0 + 144);
  v37[5] = v6;
  v7 = *(v0 + 192);
  v37[6] = *(v0 + 176);
  v37[7] = v7;
  v8 = *(v0 + 96);
  v37[0] = *(v0 + 80);
  v37[1] = v8;
  v9 = *(v0 + 128);
  v37[2] = *(v0 + 112);
  v37[3] = v9;
  v10 = *(v0 + 248);
  v11 = *(v0 + 256);
  v12 = *(v0 + 264);
  if (get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(v37) == 1)
  {
    v13 = 0;
    if (!v1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = sub_214631EAC();
    if (!v1)
    {
LABEL_3:
      if (!v3)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }
  }

  if (v1 == 1)
  {
    goto LABEL_14;
  }

  v14 = sub_2146D9588();
  sub_213FDC6D0(v2, v1);
  v1 = v14;
  if (v3)
  {
LABEL_8:
    if (v3 != 1)
    {

      v15 = sub_2146D9588();
      sub_213FDC6D0(v4, v3);
      v3 = v15;
      goto LABEL_10;
    }

LABEL_14:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

LABEL_10:
  if (v12 >> 60 == 15)
  {
    v16 = 0;
  }

  else
  {
    v16 = sub_2146D8A38();
  }

  v17 = type metadata accessor for _BlastDoorCKUserIdentityLookupInfo();
  v18 = objc_allocWithZone(v17);
  v19 = OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_emailAddress;
  *&v18[OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_emailAddress] = 0;
  v20 = OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_phoneNumber;
  *&v18[OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_phoneNumber] = 0;
  v21 = OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_userRecordID;
  *&v18[OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_userRecordID] = 0;
  v22 = OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_encryptedPersonalInfo;
  *&v18[OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_encryptedPersonalInfo] = 0;
  v23 = &v18[OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_EmailAddressKey];
  strcpy(&v18[OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_EmailAddressKey], "EmailAddress");
  v23[13] = 0;
  *(v23 + 7) = -5120;
  v24 = &v18[OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_PhoneNumberKey];
  *v24 = 0x6D754E656E6F6850;
  *(v24 + 1) = 0xEB00000000726562;
  v25 = &v18[OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_RecordIDKey];
  *v25 = 0x444964726F636552;
  *(v25 + 1) = 0xE800000000000000;
  v26 = &v18[OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_ReportsMissingKey];
  strcpy(&v18[OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_ReportsMissingKey], "ReportsMissing");
  v26[15] = -18;
  v27 = &v18[OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_EncryptedPersonalInfoKey];
  *v27 = 0xD000000000000015;
  *(v27 + 1) = 0x80000002147A5BE0;
  *&v18[v19] = v1;
  *&v18[v20] = v3;
  v28 = *&v18[v21];
  *&v18[v21] = v13;
  v29 = v1;
  v30 = v3;
  v31 = v13;

  v18[OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_shouldReportMissingIdentity] = v10;
  v32 = *&v18[v22];
  *&v18[v22] = v16;
  v33 = v16;

  v36.receiver = v18;
  v36.super_class = v17;
  v34 = objc_msgSendSuper2(&v36, sel_init);

  return v34;
}

id sub_2146324B0(void *a1)
{
  v2 = v1;
  v131 = OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_inviterID;
  *&v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_inviterID] = 0;
  v137 = OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_protectionInfo;
  *&v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_protectionInfo] = 0;
  v139 = OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_encryptedPersonalInfo;
  *&v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_encryptedPersonalInfo] = 0;
  v144 = OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_invitationToken;
  *&v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_invitationToken] = 0;
  v145 = OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_protectionInfoPublicKey;
  *&v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_protectionInfoPublicKey] = 0;
  v4 = &v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_ParticipantIDKey];
  strcpy(&v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_ParticipantIDKey], "ParticipantID");
  *(v4 + 7) = -4864;
  v129 = v4;
  v5 = &v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_InviterIDKey];
  *v5 = 0x4972657469766E49;
  *(v5 + 1) = 0xE900000000000044;
  v130 = v5;
  v6 = &v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_UserIdentityKey];
  strcpy(&v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_UserIdentityKey], "UserIdentity");
  v6[13] = 0;
  *(v6 + 7) = -5120;
  v7 = &v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_IsCurrentUserKey];
  strcpy(&v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_IsCurrentUserKey], "IsCurrentUser");
  *(v7 + 7) = -4864;
  v132 = v7;
  v8 = &v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_IsOrgAdminUserKey];
  strcpy(&v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_IsOrgAdminUserKey], "IsOrgAdminUser");
  v8[15] = -18;
  v133 = v8;
  v9 = &v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_AcceptanceStatusKey];
  *v9 = 0xD000000000000010;
  *(v9 + 1) = 0x80000002147A5D50;
  v150 = v9;
  v10 = &v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_RoleKey];
  *v10 = 1701869908;
  *(v10 + 1) = 0xE400000000000000;
  v11 = &v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_PermissionKey];
  *v11 = 0x697373696D726550;
  *(v11 + 1) = 0xEA00000000006E6FLL;
  v12 = &v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_OriginalParticipantRoleKey];
  *v12 = 0xD000000000000017;
  *(v12 + 1) = 0x80000002147A5D70;
  v147 = v12;
  v148 = v11;
  v13 = &v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_OriginalAcceptanceStatusKey];
  *v13 = 0xD000000000000018;
  *(v13 + 1) = 0x80000002147A5D90;
  v146 = v13;
  v14 = &v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_OriginalPermissionKey];
  *v14 = 0xD000000000000012;
  *(v14 + 1) = 0x80000002147A5DB0;
  v15 = &v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_ProtectionInfoKey];
  strcpy(&v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_ProtectionInfoKey], "ProtectionInfo");
  v15[15] = -18;
  v134 = v15;
  v16 = &v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_EncryptedPersonalInfoKey];
  *v16 = 0xD000000000000015;
  *(v16 + 1) = 0x80000002147A5BE0;
  v135 = v16;
  v17 = &v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_CreatedInProcessKey];
  *v17 = 0xD000000000000010;
  *(v17 + 1) = 0x80000002147A5DD0;
  v136 = v17;
  v18 = &v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_AcceptedInProcessKey];
  *v18 = 0xD000000000000011;
  *(v18 + 1) = 0x80000002147A5DF0;
  v138 = v18;
  v19 = &v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_DeviceToDeviceShareInvitationTokenKey];
  *v19 = 0x6974617469766E49;
  *(v19 + 1) = 0xEF6E656B6F546E6FLL;
  v20 = &v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_ProtectionInfoPublicIdentityKey];
  *v20 = 0xD000000000000017;
  *(v20 + 1) = 0x80000002147A5E10;
  v140 = v19;
  v141 = v20;
  v21 = &v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_WantsNewInvitationTokenKey];
  *v21 = 0xD000000000000017;
  *(v21 + 1) = 0x80000002147943A0;
  v142 = v21;
  v22 = &v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_MutableInvitationTokenStatus];
  *v22 = 0xD00000000000001CLL;
  *(v22 + 1) = 0x80000002147A5E30;
  v23 = &v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_IsAnonymousInvitedParticipant];
  *v23 = 0xD00000000000001DLL;
  *(v23 + 1) = 0x80000002147943C0;
  v143 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913160, &unk_21473D7C0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2146E6910;
  *(v24 + 32) = sub_21404A8B8(0, &unk_27C9174A0, 0x277CCACA8);
  *(v24 + 40) = sub_21404A8B8(0, &unk_27C9174D0, 0x277CCAB68);
  sub_2146D9D08();

  if (v155)
  {
    if (swift_dynamicCast())
    {
      type metadata accessor for _BlastDoorCKUserIdentity();
      v25 = *v6;
      v26 = *(v6 + 1);

      v27 = sub_2146D9CF8();

      if (v27)
      {
        v127 = v153;
        v128 = v22;
        v28 = *v10;
        v29 = *(v10 + 1);

        v30 = sub_2146D9588();

        v31 = [a1 decodeInt64ForKey_];

        if (v31 < 5 && ((0x1Bu >> v31) & 1) != 0)
        {
          v32 = *v150;
          v33 = *(v150 + 1);

          v34 = sub_2146D9588();

          v35 = [a1 &selRef:v34 decodeObjectOfClasses:? forKey:? + 7];

          if (v35 < 4)
          {
            v126 = v35;
            v37 = *v148;
            v36 = *(v148 + 1);

            v38 = sub_2146D9588();

            v39 = [a1 decodeInt64ForKey_];

            if (v39 < 4)
            {
              v125 = v39;
              v40 = *v147;
              v41 = *(v147 + 1);

              v42 = sub_2146D9588();

              v43 = [a1 decodeInt64ForKey_];

              if (v43 < 5 && ((0x1Bu >> v43) & 1) != 0)
              {
                v44 = *(v146 + 1);
                v123 = *v146;

                v120 = sub_2146D9588();

                v124 = [a1 decodeInt64ForKey_];

                if (v124 < 4)
                {
                  v45 = *(v14 + 1);
                  v121 = *v14;

                  v122 = sub_2146D9588();

                  v46 = [a1 decodeInt64ForKey_];

                  if (v46 < 4)
                  {
                    v47 = 0x302000100uLL >> (8 * v43);
                    *&v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_participantID] = v153;
                    v48 = v46;
                    v49 = *v130;
                    v50 = *(v130 + 1);
                    v151 = v127;

                    v51 = sub_2146D9CF8();

                    v52 = *&v2[v131];
                    *&v2[v131] = v51;

                    *&v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_userIdentity] = v27;
                    v53 = *v132;
                    v54 = *(v132 + 1);
                    v149 = v27;

                    v55 = sub_2146D9588();

                    LOBYTE(v53) = [a1 decodeBoolForKey_];

                    v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_isCurrentUser] = v53;
                    v56 = *v133;
                    v57 = *(v133 + 1);

                    v58 = sub_2146D9588();

                    LOBYTE(v57) = [a1 decodeBoolForKey_];

                    v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_isOrgAdminUser] = v57;
                    v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_role] = 0x302000100uLL >> (8 * v31);
                    v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_acceptanceStatus] = v126;
                    v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_permission] = v125;
                    v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_originalParticipantRole] = v47;
                    v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_originalAcceptanceStatus] = v124;
                    v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_originalPermission] = v48;
                    sub_21404A8B8(0, &qword_27C9041F0, 0x277CBEA90);
                    v59 = *v134;
                    v60 = *(v134 + 1);

                    v61 = sub_2146D9CF8();

                    v62 = *&v2[v137];
                    *&v2[v137] = v61;

                    v63 = *v135;
                    v64 = *(v135 + 1);

                    v65 = sub_2146D9CF8();

                    v66 = *&v2[v139];
                    *&v2[v139] = v65;

                    v67 = *v136;
                    v68 = *(v136 + 1);

                    v69 = sub_2146D9588();

                    LOBYTE(v68) = [a1 decodeBoolForKey_];

                    v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_createdInProcess] = v68;
                    v70 = *v138;
                    v71 = *(v138 + 1);

                    v72 = sub_2146D9588();

                    LOBYTE(v71) = [a1 decodeBoolForKey_];

                    v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_acceptedInProcess] = v71;
                    sub_21404A8B8(0, &unk_27C9131C0, off_278175128);
                    v73 = *v140;
                    v74 = *(v140 + 1);

                    v75 = sub_2146D9CF8();

                    v76 = *&v2[v144];
                    *&v2[v144] = v75;

                    v77 = *v141;
                    v78 = *(v141 + 1);

                    v79 = sub_2146D9CF8();

                    v80 = *&v2[v145];
                    *&v2[v145] = v79;

                    v81 = *v142;
                    v82 = *(v142 + 1);

                    v83 = sub_2146D9588();

                    LOBYTE(v82) = [a1 decodeBoolForKey_];

                    v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_wantsNewInvitationToken] = v82;
                    v84 = *v143;
                    v85 = *(v143 + 1);

                    v86 = sub_2146D9588();

                    LOBYTE(v85) = [a1 decodeBoolForKey_];

                    v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_isAnonymousInvitedParticipant] = v85;
                    v87 = OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_invitationTokenStatus;
                    v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_invitationTokenStatus] = 1;
                    v88 = *v128;
                    v89 = *(v128 + 1);

                    v90 = sub_2146D9588();

                    LODWORD(v89) = [a1 containsValueForKey_];

                    if (v89)
                    {
                      v91 = *v128;
                      v92 = *(v128 + 1);

                      v93 = sub_2146D9588();

                      v94 = [a1 decodeInt64ForKey_];

                      if (v94 <= 3)
                      {
                        v2[v87] = v94;
                      }
                    }

                    else
                    {
                    }

                    v152.receiver = v2;
                    v152.super_class = type metadata accessor for _BlastDoorCKShareParticipant();
                    v119 = objc_msgSendSuper2(&v152, sel_init);

                    return v119;
                  }
                }
              }
            }
          }
        }

        v22 = v128;
      }

      else
      {
      }
    }
  }

  else
  {
    sub_213FB2DF4(v154, &qword_27C913170, &qword_2146EAB20);
  }

  if (qword_280B35360 != -1)
  {
    swift_once();
  }

  v95 = qword_280B35410;
  v96 = sub_2146D9BC8();
  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    *v97 = 0;
    _os_log_impl(&dword_213FAF000, v95, v96, "Unable to decode CKShareParticipant", v97, 2u);
    MEMORY[0x216056AC0](v97, -1, -1);
  }

  v98 = *(v129 + 1);

  v99 = *(v130 + 1);

  v100 = *(v6 + 1);

  v101 = *(v132 + 1);

  v102 = *(v133 + 1);

  v103 = *(v150 + 1);

  v104 = *(v10 + 1);

  v105 = *(v148 + 1);

  v106 = *(v147 + 1);

  v107 = *(v146 + 1);

  v108 = *(v14 + 1);

  v109 = *(v134 + 1);

  v110 = *(v135 + 1);

  v111 = *(v136 + 1);

  v112 = *(v138 + 1);

  v113 = *(v140 + 1);

  v114 = *(v141 + 1);

  v115 = *(v142 + 1);

  v116 = *(v22 + 1);

  v117 = *(v143 + 1);

  type metadata accessor for _BlastDoorCKShareParticipant();
  swift_deallocPartialClassInstance();
  return 0;
}

unint64_t sub_214633270@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x302040100uLL >> (8 * result);
  if (result >= 5)
  {
    LOBYTE(v2) = 4;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_214633298@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 4;
  if (result < 4)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

void sub_2146332D4(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_ParticipantIDKey);
  v4 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_ParticipantIDKey + 8);
  v5 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_participantID);
  v6 = sub_2146D9588();
  [a1 encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_InviterIDKey);
  v8 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_InviterIDKey + 8);
  v9 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_inviterID);
  v10 = sub_2146D9588();
  [a1 encodeObject:v9 forKey:v10];

  v11 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_UserIdentityKey);
  v12 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_UserIdentityKey + 8);
  v13 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_userIdentity);
  v14 = sub_2146D9588();
  [a1 encodeObject:v13 forKey:v14];

  v15 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_isCurrentUser);
  v16 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_IsCurrentUserKey);
  v17 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_IsCurrentUserKey + 8);
  v18 = sub_2146D9588();
  [a1 encodeBool:v15 forKey:v18];

  v19 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_isOrgAdminUser);
  v20 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_IsOrgAdminUserKey);
  v21 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_IsOrgAdminUserKey + 8);
  v22 = sub_2146D9588();
  [a1 encodeBool:v19 forKey:v22];

  v23 = qword_214771328[*(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_role)];
  v24 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_RoleKey);
  v25 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_RoleKey + 8);
  v26 = sub_2146D9588();
  [a1 encodeInt64:v23 forKey:v26];

  v27 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_acceptanceStatus);
  v28 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_AcceptanceStatusKey);
  v29 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_AcceptanceStatusKey + 8);
  v30 = sub_2146D9588();
  [a1 encodeInt64:v27 forKey:v30];

  v31 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_permission);
  v32 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_PermissionKey);
  v33 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_PermissionKey + 8);
  v34 = sub_2146D9588();
  [a1 encodeInt64:v31 forKey:v34];

  v35 = qword_214771328[*(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_originalParticipantRole)];
  v36 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_OriginalParticipantRoleKey);
  v37 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_OriginalParticipantRoleKey + 8);
  v38 = sub_2146D9588();
  [a1 encodeInt64:v35 forKey:v38];

  v39 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_originalAcceptanceStatus);
  v40 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_OriginalAcceptanceStatusKey);
  v41 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_OriginalAcceptanceStatusKey + 8);
  v42 = sub_2146D9588();
  [a1 encodeInt64:v39 forKey:v42];

  v43 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_originalPermission);
  v44 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_OriginalPermissionKey);
  v45 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_OriginalPermissionKey + 8);
  v46 = sub_2146D9588();
  [a1 encodeInt64:v43 forKey:v46];

  v47 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_ProtectionInfoKey);
  v48 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_ProtectionInfoKey + 8);
  v49 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_protectionInfo);
  v50 = sub_2146D9588();
  [a1 encodeObject:v49 forKey:v50];

  v51 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_EncryptedPersonalInfoKey);
  v52 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_EncryptedPersonalInfoKey + 8);
  v53 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_encryptedPersonalInfo);
  v54 = sub_2146D9588();
  [a1 encodeObject:v53 forKey:v54];

  v55 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_createdInProcess);
  v56 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_CreatedInProcessKey);
  v57 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_CreatedInProcessKey + 8);
  v58 = sub_2146D9588();
  [a1 encodeBool:v55 forKey:v58];

  v59 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_acceptedInProcess);
  v60 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_AcceptedInProcessKey);
  v61 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_AcceptedInProcessKey + 8);
  v62 = sub_2146D9588();
  [a1 encodeBool:v59 forKey:v62];

  v63 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_DeviceToDeviceShareInvitationTokenKey);
  v64 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_DeviceToDeviceShareInvitationTokenKey + 8);
  v65 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_invitationToken);
  v66 = sub_2146D9588();
  [a1 encodeObject:v65 forKey:v66];

  v67 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_ProtectionInfoPublicIdentityKey);
  v68 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_ProtectionInfoPublicIdentityKey + 8);
  v69 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_protectionInfoPublicKey);
  v70 = sub_2146D9588();
  [a1 encodeObject:v69 forKey:v70];

  v71 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_wantsNewInvitationToken);
  v72 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_WantsNewInvitationTokenKey);
  v73 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_WantsNewInvitationTokenKey + 8);
  v74 = sub_2146D9588();
  [a1 encodeBool:v71 forKey:v74];

  v75 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_isAnonymousInvitedParticipant);
  v76 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_IsAnonymousInvitedParticipant);
  v77 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_IsAnonymousInvitedParticipant + 8);
  v78 = sub_2146D9588();
  [a1 encodeBool:v75 forKey:v78];

  v79 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_invitationTokenStatus);
  v80 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_MutableInvitationTokenStatus);
  v81 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_MutableInvitationTokenStatus + 8);
  v82 = sub_2146D9588();
  [a1 encodeInt64:v79 forKey:v82];
}

uint64_t sub_214633900()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  v3 = sub_2146D9588();
  type metadata accessor for _BlastDoorCKShareParticipant();
  [v2 setClassName:v3 forClass:swift_getObjCClassFromMetadata()];

  v4 = sub_2146D9588();
  sub_21404A8B8(0, &unk_27C9131C0, off_278175128);
  [v2 setClassName:v4 forClass:swift_getObjCClassFromMetadata()];

  v5 = sub_2146D9588();
  type metadata accessor for _BlastDoorCKUserIdentity();
  [v2 setClassName:v5 forClass:swift_getObjCClassFromMetadata()];

  v6 = sub_2146D9588();
  type metadata accessor for _BlastDoorCKRecordID();
  [v2 setClassName:v6 forClass:swift_getObjCClassFromMetadata()];

  v7 = sub_2146D9588();
  type metadata accessor for _BlastDoorCKRecordZoneID();
  [v2 setClassName:v7 forClass:swift_getObjCClassFromMetadata()];

  v8 = sub_2146D9588();
  type metadata accessor for _BlastDoorCKUserIdentityLookupInfo();
  [v2 setClassName:v8 forClass:swift_getObjCClassFromMetadata()];

  [v2 encodeObject:v1 forKey:*MEMORY[0x277CCA308]];
  v9 = [v2 encodedData];
  v10 = sub_2146D8A58();

  return v10;
}

uint64_t sub_214633F50()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x2160558A0](qword_214771328[v1]);
  return sub_2146DA9B8();
}

uint64_t sub_214633FD8()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x2160558A0](qword_214771328[v1]);
  return sub_2146DA9B8();
}

uint64_t sub_2146340F4()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x2160558A0](v1);
  return sub_2146DA9B8();
}

uint64_t sub_21463413C()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x2160558A0](v1);
  return sub_2146DA9B8();
}

void sub_214634280(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_UserRecordIDKey);
  v4 = *(v1 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_UserRecordIDKey + 8);
  v5 = *(v1 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_userRecordID);
  v6 = sub_2146D9588();
  [a1 encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_NameComponentsKey);
  v8 = *(v1 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_NameComponentsKey + 8);
  v9 = *(v1 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_nameComponents);
  v10 = sub_2146D9588();
  [a1 encodeObject:v9 forKey:v10];

  v11 = *(v1 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_LookupInfoKey);
  v12 = *(v1 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_LookupInfoKey + 8);
  v13 = *(v1 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_lookupInfo);
  v14 = sub_2146D9588();
  [a1 encodeObject:v13 forKey:v14];

  v15 = *(v1 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_ContactIdentifiersKey);
  v16 = *(v1 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_ContactIdentifiersKey + 8);
  v17 = *(v1 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_contactIdentifiers);
  v18 = sub_2146D9588();
  [a1 encodeObject:v17 forKey:v18];

  v19 = *(v1 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_ProtectionDataKey);
  v20 = *(v1 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_ProtectionDataKey + 8);
  v21 = *(v1 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_publicSharingKey);
  v22 = sub_2146D9588();
  [a1 encodeObject:v21 forKey:v22];

  v23 = *(v1 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_OONProtectionDataKey);
  v24 = *(v1 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_OONProtectionDataKey + 8);
  v25 = *(v1 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_outOfNetworkPrivateKey);
  v26 = sub_2146D9588();
  [a1 encodeObject:v25 forKey:v26];

  v27 = *(v1 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_isCached);
  v28 = *(v1 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_IsCachedKey);
  v29 = *(v1 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_IsCachedKey + 8);
  v30 = sub_2146D9588();
  [a1 encodeBool:v27 forKey:v30];

  v31 = *(v1 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_hasICloudAccount);
  v32 = *(v1 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_HasICloudAccountKey);
  v33 = *(v1 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_HasICloudAccountKey + 8);
  v34 = sub_2146D9588();
  [a1 encodeBool:v31 forKey:v34];

  v35 = *(v1 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_EncryptedPersonalInfoKey);
  v36 = *(v1 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_EncryptedPersonalInfoKey + 8);
  v37 = *(v1 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_encryptedPersonalInfo);
  v38 = sub_2146D9588();
  [a1 encodeObject:v37 forKey:v38];

  v39 = *(v1 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_publicKeyVersion);
  v40 = *(v1 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_PublicKeyVersionKey);
  v41 = *(v1 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_PublicKeyVersionKey + 8);
  v42 = sub_2146D9588();
  [a1 encodeInt64:v39 forKey:v42];
}

id sub_2146347E4(void *a1)
{
  v2 = v1;
  v4 = &v2[OBJC_IVAR____TtC9BlastDoor20_BlastDoorCKRecordID_RecordNameKey];
  *v4 = 0x614E64726F636552;
  *(v4 + 1) = 0xEA0000000000656DLL;
  v5 = &v2[OBJC_IVAR____TtC9BlastDoor20_BlastDoorCKRecordID_ZoneIDKey];
  *v5 = 0x4449656E6F5ALL;
  *(v5 + 1) = 0xE600000000000000;
  sub_21404A8B8(0, &unk_27C9174A0, 0x277CCACA8);
  v6 = sub_2146D9CF8();
  if (v6)
  {
    v7 = v6;
    type metadata accessor for _BlastDoorCKRecordZoneID();
    v8 = *v5;
    v9 = *(v5 + 1);

    v10 = sub_2146D9CF8();

    if (v10)
    {
      *&v2[OBJC_IVAR____TtC9BlastDoor20_BlastDoorCKRecordID_recordName] = v7;
      *&v2[OBJC_IVAR____TtC9BlastDoor20_BlastDoorCKRecordID_zoneID] = v10;
      v18.receiver = v2;
      v18.super_class = type metadata accessor for _BlastDoorCKRecordID();
      v11 = objc_msgSendSuper2(&v18, sel_init);

      return v11;
    }
  }

  if (qword_280B35360 != -1)
  {
    swift_once();
  }

  v13 = qword_280B35410;
  v14 = sub_2146D9BC8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_213FAF000, v13, v14, "Unable to decode CKRecordID", v15, 2u);
    MEMORY[0x216056AC0](v15, -1, -1);
  }

  v16 = *(v4 + 1);

  v17 = *(v5 + 1);

  type metadata accessor for _BlastDoorCKRecordID();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_214634A10(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9BlastDoor20_BlastDoorCKRecordID_RecordNameKey);
  v4 = *(v1 + OBJC_IVAR____TtC9BlastDoor20_BlastDoorCKRecordID_RecordNameKey + 8);
  v5 = *(v1 + OBJC_IVAR____TtC9BlastDoor20_BlastDoorCKRecordID_recordName);
  v6 = sub_2146D9588();
  [a1 encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC9BlastDoor20_BlastDoorCKRecordID_zoneID);
  v8 = v1 + OBJC_IVAR____TtC9BlastDoor20_BlastDoorCKRecordID_ZoneIDKey;
  v9 = *(v1 + OBJC_IVAR____TtC9BlastDoor20_BlastDoorCKRecordID_ZoneIDKey);
  v10 = *(v8 + 8);
  v11 = v7;
  v12 = sub_2146D9588();
  [a1 encodeObject:v11 forKey:v12];
}

id sub_214634C38(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKRecordZoneID_anonymousCKUserID;
  *&v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKRecordZoneID_anonymousCKUserID] = 0;
  v5 = &v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKRecordZoneID_ZoneNameKey];
  *v5 = 0x656D614E656E6F5ALL;
  *(v5 + 1) = 0xE800000000000000;
  v6 = &v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKRecordZoneID_OwnerNameKey];
  *v6 = 0x6D614E72656E776FLL;
  *(v6 + 1) = 0xE900000000000065;
  v7 = &v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKRecordZoneID_AnonymousCKUserIDKey];
  *v7 = 0xD000000000000011;
  *(v7 + 1) = 0x80000002147944C0;
  v8 = &v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKRecordZoneID_DatabaseScopeKey];
  *v8 = 0xD000000000000010;
  *(v8 + 1) = 0x80000002147A5C30;
  sub_21404A8B8(0, &unk_27C9174A0, 0x277CCACA8);
  v9 = sub_2146D9CF8();
  if (v9)
  {
    v10 = v9;
    v33 = v4;
    v11 = *v6;
    v12 = *(v6 + 1);

    v13 = sub_2146D9CF8();

    if (v13)
    {
      *&v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKRecordZoneID_zoneName] = v10;
      *&v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKRecordZoneID_ownerName] = v13;
      v14 = *v7;
      v15 = *(v7 + 1);
      v16 = v10;
      v17 = v13;

      v18 = sub_2146D9CF8();

      v19 = *&v2[v33];
      *&v2[v33] = v18;

      v20 = *v8;
      v21 = *(v8 + 1);

      v22 = sub_2146D9588();

      v23 = [a1 decodeIntegerForKey_];

      *&v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKRecordZoneID_databaseScope] = v23;
      v34.receiver = v2;
      v34.super_class = type metadata accessor for _BlastDoorCKRecordZoneID();
      v24 = objc_msgSendSuper2(&v34, sel_init);

      return v24;
    }

    v4 = v33;
  }

  if (qword_280B35360 != -1)
  {
    swift_once();
  }

  v26 = qword_280B35410;
  v27 = sub_2146D9BC8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_213FAF000, v26, v27, "Unable to decode CKRecordZoneID", v28, 2u);
    MEMORY[0x216056AC0](v28, -1, -1);
  }

  v29 = *(v5 + 1);

  v30 = *(v6 + 1);

  v31 = *(v7 + 1);

  v32 = *(v8 + 1);

  type metadata accessor for _BlastDoorCKRecordZoneID();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_214634F80(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKRecordZoneID_ZoneNameKey);
  v4 = *(v1 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKRecordZoneID_ZoneNameKey + 8);
  v5 = *(v1 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKRecordZoneID_zoneName);
  v6 = sub_2146D9588();
  [a1 encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKRecordZoneID_OwnerNameKey);
  v8 = *(v1 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKRecordZoneID_OwnerNameKey + 8);
  v9 = *(v1 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKRecordZoneID_ownerName);
  v10 = sub_2146D9588();
  [a1 encodeObject:v9 forKey:v10];

  v11 = *(v1 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKRecordZoneID_AnonymousCKUserIDKey);
  v12 = *(v1 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKRecordZoneID_AnonymousCKUserIDKey + 8);
  v13 = *(v1 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKRecordZoneID_anonymousCKUserID);
  v14 = sub_2146D9588();
  [a1 encodeObject:v13 forKey:v14];

  v15 = *(v1 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKRecordZoneID_databaseScope);
  v16 = *(v1 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKRecordZoneID_DatabaseScopeKey);
  v17 = *(v1 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKRecordZoneID_DatabaseScopeKey + 8);
  v18 = sub_2146D9588();
  [a1 encodeInteger:v15 forKey:v18];
}

void sub_2146352A8(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_EmailAddressKey);
  v4 = *(v1 + OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_EmailAddressKey + 8);
  v5 = *(v1 + OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_emailAddress);
  v6 = sub_2146D9588();
  [a1 encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_PhoneNumberKey);
  v8 = *(v1 + OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_PhoneNumberKey + 8);
  v9 = *(v1 + OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_phoneNumber);
  v10 = sub_2146D9588();
  [a1 encodeObject:v9 forKey:v10];

  v11 = *(v1 + OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_RecordIDKey);
  v12 = *(v1 + OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_RecordIDKey + 8);
  v13 = *(v1 + OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_userRecordID);
  v14 = sub_2146D9588();
  [a1 encodeObject:v13 forKey:v14];

  v15 = *(v1 + OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_shouldReportMissingIdentity);
  v16 = *(v1 + OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_ReportsMissingKey);
  v17 = *(v1 + OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_ReportsMissingKey + 8);
  v18 = sub_2146D9588();
  [a1 encodeBool:v15 forKey:v18];

  v19 = *(v1 + OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_encryptedPersonalInfo);
  v20 = v1 + OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_EncryptedPersonalInfoKey;
  v21 = *(v1 + OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_EncryptedPersonalInfoKey);
  v22 = *(v20 + 8);
  v23 = v19;
  v24 = sub_2146D9588();
  [a1 encodeObject:v23 forKey:v24];
}

id sub_214635524(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

BOOL sub_21463562C(void *a1, void *a2)
{
  v3 = a1[3];
  if (!v3)
  {
    goto LABEL_28;
  }

  v4 = a2[3];
  if (!v4)
  {
    goto LABEL_28;
  }

  v5 = a1[7];
  v6 = a1[8];
  v7 = a1[12];
  v8 = a1[13];
  v9 = a1[18];
  v10 = a2[7];
  v11 = a2[8];
  v12 = a2[12];
  v13 = a2[13];
  v14 = a2[18];
  v18 = a2[17];
  v19 = a1[17];
  v16 = a2[20];
  v17 = a1[20];
  if ((a1[2] != a2[2] || v3 != v4) && (sub_2146DA6A8() & 1) == 0)
  {
    return 0;
  }

  if (!v6 || !v11)
  {
    goto LABEL_28;
  }

  if ((v5 != v10 || v6 != v11) && (sub_2146DA6A8() & 1) == 0)
  {
    return 0;
  }

  if (!v8 || !v13)
  {
    goto LABEL_28;
  }

  if ((v7 != v12 || v8 != v13) && (sub_2146DA6A8() & 1) == 0)
  {
    return 0;
  }

  if (v9 == 1 || v14 == 1)
  {
LABEL_28:
    while (1)
    {
      sub_2146DA018();
      __break(1u);
    }
  }

  if (v9)
  {
    if (!v14 || (v19 != v18 || v9 != v14) && (sub_2146DA6A8() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v14)
    {
      return 0;
    }

    sub_213FDC9D0(v18, 0);
    sub_213FDC9D0(v19, 0);
  }

  return v17 == v16;
}

uint64_t sub_214635818(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 224);
  v138[8] = *(a1 + 208);
  v138[9] = v7;
  v139 = *(a1 + 240);
  v8 = *(a1 + 160);
  v138[4] = *(a1 + 144);
  v138[5] = v8;
  v9 = *(a1 + 176);
  v138[7] = *(a1 + 192);
  v138[6] = v9;
  v10 = *(a1 + 96);
  v138[0] = *(a1 + 80);
  v138[1] = v10;
  v11 = *(a1 + 112);
  v138[3] = *(a1 + 128);
  v138[2] = v11;
  v12 = *(a1 + 248);
  v14 = *(a1 + 256);
  v13 = *(a1 + 264);
  v15 = *(a2 + 16);
  v16 = *(a2 + 24);
  v17 = *(a2 + 56);
  v18 = *(a2 + 64);
  v19 = *(a2 + 224);
  v140[8] = *(a2 + 208);
  v140[9] = v19;
  v141 = *(a2 + 240);
  v20 = *(a2 + 160);
  v140[4] = *(a2 + 144);
  v140[5] = v20;
  v21 = *(a2 + 176);
  v140[7] = *(a2 + 192);
  v140[6] = v21;
  v22 = *(a2 + 96);
  v140[0] = *(a2 + 80);
  v140[1] = v22;
  v23 = *(a2 + 112);
  v140[3] = *(a2 + 128);
  v140[2] = v23;
  if (v3 != 1 && v16 != 1)
  {
    v25 = *(a2 + 248);
    v26 = *(a2 + 256);
    v27 = *(a2 + 264);
    if (v3)
    {
      if (!v16)
      {
        goto LABEL_30;
      }

      v94 = *(a2 + 256);
      v95 = v14;
      v96 = v13;
      if ((v4 != v15 || v3 != v16) && (sub_2146DA6A8() & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      if (v16)
      {
        goto LABEL_30;
      }

      v94 = *(a2 + 256);
      v95 = v14;
      v96 = v13;
      sub_213FDC9D0(v15, 0);
      sub_213FDC9D0(v4, 0);
    }

    if (v6 != 1 && v18 != 1)
    {
      if (v6)
      {
        if (!v18 || (v5 != v17 || v6 != v18) && (sub_2146DA6A8() & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v18)
        {
          goto LABEL_30;
        }

        sub_213FDC9D0(v17, 0);
        sub_213FDC9D0(v5, 0);
      }

      v28 = *(a1 + 192);
      v29 = *(a1 + 224);
      __src[8] = *(a1 + 208);
      __src[9] = v29;
      v30 = *(a1 + 128);
      v31 = *(a1 + 160);
      __src[4] = *(a1 + 144);
      __src[5] = v31;
      v33 = *(a1 + 160);
      v32 = *(a1 + 176);
      v34 = v32;
      __src[7] = *(a1 + 192);
      __src[6] = v32;
      v35 = *(a1 + 96);
      __src[0] = *(a1 + 80);
      __src[1] = v35;
      v36 = *(a1 + 112);
      v38 = *(a1 + 80);
      v37 = *(a1 + 96);
      v39 = v36;
      __src[3] = *(a1 + 128);
      __src[2] = v36;
      v40 = *(a2 + 224);
      *(&__src[18] + 8) = *(a2 + 208);
      *(&__src[19] + 8) = v40;
      v41 = *(a2 + 192);
      *(&__src[16] + 8) = *(a2 + 176);
      *(&__src[17] + 8) = v41;
      v42 = *(a2 + 112);
      *(&__src[13] + 8) = *(a2 + 128);
      v43 = *(a2 + 160);
      *(&__src[14] + 8) = *(a2 + 144);
      *(&__src[15] + 8) = v43;
      v44 = *(a2 + 96);
      *(&__src[10] + 8) = *(a2 + 80);
      *(&__src[11] + 8) = v44;
      *(&__src[12] + 8) = v42;
      v45 = *(a1 + 224);
      v136[8] = __src[8];
      v136[9] = v45;
      v136[4] = __src[4];
      v136[5] = v33;
      v136[7] = v28;
      v136[6] = v34;
      v136[0] = v38;
      v136[1] = v37;
      v46 = *(a2 + 240);
      *&__src[10] = *(a1 + 240);
      *(&__src[20] + 1) = v46;
      v137 = *(a1 + 240);
      v136[3] = v30;
      v136[2] = v39;
      if (get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(v136) == 1)
      {
        v47 = *(a2 + 224);
        __dst[8] = *(a2 + 208);
        __dst[9] = v47;
        *&__dst[10] = *(a2 + 240);
        v48 = *(a2 + 160);
        __dst[4] = *(a2 + 144);
        __dst[5] = v48;
        v49 = *(a2 + 192);
        __dst[6] = *(a2 + 176);
        __dst[7] = v49;
        v50 = *(a2 + 96);
        __dst[0] = *(a2 + 80);
        __dst[1] = v50;
        v51 = *(a2 + 128);
        __dst[2] = *(a2 + 112);
        __dst[3] = v51;
        if (get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(__dst) == 1)
        {
          v52 = *(a1 + 224);
          v132 = *(a1 + 208);
          v133 = v52;
          v134 = *(a1 + 240);
          v53 = *(a1 + 160);
          v128 = *(a1 + 144);
          v129 = v53;
          v54 = *(a1 + 176);
          v131 = *(a1 + 192);
          v130 = v54;
          v55 = *(a1 + 96);
          v124 = *(a1 + 80);
          v125 = v55;
          v56 = *(a1 + 112);
          v127 = *(a1 + 128);
          v126 = v56;
          sub_213FB2E54(v138, &v112, &qword_27C917500, &qword_2146F42A8);
          sub_213FB2E54(v140, &v112, &qword_27C917500, &qword_2146F42A8);
          sub_213FB2DF4(&v124, &qword_27C917500, &qword_2146F42A8);
          goto LABEL_29;
        }

        sub_213FB2E54(v138, &v124, &qword_27C917500, &qword_2146F42A8);
        sub_213FB2E54(v140, &v124, &qword_27C917500, &qword_2146F42A8);
LABEL_27:
        memcpy(__dst, __src, sizeof(__dst));
        sub_213FB2DF4(__dst, &qword_27C917508, &unk_214771300);
        v80 = 0;
        return v80 & 1;
      }

      v57 = *(a1 + 192);
      v58 = *(a1 + 224);
      v132 = *(a1 + 208);
      v133 = v58;
      v59 = *(a1 + 128);
      v60 = *(a1 + 160);
      v128 = *(a1 + 144);
      v129 = v60;
      v62 = *(a1 + 160);
      v61 = *(a1 + 176);
      v63 = v61;
      v131 = *(a1 + 192);
      v130 = v61;
      v64 = *(a1 + 96);
      v124 = *(a1 + 80);
      v125 = v64;
      v65 = *(a1 + 112);
      v67 = *(a1 + 80);
      v66 = *(a1 + 96);
      v68 = v65;
      v127 = *(a1 + 128);
      v126 = v65;
      v69 = *(a1 + 224);
      v120 = v132;
      v121 = v69;
      v116 = v128;
      v117 = v62;
      v118 = v63;
      v119 = v57;
      v112 = v67;
      v113 = v66;
      v134 = *(a1 + 240);
      v122 = *(a1 + 240);
      v114 = v68;
      v115 = v59;
      v70 = *(a2 + 224);
      __dst[8] = *(a2 + 208);
      __dst[9] = v70;
      *&__dst[10] = *(a2 + 240);
      v71 = *(a2 + 160);
      __dst[4] = *(a2 + 144);
      __dst[5] = v71;
      v72 = *(a2 + 192);
      __dst[6] = *(a2 + 176);
      __dst[7] = v72;
      v73 = *(a2 + 96);
      __dst[0] = *(a2 + 80);
      __dst[1] = v73;
      v74 = *(a2 + 128);
      __dst[2] = *(a2 + 112);
      __dst[3] = v74;
      if (get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(__dst) == 1)
      {
        v75 = *(a1 + 224);
        v109 = *(a1 + 208);
        v110 = v75;
        v111 = *(a1 + 240);
        v76 = *(a1 + 160);
        v105 = *(a1 + 144);
        v106 = v76;
        v77 = *(a1 + 192);
        v107 = *(a1 + 176);
        v108 = v77;
        v78 = *(a1 + 96);
        v101 = *(a1 + 80);
        v102 = v78;
        v79 = *(a1 + 128);
        v103 = *(a1 + 112);
        v104 = v79;
        sub_213FB2E54(v138, v99, &qword_27C917500, &qword_2146F42A8);
        sub_213FB2E54(v140, v99, &qword_27C917500, &qword_2146F42A8);
        sub_213FB2E54(&v124, v99, &qword_27C917500, &qword_2146F42A8);
        sub_2142EAEA4(&v101);
        goto LABEL_27;
      }

      v81 = *(a2 + 224);
      v109 = *(a2 + 208);
      v110 = v81;
      v111 = *(a2 + 240);
      v82 = *(a2 + 160);
      v105 = *(a2 + 144);
      v106 = v82;
      v83 = *(a2 + 192);
      v107 = *(a2 + 176);
      v108 = v83;
      v84 = *(a2 + 96);
      v101 = *(a2 + 80);
      v102 = v84;
      v85 = *(a2 + 128);
      v103 = *(a2 + 112);
      v104 = v85;
      v86 = sub_21463562C(&v112, &v101);
      v97[8] = v109;
      v97[9] = v110;
      v98 = v111;
      v97[4] = v105;
      v97[5] = v106;
      v97[6] = v107;
      v97[7] = v108;
      v97[0] = v101;
      v97[1] = v102;
      v97[2] = v103;
      v97[3] = v104;
      sub_213FB2E54(v138, v99, &qword_27C917500, &qword_2146F42A8);
      sub_213FB2E54(v140, v99, &qword_27C917500, &qword_2146F42A8);
      sub_213FB2E54(&v124, v99, &qword_27C917500, &qword_2146F42A8);
      sub_2142EAEA4(v97);
      v99[8] = v120;
      v99[9] = v121;
      v100 = v122;
      v99[4] = v116;
      v99[5] = v117;
      v99[6] = v118;
      v99[7] = v119;
      v99[0] = v112;
      v99[1] = v113;
      v99[2] = v114;
      v99[3] = v115;
      sub_2142EAEA4(v99);
      v87 = *(a1 + 224);
      v109 = *(a1 + 208);
      v110 = v87;
      v111 = *(a1 + 240);
      v88 = *(a1 + 160);
      v105 = *(a1 + 144);
      v106 = v88;
      v89 = *(a1 + 192);
      v107 = *(a1 + 176);
      v108 = v89;
      v90 = *(a1 + 96);
      v101 = *(a1 + 80);
      v102 = v90;
      v91 = *(a1 + 128);
      v103 = *(a1 + 112);
      v104 = v91;
      sub_213FB2DF4(&v101, &qword_27C917500, &qword_2146F42A8);
      if (v86)
      {
LABEL_29:
        if (v12 == v25)
        {
          if (v96 >> 60 == 15)
          {
            v93 = v95;
            if (v27 >> 60 == 15)
            {
              sub_213FDCA18(v95, v96);
              sub_213FDCA18(v94, v27);
              sub_213FDC6BC(v95, v96);
              v80 = 1;
              return v80 & 1;
            }
          }

          else
          {
            v93 = v95;
            if (v27 >> 60 != 15)
            {
              sub_213FDCA18(v95, v96);
              sub_213FDCA18(v94, v27);
              sub_213FDCA18(v95, v96);
              sub_213FDCA18(v94, v27);
              v80 = sub_214466780(v95, v96, v94, v27);
              sub_213FDC6BC(v94, v27);
              sub_213FDC6BC(v94, v27);
              sub_213FDC6BC(v95, v96);
              sub_213FDC6BC(v95, v96);
              return v80 & 1;
            }
          }

          sub_213FDCA18(v93, v96);
          sub_213FDCA18(v94, v27);
          sub_213FDC6BC(v93, v96);
          sub_213FDC6BC(v94, v27);
          v80 = 0;
          return v80 & 1;
        }
      }

LABEL_30:
      v80 = 0;
      return v80 & 1;
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

BOOL sub_214635FDC(__int128 *a1, __int128 *a2)
{
  v4 = sub_2146D8808();
  v82 = *(v4 - 8);
  v5 = *(v82 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917510, &unk_214757860);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v79 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917518, &unk_214771310);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v79 - v14;
  v16 = a1[7];
  v17 = a1[9];
  v98 = a1[8];
  v99 = v17;
  v18 = a1[3];
  v19 = a1[5];
  v94 = a1[4];
  v95 = v19;
  v20 = a1[5];
  v21 = a1[6];
  v22 = v21;
  v97 = a1[7];
  v96 = v21;
  v23 = a1[1];
  v93[0] = *a1;
  v93[1] = v23;
  v24 = a1[2];
  v25 = *a1;
  v26 = a1[1];
  v27 = v24;
  v93[3] = a1[3];
  v93[2] = v24;
  v28 = a2[7];
  v29 = a2[9];
  v106 = a2[8];
  v107 = v29;
  v30 = a2[3];
  v31 = a2[5];
  v102 = a2[4];
  v103 = v31;
  v32 = a2[6];
  v33 = a2[5];
  v105 = a2[7];
  v104 = v32;
  v34 = a2[1];
  v101[0] = *a2;
  v101[1] = v34;
  v35 = a2[2];
  v37 = *a2;
  v36 = a2[1];
  v38 = v35;
  v101[3] = a2[3];
  v101[2] = v35;
  v39 = a1[7];
  v40 = a1[9];
  v89[8] = a1[8];
  v89[9] = v40;
  v41 = a1[3];
  v42 = a1[5];
  v89[4] = a1[4];
  v89[5] = v42;
  v43 = a1[6];
  v89[7] = v39;
  v89[6] = v43;
  v44 = a1[1];
  v89[0] = *a1;
  v89[1] = v44;
  v45 = a1[2];
  v89[3] = v41;
  v89[2] = v45;
  v46 = a2[9];
  *(&v89[18] + 8) = v106;
  *(&v89[19] + 8) = v46;
  *(&v89[16] + 8) = v32;
  *(&v89[17] + 8) = v28;
  *(&v89[13] + 8) = v30;
  *(&v89[14] + 8) = v102;
  *(&v89[15] + 8) = v33;
  *(&v89[10] + 8) = v37;
  *(&v89[11] + 8) = v36;
  *(&v89[12] + 8) = v38;
  v47 = a1[9];
  v109[8] = v98;
  v109[9] = v47;
  v109[4] = v94;
  v109[5] = v20;
  v109[7] = v16;
  v109[6] = v22;
  v109[0] = v25;
  v109[1] = v26;
  v100 = *(a1 + 20);
  v108 = *(a2 + 20);
  v48 = *(a2 + 20);
  *&v89[10] = *(a1 + 20);
  *(&v89[20] + 1) = v48;
  v110 = *(a1 + 20);
  v109[3] = v18;
  v109[2] = v27;
  if (get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(v109) == 1)
  {
    v87[8] = *(&v89[18] + 8);
    v87[9] = *(&v89[19] + 8);
    *&v87[10] = *(&v89[20] + 1);
    v87[4] = *(&v89[14] + 8);
    v87[5] = *(&v89[15] + 8);
    v87[7] = *(&v89[17] + 8);
    v87[6] = *(&v89[16] + 8);
    v87[0] = *(&v89[10] + 8);
    v87[1] = *(&v89[11] + 8);
    v87[3] = *(&v89[13] + 8);
    v87[2] = *(&v89[12] + 8);
    if (get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(v87) == 1)
    {
      v81 = v7;
      v92[8] = v89[8];
      v92[9] = v89[9];
      *&v92[10] = *&v89[10];
      v92[4] = v89[4];
      v92[5] = v89[5];
      v92[7] = v89[7];
      v92[6] = v89[6];
      v92[0] = v89[0];
      v92[1] = v89[1];
      v92[3] = v89[3];
      v92[2] = v89[2];
      sub_213FB2E54(v93, v91, &qword_27C917500, &qword_2146F42A8);
      sub_213FB2E54(v101, v91, &qword_27C917500, &qword_2146F42A8);
      sub_213FB2DF4(v92, &qword_27C917500, &qword_2146F42A8);
      goto LABEL_10;
    }

    sub_213FB2E54(v93, v92, &qword_27C917500, &qword_2146F42A8);
    sub_213FB2E54(v101, v92, &qword_27C917500, &qword_2146F42A8);
LABEL_7:
    memcpy(v87, v89, 0x150uLL);
    v49 = &qword_27C917508;
    v50 = &unk_214771300;
LABEL_8:
    v51 = v87;
LABEL_16:
    sub_213FB2DF4(v51, v49, v50);
    return 0;
  }

  v92[8] = v89[8];
  v92[9] = v89[9];
  v92[4] = v89[4];
  v92[5] = v89[5];
  v92[7] = v89[7];
  v92[6] = v89[6];
  v92[0] = v89[0];
  v92[1] = v89[1];
  v92[3] = v89[3];
  v92[2] = v89[2];
  v91[8] = v89[8];
  v91[9] = v89[9];
  v91[4] = v89[4];
  v91[5] = v89[5];
  v91[7] = v89[7];
  v91[6] = v89[6];
  v91[0] = v89[0];
  v91[1] = v89[1];
  *&v92[10] = *&v89[10];
  *&v91[10] = *&v89[10];
  v91[3] = v89[3];
  v91[2] = v89[2];
  v87[8] = *(&v89[18] + 8);
  v87[9] = *(&v89[19] + 8);
  *&v87[10] = *(&v89[20] + 1);
  v87[4] = *(&v89[14] + 8);
  v87[5] = *(&v89[15] + 8);
  v87[7] = *(&v89[17] + 8);
  v87[6] = *(&v89[16] + 8);
  v87[0] = *(&v89[10] + 8);
  v87[1] = *(&v89[11] + 8);
  v87[3] = *(&v89[13] + 8);
  v87[2] = *(&v89[12] + 8);
  if (get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(v87) == 1)
  {
    v90[8] = v89[8];
    v90[9] = v89[9];
    *&v90[10] = *&v89[10];
    v90[4] = v89[4];
    v90[5] = v89[5];
    v90[7] = v89[7];
    v90[6] = v89[6];
    v90[0] = v89[0];
    v90[1] = v89[1];
    v90[3] = v89[3];
    v90[2] = v89[2];
    sub_213FB2E54(v93, v88, &qword_27C917500, &qword_2146F42A8);
    sub_213FB2E54(v101, v88, &qword_27C917500, &qword_2146F42A8);
    sub_213FB2E54(v92, v88, &qword_27C917500, &qword_2146F42A8);
    sub_2142EAEA4(v90);
    goto LABEL_7;
  }

  v81 = v7;
  v90[8] = *(&v89[18] + 8);
  v90[9] = *(&v89[19] + 8);
  *&v90[10] = *(&v89[20] + 1);
  v90[4] = *(&v89[14] + 8);
  v90[5] = *(&v89[15] + 8);
  v90[7] = *(&v89[17] + 8);
  v90[6] = *(&v89[16] + 8);
  v90[0] = *(&v89[10] + 8);
  v90[1] = *(&v89[11] + 8);
  v90[3] = *(&v89[13] + 8);
  v90[2] = *(&v89[12] + 8);
  v52 = sub_21463562C(v91, v90);
  v86[8] = v90[8];
  v86[9] = v90[9];
  *&v86[10] = *&v90[10];
  v86[4] = v90[4];
  v86[5] = v90[5];
  v86[6] = v90[6];
  v86[7] = v90[7];
  v86[0] = v90[0];
  v86[1] = v90[1];
  v86[2] = v90[2];
  v86[3] = v90[3];
  sub_213FB2E54(v93, v88, &qword_27C917500, &qword_2146F42A8);
  sub_213FB2E54(v101, v88, &qword_27C917500, &qword_2146F42A8);
  sub_213FB2E54(v92, v88, &qword_27C917500, &qword_2146F42A8);
  sub_2142EAEA4(v86);
  v88[8] = v91[8];
  v88[9] = v91[9];
  *&v88[10] = *&v91[10];
  v88[4] = v91[4];
  v88[5] = v91[5];
  v88[7] = v91[7];
  v88[6] = v91[6];
  v88[0] = v91[0];
  v88[1] = v91[1];
  v88[3] = v91[3];
  v88[2] = v91[2];
  sub_2142EAEA4(v88);
  v90[8] = v89[8];
  v90[9] = v89[9];
  *&v90[10] = *&v89[10];
  v90[4] = v89[4];
  v90[5] = v89[5];
  v90[7] = v89[7];
  v90[6] = v89[6];
  v90[0] = v89[0];
  v90[1] = v89[1];
  v90[3] = v89[3];
  v90[2] = v89[2];
  sub_213FB2DF4(v90, &qword_27C917500, &qword_2146F42A8);
  if (!v52)
  {
    return 0;
  }

LABEL_10:
  v80 = type metadata accessor for CloudKitUserIdentity(0);
  v53 = *(v80 + 20);
  v54 = *(v12 + 48);
  sub_213FB2E54(a1 + v53, v15, &qword_27C917510, &unk_214757860);
  sub_213FB2E54(a2 + v53, &v15[v54], &qword_27C917510, &unk_214757860);
  v55 = v82;
  v56 = *(v82 + 48);
  if (v56(v15, 1, v4) == 1)
  {
    if (v56(&v15[v54], 1, v4) == 1)
    {
      sub_213FB2DF4(v15, &qword_27C917510, &unk_214757860);
      goto LABEL_19;
    }

LABEL_15:
    v49 = &qword_27C917518;
    v50 = &unk_214771310;
    v51 = v15;
    goto LABEL_16;
  }

  sub_213FB2E54(v15, v11, &qword_27C917510, &unk_214757860);
  if (v56(&v15[v54], 1, v4) == 1)
  {
    (*(v55 + 8))(v11, v4);
    goto LABEL_15;
  }

  v58 = &v15[v54];
  v59 = v81;
  (*(v55 + 32))(v81, v58, v4);
  sub_214638278();
  v60 = sub_2146D9578();
  v61 = *(v55 + 8);
  v61(v59, v4);
  v61(v11, v4);
  sub_213FB2DF4(v15, &qword_27C917510, &unk_214757860);
  if ((v60 & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  v62 = v80;
  v63 = *(v80 + 24);
  memcpy(v90, a1 + v63, sizeof(v90));
  v64 = *(v80 + 24);
  memcpy(v91, a2 + v64, sizeof(v91));
  memcpy(v89, a1 + v63, 0x110uLL);
  memcpy(&v89[17], a2 + v64, 0x110uLL);
  memcpy(v92, a1 + v63, sizeof(v92));
  if (get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(v92) == 1)
  {
    memcpy(v87, &v89[17], 0x110uLL);
    if (get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(v87) == 1)
    {
      memcpy(v88, v89, sizeof(v88));
      sub_213FB2E54(v90, v86, &qword_27C917520, &qword_2146F42B0);
      sub_213FB2E54(v91, v86, &qword_27C917520, &qword_2146F42B0);
      sub_213FB2DF4(v88, &qword_27C917520, &qword_2146F42B0);
      goto LABEL_27;
    }

    sub_213FB2E54(v90, v88, &qword_27C917520, &qword_2146F42B0);
    sub_213FB2E54(v91, v88, &qword_27C917520, &qword_2146F42B0);
    goto LABEL_25;
  }

  memcpy(v88, v89, sizeof(v88));
  memcpy(v86, v89, sizeof(v86));
  memcpy(v87, &v89[17], 0x110uLL);
  if (get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(v87) == 1)
  {
    memcpy(v85, v89, sizeof(v85));
    sub_213FB2E54(v90, v84, &qword_27C917520, &qword_2146F42B0);
    sub_213FB2E54(v91, v84, &qword_27C917520, &qword_2146F42B0);
    sub_213FB2E54(v88, v84, &qword_27C917520, &qword_2146F42B0);
    sub_2142EADA0(v85);
LABEL_25:
    memcpy(v87, v89, sizeof(v87));
    v49 = &unk_27C917528;
    v50 = &unk_214771320;
    goto LABEL_8;
  }

  memcpy(v85, &v89[17], sizeof(v85));
  sub_213FB2E54(v90, v84, &qword_27C917520, &qword_2146F42B0);
  sub_213FB2E54(v91, v84, &qword_27C917520, &qword_2146F42B0);
  sub_213FB2E54(v88, v84, &qword_27C917520, &qword_2146F42B0);
  v65 = sub_214635818(v86, v85);
  memcpy(v83, v85, sizeof(v83));
  sub_2142EADA0(v83);
  memcpy(v84, v86, sizeof(v84));
  sub_2142EADA0(v84);
  memcpy(v85, v89, sizeof(v85));
  sub_213FB2DF4(v85, &qword_27C917520, &qword_2146F42B0);
  if ((v65 & 1) == 0)
  {
    return 0;
  }

LABEL_27:
  if ((sub_2143D53BC(*(a1 + v62[7]), *(a2 + v62[7])) & 1) == 0)
  {
    return 0;
  }

  v66 = v62[8];
  v68 = *(a1 + v66);
  v67 = *(a1 + v66 + 8);
  v69 = (a2 + v66);
  v71 = *v69;
  v70 = v69[1];
  if (v67 >> 60 == 15)
  {
    if (v70 >> 60 != 15)
    {
      goto LABEL_37;
    }

    sub_213FDCA18(v68, v67);
    sub_213FDCA18(v71, v70);
    sub_213FDC6BC(v68, v67);
  }

  else
  {
    if (v70 >> 60 == 15)
    {
      goto LABEL_37;
    }

    sub_213FDCA18(v68, v67);
    sub_213FDCA18(v71, v70);
    v72 = sub_214466780(v68, v67, v71, v70);
    sub_213FDC6BC(v71, v70);
    sub_213FDC6BC(v68, v67);
    if ((v72 & 1) == 0)
    {
      return 0;
    }
  }

  v73 = v62[9];
  v68 = *(a1 + v73);
  v67 = *(a1 + v73 + 8);
  v74 = (a2 + v73);
  v71 = *v74;
  v70 = v74[1];
  if (v67 >> 60 == 15)
  {
    if (v70 >> 60 == 15)
    {
      sub_213FDCA18(v68, v67);
      sub_213FDCA18(v71, v70);
      sub_213FDC6BC(v68, v67);
      goto LABEL_39;
    }

LABEL_37:
    sub_213FDCA18(v68, v67);
    sub_213FDCA18(v71, v70);
    sub_213FDC6BC(v68, v67);
    sub_213FDC6BC(v71, v70);
    return 0;
  }

  if (v70 >> 60 == 15)
  {
    goto LABEL_37;
  }

  sub_213FDCA18(v68, v67);
  sub_213FDCA18(v71, v70);
  v75 = sub_214466780(v68, v67, v71, v70);
  sub_213FDC6BC(v71, v70);
  sub_213FDC6BC(v68, v67);
  if ((v75 & 1) == 0)
  {
    return 0;
  }

LABEL_39:
  if (*(a1 + v62[10]) != *(a2 + v62[10]) || *(a1 + v62[11]) != *(a2 + v62[11]))
  {
    return 0;
  }

  v76 = v62[12];
  v68 = *(a1 + v76);
  v67 = *(a1 + v76 + 8);
  v77 = (a2 + v76);
  v71 = *v77;
  v70 = v77[1];
  if (v67 >> 60 != 15)
  {
    if (v70 >> 60 == 15)
    {
      goto LABEL_37;
    }

    sub_213FDCA18(v68, v67);
    sub_213FDCA18(v71, v70);
    v78 = sub_214466780(v68, v67, v71, v70);
    sub_213FDC6BC(v71, v70);
    sub_213FDC6BC(v68, v67);
    if (v78)
    {
      return *(a1 + v62[13]) == *(a2 + v62[13]);
    }

    return 0;
  }

  if (v70 >> 60 != 15)
  {
    goto LABEL_37;
  }

  sub_213FDCA18(v68, v67);
  sub_213FDCA18(v71, v70);
  sub_213FDC6BC(v68, v67);
  return *(a1 + v62[13]) == *(a2 + v62[13]);
}

uint64_t sub_214636E6C(void *a1, void *a2)
{
  v4 = type metadata accessor for CloudKitSharingToken();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v48[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041D8, &qword_2146ED5C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v48[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917540, &unk_214751950);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v48[-v15];
  v17 = a1[3];
  if (v17)
  {
    v18 = a2[3];
    if (v18)
    {
      if ((a1[2] != a2[2] || v17 != v18) && (sub_2146DA6A8() & 1) == 0)
      {
        return 0;
      }

      v19 = a1[8];
      if (v19 != 1)
      {
        v20 = a2[8];
        if (v20 != 1)
        {
          v21 = a1[7];
          if (v19)
          {
            if (!v20)
            {
              return 0;
            }

            if (v21 != a2[7] || v19 != v20)
            {
              v22 = a1[7];
              if ((sub_2146DA6A8() & 1) == 0)
              {
                return 0;
              }
            }
          }

          else
          {
            if (v20)
            {
              return 0;
            }

            sub_213FDC9D0(a2[7], 0);
            sub_213FDC9D0(v21, 0);
          }

          v23 = type metadata accessor for CloudKitShareParticipant(0);
          if (!sub_214635FDC((a1 + v23[6]), (a2 + v23[6])) || *(a1 + v23[7]) != *(a2 + v23[7]) || *(a1 + v23[8]) != *(a2 + v23[8]) || qword_214771328[*(a1 + v23[9])] != qword_214771328[*(a2 + v23[9])] || *(a1 + v23[10]) != *(a2 + v23[10]) || *(a1 + v23[11]) != *(a2 + v23[11]) || qword_214771328[*(a1 + v23[12])] != qword_214771328[*(a2 + v23[12])] || *(a1 + v23[13]) != *(a2 + v23[13]) || *(a1 + v23[14]) != *(a2 + v23[14]))
          {
            return 0;
          }

          v24 = v23[15];
          v26 = *(a1 + v24);
          v25 = *(a1 + v24 + 8);
          v27 = (a2 + v24);
          v28 = v27[1];
          v52 = *v27;
          if (v25 >> 60 == 15)
          {
            if (v28 >> 60 != 15)
            {
              goto LABEL_34;
            }

            v50 = v25;
            v51 = v26;
            sub_213FDCA18(v26, v25);
            sub_213FDCA18(v52, v28);
            sub_213FDC6BC(v51, v50);
          }

          else
          {
            if (v28 >> 60 == 15)
            {
              goto LABEL_34;
            }

            v50 = v25;
            v51 = v26;
            sub_213FDCA18(v26, v25);
            sub_213FDCA18(v52, v28);
            v49 = sub_214466780(v51, v50, v52, v28);
            sub_213FDC6BC(v52, v28);
            sub_213FDC6BC(v51, v50);
            if ((v49 & 1) == 0)
            {
              return 0;
            }
          }

          v29 = v23[16];
          v26 = *(a1 + v29);
          v25 = *(a1 + v29 + 8);
          v30 = (a2 + v29);
          v28 = v30[1];
          v52 = *v30;
          if (v25 >> 60 == 15)
          {
            if (v28 >> 60 == 15)
            {
              v50 = v25;
              v51 = v26;
              sub_213FDCA18(v26, v25);
              sub_213FDCA18(v52, v28);
              sub_213FDC6BC(v51, v50);
              goto LABEL_38;
            }
          }

          else if (v28 >> 60 != 15)
          {
            v50 = v25;
            v51 = v26;
            sub_213FDCA18(v26, v25);
            sub_213FDCA18(v52, v28);
            v49 = sub_214466780(v51, v50, v52, v28);
            sub_213FDC6BC(v52, v28);
            sub_213FDC6BC(v51, v50);
            if ((v49 & 1) == 0)
            {
              return 0;
            }

LABEL_38:
            if (*(a1 + v23[17]) != *(a2 + v23[17]) || *(a1 + v23[18]) != *(a2 + v23[18]))
            {
              return 0;
            }

            v37 = *(v13 + 48);
            v38 = v23[19];
            sub_213FB2E54(a1 + v38, v16, &qword_27C9041D8, &qword_2146ED5C0);
            v52 = v37;
            sub_213FB2E54(a2 + v38, &v16[v37], &qword_27C9041D8, &qword_2146ED5C0);
            v39 = *(v5 + 48);
            if (v39(v16, 1, v4) == 1)
            {
              if (v39(&v16[v52], 1, v4) == 1)
              {
                sub_213FB2DF4(v16, &qword_27C9041D8, &qword_2146ED5C0);
LABEL_47:
                v41 = v23[20];
                v43 = *(a1 + v41);
                v42 = *(a1 + v41 + 8);
                v44 = (a2 + v41);
                v46 = *v44;
                v45 = v44[1];
                if (v42 >> 60 == 15)
                {
                  if (v45 >> 60 == 15)
                  {
                    sub_213FDCA18(v43, v42);
                    sub_213FDCA18(v46, v45);
                    sub_213FDC6BC(v43, v42);
LABEL_53:
                    if (*(a1 + v23[21]) == *(a2 + v23[21]) && *(a1 + v23[22]) == *(a2 + v23[22]))
                    {
                      return *(a1 + v23[23]) == *(a2 + v23[23]);
                    }

                    return 0;
                  }
                }

                else if (v45 >> 60 != 15)
                {
                  sub_213FDCA18(v43, v42);
                  sub_213FDCA18(v46, v45);
                  v47 = sub_214466780(v43, v42, v46, v45);
                  sub_213FDC6BC(v46, v45);
                  sub_213FDC6BC(v43, v42);
                  if ((v47 & 1) == 0)
                  {
                    return 0;
                  }

                  goto LABEL_53;
                }

                sub_213FDCA18(v43, v42);
                sub_213FDCA18(v46, v45);
                sub_213FDC6BC(v43, v42);
                v34 = v46;
                v35 = v45;
LABEL_35:
                sub_213FDC6BC(v34, v35);
                return 0;
              }
            }

            else
            {
              sub_213FB2E54(v16, v12, &qword_27C9041D8, &qword_2146ED5C0);
              if (v39(&v16[v52], 1, v4) != 1)
              {
                sub_21404A900(&v16[v52], v8);
                v40 = sub_2145AF7C4(v12, v8);
                sub_2146382D0(v8, type metadata accessor for CloudKitSharingToken);
                sub_2146382D0(v12, type metadata accessor for CloudKitSharingToken);
                sub_213FB2DF4(v16, &qword_27C9041D8, &qword_2146ED5C0);
                if ((v40 & 1) == 0)
                {
                  return 0;
                }

                goto LABEL_47;
              }

              sub_2146382D0(v12, type metadata accessor for CloudKitSharingToken);
            }

            sub_213FB2DF4(v16, &qword_27C917540, &unk_214751950);
            return 0;
          }

LABEL_34:
          v31 = v26;
          v32 = v25;
          sub_213FDCA18(v26, v25);
          v33 = v52;
          sub_213FDCA18(v52, v28);
          sub_213FDC6BC(v31, v32);
          v34 = v33;
          v35 = v28;
          goto LABEL_35;
        }
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

unint64_t sub_214637628()
{
  result = qword_27C9171C8;
  if (!qword_27C9171C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9171C8);
  }

  return result;
}

unint64_t sub_214637680()
{
  result = qword_27C9171D0;
  if (!qword_27C9171D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9171D0);
  }

  return result;
}

unint64_t sub_2146376D8()
{
  result = qword_27C9171D8;
  if (!qword_27C9171D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9171D8);
  }

  return result;
}

unint64_t sub_214637730()
{
  result = qword_27C9171E0;
  if (!qword_27C9171E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9171E0);
  }

  return result;
}

id sub_214637878(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_userRecordID;
  *&v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_userRecordID] = 0;
  v5 = OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_nameComponents;
  *&v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_nameComponents] = 0;
  v6 = OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_lookupInfo;
  *&v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_lookupInfo] = 0;
  v58 = OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_publicSharingKey;
  *&v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_publicSharingKey] = 0;
  v61 = OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_outOfNetworkPrivateKey;
  *&v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_outOfNetworkPrivateKey] = 0;
  v62 = OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_encryptedPersonalInfo;
  *&v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_encryptedPersonalInfo] = 0;
  v7 = &v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_UserRecordIDKey];
  strcpy(&v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_UserRecordIDKey], "UserRecordID");
  v7[13] = 0;
  *(v7 + 7) = -5120;
  v8 = &v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_NameComponentsKey];
  strcpy(&v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_NameComponentsKey], "NameComponents");
  v8[15] = -18;
  v9 = &v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_LookupInfoKey];
  *v9 = 0x6E4970756B6F6F4CLL;
  *(v9 + 1) = 0xEA00000000006F66;
  v10 = &v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_ContactIdentifiersKey];
  *v10 = 0xD000000000000012;
  *(v10 + 1) = 0x80000002147A5CA0;
  v11 = &v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_ProtectionDataKey];
  strcpy(&v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_ProtectionDataKey], "ProtectionData");
  v11[15] = -18;
  v54 = v11;
  v12 = &v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_OONProtectionDataKey];
  *v12 = 0xD000000000000011;
  *(v12 + 1) = 0x80000002147A5CC0;
  v55 = v12;
  v13 = &v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_IsCachedKey];
  *v13 = 0x6465686361437349;
  *(v13 + 1) = 0xE800000000000000;
  v14 = &v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_HasICloudAccountKey];
  *v14 = 0xD000000000000010;
  *(v14 + 1) = 0x80000002147A5CE0;
  v56 = v13;
  v57 = v14;
  v15 = &v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_EncryptedPersonalInfoKey];
  *v15 = 0xD000000000000015;
  *(v15 + 1) = 0x80000002147A5BE0;
  v16 = &v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_PublicKeyVersionKey];
  *v16 = 0xD000000000000010;
  *(v16 + 1) = 0x80000002147A5D00;
  v59 = v15;
  v60 = v16;
  type metadata accessor for _BlastDoorCKRecordID();
  v17 = sub_2146D9CF8();
  v18 = *&v2[v4];
  *&v2[v4] = v17;

  sub_21404A8B8(0, &unk_27C9174B0, 0x277CCAC00);
  v19 = *v8;
  v20 = *(v8 + 1);

  v21 = sub_2146D9CF8();

  v22 = *&v2[v5];
  *&v2[v5] = v21;

  type metadata accessor for _BlastDoorCKUserIdentityLookupInfo();
  v23 = *v9;
  v24 = *(v9 + 1);

  v25 = sub_2146D9CF8();

  v26 = *&v2[v6];
  *&v2[v6] = v25;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913160, &unk_21473D7C0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_2146E6910;
  *(v27 + 32) = sub_21404A8B8(0, &unk_27C9174C0, 0x277CBEA60);
  *(v27 + 40) = sub_21404A8B8(0, &unk_27C9174A0, 0x277CCACA8);
  v28 = *v10;
  v29 = *(v10 + 1);

  sub_2146D9D08();

  if (!v66)
  {
    sub_213FB2DF4(v65, &qword_27C913170, &qword_2146EAB20);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v30 = [objc_allocWithZone(MEMORY[0x277CBEA60]) init];
    goto LABEL_6;
  }

  v30 = v63;
LABEL_6:
  *&v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_contactIdentifiers] = v30;
  sub_21404A8B8(0, &qword_27C9041F0, 0x277CBEA90);
  v31 = *v54;
  v32 = *(v54 + 1);

  v33 = sub_2146D9CF8();

  v34 = *&v2[v58];
  *&v2[v58] = v33;

  v35 = *v55;
  v36 = *(v55 + 1);

  v37 = sub_2146D9CF8();

  v38 = *&v2[v61];
  *&v2[v61] = v37;

  v39 = *v56;
  v40 = *(v56 + 1);

  v41 = sub_2146D9588();

  LOBYTE(v40) = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_isCached] = v40;
  v42 = *v57;
  v43 = *(v57 + 1);

  v44 = sub_2146D9588();

  LOBYTE(v43) = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_hasICloudAccount] = v43;
  v45 = *v59;
  v46 = *(v59 + 1);

  v47 = sub_2146D9CF8();

  v48 = *&v2[v62];
  *&v2[v62] = v47;

  v49 = *v60;
  v50 = *(v60 + 1);

  v51 = sub_2146D9588();

  v52 = [a1 decodeInt64ForKey_];

  *&v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_publicKeyVersion] = v52;
  v64.receiver = v2;
  v64.super_class = type metadata accessor for _BlastDoorCKUserIdentity();
  return objc_msgSendSuper2(&v64, sel_init);
}

id sub_214637E54(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_emailAddress;
  *&v2[OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_emailAddress] = 0;
  v5 = OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_phoneNumber;
  *&v2[OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_phoneNumber] = 0;
  v6 = OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_userRecordID;
  *&v2[OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_userRecordID] = 0;
  v30 = OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_encryptedPersonalInfo;
  *&v2[OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_encryptedPersonalInfo] = 0;
  v7 = &v2[OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_EmailAddressKey];
  strcpy(&v2[OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_EmailAddressKey], "EmailAddress");
  v7[13] = 0;
  *(v7 + 7) = -5120;
  v8 = &v2[OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_PhoneNumberKey];
  *v8 = 0x6D754E656E6F6850;
  *(v8 + 1) = 0xEB00000000726562;
  v9 = &v2[OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_RecordIDKey];
  *v9 = 0x444964726F636552;
  *(v9 + 1) = 0xE800000000000000;
  v10 = &v2[OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_ReportsMissingKey];
  strcpy(&v2[OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_ReportsMissingKey], "ReportsMissing");
  v10[15] = -18;
  v11 = &v2[OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_EncryptedPersonalInfoKey];
  *v11 = 0xD000000000000015;
  *(v11 + 1) = 0x80000002147A5BE0;
  sub_21404A8B8(0, &unk_27C9174A0, 0x277CCACA8);
  v12 = sub_2146D9CF8();
  v13 = *&v2[v4];
  *&v2[v4] = v12;

  v14 = *v8;
  v15 = *(v8 + 1);

  v16 = sub_2146D9CF8();

  v17 = *&v2[v5];
  *&v2[v5] = v16;

  type metadata accessor for _BlastDoorCKRecordID();
  v18 = *v9;
  v19 = *(v9 + 1);

  v20 = sub_2146D9CF8();

  v21 = *&v2[v6];
  *&v2[v6] = v20;

  v22 = *v10;
  v23 = *(v10 + 1);

  v24 = sub_2146D9588();

  LOBYTE(v23) = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_shouldReportMissingIdentity] = v23;
  sub_21404A8B8(0, &qword_27C9041F0, 0x277CBEA90);
  v25 = *v11;
  v26 = *(v11 + 1);

  v27 = sub_2146D9CF8();

  v28 = *&v2[v30];
  *&v2[v30] = v27;

  v31.receiver = v2;
  v31.super_class = type metadata accessor for _BlastDoorCKUserIdentityLookupInfo();
  return objc_msgSendSuper2(&v31, sel_init);
}

unint64_t sub_214638128()
{
  result = qword_27C9174E0;
  if (!qword_27C9174E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9174E0);
  }

  return result;
}

unint64_t sub_21463817C()
{
  result = qword_27C9174E8;
  if (!qword_27C9174E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9174E8);
  }

  return result;
}

unint64_t sub_2146381D0()
{
  result = qword_27C9174F0;
  if (!qword_27C9174F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9174F0);
  }

  return result;
}

unint64_t sub_214638224()
{
  result = qword_27C9174F8;
  if (!qword_27C9174F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9174F8);
  }

  return result;
}

unint64_t sub_214638278()
{
  result = qword_27C917530;
  if (!qword_27C917530)
  {
    sub_2146D8808();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917530);
  }

  return result;
}

uint64_t sub_2146382D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_214638330(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double sub_214638350(_OWORD *a1)
{
  result = 0.0;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_21463839C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2140676DC;
  *(v4 + 24) = 0;
  *(v3 + 32) = v4;
  v5 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v6 + 16) = sub_21403254C;
  *(v6 + 24) = v7;
  *(inited + 32) = v6;
  return sub_214042A28(inited, a1);
}

uint64_t sub_2146384BC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_214638514(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1->n128_u64[1];
  v7 = v1[1].n128_i64[0];
  v8 = v1[1].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21463857C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2146385D4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

uint64_t sub_21463863C()
{
  if (*(v0 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 16);

    return v1;
  }

  return result;
}

uint64_t sub_2146386BC()
{
  if (*(v0 + 64) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 56);

    return v1;
  }

  return result;
}

unint64_t sub_214638744@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_214638810(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *v2;
  v7 = *(v2 + 8);
  v11 = *(v3 + 32);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 16), *(v3 + 24));

    *(v3 + 16) = a1;
    *(v3 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_214638954(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 16);
  *(v3 + 24) = v5;
  v6 = *(v1 + 24);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214074090;
  }

  return result;
}

void (*sub_214638A2C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21407449C;
}

uint64_t sub_214638B04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v11 = *(v3 + 72);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 56), *(v3 + 64));

    *(v3 + 56) = a1;
    *(v3 + 64) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_214638C48(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 56);
  *(v3 + 24) = v5;
  v6 = *(v1 + 64);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_21407493C;
  }

  return result;
}

void (*sub_214638D20(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  *v4 = *(v1 + 40);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214074D48;
}

uint64_t sub_214638DC0@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RelayReachabilityContext() + 28);

  return sub_214090414(v3, a1);
}

uint64_t type metadata accessor for RelayReachabilityContext()
{
  result = qword_280B2EC98;
  if (!qword_280B2EC98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_214638E50(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for RelayReachabilityContext() + 28);

  return sub_21460D13C(a1, v3);
}

uint64_t sub_214638EDC()
{
  v1 = (v0 + *(type metadata accessor for RelayReachabilityContext() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_214638F1C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RelayReachabilityContext() + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_214638FAC()
{
  v1 = (v0 + *(type metadata accessor for RelayReachabilityContext() + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_214638FEC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RelayReachabilityContext() + 36));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_2146390A0(char a1)
{
  result = type metadata accessor for RelayReachabilityContext();
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t sub_21463913C(char a1)
{
  result = type metadata accessor for RelayReachabilityContext();
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t sub_2146391D8(char a1)
{
  result = type metadata accessor for RelayReachabilityContext();
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t sub_214639274(char a1)
{
  result = type metadata accessor for RelayReachabilityContext();
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t sub_214639310(char a1)
{
  result = type metadata accessor for RelayReachabilityContext();
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t sub_2146393AC(char a1)
{
  result = type metadata accessor for RelayReachabilityContext();
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t sub_214639448(char a1)
{
  result = type metadata accessor for RelayReachabilityContext();
  *(v1 + *(result + 64)) = a1;
  return result;
}

unint64_t sub_2146394C4()
{
  result = qword_27C917548;
  if (!qword_27C917548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917548);
  }

  return result;
}

unint64_t sub_214639518(uint64_t a1)
{
  *(a1 + 8) = sub_2142FE698();
  result = sub_2142FE6EC();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214639548(uint64_t a1)
{
  *(a1 + 8) = sub_2146395B0(&qword_27C9087B8);
  result = sub_2146395B0(&qword_27C9087C8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2146395B0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RelayReachabilityContext();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_21463962C()
{
  sub_214084AA4();
  if (v0 <= 0x3F)
  {
    sub_21408202C();
    if (v1 <= 0x3F)
    {
      sub_2143ACE3C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_2146396F8()
{
  result = qword_27C917550;
  if (!qword_27C917550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917550);
  }

  return result;
}

uint64_t PNGEncoder.encode(imageSource:)()
{
  sub_214499648();
  swift_allocError();
  *v0 = 3;
  return swift_willThrow();
}

uint64_t PNGEncoder.encode(pixelBuffer:to:)()
{
  sub_21407D454();
  swift_allocError();
  *v0 = 1281;
  *(v0 + 8) = 0;
  return swift_willThrow();
}

uint64_t PNGEncoder.encode(pixelBuffer:)()
{
  sub_21407D454();
  swift_allocError();
  *v0 = 1281;
  *(v0 + 8) = 0;
  return swift_willThrow();
}

uint64_t sub_2146398D4()
{
  sub_214499648();
  swift_allocError();
  *v0 = 3;
  return swift_willThrow();
}

void sub_214639954(CGImageSource *a1)
{
  v1 = sub_2146D8898();
  v2 = sub_2146D9588();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913040, &qword_21473D440);
  inited = swift_initStackObject();
  v4 = MEMORY[0x277CD3678];
  *(inited + 16) = xmmword_2146E6910;
  v5 = *v4;
  *(inited + 32) = v5;
  *(inited + 40) = 0;
  v6 = *MEMORY[0x277CD35A0];
  *(inited + 48) = *MEMORY[0x277CD35A0];
  *(inited + 56) = 1;
  v16 = v5;
  v15 = v6;
  sub_214046938(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913048, &qword_21473D448);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  sub_2143A6B04();
  v7 = sub_2146D9468();

  v8 = CGImageDestinationCreateWithURL(v1, v2, 1uLL, v7);

  if (v8)
  {
    v9 = swift_initStackObject();
    *(v9 + 16) = xmmword_2146E6910;
    *(v9 + 32) = v16;
    *(v9 + 40) = 0;
    *(v9 + 48) = v15;
    *(v9 + 56) = 1;
    v10 = v16;
    v11 = v15;
    sub_214046938(v9);
    swift_setDeallocating();
    swift_arrayDestroy();
    v12 = sub_2146D9468();

    CGImageDestinationAddImageFromSource(v8, a1, 0, v12);

    if (!CGImageDestinationFinalize(v8))
    {
      sub_214499648();
      swift_allocError();
      *v14 = 3;
      swift_willThrow();
    }
  }

  else
  {
    sub_214499648();
    swift_allocError();
    *v13 = 2;
    swift_willThrow();
  }
}

const __CFDictionary *sub_214639BFC(CGImage *a1)
{
  v2 = v1;
  Mutable = CFDataCreateMutable(0, 0);
  if (Mutable)
  {
    v5 = Mutable;
    v6 = sub_2146D9588();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913040, &qword_21473D440);
    inited = swift_initStackObject();
    v8 = MEMORY[0x277CD3678];
    *(inited + 16) = xmmword_2146E6910;
    v9 = *v8;
    *(inited + 32) = v9;
    *(inited + 40) = 0;
    v10 = *MEMORY[0x277CD35A0];
    *(inited + 48) = *MEMORY[0x277CD35A0];
    *(inited + 56) = 1;
    v22 = v9;
    v11 = v10;
    sub_214046938(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913048, &qword_21473D448);
    swift_arrayDestroy();
    type metadata accessor for CFString(0);
    v2 = sub_2143A6B04();
    v12 = sub_2146D9468();

    v13 = CGImageDestinationCreateWithData(v5, v6, 1uLL, v12);

    if (v13)
    {
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_2146E6910;
      *(v14 + 32) = v22;
      *(v14 + 40) = 0;
      *(v14 + 48) = v11;
      *(v14 + 56) = 1;
      v15 = v22;
      v16 = v11;
      sub_214046938(v14);
      swift_setDeallocating();
      swift_arrayDestroy();
      v2 = sub_2146D9468();

      CGImageDestinationAddImage(v13, a1, v2);

      if (CGImageDestinationFinalize(v13))
      {
        v17 = v5;
        v2 = sub_2146D8A58();
      }

      else
      {
        sub_214499648();
        swift_allocError();
        *v20 = 3;
        swift_willThrow();
      }
    }

    else
    {
      sub_214499648();
      swift_allocError();
      *v19 = 2;
      swift_willThrow();
    }
  }

  else
  {
    sub_214499648();
    swift_allocError();
    *v18 = 1;
    swift_willThrow();
  }

  return v2;
}

void sub_214639F10(CGImage *a1)
{
  v1 = sub_2146D8898();
  v2 = sub_2146D9588();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913040, &qword_21473D440);
  inited = swift_initStackObject();
  v4 = MEMORY[0x277CD3678];
  *(inited + 16) = xmmword_2146E6910;
  v5 = *v4;
  *(inited + 32) = v5;
  *(inited + 40) = 0;
  v6 = *MEMORY[0x277CD35A0];
  *(inited + 48) = *MEMORY[0x277CD35A0];
  *(inited + 56) = 1;
  v16 = v5;
  v15 = v6;
  sub_214046938(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913048, &qword_21473D448);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  sub_2143A6B04();
  v7 = sub_2146D9468();

  v8 = CGImageDestinationCreateWithURL(v1, v2, 1uLL, v7);

  if (v8)
  {
    v9 = swift_initStackObject();
    *(v9 + 16) = xmmword_2146E6910;
    *(v9 + 32) = v16;
    *(v9 + 40) = 0;
    *(v9 + 48) = v15;
    *(v9 + 56) = 1;
    v10 = v16;
    v11 = v15;
    sub_214046938(v9);
    swift_setDeallocating();
    swift_arrayDestroy();
    v12 = sub_2146D9468();

    CGImageDestinationAddImage(v8, a1, v12);

    if (!CGImageDestinationFinalize(v8))
    {
      sub_214499648();
      swift_allocError();
      *v14 = 3;
      swift_willThrow();
    }
  }

  else
  {
    sub_214499648();
    swift_allocError();
    *v13 = 2;
    swift_willThrow();
  }
}

unint64_t sub_21463A218()
{
  result = qword_27C917558;
  if (!qword_27C917558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917558);
  }

  return result;
}

uint64_t static BlastDoorServer.setVideoRestrictions(codecs:)(uint64_t a1)
{
  sub_2146D9B88();
  if (qword_280B35360 != -1)
  {
    swift_once();
  }

  sub_2146D91D8();
  v2 = *(a1 + 16);
  v3 = VTRestrictVideoDecoders();
  result = sub_2146D93B8();
  if (v3 != result)
  {
    sub_2146D9EF8();
    MEMORY[0x2160545D0](0xD000000000000032, 0x80000002147A5F40);
    v5 = sub_2146DA428();
    MEMORY[0x2160545D0](v5);

    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void static BlastDoorServer.setImageRestrictions(allowedImageFormats:enableRawDecoding:enableMetadataParsing:)(uint64_t a1, char a2, char a3)
{
  sub_2146D9B88();
  if (qword_280B35360 != -1)
  {
    swift_once();
  }

  sub_2146D91D8();
  v5 = sub_2146D98E8();
  v6 = CGImageSourceSetAllowableTypes();

  if (v6 != sub_2146D93B8())
  {
    goto LABEL_13;
  }

  v7 = CGImageSourceDisableHardwareDecoding();
  if (v7 != sub_2146D93B8())
  {
    goto LABEL_13;
  }

  v8 = CGImageSourceEnableRestrictedDecoding();
  if (v8 != sub_2146D93B8())
  {
    goto LABEL_13;
  }

  CGEnterLockdownModeForPDF();
  CGEnterLockdownModeForFonts();
  BD_IOSurfaceDisallowForever();
  if ((a2 & 1) != 0 || qword_280B2FD90 == -1)
  {
    if (a3)
    {
      return;
    }

LABEL_9:
    v9 = CGImageSourceDisableMetadataParsing();
    if (v9 == sub_2146D93B8())
    {
      return;
    }

LABEL_13:
    sub_2146DA018();
    __break(1u);
    return;
  }

  swift_once();
  if ((a3 & 1) == 0)
  {
    goto LABEL_9;
  }
}

uint64_t static BlastDoorServer.disableRawDecoding()()
{
  if (qword_280B2FD90 != -1)
  {
    return swift_once();
  }

  return result;
}

uint64_t sub_21463A64C()
{
  sub_2146D9B88();
  sub_214063750();
  v0 = sub_2146D9D18();
  sub_2146D91D8();

  v1 = CGImageSourceDisableRAWDecoding();
  result = sub_2146D93B8();
  if (v1 != result)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

unint64_t sub_21463A71C@<X0>(uint64_t (**a1)(uint64_t a1, char *a2)@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  v3 = sub_214069764(&unk_2826539A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904110, qword_214734DE0);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v4 + 16) = sub_21409A858;
  *(v4 + 24) = v5;
  *(inited + 32) = v4;
  v6 = sub_214069888(&unk_282653A48);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_21409A860;
  *(v7 + 24) = v8;
  *(inited + 40) = v7;
  return sub_214042F80(inited, a1);
}

uint64_t type metadata accessor for FMFShareInvitation()
{
  result = qword_27C917560;
  if (!qword_27C917560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21463A8DC(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for FMFShareInvitation() + 20);

  return sub_2143A009C(a1, v3);
}

uint64_t sub_21463A920@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FMFShareInvitation() + 24));
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *(a1 + 24) = v6;
  *(a1 + 32) = v3;
}

__n128 sub_21463A980(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for FMFShareInvitation() + 24));
  v7 = v6->n128_u64[1];
  v8 = v6[1].n128_u64[1];

  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21463A9EC@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FMFShareInvitation() + 28));
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *(a1 + 24) = v6;
  *(a1 + 32) = v3;
}

__n128 sub_21463AA4C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for FMFShareInvitation() + 28));
  v7 = v6->n128_u64[1];
  v8 = v6[1].n128_u64[1];

  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21463AAB8@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FMFShareInvitation() + 32));
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *(a1 + 24) = v6;
  *(a1 + 32) = v3;
}

__n128 sub_21463AB18(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for FMFShareInvitation() + 32));
  v7 = v6->n128_u64[1];
  v8 = v6[1].n128_u64[1];

  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21463AB84@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = v1 + *(type metadata accessor for FMFShareInvitation() + 20);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  sub_213FB2E54(v7 + *(v8 + 28), v6, &unk_27C9131A0, &unk_2146E9D10);
  v9 = sub_2146D8958();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v6, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v6, v9);
  }

  sub_21407E248(v6);
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21463AD0C()
{
  v1 = v0 + *(type metadata accessor for FMFShareInvitation() + 24);
  if (*(v1 + 24))
  {
    v2 = *(v1 + 16);
    v3 = *(v1 + 24);

    return v2;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21463AD98()
{
  v1 = v0 + *(type metadata accessor for FMFShareInvitation() + 28);
  if (*(v1 + 24))
  {
    v2 = *(v1 + 16);
    v3 = *(v1 + 24);

    return v2;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21463AE24()
{
  v1 = v0 + *(type metadata accessor for FMFShareInvitation() + 32);
  if (*(v1 + 24))
  {
    v2 = *(v1 + 16);
    v3 = *(v1 + 24);

    return v2;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21463AEE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = a1 + *(type metadata accessor for FMFShareInvitation() + 20);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  sub_213FB2E54(v8 + *(v9 + 28), v7, &unk_27C9131A0, &unk_2146E9D10);
  v10 = sub_2146D8958();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v7, 1, v10) != 1)
  {
    return (*(v11 + 32))(a2, v7, v10);
  }

  sub_21407E248(v7);
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21463B070(uint64_t a1, uint64_t a2)
{
  v4 = sub_2146D8958();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v12(v9, v11, v4);
  v13 = a2 + *(type metadata accessor for FMFShareInvitation() + 20);
  sub_21402F904(v9);
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_21463B1B0(uint64_t a1)
{
  v3 = sub_2146D8958();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3);
  v8 = v1 + *(type metadata accessor for FMFShareInvitation() + 20);
  sub_21402F904(v7);
  return (*(v4 + 8))(a1, v3);
}

void (*sub_21463B2AC(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10) - 8) + 64);
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
  v9 = sub_2146D8958();
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
  v15 = *(type metadata accessor for FMFShareInvitation() + 20);
  *(v5 + 12) = v15;
  v16 = v1 + v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  sub_213FB2E54(v16 + *(v17 + 28), v8, &unk_27C9131A0, &unk_2146E9D10);
  if ((*(v11 + 48))(v8, 1, v9) == 1)
  {
    sub_21407E248(v8);
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
    return sub_2143A47E0;
  }

  return result;
}

void (*sub_21463B4DC(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(v3);
  }

  v5 = v4;
  *(a1 + 8) = v4;
  v6 = *(type metadata accessor for FMFShareInvitation() + 20);
  *(a1 + 16) = v6;
  sub_213FB2E54(v1 + v6, v5, &unk_27C9131D0, &qword_2146EAA70);
  return sub_2143A4970;
}

uint64_t sub_21463B59C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for FMFShareInvitation() + 24);
  v4 = *(v3 + 24);
  if (v4)
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21463B634(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2 + *(type metadata accessor for FMFShareInvitation() + 24);
  sub_214031F20(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_21463B6FC(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for FMFShareInvitation() + 24);
  v13[0] = a1;
  v13[1] = a2;
  v6 = *v5;
  v7 = *(v5 + 8);
  v12 = *(v5 + 32);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v5 + 24);

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_21463B850(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(type metadata accessor for FMFShareInvitation() + 24);
  *(v4 + 32) = v5;
  v6 = v1 + v5;
  v7 = *(v6 + 24);
  *(v4 + 24) = v7;
  if (v7)
  {
    *v4 = *(v6 + 16);
    *(v4 + 8) = v7;

    return sub_2145DF574;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21463B934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for FMFShareInvitation() + 24));
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v6;
  *(a2 + 32) = v3;
}

uint64_t sub_21463B998(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for FMFShareInvitation() + 24);
  v8 = *(v7 + 8);
  v9 = *(v7 + 24);

  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  *(v7 + 32) = v6;
  return result;
}

void (*sub_21463BA20(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(type metadata accessor for FMFShareInvitation() + 24);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v7 = *v6;
  v8 = v6[1];
  v10 = v6[2];
  v9 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v7;
  *(v4 + 8) = v8;
  *(v4 + 16) = v10;
  *(v4 + 24) = v9;
  *(v4 + 32) = v6;

  return sub_2145DF578;
}

uint64_t sub_21463BACC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for FMFShareInvitation() + 28);
  v4 = *(v3 + 24);
  if (v4)
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21463BB64(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2 + *(type metadata accessor for FMFShareInvitation() + 28);
  sub_214031F20(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_21463BC2C(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for FMFShareInvitation() + 28);
  v13[0] = a1;
  v13[1] = a2;
  v6 = *v5;
  v7 = *(v5 + 8);
  v12 = *(v5 + 32);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v5 + 24);

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_21463BD80(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(type metadata accessor for FMFShareInvitation() + 28);
  *(v4 + 32) = v5;
  v6 = v1 + v5;
  v7 = *(v6 + 24);
  *(v4 + 24) = v7;
  if (v7)
  {
    *v4 = *(v6 + 16);
    *(v4 + 8) = v7;

    return sub_2145DF574;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21463BE64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for FMFShareInvitation() + 28));
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v6;
  *(a2 + 32) = v3;
}

uint64_t sub_21463BEC8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for FMFShareInvitation() + 28);
  v8 = *(v7 + 8);
  v9 = *(v7 + 24);

  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  *(v7 + 32) = v6;
  return result;
}

void (*sub_21463BF50(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(type metadata accessor for FMFShareInvitation() + 28);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v7 = *v6;
  v8 = v6[1];
  v10 = v6[2];
  v9 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v7;
  *(v4 + 8) = v8;
  *(v4 + 16) = v10;
  *(v4 + 24) = v9;
  *(v4 + 32) = v6;

  return sub_2145DF578;
}

uint64_t sub_21463BFFC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for FMFShareInvitation() + 32);
  v4 = *(v3 + 24);
  if (v4)
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21463C094(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2 + *(type metadata accessor for FMFShareInvitation() + 32);
  sub_214031F20(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_21463C15C(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for FMFShareInvitation() + 32);
  v13[0] = a1;
  v13[1] = a2;
  v6 = *v5;
  v7 = *(v5 + 8);
  v12 = *(v5 + 32);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v5 + 24);

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_21463C2B0(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(type metadata accessor for FMFShareInvitation() + 32);
  *(v4 + 32) = v5;
  v6 = v1 + v5;
  v7 = *(v6 + 24);
  *(v4 + 24) = v7;
  if (v7)
  {
    *v4 = *(v6 + 16);
    *(v4 + 8) = v7;

    return sub_2145D0344;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21463C394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for FMFShareInvitation() + 32));
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v6;
  *(a2 + 32) = v3;
}

uint64_t sub_21463C3F8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for FMFShareInvitation() + 32);
  v8 = *(v7 + 8);
  v9 = *(v7 + 24);

  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  *(v7 + 32) = v6;
  return result;
}

void (*sub_21463C480(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(type metadata accessor for FMFShareInvitation() + 32);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v7 = *v6;
  v8 = v6[1];
  v10 = v6[2];
  v9 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v7;
  *(v4 + 8) = v8;
  *(v4 + 16) = v10;
  *(v4 + 24) = v9;
  *(v4 + 32) = v6;

  return sub_2145D04E0;
}

uint64_t sub_21463C52C(uint64_t a1)
{
  *(a1 + 8) = sub_21463C594(&qword_27C90CA88);
  result = sub_21463C594(&qword_27C90C9A8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21463C594(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FMFShareInvitation();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_21463C600()
{
  type metadata accessor for CloudKitSharingToken();
  if (v0 <= 0x3F)
  {
    sub_2143A5654();
    if (v1 <= 0x3F)
    {
      sub_214426938();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

__n128 sub_21463C6A4@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_213FB77C8(a1, a5);
  v9 = *(a4 + 144);
  *(a5 + 184) = *(a4 + 128);
  *(a5 + 200) = v9;
  v10 = *(a4 + 176);
  *(a5 + 216) = *(a4 + 160);
  *(a5 + 232) = v10;
  v11 = *(a4 + 80);
  *(a5 + 120) = *(a4 + 64);
  *(a5 + 136) = v11;
  v12 = *(a4 + 112);
  *(a5 + 152) = *(a4 + 96);
  *(a5 + 168) = v12;
  v13 = *(a4 + 16);
  *(a5 + 56) = *a4;
  *(a5 + 72) = v13;
  result = *(a4 + 32);
  v15 = *(a4 + 48);
  *(a5 + 88) = result;
  *(a5 + 40) = a2;
  *(a5 + 48) = a3 & 1;
  *(a5 + 104) = v15;
  return result;
}

void *sub_21463C734(_OWORD *a1)
{
  v4 = a1[9];
  v78[8] = a1[8];
  v78[9] = v4;
  v5 = a1[11];
  v78[10] = a1[10];
  v78[11] = v5;
  v6 = a1[5];
  v78[4] = a1[4];
  v78[5] = v6;
  v7 = a1[7];
  v78[6] = a1[6];
  v78[7] = v7;
  v8 = a1[1];
  v78[0] = *a1;
  v78[1] = v8;
  v9 = a1[3];
  v78[2] = a1[2];
  v78[3] = v9;
  v10 = sub_21405FB08(v78);
  if (v10 <= 1)
  {
    if (v10)
    {
      v28 = sub_213FB4918(v78);
      v29 = *(v1 + 40);
      v30 = *(v1 + 48);
      type metadata accessor for PixelBufferEncoder();
      v31 = swift_allocObject();
      *(v31 + 16) = 0;
      *(v31 + 24) = 1;
      v32 = v28[3];
      v34 = *v28;
      v33 = v28[1];
      *(v31 + 64) = v28[2];
      *(v31 + 80) = v32;
      *(v31 + 32) = v34;
      *(v31 + 48) = v33;
      v35 = v28[7];
      v37 = v28[4];
      v36 = v28[5];
      *(v31 + 128) = v28[6];
      *(v31 + 144) = v35;
      *(v31 + 96) = v37;
      *(v31 + 112) = v36;
      v38 = v28[11];
      v40 = v28[8];
      v39 = v28[9];
      *(v31 + 192) = v28[10];
      *(v31 + 208) = v38;
      *(v31 + 160) = v40;
      *(v31 + 176) = v39;
      swift_beginAccess();
      *(v31 + 16) = v29;
      *(v31 + 24) = v30;
      v41 = a1[9];
      v77[8] = a1[8];
      v77[9] = v41;
      v42 = a1[11];
      v77[10] = a1[10];
      v77[11] = v42;
      v43 = a1[5];
      v77[4] = a1[4];
      v77[5] = v43;
      v44 = a1[7];
      v77[6] = a1[6];
      v77[7] = v44;
      v45 = a1[1];
      v77[0] = *a1;
      v77[1] = v45;
      v46 = a1[3];
      v77[2] = a1[2];
      v77[3] = v46;
      v47 = sub_213FB4918(v77);
      sub_214060FB0(v47, &v65);
      v48 = sub_21463D3C4(v31, sub_21463DFBC, sub_21463DFD8, sub_21463E034);
      if (v2)
      {
        swift_setDeallocating();
        v49 = *(v31 + 176);
        v73 = *(v31 + 160);
        v74 = v49;
        v50 = *(v31 + 208);
        v75 = *(v31 + 192);
        v76 = v50;
        v51 = *(v31 + 112);
        v69 = *(v31 + 96);
        v70 = v51;
        v52 = *(v31 + 144);
        v71 = *(v31 + 128);
        v72 = v52;
        v53 = *(v31 + 48);
        v65 = *(v31 + 32);
        v66 = v53;
        v54 = *(v31 + 80);
        v67 = *(v31 + 64);
        v68 = v54;
        sub_214061060(&v65);
        return swift_deallocClassInstance();
      }

      else
      {
        v57 = v48;
        swift_setDeallocating();
        v58 = *(v31 + 176);
        v73 = *(v31 + 160);
        v74 = v58;
        v59 = *(v31 + 208);
        v75 = *(v31 + 192);
        v76 = v59;
        v60 = *(v31 + 112);
        v69 = *(v31 + 96);
        v70 = v60;
        v61 = *(v31 + 144);
        v71 = *(v31 + 128);
        v72 = v61;
        v62 = *(v31 + 48);
        v65 = *(v31 + 32);
        v66 = v62;
        v63 = *(v31 + 80);
        v67 = *(v31 + 64);
        v68 = v63;
        sub_214061060(&v65);
        swift_deallocClassInstance();
        return v57;
      }
    }

    else
    {
      v15 = sub_213FB4918(v78);
      v79 = *v15;
      v64 = v15[1];
      v16 = *(v1 + 40);
      v17 = *(v1 + 48);
      type metadata accessor for ATXEncoder();
      v18 = swift_allocObject();
      *(v18 + 24) = 0;
      *(v18 + 32) = 1;
      sub_2146D9B88();
      if (qword_280B30DD8 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_2146EA710;
      v80 = v17;
      if (v17)
      {
        v20 = v16;
        v21 = 0xE300000000000000;
        v22 = 7104878;
      }

      else
      {
        *&v77[0] = v16;
        v22 = sub_2146D9618();
        v20 = v16;
        v21 = v55;
      }

      *(v19 + 56) = MEMORY[0x277D837D0];
      *(v19 + 64) = sub_213FB2DA0();
      *(v19 + 32) = v22;
      *(v19 + 40) = v21;
      sub_2146D91D8();

      *(v18 + 16) = v79;
      *(v18 + 17) = v64;
      swift_beginAccess();
      *(v18 + 24) = v20;
      *(v18 + 32) = v80;
      v56 = sub_21463D3C4(v18, sub_21463E06C, sub_21463DD78, sub_21463DE34);
      swift_setDeallocating();
      result = swift_deallocClassInstance();
      if (!v2)
      {
        return v56;
      }
    }
  }

  else
  {
    if (v10 == 2)
    {
      v23 = *(v1 + 40);
      v24 = *(v1 + 48);
      type metadata accessor for BitmapEncoder();
      inited = swift_initStackObject();
      *(inited + 16) = 0;
      *(inited + 24) = 1;
      swift_beginAccess();
      *(inited + 16) = v23;
      *(inited + 24) = v24;
      v12 = sub_21463DE50;
      v13 = sub_21463DE88;
      v26 = sub_21463DEEC;
      v11 = inited;
    }

    else
    {
      if (v10 == 3)
      {
        type metadata accessor for JPEGEncoder();
        v11 = swift_initStackObject();
        v12 = sub_21463E06C;
        v13 = sub_21463DF0C;
        v14 = sub_21463DF38;
      }

      else
      {
        type metadata accessor for PNGEncoder();
        v11 = swift_initStackObject();
        v12 = sub_21463E06C;
        v13 = sub_21463DF64;
        v14 = sub_21463DF90;
      }

      v26 = v14;
    }

    return sub_21463D3C4(v11, v12, v13, v26);
  }

  return result;
}

double sub_21463CCCC@<D0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = a1[9];
  v5 = a1[7];
  v86 = a1[8];
  v87 = v4;
  v6 = a1[9];
  v7 = a1[11];
  v88 = a1[10];
  v89 = v7;
  v8 = a1[5];
  v9 = a1[3];
  v82 = a1[4];
  v83 = v8;
  v10 = a1[5];
  v11 = a1[7];
  v84 = a1[6];
  v85 = v11;
  v12 = a1[1];
  v78 = *a1;
  v79 = v12;
  v13 = a1[3];
  v15 = *a1;
  v14 = a1[1];
  v80 = a1[2];
  v81 = v13;
  v90[8] = v86;
  v90[9] = v6;
  v16 = a1[11];
  v90[10] = v88;
  v90[11] = v16;
  v90[4] = v82;
  v90[5] = v10;
  v90[6] = v84;
  v90[7] = v5;
  v90[0] = v15;
  v90[1] = v14;
  v90[2] = v80;
  v90[3] = v9;
  if (sub_21405FB08(v90) == 1)
  {
    sub_213FB4918(v90);
    v17 = v2[3];
    v18 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v17);
    (*(v18 + 24))(v77, sub_21463D924, 0, &type metadata for PixelBufferEncodingConfiguration, v17, v18);
    v73 = v77[8];
    v74 = v77[9];
    v75 = v77[10];
    v76 = v77[11];
    v69 = v77[4];
    v70 = v77[5];
    v71 = v77[6];
    v72 = v77[7];
    v65 = v77[0];
    v66 = v77[1];
    v67 = v77[2];
    v68 = v77[3];
    v26 = sub_214061734(&v65);
    if (v26 == 1)
    {
      sub_2146D9BA8();
      if (qword_280B35360 != -1)
      {
        swift_once();
      }

      sub_2146D91D8();
      v27 = v87;
      v28 = v86;
      v29 = v87;
      a2[8] = v86;
      a2[9] = v27;
      v30 = v89;
      v31 = v88;
      v32 = v89;
      a2[10] = v88;
      a2[11] = v30;
      v33 = v83;
      v34 = v82;
      v35 = v83;
      a2[4] = v82;
      a2[5] = v33;
      v36 = v85;
      v37 = v84;
      v38 = v85;
      a2[6] = v84;
      a2[7] = v36;
      v39 = v79;
      v40 = v78;
      v41 = v79;
      *a2 = v78;
      a2[1] = v39;
      v42 = v81;
      v43 = v80;
      v44 = v81;
      a2[2] = v80;
      a2[3] = v42;
      v61 = v28;
      v62 = v29;
      v63 = v31;
      v64 = v32;
      v57 = v34;
      v58 = v35;
      v59 = v37;
      v60 = v38;
      v53 = v40;
      v54 = v41;
      v55 = v43;
      v56 = v44;
      v45 = sub_213FB4918(&v53);
      sub_214060FB0(v45, &v52);
    }

    else
    {
      v61 = v73;
      v62 = v74;
      v63 = v75;
      v64 = v76;
      v57 = v69;
      v58 = v70;
      v59 = v71;
      v60 = v72;
      v53 = v65;
      v54 = v66;
      v55 = v67;
      v56 = v68;
      sub_2140611C0(&v53);
      v46 = v62;
      a2[8] = v61;
      a2[9] = v46;
      v47 = v64;
      a2[10] = v63;
      a2[11] = v47;
      v48 = v58;
      a2[4] = v57;
      a2[5] = v48;
      v49 = v60;
      a2[6] = v59;
      a2[7] = v49;
      v50 = v54;
      *a2 = v53;
      a2[1] = v50;
      result = *&v55;
      v51 = v56;
      a2[2] = v55;
      a2[3] = v51;
    }
  }

  else
  {
    v19 = v87;
    a2[8] = v86;
    a2[9] = v19;
    v20 = v89;
    a2[10] = v88;
    a2[11] = v20;
    v21 = v83;
    a2[4] = v82;
    a2[5] = v21;
    v22 = v85;
    a2[6] = v84;
    a2[7] = v22;
    v23 = v79;
    *a2 = v78;
    a2[1] = v23;
    v24 = v81;
    a2[2] = v80;
    a2[3] = v24;
    sub_2140616D8(&v78, v77);
  }

  return result;
}

uint64_t sub_21463D020(uint64_t a1, _OWORD *a2)
{
  v4 = a2[9];
  v45[8] = a2[8];
  v45[9] = v4;
  v5 = a2[11];
  v45[10] = a2[10];
  v45[11] = v5;
  v6 = a2[5];
  v45[4] = a2[4];
  v45[5] = v6;
  v7 = a2[7];
  v45[6] = a2[6];
  v45[7] = v7;
  v8 = a2[1];
  v45[0] = *a2;
  v45[1] = v8;
  v9 = a2[3];
  v45[2] = a2[2];
  v45[3] = v9;
  v10 = sub_21405FB08(v45);
  if (v10 <= 1)
  {
    if (v10)
    {
      v19 = sub_213FB4918(v45);
      type metadata accessor for PixelBufferEncoder();
      v20 = swift_allocObject();
      *(v20 + 16) = 0;
      *(v20 + 24) = 1;
      v21 = v19[3];
      v22 = *v19;
      v23 = v19[1];
      *(v20 + 64) = v19[2];
      *(v20 + 80) = v21;
      *(v20 + 32) = v22;
      *(v20 + 48) = v23;
      v24 = v19[7];
      v25 = v19[4];
      v26 = v19[5];
      *(v20 + 128) = v19[6];
      *(v20 + 144) = v24;
      *(v20 + 96) = v25;
      *(v20 + 112) = v26;
      v27 = v19[11];
      v28 = v19[8];
      v29 = v19[9];
      *(v20 + 192) = v19[10];
      *(v20 + 208) = v27;
      *(v20 + 160) = v28;
      *(v20 + 176) = v29;
      v30 = a2[9];
      v44[8] = a2[8];
      v44[9] = v30;
      v31 = a2[11];
      v44[10] = a2[10];
      v44[11] = v31;
      v32 = a2[5];
      v44[4] = a2[4];
      v44[5] = v32;
      v33 = a2[7];
      v44[6] = a2[6];
      v44[7] = v33;
      v34 = a2[1];
      v44[0] = *a2;
      v44[1] = v34;
      v35 = a2[3];
      v44[2] = a2[2];
      v44[3] = v35;
      v36 = sub_213FB4918(v44);
      sub_214060FB0(v36, v43);
      sub_21407CAA4(a1, v20);
      swift_setDeallocating();
      v37 = *(v20 + 176);
      v43[8] = *(v20 + 160);
      v43[9] = v37;
      v38 = *(v20 + 208);
      v43[10] = *(v20 + 192);
      v43[11] = v38;
      v39 = *(v20 + 112);
      v43[4] = *(v20 + 96);
      v43[5] = v39;
      v40 = *(v20 + 144);
      v43[6] = *(v20 + 128);
      v43[7] = v40;
      v41 = *(v20 + 48);
      v43[0] = *(v20 + 32);
      v43[1] = v41;
      v42 = *(v20 + 80);
      v43[2] = *(v20 + 64);
      v43[3] = v42;
      sub_214061060(v43);
    }

    else
    {
      v13 = sub_213FB4918(v45);
      v14 = *v13;
      v15 = v13[1];
      type metadata accessor for ATXEncoder();
      v16 = swift_allocObject();
      *(v16 + 24) = 0;
      *(v16 + 32) = 1;
      *(v16 + 16) = v14;
      *(v16 + 17) = v15;
      sub_21407C9A4(a1, v16);
      swift_setDeallocating();
    }

    return swift_deallocClassInstance();
  }

  else if (v10 == 2)
  {
    type metadata accessor for BitmapEncoder();
    inited = swift_initStackObject();
    *(inited + 16) = 0;
    *(inited + 24) = 1;
    return sub_21407C9E4(a1, inited);
  }

  else if (v10 == 3)
  {
    type metadata accessor for JPEGEncoder();
    v11 = swift_initStackObject();
    return sub_21407CA24(a1, v11);
  }

  else
  {
    type metadata accessor for PNGEncoder();
    v18 = swift_initStackObject();
    return sub_21407CA64(a1, v18);
  }
}

uint64_t sub_21463D2A4()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t sub_21463D2B0@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 200);
  v16[8] = *(v1 + 184);
  v16[9] = v2;
  v3 = *(v1 + 232);
  v16[10] = *(v1 + 216);
  v16[11] = v3;
  v4 = *(v1 + 136);
  v16[4] = *(v1 + 120);
  v16[5] = v4;
  v5 = *(v1 + 168);
  v16[6] = *(v1 + 152);
  v16[7] = v5;
  v6 = *(v1 + 72);
  v16[0] = *(v1 + 56);
  v16[1] = v6;
  v7 = *(v1 + 104);
  v16[2] = *(v1 + 88);
  v16[3] = v7;
  v8 = *(v1 + 200);
  a1[8] = *(v1 + 184);
  a1[9] = v8;
  v9 = *(v1 + 232);
  a1[10] = *(v1 + 216);
  a1[11] = v9;
  v10 = *(v1 + 136);
  a1[4] = *(v1 + 120);
  a1[5] = v10;
  v11 = *(v1 + 168);
  a1[6] = *(v1 + 152);
  a1[7] = v11;
  v12 = *(v1 + 72);
  *a1 = *(v1 + 56);
  a1[1] = v12;
  v13 = *(v1 + 104);
  a1[2] = *(v1 + 88);
  a1[3] = v13;
  return sub_21407CE3C(v16, &v15);
}

void *sub_21463D3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v94 = a1;
  v9 = *(v4 + 24);
  v10 = *(v4 + 32);
  __swift_project_boxed_opaque_existential_1(v4, v9);
  v51[2] = &v94;
  result = (*(v10 + 24))(v93, a2, v51, MEMORY[0x277CC9318], v9, v10);
  if (!v5)
  {
    if (v93[1] >> 60 == 15)
    {
      v48 = a4;
      v49 = 0;
      v12 = *(v4 + 24);
      v13 = *(v4 + 32);
      v14 = __swift_project_boxed_opaque_existential_1(v4, v12);
      v50 = &v47;
      v15 = *(v4 + 200);
      v92[8] = *(v4 + 184);
      v92[9] = v15;
      v16 = *(v4 + 232);
      v92[10] = *(v4 + 216);
      v92[11] = v16;
      v17 = *(v4 + 136);
      v92[4] = *(v4 + 120);
      v92[5] = v17;
      v18 = *(v4 + 168);
      v92[6] = *(v4 + 152);
      v92[7] = v18;
      v19 = *(v4 + 72);
      v92[0] = *(v4 + 56);
      v92[1] = v19;
      v20 = *(v4 + 104);
      v92[2] = *(v4 + 88);
      v92[3] = v20;
      v21 = *(v4 + 200);
      v87 = *(v4 + 184);
      v88 = v21;
      v22 = *(v4 + 232);
      v89 = *(v4 + 216);
      v90 = v22;
      v23 = *(v4 + 136);
      v83 = *(v4 + 120);
      v84 = v23;
      v24 = *(v4 + 168);
      v85 = *(v4 + 152);
      v86 = v24;
      v25 = *(v4 + 72);
      v79 = *(v4 + 56);
      v80 = v25;
      v26 = *(v4 + 104);
      v81 = *(v4 + 88);
      v82 = v26;
      MEMORY[0x28223BE20](v14);
      v46[2] = &v94;
      v27 = *(v13 + 8);
      sub_21407CE3C(v92, &v67);
      v28 = v49;
      v27(v91, &v79, a3, v46, MEMORY[0x277CC9318], v12, v13);
      if (v28)
      {
        v75 = v87;
        v76 = v88;
        v77 = v89;
        v78 = v90;
        v71 = v83;
        v72 = v84;
        v73 = v85;
        v74 = v86;
        v67 = v79;
        v68 = v80;
        v69 = v81;
        v70 = v82;
        return sub_21407CEAC(&v67);
      }

      else
      {
        v75 = v87;
        v76 = v88;
        v77 = v89;
        v78 = v90;
        v71 = v83;
        v72 = v84;
        v73 = v85;
        v74 = v86;
        v67 = v79;
        v68 = v80;
        v69 = v81;
        v70 = v82;
        sub_21407CEAC(&v67);
        if (v91[1] >> 60 == 15)
        {
          v29 = *(v4 + 24);
          v30 = *(v4 + 32);
          v31 = __swift_project_boxed_opaque_existential_1(v4, v29);
          v49 = v46;
          v32 = *(v4 + 200);
          v66[8] = *(v4 + 184);
          v66[9] = v32;
          v33 = *(v4 + 232);
          v66[10] = *(v4 + 216);
          v66[11] = v33;
          v34 = *(v4 + 136);
          v66[4] = *(v4 + 120);
          v66[5] = v34;
          v35 = *(v4 + 168);
          v66[6] = *(v4 + 152);
          v66[7] = v35;
          v36 = *(v4 + 72);
          v66[0] = *(v4 + 56);
          v66[1] = v36;
          v37 = *(v4 + 104);
          v66[2] = *(v4 + 88);
          v66[3] = v37;
          v38 = *(v4 + 200);
          v61 = *(v4 + 184);
          v62 = v38;
          v39 = *(v4 + 232);
          v63 = *(v4 + 216);
          v64 = v39;
          v40 = *(v4 + 136);
          v57 = *(v4 + 120);
          v58 = v40;
          v41 = *(v4 + 168);
          v59 = *(v4 + 152);
          v60 = v41;
          v42 = *(v4 + 72);
          v53 = *(v4 + 56);
          v54 = v42;
          v43 = *(v4 + 104);
          v55 = *(v4 + 88);
          v56 = v43;
          MEMORY[0x28223BE20](v31);
          v45[2] = &v94;
          v44 = *(v30 + 16);
          sub_21407CE3C(v66, v52);
          v44(v65, &v53, v48, v45, MEMORY[0x277CC9318], v29, v30);
          v52[8] = v61;
          v52[9] = v62;
          v52[10] = v63;
          v52[11] = v64;
          v52[4] = v57;
          v52[5] = v58;
          v52[6] = v59;
          v52[7] = v60;
          v52[0] = v53;
          v52[1] = v54;
          v52[2] = v55;
          v52[3] = v56;
          sub_21407CEAC(v52);
          if (v65[1] >> 60 == 15)
          {
            return 0;
          }

          else
          {
            return v65[0];
          }
        }

        else
        {
          return v91[0];
        }
      }
    }

    else
    {
      return v93[0];
    }
  }

  return result;
}

void sub_21463D854(CGImage *a1@<X0>, _OWORD *a2@<X8>)
{
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  sub_21409B984(Width, Height);
  if (!v2)
  {
    *&v9 = sub_21408F798(v7);
    *(&v9 + 1) = v8;
    sub_2146808C0(&v9, 0);
    v10 = v9;
    sub_214680494(&v10, a1, 1, Width, Height);
    *a2 = v10;
  }
}

double sub_21463D924@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_2144AC218(a1, v10);
  nullsub_1(v10);
  v3 = v18;
  a2[8] = v17;
  a2[9] = v3;
  v4 = v20;
  a2[10] = v19;
  a2[11] = v4;
  v5 = v14;
  a2[4] = v13;
  a2[5] = v5;
  v6 = v16;
  a2[6] = v15;
  a2[7] = v6;
  v7 = v10[1];
  *a2 = v10[0];
  a2[1] = v7;
  result = *&v11;
  v9 = v12;
  a2[2] = v11;
  a2[3] = v9;
  return result;
}

__n128 __swift_memcpy248_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_21463D9E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 248))
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

uint64_t sub_21463DA2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 248) = 1;
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

    *(result + 248) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}