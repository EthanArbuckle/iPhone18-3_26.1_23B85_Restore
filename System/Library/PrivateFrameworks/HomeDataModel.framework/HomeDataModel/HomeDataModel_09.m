uint64_t Event.LocationEvent.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  *&v4[9] = *v0;
  v4[11] = v1;
  v5 = v2;
  sub_1D1E6920C();
  Event.LocationEvent.hash(into:)(v4);
  return sub_1D1E6926C();
}

uint64_t sub_1D1796098()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  *&v4[9] = *v0;
  v4[11] = v1;
  v5 = v2;
  sub_1D1E6920C();
  Event.LocationEvent.hash(into:)(v4);
  return sub_1D1E6926C();
}

uint64_t sub_1D17960F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  *&v4[9] = *v0;
  v4[11] = v1;
  v5 = v2;
  sub_1D1E6920C();
  Event.LocationEvent.hash(into:)(v4);
  return sub_1D1E6926C();
}

unint64_t Event.LocationEvent.users(for:in:)(void *a1, void *a2)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_1D1E6827C())
  {
    sub_1D179732C();
    swift_allocError();
    v6 = 0;
LABEL_6:
    *v5 = v6;
    return swift_willThrow();
  }

  v7 = [a2 users];
  sub_1D1797380();
  v8 = sub_1D1E67C1C();

  MEMORY[0x1EEE9AC00](v9);
  v13[2] = a1;
  result = sub_1D179689C(sub_1D17974F0, v13, v8);
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return result;
    }

    goto LABEL_5;
  }

  v11 = result;
  v12 = sub_1D1E6873C();
  result = v11;
  if (!v12)
  {
LABEL_5:

    sub_1D179732C();
    swift_allocError();
    v6 = 1;
    goto LABEL_6;
  }

  return result;
}

uint64_t Event.LocationEvent.staticUsers(for:in:)(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_1D1E6827C())
  {
    sub_1D179732C();
    swift_allocError();
    *v3 = 0;
    return swift_willThrow();
  }

  else
  {
    v5 = a1[4];
    v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    MEMORY[0x1EEE9AC00](v6);
    type metadata accessor for StaticUser();
    v7 = *(v5 + 8);
    return sub_1D1E67A4C();
  }
}

uint64_t sub_1D17963E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + *(type metadata accessor for StateSnapshot(0) + 64));
  if (*(v5 + 16) && (v6 = sub_1D1742188(a1), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = type metadata accessor for StaticUser();
    v11 = *(v10 - 8);
    sub_1D1797930(v9 + *(v11 + 72) * v8, a3, type metadata accessor for StaticUser);
    return (*(v11 + 56))(a3, 0, 1, v10);
  }

  else
  {
    v13 = type metadata accessor for StaticUser();
    return (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
  }
}

uint64_t sub_1D1796524(void **a1, void *a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v11 = [v9 uniqueIdentifier];
  sub_1D1E66A5C();

  v12 = *(v10 + 8);
  sub_1D1797998();
  LOBYTE(a2) = sub_1D1E67AFC();
  (*(v5 + 8))(v8, v4);
  return a2 & 1;
}

uint64_t sub_1D1796660(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for StaticService(0);
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v25 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v13 = v22 - v12;
  v24 = *(a3 + 16);
  if (v24)
  {
    v14 = 0;
    v15 = MEMORY[0x1E69E7CC0];
    v22[1] = a2;
    v23 = a3;
    v22[0] = a1;
    while (v14 < *(a3 + 16))
    {
      v16 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v17 = *(v26 + 72);
      sub_1D1797930(a3 + v16 + v17 * v14, v13, type metadata accessor for StaticService);
      v18 = a1(v13);
      if (v3)
      {
        sub_1D1797870(v13);

        goto LABEL_15;
      }

      if (v18)
      {
        sub_1D17978CC(v13, v25);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D17915E0(0, *(v15 + 16) + 1, 1);
          v15 = v27;
        }

        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1D17915E0(v20 > 1, v21 + 1, 1);
          v15 = v27;
        }

        *(v15 + 16) = v21 + 1;
        result = sub_1D17978CC(v25, v15 + v16 + v21 * v17);
        a3 = v23;
        a1 = v22[0];
      }

      else
      {
        result = sub_1D1797870(v13);
      }

      if (v24 == ++v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v15;
  }

  return result;
}

uint64_t sub_1D179689C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v23 = MEMORY[0x1E69E7CC0];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
  {
    v8 = 0;
    v20 = v4 & 0xFFFFFFFFFFFFFF8;
    v21 = v4 & 0xC000000000000001;
    v19 = v4;
    while (1)
    {
      if (v21)
      {
        v9 = MEMORY[0x1D3891EF0](v8, v4);
      }

      else
      {
        if (v8 >= *(v20 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v22 = v9;
      v12 = a2;
      v13 = a1(&v22);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        sub_1D1E6896C();
        v14 = i;
        v15 = a1;
        v16 = a2;
        v17 = *(v23 + 16);
        sub_1D1E689AC();
        a2 = v16;
        a1 = v15;
        i = v14;
        v4 = v19;
        sub_1D1E689BC();
        sub_1D1E6897C();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v23;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_20:

  return v12;
}

uint64_t sub_1D1796A48(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v9 = 32;
    v19 = result;
    while (v7 < *(a3 + 16))
    {
      v10 = *(a3 + v9 + 16);
      v24[0] = *(a3 + v9);
      v24[1] = v10;
      v11 = *(a3 + v9 + 48);
      v25 = *(a3 + v9 + 32);
      v26 = v11;
      v27 = v24[0];
      v28 = v10;
      v29 = v25;
      v30 = v11;
      sub_1D17806DC(v24, &v20);
      v12 = v6(&v27);
      if (v3)
      {
        v20 = v27;
        v21 = v28;
        v22 = v29;
        v23 = v30;
        sub_1D1780738(&v20);

        goto LABEL_15;
      }

      if (v12)
      {
        v20 = v27;
        v21 = v28;
        v22 = v29;
        v23 = v30;
        result = swift_isUniquelyReferenced_nonNull_native();
        v31 = v8;
        if ((result & 1) == 0)
        {
          result = sub_1D178D694(0, *(v8 + 16) + 1, 1);
          v8 = v31;
        }

        v14 = *(v8 + 16);
        v13 = *(v8 + 24);
        if (v14 >= v13 >> 1)
        {
          result = sub_1D178D694((v13 > 1), v14 + 1, 1);
          v8 = v31;
        }

        *(v8 + 16) = v14 + 1;
        v15 = (v8 + (v14 << 6));
        v16 = v20;
        v17 = v21;
        v18 = v23;
        v15[4] = v22;
        v15[5] = v18;
        v15[2] = v16;
        v15[3] = v17;
        v6 = v19;
      }

      else
      {
        v20 = v27;
        v21 = v28;
        v22 = v29;
        v23 = v30;
        result = sub_1D1780738(&v20);
      }

      ++v7;
      v9 += 64;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v8;
  }

  return result;
}

uint64_t sub_1D1796C00(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v9 = MEMORY[0x1E69E7CC0];
    v23 = result;
    v24 = a3;
    v22 = v5;
    while (v7 < *(v4 + 16))
    {
      sub_1D17419CC(v8, v28);
      v10 = v6(v28);
      if (v3)
      {
        __swift_destroy_boxed_opaque_existential_1(v28);

        goto LABEL_15;
      }

      if (v10)
      {
        sub_1D16EEE20(v28, v25);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D178CF40(0, *(v9 + 16) + 1, 1);
          v9 = v29;
        }

        v13 = *(v9 + 16);
        v12 = *(v9 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_1D178CF40((v12 > 1), v13 + 1, 1);
        }

        v14 = v26;
        v15 = v27;
        v16 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
        v17 = *(*(v14 - 8) + 64);
        MEMORY[0x1EEE9AC00](v16);
        v19 = &v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v20 + 16))(v19);
        sub_1D1D20ADC(v13, v19, &v29, v14, v15);
        result = __swift_destroy_boxed_opaque_existential_1(v25);
        v9 = v29;
        v6 = v23;
        v4 = v24;
        v5 = v22;
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_1(v28);
      }

      ++v7;
      v8 += 40;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v9;
  }

  return result;
}

uint64_t _s13HomeDataModel5EventO08LocationD0O2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  if (v5 != 1)
  {
    if ((*(a2 + 24) & 1) == 0)
    {
      if (v2 == v7)
      {
        if (*&v3 == 0.0)
        {
          if (*&v6 == 0.0)
          {
            sub_1D17979F0(*a1, 0, v8, 0);
            sub_1D17979F0(v2, 0, v8, 0);
            sub_1D17979F0(v2, 0, v4, 0);
            sub_1D17979F0(v2, 0, v8, 0);
            sub_1D17979F0(v2, 0, v4, 0);
            sub_1D1771BE4(0);
            sub_1D1771BE4(0);
            sub_1D1771BD4(v2, 0, v4, 0);
            sub_1D1771BD4(v2, 0, v8, 0);
            sub_1D1771BD4(v2, 0, v8, 0);
            sub_1D1771BD4(v2, 0, v4, 0);
            return 1;
          }
        }

        else if (v3 == 1)
        {
          if (v6 == 1)
          {
            v16 = 1;
            sub_1D17979F0(*a1, 1uLL, v8, 0);
            sub_1D17979F0(v2, 1uLL, v8, 0);
            sub_1D17979F0(v2, 1uLL, v4, 0);
            sub_1D17979F0(v2, 1uLL, v8, 0);
            sub_1D17979F0(v2, 1uLL, v4, 0);
            sub_1D1771BE4(1uLL);
            sub_1D1771BE4(1uLL);
            sub_1D1771BD4(v2, 1uLL, v4, 0);
            sub_1D1771BD4(v2, 1uLL, v8, 0);
            sub_1D1771BD4(v2, 1uLL, v8, 0);
            sub_1D1771BD4(v2, 1uLL, v4, 0);
            return v16;
          }
        }

        else if (v6 >= 2)
        {
          sub_1D17979F0(*a1, *(a2 + 8), v8, 0);
          sub_1D17979F0(v2, v3, v4, 0);
          sub_1D17979F0(v2, v6, v8, 0);
          sub_1D17979F0(v2, v3, v4, 0);
          sub_1D17979F0(v2, v6, v8, 0);
          sub_1D17979F0(v2, v3, v4, 0);
          v22 = sub_1D17A6E98(v3, v6);
          sub_1D1771BE4(v3);
          sub_1D1771BE4(v6);
          sub_1D1771BD4(v2, v3, v4, 0);
          sub_1D1771BD4(v2, v6, v8, 0);
          sub_1D1771BD4(v2, v6, v8, 0);
          sub_1D1771BD4(v2, v3, v4, 0);
          return (v22 & 1) != 0;
        }

        sub_1D17979F0(*a1, *(a2 + 8), v8, 0);
        sub_1D17979F0(v2, v3, v4, 0);
        sub_1D17979F0(v2, v6, v8, 0);
        sub_1D17979F0(v2, v3, v4, 0);
        sub_1D17979F0(v2, v6, v8, 0);
        sub_1D17979F0(v2, v3, v4, 0);
        sub_1D1771BE4(v3);
        sub_1D1771BE4(v6);
        sub_1D1771BD4(v2, v3, v4, 0);
        sub_1D1771BD4(v2, v6, v8, 0);
        sub_1D1771BD4(v2, v6, v8, 0);
        v17 = v2;
        v18 = v3;
        v19 = v4;
        v20 = 0;
      }

      else
      {
        sub_1D17979F0(*a2, *(a2 + 8), v8, 0);
        sub_1D17979F0(v2, v3, v4, 0);
        sub_1D1771BD4(v2, v3, v4, 0);
        v17 = v7;
        v18 = v6;
        v19 = v8;
        v20 = 0;
      }

LABEL_11:
      sub_1D1771BD4(v17, v18, v19, v20);
      return 0;
    }

    sub_1D17974E0(*(a1 + 8));
LABEL_10:
    sub_1D17979F0(v7, v6, v8, v9);
    sub_1D1771BD4(v2, v3, v4, v5);
    v17 = v7;
    v18 = v6;
    v19 = v8;
    v20 = v9;
    goto LABEL_11;
  }

  if ((*(a2 + 24) & 1) == 0)
  {
    goto LABEL_10;
  }

  v10 = *(a1 + 16);
  v11 = *(a1 + 8);
  v12 = *a2;
  v13 = *(a2 + 8);
  v14 = *(a2 + 16);
  sub_1D1771BD4(*a1, v3, v4, 1);
  sub_1D1771BD4(v7, v6, v8, 1);
  v15 = *&v2 == *&v7;
  if (*&v3 != *&v6)
  {
    v15 = 0;
  }

  return *&v4 == *&v8 && v15;
}

unint64_t sub_1D179732C()
{
  result = qword_1EC6438E8;
  if (!qword_1EC6438E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6438E8);
  }

  return result;
}

unint64_t sub_1D1797380()
{
  result = qword_1EE079BF8;
  if (!qword_1EE079BF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE079BF8);
  }

  return result;
}

uint64_t _s13HomeDataModel5EventO08LocationD0O8UserTypeO2eeoiySbAG_AGtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!*a1)
  {
    if (!v3)
    {
      v2 = 0;
      v4 = 1;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v2 != 1)
  {
    if (v3 >= 2)
    {
      sub_1D17974E0(*a2);
      sub_1D17974E0(v2);
      v4 = sub_1D17A6E98(v2, v3);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v3 != 1)
  {
LABEL_8:
    sub_1D17974E0(*a2);
    sub_1D17974E0(v2);
    v4 = 0;
    goto LABEL_10;
  }

  v2 = 1;
  v4 = 1;
LABEL_10:
  sub_1D1771BE4(v2);
  sub_1D1771BE4(v3);
  return v4 & 1;
}

unint64_t sub_1D179747C()
{
  result = qword_1EC6438F8;
  if (!qword_1EC6438F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6438F0, &qword_1D1E99360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6438F8);
  }

  return result;
}

unint64_t sub_1D17974E0(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t sub_1D1797530()
{
  result = qword_1EC643900;
  if (!qword_1EC643900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643900);
  }

  return result;
}

unint64_t sub_1D1797588()
{
  result = qword_1EC643908;
  if (!qword_1EC643908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643908);
  }

  return result;
}

unint64_t sub_1D17975E0()
{
  result = qword_1EC643910;
  if (!qword_1EC643910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643910);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13HomeDataModel5EventO08LocationD0O8UserTypeO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1D179766C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1D17976B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_1D1797718(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D179776C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
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

void *sub_1D17977C8(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_1D179781C()
{
  result = qword_1EC643918;
  if (!qword_1EC643918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643918);
  }

  return result;
}

uint64_t sub_1D1797870(uint64_t a1)
{
  v2 = type metadata accessor for StaticService(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D17978CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticService(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1797930(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D1797998()
{
  result = qword_1EE07D170;
  if (!qword_1EE07D170)
  {
    sub_1D1E66A7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07D170);
  }

  return result;
}

unint64_t sub_1D17979F0(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    return sub_1D17974E0(a2);
  }

  return result;
}

void Event.TimeEvent.init(event:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v37 = &v32 - v5;
  v6 = sub_1D1E669FC();
  v35 = *(v6 - 8);
  v36 = v6;
  v7 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v32 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for Event.TimeEvent(0);
  v9 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D1E662EC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v32 - v18;
  v20 = a1;
  v21 = [a1 fireDateComponents];
  sub_1D1E6621C();

  sub_1D1E6622C();
  LOBYTE(v21) = v22;
  v23 = *(v13 + 8);
  v23(v19, v12);
  if (v21)
  {
    v24 = v38;
    Event.TimeEvent.TimeComponents.init(event:)(v20, v11);
    if (!v24)
    {
      swift_storeEnumTagMultiPayload();
      sub_1D179AC74(v11, v34, type metadata accessor for Event.TimeEvent);
    }
  }

  else
  {
    v25 = [v20 fireDateComponents];
    sub_1D1E6621C();

    v26 = v37;
    sub_1D1E6623C();
    v23(v17, v12);
    v28 = v35;
    v27 = v36;
    if ((*(v35 + 48))(v26, 1, v36) == 1)
    {
      sub_1D1741A30(v26, &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D179AB20();
      swift_allocError();
      *v29 = 1;
      swift_willThrow();
    }

    else
    {

      v30 = *(v28 + 32);
      v31 = v32;
      v30(v32, v26, v27);
      v30(v34, v31, v27);
      swift_storeEnumTagMultiPayload();
    }
  }
}

void Event.TimeEvent.init(event:)(void *a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643928, &qword_1D1E72CD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v31 - v6;
  v8 = [a1 significantEvent];
  v9 = *MEMORY[0x1E696CAB8];
  v10 = sub_1D1E6781C();
  v12 = v11;
  if (v10 == sub_1D1E6781C() && v12 == v13)
  {

    goto LABEL_8;
  }

  v15 = sub_1D1E6904C();

  if (v15)
  {

LABEL_8:
    v16 = 0;
    goto LABEL_9;
  }

  v22 = *MEMORY[0x1E696CAC0];
  v23 = sub_1D1E6781C();
  v25 = v24;
  if (v23 == sub_1D1E6781C() && v25 == v26)
  {

    v16 = 1;
  }

  else
  {
    v28 = sub_1D1E6904C();

    if ((v28 & 1) == 0)
    {
      v29 = [a1 significantEvent];
      sub_1D179AB20();
      swift_allocError();
      *v30 = v29;
      swift_willThrow();

      return;
    }

    v16 = 1;
  }

LABEL_9:
  *a2 = v16;
  v17 = [a1 offset];
  if (v17)
  {
    v18 = v17;
    sub_1D1E6621C();

    v19 = sub_1D1E662EC();
    (*(*(v19 - 8) + 56))(v7, 0, 1, v19);
  }

  else
  {

    v20 = sub_1D1E662EC();
    (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643930, &qword_1D1E72CD8);
  sub_1D179AB74(v7, &a2[*(v21 + 48)]);
  type metadata accessor for Event.TimeEvent(0);
  swift_storeEnumTagMultiPayload();
}

HMTimeEvent __swiftcall Event.TimeEvent.createEvent()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643928, &qword_1D1E72CD0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v48 - v7;
  v9 = type metadata accessor for Event.TimeEvent.TimeComponents(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D1E66BBC();
  v50 = *(v13 - 8);
  v51 = v13;
  v14 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D1E662EC();
  v52 = *(v17 - 8);
  v53 = v17;
  v18 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v49 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D1E669FC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Event.TimeEvent(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D179D3DC(v1, v28, type metadata accessor for Event.TimeEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D179AC74(v28, v12, type metadata accessor for Event.TimeEvent.TimeComponents);
      v30.super.super.super.isa = Event.TimeEvent.TimeComponents.createEvent()().super.super.super.isa;
      sub_1D179D444(v12, type metadata accessor for Event.TimeEvent.TimeComponents);
    }

    else
    {
      v41 = *v28;
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643930, &qword_1D1E72CD8);
      sub_1D179AB74(&v28[*(v42 + 48)], v8);
      v43 = MEMORY[0x1E696CAC0];
      if (!v41)
      {
        v43 = MEMORY[0x1E696CAB8];
      }

      v44 = *v43;
      sub_1D179AC04(v8, v6);
      v45 = v52;
      if ((*(v52 + 48))(v6, 1, v53) == 1)
      {
        v46 = 0;
      }

      else
      {
        v46 = sub_1D1E661FC();
        (*(v45 + 8))(v6, v53);
      }

      v30.super.super.super.isa = [objc_allocWithZone(MEMORY[0x1E696CC50]) initWithSignificantEvent:v44 offset:v46];

      sub_1D1741A30(v8, &qword_1EC643928, &qword_1D1E72CD0);
    }
  }

  else
  {
    v31 = *(v21 + 32);
    v48 = v20;
    v31(v24, v28, v20);
    sub_1D1E66B9C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643938, &qword_1D1E7A420);
    v32 = sub_1D1E66BAC();
    v33 = *(v32 - 8);
    v34 = *(v33 + 72);
    v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1D1E72CC0;
    v37 = *(v33 + 104);
    v37(v36 + v35, *MEMORY[0x1E6969A78], v32);
    v37(v36 + v35 + v34, *MEMORY[0x1E6969A48], v32);
    v37(v36 + v35 + 2 * v34, *MEMORY[0x1E6969A58], v32);
    v37(v36 + v35 + 3 * v34, *MEMORY[0x1E6969A88], v32);
    sub_1D179C3D0(v36);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v38 = v49;
    sub_1D1E66B1C();

    (*(v50 + 8))(v16, v51);
    v39 = objc_allocWithZone(MEMORY[0x1E696CB00]);
    v40 = sub_1D1E661FC();
    v30.super.super.super.isa = [v39 initWithFireDateComponents_];

    (*(v52 + 8))(v38, v53);
    (*(v21 + 8))(v24, v48);
  }

  return v30.super;
}

unint64_t Event.TimeEvent.debugDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Event.TimeEvent.TimeComponents(0);
  v3 = *(*(v2 - 1) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D1E662EC();
  v41 = *(v6 - 8);
  v42 = v6;
  v7 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v40 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643928, &qword_1D1E72CD0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v40 - v14;
  v16 = sub_1D1E669FC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Event.TimeEvent(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D179D3DC(v1, v24, type metadata accessor for Event.TimeEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D179AC74(v24, v5, type metadata accessor for Event.TimeEvent.TimeComponents);
      v44 = 0;
      v45 = 0xE000000000000000;
      sub_1D1E6884C();
      MEMORY[0x1D3890F70](0xD00000000000001ELL, 0x80000001D1EB8CB0);
      v43 = v5[v2[5]];
      v26 = sub_1D1E68FAC();
      MEMORY[0x1D3890F70](v26);

      MEMORY[0x1D3890F70](0x203A6D202CLL, 0xE500000000000000);
      v43 = v5[v2[6]];
      v27 = sub_1D1E68FAC();
      MEMORY[0x1D3890F70](v27);

      MEMORY[0x1D3890F70](0x203A73202CLL, 0xE500000000000000);
      v43 = v5[v2[7]];
      v28 = sub_1D1E68FAC();
      MEMORY[0x1D3890F70](v28);

      MEMORY[0x1D3890F70](0x203A656E6F7A202CLL, 0xE800000000000000);
      sub_1D1E66C5C();
      sub_1D179C6F0(&qword_1EC643940, MEMORY[0x1E6969BC0]);
      v29 = sub_1D1E68FAC();
      MEMORY[0x1D3890F70](v29);

      MEMORY[0x1D3890F70](32032, 0xE200000000000000);
      v30 = v44;
      sub_1D179D444(v5, type metadata accessor for Event.TimeEvent.TimeComponents);
    }

    else
    {
      v32 = *v24;
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643930, &qword_1D1E72CD8);
      v34 = v15;
      sub_1D179AB74(&v24[*(v33 + 48)], v15);
      sub_1D179AC04(v15, v13);
      v36 = v41;
      v35 = v42;
      if ((*(v41 + 48))(v13, 1, v42) == 1)
      {
        sub_1D1741A30(v13, &qword_1EC643928, &qword_1D1E72CD0);
        v44 = 0;
        v45 = 0xE000000000000000;
        sub_1D1E6884C();
        MEMORY[0x1D3890F70](0xD00000000000001DLL, 0x80000001D1EB8CD0);
        v43 = v32;
        sub_1D1E68ABC();
        MEMORY[0x1D3890F70](32032, 0xE200000000000000);
        v30 = v44;
      }

      else
      {
        v37 = v40;
        (*(v36 + 32))(v40, v13, v35);
        v44 = 0;
        v45 = 0xE000000000000000;
        sub_1D1E6884C();
        MEMORY[0x1D3890F70](0xD00000000000001DLL, 0x80000001D1EB8CD0);
        v43 = v32;
        sub_1D1E68ABC();
        MEMORY[0x1D3890F70](2108192, 0xE300000000000000);
        sub_1D179C6F0(&qword_1EC643948, MEMORY[0x1E6968278]);
        v38 = sub_1D1E68FAC();
        MEMORY[0x1D3890F70](v38);

        MEMORY[0x1D3890F70](32032, 0xE200000000000000);
        v30 = v44;
        (*(v36 + 8))(v37, v35);
      }

      sub_1D1741A30(v34, &qword_1EC643928, &qword_1D1E72CD0);
    }
  }

  else
  {
    (*(v17 + 32))(v20, v24, v16);
    v44 = 0;
    v45 = 0xE000000000000000;
    sub_1D1E6884C();

    v44 = 0xD000000000000011;
    v45 = 0x80000001D1EB8CF0;
    sub_1D179C6F0(&qword_1EC643950, MEMORY[0x1E6969530]);
    v31 = sub_1D1E68FAC();
    MEMORY[0x1D3890F70](v31);

    MEMORY[0x1D3890F70](32032, 0xE200000000000000);
    v30 = v44;
    (*(v17 + 8))(v20, v16);
  }

  return v30;
}

uint64_t Event.TimeEvent.SignificantTime.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1);
  return sub_1D1E6926C();
}

uint64_t Event.TimeEvent.TimeComponents.timezone.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66C5C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

int *Event.TimeEvent.TimeComponents.init(timezone:hour:minute:second:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = sub_1D1E66C5C();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for Event.TimeEvent.TimeComponents(0);
  *(a5 + result[5]) = a2;
  *(a5 + result[6]) = a3;
  *(a5 + result[7]) = a4;
  return result;
}

uint64_t Event.TimeEvent.TimeComponents.hash(into:)()
{
  sub_1D1E66C5C();
  sub_1D179C6F0(&qword_1EC643958, MEMORY[0x1E6969BC0]);
  sub_1D1E676EC();
  v1 = type metadata accessor for Event.TimeEvent.TimeComponents(0);
  v2 = *(v0 + v1[5]);
  sub_1D1E6922C();
  v3 = *(v0 + v1[6]);
  sub_1D1E6922C();
  v4 = *(v0 + v1[7]);
  return sub_1D1E6922C();
}

uint64_t Event.TimeEvent.TimeComponents.hashValue.getter()
{
  sub_1D1E6920C();
  sub_1D1E66C5C();
  sub_1D179C6F0(&qword_1EC643958, MEMORY[0x1E6969BC0]);
  sub_1D1E676EC();
  v1 = type metadata accessor for Event.TimeEvent.TimeComponents(0);
  v2 = *(v0 + v1[5]);
  sub_1D1E6922C();
  v3 = *(v0 + v1[6]);
  sub_1D1E6922C();
  v4 = *(v0 + v1[7]);
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t sub_1D17991DC(int *a1)
{
  sub_1D1E6920C();
  sub_1D1E66C5C();
  sub_1D179C6F0(&qword_1EC643958, MEMORY[0x1E6969BC0]);
  sub_1D1E676EC();
  v3 = *(v1 + a1[5]);
  sub_1D1E6922C();
  v4 = *(v1 + a1[6]);
  sub_1D1E6922C();
  v5 = *(v1 + a1[7]);
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t sub_1D17992A4(uint64_t a1, int *a2)
{
  sub_1D1E66C5C();
  sub_1D179C6F0(&qword_1EC643958, MEMORY[0x1E6969BC0]);
  sub_1D1E676EC();
  v4 = *(v2 + a2[5]);
  sub_1D1E6922C();
  v5 = *(v2 + a2[6]);
  sub_1D1E6922C();
  v6 = *(v2 + a2[7]);
  return sub_1D1E6922C();
}

uint64_t sub_1D1799354(uint64_t a1, int *a2)
{
  sub_1D1E6920C();
  sub_1D1E66C5C();
  sub_1D179C6F0(&qword_1EC643958, MEMORY[0x1E6969BC0]);
  sub_1D1E676EC();
  v4 = *(v2 + a2[5]);
  sub_1D1E6922C();
  v5 = *(v2 + a2[6]);
  sub_1D1E6922C();
  v6 = *(v2 + a2[7]);
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t Event.TimeEvent.hash(into:)(uint64_t a1)
{
  v38 = a1;
  v2 = sub_1D1E662EC();
  v36 = *(v2 - 8);
  v37 = v2;
  v3 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v35 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643928, &qword_1D1E72CD0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v35 - v10;
  v12 = type metadata accessor for Event.TimeEvent.TimeComponents(0);
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D1E669FC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Event.TimeEvent(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D179D3DC(v1, v24, type metadata accessor for Event.TimeEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D179AC74(v24, v15, type metadata accessor for Event.TimeEvent.TimeComponents);
      MEMORY[0x1D3892850](1);
      sub_1D1E66C5C();
      sub_1D179C6F0(&qword_1EC643958, MEMORY[0x1E6969BC0]);
      sub_1D1E676EC();
      v26 = v15[v12[5]];
      sub_1D1E6922C();
      v27 = v15[v12[6]];
      sub_1D1E6922C();
      v28 = v15[v12[7]];
      sub_1D1E6922C();
      return sub_1D179D444(v15, type metadata accessor for Event.TimeEvent.TimeComponents);
    }

    else
    {
      v30 = *v24;
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643930, &qword_1D1E72CD8);
      sub_1D179AB74(&v24[*(v31 + 48)], v11);
      MEMORY[0x1D3892850](2);
      MEMORY[0x1D3892850](v30);
      sub_1D179AC04(v11, v9);
      v33 = v36;
      v32 = v37;
      if ((*(v36 + 48))(v9, 1, v37) == 1)
      {
        sub_1D1E6922C();
      }

      else
      {
        v34 = v35;
        (*(v33 + 32))(v35, v9, v32);
        sub_1D1E6922C();
        sub_1D179C6F0(&qword_1EC643040, MEMORY[0x1E6968278]);
        sub_1D1E676EC();
        (*(v33 + 8))(v34, v32);
      }

      return sub_1D1741A30(v11, &qword_1EC643928, &qword_1D1E72CD0);
    }
  }

  else
  {
    (*(v17 + 32))(v20, v24, v16);
    MEMORY[0x1D3892850](0);
    sub_1D179C6F0(&qword_1EC642A50, MEMORY[0x1E6969530]);
    sub_1D1E676EC();
    return (*(v17 + 8))(v20, v16);
  }
}

uint64_t Event.TimeEvent.hashValue.getter()
{
  sub_1D1E6920C();
  Event.TimeEvent.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1799954()
{
  sub_1D1E6920C();
  Event.TimeEvent.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1799998()
{
  sub_1D1E6920C();
  Event.TimeEvent.hash(into:)(v1);
  return sub_1D1E6926C();
}

void Event.TimeEvent.TimeComponents.init(event:)(void *a1@<X0>, char *a2@<X8>)
{
  v53 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643960, &qword_1D1EABC30);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v50 - v5;
  v7 = sub_1D1E662EC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v54 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v55 = &v50 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v50 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v50 - v17;
  v19 = sub_1D1E66C5C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a1;
  v24 = [a1 fireDateComponents];
  sub_1D1E6621C();

  sub_1D1E662CC();
  v25 = *(v8 + 8);
  v56 = v7;
  v26 = v7;
  v27 = v25;
  v25(v18, v26);
  if ((*(v20 + 48))(v6, 1, v19) != 1)
  {
    v51 = *(v20 + 32);
    v52 = v20 + 32;
    v51(v23, v6, v19);
    v29 = [v57 fireDateComponents];
    sub_1D1E6621C();

    v30 = sub_1D1E6624C();
    LOBYTE(v29) = v31;
    v32 = v16;
    v33 = v56;
    v34 = v27;
    v27(v32, v56);
    if (v29)
    {
      goto LABEL_6;
    }

    v50 = v30;
    v35 = [v57 fireDateComponents];
    v36 = v55;
    sub_1D1E6621C();

    v37 = sub_1D1E6627C();
    LOBYTE(v35) = v38;
    v34(v36, v33);
    if (v35)
    {
      goto LABEL_6;
    }

    v55 = v37;
    v39 = [v57 fireDateComponents];
    v40 = v54;
    sub_1D1E6621C();

    v41 = sub_1D1E6629C();
    v42 = v34;
    v43 = v41;
    LOBYTE(v39) = v44;
    v42(v40, v33);
    if (v39)
    {
LABEL_6:
      v28 = v57;
      (*(v20 + 8))(v23, v19);
      goto LABEL_7;
    }

    v46 = v53;
    v51(v53, v23, v19);
    v47 = v50;
    if (v50 > 255)
    {
      __break(1u);
    }

    else
    {
      v48 = v55;
      if (v55 <= 255)
      {
        if (((v55 | v50 | v43) & 0x8000000000000000) == 0)
        {
          if (v43 <= 255)
          {
            v49 = type metadata accessor for Event.TimeEvent.TimeComponents(0);
            v46[v49[5]] = v47;
            v46[v49[6]] = v48;
            v46[v49[7]] = v43;
            return;
          }

          goto LABEL_17;
        }

LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  v28 = v57;
  sub_1D1741A30(v6, &qword_1EC643960, &qword_1D1EABC30);
LABEL_7:
  sub_1D179AB20();
  swift_allocError();
  *v45 = 0;
  swift_willThrow();
}

HMCalendarEvent __swiftcall Event.TimeEvent.TimeComponents.createEvent()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643960, &qword_1D1EABC30);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643968, &qword_1D1E72CE0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v26 - v8;
  v10 = sub_1D1E662EC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D1E66BBC();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  v16 = sub_1D1E66C5C();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v5, v1, v16);
  (*(v17 + 56))(v5, 0, 1, v16);
  v18 = type metadata accessor for Event.TimeEvent.TimeComponents(0);
  v25 = *(v1 + v18[7]);
  v24 = *(v1 + v18[6]);
  v23 = *(v1 + v18[5]);
  sub_1D1E662BC();
  v19 = objc_allocWithZone(MEMORY[0x1E696CB00]);
  v20 = sub_1D1E661FC();
  v21 = [v19 initWithFireDateComponents_];

  (*(v11 + 8))(v14, v10);
  return v21;
}

BOOL _s13HomeDataModel5EventO04TimeD0O0E10ComponentsV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x1D3890260]() & 1) != 0 && (v4 = type metadata accessor for Event.TimeEvent.TimeComponents(0), *(a1 + v4[5]) == *(a2 + v4[5])) && *(a1 + v4[6]) == *(a2 + v4[6]))
  {
    return *(a1 + v4[7]) == *(a2 + v4[7]);
  }

  else
  {
    return 0;
  }
}

uint64_t _s13HomeDataModel5EventO04TimeD0O2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v71 = a1;
  v72 = a2;
  v66 = sub_1D1E662EC();
  v64 = *(v66 - 8);
  v2 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v61 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643A18, &qword_1D1E72F80);
  v4 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v61 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643928, &qword_1D1E72CD0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v62 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v68 = &v61 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v69 = &v61 - v12;
  v67 = type metadata accessor for Event.TimeEvent.TimeComponents(0);
  v13 = *(*(v67 - 1) + 64);
  MEMORY[0x1EEE9AC00](v67);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D1E669FC();
  v70 = *(v16 - 8);
  v17 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Event.TimeEvent(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v61 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v61 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643A20, &qword_1D1E72F88);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v30 - 8);
  v34 = &v61 - v33;
  v35 = &v61 + *(v32 + 56) - v33;
  sub_1D179D3DC(v71, &v61 - v33, type metadata accessor for Event.TimeEvent);
  sub_1D179D3DC(v72, v35, type metadata accessor for Event.TimeEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D179D3DC(v34, v27, type metadata accessor for Event.TimeEvent);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1D179AC74(v35, v15, type metadata accessor for Event.TimeEvent.TimeComponents);
        if ((MEMORY[0x1D3890260](v27, v15) & 1) != 0 && v27[v67[5]] == v15[v67[5]] && v27[v67[6]] == v15[v67[6]])
        {
          v37 = v67[7];
          v38 = v27[v37];
          v39 = v15[v37];
          sub_1D179D444(v15, type metadata accessor for Event.TimeEvent.TimeComponents);
          if (v38 == v39)
          {
            sub_1D179D444(v27, type metadata accessor for Event.TimeEvent.TimeComponents);
LABEL_31:
            sub_1D179D444(v34, type metadata accessor for Event.TimeEvent);
            v49 = 1;
            return v49 & 1;
          }
        }

        else
        {
          sub_1D179D444(v15, type metadata accessor for Event.TimeEvent.TimeComponents);
        }

        sub_1D179D444(v27, type metadata accessor for Event.TimeEvent.TimeComponents);
        goto LABEL_27;
      }

      sub_1D179D444(v27, type metadata accessor for Event.TimeEvent.TimeComponents);
LABEL_16:
      sub_1D1741A30(v34, &qword_1EC643A20, &qword_1D1E72F88);
LABEL_28:
      v49 = 0;
      return v49 & 1;
    }

    sub_1D179D3DC(v34, v24, type metadata accessor for Event.TimeEvent);
    v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643930, &qword_1D1E72CD8) + 48);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_1D1741A30(&v24[v41], &qword_1EC643928, &qword_1D1E72CD0);
      goto LABEL_16;
    }

    v42 = *v24;
    v43 = *v35;
    v44 = v69;
    sub_1D179AB74(&v24[v41], v69);
    v45 = v68;
    sub_1D179AB74(&v35[v41], v68);
    if (v42 == v43)
    {
      v51 = *(v63 + 48);
      v52 = v65;
      sub_1D179AC04(v44, v65);
      sub_1D179AC04(v45, v52 + v51);
      v53 = v64;
      v54 = *(v64 + 48);
      v55 = v66;
      if (v54(v52, 1, v66) == 1)
      {
        sub_1D1741A30(v45, &qword_1EC643928, &qword_1D1E72CD0);
        sub_1D1741A30(v44, &qword_1EC643928, &qword_1D1E72CD0);
        if (v54(v52 + v51, 1, v55) == 1)
        {
          sub_1D1741A30(v52, &qword_1EC643928, &qword_1D1E72CD0);
          goto LABEL_31;
        }
      }

      else
      {
        v56 = v62;
        sub_1D179AC04(v52, v62);
        if (v54(v52 + v51, 1, v55) != 1)
        {
          v58 = v61;
          (*(v53 + 32))(v61, v52 + v51, v55);
          sub_1D179C6F0(&qword_1EC643A28, MEMORY[0x1E6968278]);
          v59 = sub_1D1E6775C();
          v60 = *(v53 + 8);
          v60(v58, v55);
          sub_1D1741A30(v68, &qword_1EC643928, &qword_1D1E72CD0);
          sub_1D1741A30(v69, &qword_1EC643928, &qword_1D1E72CD0);
          v60(v56, v55);
          sub_1D1741A30(v52, &qword_1EC643928, &qword_1D1E72CD0);
          if (v59)
          {
            goto LABEL_31;
          }

          goto LABEL_27;
        }

        sub_1D1741A30(v68, &qword_1EC643928, &qword_1D1E72CD0);
        sub_1D1741A30(v69, &qword_1EC643928, &qword_1D1E72CD0);
        (*(v53 + 8))(v56, v55);
      }

      v47 = &qword_1EC643A18;
      v48 = &qword_1D1E72F80;
      v46 = v52;
    }

    else
    {
      sub_1D1741A30(v45, &qword_1EC643928, &qword_1D1E72CD0);
      v46 = v44;
      v47 = &qword_1EC643928;
      v48 = &qword_1D1E72CD0;
    }

    sub_1D1741A30(v46, v47, v48);
LABEL_27:
    sub_1D179D444(v34, type metadata accessor for Event.TimeEvent);
    goto LABEL_28;
  }

  v40 = v70;
  sub_1D179D3DC(v34, v29, type metadata accessor for Event.TimeEvent);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v40 + 8))(v29, v16);
    goto LABEL_16;
  }

  (*(v40 + 32))(v19, v35, v16);
  v49 = sub_1D1E669AC();
  v50 = *(v40 + 8);
  v50(v19, v16);
  v50(v29, v16);
  sub_1D179D444(v34, type metadata accessor for Event.TimeEvent);
  return v49 & 1;
}

unint64_t sub_1D179AB20()
{
  result = qword_1EC643920;
  if (!qword_1EC643920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643920);
  }

  return result;
}

uint64_t sub_1D179AB74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643928, &qword_1D1E72CD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D179AC04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643928, &qword_1D1E72CD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D179AC74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D179ACDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6439D0, &unk_1D1E8EAF0);
    v3 = sub_1D1E6882C();
    v4 = 0;
    v5 = v3 + 56;
    v23 = v1;
    v24 = a1 + 32;
    while (1)
    {
      v6 = *(v24 + v4);
      v7 = *(v3 + 40);
      sub_1D1E6920C();
      ServiceKind.rawValue.getter();
      sub_1D1E678EC();

      result = sub_1D1E6926C();
      v9 = ~(-1 << *(v3 + 32));
      v10 = result & v9;
      v11 = (result & v9) >> 6;
      v12 = *(v5 + 8 * v11);
      v13 = 1 << (result & v9);
      if ((v13 & v12) != 0)
      {
        while (1)
        {
          v14 = "takeSnaphotsWhenBusy";
          switch(*(*(v3 + 48) + v10))
          {
            case 1:
              v15 = "0000003E-0000-1000-8000-0026BB765291";
              goto LABEL_59;
            case 2:
              v15 = "00000270-0000-1000-8000-0026BB765291";
              goto LABEL_59;
            case 3:
              v15 = "000000BB-0000-1000-8000-0026BB765291";
              goto LABEL_59;
            case 4:
              v15 = "0000008D-0000-1000-8000-0026BB765291";
              goto LABEL_59;
            case 5:
              v15 = "00000096-0000-1000-8000-0026BB765291";
              goto LABEL_59;
            case 6:
              v15 = "00000042-0000-1000-8000-0026BB765291";
              goto LABEL_59;
            case 7:
              v15 = "00000110-0000-1000-8000-0026BB765291";
              goto LABEL_59;
            case 8:
              v15 = "00000204-0000-1000-8000-0026BB765291";
              goto LABEL_59;
            case 9:
              v15 = "00000097-0000-1000-8000-0026BB765291";
              goto LABEL_59;
            case 0xA:
              v15 = "0000007F-0000-1000-8000-0026BB765291";
              goto LABEL_59;
            case 0xB:
              v15 = "00000080-0000-1000-8000-0026BB765291";
              goto LABEL_59;
            case 0xC:
              v15 = "00000129-0000-1000-8000-0026BB765291";
              goto LABEL_59;
            case 0xD:
              v15 = "00000237-0000-1000-8000-0026BB765291";
              goto LABEL_59;
            case 0xE:
              v15 = "00000081-0000-1000-8000-0026BB765291";
              goto LABEL_59;
            case 0xF:
              v15 = "00000121-0000-1000-8000-0026BB765291";
              goto LABEL_59;
            case 0x10:
              v15 = "00000040-0000-1000-8000-0026BB765291";
              goto LABEL_59;
            case 0x11:
              v15 = "000000D7-0000-1000-8000-0026BB765291";
              goto LABEL_59;
            case 0x12:
              v15 = "000000BA-0000-1000-8000-0026BB765291";
              goto LABEL_59;
            case 0x13:
              v15 = "00000041-0000-1000-8000-0026BB765291";
              goto LABEL_59;
            case 0x14:
              v15 = "000000BC-0000-1000-8000-0026BB765291";
              goto LABEL_59;
            case 0x15:
              v15 = "000000BD-0000-1000-8000-0026BB765291";
              goto LABEL_59;
            case 0x16:
              v15 = "00000082-0000-1000-8000-0026BB765291";
              goto LABEL_59;
            case 0x17:
              v15 = "000000D9-0000-1000-8000-0026BB765291";
              goto LABEL_59;
            case 0x18:
              v15 = "000000CF-0000-1000-8000-0026BB765291";
              goto LABEL_59;
            case 0x19:
              v15 = "000000CC-0000-1000-8000-0026BB765291";
              goto LABEL_59;
            case 0x1A:
              v15 = "00000083-0000-1000-8000-0026BB765291";
              goto LABEL_59;
            case 0x1B:
              v15 = "00000084-0000-1000-8000-0026BB765291";
              goto LABEL_59;
            case 0x1C:
              v15 = "00000043-0000-1000-8000-0026BB765291";
              goto LABEL_59;
            case 0x1D:
              v15 = "00000044-0000-1000-8000-0026BB765291";
              goto LABEL_59;
            case 0x1E:
              v15 = "00000045-0000-1000-8000-0026BB765291";
              goto LABEL_59;
            case 0x1F:
              v15 = "00000112-0000-1000-8000-0026BB765291";
              goto LABEL_59;
            case 0x20:
              v15 = "00000085-0000-1000-8000-0026BB765291";
              goto LABEL_59;
            case 0x21:
              v15 = "00000086-0000-1000-8000-0026BB765291";
              goto LABEL_59;
            case 0x22:
              v15 = "00000047-0000-1000-8000-0026BB765291";
              goto LABEL_59;
            case 0x23:
              v15 = "0000007E-0000-1000-8000-0026BB765291";
              goto LABEL_59;
            case 0x24:
              v15 = "000000B9-0000-1000-8000-0026BB765291";
              goto LABEL_59;
            case 0x25:
              v15 = "00000087-0000-1000-8000-0026BB765291";
              goto LABEL_59;
            case 0x26:
              v15 = "00000113-0000-1000-8000-0026BB765291";
              goto LABEL_59;
            case 0x27:
              v15 = "00000088-0000-1000-8000-0026BB765291";
              goto LABEL_59;
            case 0x28:
              v15 = "00000089-0000-1000-8000-0026BB765291";
              goto LABEL_59;
            case 0x29:
              v15 = "00000049-0000-1000-8000-0026BB765291";
              goto LABEL_59;
            case 0x2A:
              v15 = "00000125-0000-1000-8000-0026BB765291";
              goto LABEL_59;
            case 0x2B:
              v15 = "00000122-0000-1000-8000-0026BB765291";
              goto LABEL_59;
            case 0x2C:
              v15 = "000000D8-0000-1000-8000-0026BB765291";
              goto LABEL_59;
            case 0x2D:
              v15 = "0000008A-0000-1000-8000-0026BB765291";
              goto LABEL_59;
            case 0x2E:
              v15 = "0000004A-0000-1000-8000-0026BB765291";
              goto LABEL_59;
            case 0x2F:
              v15 = "000000D0-0000-1000-8000-0026BB765291";
              goto LABEL_59;
            case 0x30:
              v15 = "000000B7-0000-1000-8000-0026BB765291";
              goto LABEL_59;
            case 0x31:
              v15 = "0000020A-0000-1000-8000-0026BB765291";
              goto LABEL_59;
            case 0x32:
              v15 = "0000020F-0000-1000-8000-0026BB765291";
              goto LABEL_59;
            case 0x33:
              v15 = "0000008B-0000-1000-8000-0026BB765291";
              goto LABEL_59;
            case 0x34:
              v15 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_59:
              v14 = v15 - 32;
              break;
            default:
              break;
          }

          v16 = v14 | 0x8000000000000000;
          v17 = "takeSnaphotsWhenBusy";
          switch(v6)
          {
            case 1:
              v18 = "0000003E-0000-1000-8000-0026BB765291";
              goto LABEL_113;
            case 2:
              v18 = "00000270-0000-1000-8000-0026BB765291";
              goto LABEL_113;
            case 3:
              v18 = "000000BB-0000-1000-8000-0026BB765291";
              goto LABEL_113;
            case 4:
              v18 = "0000008D-0000-1000-8000-0026BB765291";
              goto LABEL_113;
            case 5:
              v18 = "00000096-0000-1000-8000-0026BB765291";
              goto LABEL_113;
            case 6:
              v18 = "00000042-0000-1000-8000-0026BB765291";
              goto LABEL_113;
            case 7:
              v18 = "00000110-0000-1000-8000-0026BB765291";
              goto LABEL_113;
            case 8:
              v18 = "00000204-0000-1000-8000-0026BB765291";
              goto LABEL_113;
            case 9:
              v18 = "00000097-0000-1000-8000-0026BB765291";
              goto LABEL_113;
            case 10:
              v18 = "0000007F-0000-1000-8000-0026BB765291";
              goto LABEL_113;
            case 11:
              v18 = "00000080-0000-1000-8000-0026BB765291";
              goto LABEL_113;
            case 12:
              v18 = "00000129-0000-1000-8000-0026BB765291";
              goto LABEL_113;
            case 13:
              v18 = "00000237-0000-1000-8000-0026BB765291";
              goto LABEL_113;
            case 14:
              v18 = "00000081-0000-1000-8000-0026BB765291";
              goto LABEL_113;
            case 15:
              v18 = "00000121-0000-1000-8000-0026BB765291";
              goto LABEL_113;
            case 16:
              v18 = "00000040-0000-1000-8000-0026BB765291";
              goto LABEL_113;
            case 17:
              v18 = "000000D7-0000-1000-8000-0026BB765291";
              goto LABEL_113;
            case 18:
              v18 = "000000BA-0000-1000-8000-0026BB765291";
              goto LABEL_113;
            case 19:
              v18 = "00000041-0000-1000-8000-0026BB765291";
              goto LABEL_113;
            case 20:
              v18 = "000000BC-0000-1000-8000-0026BB765291";
              goto LABEL_113;
            case 21:
              v18 = "000000BD-0000-1000-8000-0026BB765291";
              goto LABEL_113;
            case 22:
              v18 = "00000082-0000-1000-8000-0026BB765291";
              goto LABEL_113;
            case 23:
              v18 = "000000D9-0000-1000-8000-0026BB765291";
              goto LABEL_113;
            case 24:
              v18 = "000000CF-0000-1000-8000-0026BB765291";
              goto LABEL_113;
            case 25:
              v18 = "000000CC-0000-1000-8000-0026BB765291";
              goto LABEL_113;
            case 26:
              v18 = "00000083-0000-1000-8000-0026BB765291";
              goto LABEL_113;
            case 27:
              v18 = "00000084-0000-1000-8000-0026BB765291";
              goto LABEL_113;
            case 28:
              v18 = "00000043-0000-1000-8000-0026BB765291";
              goto LABEL_113;
            case 29:
              v18 = "00000044-0000-1000-8000-0026BB765291";
              goto LABEL_113;
            case 30:
              v18 = "00000045-0000-1000-8000-0026BB765291";
              goto LABEL_113;
            case 31:
              v18 = "00000112-0000-1000-8000-0026BB765291";
              goto LABEL_113;
            case 32:
              v18 = "00000085-0000-1000-8000-0026BB765291";
              goto LABEL_113;
            case 33:
              v18 = "00000086-0000-1000-8000-0026BB765291";
              goto LABEL_113;
            case 34:
              v18 = "00000047-0000-1000-8000-0026BB765291";
              goto LABEL_113;
            case 35:
              v18 = "0000007E-0000-1000-8000-0026BB765291";
              goto LABEL_113;
            case 36:
              v18 = "000000B9-0000-1000-8000-0026BB765291";
              goto LABEL_113;
            case 37:
              v18 = "00000087-0000-1000-8000-0026BB765291";
              goto LABEL_113;
            case 38:
              v18 = "00000113-0000-1000-8000-0026BB765291";
              goto LABEL_113;
            case 39:
              v18 = "00000088-0000-1000-8000-0026BB765291";
              goto LABEL_113;
            case 40:
              v18 = "00000089-0000-1000-8000-0026BB765291";
              goto LABEL_113;
            case 41:
              v18 = "00000049-0000-1000-8000-0026BB765291";
              goto LABEL_113;
            case 42:
              v18 = "00000125-0000-1000-8000-0026BB765291";
              goto LABEL_113;
            case 43:
              v18 = "00000122-0000-1000-8000-0026BB765291";
              goto LABEL_113;
            case 44:
              v18 = "000000D8-0000-1000-8000-0026BB765291";
              goto LABEL_113;
            case 45:
              v18 = "0000008A-0000-1000-8000-0026BB765291";
              goto LABEL_113;
            case 46:
              v18 = "0000004A-0000-1000-8000-0026BB765291";
              goto LABEL_113;
            case 47:
              v18 = "000000D0-0000-1000-8000-0026BB765291";
              goto LABEL_113;
            case 48:
              v18 = "000000B7-0000-1000-8000-0026BB765291";
              goto LABEL_113;
            case 49:
              v18 = "0000020A-0000-1000-8000-0026BB765291";
              goto LABEL_113;
            case 50:
              v18 = "0000020F-0000-1000-8000-0026BB765291";
              goto LABEL_113;
            case 51:
              v18 = "0000008B-0000-1000-8000-0026BB765291";
              goto LABEL_113;
            case 52:
              v18 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_113:
              v17 = v18 - 32;
              break;
            default:
              break;
          }

          if (v16 == (v17 | 0x8000000000000000))
          {
            break;
          }

          v19 = sub_1D1E6904C();

          if (v19)
          {
            goto LABEL_4;
          }

          v10 = (v10 + 1) & v9;
          v11 = v10 >> 6;
          v12 = *(v5 + 8 * (v10 >> 6));
          v13 = 1 << v10;
          if ((v12 & (1 << v10)) == 0)
          {
            goto LABEL_117;
          }
        }
      }

      else
      {
LABEL_117:
        *(v5 + 8 * v11) = v12 | v13;
        *(*(v3 + 48) + v10) = v6;
        v20 = *(v3 + 16);
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v22;
      }

LABEL_4:
      if (++v4 == v23)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1D179B3D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6439E8, &unk_1D1E8EAD0);
    v3 = sub_1D1E6882C();
    v4 = 0;
    v5 = v3 + 56;
    v21 = v1;
    v22 = a1 + 32;
    while (2)
    {
      v6 = *(v22 + v4);
      v7 = *(v3 + 40);
      sub_1D1E6920C();
      CharacteristicKind.rawValue.getter();
      sub_1D1E678EC();

      result = sub_1D1E6926C();
      v9 = ~(-1 << *(v3 + 32));
      for (i = result & v9; ; i = (i + 1) & v9)
      {
        v11 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v11) == 0)
        {
          break;
        }

        v23 = *(*(v3 + 48) + i);
        v12 = CharacteristicKind.rawValue.getter();
        v14 = v13;
        if (v12 == CharacteristicKind.rawValue.getter() && v14 == v15)
        {

          goto LABEL_4;
        }

        v17 = sub_1D1E6904C();

        if (v17)
        {
          goto LABEL_4;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v11;
      *(*(v3 + 48) + i) = v6;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v21)
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
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1D179B598(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6439E0, &qword_1D1E72F60);
    v3 = sub_1D1E6882C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      v11 = *(v3 + 40);
      sub_1D1E6920C();
      v12 = dword_1D1E72F94[v10];
      sub_1D1E6924C();
      result = sub_1D1E6926C();
      v14 = ~(-1 << *(v3 + 32));
      v15 = result & v14;
      v16 = (result & v14) >> 6;
      v17 = *(v5 + 8 * v16);
      v18 = 1 << (result & v14);
      v19 = *(v3 + 48);
      if ((v18 & v17) != 0)
      {
        while (dword_1D1E72F94[*(v19 + v15)] != v12)
        {
          v15 = (v15 + 1) & v14;
          v16 = v15 >> 6;
          v17 = *(v5 + 8 * (v15 >> 6));
          v18 = 1 << v15;
          if (((1 << v15) & v17) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v16) = v18 | v17;
        *(v19 + v15) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1D179B6E8(uint64_t a1)
{
  v72 = sub_1D1E66A7C();
  v2 = *(v72 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v72);
  v65 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v71 = &v52 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v52 - v8;
  v9 = *(a1 + 16);
  if (!v9)
  {
    return MEMORY[0x1E69E7CD0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6439B8, &qword_1D1E72F48);
  v10 = sub_1D1E6882C();
  v11 = 0;
  v12 = v10 + 56;
  v13 = a1 + 32;
  v69 = v2 + 16;
  v55 = v2 + 32;
  v68 = (v2 + 8);
  v57 = v10 + 56;
  v56 = a1 + 32;
  v58 = v2;
  v54 = v9;
  v53 = v10;
  while (1)
  {
    v15 = *(v13 + 8 * v11);
    v16 = *(v10 + 40);
    sub_1D1E6920C();
    if (v15 == 2)
    {
      v17 = 2;
      goto LABEL_10;
    }

    if (v15 == 1)
    {
      v17 = 0;
LABEL_10:
      MEMORY[0x1D3892850](v17);
      goto LABEL_13;
    }

    MEMORY[0x1D3892850](1);
    sub_1D1E6922C();
    if (v15)
    {

      sub_1D176D4E8(v74, v15);
    }

LABEL_13:
    result = sub_1D1E6926C();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    v22 = *(v12 + 8 * (v20 >> 6));
    v23 = 1 << v20;
    if (((1 << v20) & v22) != 0)
    {
      break;
    }

LABEL_52:
    *(v12 + 8 * v21) = v22 | v23;
    *(*(v10 + 48) + 8 * v20) = v15;
    v49 = *(v10 + 16);
    v50 = __OFADD__(v49, 1);
    v51 = v49 + 1;
    if (v50)
    {
      goto LABEL_61;
    }

    *(v10 + 16) = v51;
LABEL_5:
    if (++v11 == v9)
    {
      return v10;
    }
  }

  v73 = ~v19;
  v64 = v15 - 1;
  v70 = v15 + 56;
  while (1)
  {
    v24 = *(*(v10 + 48) + 8 * v20);
    if (v24 == 2)
    {
      if (v15 != 2)
      {
        sub_1D1771B24(v15);
        v25 = 2;
        goto LABEL_23;
      }

      sub_1D1771B10(2);
      v14 = 2;
LABEL_4:
      sub_1D1771B10(v14);
      goto LABEL_5;
    }

    if (v24 == 1)
    {
      if (v15 != 1)
      {
        sub_1D1771B24(v15);
        v25 = 1;
LABEL_23:
        sub_1D1771B10(v25);
        v26 = v15;
        goto LABEL_24;
      }

      sub_1D1771B10(1);
      v14 = 1;
      goto LABEL_4;
    }

    if (v64 < 2)
    {
      goto LABEL_22;
    }

    if (v24)
    {
      break;
    }

    sub_1D1771B24(v48);
    sub_1D1771B24(0);
    sub_1D1771B10(0);
    sub_1D1771B10(v15);
    if (!v15)
    {
      v14 = 0;
      goto LABEL_4;
    }

    v26 = v15;
LABEL_24:
    result = sub_1D1771B10(v26);
LABEL_25:
    v20 = (v20 + 1) & v73;
    v21 = v20 >> 6;
    v22 = *(v12 + 8 * (v20 >> 6));
    v23 = 1 << v20;
    if ((v22 & (1 << v20)) == 0)
    {
      goto LABEL_52;
    }
  }

  if (!v15)
  {
    sub_1D1771B24(0);
    sub_1D1771B24(0);
    sub_1D1771B24(v24);
    sub_1D1771B10(v24);
    v26 = 0;
    goto LABEL_24;
  }

  if (v24 == v15)
  {

    sub_1D1771B10(v15);
    v14 = v15;
    goto LABEL_4;
  }

  if (*(v24 + 16) != *(v15 + 16))
  {
LABEL_22:
    sub_1D1771B24(v15);
    sub_1D1771B24(v24);
    v25 = v24;
    goto LABEL_23;
  }

  v27 = *(v24 + 56);
  v60 = v24 + 56;
  v28 = 1 << *(v24 + 32);
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  else
  {
    v29 = -1;
  }

  v30 = v29 & v27;
  sub_1D1771B24(v24);
  sub_1D1771B24(v15);
  sub_1D1771B24(v24);
  sub_1D1771B24(v15);
  result = sub_1D1771B24(v24);
  v31 = 0;
  v32 = (v28 + 63) >> 6;
  v61 = v32;
  v63 = v11;
  if (v30)
  {
    while (1)
    {
      v33 = __clz(__rbit64(v30));
      v62 = (v30 - 1) & v30;
LABEL_41:
      v36 = *(v24 + 48);
      v67 = *(v2 + 72);
      v37 = v59;
      v38 = v72;
      v66 = *(v2 + 16);
      v66(v59, v36 + v67 * (v33 | (v31 << 6)), v72);
      (*(v2 + 32))(v71, v37, v38);
      v39 = *(v15 + 40);
      sub_1D179C6F0(qword_1EE07DD78, MEMORY[0x1E69695A8]);
      v40 = sub_1D1E676DC();
      v41 = -1 << *(v15 + 32);
      v42 = v40 & ~v41;
      if (((*(v70 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
      {
        break;
      }

      v43 = ~v41;
      while (1)
      {
        v44 = v65;
        v45 = v72;
        v66(v65, *(v15 + 48) + v42 * v67, v72);
        sub_1D179C6F0(&qword_1EE07D170, MEMORY[0x1E69695A8]);
        v46 = sub_1D1E6775C();
        v47 = *v68;
        (*v68)(v44, v45);
        if (v46)
        {
          break;
        }

        v42 = (v42 + 1) & v43;
        if (((*(v70 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
        {
          goto LABEL_51;
        }
      }

      result = v47(v71, v72);
      v2 = v58;
      v30 = v62;
      v11 = v63;
      v12 = v57;
      v13 = v56;
      v32 = v61;
      if (!v62)
      {
        goto LABEL_36;
      }
    }

LABEL_51:
    sub_1D1771B10(v15);
    sub_1D1771B10(v24);
    sub_1D1771B10(v24);
    sub_1D1771B10(v15);
    sub_1D1771B10(v24);
    result = (*v68)(v71, v72);
    v2 = v58;
    v9 = v54;
    v10 = v53;
    v11 = v63;
    v12 = v57;
    v13 = v56;
    goto LABEL_25;
  }

LABEL_36:
  v34 = v31;
  while (1)
  {
    v31 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v31 >= v32)
    {
      sub_1D1771B10(v15);
      sub_1D1771B10(v15);
      sub_1D1771B10(v24);
      sub_1D1771B10(v24);
      sub_1D1771B10(v15);
      sub_1D1771B10(v24);
      v9 = v54;
      v10 = v53;
      goto LABEL_5;
    }

    v35 = *(v60 + 8 * v31);
    ++v34;
    if (v35)
    {
      v33 = __clz(__rbit64(v35));
      v62 = (v35 - 1) & v35;
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

uint64_t sub_1D179BE14(uint64_t a1)
{
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6439F8, &qword_1D1E72F70);
    v10 = sub_1D1E6882C();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_1D179C6F0(qword_1EE07DD78, MEMORY[0x1E69695A8]);
      v18 = sub_1D1E676DC();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_1D179C6F0(&qword_1EE07D170, MEMORY[0x1E69695A8]);
          v25 = sub_1D1E6775C();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1D179C134(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6439C8, &qword_1D1E8EB10);
    v3 = sub_1D1E6882C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      v11 = *(v3 + 40);
      sub_1D1E6920C();
      v12 = dword_1D1E7300C[v10];
      sub_1D1E6924C();
      result = sub_1D1E6926C();
      v14 = ~(-1 << *(v3 + 32));
      v15 = result & v14;
      v16 = (result & v14) >> 6;
      v17 = *(v5 + 8 * v16);
      v18 = 1 << (result & v14);
      v19 = *(v3 + 48);
      if ((v18 & v17) != 0)
      {
        while (dword_1D1E7300C[*(v19 + v15)] != v12)
        {
          v15 = (v15 + 1) & v14;
          v16 = v15 >> 6;
          v17 = *(v5 + 8 * (v15 >> 6));
          v18 = 1 << v15;
          if (((1 << v15) & v17) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v16) = v18 | v17;
        *(v19 + v15) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1D179C2A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6439D8, &qword_1D1E72F58);
    v3 = sub_1D1E6882C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = *(v3 + 40);
    v8 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = *(v6 + 4 * v4);
      result = MEMORY[0x1D3892820](v7, v12, 4);
      v14 = result & v8;
      v15 = (result & v8) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v8);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 4 * v14) != v12)
        {
          v14 = (v14 + 1) & v8;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 4 * v14) = v12;
        v9 = *(v3 + 16);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v11;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1D179C3D0(uint64_t a1)
{
  v2 = sub_1D1E66BAC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643A00, &qword_1D1E72F78);
    v10 = sub_1D1E6882C();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_1D179C6F0(&qword_1EC643A08, MEMORY[0x1E6969AD0]);
      v18 = sub_1D1E676DC();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_1D179C6F0(&qword_1EC643A10, MEMORY[0x1E6969AD0]);
          v25 = sub_1D1E6775C();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1D179C6F0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D179C73C()
{
  result = qword_1EC643970;
  if (!qword_1EC643970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643970);
  }

  return result;
}

void sub_1D179C820()
{
  sub_1D1E669FC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Event.TimeEvent.TimeComponents(319);
    if (v1 <= 0x3F)
    {
      sub_1D179C8A8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1D179C8A8()
{
  if (!qword_1EC643998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC643928, &qword_1D1E72CD0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC643998);
    }
  }
}

uint64_t getEnumTagSinglePayload for TileSize(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TileSize(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D179CA98()
{
  result = sub_1D1E66C5C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13HomeDataModel5EventO04DateD5ErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D179CB38(uint64_t a1)
{
  v2 = type metadata accessor for StaticService(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v26 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6439F0, &qword_1D1E72F68);
    v11 = sub_1D1E6882C();
    v12 = 0;
    v13 = v11 + 56;
    v14 = *(v3 + 80);
    v27 = v10;
    v28 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v3 + 72);
    while (2)
    {
      sub_1D179D3DC(v28 + v15 * v12, v9, type metadata accessor for StaticService);
      v16 = *(v11 + 40);
      sub_1D1E6920C();
      StaticService.hash(into:)(v29);
      v17 = sub_1D1E6926C();
      v18 = ~(-1 << *(v11 + 32));
      for (i = v17 & v18; ; i = (i + 1) & v18)
      {
        v20 = *(v13 + 8 * (i >> 6));
        if (((1 << i) & v20) == 0)
        {
          break;
        }

        sub_1D179D3DC(*(v11 + 48) + i * v15, v7, type metadata accessor for StaticService);
        v21 = _s13HomeDataModel13StaticServiceV2eeoiySbAC_ACtFZ_0(v7, v9);
        sub_1D179D444(v7, type metadata accessor for StaticService);
        if (v21)
        {
          sub_1D179D444(v9, type metadata accessor for StaticService);
          goto LABEL_4;
        }
      }

      *(v13 + 8 * (i >> 6)) = (1 << i) | v20;
      result = sub_1D179AC74(v9, *(v11 + 48) + i * v15, type metadata accessor for StaticService);
      v23 = *(v11 + 16);
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (!v24)
      {
        *(v11 + 16) = v25;
LABEL_4:
        if (++v12 == v27)
        {
          return v11;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1D179CDAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6439B0, &qword_1D1E72F40);
    v3 = sub_1D1E6882C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = *(v3 + 40);
    v8 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = *(v6 + 8 * v4);
      result = sub_1D1E691FC();
      v14 = result & v8;
      v15 = (result & v8) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v8);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 8 * v14) != v12)
        {
          v14 = (v14 + 1) & v8;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 8 * v14) = v12;
        v9 = *(v3 + 16);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v11;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

void sub_1D179CEF4(unint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    v10 = a3;
    v11 = a2;
    v12 = sub_1D1E6873C();
    a2 = v11;
    a3 = v10;
    if (v12)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
      v7 = sub_1D1E6882C();
      v8 = v5 & 0xFFFFFFFFFFFFFF8;
      if (!v6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = sub_1D1E6873C();
      if (!v9)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v7 = MEMORY[0x1E69E7CD0];
  v8 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = *(v8 + 16);
  if (!v9)
  {
    return;
  }

LABEL_9:
  v13 = v7 + 56;
  v48 = v9;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v14 = 0;
    v44 = v5;
    while (1)
    {
      v15 = MEMORY[0x1D3891EF0](v14, v5);
      v16 = __OFADD__(v14++, 1);
      if (v16)
      {
        break;
      }

      v17 = v15;
      v18 = *(v7 + 40);
      v19 = sub_1D1E684EC();
      v20 = -1 << *(v7 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      v23 = *(v13 + 8 * (v21 >> 6));
      v24 = 1 << v21;
      if (((1 << v21) & v23) != 0)
      {
        v25 = ~v20;
        sub_1D1741B10(0, a4, a5);
        while (1)
        {
          v26 = *(*(v7 + 48) + 8 * v21);
          v27 = sub_1D1E684FC();

          if (v27)
          {
            break;
          }

          v21 = (v21 + 1) & v25;
          v22 = v21 >> 6;
          v23 = *(v13 + 8 * (v21 >> 6));
          v24 = 1 << v21;
          if (((1 << v21) & v23) == 0)
          {
            v9 = v48;
            v5 = v44;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v9 = v48;
        v5 = v44;
        if (v14 == v48)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v13 + 8 * v22) = v24 | v23;
        *(*(v7 + 48) + 8 * v21) = v17;
        v28 = *(v7 + 16);
        v16 = __OFADD__(v28, 1);
        v29 = v28 + 1;
        if (v16)
        {
          goto LABEL_32;
        }

        *(v7 + 16) = v29;
        if (v14 == v9)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v30 = 0;
    v45 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v30 != v45)
    {
      v31 = *(v7 + 40);
      v32 = *(v5 + 32 + 8 * v30);
      v33 = sub_1D1E684EC();
      v34 = -1 << *(v7 + 32);
      v35 = v33 & ~v34;
      v36 = v35 >> 6;
      v37 = *(v13 + 8 * (v35 >> 6));
      v38 = 1 << v35;
      if (((1 << v35) & v37) != 0)
      {
        v39 = ~v34;
        sub_1D1741B10(0, a4, a5);
        while (1)
        {
          v40 = *(*(v7 + 48) + 8 * v35);
          v41 = sub_1D1E684FC();

          if (v41)
          {
            break;
          }

          v35 = (v35 + 1) & v39;
          v36 = v35 >> 6;
          v37 = *(v13 + 8 * (v35 >> 6));
          v38 = 1 << v35;
          if (((1 << v35) & v37) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v13 + 8 * v36) = v38 | v37;
        *(*(v7 + 48) + 8 * v35) = v32;
        v42 = *(v7 + 16);
        v16 = __OFADD__(v42, 1);
        v43 = v42 + 1;
        if (v16)
        {
          goto LABEL_34;
        }

        *(v7 + 16) = v43;
      }

      if (++v30 == v48)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_1D179D1E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6439C0, &qword_1D1E72F50);
    v3 = sub_1D1E6882C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v7 = *(v6 + v4);
      v8 = *(v3 + 40);
      sub_1D1E6920C();
      sub_1D1E6922C();
      if (v7 != 28)
      {
        v9 = dword_1D1E7300C[v7];
        sub_1D1E6924C();
      }

      result = sub_1D1E6926C();
      v11 = -1 << *(v3 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      v16 = *(v3 + 48);
      if (((1 << v12) & v14) != 0)
      {
        v17 = ~v11;
        do
        {
          v18 = *(v16 + v12);
          if (v18 == 28)
          {
            if (v7 == 28)
            {
              goto LABEL_3;
            }
          }

          else if (v7 != 28 && dword_1D1E7300C[v18] == dword_1D1E7300C[v7])
          {
            goto LABEL_3;
          }

          v12 = (v12 + 1) & v17;
          v13 = v12 >> 6;
          v14 = *(v5 + 8 * (v12 >> 6));
          v15 = 1 << v12;
        }

        while ((v14 & (1 << v12)) != 0);
      }

      *(v5 + 8 * v13) = v14 | v15;
      *(v16 + v12) = v7;
      v19 = *(v3 + 16);
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        break;
      }

      *(v3 + 16) = v21;
LABEL_3:
      if (++v4 == v1)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1D179D3DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D179D444(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1D179D758(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  v8 = *a3;
  swift_beginAccess();
  if (*(a1 + v8))
  {
    sub_1D1741B10(0, a4, a5);

    v9 = sub_1D1E67BFC();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t sub_1D179D818(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = a3;
  if (a3)
  {
    sub_1D1741B10(0, a4, a5);
    v7 = sub_1D1E67C1C();
  }

  v9 = *a6;
  swift_beginAccess();
  v10 = *(a1 + v9);
  *(a1 + v9) = v7;
}

void sub_1D179DBC0(uint64_t a1, uint64_t *a2, uint64_t (*a3)(unint64_t))
{
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v3 + v5);
  if (!v6)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  v14 = v3;
  if (v6 >> 62)
  {
LABEL_20:
    v7 = sub_1D1E6873C();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  while (1)
  {
    if (v7 == v8)
    {

      return;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1D3891EF0](v8, v6);
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v9 = *(v6 + 8 * v8 + 32);
    }

    v10 = v9;
    sub_1D1741B10(0, &qword_1EE07B260, 0x1E69E58C0);
    v11 = sub_1D1E684FC();

    if (v11)
    {
      break;
    }

    if (__OFADD__(v8++, 1))
    {
      goto LABEL_19;
    }
  }

  swift_beginAccess();
  if (!*(v14 + v5))
  {
    goto LABEL_22;
  }

  v13 = a3(v8);
  swift_endAccess();
}

uint64_t sub_1D179DDC8(void *a1, uint64_t *a2)
{
  v3 = v2;
  v5 = *a2;
  result = swift_beginAccess();
  if (*(v3 + v5))
  {
    v7 = a1;
    MEMORY[0x1D3891220]();
    if (*((*(v3 + v5) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v5) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v8 = *((*(v3 + v5) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1D1E67C5C();
    }

    sub_1D1E67CAC();
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D179DFE0()
{
  v1 = v0;
  sub_1D1E6884C();
  MEMORY[0x1D3890F70](0xD00000000000001FLL, 0x80000001D1EB8FE0);
  if (*(v0 + OBJC_IVAR____TtC13HomeDataModel18MockTriggerBuilder_name + 8))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13HomeDataModel18MockTriggerBuilder_name);
    v3 = *(v0 + OBJC_IVAR____TtC13HomeDataModel18MockTriggerBuilder_name + 8);
  }

  else
  {
    v3 = 0xE400000000000000;
    v2 = 1819047278;
  }

  MEMORY[0x1D3890F70](v2, v3);

  MEMORY[0x1D3890F70](0x7665202020200A2CLL, 0xEE00203A73746E65);
  v4 = OBJC_IVAR____TtC13HomeDataModel18MockTriggerBuilder_events;
  swift_beginAccess();
  v10 = *(v1 + v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643B60, &qword_1D1E73098);
  v5 = sub_1D1E6789C();
  MEMORY[0x1D3890F70](v5);

  MEMORY[0x1D3890F70](0x746361202020200ALL, 0xEE00203A736E6F69);
  v6 = [*(v1 + OBJC_IVAR____TtC13HomeDataModel18MockTriggerBuilder_triggerOwnedActionSet) actions];
  if (v6)
  {
    v7 = v6;
    sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8);
    sub_1D179E328();
    sub_1D1E6816C();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643B68, &qword_1D1E730A0);
  v8 = sub_1D1E6789C();
  MEMORY[0x1D3890F70](v8);

  MEMORY[0x1D3890F70](32010, 0xE200000000000000);
  return 0;
}

id sub_1D179E220()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MockTriggerBuilder();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D179E328()
{
  result = qword_1EE079BE0;
  if (!qword_1EE079BE0)
  {
    sub_1D1741B10(255, &qword_1EE079BF0, 0x1E696CAE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE079BE0);
  }

  return result;
}

uint64_t sub_1D179E3B0()
{
  v0 = sub_1D1E6709C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D1E6701C();
  __swift_allocate_value_buffer(v5, qword_1EC643BE0);
  __swift_project_value_buffer(v5, qword_1EC643BE0);
  if (qword_1EC642130 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_1EC643BF8);
  (*(v1 + 16))(v4, v6, v0);
  return sub_1D1E66FEC();
}

uint64_t sub_1D179E524()
{
  v0 = sub_1D1E6709C();
  __swift_allocate_value_buffer(v0, qword_1EC643BF8);
  __swift_project_value_buffer(v0, qword_1EC643BF8);
  return sub_1D1E6708C();
}

uint64_t sub_1D179E5E8@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t Logger.Automations.Operation.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1D1E68C2C();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1D179E71C(char *a1, char *a2)
{
  if (qword_1D1E731A0[*a1] == qword_1D1E731A0[*a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1D1E6904C();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1D179E784()
{
  v1 = *v0;
  sub_1D1E6920C();
  v2 = qword_1D1E731A0[v1];
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t sub_1D179E7E0()
{
  v1 = qword_1D1E731A0[*v0];
  sub_1D1E678EC();
}

uint64_t sub_1D179E820()
{
  v1 = *v0;
  sub_1D1E6920C();
  v2 = qword_1D1E731A0[v1];
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t sub_1D179E878@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return Logger.Automations.Operation.init(rawValue:)(a1);
}

uint64_t _s2os6LoggerV13HomeDataModelE11AutomationsO8didBegin_7trigger2idAA23OSSignpostIntervalStateCAF9OperationO_AD14TriggerBuilderCAA0K2IDVtFZ_0(char *a1, uint64_t a2, uint64_t a3)
{
  v35 = a3;
  v5 = sub_1D1E66FDC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34[0] = *a1;
  if (qword_1EC642130 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC643BF8);

  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6835C();

  v13 = os_log_type_enabled(v11, v12);
  v34[1] = a2;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v36 = v15;
    *v14 = 136315394;
    v16 = sub_1D1B1312C(qword_1D1E731A0[v34[0]], 0xE800000000000000, &v36);

    *(v14 + 4) = v16;
    *(v14 + 12) = 2080;
    v17 = TriggerBuilder.debugDescription.getter();
    v19 = sub_1D1B1312C(v17, v18, &v36);

    *(v14 + 14) = v19;
    _os_log_impl(&dword_1D16EC000, v11, v12, "Began %s trigger %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v15, -1, -1);
    MEMORY[0x1D3893640](v14, -1, -1);
  }

  if (qword_1EC642128 != -1)
  {
    swift_once();
  }

  v20 = sub_1D1E6701C();
  __swift_project_value_buffer(v20, qword_1EC643BE0);

  v21 = sub_1D1E66FFC();
  v22 = sub_1D1E683EC();

  if (sub_1D1E6855C())
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v36 = v24;
    *v23 = 136315394;
    v25 = sub_1D1B1312C(qword_1D1E731A0[v34[0]], 0xE800000000000000, &v36);

    *(v23 + 4) = v25;
    *(v23 + 12) = 2080;
    v26 = TriggerBuilder.debugDescription.getter();
    v28 = sub_1D1B1312C(v26, v27, &v36);

    *(v23 + 14) = v28;
    v29 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v21, v22, v29, "TriggerBuilderCommit", "Began %s trigger %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v24, -1, -1);
    MEMORY[0x1D3893640](v23, -1, -1);
  }

  (*(v6 + 16))(v9, v35, v5);
  v30 = sub_1D1E6705C();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  return sub_1D1E6704C();
}

uint64_t _s2os6LoggerV13HomeDataModelE11AutomationsO9didFinish_5state5erroryAF9OperationO_AA23OSSignpostIntervalStateCs5Error_pSgtFZ_0(char *a1, uint64_t a2, void *a3)
{
  v6 = sub_1D1E6702C();
  v48 = *(v6 - 8);
  v7 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v47 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D1E66FDC();
  v49 = *(v9 - 8);
  v10 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  if (a3)
  {
    v14 = a3;
    if (qword_1EC642130 != -1)
    {
      swift_once();
    }

    v15 = sub_1D1E6709C();
    __swift_project_value_buffer(v15, qword_1EC643BF8);
    v16 = a3;
    v17 = sub_1D1E6707C();
    v18 = sub_1D1E6833C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v45 = a2;
      v21 = v20;
      v22 = swift_slowAlloc();
      v46 = v9;
      v23 = v22;
      v50 = v22;
      *v19 = 136315394;
      v24 = sub_1D1B1312C(qword_1D1E731A0[v13], 0xE800000000000000, &v50);
      v25 = v6;
      v26 = v24;

      *(v19 + 4) = v26;
      v6 = v25;
      *(v19 + 12) = 2112;
      v27 = a3;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 14) = v28;
      *v21 = v28;
      _os_log_impl(&dword_1D16EC000, v17, v18, "Failed when %s trigger with error: %@", v19, 0x16u);
      sub_1D179F28C(v21);
      MEMORY[0x1D3893640](v21, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v23);
      v9 = v46;
      MEMORY[0x1D3893640](v23, -1, -1);
      MEMORY[0x1D3893640](v19, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1EC642130 != -1)
    {
      swift_once();
    }

    v29 = sub_1D1E6709C();
    __swift_project_value_buffer(v29, qword_1EC643BF8);
    v30 = sub_1D1E6707C();
    v31 = sub_1D1E6835C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v46 = v6;
      v33 = v32;
      v34 = swift_slowAlloc();
      v50 = v34;
      *v33 = 136315138;
      v35 = sub_1D1B1312C(qword_1D1E731A0[v13], 0xE800000000000000, &v50);

      *(v33 + 4) = v35;
      _os_log_impl(&dword_1D16EC000, v30, v31, "Succeeded %s trigger", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x1D3893640](v34, -1, -1);
      v36 = v33;
      v6 = v46;
      MEMORY[0x1D3893640](v36, -1, -1);
    }
  }

  if (qword_1EC642128 != -1)
  {
    swift_once();
  }

  v37 = sub_1D1E6701C();
  __swift_project_value_buffer(v37, qword_1EC643BE0);
  v38 = sub_1D1E66FFC();
  sub_1D1E6703C();
  v39 = sub_1D1E683DC();
  if (sub_1D1E6855C())
  {

    v40 = v47;
    sub_1D1E6706C();

    if ((*(v48 + 88))(v40, v6) == *MEMORY[0x1E69E93E8])
    {
      v41 = "[Error] Interval already ended";
    }

    else
    {
      (*(v48 + 8))(v40, v6);
      v41 = "";
    }

    v42 = swift_slowAlloc();
    *v42 = 0;
    v43 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v38, v39, v43, "TriggerBuilderCommit", v41, v42, 2u);
    MEMORY[0x1D3893640](v42, -1, -1);
  }

  return (*(v49 + 8))(v12, v9);
}

unint64_t sub_1D179F218()
{
  result = qword_1EC643C10;
  if (!qword_1EC643C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643C10);
  }

  return result;
}

uint64_t sub_1D179F28C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644000, &unk_1D1E75B00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D179F2F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000001ALL;
  v3 = "5291";
  v4 = a1;
  if (a1 == 5)
  {
    v5 = 0xD00000000000001BLL;
  }

  else
  {
    v5 = 0xD000000000000021;
  }

  if (a1 == 5)
  {
    v6 = "HMActionSetTypeUserDefined";
  }

  else
  {
    v6 = "HMActionSetTypeTriggerOwned";
  }

  if (a1 == 3)
  {
    v7 = 0xD000000000000014;
  }

  else
  {
    v7 = 0xD00000000000001ALL;
  }

  if (a1 == 3)
  {
    v8 = "HMActionSetTypeWakeUp";
  }

  else
  {
    v8 = "HMActionSetTypeSleep";
  }

  if (v4 <= 4)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  if (v4 <= 4)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  v11 = 0xD00000000000001CLL;
  if (v4 == 1)
  {
    v12 = "HMActionSetTypeHomeArrival";
  }

  else
  {
    v11 = 0xD000000000000015;
    v12 = "HMActionSetTypeHomeDeparture";
  }

  if (!v4)
  {
    v11 = 0xD00000000000001ALL;
    v12 = "5291";
  }

  if (v4 <= 2)
  {
    v13 = v12;
  }

  else
  {
    v11 = v9;
    v13 = v10;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xD00000000000001CLL;
        v3 = "HMActionSetTypeHomeArrival";
      }

      else
      {
        v2 = 0xD000000000000015;
        v3 = "HMActionSetTypeHomeDeparture";
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v2 = 0xD00000000000001BLL;
      v3 = "HMActionSetTypeUserDefined";
    }

    else
    {
      v2 = 0xD000000000000021;
      v3 = "HMActionSetTypeTriggerOwned";
    }
  }

  else if (a2 == 3)
  {
    v2 = 0xD000000000000014;
    v3 = "HMActionSetTypeWakeUp";
  }

  else
  {
    v3 = "HMActionSetTypeSleep";
  }

  if (v11 == v2 && (v13 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1D1E6904C();
  }

  return v14 & 1;
}

uint64_t sub_1D179F48C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "00-8000-0026BB765291";
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      v6 = "17-A590-755E1AAC02AE";
      v7 = "73-8FBD-0E8978A33403";
      v8 = a1 == 6;
    }

    else
    {
      v6 = "60-AD68-D91053B75F44";
      v7 = "7E-BE63-1D00B1500545";
      v8 = a1 == 4;
    }

    if (v8)
    {
      v5 = v6;
    }

    else
    {
      v5 = v7;
    }
  }

  else
  {
    v3 = "73-A058-C5E64BC487B2";
    if (a1 != 2)
    {
      v3 = "CE-986D-63B28F62C9E3";
    }

    v4 = "13-AA62-01754F256DD5";
    if (!a1)
    {
      v4 = "00-8000-0026BB765291";
    }

    if (a1 <= 1u)
    {
      v5 = v4;
    }

    else
    {
      v5 = v3;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v9 = "3E68745D-F0E1-4B73-8FBD-0E8978A33403";
      }

      else
      {
        v9 = "7FADD792-61A4-4340-A849-215882E2F008";
      }
    }

    else if (a2 == 4)
    {
      v9 = "430C9F25-44E0-4F7E-BE63-1D00B1500545";
    }

    else
    {
      v9 = "63489665-5E39-4C17-A590-755E1AAC02AE";
    }

    goto LABEL_30;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v9 = "563F7D20-6AFC-44CE-986D-63B28F62C9E3";
    }

    else
    {
      v9 = "7A5BD1AB-6478-4560-AD68-D91053B75F44";
    }

LABEL_30:
    v2 = (v9 - 32);
    goto LABEL_31;
  }

  if (a2)
  {
    v2 = "13-AA62-01754F256DD5";
  }

LABEL_31:
  if ((v5 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1D1E6904C();
  }

  return v10 & 1;
}

uint64_t sub_1D179F634(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x676E6979616C70;
    }

    else
    {
      v4 = 0x646573756170;
    }

    if (v2)
    {
      v3 = 0xE700000000000000;
    }

    else
    {
      v3 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xD000000000000014;
    v3 = 0x80000001D1EB5A20;
  }

  else if (a1 == 3)
  {
    v3 = 0x80000001D1EB5A40;
    v4 = 0xD000000000000015;
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 1702259052;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x676E6979616C70;
    }

    else
    {
      v6 = 0x646573756170;
    }

    if (a2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }

    if (v4 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0x80000001D1EB5A20;
    if (v4 != 0xD000000000000014)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x80000001D1EB5A40;
    if (v4 != 0xD000000000000015)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    if (v4 != 1702259052)
    {
LABEL_31:
      v7 = sub_1D1E6904C();
      goto LABEL_32;
    }
  }

  if (v3 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_1D179F7D4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE300000000000000;
  v5 = 7172208;
  if (a1 != 6)
  {
    v5 = 0x6172676F7263696DLL;
    v4 = 0xEE00335E6D2F736DLL;
  }

  v6 = 0xE700000000000000;
  v7 = 0x73646E6F636573;
  if (a1 != 4)
  {
    v7 = 7894380;
    v6 = 0xE300000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x61746E6563726570;
  if (a1 == 2)
  {
    v9 = 0xEA00000000006567;
  }

  else
  {
    v8 = 0x6572676564637261;
    v9 = 0xEA00000000007365;
  }

  v10 = 0x65686E6572686166;
  if (a1)
  {
    v3 = 0xEA00000000007469;
  }

  else
  {
    v10 = 0x737569736C6563;
  }

  if (a1 > 1u)
  {
    v3 = v9;
  }

  else
  {
    v8 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v4;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xE300000000000000;
        if (v11 != 7172208)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v13 = 0xEE00335E6D2F736DLL;
        if (v11 != 0x6172676F7263696DLL)
        {
LABEL_46:
          v14 = sub_1D1E6904C();
          goto LABEL_47;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE700000000000000;
      if (v11 != 0x73646E6F636573)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v13 = 0xE300000000000000;
      if (v11 != 7894380)
      {
        goto LABEL_46;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xEA00000000006567;
      if (v11 != 0x61746E6563726570)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v13 = 0xEA00000000007365;
      if (v11 != 0x6572676564637261)
      {
        goto LABEL_46;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xEA00000000007469;
    if (v11 != 0x65686E6572686166)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v13 = 0xE700000000000000;
    if (v11 != 0x737569736C6563)
    {
      goto LABEL_46;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_46;
  }

  v14 = 1;
LABEL_47:

  return v14 & 1;
}

uint64_t sub_1D179FA5C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x726F737365636361;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x72616F6268736164;
    }

    else
    {
      v5 = 1836019570;
    }

    if (v4 == 2)
    {
      v6 = 0xE900000000000064;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x79726F6765746163;
    }

    else
    {
      v5 = 0x726F737365636361;
    }

    if (v4)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE900000000000079;
    }
  }

  v7 = 0xE900000000000079;
  v8 = 0x72616F6268736164;
  if (a2 != 2)
  {
    v8 = 1836019570;
    v2 = 0xE400000000000000;
  }

  if (a2)
  {
    v3 = 0x79726F6765746163;
    v7 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v7;
  }

  else
  {
    v10 = v2;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D1E6904C();
  }

  return v11 & 1;
}

uint64_t sub_1D179FB90(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x736172656D6163;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6C6F72746E6F63;
    }

    else
    {
      v4 = 0x736172656D6163;
    }

    v3 = 0xE700000000000000;
  }

  else if (a1 == 2)
  {
    v4 = 0x657469726F766166;
    v3 = 0xE900000000000073;
  }

  else if (a1 == 3)
  {
    v3 = 0xE600000000000000;
    v4 = 0x73656E656373;
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x73676E6974746573;
  }

  if (a2 <= 1u)
  {
    v5 = 0xE700000000000000;
    v6 = 0xE700000000000000;
    v7 = 0x6C6F72746E6F63;
    v8 = a2 == 0;
  }

  else
  {
    v2 = 0x657469726F766166;
    v5 = 0xE900000000000073;
    v6 = 0xE600000000000000;
    v7 = 0x73656E656373;
    if (a2 != 3)
    {
      v7 = 0x73676E6974746573;
      v6 = 0xE800000000000000;
    }

    v8 = a2 == 2;
  }

  if (v8)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (v8)
  {
    v10 = v5;
  }

  else
  {
    v10 = v6;
  }

  if (v4 == v9 && v3 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D1E6904C();
  }

  return v11 & 1;
}

uint64_t sub_1D179FD0C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 4u)
  {
    v11 = 0xE400000000000000;
    v12 = 0x3631746E6975;
    v13 = 0x3233746E6975;
    if (a1 != 3)
    {
      v13 = 0x3436746E6975;
    }

    if (a1 != 2)
    {
      v12 = v13;
    }

    v14 = 0x38746E6975;
    if (a1)
    {
      v11 = 0xE500000000000000;
    }

    else
    {
      v14 = 1819242338;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v12;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = 0xE600000000000000;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x676E69727473;
    v5 = 947285108;
    if (a1 != 9)
    {
      v5 = 1635017060;
    }

    if (a1 != 8)
    {
      v4 = v5;
      v3 = 0xE400000000000000;
    }

    v6 = 0xE300000000000000;
    v7 = 7630441;
    v8 = 0x3233746E69;
    if (a1 != 6)
    {
      v8 = 0x74616F6C66;
    }

    if (a1 != 5)
    {
      v7 = v8;
      v6 = 0xE500000000000000;
    }

    if (a1 <= 7u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 7)
    {
      v10 = v6;
    }

    else
    {
      v10 = v3;
    }
  }

  if (a2 <= 4u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v15 = 0xE500000000000000;
        if (v9 != 0x38746E6975)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v15 = 0xE400000000000000;
        if (v9 != 1819242338)
        {
          goto LABEL_62;
        }
      }
    }

    else
    {
      v15 = 0xE600000000000000;
      if (a2 == 2)
      {
        if (v9 != 0x3631746E6975)
        {
          goto LABEL_62;
        }
      }

      else if (a2 == 3)
      {
        if (v9 != 0x3233746E6975)
        {
          goto LABEL_62;
        }
      }

      else if (v9 != 0x3436746E6975)
      {
        goto LABEL_62;
      }
    }
  }

  else if (a2 > 7u)
  {
    if (a2 == 8)
    {
      v15 = 0xE600000000000000;
      if (v9 != 0x676E69727473)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v15 = 0xE400000000000000;
      if (a2 == 9)
      {
        if (v9 != 947285108)
        {
          goto LABEL_62;
        }
      }

      else if (v9 != 1635017060)
      {
LABEL_62:
        v16 = sub_1D1E6904C();
        goto LABEL_63;
      }
    }
  }

  else if (a2 == 5)
  {
    v15 = 0xE300000000000000;
    if (v9 != 7630441)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v15 = 0xE500000000000000;
    if (a2 == 6)
    {
      if (v9 != 0x3233746E69)
      {
        goto LABEL_62;
      }
    }

    else if (v9 != 0x74616F6C66)
    {
      goto LABEL_62;
    }
  }

  if (v10 != v15)
  {
    goto LABEL_62;
  }

  v16 = 1;
LABEL_63:

  return v16 & 1;
}

uint64_t sub_1D179FFDC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE300000000000000;
  v5 = 7894380;
  if (a1 != 5)
  {
    v5 = 0x7373656C74696E75;
    v4 = 0xE800000000000000;
  }

  v6 = 0x6572676564637261;
  v7 = 0xEA00000000007365;
  if (a1 != 3)
  {
    v6 = 0x73646E6F636573;
    v7 = 0xE700000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x65686E6572686166;
  v9 = 0xEA00000000007469;
  if (a1 != 1)
  {
    v8 = 0x61746E6563726570;
    v9 = 0xEA00000000006567;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x737569736C6563;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xEA00000000007469;
        if (v10 != 0x65686E6572686166)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xEA00000000006567;
        if (v10 != 0x61746E6563726570)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x737569736C6563)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE300000000000000;
      if (v10 != 7894380)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x7373656C74696E75)
      {
LABEL_39:
        v13 = sub_1D1E6904C();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xEA00000000007365;
    if (v10 != 0x6572676564637261)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x73646E6F636573)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_1D17A021C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000656D61;
  v3 = 0x4E79616C70736944;
  v4 = a1;
  if (a1 > 4u)
  {
    v13 = 0x746169636F737341;
    v14 = 0xEE00657079546465;
    v15 = 0x496564756C636E49;
    v16 = 0xEF7375746174536ELL;
    if (a1 != 8)
    {
      v15 = 0x6564644165746144;
      v16 = 0xE900000000000064;
    }

    if (a1 != 7)
    {
      v13 = v15;
      v14 = v16;
    }

    v17 = 0xD000000000000017;
    v18 = 0x80000001D1EB8390;
    if (a1 != 5)
    {
      v17 = 0x657A6953656C6954;
      v18 = 0xE800000000000000;
    }

    if (a1 <= 6u)
    {
      v11 = v17;
    }

    else
    {
      v11 = v13;
    }

    if (v4 <= 6)
    {
      v12 = v18;
    }

    else
    {
      v12 = v14;
    }
  }

  else
  {
    v5 = 0x6E6564496E6F6349;
    v6 = 0xEE00726569666974;
    v7 = 0xE800000000000000;
    v8 = 0x657469726F766146;
    if (a1 != 3)
    {
      v8 = 0x61446E4F776F6853;
      v7 = 0xEF6472616F626873;
    }

    if (a1 != 2)
    {
      v5 = v8;
      v6 = v7;
    }

    v9 = 0xE600000000000000;
    v10 = 0x44496D6F6F52;
    if (!a1)
    {
      v10 = 0x4E79616C70736944;
      v9 = 0xEB00000000656D61;
    }

    if (a1 <= 1u)
    {
      v11 = v10;
    }

    else
    {
      v11 = v5;
    }

    if (v4 <= 1)
    {
      v12 = v9;
    }

    else
    {
      v12 = v6;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v2 = 0x80000001D1EB8390;
        if (v11 != 0xD000000000000017)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v2 = 0xE800000000000000;
        if (v11 != 0x657A6953656C6954)
        {
          goto LABEL_54;
        }
      }

      goto LABEL_51;
    }

    if (a2 == 7)
    {
      v19 = 0x746169636F737341;
      v20 = 0x657079546465;
      goto LABEL_45;
    }

    if (a2 == 8)
    {
      v2 = 0xEF7375746174536ELL;
      if (v11 != 0x496564756C636E49)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }

    v3 = 0x6564644165746144;
    v2 = 0xE900000000000064;
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 != 2)
      {
        if (a2 == 3)
        {
          v2 = 0xE800000000000000;
          if (v11 != 0x657469726F766146)
          {
            goto LABEL_54;
          }
        }

        else
        {
          v2 = 0xEF6472616F626873;
          if (v11 != 0x61446E4F776F6853)
          {
            goto LABEL_54;
          }
        }

        goto LABEL_51;
      }

      v19 = 0x6E6564496E6F6349;
      v20 = 0x726569666974;
LABEL_45:
      v2 = v20 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      if (v11 != v19)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }

    if (a2)
    {
      v2 = 0xE600000000000000;
      if (v11 != 0x44496D6F6F52)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }
  }

  if (v11 != v3)
  {
LABEL_54:
    v21 = sub_1D1E6904C();
    goto LABEL_55;
  }

LABEL_51:
  if (v12 != v2)
  {
    goto LABEL_54;
  }

  v21 = 1;
LABEL_55:

  return v21 & 1;
}

uint64_t sub_1D17A0574(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x6C62616C69617661;
  v4 = a1;
  v5 = 0x646C6F436F6F74;
  v6 = 0xE600000000000000;
  if (a1 == 5)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v5 = 0x746F486F6F74;
  }

  v7 = 0xD000000000000012;
  v8 = 0x80000001D1EB5AA0;
  if (a1 != 3)
  {
    v7 = 0x6341746365746564;
    v8 = 0xEE00797469766974;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x6863616552746F6ELL;
  v10 = 0xEC000000656C6261;
  if (a1 != 1)
  {
    v9 = 2037609826;
    v10 = 0xE400000000000000;
  }

  if (!a1)
  {
    v9 = 0x6C62616C69617661;
    v10 = 0xE900000000000065;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEC000000656C6261;
        if (v11 != 0x6863616552746F6ELL)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0xE400000000000000;
        if (v11 != 2037609826)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xE700000000000000;
        if (v11 != 0x646C6F436F6F74)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0xE600000000000000;
        if (v11 != 0x746F486F6F74)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }

    if (a2 == 3)
    {
      v2 = 0x80000001D1EB5AA0;
      if (v11 != 0xD000000000000012)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v3 = 0x6341746365746564;
    v2 = 0xEE00797469766974;
  }

  if (v11 != v3)
  {
LABEL_37:
    v13 = sub_1D1E6904C();
    goto LABEL_38;
  }

LABEL_34:
  if (v12 != v2)
  {
    goto LABEL_37;
  }

  v13 = 1;
LABEL_38:

  return v13 & 1;
}

uint64_t sub_1D17A07A0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "dentifierValveSideJets";
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = "47-BAC7-A7CF9EBD35EA";
    }

    else
    {
      v3 = "dentifierValveSideJets";
    }
  }

  else if (a1 == 2)
  {
    v3 = "F6-8E38-5291C7FB7545";
  }

  else if (a1 == 3)
  {
    v3 = "AC-A277-EA6D097A190C";
  }

  else
  {
    v3 = "4C-B87C-C35305FA9FFC";
  }

  v4 = "F6-8E38-5291C7FB7545";
  v5 = "AC-A277-EA6D097A190C";
  if (a2 != 3)
  {
    v5 = "4C-B87C-C35305FA9FFC";
  }

  if (a2 != 2)
  {
    v4 = v5;
  }

  if (a2)
  {
    v2 = "47-BAC7-A7CF9EBD35EA";
  }

  if (a2 > 1u)
  {
    v2 = v4;
  }

  if ((v3 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_1D1E6904C();
  }

  return v6 & 1;
}

uint64_t StaticTrigger.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t StaticTrigger.name.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticTrigger() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for StaticTrigger()
{
  result = qword_1EC643C38;
  if (!qword_1EC643C38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StaticTrigger.events.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticTrigger() + 28));
}

uint64_t StaticTrigger.actions.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticTrigger() + 32));
}

uint64_t StaticTrigger.activatedScenes.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticTrigger() + 36));
}

int *StaticTrigger.init(id:name:enabled:events:actions:activatedScenes:executesOnce:deletesAfterExecution:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10)
{
  v19 = sub_1D1E66A7C();
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  result = type metadata accessor for StaticTrigger();
  v21 = (a9 + result[5]);
  *v21 = a2;
  v21[1] = a3;
  *(a9 + result[7]) = a5;
  *(a9 + result[8]) = a6;
  *(a9 + result[9]) = a7;
  *(a9 + result[10]) = a8;
  *(a9 + result[6]) = a4;
  *(a9 + result[11]) = a10;
  return result;
}

uint64_t StaticTrigger.hash(into:)(__int128 *a1)
{
  sub_1D1E66A7C();
  sub_1D17A6A50(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v3 = type metadata accessor for StaticTrigger();
  v4 = (v1 + v3[5]);
  v5 = *v4;
  v6 = v4[1];
  sub_1D1E678EC();
  v7 = *(v1 + v3[6]);
  sub_1D1E6922C();
  sub_1D176E808(a1, *(v1 + v3[7]));
  sub_1D176E61C(a1, *(v1 + v3[8]));
  sub_1D176D4E8(a1, *(v1 + v3[9]));
  v8 = *(v1 + v3[10]);
  sub_1D1E6922C();
  v9 = *(v1 + v3[11]);
  return sub_1D1E6922C();
}

uint64_t StaticTrigger.hashValue.getter()
{
  sub_1D1E6920C();
  StaticTrigger.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D17A0CC8()
{
  sub_1D1E6920C();
  StaticTrigger.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D17A0D0C()
{
  sub_1D1E6920C();
  StaticTrigger.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t _s13HomeDataModel12EndpointPathV6homeID10Foundation4UUIDVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

int *StaticTrigger.init(trigger:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v163 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C18, &qword_1D1E731C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v168 = &v161 - v5;
  v6 = type metadata accessor for Action();
  v170 = *(v6 - 8);
  v7 = *(v170 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v175 = &v161 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v162 = &v161 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v161 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v164 = (&v161 - v16);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v161 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v169 = &v161 - v20;
  v21 = sub_1D1E66A7C();
  v22 = *(v21 - 8);
  v184 = v21;
  v185 = v22;
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v166 = &v161 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v161 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C20, &qword_1D1E731C8);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = &v161 - v30;
  v183 = type metadata accessor for Event();
  v172 = *(v183 - 1);
  v32 = *(v172 + 8);
  v33 = MEMORY[0x1EEE9AC00](v183);
  v182 = &v161 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v171 = &v161 - v35;
  v187 = a1;
  v36 = [a1 events];
  sub_1D1741B10(0, &unk_1EC643B70, 0x1E696CB78);
  v37 = sub_1D1E67C1C();

  if (v37 >> 62)
  {
    goto LABEL_71;
  }

  v39 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v165 = v14;
  v176 = v6;
  v174 = v19;
  v188 = v27;
  if (v39)
  {
    v40 = 0;
    v189 = 0;
    v180 = (v37 & 0xFFFFFFFFFFFFFF8);
    v181 = (v37 & 0xC000000000000001);
    v177 = v172 + 48;
    *&v178 = v172 + 56;
    v19 = MEMORY[0x1E69E7CC0];
    *&v38 = 138412546;
    v167 = v38;
    v173 = v37;
    v179 = v39;
    while (1)
    {
      if (v181)
      {
        v42 = MEMORY[0x1D3891EF0](v40, v37);
        v43 = (v40 + 1);
        if (__OFADD__(v40, 1))
        {
          goto LABEL_67;
        }
      }

      else
      {
        if (v40 >= *(v180 + 2))
        {
          goto LABEL_68;
        }

        v42 = *(v37 + 8 * v40 + 32);
        v43 = (v40 + 1);
        if (__OFADD__(v40, 1))
        {
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          v39 = sub_1D1E6873C();
          goto LABEL_3;
        }
      }

      v44 = v42;
      v45 = v187;
      v14 = v189;
      Event.init(event:in:)(v44, v45, v31);
      if (v14)
      {
        v186 = v19;
        if (qword_1EC642130 != -1)
        {
          swift_once();
        }

        v46 = sub_1D1E6709C();
        __swift_project_value_buffer(v46, qword_1EC643BF8);
        v47 = v44;
        v48 = v14;
        v6 = sub_1D1E6707C();
        v49 = sub_1D1E6833C();

        if (os_log_type_enabled(v6, v49))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          *v50 = v167;
          v52 = v14;
          v53 = _swift_stdlib_bridgeErrorToNSError();
          *(v50 + 4) = v53;
          *(v50 + 12) = 2112;
          *(v50 + 14) = v47;
          *v51 = v53;
          v51[1] = v47;
          v54 = v47;
          _os_log_impl(&dword_1D16EC000, v6, v49, "Error: (%@) processing event: %@", v50, 0x16u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644000, &unk_1D1E75B00);
          swift_arrayDestroy();
          MEMORY[0x1D3893640](v51, -1, -1);
          MEMORY[0x1D3893640](v50, -1, -1);
        }

        else
        {
        }

        v55 = 1;
        v19 = v186;
        v37 = v173;
      }

      else
      {
        v55 = 0;
      }

      v56 = v183;
      (*v178)(v31, v55, 1, v183);

      v57 = (*v177)(v31, 1, v56);
      v189 = 0;
      if (v57 == 1)
      {
        sub_1D1741A30(v31, &qword_1EC643C20, &qword_1D1E731C8);
        v27 = v188;
        v41 = v179;
      }

      else
      {
        v58 = v171;
        sub_1D17A6D4C(v31, v171, type metadata accessor for Event);
        sub_1D17A6D4C(v58, v182, type metadata accessor for Event);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v188;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v19 = sub_1D177D38C(0, *(v19 + 2) + 1, 1, v19);
        }

        v41 = v179;
        v61 = *(v19 + 2);
        v60 = *(v19 + 3);
        v6 = v61 + 1;
        if (v61 >= v60 >> 1)
        {
          v19 = sub_1D177D38C(v60 > 1, v61 + 1, 1, v19);
        }

        *(v19 + 2) = v6;
        sub_1D17A6D4C(v182, &v19[((v172[80] + 32) & ~v172[80]) + *(v172 + 9) * v61], type metadata accessor for Event);
      }

      ++v40;
      if (v43 == v41)
      {
        goto LABEL_28;
      }
    }
  }

  v189 = 0;
  v19 = MEMORY[0x1E69E7CC0];
LABEL_28:

  v172 = v187;
  v6 = [v172 actionSets];
  v173 = sub_1D1741B10(0, &qword_1EE07B680, 0x1E696CAF0);
  v31 = sub_1D1E67C1C();

  v190 = MEMORY[0x1E69E7CC0];
  if (v31 >> 62)
  {
    v37 = sub_1D1E6873C();
  }

  else
  {
    v37 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v186 = v19;
  v62 = MEMORY[0x1E69E7CC0];
  if (v37)
  {
    v63 = 0;
    v187 = (v31 & 0xC000000000000001);
    v14 = (v31 & 0xFFFFFFFFFFFFFF8);
    v19 = "HMActionSetTypeUserDefined";
    v182 = "5291";
    v183 = "HMActionSetTypeHomeArrival";
    v180 = 0xD000000000000015;
    v181 = "HMActionSetTypeHomeDeparture";
    v179 = "HMActionSetTypeWakeUp";
    v177 = "HMActionSetTypeTriggerOwned";
    *&v178 = "HMActionSetTypeSleep";
    while (1)
    {
      if (v187)
      {
        v65 = MEMORY[0x1D3891EF0](v63, v31);
      }

      else
      {
        if (v63 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_70;
        }

        v65 = *(v31 + 8 * v63 + 32);
      }

      v66 = v65;
      v67 = v63 + 1;
      if (__OFADD__(v63, 1))
      {
        goto LABEL_69;
      }

      v68 = [v65 actionSetType];
      sub_1D1E6781C();

      v6 = sub_1D1E68C2C();

      if (v6 <= 2)
      {
        if (!v6)
        {
          v27 = v188;
LABEL_50:
          v6 = sub_1D1E6904C();

          if (v6)
          {

            goto LABEL_33;
          }

          goto LABEL_32;
        }

        v27 = v188;
        if (v6 == 1 || v6 == 2)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v27 = v188;
        if (v6 <= 4)
        {
          goto LABEL_50;
        }

        if (v6 == 5)
        {

          swift_bridgeObjectRelease_n();
          goto LABEL_33;
        }

        if (v6 == 6)
        {
          goto LABEL_50;
        }
      }

LABEL_32:
      v6 = &v190;
      sub_1D1E6896C();
      v64 = *(v190 + 16);
      sub_1D1E689AC();
      sub_1D1E689BC();
      sub_1D1E6897C();
LABEL_33:
      ++v63;
      if (v67 == v37)
      {
        v69 = v190;
        v62 = MEMORY[0x1E69E7CC0];
        goto LABEL_55;
      }
    }
  }

  v69 = MEMORY[0x1E69E7CC0];
LABEL_55:

  if ((v69 & 0x8000000000000000) == 0 && (v69 & 0x4000000000000000) == 0)
  {
    v70 = *(v69 + 16);
    if (v70)
    {
      goto LABEL_58;
    }

LABEL_74:

    v188 = MEMORY[0x1E69E7CC0];
LABEL_75:
    v80 = [v172 actionSets];
    v81 = sub_1D1E67C1C();

    v190 = v62;
    v82 = v174;
    v83 = 0xD00000000000001ALL;
    v84 = "HMActionSetTypeSleep";
    v85 = "HMActionSetTypeUserDefined";
    v86 = "HMActionSetTypeShortcutsComponent";
    if (v81 >> 62)
    {
      goto LABEL_120;
    }

    v87 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_77:
    v88 = MEMORY[0x1E69E7CC0];
    if (v87)
    {
      v82 = 0;
      v187 = (v81 & 0xC000000000000001);
      v183 = (v81 & 0xFFFFFFFFFFFFFF8);
      v181 = "5291";
      v182 = "HMActionSetTypeHomeArrival";
      v179 = (v83 - 5);
      v180 = "HMActionSetTypeHomeDeparture";
      v177 = v85 - 32;
      *&v178 = v84 - 32;
      v173 = (v86 - 32);
      while (1)
      {
        if (v187)
        {
          v89 = MEMORY[0x1D3891EF0](v82, v81);
        }

        else
        {
          if (v82 >= *(v183 + 2))
          {
            goto LABEL_117;
          }

          v89 = *(v81 + 8 * v82 + 32);
        }

        v85 = v89;
        v84 = (v82 + 1);
        if (__OFADD__(v82, 1))
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          v87 = sub_1D1E6873C();
          goto LABEL_77;
        }

        v90 = [v89 actionSetType];
        v86 = sub_1D1E6781C();

        v83 = sub_1D1E68C2C();

        if (v83 <= 2)
        {
          if (v83)
          {
            if (v83 == 1)
            {
              v86 = v182;
            }

            else
            {
              if (v83 != 2)
              {
                goto LABEL_79;
              }

              v86 = v180;
            }
          }

          else
          {
            v86 = v181;
          }

          goto LABEL_100;
        }

        if (v83 <= 4)
        {
          break;
        }

        if (v83 == 5)
        {
          swift_bridgeObjectRelease_n();
LABEL_101:
          v83 = &v190;
          sub_1D1E6896C();
          v86 = *(v190 + 16);
          sub_1D1E689AC();
          sub_1D1E689BC();
          sub_1D1E6897C();
          goto LABEL_80;
        }

        if (v83 == 6)
        {
          v86 = v173;
          goto LABEL_100;
        }

LABEL_79:

LABEL_80:
        ++v82;
        if (v84 == v87)
        {
          v91 = v190;
          v82 = v174;
          goto LABEL_105;
        }
      }

      if (v83 == 3)
      {
        v86 = v178;
      }

      else
      {
        v86 = v177;
      }

LABEL_100:
      v83 = sub_1D1E6904C();

      if (v83)
      {
        goto LABEL_101;
      }

      goto LABEL_79;
    }

    v91 = MEMORY[0x1E69E7CC0];
LABEL_105:

    v190 = v88;
    if (v91 < 0 || (v91 & 0x4000000000000000) != 0)
    {
      v81 = sub_1D1E6873C();
      if (v81)
      {
LABEL_108:
        v82 = 0;
        v85 = 0x1E696CAE8;
        while (1)
        {
          if ((v91 & 0xC000000000000001) != 0)
          {
            v92 = MEMORY[0x1D3891EF0](v82, v91);
          }

          else
          {
            if (v82 >= *(v91 + 16))
            {
              goto LABEL_119;
            }

            v92 = *(v91 + 8 * v82 + 32);
          }

          v83 = v92;
          v84 = (v82 + 1);
          if (__OFADD__(v82, 1))
          {
            goto LABEL_118;
          }

          v86 = [v92 actions];
          sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8);
          sub_1D179E328();
          v93 = sub_1D1E6816C();

          v83 = &v190;
          sub_1D17A3970(v93);
          ++v82;
          if (v84 == v81)
          {
            v94 = v190;
            v82 = v174;
            goto LABEL_123;
          }
        }
      }
    }

    else
    {
      v81 = *(v91 + 16);
      if (v81)
      {
        goto LABEL_108;
      }
    }

    v94 = MEMORY[0x1E69E7CC0];
LABEL_123:

    if (v94 >> 62)
    {
      goto LABEL_170;
    }

    v96 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_125:
    v97 = v168;
    if (v96)
    {
      v98 = 0;
      v182 = (v94 & 0xFFFFFFFFFFFFFF8);
      v183 = (v94 & 0xC000000000000001);
      v180 = (v170 + 48);
      v181 = (v170 + 56);
      v99 = MEMORY[0x1E69E7CC0];
      *&v95 = 138412546;
      v178 = v95;
      v179 = v96;
      while (1)
      {
        if (v183)
        {
          v100 = MEMORY[0x1D3891EF0](v98, v94);
        }

        else
        {
          if (v98 >= *(v182 + 2))
          {
            goto LABEL_169;
          }

          v100 = *(v94 + 8 * v98 + 32);
        }

        v101 = v100;
        if (__OFADD__(v98, 1))
        {
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          v96 = sub_1D1E6873C();
          goto LABEL_125;
        }

        v187 = (v98 + 1);
        objc_opt_self();
        v102 = swift_dynamicCastObjCClass();
        if (v102)
        {
          v103 = v102;
          v104 = v101;
          v105 = v189;
          Action.CharacteristicAction.init(action:)(v103, v82);
          v189 = v105;
          if (v105)
          {
            goto LABEL_144;
          }

          v106 = v176;
          swift_storeEnumTagMultiPayload();
          v107 = v82;
        }

        else
        {
          objc_opt_self();
          v108 = swift_dynamicCastObjCClass();
          if (v108)
          {
            v109 = v108;
            v110 = v101;
            v111 = v189;
            Action.MediaPlaybackAction.init(action:)(v109, &v190);
            v189 = v111;
            if (v111)
            {
              goto LABEL_144;
            }

            v112 = v191;
            v113 = v192;
            v114 = v193;
            v115 = v194;
            v116 = v164;
            *v164 = v190;
            *(v116 + 8) = v112;
            *(v116 + 16) = v113;
            *(v116 + 24) = v114;
            *(v116 + 32) = v115;
            v106 = v176;
          }

          else
          {
            objc_opt_self();
            v117 = swift_dynamicCastObjCClass();
            if (v117)
            {
              v118 = v117;
              v119 = v101;
              v116 = v165;
              v120 = v189;
              Action.NaturalLightAction.init(action:)(v118, v165);
              v189 = v120;
              if (v120)
              {
                goto LABEL_144;
              }

              v106 = v176;
            }

            else
            {
              objc_opt_self();
              v121 = swift_dynamicCastObjCClass();
              if (!v121)
              {
                sub_1D17718F0();
                v125 = swift_allocError();
                swift_willThrow();
                goto LABEL_145;
              }

              v122 = v121;
              v123 = v101;
              v124 = v189;
              Action.MatterCommandAction.init(action:)(v122, &v190);
              v189 = v124;
              if (v124)
              {
LABEL_144:
                v125 = v189;
LABEL_145:
                v189 = 0;
                if (qword_1EC642130 != -1)
                {
                  swift_once();
                }

                v126 = sub_1D1E6709C();
                __swift_project_value_buffer(v126, qword_1EC643BF8);
                v127 = v101;
                v128 = v125;
                v129 = sub_1D1E6707C();
                v130 = sub_1D1E6833C();

                if (os_log_type_enabled(v129, v130))
                {
                  v131 = swift_slowAlloc();
                  v132 = v94;
                  v133 = v99;
                  v134 = swift_slowAlloc();
                  *v131 = v178;
                  v135 = v125;
                  v136 = _swift_stdlib_bridgeErrorToNSError();
                  *(v131 + 4) = v136;
                  *(v131 + 12) = 2112;
                  *(v131 + 14) = v127;
                  *v134 = v136;
                  v134[1] = v127;
                  v137 = v127;
                  _os_log_impl(&dword_1D16EC000, v129, v130, "Error: (%@) processing event: %@", v131, 0x16u);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644000, &unk_1D1E75B00);
                  swift_arrayDestroy();
                  v138 = v134;
                  v99 = v133;
                  v94 = v132;
                  MEMORY[0x1D3893640](v138, -1, -1);
                  v139 = v131;
                  v97 = v168;
                  MEMORY[0x1D3893640](v139, -1, -1);
                }

                else
                {
                }

                v140 = 1;
                v106 = v176;
                v82 = v174;
                v96 = v179;
                goto LABEL_155;
              }

              v141 = v191;
              v116 = v162;
              *v162 = v190;
              *(v116 + 8) = v141;
              v106 = v176;
            }
          }

          swift_storeEnumTagMultiPayload();
          v107 = v116;
        }

        sub_1D17A6D4C(v107, v97, type metadata accessor for Action);
        v140 = 0;
LABEL_155:
        (*v181)(v97, v140, 1, v106);

        if ((*v180)(v97, 1, v106) == 1)
        {
          sub_1D1741A30(v97, &qword_1EC643C18, &qword_1D1E731C0);
        }

        else
        {
          v142 = v169;
          sub_1D17A6D4C(v97, v169, type metadata accessor for Action);
          sub_1D17A6D4C(v142, v175, type metadata accessor for Action);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v99 = sub_1D177D364(0, v99[2] + 1, 1, v99);
          }

          v144 = v99[2];
          v143 = v99[3];
          if (v144 >= v143 >> 1)
          {
            v99 = sub_1D177D364(v143 > 1, v144 + 1, 1, v99);
          }

          v99[2] = v144 + 1;
          sub_1D17A6D4C(v175, v99 + ((*(v170 + 80) + 32) & ~*(v170 + 80)) + *(v170 + 72) * v144, type metadata accessor for Action);
        }

        ++v98;
        if (v187 == v96)
        {
          goto LABEL_163;
        }
      }
    }

    v99 = MEMORY[0x1E69E7CC0];
LABEL_163:

    v145 = v172;
    v146 = [v172 uniqueIdentifier];
    sub_1D1E66A5C();

    v147 = [v145 name];
    v148 = sub_1D1E6781C();
    v150 = v149;

    v151 = [v145 isEnabled];
    v152 = sub_1D1784B74(v186);

    v153 = sub_1D1784D00(v99);

    v154 = sub_1D17841EC(v188);

    v155 = [v145 executeOnce];
    v156 = [v145 policy];

    if (v156)
    {
      objc_opt_self();
      v157 = swift_dynamicCastObjCClass();
      if (v157)
      {
LABEL_167:
        v158 = v157 != 0;

        v159 = v163;
        (*(v185 + 32))(v163, v166, v184);
        result = type metadata accessor for StaticTrigger();
        v160 = (v159 + result[5]);
        *v160 = v148;
        v160[1] = v150;
        *(v159 + result[7]) = v152;
        *(v159 + result[8]) = v153;
        *(v159 + result[9]) = v154;
        *(v159 + result[10]) = v155;
        *(v159 + result[6]) = v151;
        *(v159 + result[11]) = v158;
        return result;
      }
    }

    v157 = 0;
    goto LABEL_167;
  }

  v70 = sub_1D1E6873C();
  if (!v70)
  {
    goto LABEL_74;
  }

LABEL_58:
  v190 = v62;
  result = sub_1D178CEFC(0, v70 & ~(v70 >> 63), 0);
  if ((v70 & 0x8000000000000000) == 0)
  {
    v72 = 0;
    v188 = v190;
    do
    {
      if ((v69 & 0xC000000000000001) != 0)
      {
        v73 = MEMORY[0x1D3891EF0](v72, v69);
      }

      else
      {
        v73 = *(v69 + 8 * v72 + 32);
      }

      v74 = v73;
      v75 = [v74 uniqueIdentifier];
      sub_1D1E66A5C();

      v76 = v188;
      v190 = v188;
      v78 = *(v188 + 2);
      v77 = *(v188 + 3);
      if (v78 >= v77 >> 1)
      {
        sub_1D178CEFC(v77 > 1, v78 + 1, 1);
        v76 = v190;
      }

      ++v72;
      *(v76 + 16) = v78 + 1;
      v79 = (*(v185 + 80) + 32) & ~*(v185 + 80);
      v188 = v76;
      (*(v185 + 32))(v76 + v79 + *(v185 + 72) * v78, v27, v184);
    }

    while (v70 != v72);

    v62 = MEMORY[0x1E69E7CC0];
    goto LABEL_75;
  }

  __break(1u);
  return result;
}

uint64_t StaticTrigger.trigger.getter()
{
  v1[2] = v0;
  v2 = sub_1D1E66A7C();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v1[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260) - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v8 = swift_task_alloc();
  v1[11] = v8;
  *v8 = v1;
  v8[1] = sub_1D17A266C;

  return sub_1D1E359E0();
}

uint64_t sub_1D17A266C(uint64_t a1)
{
  v2 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D17A276C, 0, 0);
}

uint64_t sub_1D17A276C()
{
  v1 = v0[12];
  if (!v1)
  {
    goto LABEL_6;
  }

  v2 = v0[2];
  v3 = v1;
  v4 = [v3 triggers];
  sub_1D1741B10(0, &qword_1EC643C28, 0x1E696CC90);
  v5 = sub_1D1E67C1C();

  v6 = swift_task_alloc();
  *(v6 + 16) = v2;
  v7 = sub_1D174A6C4(sub_1D17A6E7C, v6, v5);

  if (v7)
  {

    v9 = v0[9];
    v8 = v0[10];
    v11 = v0[7];
    v10 = v0[8];
    v12 = v0[5];

    v13 = v0[1];

    return v13(v7);
  }

  else
  {
LABEL_6:
    v0[13] = 0;
    v15 = swift_task_alloc();
    v0[14] = v15;
    *v15 = v0;
    v15[1] = sub_1D17A293C;

    return sub_1D1E369EC();
  }
}

uint64_t sub_1D17A293C(uint64_t a1)
{
  v2 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D17A2A3C, 0, 0);
}

uint64_t sub_1D17A2A3C()
{
  v1 = v0[15];
  if (!v1)
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  v53 = v1;
  if (v1 >> 62)
  {
    goto LABEL_35;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v49 = v0[12];
  if (v2)
  {
    v3 = 0;
    v4 = v0[4];
    v57 = (v4 + 56);
    v51 = (v4 + 48);
    v52 = v0[6];
    v44 = (v4 + 32);
    v48 = (v4 + 8);
    v54 = v0[13];
    v5 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
    v50 = v2;
    while (1)
    {
      if ((v53 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1D3891EF0](v3, v53);
        v7 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (v3 >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v6 = *(v53 + 8 * v3 + 32);
        v7 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          v2 = sub_1D1E6873C();
          goto LABEL_5;
        }
      }

      v55 = v7;
      v8 = v0[12];
      v9 = v0[10];
      v10 = v0[3];
      v56 = v6;
      v11 = [v6 v5[61]];
      sub_1D1E66A5C();

      v12 = *v57;
      v13 = 1;
      (*v57)(v9, 0, 1, v10);
      if (v8)
      {
        v14 = v0[9];
        v15 = [v49 v5[61]];
        sub_1D1E66A5C();

        v13 = 0;
      }

      v17 = v0[9];
      v16 = v0[10];
      v18 = v0[7];
      v19 = v0[3];
      v12(v17, v13, 1, v19);
      v20 = *(v52 + 48);
      sub_1D1741C08(v16, v18, &qword_1EC642590, qword_1D1E71260);
      sub_1D1741C08(v17, v18 + v20, &qword_1EC642590, qword_1D1E71260);
      v21 = *v51;
      v22 = (*v51)(v18, 1, v19);
      v23 = v0[3];
      if (v22 == 1)
      {
        v24 = v0[10];
        sub_1D1741A30(v0[9], &qword_1EC642590, qword_1D1E71260);
        sub_1D1741A30(v24, &qword_1EC642590, qword_1D1E71260);
        v5 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
        if (v21(v18 + v20, 1, v23) != 1)
        {
          goto LABEL_23;
        }

        sub_1D1741A30(v0[7], &qword_1EC642590, qword_1D1E71260);
      }

      else
      {
        sub_1D1741C08(v0[7], v0[8], &qword_1EC642590, qword_1D1E71260);
        v25 = v21(v18 + v20, 1, v23);
        v26 = v0[9];
        v27 = v0[10];
        v28 = v0[8];
        if (v25 == 1)
        {
          v29 = v0[3];
          sub_1D1741A30(v0[9], &qword_1EC642590, qword_1D1E71260);
          sub_1D1741A30(v27, &qword_1EC642590, qword_1D1E71260);
          (*v48)(v28, v29);
          v5 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
LABEL_23:
          sub_1D1741A30(v0[7], &qword_1EC642980, &unk_1D1E6E6E0);
LABEL_24:
          v30 = v0[2];
          v31 = [v56 triggers];
          sub_1D1741B10(0, &qword_1EC643C28, 0x1E696CC90);
          v32 = sub_1D1E67C1C();

          v33 = swift_task_alloc();
          *(v33 + 16) = v30;
          v2 = sub_1D174A6C4(sub_1D17A6A30, v33, v32);

          if (v2)
          {
            break;
          }

          goto LABEL_9;
        }

        v46 = v0[10];
        v47 = v0[7];
        v34 = v0[5];
        v35 = v0[3];
        (*v44)(v34, v18 + v20, v35);
        sub_1D17A6A50(&qword_1EE07D170, MEMORY[0x1E69695A8]);
        v45 = sub_1D1E6775C();
        v36 = *v48;
        (*v48)(v34, v35);
        sub_1D1741A30(v26, &qword_1EC642590, qword_1D1E71260);
        sub_1D1741A30(v46, &qword_1EC642590, qword_1D1E71260);
        v36(v28, v35);
        sub_1D1741A30(v47, &qword_1EC642590, qword_1D1E71260);
        v5 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
        if ((v45 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

LABEL_9:
      ++v3;
      if (v55 == v50)
      {

        v2 = 0;
        goto LABEL_30;
      }
    }
  }

LABEL_30:

  v38 = v0[9];
  v37 = v0[10];
  v40 = v0[7];
  v39 = v0[8];
  v41 = v0[5];

  v42 = v0[1];

  return v42(v2);
}

HMTrigger_optional __swiftcall StaticTrigger.trigger(in:)(HMHome in)
{
  v2 = [(objc_class *)in.super.isa triggers];
  sub_1D1741B10(0, &qword_1EC643C28, 0x1E696CC90);
  v3 = sub_1D1E67C1C();

  v8 = v1;
  v4 = sub_1D174A6C4(sub_1D17A6E7C, &v7, v3);

  v6 = v4;
  result.value.super.isa = v6;
  result.is_nil = v5;
  return result;
}

uint64_t sub_1D17A3070(id *a1)
{
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 uniqueIdentifier];
  sub_1D1E66A5C();

  v8 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

uint64_t sub_1D17A317C(void *a1)
{
  v69 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  v4 = *(v69 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v67 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C58, &unk_1D1E995D0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v66 = &v54 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v16 = &v54 - v15;
  v17 = a1[2];
  v18 = *v2;
  v19 = *(*v2 + 16);
  v20 = v19 + v17;
  if (__OFADD__(v19, v17))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v1 = v4;
  v21 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v68 = v11;
  if (!isUniquelyReferenced_nonNull_native || (v23 = v18[3] >> 1, v23 < v20))
  {
    if (v19 <= v20)
    {
      v24 = v19 + v17;
    }

    else
    {
      v24 = v19;
    }

    v18 = sub_1D177D084(isUniquelyReferenced_nonNull_native, v24, 1, v18);
    v23 = v18[3] >> 1;
  }

  v25 = v18[2];
  v20 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v19 = *(v4 + 72);
  v26 = v23 - v25;
  result = sub_1D18049D8(&v70, v18 + v20 + v19 * v25, v23 - v25, a1);
  if (result < v17)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v28 = v18[2];
    v29 = __OFADD__(v28, result);
    v30 = v28 + result;
    if (v29)
    {
      __break(1u);
      goto LABEL_20;
    }

    v18[2] = v30;
  }

  if (result != v26)
  {
    result = sub_1D1716918();
LABEL_14:
    *v2 = v18;
    return result;
  }

LABEL_17:
  v65 = v18[2];
  v27 = v71;
  v57 = v71;
  v58 = v70;
  v30 = v73;
  v55 = v72;
  v31 = v74;
  if (v74)
  {
    v32 = v73;
LABEL_27:
    v64 = (v31 - 1) & v31;
    sub_1D17A6E14(*(v58 + 48) + (__clz(__rbit64(v31)) | (v32 << 6)) * v19, v16, type metadata accessor for StaticAccessory.DeviceIdentifier);
    v36 = v69;
    v60 = *(v1 + 56);
    v60(v16, 0, 1, v69);
    v35 = v32;
    while (1)
    {
      v37 = v66;
      sub_1D1741C08(v16, v66, &qword_1EC643C58, &unk_1D1E995D0);
      v38 = *(v1 + 48);
      v1 += 48;
      v63 = v38;
      if (v38(v37, 1, v36) == 1)
      {
        break;
      }

      v56 = (v55 + 64) >> 6;
      v59 = v4 + 56;
      v39 = v65;
      while (1)
      {
        sub_1D1741A30(v37, &qword_1EC643C58, &unk_1D1E995D0);
        v42 = v18[3];
        v43 = v42 >> 1;
        v65 = v39;
        if ((v42 >> 1) < v39 + 1)
        {
          v18 = sub_1D177D084(v42 > 1, v39 + 1, 1, v18);
          v43 = v18[3] >> 1;
        }

        v44 = v68;
        sub_1D1741C08(v16, v68, &qword_1EC643C58, &unk_1D1E995D0);
        if (v63(v44, 1, v69) != 1)
        {
          break;
        }

        v45 = v35;
        v46 = v68;
LABEL_37:
        sub_1D1741A30(v46, &qword_1EC643C58, &unk_1D1E995D0);
        v40 = v65;
        v35 = v45;
LABEL_32:
        v18[2] = v40;
        v37 = v66;
        sub_1D1741C08(v16, v66, &qword_1EC643C58, &unk_1D1E995D0);
        v41 = v63(v37, 1, v69);
        v39 = v65;
        if (v41 == 1)
        {
          goto LABEL_29;
        }
      }

      v61 = v18 + v20;
      v47 = v65;
      if (v65 <= v43)
      {
        v47 = v43;
      }

      v62 = v47;
      v46 = v68;
      while (1)
      {
        v50 = v67;
        sub_1D17A6D4C(v46, v67, type metadata accessor for StaticAccessory.DeviceIdentifier);
        if (v65 == v62)
        {
          sub_1D17A6DB4(v50, type metadata accessor for StaticAccessory.DeviceIdentifier);
          v40 = v62;
          v65 = v62;
          goto LABEL_32;
        }

        v4 = v65;
        sub_1D1741A30(v16, &qword_1EC643C58, &unk_1D1E995D0);
        sub_1D17A6D4C(v50, &v61[v4 * v19], type metadata accessor for StaticAccessory.DeviceIdentifier);
        v51 = v64;
        if (!v64)
        {
          break;
        }

        v52 = v35;
LABEL_53:
        v64 = (v51 - 1) & v51;
        sub_1D17A6E14(*(v58 + 48) + (__clz(__rbit64(v51)) | (v52 << 6)) * v19, v16, type metadata accessor for StaticAccessory.DeviceIdentifier);
        v48 = 0;
        v45 = v52;
LABEL_42:
        v65 = v4 + 1;
        v49 = v69;
        v60(v16, v48, 1, v69);
        v46 = v68;
        sub_1D1741C08(v16, v68, &qword_1EC643C58, &unk_1D1E995D0);
        v35 = v45;
        if (v63(v46, 1, v49) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v56 <= (v35 + 1))
      {
        v53 = v35 + 1;
      }

      else
      {
        v53 = v56;
      }

      v45 = v53 - 1;
      while (1)
      {
        v52 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        if (v52 >= v56)
        {
          v64 = 0;
          v48 = 1;
          goto LABEL_42;
        }

        v51 = *(v57 + 8 * v52);
        ++v35;
        if (v51)
        {
          goto LABEL_53;
        }
      }

      __break(1u);
LABEL_55:
      v36 = v69;
      v60 = *(v1 + 56);
      v60(v16, 1, 1, v69);
      v64 = 0;
    }

LABEL_29:
    sub_1D1741A30(v16, &qword_1EC643C58, &unk_1D1E995D0);
    sub_1D1716918();
    result = sub_1D1741A30(v37, &qword_1EC643C58, &unk_1D1E995D0);
    goto LABEL_14;
  }

LABEL_20:
  v33 = (v55 + 64) >> 6;
  if (v33 <= v30 + 1)
  {
    v34 = v30 + 1;
  }

  else
  {
    v34 = (v55 + 64) >> 6;
  }

  v35 = v34 - 1;
  while (1)
  {
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v32 >= v33)
    {
      goto LABEL_55;
    }

    v31 = *(v27 + 8 * v32);
    ++v30;
    if (v31)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

void *sub_1D17A386C(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1D177D340(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643398, &qword_1D1E71810);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1D17A3970(uint64_t a1)
{
  v7 = v1;
  v8 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = sub_1D1E6873C();
  }

  else
  {
    v9 = *(a1 + 16);
  }

  v10 = *v1;
  if (!(*v1 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = __OFADD__(v11, v9);
    result = v11 + v9;
    if (!v12)
    {
      goto LABEL_6;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v10 < 0)
  {
    v18 = *v1;
  }

  v19 = sub_1D1E6873C();
  v12 = __OFADD__(v19, v9);
  result = v19 + v9;
  if (v12)
  {
    goto LABEL_16;
  }

LABEL_6:
  sub_1D1CC7774();
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v14 = *(v3 + 0x10);
  v15 = ((*(v3 + 0x18) >> 1) - v14);
  result = sub_1D1804AD8(&v36, (v3 + 8 * v14 + 32), v15, v8);
  if (result < v9)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (result >= 1)
  {
    v16 = *(v3 + 16);
    v12 = __OFADD__(v16, result);
    v17 = v16 + result;
    if (v12)
    {
      __break(1u);
      goto LABEL_22;
    }

    *(v3 + 16) = v17;
  }

  if (result != v15)
  {
LABEL_11:
    result = sub_1D1716918();
    *v7 = v2;
    return result;
  }

LABEL_18:
  v4 = *(v3 + 16);
  v3 = v36;
  v5 = v37;
  v8 = v39;
  v33 = v38;
  v6 = v40;
  if (v36 < 0)
  {
LABEL_22:
    if (!sub_1D1E6877C())
    {
      goto LABEL_11;
    }

    sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8);
    result = swift_dynamicCast();
    v21 = v35;
    goto LABEL_33;
  }

  if (!v40)
  {
    v22 = (v38 + 64) >> 6;
    if (v22 <= v39 + 1)
    {
      v23 = v39 + 1;
    }

    else
    {
      v23 = (v38 + 64) >> 6;
    }

    v24 = v23 - 1;
    while (1)
    {
      v20 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_61;
      }

      if (v20 >= v22)
      {
        v21 = 0;
        v6 = 0;
        goto LABEL_32;
      }

      v6 = *(v37 + 8 * v20);
      ++v8;
      if (v6)
      {
        goto LABEL_31;
      }
    }
  }

  v20 = v39;
LABEL_31:
  v25 = __clz(__rbit64(v6));
  v6 &= v6 - 1;
  v21 = *(*(v36 + 48) + ((v20 << 9) | (8 * v25)));
  result = v21;
  v24 = v20;
LABEL_32:
  v39 = v24;
  v40 = v6;
  v8 = v24;
LABEL_33:
  if (!v21)
  {
    goto LABEL_11;
  }

  v26 = (v33 + 64) >> 6;
LABEL_35:
  if (v4 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    result = sub_1D1E67C5C();
  }

  v2 = *v7;
  v27 = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v32 = *v7 & 0xFFFFFFFFFFFFFF8;
  if (v4 > v27)
  {
    v27 = v4;
  }

  v34 = v27;
  while (1)
  {
    while (1)
    {
      if (v4 == v34)
      {
        v4 = v34;
        *(v32 + 16) = v34;
        goto LABEL_35;
      }

      *(v32 + 32 + 8 * v4++) = v21;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (sub_1D1E6877C())
      {
        sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8);
        result = swift_dynamicCast();
        v21 = v35;
        if (v35)
        {
          continue;
        }
      }

      goto LABEL_58;
    }

    if (!v6)
    {
      break;
    }

    v28 = v8;
LABEL_56:
    v31 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v21 = *(*(v3 + 48) + ((v28 << 9) | (8 * v31)));
    result = v21;
    v30 = v28;
LABEL_41:
    v36 = v3;
    v37 = v5;
    v38 = v33;
    v39 = v30;
    v8 = v30;
    v40 = v6;
    if (!v21)
    {
LABEL_58:
      *(v32 + 16) = v4;
      goto LABEL_11;
    }
  }

  if (v26 <= v8 + 1)
  {
    v29 = v8 + 1;
  }

  else
  {
    v29 = (v33 + 64) >> 6;
  }

  v30 = v29 - 1;
  while (1)
  {
    v28 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v28 >= v26)
    {
      v21 = 0;
      v6 = 0;
      goto LABEL_41;
    }

    v6 = *(v5 + 8 * v28);
    ++v8;
    if (v6)
    {
      goto LABEL_56;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

uint64_t sub_1D17A3D7C(uint64_t a1)
{
  v2 = v1;
  v46 = type metadata accessor for StaticServiceCharacteristicDoublet();
  v4 = *(v46 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643870, &qword_1D1E72028);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v45 = (&v41 - v14);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v41 - v15;
  v17 = *v2;
  v18 = *(*v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v20 = v17[3] >> 1, v20 < v18))
  {
    v17 = sub_1D177DC54(isUniquelyReferenced_nonNull_native, v18, 1, v17);
    v20 = v17[3] >> 1;
  }

  v21 = v17[2];
  v22 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v23 = *(v4 + 72);
  v24 = v20 - v21;
  v25 = *(a1 + 16);
  v59[0] = *a1;
  v59[1] = v25;
  v60 = *(a1 + 32);
  v26 = v59;
  v27 = sub_1D1804B74(&v53, v17 + v22 + v23 * v21, v20 - v21);
  if (v27 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v27)
  {
    v28 = v17[2];
    v29 = __OFADD__(v28, v27);
    v30 = v28 + v27;
    if (v29)
    {
      __break(1u);
      goto LABEL_18;
    }

    v17[2] = v30;
  }

  if (v27 == v24)
  {
LABEL_12:
    v44 = v17[2];
    sub_1D17A6588(v16);
    v26 = v45;
    sub_1D1741C08(v16, v45, &qword_1EC643870, &qword_1D1E72028);
    v43 = *(v4 + 48);
    if (v43(v26, 1, v46) == 1)
    {
LABEL_13:
      sub_1D1741A30(v16, &qword_1EC643870, &qword_1D1E72028);
      v49 = v55;
      v50 = v56;
      v51 = v57;
      v52 = v58;
      v47 = v53;
      v48 = v54;
      sub_1D1741A30(&v47, &qword_1EC643C60, &qword_1D1E732D0);
      v33 = v26;
      v31 = &qword_1EC643870;
      v32 = &qword_1D1E72028;
      goto LABEL_10;
    }

    do
    {
LABEL_18:
      sub_1D1741A30(v26, &qword_1EC643870, &qword_1D1E72028);
      v37 = v17[3];
      v38 = v37 >> 1;
      if ((v37 >> 1) < v44 + 1)
      {
        v17 = sub_1D177DC54(v37 > 1, v44 + 1, 1, v17);
        v38 = v17[3] >> 1;
      }

      sub_1D1741C08(v16, v12, &qword_1EC643870, &qword_1D1E72028);
      if (v43(v12, 1, v46) == 1)
      {
        v35 = v44;
LABEL_28:
        sub_1D1741A30(v12, &qword_1EC643870, &qword_1D1E72028);
      }

      else
      {
        if (v44 <= v38)
        {
          v39 = v38;
        }

        else
        {
          v39 = v44;
        }

        v42 = v39;
        v35 = v44;
        v40 = v17 + v22 + v23 * v44;
        while (1)
        {
          sub_1D17A6D4C(v12, v7, type metadata accessor for StaticServiceCharacteristicDoublet);
          if (v42 == v35)
          {
            break;
          }

          sub_1D1741A30(v16, &qword_1EC643870, &qword_1D1E72028);
          sub_1D17A6D4C(v7, v40, type metadata accessor for StaticServiceCharacteristicDoublet);
          v44 = v35 + 1;
          sub_1D17A6588(v16);
          v35 = v44;
          sub_1D1741C08(v16, v12, &qword_1EC643870, &qword_1D1E72028);
          v40 += v23;
          if (v43(v12, 1, v46) == 1)
          {
            goto LABEL_28;
          }
        }

        sub_1D17A6DB4(v7, type metadata accessor for StaticServiceCharacteristicDoublet);
        v35 = v42;
      }

      v44 = v35;
      v17[2] = v35;
      v36 = v45;
      sub_1D1741C08(v16, v45, &qword_1EC643870, &qword_1D1E72028);
      v26 = v36;
    }

    while (v43(v36, 1, v46) != 1);
    goto LABEL_13;
  }

  v49 = v55;
  v50 = v56;
  v51 = v57;
  v52 = v58;
  v47 = v53;
  v48 = v54;
  v31 = &qword_1EC643C60;
  v32 = &qword_1D1E732D0;
  v33 = &v47;
LABEL_10:
  result = sub_1D1741A30(v33, v31, v32);
  *v2 = v17;
  return result;
}

uint64_t sub_1D17A4328(uint64_t result)
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

  result = sub_1D177DD60(result, v12, 1, v3);
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

  memcpy((v3 + 2 * v8 + 32), (v6 + 32), 2 * v2);

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

uint64_t sub_1D17A4414(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = a1;
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v3 + 3) >> 1, v9 < v5))
  {
    if (v4 <= v5)
    {
      v10 = v4 + v2;
    }

    else
    {
      v10 = v4;
    }

    v3 = sub_1D177DD60(isUniquelyReferenced_nonNull_native, v10, 1, v3);
    v9 = *(v3 + 3) >> 1;
  }

  v11 = *(v3 + 2);
  v12 = v9 - v11;
  result = sub_1D1805708(v40, &v3[2 * v11 + 32], v9 - v11, v6);
  if (result < v2)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v17 = *(v3 + 2);
    v18 = __OFADD__(v17, result);
    v19 = v17 + result;
    if (v18)
    {
      __break(1u);
LABEL_20:
      v22 = (v15 + 64) >> 6;
      v23 = v16;
      do
      {
        v24 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_43;
        }

        if (v24 >= v22)
        {
          goto LABEL_13;
        }

        v25 = *(v14 + 8 * v24);
        ++v23;
      }

      while (!v25);
      v20 = (v25 - 1) & v25;
      v21 = __clz(__rbit64(v25)) | (v24 << 6);
      v16 = v24;
      goto LABEL_25;
    }

    *(v3 + 2) = v19;
  }

  if (result != v12)
  {
LABEL_13:
    result = sub_1D1716918();
LABEL_14:
    *v1 = v3;
    return result;
  }

LABEL_17:
  v6 = *(v3 + 2);
  result = v40[0];
  v14 = v40[1];
  v15 = v41;
  v16 = v42;
  if (!v43)
  {
    goto LABEL_20;
  }

  v20 = (v43 - 1) & v43;
  v21 = __clz(__rbit64(v43)) | (v42 << 6);
  v22 = (v41 + 64) >> 6;
LABEL_25:
  v26 = *(*(result + 48) + 2 * v21);
  while (1)
  {
    v27 = *(v3 + 3);
    v28 = v27 >> 1;
    if ((v27 >> 1) < v6 + 1)
    {
      break;
    }

    if (v6 < v28)
    {
      goto LABEL_33;
    }

LABEL_28:
    *(v3 + 2) = v6;
  }

  v38 = v20;
  v39 = result;
  v37 = v14;
  v32 = v15;
  v33 = v16;
  v34 = v3;
  v35 = v26;
  v36 = sub_1D177DD60((v27 > 1), v6 + 1, 1, v34);
  v26 = v35;
  v14 = v37;
  v20 = v38;
  v16 = v33;
  v15 = v32;
  v3 = v36;
  result = v39;
  v28 = *(v3 + 3) >> 1;
  if (v6 >= v28)
  {
    goto LABEL_28;
  }

LABEL_33:
  while (1)
  {
    *&v3[2 * v6++ + 32] = v26;
    if (!v20)
    {
      break;
    }

LABEL_32:
    v29 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v26 = *(*(result + 48) + ((v16 << 7) | (2 * v29)));
    if (v6 == v28)
    {
      v6 = v28;
      goto LABEL_28;
    }
  }

  v30 = v16;
  while (1)
  {
    v31 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v31 >= v22)
    {
      result = sub_1D1716918();
      *(v3 + 2) = v6;
      goto LABEL_14;
    }

    v20 = *(v14 + 8 * v31);
    ++v30;
    if (v20)
    {
      v16 = v31;
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_1D17A4684(uint64_t result)
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

  result = sub_1D177E09C(result, v12, 1, v3);
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

  memcpy((v3 + 12 * v8 + 32), (v6 + 32), 12 * v2);

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

uint64_t sub_1D17A4778(int64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = a1;
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v3 + 3) >> 1, v9 < v5))
  {
    if (v4 <= v5)
    {
      v10 = v4 + v2;
    }

    else
    {
      v10 = v4;
    }

    v3 = sub_1D177E1AC(isUniquelyReferenced_nonNull_native, v10, 1, v3);
    v9 = *(v3 + 3) >> 1;
  }

  v11 = *(v3 + 2);
  v12 = v9 - v11;
  result = sub_1D18085B0(v40, &v3[v11 + 32], v9 - v11, v6);
  if (result < v2)
  {
    goto LABEL_15;
  }

  if (result)
  {
    v17 = *(v3 + 2);
    v18 = __OFADD__(v17, result);
    v19 = v17 + result;
    if (v18)
    {
      __break(1u);
LABEL_19:
      while (1)
      {
        v21 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_43;
        }

        if (v21 >= ((v15 + 64) >> 6))
        {
          goto LABEL_13;
        }

        v20 = *(v14 + 8 * v21);
        ++v16;
        if (v20)
        {
          goto LABEL_22;
        }
      }
    }

    *(v3 + 2) = v19;
  }

  if (result != v12)
  {
LABEL_13:
    result = sub_1D1716918();
    *v1 = v3;
    return result;
  }

LABEL_16:
  v6 = *(v3 + 2);
  result = v40[0];
  v14 = v40[1];
  v15 = v40[2];
  v16 = v41;
  v20 = v42;
  if (!v42)
  {
    goto LABEL_19;
  }

  v21 = v41;
LABEL_22:
  v22 = (v20 - 1) & v20;
  v23 = *(*(result + 48) + (__clz(__rbit64(v20)) | (v21 << 6)));
  if (v23 == 28)
  {
    goto LABEL_13;
  }

  v24 = (v15 + 64) >> 6;
  v25 = v21;
  while (1)
  {
    v26 = *(v3 + 3);
    v27 = v26 >> 1;
    if ((v26 >> 1) < v6 + 1)
    {
      v38 = v23;
      v39 = result;
      v37 = v14;
      v32 = v15;
      v33 = v25;
      v34 = v3;
      v35 = v22;
      v36 = sub_1D177E1AC((v26 > 1), v6 + 1, 1, v34);
      v23 = v38;
      v22 = v35;
      v25 = v33;
      v15 = v32;
      v14 = v37;
      v3 = v36;
      result = v39;
      v27 = *(v3 + 3) >> 1;
    }

    if (v6 < v27)
    {
      break;
    }

LABEL_24:
    *(v3 + 2) = v6;
    if (v23 == 28)
    {
      goto LABEL_13;
    }
  }

  while (1)
  {
    v3[v6++ + 32] = v23;
    if (!v22)
    {
      break;
    }

    v28 = v25;
LABEL_35:
    v30 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v23 = *(*(result + 48) + (v30 | (v28 << 6)));
    if (v23 == 28 || v6 >= v27)
    {
      goto LABEL_24;
    }
  }

  v29 = v25;
  while (1)
  {
    v28 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v28 >= v24)
    {
      *(v3 + 2) = v6;
      goto LABEL_13;
    }

    v22 = *(v14 + 8 * v28);
    ++v29;
    if (v22)
    {
      v25 = v28;
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_1D17A4A08(uint64_t result)
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

  result = sub_1D177EB70(result, v12, 1, v3);
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

  memcpy((v3 + 8 * v8 + 32), (v6 + 32), 8 * v2);

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

uint64_t sub_1D17A4AF4(uint64_t result)
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

  result = sub_1D177EC90(result, v12, 1, v3);
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

  memcpy((v3 + 2 * v8 + 32), (v6 + 32), 2 * v2);

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

uint64_t sub_1D17A4C0C(unint64_t a1, void (*a2)(void), void (*a3)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v7 = sub_1D1E6873C();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = *v3;
  if (!(*v3 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v10 = __OFADD__(v9, v7);
    result = v9 + v7;
    if (!v10)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v8 < 0)
  {
    v18 = *v3;
  }

  v19 = sub_1D1E6873C();
  v10 = __OFADD__(v19, v7);
  result = v19 + v7;
  if (v10)
  {
    goto LABEL_15;
  }

LABEL_5:
  a2();
  v12 = *v3;
  v13 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v13 + 8 * *(v13 + 0x10) + 32, (*(v13 + 0x18) >> 1) - *(v13 + 0x10), a1);
  v15 = v14;

  if (v15 < v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v15 < 1)
  {
LABEL_9:
    *v3 = v12;
    return result;
  }

  v16 = *(v13 + 16);
  v10 = __OFADD__(v16, v15);
  v17 = v16 + v15;
  if (!v10)
  {
    *(v13 + 16) = v17;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1D17A4D0C(void *a1)
{
  v69 = type metadata accessor for StaticLightProfile();
  v4 = *(v69 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v67 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6430E8, &unk_1D1E71440);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v66 = &v54 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v16 = &v54 - v15;
  v17 = a1[2];
  v18 = *v2;
  v19 = *(*v2 + 16);
  v20 = v19 + v17;
  if (__OFADD__(v19, v17))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v1 = v4;
  v21 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v68 = v11;
  if (!isUniquelyReferenced_nonNull_native || (v23 = v18[3] >> 1, v23 < v20))
  {
    if (v19 <= v20)
    {
      v24 = v19 + v17;
    }

    else
    {
      v24 = v19;
    }

    v18 = sub_1D177F274(isUniquelyReferenced_nonNull_native, v24, 1, v18);
    v23 = v18[3] >> 1;
  }

  v25 = v18[2];
  v20 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v19 = *(v4 + 72);
  v26 = v23 - v25;
  result = sub_1D1805B74(&v70, v18 + v20 + v19 * v25, v23 - v25, a1);
  if (result < v17)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v28 = v18[2];
    v29 = __OFADD__(v28, result);
    v30 = v28 + result;
    if (v29)
    {
      __break(1u);
      goto LABEL_20;
    }

    v18[2] = v30;
  }

  if (result != v26)
  {
    result = sub_1D1716918();
LABEL_14:
    *v2 = v18;
    return result;
  }

LABEL_17:
  v65 = v18[2];
  v27 = v71;
  v57 = v71;
  v58 = v70;
  v30 = v73;
  v55 = v72;
  v31 = v74;
  if (v74)
  {
    v32 = v73;
LABEL_27:
    v64 = (v31 - 1) & v31;
    sub_1D17A6E14(*(v58 + 56) + (__clz(__rbit64(v31)) | (v32 << 6)) * v19, v16, type metadata accessor for StaticLightProfile);
    v36 = v69;
    v60 = *(v1 + 56);
    v60(v16, 0, 1, v69);
    v35 = v32;
    while (1)
    {
      v37 = v66;
      sub_1D1741C08(v16, v66, &qword_1EC6430E8, &unk_1D1E71440);
      v38 = *(v1 + 48);
      v1 += 48;
      v63 = v38;
      if (v38(v37, 1, v36) == 1)
      {
        break;
      }

      v56 = (v55 + 64) >> 6;
      v59 = v4 + 56;
      v39 = v65;
      while (1)
      {
        sub_1D1741A30(v37, &qword_1EC6430E8, &unk_1D1E71440);
        v42 = v18[3];
        v43 = v42 >> 1;
        v65 = v39;
        if ((v42 >> 1) < v39 + 1)
        {
          v18 = sub_1D177F274(v42 > 1, v39 + 1, 1, v18);
          v43 = v18[3] >> 1;
        }

        v44 = v68;
        sub_1D1741C08(v16, v68, &qword_1EC6430E8, &unk_1D1E71440);
        if (v63(v44, 1, v69) != 1)
        {
          break;
        }

        v45 = v35;
        v46 = v68;
LABEL_37:
        sub_1D1741A30(v46, &qword_1EC6430E8, &unk_1D1E71440);
        v40 = v65;
        v35 = v45;
LABEL_32:
        v18[2] = v40;
        v37 = v66;
        sub_1D1741C08(v16, v66, &qword_1EC6430E8, &unk_1D1E71440);
        v41 = v63(v37, 1, v69);
        v39 = v65;
        if (v41 == 1)
        {
          goto LABEL_29;
        }
      }

      v61 = v18 + v20;
      v47 = v65;
      if (v65 <= v43)
      {
        v47 = v43;
      }

      v62 = v47;
      v46 = v68;
      while (1)
      {
        v50 = v67;
        sub_1D17A6D4C(v46, v67, type metadata accessor for StaticLightProfile);
        if (v65 == v62)
        {
          sub_1D17A6DB4(v50, type metadata accessor for StaticLightProfile);
          v40 = v62;
          v65 = v62;
          goto LABEL_32;
        }

        v4 = v65;
        sub_1D1741A30(v16, &qword_1EC6430E8, &unk_1D1E71440);
        sub_1D17A6D4C(v50, &v61[v4 * v19], type metadata accessor for StaticLightProfile);
        v51 = v64;
        if (!v64)
        {
          break;
        }

        v52 = v35;
LABEL_53:
        v64 = (v51 - 1) & v51;
        sub_1D17A6E14(*(v58 + 56) + (__clz(__rbit64(v51)) | (v52 << 6)) * v19, v16, type metadata accessor for StaticLightProfile);
        v48 = 0;
        v45 = v52;
LABEL_42:
        v65 = v4 + 1;
        v49 = v69;
        v60(v16, v48, 1, v69);
        v46 = v68;
        sub_1D1741C08(v16, v68, &qword_1EC6430E8, &unk_1D1E71440);
        v35 = v45;
        if (v63(v46, 1, v49) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v56 <= (v35 + 1))
      {
        v53 = v35 + 1;
      }

      else
      {
        v53 = v56;
      }

      v45 = v53 - 1;
      while (1)
      {
        v52 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        if (v52 >= v56)
        {
          v64 = 0;
          v48 = 1;
          goto LABEL_42;
        }

        v51 = *(v57 + 8 * v52);
        ++v35;
        if (v51)
        {
          goto LABEL_53;
        }
      }

      __break(1u);
LABEL_55:
      v36 = v69;
      v60 = *(v1 + 56);
      v60(v16, 1, 1, v69);
      v64 = 0;
    }

LABEL_29:
    sub_1D1741A30(v16, &qword_1EC6430E8, &unk_1D1E71440);
    sub_1D1716918();
    result = sub_1D1741A30(v37, &qword_1EC6430E8, &unk_1D1E71440);
    goto LABEL_14;
  }

LABEL_20:
  v33 = (v55 + 64) >> 6;
  if (v33 <= v30 + 1)
  {
    v34 = v30 + 1;
  }

  else
  {
    v34 = (v55 + 64) >> 6;
  }

  v35 = v34 - 1;
  while (1)
  {
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v32 >= v33)
    {
      goto LABEL_55;
    }

    v31 = *(v27 + 8 * v32);
    ++v30;
    if (v31)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

void *sub_1D17A53D0(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1D177F2B8(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1D17A5504(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1D177F724(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643270, &qword_1D1E716C8);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1D17A5608(uint64_t a1)
{
  v79 = sub_1D1E66A7C();
  v4 = *(v79 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v80 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v61 - v11;
  result = MEMORY[0x1EEE9AC00](v10);
  v16 = &v61 - v15;
  v17 = *(a1 + 16);
  v18 = *v1;
  v19 = *(*v1 + 2);
  v20 = v19 + v17;
  if (__OFADD__(v19, v17))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v78 = v14;
  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v77 = v12;
  if (!isUniquelyReferenced_nonNull_native || (v22 = *(v18 + 3) >> 1, v22 < v20))
  {
    if (v19 <= v20)
    {
      v23 = v19 + v17;
    }

    else
    {
      v23 = v19;
    }

    v18 = sub_1D177D0AC(isUniquelyReferenced_nonNull_native, v23, 1, v18);
    v22 = *(v18 + 3) >> 1;
  }

  v24 = *(v18 + 2);
  v20 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v19 = *(v4 + 72);
  v25 = v22 - v24;
  result = sub_1D1805CB0(&v81, &v18[v20 + v19 * v24], v22 - v24, a1);
  if (result < v17)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v28 = *(v18 + 2);
    v29 = __OFADD__(v28, result);
    v30 = v28 + result;
    if (v29)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v18 + 2) = v30;
  }

  if (result != v25)
  {
    result = sub_1D1716918();
LABEL_14:
    *v1 = v18;
    return result;
  }

LABEL_17:
  v76 = *(v18 + 2);
  v27 = v82;
  v67 = v81;
  v30 = v84;
  v26 = &v86;
  v62 = v83;
  v31 = v85;
  v65 = v82;
  if (v85)
  {
    v32 = v84;
LABEL_27:
    v74 = (v31 - 1) & v31;
    v36 = v79;
    (*(v2 + 16))(v16, *(v67 + 48) + (__clz(__rbit64(v31)) | (v32 << 6)) * v19, v79);
    v69 = *(v2 + 56);
    v69(v16, 0, 1, v36);
    v35 = v32;
    while (1)
    {
      v37 = v77;
      sub_1D1741C08(v16, v77, &qword_1EC642590, qword_1D1E71260);
      v38 = *(v2 + 48);
      v2 += 48;
      v73 = v38;
      if (v38(v37, 1, v36) == 1)
      {
        break;
      }

      v40 = (v4 + 32);
      v64 = (v62 + 64) >> 6;
      v68 = v4 + 56;
      v66 = (v4 + 16);
      v63 = (v4 + 8);
      v39 = v77;
      v75 = v40;
      while (1)
      {
        sub_1D1741A30(v39, &qword_1EC642590, qword_1D1E71260);
        v41 = *(v18 + 3);
        v42 = v41 >> 1;
        if ((v41 >> 1) < v76 + 1)
        {
          v18 = sub_1D177D0AC(v41 > 1, v76 + 1, 1, v18);
          v42 = *(v18 + 3) >> 1;
        }

        v43 = v78;
        sub_1D1741C08(v16, v78, &qword_1EC642590, qword_1D1E71260);
        if (v73(v43, 1, v79) != 1)
        {
          break;
        }

        v44 = v35;
        v45 = v78;
        v4 = v76;
LABEL_38:
        v35 = v44;
        sub_1D1741A30(v45, &qword_1EC642590, qword_1D1E71260);
        v76 = v4;
LABEL_33:
        *(v18 + 2) = v4;
        v39 = v77;
        sub_1D1741C08(v16, v77, &qword_1EC642590, qword_1D1E71260);
        if (v73(v39, 1, v79) == 1)
        {
          goto LABEL_30;
        }
      }

      v71 = &v18[v20];
      v4 = v76;
      v46 = *v75;
      if (v76 <= v42)
      {
        v47 = v42;
      }

      else
      {
        v47 = v76;
      }

      v72 = v47;
      v45 = v78;
      v48 = v79;
      v49 = v80;
      v70 = v46;
      while (1)
      {
        v53 = v49;
        v54 = v45;
        v55 = v48;
        v56 = v46;
        v46(v53, v54, v48);
        if (v4 == v72)
        {
          (*v63)(v80, v55);
          v4 = v72;
          v76 = v72;
          goto LABEL_33;
        }

        sub_1D1741A30(v16, &qword_1EC642590, qword_1D1E71260);
        v76 = v4;
        v56(&v71[v4 * v19], v80, v55);
        v57 = v74;
        if (!v74)
        {
          break;
        }

        v58 = v35;
LABEL_55:
        v74 = (v57 - 1) & v57;
        v51 = v79;
        (*v66)(v16, *(v67 + 48) + (__clz(__rbit64(v57)) | (v58 << 6)) * v19, v79);
        v50 = 0;
        v60 = v58;
LABEL_44:
        v4 = v76 + 1;
        v69(v16, v50, 1, v51);
        v45 = v78;
        sub_1D1741C08(v16, v78, &qword_1EC642590, qword_1D1E71260);
        v52 = v73(v45, 1, v51);
        v48 = v51;
        v35 = v60;
        v44 = v60;
        v49 = v80;
        v46 = v70;
        if (v52 == 1)
        {
          goto LABEL_38;
        }
      }

      if (v64 <= v35 + 1)
      {
        v59 = v35 + 1;
      }

      else
      {
        v59 = v64;
      }

      v60 = v59 - 1;
      while (1)
      {
        v58 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        if (v58 >= v64)
        {
          v74 = 0;
          v50 = 1;
          v51 = v79;
          goto LABEL_44;
        }

        v57 = *(v65 + 8 * v58);
        ++v35;
        if (v57)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_57:
      v36 = v79;
      v69 = *(v2 + 56);
      v69(v16, 1, 1, v79);
      v74 = 0;
    }

    v39 = v77;
LABEL_30:
    sub_1D1741A30(v16, &qword_1EC642590, qword_1D1E71260);
    sub_1D1716918();
    result = sub_1D1741A30(v39, &qword_1EC642590, qword_1D1E71260);
    goto LABEL_14;
  }

LABEL_20:
  v33 = (*(v26 - 32) + 64) >> 6;
  if (v33 <= v30 + 1)
  {
    v34 = v30 + 1;
  }

  else
  {
    v34 = v33;
  }

  v35 = v34 - 1;
  while (1)
  {
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v32 >= v33)
    {
      goto LABEL_57;
    }

    v31 = *(v27 + 8 * v32);
    ++v30;
    if (v31)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D17A5D28(void *a1)
{
  v69 = type metadata accessor for StaticService(0);
  v4 = *(v69 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v67 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v66 = &v54 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v16 = &v54 - v15;
  v17 = a1[2];
  v18 = *v2;
  v19 = *(*v2 + 16);
  v20 = v19 + v17;
  if (__OFADD__(v19, v17))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v1 = v4;
  v21 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v68 = v11;
  if (!isUniquelyReferenced_nonNull_native || (v23 = v18[3] >> 1, v23 < v20))
  {
    if (v19 <= v20)
    {
      v24 = v19 + v17;
    }

    else
    {
      v24 = v19;
    }

    v18 = sub_1D177D048(isUniquelyReferenced_nonNull_native, v24, 1, v18);
    v23 = v18[3] >> 1;
  }

  v25 = v18[2];
  v20 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v19 = *(v4 + 72);
  v26 = v23 - v25;
  result = sub_1D1804A58(&v70, v18 + v20 + v19 * v25, v23 - v25, a1);
  if (result < v17)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v28 = v18[2];
    v29 = __OFADD__(v28, result);
    v30 = v28 + result;
    if (v29)
    {
      __break(1u);
      goto LABEL_20;
    }

    v18[2] = v30;
  }

  if (result != v26)
  {
    result = sub_1D1716918();
LABEL_14:
    *v2 = v18;
    return result;
  }

LABEL_17:
  v65 = v18[2];
  v27 = v71;
  v57 = v71;
  v58 = v70;
  v30 = v73;
  v55 = v72;
  v31 = v74;
  if (v74)
  {
    v32 = v73;
LABEL_27:
    v64 = (v31 - 1) & v31;
    sub_1D17A6E14(*(v58 + 56) + (__clz(__rbit64(v31)) | (v32 << 6)) * v19, v16, type metadata accessor for StaticService);
    v36 = v69;
    v60 = *(v1 + 56);
    v60(v16, 0, 1, v69);
    v35 = v32;
    while (1)
    {
      v37 = v66;
      sub_1D1741C08(v16, v66, &qword_1EC6436F0, &qword_1D1E99BC0);
      v38 = *(v1 + 48);
      v1 += 48;
      v63 = v38;
      if (v38(v37, 1, v36) == 1)
      {
        break;
      }

      v56 = (v55 + 64) >> 6;
      v59 = v4 + 56;
      v39 = v65;
      while (1)
      {
        sub_1D1741A30(v37, &qword_1EC6436F0, &qword_1D1E99BC0);
        v42 = v18[3];
        v43 = v42 >> 1;
        v65 = v39;
        if ((v42 >> 1) < v39 + 1)
        {
          v18 = sub_1D177D048(v42 > 1, v39 + 1, 1, v18);
          v43 = v18[3] >> 1;
        }

        v44 = v68;
        sub_1D1741C08(v16, v68, &qword_1EC6436F0, &qword_1D1E99BC0);
        if (v63(v44, 1, v69) != 1)
        {
          break;
        }

        v45 = v35;
        v46 = v68;
LABEL_37:
        sub_1D1741A30(v46, &qword_1EC6436F0, &qword_1D1E99BC0);
        v40 = v65;
        v35 = v45;
LABEL_32:
        v18[2] = v40;
        v37 = v66;
        sub_1D1741C08(v16, v66, &qword_1EC6436F0, &qword_1D1E99BC0);
        v41 = v63(v37, 1, v69);
        v39 = v65;
        if (v41 == 1)
        {
          goto LABEL_29;
        }
      }

      v61 = v18 + v20;
      v47 = v65;
      if (v65 <= v43)
      {
        v47 = v43;
      }

      v62 = v47;
      v46 = v68;
      while (1)
      {
        v50 = v67;
        sub_1D17A6D4C(v46, v67, type metadata accessor for StaticService);
        if (v65 == v62)
        {
          sub_1D17A6DB4(v50, type metadata accessor for StaticService);
          v40 = v62;
          v65 = v62;
          goto LABEL_32;
        }

        v4 = v65;
        sub_1D1741A30(v16, &qword_1EC6436F0, &qword_1D1E99BC0);
        sub_1D17A6D4C(v50, &v61[v4 * v19], type metadata accessor for StaticService);
        v51 = v64;
        if (!v64)
        {
          break;
        }

        v52 = v35;
LABEL_53:
        v64 = (v51 - 1) & v51;
        sub_1D17A6E14(*(v58 + 56) + (__clz(__rbit64(v51)) | (v52 << 6)) * v19, v16, type metadata accessor for StaticService);
        v48 = 0;
        v45 = v52;
LABEL_42:
        v65 = v4 + 1;
        v49 = v69;
        v60(v16, v48, 1, v69);
        v46 = v68;
        sub_1D1741C08(v16, v68, &qword_1EC6436F0, &qword_1D1E99BC0);
        v35 = v45;
        if (v63(v46, 1, v49) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v56 <= (v35 + 1))
      {
        v53 = v35 + 1;
      }

      else
      {
        v53 = v56;
      }

      v45 = v53 - 1;
      while (1)
      {
        v52 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        if (v52 >= v56)
        {
          v64 = 0;
          v48 = 1;
          goto LABEL_42;
        }

        v51 = *(v57 + 8 * v52);
        ++v35;
        if (v51)
        {
          goto LABEL_53;
        }
      }

      __break(1u);
LABEL_55:
      v36 = v69;
      v60 = *(v1 + 56);
      v60(v16, 1, 1, v69);
      v64 = 0;
    }

LABEL_29:
    sub_1D1741A30(v16, &qword_1EC6436F0, &qword_1D1E99BC0);
    sub_1D1716918();
    result = sub_1D1741A30(v37, &qword_1EC6436F0, &qword_1D1E99BC0);
    goto LABEL_14;
  }

LABEL_20:
  v33 = (v55 + 64) >> 6;
  if (v33 <= v30 + 1)
  {
    v34 = v30 + 1;
  }

  else
  {
    v34 = (v55 + 64) >> 6;
  }

  v35 = v34 - 1;
  while (1)
  {
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v32 >= v33)
    {
      goto LABEL_55;
    }

    v31 = *(v27 + 8 * v32);
    ++v30;
    if (v31)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}