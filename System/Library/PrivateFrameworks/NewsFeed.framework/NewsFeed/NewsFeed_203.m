uint64_t sub_1D6DB9194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a5;
  v28 = a6;
  v25[1] = a2;
  v26 = a3;
  sub_1D6DBA2EC(0, &qword_1EDF3AA70, &qword_1EDF3AA78, MEMORY[0x1E69B3F28]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v25 - v10;
  sub_1D6DBA2EC(0, &qword_1EDF3A900, &qword_1EDF3A908, MEMORY[0x1E69B4438]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = v25 - v14;
  if (qword_1EDF1BB68 != -1)
  {
    swift_once();
  }

  sub_1D7262EBC();
  sub_1D5B67B28(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D7270C10;
  v30 = 0;
  v31 = 0xE000000000000000;
  v29 = a1;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  sub_1D7263F9C();
  v18 = v30;
  v17 = v31;
  v19 = MEMORY[0x1E69E6158];
  *(v16 + 56) = MEMORY[0x1E69E6158];
  v20 = sub_1D5B7E2C0();
  *(v16 + 32) = v18;
  *(v16 + 40) = v17;
  *(v16 + 96) = v19;
  *(v16 + 104) = v20;
  v21 = v26;
  *(v16 + 64) = v20;
  *(v16 + 72) = v21;
  *(v16 + 80) = a4;

  sub_1D725C30C();

  v22 = MEMORY[0x1E69B3F28];
  sub_1D6DB9DC8(0, &qword_1EDF3AA78, MEMORY[0x1E69B3F28]);
  (*(*(v23 - 8) + 56))(v11, 1, 1, v23);
  sub_1D72604FC();
  sub_1D6DBA344(v11, &qword_1EDF3AA70, &qword_1EDF3AA78, v22, sub_1D6DBA2EC);
  sub_1D7260CDC();
  sub_1D6DBA344(v15, &qword_1EDF3A900, &qword_1EDF3A908, MEMORY[0x1E69B4438], sub_1D6DBA2EC);
  return sub_1D726042C();
}

id sub_1D6DB94EC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = v4;
  v55 = a1;
  v9 = sub_1D725954C();
  v52 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v50 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D7260A6C();
  v51 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v49 = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  v16 = qword_1EDF1BB68;
  if (v15)
  {
    v17 = v15;
    v45 = v12;
    v47 = a4;
    v18 = a3;
    swift_unknownObjectRetain();
    if (v16 != -1)
    {
      swift_once();
    }

    v46 = v9;
    v19 = a2;
    v48 = v5;
    sub_1D5B67B28(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1D7270C10;
    result = [v17 articleID];
    if (result)
    {
      v22 = result;
      v23 = sub_1D726207C();
      v25 = v24;

      v26 = MEMORY[0x1E69E6158];
      *(v20 + 56) = MEMORY[0x1E69E6158];
      v27 = sub_1D5B7E2C0();
      *(v20 + 32) = v23;
      *(v20 + 40) = v25;
      *(v20 + 96) = v26;
      *(v20 + 104) = v27;
      *(v20 + 64) = v27;
      *(v20 + 72) = v19;
      v44[1] = v19;
      *(v20 + 80) = v18;

      sub_1D7262EDC();
      sub_1D725C30C();

      [v17 setDisplayAsNativeAd_];
      [v17 setSponsored_];
      sub_1D725958C();
      sub_1D725952C();

      type metadata accessor for NativeAdService();
      sub_1D6DBA55C(&qword_1EC896010, v28, type metadata accessor for NativeAdService);
      sub_1D725964C();

      v29 = sub_1D726203C();

      [v17 setSponsoredBy_];

      sub_1D725958C();
      sub_1D725956C();

      sub_1D725964C();

      v30 = HIBYTE(v54) & 0xF;
      if ((v54 & 0x2000000000000000) == 0)
      {
        v30 = v53 & 0xFFFFFFFFFFFFLL;
      }

      if (v30)
      {
        v31 = sub_1D726203C();

        [v17 setTitle_];
      }

      else
      {
      }

      v36 = v45;
      swift_unknownObjectRetain();

      sub_1D725958C();
      sub_1D725955C();

      v37 = v50;
      sub_1D725964C();

      sub_1D725953C();
      (*(v52 + 8))(v37, v46);
      v38 = v49;
      sub_1D7260A4C();
      swift_unknownObjectRelease();
      v39 = v47;
      (*(v51 + 32))(v47, v38, v36);
      v40 = *MEMORY[0x1E69B43F0];
      v41 = sub_1D7260E2C();
      (*(*(v41 - 8) + 104))(v39, v40, v41);
      v42 = *MEMORY[0x1E69B4410];
      v43 = sub_1D7260E3C();
      return (*(*(v43 - 8) + 104))(v39, v42, v43);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_1EDF1BB68 != -1)
    {
      swift_once();
    }

    sub_1D7262EBC();
    sub_1D5B67B28(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1D7270C10;
    v33 = MEMORY[0x1E69E6158];
    *(v32 + 56) = MEMORY[0x1E69E6158];
    v34 = sub_1D5B7E2C0();
    *(v32 + 32) = 0xD000000000000037;
    *(v32 + 40) = 0x80000001D73F2B30;
    *(v32 + 96) = v33;
    *(v32 + 104) = v34;
    *(v32 + 64) = v34;
    *(v32 + 72) = a2;
    *(v32 + 80) = a3;

    sub_1D725C30C();

    sub_1D6DBA298();
    swift_allocError();
    *v35 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t NativeAdService.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);

  return v0;
}

uint64_t NativeAdService.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);

  return swift_deallocClassInstance();
}

void sub_1D6DB9C54()
{
  if (!qword_1EDF3A968)
  {
    sub_1D726067C();
    sub_1D726073C();
    sub_1D72607CC();
    sub_1D6DBA55C(&qword_1EDF43968, 255, MEMORY[0x1E69B3FF0]);
    v0 = sub_1D7260C6C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3A968);
    }
  }
}

uint64_t sub_1D6DB9D48(uint64_t a1, uint64_t a2)
{
  sub_1D6DB9DC8(0, &qword_1EDF3AA40, MEMORY[0x1E69B3F80]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D6DB9DC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = sub_1D726067C();
    v8[1] = sub_1D72607CC();
    v8[2] = sub_1D6DBA55C(&qword_1EDF43968, 255, MEMORY[0x1E69B3FF0]);
    v8[3] = MEMORY[0x1E69B4070];
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D6DB9E90()
{
  if (!qword_1EDF3A910)
  {
    sub_1D6DB9DC8(255, &qword_1EDF3A908, MEMORY[0x1E69B4438]);
    sub_1D6DB9DC8(255, &qword_1EDF3A950, MEMORY[0x1E69B43B0]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF3A910);
    }
  }
}

uint64_t sub_1D6DB9F3C(uint64_t a1, uint64_t a2)
{
  sub_1D6DB9DC8(0, &qword_1EDF3AA40, MEMORY[0x1E69B3F80]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6DB9FBC()
{
  sub_1D6DB9DC8(0, &qword_1EDF3AA40, MEMORY[0x1E69B3F80]);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = (v0 + ((*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1D6DB6F40(*(v0 + 16), v0 + v2, *v3, v3[1]);
}

uint64_t sub_1D6DBA150(uint64_t a1)
{
  sub_1D6DB9DC8(0, &qword_1EDF3AA40, MEMORY[0x1E69B3F80]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D6DBA298()
{
  result = qword_1EDF30EE0;
  if (!qword_1EDF30EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF30EE0);
  }

  return result;
}

void sub_1D6DBA2EC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, void *))
{
  if (!*a2)
  {
    sub_1D6DB9DC8(255, a3, a4);
    v5 = sub_1D726393C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1D6DBA344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

id sub_1D6DBA3C4(uint64_t *a1, void *a2)
{
  v5 = *(sub_1D726044C() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  return sub_1D6DB8710(a1, a2, *(v2 + 16), *(v2 + 24), v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1D6DBA470(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1D726044C() - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return sub_1D6DB9194(a1, a2, v6, v7, v8, v9);
}

void sub_1D6DBA4F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6DBA55C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_1D6DBA5B8()
{
  result = qword_1EC896030;
  if (!qword_1EC896030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896030);
  }

  return result;
}

uint64_t FormatTextNodeTransform.description.getter()
{
  v1 = 0x7361637265776F6CLL;
  if (*v0 != 1)
  {
    v1 = 0x696C617469706163;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7361637265707075;
  }
}

uint64_t FormatTextNodeTransform.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D6DBA6F8()
{
  result = qword_1EC896040;
  if (!qword_1EC896040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896040);
  }

  return result;
}

unint64_t sub_1D6DBA74C(uint64_t a1)
{
  result = sub_1D6DBA774();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6DBA774()
{
  result = qword_1EC896048;
  if (!qword_1EC896048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896048);
  }

  return result;
}

unint64_t sub_1D6DBA7C8(void *a1)
{
  a1[1] = sub_1D5C35010();
  a1[2] = sub_1D5D43774();
  result = sub_1D6DBA6F8();
  a1[3] = result;
  return result;
}

uint64_t sub_1D6DBA800()
{
  v1 = 0x7361637265776F6CLL;
  if (*v0 != 1)
  {
    v1 = 0x696C617469706163;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7361637265707075;
  }
}

unint64_t sub_1D6DBA870()
{
  v1 = *(v0 + 8);
  if (v1 >> 5 <= 3)
  {
    if (v1 >> 5 > 1)
    {
      sub_1D7263D4C();

      v5 = 0xD00000000000001BLL;
    }

    else
    {
      sub_1D7263D4C();

      v5 = 0xD000000000000012;
      type metadata accessor for UIUserInterfaceIdiom(0);
      sub_1D5E4E35C();
    }

    v2 = sub_1D7262B1C();
    goto LABEL_13;
  }

  if (v1 >> 5 <= 5)
  {
    sub_1D7263D4C();

    v5 = 0xD00000000000001ALL;
LABEL_12:
    v2 = sub_1D7262A9C();
LABEL_13:
    MEMORY[0x1DA6F9910](v2);

    return v5;
  }

  if ((v1 & 1) == 0)
  {
    sub_1D7263D4C();

    v5 = 0xD00000000000001BLL;
    goto LABEL_12;
  }

  sub_1D7263D4C();

  v5 = 0xD00000000000001BLL;
  v3 = sub_1D7262A9C();
  MEMORY[0x1DA6F9910](v3);

  MEMORY[0x1DA6F9910](0x736E6D756C6F6320, 0xE800000000000000);
  return v5;
}

unint64_t GroupLayoutRequirement.description.getter()
{
  v1 = *(v0 + 8);
  if (v1 >> 5 > 3)
  {
    sub_1D7263D4C();

    if (v1 >> 5 > 5)
    {
      v5 = 0xD000000000000012;
      v3 = GroupLayoutDimensionSizeSpec.description.getter();
    }

    else
    {
      v5 = 0xD000000000000011;
      v3 = sub_1D7262A9C();
    }

    goto LABEL_8;
  }

  if (v1 >> 5 > 1)
  {
    sub_1D7263D4C();

    v5 = 0xD000000000000019;
    v3 = sub_1D7262B1C();
LABEL_8:
    MEMORY[0x1DA6F9910](v3);

    MEMORY[0x1DA6F9910](41, 0xE100000000000000);
    return v5;
  }

  sub_1D7263D4C();

  v5 = 0xD000000000000011;
  type metadata accessor for UIUserInterfaceIdiom(0);
  sub_1D5E4E35C();
  v2 = sub_1D7262B1C();
  MEMORY[0x1DA6F9910](v2);

  return v5;
}

uint64_t GroupLayoutDimensionSizeSpec.description.getter()
{
  if (*(v0 + 8))
  {
    sub_1D7263D4C();

    v1 = 0x754D6E6D756C6F63;
  }

  else
  {
    v1 = 0x2865756C6176;
  }

  v4 = v1;
  v2 = sub_1D7262A9C();
  MEMORY[0x1DA6F9910](v2);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return v4;
}

uint64_t sub_1D6DBAE74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x79 && *(a1 + 9))
  {
    return (*a1 + 121);
  }

  v3 = ((*(a1 + 8) >> 5) & 0xFFFFFF87 | (8 * ((*(a1 + 8) >> 1) & 0xF))) ^ 0x7F;
  if (v3 >= 0x78)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D6DBAEC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x78)
  {
    *(result + 8) = 0;
    *result = a2 - 121;
    if (a3 >= 0x79)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x79)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t FormatDecorationItem.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatDecorationItem.deinit()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120) | (*(v0 + 122) << 16);

  sub_1D62B6F70(v1, v2);

  return v0;
}

uint64_t FormatDecorationItem.__deallocating_deinit()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120) | (*(v0 + 122) << 16);

  sub_1D62B6F70(v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1D6DBB128@<X0>(unsigned int (**a1)(uint64_t, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v176 = a3;
  v217 = a2;
  v216 = a1;
  v198 = a4;
  v182 = sub_1D7257F3C();
  MEMORY[0x1EEE9AC00](v182, v6);
  v181 = v169 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = sub_1D725823C();
  v200 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174, v8);
  v187 = v169 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = sub_1D72581BC();
  v206 = *(v213 - 8);
  MEMORY[0x1EEE9AC00](v213, v10);
  v205 = (v169 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v211 = sub_1D725819C();
  v189 = *(v211 - 8);
  MEMORY[0x1EEE9AC00](v211, v12);
  v204 = v169 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6DBD3D4(0, &qword_1EC896050, MEMORY[0x1E6968940]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v188 = v169 - v16;
  v225 = sub_1D72581CC();
  v194 = *(v225 - 8);
  MEMORY[0x1EEE9AC00](v225, v17);
  v197 = v169 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D681334C();
  v185 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v173 = v169 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v196 = v169 - v24;
  v212 = sub_1D725808C();
  v210 = *(v212 - 8);
  MEMORY[0x1EEE9AC00](v212, v25);
  v226 = v169 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6DBD3D4(0, &qword_1EC896058, MEMORY[0x1E6981128]);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v223 = v169 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v222 = v169 - v32;
  v224 = sub_1D725815C();
  v199 = *(v224 - 1);
  MEMORY[0x1EEE9AC00](v224, v33);
  v35 = v169 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = v169 - v38;
  sub_1D6DBD1DC();
  v220 = v40;
  MEMORY[0x1EEE9AC00](v40, v41);
  v219 = v169 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = sub_1D725805C();
  v207 = *(v208 - 1);
  MEMORY[0x1EEE9AC00](v208, v43);
  v203 = v169 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6DBD338(0, &qword_1EC896068, MEMORY[0x1E69E6EA0]);
  MEMORY[0x1EEE9AC00](v45 - 8, v46);
  v209 = v169 - v47;
  sub_1D6DBD318(0);
  v201 = v48;
  MEMORY[0x1EEE9AC00](v48, v49);
  v221 = v169 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6DBD3D4(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v51 - 8, v52);
  v215 = v169 - v53;
  v214 = sub_1D7257FAC();
  v54 = *(v214 - 1);
  MEMORY[0x1EEE9AC00](v214, v55);
  v57 = v169 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1D7257FBC();
  v59 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58, v60);
  v62 = v169 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1D7257FDC();
  MEMORY[0x1EEE9AC00](v63 - 8, v64);
  v175 = sub_1D72580BC();
  v202 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175, v65);
  v172 = v169 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = MEMORY[0x1EEE9AC00](v67, v68);
  v71 = v169 - v70;
  (*(v59 + 104))(v62, *MEMORY[0x1E6968750], v58, v69);
  (*(v54 + 104))(v57, *MEMORY[0x1E6968730], v214);
  sub_1D7257FCC();
  v72 = sub_1D72585BC();
  (*(*(v72 - 8) + 56))(v215, 1, 1, v72);
  v73 = v218;
  sub_1D725809C();
  if (v73)
  {
    return __swift_destroy_boxed_opaque_existential_1(v176);
  }

  v169[1] = 0;
  (*(v202 + 32))(v198, v71, v175);
  v184 = objc_opt_self();
  v228 = [v184 systemFontOfSize_];
  v183 = sub_1D62DE440();
  sub_1D72580DC();
  v179 = objc_opt_self();
  v228 = [v179 secondaryLabelColor];
  v178 = sub_1D62DE4FC();
  sub_1D72580DC();
  v75 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v75 setParagraphSpacing_];
  [v75 setMinimumLineHeight_];
  v228 = v75;
  v177 = sub_1D62DEA50();
  sub_1D72580DC();
  v76 = 0;
  v77 = *MEMORY[0x1E69DB978];
  v78 = *MEMORY[0x1E69DB958];
  v79 = (v199 + 8);
  v80 = v224;
  do
  {
    v83 = *(&unk_1F5118650 + v76 + 32);
    sub_1D725814C();
    v228 = v83;
    LOBYTE(v229) = 0;
    sub_1D6DBD428();
    sub_1D725816C();
    if (v83 > 3)
    {
      if (v83 == 4)
      {
        v228 = [v184 monospacedSystemFontOfSize:a5 weight:v77];
        sub_1D725816C();
        v228 = [v179 labelColor];
        goto LABEL_6;
      }

      if (v83 == 32)
      {
        v84 = v222;
        sub_1D72616EC();
        v85 = sub_1D72616FC();
        (*(*(v85 - 8) + 56))(v84, 0, 1, v85);
        sub_1D6DBDAAC(v84, v223);
        sub_1D6DBDB2C();
        sub_1D725816C();
        v86 = v84;
        v80 = v224;
        sub_1D6DBD4FC(v86, &qword_1EC896058, MEMORY[0x1E6981128]);
      }
    }

    else
    {
      if (v83 == 1)
      {
        v81 = [v184 italicSystemFontOfSize_];
LABEL_5:
        v228 = v81;
LABEL_6:
        sub_1D725816C();
        goto LABEL_7;
      }

      if (v83 == 2)
      {
        v81 = [v184 systemFontOfSize:a5 weight:v78];
        goto LABEL_5;
      }
    }

LABEL_7:
    sub_1D725814C();
    v228 = v83;
    LOBYTE(v229) = 0;
    sub_1D725816C();
    sub_1D7257F7C();
    v82 = *v79;
    (*v79)(v35, v80);
    v82(v39, v80);
    v76 += 8;
  }

  while (v76 != 32);
  v87 = v203;
  sub_1D725807C();
  sub_1D6DBD2C4();
  v88 = v209;
  sub_1D725806C();
  (*(v207 + 8))(v87, v208);
  sub_1D6DBD268();
  v90 = v89;
  v91 = *(v89 - 8);
  (*(v91 + 16))(v221, v88, v89);
  v92 = *(v201 + 36);
  v93 = sub_1D6DBDD04(&qword_1EC896098, sub_1D6DBD268);
  v217 = v92;
  sub_1D7262C5C();
  v94 = *(v91 + 8);
  v218 = v90;
  v95 = v90;
  v96 = v93;
  v94(v88, v95);
  v193 = 0;
  v224 = (v210 + 1);
  v216 = (v194 + 48);
  v191 = (v194 + 32);
  v209 = (v189 + 16);
  v208 = (v206 + 11);
  LODWORD(v207) = *MEMORY[0x1E6968928];
  LODWORD(v203) = *MEMORY[0x1E6968930];
  LODWORD(v201) = *MEMORY[0x1E6968938];
  LODWORD(v199) = *MEMORY[0x1E6968918];
  v195 = *MEMORY[0x1E6968920];
  v186 = *MEMORY[0x1E6968910];
  v210 = (v189 + 8);
  v180 = (v206 + 1);
  v206 += 12;
  v171 = (v200 + 8);
  v170 = (v202 + 8);
  v190 = (v194 + 8);
  v97 = *MEMORY[0x1E69DB960];
  v98 = v188;
  v99 = v196;
  v100 = v212;
  v192 = v96;
  while (1)
  {
LABEL_18:
    v101 = v226;
    v102 = v221;
    sub_1D7262BFC();
    v223 = sub_1D6DBDD04(&qword_1EC8960A0, MEMORY[0x1E69687E8]);
    v103 = sub_1D7261FBC();
    v222 = *v224;
    (v222)(v101, v100);
    if (v103)
    {
      sub_1D6DBDA4C(v102, sub_1D6DBD318);
      return __swift_destroy_boxed_opaque_existential_1(v176);
    }

    sub_1D6DBDD04(&qword_1EC896080, sub_1D6DBD268);
    sub_1D7261EFC();
    v104 = sub_1D7262D0C();
    v105 = v219;
    sub_1D6DBDC34(v106, v219, sub_1D6DBD1DC);
    v104(&v228, 0);
    sub_1D6DBDC9C(v105 + *(v220 + 48), v99, sub_1D681334C);
    sub_1D6DBD47C(v105, v98);
    v107 = v225;
    if ((*v216)(v98, 1, v225) != 1)
    {
      break;
    }

    sub_1D6DBDA4C(v99, sub_1D681334C);
    sub_1D6DBD4FC(v98, &qword_1EC896050, MEMORY[0x1E6968940]);
  }

  (*v191)(v197, v98, v107);
  v108 = sub_1D72581AC();
  v109 = *(v108 + 16);
  if (!v109)
  {

    v193 = 0;
    goto LABEL_58;
  }

  v200 = 0;
  v202 = 0;
  v110 = 0;
  v111 = 0;
  v112 = (*(v189 + 80) + 32) & ~*(v189 + 80);
  v194 = v108;
  v113 = v108 + v112;
  v215 = *(v189 + 72);
  v214 = *(v189 + 16);
  v114 = -1;
  v115 = v205;
  v116 = v204;
  while (2)
  {
    v117 = v211;
    v214(v116, v113, v211);
    v118 = v116;
    v119 = v117;
    sub_1D725817C();
    v120 = v213;
    v121 = (*v208)(v115, v213);
    if (v121 == v207)
    {
      (*v210)(v118, v119);
      sub_1D6DBD884(v110, v111, v114);
      (*v206)(v115, v120);
      v111 = 0;
      v114 = 0;
      v110 = *v115;
      v116 = v118;
      goto LABEL_30;
    }

    v122 = v119;
    if (v121 == v203)
    {
      v116 = v204;
      (*v210)(v204, v122);
      sub_1D6DBD884(v110, v111, v114);
      v115 = v205;
      (*v206)(v205, v120);
      v111 = 0;
      v110 = *v115;
      v114 = 1;
      v202 = *v115;
      goto LABEL_30;
    }

    v116 = v204;
    if (v121 == v201)
    {
      (*v210)(v204, v122);
      sub_1D6DBD884(v110, v111, v114);
      v115 = v205;
      (*v206)(v205, v120);
      v110 = *v115;
      v111 = v115[1];
      v114 = 2;
      goto LABEL_30;
    }

    if (v121 != v199)
    {
      v100 = v212;
      if (v121 == v195)
      {
        sub_1D6DBD884(v110, v111, v114);
        v200 = sub_1D725818C();
        (*v210)(v116, v122);
        v110 = 0;
        v111 = 0;
        v114 = 3;
      }

      else
      {
        v123 = v121;
        (*v210)(v204, v122);
        if (v123 != v186)
        {
          v115 = v205;
          (*v180)(v205, v213);
          goto LABEL_31;
        }

        sub_1D6DBD884(v110, v111, v114);
        v111 = 0;
        v114 = 3;
        v110 = 1;
      }

      v115 = v205;
      goto LABEL_31;
    }

    sub_1D6DBD884(v110, v111, v114);
    v200 = sub_1D725818C();
    (*v210)(v116, v122);
    v111 = 0;
    v114 = 1;
    v110 = v202;
    v115 = v205;
LABEL_30:
    v100 = v212;
LABEL_31:
    v113 += v215;
    if (--v109)
    {
      continue;
    }

    break;
  }

  v124 = v187;
  if (v114 > 1u)
  {
    if (v114 != 2)
    {
      if (v114 == 3)
      {
        if (v110 | v111)
        {
          v125 = [v179 tertiaryLabelColor];
          sub_1D6DBDD04(&qword_1EDF046C0, sub_1D681334C);
          v126 = v196;
          v127 = sub_1D72580EC();
          v227 = v125;
          sub_1D725824C();
          v127(&v228, 0);
          v128 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
          [v128 setParagraphSpacing_];
          [v128 setMinimumLineHeight_];
          v129 = sub_1D72580EC();
          v227 = v128;
          sub_1D725824C();
          v129(&v228, 0);
          v99 = v126;
          v193 = v200;
        }

        else
        {
          v164 = sub_1D7257F0C();
          v165 = v196;
          sub_1D6DBD558(547520738, 0xA400000000000000, v196);
          v164(&v228, 0);
          v166 = v200;
          v167 = sub_1D6DBD8B0(v200 != v193);
          sub_1D6DBDD04(&qword_1EDF046C0, sub_1D681334C);
          v168 = sub_1D72580EC();
          v227 = v167;
          v99 = v165;
          sub_1D725824C();
          v168(&v228, 0);
          v193 = v166;
        }

        v98 = v188;
        v141 = v226;
        v140 = v197;
        goto LABEL_60;
      }

      v193 = v200;
      v98 = v188;
      v140 = v197;
      v99 = v196;
LABEL_59:
      v141 = v226;
      goto LABEL_60;
    }

    sub_1D6DBD884(v110, v111, 2);
    sub_1D6DBDD04(&qword_1EDF046C0, sub_1D681334C);
    v142 = v196;
    sub_1D72580FC();
    sub_1D725820C();
    (*v171)(v124, v174);
    sub_1D6DBDD04(&qword_1EC885818, MEMORY[0x1E6968678]);
    v143 = sub_1D726234C();
    v145 = v144;
    v146 = __swift_project_boxed_opaque_existential_1(v176, v176[3]);
    v147 = v146[5];
    v230[4] = v146[4];
    v230[5] = v147;
    v230[6] = v146[6];
    v148 = v146[1];
    v230[0] = *v146;
    v230[1] = v148;
    v149 = v146[3];
    v230[2] = v146[2];
    v230[3] = v149;
    v150 = sub_1D691B724(v143, v145, v230, 1);

    v151 = v150;
    v152 = v172;
    sub_1D725810C();
    sub_1D6DBDD04(&qword_1EC8930D0, MEMORY[0x1E6968848]);
    v153 = v175;
    v99 = v142;
    sub_1D7257F6C();

    (*v170)(v152, v153);
    v193 = v200;
LABEL_57:
    v98 = v188;
LABEL_58:
    v140 = v197;
    goto LABEL_59;
  }

  if (v114)
  {
    v227 = v110;
    v228 = sub_1D72644BC();
    v229 = v154;
    MEMORY[0x1DA6F9910](8238, 0xE200000000000000);
    v155 = v228;
    v156 = v229;
    v157 = sub_1D7257F0C();
    v158 = v196;
    sub_1D6DBD558(v155, v156, v196);
    v157(&v228, 0);
    v159 = v200;
    v160 = sub_1D6DBD8B0(v200 != v193);
    sub_1D6DBDD04(&qword_1EDF046C0, sub_1D681334C);
    v161 = sub_1D72580EC();
    v227 = v160;
    v99 = v158;
    sub_1D725824C();
    v161(&v228, 0);
    v193 = v159;
    goto LABEL_57;
  }

  if (v110 >= 5)
  {
    v130 = 5;
  }

  else
  {
    v130 = v110;
  }

  v131 = __OFSUB__(5, v130);
  v132 = 5 - v130;
  v133 = v173;
  if (!v131)
  {
    v134 = [v184 systemFontOfSize:(v132 & ~(v132 >> 63)) + (v132 & ~(v132 >> 63)) + a5 + (v132 & ~(v132 >> 63)) weight:v97];
    sub_1D6DBDD04(&qword_1EDF046C0, sub_1D681334C);
    v135 = v196;
    v136 = sub_1D72580EC();
    v227 = v134;
    sub_1D725824C();
    v136(&v228, 0);
    sub_1D6DBDC34(v135, v133, sub_1D681334C);
    v137 = &selRef_secondaryLabelColor;
    if (v110 != 6)
    {
      v137 = &selRef_labelColor;
    }

    v138 = [v179 *v137];
    v139 = sub_1D72580EC();
    v227 = v138;
    v99 = v135;
    v100 = v212;
    sub_1D725824C();
    v139(&v228, 0);
    v140 = v197;
    sub_1D6DBDA4C(v133, sub_1D681334C);
    v193 = v200;
    v98 = v188;
    v141 = v226;
LABEL_60:
    sub_1D7257F2C();
    v162 = sub_1D7261FBC();
    (v222)(v141, v100);
    if ((v162 & 1) == 0)
    {
      v163 = sub_1D7257F0C();
      sub_1D6DBD558(10, 0xE100000000000000, v196);
      v163(&v228, 0);
      v99 = v196;
    }

    (*v190)(v140, v225);
    sub_1D6DBDA4C(v99, sub_1D681334C);
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

void sub_1D6DBD1DC()
{
  if (!qword_1EC896060)
  {
    sub_1D6DBD3D4(255, &qword_1EC896050, MEMORY[0x1E6968940]);
    sub_1D681334C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC896060);
    }
  }
}

void sub_1D6DBD268()
{
  if (!qword_1EC896070)
  {
    sub_1D6DBD2C4();
    v0 = sub_1D7257FEC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC896070);
    }
  }
}

unint64_t sub_1D6DBD2C4()
{
  result = qword_1EC896078;
  if (!qword_1EC896078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896078);
  }

  return result;
}

void sub_1D6DBD338(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1D6DBD268();
    v7 = v6;
    v8 = sub_1D6DBDD04(&qword_1EC896080, sub_1D6DBD268);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D6DBD3D4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D6DBD428()
{
  result = qword_1EC896090;
  if (!qword_1EC896090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896090);
  }

  return result;
}

uint64_t sub_1D6DBD47C(uint64_t a1, uint64_t a2)
{
  sub_1D6DBD3D4(0, &qword_1EC896050, MEMORY[0x1E6968940]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6DBD4FC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D6DBD3D4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D6DBD558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1D6DBDBCC();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v29 - v15;
  sub_1D681334C();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29[2] = a1;
  v29[3] = a2;
  v22 = sub_1D725808C();
  sub_1D6DBDD04(&qword_1EDF3C408, MEMORY[0x1E69687E8]);
  result = sub_1D7261F7C();
  if (result)
  {
    v24 = *(v22 - 8);
    v25 = v24[2];
    v29[1] = v4;
    v25(v16, a3, v22);
    v25(&v16[*(v9 + 48)], a3, v22);
    sub_1D6DBDC34(v16, v12, sub_1D6DBDBCC);
    v26 = *(v9 + 48);
    v27 = v24[4];
    v27(v21, v12, v22);
    v29[0] = v18;
    v28 = v24[1];
    v28(&v12[v26], v22);
    sub_1D6DBDC9C(v16, v12, sub_1D6DBDBCC);
    v27(&v21[*(v29[0] + 36)], &v12[*(v9 + 48)], v22);
    v28(v12, v22);
    sub_1D7257F3C();
    sub_1D6DBDD04(qword_1EC8960C0, MEMORY[0x1E6968678]);
    sub_1D6812DF0();
    sub_1D7262D1C();
    return sub_1D6DBDA4C(v21, sub_1D681334C);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6DBD884(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1D6DBD898(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1D6DBD898(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  return result;
}

id sub_1D6DBD8B0(char a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  sub_1D5E42B34();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D72816C0;
  sub_1D605DA44(MEMORY[0x1E69E7CC0]);
  v4 = objc_allocWithZone(MEMORY[0x1E69DB858]);
  type metadata accessor for OptionKey(0);
  sub_1D6DBDD04(&qword_1EC87F1C0, type metadata accessor for OptionKey);
  v5 = sub_1D7261D2C();

  v6 = [v4 initWithTextAlignment:0 location:v5 options:20.0];

  *(v3 + 32) = v6;
  sub_1D6DBDB80();
  v7 = sub_1D726265C();

  [v2 setTabStops_];

  [v2 setHeadIndent_];
  [v2 setMinimumLineHeight_];
  if (a1)
  {
    [v2 setParagraphSpacing_];
  }

  return v2;
}

uint64_t sub_1D6DBDA4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6DBDAAC(uint64_t a1, uint64_t a2)
{
  sub_1D6DBD3D4(0, &qword_1EC896058, MEMORY[0x1E6981128]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D6DBDB2C()
{
  result = qword_1EC8960A8;
  if (!qword_1EC8960A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8960A8);
  }

  return result;
}

unint64_t sub_1D6DBDB80()
{
  result = qword_1EC8960B0;
  if (!qword_1EC8960B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC8960B0);
  }

  return result;
}

void sub_1D6DBDBCC()
{
  if (!qword_1EC8960B8)
  {
    sub_1D725808C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC8960B8);
    }
  }
}

uint64_t sub_1D6DBDC34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6DBDC9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6DBDD04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D6DBDDAC()
{
  result = sub_1D6011D6C(2573, 0xE200000000000000);
  qword_1EC9BACE0 = result;
  *algn_1EC9BACE8 = v1;
  return result;
}

uint64_t sub_1D6DBDDD8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v9 = result;
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      while ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1DA6FB460](v6, a3);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v10 = v7;
        v9(&v10);

        if (!v3)
        {
          ++v6;
          if (v8 != v5)
          {
            continue;
          }
        }

        return result;
      }

      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(a3 + 8 * v6 + 32);

      v8 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = sub_1D7263BFC();
      v5 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_1D6DBDEEC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 32); ; ++i)
    {
      v7 = *i;
      swift_unknownObjectRetain();
      v5(&v7);
      if (v3)
      {
        break;
      }

      result = swift_unknownObjectRelease();
      if (!--v4)
      {
        return result;
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void PuzzleGameCenterServiceType.leaderboard(for:difficulty:scope:range:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 32) = *a6;
  *(v10 + 33) = 0;
  v12 = *(a10 + 80) + **(a10 + 80);
  v11 = swift_task_alloc();
  *(v10 + 16) = v11;
  *v11 = v10;
  v11[1] = sub_1D6DBE108;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_1D6DBE108()
{
  v2 = *v1;
  *(v2 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D6DBE23C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t PuzzleLeaderboardResult.entries.getter()
{
  type metadata accessor for PuzzleLeaderboardResult(0);
}

uint64_t PuzzleLeaderboardResult.leaderboardName.getter()
{
  v1 = *(v0 + *(type metadata accessor for PuzzleLeaderboardResult(0) + 28));

  return v1;
}

uint64_t PuzzleGameCenterActivityRequest.Leaderboard.leaderboardID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1D6DBE420@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v5 = v3 + *(a1(0) + 20);

  return a2(v5, a3);
}

uint64_t sub_1D6DBE4B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id PuzzleGameCenterActivityRequest.referralChallenge.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for PuzzleGameCenterActivityRequest(0) + 24));
  *a1 = v3;

  return v3;
}

uint64_t PuzzleGameCenterServiceType.presentLeaderboard(entryPoint:presenter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v8;
  *(v4 + 40) = v9;
  v12 = (*(a4 + 88) + **(a4 + 88));
  v10 = swift_task_alloc();
  *(v4 + 48) = v10;
  *v10 = v4;
  v10[1] = sub_1D6DBE700;

  return v12(v4 + 16, a2, nullsub_1, 0, a3, a4);
}

uint64_t sub_1D6DBE700()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D6DBE834, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D6DBE84C()
{
  if (*(v0 + 32))
  {
    v1 = 0xE300000000000000;
    v2 = 7104878;
  }

  else
  {
    v2 = sub_1D72644BC();
    v1 = v3;
  }

  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0xD00000000000002DLL, 0x80000001D73F3000);
  MEMORY[0x1DA6F9910](*v0, *(v0 + 8));
  MEMORY[0x1DA6F9910](0x636966666964202CLL, 0xEF203D2079746C75);
  MEMORY[0x1DA6F9910](v2, v1);

  MEMORY[0x1DA6F9910](0x2065726F6373202CLL, 0xEA0000000000203DLL);
  v4 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v4);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0;
}

uint64_t PuzzleGameCenterSubmitScoreError.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

uint64_t sub_1D6DBEA70()
{
  sub_1D72596FC();
  sub_1D72596DC();
  if (qword_1EDF3C220 != -1)
  {
    swift_once();
  }

  v1 = sub_1D72596EC();

  v3 = 0;
  if (v1)
  {
    if (qword_1EDF181C8 != -1)
    {
      swift_once();
    }

    sub_1D5B6F648(&qword_1EDF0D2E0, v2, type metadata accessor for PuzzleGameCenterService);
    sub_1D725964C();
    v3 = *(v0 + 56);
  }

  v4 = *(v0 + 8);

  return v4(v3);
}

unint64_t sub_1D6DBEBC4()
{
  result = qword_1EC896158;
  if (!qword_1EC896158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896158);
  }

  return result;
}

void sub_1D6DBEC40()
{
  sub_1D604426C(319);
  if (v0 <= 0x3F)
  {
    sub_1D5C42D18(319, &qword_1EDF3C898, type metadata accessor for PuzzleLeaderboardEntry, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1D5B49D58(319, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D6DBED38(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1D6DBED88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1D6DBEDE4(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(result + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D6DBEE3C()
{
  result = type metadata accessor for PuzzleGameCenterActivityRequest(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D6DBEF0C()
{
  sub_1D6DBE520(319);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1D6DBEFB8()
{
  sub_1D5C42D18(319, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t dispatch thunk of PuzzleGameCenterServiceType.lastAuthenticationResult.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 32) + **(a2 + 32));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D6DBF1A8;

  return v7(a1, a2);
}

uint64_t sub_1D6DBF1A8(uint64_t a1, char a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2 & 1);
}

uint64_t dispatch thunk of PuzzleGameCenterServiceType.isGameCenterEnabled.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 40) + **(a2 + 40));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D6045DDC;

  return v7(a1, a2);
}

uint64_t dispatch thunk of PuzzleGameCenterServiceType.authenticate()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 48) + **(a2 + 48));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D5B64680;

  return v7(a1, a2);
}

uint64_t dispatch thunk of PuzzleGameCenterServiceType.invalidate()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 56) + **(a2 + 56));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D5B64680;

  return v7(a1, a2);
}

uint64_t dispatch thunk of PuzzleGameCenterServiceType.submitScore(puzzleID:difficulty:score:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 64) + **(a7 + 64));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1D5B64680;

  return v17(a1, a2, a3, a4 & 1, a5, a6, a7);
}

uint64_t dispatch thunk of PuzzleGameCenterServiceType.submitTestScore(puzzleTypeID:difficulty:score:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 72) + **(a7 + 72));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1D5B64680;

  return v17(a1, a2, a3, a4 & 1, a5, a6, a7);
}

uint64_t dispatch thunk of PuzzleGameCenterServiceType.leaderboard(for:difficulty:scope:timeScope:range:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20 = (*(a11 + 80) + **(a11 + 80));
  v18 = swift_task_alloc();
  *(v11 + 16) = v18;
  *v18 = v11;
  v18[1] = sub_1D5B64684;

  return v20(a1, a2, a3, a4, a5 & 1, a6, a7, a8, a9, a10, a11);
}

uint64_t dispatch thunk of PuzzleGameCenterServiceType.presentLeaderboard(entryPoint:presenter:onDashboardFinished:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 88) + **(a6 + 88));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1D5B64680;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of PuzzleGameCenterServiceType.removeListener(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 112) + **(a4 + 112));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D5B64680;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PuzzleGameCenterServiceType.processPendingGameActivitiesStateChanged(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 120) + **(a3 + 120));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D5B64680;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PuzzleGameCenterServiceType.isPresentingDashboard.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 136) + **(a2 + 136));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D6045DDC;

  return v7(a1, a2);
}

uint64_t dispatch thunk of PuzzleGameCenterServiceType.hasPendingGameCenterActivities.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 152) + **(a2 + 152));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D6036AEC;

  return v7(a1, a2);
}

uint64_t sub_1D6DC0034()
{
  *(v1 + 232) = v0;
  v2 = swift_task_alloc();
  *(v1 + 240) = v2;
  *v2 = v1;
  v2[1] = sub_1D6DC00C4;

  return sub_1D5B73F60();
}

uint64_t sub_1D6DC00C4(char a1)
{
  v2 = *(*v1 + 232);
  *(*v1 + 305) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D6DC01DC, v2, 0);
}

uint64_t sub_1D6DC01DC(double a1)
{
  if (*(v1 + 305) != 1)
  {
    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v9 = sub_1D725C42C();
    __swift_project_value_buffer(v9, qword_1EDFFCFA8);
    v5 = sub_1D725C3FC();
    v10 = sub_1D7262EDC();
    if (os_log_type_enabled(v5, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1D5B42000, v5, v10, "PuzzleGameCenterService: Game Center disabled. Skipping authentication.", v11, 2u);
      MEMORY[0x1DA6FD500](v11, -1, -1);
    }

    goto LABEL_21;
  }

  gotLoadHelper_x8__OBJC_CLASS___GKLocalPlayer(a1);
  v2 = [objc_opt_self() localPlayer];
  *(v1 + 248) = v2;
  v3 = [v2 authenticateHandler];
  if (v3)
  {
    _Block_release(v3);
    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v4 = sub_1D725C42C();
    __swift_project_value_buffer(v4, qword_1EDFFCFA8);
    v5 = sub_1D725C3FC();
    v6 = sub_1D7262EDC();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_20;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "PuzzleGameCenterService: authenticateHandler already set. Skipping authentication.";
LABEL_19:
    _os_log_impl(&dword_1D5B42000, v5, v6, v8, v7, 2u);
    MEMORY[0x1DA6FD500](v7, -1, -1);
LABEL_20:

LABEL_21:
    v16 = *(v1 + 8);

    return v16();
  }

  if (![*(*(v1 + 232) + 280) isNetworkReachable])
  {
    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v15 = sub_1D725C42C();
    __swift_project_value_buffer(v15, qword_1EDFFCFA8);
    v5 = sub_1D725C3FC();
    v6 = sub_1D7262EDC();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_20;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "PuzzleGameCenterService: Network is not reachable. Skipping authentication.";
    goto LABEL_19;
  }

  v12 = objc_opt_self();
  *(v1 + 16) = v1;
  *(v1 + 56) = v1 + 304;
  *(v1 + 24) = sub_1D6DC058C;
  v13 = swift_continuation_init();
  sub_1D5B937D4();
  *(v1 + 136) = v14;
  *(v1 + 80) = MEMORY[0x1E69E9820];
  *(v1 + 88) = 1107296256;
  *(v1 + 96) = sub_1D5C3BEA4;
  *(v1 + 104) = &block_descriptor_78;
  *(v1 + 112) = v13;
  [v12 checkPendingGameActivityExistenceWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v1 + 16);
}

uint64_t sub_1D6DC058C()
{
  v1 = *(*v0 + 232);

  return MEMORY[0x1EEE6DFA0](sub_1D6DC0680, v1, 0);
}

uint64_t sub_1D6DC0680()
{
  *(v0 + 306) = *(v0 + 304);
  *(v0 + 256) = objc_opt_self();
  *(v0 + 264) = sub_1D726290C();
  *(v0 + 272) = sub_1D72628FC();
  v2 = sub_1D726285C();

  return MEMORY[0x1EEE6DFA0](sub_1D6DC0730, v2, v1);
}

uint64_t sub_1D6DC0730()
{
  v1 = v0[32];
  v2 = v0[29];

  v0[35] = [v1 sharedApplication];

  return MEMORY[0x1EEE6DFA0](sub_1D6DC07BC, v2, 0);
}

uint64_t sub_1D6DC07BC()
{
  *(v0 + 288) = sub_1D72628FC();
  v2 = sub_1D726285C();

  return MEMORY[0x1EEE6DFA0](sub_1D6DC0848, v2, v1);
}

uint64_t sub_1D6DC0848()
{
  v1 = v0[35];
  v2 = v0[29];

  v0[37] = [v1 applicationState];

  return MEMORY[0x1EEE6DFA0](sub_1D6DC08CC, v2, 0);
}

uint64_t sub_1D6DC08CC()
{
  if (!*(v0 + 296) || (*(v0 + 306) & 1) != 0)
  {
    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v7 = sub_1D725C42C();
    __swift_project_value_buffer(v7, qword_1EDFFCFA8);
    v8 = sub_1D725C3FC();
    v9 = sub_1D7262EDC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1D5B42000, v8, v9, "PuzzleGameCenterService: authenticating user...", v10, 2u);
      MEMORY[0x1DA6FD500](v10, -1, -1);
    }

    v2 = *(v0 + 248);
    v11 = *(v0 + 232);

    sub_1D5B68374(v11 + 160, v0 + 192);
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    sub_1D5B7DDE8((v0 + 192), v12 + 24);
    *(v0 + 176) = sub_1D6DCEC78;
    *(v0 + 184) = v12;
    *(v0 + 144) = MEMORY[0x1E69E9820];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_1D6DC0B78;
    *(v0 + 168) = &block_descriptor_81_0;
    v13 = _Block_copy((v0 + 144));

    [v2 setAuthenticateHandler:v13];
    _Block_release(v13);
  }

  else
  {
    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v1 = sub_1D725C42C();
    __swift_project_value_buffer(v1, qword_1EDFFCFA8);
    v2 = sub_1D725C3FC();
    v3 = sub_1D7262EDC();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 248);
    if (v4)
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1D5B42000, v2, v3, "PuzzleGameCenterService: app is not active. Skipping authentication.", v6, 2u);
      MEMORY[0x1DA6FD500](v6, -1, -1);
    }
  }

  v14 = *(v0 + 8);

  return v14();
}

void sub_1D6DC0B78(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1D6DC0C04()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1D6DC0C94;

  return sub_1D5B73F60();
}

uint64_t sub_1D6DC0C94(char a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D6DC0DAC, v2, 0);
}

uint64_t sub_1D6DC0DAC()
{
  if (*(v0 + 32) == 1)
  {
    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v1 = sub_1D725C42C();
    __swift_project_value_buffer(v1, qword_1EDFFCFA8);
    v2 = sub_1D725C3FC();
    v3 = sub_1D7262EDC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1D5B42000, v2, v3, "PuzzleGameCenterService: invalidating handler...", v4, 2u);
      MEMORY[0x1DA6FD500](v4, -1, -1);
    }

    gotLoadHelper_x8__OBJC_CLASS___GKLocalPlayer(v5);
    v6 = [objc_opt_self() localPlayer];
    [v6 setAuthenticateHandler:0];
  }

  else
  {
    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v7 = sub_1D725C42C();
    __swift_project_value_buffer(v7, qword_1EDFFCFA8);
    v6 = sub_1D725C3FC();
    v8 = sub_1D7262EDC();
    if (os_log_type_enabled(v6, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D5B42000, v6, v8, "PuzzleGameCenterService: Game Center disabled. Skipping invalidation.", v9, 2u);
      MEMORY[0x1DA6FD500](v9, -1, -1);
    }
  }

  v10 = *(v0 + 8);

  return v10();
}

void sub_1D6DC0FB0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_1D5B73DC0();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v13 = sub_1D726294C();
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
    sub_1D5B68374(a4, v47);
    sub_1D726290C();
    v14 = a1;
    v15 = sub_1D72628FC();
    v16 = swift_allocObject();
    v17 = MEMORY[0x1E69E85E0];
    v16[2] = v15;
    v16[3] = v17;
    sub_1D5B7DDE8(v47, (v16 + 4));
    v16[9] = v14;
    v18 = &unk_1D7356538;
    v19 = v12;
    v20 = v16;
LABEL_9:
    sub_1D6BD1334(0, 0, v19, v18, v20);
LABEL_10:

    return;
  }

  if (a2)
  {
    v21 = a2;
    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v22 = sub_1D725C42C();
    __swift_project_value_buffer(v22, qword_1EDFFCFA8);
    v23 = a2;
    v24 = sub_1D725C3FC();
    v25 = sub_1D7262EBC();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v47[0] = v27;
      *v26 = 136315138;
      swift_getErrorValue();
      v28 = sub_1D726497C();
      v30 = sub_1D5BC5100(v28, v29, v47);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_1D5B42000, v24, v25, "PuzzleGameCenterService: failed authenticating user [%s]", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x1DA6FD500](v27, -1, -1);
      MEMORY[0x1DA6FD500](v26, -1, -1);
    }

    v31 = sub_1D726294C();
    (*(*(v31 - 8) + 56))(v12, 1, 1, v31);
    v32 = swift_allocObject();
    v32[2] = 0;
    v32[3] = 0;
    v32[4] = a3;
    v32[5] = a2;

    v18 = &unk_1D7356528;
    v19 = v12;
    v20 = v32;
    goto LABEL_9;
  }

  gotLoadHelper_x8__OBJC_CLASS___GKLocalPlayer(v10);
  v33 = [objc_opt_self() localPlayer];
  if ([v33 isAuthenticated])
  {
    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v34 = sub_1D725C42C();
    __swift_project_value_buffer(v34, qword_1EDFFCFA8);
    v35 = sub_1D725C3FC();
    v36 = sub_1D7262EDC();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1D5B42000, v35, v36, "PuzzleGameCenterService: user authenticated", v37, 2u);
      MEMORY[0x1DA6FD500](v37, -1, -1);
    }

    [v33 registerListener_];
    v38 = sub_1D726294C();
    (*(*(v38 - 8) + 56))(v12, 1, 1, v38);
    v39 = swift_allocObject();
    v39[2] = 0;
    v39[3] = 0;
    v39[4] = a3;

    sub_1D6BD1334(0, 0, v12, &unk_1D7356518, v39);

    goto LABEL_10;
  }

  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v40 = sub_1D725C42C();
  __swift_project_value_buffer(v40, qword_1EDFFCFA8);
  v41 = sub_1D725C3FC();
  v42 = sub_1D7262EDC();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_1D5B42000, v41, v42, "PuzzleGameCenterService: Unknown error [no error reported from GC]", v43, 2u);
    MEMORY[0x1DA6FD500](v43, -1, -1);
  }

  v44 = sub_1D726294C();
  (*(*(v44 - 8) + 56))(v12, 1, 1, v44);
  v45 = swift_allocObject();
  v45[2] = 0;
  v45[3] = 0;
  v45[4] = a3;

  sub_1D6BD1334(0, 0, v12, &unk_1D7356508, v45);
}

uint64_t sub_1D6DC15C4()
{
  v1 = *v0;
  v2 = *(*v0 + 80);

  sub_1D6DCF500(v1 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1D6DC16DC, v2, 0);
}

uint64_t sub_1D6DC16DC()
{
  v29 = v0;
  v1 = (v0 + 16);
  if ((*(v0 + 50) & 1) != 0 && *(v0 + 49) <= 2u)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3 = *(v0 + 120);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v3 = sub_1D6996550(0, *(v3 + 2) + 1, 1, *(v0 + 120));
    }

    v5 = *(v3 + 2);
    v4 = *(v3 + 3);
    if (v5 >= v4 >> 1)
    {
      v3 = sub_1D6996550((v4 > 1), v5 + 1, 1, v3);
    }

    *(v3 + 2) = v5 + 1;
    v6 = &v3[40 * v5];
    v7 = *v1;
    v8 = *(v0 + 32);
    v6[64] = *(v0 + 48);
    *(v6 + 2) = v7;
    *(v6 + 3) = v8;
  }

  else
  {
    sub_1D6DCF500(v0 + 16);
    v3 = *(v0 + 120);
  }

  v9 = *(v0 + 112) + 1;
  if (v9 == *(v0 + 104))
  {

    *(*(v0 + 80) + 312) = v3;

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    *(v0 + 112) = v9;
    *(v0 + 120) = v3;
    v12 = *(v0 + 96) + 40 * v9;
    v13 = *(v12 + 64);
    v14 = *(v12 + 48);
    *v1 = *(v12 + 32);
    *(v0 + 32) = v14;
    *(v0 + 48) = v13;
    v15 = *(v0 + 16);
    v16 = *(v0 + 24);
    swift_bridgeObjectRetain_n();
    v17 = sub_1D725C3FC();
    v18 = sub_1D7262EDC();
    sub_1D6DCF500(v0 + 16);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v20;
      *v19 = 136315138;
      v21 = sub_1D6DBE84C();
      v23 = sub_1D5BC5100(v21, v22, &v28);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_1D5B42000, v17, v18, "PuzzleGameCenterService: Submitting pending %s...", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1DA6FD500](v20, -1, -1);
      MEMORY[0x1DA6FD500](v19, -1, -1);
    }

    v24 = *(v0 + 48);
    v26 = *(v0 + 32);
    v25 = *(v0 + 40);

    v27 = swift_task_alloc();
    *(v0 + 128) = v27;
    *v27 = v0;
    v27[1] = sub_1D6DC15C4;

    return sub_1D6DCA114(v0 + 49, v15, v16, v25, v24, v26, 1);
  }
}

uint64_t sub_1D6DC19DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1D726290C();
  v5[4] = sub_1D72628FC();
  v7 = sub_1D726285C();

  return MEMORY[0x1EEE6DFA0](sub_1D6DC1A74, v7, v6);
}

uint64_t sub_1D6DC1A74()
{
  v1 = v0[2];

  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v2 = sub_1D725DA3C();
  if (!v2)
  {
    goto LABEL_11;
  }

  v3 = v2;
  v4 = [v2 windows];

  sub_1D5B5A498(0, &unk_1EC896278);
  v5 = sub_1D726267C();

  if (v5 >> 62)
  {
    result = sub_1D7263BFC();
    if (result)
    {
      goto LABEL_4;
    }

LABEL_10:

    goto LABEL_11;
  }

  result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1DA6FB460](0, v5);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v7 = *(v5 + 32);
  }

  v8 = v7;

  v9 = [v8 rootViewController];

  if (v9)
  {
    v10 = v0[3];
    v11 = sub_1D7262FCC();

    [v11 presentViewController:v10 animated:1 completion:0];
  }

LABEL_11:
  v12 = v0[1];

  return v12();
}

uint64_t sub_1D6DC1C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = type metadata accessor for PuzzleGameCenterServiceEvent(0);
  v5[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D6DC1CA8, 0, 0);
}

uint64_t sub_1D6DC1CA8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_1D725828C();
  *(v0 + 48) = v3;
  *(v0 + 56) = [v3 code];

  return MEMORY[0x1EEE6DFA0](sub_1D6DC1D30, v1, 0);
}

uint64_t sub_1D6DC1D30()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[2];
  *(v3 + 288) = v1;
  *(v3 + 296) = 0;
  *v2 = v1;
  swift_storeEnumTagMultiPayload();
  sub_1D726290C();
  v0[8] = sub_1D72628FC();
  v0[9] = sub_1D5C428A0();
  v5 = sub_1D726285C();

  return MEMORY[0x1EEE6DFA0](sub_1D6DC1DFC, v5, v4);
}

uint64_t sub_1D6DC1DFC()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[2];

  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  sub_1D6DBDEEC(sub_1D6DCF440, v4, v1);

  sub_1D6DD07A8(v2, type metadata accessor for PuzzleGameCenterServiceEvent);

  return MEMORY[0x1EEE6DFA0](sub_1D6DC1EDC, 0, 0);
}

uint64_t sub_1D6DC1EDC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D6DC1F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for PuzzleGameCenterServiceEvent(0);
  v4[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D6DC1FE8, a4, 0);
}

uint64_t sub_1D6DC1FE8()
{
  v1 = v0[4];
  v2 = v0[2];
  *(v2 + 288) = 0;
  *(v2 + 296) = 0;
  *v1 = 0;
  swift_storeEnumTagMultiPayload();
  sub_1D726290C();
  v0[5] = sub_1D72628FC();
  v0[6] = sub_1D5C428A0();
  v4 = sub_1D726285C();

  return MEMORY[0x1EEE6DFA0](sub_1D6DC20B0, v4, v3);
}

uint64_t sub_1D6DC20B0()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[2];

  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  sub_1D6DBDEEC(sub_1D6DD0888, v4, v1);

  sub_1D6DD07A8(v2, type metadata accessor for PuzzleGameCenterServiceEvent);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1D6DC21C0;

  return sub_1D5C43260();
}

uint64_t sub_1D6DC21C0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D6DC22D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for PuzzleGameCenterServiceEvent(0);
  v4[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D6DC2364, 0, 0);
}

uint64_t sub_1D6DC2364()
{
  v1 = v0[2];
  sub_1D5BE1168(MEMORY[0x1E69E7CC0]);
  v2 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v3 = sub_1D726203C();
  v4 = sub_1D7261D2C();

  v5 = [v2 initWithDomain:v3 code:-1 userInfo:v4];
  v0[5] = v5;

  v6 = v5;
  v7 = sub_1D725828C();
  v0[6] = v7;
  v0[7] = [v7 code];

  return MEMORY[0x1EEE6DFA0](sub_1D6DC2498, v1, 0);
}

uint64_t sub_1D6DC2498()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[2];
  *(v3 + 288) = v1;
  *(v3 + 296) = 0;
  *v2 = v1;
  swift_storeEnumTagMultiPayload();
  sub_1D726290C();
  v0[8] = sub_1D72628FC();
  v0[9] = sub_1D5C428A0();
  v5 = sub_1D726285C();

  return MEMORY[0x1EEE6DFA0](sub_1D6DC2564, v5, v4);
}

uint64_t sub_1D6DC2564()
{
  v1 = v0[9];
  v2 = v0[4];
  v3 = v0[2];

  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  sub_1D6DBDEEC(sub_1D6DD0888, v4, v1);

  sub_1D6DD07A8(v2, type metadata accessor for PuzzleGameCenterServiceEvent);

  return MEMORY[0x1EEE6DFA0](sub_1D6DC2644, 0, 0);
}

uint64_t sub_1D6DC2644()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D6DC26B8()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1D6DD08A0, v3, v2);
}

uint64_t sub_1D6DC27D8()
{
  v0[24] = sub_1D5C428A0();
  v1 = v0[20];
  v2 = v0[21];

  return MEMORY[0x1EEE6DFA0](sub_1D6DC2840, v1, v2);
}

uint64_t sub_1D6DC2840()
{
  v1 = *(v0 + 192);
  v2 = (v1 + 40);
  v3 = -1;
  while (v20 + v3 != -1)
  {
    if (++v3 >= *(v1 + 16))
    {
      __break(1u);
      goto LABEL_15;
    }

    v4 = v2 + 2;
    v5 = v21[18];
    v6 = *v2;
    ObjectType = swift_getObjectType();
    v9 = sub_1D5B6F648(&qword_1EDF26B70, v8, type metadata accessor for PuzzleGameCenterService);
    v10 = *(v6 + 16);
    swift_unknownObjectRetain();
    LOBYTE(v5) = v10(v5, v9, ObjectType, v6);
    swift_unknownObjectRelease();
    v2 = v4;
    if ((v5 & 1) == 0)
    {

      if (qword_1EDF3B838 == -1)
      {
LABEL_6:
        v11 = sub_1D725C42C();
        __swift_project_value_buffer(v11, qword_1EDFFCFA8);
        v12 = sub_1D725C3FC();
        v13 = sub_1D7262EDC();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&dword_1D5B42000, v12, v13, "PuzzleGameCenterService: Skipping check for pending game activities...", v14, 2u);
          MEMORY[0x1DA6FD500](v14, -1, -1);
        }

        v15 = v21[1];

        return v15();
      }

LABEL_15:
      swift_once();
      goto LABEL_6;
    }
  }

  v17 = objc_opt_self();
  v21[2] = v21;
  v21[7] = v21 + 26;
  v21[3] = sub_1D6DC2B60;
  v18 = swift_continuation_init();
  sub_1D5B937D4();
  v21[17] = v19;
  v21[10] = MEMORY[0x1E69E9820];
  v21[11] = 1107296256;
  v21[12] = sub_1D5C3BEA4;
  v21[13] = &block_descriptor_238;
  v21[14] = v18;
  [v17 checkPendingGameActivityExistenceWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v21 + 2);
}

uint64_t sub_1D6DC2B60()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1D6DC2C68, v2, v1);
}

uint64_t sub_1D6DC2C68()
{
  if (*(v0 + 208) == 1)
  {
    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v1 = sub_1D725C42C();
    __swift_project_value_buffer(v1, qword_1EDFFCFA8);
    v2 = sub_1D725C3FC();
    v3 = sub_1D7262EDC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1D5B42000, v2, v3, "PuzzleGameCenterService: GKGameActivity has pending game activities... will authenticate to GC", v4, 2u);
      MEMORY[0x1DA6FD500](v4, -1, -1);
    }

    v5 = swift_task_alloc();
    *(v0 + 200) = v5;
    *v5 = v0;
    v5[1] = sub_1D6DC2DFC;

    return sub_1D6DC0034();
  }

  else
  {

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1D6DC2DFC()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1D6DC2F1C, v3, v2);
}

uint64_t sub_1D6DC2F1C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D6DC2FB0()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 120);
  __swift_destroy_boxed_opaque_existential_1(v0 + 160);
  __swift_destroy_boxed_opaque_existential_1(v0 + 200);
  __swift_destroy_boxed_opaque_existential_1(v0 + 240);
  swift_unknownObjectRelease();

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1D6DC3010()
{
  sub_1D6DC2FB0();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D6DC3098()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D6036AEC;

  return sub_1D5B73F60();
}

uint64_t sub_1D6DC3124()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D5B64680;

  return sub_1D6DC0034();
}

uint64_t sub_1D6DC31B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D5B64680;

  return sub_1D6DC0C04();
}

uint64_t sub_1D6DC323C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 16) = v5;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_1D6DC3310;

  return sub_1D6DCA114(v6 + 32, a1, a2, a3, a4 & 1, a5, 0);
}

uint64_t sub_1D6DC3310()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1D6DC3420, v1, 0);
}

uint64_t sub_1D6DC3434(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D5B64680;

  return sub_1D6DC34F8(a1, a2, a3, a4 & 1, a5);
}

uint64_t sub_1D6DC34F8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 208) = a5;
  *(v6 + 216) = v5;
  *(v6 + 280) = a4;
  *(v6 + 192) = a2;
  *(v6 + 200) = a3;
  *(v6 + 184) = a1;
  v7 = swift_task_alloc();
  *(v6 + 224) = v7;
  *v7 = v6;
  v7[1] = sub_1D6DC3594;

  return sub_1D5B73F60();
}

uint64_t sub_1D6DC3594(char a1)
{
  v2 = *(*v1 + 216);
  *(*v1 + 281) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D6DC36AC, v2, 0);
}

uint64_t sub_1D6DC36AC(double a1)
{
  v24 = v1;
  if (*(v1 + 281) == 1)
  {
    if (sub_1D5C435B8(a1))
    {
      if (qword_1EDF3B838 != -1)
      {
        swift_once();
      }

      v2 = sub_1D725C42C();
      *(v1 + 232) = __swift_project_value_buffer(v2, qword_1EDFFCFA8);

      v3 = sub_1D725C3FC();
      v4 = sub_1D7262EDC();

      if (os_log_type_enabled(v3, v4))
      {
        v5 = *(v1 + 208);
        v7 = *(v1 + 184);
        v6 = *(v1 + 192);
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v23 = v9;
        *v8 = 134218242;
        *(v8 + 4) = v5;
        *(v8 + 12) = 2080;
        *(v8 + 14) = sub_1D5BC5100(v7, v6, &v23);
        _os_log_impl(&dword_1D5B42000, v3, v4, "PuzzleGameCenterService: submitting score %ld for puzzle type %s", v8, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v9);
        MEMORY[0x1DA6FD500](v9, -1, -1);
        MEMORY[0x1DA6FD500](v8, -1, -1);
      }

      v10 = *(v1 + 280);
      v11 = swift_task_alloc();
      *(v1 + 240) = v11;
      *v11 = v1;
      v11[1] = sub_1D6DC39CC;
      v12 = *(v1 + 192);
      v13 = *(v1 + 200);
      v14 = *(v1 + 184);

      return sub_1D6DC8394(v14, v12, v13, v10 & 1);
    }

    v20 = 1;
  }

  else
  {
    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v16 = sub_1D725C42C();
    __swift_project_value_buffer(v16, qword_1EDFFCFA8);
    v17 = sub_1D725C3FC();
    v18 = sub_1D7262EDC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1D5B42000, v17, v18, "PuzzleGameCenterService: Game Center disabled. Skipping score submission...", v19, 2u);
      MEMORY[0x1DA6FD500](v19, -1, -1);
    }

    v20 = 0;
  }

  sub_1D6DD0418();
  swift_allocError();
  *v21 = v20;
  swift_willThrow();
  v22 = *(v1 + 8);

  return v22();
}

uint64_t sub_1D6DC39CC(uint64_t a1)
{
  v2 = *(*v1 + 216);
  *(*v1 + 248) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D6DC3AE4, v2, 0);
}

uint64_t sub_1D6DC3AE4(double a1)
{
  v30 = v1;
  v2 = *(v1 + 248);
  if (v2)
  {
    v28 = *(v1 + 208);
    gotLoadHelper_x8__OBJC_CLASS___GKLeaderboard(a1);
    v3 = objc_opt_self();
    gotLoadHelper_x8__OBJC_CLASS___GKLocalPlayer(v4);
    v5 = [objc_opt_self() localPlayer];
    *(v1 + 256) = v5;
    sub_1D5B49D58(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1D7273AE0;
    v7 = [v2 leaderboardID];
    v8 = sub_1D726207C();
    v10 = v9;

    *(v6 + 32) = v8;
    *(v6 + 40) = v10;
    v11 = sub_1D726265C();
    *(v1 + 264) = v11;

    *(v1 + 16) = v1;
    *(v1 + 24) = sub_1D6DC3EF0;
    v12 = swift_continuation_init();
    sub_1D6DCF530();
    *(v1 + 136) = v13;
    *(v1 + 80) = MEMORY[0x1E69E9820];
    *(v1 + 88) = 1107296256;
    *(v1 + 96) = sub_1D6DCD0B0;
    *(v1 + 104) = &block_descriptor_215_0;
    *(v1 + 112) = v12;
    [v3 submitScore:v28 context:0 player:v5 leaderboardIDs:v11 completionHandler:v1 + 80];

    return MEMORY[0x1EEE6DEC8](v1 + 16);
  }

  else
  {
    if (*(v1 + 280))
    {
      v14 = 0;
      v15 = 0xE000000000000000;
    }

    else
    {
      v16 = *(v1 + 200);
      strcpy(v29, " difficulty ");
      BYTE5(v29[1]) = 0;
      HIWORD(v29[1]) = -5120;
      *(v1 + 168) = v16;
      v17 = sub_1D72644BC();
      MEMORY[0x1DA6F9910](v17);

      v14 = v29[0];
      v15 = v29[1];
    }

    v18 = sub_1D725C3FC();
    v19 = sub_1D7262EBC();

    if (os_log_type_enabled(v18, v19))
    {
      v21 = *(v1 + 184);
      v20 = *(v1 + 192);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v29[0] = v23;
      *v22 = 136315394;
      *(v22 + 4) = sub_1D5BC5100(v21, v20, v29);
      *(v22 + 12) = 2080;
      v24 = sub_1D5BC5100(v14, v15, v29);

      *(v22 + 14) = v24;
      _os_log_impl(&dword_1D5B42000, v18, v19, "PuzzleGameCenterService: no leaderboard configured for %s%s. Skipping...", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA6FD500](v23, -1, -1);
      MEMORY[0x1DA6FD500](v22, -1, -1);
    }

    else
    {
    }

    sub_1D6DD0418();
    swift_allocError();
    *v25 = 3;
    swift_willThrow();
    v26 = *(v1 + 8);

    return v26();
  }
}

uint64_t sub_1D6DC3EF0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 272) = v2;
  v3 = *(v1 + 216);
  if (v2)
  {
    v4 = sub_1D6DC4080;
  }

  else
  {
    v4 = sub_1D6DC4010;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D6DC4010()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 248);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D6DC4080()
{
  v21 = v0;
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[32];
  swift_willThrow();

  v4 = v2;
  v5 = sub_1D725C3FC();
  v6 = sub_1D7262EBC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[26];
    v9 = v0[23];
    v8 = v0[24];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20[0] = v11;
    *v10 = 134218498;
    *(v10 + 4) = v7;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_1D5BC5100(v9, v8, v20);
    *(v10 + 22) = 2080;
    swift_getErrorValue();
    v12 = sub_1D726497C();
    v14 = sub_1D5BC5100(v12, v13, v20);

    *(v10 + 24) = v14;
    _os_log_impl(&dword_1D5B42000, v5, v6, "PuzzleGameCenterService: error submitting score %ld for %s: %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA6FD500](v11, -1, -1);
    MEMORY[0x1DA6FD500](v10, -1, -1);
  }

  v15 = v0[34];
  v16 = v0[31];
  sub_1D6DD0418();
  swift_allocError();
  *v17 = 5;
  swift_willThrow();

  v18 = v0[1];

  return v18();
}

uint64_t sub_1D6DC4298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, _BYTE *a6, _BYTE *a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1D5B64684;

  return sub_1D6DC439C(a1, a2, a3, a4, a5 & 1, a6, a7, a8);
}

uint64_t sub_1D6DC439C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, _BYTE *a6, _BYTE *a7, uint64_t a8)
{
  *(v9 + 352) = v17;
  *(v9 + 360) = v8;
  *(v9 + 336) = a4;
  *(v9 + 344) = a8;
  *(v9 + 544) = a5;
  *(v9 + 320) = a2;
  *(v9 + 328) = a3;
  *(v9 + 312) = a1;
  v12 = type metadata accessor for PuzzleLeaderboardEntry();
  *(v9 + 368) = v12;
  *(v9 + 376) = *(v12 - 8);
  *(v9 + 384) = swift_task_alloc();
  sub_1D604426C(0);
  *(v9 + 392) = v13;
  *(v9 + 400) = *(v13 - 8);
  *(v9 + 408) = swift_task_alloc();
  *(v9 + 416) = swift_task_alloc();
  *(v9 + 424) = swift_task_alloc();
  *(v9 + 432) = swift_task_alloc();
  *(v9 + 545) = *a6;
  *(v9 + 546) = *a7;
  v14 = swift_task_alloc();
  *(v9 + 440) = v14;
  *v14 = v9;
  v14[1] = sub_1D6DC4540;

  return sub_1D5B73F60();
}

uint64_t sub_1D6DC4540(char a1)
{
  v2 = *(*v1 + 360);
  *(*v1 + 547) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D6DC4658, v2, 0);
}

uint64_t sub_1D6DC4658()
{
  if (*(v0 + 547) == 1)
  {
    v1 = *(v0 + 544);
    v2 = swift_task_alloc();
    *(v0 + 448) = v2;
    *v2 = v0;
    v2[1] = sub_1D6DC4870;
    v3 = *(v0 + 328);
    v4 = *(v0 + 336);
    v5 = *(v0 + 320);

    return sub_1D6DC8394(v5, v3, v4, v1 & 1);
  }

  else
  {
    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v7 = sub_1D725C42C();
    __swift_project_value_buffer(v7, qword_1EDFFCFA8);
    v8 = sub_1D725C3FC();
    v9 = sub_1D7262EDC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1D5B42000, v8, v9, "PuzzleGameCenterService: Game Center is disabled. Returning empty leaderboard.", v10, 2u);
      MEMORY[0x1DA6FD500](v10, -1, -1);
    }

    v11 = *(v0 + 312);

    v12 = type metadata accessor for PuzzleLeaderboardResult(0);
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_1D6DC4870(uint64_t a1)
{
  v2 = *(*v1 + 360);
  *(*v1 + 456) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D6DC4988, v2, 0);
}

uint64_t sub_1D6DC4988()
{
  v1 = v0[57];
  if (v1)
  {
    v2 = [v1 leaderboardID];
    v3 = sub_1D726207C();
    v5 = v4;

    gotLoadHelper_x8__OBJC_CLASS___GKLeaderboard(v6);
    v7 = objc_opt_self();
    sub_1D5B49D58(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D7273AE0;
    *(v8 + 32) = v3;
    *(v8 + 40) = v5;
    v9 = sub_1D726265C();
    v0[58] = v9;

    v0[2] = v0;
    v0[7] = v0 + 37;
    v0[3] = sub_1D6DC4BFC;
    v10 = swift_continuation_init();
    sub_1D6DCF59C(v11);
    v0[25] = v12;
    v0[18] = MEMORY[0x1E69E9820];
    v0[19] = 1107296256;
    v0[20] = sub_1D6DC88C0;
    v0[21] = &block_descriptor_191;
    v0[22] = v10;
    [v7 loadLeaderboardsWithIDs:v9 completionHandler:v0 + 18];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    v13 = v0[39];
    v14 = type metadata accessor for PuzzleLeaderboardResult(0);
    (*(*(v14 - 8) + 56))(v13, 1, 1, v14);

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_1D6DC4BFC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 472) = v2;
  v3 = *(v1 + 360);
  if (v2)
  {
    v4 = sub_1D6DC5A28;
  }

  else
  {
    v4 = sub_1D6DC4D1C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D6DC4D1C()
{
  v1 = *(v0 + 296);
  if (v1 >> 62)
  {
    v2 = sub_1D7263BFC();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_14:
    v13 = *(v0 + 464);

    goto LABEL_15;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_14;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1DA6FB460](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return MEMORY[0x1EEE6DEC8](v2);
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;
  *(v0 + 480) = v3;

  if (v4)
  {
    v5 = *(v0 + 545);
    v6 = v4;
    if ([v6 type] == 1)
    {
      v7 = 2;
    }

    else
    {
      v7 = 2 - *(v0 + 546);
    }

    v9 = *(v0 + 344);
    v8 = *(v0 + 352);
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 272;
    *(v0 + 88) = sub_1D6DC4FC0;
    v10 = swift_continuation_init();
    sub_1D6DD0048(v11);
    *(v0 + 264) = v12;
    *(v0 + 208) = MEMORY[0x1E69E9820];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_1D6DC89A4;
    *(v0 + 232) = &block_descriptor_195;
    *(v0 + 240) = v10;
    [v6 loadEntriesForPlayerScope:v5 timeScope:v7 range:v9 completionHandler:{v8, v0 + 208}];
    v2 = v0 + 80;

    return MEMORY[0x1EEE6DEC8](v2);
  }

LABEL_15:
  v14 = *(v0 + 312);

  v15 = type metadata accessor for PuzzleLeaderboardResult(0);
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1D6DC4FC0()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 488) = v2;
  v3 = *(v1 + 360);
  if (v2)
  {
    v4 = sub_1D6DC5AD8;
  }

  else
  {
    v4 = sub_1D6DC50E0;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D6DC50E0()
{
  v1 = v0[60];
  v3 = v0[34];
  v2 = v0[35];
  v0[62] = v3;
  v0[63] = v2;
  v0[64] = v0[36];

  if (v3)
  {

    v3;
    v4 = swift_task_alloc();
    v0[65] = v4;
    *v4 = v0;
    v4[1] = sub_1D6DC52F0;
    v5 = v0[54];

    return sub_1D6F3E050(v5);
  }

  else
  {
    (*(v0[47] + 56))(v0[54], 1, 1, v0[46]);
    v7 = v0[63];
    v8 = v0[45];

    v0[38] = MEMORY[0x1E69E7CC0];
    v10 = sub_1D5B6F648(&qword_1EC8962E8, v9, type metadata accessor for PuzzleGameCenterService);
    v11 = swift_task_alloc();
    v0[66] = v11;
    *(v11 + 16) = v7;
    *(v11 + 24) = v0 + 38;
    v12 = swift_task_alloc();
    v0[67] = v12;
    *v12 = v0;
    v12[1] = sub_1D6DC5540;
    v13 = v0[49];
    v14 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DBF8](v12, v13, v14, v8, v10, &unk_1D73565F8, v11, v13);
  }
}

uint64_t sub_1D6DC52F0()
{
  v1 = *(*v0 + 360);

  return MEMORY[0x1EEE6DFA0](sub_1D6DC5400, v1, 0);
}

uint64_t sub_1D6DC5400(uint64_t a1, uint64_t a2)
{
  v3 = v2[63];
  v4 = v2[45];
  v2[38] = MEMORY[0x1E69E7CC0];
  v5 = sub_1D5B6F648(&qword_1EC8962E8, a2, type metadata accessor for PuzzleGameCenterService);
  v6 = swift_task_alloc();
  v2[66] = v6;
  *(v6 + 16) = v3;
  *(v6 + 24) = v2 + 38;
  v7 = swift_task_alloc();
  v2[67] = v7;
  *v7 = v2;
  v7[1] = sub_1D6DC5540;
  v8 = v2[49];
  v9 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DBF8](v7, v8, v9, v4, v5, &unk_1D73565F8, v6, v8);
}

uint64_t sub_1D6DC5540()
{
  v1 = *(*v0 + 360);

  return MEMORY[0x1EEE6DFA0](sub_1D6DC5690, v1, 0);
}

uint64_t sub_1D6DC5690()
{
  sub_1D6DBE4B8(*(v0 + 432), *(v0 + 424), sub_1D604426C);
  v1 = *(v0 + 304);
  v2 = *(v1 + 16);
  v31 = v1;
  if (v2)
  {
    v3 = *(v0 + 400);
    v4 = *(v0 + 376);
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v6 = *(v3 + 72);
    v7 = MEMORY[0x1E69E7CC0];
    do
    {
      v9 = *(v0 + 408);
      v8 = *(v0 + 416);
      v10 = *(v0 + 368);
      sub_1D6DBE4B8(v5, v8, sub_1D604426C);
      sub_1D6DD0244(v8, v9, sub_1D604426C);
      v11 = (*(v4 + 48))(v9, 1, v10);
      v12 = *(v0 + 408);
      if (v11 == 1)
      {
        sub_1D6DD07A8(v12, sub_1D604426C);
      }

      else
      {
        sub_1D6DD0244(v12, *(v0 + 384), type metadata accessor for PuzzleLeaderboardEntry);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1D698CA0C(0, v7[2] + 1, 1, v7);
        }

        v14 = v7[2];
        v13 = v7[3];
        if (v14 >= v13 >> 1)
        {
          v7 = sub_1D698CA0C(v13 > 1, v14 + 1, 1, v7);
        }

        v15 = *(v0 + 384);
        v7[2] = v14 + 1;
        sub_1D6DD0244(v15, v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v14, type metadata accessor for PuzzleLeaderboardEntry);
      }

      v5 += v6;
      --v2;
    }

    while (v2);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v16 = [*(v0 + 456) name];
  v17 = *(v0 + 496);
  v18 = *(v0 + 480);
  v19 = *(v0 + 456);
  v20 = *(v0 + 432);
  if (v16)
  {
    v21 = v16;
    v22 = sub_1D726207C();
    v24 = v23;

    sub_1D6DD07A8(v20, sub_1D604426C);
  }

  else
  {
    sub_1D6DD07A8(*(v0 + 432), sub_1D604426C);

    v22 = 0;
    v24 = 0;
  }

  v25 = *(v0 + 512);
  v26 = *(v0 + 312);
  sub_1D6DD0244(*(v0 + 424), v26, sub_1D604426C);
  v27 = type metadata accessor for PuzzleLeaderboardResult(0);
  *(v26 + v27[5]) = v7;
  *(v26 + v27[6]) = v25;
  v28 = (v26 + v27[7]);
  *v28 = v22;
  v28[1] = v24;
  (*(*(v27 - 1) + 56))(v26, 0, 1, v27);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_1D6DC5A28()
{
  v1 = v0[58];
  v2 = v0[57];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D6DC5AD8()
{
  v1 = v0[60];
  v2 = v0[57];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D6DC5B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D5B64680;

  return sub_1D6DC5C48(a1, a2, a3, a4);
}

uint64_t sub_1D6DC5C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 128) = a4;
  *(v5 + 136) = v4;
  *(v5 + 112) = a2;
  *(v5 + 120) = a3;
  sub_1D5B73DC0();
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = *a1;
  *(v5 + 168) = *(a1 + 16);
  *(v5 + 256) = *(a1 + 24);
  v7 = swift_task_alloc();
  *(v5 + 176) = v7;
  *v7 = v5;
  v7[1] = sub_1D6DC5D24;

  return sub_1D5B73F60();
}

uint64_t sub_1D6DC5D24(char a1)
{
  v2 = *(*v1 + 136);
  *(*v1 + 257) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D6DC5E3C, v2, 0);
}

uint64_t sub_1D6DC5E3C(double a1)
{
  if (*(v1 + 257) != 1)
  {
    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v6 = sub_1D725C42C();
    __swift_project_value_buffer(v6, qword_1EDFFCFA8);
    v7 = sub_1D725C3FC();
    v8 = sub_1D7262EDC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D5B42000, v7, v8, "PuzzleGameCenterService: Game Center disabled. Skipping leaderboard presentation", v9, 2u);
      MEMORY[0x1DA6FD500](v9, -1, -1);
    }

LABEL_19:

    v22 = *(v1 + 8);

    return v22();
  }

  v2 = *(v1 + 136);
  gotLoadHelper_x8__OBJC_CLASS___GKLocalPlayer(a1);
  v3 = [objc_opt_self() localPlayer];
  *(v1 + 184) = v3;
  if (![*(v2 + 280) isNetworkReachable])
  {
LABEL_5:
    if (*(v1 + 160))
    {
      swift_getObjectType();
      *(v1 + 200) = FCNewsAppConfigurationManager.fetchConfiguration(cachedOnly:)();
      v5 = swift_task_alloc();
      *(v1 + 208) = v5;
      *v5 = v1;
      v5[1] = sub_1D6DC6704;

      return MEMORY[0x1EEE44EE0](v1 + 104);
    }

    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v10 = sub_1D725C42C();
    __swift_project_value_buffer(v10, qword_1EDFFCFA8);
    v11 = sub_1D725C3FC();
    v12 = sub_1D7262EDC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1D5B42000, v11, v12, "PuzzleGameCenterService: Presenting leaderboard list...", v13, 2u);
      MEMORY[0x1DA6FD500](v13, -1, -1);
    }

    v14 = *(v1 + 184);
    v15 = *(v1 + 144);
    v16 = *(v1 + 128);
    v28 = *(v1 + 112);

    v17 = sub_1D726294C();
    (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
    sub_1D726290C();
    v18 = v28;

    v19 = sub_1D72628FC();
    v20 = swift_allocObject();
    v21 = MEMORY[0x1E69E85E0];
    *(v20 + 16) = v19;
    *(v20 + 24) = v21;
    *(v20 + 32) = v28;
    *(v20 + 48) = v16;
    sub_1D6BD1334(0, 0, v15, &unk_1D73565A0, v20);

    goto LABEL_19;
  }

  v4 = [v3 authenticateHandler];
  if (v4)
  {
    _Block_release(v4);
    goto LABEL_5;
  }

  v23 = *(v1 + 136);
  sub_1D5B68374(v23 + 160, v1 + 64);
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  sub_1D5B7DDE8((v1 + 64), v24 + 24);
  *(v1 + 48) = sub_1D6DD0870;
  *(v1 + 56) = v24;
  *(v1 + 16) = MEMORY[0x1E69E9820];
  *(v1 + 24) = 1107296256;
  *(v1 + 32) = sub_1D6DC0B78;
  *(v1 + 40) = &block_descriptor_143;
  v25 = _Block_copy((v1 + 16));

  [v3 setAuthenticateHandler_];
  _Block_release(v25);
  v26 = swift_task_alloc();
  *(v1 + 192) = v26;
  *v26 = v1;
  v26[1] = sub_1D6DC6348;

  return sub_1D5C43260();
}

uint64_t sub_1D6DC6348()
{
  v1 = *(*v0 + 136);

  return MEMORY[0x1EEE6DFA0](sub_1D6DC6458, v1, 0);
}

uint64_t sub_1D6DC6458()
{
  if (*(v0 + 160))
  {
    swift_getObjectType();
    *(v0 + 200) = FCNewsAppConfigurationManager.fetchConfiguration(cachedOnly:)();
    v1 = swift_task_alloc();
    *(v0 + 208) = v1;
    *v1 = v0;
    v1[1] = sub_1D6DC6704;

    return MEMORY[0x1EEE44EE0](v0 + 104);
  }

  else
  {
    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v2 = sub_1D725C42C();
    __swift_project_value_buffer(v2, qword_1EDFFCFA8);
    v3 = sub_1D725C3FC();
    v4 = sub_1D7262EDC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1D5B42000, v3, v4, "PuzzleGameCenterService: Presenting leaderboard list...", v5, 2u);
      MEMORY[0x1DA6FD500](v5, -1, -1);
    }

    v6 = *(v0 + 184);
    v7 = *(v0 + 144);
    v8 = *(v0 + 128);
    v16 = *(v0 + 112);

    v9 = sub_1D726294C();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    sub_1D726290C();
    v10 = v16;

    v11 = sub_1D72628FC();
    v12 = swift_allocObject();
    v13 = MEMORY[0x1E69E85E0];
    *(v12 + 16) = v11;
    *(v12 + 24) = v13;
    *(v12 + 32) = v16;
    *(v12 + 48) = v8;
    sub_1D6BD1334(0, 0, v7, &unk_1D73565A0, v12);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_1D6DC6704()
{
  v2 = *v1;

  v3 = *(v2 + 136);
  if (v0)
  {

    v4 = sub_1D6DC6D1C;
  }

  else
  {

    v4 = sub_1D6DC6860;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D6DC6860()
{
  v43 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = [*(v0 + 104) puzzlesConfig];
  swift_unknownObjectRelease();
  v4._countAndFlagsBits = v1;
  v4._object = v2;
  v5 = FCPuzzlesConfiguration.leaderboardDifficultyLevels(for:)(v4);

  if (v5 && (v6 = *(v5 + 16), , v6 >= 2))
  {
    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v7 = sub_1D725C42C();
    *(v0 + 216) = __swift_project_value_buffer(v7, qword_1EDFFCFA8);

    v8 = sub_1D725C3FC();
    v9 = sub_1D7262EDC();

    if (os_log_type_enabled(v8, v9))
    {
      v11 = *(v0 + 152);
      v10 = *(v0 + 160);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v42 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_1D5BC5100(v11, v10, &v42);
      _os_log_impl(&dword_1D5B42000, v8, v9, "PuzzleGameCenterService: Multiple leaderboards configured for %s...", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1DA6FD500](v13, -1, -1);
      MEMORY[0x1DA6FD500](v12, -1, -1);
    }

    v14 = *(v0 + 160);
    if (*(v0 + 256))
    {

      v15 = sub_1D725C3FC();
      v16 = sub_1D7262EDC();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = *(v0 + 256);
        v18 = *(v0 + 160);
        v19 = *(v0 + 168);
        v20 = *(v0 + 152);
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v42 = v22;
        *v21 = 136315394;
        *(v21 + 4) = sub_1D5BC5100(v20, v18, &v42);
        *(v21 + 12) = 2048;
        if (v17)
        {
          v23 = 0;
        }

        else
        {
          v23 = v19;
        }

        *(v21 + 14) = v23;
        _os_log_impl(&dword_1D5B42000, v15, v16, "PuzzleGameCenterService: No leaderboard configured for %s difficulty=%ld ... Presenting leaderboard list...", v21, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v22);
        MEMORY[0x1DA6FD500](v22, -1, -1);
        MEMORY[0x1DA6FD500](v21, -1, -1);
      }

      v24 = *(v0 + 184);
      v25 = *(v0 + 144);
      v26 = *(v0 + 128);
      v27 = sub_1D726294C();
      v41 = *(v0 + 112);
      (*(*(v27 - 8) + 56))(v25, 1, 1, v27);
      sub_1D726290C();
      v28 = v41;

      v29 = sub_1D72628FC();
      v30 = swift_allocObject();
      v31 = MEMORY[0x1E69E85E0];
      *(v30 + 16) = v29;
      *(v30 + 24) = v31;
      *(v30 + 32) = v41;
      *(v30 + 48) = v26;
      sub_1D6BD1334(0, 0, v25, &unk_1D7356580, v30);

      v32 = *(v0 + 8);

      return v32();
    }

    v40 = swift_task_alloc();
    *(v0 + 224) = v40;
    *v40 = v0;
    v40[1] = sub_1D6DC6DC4;
    v38 = *(v0 + 168);
    v36 = *(v0 + 152);
    v37 = v14;
    v39 = 0;
  }

  else
  {
    v34 = *(v0 + 160);
    v35 = swift_task_alloc();
    *(v0 + 240) = v35;
    *v35 = v0;
    v35[1] = sub_1D6DC72E0;
    v36 = *(v0 + 152);
    v37 = v34;
    v38 = 0;
    v39 = 1;
  }

  return sub_1D6DC8394(v36, v37, v38, v39);
}

uint64_t sub_1D6DC6D1C()
{
  v1 = v0[20];
  v2 = swift_task_alloc();
  v0[30] = v2;
  *v2 = v0;
  v2[1] = sub_1D6DC72E0;
  v3 = v0[19];

  return sub_1D6DC8394(v3, v1, 0, 1);
}

uint64_t sub_1D6DC6DC4(uint64_t a1)
{
  v2 = *(*v1 + 136);
  *(*v1 + 232) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D6DC6EDC, v2, 0);
}

uint64_t sub_1D6DC6EDC()
{
  v40 = v0;
  v1 = *(v0 + 232);
  if (v1)
  {

    v2 = sub_1D725C3FC();
    v3 = sub_1D7262EDC();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 160);
      v5 = *(v0 + 168);
      v6 = *(v0 + 152);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v39 = v8;
      *v7 = 136315394;
      *(v7 + 4) = sub_1D5BC5100(v6, v4, &v39);
      *(v7 + 12) = 2048;
      *(v7 + 14) = v5;
      _os_log_impl(&dword_1D5B42000, v2, v3, "PuzzleGameCenterService: Presenting leaderboard for [%s] difficulty=%ld...", v7, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x1DA6FD500](v8, -1, -1);
      MEMORY[0x1DA6FD500](v7, -1, -1);
    }

    v9 = *(v0 + 184);
    v10 = *(v0 + 144);
    v12 = *(v0 + 120);
    v11 = *(v0 + 128);
    v13 = *(v0 + 112);
    v14 = sub_1D726294C();
    (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
    sub_1D726290C();
    v15 = v13;

    v16 = v1;
    v17 = sub_1D72628FC();
    v18 = swift_allocObject();
    v19 = MEMORY[0x1E69E85E0];
    v18[2] = v17;
    v18[3] = v19;
    v18[4] = v15;
    v18[5] = v16;
    v18[6] = v12;
    v18[7] = v11;
    sub_1D6BD1334(0, 0, v10, &unk_1D7356590, v18);
  }

  else
  {

    v20 = sub_1D725C3FC();
    v21 = sub_1D7262EDC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v0 + 256);
      v23 = *(v0 + 160);
      v24 = *(v0 + 168);
      v25 = *(v0 + 152);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v39 = v27;
      *v26 = 136315394;
      *(v26 + 4) = sub_1D5BC5100(v25, v23, &v39);
      *(v26 + 12) = 2048;
      if (v22)
      {
        v28 = 0;
      }

      else
      {
        v28 = v24;
      }

      *(v26 + 14) = v28;
      _os_log_impl(&dword_1D5B42000, v20, v21, "PuzzleGameCenterService: No leaderboard configured for %s difficulty=%ld ... Presenting leaderboard list...", v26, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x1DA6FD500](v27, -1, -1);
      MEMORY[0x1DA6FD500](v26, -1, -1);
    }

    v16 = *(v0 + 184);
    v29 = *(v0 + 144);
    v30 = *(v0 + 128);
    v31 = sub_1D726294C();
    v38 = *(v0 + 112);
    (*(*(v31 - 8) + 56))(v29, 1, 1, v31);
    sub_1D726290C();
    v32 = v38;

    v33 = sub_1D72628FC();
    v34 = swift_allocObject();
    v35 = MEMORY[0x1E69E85E0];
    *(v34 + 16) = v33;
    *(v34 + 24) = v35;
    *(v34 + 32) = v38;
    *(v34 + 48) = v30;
    sub_1D6BD1334(0, 0, v29, &unk_1D7356580, v34);
  }

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_1D6DC72E0(uint64_t a1)
{
  v2 = *(*v1 + 136);
  *(*v1 + 248) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D6DC73F8, v2, 0);
}

uint64_t sub_1D6DC73F8()
{
  v32 = v0;
  v1 = v0[31];
  if (v1)
  {
    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v2 = sub_1D725C42C();
    __swift_project_value_buffer(v2, qword_1EDFFCFA8);

    v3 = sub_1D725C3FC();
    v4 = sub_1D7262EDC();

    if (os_log_type_enabled(v3, v4))
    {
      v6 = v0[19];
      v5 = v0[20];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v31 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_1D5BC5100(v6, v5, &v31);
      _os_log_impl(&dword_1D5B42000, v3, v4, "PuzzleGameCenterService: Presenting leaderboard for [%s]...", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x1DA6FD500](v8, -1, -1);
      MEMORY[0x1DA6FD500](v7, -1, -1);
    }

    v9 = v0[23];
    v10 = v0[18];
    v12 = v0[15];
    v11 = v0[16];
    v13 = v0[14];
    v14 = sub_1D726294C();
    (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
    sub_1D726290C();
    v15 = v13;

    v16 = v1;
    v17 = sub_1D72628FC();
    v18 = swift_allocObject();
    v19 = MEMORY[0x1E69E85E0];
    v18[2] = v17;
    v18[3] = v19;
    v18[4] = v15;
    v18[5] = v16;
    v18[6] = v12;
    v18[7] = v11;
    sub_1D6BD1334(0, 0, v10, &unk_1D7356570, v18);
  }

  else
  {
    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725C42C();
    __swift_project_value_buffer(v20, qword_1EDFFCFA8);

    v21 = sub_1D725C3FC();
    v22 = sub_1D7262EBC();

    v23 = os_log_type_enabled(v21, v22);
    v24 = v0[23];
    if (v23)
    {
      v26 = v0[19];
      v25 = v0[20];
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v31 = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_1D5BC5100(v26, v25, &v31);
      _os_log_impl(&dword_1D5B42000, v21, v22, "PuzzleGameCenterService: no leaderboard configured for %s. Skipping...", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x1DA6FD500](v28, -1, -1);
      MEMORY[0x1DA6FD500](v27, -1, -1);
    }
  }

  v29 = v0[1];

  return v29();
}

uint64_t sub_1D6DC779C(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D6DC77BC, v1, 0);
}

uint64_t sub_1D6DC77BC()
{
  v1 = *(v0 + 56);
  swift_beginAccess();
  sub_1D5F22F24(v1, (v0 + 40));
  swift_endAccess();
  sub_1D5B91764(v0 + 40);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D6DC784C(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D5B64680;

  return sub_1D6DC78E0(a1);
}

uint64_t sub_1D6DC78E0(char a1)
{
  v2[18] = v1;
  if (a1)
  {
    v3 = swift_task_alloc();
    v2[19] = v3;
    *v3 = v2;
    v3[1] = sub_1D6DC79A4;

    return sub_1D5B73F60();
  }

  else
  {
    v5 = v2[1];

    return v5();
  }
}

uint64_t sub_1D6DC79A4(char a1)
{
  v2 = *(*v1 + 144);
  *(*v1 + 169) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D6DC7ABC, v2, 0);
}

uint64_t sub_1D6DC7ABC()
{
  if (*(v0 + 169) == 1)
  {
    v1 = objc_opt_self();
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 168;
    *(v0 + 24) = sub_1D6DC7C14;
    v2 = swift_continuation_init();
    sub_1D5B937D4();
    *(v0 + 136) = v3;
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1D5C3BEA4;
    *(v0 + 104) = &block_descriptor_73_0;
    *(v0 + 112) = v2;
    [v1 checkPendingGameActivityExistenceWithCompletionHandler_];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1D6DC7C14()
{
  v1 = *(*v0 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1D6DC7D08, v1, 0);
}

uint64_t sub_1D6DC7D08()
{
  if (*(v0 + 168) == 1)
  {
    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v1 = sub_1D725C42C();
    __swift_project_value_buffer(v1, qword_1EDFFCFA8);
    v2 = sub_1D725C3FC();
    v3 = sub_1D7262EDC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1D5B42000, v2, v3, "PuzzleGameCenterService: GKGameActivity has pending game activities... will authenticate to GC", v4, 2u);
      MEMORY[0x1DA6FD500](v4, -1, -1);
    }

    v5 = swift_task_alloc();
    *(v0 + 160) = v5;
    *v5 = v0;
    v5[1] = sub_1D6DC7E94;

    return sub_1D6DC0034();
  }

  else
  {
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1D6DC7E94()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id sub_1D6DC7F88()
{
  v0 = [objc_opt_self() shared];
  v1 = [v0 isPresentingGameCenter];

  return v1;
}

uint64_t sub_1D6DC7FFC()
{
  v1 = [objc_opt_self() shared];
  v2 = [v1 isPresentingGameCenter];

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1D6DC8090()
{
  swift_getObjectType();
  if (qword_1EDF181C8 != -1)
  {
    swift_once();
  }

  sub_1D5B6F648(&qword_1EDF0D2E0, v0, type metadata accessor for PuzzleGameCenterService);
  sub_1D725964C();
  return v2;
}

uint64_t sub_1D6DC816C()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 19;
  v0[3] = sub_1D6DC8288;
  v2 = swift_continuation_init();
  sub_1D5B937D4();
  v0[17] = v3;
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D5C3BEA4;
  v0[13] = &block_descriptor_98;
  v0[14] = v2;
  [v1 checkPendingGameActivityExistenceWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D6DC8288()
{
  v1 = *(*v0 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1D6DC837C, v1, 0);
}

uint64_t sub_1D6DC8394(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 72) = a4;
  *(v5 + 40) = a3;
  *(v5 + 48) = v4;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D6DC83BC, v4, 0);
}

uint64_t sub_1D6DC83BC()
{
  swift_getObjectType();
  *(v0 + 56) = FCNewsAppConfigurationManager.fetchConfiguration(cachedOnly:)();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1D6DC8478;

  return MEMORY[0x1EEE44EE0](v0 + 16);
}

uint64_t sub_1D6DC8478()
{
  v2 = *v1;

  v3 = *(v2 + 48);
  if (v0)
  {

    v4 = sub_1D6DC88A8;
  }

  else
  {

    v4 = sub_1D6DC85D4;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

void sub_1D6DC85D4()
{
  v1 = [*(v0 + 16) puzzlesConfig];
  swift_unknownObjectRelease();
  v2 = [v1 puzzleTypeLeaderboards];

  sub_1D5B5A498(0, &qword_1EDF04448);
  v3 = sub_1D7261D3C();

  if (!*(v3 + 16))
  {
    goto LABEL_16;
  }

  v4 = sub_1D5B69D90(*(v0 + 24), *(v0 + 32));
  if ((v5 & 1) == 0)
  {
    goto LABEL_16;
  }

  v6 = *(*(v3 + 56) + 8 * v4);

  v7 = [v6 leaderboards];

  sub_1D5B5A498(0, &qword_1EDF044E0);
  v8 = sub_1D726267C();

  LOBYTE(v9) = *(v0 + 72);
  if (v8 >> 62)
  {
    goto LABEL_22;
  }

  v22 = v8 & 0xFFFFFFFFFFFFFF8;
  v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if ((*(v0 + 72) & 1) == 0 && v10 >= 2)
  {
    while (1)
    {
      v11 = 0;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x1DA6FB460](v11, v8);
        }

        else
        {
          if (v11 >= *(v22 + 16))
          {
            goto LABEL_21;
          }

          v12 = *(v8 + 8 * v11 + 32);
        }

        v9 = v12;
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v14 = [v12 difficulty];
        if (v14)
        {
          v15 = *(v0 + 40);
          v16 = v14;
          v17 = [v14 integerValue];

          if (v17 == v15)
          {
            goto LABEL_31;
          }
        }

        ++v11;
        if (v13 == v10)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      v22 = v8 & 0xFFFFFFFFFFFFFF8;
      v19 = sub_1D7263BFC();
      v20 = sub_1D7263BFC();
      v10 = v20;
      if ((v9 & 1) != 0 || v19 < 2)
      {
        break;
      }

      if (!v20)
      {
        goto LABEL_16;
      }
    }
  }

  if (v10)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x1DA6FB460](0, v8);
    }

    else
    {
      if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v21 = *(v8 + 32);
    }

    v9 = v21;
LABEL_31:
  }

  else
  {
LABEL_16:

    v9 = 0;
  }

  v18 = *(v0 + 8);

  v18(v9);
}

uint64_t sub_1D6DC88C0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1D5BA6EF4();
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v4, v6);
  }

  else
  {
    gotLoadHelper_x2__OBJC_CLASS___GKLeaderboard(v5);
    sub_1D5B5A498(0, v9);
    **(*(v4 + 64) + 40) = sub_1D726267C();

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_1D6DC89A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a5)
  {
    sub_1D5BA6EF4();
    v10 = swift_allocError();
    *v11 = a5;
    v12 = a5;

    return MEMORY[0x1EEE6DEE8](v8, v10);
  }

  else
  {
    gotLoadHelper_x2__OBJC_CLASS___GKLeaderboardEntry(v9);
    sub_1D5B5A498(0, v13);
    v14 = sub_1D726267C();
    v15 = *(*(v8 + 64) + 40);
    *v15 = a2;
    v15[1] = v14;
    v15[2] = a4;
    v16 = a2;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_1D6DC8AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[9] = a2;
  sub_1D604426C(0);
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  sub_1D5C42D18(0, &qword_1EC8962F0, sub_1D604426C, MEMORY[0x1E69E6720]);
  v4[15] = swift_task_alloc();
  sub_1D5C42D18(0, &qword_1EC8962F8, sub_1D604426C, MEMORY[0x1E69E8590]);
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  sub_1D5B73DC0();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D6DC8C7C, 0, 0);
}

uint64_t sub_1D6DC8C7C()
{
  v1 = *(v0 + 80);
  if (v1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7263BFC())
  {
    v3 = 0;
    v26 = v1 & 0xFFFFFFFFFFFFFF8;
    v27 = v1 & 0xC000000000000001;
    v24 = *(v0 + 80) + 32;
    v25 = i;
    while (1)
    {
      if (v27)
      {
        v6 = MEMORY[0x1DA6FB460](v3, *(v0 + 80));
      }

      else
      {
        if (v3 >= *(v26 + 16))
        {
          goto LABEL_19;
        }

        v6 = *(v24 + 8 * v3);
      }

      v1 = v6;
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v9 = *(v0 + 152);
      v8 = *(v0 + 160);
      v10 = sub_1D726294C();
      v11 = *(v10 - 8);
      (*(v11 + 56))(v8, 1, 1, v10);
      v12 = swift_allocObject();
      v12[2] = 0;
      v13 = v12 + 2;
      v12[3] = 0;
      v12[4] = v1;
      sub_1D6DBE4B8(v8, v9, sub_1D5B73DC0);
      LODWORD(v8) = (*(v11 + 48))(v9, 1, v10);
      v28 = v1;
      v14 = *(v0 + 152);
      if (v8 == 1)
      {
        sub_1D6DD07A8(*(v0 + 152), sub_1D5B73DC0);
        if (!*v13)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_1D726293C();
        (*(v11 + 8))(v14, v10);
        if (!*v13)
        {
LABEL_14:
          v15 = 0;
          v17 = 0;
          goto LABEL_15;
        }
      }

      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = sub_1D726285C();
      v17 = v16;
      swift_unknownObjectRelease();
LABEL_15:
      v18 = **(v0 + 72);
      v19 = swift_allocObject();
      *(v19 + 16) = &unk_1D7356608;
      *(v19 + 24) = v12;

      if (v17 | v15)
      {
        v4 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v15;
        *(v0 + 40) = v17;
      }

      else
      {
        v4 = 0;
      }

      v5 = *(v0 + 160);
      *(v0 + 48) = 1;
      *(v0 + 56) = v4;
      *(v0 + 64) = v18;
      v1 = swift_task_create();

      sub_1D6DD07A8(v5, sub_1D5B73DC0);
      ++v3;
      if (v7 == v25)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_21:
  sub_1D72628AC();
  v20 = swift_task_alloc();
  *(v0 + 168) = v20;
  *v20 = v0;
  v20[1] = sub_1D6DC9054;
  v21 = *(v0 + 120);
  v22 = *(v0 + 128);

  return MEMORY[0x1EEE6D8A8](v21, 0, 0, v22);
}

uint64_t sub_1D6DC9054()
{

  return MEMORY[0x1EEE6DFA0](sub_1D6DC9150, 0, 0);
}

uint64_t sub_1D6DC9150()
{
  v1 = v0[15];
  if ((*(v0[13] + 48))(v1, 1, v0[12]) == 1)
  {
    (*(v0[17] + 8))(v0[18], v0[16]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[11];
    sub_1D6DD0244(v1, v0[14], sub_1D604426C);
    v5 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v4 = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = v0[11];
      v5 = sub_1D6996564(0, v5[2] + 1, 1, v5);
      *v14 = v5;
    }

    v8 = v5[2];
    v7 = v5[3];
    if (v8 >= v7 >> 1)
    {
      v15 = v0[11];
      v5 = sub_1D6996564(v7 > 1, v8 + 1, 1, v5);
      *v15 = v5;
    }

    v10 = v0[13];
    v9 = v0[14];
    v5[2] = v8 + 1;
    sub_1D6DD0244(v9, v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v8, sub_1D604426C);
    v11 = swift_task_alloc();
    v0[21] = v11;
    *v11 = v0;
    v11[1] = sub_1D6DC9054;
    v12 = v0[15];
    v13 = v0[16];

    return MEMORY[0x1EEE6D8A8](v12, 0, 0, v13);
  }
}

uint64_t sub_1D6DC9380(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D5B64684;

  return sub_1D6F3E050(a1);
}

uint64_t sub_1D6DC941C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  sub_1D726290C();
  v6[11] = sub_1D72628FC();
  v8 = sub_1D726285C();

  return MEMORY[0x1EEE6DFA0](sub_1D6DC94B8, v8, v7);
}

id sub_1D6DC94B8()
{
  v1 = v0[8];
  v2 = objc_opt_self();
  v3 = [v2 shared];
  result = [v1 view];
  if (result)
  {
    v5 = result;
    v6 = v0[10];
    v7 = v0[9];

    v8 = [v5 window];

    [v3 setParentWindow_];
    v9 = [v2 shared];
    v10 = swift_allocObject();
    *(v10 + 16) = v7;
    *(v10 + 24) = v6;
    v0[6] = sub_1D6DCFC68;
    v0[7] = v10;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1D5B6B06C;
    v0[5] = &block_descriptor_150;
    v11 = _Block_copy(v0 + 2);

    [v9 triggerAccessPointWithState:0 handler:v11];
    _Block_release(v11);

    v12 = v0[1];

    return v12();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6DC968C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1D726290C();
  v5[4] = sub_1D72628FC();
  v7 = sub_1D726285C();

  return MEMORY[0x1EEE6DFA0](sub_1D6DD0808, v7, v6);
}

uint64_t sub_1D6DC9724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  sub_1D726290C();
  v6[11] = sub_1D72628FC();
  v8 = sub_1D726285C();

  return MEMORY[0x1EEE6DFA0](sub_1D6DC97C0, v8, v7);
}

id sub_1D6DC97C0()
{
  v1 = v0[8];
  v2 = objc_opt_self();
  v3 = [v2 shared];
  result = [v1 view];
  if (result)
  {
    v5 = result;
    v6 = v0[10];
    v7 = v0[9];

    v8 = [v5 window];

    [v3 setParentWindow_];
    v9 = [v2 shared];
    v10 = swift_allocObject();
    *(v10 + 16) = v7;
    *(v10 + 24) = v6;
    v0[6] = sub_1D6DCFE58;
    v0[7] = v10;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1D5B6B06C;
    v0[5] = &block_descriptor_170;
    v11 = _Block_copy(v0 + 2);

    [v9 triggerAccessPointWithState:0 handler:v11];
    _Block_release(v11);

    v12 = v0[1];

    return v12();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6DC9994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1D726290C();
  v5[4] = sub_1D72628FC();
  v7 = sub_1D726285C();

  return MEMORY[0x1EEE6DFA0](sub_1D6DC9A2C, v7, v6);
}

uint64_t sub_1D6DC9A2C()
{
  v1 = *(v0 + 16);

  v1(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D6DC9A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  sub_1D726290C();
  v7[12] = sub_1D72628FC();
  v9 = sub_1D726285C();

  return MEMORY[0x1EEE6DFA0](sub_1D6DC9B34, v9, v8);
}

id sub_1D6DC9B34()
{
  v1 = v0[8];
  v2 = objc_opt_self();
  v3 = [v2 shared];
  result = [v1 view];
  if (result)
  {
    v5 = result;
    v6 = v0[9];

    v7 = [v5 window];

    [v3 setParentWindow_];
    v8 = [v2 shared];
    v9 = [v6 leaderboardID];
    if (!v9)
    {
      sub_1D726207C();
      v9 = sub_1D726203C();
    }

    v11 = v0[10];
    v10 = v0[11];
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = v10;
    v0[6] = sub_1D6DCFD60;
    v0[7] = v12;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1D5B6B06C;
    v0[5] = &block_descriptor_160;
    v13 = _Block_copy(v0 + 2);

    [v8 triggerAccessPointWithLeaderboardID:v9 playerScope:1 timeScope:2 handler:v13];
    _Block_release(v13);

    v14 = v0[1];

    return v14();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6DC9D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  sub_1D726290C();
  v7[12] = sub_1D72628FC();
  v9 = sub_1D726285C();

  return MEMORY[0x1EEE6DFA0](sub_1D6DC9DE4, v9, v8);
}

id sub_1D6DC9DE4()
{
  v1 = v0[8];
  v2 = objc_opt_self();
  v3 = [v2 shared];
  result = [v1 view];
  if (result)
  {
    v5 = result;
    v6 = v0[9];

    v7 = [v5 window];

    [v3 setParentWindow_];
    v8 = [v2 shared];
    v9 = [v6 leaderboardID];
    if (!v9)
    {
      sub_1D726207C();
      v9 = sub_1D726203C();
    }

    v11 = v0[10];
    v10 = v0[11];
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = v10;
    v0[6] = sub_1D6DCFF50;
    v0[7] = v12;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1D5B6B06C;
    v0[5] = &block_descriptor_180;
    v13 = _Block_copy(v0 + 2);

    [v8 triggerAccessPointWithLeaderboardID:v9 playerScope:1 timeScope:2 handler:v13];
    _Block_release(v13);

    v14 = v0[1];

    return v14();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6DC9FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D5B73DC0();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D726294C();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_1D726290C();

  v12 = sub_1D72628FC();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = a1;
  v13[5] = a2;
  sub_1D6BD1334(0, 0, v10, a4, v13);
}

uint64_t sub_1D6DCA114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  *(v8 + 369) = a7;
  *(v8 + 232) = a6;
  *(v8 + 240) = v7;
  *(v8 + 368) = a5;
  *(v8 + 216) = a3;
  *(v8 + 224) = a4;
  *(v8 + 200) = a1;
  *(v8 + 208) = a2;
  v9 = swift_task_alloc();
  *(v8 + 248) = v9;
  *v9 = v8;
  v9[1] = sub_1D6DCA1B4;

  return sub_1D5B73F60();
}

uint64_t sub_1D6DCA1B4(char a1)
{
  v2 = *(*v1 + 240);
  *(*v1 + 370) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D6DCA2CC, v2, 0);
}

uint64_t sub_1D6DCA2CC(double a1)
{
  if (*(v1 + 370) != 1)
  {
    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v19 = sub_1D725C42C();
    __swift_project_value_buffer(v19, qword_1EDFFCFA8);
    v20 = sub_1D725C3FC();
    v21 = sub_1D7262EDC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1D5B42000, v20, v21, "PuzzleGameCenterService: Game Center disabled. Skipping score submission...", v22, 2u);
      MEMORY[0x1DA6FD500](v22, -1, -1);
    }

    v18 = 0;
    goto LABEL_18;
  }

  v2 = *(v1 + 369);
  if ((sub_1D5C435B8(a1) & 1) == 0 && !v2)
  {
    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v3 = sub_1D725C42C();
    __swift_project_value_buffer(v3, qword_1EDFFCFA8);
    v4 = sub_1D725C3FC();
    v5 = sub_1D7262EDC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1D5B42000, v4, v5, "PuzzleGameCenterService: User is not authenticated to Game Center. Storing score for later submission...", v6, 2u);
      MEMORY[0x1DA6FD500](v6, -1, -1);
    }

    v7 = *(v1 + 240);

    swift_beginAccess();
    v8 = *(v7 + 312);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v7 + 312) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1D6996550(0, *(v8 + 2) + 1, 1, v8);
      *(v7 + 312) = v8;
    }

    v10 = *(v8 + 2);
    v11 = *(v8 + 3);
    v12 = v10 + 1;
    if (v10 >= v11 >> 1)
    {
      v32 = v8;
      v33 = *(v8 + 2);
      v34 = sub_1D6996550((v11 > 1), v10 + 1, 1, v32);
      v10 = v33;
      v8 = v34;
    }

    v13 = *(v1 + 368);
    v15 = *(v1 + 208);
    v14 = *(v1 + 216);
    v16 = &v8[40 * v10];
    v17 = *(v1 + 224);
    *(v8 + 2) = v12;
    v16[2].i64[0] = v15;
    v16[2].i64[1] = v14;
    v16[3] = vextq_s8(v17, v17, 8uLL);
    v16[4].i8[0] = v13 & 1;
    *(v7 + 312) = v8;
    swift_endAccess();
    v18 = 1;
LABEL_18:
    v23 = *(v1 + 200);
    *v23 = v18;
    v23[1] = 1;
    v24 = *(v1 + 8);

    return v24();
  }

  v26 = *(v1 + 240);
  v27 = v26[28];
  v28 = v26[29];
  __swift_project_boxed_opaque_existential_1(v26 + 25, v27);
  v35 = (*(v28 + 32) + **(v28 + 32));
  v29 = swift_task_alloc();
  *(v1 + 256) = v29;
  *v29 = v1;
  v29[1] = sub_1D6DCA69C;
  v31 = *(v1 + 208);
  v30 = *(v1 + 216);

  return v35(v31, v30, v27, v28);
}

uint64_t sub_1D6DCA69C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 264) = a1;
  *(v4 + 272) = v1;

  v5 = *(v3 + 240);
  if (v1)
  {
    v6 = sub_1D6DCB36C;
  }

  else
  {
    v6 = sub_1D6DCA7D0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1D6DCA7D0()
{
  v18 = v0;
  v1 = [objc_msgSend(*(v0 + 264) puzzleType)];
  swift_unknownObjectRelease();
  v2 = sub_1D726207C();
  v4 = v3;

  *(v0 + 280) = v2;
  *(v0 + 288) = v4;
  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v5 = sub_1D725C42C();
  *(v0 + 296) = __swift_project_value_buffer(v5, qword_1EDFFCFA8);

  v6 = sub_1D725C3FC();
  v7 = sub_1D7262EDC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 232);
    v10 = *(v0 + 208);
    v9 = *(v0 + 216);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 134218242;
    *(v11 + 4) = v8;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_1D5BC5100(v10, v9, &v17);
    _os_log_impl(&dword_1D5B42000, v6, v7, "PuzzleGameCenterService: submitting score %ld for %s", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1DA6FD500](v12, -1, -1);
    MEMORY[0x1DA6FD500](v11, -1, -1);
  }

  v13 = *(v0 + 368);
  v14 = swift_task_alloc();
  *(v0 + 304) = v14;
  *v14 = v0;
  v14[1] = sub_1D6DCAA10;
  v15 = *(v0 + 224);

  return sub_1D6DC8394(v2, v4, v15, v13 & 1);
}

uint64_t sub_1D6DCAA10(uint64_t a1)
{
  v2 = *(*v1 + 240);
  *(*v1 + 312) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D6DCAB28, v2, 0);
}

uint64_t sub_1D6DCAB28()
{
  v20 = v0;
  v1 = *(v0 + 312);
  if (v1)
  {
    v2 = [v1 leaderboardID];
    v3 = sub_1D726207C();
    v5 = v4;

    *(v0 + 320) = v3;
    *(v0 + 328) = v5;
    v6 = swift_task_alloc();
    *(v0 + 336) = v6;
    *v6 = v0;
    v6[1] = sub_1D6DCAD5C;
    v7 = *(v0 + 264);
    v8 = *(v0 + 232);

    return sub_1D6DCB740(v8, v7, v3, v5);
  }

  else
  {

    v10 = sub_1D725C3FC();
    v11 = sub_1D7262EBC();

    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 288);
    if (v12)
    {
      v14 = *(v0 + 280);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v19 = v16;
      *v15 = 136315138;
      v17 = sub_1D5BC5100(v14, v13, &v19);

      *(v15 + 4) = v17;
      _os_log_impl(&dword_1D5B42000, v10, v11, "PuzzleGameCenterService: no leaderboard configured for %s. Skipping...", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1DA6FD500](v16, -1, -1);
      MEMORY[0x1DA6FD500](v15, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    **(v0 + 200) = 259;
    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1D6DCAD5C(char a1)
{
  v2 = *(*v1 + 240);
  *(*v1 + 371) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D6DCAE74, v2, 0);
}

uint64_t sub_1D6DCAE74(double a1)
{
  v25 = v1;
  if (*(v1 + 371) == 1)
  {
    v3 = *(v1 + 320);
    v2 = *(v1 + 328);
    v4 = *(v1 + 232);
    gotLoadHelper_x8__OBJC_CLASS___GKLeaderboard(a1);
    v5 = objc_opt_self();
    gotLoadHelper_x8__OBJC_CLASS___GKLocalPlayer(v6);
    v7 = [objc_opt_self() localPlayer];
    *(v1 + 344) = v7;
    sub_1D5B49D58(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D7273AE0;
    *(v8 + 32) = v3;
    *(v8 + 40) = v2;
    v9 = sub_1D726265C();
    *(v1 + 352) = v9;

    *(v1 + 16) = v1;
    *(v1 + 24) = sub_1D6DCB1C0;
    v10 = swift_continuation_init();
    sub_1D6DCF530();
    *(v1 + 136) = v11;
    *(v1 + 80) = MEMORY[0x1E69E9820];
    *(v1 + 88) = 1107296256;
    *(v1 + 96) = sub_1D6DCD0B0;
    *(v1 + 104) = &block_descriptor_108;
    *(v1 + 112) = v10;
    [v5 submitScore:v4 context:0 player:v7 leaderboardIDs:v9 completionHandler:v1 + 80];

    return MEMORY[0x1EEE6DEC8](v1 + 16);
  }

  else
  {

    v12 = sub_1D725C3FC();
    v13 = sub_1D7262EDC();

    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v1 + 312);
    v16 = *(v1 + 288);
    if (v14)
    {
      v17 = *(v1 + 280);
      v18 = *(v1 + 232);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v24 = v20;
      *v19 = 134218242;
      *(v19 + 4) = v18;
      *(v19 + 12) = 2080;
      v21 = sub_1D5BC5100(v17, v16, &v24);

      *(v19 + 14) = v21;
      _os_log_impl(&dword_1D5B42000, v12, v13, "PuzzleGameCenterService: score %ld for %s is not valid. Skipping submission...", v19, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1DA6FD500](v20, -1, -1);
      MEMORY[0x1DA6FD500](v19, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    **(v1 + 200) = 260;
    v22 = *(v1 + 8);

    return v22();
  }
}

uint64_t sub_1D6DCB1C0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 360) = v2;
  if (v2)
  {
    v3 = *(v1 + 240);
    v4 = sub_1D6DCB508;
  }

  else
  {
    v5 = *(v1 + 240);

    v4 = sub_1D6DCB2E8;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D6DCB2E8()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 352);
  v3 = *(v0 + 312);
  swift_unknownObjectRelease();

  **(v0 + 200) = 0;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D6DCB36C()
{
  v13 = v0;
  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v1 = sub_1D725C42C();
  __swift_project_value_buffer(v1, qword_1EDFFCFA8);

  v2 = sub_1D725C3FC();
  v3 = sub_1D7262EBC();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 272);
  if (v4)
  {
    v7 = *(v0 + 208);
    v6 = *(v0 + 216);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1D5BC5100(v7, v6, &v12);
    _os_log_impl(&dword_1D5B42000, v2, v3, "PuzzleGameCenterService: failed fetching puzzle details for %s. Skipping score submission...", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1DA6FD500](v9, -1, -1);
    MEMORY[0x1DA6FD500](v8, -1, -1);
  }

  **(v0 + 200) = 258;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1D6DCB508()
{
  v23 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 360);
  v3 = *(v0 + 344);
  swift_willThrow();

  v4 = v2;
  v5 = sub_1D725C3FC();
  v6 = sub_1D7262EBC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 360);
    v21 = *(v0 + 312);
    v9 = *(v0 + 280);
    v8 = *(v0 + 288);
    v10 = *(v0 + 232);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22[0] = v12;
    *v11 = 134218498;
    *(v11 + 4) = v10;
    *(v11 + 12) = 2080;
    v13 = sub_1D5BC5100(v9, v8, v22);

    *(v11 + 14) = v13;
    *(v11 + 22) = 2080;
    swift_getErrorValue();
    v14 = sub_1D726497C();
    v16 = sub_1D5BC5100(v14, v15, v22);

    *(v11 + 24) = v16;
    _os_log_impl(&dword_1D5B42000, v5, v6, "PuzzleGameCenterService: error submitting score %ld for %s: %s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA6FD500](v12, -1, -1);
    MEMORY[0x1DA6FD500](v11, -1, -1);
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = *(v0 + 360);
    v18 = *(v0 + 312);
    swift_unknownObjectRelease();
  }

  **(v0 + 200) = 261;
  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1D6DCB740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[26] = a4;
  v5[27] = v4;
  v5[24] = a2;
  v5[25] = a3;
  v5[23] = a1;
  v6 = sub_1D725876C();
  v5[28] = v6;
  v5[29] = *(v6 - 8);
  v5[30] = swift_task_alloc();
  v7 = sub_1D725878C();
  v5[31] = v7;
  v5[32] = *(v7 - 8);
  v5[33] = swift_task_alloc();
  v8 = sub_1D7258C2C();
  v5[34] = v8;
  v5[35] = *(v8 - 8);
  v5[36] = swift_task_alloc();
  v9 = sub_1D7257ADC();
  v5[37] = v9;
  v5[38] = *(v9 - 8);
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v10 = sub_1D725891C();
  v5[41] = v10;
  v5[42] = *(v10 - 8);
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D6DCB9B4, v4, 0);
}

uint64_t sub_1D6DCB9B4(double a1)
{
  v3 = v1[25];
  v2 = v1[26];
  gotLoadHelper_x8__OBJC_CLASS___GKLeaderboard(a1);
  v4 = objc_opt_self();
  sub_1D5B49D58(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D7273AE0;
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;

  v6 = sub_1D726265C();
  v1[48] = v6;

  v1[2] = v1;
  v1[7] = v1 + 21;
  v1[3] = sub_1D6DCBB5C;
  v7 = swift_continuation_init();
  sub_1D6DCF59C(v8);
  v1[17] = v9;
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1D6DC88C0;
  v1[13] = &block_descriptor_111;
  v1[14] = v7;
  [v4 loadLeaderboardsWithIDs:v6 completionHandler:v1 + 10];

  return MEMORY[0x1EEE6DEC8](v1 + 2);
}

uint64_t sub_1D6DCBB5C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 392) = v2;
  v3 = *(v1 + 216);
  if (v2)
  {
    v4 = sub_1D6DCCE2C;
  }

  else
  {
    v4 = sub_1D6DCBC7C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D6DCBC7C()
{
  v152 = v0;
  v1 = *(v0 + 168);

  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_71:

    if (qword_1EDF3B838 == -1)
    {
      goto LABEL_72;
    }

    goto LABEL_81;
  }

  if (!sub_1D7263BFC())
  {
    goto LABEL_71;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) == 0)
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v2 = *(v1 + 32);
      goto LABEL_6;
    }

    __break(1u);
LABEL_81:
    swift_once();
LABEL_72:
    v123 = sub_1D725C42C();
    __swift_project_value_buffer(v123, qword_1EDFFCFA8);

    v37 = sub_1D725C3FC();
    v124 = sub_1D7262EDC();

    if (os_log_type_enabled(v37, v124))
    {
      v126 = *(v0 + 200);
      v125 = *(v0 + 208);
      v127 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v151 = v128;
      *v127 = 136315138;
      *(v127 + 4) = sub_1D5BC5100(v126, v125, &v151);
      _os_log_impl(&dword_1D5B42000, v37, v124, "PuzzleGameCenterService: No leaderboard returned with ID [%s]", v127, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v128);
      MEMORY[0x1DA6FD500](v128, -1, -1);
      MEMORY[0x1DA6FD500](v127, -1, -1);
    }

    goto LABEL_74;
  }

  v2 = MEMORY[0x1DA6FB460](0, v1);
LABEL_6:
  v3 = v2;
  v4 = *(v0 + 192);

  swift_getObjectType();
  v5 = [v4 identifier];
  v6 = sub_1D726207C();
  v8 = v7;

  if ([v3 type] != 1)
  {
    goto LABEL_11;
  }

  v9 = [*(v0 + 192) publishDate];
  if (v9)
  {
    v10 = v9;
    sub_1D72588BC();

    v11 = [v3 startDate];
    v149 = v3;
    if (!v11)
    {

      if (qword_1EDF3B838 != -1)
      {
        swift_once();
      }

      v60 = sub_1D725C42C();
      __swift_project_value_buffer(v60, qword_1EDFFCFA8);

      v61 = sub_1D725C3FC();
      v62 = sub_1D7262EDC();

      v63 = os_log_type_enabled(v61, v62);
      v64 = *(v0 + 376);
      v65 = *(v0 + 328);
      v66 = *(v0 + 336);
      if (v63)
      {
        v68 = *(v0 + 200);
        v67 = *(v0 + 208);
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v151 = v70;
        *v69 = 136315138;
        *(v69 + 4) = sub_1D5BC5100(v68, v67, &v151);
        _os_log_impl(&dword_1D5B42000, v61, v62, "PuzzleGameCenterService: Failed to load the start date for recurring leaderboard %s", v69, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v70);
        MEMORY[0x1DA6FD500](v70, -1, -1);
        MEMORY[0x1DA6FD500](v69, -1, -1);
      }

      (*(v66 + 8))(v64, v65);
      goto LABEL_75;
    }

    v140 = v6;
    v12 = *(v0 + 368);
    v147 = v8;
    v13 = *(v0 + 360);
    v15 = *(v0 + 328);
    v14 = *(v0 + 336);
    v16 = *(v0 + 280);
    v17 = *(v0 + 288);
    v144 = *(v0 + 272);
    v18 = v11;
    sub_1D72588BC();

    v19 = *(v14 + 16);
    v20 = v15;
    v3 = v149;
    v19(v13, v12, v20);
    [v149 duration];
    sub_1D7257A9C();
    sub_1D7258BCC();
    sub_1D725873C();
    (*(v16 + 8))(v17, v144);
    if ((sub_1D7257ABC() & 1) == 0)
    {

      if (qword_1EDF3B838 != -1)
      {
        swift_once();
      }

      v71 = *(v0 + 376);
      v72 = *(v0 + 344);
      v73 = *(v0 + 320);
      v74 = *(v0 + 328);
      v75 = *(v0 + 304);
      v76 = *(v0 + 312);
      v77 = *(v0 + 296);
      v78 = sub_1D725C42C();
      __swift_project_value_buffer(v78, qword_1EDFFCFA8);
      v19(v72, v71, v74);
      (*(v75 + 16))(v76, v73, v77);
      v79 = sub_1D725C3FC();
      v80 = sub_1D7262EDC();
      v81 = os_log_type_enabled(v79, v80);
      v83 = *(v0 + 368);
      v82 = *(v0 + 376);
      v84 = *(v0 + 344);
      v86 = *(v0 + 328);
      v85 = *(v0 + 336);
      v146 = *(v0 + 320);
      v148 = *(v0 + 352);
      v145 = *(v0 + 312);
      v87 = *(v0 + 296);
      v88 = *(v0 + 304);
      if (v81)
      {
        log = v79;
        v135 = *(v0 + 296);
        v90 = *(v0 + 256);
        v89 = *(v0 + 264);
        v139 = *(v0 + 368);
        v141 = *(v0 + 328);
        v92 = *(v0 + 232);
        v91 = *(v0 + 240);
        v132 = *(v0 + 224);
        v133 = *(v0 + 248);
        v138 = *(v0 + 376);
        v93 = swift_slowAlloc();
        v136 = swift_slowAlloc();
        v151 = v136;
        *v93 = 136315394;
        sub_1D725877C();
        sub_1D725875C();
        v131 = sub_1D72588FC();
        v134 = v80;
        v95 = v94;
        (*(v92 + 8))(v91, v132);
        (*(v90 + 8))(v89, v133);
        v96 = *(v85 + 8);
        v96(v84, v141);
        v97 = sub_1D5BC5100(v131, v95, &v151);

        *(v93 + 4) = v97;
        *(v93 + 12) = 2080;
        sub_1D5B6F648(&unk_1EC8962B0, 255, MEMORY[0x1E6968130]);
        v98 = sub_1D72644BC();
        v100 = v99;
        v101 = *(v88 + 8);
        v101(v145, v135);
        v102 = sub_1D5BC5100(v98, v100, &v151);

        *(v93 + 14) = v102;
        _os_log_impl(&dword_1D5B42000, log, v134, "PuzzleGameCenterService: Trying to send score for puzzle published %s, outside active leaderboard interval [%s]", v93, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1DA6FD500](v136, -1, -1);
        MEMORY[0x1DA6FD500](v93, -1, -1);

        v96(v148, v141);
        v101(v146, v135);
        v96(v139, v141);
        v96(v138, v141);
      }

      else
      {

        v111 = *(v88 + 8);
        v111(v145, v87);
        v112 = *(v85 + 8);
        v112(v84, v86);
        v112(v148, v86);
        v111(v146, v87);
        v112(v83, v86);
        v112(v82, v86);
      }

      goto LABEL_75;
    }

    v21 = *(v0 + 368);
    v22 = *(v0 + 376);
    v23 = *(v0 + 328);
    v24 = *(v0 + 320);
    v25 = *(v0 + 296);
    v26 = *(v0 + 304);
    v27 = *(*(v0 + 336) + 8);
    v27(*(v0 + 352), v23);
    (*(v26 + 8))(v24, v25);
    v27(v21, v23);
    v27(v22, v23);
    v8 = v147;
    v6 = v140;
LABEL_11:
    v28 = *(v0 + 216);
    v29 = v28[33];
    v30 = v28[34];
    __swift_project_boxed_opaque_existential_1(v28 + 30, v29);
    v31 = (*(*(v30 + 8) + 56))(v6, v8, v29);
    if (v31)
    {
      v32 = v31;
      v33 = [v31 usedReveal];
      if (v33)
      {
        v34 = v33;
        v35 = [v33 BOOLValue];

        if (v35)
        {
          if (qword_1EDF3B838 != -1)
          {
            swift_once();
          }

          v36 = sub_1D725C42C();
          __swift_project_value_buffer(v36, qword_1EDFFCFA8);

          v37 = sub_1D725C3FC();
          v38 = sub_1D7262EDC();

          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            v40 = swift_slowAlloc();
            v151 = v40;
            *v39 = 136315138;
            v41 = sub_1D5BC5100(v6, v8, &v151);

            *(v39 + 4) = v41;
            v42 = "PuzzleGameCenterService: Skipped sending score for puzzle %s where reveal was used";
            v43 = v38;
            v44 = v37;
            v45 = v39;
            v46 = 12;
LABEL_67:
            _os_log_impl(&dword_1D5B42000, v44, v43, v42, v45, v46);
            __swift_destroy_boxed_opaque_existential_1(v40);
            MEMORY[0x1DA6FD500](v40, -1, -1);
            MEMORY[0x1DA6FD500](v39, -1, -1);

            goto LABEL_74;
          }

          goto LABEL_68;
        }
      }

      v47 = FCPuzzleProviding.puzzleTypeTraits.getter();
      if ((v47 & 0x40) != 0)
      {
        if ((*(v0 + 184) & 0x8000000000000000) != 0)
        {
          if (qword_1EDF3B838 != -1)
          {
            swift_once();
          }

          v113 = sub_1D725C42C();
          __swift_project_value_buffer(v113, qword_1EDFFCFA8);

          v37 = sub_1D725C3FC();
          v49 = sub_1D7262EDC();

          if (os_log_type_enabled(v37, v49))
          {
            v114 = *(v0 + 184);
            v39 = swift_slowAlloc();
            v40 = swift_slowAlloc();
            v151 = v40;
            *v39 = 134218242;
            *(v39 + 4) = v114;
            *(v39 + 12) = 2080;
            v115 = sub_1D5BC5100(v6, v8, &v151);

            *(v39 + 14) = v115;
            v42 = "PuzzleGameCenterService: Trying to send invalid score [%ld] for puzzle %s";
            goto LABEL_57;
          }

LABEL_68:

          goto LABEL_69;
        }

LABEL_61:
        v150 = 1;
        goto LABEL_76;
      }

      if ((v47 & 0x10) != 0)
      {
        v103 = [v32 firstPlayDuration];
        if (!v103 || (v104 = *(v0 + 184), v105 = v103, v106 = [v103 integerValue], v105, v106 == v104))
        {
LABEL_60:

          goto LABEL_61;
        }

        v142 = v6;
        if (qword_1EDF3B838 != -1)
        {
          swift_once();
        }

        v107 = sub_1D725C42C();
        __swift_project_value_buffer(v107, qword_1EDFFCFA8);

        v37 = sub_1D725C3FC();
        v108 = sub_1D7262EDC();

        if (!os_log_type_enabled(v37, v108))
        {
          goto LABEL_68;
        }

        v109 = *(v0 + 184);
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v151 = v40;
        *v39 = 134218498;
        *(v39 + 4) = v109;
        *(v39 + 12) = 2080;
        v110 = sub_1D5BC5100(v142, v8, &v151);

        *(v39 + 14) = v110;
        *(v39 + 22) = 2048;
        *(v39 + 24) = v106;
        v42 = "PuzzleGameCenterService: Trying to send score [%ld] for puzzle %s that is not the first playDuration [%ld]";
      }

      else
      {
        if ((v47 & 0x20) == 0)
        {
          if (qword_1EDF3B838 != -1)
          {
            swift_once();
          }

          v48 = sub_1D725C42C();
          __swift_project_value_buffer(v48, qword_1EDFFCFA8);

          v37 = sub_1D725C3FC();
          v49 = sub_1D7262EDC();

          if (os_log_type_enabled(v37, v49))
          {
            v50 = *(v0 + 184);
            v39 = swift_slowAlloc();
            v40 = swift_slowAlloc();
            v151 = v40;
            *v39 = 134218242;
            *(v39 + 4) = v50;
            *(v39 + 12) = 2080;
            v51 = sub_1D5BC5100(v6, v8, &v151);

            *(v39 + 14) = v51;
            v42 = "PuzzleGameCenterService: Trying to send score [%ld] for puzzle %s with missing 'leaderboardSubmitBased' traits";
LABEL_57:
            v43 = v49;
            v44 = v37;
            v45 = v39;
            v46 = 22;
            goto LABEL_67;
          }

          goto LABEL_68;
        }

        v116 = [v32 bestScore];
        if (!v116)
        {
          goto LABEL_60;
        }

        v117 = *(v0 + 184);
        v118 = v116;
        v119 = [v116 integerValue];

        if (v119 == v117)
        {
          goto LABEL_60;
        }

        v143 = v6;
        if (qword_1EDF3B838 != -1)
        {
          swift_once();
        }

        v120 = sub_1D725C42C();
        __swift_project_value_buffer(v120, qword_1EDFFCFA8);

        v37 = sub_1D725C3FC();
        v108 = sub_1D7262EDC();

        if (!os_log_type_enabled(v37, v108))
        {
          goto LABEL_68;
        }

        v121 = *(v0 + 184);
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v151 = v40;
        *v39 = 134218498;
        *(v39 + 4) = v121;
        *(v39 + 12) = 2080;
        v122 = sub_1D5BC5100(v143, v8, &v151);

        *(v39 + 14) = v122;
        *(v39 + 22) = 2048;
        *(v39 + 24) = v119;
        v42 = "PuzzleGameCenterService: Trying to send score [%ld] for puzzle %s that is not the best score [%ld] ";
      }

      v43 = v108;
      v44 = v37;
      v45 = v39;
      v46 = 32;
      goto LABEL_67;
    }

    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v52 = sub_1D725C42C();
    __swift_project_value_buffer(v52, qword_1EDFFCFA8);

    v37 = sub_1D725C3FC();
    v53 = sub_1D7262EDC();

    if (os_log_type_enabled(v37, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v151 = v55;
      *v54 = 136315138;
      v56 = sub_1D5BC5100(v6, v8, &v151);

      *(v54 + 4) = v56;
      v57 = "PuzzleGameCenterService: Failed to load history item for %s";
LABEL_33:
      _os_log_impl(&dword_1D5B42000, v37, v53, v57, v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v55);
      MEMORY[0x1DA6FD500](v55, -1, -1);
      MEMORY[0x1DA6FD500](v54, -1, -1);

LABEL_74:
      goto LABEL_75;
    }

    goto LABEL_34;
  }

  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v58 = sub_1D725C42C();
  __swift_project_value_buffer(v58, qword_1EDFFCFA8);

  v37 = sub_1D725C3FC();
  v53 = sub_1D7262EDC();

  if (os_log_type_enabled(v37, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v151 = v55;
    *v54 = 136315138;
    v59 = sub_1D5BC5100(v6, v8, &v151);

    *(v54 + 4) = v59;
    v57 = "PuzzleGameCenterService: Failed to load the publish date for %s";
    goto LABEL_33;
  }

LABEL_34:

LABEL_69:

LABEL_75:
  v150 = 0;
LABEL_76:

  v129 = *(v0 + 8);

  return v129(v150);
}

uint64_t sub_1D6DCCE2C()
{
  v19 = v0;
  v1 = v0[48];
  swift_willThrow();

  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v2 = v0[49];
  v3 = sub_1D725C42C();
  __swift_project_value_buffer(v3, qword_1EDFFCFA8);

  v4 = v2;
  v5 = sub_1D725C3FC();
  v6 = sub_1D7262EBC();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[49];
  if (v7)
  {
    v10 = v0[25];
    v9 = v0[26];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18[0] = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_1D5BC5100(v10, v9, v18);
    *(v11 + 12) = 2080;
    swift_getErrorValue();
    v13 = sub_1D726497C();
    v15 = sub_1D5BC5100(v13, v14, v18);

    *(v11 + 14) = v15;
    _os_log_impl(&dword_1D5B42000, v5, v6, "PuzzleGameCenterService: Failed to load leaderboard %s. [%s]", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6FD500](v12, -1, -1);
    MEMORY[0x1DA6FD500](v11, -1, -1);
  }

  else
  {
  }

  v16 = v0[1];

  return v16(0);
}

uint64_t sub_1D6DCD0B0(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_1D5BA6EF4();
    v4 = swift_allocError();
    *v5 = a2;
    v6 = a2;

    return MEMORY[0x1EEE6DEE8](v3, v4);
  }

  else
  {

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_1D6DCD150(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for PuzzleGameCenterActivityRequest(0);
  v3[6] = swift_task_alloc();
  sub_1D5C42D18(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v3[7] = swift_task_alloc();
  sub_1D6DBE520(0);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D6DCD27C, v2, 0);
}

uint64_t sub_1D6DCD27C()
{
  v47 = v0;
  v1 = [*(v0 + 24) activityDefinition];
  v2 = [v1 identifier];

  v3 = sub_1D726207C();
  v5 = v4;

  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 16);
  v7 = sub_1D725C42C();
  __swift_project_value_buffer(v7, qword_1EDFFCFA8);
  v8 = v6;

  v9 = sub_1D725C3FC();
  v10 = sub_1D7262EDC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 16);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v46[0] = v13;
    *v12 = 136315394;
    v14 = [v11 gamePlayerID];
    v15 = sub_1D726207C();
    v17 = v16;

    v18 = sub_1D5BC5100(v15, v17, v46);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_1D5BC5100(v3, v5, v46);
    _os_log_impl(&dword_1D5B42000, v9, v10, "PuzzleGameCenterService: Player %s wants to play activity %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6FD500](v13, -1, -1);
    MEMORY[0x1DA6FD500](v12, -1, -1);
  }

  v19 = [*(v0 + 24) referralLeaderboard];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 baseLeaderboardID];
    v22 = sub_1D726207C();
    v24 = v23;

    v25 = [v20 startDate];
    if (v25)
    {
      v26 = v25;
      sub_1D72588BC();

      v27 = 0;
    }

    else
    {
      v27 = 1;
    }

    v31 = *(v0 + 64);
    v30 = *(v0 + 72);
    v32 = *(v0 + 56);
    v33 = sub_1D725891C();
    (*(*(v33 - 8) + 56))(v32, v27, 1, v33);
    [v20 duration];
    v35 = v34;

    *v31 = v22;
    v31[1] = v24;
    v36 = type metadata accessor for PuzzleGameCenterActivityRequest.Leaderboard(0);
    sub_1D5C42BE0(v32, v31 + *(v36 + 20), &qword_1EDF45B00, MEMORY[0x1E6969530]);
    *(v31 + *(v36 + 24)) = v35;
    (*(*(v36 - 8) + 56))(v31, 0, 1, v36);
    sub_1D6DD0244(v31, v30, sub_1D6DBE520);
  }

  else
  {
    v28 = *(v0 + 72);
    v29 = type metadata accessor for PuzzleGameCenterActivityRequest.Leaderboard(0);
    (*(*(v29 - 8) + 56))(v28, 1, 1, v29);
  }

  v37 = *(v0 + 72);
  v38 = *(v0 + 48);
  v39 = *(v0 + 32);
  v40 = *(v0 + 40);
  v41 = [*(v0 + 24) activityDefinition];
  sub_1D6DBE4A0(v37, v38 + *(v40 + 20));
  *v38 = v3;
  v38[1] = v5;
  *(v38 + *(v40 + 24)) = v41;
  v42 = sub_1D5C428A0();
  v43 = swift_task_alloc();
  *(v43 + 16) = v39;
  *(v43 + 24) = v38;
  sub_1D6DBDEEC(sub_1D6DD078C, v43, v42);

  sub_1D6DD07A8(v37, sub_1D6DBE520);
  sub_1D6DD07A8(v38, type metadata accessor for PuzzleGameCenterActivityRequest);

  v44 = *(v0 + 8);

  return v44(1);
}

uint64_t sub_1D6DCD778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PuzzleGameCenterServiceEvent(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  v13 = sub_1D5B6F648(&qword_1EDF26B70, v12, type metadata accessor for PuzzleGameCenterService);
  sub_1D6DBE4B8(a3, v9, type metadata accessor for PuzzleGameCenterActivityRequest);
  swift_storeEnumTagMultiPayload();
  (*(v10 + 24))(a2, v13, v9, ObjectType, v10);
  return sub_1D6DD07A8(v9, type metadata accessor for PuzzleGameCenterServiceEvent);
}

uint64_t sub_1D6DCDA64(void *a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v7 = a1;
  v8 = a2;

  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = sub_1D6DCDB3C;

  return sub_1D6DCD150(v7, v8);
}

uint64_t sub_1D6DCDB3C(char a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v8 = *v1;

  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_1D6DCDCC0()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 40) = v3;
  *v3 = v2;
  v3[1] = sub_1D5C4316C;

  return sub_1D5C43260();
}

uint64_t sub_1D6DCDE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_1D6DCDE94;

  return sub_1D5B73F60();
}

uint64_t sub_1D6DCDE94(char a1)
{
  v3 = *v1;
  v4 = *v1;

  if (a1)
  {
    v5 = *(v3 + 16);

    return MEMORY[0x1EEE6DFA0](sub_1D6DCDFC8, v5, 0);
  }

  else
  {
    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t sub_1D6DCDFF0()
{
  [*(v0 + 32) removeObserver_];
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1D6DD086C;

  return sub_1D6DC0C04();
}

uint64_t sub_1D6DCE094()
{
  sub_1D5B73DC0();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D726294C();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;

  sub_1D6BD1334(0, 0, v4, &unk_1D7356630, v6);
}

uint64_t sub_1D6DCE194()
{
  v1 = *(v0 + 160);
  v2 = (v1 + 40);
  v3 = -1;
  while (v20 + v3 != -1)
  {
    if (++v3 >= *(v1 + 16))
    {
      __break(1u);
      goto LABEL_15;
    }

    v4 = v2 + 2;
    v5 = v21[18];
    v6 = *v2;
    ObjectType = swift_getObjectType();
    v9 = sub_1D5B6F648(&qword_1EDF26B70, v8, type metadata accessor for PuzzleGameCenterService);
    v10 = *(v6 + 16);
    swift_unknownObjectRetain();
    LOBYTE(v5) = v10(v5, v9, ObjectType, v6);
    swift_unknownObjectRelease();
    v2 = v4;
    if ((v5 & 1) == 0)
    {

      if (qword_1EDF3B838 == -1)
      {
LABEL_6:
        v11 = sub_1D725C42C();
        __swift_project_value_buffer(v11, qword_1EDFFCFA8);
        v12 = sub_1D725C3FC();
        v13 = sub_1D7262EDC();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&dword_1D5B42000, v12, v13, "PuzzleGameCenterService: Skipping check for pending game activities...", v14, 2u);
          MEMORY[0x1DA6FD500](v14, -1, -1);
        }

        v15 = v21[1];

        return v15();
      }

LABEL_15:
      swift_once();
      goto LABEL_6;
    }
  }

  v17 = objc_opt_self();
  v21[2] = v21;
  v21[7] = v21 + 22;
  v21[3] = sub_1D6DCE4A8;
  v18 = swift_continuation_init();
  sub_1D5B937D4();
  v21[17] = v19;
  v21[10] = MEMORY[0x1E69E9820];
  v21[11] = 1107296256;
  v21[12] = sub_1D5C3BEA4;
  v21[13] = &block_descriptor_247_0;
  v21[14] = v18;
  [v17 checkPendingGameActivityExistenceWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v21 + 2);
}

uint64_t sub_1D6DCE4A8()
{

  return MEMORY[0x1EEE6DFA0](sub_1D6DCE588, 0, 0);
}

uint64_t sub_1D6DCE588()
{
  if (*(v0 + 176) == 1)
  {
    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v1 = sub_1D725C42C();
    __swift_project_value_buffer(v1, qword_1EDFFCFA8);
    v2 = sub_1D725C3FC();
    v3 = sub_1D7262EDC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1D5B42000, v2, v3, "PuzzleGameCenterService: GKGameActivity has pending game activities... will authenticate to GC", v4, 2u);
      MEMORY[0x1DA6FD500](v4, -1, -1);
    }

    v5 = swift_task_alloc();
    *(v0 + 168) = v5;
    *v5 = v0;
    v5[1] = sub_1D6DCE714;

    return sub_1D6DC0034();
  }

  else
  {
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1D6DCE714()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D6DCE808(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE44B58](ObjectType, a2);
}

uint64_t sub_1D6DCE844(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE44B48](ObjectType, a2);
}

uint64_t sub_1D6DCE880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_1D6DCE914;

  return sub_1D5B73F60();
}

uint64_t sub_1D6DCE914(char a1)
{
  v3 = *v1;
  v4 = *v1;

  if (a1)
  {
    v5 = swift_task_alloc();
    *(v3 + 32) = v5;
    *v5 = v4;
    v5[1] = sub_1D6DCDCC0;

    return sub_1D5C41FD0();
  }

  else
  {
    v7 = *(v4 + 8);

    return v7();
  }
}

uint64_t sub_1D6DCEBE0(uint64_t result, int a2, int a3)
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
      *(result + 8) = 1;
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

uint64_t sub_1D6DCEC84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D5B64680;

  return sub_1D6DC22D0(a1, v4, v5, v6);
}

uint64_t sub_1D6DCED38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D5B64680;

  return sub_1D6DC1F50(a1, v4, v5, v6);
}

uint64_t sub_1D6DCEDEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D5B64680;

  return sub_1D6DC1C14(a1, v4, v5, v7, v6);
}

uint64_t sub_1D6DCEEAC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1D5B64680;

  return v6();
}

uint64_t sub_1D6DCEF94(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1D5B64680;

  return v7();
}

uint64_t sub_1D6DCF07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D5B73DC0();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6DBE4B8(a3, v12, sub_1D5B73DC0);
  v13 = sub_1D726294C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1D6DD07A8(v12, sub_1D5B73DC0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1D726293C();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_1D726285C();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_1D726211C() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_1D6DD07A8(a3, sub_1D5B73DC0);

    return v22;
  }

LABEL_8:
  sub_1D6DD07A8(a3, sub_1D5B73DC0);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1D6DCF380(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D5B64680;

  return sub_1D6DC19DC(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_1D6DCF458(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  v7 = sub_1D5B6F648(&qword_1EDF26B70, v6, type metadata accessor for PuzzleGameCenterService);
  return (*(v4 + 24))(v3, v7, v2, ObjectType, v4);
}

void sub_1D6DCF530()
{
  if (!qword_1EC896288)
  {
    sub_1D5BA6EF4();
    v0 = sub_1D72629BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC896288);
    }
  }
}

void sub_1D6DCF59C(double a1)
{
  if (!qword_1EC896298)
  {
    gotLoadHelper_x3__OBJC_CLASS___GKLeaderboard(a1);
    sub_1D6DCF638(255, v2, v3, v1 + 632, MEMORY[0x1E69E62F8]);
    sub_1D5BA6EF4();
    v4 = sub_1D72629BC();
    if (!v5)
    {
      atomic_store(v4, &qword_1EC896298);
    }
  }
}

void sub_1D6DCF638(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D5B5A498(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

id sub_1D6DCF6A0()
{
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D72585BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D725855C();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_1D6DD07A8(v3, sub_1D5B4D3E0);
  }

  (*(v5 + 32))(v8, v3, v4);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v10 = result;
    v11 = sub_1D725844C();
    [v10 openSensitiveURL:v11 withOptions:0];

    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6DCF880(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D5B64680;

  return sub_1D6DC9D48(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1D6DCF954(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D5B64680;

  return sub_1D6DC9724(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_121Tm_0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D6DCFA6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D5B64680;

  return sub_1D6DC9A98(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroy_125Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D6DCFB88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D5B64680;

  return sub_1D6DC941C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1D6DCFCA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D5B64680;

  return sub_1D6DC968C(a1, v4, v5, v7, v6);
}

uint64_t sub_1D6DCFD98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D5B64680;

  return sub_1D6DC968C(a1, v4, v5, v7, v6);
}

uint64_t sub_1D6DCFE90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D5B64680;

  return sub_1D6DC9994(a1, v4, v5, v7, v6);
}

uint64_t sub_1D6DCFF88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D5B64680;

  return sub_1D6DC968C(a1, v4, v5, v7, v6);
}

void sub_1D6DD0048(double a1)
{
  if (!qword_1EC8962C0)
  {
    sub_1D6DD00B8(a1);
    sub_1D5BA6EF4();
    v1 = sub_1D72629BC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC8962C0);
    }
  }
}

void sub_1D6DD00B8(double a1)
{
  if (!qword_1EC8962C8)
  {
    gotLoadHelper_x20__OBJC_CLASS___GKLeaderboardEntry(a1);
    v2 = v1 + 640;
    sub_1D6DCF638(255, v3, &qword_1EC8962D8, v2, MEMORY[0x1E69E6720]);
    sub_1D6DCF638(255, &qword_1EC8962E0, &qword_1EC8962D8, v2, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC8962C8);
    }
  }
}

uint64_t sub_1D6DD0190(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1D5B64684;

  return sub_1D6DC8AA4(a1, a2, v7, v6);
}

uint64_t sub_1D6DD0244(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6DD02AC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D5B64680;

  return sub_1D6DC9380(a1);
}

uint64_t sub_1D6DD0360(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D5B64680;

  return sub_1D5BD7030(a1, v4);
}

unint64_t sub_1D6DD0418()
{
  result = qword_1EC896300;
  if (!qword_1EC896300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896300);
  }

  return result;
}

uint64_t sub_1D6DD046C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D5B64680;

  return sub_1D6DCDE00(a1, v4, v5, v6);
}

uint64_t objectdestroy_83Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D6DD0560(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D5B64680;

  return sub_1D6DCE880(a1, v4, v5, v6);
}

uint64_t sub_1D6DD0614()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1D5B64680;

  return sub_1D6DCDA64(v2, v3, v5, v4);
}

uint64_t sub_1D6DD06D4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D5B64680;

  return sub_1D5BD7030(a1, v4);
}

uint64_t sub_1D6DD07A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FCSportsType.description.getter(uint64_t a1)
{
  if (a1 > 5)
  {
    if (a1 > 8)
    {
      switch(a1)
      {
        case 9:
          return 0x756761656C627573;
        case 10:
          return 1701011826;
        case 11:
          return 0x74697465706D6F63;
        default:
          return 0x6E776F6E6B6E75;
      }
    }

    else if (a1 == 6)
    {
      return 0x6E6F697369766964;
    }

    else if (a1 == 7)
    {
      return 0x696C706963736964;
    }

    else
    {
      return 0x6E657265666E6F63;
    }
  }

  else if (a1 > 2)
  {
    if (a1 == 3)
    {
      return 1835099508;
    }

    else if (a1 == 4)
    {
      return 0x6574656C687461;
    }

    else
    {
      return 0x656D616E72756F74;
    }
  }

  else
  {
    if (!a1)
    {
      return 0x6E776F6E6B6E75;
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return 0x65756761656CLL;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x74726F7073;
  }
}

uint64_t sub_1D6DD0A6C(void *a1)
{
  sub_1D6DD2294(0, &qword_1EC8964C0, sub_1D6DD15B0, &type metadata for DebugFormatWorkspaceUserData.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v20 - v7;
  v24 = *v1;
  v9 = *(v1 + 10);
  v49 = *(v1 + 9);
  v50 = v9;
  v51[0] = *(v1 + 11);
  *(v51 + 15) = *(v1 + 191);
  v10 = *(v1 + 6);
  v45 = *(v1 + 5);
  v46 = v10;
  v11 = *(v1 + 8);
  v47 = *(v1 + 7);
  v48 = v11;
  v12 = *(v1 + 2);
  v41 = *(v1 + 1);
  v42 = v12;
  v13 = *(v1 + 4);
  v43 = *(v1 + 3);
  v44 = v13;
  v14 = *(v1 + 195);
  v22 = *(v1 + 196);
  v23 = v14;
  v21 = v1[25];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6DD15B0();
  sub_1D7264B5C();
  LOBYTE(v30) = 0;
  v15 = v8;
  v16 = v52;
  sub_1D72643FC();
  if (!v16)
  {
    v17 = v22;
    v18 = v23;
    v38 = v49;
    v39 = v50;
    v40[0] = v51[0];
    *(v40 + 15) = *(v51 + 15);
    v34 = v45;
    v35 = v46;
    v36 = v47;
    v37 = v48;
    v30 = v41;
    v31 = v42;
    v32 = v43;
    v33 = v44;
    v29 = 1;
    sub_1D5ECF1C0(&v41, v27);
    sub_1D5E3303C();
    sub_1D726443C();
    v27[8] = v38;
    v27[9] = v39;
    *v28 = v40[0];
    *&v28[15] = *(v40 + 15);
    v27[4] = v34;
    v27[5] = v35;
    v27[6] = v36;
    v27[7] = v37;
    v27[0] = v30;
    v27[1] = v31;
    v27[2] = v32;
    v27[3] = v33;
    sub_1D5ECF21C(v27);
    LOBYTE(v25) = v18;
    BYTE1(v25) = v17;
    v26 = 2;
    sub_1D6DD172C();
    sub_1D726443C();
    v25 = v21;
    v26 = 3;
    sub_1D6DD1658();
    sub_1D6DD1780(&qword_1EC8964D0, sub_1D6DD17EC);
    sub_1D726443C();
  }

  return (*(v5 + 8))(v15, v4);
}

uint64_t sub_1D6DD0DF4@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v26 = a2;
  sub_1D6DD2294(0, &qword_1EC896490, sub_1D6DD15B0, &type metadata for DebugFormatWorkspaceUserData.CodingKeys, MEMORY[0x1E69E6F48]);
  v73 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6DD15B0();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v5;
  v10 = v26;
  LOBYTE(v39[0]) = 0;
  *&v25 = sub_1D72642BC();
  *(&v25 + 1) = v11;
  v48 = 1;
  sub_1D5E32FE8();
  sub_1D726431C();
  v70 = v57;
  v71 = v58;
  v72[0] = *v59;
  *(v72 + 15) = *&v59[15];
  v66 = v53;
  v67 = v54;
  v68 = v55;
  v69 = v56;
  v62 = v49;
  v63 = v50;
  v64 = v51;
  v65 = v52;
  LOBYTE(v27) = 2;
  sub_1D6DD1604();
  sub_1D726431C();
  v24 = a1;
  v12 = v39[0];
  v23 = BYTE1(v39[0]);
  sub_1D6DD1658();
  v46 = 3;
  sub_1D6DD1780(&qword_1EC8964B0, sub_1D6DD16A8);
  sub_1D726431C();
  (*(v9 + 8))(v8, v73);
  v73 = v47;
  v13 = v25;
  v27 = v25;
  v36 = v70;
  v37 = v71;
  v38[0] = v72[0];
  *(v38 + 15) = *(v72 + 15);
  v32 = v66;
  v33 = v67;
  v34 = v68;
  v35 = v69;
  v28 = v62;
  v29 = v63;
  v30 = v64;
  v31 = v65;
  BYTE3(v38[1]) = v12;
  v14 = v23;
  BYTE4(v38[1]) = v23;
  *(&v38[1] + 5) = v60;
  BYTE7(v38[1]) = v61;
  *(&v38[1] + 1) = v47;
  v15 = v38[0];
  v10[10] = v71;
  v10[11] = v15;
  v16 = v34;
  v10[6] = v33;
  v10[7] = v16;
  v17 = v36;
  v10[8] = v35;
  v10[9] = v17;
  v18 = v30;
  v10[2] = v29;
  v10[3] = v18;
  v19 = v32;
  v10[4] = v31;
  v10[5] = v19;
  v20 = v28;
  *v10 = v27;
  v10[1] = v20;
  v10[12] = v38[1];
  sub_1D60CB8A0(&v27, v39);
  __swift_destroy_boxed_opaque_existential_1(v24);
  v39[0] = v13;
  v39[9] = v70;
  v39[10] = v71;
  *v40 = v72[0];
  *&v40[15] = *(v72 + 15);
  v39[5] = v66;
  v39[6] = v67;
  v39[7] = v68;
  v39[8] = v69;
  v39[1] = v62;
  v39[2] = v63;
  v39[3] = v64;
  v39[4] = v65;
  v41 = v12;
  v42 = v14;
  v43 = v60;
  v44 = v61;
  v45 = v73;
  return sub_1D6DD16FC(v39);
}

uint64_t sub_1D6DD12D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[2] = a5;
  v14[1] = a4;
  sub_1D6DD2294(0, &qword_1EC896508, sub_1D6DD2240, &type metadata for DebugFormatWorkspaceUserDataGroup.CodingKeys, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6DD2240();
  sub_1D7264B5C();
  v16 = 0;
  v12 = v14[3];
  sub_1D72643FC();
  if (!v12)
  {
    v15 = 1;
    sub_1D72643FC();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D6DD146C()
{
  v1 = 0x696669746E656469;
  v2 = 0x656369766564;
  if (*v0 != 2)
  {
    v2 = 0x7370756F7267;
  }

  if (*v0)
  {
    v1 = 0x6769666E6F63;
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

uint64_t sub_1D6DD14DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6DD20E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6DD1504(uint64_t a1)
{
  v2 = sub_1D6DD15B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6DD1540(uint64_t a1)
{
  v2 = sub_1D6DD15B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D6DD15B0()
{
  result = qword_1EC896498;
  if (!qword_1EC896498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896498);
  }

  return result;
}

unint64_t sub_1D6DD1604()
{
  result = qword_1EC8964A0;
  if (!qword_1EC8964A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8964A0);
  }

  return result;
}

void sub_1D6DD1658()
{
  if (!qword_1EC8964A8)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8964A8);
    }
  }
}

unint64_t sub_1D6DD16A8()
{
  result = qword_1EC8964B8;
  if (!qword_1EC8964B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8964B8);
  }

  return result;
}

unint64_t sub_1D6DD172C()
{
  result = qword_1EC8964C8;
  if (!qword_1EC8964C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8964C8);
  }

  return result;
}

uint64_t sub_1D6DD1780(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D6DD1658();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6DD17EC()
{
  result = qword_1EC8964D8;
  if (!qword_1EC8964D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8964D8);
  }

  return result;
}

uint64_t sub_1D6DD1840()
{
  if (*v0)
  {
    return 0x65644970756F7267;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1D6DD188C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001D73C05F0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x65644970756F7267 && a2 == 0xEF7265696669746ELL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1D6DD197C(uint64_t a1)
{
  v2 = sub_1D6DD2240();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6DD19B8(uint64_t a1)
{
  v2 = sub_1D6DD2240();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6DD19F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D6DD1ECC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1D6DD1A44(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 10);
  v76[8] = *(a1 + 9);
  v76[9] = v6;
  v77[0] = *(a1 + 11);
  *(v77 + 15) = *(a1 + 191);
  v7 = *(a1 + 6);
  v76[4] = *(a1 + 5);
  v76[5] = v7;
  v8 = *(a1 + 8);
  v76[6] = *(a1 + 7);
  v76[7] = v8;
  v9 = *(a1 + 2);
  v76[0] = *(a1 + 1);
  v76[1] = v9;
  v10 = *(a1 + 4);
  v76[2] = *(a1 + 3);
  v76[3] = v10;
  v11 = *(a1 + 195);
  v12 = *(a1 + 196);
  v13 = a1[25];
  v14 = *a2;
  v15 = a2[1];
  v16 = *(a2 + 10);
  v78[8] = *(a2 + 9);
  v78[9] = v16;
  v79[0] = *(a2 + 11);
  *(v79 + 15) = *(a2 + 191);
  v17 = *(a2 + 6);
  v78[4] = *(a2 + 5);
  v78[5] = v17;
  v18 = *(a2 + 8);
  v78[6] = *(a2 + 7);
  v78[7] = v18;
  v19 = *(a2 + 2);
  v78[0] = *(a2 + 1);
  v78[1] = v19;
  v20 = *(a2 + 4);
  v78[2] = *(a2 + 3);
  v78[3] = v20;
  v21 = *(a2 + 195);
  v22 = *(a2 + 196);
  v23 = a2[25];
  if (v4 == v14 && v5 == v15 || (v24 = sub_1D72646CC(), v25 = 0, (v24 & 1) != 0))
  {
    v26 = *(a1 + 10);
    v69 = *(a1 + 9);
    v70 = v26;
    v71[0] = *(a1 + 11);
    *(v71 + 15) = *(a1 + 191);
    v27 = *(a1 + 6);
    v65 = *(a1 + 5);
    v66 = v27;
    v28 = *(a1 + 8);
    v67 = *(a1 + 7);
    v68 = v28;
    v29 = *(a1 + 2);
    v61 = *(a1 + 1);
    v62 = v29;
    v30 = *(a1 + 4);
    v63 = *(a1 + 3);
    v64 = v30;
    v31 = *(a2 + 10);
    v58 = *(a2 + 9);
    v59 = v31;
    v60[0] = *(a2 + 11);
    *(v60 + 15) = *(a2 + 191);
    v32 = *(a2 + 6);
    v54 = *(a2 + 5);
    v55 = v32;
    v33 = *(a2 + 8);
    v56 = *(a2 + 7);
    v57 = v33;
    v34 = *(a2 + 2);
    v50 = *(a2 + 1);
    v51 = v34;
    v35 = *(a2 + 4);
    v52 = *(a2 + 3);
    v53 = v35;
    sub_1D5ECF1C0(v76, v49);
    sub_1D5ECF1C0(v78, v49);
    v36 = static FormatWorkspace.== infix(_:_:)(&v61, &v50);
    v72[8] = v58;
    v72[9] = v59;
    v73[0] = v60[0];
    *(v73 + 15) = *(v60 + 15);
    v72[4] = v54;
    v72[5] = v55;
    v72[6] = v56;
    v72[7] = v57;
    v72[0] = v50;
    v72[1] = v51;
    v72[2] = v52;
    v72[3] = v53;
    sub_1D5ECF21C(v72);
    v74[8] = v69;
    v74[9] = v70;
    v75[0] = v71[0];
    *(v75 + 15) = *(v71 + 15);
    v74[4] = v65;
    v74[5] = v66;
    v74[6] = v67;
    v74[7] = v68;
    v74[0] = v61;
    v74[1] = v62;
    v74[2] = v63;
    v74[3] = v64;
    sub_1D5ECF21C(v74);
    if (v36)
    {
      v37 = sub_1D6E23ADC(v11);
      v39 = v38;
      if (v37 == sub_1D6E23ADC(v21) && v39 == v40)
      {

        v41 = v22;
      }

      else
      {
        v42 = sub_1D72646CC();

        v41 = v22;
        if ((v42 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      if (v12)
      {
        v43 = 0x70616373646E616CLL;
      }

      else
      {
        v43 = 0x7469617274726F70;
      }

      if (v12)
      {
        v44 = 0xE900000000000065;
      }

      else
      {
        v44 = 0xE800000000000000;
      }

      if (v41)
      {
        v45 = 0x70616373646E616CLL;
      }

      else
      {
        v45 = 0x7469617274726F70;
      }

      if (v41)
      {
        v46 = 0xE900000000000065;
      }

      else
      {
        v46 = 0xE800000000000000;
      }

      if (v43 == v45 && v44 == v46)
      {

LABEL_25:
        v25 = sub_1D6709338(v13, v23);
        return v25 & 1;
      }

      v47 = sub_1D72646CC();

      if (v47)
      {
        goto LABEL_25;
      }
    }

LABEL_26:
    v25 = 0;
  }

  return v25 & 1;
}

unint64_t sub_1D6DD1DC8()
{
  result = qword_1EC8964E0;
  if (!qword_1EC8964E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8964E0);
  }

  return result;
}

unint64_t sub_1D6DD1E20()
{
  result = qword_1EC8964E8;
  if (!qword_1EC8964E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8964E8);
  }

  return result;
}

unint64_t sub_1D6DD1E78()
{
  result = qword_1EC8964F0;
  if (!qword_1EC8964F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8964F0);
  }

  return result;
}

uint64_t sub_1D6DD1ECC(void *a1)
{
  sub_1D6DD2294(0, &qword_1EC8964F8, sub_1D6DD2240, &type metadata for DebugFormatWorkspaceUserDataGroup.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6DD2240();
  sub_1D7264B0C();
  if (!v1)
  {
    v13 = 0;
    v9 = sub_1D72642BC();
    v12 = 1;
    sub_1D72642BC();
    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t sub_1D6DD20E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6769666E6F63 && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656369766564 && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7370756F7267 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D72646CC();

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

unint64_t sub_1D6DD2240()
{
  result = qword_1EC896500;
  if (!qword_1EC896500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896500);
  }

  return result;
}

void sub_1D6DD2294(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D6DD2310()
{
  result = qword_1EC896510;
  if (!qword_1EC896510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896510);
  }

  return result;
}

unint64_t sub_1D6DD2368()
{
  result = qword_1EC896518;
  if (!qword_1EC896518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896518);
  }

  return result;
}

unint64_t sub_1D6DD23C0()
{
  result = qword_1EC896520;
  if (!qword_1EC896520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896520);
  }

  return result;
}

uint64_t sub_1D6DD2444(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t, void))
{
  v8 = *v4;
  v7 = *(v4 + 8);
  v9 = *(v4 + 50);
  v10 = v9 >> 5;
  if (v10 <= 2)
  {
    if (v9 >> 5)
    {
      if (v10 == 1)
      {
        v14 = sub_1D726230C();
      }

      else
      {
        v14 = sub_1D726231C();
      }
    }

    else
    {
      sub_1D5BF4D9C();
      v14 = sub_1D7263ABC();
    }
  }

  else
  {
    v11 = *(v4 + 16);
    if ((v9 >> 5) <= 4u)
    {
      if (v10 == 3)
      {
        v12 = *(v4 + 8);
        if (v12 > 5)
        {
          if (*(v4 + 8) <= 8u)
          {
            if (v12 != 6)
            {
              if (v12 != 7)
              {
                goto LABEL_8;
              }

              goto LABEL_36;
            }

LABEL_62:
            v14 = sub_1D726221C() == v8;
            return v14 & 1;
          }

          if (v12 != 9)
          {
            if (v12 != 10)
            {
              goto LABEL_45;
            }

            goto LABEL_53;
          }
        }

        else
        {
          if (*(v4 + 8) <= 2u)
          {
            if (*(v4 + 8))
            {
              if (v12 != 1)
              {
LABEL_8:
                v13 = sub_1D726221C() < v8;
                goto LABEL_54;
              }

LABEL_36:
              v14 = sub_1D726221C() != v8;
              return v14 & 1;
            }

            goto LABEL_62;
          }

          if (v12 != 3)
          {
            if (v12 != 4)
            {
LABEL_45:
              v14 = sub_1D726221C() >= v8;
              return v14 & 1;
            }

LABEL_53:
            v13 = v8 < sub_1D726221C();
LABEL_54:
            v14 = v13;
            return v14 & 1;
          }
        }

        v14 = v8 >= sub_1D726221C();
        return v14 & 1;
      }

      if (v11 > 5u)
      {
        if (v11 <= 8u)
        {
          if (v11 != 6)
          {
            if (v11 != 7)
            {
              goto LABEL_20;
            }

LABEL_40:
            if (v8 == a2 && v7 == a3)
            {
              goto LABEL_61;
            }

LABEL_70:
            v14 = sub_1D72646CC() ^ 1;
            return v14 & 1;
          }

          goto LABEL_63;
        }

        if (v11 != 9)
        {
          if (v11 != 10)
          {
            goto LABEL_48;
          }

          goto LABEL_59;
        }
      }

      else
      {
        if (v11 <= 2u)
        {
          if (v11)
          {
            if (v11 != 1)
            {
LABEL_20:
              if (v8 != a2 || v7 != a3)
              {
LABEL_72:
                v14 = sub_1D72646CC();
                return v14 & 1;
              }

LABEL_61:
              v14 = 0;
              return v14 & 1;
            }

            goto LABEL_40;
          }

LABEL_63:
          if (v8 != a2 || v7 != a3)
          {
            goto LABEL_72;
          }

          goto LABEL_69;
        }

        if (v11 != 3)
        {
          if (v11 != 4)
          {
LABEL_48:
            if (v8 != a2 || v7 != a3)
            {
              goto LABEL_70;
            }

LABEL_69:
            v14 = 1;
            return v14 & 1;
          }

LABEL_59:
          if (v8 != a2 || v7 != a3)
          {
            goto LABEL_72;
          }

          goto LABEL_61;
        }
      }

      if (v8 != a2 || v7 != a3)
      {
        goto LABEL_70;
      }

      goto LABEL_69;
    }

    if (v10 == 5)
    {
      v14 = sub_1D6DD2814(a1, a2, a3, a4);
    }

    else if (v11 | v7 | v8 | *(v4 + 32) | *(&v11 + 1) | *(v4 + 40) || (*(v4 + 48) | (*(v4 + 50) << 16)) != 0xC00000)
    {
      if ((a3 & 0x2000000000000000) != 0)
      {
        v16 = HIBYTE(a3) & 0xF;
      }

      else
      {
        v16 = a2 & 0xFFFFFFFFFFFFLL;
      }

      v14 = v16 != 0;
    }

    else
    {
      if ((a3 & 0x2000000000000000) != 0)
      {
        v15 = HIBYTE(a3) & 0xF;
      }

      else
      {
        v15 = a2 & 0xFFFFFFFFFFFFLL;
      }

      v14 = v15 == 0;
    }
  }

  return v14 & 1;
}

uint64_t sub_1D6DD2814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void))
{
  v8 = a4(a1, 0);
  if (!v5)
  {
    v11 = *(v4 + 50);
    if (v11 > 5)
    {
      if (*(v4 + 50) <= 8u)
      {
        if (v11 != 6)
        {
          if (v11 != 7)
          {
            goto LABEL_7;
          }

LABEL_13:
          if (v8 == a2 && v9 == a3)
          {
            goto LABEL_25;
          }

LABEL_32:
          v12 = sub_1D72646CC();

          LOBYTE(a3) = v12 ^ 1;
          return a3 & 1;
        }

        goto LABEL_26;
      }

      if (v11 != 9)
      {
        if (v11 != 10)
        {
          goto LABEL_18;
        }

        goto LABEL_23;
      }
    }

    else
    {
      if (*(v4 + 50) <= 2u)
      {
        if (*(v4 + 50))
        {
          if (v11 != 1)
          {
LABEL_7:
            if (v8 != a2 || v9 != a3)
            {
LABEL_33:
              LOBYTE(a3) = sub_1D72646CC();

              return a3 & 1;
            }

LABEL_25:

            LOBYTE(a3) = 0;
            return a3 & 1;
          }

          goto LABEL_13;
        }

LABEL_26:
        if (v8 != a2 || v9 != a3)
        {
          goto LABEL_33;
        }

        goto LABEL_31;
      }

      if (v11 != 3)
      {
        if (v11 != 4)
        {
LABEL_18:
          if (v8 != a2 || v9 != a3)
          {
            goto LABEL_32;
          }

LABEL_31:

          LOBYTE(a3) = 1;
          return a3 & 1;
        }

LABEL_23:
        if (v8 != a2 || v9 != a3)
        {
          goto LABEL_33;
        }

        goto LABEL_25;
      }
    }

    if (v8 != a2 || v9 != a3)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  return a3 & 1;
}

uint64_t sub_1D6DD2A2C(uint64_t a1)
{
  v1 = a1;
  v2 = sub_1D688E6FC(a1, 0);
  LOBYTE(v1) = sub_1D6DD2444(v1, v2, v3, sub_1D688E6FC);

  return v1 & 1;
}

uint64_t _s8NewsFeed27FormatBindingTextExpressionV2eeoiySbAC_ACtFZ_0(__int128 *a1, uint64_t a2)
{
  v2 = a1[1];
  v34[0] = *a1;
  v34[1] = v2;
  v4 = *a1;
  v3 = a1[1];
  v34[2] = a1[2];
  v35 = *(a1 + 24);
  v22 = *(a1 + 56);
  v23 = *(a1 + 72);
  v5 = *(a1 + 11);
  v6 = *(a1 + 12);
  v7 = *(a1 + 106);
  v8 = *(a1 + 52);
  v39 = *(a2 + 48);
  v9 = *(a2 + 32);
  v10 = *a2;
  v11 = *a2;
  v37 = *(a2 + 16);
  v38 = v9;
  v36 = v10;
  v12 = *(a2 + 72);
  v29 = v4;
  v30 = v3;
  v31 = a1[2];
  v20 = *(a2 + 56);
  v21 = v12;
  v13 = *(a2 + 88);
  v14 = *(a2 + 96);
  v15 = *(a2 + 106);
  v16 = *(a2 + 104);
  v32 = *(a1 + 24);
  v24 = v11;
  v25 = v37;
  v26 = *(a2 + 32);
  v27 = *(a2 + 48);
  sub_1D5FD78CC(v34, v42);
  sub_1D5FD78CC(&v36, v42);
  v17 = _s8NewsFeed21FormatTextNodeBindingO2eeoiySbAC_ACtFZ_0(&v29, &v24);
  v40[0] = v24;
  v40[1] = v25;
  v40[2] = v26;
  v41 = v27;
  sub_1D5FD7B18(v40);
  v42[0] = v29;
  v42[1] = v30;
  v42[2] = v31;
  v43 = v32;
  sub_1D5FD7B18(v42);
  if (v17)
  {
    v29 = v22;
    v30 = v23;
    *&v31 = v5;
    *(&v31 + 1) = v6;
    v32 = v8;
    v33 = (v8 | (v7 << 16)) >> 16;
    v24 = v20;
    v25 = v21;
    *&v26 = v13;
    *(&v26 + 1) = v14;
    v28 = (v16 | (v15 << 16)) >> 16;
    v27 = v16;
    v18 = _s8NewsFeed32FormatBindingTextExpressionLogicO2eeoiySbAC_ACtFZ_0(&v29, &v24);
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

unint64_t sub_1D6DD2CD0(uint64_t a1)
{
  result = sub_1D6DD2CF8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6DD2CF8()
{
  result = qword_1EC896528;
  if (!qword_1EC896528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896528);
  }

  return result;
}

unint64_t sub_1D6DD2D4C(void *a1)
{
  a1[1] = sub_1D5C76FDC();
  a1[2] = sub_1D6701020();
  result = sub_1D6DD2D84();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6DD2D84()
{
  result = qword_1EC896530;
  if (!qword_1EC896530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896530);
  }

  return result;
}

uint64_t sub_1D6DD2DE8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6574756C6F736261;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x676E69646E6962;
    }

    else
    {
      v4 = 0x6E656E6F706D6F63;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xEA00000000007374;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x7465737361;
    }

    else
    {
      v4 = 0x6574756C6F736261;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x676E69646E6962;
  if (a2 != 2)
  {
    v8 = 0x6E656E6F706D6F63;
    v7 = 0xEA00000000007374;
  }

  if (a2)
  {
    v2 = 0x7465737361;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D6DD2F2C(uint64_t a1, int64_t a2, uint64_t a3, int64_t a4)
{
  v6 = 0xEF61746144636974;
  v7 = 0x617453746E657665;
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 == 3)
      {
        v8 = 0x61446E6F73616573;
        v9 = 0xEA00000000006174;
        if (a4 <= 1)
        {
          goto LABEL_18;
        }

        goto LABEL_13;
      }

LABEL_10:
      v8 = a1;
      v9 = a2;
      if (a4 <= 1)
      {
        goto LABEL_18;
      }

      goto LABEL_13;
    }

    v8 = 0x746144746E657665;
    v9 = 0xE900000000000061;
    if (a4 > 1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v8 = 0x76694C746E657665;
        v9 = 0xED00006174614465;
        if (a4 <= 1)
        {
          goto LABEL_18;
        }

LABEL_13:
        if (a4 == 2)
        {
          v6 = 0xE900000000000061;
          if (v8 != 0x746144746E657665)
          {
            goto LABEL_27;
          }

          goto LABEL_24;
        }

        if (a4 == 3)
        {
          v6 = 0xEA00000000006174;
          if (v8 != 0x61446E6F73616573)
          {
            goto LABEL_27;
          }

          goto LABEL_24;
        }

        goto LABEL_22;
      }

      goto LABEL_10;
    }

    v8 = 0x617453746E657665;
    v9 = 0xEF61746144636974;
    if (a4 > 1)
    {
      goto LABEL_13;
    }
  }

LABEL_18:
  if (!a4)
  {
    goto LABEL_23;
  }

  if (a4 == 1)
  {
    v6 = 0xED00006174614465;
    if (v8 != 0x76694C746E657665)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

LABEL_22:
  v7 = a3;
  v6 = a4;
LABEL_23:
  if (v8 != v7)
  {
LABEL_27:
    v11 = a1;
    v12 = a2;
    v13 = sub_1D72646CC();
    a2 = v12;
    v10 = v13;
    a1 = v11;
    goto LABEL_28;
  }

LABEL_24:
  if (v9 != v6)
  {
    goto LABEL_27;
  }

  v10 = 1;
LABEL_28:
  sub_1D5C30618(a1, a2);
  sub_1D5C30618(a3, a4);

  return v10 & 1;
}

uint64_t sub_1D6DD3130(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 6579297;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x796C7069746C756DLL;
    }

    else
    {
      v4 = 0x656469766964;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x7463617274627573;
    }

    else
    {
      v4 = 6579297;
    }

    if (v3)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE800000000000000;
  v8 = 0x796C7069746C756DLL;
  if (a2 != 2)
  {
    v8 = 0x656469766964;
    v7 = 0xE600000000000000;
  }

  if (a2)
  {
    v2 = 0x7463617274627573;
    v6 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D6DD3264(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE0064496C616369;
  v3 = 0x6E6F6E6143636D75;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x615465756761656CLL;
    }

    else
    {
      v5 = 0x6E6F6E6143636D75;
    }

    if (v4)
    {
      v6 = 0xEB00000000644967;
    }

    else
    {
      v6 = 0xEE0064496C616369;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE600000000000000;
    v5 = 0x736449676174;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x53617461446C7275;
    }

    else
    {
      v5 = 0x72756F5361746164;
    }

    if (v4 == 3)
    {
      v6 = 0xEE0073656372756FLL;
    }

    else
    {
      v6 = 0xEA00000000006563;
    }
  }

  v7 = 0xE600000000000000;
  v8 = 0x736449676174;
  v9 = 0x53617461446C7275;
  v10 = 0xEE0073656372756FLL;
  if (a2 != 3)
  {
    v9 = 0x72756F5361746164;
    v10 = 0xEA00000000006563;
  }

  if (a2 != 2)
  {
    v8 = v9;
    v7 = v10;
  }

  if (a2)
  {
    v3 = 0x615465756761656CLL;
    v2 = 0xEB00000000644967;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v7;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1D72646CC();
  }

  return v13 & 1;
}

uint64_t sub_1D6DD3418(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x535F5354524F5053;
  v3 = a1;
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 == 6)
      {
        v8 = 0xD000000000000014;
      }

      else
      {
        v8 = 0xD000000000000013;
      }

      if (v3 == 6)
      {
        v9 = 0x80000001D73BCEC0;
      }

      else
      {
        v9 = 0x80000001D73BCEE0;
      }
    }

    else
    {
      if (a1 == 4)
      {
        v8 = 0xD000000000000010;
      }

      else
      {
        v8 = 0xD000000000000011;
      }

      if (v3 == 4)
      {
        v9 = 0x80000001D73BCE80;
      }

      else
      {
        v9 = 0x80000001D73BCEA0;
      }
    }
  }

  else
  {
    v4 = 0xEF474E49444E4154;
    v5 = 0x425F5354524F5053;
    if (a1 == 2)
    {
      v5 = 0x535F5354524F5053;
    }

    else
    {
      v4 = 0xEE0054454B434152;
    }

    v6 = 0x80000001D73BCF90;
    v7 = 0xD000000000000015;
    if (!a1)
    {
      v7 = 0x535F5354524F5053;
      v6 = 0xEC00000045524F43;
    }

    if (a1 <= 1u)
    {
      v8 = v7;
    }

    else
    {
      v8 = v5;
    }

    if (v3 <= 1)
    {
      v9 = v6;
    }

    else
    {
      v9 = v4;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v10 = 0x80000001D73BCEC0;
        if (v8 != 0xD000000000000014)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v10 = 0x80000001D73BCEE0;
        if (v8 != 0xD000000000000013)
        {
LABEL_50:
          v11 = sub_1D72646CC();
          goto LABEL_51;
        }
      }
    }

    else if (a2 == 4)
    {
      v10 = 0x80000001D73BCE80;
      if (v8 != 0xD000000000000010)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v10 = 0x80000001D73BCEA0;
      if (v8 != 0xD000000000000011)
      {
        goto LABEL_50;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v10 = 0xEF474E49444E4154;
      if (v8 != 0x535F5354524F5053)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v10 = 0xEE0054454B434152;
      if (v8 != 0x425F5354524F5053)
      {
        goto LABEL_50;
      }
    }
  }

  else
  {
    if (a2)
    {
      v2 = 0xD000000000000015;
      v10 = 0x80000001D73BCF90;
    }

    else
    {
      v10 = 0xEC00000045524F43;
    }

    if (v8 != v2)
    {
      goto LABEL_50;
    }
  }

  if (v9 != v10)
  {
    goto LABEL_50;
  }

  v11 = 1;
LABEL_51:

  return v11 & 1;
}

uint64_t sub_1D6DD36A4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7974706D457369;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6C69666C75467369;
    }

    else
    {
      v4 = 0x69666C7546746F6ELL;
    }

    if (v3 == 2)
    {
      v5 = 0xEB0000000064656CLL;
    }

    else
    {
      v5 = 0xEC00000064656C6CLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x7974706D45746F6ELL;
    }

    else
    {
      v4 = 0x7974706D457369;
    }

    if (v3)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0x6C69666C75467369;
  v8 = 0xEB0000000064656CLL;
  if (a2 != 2)
  {
    v7 = 0x69666C7546746F6ELL;
    v8 = 0xEC00000064656C6CLL;
  }

  if (a2)
  {
    v2 = 0x7974706D45746F6ELL;
    v6 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D6DD3808(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000045524F43;
  v3 = 0x535F5354524F5053;
  v4 = a1;
  if (a1 <= 2u)
  {
    v7 = 0xEF474E49444E4154;
    v8 = 0x425F5354524F5053;
    if (a1 == 1)
    {
      v8 = 0x535F5354524F5053;
    }

    else
    {
      v7 = 0xEE0054454B434152;
    }

    if (a1)
    {
      v5 = v8;
    }

    else
    {
      v5 = 0x535F5354524F5053;
    }

    if (v4)
    {
      v6 = v7;
    }

    else
    {
      v6 = 0xEC00000045524F43;
    }
  }

  else if (a1 > 4u)
  {
    if (a1 == 5)
    {
      v5 = 0xD000000000000014;
    }

    else
    {
      v5 = 0xD000000000000013;
    }

    if (v4 == 5)
    {
      v6 = 0x80000001D73BCEC0;
    }

    else
    {
      v6 = 0x80000001D73BCEE0;
    }
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0xD000000000000010;
    }

    else
    {
      v5 = 0xD000000000000011;
    }

    if (v4 == 3)
    {
      v6 = 0x80000001D73BCE80;
    }

    else
    {
      v6 = 0x80000001D73BCEA0;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEF474E49444E4154;
        if (v5 != 0x535F5354524F5053)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v2 = 0xEE0054454B434152;
        if (v5 != 0x425F5354524F5053)
        {
          goto LABEL_48;
        }
      }

      goto LABEL_45;
    }
  }

  else
  {
    if (a2 <= 4u)
    {
      if (a2 == 3)
      {
        v9 = 0xD000000000000010;
      }

      else
      {
        v9 = 0xD000000000000011;
      }

      if (a2 == 3)
      {
        v2 = 0x80000001D73BCE80;
      }

      else
      {
        v2 = 0x80000001D73BCEA0;
      }

      if (v5 != v9)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    }

    if (a2 == 5)
    {
      v3 = 0xD000000000000014;
    }

    else
    {
      v3 = 0xD000000000000013;
    }

    if (a2 == 5)
    {
      v2 = 0x80000001D73BCEC0;
    }

    else
    {
      v2 = 0x80000001D73BCEE0;
    }
  }

  if (v5 != v3)
  {
LABEL_48:
    v10 = sub_1D72646CC();
    goto LABEL_49;
  }

LABEL_45:
  if (v6 != v2)
  {
    goto LABEL_48;
  }

  v10 = 1;
LABEL_49:

  return v10 & 1;
}

uint64_t sub_1D6DD3A24(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6E65657267;
  if (a1 != 5)
  {
    v5 = 1702194274;
    v4 = 0xE400000000000000;
  }

  v6 = 0xE500000000000000;
  v7 = 0x6168706C61;
  if (a1 != 3)
  {
    v7 = 6579570;
    v6 = 0xE300000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x6974617275746173;
  v9 = 0xEA00000000006E6FLL;
  if (a1 != 1)
  {
    v8 = 0x656E746867697262;
    v9 = 0xEA00000000007373;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 6649192;
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
        v12 = 0xEA00000000006E6FLL;
        if (v10 != 0x6974617275746173)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xEA00000000007373;
        if (v10 != 0x656E746867697262)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE300000000000000;
      if (v10 != 6649192)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x6E65657267)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1702194274)
      {
LABEL_39:
        v13 = sub_1D72646CC();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE500000000000000;
    if (v10 != 0x6168706C61)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE300000000000000;
    if (v10 != 6579570)
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