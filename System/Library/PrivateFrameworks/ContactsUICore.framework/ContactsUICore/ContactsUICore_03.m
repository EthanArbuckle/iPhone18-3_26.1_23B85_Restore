void sub_1A329A3D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + *(a3 + 40));
  v5 = *(*v4 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v4 + v6));
  sub_1A329BC10(v4 + v5);
  os_unfair_lock_unlock((v4 + v6));
}

uint64_t sub_1A329A478(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C57E8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v12 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8990);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - v7;
  sub_1A329D98C(a1, v4, &qword_1EB0C57E8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C57F0);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v4, 1, v9) == 1)
  {
    sub_1A3288FDC(v4, &qword_1EB0C57E8);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_1A329D694();
    v12[1] = swift_allocError();
    sub_1A34CD3F0();
    (*(v6 + 8))(v8, v5);
  }

  return (*(v10 + 56))(a1, 1, 1, v9);
}

uint64_t sub_1A329A6B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C57D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v12 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C57D8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - v7;
  sub_1A329D98C(a1, v4, &qword_1EB0C57D0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C57E0);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v4, 1, v9) == 1)
  {
    sub_1A3288FDC(v4, &qword_1EB0C57D0);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_1A329D694();
    v12[1] = swift_allocError();
    sub_1A34CD3F0();
    (*(v6 + 8))(v8, v5);
  }

  return (*(v10 + 56))(a1, 1, 1, v9);
}

uint64_t sub_1A329A8F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5808);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v12 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5810);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - v7;
  sub_1A329D98C(a1, v4, &qword_1EB0C5808);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5818);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v4, 1, v9) == 1)
  {
    sub_1A3288FDC(v4, &qword_1EB0C5808);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_1A329D694();
    v12[1] = swift_allocError();
    sub_1A34CD3F0();
    (*(v6 + 8))(v8, v5);
  }

  return (*(v10 + 56))(a1, 1, 1, v9);
}

uint64_t sub_1A329AB2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C57B8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v12 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C57C0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - v7;
  sub_1A329D98C(a1, v4, &qword_1EB0C57B8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C57C8);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v4, 1, v9) == 1)
  {
    sub_1A3288FDC(v4, &qword_1EB0C57B8);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_1A329D694();
    v12[1] = swift_allocError();
    sub_1A34CD3F0();
    (*(v6 + 8))(v8, v5);
  }

  return (*(v10 + 56))(a1, 1, 1, v9);
}

uint64_t sub_1A329AD68(uint64_t a1, void (*a2)(char *))
{
  v14 = a2;
  v3 = type metadata accessor for PendingUserInputRequest.State();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - v5;
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C69B0);
  v7 = sub_1A34CD410();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v13 - v10;
  (*(v4 + 32))(v6, a1, v3, v9);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    v14(v11);
    (*(v8 + 8))(v11, v7);
  }

  return (*(v8 + 56))(a1, 1, 1, v7);
}

uint64_t sub_1A329B010()
{
  sub_1A329D694();
  swift_allocError();
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C69B0);
  sub_1A34CD410();
  return sub_1A34CD3F0();
}

uint64_t _s14ContactsUICore19ContactAvatarEntityV2id10Foundation4UUIDVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A34C9780();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1A329B134()
{
  type metadata accessor for UserInputRequestCoordinator();
  v0 = swift_allocObject();
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  result = sub_1A34C99D0();
  qword_1EB0ED0F8 = v0;
  return result;
}

uint64_t sub_1A329B18C@<X0>(void *a1@<X8>)
{
  if (qword_1EB0C1728 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1EB0ED0F8;

  return sub_1A34C9010();
}

uint64_t sub_1A329B200()
{
  sub_1A329BBB4();
  sub_1A34CB0E0();
  return v1;
}

uint64_t sub_1A329B23C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1A329D944(&qword_1EB0C19F8, type metadata accessor for UserInputRequestCoordinator);
  sub_1A34C99A0();

  swift_beginAccess();
  return sub_1A328D790(v1 + 16, a1, &qword_1EB0C57F8);
}

uint64_t sub_1A329B30C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1A329D8D4(a2, a1 + 16);
  return swift_endAccess();
}

uint64_t sub_1A329B370()
{
  sub_1A3288FDC(v0 + 16, &qword_1EB0C57F8);
  v1 = OBJC_IVAR____TtC14ContactsUICore27UserInputRequestCoordinator___observationRegistrar;
  v2 = sub_1A34C99E0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UserInputRequestCoordinator()
{
  result = qword_1EB0C19E8;
  if (!qword_1EB0C19E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A329B478()
{
  result = sub_1A34C99E0();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A329B514()
{
  result = sub_1A34C9780();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      type metadata accessor for PendingUserInputRequest.State();
      result = sub_1A34CA220();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1A329B5C8(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1A34C9780();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v6 - 8) + 64) + v11;
  v14 = *(v9 + 64) + 7;
  if (v12 >= a2)
  {
    goto LABEL_29;
  }

  v15 = ((v14 + (v13 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v12 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v12 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v15);
    if (v20)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  if (v8 == v12)
  {
    v24 = *(v7 + 48);

    return v24(a1);
  }

  else
  {
    v25 = (a1 + v13) & ~v11;
    if (v10 == v12)
    {
      v26 = *(v9 + 48);

      return v26(v25, v10);
    }

    else
    {
      v27 = *((v14 + v25) & 0xFFFFFFFFFFFFFFF8);
      if (v27 >= 0xFFFFFFFF)
      {
        LODWORD(v27) = -1;
      }

      return (v27 + 1);
    }
  }
}

void sub_1A329B7FC(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1A34C9780();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(*(a4 + 16) - 8);
  v12 = *(v11 + 84);
  v13 = *(v9 + 64);
  v14 = *(v11 + 80);
  v15 = *(v11 + 64);
  if (v12 <= v10)
  {
    v16 = *(v9 + 84);
  }

  else
  {
    v16 = *(v11 + 84);
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  v17 = v13 + v14;
  v18 = (v13 + v14) & ~v14;
  v19 = v15 + 7;
  v20 = ((v15 + 7 + v18) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v15 + 7 + v18) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v21 = a3 - v16 + 1;
  }

  else
  {
    v21 = 2;
  }

  if (v21 >= 0x10000)
  {
    v22 = 4;
  }

  else
  {
    v22 = 2;
  }

  if (v21 < 0x100)
  {
    v22 = 1;
  }

  if (v21 >= 2)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (v16 < a3)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if (a2 > v16)
  {
    if (v20)
    {
      v25 = 1;
    }

    else
    {
      v25 = a2 - v16;
    }

    if (v20)
    {
      v26 = ~v16 + a2;
      bzero(a1, v20);
      *a1 = v26;
    }

    if (v24 > 1)
    {
      if (v24 == 2)
      {
        *(a1 + v20) = v25;
      }

      else
      {
        *(a1 + v20) = v25;
      }
    }

    else if (v24)
    {
      *(a1 + v20) = v25;
    }

    return;
  }

  if (v24 > 1)
  {
    if (v24 != 2)
    {
      *(a1 + v20) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v20) = 0;
  }

  else if (v24)
  {
    *(a1 + v20) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!a2)
  {
    return;
  }

LABEL_38:
  if (v10 == v16)
  {
    v27 = *(v9 + 56);

    v27(a1, a2, v10, v8);
  }

  else
  {
    v28 = (a1 + v17) & ~v14;
    if (v12 == v16)
    {
      v29 = *(v11 + 56);

      v29(v28, a2);
    }

    else
    {
      if ((a2 & 0x80000000) != 0)
      {
        v30 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v30 = (a2 - 1);
      }

      *((v19 + v28) & 0xFFFFFFFFFFFFFFF8) = v30;
    }
  }
}

uint64_t sub_1A329BAA8()
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C69B0);
  v0 = sub_1A34CD410();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

unint64_t sub_1A329BBB4()
{
  result = qword_1EB0C1718;
  if (!qword_1EB0C1718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C1718);
  }

  return result;
}

uint64_t sub_1A329BC30()
{
  v1 = sub_1A34CB0B0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 8);
  v5 = *v0;
  v10 = *v0;
  v6 = v11;
  sub_1A34C9010();
  if ((v6 & 1) == 0)
  {
    sub_1A34CD650();
    v7 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();
    sub_1A3288FDC(&v10, &qword_1EB0C5820);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_1A329BDC4(unsigned __int8 a1)
{
  sub_1A34CDF20();
  MEMORY[0x1A58EF750](a1);
  return sub_1A34CDF70();
}

uint64_t sub_1A329BE28()
{
  sub_1A34CDF20();
  sub_1A329BD9C(v2, *v0);
  return sub_1A34CDF70();
}

uint64_t sub_1A329BE68@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A329BC30();
  swift_getKeyPath();
  sub_1A329D944(&qword_1EB0C19F8, type metadata accessor for UserInputRequestCoordinator);
  sub_1A34C99A0();

  swift_beginAccess();
  sub_1A328D790(v2 + 16, v7, &qword_1EB0C57F8);

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5828);
    v3 = type metadata accessor for PendingUserInputRequest();
    v4 = swift_dynamicCast();
    return (*(*(v3 - 8) + 56))(a1, v4 ^ 1u, 1, v3);
  }

  else
  {
    sub_1A3288FDC(v7, &qword_1EB0C57F8);
    v6 = type metadata accessor for PendingUserInputRequest();
    return (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
  }
}

uint64_t sub_1A329C02C(void *a1)
{
  v2 = v1;
  v23 = *v1;
  v24 = *(v1 + 8);
  v4 = v1[4];
  v5 = v1[6];
  v21 = v5;
  v20 = v4;
  sub_1A34CD450();
  sub_1A328D790(&v23, v22, &qword_1EB0C5820);
  sub_1A34C9010();
  sub_1A321418C(v4);
  sub_1A321418C(v5);
  v6 = sub_1A34CD440();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  *(v7 + 16) = v6;
  *(v7 + 24) = v8;
  v10 = a1[2];
  v9 = a1[3];
  *(v7 + 32) = v10;
  *(v7 + 40) = v9;
  v11 = a1[4];
  v12 = a1[5];
  *(v7 + 48) = v11;
  *(v7 + 56) = v12;
  v13 = *(v1 + 1);
  *(v7 + 64) = *v1;
  *(v7 + 80) = v13;
  v14 = *(v1 + 3);
  *(v7 + 96) = *(v1 + 2);
  *(v7 + 112) = v14;
  sub_1A328D790(&v23, v22, &qword_1EB0C5820);
  sub_1A34C9010();
  sub_1A321418C(v20);
  sub_1A321418C(v21);
  v15 = sub_1A34CD440();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = MEMORY[0x1E69E85E0];
  *(v16 + 32) = v10;
  *(v16 + 40) = v9;
  *(v16 + 48) = v11;
  *(v16 + 56) = v12;
  v17 = v2[1];
  *(v16 + 64) = *v2;
  *(v16 + 80) = v17;
  v18 = v2[3];
  *(v16 + 96) = v2[2];
  *(v16 + 112) = v18;
  type metadata accessor for PendingUserInputRequest();
  sub_1A34CD890();
  return sub_1A34CC940();
}

uint64_t sub_1A329C20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a8;
  v23 = a4;
  v12 = type metadata accessor for PendingUserInputRequest();
  v21 = sub_1A34CD890();
  v13 = *(v21 - 8);
  v14 = MEMORY[0x1EEE9AC00](v21);
  v16 = &v20 - v15;
  v17 = *(v12 - 8);
  v18 = *(v17 + 48);
  result = v18(a1, 1, v12, v14);
  if (result == 1)
  {
    v24[0] = a5;
    v24[1] = a6;
    *&v25 = a7;
    *(&v25 + 1) = v22;
    type metadata accessor for UserInputRequestHandler();
    sub_1A329BE68(v16);
    if ((v18)(v16, 1, v12) == 1)
    {
      v12 = v21;
    }

    else
    {
      v25 = *(v12 + 16);
      sub_1A329A3D4(sub_1A329BC08, v24, v12);
      v13 = v17;
    }

    return (*(v13 + 8))(v16, v12);
  }

  return result;
}

BOOL sub_1A329C3D4()
{
  v0 = type metadata accessor for PendingUserInputRequest();
  v1 = sub_1A34CD890();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - v3;
  sub_1A329BE68(&v7 - v3);
  v5 = (*(*(v0 - 8) + 48))(v4, 1, v0) != 1;
  (*(v2 + 8))(v4, v1);
  return v5;
}

uint64_t sub_1A329C4F8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v135 = a1;
  v142 = a3;
  swift_getWitnessTable();
  v6 = sub_1A34CB4F0();
  WitnessTable = swift_getWitnessTable();
  v170 = v6;
  v171 = MEMORY[0x1E69E6370];
  v128 = v6;
  v172 = WitnessTable;
  v173 = MEMORY[0x1E69E6388];
  v8 = WitnessTable;
  v130 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v10 = a2[3];
  v131 = a2[2];
  v132 = a2[4];
  v11 = type metadata accessor for PendingUserInputRequest();
  v12 = a2[5];
  v13 = swift_getWitnessTable();
  v170 = v10;
  v171 = v11;
  v172 = v12;
  v173 = v13;
  v146 = type metadata accessor for SheetOrFullScreenCoverItemModifier();
  v144 = sub_1A34CAC30();
  v117 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v116 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v120 = &v113 - v16;
  v170 = v6;
  v171 = MEMORY[0x1E69E6370];
  v172 = v8;
  v173 = MEMORY[0x1E69E6388];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v170 = OpaqueTypeMetadata2;
  v171 = v11;
  v150 = v10;
  v172 = v10;
  v173 = OpaqueTypeConformance2;
  v174 = v13;
  v175 = v12;
  v18 = swift_getOpaqueTypeMetadata2();
  v136 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v115 = &v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v119 = &v113 - v21;
  v170 = OpaqueTypeMetadata2;
  v171 = v11;
  v172 = v10;
  v173 = OpaqueTypeConformance2;
  v143 = OpaqueTypeConformance2;
  v147 = v13;
  v174 = v13;
  v175 = v12;
  v22 = swift_getOpaqueTypeMetadata2();
  v124 = v18;
  v23 = sub_1A34CB3F0();
  v123 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v122 = &v113 - v24;
  v148 = v11;
  sub_1A34CD890();
  v129 = sub_1A34CC960();
  v127 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v125 = &v113 - v25;
  v121 = v22;
  v133 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v114 = &v113 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v118 = &v113 - v29;
  v141 = v23;
  v140 = sub_1A34CB3F0();
  v139 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v138 = &v113 - v30;
  v145 = OpaqueTypeMetadata2;
  v137 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v113 - v32;
  v169 = sub_1A329C3D4();
  v176 = *v4;
  v177 = *(v4 + 8);
  v34 = v4[3];
  v126 = v4[2];
  v35 = v4[4];
  v36 = v4[6];
  v37 = swift_allocObject();
  v38 = v150;
  *(v37 + 16) = v131;
  *(v37 + 24) = v38;
  *(v37 + 32) = v132;
  *(v37 + 40) = v12;
  v149 = v12;
  v39 = *(v4 + 1);
  *(v37 + 48) = *v4;
  *(v37 + 64) = v39;
  v40 = *(v4 + 3);
  *(v37 + 80) = *(v4 + 2);
  *(v37 + 96) = v40;
  sub_1A34C9010();
  sub_1A328D790(&v176, &v170, &qword_1EB0C5820);
  sub_1A321418C(v35);
  v41 = v125;
  sub_1A321418C(v36);
  swift_checkMetadataState();
  sub_1A34CC3B0();

  v42 = *(v4 + 9);
  sub_1A329C02C(a2);
  v134 = v33;
  if (v42)
  {
    if (v42 == 1)
    {
      v43 = v149;
      v44 = v147;
      v45 = v143;
      v46 = v115;
      v47 = v145;
      v48 = v148;
      v49 = v150;
      sub_1A34CBFC0();
      (*(v127 + 8))(v41, v129);
      v170 = v47;
      v171 = v48;
      v172 = v49;
      v173 = v45;
      v174 = v44;
      v175 = v43;
      v50 = swift_getOpaqueTypeConformance2();
      v51 = v119;
      v52 = v124;
      sub_1A3345BC8(v46, v124, v50);
      v53 = *(v136 + 8);
      v136 += 8;
      v53(v46, v52);
      sub_1A3345BC8(v51, v52, v50);
      v170 = v47;
      v171 = v48;
      v54 = v143;
      v172 = v49;
      v173 = v143;
      v174 = v44;
      v175 = v149;
      v55 = swift_getOpaqueTypeConformance2();
      v56 = v122;
      v57 = v46;
      v58 = v46;
      v59 = v52;
      sub_1A342BAB0(v57, v121, v52);
      v157 = v55;
      v158 = v50;
      v60 = v54;
      v61 = v141;
      swift_getWitnessTable();
      v62 = swift_getWitnessTable();
      v155 = v54;
      v156 = v62;
      swift_getWitnessTable();
      v63 = v138;
      sub_1A342B9B8(v56, v61);
      (*(v123 + 8))(v56, v61);
      v53(v58, v59);
      v53(v119, v59);
    }

    else
    {
      v81 = v149;
      v82 = v143;
      v83 = v116;
      v84 = v41;
      v85 = v34;
      v86 = v145;
      v87 = v41;
      v88 = v150;
      sub_1A342BBA8(v84, CGPointMake, 0, v126, v85, v145, v150, v116, v148, v143, v149, v147);
      (*(v127 + 8))(v87, v129);
      v89 = swift_getWitnessTable();
      v167 = v82;
      v168 = v89;
      v90 = v144;
      v91 = swift_getWitnessTable();
      v92 = v120;
      v135 = v91;
      sub_1A3345BC8(v83, v90, v91);
      v136 = *(v117 + 8);
      (v136)(v83, v90);
      sub_1A3345BC8(v92, v90, v91);
      v93 = v148;
      v170 = v86;
      v171 = v148;
      v172 = v88;
      v173 = v82;
      v94 = v147;
      v174 = v147;
      v175 = v81;
      v95 = swift_getOpaqueTypeConformance2();
      v170 = v86;
      v171 = v93;
      v172 = v88;
      v173 = v82;
      v174 = v94;
      v175 = v81;
      v96 = swift_getOpaqueTypeConformance2();
      v165 = v95;
      v166 = v96;
      v60 = v82;
      v97 = v141;
      swift_getWitnessTable();
      v63 = v138;
      sub_1A342BAB0(v83, v97, v90);
      v98 = v136;
      (v136)(v83, v90);
      v98(v120, v90);
    }
  }

  else
  {
    v64 = v149;
    v65 = v147;
    v66 = v114;
    v67 = v145;
    v68 = v148;
    v69 = v41;
    v70 = v150;
    v71 = v143;
    sub_1A34CC300();
    (*(v127 + 8))(v69, v129);
    v170 = v67;
    v171 = v68;
    v172 = v70;
    v173 = v71;
    v174 = v65;
    v175 = v64;
    v72 = swift_getOpaqueTypeConformance2();
    v73 = v118;
    v74 = v121;
    sub_1A3345BC8(v66, v121, v72);
    v136 = *(v133 + 8);
    v133 += 8;
    (v136)(v66, v74);
    sub_1A3345BC8(v73, v74, v72);
    v170 = v67;
    v171 = v68;
    v75 = v143;
    v172 = v70;
    v173 = v143;
    v174 = v65;
    v175 = v149;
    v76 = swift_getOpaqueTypeConformance2();
    v77 = v122;
    sub_1A342B9B8(v66, v74);
    v153 = v72;
    v154 = v76;
    v60 = v75;
    v78 = v141;
    swift_getWitnessTable();
    v79 = swift_getWitnessTable();
    v151 = v75;
    v152 = v79;
    swift_getWitnessTable();
    v63 = v138;
    sub_1A342B9B8(v77, v78);
    (*(v123 + 8))(v77, v78);
    v80 = v136;
    (v136)(v66, v74);
    v80(v118, v74);
  }

  v99 = v145;
  (*(v137 + 8))(v134, v145);
  v100 = v148;
  v170 = v99;
  v171 = v148;
  v101 = v150;
  v172 = v150;
  v173 = v60;
  v102 = v147;
  v103 = v149;
  v174 = v147;
  v175 = v149;
  v104 = swift_getOpaqueTypeConformance2();
  v170 = v99;
  v171 = v100;
  v172 = v101;
  v173 = v60;
  v174 = v102;
  v175 = v103;
  v105 = swift_getOpaqueTypeConformance2();
  v163 = v104;
  v164 = v105;
  v106 = v60;
  v107 = swift_getWitnessTable();
  v108 = swift_getWitnessTable();
  v161 = v106;
  v162 = v108;
  v109 = swift_getWitnessTable();
  v159 = v107;
  v160 = v109;
  v110 = v140;
  v111 = swift_getWitnessTable();
  sub_1A3345BC8(v63, v110, v111);
  return (*(v139 + 8))(v63, v110);
}

_BYTE *sub_1A329D5D4(_BYTE *result, _BYTE *a2, uint64_t a3)
{
  if (*result)
  {
    if (*a2)
    {
      return result;
    }

    v3 = *(a3 + 48);
    if (!v3)
    {
      return result;
    }
  }

  else
  {
    if (!*a2)
    {
      return result;
    }

    v3 = *(a3 + 32);
    if (!v3)
    {
      return result;
    }
  }

  v4 = sub_1A34C9010();
  v3(v4);

  return sub_1A32142B0(v3);
}

unint64_t sub_1A329D694()
{
  result = qword_1EB0C2270;
  if (!qword_1EB0C2270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2270);
  }

  return result;
}

uint64_t sub_1A329D708()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t sub_1A329D788(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1A329D7D0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1A329D880()
{
  result = qword_1EB0C5800;
  if (!qword_1EB0C5800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C5800);
  }

  return result;
}

uint64_t sub_1A329D8D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C57F8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A329D944(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A329D98C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_22Tm()
{
  swift_unknownObjectRelease();

  if (*(v0 + 96))
  {
  }

  if (*(v0 + 112))
  {
  }

  return swift_deallocObject();
}

uint64_t getEnumTagSinglePayload for MonogramView.Recipe.Errors(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MonogramView.Recipe.Errors(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_1A329DC40@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A34CB0B0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A328D790(v2, v10, &unk_1EB0C5650);
  if (v10[264] == 1)
  {
    return memcpy(a1, v10, 0x108uLL);
  }

  sub_1A34CD650();
  v9 = sub_1A34CBA30();
  sub_1A34CA210();

  sub_1A34CB0A0();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1A329DDC0()
{
  v1 = *v0;
  sub_1A34CDF20();
  MEMORY[0x1A58EF750](v1);
  return sub_1A34CDF70();
}

uint64_t sub_1A329DE08()
{
  v1 = *v0;
  sub_1A34CDF20();
  MEMORY[0x1A58EF750](v1);
  return sub_1A34CDF70();
}

BOOL sub_1A329DE4C()
{
  type metadata accessor for ContactCardSharedProfile();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5868);
  sub_1A34CC740();
  swift_getKeyPath();
  sub_1A32A4838(&qword_1EB0C2140, type metadata accessor for SharedProfileViewModel);
  sub_1A34C99A0();

  v0 = *(v3 + 48);

  if (v0)
  {
    return 1;
  }

  sub_1A34CC740();
  v2 = sub_1A32ECE20();

  if ((v2 & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C59C0);
  sub_1A34CC740();
  return v3 != 2;
}

uint64_t ContactCardSharedProfile.init(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ContactCardConfiguration(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  *a2 = swift_getKeyPath();
  *(a2 + 264) = 0;
  v7 = type metadata accessor for ContactCardSharedProfile();
  v8 = a2 + v7[8];
  LOBYTE(v23) = 0;
  sub_1A34CC730();
  v9 = v25;
  *v8 = v24;
  *(v8 + 8) = v9;
  v10 = a2 + v7[9];
  LOBYTE(v23) = 0;
  sub_1A34CC730();
  v11 = v25;
  *v10 = v24;
  *(v10 + 8) = v11;
  v12 = a2 + v7[10];
  LOBYTE(v23) = 0;
  sub_1A34CC730();
  v13 = v25;
  *v12 = v24;
  *(v12 + 8) = v13;
  sub_1A32A33A8(a1, a2 + v7[5], type metadata accessor for ContactCardConfiguration);
  sub_1A32A33A8(a1, v6, type metadata accessor for ContactCardConfiguration);
  type metadata accessor for SharedProfileViewModel();
  swift_allocObject();
  v14 = sub_1A32EE2D8(v6);
  v15 = [*(v14 + 32) effectiveStateForContactIsAutoUpdate];
  v16 = 0;
  if ((v15 & 1) == 0)
  {
    if ([*(v14 + 32) effectiveStateForContact] == 2)
    {
      v16 = 2;
    }

    else
    {
      v16 = 3;
    }
  }

  v17 = a2 + v7[7];
  LOBYTE(v23) = v16;
  sub_1A34CC730();
  v18 = v25;
  *v17 = v24;
  *(v17 + 8) = v18;
  v19 = (a2 + v7[6]);
  v23 = v14;
  sub_1A34CC730();
  result = sub_1A32A313C(a1);
  v21 = v25;
  *v19 = v24;
  v19[1] = v21;
  return result;
}

uint64_t ContactCardSharedProfile.body.getter@<X0>(uint64_t a1@<X8>)
{
  v77 = a1;
  v2 = type metadata accessor for ContactCardSharedProfile();
  v63 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v67 = v3;
  v68 = v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5830);
  MEMORY[0x1EEE9AC00](v70);
  v62 = v56 - v4;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5838);
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v64 = v56 - v5;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5840);
  MEMORY[0x1EEE9AC00](v76);
  v69 = v56 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5848);
  v61 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v60 = v56 - v8;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5850);
  MEMORY[0x1EEE9AC00](v74);
  v75 = v56 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5858);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v56 - v11;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5860);
  MEMORY[0x1EEE9AC00](v73);
  v14 = v56 - v13;
  v71 = v2;
  v72 = v1;
  v15 = (v1 + *(v2 + 24));
  v17 = *v15;
  v16 = v15[1];
  v78 = *v15;
  v79 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5868);
  sub_1A34CC740();
  v18 = v88;
  swift_getKeyPath();
  v78 = v18;
  sub_1A32A4838(&qword_1EB0C2140, type metadata accessor for SharedProfileViewModel);
  sub_1A34C99A0();

  v19 = *(v18 + 16);

  if (([v19 isSuggested] & 1) != 0 || (v20 = objc_msgSend(v19, sel_iOSLegacyIdentifier), v20 == *MEMORY[0x1E695C248]) && !objc_msgSend(v19, sel_isSuggestedMe))
  {

LABEL_6:
    swift_storeEnumTagMultiPayload();
    sub_1A32A35FC(&qword_1EB0C03B0, &qword_1EB0C5848, &unk_1A34DBCB0, sub_1A32A3684);
    sub_1A34CB3E0();
    v22 = &qword_1EB0C5860;
    sub_1A328D790(v14, v75, &qword_1EB0C5860);
    swift_storeEnumTagMultiPayload();
    sub_1A32A3544();
    sub_1A32A37AC();
    sub_1A34CB3E0();
    v23 = v14;
    return sub_1A3288FDC(v23, v22);
  }

  v21 = [v19 isCoreRecentsAccepted];

  if (v21)
  {
    goto LABEL_6;
  }

  v78 = v17;
  v79 = v16;
  sub_1A34CC740();
  v25 = sub_1A32ECE20();

  MEMORY[0x1EEE9AC00](v26);
  v27 = v72;
  if (v25)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C58D0);
    sub_1A32A3684();
    v28 = v60;
    sub_1A34CCA00();
    v29 = v61;
    (*(v61 + 16))(v12, v28, v7);
    swift_storeEnumTagMultiPayload();
    sub_1A32A35FC(&qword_1EB0C03B0, &qword_1EB0C5848, &unk_1A34DBCB0, sub_1A32A3684);
    sub_1A34CB3E0();
    sub_1A328D790(v14, v75, &qword_1EB0C5860);
    swift_storeEnumTagMultiPayload();
    sub_1A32A3544();
    sub_1A32A37AC();
    sub_1A34CB3E0();
    sub_1A3288FDC(v14, &qword_1EB0C5860);
    return (*(v29 + 8))(v28, v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5878);
  sub_1A32A3198();
  v30 = v62;
  sub_1A34CCA00();
  *(v30 + *(v70 + 36)) = 0;
  v31 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD00000000000002CLL, 0x80000001A350B8C0);
  v60 = v32;
  v88 = v31;
  v89 = v32;
  v33 = v27 + *(v71 + 36);
  v34 = *v33;
  v35 = *(v33 + 8);
  v86 = v34;
  v87 = v35;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5890);
  sub_1A34CC760();
  v56[3] = v80;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9E80);
  v58 = sub_1A32A32C4();
  v59 = sub_1A328A95C();
  v55 = sub_1A3284D0C(&unk_1EB0C0510, &unk_1EB0C9E80);
  v36 = v64;
  sub_1A34CC2C0();

  sub_1A3288FDC(v30, &qword_1EB0C5830);
  v37 = v27;
  v38 = v68;
  sub_1A32A33A8(v37, v68, type metadata accessor for ContactCardSharedProfile);
  v39 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v40 = swift_allocObject();
  sub_1A32A3410(v38, v40 + v39);
  v78 = v70;
  v79 = MEMORY[0x1E69E6158];
  v80 = v57;
  v81 = MEMORY[0x1E6981148];
  v82 = v58;
  v83 = v59;
  v84 = v55;
  v85 = MEMORY[0x1E6981138];
  swift_getOpaqueTypeConformance2();
  v41 = v69;
  v42 = v66;
  sub_1A34CBF50();

  (*(v65 + 8))(v36, v42);
  v43 = v72;
  v44 = v72 + *(v71 + 40);
  v45 = *v44;
  v46 = *(v44 + 8);
  LOBYTE(v88) = v45;
  v89 = v46;
  sub_1A34CC760();
  v47 = v79;
  v71 = v78;
  LOBYTE(v36) = v80;
  sub_1A32A33A8(v43, v38, type metadata accessor for ContactCardSharedProfile);
  v48 = swift_allocObject();
  sub_1A32A3410(v38, v48 + v39);
  KeyPath = swift_getKeyPath();
  v50 = (v41 + *(v76 + 36));
  *v50 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C58B8);
  swift_storeEnumTagMultiPayload();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C58C0);
  v52 = v50 + v51[9];
  *v52 = v71;
  *(v52 + 1) = v47;
  v52[16] = v36;
  v53 = (v50 + v51[10]);
  *v53 = CGPointMake;
  v53[1] = 0;
  v54 = (v50 + v51[11]);
  *v54 = sub_1A32A34D4;
  v54[1] = v48;
  v22 = &qword_1EB0C5840;
  sub_1A328D790(v41, v75, &qword_1EB0C5840);
  swift_storeEnumTagMultiPayload();
  sub_1A32A3544();
  sub_1A32A37AC();
  sub_1A34CB3E0();
  v23 = v41;
  return sub_1A3288FDC(v23, v22);
}

uint64_t sub_1A329EE14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = type metadata accessor for ContactCardSharedProfile();
  v4 = v3 - 8;
  v27 = *(v3 - 8);
  v26 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v25 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1A34CCD50();
  v6 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C58D8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - v11;
  v29 = a1;
  v28 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5878);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C59A0);
  sub_1A32A3198();
  sub_1A32A4478();
  sub_1A34CBC70();
  sub_1A34CCD40();
  sub_1A3284D0C(&qword_1EB0C0630, &qword_1EB0C58D8);
  v13 = v24;
  sub_1A34CC400();
  (*(v6 + 8))(v8, v23);
  (*(v10 + 8))(v12, v9);
  v14 = a1 + *(v4 + 36);
  v15 = *v14;
  v16 = *(v14 + 8);
  v31 = v15;
  v32 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C59C0);
  sub_1A34CC740();
  LOBYTE(v12) = v30;
  v17 = v25;
  sub_1A32A33A8(a1, v25, type metadata accessor for ContactCardSharedProfile);
  v18 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v19 = swift_allocObject();
  sub_1A32A3410(v17, v19 + v18);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C58D0);
  v21 = v13 + *(result + 36);
  *v21 = v12;
  *(v21 + 8) = sub_1A32A4530;
  *(v21 + 16) = v19;
  return result;
}

uint64_t sub_1A329F1AC()
{
  sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 19279, 0xE200000000000000);
  sub_1A328A95C();
  return sub_1A34CC7C0();
}

uint64_t sub_1A329F228@<X0>(uint64_t a1@<X8>)
{
  sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD00000000000002DLL, 0x80000001A350BBE0);
  sub_1A328A95C();
  result = sub_1A34CBE30();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1A329F2A8()
{
  type metadata accessor for ContactCardSharedProfile();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5868);
  sub_1A34CC740();
  swift_getKeyPath();
  sub_1A32A4838(&qword_1EB0C2140, type metadata accessor for SharedProfileViewModel);
  sub_1A34C99A0();

  v0 = *(v4 + 48);

  if (v0 != 1)
  {
    return sub_1A329F478();
  }

  sub_1A34CC740();

  v1 = [objc_opt_self() currentEnvironment];
  v2 = [v1 nicknameProvider];

  LOBYTE(v1) = [v2 iCloudSignedInToUseNicknames];
  swift_unknownObjectRelease();
  if (v1)
  {
    return sub_1A329F478();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5890);
  return sub_1A34CC750();
}

uint64_t sub_1A329F478()
{
  type metadata accessor for ContactCardSharedProfile();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5868);
  sub_1A34CC740();
  swift_getKeyPath();
  sub_1A32A4838(&qword_1EB0C2140, type metadata accessor for SharedProfileViewModel);
  sub_1A34C99A0();

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    if ([Strong supportsAction_])
    {
      [Strong performAction:10 forContactIdentifier:0 sourceView:0];
      return swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5890);
  return sub_1A34CC750();
}

uint64_t sub_1A329F600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ContactCardSharedProfile();
  v45 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v46 = v5;
  v47 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 32);
  v48 = a1;
  v8 = (a1 + v7);
  v10 = v8[1];
  *&v51 = *v8;
  v9 = v51;
  *(&v51 + 1) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5868);
  sub_1A34CC740();
  v11 = v49;
  sub_1A34CD450();
  sub_1A34C9010();
  v12 = sub_1A34CD440();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v11;
  sub_1A34C9010();
  v15 = sub_1A34CD440();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = v14;
  v16[4] = v11;
  sub_1A31EE0D8();
  sub_1A34CC940();

  v17 = v51;
  v18 = v52;
  *&v51 = v9;
  *(&v51 + 1) = v10;
  sub_1A34CC740();
  v19 = v49;
  swift_getKeyPath();
  *&v51 = v19;
  sub_1A32A4838(&qword_1EB0C2140, type metadata accessor for SharedProfileViewModel);
  sub_1A34C99A0();

  v44 = *(v19 + 48);

  if (qword_1EB0C2248 != -1)
  {
    swift_once();
  }

  v20 = qword_1EB0C2250;
  v21 = sub_1A33BE0A8(&unk_1F161A5B8);
  v22 = objc_allocWithZone(MEMORY[0x1E695CE18]);

  v23 = [v22 init];
  *a2 = 0;
  v24 = type metadata accessor for VisualIdentityEditor();
  v25 = v24[6];
  *(a2 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5478);
  swift_storeEnumTagMultiPayload();
  v26 = a2 + v24[7];
  *v26 = swift_getKeyPath();
  *(v26 + 8) = 0;
  *(v26 + 16) = 0;
  v27 = a2 + v24[10];
  LOBYTE(v49) = 0;
  sub_1A34CC730();
  v28 = *(&v51 + 1);
  *v27 = v51;
  *(v27 + 8) = v28;
  v29 = a2 + v24[12];
  LOBYTE(v49) = 0;
  sub_1A34CC730();
  v30 = *(&v51 + 1);
  *v29 = v51;
  *(v29 + 8) = v30;
  v31 = v24[13];
  *&v49 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5AC0);
  sub_1A34CC730();
  *(a2 + v31) = v51;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v32 = a2 + v24[8];
  *v32 = v17;
  *(v32 + 16) = v18;
  v49 = 0u;
  memset(v50, 0, sizeof(v50));
  sub_1A34C9010();
  sub_1A34C9010();
  v33 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC7E0);
  sub_1A34CC950();
  v34 = (a2 + v24[9]);
  v35 = v52;
  *v34 = v51;
  v34[1] = v35;
  v34[2] = v53[0];
  *(v34 + 41) = *(v53 + 9);
  v36 = swift_allocObject();
  *(v36 + 16) = v17;
  *(v36 + 32) = v33;
  *(v36 + 40) = v44;
  *(v36 + 48) = 0u;
  *(v36 + 64) = 0u;
  *(v36 + 80) = 0u;
  *(v36 + 89) = 0u;
  *(v36 + 112) = v23;
  *(v36 + 120) = 1;
  *(v36 + 128) = v20;
  *(v36 + 136) = v21;
  type metadata accessor for VisualIdentityEditorViewModel();
  sub_1A34CA500();
  KeyPath = swift_getKeyPath();
  v38 = v47;
  sub_1A32A33A8(v48, v47, type metadata accessor for ContactCardSharedProfile);
  v39 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v40 = swift_allocObject();
  sub_1A32A3410(v38, v40 + v39);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5AD0);
  v42 = (a2 + *(result + 36));
  *v42 = KeyPath;
  v42[1] = sub_1A32A48D8;
  v42[2] = v40;
  return result;
}

uint64_t sub_1A329FB58(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for ContactCardSharedProfile() + 24));
  v2 = *v1;
  v3 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5868);
  sub_1A34CC740();
  swift_getKeyPath();
  sub_1A32A4838(&qword_1EB0C2140, type metadata accessor for SharedProfileViewModel);
  sub_1A34C99A0();

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    if ([Strong respondsToSelector_])
    {
      v18 = v3;
      swift_unknownObjectRetain();
      sub_1A34CC740();
      v5 = v20;
      sub_1A34CD450();
      sub_1A34C9010();
      v6 = sub_1A34CD440();
      v7 = swift_allocObject();
      v8 = MEMORY[0x1E69E85E0];
      v7[2] = v6;
      v7[3] = v8;
      v7[4] = v5;
      sub_1A34C9010();
      v9 = sub_1A34CD440();
      v10 = swift_allocObject();
      v10[2] = v9;
      v10[3] = v8;
      v10[4] = v5;
      sub_1A31EE0D8();
      sub_1A34CC940();

      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5AD8);
      MEMORY[0x1A58EE120](&v20, v11);

      v12 = v20;
      [Strong finishSNaPEditing_];

      swift_unknownObjectRelease();
    }

    LOBYTE(v20) = 0;
    sub_1A34C9010();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5890);
    sub_1A34CC750();

    return swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1EB0C12C8 != -1)
    {
      swift_once();
    }

    v14 = sub_1A34CA250();
    __swift_project_value_buffer(v14, qword_1EB0ED080);
    v15 = sub_1A34CA230();
    v16 = sub_1A34CD640();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1A31E6000, v15, v16, "Shared name and photo editor not supported", v17, 2u);
      MEMORY[0x1A58F1010](v17, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5890);
    return sub_1A34CC750();
  }
}

uint64_t sub_1A329FF18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C59D8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v43 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v39 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C59E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v42 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C59E8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v41 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  v17 = (a1 + *(type metadata accessor for ContactCardSharedProfile() + 24));
  v18 = v17[1];
  v47 = *v17;
  v19 = v47;
  v48 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5868);
  sub_1A34CC740();
  v20 = v46[0];
  swift_getKeyPath();
  v47 = v20;
  sub_1A32A4838(&qword_1EB0C2140, type metadata accessor for SharedProfileViewModel);
  sub_1A34C99A0();

  v21 = v20[2];

  v47 = v21;
  v48 = 0x4046000000000000;
  sub_1A32A45A0();
  v40 = v16;
  sub_1A34CC1F0();

  *v11 = sub_1A34CB290();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v22 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C59F8) + 44)];
  v39 = v11;
  sub_1A32A051C(a1, v22);
  v47 = v19;
  v48 = v18;
  sub_1A34CC740();
  sub_1A32ECE20();

  v23 = sub_1A34CC5E0();
  sub_1A329DC40(&v47);
  sub_1A31EE4BC(&v49, v46);
  sub_1A3292144(&v47);
  v24 = __swift_project_boxed_opaque_existential_1(v46, v46[3]);
  v25 = MEMORY[0x1EEE9AC00](v24);
  (*(v27 + 16))(&v39 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v25);
  v28 = sub_1A34CA770();
  __swift_destroy_boxed_opaque_existential_0(v46);
  v47 = v23;
  v48 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5A00);
  sub_1A32A45F4();
  v29 = v45;
  sub_1A34CC1F0();

  v30 = v16;
  v31 = v41;
  sub_1A328D790(v30, v41, &unk_1EB0C59E8);
  v32 = v11;
  v33 = v42;
  sub_1A328D790(v32, v42, &qword_1EB0C59E0);
  v34 = v43;
  sub_1A328D790(v29, v43, &qword_1EB0C59D8);
  v35 = v44;
  sub_1A328D790(v31, v44, &unk_1EB0C59E8);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5A10);
  sub_1A328D790(v33, v35 + v36[12], &qword_1EB0C59E0);
  v37 = v35 + v36[16];
  *v37 = 0;
  *(v37 + 8) = 1;
  sub_1A328D790(v34, v35 + v36[20], &qword_1EB0C59D8);
  sub_1A3288FDC(v45, &qword_1EB0C59D8);
  sub_1A3288FDC(v39, &qword_1EB0C59E0);
  sub_1A3288FDC(v40, &unk_1EB0C59E8);
  sub_1A3288FDC(v34, &qword_1EB0C59D8);
  sub_1A3288FDC(v33, &qword_1EB0C59E0);
  return sub_1A3288FDC(v31, &unk_1EB0C59E8);
}

uint64_t sub_1A32A051C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5A20);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v77 = v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v81 = v69 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5A28);
  v75 = *(v7 - 8);
  v76 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v80 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v79 = v69 - v10;
  sub_1A329DC40(&v88);
  sub_1A31EE4BC(&v95, v85);
  sub_1A3292144(&v88);
  v73 = v87;
  v72 = __swift_project_boxed_opaque_existential_1(v85, v86);
  v11 = *(type metadata accessor for ContactCardSharedProfile() + 24);
  v74 = a1;
  v12 = (a1 + v11);
  v13 = *v12;
  v70 = v12[1];
  v71 = v13;
  v83 = v13;
  v84 = v70;
  v69[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5868);
  sub_1A34CC740();
  v14 = v82;
  swift_getKeyPath();
  v83 = v14;
  sub_1A32A4838(&qword_1EB0C2140, type metadata accessor for SharedProfileViewModel);
  sub_1A34C99A0();

  if (*(v14 + 48))
  {
    v15 = "SharedProfileSubtitleText";
  }

  else
  {
    v15 = "chevron.up.chevron.down";
  }

  if (*(v14 + 48))
  {
    v16 = 0xD00000000000002DLL;
  }

  else
  {
    v16 = 0xD00000000000002ALL;
  }

  v17 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, v16, v15 | 0x8000000000000000);
  v19 = v18;

  v83 = v17;
  v84 = v19;
  v69[4] = sub_1A328A95C();
  v20 = sub_1A34CBE30();
  v22 = v21;
  v24 = v23;
  if (qword_1EB0C1DE8 != -1)
  {
    swift_once();
  }

  v69[3] = qword_1EB0ED298;
  v25 = sub_1A34CBE10();
  v27 = v26;
  v29 = v28;
  sub_1A328A9B0(v20, v22, v24 & 1);

  v30 = sub_1A34CBDF0();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_1A328A9B0(v25, v27, v29 & 1);

  KeyPath = swift_getKeyPath();
  __swift_destroy_boxed_opaque_existential_0(v85);
  v88 = v30;
  v89 = v32;
  v90 = v34 & 1;
  v91 = v36;
  v92 = KeyPath;
  v93 = 0;
  v38 = 1;
  v94 = 1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5A30);
  v40 = sub_1A32A46AC();
  v41 = v79;
  v72 = v40;
  v73 = v39;
  sub_1A34CC1F0();
  sub_1A328A9B0(v30, v32, v34 & 1);

  v42 = v41;
  if (sub_1A329DE4C())
  {
    sub_1A329DC40(&v88);
    sub_1A31EE4BC(&v96, v85);
    sub_1A3292144(&v88);
    v69[2] = v86;
    v74 = v87;
    v69[1] = __swift_project_boxed_opaque_existential_1(v85, v86);
    v83 = v71;
    v84 = v70;
    sub_1A34CC740();
    v43 = sub_1A32ED340();
    v45 = v44;

    v83 = v43;
    v84 = v45;
    v46 = sub_1A34CBE30();
    v48 = v47;
    LOBYTE(v45) = v49;
    v50 = sub_1A34CBE10();
    v52 = v51;
    v54 = v53;
    sub_1A328A9B0(v46, v48, v45 & 1);

    v55 = sub_1A34CBDF0();
    v57 = v56;
    LOBYTE(v46) = v58;
    v60 = v59;
    sub_1A328A9B0(v50, v52, v54 & 1);

    v61 = swift_getKeyPath();
    __swift_destroy_boxed_opaque_existential_0(v85);
    v88 = v55;
    v89 = v57;
    v90 = v46 & 1;
    v91 = v60;
    v92 = v61;
    v93 = 0;
    v94 = 1;
    v62 = v80;
    sub_1A34CC1F0();
    sub_1A328A9B0(v55, v57, v46 & 1);

    v42 = v79;
    sub_1A329D98C(v62, v81, &qword_1EB0C5A28);
    v38 = 0;
  }

  v63 = v81;
  (*(v75 + 56))(v81, v38, 1, v76);
  v64 = v80;
  sub_1A328D790(v42, v80, &qword_1EB0C5A28);
  v65 = v77;
  sub_1A328D790(v63, v77, &qword_1EB0C5A20);
  v66 = v78;
  sub_1A328D790(v64, v78, &qword_1EB0C5A28);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5A40);
  sub_1A328D790(v65, v66 + *(v67 + 48), &qword_1EB0C5A20);
  sub_1A3288FDC(v63, &qword_1EB0C5A20);
  sub_1A3288FDC(v42, &qword_1EB0C5A28);
  sub_1A3288FDC(v65, &qword_1EB0C5A20);
  return sub_1A3288FDC(v64, &qword_1EB0C5A28);
}

uint64_t sub_1A32A0C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v97 = a3;
  v96 = a2;
  v104 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5A50);
  v102 = *(v5 - 8);
  v103 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v94 = &v82 - v6;
  v91 = sub_1A34CC9B0();
  v90 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v89 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5A58);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v93 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v92 = &v82 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5A60);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v101 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v100 = &v82 - v15;
  v16 = type metadata accessor for ContactCardSharedProfile();
  v83 = *(v16 - 8);
  v17 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5A68);
  v18 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v84 = &v82 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5A70);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v99 = &v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v106 = &v82 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5988);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v98 = &v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v105 = &v82 - v27;
  v88 = v16;
  v28 = (a1 + *(v16 + 24));
  v30 = *v28;
  v29 = v28[1];
  v87 = v30;
  v109 = v30;
  v110 = v29;
  v86 = v29;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5868);
  sub_1A34CC740();
  v31 = v107;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C6C20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A34DAA10;
  v33 = *(v31 + 40);
  [v33 setStyle_];
  [v33 setFallbackStyle_];
  swift_getKeyPath();
  v109 = v31;
  sub_1A32A4838(&qword_1EB0C2140, type metadata accessor for SharedProfileViewModel);
  sub_1A34C99A0();

  v34 = [v33 stringFromContact_];
  if (v34)
  {
    v35 = v34;
    v36 = sub_1A34CD110();
    v38 = v37;
  }

  else
  {
    v36 = 0;
    v38 = 0xE000000000000000;
  }

  *(inited + 32) = v36;
  *(inited + 40) = v38;
  v39 = sub_1A3332448(inited, 0, 0, 0xD000000000000029, 0x80000001A350BB70);
  v41 = v40;

  swift_setDeallocating();
  sub_1A3288FDC(inited + 32, &qword_1EB0C5A80);
  v109 = v39;
  v110 = v41;
  sub_1A328A95C();
  v42 = sub_1A34CBE30();
  v44 = v43;
  v109 = v42;
  v110 = v43;
  v46 = v45 & 1;
  v111 = v45 & 1;
  v112 = v47;
  sub_1A34CC1F0();
  sub_1A328A9B0(v42, v44, v46);

  if (*(v96 + 16))
  {
    v109 = v96;
    swift_getKeyPath();
    v48 = a1;
    sub_1A32A33A8(a1, &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContactCardSharedProfile);
    v49 = (*(v83 + 80) + 16) & ~*(v83 + 80);
    v50 = swift_allocObject();
    sub_1A32A3410(&v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v50 + v49);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5A88);
    sub_1A3284D0C(&qword_1EB0C5A90, &qword_1EB0C5A88);
    sub_1A32A4838(&qword_1EB0C5A98, type metadata accessor for CNSharedProfileUpdateActionType);
    sub_1A32A47E4();
    v51 = v84;
    sub_1A34CC9C0();
    v52 = v106;
    v53 = v95;
    (*(v18 + 32))(v106, v51, v95);
    v54 = 0;
  }

  else
  {
    v54 = 1;
    v52 = v106;
    v48 = a1;
    v53 = v95;
  }

  v55 = 1;
  (*(v18 + 56))(v52, v54, 1, v53);
  if (*(v97 + 16))
  {
    v56 = v89;
    sub_1A34CC9A0();
    sub_1A32A4838(&qword_1EB0C5AA8, MEMORY[0x1E697D6D0]);
    v57 = v92;
    v58 = v91;
    sub_1A34CC1F0();
    (*(v90 + 8))(v56, v58);
    v109 = v87;
    v110 = v86;
    sub_1A34CC740();
    v59 = v107;
    v60 = v48 + *(v88 + 28);
    v61 = *v60;
    v62 = *(v60 + 8);
    LOBYTE(v107) = v61;
    v108 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C59C0);
    sub_1A34CC760();
    v63 = v109;
    v64 = v110;
    v65 = v111;
    v107 = v59;
    type metadata accessor for SharedProfileViewModel();
    sub_1A34CC730();
    v66 = v109;
    v67 = v110;
    v68 = v93;
    sub_1A328D790(v57, v93, &qword_1EB0C5A58);
    v69 = v94;
    sub_1A328D790(v68, v94, &qword_1EB0C5A58);
    v70 = v69 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5AB0) + 48);
    *v70 = v66;
    *(v70 + 8) = v67;
    *(v70 + 16) = v63;
    *(v70 + 24) = v64;
    *(v70 + 32) = v65;
    *(v70 + 40) = 2;
    sub_1A34C9010();
    sub_1A34C9010();
    sub_1A34C9010();
    sub_1A34C9010();
    sub_1A3288FDC(v57, &qword_1EB0C5A58);

    sub_1A3288FDC(v68, &qword_1EB0C5A58);
    v71 = v69;
    v72 = v100;
    sub_1A329D98C(v71, v100, &qword_1EB0C5A50);
    v55 = 0;
  }

  else
  {
    v72 = v100;
  }

  (*(v102 + 56))(v72, v55, 1, v103);
  v73 = v105;
  v74 = v98;
  sub_1A328D790(v105, v98, &qword_1EB0C5988);
  v75 = v106;
  v76 = v99;
  sub_1A328D790(v106, v99, &unk_1EB0C5A70);
  v77 = v101;
  sub_1A328D790(v72, v101, &qword_1EB0C5A60);
  v78 = v104;
  sub_1A328D790(v74, v104, &qword_1EB0C5988);
  v79 = v72;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5AB8);
  sub_1A328D790(v76, v78 + *(v80 + 48), &unk_1EB0C5A70);
  sub_1A328D790(v77, v78 + *(v80 + 64), &qword_1EB0C5A60);
  sub_1A3288FDC(v79, &qword_1EB0C5A60);
  sub_1A3288FDC(v75, &unk_1EB0C5A70);
  sub_1A3288FDC(v73, &qword_1EB0C5988);
  sub_1A3288FDC(v77, &qword_1EB0C5A60);
  sub_1A3288FDC(v76, &unk_1EB0C5A70);
  return sub_1A3288FDC(v74, &qword_1EB0C5988);
}

uint64_t sub_1A32A1848@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = (a2 + *(type metadata accessor for ContactCardSharedProfile() + 24));
  v7 = *v5;
  v8 = v5[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5868);
  sub_1A34CC740();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C59C0);
  sub_1A34CC760();
  type metadata accessor for SharedProfileViewModel();
  result = sub_1A34CC730();
  *a3 = v7;
  *(a3 + 8) = v8;
  *(a3 + 16) = v7;
  *(a3 + 24) = v8;
  *(a3 + 32) = v9;
  *(a3 + 40) = v4;
  return result;
}

uint64_t sub_1A32A1938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for ContactCardSharedProfile();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5868);
  sub_1A34CC740();
  v4 = sub_1A32ED624();
  v6 = v5;

  *a2 = sub_1A34CB290();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5A48);
  sub_1A32A0C28(a1, v4, v6, a2 + *(v7 + 44));

  v8 = sub_1A34CBAB0();
  sub_1A34CA460();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C59A0);
  v18 = a2 + *(result + 36);
  *v18 = v8;
  *(v18 + 8) = v10;
  *(v18 + 16) = v12;
  *(v18 + 24) = v14;
  *(v18 + 32) = v16;
  *(v18 + 40) = 0;
  return result;
}

uint64_t sub_1A32A1A6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v23 = sub_1A34CB220();
  v21 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v19 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1A34CB7E0();
  v4 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5888);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C59C8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  *v9 = sub_1A34CB110();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C59D0);
  sub_1A329FF18(a1, &v9[*(v14 + 44)]);
  sub_1A34CB7D0();
  v15 = sub_1A3284D0C(&qword_1EB0C04E0, &qword_1EB0C5888);
  sub_1A34CC140();
  (*(v4 + 8))(v6, v20);
  sub_1A3288FDC(v9, &qword_1EB0C5888);
  v16 = v19;
  sub_1A34CB210();
  v24 = v7;
  v25 = v15;
  swift_getOpaqueTypeConformance2();
  sub_1A34CC1B0();
  (*(v21 + 8))(v16, v23);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1A32A1DAC()
{
  type metadata accessor for ContactCardSharedProfile();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5868);
  sub_1A34CC740();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C59C0);
  sub_1A34CC740();
  sub_1A32ED938(v1);
}

uint64_t sub_1A32A1E68@<X0>(uint64_t a1@<X8>)
{
  v9[1] = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5930);
  v2 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v4 = v9 - v3;
  v14 = *(v1 + 16);
  v15 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5938);
  sub_1A34CC930();
  v5 = *(v1 + 40);
  if (v5 >= 4)
  {
    result = sub_1A34CDC10();
    __break(1u);
  }

  else
  {
    sub_1A32A2118(0x20100u >> (8 * v5), v11, v12, v13);

    MEMORY[0x1EEE9AC00](v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5940);
    sub_1A3284D0C(&qword_1EB0C5948, &qword_1EB0C5940);
    sub_1A34CC870();
    sub_1A3284D0C(&qword_1EB0C5928, &qword_1EB0C5930);
    v7 = v10;
    sub_1A34CC1F0();
    return (*(v2 + 8))(v4, v7);
  }

  return result;
}

uint64_t sub_1A32A2118(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = a2;
  *(v8 + 40) = a3;
  *(v8 + 48) = a4;
  *(v8 + 49) = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = a2;
  *(v9 + 40) = a3;
  *(v9 + 48) = a4;
  *(v9 + 49) = a1;
  swift_retain_n();
  swift_retain_n();
  sub_1A34CC940();
  return v11;
}

uint64_t sub_1A32A220C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5950);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5958);
  sub_1A3284D0C(&qword_1EB0C5960, &qword_1EB0C5950);
  sub_1A32A4B04(&qword_1EB0C5968, &qword_1EB0C5958, &unk_1A34DBFB8, sub_1A32A407C);
  return sub_1A34CC6A0();
}

uint64_t sub_1A32A2330()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5978);
  sub_1A3284D0C(&qword_1EB0C5980, &qword_1EB0C5978);
  return sub_1A34CA4F0();
}

uint64_t sub_1A32A23D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5988);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v33 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  v14 = *(a1 + 40);
  v35 = sub_1A32A41AC(v14);
  v36 = v15;
  sub_1A328A95C();
  v16 = sub_1A34CBE30();
  v18 = v17;
  v35 = v16;
  v36 = v17;
  v20 = v19 & 1;
  v37 = v19 & 1;
  v38 = v21;
  sub_1A34CC1F0();
  sub_1A328A9B0(v16, v18, v20);

  v35 = sub_1A32A4284(v14);
  v36 = v22;
  v23 = sub_1A34CBE30();
  v25 = v24;
  v35 = v23;
  v36 = v24;
  v27 = v26 & 1;
  v37 = v26 & 1;
  v38 = v28;
  sub_1A34CC1F0();
  sub_1A328A9B0(v23, v25, v27);

  sub_1A328D790(v13, v7, &qword_1EB0C5988);
  v29 = v33;
  sub_1A328D790(v10, v33, &qword_1EB0C5988);
  v30 = v34;
  sub_1A328D790(v7, v34, &qword_1EB0C5988);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5990);
  sub_1A328D790(v29, v30 + *(v31 + 48), &qword_1EB0C5988);
  sub_1A3288FDC(v10, &qword_1EB0C5988);
  sub_1A3288FDC(v13, &qword_1EB0C5988);
  sub_1A3288FDC(v29, &qword_1EB0C5988);
  return sub_1A3288FDC(v7, &qword_1EB0C5988);
}

uint64_t sub_1A32A26B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5868);
  sub_1A34CC740();
  v4 = sub_1A32EDB40(*(a1 + 40));

  v5 = [v4 imageData];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1A34C9690();
    v9 = v8;

    v10 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
    sub_1A31EC1E0(v7, v9);
    v11 = sub_1A34C9680();
    v12 = [v10 initWithData_];

    sub_1A31EC234(v7, v9);
    if (v12)
    {
      v12 = sub_1A34CC5C0();

      sub_1A31EC234(v7, v9);
      result = swift_getKeyPath();
    }

    else
    {
      sub_1A31EC234(v7, v9);

      result = 0;
    }
  }

  else
  {

    result = 0;
    v12 = 0;
  }

  *a2 = result;
  a2[1] = 0;
  a2[2] = v12;
  return result;
}

uint64_t sub_1A32A2810()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5918);
  sub_1A32A3F7C();
  return sub_1A34CCA00();
}

uint64_t sub_1A32A2894@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v24 = a3;
  v5 = sub_1A34CB0B0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A34CC610();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v13, *MEMORY[0x1E6981630], v9, v11);
  v14 = sub_1A34CC680();
  (*(v10 + 8))(v13, v9);
  sub_1A34CCC80();
  sub_1A34CA760();
  LOBYTE(v25) = 1;
  v36 = 0;
  *&v35[6] = v37;
  *&v35[22] = v38;
  *&v35[38] = v39;
  if ((a2 & 1) == 0)
  {
    sub_1A34C9010();
    sub_1A34CD650();
    v15 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();
    sub_1A32141EC(a1, 0);
    (*(v6 + 8))(v8, v5);
  }

  v31 = *v35;
  v25 = v14;
  v26 = 0;
  v27 = 1;
  v28 = 1;
  v29 = 0x3FF0000000000000;
  v30 = 0;
  v32 = *&v35[16];
  *v33 = *&v35[32];
  *&v33[14] = *&v35[46];
  v34 = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5AF8);
  sub_1A34CA830();
  sub_1A34CA820();
  v16 = sub_1A34CA800();
  v17 = v24;
  if (v16)
  {
    v18 = v16;
    v19 = sub_1A34CC5C0();

    v25 = v19;
    sub_1A34CC1F0();

    v20 = 0;
  }

  else
  {

    v20 = 1;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5B00);
  return (*(*(v21 - 8) + 56))(v17, v20, 1, v21);
}

uint64_t sub_1A32A2CA0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = type metadata accessor for CNContactAvatarContact();
  swift_allocObject();
  v5 = sub_1A32F27E4(v3, 1);
  v9[3] = v4;
  v9[4] = sub_1A32A4838(&qword_1ED8547B0, type metadata accessor for CNContactAvatarContact);
  v9[5] = 0;
  v9[0] = v5;
  v9[6] = 0;
  v6 = v3;
  sub_1A34CCC80();
  sub_1A34CA760();
  sub_1A32A43A4(v9, a1);
  v7 = v11;
  *(a1 + 56) = v10;
  *(a1 + 72) = v7;
  *(a1 + 88) = v12;
  return sub_1A32A4400(v9);
}

id sub_1A32A2DA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A32A4838(&qword_1EB0C2140, type metadata accessor for SharedProfileViewModel);
  sub_1A34C99A0();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

uint64_t sub_1A32A2E84@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_1A32A4838(&qword_1EB0C2140, type metadata accessor for SharedProfileViewModel);
  sub_1A34C99A0();

  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_1A32A2F30()
{
  swift_getKeyPath();
  sub_1A32A4838(&qword_1EB0C2140, type metadata accessor for SharedProfileViewModel);
  sub_1A34C9990();
}

uint64_t sub_1A32A2FFC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A32A4838(&qword_1EB0C2140, type metadata accessor for SharedProfileViewModel);
  sub_1A34C99A0();

  *a2 = *(v3 + 48);
  return result;
}

uint64_t type metadata accessor for ContactCardSharedProfile()
{
  result = qword_1EB0C1E50;
  if (!qword_1EB0C1E50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A32A313C(uint64_t a1)
{
  v2 = type metadata accessor for ContactCardConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A32A3198()
{
  result = qword_1EB0C0DD0;
  if (!qword_1EB0C0DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0C5878);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5888);
    sub_1A3284D0C(&qword_1EB0C04E0, &qword_1EB0C5888);
    swift_getOpaqueTypeConformance2();
    sub_1A32A4838(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0DD0);
  }

  return result;
}

unint64_t sub_1A32A32C4()
{
  result = qword_1EB0C0CA0;
  if (!qword_1EB0C0CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5830);
    sub_1A32A35FC(&unk_1EB0C03B8, &unk_1EB0C58A0, &unk_1A34DBD10, sub_1A32A3198);
    sub_1A3284D0C(&qword_1EB0C0790, &qword_1EB0C58B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0CA0);
  }

  return result;
}

uint64_t sub_1A32A33A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A32A3410(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactCardSharedProfile();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A32A3474()
{
  type metadata accessor for ContactCardSharedProfile();

  return sub_1A329F2A8();
}

uint64_t sub_1A32A34D4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContactCardSharedProfile() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1A329F600(v4, a1);
}

unint64_t sub_1A32A3544()
{
  result = qword_1EB0C0808;
  if (!qword_1EB0C0808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5860);
    sub_1A32A35FC(&qword_1EB0C03B0, &qword_1EB0C5848, &unk_1A34DBCB0, sub_1A32A3684);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0808);
  }

  return result;
}

uint64_t sub_1A32A35FC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A32A3684()
{
  result = qword_1EB0C0D98;
  if (!qword_1EB0C0D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C58D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C58D8);
    sub_1A3284D0C(&qword_1EB0C0630, &qword_1EB0C58D8);
    swift_getOpaqueTypeConformance2();
    sub_1A3284D0C(&unk_1EB0C07B8, &qword_1EB0C58E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0D98);
  }

  return result;
}

unint64_t sub_1A32A37AC()
{
  result = qword_1EB0C58E8;
  if (!qword_1EB0C58E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5840);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5838);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5830);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0C9E80);
    sub_1A32A32C4();
    sub_1A328A95C();
    sub_1A3284D0C(&unk_1EB0C0510, &unk_1EB0C9E80);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A3284D0C(&unk_1EB0C58F0, &unk_1EB0C58C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C58E8);
  }

  return result;
}

void sub_1A32A39B8()
{
  sub_1A32A3B50(319, &qword_1EB0C1190, &type metadata for ContactCardDetailsStyle, MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ContactCardConfiguration(319);
    if (v1 <= 0x3F)
    {
      sub_1A32A3AF8();
      if (v2 <= 0x3F)
      {
        sub_1A32A3B50(319, &qword_1EB0C0550, &type metadata for SharedProfilePreference, MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          sub_1A32A3B50(319, &qword_1ED853490, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1A32A3AF8()
{
  if (!qword_1EB0C0568)
  {
    type metadata accessor for SharedProfileViewModel();
    v0 = sub_1A34CC770();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB0C0568);
    }
  }
}

void sub_1A32A3B50(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1A32A3BA0()
{
  result = qword_1EB0C5900;
  if (!qword_1EB0C5900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5908);
    sub_1A32A3544();
    sub_1A32A37AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C5900);
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

uint64_t sub_1A32A3C40(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1A32A3C88(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1A32A3CE4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1A32A3D2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SharedProfilePreference(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SharedProfilePreference(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1A32A3ECC()
{
  result = qword_1EB0C5910;
  if (!qword_1EB0C5910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C5910);
  }

  return result;
}

unint64_t sub_1A32A3F7C()
{
  result = qword_1EB0C5920;
  if (!qword_1EB0C5920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5918);
    sub_1A3284D0C(&qword_1EB0C5928, &qword_1EB0C5930);
    sub_1A32A4838(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C5920);
  }

  return result;
}

unint64_t sub_1A32A407C()
{
  result = qword_1EB0C5970;
  if (!qword_1EB0C5970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C5970);
  }

  return result;
}

void *sub_1A32A40D8@<X0>(uint64_t *a1@<X2>, unsigned __int8 *a2@<X3>, BOOL *a3@<X8>)
{
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = *a2;
  v10 = *a1;
  v11 = v4;
  v12 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5938);
  result = MEMORY[0x1A58EE120](&v9, v7);
  *a3 = v9 == v6;
  return result;
}

uint64_t sub_1A32A41AC(uint64_t result)
{
  v1 = 0xD000000000000029;
  if (result > 1)
  {
    if (result == 3)
    {
      v2 = "O_CUSTOM_MENU_TITLE";
      return sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, v1, v2 | 0x8000000000000000);
    }

    if (result == 2)
    {
      v2 = "O_PREVIOUS_MENU_TITLE";
      v1 = 0xD000000000000033;
      return sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, v1, v2 | 0x8000000000000000);
    }

LABEL_11:
    result = sub_1A34CDC10();
    __break(1u);
    return result;
  }

  if (result)
  {
    if (result == 1)
    {
      v2 = "FERENCE_ALWAYS_UPDATE";
      v1 = 0xD000000000000035;
      return sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, v1, v2 | 0x8000000000000000);
    }

    goto LABEL_11;
  }

  return result;
}

uint64_t sub_1A32A4284(uint64_t result)
{
  v1 = 0xD000000000000025;
  if ((result - 1) >= 2)
  {
    if (!result)
    {
      return result;
    }

    if (result != 3)
    {
      result = sub_1A34CDC10();
      __break(1u);
      return result;
    }

    v2 = "FERENCE_ASK_FOR_UPDATES";
  }

  else
  {
    v2 = "MenuItemSubtitleText";
    v1 = 0xD000000000000027;
  }

  return sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, v1, v2 | 0x8000000000000000);
}

uint64_t objectdestroy_36Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t sub_1A32A4478()
{
  result = qword_1EB0C59A8;
  if (!qword_1EB0C59A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C59A0);
    sub_1A3284D0C(&qword_1EB0C59B0, &qword_1EB0C59B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C59A8);
  }

  return result;
}

uint64_t sub_1A32A4530()
{
  type metadata accessor for ContactCardSharedProfile();

  return sub_1A32A1DAC();
}

unint64_t sub_1A32A45A0()
{
  result = qword_1EB0C1E70;
  if (!qword_1EB0C1E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C1E70);
  }

  return result;
}

unint64_t sub_1A32A45F4()
{
  result = qword_1EB0C0D48;
  if (!qword_1EB0C0D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0C5A00);
    sub_1A3284D0C(&qword_1EB0C0700, &unk_1EB0C8FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0D48);
  }

  return result;
}

unint64_t sub_1A32A46AC()
{
  result = qword_1EB0C0E28;
  if (!qword_1EB0C0E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0C5A30);
    sub_1A3284D0C(&qword_1EB0C0670, &qword_1EB0C93B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0E28);
  }

  return result;
}

uint64_t sub_1A32A4764@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ContactCardSharedProfile() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1A32A1848(a1, v6, a2);
}

unint64_t sub_1A32A47E4()
{
  result = qword_1EB0C5AA0;
  if (!qword_1EB0C5AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C5AA0);
  }

  return result;
}

uint64_t sub_1A32A4838(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A32A48D8()
{
  v1 = *(type metadata accessor for ContactCardSharedProfile() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1A329FB58(v2);
}

uint64_t objectdestroy_58Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1A32A49C4(uint64_t a1, int a2)
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

uint64_t sub_1A32A4A0C(uint64_t result, int a2, int a3)
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

unint64_t sub_1A32A4A5C()
{
  result = qword_1EB0C0F90;
  if (!qword_1EB0C0F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0CA590);
    sub_1A31EBC58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0F90);
  }

  return result;
}

uint64_t sub_1A32A4B04(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A32A4B80()
{
  result = qword_1EB0C0D28;
  if (!qword_1EB0C0D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5B00);
    sub_1A32A4838(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0D28);
  }

  return result;
}

uint64_t sub_1A32A4C48()
{
  v0 = sub_1A34CA250();
  __swift_allocate_value_buffer(v0, qword_1EB0ED9F0);
  __swift_project_value_buffer(v0, qword_1EB0ED9F0);
  return sub_1A34CA240();
}

uint64_t sub_1A32A4CC8()
{
  type metadata accessor for PosterSaliencyAnalyzer();
  v0 = swift_allocObject();
  result = sub_1A32A5184();
  qword_1EB0C2DA0 = v0;
  return result;
}

uint64_t static PosterSaliencyAnalyzer.shared.getter()
{
  if (qword_1EB0C2D98 != -1)
  {
    swift_once();
  }

  return sub_1A34C9010();
}

id sub_1A32A4D60()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v3 = v0;
    v4 = [objc_allocWithZone(MEMORY[0x1E69844D0]) init];
    [v4 setRevision_];
    [v4 setDetectionLevel_];

    sub_1A32A4E08();
    v5 = *(v3 + 40);
    *(v3 + 40) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

void sub_1A32A4E08()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5B28);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - v5;
  v7 = sub_1A34CA270();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A32A653C(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1A3288FDC(v6, &qword_1EB0C5B28);
    if (qword_1EB0C2C60 != -1)
    {
      swift_once();
    }

    v11 = sub_1A34CA250();
    __swift_project_value_buffer(v11, qword_1EB0ED9F0);
    v12 = sub_1A34CA230();
    v13 = sub_1A34CD640();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1A31E6000, v12, v13, "Can't use real time GPU processing", v14, 2u);
      MEMORY[0x1A58F1010](v14, -1, -1);
    }
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    [v0 setMetalContextPriority_];
    (*(v8 + 16))(v3, v10, v7);
    (*(v8 + 56))(v3, 0, 1, v7);
    sub_1A34CD870();
    sub_1A3288FDC(v3, &qword_1EB0C5B28);
    (*(v8 + 8))(v10, v7);
  }
}

id sub_1A32A50DC()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 48);
  }

  else
  {
    v3 = v0;
    v4 = [objc_allocWithZone(MEMORY[0x1E6984540]) init];
    [v4 setRevision_];
    [v4 setDetectionLevel_];

    sub_1A32A4E08();
    v5 = *(v3 + 48);
    *(v3 + 48) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t sub_1A32A5184()
{
  v10 = sub_1A34CD740();
  v1 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A34CD710();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1A34CCED0();
  MEMORY[0x1EEE9AC00](v5 - 8);
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  *(v0 + 24) = 0;
  v6 = sub_1A31EC194(0, &qword_1ED854B50);
  v9[0] = "Prewarm PosterSaliencyAnalyzer";
  v9[1] = v6;
  sub_1A34CCEB0();
  v11 = MEMORY[0x1E69E7CC0];
  sub_1A32A681C(&unk_1ED854B60, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5B30);
  sub_1A32A6864(&qword_1ED854B80, &unk_1EB0C5B30);
  sub_1A34CD960();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v10);
  v7 = sub_1A34CD780();
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 32) = v7;
  [*(v0 + 16) setCountLimit_];
  return v0;
}

uint64_t sub_1A32A5420()
{
  v1 = sub_1A34CCE90();
  v12 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A34CCED0();
  v4 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 32);
  v7 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1A32A5AAC;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A32A5AB4;
  aBlock[3] = &block_descriptor_0;
  v8 = _Block_copy(aBlock);
  sub_1A34C9010();
  sub_1A34CCEB0();
  v13 = MEMORY[0x1E69E7CC0];
  sub_1A32A681C(&qword_1ED854650, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C6100);
  sub_1A32A6864(&qword_1ED854640, &unk_1EB0C6100);
  sub_1A34CD960();
  MEMORY[0x1A58EEF80](0, v6, v3, v8);
  _Block_release(v8);
  (*(v12 + 8))(v3, v1);
  (*(v4 + 8))(v6, v11);
}

uint64_t sub_1A32A56F4()
{
  v22[4] = *MEMORY[0x1E69E9840];
  v0 = sub_1A34CA250();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v22[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    if ((*(result + 24) & 1) == 0)
    {
      if (qword_1EB0C2C60 != -1)
      {
        swift_once();
      }

      v6 = __swift_project_value_buffer(v0, qword_1EB0ED9F0);
      (*(v1 + 16))(v3, v6, v0);
      sub_1A34C9F00();
      swift_allocObject();
      sub_1A34C9E90();
      sub_1A34C9EA0();
      v7 = [objc_opt_self() globalSession];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6970);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1A34DC310;
      *(v8 + 32) = sub_1A32A4D60();
      *(v8 + 40) = sub_1A32A50DC();
      sub_1A31EC194(0, &unk_1EB0C2A80);
      v9 = sub_1A34CD350();

      v22[0] = 0;
      LODWORD(v8) = [v7 prepareForPerformingRequests:v9 error:v22];

      v10 = v22[0];
      if (v8)
      {
        *(v5 + 24) = 1;
        v11 = v10;
      }

      else
      {
        v12 = v22[0];
        v13 = sub_1A34C9580();

        swift_willThrow();
        v14 = v13;
        v15 = sub_1A34CA230();
        v16 = sub_1A34CD640();

        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          *v17 = 138412290;
          v19 = v13;
          v20 = _swift_stdlib_bridgeErrorToNSError();
          *(v17 + 4) = v20;
          *v18 = v20;
          _os_log_impl(&dword_1A31E6000, v15, v16, "Failed to prewarm PosterSaliencyAnalyzer: %@", v17, 0xCu);
          sub_1A3288FDC(v18, &unk_1EB0C6C40);
          MEMORY[0x1A58F1010](v18, -1, -1);
          MEMORY[0x1A58F1010](v17, -1, -1);
        }

        else
        {
        }
      }

      sub_1A34C9E80();
    }
  }

  return result;
}

uint64_t sub_1A32A5AB4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_1A34C9010();
  v1(v2);
}

uint64_t sub_1A32A5B00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v85[1] = *MEMORY[0x1E69E9840];
  v8 = sub_1A34CA250();
  v9 = *(v8 - 8);
  *&v10 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v4 + 16);
  v14 = [v13 objectForKey_];
  if (!v14)
  {
    if (qword_1EB0C2C60 != -1)
    {
      swift_once();
    }

    v24 = __swift_project_value_buffer(v8, qword_1EB0ED9F0);
    (*(v9 + 16))(v12, v24, v8);
    sub_1A34C9F00();
    swift_allocObject();
    sub_1A34C9E90();
    sub_1A34CD110();
    v25 = sub_1A34C9ED0();

    *&v82 = v25;
    sub_1A34C9EA0();
    sub_1A33E9554(MEMORY[0x1E69E7CC0]);
    v26 = objc_allocWithZone(MEMORY[0x1E69845B8]);
    type metadata accessor for VNImageOption(0);
    sub_1A32A681C(&qword_1EB0C5040, type metadata accessor for VNImageOption);
    v27 = sub_1A34CCF70();

    *&v84 = a1;
    v28 = [v26 initWithCGImage:a1 orientation:1 options:v27];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6970);
    v29 = swift_allocObject();
    v83 = xmmword_1A34DAA30;
    *(v29 + 16) = xmmword_1A34DAA30;
    *(v29 + 32) = sub_1A32A4D60();
    sub_1A31EC194(0, &unk_1EB0C2A80);
    v30 = sub_1A34CD350();

    v85[0] = 0;
    LODWORD(v29) = [v28 performRequests:v30 error:v85];

    if (v29)
    {
      v31 = v85[0];
    }

    else
    {
      v32 = v85[0];
      v33 = sub_1A34C9580();

      swift_willThrow();
    }

    v34 = [*(v4 + 40) results];
    if (v34)
    {
      v35 = v34;
      sub_1A31EC194(0, &qword_1EB0C5B20);
      v36 = sub_1A34CD370();

      if (v36 >> 62)
      {
        if (sub_1A34CD9B0())
        {
          goto LABEL_12;
        }
      }

      else if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_12:
        if ((v36 & 0xC000000000000001) != 0)
        {
          v38 = MEMORY[0x1A58EF310](0, v36);
          v37 = v84;
          goto LABEL_15;
        }

        v37 = v84;
        if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v38 = *(v36 + 32);
LABEL_15:

          [v38 boundingBox];
          v40 = v39;
          v42 = v41;
          v44 = v43;
          v46 = v45;

          Width = CGImageGetWidth(v37);
          Height = CGImageGetHeight(v37);
          sub_1A32A6298(a2, v40, v42, v44, v46, Width, Height);
          v83 = v50;
          v84 = v49;
          v80 = v52;
          v81 = v51;

LABEL_28:
          *&v77 = v83;
          *(&v77 + 1) = v80;
          v83 = v77;
          *&v77 = v84;
          *(&v77 + 1) = v81;
          v84 = v77;
          sub_1A34C9E80();

          v22 = v83;
          v23 = v84;
          v21 = 0;
          goto LABEL_35;
        }

        __break(1u);
        goto LABEL_31;
      }
    }

    v53 = swift_allocObject();
    *(v53 + 16) = v83;
    *(v53 + 32) = sub_1A32A50DC();
    v54 = sub_1A34CD350();

    v85[0] = 0;
    v37 = v28;
    LODWORD(v53) = [v28 performRequests:v54 error:v85];

    if (v53)
    {
      v55 = v85[0];
    }

    else
    {
      v56 = v85[0];
      v57 = sub_1A34C9580();

      swift_willThrow();
    }

    v58 = [*(v4 + 48) results];
    if (!v58)
    {
      goto LABEL_33;
    }

    v59 = v58;
    sub_1A31EC194(0, &qword_1EB0C5B18);
    v36 = sub_1A34CD370();

    if (!(v36 >> 62))
    {
      v60 = v84;
      if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_32:

LABEL_33:
        v79 = [objc_opt_self() valueWithCGRect_];
        [v13 setObject:v79 forKey:a2];

        sub_1A34C9E80();

        goto LABEL_34;
      }

LABEL_24:
      if ((v36 & 0xC000000000000001) != 0)
      {
        v61 = MEMORY[0x1A58EF310](0, v36);
      }

      else
      {
        if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
        }

        v61 = *(v36 + 32);
      }

      v62 = v61;

      [v62 boundingBox];
      v64 = v63;
      v66 = v65;
      v68 = v67;
      v70 = v69;

      v71 = CGImageGetWidth(v60);
      v72 = CGImageGetHeight(v60);
      sub_1A32A6298(a2, v64, v66, v68, v70, v71, v72);
      v83 = v74;
      v84 = v73;
      v80 = v76;
      v81 = v75;

      goto LABEL_28;
    }

LABEL_31:
    v78 = sub_1A34CD9B0();
    v60 = v84;
    if (!v78)
    {
      goto LABEL_32;
    }

    goto LABEL_24;
  }

  v15 = v14;
  [v14 CGRectValue];
  v83 = v17;
  v84 = v16;
  v81 = v19;
  v82 = v18;

  *&v86.size.width = v83;
  *&v86.origin.x = v84;
  *&v86.size.height = v81;
  *&v86.origin.y = v82;
  result = CGRectIsNull(v86);
  if (result)
  {
LABEL_34:
    v23 = 0uLL;
    v21 = 1;
    v22 = 0uLL;
    goto LABEL_35;
  }

  v21 = 0;
  *&v22 = v83;
  *(&v22 + 1) = v81;
  *&v23 = v84;
  *(&v23 + 1) = v82;
LABEL_35:
  *a3 = v23;
  *(a3 + 16) = v22;
  *(a3 + 32) = v21;
  return result;
}

void sub_1A32A6298(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  if (a6 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a6 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((*&a6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_10;
  }

  if (a7 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (a7 < 9.22337204e18)
  {
    v18 = VNImageRectForNormalizedRect(*&a2, a6, a7);
    x = v18.origin.x;
    y = v18.origin.y;
    width = v18.size.width;
    height = v18.size.height;
    CGAffineTransformMakeScale(&v17, 1.0, -1.0);
    CGAffineTransformTranslate(&v16, &v17, 0.0, -a7);
    v17 = v16;
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    v20 = CGRectApplyAffineTransform(v19, &v17);
    v14 = *(v7 + 16);
    v15 = [objc_opt_self() valueWithCGRect_];
    [v14 setObject:v15 forKey:a1];

    return;
  }

LABEL_12:
  __break(1u);
}

uint64_t PosterSaliencyAnalyzer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A32A653C@<X0>(char *a1@<X8>)
{
  v2 = sub_1A34CA270();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  v12 = sub_1A34CD880();
  if (!*(v12 + 16) || (v13 = sub_1A31FA5B8(*MEMORY[0x1E69848C8]), (v14 & 1) == 0))
  {

    v22 = 1;
    return (*(v3 + 56))(a1, v22, 1, v2);
  }

  v26 = v11;
  v27 = a1;
  v15 = *(*(v12 + 56) + 8 * v13);

  v29 = *(v15 + 16);
  if (!v29)
  {
LABEL_8:

    v22 = 1;
    a1 = v27;
    return (*(v3 + 56))(a1, v22, 1, v2);
  }

  v17 = 0;
  v28 = v3 + 88;
  v18 = *MEMORY[0x1E695FD18];
  v19 = (v3 + 8);
  while (v17 < *(v15 + 16))
  {
    v20 = *(v3 + 16);
    v20(v8, v15 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v17, v2);
    v20(v5, v8, v2);
    if ((*(v3 + 88))(v5, v2) == v18)
    {

      (*(v3 + 8))(v5, v2);
      v23 = *(v3 + 32);
      v24 = v26;
      v23(v26, v8, v2);
      a1 = v27;
      v23(v27, v24, v2);
      v22 = 0;
      return (*(v3 + 56))(a1, v22, 1, v2);
    }

    ++v17;
    v21 = *v19;
    (*v19)(v5, v2);
    result = (v21)(v8, v2);
    if (v29 == v17)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A32A681C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A32A6864(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A32A68B8()
{
  swift_getKeyPath();
  sub_1A32A785C();
  sub_1A34C99A0();
}

uint64_t sub_1A32A6934@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A32A785C();
  sub_1A34C99A0();

  *a2 = *(v3 + OBJC_IVAR____TtC14ContactsUICore33ContactCardCustomActionsViewModel__customActionSections);
}

uint64_t sub_1A32A69E4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ContactsUICore33ContactCardCustomActionsViewModel__customActionSections;

  v5 = sub_1A3426E64(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A32A785C();
    sub_1A34C9990();
  }
}

uint64_t sub_1A32A6B10()
{
  swift_getKeyPath();
  sub_1A32A785C();
  sub_1A34C99A0();

  return swift_unknownObjectWeakLoadStrong();
}

size_t sub_1A32A6BB0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5B60);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v64 - v2;
  v4 = type metadata accessor for ContactCardActionRow();
  v83 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v64 - v8;
  v75 = type metadata accessor for ActionSection(0);
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v87 = v0;
  sub_1A32A785C();
  sub_1A34C99A0();

  v65 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  v13 = MEMORY[0x1E69E7CC0];
  if (!Strong)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

  v14 = Strong;
  if (([Strong respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  v15 = [v14 customActionGroupsForPlacement_];
  swift_unknownObjectRelease();
  if (!v15)
  {
LABEL_7:
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_8;
  }

  sub_1A31EC194(0, &unk_1EB0C5B70);
  v16 = sub_1A34CD370();

  v17 = v16;
LABEL_8:
  v13 = MEMORY[0x1E69E7CC0];
LABEL_9:
  v69 = v17;
  if (v17 >> 62)
  {
    goto LABEL_57;
  }

  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v18)
  {
    while (1)
    {
      v91 = v13;
      result = sub_1A32EBBB4(0, v18 & ~(v18 >> 63), 0);
      if (v18 < 0)
      {
        break;
      }

      v20 = 0;
      v71 = *(v65 + OBJC_IVAR____TtC14ContactsUICore33ContactCardCustomActionsViewModel_placement);
      v73 = v69 & 0xC000000000000001;
      v67 = v69 & 0xFFFFFFFFFFFFFF8;
      v66 = v69 + 32;
      v78 = v91;
      v70 = xmmword_1A34DC3B0;
      v82 = v9;
      v72 = v18;
      v68 = v11;
      while (!__OFADD__(v20, 1))
      {
        v77 = v20 + 1;
        if (v73)
        {
          v21 = MEMORY[0x1A58EF310]();
        }

        else
        {
          if (v20 >= *(v67 + 16))
          {
            goto LABEL_56;
          }

          v21 = *(v66 + 8 * v20);
        }

        v76 = v21;
        v22 = [v21 customActions];
        sub_1A31EC194(0, &qword_1EB0C0130);
        v23 = sub_1A34CD370();

        v81 = v23;
        if (v23 >> 62)
        {
          v24 = sub_1A34CD9B0();
        }

        else
        {
          v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v24)
        {
          v90 = MEMORY[0x1E69E7CC0];
          sub_1A32EBBD4(0, v24 & ~(v24 >> 63), 0);
          if (v24 < 0)
          {
            goto LABEL_55;
          }

          v25 = 0;
          v26 = v90;
          v85 = v81 & 0xC000000000000001;
          v80 = v81 & 0xFFFFFFFFFFFFFF8;
          v79 = v81 + 32;
          v84 = v24;
          while (1)
          {
            v11 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            v86 = v26;
            if (v85)
            {
              v27 = MEMORY[0x1A58EF310]();
            }

            else
            {
              if (v25 >= *(v80 + 16))
              {
                goto LABEL_53;
              }

              v27 = *(v79 + 8 * v25);
            }

            v28 = v27;
            v29 = [v27 title];
            v30 = sub_1A34CD110();
            v32 = v31;

            v33 = sub_1A34C93B0();
            v34 = v3;
            (*(*(v33 - 8) + 56))(v3, 1, 1, v33);
            v89 = 0;
            memset(v88, 0, sizeof(v88));
            v35 = [v28 contactIdentifier];
            if (v35)
            {
              v36 = v35;
              v37 = sub_1A34CD110();
              v39 = v38;
            }

            else
            {
              v37 = 0;
              v39 = 0;
            }

            swift_unknownObjectWeakInit();
            v40 = v4[23];
            *&v6[v40] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
            *v6 = 0;
            v6[8] = 1;
            *(v6 + 2) = v30;
            *(v6 + 3) = v32;
            v41 = v34;
            sub_1A328D790(v34, &v6[v4[6]], &unk_1EB0C5B60);
            sub_1A328D790(v88, &v6[v4[19]], &qword_1EB0CB0A0);
            v42 = &v6[v4[7]];
            *v42 = 0;
            *(v42 + 1) = 0;
            v43 = &v6[v4[8]];
            *v43 = 0;
            *(v43 + 1) = 0;
            v44 = &v6[v4[9]];
            *v44 = 0;
            *(v44 + 1) = 0;
            *&v6[v4[10]] = 0;
            v6[v4[11]] = 0;
            if (qword_1EB0C1E20 != -1)
            {
              swift_once();
            }

            *&v6[v4[13]] = qword_1EB0ED2D0;
            v6[v4[14]] = 1;
            v45 = &v6[v4[17]];
            *v45 = v37;
            v45[1] = v39;
            *&v6[v4[16]] = 0;
            *&v6[v4[15]] = 0;
            v46 = &v6[v4[12]];
            *v46 = 0;
            *(v46 + 1) = 0;
            *&v6[v4[18]] = v28;
            v6[v4[20]] = 0;
            v47 = qword_1EB0C2370;
            sub_1A34C9010();
            v48 = v28;
            v49 = v82;
            if (v47 != -1)
            {
              swift_once();
            }

            v50 = off_1EB0C2378;
            v3 = v41;
            if (*(off_1EB0C2378 + 2) && (sub_1A34CDF20(), MEMORY[0x1A58EF750](0x7FFFFFFFLL), v51 = sub_1A34CDF70(), v52 = -1 << *(v50 + 32), v53 = v51 & ~v52, ((*(v50 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v53) & 1) != 0))
            {
              v54 = ~v52;
              while (*(v50[6] + 8 * v53) != 0x7FFFFFFFLL)
              {
                v53 = (v53 + 1) & v54;
                if (((*(v50 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v53) & 1) == 0)
                {
                  goto LABEL_40;
                }
              }

              sub_1A3288FDC(v88, &qword_1EB0CB0A0);
              sub_1A3288FDC(v41, &unk_1EB0C5B60);
            }

            else
            {
LABEL_40:
              sub_1A3288FDC(v88, &qword_1EB0CB0A0);
              sub_1A3288FDC(v41, &unk_1EB0C5B60);
            }

            v6[v4[21]] = 1;
            sub_1A32A78B4(v6, v49, type metadata accessor for ContactCardActionRow);
            v26 = v86;
            v90 = v86;
            v9 = *(v86 + 16);
            v55 = *(v86 + 24);
            if (v9 >= v55 >> 1)
            {
              sub_1A32EBBD4(v55 > 1, v9 + 1, 1);
              v26 = v90;
            }

            *(v26 + 16) = v9 + 1;
            sub_1A32A78B4(v49, v26 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v9, type metadata accessor for ContactCardActionRow);
            v25 = v11;
            if (v11 == v84)
            {

              v11 = v68;
              goto LABEL_47;
            }
          }

          __break(1u);
LABEL_53:
          __break(1u);
          break;
        }

        v56 = MEMORY[0x1E69E7CC0];

        v26 = v56;
LABEL_47:
        sub_1A34C8A90();

        v57 = v75;
        *&v11[*(v75 + 20)] = v26;
        *&v11[*(v57 + 24)] = v70;
        *&v11[*(v57 + 28)] = v71;
        v58 = v78;
        v91 = v78;
        v60 = *(v78 + 16);
        v59 = *(v78 + 24);
        if (v60 >= v59 >> 1)
        {
          sub_1A32EBBB4(v59 > 1, v60 + 1, 1);
          v58 = v91;
        }

        *(v58 + 16) = v60 + 1;
        v61 = (*(v74 + 80) + 32) & ~*(v74 + 80);
        v78 = v58;
        sub_1A32A78B4(v11, v58 + v61 + *(v74 + 72) * v60, type metadata accessor for ActionSection);
        v20 = v77;
        if (v77 == v72)
        {

          v62 = v78;
          return sub_1A32A69E4(v62);
        }
      }

      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      v63 = sub_1A34CD9B0();
      v13 = MEMORY[0x1E69E7CC0];
      v18 = v63;
      if (!v63)
      {
        goto LABEL_58;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_58:

    v62 = MEMORY[0x1E69E7CC0];
    return sub_1A32A69E4(v62);
  }

  return result;
}

id sub_1A32A7628()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ContactCardCustomActionsViewModel()
{
  result = qword_1EB0C1550;
  if (!qword_1EB0C1550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A32A7750()
{
  result = sub_1A34C99E0();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1A32A785C()
{
  result = qword_1EB0C1560;
  if (!qword_1EB0C1560)
  {
    type metadata accessor for ContactCardCustomActionsViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C1560);
  }

  return result;
}

uint64_t sub_1A32A78B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A32A791C()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC14ContactsUICore33ContactCardCustomActionsViewModel__customActionSections) = *(v0 + 24);
}

id sub_1A32A7964(uint64_t a1)
{
  v3 = type metadata accessor for AvatarBackgroundLayer.RenderSpec(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5B80);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5B88);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - v12;
  v14 = OBJC_IVAR____TtC14ContactsUICore21AvatarBackgroundLayer_spec;
  swift_beginAccess();
  v15 = *(v11 + 56);
  sub_1A32A8EF8(v1 + v14, v13);
  sub_1A32A8EF8(a1, &v13[v15]);
  v16 = *(v4 + 48);
  if (v16(v13, 1, v3) == 1)
  {
    if (v16(&v13[v15], 1, v3) == 1)
    {
      return sub_1A3288FDC(v13, &qword_1EB0C5B80);
    }

    goto LABEL_6;
  }

  sub_1A32A8EF8(v13, v9);
  if (v16(&v13[v15], 1, v3) == 1)
  {
    sub_1A32A8FCC(v9);
LABEL_6:
    sub_1A3288FDC(v13, &qword_1EB0C5B88);
    return [v1 setNeedsDisplay];
  }

  sub_1A32A8F68(&v13[v15], v6);
  v18 = sub_1A32A8E20(v9, v6);
  sub_1A32A8FCC(v6);
  sub_1A32A8FCC(v9);
  result = sub_1A3288FDC(v13, &qword_1EB0C5B80);
  if ((v18 & 1) == 0)
  {
    return [v1 setNeedsDisplay];
  }

  return result;
}

id sub_1A32A7C00(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ContactsUICore21AvatarBackgroundLayer_spec;
  v4 = type metadata accessor for AvatarBackgroundLayer.RenderSpec(0);
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  v5 = OBJC_IVAR____TtC14ContactsUICore21AvatarBackgroundLayer_gradientLayer;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x1E6979380]) init];
  v15.receiver = v1;
  v15.super_class = type metadata accessor for AvatarBackgroundLayer(0);
  v6 = objc_msgSendSuper2(&v15, sel_init);
  v7 = OBJC_IVAR____TtC14ContactsUICore21AvatarBackgroundLayer_spec;
  swift_beginAccess();
  sub_1A32A9098(a1, v6 + v7);
  swift_endAccess();
  v8 = [objc_opt_self() standardPreferences];
  v9 = sub_1A34CD0E0();
  v10 = [v8 userHasOptedInToPreference_];

  if (v10)
  {
    v11 = [objc_opt_self() orangeColor];
    v12 = [v11 CGColor];

    [v6 setBackgroundColor_];
  }

  v13 = v6;
  [v13 setOpaque_];
  [v13 setNeedsDisplayOnBoundsChange_];

  [v13 setNeedsDisplay];
  sub_1A3288FDC(a1, &qword_1EB0C5B80);
  return v13;
}

uint64_t sub_1A32A7E08(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5B80);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v21 - v4;
  v6 = OBJC_IVAR____TtC14ContactsUICore21AvatarBackgroundLayer_spec;
  v7 = type metadata accessor for AvatarBackgroundLayer.RenderSpec(0);
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  v8 = OBJC_IVAR____TtC14ContactsUICore21AvatarBackgroundLayer_gradientLayer;
  *&v1[v8] = [objc_allocWithZone(MEMORY[0x1E6979380]) init];
  sub_1A31EE354(a1, v24);
  v9 = type metadata accessor for AvatarBackgroundLayer(0);
  if (swift_dynamicCast())
  {
    v10 = v23;
    v11 = OBJC_IVAR____TtC14ContactsUICore21AvatarBackgroundLayer_spec;
    swift_beginAccess();
    sub_1A32A8EF8(v10 + v11, v5);
    swift_beginAccess();
    sub_1A32A9028(v5, &v1[v6]);
    swift_endAccess();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v12 = sub_1A34CDE10();
    v22.receiver = v1;
    v22.super_class = v9;
    v13 = objc_msgSendSuper2(&v22, sel_initWithLayer_, v12);
    swift_unknownObjectRelease();
    v14 = [objc_opt_self() standardPreferences];
    v15 = sub_1A34CD0E0();
    v16 = [v14 userHasOptedInToPreference_];

    if (v16)
    {
      v17 = [objc_opt_self() orangeColor];
      v18 = [v17 CGColor];

      [v13 setBackgroundColor_];
    }

    v19 = v13;
    [v19 setOpaque_];
    [v19 setNeedsDisplayOnBoundsChange_];

    [v19 setNeedsDisplay];
    __swift_destroy_boxed_opaque_existential_0(a1);
    return v19;
  }

  else
  {
    result = sub_1A34CDC10();
    __break(1u);
  }

  return result;
}

void sub_1A32A8254()
{
  v1 = v0;
  v2 = sub_1A34CA5D0();
  v3 = *(v2 - 1);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5B80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v60 - v7;
  v9 = type metadata accessor for AvatarBackgroundLayer.RenderSpec(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AvatarBackgroundLayer(0);
  v65.receiver = v1;
  v65.super_class = v13;
  objc_msgSendSuper2(&v65, sel_display);
  v14 = OBJC_IVAR____TtC14ContactsUICore21AvatarBackgroundLayer_spec;
  swift_beginAccess();
  sub_1A32A8EF8(&v1[v14], v8);
  v15 = *(v10 + 48);
  v62 = v9;
  if (v15(v8, 1, v9) == 1)
  {
    sub_1A3288FDC(v8, &qword_1EB0C5B80);
    v16 = [objc_opt_self() standardPreferences];
    v17 = sub_1A34CD0E0();
    v18 = [v16 userHasOptedInToPreference_];

    if (v18)
    {
      v19 = [objc_opt_self() redColor];
      v20 = [v19 CGColor];

      [v1 setBackgroundColor_];
    }

    return;
  }

  sub_1A32A8F68(v8, v12);
  v21 = objc_opt_self();
  [v21 begin];
  [v21 setDisableActions_];
  v22 = [objc_opt_self() standardPreferences];
  v23 = sub_1A34CD0E0();
  v24 = [v22 userHasOptedInToPreference_];

  if (v24)
  {
    [v1 setBackgroundColor_];
  }

  v25 = &v12[*(v62 + 20)];
  v26 = *v25;
  v27 = v25[8];
  v61 = v21;
  if (v27 < 2)
  {
    v64 = v26;
    v2 = &v64;
    v35 = TonalGradientStyle.colors.getter();
    v36 = 0;
    v28 = MEMORY[0x1E69E7CC0];
    v63 = MEMORY[0x1E69E7CC0];
    v31 = *(v35 + 16);
LABEL_17:
    v37 = v36;
    while (v31 != v37)
    {
      if (v37 >= *(v35 + 16))
      {
        goto LABEL_49;
      }

      v36 = (v37 + 1);
      v2 = *(v35 + 8 * v37 + 32);
      sub_1A34C9010();
      v38 = sub_1A34CC430();

      v37 = v36;
      if (v38)
      {
        v2 = &v63;
        MEMORY[0x1A58EEB60](v39);
        if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1A34CD390();
        }

        sub_1A34CD3B0();
        v28 = v63;
        goto LABEL_17;
      }
    }

    goto LABEL_42;
  }

  if (v27 - 2 >= 2)
  {
    (*(v3 + 16))(v5, v12, v2);
    v42 = (*(v3 + 88))(v5, v2);
    if (v42 == *MEMORY[0x1E697DBB8])
    {
      v2 = &byte_1ED857E28;
      v31 = &qword_1ED857E20;
      if (qword_1ED854B20 == -1)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v42 != *MEMORY[0x1E697DBA8])
      {
        sub_1A34CDE20();
        __break(1u);
        return;
      }

      v2 = &byte_1ED857D98;
      v31 = &qword_1ED857D90;
      if (qword_1ED853EA8 == -1)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    v28 = MEMORY[0x1E69E7CC0];
    v64 = MEMORY[0x1E69E7CC0];
    v29 = *(v26 + 16);
    sub_1A31EE004(v26, v27);
    v30 = 0;
    v31 = (v26 + 32);
LABEL_9:
    v32 = v30;
    while (1)
    {
      if (v29 == v32)
      {
        v40 = v26;
        v41 = v27;
        goto LABEL_25;
      }

      if (v32 >= *(v26 + 16))
      {
        break;
      }

      v30 = v32 + 1;
      v2 = v31[v32];
      sub_1A34C9010();
      v33 = sub_1A34CC430();

      v32 = v30;
      if (v33)
      {
        v2 = &v64;
        MEMORY[0x1A58EEB60](v34);
        if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1A34CD390();
        }

        sub_1A34CD3B0();
        v28 = v64;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
  }

  swift_once();
LABEL_32:
  v43 = *v31;
  LODWORD(v2) = *v2;

  sub_1A31EE004(v43, v2);
  sub_1A31EE004(v43, v2);

  sub_1A31ECC9C(v43, v2);
  if (v2 == 2)
  {
    v44 = 0;
    v28 = MEMORY[0x1E69E7CC0];
    v64 = MEMORY[0x1E69E7CC0];
    v45 = *(v43 + 16);
    v31 = (v43 + 32);
LABEL_34:
    v46 = v44;
    while (v45 != v46)
    {
      if (v46 >= *(v43 + 16))
      {
        goto LABEL_50;
      }

      v44 = v46 + 1;
      v2 = v31[v46];
      sub_1A34C9010();
      v47 = sub_1A34CC430();

      v46 = v44;
      if (v47)
      {
        v2 = &v64;
        MEMORY[0x1A58EEB60](v48);
        if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1A34CD390();
        }

        sub_1A34CD3B0();
        v28 = v64;
        goto LABEL_34;
      }
    }

    v40 = v43;
    v41 = 2;
LABEL_25:
    sub_1A31ECC9C(v40, v41);
  }

  else
  {
    sub_1A31ECC9C(v43, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6970);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1A34DAA30;
    v49 = [objc_opt_self() purpleColor];
    v50 = [v49 CGColor];

    *(v28 + 32) = v50;
  }

LABEL_42:
  v51 = OBJC_IVAR____TtC14ContactsUICore21AvatarBackgroundLayer_gradientLayer;
  v52 = [*&v1[OBJC_IVAR____TtC14ContactsUICore21AvatarBackgroundLayer_gradientLayer] superlayer];
  v53 = v12;
  v54 = v61;
  if (v52)
  {
  }

  else
  {
    [v1 addSublayer_];
  }

  v55 = *&v1[v51];
  [v1 bounds];
  [v55 setFrame_];

  LOBYTE(v64) = v12[*(v62 + 24)];
  v56 = *&v1[v51];
  sub_1A32F7C68(v56);

  v57 = *&v1[v51];
  sub_1A331D854(v28);

  v58 = sub_1A34CD350();

  [v57 setColors_];

  v59 = *&v1[v51];
  [v59 setGeometryFlipped_];

  [v54 commit];
  sub_1A32A8FCC(v53);
}

id sub_1A32A8BA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AvatarBackgroundLayer(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A32A8C60()
{
  sub_1A32A8CFC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1A32A8CFC()
{
  if (!qword_1ED853D98[0])
  {
    type metadata accessor for AvatarBackgroundLayer.RenderSpec(255);
    v0 = sub_1A34CD890();
    if (!v1)
    {
      atomic_store(v0, qword_1ED853D98);
    }
  }
}

uint64_t sub_1A32A8D9C()
{
  result = sub_1A34CA5D0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A32A8E20(uint64_t a1, uint64_t a2)
{
  if (sub_1A34CA5C0() & 1) != 0 && (v4 = type metadata accessor for AvatarBackgroundLayer.RenderSpec(0), v5 = *(v4 + 20), v6 = *(a1 + v5 + 8), v14 = *(a1 + v5), v15 = v6, v7 = a2 + v5, v8 = *(v7 + 8), v12 = *v7, v13 = v8, sub_1A31EE004(v14, v6), sub_1A31EE004(v12, v8), v9 = _s14ContactsUICore30AvatarBackgroundRepresentationO2eeoiySbAC_ACtFZ_0(&v14, &v12), sub_1A31ECC9C(v12, v13), sub_1A31ECC9C(v14, v15), (v9))
  {
    v10 = *(a1 + *(v4 + 24)) ^ *(a2 + *(v4 + 24)) ^ 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_1A32A8EF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5B80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A32A8F68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AvatarBackgroundLayer.RenderSpec(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A32A8FCC(uint64_t a1)
{
  v2 = type metadata accessor for AvatarBackgroundLayer.RenderSpec(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A32A9028(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5B80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A32A9098(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5B80);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A32A9108(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for VisualIdentity(0);
    return a2;
  }

  return result;
}

uint64_t sub_1A32A919C()
{
  type metadata accessor for MonogramCache();
  v0 = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC0];
  v2 = sub_1A33E8280(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5C50);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = v2;
  *(v0 + 16) = v3;
  v4 = sub_1A33E83BC(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5C58);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v4;
  *(v0 + 24) = result;
  qword_1ED857DE8 = v0;
  return result;
}

uint64_t sub_1A32A9254()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x1A58EF750](*v0);
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x1A58EF770](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  return MEMORY[0x1A58EF770](*&v4);
}

uint64_t sub_1A32A92B8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_1A34CD1C0();
  MEMORY[0x1A58EF750](v1);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x1A58EF770](*&v4);
  if (v3 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  return MEMORY[0x1A58EF770](*&v5);
}

uint64_t sub_1A32A9330()
{
  sub_1A34CDF20();
  sub_1A32A9254();
  return sub_1A34CDF70();
}

uint64_t sub_1A32A9388()
{
  sub_1A34CDF20();
  sub_1A32A9254();
  return sub_1A34CDF70();
}

BOOL sub_1A32A93D8(double *a1, double *a2)
{
  v2 = a1[1] == a2[1];
  if (a1[2] != a2[2])
  {
    v2 = 0;
  }

  return *a1 == *a2 && v2;
}

uint64_t sub_1A32A9404()
{
  sub_1A34CDF20();
  sub_1A32A92B8();
  return sub_1A34CDF70();
}

uint64_t sub_1A32A9464()
{
  sub_1A34CDF20();
  sub_1A32A92B8();
  return sub_1A34CDF70();
}

BOOL sub_1A32A94BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a2 + 16);
  v7 = *(a2 + 24);
  v6 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v8 || (v9 = sub_1A34CDE30(), result = 0, (v9 & 1) != 0))
  {
    v11 = v4 == v7;
    if (v3 != v6)
    {
      v11 = 0;
    }

    return v2 == v5 && v11;
  }

  return result;
}

void sub_1A32A9544(uint64_t *a1@<X0>, unsigned __int8 a2@<W1>, const __CTFont **a3@<X8>, double a4@<D0>, double a5@<D1>, CGFloat a6@<D2>)
{
  v12 = *a1;
  if (*(*a1 + 16) && (v13 = sub_1A33DB254(a2, a4, a5), (v14 & 1) != 0))
  {
    v15 = *(*(v12 + 56) + 8 * v13);
    v27 = v15;

    if (!*(v15 + 16))
    {
LABEL_8:
      sub_1A3407988(v15);
      if (v19)
      {
        v20 = v19;
        CopyWithSymbolicTraits = CTFontCreateCopyWithSymbolicTraits(v19, a6, 0, 0, 0);
        if (CopyWithSymbolicTraits)
        {
          v22 = CopyWithSymbolicTraits;
          v18 = CopyWithSymbolicTraits;
          sub_1A3490E70(v22, a6);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v26 = *a1;
          sub_1A33F0714(v27, a2, isUniquelyReferenced_nonNull_native, a4, a5);

LABEL_13:
          *a1 = v26;
          goto LABEL_14;
        }
      }

      v18 = MonogramFont.platformFont(size:)(a6);
      v24 = swift_isUniquelyReferenced_nonNull_native();
      sub_1A33F0888(v18, v24, a6);
      sub_1A34C9010();
      v25 = swift_isUniquelyReferenced_nonNull_native();
      v26 = *a1;
      sub_1A33F0714(v15, a2, v25, a4, a5);

      goto LABEL_13;
    }
  }

  else
  {
    v15 = sub_1A33E8518(MEMORY[0x1E69E7CC0]);
    v27 = v15;
    if (!*(v15 + 16))
    {
      goto LABEL_8;
    }
  }

  v16 = sub_1A33DB370(a6);
  if ((v17 & 1) == 0)
  {
    goto LABEL_8;
  }

  v18 = *(*(v15 + 56) + 8 * v16);

LABEL_14:
  *a3 = v18;
}

unint64_t sub_1A32A9768@<X0>(unint64_t result@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *result;
  if (*(*result + 16))
  {
    result = sub_1A33DB1D8(a2);
    if (v5)
    {
      v6 = *(v4 + 56) + 40 * result;
      v7 = *v6;
      v8 = *(v6 + 8);
      v9 = *(v6 + 16);
      v10 = *(v6 + 24);
      v11 = *(v6 + 32);
      result = sub_1A31FBC5C(*v6, v8, v9, v10, v11);
    }

    else
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = -1;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = -1;
  }

  *a3 = v7;
  *(a3 + 8) = v8;
  *(a3 + 16) = v9;
  *(a3 + 24) = v10;
  *(a3 + 32) = v11;
  return result;
}

uint64_t sub_1A32A982C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1A32ACBB0(a2, v8);
  sub_1A32ACBE8(a3, v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[0] = *a1;
  sub_1A33F09D8(a3, a2, isUniquelyReferenced_nonNull_native);
  result = sub_1A32ACB80(a2);
  *a1 = v8[0];
  return result;
}

uint64_t sub_1A32A98C0()
{

  return swift_deallocClassInstance();
}

double sub_1A32A9900@<D0>(_OWORD *a1@<X8>)
{
  v85 = a1;
  v2 = type metadata accessor for MonogramSpec.LookupKey();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  v6 = *(v1 + 24);
  v8 = *(v1 + 4);
  v7 = *(v1 + 5);

  v9 = sub_1A31F3C28(3);
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = MEMORY[0x1A58EE9C0](v9, v11, v13, v15);
  v18 = v17;

  if (qword_1ED854898 != -1)
  {
    swift_once();
  }

  v19 = qword_1ED857DF0;
  v20 = *algn_1ED857DF8;
  LOBYTE(v107) = v6;
  *(&v107 + 1) = v8;
  v108 = v7;

  sub_1A31F83EC(v16, v18, &v107, v4);
  sub_1A31F8C64(v4, v19, v20, &v97);
  sub_1A31F96C0(v4, type metadata accessor for MonogramSpec.LookupKey);
  v21 = *&v98[5];
  v22 = v8 * *&v98[6];
  if (!v99)
  {
    v7 = *&v98[7];
  }

  v23 = *(v5 + 16);
  sub_1A34C9010();
  os_unfair_lock_lock((v23 + 24));
  sub_1A32A9544((v23 + 16), v6, &v107, v22, v7, v21);
  os_unfair_lock_unlock((v23 + 24));
  v24 = v107;

  v25 = v100;
  LOBYTE(v107) = v6;
  *(&v107 + 1) = v22;
  *&v83 = v7;
  v108 = v7;
  v26 = v24;
  v82 = v21;
  sub_1A33E510C(&v107, v25);
  v28 = v27;
  v29 = v101;

  v80 = v28;
  v81 = v29;
  sub_1A333BD04(*&v16, v18, v26, v102, v29, v28);
  v30 = v97;
  sub_1A31FA5BC(v98, v103, v97, v97);
  sub_1A31FA954(v102);
  v31 = v104;
  PathBoundingBox = CGPathGetPathBoundingBox(v104);
  x = PathBoundingBox.origin.x;
  y = PathBoundingBox.origin.y;
  width = PathBoundingBox.size.width;
  height = PathBoundingBox.size.height;
  v84 = v30;
  v36 = v30 * 0.75;
  v37 = v30 * 0.5 - v30 * 0.75 * 0.5;
  PathBoundingBox.origin.x = v37;
  PathBoundingBox.origin.y = v37;
  PathBoundingBox.size.width = v36;
  PathBoundingBox.size.height = v36;
  MinX = CGRectGetMinX(PathBoundingBox);
  v114.origin.x = x;
  v114.origin.y = y;
  v114.size.width = width;
  v114.size.height = height;
  v39 = MinX - CGRectGetMinX(v114);
  if (v39 > 0.0)
  {
    v40 = v39;
  }

  else
  {
    v40 = 0.0;
  }

  v115.origin.x = x;
  v115.origin.y = y;
  v115.size.width = width;
  v115.size.height = height;
  MaxX = CGRectGetMaxX(v115);
  v116.origin.x = v37;
  v116.origin.y = v37;
  v116.size.width = v36;
  v116.size.height = v36;
  v42 = MaxX - CGRectGetMaxX(v116);
  if (v40 > v42)
  {
    v43 = v40;
  }

  else
  {
    v43 = v42;
  }

  if (v42 > 0.0)
  {
    v44 = v43;
  }

  else
  {
    v44 = v40;
  }

  v45 = v36 / (v44 + v36 + v44);
  if (v45 >= 1.0)
  {

    v60 = v103;
  }

  else
  {
    v46 = *(v5 + 16);
    sub_1A34C9010();
    os_unfair_lock_lock((v46 + 24));
    v47 = v82;
    sub_1A32A9544((v46 + 16), v6, &v107, v22, 60.0, v82);
    os_unfair_lock_unlock((v46 + 24));
    v48 = v107;

    v49 = v48;
    v50 = v81;
    sub_1A333BD04(*&v16, v18, v49, v105, v81, 0.0);
    v117 = CGPathGetPathBoundingBox(v105[19]);
    v51 = 1.0 - v117.size.width / width;
    v52 = v45 - v117.size.width / width;
    if (v52 <= 0.0)
    {
      v52 = 0.0;
    }

    v53 = v52 / v51;
    if (v51 == 0.0)
    {
      v53 = 1.0;
    }

    v54 = *&v83;
    v55 = (*&v83 + -60.0) * v53 + 60.0;
    v56 = v45 / ((v117.size.width + (width - v117.size.width) * v53) / width);
    if (v56 >= 1.0)
    {
      v59 = v80;
    }

    else
    {
      LOBYTE(v107) = v6;
      *(&v107 + 1) = v22;
      v108 = *&v83;
      v57 = MonogramFont.platformFont(size:)(v47 * v56);

      LOBYTE(v107) = v6;
      *(&v107 + 1) = v22;
      v108 = v54;
      sub_1A33E510C(&v107, v25);
      v59 = v58;
      v26 = v57;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5C30);
    v61 = swift_allocObject();
    v83 = xmmword_1A34DAA10;
    *(v61 + 16) = xmmword_1A34DAA10;
    v62 = *MEMORY[0x1E69658F8];
    *(v61 + 32) = *MEMORY[0x1E69658F8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5C38);
    v63 = swift_allocObject();
    *(v63 + 16) = v83;
    *(v63 + 32) = 2003072104;
    *(v63 + 40) = v55;
    v64 = sub_1A31FA2C8(v63);
    swift_setDeallocating();
    swift_deallocClassInstance();
    *(v61 + 40) = v64;
    v65 = v62;
    sub_1A33E8624(v61);
    swift_setDeallocating();
    sub_1A3288FDC(v61 + 32, &qword_1EB0C5C40);
    swift_deallocClassInstance();
    type metadata accessor for CFString(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5C48);
    sub_1A31FB4B0(&qword_1ED854618, type metadata accessor for CFString);
    v66 = sub_1A34CCF70();

    v67 = CTFontDescriptorCreateWithAttributes(v66);
    CopyWithAttributes = CTFontCreateCopyWithAttributes(v26, 0.0, 0, v67);

    v26 = CopyWithAttributes;
    sub_1A333BD04(*&v16, v18, v26, v106, v50, v59);
    v60 = &v107;
    sub_1A31FA5BC(v98, &v107, v84, v84);
    sub_1A31FA954(v103);

    sub_1A31FA954(v106);
    sub_1A31FA954(v105);
    v31 = v109;
  }

  v69 = *(v60 + 18);
  v70 = *(v60 + 1);
  v86[0] = *v60;
  v86[1] = v70;
  v71 = v60[2];
  v87 = v60[1];
  v88 = v71;
  v72 = v60[4];
  v89 = v60[3];
  v90 = v72;
  v73 = v60[6];
  v91 = v60[5];
  v92 = v73;
  v74 = v60[8];
  v93 = v60[7];
  v94 = v74;
  v95 = v69;
  v96 = v31;
  v75 = v31;
  sub_1A34CBD20();
  sub_1A31FA954(v86);

  sub_1A31F60B0(&v97);
  result = *&v110;
  v77 = v111;
  v78 = v85;
  *v85 = v110;
  v78[1] = v77;
  *(v78 + 32) = v112;
  return result;
}

uint64_t MonogramView.Recipe.initials.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MonogramView.Recipe.initials.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

__n128 MonogramView.Recipe.font.getter@<Q0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 16);
  result = *(v1 + 24);
  *(a1 + 8) = result;
  return result;
}

__n128 MonogramView.Recipe.font.setter(uint64_t a1)
{
  *(v1 + 16) = *a1;
  result = *(a1 + 8);
  *(v1 + 24) = result;
  return result;
}

uint64_t MonogramView.Recipe.path.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  result = sub_1A31FBC5C(v3, v4, v5, v6, v7);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  return result;
}

__n128 MonogramView.Recipe.path.setter(uint64_t a1)
{
  sub_1A32891B0(*(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80));
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = v4;
  *(v1 + 80) = *(a1 + 32);
  return result;
}

uint64_t sub_1A32AA220()
{
  sub_1A34CDF20();
  sub_1A34CD1C0();

  return sub_1A34CDF70();
}

uint64_t sub_1A32AA2F4()
{
  sub_1A34CD1C0();
}

uint64_t sub_1A32AA3B4()
{
  sub_1A34CDF20();
  sub_1A34CD1C0();

  return sub_1A34CDF70();
}

uint64_t sub_1A32AA484@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A32ACA40();
  *a1 = result;
  return result;
}

void sub_1A32AA4B4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1752457584;
  v5 = 0xE600000000000000;
  v6 = 0x7265746E6563;
  v7 = 0xE800000000000000;
  v8 = 0x736C616974696E69;
  if (v2 != 3)
  {
    v8 = 1953394534;
    v7 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x80000001A350ACD0;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_1A32AA544()
{
  v1 = *v0;
  v2 = 1752457584;
  v3 = 0x7265746E6563;
  v4 = 0x736C616974696E69;
  if (v1 != 3)
  {
    v4 = 1953394534;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_1A32AA5D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A32ACA40();
  *a1 = result;
  return result;
}

uint64_t sub_1A32AA604(uint64_t a1)
{
  v2 = sub_1A32ABE18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A32AA640(uint64_t a1)
{
  v2 = sub_1A32ABE18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double MonogramView.Recipe.init(initials:font:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = *(a3 + 1);
  v9 = *(a3 + 2);
  v10 = qword_1ED854478;

  if (v10 != -1)
  {
    swift_once();
  }

  sub_1A34C9010();
  sub_1A31F3724(v13);

  if (qword_1ED8549E0 != -1)
  {
    swift_once();
  }

  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v7;
  *(a4 + 24) = v8;
  *(a4 + 32) = v9;
  *(a4 + 40) = 0x4059000000000000;
  result = *v13;
  v12 = v13[1];
  *(a4 + 48) = v13[0];
  *(a4 + 64) = v12;
  *(a4 + 80) = v14;
  *(a4 + 88) = 0;
  *(a4 + 96) = 0;
  return result;
}

__n128 MonogramView.Recipe.init(containerDiameter:path:initials:font:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v6 = *a4;
  v7 = *(a4 + 8);
  if (qword_1ED8549E0 != -1)
  {
    v10 = a1;
    v11 = a2;
    v12 = a3;
    v13 = a5;
    v14 = a6;
    v15 = *(a4 + 8);
    swift_once();
    v7 = v15;
    a6 = v14;
    a1 = v10;
    a2 = v11;
    a5 = v13;
    a3 = v12;
  }

  *(a5 + 88) = 0;
  *(a5 + 96) = 0;
  *(a5 + 40) = a6;
  result = *a1;
  v9 = *(a1 + 16);
  *(a5 + 48) = *a1;
  *(a5 + 64) = v9;
  *(a5 + 80) = *(a1 + 32);
  *a5 = a2;
  *(a5 + 8) = a3;
  *(a5 + 16) = v6;
  *(a5 + 24) = v7;
  return result;
}

__n128 MonogramView.Recipe.init(path:center:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1ED8549E0 != -1)
  {
    v5 = a1;
    v6 = a2;
    swift_once();
    a1 = v5;
    a2 = v6;
  }

  v2 = byte_1ED8549E8;
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = v2;
  *(a2 + 24) = *&qword_1ED8549F0;
  *(a2 + 40) = 0x4059000000000000;
  result = *a1;
  v4 = *(a1 + 16);
  *(a2 + 48) = *a1;
  *(a2 + 64) = v4;
  *(a2 + 80) = *(a1 + 32);
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  return result;
}

__n128 MonogramView.Recipe.init(containerDiameter:path:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  if (qword_1ED8549E0 != -1)
  {
    v6 = a1;
    v7 = a2;
    v8 = a3;
    swift_once();
    a3 = v8;
    a1 = v6;
    a2 = v7;
  }

  v3 = byte_1ED8549E8;
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = v3;
  *(a2 + 24) = *&qword_1ED8549F0;
  *(a2 + 40) = a3;
  result = *a1;
  v5 = *(a1 + 16);
  *(a2 + 48) = *a1;
  *(a2 + 64) = v5;
  *(a2 + 80) = *(a1 + 32);
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  return result;
}

uint64_t MonogramView.Recipe.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = sub_1A34C9FD0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v34 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MonogramRecipe_Path(0);
  MEMORY[0x1EEE9AC00](v6);
  v35 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5B90);
  v36 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - v9;
  if (qword_1ED8549E0 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A32ABE18();
  sub_1A34CDF90();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v44) = 0;
  v11 = v8;
  v12 = COERCE_DOUBLE(sub_1A34CDCD0());
  if (v13)
  {
    v14 = 100.0;
  }

  else
  {
    v14 = v12;
  }

  LOBYTE(v37) = 1;
  sub_1A32ABE6C();
  sub_1A34CDD30();
  v15 = *(&v44 + 1);
  v37 = v44;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  v32 = v37;
  sub_1A31EC1E0(v37, *(&v37 + 1));
  sub_1A34C9FC0();
  sub_1A31FB4B0(&qword_1EB0C5BA0, type metadata accessor for MonogramRecipe_Path);
  v16 = v35;
  sub_1A34CA0D0();
  v17 = v32;
  sub_1A3402280();
  sub_1A31F96C0(v16, type metadata accessor for MonogramRecipe_Path);
  sub_1A34CBD20();
  v59 = v63;
  v60 = v64;
  v61 = v65;
  LOBYTE(v44) = 3;
  v18 = sub_1A34CDCF0();
  v35 = v19;
  v20 = v11;
  v21 = v18;
  v54 = 4;
  sub_1A32ABF14();
  sub_1A34CDD30();
  (*(v36 + 8))(v10, v20);
  sub_1A31EC234(v17, v15);
  v22 = v55;
  v23 = v56;
  v24 = v57;
  v25 = v35;
  *&v37 = v21;
  *(&v37 + 1) = v35;
  LOBYTE(v38) = v55;
  *(&v38 + 1) = *v62;
  DWORD1(v38) = *&v62[3];
  *(&v38 + 1) = v56;
  *&v39 = v57;
  *(&v39 + 1) = v14;
  v40 = v59;
  v41 = v60;
  LOBYTE(v42) = v61;
  DWORD1(v42) = *&v58[3];
  *(&v42 + 1) = *v58;
  *(&v42 + 1) = 0;
  v43 = 0;
  v26 = v37;
  v27 = v38;
  v28 = v59;
  v29 = v33;
  *(v33 + 32) = v39;
  *(v29 + 48) = v28;
  *v29 = v26;
  *(v29 + 16) = v27;
  v30 = v42;
  *(v29 + 64) = v41;
  *(v29 + 80) = v30;
  *(v29 + 96) = 0;
  sub_1A31FA9C4(&v37, &v44);
  __swift_destroy_boxed_opaque_existential_0(a1);
  *&v44 = v21;
  *(&v44 + 1) = v25;
  LOBYTE(v45) = v22;
  *(&v45 + 1) = *v62;
  DWORD1(v45) = *&v62[3];
  *(&v45 + 1) = v23;
  v46 = v24;
  v47 = v14;
  v48 = v59;
  v49 = v60;
  v50 = v61;
  *&v51[3] = *&v58[3];
  *v51 = *v58;
  v52 = 0;
  v53 = 0;
  return sub_1A31FB84C(&v44);
}

uint64_t MonogramView.Recipe.encode(to:)(void *a1)
{
  v27 = type metadata accessor for MonogramRecipe_Path(0);
  MEMORY[0x1EEE9AC00](v27);
  v28 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5BB0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  v9 = v1[1];
  v25 = *v1;
  v26 = v9;
  v10 = *(v1 + 16);
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + 4);
  v33 = *(v1 + 3);
  v34 = v13;
  v35 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A32ABE18();
  v14 = v5;
  sub_1A34CDFA0();
  LOBYTE(v29) = 0;
  sub_1A34CDDA0();
  if (!v2)
  {
    v16 = v10;
    v23 = v14;
    v24 = v6;
    v17 = sub_1A34CBC80();
    MEMORY[0x1EEE9AC00](v17);
    *(&v23 - 2) = v18;
    sub_1A31FB4B0(&qword_1EB0C5BA0, type metadata accessor for MonogramRecipe_Path);
    v19 = v28;
    sub_1A34CA100();

    v20 = sub_1A34CA0C0();
    v22 = v21;
    sub_1A31F96C0(v19, type metadata accessor for MonogramRecipe_Path);
    v29 = v20;
    v30 = v22;
    v32 = 1;
    sub_1A32ABF84();
    v14 = v23;
    sub_1A34CDDC0();
    sub_1A31EC234(v29, v30);
    v6 = v24;
    LOBYTE(v29) = v16;
    v30 = v11;
    v31 = v12;
    v32 = 4;
    sub_1A32ABFD8();
    sub_1A34CDDC0();
    LOBYTE(v29) = 3;
    sub_1A34CDD80();
  }

  return (*(v6 + 8))(v8, v14);
}

uint64_t sub_1A32AB340@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5C10);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v51 - v6;
  v57 = type metadata accessor for MonogramRecipe_Path(0);
  v61 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v60 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MonogramRecipe_Font(0);
  v62 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v59 = (&v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5C18);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v58 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v51 - v14;
  v16 = sub_1A34C9FD0();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v17 = type metadata accessor for MonogramRecipe_Recipe(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1ED8549E0 != -1)
  {
    swift_once();
  }

  v20 = a1[1];
  v66 = *a1;
  v67 = v20;
  v65 = 0;
  v63 = 0u;
  v64 = 0u;
  sub_1A31EC1E0(v66, v20);
  sub_1A34C9FC0();
  sub_1A31FB4B0(&qword_1EB0C5C20, type metadata accessor for MonogramRecipe_Recipe);
  sub_1A34CA0D0();
  if (v2)
  {
    return sub_1A31F96C0(a1, type metadata accessor for AvatarViewRecipe_Provider.Monogram);
  }

  v55 = v7;
  v56 = a1;
  v53 = a2;
  v22 = *(v17 + 28);
  sub_1A328D790(v19 + v22, v15, &qword_1EB0C5C18);
  v23 = *(v62 + 48);
  v62 += 48;
  v54 = v23;
  v24 = v23(v15, 1, v9);
  sub_1A3288FDC(v15, &qword_1EB0C5C18);
  if (v24 == 1)
  {
    sub_1A32ACA8C();
    swift_allocError();
    v26 = 1;
LABEL_14:
    *v25 = v26;
    swift_willThrow();
    sub_1A31F96C0(v56, type metadata accessor for AvatarViewRecipe_Provider.Monogram);
    return sub_1A31F96C0(v19, type metadata accessor for MonogramRecipe_Recipe);
  }

  v27 = v19[1];
  v28 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v28 = *v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v28)
  {
    sub_1A32ACA8C();
    swift_allocError();
    v26 = 2;
    goto LABEL_14;
  }

  v51 = *v19;
  v29 = v58;
  sub_1A328D790(v19 + v22, v58, &qword_1EB0C5C18);
  v30 = v54;
  v31 = v54(v29, 1, v9);
  v52 = v27;
  if (v31 == 1)
  {
    v32 = v59;
    *v59 = 0;
    *(v32 + 8) = 1;
    v32[2] = 0;
    v32[3] = 0;

    sub_1A34C9FA0();
    v33 = v30(v29, 1, v9);
    v34 = v55;
    v36 = v60;
    v35 = v61;
    if (v33 != 1)
    {
      sub_1A3288FDC(v29, &qword_1EB0C5C18);
    }
  }

  else
  {
    v32 = v59;
    sub_1A32ACAE0(v29, v59, type metadata accessor for MonogramRecipe_Font);

    v34 = v55;
    v36 = v60;
    v35 = v61;
  }

  sub_1A33E5260(v32, &v63);
  v37 = v56;
  v38 = v63;
  v39 = *(&v63 + 1);
  v40 = v64;
  v41 = v19[2];
  sub_1A328D790(v19 + *(v17 + 32), v34, &qword_1EB0C5C10);
  v44 = *(v35 + 48);
  v43 = v35 + 48;
  v42 = v44;
  v45 = v57;
  if (v44(v34, 1, v57) == 1)
  {
    *v36 = MEMORY[0x1E69E7CC0];
    sub_1A34C9FA0();
    v61 = v43;
    v46 = *(v45 + 24);
    v47 = type metadata accessor for MonogramRecipe_Point(0);
    (*(*(v47 - 8) + 56))(&v36[v46], 1, 1, v47);
    if (v42(v34, 1, v45) != 1)
    {
      sub_1A3288FDC(v34, &qword_1EB0C5C10);
    }
  }

  else
  {
    sub_1A32ACAE0(v34, v36, type metadata accessor for MonogramRecipe_Path);
  }

  sub_1A3402280();
  sub_1A31F96C0(v36, type metadata accessor for MonogramRecipe_Path);
  sub_1A34CBD20();
  sub_1A31F96C0(v37, type metadata accessor for AvatarViewRecipe_Provider.Monogram);
  result = sub_1A31F96C0(v19, type metadata accessor for MonogramRecipe_Recipe);
  v48 = v53;
  v49 = v52;
  *v53 = v51;
  v48[1] = v49;
  *(v48 + 16) = v38;
  v48[3] = v39;
  v48[4] = v40;
  v48[5] = v41;
  v50 = v64;
  *(v48 + 3) = v63;
  *(v48 + 4) = v50;
  *(v48 + 80) = v65;
  v48[11] = 0;
  v48[12] = 0;
  return result;
}

uint64_t sub_1A32ABAE8(char *a1, uint64_t *a2)
{
  v4 = type metadata accessor for MonogramRecipe_Path(0);
  v28 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MonogramRecipe_Font(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v12 = a2[1];

  *a1 = v11;
  *(a1 + 1) = v12;
  v23 = *(a2 + 16);
  v24 = *(a2 + 3);
  sub_1A31FB4B0(&qword_1EB0C5C60, type metadata accessor for MonogramRecipe_Font);
  v13 = v21;
  sub_1A34CA100();
  v21 = v13;
  v14 = type metadata accessor for MonogramRecipe_Recipe(0);
  v15 = *(v14 + 28);
  sub_1A3288FDC(&a1[v15], &qword_1EB0C5C18);
  sub_1A32ACAE0(v10, &a1[v15], type metadata accessor for MonogramRecipe_Font);
  (*(v8 + 56))(&a1[v15], 0, 1, v7);
  *(a1 + 2) = a2[5];
  v16 = *(a2 + 4);
  v25 = *(a2 + 3);
  v26 = v16;
  v27 = *(a2 + 80);
  v17 = sub_1A34CBC80();
  v22 = v17;
  sub_1A31FB4B0(&qword_1EB0C5BA0, type metadata accessor for MonogramRecipe_Path);
  sub_1A34CA100();

  v18 = *(v14 + 32);
  sub_1A3288FDC(&a1[v18], &qword_1EB0C5C10);
  sub_1A32ACAE0(v6, &a1[v18], type metadata accessor for MonogramRecipe_Path);
  return (*(v28 + 56))(&a1[v18], 0, 1, v4);
}

unint64_t sub_1A32ABE18()
{
  result = qword_1EB0C5B98;
  if (!qword_1EB0C5B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C5B98);
  }

  return result;
}

unint64_t sub_1A32ABE6C()
{
  result = qword_1EB0C2A48;
  if (!qword_1EB0C2A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2A48);
  }

  return result;
}

unint64_t sub_1A32ABF14()
{
  result = qword_1EB0C5BA8;
  if (!qword_1EB0C5BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C5BA8);
  }

  return result;
}

unint64_t sub_1A32ABF84()
{
  result = qword_1EB0C2A50;
  if (!qword_1EB0C2A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2A50);
  }

  return result;
}

unint64_t sub_1A32ABFD8()
{
  result = qword_1EB0C5BB8;
  if (!qword_1EB0C5BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C5BB8);
  }

  return result;
}

BOOL _s14ContactsUICore12MonogramViewV6RecipeV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a1 + 88);
  v6 = *(a1 + 96);
  v8 = *(a2 + 16);
  v10 = *(a2 + 24);
  v9 = *(a2 + 32);
  v11 = *(a2 + 40);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    result = 0;
    if (v2 != v8 || v4 != v10 || v3 != v9)
    {
      return result;
    }

    v14 = *(a2 + 88);
    v15 = *(a2 + 96);
  }

  else
  {
    v14 = *(a2 + 88);
    v15 = *(a2 + 96);
    v13 = sub_1A34CDE30();
    result = 0;
    if ((v13 & 1) == 0 || v2 != v8 || v4 != v10 || v3 != v9)
    {
      return result;
    }
  }

  if (v5 == v11)
  {
    if (sub_1A34CBCA0())
    {
      return v6 == v15 && v7 == v14;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1A32AC1B0()
{
  result = qword_1ED853FC8;
  if (!qword_1ED853FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5BD8);
    sub_1A31FB45C();
    sub_1A31FB4B0(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED853FC8);
  }

  return result;
}

unint64_t sub_1A32AC26C()
{
  result = qword_1ED853FC0;
  if (!qword_1ED853FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5BE0);
    sub_1A31FB4B0(&qword_1ED854570, type metadata accessor for MonogramFakeSolarium.Initials);
    sub_1A31FB4B0(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED853FC0);
  }

  return result;
}

unint64_t sub_1A32AC358()
{
  result = qword_1ED853FA0;
  if (!qword_1ED853FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5BD0);
    sub_1A32AC1B0();
    sub_1A32AC26C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED853FA0);
  }

  return result;
}

unint64_t sub_1A32AC3E4()
{
  result = qword_1ED853FD0;
  if (!qword_1ED853FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5BE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED853FD0);
  }

  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1A32AC4C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1A32AC508(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A32AC560()
{
  result = qword_1ED853F98;
  if (!qword_1ED853F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5BF0);
    sub_1A32AC358();
    sub_1A32AC3E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED853F98);
  }

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

uint64_t sub_1A32AC600(uint64_t a1, int a2)
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

uint64_t sub_1A32AC648(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for MonogramFont(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && a1[24])
  {
    return (*a1 + 251);
  }

  v3 = *a1;
  v4 = v3 >= 6;
  v5 = v3 - 6;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MonogramFont(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MonogramView.Recipe.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MonogramView.Recipe.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1A32AC88C()
{
  result = qword_1EB0C5BF8;
  if (!qword_1EB0C5BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C5BF8);
  }

  return result;
}

unint64_t sub_1A32AC8E4()
{
  result = qword_1ED854488;
  if (!qword_1ED854488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED854488);
  }

  return result;
}

unint64_t sub_1A32AC93C()
{
  result = qword_1ED854480;
  if (!qword_1ED854480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED854480);
  }

  return result;
}

unint64_t sub_1A32AC994()
{
  result = qword_1EB0C5C00;
  if (!qword_1EB0C5C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C5C00);
  }

  return result;
}

unint64_t sub_1A32AC9EC()
{
  result = qword_1EB0C5C08;
  if (!qword_1EB0C5C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C5C08);
  }

  return result;
}

uint64_t sub_1A32ACA40()
{
  v0 = sub_1A34CDC80();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1A32ACA8C()
{
  result = qword_1EB0C5C28;
  if (!qword_1EB0C5C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C5C28);
  }

  return result;
}

uint64_t sub_1A32ACAE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A32ACC78()
{
  result = qword_1EB0C5C68;
  if (!qword_1EB0C5C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C5C68);
  }

  return result;
}

void sub_1A32ACD34()
{
  sub_1A32AD04C(319, &qword_1EB0C1178, type metadata accessor for VisualIdentityEditorViewModel, MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1A32AD04C(319, qword_1ED854EB0, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1A32ACFE8(319, &qword_1ED8534C0, &qword_1EB0C5C80, &unk_1A34DCAE0, MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1A32AD0B0(319, &qword_1EB0C1128, MEMORY[0x1E69E63B0], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1A32AD04C(319, &qword_1ED8534C8, MEMORY[0x1E697FF50], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_1A32AD0B0(319, &qword_1ED853478, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
            if (v5 <= 0x3F)
            {
              sub_1A32ACFE8(319, &unk_1EB0C0570, &qword_1EB0C5C88, &unk_1A34F5750, MEMORY[0x1E6981790]);
              if (v6 <= 0x3F)
              {
                sub_1A32AD04C(319, &qword_1EB0C2B48, MEMORY[0x1E697E4D8], MEMORY[0x1E6981790]);
                if (v7 <= 0x3F)
                {
                  sub_1A32AD0B0(319, &qword_1ED853468, MEMORY[0x1E6981EA0], MEMORY[0x1E69E6720]);
                  if (v8 <= 0x3F)
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

void sub_1A32ACFE8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A32AD04C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A32AD0B0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A32AD148()
{
  sub_1A32AD04C(319, &qword_1EB0C1178, type metadata accessor for VisualIdentityEditorViewModel, MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for VisualIdentityPair(319);
    if (v1 <= 0x3F)
    {
      sub_1A32AD0B0(319, &qword_1ED853478, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1A32AD254@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A34CB0B0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5478);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for VisualIdentityEditorGallery(0);
  sub_1A328D790(v1 + *(v10 + 32), v9, &qword_1EB0C5478);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A34CB5F0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1A34CD650();
    v13 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1A32AD45C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v21 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5D30);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20 - v4;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5D38);
  v6 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v8 = &v20 - v7;
  type metadata accessor for VisualIdentityEditorViewModel();
  sub_1A32B52CC(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  *v5 = sub_1A34CA600();
  v5[8] = v9 & 1;
  v10 = v3[9];
  *&v5[v10] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5478);
  swift_storeEnumTagMultiPayload();
  v11 = &v5[v3[10]];
  *v11 = swift_getKeyPath();
  v11[8] = 0;
  *&v5[v3[11]] = 0x4034000000000000;
  sub_1A32AD7D0(v2, &v5[v3[12]]);
  v22 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5D40);
  sub_1A3284D0C(&qword_1EB0C5D48, &qword_1EB0C5D30);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5D50);
  v13 = sub_1A32B5014();
  v23 = v12;
  v24 = v13;
  swift_getOpaqueTypeConformance2();
  sub_1A34CC380();
  sub_1A3288FDC(v5, &qword_1EB0C5D30);
  v14 = sub_1A32B2B30();
  swift_getKeyPath();
  v23 = v14;
  sub_1A34C99A0();

  LODWORD(v3) = *(v14 + 42);

  if (v3)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  KeyPath = swift_getKeyPath();
  v17 = v21;
  (*(v6 + 32))(v21, v8, v20);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5D70);
  v19 = v17 + *(result + 36);
  *v19 = KeyPath;
  *(v19 + 8) = v15;
  return result;
}

uint64_t sub_1A32AD7D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v101 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5E38);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v99 = &v78 - v4;
  v91 = sub_1A34CB7C0();
  v90 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v85 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_1A34CB530();
  v84 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v83 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for VisualIdentityEditorGallery(0);
  v98 = *(v102 - 1);
  MEMORY[0x1EEE9AC00](v102);
  v100 = v7;
  v103 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A34CB5F0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v78 - v13;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5E40);
  MEMORY[0x1EEE9AC00](v80);
  v79 = (&v78 - v15);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5E48);
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v81 = &v78 - v16;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5E50);
  v89 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v104 = (&v78 - v17);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5E58);
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v105 = &v78 - v18;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5E60);
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v95 = &v78 - v19;
  v20 = a1;
  sub_1A32AD254(v14);
  v21 = *MEMORY[0x1E697FF40];
  v22 = *(v9 + 104);
  v22(v11, v21, v8);
  v23 = sub_1A34CB5E0();
  v24 = *(v9 + 8);
  v24(v11, v8);
  v24(v14, v8);
  if (v23)
  {
    v25 = 200.0;
  }

  else
  {
    v25 = 209.0;
  }

  sub_1A32AD254(v14);
  v22(v11, v21, v8);
  v26 = sub_1A34CB5E0();
  v24(v11, v8);
  v27 = v102;
  v24(v14, v8);
  if (v26)
  {
    v28 = 321.0;
  }

  else
  {
    v28 = 354.0;
  }

  v29 = v20;
  v30 = v103;
  sub_1A32B4F6C(v20, v103, type metadata accessor for VisualIdentityEditorGallery);
  KeyPath = swift_getKeyPath();
  v32 = v79;
  *v79 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5E68);
  swift_storeEnumTagMultiPayload();
  v33 = v80;
  v34 = (v32 + *(v80 + 68));
  v111 = 0;
  sub_1A34CC730();
  v35 = v108;
  *v34 = v107;
  v34[1] = v35;
  *(v32 + v33[18]) = 0x403E000000000000;
  *(v32 + v33[13]) = v25;
  *(v32 + v33[14]) = v28;
  v36 = v32 + v33[16];
  v37 = *(v27 + 13);
  v38 = v30 + *(v27 + 12);
  v39 = *v38;
  v40 = *(v38 + 8);
  v41 = *(v30 + v37);
  type metadata accessor for VisualIdentityEditorViewModel();
  v42 = sub_1A32B52CC(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  *v36 = sub_1A34CA600();
  *(v36 + 8) = v43 & 1;
  *(v36 + 16) = v39;
  *(v36 + 24) = v40;
  *(v36 + 32) = v41;
  v44 = v32 + v33[15];
  *v44 = sub_1A34CB280();
  *(v44 + 8) = 0;
  *(v44 + 16) = 1;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5E70);
  sub_1A32AE60C(v29, v44 + *(v45 + 44));
  v46 = sub_1A34CCCB0();
  v106 = v29;
  v47 = sub_1A32B2B30();
  swift_getKeyPath();
  v107 = v47;
  v82 = v42;
  sub_1A34C99A0();

  LOBYTE(v36) = *(v47 + 42);

  v48 = v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5E78) + 36);
  *v48 = v46;
  *(v48 + 8) = v36;
  sub_1A32B5CB4(v30, type metadata accessor for VisualIdentityEditorGallery);
  v49 = sub_1A34CBAA0();
  v50 = v83;
  sub_1A34CB500();
  v51 = sub_1A3284D0C(&qword_1EB0C5E80, &qword_1EB0C5E40);
  v52 = v81;
  v53 = v49;
  v54 = v85;
  MEMORY[0x1A58ED7D0](v53, 0x4039000000000000, 0, v50, v33, v51);
  (*(v84 + 8))(v50, v86);
  sub_1A3288FDC(v32, &qword_1EB0C5E40);
  sub_1A34CB7B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5E88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A34DCA90;
  LOBYTE(v29) = sub_1A34CBA70();
  *(inited + 32) = v29;
  v56 = sub_1A34CBA50();
  *(inited + 33) = v56;
  sub_1A34CBA60();
  sub_1A34CBA60();
  if (sub_1A34CBA60() != v29)
  {
    sub_1A34CBA60();
  }

  sub_1A34CBA60();
  if (sub_1A34CBA60() != v56)
  {
    sub_1A34CBA60();
  }

  v57 = v99;
  v58 = v88;
  v107 = v33;
  v108 = v51;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1A34CC090();
  (*(v90 + 8))(v54, v91);
  (*(v87 + 8))(v52, v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA600);
  sub_1A34CC760();
  v60 = sub_1A32B2B30();
  swift_getKeyPath();
  v107 = v60;
  sub_1A34C99A0();

  v61 = *(v60 + 42);

  if (v61)
  {
    sub_1A34CCDE0();
  }

  else
  {
    sub_1A34CCE00();
  }

  v107 = v58;
  v108 = OpaqueTypeConformance2;
  v62 = swift_getOpaqueTypeConformance2();
  v63 = v92;
  v64 = v104;
  sub_1A34CBFE0();
  sub_1A3288FDC(v57, &qword_1EB0C5E38);
  (*(v89 + 8))(v64, v63);
  v65 = v106;
  v66 = sub_1A32B2B30();
  swift_getKeyPath();
  v107 = v66;
  sub_1A34C99A0();

  LOBYTE(v64) = *(v66 + 42);

  LOBYTE(v111) = v64;
  v104 = type metadata accessor for VisualIdentityEditorGallery;
  v67 = v103;
  sub_1A32B4F6C(v65, v103, type metadata accessor for VisualIdentityEditorGallery);
  v68 = (*(v98 + 80) + 16) & ~*(v98 + 80);
  v69 = swift_allocObject();
  v102 = type metadata accessor for VisualIdentityEditorGallery;
  sub_1A32B4F04(v67, v69 + v68, type metadata accessor for VisualIdentityEditorGallery);
  v107 = v63;
  v108 = v62;
  v70 = swift_getOpaqueTypeConformance2();
  v71 = sub_1A32B5F20();
  v72 = v95;
  v73 = v94;
  v74 = v105;
  sub_1A34CC3B0();

  (*(v93 + 8))(v74, v73);
  sub_1A32B4F6C(v106, v67, v104);
  v75 = swift_allocObject();
  sub_1A32B4F04(v67, v75 + v68, v102);
  v107 = v73;
  v108 = &type metadata for VisualIdentityEditorViewModel.EditorMode;
  v109 = v70;
  v110 = v71;
  swift_getOpaqueTypeConformance2();
  v76 = v97;
  sub_1A34CC1D0();

  return (*(v96 + 8))(v72, v76);
}

uint64_t sub_1A32AE60C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5EA0);
  MEMORY[0x1EEE9AC00](v63);
  v4 = &v51 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5EA8);
  v58 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v51 - v9;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5EB0);
  MEMORY[0x1EEE9AC00](v59);
  v60 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v61 = &v51 - v12;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5EB8);
  MEMORY[0x1EEE9AC00](v62);
  v14 = &v51 - v13;
  v15 = a1;
  v16 = sub_1A32B2B30();
  swift_getKeyPath();
  *&v68 = v16;
  sub_1A32B52CC(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  LODWORD(a1) = *(v16 + 42);

  if (a1)
  {
    v56 = v14;
    sub_1A34CCC80();
    sub_1A34CA760();
    v54 = v81;
    v55 = v79;
    v52 = v84;
    v53 = v83;
    v78 = 1;
    v77 = v80;
    v76 = v82;
    type metadata accessor for VisualIdentityEditorViewModel();
    v17 = sub_1A34CA600();
    v75 = v18 & 1;
    sub_1A32B2B30();
    v19 = v57;
    sub_1A34CCA40();
    sub_1A34CCA30();
    swift_getKeyPath();
    sub_1A34CCA50();

    v20 = *(v58 + 8);
    v20(v7, v5);
    v72 = v65;
    v73 = v66;
    v74[0] = v67[0];
    *(v74 + 9) = *(v67 + 9);
    sub_1A34CC980();
    v20(v19, v5);
    if (*(&v68 + 1))
    {
      v21 = BYTE8(v71[0]);
      v22 = *&v71[0];
      v23 = v69;
      v24 = v70;
      v25 = v68;
    }

    else
    {
      v25 = 0;
      v22 = 0;
      v21 = 0;
      v23 = 0uLL;
      v24 = 0uLL;
    }

    *&v65 = v17;
    BYTE8(v65) = v75;
    *&v66 = v25;
    *(&v66 + 1) = *(&v68 + 1);
    v67[0] = v23;
    v67[1] = v24;
    *&v67[2] = v22;
    BYTE8(v67[2]) = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5EC0);
    sub_1A3284D0C(&qword_1EB0C5EC8, &qword_1EB0C5EC0);
    v41 = v61;
    sub_1A34CC1F0();
    v70 = v67[0];
    v71[0] = v67[1];
    *(v71 + 9) = *(&v67[1] + 9);
    v68 = v65;
    v69 = v66;
    sub_1A3288FDC(&v68, &qword_1EB0C5EC0);
    sub_1A32B6014();
    v42 = sub_1A34CA780();
    *(v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5ED8) + 36)) = v42;
    v43 = sub_1A34CCCB0();
    v44 = sub_1A32B2B30();
    swift_getKeyPath();
    *&v65 = v44;
    sub_1A34C99A0();

    LOBYTE(v42) = *(v44 + 40);

    v45 = v41 + *(v59 + 36);
    *v45 = v43;
    *(v45 + 8) = v42;
    LOBYTE(v42) = v78;
    v46 = v77;
    LOBYTE(v44) = v76;
    v47 = v60;
    sub_1A328D790(v41, v60, &qword_1EB0C5EB0);
    *v4 = 0;
    v4[8] = v42;
    v48 = v54;
    *(v4 + 2) = v55;
    v4[24] = v46;
    *(v4 + 4) = v48;
    v4[40] = v44;
    v49 = v52;
    *(v4 + 6) = v53;
    *(v4 + 7) = v49;
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5EE0);
    sub_1A328D790(v47, &v4[*(v50 + 48)], &qword_1EB0C5EB0);
    sub_1A3288FDC(v47, &qword_1EB0C5EB0);
    sub_1A328D790(v4, v56, &qword_1EB0C5EA0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5EE8);
    sub_1A3284D0C(&qword_1EB0C5EF0, &qword_1EB0C5EE8);
    sub_1A3284D0C(&qword_1EB0C5EF8, &qword_1EB0C5EA0);
    sub_1A34CB3E0();
    sub_1A3288FDC(v4, &qword_1EB0C5EA0);
    return sub_1A3288FDC(v41, &qword_1EB0C5EB0);
  }

  else
  {
    sub_1A34CCC80();
    sub_1A34CA760();
    v60 = v69;
    v61 = v68;
    v59 = *(&v70 + 1);
    v26 = v70;
    LOBYTE(v79) = 1;
    v78 = BYTE8(v68);
    v77 = BYTE8(v69);
    v27 = (v15 + *(type metadata accessor for VisualIdentityEditorGallery(0) + 36));
    v28 = *v27;
    v29 = v27[1];
    LOBYTE(v27) = *(v27 + 16);
    *&v65 = v28;
    *(&v65 + 1) = v29;
    LOBYTE(v66) = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CBC50);
    sub_1A34CC930();
    v30 = v72;
    v31 = v73;
    type metadata accessor for VisualIdentityEditorViewModel();
    v32 = sub_1A34CA600();
    v34 = v33;
    sub_1A32B6014();
    v35 = sub_1A34CA780();
    v36 = v79;
    v37 = v78;
    v38 = v77;
    LOBYTE(v65) = v34 & 1;
    *v14 = 0;
    v14[8] = v36;
    *(v14 + 2) = v61;
    v14[24] = v37;
    v39 = v59;
    *(v14 + 4) = v60;
    v14[40] = v38;
    *(v14 + 6) = v26;
    *(v14 + 7) = v39;
    *(v14 + 8) = v32;
    v14[72] = v34 & 1;
    *(v14 + 5) = v30;
    v14[96] = v31;
    *(v14 + 13) = v35;
    sub_1A34C9010();
    sub_1A34C9010();
    sub_1A34C9010();
    sub_1A34C9010();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5EE8);
    sub_1A3284D0C(&qword_1EB0C5EF0, &qword_1EB0C5EE8);
    sub_1A3284D0C(&qword_1EB0C5EF8, &qword_1EB0C5EA0);
    sub_1A34CB3E0();
  }
}

double sub_1A32AEEF8@<D0>(uint64_t a1@<X8>)
{
  sub_1A33573BC(v6);
  v2 = v7;
  v3 = v8;
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  return result;
}

uint64_t sub_1A32AEF44(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7[0] = *a1;
  v7[1] = v1;
  v7[2] = v2;
  v7[3] = v3;
  v7[4] = v4;
  v8 = v5;
  sub_1A32B6068(v7[0], v1, v2);
  return sub_1A33574C0(v7);
}

uint64_t sub_1A32AEFA0()
{
  sub_1A34CCCB0();
  sub_1A34CA900();
}

uint64_t sub_1A32AF030()
{
  v0 = sub_1A34CAA80();
  MEMORY[0x1EEE9AC00](v0 - 8);
  type metadata accessor for VisualIdentityEditorGallery(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA600);
  sub_1A34CC740();
  sub_1A34CAA70();
  return sub_1A34CC750();
}

uint64_t sub_1A32AF10C@<X0>(void *a1@<X8>)
{
  result = sub_1A34CAA30();
  *a1 = v3;
  return result;
}

void sub_1A32AF138(uint64_t a1, double *a2)
{
  v3 = sub_1A34CAA80();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v14 - v8;
  if (*a2 > 0.0)
  {
    v10 = sub_1A32B2B30();
    swift_getKeyPath();
    v14[1] = v10;
    sub_1A32B52CC(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
    sub_1A34C99A0();

    v11 = *(v10 + 42);

    if (!v11)
    {
      type metadata accessor for VisualIdentityEditorGallery(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA600);
      sub_1A34CC740();
      sub_1A34CAA60();
      sub_1A32B52CC(&qword_1EB0C5E98, MEMORY[0x1E697E4D8]);
      v12 = sub_1A34CD040();
      v13 = *(v4 + 8);
      v13(v6, v3);
      v13(v9, v3);
      if ((v12 & 1) == 0)
      {
        sub_1A34CC740();
        sub_1A34CAA70();
        sub_1A34CC750();
      }
    }
  }
}

uint64_t sub_1A32AF3AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5D78);
  MEMORY[0x1EEE9AC00](v35);
  v33 = &v30 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5D68);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v30 - v6;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5D80);
  v36 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v34 = &v30 - v7;
  v8 = sub_1A34CB460();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5D88);
  v32 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v30 - v9;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5D50);
  MEMORY[0x1EEE9AC00](v41);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - v13;
  v31 = a1;
  v15 = sub_1A32B2B30();
  swift_getKeyPath();
  v43 = v15;
  sub_1A32B52CC(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  if (*(v15 + 43) == 1)
  {
  }

  else
  {
    swift_getKeyPath();
    v43 = v15;
    sub_1A34C99A0();

    v16 = *(v15 + 44);

    if ((v16 & 1) == 0)
    {
      v18 = sub_1A34CB430();
      MEMORY[0x1EEE9AC00](v18);
      v19 = v31;
      *(&v30 - 2) = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5D90);
      sub_1A32B50CC();
      sub_1A34CA680();
      v20 = sub_1A34CB440();
      MEMORY[0x1EEE9AC00](v20);
      *(&v30 - 2) = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5DB8);
      sub_1A32B5404();
      v21 = v34;
      sub_1A34CA680();
      v22 = *(v35 + 48);
      v23 = v32;
      v24 = v33;
      (*(v32 + 16))(v33, v40, v38);
      v25 = v36;
      (*(v36 + 16))(&v24[v22], v21, v39);
      v26 = v37;
      sub_1A34CB2C0();
      (*(v5 + 16))(v11, v26, v4);
      (*(v5 + 56))(v11, 0, 1, v4);
      v27 = sub_1A3284D0C(&qword_1EB0C5D60, &qword_1EB0C5D68);
      MEMORY[0x1A58ECCE0](v11, v4, v27);
      sub_1A3288FDC(v11, &qword_1EB0C5D50);
      (*(v5 + 8))(v26, v4);
      (*(v25 + 8))(v21, v39);
      (*(v23 + 8))(v40, v38);
      goto LABEL_6;
    }
  }

  (*(v5 + 56))(v11, 1, 1, v4);
  v17 = sub_1A3284D0C(&qword_1EB0C5D60, &qword_1EB0C5D68);
  MEMORY[0x1A58ECCE0](v11, v4, v17);
  sub_1A3288FDC(v11, &qword_1EB0C5D50);
LABEL_6:
  v28 = sub_1A32B5014();
  MEMORY[0x1A58ECCD0](v14, v41, v28);
  return sub_1A3288FDC(v14, &qword_1EB0C5D50);
}

uint64_t sub_1A32AFA64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9E80);
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v46 = &v46 - v4;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5DB0);
  MEMORY[0x1EEE9AC00](v53);
  v49 = &v46 - v5;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5E28);
  MEMORY[0x1EEE9AC00](v60);
  v61 = &v46 - v6;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5E30);
  MEMORY[0x1EEE9AC00](v50);
  v51 = &v46 - v7;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5DA8);
  MEMORY[0x1EEE9AC00](v59);
  v52 = &v46 - v8;
  v9 = type metadata accessor for VisualIdentityEditorGallery(0);
  v57 = *(v9 - 8);
  v10 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8D50);
  v54 = *(v11 - 8);
  v55 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v46 - v12;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5468);
  MEMORY[0x1EEE9AC00](v58);
  v56 = &v46 - v14;
  v15 = sub_1A32B2B30();
  swift_getKeyPath();
  v63 = v15;
  sub_1A32B52CC(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  v16 = *(v15 + 42);

  v17 = sub_1A32B2B30();
  swift_getKeyPath();
  v63 = v17;
  sub_1A34C99A0();

  v18 = *(v17 + 40);

  if (v16)
  {
    if (v16 == 1 || (v18 & 1) != 0)
    {
      v19 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0x4C45434E4143, 0xE600000000000000);
      v21 = v20;
      sub_1A32B4F6C(a1, &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VisualIdentityEditorGallery);
      v22 = (*(v57 + 80) + 16) & ~*(v57 + 80);
      v23 = swift_allocObject();
      v24 = sub_1A32B4F04(&v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for VisualIdentityEditorGallery);
      v63 = v19;
      v64 = v21;
      MEMORY[0x1EEE9AC00](v24);
      *(&v46 - 4) = &v63;
      *(&v46 - 3) = 0x6B72616D78;
      *(&v46 - 2) = 0xE500000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5660);
      sub_1A3284D0C(&unk_1EB0C0590, &unk_1EB0C5660);
      sub_1A34CC790();

      sub_1A3284D0C(&unk_1EB0C0500, &unk_1EB0C8D50);
      v25 = v55;
      v26 = v56;
      sub_1A34CC1F0();
      (*(v54 + 8))(v13, v25);
      sub_1A328D790(v26, v61, &qword_1EB0C5468);
      swift_storeEnumTagMultiPayload();
      sub_1A32B5158();
      sub_1A32B51E4();
      sub_1A34CB3E0();
      v27 = v26;
      v28 = &qword_1EB0C5468;
    }

    else
    {
      v63 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0x4C45434E4143, 0xE600000000000000);
      v64 = v38;
      sub_1A32B4F6C(a1, &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VisualIdentityEditorGallery);
      v39 = (*(v57 + 80) + 16) & ~*(v57 + 80);
      v40 = swift_allocObject();
      sub_1A32B4F04(&v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v40 + v39, type metadata accessor for VisualIdentityEditorGallery);
      sub_1A328A95C();
      v41 = v46;
      sub_1A34CC7C0();
      sub_1A3284D0C(&unk_1EB0C0510, &unk_1EB0C9E80);
      v42 = v48;
      v43 = v49;
      sub_1A34CC1F0();
      (*(v47 + 8))(v41, v42);
      sub_1A328D790(v43, v51, &qword_1EB0C5DB0);
      swift_storeEnumTagMultiPayload();
      sub_1A32B51E4();
      sub_1A32B5314();
      v44 = v52;
      sub_1A34CB3E0();
      sub_1A328D790(v44, v61, &qword_1EB0C5DA8);
      swift_storeEnumTagMultiPayload();
      sub_1A32B5158();
      sub_1A34CB3E0();
      sub_1A3288FDC(v44, &qword_1EB0C5DA8);
      v27 = v43;
      v28 = &qword_1EB0C5DB0;
    }
  }

  else
  {
    v29 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 1262698818, 0xE400000000000000);
    v31 = v30;
    sub_1A32B4F6C(a1, &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VisualIdentityEditorGallery);
    v32 = (*(v57 + 80) + 16) & ~*(v57 + 80);
    v33 = swift_allocObject();
    v34 = sub_1A32B4F04(&v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v32, type metadata accessor for VisualIdentityEditorGallery);
    v63 = v29;
    v64 = v31;
    MEMORY[0x1EEE9AC00](v34);
    *(&v46 - 4) = &v63;
    *(&v46 - 3) = 0xD000000000000010;
    *(&v46 - 2) = 0x80000001A350C0D0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5660);
    sub_1A3284D0C(&unk_1EB0C0590, &unk_1EB0C5660);
    sub_1A34CC790();

    sub_1A3284D0C(&unk_1EB0C0500, &unk_1EB0C8D50);
    v35 = v55;
    v36 = v56;
    sub_1A34CC1F0();
    (*(v54 + 8))(v13, v35);
    sub_1A328D790(v36, v51, &qword_1EB0C5468);
    swift_storeEnumTagMultiPayload();
    sub_1A32B51E4();
    sub_1A32B5314();
    v37 = v52;
    sub_1A34CB3E0();
    sub_1A328D790(v37, v61, &qword_1EB0C5DA8);
    swift_storeEnumTagMultiPayload();
    sub_1A32B5158();
    sub_1A34CB3E0();
    sub_1A3288FDC(v37, &qword_1EB0C5DA8);
    v27 = v36;
    v28 = &qword_1EB0C5468;
  }

  return sub_1A3288FDC(v27, v28);
}

uint64_t sub_1A32B05F0(uint64_t a1)
{
  v2 = type metadata accessor for VisualIdentity(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A34CB0B0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  LOBYTE(a1) = *(a1 + 8);
  sub_1A34C9010();
  if ((a1 & 1) == 0)
  {
    sub_1A34CD650();
    v10 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
    v9 = v15;
  }

  if (qword_1EB0C27F8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v2, qword_1EB0ED9C8);
  sub_1A32B4F6C(v11, v4, type metadata accessor for VisualIdentity);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *(&v14 - 2) = v9;
  *(&v14 - 1) = v4;
  v15 = v9;
  sub_1A32B52CC(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C9990();

  return sub_1A32B5CB4(v4, type metadata accessor for VisualIdentity);
}

uint64_t sub_1A32B08C4(uint64_t a1)
{
  v2 = sub_1A34CB0B0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for VisualIdentity(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1A32B2B30();
  swift_getKeyPath();
  v23 = v9;
  sub_1A32B52CC(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  v10 = *(v9 + 41);

  if (v10)
  {
    v11 = a1 + *(type metadata accessor for VisualIdentityEditorGallery(0) + 24);
    v12 = *v11;
    if (*(v11 + 16) == 1)
    {
      v13 = sub_1A34C9010();
    }

    else
    {
      sub_1A34C9010();
      sub_1A34CD650();
      v16 = sub_1A34CBA30();
      sub_1A34CA210();

      sub_1A34CB0A0();
      swift_getAtKeyPath();
      sub_1A32B56DC();
      v13 = (*(v3 + 8))(v5, v2);
      v12 = v23;
    }

    v12(v13);
  }

  else
  {
    v14 = sub_1A32B2B30();
    if (*(v14 + 42))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *&v22[-16] = v14;
      v22[-8] = 0;
      v23 = v14;
      sub_1A34C9990();
    }

    else
    {
      sub_1A3354F0C();
    }

    v18 = *(sub_1A32B2B30() + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel_isMeContact);

    if ((v18 & 1) == 0)
    {
      v19 = sub_1A32B2B30();
      if (qword_1EB0C27F8 != -1)
      {
        swift_once();
      }

      v20 = __swift_project_value_buffer(v6, qword_1EB0ED9C8);
      sub_1A32B4F6C(v20, v8, type metadata accessor for VisualIdentity);
      v21 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v21);
      *&v22[-16] = v19;
      *&v22[-8] = v8;
      v23 = v19;
      sub_1A34C9990();

      return sub_1A32B5CB4(v8, type metadata accessor for VisualIdentity);
    }
  }

  return result;
}

uint64_t sub_1A32B0D1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a2;
  v105 = sub_1A34CB6D0();
  v91 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v89 = (&v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5DE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v88 = &v76 - v5;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C4C10);
  MEMORY[0x1EEE9AC00](v87);
  v86 = &v76 - v6;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C4BF0);
  MEMORY[0x1EEE9AC00](v99);
  v104 = &v76 - v7;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5DD8);
  v92 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v90 = &v76 - v8;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5DE8);
  v94 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v93 = &v76 - v9;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5DF0);
  MEMORY[0x1EEE9AC00](v107);
  v108 = &v76 - v10;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5DF8);
  MEMORY[0x1EEE9AC00](v97);
  v100 = &v76 - v11;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5DD0);
  MEMORY[0x1EEE9AC00](v106);
  v102 = &v76 - v12;
  v84 = type metadata accessor for VisualIdentityEditorGallery(0);
  v95 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v110 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9E80);
  v83 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v76 - v15;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5DB0);
  MEMORY[0x1EEE9AC00](v98);
  v85 = (&v76 - v17);
  v18 = sub_1A32B2B30();
  swift_getKeyPath();
  v112 = v18;
  v19 = sub_1A32B52CC(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  v20 = *(v18 + 42);

  v21 = a1;
  v22 = sub_1A32B2B30();
  swift_getKeyPath();
  v112 = v22;
  v96 = v19;
  sub_1A34C99A0();

  v23 = *(v22 + 40);

  if (v20)
  {
    if (v20 == 1 || (v23 & 1) != 0)
    {
      v85 = type metadata accessor for VisualIdentityEditorGallery;
      v24 = a1;
      v25 = v110;
      sub_1A32B4F6C(v24, v110, type metadata accessor for VisualIdentityEditorGallery);
      v95 = *(v95 + 80);
      v26 = (v95 + 16) & ~v95;
      v27 = swift_allocObject();
      v79 = type metadata accessor for VisualIdentityEditorGallery;
      v28 = sub_1A32B4F04(v25, v27 + v26, type metadata accessor for VisualIdentityEditorGallery);
      MEMORY[0x1EEE9AC00](v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5E00);
      sub_1A32B574C();
      v29 = v86;
      sub_1A34CC790();
      v30 = v21 + *(v84 + 36);
      v83 = *v30;
      v82 = *(v30 + 8);
      v81 = *(v30 + 16);
      v112 = v83;
      v113 = v82;
      LOBYTE(v114) = v81;
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CBC50);
      MEMORY[0x1A58EE120](&v118);
      v31 = v118;
      KeyPath = swift_getKeyPath();
      v33 = swift_allocObject();
      *(v33 + 16) = v31;
      v34 = (v29 + *(v87 + 36));
      *v34 = KeyPath;
      v34[1] = sub_1A32B589C;
      v34[2] = v33;
      sub_1A3284C28();
      sub_1A34CC1F0();
      sub_1A3288FDC(v29, &qword_1EB0C4C10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5C78);
      v35 = v21;
      v77 = v21;
      v36 = v88;
      sub_1A34CC760();
      sub_1A32B4F6C(v35, v25, v85);
      v78 = v26;
      v37 = swift_allocObject();
      sub_1A32B4F04(v25, v37 + v26, type metadata accessor for VisualIdentityEditorGallery);
      v38 = sub_1A34CC780();
      v39 = v89;
      *v89 = v38;
      v40 = v91;
      (*(v91 + 104))(v39, *MEMORY[0x1E697C8C0], v105);
      v76 = type metadata accessor for VisualIdentityPair(0);
      v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C4BF8);
      v86 = sub_1A3284B24();
      v87 = sub_1A32B52CC(&qword_1EB0C4C40, type metadata accessor for VisualIdentityPair);
      v41 = type metadata accessor for VisualIdentitySaveConfirmation(255);
      v42 = type metadata accessor for VisualIdentityEditorViewModel();
      v43 = sub_1A32B52CC(&unk_1EB0C4C48, type metadata accessor for VisualIdentitySaveConfirmation);
      v112 = v41;
      v113 = v42;
      v114 = v43;
      v115 = v96;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v44 = v90;
      v45 = v99;
      v46 = v104;
      sub_1A34CBF00();

      (*(v40 + 8))(v39, v105);
      sub_1A3288FDC(v36, &qword_1EB0C5DE0);
      sub_1A3288FDC(v46, &qword_1EB0C4BF0);
      v112 = v83;
      v113 = v82;
      LOBYTE(v114) = v81;
      MEMORY[0x1A58EE120](&v118, v80);
      v47 = v110;
      sub_1A32B4F6C(v77, v110, v85);
      v48 = v78;
      v49 = swift_allocObject();
      sub_1A32B4F04(v47, v49 + v48, v79);
      v112 = v45;
      v113 = v76;
      v114 = v84;
      v115 = v86;
      v116 = v87;
      v117 = OpaqueTypeConformance2;
      v50 = swift_getOpaqueTypeConformance2();
      v51 = MEMORY[0x1E69E6370];
      v52 = MEMORY[0x1E69E6388];
      v53 = v93;
      v54 = v101;
      sub_1A34CC3B0();

      (*(v92 + 8))(v44, v54);
      v55 = v94;
      v56 = v103;
      (*(v94 + 16))(v100, v53, v103);
      swift_storeEnumTagMultiPayload();
      sub_1A32B5314();
      v112 = v54;
      v113 = v51;
      v114 = v50;
      v115 = v52;
      swift_getOpaqueTypeConformance2();
      v57 = v102;
      sub_1A34CB3E0();
      sub_1A31FEF8C(v57, v108);
      swift_storeEnumTagMultiPayload();
      sub_1A32B5490();
      sub_1A34CB3E0();
      sub_1A3288FDC(v57, &qword_1EB0C5DD0);
      return (*(v55 + 8))(v53, v56);
    }

    else
    {
      v112 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0x45534F4F4843, 0xE600000000000000);
      v113 = v59;
      v60 = v110;
      sub_1A32B4F6C(a1, v110, type metadata accessor for VisualIdentityEditorGallery);
      v61 = (*(v95 + 80) + 16) & ~*(v95 + 80);
      v62 = swift_allocObject();
      sub_1A32B4F04(v60, v62 + v61, type metadata accessor for VisualIdentityEditorGallery);
      sub_1A328A95C();
      sub_1A34CC7C0();
      sub_1A3284D0C(&unk_1EB0C0510, &unk_1EB0C9E80);
      v63 = v85;
      sub_1A34CC1F0();
      (*(v83 + 8))(v16, v14);
      v64 = v63;
      sub_1A328D790(v63, v100, &qword_1EB0C5DB0);
      swift_storeEnumTagMultiPayload();
      sub_1A32B5314();
      v65 = type metadata accessor for VisualIdentityPair(255);
      v66 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C4BF8);
      v67 = sub_1A3284B24();
      v68 = sub_1A32B52CC(&qword_1EB0C4C40, type metadata accessor for VisualIdentityPair);
      v69 = type metadata accessor for VisualIdentitySaveConfirmation(255);
      v70 = type metadata accessor for VisualIdentityEditorViewModel();
      v71 = sub_1A32B52CC(&unk_1EB0C4C48, type metadata accessor for VisualIdentitySaveConfirmation);
      v112 = v69;
      v113 = v70;
      v114 = v71;
      v115 = v96;
      v72 = swift_getOpaqueTypeConformance2();
      v112 = v99;
      v113 = v65;
      v114 = v66;
      v115 = v67;
      v116 = v68;
      v117 = v72;
      v73 = swift_getOpaqueTypeConformance2();
      v112 = v101;
      v113 = MEMORY[0x1E69E6370];
      v114 = v73;
      v115 = MEMORY[0x1E69E6388];
      swift_getOpaqueTypeConformance2();
      v74 = v102;
      sub_1A34CB3E0();
      sub_1A31FEF8C(v74, v108);
      swift_storeEnumTagMultiPayload();
      sub_1A32B5490();
      sub_1A34CB3E0();
      sub_1A3288FDC(v74, &qword_1EB0C5DD0);
      return sub_1A3288FDC(v64, &qword_1EB0C5DB0);
    }
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1A32B5490();
    return sub_1A34CB3E0();
  }
}

uint64_t sub_1A32B1E34(uint64_t a1, char a2)
{
  sub_1A32B2B30();
  sub_1A335B170(a2);
}

uint64_t sub_1A32B1E7C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5C88);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v29 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5D28);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v28 - v8;
  v10 = type metadata accessor for VisualIdentity(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A32B2B30();
  swift_getKeyPath();
  v34 = v14;
  sub_1A32B52CC(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  v15 = *(v14 + 41);

  if (v15 || (v16 = *(sub_1A32B2B30() + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel_isMeContact), , (v16 & 1) != 0))
  {
    v17 = sub_1A32B2B30();
    swift_getKeyPath();
    v34 = v17;
    sub_1A34C99A0();

    v18 = OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel__coupledIdentity;
    swift_beginAccess();
    sub_1A328D790(v17 + v18, v9, &qword_1EB0C5D28);

    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_1A3288FDC(v9, &qword_1EB0C5D28);
      v19 = v1 + *(type metadata accessor for VisualIdentityEditorGallery(0) + 36);
      v20 = *v19;
      v21 = *(v19 + 8);
      LOBYTE(v19) = *(v19 + 16);
      v30 = v20;
      v31 = v21;
      v32 = v19;
      v33 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CBC50);
      return sub_1A34CC910();
    }

    else
    {
      sub_1A32B4F04(v9, v13, type metadata accessor for VisualIdentity);
      v23 = sub_1A32B2B30();
      swift_getKeyPath();
      v30 = v23;
      sub_1A34C99A0();

      v24 = OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel__currentIdentity;
      swift_beginAccess();
      sub_1A32B4F6C(v23 + v24, v6, type metadata accessor for VisualIdentity);

      v25 = type metadata accessor for VisualIdentityPair(0);
      sub_1A32B4F6C(v13, &v6[*(v25 + 20)], type metadata accessor for VisualIdentity);
      (*(*(v25 - 8) + 56))(v6, 0, 1, v25);
      type metadata accessor for VisualIdentityEditorGallery(0);
      sub_1A328D790(v6, v29, &qword_1EB0C5C88);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5C78);
      sub_1A34CC750();
      sub_1A3288FDC(v6, &qword_1EB0C5C88);
      return sub_1A32B5CB4(v13, type metadata accessor for VisualIdentity);
    }
  }

  else
  {
    v26 = sub_1A32B2B30();
    if (*(v26 + 42))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v28 - 2) = v26;
      *(&v28 - 8) = 0;
      v34 = v26;
      sub_1A34C9990();
    }

    else
    {
      sub_1A3354F0C();
    }
  }
}

uint64_t sub_1A32B23FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5660);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5E20);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5E18);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19[-v11];
  v13 = a1 + *(type metadata accessor for VisualIdentityEditorGallery(0) + 36);
  v14 = *v13;
  v15 = *(v13 + 8);
  LOBYTE(v13) = *(v13 + 16);
  v21 = v14;
  v22 = v15;
  v23 = v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CBC50);
  MEMORY[0x1A58EE120](&v20, v16);
  if (v20 == 1)
  {
    sub_1A34CA6C0();
    (*(v10 + 16))(v8, v12, v9);
    swift_storeEnumTagMultiPayload();
    sub_1A3284D0C(&qword_1EB0C5E10, &qword_1EB0C5E18);
    sub_1A3284D0C(&unk_1EB0C0590, &unk_1EB0C5660);
    sub_1A34CB3E0();
    return (*(v10 + 8))(v12, v9);
  }

  else
  {
    v21 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 1162760004, 0xE400000000000000);
    v22 = v18;
    sub_1A328A95C();
    sub_1A34CC6C0();
    (*(v3 + 16))(v8, v5, v2);
    swift_storeEnumTagMultiPayload();
    sub_1A3284D0C(&qword_1EB0C5E10, &qword_1EB0C5E18);
    sub_1A3284D0C(&unk_1EB0C0590, &unk_1EB0C5660);
    sub_1A34CB3E0();
    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_1A32B27DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisualIdentitySaveConfirmation(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A32B4F6C(a1, &v6[*(v7 + 20)], type metadata accessor for VisualIdentityPair);
  v8 = (a2 + *(type metadata accessor for VisualIdentityEditorGallery(0) + 36));
  v9 = *v8;
  v10 = v8[1];
  LOBYTE(v8) = *(v8 + 16);
  v19 = v9;
  v20 = v10;
  v21 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CBC50);
  sub_1A34CC930();
  v11 = v17[0];
  v12 = v17[1];
  v13 = v18;
  type metadata accessor for VisualIdentityEditorViewModel();
  sub_1A32B52CC(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  *v6 = sub_1A34CA600();
  v6[8] = v14 & 1;
  v15 = &v6[*(v4 + 24)];
  *v15 = v11;
  *(v15 + 1) = v12;
  v15[16] = v13;
  sub_1A32B2B30();
  sub_1A32B52CC(&unk_1EB0C4C48, type metadata accessor for VisualIdentitySaveConfirmation);
  sub_1A34CBED0();

  return sub_1A32B5CB4(v6, type metadata accessor for VisualIdentitySaveConfirmation);
}

void sub_1A32B29D8(uint64_t a1, _BYTE *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5C88);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  if (*a2 == 1)
  {
    v9 = type metadata accessor for VisualIdentityPair(0);
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    type metadata accessor for VisualIdentityEditorGallery(0);
    sub_1A328D790(v8, v5, &qword_1EB0C5C88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5C78);
    sub_1A34CC750();
    sub_1A3288FDC(v8, &qword_1EB0C5C88);
  }
}

uint64_t sub_1A32B2B30()
{
  v1 = sub_1A34CB0B0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);
  sub_1A34C9010();
  if ((v6 & 1) == 0)
  {
    sub_1A34CD650();
    v7 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_1A32B2C90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5CC8);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v27 - v9;
  v11 = sub_1A32B2B30();
  swift_getKeyPath();
  v27[0] = v11;
  sub_1A32B52CC(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  v12 = *(v11 + 40);

  v13 = "VISUAL_IDENTITY_CHOOSE_AVATAR";
  if (v12)
  {
    v13 = " fallback recipe generation";
  }

  v27[0] = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD00000000000001DLL, v13 | 0x8000000000000000);
  v27[1] = v14;
  sub_1A328A95C();
  v15 = sub_1A34CBE30();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  *v10 = sub_1A34CB110();
  *(v10 + 1) = 0x4034000000000000;
  v10[16] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5CD0);
  sub_1A32B2F3C(a1, &v10[*(v22 + 44)]);
  KeyPath = swift_getKeyPath();
  v24 = &v10[*(v5 + 44)];
  *v24 = KeyPath;
  v24[8] = 0;
  sub_1A328D790(v10, v7, &qword_1EB0C5CC8);
  *a2 = v15;
  *(a2 + 8) = v17;
  v19 &= 1u;
  *(a2 + 16) = v19;
  *(a2 + 24) = v21;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5CD8);
  sub_1A328D790(v7, a2 + *(v25 + 48), &qword_1EB0C5CC8);
  sub_1A3285BB4(v15, v17, v19);

  sub_1A3288FDC(v10, &qword_1EB0C5CC8);
  sub_1A3288FDC(v7, &qword_1EB0C5CC8);
  sub_1A328A9B0(v15, v17, v19);
}

uint64_t sub_1A32B2F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = type metadata accessor for VisualIdentitySaveConfirmation(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v35 = v5;
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5CE0);
  v37 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5CE8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v40 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v39 = v33 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v38 = v33 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v33 - v17;
  v36 = type metadata accessor for VisualIdentitySaveConfirmation;
  sub_1A32B4F6C(a1, v6, type metadata accessor for VisualIdentitySaveConfirmation);
  v19 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v20 = swift_allocObject();
  v34 = type metadata accessor for VisualIdentitySaveConfirmation;
  sub_1A32B4F04(v6, v20 + v19, type metadata accessor for VisualIdentitySaveConfirmation);
  v43 = a1;
  v21 = a1;
  v33[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5CF0);
  v33[0] = sub_1A32B4D38();
  sub_1A34CC790();
  sub_1A3284D0C(&qword_1EB0C5D18, &qword_1EB0C5CE0);
  sub_1A34CC1F0();
  v22 = *(v37 + 8);
  v22(v9, v7);
  sub_1A32B4F6C(v21, v6, v36);
  v23 = swift_allocObject();
  sub_1A32B4F04(v6, v23 + v19, v34);
  v42 = v21;
  sub_1A34CC790();
  v24 = v38;
  sub_1A34CC1F0();
  v22(v9, v7);
  v25 = v39;
  sub_1A328D790(v18, v39, &qword_1EB0C5CE8);
  v26 = v24;
  v27 = v40;
  sub_1A328D790(v24, v40, &qword_1EB0C5CE8);
  v28 = v25;
  v29 = v25;
  v30 = v41;
  sub_1A328D790(v28, v41, &qword_1EB0C5CE8);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5D20);
  sub_1A328D790(v27, v30 + *(v31 + 48), &qword_1EB0C5CE8);
  sub_1A3288FDC(v26, &qword_1EB0C5CE8);
  sub_1A3288FDC(v18, &qword_1EB0C5CE8);
  sub_1A3288FDC(v27, &qword_1EB0C5CE8);
  return sub_1A3288FDC(v29, &qword_1EB0C5CE8);
}

uint64_t sub_1A32B3418(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5D28);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16[-v4];
  v6 = type metadata accessor for VisualIdentity(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1A32B2B30();
  sub_1A32B4F6C(a1, v9, type metadata accessor for VisualIdentity);
  swift_getKeyPath();
  v19 = v10;
  v20 = v9;
  v22 = v10;
  sub_1A32B52CC(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C9990();

  sub_1A32B5CB4(v9, type metadata accessor for VisualIdentity);
  v11 = sub_1A32B2B30();
  (*(v7 + 56))(v5, 1, 1, v6);
  swift_getKeyPath();
  v17 = v11;
  v18 = v5;
  v22 = v11;
  sub_1A34C9990();

  sub_1A3288FDC(v5, &qword_1EB0C5D28);
  v12 = v1 + *(type metadata accessor for VisualIdentitySaveConfirmation(0) + 24);
  v13 = *v12;
  v14 = *(v12 + 8);
  LOBYTE(v12) = *(v12 + 16);
  v22 = v13;
  v23 = v14;
  v24 = v12;
  v21 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CBC50);
  return sub_1A34CC910();
}

double sub_1A32B3708@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = type metadata accessor for ScaledRoundedRectangle();
  MEMORY[0x1EEE9AC00](v27);
  v5 = (&v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = a1 + *(type metadata accessor for VisualIdentitySaveConfirmation(0) + 20);
  v7 = sub_1A32B2B30();
  swift_getKeyPath();
  *&v30 = v7;
  sub_1A32B52CC(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  v8 = *(v7 + 40);

  v9 = type metadata accessor for VisualIdentity(0);
  if (v8)
  {
    v10 = (v6 + *(v9 + 28));
    v11 = v10[3];
    v12 = v10[4];
    v13 = __swift_project_boxed_opaque_existential_1(v10, v11);
    *(&v31 + 1) = v11;
    *&v32 = *(v12 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v30);
    (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, v13, v11);
  }

  else
  {
    sub_1A31EE4BC(v6 + *(v9 + 32), &v30);
  }

  sub_1A31EE568(&v30, v28);
  v15 = sub_1A32B2B30();
  swift_getKeyPath();
  *&v30 = v15;
  sub_1A34C99A0();

  v16 = sub_1A32B2B30();
  swift_getKeyPath();
  *&v30 = v16;
  sub_1A34C99A0();

  sub_1A34CCC80();
  sub_1A34CA760();
  v30 = v28[0];
  v31 = v28[1];
  *&v32 = v29;
  v17 = sub_1A32B2B30();
  swift_getKeyPath();
  *&v28[0] = v17;
  sub_1A34C99A0();

  v18 = *(v17 + 40);

  if (v18)
  {
    v19 = 0.5;
  }

  else
  {
    v19 = 0.25;
  }

  v20 = *(v27 + 20);
  v21 = *MEMORY[0x1E697F468];
  v22 = sub_1A34CB200();
  (*(*(v22 - 8) + 104))(v5 + v20, v21, v22);
  *v5 = v19;
  v23 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5CF0) + 36);
  sub_1A32B4F04(v5, v23, type metadata accessor for ScaledRoundedRectangle);
  *(v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5D10) + 36)) = 256;
  v24 = v33;
  *(a2 + 32) = v32;
  *(a2 + 48) = v24;
  *(a2 + 64) = v34;
  *(a2 + 80) = v35;
  result = *&v30;
  v26 = v31;
  *a2 = v30;
  *(a2 + 16) = v26;
  return result;
}

uint64_t sub_1A32B3AF8(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for VisualIdentitySaveConfirmation(0) + 20);
  v2 = type metadata accessor for VisualIdentityPair(0);
  return sub_1A32B3418(v1 + *(v2 + 20));
}

double sub_1A32B3B3C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = type metadata accessor for ScaledRoundedRectangle();
  MEMORY[0x1EEE9AC00](v27);
  v5 = (&v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = a1 + *(type metadata accessor for VisualIdentitySaveConfirmation(0) + 20);
  v7 = v6 + *(type metadata accessor for VisualIdentityPair(0) + 20);
  v8 = sub_1A32B2B30();
  swift_getKeyPath();
  *&v30 = v8;
  sub_1A32B52CC(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  LOBYTE(v6) = *(v8 + 40);

  v9 = type metadata accessor for VisualIdentity(0);
  if (v6)
  {
    v10 = (v7 + *(v9 + 28));
    v11 = v10[3];
    v12 = v10[4];
    v13 = __swift_project_boxed_opaque_existential_1(v10, v11);
    *(&v31 + 1) = v11;
    *&v32 = *(v12 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v30);
    (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, v13, v11);
  }

  else
  {
    sub_1A31EE4BC(v7 + *(v9 + 32), &v30);
  }

  sub_1A31EE568(&v30, v28);
  v15 = sub_1A32B2B30();
  swift_getKeyPath();
  *&v30 = v15;
  sub_1A34C99A0();

  v16 = sub_1A32B2B30();
  swift_getKeyPath();
  *&v30 = v16;
  sub_1A34C99A0();

  sub_1A34CCC80();
  sub_1A34CA760();
  v30 = v28[0];
  v31 = v28[1];
  *&v32 = v29;
  v17 = sub_1A32B2B30();
  swift_getKeyPath();
  *&v28[0] = v17;
  sub_1A34C99A0();

  v18 = *(v17 + 40);

  if (v18)
  {
    v19 = 0.5;
  }

  else
  {
    v19 = 0.25;
  }

  v20 = *(v27 + 20);
  v21 = *MEMORY[0x1E697F468];
  v22 = sub_1A34CB200();
  (*(*(v22 - 8) + 104))(v5 + v20, v21, v22);
  *v5 = v19;
  v23 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5CF0) + 36);
  sub_1A32B4F04(v5, v23, type metadata accessor for ScaledRoundedRectangle);
  *(v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5D10) + 36)) = 256;
  v24 = v33;
  *(a2 + 32) = v32;
  *(a2 + 48) = v24;
  *(a2 + 64) = v34;
  *(a2 + 80) = v35;
  result = *&v30;
  v26 = v31;
  *a2 = v30;
  *(a2 + 16) = v26;
  return result;
}

uint64_t sub_1A32B3F3C()
{
  v1 = sub_1A34CB5D0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5CA0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  *v7 = sub_1A34CB280();
  *(v7 + 1) = 0x402E000000000000;
  v7[16] = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5CA8);
  sub_1A32B2C90(v0, &v7[*(v8 + 44)]);
  v9 = sub_1A34CBA90();
  v10 = &v7[*(v5 + 36)];
  *v10 = v9;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  v10[40] = 1;
  sub_1A34CB5B0();
  sub_1A32B40FC();
  sub_1A34CC270();
  (*(v2 + 8))(v4, v1);
  return sub_1A3288FDC(v7, &qword_1EB0C5CA0);
}

unint64_t sub_1A32B40FC()
{
  result = qword_1EB0C5CB0;
  if (!qword_1EB0C5CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5CA0);
    sub_1A3284D0C(&qword_1EB0C5CB8, &qword_1EB0C5CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C5CB0);
  }

  return result;
}

uint64_t sub_1A32B41B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA450);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v7 - v2;
  sub_1A34CAC80();
  v4 = sub_1A34CADD0();
  v5 = sub_1A32B52CC(&qword_1EB0C0970, MEMORY[0x1E697ED30]);
  sub_1A34CA710();
  sub_1A34CAC80();
  v7[0] = v4;
  v7[1] = v5;
  swift_getOpaqueTypeConformance2();
  sub_1A34CA730();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1A32B4360(uint64_t a1, char a2)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5F18);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5F20);
  v6 = sub_1A3284D0C(&qword_1EB0C5F28, &qword_1EB0C5F18);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0CA450);
  sub_1A34CADD0();
  sub_1A32B52CC(&qword_1EB0C0970, MEMORY[0x1E697ED30]);
  swift_getOpaqueTypeConformance2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1A58ED790](sub_1A32B6268, v3, v4, v5, v6, OpaqueTypeConformance2);
}

uint64_t sub_1A32B4508@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A32B52CC(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_1A32B45E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A32B52CC(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  *a2 = *(v3 + 41);
  return result;
}

uint64_t sub_1A32B46B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A32B52CC(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  *a2 = *(v3 + 42);
  return result;
}

uint64_t sub_1A32B4788@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A32B52CC(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  v4 = OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel__currentIdentity;
  swift_beginAccess();
  return sub_1A32B4F6C(v3 + v4, a2, type metadata accessor for VisualIdentity);
}

uint64_t sub_1A32B4864(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for VisualIdentity(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A32B4F6C(a1, v6, type metadata accessor for VisualIdentity);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_1A32B52CC(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C9990();

  return sub_1A32B5CB4(v6, type metadata accessor for VisualIdentity);
}

uint64_t sub_1A32B49B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A32B52CC(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  v4 = OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel__coupledIdentity;
  swift_beginAccess();
  return sub_1A328D790(v3 + v4, a2, &qword_1EB0C5D28);
}

uint64_t sub_1A32B4A8C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5D28);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9[-v5];
  sub_1A328D790(a1, &v9[-v5], &qword_1EB0C5D28);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_1A32B52CC(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C9990();

  return sub_1A3288FDC(v6, &qword_1EB0C5D28);
}

uint64_t sub_1A32B4BDC@<X0>(_BYTE *a1@<X8>)
{
  sub_1A32B4C78();
  result = sub_1A34CB0E0();
  *a1 = v3;
  return result;
}

unint64_t sub_1A32B4C78()
{
  result = qword_1EB0C0958;
  if (!qword_1EB0C0958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0958);
  }

  return result;
}

unint64_t sub_1A32B4D38()
{
  result = qword_1EB0C5CF8;
  if (!qword_1EB0C5CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5CF0);
    sub_1A32B4DF0();
    sub_1A3284D0C(&qword_1EB0C5D08, &qword_1EB0C5D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C5CF8);
  }

  return result;
}

unint64_t sub_1A32B4DF0()
{
  result = qword_1EB0C0F20;
  if (!qword_1EB0C0F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5D00);
    sub_1A32B4E7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0F20);
  }

  return result;
}

unint64_t sub_1A32B4E7C()
{
  result = qword_1EB0C2480;
  if (!qword_1EB0C2480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2480);
  }

  return result;
}

uint64_t sub_1A32B4F04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A32B4F6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A32B5014()
{
  result = qword_1EB0C5D58;
  if (!qword_1EB0C5D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5D50);
    sub_1A3284D0C(&qword_1EB0C5D60, &qword_1EB0C5D68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C5D58);
  }

  return result;
}

unint64_t sub_1A32B50CC()
{
  result = qword_1EB0C5D98;
  if (!qword_1EB0C5D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5D90);
    sub_1A32B5158();
    sub_1A32B51E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C5D98);
  }

  return result;
}

unint64_t sub_1A32B5158()
{
  result = qword_1EB0C5DA0;
  if (!qword_1EB0C5DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5DA8);
    sub_1A32B51E4();
    sub_1A32B5314();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C5DA0);
  }

  return result;
}

unint64_t sub_1A32B51E4()
{
  result = qword_1EB0C0D20;
  if (!qword_1EB0C0D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5468);
    sub_1A3284D0C(&unk_1EB0C0500, &unk_1EB0C8D50);
    sub_1A32B52CC(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0D20);
  }

  return result;
}

uint64_t sub_1A32B52CC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A32B5314()
{
  result = qword_1EB0C9E70;
  if (!qword_1EB0C9E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5DB0);
    sub_1A3284D0C(&unk_1EB0C0510, &unk_1EB0C9E80);
    sub_1A32B52CC(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9E70);
  }

  return result;
}

unint64_t sub_1A32B5404()
{
  result = qword_1EB0C5DC0;
  if (!qword_1EB0C5DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5DB8);
    sub_1A32B5490();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C5DC0);
  }

  return result;
}

unint64_t sub_1A32B5490()
{
  result = qword_1EB0C5DC8;
  if (!qword_1EB0C5DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5DD0);
    sub_1A32B5314();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5DD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C4BF0);
    type metadata accessor for VisualIdentityPair(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C4BF8);
    sub_1A3284B24();
    sub_1A32B52CC(&qword_1EB0C4C40, type metadata accessor for VisualIdentityPair);
    type metadata accessor for VisualIdentitySaveConfirmation(255);
    type metadata accessor for VisualIdentityEditorViewModel();
    sub_1A32B52CC(&unk_1EB0C4C48, type metadata accessor for VisualIdentitySaveConfirmation);
    sub_1A32B52CC(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C5DC8);
  }

  return result;
}

unint64_t sub_1A32B574C()
{
  result = qword_1EB0C5E08;
  if (!qword_1EB0C5E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5E00);
    sub_1A3284D0C(&qword_1EB0C5E10, &qword_1EB0C5E18);
    sub_1A3284D0C(&unk_1EB0C0590, &unk_1EB0C5660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C5E08);
  }

  return result;
}

uint64_t sub_1A32B5830@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A34CB050();
  *a1 = result & 1;
  return result;
}

uint64_t objectdestroy_52Tm()
{
  v1 = type metadata accessor for VisualIdentityEditorGallery(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);

  v4 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA420);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1A34CA5D0();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  sub_1A32B56DC();
  sub_1A32141EC(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  v6 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5478);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1A34CB5F0();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  v8 = v3 + v1[10];
  v9 = type metadata accessor for VisualIdentityPair(0);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    v10 = sub_1A34C9780();
    v11 = *(*(v10 - 8) + 8);
    v11(v8, v10);
    v12 = type metadata accessor for VisualIdentity(0);
    __swift_destroy_boxed_opaque_existential_0(v8 + *(v12 + 28));
    __swift_destroy_boxed_opaque_existential_0(v8 + *(v12 + 32));
    v13 = v8 + *(v9 + 20);
    v11(v13, v10);
    __swift_destroy_boxed_opaque_existential_0(v13 + *(v12 + 28));
    __swift_destroy_boxed_opaque_existential_0(v13 + *(v12 + 32));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5C78);

  v14 = v3 + v1[11];
  v15 = sub_1A34CAA80();
  (*(*(v15 - 8) + 8))(v14, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA600);

  return swift_deallocObject();
}

uint64_t sub_1A32B5C14(uint64_t a1)
{
  v3 = *(type metadata accessor for VisualIdentityEditorGallery(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1A32B27DC(a1, v4);
}

uint64_t sub_1A32B5CB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A32B5DF8(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_1A32B5E8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for VisualIdentityEditorGallery(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

unint64_t sub_1A32B5F20()
{
  result = qword_1EB0C5E90;
  if (!qword_1EB0C5E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C5E90);
  }

  return result;
}

void sub_1A32B5F74(uint64_t a1, double *a2)
{
  type metadata accessor for VisualIdentityEditorGallery(0);

  sub_1A32AF138(a1, a2);
}

unint64_t sub_1A32B6014()
{
  result = qword_1EB0C5ED0;
  if (!qword_1EB0C5ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C5ED0);
  }

  return result;
}

uint64_t sub_1A32B6068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1A32B60BC()
{
  result = qword_1EB0C5F00;
  if (!qword_1EB0C5F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5D70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5D30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5D40);
    sub_1A3284D0C(&qword_1EB0C5D48, &qword_1EB0C5D30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5D50);
    sub_1A32B5014();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A3284D0C(&qword_1EB0C5F08, &qword_1EB0C5F10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C5F00);
  }

  return result;
}

uint64_t sub_1A32B62BC(uint64_t result, uint64_t *a2)
{
  v3 = *result;
  v4 = *(result + 8);
  if (*result < 2u)
  {
    v9 = *v4;
    v6 = *a2;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v6;
    if ((result & 1) == 0)
    {
      result = sub_1A32985E4(0, *(v6 + 16) + 1, 1, v6);
      v6 = result;
      *a2 = result;
    }

    v8 = *(v6 + 16);
    v7 = *(v6 + 24);
    if (v8 >= v7 >> 1)
    {
      result = sub_1A32985E4((v7 > 1), v8 + 1, 1, v6);
      v6 = result;
      *a2 = result;
    }

    *(v6 + 16) = v8 + 1;
    *(v6 + 16 * v8 + 32) = v9;
  }

  else
  {
    if (v3 == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5708);
      inited = swift_initStackObject();
      inited[1] = xmmword_1A34DCA90;
      inited[2] = *v4;
      inited[3] = v4[1];
    }

    else
    {
      if (v3 != 3)
      {
        return result;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5708);
      inited = swift_initStackObject();
      inited[1] = xmmword_1A34DD060;
      inited[2] = *v4;
      inited[3] = v4[1];
      inited[4] = v4[2];
    }

    return sub_1A33B9248(inited);
  }

  return result;
}