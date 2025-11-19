uint64_t sub_2519C04F8()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

BOOL sub_2519C0590(char *a1, char *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  return sub_2519C0558(*a1, *a2);
}

uint64_t sub_2519C05A8(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_2519C9AD4(*v1);
}

uint64_t sub_2519C05CC(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  return sub_2519C0568(a1, *v2);
}

uint64_t sub_2519C05EC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2519C06C0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2519C06F8()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2519C0738()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2519C0778()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2519C07B0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2519C07E8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2519C0824()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[8];

  v2 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

__n128 sub_2519C08A8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_2519C0914()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2519C094C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  if (v3)
  {
    v4 = *(a1 + 24);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v3;
  a2[1] = v4;
  return sub_2519E5FC0(v3);
}

__n128 sub_2519C0970(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_2519C097C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_2519CECC4();
  v3 = sub_2519F0B78();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v0 + v6, v3);

  return MEMORY[0x2821FE8E8](v0, v6 + v7, v5 | 7);
}

uint64_t sub_2519C14E0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2519C1554()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2519C1610()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2519C164C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  swift_getAssociatedTypeWitness();
  sub_2519CECC4();
  v3 = sub_2519F0B78();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 48) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v0 + v6, v3);

  return MEMORY[0x2821FE8E8](v0, v6 + v7, v5 | 7);
}

uint64_t sub_2519C1710(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t SubjectDescriptor.debugDescription.getter()
{
  v1 = *v0;
  if (v0[2])
  {
    v4 = 64;
    v2 = MEMORY[0x253089C80](v1, MEMORY[0x277D83B88]);
    MEMORY[0x253089BD0](v2);
  }

  else
  {
    v4 = 63;
    MEMORY[0x253089BD0](v1, v0[1]);
  }

  return v4;
}

uint64_t sub_2519C17C8(uint64_t a1)
{
  v2 = sub_2519C5AAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2519C1804(uint64_t a1)
{
  v2 = sub_2519C5AAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2519C1840()
{
  if (*v0)
  {
    return 0x73644965646F6ELL;
  }

  else
  {
    return 0x65727574706163;
  }
}

uint64_t sub_2519C1874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65727574706163 && a2 == 0xE700000000000000;
  if (v6 || (sub_2519F0F68() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73644965646F6ELL && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2519F0F68();

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

uint64_t sub_2519C1950(uint64_t a1)
{
  v2 = sub_2519C5B00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2519C198C(uint64_t a1)
{
  v2 = sub_2519C5B00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2519C19C8(uint64_t a1)
{
  v2 = sub_2519C5A58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2519C1A04(uint64_t a1)
{
  v2 = sub_2519C5A58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SubjectDescriptor.encode(to:)(void *a1)
{
  v3 = MEMORY[0x277D84538];
  sub_2519C6A88(0, &qword_27F46CD90, sub_2519C5A58, &type metadata for SubjectDescriptor.NodeIdsCodingKeys, MEMORY[0x277D84538]);
  v25 = *(v4 - 8);
  v26 = v4;
  v5 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v24 = &v22 - v6;
  sub_2519C6A88(0, &qword_27F46CDA0, sub_2519C5AAC, &type metadata for SubjectDescriptor.CaptureCodingKeys, v3);
  v8 = v7;
  v23 = *(v7 - 8);
  v9 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v22 - v10;
  sub_2519C6A88(0, &qword_27F46CDB0, sub_2519C5B00, &type metadata for SubjectDescriptor.CodingKeys, v3);
  v28 = *(v12 - 8);
  v29 = v12;
  v13 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v15 = &v22 - v14;
  v16 = v1[1];
  v27 = *v1;
  v22 = v16;
  LOBYTE(v3) = *(v1 + 16);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2519C5B00();
  sub_2519F1158();
  if (v3)
  {
    v32 = 1;
    sub_2519C5A58();
    v18 = v24;
    v19 = v29;
    sub_2519F0EA8();
    v30 = v27;
    sub_2519C8888(0, &qword_27F46CDC0, MEMORY[0x277D83B88], MEMORY[0x277D83940]);
    sub_2519C5B98();
    v20 = v26;
    sub_2519F0EF8();
    (*(v25 + 8))(v18, v20);
  }

  else
  {
    v31 = 0;
    sub_2519C5AAC();
    v19 = v29;
    sub_2519F0EA8();
    sub_2519F0ED8();
    (*(v23 + 8))(v11, v8);
  }

  return (*(v28 + 8))(v15, v19);
}

uint64_t SubjectDescriptor.hash(into:)()
{
  v1 = *v0;
  if (v0[2])
  {
    MEMORY[0x25308A270](1);
    result = MEMORY[0x25308A270](*(v1 + 16));
    v3 = *(v1 + 16);
    if (v3)
    {
      v4 = (v1 + 32);
      do
      {
        v5 = *v4++;
        result = MEMORY[0x25308A270](v5);
        --v3;
      }

      while (v3);
    }
  }

  else
  {
    v6 = v0[1];
    MEMORY[0x25308A270](0);

    return sub_2519F09F8();
  }

  return result;
}

uint64_t SubjectDescriptor.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_2519F1098();
  if (v3)
  {
    MEMORY[0x25308A270](1);
    MEMORY[0x25308A270](*(v1 + 16));
    v4 = *(v1 + 16);
    if (v4)
    {
      v5 = (v1 + 32);
      do
      {
        v6 = *v5++;
        MEMORY[0x25308A270](v6);
        --v4;
      }

      while (v4);
    }
  }

  else
  {
    MEMORY[0x25308A270](0);
    sub_2519F09F8();
  }

  return sub_2519F10D8();
}

uint64_t SubjectDescriptor.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = MEMORY[0x277D844C8];
  sub_2519C6A88(0, &qword_27F46CDD0, sub_2519C5A58, &type metadata for SubjectDescriptor.NodeIdsCodingKeys, MEMORY[0x277D844C8]);
  v5 = *(v4 - 8);
  v42 = v4;
  v43 = v5;
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v44 = &v39 - v7;
  sub_2519C6A88(0, &qword_27F46CDD8, sub_2519C5AAC, &type metadata for SubjectDescriptor.CaptureCodingKeys, v3);
  v9 = v8;
  v41 = *(v8 - 8);
  v10 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v12 = &v39 - v11;
  sub_2519C6A88(0, &qword_27F46CDE0, sub_2519C5B00, &type metadata for SubjectDescriptor.CodingKeys, v3);
  v14 = v13;
  v46 = *(v13 - 8);
  v15 = (*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v17 = &v39 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2519C5B00();
  v19 = v47;
  sub_2519F1148();
  if (v19)
  {
    goto LABEL_7;
  }

  v20 = v44;
  v21 = v45;
  v47 = a1;
  v22 = v17;
  v23 = sub_2519F0E78();
  if (*(v23 + 16) != 1)
  {
    v27 = sub_2519F0CE8();
    swift_allocError();
    v28 = v14;
    v30 = v29;
    sub_2519C5C78();
    v32 = *(v31 + 48);
    *v30 = &type metadata for SubjectDescriptor;
    sub_2519F0E18();
    sub_2519F0CC8();
    (*(*(v27 - 8) + 104))(v30, *MEMORY[0x277D84160], v27);
    swift_willThrow();
    (*(v46 + 8))(v22, v28);
    swift_unknownObjectRelease();
    a1 = v47;
LABEL_7:
    v33 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v33);
  }

  v24 = *(v23 + 32);
  if (v24)
  {
    LODWORD(v41) = *(v23 + 32);
    v50 = 1;
    sub_2519C5A58();
    sub_2519F0E08();
    v40 = v22;
    sub_2519C8888(0, &qword_27F46CDC0, MEMORY[0x277D83B88], MEMORY[0x277D83940]);
    sub_2519C5D34();
    v25 = v42;
    sub_2519F0E68();
    v26 = v46;
    (*(v43 + 8))(v20, v25);
    (*(v26 + 8))(v40, v14);
    swift_unknownObjectRelease();
    v36 = 0;
    v37 = v48;
    v24 = v41;
  }

  else
  {
    v49 = 0;
    sub_2519C5AAC();
    sub_2519F0E08();
    v40 = v22;
    v35 = v9;
    v37 = sub_2519F0E48();
    v36 = v38;
    (*(v41 + 8))(v12, v35);
    (*(v46 + 8))(v40, v14);
    swift_unknownObjectRelease();
  }

  *v21 = v37;
  *(v21 + 8) = v36;
  *(v21 + 16) = v24;
  v33 = v47;
  return __swift_destroy_boxed_opaque_existential_1(v33);
}

uint64_t sub_2519C2510()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_2519F1098();
  if (v3)
  {
    MEMORY[0x25308A270](1);
    MEMORY[0x25308A270](*(v1 + 16));
    v4 = *(v1 + 16);
    if (v4)
    {
      v5 = (v1 + 32);
      do
      {
        v6 = *v5++;
        MEMORY[0x25308A270](v6);
        --v4;
      }

      while (v4);
    }
  }

  else
  {
    MEMORY[0x25308A270](0);
    sub_2519F09F8();
  }

  return sub_2519F10D8();
}

uint64_t sub_2519C25B4()
{
  v1 = *v0;
  if (v0[2])
  {
    v4 = 64;
    v2 = MEMORY[0x253089C80](v1, MEMORY[0x277D83B88]);
    MEMORY[0x253089BD0](v2);
  }

  else
  {
    v4 = 63;
    MEMORY[0x253089BD0](v1, v0[1]);
  }

  return v4;
}

uint64_t PredicateDescriptor.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[2];
  if (*(v0 + 24) <= 1u)
  {
    if (!*(v0 + 24))
    {
      v8 = 63;
      MEMORY[0x253089BD0](v1, v0[1]);
      return v8;
    }

    v3 = 62;
LABEL_7:
    v8 = v3;
    if (v2)
    {
      v4 = v0[1];
    }

    else
    {
      v4 = 0;
    }

    if (v2)
    {
      v5 = v0[2];
    }

    else
    {
      v5 = 0xE000000000000000;
    }

    MEMORY[0x253089BD0](v4, v5);

    v6 = MEMORY[0x253089C80](v1, MEMORY[0x277D84A28]);
    MEMORY[0x253089BD0](v6);

    return v8;
  }

  if (*(v0 + 24) == 2)
  {
    v3 = 58;
    goto LABEL_7;
  }

  return 28265;
}

uint64_t sub_2519C2710(uint64_t a1)
{
  v2 = sub_2519C61B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2519C274C(uint64_t a1)
{
  v2 = sub_2519C61B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2519C2788(uint64_t a1)
{
  v2 = sub_2519C62AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2519C27C4(uint64_t a1)
{
  v2 = sub_2519C62AC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2519C2800()
{
  v1 = 0x65727574706163;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x7475626972747461;
  }

  if (*v0)
  {
    v1 = 0x6E497365646F6ELL;
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

uint64_t sub_2519C288C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2519C8310(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2519C28C0(uint64_t a1)
{
  v2 = sub_2519C6300();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2519C28FC(uint64_t a1)
{
  v2 = sub_2519C6300();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2519C2944@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_2519C2974(uint64_t a1)
{
  v2 = sub_2519C6258();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2519C29B0(uint64_t a1)
{
  v2 = sub_2519C6258();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2519C29EC()
{
  v1 = *v0;
  sub_2519F1098();
  MEMORY[0x25308A270](v1);
  return sub_2519F10D8();
}

uint64_t sub_2519C2A34()
{
  v1 = *v0;
  sub_2519F1098();
  MEMORY[0x25308A270](v1);
  return sub_2519F10D8();
}

uint64_t sub_2519C2A78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_2519F0F68() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2519F0F68();

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

uint64_t sub_2519C2B44(uint64_t a1)
{
  v2 = sub_2519C6204();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2519C2B80(uint64_t a1)
{
  v2 = sub_2519C6204();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PredicateDescriptor.encode(to:)(void *a1)
{
  v3 = MEMORY[0x277D84538];
  sub_2519C6A88(0, &qword_27F46CE00, sub_2519C61B0, &type metadata for PredicateDescriptor.AttributeTypesCodingKeys, MEMORY[0x277D84538]);
  v45 = *(v4 - 8);
  v46 = v4;
  v5 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v44 = &v37 - v6;
  sub_2519C6A88(0, &qword_27F46CE10, sub_2519C6204, &type metadata for PredicateDescriptor.RelationshipTypesCodingKeys, v3);
  v42 = *(v7 - 8);
  v43 = v7;
  v8 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v41 = &v37 - v9;
  sub_2519C6A88(0, &qword_27F46CE20, sub_2519C6258, &type metadata for PredicateDescriptor.NodesInCodingKeys, v3);
  v39 = *(v10 - 8);
  v40 = v10;
  v11 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v13 = &v37 - v12;
  sub_2519C6A88(0, &qword_27F46CE30, sub_2519C62AC, &type metadata for PredicateDescriptor.CaptureCodingKeys, v3);
  v15 = v14;
  v38 = *(v14 - 8);
  v16 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v18 = &v37 - v17;
  sub_2519C6A88(0, &qword_27F46CE40, sub_2519C6300, &type metadata for PredicateDescriptor.CodingKeys, v3);
  v20 = *(v19 - 8);
  v49 = v19;
  v50 = v20;
  v21 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v22 = *v1;
  v47 = v1[1];
  v48 = v22;
  v37 = v1[2];
  v23 = *(v1 + 24);
  v24 = a1[3];
  v25 = a1[4];
  v26 = a1;
  v28 = &v37 - v27;
  __swift_project_boxed_opaque_existential_1(v26, v24);
  sub_2519C6300();
  sub_2519F1158();
  if (v23 > 1)
  {
    if (v23 != 2)
    {
      LOBYTE(v53) = 1;
      sub_2519C6258();
      v35 = v49;
      sub_2519F0EA8();
      (*(v39 + 8))(v13, v40);
      return (*(v50 + 8))(v28, v35);
    }

    LOBYTE(v53) = 3;
    sub_2519C61B0();
    v30 = v44;
    v29 = v49;
    sub_2519F0EA8();
    v53 = v48;
    v52 = 0;
    sub_2519C8888(0, &qword_27F46CE50, MEMORY[0x277D84A28], MEMORY[0x277D83940]);
    sub_2519C6354();
    v31 = v46;
    v32 = v51;
    sub_2519F0EF8();
    if (!v32)
    {
      LOBYTE(v53) = 1;
      sub_2519F0EB8();
    }

    v33 = v45;
    goto LABEL_12;
  }

  if (v23)
  {
    LOBYTE(v53) = 2;
    sub_2519C6204();
    v30 = v41;
    v29 = v49;
    sub_2519F0EA8();
    v53 = v48;
    v52 = 0;
    sub_2519C8888(0, &qword_27F46CE50, MEMORY[0x277D84A28], MEMORY[0x277D83940]);
    sub_2519C6354();
    v31 = v43;
    v34 = v51;
    sub_2519F0EF8();
    if (!v34)
    {
      LOBYTE(v53) = 1;
      sub_2519F0EB8();
    }

    v33 = v42;
LABEL_12:
    (*(v33 + 8))(v30, v31);
    return (*(v50 + 8))(v28, v29);
  }

  LOBYTE(v53) = 0;
  sub_2519C62AC();
  v29 = v49;
  sub_2519F0EA8();
  sub_2519F0ED8();
  (*(v38 + 8))(v18, v15);
  return (*(v50 + 8))(v28, v29);
}

uint64_t PredicateDescriptor.hash(into:)()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  if (*(v0 + 24) > 1u)
  {
    if (*(v0 + 24) != 2)
    {
      return MEMORY[0x25308A270](1);
    }

    MEMORY[0x25308A270](3);
    MEMORY[0x25308A270](*(v2 + 16));
    v4 = *(v2 + 16);
    if (v4)
    {
      v5 = (v2 + 32);
      do
      {
        v6 = *v5++;
        MEMORY[0x25308A290](v6);
        --v4;
      }

      while (v4);
    }

    if (!v3)
    {
      return sub_2519F10B8();
    }

LABEL_9:
    sub_2519F10B8();
    goto LABEL_10;
  }

  if (*(v0 + 24))
  {
    MEMORY[0x25308A270](2);
    MEMORY[0x25308A270](*(v2 + 16));
    v8 = *(v2 + 16);
    if (v8)
    {
      v9 = (v2 + 32);
      do
      {
        v10 = *v9++;
        MEMORY[0x25308A290](v10);
        --v8;
      }

      while (v8);
    }

    if (!v3)
    {
      return sub_2519F10B8();
    }

    goto LABEL_9;
  }

  MEMORY[0x25308A270](0);
LABEL_10:

  return sub_2519F09F8();
}

uint64_t PredicateDescriptor.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  sub_2519F1098();
  PredicateDescriptor.hash(into:)();
  return sub_2519F10D8();
}

uint64_t PredicateDescriptor.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = MEMORY[0x277D844C8];
  sub_2519C6A88(0, &qword_27F46CE60, sub_2519C61B0, &type metadata for PredicateDescriptor.AttributeTypesCodingKeys, MEMORY[0x277D844C8]);
  v60 = v4;
  v63 = *(v4 - 8);
  v5 = (*(v63 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v65 = &v57 - v6;
  sub_2519C6A88(0, &qword_27F46CE68, sub_2519C6204, &type metadata for PredicateDescriptor.RelationshipTypesCodingKeys, v3);
  v61 = *(v7 - 8);
  v62 = v7;
  v8 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v68 = &v57 - v9;
  sub_2519C6A88(0, &qword_27F46CE70, sub_2519C6258, &type metadata for PredicateDescriptor.NodesInCodingKeys, v3);
  v59 = v10;
  v67 = *(v10 - 8);
  v11 = (*(v67 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v66 = &v57 - v12;
  sub_2519C6A88(0, &qword_27F46CE78, sub_2519C62AC, &type metadata for PredicateDescriptor.CaptureCodingKeys, v3);
  v14 = v13;
  v58 = *(v13 - 8);
  v15 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v17 = &v57 - v16;
  sub_2519C6A88(0, &qword_27F46CE80, sub_2519C6300, &type metadata for PredicateDescriptor.CodingKeys, v3);
  v19 = v18;
  v69 = *(v18 - 1);
  v20 = (*(v69 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v22 = &v57 - v21;
  v23 = a1[3];
  v24 = a1[4];
  v71 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_2519C6300();
  v25 = v70;
  sub_2519F1148();
  if (!v25)
  {
    v26 = v66;
    v27 = v67;
    v57 = v14;
    v28 = v68;
    v70 = v22;
    v29 = sub_2519F0E78();
    v30 = *(v29 + 16);
    if (v30)
    {
      v31 = *(v29 + 32);
      if (v30 == 1 && v31 != 4)
      {
        if (*(v29 + 32) > 1u)
        {
          v67 = v29;
          if (v31 == 2)
          {
            LOBYTE(v73) = 2;
            sub_2519C6204();
            sub_2519F0E08();
            sub_2519C8888(0, &qword_27F46CE50, MEMORY[0x277D84A28], MEMORY[0x277D83940]);
            v72 = 0;
            sub_2519C63E8();
            v42 = v62;
            sub_2519F0E68();
            v43 = v69;
            v53 = v73;
            v72 = 1;
            v54 = v28;
            v49 = sub_2519F0E28();
            v50 = v55;
            (*(v61 + 8))(v54, v42);
            (*(v43 + 8))(v70, v19);
            swift_unknownObjectRelease();
            v51 = 1;
          }

          else
          {
            LOBYTE(v73) = 3;
            sub_2519C61B0();
            sub_2519F0E08();
            sub_2519C8888(0, &qword_27F46CE50, MEMORY[0x277D84A28], MEMORY[0x277D83940]);
            v72 = 0;
            sub_2519C63E8();
            v44 = v60;
            v45 = v65;
            sub_2519F0E68();
            v46 = v69;
            v68 = v19;
            v53 = v73;
            v72 = 1;
            v49 = sub_2519F0E28();
            v50 = v56;
            (*(v63 + 8))(v45, v44);
            (*(v46 + 8))(v70, v68);
            swift_unknownObjectRelease();
            v51 = 2;
          }
        }

        else
        {
          v40 = v70;
          if (!*(v29 + 32))
          {
            LOBYTE(v73) = 0;
            sub_2519C62AC();
            sub_2519F0E08();
            v41 = v57;
            v47 = sub_2519F0E48();
            v49 = v48;
            (*(v58 + 8))(v17, v41);
            (*(v69 + 8))(v70, v19);
            swift_unknownObjectRelease();
            v50 = 0;
            v51 = 0;
            v52 = v64;
            v53 = v47;
LABEL_18:
            *v52 = v53;
            *(v52 + 8) = v49;
            *(v52 + 16) = v50;
            *(v52 + 24) = v51;
            return __swift_destroy_boxed_opaque_existential_1(v71);
          }

          LOBYTE(v73) = 1;
          sub_2519C6258();
          sub_2519F0E08();
          (*(v27 + 8))(v26, v59);
          (*(v69 + 8))(v40, v19);
          swift_unknownObjectRelease();
          v53 = 0;
          v49 = 0;
          v50 = 0;
          v51 = 3;
        }

        v52 = v64;
        goto LABEL_18;
      }
    }

    v33 = sub_2519F0CE8();
    swift_allocError();
    v35 = v34;
    sub_2519C5C78();
    v37 = *(v36 + 48);
    *v35 = &type metadata for PredicateDescriptor;
    v38 = v70;
    sub_2519F0E18();
    sub_2519F0CC8();
    (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D84160], v33);
    swift_willThrow();
    (*(v69 + 8))(v38, v19);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v71);
}

uint64_t sub_2519C3D60()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  sub_2519F1098();
  PredicateDescriptor.hash(into:)();
  return sub_2519F10D8();
}

uint64_t sub_2519C3DC0()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  sub_2519F1098();
  PredicateDescriptor.hash(into:)();
  return sub_2519F10D8();
}

uint64_t ObjectDescriptor.debugDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  if (v2 <= 1)
  {
    v7 = 63;
    MEMORY[0x253089BD0](v1, v0[1]);
  }

  else
  {
    if (v2 == 2)
    {
      v7 = 64;
      v4 = MEMORY[0x277D83B88];
    }

    else
    {
      if (v2 == 3)
      {
        v3 = 38;
      }

      else
      {
        v3 = 124;
      }

      v7 = v3;
      v4 = MEMORY[0x277D837D0];
    }

    v5 = MEMORY[0x253089C80](v1, v4);
    MEMORY[0x253089BD0](v5);
  }

  return v7;
}

uint64_t sub_2519C3ED4()
{
  v1 = *v0;
  v2 = 0x7470614365646F6ELL;
  v3 = 0x73644965646F6ELL;
  v4 = 0x6C6C4174786574;
  if (v1 != 3)
  {
    v4 = 0x796E4174786574;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x70614365756C6176;
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

uint64_t sub_2519C3F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2519C8484(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2519C3FB4(uint64_t a1)
{
  v2 = sub_2519C69A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2519C3FF0(uint64_t a1)
{
  v2 = sub_2519C69A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2519C402C(uint64_t a1)
{
  v2 = sub_2519C694C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2519C4068(uint64_t a1)
{
  v2 = sub_2519C694C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2519C40A4(uint64_t a1)
{
  v2 = sub_2519C68A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2519C40E0(uint64_t a1)
{
  v2 = sub_2519C68A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2519C411C(uint64_t a1)
{
  v2 = sub_2519C6850();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2519C4158(uint64_t a1)
{
  v2 = sub_2519C6850();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2519C4194(uint64_t a1)
{
  v2 = sub_2519C67FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2519C41D0(uint64_t a1)
{
  v2 = sub_2519C67FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2519C420C()
{
  sub_2519F1098();
  MEMORY[0x25308A270](0);
  return sub_2519F10D8();
}

uint64_t sub_2519C4250()
{
  sub_2519F1098();
  MEMORY[0x25308A270](0);
  return sub_2519F10D8();
}

uint64_t sub_2519C4290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2519F0F68();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2519C4310(uint64_t a1)
{
  v2 = sub_2519C68F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2519C434C(uint64_t a1)
{
  v2 = sub_2519C68F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ObjectDescriptor.encode(to:)(void *a1)
{
  v3 = MEMORY[0x277D84538];
  sub_2519C6A88(0, &qword_27F46CE90, sub_2519C67FC, &type metadata for ObjectDescriptor.TextAnyCodingKeys, MEMORY[0x277D84538]);
  v51 = *(v4 - 8);
  v52 = v4;
  v5 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v50 = &v43 - v6;
  sub_2519C6A88(0, &qword_27F46CEA0, sub_2519C6850, &type metadata for ObjectDescriptor.TextAllCodingKeys, v3);
  v48 = *(v7 - 8);
  v49 = v7;
  v8 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v47 = &v43 - v9;
  sub_2519C6A88(0, &qword_27F46CEB0, sub_2519C68A4, &type metadata for ObjectDescriptor.NodeIdsCodingKeys, v3);
  v45 = *(v10 - 8);
  v46 = v10;
  v11 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v44 = &v43 - v12;
  sub_2519C6A88(0, &qword_27F46CEC0, sub_2519C68F8, &type metadata for ObjectDescriptor.ValueCaptureCodingKeys, v3);
  v55 = v13;
  v43 = *(v13 - 8);
  v14 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v54 = &v43 - v15;
  sub_2519C6A88(0, &qword_27F46CED0, sub_2519C694C, &type metadata for ObjectDescriptor.NodeCaptureCodingKeys, v3);
  v17 = v16;
  v53 = *(v16 - 8);
  v18 = (*(v53 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v20 = &v43 - v19;
  sub_2519C6A88(0, &qword_27F46CEE0, sub_2519C69A0, &type metadata for ObjectDescriptor.CodingKeys, v3);
  v22 = *(v21 - 8);
  v58 = v21;
  v59 = v22;
  v23 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v25 = &v43 - v24;
  v26 = v1[1];
  v57 = *v1;
  v27 = *(v1 + 16);
  v28 = a1;
  v30 = a1[3];
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(v28, v30);
  sub_2519C69A0();
  v56 = v25;
  sub_2519F1158();
  if (v27 <= 1)
  {
    v36 = v20;
    v38 = v53;
    v37 = v54;
    v39 = v55;
    if (v27)
    {
      LOBYTE(v60) = 1;
      sub_2519C68F8();
      v40 = v37;
      v32 = v58;
      v33 = v56;
      sub_2519F0EA8();
      v41 = v39;
      sub_2519F0ED8();
      v38 = v43;
    }

    else
    {
      LOBYTE(v60) = 0;
      sub_2519C694C();
      v40 = v36;
      v32 = v58;
      v33 = v56;
      sub_2519F0EA8();
      v41 = v17;
      sub_2519F0ED8();
    }

    (*(v38 + 8))(v40, v41);
  }

  else
  {
    if (v27 == 2)
    {
      LOBYTE(v60) = 2;
      sub_2519C68A4();
      v31 = v44;
      v32 = v58;
      v33 = v56;
      sub_2519F0EA8();
      v60 = v57;
      sub_2519C8888(0, &qword_27F46CDC0, MEMORY[0x277D83B88], MEMORY[0x277D83940]);
      sub_2519C5B98();
      v34 = v46;
      sub_2519F0EF8();
      v35 = v45;
    }

    else if (v27 == 3)
    {
      LOBYTE(v60) = 3;
      sub_2519C6850();
      v31 = v47;
      v32 = v58;
      v33 = v56;
      sub_2519F0EA8();
      v60 = v57;
      sub_2519C8888(0, &qword_27F46CEF0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
      sub_2519C69F4();
      v34 = v49;
      sub_2519F0EF8();
      v35 = v48;
    }

    else
    {
      LOBYTE(v60) = 4;
      sub_2519C67FC();
      v31 = v50;
      v32 = v58;
      v33 = v56;
      sub_2519F0EA8();
      v60 = v57;
      sub_2519C8888(0, &qword_27F46CEF0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
      sub_2519C69F4();
      v34 = v52;
      sub_2519F0EF8();
      v35 = v51;
    }

    (*(v35 + 8))(v31, v34);
  }

  return (*(v59 + 8))(v33, v32);
}

uint64_t ObjectDescriptor.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  if (v2 <= 1)
  {
    v8 = *(v0 + 8);
    if (*(v0 + 16))
    {
      v9 = 1;
    }

    else
    {
      v9 = *(v0 + 16);
    }

    MEMORY[0x25308A270](v9);

    return sub_2519F09F8();
  }

  else if (v2 == 2)
  {
    MEMORY[0x25308A270](2);
    result = MEMORY[0x25308A270](v1[2]);
    v10 = v1[2];
    if (v10)
    {
      v11 = v1 + 4;
      do
      {
        v12 = *v11++;
        result = MEMORY[0x25308A270](v12);
        --v10;
      }

      while (v10);
    }
  }

  else if (v2 == 3)
  {
    MEMORY[0x25308A270](3);
    result = MEMORY[0x25308A270](v1[2]);
    v4 = v1[2];
    if (v4)
    {
      v5 = v1 + 5;
      do
      {
        v6 = *(v5 - 1);
        v7 = *v5;

        sub_2519F09F8();

        v5 += 2;
        --v4;
      }

      while (v4);
    }
  }

  else
  {
    MEMORY[0x25308A270](4);
    result = MEMORY[0x25308A270](v1[2]);
    v13 = v1[2];
    if (v13)
    {
      v14 = v1 + 5;
      do
      {
        v15 = *(v14 - 1);
        v16 = *v14;

        sub_2519F09F8();

        v14 += 2;
        --v13;
      }

      while (v13);
    }
  }

  return result;
}

uint64_t ObjectDescriptor.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_2519F1098();
  ObjectDescriptor.hash(into:)();
  return sub_2519F10D8();
}

uint64_t ObjectDescriptor.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v3 = MEMORY[0x277D844C8];
  sub_2519C6A88(0, &qword_27F46CF00, sub_2519C67FC, &type metadata for ObjectDescriptor.TextAnyCodingKeys, MEMORY[0x277D844C8]);
  v70 = v4;
  v73 = *(v4 - 8);
  v5 = (*(v73 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v78 = &v64 - v6;
  sub_2519C6A88(0, &qword_27F46CF08, sub_2519C6850, &type metadata for ObjectDescriptor.TextAllCodingKeys, v3);
  v8 = *(v7 - 8);
  v71 = v7;
  v72 = v8;
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v74 = &v64 - v10;
  sub_2519C6A88(0, &qword_27F46CF10, sub_2519C68A4, &type metadata for ObjectDescriptor.NodeIdsCodingKeys, v3);
  v12 = *(v11 - 8);
  v68 = v11;
  v69 = v12;
  v13 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v77 = &v64 - v14;
  sub_2519C6A88(0, &qword_27F46CF18, sub_2519C68F8, &type metadata for ObjectDescriptor.ValueCaptureCodingKeys, v3);
  v16 = *(v15 - 8);
  v66 = v15;
  v67 = v16;
  v17 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v76 = &v64 - v18;
  sub_2519C6A88(0, &qword_27F46CF20, sub_2519C694C, &type metadata for ObjectDescriptor.NodeCaptureCodingKeys, v3);
  v20 = v19;
  v65 = *(v19 - 8);
  v21 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v23 = &v64 - v22;
  sub_2519C6A88(0, &qword_27F46CF28, sub_2519C69A0, &type metadata for ObjectDescriptor.CodingKeys, v3);
  v25 = v24;
  v79 = *(v24 - 8);
  v26 = (*(v79 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v28 = &v64 - v27;
  v30 = a1[3];
  v29 = a1[4];
  v81 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v30);
  sub_2519C69A0();
  v31 = v80;
  sub_2519F1148();
  if (!v31)
  {
    v32 = v76;
    v33 = v77;
    v34 = v78;
    v64 = v25;
    v80 = v28;
    v35 = sub_2519F0E78();
    if (*(v35 + 16) == 1)
    {
      v36 = *(v35 + 32);
      if (v36 != 5)
      {
        if (*(v35 + 32) <= 1u)
        {
          v78 = v35;
          if (v36)
          {
            LOBYTE(v82) = 1;
            sub_2519C68F8();
            v55 = v64;
            v56 = v80;
            sub_2519F0E08();
            v57 = v66;
            v60 = sub_2519F0E48();
            v58 = v32;
            v59 = v79;
            v62 = v63;
            (*(v67 + 8))(v58, v57);
            (*(v59 + 8))(v56, v55);
          }

          else
          {
            LOBYTE(v82) = 0;
            sub_2519C694C();
            sub_2519F0E08();
            v60 = sub_2519F0E48();
            v62 = v61;
            (*(v65 + 8))(v23, v20);
            (*(v79 + 8))(v80, v64);
          }

          swift_unknownObjectRelease();
        }

        else
        {
          v37 = v75;
          if (v36 == 2)
          {
            v78 = v35;
            LOBYTE(v82) = 2;
            sub_2519C68A4();
            v50 = v64;
            v51 = v80;
            sub_2519F0E08();
            sub_2519C8888(0, &qword_27F46CDC0, MEMORY[0x277D83B88], MEMORY[0x277D83940]);
            sub_2519C5D34();
            v52 = v68;
            sub_2519F0E68();
            (*(v69 + 8))(v33, v52);
            (*(v79 + 8))(v51, v50);
            swift_unknownObjectRelease();
            v62 = 0;
            v60 = v82;
LABEL_18:
            *v37 = v60;
            *(v37 + 8) = v62;
            *(v37 + 16) = v36;
            return __swift_destroy_boxed_opaque_existential_1(v81);
          }

          v38 = v64;
          if (v36 == 3)
          {
            LOBYTE(v82) = 3;
            sub_2519C6850();
            v39 = v74;
            v40 = v80;
            sub_2519F0E08();
            sub_2519C8888(0, &qword_27F46CEF0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
            sub_2519C6AF0();
            v41 = v71;
            sub_2519F0E68();
            (*(v72 + 8))(v39, v41);
            (*(v79 + 8))(v40, v38);
          }

          else
          {
            LOBYTE(v82) = 4;
            sub_2519C67FC();
            v53 = v80;
            sub_2519F0E08();
            sub_2519C8888(0, &qword_27F46CEF0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
            sub_2519C6AF0();
            v54 = v70;
            sub_2519F0E68();
            (*(v73 + 8))(v34, v54);
            (*(v79 + 8))(v53, v38);
          }

          swift_unknownObjectRelease();
          v62 = 0;
          v60 = v82;
        }

        v37 = v75;
        goto LABEL_18;
      }
    }

    v42 = sub_2519F0CE8();
    swift_allocError();
    v44 = v43;
    sub_2519C5C78();
    v46 = *(v45 + 48);
    *v44 = &type metadata for ObjectDescriptor;
    v47 = v64;
    v48 = v80;
    sub_2519F0E18();
    sub_2519F0CC8();
    (*(*(v42 - 8) + 104))(v44, *MEMORY[0x277D84160], v42);
    swift_willThrow();
    (*(v79 + 8))(v48, v47);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v81);
}

uint64_t sub_2519C579C()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_2519F1098();
  ObjectDescriptor.hash(into:)();
  return sub_2519F10D8();
}

uint64_t sub_2519C57F4()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_2519F1098();
  ObjectDescriptor.hash(into:)();
  return sub_2519F10D8();
}

uint64_t _s17HealthOntologyKit17SubjectDescriptorO2eeoiySbAC_ACtFZ_0(uint64_t result, uint64_t *a2)
{
  v3 = *result;
  v2 = *(result + 8);
  v4 = *a2;
  v5 = *(a2 + 16);
  if ((*(result + 16) & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      v10 = *result;
      if (v3 != v4 || v2 != a2[1])
      {
        v12 = sub_2519F0F68();
        sub_2519C87E8();
        sub_2519C87E8();
        sub_2519C87F4();
        sub_2519C87F4();
        return v12 & 1;
      }

      sub_2519C87E8();
      sub_2519C87E8();
      sub_2519C87F4();
      goto LABEL_18;
    }

LABEL_23:
    v15 = *a2;
    v16 = a2[1];
    sub_2519C87E8();
    sub_2519C87E8();
    sub_2519C87F4();
    sub_2519C87F4();
    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    goto LABEL_23;
  }

  v6 = *(v3 + 16);
  if (v6 != *(v4 + 16))
  {
    goto LABEL_23;
  }

  if (v6)
  {
    v7 = v3 == v4;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
LABEL_9:
    v8 = *a2;
    v9 = a2[1];
    sub_2519C87E8();
    sub_2519C87E8();
    sub_2519C87F4();
LABEL_18:
    sub_2519C87F4();
    return 1;
  }

  v13 = (v3 + 32);
  v14 = (v4 + 32);
  while (v6)
  {
    if (*v13 != *v14)
    {
      goto LABEL_23;
    }

    ++v13;
    ++v14;
    if (!--v6)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2519C5A58()
{
  result = qword_27F46CD98;
  if (!qword_27F46CD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CD98);
  }

  return result;
}

unint64_t sub_2519C5AAC()
{
  result = qword_27F46CDA8;
  if (!qword_27F46CDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CDA8);
  }

  return result;
}

unint64_t sub_2519C5B00()
{
  result = qword_27F46CDB8;
  if (!qword_27F46CDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CDB8);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2519C5B98()
{
  result = qword_27F46CDC8;
  if (!qword_27F46CDC8)
  {
    sub_2519C8888(255, &qword_27F46CDC0, MEMORY[0x277D83B88], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CDC8);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_2519C5C78()
{
  if (!qword_27F46CDE8)
  {
    sub_2519C5CE8();
    sub_2519F0CD8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F46CDE8);
    }
  }
}

unint64_t sub_2519C5CE8()
{
  result = qword_27F46CDF0;
  if (!qword_27F46CDF0)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_27F46CDF0);
  }

  return result;
}

unint64_t sub_2519C5D34()
{
  result = qword_27F46CDF8;
  if (!qword_27F46CDF8)
  {
    sub_2519C8888(255, &qword_27F46CDC0, MEMORY[0x277D83B88], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CDF8);
  }

  return result;
}

BOOL _s17HealthOntologyKit19PredicateDescriptorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v42[0] = v4;
  v42[1] = v3;
  v42[2] = v5;
  v43 = v6;
  v44 = v7;
  v45 = v8;
  v46 = v9;
  v47 = v10;
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      if (v10 == 3 && !(v8 | v7 | v9))
      {
        goto LABEL_38;
      }

      goto LABEL_35;
    }

    if (v10 != 2)
    {
LABEL_35:
      sub_2519C86C4(v7, v8, v9, v10);
      v21 = v4;
      v22 = v3;
      v23 = v5;
      v24 = v6;
LABEL_36:
      sub_2519C86C4(v21, v22, v23, v24);
      sub_2519C8730(v42);
      return 0;
    }

    v15 = *(v4 + 16);
    if (v15 == *(v7 + 16))
    {
      if (!v15 || v4 == v7)
      {
LABEL_16:
        if (!v5)
        {
          v30 = v9;
          sub_2519C86C4(v7, v8, v9, 2u);
          v31 = v4;
          v32 = v3;
          v33 = 2;
LABEL_44:
          sub_2519C86C4(v31, v32, 0, v33);

          sub_2519C8730(v42);
          if (v30)
          {

            return 0;
          }

          return 1;
        }

        if (v9)
        {
          if (v3 == v8 && v5 == v9)
          {
            sub_2519C86C4(v7, v3, v5, 2u);
            v11 = v4;
            v12 = v3;
            v13 = v5;
            v14 = 2;
            goto LABEL_7;
          }

          v34 = v7;
          v35 = v8;
          v36 = v9;
          v37 = sub_2519F0F68();
          sub_2519C86C4(v34, v35, v36, 2u);
          sub_2519C86C4(v4, v3, v5, 2u);
          sub_2519C8730(v42);
          return (v37 & 1) != 0;
        }
      }

      else
      {
        v16 = (v4 + 32);
        v17 = (v7 + 32);
        while (*v16 == *v17)
        {
          ++v16;
          ++v17;
          if (!--v15)
          {
            goto LABEL_16;
          }
        }
      }
    }

    sub_2519C86C4(v7, v8, v9, 2u);
    v21 = v4;
    v22 = v3;
    v23 = v5;
    v24 = 2;
    goto LABEL_36;
  }

  if (v6)
  {
    if (v10 != 1)
    {
      goto LABEL_35;
    }

    v18 = *(v4 + 16);
    if (v18 != *(v7 + 16))
    {
      goto LABEL_40;
    }

    if (v18 && v4 != v7)
    {
      v19 = (v4 + 32);
      v20 = (v7 + 32);
      while (*v19 == *v20)
      {
        ++v19;
        ++v20;
        if (!--v18)
        {
          goto LABEL_28;
        }
      }

      goto LABEL_40;
    }

LABEL_28:
    if (v5)
    {
      if (v9)
      {
        if (v3 == v8 && v5 == v9)
        {
          sub_2519C86C4(v7, v3, v5, 1u);
          v11 = v4;
          v12 = v3;
          v13 = v5;
          v14 = 1;
          goto LABEL_7;
        }

        v38 = v7;
        v39 = v8;
        v40 = v9;
        v41 = sub_2519F0F68();
        sub_2519C86C4(v38, v39, v40, 1u);
        sub_2519C86C4(v4, v3, v5, 1u);
        sub_2519C8730(v42);
        result = 1;
        if (v41)
        {
          return result;
        }

        return 0;
      }

LABEL_40:
      sub_2519C86C4(v7, v8, v9, 1u);
      v21 = v4;
      v22 = v3;
      v23 = v5;
      v24 = 1;
      goto LABEL_36;
    }

    v30 = v9;
    sub_2519C86C4(v7, v8, v9, 1u);
    v31 = v4;
    v32 = v3;
    v33 = 1;
    goto LABEL_44;
  }

  if (v10)
  {
    goto LABEL_35;
  }

  if (v4 == v7 && v3 == v8)
  {
    sub_2519C86C4(v4, v3, v9, 0);
    v11 = v4;
    v12 = v3;
    v13 = v5;
    v14 = 0;
LABEL_7:
    sub_2519C86C4(v11, v12, v13, v14);
LABEL_38:
    sub_2519C8730(v42);
    return 1;
  }

  v26 = v7;
  v27 = v8;
  v28 = v9;
  v29 = sub_2519F0F68();
  sub_2519C86C4(v26, v27, v28, 0);
  sub_2519C86C4(v4, v3, v5, 0);
  sub_2519C8730(v42);
  return v29 & 1;
}

unint64_t sub_2519C61B0()
{
  result = qword_27F46CE08;
  if (!qword_27F46CE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CE08);
  }

  return result;
}

unint64_t sub_2519C6204()
{
  result = qword_27F46CE18;
  if (!qword_27F46CE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CE18);
  }

  return result;
}

unint64_t sub_2519C6258()
{
  result = qword_27F46CE28;
  if (!qword_27F46CE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CE28);
  }

  return result;
}

unint64_t sub_2519C62AC()
{
  result = qword_27F46CE38;
  if (!qword_27F46CE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CE38);
  }

  return result;
}

unint64_t sub_2519C6300()
{
  result = qword_27F46CE48;
  if (!qword_27F46CE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CE48);
  }

  return result;
}

unint64_t sub_2519C6354()
{
  result = qword_27F46CE58;
  if (!qword_27F46CE58)
  {
    sub_2519C8888(255, &qword_27F46CE50, MEMORY[0x277D84A28], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CE58);
  }

  return result;
}

unint64_t sub_2519C63E8()
{
  result = qword_27F46CE88;
  if (!qword_27F46CE88)
  {
    sub_2519C8888(255, &qword_27F46CE50, MEMORY[0x277D84A28], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CE88);
  }

  return result;
}

uint64_t _s17HealthOntologyKit16ObjectDescriptorO2eeoiySbAC_ACtFZ_0(uint64_t result, uint64_t a2)
{
  v3 = *result;
  v2 = *(result + 8);
  v4 = *(result + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 <= 1)
  {
    if (*(result + 16))
    {
      if (v7 == 1)
      {
        v19 = *result;
        if (v3 != v6 || v2 != v5)
        {
          v8 = sub_2519F0F68();
          sub_2519C863C(v6, v5, 1u);
          sub_2519C863C(v3, v2, 1u);
          sub_2519C8680(v3, v2, 1u);
          v9 = v6;
          v10 = v5;
          v11 = 1;
          goto LABEL_29;
        }

        sub_2519C863C(v19, v2, 1u);
        sub_2519C863C(v3, v2, 1u);
        sub_2519C8680(v3, v2, 1u);
        v16 = v3;
        v17 = v2;
        v18 = 1;
        goto LABEL_34;
      }
    }

    else if (!*(a2 + 16))
    {
      v12 = *result;
      if (v3 != v6 || v2 != v5)
      {
        v8 = sub_2519F0F68();
        sub_2519C863C(v6, v5, 0);
        sub_2519C863C(v3, v2, 0);
        sub_2519C8680(v3, v2, 0);
        v9 = v6;
        v10 = v5;
        v11 = 0;
        goto LABEL_29;
      }

      sub_2519C863C(v12, v2, 0);
      sub_2519C863C(v3, v2, 0);
      sub_2519C8680(v3, v2, 0);
      v16 = v3;
      v17 = v2;
      v18 = 0;
      goto LABEL_34;
    }

LABEL_30:
    sub_2519C863C(*a2, *(a2 + 8), v7);
    sub_2519C863C(v3, v2, v4);
    sub_2519C8680(v3, v2, v4);
    v21 = v6;
    v22 = v5;
    v23 = v7;
LABEL_31:
    sub_2519C8680(v21, v22, v23);
    return 0;
  }

  if (v4 != 2)
  {
    if (v4 == 3)
    {
      if (v7 == 3)
      {
        v8 = sub_2519DC684(*result, *a2);
        sub_2519C863C(v6, v5, 3u);
        sub_2519C863C(v3, v2, 3u);
        sub_2519C8680(v3, v2, 3u);
        v9 = v6;
        v10 = v5;
        v11 = 3;
LABEL_29:
        sub_2519C8680(v9, v10, v11);
        return v8 & 1;
      }
    }

    else if (v7 == 4)
    {
      v8 = sub_2519DC684(*result, *a2);
      sub_2519C863C(v6, v5, 4u);
      sub_2519C863C(v3, v2, 4u);
      sub_2519C8680(v3, v2, 4u);
      v9 = v6;
      v10 = v5;
      v11 = 4;
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  if (v7 != 2)
  {
    goto LABEL_30;
  }

  v14 = *(v3 + 16);
  if (v14 != *(v6 + 16))
  {
LABEL_39:
    sub_2519C863C(*a2, *(a2 + 8), 2u);
    sub_2519C863C(v3, v2, 2u);
    sub_2519C8680(v3, v2, 2u);
    v21 = v6;
    v22 = v5;
    v23 = 2;
    goto LABEL_31;
  }

  if (v14)
  {
    v15 = v3 == v6;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
LABEL_20:
    sub_2519C863C(*a2, *(a2 + 8), 2u);
    sub_2519C863C(v3, v2, 2u);
    sub_2519C8680(v3, v2, 2u);
    v16 = v6;
    v17 = v5;
    v18 = 2;
LABEL_34:
    sub_2519C8680(v16, v17, v18);
    return 1;
  }

  v24 = (v3 + 32);
  v25 = (v6 + 32);
  while (v14)
  {
    if (*v24 != *v25)
    {
      goto LABEL_39;
    }

    ++v24;
    ++v25;
    if (!--v14)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2519C67FC()
{
  result = qword_27F46CE98;
  if (!qword_27F46CE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CE98);
  }

  return result;
}

unint64_t sub_2519C6850()
{
  result = qword_27F46CEA8;
  if (!qword_27F46CEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CEA8);
  }

  return result;
}

unint64_t sub_2519C68A4()
{
  result = qword_27F46CEB8;
  if (!qword_27F46CEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CEB8);
  }

  return result;
}

unint64_t sub_2519C68F8()
{
  result = qword_27F46CEC8;
  if (!qword_27F46CEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CEC8);
  }

  return result;
}

unint64_t sub_2519C694C()
{
  result = qword_27F46CED8;
  if (!qword_27F46CED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CED8);
  }

  return result;
}

unint64_t sub_2519C69A0()
{
  result = qword_27F46CEE8;
  if (!qword_27F46CEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CEE8);
  }

  return result;
}

unint64_t sub_2519C69F4()
{
  result = qword_27F46CEF8;
  if (!qword_27F46CEF8)
  {
    sub_2519C8888(255, &qword_27F46CEF0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CEF8);
  }

  return result;
}

void sub_2519C6A88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_2519C6AF0()
{
  result = qword_27F46CF30;
  if (!qword_27F46CF30)
  {
    sub_2519C8888(255, &qword_27F46CEF0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CF30);
  }

  return result;
}

unint64_t sub_2519C6B88()
{
  result = qword_27F46CF38;
  if (!qword_27F46CF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CF38);
  }

  return result;
}

unint64_t sub_2519C6BE0()
{
  result = qword_27F46CF40;
  if (!qword_27F46CF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CF40);
  }

  return result;
}

unint64_t sub_2519C6C38()
{
  result = qword_27F46CF48;
  if (!qword_27F46CF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CF48);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2519C6CAC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_2519C6CF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17HealthOntologyKit19PredicateDescriptorO(uint64_t a1)
{
  if ((*(a1 + 24) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_2519C6D88(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 25))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 24);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2519C6DD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_2519C6E18(uint64_t result, unsigned int a2)
{
  v2 = a2 - 3;
  if (a2 >= 3)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 3;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_2519C6E50(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2519C6E98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_2519C6F04(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2519C6F24(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ObjectDescriptor.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ObjectDescriptor.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PredicateDescriptor.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PredicateDescriptor.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ConceptAttributeValueRequestError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ConceptAttributeValueRequestError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for PlaceholderRow(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for PlaceholderRow(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_2519C74FC()
{
  result = qword_27F46CF50;
  if (!qword_27F46CF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CF50);
  }

  return result;
}

unint64_t sub_2519C7554()
{
  result = qword_27F46CF58;
  if (!qword_27F46CF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CF58);
  }

  return result;
}

unint64_t sub_2519C75AC()
{
  result = qword_27F46CF60;
  if (!qword_27F46CF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CF60);
  }

  return result;
}

unint64_t sub_2519C7604()
{
  result = qword_27F46CF68;
  if (!qword_27F46CF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CF68);
  }

  return result;
}

unint64_t sub_2519C765C()
{
  result = qword_27F46CF70;
  if (!qword_27F46CF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CF70);
  }

  return result;
}

unint64_t sub_2519C76B4()
{
  result = qword_27F46CF78;
  if (!qword_27F46CF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CF78);
  }

  return result;
}

unint64_t sub_2519C770C()
{
  result = qword_27F46CF80;
  if (!qword_27F46CF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CF80);
  }

  return result;
}

unint64_t sub_2519C7764()
{
  result = qword_27F46CF88;
  if (!qword_27F46CF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CF88);
  }

  return result;
}

unint64_t sub_2519C77BC()
{
  result = qword_27F46CF90;
  if (!qword_27F46CF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CF90);
  }

  return result;
}

unint64_t sub_2519C7814()
{
  result = qword_27F46CF98;
  if (!qword_27F46CF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CF98);
  }

  return result;
}

unint64_t sub_2519C786C()
{
  result = qword_27F46CFA0;
  if (!qword_27F46CFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CFA0);
  }

  return result;
}

unint64_t sub_2519C78C4()
{
  result = qword_27F46CFA8;
  if (!qword_27F46CFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CFA8);
  }

  return result;
}

unint64_t sub_2519C791C()
{
  result = qword_27F46CFB0;
  if (!qword_27F46CFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CFB0);
  }

  return result;
}

unint64_t sub_2519C7974()
{
  result = qword_27F46CFB8;
  if (!qword_27F46CFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CFB8);
  }

  return result;
}

unint64_t sub_2519C79CC()
{
  result = qword_27F46CFC0;
  if (!qword_27F46CFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CFC0);
  }

  return result;
}

unint64_t sub_2519C7A24()
{
  result = qword_27F46CFC8;
  if (!qword_27F46CFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CFC8);
  }

  return result;
}

unint64_t sub_2519C7A7C()
{
  result = qword_27F46CFD0;
  if (!qword_27F46CFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CFD0);
  }

  return result;
}

unint64_t sub_2519C7AD4()
{
  result = qword_27F46CFD8;
  if (!qword_27F46CFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CFD8);
  }

  return result;
}

unint64_t sub_2519C7B2C()
{
  result = qword_27F46CFE0;
  if (!qword_27F46CFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CFE0);
  }

  return result;
}

unint64_t sub_2519C7B84()
{
  result = qword_27F46CFE8;
  if (!qword_27F46CFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CFE8);
  }

  return result;
}

unint64_t sub_2519C7BDC()
{
  result = qword_27F46CFF0;
  if (!qword_27F46CFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CFF0);
  }

  return result;
}

unint64_t sub_2519C7C34()
{
  result = qword_27F46CFF8;
  if (!qword_27F46CFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CFF8);
  }

  return result;
}

unint64_t sub_2519C7C8C()
{
  result = qword_27F46D000;
  if (!qword_27F46D000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D000);
  }

  return result;
}

unint64_t sub_2519C7CE4()
{
  result = qword_27F46D008;
  if (!qword_27F46D008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D008);
  }

  return result;
}

unint64_t sub_2519C7D3C()
{
  result = qword_27F46D010;
  if (!qword_27F46D010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D010);
  }

  return result;
}

unint64_t sub_2519C7D94()
{
  result = qword_27F46D018;
  if (!qword_27F46D018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D018);
  }

  return result;
}

unint64_t sub_2519C7DEC()
{
  result = qword_27F46D020;
  if (!qword_27F46D020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D020);
  }

  return result;
}

unint64_t sub_2519C7E44()
{
  result = qword_27F46D028;
  if (!qword_27F46D028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D028);
  }

  return result;
}

unint64_t sub_2519C7E9C()
{
  result = qword_27F46D030;
  if (!qword_27F46D030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D030);
  }

  return result;
}

unint64_t sub_2519C7EF4()
{
  result = qword_27F46D038;
  if (!qword_27F46D038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D038);
  }

  return result;
}

unint64_t sub_2519C7F4C()
{
  result = qword_27F46D040;
  if (!qword_27F46D040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D040);
  }

  return result;
}

unint64_t sub_2519C7FA4()
{
  result = qword_27F46D048;
  if (!qword_27F46D048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D048);
  }

  return result;
}

unint64_t sub_2519C7FFC()
{
  result = qword_27F46D050;
  if (!qword_27F46D050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D050);
  }

  return result;
}

unint64_t sub_2519C8054()
{
  result = qword_27F46D058;
  if (!qword_27F46D058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D058);
  }

  return result;
}

unint64_t sub_2519C80AC()
{
  result = qword_27F46D060;
  if (!qword_27F46D060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D060);
  }

  return result;
}

unint64_t sub_2519C8104()
{
  result = qword_27F46D068;
  if (!qword_27F46D068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D068);
  }

  return result;
}

unint64_t sub_2519C815C()
{
  result = qword_27F46D070;
  if (!qword_27F46D070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D070);
  }

  return result;
}

unint64_t sub_2519C81B4()
{
  result = qword_27F46D078;
  if (!qword_27F46D078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D078);
  }

  return result;
}

unint64_t sub_2519C820C()
{
  result = qword_27F46D080;
  if (!qword_27F46D080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D080);
  }

  return result;
}

unint64_t sub_2519C8264()
{
  result = qword_27F46D088;
  if (!qword_27F46D088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D088);
  }

  return result;
}

unint64_t sub_2519C82BC()
{
  result = qword_27F46D090;
  if (!qword_27F46D090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D090);
  }

  return result;
}

uint64_t sub_2519C8310(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65727574706163 && a2 == 0xE700000000000000;
  if (v4 || (sub_2519F0F68() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E497365646F6ELL && a2 == 0xE700000000000000 || (sub_2519F0F68() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002519F6750 == a2 || (sub_2519F0F68() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEE00736570795465)
  {

    return 3;
  }

  else
  {
    v6 = sub_2519F0F68();

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

uint64_t sub_2519C8484(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7470614365646F6ELL && a2 == 0xEB00000000657275;
  if (v4 || (sub_2519F0F68() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x70614365756C6176 && a2 == 0xEC00000065727574 || (sub_2519F0F68() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73644965646F6ELL && a2 == 0xE700000000000000 || (sub_2519F0F68() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6C4174786574 && a2 == 0xE700000000000000 || (sub_2519F0F68() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x796E4174786574 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_2519F0F68();

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

uint64_t sub_2519C863C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

uint64_t sub_2519C8680(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

uint64_t sub_2519C86C4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 - 1 < 2)
  {
  }

  if (!a4)
  {
  }

  return result;
}

uint64_t sub_2519C8730(uint64_t a1)
{
  sub_2519C878C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2519C878C()
{
  if (!qword_27F46D098)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F46D098);
    }
  }
}

__n128 __swift_memcpy20_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_2519C8814(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2519C8834(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 20) = v3;
  return result;
}

void sub_2519C8888(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t HKConceptIdentifier.ontologyConceptIdentifier.getter@<X0>(void *a1@<X8>)
{
  v5 = [v1 rawIdentifier];
  v3 = sub_2519F0F18();
  MEMORY[0x253089BD0](v3);

  result = MEMORY[0x253089BD0](41, 0xE100000000000000);
  *a1 = v5;
  a1[1] = 0x2820656E6F6ELL;
  a1[2] = 0xE600000000000000;
  return result;
}

id HKConceptIdentifier.init(_:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];

  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v3 initWithRawIdentifier_];
}

id OntologyConceptIdentifier.healthKitConceptIdentifier.getter()
{
  v1 = *v0;
  v2 = objc_allocWithZone(MEMORY[0x277CCD1D0]);

  return [v2 initWithRawIdentifier_];
}

uint64_t ConceptAttributeValue.concept.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
}

uint64_t ConceptAttributeValue.attribute.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 24);
  *(a1 + 16) = v2;
}

uint64_t ConceptAttributeValue.init(concept:attribute:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *(a1 + 16);
  v9 = *(a2 + 16);
  *a5 = *a1;
  *(a5 + 16) = v8;
  *(a5 + 24) = *a2;
  *(a5 + 40) = v9;
  v10 = type metadata accessor for ConceptAttributeValue();
  v11 = *(*(a4 - 8) + 32);
  v12 = a5 + *(v10 + 48);

  return v11(v12, a3, a4);
}

uint64_t sub_2519C8C0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x747065636E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_2519F0F68() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xE900000000000065 || (sub_2519F0F68() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2519F0F68();

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

uint64_t sub_2519C8D28(char a1)
{
  if (!a1)
  {
    return 0x747065636E6F63;
  }

  if (a1 == 1)
  {
    return 0x7475626972747461;
  }

  return 0x65756C6176;
}

uint64_t sub_2519C8D98(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_2519C8D28(*v1);
}

uint64_t sub_2519C8DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_2519C8C0C(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_2519C8DDC@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  result = sub_2519CA560();
  *a2 = result;
  return result;
}

uint64_t sub_2519C8E10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2519C8E64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t ConceptAttributeValue.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v19[0] = *(a2 + 32);
  v19[1] = v4;
  type metadata accessor for ConceptAttributeValue.CodingKeys();
  swift_getWitnessTable();
  v6 = sub_2519F0F08();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6, v9);
  v11 = v19 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = v19[2];
  sub_2519F1158();
  v14 = *(v13 + 2);
  v20 = *v13;
  v21 = v14;
  v22 = 0;
  sub_2519C9118();

  v15 = v19[3];
  sub_2519F0EF8();
  if (v15)
  {
  }

  else
  {

    v16 = *(v13 + 5);
    v20 = *(v13 + 24);
    v21 = v16;
    v22 = 1;
    sub_2519C916C();

    sub_2519F0EF8();

    v18 = *(a2 + 48);
    LOBYTE(v20) = 2;
    sub_2519F0EF8();
  }

  return (*(v7 + 8))(v11, v6);
}

unint64_t sub_2519C9118()
{
  result = qword_27F46D0A8;
  if (!qword_27F46D0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D0A8);
  }

  return result;
}

unint64_t sub_2519C916C()
{
  result = qword_27F46D0B0;
  if (!qword_27F46D0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D0B0);
  }

  return result;
}

uint64_t ConceptAttributeValue.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a4;
  v31 = *(a2 - 8);
  v7 = *(v31 + 64);
  MEMORY[0x28223BE20]();
  v35 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ConceptAttributeValue.CodingKeys();
  swift_getWitnessTable();
  v37 = sub_2519F0E88();
  v34 = *(v37 - 8);
  v9 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v29 - v10;
  v36 = a2;
  v33 = a3;
  v12 = type metadata accessor for ConceptAttributeValue();
  v30 = *(v12 - 8);
  v13 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v15 = &v29 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v38 = v11;
  v18 = v39;
  sub_2519F1148();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(v40);
  }

  v39 = v12;
  v20 = v34;
  v19 = v35;
  v21 = v15;
  v22 = v36;
  v43 = 0;
  sub_2519C95DC();
  v23 = v37;
  sub_2519F0E68();
  v24 = v42;
  *v21 = v41;
  *(v21 + 2) = v24;
  v43 = 1;
  sub_2519C9630();
  sub_2519F0E68();
  v25 = v42;
  *(v21 + 24) = v41;
  *(v21 + 5) = v25;
  LOBYTE(v41) = 2;
  sub_2519F0E68();
  (*(v20 + 8))(v38, v23);
  v26 = v39;
  (*(v31 + 32))(&v21[*(v39 + 48)], v19, v22);
  v27 = v30;
  (*(v30 + 16))(v32, v21, v26);
  __swift_destroy_boxed_opaque_existential_1(v40);
  return (*(v27 + 8))(v21, v26);
}

unint64_t sub_2519C95DC()
{
  result = qword_27F46D0B8;
  if (!qword_27F46D0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D0B8);
  }

  return result;
}

unint64_t sub_2519C9630()
{
  result = qword_27F46D0C0;
  if (!qword_27F46D0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D0C0);
  }

  return result;
}

uint64_t static ConceptAttributeValue<>.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[3] != a2[3])
  {
    return 0;
  }

  v2 = *(type metadata accessor for ConceptAttributeValue() + 48);
  return sub_2519F0968() & 1;
}

uint64_t sub_2519C974C(void *a1, void *a2, void *a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  return static ConceptAttributeValue<>.== infix(_:_:)(a1, a2);
}

uint64_t ConceptAttributeValueRequest.identifier.getter()
{
  v0 = sub_2519CA568();

  return v0;
}

uint64_t ConceptAttributeValueRequest.concept.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v2;
}

uint64_t ConceptAttributeValueRequest.attribute.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 40);
  *(a1 + 16) = v2;
}

__n128 ConceptAttributeValueRequest.init(identifier:concept:attribute:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a3 + 16);
  v6 = a4[1].n128_u64[0];
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = *a3;
  *(a5 + 32) = v5;
  result = *a4;
  *(a5 + 40) = *a4;
  *(a5 + 56) = v6;
  return result;
}

uint64_t ConceptAttributeValueRequest.response(value:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v6 = a2[2];
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1, a1);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v3[2];
  v12 = v3[3];
  v13 = v3[4];
  v14 = v3[5];
  v15 = v3[6];
  v16 = v3[7];
  v22 = v15;
  (*(v7 + 16))(v10);
  v17 = a2[3];
  v18 = a2[4];
  *a3 = v11;
  *(a3 + 1) = v12;
  *(a3 + 2) = v13;
  *(a3 + 3) = v14;
  *(a3 + 4) = v22;
  *(a3 + 5) = v16;
  v19 = type metadata accessor for ConceptAttributeValue();
  (*(v7 + 32))(&a3[*(v19 + 48)], v10, v6);
}

BOOL static ConceptAttributeValueRequest.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[5];
  v4 = a2[2];
  v5 = a2[5];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    if (v2 != v4)
    {
      return 0;
    }

    return v3 == v5;
  }

  v7 = sub_2519F0F68();
  result = 0;
  if ((v7 & 1) != 0 && v2 == v4)
  {
    return v3 == v5;
  }

  return result;
}

uint64_t sub_2519C99AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_2519F0F68() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x747065636E6F63 && a2 == 0xE700000000000000 || (sub_2519F0F68() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v6 = sub_2519F0F68();

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

uint64_t sub_2519C9AD4(unsigned __int8 a1)
{
  sub_2519F1098();
  MEMORY[0x25308A270](a1);
  return sub_2519F10D8();
}

uint64_t sub_2519C9B1C(char a1)
{
  if (!a1)
  {
    return 0x696669746E656469;
  }

  if (a1 == 1)
  {
    return 0x747065636E6F63;
  }

  return 0x7475626972747461;
}

uint64_t sub_2519C9B7C(uint64_t a1, void *a2, uint64_t a3, void (*a4)(_BYTE *, void, void, void, void))
{
  sub_2519F1098();
  a4(v8, *v4, a2[2], a2[3], a2[4]);
  return sub_2519F10D8();
}

uint64_t sub_2519C9BD8(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_2519C9B1C(*v1);
}

uint64_t sub_2519C9BE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_2519C99AC(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_2519C9C1C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2519C9C70(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t ConceptAttributeValueRequest.encode(to:)(void *a1, void *a2)
{
  v5 = a2[2];
  v4 = a2[3];
  v6 = a2[4];
  type metadata accessor for ConceptAttributeValueRequest.CodingKeys();
  swift_getWitnessTable();
  v7 = sub_2519F0F08();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = *v2;
  v11 = v2[1];
  v13 = v2[2];
  v30 = v2[3];
  v31 = v13;
  v14 = v2[5];
  v32 = v2[4];
  v33 = v11;
  v29 = v14;
  v15 = v2[6];
  v27 = v2[7];
  v28 = v15;
  v17 = a1[3];
  v16 = a1[4];
  v18 = a1;
  v20 = &v26 - v19;
  __swift_project_boxed_opaque_existential_1(v18, v17);
  sub_2519F1158();
  LOBYTE(v35) = 0;
  v21 = v34;
  sub_2519F0ED8();
  if (!v21)
  {
    v23 = v28;
    v22 = v29;
    v24 = v27;
    v35 = v31;
    v36 = v30;
    v37 = v32;
    v38 = 1;
    sub_2519C9118();

    sub_2519F0EF8();

    v35 = v22;
    v36 = v23;
    v37 = v24;
    v38 = 2;
    sub_2519C916C();

    sub_2519F0EF8();
  }

  return (*(v8 + 8))(v20, v7);
}

uint64_t ConceptAttributeValueRequest.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[5];
  sub_2519F09F8();
  MEMORY[0x25308A270](v3);
  return MEMORY[0x25308A270](v4);
}

uint64_t ConceptAttributeValueRequest.hashValue.getter()
{
  sub_2519F1098();
  ConceptAttributeValueRequest.hash(into:)();
  return sub_2519F10D8();
}

uint64_t ConceptAttributeValueRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, unsigned __int128 *a3@<X8>)
{
  v28 = a3;
  type metadata accessor for ConceptAttributeValueRequest.CodingKeys();
  swift_getWitnessTable();
  v29 = sub_2519F0E88();
  v27 = *(v29 - 8);
  v5 = *(v27 + 64);
  MEMORY[0x28223BE20](v29, v6);
  v8 = &v22 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = v30;
  sub_2519F1148();
  if (v10)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v27;
  v12 = v28;
  v30 = a2;
  LOBYTE(v35) = 0;
  *&v26 = sub_2519F0E48();
  *(&v26 + 1) = v13;
  LOBYTE(v31) = 1;
  sub_2519C95DC();
  sub_2519F0E68();
  v14 = v35;
  v23 = v14 >> 64;
  v24 = v14;
  v25 = v36;
  v44 = 2;
  sub_2519C9630();
  sub_2519F0E68();
  (*(v11 + 8))(v8, v29);
  v29 = v42;
  v22 = *(&v43 + 1);
  v27 = v43;
  v15 = v26;
  v31 = v26;
  *&v32 = v24;
  *(&v32 + 1) = v23;
  v16 = v25;
  *&v33 = v25;
  *(&v33 + 1) = v42;
  v34 = v43;
  v17 = v32;
  *v12 = v26;
  v12[1] = v17;
  v18 = v34;
  v12[2] = v33;
  v12[3] = v18;
  v19 = type metadata accessor for ConceptAttributeValueRequest();
  v20 = *(v19 - 8);
  (*(v20 + 16))(&v35, &v31, v19);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v35 = v15;
  v36 = v24;
  v37 = v23;
  v38 = v16;
  v39 = v29;
  v40 = v27;
  v41 = v22;
  return (*(v20 + 8))(&v35, v19);
}

uint64_t sub_2519CA388()
{
  v0 = sub_2519CA568();

  return v0;
}

uint64_t sub_2519CA3C0@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, unsigned __int128 *a3@<X8>)
{
  v4 = a2[2];
  v3 = a2[3];
  return ConceptAttributeValueRequest.init(from:)(a1, a2[4], a3);
}

uint64_t sub_2519CA404()
{
  sub_2519F1098();
  ConceptAttributeValueRequest.hash(into:)();
  return sub_2519F10D8();
}

uint64_t ConceptAttributeValueRequestError.hashValue.getter()
{
  v1 = *v0;
  sub_2519F1098();
  MEMORY[0x25308A270](v1);
  return sub_2519F10D8();
}

__n128 ConceptAttributeValueRequest<>.init(concept:attribute:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  v4 = a2[1].n128_u64[0];
  *a3 = 0xD00000000000001CLL;
  *(a3 + 8) = 0x80000002519F6860;
  *(a3 + 16) = *a1;
  *(a3 + 32) = v3;
  result = *a2;
  *(a3 + 40) = *a2;
  *(a3 + 56) = v4;
  return result;
}

{
  v3 = *(a1 + 16);
  v4 = a2[1].n128_u64[0];
  *a3 = 0xD00000000000001ELL;
  *(a3 + 8) = 0x80000002519F6880;
  *(a3 + 16) = *a1;
  *(a3 + 32) = v3;
  result = *a2;
  *(a3 + 40) = *a2;
  *(a3 + 56) = v4;
  return result;
}

uint64_t sub_2519CA568()
{
  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t sub_2519CA5D8(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

unint64_t sub_2519CA678()
{
  result = qword_27F46D0C8[0];
  if (!qword_27F46D0C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F46D0C8);
  }

  return result;
}

uint64_t sub_2519CA6D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2519CA75C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 48) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((a1 + 31) & 0xFFFFFFFFFFFFFFF8) + v6 + 24) & ~v6);
      }

      v15 = *(a1 + 2);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_2519CA8E8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 48) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = (((a1 + 31) & 0xFFFFFFFFFFFFFFF8) + v9 + 24) & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else
  {
    *(a1 + 2) = a2 - 1;
  }
}

uint64_t sub_2519CAB44()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t sub_2519CABA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2519CABE8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for Triple.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Triple.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t SecurelyCodableOntologyRequest.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC17HealthOntologyKit30SecurelyCodableOntologyRequest_identifier);
  v2 = *(v0 + OBJC_IVAR____TtC17HealthOntologyKit30SecurelyCodableOntologyRequest_identifier + 8);

  return v1;
}

uint64_t sub_2519CAF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v6;
}

uint64_t SecurelyCodableOntologyRequest.decoded<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2519F0858();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_2519F0848();
  v8 = *(v3 + OBJC_IVAR____TtC17HealthOntologyKit30SecurelyCodableOntologyRequest_payload);
  v9 = *(v3 + OBJC_IVAR____TtC17HealthOntologyKit30SecurelyCodableOntologyRequest_payload + 8);
  v10 = *(a3 + 8);
  sub_2519F0838();
}

Swift::Void __swiftcall SecurelyCodableOntologyRequest.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC17HealthOntologyKit30SecurelyCodableOntologyRequest_identifier);
  v4 = *(v1 + OBJC_IVAR____TtC17HealthOntologyKit30SecurelyCodableOntologyRequest_identifier + 8);
  v5 = sub_2519F0978();
  v6 = sub_2519F0978();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC17HealthOntologyKit30SecurelyCodableOntologyRequest_payload);
  v8 = *(v1 + OBJC_IVAR____TtC17HealthOntologyKit30SecurelyCodableOntologyRequest_payload + 8);
  v9 = sub_2519F08A8();
  v10 = sub_2519F0978();
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];
}

uint64_t SecurelyCodableOntologyRequest.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_2519CB604(0, &qword_27F46D2E0, 0x277CCACA8);
  v2 = sub_2519F0BE8();
  if (v2)
  {
    v3 = v2;
    sub_2519F0988();
  }

  swift_deallocPartialClassInstance();
  return 0;
}

id SecurelyCodableOntologyRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SecurelyCodableOntologyRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2519CB47C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = (*(a3 + 56))(a2, a3);
  v9 = &v3[OBJC_IVAR____TtC17HealthOntologyKit30SecurelyCodableOntologyRequest_identifier];
  *v9 = v8;
  v9[1] = v10;
  v11 = sub_2519F0888();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_2519F0878();
  v14 = *(a3 + 16);
  v15 = sub_2519F0868();
  v17 = v16;

  if (v4)
  {
    v18 = v9[1];

    return swift_deallocPartialClassInstance();
  }

  else
  {
    v20 = &v3[OBJC_IVAR____TtC17HealthOntologyKit30SecurelyCodableOntologyRequest_payload];
    *v20 = v15;
    v20[1] = v17;
    v21.receiver = v3;
    v21.super_class = ObjectType;
    return objc_msgSendSuper2(&v21, sel_init);
  }
}

uint64_t sub_2519CB604(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_2519CB6C4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

double static OntologyRelationshipIdentifier.none.getter@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_2519F35A0;
  *(a1 + 16) = 0xE400000000000000;
  return result;
}

double static OntologyRelationshipIdentifier.isFormOf.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 798;
  *a1 = xmmword_2519F35B0;
  *(a1 + 16) = 0xEA0000000000664FLL;
  return result;
}

double static OntologyRelationshipIdentifier.hasSeverity.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 799;
  *a1 = xmmword_2519F35C0;
  *(a1 + 16) = 0xEC00000079746972;
  return result;
}

double static OntologyRelationshipIdentifier.component.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 809;
  *a1 = xmmword_2519F35D0;
  *(a1 + 16) = 0xE900000000000074;
  return result;
}

double static OntologyRelationshipIdentifier.hasInteraction.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 813;
  *a1 = xmmword_2519F35E0;
  *(a1 + 16) = 0xEF6E6F6974636172;
  return result;
}

double static OntologyRelationshipIdentifier.hasEducationalContent.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 988;
  *a1 = xmmword_2519F35F0;
  *(a1 + 16) = 0x80000002519F6970;
  return result;
}

double static OntologyRelationshipIdentifier.hasInteractionClass.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 996;
  *a1 = xmmword_2519F3600;
  *(a1 + 16) = 0x80000002519F6990;
  return result;
}

double static OntologyRelationshipIdentifier.groupedBy.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 1013;
  *a1 = xmmword_2519F3610;
  *(a1 + 16) = 0xEA00000000007942;
  return result;
}

double static OntologyRelationshipIdentifier.isA.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 1015;
  *a1 = xmmword_2519F3620;
  *(a1 + 16) = 0xE400000000000000;
  return result;
}

void OntologyRelationshipIdentifier.init(relationshipType:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1 <= 54837)
  {
    if (((a1 - 952) > 0x3F || ((1 << (a1 + 72)) & 0xA0001012F0000003) == 0) && ((a1 - 797) > 0x10 || ((1 << (a1 - 29)) & 0x15007) == 0) && ((a1 + 1) > 0xC || ((1 << (a1 + 1)) & 0x1803) == 0))
    {
      goto LABEL_5;
    }

LABEL_16:
    v8 = sub_2519F0F18();
    MEMORY[0x253089BD0](v8);

    MEMORY[0x253089BD0](41, 0xE100000000000000);
    *a2 = a1;
    a2[1] = 0x2820656E6F6ELL;
    a2[2] = 0xE600000000000000;
    return;
  }

  if (a1 == 54838 || a1 == 6641711 || a1 == 4863950)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (qword_27F46CD88 != -1)
  {
    swift_once();
  }

  v4 = sub_2519F0918();
  __swift_project_value_buffer(v4, qword_27F46DE10);
  v5 = sub_2519F08F8();
  v6 = sub_2519F0BD8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = a1;
    _os_log_impl(&dword_2519BF000, v5, v6, "OntologyRelationshipIdentifier: attempted to create with unknown relationship type %lld", v7, 0xCu);
    MEMORY[0x25308A910](v7, -1, -1);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

double sub_2519CBA40@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OntologyRelationshipIdentifier.init(relationshipType:)(a1, &v5);
  v3 = v6;
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v3;
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2519CBAC0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _sSb17HealthOntologyKitEySbSgSo18HKConceptAttributeCcfC_0(a1);
  *a2 = result;
  return result;
}

uint64_t String.init(_:)(void *a1)
{
  v2 = [a1 stringValue];
  v3 = sub_2519F0998();

  return v3;
}

void sub_2519CBB44(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 stringValue];
  v5 = sub_2519F0998();
  v7 = v6;

  *a2 = v5;
  a2[1] = v7;
}

uint64_t _sSb17HealthOntologyKitEySbSgSo18HKConceptAttributeCcfC_0(void *a1)
{
  v2 = [a1 stringValue];
  v3 = sub_2519F0998();
  v5 = v4;

  v6 = *MEMORY[0x277CCBB88];
  if (sub_2519F0998() == v3 && v7 == v5)
  {

    return 1;
  }

  v9 = sub_2519F0F68();

  if (v9)
  {

    return 1;
  }

  v11 = *MEMORY[0x277CCBB80];
  if (sub_2519F0998() == v3 && v12 == v5)
  {

    return 0;
  }

  else
  {
    v14 = sub_2519F0F68();

    result = 0;
    if ((v14 & 1) == 0)
    {
      return 2;
    }
  }

  return result;
}

double HgQLResultRowDecodable.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a4;
  v25 = sub_2519F1108();
  v24 = *(v25 - 8);
  v8 = *(v24 + 64);
  MEMORY[0x28223BE20](v25, v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v39 + 1) = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v38);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, v4, a3);
  sub_2519F10E8();
  v23 = v11;
  sub_2519F10F8();
  sub_2519F0D18();

  sub_2519F0DE8();
  if (!v40)
  {
LABEL_15:
    (*(v24 + 8))(v23, v25);

    v17 = v26;
    *(v26 + 32) = 0;
    result = 0.0;
    *v17 = 0u;
    v17[1] = 0u;
    return result;
  }

  while (1)
  {
    v36 = v38;
    sub_2519CC0D8(&v39, &v37);
    sub_2519CC0E8(&v36, &v33);
    v13 = v34;
    if (!v34)
    {
      sub_2519CC1CC(&v36);
      __swift_destroy_boxed_opaque_existential_1(v35);
      goto LABEL_4;
    }

    v14 = v33;
    __swift_destroy_boxed_opaque_existential_1(v35);
    if (v14 == a1 && v13 == a2)
    {
      break;
    }

    v16 = sub_2519F0F68();

    if (v16)
    {
      goto LABEL_13;
    }

    sub_2519CC1CC(&v36);
LABEL_4:
    sub_2519F0DE8();
    if (!v40)
    {
      goto LABEL_15;
    }
  }

LABEL_13:
  sub_2519CC0E8(&v36, &v33);

  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_2519CC1CC(&v36);
    v27 = 0u;
    v28 = 0u;
    v29 = 0;
    sub_2519CC228(&v27);
    goto LABEL_4;
  }

  v30 = v27;
  v31 = v28;
  v32 = v29;
  v19 = sub_2519CC2E0();

  sub_2519CC1CC(&v36);
  (*(v24 + 8))(v23, v25);
  if (v19)
  {
    result = *&v30;
    v20 = v31;
    v21 = v26;
    *v26 = v30;
    *(v21 + 16) = v20;
    *(v21 + 32) = v32;
  }

  else
  {
    sub_2519CC398(&v30);
    result = 0.0;
    v22 = v26;
    *v26 = 0u;
    *(v22 + 16) = 0u;
    *(v22 + 32) = 0;
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

_OWORD *sub_2519CC0D8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2519CC0E8(uint64_t a1, uint64_t a2)
{
  sub_2519CC14C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2519CC14C()
{
  if (!qword_27F46D3C0)
  {
    sub_2519CC294(255, &qword_27F46D3C8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F46D3C0);
    }
  }
}

uint64_t sub_2519CC1CC(uint64_t a1)
{
  sub_2519CC14C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2519CC228(uint64_t a1)
{
  sub_2519CC294(0, &qword_27F46D3D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2519CC294(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2519F0C08();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_2519CC2E0()
{
  sub_2519F0C78();
  if (swift_dynamicCast())
  {
    return 1;
  }

  sub_2519F0C78();
  if (swift_dynamicCast())
  {

    return 1;
  }

  else
  {
    sub_2519F0C78();
    return swift_dynamicCast();
  }
}

double PlaceholderRow.subscript.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_2519CC414(uint64_t a1)
{
  v2 = sub_2519CC5F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2519CC450(uint64_t a1)
{
  v2 = sub_2519CC5F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlaceholderRow.encode(to:)(void *a1)
{
  sub_2519CC598();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2519CC5F4();
  sub_2519F1158();
  return (*(v4 + 8))(v8, v3);
}

void sub_2519CC598()
{
  if (!qword_27F46D3D8)
  {
    sub_2519CC5F4();
    v0 = sub_2519F0F08();
    if (!v1)
    {
      atomic_store(v0, &qword_27F46D3D8);
    }
  }
}

unint64_t sub_2519CC5F4()
{
  result = qword_27F46D3E0;
  if (!qword_27F46D3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D3E0);
  }

  return result;
}

double sub_2519CC6AC@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_2519CC6F0(void *a1)
{
  sub_2519CC598();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2519CC5F4();
  sub_2519F1158();
  return (*(v4 + 8))(v8, v3);
}

unint64_t sub_2519CC868(void *a1)
{
  a1[1] = sub_2519CC8A0();
  a1[2] = sub_2519CC8F4();
  result = sub_2519CC948();
  a1[3] = result;
  return result;
}

unint64_t sub_2519CC8A0()
{
  result = qword_27F46D3E8;
  if (!qword_27F46D3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D3E8);
  }

  return result;
}

unint64_t sub_2519CC8F4()
{
  result = qword_27F46D3F0;
  if (!qword_27F46D3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D3F0);
  }

  return result;
}

unint64_t sub_2519CC948()
{
  result = qword_27F46D3F8;
  if (!qword_27F46D3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D3F8);
  }

  return result;
}

unint64_t sub_2519CC9A0()
{
  result = qword_27F46D400;
  if (!qword_27F46D400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D400);
  }

  return result;
}

uint64_t sub_2519CCA00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_2519CCA48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_2519CCAFC()
{
  result = qword_27F46D408;
  if (!qword_27F46D408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D408);
  }

  return result;
}

unint64_t sub_2519CCB54()
{
  result = qword_27F46D410;
  if (!qword_27F46D410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D410);
  }

  return result;
}

uint64_t HealthOntologyStore.__allocating_init(healthStore:)(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = objc_allocWithZone(type metadata accessor for HealthOntologyStore.HealthOntologyStoreProxy());
  *(v2 + 24) = sub_2519CE0A8(a1);
  swift_weakAssign();
  return v2;
}

uint64_t HealthOntologyStore.init(healthStore:)(void *a1)
{
  v2 = v1;
  *(v2 + 16) = a1;
  v4 = objc_allocWithZone(type metadata accessor for HealthOntologyStore.HealthOntologyStoreProxy());
  *(v2 + 24) = sub_2519CE0A8(a1);
  swift_weakAssign();
  return v2;
}

void HealthOntologyStore.fetchResponse<A>(for:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v33 = a3;
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1, a1);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v5 + 24);
  v14 = *(v10 + 16);
  v31 = v15;
  v14(v12);
  v16 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v17 = (v11 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 2) = a4;
  *(v18 + 3) = a5;
  v32 = a5;
  v19 = v6;
  *(v18 + 4) = v6;
  (*(v10 + 32))(&v18[v16], v12, a4);
  v20 = &v18[v17];
  v21 = v33;
  *v20 = a2;
  *(v20 + 1) = v21;
  v22 = *(v13 + OBJC_IVAR____TtCC17HealthOntologyKit19HealthOntologyStoreP33_15DCA7F8B4C996C19607F2A4D5C454CA24HealthOntologyStoreProxy_proxyProvider);
  if (v22)
  {
    aBlock[4] = sub_2519CE720;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2519CE51C;
    aBlock[3] = &block_descriptor;
    v23 = _Block_copy(aBlock);

    v24 = v22;

    v25 = [v24 clientQueueObjectHandlerWithCompletion_];

    _Block_release(v23);

    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    type metadata accessor for SecurelyCodableOntologyRequest();
    _Block_copy(v25);
    v27 = sub_2519CB5A8(v31, a4, v32);
    _Block_release(v25);
    v28 = swift_allocObject();
    v28[2] = v27;
    v28[3] = sub_2519CE7D0;
    v28[4] = v26;
    v29 = swift_allocObject();
    v29[2] = v19;
    v29[3] = sub_2519CE7D0;
    v29[4] = v26;
    swift_retain_n();

    v30 = v27;
    sub_2519CDEEC(sub_2519CEB28, v28, sub_2519CEB34, v29);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2519CD158(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void *, uint64_t, uint64_t *), uint64_t a5)
{
  v6 = v5;
  v59 = a5;
  v60 = a4;
  v55 = *v6;
  v56 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_2519CECC4();
  v10 = sub_2519F1118();
  v57 = *(v10 - 8);
  v58 = v10;
  v11 = *(v57 + 64);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v53[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v13, v16);
  v54 = &v53[-v18];
  v19 = *(AssociatedTypeWitness - 8);
  v20 = *(v19 + 64);
  v22 = MEMORY[0x28223BE20](v17, v21);
  v24 = &v53[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v53[-v26];
  sub_2519CEA14(a2, v63);
  if (v63[3])
  {
    type metadata accessor for SecurelyCodableOntologyResponse();
    if (swift_dynamicCast())
    {
      v28 = v61;
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedConformanceWitness();
      SecurelyCodableOntologyResponse.decoded<A>(_:)();
      (*(v19 + 32))(v27, v24, AssociatedTypeWitness);
      v50 = v54;
      (*(v19 + 16))(v54, v27, AssociatedTypeWitness);
      v51 = v58;
      swift_storeEnumTagMultiPayload();
      v60(v6, v56, v50);

      (*(v57 + 8))(v50, v51);
      return (*(v19 + 8))(v27, AssociatedTypeWitness);
    }
  }

  else
  {
    sub_2519CEACC(v63);
  }

  if (qword_27F46CD88 != -1)
  {
    swift_once();
  }

  v29 = sub_2519F0918();
  __swift_project_value_buffer(v29, qword_27F46DE10);
  sub_2519CEA14(a2, v63);

  v30 = a3;
  v31 = sub_2519F08F8();
  v32 = sub_2519F0BD8();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v62 = v34;
    *v33 = 136446722;
    v61 = v6;

    v35 = sub_2519F09D8();
    v37 = sub_2519EF108(v35, v36, &v62);

    *(v33 + 4) = v37;
    *(v33 + 12) = 2080;
    sub_2519CEA14(v63, &v61);
    sub_2519CEA78();
    v38 = sub_2519F09D8();
    v40 = v39;
    sub_2519CEACC(v63);
    v41 = sub_2519EF108(v38, v40, &v62);

    *(v33 + 14) = v41;
    *(v33 + 22) = 2082;
    v61 = a3;
    v42 = a3;
    sub_2519CED7C();
    v43 = sub_2519F09D8();
    v45 = sub_2519EF108(v43, v44, &v62);

    *(v33 + 24) = v45;
    _os_log_impl(&dword_2519BF000, v31, v32, "%{public}s: failure response %s, error: %{public}s", v33, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25308A910](v34, -1, -1);
    MEMORY[0x25308A910](v33, -1, -1);

    v46 = a3;
    if (!a3)
    {
      goto LABEL_11;
    }
  }

  else
  {

    sub_2519CEACC(v63);
    v46 = a3;
    if (!a3)
    {
LABEL_11:
      sub_2519CED28();
      v46 = swift_allocError();
      *(v47 + 8) = 0;
      *(v47 + 16) = 0;
      *v47 = 0;
      *(v47 + 24) = 5;
    }
  }

  *v15 = v46;
  v48 = v58;
  swift_storeEnumTagMultiPayload();
  v49 = a3;
  v60(v6, v56, v15);
  return (*(v57 + 8))(v15, v48);
}

void sub_2519CDA50(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v10[4] = sub_2519CECBC;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_2519CDBC8;
  v10[3] = &block_descriptor_34;
  v9 = _Block_copy(v10);

  [a1 remote:a2 executeWithRequest:v9 with:?];
  _Block_release(v9);
}

uint64_t sub_2519CDB44(void *a1, uint64_t a2, void (*a3)(_OWORD *, uint64_t))
{
  if (a1)
  {
    v9 = type metadata accessor for SecurelyCodableOntologyResponse();
    *&v8 = a1;
    sub_2519CC0D8(&v8, v10);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  v6 = a1;
  a3(v10, a2);
  return sub_2519CEACC(v10);
}

void sub_2519CDBC8(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_2519CDC54(void *a1, uint64_t a2, void (*a3)(_OWORD *, void *))
{
  if (qword_27F46CD88 != -1)
  {
    swift_once();
  }

  v6 = sub_2519F0918();
  __swift_project_value_buffer(v6, qword_27F46DE10);

  v7 = a1;
  v8 = sub_2519F08F8();
  v9 = sub_2519F0BD8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23[5] = a2;
    *&v24[0] = v11;
    *v10 = 136446466;
    type metadata accessor for HealthOntologyStore();

    v12 = sub_2519F09D8();
    v14 = sub_2519EF108(v12, v13, v24);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    ErrorValue = swift_getErrorValue();
    v16 = *(*(v23[2] - 8) + 64);
    MEMORY[0x28223BE20](ErrorValue, v23[1]);
    (*(v18 + 16))(v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    v19 = sub_2519F09D8();
    v21 = sub_2519EF108(v19, v20, v24);

    *(v10 + 14) = v21;
    _os_log_impl(&dword_2519BF000, v8, v9, "%{public}s: remote_execute error: %{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308A910](v11, -1, -1);
    MEMORY[0x25308A910](v10, -1, -1);
  }

  memset(v24, 0, sizeof(v24));
  a3(v24, a1);
  return sub_2519CEACC(v24);
}

void sub_2519CDEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + OBJC_IVAR____TtCC17HealthOntologyKit19HealthOntologyStoreP33_15DCA7F8B4C996C19607F2A4D5C454CA24HealthOntologyStoreProxy_proxyProvider);
  if (v5)
  {
    ObjectType = swift_getObjectType();
    v11 = swift_allocObject();
    v11[2] = a1;
    v11[3] = a2;
    v11[4] = ObjectType;
    v20 = sub_2519CEBC8;
    v21 = v11;
    v16 = MEMORY[0x277D85DD0];
    v17 = 1107296256;
    v18 = sub_2519CE444;
    v19 = &block_descriptor_22;
    v12 = _Block_copy(&v16);
    v13 = v5;

    v14 = swift_allocObject();
    *(v14 + 16) = a3;
    *(v14 + 24) = a4;
    v20 = sub_2519CEBD4;
    v21 = v14;
    v16 = MEMORY[0x277D85DD0];
    v17 = 1107296256;
    v18 = sub_2519CE4B4;
    v19 = &block_descriptor_28;
    v15 = _Block_copy(&v16);

    [v13 fetchProxyWithHandler:v12 errorHandler:v15];
    _Block_release(v15);
    _Block_release(v12);
  }

  else
  {
    __break(1u);
  }
}

char *sub_2519CE0A8(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_2519F08E8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_weakInit();
  *&v2[OBJC_IVAR____TtCC17HealthOntologyKit19HealthOntologyStoreP33_15DCA7F8B4C996C19607F2A4D5C454CA24HealthOntologyStoreProxy_proxyProvider] = 0;
  v18.receiver = v2;
  v18.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v18, sel_init);
  sub_2519F08D8();
  v12 = objc_allocWithZone(MEMORY[0x277CCDAA0]);
  v13 = sub_2519F0978();
  v14 = sub_2519F08C8();
  v15 = [v12 initWithHealthStore:a1 taskIdentifier:v13 exportedObject:v11 taskUUID:v14];

  (*(v6 + 8))(v10, v5);
  v16 = *&v11[OBJC_IVAR____TtCC17HealthOntologyKit19HealthOntologyStoreP33_15DCA7F8B4C996C19607F2A4D5C454CA24HealthOntologyStoreProxy_proxyProvider];
  *&v11[OBJC_IVAR____TtCC17HealthOntologyKit19HealthOntologyStoreP33_15DCA7F8B4C996C19607F2A4D5C454CA24HealthOntologyStoreProxy_proxyProvider] = v15;

  return v11;
}

uint64_t sub_2519CE25C(void *a1, void (*a2)(void))
{
  sub_2519CEBFC(a1, &v13);
  sub_2519CEC58();
  if (swift_dynamicCast())
  {
    a2(v12[1]);
    return swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0;
    v14 = 0xE000000000000000;
    sub_2519F0CA8();

    v13 = 91;
    v14 = 0xE100000000000000;
    v5 = sub_2519F11B8();
    MEMORY[0x253089BD0](v5);

    MEMORY[0x253089BD0](0xD00000000000001FLL, 0x80000002519F6B60);
    v6 = a1[3];
    v7 = __swift_project_boxed_opaque_existential_1(a1, v6);
    v8 = *(*(v6 - 8) + 64);
    MEMORY[0x28223BE20](v7, v7);
    (*(v10 + 16))(v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    v11 = sub_2519F09D8();
    MEMORY[0x253089BD0](v11);

    result = sub_2519F0D98();
    __break(1u);
  }

  return result;
}

uint64_t sub_2519CE444(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[3] = swift_getObjectType();
  v6[0] = a2;

  swift_unknownObjectRetain();
  v4(v6);

  return __swift_destroy_boxed_opaque_existential_1(v6);
}

void sub_2519CE4B4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_2519CE51C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v9 = a2;
    sub_2519CC0D8(&v9, v11);
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  swift_unknownObjectRetain();
  v7 = a3;
  v6(v11, a3);

  return sub_2519CEACC(v11);
}

void sub_2519CE5BC(uint64_t a1, void *a2, uint64_t a3)
{
  sub_2519CEA14(a1, v12);
  v5 = v13;
  if (!v13)
  {
    v11 = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = __swift_project_boxed_opaque_existential_1(v12, v13);
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v6);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10);
  v11 = sub_2519F0F58();
  (*(v7 + 8))(v10, v5);
  __swift_destroy_boxed_opaque_existential_1(v12);
  if (a2)
  {
LABEL_3:
    a2 = sub_2519F0898();
  }

LABEL_4:
  (*(a3 + 16))(a3, v11, a2);
  swift_unknownObjectRelease();
}

uint64_t sub_2519CE720(uint64_t a1, void *a2)
{
  v5 = v2[3];
  v6 = (*(*(v2[2] - 8) + 80) + 40) & ~*(*(v2[2] - 8) + 80);
  v7 = v2 + ((*(*(v2[2] - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = v2 + v6;
  v9 = v2[4];
  return sub_2519CD158(v8, a1, a2, *v7, *(v7 + 1));
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_2519CE7F0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [objc_opt_self() interfaceWithProtocol_];

  return v3;
}

id sub_2519CE878()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t HealthOntologyStore.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2519CE964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_allocObject();
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = a2;
  v11[5] = a3;
  v12 = *v5;

  HealthOntologyStore.fetchResponse<A>(for:handler:)(a1, sub_2519CEB90, v11, a4, a5);
}

uint64_t sub_2519CEA14(uint64_t a1, uint64_t a2)
{
  sub_2519CEA78();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2519CEA78()
{
  if (!qword_27F46D430)
  {
    v0 = sub_2519F0C08();
    if (!v1)
    {
      atomic_store(v0, &qword_27F46D430);
    }
  }
}

uint64_t sub_2519CEACC(uint64_t a1)
{
  sub_2519CEA78();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2519CEB90(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_2519CEBC8(void *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_2519CE25C(a1, *(v1 + 16));
}

uint64_t sub_2519CEBD4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_2519CEBFC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2519CEC58()
{
  result = qword_27F46D498;
  if (!qword_27F46D498)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F46D498);
  }

  return result;
}

unint64_t sub_2519CECC4()
{
  result = qword_27F46D4A0;
  if (!qword_27F46D4A0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F46D4A0);
  }

  return result;
}

unint64_t sub_2519CED28()
{
  result = qword_27F46D4A8;
  if (!qword_27F46D4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D4A8);
  }

  return result;
}

void sub_2519CED7C()
{
  if (!qword_27F46D4B0)
  {
    sub_2519CECC4();
    v0 = sub_2519F0C08();
    if (!v1)
    {
      atomic_store(v0, &qword_27F46D4B0);
    }
  }
}

uint64_t OntologyAttributeIdentifier.label.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

HealthOntologyKit::OntologyAttributeIdentifier __swiftcall OntologyAttributeIdentifier.init(_:label:)(Swift::Int _, Swift::String_optional label)
{
  v3 = _;
  v4 = v2;
  if (!label.value._object)
  {
    v5 = sub_2519F0F18();
    MEMORY[0x253089BD0](v5);

    _ = MEMORY[0x253089BD0](41, 0xE100000000000000);
    label.value._countAndFlagsBits = 0x2820656E6F6ELL;
    label.value._object = 0xE600000000000000;
  }

  *v4 = v3;
  *(v4 + 8) = label;
  result.label = label.value;
  result.id = _;
  return result;
}

uint64_t OntologyAttributeIdentifier.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  sub_2519F0CA8();

  strcpy(v6, "attributeID: ");
  v4 = sub_2519F0F18();
  MEMORY[0x253089BD0](v4);

  MEMORY[0x253089BD0](0x3A6C6562616C202CLL, 0xE900000000000020);
  MEMORY[0x253089BD0](v1, v3);
  return v6[0];
}

uint64_t sub_2519CEFCC()
{
  if (*v0)
  {
    result = 0x6C6562616CLL;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_2519CEFF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_2519F0F68() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2519F0F68();

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

uint64_t sub_2519CF0C8(uint64_t a1)
{
  v2 = sub_2519CF2BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2519CF104(uint64_t a1)
{
  v2 = sub_2519CF2BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OntologyAttributeIdentifier.encode(to:)(void *a1)
{
  sub_2519CF640(0, &qword_27F46D520, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4, v8);
  v10 = v15 - v9;
  v12 = *v1;
  v11 = v1[1];
  v15[0] = v1[2];
  v15[1] = v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2519CF2BC();
  sub_2519F1158();
  v17 = 0;
  sub_2519F0EE8();
  if (!v2)
  {
    v16 = 1;
    sub_2519F0ED8();
  }

  return (*(v6 + 8))(v10, v5);
}

unint64_t sub_2519CF2BC()
{
  result = qword_27F46D528;
  if (!qword_27F46D528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D528);
  }

  return result;
}

uint64_t OntologyAttributeIdentifier.hashValue.getter()
{
  v1 = *v0;
  sub_2519F1098();
  MEMORY[0x25308A270](v1);
  return sub_2519F10D8();
}

uint64_t OntologyAttributeIdentifier.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2519CF640(0, &qword_27F46D530, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5, v9);
  v11 = &v18 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2519CF2BC();
  sub_2519F1148();
  if (!v2)
  {
    v20 = 0;
    v13 = sub_2519F0E58();
    v19 = 1;
    v15 = sub_2519F0E48();
    v17 = v16;
    (*(v7 + 8))(v11, v6);
    *a2 = v13;
    a2[1] = v15;
    a2[2] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2519CF518()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t sub_2519CF588()
{
  v1 = *v0;
  sub_2519F1098();
  MEMORY[0x25308A270](v1);
  return sub_2519F10D8();
}

uint64_t sub_2519CF5FC()
{
  v1 = *v0;
  sub_2519F1098();
  MEMORY[0x25308A270](v1);
  return sub_2519F10D8();
}

void sub_2519CF640(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2519CF2BC();
    v7 = a3(a1, &type metadata for OntologyAttributeIdentifier.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2519CF6A4(void *a1)
{
  a1[1] = sub_2519CF6EC();
  a1[2] = sub_2519C9630();
  a1[3] = sub_2519C916C();
  a1[4] = sub_2519CF740();
  result = sub_2519CF794();
  a1[5] = result;
  return result;
}

unint64_t sub_2519CF6EC()
{
  result = qword_27F46D538;
  if (!qword_27F46D538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D538);
  }

  return result;
}

unint64_t sub_2519CF740()
{
  result = qword_27F46D540;
  if (!qword_27F46D540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D540);
  }

  return result;
}

unint64_t sub_2519CF794()
{
  result = qword_27F46D548;
  if (!qword_27F46D548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D548);
  }

  return result;
}

unint64_t sub_2519CF7F8()
{
  result = qword_27F46D550;
  if (!qword_27F46D550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D550);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2519CF874(uint64_t a1, int a2)
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

uint64_t sub_2519CF8BC(uint64_t result, int a2, int a3)
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

unint64_t sub_2519CF920()
{
  result = qword_27F46D558;
  if (!qword_27F46D558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D558);
  }

  return result;
}

unint64_t sub_2519CF978()
{
  result = qword_27F46D560;
  if (!qword_27F46D560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D560);
  }

  return result;
}

unint64_t sub_2519CF9D0()
{
  result = qword_27F46D568;
  if (!qword_27F46D568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D568);
  }

  return result;
}

HealthOntologyKit::OntologyRelationshipIdentifier __swiftcall OntologyRelationshipIdentifier.init(_:label:)(Swift::Int _, Swift::String_optional label)
{
  v3 = _;
  v4 = v2;
  if (!label.value._object)
  {
    v5 = sub_2519F0F18();
    MEMORY[0x253089BD0](v5);

    _ = MEMORY[0x253089BD0](41, 0xE100000000000000);
    label.value._countAndFlagsBits = 0x2820656E6F6ELL;
    label.value._object = 0xE600000000000000;
  }

  *v4 = v3;
  *(v4 + 8) = label;
  result.label = label.value;
  result.id = _;
  return result;
}

uint64_t OntologyRelationshipIdentifier.label.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

unint64_t OntologyRelationshipIdentifier.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  sub_2519F0CA8();

  v4 = sub_2519F0F18();
  MEMORY[0x253089BD0](v4);

  MEMORY[0x253089BD0](0x3A6C6562616C202CLL, 0xE900000000000020);
  MEMORY[0x253089BD0](v1, v3);
  return 0xD000000000000010;
}

uint64_t sub_2519CFBC4(uint64_t a1)
{
  v2 = sub_2519CFDB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2519CFC00(uint64_t a1)
{
  v2 = sub_2519CFDB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OntologyRelationshipIdentifier.encode(to:)(void *a1)
{
  sub_2519D0040(0, &qword_27F46D570, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4, v8);
  v10 = v15 - v9;
  v12 = *v1;
  v11 = v1[1];
  v15[0] = v1[2];
  v15[1] = v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2519CFDB8();
  sub_2519F1158();
  v17 = 0;
  sub_2519F0EE8();
  if (!v2)
  {
    v16 = 1;
    sub_2519F0ED8();
  }

  return (*(v6 + 8))(v10, v5);
}

unint64_t sub_2519CFDB8()
{
  result = qword_27F46D578;
  if (!qword_27F46D578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D578);
  }

  return result;
}

uint64_t OntologyRelationshipIdentifier.hashValue.getter()
{
  v1 = *v0;
  sub_2519F1098();
  MEMORY[0x25308A270](v1);
  return sub_2519F10D8();
}

uint64_t OntologyRelationshipIdentifier.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2519D0040(0, &qword_27F46D580, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5, v9);
  v11 = &v18 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2519CFDB8();
  sub_2519F1148();
  if (!v2)
  {
    v20 = 0;
    v13 = sub_2519F0E58();
    v19 = 1;
    v15 = sub_2519F0E48();
    v17 = v16;
    (*(v7 + 8))(v11, v6);
    *a2 = v13;
    a2[1] = v15;
    a2[2] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2519D0040(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2519CFDB8();
    v7 = a3(a1, &type metadata for OntologyRelationshipIdentifier.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2519D00A4(void *a1)
{
  a1[1] = sub_2519D00EC();
  a1[2] = sub_2519D0140();
  a1[3] = sub_2519D0194();
  a1[4] = sub_2519D01E8();
  result = sub_2519D023C();
  a1[5] = result;
  return result;
}

unint64_t sub_2519D00EC()
{
  result = qword_27F46D588;
  if (!qword_27F46D588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D588);
  }

  return result;
}

unint64_t sub_2519D0140()
{
  result = qword_27F46D590;
  if (!qword_27F46D590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D590);
  }

  return result;
}

unint64_t sub_2519D0194()
{
  result = qword_27F46D598;
  if (!qword_27F46D598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D598);
  }

  return result;
}

unint64_t sub_2519D01E8()
{
  result = qword_27F46D5A0;
  if (!qword_27F46D5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D5A0);
  }

  return result;
}

unint64_t sub_2519D023C()
{
  result = qword_27F46D5A8;
  if (!qword_27F46D5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D5A8);
  }

  return result;
}

unint64_t sub_2519D0294()
{
  result = qword_27F46D5B0;
  if (!qword_27F46D5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D5B0);
  }

  return result;
}

unint64_t sub_2519D030C()
{
  result = qword_27F46D5B8;
  if (!qword_27F46D5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D5B8);
  }

  return result;
}

unint64_t sub_2519D0364()
{
  result = qword_27F46D5C0;
  if (!qword_27F46D5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D5C0);
  }

  return result;
}

unint64_t sub_2519D03BC()
{
  result = qword_27F46D5C8;
  if (!qword_27F46D5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D5C8);
  }

  return result;
}

uint64_t sub_2519D0410()
{
  sub_2519D9640();
}

uint64_t sub_2519D0438(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 72);
  *(v1 + 72) = a1;
}

uint64_t sub_2519D04D4()
{
  sub_2519D9674();
}

uint64_t sub_2519D04FC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 80);
  *(v1 + 80) = a1;
}

void *HgQLDecoderCore.__allocating_init(row:column:codingPath:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[10] = sub_2519D96A8(MEMORY[0x277D84F90]);
  sub_2519C1710(a1, (v8 + 2));
  v8[7] = a2;
  v8[8] = a3;
  v8[9] = a4;
  return v8;
}

void *HgQLDecoderCore.init(row:column:codingPath:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = sub_2519D96A8(MEMORY[0x277D84F90]);
  sub_2519C1710(a1, (v4 + 2));
  v4[7] = a2;
  v4[8] = a3;
  v4[9] = a4;
  return v4;
}

uint64_t sub_2519D0670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  sub_2519D986C((v3 + 2), &v14);
  swift_beginAccess();
  v7 = v3[9];
  swift_beginAccess();
  v8 = v3[10];
  v9 = *(v6 + 80);
  v10 = *(v6 + 88);
  sub_2519C1710(&v14, v17);
  v18 = v7;
  v19 = v8;
  *&v14 = v9;
  *(&v14 + 1) = a2;
  v15 = v10;
  v16 = a3;
  v11 = type metadata accessor for HgQLKeyedDecodingContainer();
  v12 = *(v11 - 8);
  (*(v12 + 16))(&v14, v17, v11);

  swift_getWitnessTable();
  sub_2519F0E98();
  return (*(v12 + 8))(v17, v11);
}

uint64_t sub_2519D07FC()
{
  v1 = sub_2519F0CE8();
  swift_allocError();
  v3 = v2;
  swift_beginAccess();
  v4 = *(v0 + 72);

  sub_2519F0CC8();
  (*(*(v1 - 8) + 104))(v3, *MEMORY[0x277D84168], v1);
  return swift_willThrow();
}

uint64_t sub_2519D08D8@<X0>(void *a1@<X8>)
{
  v2 = v1[8];
  if (v2)
  {
    v3 = v1[7];
    a1[3] = &type metadata for HgQLSingleValueDecodingContainer;
    a1[4] = sub_2519D98E8();
    v5 = swift_allocObject();
    *a1 = v5;
    sub_2519D986C((v1 + 2), (v5 + 2));
    swift_beginAccess();
    v6 = v1[9];
    v5[7] = v3;
    v5[8] = v2;
    v5[9] = v6;
  }

  else
  {
    v8 = sub_2519F0CE8();
    swift_allocError();
    v10 = v9;
    swift_beginAccess();
    v11 = v1[9];

    sub_2519F0CC8();
    (*(*(v8 - 8) + 104))(v10, *MEMORY[0x277D84168], v8);
    return swift_willThrow();
  }
}

uint64_t *HgQLDecoderCore.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[8];

  v2 = v0[9];

  v3 = v0[10];

  return v0;
}

uint64_t HgQLDecoderCore.__deallocating_deinit()
{
  HgQLDecoderCore.deinit();

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

uint64_t sub_2519D0AA8()
{
  v1 = *v0;
  sub_2519D9640();
}

uint64_t sub_2519D0ADC()
{
  v1 = *v0;
  sub_2519D9674();
}

BOOL sub_2519D0B7C(uint64_t a1, uint64_t a2)
{
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v5 = *(a2 + 24);
  v6 = *(a2 + 40);
  v7 = sub_2519F1178();
  (*(v4 + 32))(v10, v7);

  v8 = v10[3] == 0;
  sub_2519CC228(v10);
  return v8;
}

uint64_t sub_2519D0C34@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v6 = v5;
  v74 = a4;
  v72 = a5;
  v70 = sub_2519F0C08();
  v69 = *(v70 - 8);
  v10 = *(v69 + 64);
  v12 = MEMORY[0x28223BE20](v70, v11);
  v14 = &v68 - v13;
  v71 = *(a3 - 8);
  v15 = *(v71 + 64);
  MEMORY[0x28223BE20](v12, v16);
  v68 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v19 = a2[3];
  v20 = a2[5];
  v84 = a1;
  v76 = v19;
  v75 = v20;
  v21 = sub_2519F1178();
  (*(v18 + 32))(&v77, v21);

  if (*(&v78 + 1))
  {
    v80 = v77;
    v81 = v78;
    v82 = WitnessTable;
    v22 = a2[2];
    sub_2519F0928();
    if (!swift_conformsToProtocol2())
    {
      v40 = v6[6];
      if (qword_27F46CD80 != -1)
      {
        swift_once();
      }

      v41 = sub_2519F0D58();
      v42 = __swift_project_value_buffer(v41, qword_27F46D5D0);
      if (*(v40 + 16))
      {
        v43 = sub_2519EA784(v42);
        if (v44)
        {
          sub_2519CEBFC(*(v40 + 56) + 32 * v43, &v77);
          v45 = *(a2[4] + 24);
          sub_2519F0BB8();
          if (swift_dynamicCast())
          {

            *&v77 = v83;
            swift_getWitnessTable();
            sub_2519F0B48();
          }
        }
      }
    }

    v23 = sub_2519F1178();
    v25 = v24;
    sub_2519D9DD8(0, &qword_27F46D700);
    v26 = sub_2519F0D28();

    v27 = v73;
    sub_2519D47A4(a3, &v80, v23, v25, v26, a3, v74, v14);
    if (v27)
    {
      sub_2519CC398(&v80);
    }

    else
    {

      v46 = v71;
      if ((*(v71 + 48))(v14, 1, a3) == 1)
      {
        (*(v69 + 8))(v14, v70);
        v47 = a2[4];
        v48 = type metadata accessor for HgQLDecoderCore();
        sub_2519D986C(v6, &v77);
        v49 = v6[5];
        sub_2519D9D70();
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2519F3F20;
        v51 = v76;
        v52 = v75;
        *(inited + 56) = v76;
        *(inited + 64) = v52;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
        (*(*(v51 - 8) + 16))(boxed_opaque_existential_0, v84, v51);
        v83 = v49;

        sub_2519D8A3C(inited);
        v54 = HgQLDecoderCore.__allocating_init(row:column:codingPath:)(&v77, 0, 0, v83);
        v55 = v6[6];

        swift_beginAccess();
        v56 = v54[10];
        v54[10] = v55;

        *(&v78 + 1) = v48;
        WitnessTable = swift_getWitnessTable();
        *&v77 = v54;

        sub_2519F0B88();
        sub_2519CC398(&v80);
      }

      else
      {
        sub_2519CC398(&v80);
        v66 = *(v46 + 32);
        v67 = v68;
        v66(v68, v14, a3);
        return (v66)(v72, v67, a3);
      }
    }
  }

  else
  {
    sub_2519CC228(&v77);
    if (swift_conformsToProtocol2())
    {
      v29 = a2[2];
      v30 = a2[4];
      v31 = type metadata accessor for HgQLDecoderCore();
      *(&v81 + 1) = &type metadata for PlaceholderRow;
      v82 = sub_2519DA2F4();
      v32 = v6[5];
      sub_2519D9D70();
      v33 = swift_initStackObject();
      *(v33 + 16) = xmmword_2519F3F20;
      v34 = v76;
      v35 = v75;
      *(v33 + 56) = v76;
      *(v33 + 64) = v35;
      v36 = __swift_allocate_boxed_opaque_existential_0((v33 + 32));
      (*(*(v34 - 8) + 16))(v36, v84, v34);
      *&v77 = v32;

      sub_2519D8A3C(v33);
      v37 = HgQLDecoderCore.__allocating_init(row:column:codingPath:)(&v80, 0, 0, v77);
      v38 = v6[6];

      swift_beginAccess();
      v39 = v37[10];
      v37[10] = v38;

      *(&v81 + 1) = v31;
      v82 = swift_getWitnessTable();
      *&v80 = v37;
      return sub_2519F0B88();
    }

    else
    {
      v57 = sub_2519F0CE8();
      swift_allocError();
      v59 = v58;
      sub_2519DA348();
      v74 = *(v60 + 48);
      v61 = v76;
      v62 = v75;
      v59[3] = v76;
      v59[4] = v62;
      v63 = __swift_allocate_boxed_opaque_existential_0(v59);
      (*(*(v61 - 8) + 16))(v63, v84, v61);
      v64 = v6[5];
      *&v80 = 0;
      *(&v80 + 1) = 0xE000000000000000;

      sub_2519F0CA8();

      *&v80 = 0xD000000000000011;
      *(&v80 + 1) = 0x80000002519F6D00;
      v65 = sub_2519F1178();
      MEMORY[0x253089BD0](v65);

      sub_2519F0CC8();
      (*(*(v57 - 8) + 104))(v59, *MEMORY[0x277D84158], v57);
      return swift_willThrow();
    }
  }
}

uint64_t sub_2519D14CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_2519F09C8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2519DA6C4(a1, &v53);
  sub_2519D9FD4(a2, a3, &v53, a4);
  result = sub_2519CC228(&v53);
  if (!v4)
  {
    sub_2519DA6C4(a1, &v53);
    if (swift_dynamicCast())
    {
      return LOBYTE(v51);
    }

    sub_2519DA6C4(a1, &v53);
    if (swift_dynamicCast())
    {
      v53 = 0x2820656E6F6ELL;
      v54 = 0xE600000000000000;
      v16 = sub_2519F0F18();
      MEMORY[0x253089BD0](v16);

      MEMORY[0x253089BD0](41, 0xE100000000000000);
    }

    sub_2519DA6C4(a1, &v53);
    if (swift_dynamicCast())
    {
      MEMORY[0x253089DC0](v51);
    }

    sub_2519DA6C4(a1, &v53);
    result = swift_dynamicCast();
    if (!result)
    {
      return 2;
    }

    v18 = *&v51;
    v17 = v52;
    v19 = HIBYTE(v52) & 0xF;
    v20 = *&v51 & 0xFFFFFFFFFFFFLL;
    if ((v52 & 0x2000000000000000) != 0)
    {
      v21 = HIBYTE(v52) & 0xF;
    }

    else
    {
      v21 = *&v51 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      if ((v52 & 0x1000000000000000) == 0)
      {
        if ((v52 & 0x2000000000000000) != 0)
        {
          v53 = *&v51;
          v54 = v52 & 0xFFFFFFFFFFFFFFLL;
          if (LOBYTE(v51) == 43)
          {
            if (v19)
            {
              if (--v19)
              {
                v23 = 0;
                v33 = &v53 + 1;
                while (1)
                {
                  v34 = *v33 - 48;
                  if (v34 > 9)
                  {
                    break;
                  }

                  v35 = 10 * v23;
                  if ((v23 * 10) >> 64 != (10 * v23) >> 63)
                  {
                    break;
                  }

                  v23 = v35 + v34;
                  if (__OFADD__(v35, v34))
                  {
                    break;
                  }

                  ++v33;
                  if (!--v19)
                  {
                    goto LABEL_70;
                  }
                }
              }

              goto LABEL_69;
            }

LABEL_84:
            __break(1u);
            return result;
          }

          if (LOBYTE(v51) != 45)
          {
            if (v19)
            {
              v23 = 0;
              v38 = &v53;
              while (1)
              {
                v39 = *v38 - 48;
                if (v39 > 9)
                {
                  break;
                }

                v40 = 10 * v23;
                if ((v23 * 10) >> 64 != (10 * v23) >> 63)
                {
                  break;
                }

                v23 = v40 + v39;
                if (__OFADD__(v40, v39))
                {
                  break;
                }

                v38 = (v38 + 1);
                if (!--v19)
                {
                  goto LABEL_70;
                }
              }
            }

            goto LABEL_69;
          }

          if (v19)
          {
            if (--v19)
            {
              v23 = 0;
              v27 = &v53 + 1;
              while (1)
              {
                v28 = *v27 - 48;
                if (v28 > 9)
                {
                  break;
                }

                v29 = 10 * v23;
                if ((v23 * 10) >> 64 != (10 * v23) >> 63)
                {
                  break;
                }

                v23 = v29 - v28;
                if (__OFSUB__(v29, v28))
                {
                  break;
                }

                ++v27;
                if (!--v19)
                {
                  goto LABEL_70;
                }
              }
            }

            goto LABEL_69;
          }
        }

        else
        {
          if ((*&v51 & 0x1000000000000000) != 0)
          {
            result = (v52 & 0xFFFFFFFFFFFFFFFLL) + 32;
          }

          else
          {
            result = sub_2519F0D08();
          }

          v22 = *result;
          if (v22 == 43)
          {
            if (v20 >= 1)
            {
              v19 = v20 - 1;
              if (v20 != 1)
              {
                v23 = 0;
                if (result)
                {
                  v30 = (result + 1);
                  while (1)
                  {
                    v31 = *v30 - 48;
                    if (v31 > 9)
                    {
                      goto LABEL_69;
                    }

                    v32 = 10 * v23;
                    if ((v23 * 10) >> 64 != (10 * v23) >> 63)
                    {
                      goto LABEL_69;
                    }

                    v23 = v32 + v31;
                    if (__OFADD__(v32, v31))
                    {
                      goto LABEL_69;
                    }

                    ++v30;
                    if (!--v19)
                    {
                      goto LABEL_70;
                    }
                  }
                }

                goto LABEL_61;
              }

              goto LABEL_69;
            }

            goto LABEL_83;
          }

          if (v22 != 45)
          {
            if (v20)
            {
              v23 = 0;
              if (result)
              {
                while (1)
                {
                  v36 = *result - 48;
                  if (v36 > 9)
                  {
                    goto LABEL_69;
                  }

                  v37 = 10 * v23;
                  if ((v23 * 10) >> 64 != (10 * v23) >> 63)
                  {
                    goto LABEL_69;
                  }

                  v23 = v37 + v36;
                  if (__OFADD__(v37, v36))
                  {
                    goto LABEL_69;
                  }

                  ++result;
                  if (!--v20)
                  {
                    goto LABEL_61;
                  }
                }
              }

              goto LABEL_61;
            }

LABEL_69:
            v23 = 0;
            LOBYTE(v19) = 1;
LABEL_70:
            LOBYTE(v51) = v19;
            if (v19)
            {
              goto LABEL_72;
            }

            goto LABEL_71;
          }

          if (v20 >= 1)
          {
            v19 = v20 - 1;
            if (v20 != 1)
            {
              v23 = 0;
              if (result)
              {
                v24 = (result + 1);
                while (1)
                {
                  v25 = *v24 - 48;
                  if (v25 > 9)
                  {
                    goto LABEL_69;
                  }

                  v26 = 10 * v23;
                  if ((v23 * 10) >> 64 != (10 * v23) >> 63)
                  {
                    goto LABEL_69;
                  }

                  v23 = v26 - v25;
                  if (__OFSUB__(v26, v25))
                  {
                    goto LABEL_69;
                  }

                  ++v24;
                  if (!--v19)
                  {
                    goto LABEL_70;
                  }
                }
              }

LABEL_61:
              LOBYTE(v19) = 0;
              goto LABEL_70;
            }

            goto LABEL_69;
          }

          __break(1u);
        }

        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      v23 = sub_2519D8B48(v18, v17, 10);
      v49 = v48;

      if ((v49 & 1) == 0)
      {
LABEL_71:
        v53 = 0x2820656E6F6ELL;
        v54 = 0xE600000000000000;
        v51 = *&v23;
        v41 = sub_2519F0F18();
        MEMORY[0x253089BD0](v41);

        MEMORY[0x253089BD0](41, 0xE100000000000000);
      }
    }

LABEL_72:
    v53 = 0;
    if (sub_2519D9548(v18, v17))
    {
      MEMORY[0x253089DC0](*&v53);
    }

    sub_2519F09B8();
    v42 = sub_2519F09A8();
    v44 = v43;

    (*(v10 + 8))(v14, v9);
    if (v44 >> 60 != 15)
    {
      v45 = sub_2519F0828();
      v46 = *(v45 + 48);
      v47 = *(v45 + 52);
      swift_allocObject();
      sub_2519F0818();
      sub_2519F0808();
      sub_2519DA720(v42, v44);

      return v53;
    }

    return 2;
  }

  return result;
}

unsigned __int8 *sub_2519D1B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_2519F09C8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2519DA6C4(a1, &v53);
  sub_2519D9FD4(a2, a3, &v53, a4);
  result = sub_2519CC228(&v53);
  if (!v4)
  {
    sub_2519DA6C4(a1, &v53);
    if (swift_dynamicCast())
    {
      return *&v51;
    }

    sub_2519DA6C4(a1, &v53);
    if (swift_dynamicCast())
    {
      v53 = 0x2820656E6F6ELL;
      v54 = 0xE600000000000000;
      v16 = sub_2519F0F18();
      MEMORY[0x253089BD0](v16);

      MEMORY[0x253089BD0](41, 0xE100000000000000);
    }

    sub_2519DA6C4(a1, &v53);
    if (swift_dynamicCast())
    {
      MEMORY[0x253089DC0](v51);
    }

    sub_2519DA6C4(a1, &v53);
    result = swift_dynamicCast();
    if (!result)
    {
      return 0;
    }

    v18 = *&v51;
    v17 = v52;
    v19 = HIBYTE(v52) & 0xF;
    v20 = *&v51 & 0xFFFFFFFFFFFFLL;
    if ((v52 & 0x2000000000000000) != 0)
    {
      v21 = HIBYTE(v52) & 0xF;
    }

    else
    {
      v21 = *&v51 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      if ((v52 & 0x1000000000000000) == 0)
      {
        if ((v52 & 0x2000000000000000) != 0)
        {
          v53 = *&v51;
          v54 = v52 & 0xFFFFFFFFFFFFFFLL;
          if (LOBYTE(v51) == 43)
          {
            if (v19)
            {
              if (--v19)
              {
                v23 = 0;
                v33 = &v53 + 1;
                while (1)
                {
                  v34 = *v33 - 48;
                  if (v34 > 9)
                  {
                    break;
                  }

                  v35 = 10 * v23;
                  if ((v23 * 10) >> 64 != (10 * v23) >> 63)
                  {
                    break;
                  }

                  v23 = v35 + v34;
                  if (__OFADD__(v35, v34))
                  {
                    break;
                  }

                  ++v33;
                  if (!--v19)
                  {
                    goto LABEL_70;
                  }
                }
              }

              goto LABEL_69;
            }

LABEL_84:
            __break(1u);
            return result;
          }

          if (LOBYTE(v51) != 45)
          {
            if (v19)
            {
              v23 = 0;
              v38 = &v53;
              while (1)
              {
                v39 = *v38 - 48;
                if (v39 > 9)
                {
                  break;
                }

                v40 = 10 * v23;
                if ((v23 * 10) >> 64 != (10 * v23) >> 63)
                {
                  break;
                }

                v23 = v40 + v39;
                if (__OFADD__(v40, v39))
                {
                  break;
                }

                v38 = (v38 + 1);
                if (!--v19)
                {
                  goto LABEL_70;
                }
              }
            }

            goto LABEL_69;
          }

          if (v19)
          {
            if (--v19)
            {
              v23 = 0;
              v27 = &v53 + 1;
              while (1)
              {
                v28 = *v27 - 48;
                if (v28 > 9)
                {
                  break;
                }

                v29 = 10 * v23;
                if ((v23 * 10) >> 64 != (10 * v23) >> 63)
                {
                  break;
                }

                v23 = v29 - v28;
                if (__OFSUB__(v29, v28))
                {
                  break;
                }

                ++v27;
                if (!--v19)
                {
                  goto LABEL_70;
                }
              }
            }

            goto LABEL_69;
          }
        }

        else
        {
          if ((*&v51 & 0x1000000000000000) != 0)
          {
            result = ((v52 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            result = sub_2519F0D08();
          }

          v22 = *result;
          if (v22 == 43)
          {
            if (v20 >= 1)
            {
              v19 = v20 - 1;
              if (v20 != 1)
              {
                v23 = 0;
                if (result)
                {
                  v30 = result + 1;
                  while (1)
                  {
                    v31 = *v30 - 48;
                    if (v31 > 9)
                    {
                      goto LABEL_69;
                    }

                    v32 = 10 * v23;
                    if ((v23 * 10) >> 64 != (10 * v23) >> 63)
                    {
                      goto LABEL_69;
                    }

                    v23 = v32 + v31;
                    if (__OFADD__(v32, v31))
                    {
                      goto LABEL_69;
                    }

                    ++v30;
                    if (!--v19)
                    {
                      goto LABEL_70;
                    }
                  }
                }

                goto LABEL_61;
              }

              goto LABEL_69;
            }

            goto LABEL_83;
          }

          if (v22 != 45)
          {
            if (v20)
            {
              v23 = 0;
              if (result)
              {
                while (1)
                {
                  v36 = *result - 48;
                  if (v36 > 9)
                  {
                    goto LABEL_69;
                  }

                  v37 = 10 * v23;
                  if ((v23 * 10) >> 64 != (10 * v23) >> 63)
                  {
                    goto LABEL_69;
                  }

                  v23 = v37 + v36;
                  if (__OFADD__(v37, v36))
                  {
                    goto LABEL_69;
                  }

                  ++result;
                  if (!--v20)
                  {
                    goto LABEL_61;
                  }
                }
              }

              goto LABEL_61;
            }

LABEL_69:
            v23 = 0;
            LOBYTE(v19) = 1;
LABEL_70:
            LOBYTE(v51) = v19;
            if (v19)
            {
              goto LABEL_72;
            }

            goto LABEL_71;
          }

          if (v20 >= 1)
          {
            v19 = v20 - 1;
            if (v20 != 1)
            {
              v23 = 0;
              if (result)
              {
                v24 = result + 1;
                while (1)
                {
                  v25 = *v24 - 48;
                  if (v25 > 9)
                  {
                    goto LABEL_69;
                  }

                  v26 = 10 * v23;
                  if ((v23 * 10) >> 64 != (10 * v23) >> 63)
                  {
                    goto LABEL_69;
                  }

                  v23 = v26 - v25;
                  if (__OFSUB__(v26, v25))
                  {
                    goto LABEL_69;
                  }

                  ++v24;
                  if (!--v19)
                  {
                    goto LABEL_70;
                  }
                }
              }

LABEL_61:
              LOBYTE(v19) = 0;
              goto LABEL_70;
            }

            goto LABEL_69;
          }

          __break(1u);
        }

        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      v23 = sub_2519D8B48(v18, v17, 10);
      v49 = v48;

      if ((v49 & 1) == 0)
      {
LABEL_71:
        v53 = 0x2820656E6F6ELL;
        v54 = 0xE600000000000000;
        v51 = *&v23;
        v41 = sub_2519F0F18();
        MEMORY[0x253089BD0](v41);

        MEMORY[0x253089BD0](41, 0xE100000000000000);
      }
    }

LABEL_72:
    v53 = 0;
    if (sub_2519D9548(v18, v17))
    {
      MEMORY[0x253089DC0](*&v53);
    }

    sub_2519F09B8();
    v42 = sub_2519F09A8();
    v44 = v43;

    (*(v10 + 8))(v14, v9);
    if (v44 >> 60 != 15)
    {
      v45 = sub_2519F0828();
      v46 = *(v45 + 48);
      v47 = *(v45 + 52);
      swift_allocObject();
      sub_2519F0818();
      sub_2519F0808();
      sub_2519DA720(v42, v44);

      return v53;
    }

    return 0;
  }

  return result;
}

unsigned __int8 *sub_2519D218C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_2519F09C8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2519DA6C4(a1, &v53);
  sub_2519D9FD4(a2, a3, &v53, a4);
  result = sub_2519CC228(&v53);
  if (!v4)
  {
    sub_2519DA6C4(a1, &v53);
    if (swift_dynamicCast())
    {
      return v51;
    }

    sub_2519DA6C4(a1, &v53);
    if (swift_dynamicCast())
    {
      v53 = 0x2820656E6F6ELL;
      v54 = 0xE600000000000000;
      v16 = sub_2519F0F18();
      MEMORY[0x253089BD0](v16);

      MEMORY[0x253089BD0](41, 0xE100000000000000);
    }

    sub_2519DA6C4(a1, &v53);
    if (swift_dynamicCast())
    {
      return v51;
    }

    sub_2519DA6C4(a1, &v53);
    result = swift_dynamicCast();
    if (!result)
    {
      return 0;
    }

    v18 = v51;
    v17 = v52;
    v19 = HIBYTE(v52) & 0xF;
    v20 = v51 & 0xFFFFFFFFFFFFLL;
    if ((v52 & 0x2000000000000000) != 0)
    {
      v21 = HIBYTE(v52) & 0xF;
    }

    else
    {
      v21 = v51 & 0xFFFFFFFFFFFFLL;
    }

    if (!v21)
    {
      goto LABEL_72;
    }

    if ((v52 & 0x1000000000000000) != 0)
    {

      v23 = sub_2519D8B48(v18, v17, 10);
      v49 = v48;

      if (v49)
      {
        goto LABEL_72;
      }

      goto LABEL_71;
    }

    if ((v52 & 0x2000000000000000) != 0)
    {
      v53 = v51;
      v54 = v52 & 0xFFFFFFFFFFFFFFLL;
      if (v51 == 43)
      {
        if (v19)
        {
          if (--v19)
          {
            v23 = 0;
            v33 = &v53 + 1;
            while (1)
            {
              v34 = *v33 - 48;
              if (v34 > 9)
              {
                break;
              }

              v35 = 10 * v23;
              if ((v23 * 10) >> 64 != (10 * v23) >> 63)
              {
                break;
              }

              v23 = v35 + v34;
              if (__OFADD__(v35, v34))
              {
                break;
              }

              ++v33;
              if (!--v19)
              {
                goto LABEL_70;
              }
            }
          }

          goto LABEL_69;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v51 != 45)
      {
        if (v19)
        {
          v23 = 0;
          v38 = &v53;
          while (1)
          {
            v39 = *v38 - 48;
            if (v39 > 9)
            {
              break;
            }

            v40 = 10 * v23;
            if ((v23 * 10) >> 64 != (10 * v23) >> 63)
            {
              break;
            }

            v23 = v40 + v39;
            if (__OFADD__(v40, v39))
            {
              break;
            }

            v38 = (v38 + 1);
            if (!--v19)
            {
              goto LABEL_70;
            }
          }
        }

        goto LABEL_69;
      }

      if (v19)
      {
        if (--v19)
        {
          v23 = 0;
          v27 = &v53 + 1;
          while (1)
          {
            v28 = *v27 - 48;
            if (v28 > 9)
            {
              break;
            }

            v29 = 10 * v23;
            if ((v23 * 10) >> 64 != (10 * v23) >> 63)
            {
              break;
            }

            v23 = v29 - v28;
            if (__OFSUB__(v29, v28))
            {
              break;
            }

            ++v27;
            if (!--v19)
            {
              goto LABEL_70;
            }
          }
        }

        goto LABEL_69;
      }
    }

    else
    {
      if ((v51 & 0x1000000000000000) != 0)
      {
        result = ((v52 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_2519F0D08();
      }

      v22 = *result;
      if (v22 == 43)
      {
        if (v20 >= 1)
        {
          v19 = v20 - 1;
          if (v20 != 1)
          {
            v23 = 0;
            if (result)
            {
              v30 = result + 1;
              while (1)
              {
                v31 = *v30 - 48;
                if (v31 > 9)
                {
                  goto LABEL_69;
                }

                v32 = 10 * v23;
                if ((v23 * 10) >> 64 != (10 * v23) >> 63)
                {
                  goto LABEL_69;
                }

                v23 = v32 + v31;
                if (__OFADD__(v32, v31))
                {
                  goto LABEL_69;
                }

                ++v30;
                if (!--v19)
                {
                  goto LABEL_70;
                }
              }
            }

            goto LABEL_61;
          }

          goto LABEL_69;
        }

        goto LABEL_83;
      }

      if (v22 != 45)
      {
        if (v20)
        {
          v23 = 0;
          if (result)
          {
            while (1)
            {
              v36 = *result - 48;
              if (v36 > 9)
              {
                goto LABEL_69;
              }

              v37 = 10 * v23;
              if ((v23 * 10) >> 64 != (10 * v23) >> 63)
              {
                goto LABEL_69;
              }

              v23 = v37 + v36;
              if (__OFADD__(v37, v36))
              {
                goto LABEL_69;
              }

              ++result;
              if (!--v20)
              {
                goto LABEL_61;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_69:
        v23 = 0;
        LOBYTE(v19) = 1;
LABEL_70:
        LOBYTE(v51) = v19;
        if ((v19 & 1) == 0)
        {
LABEL_71:
          v53 = 0x2820656E6F6ELL;
          v54 = 0xE600000000000000;
          v51 = v23;
          v41 = sub_2519F0F18();
          MEMORY[0x253089BD0](v41);

          MEMORY[0x253089BD0](41, 0xE100000000000000);
        }

LABEL_72:
        v53 = 0;
        if (sub_2519D9548(v18, v17))
        {

          return v53;
        }

        sub_2519F09B8();
        v42 = sub_2519F09A8();
        v44 = v43;

        (*(v10 + 8))(v14, v9);
        if (v44 >> 60 != 15)
        {
          v45 = sub_2519F0828();
          v46 = *(v45 + 48);
          v47 = *(v45 + 52);
          swift_allocObject();
          sub_2519F0818();
          sub_2519F0808();
          sub_2519DA720(v42, v44);

          return v53;
        }

        return 0;
      }

      if (v20 >= 1)
      {
        v19 = v20 - 1;
        if (v20 != 1)
        {
          v23 = 0;
          if (result)
          {
            v24 = result + 1;
            while (1)
            {
              v25 = *v24 - 48;
              if (v25 > 9)
              {
                goto LABEL_69;
              }

              v26 = 10 * v23;
              if ((v23 * 10) >> 64 != (10 * v23) >> 63)
              {
                goto LABEL_69;
              }

              v23 = v26 - v25;
              if (__OFSUB__(v26, v25))
              {
                goto LABEL_69;
              }

              ++v24;
              if (!--v19)
              {
                goto LABEL_70;
              }
            }
          }

LABEL_61:
          LOBYTE(v19) = 0;
          goto LABEL_70;
        }

        goto LABEL_69;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  return result;
}

unsigned __int8 *sub_2519D27F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_2519F09C8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2519DA6C4(a1, v51);
  sub_2519D9FD4(a2, a3, v51, a4);
  result = sub_2519CC228(v51);
  if (!v4)
  {
    sub_2519DA6C4(a1, v51);
    if (swift_dynamicCast())
    {
      return *&v49;
    }

    sub_2519DA6C4(a1, v51);
    if (swift_dynamicCast())
    {
      return *&v49;
    }

    sub_2519DA6C4(a1, v51);
    if (swift_dynamicCast())
    {
      MEMORY[0x253089DC0](v49);
    }

    sub_2519DA6C4(a1, v51);
    result = swift_dynamicCast();
    if (!result)
    {
      return 0;
    }

    v17 = *&v49;
    v16 = v50;
    v18 = HIBYTE(v50) & 0xF;
    v19 = *&v49 & 0xFFFFFFFFFFFFLL;
    if ((v50 & 0x2000000000000000) != 0)
    {
      v20 = HIBYTE(v50) & 0xF;
    }

    else
    {
      v20 = *&v49 & 0xFFFFFFFFFFFFLL;
    }

    if (v20)
    {
      if ((v50 & 0x1000000000000000) == 0)
      {
        if ((v50 & 0x2000000000000000) != 0)
        {
          v51[0] = v49;
          *&v51[1] = v50 & 0xFFFFFFFFFFFFFFLL;
          if (LOBYTE(v49) == 43)
          {
            if (v18)
            {
              if (--v18)
              {
                v22 = 0;
                v32 = v51 + 1;
                while (1)
                {
                  v33 = *v32 - 48;
                  if (v33 > 9)
                  {
                    break;
                  }

                  v34 = 10 * v22;
                  if ((v22 * 10) >> 64 != (10 * v22) >> 63)
                  {
                    break;
                  }

                  v22 = v34 + v33;
                  if (__OFADD__(v34, v33))
                  {
                    break;
                  }

                  ++v32;
                  if (!--v18)
                  {
                    goto LABEL_70;
                  }
                }
              }

              goto LABEL_69;
            }

LABEL_82:
            __break(1u);
            return result;
          }

          if (LOBYTE(v49) != 45)
          {
            if (v18)
            {
              v22 = 0;
              v37 = v51;
              while (1)
              {
                v38 = *v37 - 48;
                if (v38 > 9)
                {
                  break;
                }

                v39 = 10 * v22;
                if ((v22 * 10) >> 64 != (10 * v22) >> 63)
                {
                  break;
                }

                v22 = v39 + v38;
                if (__OFADD__(v39, v38))
                {
                  break;
                }

                v37 = (v37 + 1);
                if (!--v18)
                {
                  goto LABEL_70;
                }
              }
            }

            goto LABEL_69;
          }

          if (v18)
          {
            if (--v18)
            {
              v22 = 0;
              v26 = v51 + 1;
              while (1)
              {
                v27 = *v26 - 48;
                if (v27 > 9)
                {
                  break;
                }

                v28 = 10 * v22;
                if ((v22 * 10) >> 64 != (10 * v22) >> 63)
                {
                  break;
                }

                v22 = v28 - v27;
                if (__OFSUB__(v28, v27))
                {
                  break;
                }

                ++v26;
                if (!--v18)
                {
                  goto LABEL_70;
                }
              }
            }

            goto LABEL_69;
          }
        }

        else
        {
          if ((*&v49 & 0x1000000000000000) != 0)
          {
            result = ((v50 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            result = sub_2519F0D08();
          }

          v21 = *result;
          if (v21 == 43)
          {
            if (v19 >= 1)
            {
              v18 = v19 - 1;
              if (v19 != 1)
              {
                v22 = 0;
                if (result)
                {
                  v29 = result + 1;
                  while (1)
                  {
                    v30 = *v29 - 48;
                    if (v30 > 9)
                    {
                      goto LABEL_69;
                    }

                    v31 = 10 * v22;
                    if ((v22 * 10) >> 64 != (10 * v22) >> 63)
                    {
                      goto LABEL_69;
                    }

                    v22 = v31 + v30;
                    if (__OFADD__(v31, v30))
                    {
                      goto LABEL_69;
                    }

                    ++v29;
                    if (!--v18)
                    {
                      goto LABEL_70;
                    }
                  }
                }

                goto LABEL_61;
              }

              goto LABEL_69;
            }

            goto LABEL_81;
          }

          if (v21 != 45)
          {
            if (v19)
            {
              v22 = 0;
              if (result)
              {
                while (1)
                {
                  v35 = *result - 48;
                  if (v35 > 9)
                  {
                    goto LABEL_69;
                  }

                  v36 = 10 * v22;
                  if ((v22 * 10) >> 64 != (10 * v22) >> 63)
                  {
                    goto LABEL_69;
                  }

                  v22 = v36 + v35;
                  if (__OFADD__(v36, v35))
                  {
                    goto LABEL_69;
                  }

                  ++result;
                  if (!--v19)
                  {
                    goto LABEL_61;
                  }
                }
              }

              goto LABEL_61;
            }

LABEL_69:
            v22 = 0;
            LOBYTE(v18) = 1;
LABEL_70:
            LOBYTE(v49) = v18;
            if (v18)
            {
              goto LABEL_71;
            }

LABEL_77:

            return v22;
          }

          if (v19 >= 1)
          {
            v18 = v19 - 1;
            if (v19 != 1)
            {
              v22 = 0;
              if (result)
              {
                v23 = result + 1;
                while (1)
                {
                  v24 = *v23 - 48;
                  if (v24 > 9)
                  {
                    goto LABEL_69;
                  }

                  v25 = 10 * v22;
                  if ((v22 * 10) >> 64 != (10 * v22) >> 63)
                  {
                    goto LABEL_69;
                  }

                  v22 = v25 - v24;
                  if (__OFSUB__(v25, v24))
                  {
                    goto LABEL_69;
                  }

                  ++v23;
                  if (!--v18)
                  {
                    goto LABEL_70;
                  }
                }
              }

LABEL_61:
              LOBYTE(v18) = 0;
              goto LABEL_70;
            }

            goto LABEL_69;
          }

          __break(1u);
        }

        __break(1u);
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      v22 = sub_2519D8B48(v17, v16, 10);
      v47 = v46;

      if ((v47 & 1) == 0)
      {
        goto LABEL_77;
      }
    }

LABEL_71:
    v51[0] = 0.0;
    if (sub_2519D9548(v17, v16))
    {
      MEMORY[0x253089DC0](v51[0]);
    }

    sub_2519F09B8();
    v40 = sub_2519F09A8();
    v42 = v41;

    (*(v10 + 8))(v14, v9);
    if (v42 >> 60 != 15)
    {
      v43 = sub_2519F0828();
      v44 = *(v43 + 48);
      v45 = *(v43 + 52);
      swift_allocObject();
      sub_2519F0818();
      sub_2519F0808();
      sub_2519DA720(v40, v42);

      return *&v51[0];
    }

    return 0;
  }

  return result;
}

unsigned __int8 *sub_2519D2DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v63 = a6;
  v11 = sub_2519F09C8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2519DA6C4(a1, &v61);
  sub_2519D9FD4(a2, a3, &v61, a4);
  result = sub_2519CC228(&v61);
  if (!v6)
  {
    v57 = v16;
    v58 = v12;
    sub_2519DA6C4(a1, &v61);
    if (swift_dynamicCast())
    {
      v18 = 0;
      v19 = LODWORD(v59);
LABEL_76:
      LOBYTE(v61) = v18;
      return (v19 | (v18 << 32));
    }

    sub_2519DA6C4(a1, &v61);
    if (swift_dynamicCast())
    {
      v61 = 0x2820656E6F6ELL;
      v62 = 0xE600000000000000;
      v20 = sub_2519F0F18();
      MEMORY[0x253089BD0](v20);

      MEMORY[0x253089BD0](41, 0xE100000000000000);
    }

    sub_2519DA6C4(a1, &v61);
    if (swift_dynamicCast())
    {
      MEMORY[0x253089DC0](v59);
    }

    sub_2519DA6C4(a1, &v61);
    result = swift_dynamicCast();
    if (!result)
    {
LABEL_75:
      v19 = 0;
      v18 = 1;
      goto LABEL_76;
    }

    v22 = *&v59;
    v21 = v60;
    v23 = HIBYTE(v60) & 0xF;
    v24 = *&v59 & 0xFFFFFFFFFFFFLL;
    if ((v60 & 0x2000000000000000) != 0)
    {
      v25 = HIBYTE(v60) & 0xF;
    }

    else
    {
      v25 = *&v59 & 0xFFFFFFFFFFFFLL;
    }

    if (v25)
    {
      if ((v60 & 0x1000000000000000) == 0)
      {
        if ((v60 & 0x2000000000000000) != 0)
        {
          v61 = *&v59;
          v62 = v60 & 0xFFFFFFFFFFFFFFLL;
          if (LOBYTE(v59) == 43)
          {
            if (v23)
            {
              if (--v23)
              {
                v27 = 0;
                v37 = &v61 + 1;
                while (1)
                {
                  v38 = *v37 - 48;
                  if (v38 > 9)
                  {
                    break;
                  }

                  v39 = 10 * v27;
                  if ((v27 * 10) >> 64 != (10 * v27) >> 63)
                  {
                    break;
                  }

                  v27 = v39 + v38;
                  if (__OFADD__(v39, v38))
                  {
                    break;
                  }

                  ++v37;
                  if (!--v23)
                  {
                    goto LABEL_70;
                  }
                }
              }

              goto LABEL_69;
            }

LABEL_85:
            __break(1u);
            return result;
          }

          if (LOBYTE(v59) != 45)
          {
            if (v23)
            {
              v27 = 0;
              v42 = &v61;
              while (1)
              {
                v43 = *v42 - 48;
                if (v43 > 9)
                {
                  break;
                }

                v44 = 10 * v27;
                if ((v27 * 10) >> 64 != (10 * v27) >> 63)
                {
                  break;
                }

                v27 = v44 + v43;
                if (__OFADD__(v44, v43))
                {
                  break;
                }

                v42 = (v42 + 1);
                if (!--v23)
                {
                  goto LABEL_70;
                }
              }
            }

            goto LABEL_69;
          }

          if (v23)
          {
            if (--v23)
            {
              v27 = 0;
              v31 = &v61 + 1;
              while (1)
              {
                v32 = *v31 - 48;
                if (v32 > 9)
                {
                  break;
                }

                v33 = 10 * v27;
                if ((v27 * 10) >> 64 != (10 * v27) >> 63)
                {
                  break;
                }

                v27 = v33 - v32;
                if (__OFSUB__(v33, v32))
                {
                  break;
                }

                ++v31;
                if (!--v23)
                {
                  goto LABEL_70;
                }
              }
            }

            goto LABEL_69;
          }
        }

        else
        {
          if ((*&v59 & 0x1000000000000000) != 0)
          {
            result = ((v60 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            result = sub_2519F0D08();
          }

          v26 = *result;
          if (v26 == 43)
          {
            if (v24 >= 1)
            {
              v23 = v24 - 1;
              if (v24 != 1)
              {
                v27 = 0;
                if (result)
                {
                  v34 = result + 1;
                  while (1)
                  {
                    v35 = *v34 - 48;
                    if (v35 > 9)
                    {
                      goto LABEL_69;
                    }

                    v36 = 10 * v27;
                    if ((v27 * 10) >> 64 != (10 * v27) >> 63)
                    {
                      goto LABEL_69;
                    }

                    v27 = v36 + v35;
                    if (__OFADD__(v36, v35))
                    {
                      goto LABEL_69;
                    }

                    ++v34;
                    if (!--v23)
                    {
                      goto LABEL_70;
                    }
                  }
                }

                goto LABEL_61;
              }

              goto LABEL_69;
            }

            goto LABEL_84;
          }

          if (v26 != 45)
          {
            if (v24)
            {
              v27 = 0;
              if (result)
              {
                while (1)
                {
                  v40 = *result - 48;
                  if (v40 > 9)
                  {
                    goto LABEL_69;
                  }

                  v41 = 10 * v27;
                  if ((v27 * 10) >> 64 != (10 * v27) >> 63)
                  {
                    goto LABEL_69;
                  }

                  v27 = v41 + v40;
                  if (__OFADD__(v41, v40))
                  {
                    goto LABEL_69;
                  }

                  ++result;
                  if (!--v24)
                  {
                    goto LABEL_61;
                  }
                }
              }

              goto LABEL_61;
            }

LABEL_69:
            v27 = 0;
            LOBYTE(v23) = 1;
LABEL_70:
            LOBYTE(v59) = v23;
            if (v23)
            {
              goto LABEL_72;
            }

            goto LABEL_71;
          }

          if (v24 >= 1)
          {
            v23 = v24 - 1;
            if (v24 != 1)
            {
              v27 = 0;
              if (result)
              {
                v28 = result + 1;
                while (1)
                {
                  v29 = *v28 - 48;
                  if (v29 > 9)
                  {
                    goto LABEL_69;
                  }

                  v30 = 10 * v27;
                  if ((v27 * 10) >> 64 != (10 * v27) >> 63)
                  {
                    goto LABEL_69;
                  }

                  v27 = v30 - v29;
                  if (__OFSUB__(v30, v29))
                  {
                    goto LABEL_69;
                  }

                  ++v28;
                  if (!--v23)
                  {
                    goto LABEL_70;
                  }
                }
              }

LABEL_61:
              LOBYTE(v23) = 0;
              goto LABEL_70;
            }

            goto LABEL_69;
          }

          __break(1u);
        }

        __break(1u);
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      v27 = sub_2519D8B48(v22, v21, 10);
      v55 = v54;

      if ((v55 & 1) == 0)
      {
LABEL_71:
        v61 = 0x2820656E6F6ELL;
        v62 = 0xE600000000000000;
        v59 = *&v27;
        v45 = sub_2519F0F18();
        MEMORY[0x253089BD0](v45);

        MEMORY[0x253089BD0](41, 0xE100000000000000);
      }
    }

LABEL_72:
    v61 = 0;
    if (sub_2519D9548(v22, v21))
    {
      MEMORY[0x253089DC0](*&v61);
    }

    v47 = v57;
    v46 = v58;
    sub_2519F09B8();
    v48 = sub_2519F09A8();
    v50 = v49;

    (*(v46 + 8))(v47, v11);
    if (v50 >> 60 != 15)
    {
      v51 = sub_2519F0828();
      v52 = *(v51 + 48);
      v53 = *(v51 + 52);
      swift_allocObject();
      sub_2519F0818();
      sub_2519F0808();
      sub_2519DA720(v48, v50);

      v18 = 0;
      v19 = v61;
      goto LABEL_76;
    }

    goto LABEL_75;
  }

  return result;
}